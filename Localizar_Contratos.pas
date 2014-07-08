   unit Localizar_Contratos;

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
  dxSkinXmas2008Blue, Menus, cxButtons, cxLabel, cxGroupBox, cxRadioGroup;

type
  TFrmLocContratos = class(TForm)
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
    stgFrmLocContratos: TcxPropertiesStore;
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
    rdStatus: TcxRadioGroup;
    qryLocContratos: TIBQuery;
    qryLocContratosCNPJ: TIBStringField;
    qryLocContratosCODIGO: TIntegerField;
    qryLocContratosCOD_CLIENTE: TIntegerField;
    qryLocContratosCOD_CONTRATO: TIntegerField;
    qryLocContratosNUM_CONTRATO: TIBStringField;
    qryLocContratosDT_INICIO: TDateTimeField;
    qryLocContratosDT_FIM: TDateTimeField;
    qryLocContratosATIVO: TIBStringField;
    qryLocContratosINFORMACOES: TMemoField;
    qryLocContratosDATA: TDateField;
    qryLocContratosGERA_FATURAMENTO: TIBStringField;
    qryLocContratosNOME_RAZAO: TIBStringField;
    qryLocContratosTIPO_CONTRATO: TIBStringField;
    qryLocContratosFANTASIA: TIBStringField;
    qryLocContratosVALOR_CONTRATO: TFloatField;
    qryLocContratosFRANQUIA_COPIAS: TIntegerField;
    qryLocContratosVALOR_COPIA_EXCEDENTE: TFloatField;
    qryLocContratosGERA_LEITURA: TIBStringField;
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
  FrmLocContratos: TFrmLocContratos;

implementation

uses
    Application_DM,
    Funcoes,
    Main,
    Cadastros_DM, Usuarios_DM, Produtos_Form, Cadastros_Dm2;


{$R *.DFM}

function TFrmLocContratos.GetTrecho: integer ;
begin
  Result := DSource.DataSet.FieldByName ('CODIGO').value ;
end;

procedure TFrmLocContratos.FormShow(Sender: TObject);
begin
  IniciaComponentes ( Self as TForm );
  EdCodigo.Clear;
  EdNome.Clear;
  EdNome.SetFocus;
end;

procedure TFrmLocContratos.GridKeyPress(Sender: TObject; var Key: Char);
begin
    If Key = #13  then
      ActOk.Execute
end;

procedure TFrmLocContratos.GridDblClick(Sender: TObject);
begin
     ModalResult:=mrOk;
end;

procedure TFrmLocContratos.ActOkExecute(Sender: TObject);
begin
  If (qryLocContratosCODIGO.asString <> '') then
  begin
    CampTrecho := GetTrecho;
    ModalResult := mrOk;
  end;
end;

procedure TFrmLocContratos.ActCancelarExecute(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TFrmLocContratos.EdCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmLocContratos.GRIDEnter(Sender: TObject);
begin
  ActOk.ShortCut       := 13 ;
  ActCancelar.ShortCut := VK_F12 ;
end;

procedure TFrmLocContratos.GRIDExit(Sender: TObject);
begin
   ActOk.ShortCut       := VK_F12 ;
   ActCancelar.ShortCut := 27 ;
end;

procedure TFrmLocContratos.FormCreate(Sender: TObject);
begin
  // Se o Usuário for Supervisor
  if DMUsuarios.Direito = 'SUPERVISOR' then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, LblTitulo.Caption, ListaActions(Actions))
  else If DMUsuarios.Objeto = Self.Name then
     AtivaActions(Actions, DMUsuarios.Direito);

  sqlOriginal := qryLocContratos.sql.text;
end;

procedure TFrmLocContratos.EdCodigoEnter(Sender: TObject);
begin
  CorFundo( Sender );
end;

procedure TFrmLocContratos.EdNomeEnter(Sender: TObject);
begin
  CorFundo( Sender );
end;

procedure TFrmLocContratos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qryLocContratos.sql.text := sqlOriginal;
end;


procedure TFrmLocContratos.pnlTopExit(Sender: TObject);
var
  cod_cliente : integer;
  cliente, ativo : string;
begin

    if trim(edCodigo.text) = '' then
      cod_cliente := 0
    else
      cod_cliente := StrToInt(trim(edCodigo.text));

    if trim(edNome.text) = '' then
      cliente := ''
    else
      cliente := edNome.text;


    case rdStatus.ItemIndex of
      0: ativo := 'S';
      1: ativo := 'N';
      2: ativo := '';
    end ;
    
    qryLocContratos.close;
    qryLocContratos.parambyname('cnpj').value := dmApp.cnpj;
    qryLocContratos.parambyname('cod_cliente').value := cod_cliente;
    qryLocContratos.parambyname('cliente').value:= cliente;
    qryLocContratos.parambyname('ativo').value:= ativo;
    qryLocContratos.open;
    if (qryLocContratos.RecordCount <= 0) then
    begin
      Application.Messagebox('Não há contratos a serem listados','Aviso',mb_ok+mb_iconerror);
      EdCodigo.setfocus;
    end

end;

end.

