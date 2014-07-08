 unit Vendasgrupo_FRel;

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
  TFRelVendasGrupos = class(TForm)
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
    Label1: TcxLabel;
    Ini: TdxDateEdit;
    Fim: TdxDateEdit;
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
    CkSintetico: TdxCheckEdit;
    stgFRelVendasGrupos: TcxPropertiesStore;
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
    procedure IniExit(Sender: TObject);
    procedure FimExit(Sender: TObject);

    procedure Imprime ;
    procedure Inclinha;
    procedure ImprimeNewRel;
  private
    { Private declarations }
    Grupo, SubGrupo: Integer;
  public
    { Public declarations }
  end;

var
  FRelVendasGrupos: TFRelVendasGrupos;
  Linha, Pagina: Integer;

implementation

uses Relatorios_DM, Usuarios_DM, Application_DM, Funcoes;

{$R *.DFM}

procedure TFRelVendasGrupos.IncLinha ;
begin
     Linha := Linha + 1;

     If (Linha >= 63)
     Then
         Print.Novapagina;
end;

procedure TFRelVendasGrupos.FormCreate(Sender: TObject);
begin
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, Self.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TFRelVendasGrupos.ActFecharExecute(Sender: TObject);
begin
     Close;
end;

procedure TFRelVendasGrupos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  //
  dsVendedor.DataSet.Close ;
  DsGrupo.DataSet.Close ;

  Action := caFree;
  FRelVendasGrupos := Nil;
end;

procedure TFRelVendasGrupos.cmbPessoaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFRelVendasGrupos.PrintBeforeNewPage(Sender: TObject; Pagina: Integer);
begin
  // Rodapé...
  Print.ImpF(63, 01, Replicate('-', 80), [Normal]);
  Print.ImpF(64, 01, dmapp.QryParceiroPARC_TEXTO_RELATORIO.AsString, [comp17,italico]);
  Print.ImpF(64, 74, 'Pag. : ' + FormatFloat('0000', Pagina), [Comp17]);
end;

procedure TFRelVendasGrupos.PrintNewPage(Sender: TObject; Pagina: Integer);
begin
  // Cabeçalho...
  Print.ImpF(01, 01, Replicate('-', 136), [Comp17]);
  Print.ImpF(02, 01, DMApp.Nome, [Normal, Negrito]);
  Print.ImpF(02, 55, 'Data : '+ DateTimeToStr(now()), [Normal]);
  Print.ImpF(03, 01, Print.TitulodoRelatorio, [Normal]);
  Print.ImpF(04, 01, Replicate('-', 136), [Comp17]);
                  //....5...10...15...20...25...30...35...40...45...50...55...60...65...70...75...80...85...90...95...00...05...10...15...20...25...30...35.
  Print.ImpF(05,01, 'PERIODO ' + INI.TEXT + ' A ' + FIM.TEXT + '          ==> GRUPO ' + cmbGrupo.TEXT, [Comp17]);

  If Not CkSintetico.Checked
  then begin
       Print.ImpF(06,01,'Codigo Data       Cliente                            Natur  NF Produto                                    Total   Desconto  Vlr Liquido', [Comp17]);
       Print.ImpF(07,01, Replicate('-', 136), [Comp17]);
  end
  Else begin
       Print.ImpF(06,01,Format('%-15s %-50s %-5s %-3s %14s %14s %14s %14s',
                   ['',
                   '',
                   'UN',
                   '',
                   'QNTDE',
                   'VENDA',
                   'CUSTO',
                   'MARGEM'
                   ]),[Comp17]);
       Print.ImpF(07,01, Replicate('-', 136), [Comp17]);
  end;

  linha  := 09;
end;

procedure TFRelVendasGrupos.FormShow(Sender: TObject);
begin
  //
  IniciaComponentes(Self as TForm);
    Try

    If Not(dsGrupo.DataSet.Active) Then
       dsGrupo.DataSet.Open;

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

procedure TFRelVendasGrupos.ActPreviewExecute(Sender: TObject);
Var
    Cont, Cod_Grupo: Integer;
    sSqlFiltro : string;
begin
  //
  Cod_Grupo := 0;
  lblStatus.caption := 'Selecionando Dados' ;
  lblStatus.Visible := True ;
  lblStatus.Refresh ;

  // *** Passagem de Parametros ***
  DMRelatorios.Fat_VendasPorGrupo.ParamByName('CNPJ').asString:= DMApp.Cnpj;

  If (Ini.date <=0) or ( Fim.date =0)Then
  Begin
       MessageDlg('Informe o Período', MtError, [MbOk],0);
       ini.setfocus;
       exit;
  end;

  If CkSintetico.Checked then
  begin
    If cmbGrupo.text = '' then
    begin
      print.TitulodoRelatorio:='Relatorio de Vendas por Grupo';
      print.Abrir;
      DMRelatorios.SelGrupo.first ;

      while not DMRelatorios.SelGrupo.eof do
      begin
        Cont := 0;

        DMRelatorios.Fat_VendasGrupo.Close ;
        DMRelatorios.Fat_VendasGrupo.SQL.Clear ;
        DMRelatorios.Fat_VendasGrupo.SQL.Add(' Select * from VER_FAT_VENDAS_GRUPO_SINTETICO  ' );
        DMRelatorios.Fat_VendasGrupo.SQL.Add ( ' (  :CNPJ,  :DTINI,  :DTFIM, :NOME_INICIAL, :NOME_FINAL )   ' );
        DMRelatorios.Fat_VendasGrupo.ParamByName('CNPJ').asString:= DMApp.Cnpj;
        DMRelatorios.Fat_VendasGrupo.ParamByName('DTINI').asDate := Ini.Date;
        DMRelatorios.Fat_VendasGrupo.ParamByName('DTFIM').asDate := Fim.Date;
        DMRelatorios.Fat_VendasGrupo.ParamByName('NOME_INICIAL').asString:= DMRelatorios.SelGrupoNOME.Value ;
        DMRelatorios.Fat_VendasGrupo.ParamByName('NOME_FINAL'  ).asString:= DMRelatorios.SelGrupoNOME.Value ;


        If NOT CkTipo.Checked then
        begin
          Cont := 1;
          DMRelatorios.Fat_VendasGrupo.Params.CreateParam ( FtString, 'TIPO', PtInput );
          DMRelatorios.Fat_VendasGrupo.SQL.Add ( ' WHERE  FECHADA = :TIPO  ' );
          DMRelatorios.Fat_VendasGrupo.ParamByName('TIPO'  ).asString:= 'S' ;
        END;

        If CmbVendedor.text <> '' then
        begin
          If Cont = 0 then
          begin
            DMRelatorios.Fat_VendasGrupo.Params.CreateParam ( FtString, 'VENDEDOR', PtInput );

            DMRelatorios.Fat_VendasGrupo.SQL.Add ( ' WHERE  VENDEDOR = :VENDEDOR ' );

            DMRelatorios.Fat_VendasGrupo.ParamByName('VENDEDOR'  ).asInteger := CmbVendedor.LookupKeyValue ;
          end
          else
          begin
            DMRelatorios.Fat_VendasGrupo.Params.CreateParam ( FtString, 'VENDEDOR', PtInput );

            DMRelatorios.Fat_VendasGrupo.SQL.Add ( ' AND  VENDEDOR = :VENDEDOR ' );

            DMRelatorios.Fat_VendasGrupo.ParamByName('VENDEDOR'  ).asInteger := CmbVendedor.LookupKeyValue ;
          end;
        END;

        DMRelatorios.Fat_VendasGrupo.SQL.Add ( ' order by NOME_PRODUTO, PRODUTO ' );
        Imprime ;
        DMRelatorios.SelGrupo.next ;
      end;
    end
    else
    begin

      print.TitulodoRelatorio:='Relatorio de Vendas por Grupo';
      print.Abrir;
      Cont := 0;
      DMRelatorios.Fat_VendasGrupo.Close ;
      DMRelatorios.Fat_VendasGrupo.SQL.Clear ;
      DMRelatorios.Fat_VendasGrupo.SQL.Add ( ' Select * from VER_FAT_VENDAS_GRUPO_SINTETICO  ' );
      DMRelatorios.Fat_VendasGrupo.SQL.Add ( ' (  :CNPJ,  :DTINI,  :DTFIM, :NOME_INICIAL, :NOME_FINAL )   ' );
      DMRelatorios.Fat_VendasGrupo.ParamByName('CNPJ').asString:= DMApp.Cnpj;
      DMRelatorios.Fat_VendasGrupo.ParamByName('DTINI').asDate := Ini.Date;
      DMRelatorios.Fat_VendasGrupo.ParamByName('DTFIM').asDate := Fim.Date;
      DMRelatorios.Fat_VendasGrupo.ParamByName('NOME_INICIAL').asString:= cmbGrupo.TEXT ;
      DMRelatorios.Fat_VendasGrupo.ParamByName('NOME_FINAL'  ).asString:= cmbGrupo.TEXT ;
      If NOT CkTipo.Checked then
      begin
        Cont := 1;
        DMRelatorios.Fat_VendasGrupo.Params.CreateParam ( FtString, 'TIPO', PtInput );
        DMRelatorios.Fat_VendasGrupo.SQL.Add ( ' WHERE  FECHADA = :TIPO  ' );
        DMRelatorios.Fat_VendasGrupo.ParamByName('TIPO'  ).asString:= 'S' ;
      END;

      If CmbVendedor.text <> '' then
      begin
        If Cont = 0 then
        begin
          DMRelatorios.Fat_VendasGrupo.Params.CreateParam ( FtString, 'VENDEDOR', PtInput );
          DMRelatorios.Fat_VendasGrupo.SQL.Add ( ' WHERE  VENDEDOR = :VENDEDOR ' );
          DMRelatorios.Fat_VendasGrupo.ParamByName('VENDEDOR'  ).asInteger := CmbVendedor.LookupKeyValue ;
        end
        else
        begin
          DMRelatorios.Fat_VendasGrupo.Params.CreateParam ( FtString, 'VENDEDOR', PtInput );
          DMRelatorios.Fat_VendasGrupo.SQL.Add ( ' AND  VENDEDOR = :VENDEDOR ' );
          DMRelatorios.Fat_VendasGrupo.ParamByName('VENDEDOR'  ).asInteger := CmbVendedor.LookupKeyValue ;
        end;
      END;

      DMRelatorios.Fat_VendasGrupo.SQL.Add ( ' order by NOME_PRODUTO, PRODUTO ' );

      Imprime ;
    end;
  end
  else
  begin
    If cmbGrupo.text = '' then
    begin
      print.TitulodoRelatorio:='Relatorio de Vendas por Grupo';
      print.Abrir;
      DMRelatorios.SelGrupo.first ;
      while not DMRelatorios.SelGrupo.eof do
      begin
        Cont := 0;
        DMRelatorios.Fat_VendasPorGrupo.Close ;
        DMRelatorios.Fat_VendasPorGrupo.SQL.Clear ;
        DMRelatorios.Fat_VendasPorGrupo.SQL.Add ( ' Select * from VER_FAT_VENDAS_POR_GRUPO  ' );
        DMRelatorios.Fat_VendasPorGrupo.SQL.Add ( ' (  :CNPJ,  :DTINI,  :DTFIM, :NOME_INICIAL, :NOME_FINAL )   ' );
        DMRelatorios.Fat_VendasPorGrupo.ParamByName('CNPJ').asString:= DMApp.Cnpj;
        DMRelatorios.Fat_VendasPorGrupo.ParamByName('DTINI').asDate := Ini.Date;
        DMRelatorios.Fat_VendasPorGrupo.ParamByName('DTFIM').asDate := Fim.Date;
        DMRelatorios.Fat_VendasPorGrupo.ParamByName('NOME_INICIAL').asString:= DMRelatorios.SelGrupoNOME.Value ;
        DMRelatorios.Fat_VendasPorGrupo.ParamByName('NOME_FINAL'  ).asString:= DMRelatorios.SelGrupoNOME.Value ;

        If NOT CkTipo.Checked then
        begin
          Cont := 1;
          DMRelatorios.Fat_VendasPorGrupo.Params.CreateParam ( FtString, 'TIPO', PtInput );
          DMRelatorios.Fat_VendasPorGrupo.SQL.Add ( ' WHERE  FECHADA = :TIPO  ' );
          DMRelatorios.Fat_VendasPorGrupo.ParamByName('TIPO'  ).asString:= 'S' ;
        END;

        If CmbVendedor.text <> '' then
        begin
          If Cont = 0 then
          begin
            DMRelatorios.Fat_VendasPorGrupo.Params.CreateParam ( FtString, 'VENDEDOR', PtInput );
            DMRelatorios.Fat_VendasPorGrupo.SQL.Add ( ' WHERE  VENDEDOR = :VENDEDOR ' );
            DMRelatorios.Fat_VendasPorGrupo.ParamByName('VENDEDOR'  ).asInteger := CmbVendedor.LookupKeyValue ;
          end
          else
          begin
            DMRelatorios.Fat_VendasPorGrupo.Params.CreateParam ( FtString, 'VENDEDOR', PtInput );
            DMRelatorios.Fat_VendasPorGrupo.SQL.Add ( ' AND  VENDEDOR = :VENDEDOR ' );
            DMRelatorios.Fat_VendasPorGrupo.ParamByName('VENDEDOR'  ).asInteger := CmbVendedor.LookupKeyValue ;
          end;
        END;

        DMRelatorios.Fat_VendasPorGrupo.OPEN ;
        Imprime ;
        DMRelatorios.SelGrupo.NEXT ;
      END;
    END
    ELSE
    BEGIN
      print.TitulodoRelatorio:='Relatorio de Vendas por Grupo';
      print.Abrir;
      Cont := 0;
      DMRelatorios.Fat_VendasPorGrupo.Close ;
      DMRelatorios.Fat_VendasPorGrupo.SQL.Clear ;
      DMRelatorios.Fat_VendasPorGrupo.SQL.Add ( ' Select * from VER_FAT_VENDAS_POR_GRUPO  ' );
      DMRelatorios.Fat_VendasPorGrupo.SQL.Add ( ' (  :CNPJ,  :DTINI,  :DTFIM, :NOME_INICIAL, :NOME_FINAL )   ' );
      DMRelatorios.Fat_VendasPorGrupo.ParamByName('CNPJ').asString:= DMApp.Cnpj;
      DMRelatorios.Fat_VendasPorGrupo.ParamByName('DTINI').asDate := Ini.Date;
      DMRelatorios.Fat_VendasPorGrupo.ParamByName('DTFIM').asDate := Fim.Date;
      DMRelatorios.Fat_VendasPorGrupo.ParamByName('NOME_INICIAL').asString:= cmbGrupo.TEXT ;
      DMRelatorios.Fat_VendasPorGrupo.ParamByName('NOME_FINAL'  ).asString:= cmbGrupo.TEXT ;

      If NOT CkTipo.Checked then
      begin
        Cont := 1;
        DMRelatorios.Fat_VendasPorGrupo.Params.CreateParam ( FtString, 'TIPO', PtInput );
        DMRelatorios.Fat_VendasPorGrupo.SQL.Add ( ' WHERE  FECHADA = :TIPO  ' );
        DMRelatorios.Fat_VendasPorGrupo.ParamByName('TIPO'  ).asString:= 'S' ;
      END;

      If CmbVendedor.text <> '' then
      begin
        If Cont = 0 then
        begin
          DMRelatorios.Fat_VendasPorGrupo.Params.CreateParam ( FtString, 'VENDEDOR', PtInput );
          DMRelatorios.Fat_VendasPorGrupo.SQL.Add ( ' WHERE  VENDEDOR = :VENDEDOR ' );
          DMRelatorios.Fat_VendasPorGrupo.ParamByName('VENDEDOR'  ).asInteger := CmbVendedor.LookupKeyValue ;
        end
        else
        begin
          DMRelatorios.Fat_VendasPorGrupo.Params.CreateParam ( FtString, 'VENDEDOR', PtInput );
          DMRelatorios.Fat_VendasPorGrupo.SQL.Add ( ' AND  VENDEDOR = :VENDEDOR ' );
          DMRelatorios.Fat_VendasPorGrupo.ParamByName('VENDEDOR'  ).asInteger := CmbVendedor.LookupKeyValue ;
        end;
        DMRelatorios.Fat_VendasPorGrupo.OPEN ;
        Imprime;
      END;
    END;
  end;//fim senao
  Anda.Visible:= False;
  print.Fechar;
end;

procedure TFRelVendasGrupos.Imprime ;
Var
    Cont, Cod_Grupo, SubUnidade: Integer;
    UltProd, NomeProd, Unidade : String;
    Soma_Quantidade, Custo, Quantidade, Total_Produto, Total_Grupo, Total_Geral: Real;
    STR: String;
    Margem, Soma_Custo: Real;
    DESCONTO, UNITARIO, TOTAL: REAL;
Begin

  // *** fim da Passagem de Parametros ***
  If CkSintetico.Checked
  then begin
       Linha := Linha + 1;

       Linha := Linha + 1;

       If cmbGrupo.Text = ''
       then
           Print.ImpF(Linha, 01, DMRelatorios.SelGrupoNome.Value , [Comp17, Negrito])
       Else
           Print.ImpF(Linha, 01, cmbGrupo.Text , [Comp17, Negrito]);

       Linha := Linha + 1;

       Print.ImpF(Linha, 01, Replicate('=', 136), [Comp17, Negrito]);

       Linha := Linha + 1;

       DMRelatorios.Fat_VendasGrupo.Open;

       lblStatus.Visible := False ;

       DMRelatorios.Fat_VendasGrupo.FetchAll ;

       Anda.Max := DMRelatorios.Fat_VendasGrupo.RecordCount;

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
       DMRelatorios.Fat_VendasGrupo.First;

       UltProd  := DMRelatorios.Fat_VendasGrupoPRODUTO.Value ;

       NomeProd := DMRelatorios.Fat_VendasGrupoNOME_PRODUTO.Value ;

       Unidade := DMRelatorios.Fat_VendasGrupoUNIDADE.Value ;

       SubUnidade := DMRelatorios.Fat_VendasGrupoSUBUNIDADE.Value ;

       While Not DMRelatorios.Fat_VendasGrupo.Eof
       Do Begin
          If DMRelatorios.Fat_VendasGrupoPRODUTO.Value <> UltProd
          then begin
               If ( Custo > 0 ) and ((Total_Produto - Custo) > 0)
               then begin
                    margem := (Total_Produto - Custo) / Custo ;
               end
               else
                   Margem := 0;

               Margem := Margem * 100 ;

               //
               Print.ImpF(Linha,01,Format('%-15s %-50s %-5s %-3s %14s %14s %14s %14s',
               [UltProd,
                   Copy(NomeProd,1,50),
                   Unidade,
                   inttostr(SubUnidade),
                   FormatFloat('###,###,##0.00', Quantidade     ),
                   FormatFloat('###,###,##0.00', Total_Produto  ),
                   FormatFloat('###,###,##0.00', custo  ),
                   FormatFloat('% ###,###,##0.00', margem )
                   ]),[Comp17]);

               Total_Produto := 0;
               Quantidade    := 0;
               Custo         := 0;

               UltProd  := DMRelatorios.Fat_VendasGrupoPRODUTO.Value ;

               NomeProd := DMRelatorios.Fat_VendasGrupoNOME_PRODUTO.Value ;

               Unidade := DMRelatorios.Fat_VendasGrupoUNIDADE.Value ;

               SubUnidade := DMRelatorios.Fat_VendasGrupoSUBUNIDADE.Value ;

               Linha := Linha + 1;

               //
               If (Linha >= 63)
               Then
                   Print.Novapagina;

          end ;

          Total_Geral     := Total_Geral + DMRelatorios.Fat_VendasGrupoTOTAL.Value     ;

          Total_Produto   := Total_Produto + DMRelatorios.Fat_VendasGrupoTOTAL.Value   ;

          Quantidade      := Quantidade + DMRelatorios.Fat_VendasGrupoQUANTIDADE.Value ;

          Soma_Quantidade := Soma_Quantidade + DMRelatorios.Fat_VendasGrupoQUANTIDADE.Value;

          Custo           := Custo + DMRelatorios.Fat_VendasGrupoCUSTO.Value ;

          Soma_Custo      := Soma_Custo  + Custo ;

          //
          Anda.Position := Anda.Position + 1;

          DMRelatorios.Fat_VendasGrupo.Next;

       End;

       If ( Custo > 0 ) and ((Total_Produto - Custo) > 0)
       then begin
            margem := (Total_Produto - Custo) / Custo ;
       end
       else
           Margem := 0;

       Margem := Margem * 100 ;

       //
       Print.ImpF(Linha,01,Format('%-15s %-50s %-5s %-3s %14s %14s %14s %14s',
            [UltProd,
            Copy(NomeProd,1,50),
            Unidade,
            inttostr(SubUnidade),
            FormatFloat('###,###,##0.00', Quantidade     ),
            FormatFloat('###,###,##0.00', Total_Produto  ),
            FormatFloat('###,###,##0.00', Custo  ),
            FormatFloat('% ###,###,##0.00', Margem )
            ]),[Comp17]);

       If ( Soma_Custo > 0 ) and ( TOTAL_GERAL > 0 )
       then begin
            Margem := (( TOTAL_GERAL - Soma_Custo) / Soma_Custo )* 100;
       end
       ELSE
           Margem := 0;

       Print.ImpF(Linha+1, 01, Format('%63s Total Geral: %14s %14s %14s %14s', ['', FormatFloat('#,##0.00', SOMA_QUANTIDADE ), FormatFloat('#,##0.00', TOTAL_GERAL), FormatFloat('#,##0.00', SOMA_CUSTO), FormatFloat('% #,##0.00', MARGEM)]), [Comp17, Negrito]);
            //
       DMRelatorios.Fat_VendasGrupo.Close;
            //
  end
  else begin
       DMRelatorios.Fat_VendasPorGrupo.Open;

       lblStatus.Visible := False ;
       DMRelatorios.Fat_VendasPorGrupo.FetchAll ;
       Anda.Max := DMRelatorios.Fat_VendasPorGrupo.RecordCount;
       Anda.Position := 0;
       Anda.Visible  := TRUE ;

       //
       Total_Grupo:= 0;
       Total_Geral:= 0;
       //
       DMRelatorios.Fat_VendasPorGrupo.First;
       While Not DMRelatorios.Fat_VendasPorGrupo.Eof
       Do Begin
          //
          If Cod_Grupo <> DmRelatorios.Fat_VendasPorGrupoGRUPO.Value
          Then Begin
               Print.ImpF(Linha,01,'Grupo : '+ DmRelatorios.Fat_VendasPorGrupoNOME_Grupo.Text,[Comp17, Negrito]);
               Cod_Grupo := DmRelatorios.Fat_VendasPorGrupoGRUPO.Value;
               Linha := Linha + 2;
               Total_Grupo:= 0;
          End;

          //CALCULO DO VALOR DO PRODUTO NA VENDA
          DESCONTO := DMRelatorios.Fat_VendasPorGrupoDESCONTO.Value ;
          UNITARIO := DMRelatorios.Fat_VendasPorGrupoPRC_UNITARIO.Value ;

          TOTAL    := DMRelatorios.Fat_VendasPorGrupoQUANTIDADE.Value * (UNITARIO - DESCONTO);

          //
          Print.ImpF(Linha,01,Format('%6s %-8s %-35s %-4s %4s %-36s %10s %10s %12s',
          [DMRelatorios.Fat_VendasPorGrupoCODIGO.Text,
          DMRelatorios.Fat_VendasPorGrupoDATA.Text,
          COPY(DMRelatorios.Fat_VendasPorGrupoPESSOA_RAZAO.Text,1,35),
          DMRelatorios.Fat_VendasPorGrupoNATUREZA.Text,
          DMRelatorios.Fat_VendasPorGrupoNF.Text,
          COPY(DMRelatorios.Fat_VendasPorGrupoNOME_PRODUTO.Text,1,36),
          DMRelatorios.Fat_VendasPorGrupoPRC_UNITARIO.Text,
          DMRelatorios.Fat_VendasPorGrupoDESCONTO.Text,
          FORMATFLOAT('###,##0.00', TOTAL)]),[Comp17]);

          Total_Geral:= Total_Geral + TOTAL;

          Total_Grupo:= Total_Grupo + TOTAL;

          Anda.Position := Anda.Position + 1;

          DMRelatorios.Fat_VendasPorGrupo.Next;
               //
          Linha := Linha + 1;
               //
          If (Cod_Grupo <> DmRelatorios.Fat_VendasPorGrupoGRUPO.Value) Or
          (DMRelatorios.Fat_VendasPorGrupo.Eof)
          Then Begin
               Print.ImpF(Linha, 01, Format('%105s Total Grupo : %15s', ['', FormatFloat('#,##0.00', TOTAL_Grupo)]), [Comp17, Negrito]);

               Linha:= Linha + 1;

               Print.ImpF(Linha, 01, Replicate('-', 136), [Comp17]);

               Linha:= Linha + 1;
          End;

          If (Linha >= 63)
          Then
              Print.Novapagina;
       End;

       //
       Print.ImpF(Linha+1, 01, Format('%106s Total Geral : %15s', ['', FormatFloat('#,##0.00', TOTAL_GERAL)]), [Comp17, Negrito]);
            //
       DMRelatorios.Fat_VendasPorGrupo.Close;
            //
  end;
end;

procedure TFRelVendasGrupos.IniEnter(Sender: TObject);
begin
     CORFUNDO ( SENDER );
end;

procedure TFRelVendasGrupos.IniExit(Sender: TObject);
begin
     //TROCA A COR PARA A COR SELECIONADA
     TIRACORFUNDO ( SENDER );

     IF ( INI.TEXT = '  /  /    ' ) or ( INI.TEXT = '  /  /  ' )
     THEN BEGIN
             INI.DATE := STRTODATE('01/01/1900') ;
     END;
end;

procedure TFRelVendasGrupos.FimExit(Sender: TObject);
begin
     //TROCA A COR PARA A COR SELECIONADA
     TIRACORFUNDO ( SENDER );

     IF ( FIM.TEXT = '  /  /    ' ) or ( FIM.TEXT = '  /  /  ' )
     THEN BEGIN
             FIM.DATE := STRTODATE('31/12/9999') ;
     END;
end;

procedure TFRelVendasGrupos.ImprimeNewRel;
begin
  If (Ini.date <=0) or ( Fim.date =0)Then
  Begin
    MessageDlg('Informe o Período', MtError, [MbOk],0);
    ini.setfocus;
    exit;
  end;

  if cmbgrupo.text <> '' then
  begin
  //
  end;
end;

end.
