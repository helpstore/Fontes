 unit Filtra_AlteraPreco_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, dxCntner, dxEditor, dxExEdtr, dxEdLib, StdCtrls,
  ActnList,  Db, dxDBEdtr, dxDBELib, ComCtrls,
  Mask,    cxPropertiesStore,  cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinXmas2008Blue, Menus, cxButtons, cxLabel,  
      cxTextEdit, cxCurrencyEdit, cxCheckBox;

type
  TfrmFiltraListaPreco = class(TForm)
    pnlClient: TPanel;
    LblTitulo: TcxLabel;
    b2: TBevel;
    Actions: TActionList;
    ActFechar: TAction;
    ActOk: TAction;
    dsMarca: TDataSource;
    Panel2: TPanel;
    BtnOk: TcxButton;
    RzBitBtn2: TcxButton;
    GroupBox2: TGroupBox;
    dsGrupo: TDataSource;
    dsSubGrupo: TDataSource;
    stgfrmFiltraListaPreco: TcxPropertiesStore;
    cmbMarca: TdxLookupEdit;
    Label8: TcxLabel;
    cmbSubGrupo: TdxLookupEdit;
    Label3: TcxLabel;
    Label4: TcxLabel;
    cmbGrupo: TdxLookupEdit;
    Label5: TcxLabel;
    cmbProduto: TdxLookupEdit;
    dsProduto: TDataSource;
    gbValor: TGroupBox;
    Label1: TcxLabel;
    edtVlrInicial: tcxcurrencyEdit;
    ckIncremental: tcxcheckBox;
    procedure pnlClientResize(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure IniKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ActOkExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure IniEnter(Sender: TObject);
    procedure IniExit(Sender: TObject);
    procedure CmbCobradorExit(Sender: TObject);
    procedure CmbCobradorEnter(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure cmbGrupoEnter(Sender: TObject);
    procedure cmbGrupoExit(Sender: TObject);
    procedure cmbGrupoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    filtro : string;
  end;

var
  frmFiltraListaPreco: TfrmFiltraListaPreco;

implementation

uses Cadastros_DM, Application_DM, Funcoes, Financeiro_Dm,
  ConsultaCobrancas_Form, Cadastros_Dm2, Relatorios_DM, Estoque_Dm;

{$R *.DFM}

procedure TfrmFiltraListaPreco.pnlClientResize(Sender: TObject);
begin
  b2.Width := pnlClient.Width - 17;
end;

procedure TfrmFiltraListaPreco.ActFecharExecute(Sender: TObject);
begin
     Modalresult := mrCancel ;
end;

procedure TfrmFiltraListaPreco.IniKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TfrmFiltraListaPreco.ActOkExecute(Sender: TObject);
var
  grupo,subgrupo,marca : integer;
  produto : string;
begin
  if (Application.messagebox('Deseja realmente gerar a lista de preços para alteração?','Aviso',mb_iconquestion+mb_yesno) = id_no) then
    exit;

  if (cmbGrupo.text <> '') then
    grupo := cmbGrupo.lookupKeyValue
  else
    grupo := 0;

  if (cmbSubGrupo.text <> '') then
    subgrupo := cmbSubGrupo.lookupKeyValue
  else
    subgrupo := 0;

  if (cmbMarca.text <> '') then
    marca := cmbMarca.lookupKeyValue
  else
    marca := 0;

  if (cmbProduto.text <> '') then
    produto := cmbProduto.lookupKeyValue
  else
    produto := '';

  with dmEstoque do
  begin
    try
      GeraLista.parambyname('cnpj').value := dmapp.cnpj;
      GeraLista.parambyname('CODIGO').value := AlteraPrecoCODIGO.value;
      GeraLista.parambyname('MARCA').value := marca;
      GeraLista.parambyname('GRUPO').value := grupo;
      GeraLista.parambyname('SUB_GRUPO').value := subgrupo;
      GeraLista.parambyname('PRODUTO').value := produto;
      GeraLista.parambyname('MARGEM').value := edtVlrInicial.VALUE;

      if ckIncremental.checked then
         GeraLista.parambyname('INCREMENTAL').value := 'S'
      else
        GeraLista.parambyname('INCREMENTAL').value := 'N';

      GeraLista.ExecProc;
      Application.Messagebox('Lista de preços gerada com sucesso','Aviso',mb_ok+mb_iconinformation);
    except
      On E:EDataBaseError Do
      Begin
        Application.Messagebox(Pchar('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   '),'Aviso',mb_ok+mb_iconerror);
        Exit;
      end
      else
      begin
        Application.Messagebox('Erro ao gerar lista de preços ','Aviso',mb_ok+mb_iconerror);
        Exit;
      end;
    end;

    AlteraPrecoItem.Close;
    AlteraPrecoItem.Open;
    Modalresult := mrOK;
  end;
end;

procedure TfrmFiltraListaPreco.FormShow(Sender: TObject);
begin
  IniciaComponentes ( Self as TForm );
  cmbGrupo.SetFocus;
end;

procedure TfrmFiltraListaPreco.IniEnter(Sender: TObject);
begin
     CORFUNDO( SENDER );
end;

procedure TfrmFiltraListaPreco.IniExit(Sender: TObject);
begin
     //TROCA A COR PARA A COR SELECIONADA
     TIRACORFUNDO( SENDER );
end;

procedure TfrmFiltraListaPreco.CmbCobradorExit(Sender: TObject);
begin
  TIRACORFUNDO(SENDER);
end;

procedure TfrmFiltraListaPreco.CmbCobradorEnter(Sender: TObject);
begin
  CORFUNDO(SENDER);
end;

procedure TfrmFiltraListaPreco.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
       Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TfrmFiltraListaPreco.FormCreate(Sender: TObject);
begin
  with dmRelatorios do
  begin
    SelGrupo.close;
    SelGrupo.Open;
    SelGrupo.FetchAll;

    SelSubGrupo.Close;
    SelSubGrupo.Open;
    SelSubGrupo.FetchAll;

    SelMarca.Close;
    SelMarca.Open;
    SelMarca.FetchAll;

    SelProdutos.Close;
    SelProdutos.Open;
    SelProdutos.FetchAll;
  end;
end;

procedure TfrmFiltraListaPreco.cmbGrupoEnter(Sender: TObject);
begin
  CORFUNDO(SENDER);
end;

procedure TfrmFiltraListaPreco.cmbGrupoExit(Sender: TObject);
begin
  TIRACORFUNDO(SENDER);
end;

procedure TfrmFiltraListaPreco.cmbGrupoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
       Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

end.
