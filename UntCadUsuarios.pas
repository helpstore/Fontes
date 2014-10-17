unit UntCadUsuarios;

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
  cxPC, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox;

type
  TfrmCadUsuarios = class(TfrmCadPadrao)
    dtListCODIGO: TIntegerField;
    dtListLOGIN: TIBStringField;
    dtListNOME: TIBStringField;
    GridDBBandedTableView2CODIGO: TcxGridDBBandedColumn;
    GridDBBandedTableView2LOGIN: TcxGridDBBandedColumn;
    GridDBBandedTableView2NOME: TcxGridDBBandedColumn;
    dtEditCODIGO: TIntegerField;
    dtEditLOGIN: TIBStringField;
    dtEditNOME: TIBStringField;
    dtEditPERFIL: TIntegerField;
    dtEditSENHA: TIBStringField;
    cxDBTextEdit1: TcxDBTextEdit;
    cxLabel3: TcxLabel;
    CmbPerfil: TcxDBLookupComboBox;
    cxLabel4: TcxLabel;
    dsPerfil: TDataSource;
    QryPerfil: TIBQuery;
    QryPerfilCODIGO: TIntegerField;
    QryPerfilDESCRICAO: TIBStringField;
    dtEditEXIBIR: TIBStringField;
    dtListDESCRICAO: TIBStringField;
    GridDBBandedTableView2DESCRICAO: TcxGridDBBandedColumn;
    procedure FormShow(Sender: TObject);
    procedure dtEditNewRecord(DataSet: TDataSet);
    procedure dtEditBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadUsuarios: TfrmCadUsuarios;

implementation

uses Funcoes;

{$R *.dfm}

procedure TfrmCadUsuarios.FormShow(Sender: TObject);
begin
  inherited;
  QryPerfil.Close;
  QryPerfil.Open;

end;

procedure TfrmCadUsuarios.dtEditNewRecord(DataSet: TDataSet);
begin
  inherited;
  dtEditSENHA.Value  := Encrypt('1234');
end;

procedure TfrmCadUsuarios.dtEditBeforePost(DataSet: TDataSet);
begin
  inherited;
  if dtEditPERFIL.asinteger = 0 then
  begin
    Application.MessageBox('Impossível salvar. Campo Perfil não preenchido.','Aviso',mb_iconerror + mb_ok);
    CmbPerfil.setfocus; 
    abort;
  end;
end;

end.
