unit UntCadStatusServico;

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
  cxPC, cxMaskEdit, cxDropDownEdit, cxColorComboBox, cxDBColorComboBox,
  cxCheckBox, cxGroupBox;

type
  TfrmCadStatusServico = class(TfrmCadPadrao)
    dtListCNPJ: TIBStringField;
    dtListCODIGO: TIntegerField;
    dtListNOME: TIBStringField;
    dtListCOR: TIntegerField;
    dtListFECHADO: TIBStringField;
    dtListOS: TIBStringField;
    dtListMOVIMENTO: TIBStringField;
    GridDBBandedTableView2CNPJ: TcxGridDBBandedColumn;
    GridDBBandedTableView2CODIGO: TcxGridDBBandedColumn;
    GridDBBandedTableView2NOME: TcxGridDBBandedColumn;
    GridDBBandedTableView2COR: TcxGridDBBandedColumn;
    GridDBBandedTableView2FECHADO: TcxGridDBBandedColumn;
    GridDBBandedTableView2OS: TcxGridDBBandedColumn;
    GridDBBandedTableView2MOVIMENTO: TcxGridDBBandedColumn;
    dtEditCNPJ: TIBStringField;
    dtEditCODIGO: TIntegerField;
    dtEditNOME: TIBStringField;
    dtEditCOR: TIntegerField;
    dtEditFECHADO: TIBStringField;
    dtEditOS: TIBStringField;
    dtEditMOVIMENTO: TIBStringField;
    cxDBColorComboBox1: TcxDBColorComboBox;
    cxLabel3: TcxLabel;
    dtEditPADRAO_ENVIO: TIBStringField;
    dtEditPADRAO_ABERTURA: TIBStringField;
    dtListPADRAO_ENVIO: TIBStringField;
    dtListPADRAO_ABERTURA: TIBStringField;
    cxGroupBox1: TcxGroupBox;
    cxDBCheckBox3: TcxDBCheckBox;
    cxDBCheckBox2: TcxDBCheckBox;
    cxGroupBox2: TcxGroupBox;
    cxDBCheckBox1: TcxDBCheckBox;
    cxDBCheckBox4: TcxDBCheckBox;
    cxDBCheckBox5: TcxDBCheckBox;
    cxLabel4: TcxLabel;
    GridDBBandedTableView2PADRAO_ENVIO: TcxGridDBBandedColumn;
    GridDBBandedTableView2PADRAO_ABERTURA: TcxGridDBBandedColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadStatusServico: TfrmCadStatusServico;

implementation

{$R *.dfm}

end.
