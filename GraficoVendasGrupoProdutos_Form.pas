unit GraficoVendasGrupoProdutos_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, Db, dxExEdtr, dxEdLib, dxCntner, dxEditor, dxDBEdtr,
  dxDBELib, StdCtrls,  RDprint,   ComCtrls,
  TeeProcs, TeEngine, Chart, DBChart, Series, cxGraphics, cxControls,
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
  TFrmGraficoVendasPorGrupo = class(TForm)
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
    Series1: TBarSeries;
    Series2: TPieSeries;
    RDBarras: TRadioButton;
    RdPizza: TRadioButton;
    RzBitBtn1: TcxButton;
    ActImprimir: TAction;
    procedure FormCreate(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cmbPessoaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure ActPreviewExecute(Sender: TObject);
    procedure IniEnter(Sender: TObject);
    procedure IniExit(Sender: TObject);
    procedure RDBarrasClick(Sender: TObject);
    procedure ActImprimirExecute(Sender: TObject);
  private
    { Private declarations }
    Grupo, SubGrupo: Integer;
  public
    { Public declarations }
  end;

var
  FrmGraficoVendasPorGrupo: TFrmGraficoVendasPorGrupo;
  Linha, Pagina: Integer;

implementation

uses Relatorios_DM, Usuarios_DM, Application_DM, Funcoes, Main,
  Rel_GraficoVendasProd_Form;

{$R *.DFM}

procedure TFrmGraficoVendasPorGrupo.FormCreate(Sender: TObject);
begin
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, Self.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TFrmGraficoVendasPorGrupo.ActFecharExecute(Sender: TObject);
begin
  Close;
end;

procedure TFrmGraficoVendasPorGrupo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  //
  Action := caFree;
  FrmGraficoVendasPorGrupo := Nil;
  FrmMain.PnlClient.Visible := True;
end;

procedure TFrmGraficoVendasPorGrupo.cmbPessoaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmGraficoVendasPorGrupo.FormShow(Sender: TObject);
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

procedure TFrmGraficoVendasPorGrupo.ActPreviewExecute(Sender: TObject);
begin
   DMRelatorios.Fat_Grafico_GrupoProd.Close;
   DMRelatorios.Fat_Grafico_GrupoProd.ParamByName('CNPJ').asString:= DMApp.Cnpj;
   DMRelatorios.Fat_Grafico_GrupoProd.ParamByName('DINI').asString:= Ini.Text;
   DMRelatorios.Fat_Grafico_GrupoProd.ParamByName('DFIM').asString:= Fim.Text;
   DMRelatorios.Fat_Grafico_GrupoProd.Open;
end;

procedure TFrmGraficoVendasPorGrupo.IniEnter(Sender: TObject);
begin
     CORFUNDO ( SENDER );
end;

procedure TFrmGraficoVendasPorGrupo.IniExit(Sender: TObject);
begin
     TIRACORFUNDO ( SENDER );
end;

procedure TFrmGraficoVendasPorGrupo.RDBarrasClick(Sender: TObject);
begin
     If RDBARRAS.Checked
     THEN BEGIN
          GRAFICO.Series[0].Active := TRUE   ;
          GRAFICO.Series[1].Active := FALSE  ;
     END
     ELSE BEGIN
          If RdPizza.Checked
          THEN BEGIN
               GRAFICO.Series[0].Active := FALSE ;
               GRAFICO.Series[1].Active := TRUE  ;
          END
          ELSE BEGIN
               GRAFICO.Series[0].Active := FALSE ;
               GRAFICO.Series[1].Active := FALSE ;
          END;
     END;
end;

procedure TFrmGraficoVendasPorGrupo.ActImprimirExecute(Sender: TObject);
begin
  with dmRelatorios do
  begin
    Fat_Grafico_GrupoProd.Close;
    Fat_Grafico_GrupoProd.ParamByName('CNPJ').asString:= DMApp.Cnpj;
    Fat_Grafico_GrupoProd.ParamByName('DINI').asString:= Ini.Text;
    Fat_Grafico_GrupoProd.ParamByName('DFIM').asString:= Fim.Text;
    Fat_Grafico_GrupoProd.Open;

    GRAFICO.Series[0].Active := False ;
    GRAFICO.Series[1].Active := False ;

    Qrp2 := TQrp2.Create(Self);

    If RDBARRAS.Checked THEN
    BEGIN
      Qrp2.Series1.Active := False ;
      Qrp2.Series2.Active := True  ;
    end
    else
    begin
      Qrp2.Series1.Active := True  ;
      Qrp2.Series2.Active := False ;
    end;

    Qrp2.Preview ;

    Qrp2.Free   ;
    Qrp2 := Nil ;

    If RDBARRAS.Checked THEN
    BEGIN
      GRAFICO.Series[0].Active := False ;
      GRAFICO.Series[1].Active := True  ;
    END
    ELSE
    BEGIN
      GRAFICO.Series[0].Active := true  ;
      GRAFICO.Series[1].Active := false ;
    END;
  end
end;

end.
