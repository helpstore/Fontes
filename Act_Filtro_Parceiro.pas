unit Act_Filtro_Parceiro;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, dxCntner, dxEditor, dxExEdtr, dxEdLib, StdCtrls,
  ActnList,  Db, dxDBEdtr, dxDBELib, Buttons, dxBar,
  cxPropertiesStore, dxTL, dxDBCtrl, dxDBGrid, dxDBTLCl, dxGrClms,
  cxGraphics, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxDBEdit, cxControls, cxContainer, cxEdit,
  cxTextEdit, cxMaskEdit, cxButtonEdit, Menus, cxLookAndFeels,
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
  TFrmFiltraParceiro = class(TForm)
    pnlClient: TPanel;
    Actions: TActionList;
    ActFechar: TAction;
    ActOk: TAction;
    dsPessoas: TDataSource;
    ActCancelar: TAction;
    Label1: TcxLabel;
    Panel6: TPanel;
    Panel8: TPanel;
    ActSelecionar: TAction;
    ActSelecionaTodos: TAction;
    ActDesmarcaTodos: TAction;
    PopSelecao: TPopupMenu;
    MarcarTodososRegistros1: TMenuItem;
    DesmarcarTodososRegistros1: TMenuItem;
    Panel2: TPanel;
    BtnOk: TcxButton;
    BtnCancelar: TcxButton;
    GRID: TdxDBGrid;
    GRIDCODIGO: TdxDBGridMaskColumn;
    GRIDNOME_RAZAO: TdxDBGridMaskColumn;
    GRIDFANTASIA: TdxDBGridMaskColumn;
    GRIDCPF_CGC: TdxDBGridMaskColumn;
    GRIDSELECIONADO: TdxDBGridCheckColumn;
    GRIDCNPJ: TdxDBGridMaskColumn;
    LblTitulo: TcxLabel;
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
    cont, codigo: integer;
    { Public declarations }
  end;

var
  FrmFiltraParceiro: TFrmFiltraParceiro;

implementation

uses Cadastros_DM, Application_DM, Funcoes, Financeiro_Dm2,
   SerieCustomizaveis_DM, SeriesCustomizaveis,
  Cadastros_Dm2, Act_Contas_Form, Act_Renegociacao_Form,
  Cheque_Acerto_Form, Mov_Banc_Acerto_Form;

{$R *.DFM}

procedure TFrmFiltraParceiro.ActFecharExecute(Sender: TObject);
begin
   Modalresult := mrCancel ;
end;

procedure TFrmFiltraParceiro.IniKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmFiltraParceiro.FormShow(Sender: TObject);
begin
//  IniciaComponentes ( Self as TForm );

end;

procedure TFrmFiltraParceiro.IniEnter(Sender: TObject);
begin
     CORFUNDO( SENDER );
end;

procedure TFrmFiltraParceiro.IniExit(Sender: TObject);
begin
     TIRACORFUNDO( SENDER );
end;

procedure TFrmFiltraParceiro.ActOkExecute(Sender: TObject);
begin
  filtro := '';
  cont := 0;
  dmCadastros2.SelFiltraParceiro.First;
  while not dmCadastros2.SelFiltraParceiro.Eof do
  begin
    if (dmCadastros2.SelFiltraParceiroSELECIONADO.value = 'S') then
    begin
      if (filtro = '') then
        filtro := '('
      else
        filtro := filtro + ',';

      filtro := filtro + dmCadastros2.SelFiltraParceiroCODIGO.AsString;

      cont := cont + 1;
      nome := dmCadastros2.SelFiltraParceiroNOME_RAZAO.value;
      codigo := dmCadastros2.SelFiltraParceiroCODIGO.value;
    end;
    dmCadastros2.SelFiltraParceiro.Next;
  end;
  if (filtro <> '') then
    filtro := ' in '+filtro + ')';

  dmCadastros2.SelFiltraParceiro.Transaction.RollbackRetaining;
  Close;
end;

procedure TFrmFiltraParceiro.ActCancelarExecute(Sender: TObject);
begin
  cont := 0;
  close;
end;

procedure TFrmFiltraParceiro.ActSelecionarExecute(Sender: TObject);
begin
  if (dmCadastros2.SelFiltraParceiro.state <> dsEdit) then
     dmCadastros2.SelFiltraParceiro.edit;
  
  if (dmCadastros2.SelFiltraParceiroSELECIONADO.value = 'S') then
    dmCadastros2.SelFiltraParceiroSELECIONADO.value := 'N'
  else
    dmCadastros2.SelFiltraParceiroSELECIONADO.value := 'S';
end;

procedure TFrmFiltraParceiro.FormCreate(Sender: TObject);
begin
  with DMCadastros2 do
  begin
    SelFiltraParceiro.Close;
    SelFiltraParceiro.Open;
    SelFiltraParceiro.FetchAll;
    dmCadastros2.SelFiltraParceiro.First;
    while not dmCadastros2.SelFiltraParceiro.eof do
    begin
      if (dmCadastros2.SelFiltraParceiroSELECIONADO.asString = 'S')  then
      begin
        if dmCadastros2.SelFiltraParceiro.state <> dsedit then
          dmCadastros2.SelFiltraParceiro.edit;

        dmCadastros2.SelFiltraParceiroSELECIONADO.value := 'N';
      end;

      dmCadastros2.SelFiltraParceiro.next;
    end;
    dmCadastros2.SelFiltraParceiro.First;
  end;
end;

procedure TFrmFiltraParceiro.ActSelecionaTodosExecute(Sender: TObject);
begin
  if (Application.MessageBox('Deseja marcar todos os registros?','Aviso',mb_iconquestion+mb_yesno) = id_no) then
    exit;

  dmCadastros2.SelFiltraParceiro.DisableControls;
  dmCadastros2.SelFiltraParceiro.First;
  while not dmCadastros2.SelFiltraParceiro.eof do
  begin
    if (dmCadastros2.SelFiltraParceiroSelecionado.asString = 'N')  then
    begin
      if dmCadastros2.SelFiltraParceiro.state <> dsedit then
        dmCadastros2.SelFiltraParceiro.edit;

      dmCadastros2.SelFiltraParceiroSELECIONADO.value := 'S';
    end;

    dmCadastros2.SelFiltraParceiro.next;
  end;

  dmCadastros2.SelFiltraParceiro.EnableControls;
  Application.MessageBox('Registros marcados com sucesso','Aviso',mb_iconinformation+mb_ok);
end;

procedure TFrmFiltraParceiro.ActDesmarcaTodosExecute(Sender: TObject);
begin
 if (Application.MessageBox('Deseja desmarcar todos os registros?','Aviso',mb_iconquestion+mb_yesno) = id_no) then
    exit;

  dmCadastros2.SelFiltraParceiro.DisableControls;
  dmCadastros2.SelFiltraParceiro.First;
  while not dmCadastros2.SelFiltraParceiro.eof do
  begin
    if (dmCadastros2.SelFiltraParceiroSELECIONADO.asString = 'S')  then
    begin
      if dmCadastros2.SelFiltraParceiro.state <> dsedit then
        dmCadastros2.SelFiltraParceiro.edit;

      dmCadastros2.SelFiltraParceiroSELECIONADO.value := 'N';
    end;

    dmCadastros2.SelFiltraParceiro.next;
  end;

  dmCadastros2.SelFiltraParceiro.EnableControls;
  Application.MessageBox('Registros desmarcados com sucesso','Aviso',mb_iconinformation+mb_ok);
end;

end.
