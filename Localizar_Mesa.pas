 unit Localizar_Mesa;
                                 
interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Grids, DBGrids, Buttons, ExtCtrls, db,
    ActnList,
  dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid, dxCntner,dxExEdtr, 
  dxBar, dxBarDBNav, dxEditor, dxDBEdtr, dxDBELib,
  cxPropertiesStore, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  Menus, cxControls, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, cxLabel, cxButtons;

type
  TFrm_Localizar_Mesas = class(TForm)
    pnlClient: TPanel;
    BTNOK: TcxButton;
    BTNCANCELA: TcxButton;
    RzLabel1: TcxLabel;
    Act: TActionList;
    ActOk: TAction;
    ActCancelar: TAction;
    GRID: TdxDBGrid;
    DSource: TDataSource;
    LblTitulo: TcxLabel;
    b2: TBevel;
    LblRegistros: TcxLabel;
    ActLookup: TAction;
    GRIDCODIGO: TdxDBGridMaskColumn;
    GRIDCODIGO_2: TdxDBGridMaskColumn;
    GRIDTOTAL: TdxDBGridMaskColumn;
    stgFrm_Localizar_Mesas: TcxPropertiesStore;
    procedure FormShow(Sender: TObject);
    procedure GridKeyPress(Sender: TObject; var Key: Char);
    procedure GridDblClick(Sender: TObject);
    procedure GRIDKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ActOkExecute(Sender: TObject);
    procedure ActCancelarExecute(Sender: TObject);
    procedure pnlClientResize(Sender: TObject);
    procedure ActLookupExecute(Sender: TObject);
  private
    { Private declarations }

    function  GetTrecho: Integer;

  public
    { Public declarations }
    Cad: String[1] ;
    property CampTrecho: Integer Read GetTrecho ;
  end;

var
  Frm_Localizar_Mesas: TFrm_Localizar_Mesas;

implementation

uses Pdv_DM,
     Application_DM,
     Funcoes;

{$R *.DFM}

function TFrm_Localizar_Mesas.GetTrecho: Integer ;
begin
     Result := GRIDCODIGO.Field.Value ;
end;

procedure TFrm_Localizar_Mesas.FormShow(Sender: TObject);
begin
     //TROCANDO COR DE FUNDO
     IF (( TRIM(DMAPP.PDV_COR_FUNDO) <> '') and ( TRIM(DMAPP.PDV_COR_FUNDO) <> '0'))
     THEN BEGIN
          pnlClient.Color      := STRTOINT(TRIM(DMAPP.PDV_COR_FUNDO));
     END;

     IF ((TRIM(DMAPP.PDV_COR_FONTE) <> '') and (TRIM(DMAPP.PDV_COR_FONTE) <> '0'))
     THEN BEGIN
          LblTitulo.Style.Font.Color     := STRTOINT(TRIM(DMAPP.PDV_COR_FONTE));
          LblRegistros.Style.Font.Color  := STRTOINT(TRIM(DMAPP.PDV_COR_FONTE));
          BTNOK.Colors.Default         := STRTOINT(TRIM(DMAPP.PDV_COR_FONTE));
          BTNCANCELA.Colors.Default    := STRTOINT(TRIM(DMAPP.PDV_COR_FONTE));
     end;

     DSource.DataSet.Close;
     DSource.DataSet.Open;

     ActiveControl := GRID;
     Cad           := 'N' ;
end;

procedure TFrm_Localizar_Mesas.GridKeyPress(Sender: TObject; var Key: Char);
begin
     If Key = #13
     then begin
          ModalResult:=mrOk;
     end
     else
         if key = #27
         then
              ModalResult:=mrCancel;
end;

procedure TFrm_Localizar_Mesas.GridDblClick(Sender: TObject);
begin
     ModalResult:=mrOk;
end;

procedure TFrm_Localizar_Mesas.GRIDKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     If Key = 13
     then begin
          ModalResult:=mrOk;
     end
     else
         if key = 27
         then
              ModalResult:=mrCancel;
end;

procedure TFrm_Localizar_Mesas.ActOkExecute(Sender: TObject);
begin
     ModalResult:=mrOk;
end;

procedure TFrm_Localizar_Mesas.ActCancelarExecute(Sender: TObject);
begin
     ModalResult:=mrCancel;
end;

procedure TFrm_Localizar_Mesas.pnlClientResize(Sender: TObject);
begin
  b2.Width := pnlClient.Width - 17;
  LblRegistros.Left := pnlClient.Width - 11 - LblRegistros.Width;
end;

procedure TFrm_Localizar_Mesas.ActLookupExecute(Sender: TObject);
begin
     //LookUp
     Cad := 'S' ;
     ModalResult:=mrCancel;
end;

end.
