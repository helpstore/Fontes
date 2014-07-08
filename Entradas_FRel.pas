unit Entradas_FRel;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, Db, dxExEdtr, dxEdLib, dxCntner, dxEditor, dxDBEdtr,
  dxDBELib, StdCtrls,  RDprint,  ComCtrls, ppDB,
  ppDBPipe, ppParameter, ppModule, raCodMod, ppCtrls, ppBands, ppVar,
  ppPrnabl, ppClass, ppCache, ppComm, ppRelatv, ppProd, ppReport, ppStrtch,
  ppSubRpt, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, Menus, cxButtons, cxLabel;

type
  TFRelEntradas = class(TForm)
    pnlClient: TPanel;
    Panel2: TPanel;
    RzBitBtn1: TcxButton;
    RzBitBtn2: TcxButton;
    Actions: TActionList;
    ActPreview: TAction;
    ActFechar: TAction;
    Label2: TcxLabel;
    dsFornecedores: TDataSource;
    Print: TRDprint;
    ActBuscarProd: TAction;
    Label3: TcxLabel;
    cmbFornecedor: TdxLookupEdit;
    Label1: TcxLabel;
    edDtInicial: TdxDateEdit;
    edDtFinal: TdxDateEdit;
    Label4: TcxLabel;
    edNDocto: TdxEdit;
    Label5: TcxLabel;
    LblStatus: TcxLabel;
    ANDA: TProgressBar;
    CkCusto: TCheckBox;
    CkTotais: TCheckBox;
    cmbTipoRel: TdxPickEdit;
    cknatureza: TCheckBox;
    rptRelSintetico: TppReport;
    ppTitleBand6: TppTitleBand;
    ppShape5: TppShape;
    lblEmpresa: TppLabel;
    ppLabel62: TppLabel;
    lblFiltroSint: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppHeaderBand2: TppHeaderBand;
    ppLabel64: TppLabel;
    ppLabel66: TppLabel;
    ppLabel67: TppLabel;
    ppLabel68: TppLabel;
    ppLabel69: TppLabel;
    ppLabel70: TppLabel;
    ppDetailBand6: TppDetailBand;
    ppDBText55: TppDBText;
    ppDBText56: TppDBText;
    ppDBText57: TppDBText;
    ppDBText62: TppDBText;
    ppDBText63: TppDBText;
    ppDBText64: TppDBText;
    ppFooterBand4: TppFooterBand;
    ppShape9: TppShape;
    ppSystemVariable3: TppSystemVariable;
    raCodeModule4: TraCodeModule;
    ppParameterList2: TppParameterList;
    dbRelEntSint: TppDBPipeline;
    dsEntProd: TDataSource;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLabel1: TppLabel;
    ppLine2: TppLine;
    ppDBText1: TppDBText;
    ppLabel2: TppLabel;
    ppDBText2: TppDBText;
    ppLabel3: TppLabel;
    ppDBText3: TppDBText;
    ppLabel4: TppLabel;
    ppDBText4: TppDBText;
    ppLine3: TppLine;
    ppDBText5: TppDBText;
    ppLabel5: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    subResumo: TppSubReport;
    ppChildReport1: TppChildReport;
    ppTitleBand1: TppTitleBand;
    ppDetailBand1: TppDetailBand;
    ppSummaryBand2: TppSummaryBand;
    dbResumo: TppDBPipeline;
    dsResumo: TDataSource;
    ppLine1: TppLine;
    ppLabel8: TppLabel;
    ppDBText8: TppDBText;
    ppDBText6: TppDBText;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppDBText7: TppDBText;
    ppLabel9: TppLabel;
    ppDBCalc2: TppDBCalc;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLabel10: TppLabel;
    ppDBText9: TppDBText;
    ppAppRepresentante: TppDBPipeline;
    dsApp: TDataSource;
    ppDBText10: TppDBText;
    procedure FormCreate(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cmbPessoaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PrintBeforeNewPage(Sender: TObject; Pagina: Integer);
    procedure PrintNewPage(Sender: TObject; Pagina: Integer);
    procedure FormShow(Sender: TObject);
    procedure ActPreviewExecute(Sender: TObject);
    procedure edDtInicialEnter(Sender: TObject);
    procedure edDtInicialExit(Sender: TObject);
    procedure cmbTipoRelEnter(Sender: TObject);
    procedure cmbTipoRelExit(Sender: TObject);
  private
    { Private declarations }
    Pessoa_FJ: Integer;
    NDocto: String[20];

    procedure Conferente ;
    procedure Sintetico  ;

  public
    { Public declarations }
  end;

var
  FRelEntradas: TFRelEntradas;
  Linha, Pagina: Integer;
  tt_qtdade, tt_custo, tt_ipi, tt_Frete: Extended;
  Total_Nota, BaseCalculo, Isento, IcmCred, Outras, Ipi, Desconto: Extended ;
  Cab_Resumo: Boolean ; 

implementation

uses Relatorios_DM, Usuarios_DM, Application_DM, Funcoes;

{$R *.DFM}

procedure TFRelEntradas.FormCreate(Sender: TObject);
begin
  // Se o Usuário for Supervisor
   If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, Self.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);

end;

procedure TFRelEntradas.ActFecharExecute(Sender: TObject);
begin
  Close;
end;

procedure TFRelEntradas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  //
  dsFornecedores.DataSet.Close;
  //
  Action := caFree;
  FRelEntradas := Nil;
end;

procedure TFRelEntradas.cmbPessoaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFRelEntradas.PrintBeforeNewPage(Sender: TObject; Pagina: Integer);
begin
  // Rodapé...
  Print.ImpF(63, 01, Replicate('-', 80), [Normal]);
  Print.ImpF(64, 01, dmapp.QryParceiroPARC_TEXTO_RELATORIO.AsString, [comp17,italico]);
  Print.ImpF(64, 74, 'Pag. : ' + FormatFloat('0000', Pagina), [Comp17]);
end;

procedure TFRelEntradas.PrintNewPage(Sender: TObject; Pagina: Integer);
begin
  // Cabeçalho...
  Print.ImpF(01, 01, Replicate('-', 80), [Normal]);
  Print.ImpF(02, 01, DMApp.Nome, [Normal, Negrito]);
  Print.ImpF(02, 55, 'Data : '+ DateTimeToStr(now()), [Normal]);
  Print.ImpF(03, 01, Print.TitulodoRelatorio, [Normal]);
  Print.ImpF(04, 01, Replicate('-', 80), [Normal]);
                    //....5...10...15...20...25...30...35...40...45...50...55...60...65...70...75...80...85...90...95...00...05...10...15...20...25...30...35.
  If cmbTipoRel.Text <> 'Conferente'
  then begin
       if cmbTipoRel.ItemIndex <> 03
       then begin
            Print.ImpF(05, 01, '     No. Docto   Codigo Fornecedor                           Data NF.   Data Ent. Serie', [Comp17, Negrito]);
            Print.ImpF(06, 01, '-------------- -------- ----------------------------------- ---------- ---------- -----', [Comp17]);
       end;

       //
       If cmbTipoRel.ItemIndex = 0
       Then Begin
            Print.ImpF(07, 01, '    Codigo Produto                                          Qtdade Prc. Custo  Tt. Custo        IPI    Tt. IPI      Frete    Venda    %', [Comp17]);
            Print.ImpF(08, 01, '---------- -------------------------------------------- ---------- ---------- ---------- ---------- ---------- ---------- -------- ----', [comp17]);
       End;
       //
       If cmbTipoRel.ItemIndex = 1
       Then Begin
            Print.ImpF(07, 01, '        Codigo Produto                                          Qtdade     Prc. Custo          Venda         % Dif.', [Comp17]);
            Print.ImpF(08, 01, '-------------- -------------------------------------------- ---------- -------------- -------------- --------------', [comp17]);
       End;

       //
       linha  := 10;

       If cmbTipoRel.ItemIndex = 3
       Then Begin
            if not Cab_Resumo
            then begin
                 Print.ImpF(05, 01, 'Data NF.     Codigo Fornecedor                          Documento', [Comp17]);
                 Print.ImpF(06, 01, '---------- -------- ----------------------------------- --------------', [comp17]);
            end
            else begin
                 Print.ImpF(05, 01, 'Codigo          Fornecedor                                             Qtdade      Custo', [Comp17]);
                 Print.ImpF(06, 01, '--------------- -------------------------------------------------- ---------- ----------', [comp17]);
            end;
            //
            linha  := 7;
       End;

  end
  else begin
       Print.ImpF(05, 01, '     No. Docto   Codigo Fornecedor                           Data NF.   Oper Base Calc.             Isento       Icm Cred          Total', [Comp17, Negrito]);
       Print.ImpF(06, 01, '-------------- -------- ----------------------------------- ---------- ----- -------------- -------------- -------------- --------------', [Comp17]);
       //
       linha  := 07;
  end;
end;

procedure TFRelEntradas.FormShow(Sender: TObject);
begin
  //
  IniciaComponentes(Self as TForm);
  //
  Try
    dsFornecedores.DataSet.Open;
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
  //
  cmbTipoRel.ItemIndex := 0;
end;

procedure TFRelEntradas.ActPreviewExecute(Sender: TObject);
Var
   Cont: Integer;
   Filtro, FiltroRpt, Docto: String;
begin
  filtro := '';
  FiltroRpt := '';
  if cmbFornecedor.text <> '' then
  begin
    FiltroRpt := FiltroRpt + ' Fornecedor: '+cmbFornecedor.text;
    filtro := ' COD_FORN = '+inttostr(cmbFornecedor.LookupKeyValue);
  end;

  if edNDocto.text <> '' then
  begin
    if filtro <> '' then
      filtro := filtro + ' and ';

    filtro := filtro + ' NUM_NF = '''+edNDocto.text+'''';
    FiltroRpt := FiltroRpt + ' Docto: '+edNDocto.text;
  end;



  Cab_Resumo  := False ;
  BaseCalculo := 0;
  Isento      := 0;
  IcmCred     := 0;
  Outras      := 0;
  Ipi         := 0;
  Desconto    := 0;
  Total_Nota  := 0;
  tt_Frete    := 0;

  lblStatus.caption := 'Selecionando Dados' ;
  lblStatus.Visible := True ;
  lblStatus.Refresh ;

  //
  Pessoa_FJ := 0;
  NDocto := '';

  //
  Print.TitulodoRelatorio := 'Relatorio de Entradas de Produtos';
  //
  DMRelatorios.Entradas.Close ;
  DMRelatorios.Entradas.Sql.Clear ;
  DMRelatorios.Entradas.Sql.Add ( ' SELECT * FROM VER_EST_ENTRADAS_CONFERENTE  ');
  DMRelatorios.Entradas.Sql.Add ( ' ( :CNPJ, :DT_INICIAL, :DT_FINAL ) ');

  DMRelatorios.Entradas.ParamByName('CNPJ').asString     := DMApp.Cnpj;
  //
  If edDtInicial.Text <> '  /  /    ' Then
     DMRelatorios.Entradas.ParamByName('DT_INICIAL').asDate := edDtInicial.Date
  Else
     DMRelatorios.Entradas.ParamByName('DT_INICIAL').asDate := StrToDate('01/01/0001');
  //
  If edDtFinal.Text <> '  /  /    ' Then
     DMRelatorios.Entradas.ParamByName('DT_FINAL').asDate := edDtFinal.Date
  Else
     DMRelatorios.Entradas.ParamByName('DT_FINAL').asDate := StrToDate('31/12/9999');

  Cont := 0;

  //
  If Trim(cmbFornecedor.Text) <> ''
  Then Begin
       DMRelatorios.Entradas.Params.CreateParam ( FtInteger, 'PESSOA_FJ', PtInput );

       DMRelatorios.Entradas.SQL.Add (' WHERE PESSOA_FJ = :PESSOA_FJ ');

       DMRelatorios.Entradas.ParamByName('PESSOA_FJ').asInteger := cmbFornecedor.LookupKeyValue;

       Cont := 1;
  End;

  If Trim(edNDocto.Text) <> ''
  Then Begin
       If Cont = 0
       then begin
            DMRelatorios.Entradas.Params.CreateParam ( FtString, 'NDOCTO', PtInput );

            DMRelatorios.Entradas.SQL.Add (' WHERE NDOCTO = :NDOCTO ');

            DMRelatorios.Entradas.ParamByName('NDOCTO').asString      := edNDocto.Text;
       end
       else begin
            DMRelatorios.Entradas.Params.CreateParam ( FtString, 'NDOCTO', PtInput );

            DMRelatorios.Entradas.SQL.Add (' AND NDOCTO = :NDOCTO ');

            DMRelatorios.Entradas.ParamByName('NDOCTO').asString      := edNDocto.Text;
       end;

       Cont := Cont + 1;
  End;

  if cknatureza.Checked
  then
      DMRelatorios.Entradas.SQL.Add ( ' ORDER BY NATUREZA, NDOCTO, NOME_RAZAO, PESSOA_FJ ' )
  else
      DMRelatorios.Entradas.SQL.Add ( ' ORDER BY NDOCTO, NOME_RAZAO, PESSOA_FJ ' );

  //

  If ( cmbTipoRel.Text <> 'Conferente' ) and ( cmbTipoRel.Text <> 'Sintético' )
  Then Begin
       DMRelatorios.Entradas.Open;
       DMRelatorios.Entradas.FetchAll ;
       DMRelatorios.EntradasItens.Open;
       DMRelatorios.EntradasFat.Open;

       //
       If DMRelatorios.Entradas.RecordCount = 0
       Then Begin
            lblStatus.Visible := False ;
            ShowMessage('Não há registro a imprimir para o período, verifique !');
            //
            DMRelatorios.Entradas.Close;
            //
            edDtInicial.SetFocus;
            Exit;
       End
       Else Begin
            lblStatus.Visible := False ;
            DMRelatorios.Entradas.FetchAll ;

            Anda.Max :=  DMRelatorios.Entradas.RecordCount;

            Anda.Position := 0;
            Anda.Visible  := TRUE ;
       End;
       //
       Print.Abrir;
       //
       DMRelatorios.Entradas.First;
       While Not DMRelatorios.Entradas.Eof Do
       Begin
          //
          tt_qtdade := 0;
          tt_custo  := 0;
          tt_ipi    := 0;
          tt_Frete  := 0;

          if (( DMRelatorios.EntradasNDOCTO.Text = '0' ) and ( DMRelatorios.EntradasNDOCTOINT.Text <> '0' ))
          then
              NDocto := DMRelatorios.EntradasNDOCTOINT.Text
          Else
              NDocto := DMRelatorios.EntradasNDOCTO.Text ;

          //
          Print.ImpF(Linha, 01, Format('%14s %8s %-35s %10s %10s %-5s',
                                       [Copy(NDocto, 1, 14),
                                        Copy(DMRelatorios.EntradasPESSOA_FJ.Text, 1, 8),
                                        Copy(DMRelatorios.EntradasNOME_RAZAO.Text, 1, 35),
                                        DMRelatorios.EntradasDATA_NF.Text,
                                        DMRelatorios.EntradasDATA_ENT.Text,
                                        DMRelatorios.EntradasSERIE_NF.Text]), [Comp17]);
          //
          Linha := Linha + 2;
          //

          //VND = VENDAS
          IF ( DMRelatorios.EntradasSERIE_NF.Text <> 'VND' )
          THEN BEGIN
             DMRelatorios.EntradasItens.First;

             While Not DMRelatorios.EntradasItens.Eof Do
                Begin
                  //
                  If cmbTipoRel.ItemIndex = 0
                  Then Begin
                       If CkCusto.Checked
                       then begin
                            Print.ImpF(Linha, 01, Format('%10s %-44s %10s %10s %10s %10s %10s %10s',
                                                  [DMRelatorios.EntradasItensPRODUTO.Text,
                                                   DMRelatorios.EntradasItensNOME_PRODUTO.Text,
                                                   DMRelatorios.EntradasItensQUANTIDADE.Text,
                                                   DMRelatorios.EntradasItensPRC_UNITARIO.Text,
                                                   DMRelatorios.EntradasItensCUSTO_TOTAL.Text,
                                                   DMRelatorios.EntradasItensIPI_UNITARIO.Text,
                                                   DMRelatorios.EntradasItensIPI_TOTAL.Text,
                                                   DMRelatorios.EntradasItensFRETE.Text
                                                   ]), [Comp17]);
                       end
                       else begin
                            Print.ImpF(Linha, 01, Format('%10s %-44s %10s %10s %10s %10s %10s %10s %8s %4s',
                                                  [DMRelatorios.EntradasItensPRODUTO.Text,
                                                   DMRelatorios.EntradasItensNOME_PRODUTO.Text,
                                                   DMRelatorios.EntradasItensQUANTIDADE.Text,
                                                   DMRelatorios.EntradasItensCustoUnitario.Text,
                                                   DMRelatorios.EntradasItensCUSTO_TOTAL.Text,
                                                   DMRelatorios.EntradasItensIPI_UNITARIO.Text,
                                                   DMRelatorios.EntradasItensIPI_TOTAL.Text,
                                                   DMRelatorios.EntradasItensFRETE.Text,
                                                   formatfloat('##0.00', DMRelatorios.EntradasItensPRC_VENDA.value),
                                                   formatfloat('##0.0', DMRelatorios.EntradasItensPERC_DIF.value)
                                                   ]), [Comp17]);
                       end;
                  end;

                  If cmbTipoRel.ItemIndex = 1 Then
                     Print.ImpF(Linha, 01, Format('%14s %-45s %10s %14s %14s %14s',
                                                  [DMRelatorios.EntradasItensPRODUTO.Text,
                                                   DMRelatorios.EntradasItensNOME_PRODUTO.Text,
                                                   DMRelatorios.EntradasItensQUANTIDADE.Text,
                                                   DMRelatorios.EntradasItensCUSTO_TOTAL.Text,
                                                   DMRelatorios.EntradasItensPRC_VENDA.Text,
                                                   DMRelatorios.EntradasItensPERC_DIF.Text]), [Comp17]);
                  //
                  Inc(Linha);

                  //
                  If Linha >= 64
                  Then
                      Print.Novapagina;

                  //
                  tt_qtdade := tt_qtdade + DMRelatorios.EntradasItensQUANTIDADE.Value;
                  tt_custo  := tt_custo  + DMRelatorios.EntradasItensCUSTO_TOTAL.Value;
                  tt_ipi    := tt_ipi    + DMRelatorios.EntradasItensIPI_TOTAL.Value;
                  tt_Frete  := tt_Frete  + DMRelatorios.EntradasItensFRETE.Value;

                  //
                  DMRelatorios.EntradasItens.Next;
             End;
          END
          ELSE BEGIN
               //LISTANDO VENDAS
               DMRelatorios.Fat_VendasItens.Close ;

               DMRelatorios.Fat_VendasItens.ParamByName('CNPJ').Value   := DMApp.Cnpj;
               DMRelatorios.Fat_VendasItens.ParamByName('CODIGO').Value := DMRelatorios.EntradasNDOCTOINT.Value ;

               DMRelatorios.Fat_VendasItens.Open;
               DMRelatorios.Fat_VendasItens.First;

               DMRelatorios.Fat_VendasItens.First;

               While Not DMRelatorios.Fat_VendasItens.Eof Do
               Begin
                  //
                  If cmbTipoRel.ItemIndex = 0
                  Then Begin
                       If CkCusto.Checked
                       then begin
                            Print.ImpF(Linha, 01, Format('%10s %-44s %10s %10s %10s %10s %10s %10s',
                                                  [DMRelatorios.Fat_VendasItensPRODUTO.Text,
                                                   DMRelatorios.Fat_VendasItensNOME_PRODUTO.Text,
                                                   DMRelatorios.Fat_VendasItensQUANTIDADE.Text,
                                                   DMRelatorios.Fat_VendasItensPRC_UNITARIO.Text,
                                                   DMRelatorios.Fat_VendasItensCUSTO_TOTAL.Text,
                                                   '0,00',
                                                   '0,00',
                                                   '0,00'
                                                   ]), [Comp17]);
                       end
                       else begin
                            Print.ImpF(Linha, 01, Format('%10s %-44s %10s %10s %10s %10s %10s %10s %8s %4s',
                                                  [DMRelatorios.Fat_VendasItensPRODUTO.Text,
                                                   DMRelatorios.Fat_VendasItensNOME_PRODUTO.Text,
                                                   DMRelatorios.Fat_VendasItensQUANTIDADE.Text,
                                                   DMRelatorios.Fat_VendasItensPRC_CUSTO.Text,
                                                   DMRelatorios.Fat_VendasItensCUSTO_TOTAL.Text,
                                                   '0,00',
                                                   '0,00',
                                                   '0,00',
                                                   formatfloat('##0.00', DMRelatorios.Fat_VendasItensPRC_UNITARIO.value),
                                                   formatfloat('##0.0', 0)
                                                   ]), [Comp17]);
                       end;
                  end;

                  If cmbTipoRel.ItemIndex = 1 Then
                     Print.ImpF(Linha, 01, Format('%14s %-45s %10s %14s %14s %14s',
                                                  [DMRelatorios.Fat_VendasItensPRODUTO.Text,
                                                   DMRelatorios.Fat_VendasItensNOME_PRODUTO.Text,
                                                   DMRelatorios.Fat_VendasItensQUANTIDADE.Text,
                                                   DMRelatorios.Fat_VendasItensCUSTO_TOTAL.Text,
                                                   DMRelatorios.Fat_VendasItensPRC_UNITARIO.Text,
                                                   '0,00']), [Comp17]);
                  //
                  Inc(Linha);

                  //
                  If Linha >= 64
                  Then
                      Print.Novapagina;

                  //
                  tt_qtdade := tt_qtdade + DMRelatorios.Fat_VendasItensQUANTIDADE.Value;
                  tt_custo  := tt_custo  + DMRelatorios.Fat_VendasItensCUSTO_TOTAL.Value;
                  tt_ipi    := tt_ipi    + 0;
                  tt_Frete  := tt_Frete  + 0;

                  //
                  DMRelatorios.Fat_VendasItens.Next;
             End;
          END;
          // Subtotal Nota Produtos
          If cmbTipoRel.ItemIndex = 0 Then
             Begin
               Print.ImpF(Linha    , 01, Format('%56s ---------- %10s ---------- %10s ---------- ', ['', '', '']), [Comp17]);
               Print.ImpF(Linha + 1, 01, Format('%55s %10s %10s %10s %10s %10s %10s', ['', FormatFloat('#,##0.00', tt_qtdade), '', FormatFloat('#,##0.00', tt_custo), '', FormatFloat('#,##0.00', tt_ipi), FormatFloat('#,##0.00', tt_Frete)]), [Comp17]);
             End;
          //
          If cmbTipoRel.ItemIndex = 1 Then
             Begin
               Print.ImpF(Linha    , 01, Format('%60s ---------- --------------', ['']), [Comp17]);
               Print.ImpF(Linha + 1, 01, Format('%60s %10s %14s', ['', FormatFloat('#,##0.00', tt_qtdade), FormatFloat('#,##0.00', tt_custo)]), [Comp17]);
             End;
          //
          Linha := Linha + 2;
          // Totais da Nota de Entrada
          If cmbTipoRel.ItemIndex = 0 Then
             Begin
               Print.ImpF(Linha + 1, 01, Format('   Taxas %14s  Embalagem %14s     Seguro %14s Perc. Icms %14s', [DMRelatorios.EntradasTAXAS.Text       , DMRelatorios.EntradasVLR_EMBALAGEM.Text, DMRelatorios.EntradasVLR_SEGURO.Text, DMRelatorios.EntradasPERC_ICM.Text]), [Comp17]);
               Print.ImpF(Linha + 2, 01, Format('Desconto %14s      Frete %14s  Base Icms %14s  Vlr. Icms %14s', [DMRelatorios.EntradasVLR_DESCONTO.Text, DMRelatorios.EntradasVLR_FRETE.Text    , DMRelatorios.EntradasVLR_BC_ICM.Text, DMRelatorios.EntradasVLR_ICM.Text ]), [Comp17]);
               //
               Linha := Linha + 3;
             End;
          // Parcelas
          If cmbTipoRel.ItemIndex = 0 Then
             Begin
               //
               If DMRelatorios.EntradasFat.RecordCount > 0 Then
                  Begin
                    Print.ImpF(Linha + 1, 01, 'Parcela DT. Vencto        Valor', [Comp17]);
                    Print.ImpF(Linha + 2, 01, '------- ---------- ------------', [Comp17]);
                    //
                    Linha := Linha + 3;
                  End;
               //
               DMRelatorios.EntradasFat.First;
               While Not DMRelatorios.EntradasFat.Eof Do
                     Begin
                       //
                       Print.ImpF(Linha, 01, Format('%-7s %10s %12s', [DMRelatorios.EntradasFatPARCELA.Text, DMRelatorios.EntradasFatDT_VENCTO.Text, DMRelatorios.EntradasFatVALOR.Text]), [Comp17]);
                       //
                       Inc(Linha);
                       //
                       DMRelatorios.EntradasFat.Next;
                     End;
             End;
          //
          Anda.Position := Anda.Position + 1;
          DMRelatorios.Entradas.Next;
          //
          Inc(Linha);
          //
          If Linha >= 63 Then
             Print.Novapagina;
       End;
       //
       DMRelatorios.EntradasItens.Close;
       DMRelatorios.EntradasFat.Close;
       DMRelatorios.Entradas.Close;
       //
       Anda.Visible:= False;
       Print.Fechar;
  end
  else begin
       if ( cmbTipoRel.Text = 'Conferente' )
       then begin
            //Conferente
            Conferente ;
       end
       else
       begin
         with dmRelatorios do
         begin
            qryRelEntProd.close;
             qryRelEntProd.sql.text := ' select * from PCD_REL_ENT_PRODUTOS(:cnpj,:data1,:data2)';
            if filtro <> '' then
             qryRelEntProd.sql.add('where '+filtro);

            qryRelEntProd.sql.add( ' order by num_nf');
            qryRelEntProd.parambyname('cnpj').value := dmapp.cnpj;
            qryRelEntProd.parambyname('data1').asdate := edDtInicial.date;
            qryRelEntProd.parambyname('data2').asdate := edDtFinal.date;
            qryRelEntProd.open;

            //resumo ao final do rel

            qryRelResEnt.close;
            qryRelResEnt.sql.text := ' select produto, sum(qtde) qtde, sum(total_item) total from PCD_REL_ENT_PRODUTOS(:cnpj,:data1,:data2)';
            if filtro <> '' then
              qryRelResEnt.sql.add(' where '+filtro);
            qryRelResEnt.sql.add(' group by produto order by produto ');

            qryRelResEnt.parambyname('cnpj').value := dmapp.cnpj;
            qryRelResEnt.parambyname('data1').asdate := edDtInicial.date;
            qryRelResEnt.parambyname('data2').asdate := edDtFinal.date;
            qryRelResEnt.open;

            lblEmpresa.text := dmapp.nome;
            lblFiltroSint.text := FiltroRpt;
            rptRelSintetico.print;
         end;
       end;
  end;
end;

procedure TFRelEntradas.Conferente ;
          Function NomeNatureza( Nat: Integer): String ;
          begin
               With DMRelatorios do
               begin
                 Geral.close ;
                 Geral.sql.text := ' select nome from est_natureza where cnpj = :cnpj and codigo = :nat ';
                 Geral.parambyname('CNPJ').asstring  := DmApp.Cnpj ;
                 Geral.parambyname('NAT' ).asInteger := Nat ;
                 Geral.open ;

                 If Geral.fields[0].isnull then
                   result := ''
                 else
                   result := Geral.fields[0].value;
               end;
          end;

Var
   Total_notas, Total_Produtos: Real;
   Ultima_Natureza: Integer;

   BaseCalculo_Nat, Isento_Nat, IcmCred_Nat, Outras_Nat, Ipi_Nat, Desconto_Nat,
   Total_Nota_Nat, Total_Produtos_Nat, Total_notas_Nat, Total_Produto_Nat : Real ;

begin
       //RELATORIO CONFERENTE
       DMRelatorios.Entradas.open;
       DMRelatorios.Entradas.FetchAll ;
       If DMRelatorios.Entradas.RecordCount = 0 Then
       Begin
         lblStatus.Visible := False ;
         ShowMessage('Não há registro a imprimir para o período, verifique !');
         DMRelatorios.Entradas.Close;
            //
         edDtInicial.SetFocus;
         Exit;
       End
       Else
       Begin
         lblStatus.Visible := False ;
         Anda.Max :=  DMRelatorios.Entradas.RecordCount;

         Anda.Position := 0;
         Anda.Visible  := TRUE ;
       End;

       //
       Print.Abrir;

       Total_notas := 0;
       Total_Produtos := 0;
       Ultima_Natureza := 0;

       BaseCalculo_Nat:=0;
       Isento_Nat:=0;
       IcmCred_Nat:=0;
       Outras_Nat:=0;
       Ipi_Nat:=0;
       Desconto_Nat:=0;
       Total_Nota_Nat:=0;
       Total_Produtos_Nat:=0;
       Total_notas_Nat:=0;
       Total_Produto_Nat:=0;


       if cknatureza.Checked then
       begin
            //
            DMRelatorios.Entradas.First;
            While Not DMRelatorios.Entradas.Eof Do
            Begin
                 if Ultima_Natureza <> DMRelatorios.EntradasNATUREZA.Value
                 then begin
                      if Ultima_Natureza <> 0
                      then begin
                           Print.ImpF(LINHA, 01, Replicate('-', 80), [Normal]);
                           INC(LINHA );

                           //Imprime o Rodape
                           Print.ImpF(Linha , 01, 'BASE CALCULO:' , [Comp17]);
                           Print.ImpVal(Linha , 20, '###,###,##0.00', BaseCalculo_Nat , [Comp17]);

                           //ISENTO
                           Print.ImpF(Linha , 35, 'ISENTO......:' , [Comp17]);
                           Print.ImpVal(Linha , 55, '###,###,##0.00', Isento_Nat , [Comp17]);
                           Inc( Linha );
                           //
                           If Linha >= 63 Then Print.Novapagina;

                           //CREDITO
                           Print.ImpF(Linha , 01, 'ICM CREDITO.:' , [Comp17]);
                           Print.ImpVal(Linha , 20, '###,###,##0.00', IcmCred_Nat, [Comp17]);

                           //OUTRAS
                           Print.ImpF(Linha , 35, 'OUTRAS......:' , [Comp17]);
                           Print.ImpVal(Linha , 55, '###,###,##0.00', Outras_Nat, [Comp17]);
                           Inc( Linha );
                           //
                           If Linha >= 63 Then Print.Novapagina;

                           //IPI
                           Print.ImpF(Linha , 01, 'IPI.........:' , [Comp17]);
                           Print.ImpVal(Linha , 20, '###,###,##0.00', Ipi_Nat, [Comp17]);

                           //DESCONTO
                           Print.ImpF(Linha , 35, 'DESCONTO....:' , [Comp17]);
                           Print.ImpVal(Linha , 55, '###,###,##0.00', DESCONTO_Nat, [Comp17]);
                           Inc( Linha );
                           //
                           If Linha >= 63 Then Print.Novapagina;

                           //TOTAL GERAL
                           Print.ImpF(Linha , 01, 'TOTAL GERAL.:' , [Comp17]);
                           Print.ImpVal(Linha , 20, '###,###,##0.00', TOTAL_PRODUTOS_Nat , [Comp17]);

                           //TOTAL GERAL DE NOTAS
                           Print.ImpF(Linha , 35, 'TOTAL NOTAS.:' , [Comp17]);
                           Print.ImpVal(Linha , 55, '###,###,##0.00', Total_notas_Nat , [Comp17]);
                           Inc( Linha );
                           If Linha >= 63 Then Print.Novapagina;
                           Inc( Linha );

                           BaseCalculo_Nat:=0;
                           Isento_Nat:=0;
                           IcmCred_Nat:=0;
                           Outras_Nat:=0;
                           Ipi_Nat:=0;
                           Desconto_Nat:=0;
                           Total_Nota_Nat:=0;
                           Total_Produtos_Nat:=0;
                           Total_notas_Nat:=0;
                           Total_Produto_Nat:=0;

                      end;

                      Print.ImpF(Linha, 01, DMRelatorios.EntradasNATUREZA.text + ' - ' + NomeNatureza(DMRelatorios.EntradasNATUREZA.value), [Comp17, negrito]);

                      Ultima_Natureza := DMRelatorios.EntradasNATUREZA.value ;
                      //
                      Linha := Linha + 1;
                 end;

                 BaseCalculo := BaseCalculo + DMRelatorios.EntradasVLR_BC_ICM.Value ;
                 Isento      := Isento      + 0 ;
                 IcmCred     := IcmCred     + DMRelatorios.EntradasVLR_ICM.Value ;
                 Outras      := Outras      + 0 ;
                 Ipi         := Ipi         + DMRelatorios.EntradasVLR_IPI.Value ;
                 Desconto    := Desconto    + DMRelatorios.EntradasVLR_DESCONTO.Value;
                 Total_Nota  := Total_Nota  + DMRelatorios.EntradasVLR_TOTAL_NF.Value;
                 Total_Produtos := Total_Produtos + DMRelatorios.EntradasVLR_PRODUTOS.Value;
                 Total_notas := Total_notas + DMRelatorios.EntradasVLR_TOTAL_NF.Value ;

                 BaseCalculo_Nat := BaseCalculo_Nat + DMRelatorios.EntradasVLR_BC_ICM.Value ;
                 Isento_Nat      := Isento_Nat      + 0 ;
                 IcmCred_Nat     := IcmCred_Nat     + DMRelatorios.EntradasVLR_ICM.Value ;
                 Outras_Nat      := Outras_Nat      + 0 ;
                 Ipi_Nat         := Ipi_Nat         + DMRelatorios.EntradasVLR_IPI.Value ;
                 Desconto_Nat    := Desconto_Nat    + DMRelatorios.EntradasVLR_DESCONTO.Value;
                 Total_Nota_Nat  := Total_Nota_Nat  + DMRelatorios.EntradasVLR_TOTAL_NF.Value;
                 Total_Produtos_Nat := Total_Produto_Nat + DMRelatorios.EntradasVLR_PRODUTOS.Value;
                 Total_notas_Nat := Total_notas_Nat + DMRelatorios.EntradasVLR_TOTAL_NF.Value ;

                 //
                 Print.ImpF(Linha, 01, Format('%14s %8s %-35s %10s %5s %14s %14s %14s %14s',
                                       [Copy(DMRelatorios.EntradasNDOCTO.Text, 1, 14),
                                        Copy(DMRelatorios.EntradasPESSOA_FJ.Text, 1, 8),
                                        Copy(DMRelatorios.EntradasNOME_RAZAO.Text, 1, 35),
                                        DMRelatorios.EntradasDATA_ENT.Text,
                                        DMRelatorios.EntradasNATUREZA.Text,
                                        DMRelatorios.EntradasVLR_BC_ICM.Text,
                                        '0,00',
                                        DMRelatorios.EntradasVLR_ICM.Text,
                                        DMRelatorios.EntradasVLR_TOTAL_NF.text
                                        ]), [Comp17]);
                 //
                 Linha := Linha + 1;

                 //
                 Anda.Position := Anda.Position + 1;

                 DMRelatorios.Entradas.Next;

                 if DMRelatorios.Entradas.eof
                 then begin
                      Print.ImpF(LINHA, 01, Replicate('-', 80), [Normal]);
                      INC(LINHA );

                      //Imprime o Rodape
                      Print.ImpF(Linha , 01, 'BASE CALCULO:' , [Comp17]);
                      Print.ImpVal(Linha , 20, '###,###,##0.00', BaseCalculo_Nat , [Comp17]);

                      //ISENTO
                      Print.ImpF(Linha , 35, 'ISENTO......:' , [Comp17]);
                      Print.ImpVal(Linha , 55, '###,###,##0.00', Isento_Nat , [Comp17]);
                      Inc( Linha );
                      //
                      If Linha >= 63 Then Print.Novapagina;

                      //CREDITO
                      Print.ImpF(Linha , 01, 'ICM CREDITO.:' , [Comp17]);
                      Print.ImpVal(Linha , 20, '###,###,##0.00', IcmCred_Nat, [Comp17]);

                      //OUTRAS
                      Print.ImpF(Linha , 35, 'OUTRAS......:' , [Comp17]);
                      Print.ImpVal(Linha , 55, '###,###,##0.00', Outras_Nat, [Comp17]);
                      Inc( Linha );
                      //
                      If Linha >= 63 Then Print.Novapagina;

                      //IPI
                      Print.ImpF(Linha , 01, 'IPI.........:' , [Comp17]);
                      Print.ImpVal(Linha , 20, '###,###,##0.00', Ipi_Nat, [Comp17]);

                      //DESCONTO
                      Print.ImpF(Linha , 35, 'DESCONTO....:' , [Comp17]);
                      Print.ImpVal(Linha , 55, '###,###,##0.00', DESCONTO_Nat, [Comp17]);
                      Inc( Linha );
                      //
                      If Linha >= 63 Then Print.Novapagina;

                      //TOTAL GERAL
                      Print.ImpF(Linha , 01, 'TOTAL GERAL.:' , [Comp17]);
                      Print.ImpVal(Linha , 20, '###,###,##0.00', TOTAL_PRODUTOS_Nat , [Comp17]);

                      //TOTAL GERAL DE NOTAS
                      Print.ImpF(Linha , 35, 'TOTAL NOTAS.:' , [Comp17]);
                      Print.ImpVal(Linha , 55, '###,###,##0.00', Total_notas_Nat , [Comp17]);
                      Inc( Linha );
                      If Linha >= 63 Then Print.Novapagina;
                      Inc( Linha );
                 end;

                 //
                 If Linha >= 64
                 Then
                     Print.Novapagina;
            End;
       end
       else begin
            //
            DMRelatorios.Entradas.First;
            While Not DMRelatorios.Entradas.Eof Do
            Begin
                 BaseCalculo := BaseCalculo + DMRelatorios.EntradasVLR_BC_ICM.Value ;
                 Isento      := Isento      + 0 ;
                 IcmCred     := IcmCred     + DMRelatorios.EntradasVLR_ICM.Value ;
                 Outras      := Outras      + 0 ;
                 Ipi         := Ipi         + DMRelatorios.EntradasVLR_IPI.Value ;
                 Desconto    := Desconto    + DMRelatorios.EntradasVLR_DESCONTO.Value;
                 Total_Nota  := Total_Nota  + DMRelatorios.EntradasVLR_TOTAL_NF.Value;
                 Total_Produtos := Total_Produtos + DMRelatorios.EntradasVLR_PRODUTOS.Value;

                 if (( DMRelatorios.EntradasNDOCTO.Text = '0' ) and ( DMRelatorios.EntradasNDOCTOINT.Text <> '0' ))
                 then
                     NDocto := DMRelatorios.EntradasNDOCTOINT.Text
                 Else
                     NDocto := DMRelatorios.EntradasNDOCTO.Text ;

                 //
                 Print.ImpF(Linha, 01, Format('%14s %8s %-35s %10s %5s %14s %14s %14s %14s',
                                       [Copy(NDocto, 1, 14),
                                        Copy(DMRelatorios.EntradasPESSOA_FJ.Text, 1, 8),
                                        Copy(DMRelatorios.EntradasNOME_RAZAO.Text, 1, 35),
                                        DMRelatorios.EntradasDATA_ENT.Text,
                                        DMRelatorios.EntradasNATUREZA.Text,
                                        DMRelatorios.EntradasVLR_BC_ICM.Text,
                                        '0,00',
                                        DMRelatorios.EntradasVLR_ICM.Text,
                                        DMRelatorios.EntradasVLR_TOTAL_NF.text
                                        ]), [Comp17]);
                 //
                 Linha := Linha + 1;

                 Total_notas := Total_notas + DMRelatorios.EntradasVLR_TOTAL_NF.Value ;
                 //
                 Anda.Position := Anda.Position + 1;

                 DMRelatorios.Entradas.Next;

                 //
                 If Linha >= 64
                 Then
                     Print.Novapagina;
            End;
       end;
       //
       DMRelatorios.EntradasItens.Close;
       DMRelatorios.EntradasFat.Close;
       DMRelatorios.Entradas.Close;
       //
       Anda.Visible:= False;

       Print.ImpF(LINHA, 01, Replicate('-', 80), [Normal]);
       INC(LINHA );

       //Imprime o Rodape
       Print.ImpF(Linha , 01, 'BASE CALCULO:' , [Comp17]);
       Print.ImpVal(Linha , 20, '###,###,##0.00', BaseCalculo , [Comp17]);

       //ISENTO
       Print.ImpF(Linha , 35, 'ISENTO......:' , [Comp17]);
       Print.ImpVal(Linha , 55, '###,###,##0.00', Isento , [Comp17]);
       Inc( Linha );
       //
       If Linha >= 63 Then Print.Novapagina;

       //CREDITO
       Print.ImpF(Linha , 01, 'ICM CREDITO.:' , [Comp17]);
       Print.ImpVal(Linha , 20, '###,###,##0.00', IcmCred, [Comp17]);

       //OUTRAS
       Print.ImpF(Linha , 35, 'OUTRAS......:' , [Comp17]);
       Print.ImpVal(Linha , 55, '###,###,##0.00', Outras, [Comp17]);
       Inc( Linha );
       //
       If Linha >= 63 Then Print.Novapagina;

       //IPI
       Print.ImpF(Linha , 01, 'IPI.........:' , [Comp17]);
       Print.ImpVal(Linha , 20, '###,###,##0.00', Ipi, [Comp17]);

       //DESCONTO
       Print.ImpF(Linha , 35, 'DESCONTO....:' , [Comp17]);
       Print.ImpVal(Linha , 55, '###,###,##0.00', DESCONTO, [Comp17]);
       Inc( Linha );
       //
       If Linha >= 63 Then Print.Novapagina;

       //TOTAL GERAL
       Print.ImpF(Linha , 01, 'TOTAL GERAL.:' , [Comp17]);
       Print.ImpVal(Linha , 20, '###,###,##0.00', TOTAL_PRODUTOS , [Comp17]);

       //TOTAL GERAL DE NOTAS
       Print.ImpF(Linha , 35, 'TOTAL NOTAS.:' , [Comp17]);
       Print.ImpVal(Linha , 55, '###,###,##0.00', Total_notas , [Comp17]);
       Inc( Linha );

       //
       If Linha >= 63 Then Print.Novapagina;

       Print.ImpF(LINHA, 01, Replicate('-', 80), [Normal]);

       Print.Fechar;
end;

procedure TFRelEntradas.Sintetico ;
Var
   ULTCOD, NOME: STRING;
   SOMAQUANTIDADE, SOMACUSTO  : REAL;
begin
  with dmRelatorios do
  begin
    qryRelEntProd.close;
    qryRelResEnt.close;
    qryRelEntProd.parambyname('cnpj').value := dmapp.cnpj;
    qryRelEntProd.parambyname('data1').asdate := edDtInicial.date;
    qryRelEntProd.parambyname('data2').asdate := edDtFinal.date;
    qryRelEntProd.open;

    //resumo ao final do rel

    qryRelResEnt.parambyname('cnpj').value := dmapp.cnpj;
    qryRelResEnt.parambyname('data1').asdate := edDtInicial.date;
    qryRelResEnt.parambyname('data2').asdate := edDtFinal.date;
    qryRelResEnt.open;

    lblEmpresa.text := dmapp.nome;
    rptRelSintetico.print;
  end;

     If Not CkTotais.Checked
     then begin
       //RELATORIO CONFERENTE
       DMRelatorios.Entradas.Open;

       DMRelatorios.Entradas.FetchAll ;

       //
       If DMRelatorios.Entradas.RecordCount = 0
       Then Begin
            lblStatus.Visible := False ;

            ShowMessage('Não há registro a imprimir para o período, verifique !');
            //
            DMRelatorios.Entradas.Close;
            //
            edDtInicial.SetFocus;
            Exit;
       End
       Else Begin
            lblStatus.Visible := False ;

            Anda.Max :=  DMRelatorios.Entradas.RecordCount;

            Anda.Position := 0;
            Anda.Visible  := TRUE ;
       End;

       //
       Print.Abrir;
       //
       DMRelatorios.Entradas.First;

       While Not DMRelatorios.Entradas.Eof Do
       Begin
            BaseCalculo := BaseCalculo + DMRelatorios.EntradasVLR_BC_ICM.Value ;
            Isento      := Isento      + 0 ;
            IcmCred     := IcmCred     + 0 ;
            Outras      := Outras      + 0 ;
            Ipi         := Ipi         + DMRelatorios.EntradasVLR_IPI.Value ;
            Desconto    := Desconto    + DMRelatorios.EntradasVLR_DESCONTO.Value;
            Total_Nota  := Total_Nota  + DMRelatorios.EntradasVLR_TOTAL_NF.Value;

            //
            Print.ImpF(Linha, 01, Format('%10s %8s %-35s %14s',
                                       [
                                        DMRelatorios.EntradasDATA_ENT.Text,
                                        Copy(DMRelatorios.EntradasPESSOA_FJ.Text, 1, 8),
                                        Copy(DMRelatorios.EntradasNOME_RAZAO.Text, 1, 35),
                                        Copy(DMRelatorios.EntradasNDOCTO.Text, 1, 14)
                                        ]), [Comp17]);
            //
            Linha := Linha + 1;

            //
            Anda.Position := Anda.Position + 1;

            //VERIFICANDO SE É ENTRADA OU SAIDA
            IF ( DMRelatorios.EntradasSERIE_NF.VALUE <> 'VND' )
            THEN BEGIN
                 //Produtos
                 DMRelatorios.EntradasItens.Close ;
                 DMRelatorios.EntradasItens.Open  ;

                 DMRelatorios.EntradasItens.First;

                 DMRelatorios.EntradasItens.FetchAll ;

                 if DMRelatorios.EntradasItens.RecordCount > 0
                 then
                     Linha := Linha - 1;

                 While Not DMRelatorios.EntradasItens.Eof Do
                 Begin
                      //
                      If CkCusto.Checked
                      then begin
                           Print.ImpF(Linha, 01, Format('%71s %-25s %10s %10s %10s',
                                                  [
                                                   '',
                                                   COPY(DMRelatorios.EntradasItensPRODUTO.Text + '-' + DMRelatorios.EntradasItensNOME_PRODUTO.Text,1,25),
                                                   DMRelatorios.EntradasItensQUANTIDADE.Text,
                                                   DMRelatorios.EntradasItensPRC_UNITARIO.Text,
                                                   DMRelatorios.EntradasItensCUSTO_TOTAL.Text
                                                   ]), [Comp17]);
                      end
                      else begin
                           Print.ImpF(Linha, 01, Format('%71s %-25s %10s %10s %10s',
                                                   ['',
                                                   COPY(DMRelatorios.EntradasItensPRODUTO.Text + '-' + DMRelatorios.EntradasItensNOME_PRODUTO.Text,1,25),
                                                   DMRelatorios.EntradasItensQUANTIDADE.Text,
                                                   DMRelatorios.EntradasItensCustoUnitario.Text,
                                                   DMRelatorios.EntradasItensCUSTO_TOTAL.Text
                                                   ]), [Comp17]);
                      end;

                      //
                      Inc(Linha);

                      //
                      If Linha >= 63
                      Then
                          Print.Novapagina;

                      //
                      DMRelatorios.EntradasItens.Next;
                 END;
            End
            ELSE BEGIN
                 //LISTANDO AS VENDAS
                 //Produtos
                 DMRelatorios.Fat_VendasItens.Close ;

                 DMRelatorios.Fat_VendasItens.ParamByName('CNPJ'  ).Asstring  := DmApp.Cnpj ;
                 DMRelatorios.Fat_VendasItens.ParamByName('CODIGO').AsInteger := DMRelatorios.EntradasNDOCTOINT.value ;


                 DMRelatorios.Fat_VendasItens.Open  ;

                 DMRelatorios.Fat_VendasItens.First;

                 DMRelatorios.Fat_VendasItens.FetchAll ;

                 if DMRelatorios.Fat_VendasItens.RecordCount > 0
                 then
                     Linha := Linha - 1;

                 While Not DMRelatorios.Fat_VendasItens.Eof Do
                 Begin
                      //
                      If CkCusto.Checked
                      then begin
                           Print.ImpF(Linha, 01, Format('%71s %-25s %10s %10s %10s',
                                                  [
                                                   '',
                                                   COPY(DMRelatorios.Fat_VendasItensPRODUTO.Text + '-' + DMRelatorios.Fat_VendasItensNOME_PRODUTO.Text,1,25),
                                                   DMRelatorios.Fat_VendasItensQUANTIDADE.Text,
                                                   DMRelatorios.Fat_VendasItensPRC_UNITARIO.Text,
                                                   DMRelatorios.Fat_VendasItensCUSTO_TOTAL.Text
                                                   ]), [Comp17]);
                      end
                      else begin
                           Print.ImpF(Linha, 01, Format('%71s %-25s %10s %10s %10s',
                                                   ['',
                                                   COPY(DMRelatorios.Fat_VendasItensPRODUTO.Text + '-' + DMRelatorios.Fat_VendasItensNOME_PRODUTO.Text,1,25),
                                                   DMRelatorios.Fat_VendasItensQUANTIDADE.Text,
                                                   DMRelatorios.Fat_VendasItensPRC_CUSTO.Text,
                                                   DMRelatorios.Fat_VendasItensCUSTO_TOTAL.Text
                                                   ]), [Comp17]);
                      end;

                      //
                      Inc(Linha);

                      //
                      If Linha >= 63
                      Then
                          Print.Novapagina;

                      //
                      DMRelatorios.Fat_VendasItens.Next;
                 END;
            END;

            //Produtos
            DMRelatorios.EntradasItens.Close ;
            DMRelatorios.Fat_VendasItens.Close ;

            DMRelatorios.Entradas.Next;

            //
            If Linha >= 63
            Then
                Print.Novapagina;
       End;
       //
       DMRelatorios.EntradasItens.Close;
       DMRelatorios.EntradasFat.Close;
       DMRelatorios.Entradas.Close;
       //
       Anda.Visible:= False;

       Print.ImpF(LINHA, 01, Replicate('-', 80), [Normal]);
       INC(LINHA );

       //Imprime o Rodape
       Print.ImpF(Linha , 01, 'BASE CALCULO:' , [Comp17]);
       Print.ImpVal(Linha , 20, '###,###,##0.00', BaseCalculo , [Comp17]);

       //ISENTO
       Print.ImpF(Linha , 35, 'ISENTO......:' , [Comp17]);
       Print.ImpVal(Linha , 55, '###,###,##0.00', Isento , [Comp17]);
       Inc( Linha );
       //
       If Linha >= 63 Then Print.Novapagina;

       //CREDITO
       Print.ImpF(Linha , 01, 'ICM CREDITO.:' , [Comp17]);
       Print.ImpVal(Linha , 20, '###,###,##0.00', IcmCred, [Comp17]);

       //OUTRAS
       Print.ImpF(Linha , 35, 'OUTRAS......:' , [Comp17]);
       Print.ImpVal(Linha , 55, '###,###,##0.00', Outras, [Comp17]);
       Inc( Linha );
       //
       If Linha >= 63 Then Print.Novapagina;

       //IPI
       Print.ImpF(Linha , 01, 'IPI.........:' , [Comp17]);
       Print.ImpVal(Linha , 20, '###,###,##0.00', Ipi, [Comp17]);

       //DESCONTO
       Print.ImpF(Linha , 35, 'DESCONTO....:' , [Comp17]);
       Print.ImpVal(Linha , 55, '###,###,##0.00', DESCONTO, [Comp17]);
       Inc( Linha );
       //
       If Linha >= 63 Then Print.Novapagina;

       //TOTAL GERAL
       Print.ImpF(Linha , 01, 'TOTAL GERAL.:' , [Comp17]);
       Print.ImpVal(Linha , 20, '###,###,##0.00', TOTAL_NOTA , [Comp17]);
       Inc( Linha );
       //

       If Linha >= 63
       Then
           Print.Novapagina;

       Print.ImpF(LINHA, 01, Replicate('-', 80), [Normal]);

       Inc( Linha );
       //
       If Linha >= 63 Then Print.Novapagina;

       Inc( Linha );
       //
       If Linha >= 63 Then Print.Novapagina;

     end;//SOMENTE TOTAIS

     //AGRUPADORES
     WITH DMRELATORIOS DO
     BEGIN
            If CkTotais.Checked
            then
                //
                Print.Abrir;

            SOMAQUANTIDADE  := 0;
            SOMACUSTO       := 0;

            Entradas_Itens_Agrupada.Close ;

            Entradas_Itens_Agrupada.ParamByName ( 'CNPJ'     ).AsString  := DmApp.Cnpj                   ;
            Entradas_Itens_Agrupada.ParamByName ( 'NDOCTO'   ).AsString  := edNDocto.text                ;

            IF cmbFornecedor.TEXT <> ''
            THEN BEGIN
                 Entradas_Itens_Agrupada.ParamByName ( 'PESSOA_FJ').AsInteger := cmbFornecedor.LookupKeyValue ;
            END
            ELSE BEGIN
                 Entradas_Itens_Agrupada.ParamByName ( 'PESSOA_FJ').AsInteger := 0 ;
            END;
            
            Entradas_Itens_Agrupada.ParamByName ( 'INICIAL'  ).AsDate    := edDtInicial.date             ;
            Entradas_Itens_Agrupada.ParamByName ( 'FINAL'    ).AsDate    := edDtFinal.date               ;

            Entradas_Itens_Agrupada.Open  ;

            ULTCOD := Entradas_Itens_AgrupadaPRODUTO.Value      ;
            NOME   := Entradas_Itens_AgrupadaNOME_PRODUTO.Value ;

            Cab_Resumo := True ;

            Print.ImpF(Linha, 01, 'Codigo          Produto                                                Qtdade      Custo', [Comp17]);

            Inc( Linha );
            //
            If Linha >= 63 Then Print.Novapagina;

            Print.ImpF(Linha, 01, '--------------- -------------------------------------------------- ---------- ----------', [comp17]);

            Inc( Linha );
            //
            If Linha >= 63 Then Print.Novapagina;

            Entradas_Itens_Agrupada.First;

            While Not Entradas_Itens_Agrupada.Eof Do
            Begin
                 SOMAQUANTIDADE := SOMAQUANTIDADE + Entradas_Itens_AgrupadaQUANTIDADE.VALUE ;

                 if CkCusto.Checked
                 then begin
                      SOMACUSTO := SOMACUSTO + ( Entradas_Itens_AgrupadaPRC_CUSTO_DIG.Value ) ;
                 end
                 else begin
                      SOMACUSTO := SOMACUSTO + ( Entradas_Itens_AgrupadaPRC_CUSTO.Value );
                 end;

                 Entradas_Itens_Agrupada.Next;

                 IF ( ULTCOD <> Entradas_Itens_AgrupadaPRODUTO.Value ) or ( Entradas_Itens_Agrupada.eof )
                 THEN BEGIN
                      Print.ImpF(Linha, 01, Format('%-15s %-42s %14s %14s',
                                                  [
                                                   ULTCOD,
                                                   NOME,
                                                   FORMATFLOAT('#,##0.00', SOMAQUANTIDADE),
                                                   FORMATFLOAT('#,##0.00', SOMACUSTO)
                                                  ]), [Comp17]);

                      ULTCOD    := Entradas_Itens_AgrupadaPRODUTO.Value      ;
                      NOME      := Entradas_Itens_AgrupadaNOME_PRODUTO.Value ;

                      SOMACUSTO := 0;
                      SOMAQUANTIDADE := 0;

                      Inc( Linha );
                      //
                      If Linha >= 63
                      Then
                          Print.Novapagina;
                 END;

            END;
     END;

     Print.Fechar;
end;

procedure TFRelEntradas.edDtInicialEnter(Sender: TObject);
begin
     CORFUNDO(SENDER);
end;

procedure TFRelEntradas.edDtInicialExit(Sender: TObject);
begin
     //TROCA A COR PARA A COR SELECIONADA
     TIRACORFUNDO(SENDER);
     if edDtInicial.Date <= 0 then
      edDtInicial.Date := 2;

     if edDtFinal.Date <= 0 then
      edDtFinal.Date := Date;

end;

procedure TFRelEntradas.cmbTipoRelEnter(Sender: TObject);
begin
     CORFUNDO(SENDER);
     CkTotais.Enabled := false ;
     CkTotais.Checked := false ;
end;

procedure TFRelEntradas.cmbTipoRelExit(Sender: TObject);
begin
     //TROCA A COR PARA A COR SELECIONADA
     TIRACORFUNDO(SENDER);

     if cmbTipoRel.Text = 'Sintético'
     then begin
          CkTotais.Enabled := true ;
     end
     else begin
          CkTotais.Enabled := false ;
     end;

     if cmbTipoRel.Text = 'Conferente'
     then begin
          cknatureza.Enabled := true ;
     end
     else begin
          cknatureza.Enabled := false ;
     end;   
end;

end.


