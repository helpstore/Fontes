 unit Localizar_Contratos_Copias;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Grids, DBGrids, Db, ActnList, dxDBGrid, dxTL, dxDBCtrl,
  dxCntner,   Buttons, ExtCtrls, dxGrClms, dxExEdtr, dxEditor,
  dxEdLib,   IBQuery,  IBCustomDataSet, cxPropertiesStore,
  dxDBTLCl, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
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
  TFrmLocContratosCopias = class(TForm)
    pnlClient: TPanel;
    Bevel3: TBevel;
    pnlTop: TPanel;
    Bevel2: TBevel;
    LblTitulo: TcxLabel;
    Actions: TActionList;
    ActOk: TAction;
    ActCancelar: TAction;
    DSource: TDataSource;
    Panel2: TPanel;
    RzBitBtn1: TcxButton;
    BtnCancelar: TcxButton;
    stgFrmLocContratosCopias: TcxPropertiesStore;
    Label1: TcxLabel;
    EdNome: TdxEdit;
    EdCodigo: TdxEdit;
    Label6: TcxLabel;
    Panel1: TPanel;
    GRID: TdxDBGrid;
    GRIDCNPJ: TdxDBGridMaskColumn;
    GRIDCODIGO: TdxDBGridMaskColumn;
    GRIDNUM_CONTRATO: TdxDBGridMaskColumn;
    GRIDCOD_CLIENTE: TdxDBGridMaskColumn;
    GRIDNOME_RAZAO: TdxDBGridMaskColumn;
    GRIDCOD_CONTRATO: TdxDBGridMaskColumn;
    GRIDVALOR_CONTRATO: TdxDBGridMaskColumn;
    GRIDFRANQUIA_COPIAS: TdxDBGridMaskColumn;
    GRIDVALOR_COPIA_EXCEDENTE: TdxDBGridMaskColumn;
    GRIDDT_INICIO: TdxDBGridDateColumn;
    GRIDDT_FIM: TdxDBGridDateColumn;
    GRIDTIPO_CONTRATO: TdxDBGridMaskColumn;
    GRIDDATA: TdxDBGridDateColumn;
    GRIDINFORMACOES: TdxDBGridMemoColumn;
    GRIDGERA_FATURAMENTO: TdxDBGridCheckColumn;
    GRIDGERA_LEITURA: TdxDBGridCheckColumn;
    GRIDATIVO: TdxDBGridCheckColumn;
    GRIDFANTASIA: TdxDBGridMaskColumn;
    procedure FormShow(Sender: TObject);
    procedure GridKeyPress(Sender: TObject; var Key: Char);
    procedure GridDblClick(Sender: TObject);
    procedure ActOkExecute(Sender: TObject);
    procedure ActCancelarExecute(Sender: TObject);
    procedure EdCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure GRIDEnter(Sender: TObject);
    procedure GRIDExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure EdCodigoEnter(Sender: TObject);
    procedure EdNomeEnter(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure pnlTopExit(Sender: TObject);
  private
    { Private declarations }
    sqlOriginal : string;
    function  GetTrecho: Integer;
  public
    { Public declarations }
    CampTrecho: integer;
  end;

var
  FrmLocContratosCopias: TFrmLocContratosCopias;

implementation

uses
    Application_DM,
    Funcoes,
    Main,
    Cadastros_DM, Usuarios_DM, Produtos_Form, Cadastros_Dm2;


{$R *.DFM}

function TFrmLocContratosCopias.GetTrecho: integer ;
begin
  Result := DSource.DataSet.FieldByName ('CODIGO').value ;
end;

procedure TFrmLocContratosCopias.FormShow(Sender: TObject);
begin
  IniciaComponentes ( Self as TForm );
  EdCodigo.Clear;
  EdNome.Clear;
  EdNome.SetFocus;
end;

procedure TFrmLocContratosCopias.GridKeyPress(Sender: TObject; var Key: Char);
begin
    If Key = #13  then
      ActOk.Execute
end;

procedure TFrmLocContratosCopias.GridDblClick(Sender: TObject);
begin
     ModalResult:=mrOk;
end;

procedure TFrmLocContratosCopias.ActOkExecute(Sender: TObject);
begin
  If (dmcadastros2.qryLocContratosCopiasCODIGO.asString <> '') then
  begin
    CampTrecho := GetTrecho;
    ModalResult := mrOk;
  end;
end;

procedure TFrmLocContratosCopias.ActCancelarExecute(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TFrmLocContratosCopias.EdCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmLocContratosCopias.GRIDEnter(Sender: TObject);
begin
  ActOk.ShortCut       := 13 ;
  ActCancelar.ShortCut := VK_F12 ;
end;

procedure TFrmLocContratosCopias.GRIDExit(Sender: TObject);
begin
   ActOk.ShortCut       := VK_F12 ;
   ActCancelar.ShortCut := 27 ;
end;

procedure TFrmLocContratosCopias.FormCreate(Sender: TObject);
begin
  // Se o Usuário for Supervisor
  if DMUsuarios.Direito = 'SUPERVISOR' then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, LblTitulo.Caption, ListaActions(Actions))
  else If DMUsuarios.Objeto = Self.Name then
     AtivaActions(Actions, DMUsuarios.Direito);

  sqlOriginal := DMCadastros2.qryLocContratosCopias.sql.text;
end;

procedure TFrmLocContratosCopias.EdCodigoEnter(Sender: TObject);
begin
  CorFundo( Sender );
end;

procedure TFrmLocContratosCopias.EdNomeEnter(Sender: TObject);
begin
  CorFundo( Sender );
end;

procedure TFrmLocContratosCopias.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  dmCadastros2.qryLocContratosCopias.sql.text := sqlOriginal;
end;


procedure TFrmLocContratosCopias.pnlTopExit(Sender: TObject);
var
  cod_cliente : integer;
  cliente : string;
begin
  with dmCadastros2 do
  begin
    if trim(edCodigo.text) = '' then
      cod_cliente := 0
    else
      cod_cliente := StrToInt(trim(edCodigo.text));

    if trim(edNome.text) = '' then
      cliente := ''
    else
      cliente := edNome.text;

    qryLocContratosCopias.close;
    qryLocContratosCopias.parambyname('cnpj').value := dmApp.cnpj;
    qryLocContratosCopias.parambyname('cod_cliente').value := cod_cliente;
    qryLocContratosCopias.parambyname('cliente').value:= cliente;
    qryLocContratosCopias.open;
    if (qryLocContratosCopias.RecordCount <= 0) then
    begin
      Application.Messagebox('Não há contratos a serem listados','Aviso',mb_ok+mb_iconerror);
      EdCodigo.setfocus;
    end
  end
end;

end.                ;

