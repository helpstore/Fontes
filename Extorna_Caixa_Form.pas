unit Extorna_Caixa_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, Db, dxExEdtr, dxEdLib, dxCntner, dxEditor, dxDBEdtr,
  dxDBELib, StdCtrls,  RDprint,   ComCtrls, cxGraphics,
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
  TFrmExtornaCaixa = class(TForm)
    pnlClient: TPanel;
    Panel2: TPanel;
    RzBitBtn1: TcxButton;
    RzBitBtn2: TcxButton;
    Actions: TActionList;
    ActExtornar: TAction;
    ActFechar: TAction;
    Label1: TcxLabel;
    Label2: TcxLabel;
    LblData: TcxLabel;
    LblUser: TcxLabel;
    procedure FormCreate(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure ActExtornarExecute(Sender: TObject);
  private
    { Private declarations }
    DataCaixa: TDateTime;
    
  public
    { Public declarations }
  end;

var
  FrmExtornaCaixa: TFrmExtornaCaixa;

implementation

uses Usuarios_DM,
     Application_DM,
     Funcoes;

{$R *.DFM}

procedure TFrmExtornaCaixa.FormCreate(Sender: TObject);
begin
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, Self.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TFrmExtornaCaixa.ActFecharExecute(Sender: TObject);
begin
  Close;
end;


procedure TFrmExtornaCaixa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dmApp.ZeraCaixaUsuario(owner);

  Action := caFree;
  FrmExtornaCaixa := Nil;
end;

procedure TFrmExtornaCaixa.FormShow(Sender: TObject);
begin
  //
  IniciaComponentes(Self as TForm);
  //
  Try
     DataCaixa := DmaPP.Ultimo_Caixa_Fechado ;

     LblUser.Caption := inttostr(DmApp.usuariocaixa);

     LblData.Caption := datetostr(datacaixa);

  Except
    On E:EDataBaseError Do
       Begin
         ShowMessage('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ');
         Exit;
       End
    Else
       Begin
         ShowMessage('Ocorreu um Erro não identificado pelo Sistema !');
         Exit;
       End;
  End;
end;

procedure TFrmExtornaCaixa.ActExtornarExecute(Sender: TObject);
begin
     //EXTORNA O CAIXA SELECIONADO
     If DmApp.Extorna_Caixa ( DmApp.UsuarioCaixa, DmApp.ContaCaixa, DataCaixa ) <= 0
     then begin
          Close ;
     end
     else begin
          MessageDlg ('Erro ao Estornar o Caixa, Verifique!', MtError, [MbOk], 0 );
     end;
end;

end.
