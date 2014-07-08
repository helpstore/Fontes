 unit Localizar_Precos_Servicos;
                                 
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
  TFrm_Lista_Precos_Servicos = class(TForm)
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
    GRIDSERVICO: TdxDBGridMaskColumn;
    GRIDNOME_SERVICO: TdxDBGridMaskColumn;
    GRIDATIVO: TdxDBGridMaskColumn;
    GRIDVALOR: TdxDBGridMaskColumn;
    GRIDMOTOR: TdxDBGrid;
    DsMotor: TDataSource;
    GRIDMOTORCODIGO: TdxDBGridMaskColumn;
    GRIDMOTORNOME: TdxDBGridMaskColumn;
    GRIDMOTORCILINDROS: TdxDBGridMaskColumn;
    GRIDMOTORCOMBUSTIVEL: TdxDBGridMaskColumn;
    GRIDMOTORTIPO: TdxDBGridMaskColumn;
    stgFrm_Lista_Precos_Servicos: TcxPropertiesStore;
    procedure FormShow(Sender: TObject);
    procedure GridKeyPress(Sender: TObject; var Key: Char);
    procedure GridDblClick(Sender: TObject);
    procedure GRIDKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ActOkExecute(Sender: TObject);
    procedure ActCancelarExecute(Sender: TObject);
    procedure pnlClientResize(Sender: TObject);
    procedure ActLookupExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure GRIDMOTORChangeNode(Sender: TObject; OldNode,
      Node: TdxTreeListNode);
  private
    { Private declarations }

    function  GetTrecho: Integer;

  public
    { Public declarations }
    Cad: String[1] ;

    property CampTrecho: Integer Read GetTrecho ;

  end;

var
  Frm_Lista_Precos_Servicos: TFrm_Lista_Precos_Servicos;

implementation

uses Servicos_DM,
     Application_DM,
     Funcoes;

{$R *.DFM}

function TFrm_Lista_Precos_Servicos.GetTrecho: Integer ;
begin
     //
end;

procedure TFrm_Lista_Precos_Servicos.FormShow(Sender: TObject);
begin
     IniciaComponentes ( Self as TForm );

     If Not DSMotor.DataSet.active
     Then
         DSMotor.DataSet.Open ;

     If Not DSource.DataSet.active
     Then
         DSource.DataSet.Open ;

     With DmServicos do
     begin
          Motores_Servicos.Close ;
          Motores_Servicos.ParamByName ( 'CODIGO' ).AsInteger := MotoresCodigo.Value ;
          Motores_Servicos.Open  ;
     end;

     IF ( DMAPP.PROPRIED_EQUIP = 'S' )
     THEN BEGIN
          GRIDMOTORCILINDROS.caption := 'Modelo' ;
          GRIDMOTORCOMBUSTIVEL.caption := 'Série' ;
          GRIDMOTORTIPO.caption := 'Marca' ;
     end;

     ActiveControl := GRIDMOTOR;
     Cad           := 'N' ;
end;

procedure TFrm_Lista_Precos_Servicos.GridKeyPress(Sender: TObject; var Key: Char);
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

procedure TFrm_Lista_Precos_Servicos.GridDblClick(Sender: TObject);
begin
     ModalResult:=mrOk;
end;

procedure TFrm_Lista_Precos_Servicos.GRIDKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TFrm_Lista_Precos_Servicos.ActOkExecute(Sender: TObject);
begin
     ModalResult:=mrOk;
end;

procedure TFrm_Lista_Precos_Servicos.ActCancelarExecute(Sender: TObject);
begin
     ModalResult:=mrCancel;
end;

procedure TFrm_Lista_Precos_Servicos.pnlClientResize(Sender: TObject);
begin
     b2.Width := pnlClient.Width - 17;
     LblRegistros.Left := pnlClient.Width - 11 - LblRegistros.Width;
end;

procedure TFrm_Lista_Precos_Servicos.ActLookupExecute(Sender: TObject);
begin
     //LookUp
     Cad := 'S' ;
     ModalResult:=mrCancel;
end;

procedure TFrm_Lista_Precos_Servicos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     DSource.dataSet.Close ;
     DSMotor.dataSet.Close ;
end;

procedure TFrm_Lista_Precos_Servicos.GRIDMOTORChangeNode(Sender: TObject;
  OldNode, Node: TdxTreeListNode);
begin
     With DmServicos do
     begin
          Motores_Servicos.Close ;
          Motores_Servicos.ParamByName ( 'CODIGO' ).AsInteger := MotoresCodigo.Value ;
          Motores_Servicos.Open  ;
     end;
end;

end.
