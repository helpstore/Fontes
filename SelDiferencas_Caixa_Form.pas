 unit SelDiferencas_Caixa_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, dxBarDBNav, dxBar,   dxCntner, dxEditor,
  dxEdLib, dxDBELib, StdCtrls, Db, IBCustomDataSet, dxDBEdtr, dxExEdtr,
  Buttons,     dxTL, dxDBCtrl, dxDBGrid,
  dxDBTLCl, dxGrClms,  IBquery,   cxPropertiesStore, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, dxSkinsdxBarPainter, cxClasses, cxPC, cxLabel;

type
  TFrmSelDiferencaCaixa = class(TForm)
    pnlClient: TPanel;
    pnlBottom: TPanel;
    dxBarDockControl1: TdxBarDockControl;
    Navigator: TdxBarDBNavigator;
    BarMgr: TdxBarManager;
    dxBarBDBNavFirst: TdxBarDBNavButton;
    dxBarBDBNavPrev: TdxBarDBNavButton;
    dxBarBDBNavNext: TdxBarDBNavButton;
    dxBarBDBNavLast: TdxBarDBNavButton;
    Actions: TActionList;
    Bevel1: TBevel;
    b2: TBevel;
    BtnFechar: TdxBarButton;
    Panel1: TPanel;
    ActFechar: TAction;
    DataSource: TDataSource;
    LblTitulo: TcxLabel;
    Image1: TImage;
    pc: TcxPageControl;
    dxTabSheet1: TcxTabSheet;
    Shape1: TShape;
    GRID: TdxDBGrid;
    Panel2: TPanel;
    Label2: TcxLabel;
    Label3: TcxLabel;
    edDtInicial: TdxDateEdit;
    edDtFinal: TdxDateEdit;
    edNDocto: TdxEdit;
    Label4: TcxLabel;
    Panel4: TPanel;
    ActImprimir: TAction;
    CmbPlano: TdxLookupEdit;
    Label5: TcxLabel;
    ActDevolver: TAction;
    ActAcertar: TAction;
    DsPlano: TDataSource;
    GRIDCONTA: TdxDBGridMaskColumn;
    GRIDCODIGOPLANO: TdxDBGridMaskColumn;
    GRIDCONTAPAI: TdxDBGridMaskColumn;
    GRIDNOME: TdxDBGridMaskColumn;
    GRIDCODIGO: TdxDBGridMaskColumn;
    GRIDDATA: TdxDBGridDateColumn;
    GRIDTIPO: TdxDBGridMaskColumn;
    GRIDDOCUMENTO: TdxDBGridMaskColumn;
    GRIDHISTORICO: TdxDBGridMaskColumn;
    GRIDMES: TdxDBGridMaskColumn;
    GRIDANO: TdxDBGridMaskColumn;
    GRIDVALOR: TdxDBGridMaskColumn;
    GRIDORIGEM: TdxDBGridMaskColumn;
    GRIDPLANILHA: TdxDBGridMaskColumn;
    GRIDCONTRA_PARTIDA: TdxDBGridMaskColumn;
    stgFrmSelDiferencaCaixa: TcxPropertiesStore;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dxDBEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure pnlClientResize(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure EdDataNotaKeyPress(Sender: TObject; var Key: Char);
    procedure Panel2Exit(Sender: TObject);
    procedure Panel2Enter(Sender: TObject);
    procedure CmbClienteEnter(Sender: TObject);
    procedure edDtInicialExit(Sender: TObject);

  private
    { Private declarations }
    Procedure Filtrar;

  public
    { Public declarations }
  end;

var
  FrmSelDiferencaCaixa: TFrmSelDiferencaCaixa;

implementation

uses Main,
     Usuarios_DM,
     Funcoes,
     Application_DM,
     Plano_DM;

  {$R *.DFM}

Procedure TFrmSelDiferencaCaixa.Filtrar;
Var
   Cont : Integer;
Begin
     With DmPlano do
     Begin
          //FILTRA A CONTABILIDADE
          Razao.Close ;
          Razao.SQL.Clear ;

          Razao.Params.CreateParam (FtDate  , 'D1', PtInput );
          Razao.Params.CreateParam (FtDate  , 'D2', PtInput );

          Razao.Params.CreateParam (FtString, 'C1', PtInput );
          Razao.Params.CreateParam (FtString, 'C2', PtInput );

          Razao.Sql.Add (' Select * From Ver_Razao ( :D1, :D2, :C1, :C2 ) ');
          Razao.Sql.Add (' Order By CodigoPlano, DATA                     ');

          Razao.ParamByName ('D1').aSDate   := edDtInicial.DATE ;
          Razao.ParamByName ('D2').aSDate   := edDtFinal.DATE ;

          Razao.ParamByName ('C1').aSString := TrataConta (CmbPlano.lookupkeyvalue) ;
          Razao.ParamByName ('C2').aSString := TrataConta (CmbPlano.lookupkeyvalue) ;

          Razao.Prepare ;

          Razao.Open  ;

          Razao.FetchAll ;

          GRID.SETFOCUS ;
     end;
End;

procedure TFrmSelDiferencaCaixa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     If DsPlano.DataSet.Tag = 0
     Then
         DsPlano.DataSet.Close;

     DMPlano.Free;
     DMPlano := Nil;

     Action := caFree;
     FrmSelDiferencaCaixa := Nil;

     //
     If FrmMain.MDIChildCount = 1 Then
     FrmMain.PnlClient.Visible := True;
end;

procedure TFrmSelDiferencaCaixa.FormShow(Sender: TObject);
begin
  IniciaComponentes ( Self as TForm );

  Try
     If Not(DsPlano.DataSet.Active) Then
     DsPlano.DataSet.Open;

     If DmApp.CARREGAR_ARQ = 'S'
     THEN begin
         GRID.Options := GRID.Options + [egoLoadAllRecords] ;
     END;
  Except
    On E:EDataBaseError Do
       Begin
         MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
         Exit;
       End
    Else
       Begin
         MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
         Exit;
       End;
  End;

  CmbPlano.SetFocus ;
end;

procedure TFrmSelDiferencaCaixa.FormCreate(Sender: TObject);
begin
     // Se o Usuário for Supervisor
     If DMUsuarios.Direito = 'SUPERVISOR' Then
        DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, LblTitulo.Caption, ListaActions(Actions))
     Else
         If DMUsuarios.Objeto = Self.Name
         Then
             AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TFrmSelDiferencaCaixa.dxDBEdit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Begin
       Perform(WM_NEXTDLGCTL, 0, 0);
       If Self.ActiveControl = pc Then
          Perform(WM_NEXTDLGCTL, 0, 0);
     End;
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmSelDiferencaCaixa.pnlClientResize(Sender: TObject);
begin
  b2.Width := pnlClient.Width - 17;
end;

procedure TFrmSelDiferencaCaixa.ActFecharExecute(Sender: TObject);
begin
  If pc.ActivePageIndex <> 0 Then
     pc.ActivePageIndex := 0
  Else
     Begin
       If FrmSelDiferencaCaixa.FormStyle = fsMDIChild Then
          FrmMain.opFechar.OnClick(FrmMain.opFechar)
       Else
          Close;
     End;
end;

procedure TFrmSelDiferencaCaixa.EdDataNotaKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = '-' Then
     Begin
       (Sender as TdxDBDateEdit).Date := (Sender as TdxDBDateEdit).Date -1;
       (Sender as TdxDBDateEdit).SelectAll;
       Key := #0;
     End;
  If Key = '+' Then
     Begin
       (Sender as TdxDBDateEdit).Date := (Sender as TdxDBDateEdit).Date +1;
       (Sender as TdxDBDateEdit).SelectAll;
       Key := #0;
     End;
end;

procedure TFrmSelDiferencaCaixa.Panel2Exit(Sender: TObject);
begin
  Filtrar;
end;

procedure TFrmSelDiferencaCaixa.Panel2Enter(Sender: TObject);
begin
     DataSource.DataSet.Close;
end;

procedure TFrmSelDiferencaCaixa.CmbClienteEnter(Sender: TObject);
begin
     CorFundo ( Sender );
end;

procedure TFrmSelDiferencaCaixa.edDtInicialExit(Sender: TObject);
begin
     TIRACORFUNDO ( SENDER );
end;

end.
