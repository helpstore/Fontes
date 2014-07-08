unit comsetup_Form;
{********************************************************
Unit to perform serial port setup.  All settings are
saved in the regisrty, as well as the original default
settings.
*********************************************************
02/15/96 JMPERR Initial.
********************************************************}

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, ExtCtrls, Registry, Serial, cxGraphics, cxControls,
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
  TfrmSetup = class(TForm)
    cmbCommPort: TComboBox;
    cmbBaudRate: TComboBox;
    rdgStopBits: TRadioGroup;
    txtDataBits: TEdit;
    UpDown1: TUpDown;
    Label1: TcxLabel;
    Label2: TcxLabel;
    rdgFlowControl: TRadioGroup;
    Label3: TcxLabel;
    cmbParity: TComboBox;
    Label4: TcxLabel;
    Panel1: TPanel;
    BtnOK: TcxButton;
    btnCancel: TcxButton;
    chkSaveSettings: TCheckBox;
    btnDefaults: TcxButton;
    SerialPort1: TSerialPort;
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure BtnOKClick(Sender: TObject);
  private
    oCommPort : TSerialPort;
    procedure SaveSettings;
    procedure GetSettings;
    procedure UpdateCommPort;
  public
    function Setup(Sender : TSerialPort) : integer;
  end;

var
  frmSetup: TfrmSetup;

implementation

{$R *.DFM}

{********************************************************
Pass in the comm component and set it up.
*********************************************************
02/15/96 JMPERR Initial.
********************************************************}
function TfrmSetup.Setup(Sender : TSerialPort) : Integer;
begin
  oCommPort := Sender;
  GetSettings;  // Attempt to get default settings.
  result := showmodal;
end;

{********************************************************
Keep the edit box up to date.
*********************************************************
02/15/96 JMPERR Initial.
********************************************************}
procedure TfrmSetup.UpDown1Click(Sender: TObject; Button: TUDBtnType);
begin
  txtDataBits.text := IntToStr(updown1.position);
end;

{********************************************************
Save the settings, and if the user did not select to save
the settings, confirm that they don't want to save them.
*********************************************************
02/15/96 JMPERR Initial.
********************************************************}
procedure TfrmSetup.BtnOKClick(Sender: TObject);
begin
  if chkSaveSettings.checked then begin
    SaveSettings;
  end else begin
    if MessageDlg('Are you sure you don''t want to save the settings?',
                  mtConfirmation, [mbYes, mbNo], 0) = mrNo then SaveSettings;
  end;
  UpdateCommPort;
  modalresult := mrOk;  // Set result to ok.
end;

{********************************************************
Save the settings in the registry.
*********************************************************
02/15/96 JMPERR Initial.
********************************************************}
procedure TfrmSetup.SaveSettings;
var
  MyReg : TRegistry;
begin
  MyReg := TRegistry.Create;
  try
    with MyReg do begin
      // Set the root to the local machine.
      RootKey := HKEY_CURRENT_USER;
      if OpenKey('COMM_PORT_SETTINGS', true) then begin
        WriteInteger('Comm Port', cmbCommPort.ItemIndex+1);
        WriteInteger('Baud Rate', cmbBaudRate.ItemIndex+1);
        WriteInteger('Parity', cmbParity.ItemIndex);
        WriteInteger('Data Bits', UpDown1.Position-4);
        WriteInteger('Stop Bits', rdgStopBits.ItemIndex);
        WriteInteger('Flow Control', rdgFlowControl.ItemIndex);
        LazyWrite := False; // Disable caching.  Force disk flush.
        CloseKey;
      end;
    end;
  finally
    MyReg.Free;
  end;
end;

{********************************************************
Get the settings in the registry.
*********************************************************
02/15/96 JMPERR Initial.
********************************************************}
procedure TfrmSetup.GetSettings;
var
  MyReg : TRegistry;
begin
  MyReg := TRegistry.Create;
  try
    with MyReg do begin
      // Set the root to the local machine.
      RootKey := HKEY_CURRENT_USER;
      if OpenKey('COMM_PORT_SETTINGS', false) then begin
        cmbCommPort.ItemIndex := ReadInteger('Comm Port');
        cmbBaudRate.ItemIndex := ReadInteger('Baud Rate');
        cmbParity.ItemIndex := ReadInteger('Parity');
        UpDown1.Position := ReadInteger('Data Bits')+4;
        rdgStopBits.ItemIndex := ReadInteger('Stop Bits');
        rdgFlowControl.ItemIndex := ReadInteger('Flow Control');
        LazyWrite := False; // Disable caching.  Force disk flush.
        CloseKey;
      end;
    end;
  finally
    MyReg.Free;
  end;
end;

{********************************************************
Set the comm objects port parameters.
*********************************************************
02/15/96 JMPERR Initial.
********************************************************}
procedure TfrmSetup.UpdateCommPort;
begin
  with oCommPort do begin
    ClosePort;
    CommPort := TCommPort(cmbCommPort.ItemIndex);
    BaudRate := TBaudRate(cmbBaudRate.ItemIndex);
    ParityType := TParityType(cmbParity.ItemIndex);
    DataBits := TDataBits(UpDown1.Position-4);
    StopBits := TStopBits(rdgStopBits.ItemIndex);
    FlowControl := TFlowControl(rdgFlowControl.ItemIndex);
  end;

end;

end.
