 unit Movimento_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, dxBarDBNav, dxBar,   dxCntner, dxEditor,
  dxEdLib, dxDBELib, StdCtrls, Db, IBCustomDataSet, Buttons, dxExEdtr,
  dxDBEdtr, Grids, DBGrids, dxTL, dxDBCtrl, dxDBGrid, dxDBTLCl, dxGrClms,
   DBCtrls, cxPropertiesStore, Variants, ppDB, ppDBPipe,
  ppParameter, ppModule, raCodMod, ppCtrls, ppBands, ppClass, ppReport,
  ppStrtch, ppSubRpt, ppVar, ppPrnabl, ppCache, ppComm, ppRelatv, ppProd,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus, cxControls,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinsdxBarPainter, cxClasses, cxLabel, cxButtons,
  cxDropDownEdit, cxCalendar, cxDBEdit, cxTextEdit, cxMaskEdit,
  cxButtonEdit, cxCalc, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox;

type
  TFrmMovimento = class(TForm)
    pnlClient: TPanel;
    pnlBottom: TPanel;
    dxBarDockControl1: TdxBarDockControl;
    BarDBNavigator: TdxBarDBNavigator;
    BarManager: TdxBarManager;
    btnLocalizar: TdxBarButton;
    BtnSalvar: TdxBarButton;
    BtnCancelar: TdxBarButton;
    Actions: TActionList;
    ActIncluir: TAction;
    ActAlterar: TAction;
    ActExcluir: TAction;
    ActLocalizar: TAction;
    ActPost: TAction;
    ActCancel: TAction;
    Bevel1: TBevel;
    DataSource: TDataSource;
    BtnListagem: TdxBarButton;
    ActListagem: TAction;
    BtnFechar: TdxBarButton;
    Panel1: TPanel;
    ActFechar: TAction;
    ActLookup: TAction;
    ActPeriodo: TAction;
    DsConta: TDataSource;
    ActConciliar: TAction;
    DsTipo_Doc: TDataSource;
    Panel4: TPanel;
    RzBitBtn2: TcxButton;
    RzBitBtn3: TcxButton;
    RzBitBtn4: TcxButton;
    RzBitBtn1: TcxButton;
    stgMovtoBancario: TcxPropertiesStore;
    Panel6: TPanel;
    Panel5: TPanel;
    Label4: TcxLabel;
    Label9: TcxLabel;
    Label8: TcxLabel;
    BtnTipoDoc: TcxButton;
    Label5: TcxLabel;
    Label3: TcxLabel;
    Panel2: TPanel;
    Shape7: TShape;
    RxLabel2: TcxLabel;
    Panel3: TPanel;
    LblTitulo: TcxLabel;
    b2: TBevel;
    GRID: TdxDBGrid;
    GRIDBANCO: TdxDBGridMaskColumn;
    GRIDDATA: TdxDBGridDateColumn;
    GRIDDATA_CONCILIACAO: TdxDBGridDateColumn;
    GRIDVALOR: TdxDBGridMaskColumn;
    GRIDTIPO: TdxDBGridMaskColumn;
    GRIDHISTORICO: TdxDBGridMaskColumn;
    GRIDTIPO_LANCAMENTO: TdxDBGridMaskColumn;
    Panel9: TPanel;
    Image1: TImage;
    Panel7: TPanel;
    Label1: TcxLabel;
    LblConta: TcxLabel;
    BtnConta: TcxButton;
    Panel10: TPanel;
    btnNovo: TdxBarButton;
    btnExcluir: TdxBarButton;
    dxBarDBNavFirst1: TdxBarDBNavButton;
    dxBarDBNavPrev1: TdxBarDBNavButton;
    dxBarDBNavNext1: TdxBarDBNavButton;
    dxBarDBNavLast1: TdxBarDBNavButton;
    GRIDDOCUMENTO: TdxDBGridMaskColumn;
    GRIDCOD_DOC: TdxDBGridMaskColumn;
    EdConta: TcxButtonEdit;
    EdData: TcxDBDateEdit;
    EdValor: TcxDBCalcEdit;
    edDocto: TcxDBTextEdit;
    dxDBEdit15: TcxDBTextEdit;
    Data: TcxDateEdit;
    cmbTipo_Doc: TcxDBLookupComboBox;
    CmbTipo: TcxDBComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActExcluirExecute(Sender: TObject);
    procedure ActPostExecute(Sender: TObject);
    procedure ActCancelExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ActLocalizarExecute(Sender: TObject);
    procedure dxDBEdit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure pnlClientResize(Sender: TObject);
    procedure DataSourceStateChange(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure ActLookupExecute(Sender: TObject);
    procedure ActPeriodoExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ActListagemExecute(Sender: TObject);
    procedure ActConciliarExecute(Sender: TObject);
    procedure BtnTipoDocClick(Sender: TObject);
    procedure CmbContaEnter(Sender: TObject);
    procedure CmbContaExit(Sender: TObject);
    procedure ActAlterarExecute(Sender: TObject);
    procedure EdContaExit(Sender: TObject);
    procedure EdContaEnter(Sender: TObject);
    procedure EdContaButtonClick(Sender: TObject; AbsoluteIndex: Integer);
    procedure GRIDCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure BtnContaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMovimento: TFrmMovimento;

implementation

uses Cadastros_DM,
     Listagens_DM,
     Application_DM,
     Main,
     Usuarios_DM,
     Funcoes,
     Entra_Periodo_Form,
     Filtra_Baixa_Form,
     Localizar_Conta,
     Tipo_Documento_Form,
     Plano_DM,
     Plano_Form,
     Entra_Periodo_Banco_Form;

{$R *.DFM}

procedure TFrmMovimento.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     If MessageDlg('Deseja Sair do Cadastro?', mtConfirmation, [mbOK, mbCancel], 0) = MROK
     THEN BEGIN
       Datasource.Dataset.Close;

       dsConta.DataSet.Close;
       dsTipo_Doc.DataSet.Close;
       DMPlano.Free ;
       DMPlano := Nil ;

       FrmMain.PnlClient.Visible := True;

       //
       Action := caFree;
       FrmMovimento := Nil;
     end
     else begin
          action := canone ;
     end;
end;

procedure TFrmMovimento.ActIncluirExecute(Sender: TObject);
begin
  If DataSource.State in dsEditModes Then
     Exit;
  Try
    DataSource.DataSet.Append;
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
  CmbTipo.setfocus;
end;

procedure TFrmMovimento.ActExcluirExecute(Sender: TObject);
begin
      if (DataSource.dataset.FieldByName('TIPO_LANCAMENTO').value = 'A' ) then
      begin
        application.messagebox('Esse movimento não pode ser excluído! Possui movimento vinculado!','Aviso',mb_ok);
        exit;
      end;

      if (DataSource.dataset.FieldByName('DATA_CONCILIACAO').AsDateTime > 0 ) then
      begin
        application.messagebox('Este Movimento é conciliado não pode ser excluído!','Aviso',mb_ok);
        exit;
      end;

      If MessageBox(Handle,'Tem certeza que deseja Excluir este Movimento ?', 'Atenção !!!',MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2)=IDYES Then
        DataSource.Dataset.Delete;
end;

procedure TFrmMovimento.ActPostExecute(Sender: TObject);
begin
  Try
    if (DataSource.dataset.FieldByName('conta').isNull ) then
    begin
      application.messagebox('Defina a conta do movimento','Aviso',mb_ok);
      exit;
    end;

    if (DataSource.dataset.FieldByName('DATA').isNull ) then
    begin
      application.messagebox('Defina a data do movimento','Aviso',mb_ok);
      edData.setfocus;
      exit;
    end;

    if (DataSource.dataset.FieldByName('TIPO').asString = '' ) then
    begin
      application.messagebox('Defina o tipo do movimento','Aviso',mb_ok);
      cmbTipo.SetFocus;
      exit;
    end;

    if (DataSource.dataset.FieldByName('valor').asfloat < 0 ) then
    begin
      application.messagebox('Defina o valor do movimento','Aviso',mb_ok);
      edValor.setFocus;
      exit;
    end;

    if (DataSource.dataset.FieldByName('DOCUMENTO').asString = '' ) then
    begin
      application.messagebox('Defina o docto do movimento','Aviso',mb_ok);
      edDocto.setfocus;
      exit;
    end;

    DataSource.DataSet.Post;
    DMApp.Transaction.CommitRetaining;
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
end;

procedure TFrmMovimento.ActCancelExecute(Sender: TObject);
begin
  If DataSource.DataSet.State in dsEditModes Then
     DataSource.DataSet.Cancel
  Else
     BtnFechar.OnClick(BtnFechar);
end;

procedure TFrmMovimento.FormCreate(Sender: TObject);
begin
  //
  ActListagem.Hint := ActListagem.Hint + LblTitulo.Caption + ' [F5]';
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, LblTitulo.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TFrmMovimento.ActLocalizarExecute(Sender: TObject);
begin
  DMApp.Localizar(Datasource);
end;

procedure TFrmMovimento.dxDBEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmMovimento.pnlClientResize(Sender: TObject);
begin
  b2.Width := pnlClient.Width - 17;

end;

procedure TFrmMovimento.DataSourceStateChange(Sender: TObject);
begin
  If DataSource.State in dsEditModes Then
     Begin
       ActIncluir.Enabled   := False;
       ActAlterar.Enabled   := False;
       ActExcluir.Enabled   := False;
       ActLocalizar.Enabled := False;
       ActListagem.Enabled  := False;
       BtnSalvar.Enabled    := True;
       BtnCancelar.Enabled  := True;
       ActFechar.Enabled    := False;
       ActConciliar.Enabled := False;
       ActPeriodo.Enabled   := False;
     End
  Else
     Begin
       ActIncluir.Enabled   := ActIncluir.Tag = 1;
       ActAlterar.Enabled   := ActAlterar.Tag = 1;
       ActExcluir.Enabled   := ActExcluir.Tag = 1;
       ActLocalizar.Enabled := True;
       ActListagem.Enabled  := ActListagem.Tag = 1;
       BtnSalvar.Enabled    := False;
       BtnCancelar.Enabled  := False;
       ActFechar.Enabled    := True;
       ActConciliar.Enabled := TRUE;
       ActPeriodo.Enabled   := TRUE;
     End;
end;

procedure TFrmMovimento.ActFecharExecute(Sender: TObject);
begin
     Close;
end;

procedure TFrmMovimento.ActLookupExecute(Sender: TObject);
begin
  If FrmMovimento.ActiveControl = EdConta Then
     btnConta.OnClick(btnConta);
  If FrmMovimento.ActiveControl = cmbTipo_Doc Then
     btnTipoDoc.OnClick(btnTipoDoc);
end;

procedure TFrmMovimento.ActPeriodoExecute(Sender: TObject);
var
  sFiltro : string;
begin
  if EdConta.text <> ''  then
  begin
    Application.CreateForm(TFrmEntraPeriodo, FrmEntraPeriodo);
    FrmEntraPeriodo.LblTitulo.Caption := 'Movimento';

    IF FrmEntraPeriodo.Showmodal = MrOk THEN
    BEGIN
      With DmCadastros do
      begin
        Movimento.Close ;
        Movimento.Params.ByName ('CNPJ' ).asString  := DmApp.Cnpj;
        Movimento.Params.ByName ('conta' ).asInteger  := StrToInt(trim(EdConta.text));
        movimento.Params.ByName ('ini').asDate := FrmEntraPeriodo.Ini.date ;
        movimento.Params.ByName ('fim').asDate := FrmEntraPeriodo.Fim.date ;
        Movimento.Open;
      END;
    END;
    FrmEntraPeriodo.free;
    FrmEntraPeriodo := nil;
  END;

end;

procedure TFrmMovimento.FormShow(Sender: TObject);
begin
  IniciaComponentes ( Self as TForm );
  //
  Try
    Data.Date := DmApp.Data_Servidor ;

    With DmPlano do
    begin
      PlanoMovimento.Close ;
      PlanoMovimento.ParamByName ('CNPJ').asString := DmaPP.Cnpj ;
      PlanoMovimento.Open    ;
    end;

    EdConta.Text := DmPlano.PlanoMovimentoConta.AsString ;

    LblConta.Caption := DmPlano.PlanoMovimentoNOME.AsString ;
    With DmCadastros do
    begin
      Movimento.Close ;
      Movimento.Params.ByName ('CNPJ' ).asString  := DmApp.Cnpj             ;
      if trim(EdConta.Text) <> '' then
        Movimento.Params.ByName ('CONTA').asInteger := strtoint(EdConta.Text)
      else
        Movimento.Params.ByName ('CONTA').asInteger := 0;
      movimento.Params.ByName ('ini').asDate := strtodate('01/01/2001');
      movimento.Params.ByName ('fim').asDate := strtodate('01/01/2050');
      Movimento.Open;
    end;

    If Not(dsTipo_Doc.DataSet.Active) Then
       dsTipo_Doc.DataSet.Open;
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
  CmbTipo.SetFocus;
end;

procedure TFrmMovimento.ActListagemExecute(Sender: TObject);
Var
   Cont: Integer;
begin
   if EdConta.Text <> '' then
      Cont := Strtoint(EdConta.Text)
   else
   begin
     Application.MessageBox('Selecione uma conta','Aviso',mb_iconerror + mb_ok);
     EdConta.SetFocus ;
     Exit ;
   end;

   frmRelExtratoBancario := TfrmRelExtratoBancario.Create(Self);
   frmRelExtratoBancario.CONTA     := Cont ;
   frmRelExtratoBancario.NOMECONTA := LblConta.Caption   ;
   frmRelExtratoBancario.ShowModal;
   frmRelExtratoBancario.Free;
   frmRelExtratoBancario := Nil;
end;

procedure TFrmMovimento.ActConciliarExecute(Sender: TObject);
Var
   Book : TBookMark ;
begin
     IF ((DATA.TEXT <> '  /  /  ') AND (DATA.TEXT <> '  /  /    '))
     THEN BEGIN
          With DmCadastros do
          begin
               if Not ( Movimento.state in [ dsinsert, dsedit ] )
               then begin
                    //Data da Conciliacao
                    DmApp.Concilia_Banco(MovimentoCodigo.Value, Data.Date ) ;

                    Book := Movimento.GetBookmark  ;
                    Movimento.Refresh ;
                    Movimento.GotoBookmark ( Book );
                    Movimento.FreeBookmark ( Book );
               end;
          End;
     END
     ELSE BEGIN
          With DmCadastros do
          begin
               if Not ( Movimento.state in [ dsinsert, dsedit ]) then
               begin
                    //Data da Conciliacao
                    DmApp.DesConcilia_Banco( MovimentoCodigo.Value ) ;

                    Book := Movimento.GetBookmark  ;
                    Movimento.Refresh ;
                    Movimento.GotoBookmark ( Book );
                    Movimento.FreeBookmark ( Book );
               end;
          End;
     END;
end;

procedure TFrmMovimento.BtnTipoDocClick(Sender: TObject);
begin
  //
  If ActAlterar.Tag = 0 Then
     Exit;
  //
  If Datasource.DataSet.State = dsBrowse Then
     Datasource.DataSet.Edit;

  //


  DsTipo_Doc.DataSet.Tag := DsTipo_Doc.DataSet.Tag + 1;

  //
  { * * * * * }
  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmTipoDoctos', False);
  { * * * * * }
  //
  FrmTipoDoctos := TFrmTipoDoctos.Create(Self);

  FrmTipoDoctos.ShowModal;
  //
  Datasource.DataSet.FieldByName('COD_DOC').asString := trim(FrmMain.Codigo_Str);

  FrmTipoDoctos.Free;
  FrmTipoDoctos := Nil;

  If DMCadastros <> Nil
  then
      DMCadastros.Tag := DMCadastros.Tag - 1;

  DsTipo_Doc.DataSet.Tag := DsTipo_Doc.DataSet.Tag - 1;

  //
  cmbTipo_Doc.SetFocus;
end;

procedure TFrmMovimento.CmbContaEnter(Sender: TObject);
begin
     CORFUNDO( SENDER );
end;

procedure TFrmMovimento.CmbContaExit(Sender: TObject);
begin
     TIRACORFUNDO( SENDER );
end;

procedure TFrmMovimento.ActAlterarExecute(Sender: TObject);
begin
     If DataSource.State in dsEditModes
     Then
        Exit;

     Try
        DataSource.DataSet.Edit;
     Except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
                Exit;
           End
           Else Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
                Exit;
           End;
     End;

     CmbTipo.setfocus;
end;

procedure TFrmMovimento.EdContaExit(Sender: TObject);
begin
    TiraCorFundo (Sender);
    
    With DmCadastros do
    begin
      Movimento.Close;
      Movimento.Params.ByName ('CNPJ' ).asString  := DmApp.Cnpj             ;
      Movimento.Params.ByName ('CONTA').asInteger := strtoint(trim(EdConta.Text)) ;
      movimento.Params.ByName ('ini').asDate := strtodate('01/01/2001');
      movimento.Params.ByName ('fim').asDate := strtodate('01/01/2050');
      Movimento.Open;
    End;
end;

procedure TFrmMovimento.EdContaEnter(Sender: TObject);
begin
     CorFundo(Sender);
     DmCadastros.Movimento.Close ;
end;

procedure TFrmMovimento.EdContaButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
     Application.CreateForm(TFrm_Localizar_Conta, Frm_Localizar_Conta);
     if ( DMPlano = nil) then
       DMPlano := TDMPlano.Create(Self);

     Frm_Localizar_Conta.DSource.DataSet := DmPlano.PlanoMovimento ;

     if ( Frm_Localizar_Conta.showmodal = mrOk )
     Then Begin
          EdConta.text := IntToStr(Frm_Localizar_Conta.CampTrecho );
          LblConta.Caption := DmPlano.PlanoMovimentoNOME.value ;
     end;

     Frm_Localizar_Conta.free ;
     Frm_Localizar_Conta := Nil ;
end;

procedure TFrmMovimento.GRIDCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
Var
   Value: String ;
begin
     if ( not ASelected  ) AND ( NOT (DataSource.DataSet.STATE IN [ DSINSERT, DSEDIT ]))
     then begin
          Value := ANode.Values[GRIDTIPO.Index];

          if not VarIsNull(Value)
          then begin
               if Value = 'C'
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

procedure TFrmMovimento.BtnContaClick(Sender: TObject);
begin
  { * * * * * }
  IF Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmPlano', True)) Then
     Exit;
  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;
  { * * * * * }
  If FrmPlano = Nil Then
     Begin
       DMPlano       := TDMPlano.Create(Self);
       FrmPlano := TFrmPlano.Create(Self);


       FrmPlano.Showmodal ;
       FrmPlano.Free      ;
       FrmPlano := Nil    ;
     End;
end;

end.
