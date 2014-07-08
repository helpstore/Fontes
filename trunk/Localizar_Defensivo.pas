  unit Localizar_Defensivo;

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
  TFrmLocDefensivos = class(TForm)
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
    stgFrmLocDefensivos: TcxPropertiesStore;
    Label1: TcxLabel;
    EdNome: TdxEdit;
    EdCodigo: TdxEdit;
    Label6: TcxLabel;
    Panel1: TPanel;
    GRID: TdxDBGrid;
    GRIDCODIGO: TdxDBGridMaskColumn;
    GRIDCOD_PRODUTO: TdxDBGridMaskColumn;
    GRIDPRODUTO: TdxDBGridMaskColumn;
    GRIDCATEGORIA: TdxDBGridMaskColumn;
    GRIDCLASS_TOXICOLOGICA: TdxDBGridMaskColumn;
    GRIDCLASS_AMBIENTAL: TdxDBGridMaskColumn;
    GRIDCLASS_QUIMICA: TdxDBGridMaskColumn;
    GRIDFABRICANTE: TdxDBGridMaskColumn;
    GRIDMAT_EMBALAGEM: TdxDBGridMaskColumn;
    GRIDOR_TECNICA: TdxDBGridMaskColumn;
    GRIDOR_COMPLEMENTAR: TdxDBGridMaskColumn;
    GRIDINFO_APLICACAO: TdxDBGridMaskColumn;
    GRIDOR_EQUIPAMENTO: TdxDBGridMaskColumn;
    GRIDREGISTRANTE: TdxDBGridMaskColumn;
    GRIDNOME_TECNICO: TdxDBGridMaskColumn;
    GRIDNOME_COMUM: TdxDBGridMaskColumn;
    GRIDFORMULACAO: TdxDBGridMaskColumn;
    GRIDINGREDIENTE_ATIVO: TdxDBGridMaskColumn;
    GRIDCONCENTRACAO: TdxDBGridMaskColumn;
    GRIDFORMULA_BRUTA: TdxDBGridMaskColumn;
    GRIDNUMERO_REGISTRO: TdxDBGridMaskColumn;
    GRIDNUMERO_RISCO: TdxDBGridMaskColumn;
    GRIDNUMERO_ONU: TdxDBGridMaskColumn;
    GRIDCLASSE_RISCO: TdxDBGridMaskColumn;
    GRIDDESCRICAO_CLASSE_RISCO: TdxDBGridMaskColumn;
    GRIDNOME_APROP_EMBARQUE: TdxDBGridMaskColumn;
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
    procedure EdCodigoExit(Sender: TObject);
    procedure EdNomeExit(Sender: TObject);
  private
    { Private declarations }
    sqlOriginal : string;
    function  GetTrecho: Integer;
  public
    { Public declarations }
    CampTrecho: integer;
  end;

var
  FrmLocDefensivos: TFrmLocDefensivos;

implementation

uses
    Application_DM,
    Funcoes,
    Main,
    Cadastros_DM, Usuarios_DM, Produtos_Form, Cadastros_Dm2;


{$R *.DFM}

function TFrmLocDefensivos.GetTrecho: integer ;
begin
  Result := DSource.DataSet.FieldByName ('CODIGO').value ;
end;

procedure TFrmLocDefensivos.FormShow(Sender: TObject);
begin
  IniciaComponentes ( Self as TForm );
  EdCodigo.Clear;
  EdNome.Clear;
  EdNome.SetFocus;
end;

procedure TFrmLocDefensivos.GridKeyPress(Sender: TObject; var Key: Char);
begin
    If Key = #13  then
      ActOk.Execute
end;

procedure TFrmLocDefensivos.GridDblClick(Sender: TObject);
begin
     ModalResult:=mrOk;
end;

procedure TFrmLocDefensivos.ActOkExecute(Sender: TObject);
begin
  If (dmcadastros2.qryLocDefensivosCODIGO.asString <> '') then
  begin
    CampTrecho := GetTrecho;
    ModalResult := mrOk;
  end;
end;

procedure TFrmLocDefensivos.ActCancelarExecute(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TFrmLocDefensivos.EdCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmLocDefensivos.GRIDEnter(Sender: TObject);
begin
  ActOk.ShortCut       := 13 ;
  ActCancelar.ShortCut := VK_F12 ;
end;

procedure TFrmLocDefensivos.GRIDExit(Sender: TObject);
begin
   ActOk.ShortCut       := VK_F12 ;
   ActCancelar.ShortCut := 27 ;
end;

procedure TFrmLocDefensivos.FormCreate(Sender: TObject);
begin
  // Se o Usuário for Supervisor
  if DMUsuarios.Direito = 'SUPERVISOR' then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, LblTitulo.Caption, ListaActions(Actions))
  else If DMUsuarios.Objeto = Self.Name then
     AtivaActions(Actions, DMUsuarios.Direito);

  sqlOriginal := DMCadastros2.qryLocContratos.sql.text;
end;

procedure TFrmLocDefensivos.EdCodigoEnter(Sender: TObject);
begin
     CorFundo( Sender );
     EdCodigo.Clear ;
     EdNome.Clear ;
end;

procedure TFrmLocDefensivos.EdNomeEnter(Sender: TObject);
begin
     CorFundo( Sender );
     EdNome.Clear ;
     EdCodigo.Clear;
end;

procedure TFrmLocDefensivos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  dmCadastros2.qryLocContratos.sql.text := sqlOriginal;
end;

procedure TFrmLocDefensivos.pnlTopExit(Sender: TObject);
var
  cod_produto : string;
  produto : string;
begin
  with dmCadastros2 do
  begin
    if trim(edCodigo.text) = '' then
      cod_produto := ''
    else
      cod_produto := (trim(edCodigo.text));

    if trim(edNome.text) = '' then
      produto := ''
    else
      produto := edNome.text;

    qryLocDefensivos.close;
    qryLocDefensivos.parambyname('cnpj').value := dmApp.cnpj;
    qryLocDefensivos.parambyname('cod_produto').value := cod_produto;
    qryLocDefensivos.parambyname('produto').value:= produto;
    qryLocDefensivos.open;
    if (qryLocDefensivos.RecordCount <= 0) then
    begin
      Application.Messagebox('Não há contratos a serem listados','Aviso',mb_ok+mb_iconerror);
      EdCodigo.setfocus;
    end
  end
end;

procedure TFrmLocDefensivos.EdCodigoExit(Sender: TObject);
begin
   Grid.SetFocus ;
end;

procedure TFrmLocDefensivos.EdNomeExit(Sender: TObject);
begin
   Grid.SetFocus ;
end;

end.

