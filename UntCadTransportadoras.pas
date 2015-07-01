unit UntCadTransportadoras;

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
  dxSkinsdxBarPainter, cxIntlBase, cxintl, cxPropertiesStore,
  cxGridCustomPopupMenu, cxGridPopupMenu, dxBarDBNav, ImgList, ActnList,
  dxBar, cxClasses, IBQuery, IBCustomDataSet, cxLabel, cxTextEdit,
  cxDBEdit, ExtCtrls, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxGrid,
  cxPC, cxButtonEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox;

type
  TfrmCadTransportadoras = class(TfrmCadPadrao)
    dtListCNPJ: TIBStringField;
    dtListCODIGO: TIntegerField;
    dtListNOME: TIBStringField;
    dtListPLACA: TIBStringField;
    dtListUF: TIBStringField;
    dtListCPF_CNPJ: TIBStringField;
    dtListENDERECO: TIBStringField;
    dtListCIDADE: TIBStringField;
    dtListIE: TIBStringField;
    dtEditCNPJ: TIBStringField;
    dtEditCODIGO: TIntegerField;
    dtEditNOME: TIBStringField;
    dtEditPLACA: TIBStringField;
    dtEditUF: TIBStringField;
    dtEditCPF_CNPJ: TIBStringField;
    dtEditENDERECO: TIBStringField;
    dtEditCIDADE: TIBStringField;
    dtEditIE: TIBStringField;
    GridDBBandedTableView2CODIGO: TcxGridDBBandedColumn;
    GridDBBandedTableView2NOME: TcxGridDBBandedColumn;
    GridDBBandedTableView2PLACA: TcxGridDBBandedColumn;
    GridDBBandedTableView2UF: TcxGridDBBandedColumn;
    GridDBBandedTableView2CPF_CNPJ: TcxGridDBBandedColumn;
    GridDBBandedTableView2ENDERECO: TcxGridDBBandedColumn;
    GridDBBandedTableView2CIDADE: TcxGridDBBandedColumn;
    GridDBBandedTableView2IE: TcxGridDBBandedColumn;
    cxLabel12: TcxLabel;
    aTfrmCadPessoas: TcxDBLookupComboBox;
    btnPessoaFJ: TcxButtonEdit;
    dsPessoa: TDataSource;
    QryPessoa: TIBQuery;
    QryPessoaCODIGO: TIntegerField;
    QryPessoaNOME_RAZAO: TIBStringField;
    dtListPESSOA_FJ: TIntegerField;
    dtEditPESSOA_FJ: TIntegerField;
    cxDBTextEdit1: TcxDBTextEdit;
    cxLabel3: TcxLabel;
    procedure ActCadLookupExecute(Sender: TObject);
    procedure btnPessoaFJClick(Sender: TObject);
    procedure dtEditPESSOA_FJChange(Sender: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadTransportadoras: TfrmCadTransportadoras;

implementation

uses untCadPessoas;

{$R *.dfm}

procedure TfrmCadTransportadoras.ActCadLookupExecute(Sender: TObject);
begin
  inherited;
  if aTfrmCadPessoas.Focused then
    btnPessoaFJ.OnClick(Self);
end;

procedure TfrmCadTransportadoras.btnPessoaFJClick(Sender: TObject);
begin
  inherited;

  CadastroLookup(TfrmCadPessoas,dtEdit,'PESSOA_FJ',QryPessoa);
  exit;
  frmCadPessoas := TfrmCadPessoas.Create(Self);
  frmCadPessoas.ShowMODAL ;

  AbreDataSet(TDataSet(QryPessoa));

  dtEditPESSOA_FJ.Value := frmCadPessoas.Codigo;

  frmCadPessoas.Free;
  frmCadPessoas := nil;
end;

procedure TfrmCadTransportadoras.dtEditPESSOA_FJChange(Sender: TField);
begin
  inherited;
  dsPessoa.DataSet.Locate('CODIGO',dtEditPESSOA_FJ.value,[loCaseInsensitive]);
  dtEditNOME.Value := QryPessoaNOME_RAZAO.Value;
end;

end.
