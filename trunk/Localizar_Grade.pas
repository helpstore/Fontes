 unit Localizar_Grade;
                                 
interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Grids, DBGrids, Buttons, ExtCtrls, db,
    ActnList,
  dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid, dxCntner,dxExEdtr, 
  dxBar, dxBarDBNav, dxEditor, dxDBEdtr, dxDBELib,   dxTLClms,
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
  TFrm_Localizar_Grades = class(TForm)
    pnlClient: TPanel;
    RzLabel1: TcxLabel;
    Act: TActionList;
    ActOk: TAction;
    ActCancelar: TAction;
    DSource: TDataSource;
    Panel2: TPanel;
    BTNOK: TcxButton;
    BTNCANCELA: TcxButton;
    pnlCampos: TPanel;
    TLCustomize: TdxTreeList;
    TLCustomizeColumn: TdxTreeListColumn;
    TLCustomizeIsVisible: TdxTreeListCheckColumn;
    Panel3: TPanel;
    Panel1: TPanel;
    LblRegistros: TcxLabel;
    b2: TBevel;
    LblTitulo: TcxLabel;
    Image1: TImage;
    GRID: TdxDBGrid;
    GRIDNOME_MATERIAL: TdxDBGridMaskColumn;
    GRIDNOME_COR: TdxDBGridMaskColumn;
    GRIDNOME_PERFIL: TdxDBGridMaskColumn;
    GRIDNUMERO: TdxDBGridMaskColumn;
    GRIDESTOQUE: TdxDBGridMaskColumn;
    GRIDGRADE: TdxDBGridColumn;
    ActConfCampos: TAction;
    stgLocalizaGrades: TcxPropertiesStore;
    procedure FormShow(Sender: TObject);
    procedure GridKeyPress(Sender: TObject; var Key: Char);
    procedure GridDblClick(Sender: TObject);
    procedure GRIDKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ActOkExecute(Sender: TObject);
    procedure ActCancelarExecute(Sender: TObject);
    procedure pnlClientResize(Sender: TObject);
    procedure ActConfCamposExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Synchronize;
    procedure TLCustomizeDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure TLCustomizeDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure TLCustomizeStartDrag(Sender: TObject;
      var DragObject: TDragObject);
    procedure TLCustomizeIsVisibleToggleClick(Sender: TObject;
      const Text: String; State: TdxCheckBoxState);
  private
    { Private declarations }
    DragNode: TdxTreeListNode;
    function  GetTrecho: String;

  public
    { Public declarations }
    Grade: String ;

    property CampTrecho: String Read GetTrecho ;

  end;

var
  Frm_Localizar_Grades: TFrm_Localizar_Grades;

implementation

uses Cadastros_DM, Application_DM, Funcoes, Vendas_Dm;

{$R *.DFM}

function TFrm_Localizar_Grades.GetTrecho: String ;
begin
     Grade  := DSource.DataSet.FieldByName('GRADE' ).AsString  ;
     Result := DSource.DataSet.FieldByName('NUMERO').AsString  ;
end;

procedure TFrm_Localizar_Grades.FormShow(Sender: TObject);
begin
     IniciaComponentes ( Self as TForm );
     
     If Not DSource.DataSet.active  Then
         DSource.DataSet.Open ;
         
     ActiveControl := GRID;
end;

procedure TFrm_Localizar_Grades.GridKeyPress(Sender: TObject; var Key: Char);
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

procedure TFrm_Localizar_Grades.GridDblClick(Sender: TObject);
begin
     ModalResult:=mrOk;
end;

procedure TFrm_Localizar_Grades.GRIDKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TFrm_Localizar_Grades.ActOkExecute(Sender: TObject);
begin
     ModalResult:=mrOk;
end;

procedure TFrm_Localizar_Grades.ActCancelarExecute(Sender: TObject);
begin
     ModalResult:=mrCancel;
end;

procedure TFrm_Localizar_Grades.pnlClientResize(Sender: TObject);
begin
  b2.Width := pnlClient.Width - 17;
  LblRegistros.Left := pnlClient.Width - 11 - LblRegistros.Width;
end;

procedure TFrm_Localizar_Grades.ActConfCamposExecute(Sender: TObject);
begin
    pnlCampos.visible := (not pnlCampos.visible);
end;

procedure TFrm_Localizar_Grades.FormCreate(Sender: TObject);
begin
     Synchronize;
end;

procedure TFrm_Localizar_Grades.Synchronize;
var
  I: Integer;
  Node: TdxTreeListNode;
begin
    TLCustomize.ClearNodes;
    for I := 0 to Grid.ColumnCount - 1 do
    begin
      Node := TLCustomize.Add;
      Node.Values[TLCustomizeColumn.Index] := Grid.Columns[I].Caption;
      if Grid.Columns[I].Visible then
        Node.Values[TLCustomizeIsVisible.Index] := TLCustomizeIsVisible.ValueChecked;
      Node.Data := Grid.Columns[I];
    end;
end;

procedure TFrm_Localizar_Grades.TLCustomizeDragDrop(Sender,
  Source: TObject; X, Y: Integer);
var
  column : TdxTreeListColumn;
begin
  DragNode.MoveTo(TLCustomize.FocusedNode, natlInsert);
  column := TdxTreeListColumn(DragNode.Data);
  if (TLCustomize.FocusedNode <> nil) then
    column.Index := TLCustomize.FocusedNode.AbsoluteIndex
  else column.Index := 0;
end;

procedure TFrm_Localizar_Grades.TLCustomizeDragOver(Sender,
  Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
  Accept := Source = Sender;
end;

procedure TFrm_Localizar_Grades.TLCustomizeStartDrag(Sender: TObject;
  var DragObject: TDragObject);
begin
  DragNode := TdxTreeList(Sender).FocusedNode;
end;

procedure TFrm_Localizar_Grades.TLCustomizeIsVisibleToggleClick(
  Sender: TObject; const Text: String; State: TdxCheckBoxState);
var
  column : TdxTreeListColumn;
begin
   column := TdxTreeListColumn(TLCustomize.FocusedNode.Data);
   column.Visible := State = TdxCheckBoxState(cbsChecked);
end;

end.
