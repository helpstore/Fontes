 unit Localizar_Propriedade;
                                 
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
  TFrm_Localizar_Propriedade = class(TForm)
    pnlClient: TPanel;
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
    GRIDNOME: TdxDBGridMaskColumn;
    GRIDPROPRIETARIO: TdxDBGridMaskColumn;
    GRIDIE: TdxDBGridMaskColumn;
    GRIDENDERECO: TdxDBGridMaskColumn;
    GRIDCOMPLEMENTO: TdxDBGridMaskColumn;
    GRIDCIDADE: TdxDBGridMaskColumn;
    GRIDUF: TdxDBGridMaskColumn;
    GRIDCEP: TdxDBGridMaskColumn;
    GRIDAREA_TOTAL: TdxDBGridMaskColumn;
    GRIDPROPRIEDADE: TdxDBGridMaskColumn;
    GRIDNUMERO: TdxDBGridMaskColumn;
    GRIDBAIRRO: TdxDBGridMaskColumn;
    GRIDCPF: TdxDBGridMaskColumn;
    GRIDTECNICO: TdxDBGridMaskColumn;
    Panel2: TPanel;
    RzBitBtn1: TcxButton;
    BtnCancelar: TcxButton;
    cxPropertiesStore1: TcxPropertiesStore;
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
    function  GetTrecho2: Integer;
  public
    { Public declarations }
    Cad: String[1] ;
    CodPessoa : Integer;
    property CampTrecho: Integer Read GetTrecho ;
    property CampTrecho2: Integer Read GetTrecho2 ;    

  end;

var
  Frm_Localizar_Propriedade: TFrm_Localizar_Propriedade;

implementation

uses Cadastros_DM, Application_DM, Funcoes, Vendas_Dm, Vendas_DM2,
  Servicos_DM;

{$R *.DFM}

function TFrm_Localizar_Propriedade.GetTrecho: Integer ;
begin
     Result := DSource.DataSet.FieldByName('PROPRIEDADE').AsInteger ;
end;

function TFrm_Localizar_Propriedade.GetTrecho2: Integer ;
begin
  Result := DSource.DataSet.FieldByName('TECNICO').AsInteger ;
  
end;

procedure TFrm_Localizar_Propriedade.FormShow(Sender: TObject);
begin
     IniciaComponentes ( Self as TForm );
     DSOURCE.dataset := DmVendas.SelPropriedades;
     DSource.DataSet.close ;
     DmVendas.SelPropriedades.parambyname('cnpj').value := dmapp.cnpj;
     DmVendas.SelPropriedades.parambyname('PESSOA_FJ').value := CodPessoa;
     DSource.DataSet.Open ;
     ActiveControl := GRID;
     Cad           := 'N';
end;

procedure TFrm_Localizar_Propriedade.GridKeyPress(Sender: TObject; var Key: Char);
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

procedure TFrm_Localizar_Propriedade.GridDblClick(Sender: TObject);
begin
     ModalResult:=mrOk;
end;

procedure TFrm_Localizar_Propriedade.GRIDKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TFrm_Localizar_Propriedade.ActOkExecute(Sender: TObject);
begin
     ModalResult:=mrOk;
end;

procedure TFrm_Localizar_Propriedade.ActCancelarExecute(Sender: TObject);
begin
     ModalResult:=mrCancel;
end;

procedure TFrm_Localizar_Propriedade.pnlClientResize(Sender: TObject);
begin
  b2.Width := pnlClient.Width - 17;
  LblRegistros.Left := pnlClient.Width - 11 - LblRegistros.Width;
end;

procedure TFrm_Localizar_Propriedade.ActLookupExecute(Sender: TObject);
begin
     //LookUp
     Cad := 'S' ;
     ModalResult:=mrCancel;
end;

end.
