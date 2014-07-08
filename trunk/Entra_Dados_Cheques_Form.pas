unit Entra_Dados_Cheques_Form;

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
  TFrmEntraDadosCheques = class(TForm)
    pnlClient: TPanel;
    LblTitulo: TcxLabel;
    b2: TBevel;
    Label3: TcxLabel;
    Actions: TActionList;
    ActFechar: TAction;
    RzBitBtn1: TcxButton;
    ActOk: TAction;
    EdNome: TdxEdit;
    Label1: TcxLabel;
    EdEndereco: TdxEdit;
    EdCpf: TdxMaskEdit;
    Label2: TcxLabel;
    Label5: TcxLabel;
    EdCidade: TdxEdit;
    Label6: TcxLabel;
    Label7: TcxLabel;
    EdRg: TdxEdit;
    DsBanco: TDataSource;
    CmbBanco: TdxLookupEdit;
    Label4: TcxLabel;
    EdAgencia: TdxEdit;
    Label8: TcxLabel;
    EdConta: TdxEdit;
    Label9: TcxLabel;
    EdNascimento: TdxMaskEdit;
    Label10: TcxLabel;
    EdCep: TdxMaskEdit;
    Label11: TcxLabel;
    EdCheque: TdxMaskEdit;
    Label12: TcxLabel;
    EdVencimento: TdxMaskEdit;
    Label13: TcxLabel;
    EdEmissao: TdxMaskEdit;
    Label14: TcxLabel;
    EdValor: TdxCurrencyEdit;
    Label15: TcxLabel;
    EdBairro: TdxEdit;
    Label16: TcxLabel;
    EdAlinea: TdxEdit;
    procedure pnlClientResize(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure ActOkExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EdCnpjChange(Sender: TObject);
    procedure EdNomeEnter(Sender: TObject);
    procedure EdNomeExit(Sender: TObject);
    procedure EdNomeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdEnderecoExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EdNascimentoExit(Sender: TObject);
    procedure EdVencimentoExit(Sender: TObject);
    procedure EdEmissaoExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    BANCO: String;
  end;

var
  FrmEntraDadosCheques: TFrmEntraDadosCheques;

implementation

uses Funcoes, Financeiro_Dm;

{$R *.DFM}

procedure TFrmEntraDadosCheques.pnlClientResize(Sender: TObject);
begin
  b2.Width := pnlClient.Width - 17;
end;

procedure TFrmEntraDadosCheques.ActFecharExecute(Sender: TObject);
begin
     Modalresult := mrCancel ;
end;

procedure TFrmEntraDadosCheques.ActOkExecute(Sender: TObject);
begin
     Modalresult := mrok ;
end;

procedure TFrmEntraDadosCheques.FormShow(Sender: TObject);
begin
     IniciaComponentes ( Self as TForm );

     If Not(DsBanco.DataSet.Active)
     Then
        DsBanco.DataSet.Open
     else
         DsBanco.DataSet.tag := DsBanco.DataSet.tag + 1;
end;

procedure TFrmEntraDadosCheques.EdCnpjChange(Sender: TObject);
begin
     If EdCpf.Text <> '   .   .   -  '
     then begin
          EdCpf.Clear ;
     end;
end;

procedure TFrmEntraDadosCheques.EdNomeEnter(Sender: TObject);
begin
     CORFUNDO ( SENDER );
end;

procedure TFrmEntraDadosCheques.EdNomeExit(Sender: TObject);
begin
     IF TRIM( EDNOME.TEXT ) = ''
     THEN
         ActOk.EXECUTE ;

     TIRACORFUNDO ( SENDER );
end;

procedure TFrmEntraDadosCheques.EdNomeKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmEntraDadosCheques.EdEnderecoExit(Sender: TObject);
begin
     TIRACORFUNDO ( SENDER );
end;

procedure TFrmEntraDadosCheques.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     BANCO := CmbBanco.TEXT ;

     If DsBanco.DataSet.Tag = 0
     Then
         DsBanco.Dataset.Close
     else
         DsBanco.Dataset.tag := DsBanco.Dataset.tag - 1;
end;

procedure TFrmEntraDadosCheques.EdNascimentoExit(Sender: TObject);
Var
   D: TdateTime;
begin
     TRY
        IF ((EdNascimento.TEXT <> '  /  /    ') AND (EdNascimento.TEXT <> '  /  /  '))
        THEN
            D := STRTODATE(EdNascimento.TEXT);

        TIRACORFUNDO ( SENDER );
     EXCEPT
           EdNascimento.SetFocus ;
     END;
end;

procedure TFrmEntraDadosCheques.EdVencimentoExit(Sender: TObject);
Var
   D: TdateTime;
begin
     TRY
        IF ((EdVencimento.TEXT <> '  /  /    ') AND (EdVencimento.TEXT <> '  /  /  '))
        THEN
            D := STRTODATE(EdVencimento.TEXT);

        TIRACORFUNDO ( SENDER );
     EXCEPT
           EdVencimento.SetFocus ;
     END;
end;

procedure TFrmEntraDadosCheques.EdEmissaoExit(Sender: TObject);
Var
   D: TdateTime;
begin
     TRY
        IF ((EdEmissao.TEXT <> '  /  /    ') AND (EdEmissao.TEXT <> '  /  /  '))
        THEN
            D := STRTODATE(EdEmissao.TEXT);

        TIRACORFUNDO ( SENDER );
     EXCEPT
           EdEmissao.SetFocus ;
     END;
end;

end.
