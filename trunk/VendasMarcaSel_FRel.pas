 unit VendasMarcaSel_FRel;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, Db, dxExEdtr, dxEdLib, dxCntner, dxEditor, dxDBEdtr,
  dxDBELib, StdCtrls,  RDprint,   ComCtrls,
    dxTL, dxDBCtrl, dxDBGrid, cxPropertiesStore, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinXmas2008Blue, Menus, cxButtons, cxLabel;

type
  TFRelVendasMarcasSel = class(TForm)
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
    LblTitulo: TcxLabel;
    b2: TBevel;
    DsMARCA: TDataSource;
    CkTipo: TdxCheckEdit;
    ActFechar: TAction;
    Label4: TcxLabel;
    CmbVendedor: TdxLookupEdit;
    DsVendedor: TDataSource;
    GRID: TdxDBGrid;
    GRIDCODIGO: TdxDBGridMaskColumn;
    GRIDNOME: TdxDBGridMaskColumn;
    GRIDSELECIONADO: TdxDBGridMaskColumn;
    stgFRelVendasMarcasSel: TcxPropertiesStore;
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
    procedure GRIDKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);

  private
    { Private declarations }
    Grupo, SubGrupo: Integer;
  public
    { Public declarations }
  end;

var
  FRelVendasMarcasSel: TFRelVendasMarcasSel;
  Linha, Pagina: Integer;

implementation

uses Relatorios_DM, Usuarios_DM, Application_DM, Funcoes;

{$R *.DFM}

procedure TFRelVendasMarcasSel.IncLinha ;
begin
     Linha := Linha + 1;

     If (Linha >= 63)
     Then
         Print.Novapagina;
end;

procedure TFRelVendasMarcasSel.FormCreate(Sender: TObject);
begin
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, Self.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TFRelVendasMarcasSel.ActFecharExecute(Sender: TObject);
begin
     Close;
end;

procedure TFRelVendasMarcasSel.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //
  dsVendedor.DataSet.Close ;
  Dsmarca.DataSet.Close ;

  Action := caFree;
  FRelVendasMarcasSel := Nil;
end;

procedure TFRelVendasMarcasSel.cmbPessoaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFRelVendasMarcasSel.PrintBeforeNewPage(Sender: TObject; Pagina: Integer);
begin
  // Rodapé...
  Print.ImpF(63, 01, Replicate('-', 80), [Normal]);
  Print.ImpF(64, 01, dmapp.QryParceiroPARC_TEXTO_RELATORIO.AsString, [comp17,italico]);
  Print.ImpF(64, 74, 'Pag. : ' + FormatFloat('0000', Pagina), [Comp17]);
end;

procedure TFRelVendasMarcasSel.PrintNewPage(Sender: TObject; Pagina: Integer);
Var
   NomeVendedor: String;
begin
  // Cabeçalho...
  Print.ImpF(01, 01, Replicate('-', 136), [Comp17]);
  Print.ImpF(02, 01, DMApp.Nome, [Normal, Negrito]);
  Print.ImpF(02, 55, 'Data : '+ DateTimeToStr(now()), [Normal]);
  Print.ImpF(03, 01, Print.TitulodoRelatorio, [Normal]);
  Print.ImpF(04, 01, Replicate('-', 136), [Comp17]);
                  //....5...10...15...20...25...30...35...40...45...50...55...60...65...70...75...80...85...90...95...00...05...10...15...20...25...30...35.

  NomeVendedor := '';

  if CmbVendedor.text <> ''
  then
      NomeVendedor := 'Vendedor = ' + CmbVendedor.text ;

  Print.ImpF(05,01, 'PERIODO ' + INI.TEXT + ' A ' + FIM.TEXT  + ' ' + NomeVendedor , [Comp17]);

  Print.ImpF(06,01,Format('%-15s %-40s %10s %10s %12s %12s %12s' ,
  [
  'COD',
  'NOME',
  'QNTDE',
  'CUSTO',
  'VENDA',
  'LUCRO',
  'MARGEM'
  ]),
  [Comp17]);

  Print.ImpF(07,01, Replicate('-', 136), [Comp17]);

  linha  := 09;
end;

procedure TFRelVendasMarcasSel.FormShow(Sender: TObject);
begin
  //
  IniciaComponentes(Self as TForm);
    Try

    If Not(dsmarca.DataSet.Active) Then
       dsmarca.DataSet.Open;

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

procedure TFRelVendasMarcasSel.ActPreviewExecute(Sender: TObject);
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
  DMRelatorios.Fat_VendasGrupoSel.ParamByName('CNPJ').asString:= DMApp.Cnpj;

  If (Ini.Text = '  / /    ') Or (Fim.Text = '  / /    ')
  Then Begin
       MessageDlg('Informe o Período', MtError, [MbOk],0);
  end
  Else Begin
       If ( Ini.Text = '  / /    ' ) Or ( Fim.Text = '  / /    ' )
       Then begin
            MessageDlg('Informe o Período', MtError, [MbOk],0);
            Ini.SETFOCUS ;
            EXIT ;
       end
       else begin
            //
            print.TitulodoRelatorio:='Relatorio de Vendas por Grupo';

            print.Abrir;

            Cont := 0;

            DMRelatorios.Fat_VendasGrupoSel.Close ;

            DMRelatorios.Fat_VendasGrupoSel.SQL.Clear ;

            DMRelatorios.Fat_VendasGrupoSel.SQL.Add ( ' Select * from VER_FAT_VENDAS_GRUPO_SEL ' );

            DMRelatorios.Fat_VendasGrupoSel.SQL.Add ( ' ( :CNPJ,  :DTINI,  :DTFIM )         ' );

            DMRelatorios.Fat_VendasGrupoSel.ParamByName('CNPJ').asString:= DMApp.Cnpj;

            DMRelatorios.Fat_VendasGrupoSel.ParamByName('DTINI').asDate := Ini.Date;

            DMRelatorios.Fat_VendasGrupoSel.ParamByName('DTFIM').asDate := Fim.Date;

            //
            If NOT CkTipo.Checked
            then begin
                 Cont := 1;

                 DMRelatorios.Fat_VendasGrupoSel.Params.CreateParam ( FtString, 'TIPO', PtInput );

                 DMRelatorios.Fat_VendasGrupoSel.SQL.Add ( ' WHERE  FECHADA = :TIPO  ' );

                 DMRelatorios.Fat_VendasGrupoSel.ParamByName('TIPO'  ).asString:= 'S' ;
            END;

            If CmbVendedor.text <> ''
            then begin
                 If Cont = 0
                 then begin
                      DMRelatorios.Fat_VendasGrupoSel.Params.CreateParam ( FtString, 'VENDEDOR', PtInput );

                      DMRelatorios.Fat_VendasGrupoSel.SQL.Add ( ' WHERE  VENDEDOR = :VENDEDOR ' );

                      DMRelatorios.Fat_VendasGrupoSel.ParamByName('VENDEDOR'  ).asInteger := CmbVendedor.LookupKeyValue ;
                 end
                 else begin
                      DMRelatorios.Fat_VendasGrupoSel.Params.CreateParam ( FtString, 'VENDEDOR', PtInput );

                      DMRelatorios.Fat_VendasGrupoSel.SQL.Add ( ' AND  VENDEDOR = :VENDEDOR ' );

                      DMRelatorios.Fat_VendasGrupoSel.ParamByName('VENDEDOR'  ).asInteger := CmbVendedor.LookupKeyValue ;
                 end;
            END;

            DMRelatorios.Fat_VendasGrupoSel.SQL.Add ( ' ORDER BY NOME_GRUPO, GRUPO, PRODUTO, NOME_PRODUTO ' );

            DMRelatorios.Fat_VendasGrupoSel.OPEN ;

            Imprime ;
       End;
  end;

  Anda.Visible:= False;

  print.Fechar;
end;

procedure TFRelVendasMarcasSel.Imprime ;
Var
    Cont, Cod_Grupo, SubUnidade: Integer;
    UltProd, NomeProd, Unidade : String;
    Soma_Quantidade, Soma_Quantidade_Grupo, Custo, Quantidade, Total_Produto,
    Total_Grupo, Total_Grupo_Grupo, Total_Geral: Real;
    STR: String;
    Margem, Soma_Custo, Soma_Custo_Grupo: Real;
    DESCONTO, UNITARIO, TOTAL: REAL;
    Soma_Quantidade_Geral, Soma_Custo_Geral, Soma_Total_Geral: Real;
Begin
{       DMRelatorios.Fat_VendasGrupoSel.Open;

       lblStatus.Visible := False ;
       DMRelatorios.Fat_VendasGrupoSel.FetchAll ;
       Anda.Max := DMRelatorios.Fat_VendasGrupoSel.RecordCount;
       Anda.Position := 0;
       Anda.Visible  := TRUE ;

       //
       Total_Grupo:= 0;

       Total_Geral:= 0;

       Soma_Quantidade_Geral := 0;
       Soma_Custo_Geral      := 0;
       Soma_Total_Geral      := 0;

       UltProd := DMRelatorios.Fat_VendasGrupoSelProduto.value ;

       //
       DMRelatorios.Fat_VendasGrupoSel.First;

       While Not DMRelatorios.Fat_VendasGrupoSel.Eof
       Do Begin
          //
          If Cod_Grupo <> DmRelatorios.Fat_VendasGrupoSelMarca.Value
          Then Begin
               Print.ImpF(Linha,01,'Grupo : '+ DmRelatorios.Fat_VendasGrupoSelNOME_Grupo.Text,[Comp17, Negrito]);

               Cod_Grupo := DmRelatorios.Fat_VendasGrupoSelMarca.Value;

               Linha := Linha + 2;

               Soma_Quantidade_Grupo := 0;

               Soma_Custo_Grupo      := 0;

               Total_Grupo_Grupo     := 0;

               UltProd := DMRelatorios.Fat_VendasGrupoSelProduto.value ;
          End;

          IF ( UltProd <> DMRelatorios.Fat_VendasGrupoSelProduto.value )
          THEN BEGIN
               UltProd := DMRelatorios.Fat_VendasGrupoSelProduto.value ;

               IF ARREDONDA(Soma_Custo,2) <> 0
               THEN
                   MARGEM := (( Total_Grupo - Soma_Custo )/ Soma_Custo)*100
               ELSE
                   MARGEM := 100;

               Print.ImpF(Linha,01,Format('%-15s %-40s %10s %10s %12s %12s %12s',
               [
               DMRelatorios.Fat_VendasGrupoSelPRODUTO.Text,
               COPY(DMRelatorios.Fat_VendasGrupoSelNOME_PRODUTO.Text,1,35),
               FORMATFLOAT('###,##0.00', Soma_Quantidade),
               FORMATFLOAT('###,##0.00', Soma_Custo),
               FORMATFLOAT('###,##0.00', Total_Grupo),
               FORMATFLOAT('###,##0.00', Total_Grupo - Soma_Custo ),
               FORMATFLOAT('###,##0.00', MARGEM )
               ]),[Comp17]);

               Soma_Quantidade := 0;
               Soma_Custo      := 0;
               Total_Grupo     := 0;

               //
               Linha := Linha + 1;
          END;

          //CALCULO DO VALOR DO PRODUTO NA VENDA
          DESCONTO := DMRelatorios.Fat_VendasGrupoSelDESCONTO.Value ;

          UNITARIO := DMRelatorios.Fat_VendasGrupoSelPRC_UNITARIO.Value ;

          TOTAL    := DMRelatorios.Fat_VendasGrupoSelQUANTIDADE.Value * (UNITARIO - DESCONTO);

          Soma_Quantidade := Soma_Quantidade + DMRelatorios.Fat_VendasGrupoSelQUANTIDADE.Value ;

          Soma_Quantidade_Grupo := Soma_Quantidade_Grupo + DMRelatorios.Fat_VendasGrupoSelQUANTIDADE.Value ;

          Soma_Custo_Grupo      := Soma_Custo_Grupo      + ( DMRelatorios.Fat_VendasGrupoSelcusto.value ) ;

          Soma_Custo            := Soma_Custo            + ( DMRelatorios.Fat_VendasGrupoSelcusto.value ) ;

          Soma_Quantidade_Geral := Soma_Quantidade_Geral + DMRelatorios.Fat_VendasGrupoSelQUANTIDADE.Value;
          Soma_Custo_Geral      := Soma_Custo_Geral      + ( DMRelatorios.Fat_VendasGrupoSelcusto.value );
          Soma_Total_Geral      := Soma_Total_Geral      + total ;

          //
          Total_Geral:= Total_Geral + TOTAL;

          Total_Grupo:= Total_Grupo + TOTAL;

          Total_Grupo_Grupo:= Total_Grupo_Grupo + TOTAL;

          Anda.Position := Anda.Position + 1;

          DMRelatorios.Fat_VendasGrupoSel.Next;
               //
          If (Cod_Grupo <> DmRelatorios.Fat_VendasGrupoSelMarca.Value) Or
          (DMRelatorios.Fat_VendasGrupoSel.Eof)
          Then Begin
               IF ARREDONDA(Soma_Custo,2) <> 0
               THEN
                   MARGEM := ((Total_Grupo_Grupo - Soma_Custo_Grupo)/Soma_Custo_Grupo)*100
               ELSE
                   MARGEM := 100;

               Print.ImpF(Linha,01,Format('%-15s %-40s %10s %10s %12s %12s %12s',
               [
               '',
               '',
               FORMATFLOAT('###,##0.00', Soma_Quantidade_Grupo),
               FORMATFLOAT('###,##0.00', Soma_Custo_Grupo),
               FORMATFLOAT('###,##0.00', Total_Grupo_Grupo),
               FORMATFLOAT('###,##0.00', Total_Grupo_Grupo - Soma_Custo_Grupo),
               FORMATFLOAT('###,##0.00', MARGEM)
               ]),[Comp17]);


               Linha:= Linha + 1;

               Print.ImpF(Linha, 01, Replicate('-', 136), [Comp17]);

               Linha:= Linha + 1;

               Soma_Quantidade_Grupo := 0;
               Soma_Custo_Grupo := 0;
               Total_Grupo_Grupo := 0;
          End;

          If (Linha >= 63)
          Then
              Print.Novapagina;
       End;

       IF ARREDONDA(Soma_Custo_Geral,2) <> 0
       THEN
           MARGEM := (( Soma_Total_Geral - Soma_Custo_Geral )/ Soma_Custo_Geral)*100
       ELSE
           MARGEM := 100;

       //
       Print.ImpF(Linha + 1,01,Format('%-15s %-40s %10s %10s %12s %12s %12s',
               [
               '',
               '',
               FORMATFLOAT('###,##0.00', Soma_Quantidade_Geral ),
               FORMATFLOAT('###,##0.00', Soma_Custo_Geral ),
               FORMATFLOAT('###,##0.00', Soma_Total_Geral ),
               FORMATFLOAT('###,##0.00', Soma_Total_Geral - Soma_Custo_Geral),
               FORMATFLOAT('###,##0.00', margem)
       ]),[Comp17]);
            //
       DMRelatorios.Fat_VendasGrupoSel.Close;
       //
       }
end;

procedure TFRelVendasMarcasSel.IniEnter(Sender: TObject);
begin
     CORFUNDO ( SENDER );
end;

procedure TFRelVendasMarcasSel.IniExit(Sender: TObject);
begin
     //TROCA A COR PARA A COR SELECIONADA
     TIRACORFUNDO ( SENDER );

     IF ( INI.TEXT = '  /  /    ' ) or ( INI.TEXT = '  /  /  ' )
     THEN BEGIN
             INI.DATE := STRTODATE('01/01/1900') ;
     END;
end;

procedure TFRelVendasMarcasSel.FimExit(Sender: TObject);
begin
     //TROCA A COR PARA A COR SELECIONADA
     TIRACORFUNDO ( SENDER );

     IF ( FIM.TEXT = '  /  /    ' ) or ( FIM.TEXT = '  /  /  ' )
     THEN BEGIN
             FIM.DATE := STRTODATE('31/12/9999') ;
     END;
end;

procedure TFRelVendasMarcasSel.GRIDKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
Var
   Book: TBookMark ;
begin
     If (( Key = 13 ) OR ( Key = vk_space )) 
     then begin
          Book := DMRelatorios.SelMarca.GetBookmark ;
          with DMRelatorios do
          begin
               Geral.Close ;
               Geral.Sql.Clear ;
               Geral.Params.Clear ;

               Geral.Params.CreateParam ( FtString , 'E',   PtInput );
               Geral.Params.CreateParam ( FtInteger, 'C',   PtInput );
               Geral.Params.CreateParam ( FtString , 'SEL', PtInput );

               Geral.Sql.Add (' Update Est_Marcas Set Selecionado = :SEL ');

               Geral.Sql.Add (' Where Codigo = :C and CNPJ = :E          ');

               Geral.ParamByName ('E'  ).AsString  := DmApp.Cnpj   ;
               Geral.ParamByName ('C'  ).AsInteger := DMRelatorios.SelMarcaCODIGO.VALUE ;

               IF DMRelatorios.SelMarcaSELECIONADO.VALUE = 'S'
               THEN
                   Geral.ParamByName ('SEL').AsString  := 'N'
               ELSE
                   Geral.ParamByName ('SEL').AsString  := 'S';

               Geral.Prepare ;
               Geral.EXECSQL ;

               DMRelatorios.SelMarca.close ;
               DMRelatorios.SelMarca.open  ;

               DMRelatorios.SelMarca.GotoBookmark ( book );
               DMRelatorios.SelMarca.FreeBookmark ( BOOK );
          end;
     end;
end;

end.
