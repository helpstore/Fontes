unit Localizar_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Mask, 
  DB, dxExEdtr, dxEdLib, dxCntner, dxEditor, ActnList, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Menus, cxControls, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinXmas2008Blue, cxContainer, cxEdit, cxRadioGroup,
  cxLabel, cxListBox, cxButtons;

type
  TFrmLocalizar = class(TForm)
    pnlBottom: TPanel;
    pnlLeft: TPanel;
    pnlClient: TPanel;
    BtnFechar: tcxbutton;
    BtnOk: tcxbutton;
    lbCampos: TcxListBox;
    RxLabel1: TcxLabel;
    LblCampo: TcxLabel;
    RxLabel2: TcxLabel;
    Exata: tcxradiobutton;
    Parcial: tcxradiobutton;
    EdData: TdxDateEdit;
    EdValor: TdxCurrencyEdit;
    EdTexto: TdxEdit;
    Act: TActionList;
    Enter: TAction;
    Tab: TAction;
    procedure FormShow(Sender: TObject);
    procedure BtnFecharClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure lbCamposClick(Sender: TObject);
    procedure BtnOkClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure EdTextoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbCamposKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    Function NomeDoCampo(DisplayLabel: String): String;
    function TipoDoCampo(DisplayLabel: String): String;
  public
    { Public declarations }
    Datasource: TDataSource;
  end;

var
  FrmLocalizar: TFrmLocalizar;
  Tipo: String;

implementation

{$R *.DFM}

function TFrmLocalizar.TipoDoCampo(DisplayLabel: String): String;
Var i: Integer;
begin
  For i := 0 To Datasource.Dataset.FieldCount - 1 Do
      If Datasource.Dataset.Fields.Fields[i].DisplayLabel = DisplayLabel
      Then begin
           if Datasource.Dataset.Fields.FIELDS[i].DataType = FtString 
           then
               Result := 'CHAR';

           if ((Datasource.Dataset.Fields.Fields[i].DataType = FtInteger) or
              ( Datasource.Dataset.Fields.Fields[i].DataType = FtWord))
           then
               Result := 'INT';

           if ((Datasource.Dataset.Fields.Fields[i].DataType = FtFloat) or
              ( Datasource.Dataset.Fields.Fields[i].DataType = FtCurrency) or
              ( Datasource.Dataset.Fields.Fields[i].DataType = FtBcd ))
           then
               Result := 'NUM';

           if ((Datasource.Dataset.Fields.Fields[i].DataType = FtDate) or
              ( Datasource.Dataset.Fields.Fields[i].DataType = FtDateTime))
           then
               Result := 'DAT';
      end;
end;

function TFrmLocalizar.NomeDoCampo(DisplayLabel: String): String;
Var i: Integer;
begin
  For i := 0 To Datasource.Dataset.FieldCount - 1 Do
      If Datasource.Dataset.Fields.Fields[i].DisplayLabel = DisplayLabel Then
         Result := Datasource.Dataset.Fields.Fields[i].FieldName;
end;

procedure TFrmLocalizar.FormShow(Sender: TObject);
var i: integer;
begin
  For i := 0 To Datasource.Dataset.FieldCount - 1 Do
      If Datasource.Dataset.Fields.Fields[i].Tag = 1 Then
         lbCampos.Items.Add(Datasource.Dataset.Fields.Fields[i].DisplayLabel);
  lbCampos.ItemIndex := 0;
  lbCampos.OnClick(lbCampos);
end;

procedure TFrmLocalizar.BtnFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmLocalizar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  FrmLocalizar := Nil;
end;

procedure TFrmLocalizar.lbCamposClick(Sender: TObject);
begin
     LblCampo.Caption := lbCampos.Items[lbCampos.ItemIndex];

     TIPO := TIPODOCAMPO(lbCampos.Items[lbCampos.ItemIndex]) ;

     IF TIPO = 'CHAR'
     THEN BEGIN
          EDTEXTO.Enabled := TRUE  ;
          EDVALOR.Enabled := FALSE ;
          EDDATA.Enabled  := FALSE ;
     END;

     IF TIPO = 'INT'
     THEN BEGIN
          EDTEXTO.Enabled := FALSE ;
          EDVALOR.Enabled := TRUE  ;
          EDVALOR.DisplayFormat := ' ,0; ,0';
          EDDATA.Enabled  := FALSE ;
     END;

     IF TIPO = 'NUM'
     THEN BEGIN
          EDTEXTO.Enabled := FALSE ;
          EDVALOR.Enabled := TRUE  ;
          EDVALOR.DisplayFormat := ' ,0.00; ,0.00';
          EDDATA.Enabled  := FALSE ;
     END;

     IF TIPO = 'DAT'
     THEN BEGIN
          EDTEXTO.Enabled := FALSE ;
          EDVALOR.Enabled := FALSE ;
          EDDATA.Enabled  := TRUE  ;
     END;
end;

procedure TFrmLocalizar.BtnOkClick(Sender: TObject);
begin
  Datasource.Dataset.DisableControls;

  If Parcial.Checked
  Then Begin
       If Tipo = 'CHAR'
       then
           Datasource.Dataset.Locate(NomeDoCampo(lbCampos.Items[lbCampos.ItemIndex]), EDTEXTO.Text, [loPartialKey, loCaseInsensitive]);

       If ((Tipo = 'INT') OR (Tipo = 'NUM'))
       then
           Datasource.Dataset.Locate(NomeDoCampo(lbCampos.Items[lbCampos.ItemIndex]), EDVALOR.Text, [loPartialKey, loCaseInsensitive]);

       If Tipo = 'DAT'
       then
           Datasource.Dataset.Locate(NomeDoCampo(lbCampos.Items[lbCampos.ItemIndex]), EDDATA.Text, [loPartialKey, loCaseInsensitive]);
       Close;
     End
  Else Begin
       If Tipo = 'CHAR'
       then begin
           IF Datasource.Dataset.Locate(NomeDoCampo(lbCampos.Items[lbCampos.ItemIndex]), EDTEXTO.Text, [loCaseInsensitive])
           then

           Else Begin
                MessageDlg('Registro não encontrado !',mtInformation,[mbOk],0);
                EDTEXTO.SetFocus;
           End;
       end;

       If ((Tipo = 'INT') OR (Tipo = 'NUM'))
       then begin
           IF Datasource.Dataset.Locate(NomeDoCampo(lbCampos.Items[lbCampos.ItemIndex]), EDVALOR.Text, [loCaseInsensitive])
           then

           Else Begin
                MessageDlg('Registro não encontrado !',MtInformation,[MbOk],0);
                EDVALOR.SetFocus;
           End;
       end;

       If Tipo = 'DAT'
       then begin
           If Datasource.Dataset.Locate(NomeDoCampo(lbCampos.Items[lbCampos.ItemIndex]), EDDATA.Text, [loCaseInsensitive])
           then

           Else Begin
                MessageDlg('Registro não encontrado !',MtInformation,[MbOk],0);
                EdDATA.SetFocus;
           End;

       end ;

       Close  ;

     End;
  Datasource.Dataset.EnableControls;
end;

procedure TFrmLocalizar.FormCreate(Sender: TObject);
begin
     LblCampo.Caption := '';
end;

procedure TFrmLocalizar.EdTextoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmLocalizar.lbCamposKeyPress(Sender: TObject; var Key: Char);
begin
     If KEY = #13
     Then begin
          Perform(WM_NEXTDLGCTL, 0, 0);

          IF EDTEXTO.Enabled
          THEN BEGIN
               EDTEXTO.SetFocus ;
          END;

          IF EDVALOR.Enabled
          THEN BEGIN
               EDVALOR.SetFocus ;
          END;

          IF EDVALOR.Enabled
          THEN BEGIN
               EDVALOR.SetFocus ;
          END;

          IF EDDATA.Enabled
          THEN BEGIN
               EDDATA.SetFocus ;
          END;
     END
end;

end.
