 unit ConsultaProdPdv_Form;
                     
interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, StdCtrls, Mask,  dxCntner, dxEditor,
  dxExEdtr, dxEdLib,  Db, dxDBELib, Buttons, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue, cxLabel,
  Menus, cxButtons;

type
  TFrmConsultaProdPdv = class(TForm)
    PnFuncoes: TPanel;
    ActLista: TActionList;
    ActSair: TAction;
    pncodigo: TPanel;
    EdDigitacao: TEdit;
    btnsim: TcxButton;
    RxLabel3: TcxLabel;
    dxDBEdit3: TdxDBEdit;
    RxLabel4: TcxLabel;
    dxDBEdit9: TdxDBEdit;
    RxLabel6: TcxLabel;
    dxDBEdit1: TdxDBEdit;
    DSource: TDataSource;
    RxLabel1: TcxLabel;
    RxLabel2: TcxLabel;
    dxDBEdit2: TdxDBEdit;
    RxLabel5: TcxLabel;
    dxDBEdit4: TdxDBEdit;
    dxDBEdit5: TdxDBEdit;
    RxLabel7: TcxLabel;
    ActBusca: TAction;
    procedure FormShow(Sender: TObject);
    procedure ActSairExecute(Sender: TObject);
    procedure EdDigitacaoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdDigitacaoKeyPress(Sender: TObject; var Key: Char);
    procedure ActBuscaExecute(Sender: TObject);
    procedure EdDigitacaoExit(Sender: TObject);
    procedure btnsimClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConsultaProdPdv: TFrmConsultaProdPdv;

implementation

uses Funcoes, Pdv_Frm, Pdv_DM, Application_DM;

{$R *.DFM}

procedure TFrmConsultaProdPdv.FormShow(Sender: TObject);
begin
     IF (( TRIM(DMAPP.PDV_COR_FUNDO) <> '') and ( TRIM(DMAPP.PDV_COR_FUNDO) <> '0'))
     THEN BEGIN
          PnFuncoes.Color   := STRTOINT(TRIM(DMAPP.PDV_COR_FUNDO));
          pncodigo.Color    := STRTOINT(TRIM(DMAPP.PDV_COR_FUNDO));
     END;

     IF ((TRIM(DMAPP.PDV_COR_FONTE) <> '') and (TRIM(DMAPP.PDV_COR_FONTE) <> '0'))
     THEN BEGIN
          RxLabel1.Style.Font.Color    := STRTOINT(TRIM(DMAPP.PDV_COR_FONTE));
          RxLabel3.Style.Font.Color    := STRTOINT(TRIM(DMAPP.PDV_COR_FONTE));
          RxLabel4.Style.Font.Color    := STRTOINT(TRIM(DMAPP.PDV_COR_FONTE));
          RxLabel6.Style.Font.Color    := STRTOINT(TRIM(DMAPP.PDV_COR_FONTE));
          RxLabel2.Style.Font.Color    := STRTOINT(TRIM(DMAPP.PDV_COR_FONTE));
          RxLabel5.Style.Font.Color    := STRTOINT(TRIM(DMAPP.PDV_COR_FONTE));
          RxLabel7.Style.Font.Color    := STRTOINT(TRIM(DMAPP.PDV_COR_FONTE));
     end;

     FrmConsultaProdPdv.Top  := FrmPdv.Lista.Top  ;
     FrmConsultaProdPdv.Left := FrmPdv.Lista.Left ;
end;

procedure TFrmConsultaProdPdv.ActSairExecute(Sender: TObject);
begin
     ModalResult := MrOk ;
end;

procedure TFrmConsultaProdPdv.EdDigitacaoKeyDown(Sender: TObject;  var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmConsultaProdPdv.EdDigitacaoKeyPress(Sender: TObject; var Key: Char);
begin
     IF ( KEY = #84 ) or ( KEY = #85 ) or ( KEY = #86 ) or ( Key = #116 ) or ( KEY = #117 ) or ( KEY = #118 )
     THEN BEGIN
          KEY := CHAR(8);
     END;
end;

procedure TFrmConsultaProdPdv.ActBuscaExecute(Sender: TObject);
begin
     With DmPdv do
     begin
          //BUSCA OS VALORES DO PRODUTO
          ConsultaProd.Close ;

          ConsultaProd.ParamByName ('E').AsString  := DmApp.Cnpj       ;
          ConsultaProd.ParamByName ('C').AsString  := EdDigitacao.Text ;

          ConsultaProd.Prepare ;
          ConsultaProd.Open ;

          If ConsultaProdNOME.isNull
          then Begin
               Close ;
          End
          Else
              btnsim.SetFocus ;
     end;
end;

procedure TFrmConsultaProdPdv.EdDigitacaoExit(Sender: TObject);
begin
     ActBusca.Execute ;
end;

procedure TFrmConsultaProdPdv.btnsimClick(Sender: TObject);
begin
     ModalResult := MrOk ;
end;

end.
