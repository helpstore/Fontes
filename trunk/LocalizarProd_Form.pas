 unit LocalizarProd_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxEditor, dxExEdtr, dxDBEdtr, dxDBELib, dxCntner, dxEdLib, StdCtrls,
  ExtCtrls,   dxTL, dxDBCtrl, dxDBGrid, dxBar, Db, ActnList,
  cxPropertiesStore, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxContainer, cxEdit,
  dxSkinsdxBarPainter, cxClasses, cxLabel, cxPC;

type
  TFrmLocalizarProd = class(TForm)
    pnlclient: TPanel;
    Grid: TdxDBGrid;
    Panel2: TPanel;
    Bevel1: TBevel;
    pc: TcxPageControl;
    dxTabSheet1: TcxTabSheet;
    Shape1: TShape;
    Shape5: TShape;
    Label1: TcxLabel;
    Label2: TcxLabel;
    Label3: TcxLabel;
    dxTabSheet3: TcxTabSheet;
    Shape3: TShape;
    Shape7: TShape;
    Label7: TcxLabel;
    edCodigo: TdxEdit;
    EdNomeI: TdxEdit;
    cmbMarca: TdxLookupEdit;
    cmbAplicacao: TdxLookupEdit;
    dsProdutos: TDataSource;
    GridCNPJ: TdxDBGridMaskColumn;
    GridCODIGO: TdxDBGridMaskColumn;
    GridNOME: TdxDBGridMaskColumn;
    GridQTDADE_2: TdxDBGridMaskColumn;
    GridPRC_VENDA: TdxDBGridMaskColumn;
    Panel3: TPanel;
    dxBarDockControl1: TdxBarDockControl;
    BarManager: TdxBarManager;
    opSelecionar: TdxBarButton;
    opCancelar: TdxBarButton;
    dsMarcas: TDataSource;
    dsAplicacoes: TDataSource;
    dsSimilares: TDataSource;
    Actions: TActionList;
    ActSelecionar: TAction;
    ActCancelar: TAction;
    Label4: TcxLabel;
    cmbProduto: TdxLookupEdit;
    ActNP: TAction;
    ActPP: TAction;
    Label5: TcxLabel;
    EdNomeF: TdxEdit;
    ActFiltrar: TAction;
    Label6: TcxLabel;
    stgFrmLocalizarProd: TcxPropertiesStore;
    procedure FormShow(Sender: TObject);
    procedure edCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxTabSheet1Exit(Sender: TObject);
    procedure ActSelecionarExecute(Sender: TObject);
    procedure ActCancelarExecute(Sender: TObject);
    procedure GridKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure pcChanging(Sender: TObject; NewPage: TcxTabSheet;
      var AllowChange: Boolean);
    procedure ActNPExecute(Sender: TObject);
    procedure ActPPExecute(Sender: TObject);
    procedure ActFiltrarExecute(Sender: TObject);
  private
    { Private declarations }
    Procedure Filtrar_Produtos;
  public
    { Public declarations }
    CodigoProduto: String[13];
  end;

var
  FrmLocalizarProd: TFrmLocalizarProd;

implementation

uses LocalizarProd_DM, Application_DM, Funcoes;

{$R *.DFM}

procedure TFrmLocalizarProd.Filtrar_Produtos;
begin
  //
  If dsProdutos.DataSet.Active Then
     dsProdutos.DataSet.Close;
  //
  DMLocalizarProd.Produtos.Params.Clear ;

  DMLocalizarProd.Produtos.SQL.CLEAR ;

  DMLocalizarProd.Produtos.SQL.Add (' SELECT CNPJ, CODIGO, CODIGO_2, NOME, QTDADE_2, QTDADE_1, PRC_VENDA FROM EST_PRODUTOS ' );

  DMLocalizarProd.Produtos.Params.CreateParam (FtString, 'CNPJ', PTInput );
  DMLocalizarProd.Produtos.Params.CreateParam (FtString, 'ATIVO', PTInput );

  DMLocalizarProd.Produtos.SQL.Add (' WHERE CNPJ = :CNPJ AND ATIVO = :ATIVO ');

  DMLocalizarProd.Produtos.ParamByName ('CNPJ').AsString := DmaPP.Cnpj ;

  DMLocalizarProd.Produtos.ParamByName ('ATIVO').AsString := 'S' ;

  If Trim(edCodigo.Text) <> ''
  Then begin
       DMLocalizarProd.Produtos.Params.CreateParam (FtString, 'CODIGO', PTInput );

       DMLocalizarProd.Produtos.SQL.Add (' AND CODIGO >= :CODIGO ');

       DMLocalizarProd.Produtos.ParamByName ('CODIGO').AsString := edCodigo.Text ;
  end ;

  //
  If Trim(edNomei.Text) <> ''
  Then begin
       DMLocalizarProd.Produtos.Params.CreateParam (FtString, 'NOMEI', PTInput );

       DMLocalizarProd.Produtos.SQL.Add (' AND NOME >= :NOMEI ');

       DMLocalizarProd.Produtos.ParamByName ('NOMEI').AsString := EdNomeI.Text ;
  end;

  If Trim(edNomeF.Text) <> ''
  Then begin
       DMLocalizarProd.Produtos.Params.CreateParam (FtString, 'NOMEF', PTInput );

       DMLocalizarProd.Produtos.SQL.Add (' AND NOME <= :NOMEF ');

       DMLocalizarProd.Produtos.ParamByName ('NOMEF').AsString := EdNomeF.Text ;
  end;

  //
  If Trim(cmbMarca.Text) <> ''
  then begin
       DMLocalizarProd.Produtos.Params.CreateParam (FtInteger, 'MARCA', PTInput );

       DMLocalizarProd.Produtos.SQL.Add (' AND MARCA = :MARCA ');

       DMLocalizarProd.Produtos.ParamByName ('MARCA').AsInteger := cmbMarca.LookupKeyValue ;
  end;

  //
  If Trim(cmbAplicacao.Text) <> ''
  Then begin
       DMLocalizarProd.Produtos.Params.CreateParam (FtInteger, 'APLICACAO', PTInput );

       DMLocalizarProd.Produtos.SQL.Add ( ' AND CODIGO IN (SELECT DISTINCT PRODUTO FROM EST_PRODUTOS_APLICACOES WHERE CNPJ = :CNPJ AND APLICACAO = :APLICACAO  )');

       DMLocalizarProd.Produtos.ParamByName ('APLICACAO').AsInteger := cmbAplicacao.LookupKeyValue ;
  end;

  If trim(edCodigo.Text) <> ''
  then begin
       DMLocalizarProd.Produtos.SQL.Add (' ORDER BY CODIGO ');
  end
  else begin
       DMLocalizarProd.Produtos.SQL.Add (' ORDER BY NOME ');
  end;

  //

  DMLocalizarProd.Produtos.Open;
end;

procedure TFrmLocalizarProd.FormShow(Sender: TObject);
begin
  //
  IniciaComponentes ( Self as TForm );
  //
  Try
    If Not dsMarcas.DataSet.Active Then
       dsMarcas.DataSet.Open;
    If Not dsAplicacoes.DataSet.Active Then
       dsAplicacoes.DataSet.Open;
  Except
    On E:EDataBaseError Do
       Begin
         MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
         Exit;
       End
    Else
       Begin
         MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
         Exit;
       End;
  End;
  //
  edCodigo.SetFocus;
  //
  FrmLocalizarProd.Left := 177;
  FrmLocalizarProd.Top  := 105;
end;

procedure TFrmLocalizarProd.edCodigoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Begin
       Perform(WM_NEXTDLGCTL, 0, 0);
       If Self.ActiveControl = pc Then
          Perform(WM_NEXTDLGCTL, 0, 0);
     End;
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmLocalizarProd.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //
  Action := caHide;
end;

procedure TFrmLocalizarProd.dxTabSheet1Exit(Sender: TObject);
begin
  If (FrmLocalizarProd.ActiveControl = Grid) And
     (pc.ActivePageIndex = 0) Then
     Filtrar_Produtos;
end;

procedure TFrmLocalizarProd.ActSelecionarExecute(Sender: TObject);
begin
  //
  If grid.DataSource.DataSet.RecordCount = 0 Then
     Begin
       MessageDlg('Por favor selecione corretamente um produto !',MtError,[MbOk],0);
       Exit;
     End;
  //
  CodigoProduto := grid.DataSource.DataSet.FieldByName('CODIGO').asString;
  //
  FrmLocalizarProd.ModalResult := mrOk;
  //
  Hide;
end;

procedure TFrmLocalizarProd.ActCancelarExecute(Sender: TObject);
begin
  //
  FrmLocalizarProd.ModalResult := mrCancel;
  //
  Hide;
end;

procedure TFrmLocalizarProd.GridKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If Key = vk_return Then
     ActSelecionar.Execute;
end;

procedure TFrmLocalizarProd.FormCreate(Sender: TObject);
begin
  //
  pc.ActivePageIndex := 0;
end;

procedure TFrmLocalizarProd.pcChanging(Sender: TObject;
  NewPage: TcxTabSheet; var AllowChange: Boolean);
begin
  //
  Try
    If NewPage = dxTabSheet1 Then
       Begin
         dsSimilares.DataSet.Close;
         grid.DataSource := dsProdutos;
       End;
    If NewPage = dxTabSheet3 Then
       Begin
         If dsProdutos.DataSet.RecordCount = 0 Then
            Begin
              //
              MessageDlg('Por favor selecione corretamente um produto !',MtError,[MbOk],0);
              AllowChange := False;
              Exit;
            End
         Else
            Begin
              //
              cmbProduto.LookupKeyValue := dsProdutos.DataSet.FieldByName('CODIGO').asString;
              //
              dsSimilares.DataSet.Open;
              //
              grid.DataSource := dsSimilares;
            End;
       End;
  Except
  End;
end;

procedure TFrmLocalizarProd.ActNPExecute(Sender: TObject);
begin
  //
  If pc.ActivePageIndex < 1 Then
     pc.ActivePageIndex := pc.ActivePageIndex + 1;
  //
  Grid.Setfocus;
end;

procedure TFrmLocalizarProd.ActPPExecute(Sender: TObject);
begin
  //
  If pc.ActivePageIndex > 0 Then
     pc.ActivePageIndex := pc.ActivePageIndex - 1;
  //
  Grid.SetFocus;
end;

procedure TFrmLocalizarProd.ActFiltrarExecute(Sender: TObject);
begin
     Filtrar_Produtos ;
end;

end.
