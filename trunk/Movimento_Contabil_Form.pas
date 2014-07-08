  unit Movimento_Contabil_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, dxBarDBNav, dxBar,   dxCntner, dxEditor,
  dxEdLib, dxDBELib, StdCtrls, Db, IBCustomDataSet, dxExEdtr, Buttons,
  dxDBEdtr, DBCtrls, ComCtrls, dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid,
     cxPropertiesStore, Variants, cxGraphics,
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
  dxSkinscxPCPainter, dxSkinsdxBarPainter, cxClasses, cxPC, cxLabel,
    Menus, cxButtons;

type
  TFrmMov_Contabil = class(TForm)
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
    ActLocalizar: TAction;
    ActPost: TAction;
    ActCancel: TAction;
    Bevel1: TBevel;
    b2: TBevel;
    LblTitulo: TcxLabel;
    DataSource: TDataSource;
    BtnFechar: TdxBarButton;
    Panel1: TPanel;
    ActFechar: TAction;
    LblRegistros: TcxLabel;
    ActDn: TAction;
    ACTUP: TAction;
    DsMovimento: TDataSource;
    PAG: TcxPageControl;
    TAB1: TcxTabSheet;
    TAB2: TcxTabSheet;
    Label1: TcxLabel;
    dxDBEdit1: TdxDBEdit;
    Label3: TcxLabel;
    dxDBEdit2: TdxDBEdit;
    dxDBEdit3: TdxDBEdit;
    EdInicial: TdxDBEdit;
    Label2: TcxLabel;
    Label4: TcxLabel;
    EdHistorico: TdxDBEdit;
    EdValor: TdxDBCalcEdit;
    Label5: TcxLabel;
    Label12: TcxLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    EdDebito: TdxDBButtonEdit;
    EdCredito: TdxDBButtonEdit;
    Label7: TcxLabel;
    Label6: TcxLabel;
    EdNascimento: TdxDBDateEdit;
    BtnOk: tcxButton;
    EdDocumento: TdxEdit;
    Label10: TcxLabel;
    DATAINICIAL: TdxDateEdit;
    Label9: TcxLabel;
    EdConta: TdxButtonEdit;
    Label8: TcxLabel;
    GRID: TdxDBGrid;
    GRIDCODIGO: TdxDBGridMaskColumn;
    GRIDDATA: TdxDBGridDateColumn;
    GRIDDOCUMENTO: TdxDBGridMaskColumn;
    GRIDVALOR: TdxDBGridMaskColumn;
    GRIDHISTORICO: TdxDBGridMaskColumn;
    GRIDTIPO: TdxDBGridMaskColumn;
    GRIDCONTA: TdxDBGridMaskColumn;
    GRIDORIGEM: TdxDBGridMaskColumn;
    GRIDPLANILHA: TdxDBGridMaskColumn;
    GRIDCONTRA_PARTIDA: TdxDBGridMaskColumn;
    GRIDConta_C: TdxDBGridLookupColumn;
    GRIDConta_D: TdxDBGridLookupColumn;
    GRIDCCODIGO_CONTABIL: TdxDBGridColumn;
    GRIDEEXCLUIR: TdxDBGridColumn;
    ActMarca: TAction;
    OpMarcar: TdxBarButton;
    ActAltera: TAction;
    Label11: TcxLabel;
    EDPLANILHA: TdxEdit;
    stgFrmMov_Contabil: TcxPropertiesStore;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActExcluirExecute(Sender: TObject);
    procedure ActPostExecute(Sender: TObject);
    procedure ActCancelExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ActLocalizarExecute(Sender: TObject);
    procedure dxDBEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure pnlClientResize(Sender: TObject);
    procedure DataSourceStateChange(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure DataSourceDataChange(Sender: TObject; Field: TField);
    procedure EdCreditoButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure EdDebitoButtonClick(Sender: TObject; AbsoluteIndex: Integer);
    procedure PAGChange(Sender: TObject);
    procedure ActDnExecute(Sender: TObject);
    procedure ACTUPExecute(Sender: TObject);
    procedure BtnOkClick(Sender: TObject);
    procedure EdContaButtonClick(Sender: TObject; AbsoluteIndex: Integer);
    procedure ActMarcaExecute(Sender: TObject);
    procedure GRIDCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure dxDBEdit1Enter(Sender: TObject);
    procedure dxDBEdit1Exit(Sender: TObject);
    procedure ActAlteraExecute(Sender: TObject);
    procedure EdContaEnter(Sender: TObject);
    procedure EdContaExit(Sender: TObject);
    procedure GRIDKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    Retorno: Integer;
  end;

var
  FrmMov_Contabil: TFrmMov_Contabil;

implementation

uses
     Cadastros_DM,
     Listagens_DM,
     Application_DM,
     Main,
     Usuarios_DM,
     Funcoes,
     Plano_DM,
     Localizar_Conta, Ctb_Altera_Movimentos_Form;



{$R *.DFM}

procedure TFrmMov_Contabil.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     IF MessageDlg('Deseja Sair do Cadastro?', mtConfirmation, [mbOK, mbCancel], 0) = MROK
     THEN BEGIN
          //
          Datasource.Dataset.Close;
          //
{          DMCadastros.Free;
          DMCadastros := Nil;}

          DMPlano.Free;
          DMPlano := Nil;

          FrmMain.PnlClient.Visible := True;

          Action := caFree;
          FrmMov_Contabil := Nil;
     END
     ELSE
         ACTION := CANONE ;
end;

procedure TFrmMov_Contabil.ActIncluirExecute(Sender: TObject);
begin
     IF PAG.ActivePageIndex = 1
     THEN
         Pag.ActivePageIndex := 0;

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
  EdInicial.SetFocus;
end;

procedure TFrmMov_Contabil.ActExcluirExecute(Sender: TObject);
begin
     TRY
     IF PAG.ACTIVEPAGEINDEX = 0
     THEN BEGIN
          If MessageBox(Handle,'Tem certeza que deseja Excluir este Movimento ?',
                       'Atenção !!!',MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2)=IDYES Then
          DataSource.Dataset.Delete;
     END
     ELSE BEGIN
          If MessageBox(Handle,'Tem certeza que deseja Excluir este(s) Movimento(s) ?',
                       'Atenção !!!',MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2)=IDYES Then

          DMApp.Exclui_Movto_Contabil ( DmaPP.Cnpj );

          DsMovimento.DataSet.Close ;
          DsMovimento.DataSet.Open  ;
     END;
     EXCEPT
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
                Exit;
           End
           Else Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
                Exit;
           End;
     END;
end;

procedure TFrmMov_Contabil.ActPostExecute(Sender: TObject);
begin
     IF PAG.ActivePageIndex = 1
     THEN
         Pag.ActivePageIndex := 0;
  Try
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

procedure TFrmMov_Contabil.ActCancelExecute(Sender: TObject);
begin
     IF PAG.ActivePageIndex = 1
     THEN
         Pag.ActivePageIndex := 0;

  If DataSource.DataSet.State in dsEditModes Then
     DataSource.DataSet.Cancel
  Else
     BtnFechar.OnClick(BtnFechar);
end;

procedure TFrmMov_Contabil.FormShow(Sender: TObject);
begin
  IniciaComponentes ( Self as TForm );
  //
  Try
     With DmCadastros do
     begin
          Movimento_Contabil.Close ;
          Movimento_Contabil.SelectSQL.Clear ;
          Movimento_Contabil.SelectSQL.Add (' Select * From Ctb_Movimento_Contabil   ');
          Movimento_Contabil.SelectSQL.Add (' Where Cnpj = :Cnpj                     ');
          Movimento_Contabil.SelectSQL.Add (' order by ANO, MES, DATA, DOCUMENTO     ');
          Movimento_Contabil.Prepare ;
          Movimento_Contabil.Open ;
     end;

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
  //
  Datasource.AutoEdit := ActAlterar.Enabled;

  EdConta.SetFocus;
end;

procedure TFrmMov_Contabil.FormCreate(Sender: TObject);
begin
     PAG.ACTIVEPAGEINDEX := 1;
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, LblTitulo.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TFrmMov_Contabil.ActLocalizarExecute(Sender: TObject);
begin
  DMApp.Localizar(Datasource);
end;

procedure TFrmMov_Contabil.dxDBEdit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmMov_Contabil.pnlClientResize(Sender: TObject);
begin
  b2.Width := pnlClient.Width - 17;
  LblRegistros.Left := pnlClient.Width - 11 - LblRegistros.Width;
end;

procedure TFrmMov_Contabil.DataSourceStateChange(Sender: TObject);
begin
  If DataSource.State in dsEditModes Then
     Begin
       ActIncluir.Enabled   := False;
       ActAlterar.Enabled   := False;
       ActExcluir.Enabled   := False;
       ActLocalizar.Enabled := False;
       BtnSalvar.Enabled    := True;
       BtnCancelar.Enabled  := True;
       ActFechar.Enabled    := False;
     End
  Else
     Begin
       ActIncluir.Enabled   := ActIncluir.Tag = 1;
       ActAlterar.Enabled   := ActAlterar.Tag = 1;
       ActExcluir.Enabled   := ActExcluir.Tag = 1;
       ActLocalizar.Enabled := True;
       BtnSalvar.Enabled    := False;
       BtnCancelar.Enabled  := False;
       ActFechar.Enabled    := True;
     End;
end;

procedure TFrmMov_Contabil.ActFecharExecute(Sender: TObject);
begin
  If FrmMov_Contabil.FormStyle = fsMDIChild Then
     FrmMain.opFechar.OnClick(FrmMain.opFechar)
  Else
     Close;
end;

procedure TFrmMov_Contabil.DataSourceDataChange(Sender: TObject; Field: TField);
begin
  LblRegistros.Caption := IntToStr(Datasource.DataSet.Recno) + '/' + IntToStr(Datasource.Dataset.RecordCount);
end;

procedure TFrmMov_Contabil.EdCreditoButtonClick(Sender: TObject; AbsoluteIndex: Integer);
begin
     try
        IF FrmMov_Contabil.DataSOURCE.State in [ dsinsert, dsedit ]
        THEN BEGIN
             Application.CreateForm(TFrm_Localizar_Conta, Frm_Localizar_Conta);

             if ( Frm_Localizar_Conta.showmodal = mrOk )
             Then Begin
                  DmCadastros.MOVIMENTO_CONTABILCONTA.VALUE := Frm_Localizar_Conta.CampTrecho ;
             end;
             DMPlano.Plano.Close;
             Frm_Localizar_Conta.free ;
             Frm_Localizar_Conta := Nil ;
        END;
  Except
  end;
end;

procedure TFrmMov_Contabil.EdDebitoButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
     try
        IF FrmMov_Contabil.DataSOURCE.State in [ dsinsert, dsedit ]
        THEN BEGIN
             Application.CreateForm(TFrm_Localizar_Conta, Frm_Localizar_Conta);

             if ( Frm_Localizar_Conta.showmodal = mrOk )
             Then Begin
                  DmCadastros.MOVIMENTO_CONTABILCONTRA_PARTIDA.VALUE := Frm_Localizar_Conta.CampTrecho ;
             end;
             DMPlano.Plano.Close;
             Frm_Localizar_Conta.free ;
             Frm_Localizar_Conta := Nil ;
        END;
  Except
  end;
end;

procedure TFrmMov_Contabil.PAGChange(Sender: TObject);
begin
     IF PAG.ActivePageIndex = 1
     THEN BEGIN
          //DEVERIA CARREGAR OS LANCAMENTOS
          IF DATASOURCE.State IN [ DSINSERT, DSEDIT ]
          THEN BEGIN
               MessageDlg('Salve as Alterações!',MtError,[MbOk],0);
               Abort;
               Pag.ActivePageIndex := 0;
          END;
     END
     ELSE BEGIN
          DmPlano.Movimento.Close ;
     END;
end;

procedure TFrmMov_Contabil.ActDnExecute(Sender: TObject);
begin
     IF PAG.ActivePageIndex = 0
     THEN
         PAG.ActivePageIndex := 1
     ELSE
         PAG.ActivePageIndex := 0 ;
end;

procedure TFrmMov_Contabil.ACTUPExecute(Sender: TObject);
begin
     IF PAG.ActivePageIndex = 0
     THEN
         PAG.ActivePageIndex := 1
     ELSE
         PAG.ActivePageIndex := 0 ;
end;

procedure TFrmMov_Contabil.BtnOkClick(Sender: TObject);
Var
   Cont : Integer;
begin
     With DmPlano do
     begin
          Cont := 0;

          Movimento.Close ;
          Movimento.SQL.Clear ;
          Movimento.SQL.Add (' Select * From Ver_Movimento_Contabil ( :CNPJ ) ');

          If trim(EdConta.Text) <> ''
          then begin
               Movimento.Params.CreateParam (FTInteger, 'CONTA', PtInput );

               Movimento.SQL.Add (' Where Conta = :CONTA ');

               Movimento.ParamByName ('CONTA').AsInteger := StrToInt(trim(EdConta.Text));

               Cont := 1 ;
          end;

          If (( DATAINICIAL.text <> '  /  /  ' )and(DATAINICIAL.text <> '  /  /    ' ))
          then begin
               If Cont > 0
               then begin
                    Movimento.Params.CreateParam (FTDate, 'DATA', PtInput );

                    Movimento.SQL.Add (' And DATA >= :DATA ');

                    Movimento.ParamByName ('DATA').AsDate := DATAINICIAL.DATE ;

                    Cont := Cont + 1 ;
               end
               else begin
                    Movimento.Params.CreateParam (FTDate, 'DATA', PtInput );

                    Movimento.SQL.Add (' Where DATA >= :DATA ');

                    Movimento.ParamByName ('DATA').AsDate := DATAINICIAL.DATE ;

                    Cont := Cont + 1 ;
               end;
          end;

          If EdDocumento.Text <> ''
          then begin
               If Cont > 0
               then begin
                    Movimento.Params.CreateParam (FTString, 'DOC', PtInput );

                    Movimento.SQL.Add (' And DOCUMENTO >= :DOC ');

                    Movimento.ParamByName ('DOC').AsString := EdDocumento.Text ;

                    Cont := Cont + 1 ;
               end
               else begin
                    Movimento.Params.CreateParam (FTString, 'DOC', PtInput );

                    Movimento.SQL.Add (' Where DOCUMENTO >= :DOC ');

                    Movimento.ParamByName ('DOC').AsString := EdDocumento.Text ;

                    Cont := Cont + 1 ;
               end;
          end;

          If Trim(EdPlanilha.Text) <> ''
          then begin
               If Cont > 0
               then begin
                    Movimento.Params.CreateParam (FTInteger, 'PLN', PtInput );

                    Movimento.SQL.Add (' And PLANILHA = :PLN ');

                    Movimento.ParamByName ('PLN').AsInteger := Strtoint(EdPlanilha.Text) ;

                    Cont := Cont + 1 ;
               end
               else begin
                    Movimento.Params.CreateParam (FTInteger, 'PLN', PtInput );

                    Movimento.SQL.Add (' Where PLANILHA = :PLN ');

                    Movimento.ParamByName ('PLN').AsInteger := Strtoint(EdPlanilha.Text) ;

                    Cont := Cont + 1 ;
               end;
          end;

          Movimento.Prepare ;
          Movimento.Open ;
     end;
end;

procedure TFrmMov_Contabil.EdContaButtonClick(Sender: TObject; AbsoluteIndex: Integer);
begin
     try
        Application.CreateForm(TFrm_Localizar_Conta, Frm_Localizar_Conta);

        if ( Frm_Localizar_Conta.showmodal = mrOk )
        Then Begin
             EdConta.Text := inttostr(Frm_Localizar_Conta.CampTrecho) ;
        end;

        DMPlano.Plano.Close;

        Frm_Localizar_Conta.free ;
  Except
  end;
end;

procedure TFrmMov_Contabil.ActMarcaExecute(Sender: TObject);
var
   Book: Tbookmark ;
begin
     Book := DmPlano.Movimento.GetBookmark ;
     DMApp.Marca_Movto_Contabil ( DmaPP.Cnpj, DmPlano.Movimentocodigo.value, DmPlano.Movimentoexcluir.value );

     DsMovimento.DataSet.Close ;
     DsMovimento.DataSet.Open  ;

     DmPlano.Movimento.GotoBookmark ( Book );
     DmPlano.Movimento.FreeBookmark ( Book );
end;

procedure TFrmMov_Contabil.GRIDCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
Var
   Value: String ;
begin
     if ( not ASelected  )
     then begin

          Value := ANode.Values[GRIDEEXCLUIR.Index];

          if not VarIsNull(Value)
          then begin
               if Value = 'S'
               then
                   AColor := CLRED
               else Begin
                    if ( NOT (DataSource.DataSet.STATE IN [ DSINSERT, DSEDIT ]))
                    then begin
                         Value := ANode.Values[GRIDTIPO.Index];

                         if not VarIsNull(Value)
                         then begin
                              if Value = 'C'
                              then
                                  AColor := $00ECAD84
                              else
                                  AColor := clWhite;
                         end;
                    end;
               end;
          end
          else begin
               if ( NOT (DataSource.DataSet.STATE IN [ DSINSERT, DSEDIT ]))
               then begin
                    Value := ANode.Values[GRIDTIPO.Index];

                    if not VarIsNull(Value)
                    then begin
                         if Value = 'C'
                         then
                             AColor := $00ECAD84
                         else
                             AColor := clWhite;
                    end;
               end
               else
                   AFont.Color := clBlack;
          end;
     end;
end;

procedure TFrmMov_Contabil.dxDBEdit1Enter(Sender: TObject);
begin
     CORFUNDO ( SENDER );
end;

procedure TFrmMov_Contabil.dxDBEdit1Exit(Sender: TObject);
begin
     TIRACORFUNDO ( SENDER );
end;

procedure TFrmMov_Contabil.ActAlteraExecute(Sender: TObject);
var
   Book: TBookMark ;
begin
     IF DmPlano.MovimentoPLANILHA.Value > 0
     THEN BEGIN
          Book := DmPlano.Movimento.GetBookmark ;

          //ALTERANDO A PLANILHA
          FrmCtb_Altera_Movtos := TFrmCtb_Altera_Movtos.Create(Self);

          FrmCtb_Altera_Movtos.Planilha := DmPlano.MovimentoPLANILHA.Value ;

          FrmCtb_Altera_Movtos.ShowModal ;

          //
          FrmCtb_Altera_Movtos.Free;
          FrmCtb_Altera_Movtos := Nil;

          DmPlano.Movimento.close ;
          DmPlano.Movimento.open  ;

          DmPlano.Movimento.GotoBookmark ( Book );

          DmPlano.Movimento.FreeBookmark ( Book );
     END;
end;

procedure TFrmMov_Contabil.EdContaEnter(Sender: TObject);
begin
     CORFUNDO ( SENDER );
end;

procedure TFrmMov_Contabil.EdContaExit(Sender: TObject);
begin
     TIRACORFUNDO ( SENDER );
end;

procedure TFrmMov_Contabil.GRIDKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     If Key = 13
     then begin
          ActAltera.Execute  ;
     end;
end;

end.
