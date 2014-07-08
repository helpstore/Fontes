unit Entradas_Lotes_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, dxBarDBNav, dxBar,   dxCntner, dxEditor,
  dxEdLib, dxDBELib, StdCtrls, Db, IBCustomDataSet, dxDBTLCl, dxGrClms,
  dxDBCtrl, dxDBGrid, dxTL, dxExEdtr,   Grids, DBGrids,
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
  dxSkinXmas2008Blue, dxSkinsdxBarPainter, cxClasses, cxLabel;

type
  TFrmEntradas_Lotes = class(TForm)
    pnlClient: TPanel;
    pnlBottom: TPanel;
    dxBarDockControl1: TdxBarDockControl;
    BarDBNavigator: TdxBarDBNavigator;
    BarManager: TdxBarManager;
    dxBarBDBNavFirst: TdxBarDBNavButton;
    dxBarBDBNavPrev: TdxBarDBNavButton;
    dxBarBDBNavNext: TdxBarDBNavButton;
    dxBarBDBNavLast: TdxBarDBNavButton;
    BtnSalvar: TdxBarButton;
    BtnCancelar: TdxBarButton;
    Actions: TActionList;
    ActAlterar: TAction;
    ActPost: TAction;
    ActCancel: TAction;
    Bevel1: TBevel;
    DataSource: TDataSource;
    BtnFechar: TdxBarButton;
    Panel1: TPanel;
    ActFechar: TAction;
    ActLotes: TAction;
    Panel2: TPanel;
    Label3: TcxLabel;
    LBLQUANTIDADE: TcxLabel;
    LblTitulo: TcxLabel;
    b2: TBevel;
    btnInserirLote: TdxBarButton;
    GridEntradasLotes: TdxDBGrid;
    GridEntradasLotesCODIGO: TdxDBGridMaskColumn;
    GridEntradasLotesNDOCTO: TdxDBGridMaskColumn;
    GridEntradasLotesPESSOA_FJ: TdxDBGridMaskColumn;
    GridEntradasLotesPRODUTO: TdxDBGridMaskColumn;
    GridEntradasLotesLOTE: TdxDBGridMaskColumn;
    GridEntradasLotesQUANTIDADE: TdxDBGridMaskColumn;
    GridEntradasLotesORDEM: TdxDBGridMaskColumn;
    GridEntradasLotesGERMINACAO: TdxDBGridMaskColumn;
    GridEntradasLotesNOME_LOTE: TdxDBGridMaskColumn;
    GridEntradasLotesPENEIRA: TdxDBGridMaskColumn;
    GridEntradasLotesPESO: TdxDBGridMaskColumn;
    GridEntradasLotesPUREZA: TdxDBGridMaskColumn;
    GridEntradasLotesDATA_VALIDADE: TdxDBGridDateColumn;
    GridEntradasLotesATESTADO: TdxDBGridMaskColumn;
    btnEditar: TdxBarButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ActPostExecute(Sender: TObject);
    procedure ActCancelExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dxDBEdit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure pnlClientResize(Sender: TObject);
    procedure DataSourceStateChange(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure EdInicialEnter(Sender: TObject);
    procedure EdInicialExit(Sender: TObject);
    function  SomaLancado ( Valor: Real ): Boolean ;
    procedure ActLotesExecute(Sender: TObject);
    procedure ActAlterarExecute(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    Quantidade : Real;
    procedure PreencheLote;
  end;

var
  FrmEntradas_Lotes: TFrmEntradas_Lotes;

implementation

uses Entradas_DM,
     Application_DM,
     Main,
     Usuarios_DM,
     Funcoes,
     Cadastros_DM, Lotes_Form;

{$R *.DFM}

function  TFrmEntradas_Lotes.SomaLancado ( Valor: Real ): Boolean ;
Var
   Qntde: Real;
begin
  If Datasource.DataSet.State in [ dsiNsert, dsedit ] then
    Datasource.dataset.cancel ;

  Datasource.DataSet.First ;
  Qntde := 0;

  while not Datasource.dataset.eof do
  begin
    Qntde := Qntde + Datasource.dataset.fieldbyname ('QUANTIDADE').Value ;
    Datasource.DataSet.Next ;
  end;

  If arredonda ( Qntde, 2 ) <> arredonda( Valor, 2 )  then
    Result := False
  else
    Result := True ;
end;

procedure TFrmEntradas_Lotes.FormClose(Sender: TObject; var Action: TCloseAction);
Var
   Qntde: Real;
begin
     If Datasource.DataSet.State in [ dsiNsert, dsedit ] then
       Datasource.dataset.cancel ;

     Datasource.DataSet.First ;
     Qntde := 0;

     while not Datasource.dataset.eof do
     begin
       Qntde := Qntde + Datasource.dataset.fieldbyname ('QUANTIDADE').Value ;
       Datasource.DataSet.Next ;
     end;

     If arredonda(Qntde,2) <> arredonda(Quantidade,2) then
     begin
       messagedlg('A Quantidade desdobrada (' + formatfloat('###,##0.00', Qntde) + '), não confere com o valor da Nota (' + formatfloat('###,##0.00', Quantidade) + ')', mterror, [mbok],0);
       action := canone ;
     end
     else
     begin
       if Datasource.DataSet.Tag = 0 then
         Datasource.Dataset.Close;

       Action := caFree;
       FrmEntradas_Lotes := Nil;
     end;
end;

procedure TFrmEntradas_Lotes.ActPostExecute(Sender: TObject);
begin
  Try
    DataSource.DataSet.Post;
    DMApp.Transaction.CommitRetaining;

    //Soma Lancado
    SOMALANCADO ( QUANTIDADE ) ;
  Except
  End;
end;

procedure TFrmEntradas_Lotes.ActCancelExecute(Sender: TObject);
begin
  If DataSource.DataSet.State in dsEditModes Then
     DataSource.DataSet.Cancel
  Else
     BtnFechar.OnClick(BtnFechar);
end;

procedure TFrmEntradas_Lotes.FormShow(Sender: TObject);
begin
  IniciaComponentes ( Self as TForm );

  Try
    If Not(DataSource.DataSet.Active) Then
       Datasource.DataSet.Open;

    //Soma lancado
    somalancado(QUANTIDADE) ;
    PreencheLote;
  Except
    On E:EDataBaseError Do
    begin
      MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
      Exit;
    end
    else
    begin
      MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
      Exit;
    end;
  end;
  //
  Datasource.AutoEdit := True ;
  GridEntradasLotes.SetFocus;
end;

procedure TFrmEntradas_Lotes.FormCreate(Sender: TObject);
begin
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, LblTitulo.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TFrmEntradas_Lotes.dxDBEdit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmEntradas_Lotes.pnlClientResize(Sender: TObject);
begin
  b2.Width := pnlClient.Width - 17;
end;

procedure TFrmEntradas_Lotes.DataSourceStateChange(Sender: TObject);
begin
  If DataSource.State in dsEditModes Then
     Begin
       ActAlterar.Enabled   := False;
       BtnSalvar.Enabled    := True;
       BtnCancelar.Enabled  := True;
       ActFechar.Enabled    := False;
     End
  Else
     Begin
       ActAlterar.Enabled   := ActAlterar.Tag = 1;
       BtnSalvar.Enabled    := False;
       BtnCancelar.Enabled  := False;
       ActFechar.Enabled    := True;
     End;
end;

procedure TFrmEntradas_Lotes.ActFecharExecute(Sender: TObject);
begin
  If FrmEntradas_Lotes.FormStyle = fsMDIChild Then
     FrmMain.opFechar.OnClick(FrmMain.opFechar)
  Else
     Close;
end;

procedure TFrmEntradas_Lotes.EdInicialEnter(Sender: TObject);
begin
     CORFUNDO ( SENDER );
end;

procedure TFrmEntradas_Lotes.EdInicialExit(Sender: TObject);
begin
     TIRACORFUNDO ( SENDER );
end;

procedure TFrmEntradas_Lotes.ActLotesExecute(Sender: TObject);
begin
  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmLotes', False);
  with dmCadastros do
  begin
    Produto_Lote := DMEntradas.Entradas_ItensPRODUTO.Value;
    Peso_Lote := 0;
  end;
  FrmLotes := TFrmLotes.Create(Self);
  FrmLotes.ShowModal;
  FrmLotes.Free;
  FrmLotes := Nil;
  PreencheLote;
end;

procedure TFrmEntradas_Lotes.PreencheLote;
begin
  With DmEntradas do
  Begin
    Lista_Lotes.Close ;
    Lista_Lotes.ParamByName ( 'CNPJ'    ).AsString := DMAPP.CNPJ   ;
    Lista_Lotes.ParamByName ( 'PRODUTO' ).AsString := Entradas_ItensPRODUTO.Value ;
    Lista_Lotes.Open ;
    Lista_Lotes.FetchAll ;
    Lista_Lotes.First ;

    Lista_Lotes.DisableControls ;
    Produtos_Lotes.DisableControls ;

    Produtos_Lotes.FetchAll;
    while not Lista_Lotes.eof do
    begin
      if not Produtos_Lotes.LOCATE ('LOTE',Lista_LotesCODIGO.value,[]) then
      begin
        Produtos_Lotes.Append ;
        Produtos_LotesLOTE.Value     := Lista_LotesCODIGO.VALUE ;
        Produtos_LotesQUANTIDADE.Value  := 0;
        Produtos_Lotes.post;
      end;

      Lista_Lotes.next;
    end;

    Lista_Lotes.EnableControls ;
    Produtos_Lotes.EnableControls ;

    Produtos_Lotes.Close;
    Produtos_Lotes.Open;
    Produtos_Lotes.FetchAll;
  end;
end;

procedure TFrmEntradas_Lotes.ActAlterarExecute(Sender: TObject);
begin
  if DMEntradas.Produtos_Lotes.State = dsbrowse then
    DMEntradas.Produtos_Lotes.Edit;
end;

end.
