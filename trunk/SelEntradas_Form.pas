 unit SelEntradas_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, dxBarDBNav, dxBar,   dxCntner, dxEditor,
  dxEdLib, dxDBELib, StdCtrls, Db, IBCustomDataSet, dxDBEdtr, dxExEdtr,
  Buttons,     dxTL, dxDBCtrl, dxDBGrid,
  dxDBTLCl, dxGrClms,  IBquery,   dxTLClms, FileCtrl,
  cxPropertiesStore, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  Menus, cxControls, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxContainer, cxEdit,
  dxSkinsdxBarPainter, cxClasses, cxLabel, cxPC, cxButtons, ACBrNFe,
  dxmdaset, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxDBData, cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGridLevel, cxGridCustomView, cxGrid,
  cxGridCustomPopupMenu, cxGridPopupMenu, ACBrNFeDANFEClass,
  ACBrNFeDANFERave, IBStoredProc, cxCheckBox, cxTextEdit, cxDropDownEdit,
  cxCalendar, cxMaskEdit, cxButtonEdit;

type


  TFrmSelEntradas = class(TForm)
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
    ActIncluir: TAction;
    ActAlterar: TAction;
    Bevel1: TBevel;
    BtnFechar: TdxBarButton;
    Panel1: TPanel;
    ActFechar: TAction;
    DataSource: TDataSource;
    btnAlterar: TdxBarButton;
    dsFornecedores: TDataSource;
    opIncluir: TdxBarButton;
    kdofoco: TAction;
    ActExtornar: TAction;
    opExtornar: TdxBarButton;
    ActExcluir: TAction;
    Panel4: TPanel;
    BtnFaturarVenda: TcxButton;
    RzBitBtn2: TcxButton;
    RzBitBtn3: TcxButton;
    BtnExtornaVenda: TcxButton;
    BtnDevolveBalcao: TcxButton;
    ActImprimir: TAction;
    ActConfCampos: TAction;
    Panel6: TPanel;
    pc: TcxPageControl;
    dxTabSheet1: TcxTabSheet;
    Shape1: TShape;
    Panel5: TPanel;
    LblCaixa: TcxLabel;
    LblTitulo: TcxLabel;
    Image1: TImage;
    b2: TBevel;
    RzBitBtn13: TcxButton;
    ActExportarExcel: TAction;
    ActExportarHtml: TAction;
    dxBarButton1: TdxBarButton;
    ActImportaXML: TAction;
    mtbCabNF: TdxMemData;
    mtbItemNF: TdxMemData;
    mtbCabNFEMIT_CPF_CNPJ: TStringField;
    mtbCabNFEMIT_RAZAO_SOCIAL: TStringField;
    mtbCabNFEMIT_FANTASIA: TStringField;
    mtbCabNFEMIT_IE: TStringField;
    mtbCabNFEMIT_IM: TStringField;
    mtbCabNFEMIT_LOGRADOURO: TStringField;
    mtbCabNFEMIT_NUMERO: TStringField;
    mtbCabNFEMIT_COMPLEMENTO: TStringField;
    mtbCabNFEMIT_BAIRRO: TStringField;
    mtbCabNFEMIT_COD_IBGE_CIDADE: TIntegerField;
    mtbCabNFEMIT_CIDADE: TStringField;
    mtbCabNFEMIT_CEP: TStringField;
    mtbCabNFEMIT_COD_PAIS: TIntegerField;
    mtbCabNFEMIT_PAIS: TStringField;
    mtbCabNFEMIT_FONE: TStringField;
    mtbItemNFPRD_COD_PRODUTO: TStringField;
    mtbItemNFPRD_PRODUTO: TStringField;
    mtbItemNFPRD_COD_EAN: TStringField;
    mtbItemNFPRD_COD_NCM: TStringField;
    mtbItemNFPRD_ITEM: TIntegerField;
    mtbItemNFPRD_EXT_IPI: TStringField;
    mtbItemNFPRD_CFOP: TStringField;
    mtbItemNFPRD_UN_COMERCIAL: TStringField;
    mtbItemNFPRD_QTDE_COMERCIAL: TFloatField;
    mtbItemNFPRD_VLR_UN_COMERCIAL: TFloatField;
    mtbItemNFPRD_VLR_PRODUTO: TStringField;
    mtbItemNFPRD_UND_TRIBUTADA: TStringField;
    mtbItemNFPRD_QTDE_TRIBUTADA: TFloatField;
    mtbItemNFPRD_VLR_UN_TRIBUTADA: TFloatField;
    mtbItemNFPRD_VLR_FRETE: TFloatField;
    mtbItemNFPRD_VLR_SEGURO: TFloatField;
    mtbItemNFPRD_VLR_OUTROS: TFloatField;
    mtbItemNFPRD_VLR_DESCONTO: TFloatField;
    Grid: TcxGrid;
    GridTV: TcxGridDBBandedTableView;
    GridLV: TcxGridLevel;
    dxBarButton2: TdxBarButton;
    Panel2: TPanel;
    Label1: TcxLabel;
    Label2: TcxLabel;
    Label3: TcxLabel;
    Label4: TcxLabel;
    lblnome: TcxLabel;
    cxGridPopupMenu1: TcxGridPopupMenu;
    GridTVNDOCTO: TcxGridDBBandedColumn;
    GridTVNDOCTOINT: TcxGridDBBandedColumn;
    GridTVPESSOA_FJ: TcxGridDBBandedColumn;
    GridTVDATA_NF: TcxGridDBBandedColumn;
    GridTVNATUREZA: TcxGridDBBandedColumn;
    GridTVNOME_RAZAO: TcxGridDBBandedColumn;
    GridTVDATA_REF: TcxGridDBBandedColumn;
    GridTVDATA_ENT: TcxGridDBBandedColumn;
    GridTVSERIE_NF: TcxGridDBBandedColumn;
    GridTVTAXAS: TcxGridDBBandedColumn;
    GridTVVLR_EMBALAGEM: TcxGridDBBandedColumn;
    GridTVVLR_FRETE: TcxGridDBBandedColumn;
    GridTVVLR_DESCONTO: TcxGridDBBandedColumn;
    GridTVVLR_SEGURO: TcxGridDBBandedColumn;
    GridTVVLR_BC_ICM: TcxGridDBBandedColumn;
    GridTVPERC_ICM: TcxGridDBBandedColumn;
    GridTVVLR_ICM: TcxGridDBBandedColumn;
    GridTVVLR_IPI: TcxGridDBBandedColumn;
    GridTVVLR_ICM_SUBS: TcxGridDBBandedColumn;
    GridTVPROC_QTD: TcxGridDBBandedColumn;
    GridTVPROC_FIN: TcxGridDBBandedColumn;
    GridTVVLR_TOTAL_NF: TcxGridDBBandedColumn;
    GridTVFRETE_LF: TcxGridDBBandedColumn;
    GridTVVLR_PRODUTOS: TcxGridDBBandedColumn;
    GridTVPROC_CUSTO: TcxGridDBBandedColumn;
    GridTVNDOCTOINT2: TcxGridDBBandedColumn;
    stgFrmSelEntrada: TcxPropertiesStore;
    btnGerarSaida: TcxButton;
    ActGerarVenda: TAction;
    GridTVCOD_VENDA: TcxGridDBBandedColumn;
    spGeraFaturamento: TIBStoredProc;
    CmbFornecedor: TcxButtonEdit;
    edDtInicial: TcxDateEdit;
    edDtFinal: TcxDateEdit;
    edNDocto: TcxTextEdit;
    cbAbertas: TcxCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dxDBEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure pnlClientResize(Sender: TObject);
    procedure DataSourceStateChange(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure CmbTipoPessoaEnter(Sender: TObject);
    procedure btnFiltrarClick(Sender: TObject);
    procedure EdDataNotaKeyPress(Sender: TObject; var Key: Char);
    procedure Panel2Exit(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActAlterarExecute(Sender: TObject);
    procedure Panel2Enter(Sender: TObject);
    procedure ActExtornarExecute(Sender: TObject);
    procedure cmbFornecedorExit(Sender: TObject);
    procedure cmbFornecedorEnter(Sender: TObject);
    procedure CmbFornecedorButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure ActExcluirExecute(Sender: TObject);
    Function  EXTORNAENTRADAS: Boolean ;
    procedure ActImprimirExecute(Sender: TObject);
    procedure ActExportarExcelExecute(Sender: TObject);
    procedure ActImportaXMLExecute(Sender: TObject);
    procedure GridTVKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormActivate(Sender: TObject);
    procedure cbAbertasExit(Sender: TObject);
    procedure ActGerarVendaExecute(Sender: TObject);
  private
    { Private declarations }
    DragNode: TdxTreeListNode;    
    Procedure Filtrar;

  public
    { Public declarations }
    Retorno: Integer;
    procedure AlteraEntrada(Pessoa_fj:integer;ndocto:string);

  end;

var
  FrmSelEntradas: TFrmSelEntradas;

implementation

uses Entradas_DM, Main, Usuarios_DM, Funcoes, Application_DM, Entradas_Form,
  LocalizarProd_DM, Cadastros_DM, Localizar_Fornecedor, Entradas_FRel, Relatorios_DM,
  Localizar_Produto_Cadastro_Auto, WizardXML_Form, Gerar_FatSaida;

  {$R *.DFM}

Procedure TFrmSelEntradas.Filtrar;
Var
   Cont : Integer;
Begin
  With DmEntradas do
  begin
       Cont := 0;
       SelEntrada.Sql.Clear    ;
       SelEntrada.Sql.Add ( ' SELECT * FROM VER_EST_ENTRADAS_CONFERENTE ( :CNPJ, :DT_INICIAL, :DT_FINAL ) ' );

       If ((edDtInicial.Text = '  /  /    ' ) or (edDtInicial.Text = '' )) Then
         SelEntrada.ParamByName ( 'DT_INICIAL' ).AsDate := StrToDate('01/01/1900')
       Else
         SelEntrada.ParamByName ( 'DT_INICIAL' ).AsDate := edDtInicial.Date;

       If ((edDtFinal.Text = '  /  /    ') OR (edDtFinal.Text = '')) Then
         SelEntrada.ParamByName ( 'DT_FINAL' ).AsDate := StrToDate('01/01/9999')
       Else
         SelEntrada.ParamByName ( 'DT_FINAL' ).AsDate := edDtFinal.Date;

       //SelEntrada ENVIADAS NO CAIXA
       If cbAbertas.Checked Then
       begin
         If Cont = 0 then
         begin
           SelEntrada.Sql.Add(' Where ( PROC_QTD <> :ENV and PROC_FIN <> :ENV ) ' );
           SelEntrada.ParamByName('ENV').AsString := 'S' ;
           Cont := 1;
         end
         else
         begin
           SelEntrada.Sql.Add ( ' And ( PROC_QTD <> :ENV and PROC_FIN <> :ENV ) ' );
           SelEntrada.ParamByName ( 'ENV' ).AsString := 'S' ;
           Cont := 1;
         end;
       end;

       //
       If trim(CmbFornecedor.Text) <> '' Then
       Begin
         If Cont = 0 then
         begin
           SelEntrada.Sql.Add ( ' Where PESSOA_FJ = :FORNECEDOR ' );
           SelEntrada.ParamByName ( 'FORNECEDOR' ).AsInteger := strtoint(trim(CmbFORNECEDOR.text));
           Cont := 1;
         END
         ELSE
         BEGIN
           SelEntrada.Sql.Add ( ' And PESSOA_FJ = :FORNECEDOR ' );
           SelEntrada.ParamByName ( 'FORNECEDOR' ).AsInteger := strtoint(trim(CmbFORNECEDOR.text));
           Cont := 1;
         END;
       end;

       If Trim(edNDocto.Text) <> '' Then
       begin
         If Cont = 0 then
         begin
           SelEntrada.Params.CreateParam (FtString, 'DOC', PtInput);
             SelEntrada.Sql.Add ( ' Where NDOCTO = :DOC ' );

                 SelEntrada.ParamByName ( 'DOC' ).AsString := edNDocto.Text;

                 Cont := 1;
            end
            else begin
                 SelEntrada.Params.CreateParam (FtString, 'DOC', PtInput);

                 SelEntrada.Sql.Add ( ' and NDOCTO = :DOC ' );

                 SelEntrada.ParamByName ( 'DOC' ).AsString := edNDocto.Text;
            end;
       end;

       If Cont = 0
       then begin
            SelEntrada.Params.CreateParam (FtString, 'SER', PtInput);

            SelEntrada.Sql.Add ( ' Where SERIE_NF <> :SER ' );

            SelEntrada.ParamByName ( 'SER' ).AsString := 'VND';

            Cont := 1;
       end
       else begin
            SelEntrada.Params.CreateParam (FtString, 'SER', PtInput);

            SelEntrada.Sql.Add ( ' and SERIE_NF <> :SER ' );

            SelEntrada.ParamByName ( 'SER' ).AsString := 'VND';
       end;

       //Nome do cliente
       SelEntrada.Sql.Add ( ' order by NDOCTO ' );

       SelEntrada.Prepare;
       SelEntrada.Open   ;
  end;
End;

procedure TFrmSelEntradas.FormClose(Sender: TObject; var Action: TCloseAction);
var
  Diretorio : string;
begin
     If MessageDlg('Deseja sair do formulário?', mtConfirmation, [mbOK, mbCancel], 0) = MROK
     THEN BEGIN
          dmApp.ZeraCaixaUsuario(owner);

          If DataSource.DataSet.Tag = 0 Then
            DataSource.DataSet.Close;

          If dsFornecedores.DataSet.Tag = 0 Then
          dsFornecedores.DataSet.Close;
          //
          Frm_Localizar_Fornecedor.Free ;
          Frm_Localizar_Fornecedor := Nil ;


          DMEntradas.Free;
          DMEntradas := Nil;

          Action := caFree;
          FrmSelEntradas := Nil;

          If FrmMain.MDIChildCount = 1 Then
          FrmMain.PnlClient.Visible := True;
     end
     else
       Action := Canone ;

     dmApp.ManFilterGrid(GridTV,'C:\Sistemas\HelpStore\filtros\FiltroGrdEntradaProd.flt');
end;

procedure TFrmSelEntradas.FormShow(Sender: TObject);
begin
  IniciaComponentes ( Self as TForm );
  Try
     If Not(dsFornecedores.DataSet.Active) Then
       dsFornecedores.DataSet.Open;

     btnGerarSaida.Visible := (dmApp.EXIBE_CTR_OBRAS = 'S');

     If DmApp.CARREGAR_ARQ = 'S'
     THEN begin

         Application.CreateForm(TFrm_Localizar_Fornecedor, Frm_Localizar_Fornecedor) ;

         Frm_Localizar_Fornecedor.GRID.Options := Frm_Localizar_Fornecedor.GRID.Options + [egoLoadAllRecords] ;
     end
     ELSE
         Application.CreateForm(TFrm_Localizar_Fornecedor, Frm_Localizar_Fornecedor) ;

     Filtrar;
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
  CmbFornecedor.SetFocus ;
end;

procedure TFrmSelEntradas.FormCreate(Sender: TObject);
begin
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, LblTitulo.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);

  dmApp.ManFilterGrid(GridTV,'C:\Sistemas\HelpStore\filtros\FiltroGrdEntradaProd.flt',false);
end;

procedure TFrmSelEntradas.dxDBEdit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TFrmSelEntradas.pnlClientResize(Sender: TObject);
begin
//  b2.Width := pnlClient.Width - 17;
end;

procedure TFrmSelEntradas.DataSourceStateChange(Sender: TObject);
begin
  //
  If Navigator.DataSource.State in dsEditModes Then
     Begin
       ActIncluir.Enabled   := False;
       ActAlterar.Enabled   := False;
       ActFechar.Enabled    := False;
     End
  Else
     Begin
       ActIncluir.Enabled   := ActIncluir.Tag = 1;
       ActAlterar.Enabled   := ActAlterar.Tag = 1;
       ActFechar.Enabled    := True;
     End;
end;

procedure TFrmSelEntradas.ActFecharExecute(Sender: TObject);
begin
  If pc.ActivePageIndex <> 0 Then
     pc.ActivePageIndex := 0
  Else
     Begin
       If FrmSelEntradas.FormStyle = fsMDIChild Then
          FrmMain.opFechar.OnClick(FrmMain.opFechar)
       Else
          Close;
     End;
end;

procedure TFrmSelEntradas.CmbTipoPessoaEnter(Sender: TObject);
begin
  (Sender as TdxDBPickEdit).Text := (Sender as TdxDBPickEdit).DataSource.DataSet.FieldByName((Sender as TdxDBPickEdit).DataField).Text;
  (Sender as TdxDBPickEdit).SelectAll;
end;

procedure TFrmSelEntradas.btnFiltrarClick(Sender: TObject);
begin
  //FilterDialog.Execute;
  DMApp.Filtrar(DataSource);
end;

procedure TFrmSelEntradas.EdDataNotaKeyPress(Sender: TObject; var Key: Char);
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

procedure TFrmSelEntradas.Panel2Exit(Sender: TObject);
begin
  Filtrar;
end;

procedure TFrmSelEntradas.ActIncluirExecute(Sender: TObject);
begin
  //
  DMEntradas.PessoaFJ := 0;
  DMEntradas.NDocto   := '';
  DMEntradas.Tag      := 1;
  //
  FrmEntradas := TFrmEntradas.Create(Self);

  FrmEntradas.Incluir := True ;
  
  FrmEntradas.Showmodal ;
  FrmEntradas.Free      ;
  FrmEntradas := Nil    ;
end;

procedure TFrmSelEntradas.ActAlterarExecute(Sender: TObject);
begin
  AlteraEntrada(DataSource.DataSet.FieldByName('PESSOA_FJ').asInteger,DataSource.DataSet.FieldByName('NDOCTO').asString);
end;

procedure TFrmSelEntradas.Panel2Enter(Sender: TObject);
begin
  DataSource.DataSet.Close;
end;


procedure TFrmSelEntradas.ActExtornarExecute(Sender: TObject);
var
   Alterou: Boolean;
begin
  with dmEntradas do
  begin
    if SelEntrada.RecordCount = 0 Then
      Exit;

    Alterou := False;

    if ((SelEntradaPROC_QTD.asString = 'N') and (SelEntradaPROC_FIN.asString = 'N') and (SelEntradaPROC_CUSTO.asString = 'N')) then
    begin
      Application.MessageBox('Não há dados para serem estornados nesta NF','Aviso',mb_iconerror+mb_ok);
      exit;
    end;

    If MessageBox(Handle,'Tem certeza que deseja Estornar esta Nota Fiscal de Entrada ?','Atenção !!!',MB_YESNO+MB_ICONQUESTION)=IDYES Then
    Begin
      // Tentando Estornar a Quantidade
      if (SelEntradaPROC_QTD.asString = 'S') then
      begin
        if DMApp.Ext_NF_Ent_Qtd(DmaPP.Cnpj,SelEntradaNDOCTO.asString,SelEntradaPESSOA_FJ.asInteger) = 1 then
          Alterou := True
        else
        begin
          MessageDlg('Ocorreu um erro na tentativa de estornar a Quantidade, contate o suporte técnico !',MtError,[MbOk],0);
          DMApp.Transaction.RollbackRetaining;
          Exit;
        end;
      end;
      // Tentando Estornar o Custo

      if (SelEntradaPROC_CUSTO.asString = 'S') then
      begin
        If DMApp.Ext_NF_Ent_Custo(DmaPP.Cnpj,SelEntradaNDOCTO.asString,SelEntradaPESSOA_FJ.asInteger) = 1 Then
          Alterou := True
        else
        begin
          MessageDlg('Ocorreu um erro na tentativa de estornar os Custos, contate o suporte técnico !',MtError,[MbOk],0);
          DMApp.Transaction.RollbackRetaining;
          Exit;
        end;
      end;

      // Tentando Estornar o Financeiro
      if (SelEntradaPROC_FIN.asString = 'S') then
      begin
        If DMApp.Ext_NF_Ent_Fin(DmaPP.Cnpj,SelEntradaNDOCTO.asString,SelEntradaPESSOA_FJ.asInteger) = 1 then
          Alterou := True
        Else
        Begin
          MessageDlg('Ocorreu um erro na tentativa de estornar o Financeiro, contate o suporte técnico !',MtError,[MbOk],0);
          DMApp.Transaction.RollbackRetaining;
          Exit;
        end;
      end;

      Application.MessageBox('Estorno efetuado com sucesso','Aviso',mb_iconinformation + mb_ok);
    End;

    Panel2.SetFocus ;
  end;
end;

procedure TFrmSelEntradas.cmbFornecedorExit(Sender: TObject);
begin
     TiraCorFundo( Sender );

     With DmEntradas do
     begin
          If Trim(CmbFornecedor.Text) <> ''
          then begin
               If not SelFornecedor.Active
               then
                   SelFornecedor.Open ;

               If SelFornecedor.locate ( 'PESSOA_FJ', CmbFornecedor.Text, [] )
               then begin
                    cmbFornecedor.Text  := DMEntradas.SelFornecedorPESSOA_FJ.Text      ;
                    lblnome.Caption  := DMEntradas.SelFornecedorNOME_RAZAO.value ;
               end
               else begin
                    cmbFornecedor.Text  := '' ;
                    lblnome.Caption  := '' ;
               end;
          end
          else begin
               cmbFornecedor.Text  := ''  ;
               lblnome.Caption  := ''  ;
          end;
     end;

end;

procedure TFrmSelEntradas.cmbFornecedorEnter(Sender: TObject);
begin
     CorFundo ( Sender );
end;

procedure TFrmSelEntradas.CmbFornecedorButtonClick(Sender: TObject; AbsoluteIndex: Integer);
begin
     Application.CreateForm(TFrm_Localizar_Fornecedor, Frm_Localizar_Fornecedor);

     Frm_Localizar_Fornecedor.DSource.dataset := DmEntradas.SelFornecedor ;

     if ( Frm_Localizar_Fornecedor.showmodal = mrOk )
     Then Begin
          CmbFornecedor.Text := IntToStr(Frm_Localizar_Fornecedor.CampTrecho)    ;
          lblnome.Caption := DMEntradas.SelFornecedorNOME_RAZAO.value ;
     end;

     Frm_Localizar_Fornecedor.Free ;
     Frm_Localizar_Fornecedor := Nil;
end;

procedure TFrmSelEntradas.ActExcluirExecute(Sender: TObject);
VAR
   MSG: String;
begin

  with dmEntradas do
  begin
    if ((SelEntradaPROC_FIN.value = 'S') or (SelEntradaPROC_QTD.value = 'S') or (SelEntradaPROC_CUSTO.value = 'S')) then
    begin
      Application.MessageBox('Impossível excluir. Nota Fiscal está fechada','Atenção',mb_iconerror+mb_ok);
      exit;
    end
  end;

  if (Application.MessageBox('Deseja realmente excluir esta Nota Fiscal?','Atenção',mb_iconquestion+mb_yesno)=id_no) then
     exit;

  DmApp.Exclui_Entrada(DMEntradas.SelEntradaPESSOA_FJ.value, DMEntradas.SelEntradaNDOCTO.value);

  DMEntradas.SelEntrada.Close ;
  DMEntradas.SelEntrada.Open;
end;


Function TFrmSelEntradas.EXTORNAENTRADAS: Boolean ;
Var
   I: Integer;
begin
     I := 0;

     //
     If DataSource.DataSet.RecordCount = 0
     Then
         Exit;

     //
     If (DataSource.DataSet.FieldByName('PROC_QTD').asString = 'N') And
        (DataSource.DataSet.FieldByName('PROC_FIN').asString = 'N') And
        (DataSource.DataSet.FieldByName('PROC_CUSTO').asString = 'N')
     Then
     Begin
          //
          Result := true ;
          Exit;
     End;

     //
     IF (DataSource.DataSet.FieldByName('PROC_QTD').asString = 'S')
     Then Begin
          // Tentando Extornar a Quantidade
          If DMApp.Ext_NF_Ent_Qtd(DmaPP.Cnpj,
                             DataSource.DataSet.FieldByName('NDOCTO').asString,
                             DataSource.DataSet.FieldByName('PESSOA_FJ').asInteger) = 1
          Then Begin
               I := I + 1;
               //
          End
          Else Begin
               //
               MessageDlg('Ocorreu um erro na tentativa de estornar a Quantidade, contate o suporte técnico !',MtError,[MbOk],0);
               //
               DMApp.Transaction.RollbackRetaining;
               //
               result := false ;

               Exit;
          End;
     End;

     //CUSTO
     IF (DataSource.DataSet.FieldByName('PROC_CUSTO').asString = 'S')
     Then Begin
          // Tentando Extornar o Financeiro
          If DMApp.Ext_NF_Ent_Custo(DmaPP.Cnpj,
                               DataSource.DataSet.FieldByName('NDOCTO').asString,
                               DataSource.DataSet.FieldByName('PESSOA_FJ').asInteger) = 1
          Then Begin
               I := I + 1;
               //
          End
          Else Begin
               //
               MessageDlg('Ocorreu um erro na tentativa de estornar o Custo, contate o suporte técnico !',MtError,[MbOk],0);
               //
               DMApp.Transaction.RollbackRetaining;
               //
               result := false ;

               Exit;
          end;
     End ;

     IF (DataSource.DataSet.FieldByName('PROC_FIN').asString = 'S')
     Then Begin
          // Tentando Extornar o Financeiro
          If DMApp.Ext_NF_Ent_Fin(DmaPP.Cnpj,
                               DataSource.DataSet.FieldByName('NDOCTO').asString,
                               DataSource.DataSet.FieldByName('PESSOA_FJ').asInteger) = 1
          Then Begin
               I := I + 1;
               //
          End
          Else Begin
               //
               MessageDlg('Ocorreu um erro na tentativa de estornar o Financeiro, contate o suporte técnico !',MtError,[MbOk],0);
               //
               DMApp.Transaction.RollbackRetaining;
               //
               result := false ;

               Exit;
          end;
     End ;

     IF I = 0
     THEN
         result := true
     ELSE
         Result := False ;
end;

procedure TFrmSelEntradas.ActImprimirExecute(Sender: TObject);
begin
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FRelEntradas', True)) Then
     Exit;
  { * * * * * }
  If FRelEntradas = Nil Then
     Begin
       //
       FRelEntradas := TFRelEntradas.Create(Self);
       FRelEntradas.ShowModal;
     End;
end;

procedure TFrmSelEntradas.ActExportarExcelExecute(Sender: TObject);
begin
   dmApp.Save('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', 'EntradaDeProduto.xls', Grid)
end;

procedure TFrmSelEntradas.ActImportaXMLExecute(Sender: TObject);
begin
  try
    frmImportaNFe := TfrmImportaNFe.Create(Self);
    frmImportaNFe.ShowModal;
  finally
    frmImportaNFe.Destroy;
  end;
end;

procedure TFrmSelEntradas.GridTVKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If (( Key = VK_RETURN ) and ( ActAlterar.Enabled )) Then
    ActAlterar.Execute;
end;

procedure TFrmSelEntradas.FormActivate(Sender: TObject);
begin
  FrmSelEntradas.WindowState := wsMaximized;
end;

procedure TFrmSelEntradas.cbAbertasExit(Sender: TObject);
begin
  TiraCorFundo( Sender );
  Grid.SetFocus;
end;

procedure TFrmSelEntradas.AlteraEntrada(Pessoa_fj: integer;
  ndocto: string);
begin
  //
  If (ndocto = '') Then
  begin
     MessageDlg('Você deve selecionar uma Nota Fiscal de Entrada para alterá-la !',MtError,[MbOk],0);
     cmbFornecedor.SetFocus;
     Exit;
  end;

  DMEntradas.PessoaFJ := PESSOA_FJ;
  DMEntradas.NDocto   := NDOCTO;

  FrmEntradas := TFrmEntradas.Create(FrmEntradas);
  FrmEntradas.Incluir := False ;
  FrmEntradas.Showmodal ;
  FrmEntradas.Free      ;
  FrmEntradas := Nil    ;
  Filtrar;
end;

procedure TFrmSelEntradas.ActGerarVendaExecute(Sender: TObject);
begin
   if (DMEntradas.SelEntradaNDOCTO.asString = '') then
    begin
      Application.MessageBox('Defina um registro de Entrada para Gerar o Faturamento de Saída','Aviso',mb_iconerror+mb_ok);
      exit;
    end;

    if (DMEntradas.SelEntradaCOD_VENDA.asString <> '') then
    begin
      Application.MessageBox(Pchar('Faturamento de Saída já gerado com o código: '+DMEntradas.SelEntradaCOD_VENDA.asString),'Aviso',mb_iconerror+mb_ok);
      exit;
    end;

   if (Application.MessageBox(Pchar('Deseja gerar o Faturamento de Saída para a entrada: '+DMEntradas.SelEntradaNDOCTO.asString+' ?'),'Atenção',mb_iconquestion+mb_yesno)=id_no) then
     exit;

   try
      Application.CreateForm(TFrmGeraFatSaida, FrmGeraFatSaida);
      if (FrmGeraFatSaida.ShowModal = MROK) then
      begin
        spGeraFaturamento.parambyname('cnpj').value := dmApp.cnpj;
        spGeraFaturamento.parambyname('codigo').value := DMEntradas.SelEntradaNDOCTO.Value;
        spGeraFaturamento.parambyname('PESSOA_FJ').value := DMEntradas.SelEntradaPESSOA_FJ.Value;
        spGeraFaturamento.parambyname('CFOP').value := FrmGeraFatSaida.CmbOP.LookupKeyValue;
        spGeraFaturamento.parambyname('CONTRATO').value := FrmGeraFatSaida.cmbContrato.LookupKeyValue;
        spGeraFaturamento.parambyname('VENDEDOR').value := FrmGeraFatSaida.cmbVendedor.LookupKeyValue;
        spGeraFaturamento.ExecProc;

        Application.MessageBox(Pchar('Faturamento :'+spGeraFaturamento.parambyname('COD_VENDA').asString+' gerado com sucesso'),'Aviso',mb_iconinformation+mb_ok);

        Filtrar;
      end;

    except
           On E:Exception Do
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
    end;
end;

end.
