 unit ConfDir_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, StdCtrls, ExtCtrls,  CheckLst, cxGraphics, cxControls,
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
  TFrmConfDir = class(TForm)
    GroupBox1: TGroupBox;
    Panel1: TPanel;
    Label1: TcxLabel;
    DBText1: TDBText;
    RzBitBtn5: TcxButton;
    RzBitBtn6: TcxButton;
    Bevel1: TBevel;
    lstActions: TCheckListBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RzBitBtn6Click(Sender: TObject);
    procedure RzBitBtn5Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    Acoes: TStringList;
  public
    { Public declarations }
  end;

var
  FrmConfDir: TFrmConfDir;

implementation

uses Seguranca_DM, Funcoes, Application_DM, Perfis_Form;

{$R *.DFM}

procedure TFrmConfDir.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  FrmConfDir := Nil;
end;

procedure TFrmConfDir.RzBitBtn6Click(Sender: TObject);
begin
  Close;
end;

procedure TFrmConfDir.RzBitBtn5Click(Sender: TObject);
Var i: Integer;
    sDir: String;
begin
  sDir := '';

  For i := 0 To lstActions.Items.Count -1 Do
      Begin
        If lstActions.State[i] = cbChecked Then
           Begin
             If sDir = '' Then
                sDir := sDir + 'Act' + Dict_Actions(lstActions.Items[i])
             Else
                sDir := sDir + ', Act' + Dict_Actions(lstActions.Items[i]);
           End;
      End;
  //
  DMSeguranca.Direitos.Edit;
  DMSeguranca.DireitosDIREITO.Value := sDir;
  DMSeguranca.Direitos.Post;
  DMApp.Transaction.CommitRetaining;
  //
  Close;
end;

procedure TFrmConfDir.FormShow(Sender: TObject);
Var i: Integer;
    s: String;
Begin
  Acoes := TStringList.Create;

  sBreakApart( FrmPerfis.GridACTIONS_MODULO.Field.Value , ', ', Acoes);

//  sBreakApart( DMSeguranca.DireitosACTIONS_MODULO.Value , ', ', Acoes);

  lstActions.Items.Clear;

  For i := 0 to Acoes.Count -1 Do
      Begin
        s := Acoes[i];
        delete(s, 1, 3);
        lstActions.Items.Insert(i, Dict_Actions(s));
        If Pos(upperCase(Acoes[i]), upperCase(DMSeguranca.DireitosDIREITO.Value)) > 0 Then
           lstActions.State[i] := cbChecked;
      End;

     IniciaComponentes ( Self as TForm );
end;

end.
