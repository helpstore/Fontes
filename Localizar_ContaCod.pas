  unit Localizar_ContaCod;
                                 
interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Grids, DBGrids, Buttons, ExtCtrls, db,
    ActnList,
  dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid, dxCntner,dxExEdtr, 
  dxBar, dxBarDBNav, cxPropertiesStore, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Menus, cxControls, cxContainer, cxEdit,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue, cxLabel,
  cxButtons;

type
  TFrm_Localizar_ContaCod = class(TForm)
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
    GRIDCONTA: TdxDBGridMaskColumn;
    GRIDCODIGO: TdxDBGridMaskColumn;
    GRIDCONTAPAI: TdxDBGridMaskColumn;
    GRIDNOME: TdxDBGridMaskColumn;
    stgFrm_Localizar_ContaCod: TcxPropertiesStore;
    procedure FormShow(Sender: TObject);
    procedure GridKeyPress(Sender: TObject; var Key: Char);
    procedure GridDblClick(Sender: TObject);
    procedure GRIDTitleClick(Sender: TObject; ACol, ARow: Integer;
      AButton: TMouseButton; AShift: TShiftState);
    procedure GRIDKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ActOkExecute(Sender: TObject);
    procedure ActCancelarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cbAutoExpandOnSearchClick(Sender: TObject);
    procedure cbAutoSearchClick(Sender: TObject);
    procedure DSourceDataChange(Sender: TObject; Field: TField);
    procedure pnlClientResize(Sender: TObject);
    procedure ActLookupExecute(Sender: TObject);
  private
    { Private declarations }

    function  GetTrecho: String;

  public
    { Public declarations }

    property CampTrecho: String Read GetTrecho ;

  end;

var
  Frm_Localizar_ContaCod: TFrm_Localizar_ContaCod;

implementation

uses Application_DM, Funcoes, Plano_DM, Plano_Form;

{$R *.DFM}

function TFrm_Localizar_ContaCod.GetTrecho: String ;
begin
     Result := DmPlano.PLANOCODIGO.Value ;
end;

procedure TFrm_Localizar_ContaCod.FormShow(Sender: TObject);
begin
     IniciaComponentes ( Self as TForm );
     ActiveControl := GRID;
end;

procedure TFrm_Localizar_ContaCod.GridKeyPress(Sender: TObject; var Key: Char);
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

procedure TFrm_Localizar_ContaCod.GridDblClick(Sender: TObject);
begin
     ModalResult:=mrOk;
end;

procedure TFrm_Localizar_ContaCod.GRIDTitleClick(Sender: TObject; ACol, ARow: Integer; AButton: TMouseButton; AShift: TShiftState);
begin
//    ActiveControl := incSearch;
end;

procedure TFrm_Localizar_ContaCod.GRIDKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TFrm_Localizar_ContaCod.ActOkExecute(Sender: TObject);
begin
     ModalResult:=mrOk;
end;

procedure TFrm_Localizar_ContaCod.ActCancelarExecute(Sender: TObject);
begin
     ModalResult:=mrCancel;
end;

procedure TFrm_Localizar_ContaCod.FormCreate(Sender: TObject);
begin
  Try
     with Grid do
     begin
//          cbAutoSearch.Checked := egoAutoSearch in OptionsEx;
//          cbAutoExpandOnSearch.Checked := (egoAutoSearch in OptionsEx) and AutoExpandOnSearch;
     end;

     DmPlano.plano.Open ;
  Except
  end;

end;

procedure TFrm_Localizar_ContaCod.cbAutoExpandOnSearchClick(Sender: TObject);
begin
//     Grid.AutoExpandOnSearch := cbAutoExpandOnSearch.Checked;
end;

procedure TFrm_Localizar_ContaCod.cbAutoSearchClick(Sender: TObject);
begin
{     IF SENDER IS TCheckBox
     THEN BEGIN
          with (Sender as TCheckBox) do
          begin
               if Checked
               then
                   OptionsEx := OptionsEx + [egoAutoSearch]
               else
                   OptionsEx := OptionsEx - [egoAutoSearch];
               end;
          END;
     END;

     IF SENDER IS dxDBGrid
     THEN BEGIN
          with (Sender as dxDBGrid) do
          begin
               if Checked
               then
                   OptionsEx := OptionsEx + [egoAutoSearch]
               else
                   OptionsEx := OptionsEx - [egoAutoSearch];
               end;
          END;
     END;}
end;

procedure TFrm_Localizar_ContaCod.DSourceDataChange(Sender: TObject; Field: TField);
begin
  LblRegistros.Caption := IntToStr(DSource.DataSet.Recno) + '/' + IntToStr(DSource.Dataset.RecordCount);
end;

procedure TFrm_Localizar_ContaCod.pnlClientResize(Sender: TObject);
begin
  b2.Width := pnlclient.Width - 17;
  LblRegistros.Left := pnlclient.Width - 11 - LblRegistros.Width;
end;

procedure TFrm_Localizar_ContaCod.ActLookupExecute(Sender: TObject);
begin
  { * * * * * }
  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmPlano', False);
  { * * * * * }
  //
  FrmPlano := TFrmPlano.Create(Self);
  FrmPlano.ShowModal;

  FrmPlano.Free;
  FrmPlano := Nil;
end;

end.
