unit EntradasItens_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxEditor, dxExEdtr, dxDBEdtr, dxDBELib, dxCntner, dxEdLib, StdCtrls,
   ExtCtrls, Db, Buttons, ActnList, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Menus, cxControls, cxContainer, cxEdit,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue, cxLabel,
  cxButtons;

type
  TFrmEntradasItens = class(TForm)
    Panel1: TPanel;
    PNLCLIENTE: TPanel;
    btnSalvar: TcxButton;
    btnCancelar: TcxButton;
    Label1: TcxLabel;
    Label2: TcxLabel;
    Label3: TcxLabel;
    Label4: TcxLabel;
    Label5: TcxLabel;
    Label7: TcxLabel;
    Label8: TcxLabel;
    Label9: TcxLabel;
    Label10: TcxLabel;
    edProduto: TdxDBEdit;
    edQtdade: TdxDBEdit;
    edPrcUnit: TdxDBCalcEdit;
    edPrcVenda: TdxDBCalcEdit;
    edPrcCusto: TdxDBCalcEdit;
    edPrcVendaAnt: TdxDBEdit;
    edAliqIcms: TdxDBEdit;
    edVlrIcms: TdxDBEdit;
    edVlrIcmsSub: TdxDBEdit;
    edIpiNF: TdxDBEdit;
    edIpiProduto: TdxDBEdit;
    Label13: TcxLabel;
    edTaxas: TdxDBCalcEdit;
    edDescontos: TdxDBCalcEdit;
    edEmbalagem: TdxDBCalcEdit;
    edFrete: TdxDBCalcEdit;
    Shape1: TShape;
    edSeguros: TdxDBCalcEdit;
    Label14: TcxLabel;
    Label15: TcxLabel;
    Label16: TcxLabel;
    Label17: TcxLabel;
    DataSource: TDataSource;
    btnBusca: TcxButton;
    Label6: TcxLabel;
    edVlrIPI: TdxDBEdit;
    edPrcTotal: TdxDBEdit;
    Actions: TActionList;
    ActBuscarProduto: TAction;
    dsUnidades: TDataSource;
    cmbUnidade: TdxDBLookupEdit;
    Label11: TcxLabel;
    edNomeProduto: TdxDBEdit;
    DsSubUnidade: TDataSource;
    edtMargemLucro: TdxDBCalcEdit;
    dxDBEdit1: TdxDBEdit;
    Label18: TcxLabel;
    EdPropaganda: TdxEdit;
    EdDesconto: TdxEdit;
    EdVendedor: TdxEdit;
    EdCustoVariavel: TdxEdit;
    Label19: TcxLabel;
    Label20: TcxLabel;
    Label21: TcxLabel;
    Label22: TcxLabel;
    Shape2: TShape;
    Label23: TcxLabel;
    dxDBEdit2: TdxDBEdit;
    dxDBCalcEdit2: TdxDBCalcEdit;
    ActGrades: TAction;
    Label25: TcxLabel;
    Label26: TcxLabel;
    dxDBEdit4: TdxDBEdit;
    EdOrigem: TdxPickEdit;
    Label27: TcxLabel;
    dxDBEdit3: TdxDBEdit;
    Label12: TcxLabel;
    Label24: TcxLabel;
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure edProdutoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ActBuscarProdutoExecute(Sender: TObject);
    procedure cmbProdutoExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edProdutoExit(Sender: TObject);
    procedure edProdutoEnter(Sender: TObject);
    procedure edVlrIPIExit(Sender: TObject);
    procedure btnSalvarEnter(Sender: TObject);
    procedure btnSalvarExit(Sender: TObject);
    procedure DataSourceUpdateData(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edPrcUnitExit(Sender: TObject);
    procedure dxDBCalcEdit2Exit(Sender: TObject);
    procedure ActGradesExecute(Sender: TObject);
    procedure edFreteExit(Sender: TObject);
    procedure edPrcVendaExit(Sender: TObject);
    procedure edtMargemLucroExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    LocProd   : Boolean;
  end;

var
  FrmEntradasItens: TFrmEntradasItens;

implementation

uses Entradas_DM, Application_DM, Funcoes, 
  LocalizarProd_DM, Cadastros_DM, Produtos_Form,
  Main, Entradas_Grades_Form, Localizar_Produto_Cadastro_Auto;

{$R *.DFM}

procedure TFrmEntradasItens.btnCancelarClick(Sender: TObject);
begin
     If DataSource.DataSet.State in [dsedit, dsinsert ]
     then begin
          //
          DataSource.DataSet.Cancel;
     end;
     Close;
end;

procedure TFrmEntradasItens.btnSalvarClick(Sender: TObject);
begin
  //
  If Trim(edNomeProduto.Text) = '' Then
     Begin
       MessageDlg('Favor informar corretamente o Produto !',MtError,[MbOk],0);
       edProduto.SetFocus;
       Exit;
     End;
  //
  If Trim(cmbUnidade.Text) = '' Then
     Begin
       MessageDlg('Favor informar corretamente a Unidade de Medida !',MtError,[MbOk],0);
       cmbUnidade.SetFocus;
       Exit;
     End;
  //
  If DataSource.DataSet.FieldByName('ICM').isNull Then
     Begin
       MessageDlg('Favor entrar com o Percentual do ICMS !',MtError,[MbOk],0);
       edAliqIcms.SetFocus;
       Exit;
     End;
  //
  DMEntradas.qProdFracionado.close;
  DMEntradas.qProdFracionado.parambyname('cnpj').value    := dmapp.cnpj;
  DMEntradas.qProdFracionado.parambyname('PRODUTO').value := DataSource.DataSet.FieldByName('PRODUTO').Value;
  DMEntradas.qProdFracionado.open;

  If (DMEntradas.qProdFracionadoVENDE_FRACIONADO.Value = 'N')or(DMEntradas.qProdFracionadoVENDE_FRACIONADO.IsNull) Then
  begin
    If ((DataSource.DataSet.FieldByName('QUANTIDADE').AsFloat - Trunc(DataSource.DataSet.FieldByName('QUANTIDADE').AsFloat)) > 0) then
     Begin
       MessageDlg('Favor entrar com a Quantidade Não Fracionada !',MtError,[MbOk],0);
       edQtdade.SetFocus;
       Exit;
     End;
  End;
  //
  If DataSource.DataSet.FieldByName('VLR_ICM').isNull Then
     Begin
       MessageDlg('Favor entrar com o Percentual do ICMS !',MtError,[MbOk],0);
       edAliqIcms.SetFocus;
       Exit;
     End;
  //
  Try
     If DataSource.DataSet.State in [dsedit, dsinsert ]
     then begin
          DataSource.DataSet.Post;
     end;
  Except
    On E:EDataBaseError Do
       Begin
         Application.MessageBox(Pchar('Ocorreu o seguinte erro :' + #13 + #13 + ' ' + E.Message),'Aviso',mb_iconerror + Mb_ok);
         Exit;
       End
    Else
       Begin
         MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
         Exit;
       End;
  End;
  //
  Close;
end;

procedure TFrmEntradasItens.edProdutoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmEntradasItens.ActBuscarProdutoExecute(Sender: TObject);
Var
   Aux: String;
begin
  //
  If Datasource.DataSet.State = dsBrowse Then
     Datasource.DataSet.Edit;
     
  if (FrmProdutos = nil) then
    FrmProdutos := TFrmProdutos.Create(Application);

  If trim(edProduto.Text) <> ''
  then begin
       Aux := edProduto.Text ;

       If DmApp.Elimina_Zeros = 'S'
       THEN BEGIN
            While Copy ( Aux, 1, 1 ) = '0' DO
            BEGIN
                 Aux := Copy ( Aux, 2, 15 );
            End;
       END;

       If DmApp.Acrescenta_Zeros = 'S'
       THEN BEGIN
            While Length ( Aux ) < 10 DO
            BEGIN
                 Aux := '0' + Aux ;
            End;
       END ;

       EdProduto.Text := Aux ;

       //FECHA O REGISTRO E TRAZ OS NOVOS REGISTROS
       with DmCadastros do
       begin
            //  select * from est_produtos prd where prd.cnpj = :empresa and prd.codigo = :produto
            Produtos.Close ;
            Produtos.SelectSQL.text := 'select * from pcd_lista_produto(:empresa, :produto)';
            Produtos.ParamByName('PRODUTO').AsString := edProduto.Text;
            Unidades.Open;
            Produtos.Open;
       end;

       //LocateNext = Apos a Posicao corrente do Cursor
       If (trim(DMCadastros.Produtos.FieldByName('CODIGO').Value) <> trim(EdProduto.Text)) then
       begin
         If Not DMCadastros.Produtos.LocateNext('CODIGO',EdProduto.Text,[LopartialKey, LocaseInsensitive]) Then
           MessageDlg('Produto não encontrado!', mtInformation, [mbOK], 0);
       end
       else
       begin
         If Not DMCadastros.Produtos.Locate('CODIGO',EdProduto.Text,[LopartialKey, LocaseInsensitive]) Then
           MessageDlg('Produto não encontrado!', mtInformation, [mbOK], 0);
       end;
  end;

  FrmProdutos.Showmodal ;

  Datasource.DataSet.FieldByName('PRODUTO').value := FrmMain.Codigo_Str;
  edProduto.SetFocus;
end;

procedure TFrmEntradasItens.cmbProdutoExit(Sender: TObject);
begin
  If Trim(edProduto.Text) = '' Then
     ActBuscarProduto.Execute;
end;

procedure TFrmEntradasItens.FormShow(Sender: TObject);
begin
   //Precificado Alterado por Wendel e Alessandro
   If DmaPP.Tipo_Custo = 'P' then
     EdOrigem.Visible := true
   else
     EdOrigem.Visible := false ;

   IniciaComponentes ( Self as TForm );

   if DMAPP.INDEXA_ENTRADAS <> 'S' then
    dxDBCalcEdit2.Enabled := FALSE;

   DMEntradas.SelUnidade.Close;
   DMEntradas.SelUnidade.ParamByName('CNPJ').AsString := DmApp.Cnpj                  ;
   DMEntradas.SelUnidade.Open;

   dmEntradas.Entradas_Itens.Edit;
end;

procedure TFrmEntradasItens.edProdutoExit(Sender: TObject);
begin
     IF ( trim( edProduto.Text ) = '') or ( LocProd )
     then begin
          //
          If ( DmApp.CHM_PROD_INEXIST = 'S' )
          then begin
               If DMEntradas.Entradas_Itens.State = dsBrowse Then
               DMEntradas.Entradas_Itens.Append;

               if (FrmLocProdutoCadastro_Auto <> nil) then
                 FrmLocProdutoCadastro_Auto := nil;

               FrmLocProdutoCadastro_Auto := TFrmLocProdutoCadastro_Auto.create(self);

               if FrmLocProdutoCadastro_Auto.Showmodal = mrok then
                 DMEntradas.Entradas_Itens.FieldByName('PRODUTO').asString := (FrmLocProdutoCadastro_Auto.CampTrecho );

               FrmLocProdutoCadastro_Auto.free;
               FrmLocProdutoCadastro_Auto := nil;
          end;

          edProduto.SetFocus ;

          LocProd := False ;
     end;

     LocProd := False ;

     //TROCA A COR DE FUNDO
     TiraCorFundo( Sender );
end;

procedure TFrmEntradasItens.edProdutoEnter(Sender: TObject);
begin
     CorFundo ( Sender );
end;

procedure TFrmEntradasItens.edVlrIPIExit(Sender: TObject);
begin
    //TROCA A COR DE FUNDO
    TiraCorFundo ( Sender );
end;

procedure TFrmEntradasItens.btnSalvarEnter(Sender: TObject);
begin
     CorFundo( Sender );
end;

procedure TFrmEntradasItens.btnSalvarExit(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     TiraCorFundo( Sender );
end;

procedure TFrmEntradasItens.DataSourceUpdateData(Sender: TObject);
begin
     If DataSource.DataSet.FieldByName('PRODUTO').IsNull
     then begin
          MessageDlg('Digite o Produto', mtError, [mbOK], 0);
          edProduto.SetFocus ;
          Abort ;
     end;

     If DataSource.DataSet.FieldByName('UNIDADE').IsNull
     then begin
          MessageDlg('Digite a Unidade', mtError, [mbOK], 0);
          CmbUnidade.SetFocus ;
          Abort ;
     end;

     If DataSource.DataSet.FieldByName('QUANTIDADE').IsNull
     then begin
          MessageDlg('Digite a Quantidade', mtError, [mbOK], 0);
          edQtdade.SetFocus ;
          Abort ;
     end;

     If DataSource.DataSet.FieldByName('PRC_UNITARIO').IsNull
     then begin
          MessageDlg('Digite o Preço Unitário', mtError, [mbOK], 0);
          edPrcUnit.SetFocus ;
          Abort ;
     end;
end;

procedure TFrmEntradasItens.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     if DMEntradas.SelUnidade.Active
     then begin
          DMEntradas.SelUnidade.Close ;
     end;

     if DMEntradas.SelSubUnidade.Active
     then begin
          DMEntradas.SelSubUnidade.Close ;
     end;

     Action := cafree ;
     FrmEntradasItens := Nil ;
end;

procedure TFrmEntradasItens.edPrcUnitExit(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     TiraCorFundo ( Sender );

     If DMEntradas.Entradas_Itens.State in [ dsinsert, dsedit ] then
       DMEntradas.Entradas_ItensPRC_CUSTO.Value := DmEntradas.CalculaCusto ;
end;

procedure TFrmEntradasItens.dxDBCalcEdit2Exit(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     TiraCorFundo ( Sender );
end;

procedure TFrmEntradasItens.ActGradesExecute(Sender: TObject);
begin
     With DmEntradas do
     BEGIN
          IF ( Entradas_ItensQUANTIDADE.VALUE <= 0 )
          THEN BEGIN
               MessageDlg('Digite a Quantidade', mtError, [mbOK], 0);
               edQtdade.setfocus ;
          END
          ELSE BEGIN
               //GRADES DE PRODUTOS
               Produtos_Grades.Close ;

               Produtos_Grades.Open  ;

               //VERIFICA A GRADE E O NUMERO
               Lista_Grades.Close ;
               Lista_Grades.ParamByName ( 'CNPJ'    ).AsString := DMAPP.CNPJ   ;
               Lista_Grades.ParamByName ( 'PRODUTO' ).AsString := Entradas_ItensPRODUTO.Value ;
               Lista_Grades.Prepare ;
               Lista_Grades.Open ;

               Lista_Grades.FetchAll ;

               //Chama a Tela Para Localizar Naturezas
               Application.CreateForm(TFrmEntradas_Grades, FrmEntradas_Grades);

               FrmEntradas_Grades.Quantidade := Entradas_ItensQUANTIDADE.value ;

               FrmEntradas_Grades.LBLQUANTIDADE.CAPTION := FORMATFLOAT ( '###,##0.00', Entradas_ItensQUANTIDADE.value );

               if not FrmEntradas_Grades.showmodal = mrok
               then begin
                    Produtos_Grades.Close ;

                    FrmEntradas_Grades.free   ;
                    FrmEntradas_Grades := Nil ;
               end;

               FrmEntradas_Grades.free   ;
               FrmEntradas_Grades := Nil ;

               Produtos_Grades.Close ;
          END;
     END;
end;

procedure TFrmEntradasItens.edFreteExit(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     TiraCorFundo ( Sender );

     If DMEntradas.Entradas_Itens.State in [ dsinsert, dsedit ]  then
       DMEntradas.Entradas_ItensPRC_CUSTO.Value := DmEntradas.CalculaCusto ;
end;

procedure TFrmEntradasItens.edPrcVendaExit(Sender: TObject);
var
  vlr_VND, vlr_CUSTO : currency;

begin
  TiraCorFundo ( Sender );
  dmEntradas.Entradas_ItensPERC_LUCRO.value := dmEntradas.CalculaPctPrcVenda;
  {vlr_VND := DmEntradas.Entradas_ItensPRC_VENDA.Value;
  vlr_CUSTO := DmEntradas.Entradas_ItensPRC_CUSTO.Value;
  DmEntradas.Entradas_ItensPERC_LUCRO.Value := (( (vlr_VND - vlr_CUSTO)*100 )/vlr_VND);
  //-->> Está passando novamente o valor pq quando no campo PER_LUCRO tem o evento onvalidate que está alterando o campo PRC_VENDA
  DmEntradas.Entradas_ItensPRC_VENDA.Value := vlr_VND;}
end;

procedure TFrmEntradasItens.edtMargemLucroExit(Sender: TObject);
begin
  TiraCorFundo ( Sender );
  dmEntradas.Entradas_ItensPRC_VENDA.value := dmEntradas.CalculaPrecoVenda;
end;

end.
