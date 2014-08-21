unit UntCadEventoContabil;

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
  cxPC, cxCheckBox, cxMemo;

type
  TfrmCadEventoContabil = class(TfrmCadPadrao)
    dtListCNPJ: TIBStringField;
    dtListCODEVENTOCONTABIL: TIntegerField;
    dtListDESCRICAO: TIBStringField;
    dtListCODIGO: TIBStringField;
    dtListOBSERVACAO: TBlobField;
    dtListTIPO: TIBStringField;
    dtListMOVIMENTAFLUXODECAIXAREALIZADO: TIBStringField;
    dtListCONTABILIZACAOAUXILIAR: TIBStringField;
    GridDBBandedTableView2CNPJ: TcxGridDBBandedColumn;
    GridDBBandedTableView2CODEVENTOCONTABIL: TcxGridDBBandedColumn;
    GridDBBandedTableView2DESCRICAO: TcxGridDBBandedColumn;
    GridDBBandedTableView2CODIGO: TcxGridDBBandedColumn;
    GridDBBandedTableView2OBSERVACAO: TcxGridDBBandedColumn;
    GridDBBandedTableView2TIPO: TcxGridDBBandedColumn;
    GridDBBandedTableView2MOVIMENTAFLUXODECAIXAREALIZADO: TcxGridDBBandedColumn;
    GridDBBandedTableView2CONTABILIZACAOAUXILIAR: TcxGridDBBandedColumn;
    dtEditCNPJ: TIBStringField;
    dtEditCODEVENTOCONTABIL: TIntegerField;
    dtEditDESCRICAO: TIBStringField;
    dtEditCODIGO: TIBStringField;
    dtEditOBSERVACAO: TBlobField;
    dtEditTIPO: TIBStringField;
    dtEditMOVIMENTAFLUXODECAIXAREALIZADO: TIBStringField;
    dtEditCONTABILIZACAOAUXILIAR: TIBStringField;
    cxLabel3: TcxLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBCheckBox1: TcxDBCheckBox;
    cxDBCheckBox2: TcxDBCheckBox;
    cxDBMemo1: TcxDBMemo;
    cxLabel4: TcxLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadEventoContabil: TfrmCadEventoContabil;

implementation

{$R *.dfm}

end.
