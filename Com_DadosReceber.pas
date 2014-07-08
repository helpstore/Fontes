 unit Com_DadosReceber;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid, Db, StdCtrls, dxCntner,
  Buttons, ExtCtrls,   cxPropertiesStore, dxExEdtr, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinXmas2008Blue, cxLabel, Menus, cxButtons;

type
  TfrmComDadosReceber = class(TForm)
    pnlClient: TPanel;
    pnlBottom: TPanel;
    Bevel1: TBevel;
    BtnFechar: TcxButton;
    dsReceber: TDataSource;
    dsBxReceber: TDataSource;
    Panel1: TPanel;
    GridReceber: TdxDBGrid;
    GridReceberCODIGO: TdxDBGridMaskColumn;
    GridReceberVALOR: TdxDBGridMaskColumn;
    GridReceberVLR_PARCIAL: TdxDBGridMaskColumn;
    GridReceberDATA_ULT_BAIXA: TdxDBGridDateColumn;
    GridReceberDT_EMISSAO: TdxDBGridDateColumn;
    GridReceberDT_VENCTO: TdxDBGridDateColumn;
    GridReceberVLR_ORIG_ALT: TdxDBGridMaskColumn;
    GridReceberSALDO_NOMINAL: TdxDBGridMaskColumn;
    Panel2: TPanel;
    LblTitulo: TcxLabel;
    Panel3: TPanel;
    GridBaixas: TdxDBGrid;
    GridBaixasCODIGO: TdxDBGridMaskColumn;
    GridBaixasVLR_BAIXA: TdxDBGridMaskColumn;
    GridBaixasJUROS: TdxDBGridMaskColumn;
    GridBaixasVLR_LIQUIDO: TdxDBGridMaskColumn;
    GridBaixasDT_BAIXA: TdxDBGridDateColumn;
    GridBaixasDT_VENCTO: TdxDBGridDateColumn;
    GridBaixasAtraso: TdxDBGridColumn;
    GridBaixasDESCONTOS: TdxDBGridMaskColumn;
    GridBaixasHISTORICO_BX: TdxDBGridMaskColumn;
    Panel4: TPanel;
    RxLabel1: TcxLabel;
    stgGrdDadosReceber: TcxPropertiesStore;
    GridBaixasVALOR: TdxDBGridMaskColumn;
    GridBaixasVLR_PARCIAL: TdxDBGridMaskColumn;
    procedure BtnFecharClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmComDadosReceber: TfrmComDadosReceber;

implementation

uses Financeiro_Dm2;

{$R *.DFM}

procedure TfrmComDadosReceber.BtnFecharClick(Sender: TObject);
begin
 close;
end;

end.
