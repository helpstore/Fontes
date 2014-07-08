 unit Filtro_Vendedor_Romaneio;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, dxCntner, dxEditor, dxExEdtr, dxEdLib, StdCtrls,
  ActnList,  Db, dxDBEdtr, dxDBELib, Buttons, dxBar,
  cxPropertiesStore, dxTL, dxDBCtrl, dxDBGrid, dxDBTLCl, dxGrClms,
  cxGraphics, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxDBEdit, cxControls, cxContainer, cxEdit,
  cxTextEdit, cxMaskEdit, cxButtonEdit, Menus, dxmdaset, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, cxButtons, cxLabel;

type
  TFrmFiltraVendedorRomaneio = class(TForm)
    pnlClient: TPanel;
    Label1: TcxLabel;
    Panel6: TPanel;
    Panel8: TPanel;
    Panel2: TPanel;
    BtnOk: TcxButton;
    BtnCancelar: TcxButton;
    GRID: TdxDBGrid;
    LblTitulo: TcxLabel;
    PopSelecao: TPopupMenu;
    MarcarTodososRegistros1: TMenuItem;
    DesmarcarTodososRegistros1: TMenuItem;
    Actions: TActionList;
    ActFechar: TAction;
    ActOk: TAction;
    ActCancelar: TAction;
    ActSelecionar: TAction;
    ActSelecionaTodos: TAction;
    ActDesmarcaTodos: TAction;
    datasource: TDataSource;
    stgFrmFiltraParceiroEmail: TcxPropertiesStore;
    TBLFILTRO: TdxMemData;
    TBLFILTROCODIGO: TIntegerField;
    TBLFILTRONOME: TStringField;
    TBLFILTROSEL: TBooleanField;
    GRIDRecId: TdxDBGridColumn;
    GRIDCODIGO: TdxDBGridMaskColumn;
    GRIDNOME: TdxDBGridMaskColumn;
    GRIDSEL: TdxDBGridCheckColumn;
    procedure ActFecharExecute(Sender: TObject);
    procedure IniKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure IniEnter(Sender: TObject);
    procedure IniExit(Sender: TObject);
    procedure ActOkExecute(Sender: TObject);
    procedure ActCancelarExecute(Sender: TObject);
    procedure ActSelecionarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ActSelecionaTodosExecute(Sender: TObject);
    procedure ActDesmarcaTodosExecute(Sender: TObject);
  private
    { Private declarations }

  public
    filtro, nome : string;
    cont: integer;
    { Public declarations }
  end;

var
  FrmFiltraVendedorRomaneio: TFrmFiltraVendedorRomaneio;

implementation

uses Cadastros_DM, Application_DM, Funcoes, Financeiro_Dm2,
   SerieCustomizaveis_DM, SeriesCustomizaveis,
  Cadastros_Dm2, Act_Contas_Form, Act_Renegociacao_Form,
  Cheque_Acerto_Form, Mov_Banc_Acerto_Form;

{$R *.DFM}

procedure TFrmFiltraVendedorRomaneio.ActFecharExecute(Sender: TObject);
begin
   Modalresult := mrCancel ;
end;

procedure TFrmFiltraVendedorRomaneio.IniKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmFiltraVendedorRomaneio.FormShow(Sender: TObject);
begin
//  IniciaComponentes ( Self as TForm );

end;

procedure TFrmFiltraVendedorRomaneio.IniEnter(Sender: TObject);
begin
     CORFUNDO( SENDER );
end;

procedure TFrmFiltraVendedorRomaneio.IniExit(Sender: TObject);
begin
     TIRACORFUNDO( SENDER );
end;

procedure TFrmFiltraVendedorRomaneio.ActOkExecute(Sender: TObject);
var
  xnome : string;
begin
  filtro := '';
  cont := 0;
  TBLFILTRO.First;
  while not TBLFILTRO.Eof do
  begin
    if (TBLFILTROSEL.value) then
    begin
      if (filtro = '') then
        filtro := '('
      else
        filtro := filtro + ',';

      filtro := filtro + TBLFILTROCODIGO.AsString;

      cont := cont + 1;
      xnome := TBLFILTRONOME.value
    end;
    TBLFILTRO.Next;
  end;

  if (filtro <> '') then
    filtro := ' in '+filtro + ')';

  if (cont > 1) then
    nome := '<Vários Registros>'
  else
    nome := xnome;
  modalresult := mrok;
end;

procedure TFrmFiltraVendedorRomaneio.ActCancelarExecute(Sender: TObject);
begin
  cont := 0;
  modalresult := mrcancel;
end;

procedure TFrmFiltraVendedorRomaneio.ActSelecionarExecute(Sender: TObject);
begin
  if (TBLFILTRO.state <> dsEdit) then
     TBLFILTRO.edit;
  
  if (TBLFILTROSEL.VALUE) then
    TBLFILTROSEL.value := false
  else
    TBLFILTROSEL.value := true;
end;

procedure TFrmFiltraVendedorRomaneio.FormCreate(Sender: TObject);
begin
  with DMCadastros do
  begin
    SelVendedor.close;
    SelVendedor.parambyname('cnpj').value := dmApp.cnpj;
    SelVendedor.Open;
    SelVendedor.First;
    TBLFILTRO.Close;
    TBLFILTRO.OPEN;
    while not SelVendedor.eof do
    begin
      TBLFILTRO.Append;
      TBLFILTRONOME.VALUE := SelVendedorNOME.value;
      TBLFILTROCODIGO.VALUE := SelVendedorCODIGO.value;
      TBLFILTROSEL.VALUE := false;
      SelVendedor.next;
    end;
  end;
end;

procedure TFrmFiltraVendedorRomaneio.ActSelecionaTodosExecute(
  Sender: TObject);
begin
  if (Application.MessageBox('Deseja marcar todos os registros?','Aviso',mb_iconquestion+mb_yesno) = id_no) then
    exit;

  TBLFILTRO.DisableControls;
  TBLFILTRO.First;
  while not TBLFILTRO.eof do
  begin
    if (TBLFILTROSel.value)  then
    begin
      if TBLFILTRO.state <> dsedit then
        TBLFILTRO.edit;

      TBLFILTROSEL.value := TRUE;
    end;

    TBLFILTRO.next;
  end;

  TBLFILTRO.EnableControls;
  Application.MessageBox('Registros marcados com sucesso','Aviso',mb_iconinformation+mb_ok);
end;

procedure TFrmFiltraVendedorRomaneio.ActDesmarcaTodosExecute(Sender: TObject);
begin
  if (Application.MessageBox('Deseja desmarcar todos os registros?','Aviso',mb_iconquestion+mb_yesno) = id_no) then
    exit;

  TBLFILTRO.DisableControls;
  TBLFILTRO.First;
  while not TBLFILTRO.eof do
  begin
    if (TBLFILTROSEL.value)  then
    begin
      if TBLFILTRO.state <> dsedit then
        TBLFILTRO.edit;

      TBLFILTROSEL.value := false;
    end;

    TBLFILTRO.next;
  end;

  TBLFILTRO.EnableControls;
  Application.MessageBox('Registros desmarcados com sucesso','Aviso',mb_iconinformation+mb_ok);
end;

end.
