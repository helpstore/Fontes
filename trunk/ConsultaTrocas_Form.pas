 unit ConsultaTrocas_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, Db, dxExEdtr, dxEdLib, dxCntner, dxEditor, dxDBEdtr,
  dxDBELib, StdCtrls,  RDprint,  
  dxDBGrid, dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, Grids, DBGrids, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue, Menus,
  cxButtons, cxLabel;

type
  TFrmConsultaTroca = class(TForm)
    pnlClient: TPanel;
    Panel2: TPanel;
    RzBitBtn2: TcxButton;
    Actions: TActionList;
    ActFechar: TAction;
    dsProdutos: TDataSource;
    DsTroca: TDataSource;
    DsParcelas: TDataSource;
    Label1: TcxLabel;
    EdDocumento: TdxDBEdit;
    cbFrete: TdxDBCheckEdit;
    Label3: TcxLabel;
    EdDataNota: TdxDBDateEdit;
    dxDBEdit3: TdxDBEdit;
    EdPessoa: TdxDBEdit;
    Label2: TcxLabel;
    Label5: TcxLabel;
    EdVendedor: TdxDBEdit;
    Label7: TcxLabel;
    dxDBEdit2: TdxDBEdit;
    LblTitulo: TcxLabel;
    Image1: TImage;
    b2: TBevel;
    dxDBEdit4: TdxDBEdit;
    GridItens: TdxDBGrid;
    GridItensPRODUTO: TdxDBGridMaskColumn;
    GridItensNome_Produto: TdxDBGridLookupColumn;
    GridItensQUANTIDADE: TdxDBGridMaskColumn;
    GridItensPRC_UNITARIO: TdxDBGridMaskColumn;
    GridItensTotal: TdxDBGridColumn;
    Panel3: TPanel;
    Label25: TcxLabel;
    Label27: TcxLabel;
    Label6: TcxLabel;
    dxDBEdit6: TdxDBEdit;
    dxDBEdit8: TdxDBEdit;
    dxDBEdit7: TdxDBEdit;
    GRIDFATURAMENTO: TDBGrid;
    Label34: TcxLabel;
    Label29: TcxLabel;
    dxDBEdit12: TdxDBEdit;
    dxDBEdit13: TdxDBEdit;
    Label9: TcxLabel;
    dxDBEdit15: TdxDBEdit;
    Label10: TcxLabel;
    Label11: TcxLabel;
    dxDBEdit16: TdxDBEdit;
    Label12: TcxLabel;
    dxDBEdit17: TdxDBEdit;
    Label13: TcxLabel;
    dxDBEdit19: TdxDBEdit;
    Label8: TcxLabel;
    dxDBEdit18: TdxDBEdit;
    Bevel1: TBevel;
    GridItensDesconto: TdxDBGridColumn;
    GridItensTipo: TdxDBGridColumn;
    Label21: TcxLabel;
    dxDBEdit25: TdxDBEdit;
    Label22: TcxLabel;
    dxDBEdit26: TdxDBEdit;
    Label23: TcxLabel;
    dxDBEdit27: TdxDBEdit;
    Label24: TcxLabel;
    dxDBEdit28: TdxDBEdit;
    procedure ActFecharExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cmbPessoaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConsultaTroca: TFrmConsultaTroca;
  Linha, Pagina: Integer;
implementation

uses Vendas_Dm,
     Usuarios_DM,
     Application_DM,
     Funcoes;

{$R *.DFM}

procedure TFrmConsultaTroca.ActFecharExecute(Sender: TObject);
begin
  Close;
end;

procedure TFrmConsultaTroca.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //
  Action := caFree;
  FrmConsultaTroca := Nil;
end;

procedure TFrmConsultaTroca.cmbPessoaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmConsultaTroca.FormShow(Sender: TObject);
begin
  IniciaComponentes ( Self as TForm );
end;

end.


