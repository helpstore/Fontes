 unit Localizar_Mecanico;
                                 
interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Grids, DBGrids, Buttons, ExtCtrls, db,
    ActnList,
  dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid, dxCntner,dxExEdtr, 
  dxBar, dxBarDBNav, dxEditor, dxDBEdtr, dxDBELib, cxPropertiesStore,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus, cxControls,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, cxLabel, cxButtons;

type
  TFrm_Localizar_Mecanicos = class(TForm)
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
    GRIDNOME: TdxDBGridMaskColumn;
    stgFrm_Localizar_Mecanicos: TcxPropertiesStore;
    procedure FormShow(Sender: TObject);
    procedure GridKeyPress(Sender: TObject; var Key: Char);
    procedure GridDblClick(Sender: TObject);
    procedure GRIDKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ActOkExecute(Sender: TObject);
    procedure ActCancelarExecute(Sender: TObject);
    procedure pnlClientResize(Sender: TObject);
    procedure ActLookupExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }

    function  GetTrecho: Integer;

  public
    { Public declarations }
    Cad: String[1] ;

    property CampTrecho: Integer Read GetTrecho ;

  end;

var
  Frm_Localizar_Mecanicos: TFrm_Localizar_Mecanicos;

implementation

uses Cadastros_DM,
     Application_DM,
     Funcoes,
     Servicos_Dm;

{$R *.DFM}

function TFrm_Localizar_Mecanicos.GetTrecho: Integer ;
begin
     Result := DSource.DataSet.FieldByName('CODIGO').AsInteger ;
end;

procedure TFrm_Localizar_Mecanicos.FormShow(Sender: TObject);
begin
     IniciaComponentes ( Self as TForm );
     If Not DSource.DataSet.active
     Then
         DSource.DataSet.Open ;
         
     ActiveControl := GRID;
     Cad           := 'N' ;
end;

procedure TFrm_Localizar_Mecanicos.GridKeyPress(Sender: TObject; var Key: Char);
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

procedure TFrm_Localizar_Mecanicos.GridDblClick(Sender: TObject);
begin
     ModalResult:=mrOk;
end;

procedure TFrm_Localizar_Mecanicos.GRIDKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TFrm_Localizar_Mecanicos.ActOkExecute(Sender: TObject);
begin
     ModalResult:=mrOk;
end;

procedure TFrm_Localizar_Mecanicos.ActCancelarExecute(Sender: TObject);
begin
     ModalResult:=mrCancel;
end;

procedure TFrm_Localizar_Mecanicos.pnlClientResize(Sender: TObject);
begin
  b2.Width := pnlClient.Width - 17;
  LblRegistros.Left := pnlClient.Width - 11 - LblRegistros.Width;
end;

procedure TFrm_Localizar_Mecanicos.ActLookupExecute(Sender: TObject);
begin
     //LookUp
     Cad := 'S' ;
     ModalResult:=mrCancel;
end;

procedure TFrm_Localizar_Mecanicos.FormCreate(Sender: TObject);
begin
     if dmapp.TIPO_EMPRESA <> 'Pecas'
     then begin
          LblTitulo.Caption := 'Técnico' ;
          Frm_Localizar_Mecanicos.Caption := 'Técnico' ;
     end;
end;

end.
