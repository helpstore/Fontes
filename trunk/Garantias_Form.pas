unit Garantias_Form;

interface

uses
  Windows, Messages, SysUtils,  Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, dxBarDBNav, dxBar, dxCntner, dxEditor,
  dxEdLib, dxDBELib, StdCtrls, Db, IBCustomDataSet, dxDBEdtr, dxExEdtr,
  Buttons,     dxTL, dxDBCtrl, dxDBGrid,
  dxDBTLCl, dxGrClms,  Grids, DBGrids, IBQuery, RDprint, Mask,
   DBCtrls, cxGraphics, cxControls, cxLookAndFeels,
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
  TFrmGarantias = class(TForm)
    pnlClient: TPanel;
    pnlBottom: TPanel;
    dxBarDockControl1: TdxBarDockControl;
    Navigator: TdxBarDBNavigator;
    BarMgr: TdxBarManager;
    btnIncluir: TdxBarButton;
    btnExcluir: TdxBarButton;
    dxBarBDBNavFirst: TdxBarDBNavButton;
    dxBarBDBNavPrev: TdxBarDBNavButton;
    dxBarBDBNavNext: TdxBarDBNavButton;
    dxBarBDBNavLast: TdxBarDBNavButton;
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
    ActListagem: TAction;
    BtnFechar: TdxBarButton;
    Panel1: TPanel;
    ActFechar: TAction;
    dsParametros: TDataSource;
    dsPessoasFJ: TDataSource;
    DataSource: TDataSource;
    actLookup: TAction;
    ActNextPage: TAction;
    ActPreviousPage: TAction;
    btnAlterar: TdxBarButton;
    DsVendedores: TDataSource;
    DsFormaPgto: TDataSource;
    DsItens: TDataSource;
    ActLocalizarCliente: TAction;
    DsUnidades: TDataSource;
    ActLocalizarVendedores: TAction;
    Panel2: TPanel;
    LblTitulo: TcxLabel;
    dxBarButton1: TdxBarButton;
    PC: TcxPageControl;
    TAB1: TcxTabSheet;
    Panel3: TPanel;
    Label25: TcxLabel;
    Label27: TcxLabel;
    Label6: TcxLabel;
    Label9: TcxLabel;
    Label10: TcxLabel;
    Label12: TcxLabel;
    Label13: TcxLabel;
    dxDBEdit5: TdxDBEdit;
    dxDBEdit8: TdxDBEdit;
    EdMargem: TdxDBCalcEdit;
    dxDBEdit1: TdxDBEdit;
    dxDBEdit4: TdxDBEdit;
    dxDBCalcEdit1: TdxDBCalcEdit;
    dxDBEdit7: TdxDBEdit;
    GridItens: TdxDBGrid;
    GridItensPRODUTO: TdxDBGridMaskColumn;
    GridItensNome_Produto: TdxDBGridLookupColumn;
    GridItensQUANTIDADE: TdxDBGridMaskColumn;
    GridItensPRC_UNITARIO: TdxDBGridMaskColumn;
    GridItensTotal: TdxDBGridColumn;
    GridItensColumn6: TdxDBGridColumn;
    dxDBEdit2: TdxDBEdit;
    Label7: TcxLabel;
    EdValidade: TdxDBDateEdit;
    Label4: TcxLabel;
    Label5: TcxLabel;
    Label2: TcxLabel;
    Label1: TcxLabel;
    EdDocumento: TdxDBEdit;
    cbFrete: TdxDBCheckEdit;
    Label3: TcxLabel;
    EdDataNota: TdxDBDateEdit;
    Label11: TcxLabel;
    dxDBEdit6: TdxDBEdit;
    BtnPessoa: TcxButton;
    BtnVendedor: TcxButton;
    dxDBEdit9: TdxDBEdit;
    dxDBEdit3: TdxDBEdit;
    EdPessoa: TdxDBEdit;
    EdVendedor: TdxDBEdit;
    TAB2: TcxTabSheet;
    BtnForma: TcxButton;
    Label14: TcxLabel;
    EdForma: TdxDBEdit;
    dxDBEdit10: TdxDBEdit;
    Label17: TcxLabel;
    EdDesconto: TdxDBCalcEdit;
    EDENTRADA: TdxDBCalcEdit;
    Label34: TcxLabel;
    Label29: TcxLabel;
    cmbTipoDocto: TdxDBLookupEdit;
    Label35: TcxLabel;
    CmbLocal: TdxDBLookupEdit;
    GRIDFATURAMENTO: TDBGrid;
    Label30: TcxLabel;
    Label31: TcxLabel;
    DBCoolText2: TDBText;
    Shape8: TShape;
    DBCoolText3: TDBText;
    Shape9: TShape;
    DBCoolText4: TDBText;
    Shape10: TShape;
    Label33: TcxLabel;
    Label32: TcxLabel;
    DsParcelas: TDataSource;
    ActLocalizarForma: TAction;
    DsPlano: TDataSource;
    dsTipoDoctos: TDataSource;
    Panel4: TPanel;
    RzBitBtn1: TcxButton;
    dxDBCheckEdit1: TdxDBCheckEdit;
    RzBitBtn2: TcxButton;
    Panel5: TPanel;
    RxLabel2: TcxLabel;
    ActEnviarCaixa: TAction;
    Label15: TcxLabel;
    dxDBCalcEdit2: TdxDBCalcEdit;
    Panel6: TPanel;
    Label8: TcxLabel;
    Label16: TcxLabel;
    Label18: TcxLabel;
    Label19: TcxLabel;
    Label20: TcxLabel;
    Label21: TcxLabel;
    Label22: TcxLabel;
    dxDBEdit11: TdxDBEdit;
    dxDBEdit12: TdxDBEdit;
    dxDBCalcEdit3: TdxDBCalcEdit;
    dxDBEdit13: TdxDBEdit;
    dxDBEdit14: TdxDBEdit;
    dxDBCalcEdit4: TdxDBCalcEdit;
    dxDBEdit15: TdxDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActExcluirExecute(Sender: TObject);
    procedure ActPostExecute(Sender: TObject);
    procedure ActCancelExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dxDBEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DataSourceStateChange(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure CmbTipoPessoaEnter(Sender: TObject);
    procedure actLookupExecute(Sender: TObject);
    procedure btnFiltrarClick(Sender: TObject);
    procedure ActAlterarExecute(Sender: TObject);
    procedure GridItensKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormActivate(Sender: TObject);
    procedure BtnPessoaClick(Sender: TObject);
    procedure BtnVendedorClick(Sender: TObject);
    procedure EdPessoaExit(Sender: TObject);
    procedure BtnFormaClick(Sender: TObject);
    procedure ActLocalizarClienteExecute(Sender: TObject);
    procedure DataSourceUpdateData(Sender: TObject);
    procedure ActListagemExecute(Sender: TObject);
    procedure EdVendedorExit(Sender: TObject);
    procedure ActLocalizarVendedoresExecute(Sender: TObject);
    procedure dxDBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure EdPessoaEnter(Sender: TObject);
    procedure cmbvendedorExit(Sender: TObject);
    procedure GridItensEnter(Sender: TObject);
    procedure EdVendedorEnter(Sender: TObject);
    procedure CmbFormaPgtoExit(Sender: TObject);
    procedure dxDBEdit2Exit(Sender: TObject);
    procedure EdMargemEnter(Sender: TObject);
    procedure EdMargemExit(Sender: TObject);
    procedure ActNextPageExecute(Sender: TObject);
    procedure ActPreviousPageExecute(Sender: TObject);
    procedure TAB2Enter(Sender: TObject);
    procedure EdFormaExit(Sender: TObject);
    procedure EDENTRADAExit(Sender: TObject);
    procedure ActLocalizarFormaExecute(Sender: TObject);
    procedure GRIDFATURAMENTOEnter(Sender: TObject);
    procedure ActEnviarCaixaExecute(Sender: TObject);
  private
    { Private declarations }
    Procedure Calcular_Itens;
    procedure HabilitaFaturamento ( Codigo: Integer );

  public
    LocCli, LocVen,LocForma :Boolean ;
    VENDAPARCELADA: Boolean ;
    Procedure Calcular_Parcelas;

    { Public declarations }
  end;

var
  FrmGarantias: TFrmGarantias;
  Sair : Boolean ;

implementation

uses 
     Listagens_DM,
     Application_DM,
     Main,
     Usuarios_DM,
     Funcoes,
     Cadastros_DM,
     Vendedores_Form,
     Clientes_Form,
     FormasPagto_Form,
     Localizar_Cliente,
     Localizar_Vendedor,
     Tipo_Impressora_Form,
     GarantiasItens_Form,
     Localizar_Forma,
     EnviagarantiaCaixa_FRel,
     SelGarantias_Form, Dados_Desconto_Form, Servicos_DM;

  {$R *.DFM}

procedure TFrmGarantias.Calcular_Itens;
Var bReg: Pointer;
    tDescontoE, tProdutosE: Extended;
    tDescontoS, tProdutosS: Extended;
    Estado: String;
begin

  If DataSource.DataSet.State in [ dsinsert, dsedit ]
  then begin
       Estado := 'E' ;
  end
  ELSE
      Estado := 'B' ;


  //
  If dsItens.DataSet.RecordCount > 0 Then
     bReg := dsItens.DataSet.GetBookmark;

  //
  dsItens.DataSet.DisableControls;
  //
  tProdutosE := 0;
  tDescontoE := 0;

  tProdutosS := 0;
  tDescontoS := 0;

  //
  dsItens.DataSet.First;
  //
  While Not dsItens.DataSet.Eof Do
  Begin
       If dsItens.DataSet.FieldByName('TIPO').AsString = 'E'
       THEN BEGIN
            //
            tProdutosE  := tProdutosE  + dsItens.DataSet.FieldByName('TOTAL'   ).asFloat;
            tDescontoE  := tDescontoE  + dsItens.DataSet.FieldByName('DESCONTO').asFloat;
       END
       ELSE BEGIN
            //
            tProdutosS  := tProdutosS  + dsItens.DataSet.FieldByName('TOTAL'   ).asFloat;
            tDescontoS  := tDescontoS  + dsItens.DataSet.FieldByName('DESCONTO').asFloat;
       END;
       //
       dsItens.DataSet.Next;
  End;

  //Valores dos Itens
  DataSource.DataSet.Edit ;

  DataSource.DataSet.FieldByName('TOTAL' ).asFloat   := tProdutosE;
  DataSource.DataSet.FieldByName('TOTAL_2' ).asFloat  := tProdutosS;

  DataSource.DataSet.Post ;

  IF ESTADO = 'E'
  THEN
      DataSource.DataSet.Edit ;

  //
  If dsItens.DataSet.RecordCount > 0
  Then Begin
       dsItens.DataSet.GotoBookmark(bReg);
       dsItens.DataSet.FreeBookmark(bReg);
  End;
  //
  dsItens.DataSet.EnableControls;
end;

Procedure TFrmGarantias.Calcular_Parcelas;
Var bReg: Pointer;
    eTotal: Extended;
begin
  //
  If DsParcelas.DataSet.RecordCount > 0 Then
     bReg := DsParcelas.DataSet.GetBookmark;
  //
  DsParcelas.DataSet.DisableControls;
  //
  eTotal := 0;
  //
  DsParcelas.DataSet.First;
  //
  While Not DsParcelas.DataSet.Eof Do
        Begin
          //
          eTotal := eTotal + DsParcelas.DataSet.FieldByName('VALOR').asFloat;
          //
          DsParcelas.DataSet.Next;
        End;
  //
  DataSource.DataSet.Edit ;
  DataSource.DataSet.FieldByName('VLR_PARC_LC').asFloat := eTotal;
  DataSource.DataSet.Post ;

  //
  If DsParcelas.DataSet.RecordCount > 0 Then
     Begin
       DsParcelas.DataSet.GotoBookmark(bReg);
       DsParcelas.DataSet.FreeBookmark(bReg);
     End;
  //
  DsParcelas.DataSet.EnableControls;
End;

procedure TFrmGarantias.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     If Sair
     then begin
          //
          If dsItens.DataSet.Tag = 0 Then
          dsItens.Dataset.Close;
          If DataSource.DataSet.Tag = 0 Then
          DataSource.DataSet.Close;
          If dsParametros.DataSet.Tag = 0 Then
          dsParametros.DataSet.Close;
          If DsFormaPgto.DataSet.Tag = 0 Then
          DsFormaPgto.DataSet.Close;
          If DsVendedores.DataSet.Tag = 0 Then
          DsVendedores.DataSet.Close;
          If DsUnidades.DataSet.Tag = 0 Then
          DsUnidades.DataSet.Close;

          If DsPlano.DataSet.Tag = 0 Then
          DsPlano.DataSet.Close;
          If dsTipoDoctos.DataSet.Tag = 0 Then
          dsTipoDoctos.DataSet.Close;

          //
          Action := caFree;
          FrmGarantias := Nil;
     end
     else begin
          If MessageDlg('Sair da Tela de Garantias?', mtConfirmation, [mbOk, mbCancel], 0)= MrOk
          then begin
               //
               If dsItens.DataSet.Tag = 0 Then
               dsItens.Dataset.Close;
               If DataSource.DataSet.Tag = 0 Then
               DataSource.DataSet.Close;
               If dsParametros.DataSet.Tag = 0 Then
               dsParametros.DataSet.Close;
               If DsFormaPgto.DataSet.Tag = 0 Then
               DsFormaPgto.DataSet.Close;
               If DsVendedores.DataSet.Tag = 0 Then
               DsVendedores.DataSet.Close;
               If DsUnidades.DataSet.Tag = 0 Then
               DsUnidades.DataSet.Close;

               If DsPlano.DataSet.Tag = 0 Then
               DsPlano.DataSet.Close;
               If dsTipoDoctos.DataSet.Tag = 0 Then
               dsTipoDoctos.DataSet.Close;

               //
               Action := caFree;
               FrmGarantias := Nil;
          end
          else begin
               Action := CaNone ;
          end;
     end;
end;

procedure TFrmGarantias.ActIncluirExecute(Sender: TObject);
begin
  try
     //
     If Navigator.DataSource.State in dsEditModes Then
        Exit;
     //
     If FrmGarantias.ActiveControl = GridItens
     Then Begin
          //
          FrmGarantiasItens := TFrmGarantiasItens.Create(Self);
          FrmGarantiasItens.DataSource.DataSet.Append ;
          FrmGarantiasItens.ShowModal;
          //
          Calcular_Itens;
     End
     else begin
          Navigator.DataSource.DataSet.Append;
          EdPessoa.SetFocus ;
     end;
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

procedure TFrmGarantias.ActExcluirExecute(Sender: TObject);
Var
   msg: String;
begin
     If FrmGarantias.ActiveControl = GridItens
     Then Begin
          msg := 'e Item ';

          //
          If MessageBox(Handle,PChar('Tem certeza que deseja Excluir est' + msg + ' ?'),
                       'Atenção !!!',MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2)=IDYES
          Then Begin
               DsItens.Dataset.Delete;

               //Foi Apagado Um Item
               Calcular_Itens ;

               DMApp.Transaction.CommitRetaining;
          End;
     end
     else begin
          msg := 'e Orçamento ';
          //
          If MessageBox(Handle,PChar('Tem certeza que deseja Excluir est' + msg + ' ?'),
                       'Atenção !!!',MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2)=IDYES
          Then Begin
               DataSource.Dataset.Delete;

               DMApp.Transaction.CommitRetaining;
          End;
     end;
end;

procedure TFrmGarantias.ActPostExecute(Sender: TObject);
begin
  //
  Try
    //
     If ( FrmGarantias.ActiveControl <> GridItens ) and ( DataSource.State in [ DsInsert, DsEdit ] )
     Then Begin
         //
         DMSERVICOS.Garantias_Itens.DataSource := Nil;
         //
         DataSource.DataSet.Post;
         //
         DMSERVICOS.Garantias_Itens.DataSource  := DMSERVICOS.dsGarantias;
    End ;

    //
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

procedure TFrmGarantias.ActCancelExecute(Sender: TObject);
begin
  If DataSource.DataSet.State in dsEditModes
  Then Begin
       DataSource.DataSet.Cancel;
       (dsItens.DataSet as TIBDataSet).CancelUpdates;
  End
  Else Begin
       If DsParcelas.DataSet.State in dsEditModes
       Then Begin
            DsParcelas.DataSet.Cancel;
            (dsItens.DataSet as TIBDataSet).CancelUpdates;
       End
       Else Begin
            BtnFechar.OnClick(BtnFechar);
       end;
  End;
end;

procedure TFrmGarantias.FormShow(Sender: TObject);
begin
  IniciaComponentes ( Self as TForm );

  Try
    If Not(dsParametros.DataSet.Active) Then
       dsParametros.DataSet.Open;
    If Not(dsPessoasFJ.DataSet.Active) Then
       dsPessoasFJ.DataSet.Open;
    If Not(DsFormaPgto.DataSet.Active) Then
       DsFormaPgto.DataSet.Open;
    If Not(DsVendedores.DataSet.Active) Then
       DsVendedores.DataSet.Open;
    If Not(DsUnidades.DataSet.Active) Then
       DsUnidades.DataSet.Open;

    If Not(DsPlano.DataSet.Active) Then
       DsPlano.DataSet.Open;
    If Not(dsTipoDoctos.DataSet.Active) Then
       dsTipoDoctos.DataSet.Open;

    If Not(DataSource.DataSet.Active) Then
       DataSource.DataSet.Open;
    If Not(dsItens.DataSet.Active) Then
       dsItens.DataSet.Open;

    //Habilita os Componentes de Acordo com a forma de Pagto
    HabilitaFaturamento ( DMSERVICOS.GarantiasFORMA_PGTO.Value );
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

  If ( Datasource.DataSet.State in [dsbrowse] )
  then
      Datasource.DataSet.Append ;

  Datasource.AutoEdit := ActAlterar.Enabled;

  EdPessoa.SetFocus;
end;

procedure TFrmGarantias.HabilitaFaturamento ( Codigo: Integer );
begin
     With DMSERVICOS do
     Begin
          Valida_Forma.Close ;

          Valida_Forma.ParamByName ('CNPJ'  ).AsString  := DmApp.Cnpj   ;
          Valida_Forma.ParamByName ('CODIGO').AsInteger := Codigo       ;

          Valida_Forma.Prepare ;
          Valida_Forma.Open ;

          //Habilita os componentes para cada tipo de Pagamento
          IF ( Valida_FormaNPARCELAS.VALUE > 0 ) AND ( Valida_FormaAVISTA.Value <> 'S' )
          AND ( Valida_FormaFATURA_FUTURA.Value <> 'S' )
          THEN BEGIN
               VENDAPARCELADA := TRUE ;
          END;

          IF Valida_FormaAVISTA.Value = 'S'
          THEN BEGIN
               CmbLocal.Enabled     := false ;
               EDENTRADA.Enabled    := false ;
               cmbTipoDocto.Enabled := false ;

               GRIDFATURAMENTO.Enabled := FALSE ;
          END
          ELSE BEGIN
               CmbLocal.Enabled     := true ;
               EDENTRADA.Enabled    := true ;
               cmbTipoDocto.Enabled := true ;

               GRIDFATURAMENTO.Enabled := TRUE ;
          END;

          IF Valida_FormaCOMENTRADA.Value <> 'S'
          THEN BEGIN
               EDENTRADA.Enabled    := FALSE ;
          END
          ELSE BEGIN
               EDENTRADA.Enabled    := TRUE ;
          END;
     End;
end;

procedure TFrmGarantias.FormCreate(Sender: TObject);
begin
  PC.ActivePageIndex := 0;

  LocCli   := False ;
  LocVen   := False ;
  LocForma := False ;
  Sair     := False ;
    
  Panel2.Color := StrToInt(DmaPP.COR_FUNDO_SEL);

  ActListagem.Hint := ActListagem.Hint + LblTitulo.Caption + ' [F5]';
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, LblTitulo.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TFrmGarantias.dxDBEdit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Begin
       Perform(WM_NEXTDLGCTL, 0, 0);
     End;
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmGarantias.DataSourceStateChange(Sender: TObject);
begin
     dxBarBDBNavFirst.Enabled := true ;
     dxBarBDBNavPrev.Enabled  := true ;
     dxBarBDBNavNext.Enabled  := true ;
     dxBarBDBNavLast.Enabled  := true ;
  //
  If Navigator.DataSource.State in dsEditModes Then
     Begin
       ActIncluir.Enabled   := False;
       ActAlterar.Enabled   := False;
       ActExcluir.Enabled   := False;
       ActLocalizar.Enabled := False;
       ActListagem.Enabled  := False;
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
       ActListagem.Enabled  := ActListagem.Tag = 1;
       BtnSalvar.Enabled    := False;
       BtnCancelar.Enabled  := False;
       ActFechar.Enabled    := True;
     End;
end;

procedure TFrmGarantias.ActFecharExecute(Sender: TObject);
begin
     Close;
end;

procedure TFrmGarantias.CmbTipoPessoaEnter(Sender: TObject);
begin
  (Sender as TdxDBPickEdit).Text := (Sender as TdxDBPickEdit).DataSource.DataSet.FieldByName((Sender as TdxDBPickEdit).DataField).Text;
  (Sender as TdxDBPickEdit).SelectAll;
end;

procedure TFrmGarantias.actLookupExecute(Sender: TObject);
begin
  If (FrmGarantias.ActiveControl = EdPessoa) Then
     BtnPessoa.OnClick(BtnPessoa);
  If (FrmGarantias.ActiveControl = EdVendedor)Then
     btnVendedor.OnClick(btnVendedor);
  If (FrmGarantias.ActiveControl = EdForma)Then
     BtnForma.OnClick(BtnForma);
end;

procedure TFrmGarantias.btnFiltrarClick(Sender: TObject);
begin
  //FilterDialog.Execute;
  DMApp.Filtrar(DataSource);
end;

procedure TFrmGarantias.ActAlterarExecute(Sender: TObject);
begin
  If Navigator.DataSource.State in dsEditModes
  Then
      Exit;
  Try
     If FrmGarantias.ActiveControl <> GridItens
     Then Begin
          DataSource.DataSet.Edit;
     end
     else begin
          If  ( DataSource.dataset.FieldByName('PESSOA_FJ').AsInteger > 0 )
          then begin
               //
               FrmGarantiasItens := TFrmGarantiasItens.Create(Self);
               FrmGarantiasItens.DataSource.DataSet.Edit ;
               FrmGarantiasItens.ShowModal;
               //
               Calcular_Itens;
          end;
     end;
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

procedure TFrmGarantias.GridItensKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     If Key = 13
     then begin
          ActAlterar.Execute ;
     end;
end;

procedure TFrmGarantias.FormActivate(Sender: TObject);
begin
  Try
    FrmGarantias.WindowState := wsMaximized;
    FrmGarantias.Refresh;
    Case FrmGarantias.Tag Of
         1: Begin
              //
              Datasource.DataSet.FieldByName('PESSOA_FJ').asInteger := FrmMain.Codigo_Int;
              dsPessoasFJ.DATASET.Close ;
              dsPessoasFJ.DATASET.Open  ;
              EdPessoa.SetFocus;
            End;
         3: Begin
              //
              Datasource.DataSet.FieldByName('VENDEDOR').asInteger := FrmMain.Codigo_Int;
              DsVendedores.DATASET.Close ;
              DsVendedores.DATASET.Open  ;
              EdVendedor
              .SetFocus;
            End;
         5: Begin              //
              Datasource.DataSet.FieldByName('FORMA_PGTO').asInteger := FrmMain.Codigo_Int;
              DsFormaPgto.DATASET.Close ;
              DsFormaPgto.DATASET.Open  ;
              EdForma.SetFocus;
            End;
    End;
    FrmGarantias.Tag := 0;
  Except
  End;
end;

procedure TFrmGarantias.BtnPessoaClick(Sender: TObject);
begin
  //
  If ActAlterar.Tag = 0 Then
     Exit;
  //
  If Datasource.DataSet.State = dsBrowse Then
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

  EdPessoa.SetFocus;
end;

procedure TFrmGarantias.BtnVendedorClick(Sender: TObject);
begin
  //
  If ActAlterar.Tag = 0 Then
     Exit;
  //
  If Datasource.DataSet.State = dsBrowse Then
     Datasource.DataSet.Edit;

{ if DMCadastros = Nil
  then
      DMCadastros := TDMCadastros.Create(Self)
  else
      DMCadastros.Tag := DMCadastros.Tag + 1;}

  //
  DsVendedores.DataSet.Tag := DsVendedores.DataSet.Tag + 1;

  { * * * * * }
  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmVendedores', False);
  { * * * * * }

  //
  FrmVendedores := TFrmVendedores.Create(Application);

  FrmVendedores.Showmodal ;

  Datasource.DataSet.FieldByName('VENDEDOR').asInteger := FrmMain.Codigo_Int;

  If DMCadastros <> Nil
  then
      DMCadastros.Tag := DMCadastros.Tag - 1;

  DsVendedores.DataSet.Tag := DsVendedores.DataSet.Tag - 1;

  EdVendedor.SetFocus;

  DsVendedores.DataSet.Close;
  DsVendedores.DataSet.Open;
  //
end;

procedure TFrmGarantias.EdPessoaExit(Sender: TObject);
begin
     //garantia A COR DE FUNDO
     TiraCorFundo ( Sender );

     IF (( EdPessoa.Text = '0' ) or ( EdPessoa.Text = '' ))  AND ( DataSource.State in [ dsinsert, dsedit ])
     then Begin
          ActLocalizarCliente.Execute ;
     end;
end;

procedure TFrmGarantias.BtnFormaClick(Sender: TObject);
begin
  //
  If ActAlterar.Tag = 0 Then
     Exit;
  //
  If Datasource.DataSet.State = dsBrowse Then
     Datasource.DataSet.Edit;
  //
{ If DMCadastros = Nil
  then
      DMCadastros := TDMCadastros.Create(Self)
  else
      DMCadastros.Tag := DMCadastros.Tag + 1;}

  DsFormaPgto.DataSet.Tag := DsFormaPgto.DataSet.Tag + 1;

  //
  { * * * * * }
  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmFormasPagto', False);
  { * * * * * }
  //
  FrmFormasPagto := TFrmFormasPagto.Create(Application);
  FrmFormasPagto.Showmodal ;

  Datasource.DataSet.FieldByName('FORMA_PGTO').asInteger := FrmMain.Codigo_Int;

  If DMCadastros <> Nil
  then
      DMCadastros.Tag := DMCadastros.Tag - 1;

  DsFormaPgto.DataSet.Tag := DsFormaPgto.DataSet.Tag - 1;

  EdForma.SetFocus;

  DsFormaPgto.DataSet.Close;
  DsFormaPgto.DataSet.Open;
end;

procedure TFrmGarantias.ActLocalizarClienteExecute(Sender: TObject);
begin
     try
        If ((FrmGarantias.ActiveControl = EdPessoa)or(LocCli)or( EdPessoa.Text = '' ))AND( DataSource.State in [ dsinsert, dsedit ])
        Then begin
             //Chama a Tela Para Localizar Cliente
             Frm_Localizar_Cliente.DSource.dataset := DMSERVICOS.SelPessoasFJ ;

             if ( Frm_Localizar_Cliente.showmodal = mrOk )
             Then Begin
                  DMSERVICOS.GarantiasPessoa_Fj.Value := (Frm_Localizar_Cliente.CampTrecho) ;
             end
             else begin
                  If Frm_Localizar_Cliente.Cad = 'S'
                  THEN
                      BtnPessoa.OnClick(BtnPessoa);
             end;
        end;
  Except
  end;
end;

procedure TFrmGarantias.DataSourceUpdateData(Sender: TObject);
begin
     If Datasource.DataSet.FieldByName('PESSOA_FJ').IsNull
     then begin
          EdPessoa.SetFocus ;
          Abort;
     end;

     If Datasource.DataSet.FieldByName('VENDEDOR').IsNull
     then begin
          EdVendedor.SetFocus ;
          Abort;
     end;
end;

procedure TFrmGarantias.ActListagemExecute(Sender: TObject);
begin
     If DMSERVICOS.GarantiasValidade.IsNull
     then begin
          Pc.ActivePageIndex := 0;
          MessageDlg('Digite a Validade', mtError, [mbOK], 0);
          EdValidade.SetFocus ;
          Exit ;
     end;

     If DmApp.Sel_Impressora = 'S'
     THEN BEGIN
          FrmTipoImpressora := TFrmTipoImpressora.Create(Self);

          FrmTipoImpressora.Showmodal ;

          FRelEnviagarantiaCaixa              := TFRelEnviagarantiaCaixa.Create(Self);

          FRelEnviagarantiaCaixa.LblTipo.Visible := True ;

          If FrmTipoImpressora.CkMatricial.Checked
          THEN BEGIN
               FRelEnviagarantiaCaixa.Print.IMPRESSORA := epson ;
               FRelEnviagarantiaCaixa.LblTipo.Caption := 'Impressora Matricial';
          END
          ELSE BEGIN
               FRelEnviagarantiaCaixa.Print.IMPRESSORA := Hp ;
               FRelEnviagarantiaCaixa.LblTipo.Caption  := 'Impressora Jato de Tinta';
          END;

          FrmTipoImpressora.Free   ;
          FrmTipoImpressora := Nil ;
     END
     ELSE BEGIN
          FRelEnviagarantiaCaixa                 := TFRelEnviagarantiaCaixa.Create(Self);
          FRelEnviagarantiaCaixa.LblTipo.Visible := false ;
     END;

     FRelEnviagarantiaCaixa.Tipo         := 'garantia' ;
     FRelEnviagarantiaCaixa.PedidoNumero := DataSource.DataSet.FieldByName('CODIGO').asInteger ;
     FRelEnviagarantiaCaixa.Showmodal ;

     FRelEnviagarantiaCaixa.Free   ;
     FRelEnviagarantiaCaixa := Nil ;

     DataSource.DataSet.Append ;

     PC.ACTIVEPAGEINDEX := 0;
end;

procedure TFrmGarantias.EdVendedorExit(Sender: TObject);
begin
     //garantia A COR DE FUNDO
     TiraCorFundo ( Sender );

     IF (( EdVendedor.Text = '0' ) or ( EdVendedor.Text = '' )) AND( DataSource.State in [ dsinsert, dsedit ])
     then Begin
          ActLocalizarVendedores.Execute ;
     end;
end;

procedure TFrmGarantias.ActLocalizarVendedoresExecute(Sender: TObject);
begin
     try
        If ((FrmGarantias.ActiveControl = EdVendedor)or(LocVen)or ( EdVendedor.Text = '' ))AND( DataSource.State in [ dsinsert, dsedit ])
        Then begin
             LocVen := False ;
             //Chama a Tela Para Localizar Terceiros
             Application.CreateForm(TFrm_Localizar_Vendedores, Frm_Localizar_Vendedores);
             Frm_Localizar_Vendedores.DSource.dataset := DMSERVICOS.SelVendedor ;

             if ( Frm_Localizar_Vendedores.showmodal = mrOk )
             Then Begin
                  DMSERVICOS.GarantiasVENDEDOR.Value := (Frm_Localizar_Vendedores.CampTrecho) ;
             end
             else begin
                  If Frm_Localizar_Vendedores.Cad = 'S'
                  THEN
                      btnVendedor.OnClick(btnVendedor);
             end;
             Frm_Localizar_Vendedores.free   ;
             Frm_Localizar_Vendedores := Nil ;
        end;
  Except
  end;
end;

procedure TFrmGarantias.dxDBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
     If Key = #13 Then
     Begin
          If DataSource.state in [ dsinsert, dsedit ]
          then begin
               DataSource.DataSet.Post ;
          end;
          GridItens.SetFocus;
     End;
end;

procedure TFrmGarantias.EdPessoaEnter(Sender: TObject);
begin
     CorFundo ( Sender );
end;

procedure TFrmGarantias.cmbvendedorExit(Sender: TObject);
begin
     //garantia A COR DE FUNDO
     TiraCorFundo ( Sender );
end;

procedure TFrmGarantias.GridItensEnter(Sender: TObject);
begin
     Try
        If DataSource.state in [ dsinsert ]
        then begin
             DataSource.DataSet.Post ;
             //
             FrmGarantiasItens := TFrmGarantiasItens.Create(Self);
             FrmGarantiasItens.DataSource.DataSet.Append ;

             FrmGarantiasItens.ShowModal;
             //
             Calcular_Itens;
        end;
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

procedure TFrmGarantias.EdVendedorEnter(Sender: TObject);
begin
     CorFundo ( Sender );
end;

procedure TFrmGarantias.CmbFormaPgtoExit(Sender: TObject);
begin
     //garantia A COR DE FUNDO
     TiraCorFundo ( Sender );
end;

procedure TFrmGarantias.dxDBEdit2Exit(Sender: TObject);
begin
     //garantia A COR DE FUNDO
     TiraCorFundo ( Sender );
end;

procedure TFrmGarantias.EdMargemEnter(Sender: TObject);
begin
     //garantia A COR DE FUNDO
     CorFundo ( Sender );
end;

procedure TFrmGarantias.EdMargemExit(Sender: TObject);
begin
     //garantia A COR DE FUNDO
     TiraCorFundo ( Sender );
end;

procedure TFrmGarantias.ActNextPageExecute(Sender: TObject);
begin
     pc.ActivePageIndex := 1;
end;

procedure TFrmGarantias.ActPreviousPageExecute(Sender: TObject);
begin
     pc.ActivePageIndex := 0;
end;

procedure TFrmGarantias.TAB2Enter(Sender: TObject);
begin
    HabilitaFaturamento ( DMSERVICOS.GarantiasFORMA_PGTO.Value );

    Navigator.DataSource := DataSource;

    DataSource.DataSet.Edit ;

    EdForma.SetFocus;
end;

procedure TFrmGarantias.EdFormaExit(Sender: TObject);
begin
     IF (( EdForma.Text = '0' ) or ( EdForma.Text = '' )) AND( DataSource.State in [ dsinsert, dsedit ])
     then Begin
          ActLocalizarForma.Execute ;
     end;

     If ( EdForma.text = '' ) and ( DataSource.State IN [ DsInsert, DsEdit ] )
     then begin
          MessageDlg ('Selecione a Forma de Faturamento!', MtError, [MbOk],0);
          EdForma.SetFocus ;
     end;

     //garantia A COR DE FUNDO
     TiraCorFundo ( Sender );
end;

procedure TFrmGarantias.EDENTRADAExit(Sender: TObject);
begin
     //garantia A COR DE FUNDO
     TiraCorFundo ( Sender );

     FrmGarantias.Calcular_Itens ;
end;

procedure TFrmGarantias.ActLocalizarFormaExecute(Sender: TObject);
begin
     try
        If ((FrmGarantias.ActiveControl = EdForma)or(LocForma)or ( EdForma.Text = '' ))AND( DataSource.State in [ dsinsert, dsedit ])
        Then begin
             LocForma := False ;

             //Chama a Tela Para Localizar Formas

             Application.CreateForm(TFrm_Localizar_FormaPagto, Frm_Localizar_FormaPagto);
             Frm_Localizar_FormaPagto.DSource.dataset := DMSERVICOS.SelFormaPgto ;

             if ( Frm_Localizar_FormaPagto.showmodal = mrOk )
             Then Begin
                  DMSERVICOS.GarantiasFORMA_PGTO.Value := (Frm_Localizar_FormaPagto.CampTrecho) ;
             end
             else begin
                  If Frm_Localizar_FormaPagto.Cad = 'S'
                  THEN
                      btnVendedor.OnClick(btnVendedor);
             end;
             Frm_Localizar_FormaPagto.free   ;
             Frm_Localizar_FormaPagto := Nil ;
        end;
  Except
  end;
end;

procedure TFrmGarantias.GRIDFATURAMENTOEnter(Sender: TObject);
begin
     IF GRIDFATURAMENTO.Enabled
     THEN BEGIN
          if DataSource.DataSet.State In [ DsEdit, DsInsert ]
          then begin
               DataSource.DataSet.Post ;
          end;

          //Apaga Parcelas
          DmApp.Apaga_Parcelas_garantias ( DmApp.Cnpj, DMSERVICOS.Garantias_ParcCODIGO.Value );

          DMSERVICOS.Garantias_Parc.Close ;
          DMSERVICOS.Garantias_Parc.Open  ;

          //PARCELA VENDAS
          If DMSERVICOS.Garantias_Parc.RecordCount <= 0
          THEN BEGIN
               DMSERVICOS.Parcela_Garantias ;
          END
          ELSE BEGIN
               //Apaga Parcelas
               DmApp.Apaga_Parcelas_garantias ( DmApp.Cnpj, DMSERVICOS.Garantias_ParcCODIGO.Value );

               DMSERVICOS.Parcela_Garantias ;

               DMSERVICOS.Garantias_Parc.Close ;
               DMSERVICOS.Garantias_Parc.Open  ;
          END;

          DsParcelas.DataSet.Append ;
     END;
end;

procedure TFrmGarantias.ActEnviarCaixaExecute(Sender: TObject);
Var
   Prod, Codigo : String ;
   Numero       : Integer;
begin
     If DMSERVICOS.GarantiasFORMA_PGTO.IsNull
     then begin
          MessageDlg('Selecione a Forma de Pagamento!',MtError,[MbOk],0);
          EdForma.SetFocus ;
          Exit;
     end;

     If Datasource.DataSet.State in [ dsedit, dsinsert ]
     Then
         Datasource.DataSet.Post;

     If DsParcelas.DataSet.State in [ dsedit, dsinsert ]
     Then
         DsParcelas.DataSet.Cancel;

     IF DsItens.DataSet.RecordCount <= 0
     THEN BEGIN
          MessageDlg('Não Existem Produtos para Faturamento, Verifique!',MtError,[MbOk],0);
          Pc.ActivePageIndex := 0;
          Exit;
     END;

     With DMSERVICOS do
     begin
          Valida_Forma.Close ;

          Valida_Forma.ParamByName ('CNPJ'  ).AsString  := DmApp.Cnpj   ;
          Valida_Forma.ParamByName ('CODIGO').AsInteger := GarantiasFORMA_PGTO.Value ;

          Valida_Forma.Prepare ;
          Valida_Forma.Open ;
     end;

     IF ( arredonda(DMSERVICOS.GarantiasDiferenca.Value,2) <> 0 ) and ( DMSERVICOS.GarantiasPGTO_AVISTA.Value = 'S' )
     THEN BEGIN
          MessageDlg('O Parcelamento Não Confere, Verifique!',MtError,[MbOk],0);
          Pc.ActivePageIndex := 1;
          EdForma.SetFocus ;
          Exit;
     END;

     DMSERVICOS.Valida_Forma.Close ;

     Codigo := DmaPP.Envia_Garantia_Caixa ( DmApp.Cnpj, DMSERVICOS.GarantiasCodigo.Value );

     IF Codigo <> ''
     THEN BEGIN
          MessageDlg('O Produto de Código ' + Codigo + ', Não Possui Estoque Suficiente, Verifique!',MtError,[MbOk],0);
          Pc.ActivePageIndex := 0 ;
          DMSERVICOS.Garantias_Itens.locate ( 'PRODUTO', Codigo, [] );
     END
     ELSE BEGIN
          Numero := DataSource.DataSet.FieldByName('CODIGO').asInteger    ;

          FrmSelGarantias.DataSource.DataSet.Close ;

          FRelEnviagarantiaCaixa              := TFRelEnviagarantiaCaixa.Create(Self);
          FRelEnviagarantiaCaixa.PedidoNumero := Numero ;
          FRelEnviagarantiaCaixa.Tipo         := 'FATURA' ;
          //FECHADO A VENDA
          FRelEnviagarantiaCaixa.Showmodal ;

          //ENCERRA VENDA
          DmApp.Encerra_garantia(DmApp.Cnpj, Numero, DmApp.DataCaixa, DmApp.UsuarioCaixa, DmApp.ContaCaixa, DmApp.TurnoCaixa );

          Sair := True ;

          //Volta para a tela de seleção
          Close ;
     END;
end;

end.





