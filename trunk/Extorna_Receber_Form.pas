unit Extorna_Receber_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, dxBarDBNav, dxBar,   dxCntner, dxEditor,
  dxEdLib, dxDBELib, StdCtrls, Db, IBCustomDataSet, Buttons, dxExEdtr,
  dxDBEdtr, Grids, DBGrids, dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid,
   cxPropertiesStore, dxTLClms,     FileCtrl, Variants,
  dxSkinsCore, dxSkinsdxBarPainter, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, cxClasses,   cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinscxPCPainter, cxPC;

type
  TSaveMethod = procedure (const FileName: String; ASaveAll: Boolean) of object;

  TFrmExtornaReceber = class(TForm)
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
    Label10: TLabel;
    stgFrmExtornaReceber: TcxPropertiesStore;
    Panel2: TPanel;
    b2: TBevel;
    LblCaixa: TLabel;
    LblTitulo: TLabel;
    Panel5: TPanel;
    pc: TcxPageControl;
    pnlCampos: TPanel;
    TLCustomize: TdxTreeList;
    TLCustomizeColumn: TdxTreeListColumn;
    TLCustomizeIsVisible: TdxTreeListCheckColumn;
    btnEstornar: TdxBarButton;
    btnConfig: TdxBarButton;
    btnExpExcel: TdxBarButton;
    ActExporta: TAction;
    ActConfigura: TAction;
    SaveDialog: TSaveDialog;
    GRID: TdxDBGrid;
    GRIDCODIGO: TdxDBGridMaskColumn;
    GRIDCODIGO_CR: TdxDBGridMaskColumn;
    GRIDHISTORICO_BX: TdxDBGridMaskColumn;
    GRIDPLANILHA: TdxDBGridMaskColumn;
    GRIDPESSOA_FJ: TdxDBGridMaskColumn;
    GRIDDOCTO: TdxDBGridMaskColumn;
    GRIDPARCELA: TdxDBGridMaskColumn;
    GRIDHISTORICO: TdxDBGridMaskColumn;
    GRIDORIGEM: TdxDBGridMaskColumn;
    GRIDCODIGO_VN: TdxDBGridMaskColumn;
    GRIDAVISO: TdxDBGridMaskColumn;
    GRIDVALOR: TdxDBGridMaskColumn;
    GRIDJUROS: TdxDBGridMaskColumn;
    GRIDDESCONTOS: TdxDBGridMaskColumn;
    GRIDTotal: TdxDBGridColumn;
    GRIDVLR_PARCIAL: TdxDBGridMaskColumn;
    GRIDVLR_BAIXA: TdxDBGridMaskColumn;
    GRIDDT_BAIXA: TdxDBGridDateColumn;
    GRIDDT_EMISSAO: TdxDBGridDateColumn;
    GRIDDT_VENCTO: TdxDBGridDateColumn;
    GRIDDT_LANCTO: TdxDBGridDateColumn;
    GRIDDT_AVISO: TdxDBGridDateColumn;
    GRIDNUMDUPLICATA: TdxDBGridMaskColumn;
    GRIDAtraso: TdxDBGridColumn;
    GRIDLOCAL: TdxDBGridMaskColumn;
    ActEstornar2: TAction;
    ActRecibo: TAction;
    btnRecibo: TdxBarButton;
    GRIDNOME: TdxDBGridMaskColumn;
    GRIDCOD_INDEXADOR: TdxDBGridMaskColumn;
    GRIDIDX_DATABASE: TdxDBGridDateColumn;
    GRIDIDX_COTACAO: TdxDBGridCurrencyColumn;
    GRIDIDX_QTDE: TdxDBGridCurrencyColumn;
    GRIDNUM_NF: TdxDBGridMaskColumn;
    GRIDNUM_CF: TdxDBGridMaskColumn;
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
  private
    DragNode: TdxTreeListNode;
    { Private declarations }
    procedure Synchronize;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmExtornaReceber: TFrmExtornaReceber;

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


procedure TFrmExtornaReceber.FormClose(Sender: TObject; var Action: TCloseAction);
var
  Diretorio :string;
begin
  If MessageDlg('Deseja Sair da Tela?', mtConfirmation, [mbOK, mbCancel], 0) = MROK then
  begin
    Datasource.Dataset.Close;
    Action := caFree;
    FrmExtornaReceber := Nil;

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
end;

procedure TFrmExtornaReceber.Save(ADefaultExt, AFilter, AFileName: String;
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

procedure TFrmExtornaReceber.FormShow(Sender: TObject);
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
//  grid.SetFocus;
end;

procedure TFrmExtornaReceber.FormCreate(Sender: TObject);
begin
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, LblTitulo.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);

  Synchronize;

  if fileExists('C:\Sistemas\HelpStore\filtros\FiltroGrdEstorno.txt') then
    LoadDBGridFilterFromFile('C:\Sistemas\HelpStore\filtros\FiltroGrdEstorno.txt',Grid.Filter);

end;

procedure TFrmExtornaReceber.Synchronize;
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


procedure TFrmExtornaReceber.dxDBEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmExtornaReceber.pnlClientResize(Sender: TObject);
begin
  b2.Width := pnlClient.Width - 17;
end;

procedure TFrmExtornaReceber.ActFecharExecute(Sender: TObject);
begin
  If FrmExtornaReceber.FormStyle = fsMDIChild Then
     FrmMain.opFechar.OnClick(FrmMain.opFechar)
  Else
     Close;
end;

procedure TFrmExtornaReceber.ActPeriodoExecute(Sender: TObject);
Var
   Cont: Integer;
   codcliente : integer;
begin
     Application.CreateForm(TFrmBaixaContas, FrmBaixaContas);

     FrmBaixaContas.Caption           := 'Filtrar';
     FrmBaixaContas.LblTitulo.Caption := 'Filtra Contas Recebidas';
     FrmBaixaContas.LblTitulo.Caption := 'Dados do Filtro';
     FrmBaixaContas.dsPessoas.DataSet := DmFinanceiro.SelPessoasFj ;

     IF FrmBaixaContas.ShowModal = MROK
     THEN BEGIN
          if (FrmBaixaContas.CmbPessoa.Text <> '') then
            CodCliente := FrmBaixaContas.CmbPessoa.lookupKeyValue
          else if (FrmBaixaContas.CmbFantasia.Text <> '') then
            CodCliente := FrmBaixaContas.CmbFantasia.lookupKeyValue;

          With DmFinanceiro do
          begin
               Cont := 0 ;

               Baixas_Receber.Close ;

               Baixas_Receber.Sql.Clear ;

               Baixas_Receber.SQL.Add (' Select * From Ver_Baixa_Receber ( :CNPJ ) ');

               IF (( FrmBaixaContas.Ini.Text <> '  /  /  ' ) and ( FrmBaixaContas.Ini.Text <> '  /  /    ' ))
               THEN BEGIN
                    Baixas_Receber.Params.CreateParam ( FtDate, 'INI', PtInputOutPut );
                    Baixas_Receber.SQL.Add (' Where DT_BAIXA >= :INI ');

                    Baixas_Receber.ParamByName ('INI').asdate := FrmBaixaContas.Ini.Date ;
                    Cont := Cont + 1;
               END;

               IF (( FrmBaixaContas.Fim.Text <> '  /  /  ' ) and ( FrmBaixaContas.Fim.Text <> '  /  /    ' ))
               THEN BEGIN
                    if Cont = 0
                    Then Begin
                         Baixas_Receber.Params.CreateParam ( FtDate, 'FIM', PtInputOutPut );

                         Baixas_Receber.SQL.Add (' Where DT_BAIXA <= :FIM ');

                         Baixas_Receber.ParamByName ('FIM').asdate := FrmBaixaContas.Fim.Date ;

                         Cont := Cont + 1;
                    end
                    Else Begin
                         Baixas_Receber.Params.CreateParam ( FtDate, 'FIM', PtInputOutPut );

                         Baixas_Receber.SQL.Add (' and DT_BAIXA <= :FIM ');

                         Baixas_Receber.ParamByName ('FIM').asdate := FrmBaixaContas.Fim.Date ;

                         Cont := Cont + 1;
                    end;
               END;

               IF ( FrmBaixaContas.codigo.value > 0 )
               THEN BEGIN
                    if Cont = 0
                    Then Begin
                         Baixas_Receber.Params.CreateParam ( FtInteger, 'COD', PtInputOutPut );

                         Baixas_Receber.SQL.Add (' Where Pessoa_Fj = :COD ');

                         Baixas_Receber.ParamByName ('COD').asInteger := trunc(FrmBaixaContas.codigo.value) ;

                         Cont := Cont + 1;
                    end
                    else begin
                         Baixas_Receber.Params.CreateParam ( FtInteger, 'COD', PtInputOutPut );

                         Baixas_Receber.SQL.Add (' and Pessoa_Fj = :COD ');

                         Baixas_Receber.ParamByName ('COD').asInteger := trunc(FrmBaixaContas.codigo.value) ;

                         Cont := Cont + 1;
                    end;
               END;

               IF (FrmBaixaContas.CmbPessoa.Text <> '') OR (codCliente > 0)THEN
               BEGIN
                    if Cont = 0
                    Then Begin
                         IF (codCliente > 0)
                         THEN BEGIN
                              Baixas_Receber.Params.CreateParam ( FtInteger, 'PES', PtInputOutPut );

                              Baixas_Receber.SQL.Add (' Where Pessoa_Fj = :PES ');

                              Baixas_Receber.ParamByName ('PES').asInteger := codCliente;

                              Cont := Cont + 1;
                         end
                         else begin
                              Baixas_Receber.Params.CreateParam ( FtInteger, 'PES', PtInputOutPut );

                              Baixas_Receber.SQL.Add (' Where Pessoa_Fj = :PES ');

                              Baixas_Receber.ParamByName ('PES').asInteger := FrmBaixaContas.CmbPessoa.LookUpKeyValue ;

                              Cont := Cont + 1;
                         end;
                    end
                    else begin
                         IF (codCliente > 0)
                         THEN BEGIN
                              Baixas_Receber.Params.CreateParam ( FtInteger, 'PES', PtInputOutPut );

                              Baixas_Receber.SQL.Add (' And Pessoa_Fj = :PES ');

                              Baixas_Receber.ParamByName ('PES').asInteger := codCliente;
                         end
                         else begin
                              Baixas_Receber.Params.CreateParam ( FtInteger, 'PES', PtInputOutPut );

                              Baixas_Receber.SQL.Add (' And Pessoa_Fj = :PES ');

                              Baixas_Receber.ParamByName ('PES').asInteger := FrmBaixaContas.CmbPessoa.LookUpKeyValue ;

                              Cont := Cont + 1;
                         end;
                    end;
               END;

               IF ( FrmBaixaContas.EdDocumento.Text <> '' )
               THEN BEGIN
                    if Cont = 0
                    Then Begin
                         Baixas_Receber.SQL.Add (' Where DOCTO Like ' + char(39) + '%' + FrmBaixaContas.EdDocumento.Text+'%'+ char(39));

                         Cont := Cont + 1;
                    end
                    else begin
                         Baixas_Receber.SQL.Add (' and DOCTO Like ' + char(39) + '%' + FrmBaixaContas.EdDocumento.Text+'%'+ char(39));

                         Cont := Cont + 1;
                    end;
               END;

               Baixas_Receber.Prepare ;
               Baixas_Receber.Open    ;

               GRID.SETFOCUS ;
          END;
     END;
end;

procedure TFrmExtornaReceber.ActExtornaExecute(Sender: TObject);
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

procedure TFrmExtornaReceber.TLCustomizeDragDrop(Sender, Source: TObject;
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

procedure TFrmExtornaReceber.TLCustomizeDragOver(Sender, Source: TObject;
  X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
    Accept := Source = Sender;
end;

procedure TFrmExtornaReceber.TLCustomizeStartDrag(Sender: TObject;
  var DragObject: TDragObject);
begin
  DragNode := TdxTreeList(Sender).FocusedNode;
end;

procedure TFrmExtornaReceber.ActConfiguraExecute(Sender: TObject);
begin
  pnlCampos.visible := (not pnlCampos.visible);
end;

procedure TFrmExtornaReceber.ActExportaExecute(Sender: TObject);
begin
    Save('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', 'Contas Recebidas.xls', Grid.SaveToXLS);
end;

procedure TFrmExtornaReceber.ActEstornar2Execute(Sender: TObject);
var
  Y : variant;
begin
  Application.CreateForm(TFrmConfirmaEstorno, FrmConfirmaEstorno);
  FrmConfirmaEstorno.Planilha := DmFinanceiro.Baixas_ReceberPlanilha.value;
  FrmConfirmaEstorno.ShowModal;
  FrmConfirmaEstorno.Free ;
  FrmConfirmaEstorno := Nil ;

  DMFINANCEIRO.Baixas_Receber.Close;
  DMFINANCEIRO.Baixas_Receber.Open
end;

procedure TFrmExtornaReceber.ActReciboExecute(Sender: TObject);
begin
  with DmSerie_Customizaveis do
  begin
       EdtRecibo.close;
       EdtRecibo.parambyname('cnpj').value := dmApp.cnpj;
       EdtRecibo.Open;

       FrmSeriesCustomizaveis := TFrmSeriesCustomizaveis.Create(Self);
       FrmSeriesCustomizaveis.rptRecibo.Template.DatabaseSettings.Name := EdtReciboCNPJ.asstring;
       FrmSeriesCustomizaveis.rptRecibo.Template.LoadFromDatabase;

       dmRelatorios2.QryRecibo.close;
       dmRelatorios2.QryRecibo.parambyname('cnpj').value := dmApp.cnpj;
       dmRelatorios2.QryRecibo.parambyname('codigo').value := DmFinanceiro.Baixas_ReceberPLANILHA.asInteger;
       dmRelatorios2.QryRecibo.parambyname('reimpressao').value := 'S';
       dmRelatorios2.QryRecibo.Open;

       FrmSeriesCustomizaveis.rptRecibo.print;
       FrmSeriesCustomizaveis.free;
       FrmSeriesCustomizaveis :=  nil;
  end;
end;

end.
