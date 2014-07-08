 unit Cartao_Manutencao_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, dxBarDBNav, dxBar, dxCntner, dxEditor,
  dxEdLib, dxDBELib, StdCtrls, Db, IBCustomDataSet, Buttons, dxExEdtr,
  dxDBEdtr, Grids, DBGrids,   dxDBTLCl, dxGrClms, dxTL, dxDBCtrl,
  dxDBGrid,  cxPropertiesStore, Variants, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinXmas2008Blue, Menus, dxSkinsdxBarPainter,
  cxClasses, cxButtons, cxLabel;

type
  TFrmMamutencao_Cartao = class(TForm)
    pnlClient: TPanel;
    pnlBottom: TPanel;
    dxBarDockControl1: TdxBarDockControl;
    BarDBNavigator: TdxBarDBNavigator;
    BarManager: TdxBarManager;
    dxBarBDBNavFirst: TdxBarDBNavButton;
    dxBarBDBNavPrev: TdxBarDBNavButton;
    dxBarBDBNavNext: TdxBarDBNavButton;
    dxBarBDBNavLast: TdxBarDBNavButton;
    btnLocalizar: TdxBarButton;
    Actions: TActionList;
    ActCancel: TAction;
    Bevel1: TBevel;
    b2: TBevel;
    LblTitulo: TcxLabel;
    DataSource: TDataSource;
    BtnListagem: TdxBarButton;
    ActListagem: TAction;
    BtnFechar: TdxBarButton;
    Panel1: TPanel;
    ActFechar: TAction;
    Bevel2: TBevel;
    ActPeriodo: TAction;
    Label5: TcxLabel;
    DsAdministradora: TDataSource;
    DsPessoas: TDataSource;
    Data: TdxDateEdit;
    OpConciliar: TdxBarButton;
    ActConciliar: TAction;
    Label11: TcxLabel;
    GRID: TdxDBGrid;
    EDNOME: TdxDBEdit;
    Panel4: TPanel;
    RzBitBtn3: TcxButton;
    RzBitBtn5: TcxButton;
    BtnLocalizar2: TcxButton;
    Label6: TcxLabel;
    cmbAdministradora: TdxDBLookupEdit;
    Label7: TcxLabel;
    CmbTipoPessoa: TdxDBPickEdit;
    EdParcelas: TdxDBSpinEdit;
    Label1: TcxLabel;
    EdCartao: TdxDBEdit;
    dxDBEdit4: TdxDBEdit;
    EdValor: TdxDBCalcEdit;
    Label8: TcxLabel;
    EdData: TdxDBDateEdit;
    Label4: TcxLabel;
    EdVencimento: TdxDBDateEdit;
    Label2: TcxLabel;
    GRIDADMINISTRADORA: TdxDBGridMaskColumn;
    GRIDCLIENTE: TdxDBGridMaskColumn;
    GRIDCONCILIADO: TdxDBGridMaskColumn;
    GRIDCONTA: TdxDBGridMaskColumn;
    GRIDCPF_CNPJ: TdxDBGridMaskColumn;
    GRIDDATA: TdxDBGridDateColumn;
    GRIDDOCUMENTO: TdxDBGridMaskColumn;
    GRIDNUM_BANCO: TdxDBGridMaskColumn;
    GRIDNUM_CARTAO: TdxDBGridMaskColumn;
    GRIDNUM_CONTA: TdxDBGridMaskColumn;
    GRIDREEMBOLSO: TdxDBGridDateColumn;
    GRIDTIPO_DOC: TdxDBGridMaskColumn;
    GRIDVALOR: TdxDBGridMaskColumn;
    GRIDVENDA: TdxDBGridMaskColumn;
    GRIDPESSOA_FJ: TdxDBGridMaskColumn;
    GRIDTIPO: TdxDBGridMaskColumn;
    GRIDNUM_PARCELAS: TdxDBGridMaskColumn;
    GRIDTAXA: TdxDBGridMaskColumn;
    GRIDValor_Liquido: TdxDBGridColumn;
    GRIDTURNO: TdxDBGridMaskColumn;
    GRIDDATA_CONCILIACAO: TdxDBGridColumn;
    ActLancarConciliacao: TAction;
    BtnLancarConciliacao: TcxButton;
    dxDBEdit1: TdxDBEdit;
    GRIDPROCESSADO: TdxDBGridColumn;
    Image1: TImage;
    stgFrmMamutencao_Cartao: TcxPropertiesStore;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ActCancelExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dxDBEdit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure pnlClientResize(Sender: TObject);
    procedure DataSourceStateChange(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dxDBEdit2Enter(Sender: TObject);
    procedure dxDBEdit2Exit(Sender: TObject);
    procedure ActConciliarExecute(Sender: TObject);
    procedure CmbTipoPessoaEnter(Sender: TObject);
    procedure ActPeriodoExecute(Sender: TObject);
    procedure ActLancarConciliacaoExecute(Sender: TObject);
    procedure ActListagemExecute(Sender: TObject);
    procedure GRIDCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    Acumulado: Real ;
    Retorno: Integer;
    ValorDesdobrado: Real;

  end;

var
   FrmMamutencao_Cartao: TFrmMamutencao_Cartao;
implementation

uses
     Cadastros_DM,
     Listagens_DM,
     Application_DM,
     Main,
     Usuarios_DM,
     Funcoes,
     Financeiro_Dm,
     Clientes_Form,
     Administradoras_Form,
     Filtra_Cartao_Form,
     Localizar_Cliente,
     Entra_Conciliacao_Cartao_Form, Cartao_FRel;

{$R *.DFM}

procedure TFrmMamutencao_Cartao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     IF MessageDlg('Deseja Sair da Tela de Cadastros?', mtConfirmation, [mbOK, mbCancel], 0)= MrOk
     THEN BEGIN
          //
          Datasource.Dataset.Close;

          DsAdministradora.DataSet.Close;

          Frm_Localizar_Cliente.Free ;
          Frm_Localizar_Cliente := Nil ;

          FrmMain.pnlClient.Visible := True ;

          //
          Action := caFree;
          FrmMamutencao_Cartao := Nil;
     END
     ELSE BEGIN
          Action := Canone
     END;
end;

procedure TFrmMamutencao_Cartao.ActCancelExecute(Sender: TObject);
begin
     BtnFechar.OnClick(BtnFechar);
end;

procedure TFrmMamutencao_Cartao.FormCreate(Sender: TObject);
begin
  //
  ActListagem.Hint := ActListagem.Hint + LblTitulo.Caption + ' [F5]';
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, LblTitulo.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TFrmMamutencao_Cartao.dxDBEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmMamutencao_Cartao.pnlClientResize(Sender: TObject);
begin
  b2.Width := pnlClient.Width - 17;
end;

procedure TFrmMamutencao_Cartao.DataSourceStateChange(Sender: TObject);
begin
  If DataSource.State in dsEditModes Then
     Begin
       ActListagem.Enabled  := False;
       ActFechar.Enabled    := False;
       ActConciliar.Enabled := False;
       ActLancarConciliacao.Enabled := False;
     End
  Else
     Begin
       ActListagem.Enabled  := ActListagem.Tag = 1;
       ActFechar.Enabled    := True;
       ActConciliar.Enabled := True;
       ActLancarConciliacao.Enabled := ActLancarConciliacao.Tag = 1;
     End;
end;

procedure TFrmMamutencao_Cartao.ActFecharExecute(Sender: TObject);
begin
  If FrmMamutencao_Cartao.FormStyle = fsMDIChild Then
     FrmMain.opFechar.OnClick(FrmMain.opFechar)
  Else
     Close;
end;

procedure TFrmMamutencao_Cartao.FormShow(Sender: TObject);
begin
  IniciaComponentes ( Self as TForm );

  Acumulado := 0;

  Data.Date := DmApp.Data_Servidor ;

  //
  Try
    If Not(DsAdministradora.DataSet.Active)
    Then begin
         DsAdministradora.DataSet.Open ;
         DsAdministradora.DataSet.Tag := DsAdministradora.DataSet.Tag + 1 ;
    end;

    If Not(DataSource.DataSet.Active) Then
       DataSource.DataSet.Open;

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

procedure TFrmMamutencao_Cartao.dxDBEdit2Enter(Sender: TObject);
begin
     CORFUNDO ( SENDER );
end;

procedure TFrmMamutencao_Cartao.dxDBEdit2Exit(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     TIRACORFUNDO ( SENDER );
end;

procedure TFrmMamutencao_Cartao.ActConciliarExecute(Sender: TObject);
Var
   Book : TBookMark ;
begin
     IF ((DATA.TEXT <> '  /  /  ') AND (DATA.TEXT <> '  /  /    '))
     THEN BEGIN
          With DmFinanceiro do
          begin
               //Data da Conciliacao
               If Ver_CartaoConciliado.Value = 'S'
               THEN BEGIN
                    DmApp.Concilia_Cartao( Ver_CARTAOCODIGO.Value, Data.Date, 'N' ) ;
               END
               ELSE BEGIN
                    DmApp.Concilia_Cartao( Ver_CARTAOCODIGO.Value, Data.Date, 'S' ) ;
               END;

               Book := Ver_Cartao.GetBookmark  ;

               Ver_Cartao.Close ;
               Ver_Cartao.Open  ;
               
               Ver_Cartao.GotoBookmark ( Book );
               Ver_Cartao.FreeBookmark ( Book );
          End;
     END;
end;

procedure TFrmMamutencao_Cartao.CmbTipoPessoaEnter(Sender: TObject);
begin
   CORFUNDO ( SENDER );
  (Sender as TdxDBPickEdit).Text := (Sender as TdxDBPickEdit).DataSource.DataSet.FieldByName((Sender as TdxDBPickEdit).DataField).Text;
  (Sender as TdxDBPickEdit).SelectAll;
end;

procedure TFrmMamutencao_Cartao.ActPeriodoExecute(Sender: TObject);
begin
     Application.CreateForm(TFrmFiltra_Cartao, FrmFiltra_Cartao);

     FrmFiltra_Cartao.dsAdministradora.DataSet := DmFinanceiro.Administradora ;

     IF FrmFiltra_Cartao.ShowModal = MROK
     THEN BEGIN
          With DmFinanceiro do
          begin
               Ver_Cartao.Close ;

               Ver_Cartao.Sql.Clear ;

               Ver_Cartao.Params.CreateParam ( FtString, 'CNPJ', PtInput );

               Ver_Cartao.Sql.Add (' select * from FIN_MOVIMENTO_CARTAO where ( CNPJ = :CNPJ ) ');

               Ver_Cartao.ParambyName ('CNPJ').asString := DmApp.Cnpj ;

               //DATA DO LANCAMENTO
               IF (( FrmFiltra_Cartao.Ini.Text <> '  /  /  ' ) and ( FrmFiltra_Cartao.Ini.Text <> '  /  /    ' ))
               THEN BEGIN
                    Ver_Cartao.Params.CreateParam ( FtDate, 'INI', PtInput );

                    Ver_Cartao.SQL.Add (' and ( DATA >= :INI ) ');

                    Ver_Cartao.ParamByName ('INI').asDate := strtodate(FrmFiltra_Cartao.Ini.text) ;
               END;

               IF (( FrmFiltra_Cartao.Fim.Text <> '  /  /  ' ) and ( FrmFiltra_Cartao.Fim.Text <> '  /  /    ' ))
               THEN BEGIN
                    Ver_Cartao.Params.CreateParam ( FtDate, 'FIM', PtInput );

                    Ver_Cartao.SQL.Add (' and ( DATA <= :FIM ) ');

                    Ver_Cartao.ParamByName ('FIM').asDate := strtodate(FrmFiltra_Cartao.Fim.text) ;
               END;


               //DATA DO REEMBOLSO
               IF (( FrmFiltra_Cartao.IniReembolso.Text <> '  /  /  ' ) and ( FrmFiltra_Cartao.IniReembolso.Text <> '  /  /    ' ))
               THEN BEGIN
                    Ver_Cartao.Params.CreateParam ( FtDate, 'RINI', PtInput );

                    Ver_Cartao.SQL.Add (' and ( REEMBOLSO >= :RINI ) ');

                    Ver_Cartao.ParamByName ('RINI').asdate := FrmFiltra_Cartao.IniReembolso.Date ;
               END;

               IF (( FrmFiltra_Cartao.FimReembolso.Text <> '  /  /  ' ) and ( FrmFiltra_Cartao.FimReembolso.Text <> '  /  /    ' ))
               THEN BEGIN
                    Ver_Cartao.Params.CreateParam ( FtDate, 'RFIM', PtInput );

                    Ver_Cartao.SQL.Add (' and ( REEMBOLSO <= :RFIM ) ');

                    Ver_Cartao.ParamByName ('RFIM').asdate := FrmFiltra_Cartao.FimReembolso.Date ;
               END;


               //DATA DA CONCILIACAO
               IF (( FrmFiltra_Cartao.iniconciliacao.Text <> '  /  /  ' ) and ( FrmFiltra_Cartao.iniconciliacao.Text <> '  /  /    ' ))
               THEN BEGIN
                    Ver_Cartao.Params.CreateParam ( FtDate, 'CINI', PtInput );

                    Ver_Cartao.SQL.Add (' and ( DATA_CONCILIACAO >= :CINI ) ');

                    Ver_Cartao.ParamByName ('CINI').asdate := FrmFiltra_Cartao.iniconciliacao.Date ;
               END;

               IF (( FrmFiltra_Cartao.Fimconciliacao.Text <> '  /  /  ' ) and ( FrmFiltra_Cartao.Fimconciliacao.Text <> '  /  /    ' ))
               THEN BEGIN
                    Ver_Cartao.Params.CreateParam ( FtDate, 'CFIM', PtInput );

                    Ver_Cartao.SQL.Add (' and ( DATA_CONCILIACAO <= :CFIM ) ');

                    Ver_Cartao.ParamByName ('CFIM').asdate := FrmFiltra_Cartao.Fimconciliacao.Date ;
               END;


               IF ( FrmFiltra_Cartao.CmbAdministradora.Text <> '' )
               THEN BEGIN
                    Ver_Cartao.Params.CreateParam ( FtInteger, 'ADM', PtInput );

                    Ver_Cartao.SQL.Add (' and ( ADMINISTRADORA = :ADM ) ');

                    Ver_Cartao.ParamByName ('ADM').asInteger := FrmFiltra_Cartao.CmbAdministradora.LookUpKeyValue ;
               END;

               IF ( FrmFiltra_Cartao.EdDocumento.Text <> '' )
               THEN BEGIN
                    Ver_Cartao.SQL.Add (' and NUM_CARTAO Like ' + char(39) + '%' + FrmFiltra_Cartao.EdDocumento.Text+'%'+ char(39));
               END;

               Ver_Cartao.Params.CreateParam ( FtString, 'CONCILIADO', PtInput );

               Ver_Cartao.SQL.Add (' AND ( PROCESSADO = :CONCILIADO ) ');

               Ver_Cartao.ParamByName ('CONCILIADO').asString := 'N' ;

               Ver_Cartao.Prepare ;

               Ver_Cartao.Open    ;
          END;
     END;

     FrmFiltra_Cartao.free ;
     FrmFiltra_Cartao := Nil;

     GRID.SETFOCUS ;
end;

procedure TFrmMamutencao_Cartao.ActLancarConciliacaoExecute(Sender: TObject);
begin
     Application.CreateForm(TFrmConciliacaoCartao, FrmConciliacaoCartao);

     FrmConciliacaoCartao.showmodal ;

     FrmConciliacaoCartao.free      ;
     FrmConciliacaoCartao := Nil    ;

     DmFinanceiro.Ver_Cartao.Close      ;
     DmFinanceiro.Ver_Cartao.Open       ;
end;

procedure TFrmMamutencao_Cartao.ActListagemExecute(Sender: TObject);
begin
  { * * * * * }
  If FRelCartao = Nil Then
     Begin
       FRelCartao := TFRelCartao.Create(Self);
       FRelCartao.ShowModal;
     End;
end;

procedure TFrmMamutencao_Cartao.GRIDCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
Var
   Value: String ;
begin
     if ( not ASelected  ) AND ( NOT (DataSource.DataSet.STATE IN [ DSINSERT, DSEDIT ]))
     then begin
          Value := ANode.Values[GRIDPROCESSADO.Index];

          if not VarIsNull(Value)
          then begin
               if Value = 'S'
               then
                   AColor := $00ECAD84
               else
                   AColor := clWhite;
          end
          else begin
               AFont.Color := clBlack;
          end;
     end;
end;

end.
