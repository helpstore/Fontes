 unit NFeGera_Transportadora_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, Db, dxExEdtr, dxEdLib, dxCntner, dxEditor, dxDBEdtr,
  dxDBELib, StdCtrls,  RDprint,   ComCtrls,   
  dxmdaset, dxTL, dxDBCtrl, dxDBGrid, dxDBTLCl, dxGrClms, IBCustomDataSet,
  IBQuery, raFunc, cxGraphics, cxControls, cxLookAndFeels,
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
  TfrmNFeGeraTransportadora = class(TForm)
    pnlClient: TPanel;
    Panel2: TPanel;
    RzBitBtn1: TcxButton;
    RzBitBtn2: TcxButton;
    Actions: TActionList;
    ActPreview: TAction;
    LblStatus: TcxLabel;
    PGB: TProgressBar;
    GRID: TdxDBGrid;
    mtbExporta: TdxMemData;
    mtbExportaLinha: TStringField;
    qryNFeTransportadoras: TIBQuery;
    DataSource: TDataSource;
    qryNFeTransportadorasTRANSPORTADORA: TIBStringField;
    GRIDRecId: TdxDBGridColumn;
    GRIDCODIGO: TdxDBGridMaskColumn;
    GRIDNOME: TdxDBGridMaskColumn;
    GRIDCPF_CNPJ: TdxDBGridMaskColumn;
    procedure FormCreate(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure cmbPessoaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure edCodigoInicialEnter(Sender: TObject);
    procedure edCodigoInicialExit(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
  private
    { Private declarations }
    Grupo, SubGrupo: Integer;
  public
    { Public declarations }
  end;

var
  frmNFeGeraTransportadora: TfrmNFeGeraTransportadora;
  Linha, Pagina: Integer;

implementation

uses  Usuarios_DM, Application_DM, Funcoes, NFeManutencao_Form;

{$R *.DFM}

procedure TfrmNFeGeraTransportadora.FormCreate(Sender: TObject);
begin
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, Self.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TfrmNFeGeraTransportadora.ActFecharExecute(Sender: TObject);
begin
  Close;
end;

procedure TfrmNFeGeraTransportadora.cmbPessoaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TfrmNFeGeraTransportadora.FormShow(Sender: TObject);
begin
  PGB.Max := FrmNFeManutencao.mtbCliente.RecordCount;
  IniciaComponentes(Self as TForm);
end;

procedure TfrmNFeGeraTransportadora.edCodigoInicialEnter(Sender: TObject);
begin
     CORFUNDO ( SENDER );
end;

procedure TfrmNFeGeraTransportadora.edCodigoInicialExit(Sender: TObject);
begin
     TIRACORFUNDO ( SENDER );
end;

procedure TfrmNFeGeraTransportadora.RzBitBtn1Click(Sender: TObject);
var
  nome : string;
begin
  mtbExportaLinha.FieldName := 'TRANSPORTADORA|'+IntToStr(FrmNFeManutencao.mtbTransportadora.RecordCount)+'|';
  mtbExporta.Open;
  if not mtbExporta.IsEmpty then
    mtbExporta.data.Values.Clear;


  FrmNFeManutencao.mtbTransportadora.First;
  while not FrmNFeManutencao.mtbTransportadora.eof do
  begin
    qryNFeTransportadoras.Close;
    qryNFeTransportadoras.parambyname('cnpj').value := dmApp.cnpj;
    qryNFeTransportadoras.parambyname('codigo').value := FrmNFeManutencao.mtbTransportadoraCODIGO.value;
    qryNFeTransportadoras.Open;

    qryNFeTransportadoras.First;
    while not qryNFeTransportadoras.eof do
    begin
      mtbExporta.append;
      mtbExportaLinha.value := NFe_RetiraCaracEspecial(uppercase(qryNFeTransportadorasTRANSPORTADORA.asString));
      mtbExporta.Post;

      qryNFeTransportadoras.Next;
    end;

    FrmNFeManutencao.mtbTransportadora.next;
    PGB.Position := PGB.Position + 1;
  end;
  Nome := ' NFe Transportadoras ['+DateTimeToStr(Now)+'].txt';
  Nome := StringReplace(Nome,'/','-',[rfReplaceAll]);
  Nome := StringReplace(Nome,':',';',[rfReplaceAll]);
  mtbExporta.SaveToTextFile('C:\'+Nome);
  ShowMessage('Arquivo exportado');

end;

end.
