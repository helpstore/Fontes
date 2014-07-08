 unit Filtra_Pagar_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, dxCntner, dxEditor, dxExEdtr, dxEdLib, StdCtrls,
  ActnList,  Db, dxDBEdtr, dxDBELib, IBCustomDataSet, IBQuery,
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
  TFrmFiltraContasPagar = class(TForm)
    pnlClient: TPanel;
    LblTitulo: TcxLabel;
    b2: TBevel;
    Ini: TdxDateEdit;
    Label3: TcxLabel;
    Label1: TcxLabel;
    Fim: TdxDateEdit;
    Actions: TActionList;
    ActFechar: TAction;
    RzBitBtn1: TcxButton;
    ActPreview: TAction;
    dsPessoas: TDataSource;
    Label4: TcxLabel;
    CmbPessoa: TdxLookupEdit;
    EdDocumento: TdxEdit;
    Label6: TcxLabel;
    Label2: TcxLabel;
    CmbCentro: TdxLookupEdit;
    DsCentro: TDataSource;
    Label5: TcxLabel;
    CmbAgrupador: TdxLookupEdit;
    DsAgrupador: TDataSource;
    RzBitBtn2: TcxButton;
    procedure pnlClientResize(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure IniKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ActPreviewExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure IniEnter(Sender: TObject);
    procedure IniExit(Sender: TObject);
    procedure FimExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    procedure PagarCentro;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmFiltraContasPagar: TFrmFiltraContasPagar;

implementation

uses  Application_DM,
      Funcoes,
      Financeiro_Dm, Usuarios_DM;

{$R *.DFM}

procedure TFrmFiltraContasPagar.pnlClientResize(Sender: TObject);
begin
  b2.Width := pnlClient.Width - 17;
end;

procedure TFrmFiltraContasPagar.ActFecharExecute(Sender: TObject);
begin
     Modalresult := mrCancel ;
end;

procedure TFrmFiltraContasPagar.IniKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmFiltraContasPagar.ActPreviewExecute(Sender: TObject);
begin
     IF ((INI.Text = '  /  /  ' )OR(INI.Text = '  /  /    ' ))
     THEN BEGIN
          INI.Date := strtodate('01/01/1900') ;
     END;

     IF ((FIM.Text = '  /  /  ' )OR(FIM.Text = '  /  /    ' ))
     THEN BEGIN
          FIM.Date := strtodate('31/12/9999') ;
     END;

     PAGARCENTRO;
end;

procedure TFrmFiltraContasPagar.FormShow(Sender: TObject);
begin
  IniciaComponentes ( Self as TForm );
  with dmfinanceiro do
  begin
    SelFornecedor.Open ;
    SelCentro.Open ;
    SelAgrupador.open;
  end;
end;

procedure TFrmFiltraContasPagar.IniEnter(Sender: TObject);
begin
     CorFundo( Sender );
end;

procedure TFrmFiltraContasPagar.IniExit(Sender: TObject);
begin
     TIRACORFUNDO ( SENDER );

     IF INI.TEXT = '  /  /    '
     THEN
         INI.Date := STRTODATE('01/01/1900');
end;

procedure TFrmFiltraContasPagar.FimExit(Sender: TObject);
begin
     TIRACORFUNDO ( SENDER );

     IF FIM.TEXT = '  /  /    '
     THEN
         FIM.Date := STRTODATE('31/12/9999');
end;

procedure TFrmFiltraContasPagar.FormCreate(Sender: TObject);
begin
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, Self.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TFrmFiltraContasPagar.PAGARCENTRO ;
Var
   TotalPAGAR, TotalCheques, TotalPerdidas: Real;
   Cont : Integer ;
   sFiltro : string;
begin
  with dmFinanceiro do
  begin
     Cont := 0;

       //filtrando
       IF TRIM(FrmFiltraContasPAGAR.CmbPessoa.TEXT) <> '' THEN
          sFiltro := ' PESSOA_FJ ='+intTostr(FrmFiltraContasPAGAR.CmbPessoa.LookupKeyValue);

       if trim(FrmFiltraContasPAGAR.CmbCentro.TEXT) <> '' then
       begin
         if sFiltro <> '' then
          sFiltro := sFiltro + ' and ';

          sFiltro := sFiltro + ' CENTRO_CUSTO ='+intTostr(FrmFiltraContasPAGAR.CmbCentro.LookupKeyValue);
       end;

       if trim(FrmFiltraContasPAGAR.CmbAgrupador.TEXT) <> '' then
       begin
         if sFiltro <> '' then
          sFiltro := sFiltro + ' and ';

          sFiltro := sFiltro + ' AGRUPADOR ='+intTostr(FrmFiltraContasPAGAR.CmbAgrupador   .LookupKeyValue);
       end;

       if trim(FrmFiltraContasPAGAR.EdDocumento.TEXT) <> '' then
       begin
         if sFiltro <> '' then
          sFiltro := sFiltro + ' and ';

          sFiltro := sFiltro + ' DOCTO ='''+trim(FrmFiltraContasPAGAR.EdDocumento.TEXT)+'''';
       end;


      //SOMA O TOTAL DAS CONTAS A PAGAR
      impressora.TitulodoRelatorio := 'PAGAR CENTRO CUSTO' ;

      //SELECIONA O CONTAS A PAGAR QUE AINDA NAO VENCEU
      verpagar.close ;
      verpagar.sql.clear;
      verpagar.sql.add(' SELECT * FROM VER_PAGAR_VENCIMENTO ( :CNPJ, :DINI, :DFIM ) ');
      if (sFiltro <> '') then
        verPagar.sql.add(' where '+sfiltro);
      verpagar.sql.add( ' ORDER BY CENTRO_CUSTO, NOME, PESSOA_FJ, DT_VENCTO ');
      verpagar.ParamByName( 'DINI' ).AsDate := FrmFiltraContasPAGAR.INI.Date ;
      verpagar.ParamByName( 'DFIM' ).AsDate := FrmFiltraContasPAGAR.FIM.Date ;
      verpagar.Prepare ;
      verpagar.Open ;

      //IMPRIME O CONTAS A PAGAR A VENCER
      IMPRIMEPAGARCCU ;

  end;
END;

end.
