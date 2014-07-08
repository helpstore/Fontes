 unit Localizar_Contratos_Obras;

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
  TFrmLocContratosObras = class(TForm)
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
    Label1: TcxLabel;
    EdNome: TdxEdit;
    EdCodigo: TdxEdit;
    Label6: TcxLabel;
    Panel1: TPanel;
    GRID: TdxDBGrid;
    qryLocContratosObra: TIBQuery;
    qryLocContratosObraCODIGO: TIntegerField;
    qryLocContratosObraDESCRICAO: TIBStringField;
    qryLocContratosObraDATA_INICIO: TDateField;
    qryLocContratosObraDATA_VENCTO: TDateField;
    qryLocContratosObraDATA: TDateField;
    qryLocContratosObraCPF_CNPJ: TIBStringField;
    qryLocContratosObraNOME: TIBStringField;
    qryLocContratosObraATIVO: TIBStringField;
    GRIDCODIGO: TdxDBGridMaskColumn;
    GRIDDESCRICAO: TdxDBGridMaskColumn;
    GRIDDATA_INICIO: TdxDBGridDateColumn;
    GRIDDATA_VENCTO: TdxDBGridDateColumn;
    GRIDDATA: TdxDBGridDateColumn;
    GRIDCPF_CNPJ: TdxDBGridMaskColumn;
    GRIDNOME: TdxDBGridMaskColumn;
    GRIDATIVO: TdxDBGridCheckColumn;
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
  FrmLocContratosObras: TFrmLocContratosObras;

implementation

uses
    Application_DM,
    Funcoes,
    Main,
    Cadastros_DM, Usuarios_DM, Produtos_Form, Cadastros_Dm2;


{$R *.DFM}

function TFrmLocContratosObras.GetTrecho: integer ;
begin
  Result := DSource.DataSet.FieldByName ('CODIGO').value ;
end;

procedure TFrmLocContratosObras.FormShow(Sender: TObject);
begin
  IniciaComponentes ( Self as TForm );
  EdCodigo.Clear;
  EdNome.Clear;
  EdNome.SetFocus;
end;

procedure TFrmLocContratosObras.GridKeyPress(Sender: TObject; var Key: Char);
begin
    If Key = #13  then
      ActOk.Execute
end;

procedure TFrmLocContratosObras.GridDblClick(Sender: TObject);
begin
     ModalResult:=mrOk;
end;

procedure TFrmLocContratosObras.ActOkExecute(Sender: TObject);
begin
  If (qryLocContratosObraCODIGO.asString <> '') then
  begin
    CampTrecho := GetTrecho;
    ModalResult := mrOk;
  end;
end;

procedure TFrmLocContratosObras.ActCancelarExecute(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TFrmLocContratosObras.EdCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmLocContratosObras.GRIDEnter(Sender: TObject);
begin
  ActOk.ShortCut       := 13 ;
  ActCancelar.ShortCut := VK_F12 ;
end;

procedure TFrmLocContratosObras.GRIDExit(Sender: TObject);
begin
   ActOk.ShortCut       := VK_F12 ;
   ActCancelar.ShortCut := 27 ;
end;

procedure TFrmLocContratosObras.FormCreate(Sender: TObject);
begin
  // Se o Usuário for Supervisor
  if DMUsuarios.Direito = 'SUPERVISOR' then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, LblTitulo.Caption, ListaActions(Actions))
  else If DMUsuarios.Objeto = Self.Name then
     AtivaActions(Actions, DMUsuarios.Direito);

  sqlOriginal := qryLocContratosObra.sql.text;
end;

procedure TFrmLocContratosObras.EdCodigoEnter(Sender: TObject);
begin
  CorFundo( Sender );
end;

procedure TFrmLocContratosObras.EdNomeEnter(Sender: TObject);
begin
  CorFundo( Sender );
end;

procedure TFrmLocContratosObras.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qryLocContratosObra.sql.text := sqlOriginal;
end;


procedure TFrmLocContratosObras.pnlTopExit(Sender: TObject);
var
  cod_cliente, cliente : string;
begin

    if trim(edCodigo.text) = '' then
      cod_cliente := ''
    else
      cod_cliente := (trim(edCodigo.text));

    if trim(edNome.text) = '' then
      cliente := ''
    else
      cliente := edNome.text;

    qryLocContratosObra.close;
    qryLocContratosObra.parambyname('cpf_cnpj').value := cod_cliente;
    qryLocContratosObra.parambyname('cliente').value:= cliente;
    qryLocContratosObra.open;
    if (qryLocContratosObra.RecordCount <= 0) then
    begin
      Application.Messagebox('Não há contratos a serem listados','Aviso',mb_ok+mb_iconerror);
      EdCodigo.setfocus;
    end

end;

end.                ;

