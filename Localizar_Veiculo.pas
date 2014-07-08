 unit Localizar_Cliente;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Grids, DBGrids, Buttons, ExtCtrls, db,
    ActnList,
  dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid, dxCntner,dxExEdtr, 
  dxBar, dxBarDBNav, dxEditor, dxDBEdtr, dxDBELib, 
  Menus, cxPropertiesStore, dxEdLib, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinXmas2008Blue, cxButtons, cxLabel;

type
  TFrm_Localizar_Cliente = class(TForm)
    pnlClient: TPanel;
    Act: TActionList;
    ActOk: TAction;
    ActCancelar: TAction;
    GRID: TdxDBGrid;
    DSource: TDataSource;
    b2: TBevel;
    LblRegistros: TcxLabel;
    ActLookup: TAction;
    GRIDCODIGO: TdxDBGridMaskColumn;
    GRIDNOME_RAZAO: TdxDBGridMaskColumn;
    GRIDFONE: TdxDBGridColumn;
    GRIDFANTASIA: TdxDBGridColumn;
    GRIDDOCUMENTO: TdxDBGridColumn;
    GRIDBLOQUEADO: TdxDBGridColumn;
    Panel2: TPanel;
    BtnOk: TcxButton;
    BtnCancelar: TcxButton;
    GRIDCLASSIFICACAO: TdxDBGridColumn;
    PopUp: TPopupMenu;
    DesabilitarColuna1: TMenuItem;
    ActDesabilitar: TAction;
    DesabilitarNome1: TMenuItem;
    DesabilitarFone1: TMenuItem;
    DesabilitarClassificao1: TMenuItem;
    DesabilitarFantasia1: TMenuItem;
    Desabilitar1: TMenuItem;
    DesabilitarBloqueado1: TMenuItem;
    ActConfigurar: TAction;
    GRIDORDEM: TdxDBGridColumn;
    GRIDENDERECO: TdxDBGridColumn;
    Desabilitarenderco: TMenuItem;
    stgFrm_Localizar_Cliente2: TcxPropertiesStore;
    Panel1: TPanel;
    LblTitulo: TcxLabel;
    Bevel2: TBevel;
    Label6: TcxLabel;
    EdCodigo: TdxEdit;
    Label1: TcxLabel;
    EdNome: TdxEdit;
    procedure FormShow(Sender: TObject);
    procedure GridKeyPress(Sender: TObject; var Key: Char);
    procedure GridDblClick(Sender: TObject);
    procedure GRIDKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ActOkExecute(Sender: TObject);
    procedure ActCancelarExecute(Sender: TObject);
    procedure pnlClientResize(Sender: TObject);
    procedure ActLookupExecute(Sender: TObject);
    procedure DesabilitarColuna1Click(Sender: TObject);
    procedure DesabilitarNome1Click(Sender: TObject);
    procedure DesabilitarFone1Click(Sender: TObject);
    procedure DesabilitarClassificao1Click(Sender: TObject);
    procedure DesabilitarFantasia1Click(Sender: TObject);
    procedure Desabilitar1Click(Sender: TObject);
    procedure DesabilitarBloqueado1Click(Sender: TObject);
    procedure ActDesabilitarExecute(Sender: TObject);
    procedure DesabilitarendercoClick(Sender: TObject);
    procedure EdNomeExit(Sender: TObject);
    procedure EdNomeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EdCodigoExit(Sender: TObject);
    procedure GRIDEnter(Sender: TObject);
    procedure GRIDExit(Sender: TObject);
  private
    sqlOriginal : string;
    { Private declarations }

    function  GetTrecho: Integer;

  public
    { Public declarations }
    Cad: String[1] ;

    CampTrecho: Integer;
    CampNome : string;
  end;

var
  Frm_Localizar_Cliente: TFrm_Localizar_Cliente;
  Campo: String;

implementation

uses Cadastros_DM, Application_DM, Funcoes, PessoasFj_Form, Vendas_Dm;

{$R *.DFM}

function TFrm_Localizar_Cliente.GetTrecho: Integer ;
begin
     Result := DSource.DataSet.FieldByName('PESSOA_FJ').AsInteger ;
end;

procedure TFrm_Localizar_Cliente.FormShow(Sender: TObject);
begin
     IniciaComponentes ( Self as TForm );

     Frm_Localizar_Cliente.PopUp := PopUp ;

     DSource.DataSet.close ;
     EdCodigo.SetFocus;
     {If Not DSource.DataSet.active
     Then
         DSource.DataSet.Open ;   }
         
     Cad           := 'N' ;

     DesabilitarColuna1.Checked      := NOT GRIDCODIGO.Visible ;
     DesabilitarNome1.Checked        := NOT GRIDNOME_RAZAO.Visible ;
     DesabilitarFone1.Checked        := NOT GRIDFONE.Visible ;
     DesabilitarClassificao1.Checked := NOT GRIDCLASSIFICACAO.Visible ;
     DesabilitarFantasia1.Checked    := NOT GRIDFANTASIA.Visible ;
     Desabilitar1.Checked            := NOT GRIDDOCUMENTO.Visible ;
     DesabilitarBloqueado1.Checked   := NOT GRIDBLOQUEADO.Visible ;
     Desabilitarenderco.Checked      := NOT GRIDENDERECO.Visible ;
end;

procedure TFrm_Localizar_Cliente.GridKeyPress(Sender: TObject; var Key: Char);
begin
    If Key = #13  then
      ActOk.Execute
    else if key = #27 then
        EdCodigo.SetFocus;
end;

procedure TFrm_Localizar_Cliente.GridDblClick(Sender: TObject);
begin
     ModalResult:=mrOk;
end;

procedure TFrm_Localizar_Cliente.GRIDKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     If Key = 13
     then begin
          ModalResult:=mrOk;
     end
     else
         if key = 27
         then
              ModalResult:=mrCancel;
end;

procedure TFrm_Localizar_Cliente.ActOkExecute(Sender: TObject);
begin
  If (DmVendas.SelPessoasFJPESSOA_FJ.asString <> '') then
   CampTrecho :=  GetTrecho;

  CampNome :=  DmVendas.SelPessoasFJNOME_RAZAO.value;
  ModalResult:=mrOk;
end;

procedure TFrm_Localizar_Cliente.ActCancelarExecute(Sender: TObject);
begin
     ModalResult:=mrCancel;
end;

procedure TFrm_Localizar_Cliente.pnlClientResize(Sender: TObject);
begin
  b2.Width := pnlClient.Width - 17;
  LblRegistros.Left := pnlClient.Width - 11 - LblRegistros.Width;
end;

procedure TFrm_Localizar_Cliente.ActLookupExecute(Sender: TObject);
begin
     //LookUp
     Cad := 'S' ;
     ModalResult:=mrCancel;
end;

procedure TFrm_Localizar_Cliente.DesabilitarColuna1Click(Sender: TObject);
begin
     Campo := 'CODIGO' ;
     ActDesabilitar.Execute ;
end;

procedure TFrm_Localizar_Cliente.DesabilitarNome1Click(Sender: TObject);
begin
     Campo := 'NOME' ;
     ActDesabilitar.Execute ;
end;

procedure TFrm_Localizar_Cliente.DesabilitarFone1Click(Sender: TObject);
begin
     Campo := 'FONE' ;
     ActDesabilitar.Execute ;
end;

procedure TFrm_Localizar_Cliente.DesabilitarClassificao1Click(Sender: TObject);
begin
     Campo := 'CLASSIFICACAO' ;
     ActDesabilitar.Execute ;
end;

procedure TFrm_Localizar_Cliente.DesabilitarFantasia1Click(Sender: TObject);
begin
     Campo := 'FANTASIA' ;
     ActDesabilitar.Execute ;
end;

procedure TFrm_Localizar_Cliente.Desabilitar1Click(Sender: TObject);
begin
     Campo := 'CPF' ;
     ActDesabilitar.Execute ;
end;

procedure TFrm_Localizar_Cliente.DesabilitarBloqueado1Click(Sender: TObject);
begin
     Campo := 'BLQ' ;
     ActDesabilitar.Execute ;
end;

procedure TFrm_Localizar_Cliente.ActDesabilitarExecute(Sender: TObject);
begin
     IF CAMPO = 'CODIGO'
     THEN BEGIN
          GRIDCODIGO.Visible := NOT GRIDCODIGO.Visible ;
     END;

     IF CAMPO = 'NOME'
     THEN BEGIN
          GRIDNOME_RAZAO.Visible := NOT GRIDNOME_RAZAO.Visible ;
     END;

     IF CAMPO = 'FONE'
     THEN BEGIN
          GRIDFONE.Visible := NOT GRIDFONE.Visible ;
     END;

     IF CAMPO = 'CLASSIFICACAO'
     THEN BEGIN
          GRIDCLASSIFICACAO.Visible := NOT GRIDCLASSIFICACAO.Visible ;
     END;

     IF CAMPO = 'FANTASIA'
     THEN BEGIN
          GRIDFANTASIA.Visible := NOT GRIDFANTASIA.Visible ;
     END;

     IF CAMPO = 'CPF'
     THEN BEGIN
          GRIDDOCUMENTO.Visible := NOT GRIDDOCUMENTO.Visible ;
     END;

     IF CAMPO = 'BLQ'
     THEN BEGIN
          GRIDBLOQUEADO.Visible := NOT GRIDBLOQUEADO.Visible ;
     END;

     IF CAMPO = 'END'
     THEN BEGIN
          GRIDENDERECO.Visible := NOT GRIDENDERECO.Visible ;
     END;
end;

procedure TFrm_Localizar_Cliente.DesabilitarendercoClick(Sender: TObject);
begin
     Campo := 'END' ;
     ActDesabilitar.Execute ;
end;

procedure TFrm_Localizar_Cliente.EdNomeExit(Sender: TObject);
var
  sql : string;
begin
   TiraCorFundo (Sender);
   If Trim(EdNome.Text) <> ''  then
     sql :=  sqlOriginal + ' where nome_razao like ''%''||'+QuoTedStr(EdNome.text)+'||''%''  order by nome_razao '
   else
     sql :=  sqlOriginal;


   DSource.DataSet := DmVendas.SelPessoasFJ;
   with DmVendas do
   begin
     SelPessoasFJ.Close;
     SelPessoasFJ.sql.text := sql;
     SelPessoasFJ.parambyname('cnpj').value := dmApp.cnpj;
     SelPessoasFJ.Open;
   end;

   //LocateNext = Apos a Posicao corrente do Cursor
   If DmVendas.SelPessoasFJCODIGO.AsString = '' Then
     Application.Messagebox('Produto não encontrado','Aviso', mb_iconquestion + mb_ok);

   Grid.SetFocus;
   EdNome.Clear ;
end;

procedure TFrm_Localizar_Cliente.EdNomeKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
 if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrm_Localizar_Cliente.FormCreate(Sender: TObject);
begin
  sqlOriginal := DmVendas.SelPessoasFJ.sql.text;
end;

procedure TFrm_Localizar_Cliente.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DmVendas.SelPessoasFJ.sql.text := sqlOriginal;
end;

procedure TFrm_Localizar_Cliente.EdCodigoExit(Sender: TObject);
var
  sql : string;
begin
   TiraCorFundo (Sender);
   If Trim(EdCodigo.Text) <> ''  then
     sql := sqlOriginal + ' where codigo like ''%''||'+QuoTedStr(EdCodigo.text)+'||''%''  order by codigo '
   else
     sql := sqlOriginal;

   DSource.DataSet := DmVendas.SelPessoasFJ;
   
   with DmVendas do
   begin
     SelPessoasFJ.Close;
     SelPessoasFJ.sql.text := sql;
     SelPessoasFJ.parambyname('cnpj').value := dmApp.cnpj;
     SelPessoasFJ.Open;
   end;

   //LocateNext = Apos a Posicao corrente do Cursor
   If DmVendas.SelPessoasFJCODIGO.AsString = '' Then
     Application.Messagebox('Produto não encontrado','Aviso', mb_iconquestion + mb_ok);

   EdCodigo.Clear;
   Grid.SetFocus ;
end;

procedure TFrm_Localizar_Cliente.GRIDEnter(Sender: TObject);
begin
  ActOk.ShortCut       := 13 ;
  ActCancelar.ShortCut := VK_F12 ;
end;

procedure TFrm_Localizar_Cliente.GRIDExit(Sender: TObject);
begin
  ActOk.ShortCut       := VK_F12 ;
  ActCancelar.ShortCut := 27 ;
end;

end.
