unit untCadVendedor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, untCadPadrao, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, cxContainer,
  dxSkinsdxBarPainter, cxIntlBase, cxintl, cxPropertiesStore, ACBrBase,
  ACBrEnterTab, cxGridCustomPopupMenu, cxGridPopupMenu, dxBarDBNav,
  ImgList, ActnList, dxBar, cxClasses, IBQuery, IBCustomDataSet, cxLabel,
  cxTextEdit, cxDBEdit, ExtCtrls, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGrid, cxPC, cxCheckBox, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxMaskEdit,
  cxButtonEdit, cxCalc;

type
  TfrmCadVendedor = class(TfrmCadPadrao)
    dtListCNPJ: TIBStringField;
    dtListCODIGO: TIntegerField;
    dtListNOME: TIBStringField;
    dtListCOM_VISTA: TFloatField;
    dtListCOM_PRAZO: TFloatField;
    dtListPESSOA_FJ: TIntegerField;
    dtListSENHA: TIBStringField;
    dtListATIVO: TIBStringField;
    dtListNOME_PESSOA: TIBStringField;
    GridDBBandedTableView2CNPJ: TcxGridDBBandedColumn;
    GridDBBandedTableView2CODIGO: TcxGridDBBandedColumn;
    GridDBBandedTableView2NOME: TcxGridDBBandedColumn;
    GridDBBandedTableView2COM_VISTA: TcxGridDBBandedColumn;
    GridDBBandedTableView2COM_PRAZO: TcxGridDBBandedColumn;
    GridDBBandedTableView2PESSOA_FJ: TcxGridDBBandedColumn;
    GridDBBandedTableView2SENHA: TcxGridDBBandedColumn;
    GridDBBandedTableView2ATIVO: TcxGridDBBandedColumn;
    GridDBBandedTableView2NOME_PESSOA: TcxGridDBBandedColumn;
    dtEditCNPJ: TIBStringField;
    dtEditCODIGO: TIntegerField;
    dtEditNOME: TIBStringField;
    dtEditCOM_VISTA: TFloatField;
    dtEditCOM_PRAZO: TFloatField;
    dtEditPESSOA_FJ: TIntegerField;
    dtEditSENHA: TIBStringField;
    dtEditATIVO: TIBStringField;
    dtEditCOD_PERFIL: TIntegerField;
    dtEditCOD_PERFIL_PAGTO: TIntegerField;
    btnLogradouro: TcxButtonEdit;
    cbPessoaFJ: TcxDBLookupComboBox;
    cxLabel9: TcxLabel;
    cxDBCalcEdit1: TcxDBCalcEdit;
    cxLabel3: TcxLabel;
    cxDBCalcEdit2: TcxDBCalcEdit;
    cxLabel4: TcxLabel;
    dsPessoa: TDataSource;
    QryPessoa: TIBQuery;
    QryPessoaCODIGO: TIntegerField;
    QryPessoaNOME_RAZAO: TIBStringField;
    pnlSubCad: TPanel;
    PgcComplementar: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    PGCSub1: TcxPageControl;
    tbsListaComp1: TcxTabSheet;
    cxGrid1: TcxGrid;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1DBBandedTableView1CODIGO: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1PRODUTO: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1QTDE: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1VALOR: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1TOTAL: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1NOTA_FISCAL: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1NOME_PRODUTO: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1QTDE_QUEBRA: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1QTDE_LIQUIDA: TcxGridDBBandedColumn;
    cxGridLevel1: TcxGridLevel;
    tbsEditaComp1: TcxTabSheet;
    edtCodigoEnd: TcxDBTextEdit;
    cxLabel8: TcxLabel;
    cbProduto: TcxDBLookupComboBox;
    cxLabel5: TcxLabel;
    btnProduto: TcxButtonEdit;
    cxDBCalcEdit6: TcxDBCalcEdit;
    cxLabel10: TcxLabel;
    cxDBCalcEdit7: TcxDBCalcEdit;
    cxLabel11: TcxLabel;
    cxDBCalcEdit8: TcxDBCalcEdit;
    cxLabel12: TcxLabel;
    cxDBCalcEdit9: TcxDBCalcEdit;
    cxLabel13: TcxLabel;
    cxDBCalcEdit10: TcxDBCalcEdit;
    cxLabel14: TcxLabel;
    procedure btnLogradouroClick(Sender: TObject);
    procedure ActCadLookupExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadVendedor: TfrmCadVendedor;

implementation

uses untCadPessoas;

{$R *.dfm}

procedure TfrmCadVendedor.btnLogradouroClick(Sender: TObject);
begin
  inherited;

  frmCadPessoas := TfrmCadPessoas.Create(Self);
  frmCadPessoas.ShowMODAL ;

  AbreDataSet(TDataSet(QryPessoa));

  dtEditPESSOA_FJ.Value := frmCadPessoas.Codigo;

  frmCadPessoas.Free;
  frmCadPessoas := nil;
end;

procedure TfrmCadVendedor.ActCadLookupExecute(Sender: TObject);
begin
  inherited;
  if cbPessoaFJ.Focused then
    cbPessoaFJ.OnClick(Self);
end;

end.
