 unit Localizar_ProdutosCliente;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Grids, DBGrids, Db, ActnList, dxDBGrid, dxTL, dxDBCtrl,
  dxCntner,   Buttons, ExtCtrls, dxGrClms, dxExEdtr, dxEditor,
  dxEdLib, IBQuery,  IBCustomDataSet, dxDBTLCl,
  cxPropertiesStore, cxGraphics, cxControls, cxLookAndFeels,
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
  TFrmLocProdutoClientes = class(TForm)
    pnlClient: TPanel;
    Bevel3: TBevel;
    pnlTop: TPanel;
    Bevel2: TBevel;
    LblTitulo: TcxLabel;
    Actions: TActionList;
    ActOk: TAction;
    ActCancelar: TAction;
    DSource: TDataSource;
    Label6: TcxLabel;
    EdCodigo: TdxEdit;
    Label1: TcxLabel;
    EdNome: TdxEdit;
    Panel2: TPanel;
    RzBitBtn1: TcxButton;
    BtnCancelar: TcxButton;
    GRID: TdxDBGrid;
    GRIDCODIGO_NOME: TdxDBGridMaskColumn;
    GRIDCODIGO: TdxDBGridMaskColumn;
    GRIDATIVO: TdxDBGridMaskColumn;
    GRIDDT_FIM: TdxDBGridDateColumn;
    GRIDDT_INICIO: TdxDBGridDateColumn;
    GRIDNUM_CONTRATO: TdxDBGridMaskColumn;
    GRIDNOME_RAZAO: TdxDBGridMaskColumn;
    GRIDPRODUTO: TdxDBGridMaskColumn;
    GRIDNOME: TdxDBGridMaskColumn;
    GRIDSERIE: TdxDBGridMaskColumn;
    GRIDCONTRATO: TdxDBGridMaskColumn;
    stgFrmLocProdutoClientes: TcxPropertiesStore;
    procedure FormShow(Sender: TObject);
    procedure GridKeyPress(Sender: TObject; var Key: Char);
    procedure GridDblClick(Sender: TObject);
    procedure ActOkExecute(Sender: TObject);
    procedure ActCancelarExecute(Sender: TObject);
    procedure EdCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdCodigoExit(Sender: TObject);
    procedure EdNomeExit(Sender: TObject);
    procedure GRIDEnter(Sender: TObject);
    procedure GRIDExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure EdCodigoEnter(Sender: TObject);
    procedure EdNomeEnter(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    sqlOriginal : string;
    function  GetTrecho: String;
    Procedure Ordenar;
  public
    { Public declarations }
    CampTrecho: String;
  end;

var
  FrmLocProdutoClientes: TFrmLocProdutoClientes;

implementation

uses
    Application_DM,
    Funcoes,
    Main,
    Cadastros_DM, Usuarios_DM, Produtos_Form, Cadastros_Dm2;


{$R *.DFM}

function TFrmLocProdutoClientes.GetTrecho: String ;
begin
  Result := DSource.DataSet.FieldByName ('CODIGO').AsString ;
end;

procedure TFrmLocProdutoClientes.FormShow(Sender: TObject);
begin
     IniciaComponentes ( Self as TForm );

     If UPPERCASE(DmApp.ORDENA_VENDA) <> 'NOME'
     then begin
          rdcodigo.Checked := True;
          EdCodigo.SetFocus ;
     end
     else begin
          rdNome.Checked := True;
          EdNome.SetFocus ;
     end;
end;

procedure TFrmLocProdutoClientes.GridKeyPress(Sender: TObject; var Key: Char);
begin
    If Key = #13  then
      ActOk.Execute
    else if key = #27 then
    begin
      If RdCodigo.Checked then
        EdCodigo.SetFocus
      else
        EdNome.SetFocus
    end;
end;

procedure TFrmLocProdutoClientes.GridDblClick(Sender: TObject);
begin
     ModalResult:=mrOk;
end;

procedure TFrmLocProdutoClientes.ActOkExecute(Sender: TObject);
begin
  If (dmCadastros.qryLocalizarProdutoCODIGO.asString <> '') then
  begin
    CampTrecho := GetTrecho;
    ModalResult := mrOk;
  end;
end;

procedure TFrmLocProdutoClientes.ActCancelarExecute(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TFrmLocProdutoClientes.Ordenar;
begin
     If RdNome.Checked
     then begin
          EdNome.SetFocus ;
     end
     else begin
          EdCodigo.SetFocus ;
     end;
end;

procedure TFrmLocProdutoClientes.EdCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmLocProdutoClientes.EdCodigoExit(Sender: TObject);
Var
   Aux : String;
begin
     TiraCorFundo ( Sender );
     If Trim(EdCodigo.Text) <> '' then
     begin
       Aux := EdCodigo.Text ;
       If DmApp.Elimina_Zeros = 'S' THEN
       BEGIN
         While Copy(Aux, 1, 1) = '0' DO
         BEGIN
           Aux := Copy ( Aux, 2, 15 );
         End;
       END;

       If DmApp.Acrescenta_Zeros = 'S' THEN
       BEGIN
         While Length ( Aux ) < 10 DO
         BEGIN
           Aux := '0' + Aux ;
         End;
       END ;

       //VERIFICA SE TEM GRADE
       IF (( LENGTH( TRIM( AUX )) = 15 ) AND ( DMAPP.EST_USA_GRADE = 'S' )) THEN
       BEGIN
         AUX := COPY(AUX,  1, 6);
       END;

      EdCodigo.Text := Aux ;

	  //FECHA O REGISTRO E TRAZ OS NOVOS REGISTROS
       with DmCadastros do
       begin
         qryLocalizarProduto.Close;                                              
         qryLocalizarProduto.sql.text := sqlOriginal + ' where prd.cnpj = :cnpj and prd.ativo = ''S'' and prd.codigo like '+QuotedStr(trim(EdCodigo.Text)+'%')+' order by prd.codigo ';
         qryLocalizarProduto.Open;
       end;

       EdCodigo.Clear ;
       Grid.SetFocus ;
     end;
end;

procedure TFrmLocProdutoClientes.EdNomeExit(Sender: TObject);
begin
     TiraCorFundo (Sender);
     If Trim(EdNome.Text) <> ''  then
     begin
       with DmCadastros do
       begin
         qryLocalizarProduto.Close;
         if not (FrmProdutos = nil) then
           qryLocalizarProduto.sql.text := sqlOriginal + ' where prd.cnpj = :cnpj and prd.nome like ''%''||'+QuoTedStr(EdNome.text)+'||''%''  order by prd.nome '
         else
           qryLocalizarProduto.sql.text := sqlOriginal + ' where prd.cnpj = :cnpj and prd.ativo = ''S'' and prd.nome like ''%''||'+QuoTedStr(EdNome.text)+'||''%''  order by prd.nome ';

         qryLocalizarProduto.Open;
       end;

       //LocateNext = Apos a Posicao corrente do Cursor
       If dmCadastros.qryLocalizarProdutoCodigo.asString = '' Then
         MessageDlg('Produto Não Encontrado!', mtInformation, [mbOK], 0);

       EdNome.Clear ;
       Grid.SetFocus ;
     end;
end;

procedure TFrmLocProdutoClientes.GRIDEnter(Sender: TObject);
begin
     ActOk.ShortCut       := 13 ;
     ActCancelar.ShortCut := VK_F12 ;
end;

procedure TFrmLocProdutoClientes.GRIDExit(Sender: TObject);
begin
     ActOk.ShortCut       := VK_F12 ;
     ActCancelar.ShortCut := 27 ;
end;

procedure TFrmLocProdutoClientes.FormCreate(Sender: TObject);
begin
  // Se o Usuário for Supervisor
  if DMUsuarios.Direito = 'SUPERVISOR' then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, LblTitulo.Caption, ListaActions(Actions))
  else If DMUsuarios.Objeto = Self.Name then
     AtivaActions(Actions, DMUsuarios.Direito);

  DSource.DataSet := DMCadastros.qryLocalizarProduto;
  sqlOriginal := DMCadastros.qryLocalizarProduto.sql.text;
end;

procedure TFrmLocProdutoClientes.EdCodigoEnter(Sender: TObject);
begin
     CorFundo( Sender );

     EdCodigo.Clear ;

     RDNOME.Checked := False ;
     EdNome.Clear ;

     RdCodigo.Checked := True ;
     Ordenar ;     
end;

procedure TFrmLocProdutoClientes.EdNomeEnter(Sender: TObject);
begin
     CorFundo( Sender );

     EdNome.Clear ;
     EdCodigo.Clear;
     RdCodigo.Checked := False ;

     RdNome.Checked := True ;

     Ordenar ;
end;

procedure TFrmLocProdutoClientes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  dmCadastros.qryLocalizarProduto.sql.text := sqlOriginal;
end;

end.

