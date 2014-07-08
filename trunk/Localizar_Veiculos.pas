 unit Localizar_Veiculos;
                                 
interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Grids, DBGrids, Buttons, ExtCtrls, db,
    ActnList,
  dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid, dxCntner,dxExEdtr, 
  dxBar, dxBarDBNav, dxEditor, dxDBEdtr, dxDBELib,  cxPropertiesStore,
   cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, Menus, cxButtons, cxLabel;

type
  TFrm_Localizar_Veiculos = class(TForm)
    pnlClient: TPanel;
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
    GRIDMODELO: TdxDBGridMaskColumn;
    GRIDPLACA: TdxDBGridMaskColumn;
    GRIDKM_ATUAL: TdxDBGridMaskColumn;
    GRIDNOME_TIPO: TdxDBGridMaskColumn;
    GRIDNOME_MARCA: TdxDBGridMaskColumn;
    GRIDMOTORISTA: TdxDBGridColumn;
    stgFrm_Localizar_Veiculos: TcxPropertiesStore;
    GRIDCOD_CLIENTE: TdxDBGridMaskColumn;
    GRIDNOME_RAZAO: TdxDBGridMaskColumn;
    GRIDCPF_CGC: TdxDBGridMaskColumn;
    Panel2: TPanel;
    BtnOk: TcxButton;
    BtnCancelar: TcxButton;
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

    function  GetTrecho: String;
    function  GetVeiculo: integer;
    function  GetCliente: integer;

  public
    { Public declarations }

    CampTrecho: String ;
    CampVeiculo: integer;
    CampCliente: integer;
  end;

var
  Frm_Localizar_Veiculos: TFrm_Localizar_Veiculos;

implementation

uses Cadastros_DM, Application_DM, Funcoes, Vendas_Dm;

{$R *.DFM}

function TFrm_Localizar_Veiculos.GetTrecho: String ;
begin
     Result := DSource.DataSet.FieldByName('PLACA').AsString ;
end;

procedure TFrm_Localizar_Veiculos.FormShow(Sender: TObject);
begin
     IniciaComponentes ( Self as TForm );

     If Not DSource.DataSet.active Then
         DSource.DataSet.Open ;

     ActiveControl := GRID;

end;

procedure TFrm_Localizar_Veiculos.GridKeyPress(Sender: TObject; var Key: Char);
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

procedure TFrm_Localizar_Veiculos.GridDblClick(Sender: TObject);
begin
     ModalResult:=mrOk;
end;

procedure TFrm_Localizar_Veiculos.GRIDKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TFrm_Localizar_Veiculos.ActOkExecute(Sender: TObject);
begin
  CampTrecho := GetTrecho ;
  CampVeiculo := GetVeiculo;
  CampCliente := GetCliente;

  ModalResult := mrOk;
end;

procedure TFrm_Localizar_Veiculos.ActCancelarExecute(Sender: TObject);
begin
   ModalResult:=mrCancel;
end;

procedure TFrm_Localizar_Veiculos.pnlClientResize(Sender: TObject);
begin
  b2.Width := pnlClient.Width - 17;
  LblRegistros.Left := pnlClient.Width - 11 - LblRegistros.Width;
end;

procedure TFrm_Localizar_Veiculos.ActLookupExecute(Sender: TObject);
begin
     //LookUp
     ModalResult:=mrCancel;
end;

function TFrm_Localizar_Veiculos.GetCliente: integer;
begin
  Result := DSource.DataSet.FieldByName('COD_CLIENTE').value ;
end;

function TFrm_Localizar_Veiculos.GetVeiculo: integer;
begin
  Result := DSource.DataSet.FieldByName('CODIGO').value ;
end;

end.
