 unit ContratosItens_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxEditor, dxExEdtr, dxDBEdtr, dxDBELib, dxCntner, dxEdLib, StdCtrls,
   ExtCtrls, Db, Grids, DBGrids, ActnList, dxDBGrid, dxDBTLCl,
  dxGrClms, dxTL, dxDBCtrl, Mask, DBCtrls, dxTLClms, cxPropertiesStore,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxSpinEdit,
  cxDBEdit, Buttons, cxPC, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, Menus, cxLabel, cxButtons;

type
  TFrmContratosItens = class(TForm)
    Panel1: TPanel;
    btnSalvar: TcxButton;
    btnCancelar: TcxButton;
    DataSource: TDataSource;
    dsProdutos: TDataSource;
    ActLista: TActionList;
    ActLookUP: TAction;
    ActSalvar: TAction;
    ActCancelar: TAction;
    ActInserir: TAction;
    ActNovoProduto: TAction;
    stgContratosItens: TcxPropertiesStore;
    dsMoeda: TDataSource;
    pnlClient: TPanel;
    PageControl: TcxPageControl;
    tbsItem: TcxTabSheet;
    GridItens: TdxDBGrid;
    GridItensCODIGO: TdxDBGridMaskColumn;
    GridItensCOD_PRODUTO: TdxDBGridMaskColumn;
    GridItensPRODUTO: TdxDBGridMaskColumn;
    GridItensSERIE: TdxDBGridMaskColumn;
    GridItensVALOR: TdxDBGridMaskColumn;
    GridItensQTDE_COPIAS_PREVENTIVA: TdxDBGridMaskColumn;
    GridItensDIAS_RECHAMADO: TdxDBGridMaskColumn;
    GridItensMEDIA_COPIAS: TdxDBGridMaskColumn;
    GridItensTEMPO_RESPOSTA: TdxDBGridMaskColumn;
    GridItensDT_ADICAO: TdxDBGridDateColumn;
    GridItensDATA: TdxDBGridDateColumn;
    GridItensTIPO_PRODUTO: TdxDBGridMaskColumn;
    GridItensCONTRATO: TdxDBGridMaskColumn;
    GridItensCNPJ: TdxDBGridMaskColumn;
    GridItensINFORMACOES_ITENS: TdxDBGridMemoColumn;
    Panel2: TPanel;
    Label1: TcxLabel;
    Label3: TcxLabel;
    btnMoeda: TcxButton;
    Label8: TcxLabel;
    Label6: TcxLabel;
    edProduto: TdxDBEdit;
    dxDBEdit1: TdxDBEdit;
    edPrcUnit: TdxDBCalcEdit;
    dxDBMemo1: TdxDBMemo;
    cmbMoeda: TdxDBLookupEdit;
    GroupBox1: TGroupBox;
    Label2: TcxLabel;
    Label7: TcxLabel;
    Label4: TcxLabel;
    Label13: TcxLabel;
    Label5: TcxLabel;
    dxDBDateEdit1: TdxDBDateEdit;
    EdDataNota: TdxDBDateEdit;
    cxDBSpinEdit1: TcxDBSpinEdit;
    cxDBSpinEdit2: TcxDBSpinEdit;
    cxDBSpinEdit3: TcxDBSpinEdit;
    GroupBox2: TGroupBox;
    Label9: TcxLabel;
    Label12: TcxLabel;
    Label10: TcxLabel;
    dxDBDateEdit2: TdxDBDateEdit;
    dxDBDateEdit3: TdxDBDateEdit;
    cbEtiqueta: TdxDBCheckEdit;
    tbsDesconto: TcxTabSheet;
    GridDescontoDBTableView1: TcxGridDBTableView;
    GridDescontoLevel1: TcxGridLevel;
    GridDesconto: TcxGrid;
    dsDescontos: TDataSource;
    GridDescontoDBTableView1CNPJ: TcxGridDBColumn;
    GridDescontoDBTableView1CODIGO: TcxGridDBColumn;
    GridDescontoDBTableView1COD_ITEM: TcxGridDBColumn;
    GridDescontoDBTableView1VALOR: TcxGridDBColumn;
    GridDescontoDBTableView1DT_VIGENCIA_INICIAL: TcxGridDBColumn;
    GridDescontoDBTableView1DT_VIGENCIA_FINAL: TcxGridDBColumn;
    GridItensDECONTINUADO: TdxDBGridCheckColumn;
    GridItensATIVO: TdxDBGridCheckColumn;
    GroupBox3: TGroupBox;
    dxDBEdit2: TdxDBEdit;
    cxLabel1: TcxLabel;
    dxDBEdit3: TdxDBEdit;
    cxLabel2: TcxLabel;
    dxDBDateEdit4: TdxDBDateEdit;
    cxLabel3: TcxLabel;
    dxDBEdit4: TdxDBEdit;
    cxLabel4: TcxLabel;
    dxDBCheckEdit2: TdxDBCheckEdit;
    dxDBCheckEdit1: TdxDBCheckEdit;
    procedure edProdutoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure ActSalvarExecute(Sender: TObject);
    procedure ActCancelarExecute(Sender: TObject);
    procedure btnBuscaClick(Sender: TObject);
    procedure ActInserirExecute(Sender: TObject);
    procedure edProdutoExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ActNovoProdutoExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnSalvarEnter(Sender: TObject);
    procedure btnSalvarExit(Sender: TObject);
    procedure edProdutoEnter(Sender: TObject);
    procedure edQtdadeEnter(Sender: TObject);
    procedure cmbUnidadeExit(Sender: TObject);
    procedure CmbSubUnidadeExit(Sender: TObject);
    procedure DataSourceStateChange(Sender: TObject);
    procedure EdServicoEnter(Sender: TObject);
    procedure edQtdadeFISEnter(Sender: TObject);
    procedure edPrcUnitFISExit(Sender: TObject);
    procedure btnMoedaClick(Sender: TObject);
  private
    { Private declarations }
    DragNode: TdxTreeListNode;
  public
    { Public declarations }
    ULTLINHA  : INTEGER;
    LocProd   : Boolean;
    LocSimilar: Boolean;
    CancelaQtd: Boolean;
    Autorizado: Boolean;

  end;

var
  FrmContratosItens: TFrmContratosItens;
  PorcDesc: Real;
implementation

uses
     Main,
     Application_DM,
     Funcoes,
     Cadastros_DM,
     Produtos_Form,
     LocalizarProd_DM,
     Localizar_Produto_Cadastro_Auto, Cadastros_Dm2, Financeiro_Dm2,
  Moedas_Form;

{$R *.DFM}

procedure TFrmContratosItens.edProdutoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;


procedure TFrmContratosItens.FormCreate(Sender: TObject);
begin
  ULTLINHA   := 0 ;
  LocProd    := False ;
  LocSimilar := False;
  FrmLocProdutoCadastro_Auto := TFrmLocProdutoCadastro_Auto.Create(Self);
end;

procedure TFrmContratosItens.ActSalvarExecute(Sender: TObject);
begin
  //
{      DmVendas.qProdFracionado.close;
      DmVendas.qProdFracionado.parambyname('cnpj').value    := dmapp.cnpj;
      DmVendas.qProdFracionado.parambyname('PRODUTO').value := DataSource.DataSet.FieldByName('PRODUTO').Value;
      DmVendas.qProdFracionado.open;

      If (DmVendas.qProdFracionadoVENDE_FRACIONADO.Value = 'N')or(DmVendas.qProdFracionadoVENDE_FRACIONADO.IsNull) Then
      begin
        If ((DataSource.DataSet.FieldByName('QUANTIDADE').AsFloat - Trunc(DataSource.DataSet.FieldByName('QUANTIDADE').AsFloat)) > 0) then
         Begin
           MessageDlg('Favor entrar com a Quantidade Não Fracionada !',MtError,[MbOk],0);
           edQtdade.SetFocus;
           Exit;
         End;
      End;
}

     If DataSource.State in [dsinsert, dsedit] then
     begin  //
       try
         DataSource.DataSet.Post;
         DataSource.DataSet.Append ;
       Except
         On E:EDataBaseError Do
         begin
           MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           Exit;
         end
         else
         begin
           MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           Exit;
         end;
       end;
     end;
     edProduto.setfocus ;
end;

procedure TFrmContratosItens.ActCancelarExecute(Sender: TObject);
begin
     If ((DataSource.Dataset.State in [ dsinsert, dsedit ]) and (DataSource.DataSet.recordcount >0))then
     begin
       DataSource.DataSet.Cancel ;
       EdProduto.SetFocus;
     end
     else
       Close;
end;

procedure TFrmContratosItens.btnBuscaClick(Sender: TObject);
Var CodigoProduto: String[15];
begin
  //
  CodigoProduto := DMApp.LocalizarProduto;
  //
  If Trim(CodigoProduto) <> '' then
  begin
    if not ( DataSource.State in [ dsinsert, dsedit ] ) then
        DataSource.DataSet.append ;

    DataSource.DataSet.FieldByName('COD_PRODUTO').asString := CodigoProduto;
  end
  else
     edProduto.SetFocus;
end;

procedure TFrmContratosItens.ActInserirExecute(Sender: TObject);
begin
     LocProd    := False ;
     LocSimilar := False ;
     CancelaQtd := False ;

     DataSource.DataSet.Close;
     DataSource.DataSet.Open;

     If Not (DataSource.DataSet.State in [dsedit, dsinsert]) then
      DataSource.DataSet.append;

    edProduto.SetFocus ;
end;

procedure TFrmContratosItens.edProdutoExit(Sender: TObject);
Var
   Aux: String;
   CODIGO_LOTE : integer;
begin

  //---------------------[ Verificando Preenchimento ]----------------------------
     IF trim(edProduto.Text) = ''  then
     begin
          If Datasource.DataSet.State = dsBrowse Then
          Datasource.DataSet.Append;

            if FrmLocProdutoCadastro_Auto.Showmodal = mrok then
              Datasource.DataSet.FieldByName('COD_PRODUTO').asString := ( FrmLocProdutoCadastro_Auto.CampTrecho );

          edProduto.SetFocus ;
     end
     Else begin
       If (LocProd) and (DmApp.CHM_PROD_INEXIST = 'S') then
       begin
               //
            If Datasource.DataSet.State = dsBrowse Then
               Datasource.DataSet.Append;

            Aux := edProduto.Text ;

            If DmApp.Elimina_Zeros = 'S' THEN
            begin
              while Copy ( Aux, 1, 1 ) = '0' DO
                Aux := Copy ( Aux, 2, 15 );
            end;

            if DmApp.Acrescenta_Zeros = 'S' then
            begin
              while Length ( Aux ) < 10 DO
                Aux := '0' + Aux ;
            end;

            edProduto.Text := Aux ;

	        //---------[ Fecha o registro e traz os novos registros ]---------------------------------------
            FrmLocProdutoCadastro_Auto.EdCodigo.Text := EdProduto.Text ;
            if FrmLocProdutoCadastro_Auto.Showmodal = mrok then
              Datasource.DataSet.FieldByName('COD_PRODUTO').asString := (FrmLocProdutoCadastro_Auto.CampTrecho );

            edProduto.SetFocus ;

            LocProd := False ;
          end;
     end;

     LocProd := False ;
     TiraCorFundo ( Sender );
end;

procedure TFrmContratosItens.FormShow(Sender: TObject);
begin
     IniciaComponentes ( Self as TForm );
     PageControl.ActivePageIndex := 0;  
     If Not(DataSource.DataSet.State in [ dsinsert, dsedit ] ) then
          ActInserir.Execute ;

    dmFinanceiro2.Moeda.close;
    dmFinanceiro2.Moeda.Open;
    dmCadastros2.CtItensDesconto.Close;
    dmCadastros2.CtItensDesconto.Open;

end;

procedure TFrmContratosItens.ActNovoProdutoExecute(Sender: TObject);
begin
     If FrmContratosItens.ActiveControl = edProduto
     Then begin
          //
          If Datasource.DataSet.State = dsBrowse Then
          Datasource.DataSet.Edit;
          //
          { * * * * * }
          DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmProdutos', False);
          { * * * * * }
          //

          DmCadastros.Tag := 1;

          FrmProdutos := TFrmProdutos.Create(Application);

          FrmProdutos.Showmodal ;

          Datasource.DataSet.FieldByName('PRODUTO').asString := FrmMain.Codigo_Str;


          EdProduto.SetFocus;

          DsProdutos.DataSet.Close;
          DsProdutos.DataSet.Open ;
          //
     end;
end;

procedure TFrmContratosItens.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FrmLocProdutoCadastro_Auto.free;
  FrmLocProdutoCadastro_Auto := nil;
end;

procedure TFrmContratosItens.btnSalvarEnter(Sender: TObject);
begin
  btnSalvar.Colors.Default := StrToInt(DmaPp.COR_FUNDO_SEL) ;
end;

procedure TFrmContratosItens.btnSalvarExit(Sender: TObject);
begin
  btnSalvar.Colors.Default := clMenu ;
end;

procedure TFrmContratosItens.edProdutoEnter(Sender: TObject);
begin
  CorFundo ( Sender );
end;

procedure TFrmContratosItens.edQtdadeEnter(Sender: TObject);
begin
  CorFundo ( Sender );
end;

procedure TFrmContratosItens.cmbUnidadeExit(Sender: TObject);
begin
  TiraCorFundo ( Sender );
end;

procedure TFrmContratosItens.CmbSubUnidadeExit(Sender: TObject);
begin
  TiraCorFundo ( Sender );
end;

procedure TFrmContratosItens.DataSourceStateChange(Sender: TObject);
begin
  //Autorizado para desconto acima do máximo
  Autorizado := False;
end;

procedure TFrmContratosItens.EdServicoEnter(Sender: TObject);
begin
  CorFundo ( Sender );
end;

procedure TFrmContratosItens.edQtdadeFISEnter(Sender: TObject);
begin
  CorFundo ( Sender );
end;

procedure TFrmContratosItens.edPrcUnitFISExit(Sender: TObject);
begin
  TiraCorFundo ( Sender );
end;

procedure TFrmContratosItens.btnMoedaClick(Sender: TObject);
begin
  If DataSource.DataSet.State = dsBrowse Then
     DataSource.DataSet.Edit;

  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmMoedas', False);

  FrmMoedas := TFrmMoedas.Create(Self);

  FrmMoedas.ShowModal;
  FrmMoedas.Free;
  FrmMoedas := Nil;
  DataSource.DataSet.FieldByName('COD_INDEXADOR').value := FrmMain.Codigo_Int ;
  DmFinanceiro2.Moeda.Close;
  DmFinanceiro2.Moeda.Open;
  cmbMoeda.SetFocus;
end;

end.
