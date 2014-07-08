 unit Cheque_Manual_Form;

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
  TFrmCheque_Pre = class(TForm)
    pnlClient: TPanel;
    pnlBottom: TPanel;
    dxBarDockControl1: TdxBarDockControl;
    BarDBNavigator: TdxBarDBNavigator;
    BarManager: TdxBarManager;
    btnIncluir: TdxBarButton;
    btnExcluir: TdxBarButton;
    dxBarBDBNavFirst: TdxBarDBNavButton;
    dxBarBDBNavPrev: TdxBarDBNavButton;
    dxBarBDBNavNext: TdxBarDBNavButton;
    dxBarBDBNavLast: TdxBarDBNavButton;
    btnLocalizar: TdxBarButton;
    BtnSalvar: TdxBarButton;
    BtnCancelar: TdxBarButton;
    Actions: TActionList;
    ActIncluir: TAction;
    ActAlterar: TAction;
    ActExcluir: TAction;
    ActPost: TAction;
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
    ActLookup: TAction;
    Label8: TcxLabel;
    EdValor: TdxDBCalcEdit;
    EdData: TdxDBDateEdit;
    Label4: TcxLabel;
    Bevel2: TBevel;
    ActPeriodo: TAction;
    Label5: TcxLabel;
    Label2: TcxLabel;
    EdVencimento: TdxDBDateEdit;
    Label7: TcxLabel;
    Label1: TcxLabel;
    DsBanco: TDataSource;
    Label6: TcxLabel;
    cmbBanco: TdxDBLookupEdit;
    btnBancos: TcxButton;
    EdConta: TdxDBEdit;
    dxDBEdit1: TdxDBEdit;
    dxDBEdit4: TdxDBEdit;
    Label10: TcxLabel;
    EdAgencia: TdxDBEdit;
    CMBpessoa: TdxDBButtonEdit;
    BtnPessoa: TcxButton;
    DsPessoas: TDataSource;
    Label3: TcxLabel;
    dxDBEdit2: TdxDBEdit;
    Label9: TcxLabel;
    dxDBEdit5: TdxDBEdit;
    GRID: TdxDBGrid;
    GRIDAGENCIA: TdxDBGridMaskColumn;
    GRIDBANCO: TdxDBGridMaskColumn;
    GRIDCHEQUE: TdxDBGridMaskColumn;
    GRIDCONTA: TdxDBGridMaskColumn;
    GRIDEMISSAO: TdxDBGridDateColumn;
    GRIDHISTORICO: TdxDBGridMaskColumn;
    GRIDPESSOA_FJ: TdxDBGridMaskColumn;
    GRIDPRE_DATE: TdxDBGridDateColumn;
    GRIDVALOR: TdxDBGridMaskColumn;
    GRIDVENDA: TdxDBGridMaskColumn;
    GRIDNOME: TdxDBGridMaskColumn;
    GRIDDATA_CONCILIACAO: TdxDBGridDateColumn;
    EDNOME: TdxDBEdit;
    ActCaptura: TAction;
    Panel4: TPanel;
    BtnFaturarVenda: TcxButton;
    RzBitBtn2: TcxButton;
    BtnExtornaVenda: TcxButton;
    RzBitBtn4: TcxButton;
    GRIDPROCESSADO: TdxDBGridColumn;
    GRIDCONTA_CONC: TdxDBGridMaskColumn;
    GRIDTURNO_CONC: TdxDBGridMaskColumn;
    GRIDColumn17: TdxDBGridColumn;
    GRIDID: TdxDBGridMaskColumn;
    ckLista: TdxCheckEdit;
    stgFrmCheque_Pre: TcxPropertiesStore;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActExcluirExecute(Sender: TObject);
    procedure ActPostExecute(Sender: TObject);
    procedure ActCancelExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dxDBEdit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure pnlClientResize(Sender: TObject);
    procedure DataSourceStateChange(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnBancosClick(Sender: TObject);
    procedure ActLookupExecute(Sender: TObject);
    procedure dxDBEdit1Exit(Sender: TObject);
    procedure GRIDKeyPress(Sender: TObject; var Key: Char);
    procedure dxDBEdit2Enter(Sender: TObject);
    procedure dxDBEdit2Exit(Sender: TObject);
    procedure CMBpessoaButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure ActCapturaExecute(Sender: TObject);
    procedure ActAlterarExecute(Sender: TObject);
    procedure BtnPessoaClick(Sender: TObject);
    procedure GRIDCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure ckListaChange(Sender: TObject);
  private

    { Private declarations }
  public



    { Public declarations }
    Acumulado: Real ;
    Retorno: Integer;
    ValorDesdobrado: Real;

  end;

var
   FrmCheque_Pre: TFrmCheque_Pre;
implementation

uses Cadastros_DM,
     Listagens_DM,
     Application_DM,
     Main,
     Usuarios_DM,
     Funcoes,
     Bancos_Form,
     Financeiro_Dm,
     Localizar_Cliente,
     Captura_Cheque_Form,
     Clientes_Form,
     Entra_Conciliacao_Cheque_Form;

{$R *.DFM}

procedure TFrmCheque_Pre.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     IF MessageDlg('Deseja Sair da Tela de Cadastros?', mtConfirmation, [mbOK, mbCancel], 0)= MrOk
     THEN BEGIN
          //
          Datasource.Dataset.Close;
          DsBanco.DataSet.Close;


          Frm_Localizar_Cliente.Free ;
          Frm_Localizar_Cliente := Nil ;

          FrmMain.pnlClient.Visible := True ;

          dmApp.ZeraCaixaUsuario(owner);
          
          Action := caFree;
          FrmCheque_Pre := Nil;
     END
     ELSE BEGIN
          Action := Canone
     END;
end;

procedure TFrmCheque_Pre.ActIncluirExecute(Sender: TObject);
begin
  If DataSource.State in dsEditModes Then
     Exit;
  Try
    DataSource.DataSet.Append;
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
  cmbPessoa.setfocus;
end;

procedure TFrmCheque_Pre.ActExcluirExecute(Sender: TObject);
begin
  If MessageBox(Handle,'Tem certeza que deseja Excluir este Cheque ?',
                       'Atenção !!!',MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2)=IDYES Then
     DataSource.Dataset.Delete;
end;

procedure TFrmCheque_Pre.ActPostExecute(Sender: TObject);
begin
  Try
    DataSource.DataSet.Post;
    DMApp.Transaction.CommitRetaining;

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

procedure TFrmCheque_Pre.ActCancelExecute(Sender: TObject);
begin
  If DataSource.DataSet.State in dsEditModes Then
     DataSource.DataSet.Cancel
  Else
     BtnFechar.OnClick(BtnFechar);
end;

procedure TFrmCheque_Pre.FormCreate(Sender: TObject);
begin
  //
  ActListagem.Hint := ActListagem.Hint + LblTitulo.Caption + ' [F5]';
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, LblTitulo.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TFrmCheque_Pre.dxDBEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmCheque_Pre.pnlClientResize(Sender: TObject);
begin
  b2.Width := pnlClient.Width - 17;
end;

procedure TFrmCheque_Pre.DataSourceStateChange(Sender: TObject);
begin
  If DataSource.State in dsEditModes Then
     Begin
       ActIncluir.Enabled   := False;
       ActAlterar.Enabled   := False;
       ActExcluir.Enabled   := False;
       ActListagem.Enabled  := False;
       BtnSalvar.Enabled    := True;
       BtnCancelar.Enabled  := True;
       ActFechar.Enabled    := False;
       ActCaptura.Enabled   := False;

     End
  Else
     Begin
       ActIncluir.Enabled   := ActIncluir.Tag = 1;
       ActAlterar.Enabled   := ActAlterar.Tag = 1;
       ActExcluir.Enabled   := ActExcluir.Tag = 1;
       ActListagem.Enabled  := ActListagem.Tag = 1;
       BtnSalvar.Enabled    := False;
       BtnCancelar.Enabled  := False;
       ActFechar.Enabled    := True;
       ActCaptura.Enabled   := True;

     End;
end;

procedure TFrmCheque_Pre.ActFecharExecute(Sender: TObject);
begin
  If FrmCheque_Pre.FormStyle = fsMDIChild Then
     FrmMain.opFechar.OnClick(FrmMain.opFechar)
  Else
     Close;
end;

procedure TFrmCheque_Pre.FormShow(Sender: TObject);
begin
  IniciaComponentes ( Self as TForm );
  Acumulado := 0;
  Try
    If Not(DsBanco.DataSet.Active) Then
       DsBanco.DataSet.Open;

    If Not(DataSource.DataSet.Active) Then
      ckLista.checked := true;
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
  //
//  Datasource.AutoEdit := ActAlterar.Enabled;
  cmbPessoa.SetFocus;
end;

procedure TFrmCheque_Pre.btnBancosClick(Sender: TObject);
begin
  //
  If ActAlterar.Tag = 0 Then
     Exit;
  //
  If Datasource.DataSet.State = dsBrowse Then
     Datasource.DataSet.Edit;
  //
  { * * * * * }
  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmBancos', False);
  { * * * * * }
  //
{  If DMCadastros = Nil
  then
      DMCadastros     := TDMCadastros.Create(Self)
  else
      DMCadastros.Tag := DMCadastros.Tag + 1;}

  DsBanco.DataSet.Tag := DsBanco.DataSet.Tag + 1;

  FrmBancos := TFrmBancos.Create(Self);
  FrmBancos.ShowModal;
  //
  Datasource.DataSet.FieldByName('BANCO').asString := FrmMain.Codigo_Str;
  FrmBancos.Free;
  FrmBancos := Nil;

  DsBanco.DataSet.Tag := DsBanco.DataSet.Tag - 1;

  //
  cmbBanco.SetFocus;
end;

procedure TFrmCheque_Pre.ActLookupExecute(Sender: TObject);
begin
     If FrmCheque_Pre.ActiveControl = cmbBanco Then
        btnBancos.OnClick(btnBancos);
     If FrmCheque_Pre.ActiveControl = cmbPessoa Then
        btnPessoa.OnClick(btnPessoa);
end;

procedure TFrmCheque_Pre.dxDBEdit1Exit(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     TIRACORFUNDO ( SENDER );
     IF DATASOURCE.STATE IN [ DSINSERT, DSEDIT ]
     THEN BEGIN
          WHILE LENGTH ( DmFinanceiro.ChequeCHEQUE.VALUE ) < 6 DO
          BEGIN
               DmFinanceiro.ChequeCHEQUE.VALUE := '0' + DmFinanceiro.ChequeCHEQUE.VALUE ;
          END;
     END;
end;

procedure TFrmCheque_Pre.GRIDKeyPress(Sender: TObject; var Key: Char);
begin
     IF (( KEY = #13 ) and ( Not DataSource.DataSet.FieldByname ('BANCO').Isnull ))
     THEN BEGIN
          DataSource.DATASET.EDIT ;
          cmbBanco.SetFocus ;
     END;
end;

procedure TFrmCheque_Pre.dxDBEdit2Enter(Sender: TObject);
begin
     CORFUNDO ( SENDER );
end;

procedure TFrmCheque_Pre.dxDBEdit2Exit(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     TIRACORFUNDO ( SENDER );
end;

procedure TFrmCheque_Pre.CMBpessoaButtonClick(Sender: TObject; AbsoluteIndex: Integer);
begin
     try
        If Not ( DataSource.State in [ dsinsert, dsedit ] )
        Then begin
             DataSource.DataSet.Edit ;
        end;

        //Chama a Tela Para Localizar Cliente
        Frm_Localizar_Cliente.DSource.dataset := DmFinanceiro.SelPessoasFJ ;

        if ( Frm_Localizar_Cliente.showmodal = mrOk )
        Then Begin
             DmFinanceiro.ChequePESSOA_FJ.Value := (Frm_Localizar_Cliente.CampTrecho) ;
        end
        else begin
             If Frm_Localizar_Cliente.Cad = 'S'
             THEN
                 BtnPessoa.OnClick(BtnPessoa)
             else
                 CMBpessoa.setfocus ;
        end;

     Except
     end;

end;

procedure TFrmCheque_Pre.ActCapturaExecute(Sender: TObject);
begin
     FrmCapturaCheque := TFrmCapturaCheque.Create(Self);

     FrmCapturaCheque.ShowModal;

     FrmCapturaCheque.Free;
     FrmCapturaCheque := Nil;
end;

procedure TFrmCheque_Pre.ActAlterarExecute(Sender: TObject);
begin
  try
    with DmFinanceiro do
    begin
      ChequeVALOR.ReadOnly := DMApp.CaixaFechado(ChequeEMISSAO.AsDateTime, ChequeUSUARIO.Value, ChequeTURNO.Value, ChequeCNPJ.Value);
      if not ( DataSource.DataSet.State in [ dsinsert, dsedit ] ) then
        DataSource.DataSet.edit;
    end;
  except
    Application.HandleException(self);
  end;
end;

procedure TFrmCheque_Pre.BtnPessoaClick(Sender: TObject);
begin
     Try
        //
        If ActAlterar.Tag = 0 Then
        Exit;

        //
        If Datasource.DataSet.State = dsBrowse
        Then
            Datasource.DataSet.Edit;

        //
        { * * * * * }
        DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmClientes', False);

        { * * * * * }
       { If DMCadastros = Nil
        then
            DMCadastros := TDMCadastros.Create(Self)
        else
            DMCadastros.Tag := DMCadastros.Tag + 1;}

        //
        FrmClientes := TFrmClientes.Create(Application);

        FrmClientes.Showmodal ;
        //
        Datasource.DataSet.FieldByName('PESSOA_FJ').asInteger := FrmMain.Codigo_Int;

        If DMCadastros <> Nil
        then
            DMCadastros.Tag := DMCadastros.Tag - 1;

        //
        cmbPessoa.SetFocus;
     except
          If DMCadastros <> Nil
          then
              DMCadastros.Tag := DMCadastros.Tag - 1;
     end;
end;

procedure TFrmCheque_Pre.GRIDCustomDrawCell(Sender: TObject;
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

procedure TFrmCheque_Pre.ckListaChange(Sender: TObject);
begin
  with DmFinanceiro do
  begin
    Cheque.close;
    if (ckLista.checked) then
      Cheque.selectsql.text := ' select * from FIN_CHEQUES Where CNPJ = :CNPJ and TIPO = ''NO'''
    else
      Cheque.selectsql.text := ' select * from FIN_CHEQUES Where CNPJ = :CNPJ ';
    Cheque.Open;
  end;
end;

end.
