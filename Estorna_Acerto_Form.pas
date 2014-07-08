unit Estorna_Acerto_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, dxBarDBNav, dxBar,   dxCntner, dxEditor,
  dxEdLib, dxDBELib, StdCtrls, Db, IBCustomDataSet, Buttons, dxExEdtr,
  dxDBEdtr, Grids, DBGrids, dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid,
   cxPropertiesStore, dxTLClms,     FileCtrl, Variants, DateUtils,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, dxSkinsdxBarPainter, cxClasses,
  cxPC, cxLabel;

type
  TSaveMethod = procedure (const FileName: String; ASaveAll: Boolean) of object;

  TfrmEstornaAcerto = class(TForm)
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
    Bevel1: TBevel;
    DataSource: TDataSource;
    BtnFechar: TdxBarButton;
    Panel1: TPanel;
    ActFechar: TAction;
    ActPeriodo: TAction;
    ActExtorna: TAction;
    Label10: TcxLabel;
    stgfrmEstornaAcerto3: TcxPropertiesStore;
    Panel2: TPanel;
    b2: TBevel;
    LblCaixa: TcxLabel;
    LblTitulo: TcxLabel;
    Panel5: TPanel;
    pc: TcxPageControl;
    btnEstornar: TdxBarButton;
    btnConfig: TdxBarButton;
    btnExpExcel: TdxBarButton;
    ActExporta: TAction;
    ActConfigura: TAction;
    SaveDialog: TSaveDialog;
    ActEstornar2: TAction;
    ActRecibo: TAction;
    btnRecibo: TdxBarButton;
    pnlCampos: TPanel;
    TLCustomize: TdxTreeList;
    TLCustomizeColumn: TdxTreeListColumn;
    TLCustomizeIsVisible: TdxTreeListCheckColumn;
    dxTabSheet1: TcxTabSheet;
    Panel3: TPanel;
    Label4: TcxLabel;
    Label1: TcxLabel;
    edDtFinal: TdxDateEdit;
    edDtInicial: TdxDateEdit;
    GRID: TdxDBGrid;
    GRIDCNPJ: TdxDBGridMaskColumn;
    GRIDCODIGO: TdxDBGridMaskColumn;
    GRIDDATA: TdxDBGridDateColumn;
    GRIDDATA_CX: TdxDBGridDateColumn;
    GRIDHISTORICO: TdxDBGridMaskColumn;
    GRIDCOD_USUARIO: TdxDBGridMaskColumn;
    GRIDVALOR_PAGAR: TdxDBGridMaskColumn;
    GRIDVALOR_RECEBER: TdxDBGridMaskColumn;
    GRIDCOD_PARCEIRO_RECIBO: TdxDBGridMaskColumn;
    GRIDUSUARIO: TdxDBGridMaskColumn;
    GRIDNOME_RAZAO: TdxDBGridMaskColumn;
    GRIDSALDO: TdxDBGridMaskColumn;
    dxTabSheet2: TcxTabSheet;
    Panel6: TPanel;
    GridBanco: TdxDBGrid;
    Panel8: TPanel;
    Panel4: TPanel;
    GridPagos: TdxDBGrid;
    Panel7: TPanel;
    Panel9: TPanel;
    GridRecebidos: TdxDBGrid;
    Panel10: TPanel;
    Panel11: TPanel;
    GridGerados: TdxDBGrid;
    Panel12: TPanel;
    Panel13: TPanel;
    GridCheques: TdxDBGrid;
    Panel14: TPanel;
    dsRecebidas: TDataSource;
    dsPagas: TDataSource;
    dsRenegociacao: TDataSource;
    dsCheques: TDataSource;
    dsMovimentos: TDataSource;
    GridRecebidosCODIGO: TdxDBGridMaskColumn;
    GridRecebidosANO: TdxDBGridMaskColumn;
    GridRecebidosCODIGO_CR: TdxDBGridMaskColumn;
    GridRecebidosANO_CR: TdxDBGridMaskColumn;
    GridRecebidosPESSOA_FJ: TdxDBGridMaskColumn;
    GridRecebidosDT_BAIXA: TdxDBGridDateColumn;
    GridRecebidosDT_EMISSAO: TdxDBGridDateColumn;
    GridRecebidosDT_VENCTO: TdxDBGridDateColumn;
    GridRecebidosDT_LANCTO: TdxDBGridDateColumn;
    GridRecebidosDOCTO: TdxDBGridMaskColumn;
    GridRecebidosPARCELA: TdxDBGridMaskColumn;
    GridRecebidosHISTORICO: TdxDBGridMaskColumn;
    GridRecebidosHISTORICO_BX: TdxDBGridMaskColumn;
    GridRecebidosVALOR: TdxDBGridCurrencyColumn;
    GridRecebidosVLR_BAIXA: TdxDBGridCurrencyColumn;
    GridRecebidosDESCONTOS: TdxDBGridCurrencyColumn;
    GridRecebidosVLR_PARCIAL: TdxDBGridCurrencyColumn;
    GridRecebidosJUROS: TdxDBGridCurrencyColumn;
    GridRecebidosJUROS_REC: TdxDBGridCurrencyColumn;
    GridRecebidosDESCONTOS_REC: TdxDBGridCurrencyColumn;
    GridRecebidosTAXA_JUROS: TdxDBGridCurrencyColumn;
    GridRecebidosBOLETO: TdxDBGridMaskColumn;
    GridRecebidosTIPO_JUROS: TdxDBGridMaskColumn;
    GridRecebidosORIGEM: TdxDBGridMaskColumn;
    GridRecebidosCODIGO_VN: TdxDBGridMaskColumn;
    GridRecebidosPLANILHA: TdxDBGridMaskColumn;
    GridRecebidosANO_VN: TdxDBGridMaskColumn;
    GridRecebidosAVISO: TdxDBGridMaskColumn;
    GridRecebidosDT_AVISO: TdxDBGridDateColumn;
    GridRecebidosNOME: TdxDBGridMaskColumn;
    GridRecebidosENDERECO: TdxDBGridMaskColumn;
    GridRecebidosNUMERO: TdxDBGridMaskColumn;
    GridRecebidosCIDADE: TdxDBGridMaskColumn;
    GridRecebidosBAIRRO: TdxDBGridMaskColumn;
    GridRecebidosCEP: TdxDBGridMaskColumn;
    GridRecebidosUF: TdxDBGridMaskColumn;
    GridRecebidosCOD_END: TdxDBGridMaskColumn;
    GridRecebidosCOD_CID: TdxDBGridMaskColumn;
    GridRecebidosCOD_BAI: TdxDBGridMaskColumn;
    GridRecebidosFONE: TdxDBGridMaskColumn;
    GridRecebidosCPF_CGC: TdxDBGridMaskColumn;
    GridRecebidosNUMBOLETO: TdxDBGridMaskColumn;
    GridRecebidosFATURA: TdxDBGridMaskColumn;
    GridRecebidosNUMDUPLICATA: TdxDBGridMaskColumn;
    GridRecebidosTURNO: TdxDBGridMaskColumn;
    GridRecebidosLOCAL: TdxDBGridMaskColumn;
    GridRecebidosCOD_INDEXADOR: TdxDBGridMaskColumn;
    GridRecebidosIDX_DATABASE: TdxDBGridDateColumn;
    GridRecebidosIDX_COTACAO: TdxDBGridCurrencyColumn;
    GridRecebidosIDX_QTDE: TdxDBGridCurrencyColumn;
    GridPagosCODIGO: TdxDBGridMaskColumn;
    GridPagosANO: TdxDBGridMaskColumn;
    GridPagosCODIGO_PGR: TdxDBGridMaskColumn;
    GridPagosANO_PG: TdxDBGridMaskColumn;
    GridPagosPESSOA_FJ: TdxDBGridMaskColumn;
    GridPagosDT_BAIXA: TdxDBGridDateColumn;
    GridPagosDT_EMISSAO: TdxDBGridDateColumn;
    GridPagosDT_VENCTO: TdxDBGridDateColumn;
    GridPagosDT_LANCTO: TdxDBGridDateColumn;
    GridPagosDOCTO: TdxDBGridMaskColumn;
    GridPagosPARCELA: TdxDBGridMaskColumn;
    GridPagosHISTORICO: TdxDBGridMaskColumn;
    GridPagosHISTORICO_BX: TdxDBGridMaskColumn;
    GridPagosVALOR: TdxDBGridCurrencyColumn;
    GridPagosVLR_BAIXA: TdxDBGridCurrencyColumn;
    GridPagosDESCONTOS: TdxDBGridCurrencyColumn;
    GridPagosVLR_PARCIAL: TdxDBGridCurrencyColumn;
    GridPagosJUROS: TdxDBGridCurrencyColumn;
    GridPagosJUROS_PAG: TdxDBGridCurrencyColumn;
    GridPagosDESCONTOS_PG: TdxDBGridCurrencyColumn;
    GridPagosTAXA_JUROS: TdxDBGridCurrencyColumn;
    GridPagosTIPO_JUROS: TdxDBGridMaskColumn;
    GridPagosORIGEM: TdxDBGridMaskColumn;
    GridPagosCODIGO_VN: TdxDBGridMaskColumn;
    GridPagosPLANILHA: TdxDBGridMaskColumn;
    GridPagosANO_VN: TdxDBGridMaskColumn;
    GridPagosAVISO: TdxDBGridMaskColumn;
    GridPagosDT_AVISO: TdxDBGridDateColumn;
    GridPagosNOME: TdxDBGridMaskColumn;
    GridPagosENDERECO: TdxDBGridMaskColumn;
    GridPagosNUMERO: TdxDBGridMaskColumn;
    GridPagosCIDADE: TdxDBGridMaskColumn;
    GridPagosBAIRRO: TdxDBGridMaskColumn;
    GridPagosCEP: TdxDBGridMaskColumn;
    GridPagosUF: TdxDBGridMaskColumn;
    GridPagosCOD_END: TdxDBGridMaskColumn;
    GridPagosCOD_CID: TdxDBGridMaskColumn;
    GridPagosCOD_BAI: TdxDBGridMaskColumn;
    GridPagosFONE: TdxDBGridMaskColumn;
    GridPagosCPF_CGC: TdxDBGridMaskColumn;
    GridPagosNUMBOLETO: TdxDBGridMaskColumn;
    GridPagosFATURA: TdxDBGridMaskColumn;
    GridPagosNUMDUPLICATA: TdxDBGridMaskColumn;
    GridPagosTURNO: TdxDBGridMaskColumn;
    GridPagosLOCAL: TdxDBGridMaskColumn;
    GridPagosCOD_INDEXADOR: TdxDBGridMaskColumn;
    GridPagosIDX_DATABASE: TdxDBGridDateColumn;
    GridPagosIDX_COTACAO: TdxDBGridCurrencyColumn;
    GridPagosIDX_QTDE: TdxDBGridCurrencyColumn;
    GridGeradosCODIGO: TdxDBGridMaskColumn;
    GridGeradosPARCELA: TdxDBGridMaskColumn;
    GridGeradosQTDE_MOEDA: TdxDBGridCurrencyColumn;
    GridGeradosVALOR: TdxDBGridCurrencyColumn;
    GridGeradosNOME_RAZAO: TdxDBGridMaskColumn;
    GridGeradosCPF_CNPJ: TdxDBGridMaskColumn;
    GridGeradosDT_VENCTO: TdxDBGridDateColumn;
    GridGeradosTIPO: TdxDBGridMaskColumn;
    GridGeradosSTATUS: TdxDBGridMaskColumn;
    GridChequesAGENCIA: TdxDBGridMaskColumn;
    GridChequesBANCO: TdxDBGridMaskColumn;
    GridChequesCHEQUE: TdxDBGridMaskColumn;
    GridChequesHISTORICO: TdxDBGridMaskColumn;
    GridChequesCONTA: TdxDBGridMaskColumn;
    GridChequesPRE_DATE: TdxDBGridDateColumn;
    GridChequesPESSOA_FJ: TdxDBGridMaskColumn;
    GridChequesNOME_RAZAO: TdxDBGridMaskColumn;
    GridChequesTIPO: TdxDBGridMaskColumn;
    GridBancoCONTA: TdxDBGridMaskColumn;
    GridBancoBANCO: TdxDBGridMaskColumn;
    GridBancoCOD_DOC: TdxDBGridMaskColumn;
    GridBancoDATA: TdxDBGridDateColumn;
    GridBancoHISTORICO: TdxDBGridMaskColumn;
    GridBancoVALOR: TdxDBGridMaskColumn;
    GridBancoTIPO: TdxDBGridMaskColumn;
    GridBancoCODIGO: TdxDBGridMaskColumn;
    GRIDTIPO_ACERTO: TdxDBGridMaskColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dxDBEdit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure pnlClientResize(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure ActPeriodoExecute(Sender: TObject);
    procedure ActExtornaExecute(Sender: TObject);
    procedure TLCustomizeDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure TLCustomizeDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure TLCustomizeStartDrag(Sender: TObject;
      var DragObject: TDragObject);
    procedure ActConfiguraExecute(Sender: TObject);
    procedure ActExportaExecute(Sender: TObject);
    procedure Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
    procedure ActEstornar2Execute(Sender: TObject);
    procedure ActReciboExecute(Sender: TObject);
    procedure Panel3Exit(Sender: TObject);
    procedure pcChange(Sender: TObject);
    procedure edDtInicialEnter(Sender: TObject);
    procedure edDtInicialExit(Sender: TObject);
    procedure edDtInicialKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TLCustomizeIsVisibleToggleClick(Sender: TObject;
      const Text: String; State: TdxCheckBoxState);
  private
    DragNode: TdxTreeListNode;
    { Private declarations }
    procedure Synchronize;
    procedure Filtrar;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEstornaAcerto: TfrmEstornaAcerto;
  sqlOriginal : string;
implementation

uses
     Application_DM,
     Main,
     Usuarios_DM,
     Funcoes,
     Filtra_Baixa_Form,
     Financeiro_Dm,
     Cadastros_DM,
     ConfirmaExtorno_Form, Financeiro_Dm2, ConfirmaEstorno_Form,
  SerieCustomizaveis_DM, SeriesCustomizaveis, Relatorios_DM2 ;

{$R *.DFM}


procedure TfrmEstornaAcerto.FormClose(Sender: TObject; var Action: TCloseAction);
var
  Diretorio :string;
begin
  If MessageDlg('Deseja Sair da Tela?', mtConfirmation, [mbOK, mbCancel], 0) = MROK then
  begin
    Datasource.Dataset.Close;
    Action := caFree;
    frmEstornaAcerto := Nil;

    FrmMain.PnlClient.Visible := True;
  END
  ELSE
    ACTION := CANONE ;

  Diretorio := 'C:\Sistemas\HelpStore\FILTROS';
  if not DirectoryExists(Diretorio) then
  begin
    ForceDirectories(Diretorio);
    MessageDlg('Foi criado uma pasta de Filtros: '+Diretorio, mtInformation, [mbOK], 0);
  end;
  SavedbGridFilterToFile('C:\Sistemas\HelpStore\filtros\FiltroGrdEstorno.txt',Grid.Filter);
  dmFinanceiro2.QryActEstorno.sql.Text := sqlOriginal;
end;

procedure TfrmEstornaAcerto.Save(ADefaultExt, AFilter, AFileName: String;
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

procedure TfrmEstornaAcerto.FormShow(Sender: TObject);
begin
  IniciaComponentes ( Self as TForm );
  //
  Try
    If Not(DmFinanceiro.SelPessoasFJ.Active) Then
       DmFinanceiro.SelPessoasFJ.Open;

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
  Datasource.AutoEdit := false;
  pc.ActivePageIndex := 0;
  edDtInicial.SetFocus;
end;

procedure TfrmEstornaAcerto.FormCreate(Sender: TObject);
var
 dia, mes, ano : integer;
begin
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, LblTitulo.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);

  Synchronize;

  if fileExists('C:\Sistemas\HelpStore\filtros\FiltroGrdEstorno.txt') then
    LoadDBGridFilterFromFile('C:\Sistemas\HelpStore\filtros\FiltroGrdEstorno.txt',Grid.Filter);
  sqloriginal := dmFinanceiro2.QryActEstorno.sql.text;

  mes := MonthOfTheYear(dmapp.data_servidor);
  ano :=  Year(dmapp.data_servidor);
  edDtInicial.Date := EncodeDate(ano,mes,1);
end;

procedure TfrmEstornaAcerto.Synchronize;
var
  I: Integer;
  Node: TdxTreeListNode;
begin
  TLCustomize.ClearNodes;
  for I := 0 to GRID.ColumnCount - 1 do
  begin
    Node := TLCustomize.Add;
    Node.Values[TLCustomizeColumn.Index] := GRID.Columns[I].Caption;
    if GRID.Columns[I].Visible then
      Node.Values[TLCustomizeIsVisible.Index] := TLCustomizeIsVisible.ValueChecked;
    Node.Data := GRID.Columns[I];
  end;
end;


procedure TfrmEstornaAcerto.dxDBEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TfrmEstornaAcerto.pnlClientResize(Sender: TObject);
begin
  b2.Width := pnlClient.Width - 17;
end;

procedure TfrmEstornaAcerto.ActFecharExecute(Sender: TObject);
begin
  If frmEstornaAcerto.FormStyle = fsMDIChild Then
     FrmMain.opFechar.OnClick(FrmMain.opFechar)
  Else
     Close;
end;

procedure TfrmEstornaAcerto.ActPeriodoExecute(Sender: TObject);
Var
   Cont: Integer;
   codcliente : integer;
begin
     //
end;

procedure TfrmEstornaAcerto.ActExtornaExecute(Sender: TObject);
var
  y,x : Variant;
begin
     Application.CreateForm(TFrmConfirmaExtorno, FrmConfirmaExtorno);
     FrmConfirmaExtorno.Nome.Text            := DmFinanceiro.Baixas_ReceberNOME.Value         ;
     FrmConfirmaExtorno.Documento.Text       := DmFinanceiro.Baixas_ReceberDOCTO.Value        ;
     FrmConfirmaExtorno.Historico.Text       := DmFinanceiro.Baixas_ReceberHISTORICO_BX.Value ;
     FrmConfirmaExtorno.DataBaixa.Text       := DmFinanceiro.Baixas_ReceberDT_BAIXA.AsString  ;
     FrmConfirmaExtorno.DataLancamento.Text  := DmFinanceiro.Baixas_ReceberDT_LANCTO.AsString ;
     FrmConfirmaExtorno.Valor.Text           := DmFinanceiro.Baixas_ReceberTotal.Text         ;

     If FrmConfirmaExtorno.Showmodal = MrOk then
     begin
       with dmFinanceiro do
       begin
         {verificando se o lançamento é o ultimo referente a essa conta}
         y := RetornaValor('select max(bx.codigo) from FIN_BAIXAS_RECEBER bx where bx.codigo_cr ='
         +dmFinanceiro.Baixas_ReceberCODIGO_CR.AsString+' and bx.pessoa_fj = '+dmFinanceiro.Baixas_ReceberPessoa_Fj.AsString);
         if VarIsNull(y) then
          y := 0;
         if y > dmFinanceiro.Baixas_ReceberCODIGO.AsString then
         begin
           application.messagebox('Impossível estornar um lançamento intermediário. Estorne sempre o ultimo lancamento','Aviso',mb_ok);
           exit;
         end;

         {quando o pagamento foi parcial}
         x := RetornaValor('select count(*) from  fin_contas_receber r where '+
             ' r.codigo ='+dmFinanceiro.Baixas_ReceberCODIGO_CR.asstring+'  and r.pessoa_fj ='+dmFinanceiro.Baixas_ReceberPESSOA_FJ.asstring);

        if x <= 0 then //aqui na verdade é estornado integralamente
           DmFinanceiro2.Extorna_Receber_Integral(Baixas_ReceberCODIGO.Value,Baixas_ReceberAno.Value,Baixas_ReceberTotal.Asfloat)
         else //aqui é quando o estorno é de uma parcial
           DmFinanceiro2.Extorna_Receber_Parcial(Baixas_ReceberCODIGO.Value,Baixas_ReceberAno.Value );


         Baixas_Receber.Close;
         Baixas_Receber.Open
       end;

     end;



     FrmConfirmaExtorno.Free ;
     FrmConfirmaExtorno := Nil ;
end;

procedure TfrmEstornaAcerto.TLCustomizeDragDrop(Sender, Source: TObject;
  X, Y: Integer);
var
  column : TdxTreeListColumn;
begin
  DragNode.MoveTo(TLCustomize.FocusedNode, natlInsert);
  column := TdxTreeListColumn(DragNode.Data);
  if (TLCustomize.FocusedNode <> nil) then
    column.Index := TLCustomize.FocusedNode.AbsoluteIndex
  else column.Index := 0;

end;

procedure TfrmEstornaAcerto.TLCustomizeDragOver(Sender, Source: TObject;
  X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
    Accept := Source = Sender;
end;

procedure TfrmEstornaAcerto.TLCustomizeStartDrag(Sender: TObject;
  var DragObject: TDragObject);
begin
  DragNode := TdxTreeList(Sender).FocusedNode;
end;

procedure TfrmEstornaAcerto.ActConfiguraExecute(Sender: TObject);
begin
  pnlCampos.visible := (not pnlCampos.visible);
end;

procedure TfrmEstornaAcerto.ActExportaExecute(Sender: TObject);
begin
    Save('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', 'Acertos Realizados.xls', Grid.SaveToXLS);
end;

procedure TfrmEstornaAcerto.ActEstornar2Execute(Sender: TObject);
var
  Y : variant;
begin
  if (Application.Messagebox(Pchar('Deseja realmente realizar o estorno o acerto: '+ dmFinanceiro2.QryActEstornoCODIGO.asString +'?'),'Aviso',mb_iconquestion+mb_yesno) = id_no) then
     exit;

  with dmFinanceiro2 do
  begin
    If Not DmaPP.TransactionProc.InTransaction then
      DmaPP.TransactionProc.StartTransaction ;

    try
      EstornaAcertoContas.parambyname('cnpj').value := dmapp.cnpj;
      EstornaAcertoContas.parambyname('acerto').value := QryActEstornoCODIGO.value;
      EstornaAcertoContas.ExecProc;
      Application.messagebox('Estorno efetuado com sucesso','Aviso',mb_iconinformation+mb_ok);
      DmaPP.TransactionProc.Commit;
    except
      on E:EDataBaseError Do
      begin
        If DmaPP.TransactionProc.InTransaction then
          DmApp.TransactionProc.Rollback ;

        Application.Messagebox(Pchar('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + ' '),'Aviso',mb_iconerror+mb_ok);
      end
      Else
      begin
        if DmaPP.TransactionProc.InTransaction then
          DmApp.TransactionProc.Rollback ;

        Application.messagebox('Erro ao efetuar o estorno. Verifique','Aviso',mb_iconerror+mb_ok);
      end;
    end;
  end;

  filtrar;
end;

procedure TfrmEstornaAcerto.ActReciboExecute(Sender: TObject);
begin
  dmFinanceiro2.ImprimeReciboAcerto(dmFinanceiro2.QryActEstornoCODIGO.value);
end;

procedure TfrmEstornaAcerto.Filtrar;
var
  filtro : string;
Begin
  filtro := '';

  with dmFinanceiro2 do
  begin
    QryActEstorno.Close;
    if edDtInicial.date > 0 then
      filtro := ' and act.data >= '''+FormatDateTime('mm/dd/yyyy',edDtInicial.date)+'''';

    if edDtFinal.date > 0 then
      filtro := filtro + ' and act.data <= '''+FormatDateTime('mm/dd/yyyy',edDtFinal.Date)+'''';

    if (filtro <> '') then
      QryActEstorno.sql.Text := sqloriginal + filtro;

    QryActEstorno.parambyname('cnpj').value := dmApp.cnpj;
    QryActEstorno.Open;
    QryActEstorno.FetchAll;

  end;
end;

procedure TfrmEstornaAcerto.Panel3Exit(Sender: TObject);
begin
  Filtrar;
end;

procedure TfrmEstornaAcerto.pcChange(Sender: TObject);
begin
  if (pc.ActivePageIndex = 1) then
  begin
     with dmFinanceiro2 do
     begin
       //Recebidas
       QryActEstRecebida.Close;
       QryActEstRecebida.parambyname('cnpj').value := dmApp.Cnpj;
       QryActEstRecebida.parambyname('codigo').value := QryActEstornoCODIGO.value;
       QryActEstRecebida.Open;

       QryActEstPagas.Close;
       QryActEstPagas.parambyname('cnpj').value := dmApp.Cnpj;
       QryActEstPagas.parambyname('codigo').value := QryActEstornoCODIGO.value;
       QryActEstPagas.Open;

       QryActEstTGerados.Close;
       QryActEstTGerados.parambyname('cnpj').value := dmApp.Cnpj;
       QryActEstTGerados.parambyname('codigo').value := QryActEstornoCODIGO.value;
       QryActEstTGerados.Open;

       QryActEstChGerados.Close;
       QryActEstChGerados.parambyname('cnpj').value := dmApp.Cnpj;
       QryActEstChGerados.parambyname('codigo').value := QryActEstornoCODIGO.value;
       QryActEstChGerados.Open;

       QryActEstMvtGerados.Close;
       QryActEstMvtGerados.parambyname('cnpj').value := dmApp.Cnpj;
       QryActEstMvtGerados.parambyname('codigo').value := QryActEstornoCODIGO.value;
       QryActEstMvtGerados.Open;

     end;
  end
end;

procedure TfrmEstornaAcerto.edDtInicialEnter(Sender: TObject);
begin
  CorFundo ( Sender );
end;

procedure TfrmEstornaAcerto.edDtInicialExit(Sender: TObject);
begin
  TiraCorFundo ( Sender )
end;

procedure TfrmEstornaAcerto.edDtInicialKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
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

procedure TfrmEstornaAcerto.TLCustomizeIsVisibleToggleClick(
  Sender: TObject; const Text: String; State: TdxCheckBoxState);
var
  column : TdxTreeListColumn;
begin
   column := TdxTreeListColumn(TLCustomize.FocusedNode.Data);
   column.Visible := State = TdxCheckBoxState(cbsChecked);
end;

end.
