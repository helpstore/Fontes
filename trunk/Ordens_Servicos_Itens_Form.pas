  unit Ordens_Servicos_Itens_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ActnList, dxBarDBNav, dxBar, dxExEdtr, dxEdLib, dxDBELib, dxEditor,
  IBCustomDataSet, dxDBEdtr, dxCntner, ExtCtrls, Buttons, StdCtrls,
    dxDBTLCl, dxGrClms, dxDBCtrl, dxDBGrid, dxTL, cxGraphics,
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
  dxSkinsdxBarPainter, cxClasses, cxLabel;

type
  TFrmOrdens_Servicos_Itens = class(TForm)
    pnlClient: TPanel;
    Bevel1: TBevel;
    b2: TBevel;
    LblTitulo: TcxLabel;
    Image1: TImage;
    pnlBottom: TPanel;
    dxBarDockControl1: TdxBarDockControl;
    Panel1: TPanel;
    BarMgr: TdxBarManager;
    BtnFechar: TdxBarButton;
    Actions: TActionList;
    ActIncluir: TAction;
    ActAlterar: TAction;
    ActExcluir: TAction;
    ActLocalizar: TAction;
    ActListagem: TAction;
    ActPost: TAction;
    ActCancel: TAction;
    ActFechar: TAction;
    actLookup: TAction;
    DataSource: TDataSource;
    GRID: TdxDBGrid;
    GRIDSERVICO: TdxDBGridMaskColumn;
    GRIDNOME: TdxDBGridMaskColumn;
    GRIDQUANTIDADE: TdxDBGridMaskColumn;
    GRIDUNITARIO: TdxDBGridMaskColumn;
    GRIDTotal: TdxDBGridColumn;
    GRIDSELECIONADO: TdxDBGridMaskColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ActCancelExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure EdCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure pnlClientResize(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure cmbNomeRazaoEnter(Sender: TObject);
    procedure cmbNomeRazaoExit(Sender: TObject);
    procedure GRIDKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmOrdens_Servicos_Itens: TFrmOrdens_Servicos_Itens;

implementation

uses
     Application_DM,
     Main,
     Usuarios_DM,
     Funcoes,
     Servicos_DM,
     Ordens_Servicos_Itens_Valores_Form;

{$R *.DFM}

procedure TFrmOrdens_Servicos_Itens.FormClose(Sender: TObject;  var Action: TCloseAction);
begin
  //
  Action := caFree;
  FrmOrdens_Servicos_Itens := Nil;
end;

procedure TFrmOrdens_Servicos_Itens.ActCancelExecute(Sender: TObject);
begin
     BtnFechar.OnClick(BtnFechar);
end;

procedure TFrmOrdens_Servicos_Itens.FormShow(Sender: TObject);
begin
  IniciaComponentes ( Self as TForm );

  IF (DmApp.OFC_COR_FUNDO) <> ''
  THEN BEGIN
       pnlClient.Color := StrToInt(DmApp.OFC_COR_FUNDO);
  END;

  Try

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
  //
  Datasource.AutoEdit := ActAlterar.Enabled;

  DmServicos.Servicos_Itens.first ;

  GRID.SetFocus;
end;

procedure TFrmOrdens_Servicos_Itens.FormCreate(Sender: TObject);
begin
  //
  ActListagem.Hint := ActListagem.Hint + LblTitulo.Caption + ' [F5]';
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, LblTitulo.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TFrmOrdens_Servicos_Itens.EdCodigoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Begin
       Perform(WM_NEXTDLGCTL, 0, 0);
     End;
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmOrdens_Servicos_Itens.pnlClientResize(Sender: TObject);
begin
     b2.Width := pnlClient.Width - 17;
end;

procedure TFrmOrdens_Servicos_Itens.ActFecharExecute(Sender: TObject);
begin
  If FrmOrdens_Servicos_Itens.FormStyle = fsMDIChild Then
     FrmMain.opFechar.OnClick(FrmMain.opFechar)
  Else
     Close;
end;

procedure TFrmOrdens_Servicos_Itens.cmbNomeRazaoEnter(Sender: TObject);
begin
     CORFUNDO(SENDER);
end;

procedure TFrmOrdens_Servicos_Itens.cmbNomeRazaoExit(Sender: TObject);
begin
     TIRACORFUNDO(SENDER);
end;

procedure TFrmOrdens_Servicos_Itens.GRIDKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
Var
   Serv, Mot: Integer;
begin
     if key = 13
     then begin
          { * * * * * }
          Serv := DMServicos.Servicos_ItensSERVICO.value ;

          Mot  := DMServicos.OrdemMOTOR.value ;

          IF NOT ( DMServicos.Servicos_Itens.STATE IN [ DSINSERT, DSEDIT ] )
          THEN
              DMServicos.Servicos_Itens.EDIT ;

          DMServicos.Servicos_ItensUNITARIO.Value := DMServicos.BuscaValorServico ( Serv, Mot );

          If FrmEntraValorOs_Itens = Nil
          Then Begin
               FrmEntraValorOs_Itens := TFrmEntraValorOs_Itens.Create(Self);

               FrmEntraValorOs_Itens.SHOWMODAL ;
               FrmEntraValorOs_Itens.FREE      ;
               FrmEntraValorOs_Itens := Nil    ;
          End;

          If DmServicos.Servicos_Itens.state in [ dsinsert, dsedit ]
          then
              DmServicos.Servicos_Itens.post;
     end;
end;

end.
