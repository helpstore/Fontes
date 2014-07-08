 unit Localizar_Orcamentos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Grids, DBGrids, Db, ActnList, dxDBGrid, dxTL, dxDBCtrl,
  dxCntner,   Buttons, ExtCtrls, dxGrClms, dxExEdtr, dxEditor,
  dxEdLib,  cxPropertiesStore, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinXmas2008Blue, Menus, cxButtons, cxLabel;

type
  TFrmLocOrcamentos = class(TForm)
    pnlClient: TPanel;
    Bevel3: TBevel;
    pnlTop: TPanel;
    Bevel2: TBevel;
    LblTitulo: TcxLabel;
    RzLabel1: TcxLabel;
    Act: TActionList;
    ActOk: TAction;
    ActCancelar: TAction;
    GRID: TdxDBGrid;
    DSource: TDataSource;
    GRIDCODIGO: TdxDBGridMaskColumn;
    GRIDNOME: TdxDBGridMaskColumn;
    GRIDDATA: TdxDBGridColumn;
    ActTrocaOrdem: TAction;
    Label6: TcxLabel;
    EdCodigo: TdxEdit;
    Label1: TcxLabel;
    EdNome: TdxEdit;
    GRIDTOTAL: TdxDBGridColumn;
    Panel2: TPanel;
    BtnOk: TcxButton;
    BtnCancelar: TcxButton;
    RzLabel3: TcxLabel;
    RDNOME: TRadioButton;
    rdcodigo: TRadioButton;
    stgFrmLocOrcamentos: TcxPropertiesStore;
    procedure FormShow(Sender: TObject);
    procedure GridKeyPress(Sender: TObject; var Key: Char);
    procedure GridDblClick(Sender: TObject);
    procedure GRIDKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ActOkExecute(Sender: TObject);
    procedure ActCancelarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RDNOMEClick(Sender: TObject);
    procedure ActTrocaOrdemExecute(Sender: TObject);
    procedure EdCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdCodigoExit(Sender: TObject);
    procedure EdNomeExit(Sender: TObject);
    procedure GRIDEnter(Sender: TObject);
    procedure GRIDExit(Sender: TObject);
  private
    { Private declarations }

    function  GetTrecho: Integer ;
    Procedure Ordenar  ;

  public
    { Public declarations }

    property CampTrecho: Integer Read GetTrecho ;

  end;

var
  FrmLocOrcamentos: TFrmLocOrcamentos;

implementation

uses
    Application_DM,
    Funcoes,
    Main,
    Vendas_Dm ;


{$R *.DFM}

function TFrmLocOrcamentos.GetTrecho: Integer ;
begin
     Result := DmVendas.SelOrcamentosCodigo.Value ;
end;

procedure TFrmLocOrcamentos.FormShow(Sender: TObject);
begin
     IniciaComponentes ( Self as TForm );

     EdCodigo.SetFocus ;
end;

procedure TFrmLocOrcamentos.GridKeyPress(Sender: TObject; var Key: Char);
begin
     If Key = #13
     then begin
          ModalResult:=mrOk;
          Close ;
     end
     else
         if key = #27
         then begin
              ModalResult:=mrCancel;
              Close ;
         end;
end;

procedure TFrmLocOrcamentos.GridDblClick(Sender: TObject);
begin
     ModalResult:=mrOk;
     Close ;
end;

procedure TFrmLocOrcamentos.GRIDKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     If Key = 13
     then begin
          ModalResult:=mrOk;
          Close ;
     end
     else
         if key = 27
         then begin
              ModalResult:=mrCancel;
              Close ;
         end;
end;

procedure TFrmLocOrcamentos.ActOkExecute(Sender: TObject);
begin
     If FrmLocOrcamentos.ActiveControl = Grid
     then begin
          ModalResult:=mrOk;
          Close ;
     end;
end;

procedure TFrmLocOrcamentos.ActCancelarExecute(Sender: TObject);
begin
     ModalResult:=mrCancel;
     Close ;
end;

procedure TFrmLocOrcamentos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     If FrmLocOrcamentos.FormStyle = fsMDIChild Then
     Begin
          Action := CaFree ;
          FrmLocOrcamentos := Nil ;
     end;
end;

procedure TFrmLocOrcamentos.RDNOMEClick(Sender: TObject);
begin
     Ordenar ;
end;

procedure TFrmLocOrcamentos.Ordenar;
begin
  //
  If DSource.DataSet.Active Then
     DSource.DataSet.Close;

  If rdcodigo.Checked
  then begin
       EdCodigo.SetFocus ;
  end
  else begin
       If rdNome.Checked
       then begin
            EdNome.SetFocus ;
       end;
  end;

  //
  DSource.DataSet.Open;

  If RdCodigo.Checked
  then begin
       EdCodigo.SetFocus ;
  end
  else begin
       EdNome.SetFocus ;
  end;

end;

procedure TFrmLocOrcamentos.ActTrocaOrdemExecute(Sender: TObject);
begin
     IF RDCODIGO.Checked
     THEN BEGIN
          RDNOME.Checked := TRUE ;
          ORDENAR ;
     END
     ELSE BEGIN
          IF RDNOME.Checked
          THEN BEGIN
               RDCODIGO.Checked := TRUE ;
               ORDENAR ;
          END;
     END;
end;

procedure TFrmLocOrcamentos.EdCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmLocOrcamentos.EdCodigoExit(Sender: TObject);
begin
     If Trim(EdCodigo.Text) <> ''
     then begin
          Dsource.DataSet.Locate('CODIGO',EdCodigo.Text,[LopartialKey, LocaseInsensitive]);
          EdCodigo.Clear ;
          Grid.SetFocus ;
     end;
end;

procedure TFrmLocOrcamentos.EdNomeExit(Sender: TObject);
begin
     If Trim(EdNome.Text) <> ''
     then begin
          Dsource.DataSet.Locate('NOME_RAZAO',EdNome.Text,[LopartialKey, LocaseInsensitive]);
          EdNome.Clear ;
          Grid.SetFocus ;
     end;
end;

procedure TFrmLocOrcamentos.GRIDEnter(Sender: TObject);
begin
     ActOk.ShortCut := 13 ;
end;

procedure TFrmLocOrcamentos.GRIDExit(Sender: TObject);
begin
     ActOk.ShortCut := 0 ;
end;

end.

