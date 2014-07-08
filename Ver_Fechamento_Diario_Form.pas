 unit Ver_Fechamento_Diario_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, dxBarDBNav, dxBar, dxCntner, dxEditor,
  dxEdLib, dxDBELib, StdCtrls, Db, IBCustomDataSet, dxTL, dxDBCtrl,
  dxDBGrid, dxExEdtr,    dxDBTLCl, dxGrClms,  
  cxPropertiesStore, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, Menus, dxSkinsdxBarPainter,
  cxClasses, cxButtons, cxPC, cxLabel;

type
  TFrmVerFechamentoDiario = class(TForm)
    pnlClient: TPanel;
    pnlBottom: TPanel;
    dxBarDockControl1: TdxBarDockControl;
    BarDBNavigator: TdxBarDBNavigator;
    BarManager: TdxBarManager;
    dxBarBDBNavFirst: TdxBarDBNavButton;
    dxBarBDBNavPrev: TdxBarDBNavButton;
    dxBarBDBNavNext: TdxBarDBNavButton;
    dxBarBDBNavLast: TdxBarDBNavButton;
    Actions: TActionList;
    ActPost: TAction;
    ActCancel: TAction;
    Bevel1: TBevel;
    b2: TBevel;
    DataSource: TDataSource;
    BtnListagem: TdxBarButton;
    ActListagem: TAction;
    BtnFechar: TdxBarButton;
    Panel1: TPanel;
    ActFechar: TAction;
    LblTitulo: TcxLabel;
    PC: TcxPageControl;
    dxTabSheet1: TcxTabSheet;
    Label2: TcxLabel;
    Label1: TcxLabel;
    Label4: TcxLabel;
    edDtInicial: TdxDateEdit;
    edDtFinal: TdxDateEdit;
    RzBitBtn1: TcxButton;
    edcodigo: TdxButtonEdit;
    GRID: TdxDBGrid;
    GRIDDATA: TdxDBGridDateColumn;
    GRIDPRODUTO: TdxDBGridMaskColumn;
    GRIDNOME: TdxDBGridMaskColumn;
    GRIDLEITURA: TdxDBGridMaskColumn;
    GRIDENTRADA: TdxDBGridMaskColumn;
    GRIDVENDA: TdxDBGridMaskColumn;
    GRIDCONTAGEM: TdxDBGridMaskColumn;
    GRIDPOSICAO: TdxDBGridMaskColumn;
    GRIDINICIAL: TdxDBGridMaskColumn;
    GRIDGARANTIAS_SAI: TdxDBGridColumn;
    GRIDGARANTIAS_ENT: TdxDBGridColumn;
    GRIDTROCAS_SAI: TdxDBGridColumn;
    GRIDTROCAS_ENT: TdxDBGridColumn;
    stgFrmVerFechamentoDiario: TcxPropertiesStore;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ActCancelExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dxDBEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure pnlClientResize(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure edcodigoButtonClick(Sender: TObject; AbsoluteIndex: Integer);
    procedure edDtInicialEnter(Sender: TObject);
    procedure edDtInicialExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Retorno: Integer;
  end;

var
  FrmVerFechamentoDiario: TFrmVerFechamentoDiario;

implementation

uses
     Application_DM,
     Main,
     Usuarios_DM,
     Funcoes,
     LocalizarProd_DM,
     Relatorios_DM;

{$R *.DFM}

procedure TFrmVerFechamentoDiario.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     DMLocalizarProd.Produtos.Close ;

     //
     FrmLocProduto.Free    ;
     FrmLocProduto := Nil  ;

     FrmLocProdutoAuto.Free    ;
     FrmLocProdutoAuto := Nil  ;

     DMLocalizarProd.Free;
     DMLocalizarProd := Nil;
end;

procedure TFrmVerFechamentoDiario.ActCancelExecute(Sender: TObject);
begin
     BtnFechar.OnClick(BtnFechar);
end;

procedure TFrmVerFechamentoDiario.FormShow(Sender: TObject);
begin
     DMLocalizarProd  := TDMLocalizarProd.Create(Self);

     If DmApp.Tipo_Cons_Prod = 'A' //Auto
     then begin
          If FrmLocProdutoAuto = Nil
          then
              FrmLocProdutoAuto := TFrmLocProdutoAuto.Create(Application) ;
     END
     ELSE BEGIN
          If FrmLocProduto = Nil
          then
              FrmLocProduto := TFrmLocProduto.Create(Application) ;
     END;

     IniciaComponentes(Self as TForm);

     edDtInicial.SETFOCUS ;
end;

procedure TFrmVerFechamentoDiario.FormCreate(Sender: TObject);
begin
  //
  ActListagem.Hint := ActListagem.Hint + LblTitulo.Caption + ' [F5]';
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, LblTitulo.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TFrmVerFechamentoDiario.dxDBEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmVerFechamentoDiario.pnlClientResize(Sender: TObject);
begin
  b2.Width := pnlClient.Width - 17;
end;

procedure TFrmVerFechamentoDiario.ActFecharExecute(Sender: TObject);
begin
  If FrmVerFechamentoDiario.FormStyle = fsMDIChild Then
     FrmMain.opFechar.OnClick(FrmMain.opFechar)
  Else
     Close;
end;

procedure TFrmVerFechamentoDiario.RzBitBtn1Click(Sender: TObject);
begin
     IF (( edDtInicial.Text = '  /  /    ' )OR( edDtInicial.Text = '  /  /  ' ))
     THEN BEGIN
          Showmessage ( 'Selecione a Data!' );
          edDtInicial.SetFocus ;
          EXIT;
     END;

     IF (( edDtFinal.Text = '  /  /    ' )OR( edDtFinal.Text = '  /  /  ' ))
     THEN BEGIN
          Showmessage ( 'Selecione a Data!' );
          edDtFinal.SetFocus ;
          EXIT;
     END;

     With DmRelatorios do
     begin
          FECHAMENTO_DIARIO.CLOSE ;

          FECHAMENTO_DIARIO.SQL.CLEAR ;

          FECHAMENTO_DIARIO.SQL.Add ( ' SELECT * FROM VER_EST_POSICAO_DIARIA ');

          FECHAMENTO_DIARIO.SQL.Add ( ' ( :CNPJ, :DINICIAL, :DFINAL )        ');

          FECHAMENTO_DIARIO.ParamByName ('CNPJ'    ).ASSTRING  := DmApp.CNPJ       ;
          FECHAMENTO_DIARIO.ParamByName ('DINICIAL').ASDATE    := edDtInicial.DATE ;
          FECHAMENTO_DIARIO.ParamByName ('DFINAL'  ).ASDATE    := edDtFinal.DATE   ;

          IF TRIM(edcodigo.Text) <> ''
          THEN BEGIN
               FECHAMENTO_DIARIO.Params.CreateParam (FTSTRING, 'PRODUTO', PTINPUT );

               FECHAMENTO_DIARIO.SQL.Add ( ' WHERE PRODUTO = :PRODUTO ');

               FECHAMENTO_DIARIO.ParamByName ('PRODUTO').AsString := TRIM(edcodigo.Text) ;
          END;

          FECHAMENTO_DIARIO.SQL.Add ( ' ORDER BY NOME, PRODUTO, DATA  ');

          FECHAMENTO_DIARIO.Prepare  ;

          FECHAMENTO_DIARIO.OPEN     ;
     end;

     GRID.SETFOCUS ;
end;

procedure TFrmVerFechamentoDiario.edcodigoButtonClick(Sender: TObject; AbsoluteIndex: Integer);
begin
     If DmApp.Tipo_Cons_Prod = 'A' //Auto
     then begin
          if FrmLocProdutoAuto.Showmodal = mrok
          then begin
               edcodigo.text := ( FrmLocProdutoAuto.CampTrecho );
          end;
     end
     else begin
          if FrmLocProduto.Showmodal = mrok
          then begin
               edcodigo.text := ( FrmLocProduto.CampTrecho );
          end;
     end;
end;

procedure TFrmVerFechamentoDiario.edDtInicialEnter(Sender: TObject);
begin
     CORFUNDO ( SENDER );
end;

procedure TFrmVerFechamentoDiario.edDtInicialExit(Sender: TObject);
begin
     TIRACORFUNDO ( SENDER );
end;

end.
