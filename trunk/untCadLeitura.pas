unit untCadLeitura;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, untCadPadraoMaster, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, cxContainer,
  dxSkinsdxBarPainter, dxmdaset, cxIntlBase, cxintl, cxPropertiesStore,
  cxGridCustomPopupMenu, cxGridPopupMenu, dxBarDBNav, ImgList, ActnList,
  dxBar, cxClasses, IBQuery, IBCustomDataSet, cxLabel, cxTextEdit,
  cxDBEdit, ExtCtrls, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxGrid,
  cxPC, cxCheckBox, Menus, cxGroupBox, cxRadioGroup, cxDropDownEdit,
  cxCalendar, cxMaskEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  StdCtrls, cxButtons, cxCalc, cxMemo, IBStoredProc;

type
  TfrmCadLeituras = class(TfrmCadPadraoMaster)
    btnFiltroCliente: TcxButton;
    bTfrmCadClientes: TcxDBLookupComboBox;
    edtFinal: TcxDBDateEdit;
    edtInicial: TcxDBDateEdit;
    cxLabel33: TcxLabel;
    cxLabel34: TcxLabel;
    cxDBRadioGroup1: TcxDBRadioGroup;
    mtbFiltroDT_FIM: TDateField;
    mtbFiltroDT_INI: TDateField;
    mtbFiltroCOD_CLIENTE: TIntegerField;
    mtbFiltroSTATUS: TIntegerField;
    cxGroupBox1: TcxGroupBox;
    cxTextEdit1: TcxTextEdit;
    cxLabel10: TcxLabel;
    cxTextEdit2: TcxTextEdit;
    cxTextEdit3: TcxTextEdit;
    dsClienteFiltro: TDataSource;
    qryFiltroCliente: TIBQuery;
    qryFiltroClienteCODIGO: TIntegerField;
    qryFiltroClienteNOME_RAZAO: TIBStringField;
    qryFiltroClienteTECNICO: TIntegerField;
    qryFiltroClienteEMAIL: TIBStringField;
    qryFiltroClienteCIDADE: TIBStringField;
    dtEditCNPJ: TIBStringField;
    dtEditCODIGO: TIntegerField;
    dtEditCONTRATO: TIntegerField;
    dtEditDATA_REFERENCIA: TDateField;
    dtEditDATA: TDateField;
    dtEditFECHADA: TIBStringField;
    dtEditGERA_FATURAMENTO: TIBStringField;
    dtEditTOTAL_COPIAS: TIntegerField;
    dtEditCOPIAS_EXCESSO: TIntegerField;
    dtEditVALOR_LEITURA: TFloatField;
    dtEditCTR_VALOR: TFloatField;
    dtEditCTR_FRANQUIA: TIntegerField;
    dtEditCTR_VALOR_COPIA_EXCEDENTE: TFloatField;
    dtEditVENDA: TIntegerField;
    dtEditDESC_ACRESC_CP: TIntegerField;
    dtEditVALOR_TOTAL_COPIAS_EXCENTE: TFloatField;
    dtEditOBSERVACAO: TMemoField;
    dtEditPERIODO: TIBStringField;
    aTfrmCadContratoCopias: TcxDBLookupComboBox;
    cxLabel11: TcxLabel;
    QryContratosLeitura: TIBQuery;
    cxDBDateEdit1: TcxDBDateEdit;
    cxLabel12: TcxLabel;
    edSolicitante: TcxDBTextEdit;
    cxLabel16: TcxLabel;
    cxDBMemo2: TcxDBMemo;
    cxLabel13: TcxLabel;
    cxGroupBox2: TcxGroupBox;
    cxDBMemo1: TcxDBMemo;
    Label8: TcxLabel;
    Label6: TcxLabel;
    Label1: TcxLabel;
    EdtContadorTotal: TcxDBTextEdit;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxGroupBox3: TcxGroupBox;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBTextEdit5: TcxDBTextEdit;
    Label5: TcxLabel;
    Label13: TcxLabel;
    Label7: TcxLabel;
    Label14: TcxLabel;
    Label3: TcxLabel;
    cxDBTextEdit6: TcxDBTextEdit;
    dsContratoLeitura: TDataSource;
    cxDBCalcEdit2: TcxDBCalcEdit;
    dtListDet1CNPJ: TIBStringField;
    dtListDet1CODIGO: TIntegerField;
    dtListDet1LEITURA: TIntegerField;
    dtListDet1COD_ITEM_CONTRATO: TIntegerField;
    dtListDet1ULTIMA_LEITURA: TIntegerField;
    dtListDet1LEITURA_ATUAL: TIntegerField;
    dtListDet1SALDO_LEITURA: TIntegerField;
    dtListDet1COD_CLIENTE: TIntegerField;
    dtListDet1TESTE: TIBStringField;
    dtListDet1CTR_VALOR: TFloatField;
    dtListDet1CTR_FRANQUIA: TIntegerField;
    dtListDet1CTR_VALOR_COPIA_EXCEDENTE: TFloatField;
    dtListDet1HISTORICO: TIBStringField;
    dtListDet1ULTIMA_LEITURA_COR: TIntegerField;
    dtListDet1LEITURA_ATUAL_COR: TIntegerField;
    dtListDet1SALDO_LEITURA_COR: TIntegerField;
    dtListDet1ULT_LEITURA_DIG: TIntegerField;
    dtListDet1LEITURA_ATUAL_DIG: TIntegerField;
    dtListDet1SALDO_LEITURA_DIG: TIntegerField;
    dtListDet1CONTRATO: TIntegerField;
    dtListDet1COD_PRODUTO: TIBStringField;
    dtListDet1SERIE: TIBStringField;
    dtListDet1MARCA: TIBStringField;
    dtListDet1NOME_PRODUTO: TIBStringField;
    dtListDet1NOME_CLIENTE: TIBStringField;
    dtListDet1CIDADE: TIBStringField;
    dtListDet1LOGRADOURO: TIBStringField;
    dtListDet1FONE: TIBStringField;
    dtListDet1FAX: TIBStringField;
    dtListDet1CELULAR: TIBStringField;
    dtListDet1FAX1: TIBStringField;
    dtListDet1CELULAR1: TIBStringField;
    dtListDet1EMAIL: TIBStringField;
    dtListDet1MODELO_EQUIPAMENTO: TIBStringField;
    dtListDet1INFORMACOES_ITENS: TMemoField;
    dtListDet1BAIRRO: TIBStringField;
    dtListDet1DADOS_CONTRATO: TIBStringField;
    dtListDet1CONTAGEM_LEITURA: TIBStringField;
    dtListDet1TOTAL_LEITURA: TIBStringField;
    dtEditDet1CNPJ: TIBStringField;
    dtEditDet1CODIGO: TIntegerField;
    dtEditDet1LEITURA: TIntegerField;
    dtEditDet1COD_ITEM_CONTRATO: TIntegerField;
    dtEditDet1ULTIMA_LEITURA: TIntegerField;
    dtEditDet1LEITURA_ATUAL: TIntegerField;
    dtEditDet1SALDO_LEITURA: TIntegerField;
    dtEditDet1COD_CLIENTE: TIntegerField;
    dtEditDet1TESTE: TIBStringField;
    dtEditDet1CTR_VALOR: TFloatField;
    dtEditDet1CTR_FRANQUIA: TIntegerField;
    dtEditDet1CTR_VALOR_COPIA_EXCEDENTE: TFloatField;
    dtEditDet1HISTORICO: TIBStringField;
    dtEditDet1ULTIMA_LEITURA_COR: TIntegerField;
    dtEditDet1LEITURA_ATUAL_COR: TIntegerField;
    dtEditDet1SALDO_LEITURA_COR: TIntegerField;
    dtEditDet1ULT_LEITURA_DIG: TIntegerField;
    dtEditDet1LEITURA_ATUAL_DIG: TIntegerField;
    dtEditDet1SALDO_LEITURA_DIG: TIntegerField;
    TVDet1CNPJ: TcxGridDBBandedColumn;
    TVDet1CODIGO: TcxGridDBBandedColumn;
    TVDet1LEITURA: TcxGridDBBandedColumn;
    TVDet1COD_ITEM_CONTRATO: TcxGridDBBandedColumn;
    TVDet1ULTIMA_LEITURA: TcxGridDBBandedColumn;
    TVDet1LEITURA_ATUAL: TcxGridDBBandedColumn;
    TVDet1SALDO_LEITURA: TcxGridDBBandedColumn;
    TVDet1COD_CLIENTE: TcxGridDBBandedColumn;
    TVDet1TESTE: TcxGridDBBandedColumn;
    TVDet1HISTORICO: TcxGridDBBandedColumn;
    TVDet1ULTIMA_LEITURA_COR: TcxGridDBBandedColumn;
    TVDet1LEITURA_ATUAL_COR: TcxGridDBBandedColumn;
    TVDet1SALDO_LEITURA_COR: TcxGridDBBandedColumn;
    TVDet1ULT_LEITURA_DIG: TcxGridDBBandedColumn;
    TVDet1LEITURA_ATUAL_DIG: TcxGridDBBandedColumn;
    TVDet1CONTRATO: TcxGridDBBandedColumn;
    TVDet1SALDO_LEITURA_DIG: TcxGridDBBandedColumn;
    TVDet1COD_PRODUTO: TcxGridDBBandedColumn;
    TVDet1SERIE: TcxGridDBBandedColumn;
    TVDet1MARCA: TcxGridDBBandedColumn;
    TVDet1NOME_PRODUTO: TcxGridDBBandedColumn;
    TVDet1NOME_CLIENTE: TcxGridDBBandedColumn;
    TVDet1CIDADE: TcxGridDBBandedColumn;
    TVDet1LOGRADOURO: TcxGridDBBandedColumn;
    TVDet1FONE: TcxGridDBBandedColumn;
    TVDet1FAX: TcxGridDBBandedColumn;
    TVDet1CELULAR: TcxGridDBBandedColumn;
    TVDet1FAX1: TcxGridDBBandedColumn;
    TVDet1CELULAR1: TcxGridDBBandedColumn;
    TVDet1EMAIL: TcxGridDBBandedColumn;
    TVDet1MODELO_EQUIPAMENTO: TcxGridDBBandedColumn;
    TVDet1INFORMACOES_ITENS: TcxGridDBBandedColumn;
    TVDet1BAIRRO: TcxGridDBBandedColumn;
    TVDet1DADOS_CONTRATO: TcxGridDBBandedColumn;
    TVDet1CONTAGEM_LEITURA: TcxGridDBBandedColumn;
    TVDet1TOTAL_LEITURA: TcxGridDBBandedColumn;
    TVDet1CTR_VALOR: TcxGridDBBandedColumn;
    TVDet1CTR_FRANQUIA: TcxGridDBBandedColumn;
    TVDet1CTR_VALOR_COPIA_EXCEDENTE: TcxGridDBBandedColumn;
    cxDBTextEdit7: TcxDBTextEdit;
    EdtLeituraAtual: TcxDBTextEdit;
    Label10: TcxLabel;
    Label17: TcxLabel;
    Label9: TcxLabel;
    cxDBTextEdit9: TcxDBTextEdit;
    QryContratosLeituraCODIGO: TIntegerField;
    QryContratosLeituraTIPO: TIntegerField;
    QryContratosLeituraCONTRATO: TIBStringField;
    QryContratosLeituraFRANQUIA_COPIAS: TIntegerField;
    QryContratosLeituraVALOR_CONTRATO: TFloatField;
    QryContratosLeituraVALOR_COPIA_EXCEDENTE: TFloatField;
    BtnContratoCopias: TcxButton;
    ActGerarItens: TAction;
    SprGerarItens: TIBStoredProc;
    dxBarButton1: TdxBarButton;
    dtListCNPJ: TIBStringField;
    dtListDESC_ACRESC_CP: TIntegerField;
    dtListVALOR_TOTAL_COPIAS_EXCENTE: TFloatField;
    dtListVENDA: TIntegerField;
    dtListLT_CODIGO: TIntegerField;
    dtListLT_CONTRATO: TIntegerField;
    dtListLT_DATA_REFERENCIA: TDateField;
    dtListLT_DATA: TDateField;
    dtListLT_FECHADA: TIBStringField;
    dtListLT_GERA_FATURAMENTO: TIBStringField;
    dtListLT_TOTAL_COPIAS: TIntegerField;
    dtListLT_COPIAS_EXCESSO: TIntegerField;
    dtListLT_VALOR_LEITURA: TFloatField;
    dtListLT_CTR_VALOR: TFloatField;
    dtListLT_CTR_FRANQUIA: TIntegerField;
    dtListLT_CTR_VALOR_COPIA_EXCEDENTE: TFloatField;
    dtListCLI_CODIGO: TIntegerField;
    dtListCLI_NOME: TIBStringField;
    dtListCLI_FONE: TIBStringField;
    dtListCLI_CONTATO: TIBStringField;
    dtListCDD_NOME: TIBStringField;
    dtListREG_NOME: TIBStringField;
    dtListTIPO_CONTRATO: TIBStringField;
    dtListCT_NUM_CONTRATO: TIBStringField;
    dtListCT_DT_INICIO: TDateTimeField;
    dtListCT_DT_FIM: TDateTimeField;
    dtListCT_FRANQUIA_COPIAS: TIntegerField;
    dtListCT_GERA_LEITURA: TIBStringField;
    dtListCT_VALOR_CONTRATO: TFloatField;
    dtListCT_VALOR_COPIA_EXCEDENTE: TFloatField;
    dtListCT_ATIVO: TIBStringField;
    dtListDIA_BASE: TSmallintField;
    dtListINFORMACOES: TMemoField;
    TVRegistroCNPJ: TcxGridDBBandedColumn;
    TVRegistroDESC_ACRESC_CP: TcxGridDBBandedColumn;
    TVRegistroVALOR_TOTAL_COPIAS_EXCENTE: TcxGridDBBandedColumn;
    TVRegistroVENDA: TcxGridDBBandedColumn;
    TVRegistroLT_CODIGO: TcxGridDBBandedColumn;
    TVRegistroLT_CONTRATO: TcxGridDBBandedColumn;
    TVRegistroLT_DATA_REFERENCIA: TcxGridDBBandedColumn;
    TVRegistroLT_DATA: TcxGridDBBandedColumn;
    TVRegistroLT_FECHADA: TcxGridDBBandedColumn;
    TVRegistroLT_GERA_FATURAMENTO: TcxGridDBBandedColumn;
    TVRegistroLT_TOTAL_COPIAS: TcxGridDBBandedColumn;
    TVRegistroLT_COPIAS_EXCESSO: TcxGridDBBandedColumn;
    TVRegistroLT_VALOR_LEITURA: TcxGridDBBandedColumn;
    TVRegistroLT_CTR_VALOR: TcxGridDBBandedColumn;
    TVRegistroLT_CTR_FRANQUIA: TcxGridDBBandedColumn;
    TVRegistroLT_CTR_VALOR_COPIA_EXCEDENTE: TcxGridDBBandedColumn;
    TVRegistroCLI_CODIGO: TcxGridDBBandedColumn;
    TVRegistroCLI_NOME: TcxGridDBBandedColumn;
    TVRegistroCLI_FONE: TcxGridDBBandedColumn;
    TVRegistroCLI_CONTATO: TcxGridDBBandedColumn;
    TVRegistroCDD_NOME: TcxGridDBBandedColumn;
    TVRegistroREG_NOME: TcxGridDBBandedColumn;
    TVRegistroTIPO_CONTRATO: TcxGridDBBandedColumn;
    TVRegistroCT_NUM_CONTRATO: TcxGridDBBandedColumn;
    TVRegistroCT_DT_INICIO: TcxGridDBBandedColumn;
    TVRegistroCT_DT_FIM: TcxGridDBBandedColumn;
    TVRegistroCT_FRANQUIA_COPIAS: TcxGridDBBandedColumn;
    TVRegistroCT_GERA_LEITURA: TcxGridDBBandedColumn;
    TVRegistroCT_VALOR_CONTRATO: TcxGridDBBandedColumn;
    TVRegistroCT_VALOR_COPIA_EXCEDENTE: TcxGridDBBandedColumn;
    TVRegistroCT_ATIVO: TcxGridDBBandedColumn;
    TVRegistroDIA_BASE: TcxGridDBBandedColumn;
    TVRegistroINFORMACOES: TcxGridDBBandedColumn;
    ActFecharLeituras: TAction;
    dxBarButton2: TdxBarButton;
    ActEstornarLeitura: TAction;
    SprEstornaLeitura: TIBStoredProc;
    dxBarButton3: TdxBarButton;
    SprGeraTodasLeituras: TIBStoredProc;
    procedure TVRegistroVENDACustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure btnFiltroClienteClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ActFilterExecute(Sender: TObject);
    procedure BtnContratoCopiasClick(Sender: TObject);
    procedure ActGerarItensExecute(Sender: TObject);
    procedure dtEditNewRecord(DataSet: TDataSet);
    procedure ActFecharLeiturasExecute(Sender: TObject);
    procedure dtEditDet1BeforePost(DataSet: TDataSet);
    procedure dtEditDESC_ACRESC_CPValidate(Sender: TField);
    procedure ActEstornarLeituraExecute(Sender: TObject);
    procedure ActSaveExecute(Sender: TObject);
    procedure ActEditExecute(Sender: TObject);
  private
    { Private declarations }
    procedure filtrar;
  public
    { Public declarations }
  end;

var
  frmCadLeituras: TfrmCadLeituras;

implementation

uses untCadClientes, Application_DM, UntCadContratoCopias, Cadastros_Dm2;

{$R *.dfm}

{ TfrmCadPadraoMaster1 }

procedure TfrmCadLeituras.filtrar;
var
  sFiltro, sql : string;
begin
    sFiltro := '';
    if mtbFiltroCOD_CLIENTE.asInteger > 0 then
      sFiltro := ' and ct.cod_cliente = '+mtbFiltroCOD_CLIENTE.AsString;

    if (mtbFiltroDT_INI.Value > 0) then
      sFiltro := sFiltro + ' and lt.data_referencia >= '''+formatdatetime('mm/dd/yyyy',mtbFiltroDT_INI.Value)+'''';

    if (mtbFiltroDT_FIM.Value > 0) then
      sFiltro := sFiltro + ' and lt.data_referencia <= '''+formatdatetime('mm/dd/yyyy',mtbFiltroDT_FIM.Value)+'''';

    case mtbFiltroSTATUS.Value of
      0: sFiltro := sFiltro + ' and lt.fechada = ''N''';
      1: sFiltro := sFiltro + ' and lt.fechada = ''S''' + ' and lt.gera_faturamento = ''N''';
      2: sFiltro := sFiltro + ' and lt.gera_faturamento = ''S''';
    end;

    dtList.sql.text := sqloriginal + sfiltro+ ' order by lt.CODIGO ' ;
end;

procedure TfrmCadLeituras.TVRegistroVENDACustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
Var
  Fechada, FatGerado : Variant;
begin
  inherited;
  //Procedimento irá pintar de vermelho a linha em que o atendimento tenha 'estourado' o tempo resposta delimitado
  //no contrato de atendimento

  if not (AViewInfo.GridRecord as TcxCustomGridRow).IsFilterRow then
  begin
     ACanvas.Canvas.Font.Color := clBlack;
     if TVRegistro.ViewData.Records[AviewInfo.GridRecord.Index].Selected then
     begin
       ACanvas.Canvas.Brush.Color := clWhite;
       exit;
     end;

     ACanvas.Canvas.Brush.Style := bsSolid;
     FatGerado := TVRegistro.ViewData.Records[AViewInfo.GridRecord.Index].Values[TVRegistroLT_GERA_FATURAMENTO.Index];
     Fechada := TVRegistro.ViewData.Records[AViewInfo.GridRecord.Index].Values[TVRegistroLT_FECHADA.Index];
     if (not VarIsNull(FatGerado) and not VarIsNull(Fechada)) then
     begin
       //vai pintar de vermelho se tiver estourado o tempo resposta, e de laranja se tiver faltando 2horas ou menos pra estourar
       if(FatGerado = 'S')then
         ACanvas.Canvas.Brush.Color := $00ECAD84
       else if(Fechada = 'S')then
         ACanvas.Canvas.Brush.Color := $0047EFF8
       else
         ACanvas.Canvas.Brush.Color := $00A2E6B8
     end
  end;
end;

procedure TfrmCadLeituras.btnFiltroClienteClick(Sender: TObject);
begin
  inherited;
  CadastroLookup(TfrmCadClientes,tibdataset(mtbFiltro),'COD_CLIENTE',qryFiltroCliente);
end;

procedure TfrmCadLeituras.FormCreate(Sender: TObject);
begin
  inherited;
   mtbFiltroSTATUS.value := 0;
  //se houver uma data padrao minima de listagem de OS, então sera atribuida inicialmente ao filtro
   mtbFiltroDT_INI.Value := dmApp.DataServidor - 60;

end;

procedure TfrmCadLeituras.ActFilterExecute(Sender: TObject);
begin
  Filtrar;
  inherited;

end;

procedure TfrmCadLeituras.BtnContratoCopiasClick(Sender: TObject);
begin
  inherited;
  CadastroLookup(TfrmCadContratoCopias,dtEdit,'CONTRATO',QryContratosLeitura);
end;

procedure TfrmCadLeituras.ActGerarItensExecute(Sender: TObject);
begin
  inherited;
  if pgcCadastro.ActivePage = tbsLista then
  begin
    if Application.MessageBox('Deseja realmente gerar leituras para TODOS os contratos ATIVOS?' + #13 + #13 +
                               ' * Serão geradas leituras em aberto para todos os contratos' + #13 +
                               '   que estiverem ativos. Juntamente com as leituras serão'  + #13 +
                               '   gerados os itens que deverão apenas ter seus valores de' + #13 +
                               '   cópias preechidos pelo usuário.','Aviso', mb_iconquestion + mb_yesno) = id_no then
    exit;

    try
      SprGeraTodasLeituras.ParamByName('CNPJ').asString := dmApp.cnpj;
      SprGeraTodasLeituras.ParamByName('DATA_REFERENCIA').value := Date;
      SprGeraTodasLeituras.ExecProc;
      SprGeraTodasLeituras.Transaction.CommitRetaining;
      Application.Messagebox('Itens gerados com sucesso para todos os clientes ativos.' , 'Aviso' , MB_ICONINFORMATION + MB_OK);

      dtList.Close;
      dtList.Open;

      dtEdit.Close;
      dtEdit.Open;
      
    except
      On E:EDataBaseError Do
      begin
        Application.Messagebox(Pchar('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message),'Aviso',mb_iconerror+mb_ok);
        Exit;
      end
      else
      begin
        Application.Messagebox('Ocorreu um erro não identificado pelo sistema !','Aviso',mb_iconerror+mb_ok);
        Exit;
      end;
    end;
    Exit;
  end;

  if Application.MessageBox('Deseja realmente gerar os itens?','Aviso', mb_iconinformation + mb_yesno) = id_no then
    exit;

  //Verifica se existe itens gerados.
  dtListDet1.FetchAll;
  if (dtListDet1.recordCount > 0) then
  begin
    Application.MessageBox('A leitura já possui itens gerados','Aviso', mb_iconerror + mb_ok);
    exit;
  end;
  //

  if (dtEditDATA_REFERENCIA.value <= 0) then
  begin
    Application.MessageBox('Defina uma data de referência','Aviso', mb_iconerror + mb_ok);
    exit;
  end;

  try
    if (dtEdit.state in [dsInsert,dsEdit]) then
    dtEdit.Post;

    SprGerarItens.parambyname('CNPJ').value            := dtEditCNPJ.value;
    SprGerarItens.parambyname('CONTRATO').value        := dtEditCONTRATO.value;
    SprGerarItens.parambyname('LEITURA').value         := dtEditCODIGO.value;
    SprGerarItens.parambyname('DATA_REFERENCIA').value := dtEditDATA_REFERENCIA.value;
    SprGerarItens.parambyname('TIPO').value            := QryContratosLeituraTIPO.Value;
    SprGerarItens.ExecProc;
    dtEdit.Transaction.CommitRetaining;
  except
    on E:EDataBaseError do
    begin
      Application.Messagebox(Pchar('Ocorreu o seguinte erro : ' + #13 + #13 +E.Message),'Aviso',mb_ok + mb_iconerror);
      exit;
    end
    else
    begin
      Application.Messagebox('Erro ao tentar gerar os itens da leitura','Aviso',mb_ok + mb_iconerror);
      exit;
    end;
  end;

  dtListDet1.Close;
  dtListDet1.Open;
end;

procedure TfrmCadLeituras.dtEditNewRecord(DataSet: TDataSet);
begin
  inherited;
  dtEditFECHADA.value := 'N';
  dtEditGERA_FATURAMENTO.value := 'N';
  dtEditDATA_REFERENCIA.value := date;
end;

procedure TfrmCadLeituras.ActFecharLeiturasExecute(Sender: TObject);
var
  existe : boolean;
begin
  inherited;
  if pgcCadastro.ActivePage = tbsLista then
    Exit;

  Try
    {Verificando se leitura já esta fechada}
    if (dtEditFECHADA.value = 'S') then
    begin
      Application.MessageBox('Leitura já se encontra fechada','Aviso',MB_OK+MB_ICONERROR);
      exit;
    end;

    If Application.MessageBox('Deseja realmente fechar esta leitura?','Aviso',MB_YESNO+MB_ICONQUESTION)=IDNO then
      exit;

    {Verificando se leitura possui itens}
    if (dtListDet1.RecordCount <= 0) then
    begin
      Application.MessageBox('Impossível realizar o fechamento. Defina antes os itens da leitura','Aviso',MB_OK+MB_ICONERROR);
      exit;
    end;

    {Verificando se algum item não tenha recebido a leitura de cópias}
      dtListDet1.DisableControls;
      dtListDet1.first;
      existe := false;
      while not (dtListDet1.eof) do
      begin
        if (dtListDet1LEITURA_ATUAL.asInteger <= 0) then
        begin
          existe := true;
          break;
        end
        else
          existe := false;

        dtListDet1.next;
      end;
      dtListDet1.EnableControls;

      if (existe) then
      begin
        Application.MessageBox('Impossível realizar o fechamento. Existem itens que não possuem valores de leitura','Aviso',MB_OK+MB_ICONERROR);
        exit;
      end;


      {Realizando fechamento}
      if (dtEdit.state <> dsEdit) then
      begin
        dtEdit.Close;
        dtEdit.Open;
        dtEdit.Edit;
      end;

      dtEditFECHADA.value := 'S';

      tbsMaster1.SetFocus;
      ActSave.Execute;
      Application.MessageBox('Fechamento realizado com sucesso','Aviso',MB_OK+MB_ICONINFORMATION);

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

procedure TfrmCadLeituras.dtEditDet1BeforePost(DataSet: TDataSet);
var
  v1, v2 : string;
begin
  inherited;
  //Leitura atual inferior a ultima leitura usuário precisa ser informado
  if (dtEditDet1LEITURA_ATUAL.Value) < (dtEditDet1ULTIMA_LEITURA.Value) then
  begin
    v1 := inttostr(dtEditDet1LEITURA_ATUAL.Value);
    v2 := inttostr(dtEditDet1ULTIMA_LEITURA.Value);
    if Application.MessageBox(Pchar('O Valor da LEITURA ATUAL ('+ v1 +') é inferior ao valor da ULTIMA LEITURA('+ v2 +'). Deseja confirmar o valor atual?'),'Aviso', mb_iconinformation + mb_yesno) = id_no then
    begin
      abort;
      EdtLeituraAtual.setfocus;
    end;
  end;
end;

procedure TfrmCadLeituras.dtEditDESC_ACRESC_CPValidate(Sender: TField);
begin
  inherited;
  if ((dtEditTOTAL_COPIAS.Value + dtEditCOPIAS_EXCESSO.Value + dtEditDESC_ACRESC_CP.Value) > dtEditCTR_FRANQUIA.Value) or (dtEditDESC_ACRESC_CP.Value <= 0)then
  begin
   dtEditVALOR_TOTAL_COPIAS_EXCENTE.value := ((dtEditCOPIAS_EXCESSO.Value + dtEditDESC_ACRESC_CP.Value) * dtEditCTR_VALOR_COPIA_EXCEDENTE.value);
   dtEditVALOR_LEITURA.Value := dtEditCTR_VALOR.AsFloat + dtEditVALOR_TOTAL_COPIAS_EXCENTE.AsFloat;
  end;
end;

procedure TfrmCadLeituras.ActEstornarLeituraExecute(Sender: TObject);
var
  CodFaturamentoEstorno: integer;
begin
  inherited;

  if not (pgcCadastro.ActivePage = tbsLista) then
    Exit;

  if (dtListLT_FECHADA.value = 'Não') then
  begin
    Application.MessageBox('Impossível estornar. A leitura está em aberto','Aviso', mb_iconerror + mb_ok);
    exit;
  end;

  if Application.MessageBox('Deseja realmente estornar esta leitura?','Aviso', MB_ICONQUESTION + MB_YESNO) = mrYes then
  begin
    try
      SprEstornaLeitura.ParamByName('CNPJ').asString    := dtListCNPJ.asString   ;
      SprEstornaLeitura.ParamByName('CODIGO').asInteger := dtListLT_CODIGO.value ;
      SprEstornaLeitura.ParamByName('VENDA').value := dtListVENDA.value ;
      SprEstornaLeitura.ExecProc;
      CodFaturamentoEstorno := SprEstornaLeitura.ParamByName('cod_faturamento').asInteger;
      DmaPP.TransactionProc.Commit ;

      if (CodFaturamentoEstorno > 0) then
      begin
        Application.MessageBox(Pchar('Antes de realizar o estorno será necessário excluir o faturamento: '+IntToStr(CodFaturamentoEstorno)),'Aviso', mb_iconerror + mb_ok);
        Exit;
      end
      else
        Application.MessageBox('Estorno realizado com sucesso','Aviso', mb_iconinformation + mb_ok);

      dtList.Close;
      dtList.Open;
    except
      On E:EDataBaseError Do
      begin
       Application.Messagebox(Pchar('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message),'Aviso',mb_iconerror+mb_ok);
       Exit;
      end
      else
      begin
       Application.Messagebox('Ocorreu um erro não identificado pelo sistema !','Aviso',mb_iconerror+mb_ok);
       Exit;
      end;
    end
  end;
end;

procedure TfrmCadLeituras.ActSaveExecute(Sender: TObject);
begin
  inherited;
  dtListDet1.Next;
  if (dtListDet1.eof) then
    ActFecharLeituras.Execute;
end;

procedure TfrmCadLeituras.ActEditExecute(Sender: TObject);
begin
  inherited;
  if PGCSub1.ActivePage = tbsEditaSub1 then
    EdtLeituraAtual.SetFocus;
end;

end.
