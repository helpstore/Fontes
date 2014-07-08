unit GraficoVendas_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, Db, dxExEdtr, dxEdLib, dxCntner, dxEditor, dxDBEdtr,
  dxDBELib, StdCtrls,  RDprint,   ComCtrls,
  TeeProcs, TeEngine, Chart, DBChart, Series,   cxPropertiesStore,
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
  TFrmGraficoVendas = class(TForm)
    pnlClient: TPanel;
    Actions: TActionList;
    ActPreview: TAction;
    Label3: TcxLabel;
    Label1: TcxLabel;
    Ini: TdxDateEdit;
    Fim: TdxDateEdit;
    LblTitulo: TcxLabel;
    b2: TBevel;
    GRAFICO: TDBChart;
    Panel2: TPanel;
    RzBitBtn3: TcxButton;
    RzBitBtn2: TcxButton;
    Series1: TPieSeries;
    Series2: TBarSeries;
    RDBarras: TRadioButton;
    RdPizza: TRadioButton;
    RzBitBtn1: TcxButton;
    ActImprimir: TAction;
    ckLegendas: TCheckBox;
    stgFrmGraficoVendas: TcxPropertiesStore;
    procedure FormCreate(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cmbPessoaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure ActPreviewExecute(Sender: TObject);
    procedure RDBarrasClick(Sender: TObject);
    procedure IniEnter(Sender: TObject);
    procedure IniExit(Sender: TObject);
    procedure ActImprimirExecute(Sender: TObject);
  private
    { Private declarations }
    Grupo, SubGrupo: Integer;
  public
    { Public declarations }
  end;

var
  FrmGraficoVendas: TFrmGraficoVendas;
  Linha, Pagina: Integer;

implementation

uses Relatorios_DM, Usuarios_DM, Application_DM, Funcoes, Main,
  Rel_GraficoVendas_Form;

{$R *.DFM}

procedure TFrmGraficoVendas.FormCreate(Sender: TObject);
begin
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, Self.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TFrmGraficoVendas.ActFecharExecute(Sender: TObject);
begin
  Close;
end;

procedure TFrmGraficoVendas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  //
  Action := caFree;
  FrmGraficoVendas := Nil;
  FrmMain.PnlClient.Visible := True;
end;

procedure TFrmGraficoVendas.cmbPessoaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmGraficoVendas.FormShow(Sender: TObject);
begin
  Ini.SetFocus;
  //
  IniciaComponentes(Self as TForm);
    Try
       //
       //
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

procedure TFrmGraficoVendas.ActPreviewExecute(Sender: TObject);
begin
   if (ckLegendas.Checked) then
     GRAFICO.Legend.Visible := true
   else
     GRAFICO.Legend.Visible := false;

   If DMRelatorios.Fat_GraficoVendas.Active Then
       DMRelatorios.Fat_GraficoVendas.Close;

   DMRelatorios.Fat_GraficoVendas.ParamByName('CNPJ').asString:= DMApp.Cnpj;
   DMRelatorios.Fat_GraficoVendas.ParamByName('DINI').asString:= Ini.Text;
   DMRelatorios.Fat_GraficoVendas.ParamByName('DFIM').asString:= Fim.Text;
   DMRelatorios.Fat_GraficoVendas.Open;
end;

procedure TFrmGraficoVendas.RDBarrasClick(Sender: TObject);
begin
     If RDBARRAS.Checked
     THEN BEGIN
          GRAFICO.Series[0].Active := False ;
          GRAFICO.Series[1].Active := True  ;
     END
     ELSE BEGIN
          GRAFICO.Series[0].Active := true  ;
          GRAFICO.Series[1].Active := false ;
     END;
end;

procedure TFrmGraficoVendas.IniEnter(Sender: TObject);
begin
     CORFUNDO ( SENDER );
end;

procedure TFrmGraficoVendas.IniExit(Sender: TObject);
begin
     TIRACORFUNDO ( SENDER );
end;

procedure TFrmGraficoVendas.ActImprimirExecute(Sender: TObject);
begin
   If DMRelatorios.Fat_GraficoVendas.Active  Then
       DMRelatorios.Fat_GraficoVendas.Close;

   DMRelatorios.Fat_GraficoVendas.ParamByName('CNPJ').asString:= DMApp.Cnpj;
   DMRelatorios.Fat_GraficoVendas.ParamByName('DINI').asString:= Ini.Text;
   DMRelatorios.Fat_GraficoVendas.ParamByName('DFIM').asString:= Fim.Text;
   DMRelatorios.Fat_GraficoVendas.Open;

   GRAFICO.Series[0].Active := False ;
   GRAFICO.Series[1].Active := False ;

   Qrp := TQrp.Create(Self);

   If RDBARRAS.Checked
   THEN BEGIN
        Qrp.Series1.Active := False ;
        Qrp.Series2.Active := True  ;
   end
   else begin
        Qrp.Series1.Active := True  ;
        Qrp.Series2.Active := False ;
   end;

   if (ckLegendas.Checked) then
     qrp.GRAFICO.Chart.Legend.Visible := true
   else
     qrp.GRAFICO.Chart.Legend.Visible := false;

   Qrp.Preview ;

   Qrp.Free   ;
   Qrp := Nil ;

   If RDBARRAS.Checked
   THEN BEGIN
        GRAFICO.Series[0].Active := False ;
        GRAFICO.Series[1].Active := True  ;
   END
   ELSE BEGIN
        GRAFICO.Series[0].Active := true  ;
        GRAFICO.Series[1].Active := false ;
   END;
end;

end.
