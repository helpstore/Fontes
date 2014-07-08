  unit Migrar_Dados_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxBar, StdCtrls, ExtCtrls, dxCntner, dxEditor, dxEdLib,
  ComCtrls,  ActnList, dbtables, db, IBCustomDataSet, IBQuery,
    IBStoredProc, variants, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinXmas2008Blue, Menus, dxSkinscxPCPainter, cxPC,
  cxButtons, cxLabel;

type
  TFrmMigraDados = class(TForm)
    pnlClient: TPanel;
    Bevel1: TBevel;
    b2: TBevel;
    LblTitulo: TcxLabel;
    Panel2: TPanel;
    LblStatus: TcxLabel;
    RzBitBtn2: TcxButton;
    ANDA: TProgressBar;
    DIR: TOpenDialog;
    Actions: TActionList;
    ActFechar: TAction;
    ActAbre: TAction;
    ActExporta: TAction;
    PRODUTOS: TIBQuery;
    PRODUTOSCODIGO: TIBStringField;
    PRODUTOSCODIGO_2: TIBStringField;
    PRODUTOSCNPJ_AGRUP: TIBStringField;
    PRODUTOSCOD_AGRUP: TIBStringField;
    PRODUTOSNOME: TIBStringField;
    PRODUTOSMARCA: TIntegerField;
    PRODUTOSGRUPO: TIntegerField;
    PRODUTOSSUBGRUPO: TIntegerField;
    PRODUTOSREDUCAO: TIntegerField;
    PRODUTOSUNIDADE: TIBStringField;
    PRODUTOSCTE: TSmallintField;
    PRODUTOSCTIE: TSmallintField;
    PRODUTOSQTDADE_1: TFloatField;
    PRODUTOSQTDADE_2: TFloatField;
    PRODUTOSLOCALIZACAO_1: TIBStringField;
    PRODUTOSLOCALIZACAO_2: TIBStringField;
    PRODUTOSLOCALIZACAO_3: TIBStringField;
    PRODUTOSNEG_QTDADE_2: TIBStringField;
    PRODUTOSQTDADE_MIN: TIntegerField;
    PRODUTOSQTDADE_MAX: TIntegerField;
    PRODUTOSCOMPLEMENTO_NF: TIBStringField;
    PRODUTOSDT_ULT_COMPRA: TDateTimeField;
    PRODUTOSQT_ULT_COMPRA: TIntegerField;
    PRODUTOSDT_ULT_VENDA: TDateTimeField;
    PRODUTOSMARGEM_BRUTA: TFloatField;
    PRODUTOSPRC_REPOS: TFloatField;
    PRODUTOSPRC_CUSTO_ANT: TFloatField;
    PRODUTOSPRC_CUSTO_MED: TFloatField;
    PRODUTOSPRC_VENDA: TFloatField;
    PRODUTOSPRC_VENDA_ANT: TFloatField;
    PRODUTOSPRC_VENDA_MED: TFloatField;
    PRODUTOSALIQUOTA_ECF: TIBStringField;
    PRODUTOSORIGEM: TSmallintField;
    PRODUTOSPESO_LIQ: TFloatField;
    PRODUTOSPERC_FRETE: TFloatField;
    PRODUTOSIPI: TFloatField;
    PRODUTOSVOLUME: TFloatField;
    PRODUTOSPROD_PESAVEL: TIBStringField;
    PRODUTOSETIQUETA_ENT: TIBStringField;
    PRODUTOSATIVO: TIBStringField;
    PRODUTOSULTIMO_FORNECEDOR: TIntegerField;
    PRODUTOSFORNECEDOR: TIntegerField;
    PRODUTOSSUBUNIDADE: TIntegerField;
    PRODUTOSNOME_MARCA: TIBStringField;
    PRODUTOSPRC_CUSTO_CODIF: TIBStringField;
    PRODUTOSCODIGO_INTERNO: TIntegerField;
    PRODUTOSDT_ULT_ATU_PRECO: TDateTimeField;
    PRODUTOSCUSTO_AQUISICAO: TFloatField;
    PRODUTOSVENDE_FRACIONADO: TIBStringField;
    PRODUTOSQNTDE_EXPOSTA: TFloatField;
    PRODUTOSPOSSUI_LOTE: TIBStringField;
    PRODUTOSQNTDE_MAXIMA_VENDA: TFloatField;
    PRODUTOSPIS: TIBStringField;
    PRODUTOSCOFINS: TIBStringField;
    PRODUTOSCOM_VENDA_VLR: TFloatField;
    PRODUTOSCOM_VENDA_PCT: TFloatField;
    PRODUTOSPARTICIP_LUCRO: TFloatField;
    PRODUTOSNAO_COBR_JUR_ATE: TIntegerField;
    PRODUTOSPREVISAO_ENTREGA: TDateTimeField;
    PRODUTOSQNTDE_PEDIDA: TFloatField;
    PC: TcxPageControl;
    dxTabSheet1: TcxTabSheet;
    BtnDir: TcxButton;
    PathDestino: TdxEdit;
    Label2: TcxLabel;
    BtnCriar: TcxButton;
    dxTabSheet2: TcxTabSheet;
    Label1: TcxLabel;
    PathOrigem: TdxEdit;
    RzBitBtn3: TcxButton;
    RzBitBtn4: TcxButton;
    ActImporta: TAction;
    Importa: TIBStoredProc;
    TABELA: TTable;
    LBLCODIGO: TcxLabel;
    dxTabSheet3: TcxTabSheet;
    Label3: TcxLabel;
    PathElgin: TdxEdit;
    RzBitBtn1: TcxButton;
    RzBitBtn5: TcxButton;
    LBLCODIGOELGIN: TcxLabel;
    ActAbreElgin: TAction;
    ActImportaElgin: TAction;
    dxTabSheet4: TcxTabSheet;
    Label4: TcxLabel;
    PATHELGINEXP: TdxEdit;
    RzBitBtn6: TcxButton;
    RzBitBtn7: TcxButton;
    T1: TdxEdit;
    T2: TdxEdit;
    T3: TdxEdit;
    T4: TdxEdit;
    T5: TdxEdit;
    T6: TdxEdit;
    FF: TdxEdit;
    II: TdxEdit;
    Label5: TcxLabel;
    Label6: TcxLabel;
    Label7: TcxLabel;
    Label8: TcxLabel;
    Label9: TcxLabel;
    Label10: TcxLabel;
    Label11: TcxLabel;
    Label12: TcxLabel;
    procedure FormCreate(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure ActAbreExecute(Sender: TObject);
    procedure ActExportaExecute(Sender: TObject);
    procedure PRODUTOSBeforeOpen(DataSet: TDataSet);
    procedure RzBitBtn2Click(Sender: TObject);
    procedure RzBitBtn3Click(Sender: TObject);
    procedure ActImportaExecute(Sender: TObject);
    procedure ActAbreElginExecute(Sender: TObject);
    procedure ActImportaElginExecute(Sender: TObject);
    procedure Importar();
    procedure RzBitBtn6Click(Sender: TObject);
    procedure RzBitBtn7Click(Sender: TObject);
    function  TRATADEPT(ALIQUOTA: STRING):STRING;
    function  TRATABARRA(CODIGO: STRING):STRING;
  private
    { Private declarations }
    procedure Insere_Produto( NOME, CODIGO, TRIBUTACAO, VALOR: String);
  public
    { Public declarations }
  end;

var
  FrmMigraDados: TFrmMigraDados;

implementation

uses Usuarios_DM, Application_DM, Funcoes;

{$R *.DFM}

procedure TFrmMigraDados.FormCreate(Sender: TObject);
begin

  pc.ActivePageIndex := 0;

  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, Self.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TFrmMigraDados.ActFecharExecute(Sender: TObject);
begin
     Close ;
end;

procedure TFrmMigraDados.ActAbreExecute(Sender: TObject);
begin
     IF DIR.Execute
     THEN BEGIN
          PathDestino.Text := DIR.FileName ;
          PathOrigem.Text  := DIR.FileName ;
     END;
end;

procedure TFrmMigraDados.ActExportaExecute(Sender: TObject);
var
  Tabela: TTable;
  I: Integer;
begin
  Tabela := TTable.Create(Application);

  try
    Tabela.DatabaseName := PathDestino.text ;

    Tabela.TableName := 'Produtos.DB';

    Tabela.TableType := ttParadox; { ou ttDBase }

    { Somente Delphi4 }
    if Tabela.Exists
    then Begin
         showmessage('Arquivo Já Existe, Verifique!');
          Exit;
    end;
    {***}

    { Cria a tabela }
    Tabela.FieldDefs.Add('CODIGO'            , ftString,  15, true );
    Tabela.FieldDefs.Add('CODIGO_2'          , ftString,  15, false);
    Tabela.FieldDefs.Add('CNPJ_AGRUP'        , ftString,  14, false);
    Tabela.FieldDefs.Add('COD_AGRUP'         , ftString,  15, false);
    Tabela.FieldDefs.Add('NOME'              , ftString,  50, false);
    Tabela.FieldDefs.Add('MARCA'             , ftInteger, 0 , false);
    Tabela.FieldDefs.Add('GRUPO'             , ftInteger, 0 , false);
    Tabela.FieldDefs.Add('SUBGRUPO'          , ftInteger, 0 , false);
    Tabela.FieldDefs.Add('REDUCAO'           , ftInteger, 0 , false);
    Tabela.FieldDefs.Add('UNIDADE'           , ftString,  4 , false);
    Tabela.FieldDefs.Add('CTE'               , ftInteger, 0 , false);
    Tabela.FieldDefs.Add('CTIE'              , ftInteger, 0 , false);
    Tabela.FieldDefs.Add('QTDADE_1'          , ftFloat  , 0 , false);
    Tabela.FieldDefs.Add('QTDADE_2'          , ftFloat  , 0 , false);
    Tabela.FieldDefs.Add('LOCALIZACAO_1'     , ftString,  30, false);
    Tabela.FieldDefs.Add('LOCALIZACAO_2'     , ftString,  30, false);
    Tabela.FieldDefs.Add('LOCALIZACAO_3'     , ftString,  30, false);
    Tabela.FieldDefs.Add('NEG_QTDADE_2'      , ftString,  1 , false);
    Tabela.FieldDefs.Add('QTDADE_MIN'        , ftFloat  , 0 , false);
    Tabela.FieldDefs.Add('QTDADE_MAX'        , ftFloat  , 0 , false);
    Tabela.FieldDefs.Add('COMPLEMENTO_NF'    , ftString,  1 , false);
    Tabela.FieldDefs.Add('DT_ULT_COMPRA'     , ftDate  ,  0 , false);
    Tabela.FieldDefs.Add('QT_ULT_COMPRA'     , ftFloat  , 0 , false);
    Tabela.FieldDefs.Add('DT_ULT_VENDA'      , ftDate  ,  0 , false);
    Tabela.FieldDefs.Add('MARGEM_BRUTA'      , ftFloat  , 0 , false);
    Tabela.FieldDefs.Add('PRC_REPOS'         , ftFloat  , 0 , false);
    Tabela.FieldDefs.Add('PRC_CUSTO_ANT'     , ftFloat  , 0 , false);
    Tabela.FieldDefs.Add('PRC_CUSTO_MED'     , ftFloat  , 0 , false);
    Tabela.FieldDefs.Add('PRC_VENDA'         , ftFloat  , 0 , false);
    Tabela.FieldDefs.Add('PRC_VENDA_ANT'     , ftFloat  , 0 , false);
    Tabela.FieldDefs.Add('PRC_VENDA_MED'     , ftFloat  , 0 , false);
    Tabela.FieldDefs.Add('ALIQUOTA_ECF'      , ftString,  5 , false);
    Tabela.FieldDefs.Add('ORIGEM'            , ftInteger, 0 , false);
    Tabela.FieldDefs.Add('PESO_LIQ'          , ftFloat  , 0 , false);
    Tabela.FieldDefs.Add('PERC_FRETE'        , ftFloat  , 0 , false);
    Tabela.FieldDefs.Add('IPI'               , ftFloat  , 0 , false);
    Tabela.FieldDefs.Add('VOLUME'            , ftFloat  , 0 , false);
    Tabela.FieldDefs.Add('PROD_PESAVEL'      , ftString,  1 , false);
    Tabela.FieldDefs.Add('ETIQUETA_ENT'      , ftString,  1 , false);
    Tabela.FieldDefs.Add('ATIVO'             , ftString,  1 , false);
    Tabela.FieldDefs.Add('ULTIMO_FORNECEDOR' , ftInteger, 0 , false);
    Tabela.FieldDefs.Add('FORNECEDOR'        , ftInteger, 0 , false);
    Tabela.FieldDefs.Add('SUBUNIDADE'        , ftInteger, 0 , false);
    Tabela.FieldDefs.Add('NOME_MARCA'        , ftString,  50, false);
    Tabela.FieldDefs.Add('PRC_CUSTO_CODIF'   , ftString,  15, false);
    Tabela.FieldDefs.Add('CODIGO_INTERNO'    , ftInteger, 0 , false);
    Tabela.FieldDefs.Add('DT_ULT_ATU_PRECO'  , ftDate  ,  0 , false);
    Tabela.FieldDefs.Add('CUSTO_AQUISICAO'   , ftFloat  , 0 , false);
    Tabela.FieldDefs.Add('VENDE_FRACIONADO'  , ftString,  1 , false);
    Tabela.FieldDefs.Add('QNTDE_EXPOSTA'     , ftFloat  , 0 , false);
    Tabela.FieldDefs.Add('POSSUI_LOTE'       , ftString,  1 , false);
    Tabela.FieldDefs.Add('QNTDE_MAXIMA_VENDA', ftFloat  , 0 , false);
    Tabela.FieldDefs.Add('PIS'               , ftString,  1 , false);
    Tabela.FieldDefs.Add('COFINS'            , ftString,  1 , false);
    Tabela.FieldDefs.Add('COM_VENDA_VLR'     , ftFloat  , 0 , false);
    Tabela.FieldDefs.Add('COM_VENDA_PCT'     , ftFloat  , 0 , false);
    Tabela.FieldDefs.Add('PARTICIP_LUCRO'    , ftFloat  , 0 , false);
    Tabela.FieldDefs.Add('NAO_COBR_JUR_ATE'  , ftInteger, 0 , false);
    Tabela.FieldDefs.Add('PREVISAO_ENTREGA'  , ftDate  ,  0 , false);
    Tabela.FieldDefs.Add('QNTDE_PEDIDA'      , ftFloat  , 0 , false);

    Tabela.CreateTable;

    { Cria os Índices }
    Tabela.AddIndex('ICodigo', 'CODIGO', [ixPrimary, ixUnique]);
    Tabela.AddIndex('INome'  , 'NOME'  , [ixCaseInsensitive]);

    //
    PRODUTOS.CLOSE ;

    PRODUTOS.SQL.ADD(' select * from est_produtos         ');
    PRODUTOS.SQL.ADD(' Where CNPJ = :CNPJ                 ');

    PRODUTOS.OPEN  ;

    PRODUTOS.FetchAll ;

    TABELA.OPEN ;

    ANDA.VISIBLE := TRUE ;

    ANDA.Max := PRODUTOS.RecordCount ;

    WHILE NOT PRODUTOS.EOF DO
    BEGIN
         IF ( NOT PRODUTOSCODIGO.IsNull  ) and ( trim(PRODUTOSCODIGO.value) <> '' )
         THEN BEGIN
              TABELA.Append ;

              FOR I := 0 TO TABELA.FieldCount - 1 DO
              BEGIN
                   TABELA.FieldByName(PRODUTOS.Fields[I].FIELDNAME).VALUE := PRODUTOS.Fields[I].VALUE ;
              END;

              TABELA.POST ;
         END;

         ANDA.Position := ANDA.Position + 1;
         PRODUTOS.NEXT ;
    END;

    ANDA.VISIBLE := FALSE ;

    PRODUTOS.CLOSE ;
    TABELA.CLOSE ;

    showmessage('Tabela Criada Com Sucesso');

  finally
    Tabela.Free;
  end;
end;

procedure TFrmMigraDados.PRODUTOSBeforeOpen(DataSet: TDataSet);
begin
     (DataSet as TIBQuery).ParamByName('CNPJ').asString := DMApp.Cnpj;
     (DataSet as TIBQuery).Prepare;
end;

procedure TFrmMigraDados.RzBitBtn2Click(Sender: TObject);
begin
     Close ;
end;

procedure TFrmMigraDados.RzBitBtn3Click(Sender: TObject);
begin
     IF DIR.Execute
     THEN
         PathOrigem.Text := DIR.FileName ;
end;

procedure TFrmMigraDados.ActImportaExecute(Sender: TObject);
var
  I: Integer;
begin
  try
    Tabela.DatabaseName := PathOrigem.text ;

    Tabela.TableName := 'Produtos.DB';

    Tabela.TableType := ttParadox; { ou ttDBase }

    TABELA.OPEN ;

    TABELA.FetchAll ;

    ANDA.VISIBLE := TRUE ;

    ANDA.Max := TABELA.RecordCount ;

    TRY
       If Not DmaPP.TransactionProc.InTransaction
       then
           DmaPP.TransactionProc.StartTransaction ;

       WHILE NOT TABELA.EOF DO
       BEGIN
            IF ( NOT TABELA.FIELDBYNAME('CODIGO').IsNull  ) and ( trim(TABELA.FIELDBYNAME('CODIGO').value) <> '' )
            THEN BEGIN

                 LBLCODIGO.Caption := TABELA.FIELDBYNAME('CODIGO').VALUE ;

                 LBLCODIGO.Refresh ;
                 LBLCODIGO.REPAINT ;

//                 IF TABELA.FIELDBYNAME('CODIGO').VALUE = '13X1895'
//                 THEN
//                     SHOWMESSAGE('');

                 IMPORTA.CLOSE ;
                 IMPORTA.ParamByName('CNPJ'              ).AsString   := DmApp.Cnpj ;

               IF NOT TABELA.FIELDBYNAME('CODIGO').ISNULL
               THEN BEGIN
                 IMPORTA.ParamByName('CODIGO'            ).AsString   := TABELA.FIELDBYNAME('CODIGO').VALUE ;

                 IF TABELA.FIELDBYNAME('CODIGO_2').ISNULL
                 THEN
                     IMPORTA.ParamByName('CODIGO_2'          ).AsString   := ''
                 ELSE
                     IMPORTA.ParamByName('CODIGO_2'          ).AsString   := TABELA.FIELDBYNAME('CODIGO_2').VALUE ;

                 IF TABELA.FIELDBYNAME('NOME').ISNULL
                 THEN
                     IMPORTA.ParamByName('NOME'              ).AsString   := ''
                 ELSE
                     IMPORTA.ParamByName('NOME'              ).AsString   := TABELA.FIELDBYNAME('NOME').VALUE ;

                 IF TABELA.FIELDBYNAME('MARCA').ISNULL
                 THEN
                     IMPORTA.ParamByName('MARCA'             ).AsInteger  := 0
                 ELSE
                     IMPORTA.ParamByName('MARCA'             ).AsInteger  := TABELA.FIELDBYNAME('MARCA').VALUE ;

                 IF TABELA.FIELDBYNAME('GRUPO').ISNULL
                 THEN
                     IMPORTA.ParamByName('GRUPO'             ).AsInteger  := 0
                 ELSE
                     IMPORTA.ParamByName('GRUPO'             ).AsInteger  := TABELA.FIELDBYNAME('GRUPO').VALUE ;

                 IF TABELA.FIELDBYNAME('SUBGRUPO').ISNULL
                 THEN
                     IMPORTA.ParamByName('SUBGRUPO'          ).AsInteger  := 0
                 ELSE
                     IMPORTA.ParamByName('SUBGRUPO'          ).AsInteger  := TABELA.FIELDBYNAME('SUBGRUPO').VALUE ;

                 IF TABELA.FIELDBYNAME('REDUCAO').ISNULL
                 THEN
                     IMPORTA.ParamByName('REDUCAO'           ).AsInteger  := 0
                 ELSE
                     IMPORTA.ParamByName('REDUCAO'           ).AsInteger  := TABELA.FIELDBYNAME('REDUCAO').VALUE ;

                 IF TABELA.FIELDBYNAME('UNIDADE').ISNULL
                 THEN
                     IMPORTA.ParamByName('UNIDADE'           ).AsString   := 'UN'
                 ELSE
                     IMPORTA.ParamByName('UNIDADE'           ).AsString   := TABELA.FIELDBYNAME('UNIDADE').VALUE ;

                 IF TABELA.FIELDBYNAME('CTE').ISNULL
                 THEN
                     IMPORTA.ParamByName('CTE'               ).AsInteger  := 1
                 ELSE
                     IMPORTA.ParamByName('CTE'               ).AsInteger  := TABELA.FIELDBYNAME('CTE').VALUE ;

                 IF TABELA.FIELDBYNAME('CTIE').ISNULL
                 THEN
                     IMPORTA.ParamByName('CTIE'              ).AsInteger  := 1
                 ELSE
                     IMPORTA.ParamByName('CTIE'              ).AsInteger  := TABELA.FIELDBYNAME('CTIE').VALUE ;

                 IF NOT TABELA.FIELDBYNAME('NEG_QTDADE_2').ISNULL
                 THEN
                     IMPORTA.ParamByName('NEG_QTDADE_2'      ).AsString   := TABELA.FIELDBYNAME('NEG_QTDADE_2').VALUE
                 ELSE
                     IMPORTA.ParamByName('NEG_QTDADE_2'      ).AsString   := '';

                 IF TABELA.FIELDBYNAME('COMPLEMENTO_NF').ISNULL
                 THEN
                     IMPORTA.ParamByName('COMPLEMENTO_NF'    ).AsString   := ''
                 ELSE
                     IMPORTA.ParamByName('COMPLEMENTO_NF'    ).AsString   := TABELA.FIELDBYNAME('COMPLEMENTO_NF').VALUE ;

                 IF TABELA.FIELDBYNAME('MARGEM_BRUTA').ISNULL
                 THEN
                     IMPORTA.ParamByName('MARGEM_BRUTA'      ).AsFloat    := 0
                 ELSE
                     IMPORTA.ParamByName('MARGEM_BRUTA'      ).AsFloat    := TABELA.FIELDBYNAME('MARGEM_BRUTA').VALUE ;

                 IF TABELA.FIELDBYNAME('PRC_REPOS').ISNULL
                 THEN
                     IMPORTA.ParamByName('PRC_REPOS'         ).AsFloat    := 0
                 ELSE
                     IMPORTA.ParamByName('PRC_REPOS'         ).AsFloat    := TABELA.FIELDBYNAME('PRC_REPOS').VALUE ;

                 IF TABELA.FIELDBYNAME('PRC_CUSTO_ANT').ISNULL
                 THEN
                     IMPORTA.ParamByName('PRC_CUSTO_ANT'     ).AsFloat    := 0
                 ELSE
                     IMPORTA.ParamByName('PRC_CUSTO_ANT'     ).AsFloat    := TABELA.FIELDBYNAME('PRC_CUSTO_ANT').VALUE ;

                 IF TABELA.FIELDBYNAME('PRC_CUSTO_MED').ISNULL
                 THEN
                     IMPORTA.ParamByName('PRC_CUSTO_MED'     ).AsFloat    := 0
                 ELSE
                     IMPORTA.ParamByName('PRC_CUSTO_MED'     ).AsFloat    := TABELA.FIELDBYNAME('PRC_CUSTO_MED').VALUE ;

                 IF TABELA.FIELDBYNAME('PRC_VENDA').ISNULL
                 THEN
                     IMPORTA.ParamByName('PRC_VENDA'         ).AsFloat    := 0
                 ELSE
                     IMPORTA.ParamByName('PRC_VENDA'         ).AsFloat    := TABELA.FIELDBYNAME('PRC_VENDA').VALUE ;

                 IF TABELA.FIELDBYNAME('PRC_VENDA_ANT').ISNULL
                 THEN
                     IMPORTA.ParamByName('PRC_VENDA_ANT'     ).AsFloat    := 0
                 ELSE
                     IMPORTA.ParamByName('PRC_VENDA_ANT'     ).AsFloat    := TABELA.FIELDBYNAME('PRC_VENDA_ANT').VALUE ;

                 IF TABELA.FIELDBYNAME('PRC_VENDA_MED').ISNULL
                 THEN
                     IMPORTA.ParamByName('PRC_VENDA_MED'     ).AsFloat    := 0
                 ELSE
                     IMPORTA.ParamByName('PRC_VENDA_MED'     ).AsFloat    := TABELA.FIELDBYNAME('PRC_VENDA_MED').VALUE ;

                 IF TABELA.FIELDBYNAME('ALIQUOTA_ECF').ISNULL
                 THEN
                     IMPORTA.ParamByName('ALIQUOTA_ECF'      ).AsString   := 'T1'
                 ELSE
                     IMPORTA.ParamByName('ALIQUOTA_ECF'      ).AsString   := TABELA.FIELDBYNAME('ALIQUOTA_ECF').VALUE ;

                 IF TABELA.FIELDBYNAME('ORIGEM').ISNULL
                 THEN
                     IMPORTA.ParamByName('ORIGEM'            ).AsInteger  := 0
                 ELSE
                     IMPORTA.ParamByName('ORIGEM'            ).AsInteger  := TABELA.FIELDBYNAME('ORIGEM').VALUE ;


                 IF TABELA.FIELDBYNAME('PROD_PESAVEL').ISNULL
                 THEN
                     IMPORTA.ParamByName('PROD_PESAVEL'      ).AsString   := 'N'
                 ELSE
                     IMPORTA.ParamByName('PROD_PESAVEL'      ).AsString   := TABELA.FIELDBYNAME('PROD_PESAVEL').VALUE ;

                 IF TABELA.FIELDBYNAME('ETIQUETA_ENT').ISNULL
                 THEN
                     IMPORTA.ParamByName('ETIQUETA_ENT'      ).AsString   := 'N'
                 ELSE
                     IMPORTA.ParamByName('ETIQUETA_ENT'      ).AsString   := TABELA.FIELDBYNAME('ETIQUETA_ENT').VALUE ;

                 IF TABELA.FIELDBYNAME('ATIVO').ISNULL
                 THEN
                     IMPORTA.ParamByName('ATIVO'             ).AsString   := 'S'
                 ELSE
                     IMPORTA.ParamByName('ATIVO'             ).AsString   := TABELA.FIELDBYNAME('ATIVO').VALUE ;

                 IF TABELA.FIELDBYNAME('SUBUNIDADE').ISNULL
                 THEN
                     IMPORTA.ParamByName('SUBUNIDADE'        ).AsInteger  := 1
                 ELSE
                     IMPORTA.ParamByName('SUBUNIDADE'        ).AsInteger  := TABELA.FIELDBYNAME('SUBUNIDADE').VALUE ;

                 IF TABELA.FIELDBYNAME('CUSTO_AQUISICAO').ISNULL
                 THEN
                     IMPORTA.ParamByName('CUSTO_AQUISICAO'   ).AsFloat    := 0
                 ELSE
                     IMPORTA.ParamByName('CUSTO_AQUISICAO'   ).AsFloat    := TABELA.FIELDBYNAME('CUSTO_AQUISICAO').VALUE ;

                 IF TABELA.FIELDBYNAME('VENDE_FRACIONADO').ISNULL
                 THEN
                     IMPORTA.ParamByName('VENDE_FRACIONADO'  ).AsString   := ''
                 ELSE
                     IMPORTA.ParamByName('VENDE_FRACIONADO'  ).AsString   := TABELA.FIELDBYNAME('VENDE_FRACIONADO').VALUE ;

                 IF TABELA.FIELDBYNAME('POSSUI_LOTE').ISNULL
                 THEN
                     IMPORTA.ParamByName('POSSUI_LOTE'             ).AsString   := 'S'
                 ELSE
                     IMPORTA.ParamByName('POSSUI_LOTE'             ).AsString   := TABELA.FIELDBYNAME('POSSUI_LOTE').VALUE ;

                 IMPORTA.ExecProc;
               END;
            END;

            ANDA.Position := ANDA.Position + 1;
            TABELA.NEXT ;
       END;

       DmApp.TransactionProc.Commit ;

    EXCEPT
          DmApp.TransactionProc.Rollback ;
    END;

    ANDA.VISIBLE := FALSE ;

    TABELA.CLOSE ;

    showmessage('Tabela Importada Com Sucesso');


  finally
  end;
end;

procedure TFrmMigraDados.ActAbreElginExecute(Sender: TObject);
begin
     IF DIR.Execute
     THEN BEGIN
          PathElgin.Text  := DIR.FileName ;
     END;
end;

procedure TFrmMigraDados.ActImportaElginExecute(Sender: TObject);
var
  I: Integer;
begin
  try
    Importar ();
    
    showmessage('Tabela Importada Com Sucesso!');
  finally
  end;
end;

procedure TFrmMigraDados.Importar();
var
 Str, S, tmp, Nome, Codigo, Tributacao, Valor :string;
 tam,i,coluna:integer;
 total_registros,registro_atual:integer;
 f: TextFile;
begin
     //definindo o arquivo arqtxt ao arquivo temporário
     AssignFile(f, PathElgin.text );

     //carrega o arquivo no memória
     reset(f);

     total_registros:=0;

     //enquanto não for o fim do arquivo
     while not Eof(f) do
     begin
          readln(f, s );
          //descobriremos o total de registros no arquivo
          total_registros:=total_registros+1;
     end;

     //carrega o arquivo no memória reiniciando a contagem
     reset(f);

     //exibindo a janela de progresso
     ANDA.Visible:=true;

     ANDA.Position := 0;
     anda.Max      := total_registros ;

     registro_atual:=0;

     //enquanto não for o fim do arquivo
     while not Eof(f) do
     begin
          if registro_atual < 1
          then begin
              //pegando o registro atual
              registro_atual:= registro_atual +1 ;

              readln(f,s);
          end
          else begin
               //alterando o progresso da execução
               ANDA.Position := ANDA.Position + 1;

               //lê uma linha e adiciona o conteudo em s
               readln(f,s);

               //pega o tamanho de s
               tam:= strlen(pchar(s));

               //inicia o número de colunas
               coluna:=0;

               //para i até o tamanho de s faça
               for i:=1 to tam do
               begin
                    //copia  um caracter apartir da posição i
                    tmp:=copy(s,i,1 );

                    //verifica se o valor de tmp não é igual ao separador
                    if (tmp <> ';')
                    then begin
                         //se não for incrementa a variável valor com o caracter copiado
                         Str := Str + tmp;
                    end
                    else begin
                         //se for igual, incrementa o número de colunas
                         coluna:=coluna+1;

                         //se valor for diferente de vazio e diferente de null
                         if( (Str<>'') and (Str<>null))
                         then begin
                              //incrementa com o valor a coluna correta
                              if(coluna=2) then  Nome       := Str;
                              if(coluna=3) then  Codigo     := Str;
                              if(coluna=4) then  Tributacao := Str;
                              if(coluna=5) then  Valor      := Str;
                         end;
                         //libera a variável valor
                         Str := '';
                    end;
               end;
               //Cadastra na Tabela
               If tributacao = '001' then tributacao := 'T1';
               If tributacao = '002' then tributacao := 'T2';
               If tributacao = '003' then tributacao := 'T3';
               If tributacao = '004' then tributacao := 'T4';
               If tributacao = '005' then tributacao := 'FF';
               If tributacao = '006' then tributacao := 'T6';
               If tributacao = '007' then tributacao := 'T7';

               //Inserindo na Tabela
               if (( trim(codigo) <> '' ) and ( copy ( NOME, 6,3 ) <> 'PLU'))
               then
                   INSERE_PRODUTO ( NOME, CODIGO, TRIBUTACAO, VALOR );
          end;
     end;

     //fecha o arquivo
     CloseFile(F);

     //torna invisivel o panel
    Anda.Visible:=False;
end;

procedure TFrmMigraDados.Insere_Produto(NOME, CODIGO, TRIBUTACAO, VALOR: String);
begin
   try
     DMApp.TransactionProc.StartTransaction ;

     IMPORTA.CLOSE ;

     IMPORTA.ParamByName('CNPJ'              ).AsString   := DmApp.Cnpj ;

     IMPORTA.ParamByName('CODIGO'            ).AsString   := CODIGO ;

     IMPORTA.ParamByName('CODIGO_2'          ).AsString   := ''  ;

     IF NOME = ''
     THEN
         IMPORTA.ParamByName('NOME'              ).AsString   := '<>'
     ELSE
         IMPORTA.ParamByName('NOME'              ).AsString   := NOME ;

     IMPORTA.ParamByName('MARCA'             ).AsInteger  := 0   ;
     IMPORTA.ParamByName('GRUPO'             ).AsInteger  := 0   ;
     IMPORTA.ParamByName('SUBGRUPO'          ).AsInteger  := 1   ;
     IMPORTA.ParamByName('REDUCAO'           ).AsInteger  := 0   ;
     IMPORTA.ParamByName('UNIDADE'           ).AsString   := 'UN';
     IMPORTA.ParamByName('CTE'               ).AsInteger  := 1   ;
     IMPORTA.ParamByName('CTIE'              ).AsInteger  := 1   ;
     IMPORTA.ParamByName('NEG_QTDADE_2'      ).AsString   := 'S' ;
     IMPORTA.ParamByName('COMPLEMENTO_NF'    ).AsString   := 'N' ;
     IMPORTA.ParamByName('MARGEM_BRUTA'      ).AsFloat    := 0   ;
     IMPORTA.ParamByName('PRC_REPOS'         ).AsFloat    := 0   ;
     IMPORTA.ParamByName('PRC_CUSTO_ANT'     ).AsFloat    := 0   ;
     IMPORTA.ParamByName('PRC_CUSTO_MED'     ).AsFloat    := 0   ;

     IF TRIM(VALOR) = ''
     THEN
         IMPORTA.ParamByName('PRC_VENDA'         ).AsFloat    := 0
     ELSE
         IMPORTA.ParamByName('PRC_VENDA'         ).AsFloat    := STRTOFLOAT(VALOR);

     IMPORTA.ParamByName('PRC_VENDA_ANT'     ).AsFloat    := 0    ;
     IMPORTA.ParamByName('PRC_VENDA_MED'     ).AsFloat    := 0    ;

     IF TRIM(TRIBUTACAO) = ''
     THEN
         IMPORTA.ParamByName('ALIQUOTA_ECF'      ).AsString   := 'T1'
     ELSE
         IMPORTA.ParamByName('ALIQUOTA_ECF'      ).AsString   := TRIBUTACAO ;

     IMPORTA.ParamByName('ORIGEM'            ).AsInteger  := 0   ;
     IMPORTA.ParamByName('PROD_PESAVEL'      ).AsString   := 'N' ;
     IMPORTA.ParamByName('ETIQUETA_ENT'      ).AsString   := 'N' ;
     IMPORTA.ParamByName('ATIVO'             ).AsString   := 'S' ;
     IMPORTA.ParamByName('SUBUNIDADE'        ).AsInteger  := 1   ;
     IMPORTA.ParamByName('CUSTO_AQUISICAO'   ).AsFloat    := 0   ;
     IMPORTA.ParamByName('VENDE_FRACIONADO'  ).AsString   := 'N' ;
     IMPORTA.ParamByName('POSSUI_LOTE'       ).AsString   := 'N' ;

     IMPORTA.ExecProc;

     DMApp.TransactionProc.Commit ;
   except
     DMApp.TransactionProc.Rollback ;    
   end;
end;

procedure TFrmMigraDados.RzBitBtn6Click(Sender: TObject);
begin
     IF DIR.Execute
     THEN BEGIN
          PATHELGINEXP.Text := DIR.FileName ;
     END; 
end;

procedure TFrmMigraDados.RzBitBtn7Click(Sender: TObject);
var
  I, CONTADOR: Integer;
  Aux: String;
  f: TextFile;

  PLUNumber,PLUName,PLUBarcode,PLUDept,PLUPrice,PLUDigits,
  PLUSingle,PLUInhibit,PLUDescript,PLUGas: String;
begin
  try
    //
     //definindo o arquivo arqtxt ao arquivo temporário
     AssignFile(f, PATHELGINEXP.text );

     //CRIAR ARQUIVO TXT Q GERAR LINHA 000
     if FileExists( PATHELGINEXP.text )
     then
         DeleteFile( PATHELGINEXP.text );

     Rewrite( F, PATHELGINEXP.text );

     Append(f);

     AUX := 'PLUNumber;PLUName;PLUBarcode;PLUDept;PLUPrice;PLUDigits;PLUSingle;PLUInhibit;PLUDescript;PLUGas;';

     Writeln( f, AUX );

     PRODUTOS.CLOSE ;

     PRODUTOS.SQL.CLEAR ;

     PRODUTOS.SQL.ADD(' select * from est_produtos         ');
     PRODUTOS.SQL.ADD(' Where CNPJ = :CNPJ                 ');
     PRODUTOS.SQL.ADD(' order by cast(codigo_2 as integer) ');

     PRODUTOS.OPEN  ;

     PRODUTOS.FetchAll ;

     ANDA.VISIBLE := TRUE ;

     ANDA.Max := PRODUTOS.RecordCount ;

     CONTADOR := 1;

     WHILE NOT PRODUTOS.EOF DO
     BEGIN
          IF ( NOT PRODUTOSCODIGO.IsNull  ) and ( trim(PRODUTOSCODIGO.value) <> '' )
          THEN BEGIN
               AUX := '' ;

               PLUNumber := COMPLETAESQ(PRODUTOSCODIGO_2.VALUE, '0', 5 );
               PLUName   := PRODUTOSNOME.VALUE ;
               PLUBarcode:= TRATABARRA(PRODUTOSCODIGO.VALUE) ;
               PLUDept   := TRATADEPT(PRODUTOSALIQUOTA_ECF.VALUE);
               PLUPrice  := REPLACE(FORMATFLOAT('###,##0.00',PRODUTOSPRC_VENDA.VALUE),'.', ',');
               PLUDigits := '8';
               PLUSingle := '0' ;
               PLUInhibit:= '0' ;
               PLUDescript:= '0' ;
               PLUGas:= '0' ;

               aux := PLUNumber+';'+PLUName+';'+PLUBarcode+';'+PLUDept+';'+
               PLUPrice+';'+PLUDigits+';'+PLUSingle+';'+PLUInhibit+';'+
               PLUDescript+';'+PLUGas+';';

               Writeln( f, AUX );

               CONTADOR := CONTADOR + 1;
          END;


          ANDA.Position := ANDA.Position + 1;

          PRODUTOS.NEXT ;
     END;

     ANDA.VISIBLE := FALSE ;

     PRODUTOS.CLOSE ;

     TABELA.CLOSE ;

     CloseFile(f);

     showmessage('Tabela Exportada Com Sucesso');

  finally
  end;
end;

function TFrmMigraDados.TRATADEPT(ALIQUOTA: STRING): STRING;
begin
     IF ( ALIQUOTA = 'T1' )
     THEN BEGIN
          result := t1.text;
     END
     ELSE BEGIN
          IF ( ALIQUOTA = 'T2' )
          THEN BEGIN
               result := t2.text;
          END
          ELSE BEGIN
               IF ( ALIQUOTA = 'T3' )
               THEN BEGIN
                    result := t3.text;
               END
               ELSE BEGIN
                    IF ( ALIQUOTA = 'T4' )
                    THEN BEGIN
                         result := t4.text;
                    END
                    ELSE BEGIN
                         IF ( ALIQUOTA = 'T5' )
                         THEN BEGIN
                              result := t5.text;
                         END
                         ELSE BEGIN
                              IF ( ALIQUOTA = 'T6' )
                              THEN BEGIN
                                   result := t6.text;
                              END
                              ELSE BEGIN
                                   IF ( ALIQUOTA = 'FF' )
                                   THEN BEGIN
                                        result := FF.text;
                                   END
                                   ELSE BEGIN  // = II
                                        result := II.text;
                                   END;
                              END;
                         END;
                    END;
               END;
          END;
     END;
end;

function TFrmMigraDados.TRATABARRA(CODIGO: STRING): STRING;
VAR
   AUX: STRING;
begin
     IF ( LENGTH(CODIGO) > 13 )
     THEN BEGIN
          CODIGO := COPY(CODIGO,1,13);
     END;

     IF ( LENGTH(CODIGO) < 13 )
     THEN BEGIN
          IF ( LENGTH(CODIGO) = 2 )
          THEN BEGIN
               AUX := '200'+CODIGO;
          END
          ELSE BEGIN
               IF ( LENGTH(CODIGO) = 3 )
               THEN BEGIN
                    AUX := '20'+CODIGO;
               END
               ELSE BEGIN
                    IF ( LENGTH(CODIGO) = 4 )
                    THEN BEGIN
                         AUX := '2'+CODIGO;
                    END
                    ELSE BEGIN
                         IF ( LENGTH(CODIGO) = 1 )
                         THEN BEGIN
                              AUX := '2000' + CODIGO;
                         END
                         ELSE BEGIN
                              AUX := CODIGO ;
                         END;
                    END
               END;
          END;

          RESULT := COMPLETA(AUX, '0', 13 );
     END
     ELSE BEGIN
          RESULT := CODIGO ;
     END;
end;

end.

