   unit OrdensPeriodo_FRel;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, Db, dxExEdtr, dxEdLib, dxCntner, dxEditor, dxDBEdtr,
  dxDBELib, StdCtrls,  RDprint,   ComCtrls, 
  ppDB, ppDBPipe, ppComm, ppRelatv, ppProd, ppClass, ppReport, ppCtrls,
  ppVar, ppPrnabl, ppBands, ppCache, ppStrtch, ppRichTx, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue, Menus,
  ppParameter, cxButtons, cxLabel;

type
  TFRelHistoricoEquipamento = class(TForm)
    pnlClient: TPanel;
    Actions: TActionList;
    ActPreview: TAction;
    Label3: TcxLabel;
    Label1: TcxLabel;
    Ini: TdxDateEdit;
    Fim: TdxDateEdit;
    LblTitulo: TcxLabel;
    b2: TBevel;
    Panel2: TPanel;
    RzBitBtn1: TcxButton;
    RzBitBtn2: TcxButton;
    Label2: TcxLabel;
    CmbPessoa: TdxLookupEdit;
    DsPessoa: TDataSource;
    Label4: TcxLabel;
    CmbPropriedade: TdxLookupEdit;
    DsPropriedade: TDataSource;
    rptHistEquip: TppReport;
    ppHistEquip: TppDBPipeline;
    DsHistEquip: TDataSource;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppTitleBand1: TppTitleBand;
    ppGroup1: TppGroup;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppLabel1: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppDBText1: TppDBText;
    ppLabel2: TppLabel;
    ppDBText2: TppDBText;
    ppLabel3: TppLabel;
    ppDBText3: TppDBText;
    ppLabel5: TppLabel;
    ppDBText5: TppDBText;
    ppLabel6: TppLabel;
    ppDBText6: TppDBText;
    ppLabel7: TppLabel;
    ppDBText7: TppDBText;
    ppLabel8: TppLabel;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText11: TppDBText;
    ppLabel11: TppLabel;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppLabel13: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLabel14: TppLabel;
    ppLine7: TppLine;
    ppLabel4: TppLabel;
    ppDBRichText1: TppDBRichText;
    procedure FormCreate(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cmbPessoaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure ActPreviewExecute(Sender: TObject);
    procedure IniExit(Sender: TObject);
    procedure IniEnter(Sender: TObject);
    procedure CmbPessoaChange(Sender: TObject);
  private
    { Private declarations }
    Grupo, SubGrupo: Integer;
  public
    { Public declarations }
  end;

var
  FRelHistoricoEquipamento: TFRelHistoricoEquipamento;
  Linha, Pagina: Integer;

implementation

uses Relatorios_DM, Usuarios_DM, Application_DM, Funcoes, Relatorios_DM2;

{$R *.DFM}

procedure TFRelHistoricoEquipamento.FormCreate(Sender: TObject);
begin
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, Self.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);

 Ini.date := StrToDate('01/01/1900');
 Fim.date := Date;
end;

procedure TFRelHistoricoEquipamento.ActFecharExecute(Sender: TObject);
begin
  Close;
end;

procedure TFRelHistoricoEquipamento.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //
  DMRelatorios.SelCliente.CLOSE ;
  DMRelatorios2.SelPropriedade.CLOSE ;

  Action := caFree;
  FRelHistoricoEquipamento := Nil;
end;

procedure TFRelHistoricoEquipamento.cmbPessoaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFRelHistoricoEquipamento.FormShow(Sender: TObject);
begin
  //
  IniciaComponentes(Self as TForm);
  DMRelatorios.SelCliente.Open ;
end;

procedure TFRelHistoricoEquipamento.ActPreviewExecute(Sender: TObject);
begin
  if CmbPessoa.Text = '' then
  begin
    MessageDlg('Informe um cliente', mtWarning, [MbOk],0);
    exit;
  end;

  if CmbPropriedade.Text = '' then
  begin
    MessageDlg('Informe uma propriedade', mtWarning, [MbOk],0);
    exit;
  end;

  if Ini.Text = '  /  /    ' then
    Ini.Date := StrToDate('01/01/1900');
  if Fim.Text = '  /  /    ' then
    Fim.Date := StrToDate('01/01/9999');

  dmRelatorios2.qryRelHistoricoEquip.Close;
  dmRelatorios2.qryRelHistoricoEquip.parambyname('cnpj').AsString         := DMApp.Cnpj;
  dmRelatorios2.qryRelHistoricoEquip.parambyname('pessoa_fj').AsInteger   := DMRelatorios.SelClientePESSOA_FJ.AsInteger;
  dmRelatorios2.qryRelHistoricoEquip.parambyname('propriedade').AsInteger := dmRelatorios2.SelPropriedadePROPRIEDADE.AsInteger;
  dmRelatorios2.qryRelHistoricoEquip.parambyname('dtIni').asdate          := Ini.Date;
  dmRelatorios2.qryRelHistoricoEquip.parambyname('dtFim').asdate          := Fim.Date;
  dmRelatorios2.qryRelHistoricoEquip.Open;

  if dmRelatorios2.qryRelHistoricoEquip.recordcount = 0 then
  begin
    MessageDlg('Não foi encontrado histórico do equipamento selecionado!',MtInformation,[MbOk],0);
    exit;
  end;
  rptHistEquip.Print;

end;

procedure TFRelHistoricoEquipamento.IniExit(Sender: TObject);
begin
  TIRACorFundo ( Sender );
end;

procedure TFRelHistoricoEquipamento.IniEnter(Sender: TObject);
begin
     CorFundo ( Sender );
end;

procedure TFRelHistoricoEquipamento.CmbPessoaChange(Sender: TObject);
begin
   if (CmbPessoa.text <> '') then
   begin
     with dmRelatorios2 do
     begin
       SelPropriedade.Close;
       SelPropriedade.parambyname('pessoa_fj').AsInteger := CmbPessoa.LookupKeyValue;
       SelPropriedade.Open;
     end;
     CmbPropriedade.enabled := true;
   end
   else
    CmbPropriedade.enabled := false;
end;

end.
