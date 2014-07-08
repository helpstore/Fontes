unit BxReceberCobrador_FRel;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, Db, dxExEdtr, dxEdLib, dxCntner, dxEditor, dxDBEdtr,
  dxDBELib, StdCtrls,  RDprint, ComCtrls, Buttons,
      ppDB, ppDBPipe, ppParameter, ppModule,
  raCodMod, ppBands, ppVar, ppCtrls, ppPrnabl, ppClass, ppCache, ppComm,
  ppRelatv, ppProd, ppReport,   cxPropertiesStore, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinXmas2008Blue, dxSkinscxPCPainter, cxContainer,
  cxEdit, Menus, cxButtons, cxLabel, cxPC,  cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar;

type
  TFRelRecebidasCobrador = class(TForm)
    pnlClient: TPanel;
    Actions: TActionList;
    ActPreview: TAction;
    ActFechar: TAction;
    pc: TcxPageControl;
    Panel2: TPanel;
    BtnOk: TcxButton;
    RzBitBtn2: TcxButton;
    dxTabSheet1: TcxTabSheet;
    Shape1: TShape;
    Label26: TcxLabel;
    Label27: TcxLabel;
    GroupBox1: TGroupBox;
    Label4: TcxLabel;
    Label5: TcxLabel;
    Label8: TcxLabel;
    Label10: TcxLabel;
    Label6: TcxLabel;
    Label7: TcxLabel;
    Label9: TcxLabel;
    Label11: TcxLabel;
    Label12: TcxLabel;
    Label13: TcxLabel;
    Label14: TcxLabel;
    Label15: TcxLabel;
    Label19: TcxLabel;
    Label18: TcxLabel;
    Label17: TcxLabel;
    Label16: TcxLabel;
    DATAINICIAL: TdxCurrencyEdit;
    DATAFINAL: TdxCurrencyEdit;
    COMISSAO1: TdxCurrencyEdit;
    DATAINICIAL1: TdxCurrencyEdit;
    DATAFINAL1: TdxCurrencyEdit;
    COMISSAO2: TdxCurrencyEdit;
    DATAINICIAL2: TdxCurrencyEdit;
    DATAFINAL2: TdxCurrencyEdit;
    COMISSAO3: TdxCurrencyEdit;
    DATAINICIAL3: TdxCurrencyEdit;
    DATAFINAL3: TdxCurrencyEdit;
    COMISSAO4: TdxCurrencyEdit;
    GroupBox3: TGroupBox;
    edAs1: TcxLabel;
    Label1: TcxLabel;
    Label2: TcxLabel;
    Label3: TcxLabel;
    Data1: tcxdateedit;
    Data2: tcxdateedit;
    cmbCobrador: TdxLookupEdit;
    Label21: TcxLabel;
    dsCobrador: TDataSource;
    rptComissao: TppReport;
    ppTitleBand6: TppTitleBand;
    ppShape5: TppShape;
    lblEmpresa: TppLabel;
    ppTituloRel: TppLabel;
    lblFiltro: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppDetailBand6: TppDetailBand;
    ppFooterBand4: TppFooterBand;
    ppShape9: TppShape;
    ppSystemVariable3: TppSystemVariable;
    raCodeModule4: TraCodeModule;
    ppParameterList2: TppParameterList;
    dbRelReceber: TppDBPipeline;
    dsRelReceber: TDataSource;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppHeaderBand1: TppHeaderBand;
    ppLabel1: TppLabel;
    ppLine1: TppLine;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLine2: TppLine;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppLabel4: TppLabel;
    ppLine3: TppLine;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppLabel5: TppLabel;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppLabel8: TppLabel;
    ppDBText7: TppDBText;
    ppLabel9: TppLabel;
    ppDBText8: TppDBText;
    ppLabel10: TppLabel;
    ppDBText9: TppDBText;
    ppLabel11: TppLabel;
    ppLabel13: TppLabel;
    ppDBCalc2: TppDBCalc;
    ppSummaryBand1: TppSummaryBand;
    ppLabel14: TppLabel;
    ppDBCalc3: TppDBCalc;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBCalc1: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppLabel12: TppLabel;
    ppDBText12: TppDBText;
    ppDBCalc9: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    stgFRelRecebidasCobrador: TcxPropertiesStore;
    dsApp: TDataSource;
    ppAppRepresentante: TppDBPipeline;
    ppDBText13: TppDBText;
    procedure FormCreate(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cmbPessoaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure ActPreviewExecute(Sender: TObject);
    procedure edDtInicialEnter(Sender: TObject);
    procedure edDtInicialExit(Sender: TObject);
    procedure edDtFinalExit(Sender: TObject);
    procedure DATAINICIALExit(Sender: TObject);
    procedure cmbCobradorEnter(Sender: TObject);
    procedure cmbCobradorExit(Sender: TObject);
    procedure cmbCobradorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    Pessoa_FJ: Integer;
  public
    { Public declarations }
  end;

var
  FRelRecebidasCobrador: TFRelRecebidasCobrador;
  Linha, Pagina: Integer;

implementation

uses Usuarios_DM,
     Application_DM,
     Funcoes,
     Relatorios_DM2, Financeiro_Dm, Cadastros_Dm2;

{$R *.DFM}

procedure TFRelRecebidasCobrador.FormCreate(Sender: TObject);
begin
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, Self.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);

  pc.ActivePageIndex := 0;
end;

procedure TFRelRecebidasCobrador.ActFecharExecute(Sender: TObject);
begin
  Close;
end;

procedure TFRelRecebidasCobrador.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action      := caFree;
  FRelRecebidasCobrador := Nil;
end;

procedure TFRelRecebidasCobrador.cmbPessoaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFRelRecebidasCobrador.FormShow(Sender: TObject);
begin
  IniciaComponentes(Self as TForm);
  dmCadastros2.SelCobrador.close;
  dmCadastros2.SelCobrador.open;
  cmbCobrador.SetFocus;
  Try
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
end;

procedure TFRelRecebidasCobrador.ActPreviewExecute(Sender: TObject);
Var
   Cont: Integer;
   filtro : string;
   sOrder : string;
begin
  sOrder := ' order by cobrador, dt_pagto, cliente ';
  if (cmbCobrador.text <> '') then
  begin
    lblFiltro.caption := ' Cobrador:'+cmbCobrador.text;
    filtro := ' where cod_cobrador = '+IntToStr(cmbCobrador.LookupKeyValue);
  end
  else
  begin
    lblFiltro.caption := ' Cobrador: Todos';
    filtro := '';
  end;

  with dmRelatorios2 do
  begin

    a1 := DataInicial.value;
    a2 := DataFinal.value;
    com1 := COMISSAO1.value;

    b1 := DataInicial1.value;
    b2 := DataFinal1.value;
    com2 := COMISSAO2.value;

    c1 := DataInicial2.value;
    c2 := DataFinal2.value;
    com3 := COMISSAO3.value;

    d1 := DataInicial3.value;
    d2 := DataFinal3.value;
    com4 := COMISSAO4.value;

    qryRelComCob.Close;
    qryRelComCob.sql.text := ' select * from PCD_REL_COM_COBRADOR(:cnpj,:data1,:data2) '+filtro+ sOrder;
    qryRelComCob.ParamByName('Data1').asDate := Data1.date;
    qryRelComCob.ParamByName('Data2').asDate := Data2.date;
    qryRelComCob.ParamByName('cnpj').value := DmApp.cnpj;
    qryRelComCob.Open;

    lblEmpresa.caption := dmApp.nome;
    rptComissao.Print;
  end;
end;

procedure TFRelRecebidasCobrador.edDtInicialEnter(Sender: TObject);
begin
  CorFundo ( Sender );
end;

procedure TFRelRecebidasCobrador.edDtInicialExit(Sender: TObject);
begin
  //TROCA A COR PARA A COR SELECIONADA
  TiraCorFundo (Sender);
  if Data1.date <= 0  then
    Data1.DATE := STRTODATE ('01/01/1900');
end;

procedure TFRelRecebidasCobrador.edDtFinalExit(Sender: TObject);
begin
  //TROCA A COR PARA A COR SELECIONADA
  TiraCorFundo ( Sender );
  if Data2.date <= 0 then
    Data2.DATE := STRTODATE ('31/12/9999');
end;

procedure TFRelRecebidasCobrador.DATAINICIALExit(Sender: TObject);
begin
  TIRACORFUNDO( SENDER );
end;

procedure TFRelRecebidasCobrador.cmbCobradorEnter(Sender: TObject);
begin
  CORFUNDO(SENDER);
end;

procedure TFRelRecebidasCobrador.cmbCobradorExit(Sender: TObject);
begin
  TIRACORFUNDO(SENDER);
end;

procedure TFRelRecebidasCobrador.cmbCobradorKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
       Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

end.

