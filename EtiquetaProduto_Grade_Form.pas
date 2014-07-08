unit EtiquetaProduto_Grade_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, dxBarDBNav, dxBar,   dxCntner, dxEditor,
  dxEdLib, dxDBELib, StdCtrls, Db, IBCustomDataSet, dxExEdtr, dxDBEdtr,
    RDprint,  ppPrnabl, ppClass, ppCtrls, ppBarCod,
  ppCache, ppBands, ppComm, ppRelatv, ppProd, ppReport, ppDB, ppDBPipe,
  ppModule, raCodMod, daDataModule, ppParameter, ppStrtch, ppRegion,
  ppEndUsr, dxSkinsCore, dxSkinsdxBarPainter, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, cxClasses, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinscxPCPainter, Menus,
  cxButtons, cxPC, cxLabel;

type
  TFrmEtqProdutoGrade = class(TForm)
    pnlClient: TPanel;
    pnlBottom: TPanel;
    dxBarDockControl1: TdxBarDockControl;
    BarDBNavigator: TdxBarDBNavigator;
    BarManager: TdxBarManager;
    btnIncluir: TdxBarButton;
    btnExcluir: TdxBarButton;
    btnLocalizar: TdxBarButton;
    BtnSalvar: TdxBarButton;
    BtnCancelar: TdxBarButton;
    Actions: TActionList;
    ActIncluir: TAction;
    ActAlterar: TAction;
    ActExcluir: TAction;
    ActLocalizar: TAction;
    ActPost: TAction;
    ActCancel: TAction;
    Bevel1: TBevel;
    b2: TBevel;
    LblTitulo: TcxLabel;
    DataSource: TDataSource;
    BtnListagem: TdxBarButton;
    ActListagem: TAction;
    BtnFechar: TdxBarButton;
    Panel1: TPanel;
    ActFechar: TAction;
    LblRegistros: TcxLabel;
    pc: TcxPageControl;
    dxTabSheet1: TcxTabSheet;
    Shape1: TShape;
    Label1: TcxLabel;
    EdInicial: TdxDBEdit;
    Label2: TcxLabel;
    Label3: TcxLabel;
    EdMargem: TdxDBCalcEdit;
    Label4: TcxLabel;
    dxDBCalcEdit1: TdxDBCalcEdit;
    dxTabSheet2: TcxTabSheet;
    IMPRESSORA: TRDprint;
    ActProxPagina: TAction;
    ActAntPagina: TAction;
    DataSourceImp: TDataSource;
    EDCODIGO: TdxDBEdit;
    Label5: TcxLabel;
    DsGrade: TDataSource;
    Label6: TcxLabel;
    CMBpessoa: TdxDBButtonEdit;
    CmbNumero: TdxDBButtonEdit;
    btn3: TcxButton;
    rtpLazer1Col: TppReport;
    ppLazer1Col: TppDBPipeline;
    ppParameterList1: TppParameterList;
    ppDetailBand1: TppDetailBand;
    ppDBBarCode1: TppDBBarCode;
    ppMes: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    raCodeModule1: TraCodeModule;
    daDataModule1: TdaDataModule;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    dsLazer1Col: TDataSource;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppShape1: TppShape;
    dsGrupos: TDataSource;
    DsSubGrupo: TDataSource;
    dsEtiquetaGrade: TDataSource;
    rptEtiquetaProd: TppReport;
    ppDetailBand2: TppDetailBand;
    ppColumnHeaderBand1: TppColumnHeaderBand;
    ppColumnFooterBand1: TppColumnFooterBand;
    ppRegion1: TppRegion;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBBarCode2: TppDBBarCode;
    ppDBText11: TppDBText;
    ppDBText8: TppDBText;
    btn4: TcxButton;
    Label7: TcxLabel;
    rptDesconto: TppReport;
    ppParameterList2: TppParameterList;
    ppDetailBand3: TppDetailBand;
    ppDBBarCode3: TppDBBarCode;
    ppLabel1: TppLabel;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    LBLVISTA: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    daDataModule2: TdaDataModule;
    raCodeModule2: TraCodeModule;
    rptParcela: TppReport;
    ppParameterList3: TppParameterList;
    ppDesigner3: TppDesigner;
    dsEtiqueta3: TDataSource;
    ppLayout3: TppDBPipeline;
    btncfg3: TcxButton;
    RzBitBtn3: TcxButton;
    ppLayout3Descto: TppDBPipeline;
    ppDesigner3Descto: TppDesigner;
    dsEtiqueta3Descto: TDataSource;
    ppLayout3Parc: TppDBPipeline;
    ppDesigner3Parc: TppDesigner;
    dsEtiqueta3Parc: TDataSource;
    ppDetailBand4: TppDetailBand;
    ppDBBarCode4: TppDBBarCode;
    ppLabel4: TppLabel;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppLabel5: TppLabel;
    raCodeModule3: TraCodeModule;
    daDataModule3: TdaDataModule;
    RzBitBtn4: TcxButton;
    btnImpEtiquetaEstoque: TcxButton;
    PORCENTAGEM: TdxCurrencyEdit;
    Label8: TcxLabel;
    PARCELAS: TdxCurrencyEdit;
    Label9: TcxLabel;
    dxBarDBNavFirst1: TdxBarDBNavButton;
    dxBarDBNavPrev1: TdxBarDBNavButton;
    dxBarDBNavNext1: TdxBarDBNavButton;
    dxBarDBNavLast1: TdxBarDBNavButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActExcluirExecute(Sender: TObject);
    procedure ActPostExecute(Sender: TObject);
    procedure ActCancelExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ActLocalizarExecute(Sender: TObject);
    procedure edcodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure pnlClientResize(Sender: TObject);
    procedure DataSourceStateChange(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure DataSourceDataChange(Sender: TObject; Field: TField);
    Procedure ImprimeColuna ( I: Integer; Codigo, Nome: String; Valor: Real; Atual, Largura, DstEntCol, Colunas: Integer; Esquerda: Integer) ;
    procedure ActProxPaginaExecute(Sender: TObject);
    procedure ActAntPaginaExecute(Sender: TObject);
    procedure edcodigoEnter(Sender: TObject);
    procedure EdInicialExit(Sender: TObject);
    procedure EDCODIGOExit(Sender: TObject);
    procedure CMBpessoaButtonClick(Sender: TObject; AbsoluteIndex: Integer);
    procedure CmbNumeroButtonClick(Sender: TObject; AbsoluteIndex: Integer);
    procedure btn3Click(Sender: TObject);
    procedure ppDetailBand1BeforePrint(Sender: TObject);
    procedure ppDBText2GetText(Sender: TObject; var Text: String);
    procedure ImpEtiquetasGrade(Sender: TObject);
    procedure RzBitBtn4Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure LBLVISTAPrint(Sender: TObject);
    procedure ppDetailBand3BeforePrint(Sender: TObject);
    procedure ppDetailBand4BeforePrint(Sender: TObject);
    procedure btncfg3Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    Retorno: Integer;
  end;

var
  FrmEtqProdutoGrade: TFrmEtqProdutoGrade;

implementation

uses
    Application_DM,
    Main,
    Usuarios_DM,
    Funcoes,
    Estoque_Dm,
    LocalizarProd_DM,
    EtiquetasTinta_FRel,
    EtiquetasTintaMesa_FRel,
    Localizar_Grade,
    Relatorios_DM,
  Localizar_Produto_Cadastro_Auto ;

{$R *.DFM}

procedure TFrmEtqProdutoGrade.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Datasource.Dataset.Close;
  DsGrade.Dataset.Close;
  dsGrupos.DataSet.Close;
  DsSubGrupo.DataSet.Close;


  FrmLocProdutoCadastro_Auto.Free    ;
  FrmLocProdutoCadastro_Auto := Nil  ;

  FrmMain.PnlClient.Visible := True;
  Action := caFree;
  FrmEtqProdutoGrade := Nil;
end;

procedure TFrmEtqProdutoGrade.ActIncluirExecute(Sender: TObject);
begin
  If DataSource.State in dsEditModes Then
     Exit;
  Try
    DataSource.DataSet.Append;
  Except
    On E:EDataBaseError Do
       Begin
         MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
         Exit;
       End
    Else
       Begin
         MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
         Exit;
       End;
  End;

  edcodigo.SetFocus;
end;

procedure TFrmEtqProdutoGrade.ActExcluirExecute(Sender: TObject);
begin
  If MessageBox(Handle,'Tem certeza que deseja Excluir esta Etiqueta ?',
                       'Atenção !!!',MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2)=IDYES Then
     DataSource.Dataset.Delete;
end;

procedure TFrmEtqProdutoGrade.ActPostExecute(Sender: TObject);
begin
  Try
    DataSource.DataSet.Post;
    DMApp.Transaction.CommitRetaining;
  Except
    On E:EDataBaseError Do
       Begin
         MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
         Exit;
       End
    Else
       Begin
         MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
         Exit;
       End;
  End;
end;

procedure TFrmEtqProdutoGrade.ActCancelExecute(Sender: TObject);
begin
  If DataSource.DataSet.State in dsEditModes Then
     DataSource.DataSet.Cancel
  Else
     BtnFechar.OnClick(BtnFechar);
end;

procedure TFrmEtqProdutoGrade.FormShow(Sender: TObject);
begin
  IniciaComponentes ( Self as TForm );
  //
  Try
    dsGrupos.DataSet.Open;
    DsSubGrupo.DataSet.Open;

    If Not(DataSource.DataSet.Active) Then
       Datasource.DataSet.Open;

    (Datasource.DataSet as TIBDataset).FetchAll;


     If FrmLocProdutoCadastro_Auto = Nil  then
        FrmLocProdutoCadastro_Auto := TFrmLocProdutoCadastro_Auto.Create(Application) ;

  Except
    On E:EDataBaseError Do
       Begin
         MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
         Exit;
       End
    Else
       Begin
         MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
         Exit;
       End;
  End;
  //
  Datasource.AutoEdit := ActAlterar.Enabled;
  EdInicial.SetFocus;
end;

procedure TFrmEtqProdutoGrade.FormCreate(Sender: TObject);
begin
  PC.ACTIVEPAGEINDEX := 0;
  //
  ActListagem.Hint := ActListagem.Hint + LblTitulo.Caption + ' [F5]';
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, LblTitulo.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

Procedure TFrmEtqProdutoGrade.ImprimeColuna ( I: Integer; Codigo, Nome: String; Valor: Real; Atual, Largura, DstEntCol, Colunas: Integer; Esquerda: Integer) ;
Var
   Sai: Boolean  ;
   Fonte: TFonte ;
   CodFont, NomeFont, ValorFont, Col: Integer;
   NegCod, NegNome, NegValor   : String ;
begin
     Sai := False ;

     With DmEstoque do
     Begin
          CodFont   := ConfEtiquetasFONTECODIGO.Value   ;
          NomeFont  := ConfEtiquetasFONTENOME.Value     ;
          ValorFont := ConfEtiquetasFONTEVALOR.Value    ;
          NegCod    := ConfEtiquetasNEGRITOCODIGO.Value ;
          NegNome   := ConfEtiquetasNEGRITONOME.Value   ;
          NegValor  := ConfEtiquetasNEGRITOVALOR.Value  ;
     end;

     Col := I ;

     Repeat

           I := Col ;

           If trim(Codigo) <> ''
           then begin

                I := I + 1;

                //Codigo
                Case CodFont of
                5  : Begin
                          If NegCod = 'S'
                          then
                              Impressora.Impf ( I , Esquerda, Codigo, [Expandido, Negrito] )
                          else
                              Impressora.Impf ( I , Esquerda, Codigo, [Expandido] );
                     end;
                10 : begin
                          If NegCod = 'S'
                          then
                              Impressora.Impf ( I , Esquerda, Codigo, [Normal, Negrito] )
                          else
                              Impressora.Impf ( I , Esquerda, Codigo, [Normal] );
                     end;
                12 : begin
                          If NegCod = 'S'
                          then
                              Impressora.Impf ( I , Esquerda, Codigo, [Comp12, Negrito] )
                          else
                              Impressora.Impf ( I , Esquerda, Codigo, [Comp12] ) ;
                     end;
                17 : begin
                          If NegCod = 'S'
                          then
                              Impressora.Impf ( I , Esquerda, Codigo, [Comp17, Negrito] )
                          else
                              Impressora.Impf ( I , Esquerda, Codigo, [Comp17] ) ;
                     end;
                20 : begin
                          If NegCod = 'S'
                          then
                              Impressora.Impf ( I , Esquerda, Codigo, [Comp20, Negrito] )
                          else
                              Impressora.Impf ( I , Esquerda, Codigo, [Comp20] ) ;
                     end;
                end;
           end;

           If trim(Nome) <> ''
           then begin

                I := I + 1 ;

                //Nome
                Case NomeFont of
                5  : Begin
                          If NegNome = 'S'
                          then
                              Impressora.Impf ( I , Esquerda, Nome, [Expandido, Negrito] )
                          else
                              Impressora.Impf ( I , Esquerda, Nome, [Expandido] );
                     end;
                10 : begin
                          If NegNome = 'S'
                          then
                              Impressora.Impf ( I , Esquerda, Nome, [Normal, Negrito] )
                          else
                              Impressora.Impf ( I , Esquerda, Nome, [Normal] );
                     end;
                12 : begin
                          If NegNome = 'S'
                          then
                              Impressora.Impf ( I , Esquerda, Nome, [Comp12, Negrito] )
                          else
                              Impressora.Impf ( I , Esquerda, Nome, [Comp12] ) ;
                     end;
                17 : begin
                          If NegNome = 'S'
                          then
                              Impressora.Impf ( I , Esquerda, Nome, [Comp17, Negrito] )
                          else
                              Impressora.Impf ( I , Esquerda, Nome, [Comp17] ) ;
                     end;
                20 : begin
                          If NegNome = 'S'
                          then
                              Impressora.Impf ( I , Esquerda, Nome, [Comp20, Negrito] )
                          else
                              Impressora.Impf ( I , Esquerda, Nome, [Comp20] );
                     end;
                end;
           end;

           If Valor > 0
           then begin

                I := I + 1;

                //Valor
                Case ValorFont of
                5  : Begin
                          If NegValor = 'S'
                          then
                              Impressora.ImpVal ( I , Esquerda, '##,##0.00', Valor, [Expandido, Negrito] )
                          else
                              Impressora.ImpVal ( I , Esquerda, '##,##0.00', Valor, [Expandido] );
                     end;
                10 : begin
                          If NegValor = 'S'
                          then
                              Impressora.ImpVal ( I , Esquerda, '##,##0.00', Valor, [Normal, Negrito] )
                          else
                              Impressora.ImpVal ( I , Esquerda, '##,##0.00', Valor, [Normal] );
                          end;
                12 : begin
                          If NegValor = 'S'
                          then
                              Impressora.ImpVal ( I , Esquerda, '##,##0.00', Valor, [Comp12, Negrito] )
                          else
                              Impressora.ImpVal ( I , Esquerda, '##,##0.00', Valor, [Comp12] );
                     end;
                17 : begin
                          If NegValor = 'S'
                          then
                              Impressora.ImpVal ( I , Esquerda, '##,##0.00', Valor, [Comp17, Negrito] )
                          else
                              Impressora.ImpVal ( I , Esquerda, '##,##0.00', Valor, [Comp17] ) ;
                     end;
                20 : begin
                          If NegValor = 'S'
                          then
                              Impressora.ImpVal ( I , Esquerda, '##,##0.00', Valor, [Comp20, Negrito] )
                          else
                              Impressora.ImpVal ( I , Esquerda, '##,##0.00', Valor, [Comp20] ) ;
                     end;
                end;
           end;

           Atual := Atual + 1 ;

           Esquerda := Esquerda + Largura + DstEntCol ;

           If  Atual > Colunas
           then begin
                Sai := True ;
           end;

     until (Sai);
end;


procedure TFrmEtqProdutoGrade.ActLocalizarExecute(Sender: TObject);
begin
  DMApp.Localizar(Datasource);
end;

procedure TFrmEtqProdutoGrade.edcodigoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmEtqProdutoGrade.pnlClientResize(Sender: TObject);
begin
  b2.Width := pnlClient.Width - 17;
  LblRegistros.Left := pnlClient.Width - 11 - LblRegistros.Width;
end;

procedure TFrmEtqProdutoGrade.DataSourceStateChange(Sender: TObject);
begin
  If DataSource.State in dsEditModes Then
     Begin
       ActIncluir.Enabled   := False;
       ActAlterar.Enabled   := False;
       ActExcluir.Enabled   := False;
       ActLocalizar.Enabled := False;
       ActListagem.Enabled  := False;
       BtnSalvar.Enabled    := True;
       BtnCancelar.Enabled  := True;
       ActFechar.Enabled    := False;
     End
  Else
     Begin
       ActIncluir.Enabled   := ActIncluir.Tag = 1;
       ActAlterar.Enabled   := ActAlterar.Tag = 1;
       ActExcluir.Enabled   := ActExcluir.Tag = 1;
       ActLocalizar.Enabled := True;
       ActListagem.Enabled  := ActListagem.Tag = 1;
       BtnSalvar.Enabled    := False;
       BtnCancelar.Enabled  := False;
       ActFechar.Enabled    := True;
     End;
end;

procedure TFrmEtqProdutoGrade.ActFecharExecute(Sender: TObject);
begin
  If FrmEtqProdutoGrade.FormStyle = fsMDIChild Then
     FrmMain.opFechar.OnClick(FrmMain.opFechar)
  Else
     Close;
end;

procedure TFrmEtqProdutoGrade.DataSourceDataChange(Sender: TObject; Field: TField);
begin
  DmEstoque.ContEtiqueta.Close;
  DmEstoque.ContEtiqueta.ParamByName('cnpj').value := DMApp.Cnpj;
  DmEstoque.ContEtiqueta.Open;
  LblRegistros.Caption := IntToStr(Datasource.DataSet.Recno) + '/' + IntToStr(Datasource.Dataset.RecordCount)+'  -  '+IntToStr(DmEstoque.ContEtiquetaQUANTIDADE.VALUE)+' Etiq. ';
end;

procedure TFrmEtqProdutoGrade.ActProxPaginaExecute(Sender: TObject);
begin
     If Pc.ActivePageIndex = 0
     then
         Pc.ActivePageIndex := 1
     else
         Pc.ActivePageIndex := 0;
end;

procedure TFrmEtqProdutoGrade.ActAntPaginaExecute(Sender: TObject);
begin
     If Pc.ActivePageIndex = 0
     then
         Pc.ActivePageIndex := 1
     else
         Pc.ActivePageIndex := 0;
end;

procedure TFrmEtqProdutoGrade.edcodigoEnter(Sender: TObject);
begin
     CORFUNDO ( SENDER );
end;

procedure TFrmEtqProdutoGrade.EdInicialExit(Sender: TObject);
begin
     TIRACORFUNDO ( SENDER );
end;

procedure TFrmEtqProdutoGrade.EDCODIGOExit(Sender: TObject);
begin
  TIRACORFUNDO ( SENDER );
  if (DataSource.State in [ dsinsert, dsedit ]) and (edcodigo.text = '') then
  begin
      if FrmLocProdutoCadastro_Auto.Showmodal = mrok then
        Datasource.DataSet.FieldByName('CODIGO').asString := (FrmLocProdutoCadastro_Auto.CampTrecho)
  end;
end;

procedure TFrmEtqProdutoGrade.CMBpessoaButtonClick(Sender: TObject; AbsoluteIndex: Integer);
begin
     //Chama a Tela Para Localizar Naturezas
     Application.CreateForm(TFrm_Localizar_Grades, Frm_Localizar_Grades);

     //
     WITH DMESTOQUE DO
     BEGIN
          Lista_Grades.close ;
          Lista_Grades.ParamByName ('CNPJ'  ).ASSTRING := DMAPP.CNPJ                         ;
          Lista_Grades.ParamByName ('PRODUTO').ASSTRING := DmEstoque.EtiquetaProdCodigo.value ;
          Lista_Grades.open  ;
     END;

     Frm_Localizar_Grades.DSource.DataSet := DMESTOQUE.Lista_Grades ;

     IF ( Frm_Localizar_Grades.showmodal = mrOk )
     Then Begin
          Frm_Localizar_Grades.CAMPtRECHO ;
          DmEstoque.EtiquetaProdGRADE.VALUE := (Frm_Localizar_Grades.GRADE)
     END ;

     Frm_Localizar_Grades.FREE   ;
     Frm_Localizar_Grades := NIL ;
end;

procedure TFrmEtqProdutoGrade.CmbNumeroButtonClick(Sender: TObject; AbsoluteIndex: Integer);
begin
     //Chama a Tela Para Localizar Naturezas
     Application.CreateForm(TFrm_Localizar_Grades, Frm_Localizar_Grades);

     WITH DMESTOQUE DO
     BEGIN
          Lista_Grades.close ;
          Lista_Grades.ParamByName ('CNPJ'  ).ASSTRING := DMAPP.CNPJ                         ;
          Lista_Grades.ParamByName ('PRODUTO').ASSTRING := DmEstoque.EtiquetaProdCodigo.value ;
          Lista_Grades.open  ;
     END;

     Frm_Localizar_Grades.DSource.DataSet := DMESTOQUE.Lista_Grades ;

     IF ( Frm_Localizar_Grades.showmodal = mrOk )
     Then Begin
          DmEstoque.EtiquetaProdNUMERO.VALUE := (Frm_Localizar_Grades.Camptrecho)
     END ;

     Frm_Localizar_Grades.FREE   ;
     Frm_Localizar_Grades := NIL ;
end;

procedure TFrmEtqProdutoGrade.btn3Click(Sender: TObject);
var
   Qntde, I, J : Integer;
   Codigo, Nome, Grade, Numero: String;
   Valor : Real;
   x : Integer;
begin
  with dmEstoque do
  begin
    EtiquetaProdImp.Open;

    //APAGANDO AS ETIQUETAS IMPRESSAS
    DMAPP.Apaga_Etiquetas_Impressas;

    EtiquetaProd.FIRST;
    while not EtiquetaProd.EOF do
    begin
      inc(x,1);
      Codigo := EtiquetaProd.FieldByName('CODIGO').AsString;
      Nome := EtiquetaProd.FieldByName('NOME').AsString;
      Valor := EtiquetaProd.FieldByName('VALOR').AsFloat;
      Qntde := EtiquetaProd.FieldByName('QUANTIDADE').AsInteger;
      Numero := EtiquetaProd.FieldByName('NUMERO').AsString;
      Grade := EtiquetaProd.FieldByName('GRADE').AsString ;
      I := DMAPP.ULTIMA_ETIQUETA_IMP + 1;
      J := 1;
      while (J <= Qntde) do
      begin
        DMApp.Insere_Etiquetas (CODIGO, NOME, VALOR, 0, I, Numero, Grade);
        I := I + 1;
        J := J + 1;
      end;
      EtiquetaProd.NEXT;
    end;
    VER_EST_ESTIQUETA_PRODUTO.Close;
    VER_EST_ESTIQUETA_PRODUTO.Open;

    EtiquetaProdImp.close;
    EtiquetaProdImp.Open ;

    IF PORCENTAGEM.Value > 0 THEN
    begin
      DmEstoque.EtiquetaDescto.close;
      DmEstoque.EtiquetaDescto.Open;

      rptDesconto.Template.DatabaseSettings.Name := DmEstoque.EtiquetaDesctoCnpj.asString;
      rptDesconto.Template.LoadFromDatabase;
      rptDesconto.Print;
    end
    ELSE
    BEGIN
         IF PARCELAS.Value = 0 THEN
         begin
          //Carregando as opções do banco de dados
          DmEstoque.Etiqueta3.close;
          DmEstoque.Etiqueta3.Open;

          rtpLazer1Col.Template.DatabaseSettings.Name := DmEstoque.Etiqueta3Cnpj.asString;
          rtpLazer1Col.Template.LoadFromDatabase;
          rtpLazer1Col.Print;
         end
         ELSE
         begin
          DmEstoque.EtiquetaParcela.close;
          DmEstoque.EtiquetaParcela.Open;

          rptParcela.Template.DatabaseSettings.Name := DmEstoque.EtiquetaParcelaCnpj.asString;
          rptParcela.Template.LoadFromDatabase;
          rptParcela.Print;
         end;
    END;

    //APAGANDO AS ETIQUETAS IMPRESSAS
     DMAPP.Apaga_Etiquetas_Impressas ;
    //APAGANDO A MATRIZ DAS ETIQUETAS
    if MESSAGEDLG('Emitidas Com Sucesso?', mtConfirmation, [mbok, mbcancel],0) = mrok then
         //APAGANDO AS ETIQUETAS IMPRESSAS
    DMAPP.Apaga_Etiquetas_Matriz;

    EtiquetaProd.CLOSE;
    EtiquetaProd.OPEN;

    EtiquetaProdImp.Close;
    EtiquetaProdImp.Open;
  end;//end with
end;

procedure TFrmEtqProdutoGrade.ppDetailBand1BeforePrint(Sender: TObject);
  Var
   D, M, A: WORD;
begin
     DECODEDATE ( DMAPP.DATASERVIDOR, A, M, D );

     ppMes.Caption := INTTOSTR(M) + '/' + INTTOSTR(A);

end;
procedure TFrmEtqProdutoGrade.ppDBText2GetText(Sender: TObject;
  var Text: String);
begin
  Text := UpperCase(DmEstoque.VER_EST_ESTIQUETA_PRODUTONUMERO.Value);
end;

procedure TFrmEtqProdutoGrade.ImpEtiquetasGrade(Sender: TObject);
var
   Qtde, I, J : Integer;
   Codigo, Nome, Grade, Numero: String;
   Valor : Real;
   x : Integer;
   cod :string;
begin
  Screen.Cursor := crSQLWait;
  DMAPP.Apaga_Etiquetas_Impressas;
  DmEstoque.EtiquetasGrade.Close;
  if EDCODIGO.Text = '' then
    cod := '0'
  else
    cod := EDCODIGO.Text;
  DmEstoque.EtiquetasGrade.ParamByName('cod').Value := cod;
  DmEstoque.EtiquetasGrade.ParamByName('cnpj').Value := DMApp.Cnpj;
  DmEstoque.EtiquetasGrade.Open;
  DmEstoque.EtiquetasGrade.First;
  while not DmEstoque.EtiquetasGrade.Eof do
  begin
    inc(x, 1);
    Codigo := DmEstoque.EtiquetasGradeCODIGO.Value;
    Nome := DmEstoque.EtiquetasGradePRODUTO.Value;
    Valor := DmEstoque.EtiquetasGradeVALOR.Value;
    Qtde := DmEstoque.EtiquetasGradeESTOQUE.AsInteger;
    Numero := DmEstoque.EtiquetasGradeNUMERO.Value;
    Grade := DmEstoque.EtiquetasGradeGRADE.Value;
    I := DMAPP.ULTIMA_ETIQUETA_IMP + 1;
    J := 1;
    while (J <= Qtde) do
    begin
      DMApp.Insere_Etiquetas(CODIGO, NOME, VALOR, 0, I, Numero, Grade);
      I := I + 1;
      J := J + 1;
    end;
    DmEstoque.EtiquetasGrade.Next;
  end;
  DmEstoque.VER_EST_ESTIQUETA_PRODUTO.Close;
  DmEstoque.VER_EST_ESTIQUETA_PRODUTO.Open;

  DmEstoque.EtiquetaProdImp.close;
  DmEstoque.EtiquetaProdImp.Open ;

  rtpLazer1Col.Print;
  Screen.Cursor := crDefault;
  //APAGANDO AS ETIQUETAS IMPRESSAS
  DMAPP.Apaga_Etiquetas_Impressas ;
  //APAGANDO A MATRIZ DAS ETIQUETAS
  if MESSAGEDLG('Emitidas Com Sucesso?', mtConfirmation, [mbok, mbcancel],0) = mrok then
       //APAGANDO AS ETIQUETAS IMPRESSAS
    DMAPP.Apaga_Etiquetas_Matriz;
  DmEstoque.EtiquetaProd.CLOSE;
  DmEstoque.EtiquetaProd.OPEN;

  DataSourceImp.DataSet.Close;
  DataSourceImp.DataSet.Open;
end;

procedure TFrmEtqProdutoGrade.RzBitBtn4Click(Sender: TObject);
var
   Qtde, I, J : Integer;
   Codigo, Nome, Grade, Numero: String;
   Valor : Real;
   x : Integer;
   cod :string;
begin
  Screen.Cursor := crSQLWait;
  DMAPP.Apaga_Etiquetas_Impressas;
  DmEstoque.EtiquetasGrade.Close;
  if EDCODIGO.Text = '' then
    cod := '0'
  else
    cod := EDCODIGO.Text;
  DmEstoque.EtiquetasGrade.ParamByName('cod').Value := cod;
  DmEstoque.EtiquetasGrade.ParamByName('cnpj').Value := DMApp.Cnpj;
  DmEstoque.EtiquetasGrade.Open;
  DmEstoque.EtiquetasGrade.First;
  while not DmEstoque.EtiquetasGrade.Eof do
  begin
    inc(x, 1);
    Codigo := DmEstoque.EtiquetasGradeCODIGO.Value;
    Nome := DmEstoque.EtiquetasGradePRODUTO.Value;
    Valor := DmEstoque.EtiquetasGradeVALOR.Value;
    Qtde := DmEstoque.EtiquetasGradeESTOQUE.AsInteger;
    Numero := DmEstoque.EtiquetasGradeNUMERO.Value;
    Grade := DmEstoque.EtiquetasGradeGRADE.Value;
    I := DMAPP.ULTIMA_ETIQUETA_IMP + 1;
    J := 1;
    while (J <= Qtde) do
    begin
      DMApp.Insere_Etiquetas(CODIGO, NOME, VALOR, 0, I, Numero, Grade);
      I := I + 1;
      J := J + 1;
    end;
    DmEstoque.EtiquetasGrade.Next;
  end;
  DmEstoque.VER_EST_ESTIQUETA_PRODUTO.Close;
  DmEstoque.VER_EST_ESTIQUETA_PRODUTO.Open;

  DmEstoque.EtiquetaProdImp.close;
  DmEstoque.EtiquetaProdImp.Open ;

  rptEtiquetaProd.Print;
  Screen.Cursor := crDefault;
  //APAGANDO AS ETIQUETAS IMPRESSAS
  DMAPP.Apaga_Etiquetas_Impressas ;
  //APAGANDO A MATRIZ DAS ETIQUETAS
  if MESSAGEDLG('Emitidas Com Sucesso?', mtConfirmation, [mbok, mbcancel],0) = mrok then
       //APAGANDO AS ETIQUETAS IMPRESSAS
    DMAPP.Apaga_Etiquetas_Matriz;
  DmEstoque.EtiquetaProd.CLOSE;
  DmEstoque.EtiquetaProd.OPEN;

  DataSourceImp.DataSet.Close;
  DataSourceImp.DataSet.Open;
end;

procedure TFrmEtqProdutoGrade.btn4Click(Sender: TObject);
var
   Qntde, I, J : Integer;
   Codigo, Nome, Grade, Numero: String;
   Valor : Real;
   x : Integer;
   cod :string;
begin
  Screen.Cursor := crSQLWait;
  DataSourceImp.DATASET.Open;
  //APAGANDO AS ETIQUETAS IMPRESSAS
  DMAPP.Apaga_Etiquetas_Impressas;
  DATASOURCE.DataSet.FIRST;
  while not DATASOURCE.DataSet.EOF do
  begin
    inc(x,1);
    Codigo := DataSource.DataSet.FieldByName('CODIGO').AsString;
    Nome := DataSource.DataSet.FieldByName('NOME').AsString;
    Valor := DataSource.DataSet.FieldByName('VALOR').AsFloat;
    Qntde := DataSource.DataSet.FieldByName('QUANTIDADE').AsInteger;
    Numero := DataSource.DataSet.FieldByName('NUMERO').AsString;
    Grade := DataSource.DataSet.FieldByName('GRADE').AsString ;
    I := DMAPP.ULTIMA_ETIQUETA_IMP + 1;
    J := 1;
    while (J <= Qntde) do
    begin
      DMApp.Insere_Etiquetas (CODIGO, NOME, VALOR, 0, I, Numero, Grade);
      I := I + 1;
      J := J + 1;
    end;
    DATASOURCE.DataSet.NEXT;
  end;
  DmEstoque.VER_EST_ESTIQUETA_PRODUTO.Close;
  DmEstoque.VER_EST_ESTIQUETA_PRODUTO.Open;

  DmEstoque.EtiquetaProdImp.close;
  DmEstoque.EtiquetaProdImp.Open ;
{    QrBarrasFormLaserColuna := TQrBarrasFormLaserColuna.Create(Self);
    QrBarrasFormLaserColuna.QREPFORCONT.Preview ;
    QrBarrasFormLaserColuna.Free ;
    QrBarrasFormLaserColuna := Nil; }
    //

  rptEtiquetaProd.Print;
  Screen.Cursor := crDefault;
  //APAGANDO AS ETIQUETAS IMPRESSAS
  DMAPP.Apaga_Etiquetas_Impressas ;
  //APAGANDO A MATRIZ DAS ETIQUETAS
  if MESSAGEDLG('Emitidas Com Sucesso?', mtConfirmation, [mbok, mbcancel],0) = mrok then
       //APAGANDO AS ETIQUETAS IMPRESSAS
    DMAPP.Apaga_Etiquetas_Matriz;
  DmEstoque.EtiquetaProd.CLOSE;
  DmEstoque.EtiquetaProd.OPEN;

  DataSourceImp.DataSet.Close;
  DataSourceImp.DataSet.Open;
end;

procedure TFrmEtqProdutoGrade.LBLVISTAPrint(Sender: TObject);
Var
   Valor: Real;
begin
     Valor := ppLazer1Col.GetFieldValue('VALOR') ;

     valor := valor - (( valor * PORCENTAGEM.VALUE ) / 100 );

     LBLVISTA.Caption := formatfloat('###,##0.00', valor);
end;

procedure TFrmEtqProdutoGrade.ppDetailBand3BeforePrint(Sender: TObject);
  Var
   D, M, A: WORD;
begin
     DECODEDATE ( DMAPP.DATASERVIDOR, A, M, D );

     ppLabel1.Caption := INTTOSTR(M) + '/' + INTTOSTR(A);
end;

procedure TFrmEtqProdutoGrade.ppDetailBand4BeforePrint(Sender: TObject);
Var
   D, M, A: WORD;
   Valor: Real;
begin
     DECODEDATE ( DMAPP.DATASERVIDOR, A, M, D );

     ppLabel4.Caption := INTTOSTR(M) + '/' + INTTOSTR(A);

     Valor := ppLazer1Col.GetFieldValue('VALOR') ;

     VALOR := VALOR / PARCELAS.VALUE ;

     ppLabel5.Caption := formatfloat('###,##0', PARCELAS.VALUE ) + ' X ' +  formatfloat('###,##0.00', valor);
end;

procedure TFrmEtqProdutoGrade.btncfg3Click(Sender: TObject);
begin
  IF PORCENTAGEM.Value > 0 THEN
  begin
    DmEstoque.EtiquetaDescto.close;
    DmEstoque.EtiquetaDescto.Open;

    rptDesconto.Template.DatabaseSettings.Name := DmEstoque.EtiquetaDesctoCnpj.asString;
    rptDesconto.Template.LoadFromDatabase;
    ppDesigner3Descto.Show;
    DmEstoque.EtiquetaDescto.edit;
  end
  ELSE
  BEGIN
    IF PARCELAS.Value = 0 THEN
    begin
      DmEstoque.Etiqueta3.close;
      DmEstoque.Etiqueta3.Open;

      rtpLazer1Col.Template.DatabaseSettings.Name := DmEstoque.Etiqueta3Cnpj.asString;
      rtpLazer1Col.Template.LoadFromDatabase;
      ppDesigner3.Show;
      DmEstoque.Etiqueta3.edit;
    end
    ELSE
    begin
      DmEstoque.EtiquetaParcela.close;
      DmEstoque.EtiquetaParcela.Open;

      rptParcela.Template.DatabaseSettings.Name := DmEstoque.EtiquetaParcelaCnpj.asString;
      rptParcela.Template.LoadFromDatabase;
      ppDesigner3Parc.Show;
      DmEstoque.EtiquetaDescto.edit;
    end;
  END;


end;

end.
