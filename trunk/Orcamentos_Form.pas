  unit Orcamentos_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, dxBarDBNav, dxBar, dxCntner, dxEditor,
  dxEdLib, dxDBELib, StdCtrls, Db, IBCustomDataSet, dxDBEdtr, dxExEdtr,
  Buttons,     dxTL, dxDBCtrl, dxDBGrid,
  dxDBTLCl, dxGrClms,  Grids, DBGrids, IBQuery, RDprint, DBCtrls, Variants,
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
  dxSkinXmas2008Blue, Menus, dxSkinsdxBarPainter, cxClasses, cxButtons, DateUtils,
  cxLabel;

type
  TFrmOrcamentos = class(TForm)
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
    ActEnviaCaixa: TAction;
    ActLocalizarCliente: TAction;
    DsUnidades: TDataSource;
    ActLocalizarVendedores: TAction;
    Label1: TcxLabel;
    EdDocumento: TdxDBEdit;
    Label3: TcxLabel;
    EdDataNota: TdxDBDateEdit;
    BtnPessoa: TcxButton;
    BtnVendedor: TcxButton;
    BtnForma: TcxButton;
    CmbFormaPgto: TdxDBLookupEdit;
    cmbvendedor: TdxDBLookupEdit;
    dxDBEdit3: TdxDBEdit;
    EdPessoa: TdxDBEdit;
    EdVendedor: TdxDBEdit;
    Label2: TcxLabel;
    Label5: TcxLabel;
    Label8: TcxLabel;
    Label7: TcxLabel;
    dxDBEdit2: TdxDBEdit;
    GridItens: TdxDBGrid;
    GridItensPRODUTO: TdxDBGridMaskColumn;
    GridItensNome_Produto: TdxDBGridLookupColumn;
    GridItensQUANTIDADE: TdxDBGridMaskColumn;
    GridItensPRC_UNITARIO: TdxDBGridMaskColumn;
    GridItensTotal: TdxDBGridColumn;
    Panel3: TPanel;
    Label25: TcxLabel;
    Label27: TcxLabel;
    Label6: TcxLabel;
    dxDBEdit5: TdxDBEdit;
    dxDBEdit8: TdxDBEdit;
    EdMargem: TdxDBCalcEdit;
    Panel2: TPanel;
    LblTitulo: TcxLabel;
    dxBarButton1: TdxBarButton;
    Label4: TcxLabel;
    EdValidade: TdxDBDateEdit;
    ActAlteraUnitario: TAction;
    RxLabel16: TcxLabel;
    RxLabel17: TcxLabel;
    DsAgrupador: TDataSource;
    GridItensQTDE_FATURADA: TdxDBGridMaskColumn;
    GridItensSaldo: TdxDBGridColumn;
    DBCheckBox1: TDBCheckBox;
    GridItensGRADE: TdxDBGridMaskColumn;
    GridItensNUMERO: TdxDBGridMaskColumn;
    GridItensCOMPLEMENTO: TdxDBGridMaskColumn;
    stgSelFrmOrcamentos: TcxPropertiesStore;
    Orcamentos_Itens: TIBDataSet;
    Orcamentos_ItensCNPJ: TIBStringField;
    Orcamentos_ItensCODIGO: TIntegerField;
    Orcamentos_ItensPRODUTO: TIBStringField;
    Orcamentos_ItensSEQUENCIA: TSmallintField;
    Orcamentos_ItensQUANTIDADE: TFloatField;
    Orcamentos_ItensPRC_UNITARIO: TFloatField;
    Orcamentos_ItensPRC_CUSTO: TFloatField;
    Orcamentos_ItensICM: TFloatField;
    Orcamentos_ItensICM_SUBS: TFloatField;
    Orcamentos_ItensIPI: TFloatField;
    Orcamentos_ItensVOLUME: TFloatField;
    Orcamentos_ItensPESO: TFloatField;
    Orcamentos_ItensDESCONTO: TFloatField;
    Orcamentos_ItensPORC_DESC: TFloatField;
    Orcamentos_ItensUNIDADE: TIBStringField;
    Orcamentos_ItensPRC_UNIT_ORIGINAL: TFloatField;
    Orcamentos_ItensTotal: TFloatField;
    Orcamentos_ItensPeso_Total: TFloatField;
    Orcamentos_ItensVolume_Total: TFloatField;
    Orcamentos_ItensNOME_PRODUTO: TIBStringField;
    Orcamentos_ItensSUBUNIDADE: TIntegerField;
    Orcamentos_ItensMARCA: TIBStringField;
    Orcamentos_ItensPRC_UNITARIO_2: TFloatField;
    Orcamentos_ItensMARCA_2: TIBStringField;
    Orcamentos_ItensTotal2: TFloatField;
    Orcamentos_ItensEXTERNO: TIBStringField;
    Orcamentos_ItensNOME_MASCARA: TIBStringField;
    Orcamentos_ItensGRUPO_MASCARA: TIntegerField;
    Orcamentos_ItensSUB_GRUPO_MASCARA: TIntegerField;
    Orcamentos_ItensMASCARA: TIntegerField;
    Orcamentos_ItensQTDE_FATURADA: TFloatField;
    Orcamentos_ItensSaldo: TFloatField;
    Orcamentos_ItensGRADE: TIBStringField;
    Orcamentos_ItensNUMERO: TIBStringField;
    Orcamentos_ItensCOMPLEMENTO: TIBStringField;
    Orcamentos: TIBDataSet;
    OrcamentosCNPJ: TIBStringField;
    OrcamentosCODIGO: TIntegerField;
    OrcamentosDATA: TDateTimeField;
    OrcamentosFORMA_PGTO: TIntegerField;
    OrcamentosNOME_CONSUMIDOR: TIBStringField;
    OrcamentosOBSERVACAO: TIBStringField;
    OrcamentosPESSOA_FJ: TIntegerField;
    OrcamentosUSUARIO: TIntegerField;
    OrcamentosVENDEDOR: TIntegerField;
    OrcamentosDESC_ACRESC: TFloatField;
    OrcamentosTOTAL: TFloatField;
    OrcamentosGERAL: TFloatField;
    OrcamentosNOME: TIBStringField;
    OrcamentosVALIDADE: TDateTimeField;
    OrcamentosTOTAL_2: TFloatField;
    OrcamentosGeral2: TFloatField;
    OrcamentosCLIENTE: TIBStringField;
    OrcamentosDESC_ACRESC_2: TFloatField;
    OrcamentosEXTERNO: TIBStringField;
    OrcamentosMASCARA: TIntegerField;
    OrcamentosCOMPROMETER_ESTOQUE: TIBStringField;
    OrcamentosSTATUS: TIntegerField;
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
    procedure ActAlteraUnitarioExecute(Sender: TObject);
    procedure GridItensSaldoCustomDrawCell(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
      AColumn: TdxTreeListColumn; ASelected, AFocused,
      ANewItemRow: Boolean; var AText: String; var AColor: TColor;
      AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
    procedure Orcamentos_ItensBeforeInsert(DataSet: TDataSet);
    procedure Orcamentos_ItensCalcFields(DataSet: TDataSet);
    procedure Orcamentos_ItensNewRecord(DataSet: TDataSet);
    procedure Orcamentos_ItensPRODUTOSetText(Sender: TField;
      const Text: String);
    procedure Orcamentos_ItensPRODUTOValidate(Sender: TField);
    procedure Orcamentos_ItensDESCONTOValidate(Sender: TField);
    procedure Orcamentos_ItensPORC_DESCValidate(Sender: TField);
    procedure Orcamentos_ItensGRADEValidate(Sender: TField);
    procedure Orcamentos_ItensNUMEROValidate(Sender: TField);
    procedure OrcamentosCalcFields(DataSet: TDataSet);
    procedure OrcamentosNewRecord(DataSet: TDataSet);
    procedure OrcamentosFORMA_PGTOValidate(Sender: TField);
    procedure OrcamentosPESSOA_FJValidate(Sender: TField);
    procedure OrcamentosVENDEDORValidate(Sender: TField);
    procedure OrcamentosSTATUSGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure OrcamentosSTATUSSetText(Sender: TField; const Text: String);
  private
    { Private declarations }
    Procedure Calcular_Itens;
  public
    LocCli, LocVen :Boolean ;
    { Public declarations }
  end;

var
  FrmOrcamentos: TFrmOrcamentos;

implementation

uses Vendas_DM,
     Listagens_DM,
     Application_DM,
     Main,
     Usuarios_DM,
     Funcoes,
     OrcamentosItens_Form,
     Cadastros_DM,
     Vendedores_Form,
     Clientes_Form,
     FormasPagto_Form,
     Localizar_Cliente,
     EnviaCaixa_FRel,
     Localizar_Vendedor,
     SelVendas_Form,
     Tipo_Impressora_Form,
     EntraNumeroReal_Form,
      Vendas_DM2, MensagemFaturamento_Form;

  {$R *.DFM}

procedure TFrmOrcamentos.Calcular_Itens;
Var bReg: Pointer;
    tDesconto, tProdutos, tProdutos2: Extended;
begin
  //
  If dsItens.DataSet.RecordCount > 0 Then
     bReg := dsItens.DataSet.GetBookmark;
  //
  dsItens.DataSet.DisableControls;
  //
  tProdutos := 0;
  tProdutos2:= 0;
  //
  tDesconto := 0;
  //
  dsItens.DataSet.First;
  //
  While Not dsItens.DataSet.Eof Do
        Begin
          //
          tProdutos  := tProdutos  + dsItens.DataSet.FieldByName('TOTAL'   ).asFloat;
          tProdutos2 := tProdutos2 + dsItens.DataSet.FieldByName('TOTAL2'  ).asFloat;
          tDesconto  := tDesconto  + dsItens.DataSet.FieldByName('DESCONTO').asFloat;
          //
          dsItens.DataSet.Next;
        End;

  //Valores dos Itens
  DataSource.DataSet.Edit ;

  DataSource.DataSet.FieldByName('TOTAL' ).asFloat   := tProdutos;
  DataSource.DataSet.FieldByName('TOTAL_2' ).asFloat := tProdutos2;

  DataSource.DataSet.Post ;

  //
  If dsItens.DataSet.RecordCount > 0 Then
     Begin
       dsItens.DataSet.GotoBookmark(bReg);
       dsItens.DataSet.FreeBookmark(bReg);
     End;
  //
  dsItens.DataSet.EnableControls;
end;

procedure TFrmOrcamentos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     If MessageDlg('Sair da Tela de Orçamento?', mtConfirmation, [mbOk, mbCancel], 0)= MrOk
     then begin
          //
          If DsAgrupador.DataSet.Tag = 0 Then
          DsAgrupador.Dataset.Close;
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
          //
          Action := caFree;
          FrmOrcamentos := Nil;
     end
     else begin
          Action := CaNone ;
     end;
end;

procedure TFrmOrcamentos.ActIncluirExecute(Sender: TObject);
begin
  try
     //
     If Navigator.DataSource.State in dsEditModes Then
        Exit;
     //
     If FrmOrcamentos.ActiveControl = GridItens
     Then Begin

               FrmOrcamentosItens := TFrmOrcamentosItens.Create(Self);
               FrmOrcamentosItens.DataSource.DataSet.Append ;
               FrmOrcamentosItens.ShowModal;
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

procedure TFrmOrcamentos.ActExcluirExecute(Sender: TObject);
Var
   msg: String;
begin
     If FrmOrcamentos.ActiveControl = GridItens
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

procedure TFrmOrcamentos.ActPostExecute(Sender: TObject);
begin
  //
  Try
    //
     If (Orcamentos.State in [dsEdit,dsInsert]) Then
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

procedure TFrmOrcamentos.ActCancelExecute(Sender: TObject);
begin
  If DataSource.DataSet.State in dsEditModes
  Then Begin
       DataSource.DataSet.Cancel;
       (dsItens.DataSet as TIBDataSet).CancelUpdates;
  End
  Else Begin
       BtnFechar.OnClick(BtnFechar);
  End;
end;

procedure TFrmOrcamentos.FormShow(Sender: TObject);
begin
  IniciaComponentes ( Self as TForm );

  LblTitulo.Caption := COPY (FrmSelVendas.tbsOrcamento.Caption, 1, LENGTH(FrmSelVendas.tbsOrcamento.Caption) - 7 ) ;


  Try
    If Not(DmVendas.SelMascara_Nome.Active) Then
       DmVendas.SelMascara_Nome.Open;
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

  If ( Datasource.DataSet.State in [dsbrowse] )
  then
      Datasource.DataSet.Append ;

  //
  Datasource.AutoEdit := ActAlterar.Enabled;

  EdPessoa.SetFocus;
end;

procedure TFrmOrcamentos.FormCreate(Sender: TObject);
begin
  LocCli := False ;
  LocVen := False ;

  Panel2.Color := StrToInt(DmaPP.COR_FUNDO_SEL);

  ActListagem.Hint := ActListagem.Hint + LblTitulo.Caption + ' [F5]';
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, LblTitulo.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TFrmOrcamentos.dxDBEdit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Begin
       Perform(WM_NEXTDLGCTL, 0, 0);
     End;
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmOrcamentos.DataSourceStateChange(Sender: TObject);
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

procedure TFrmOrcamentos.ActFecharExecute(Sender: TObject);
begin
     Close;
end;

procedure TFrmOrcamentos.CmbTipoPessoaEnter(Sender: TObject);
begin
  (Sender as TdxDBPickEdit).Text := (Sender as TdxDBPickEdit).DataSource.DataSet.FieldByName((Sender as TdxDBPickEdit).DataField).Text;
  (Sender as TdxDBPickEdit).SelectAll;
end;

procedure TFrmOrcamentos.actLookupExecute(Sender: TObject);
begin
  If (FrmOrcamentos.ActiveControl = EdPessoa) Then
     BtnPessoa.OnClick(BtnPessoa);
  If (FrmOrcamentos.ActiveControl = cmbVendedor) or (FrmOrcamentos.ActiveControl = EdVendedor)Then
     btnVendedor.OnClick(btnVendedor);
  If (FrmOrcamentos.ActiveControl = CmbFormaPgto)Then
     BtnForma.OnClick(BtnForma);
end;

procedure TFrmOrcamentos.btnFiltrarClick(Sender: TObject);
begin
  //FilterDialog.Execute;
  DMApp.Filtrar(DataSource);
end;

procedure TFrmOrcamentos.ActAlterarExecute(Sender: TObject);
begin
  If Navigator.DataSource.State in dsEditModes
  Then
      Exit;
  Try
     If FrmOrcamentos.ActiveControl <> GridItens
     Then Begin
          DataSource.DataSet.Edit;
          EdPessoa.SetFocus;
     end
     else begin
          If  ( DataSource.dataset.FieldByName('PESSOA_FJ').AsInteger > 0 )
          then begin


                    FrmOrcamentosItens := TFrmOrcamentosItens.Create(Self);
                    FrmOrcamentosItens.DataSource.DataSet.Append ;
                    FrmOrcamentosItens.ShowModal;
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

procedure TFrmOrcamentos.GridItensKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     If Key = 13
     then begin
          ActAlterar.Execute ;
     end;
end;

procedure TFrmOrcamentos.FormActivate(Sender: TObject);
begin
  Try
    FrmOrcamentos.WindowState := wsMaximized;
    FrmOrcamentos.Refresh;
    Case FrmOrcamentos.Tag Of
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
              cmbvendedor.SetFocus;
            End;
         5: Begin              //
              Datasource.DataSet.FieldByName('FORMA_PGTO').asInteger := FrmMain.Codigo_Int;
              DsFormaPgto.DATASET.Close ;
              DsFormaPgto.DATASET.Open  ;
              CmbFormaPgto.SetFocus;
            End;
    End;
    FrmOrcamentos.Tag := 0;
  Except
  End;
end;

procedure TFrmOrcamentos.BtnPessoaClick(Sender: TObject);
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
{  If DMCadastros = Nil
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

procedure TFrmOrcamentos.BtnVendedorClick(Sender: TObject);
begin
  //
  If ActAlterar.Tag = 0 Then
     Exit;
  //
  If Datasource.DataSet.State = dsBrowse Then
     Datasource.DataSet.Edit;

{  if DMCadastros = Nil
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

procedure TFrmOrcamentos.EdPessoaExit(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     TiraCorFundo ( Sender );

     IF (( EdPessoa.Text = '0' ) or ( EdPessoa.Text = '' ))  AND ( DataSource.State in [ dsinsert, dsedit ])
     then Begin
          ActLocalizarCliente.Execute ;
     end;
end;

procedure TFrmOrcamentos.BtnFormaClick(Sender: TObject);
begin
  //
  If ActAlterar.Tag = 0 Then
     Exit;
  //
  If Datasource.DataSet.State = dsBrowse Then
     Datasource.DataSet.Edit;
  //
{  If DMCadastros = Nil
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

  CmbFormaPgto.SetFocus;

  DsFormaPgto.DataSet.Close;
  DsFormaPgto.DataSet.Open;
end;

procedure TFrmOrcamentos.ActLocalizarClienteExecute(Sender: TObject);
begin
  try
    if ((FrmOrcamentos.ActiveControl = EdPessoa)or(LocCli)or( EdPessoa.Text = '' )) and ( DataSource.State in [ dsinsert, dsedit ]) then
    begin
      //Chama a Tela Para Localizar Cliente
      Frm_Localizar_Cliente.DSource.dataset := DmVendas.SelPessoasFJ ;
      if ( Frm_Localizar_Cliente.showmodal = mrOk ) then
         OrcamentosPessoa_Fj.Value := (Frm_Localizar_Cliente.CampTrecho)
      else
      begin
        If Frm_Localizar_Cliente.Cad = 'S' then
          BtnPessoa.OnClick(BtnPessoa);
      end;
    end;
  Except
  end;
end;

procedure TFrmOrcamentos.DataSourceUpdateData(Sender: TObject);
begin
     If Datasource.DataSet.FieldByName('PESSOA_FJ').IsNull
     then begin
          EdPessoa.SetFocus ;
     end;

     If Datasource.DataSet.FieldByName('FORMA_PGTO').IsNull
     then begin
          CmbFormaPgto.SetFocus ;
     end;
end;

procedure TFrmOrcamentos.ActListagemExecute(Sender: TObject);
begin
     If OrcamentosValidade.IsNull then
     begin
          MessageDlg('Digite a Validade', mtError, [mbOK], 0);
          EdValidade.SetFocus ;
          Exit ;
     end;

     FRelEnviaCaixa                 := TFRelEnviaCaixa.Create(Self);
     FRelEnviaCaixa.LblTipo.Visible := false ;
     IF DmApp.ITENSORCAMENTOORC = 33 //ORCAMENTO EM SERIE
     THEN BEGIN
          FRelEnviaCaixa.Tipo  := 'SERIE' ;
     END
     ELSE BEGIN
          FRelEnviaCaixa.Tipo  := 'ORCAMENTO' ;
     END;

     FRelEnviaCaixa.PedidoNumero := DataSource.DataSet.FieldByName('CODIGO').asInteger ;
     FRelEnviaCaixa.Aba := 1;
     FRelEnviaCaixa.Showmodal ;

     FRelEnviaCaixa.Free   ;
     FRelEnviaCaixa := Nil ;
end;

procedure TFrmOrcamentos.EdVendedorExit(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     TiraCorFundo ( Sender );

     IF (( EdVendedor.Text = '0' ) or ( EdVendedor.Text = '' )) AND( DataSource.State in [ dsinsert, dsedit ])
     then Begin
          ActLocalizarVendedores.Execute ;
     end;

     If ((Sender as TDxDbEdit).Text <> '') and ( Datasource.DataSet.State in [ dsedit, dsinsert ])
     then
         Perform(WM_NEXTDLGCTL, 0, 0);
end;

procedure TFrmOrcamentos.ActLocalizarVendedoresExecute(Sender: TObject);
begin
     try
        If ((FrmOrcamentos.ActiveControl = EdVendedor)or(LocVen)or ( EdVendedor.Text = '' ))AND( DataSource.State in [ dsinsert, dsedit ])
        Then begin
             LocVen := False ;
             //Chama a Tela Para Localizar Terceiros
             Application.CreateForm(TFrm_Localizar_Vendedores, Frm_Localizar_Vendedores);
             Frm_Localizar_Vendedores.DSource.dataset := DmVendas.SelVendedor ;

             if ( Frm_Localizar_Vendedores.showmodal = mrOk ) Then
               OrcamentosVENDEDOR.Value := (Frm_Localizar_Vendedores.CampTrecho)
             else
             begin
               If Frm_Localizar_Vendedores.Cad = 'S' then
                  btnVendedor.OnClick(btnVendedor);
             end;
             Frm_Localizar_Vendedores.free   ;
             Frm_Localizar_Vendedores := Nil ;
        end;
  Except
  end;
end;

procedure TFrmOrcamentos.dxDBEdit2KeyPress(Sender: TObject; var Key: Char);
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

procedure TFrmOrcamentos.EdPessoaEnter(Sender: TObject);
begin
     CorFundo ( Sender );
end;

procedure TFrmOrcamentos.cmbvendedorExit(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     TiraCorFundo ( Sender );
end;

procedure TFrmOrcamentos.GridItensEnter(Sender: TObject);
begin
     Try

        If DataSource.state in [ dsinsert ] then
        begin
          DataSource.DataSet.Post ;


            FrmOrcamentosItens := TFrmOrcamentosItens.Create(Self);
            FrmOrcamentosItens.DataSource.DataSet.Append ;
            FrmOrcamentosItens.ShowModal;
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

procedure TFrmOrcamentos.EdVendedorEnter(Sender: TObject);
begin
     CorFundo ( Sender );
end;

procedure TFrmOrcamentos.CmbFormaPgtoExit(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     TiraCorFundo ( Sender );
end;

procedure TFrmOrcamentos.dxDBEdit2Exit(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     TiraCorFundo ( Sender );
end;

procedure TFrmOrcamentos.EdMargemEnter(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     CorFundo ( Sender );
end;

procedure TFrmOrcamentos.EdMargemExit(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     TiraCorFundo ( Sender );
end;

procedure TFrmOrcamentos.ActAlteraUnitarioExecute(Sender: TObject);
begin
     If Not ( DsItens.State in [ dsInsert, DsEdit ])
     then begin
          DsItens.DATASET.EDIT ;
     end;

     Application.CreateForm(TFrmEntraNumeroReal, FrmEntraNumeroReal);
     FrmEntraNumeroReal.LblTitulo.Caption := 'Digita Unitário';
     FrmEntraNumeroReal.LBLPROMPT.Caption := 'Unit'   ;

     IF FrmEntraNumeroReal.ShowModal = MROK then
       Orcamentos_ItensPRC_UNITARIO.Value := (FrmEntraNumeroReal.Numero) ;

     FrmEntraNumeroReal.Free ;
     FrmEntraNumeroReal := Nil;

     DsItens.dataset.post ;

     Calcular_Itens;
end;

procedure TFrmOrcamentos.GridItensSaldoCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
var
  Value : variant;
begin
  if not(ASelected)  then
  begin
    Value := ANode.Values[GridItensSaldo.Index];

    if not VarIsNull(Value) then
    begin
      if (Value < 0)  then
        AFont.Color := clRed
      else if (Value > 0) then
        AFont.Color := clGreen;
    end
  end;
end;

procedure TFrmOrcamentos.Orcamentos_ItensBeforeInsert(DataSet: TDataSet);
begin
  If DmaPP.Num_Max_Itens_Orc > 0 then
  begin
          if Orcamentos_Itens.RecordCount >= DmaPP.Num_Max_Itens_Orc
          then begin
               messagedlg ('Nº Máximo de Itens Alcançado!', MtInformation, [MbOk],0);
               Abort;
          end;
  end;
end;

procedure TFrmOrcamentos.Orcamentos_ItensCalcFields(DataSet: TDataSet);
begin
  Orcamentos_ItensTotal.value        := arredonda(Orcamentos_ItensQUANTIDADE.Value * ( Orcamentos_ItensPRC_UNITARIO.Value),2);
  Orcamentos_ItensTotal2.value       := arredonda(Orcamentos_ItensQUANTIDADE.Value * ( Orcamentos_ItensPRC_UNITARIO_2.Value),2);

  Orcamentos_ItensPeso_Total.Value   := arredonda(Orcamentos_ItensQUANTIDADE.Value * Orcamentos_ItensPeso.Value,2) ;
  Orcamentos_ItensVolume_Total.Value := arredonda(Orcamentos_ItensQUANTIDADE.Value * Orcamentos_ItensVolume.Value,2) ;
  Orcamentos_ItensSaldo.value := (Orcamentos_ItensQUANTIDADE.Value - Orcamentos_ItensQTDE_FATURADA.value);
end;

procedure TFrmOrcamentos.Orcamentos_ItensNewRecord(DataSet: TDataSet);
begin

     Orcamentos_ItensCNPJ.Value          := OrcamentosCNPJ.Value ;
     Orcamentos_ItensCODIGO.Value        := OrcamentosCODIGO.Value ;
     Orcamentos_ItensQUANTIDADE.Value    := 0;
     Orcamentos_ItensPRC_UNITARIO.Value  := 0;
     Orcamentos_ItensPRC_CUSTO.Value     := 0;
     Orcamentos_ItensICM.Value           := 0;
     Orcamentos_ItensICM_SUBS.Value      := 0;
     Orcamentos_ItensIPI.Value           := 0;
     Orcamentos_ItensVOLUME.Value        := 0;
     Orcamentos_ItensPESO.Value          := 0;
     Orcamentos_ItensDESCONTO.Value      := 0;
     Orcamentos_ItensPORC_DESC.Value     := 0;
     Orcamentos_ItensUNIDADE.Value       := 'UN' ;
     Orcamentos_ItensSUBUNIDADE.Value    := 1;
     Orcamentos_ItensSequencia.Value     := Orcamentos_Itens.RecordCount ;
end;

procedure TFrmOrcamentos.Orcamentos_ItensPRODUTOSetText(Sender: TField;
  const Text: String);

          Function RetiraZeros ( Str: String ): String;
          Var
             Aux: String;
             I, Len: Integer ;
             Inicio: Boolean ;
          Begin
               I := 1;

               Len := Length(Str);

               Aux := '';

               Inicio := False ;

               While I <= Len do
               begin
                    If (( Copy(Str,I,1) <> '0' ) OR ( Inicio ))
                    then Begin
                         Aux := Aux + Copy(Str,I,1);
                         Inicio := TRUE ;
                    end
                    else begin
                         Inicio := FALSE ;
                    end;

                    I := I + 1;
               end;

               result := Aux;
          end;
Var
   Aux: String;
   Codigo, Grade, Numero: String;
begin
     Aux := Text ;
     //VERIFICA SE TEM GRADE
     if (( LENGTH( TRIM( AUX )) >= 15 ) AND ( DMAPP.EST_USA_GRADE = 'S' )) then
     begin
          CODIGO := COPY(AUX,  1, 6);
          if LENGTH(TRIM(AUX))=15 then
          begin
            GRADE := COPY(AUX,  7, 3);
           if (Pos('0',GRADE) = 0) then
              GRADE := 'A'+GRADE
           else if ((Pos('0',GRADE) > 0) and (length(trim(grade)) > 1)) then
              GRADE := 'A'+GRADE;

            NUMERO := COPY(AUX, 10, 6);
          end
          else
          begin
            GRADE  := COPY(AUX,  7, 4);
            NUMERO := COPY(AUX, 11, 7);
          end;

          CODIGO := RETIRAZEROS ( CODIGO );
          NUMERO := RETIRAZEROS ( NUMERO );
          SENDER.VALUE := CODIGO;

          if NOT ( Orcamentos_Itens.STATE IN [ DSINSERT, DSEDIT ] ) then
            Orcamentos_Itens.EDIT ;

          if TRIM(GRADE) = '' then
            Orcamentos_ItensGRADE.VALUE  := '0'
          else
            Orcamentos_ItensGRADE.VALUE  := (GRADE)  ;

          if TRIM(NUMERO) = '' then
             Orcamentos_ItensNUMERO.VALUE := '0'
          else
             Orcamentos_ItensNUMERO.VALUE := (NUMERO) ;
     END
     ELSE BEGIN
          If DmApp.Elimina_Zeros = 'S'
          THEN BEGIN
               While Copy ( Aux, 1, 1 ) = '0' DO
               BEGIN
                    Aux := Copy ( Aux, 2, 15 );
               End;
               Sender.Value := Aux ;
          END
          ELSE BEGIN
               If DmApp.Acrescenta_Zeros = 'S'
               THEN BEGIN
                    While Length ( Aux ) < 10 DO
                    BEGIN
                         Aux := '0' + Aux ;
                    End;
                    Sender.Value := Aux ;
               END
               ELSE BEGIN
                    Sender.Value := Aux ;
               END;
          END;
     END;
end;

procedure TFrmOrcamentos.Orcamentos_ItensPRODUTOValidate(Sender: TField);
var
  complemento: string;
begin
     If Sender.IsNull Then
         Exit ;

     If trim(Sender.Value) = '' Then
         Exit ;

     //BUSCA OS VALORES DO PRODUTO
     DmVendas2.Valida_Produto.Close ;
     DmVendas2.Valida_Produto.ParamByName ('CNPJ').AsString        := DmApp.Cnpj   ;
     DmVendas2.Valida_Produto.ParamByName ('PRODUTO').AsString     := Sender.Value ;
     DmVendas2.Valida_Produto.ParamByName ('VENDEDOR').AsInteger     := OrcamentosVENDEDOR.value;
     DmVendas2.Valida_Produto.Open;

     if ((DmVendas2.Valida_ProdutoVENCTO_PRC_VENDA.Value > 0) and (DateOf(DmVendas2.Valida_ProdutoVENCTO_PRC_VENDA.AsDateTime) < DateOf(dmApp.Data_Servidor))) then
     begin
       Application.MessageBox('Preço de venda vencido. Verifique','Aviso',mb_iconerror + mb_iconinformation);
       abort;
     end;
     
     If DmVendas2.Valida_ProdutoPRC_VENDA.IsNull then
     Begin
       If FrmOrcamentosItens <> Nil then
         FrmOrcamentosItens.LocProd := True ;

       exit;
     end
     else
     begin
          Orcamentos_ItensPRC_CUSTO.Value         := DmVendas2.Valida_ProdutoPRC_CUSTO_MED.Value ;
          Orcamentos_ItensPRC_UNITARIO.Value      := arredonda(DmVendas2.Valida_ProdutoPRC_VENDA.Value,2)  - Orcamentos_ItensDESCONTO.Value;
          Orcamentos_ItensPRC_UNITARIO_2.Value      := DmVendas2.Valida_ProdutoPRC_VENDA.Value ;
          Orcamentos_ItensPRC_UNIT_ORIGINAL.Value := arredonda(DmVendas2.Valida_ProdutoPRC_VENDA.Value,2);
          Orcamentos_ItensNOME_PRODUTO.Value      := DmVendas2.Valida_ProdutoNOME.Value ;

          If Not DmVendas2.Valida_ProdutoVOLUME.IsNull
          then
              Orcamentos_ItensVOLUME.Value       := DmVendas2.Valida_ProdutoVOLUME.Value
          else
              Orcamentos_ItensVOLUME.Value       := 0;

          If Not DmVendas2.Valida_ProdutoPESO_LIQ.IsNull
          then
              Orcamentos_ItensPESO.Value         := DmVendas2.Valida_ProdutoPESO_LIQ.Value
          else
              Orcamentos_ItensPESO.Value         := 0;

          If Not DmVendas2.Valida_ProdutoUNIDADE.IsNull
          then
              Orcamentos_ItensUNIDADE.Value      := DmVendas2.Valida_ProdutoUNIDADE.Value
          else
              Orcamentos_ItensUNIDADE.Value      := 'UN';

          If Not DmVendas2.Valida_ProdutoMARCA.IsNull
          then BEGIN
               Orcamentos_ItensMARCA.Value       := COPY(DmVendas2.Valida_ProdutoMARCA.Value,1,30);
               Orcamentos_ItensMARCA_2.Value     := COPY(DmVendas2.Valida_ProdutoMARCA.Value,1,30);
          END;
     end;

     IF DmaPP.MASCARA_ORCAMENTO <> 'S'
     THEN BEGIN
          //Verifica se Ele Já Foi Faturado Nesta Nota
          DmVendas2.Geral.Close ;
          DmVendas2.Geral.Sql.Clear ;

          DmVendas2.Geral.Params.CreateParam ( FtString , 'E', PtInput );
          DmVendas2.Geral.Params.CreateParam ( FtInteger, 'C', PtInput );
          DmVendas2.Geral.Params.CreateParam ( FtString , 'P', PtInput );

          DmVendas2.Geral.Sql.Add (' Select * From Fat_Orcamentos_Itens Where Produto = :P and CNPJ = :E and Codigo = :C ');

          DmVendas2.Geral.ParamByName ('E').AsString  := DmApp.Cnpj   ;
          DmVendas2.Geral.ParamByName ('C').AsInteger := Orcamentos_ItensCODIGO.Value ;
          DmVendas2.Geral.ParamByName ('P').AsString  := Sender.Value ;

          DmVendas2.Geral.Prepare ;

          DmVendas2.Geral.Open ;

          IF NOT DmVendas2.Geral.Fields[1].isNull
          THEN BEGIN
               IF DmApp.REPETE_PRODUTO = 'S'
               THEN BEGIN
                    MessageDlg('Atenção Produto Repetido!', mtError, [mbOK], 0);
               END
               ELSE BEGIN
                    MessageDlg('Este Produto Já Foi Faturado Neste Orçamento, Verifique!', mtError, [mbOK], 0);
                    Abort;
               END
          END;
     end;

     if DmVendas2.Valida_ProdutoCOMPLEMENTO.VALUE <> '' then
       COMPLEMENTO := DmVendas2.Valida_ProdutoCOMPLEMENTO.VALUE
     else
       COMPLEMENTO := '';

     //COMPLEMENTO
     If DmVendas2.Valida_ProdutoCOMPLEMENTO_NF.Value = 'S' then
     begin
       if TRIM(Orcamentos_ItensCOMPLEMENTO.Value) <> '' then
         Orcamentos_ItensCOMPLEMENTO.Value := dmvendas.PedeComplemento(Orcamentos_ItensCOMPLEMENTO.Value, Orcamentos_ItensPRODUTO.Value+'-'+Orcamentos_ItensNOME_PRODUTO.Value)
       else
         Orcamentos_ItensCOMPLEMENTO.Value := dmvendas.PedeComplemento(COMPLEMENTO,Orcamentos_ItensPRODUTO.Value+'-'+Orcamentos_ItensNOME_PRODUTO.Value);
     end;
end;

procedure TFrmOrcamentos.Orcamentos_ItensDESCONTOValidate(Sender: TField);
begin
 IF ( Sender.Value < 0 ) then
  begin
      Showmessage('O Valor do ' + Sender.DisPlayLabel  + ' Digitado deve Maior Ou Igual a Zero');
      Abort;
  end;
end;

procedure TFrmOrcamentos.Orcamentos_ItensPORC_DESCValidate(Sender: TField);
begin
  if (Sender.Value < 0) then
  begin
    Showmessage('O Valor do ' + Sender.DisPlayLabel  + ' Digitado deve Maior Ou Igual a Zero');
    Abort;
  end;
end;

procedure TFrmOrcamentos.Orcamentos_ItensGRADEValidate(Sender: TField);
begin
  If trim(sender.value) <> '0' then
 begin
   DmVendas2.Geral.Close;
   DmVendas2.Geral.Sql.Clear;

   DmVendas2.Geral.Params.CreateParam ( FtString,  'CNPJ', PtInput ) ;
   DmVendas2.Geral.Params.CreateParam ( FtString,  'P'   , PtInput ) ;
   DmVendas2.Geral.Params.CreateParam ( FtString,  'G'   , PtInput ) ;

   DmVendas2.Geral.Sql.Add (' Select * From EST_PRODUTOS_GRADES Where CNPJ = :CNPJ AND PRODUTO = :P AND GRADE = :G ');

   DmVendas2.Geral.ParamByName ('CNPJ').AsString  := DmApp.Cnpj   ;
   DmVendas2.Geral.ParamByName ('P'   ).AsString  := Orcamentos_ItensPRODUTO.Value ;
   DmVendas2.Geral.ParamByName ('G'   ).AsString  := Sender.value ;
   DmVendas2.Geral.open;

   if DmVendas2.Geral.FIELDS[0].ISNULL then
   begin
     MessageDlg('Grade não Cadastrada, Verifique!',MtError,[MbOk],0);
     Abort;
   end;
 end;
end;

procedure TFrmOrcamentos.Orcamentos_ItensNUMEROValidate(Sender: TField);
begin
   IF ( Sender.value <> '0' ) then
  BEGIN
      DmVendas2.Geral.Close;
      DmVendas2.Geral.Sql.Clear;

      DmVendas2.Geral.Params.CreateParam ( FtString,  'CNPJ', PtInput ) ;
      DmVendas2.Geral.Params.CreateParam ( FtString,  'P'   , PtInput ) ;
      DmVendas2.Geral.Params.CreateParam ( FtString,  'G'   , PtInput ) ;
      DmVendas2.Geral.Params.CreateParam ( FtString,  'N'   , PtInput ) ;

      DmVendas2.Geral.Sql.Add (' Select * From EST_PRODUTOS_GRADES_NUMEROS                          ');
      DmVendas2.Geral.Sql.Add (' Where CNPJ = :CNPJ AND PRODUTO = :P AND GRADE = :G and NUMERO = :N ');

      DmVendas2.Geral.ParamByName ('CNPJ').AsString  := DmApp.Cnpj                   ;
      DmVendas2.Geral.ParamByName ('P'   ).AsString  := Orcamentos_ItensPRODUTO.Value ;
      DmVendas2.Geral.ParamByName ('G'   ).AsString  := Orcamentos_ItensGRADE.value   ;
      DmVendas2.Geral.ParamByName ('N'   ).AsString  := Sender.Value                 ;

      DmVendas2.Geral.open;

      IF DmVendas2.Geral.FIELDS[0].ISNULL
      THEN BEGIN
           MessageDlg('Número Inexistente nesta Grade, Verifique!',MtError,[MbOk],0);
           Abort;
      END;
  end;
end;

procedure TFrmOrcamentos.OrcamentosCalcFields(DataSet: TDataSet);
begin
  OrcamentosGeral.Value  := arredonda(OrcamentosTotal.Value + OrcamentosDESC_ACRESC.Value,2) ;
  OrcamentosGeral2.Value := arredonda(OrcamentosTotal_2.Value + OrcamentosDESC_ACRESC_2.Value,2) ;
end;

procedure TFrmOrcamentos.OrcamentosNewRecord(DataSet: TDataSet);
begin
     OrcamentosCNPJ.value := dmApp.cnpj;
     OrcamentosDESC_ACRESC.Value   := 0   ;
     OrcamentosCOMPROMETER_ESTOQUE.Value   := 'S';
     OrcamentosDESC_ACRESC_2.Value := 0   ;
     OrcamentosTOTAL.Value         := 0   ;
     OrcamentosStatus.Value       := 1 ;
     //TEMP
     OrcamentosUSUARIO.Value := DmApp.UsuarioCaixa ;
     OrcamentosDATA.Value    := DmApp.Data_Servidor;
end;

procedure TFrmOrcamentos.OrcamentosFORMA_PGTOValidate(Sender: TField);
begin
  If Sender.IsNull Then
         Exit ;

     DmVendas2.Valida_Forma.Close ;
     DmVendas2.Valida_Forma.ParamByName ('CNPJ'  ).AsString  := DmApp.Cnpj   ;
     DmVendas2.Valida_Forma.ParamByName ('CODIGO').AsInteger := Sender.Value ;
     DmVendas2.Valida_Forma.Prepare ;
     DmVendas2.Valida_Forma.Open ;

     If DmVendas2.Valida_FormaCODIGO.isNull then
     Begin
       MessageDlg('Forma de Pagamento Inexistente!', mtError, [mbOK], 0);
       Abort;
     end;
end;

procedure TFrmOrcamentos.OrcamentosPESSOA_FJValidate(Sender: TField);
begin
  if ((Sender.IsNull) OR (DmApp.CLIAVISTA = Sender.Value)) then
     begin
       OrcamentosNOME_CONSUMIDOR.Value := Uppercase(InputBox ('Nome do Consumidor', 'Nome',''));
       if (trim(OrcamentosNOME_CONSUMIDOR.Value) <> '') then
         OrcamentosNOME.Value := OrcamentosNOME_CONSUMIDOR.Value
       else
         OrcamentosNOME.Value := 'CONSUMIDOR';

       Exit ;
     end;

     If ( Sender.Value = 0 )
     then Begin
          If FrmOrcamentos <> Nil
          then begin
               FrmOrcamentos.LocCli := True ;
               Exit ;
          end;
     end;

     DmVendas2.Valida_Cliente.Close ;

     DmVendas2.Valida_Cliente.ParamByName ('CNPJ').AsString    := DmApp.Cnpj   ;
     DmVendas2.Valida_Cliente.ParamByName ('CODIGO').AsInteger := Sender.Value ;

     DmVendas2.Valida_Cliente.Prepare ;
     DmVendas2.Valida_Cliente.Open ;

     If DmVendas2.Valida_ClientePESSOA_FJ.isNull
     then Begin
          Showmessage ('Cliente Inexistente!');
          Abort;
     end;

     If Not DmVendas2.Valida_ClienteNOME.isNull
     then Begin
          OrcamentosNOME.Value := DmVendas2.Valida_ClienteNOME.Value ;
     end ;

     If Not DmVendas2.Valida_ClienteCOD_VEND.isNull
     then Begin
          OrcamentosVENDEDOR.Value    := DmVendas2.Valida_ClienteCOD_VEND.Value ;
     end;

     If Not DmVendas2.Valida_ClienteCOD_FPAGTO.isNull
     then Begin
          OrcamentosFORMA_PGTO.Value  := DmVendas2.Valida_ClienteCOD_FPAGTO.Value ;
     end;

     If Not DmVendas2.Valida_ClienteOBS.isNull
     then Begin
          Application.CreateForm(TFrmMensagemFaturamento, FrmMensagemFaturamento);
          FrmMensagemFaturamento.Showmodal ;
          FrmMensagemFaturamento.Free ;
          FrmMensagemFaturamento  := Nil;
     end;
end;

procedure TFrmOrcamentos.OrcamentosVENDEDORValidate(Sender: TField);
begin
 If Sender.IsNull
     Then
         Exit ;

     If ( Sender.Value = 0 )
     then Begin
          FrmOrcamentos.LocVen := True ;
          Exit ;
     end;

     DmVendas2.Geral.Close ;
     DmVendas2.Geral.Sql.Clear ;

     DmVendas2.Geral.Params.CreateParam ( FtString , 'E', PtInput );
     DmVendas2.Geral.Params.CreateParam ( FtInteger, 'C', PtInput );

     DmVendas2.Geral.Sql.Add (' Select Codigo From Fat_Vendedor Where Codigo = :C and CNPJ = :E ');

     DmVendas2.Geral.ParamByName ('E').AsString  := DmApp.Cnpj   ;
     DmVendas2.Geral.ParamByName ('C').AsInteger := Sender.Value ;

     DmVendas2.Geral.Prepare ;

     DmVendas2.Geral.Open ;

     If DmVendas2.Geral.Fields[0].isNull
     then Begin
          Showmessage ('Vendedor Inexistente!');
          Abort;
     end;
end;

procedure TFrmOrcamentos.OrcamentosSTATUSGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
 case Sender.Value of
    1 : Text := 'Aberto';
    2 : Text := 'Parc. Faturado';
    3 : Text := 'Faturado';
    4 : Text := 'Cancelado';
  end;
end;

procedure TFrmOrcamentos.OrcamentosSTATUSSetText(Sender: TField;
  const Text: String);
begin
  if Text = 'Aberto' then
    Sender.Value := 1
  else if (Text = 'Parc. Faturado') then
    Sender.Value := 2
  else if (Text = 'Faturado') then
    Sender.Value := 3
  else if (Text = 'Cancelado') then
    Sender.Value := 4;
end;

end.





