unit Listagens_DM;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RDprint, Db, IBCustomDataSet, IBQuery,   ppDB, ppDBPipe, ppComm,
  ppRelatv, ppProd, ppClass, ppReport, ppCtrls, ppPrnabl, ppVar, ppBands,
  ppCache, ACBrBase, ACBrExtenso;

type
  TDMListagens = class(TDataModule)
    print: TRDprint;
    NAOCONCILIADOS: TIBQuery;
    NAOCONCILIADOSDATA: TDateField;
    NAOCONCILIADOSCOD_DOC: TIBStringField;
    NAOCONCILIADOSDOCUMENTO: TIBStringField;
    NAOCONCILIADOSHISTORICO: TIBStringField;
    NAOCONCILIADOSVALOR: TIBBCDField;
    NAOCONCILIADOSTIPO: TIBStringField;
    FUTUROS: TIBQuery;
    SLDANT: TIBQuery;
    SLDANTSOMAC: TIBBCDField;
    SLDANTSOMAD: TIBBCDField;
    SLDANTCONC: TIBQuery;
    IBBCDField2: TIBBCDField;
    IBBCDField3: TIBBCDField;
    CONCPERIODO: TIBQuery;
    CONCPERIODODATA: TDateField;
    CONCPERIODOCOD_DOC: TIBStringField;
    CONCPERIODODOCUMENTO: TIBStringField;
    CONCPERIODOHISTORICO: TIBStringField;
    CONCPERIODOVALOR: TIBBCDField;
    CONCPERIODOTIPO: TIBStringField;
    LANCAMENTO: TIBQuery;
    LANCAMENTODATA: TDateField;
    LANCAMENTOCOD_DOC: TIBStringField;
    LANCAMENTODOCUMENTO: TIBStringField;
    LANCAMENTOHISTORICO: TIBStringField;
    LANCAMENTOVALOR: TIBBCDField;
    LANCAMENTOTIPO: TIBStringField;
    FUTUROSDATA: TDateField;
    FUTUROSCOD_DOC: TIBStringField;
    FUTUROSDOCUMENTO: TIBStringField;
    FUTUROSHISTORICO: TIBStringField;
    FUTUROSVALOR: TIBBCDField;
    FUTUROSTIPO: TIBStringField;
    CHEQUE: TIBQuery;
    IMPRESSORA: TRDprint;
    GERAL: TIBQuery;
    RECEBER: TIBQuery;
    RECEBERCODIGO: TIntegerField;
    RECEBERPESSOA_FJ: TIntegerField;
    RECEBERNOME_RAZAO: TIBStringField;
    RECEBERFONE: TIBStringField;
    RECEBERFAX: TIBStringField;
    RECEBERENDERECO: TIBStringField;
    RECEBERNUMERO: TIBStringField;
    RECEBERCOMPLEMENTO: TIBStringField;
    RECEBERBAIRRO: TIBStringField;
    RECEBERCIDADE: TIBStringField;
    RECEBERUF: TIBStringField;
    RECEBERCEP: TIBStringField;
    RECEBERCPF_CGC: TIBStringField;
    RECEBERRG_IE: TIBStringField;
    RECEBERVENCIMENTO: TDateField;
    RECEBERDOCUMENTO: TIBStringField;
    RECEBERPARCELA: TIBStringField;
    RECEBERVALOR: TIBBCDField;
    RECEBERJUROS: TIBBCDField;
    RECEBERDESCONTO: TIBBCDField;
    RECEBERDATA_BAIXA: TDateField;
    RECEBERHISTORICO: TIBStringField;
    RECEBERLANCAMENTO: TDateField;
    RECEBERBOLETO: TIBStringField;
    RECEBERBANCO: TIBStringField;
    RECEBERCONTA: TIBStringField;
    RECEBERVENDA: TIntegerField;
    RECEBERUSUARIO: TIntegerField;
    RECEBERMOVIMENTO: TIntegerField;
    PAGAR: TIBQuery;
    PAGARCODIGO: TIntegerField;
    PAGARPESSOA_FJ: TIntegerField;
    PAGARNOME_RAZAO: TIBStringField;
    PAGARFONE: TIBStringField;
    PAGARFAX: TIBStringField;
    PAGARENDERECO: TIBStringField;
    PAGARNUMERO: TIBStringField;
    PAGARCOMPLEMENTO: TIBStringField;
    PAGARBAIRRO: TIBStringField;
    PAGARCIDADE: TIBStringField;
    PAGARUF: TIBStringField;
    PAGARCEP: TIBStringField;
    PAGARCPF_CGC: TIBStringField;
    PAGARRG_IE: TIBStringField;
    PAGARVENCIMENTO: TDateField;
    PAGARDOCUMENTO: TIBStringField;
    PAGARPARCELA: TIBStringField;
    PAGARVALOR: TIBBCDField;
    PAGARJUROS: TIBBCDField;
    PAGARDESCONTO: TIBBCDField;
    PAGARDATA_BAIXA: TDateField;
    PAGARHISTORICO: TIBStringField;
    PAGARLANCAMENTO: TDateField;
    PAGARBANCO: TIBStringField;
    PAGARCONTA: TIBStringField;
    PAGARUSUARIO: TIntegerField;
    PAGARMOVIMENTO: TIntegerField;
    RECEBERPLANILHA: TIntegerField;
    PAGARPLANILHA: TIntegerField;
    Faturas_Carregadas: TIBQuery;
    Faturas_CarregadasCODIGO: TIntegerField;
    Faturas_CarregadasDATA: TDateTimeField;
    Faturas_CarregadasFECHADA: TIBStringField;
    Faturas_CarregadasPESSOA_FJ: TIntegerField;
    Faturas_CarregadasUSUARIO: TIntegerField;
    Faturas_CarregadasVENDEDOR: TIntegerField;
    Faturas_CarregadasNUM_NF: TIntegerField;
    Faturas_CarregadasORCAMENTO: TIntegerField;
    Faturas_CarregadasNOME: TIBStringField;
    Faturas_CarregadasDESC_ACRES: TIBBCDField;
    Faturas_CarregadasTOTAL: TIBBCDField;
    Faturas_CarregadasVOLUME: TIBBCDField;
    Faturas_CarregadasPESO: TIBBCDField;
    Venda_Itens: TIBQuery;
    Venda_ItensPRODUTO: TIBStringField;
    Venda_ItensSEQUENCIA: TSmallintField;
    Venda_ItensUNIDADE: TIBStringField;
    Venda_ItensNOME_PRODUTO: TIBStringField;
    Venda_ItensALIQUOTA: TIBStringField;
    Venda_ItensORIGEM: TIntegerField;
    Venda_ItensCTE: TIntegerField;
    Venda_ItensCTIE: TIntegerField;
    Venda_ItensREDUCAO: TIntegerField;
    Venda_ItensPRODUTOFIS: TIBStringField;
    Venda_ItensSUBUNIDADE: TIntegerField;
    Venda_ItensNOME_FIS: TIBStringField;
    Venda_ItensDESCONTO: TIBBCDField;
    Venda_ItensICM: TIBBCDField;
    Venda_ItensICM_SUBS: TIBBCDField;
    Venda_ItensIPI: TIBBCDField;
    Venda_ItensPESO: TIBBCDField;
    Venda_ItensPORC_DESC: TIBBCDField;
    Venda_ItensPRC_CUSTO: TIBBCDField;
    Venda_ItensPRC_UNIT_ORIGINAL: TIBBCDField;
    Venda_ItensPRC_UNITARIO: TIBBCDField;
    Venda_ItensQUANTIDADE: TIBBCDField;
    Venda_ItensVOLUME: TIBBCDField;
    Centro_Custo: TIBQuery;
    Centro_CustoCODIGO: TIntegerField;
    Centro_CustoNOME: TIBStringField;
    Centro_CustoCODIGO_AGRUPADO: TIntegerField;
    Centro_CustoNOME_AGRUPADO: TIBStringField;
    Centro_CustoAGRUPADOR: TIntegerField;
    Vendedor: TIBQuery;
    VendedorCNPJ: TIBStringField;
    VendedorCODIGO: TIntegerField;
    VendedorNOME: TIBStringField;
    VendedorCOM_VISTA: TFloatField;
    VendedorCOM_PRAZO: TFloatField;
    VendedorPESSOA_FJ: TIntegerField;
    VendedorSENHA: TIBStringField;
    Consulta_Venda_Parc: TIBQuery;
    Cargas: TIBQuery;
    CargasMOTORISTA: TIntegerField;
    CargasNOME_MOTORISTA: TIBStringField;
    CargasVEICULO: TIBStringField;
    CargasROTA: TIntegerField;
    CargasNOME_ROTA: TIBStringField;
    CargasKM_SAIDA: TIBBCDField;
    CargasKM_CHEGADA: TIBBCDField;
    CargasPESO: TIBBCDField;
    CargasVOLUME: TIBBCDField;
    Cargas_Itens: TIBQuery;
    Cargas_ItensCODIGO: TIntegerField;
    Cargas_ItensDATA: TDateTimeField;
    Cargas_ItensPRODUTO: TIBStringField;
    Cargas_ItensGRUPO: TIntegerField;
    Cargas_ItensSEQUENCIA: TSmallintField;
    Cargas_ItensQUANTIDADE: TIBBCDField;
    Cargas_ItensPRC_UNITARIO: TIBBCDField;
    Cargas_ItensPRC_CUSTO: TIBBCDField;
    Cargas_ItensICM: TIBBCDField;
    Cargas_ItensICM_SUBS: TIBBCDField;
    Cargas_ItensIPI: TIBBCDField;
    Cargas_ItensVOLUME: TIBBCDField;
    Cargas_ItensPESO: TIBBCDField;
    Cargas_ItensDESCONTO: TIBBCDField;
    Cargas_ItensPORC_DESC: TIBBCDField;
    Cargas_ItensUNIDADE: TIBStringField;
    Cargas_ItensPRC_UNIT_ORIGINAL: TIBBCDField;
    Cargas_ItensNOME_PRODUTO: TIBStringField;
    Cargas_ItensALIQUOTA: TIBStringField;
    Cargas_ItensPRODUTOFIS: TIBStringField;
    Cargas_ItensNOME_FIS: TIBStringField;
    Cargas_ItensCTE: TIntegerField;
    Cargas_ItensCTIE: TIntegerField;
    Cargas_ItensORIGEM: TIntegerField;
    Cargas_ItensREDUCAO: TIntegerField;
    Cargas_ItensSUBUNIDADE: TIntegerField;
    CargasDATA_SAIDA: TDateField;
    CargasDATA_CHEGADA: TDateField;
    Consulta_Venda_ParcVENCTO: TDateTimeField;
    Consulta_Venda_ParcPARCELA: TIBStringField;
    Consulta_Venda_ParcVALOR: TIBBCDField;
    Consulta_Venda_ParcBOLETO: TIntegerField;
    CHEQUECHEQUE: TIntegerField;
    CHEQUEDATA: TDateTimeField;
    CHEQUEVALOR: TIBBCDField;
    CHEQUEHISTORICO: TIBStringField;
    CHEQUEIMPRESSO: TIBStringField;
    CHEQUEPESSOA_FJ: TIntegerField;
    CHEQUEORIGEM: TIBStringField;
    CHEQUEPLANILHA: TIntegerField;
    CHEQUEBANCO: TIBStringField;
    TBImpressora: TIBDataSet;
    TBImpressoraALTURA: TIntegerField;
    TBImpressoraANOALT: TIntegerField;
    TBImpressoraANODST: TIntegerField;
    TBImpressoraCIDALT: TIntegerField;
    TBImpressoraCIDDST: TIntegerField;
    TBImpressoraCONTA: TIntegerField;
    TBImpressoraDESCRICAO: TIBStringField;
    TBImpressoraDIAALT: TIntegerField;
    TBImpressoraDIADST: TIntegerField;
    TBImpressoraDISTANCIA: TIntegerField;
    TBImpressoraEXTENSOALT: TIntegerField;
    TBImpressoraEXTENSODST: TIntegerField;
    TBImpressoraFAVALT: TIntegerField;
    TBImpressoraFAVDST: TIntegerField;
    TBImpressoraFAVORECIDO: TIBStringField;
    TBImpressoraMESALT: TIntegerField;
    TBImpressoraMESDST: TIntegerField;
    TBImpressoraNOME: TIBStringField;
    TBImpressoraPRECISAO: TIBStringField;
    TBImpressoraVALORALT: TIntegerField;
    TBImpressoraVALORDST: TIntegerField;
    CHEQUENOME: TIBStringField;
    GRUPOS: TIBQuery;
    GRUPOSCODIGO: TIntegerField;
    GRUPOSNOME: TIBStringField;
    DsGrupo: TDataSource;
    SUBGRUPO: TIBQuery;
    SUBGRUPOCNPJ: TIBStringField;
    SUBGRUPONOME: TIBStringField;
    SUBGRUPOSUBGRUPO: TIntegerField;
    GRUPOSCNPJ: TIBStringField;
    Ver_Pessoa: TIBQuery;
    Ver_PessoaCODIGO: TIntegerField;
    Ver_PessoaNOME_RAZAO: TIBStringField;
    Ver_PessoaFANTASIA: TIBStringField;
    Ver_PessoaCOD_ATIVIDADE: TIntegerField;
    Ver_PessoaATIVIDADE: TIBStringField;
    Ver_PessoaCOD_ENDERECO: TIntegerField;
    Ver_PessoaENDERECO: TIBStringField;
    Ver_PessoaNUMERO: TIBStringField;
    Ver_PessoaCOMPLEMENTO: TIBStringField;
    Ver_PessoaCOD_BAIRRO: TIntegerField;
    Ver_PessoaBAIRRO: TIBStringField;
    Ver_PessoaCOD_CIDADE: TIntegerField;
    Ver_PessoaCIDADE: TIBStringField;
    Ver_PessoaUF: TIBStringField;
    Ver_PessoaCEP: TIBStringField;
    Ver_PessoaFONE: TIBStringField;
    Ver_PessoaFAX: TIBStringField;
    Ver_PessoaCELULAR: TIBStringField;
    Ver_PessoaPESSOA: TIBStringField;
    Ver_PessoaCPF_CGC: TIBStringField;
    Ver_PessoaRG_IE: TIBStringField;
    Ver_PessoaCONTATO: TIBStringField;
    Ver_PessoaDT_NASCIMENTO: TDateTimeField;
    Ver_PessoaDT_CADASTRO: TDateTimeField;
    Ver_PessoaEMAIL: TIBStringField;
    Ver_PessoaOBS: TBlobField;
    Ver_PessoaINSC_MUNIC: TIBStringField;
    LOG: TIBQuery;
    LOGCNPJ: TIBStringField;
    LOGCODIGO: TIntegerField;
    LOGCOMPUTADOR: TIBStringField;
    LOGDATA: TDateTimeField;
    LOGDOCUMENTO: TIBStringField;
    LOGHORA: TTimeField;
    CONFERE_ESTOQUE_GRADE: TIBQuery;
    CONFERE_ESTOQUE_GRADEPRODUTO: TIBStringField;
    CONFERE_ESTOQUE_GRADENOME: TIBStringField;
    CONFERE_ESTOQUE_GRADEQUANTIDADE: TIBBCDField;
    CONFERE_ESTOQUE_GRADEQUANTIDADE_GRADE: TIBBCDField;
    ClientesInativos: TIBQuery;
    LANCAMENTODATA_CONCILIACAO: TDateField;
    LOGORIGEM2: TIBStringField;
    LOGUSUARIO: TIntegerField;
    ClientesInativosCODIGO: TIntegerField;
    ClientesInativosNOME: TIBStringField;
    ClientesInativosULTIMA_COMPRA: TDateField;
    ClientesInativosFONE: TIBStringField;
    ClientesInativosFONE1: TIBStringField;
    ClientesInativosFONE2: TIBStringField;
    ClientesInativosRECEBER: TIBBCDField;
    qryRelFormaPagto: TIBQuery;
    qryRelFormaPagtoCODIGO: TIntegerField;
    qryRelFormaPagtoNOME: TIBStringField;
    qryRelFormaPagtoATIVO: TIBStringField;
    dsForma: TDataSource;
    qryRelTerceiro: TIBQuery;
    dsTerceiro: TDataSource;
    qryRelTerceiroCODIGO: TIntegerField;
    qryRelTerceiroCOM_PRAZO: TFloatField;
    qryRelTerceiroCOM_VISTA: TFloatField;
    qryRelTerceiroNOME: TIBStringField;
    CHEQUENOMINAL: TIBStringField;
    dsPagasChequePlanilha: TDataSource;
    PagasChequePlanilha: TIBQuery;
    PagasChequePlanilhaCHEQUE: TIntegerField;
    PagasChequePlanilhaDATA: TDateTimeField;
    PagasChequePlanilhaBANCO: TIBStringField;
    PagasChequePlanilhaVALOR: TIBBCDField;
    PagasChequePlanilhaHISTORICO: TIBStringField;
    PagasChequePlanilhaIMPRESSO: TIBStringField;
    PagasChequePlanilhaPESSOA_FJ: TIntegerField;
    PagasChequePlanilhaORIGEM: TIBStringField;
    PagasChequePlanilhaPLANILHA: TIntegerField;
    PagasChequePlanilhaCONTABILIDADE: TIBStringField;
    PagasChequePlanilhaNOME: TIBStringField;
    PagasChequePlanilhaNOMINAL: TIBStringField;
    PagasChequePlanilhaPRE_DATE: TDateField;
    PagasChequePlanilhaDOCTO: TIBStringField;
    PagasChequePlanilhaHISTORICO1: TIBStringField;
    PagasChequePlanilhaNOME1: TIBStringField;
    PagasChequePlanilhaVLR_BAIXA: TFloatField;
    PagasChequePlanilhatmp_EMPRESA: TStringField;
    PagasChequePlanilhatmp_VALOR: TStringField;
    PagasChequePlanilhatmpMUNICIPIO: TStringField;
    PagasChequePlanilhatmp_VLR_EXTENSO: TStringField;
    PagasChequePlanilhatmp_BANCO: TStringField;
    PagasChequePlanilhaCOD_ACERTO: TIntegerField;
    VALOR: TACBrExtenso;
    Extenso: TACBrExtenso;
    procedure printBeforeNewPage(Sender: TObject;Pagina: Integer);
    procedure printNewPage(Sender: TObject;Pagina: Integer);
    procedure Faturas_CarregadasAfterClose(DataSet: TDataSet);
    procedure Faturas_CarregadasBeforeOpen(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure CabecalhoResposicoes(Sender: TObject; Pagina: Integer);
    procedure PagasChequePlanilhaCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
    Linha: Integer;
    Pagina: Integer;
    NomeDoRelatorio: String[50];
    TituloColunas: String[160];
    DataSet: TIBQuery;
    bReg: Pointer;
  public
    { Public declarations }
    procedure ImprimeCopia;
    procedure Divergencia_Grades;
    procedure lsMarcas_Veiculos(DataSet: TDataSet);
    Procedure lsAtividades(DataSet: TDataSet);
    Procedure lsLocais(DataSet: TDataSet);
    Procedure lsCores(DataSet: TDataSet);
    Procedure lsMateriais(DataSet: TDataSet);
    Procedure lsServicos(DataSet: TDataSet);
    Procedure lsDefeitos(DataSet: TDataSet);
    Procedure lsTipoAtendimento(DataSet: TDataSet);
    Procedure lsModelos_Propriedades(DataSet: TDataSet);
    procedure IMPRIMECHEQUE(Conta: Integer);
    Procedure lsLogradouros(DataSet: TDataSet);
    Procedure lsContatos(DataSet: TDataSet);
    Procedure lsBairros(DataSet: TDataSet;Name:String='Listagem de Bairros');
    Procedure lsAgrupadores(DataSet: TDataSet);
    Procedure lsMotores(DataSet: TDataSet);
    Procedure lsTransportadoras(DataSet: TDataSet);
    Procedure lsAplicacoes(DataSet: TDataSet);
    Procedure lsCidades(DataSet: TDataSet);
    Procedure lsEstados(DataSet: TDataSet);
    Procedure lsMarcas(DataSet: TDataSet);
    Procedure lsAdministradoras(DataSet: TDataSet);
    Procedure lsTipo_Veiculos(DataSet: TDataSet);
    Procedure lsUnidades(DataSet: TDataSet);
    Procedure lsReducoes(DataSet: TDataSet);
    Procedure lsCotas(DataSet: TDataSet);
    Procedure lsCentro;
//    Procedure CentroRecursivo(Agrupador: Integer);
    Procedure lsGrupo;
    Procedure lsVendedores;
    Procedure lsBanco(DataSet: TDataSet);
    Procedure lsProdutos(DataSet: TDataSet);
    Procedure lsConvenios(DataSet: TDataSet);
    Procedure lsBancos(DataSet: TDataSet);
    Procedure lsClassificacoes(DataSet: TDataSet);
    Procedure lsCargas(Carga: Integer);
    Procedure lsCargasAnalitico(Carga: Integer);
    procedure CABECALHOCARGA(Sender: TObject; Pagina: Integer);
    procedure ProdutosdaCarga(Codigo: Integer);
    procedure ParcelasdaCarga(Codigo: Integer);
    procedure IncLinha;
    procedure lsProdutosCaixa(DataSet: TDataSet);
    Procedure lsCobrador(DataSet: TDataSet);
    Procedure lsMotivosCobranca(DataSet: TDataSet);
    Procedure lsDepartamentos(DataSet: TDataSet);
    Procedure lsTipos_Contratos(DataSet: TDataSet);
    Procedure lsPecas(DataSet: TDataSet);
    Procedure lsPatrimonio(DataSet: TDataSet);
    Procedure lsSaida_Patrimonio(DataSet: TDataSet; Patrimonio, Funcionario: String);
    Procedure lsChegada_Patrimonio(DataSet: TDataSet; Patrimonio, Funcionario: String);

    Procedure lsDeclaracao_Venda( DataSet: TDataSet );

  end;

var
  DMListagens: TDMListagens ;
  NUMEROCARGA: String       ;
  SomaCarga  : Real         ;
  IMPRIMINDO : String       ;
  Lista: String;
  NotasCarga : Integer      ;
implementation

uses Application_DM,
     Main,
     Funcoes,
     Cadastros_DM, Financeiro_Dm;

{$R *.DFM}

procedure TDMListagens.LsGrupo;
begin
     GRUPOS.Close ;
     GRUPOS.ParamByName ('CNPJ').AsString := DmaPP.Cnpj ;
     GRUPOS.Open  ;

     SUBGRUPO.CLOSE ;
     SUBGRUPO.OPEN  ;

     GRUPOS.First ;
     //
     Pagina := 1;
     PRINT.TitulodoRelatorio := 'Listagem de Grupos';
     TituloColunas := Format('%15s %-50s', ['Codigo', 'Nome']);
     PRINT.Abrir;
     //
     While Not GRUPOS.Eof
     Do Begin
          PRINT.ImpF(Linha + 1, 01, Format('%15s %-50s', [GRUPOSCODIGO.Text, GRUPOSNOME.Text]), [COMP17]);

          SUBGRUPO.First ;

          While Not SUBGRUPO.Eof
          Do Begin
             Inc(Linha);

             If Linha > 60
             then
                 PRINT.Novapagina ;

             PRINT.ImpF(Linha + 1, 01, Format('%15s %15s %-50s', ['', SUBGRUPOSUBGRUPO.Text, SUBGRUPONOME.Text]), [COMP17]);

             SUBGRUPO.NEXT ;
          END;

          Inc(Linha);

          If Linha > 60
          then
              PRINT.Novapagina ;

          GRUPOS.Next;
     End;
     SUBGRUPO.CLOSE ;
     GRUPOS.CLOSE ;
     //
     PRINT.Fechar;
end;

procedure TDMListagens.lsProdutosCaixa(DataSet: TDataSet);
Var
   Repor: Real;
begin
     //
     bReg := Dataset.GetBookmark;
     //
     Dataset.First;
     //
     Pagina := 1;
     IMPRESSORA.TitulodoRelatorio := 'Listagem de Resposições do Caixa';
     TituloColunas := Format('%15s %-50s %15s %15s', ['Codigo', 'Nome', 'Vendido','Exposta']);
     IMPRESSORA.OnNewPage := CabecalhoResposicoes ;
     IMPRESSORA.Abrir;
     //
     While Not Dataset.Eof
     Do Begin
          If Dataset.FieldByName('QUANTIDADE_EXPOSTA').Value > 0
          then begin
               Repor := Dataset.FieldByName('QUANTIDADE').Value - Dataset.FieldByName('QUANTIDADE_EXPOSTA').Value ;
          end
          else begin
               Repor := 0;
          end;

          IMPRESSORA.ImpF(Linha + 1, 01, Format('%15s %-50s %15s %15s', [Dataset.FieldByName('PRODUTO').Text, Dataset.FieldByName('NOME').Text, Dataset.FieldByName('QUANTIDADE').Text, Dataset.FieldByName('QUANTIDADE_EXPOSTA').Text]), [COMP17]);
          Dataset.Next;
          Inc(Linha);
          If Linha > 60
          then
              IMPRESSORA.Novapagina ;
     End;

     //
     IMPRESSORA.ImpF(Linha + 1, 01, Replicate('-', 80), [Normal]);
     IMPRESSORA.ImpF(Linha + 2, 01, Format('%6s %-60s', [FormatFloat('#,##0', Dataset.RecordCount), 'registro(s) listado(s).']), [Normal]);
     //
     Dataset.GotoBookmark(bReg);
     Dataset.FreeBookMark(bReg);
     //
     IMPRESSORA.Fechar;
end;


procedure TDMListagens.IncLinha;
begin
     Linha := Linha + 1;
     If Linha > 60
     then
         Impressora.NovaPagina ;
end;

procedure TDMListagens.lsCargas(Carga: Integer);
begin
     Faturas_Carregadas.Close ;
     Faturas_Carregadas.ParamByName ('CARGA').AsInteger := Carga;
     Faturas_Carregadas.Open  ;

     NumeroCarga := IntToStr ( Carga );

     While Length(NumeroCarga) < 6 do
     begin
          NumeroCarga := '0' + NumeroCarga;
     end;

     Pagina := 1;
     NotasCarga := 0 ;

     Impressora.OnNewPage       := CABECALHOCARGA     ;
     Impressora.OnBeforeNewPage := printBeforeNewPage ;

     Impressora.Abrir ;

     While Not Faturas_Carregadas.Eof do
     begin
          Impressora.impf   (Linha, 01, Faturas_CarregadasCODIGO.AsString, [Comp17, Negrito]);
          Impressora.impf   (Linha, 06, Faturas_CarregadasDATA.AsString  , [Comp17]);
          Impressora.impf   (Linha, 15, Faturas_CarregadasPESSOA_FJ.AsString + '-' + Faturas_CarregadasNOME.Value , [Comp17]);
          Impressora.impVal (Linha, 35, '###,##0'       , Faturas_CarregadasNUM_NF.AsInteger , [Comp17]);
          Impressora.impVal (Linha, 73, '###,###,##0.00', Faturas_CarregadasTOTAL.Value + Faturas_CarregadasDESC_ACRES.Value, [Comp17]);

          Faturas_Carregadas.next ;

          NotasCarga := NotasCarga + 1 ;

          Inclinha ;
     end;

     Impressora.Fechar ;
end;

procedure TDMListagens.lsCargasAnalitico(Carga: Integer);
VAR
   I, Item : Integer;
   Aux     : String ;
begin
     SomaCarga := 0;

     IMPRIMINDO := 'PEDIDO' ;

     Cargas.Close ;
     Cargas.ParamByName ('CODIGO').AsInteger := Carga;
     Cargas.Open  ;

     Faturas_Carregadas.Close ;
     Faturas_Carregadas.ParamByName ('CARGA').AsInteger := Carga;
     Faturas_Carregadas.Open  ;

     NumeroCarga := IntToStr ( Carga );

     While Length(NumeroCarga) < 6 do
     begin
          NumeroCarga := '0' + NumeroCarga;
     end;

     Pagina := 1;
     NotasCarga := 0 ;

     Impressora.OnNewPage       := CABECALHOCARGA     ;
     Impressora.OnBeforeNewPage := printBeforeNewPage ;

     Impressora.Abrir ;

     While Not Faturas_Carregadas.Eof do
     begin
          Impressora.impf   (Linha, 01, Faturas_CarregadasCODIGO.AsString, [Comp17]);
          Impressora.impf   (Linha, 06, Faturas_CarregadasDATA.AsString  , [Comp17]);
          Impressora.impf   (Linha, 13, Faturas_CarregadasPESSOA_FJ.AsString, [Comp17]);
          Impressora.impf   (Linha, 18, Faturas_CarregadasNOME.Value , [Comp17]);
          Impressora.impVal (Linha, 45, '###,##0'       , Faturas_CarregadasNUM_NF.AsInteger , [Comp17]);
          Impressora.impVal (Linha, 55, '###,###,##0.00', Faturas_CarregadasTOTAL.Value + Faturas_CarregadasDESC_ACRES.Value, [Comp17]);

          //SOMA AS CARGAS
          SomaCarga := SomaCarga + (Faturas_CarregadasTOTAL.Value + Faturas_CarregadasDESC_ACRES.Value);

          //IMPRIME OS VENCIMENTOS
          ParcelasdaCarga ( Faturas_CarregadasCODIGO.Value ) ;

          INCLINHA ;

          NotasCarga := NotasCarga + 1;

          Faturas_Carregadas.next ;
     end;

     Impressora.impF (Linha, 01, Replicate('=', 136), [Comp17]);

     INCLINHA ;

     Impressora.impF (Linha, 42, 'SOMA TOTAL =>', [Comp17]);

     Impressora.impVal (Linha, 55, '###,###,##0.00', SOMACARGA, [Comp17]);

     INCLINHA ;

     Impressora.impF (Linha, 42, '     NOTAS =>', [Comp17]);

     Impressora.impVal (Linha, 55, '###,###,##0', NOTASCARGA, [Comp17]);

     IMPRIMINDO := 'PRODUTOS' ;

     Lista      := '';
     Item       := 0 ;
     NotasCarga := 0 ;

     Faturas_Carregadas.First ;

     While Not Faturas_Carregadas.Eof do
     begin
          If Item = 0
          then begin
               Aux   := Faturas_CarregadasCODIGO.text ;

               While Length(Aux)  <= 5 do
               begin
                    Aux := '0' + Aux ;
               end;

               Lista := Aux ;
          end
          else begin
               Aux   := Faturas_CarregadasCODIGO.text ;

               While Length(Aux)  <= 5 do
               begin
                    Aux := '0' + Aux ;
               end;

               Lista := Lista + ' - ' + Aux ;
          end;

          Item := Item + 1;

          NotasCarga := NotasCarga + 1;

          Faturas_Carregadas.Next ;
     end;

     Impressora.NovaPagina ;

     ProdutosdaCarga ( Carga );

     Impressora.Fechar ;

     Cargas.Close ;
     Faturas_Carregadas.Close ;
     Consulta_Venda_Parc.Close ;

end;

procedure TDMListagens.ProdutosdaCarga(Codigo: Integer);
Var
   CodProd, Produto, Unidade: String ;
   QuantidadeTotal, Quantidade: Real;
   Itens  : Integer;
begin
     Cargas_Itens.Close ;
     Cargas_Itens.ParamByName ('CARGA').AsInteger := Codigo;
     Cargas_Itens.Open  ;

     CodProd    := Cargas_ItensPRODUTO.AsString;
     Produto    := Cargas_ItensNOME_PRODUTO.AsString ;
     Unidade    := Cargas_ItensUNIDADE.AsString + ' C/ ' + Cargas_ItensSUBUNIDADE.AsString;

     Quantidade := 0;
     QuantidadeTotal := 0;
     Itens      := 0;

     While Not Cargas_Itens.Eof do
     begin
          If CodProd = Cargas_ItensPRODUTO.AsString
          then begin
               Quantidade := Quantidade + Cargas_ItensQUANTIDADE.Value ;
          end;

          Cargas_Itens.next ;

          If ((CodProd <> Cargas_ItensPRODUTO.AsString) or ( Cargas_Itens.eof ))
          Then begin
               QuantidadeTotal := QuantidadeTotal + Quantidade ;

               Impressora.impf   (Linha, 01, CodProd, [Comp17]);
               Impressora.impVal (Linha, 10, '###,###,##0', Quantidade, [Comp17]);
               Impressora.impf   (Linha, 20, Unidade , [Comp17]);
               Impressora.impf   (Linha, 36, Produto , [Comp17]);

               CodProd    := Cargas_ItensPRODUTO.AsString;
               Produto    := Cargas_ItensNOME_PRODUTO.AsString ;
               Unidade    := Cargas_ItensUNIDADE.AsString + ' C/ ' + Cargas_ItensSUBUNIDADE.AsString;

               Quantidade := 0;
//               Quantidade := Cargas_ItensQUANTIDADE.Value;

               ITENS := ITENS + 1;

               Inclinha ;
          end;
     end;


     Inclinha ;

     Impressora.impF (Linha, 01, Replicate('=', 136), [Comp17]);

     Inclinha ;

     Impressora.impF (Linha, 01, 'PRODUTOS', [Comp17]);

     Impressora.impVal (Linha, 10, '###,###,##0', ITENS , [Comp17]);

     Inclinha ;

     Impressora.impF (Linha, 01, 'ITENS', [Comp17]);

     Impressora.impVal (Linha, 10, '###,###,##0', QuantidadeTotal, [Comp17]);

     Inclinha ;

     Impressora.impF (Linha, 01, Replicate('=', 136), [Comp17]);

end;

procedure TDMListagens.ParcelasdaCarga(Codigo: Integer);
var
   ImprimeParc: Boolean;
begin
     ImprimeParc := False ;

     Consulta_Venda_Parc.Close ;
     Consulta_Venda_Parc.ParamByName ('CODIGO').AsInteger := Codigo;
     Consulta_Venda_Parc.Open  ;

     Consulta_Venda_Parc.First ;

     While Not Consulta_Venda_Parc.Eof do
     begin
          Impressora.impf   (Linha, 65, Consulta_Venda_ParcVENCTO.AsString, [Comp17]);
          Impressora.impVal (Linha, 71, '###,###,##0.00', (Consulta_Venda_ParcVALOR.Value), [Comp17]);

          Consulta_Venda_Parc.next ;

          ImprimeParc := True ;

          Inclinha ;
     end;

     If ImprimeParc
     then
         Linha := Linha - 1 ;
end;

procedure TDMListagens.CABECALHOCARGA(Sender: TObject; Pagina: Integer);
Var
   J, I: Integer;
begin
     // Cabecalho
     IMPRESSORA.ImpF(01, 01, DmApp.Nome, [Negrito]);
     IMPRESSORA.ImpF(01, 71, DateToStr(Date()), [Normal]);
     IMPRESSORA.ImpF(02, 01, 'CARGA ' + NUMEROCARGA, [Normal]);
     IMPRESSORA.ImpF(02, 73, TimeToStr(Time()), [Normal]);
     IMPRESSORA.ImpF(03, 01, Replicate('-', 80), [Normal]);

     IMPRESSORA.ImpF(04, 01, 'ROTA' ,     [COMP17]);
     IMPRESSORA.ImpF(04, 08, CargasNOME_ROTA.VALUE,     [COMP17]);

     IMPRESSORA.ImpF(04, 35, 'MOTORISTA' ,[COMP17]);
     IMPRESSORA.ImpF(04, 45, CargasNOME_MOTORISTA.VALUE,     [COMP17]);

     IMPRESSORA.ImpF(05, 01, 'KM SAIDA' ,   [COMP17]);
     IMPRESSORA.ImpF(05, 08, CargasKM_SAIDA.TEXT,   [COMP17]);

     IMPRESSORA.ImpF(05, 35, 'DATA SAIDA' ,   [COMP17]);
     IMPRESSORA.ImpF(05, 45, DATETOSTR(CargasDATA_SAIDA.VALUE),   [COMP17]);

     IMPRESSORA.ImpF(06, 01, Replicate('-', 80), [Normal]);

     IF IMPRIMINDO = 'PEDIDO'
     THEN BEGIN
          IMPRESSORA.ImpF(07, 01, 'PEDIDO',     [COMP17]);
          IMPRESSORA.ImpF(07, 06, 'DATA',       [COMP17]);
          IMPRESSORA.ImpF(07, 13, 'CLIENTE',    [COMP17]);
          IMPRESSORA.ImpF(07, 45, '     NF',         [COMP17]);
          IMPRESSORA.ImpF(07, 55, '        VALOR', [COMP17]);
          IMPRESSORA.ImpF(07, 65, 'VENCTO', [COMP17]);
          IMPRESSORA.ImpF(07, 73, '        VALOR', [COMP17]);

          Linha := 8;
     END
     ELSE BEGIN
          I := 1;

          J := 7;

          repeat
                Impressora.impf (J, 01, COPY(Lista,I, 90), [Comp17]);

                Inclinha ;

                I := I + 90;
                J := J + 1;
          Until TRIM(Copy (Lista, I, 90)) = '';

          IncLinha ;

          Impressora.ImpF(J, 01, 'N DE NOTAS '+ FORMATFLOAT('###', NOTASCARGA),     [COMP17]);

          J := J + 1;

          IncLinha ;

          Impressora.impF (J, 01, Replicate('=', 136), [Comp17]);

          J := J + 1;

          Impressora.ImpF(J, 01, 'PRODUTO',     [COMP17]);
          Impressora.ImpF(J, 10, '      QNTDE',  [COMP17]);
          Impressora.ImpF(J, 20, 'UNIDADE',    [COMP17]);
          Impressora.ImpF(J, 36, 'NOME',         [COMP17]);

          Linha := J + 1;
     END;
end;

procedure TDMListagens.lsAtividades(DataSet: TDataSet);
begin
  //
  bReg := Dataset.GetBookmark;
  //
  Dataset.First;
  //
  Pagina := 1;
  print.TitulodoRelatorio := 'Listagem de Atividades';
  TituloColunas := Format('%6s %-50s', ['Codigo', 'Nome']);
  print.Abrir;
  //
  While Not Dataset.Eof Do
        Begin
          print.ImpF(Linha + 1, 01, Format('%6s %-50s', [Dataset.FieldByName('CODIGO').Text, Dataset.FieldByName('NOME').Text]), [Normal]);
          Dataset.Next;
          Inc(Linha);
          If Linha > 60
          then
              Print.Novapagina ;
        End;
  //
  print.ImpF(Linha + 1, 01, Replicate('-', 80), [Normal]);
  print.ImpF(Linha + 2, 01, Format('%6s %-60s', [FormatFloat('#,##0', Dataset.RecordCount), 'registro(s) listado(s).']), [Normal]);
  //
  Dataset.GotoBookmark(bReg);
  Dataset.FreeBookMark(bReg);
  //
  print.Fechar;
end;

procedure TDMListagens.lsLocais(DataSet: TDataSet);
begin
  //
  bReg := Dataset.GetBookmark;
  //
  Dataset.First;
  //
  Pagina := 1;
  print.TitulodoRelatorio := 'Listagem de Locais de Cobrança';
  TituloColunas := Format('%6s %-50s', ['Codigo', 'Nome']);
  print.Abrir;
  //
  While Not Dataset.Eof Do
        Begin
          print.ImpF(Linha + 1, 01, Format('%6s %-50s', [Dataset.FieldByName('CODIGO').Text, Dataset.FieldByName('NOME').Text]), [Normal]);
          Dataset.Next;
          Inc(Linha);
          If Linha > 60
          then
              Print.Novapagina ;
        End;
  //
  print.ImpF(Linha + 1, 01, Replicate('-', 80), [Normal]);
  print.ImpF(Linha + 2, 01, Format('%6s %-60s', [FormatFloat('#,##0', Dataset.RecordCount), 'registro(s) listado(s).']), [Normal]);
  //
  Dataset.GotoBookmark(bReg);
  Dataset.FreeBookMark(bReg);
  //
  print.Fechar;
end;

Procedure TDMListagens.lsDeclaracao_Venda( DataSet: TDataSet );
begin
  //Dados da Pessoa
  Ver_Pessoa.Close ;

  Ver_Pessoa.ParamByName ('CNPJ'  ).AsString  := DmApp.Cnpj   ;
  Ver_Pessoa.ParamByName ('COD').AsInteger    := Dataset.FieldByName('PESSOA_FJ').value ;

  Ver_Pessoa.Prepare ;

  Ver_Pessoa.Open ;

  Impressora.TamanhoQteLinhas := 33 ;

  Impressora.Abrir;

  Impressora.ImpF(01, 01, Replicate('-', 80), [Normal]);
  Impressora.ImpF(02, 01, 'DECLARACAO DE VENDA', [EXPANDIDO, Negrito]);
  Impressora.ImpF(03, 01, DMAPP.NOME, [comp17, NEGRITO]);
  Impressora.ImpF(04, 01, DMAPP.ENDER + ' FONE ' + DMAPP.FONE + ' / ' + DMAPP.FAX, [Comp17]);
  Impressora.ImpF(04, 61, 'DATA : '+ DateToStr( Dataset.FieldByName('DATA').value ), [COMP17]);
  Impressora.ImpF(05, 01, Replicate('-', 80), [Normal]);

  Impressora.ImpF(06, 01, '              EU, '     + Ver_PessoaNOME_RAZAO.value, [Normal, NEGRITO]);
  Impressora.ImpF(07, 04, 'PORTADOR(A) DO CPF No ' + MASCARACPF(Ver_PessoaCPF_CGC.value) + ', VENHO POR MEIO DESTE DECLARAR QUE VENDI PARA ' + DMAPP.NOME , [comp17]);
  Impressora.ImpF(08, 04, 'UM ' + Dataset.FieldByName('DESCRICAO').Text + ', COM NUMERO DE SERIE = ' + Dataset.FieldByName('SERIE').Text , [comp17, NEGRITO]);
  Impressora.ImpF(09, 04, 'PELO VALOR DE ' + FORMATFLOAT( '###,##0.00', Dataset.FieldByName('VALOR').VALUE), [comp17, NEGRITO]);

  Extenso.Valor := Dataset.FieldByName('VALOR').VALUE ;

  Impressora.ImpF(10, 04, 'R$ (' + EXTENSO.TEXTO + ')' , [comp17, NEGRITO]);

  Impressora.ImpF(13, 15, DMAPP.CIDADE + '/' + DMAPP.UF + ', ' + CDoW( Dataset.FieldByName('DATA').VALUE, exdDMA ) , [comp17]);

  Impressora.ImpF(16, 15, '-------------------------------------', [comp17]);

  Impressora.ImpF(17, 15, Ver_PessoaNOME_RAZAO.value, [comp17]);

  Impressora.ImpF(33 , 01, Replicate('-', 80), [Normal]);

  Ver_Pessoa.Close ;

  Impressora.Fechar;
end;

procedure TDMListagens.lsCobrador(DataSet: TDataSet);
begin
  //
  bReg := Dataset.GetBookmark;
  //
  Dataset.First;
  //
  Pagina := 1;
  print.TitulodoRelatorio := 'Listagem de Cobradores';
  TituloColunas := Format('%6s %-50s', ['Codigo', 'Nome']);
  print.Abrir;
  //
  While Not Dataset.Eof Do
        Begin
          print.ImpF(Linha + 1, 01, Format('%6s %-50s', [Dataset.FieldByName('CODIGO').Text, Dataset.FieldByName('NOME').Text]), [Normal]);
          Dataset.Next;
          Inc(Linha);
          If Linha > 60
          then
              Print.Novapagina ;
        End;
  //
  print.ImpF(Linha + 1, 01, Replicate('-', 80), [Normal]);
  print.ImpF(Linha + 2, 01, Format('%6s %-60s', [FormatFloat('#,##0', Dataset.RecordCount), 'registro(s) listado(s).']), [Normal]);
  //
  Dataset.GotoBookmark(bReg);
  Dataset.FreeBookMark(bReg);
  //
  print.Fechar;
end;

procedure TDMListagens.lsTipos_Contratos(DataSet: TDataSet);
begin
  //
  bReg := Dataset.GetBookmark;
  //
  Dataset.First;
  //
  Pagina := 1;
  print.TitulodoRelatorio := 'Listagem de Contratos';
  TituloColunas := Format('%6s %-50s', ['Codigo', 'Nome']);
  print.Abrir;
  //
  While Not Dataset.Eof Do
        Begin
          print.ImpF(Linha + 1, 01, Format('%6s %-50s', [Dataset.FieldByName('CODIGO').Text, Dataset.FieldByName('NOME').Text]), [Normal]);
          Dataset.Next;
          Inc(Linha);
          If Linha > 60
          then
              Print.Novapagina ;
        End;
  //
  print.ImpF(Linha + 1, 01, Replicate('-', 80), [Normal]);
  print.ImpF(Linha + 2, 01, Format('%6s %-60s', [FormatFloat('#,##0', Dataset.RecordCount), 'registro(s) listado(s).']), [Normal]);
  //
  Dataset.GotoBookmark(bReg);
  Dataset.FreeBookMark(bReg);
  //
  print.Fechar;
end;


procedure TDMListagens.lsDepartamentos(DataSet: TDataSet);
begin
  //
  bReg := Dataset.GetBookmark;
  //
  Dataset.First;
  //
  Pagina := 1;
  print.TitulodoRelatorio := 'Listagem de Departamentos';
  TituloColunas := Format('%6s %-50s', ['Codigo', 'Nome']);
  print.Abrir;
  //
  While Not Dataset.Eof Do
        Begin
          print.ImpF(Linha + 1, 01, Format('%6s %-50s', [Dataset.FieldByName('CODIGO').Text, Dataset.FieldByName('NOME').Text]), [Normal]);
          Dataset.Next;
          Inc(Linha);
          If Linha > 60
          then
              Print.Novapagina ;
        End;
  //
  print.ImpF(Linha + 1, 01, Replicate('-', 80), [Normal]);
  print.ImpF(Linha + 2, 01, Format('%6s %-60s', [FormatFloat('#,##0', Dataset.RecordCount), 'registro(s) listado(s).']), [Normal]);
  //
  Dataset.GotoBookmark(bReg);
  Dataset.FreeBookMark(bReg);
  //
  print.Fechar;
end;

procedure TDMListagens.lsPatrimonio(DataSet: TDataSet);
begin
  //
  bReg := Dataset.GetBookmark;
  //
  Dataset.First;
  //
  Pagina := 1;
  print.TitulodoRelatorio := 'Listagem de Patrimonios';
  TituloColunas := Format('%6s %-50s %-15s', ['Codigo', 'Nome', 'Serie']);
  print.Abrir;
  //
  While Not Dataset.Eof Do
        Begin
          print.ImpF(Linha + 1, 01, Format('%6s %-50s %-15s', [Dataset.FieldByName('CODIGO').Text, Dataset.FieldByName('NOME').Text, Dataset.FieldByName('SERIE').Text]), [Normal]);
          Dataset.Next;
          Inc(Linha);
          If Linha > 60
          then
              Print.Novapagina ;
        End;
  //
  print.ImpF(Linha + 1, 01, Replicate('-', 80), [Normal]);
  print.ImpF(Linha + 2, 01, Format('%6s %-60s', [FormatFloat('#,##0', Dataset.RecordCount), 'registro(s) listado(s).']), [Normal]);
  //
  Dataset.GotoBookmark(bReg);
  Dataset.FreeBookMark(bReg);
  //
  print.Fechar;
end;

procedure TDMListagens.lsPecas(DataSet: TDataSet);
begin
  //
  bReg := Dataset.GetBookmark;
  //
  Dataset.First;
  //
  Pagina := 1;
  print.TitulodoRelatorio := 'Listagem de Pecas';
  TituloColunas := Format('%6s %-50s', ['Codigo', 'Nome']);
  print.Abrir;
  //
  While Not Dataset.Eof Do
        Begin
          print.ImpF(Linha + 1, 01, Format('%6s %-50s', [Dataset.FieldByName('CODIGO').Text, Dataset.FieldByName('NOME').Text]), [Normal]);
          Dataset.Next;
          Inc(Linha);
          If Linha > 60
          then
              Print.Novapagina ;
        End;
  //
  print.ImpF(Linha + 1, 01, Replicate('-', 80), [Normal]);
  print.ImpF(Linha + 2, 01, Format('%6s %-60s', [FormatFloat('#,##0', Dataset.RecordCount), 'registro(s) listado(s).']), [Normal]);
  //
  Dataset.GotoBookmark(bReg);
  Dataset.FreeBookMark(bReg);
  //
  print.Fechar;
end;

procedure TDMListagens.lsSaida_Patrimonio(DataSet: TDataSet; Patrimonio, Funcionario: String);
begin
  Impressora.TamanhoQteLinhas := 33 ;

  Impressora.Abrir;

  Impressora.ImpF(01, 01, Replicate('-', 80), [Normal]);
  Impressora.ImpF(02, 01, 'ORDEM DE SAIDA DE PATRIMONIO', [EXPANDIDO, Negrito]);
  Impressora.ImpF(03, 01, DMAPP.NOME, [comp17]);
  Impressora.ImpF(04, 01, DMAPP.ENDER + ' FONE ' + DMAPP.FONE + ' / ' + DMAPP.FAX, [Comp17]);
  Impressora.ImpF(04, 61, 'DATA : '+ DateTimeToStr(now()), [COMP17]);
  Impressora.ImpF(05, 01, Replicate('-', 80), [Normal]);

  Impressora.ImpF(06, 01, 'PATRIMONIO........: ' + PATRIMONIO, [Normal, NEGRITO]);
  Impressora.ImpF(07, 01, 'HORA SAIDA........: ' + Dataset.FieldByName('HORA_SAIDA').Text, [comp17]);
  Impressora.ImpF(07, 20, 'DATA SAIDA........: ' + Dataset.FieldByName('DATA_SAIDA').Text, [comp17]);
  Impressora.ImpF(07, 40, 'KM SAIDA..........: ' + Dataset.FieldByName('KM_SAIDA').Text, [comp17]);

  Impressora.ImpF(08, 01, 'DESCRICAO.........: ' , [comp17, NEGRITO]);

  Impressora.ImpF(09, 15, UPPERCASE(COPY(Dataset.FieldByName('DESCRICAO').value,1,80)) , [comp17]);

  If TRIM(UPPERCASE(COPY(Dataset.FieldByName('DESCRICAO').value,81,80))) <> ''
  THEN
      Impressora.ImpF(10, 15, UPPERCASE(COPY(Dataset.FieldByName('DESCRICAO').value,81,80)) , [comp17]);

  If TRIM(COPY(Dataset.FieldByName('DESCRICAO').value,161,80)) <> ''
  THEN
      Impressora.ImpF(11, 15, UPPERCASE(COPY(Dataset.FieldByName('DESCRICAO').value,161,80)) , [comp17]);

  If TRIM(COPY(Dataset.FieldByName('DESCRICAO').value,241,80)) <> ''
  THEN
      Impressora.ImpF(12, 15, COPY(Dataset.FieldByName('DESCRICAO').value,241,80) , [comp17]);

  If TRIM(COPY(Dataset.FieldByName('DESCRICAO').value,321,80)) <> ''
  THEN
      Impressora.ImpF(13, 15, UPPERCASE(COPY(Dataset.FieldByName('DESCRICAO').value,321,80)) , [comp17]);

  If TRIM(COPY(Dataset.FieldByName('DESCRICAO').value,401,80)) <> ''
  THEN
      Impressora.ImpF(14, 15, UPPERCASE(COPY(Dataset.FieldByName('DESCRICAO').value,401,80)) , [comp17]);

  Impressora.ImpF(15, 01, '-------------------------------------', [comp17]);
  Impressora.ImpF(16, 01, FUNCIONARIO, [comp17]);

  Impressora.ImpF(17 , 01, Replicate('-', 80), [Normal]);

  Impressora.Fechar;
end;

procedure TDMListagens.lsChegada_Patrimonio(DataSet: TDataSet; Patrimonio, Funcionario: String);
begin
  Impressora.TamanhoQteLinhas := 33 ;

  Impressora.Abrir;

  Impressora.ImpF(01, 01, Replicate('-', 80), [Normal]);
  Impressora.ImpF(02, 01, 'BAIXA DE SAIDA DE PATRIMONIO', [EXPANDIDO, Negrito]);
  Impressora.ImpF(03, 01, DMAPP.NOME, [comp17]);
  Impressora.ImpF(04, 01, DMAPP.ENDER + ' FONE ' + DMAPP.FONE + ' / ' + DMAPP.FAX, [Comp17]);
  Impressora.ImpF(04, 61, 'DATA : '+ DateTimeToStr(now()), [COMP17]);
  Impressora.ImpF(05, 01, Replicate('-', 80), [Normal]);

  Impressora.ImpF(06, 01, 'PATRIMONIO....: ' + PATRIMONIO, [Normal, NEGRITO]);
  Impressora.ImpF(07, 01, 'HORA SAIDA....: ' + Dataset.FieldByName('HORA_SAIDA').Text, [comp17]);
  Impressora.ImpF(07, 17, 'DATA SAIDA....: ' + Dataset.FieldByName('DATA_SAIDA').Text, [comp17]);
  Impressora.ImpF(07, 34, 'KM SAIDA......: ' + Dataset.FieldByName('KM_SAIDA').Text, [comp17]);

  Impressora.ImpF(07, 48, 'DATA CHEGADA..: ' + Dataset.FieldByName('DATA_CHEGADA').Text, [comp17]);
  Impressora.ImpF(07, 65, 'KM CHEGADA....: ' + Dataset.FieldByName('KM_CHEGADA').Text, [comp17]);

  Impressora.ImpF(08, 01, 'DESCRICAO.........: ' , [comp17, NEGRITO]);

  Impressora.ImpF(09, 15, UPPERCASE(COPY(Dataset.FieldByName('DESCRICAO').value,1,80)) , [comp17]);

  If TRIM(UPPERCASE(COPY(Dataset.FieldByName('DESCRICAO').value,81,80))) <> ''
  THEN
      Impressora.ImpF(10, 15, UPPERCASE(COPY(Dataset.FieldByName('DESCRICAO').value,81,80)) , [comp17]);

  If TRIM(COPY(Dataset.FieldByName('DESCRICAO').value,161,80)) <> ''
  THEN
      Impressora.ImpF(11, 15, UPPERCASE(COPY(Dataset.FieldByName('DESCRICAO').value,161,80)) , [comp17]);

  If TRIM(COPY(Dataset.FieldByName('DESCRICAO').value,241,80)) <> ''
  THEN
      Impressora.ImpF(12, 15, COPY(Dataset.FieldByName('DESCRICAO').value,241,80) , [comp17]);

  If TRIM(COPY(Dataset.FieldByName('DESCRICAO').value,321,80)) <> ''
  THEN
      Impressora.ImpF(13, 15, UPPERCASE(COPY(Dataset.FieldByName('DESCRICAO').value,321,80)) , [comp17]);

  If TRIM(COPY(Dataset.FieldByName('DESCRICAO').value,401,80)) <> ''
  THEN
      Impressora.ImpF(14, 15, UPPERCASE(COPY(Dataset.FieldByName('DESCRICAO').value,401,80)) , [comp17]);

  Impressora.ImpF(15, 01, '-------------------------------------', [comp17]);
  Impressora.ImpF(16, 01, FUNCIONARIO, [comp17]);

  Impressora.ImpF(17 , 01, Replicate('-', 80), [Normal]);

  Impressora.Fechar;
end;

procedure TDMListagens.lsMotivosCobranca(DataSet: TDataSet);
begin
  //
  bReg := Dataset.GetBookmark;
  //
  Dataset.First;
  //
  Pagina := 1;
  print.TitulodoRelatorio := 'Listagem de Motivos de Cobranças';
  TituloColunas := Format('%6s %-50s', ['Codigo', 'Nome']);
  print.Abrir;
  //
  While Not Dataset.Eof Do
        Begin
          print.ImpF(Linha + 1, 01, Format('%6s %-50s', [Dataset.FieldByName('CODIGO').Text, Dataset.FieldByName('NOME').Text]), [Normal]);
          Dataset.Next;
          Inc(Linha);
          If Linha > 60
          then
              Print.Novapagina ;
        End;
  //
  print.ImpF(Linha + 1, 01, Replicate('-', 80), [Normal]);
  print.ImpF(Linha + 2, 01, Format('%6s %-60s', [FormatFloat('#,##0', Dataset.RecordCount), 'registro(s) listado(s).']), [Normal]);
  //
  Dataset.GotoBookmark(bReg);
  Dataset.FreeBookMark(bReg);
  //
  print.Fechar;
end;

procedure TDMListagens.lsCores(DataSet: TDataSet);
begin
  //
  bReg := Dataset.GetBookmark;
  //
  Dataset.First;
  //
  Pagina := 1;
  print.TitulodoRelatorio := 'Listagem de Cores';
  TituloColunas := Format('%6s %-50s', ['Codigo', 'Nome']);
  print.Abrir;
  //
  While Not Dataset.Eof Do
        Begin
          print.ImpF(Linha + 1, 01, Format('%6s %-50s', [Dataset.FieldByName('CODIGO').Text, Dataset.FieldByName('NOME').Text]), [Normal]);
          Dataset.Next;
          Inc(Linha);
          If Linha > 60 then
              Print.Novapagina ;
        End;
  //
  print.ImpF(Linha + 1, 01, Replicate('-', 80), [Normal]);
  print.ImpF(Linha + 2, 01, Format('%6s %-60s', [FormatFloat('#,##0', Dataset.RecordCount), 'registro(s) listado(s).']), [Normal]);
  //
  Dataset.GotoBookmark(bReg);
  Dataset.FreeBookMark(bReg);
  //
  print.Fechar;
end;

procedure TDMListagens.lsMateriais(DataSet: TDataSet);
begin
  //
  bReg := Dataset.GetBookmark;
  //
  Dataset.First;
  //
  Pagina := 1;
  print.TitulodoRelatorio := 'Listagem de Materiais';
  TituloColunas := Format('%6s %-50s', ['Codigo', 'Nome']);
  print.Abrir;
  //
  While Not Dataset.Eof Do
        Begin
          print.ImpF(Linha + 1, 01, Format('%6s %-50s', [Dataset.FieldByName('CODIGO').Text, Dataset.FieldByName('NOME').Text]), [Normal]);
          Dataset.Next;
          Inc(Linha);
          If Linha > 60 then
           Print.Novapagina ;
        End;
  //
  print.ImpF(Linha + 1, 01, Replicate('-', 80), [Normal]);
  print.ImpF(Linha + 2, 01, Format('%6s %-60s', [FormatFloat('#,##0', Dataset.RecordCount), 'registro(s) listado(s).']), [Normal]);
  //
  Dataset.GotoBookmark(bReg);
  Dataset.FreeBookMark(bReg);
  //
  print.Fechar;
end;

procedure TDMListagens.lsMotores(DataSet: TDataSet);
begin
  //
  bReg := Dataset.GetBookmark;
  //
  Dataset.First;
  //
  Pagina := 1;
  print.TitulodoRelatorio := 'Listagem de Motores';
  TituloColunas := Format('%6s %-50s', ['Codigo', 'Nome']);
  print.Abrir;
  //
  While Not Dataset.Eof Do
        Begin
          print.ImpF(Linha + 1, 01, Format('%6s %-50s', [Dataset.FieldByName('CODIGO').Text, Dataset.FieldByName('NOME').Text]), [Normal]);
          Dataset.Next;
          Inc(Linha);
          If Linha > 60
          then
              Print.Novapagina ;
        End;
  //
  print.ImpF(Linha + 1, 01, Replicate('-', 80), [Normal]);
  print.ImpF(Linha + 2, 01, Format('%6s %-60s', [FormatFloat('#,##0', Dataset.RecordCount), 'registro(s) listado(s).']), [Normal]);
  //
  Dataset.GotoBookmark(bReg);
  Dataset.FreeBookMark(bReg);
  //
  print.Fechar;
end;

procedure TDMListagens.lsModelos_Propriedades(DataSet: TDataSet);
begin
  //
  bReg := Dataset.GetBookmark;
  //
  Dataset.First;
  //
  Pagina := 1;
  print.TitulodoRelatorio := 'Listagem de Modelos';
  TituloColunas := Format('%6s %-50s %14s', ['Codigo', 'Nome', 'Valor']);
  print.Abrir;
  //
  While Not Dataset.Eof Do
        Begin
          print.ImpF(Linha + 1, 01, Format('%6s %-50s %14s', [Dataset.FieldByName('CODIGO').Text, Dataset.FieldByName('NOME').Text, Dataset.FieldByName('VALOR').Text]), [Normal]);
          Dataset.Next;
          Inc(Linha);
          If Linha > 60
          then
              Print.Novapagina ;
        End;
  //
  print.ImpF(Linha + 1, 01, Replicate('-', 80), [Normal]);
  print.ImpF(Linha + 2, 01, Format('%6s %-60s', [FormatFloat('#,##0', Dataset.RecordCount), 'registro(s) listado(s).']), [Normal]);
  //
  Dataset.GotoBookmark(bReg);
  Dataset.FreeBookMark(bReg);
  //
  print.Fechar;
end;

procedure TDMListagens.lsServicos(DataSet: TDataSet);
begin
  //
  bReg := Dataset.GetBookmark;
  //
  Dataset.First;
  //
  Pagina := 1;
  print.TitulodoRelatorio := 'Listagem de Serviços';
  TituloColunas := Format('%6s %-50s %14s', ['Codigo', 'Nome', 'Valor']);
  print.Abrir;
  //
  While Not Dataset.Eof Do
        Begin
          print.ImpF(Linha + 1, 01, Format('%6s %-50s %14s', [Dataset.FieldByName('CODIGO').Text, Dataset.FieldByName('NOME').Text, Dataset.FieldByName('VALOR').Text]), [Normal]);
          Dataset.Next;
          Inc(Linha);
          If Linha > 60
          then
              Print.Novapagina ;
        End;
  //
  print.ImpF(Linha + 1, 01, Replicate('-', 80), [Normal]);
  print.ImpF(Linha + 2, 01, Format('%6s %-60s', [FormatFloat('#,##0', Dataset.RecordCount), 'registro(s) listado(s).']), [Normal]);
  //
  Dataset.GotoBookmark(bReg);
  Dataset.FreeBookMark(bReg);
  //
  print.Fechar;
end;

procedure TDMListagens.lsDefeitos(DataSet: TDataSet);
begin
  //
  bReg := Dataset.GetBookmark;
  //
  Dataset.First;
  //
  Pagina := 1;
  print.TitulodoRelatorio := 'Listagem de Defeitos';
  TituloColunas := Format('%6s %-50s', ['Codigo', 'Nome']);
  print.Abrir;
  //
  While Not Dataset.Eof Do
        Begin
          print.ImpF(Linha + 1, 01, Format('%6s %-50s', [Dataset.FieldByName('CODIGO').Text, Dataset.FieldByName('NOME').Text]),[normal]);
          Dataset.Next;
          Inc(Linha);
          If Linha > 60
          then
              Print.Novapagina ;
        End;
  //
  print.ImpF(Linha + 1, 01, Replicate('-', 80), [Normal]);
  print.ImpF(Linha + 2, 01, Format('%6s %-60s', [FormatFloat('#,##0', Dataset.RecordCount), 'registro(s) listado(s).']), [Normal]);
  //
  Dataset.GotoBookmark(bReg);
  Dataset.FreeBookMark(bReg);
  //
  print.Fechar;
end;

procedure TDMListagens.lsEstados(DataSet: TDataSet);
begin
  //
  bReg := Dataset.GetBookmark;
  //
  Dataset.First;
  //
  Pagina := 1;
  print.TitulodoRelatorio := 'Listagem de Estados';
  TituloColunas := Format('%6s %-50s', ['Sigla', 'Nome']);
  print.Abrir;
  //
  While Not Dataset.Eof Do
        Begin
          print.ImpF(Linha + 1, 01, Format('%6s %-50s', [Dataset.FieldByName('SIGLA').Text, Dataset.FieldByName('NOME').Text]), [Normal]);
          Dataset.Next;
          Inc(Linha);
          If Linha > 60
          then
              Print.Novapagina ;
        End;
  //
  print.ImpF(Linha + 1, 01, Replicate('-', 80), [Normal]);
  print.ImpF(Linha + 2, 01, Format('%6s %-60s', [FormatFloat('#,##0', Dataset.RecordCount), 'registro(s) listado(s).']), [Normal]);
  //
  Dataset.GotoBookmark(bReg);
  Dataset.FreeBookMark(bReg);
  //
  print.Fechar;
end;

procedure TDMListagens.lsAdministradoras(DataSet: TDataSet);
begin
  //
  bReg := Dataset.GetBookmark;
  //
  Dataset.First;
  //
  Pagina := 1;
  print.TitulodoRelatorio := 'Listagem de Administradoras';
  TituloColunas := Format('%6s %-50s', ['Codigo', 'Nome']);
  print.Abrir;
  //
  While Not Dataset.Eof Do
        Begin
          print.ImpF(Linha + 1, 01, Format('%6s %-50s', [Dataset.FieldByName('CODIGO').Text, Dataset.FieldByName('NOME').Text]), [Normal]);
          Dataset.Next;
          Inc(Linha);
          If Linha > 60
          then
              Print.Novapagina ;
        End;
  //
  print.ImpF(Linha + 1, 01, Replicate('-', 80), [Normal]);
  print.ImpF(Linha + 2, 01, Format('%6s %-60s', [FormatFloat('#,##0', Dataset.RecordCount), 'registro(s) listado(s).']), [Normal]);
  //
  Dataset.GotoBookmark(bReg);
  Dataset.FreeBookMark(bReg);
  //
  print.Fechar;
end;

procedure TDMListagens.lsTipo_Veiculos(DataSet: TDataSet);
begin
  //
  bReg := Dataset.GetBookmark;
  //
  Dataset.First;
  //
  Pagina := 1;
  print.TitulodoRelatorio := 'Listagem de Tipos de Veiculos';
  TituloColunas := Format('%6s %-50s', ['Codigo', 'Nome']);
  print.Abrir;
  //
  While Not Dataset.Eof Do
        Begin
          print.ImpF(Linha + 1, 01, Format('%6s %-50s', [Dataset.FieldByName('CODIGO').Text, Dataset.FieldByName('NOME').Text]), [Normal]);
          Dataset.Next;
          Inc(Linha);
          If Linha > 60
          then
              Print.Novapagina ;
        End;
  //
  print.ImpF(Linha + 1, 01, Replicate('-', 80), [Normal]);
  print.ImpF(Linha + 2, 01, Format('%6s %-60s', [FormatFloat('#,##0', Dataset.RecordCount), 'registro(s) listado(s).']), [Normal]);
  //
  Dataset.GotoBookmark(bReg);
  Dataset.FreeBookMark(bReg);
  //
  print.Fechar;
end;

procedure TDMListagens.lsMarcas_Veiculos(DataSet: TDataSet);
begin
  //
  bReg := Dataset.GetBookmark;
  //
  Dataset.First;
  //
  Pagina := 1;
  print.TitulodoRelatorio := 'Listagem de Marcas de Veiculos';
  TituloColunas := Format('%6s %-50s', ['Codigo', 'Nome']);
  print.Abrir;
  //
  While Not Dataset.Eof Do
        Begin
          print.ImpF(Linha + 1, 01, Format('%6s %-50s', [Dataset.FieldByName('CODIGO').Text, Dataset.FieldByName('NOME').Text]), [Normal]);
          Dataset.Next;
          Inc(Linha);
          If Linha > 60
          then
              Print.Novapagina ;
          
        End;
  //
  print.ImpF(Linha + 1, 01, Replicate('-', 80), [Normal]);
  print.ImpF(Linha + 2, 01, Format('%6s %-60s', [FormatFloat('#,##0', Dataset.RecordCount), 'registro(s) listado(s).']), [Normal]);
  //
  Dataset.GotoBookmark(bReg);
  Dataset.FreeBookMark(bReg);
  //
  print.Fechar;
end;

procedure TDMListagens.lsClassificacoes(DataSet: TDataSet);
begin
  //
  bReg := Dataset.GetBookmark;
  //
  Dataset.First;
  //
  Pagina := 1;
  print.TitulodoRelatorio := 'Listagem de Classificacoes';
  TituloColunas := Format('%6s %-50s', ['Codigo', 'Nome']);
  print.Abrir;
  //
  While Not Dataset.Eof Do
        Begin
          print.ImpF(Linha + 1, 01, Format('%6s %-50s', [Dataset.FieldByName('CODIGO').Text, Dataset.FieldByName('NOME').Text + ' - ' + Dataset.FieldByName('DIG_SENHA').Text]), [Normal]);
          Dataset.Next;
          Inc(Linha);
          If Linha > 60
          then
              Print.Novapagina ;
        End;
  //
  print.ImpF(Linha + 1, 01, Replicate('-', 80), [Normal]);
  print.ImpF(Linha + 2, 01, Format('%6s %-60s', [FormatFloat('#,##0', Dataset.RecordCount), 'registro(s) listado(s).']), [Normal]);
  //
  Dataset.GotoBookmark(bReg);
  Dataset.FreeBookMark(bReg);
  //
  print.Fechar;
end;

procedure TDMListagens.lsBancos(DataSet: TDataSet);
begin
  //
  bReg := Dataset.GetBookmark;
  //
  Dataset.First;
  //
  Pagina := 1;
  print.TitulodoRelatorio := 'Listagem de Bancos';
  TituloColunas := Format('%6s %-50s', ['Codigo', 'Nome']);
  print.Abrir;
  //
  While Not Dataset.Eof Do
        Begin
          print.ImpF(Linha + 1, 01, Format('%6s %-50s', [Dataset.FieldByName('CODIGO').Text, Dataset.FieldByName('NOME').Text]), [Normal]);
          Dataset.Next;
          Inc(Linha);
          If Linha > 60
          then
              Print.Novapagina ;
        End;
  //
  print.ImpF(Linha + 1, 01, Replicate('-', 80), [Normal]);
  print.ImpF(Linha + 2, 01, Format('%6s %-60s', [FormatFloat('#,##0', Dataset.RecordCount), 'registro(s) listado(s).']), [Normal]);
  //
  Dataset.GotoBookmark(bReg);
  Dataset.FreeBookMark(bReg);
  //
  print.Fechar;
end;

procedure TDMListagens.lsConvenios(DataSet: TDataSet);
begin
  //
  bReg := Dataset.GetBookmark;
  //
  Dataset.First;
  //
  Pagina := 1;
  print.TitulodoRelatorio := 'Listagem de Convenios';
  TituloColunas := Format('%6s %-50s', ['Codigo', 'Nome']);
  print.Abrir;
  //
  While Not Dataset.Eof Do
        Begin
          print.ImpF(Linha + 1, 01, Format('%6s %-50s', [Dataset.FieldByName('CODIGO').Text, Dataset.FieldByName('NOME').Text]), [Normal]);
          Dataset.Next;
          Inc(Linha);
          If Linha > 60
          then
              Print.Novapagina ;
        End;
  //
  print.ImpF(Linha + 1, 01, Replicate('-', 80), [Normal]);
  print.ImpF(Linha + 2, 01, Format('%6s %-60s', [FormatFloat('#,##0', Dataset.RecordCount), 'registro(s) listado(s).']), [Normal]);
  //
  Dataset.GotoBookmark(bReg);
  Dataset.FreeBookMark(bReg);
  //
  print.Fechar;
end;

procedure TDMListagens.lsBanco(DataSet: TDataSet);
begin
  //
  bReg := Dataset.GetBookmark;
  //
  Dataset.First;
  //
  Pagina := 1;
  print.TitulodoRelatorio := 'Listagem de Bancos';
  TituloColunas := Format('%6s %-50s', ['Codigo', 'Nome']);
  print.Abrir;
  //
  While Not Dataset.Eof Do
        Begin
          print.ImpF(Linha + 1, 01, Format('%6s %-50s', [Dataset.FieldByName('CODIGO').Text, Dataset.FieldByName('NOME').Text]), [Normal]);
          Dataset.Next;
          Inc(Linha);
          If Linha > 60
          then
              Print.Novapagina ;
        End;
  //
  print.ImpF(Linha + 1, 01, Replicate('-', 80), [Normal]);
  print.ImpF(Linha + 2, 01, Format('%6s %-60s', [FormatFloat('#,##0', Dataset.RecordCount), 'registro(s) listado(s).']), [Normal]);
  //
  Dataset.GotoBookmark(bReg);
  Dataset.FreeBookMark(bReg);
  //
  print.Fechar;
end;

procedure TDMListagens.lsVendedores;
begin
  //
  Vendedor.Close ;
  Vendedor.Open  ;

  Vendedor.First;
  //
  Pagina := 1;
  print.TitulodoRelatorio := 'Listagem de Vendedores';
  TituloColunas := Format('%6s %-50s %6s %6s', ['Codigo', 'Nome', 'Vista', 'Prazo']);
  print.Abrir;
  //
  While Not Vendedor.Eof
  Do Begin
          print.ImpF(Linha + 1, 01, Format('%6s %-50s %6s %6s', [Vendedor.FieldByName('CODIGO').Text, Vendedor.FieldByName('NOME').Text, Vendedor.FieldByName('COM_VISTA').Text, Vendedor.FieldByName('COM_PRAZO').Text] ), [Normal]);
          Vendedor.Next;
          Inc(Linha);
          If Linha > 6
          then
              Print.Novapagina ;
        End;
  //
  print.ImpF(Linha + 1, 01, Replicate('-', 80), [Normal]);
  print.ImpF(Linha + 2, 01, Format('%6s %-60s', [FormatFloat('#,##0', Vendedor.RecordCount), 'registro(s) listado(s).']), [Normal]);
  //
  print.Fechar;

  Vendedor.Close ;
end;

procedure TDMListagens.lsProdutos(DataSet: TDataSet);
begin
  //
  bReg := Dataset.GetBookmark;
  //
  Dataset.First;
  //
  Pagina := 1;
  print.TitulodoRelatorio := 'Listagem de Produtos';
  TituloColunas := Format('%6s %-50s', ['Codigo', 'Nome']);
  print.Abrir;
  //
  While Not Dataset.Eof Do
        Begin
          print.ImpF(Linha + 1, 01, Format('%6s %-50s', [Dataset.FieldByName('CODIGO').Text, Dataset.FieldByName('NOME').Text]), [Normal]);
          Dataset.Next;
          Inc(Linha);
          If Linha > 60
          then
              Print.Novapagina ;
        End;
  //
  print.ImpF(Linha + 1, 01, Replicate('-', 80), [Normal]);
  print.ImpF(Linha + 2, 01, Format('%6s %-60s', [FormatFloat('#,##0', Dataset.RecordCount), 'registro(s) listado(s).']), [Normal]);
  //
  Dataset.GotoBookmark(bReg);
  Dataset.FreeBookMark(bReg);
  //
  print.Fechar;
end;


procedure TDMListagens.lsLogradouros(DataSet: TDataSet);
begin
  //
  bReg := Dataset.GetBookmark;
  //
  Dataset.First;
  //
  Pagina := 1;
  print.TitulodoRelatorio := 'Listagem de Logradouros';
  TituloColunas := Format('%6s %-50s', ['Codigo', 'Nome']);
  print.Abrir;
  //
  While Not Dataset.Eof Do
        Begin
          print.ImpF(Linha + 1, 01, Format('%6s %-50s', [Dataset.FieldByName('CODIGO').Text, Dataset.FieldByName('NOME').Text]), [Normal]);
          Dataset.Next;
          Inc(Linha);
          If Linha > 60
          then
              Print.Novapagina ;
        End;
  //
  print.ImpF(Linha + 1, 01, Replicate('-', 80), [Normal]);
  print.ImpF(Linha + 2, 01, Format('%6s %-60s', [FormatFloat('#,##0', Dataset.RecordCount), 'registro(s) listado(s).']), [Normal]);
  //
  Dataset.GotoBookmark(bReg);
  Dataset.FreeBookMark(bReg);
  //
  print.Fechar;
end;

procedure TDMListagens.lsAgrupadores(DataSet: TDataSet);
begin
  //
  bReg := Dataset.GetBookmark;
  //
  Dataset.First;
  //
  Pagina := 1;
  print.TitulodoRelatorio := 'Listagem de Agrupadores';
  TituloColunas := Format('%6s %-50s', ['Codigo', 'Nome']);
  print.Abrir;
  //
  While Not Dataset.Eof Do
        Begin
          print.ImpF(Linha + 1, 01, Format('%6s %-50s', [Dataset.FieldByName('CODIGO').Text, Dataset.FieldByName('NOME').Text]), [Normal]);
          Dataset.Next;
          Inc(Linha);
          If Linha > 60
          then
              Print.Novapagina ;
        End;
  //
  print.ImpF(Linha + 1, 01, Replicate('-', 80), [Normal]);
  print.ImpF(Linha + 2, 01, Format('%6s %-60s', [FormatFloat('#,##0', Dataset.RecordCount), 'registro(s) listado(s).']), [Normal]);
  //
  Dataset.GotoBookmark(bReg);
  Dataset.FreeBookMark(bReg);
  //
  print.Fechar;
end;

procedure TDMListagens.lsBairros(DataSet: TDataSet;Name:String='Listagem de Bairros');
begin
  //
  bReg := Dataset.GetBookmark;
  //
  Dataset.First;
  //
  Pagina := 1;
  print.TitulodoRelatorio := Name;
  TituloColunas := Format('%6s %-50s', ['Codigo', 'Nome']);
  print.Abrir;
  //
  While Not Dataset.Eof Do
        Begin
          print.ImpF(Linha + 1, 01, Format('%6s %-50s', [Dataset.FieldByName('CODIGO').Text, Dataset.FieldByName('NOME').Text]), [Normal]);
          Dataset.Next;
          Inc(Linha);
          If Linha > 60
          then
              Print.Novapagina ;
        End;
  //
  print.ImpF(Linha + 1, 01, Replicate('-', 80), [Normal]);
  print.ImpF(Linha + 2, 01, Format('%6s %-60s', [FormatFloat('#,##0', Dataset.RecordCount), 'registro(s) listado(s).']), [Normal]);
  //
  Dataset.GotoBookmark(bReg);
  Dataset.FreeBookMark(bReg);
  //
  print.Fechar;
end;

procedure TDMListagens.lsTransportadoras(DataSet: TDataSet);
begin
  //
  bReg := Dataset.GetBookmark;
  //
  Dataset.First;
  //
  Pagina := 1;
  print.TitulodoRelatorio := 'Listagem de Transportadoras';
  TituloColunas := Format('%6s %-50s', ['Codigo', 'Nome']);
  print.Abrir;
  //
  While Not Dataset.Eof Do
        Begin
          print.ImpF(Linha + 1, 01, Format('%6s %-50s', [Dataset.FieldByName('CODIGO').Text, Dataset.FieldByName('NOME').Text]), [Normal]);
          Dataset.Next;
          Inc(Linha);
          If Linha > 60
          then
              Print.Novapagina ;
        End;
  //
  print.ImpF(Linha + 1, 01, Replicate('-', 80), [Normal]);
  print.ImpF(Linha + 2, 01, Format('%6s %-60s', [FormatFloat('#,##0', Dataset.RecordCount), 'registro(s) listado(s).']), [Normal]);
  //
  Dataset.GotoBookmark(bReg);
  Dataset.FreeBookMark(bReg);
  //
  print.Fechar;
end;

procedure TDMListagens.lsAplicacoes(DataSet: TDataSet);
begin
  //
  bReg := Dataset.GetBookmark;
  //
  Dataset.First;
  //
  Pagina := 1;
  print.TitulodoRelatorio := 'Listagem de Aplicaoes';
  TituloColunas := Format('%6s %-50s', ['Codigo', 'Nome']);
  print.Abrir;
  //
  While Not Dataset.Eof Do
  Begin
    print.ImpF(Linha + 1, 01, Format('%6s %-50s', [Dataset.FieldByName('CODIGO').Text, Dataset.FieldByName('NOME').Text]), [Normal]);
    Dataset.Next;
    Inc(Linha);

    If Linha > 60 then
     Print.Novapagina ;
  End;
  //
  print.ImpF(Linha + 1, 01, Replicate('-', 80), [Normal]);
  print.ImpF(Linha + 2, 01, Format('%6s %-60s', [FormatFloat('#,##0', Dataset.RecordCount), 'registro(s) listado(s).']), [Normal]);
  //
  Dataset.GotoBookmark(bReg);
  Dataset.FreeBookMark(bReg);
  //
  print.Fechar;
end;

procedure TDMListagens.lsCidades(DataSet: TDataSet);
begin
  //
  bReg := Dataset.GetBookmark;
  //
  Dataset.First;
  //
  Pagina := 1;
  print.TitulodoRelatorio := 'Listagem de Cidades';
  TituloColunas := Format('%6s %-40s %2s', ['Codigo', 'Nome', 'UF']);
  print.Abrir;
  //
  While Not Dataset.Eof Do
        Begin
          print.ImpF(Linha + 1, 01, Format('%6s %-40s %2s', [Dataset.FieldByName('CODIGO').Text, Dataset.FieldByName('NOME').Text, Dataset.FieldByName('UF').Text]), [Normal]);
          Dataset.Next;
          Inc(Linha);
          If Linha > 60
          then
              Print.Novapagina ;
        End;
  //
  print.ImpF(Linha + 1, 01, Replicate('-', 80), [Normal]);
  print.ImpF(Linha + 2, 01, Format('%6s %-60s', [FormatFloat('#,##0', Dataset.RecordCount), 'registro(s) listado(s).']), [Normal]);
  //
  Dataset.GotoBookmark(bReg);
  Dataset.FreeBookMark(bReg);
  //
  print.Fechar;
end;

procedure TDMListagens.lsMarcas(DataSet: TDataSet);
begin
  //
  bReg := Dataset.GetBookmark;
  //
  Dataset.First;
  //
  Pagina := 1;
  print.TitulodoRelatorio := 'Listagem de Marcas';
  TituloColunas := Format('%6s %-50s', ['Codigo', 'Nome']);
  print.Abrir;
  //
  While Not Dataset.Eof Do
        Begin
          print.ImpF(Linha + 1, 01, Format('%6s %-50s', [Dataset.FieldByName('CODIGO').Text, Dataset.FieldByName('NOME').Text]), [Normal]);
          Dataset.Next;
          Inc(Linha);
          If Linha > 60
          then
              Print.Novapagina ;
        End;
  //
  print.ImpF(Linha + 1, 01, Replicate('-', 80), [Normal]);
  print.ImpF(Linha + 2, 01, Format('%6s %-60s', [FormatFloat('#,##0', Dataset.RecordCount), 'registro(s) listado(s).']), [Normal]);
  //
  Dataset.GotoBookmark(bReg);
  Dataset.FreeBookMark(bReg);
  //
  print.Fechar;
End;

{procedure TDMListagens.CentroRecursivo(Agrupador: ingeger);
Var
   Cod: Integer;
   Imprimiu: Boolean ;
begin
   //aqui
end;}

procedure TDMListagens.lsCentro;
Var
   Cod: Integer;
   Imprimiu: Boolean ;
begin
  Centro_Custo.Close   ;
  Centro_Custo.Prepare ;
  Centro_Custo.Open    ;

  Cod := 0 ;

  Imprimiu := false ; //utilizado para saber se imprimiu o pai?

  //
  bReg := Centro_Custo.GetBookmark;
  //
  Centro_Custo.First;
  //
  Pagina := 1;
  print.TitulodoRelatorio := 'Listagem de Centros';
  TituloColunas := Format('%6s %-50s', ['Codigo', 'Nome']);
  print.Abrir;
  //
  While Not Centro_Custo.Eof Do
  Begin
    If ( Not Imprimiu ) then
    begin
      print.ImpF(Linha + 1, 01, Format('%6s %-50s', [Centro_Custo.FieldByName('CODIGO').Text, Centro_Custo.FieldByName('NOME').Text]), [Normal]);

      Cod := Centro_CustoCODIGO.Value ;

      Imprimiu := true ;

      Inc(Linha);
    end
    else
    begin
      if ( Centro_CustoCODIGO_AGRUPADO.Value <> 0 ) then // se pai não tem filho, nao imprime o agrupado
      begin
        print.ImpF(Linha + 1, 01, Format('%-5s %6s %-50s', ['',Centro_Custo.FieldByName('CODIGO_AGRUPADO').Text, Centro_Custo.FieldByName('NOME_AGRUPADO').Text]), [Normal]);
        Inc(Linha);
      end;
        Cod := Centro_CustoCODIGO.Value;
        Centro_Custo.Next;
    end;

    If ( Cod <> Centro_CustoCODIGO.Value ) then
    begin
      Imprimiu := False ;
    end;

    If ( Linha > 60)  then
      Print.Novapagina ;
  End;
  //
  print.ImpF(Linha + 1, 01, Replicate('-', 80), [Normal]);
  //codigo nao funciona o count record ta dando errado.. :/ print.ImpF(Linha + 2, 01, Format('%6s %-60s', [FormatFloat('#,##0', Centro_Custo.RecordCount), 'registro(s) listado(s).']), [Normal]);
  //
  Centro_Custo.GotoBookmark(bReg);
  Centro_Custo.FreeBookMark(bReg);
  //
  print.Fechar;
End;

procedure TDMListagens.lsUnidades(DataSet: TDataSet);
begin
  //
  bReg := Dataset.GetBookmark;
  //
  Dataset.First;
  //
  Pagina := 1;
  print.TitulodoRelatorio := 'Listagem de Unidades de Medida';
  TituloColunas := Format('%6s %-50s', ['Sigla', 'Nome']);
  print.Abrir;
  //
  While Not Dataset.Eof Do
        Begin
          print.ImpF(Linha + 1, 01, Format('%6s %-50s', [Dataset.FieldByName('SIGLA').Text, Dataset.FieldByName('NOME').Text]), [Normal]);
          Dataset.Next;
          Inc(Linha);
          If Linha > 60
          then
              Print.Novapagina ;
        End;
  //
  print.ImpF(Linha + 1, 01, Replicate('-', 80), [Normal]);
  print.ImpF(Linha + 2, 01, Format('%6s %-60s', [FormatFloat('#,##0', Dataset.RecordCount ), 'registro(s) listado(s).']), [Normal]);
  //
  Dataset.GotoBookmark(bReg);
  Dataset.FreeBookMark(bReg);
  //
  print.Fechar;
End;

procedure TDMListagens.lsReducoes(DataSet: TDataSet);
begin
  //
  bReg := Dataset.GetBookmark;
  //
  Dataset.First;
  //
  Pagina := 1;
  print.TitulodoRelatorio := 'Listagem de Reducoes';
  TituloColunas := Format('%6s %15s %15s %-80s', ['Codigo', '% Estadual', '% Interestadual', 'Mensagem NF']);
  print.Abrir;
  //
  While Not Dataset.Eof Do
        Begin
          print.ImpF(Linha + 1, 01, Format('%6s %15s %15s %-80s', [Dataset.FieldByName('CODIGO').Text,
                                                                   Dataset.FieldByName('PERC_ESTADUAL').Text,
                                                                   Dataset.FieldByName('PERC_INTERESTADUAL').Text,
                                                                   Dataset.FieldByName('MENSAGEM_NF').Text]), [Comp17]);
          Dataset.Next;
          Inc(Linha);
          If Linha > 60
          then
              Print.Novapagina ;
        End;
  //
  print.ImpF(Linha + 1, 01, Replicate('-', 80), [Normal]);
  print.ImpF(Linha + 2, 01, Format('%6s %-60s', [FormatFloat('#,##0', Dataset.RecordCount), 'registro(s) listado(s).']), [Normal]);
  //
  Dataset.GotoBookmark(bReg);
  Dataset.FreeBookMark(bReg);
  //
  print.Fechar;
End;

procedure TDMListagens.lsCotas(DataSet: TDataSet);
begin
  //
  bReg := Dataset.GetBookmark;
  //
  Dataset.First;
  //
  Pagina := 1;
  print.TitulodoRelatorio := 'Listagem de Cotas';
  TituloColunas := Format('%6s %-30s %6s %-58s %10s %10s %10s', ['Grupo', 'Nome', 'SubGrupo', 'Nome', 'Cota', 'Com. Vista', 'Com. Prazo']);
  print.Abrir;
  //
  While Not Dataset.Eof Do
        Begin
          print.ImpF(Linha + 1, 01, Format('%6s %-30s %6s %-58s %10s %10s %10s',
                                    [Dataset.FieldByName('GRUPO').Text,
                                    Dataset.FieldByName('NOME_GRUPO').Text,
                                    Dataset.FieldByName('SUBGRUPO').Text,
                                    Dataset.FieldByName('NOME_SUBGRUPO').Text,
                                    Dataset.FieldByName('VALOR').Text,
                                    Dataset.FieldByName('COMISSAO_PRAZO').Text,
                                    Dataset.FieldByName('COMISSAO_PRAZO').Text]), [Comp17]);
          Dataset.Next;
          Inc(Linha);
          If Linha > 60
          then
              Print.Novapagina ;
        End;
  //
  print.ImpF(Linha + 1, 01, Replicate('-', 80), [Normal]);
  //
  Dataset.GotoBookmark(bReg);
  Dataset.FreeBookMark(bReg);
  //
  print.Fechar;
End;

procedure TDMListagens.printNewPage(Sender: TObject; Pagina: Integer);
begin
  // Cabecalho
  print.ImpF(01, 01, DmApp.Nome, [Negrito]);
  print.ImpF(01, 62, DatetimeToStr(now()), [Normal]);
  print.ImpF(02, 01, print.TitulodoRelatorio, [Normal]);
  print.ImpF(02, 55, dateTimeToStr(now()), [Normal]);
  print.ImpF(03, 01, Replicate('-', 80), [Normal]);
  If Length(TituloColunas) <= 80 Then
     print.ImpF(04, 01, TituloColunas, [Normal]);
  If (Length(TituloColunas) > 80) And (Length(TituloColunas) <= 136) Then
     print.ImpF(04, 01, TituloColunas, [Comp17]);
  If Length(TituloColunas) > 136 Then
     print.ImpF(04, 01, TituloColunas, [Comp20]);
  print.ImpF(05, 01, Replicate('-', 80), [Normal]);
  Linha := 5;
end;

procedure TDMListagens.CabecalhoResposicoes(Sender: TObject; Pagina: Integer);
begin
  // Cabecalho
  IMPRESSORA.ImpF(01, 01, DmApp.Nome, [Negrito]);
  IMPRESSORA.ImpF(01, 71, DateToStr(Date()), [Normal]);
  IMPRESSORA.ImpF(02, 01, IMPRESSORA.TitulodoRelatorio, [Normal]);
  IMPRESSORA.ImpF(02, 73, TimeToStr(Time()), [Normal]);
  IMPRESSORA.ImpF(03, 01, Replicate('-', 80), [Normal]);
  If Length(TituloColunas) <= 80 Then
     IMPRESSORA.ImpF(04, 01, TituloColunas, [comp17]);
  If (Length(TituloColunas) > 80) And (Length(TituloColunas) <= 136) Then
     IMPRESSORA.ImpF(04, 01, TituloColunas, [Comp17]);
  If Length(TituloColunas) > 136 Then
     IMPRESSORA.ImpF(04, 01, TituloColunas, [comp17]);
  IMPRESSORA.ImpF(05, 01, Replicate('-', 80), [Normal]);
  Linha := 5;
end;

procedure TDMListagens.printBeforeNewPage(Sender: TObject; Pagina: Integer);
begin
  // Rodapé
  print.ImpF(62, 01, Replicate('-', 80), [Normal]);
  print.ImpF(63, 01, Format('%-122s Pagina : %4s', ['Suporte Tecnico '+dmapp.FONE_SUPORTE+' - '+dmApp.QryParceiroPARC_NOME_FANTASIA.asString+' '+dmApp.QryParceiroPARC_SLOGAN.asString, StrZero(Pagina, 4)]), [Comp17]);
  Linha := 0;
end;

procedure TDMListagens.IMPRIMECHEQUE(Conta: Integer);
VAR
   Fav, dia, mes, ano, Data :String ;
   VALORALT, VALORDST :Integer ;
   EXTENSOALT, EXTENSODST :Integer ;
   FAVALT, FAVDST : Integer ;
   CIDALT, CIDDST: Integer ;
   DIAALT, DIADST: Integer ;
   MESALT, MESDST: Integer ;
   ANOALT, ANODST: Integer ;
   I:Integer ;
   AUX, AUX2 : STRING ;
begin

     CHEQUE.Close ;
     CHEQUE.SQL.text := ' SELECT * from VER_CTB_CHEQUE ( :CNPJ, :CONTA ) WHERE IMPRESSO = :OPCAO ORDER BY CHEQUE';
     CHEQUE.ParamByName ( 'CNPJ'  ).ASSTRING   := DmApp.Cnpj ;
     CHEQUE.ParamByName ( 'CONTA' ).ASInteger  := Conta      ;
     CHEQUE.ParamByName ( 'OPCAO' ).ASString   := 'N'        ;
     CHEQUE.Open;

     if ( CHEQUE.recordcount <= 0 )
     Then Begin
          MessageDlg('Não Há Cheques Selecionados!',MtInformation,[MbOk],0);
          Exit ;
     end;
     

     TBImpressora.Close ;
     TBImpressora.SelectSQL.text := ' SELECT * from SIS_CONF_CHEQUE where CONTA = :CONTA ';
     TBImpressora.Params.ByName ( 'CONTA' ).ASInteger := Conta ;
     TBImpressora.Open ;

     for i:= 0 to 13 do
     Begin
          if ( TBImpressora.fields[i].isnull )
          Then bEGIN
               tbimpressora.Edit ;
               TBImpressora.fields[i].value := 0 ;
               TBImpressoraCONTA.value := conta;
               tbimpressora.Post ;
           END;
    end;

    VALORALT   := TBIMPRESSORAValorAlt.Value ;
    VALORDST   := TBIMPRESSORAVALORDST.Value ;
    EXTENSOALT := TBIMPRESSORAEXTENSOALT.Value ;
    EXTENSODST := TBIMPRESSORAEXTENSODST.Value ;
    FAVALT     := TBIMPRESSORAFAVALT.Value ;
    FAVDST     := TBIMPRESSORAFAVDST.Value ;
    CIDALT     := TBIMPRESSORACIDALT.Value ;
    CIDDST     := TBIMPRESSORACIDDST.Value ;
    DIAALT     := TBIMPRESSORADIAALT.Value ;
    DIADST     := TBIMPRESSORADIADST.Value ;
    MESALT     := TBIMPRESSORAMESALT.Value ;
    MESDST     := TBIMPRESSORAMESDST.Value ;
    ANOALT     := TBIMPRESSORAANOALT.Value ;
    ANODST     := TBIMPRESSORAANODST.Value ;

    IMPRESSORA.TamanhoQteLinhas  := TBIMPRESSORAALTURA.Value ;
    IMPRESSORA.TamanhoQteColunas := TBIMPRESSORADISTANCIA.Value ;

    FAV := CHEQUENOMINAL.AsString;

    TBIMPRESSORA.CLOSE ;

    IF ( TBIMPRESSORAPRECISAO.Value = 'Seis' )
    Then
        Impressora.TamanhoQteLPP := Seis
    Else
        Impressora.TamanhoQteLPP := Oito ;

    IMPRESSORA.TamanhoQteColunas := 136  ;

    IMPRESSORA.abrir;

    //PRIMEIRA PÁGINA
    CHEQUE.First ;

    while not CHEQUE.eof do
    begin
         Data := datetostr ( CHEQUEDATA.value );

         If Length(Data) = 8
         then begin
              DATA := COPY ( DATA, 1, 6 ) + '20' + COPY ( DATA, 7, 2 ) ;
         end;

         dia := copy ( DATA, 1, 2 );
         ano := copy ( DATA, 7, 4 );

         case ( strtoint( (copy ( DATA, 4, 2 )))) of
             1 : mes := 'Janeiro';
             2 : mes := 'Fevereiro';
             3 : mes := 'Março';
             4 : mes := 'Abril';
             5 : mes := 'Maio';
             6 : mes := 'Junho';
             7 : mes := 'Julho';
             8 : mes := 'Agosto';
             9 : mes := 'Setembro';
             10: mes := 'Outubro';
             11: mes := 'Novembro';
             12: mes := 'Dezembro';
         end;

         //ESCREVE O VALOR
         IMPRESSORA.impF (VALORALT, VALORDST,'R$ '+ formatfloat('###,###,###0.00',CHEQUEVALOR.VALUE),[COMP12, NEGRITO]);

         VALOR.VALOR := CHEQUEVALOR.VALUE ;

         AUX  := '';
         AUX2 := '';

         AUX := COPY ( VALOR.TEXTO, 1,  64 );
         AUX2:= COPY ( VALOR.TEXTO, 65, 100);

         AUX2 := trim ( AUX2 ) ;
         REPEAT
               AUX2 := CONCAT ( AUX2, '*' );
         UNTIL LENGTH ( AUX2 ) >= 64 ;

         IF ( TRIM( AUX2 )  <> ''  )
         THEN BEGIN
              IMPRESSORA.impF (EXTENSOALT, EXTENSODST, AUX,[COMP12, NEGRITO]);
              IMPRESSORA.impF (EXTENSOALT + 2, EXTENSODST, AUX2,[COMP12, NEGRITO]);
         END
         ELSE
              IMPRESSORA.impF (EXTENSOALT, EXTENSODST, AUX,[COMP12, NEGRITO]);

         IF ( FAV = 'S' )
         Then Begin
              IF NOT ( CHEQUEPESSOA_FJ.ISNULL )
              THEN
                  IMPRESSORA.IMPF ( FAVALT, FAVDST, CHEQUENOME.Value ,[COMP12, NEGRITO])
//                  ELSE
  //                    IMPRESSORA.IMPF ( FAVALT, FAVDST, CHEQUECLIENTE.Value ,[COMP12, NEGRITO]);
         end;

         IMPRESSORA.IMPF (CIDALT, CIDDST, DmApp.CIDADE,[COMP12]);
         IMPRESSORA.IMPF (DIAALT, DIADST, dia,[COMP12]);
         IMPRESSORA.IMPF (MESALT, MESDST, mes,[COMP12]);
         IMPRESSORA.IMPF (ANOALT, ANODST, ano,[COMP12]);

         CHEQUE.Next ;

         IMPRESSORA.novapagina;

    END;

    IMPRESSORA.fechar;

    {-- CRIADO A IMPRESSAO GRAFICA NO FORM "FrmCheques_Ctb" }
    IF ( MessageDlg('Imprimir Cópias dos Cheques? ', mtConfirmation, [mbOK, mbCancel], 0) = MrOk )
    THEN BEGIN
         IMPRIMECOPIA ;
    END;


    { CHAMADO A FUNÇÃO NO FORM 'FrmCheques_Ctb' APOS A IMPRESSAO GRAFICA}
    IF ( MessageDlg(' Cheques Impressos Com Sucesso? ', mtConfirmation, [mbOK, mbCancel], 0) = MrOk )
    THEN BEGIN
         GERAL.CLOSE ;
         GERAL.SQL.CLEAR ;
         GERAL.PARAMS.CLEAR ;

         GERAL.Params.CreateParam ( FTSTRING, 'CNPJ'   , ptInputOutPut );
         GERAL.Params.CreateParam ( FTInteger, 'CONTA' , ptInputOutPut );
         GERAL.Params.CreateParam ( FTSTRING, 'OPCAO'  , ptInputOutPut );

         GERAL.SQL.ADD ( ' UPDATE CTB_CHEQUE SET IMPRESSO = :OPCAO WHERE CNPJ = :CNPJ AND CONTA = :CONTA ' );

         GERAL.ParamByName ( 'CNPJ'  ).ASString  := DmaPP.Cnpj ;
         GERAL.ParamByName ( 'CONTA' ).ASInteger := Conta      ;
         GERAL.ParamByName ( 'OPCAO' ).ASString  := 'S'        ;

         GERAL.PREPARE ;
         GERAL.EXECSQL ;
    END;

    CHEQUE.Close ;
    TBIMPRESSORA.Close ;
end;

procedure TDMListagens.ImprimeCopia;
VAR
   dia, mes, ano, NOME :String ;
   I:Integer ;
   VALORCHEQUE: STRING;
begin
     //*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/* COPIA DE CHEQUE */*/*/*/*/*/*/*/*/*/*/
     print.TamanhoQteLinhas := 33 ;

     print.OnBeforeNewPage := Nil ;

     print.abrir;

     //PRIMEIRA PÁGINA
     CHEQUE.First ;

     while not CHEQUE.eof do
     begin
          dia := copy ( datetostr ( CHEQUEdata.value ), 1, 2 );
          ano := copy ( datetostr ( CHEQUEdata.value ), 7, 4 );

          case ( strtoint( (copy ( datetostr ( CHEQUEdata.value ), 4, 2 )))) of
               1 : mes := 'Janeiro';
               2 : mes := 'Fevereiro';
               3 : mes := 'Março';
               4 : mes := 'Abril';
               5 : mes := 'Maio';
               6 : mes := 'Junho';
               7 : mes := 'Julho';
               8 : mes := 'Agosto';
               9 : mes := 'Setembro';
               10: mes := 'Outubro';
               11: mes := 'Novembro';
               12: mes := 'Dezembro';
          end;

          //ESCREVE O VALOR DO ACUMULADO PARA UM CENTRO
          NOME := TBIMPRESSORANOME.VALUE ;

          REPEAT
                NOME := CONCAT ( ' ', NOME );
                NOME := CONCAT ( NOME, ' ' );
          UNTIL ( LENGTH ( NOME ) >= 40 );

          print.IMPF ( 2, 1,NOME,[NEGRITO,EXPANDIDO]);

          print.IMPF ( 4, 22,'RECIBO DE PAGAMENTO',[NEGRITO, EXPANDIDO]);

          print.IMPF ( 6, 9, ' FORNECEDOR      = ' + CHEQUENOME.Value ,[COMP12]);

//          print.IMPF ( 8, 9, ' CONTA/EMPRESA   = ' + CHEQUESUB.Value +'/'+ CHEQUEEMPRESA.Value ,[COMP12]);

          print.IMPF ( 10, 9,' CHEQUE/BANCO    = ' + ( CHEQUECHEQUE.Text ) + '  -   ' +  CHEQUEBANCO.Value,[COMP12]) ;

          IF ( LENGTH (CHEQUEHISTORICO.Value) > 55 )
               Then Begin
                   print.IMPF ( 12, 9, ' HISTORICO       = ' + COPY ( CHEQUEHISTORICO.Value,0,45),[COMP12])  ;
                   print.IMPF ( 13, 9, '                 = ' + COPY ( CHEQUEHISTORICO.Value,46,150),[COMP12])  ;
          end
          Else Begin
               print.IMPF ( 12, 9, ' HISTORICO       = ' + CHEQUEHISTORICO.Value,[COMP12])  ;
          end;

          VALORCHEQUE := formatfloat('###,###,###0.00',CHEQUEVALOR.VALUE);

          WHILE LENGTH ( VALORCHEQUE ) < 12 DO
          Begin
               VALORCHEQUE := CONCAT ( '*',VALORCHEQUE );
          end;

          print.impF ( 15, 8,'R$ ' + VALORCHEQUE ,[NEGRITO]);

          VALOR.VALOR := CHEQUEVALOR.VALUE ;

          VALORCHEQUE := VALOR.TEXTO ;

          WHILE LENGTH ( VALORCHEQUE ) < 60 DO
          Begin
               VALORCHEQUE := CONCAT ( VALORCHEQUE,'*' );
          end;

          print.impF ( 16, 8,VALORCHEQUE,[NEGRITO]);

//          print.IMPF ( 17, 8,'                   ' + CHEQUEFAVORECIDO.Value,[COMP12])  ;

          print.IMPF ( 19, 45, 'Dourados ( MS )',[COMP17]);
          print.IMPF ( 19, 56, dia + ' De ' ,[COMP17]);
          print.IMPF ( 19, 60, mes + ' De ' ,[COMP17]);
          print.IMPF ( 19, 67, ano,[COMP17]);

          print.IMPF ( 24, 09, '______________________________________',[COMP12]);
          print.IMPF ( 25, 09, 'VISTO DO PAGADOR',[COMP12]);

          print.IMPF ( 24, 45, '______________________________________',[COMP12]);
          print.IMPF ( 25, 45, 'DECLARAMOS QUE RECEBEMOS O VALOR ACIMA',[COMP12]);

          CHEQUE.Next ;

          IF not ( CHEQUE.EOF )
          Then
              print.Novapagina ;
     end;

     print.fechar;
end;

procedure TDMListagens.Faturas_CarregadasAfterClose(DataSet: TDataSet);
begin
  If (DataSet is TIBQuery) Then
     (Dataset as TIBQuery).UnPrepare;
  If (DataSet is TIBDataSet) Then
     (Dataset as TIBDataset).UnPrepare;
end;

procedure TDMListagens.Faturas_CarregadasBeforeOpen(DataSet: TDataSet);
begin
  If (DataSet is TIBQuery) Then
     Begin
       (DataSet as TIBQuery).ParamByName('CNPJ').asString := DMApp.Cnpj;
       (Dataset as TIBQuery).Prepare;
     End;
  If (DataSet is TIBDataset) Then
     Begin
       (DataSet as TIBDataSet).ParamByName('CNPJ').asString := DMApp.Cnpj;
       (Dataset as TIBDataSet).Prepare;
     End;
end;

procedure TDMListagens.DataModuleCreate(Sender: TObject);
begin
     IniciaComponentesDm ( Sender as TDataModule );
end;

procedure TDMListagens.Divergencia_Grades;
begin
  //
  CONFERE_ESTOQUE_GRADE.Close ;

  CONFERE_ESTOQUE_GRADE.ParamByName('CNPJ').AsString := DmApp.Cnpj ;

  CONFERE_ESTOQUE_GRADE.open ;

  CONFERE_ESTOQUE_GRADE.First;
  //
  Pagina := 1;
  print.TitulodoRelatorio := 'Listagem de Divergências de Grades';
  TituloColunas := Format('%15s %50s', ['Codigo', 'Nome']);
  print.Abrir;
  //
  While Not CONFERE_ESTOQUE_GRADE.Eof Do
        Begin
          print.ImpF(Linha + 1, 01, Format('%15s %50s ', [CONFERE_ESTOQUE_GRADE.FieldByName('CODIGO').Text,
                                                                   CONFERE_ESTOQUE_GRADE.FieldByName('NOME').Text]), [Comp17]);
          CONFERE_ESTOQUE_GRADE.Next;
          Inc(Linha);
          If Linha > 60 then
            Print.Novapagina ;
        End;
  //
  print.ImpF(Linha + 1, 01, Replicate('-', 80), [Normal]);
  print.ImpF(Linha + 2, 01, Format('%6s %-60s', [FormatFloat('#,##0', CONFERE_ESTOQUE_GRADE.RecordCount), 'registro(s) listado(s).']), [Normal]);
  //
  //
  print.Fechar;
end;

procedure TDMListagens.lsTipoAtendimento(DataSet: TDataSet);
begin
  bReg := Dataset.GetBookmark;
  Dataset.First;
  //
  Pagina := 1;
  print.TitulodoRelatorio := 'Listagem de Tipo da Atendimento';
  TituloColunas := Format('%6s %-50s', ['Codigo', 'Nome']);
  print.Abrir;
  //
  While Not Dataset.Eof Do
        Begin
          print.ImpF(Linha + 1, 01, Format('%6s %-50s', [Dataset.FieldByName('CODIGO').Text, Dataset.FieldByName('NOME').Text]),[normal]);
          Dataset.Next;
          Inc(Linha);
          If Linha > 60
          then
              Print.Novapagina ;
        End;
  //
  print.ImpF(Linha + 1, 01, Replicate('-', 80), [Normal]);
  print.ImpF(Linha + 2, 01, Format('%6s %-60s', [FormatFloat('#,##0', Dataset.RecordCount), 'registro(s) listado(s).']), [Normal]);
  //
  Dataset.GotoBookmark(bReg);
  Dataset.FreeBookMark(bReg);
  //
  print.Fechar;
end;

procedure TDMListagens.PagasChequePlanilhaCalcFields(DataSet: TDataSet);
VAR
   dia, mes, ano, Data :String ;
begin
   Data := datetostr ( CHEQUEDATA.value );

   If Length(Data) = 8
   then begin
        DATA := COPY ( DATA, 1, 6 ) + '20' + COPY ( DATA, 7, 2 ) ;
   end;

   dia := copy ( DATA, 1, 2 );
   ano := copy ( DATA, 7, 4 );

   case ( strtoint( (copy ( DATA, 4, 2 )))) of
       1 : mes := 'Janeiro';
       2 : mes := 'Fevereiro';
       3 : mes := 'Março';
       4 : mes := 'Abril';
       5 : mes := 'Maio';
       6 : mes := 'Junho';
       7 : mes := 'Julho';
       8 : mes := 'Agosto';
       9 : mes := 'Setembro';
       10: mes := 'Outubro';
       11: mes := 'Novembro';
       12: mes := 'Dezembro';
   end;

  PagasChequePlanilhatmp_EMPRESA.Value     := DmaPP.NOME;
  PagasChequePlanilhatmp_VALOR.VALUE       := 'R$ **'+formatfloat('###,###,###0.00',PagasChequePlanilhaVALOR.Value);
  PagasChequePlanilhatmpMUNICIPIO.VALUE    := DMAPP.CIDADE+' ( MS ) '+dia+' de '+mes+' de '+ano;
  VALOR.VALOR := PagasChequePlanilhaVALOR.Value;
  PagasChequePlanilhatmp_VLR_EXTENSO.VALUE := valor.texto;
  PagasChequePlanilhatmp_BANCO.VALUE       := DMFINANCEIRO.SelPlanoBANCO.TEXT+' - '+DMFINANCEIRO.SelPlanoNOME.TEXT;
end;

procedure TDMListagens.lsContatos(DataSet: TDataSet);
begin
  //
  bReg := Dataset.GetBookmark;
  //
  Dataset.First;
  //
  Pagina := 1;
  print.TitulodoRelatorio := 'Listagem de Contatos';
  TituloColunas := Format('%6s %-50s', ['Codigo', 'Nome']);
  print.Abrir;
  //
  While Not Dataset.Eof Do
        Begin
          print.ImpF(Linha + 1, 01, Format('%6s %-50s', [Dataset.FieldByName('CODIGO').Text, Dataset.FieldByName('NOME').Text]), [Normal]);
          Dataset.Next;
          Inc(Linha);
          If Linha > 60
          then
              Print.Novapagina ;
        End;
  //
  print.ImpF(Linha + 1, 01, Replicate('-', 80), [Normal]);
  print.ImpF(Linha + 2, 01, Format('%6s %-60s', [FormatFloat('#,##0', Dataset.RecordCount), 'registro(s) listado(s).']), [Normal]);
  //
  Dataset.GotoBookmark(bReg);
  Dataset.FreeBookMark(bReg);
  //
  print.Fechar;
end;

end.
