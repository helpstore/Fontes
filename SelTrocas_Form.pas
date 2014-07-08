 unit SelTrocas_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, dxBarDBNav, dxBar,   dxCntner, dxEditor,
  dxEdLib, dxDBELib, StdCtrls, Db, IBCustomDataSet, dxDBEdtr, dxExEdtr,
  Buttons,     dxTL, dxDBCtrl, dxDBGrid,
  dxDBTLCl, dxGrClms,  IBquery,   RdPrint, dxTLClms, FileCtrl,
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
  dxSkinsdxBarPainter, cxClasses, cxLabel, cxPC, cxButtons;

type

  TSaveMethod = procedure (const FileName: String; ASaveAll: Boolean) of object;

  TFrmSelTrocas = class(TForm)
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
    dsClientes: TDataSource;
    kdofoco: TAction;
    ActExcluir: TAction;
    ActPaginaDn: TAction;
    ActPagUp: TAction;
    Panel4: TPanel;
    BtnFaturarVenda: TcxButton;
    RzBitBtn2: TcxButton;
    RzBitBtn3: TcxButton;
    BtnExtornaVenda: TcxButton;
    ActListagem: TAction;
    Panel5: TPanel;
    pc: TcxPageControl;
    tbsFaturamento: TcxTabSheet;
    Shape1: TShape;
    tbsClientes: TcxTabSheet;
    Panel3: TPanel;
    Image1: TImage;
    LblTitulo: TcxLabel;
    b2: TBevel;
    Panel6: TPanel;
    pnlCampos: TPanel;
    TLCustomize: TdxTreeList;
    TLCustomizeColumn: TdxTreeListColumn;
    TLCustomizeIsVisible: TdxTreeListCheckColumn;
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
    GRID: TdxDBGrid;
    GRIDPESSOA_FJ: TdxDBGridMaskColumn;
    GRIDCODIGO: TdxDBGridMaskColumn;
    GRIDDATA: TdxDBGridDateColumn;
    GRIDVALIDADE: TdxDBGridDateColumn;
    GRIDFECHADO: TdxDBGridMaskColumn;
    GRIDOBSERVACAO: TdxDBGridMaskColumn;
    GRIDNOME_RAZAO: TdxDBGridMaskColumn;
    GRIDNOME_FORMA: TdxDBGridMaskColumn;
    GRIDNOME_VENDEDOR: TdxDBGridMaskColumn;
    GRIDVENDEDOR: TdxDBGridMaskColumn;
    GRIDDESC_ACRESC: TdxDBGridMaskColumn;
    GRIDDESC_ACRESC_2: TdxDBGridMaskColumn;
    GRIDCLIENTE: TdxDBGridMaskColumn;
    GRIDPESO: TdxDBGridMaskColumn;
    GRIDVOLUME: TdxDBGridMaskColumn;
    GRIDFORMA: TdxDBGridMaskColumn;
    GRIDTOTAL_2: TdxDBGridMaskColumn;
    GRIDENVIADA_CX: TdxDBGridMaskColumn;
    GRIDVLR_TOTAL_2: TdxDBGridMaskColumn;
    GRIDENTRADA: TdxDBGridMaskColumn;
    GRIDDINHEIRO: TdxDBGridMaskColumn;
    GRIDCHEQUE: TdxDBGridMaskColumn;
    GRIDCARTAO: TdxDBGridMaskColumn;
    GRIDTICKET: TdxDBGridMaskColumn;
    GRIDDATA_CAIXA: TdxDBGridDateColumn;
    GRIDUSUARIO: TdxDBGridMaskColumn;
    GRIDTURNO: TdxDBGridMaskColumn;
    GRIDVLR_TOTAL: TdxDBGridMaskColumn;
    GRIDTOTAL: TdxDBGridMaskColumn;
    GRIDttl_liquido: TdxDBGridColumn;
    ActConfCampos: TAction;
    RzBitBtn5: TcxButton;
    RzBitBtn11: TcxButton;
    RzBitBtn13: TcxButton;
    ActExportarExcel: TAction;
    ActExportarHtml: TAction;
    SaveDialog: TSaveDialog;
    stgFaturamentoTroca: TcxPropertiesStore;
    pnlCamposPessoa: TPanel;
    TLCustomizePessoa: TdxTreeList;
    dxTreeListColumn1: TdxTreeListColumn;
    dxTreeListCheckColumn1: TdxTreeListCheckColumn;
    CLGRID: TdxDBGrid;
    CLGRIDEMPRESA: TdxDBGridMaskColumn;
    CLGRIDPESSOA_FJ: TdxDBGridMaskColumn;
    CLGRIDCODIGO: TdxDBGridMaskColumn;
    CLGRIDNOME_RAZAO: TdxDBGridMaskColumn;
    CLGRIDFANTASIA: TdxDBGridMaskColumn;
    CLGRIDCPF_CGC: TdxDBGridMaskColumn;
    CLGRIDBLOQUEADO: TdxDBGridMaskColumn;
    CLGRIDCLASSIFICACAO: TdxDBGridMaskColumn;
    CLGRIDUF: TdxDBGridMaskColumn;
    CLGRIDFONE: TdxDBGridMaskColumn;
    CLGRIDORDEM: TdxDBGridMaskColumn;
    CLGRIDENDERECO: TdxDBGridMaskColumn;
    Panel14: TPanel;
    procedure Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
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
    procedure GRID_KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ActPaginaDnExecute(Sender: TObject);
    procedure ActPagUpExecute(Sender: TObject);
    procedure CmbClienteEnter(Sender: TObject);
    procedure Synchronize;
    procedure SynchronizePessoa;
    procedure edDtInicialEnter(Sender: TObject);
    procedure edDtFinalEnter(Sender: TObject);
    procedure edNDoctoEnter(Sender: TObject);
    procedure CmbClienteExit(Sender: TObject);
    procedure edDtInicialExit(Sender: TObject);
    procedure edDtFinalExit(Sender: TObject);
    procedure edNDoctoExit(Sender: TObject);
    procedure CmbClienteButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure ActListagemExecute(Sender: TObject);
    procedure GRID_ttl_liquidoCustomDrawCell(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
      AColumn: TdxTreeListColumn; ASelected, AFocused,
      ANewItemRow: Boolean; var AText: String; var AColor: TColor;
      AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
    procedure TLCustomizeDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure TLCustomizeDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure TLCustomizeStartDrag(Sender: TObject;
      var DragObject: TDragObject);
    procedure TLCustomizeIsVisibleToggleClick(Sender: TObject;
      const Text: String; State: TdxCheckBoxState);
    procedure ActConfCamposExecute(Sender: TObject);
    procedure ActExportarExcelExecute(Sender: TObject);
    procedure ActExportarHtmlExecute(Sender: TObject);
    procedure dxTreeListCheckColumn1ToggleClick(Sender: TObject;
      const Text: String; State: TdxCheckBoxState);
  private
    { Private declarations }
    DragNode: TdxTreeListNode;    
    Procedure Filtrar;
  public
    { Public declarations }
  end;

var
  FrmSelTrocas: TFrmSelTrocas;
  FinalArq, FinalCli: Boolean ;
  Chamou : Boolean ;

implementation

uses Vendas_DM,
     Main,
     Usuarios_DM,
     Funcoes,
     Application_DM,
     LocalizarProd_DM,
     FaturaVenda_Form,
     Splash_Form,
     Localizar_Cliente,
     Trocas_Form, Tipo_Impressora_Form, EnviaTrocaCaixa_FRel,
     Localizar_Produto_Cadastro_Auto;

  {$R *.DFM}

Procedure TFrmSelTrocas.Filtrar;
Var
   Cont: Integer ;
Begin
  //
  If DataSource.DataSet.Active Then
     DataSource.DataSet.Close;

  With DmVendas do
  begin
       Cont := 0;

       SelTrocas.Sql.Clear    ;
       SelTrocas.Params.Clear ;

       SelTrocas.Params.CreateParam (FtString,  'CNPJ'       , PtInput);
       SelTrocas.Params.CreateParam (FtInteger, 'ORCAMENTO'  , PtInput);

       SelTrocas.Sql.Add ( ' SELECT * FROM VER_FAT_TROCAS ( :CNPJ, :ORCAMENTO ) ' );

       SelTrocas.ParamByName ( 'CNPJ' ).AsString := DmApp.Cnpj ;
       //
       If Trim(edNDocto.Text) <> ''
       Then begin
            SelTrocas.ParamByName ( 'ORCAMENTO' ).AsInteger := strtoint(trim(edNDocto.Text));
       end
       ELSE BEGIN
            SelTrocas.ParamByName ( 'ORCAMENTO' ).AsInteger := 0;
       END;

       SelTrocas.Params.CreateParam (FtString, 'ENV', PtInput);

       SelTrocas.Sql.Add ( ' Where ENVIADA_CX = :ENV ' );

       SelTrocas.ParamByName ( 'ENV' ).AsString := 'N' ;

       Cont := 1; 

       //
       If trim(CmbCliente.Text) <> ''
       Then Begin
            If Cont = 0
            then begin
                 SelTrocas.Params.CreateParam (FtInteger, 'CLIENTE', PtInput);

                 SelTrocas.Sql.Add ( ' Where PESSOA_FJ = :CLIENTE ' );

                 SelTrocas.ParamByName ( 'CLIENTE' ).AsInteger := strtoint(trim(CmbCliente.text));

                 Cont := 1;
            END
            ELSE BEGIN
                 SelTrocas.Params.CreateParam (FtInteger, 'CLIENTE', PtInput);

                 SelTrocas.Sql.Add ( ' And PESSOA_FJ = :CLIENTE ' );

                 SelTrocas.ParamByName ( 'CLIENTE' ).AsInteger := strtoint(trim(CmbCliente.text));

                 Cont := 1;
            END;
       end;

       //
       If edDtInicial.Text <> '  /  /    '
       Then begin
            If Cont = 0
            then begin
                 SelTrocas.Params.CreateParam (FtDate, 'DTINI', PtInput);

                 SelTrocas.Sql.Add ( ' Where DATA >= :DTINI ' );

                 SelTrocas.ParamByName ( 'DTINI' ).AsDate := edDtInicial.Date;

                 Cont := 1;
            end
            else begin
                 SelTrocas.Params.CreateParam (FtDate, 'DTINI', PtInput);

                 SelTrocas.Sql.Add ( ' And DATA >= :DTINI ' );

                 SelTrocas.ParamByName ( 'DTINI' ).AsDate := edDtInicial.Date;
            end;
       end ;

       //
       If edDtFinal.Text <> '  /  /    '
       Then Begin
            If Cont = 0
            then begin
                 SelTrocas.Params.CreateParam (FtDate, 'DTFIM', PtInput);

                 SelTrocas.Sql.Add ( ' Where DATA <= :DTFIM ' );

                 SelTrocas.ParamByName ( 'DTFIM' ).AsDate := edDtInicial.Date;

                 Cont := 1;
            end
            else begin
                 SelTrocas.Params.CreateParam (FtDate, 'DTFIM', PtInput);

                 SelTrocas.Sql.Add ( ' And DATA <= :DTFIM ' );

                 SelTrocas.ParamByName ( 'DTFIM' ).AsDate := edDtFinal.Date;
            end;
       end;

       //Nome do cliente
       SelTrocas.Sql.Add ( ' order by NOME_RAZAO ' );
       //
  end;

  //
  DataSource.DataSet.Open;

End;

procedure TFrmSelTrocas.FormClose(Sender: TObject; var Action: TCloseAction);
var
  Diretorio : string;
begin
     If MessageDlg('Sair da Seleção de Trocas?', mtConfirmation, [mbOK, mbCancel], 0) = MrOk
     then begin

          dmApp.ZeraCaixaUsuario(owner);
          
          If DataSource.DataSet.Tag = 0 Then
             DataSource.DataSet.Close;

          If dsClientes.DataSet.Tag = 0 Then
          dsClientes.DataSet.Close;


          FrmFaturaVenda.Free   ;
          FrmFaturaVenda := Nil ;


          Frm_Localizar_Cliente.Free ;
          Frm_Localizar_Cliente := Nil ;

          FrmLocProdutoCadastro_Auto.Free    ;
          FrmLocProdutoCadastro_Auto := Nil  ;

          FrmMain.PnlClient.Visible := True;

          Action := caFree;
          FrmSelTrocas := Nil;

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
     SavedbGridFilterToFile('C:\Sistemas\HelpStore\filtros\FiltroGrdFatTroca.txt',Grid.Filter);
end;

procedure TFrmSelTrocas.FormShow(Sender: TObject);
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
//          If FrmFaturaVenda = Nil
//          then
//              FrmFaturaVenda := TFrmFaturaVenda.Create(Application);
     END;

     IF (DmApp.UsrBlc = 'S') and ( Not Chamou )
     THEN BEGIN
          ActIncluir.Execute ;
          Chamou := True ;
     END
     ELSE BEGIN
          pc.activepage := tbsFaturamento;
          cmbCliente.SetFocus;
     END;
end;

procedure TFrmSelTrocas.FormCreate(Sender: TObject);
begin
  //
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, LblTitulo.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
  Synchronize;
  SynchronizePessoa;  
  if fileExists('C:\Sistemas\HelpStore\filtros\FiltroGrdFatTroca.txt') then
    LoadDBGridFilterFromFile('C:\Sistemas\HelpStore\filtros\FiltroGrdFatTroca.txt',GRID.Filter);
end;

procedure TFrmSelTrocas.dxDBEdit1KeyDown(Sender: TObject; var Key: Word;
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

procedure TFrmSelTrocas.pnlClientResize(Sender: TObject);
begin
  b2.Width := pnlClient.Width - 17;
end;

procedure TFrmSelTrocas.DataSourceStateChange(Sender: TObject);
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

procedure TFrmSelTrocas.ActFecharExecute(Sender: TObject);
begin
  If pc.ActivePageIndex <> 0 Then
     pc.ActivePageIndex := 0
  Else
     Begin
       If FrmSelTrocas.FormStyle = fsMDIChild Then
          FrmMain.opFechar.OnClick(FrmMain.opFechar)
       Else
          Close;
     End;
end;

procedure TFrmSelTrocas.btnFiltrarClick(Sender: TObject);
begin
  //FilterDialog.Execute;
  DMApp.Filtrar(DataSource);
end;

procedure TFrmSelTrocas.EdDataNotaKeyPress(Sender: TObject; var Key: Char);
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

procedure TFrmSelTrocas.Panel2Exit(Sender: TObject);
begin
  Filtrar;
end;

procedure TFrmSelTrocas.ActIncluirExecute(Sender: TObject);
begin
  //
  DMVendas.NDocto   := 0;
  DMVendas.Tag      := 1;
  //
  FrmTrocas := TFrmTrocas.Create(Self);
  FrmTrocas.Showmodal ;
  Chamou := False ;
end;

procedure TFrmSelTrocas.ActAlterarExecute(Sender: TObject);
begin
     If pc.ActivePage = tbsFaturamento
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
          FrmTrocas := TFrmTrocas.Create(Self);
          //ao abrir o fatura_trocas ocorre a perda de referência de data-sources
          //por conta da setagem do mesmo para outro dataset, SelFaturaTrocas
          {dmVendas.trocas_itens.dataSource := dmVendas.dsTrocas;
          dmVendas.DsTrocas.DataSet := dmvendas.Trocas;}

          DmVendas.Trocas.Open ;
          DmVendas.Trocas.Edit ;

          FrmTrocas.Showmodal ;
          Chamou := False ;
     END;
end;

procedure TFrmSelTrocas.FormActivate(Sender: TObject);
begin
  Try
    If FrmSplash <> Nil Then
    Begin
       FrmSelTrocas.Update;
       Sleep(2000);
       FrmSplash.Close;
       FrmSplash.Free;
       FrmSplash := Nil;
    End;

  Except
  End;
end;

procedure TFrmSelTrocas.Panel2Enter(Sender: TObject);
begin
  DataSource.DataSet.Close;
end;

procedure TFrmSelTrocas.ActExcluirExecute(Sender: TObject);
begin
     If MessageDlg ('Excluir Esta Troca?',MtInformation,[MbOk, MbCancel],1) = MrOk
     then begin
          DmApp.Exclui_Troca ( DmApp.Cnpj, DataSource.DataSet.fieldbyname('Codigo').Value );
          DataSource.DataSet.Close ;
          DataSource.DataSet.Open  ;
     END;
end;

procedure TFrmSelTrocas.GRID_KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  If Key = 13 then
    ActAlterar.Execute ;
end;

procedure TFrmSelTrocas.ActPaginaDnExecute(Sender: TObject);
begin
     If PC.ActivePageIndex = 0
     THEN
         PC.ActivePageIndex := 1
     ELSE
         PC.ActivePageIndex := 0;
end;

procedure TFrmSelTrocas.ActPagUpExecute(Sender: TObject);
begin
     If PC.ActivePageIndex = 0
     THEN
         PC.ActivePageIndex := 1
     ELSE
         PC.ActivePageIndex := 0;
end;

procedure TFrmSelTrocas.CmbClienteEnter(Sender: TObject);
begin
     CorFundo ( Sender );
end;

procedure TFrmSelTrocas.edDtInicialEnter(Sender: TObject);
begin
     CorFundo ( Sender );

end;

procedure TFrmSelTrocas.edDtFinalEnter(Sender: TObject);
begin
     CorFundo ( Sender );

end;

procedure TFrmSelTrocas.edNDoctoEnter(Sender: TObject);
begin
     CorFundo ( Sender );

end;

procedure TFrmSelTrocas.CmbClienteExit(Sender: TObject);
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

procedure TFrmSelTrocas.edDtInicialExit(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     TiraCorFundo ( Sender );

end;

procedure TFrmSelTrocas.edDtFinalExit(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     TiraCorFundo ( Sender );

end;

procedure TFrmSelTrocas.edNDoctoExit(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     TiraCorFundo ( Sender );

end;

procedure TFrmSelTrocas.CmbClienteButtonClick(Sender: TObject; AbsoluteIndex: Integer);
begin
     Frm_Localizar_Cliente.DSource.dataset := DmVendas.SelPessoasFJ ;

     if ( Frm_Localizar_Cliente.showmodal = mrOk )
     Then Begin
          CmbCliente.Text := IntToStr(Frm_Localizar_Cliente.CampTrecho)    ;
          lblnome.Caption := DMVendas.SelPessoasFJNOME_RAZAO.value ;
     end
end;

procedure TFrmSelTrocas.ActListagemExecute(Sender: TObject);
Var
   Codigo: Integer;
begin
     Codigo := DataSource.DataSet.FieldByName('CODIGO').asInteger ;

     if codigo > 0
     then begin
          If DmApp.Sel_Impressora = 'S'
          THEN BEGIN
               FrmTipoImpressora := TFrmTipoImpressora.Create(Self);

               FrmTipoImpressora.Showmodal ;

               FRelEnviaTrocaCaixa              := TFRelEnviaTrocaCaixa.Create(Self);

               FRelEnviaTrocaCaixa.LblTipo.Visible := True ;

               If FrmTipoImpressora.CkMatricial.Checked
               THEN BEGIN
                    FRelEnviaTrocaCaixa.Print.IMPRESSORA := epson ;
                    FRelEnviaTrocaCaixa.LblTipo.Caption := 'Impressora Matricial';
               END
               ELSE BEGIN
                    FRelEnviaTrocaCaixa.Print.IMPRESSORA := Hp ;
                    FRelEnviaTrocaCaixa.LblTipo.Caption  := 'Impressora Jato de Tinta';
               END;

               FrmTipoImpressora.Free   ;
               FrmTipoImpressora := Nil ;
          END
          ELSE BEGIN
               FRelEnviaTrocaCaixa                 := TFRelEnviaTrocaCaixa.Create(Self);
               FRelEnviaTrocaCaixa.LblTipo.Visible := false ;
          END;

          FRelEnviaTrocaCaixa.Tipo         := 'TROCA' ;
          FRelEnviaTrocaCaixa.PedidoNumero := Codigo  ;
          FRelEnviaTrocaCaixa.Showmodal ;

          FRelEnviaTrocaCaixa.Free   ;
          FRelEnviaTrocaCaixa := Nil ;
     end;
end;

procedure TFrmSelTrocas.GRID_ttl_liquidoCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
var
  Valor : string;
begin
  Valor := StringReplace(AText,'.','',[rfReplaceAll]);

  if StrTofloat(Valor) < 0 then
    AFont.Color := clRed
  else if StrTofloat(Valor) = 0 then
    AFont.Color := clBlue
  else
    AFont.Color := clGreen;
end;

procedure TFrmSelTrocas.TLCustomizeDragDrop(Sender, Source: TObject; X,
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

procedure TFrmSelTrocas.TLCustomizeDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  Accept := Source = Sender;
end;

procedure TFrmSelTrocas.TLCustomizeStartDrag(Sender: TObject;
  var DragObject: TDragObject);
begin
  DragNode := TdxTreeList(Sender).FocusedNode;
end;

procedure TFrmSelTrocas.TLCustomizeIsVisibleToggleClick(Sender: TObject;
  const Text: String; State: TdxCheckBoxState);
var
  column : TdxTreeListColumn;
begin
   column := TdxTreeListColumn(TLCustomize.FocusedNode.Data);
   column.Visible := State = TdxCheckBoxState(cbsChecked);
end;

procedure TFrmSelTrocas.ActConfCamposExecute(Sender: TObject);
begin
  if pc.ActivePage = tbsFaturamento then
    pnlCampos.visible := (not pnlCampos.visible);
  if pc.ActivePage = tbsClientes then
    pnlCamposPessoa.visible := (not pnlCamposPessoa.visible);
end;

procedure TFrmSelTrocas.ActExportarExcelExecute(Sender: TObject);
begin
  if pc.ActivePage = tbsFaturamento then
    Save('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', 'SelFaturaTrocas.xls', GRID.SaveToXLS);
  if pc.ActivePage = tbsClientes then
    Save('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', 'Clientes.xls', CLGRID.SaveToXLS);
end;

procedure TFrmSelTrocas.ActExportarHtmlExecute(Sender: TObject);
begin
  if pc.ActivePage = tbsFaturamento then
    Save('htm', 'HTML File (*.htm; *.html)|*.htm', 'SelFaturaTrocas.htm', GRID.SaveToHTML);
  if pc.ActivePage = tbsClientes then
    Save('htm', 'HTML File (*.htm; *.html)|*.htm', 'Clientes.htm', CLGRID.SaveToHTML);
end;

procedure TFrmSelTrocas.Save(ADefaultExt, AFilter, AFileName: String;
  AMethod: TSaveMethod);
begin
  with SaveDialog do
  begin
    DefaultExt := ADefaultExt;
    Filter := AFilter;
    FileName := AFileName;
    if Execute then
      AMethod(FileName, true);
  end;
end;

procedure TFrmSelTrocas.Synchronize;
var
  I: Integer;
  Node: TdxTreeListNode;
begin
  TLCustomize.ClearNodes;
  for I := 0 to Grid.ColumnCount - 1 do
  begin
    Node := TLCustomize.Add;
    Node.Values[TLCustomizeColumn.Index] := GRID.Columns[I].Caption;
    if GRID.Columns[I].Visible then
      Node.Values[TLCustomizeIsVisible.Index] := TLCustomizeIsVisible.ValueChecked;
    Node.Data := GRID.Columns[I];
  end;
end;

procedure TFrmSelTrocas.dxTreeListCheckColumn1ToggleClick(Sender: TObject;
  const Text: String; State: TdxCheckBoxState);
var
  column : TdxTreeListColumn;
begin
   column := TdxTreeListColumn(TLCustomizePessoa.FocusedNode.Data);
   column.Visible := State = TdxCheckBoxState(cbsChecked);
end;

procedure TFrmSelTrocas.SynchronizePessoa;
var
  I: Integer;
  Node: TdxTreeListNode;
begin
  TLCustomizePessoa.ClearNodes;
  for I := 0 to CLGRID.ColumnCount - 1 do
  begin
    Node := TLCustomizePessoa.Add;
    Node.Values[TLCustomizeColumn.Index] := CLGRID.Columns[I].Caption;
    if CLGRID.Columns[I].Visible then
      Node.Values[TLCustomizeIsVisible.Index] := TLCustomizeIsVisible.ValueChecked;
    Node.Data := CLGRID.Columns[I];
  end;
end;

end.
