   unit Filtra_TabelaPreco_Form;

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
  TfrmFiltraTabelaPreco = class(TForm)
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
    stgfrmFiltraTabelaPreco: TcxPropertiesStore;
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
    edtVlrInicial: TcxCurrencyEdit;
    ckIncremental: TcxCheckBox;
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
  frmFiltraTabelaPreco: TfrmFiltraTabelaPreco;

implementation

uses Cadastros_DM, Application_DM, Funcoes, Financeiro_Dm,
  ConsultaCobrancas_Form, Cadastros_Dm2, Relatorios_DM, Estoque_Dm;

{$R *.DFM}

procedure TfrmFiltraTabelaPreco.pnlClientResize(Sender: TObject);
begin
  b2.Width := pnlClient.Width - 17;
end;

procedure TfrmFiltraTabelaPreco.ActFecharExecute(Sender: TObject);
begin
     Modalresult := mrCancel ;
end;

procedure TfrmFiltraTabelaPreco.IniKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TfrmFiltraTabelaPreco.ActOkExecute(Sender: TObject);
var
  grupo,subgrupo,marca : integer;
  produto : string;
begin
  if (Application.messagebox('Deseja realmente gerar a tabela de preços para alteração?','Aviso',mb_iconquestion+mb_yesno) = id_no) then
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
      GeraTabelaPreco.parambyname('cnpj').value := dmapp.cnpj;
      GeraTabelaPreco.parambyname('CODIGO').value := TabelaPrecoCODIGO.value;
      GeraTabelaPreco.parambyname('MARCA').value := marca;
      GeraTabelaPreco.parambyname('GRUPO').value := grupo;
      GeraTabelaPreco.parambyname('SUB_GRUPO').value := subgrupo;
      GeraTabelaPreco.parambyname('PRODUTO').value := produto;
      GeraTabelaPreco.parambyname('MARGEM').value := edtVlrInicial.VALUE;

      if ckIncremental.checked then
         GeraTabelaPreco.parambyname('INCREMENTAL').value := 'S'
      else
        GeraTabelaPreco.parambyname('INCREMENTAL').value := 'N';

      GeraTabelaPreco.ExecProc;
      Application.Messagebox('Tabela de preços gerada com sucesso','Aviso',mb_ok+mb_iconinformation);
    except
      On E:EDataBaseError Do
      Begin
        Application.Messagebox(Pchar('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   '),'Aviso',mb_ok+mb_iconerror);
        Exit;
      end
      else
      begin
        Application.Messagebox('Erro ao gerar tabela de preços ','Aviso',mb_ok+mb_iconerror);
        Exit;
      end;
    end;

    ItemTabelaPreco.Close;
    ItemTabelaPreco.Open;
    Modalresult := mrOK;
  end;
end;

procedure TfrmFiltraTabelaPreco.FormShow(Sender: TObject);
begin
  IniciaComponentes ( Self as TForm );
  cmbGrupo.SetFocus;
end;

procedure TfrmFiltraTabelaPreco.IniEnter(Sender: TObject);
begin
     CORFUNDO( SENDER );
end;

procedure TfrmFiltraTabelaPreco.IniExit(Sender: TObject);
begin
     //TROCA A COR PARA A COR SELECIONADA
     TIRACORFUNDO( SENDER );
end;

procedure TfrmFiltraTabelaPreco.CmbCobradorExit(Sender: TObject);
begin
  TIRACORFUNDO(SENDER);
end;

procedure TfrmFiltraTabelaPreco.CmbCobradorEnter(Sender: TObject);
begin
  CORFUNDO(SENDER);
end;

procedure TfrmFiltraTabelaPreco.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
       Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TfrmFiltraTabelaPreco.FormCreate(Sender: TObject);
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

procedure TfrmFiltraTabelaPreco.cmbGrupoEnter(Sender: TObject);
begin
  CORFUNDO(SENDER);
end;

procedure TfrmFiltraTabelaPreco.cmbGrupoExit(Sender: TObject);
begin
  TIRACORFUNDO(SENDER);
end;

procedure TfrmFiltraTabelaPreco.cmbGrupoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
       Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

end.
