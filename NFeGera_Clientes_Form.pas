 unit NFeGera_Clientes_Form;

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
  TfrmNFeGeraClientes = class(TForm)
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
    qryNFeClientes: TIBQuery;
    DataSource: TDataSource;
    qryNFeClientesCLIENTE: TIBStringField;
    GRIDRecId: TdxDBGridColumn;
    GRIDCOD_CLIENTE: TdxDBGridMaskColumn;
    GRIDNOME: TdxDBGridMaskColumn;
    GRIDCNPJ: TdxDBGridMaskColumn;
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
  frmNFeGeraClientes: TfrmNFeGeraClientes;
  Linha, Pagina: Integer;

implementation

uses  Usuarios_DM, Application_DM, Funcoes, NFeManutencao_Form;

{$R *.DFM}

procedure TfrmNFeGeraClientes.FormCreate(Sender: TObject);
begin
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, Self.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TfrmNFeGeraClientes.ActFecharExecute(Sender: TObject);
begin
  Close;
end;

procedure TfrmNFeGeraClientes.cmbPessoaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TfrmNFeGeraClientes.FormShow(Sender: TObject);
begin
  PGB.Max := FrmNFeManutencao.mtbCliente.RecordCount;
  IniciaComponentes(Self as TForm);
end;

procedure TfrmNFeGeraClientes.edCodigoInicialEnter(Sender: TObject);
begin
     CORFUNDO ( SENDER );
end;

procedure TfrmNFeGeraClientes.edCodigoInicialExit(Sender: TObject);
begin
     TIRACORFUNDO ( SENDER );
end;

procedure TfrmNFeGeraClientes.RzBitBtn1Click(Sender: TObject);
var
  nome : string;
begin
  mtbExportaLinha.FieldName := 'CLIENTE|'+IntToStr(FrmNFeManutencao.mtbCliente.RecordCount)+'|';
  mtbExporta.Open;
  if not mtbExporta.IsEmpty then
    mtbExporta.data.Values.Clear;


  FrmNFeManutencao.mtbCliente.First;
  while not FrmNFeManutencao.mtbCliente.eof do
  begin
    qryNFeClientes.Close;
    qryNFeClientes.parambyname('cnpj').value := dmApp.cnpj;
    qryNFeClientes.parambyname('codigo').value := FrmNFeManutencao.mtbClienteCOD_CLIENTE.value;
    qryNFeClientes.Open;

    qryNFeClientes.First;
    while not qryNFeClientes.eof do
    begin
      mtbExporta.append;
      mtbExportaLinha.value := NFe_RetiraCaracEspecial(uppercase(qryNFeClientesCLIENTE.asString));
      mtbExporta.Post;

      qryNFeClientes.Next;
    end;

    FrmNFeManutencao.mtbCliente.next;
    PGB.Position := PGB.Position + 1;
  end;
  Nome := ' NFe Clientes ['+DateTimeToStr(Now)+'].txt';
  Nome := StringReplace(Nome,'/','-',[rfReplaceAll]);
  Nome := StringReplace(Nome,':',';',[rfReplaceAll]);
  mtbExporta.SaveToTextFile('C:\'+Nome);
  ShowMessage('Arquivo exportado');

end;

end.
