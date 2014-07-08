 unit ConfiguradorBackup_Frm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, CheckLst, Mask, Registry,
  ActnList, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
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
  TFrmConfiguradorBck = class(TForm)
    Panel1: TPanel;
    Label1: TcxLabel;
    Label2: TcxLabel;
    sbBuscaBase: TcxButton;
    sbOk: TcxButton;
    sbCancelar: TcxButton;
    eBase: TEdit;
    eDirBackup: TEdit;
    GroupBox1: TGroupBox;
    clbSemana: TCheckListBox;
    clbHorarios: TCheckListBox;
    Bevel1: TBevel;
    RxLabel1: TcxLabel;
    ActionList1: TActionList;
    ActConfigurar: TAction;
    LblTitulo: TcxLabel;
    procedure sbBuscaBaseClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure sbCancelarClick(Sender: TObject);
    procedure ActConfigurarExecute(Sender: TObject);
  private

  public

  end;

var
  FrmConfiguradorBck: TFrmConfiguradorBck;

const
  Dia: array[1..7] of string = ('Domingo', 'Segunda', 'Terça', 'Quarta', 'Quinta', 'Sexta', 'Sábado');

implementation

{$R *.dfm}

procedure TFrmConfiguradorBck.sbBuscaBaseClick(Sender: TObject);
begin
  with TOpenDialog.Create(Self) do
    begin
      Filter := 'FireBird/InterBase Database(*.gdb)|*.gdb';
      if Execute then eBase.Text := FileName;
    end;
end;

procedure TFrmConfiguradorBck.FormCreate(Sender: TObject);
var
  reg: TRegistry;
  i: integer;

begin
  reg := TRegistry.Create;
  try
    reg.RootKey := HKEY_LOCAL_MACHINE;

    if reg.OpenKey('\Software\HelpStoreBackup', false)
    then begin
        eBase.Text := reg.ReadString('Base');
        eDirBackup.Text := reg.ReadString('BackupDir');
        for i := Low(Dia) to High(Dia)do
        begin
             try
                clbSemana.Checked[i-1] := reg.ReadBool(Dia[i]);
             except

             end;
        end;

        if reg.OpenKey('\Software\HelpStoreBackup\Horarios', false)
        then begin
             try
                for i := 0 to (clbHorarios.Items.Count - 1) do
                begin
                     try
                        clbHorarios.Checked[i] := reg.ReadBool(FormatFloat('00', i) + ':00');
                     except

                     end;
                end;
             except

             end;
        end;
    end;
  finally
    reg.CloseKey;
    reg.Free;
  end;
end;

procedure TFrmConfiguradorBck.sbCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmConfiguradorBck.ActConfigurarExecute(Sender: TObject);
var
  reg: TRegistry;
  i: integer;
begin
  reg := TRegistry.Create;
  try
    reg.RootKey := HKEY_LOCAL_MACHINE;
    if reg.OpenKey('\Software\HelpStoreBackup', true) then
      begin
        reg.WriteString('Base', eBase.Text);
        reg.WriteString('BackupDir', eDirBackup.Text);

        for i := Low(Dia) to High(Dia) do
        begin
             reg.WriteBool(Dia[i], clbSemana.Checked[i - 1]);
        end;

        if reg.OpenKey('\Software\HelpStoreBackup\Horarios', true) then
          begin
            for i := 0 to (clbHorarios.Items.Count - 1) do
              begin
                try
                  reg.WriteBool(FormatFloat('00', i) + ':00', clbHorarios.Checked[i]);
                except

                end;
              end;
          end;
      end;
  finally
    reg.CloseKey;
    reg.Free;
  end;
  Close;
end;

end.

