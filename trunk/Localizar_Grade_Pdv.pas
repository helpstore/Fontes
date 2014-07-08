 unit Localizar_Grade_Pdv;
                                 
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
  TFrm_Localizar_Grades_Pdv = class(TForm)
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
    GRIDESTOQUE: TdxDBGridMaskColumn;
    GRIDNOME_MATERIAL: TdxDBGridMaskColumn;
    GRIDNOME_COR: TdxDBGridMaskColumn;
    GRIDNOME_PERFIL: TdxDBGridMaskColumn;
    GRIDNUMERO: TdxDBGridMaskColumn;
    GRIDGRADE: TdxDBGridColumn;
    stgFrm_Localizar_Grades_Pdv: TcxPropertiesStore;
    procedure FormShow(Sender: TObject);
    procedure GridKeyPress(Sender: TObject; var Key: Char);
    procedure GridDblClick(Sender: TObject);
    procedure GRIDKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ActOkExecute(Sender: TObject);
    procedure ActCancelarExecute(Sender: TObject);
    procedure pnlClientResize(Sender: TObject);
  private
    { Private declarations }

    function  GetTrecho: String;

  public
    { Public declarations }
    Numero: String ;

    property CampTrecho: String Read GetTrecho ;

  end;

var
  Frm_Localizar_Grades_Pdv: TFrm_Localizar_Grades_Pdv;

implementation

uses Cadastros_DM,
     Application_DM,
     Funcoes,
     Pdv_DM, FuncoesPdv_Form, Pdv_Frm;

{$R *.DFM}

function TFrm_Localizar_Grades_Pdv.GetTrecho: String ;
begin
     Numero := DSource.DataSet.FieldByName('NUMERO').AsString  ;
     Result := DSource.DataSet.FieldByName('GRADE' ).AsString  ;
end;

procedure TFrm_Localizar_Grades_Pdv.FormShow(Sender: TObject);
begin
     Frm_Localizar_Grades_Pdv.Top  := FrmPdv.Lista.Top  ;
     Frm_Localizar_Grades_Pdv.Left := FrmPdv.Lista.Left ;


     //TROCANDO COR DE FUNDO
     IF (( TRIM(DMAPP.PDV_COR_FUNDO) <> '') and ( TRIM(DMAPP.PDV_COR_FUNDO) <> '0'))
     THEN BEGIN
          pnlClient.Color      := STRTOINT(TRIM(DMAPP.PDV_COR_FUNDO));
     END;

     IF ((TRIM(DMAPP.PDV_COR_FONTE) <> '') and (TRIM(DMAPP.PDV_COR_FONTE) <> '0'))
     THEN BEGIN
          LblTitulo.Style.Font.Color    := STRTOINT(TRIM(DMAPP.PDV_COR_FONTE));
          LblRegistros.Style.Font.Color := STRTOINT(TRIM(DMAPP.PDV_COR_FONTE));
          BTNOK.Font.Color        := STRTOINT(TRIM(DMAPP.PDV_COR_FONTE));
          BTNCANCELA.Font.Color   := STRTOINT(TRIM(DMAPP.PDV_COR_FONTE));
     end;

     If Not DSource.DataSet.active
     Then
         DSource.DataSet.Open ;
         
     ActiveControl := GRID;
end;

procedure TFrm_Localizar_Grades_Pdv.GridKeyPress(Sender: TObject; var Key: Char);
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

procedure TFrm_Localizar_Grades_Pdv.GridDblClick(Sender: TObject);
begin
     ModalResult:=mrOk;
end;

procedure TFrm_Localizar_Grades_Pdv.GRIDKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TFrm_Localizar_Grades_Pdv.ActOkExecute(Sender: TObject);
begin
     ModalResult:=mrOk;
end;

procedure TFrm_Localizar_Grades_Pdv.ActCancelarExecute(Sender: TObject);
begin
     ModalResult:=mrCancel;
end;

procedure TFrm_Localizar_Grades_Pdv.pnlClientResize(Sender: TObject);
begin
  GetTrecho ;
     
  b2.Width := pnlClient.Width - 17;
  LblRegistros.Left := pnlClient.Width - 11 - LblRegistros.Width;
end;

end.
