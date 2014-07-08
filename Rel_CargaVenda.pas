   unit Rel_CargaVenda;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, StdCtrls, dxCntner, dxEditor, dxExEdtr, dxDBEdtr,
  dxDBELib,   ExtCtrls,  Db, ppProd, ppClass, ppReport,
  ppComm, ppRelatv, ppDB, ppDBPipe, ppCtrls, ppPrnabl, ppBands, ppCache,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus, cxControls,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, ppParameter, cxLabel, cxButtons,  cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar;

type
  TFRel_CargaVenda = class(TForm)
    Panel2: TPanel;
    BtnOk: TcxButton;
    RzBitBtn2: TcxButton;
    pnlClient: TPanel;
    b2: TBevel;
    LblTitulo: TcxLabel;
    GroupBox1: TGroupBox;
    Label9: TcxLabel;
    cmbCliente: TdxLookupEdit;
    gbData: TGroupBox;
    Label4: TcxLabel;
    Label5: TcxLabel;
    edAs1: TcxLabel;
    edAs3: TcxLabel;
    DataInicial: tcxDateEdit;
    DataFinal: tcxDateEdit;
    dsCliente: TDataSource;
    ppFatVendasCli: TppDBPipeline;
    rptFatVendasCli: TppReport;
    dsFatVendasCli: TDataSource;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLine9: TppLine;
    ppDBText131: TppDBText;
    ppLabel62: TppLabel;
    ppLabel63: TppLabel;
    ppLabel64: TppLabel;
    ppLabel69: TppLabel;
    ppDBText141: TppDBText;
    ppLabel70: TppLabel;
    ppLabel71: TppLabel;
    ppLabel72: TppLabel;
    ppLabel73: TppLabel;
    ppLabel80: TppLabel;
    ppLabel81: TppLabel;
    ppLabel82: TppLabel;
    ppLabel83: TppLabel;
    ppLabel84: TppLabel;
    ppLabel85: TppLabel;
    ppLabel86: TppLabel;
    ppLabel87: TppLabel;
    ppLabel88: TppLabel;
    ppLabel89: TppLabel;
    ppLabel6: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    procedure RzBitBtn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BtnOkClick(Sender: TObject);
    function CompletaWhere(sFiltro, texto:string):string;
    procedure DataInicialEnter(Sender: TObject);
    procedure DataInicialExit(Sender: TObject);
    procedure DataInicialKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    sFiltro, filtro : string;  
    { Public declarations }
  end;

var
  FRel_CargaVenda: TFRel_CargaVenda;

implementation

uses Servicos_DM, Funcoes, Relatorios_DM, Application_DM;

{$R *.DFM}

procedure TFRel_CargaVenda.RzBitBtn2Click(Sender: TObject);
begin
     Modalresult := mrCancel ;
end;

procedure TFRel_CargaVenda.FormCreate(Sender: TObject);
begin
      DmServicos.SelPessoasFJ.close;
      DmServicos.SelPessoasFJ.Open;;
      DmServicos.SelPessoasFJ.fetchAll;

end;

procedure TFRel_CargaVenda.BtnOkClick(Sender: TObject);
var
  sOrder, tpdata : string;
begin
  //----------------------------- Filtro da Data Inicial --------------------------------------
  if (DataInicial.date <= 0) then
  begin
    application.messagebox('Defina a data inicial','Aviso',mb_ok + mb_iconinformation);
    DataInicial.setfocus;
    exit;
  end;

  if (DataFinal.date <= 0) then
  begin
    application.messagebox('Defina a data final','Aviso',mb_ok + mb_iconinformation);
    DataFinal.setfocus;
    exit;
  end;

  DMRelatorios.Fat_VendasCli.Close;
  //--------------------------------- Filtro Cliente -------------------------------------------
  If CmbCliente.Text = '' Then
     DMRelatorios.Fat_VendasCli.ParamByName('CLIENTE').value := 0
  else
     DMRelatorios.Fat_VendasCli.ParamByName('CLIENTE').value := DmServicos.SelPessoasFJPESSOA_FJ.Value;

  //--------------------------------- Filtro Padrão -------------------------------------------
//  DMRelatorios.Fat_VendasCli.ParamByName('CNPJ').asString    := DMApp.Cnpj;
//  DMRelatorios.Fat_VendasCli.ParamByName('DTINIC').asString  := DataInicial.Text;
//  DMRelatorios.Fat_VendasCli.ParamByName('DTFINAL').asString := DataFinal.Text;
//  DMRelatorios.Fat_VendasCli.Open;

  If( DMRelatorios.Fat_VendasCli.RecordCount = 0 )Then
  Begin
      ShowMessage('Não há registro a imprimir para o período, verifique !');
      DMRelatorios.Fat_VendasCli.Close;
      Exit;
  End

end;

function TFRel_CargaVenda.CompletaWhere(sFiltro, texto: string): string;
begin
  if sFiltro = '' then
     texto := ' where ' + texto
  else
     texto := sFiltro + ' and ' + texto;
  Result := texto;
end;

procedure TFRel_CargaVenda.DataInicialEnter(Sender: TObject);
begin
  CORFUNDO(SENDER);
end;

procedure TFRel_CargaVenda.DataInicialExit(Sender: TObject);
begin
  TIRACORFUNDO(SENDER);
end;

procedure TFRel_CargaVenda.DataInicialKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
       Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

end.
