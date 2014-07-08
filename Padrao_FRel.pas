unit Padrao_FRel;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, Db, dxExEdtr, dxEdLib, dxCntner, dxEditor, dxDBEdtr,
  dxDBELib, StdCtrls,  RDprint,  ComCtrls,  
  ppBands, ppClass, ppDB, ppDBPipe, ppModule, raCodMod, ppCtrls, ppVar,
  ppPrnabl, ppCache, ppComm, ppRelatv, ppProd, ppReport,IBQuery,  
  cxPropertiesStore, ppParameter, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, Menus, cxButtons, cxLabel, cxGroupBox, cxRadioGroup,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, IBCustomDataSet, dxmdaset, cxCheckBox, ppEndUsr,
  ImgList;

type
  TFRelPadrao = class(TForm)
    pnlClient: TPanel;
    Panel2: TPanel;
    RzBitBtn1: TcxButton;
    RzBitBtn2: TcxButton;
    Actions: TActionList;
    LblTitulo: TcxLabel;
    b2: TBevel;
    Report: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppDetailBand2: TppDetailBand;
    ppFooterBand2: TppFooterBand;
    ppShape1: TppShape;
    ppSystemVariable5: TppSystemVariable;
    ppSummaryBand1: TppSummaryBand;
    raCodeModule2: TraCodeModule;
    ppReport: TppDBPipeline;
    dsRelatorio: TDataSource;
    ppTitleBand1: TppTitleBand;
    ppShape5: TppShape;
    ppSystemVariable2: TppSystemVariable;
    ppLblTitulo: TppLabel;
    lblEmpresa: TppLabel;
    ppLblFiltro: TppLabel;
    Storage: TcxPropertiesStore;
    mtbFiltro: TdxMemData;
    dsFiltro: TDataSource;
    edtRel: TIBDataSet;
    edtRelID: TIntegerField;
    edtRelCNPJ: TIBStringField;
    edtRelRELATORIO: TIBStringField;
    edtRelCONFIG: TMemoField;
    Designer: TppDesigner;
    ppDesigner: TppDBPipeline;
    dsEdtRel: TDataSource;
    gbGeral: TcxGroupBox;
    ActImprimir: TAction;
    ActConfigurar: TAction;
    cxButton1: TcxButton;
    cxImageList1: TcxImageList;
    qryRelatorio: TIBQuery;
    ActClose: TAction;
    dsApp: TDataSource;
    ppAppRepresentante: TppDBPipeline;
    ppDBText1: TppDBText;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ActImprimirExecute(Sender: TObject);
    procedure ActConfigurarExecute(Sender: TObject);
    procedure edtRelBeforePost(DataSet: TDataSet);
    procedure ActCloseExecute(Sender: TObject);
  private
    { Private declarations }
    SqlOriginal : string;
    procedure AbreDataSets;
  public
   procedure VerificaTemplate;
   procedure CarregaTemplateBD;
   procedure SetaCabecalho;
    { Public declarations }
  end;

var
  FRelPadrao: TFRelPadrao;
  Linha, Pagina: Integer;

implementation

uses Relatorios_DM, Usuarios_DM, Application_DM, Funcoes;

{$R *.DFM}

procedure TFRelPadrao.FormCreate(Sender: TObject);
begin
  if (DMUsuarios <> nil) then
  begin
    // Se o Usuário for Supervisor
    If DMUsuarios.Direito = 'SUPERVISOR' Then
       DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, Self.Caption, ListaActions(Actions))
    Else If DMUsuarios.Objeto = Self.Name Then
       AtivaActions(Actions, DMUsuarios.Direito);
  end;

  sqlOriginal := qryRelatorio.SQL.Text;
  //Abrindo todos os datasets com tag 0 no relatorio
  mtbFiltro.Open;
  mtbFiltro.Edit;
  AbreDataSets;
end;

procedure TFRelPadrao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if (edtRel.Transaction.Active) then
    edtRel.Transaction.CommitRetaining;

  Action := caFree;
  FRelPadrao := Nil;
end;

procedure TFRelPadrao.FormShow(Sender: TObject);
begin
  IniciaComponentes(Self as TForm);
  Try
    AbreDataSets;
    VerificaTemplate;
  Except
    On E:Exception Do
       Begin
         Application.MessageBox(Pchar('Ocorreu o seguinte erro: '+E.Message),'Aviso',mb_iconerror+mb_ok);
         Exit;
       end
  end;
end;

procedure TFRelPadrao.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
       Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFRelPadrao.ActImprimirExecute(Sender: TObject);
begin
    SetaCabecalho;
    {ppLblFiltro.Caption := '';
    ppLabelRodape.Caption :=  dmApp.QryParceiroPARC_NOME_FANTASIA.AsString+' - Fone: '+dmApp.QryParceiroPARC_SUPORTE_FONE.AsString;
    lblEmpresa.Caption := dmapp.nome;
    ppLblTitulo.Caption := LblTitulo.caption;}
end;

procedure TFRelPadrao.AbreDataSets;
var
 i : integer;
begin
  For i := 0 to ComponentCount - 1 do
  begin
     if (Components[I] is TIBDataSet) then
     begin
       if TIBDataSet(Components[I]).tag = 0 then
       begin
         TIBDataSet(Components[I]).Close;
         TIBDataSet(Components[I]).Parambyname('cnpj').value := dmApp.cnpj;
         TIBDataSet(Components[I]).Open;
       end;
     end
     else if (Components[I] is TIBQuery) then
     begin
       if TIBQuery(Components[I]).tag = 0 then
       begin
         TIBQuery(Components[I]).Close;
         TIBQuery(Components[I]).Parambyname('cnpj').value := dmApp.cnpj;
         TIBQuery(Components[I]).Open;
       end;
     end
  end
end;

procedure TFRelPadrao.VerificaTemplate;
begin
  edtRel.Close;
  edtRel.parambyname('cnpj').value := dmApp.cnpj;
  edtRel.parambyname('relatorio').value := lblTitulo.caption;
  edtRel.Open;
  edtRel.fetchAll;
  if edtRelID.AsInteger = 0 then
  begin
    Report.Template.DatabaseSettings.Name := lblTitulo.caption;
    Report.Template.SaveToDatabase;
  end
end;

procedure TFRelPadrao.ActConfigurarExecute(Sender: TObject);
begin
  CarregaTemplateBD;
  Designer.Icon := Application.Icon;
  Designer.Caption := 'Configurar '+lblTitulo.caption;
  Designer.Show;
  edtRel.Edit;
end;

procedure TFRelPadrao.CarregaTemplateBD;
begin
  edtRel.Close;
  edtRel.parambyname('cnpj').value := dmApp.cnpj;
  edtRel.parambyname('relatorio').value := lblTitulo.caption;
  edtRel.Open;

  Report.Template.DatabaseSettings.Name := lblTitulo.caption;
  Report.Template.LoadFromDatabase;
end;

procedure TFRelPadrao.edtRelBeforePost(DataSet: TDataSet);
begin
  edtRelCNPJ.value := dmApp.cnpj;
end;

procedure TFRelPadrao.ActCloseExecute(Sender: TObject);
begin
  close;
end;

procedure TFRelPadrao.SetaCabecalho;
var
  aux : string;
begin
    aux := dmApp.QryParceiroPARC_NOME_FANTASIA.AsString+' - Fone: '+dmApp.QryParceiroPARC_SUPORTE_FONE.AsString;
    qryRelatorio.SQL.Text := SqlOriginal;
    CarregaTemplateBD;
    ppLblFiltro.Text := '';
    lblEmpresa.Text := dmapp.nome;
    ppLblTitulo.Text := LblTitulo.caption;
    Report.Icon := Application.Icon;
end;

end.
