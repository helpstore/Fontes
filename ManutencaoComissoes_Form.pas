  unit ManutencaoComissoes_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ActnList, StdCtrls, Mask, Buttons, ExtCtrls,
   Db,  dxTL, dxDBCtrl, dxDBGrid, dxCntner, dxDBTLCl,
  dxGrClms, dxEditor,
  dxExEdtr, dxEdLib, ComCtrls,    dxDBEdtr, dxDBELib,
  RDprint,   Grids, DBGrids, ppPrnabl, ppClass, ppStrtch, ppRichTx,
  ppCache, ppBands, ppDB, ppDBPipe, ppComm, ppRelatv, ppProd, ppReport,
  ppVar, ppCtrls, Menus, cxPropertiesStore, FileCtrl, Variants,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, cxControls,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, cxLabel, cxButtons,  cxGroupBox;

type
  TFrmManutencaoComissao = class(TForm)
    Actions: TActionList;
    ActFechar: TAction;
    ActGerarComissao: TAction;
    pnlClient: TPanel;
    Panel4: TPanel;
    RzBitBtn3: TcxButton;
    ActFiltrar: TAction;
    RzBitBtn2: TcxButton;
    ActQuitarComissao: TAction;
    ActImprimir: TAction;
    PopMaster: TPopupMenu;
    mnEstComAbert: TMenuItem;
    mnEstComGer: TMenuItem;
    PopDetail: TPopupMenu;
    mnEstParcGer: TMenuItem;
    ActEstornaParcGer: TAction;
    ActEstornaComGer: TAction;
    ActEstornaComAb: TAction;
    ActCancCom: TAction;
    ActCancComParc: TAction;
    mnCancelaCom: TMenuItem;
    mnCancComParc: TMenuItem;
    stgGrdComissao: TcxPropertiesStore;
    GroupLeg: TcxGroupBox;
    RzPanel2: TPanel;
    RzPanel4: TPanel;
    RzPanel5: TPanel;
    RzPanel6: TPanel;
    RzPanel3: TPanel;
    Panel1: TPanel;
    RzPanel1: TPanel;
    lblIntervalo: TcxLabel;
    lblStatus: TcxLabel;
    lblVendedorAtual: TcxLabel;
    LblTitulo: TcxLabel;
    Panel3: TPanel;
    Label3: TcxLabel;
    GridParcela: TdxDBGrid;
    GridParcelaCODIGO: TdxDBGridMaskColumn;
    GridParcelaCOD_RECEBER: TdxDBGridMaskColumn;
    GridParcelaPARC_CR: TdxDBGridMaskColumn;
    GridParcelaVLR_RECEBER: TdxDBGridMaskColumn;
    GridParcelaPCT_LIBERADO: TdxDBGridMaskColumn;
    GridParcelaPCT_PAGO: TdxDBGridMaskColumn;
    GridParcelaVLR_TOTAL: TdxDBGridMaskColumn;
    GridParcelaSTATUS: TdxDBGridMaskColumn;
    GridParcelaVLR_LIBERADO: TdxDBGridMaskColumn;
    GridParcelaPCT_LUCRO_ITEM: TdxDBGridMaskColumn;
    GridParcelaCOD_PERFIL_PAGTO: TdxDBGridMaskColumn;
    Panel2: TPanel;
    Grid: TdxDBGrid;
    GridCODIGO: TdxDBGridMaskColumn;
    GridCOD_VENDEDOR: TdxDBGridMaskColumn;
    GridCOD_VENDA: TdxDBGridMaskColumn;
    GridDT_GERACAO: TdxDBGridDateColumn;
    GridNOME: TdxDBGridMaskColumn;
    GridSTATUS: TdxDBGridMaskColumn;
    GridCNPJ: TdxDBGridMaskColumn;
    GridTOTAL: TdxDBGridMaskColumn;
    GridPAGO: TdxDBGridMaskColumn;
    GridLIBERADO: TdxDBGridMaskColumn;
    GridPCT_ANTECIPACAO: TdxDBGridMaskColumn;
    GridCOD_TROCA: TdxDBGridMaskColumn;
    GridPCT_LUCRO_ITEM: TdxDBGridMaskColumn;
    GridCOD_PERFIL_PAGTO: TdxDBGridMaskColumn;
    Panel5: TPanel;
    Label2: TcxLabel;
    Panel6: TPanel;
    Label4: TcxLabel;
    pnlBottom: TPanel;
    Bevel1: TBevel;
    Label1: TcxLabel;
    BtnFechar: TcxButton;
    procedure ActFecharExecute(Sender: TObject);
    procedure EdCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnOkClick(Sender: TObject);
    procedure EdClienteInicialButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure EdClienteInicialExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ActFiltrarExecute(Sender: TObject);
    procedure GRIDCustomDraw(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxDBTreeListColumn;
      const AText: String; AFont: TFont; var AColor: TColor; ASelected,
      AFocused: Boolean; var ADone: Boolean);
    procedure GridParcelaCustomDraw(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxDBTreeListColumn;
      const AText: String; AFont: TFont; var AColor: TColor; ASelected,
      AFocused: Boolean; var ADone: Boolean);
    procedure ActGerarComissaoExecute(Sender: TObject);
    procedure GRIDKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure GridParcelaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ActQuitarComissaoExecute(Sender: TObject);
    procedure RzBitBtn5Click(Sender: TObject);
    procedure ActEstornaParcGerExecute(Sender: TObject);
    procedure ActEstornaComGerExecute(Sender: TObject);
    procedure ActEstornaComAbExecute(Sender: TObject);
    procedure PopDetailPopup(Sender: TObject);
    procedure PopMasterPopup(Sender: TObject);
    procedure EstornaCom;
    procedure ActCancComExecute(Sender: TObject);
    procedure ActCancComParcExecute(Sender: TObject);
    procedure GRIDLIBERADOCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    sqlOriginal:  string;
    function VerificaParcelamento:boolean;
    procedure Seleciona;
    procedure ReabreDataSet;

  public

  end;


var
  FrmManutencaoComissao: TFrmManutencaoComissao;
implementation

uses
    Application_DM, Localizar_Cliente, Main, funcoes,
  Financeiro_Dm2, Financeiro_Dm, Filtra_GeraComissao, Filtra_ManComissoes, Com_DadosReceber,
  Vendas_Dm, Gera_PagarComissao, Usuarios_DM, Vendas_DM2;

{$R *.DFM}

procedure TFrmManutencaoComissao.ActFecharExecute(Sender: TObject);
begin
  close ;
end;

procedure TFrmManutencaoComissao.EdCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  If (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  If (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmManutencaoComissao.FormClose(Sender: TObject; var Action: TCloseAction);
var
 Diretorio :string;
begin
  if MessageDlg('Deseja Sair da Consulta?', mtConfirmation, [mbOK, mbCancel], 0) = MROK then
  begin
    if DmFinanceiro.SelPessoasFj.Active then
      DmFinanceiro.SelPessoasFj.Close ;
    Frm_Localizar_Cliente.Free   ;
    Frm_Localizar_Cliente := Nil ;

    DMFinanceiro.SelPessoasFJ.Close ;
    Action := caFree;

    FrmMain.PnlClient.Visible := True;
  end
  else
    Action := Canone ;

  Diretorio := 'C:\Sistemas\HelpStore\FILTROS';
  if not DirectoryExists(Diretorio) then
  begin
    ForceDirectories(Diretorio);
    MessageDlg('Foi criado uma pasta de Filtros: '+Diretorio, mtInformation, [mbOK], 0);
  end;
  SavedbGridFilterToFile('C:\Sistemas\HelpStore\filtros\FiltroGrdCom.txt',Grid.Filter);
end;

procedure TFrmManutencaoComissao.BtnOkClick(Sender: TObject);
begin
  GRID.SETFOCUS;
end;

procedure TFrmManutencaoComissao.EdClienteInicialButtonClick(Sender: TObject; AbsoluteIndex: Integer);
begin
  try
    Frm_Localizar_Cliente.DSource.DataSet := DmFinanceiro.SelPessoasFJ;
    if (Frm_Localizar_Cliente.showmodal = mrOk) then
      //EdClienteInicial.TEXT := IntToStr(Frm_Localizar_Cliente.CampTrecho);
  except
    Application.HandleException(self);
  end;
end;

procedure TFrmManutencaoComissao.EdClienteInicialExit(Sender: TObject);
begin
  TiraCorFundo(sender);
end;

procedure TFrmManutencaoComissao.FormShow(Sender: TObject);
begin
  IniciaComponentes(Self as TForm);
  sqlOriginal := dmFinanceiro2.Comissoes.SelectSql.text;
  Seleciona;
  Grid.FullExpand;
end;

procedure TFrmManutencaoComissao.Seleciona;
begin
  with TfrmFiltraManComissoes.create(Self) do
  begin
    ShowModal;

    if not modalresult = mrOk then
      exit;

    if DataInicial.date > 0 then
      lblIntervalo.caption := 'Dt. Geração: '+DataInicial.text+' à '+DataFinal.text
    else
      lblIntervalo.caption := 'Dt. Geração: Sem Intervalo';

    if (cmbVendedor.text <> '') then
      lblVendedorAtual.caption := 'Vendedor: '+cmbVendedor.text
    else
      lblVendedorAtual.caption := 'Vendedor: Todos';

    lblStatus.caption := ' Status: '+Status;

    with dmFinanceiro2 do
    begin
      Comissoes.close;
      Comissoes.SelectSql.text := sqlOriginal;
      Comissoes.SelectSql.add(Filtro);
      Comissoes.ParamByName('CNPJ').asString := dmApp.cnpj;
      Comissoes.open;
    end;
    Free;
  end;
end;

procedure TFrmManutencaoComissao.ActFiltrarExecute(Sender: TObject);
begin
  Seleciona;
end;

procedure TFrmManutencaoComissao.GRIDCustomDraw(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxDBTreeListColumn; const AText: String; AFont: TFont;
  var AColor: TColor; ASelected, AFocused: Boolean; var ADone: Boolean);
var
  value : variant;
begin
  if ANode.HasChildren then
    Exit;

  if (not ASelected) then
  begin
    Value := trim(ANode.Values[GridStatus.Index]);
    if not VarIsNull(Value) then
    begin
      if Value = 'Aberta' then
        AColor := $00CAF0D7
      else if Value = 'Gerada' then
        AColor := $00FFE2A8
      else if Value = 'Quitada' then
        AColor := $0088F4EF
      else if Value = 'Cancelada' then
        AColor := $008080FF
      else if Value = 'Sem Comissão' then
        AColor := clGray
      else
        AColor := clWhite
    end
    else
      AFont.Color := clBlack;
  end;
end;

procedure TFrmManutencaoComissao.GridParcelaCustomDraw(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxDBTreeListColumn; const AText: String; AFont: TFont;
  var AColor: TColor; ASelected, AFocused: Boolean; var ADone: Boolean);
var
 value : variant;
begin
  if (not ASelected) then
  begin
    Value := trim(ANode.Values[GridParcelaSTATUS.Index]);
    if not VarIsNull(Value) then
    begin
      if Value = 'Aberta' then
        AColor := $00CAF0D7
      else if Value = 'Gerada' then
        AColor := $00FFE2A8
      else if Value = 'Quitada' then
        AColor := $0088F4EF
      else if Value = 'Cancelada' then
        AColor := $008080FF
      else if Value = 'Sem Comissão' then
        AColor := clGray
      else
        AColor := clWhite;
    end
    else
      AFont.Color := clBlack;
  end;
end;

procedure TFrmManutencaoComissao.ActGerarComissaoExecute(Sender: TObject);
begin
  with TfrmFiltraGeraComissoes.Create(Self) do
  begin
    ShowModal;
    Free;
    ReabreDataSet;
  end;
end;

procedure TFrmManutencaoComissao.GRIDKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = 13 then
  begin
    if(GRIDCOD_VENDA.Field.Value) > 0 then
      DmVendaS2.Proc_Consulta_Venda(GRIDCOD_VENDA.Field.Value)
    else
      DmVendaS2.Proc_Consulta_Troca(GRIDCOD_TROCA.Field.Value);
  end;
end;

procedure TFrmManutencaoComissao.GridParcelaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (key = 13) then
  begin
    if (GridParcelaCOD_RECEBER.field.asInteger > 0) then
    begin
      with TfrmComDadosReceber.Create(Self) do
      begin
        dmFinanceiro2.qryReceber.close;
        dmFinanceiro2.qryReceber.parambyname('cnpj').value := dmApp.cnpj;
        dmFinanceiro2.qryReceber.parambyname('cod_receber').value := dmFinanceiro2.ComissoesParcCOD_RECEBER.asInteger;
        dmFinanceiro2.qryReceber.parambyname('pessoa_fj').value := dmFinanceiro2.ComissoesParcPESSOA_FJ.asInteger;
        dmFinanceiro2.qryReceber.Open;

        dmFinanceiro2.qryBxReceber.close;
        dmFinanceiro2.qryBxReceber.parambyname('cnpj').value := dmApp.cnpj;
        dmFinanceiro2.qryBxReceber.parambyname('cod_receber').value := dmFinanceiro2.ComissoesParcCOD_RECEBER.asInteger;
        dmFinanceiro2.qryBxReceber.parambyname('pessoa_fj').value := dmFinanceiro2.ComissoesParcPESSOA_FJ.asInteger;
        dmFinanceiro2.qryBxReceber.Open;

        ShowModal;
        free;
      end;
    end;
  end;
end;

procedure TFrmManutencaoComissao.ActQuitarComissaoExecute(Sender: TObject);
begin
  with TfrmGeraPagarComissao.Create(Self) do
  begin
    ShowModal;
    Free;
    ReabreDataSet;
  end;
end;

procedure TFrmManutencaoComissao.ReabreDataSet;
begin
  with dmFinanceiro2 do
  begin
    Comissoes.close;
    Comissoes.SelectSql.text := sqlOriginal;
    Comissoes.ParamByName('CNPJ').asString := dmApp.cnpj;
    Comissoes.open;
  end;
end;

procedure TFrmManutencaoComissao.RzBitBtn5Click(Sender: TObject);
begin
  with TfrmFiltraGeraComissoes.Create(Self) do
  begin
    ShowModal;
    Free;
    ReabreDataSet;
  end;
end;

procedure TFrmManutencaoComissao.ActEstornaParcGerExecute(Sender: TObject);
var
  sql : string;
  cont : variant;
  estado: boolean;
  msg : string;
begin
  with dmFinanceiro2 do
  begin
    try
      EstornaComParc.parambyname('CNPJ').value := dmApp.cnpj;
      EstornaComParc.parambyname('COD_PARC').value := ComissoesParcCODIGO.asInteger;
      EstornaComParc.parambyname('VENDEDOR').value := ComissoesCOD_VENDEDOR.asInteger;

      if (Trim(ComissoesParcSTATUS.asString) = 'Gerada') then
        EstornaComParc.parambyname('STATUS').value := 'A'
      else if (trim(ComissoesParcSTATUS.asString) = 'Quitada') then
        EstornaComParc.parambyname('STATUS').value := 'G';

      EstornaComParc.ExecProc;
      application.messagebox('Estorno realizado com sucesso','Aviso',mb_ok + mb_iconinformation);
    except
      on E:EDataBaseError do
         application.messagebox(Pchar('Erro ao Estornar: '+E.Message),'Aviso',mb_ok + mb_iconerror);
    end;

    ReabreDataSet;
  end;
end;

procedure TFrmManutencaoComissao.ActEstornaComGerExecute(Sender: TObject);
begin
  EstornaCom;
end;

procedure TFrmManutencaoComissao.ActEstornaComAbExecute(Sender: TObject);
begin
  EstornaCom;
end;

procedure TFrmManutencaoComissao.PopDetailPopup(Sender: TObject);
begin
  //Um pagamento à vista não precisa ser estornado, pois ele será excluido no estorno
  // da comissão (master)
  with dmFinanceiro2 do
  begin
      if (trim(ComissoesParcStatus.value)='Aberta') then
      begin
        mnEstParcGer.Enabled := false;
        mnCancComParc.Enabled:= false;
      end
      else if (trim(ComissoesParcStatus.value)='Cancelada') then
      begin
        mnCancComParc.Enabled:= false;
        if ActEstornaParcGer.enabled then //Verificando se libero o estoro para geradas
        begin
           //Não posso permitir as parcelas diferirem do cabeçalho em certos casos
           if (trim(ComissoesSTATUS.value) = 'Gerada') then
             mnEstParcGer.Enabled := true
           else
             mnEstParcGer.Enabled := false
        end
        else
          mnEstParcGer.Enabled := false;
      end
      else if (trim(ComissoesParcStatus.value)='Gerada') then
      begin
        if ActCancComParc.enabled then
          mnCancComParc.Enabled:= true
        else
          mnCancComParc.Enabled:= false;
      end;
  end;
end;

procedure TFrmManutencaoComissao.PopMasterPopup(Sender: TObject);
begin
  with dmFinanceiro2 do
  begin
      if (trim(ComissoesSTATUS.value) = 'Aberta') then //nenhuma ação para abertas
      begin
        mnEstComAbert.enabled := false;
        mnEstComGer.Enabled := false;
        mnCancelaCom.Enabled := false;
      end
      else if ((trim(ComissoesSTATUS.value) = 'Cancelada') or (trim(ComissoesSTATUS.value) = 'Quitada'))then
      begin
        //desabilito o cancelamento e o estorno direto para abertas
        mnCancelaCom.Enabled := false;
        mnEstComAbert.enabled := false;

        if ActEstornaComGer.enabled then //Verificando se posso habilitar estorno pra Geradas
          mnEstComGer.Enabled := true
        else
          mnEstComGer.Enabled := false;
      end
      else if (trim(ComissoesSTATUS.value) = 'Gerada') then
      begin
        mnEstComGer.Enabled := false; //Desabilito estornar pra gerada
        if ActCancCom.enabled then //Verificando se posso habilitar cancelamento
          mnCancelaCom.Enabled := true
        else
          mnCancelaCom.Enabled := false;

        if ActEstornaComAb.enabled then //Verificando se posso habilitar estorno para abertas
          mnEstComAbert.Enabled := true
        else
          mnEstComAbert.Enabled := false;
      end
  end;
end;

procedure TFrmManutencaoComissao.EstornaCom;
var
  sql : string;
  cont : variant;
  estado: boolean;
  msg : string;
begin
  with dmFinanceiro2 do
  begin
    try
      EstornaCom.Transaction := DMApp.Transaction;
      estado := DMApp.Transaction.Active;

      if not(estado) then
        dmApp.Transaction.startTransaction;


      if not (VerificaParcelamento) then
      begin
        application.messagebox('Existem parcelamentos de comissão com status diferenciados','Aviso',mb_ok + mb_iconerror);
        exit;
      end;
      
      EstornaCom.parambyname('CNPJ').value := dmApp.cnpj;
      EstornaCom.parambyname('CODIGO').value := ComissoesCODIGO.value;
      EstornaCom.ExecProc;

      application.messagebox('Estorno realizado com sucesso','Aviso',mb_ok + mb_iconinformation);
      if not(estado) then
        dmApp.Transaction.commit
      else
        dmApp.Transaction.commitRetaining;
    except
      on E:EDataBaseError do
      begin
         application.messagebox(Pchar('Erro ao Estornar: '+E.Message),'Aviso',mb_ok + mb_iconerror);

         if not(estado) then
           dmApp.Transaction.Rollback
         else
           dmApp.Transaction.RollbackRetaining;
      end;
    end;
    ReabreDataSet;
  end;
end;

procedure TFrmManutencaoComissao.ActCancComExecute(Sender: TObject);
var
  sql : string;
  cont : variant;
begin
   if application.messagebox('Deseja realmente cancelar toda a comissão?','Aviso',mb_yesno + mb_iconquestion) = id_no then
     exit;


   if not (VerificaParcelamento) then
   begin
     application.messagebox('Existem parcelamentos de comissão com status diferenciados','Aviso',mb_ok + mb_iconerror);
     exit;
   end;

   try
      with dmFinanceiro2 do
      begin
        ExecAux.sql.text := 'update cm_comissao_parc cmp set cmp.status = ''C'' where cmp.cnpj = :cnpj and cmp.COD_COMISSAO = :codigo';
        ExecAux.parambyname('cnpj').value := dmapp.cnpj;
        ExecAux.parambyname('codigo').value := ComissoesCODIGO.asString;
        ExecAux.ExecQuery;
      end;

      application.messagebox('Comissão cancelada com sucesso','Aviso',mb_ok + mb_iconinformation);
      ReabreDataSet;
   except
      on E:EDataBaseError do
         application.messagebox(Pchar('Erro ao cancelar: '+E.Message),'Aviso',mb_ok + mb_iconinformation);
   end
end;

procedure TFrmManutencaoComissao.ActCancComParcExecute(Sender: TObject);
var
  sql : string;
begin
   if application.messagebox('Deseja realmente cancelar a parcela de comissão?','Aviso',mb_yesno + mb_iconquestion) = id_no then
     exit;

   try
      with dmFinanceiro2 do
      begin
        ExecAux.sql.text := 'update cm_comissao_parc cmp set cmp.status = ''C'' where cmp.cnpj = :cnpj and cmp.codigo = :codigo';
        ExecAux.parambyname('cnpj').value := dmapp.cnpj;
        ExecAux.parambyname('codigo').value := ComissoesParcCODIGO.value;
        ExecAux.ExecQuery;
      end;

      application.messagebox('Parcela de comissão cancelada com sucesso','Aviso',mb_ok + mb_iconinformation);
   except
      on E:EDataBaseError do
         application.messagebox(Pchar('Erro ao cancelar: '+E.Message),'Aviso',mb_ok + mb_iconerror);
   end;

   ReabreDataSet;

end;

function TFrmManutencaoComissao.VerificaParcelamento: boolean;
var
  cont : variant;
begin
  cont := RetornaValor(' select count(distinct cmp.status) from cm_comissao_parc cmp '+
                          ' where cmp.cod_comissao = '+dmfinanceiro2.ComissoesCODIGO.asString+' and cmp.cod_receber is not null and  cmp.cnpj = '+QuotedStr(dmApp.cnpj));

  if VarIsNull(Cont) then
     cont := 0;

  if (cont > 1) then
    result := false
  else
    result := true;
end;

procedure TFrmManutencaoComissao.GRIDLIBERADOCustomDrawCell(
  Sender: TObject; ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
var
  Valor : string;
begin
  if (ASelected) then
    exit;
    
  Valor := StringReplace(AText,'.','',[rfReplaceAll]);
  if StrTofloat(Valor) < 0 then
    AFont.Color := clRed
  else
    AFont.Color := clBlack;
end;

procedure TFrmManutencaoComissao.FormCreate(Sender: TObject);
begin
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, Self.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);

 if fileExists('C:\Sistemas\HelpStore\filtros\FiltroGrdCom.txt') then
   LoadDBGridFilterFromFile('C:\Sistemas\HelpStore\filtros\FiltroGrdCom.txt',Grid.Filter);
end;

end.


