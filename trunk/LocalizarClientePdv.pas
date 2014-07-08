 unit LocalizarClientePdv;
                                 
interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Grids, DBGrids, Buttons, ExtCtrls, db,
    ActnList,
  dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid, dxCntner,dxExEdtr, 
  dxBar, dxBarDBNav, dxEditor, dxDBEdtr, dxDBELib, 
  cxPropertiesStore, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, Menus, cxButtons, cxLabel;

type
  TFrmLocalizarClientePdv = class(TForm)
    pnlClient: TPanel;
    Act: TActionList;
    ActOk: TAction;
    ActCancelar: TAction;
    GRID: TdxDBGrid;
    DSource: TDataSource;
    LblTitulo: TcxLabel;
    b2: TBevel;
    GRIDNOME_RAZAO: TdxDBGridMaskColumn;
    GRIDFONE: TdxDBGridColumn;
    GRIDFANTASIA: TdxDBGridColumn;
    GRIDDOCUMENTO: TdxDBGridColumn;
    Panel2: TPanel;
    BtnOk: TcxButton;
    BtnCancelar: TcxButton;
    stgFrmLocalizarClientePdv: TcxPropertiesStore;
    procedure FormShow(Sender: TObject);
    procedure GridKeyPress(Sender: TObject; var Key: Char);
    procedure GridDblClick(Sender: TObject);
    procedure GRIDKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ActOkExecute(Sender: TObject);
    procedure ActCancelarExecute(Sender: TObject);
    procedure pnlClientResize(Sender: TObject);
  private
    { Private declarations }

    function  GetTrecho: Integer;

  public
    { Public declarations }
    property CampTrecho: Integer Read GetTrecho ;

  end;

var
  FrmLocalizarClientePdv: TFrmLocalizarClientePdv;

implementation

uses Application_DM, Funcoes, Pdv_Dm, ConveniadoPdv_Form;

{$R *.DFM}

function TFrmLocalizarClientePdv.GetTrecho: Integer ;
begin
     Result := DSource.DataSet.FieldByName('CODIGO').AsInteger ;
end;

procedure TFrmLocalizarClientePdv.FormShow(Sender: TObject);
begin
     //TROCANDO COR DE FUNDO
     IF (( TRIM(DMAPP.PDV_COR_FUNDO) <> '') and ( TRIM(DMAPP.PDV_COR_FUNDO) <> '0'))
     THEN BEGIN
          pnlClient.Color   := STRTOINT(TRIM(DMAPP.PDV_COR_FUNDO));
          Panel2.Color      := STRTOINT(TRIM(DMAPP.PDV_COR_FUNDO));
     END;

     IF ((TRIM(DMAPP.PDV_COR_FONTE) <> '') and (TRIM(DMAPP.PDV_COR_FONTE) <> '0'))
     THEN BEGIN
          LblTitulo.Style.Font.Color    := STRTOINT(TRIM(DMAPP.PDV_COR_FONTE));
          BtnOk.Font.Color        := STRTOINT(TRIM(DMAPP.PDV_COR_FONTE));
          BtnCancelar.Font.Color  := STRTOINT(TRIM(DMAPP.PDV_COR_FONTE));
     end;

     If Not DSource.DataSet.active
     Then
         DSource.DataSet.Open ;

     ActiveControl := GRID;

     FrmLocalizarClientePdv.Top  := FrmConveniadoPdv.Top  ;
     FrmLocalizarClientePdv.Left := FrmConveniadoPdv.Left ;
end;

procedure TFrmLocalizarClientePdv.GridKeyPress(Sender: TObject; var Key: Char);
begin
     If Key = #13
     then begin
          ModalResult:=mrOk;
     end
     else
         if ( key = #27 ) or ( Key = #18 )
         then
              ModalResult:=mrCancel;    
end;

procedure TFrmLocalizarClientePdv.GridDblClick(Sender: TObject);
begin
     ModalResult:=mrOk;
end;

procedure TFrmLocalizarClientePdv.GRIDKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     If Key = 13
     then begin
          ModalResult:=mrOk;
     end
     else
         if ( key = 27 ) or ( Key = 18 )
         then
              ModalResult:=mrCancel;

     If ( Key = 56 ) or ( Key = 54 )
     then begin
          DSource.DataSet.Prior ;
     end;

     If ( Key = 52 ) or ( Key = 50 )
     then begin
          DSource.DataSet.Next ;
     end;
end;

procedure TFrmLocalizarClientePdv.ActOkExecute(Sender: TObject);
begin
     ModalResult:=mrOk;
end;

procedure TFrmLocalizarClientePdv.ActCancelarExecute(Sender: TObject);
begin
     ModalResult:=mrCancel;
end;

procedure TFrmLocalizarClientePdv.pnlClientResize(Sender: TObject);
begin
  b2.Width := pnlClient.Width - 17;
end;

end.
