  unit Remessa_FRel;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, Db, dxExEdtr, dxEdLib, dxCntner, dxEditor, dxDBEdtr,
  dxDBELib, StdCtrls,  RDprint,   ComCtrls, ppCtrls,
  ppBands, ppVar, ppPrnabl, ppClass, ppDB, ppCache, ppProd, ppReport,
  ppComm, ppRelatv, ppDBPipe, ppParameter, cxGraphics, cxControls,
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
  TFRemessa = class(TForm)
    pnlClient: TPanel;
    Panel2: TPanel;
    RzBitBtn1: TcxButton;
    RzBitBtn2: TcxButton;
    Actions: TActionList;
    ActPreview: TAction;
    ActFechar: TAction;
    ActBuscarProd: TAction;
    LblStatus: TcxLabel;
    ANDA: TProgressBar;
    GroupBox1: TGroupBox;
    edDtFinal: TdxDateEdit;
    Label1: TcxLabel;
    edDtInicial: TdxDateEdit;
    Label2: TcxLabel;
    lblNomeArquivoRemessa: TcxLabel;
    ppTitulos: TppDBPipeline;
    rptTitulos: TppReport;
    ppTitleBand1: TppTitleBand;
    ppShape3: TppShape;
    lblRelatorio: TppLabel;
    lblTitulo: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppHeaderBand1: TppHeaderBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLine1: TppLine;
    ppDetailBand1: TppDetailBand;
    ppShape1: TppShape;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppShape14: TppShape;
    ppSystemVariable3: TppSystemVariable;
    ppSummaryBand1: TppSummaryBand;
    ppDBCalc1: TppDBCalc;
    CheckBoxList: TCheckBox;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLabel7: TppLabel;
    ppShape2: TppShape;
    CheckBoxUpd: TCheckBox;
    dsApp: TDataSource;
    ppAppRepresentante: TppDBPipeline;
    ppDBText7: TppDBText;
    procedure FormCreate(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cmbPessoaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edDtInicialEnter(Sender: TObject);
    procedure edDtInicialExit(Sender: TObject);
    procedure ActPreviewExecute(Sender: TObject);
  private
    { Private declarations }


  public
    { Public declarations }
  end;

var
  FRemessa: TFRemessa;
  Linha, Pagina: Integer;

implementation

uses Usuarios_DM,
     Application_DM,
     Funcoes,
     Financeiro_Dm ;

{$R *.DFM}

procedure TFRemessa.FormCreate(Sender: TObject);
begin
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, Self.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);

end;

procedure TFRemessa.ActFecharExecute(Sender: TObject);
begin
  Close;
end;

procedure TFRemessa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //

end;

procedure TFRemessa.cmbPessoaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFRemessa.edDtInicialEnter(Sender: TObject);
begin
     CorFundo ( Sender );
end;

procedure TFRemessa.edDtInicialExit(Sender: TObject);
begin
     //TROCA A COR PARA A COR SELECIONADA
     TiraCorFundo ( Sender );
end;

procedure TFRemessa.ActPreviewExecute(Sender: TObject);
begin
  if (((edDtInicial.date <=0) or (edDtFinal.date <=0)) or (edDtFinal.Date < edDtInicial.Date)) then
  begin
    application.messagebox('Intervalo de datas inválido','Aviso',mb_ok + MB_ICONINFORMATION);
    edDtInicial.setFocus;
    exit;
  end;

  dmapp.GeraRemessa(CheckBoxUpd.checked,EdDtInicial.date,EdDtFinal.date);

  if CheckBoxList.checked then
  begin
     lblTitulo.text := dmapp.nome+' - Listagem de Remessa';
     lblRelatorio.text := 'Período: '+FormatDateTime('dd/mm/yyyy',edDtInicial.date)+' à '+FormatDateTime('dd/mm/yyyy',edDtFinal.date);
     rptTitulos.print;
  end
end;

end.

