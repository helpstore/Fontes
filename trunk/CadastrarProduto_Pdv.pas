 unit CadastrarProduto_Pdv;
                                 
interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Grids, DBGrids, Buttons, ExtCtrls, db,
    ActnList,
  dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid, dxCntner,dxExEdtr,
  dxBar, dxBarDBNav, dxEditor, dxDBEdtr, dxDBELib,   dxEdLib,
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
  TFrm_CadastrarProdutosPdv = class(TForm)
    pnlClient: TPanel;
    Act: TActionList;
    ActCancelar: TAction;
    LblTitulo: TcxLabel;
    b2: TBevel;
    Label6: TcxLabel;
    EdNome: TdxEdit;
    EDVALOR: TdxCurrencyEdit;
    Label1: TcxLabel;
    EdCodigo: TdxEdit;
    Label2: TcxLabel;
    EDCODIGO2: TdxEdit;
    Label3: TcxLabel;
    Label4: TcxLabel;
    EDVALIDADE: TdxCurrencyEdit;
    EDNEGATIVO: TCheckBox;
    EDECF: TdxPickEdit;
    EDPESAVEL: TCheckBox;
    Label5: TcxLabel;
    BTNOK: TcxButton;
    procedure FormShow(Sender: TObject);
    procedure ActCancelarExecute(Sender: TObject);
    procedure pnlClientResize(Sender: TObject);
    procedure BTNOKClick(Sender: TObject);
    procedure EdCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdCodigoEnter(Sender: TObject);
    procedure EdCodigoExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_CadastrarProdutosPdv: TFrm_CadastrarProdutosPdv;

implementation

uses Cadastros_DM,
     Application_DM,
     Funcoes,
     Pdv_DM,
     FuncoesPdv_Form,
     Pdv_Frm;

{$R *.DFM}

procedure TFrm_CadastrarProdutosPdv.FormShow(Sender: TObject);
begin
     Frm_CadastrarProdutosPdv.Top  := FrmPdv.Lista.Top  ;
     Frm_CadastrarProdutosPdv.Left := FrmPdv.Lista.Left ;

     //TROCANDO COR DE FUNDO
     IF (( TRIM(DMAPP.PDV_COR_FUNDO) <> '') and ( TRIM(DMAPP.PDV_COR_FUNDO) <> '0'))
     THEN BEGIN
          pnlClient.Color      := STRTOINT(TRIM(DMAPP.PDV_COR_FUNDO));
     END;

     IF ((TRIM(DMAPP.PDV_COR_FONTE) <> '') and (TRIM(DMAPP.PDV_COR_FONTE) <> '0'))
     THEN BEGIN
          LblTitulo.Style.Font.Color    := STRTOINT(TRIM(DMAPP.PDV_COR_FONTE));
          BTNOK.Font.Color        := STRTOINT(TRIM(DMAPP.PDV_COR_FONTE));
          Label1.Style.Font.Color       := STRTOINT(TRIM(DMAPP.PDV_COR_FONTE));
          Label2.Style.Font.Color       := STRTOINT(TRIM(DMAPP.PDV_COR_FONTE));
          Label6.Style.Font.Color       := STRTOINT(TRIM(DMAPP.PDV_COR_FONTE));
          Label3.Style.Font.Color       := STRTOINT(TRIM(DMAPP.PDV_COR_FONTE));
          Label4.Style.Font.Color       := STRTOINT(TRIM(DMAPP.PDV_COR_FONTE));
          EDNEGATIVO.Font.Color   := STRTOINT(TRIM(DMAPP.PDV_COR_FONTE));
          EDPESAVEL.Font.Color    := STRTOINT(TRIM(DMAPP.PDV_COR_FONTE));
     end;

     if EdCodigo.Enabled
     then
         ActiveControl := EdCodigo
     else
         ActiveControl := EDCODIGO2 ;

end;

procedure TFrm_CadastrarProdutosPdv.ActCancelarExecute(Sender: TObject);
begin
     ModalResult:=mrCancel;
end;

procedure TFrm_CadastrarProdutosPdv.pnlClientResize(Sender: TObject);
begin
  b2.Width := pnlClient.Width - 17;
end;

procedure TFrm_CadastrarProdutosPdv.BTNOKClick(Sender: TObject);
          Function Valida_Ecf( Aliquota: String ): String;
          begin
               If  ( trim(Aliquota) <> 'T1' )
               and ( trim(Aliquota) <> 'T2' )
               and ( trim(Aliquota) <> 'T3' )
               and ( trim(Aliquota) <> 'T4' )
               and ( trim(Aliquota) <> 'T5' )
               and ( trim(Aliquota) <> 'T6' )
               and ( trim(Aliquota) <> 'FF' )
               and ( trim(Aliquota) <> 'II' )
               Then begin
                 Result := 'T1' ;
               end
               else
                 Result := Aliquota ;
          end;
Var
   NEG, PES: String;
begin
    If EDNEGATIVO.Checked
     then
         NEG := 'S'
     Else
         NEG := 'N';

     If EDPESAVEL.Checked
     then
         PES := 'S'
     Else
         PES := 'N';

     DmApp.Insere_Produto_Pdv ( COPY(EdcODIGO.TEXT,1,15), COPY(EDNOME.TEXT,1,50),
                                COPY(EDCODIGO2.TEXT,1,15), VALIDA_ECF(EDECF.TEXT),
                                NEG, PES, EDVALOR.VALUE, TRUNC(EDVALIDADE.VALUE));

     ModalResult := MrOk ;
end;

procedure TFrm_CadastrarProdutosPdv.EdCodigoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrm_CadastrarProdutosPdv.EdCodigoEnter(Sender: TObject);
begin
     CORFUNDO ( SENDER );
end;

procedure TFrm_CadastrarProdutosPdv.EdCodigoExit(Sender: TObject);
begin
     TIRACORFUNDO ( SENDER );
end;

end.
