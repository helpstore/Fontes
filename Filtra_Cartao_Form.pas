 unit Filtra_Cartao_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, dxCntner, dxEditor, dxExEdtr, dxEdLib, StdCtrls,
  ActnList,  Db, dxDBEdtr, dxDBELib, cxGraphics, cxControls,
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
  TFrmFiltra_Cartao = class(TForm)
    pnlClient: TPanel;
    LblTitulo: TcxLabel;
    b2: TBevel;
    Ini: TdxDateEdit;
    Label3: TcxLabel;
    Label1: TcxLabel;
    Fim: TdxDateEdit;
    Actions: TActionList;
    ActFechar: TAction;
    RzBitBtn1: TcxButton;
    ActOk: TAction;
    DsAdministradora: TDataSource;
    Label4: TcxLabel;
    CmbAdministradora: TdxLookupEdit;
    EdDocumento: TdxEdit;
    Label6: TcxLabel;
    Label2: TcxLabel;
    IniReembolso: TdxDateEdit;
    Label5: TcxLabel;
    FimReembolso: TdxDateEdit;
    Label7: TcxLabel;
    iniconciliacao: TdxDateEdit;
    Label8: TcxLabel;
    Fimconciliacao: TdxDateEdit;
    procedure pnlClientResize(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure IniKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ActOkExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure IniEnter(Sender: TObject);
    procedure IniExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmFiltra_Cartao: TFrmFiltra_Cartao;

implementation

uses Application_DM, Funcoes, Financeiro_Dm;

{$R *.DFM}

procedure TFrmFiltra_Cartao.pnlClientResize(Sender: TObject);
begin
     b2.Width := pnlClient.Width - 17;
end;

procedure TFrmFiltra_Cartao.ActFecharExecute(Sender: TObject);
begin
     Modalresult := mrCancel ;
end;

procedure TFrmFiltra_Cartao.IniKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmFiltra_Cartao.ActOkExecute(Sender: TObject);
begin
     Modalresult := mrok ;
end;

procedure TFrmFiltra_Cartao.FormShow(Sender: TObject);
begin
  IniciaComponentes ( Self as TForm );

  if DsAdministradora.DataSet.Tag = 0
  then
      DsAdministradora.DataSet.Open
  else
      DsAdministradora.DataSet.tag := DsAdministradora.DataSet.tag + 1;
end;

procedure TFrmFiltra_Cartao.IniEnter(Sender: TObject);
begin
     CORFUNDO( SENDER );
end;

procedure TFrmFiltra_Cartao.IniExit(Sender: TObject);
begin
     TIRACORFUNDO( SENDER );
end;

procedure TFrmFiltra_Cartao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     if DsAdministradora.DataSet.Tag = 0
     then
         DsAdministradora.DataSet.Close
     else
         DsAdministradora.DataSet.tag := DsAdministradora.DataSet.tag - 1;
end;

end.
