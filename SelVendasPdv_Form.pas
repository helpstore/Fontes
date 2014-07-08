 unit SelVendasPdv_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, dxBarDBNav, dxBar,   dxCntner, dxEditor,
  dxEdLib, dxDBELib, StdCtrls, Db, IBCustomDataSet, dxDBEdtr, dxExEdtr,
  Buttons,     dxTL, dxDBCtrl, dxDBGrid,
  dxDBTLCl, dxGrClms,  IBquery,   dxTLClms, FileCtrl,
  cxPropertiesStore, dxSkinsCore, dxSkinsdxBarPainter, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, cxClasses, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Menus, cxControls, dxSkinscxPCPainter,
  cxContainer, cxEdit, cxLabel, cxPC, cxButtons;

type
  TSaveMethod = procedure (const FileName: String; ASaveAll: Boolean) of object;

  TFrmSelVendasPdv = class(TForm)
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
    dsClientes: TDataSource;
    opIncluir: TdxBarButton;
    kdofoco: TAction;
    ActExcluir: TAction;
    BntExcluir: TdxBarButton;
    ActPaginaDn: TAction;
    ActPagUp: TAction;
    Panel4: TPanel;
    BtnFaturarVenda: TcxButton;
    RzBitBtn2: TcxButton;
    RzBitBtn3: TcxButton;
    BtnExtornaVenda: TcxButton;
    ActImprimir: TAction;
    ActBaixar: TAction;
    BtnRecebimetos: TcxButton;
    BtnExportarExcel: TcxButton;
    BtnExportarHtml: TcxButton;
    RzBitBtn4: TcxButton;
    ActConfCampos: TAction;
    ActExportarExcel: TAction;
    ActExportarHtml: TAction;
    SaveDialog: TSaveDialog;
    Panel6: TPanel;
    pc: TcxPageControl;
    dxTabSheet1: TcxTabSheet;
    Shape1: TShape;
    pnlCampos: TPanel;
    TLCustomize: TdxTreeList;
    TLCustomizeColumn: TdxTreeListColumn;
    TLCustomizeIsVisible: TdxTreeListCheckColumn;
    Panel3: TPanel;
    Panel2: TPanel;
    Label1: TcxLabel;
    Label2: TcxLabel;
    Label3: TcxLabel;
    Label4: TcxLabel;
    lblnome: TcxLabel;
    edDtInicial: TdxDateEdit;
    edDtFinal: TdxDateEdit;
    edNDocto: TdxEdit;
    CmbCliente: TdxButtonEdit;
    dxTabSheet2: TcxTabSheet;
    Panel5: TPanel;
    b2: TBevel;
    Image1: TImage;
    LblTitulo: TcxLabel;
    LblCaixa: TcxLabel;
    pnlCamposPessoa: TPanel;
    TLCustomizePessoa: TdxTreeList;
    dxTreeListColumn1: TdxTreeListColumn;
    dxTreeListCheckColumn1: TdxTreeListCheckColumn;
    GridPessoa: TdxDBGrid;
    GridPessoaEMPRESA: TdxDBGridMaskColumn;
    GridPessoaPESSOA_FJ: TdxDBGridMaskColumn;
    GridPessoaCODIGO: TdxDBGridMaskColumn;
    GridPessoaNOME_RAZAO: TdxDBGridMaskColumn;
    GridPessoaFANTASIA: TdxDBGridMaskColumn;
    GridPessoaCPF_CGC: TdxDBGridMaskColumn;
    GridPessoaBLOQUEADO: TdxDBGridMaskColumn;
    GridPessoaCLASSIFICACAO: TdxDBGridMaskColumn;
    GridPessoaUF: TdxDBGridMaskColumn;
    GridPessoaFONE: TdxDBGridMaskColumn;
    GridPessoaORDEM: TdxDBGridMaskColumn;
    GridPessoaENDERECO: TdxDBGridMaskColumn;
    stgFatProdPDV: TcxPropertiesStore;
    GRID: TdxDBGrid;
    GridPessoaEMAIL: TdxDBGridMaskColumn;
    GRIDPESSOA_FJ: TdxDBGridMaskColumn;
    GRIDCODIGO: TdxDBGridMaskColumn;
    GRIDDATA: TdxDBGridDateColumn;
    GRIDFECHADA: TdxDBGridMaskColumn;
    GRIDHISTORICO: TdxDBGridMaskColumn;
    GRIDVENDEDOR: TdxDBGridMaskColumn;
    GRIDUSUARIO: TdxDBGridMaskColumn;
    GRIDNUM_NF: TdxDBGridMaskColumn;
    GRIDNUM_CUPOM: TdxDBGridMaskColumn;
    GRIDNATUREZA: TdxDBGridMaskColumn;
    GRIDOBSERVACAO: TdxDBGridMaskColumn;
    GRIDNOMEVENDEDOR: TdxDBGridMaskColumn;
    GRIDNOME: TdxDBGridMaskColumn;
    GRIDNOMENATUREZA: TdxDBGridMaskColumn;
    GRIDTIPO_VENDA: TdxDBGridMaskColumn;
    GRIDNOME_CONSUMIDOR: TdxDBGridMaskColumn;
    GRIDDESC_ACRES: TdxDBGridMaskColumn;
    GRIDORCAMENTO: TdxDBGridMaskColumn;
    GRIDLOCAL: TdxDBGridMaskColumn;
    GRIDTOTAL: TdxDBGridMaskColumn;
    GRIDVLR_TOTAL: TdxDBGridMaskColumn;
    GRIDDATA_CAIXA: TdxDBGridDateColumn;
    GRIDCONTA_CAIXA: TdxDBGridMaskColumn;
    GRIDENVIADA_CX: TdxDBGridMaskColumn;
    GRIDBASE_ICM: TdxDBGridMaskColumn;
    GRIDICM: TdxDBGridMaskColumn;
    GRIDBASE_ICM_SUBST: TdxDBGridMaskColumn;
    GRIDVALOR_ICM_SUBST: TdxDBGridMaskColumn;
    GRIDFRETE: TdxDBGridMaskColumn;
    GRIDSEGURO: TdxDBGridMaskColumn;
    GRIDDESPESAS: TdxDBGridMaskColumn;
    GRIDIPI: TdxDBGridMaskColumn;
    GRIDTOTAL_NOTA: TdxDBGridMaskColumn;
    GRIDCARGA: TdxDBGridMaskColumn;
    GRIDCANCELADA: TdxDBGridMaskColumn;
    GRIDSERIE: TdxDBGridMaskColumn;
    GRIDSELECIONADA: TdxDBGridMaskColumn;
    GRIDSTATUS_CARREGAMENTO: TdxDBGridMaskColumn;
    GRIDORDEM_CARGA: TdxDBGridMaskColumn;
    GRIDPSA_ATIVIDADE: TdxDBGridMaskColumn;
    GRIDPSA_BAIRRO: TdxDBGridMaskColumn;
    GRIDPSA_CELULAR: TdxDBGridMaskColumn;
    GRIDPSA_CEP: TdxDBGridMaskColumn;
    GRIDPSA_CIDADE: TdxDBGridMaskColumn;
    GRIDPSA_COMPLEMENTO: TdxDBGridMaskColumn;
    GRIDPSA_CONTATO: TdxDBGridMaskColumn;
    GRIDPSA_CONVENIO: TdxDBGridMaskColumn;
    GRIDPSA_CPF_CGC: TdxDBGridMaskColumn;
    GRIDPSA_DT_CADASTRO: TdxDBGridDateColumn;
    GRIDPSA_DT_NASCIMENTO: TdxDBGridDateColumn;
    GRIDPSA_EMISSOR: TdxDBGridMaskColumn;
    GRIDPSA_ENDERECO: TdxDBGridMaskColumn;
    GRIDPSA_FANTASIA: TdxDBGridMaskColumn;
    GRIDPSA_FAX: TdxDBGridMaskColumn;
    GRIDPSA_FONE: TdxDBGridMaskColumn;
    GRIDPSA_INSC_MUNIC: TdxDBGridMaskColumn;
    GRIDPSA_NOME_RAZAO: TdxDBGridMaskColumn;
    GRIDPSA_NUMERO: TdxDBGridMaskColumn;
    GRIDPSA_PESSOA: TdxDBGridMaskColumn;
    GRIDPSA_RG_IE: TdxDBGridMaskColumn;
    GRIDPSA_UF: TdxDBGridMaskColumn;
    GRIDLGD_NOME: TdxDBGridMaskColumn;
    GRIDBAI_NOME: TdxDBGridMaskColumn;
    GRIDCID_NOME: TdxDBGridMaskColumn;
    GRIDID_AGRUPADOR: TdxDBGridMaskColumn;
    GRIDENTREGA_FUTURA: TdxDBGridMaskColumn;
    GRIDATI_NOME: TdxDBGridMaskColumn;
    GRIDREG_NOME: TdxDBGridMaskColumn;
    GRIDPSA_EMAIL: TdxDBGridMaskColumn;
    Panel15: TPanel;
    GridPessoaNOME_REGIAO: TdxDBGridColumn;
    GridPessoaREGIAO: TdxDBGridColumn;
    GridPessoaATIVIDADE: TdxDBGridColumn;
    GridPessoaNOME_ATIVIDADE: TdxDBGridColumn;
    GridPessoaBAIRRO: TdxDBGridColumn;
    GridPessoaNOME_BAIRRO: TdxDBGridColumn;
    GridPessoaPESSOA: TdxDBGridColumn;
    GridPessoaCELULAR: TdxDBGridColumn;
    GridPessoaDT_NASCIMENTO: TdxDBGridColumn;
    GridPessoaRG_IE: TdxDBGridColumn;
    GridPessoaCIDADE: TdxDBGridMaskColumn;
    GridPessoaNOME_CIDADE: TdxDBGridMaskColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dxDBEdit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure pnlClientResize(Sender: TObject);
    procedure DataSourceStateChange(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure btnFiltrarClick(Sender: TObject);
    procedure EdDataNotaKeyPress(Sender: TObject; var Key: Char);
    procedure Panel2Exit(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActAlterarExecute(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Panel2Enter(Sender: TObject);
    procedure ActExcluirExecute(Sender: TObject);
    procedure ActPaginaDnExecute(Sender: TObject);
    procedure ActPagUpExecute(Sender: TObject);
    procedure CmbClienteEnter(Sender: TObject);
    procedure edDtInicialEnter(Sender: TObject);
    procedure edDtFinalEnter(Sender: TObject);
    procedure edNDoctoEnter(Sender: TObject);
    procedure CmbClienteExit(Sender: TObject);
    procedure edDtInicialExit(Sender: TObject);
    procedure edDtFinalExit(Sender: TObject);
    procedure edNDoctoExit(Sender: TObject);
    procedure CmbClienteButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure ActImprimirExecute(Sender: TObject);
    procedure ActBaixarExecute(Sender: TObject);
    procedure TLCustomizeDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure TLCustomizeDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure TLCustomizeStartDrag(Sender: TObject;
      var DragObject: TDragObject);
    procedure GRID_KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ActConfCamposExecute(Sender: TObject);
    procedure TLCustomizeIsVisibleToggleClick(Sender: TObject;
      const Text: String; State: TdxCheckBoxState);
    procedure ActExportarExcelExecute(Sender: TObject);
    procedure ActExportarHtmlExecute(Sender: TObject);
    procedure Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
    procedure dxTreeListCheckColumn1ToggleClick(Sender: TObject;
      const Text: String; State: TdxCheckBoxState);
    Procedure SetaControles;
    procedure pcChange(Sender: TObject);
  private
    { Private declarations }
    DragNode: TdxTreeListNode;
    procedure Synchronize;
    procedure SynchronizePessoa;           
    Procedure Filtrar;
  public
    { Public declarations }
  end;

var
  FrmSelVendasPdv: TFrmSelVendasPdv;
  FinalArq, FinalCli: Boolean ;
  Chamou : Boolean ;

implementation

uses Vendas_DM,
     Main,
     Usuarios_DM,
     Funcoes,
     Application_DM,
     VendasPdv_Form,
     LocalizarProd_DM,
     FaturaVenda_Form,
     Splash_Form,
     Localizar_Cliente,
     VendasPdvItens_Form,
     EntraNumeroInteiro_Form,
     EnviaCaixa_FRel,
     Financeiro_Dm, Baixa_Receber_Multiplos_Parc_Form,
  Localizar_Produto_Cadastro_Auto;

  {$R *.DFM}

Procedure TFrmSelVendasPdv.Filtrar;
Var
   Cont: Integer ;
Begin
  //
  If DataSource.DataSet.Active Then
     DataSource.DataSet.Close;

  With DmVendas do
  begin
       Cont := 0;
       SelVendasPdv.Sql.Clear    ;
       SelVendasPdv.Params.Clear ;

       SelVendasPdv.Sql.Add ( ' SELECT * FROM VER_VENDAS ( :CNPJ, :TP ) ' );

       SelVendasPdv.Params.CreateParam (FtString, 'CNPJ', PtInput);
       SelVendasPdv.Params.CreateParam (FtString, 'TP'  , PtInput);

       SelVendasPdv.ParamByName ( 'TP' ).AsString := 'N';

       //VENDAS ENVIADAS NO CAIXA
       If DmApp.VER_ENVIADAS <> 'S'
       Then begin
            SelVendasPdv.Params.CreateParam (FtString, 'ENV', PtInput);

            SelVendasPdv.Sql.Add ( ' Where ENVIADA_CX = :ENV ' );

            SelVendasPdv.ParamByName ( 'ENV' ).AsString := 'N' ;

            Cont := 1;
       end
       ELSE BEGIN
            SelVendasPdv.Params.CreateParam (FtString, 'ENV', PtInput);

            SelVendasPdv.Sql.Add ( ' Where ENVIADA_CX <> :ENV ' );

            SelVendasPdv.ParamByName ( 'ENV' ).AsString := 'X' ;

            Cont := 1;
       END;

       //
       If trim(CmbCliente.Text) <> ''
       Then Begin
            If Cont = 0
            then begin
                 SelVendasPdv.Params.CreateParam (FtInteger, 'CLIENTE', PtInput);

                 SelVendasPdv.Sql.Add ( ' Where PESSOA_FJ = :CLIENTE ' );

                 SelVendasPdv.ParamByName ( 'CLIENTE' ).AsInteger := strtoint(trim(CmbCliente.text));

                 Cont := 1;
            END
            ELSE BEGIN
                 SelVendasPdv.Params.CreateParam (FtInteger, 'CLIENTE', PtInput);

                 SelVendasPdv.Sql.Add ( ' And PESSOA_FJ = :CLIENTE ' );

                 SelVendasPdv.ParamByName ( 'CLIENTE' ).AsInteger := strtoint(trim(CmbCliente.text));

                 Cont := 1;
            END;
       end;

       //
       If edDtInicial.Text <> '  /  /    '
       Then begin
            If Cont = 0
            then begin
                 SelVendasPdv.Params.CreateParam (FtDate, 'DTINI', PtInput);

                 SelVendasPdv.Sql.Add ( ' Where DATA >= :DTINI ' );

                 SelVendasPdv.ParamByName ( 'DTINI' ).AsDate := edDtInicial.Date;

                 Cont := 1;
            end
            else begin
                 SelVendasPdv.Params.CreateParam (FtDate, 'DTINI', PtInput);

                 SelVendasPdv.Sql.Add ( ' And DATA >= :DTINI ' );

                 SelVendasPdv.ParamByName ( 'DTINI' ).AsDate := edDtInicial.Date;
            end;
       end ;

       //
       If edDtFinal.Text <> '  /  /    '
       Then Begin
            If Cont = 0
            then begin
                 SelVendasPdv.Params.CreateParam (FtDate, 'DTFIM', PtInput);

                 SelVendasPdv.Sql.Add ( ' Where DATA <= :DTFIM ' );

                 SelVendasPdv.ParamByName ( 'DTFIM' ).AsDate := edDtInicial.Date;

                 Cont := 1;
            end
            else begin
                 SelVendasPdv.Params.CreateParam (FtDate, 'DTFIM', PtInput);

                 SelVendasPdv.Sql.Add ( ' And DATA <= :DTFIM ' );

                 SelVendasPdv.ParamByName ( 'DTFIM' ).AsDate := edDtFinal.Date;
            end;
       end;

       //
       If Trim(edNDocto.Text) <> ''
       Then begin
            If Cont = 0
            then begin
                 SelVendasPdv.Params.CreateParam (FtInteger, 'COD', PtInput);

                 SelVendasPdv.Sql.Add ( ' Where CODIGO >= :COD ' );

                 SelVendasPdv.ParamByName ( 'COD' ).AsInteger := strtoint(trim(edNDocto.Text));

                 Cont := 1;
            end
            else begin
                 SelVendasPdv.Params.CreateParam (FtInteger, 'COD', PtInput);

                 SelVendasPdv.Sql.Add ( ' and CODIGO >= :COD ' );

                 SelVendasPdv.ParamByName ( 'COD' ).AsInteger := strtoint(trim(edNDocto.Text));
            end;

       end;
       //Nome do cliente
       SelVendasPdv.Sql.Add ( ' order by NOME ' );
       //
  end;
  //
  DataSource.DataSet.Open;
End;

procedure TFrmSelVendasPdv.FormClose(Sender: TObject; var Action: TCloseAction);
var
  Diretorio : string;
begin
     If MessageDlg('Sair da Venda?', mtConfirmation, [mbOK, mbCancel], 0) = MrOk
     then begin

          dmApp.ZeraCaixaUsuario(owner);

          If DataSource.DataSet.Tag = 0 Then
             DataSource.DataSet.Close;

          If dsClientes.DataSet.Tag = 0 Then
          dsClientes.DataSet.Close;


          FrmFaturaVenda.Free   ;
          FrmFaturaVenda := Nil ;

          //

          Frm_Localizar_Cliente.Free ;
          Frm_Localizar_Cliente := Nil ;

          FrmLocProdutoCadastro_Auto.Free    ;
          FrmLocProdutoCadastro_Auto := Nil  ;

          FrmMain.PnlClient.Visible := True;

          Action := caFree;
          FrmSelVendasPdv := Nil;
     end
     else begin
          Action := CaNone ;
     end;
     Diretorio := 'C:\Sistemas\HelpStore\FILTROS';
     if not DirectoryExists(Diretorio) then
     begin
       ForceDirectories(Diretorio);
       MessageDlg('Foi criado uma pasta de Filtros: '+Diretorio, mtInformation, [mbOK], 0);
     end;
     SavedbGridFilterToFile('C:\Sistemas\HelpStore\filtros\FiltroGridSelVndPDV.txt',Grid.Filter);
end;

procedure TFrmSelVendasPdv.FormShow(Sender: TObject);
begin
     IniciaComponentes ( Self as TForm );
     //
     Try
         If Not(dsClientes.DataSet.Active) Then
           dsClientes.DataSet.Open;

         ( dsClientes.DataSet as TIbQuery ).FetchAll ;  

         FinalArq := False ;
         FinalCli := False ;

         //Cria o Formulario de Localizar Cliente
         Application.CreateForm(TFrm_Localizar_Cliente, Frm_Localizar_Cliente) ;

         FrmLocProdutoCadastro_Auto := TFrmLocProdutoCadastro_Auto.Create(Application) ;
         pc.ActivePage := dxTabSheet1;
         cmbCliente.SetFocus;
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

     IF DmApp.PDV_PARC_VENDA = 'S'
     THEN BEGIN
          If FrmFaturaVenda = Nil
          then
              FrmFaturaVenda := TFrmFaturaVenda.Create(Application);
     END;

     IF (DmApp.UsrBlc = 'S') and ( Not Chamou )
     THEN BEGIN
          ActIncluir.Execute ;
          Chamou := True ;
     END
     ELSE BEGIN
          cmbCliente.SetFocus;
     END;
     SetaControles;     
end;

procedure TFrmSelVendasPdv.FormCreate(Sender: TObject);
begin
  //
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, LblTitulo.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
  Synchronize;
  SynchronizePessoa;
  if fileExists('C:\Sistemas\HelpStore\filtros\FiltroGridSelVndPDV.txt') then
    LoadDBGridFilterFromFile('C:\Sistemas\HelpStore\filtros\FiltroGridSelVndPDV.txt',Grid.Filter);
end;

procedure TFrmSelVendasPdv.dxDBEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
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

procedure TFrmSelVendasPdv.pnlClientResize(Sender: TObject);
begin
  b2.Width := pnlClient.Width - 17;
end;

procedure TFrmSelVendasPdv.DataSourceStateChange(Sender: TObject);
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

procedure TFrmSelVendasPdv.ActFecharExecute(Sender: TObject);
begin
  If pc.ActivePageIndex <> 0 Then
     pc.ActivePageIndex := 0
  Else
     Begin
       If FrmSelVendasPdv.FormStyle = fsMDIChild Then
          FrmMain.opFechar.OnClick(FrmMain.opFechar)
       Else
          Close;
     End;
end;

procedure TFrmSelVendasPdv.btnFiltrarClick(Sender: TObject);
begin
  //FilterDialog.Execute;
  DMApp.Filtrar(DataSource);
end;

procedure TFrmSelVendasPdv.EdDataNotaKeyPress(Sender: TObject; var Key: Char);
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

procedure TFrmSelVendasPdv.Panel2Exit(Sender: TObject);
begin
  Filtrar;
end;

procedure TFrmSelVendasPdv.ActIncluirExecute(Sender: TObject);
begin
  //
  DMVendas.NDocto   := 0;
  DMVendas.Tag      := 1;
  //
  FrmVendasPdv := TFrmVendasPdv.Create(Self);
  FrmVendasPdv.Showmodal ;
  Filtrar;
  Chamou := False ;
end;

procedure TFrmSelVendasPdv.ActAlterarExecute(Sender: TObject);
begin
     If FrmSelVendasPdv.ActiveControl = GRID
     THEN BEGIN
          //
          If (Not DataSource.DataSet.Active) Or
             (DataSource.DataSet.RecordCount = 0) Then
          Begin
               ShowMessage('Você deve selecionar uma Nota para alterá-la !');
               cmbCliente.SetFocus;
               Exit;
          End;
          //
          DMVendas.NDocto   := DataSource.DataSet.FieldByName('CODIGO').asInteger;
          //
          FrmVendasPdv := TFrmVendasPdv.Create(Self);

          DmVendas.VendasPdv.Open ;
          DmVendas.VendasPdv.Edit ;

          FrmVendasPdv.Showmodal ;
          Chamou := False ;

          Filtrar;
     END;
end;

procedure TFrmSelVendasPdv.FormActivate(Sender: TObject);
begin
  Try
    If FrmSplash <> Nil Then
    Begin
       FrmSelVendasPdv.Update;
       Sleep(2000);
       FrmSplash.Close;
       FrmSplash.Free;
       FrmSplash := Nil;
    End;

  Except
  End;
end;

procedure TFrmSelVendasPdv.Panel2Enter(Sender: TObject);
begin
  DataSource.DataSet.Close;
end;

procedure TFrmSelVendasPdv.ActExcluirExecute(Sender: TObject);
begin
     If MessageDlg ('Excluir Esta Venda?',MtInformation,[MbOk, MbCancel],1) = MrOk
     then begin
          DmApp.Exclui_Venda ( DmApp.Cnpj, DataSource.DataSet.fieldbyname('Codigo').Value );
          DataSource.DataSet.Close ;
          DataSource.DataSet.Open  ;
     END;
end;

procedure TFrmSelVendasPdv.ActPaginaDnExecute(Sender: TObject);
begin
     If PC.ActivePageIndex = 0
     THEN
         PC.ActivePageIndex := 1
     ELSE
         PC.ActivePageIndex := 0;
end;

procedure TFrmSelVendasPdv.ActPagUpExecute(Sender: TObject);
begin
     If PC.ActivePageIndex = 0
     THEN
         PC.ActivePageIndex := 1
     ELSE
         PC.ActivePageIndex := 0;
end;

procedure TFrmSelVendasPdv.CmbClienteEnter(Sender: TObject);
begin
     CorFundo ( Sender );
end;

procedure TFrmSelVendasPdv.edDtInicialEnter(Sender: TObject);
begin
     CorFundo ( Sender );

end;

procedure TFrmSelVendasPdv.edDtFinalEnter(Sender: TObject);
begin
     CorFundo ( Sender );

end;

procedure TFrmSelVendasPdv.edNDoctoEnter(Sender: TObject);
begin
     CorFundo ( Sender );

end;

procedure TFrmSelVendasPdv.CmbClienteExit(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     TiraCorFundo ( Sender );
     With DmVendas do
     begin
          If Trim(CmbCliente.Text) <> ''
          then begin
               If SelPessoasFJ.locate ( 'CODIGO', CmbCliente.Text, [] )
               then begin
                    CmbCliente.Text  := DMVendas.SelPessoasFJCodigo.Text      ;
                    lblnome.Caption  := DMVendas.SelPessoasFJNOME_RAZAO.value ;
               end
               else begin
                    CmbCliente.Text  := '' ;
                    lblnome.Caption  := '' ;
               end;
          end
          else begin
               CmbCliente.Text  := ''  ;
               lblnome.Caption  := ''  ;
          end;
     end;
end;

procedure TFrmSelVendasPdv.edDtInicialExit(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     TiraCorFundo ( Sender );

end;

procedure TFrmSelVendasPdv.edDtFinalExit(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     TiraCorFundo ( Sender );

end;

procedure TFrmSelVendasPdv.edNDoctoExit(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     TiraCorFundo ( Sender );

end;

procedure TFrmSelVendasPdv.CmbClienteButtonClick(Sender: TObject; AbsoluteIndex: Integer);
begin
     Frm_Localizar_Cliente.DSource.dataset := DmVendas.SelPessoasFJ ;

     if (Frm_Localizar_Cliente.showmodal = mrOk) then
     Begin
          CmbCliente.Text := IntToStr(Frm_Localizar_Cliente.CampTrecho)    ;
          lblnome.Caption := DMVendas.SelPessoasFJNOME_RAZAO.value ;
     end
end;

procedure TFrmSelVendasPdv.ActImprimirExecute(Sender: TObject);
Var
   Aux: Integer;
begin
     //
     Aux := GRIDCODIGO.Field.Value ;

     If Aux > 0
     then begin
          FRelEnviaCaixa := TFRelEnviaCaixa.Create(Self);
          FRelEnviaCaixa.Tipo         := 'FATURA' ;
          FRelEnviaCaixa.PedidoNumero := Aux ;
          FRelEnviaCaixa.Showmodal ;
     end;
end;

procedure TFrmSelVendasPdv.ActBaixarExecute(Sender: TObject);
begin
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmBaixaReceberSelecaoParc', True)) Then
     Exit;

  if DmApp.LOCAL_FATURA = 'C'
  then
      if DMApp.VerificarCaixa = 'N' then
         Exit ;

  { * * * * * }
  If FrmBaixaReceberSelecaoParc = Nil Then
     Begin
       DmApp.CaixaAtivo := false ;

       FrmBaixaReceberSelecaoParc := TFrmBaixaReceberSelecaoParc.Create(Self);
       //
       FrmBaixaReceberSelecaoParc.Showmodal ;
       FrmBaixaReceberSelecaoParc.Free ;
       FrmBaixaReceberSelecaoParc := Nil ;
     End;
end;

procedure TFrmSelVendasPdv.TLCustomizeDragDrop(Sender, Source: TObject; X,
  Y: Integer);
var
  column : TdxTreeListColumn;
begin
  DragNode.MoveTo(TLCustomize.FocusedNode, natlInsert);
  column := TdxTreeListColumn(DragNode.Data);
  if (TLCustomize.FocusedNode <> nil) then
    column.Index := TLCustomize.FocusedNode.AbsoluteIndex
  else column.Index := 0;

end;

procedure TFrmSelVendasPdv.TLCustomizeDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  Accept := Source = Sender;
end;

procedure TFrmSelVendasPdv.TLCustomizeStartDrag(Sender: TObject;
  var DragObject: TDragObject);
begin
  DragNode := TdxTreeList(Sender).FocusedNode;
end;

procedure TFrmSelVendasPdv.GRID_KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     If Key = 13
     then
         ActAlterar.Execute ;
end;

procedure TFrmSelVendasPdv.Synchronize;
var
  I: Integer;
  Node: TdxTreeListNode;
begin
  TLCustomize.ClearNodes;
  for I := 0 to Grid.ColumnCount - 1 do
  begin
    Node := TLCustomize.Add;
    Node.Values[TLCustomizeColumn.Index] := Grid.Columns[I].Caption;
    if Grid.Columns[I].Visible then
      Node.Values[TLCustomizeIsVisible.Index] := TLCustomizeIsVisible.ValueChecked;
    Node.Data := Grid.Columns[I];
  end;

end;

procedure TFrmSelVendasPdv.ActConfCamposExecute(Sender: TObject);
begin
  if pc.ActivePage = dxTabSheet1 then
    pnlCampos.visible := (not pnlCampos.visible);
  if pc.ActivePage = dxTabSheet2 then
    pnlCamposPessoa.visible := (not pnlCamposPessoa.visible);
end;

procedure TFrmSelVendasPdv.TLCustomizeIsVisibleToggleClick(Sender: TObject;
  const Text: String; State: TdxCheckBoxState);
var
  column : TdxTreeListColumn;
begin
   column := TdxTreeListColumn(TLCustomize.FocusedNode.Data);
   column.Visible := State = TdxCheckBoxState(cbsChecked);
end;

procedure TFrmSelVendasPdv.ActExportarExcelExecute(Sender: TObject);
begin
  if pc.ActivePage = dxTabSheet1 then
    Save('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', 'ExpGrid.xls', GRID.SaveToXLS);
  if pc.ActivePage = dxTabSheet2 then
    Save('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', 'ExpGrid.xls', GridPessoa.SaveToXLS);
end;

procedure TFrmSelVendasPdv.ActExportarHtmlExecute(Sender: TObject);
begin
  if pc.ActivePage = dxTabSheet1 then
    Save('htm', 'HTML File (*.htm; *.html)|*.htm', 'ExpGrid.htm', GRID.SaveToHTML);
  if pc.ActivePage = dxTabSheet2 then
    Save('htm', 'HTML File (*.htm; *.html)|*.htm', 'ExpGrid.htm', GridPessoa.SaveToHTML);
end;

procedure TFrmSelVendasPdv.Save(ADefaultExt, AFilter, AFileName: String;
  AMethod: TSaveMethod);
begin
  with SaveDialog do
  begin
    DefaultExt := ADefaultExt;
    Filter := AFilter;
    FileName := AFileName;
    if SaveDialog.Execute then
      AMethod(FileName, true);
  end;
end;

procedure TFrmSelVendasPdv.dxTreeListCheckColumn1ToggleClick(
  Sender: TObject; const Text: String; State: TdxCheckBoxState);
var
  column : TdxTreeListColumn;
begin
   column := TdxTreeListColumn(TLCustomizePessoa.FocusedNode.Data);
   column.Visible := State = TdxCheckBoxState(cbsChecked);
end;

procedure TFrmSelVendasPdv.SynchronizePessoa;
var
  I: Integer;
  Node: TdxTreeListNode;
begin
  TLCustomizePessoa.ClearNodes;
  for I := 0 to GridPessoa.ColumnCount - 1 do
  begin
    Node := TLCustomizePessoa.Add;
    Node.Values[TLCustomizeColumn.Index] := GridPessoa.Columns[I].Caption;
    if GridPessoa.Columns[I].Visible then
      Node.Values[TLCustomizeIsVisible.Index] := TLCustomizeIsVisible.ValueChecked;
    Node.Data := GridPessoa.Columns[I];
  end;
end;

procedure TFrmSelVendasPdv.SetaControles;
begin
 {  ActImprimir.enabled := pc.ActivePageIndex = 0;
   ActAlterar.enabled := pc.ActivePageIndex = 0;
   ActBaixar.enabled := pc.ActivePageIndex = 0;
   ActExcluir.enabled := pc.ActivePageIndex = 0;
   ActIncluir.enabled := pc.ActivePageIndex = 0;  }
end;

procedure TFrmSelVendasPdv.pcChange(Sender: TObject);
begin
  SetaControles;
end;

end.
