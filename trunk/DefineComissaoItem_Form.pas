unit DefineComissaoItem_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls,   dxCntner, dxEditor, dxExEdtr, dxEdLib,
  dxDBELib,  IBSQL, ActnList, dxDBEdtr, Db, dxmdaset, dxBarDBNav,
  dxBar, dxTL, dxDBCtrl, dxDBGrid, dxDBTLCl, dxGrClEx, dxGrClms, DBCtrls,
  dxLayout, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinsdxBarPainter, cxClasses, cxLabel;

type
  TfrmDefineComissaoItem = class(TForm)
    Panel1: TPanel;
    DataSource: TDataSource;
    DsPessoas: TDataSource;
    Panel3: TPanel;
    b2: TBevel;
    LblTitulo: TcxLabel;
    Grid: TdxDBGrid;
    Navigator: TdxBarDBNavigator;
    BarMgr: TdxBarManager;
    btnIncluir: TdxBarButton;
    btnExcluir: TdxBarButton;
    BtnSalvar: TdxBarButton;
    btnCancelar: TdxBarButton;
    BtnFechar: TdxBarButton;
    btnAlterar: TdxBarButton;
    dxBarDBNavFirst: TdxBarDBNavButton;
    dxBarDBNavPrev: TdxBarDBNavButton;
    dxBarDBNavNext: TdxBarDBNavButton;
    dxBarDBNavLast: TdxBarDBNavButton;
    GridCNPJ: TdxDBGridMaskColumn;
    GridCODIGO: TdxDBGridMaskColumn;
    GridCOD_ITEM: TdxDBGridMaskColumn;
    GridPRODUTO: TdxDBGridMaskColumn;
    GridSEQUENCIA: TdxDBGridMaskColumn;
    GridPESSOA_FJ: TdxDBGridMaskColumn;
    GridPERCENTUAL: TdxDBGridMaskColumn;
    Actions: TActionList;
    ActIncluir: TAction;
    ActAlterar: TAction;
    ActExcluir: TAction;
    ActPost: TAction;
    ActCancel: TAction;
    ActFechar: TAction;
    DBText1: TDBText;
    dsVendasItens: TDataSource;
    DBText2: TDBText;
    GridLK_PESSOA: TdxDBGridExtLookupColumn;
    dxDBGridLayoutList: TdxDBGridLayoutList;
    dxDBGridLayoutListItem1: TdxDBGridLayout;
    Label1: TcxLabel;
    Label2: TcxLabel;
    procedure FormShow(Sender: TObject);
    procedure edtPorcentagemExit(Sender: TObject);
    procedure edtPorcentagemEnter(Sender: TObject);
    procedure edtPorcentagemKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnCancelarClick(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure ActPostExecute(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActExcluirExecute(Sender: TObject);
    procedure ActCancelExecute(Sender: TObject);
    procedure DataSourceStateChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDefineComissaoItem: TfrmDefineComissaoItem;

implementation

uses Application_DM, Funcoes, Vendas_Dm, Vendas_DM2, Vendas_Form;

{$R *.DFM}

procedure TfrmDefineComissaoItem.FormShow(Sender: TObject);
begin
  with dmVendas2 do
  begin
    SelPessoas.close;
    SelPessoas.ParamByName('cnpj').value := dmApp.cnpj;
    SelPessoas.Open;

    SelPessoas.FetchAll;
  end;

  with frmVendas do
  begin
    Comissao_Item.Close;
    Comissao_Item.Open;
    Grid.SetFocus;
  end;
end;

procedure TfrmDefineComissaoItem.edtPorcentagemExit(Sender: TObject);
begin
     TIRACORFUNDO( SENDER );
end;

procedure TfrmDefineComissaoItem.edtPorcentagemEnter(Sender: TObject);
begin
CORFUNDO ( SENDER );
end;

procedure TfrmDefineComissaoItem.edtPorcentagemKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if (key=VK_RETURN) OR (Key=VK_DOWN) Then
Begin
  Perform(WM_NEXTDLGCTL, 0, 0);
End;
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TfrmDefineComissaoItem.BtnCancelarClick(Sender: TObject);
begin
  close;
end;

procedure TfrmDefineComissaoItem.ActFecharExecute(Sender: TObject);
begin
  close;
end;

procedure TfrmDefineComissaoItem.ActPostExecute(Sender: TObject);
begin
  If not (Navigator.DataSource.State in dsEditModes) Then
    Exit;

  Try
    Navigator.DataSource.DataSet.Post;

  Grid.SetFocus;
  Except
    On E:EDataBaseError Do
       Begin
         ShowMessage('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ');
         Exit;
       End
    Else
       Begin
         ShowMessage('Ocorreu um Erro não identificado pelo Sistema !');
         Exit;
       End;
  End;
end;

procedure TfrmDefineComissaoItem.ActIncluirExecute(Sender: TObject);
begin
  try
     If Navigator.DataSource.State in dsEditModes Then
        Exit;


    Navigator.DataSource.DataSet.Append;
    Grid.SetFocus;
  Except
    On E:EDataBaseError Do
       Begin
         ShowMessage('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ');
         Exit;
       End
    Else
       Begin
         ShowMessage('Ocorreu um Erro não identificado pelo Sistema !');
         Exit;
       End;
  End;
end;

procedure TfrmDefineComissaoItem.ActAlterarExecute(Sender: TObject);
begin
  If Navigator.DataSource.State in dsEditModes Then
    Exit;
  Try
    Navigator.DataSource.DataSet.Edit;

  Grid.SetFocus;
  Except
    On E:EDataBaseError Do
       Begin
         ShowMessage('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ');
         Exit;
       End
    Else
       Begin
         ShowMessage('Ocorreu um Erro não identificado pelo Sistema !');
         Exit;
       End;
  End;
end;

procedure TfrmDefineComissaoItem.ActExcluirExecute(Sender: TObject);
begin
  If Navigator.DataSource.State in dsEditModes Then
    Exit;
  Try

    Navigator.DataSource.DataSet.Delete;

  Grid.SetFocus;  
  Except
    On E:EDataBaseError Do
       Begin
         ShowMessage('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ');
         Exit;
       End
    Else
       Begin
         ShowMessage('Ocorreu um Erro não identificado pelo Sistema !');
         Exit;
       End;
  End;
end;

procedure TfrmDefineComissaoItem.ActCancelExecute(Sender: TObject);
begin
 If Navigator.DataSource.DataSet.State in dsEditModes Then
    Navigator.DataSource.DataSet.Cancel
 else
    BtnFechar.OnClick(BtnFechar);
end;

procedure TfrmDefineComissaoItem.DataSourceStateChange(Sender: TObject);
begin
  dxBarDBNavFirst.Enabled := true ;
  dxBarDBNavPrev.Enabled  := true ;
  dxBarDBNavNext.Enabled  := true ;
  dxBarDBNavLast.Enabled  := true ;

  if Navigator.DataSource.State in dsEditModes then
  begin
    ActIncluir.Enabled   := False;
    ActAlterar.Enabled   := False;
    ActExcluir.Enabled   := False;
    BtnSalvar.Enabled    := True;
    BtnCancelar.Enabled  := True;
  end
  else
  begin
    ActIncluir.Enabled   := ActIncluir.Tag = 1;
    ActAlterar.Enabled   := ActAlterar.Tag = 1;
    ActExcluir.Enabled   := ActExcluir.Tag = 1;
    BtnSalvar.Enabled    := False;
    BtnCancelar.Enabled  := False;
    ActFechar.Enabled    := True;
  end;
end;

end.
