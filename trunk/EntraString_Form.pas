unit EntraString_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls,   dxCntner, dxEditor, dxExEdtr, dxEdLib, StdCtrls,
  ActnList,  db, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, cxLabel;

type
  TFrmEntraString = class(TForm)
    pnlClient: TPanel;
    LblTitulo: TcxLabel;
    b2: TBevel;
    LBLPROMPT: TcxLabel;
    Actions: TActionList;
    ActFechar: TAction;
    ActOk: TAction;
    EdNumero: TdxMaskEdit;
    RxLabel1: TcxLabel;
    ActLocalizar: TAction;
    procedure pnlClientResize(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure IniKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure EdNumeroExit(Sender: TObject);
    procedure ActLocalizarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    Codigo : String;
  end;

var
  FrmEntraString: TFrmEntraString;

implementation

uses Funcoes,  LocalizarProd_DM, Application_DM,
  Localizar_Produto_Cadastro_Auto;

{$R *.DFM}

procedure TFrmEntraString.pnlClientResize(Sender: TObject);
begin
  b2.Width := pnlClient.Width - 17;
end;

procedure TFrmEntraString.ActFecharExecute(Sender: TObject);
begin
     Modalresult := mrCancel ;
end;

procedure TFrmEntraString.IniKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
  IF KEY = 13
  THEN
      Modalresult := mrok ;
end;

procedure TFrmEntraString.FormShow(Sender: TObject);
begin
     Codigo := '';
     IniciaComponentes ( Self as TForm );
     EDNumero.setfocus ;
end;

procedure TFrmEntraString.EdNumeroExit(Sender: TObject);
Var
   Aux : String ;
begin
     Aux := EdNumero.Text ;

     If DmApp.Elimina_Zeros = 'S'
     THEN BEGIN
          While Copy ( Aux, 1, 1 ) = '0' DO
          BEGIN
               Aux := Copy ( Aux, 2, 15 );
          End;
     END;

     If DmApp.Acrescenta_Zeros = 'S'
     THEN BEGIN
          While Length ( Aux ) < 10 DO
          BEGIN
               Aux := '0' + Aux ;
          End;
     END ;

     EdNumero.Text := Aux ;

     Modalresult := mrok ;
end;

procedure TFrmEntraString.ActLocalizarExecute(Sender: TObject);
begin
     If FrmLocProdutoCadastro_Auto <> Nil Then
     Begin
       FrmLocProdutoCadastro_Auto.Showmodal ;

       Codigo := ( FrmLocProdutoCadastro_Auto.CampTrecho );

       ModalResult := MrOk ;
     End;

     If FrmLocProdutoCadastro_Auto <> Nil Then
     Begin
       FrmLocProdutoCadastro_Auto.Showmodal ;

       Codigo := ( FrmLocProdutoCadastro_Auto.CampTrecho );

       ModalResult := MrOk ;
     End;

end;

procedure TFrmEntraString.FormClose(Sender: TObject;  var Action: TCloseAction);
Var
   Aux : String ;
begin
     Aux := EdNumero.Text ;

     If DmApp.Elimina_Zeros = 'S'
     THEN BEGIN
          While Copy ( Aux, 1, 1 ) = '0' DO
          BEGIN
               Aux := Copy ( Aux, 2, 15 );
          End;
     END;

     If DmApp.Acrescenta_Zeros = 'S'
     THEN BEGIN
          While Length ( Aux ) < 10 DO
          BEGIN
               Aux := '0' + Aux ;
          End;
     END ;

     EdNumero.Text := Aux ;

     If (TRIM(EdNumero.Text) <> '' ) AND (trim(Codigo) = '')
     then
         Codigo := EdNumero.Text;
end;

end.
