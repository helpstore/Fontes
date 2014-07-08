 unit Retorno_FRel;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, Db, dxExEdtr, dxEdLib, dxCntner, dxEditor, dxDBEdtr,
  dxDBELib, StdCtrls,  RDprint,   ComCtrls, ppCtrls,
  ppBands, ppVar, ppPrnabl, ppClass, ppDB, ppCache, ppProd, ppReport,
  ppComm, ppRelatv, ppDBPipe,   
   ppParameter,  Buttons,  dxmdaset, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  cxButtons, cxControls, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, cxProgressBar, cxTextEdit, cxMemo, cxLabel ;

type
   {Tipos de ocorrências permitidas no arquivos remessa / retorno}
     TFRetorno = class(TForm)
    Panel2: TPanel;
    RzPanel1: TPanel;
    lblTotalRegistro: tcxlabel;
    Actions: TActionList;
    ActPreview: TAction;
    ActFechar: TAction;
    ActBuscarProd: TAction;
    ActLerRetorno: TAction;
    ActRelatorio: TAction;
    ActBaixar: TAction;
    OpenDialog: TOpenDialog;
    ppRelRetorno: TppDBPipeline;
    mtbRetorno: TdxMemData;
    mtbRetornoOcorr: TStringField;
    mtbRetornoNossoNum: TStringField;
    mtbRetornoNumDoc: TStringField;
    mtbRetornoDataOco: TDateField;
    mtbRetornoDataCred: TDateField;
    mtbRetornoValorDoc: TCurrencyField;
    mtbRetornoValorMorJuro: TCurrencyField;
    mtbRetornoValorCredito: TCurrencyField;
    mtbRetornoAcrescimo: TCurrencyField;
    mtbRetornoDespCob: TCurrencyField;
    mtbRetornoSacado: TStringField;
    mtbRetornoCNPJ: TStringField;
    mtbRetornoMotivoRejeicao: TStringField;
    mtbRetornoTipoOco: TStringField;
    dsRelRetorno: TDataSource;
    rptRetorno: TppReport;
    ppTitleBand5: TppTitleBand;
    ppShape3: TppShape;
    ppSystemVariable3: TppSystemVariable;
    lblRelatorio: TppLabel;
    lblEmpresa: TppLabel;
    ppHeaderBand5: TppHeaderBand;
    lblN: TppLabel;
    ppLine1: TppLine;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel11: TppLabel;
    ppLabel15: TppLabel;
    lblNumRetorno: TppLabel;
    lblArquivo: TppLabel;
    ppDetailBand7: TppDetailBand;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppFooterBand5: TppFooterBand;
    ppLabel5: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppParameterList3: TppParameterList;
    ppSummaryBand1: TppSummaryBand;
    ppShape12: TppShape;
    ppSystemVariable4: TppSystemVariable;
    ppShape1: TppShape;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppShape2: TppShape;
    memRetorno: tcxmemo;
    RzRapidFireButton1: TcxButton;
    RzRapidFireButton2: TcxButton;
    RzRapidFireButton3: TcxButton;
    RzBitBtn1: TcxButton;
    pgbBaixaAutomatica: TcxProgressBar;
    ppAppRepresentante: TppDBPipeline;
    dsApp: TDataSource;
    ppDBText1: TppDBText;
    procedure FormCreate(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cmbPessoaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edDtInicialEnter(Sender: TObject);
    procedure edDtInicialExit(Sender: TObject);
    procedure ActLerRetornoExecute(Sender: TObject);
    procedure ActRelatorioExecute(Sender: TObject);
    procedure ActBaixarExecute(Sender: TObject);
  private
    { Private declarations }


  public
    { Public declarations }
  end;

var
  FRetorno: TFRetorno;
  Linha, Pagina: Integer;

implementation

uses Usuarios_DM,
     Application_DM,
     Funcoes,
     Financeiro_Dm ;

{$R *.DFM}

procedure TFRetorno.FormCreate(Sender: TObject);
begin
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, Self.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);

end;

procedure TFRetorno.ActFecharExecute(Sender: TObject);
begin
  Close;
end;

procedure TFRetorno.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //

end;

procedure TFRetorno.cmbPessoaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFRetorno.edDtInicialEnter(Sender: TObject);
begin
     CorFundo ( Sender );
end;

procedure TFRetorno.edDtInicialExit(Sender: TObject);
begin
     //TROCA A COR PARA A COR SELECIONADA
     TiraCorFundo ( Sender );
end;

procedure TFRetorno.ActLerRetornoExecute(Sender: TObject);
var
  DirZips,layout : string;
  i :integer;
begin
  Try
    //
  EXCEPT
    Raise;
  end;
  //ler retorno
end;

procedure TFRetorno.ActRelatorioExecute(Sender: TObject);
begin
// relatorio
  if mtbRetorno.IsEmpty then
  begin
    Application.MessageBox('Este arquivo não contém registros', 'Informação', MB_OK + MB_ICONINFORMATION);
    exit;
  end;
  {lblRelatorio.Text := 'Captura de Retorno - Banco: '+dmApp.gbCobranca.Titulos.Items[1].Cedente.ContaBancaria.Banco.Nome+
                       ' - Carteira: '+dmApp.gbCobranca.Titulos.Items[1].Carteira;
  lblEmpresa.Text := UpperCase(dmapp.Nome);
  rptRetorno.Print;}
end;

procedure TFRetorno.ActBaixarExecute(Sender: TObject);
begin
  if mtbRetorno.IsEmpty then
  begin
    Application.MessageBox('Este arquivo não contém registros', 'Informação', MB_OK + MB_ICONINFORMATION);
    exit;
  end;

  mtbRetorno.First;
  while not mtbRetorno.eof do
  begin
    {dmapp.BaixarBoletos.parambyname('cnpj').value := dmapp.Cnpj;
    dmapp.BaixarBoletos.parambyname('usuario').value := dmapp.UsuarioCaixa;
    dmapp.BaixarBoletos.parambyname('turno').value := dmapp.TurnoCaixa;
    dmapp.BaixarBoletos.parambyname('nossonum').value := mtbRetornoNossoNum.asinteger;
    dmapp.BaixarBoletos.parambyname('banco').value := StrToInt(dmApp.gbCobranca.Titulos.Items[1].Cedente.ContaBancaria.Banco.codigo);
    dmapp.BaixarBoletos.parambyname('VALOR_BX').value := mtbRetornoValorCredito.asfloat;
    dmapp.BaixarBoletos.parambyname('VLR_JUROS_BX').value := mtbRetornoValorMorJuro.asfloat;
    dmapp.BaixarBoletos.parambyname('DT_CRED').value := mtbRetornoDataCred.AsDateTime;
    dmApp.BaixarBoletos.ExecProc;}
    mtbRetorno.next;
  end;
  dmApp.BaixarBoletos.TRANSACTION.CommitRetaining;

end;

end.

