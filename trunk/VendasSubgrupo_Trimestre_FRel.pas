 unit VendasSubgrupo_Trimestre_FRel;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, Db, dxExEdtr, dxEdLib, dxCntner, dxEditor, dxDBEdtr,
  dxDBELib, StdCtrls,  RDprint,   ComCtrls,
    cxPropertiesStore, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, Menus, cxButtons, cxLabel;

type
  TFRelVendasSubGruposTrimestre = class(TForm)
    pnlClient: TPanel;
    Panel2: TPanel;
    RzBitBtn1: TcxButton;
    RzBitBtn2: TcxButton;
    Print: TRDprint;
    Actions: TActionList;
    ActPreview: TAction;
    LblStatus: TcxLabel;
    ANDA: TProgressBar;
    Label3: TcxLabel;
    Label2: TcxLabel;
    cmbGrupo: TdxLookupEdit;
    LblTitulo: TcxLabel;
    b2: TBevel;
    DsGrupo: TDataSource;
    CkTipo: TdxCheckEdit;
    ActFechar: TAction;
    Label4: TcxLabel;
    CmbVendedor: TdxLookupEdit;
    DsVendedor: TDataSource;
    Label5: TcxLabel;
    cmbSubGrupo: TdxLookupEdit;
    DsSubGrupo: TDataSource;
    CKVENDEDOR: TdxCheckEdit;
    EdTipo: TdxPickEdit;
    stgFRelVendasSubGruposTrimestre: TcxPropertiesStore;
    procedure FormCreate(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cmbPessoaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PrintBeforeNewPage(Sender: TObject; Pagina: Integer);
    procedure PrintNewPage(Sender: TObject; Pagina: Integer);
    procedure FormShow(Sender: TObject);
    procedure ActPreviewExecute(Sender: TObject);
    procedure IniEnter(Sender: TObject);

    procedure Imprime ;
    procedure Inclinha;

  private
    { Private declarations }
    Grupo, SubGrupo: Integer;
  public
    { Public declarations }
  end;

var
  FRelVendasSubGruposTrimestre: TFRelVendasSubGruposTrimestre;
  Linha, Pagina: Integer;
  DataInicial, DataFinal: TDateTime;

implementation

uses Relatorios_DM, Usuarios_DM, Application_DM, Funcoes;

{$R *.DFM}

procedure TFRelVendasSubGruposTrimestre.IncLinha ;
begin
     Linha := Linha + 1;

     If (Linha >= 63)
     Then
         Print.Novapagina;
end;

procedure TFRelVendasSubGruposTrimestre.FormCreate(Sender: TObject);
begin
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, Self.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TFRelVendasSubGruposTrimestre.ActFecharExecute(Sender: TObject);
begin
     Close;
end;

procedure TFRelVendasSubGruposTrimestre.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  //
  dsVendedor.DataSet.Close ;
  DsSubGrupo.DataSet.Close ;
  DsGrupo.DataSet.Close ;

  Action := caFree;
  FRelVendasSubGruposTrimestre := Nil;
end;

procedure TFRelVendasSubGruposTrimestre.cmbPessoaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFRelVendasSubGruposTrimestre.PrintBeforeNewPage(Sender: TObject; Pagina: Integer);
begin
  // Rodapé...
  Print.ImpF(63, 01, Replicate('-', 80), [Normal]);
  Print.ImpF(64, 01, dmapp.QryParceiroPARC_TEXTO_RELATORIO.AsString, [comp17,italico]);
  Print.ImpF(64, 74, 'Pag. : ' + FormatFloat('0000', Pagina), [Comp17]);
end;

procedure TFRelVendasSubGruposTrimestre.PrintNewPage(Sender: TObject; Pagina: Integer);
begin
  // Cabeçalho...
  Print.ImpF(01, 01, Replicate('-', 136), [Comp17]);
  Print.ImpF(02, 01, DMApp.Nome, [Normal, Negrito]);
  Print.ImpF(02, 55, 'Data : '+ DateTimeToStr(now()), [Normal]);
  Print.ImpF(03, 01, Print.TitulodoRelatorio, [Normal]);
  Print.ImpF(04, 01, Replicate('-', 136), [Comp17]);
                  //....5...10...15...20...25...30...35...40...45...50...55...60...65...70...75...80...85...90...95...00...05...10...15...20...25...30...35.
  Print.ImpF(05,01, 'PERIODO ' + EdTipo.text + '          ==> GRUPO ' + cmbGrupo.TEXT, [Comp17]);

  Print.ImpF(06,01,Format('%-15s %-50s %-5s %-3s %14s %14s %14s %14s',
  ['CODIGO',
   'NOME',
   'UN',
   '',
   'QNTDE',
   'UNITARIO',
   'TOTAL',
   ''
  ]),[Comp17]);

  Print.ImpF(07,01, Replicate('-', 136), [Comp17]);

  linha  := 08;
end;

procedure TFRelVendasSubGruposTrimestre.FormShow(Sender: TObject);
begin
  //
  IniciaComponentes(Self as TForm);
    Try

    If Not(dsGrupo.DataSet.Active) Then
       dsGrupo.DataSet.Open;

    If Not(dsSubGrupo.DataSet.Active) Then
       dsSubGrupo.DataSet.Open;

    If Not(dsVendedor.DataSet.Active) Then
       dsVendedor.DataSet.Open;

  Except
    On E:EDataBaseError Do
       Begin
         ShowMessage('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ');
         Exit;
       End
    Else
       Begin
         ShowMessage('Ocorreu um Erro não identificado pelo Sistema !');
         Exit;
       End;
  End;


end;

procedure TFRelVendasSubGruposTrimestre.ActPreviewExecute(Sender: TObject);
Var
    Cont, Cod_Grupo: Integer;
begin
  //
  Cod_Grupo := 0;
  //
  lblStatus.caption := 'Selecionando Dados' ;
  lblStatus.Visible := True ;
  lblStatus.Refresh ;

  // *** Passagem de Parametros ***
  DMRelatorios.Fat_VendasPorGrupo.ParamByName('CNPJ').asString:= DMApp.Cnpj;

  If (EdTipo.Text = '')
  Then Begin
       MessageDlg('Informe o Período', MtError, [MbOk],0);
  end ;

  If cmbGrupo.text = ''
  then begin
       MessageDlg('Informe o Grupo', MtError, [MbOk],0);
       cmbGrupo.SETFOCUS ;
       EXIT ;
  END;

  If cmbSubGrupo.text = ''
  then begin
       MessageDlg('Informe o Sub-Grupo', MtError, [MbOk],0);
       cmbSubGrupo.SETFOCUS ;
       EXIT ;
  END;

  //
  print.TitulodoRelatorio:='Relatorio de Vendas por Sub-Grupo';
  print.Abrir;

  with DMRelatorios do
  begin
       Cont := 0;

       Fat_VendasSubGrupo.Close ;

       Fat_VendasSubGrupo.SQL.Clear ;

       Fat_VendasSubGrupo.SQL.Add ( ' Select * from VER_FAT_VENDAS_SUBGRUPO  ' );

       Fat_VendasSubGrupo.SQL.Add ( ' (  :CNPJ,  :DTINI,  :DTFIM, :COD_GRUPO, :COD_SUBGRUPO )   ' );

       Fat_VendasSubGrupo.ParamByName('CNPJ').asString:= DMApp.Cnpj;

       Fat_VendasSubGrupo.ParamByName('DTINI').asDate := DATAINICIAL ;

       Fat_VendasSubGrupo.ParamByName('DTFIM').asDate := DATAFINAL   ;

       Fat_VendasSubGrupo.ParamByName('COD_GRUPO'     ).asInteger := DMRelatorios.SelGrupoCODIGO.Value ;

       Fat_VendasSubGrupo.ParamByName('COD_SUBGRUPO'  ).asInteger := DMRelatorios.SelSubGrupoSubGrupo.Value ;

       //
       If NOT CkTipo.Checked
       then begin
            Cont := 1;

            Fat_VendasSubGrupo.Params.CreateParam ( FtString, 'TIPO', PtInput );

            Fat_VendasSubGrupo.SQL.Add ( ' WHERE  FECHADA = :TIPO  ' );

            Fat_VendasSubGrupo.ParamByName('TIPO'  ).asString:= 'S' ;
       END;

       If CmbVendedor.text <> ''
       then begin
            If Cont = 0
            then begin
                 Fat_VendasSubGrupo.Params.CreateParam ( FtString, 'VENDEDOR', PtInput );

                 Fat_VendasSubGrupo.SQL.Add ( ' WHERE  VENDEDOR = :VENDEDOR ' );

                 Fat_VendasSubGrupo.ParamByName('VENDEDOR'  ).asInteger := CmbVendedor.LookupKeyValue ;
            end
            else begin
                 Fat_VendasSubGrupo.Params.CreateParam ( FtString, 'VENDEDOR', PtInput );

                 Fat_VendasSubGrupo.SQL.Add ( ' AND  VENDEDOR = :VENDEDOR ' );

                 Fat_VendasSubGrupo.ParamByName('VENDEDOR'  ).asInteger := CmbVendedor.LookupKeyValue ;
            end;
       END;

       Fat_VendasSubGrupo.SQL.Add ( ' order by VENDEDOR, NOME_PRODUTO, PRODUTO ' );

  end;

  Imprime ;

  Anda.Visible:= False;

  print.Fechar;
end;

procedure TFRelVendasSubGruposTrimestre.Imprime ;
Var
    UltVend, Cont, Cod_Grupo, SubUnidade: Integer;
    NomeProd, Unidade : String;
    Soma_Quantidade, Custo, Quantidade, Total_Produto, Total_Grupo, Total_Geral: Real;
    STR: String;
    Margem, Soma_Custo: Real;
    DESCONTO, UNITARIO, TOTAL: REAL;
Begin

       Linha := Linha + 1;

       Linha := Linha + 1;

       Print.ImpF(Linha, 01, cmbGrupo.Text + ' / ' + cmbSUBGRUPO.text, [Comp17, Negrito]);

       Linha := Linha + 1;

       Print.ImpF(Linha, 01, Replicate('=', 136), [Comp17, Negrito]);

       Linha := Linha + 1;

       DMRelatorios.Fat_VendasSubGrupo.Open;

       lblStatus.Visible := False ;

       DMRelatorios.Fat_VendasSubGrupo.FetchAll ;

       Anda.Max := DMRelatorios.Fat_VendasSubGrupo.RecordCount;

       Anda.Position := 0;

       Anda.Visible  := TRUE ;

       //
       Total_Produto   := 0;
       Total_Geral     := 0;
       Quantidade      := 0;
       Custo           := 0;
       Soma_Custo      := 0;
       Soma_Quantidade := 0;

       //
       DMRelatorios.Fat_VendasSubGrupo.First;

       UltVend  := -1 ;

       IF CKVENDEDOR.Checked
       THEN BEGIN
            While Not DMRelatorios.Fat_VendasSubGrupo.Eof
            Do Begin
               If DMRelatorios.Fat_VendasSubGrupoVENDEDOR.Value <> UltVend
               then begin
                    Print.ImpF(Linha, 01, DMRelatorios.Fat_VendasSubGrupoVENDEDOR.TEXT + '/' + DMRelatorios.Fat_VendasSubGrupoNOME_VENDEDOR.VALUE, [Comp17, Negrito]);

                    UltVend := DMRelatorios.Fat_VendasSubGrupoVENDEDOR.VALUE ;

                    Linha := Linha + 2;

                    If (Linha >= 63)
                    Then
                        Print.Novapagina;
               end;

               IF DMRelatorios.Fat_VendasSubGrupoSUBUNIDADE.ISNULL
               THEN
                   SUBUNIDADE := 1
               ELSE
                   SUBUNIDADE := DMRelatorios.Fat_VendasSubGrupoSUBUNIDADE.VALUE ;

               //
               Print.ImpF(Linha,01,Format('%-15s %-50s %-5s %-3s %14s %14s %14s %14s',
               [Copy(DMRelatorios.Fat_VendasSubGrupoPRODUTO.VALUE,1,15),
               Copy(DMRelatorios.Fat_VendasSubGrupoNOME_PRODUTO.VALUE,1,50),
               DMRelatorios.Fat_VendasSubGrupoUNIDADE.VALUE,
               inttostr(SubUnidade),
               FormatFloat('###,###,##0.00', DMRelatorios.Fat_VendasSubGrupoQUANTIDADE.VALUE ),
               FormatFloat('###,###,##0.00', DMRelatorios.Fat_VendasSubGrupoVALOR.VALUE  ),
               FormatFloat('###,###,##0.00', DMRelatorios.Fat_VendasSubGrupoTOTAL.VALUE  ),
               FormatFloat('###,###,##0.00', 0 )
               ]),[Comp17]);

               Total_Geral     := Total_Geral + DMRelatorios.Fat_VendasSubGrupoTOTAL.Value;

               Total_Produto   := Total_Produto + DMRelatorios.Fat_VendasSubGrupoTOTAL.Value;

               Quantidade      := Quantidade + DMRelatorios.Fat_VendasSubGrupoQUANTIDADE.Value;

               Soma_Quantidade := Soma_Quantidade + DMRelatorios.Fat_VendasSubGrupoQUANTIDADE.Value;

               Custo           := Custo + ( DMRelatorios.Fat_VendasSubGrupoCUSTO.Value * DMRelatorios.Fat_VendasSubGrupoQUANTIDADE.Value );

               Soma_Custo      := Soma_Custo  + Custo ;

               Linha := Linha + 1;

               //
               Anda.Position := Anda.Position + 1;

               DMRelatorios.Fat_VendasSubGrupo.Next;

               If ( DMRelatorios.Fat_VendasSubGrupoVENDEDOR.Value <> UltVend ) OR ( DMRelatorios.Fat_VendasSubGrupo.EOF )
               then begin
                    Print.ImpF(Linha, 01, Replicate('=', 136), [Comp17, Negrito]);

                    Linha := Linha + 1;

                    //
                    Print.ImpF(Linha,01,Format('%-15s %-50s %-5s %-3s %14s %14s %14s %14s',
                    ['',
                    '',
                    '',
                    '',
                    FormatFloat('###,###,##0.00', Quantidade     ),
                    '',
                    FormatFloat('###,###,##0.00', Total_Produto  ),
                    FormatFloat('###,###,##0.00', 0 )
                    ]),[Comp17]);

                    Total_Produto   := 0;

                    Quantidade      := 0;

                    Custo           := 0;
               END;

               //
               If (Linha >= 63)
               Then
                   Print.Novapagina;

            end ;
       end
       ELSE BEGIN
            While Not DMRelatorios.Fat_VendasSubGrupo.Eof
            Do Begin
               IF DMRelatorios.Fat_VendasSubGrupoSUBUNIDADE.ISNULL
               THEN
                   SUBUNIDADE := 1
               ELSE
                   SUBUNIDADE := DMRelatorios.Fat_VendasSubGrupoSUBUNIDADE.VALUE ;

               //
               Print.ImpF(Linha,01,Format('%-15s %-50s %-5s %-3s %14s %14s %14s %14s',
               [Copy(DMRelatorios.Fat_VendasSubGrupoPRODUTO.VALUE,1,15),
               Copy(DMRelatorios.Fat_VendasSubGrupoNOME_PRODUTO.VALUE,1,50),
               DMRelatorios.Fat_VendasSubGrupoUNIDADE.VALUE,
               inttostr(SubUnidade),
               FormatFloat('###,###,##0.00', DMRelatorios.Fat_VendasSubGrupoQUANTIDADE.VALUE ),
               FormatFloat('###,###,##0.00', DMRelatorios.Fat_VendasSubGrupoVALOR.VALUE  ),
               FormatFloat('###,###,##0.00', DMRelatorios.Fat_VendasSubGrupoTOTAL.VALUE  ),
               FormatFloat('###,###,##0.00', 0 )
               ]),[Comp17]);

               Total_Geral     := Total_Geral + DMRelatorios.Fat_VendasSubGrupoTOTAL.Value;

               Total_Produto   := Total_Produto + DMRelatorios.Fat_VendasSubGrupoTOTAL.Value;

               Quantidade      := Quantidade + DMRelatorios.Fat_VendasSubGrupoQUANTIDADE.Value;

               Soma_Quantidade := Soma_Quantidade + DMRelatorios.Fat_VendasSubGrupoQUANTIDADE.Value;

               Custo           := Custo + ( DMRelatorios.Fat_VendasSubGrupoCUSTO.Value * DMRelatorios.Fat_VendasSubGrupoQUANTIDADE.Value );

               Soma_Custo      := Soma_Custo  + Custo ;

               Linha := Linha + 1;

               //
               Anda.Position := Anda.Position + 1;

               DMRelatorios.Fat_VendasSubGrupo.Next;

               If ( DMRelatorios.Fat_VendasSubGrupo.EOF )
               then begin
                    Print.ImpF(Linha, 01, Replicate('=', 136), [Comp17, Negrito]);

                    Linha := Linha + 1;

                    //
                    Print.ImpF(Linha,01,Format('%-15s %-50s %-5s %-3s %14s %14s %14s %14s',
                    ['',
                    '',
                    '',
                    '',
                    FormatFloat('###,###,##0.00', Quantidade     ),
                    '',
                    FormatFloat('###,###,##0.00', Total_Produto  ),
                    FormatFloat('###,###,##0.00', 0 )
                    ]),[Comp17]);

                    Total_Produto   := 0;

                    Quantidade      := 0;

                    Custo           := 0;
               END;

               //
               If (Linha >= 63)
               Then
                   Print.Novapagina;

            end ;
       END;

       Print.ImpF(Linha+1, 01, Format('%63s Total Geral: %14s %14s %14s %14s', ['', FormatFloat('#,##0.00', SOMA_QUANTIDADE ), FormatFloat('#,##0.00', 0), FormatFloat('#,##0.00', TOTAL_GERAL), '']), [Comp17, Negrito]);
            //
       DMRelatorios.Fat_VendasSubGrupo.Close;
       //
end;

procedure TFRelVendasSubGruposTrimestre.IniEnter(Sender: TObject);
begin
     CORFUNDO ( SENDER );
end;

end.
