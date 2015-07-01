 unit Cadastros_DM;

interface                                         

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, IBCustomDataSet, IBQuery, IBStoredProc;

type
  TDMCadastros = class(TDataModule)
    Pessoas_FJ: TIBDataSet;
    Logradouros: TIBDataSet;
    Bairros: TIBDataSet;
    Estados: TIBDataSet;
    LogradourosCODIGO: TIntegerField;
    LogradourosNOME: TIBStringField;
    BairrosCODIGO: TIntegerField;
    BairrosNOME: TIBStringField;
    EstadosSIGLA: TIBStringField;
    EstadosNOME: TIBStringField;
    Atividades: TIBDataSet;
    AtividadesCODIGO: TIntegerField;
    AtividadesNOME: TIBStringField;
    Grupos: TIBDataSet;
    Subgrupos: TIBDataSet;
    GruposCODIGO: TIntegerField;
    GruposNOME: TIBStringField;
    GruposBASE: TSmallintField;
    GruposMINIMO: TSmallintField;
    GruposMAXIMO: TSmallintField;
    SubgruposGRUPO: TIntegerField;
    SubgruposSUBGRUPO: TIntegerField;
    SubgruposNOME: TIBStringField;
    SubgruposDIGITA_PRC: TIBStringField;
    Marcas: TIBDataSet;
    MarcasCODIGO: TIntegerField;
    MarcasNOME: TIBStringField;
    Unidades: TIBDataSet;
    UnidadesNOME: TIBStringField;
    Reducoes: TIBDataSet;
    ReducoesCODIGO: TIntegerField;
    ReducoesMENSAGEM_NF: TIBStringField;
    Natureza: TIBDataSet;
    NaturezaCODIGO: TIntegerField;
    NaturezaNOME: TIBStringField;
    NaturezaES: TIBStringField;
    NaturezaINTERESTADUAL: TIBStringField;
    NaturezaMOV_CAIXA: TIBStringField;
    NaturezaMOV_ESTOQUE: TIBStringField;
    NaturezaPAGA_COMISSAO: TIBStringField;
    NaturezaCOMPUTA_VENDA: TIBStringField;
    NaturezaRESUMO_CONTABIL: TIBStringField;
    NaturezaALTERA_CUSTO: TIBStringField;
    NaturezaCONSIGNACAO: TIBStringField;
    NaturezaMENSAGEM_1: TIBStringField;
    NaturezaMENSAGEM_2: TIBStringField;
    SubgruposDESCONTO_MAX: TFloatField;
    ReducoesPERC_ESTADUAL: TFloatField;
    ReducoesPERC_INTERESTADUAL: TFloatField;
    NaturezaPERC_ICMS: TFloatField;
    NaturezaPERC_ICMS_REV: TFloatField;
    NaturezaPERC_ISS: TFloatField;
    Tipo_Documento: TIBDataSet;
    Tipo_DocumentoNOME: TIBStringField;
    Centro_Custo: TIBDataSet;
    Pessoas_FJNOME_RAZAO: TIBStringField;
    Pessoas_FJFANTASIA: TIBStringField;
    Pessoas_FJNUMERO: TIBStringField;
    Pessoas_FJCOMPLEMENTO: TIBStringField;
    Pessoas_FJCEP: TIBStringField;
    Pessoas_FJFONE: TIBStringField;
    Pessoas_FJFAX: TIBStringField;
    Pessoas_FJCELULAR: TIBStringField;
    Pessoas_FJPESSOA: TIBStringField;
    Pessoas_FJCPF_CGC: TIBStringField;
    Pessoas_FJRG_IE: TIBStringField;
    Pessoas_FJCONTATO: TIBStringField;
    Pessoas_FJDT_NASCIMENTO: TDateTimeField;
    Pessoas_FJDT_CADASTRO: TDateTimeField;
    Pessoas_FJEMAIL: TIBStringField;
    Pessoas_FJOBS: TBlobField;
    SelAgrupador: TIBQuery;
    SelAgrupadorCODIGO: TIBStringField;
    SelAgrupadorNOME: TIBStringField;
    Aplicacoes: TIBDataSet;
    AplicacoesCODIGO: TIntegerField;
    AplicacoesNOME: TIBStringField;
    Produtos_Aplicacoes: TIBDataSet;
    Produtos_AplicacoesPRODUTO: TIBStringField;
    Produtos_AplicacoesAPLICACAO: TIntegerField;
    Produtos_AplicacoesLOCAL: TIBStringField;
    dsProdutos: TDataSource;
    Produtos_Similares: TIBDataSet;
    Produtos_SimilaresPRODUTO_A: TIBStringField;
    Produtos_SimilaresPRODUTO_B: TIBStringField;
    dsGrupos: TDataSource;
    Propriedades: TIBDataSet;
    dsPessoasFJ: TDataSource;
    PropriedadesPESSOA_FJ: TIntegerField;
    PropriedadesPROPRIEDADE: TIntegerField;
    PropriedadesNOME: TIBStringField;
    PropriedadesPROPRIETARIO: TIBStringField;
    PropriedadesIE: TIBStringField;
    PropriedadesENDERECO: TIntegerField;
    PropriedadesCOMPLEMENTO: TIBStringField;
    PropriedadesCIDADE: TIntegerField;
    PropriedadesUF: TIBStringField;
    PropriedadesCEP: TIBStringField;
    PropriedadesAREA_TOTAL: TIBStringField;
    PropriedadesOBS: TBlobField;
    Produtos_SimilaresNOME_SIMILAR: TStringField;
    SelSimilar: TIBQuery;
    SelSimilarCODIGO: TIBStringField;
    SelSimilarNOME: TIBStringField;
    AtividadesCNPJ: TIBStringField;
    Pessoas_FJCNPJ: TIBStringField;
    PropriedadesCNPJ: TIBStringField;
    LogradourosCNPJ: TIBStringField;
    BairrosCNPJ: TIBStringField;
    EstadosCNPJ: TIBStringField;
    Pessoas_FJATIVIDADE: TIntegerField;
    Pessoas_FJENDERECO: TIntegerField;
    Pessoas_FJBAIRRO: TIntegerField;
    Pessoas_FJCIDADE: TIntegerField;
    Pessoas_FJUF: TIBStringField;
    MarcasCNPJ: TIBStringField;
    GruposCNPJ: TIBStringField;
    SubgruposCNPJ: TIBStringField;
    UnidadesCNPJ: TIBStringField;
    NaturezaCNPJ: TIBStringField;
    ReducoesCNPJ: TIBStringField;
    AplicacoesCNPJ: TIBStringField;
    Produtos_AplicacoesCNPJ: TIBStringField;
    Produtos_SimilaresCNPJ: TIBStringField;
    Clientes: TIBDataSet;
    Fornecedores: TIBDataSet;
    ClientesCNPJ: TIBStringField;
    ClientesPESSOA_FJ: TIntegerField;
    ClientesREQUISICAO: TIBStringField;
    ClientesDIA_PREF_FAT: TIntegerField;
    ClientesCLASSIF: TIBStringField;
    ClientesLIMITE_TEMPO: TIntegerField;
    ClientesLIMITE_CREDITO: TFloatField;
    ClientesCOMPRADOR: TIBStringField;
    ClientesFONE: TIBStringField;
    ClientesCNPJ_VEND: TIBStringField;
    ClientesCOD_VEND: TIntegerField;
    ClientesCNPJ_FPAGTO: TIBStringField;
    ClientesCOD_FPAGTO: TIntegerField;
    ClientesREFERENCIAS: TBlobField;
    ClientesOBS: TBlobField;
    Formas_Pagto: TIBDataSet;
    Formas_PagtoCNPJ: TIBStringField;
    Formas_PagtoCODIGO: TIntegerField;
    Formas_PagtoNOME: TIBStringField;
    Formas_PagtoACRESCIMO: TFloatField;
    Formas_PagtoDESCONTO: TFloatField;
    Formas_PagtoNPARCELAS: TIntegerField;
    Formas_PagtoINTERVALO: TIntegerField;
    Formas_PagtoAVISTA: TIBStringField;
    Movimento: TIBDataSet;
    MovimentoCODIGO: TIntegerField;
    MovimentoBANCO: TIBStringField;
    MovimentoDOCUMENTO: TIBStringField;
    MovimentoDATA: TDateField;
    MovimentoDATA_CONCILIACAO: TDateField;
    MovimentoHISTORICO: TIBStringField;
    MovimentoTIPO: TIBStringField;
    MovimentoTIPO_LANCAMENTO: TIBStringField;
    MovimentoCOD_DOC: TIBStringField;
    MovimentoFORNECEDOR: TIntegerField;
    MovimentoPLANILHA: TIntegerField;
    MovimentoMES: TIntegerField;
    MovimentoANO: TIntegerField;
    MovimentoORIGEM: TIBStringField;
    MovimentoCONTRA_PARTIDA: TIntegerField;
    MovimentoCONTA: TIntegerField;
    MovimentoCNPJ: TIBStringField;
    Bancos: TIBDataSet;
    BancosCODIGO: TIBStringField;
    BancosNOME: TIBStringField;
    Tipo_DocumentoCNPJ: TIBStringField;
    Tipo_DocumentoSIGLA: TIBStringField;
    Movimento_Contabil: TIBDataSet;
    Movimento_ContabilCNPJ: TIBStringField;
    Movimento_ContabilCODIGO: TIntegerField;
    Movimento_ContabilDATA: TDateTimeField;
    Movimento_ContabilTIPO: TIBStringField;
    Movimento_ContabilDOCUMENTO: TIBStringField;
    Movimento_ContabilHISTORICO: TIBStringField;
    Movimento_ContabilMES: TIntegerField;
    Movimento_ContabilANO: TIntegerField;
    Movimento_ContabilVALOR: TFloatField;
    Movimento_ContabilCONTA: TIntegerField;
    Movimento_ContabilORIGEM: TIBStringField;
    Movimento_ContabilPLANILHA: TIntegerField;
    Movimento_ContabilCONTRA_PARTIDA: TIntegerField;
    Movimento_ContabilBANCO: TIBStringField;
    Movimento_ContabilDATA_CONCILIACAO: TDateTimeField;
    Movimento_ContabilTIPO_LANCAMENTO: TIBStringField;
    Movimento_ContabilCOD_DOC: TIBStringField;
    Movimento_ContabilFORNECEDOR: TIntegerField;
    Movimento_ContabilConta_D: TStringField;
    Movimento_ContabilConta_C: TStringField;
    Vendedores: TIBDataSet;
    VendedoresCNPJ: TIBStringField;
    VendedoresCODIGO: TIntegerField;
    VendedoresNOME: TIBStringField;
    VendedoresCOM_VISTA: TFloatField;
    VendedoresCOM_PRAZO: TFloatField;
    VendedoresPESSOA_FJ: TIntegerField;
    Terceiros: TIBDataSet;
    TerceirosCNPJ: TIBStringField;
    TerceirosCODIGO: TIntegerField;
    TerceirosCOM_PRAZO: TFloatField;
    TerceirosCOM_VISTA: TFloatField;
    TerceirosNOME: TIBStringField;
    TerceirosPESSOA_FJ: TIntegerField;
    ClientesULT_VENDEDOR: TIntegerField;
    UnidadesSIGLA: TIBStringField;
    Pessoas_FJINSC_MUNIC: TIBStringField;
    ClientesBLOQUEADO: TIBStringField;
    ClientesFREQUENCIA: TIBStringField;
    Subgrupos_Cotas: TIBDataSet;
    SelVendedor: TIBQuery;
    SelVendedorPESSOA_FJ: TIntegerField;
    SelVendedorNOME: TIBStringField;
    Geral: TIBQuery;
    Motoristas: TIBDataSet;
    Rotas: TIBDataSet;
    Rotas_Cidades: TIBDataSet;
    Veiculos: TIBDataSet;
    Cargas: TIBDataSet;
    dsRotas: TDataSource;
    MotoristasCNPJ: TIBStringField;
    MotoristasPESSOA_FJ: TIntegerField;
    MotoristasNOME: TIBStringField;
    MotoristasN_CNH: TIBStringField;
    MotoristasT_CNH: TIBStringField;
    RotasCNPJ: TIBStringField;
    RotasCODIGO: TIntegerField;
    RotasNOME: TIBStringField;
    RotasVENDEDOR: TIntegerField;
    VeiculosCNPJ: TIBStringField;
    VeiculosPLACA: TIBStringField;
    VeiculosDESCRICAO: TIBStringField;
    VeiculosKM: TFloatField;
    Rotas_CidadesCNPJ: TIBStringField;
    Rotas_CidadesROTA: TIntegerField;
    Rotas_CidadesCIDADE: TIntegerField;
    SelCidades: TIBQuery;
    SelCidadesCODIGO: TIntegerField;
    SelCidadesNOME: TIBStringField;
    Rotas_CidadesNOME_CIDADE: TIBStringField;
    CargasCNPJ: TIBStringField;
    CargasCODIGO: TIntegerField;
    CargasMOTORISTA: TIntegerField;
    CargasVEICULO: TIBStringField;
    CargasROTA: TIntegerField;
    CargasKM_SAIDA: TFloatField;
    CargasKM_CHEGADA: TFloatField;
    CargasDATA_SAIDA: TDateTimeField;
    CargasDATA_CHEGADA: TDateTimeField;
    CargasPESO: TFloatField;
    CargasVOLUME: TFloatField;
    SelPessoas: TIBQuery;
    SelPessoasCODIGO: TIntegerField;
    SelPessoasNOME_RAZAO: TIBStringField;
    Transportadores: TIBDataSet;
    TransportadoresCNPJ: TIBStringField;
    TransportadoresPESSOA_FJ: TIntegerField;
    TransportadoresNOME: TIBStringField;
    Serie: TIBDataSet;
    Funcionarios: TIBDataSet;
    FuncionariosCNPJ: TIBStringField;
    FuncionariosPESSOA_FJ: TIntegerField;
    FuncionariosDT_ADMISSAO: TDateTimeField;
    FuncionariosCARGO: TIBStringField;
    FuncionariosCTPS: TIBStringField;
    FuncionariosSERIE: TIBStringField;
    FuncionariosOBS: TBlobField;
    Pessoas_FJCONVENIO: TIntegerField;
    SelVendedorCODIGO: TIntegerField;
    Classificacoes: TIBDataSet;
    ClassificacoesCNPJ: TIBStringField;
    ClassificacoesCODIGO: TIntegerField;
    ClassificacoesNOME: TIBStringField;
    ClassificacoesDIG_SENHA: TIBStringField;
    ClientesLOCAL_TRABALHO: TIBStringField;
    ClientesFONE_TRABALHO: TIBStringField;
    ClientesRAMAL_FONE_TRAB: TIBStringField;
    ClientesCEP_TRABALHO: TIBStringField;
    ClientesATIVIDADE: TIntegerField;
    ClientesPAI: TIBStringField;
    ClientesMAE: TIBStringField;
    ClientesCONJUGE: TIBStringField;
    ClientesDT_NASC_CONJUGE: TDateTimeField;
    ClientesLOCAL_TRAB_CONJUGE: TIBStringField;
    ClientesFONE_LOCAL_CONJUGE: TIBStringField;
    ClientesRAMAL_LOCAL_CONJUGE: TIBStringField;
    ClientesRENDA_MENSAL: TFloatField;
    SubUnidades: TIBDataSet;
    DsSubUnidades: TDataSource;
    SubUnidadesCNPJ: TIBStringField;
    SubUnidadesSIGLA: TIBStringField;
    SubUnidadesUNIDADES: TIntegerField;
    ClientesTEMPO_SERVICO: TIBStringField;
    ClientesTEMPO_SERV_CONJUGE: TIBStringField;
    ClientesPRAZO: TIntegerField;
    ClientesCNPJ_CLASSIF: TIBStringField;
    ClientesCOD_CLASSIF: TIntegerField;
    VendedoresSENHA: TIBStringField;
    BoletoBancario: TIBDataSet;
    BoletoBancarioCNPJ: TIBStringField;
    BoletoBancarioACEITE_ALT: TIntegerField;
    BoletoBancarioACEITE_DST: TIntegerField;
    BoletoBancarioBANCO: TIBStringField;
    BoletoBancarioDATA_ALT: TIntegerField;
    BoletoBancarioDATA_DST: TIntegerField;
    BoletoBancarioDOCUMENTO_ALT: TIntegerField;
    BoletoBancarioDOCUMENTO_DST: TIntegerField;
    BoletoBancarioDTPROCESSAMENTO_ALT: TIntegerField;
    BoletoBancarioDTPROCESSAMENTO_DST: TIntegerField;
    BoletoBancarioESPECIE_ALT: TIntegerField;
    BoletoBancarioESPECIE_DST: TIntegerField;
    BoletoBancarioINSTRUCOES_ALT: TIntegerField;
    BoletoBancarioINSTRUCOES_DST: TIntegerField;
    BoletoBancarioSACADO_ALT: TIntegerField;
    BoletoBancarioSACADO_DST: TIntegerField;
    BoletoBancarioVALOR_ALT: TIntegerField;
    BoletoBancarioVALOR_DST: TIntegerField;
    BoletoBancarioVENCIMENTO_ALT: TIntegerField;
    BoletoBancarioVENCIMENTO_DST: TIntegerField;
    BoletoBancarioTAMANHOPAGINA: TIntegerField;
    BancosBOLETO: TIntegerField;
    Centro_CustoCNPJ: TIBStringField;
    Centro_CustoCODIGO: TIntegerField;
    Centro_CustoNOME: TIBStringField;
    Agrupadores: TIBDataSet;
    AgrupadoresCNPJ: TIBStringField;
    AgrupadoresCODIGO: TIBStringField;
    AgrupadoresCODIGO_2: TIBStringField;
    AgrupadoresCNPJ_AGRUP: TIBStringField;
    AgrupadoresCOD_AGRUP: TIBStringField;
    AgrupadoresNOME: TIBStringField;
    AlteraPessoas_FJ: TIBDataSet;
    AlteraPessoas_FJCNPJ: TIBStringField;
    AlteraPessoas_FJCODIGO: TIntegerField;
    AlteraPessoas_FJNOME_RAZAO: TIBStringField;
    AlteraPessoas_FJFANTASIA: TIBStringField;
    AlteraPessoas_FJATIVIDADE: TIntegerField;
    AlteraPessoas_FJENDERECO: TIntegerField;
    AlteraPessoas_FJNUMERO: TIBStringField;
    AlteraPessoas_FJCOMPLEMENTO: TIBStringField;
    AlteraPessoas_FJBAIRRO: TIntegerField;
    AlteraPessoas_FJCIDADE: TIntegerField;
    AlteraPessoas_FJUF: TIBStringField;
    AlteraPessoas_FJCEP: TIBStringField;
    AlteraPessoas_FJFONE: TIBStringField;
    AlteraPessoas_FJFAX: TIBStringField;
    AlteraPessoas_FJCELULAR: TIBStringField;
    AlteraPessoas_FJPESSOA: TIBStringField;
    AlteraPessoas_FJINSC_MUNIC: TIBStringField;
    AlteraPessoas_FJCPF_CGC: TIBStringField;
    AlteraPessoas_FJRG_IE: TIBStringField;
    AlteraPessoas_FJDT_NASCIMENTO: TDateTimeField;
    AlteraPessoas_FJDT_CADASTRO: TDateTimeField;
    AlteraPessoas_FJEMAIL: TIBStringField;
    AlteraPessoas_FJOBS: TBlobField;
    AlteraPessoas_FJCONVENIO: TIntegerField;
    Tipo_Veiculo: TIBDataSet;
    Tipo_VeiculoCNPJ: TIBStringField;
    Tipo_VeiculoCODIGO: TIntegerField;
    Tipo_VeiculoNOME: TIBStringField;
    Marca_Veiculo: TIBDataSet;
    Marca_VeiculoCNPJ: TIBStringField;
    Marca_VeiculoCODIGO: TIntegerField;
    Marca_VeiculoNOME: TIBStringField;
    Veiculo: TIBDataSet;
    VeiculoCNPJ: TIBStringField;
    VeiculoCODIGO: TIntegerField;
    VeiculoPESSOA_FJ: TIntegerField;
    VeiculoTIPO_VEICULO: TIntegerField;
    VeiculoMARCA_VEICULO: TIntegerField;
    VeiculoMODELO: TIBStringField;
    PropriedadesNUMERO: TIBStringField;
    PropriedadesBAIRRO: TIntegerField;
    VeiculoPLACA: TIBStringField;
    VeiculoKM_ATUAL: TFloatField;
    SelPessoasFJ: TIBQuery;
    SelPessoasFJCODIGO: TIntegerField;
    SelPessoasFJPESSOA_FJ: TIntegerField;
    SelPessoasFJNOME_RAZAO: TIBStringField;
    SelPessoasFJFONE: TIBStringField;
    SelPessoasFJFANTASIA: TIBStringField;
    SelPessoasFJCPF_CGC: TIBStringField;
    SelPessoasFJBLOQUEADO: TIBStringField;
    SelPessoasFJCLASSIFICACAO: TIBStringField;
    SelPessoasFJUF: TIBStringField;
    SelPessoasFJEMPRESA: TIBStringField;
    ClientesPERIODO_FATURAMENTO: TIBStringField;
    ClientesTOLERANCIA_FATURAMENTO: TIntegerField;
    ClientesAJUSTE_AUT_FATURAS: TIBStringField;
    ClientesTAXA_JUROS: TFloatField;
    ClientesMEDIA_COMPRAS_MES: TIntegerField;
    Altera_Propriedade: TIBDataSet;
    Altera_PropriedadeAREA_TOTAL: TIBStringField;
    Altera_PropriedadeBAIRRO: TIntegerField;
    Altera_PropriedadeCEP: TIBStringField;
    Altera_PropriedadeCIDADE: TIntegerField;
    Altera_PropriedadeCNPJ: TIBStringField;
    Altera_PropriedadeCOMPLEMENTO: TIBStringField;
    Altera_PropriedadeENDERECO: TIntegerField;
    Altera_PropriedadeIE: TIBStringField;
    Altera_PropriedadeNOME: TIBStringField;
    Altera_PropriedadeNUMERO: TIBStringField;
    Altera_PropriedadeOBS: TBlobField;
    Altera_PropriedadePESSOA_FJ: TIntegerField;
    Altera_PropriedadePROPRIEDADE: TIntegerField;
    Altera_PropriedadePROPRIETARIO: TIBStringField;
    Altera_PropriedadeUF: TIBStringField;
    Altera_PropriedadeNome_End: TStringField;
    SelFornecedor: TIBQuery;
    SelFornecedorPESSOA_FJ: TIntegerField;
    SelFornecedorNOME_RAZAO: TIBStringField;
    SelFornecedorFONE: TIBStringField;
    SelFornecedorFANTASIA: TIBStringField;
    SelFornecedorCPF_CGC: TIBStringField;
    SelFornecedorEMPRESA: TIBStringField;
    SelFornecedorCODIGO: TIntegerField;
    SelFornecedorUF: TIBStringField;
    Formas_PagtoFATURA_FUTURA: TIBStringField;
    Contas_Pessoas: TIBDataSet;
    Contas_PessoasAGENCIA: TIBStringField;
    Contas_PessoasBANCO: TIBStringField;
    Contas_PessoasCNPJ: TIBStringField;
    Contas_PessoasCONTA: TIBStringField;
    Contas_PessoasPESSOA_FJ: TIntegerField;
    Centro_CustoAGRUPADOR: TIntegerField;
    SelCentroCusto: TIBQuery;
    SelCentroCustoAGRUPADOR: TIntegerField;
    SelCentroCustoCNPJ: TIBStringField;
    SelCentroCustoCODIGO: TIntegerField;
    SelCentroCustoNOME: TIBStringField;
    Lote: TIBDataSet;
    LoteCNPJ: TIBStringField;
    LoteCODIGO: TIntegerField;
    LoteESTOQUE: TFloatField;
    LoteLOTE: TIBStringField;
    LotePRODUTO: TIBStringField;
    LotePENEIRA: TIBStringField;
    LoteATESTADO: TIBStringField;
    LoteGERMINACAO: TFloatField;
    LotePUREZA: TFloatField;
    LoteVALIDADE: TDateTimeField;
    Valida_Produto: TIBStoredProc;
    LoteDT_ULTIMA_COMPRA: TDateTimeField;
    LoteDT_ULTIMA_VENDA: TDateTimeField;
    ClientesNAO_COBR_JUR_ATE: TIntegerField;
    EstadosMASCARA_IE: TIBStringField;
    Formas_PagtoFORMA_ECF: TIBStringField;
    Formas_PagtoTIPO_PAGAMENTO: TIBStringField;
    ClientesASSINA_NOTA: TIBStringField;
    ClientesCONTROLA_PLACA: TIBStringField;
    ClientesCONTROLA_KM: TIBStringField;
    VeiculoCOMBUSTIVEL: TIBStringField;
    VeiculoMEDIA_KM: TFloatField;
    ReducoesMENSAGEM_NF_IE: TIBStringField;
    NotaPromissoria: TIBDataSet;
    NotaPromissoriaCNPJ: TIBStringField;
    NotaPromissoriaDATA_ALT: TIntegerField;
    NotaPromissoriaDATA_DST: TIntegerField;
    NotaPromissoriaDOCUMENTO_ALT: TIntegerField;
    NotaPromissoriaDOCUMENTO_DST: TIntegerField;
    NotaPromissoriaEXTENSO_ALT: TIntegerField;
    NotaPromissoriaEXTENSO_DST: TIntegerField;
    NotaPromissoriaINSTRUCOES_ALT: TIntegerField;
    NotaPromissoriaINSTRUCOES_DST: TIntegerField;
    NotaPromissoriaLPP: TIntegerField;
    NotaPromissoriaPARCELA1_ALT: TIntegerField;
    NotaPromissoriaPARCELA1_DST: TIntegerField;
    NotaPromissoriaPARCELA2_ALT: TIntegerField;
    NotaPromissoriaPARCELA2_DST: TIntegerField;
    NotaPromissoriaSACADO1_ALT: TIntegerField;
    NotaPromissoriaSACADO1_DST: TIntegerField;
    NotaPromissoriaSACADO2_ALT: TIntegerField;
    NotaPromissoriaSACADO2_DST: TIntegerField;
    NotaPromissoriaTAMANHOPAGINA: TIntegerField;
    NotaPromissoriaVALOR1_ALT: TIntegerField;
    NotaPromissoriaVALOR1_DST: TIntegerField;
    NotaPromissoriaVALOR2_ALT: TIntegerField;
    NotaPromissoriaVALOR2_DST: TIntegerField;
    NotaPromissoriaVENCIMENTO1_ALT: TIntegerField;
    NotaPromissoriaVENCIMENTO1_DST: TIntegerField;
    NotaPromissoriaVENCIMENTO2_ALT: TIntegerField;
    NotaPromissoriaVENCIMENTO2_DST: TIntegerField;
    NotaPromissoriaVENDA1_ALT: TIntegerField;
    NotaPromissoriaVENDA1_DST: TIntegerField;
    NotaPromissoriaVENDA2_ALT: TIntegerField;
    NotaPromissoriaVENDA2_DST: TIntegerField;
    Pessoas_FJEMISSOR: TIBStringField;
    ClientesENDERECO_TRABALHO: TIntegerField;
    ClientesENDERECO_PAIS: TIntegerField;
    ClientesCIDADE_PAIS: TIntegerField;
    ClientesADMISSAO: TDateTimeField;
    ClientesADMISSAO_CONJUGE: TDateTimeField;
    Indicados: TIBQuery;
    IndicadosINDICADO: TIntegerField;
    IndicadosPORCENTAGEM: TIBBCDField;
    IndicadosNOME: TIBStringField;
    IndicadosINICIO: TDateTimeField;
    Subgrupos_CotasGRUPO: TIntegerField;
    Subgrupos_CotasSUBGRUPO: TIntegerField;
    Subgrupos_CotasVENDEDOR: TIntegerField;
    Subgrupos_CotasVALOR: TFloatField;
    Subgrupos_CotasCOMISSAO_VISTA: TFloatField;
    Subgrupos_CotasCOMISSAO_PRAZO: TFloatField;
    Ver_Cotas: TIBQuery;
    Subgrupos_CotasCNPJ: TIBStringField;
    DsVendedores: TDataSource;
    SelVendedorCNPJ: TIBStringField;
    Ver_CotasGRUPO: TIntegerField;
    Ver_CotasSUBGRUPO: TIntegerField;
    Ver_CotasNOME_GRUPO: TIBStringField;
    Ver_CotasNOME_SUBGRUPO: TIBStringField;
    Ver_CotasVALOR: TIBBCDField;
    Ver_CotasCOMISSAO_VISTA: TIBBCDField;
    Ver_CotasCOMISSAO_PRAZO: TIBBCDField;
    Cidades: TIBDataSet;
    CidadesCNPJ: TIBStringField;
    CidadesCODIGO: TIntegerField;
    CidadesNOME: TIBStringField;
    CidadesUF: TIBStringField;
    BoletoBancarioCIDADE_DST: TIntegerField;
    BoletoBancarioCIDADE_ALT: TIntegerField;
    BoletoBancarioPORTA_IMPRESSORA: TIBStringField;
    ClientesNUMERO_TRABALHO: TIBStringField;
    Contas_PessoasDV_AGENCIA: TIBStringField;
    Contas_PessoasDV_CONTA: TIBStringField;
    SubgruposCOMPRAS_C: TIntegerField;
    SubgruposCOMPRAS_D: TIntegerField;
    SubgruposTRANSFERENCIA_C: TIntegerField;
    SubgruposTRANSFERENCIA_D: TIntegerField;
    SubgruposVENDAS_C: TIntegerField;
    SubgruposVENDAS_D: TIntegerField;
    Precos_Especiais: TIBDataSet;
    Precos_EspeciaisCNPJ: TIBStringField;
    Precos_EspeciaisPESSOA_FJ: TIntegerField;
    Precos_EspeciaisPORCENTAGEM: TFloatField;
    Precos_EspeciaisPRODUTO: TIBStringField;
    Precos_EspeciaisORIGINAL: TFloatField;
    Precos_EspeciaisRESULTADO: TFloatField;
    Pessoas_FJCODIGO: TIntegerField;
    Transportadoras: TIBDataSet;
    TransportadorasCNPJ: TIBStringField;
    TransportadorasCODIGO: TIntegerField;
    TransportadorasNOME: TIBStringField;
    VeiculoATIVO: TIBStringField;
    VeiculoMOTORISTA: TIBStringField;
    Mecanicos: TIBDataSet;
    MecanicosCNPJ: TIBStringField;
    MecanicosCODIGO: TIntegerField;
    MecanicosCOM_PRAZO: TFloatField;
    MecanicosCOM_VISTA: TFloatField;
    MecanicosNOME: TIBStringField;
    MecanicosPESSOA_FJ: TIntegerField;
    MecanicosSENHA: TIBStringField;
    Viajante: TIBDataSet;
    ViajanteCNPJ: TIBStringField;
    ViajanteCODIGO: TIntegerField;
    ViajanteCOM_PRAZO: TFloatField;
    ViajanteCOM_VISTA: TFloatField;
    ViajanteNOME: TIBStringField;
    ViajantePESSOA_FJ: TIntegerField;
    ViajanteSENHA: TIBStringField;
    ClientesLIMITE_RETIRADAS_DIARIA: TFloatField;
    ClientesVALOR_MAXIMO_RETIRADA: TFloatField;
    Agrupador: TIBDataSet;
    AgrupadorCNPJ: TIBStringField;
    AgrupadorNOME: TIBStringField;
    AgrupadorCODIGO: TIBStringField;
    ClientesNUMERO_PAIS: TIBStringField;
    BoletoBancarioLPP: TIntegerField;
    NotaPromissoriaVECTO_EXT_DST: TIntegerField;
    NotaPromissoriaVECTO_EXT_ALT: TIntegerField;
    NotaPromissoriaEMPRESA_DST: TIntegerField;
    NotaPromissoriaEMPRESA_ALT: TIntegerField;
    NotaPromissoriaEMPRESA: TIBStringField;
    UnidadesUNIDADES: TFloatField;
    NotaPromissoriaPORTA: TIBStringField;
    ClientesTMP_SERVICO: TStringField;
    VENDEDOR_FAIXA: TIBDataSet;
    VENDEDOR_FAIXACNPJ: TIBStringField;
    VENDEDOR_FAIXACODIGO: TIntegerField;
    VENDEDOR_FAIXAPRAZO: TFloatField;
    VENDEDOR_FAIXAVALOR: TFloatField;
    VENDEDOR_FAIXAVISTA: TFloatField;
    DsVendedor: TDataSource;
    PropriedadesATIVA: TIBStringField;
    SubgruposESTOQUE: TIntegerField;
    SubgruposESTOQUE_INI: TIntegerField;
    SubgruposESTOQUE_FIM: TIntegerField;
    Centro_CustoTIPO_CENTRO: TIBStringField;
    ClientesCHEQUE: TIBStringField;
    Cor: TIBDataSet;
    CorCNPJ: TIBStringField;
    CorCODIGO: TIntegerField;
    CorNOME: TIBStringField;
    Material: TIBDataSet;
    MaterialCNPJ: TIBStringField;
    MaterialCODIGO: TIntegerField;
    MaterialNOME: TIBStringField;
    Grades: TIBDataSet;
    GradesCNPJ: TIBStringField;
    GradesPRODUTO: TIBStringField;
    GradesMATERIAL: TIntegerField;
    GradesCOR: TIntegerField;
    GradesULTIMA_COMPRA: TDateTimeField;
    GradesQTDADE_COMPRA: TFloatField;
    GradesULTIMA_VENDA: TDateTimeField;
    GradesQTDADE_VENDA: TFloatField;
    GradesESTOQUE: TFloatField;
    VendedoresATIVO: TIBStringField;
    Formas_PagtoATIVO: TIBStringField;
    GRADES_NUMEROS: TIBDataSet;
    GRADES_NUMEROSCNPJ: TIBStringField;
    GRADES_NUMEROSPRODUTO: TIBStringField;
    DsGrade: TDataSource;
    GradesNOME_MATERIAL: TIBStringField;
    GradesNOME_COR: TIBStringField;
    Perfil_Grades: TIBDataSet;
    Perfil_GradesCNPJ: TIBStringField;
    Perfil_GradesCODIGO: TIntegerField;
    Perfil_GradesNOME: TIBStringField;
    Perfil_GradesINICIAL: TIntegerField;
    Perfil_GradesFINAL: TIntegerField;
    GradesPERFIL: TIntegerField;
    GradesNOME_PERFIL: TIBStringField;
    GRADES_NUMEROSESTOQUE: TFloatField;
    Carta_Garantia: TIBDataSet;
    Carta_GarantiaCNPJ: TIBStringField;
    Carta_GarantiaCODIGO: TIntegerField;
    Carta_GarantiaNOME: TIBStringField;
    Carta_GarantiaTEXTO: TBlobField;
    NaturezaATIVA: TIBStringField;
    NotaPromissoriaCODIGO_DST: TIntegerField;
    NotaPromissoriaCODIGO_ALT: TIntegerField;
    NotaPromissoriaCODIGO2_DST: TIntegerField;
    NotaPromissoriaCODIGO2_ALT: TIntegerField;
    NotaPromissoriaDATA2_DST: TIntegerField;
    NotaPromissoriaDATA2_ALT: TIntegerField;
    NotaPromissoriaTAMANHO_NOME: TIntegerField;
    NotaPromissoriaDATA3_DST: TIntegerField;
    NotaPromissoriaDATA3_ALT: TIntegerField;
    Perfil_Grades_Adicional: TIBDataSet;
    Perfil_Grades_AdicionalCNPJ: TIBStringField;
    Perfil_Grades_AdicionalCODIGO: TIBStringField;
    Perfil_Grades_AdicionalGRADE: TIntegerField;
    DsPerfil_Grade: TDataSource;
    GRADES_NUMEROSNUMERO: TIBStringField;
    Perfil_GradesINTERVALO: TIntegerField;
    Pessoas_FJORDEM: TIntegerField;
    SelPessoasFJORDEM: TIntegerField;
    TransportadorasPLACA: TIBStringField;
    TransportadorasUF: TIBStringField;
    TransportadorasCPF_CNPJ: TIBStringField;
    TransportadorasENDERECO: TIBStringField;
    TransportadorasCIDADE: TIBStringField;
    TransportadorasIE: TIBStringField;
    Perfil_Grades_AdicionalORDEM: TIntegerField;
    GradesGRADE: TIBStringField;
    GRADES_NUMEROSGRADE: TIBStringField;
    ClientesALIQUOTA_DESCONTO: TFloatField;
    BancosGERA_ARQUIVO_MAGNETICO: TIBStringField;
    Contratos: TIBDataSet;
    ContratosCNPJ: TIBStringField;
    ContratosCODIGO: TIntegerField;
    ContratosNOME: TIBStringField;
    PropriedadesTIPO_CONTRATO: TIntegerField;
    SelPropriedades: TIBQuery;
    SelPropriedadesNOME: TIBStringField;
    SelPropriedadesPROPRIETARIO: TIBStringField;
    SelPropriedadesIE: TIBStringField;
    SelPropriedadesENDERECO: TIBStringField;
    SelPropriedadesCOMPLEMENTO: TIBStringField;
    SelPropriedadesCIDADE: TIBStringField;
    SelPropriedadesNUMERO: TIBStringField;
    SelPropriedadesBAIRRO: TIBStringField;
    SelPropriedadesUF: TIBStringField;
    SelPropriedadesCEP: TIBStringField;
    SelPropriedadesAREA_TOTAL: TIBStringField;
    SelPropriedadesOBS: TBlobField;
    SelPropriedadesATIVA: TIBStringField;
    SelPropriedadesTIPO_CONTRATO: TIntegerField;
    SelPropriedadesNOME_CONTRATO: TIBStringField;
    SelPropriedadesPESSOA_FJ: TIntegerField;
    ClientesOPTANTE_SIMPLES: TIBStringField;
    Centro_CustoEXCLUI_DEMOSTRATIVO_FINANCEIRO: TIBStringField;
    Modelo_Propriedade: TIBDataSet;
    Modelo_PropriedadeCNPJ: TIBStringField;
    Modelo_PropriedadeCODIGO: TIntegerField;
    Modelo_PropriedadeNOME: TIBStringField;
    PropriedadesMODELO: TIntegerField;
    PropriedadesGARANTIA: TDateTimeField;
    ClientesCONS_REV: TIBStringField;
    PropriedadesCPF: TIBStringField;
    Produtos_Tributacao: TIBDataSet;
    Produtos_TributacaoCNPJ: TIBStringField;
    Produtos_TributacaoCTE: TIntegerField;
    Produtos_TributacaoCTIE: TIntegerField;
    Produtos_TributacaoPRODUTO: TIBStringField;
    GRADES_NUMEROSORDEM: TIntegerField;
    ClientesSENHA_PDV: TIBStringField;
    NotaPromissoriaIMPRIME_TOTALIZADOR: TIBStringField;
    NotaPromissoriaDESCRICAO_CANHOTO: TIBStringField;
    NotaPromissoriaVENDEDOR_DST: TIntegerField;
    NotaPromissoriaVENDEDOR_ALT: TIntegerField;
    NotaPromissoriaVENDEDOR1_DST: TIntegerField;
    NotaPromissoriaVENDEDOR1_ALT: TIntegerField;
    NotaPromissoriaMENSAGEM_NP: TIBStringField;
    NotaPromissoriaMENSAGEM_DST: TIntegerField;
    NotaPromissoriaMENSAGEM_ALT: TIntegerField;
    SelPessoasFJENDERECO: TIBStringField;
    NaturezaTTL_RES_DIVERSOS: TIBStringField;
    dsEdtSerieNF: TDataSource;
    EdtSerieNF: TIBDataSet;
    EdtSerieNFCNPJ: TIBStringField;
    EdtSerieNFCONFIG_SERIE_NF: TMemoField;
    BancosPADRAO_BOLETO: TIBStringField;
    Tipo_DocumentoBLT: TIBStringField;
    ReducoesPERC_CONTRIBUINTE: TFloatField;
    edtCT13: TIBDataSet;
    dsEdtCT13: TDataSource;
    edtCT13CONFIG_CT13: TMemoField;
    edtCT13CNPJ: TIBStringField;
    ClientesSUB_TRIBUTARIO: TIBStringField;
    edtServicoNF: TIBDataSet;
    dsEdtServicoNF: TDataSource;
    edtServicoNFCNPJ: TIBStringField;
    edtServicoNFCONFIG_NF_SERV: TMemoField;
    ClientesRET_PIS: TIBStringField;
    ClientesRET_INSS: TIBStringField;
    ClientesRET_IRRF: TIBStringField;
    edtFornecedores: TIBDataSet;
    edtFornecedoresCNPJ: TIBStringField;
    edtFornecedoresCODIGO: TIntegerField;
    edtFornecedoresNOME_RAZAO: TIBStringField;
    edtFornecedoresFANTASIA: TIBStringField;
    edtFornecedoresATIVIDADE: TIntegerField;
    edtFornecedoresENDERECO: TIntegerField;
    edtFornecedoresNUMERO: TIBStringField;
    edtFornecedoresCOMPLEMENTO: TIBStringField;
    edtFornecedoresBAIRRO: TIntegerField;
    edtFornecedoresCIDADE: TIntegerField;
    edtFornecedoresUF: TIBStringField;
    edtFornecedoresCEP: TIBStringField;
    edtFornecedoresFONE: TIBStringField;
    edtFornecedoresFAX: TIBStringField;
    edtFornecedoresCELULAR: TIBStringField;
    edtFornecedoresPESSOA: TIBStringField;
    edtFornecedoresCPF_CGC: TIBStringField;
    edtFornecedoresRG_IE: TIBStringField;
    edtFornecedoresCONTATO: TIBStringField;
    edtFornecedoresDT_NASCIMENTO: TDateTimeField;
    edtFornecedoresDT_CADASTRO: TDateTimeField;
    edtFornecedoresEMAIL: TIBStringField;
    edtFornecedoresOBS: TBlobField;
    edtFornecedoresINSC_MUNIC: TIBStringField;
    edtFornecedoresCONVENIO: TIntegerField;
    edtFornecedoresEMISSOR: TIBStringField;
    edtFornecedoresORDEM: TIntegerField;
    dsPessoaForn: TDataSource;
    dsEdtFornecedores: TDataSource;
    Mesas: TIBDataSet;
    MesasCNPJ: TIBStringField;
    MesasCODIGO: TIntegerField;
    MesasCODIGO_2: TIBStringField;
    MesasATIVO: TIBStringField;
    lstEstados: TIBQuery;
    lstEstadosSIGLA: TIBStringField;
    lstEstadosNOME: TIBStringField;
    Centro_CustoCMV: TIBStringField;
    NaturezaTTL_RES_BONIFICACAO: TIBStringField;
    BancosCONFIG_CH: TBlobField;
    Regioes: TIBDataSet;
    RegioesCNPJ: TIBStringField;
    RegioesCODIGO: TIntegerField;
    RegioesNOME: TIBStringField;
    RegioesVENDEDOR: TIntegerField;
    RegioesTERCEIRO: TIntegerField;
    RegioesDESCRICAO: TIBStringField;
    Pessoas_FJREGIAO: TIntegerField;
    LotePESO: TFloatField;
    SerieCNPJ: TIBStringField;
    SerieSERIE: TIBStringField;
    SerieULTIMO_NUMERO: TIntegerField;
    SerieTIPO: TIBStringField;
    SerieNOTA_NUM_DST: TIntegerField;
    SerieNOTA_NUM_ALT: TIntegerField;
    SerieNOTA_NUMRECIBO_DST: TIntegerField;
    SerieNOTA_NUMRECIBO_ALT: TIntegerField;
    SerieNOTA_ENT_SAI_DST: TIntegerField;
    SerieNOTA_ENT_SAI_ALT: TIntegerField;
    SerieNOTA_NATUREZA_DST: TIntegerField;
    SerieNOTA_NATUREZA_ALT: TIntegerField;
    SerieNOTA_CFOP_DST: TIntegerField;
    SerieNOTA_CFOP_ALT: TIntegerField;
    SerieNOTA_SUBS_TRIB_DST: TIntegerField;
    SerieNOTA_SUBS_TRIB_ALT: TIntegerField;
    SerieNOTA_CNDPG_DST: TIntegerField;
    SerieNOTA_CNDPG_ALT: TIntegerField;
    SerieCLI_NOME_DST: TIntegerField;
    SerieCLI_NOME_ALT: TIntegerField;
    SerieCLI_CGCCPF_DST: TIntegerField;
    SerieCLI_CGCCPF_ALT: TIntegerField;
    SerieCLI_END_DST: TIntegerField;
    SerieCLI_END_ALT: TIntegerField;
    SerieCLI_BAIRRO_DST: TIntegerField;
    SerieCLI_BAIRRO_ALT: TIntegerField;
    SerieCLI_CEP_DST: TIntegerField;
    SerieCLI_CEP_ALT: TIntegerField;
    SerieCLI_CID_DST: TIntegerField;
    SerieCLI_CID_ALT: TIntegerField;
    SerieCLI_FONE_DST: TIntegerField;
    SerieCLI_FONE_ALT: TIntegerField;
    SerieCLI_FAX_DST: TIntegerField;
    SerieCLI_FAX_ALT: TIntegerField;
    SerieCLI_UF_DST: TIntegerField;
    SerieCLI_UF_ALT: TIntegerField;
    SerieCLI_INSCEST_DST: TIntegerField;
    SerieCLI_INSCEST_ALT: TIntegerField;
    SerieCLI_DATEMIS_DST: TIntegerField;
    SerieCLI_DATEMIS_ALT: TIntegerField;
    SerieCLI_DATENTSAI_DST: TIntegerField;
    SerieCLI_DATENTSAI_ALT: TIntegerField;
    SerieCLI_HORASAI_DST: TIntegerField;
    SerieCLI_HORASAI_ALT: TIntegerField;
    SerieCLI_PEDNUM_DST: TIntegerField;
    SerieCLI_PEDNUM_ALT: TIntegerField;
    SerieCLI_INSCMUN_DST: TIntegerField;
    SerieCLI_INSCMUN_ALT: TIntegerField;
    SerieCLI_DUPLNUM_DST: TIntegerField;
    SerieCLI_DUPLNUM_ALT: TIntegerField;
    SerieCLI_DUPLVENC_DST: TIntegerField;
    SerieCLI_DUPLVENC_ALT: TIntegerField;
    SerieCLI_DUPLVALOR_DST: TIntegerField;
    SerieCLI_DUPLVALOR_ALT: TIntegerField;
    SeriePROD_COD_DST: TIntegerField;
    SeriePROD_COD_ALT: TIntegerField;
    SeriePROD_PROD_DST: TIntegerField;
    SeriePROD_PROD_ALT: TIntegerField;
    SeriePROD_CF_DST: TIntegerField;
    SeriePROD_CF_ALT: TIntegerField;
    SeriePROD_SITTRIB_DST: TIntegerField;
    SeriePROD_SITTRIB_ALT: TIntegerField;
    SeriePROD_UNIDADE_DST: TIntegerField;
    SeriePROD_UNIDADE_ALT: TIntegerField;
    SeriePROD_QUANT_DST: TIntegerField;
    SeriePROD_QUANT_ALT: TIntegerField;
    SeriePROD_VALORUNIT_DST: TIntegerField;
    SeriePROD_VALORUNIT_ALT: TIntegerField;
    SeriePROD_VALORTOT_DST: TIntegerField;
    SeriePROD_VALORTOT_ALT: TIntegerField;
    SeriePROD_ICMS_DST: TIntegerField;
    SeriePROD_ICMS_ALT: TIntegerField;
    SeriePROD_IPI_DST: TIntegerField;
    SeriePROD_IPI_ALT: TIntegerField;
    SeriePROD_VALORIPI_DST: TIntegerField;
    SeriePROD_VALORIPI_ALT: TIntegerField;
    SerieFEC_BASEICMS_DST: TIntegerField;
    SerieFEC_BASEICMS_ALT: TIntegerField;
    SerieFEC_VALORFRETE_DST: TIntegerField;
    SerieFEC_VALORFRETE_ALT: TIntegerField;
    SerieFEC_VALORICMS_DST: TIntegerField;
    SerieFEC_VALORICMS_ALT: TIntegerField;
    SerieFEC_VALORSEGURO_DST: TIntegerField;
    SerieFEC_VALORSEGURO_ALT: TIntegerField;
    SerieFEC_BASECALCICMS_DST: TIntegerField;
    SerieFEC_BASECALCICMS_ALT: TIntegerField;
    SerieFEC_DESPESAS_DST: TIntegerField;
    SerieFEC_DESPESAS_ALT: TIntegerField;
    SerieFEC_VALORICMSSUB_DST: TIntegerField;
    SerieFEC_VALORICMSSUB_ALT: TIntegerField;
    SerieFEC_IPI_DST: TIntegerField;
    SerieFEC_IPI_ALT: TIntegerField;
    SerieFEC_VALORTOTAL_DST: TIntegerField;
    SerieFEC_ISS_DST: TIntegerField;
    SerieFEC_VALORTOTAL_ALT: TIntegerField;
    SerieFEC_ISS_ALT: TIntegerField;
    SerieFEC_VALORNOTA_DST: TIntegerField;
    SerieFEC_VALORNOTA_ALT: TIntegerField;
    SerieTRANS_NOME_DST: TIntegerField;
    SerieTRANS_NOME_ALT: TIntegerField;
    SerieTRANS_END_DST: TIntegerField;
    SerieTRANS_END_ALT: TIntegerField;
    SerieTRANS_QUANTIDADE_DST: TIntegerField;
    SerieTRANS_QUANTIDADE_ALT: TIntegerField;
    SerieTRANS_ESPECIE_DST: TIntegerField;
    SerieTRANS_ESPECIE_ALT: TIntegerField;
    SerieTRANS_MARCA_DST: TIntegerField;
    SerieTRANS_MARCA_ALT: TIntegerField;
    SerieTRANS_FRETECONTA_DST: TIntegerField;
    SerieTRANS_FRETECONTA_ALT: TIntegerField;
    SerieTRANS_CID_DST: TIntegerField;
    SerieTRANS_CID_ALT: TIntegerField;
    SerieTRANS_NUMERO_DST: TIntegerField;
    SerieTRANS_NUMERO_ALT: TIntegerField;
    SerieTRANS_PLACA_DST: TIntegerField;
    SerieTRANS_PLACA_ALT: TIntegerField;
    SerieTRANS_UFVEI_DST: TIntegerField;
    SerieTRANS_UFVEIALT: TIntegerField;
    SerieTRANS_UF_DST: TIntegerField;
    SerieTRANS_UF_ALT: TIntegerField;
    SerieTRANS_CGCCPF_DST: TIntegerField;
    SerieTRANS_CGCCPF_ALT: TIntegerField;
    SerieTRANS_INSCEST_DST: TIntegerField;
    SerieTRANS_INSCEST_ALT: TIntegerField;
    SerieTRANS_PESBRT_DST: TIntegerField;
    SerieTRANS_PESOBRT_ALT: TIntegerField;
    SerieTRANS_PESOLIQ_DST: TIntegerField;
    SerieTRANS_PESOLIQ_ALT: TIntegerField;
    SerieTRANS_OBS_DST: TIntegerField;
    SerieTRANS_OBS_ALT: TIntegerField;
    SerieIMPRESSORA_PULO: TIntegerField;
    SerieIMPRESSORA_LPP: TIBStringField;
    SeriePRODUTOSNOTA: TIntegerField;
    SerieLOCALDUPLICATAS: TIBStringField;
    SerieNUMERODELINHASDANOTA: TIntegerField;
    SeriePROD_DESC_DST: TIntegerField;
    SeriePROD_DESC_ALT: TIntegerField;
    SerieDATA_ANO_ALT: TIntegerField;
    SerieDATA_ANO_DST: TIntegerField;
    SerieDATA_DIA_ALT: TIntegerField;
    SerieDATA_DIA_DST: TIntegerField;
    SerieDATA_MES_ALT: TIntegerField;
    SerieDATA_MES_DST: TIntegerField;
    SerieOBS_ALT: TIntegerField;
    SerieOBS_DST: TIntegerField;
    SerieNOTA_VENDEDOR_DST: TIntegerField;
    SerieNOTA_VENDEDOR_ALT: TIntegerField;
    SerieNOTA_ECF_DST: TIntegerField;
    SerieNOTA_ECF_ALT: TIntegerField;
    SerieNOTA_DESCONTO_DST: TIntegerField;
    SerieNOTA_DESCONTO_ALT: TIntegerField;
    SerieNOTA_INDCOMPL_DST: TIntegerField;
    SerieNOTA_INFCOMPL_ALT: TIntegerField;
    SerieCLI_DUPLLARGURA_COLUNA: TIntegerField;
    SerieCLI_DUPLNUM_COLUNA: TIntegerField;
    SerieNOTA_MSGNAT_DST: TIntegerField;
    SerieNOTA_MSGNAT_ALT: TIntegerField;
    SerieNOTA_NUMRDP_DST: TIntegerField;
    SerieNOTA_NUMRDP_ALT: TIntegerField;
    SeriePORTA_IMPRESSAO: TIBStringField;
    SerieNOTA_DESCONTO_ALT2: TIntegerField;
    SerieNOTA_DESCONTO_DST2: TIntegerField;
    SeriePROD_QNTD_UNID_ALT: TIntegerField;
    SeriePROD_QNTD_UNID_DST: TIntegerField;
    SeriePROD_TIPO_UNID_ALT: TIntegerField;
    SeriePROD_TIPO_UNID_DST: TIntegerField;
    SerieMODELO: TIBStringField;
    SerieNOTA_IRRF_DST: TIntegerField;
    SerieNOTA_IRRF_ALT: TIntegerField;
    SerieNOTA_INSS_DST: TIntegerField;
    SerieNOTA_INSS_ALT: TIntegerField;
    SerieNOTA_PIS_DST: TIntegerField;
    SerieNOTA_PIS_ALT: TIntegerField;
    SerieNOTA_ISS_SUBST_DST: TIntegerField;
    SerieNOTA_ISS_SUBST_ALT: TIntegerField;
    SeriePROD_TAM_NOME: TIntegerField;
    SerieCLI_NOME_RODAPE_DST: TIntegerField;
    SerieCLI_NOME_RODAPE_ALT: TIntegerField;
    SerieCLI_DATENTSAI_RODAPE_DST: TIntegerField;
    SerieCLI_DATENTSAI_RODAPE_ALT: TIntegerField;
    SerieFEC_VALORNOTA_RODAPE_ALT: TIntegerField;
    SerieFEC_VALORNOTA_RODAPE_DST: TIntegerField;
    SerieNOTA_DUPLICA_NUMERO: TIBStringField;
    SerieNF_GRAFICA: TIBStringField;
    SerieNOTA_EMPRESA_ALT: TIntegerField;
    SerieNOTA_EMPRESA_DST: TIntegerField;
    SeriePROD_MARCA_ALT: TIntegerField;
    SeriePROD_MARCA_DST: TIntegerField;
    SeriePROD_LOTE_ALT: TIntegerField;
    SeriePROD_LOTE_DST: TIntegerField;
    SerieNOTA_EMPRESA_UF_ALT: TIntegerField;
    SerieNOTA_EMPRESA_UF_DST: TIntegerField;
    SerieCLI_CID_PROP_DST: TIntegerField;
    SerieCLI_CID_PROP_ALT: TIntegerField;
    SerieCLI_UF_PROP_DST: TIntegerField;
    SerieCLI_UF_PROP_ALT: TIntegerField;
    SeriePROD_LOTE_VALIDADE_ALT: TIntegerField;
    SeriePROD_LOTE_VALIDADE_DST: TIntegerField;
    SerieCLI_END_PROP_ALT: TIntegerField;
    SerieCLI_END_PROP_DST: TIntegerField;
    SerieCLI_NOME_PROP_ALT: TIntegerField;
    SerieCLI_NOME_PROP_DST: TIntegerField;
    SerieNFSERV_GRAFICA: TIBStringField;
    SerieNF_GRAFICA2: TIBStringField;
    SubgruposOBS: TMemoField;
    VendedoresCOD_PERFIL: TIntegerField;
    NotaPromissoriaPR_GRAF: TIBStringField;
    NotaPromissoriaPR_GRAF_LEIAUTE: TMemoField;
    PropriedadesREGIAO: TSmallintField;
    NaturezaDEVOLUCAO: TIBStringField;
    NaturezaREMESSA: TIBStringField;
    NaturezaENTREGA_FUTURA: TIBStringField;
    SelProdutos: TIBQuery;
    SelProdutosCODIGO: TIBStringField;
    SelProdutosNOME: TIBStringField;
    SelProdutos_Cod_Nome: TStringField;
    SelSubGrupo: TIBQuery;
    SelSubGrupoCNPJ: TIBStringField;
    SelSubGrupoGRUPO: TIntegerField;
    SelSubGrupoNOME: TIBStringField;
    SelSubGrupoSUBGRUPO: TIntegerField;
    SelGrupo: TIBQuery;
    SelGrupoCODIGO: TIntegerField;
    SelGrupoNOME: TIBStringField;
    SelGrupoSELECIONADO: TIBStringField;
    SelMarca: TIBQuery;
    SelMarcaCNPJ: TIBStringField;
    SelMarcaCODIGO: TIntegerField;
    SelMarcaNOME: TIBStringField;
    SelMarcaSELECIONADO: TIBStringField;
    qryLocalizarProduto: TIBQuery;
    qryLocalizarProdutoCODIGO: TIBStringField;
    qryLocalizarProdutoNOME: TIBStringField;
    qryLocalizarProdutoQTDADE_2: TFloatField;
    qryLocalizarProdutoQTDADE_1: TFloatField;
    qryLocalizarProdutoPRC_VENDA: TFloatField;
    qryLocalizarProdutoCODIGO_2: TIBStringField;
    qryLocalizarProdutoPRC_REPOS: TFloatField;
    qryLocalizarProdutoMARCA: TIBStringField;
    Paises: TIBDataSet;
    PaisesCNPJ: TIBStringField;
    PaisesCODIGO: TIntegerField;
    PaisesNOME: TIBStringField;
    RegioesTECNICO: TIntegerField;
    NotaPromissoriaCAN_PARC_DST: TIntegerField;
    NotaPromissoriaCAN_PARC_ALT: TIntegerField;
    NotaPromissoriaCAN_VALOR_DST: TIntegerField;
    NotaPromissoriaCAN_VALOR_ALT: TIntegerField;
    NotaPromissoriaCAN_COD_CLI_DST: TIntegerField;
    NotaPromissoriaCAN_COD_CLI_ALT: TIntegerField;
    NotaPromissoriaCAN_COD_VENDA_DST: TIntegerField;
    NotaPromissoriaCAN_COD_VENDA_ALT: TIntegerField;
    NotaPromissoriaCAN_VENCTO_DST: TIntegerField;
    NotaPromissoriaCAN_VENCTO_ALT: TIntegerField;
    qryLocalizarProdutoSERIE: TIBStringField;
    EdtCopiaCheque: TIBDataSet;
    SelProdutosSERIE: TIBStringField;
    EdtCopiaChequeCNPJ: TIBStringField;
    EdtCopiaChequeCONFIG_COPIA_CHEQUE: TMemoField;
    BancosCONFIG_CHEQUE: TMemoField;
    BancosValor: TCurrencyField;
    BancosExtenso: TStringField;
    BancosNominal: TStringField;
    BancosCidade: TStringField;
    ClientesBAIRRO: TIntegerField;
    VendedoresCOD_PERFIL_PAGTO: TIntegerField;
    EdtSerieOrcNF: TIBDataSet;
    EdtSerieOrcNFCNPJ: TIBStringField;
    EdtSerieOrcNFCONFIG_SERIE_ORC_NF: TMemoField;
    dsSerieOrcNF: TDataSource;
    qryLocalizarProdutoMDL_CODIGO: TIntegerField;
    qryLocalizarProdutoMODELO: TIBStringField;
    NaturezaGERA_FINANCEIRO: TIBStringField;
    Produtos: TIBDataSet;
    ProdutosCOMPLEMENTO: TIBStringField;
    ProdutosCNPJ: TIBStringField;
    ProdutosCODIGO: TIBStringField;
    ProdutosCODIGO_INTERNO: TIntegerField;
    ProdutosCODIGO_2: TIBStringField;
    ProdutosCNPJ_AGRUP: TIBStringField;
    ProdutosCOD_AGRUP: TIBStringField;
    ProdutosNOME: TIBStringField;
    ProdutosMARCA: TIntegerField;
    ProdutosMODELO: TIntegerField;
    ProdutosGRUPO: TIntegerField;
    ProdutosSUBGRUPO: TIntegerField;
    ProdutosREDUCAO: TIntegerField;
    ProdutosUNIDADE: TIBStringField;
    ProdutosCTE: TIntegerField;
    ProdutosCTIE: TIntegerField;
    ProdutosQTDADE_1: TFloatField;
    ProdutosQTDADE_2: TFloatField;
    ProdutosLOCALIZACAO_1: TIBStringField;
    ProdutosLOCALIZACAO_2: TIBStringField;
    ProdutosLOCALIZACAO_3: TIBStringField;
    ProdutosNEG_QTDADE_2: TIBStringField;
    ProdutosQTDADE_MIN: TIntegerField;
    ProdutosQTDADE_MAX: TIntegerField;
    ProdutosCOMPLEMENTO_NF: TIBStringField;
    ProdutosDT_ULT_COMPRA: TDateField;
    ProdutosQT_ULT_COMPRA: TIntegerField;
    ProdutosDT_ULT_VENDA: TDateField;
    ProdutosMARGEM_BRUTA: TFloatField;
    ProdutosPRC_REPOS: TFloatField;
    ProdutosPRC_CUSTO_ANT: TFloatField;
    ProdutosPRC_CUSTO_MED: TFloatField;
    ProdutosPRC_VENDA_ANT: TFloatField;
    ProdutosPRC_VENDA_MED: TFloatField;
    ProdutosALIQUOTA_ECF: TIBStringField;
    ProdutosORIGEM: TSmallintField;
    ProdutosPESO_LIQ: TFloatField;
    ProdutosPERC_FRETE: TFloatField;
    ProdutosIPI: TFloatField;
    ProdutosVOLUME: TFloatField;
    ProdutosPROD_PESAVEL: TIBStringField;
    ProdutosETIQUETA_ENT: TIBStringField;
    ProdutosATIVO: TIBStringField;
    ProdutosULTIMO_FORNECEDOR: TIntegerField;
    ProdutosFORNECEDOR: TIntegerField;
    ProdutosSUBUNIDADE: TIntegerField;
    ProdutosNOME_MARCA: TIBStringField;
    ProdutosNOME_MODELO: TIBStringField;
    ProdutosPRC_CUSTO_CODIF: TIBStringField;
    ProdutosDT_ULT_ATU_PRECO: TDateField;
    ProdutosVENDE_FRACIONADO: TIBStringField;
    ProdutosQNTDE_EXPOSTA: TFloatField;
    ProdutosPOSSUI_LOTE: TIBStringField;
    ProdutosCUSTO_AQUISICAO: TFloatField;
    ProdutosQNTDE_PEDIDA: TFloatField;
    ProdutosPREVISAO_ENTREGA: TDateField;
    ProdutosQNTDE_MAXIMA_VENDA: TFloatField;
    ProdutosPIS: TIBStringField;
    ProdutosCOFINS: TIBStringField;
    ProdutosCOM_VENDA_VLR: TFloatField;
    ProdutosCOM_VENDA_PCT: TFloatField;
    ProdutosPARTICIP_LUCRO: TFloatField;
    ProdutosNAO_COBR_JUR_ATE: TIntegerField;
    ProdutosATUALIZA_ARQ_EXTERNO: TIBStringField;
    ProdutosSERVICO: TIBStringField;
    ProdutosVALIDADE: TIntegerField;
    ProdutosSECAO: TIntegerField;
    ProdutosCUSTO_INDEXADO: TIBBCDField;
    ProdutosCOMPROMETIDO: TIBBCDField;
    ProdutosEST_MIN: TIBBCDField;
    ProdutosEST_MAX: TIBBCDField;
    ProdutosSERIE: TIBStringField;
    ProdutosDEBITA_ICMS: TIBStringField;
    ProdutosQTD_UM: TFloatField;
    ProdutosQTD_UNIT: TFloatField;
    ProdutosEstoque_Fisico: TFloatField;
    SerieCONFIG_NF_GRAF: TMemoField;
    SerieINDICE: TIBStringField;
    SerieLeiute: TIBDataSet;
    SerieLeiuteCNPJ: TIBStringField;
    SerieLeiuteSERIE: TIBStringField;
    SerieLeiuteULTIMO_NUMERO: TIntegerField;
    SerieLeiuteTIPO: TIBStringField;
    SerieLeiuteNOTA_NUM_DST: TIntegerField;
    SerieLeiuteNOTA_NUM_ALT: TIntegerField;
    SerieLeiuteNOTA_NUMRECIBO_DST: TIntegerField;
    SerieLeiuteNOTA_NUMRECIBO_ALT: TIntegerField;
    SerieLeiuteNOTA_ENT_SAI_DST: TIntegerField;
    SerieLeiuteNOTA_ENT_SAI_ALT: TIntegerField;
    SerieLeiuteNOTA_NATUREZA_DST: TIntegerField;
    SerieLeiuteNOTA_NATUREZA_ALT: TIntegerField;
    SerieLeiuteNOTA_CFOP_DST: TIntegerField;
    SerieLeiuteNOTA_CFOP_ALT: TIntegerField;
    SerieLeiuteNOTA_SUBS_TRIB_DST: TIntegerField;
    SerieLeiuteNOTA_SUBS_TRIB_ALT: TIntegerField;
    SerieLeiuteNOTA_CNDPG_DST: TIntegerField;
    SerieLeiuteNOTA_CNDPG_ALT: TIntegerField;
    SerieLeiuteCLI_NOME_DST: TIntegerField;
    SerieLeiuteCLI_NOME_ALT: TIntegerField;
    SerieLeiuteCLI_CGCCPF_DST: TIntegerField;
    SerieLeiuteCLI_CGCCPF_ALT: TIntegerField;
    SerieLeiuteCLI_END_DST: TIntegerField;
    SerieLeiuteCLI_END_ALT: TIntegerField;
    SerieLeiuteCLI_BAIRRO_DST: TIntegerField;
    SerieLeiuteCLI_BAIRRO_ALT: TIntegerField;
    SerieLeiuteCLI_CEP_DST: TIntegerField;
    SerieLeiuteCLI_CEP_ALT: TIntegerField;
    SerieLeiuteCLI_CID_DST: TIntegerField;
    SerieLeiuteCLI_CID_ALT: TIntegerField;
    SerieLeiuteCLI_FONE_DST: TIntegerField;
    SerieLeiuteCLI_FONE_ALT: TIntegerField;
    SerieLeiuteCLI_FAX_DST: TIntegerField;
    SerieLeiuteCLI_FAX_ALT: TIntegerField;
    SerieLeiuteCLI_UF_DST: TIntegerField;
    SerieLeiuteCLI_UF_ALT: TIntegerField;
    SerieLeiuteCLI_INSCEST_DST: TIntegerField;
    SerieLeiuteCLI_INSCEST_ALT: TIntegerField;
    SerieLeiuteCLI_DATEMIS_DST: TIntegerField;
    SerieLeiuteCLI_DATEMIS_ALT: TIntegerField;
    SerieLeiuteCLI_DATENTSAI_DST: TIntegerField;
    SerieLeiuteCLI_DATENTSAI_ALT: TIntegerField;
    SerieLeiuteCLI_HORASAI_DST: TIntegerField;
    SerieLeiuteCLI_HORASAI_ALT: TIntegerField;
    SerieLeiuteCLI_PEDNUM_DST: TIntegerField;
    SerieLeiuteCLI_PEDNUM_ALT: TIntegerField;
    SerieLeiuteCLI_INSCMUN_DST: TIntegerField;
    SerieLeiuteCLI_INSCMUN_ALT: TIntegerField;
    SerieLeiuteCLI_DUPLNUM_DST: TIntegerField;
    SerieLeiuteCLI_DUPLNUM_ALT: TIntegerField;
    SerieLeiuteCLI_DUPLVENC_DST: TIntegerField;
    SerieLeiuteCLI_DUPLVENC_ALT: TIntegerField;
    SerieLeiuteCLI_DUPLVALOR_DST: TIntegerField;
    SerieLeiuteCLI_DUPLVALOR_ALT: TIntegerField;
    SerieLeiutePROD_COD_DST: TIntegerField;
    SerieLeiutePROD_COD_ALT: TIntegerField;
    SerieLeiutePROD_PROD_DST: TIntegerField;
    SerieLeiutePROD_PROD_ALT: TIntegerField;
    SerieLeiutePROD_CF_DST: TIntegerField;
    SerieLeiutePROD_CF_ALT: TIntegerField;
    SerieLeiutePROD_SITTRIB_DST: TIntegerField;
    SerieLeiutePROD_SITTRIB_ALT: TIntegerField;
    SerieLeiutePROD_UNIDADE_DST: TIntegerField;
    SerieLeiutePROD_UNIDADE_ALT: TIntegerField;
    SerieLeiutePROD_QUANT_DST: TIntegerField;
    SerieLeiutePROD_QUANT_ALT: TIntegerField;
    SerieLeiutePROD_VALORUNIT_DST: TIntegerField;
    SerieLeiutePROD_VALORUNIT_ALT: TIntegerField;
    SerieLeiutePROD_VALORTOT_DST: TIntegerField;
    SerieLeiutePROD_VALORTOT_ALT: TIntegerField;
    SerieLeiutePROD_ICMS_DST: TIntegerField;
    SerieLeiutePROD_ICMS_ALT: TIntegerField;
    SerieLeiutePROD_IPI_DST: TIntegerField;
    SerieLeiutePROD_IPI_ALT: TIntegerField;
    SerieLeiutePROD_VALORIPI_DST: TIntegerField;
    SerieLeiutePROD_VALORIPI_ALT: TIntegerField;
    SerieLeiuteFEC_BASEICMS_DST: TIntegerField;
    SerieLeiuteFEC_BASEICMS_ALT: TIntegerField;
    SerieLeiuteFEC_VALORFRETE_DST: TIntegerField;
    SerieLeiuteFEC_VALORFRETE_ALT: TIntegerField;
    SerieLeiuteFEC_VALORICMS_DST: TIntegerField;
    SerieLeiuteFEC_VALORICMS_ALT: TIntegerField;
    SerieLeiuteFEC_VALORSEGURO_DST: TIntegerField;
    SerieLeiuteFEC_VALORSEGURO_ALT: TIntegerField;
    SerieLeiuteFEC_BASECALCICMS_DST: TIntegerField;
    SerieLeiuteFEC_BASECALCICMS_ALT: TIntegerField;
    SerieLeiuteFEC_DESPESAS_DST: TIntegerField;
    SerieLeiuteFEC_DESPESAS_ALT: TIntegerField;
    SerieLeiuteFEC_VALORICMSSUB_DST: TIntegerField;
    SerieLeiuteFEC_VALORICMSSUB_ALT: TIntegerField;
    SerieLeiuteFEC_IPI_DST: TIntegerField;
    SerieLeiuteFEC_IPI_ALT: TIntegerField;
    SerieLeiuteFEC_VALORTOTAL_DST: TIntegerField;
    SerieLeiuteFEC_ISS_DST: TIntegerField;
    SerieLeiuteFEC_VALORTOTAL_ALT: TIntegerField;
    SerieLeiuteFEC_ISS_ALT: TIntegerField;
    SerieLeiuteFEC_VALORNOTA_DST: TIntegerField;
    SerieLeiuteFEC_VALORNOTA_ALT: TIntegerField;
    SerieLeiuteTRANS_NOME_DST: TIntegerField;
    SerieLeiuteTRANS_NOME_ALT: TIntegerField;
    SerieLeiuteTRANS_END_DST: TIntegerField;
    SerieLeiuteTRANS_END_ALT: TIntegerField;
    SerieLeiuteTRANS_QUANTIDADE_DST: TIntegerField;
    SerieLeiuteTRANS_QUANTIDADE_ALT: TIntegerField;
    SerieLeiuteTRANS_ESPECIE_DST: TIntegerField;
    SerieLeiuteTRANS_ESPECIE_ALT: TIntegerField;
    SerieLeiuteTRANS_MARCA_DST: TIntegerField;
    SerieLeiuteTRANS_MARCA_ALT: TIntegerField;
    SerieLeiuteTRANS_FRETECONTA_DST: TIntegerField;
    SerieLeiuteTRANS_FRETECONTA_ALT: TIntegerField;
    SerieLeiuteTRANS_CID_DST: TIntegerField;
    SerieLeiuteTRANS_CID_ALT: TIntegerField;
    SerieLeiuteTRANS_NUMERO_DST: TIntegerField;
    SerieLeiuteTRANS_NUMERO_ALT: TIntegerField;
    SerieLeiuteTRANS_PLACA_DST: TIntegerField;
    SerieLeiuteTRANS_PLACA_ALT: TIntegerField;
    SerieLeiuteTRANS_UFVEI_DST: TIntegerField;
    SerieLeiuteTRANS_UFVEIALT: TIntegerField;
    SerieLeiuteTRANS_UF_DST: TIntegerField;
    SerieLeiuteTRANS_UF_ALT: TIntegerField;
    SerieLeiuteTRANS_CGCCPF_DST: TIntegerField;
    SerieLeiuteTRANS_CGCCPF_ALT: TIntegerField;
    SerieLeiuteTRANS_INSCEST_DST: TIntegerField;
    SerieLeiuteTRANS_INSCEST_ALT: TIntegerField;
    SerieLeiuteTRANS_PESBRT_DST: TIntegerField;
    SerieLeiuteTRANS_PESOBRT_ALT: TIntegerField;
    SerieLeiuteTRANS_PESOLIQ_DST: TIntegerField;
    SerieLeiuteTRANS_PESOLIQ_ALT: TIntegerField;
    SerieLeiuteTRANS_OBS_DST: TIntegerField;
    SerieLeiuteTRANS_OBS_ALT: TIntegerField;
    SerieLeiuteIMPRESSORA_PULO: TIntegerField;
    SerieLeiuteIMPRESSORA_LPP: TIBStringField;
    SerieLeiutePRODUTOSNOTA: TIntegerField;
    SerieLeiuteLOCALDUPLICATAS: TIBStringField;
    SerieLeiuteNUMERODELINHASDANOTA: TIntegerField;
    SerieLeiutePROD_DESC_DST: TIntegerField;
    SerieLeiutePROD_DESC_ALT: TIntegerField;
    SerieLeiuteDATA_ANO_ALT: TIntegerField;
    SerieLeiuteDATA_ANO_DST: TIntegerField;
    SerieLeiuteDATA_DIA_ALT: TIntegerField;
    SerieLeiuteDATA_DIA_DST: TIntegerField;
    SerieLeiuteDATA_MES_ALT: TIntegerField;
    SerieLeiuteDATA_MES_DST: TIntegerField;
    SerieLeiuteOBS_ALT: TIntegerField;
    SerieLeiuteOBS_DST: TIntegerField;
    SerieLeiuteNOTA_VENDEDOR_DST: TIntegerField;
    SerieLeiuteNOTA_VENDEDOR_ALT: TIntegerField;
    SerieLeiuteNOTA_ECF_DST: TIntegerField;
    SerieLeiuteNOTA_ECF_ALT: TIntegerField;
    SerieLeiuteNOTA_DESCONTO_DST: TIntegerField;
    SerieLeiuteNOTA_DESCONTO_ALT: TIntegerField;
    SerieLeiuteNOTA_INDCOMPL_DST: TIntegerField;
    SerieLeiuteNOTA_INFCOMPL_ALT: TIntegerField;
    SerieLeiuteCLI_DUPLLARGURA_COLUNA: TIntegerField;
    SerieLeiuteCLI_DUPLNUM_COLUNA: TIntegerField;
    SerieLeiuteNOTA_MSGNAT_DST: TIntegerField;
    SerieLeiuteNOTA_MSGNAT_ALT: TIntegerField;
    SerieLeiuteNOTA_NUMRDP_DST: TIntegerField;
    SerieLeiuteNOTA_NUMRDP_ALT: TIntegerField;
    SerieLeiutePORTA_IMPRESSAO: TIBStringField;
    SerieLeiuteNOTA_DESCONTO_ALT2: TIntegerField;
    SerieLeiuteNOTA_DESCONTO_DST2: TIntegerField;
    SerieLeiutePROD_QNTD_UNID_ALT: TIntegerField;
    SerieLeiutePROD_QNTD_UNID_DST: TIntegerField;
    SerieLeiutePROD_TIPO_UNID_ALT: TIntegerField;
    SerieLeiutePROD_TIPO_UNID_DST: TIntegerField;
    SerieLeiuteMODELO: TIBStringField;
    SerieLeiuteNOTA_IRRF_DST: TIntegerField;
    SerieLeiuteNOTA_IRRF_ALT: TIntegerField;
    SerieLeiuteNOTA_INSS_DST: TIntegerField;
    SerieLeiuteNOTA_INSS_ALT: TIntegerField;
    SerieLeiuteNOTA_PIS_DST: TIntegerField;
    SerieLeiuteNOTA_PIS_ALT: TIntegerField;
    SerieLeiuteNOTA_ISS_SUBST_DST: TIntegerField;
    SerieLeiuteNOTA_ISS_SUBST_ALT: TIntegerField;
    SerieLeiutePROD_TAM_NOME: TIntegerField;
    SerieLeiuteCLI_NOME_RODAPE_DST: TIntegerField;
    SerieLeiuteCLI_NOME_RODAPE_ALT: TIntegerField;
    SerieLeiuteCLI_DATENTSAI_RODAPE_DST: TIntegerField;
    SerieLeiuteCLI_DATENTSAI_RODAPE_ALT: TIntegerField;
    SerieLeiuteFEC_VALORNOTA_RODAPE_ALT: TIntegerField;
    SerieLeiuteFEC_VALORNOTA_RODAPE_DST: TIntegerField;
    SerieLeiuteNOTA_DUPLICA_NUMERO: TIBStringField;
    SerieLeiuteNF_GRAFICA: TIBStringField;
    SerieLeiuteNOTA_EMPRESA_ALT: TIntegerField;
    SerieLeiuteNOTA_EMPRESA_DST: TIntegerField;
    SerieLeiutePROD_MARCA_ALT: TIntegerField;
    SerieLeiutePROD_MARCA_DST: TIntegerField;
    SerieLeiutePROD_LOTE_ALT: TIntegerField;
    SerieLeiutePROD_LOTE_DST: TIntegerField;
    SerieLeiuteNOTA_EMPRESA_UF_ALT: TIntegerField;
    SerieLeiuteNOTA_EMPRESA_UF_DST: TIntegerField;
    SerieLeiuteCLI_CID_PROP_DST: TIntegerField;
    SerieLeiuteCLI_CID_PROP_ALT: TIntegerField;
    SerieLeiuteCLI_UF_PROP_DST: TIntegerField;
    SerieLeiuteCLI_UF_PROP_ALT: TIntegerField;
    SerieLeiutePROD_LOTE_VALIDADE_ALT: TIntegerField;
    SerieLeiutePROD_LOTE_VALIDADE_DST: TIntegerField;
    SerieLeiuteCLI_END_PROP_ALT: TIntegerField;
    SerieLeiuteCLI_END_PROP_DST: TIntegerField;
    SerieLeiuteCLI_NOME_PROP_ALT: TIntegerField;
    SerieLeiuteCLI_NOME_PROP_DST: TIntegerField;
    SerieLeiuteNFSERV_GRAFICA: TIBStringField;
    SerieLeiuteNF_GRAFICA2: TIBStringField;
    SerieLeiuteCONFIG_NF_GRAF: TMemoField;
    SerieLeiuteINDICE: TIBStringField;
    ProdutosPRC_VENDA: TFloatField;
    PaisesSISCOMEX: TIBStringField;
    PaisesNACIONALIDADE: TIBStringField;
    PaisesCOD_MOEDA: TIntegerField;
    PaisesSIGLA: TIBStringField;
    CidadesCOD_IAGRO: TIntegerField;
    MovimentoEXCLUIR: TIBStringField;
    MovimentoVALOR_INDEXADO: TFloatField;
    CidadesCOD_IBGE: TIBStringField;
    EstadosCOD_IBGE: TIBStringField;
    Formas_Pagto_Parcelas: TIBDataSet;
    Formas_Pagto_ParcelasCNPJ: TIBStringField;
    Formas_Pagto_ParcelasCODIGO: TIntegerField;
    Formas_Pagto_ParcelasCOD_FORMA_PAGTO: TIntegerField;
    Formas_Pagto_ParcelasPARCELA: TIntegerField;
    Formas_Pagto_ParcelasDIAS_VENCIMENTO: TIntegerField;
    dsLinkParcelas: TDataSource;
    Formas_PagtoINTERVALO_PRE_DEFINIDO: TIBStringField;
    Formas_PagtoVENCTO_FIXO: TIBStringField;
    Formas_PagtoCOMENTRADA: TIBStringField;
    Formas_PagtoDT_VENCTO_FIXO: TDateField;
    ProdutosQNTDE_MINIMA_VENDA: TFloatField;
    ProdutosVALIDA_MULT_QTDE_MIN: TIBStringField;
    ProdutosUND_PRIMARIA: TIBStringField;
    ProdutosFATOR_CONVERSAO: TIBBCDField;
    UndPrimaria: TIBDataSet;
    UndPrimariaCNPJ: TIBStringField;
    UndPrimariaSIGLA: TIBStringField;
    UndPrimariaNOME: TIBStringField;
    UndPrimariaUNIDADES: TFloatField;
    dsLinkGrupo: TDataSource;
    MecanicosCREA: TIBStringField;
    MecanicosCTPS: TIBStringField;
    SeletorPessoas: TIBQuery;
    SeletorPessoasCODIGO: TIntegerField;
    SeletorPessoasNOME_RAZAO: TIBStringField;
    SelProdutos2: TIBQuery;
    SelProdutos2CODIGO: TIBStringField;
    SelProdutos2NOME: TIBStringField;
    SelProdutos2SERIE: TIBStringField;
    NaturezaMSG_FISCAL: TMemoField;
    VALIDA_PRODUTO2: TIBQuery;
    VALIDA_PRODUTO2PRC_REPOS: TIBBCDField;
    VALIDA_PRODUTO2VALIDA_MULT_QTDE_MIN: TIBStringField;
    VALIDA_PRODUTO2PRC_VENDA: TIBBCDField;
    VALIDA_PRODUTO2VOLUME: TIBBCDField;
    VALIDA_PRODUTO2PESO_LIQ: TIBBCDField;
    VALIDA_PRODUTO2UNIDADE: TIBStringField;
    VALIDA_PRODUTO2NOME: TIBStringField;
    VALIDA_PRODUTO2ATIVO: TIBStringField;
    VALIDA_PRODUTO2ALIQUOTA_ECF: TIBStringField;
    VALIDA_PRODUTO2QTDADE_1: TIBBCDField;
    VALIDA_PRODUTO2QTDADE_2: TIBBCDField;
    VALIDA_PRODUTO2NEG_QTDADE_2: TIBStringField;
    VALIDA_PRODUTO2SUBUNIDADE: TIntegerField;
    VALIDA_PRODUTO2COMPLEMENTO_NF: TIBStringField;
    VALIDA_PRODUTO2ORIGEM: TIntegerField;
    VALIDA_PRODUTO2CTE: TIntegerField;
    VALIDA_PRODUTO2CTIE: TIntegerField;
    VALIDA_PRODUTO2REDUCAO: TIntegerField;
    VALIDA_PRODUTO2IPI: TIBBCDField;
    VALIDA_PRODUTO2VENDE_FRACIONADO: TIBStringField;
    VALIDA_PRODUTO2POSSUI_LOTE: TIBStringField;
    VALIDA_PRODUTO2MARCA: TIBStringField;
    VALIDA_PRODUTO2MARGEM_BRUTA: TIBBCDField;
    VALIDA_PRODUTO2QTDADE_CONVERSAO: TIBBCDField;
    VALIDA_PRODUTO2SERVICO: TIBStringField;
    VALIDA_PRODUTO2SECUNDARIO: TIBStringField;
    VALIDA_PRODUTO2COMPLEMENTO: TIBStringField;
    VALIDA_PRODUTO2PERC_FRETE: TIBBCDField;
    VALIDA_PRODUTO2QNTDE_MINIMA_VENDA: TIBBCDField;
    VALIDA_PRODUTO2UND_PRIMARIA: TIBStringField;
    VALIDA_PRODUTO2FATOR_CONVERSAO: TFloatField;
    ProdutosSINCRONIZA_FILIAIS: TIBStringField;
    FornecedoresCNPJ: TIBStringField;
    FornecedoresPESSOA_FJ: TIntegerField;
    FornecedoresVENDEDOR: TIBStringField;
    FornecedoresFONE_VEN: TIBStringField;
    FornecedoresFINANCEIRO: TIBStringField;
    FornecedoresFONE_FIN: TIBStringField;
    FornecedoresREPRESENTANTE: TIBStringField;
    FornecedoresFONE_REP: TIBStringField;
    FornecedoresBANCO_C1: TIBStringField;
    FornecedoresAGENCIA_C1: TIBStringField;
    FornecedoresCC_C1: TIBStringField;
    FornecedoresBANCO_C2: TIBStringField;
    FornecedoresAGENCIA_C2: TIBStringField;
    FornecedoresCC_C2: TIBStringField;
    FornecedoresFORMA_PAGTO: TIntegerField;
    FornecedoresCONTABILIDADE: TIntegerField;
    FornecedoresSINCRONIZA_FILIAIS: TIBStringField;
    ProdutosQNTDE_PDR_CARGA: TIBBCDField;
    MecanicosEMAIL: TIBStringField;
    MecanicosCUSTO_HORA: TFloatField;
    MecanicosCOD_USUARIO: TIntegerField;
    ProdutosUND_CARREGAMENTO: TIBStringField;
    ProdutosTRIB_ALIQ_EST: TIBBCDField;
    ProdutosTRIB_ALIQ_INT: TIBBCDField;
    ProdutosTRIB_MODALIDADE: TIBStringField;
    SubgruposProd: TIBDataSet;
    SubgruposProdCNPJ: TIBStringField;
    SubgruposProdGRUPO: TIntegerField;
    SubgruposProdSUBGRUPO: TIntegerField;
    SubgruposProdNOME: TIBStringField;
    SubgruposProdDESCONTO_MAX: TFloatField;
    SubgruposProdDIGITA_PRC: TIBStringField;
    SubgruposProdCOMPRAS_C: TIntegerField;
    SubgruposProdCOMPRAS_D: TIntegerField;
    SubgruposProdTRANSFERENCIA_C: TIntegerField;
    SubgruposProdTRANSFERENCIA_D: TIntegerField;
    SubgruposProdVENDAS_C: TIntegerField;
    SubgruposProdVENDAS_D: TIntegerField;
    SubgruposProdESTOQUE: TIntegerField;
    SubgruposProdESTOQUE_INI: TIntegerField;
    SubgruposProdESTOQUE_FIM: TIntegerField;
    SubgruposProdOBS: TMemoField;
    qryLocalizarProdutoSECAO: TIBStringField;
    qryLocalizarProdutoLOCALIZACAO_1: TIBStringField;
    qryLocalizarProdutoLOCALIZACAO_2: TIBStringField;
    qryLocalizarProdutoLOCALIZACAO_3: TIBStringField;
    QryIndices: TIBQuery;
    QryIndicesNOME: TIBStringField;
    QryIndicesUSO: TIntegerField;
    dsIndice: TDataSource;
    NaturezaCALC_ICMS: TIBStringField;
    NaturezaCALC_INSS: TIBStringField;
    NaturezaCALC_ISSQN: TIBStringField;
    NaturezaCALC_SEST_SENAT: TIBStringField;
    NaturezaCALC_PIS: TIBStringField;
    NaturezaCALC_COFINS: TIBStringField;
    NaturezaCALC_IPI: TIBStringField;
    NaturezaCALC_IRRF: TIBStringField;
    MecanicosASSINATURA: TMemoField;
    QryIndicesTOTAL: TFloatField;
    VeiculoCOR: TIBStringField;
    VeiculoN_CHASSI: TIBStringField;
    VeiculoANO: TSmallintField;
    ProdutosCODIGO_NCM: TIBStringField;
    MovimentoCOD_ACERTOCONTA: TIntegerField;
    TP_Contato: TIBDataSet;
    TP_ContatoCODIGO: TIntegerField;
    TP_ContatoNOME: TIBStringField;
    TP_ContatoDESCRICAO: TIBStringField;
    TP_ContatoCNPJ: TIBStringField;
    Localizar_Pessoa: TIBDataSet;
    IBStringField3: TIBStringField;
    IntegerField2: TIntegerField;
    IBStringField4: TIBStringField;
    IBStringField5: TIBStringField;
    IntegerField3: TIntegerField;
    IntegerField4: TIntegerField;
    IBStringField6: TIBStringField;
    IBStringField7: TIBStringField;
    IntegerField5: TIntegerField;
    IntegerField6: TIntegerField;
    IBStringField8: TIBStringField;
    IBStringField9: TIBStringField;
    IBStringField10: TIBStringField;
    IBStringField11: TIBStringField;
    IBStringField12: TIBStringField;
    IBStringField13: TIBStringField;
    IBStringField14: TIBStringField;
    IBStringField15: TIBStringField;
    IBStringField16: TIBStringField;
    IBStringField17: TIBStringField;
    DateTimeField1: TDateTimeField;
    DateTimeField2: TDateTimeField;
    IBStringField18: TIBStringField;
    BlobField1: TBlobField;
    IntegerField7: TIntegerField;
    IBStringField19: TIBStringField;
    IntegerField8: TIntegerField;
    IntegerField9: TIntegerField;
    Contato: TIBDataSet;
    ProdutosAPLICACAO: TMemoField;
    ProdutosIMG_2: TBlobField;
    ProdutosIMG_1: TBlobField;
    ProdutosIMG_3: TBlobField;
    ProdutosIMG_4: TBlobField;
    ProdutosCODIGO_FABRICANTE: TIBStringField;
    Formas_PagtoOUTROS: TIBStringField;
    ProdutosCOR: TIntegerField;
    ProdutosMATERIAL: TIntegerField;
    qryLocalizarProdutoCODIGO_FABRICANTE: TIBStringField;
    qryLocalizarProdutoCOMPLEMENTO: TIBStringField;
    Cliente_Endereco: TIBDataSet;
    Tipo_Endereco: TIBDataSet;
    Cliente_EnderecoCODIGO: TIntegerField;
    Cliente_EnderecoCNPJ: TIBStringField;
    Cliente_EnderecoID_LOGRADOURO: TIntegerField;
    Cliente_EnderecoID_BAIRRO: TIntegerField;
    Cliente_EnderecoID_CIDADE: TIntegerField;
    Cliente_EnderecoUF_SIGLA: TIBStringField;
    Cliente_EnderecoDATA_INICIAL: TDateTimeField;
    Cliente_EnderecoDATA_FINAL: TDateTimeField;
    Cliente_EnderecoNUMERO_END: TIBStringField;
    Cliente_EnderecoID_REGIOES: TIntegerField;
    Cliente_EnderecoID_CLIENTE: TIntegerField;
    Cliente_EnderecoCEP: TIBStringField;
    Cliente_EnderecoID_TIPO_ENDERECO: TIntegerField;
    Cliente_EnderecoCOMPLEMENTO: TIBStringField;
    Cliente_EnderecoBAIRRONOME: TIBStringField;
    Cliente_EnderecoESTADONOME: TIBStringField;
    Cliente_EnderecoCIDADENOME: TIBStringField;
    Cliente_EnderecoLOGRADOUROSNOME: TIBStringField;
    Cliente_EnderecoREGIOESNOME: TIBStringField;
    Cliente_EnderecoNOMETPENDERECO: TIBStringField;
    Tipo_EnderecoCNPJ: TIBStringField;
    Tipo_EnderecoTIPO_ENDERECO: TIBStringField;
    Tipo_EnderecoCODIGO: TIntegerField;
    ContatoCONTATO_NOME: TIBStringField;
    ContatoOBSERVACAO: TIBStringField;
    ContatoIDCLIENTE_RELACIONADO: TIntegerField;
    ContatoTIPOCONTATO: TIBStringField;
    ContatoCNPJ: TIBStringField;
    ContatoTIPO_CONTATO: TIntegerField;
    ContatoCODIGO: TIntegerField;
    ContatoID_CLIENTE: TIntegerField;
    ContatoIDCLIENTE: TIntegerField;
    ContatoCELULAR: TIBStringField;
    ContatoRESIDENCIAL: TIBStringField;
    Clientes_Imagens: TIBDataSet;
    Clientes_ImagensCNPJ: TIBStringField;
    Clientes_ImagensCODIGO: TIntegerField;
    Clientes_ImagensID_CLIENTE: TIntegerField;
    Clientes_ImagensDESCRICAO: TIBStringField;
    Clientes_ImagensCNPJ1: TIBStringField;
    Clientes_ImagensPESSOA_FJ: TIntegerField;
    Pessoa_PFJ: TIBDataSet;
    IBStringField1: TIBStringField;
    IntegerField1: TIntegerField;
    IBStringField2: TIBStringField;
    IBStringField20: TIBStringField;
    IntegerField10: TIntegerField;
    IntegerField11: TIntegerField;
    IBStringField21: TIBStringField;
    IBStringField22: TIBStringField;
    IntegerField12: TIntegerField;
    IntegerField13: TIntegerField;
    IBStringField23: TIBStringField;
    IBStringField24: TIBStringField;
    IBStringField25: TIBStringField;
    IBStringField26: TIBStringField;
    IBStringField27: TIBStringField;
    IBStringField28: TIBStringField;
    IBStringField29: TIBStringField;
    IBStringField30: TIBStringField;
    IBStringField31: TIBStringField;
    IBStringField32: TIBStringField;
    DateTimeField3: TDateTimeField;
    DateTimeField4: TDateTimeField;
    IBStringField33: TIBStringField;
    BlobField2: TBlobField;
    IntegerField14: TIntegerField;
    IBStringField34: TIBStringField;
    IntegerField15: TIntegerField;
    IntegerField16: TIntegerField;
    NaturezaCFOP: TIntegerField;
    NaturezaCFOP_DESCRICAO: TIBStringField;
    NaturezaMOV_ESTOQUE_FISCAL: TIBStringField;
    Cliente_EnderecoENDERECO_PADRAO: TIBStringField;
    dsLinkEndereco: TDataSource;
    Pessoas_FJID_CLIENTE: TIntegerField;
    NaturezaIMP_PEDIDO: TIBStringField;
    NaturezaREL_GERENCIAL: TIBStringField;
    Tipo_DocumentoCODIGO_FISCAL: TIBStringField;
    SerieTIPO_DOCTO: TIBStringField;
    SerieNFE_IMPRESSAO: TIBStringField;
    ProdutosTRIB_PIS: TIBStringField;
    ProdutosTRIB_COFINS: TIBStringField;
    ProdutosTRIB_IPI: TIBStringField;
    MovimentoVALOR: TFloatField;
    ProdutosBCH_CODIGO: TIntegerField;
    ProdutosVENCTO_PRC_VENDA: TDateField;
    ProdutosCSOSN: TIntegerField;
    ProdutosCOD_GETIN: TIBStringField;
    Localizacao: TIBDataSet;
    LocalizacaoCODIGO: TIntegerField;
    LocalizacaoCNPJ: TIBStringField;
    LocalizacaoDESCRICAO: TIBStringField;
    ProdutosCOD_LOCALIZACAO_1: TIntegerField;
    ProdutosCOD_LOCALIZACAO_2: TIntegerField;
    ProdutosCOD_LOCALIZACAO_3: TIntegerField;
    Pessoas_FJMAP_LAT: TIBStringField;
    Pessoas_FJMAP_LONG: TIBStringField;
    ClientesCATEGORIA: TIntegerField;
    ClientesSINCRONIZA_FILIAIS: TIBStringField;
    ProdutosCOD_TECNICO: TIntegerField;
    ProdutosEST_DISPONIVEL: TIBBCDField;
    procedure Pessoas_FJAfterInsert(DataSet: TDataSet);
    procedure Pessoas_FJPESSOAGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure Pessoas_FJPESSOASetText(Sender: TField; const Text: String);
    procedure LogradourosAfterClose(DataSet: TDataSet);
    procedure LogradourosAfterInsert(DataSet: TDataSet);
    procedure LogradourosBeforeOpen(DataSet: TDataSet);
    procedure UnidadesAfterInsert(DataSet: TDataSet);
    procedure SubgruposAfterInsert(DataSet: TDataSet);
    procedure NaturezaESGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure NaturezaINTERESTADUALGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure NaturezaAfterInsert(DataSet: TDataSet);
    procedure ProdutosAfterInsert(DataSet: TDataSet);
    procedure ProdutosCODIGOValidate(Sender: TField);
    procedure ProdutosCTEGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure ProdutosORIGEMGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure SubgruposBeforePost(DataSet: TDataSet);
    procedure PropriedadesAfterInsert(DataSet: TDataSet);
    procedure PropriedadesBeforePost(DataSet: TDataSet);
    procedure Produtos_SimilaresCalcFields(DataSet: TDataSet);
    procedure ProdutosCTESetText(Sender: TField; const Text: String);
    procedure ProdutosCTIESetText(Sender: TField; const Text: String);
    procedure ProdutosORIGEMSetText(Sender: TField; const Text: String);
    procedure Produtos_SimilaresAfterInsert(DataSet: TDataSet);
    procedure ClientesCLASSIFGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure ClientesCLASSIFSetText(Sender: TField; const Text: String);
    procedure ClientesAfterInsert(DataSet: TDataSet);
    procedure FornecedoresAfterInsert(DataSet: TDataSet);
    procedure Formas_PagtoAfterInsert(DataSet: TDataSet);
    procedure Movimento_ContabilNewRecord(DataSet: TDataSet);
    procedure Movimento_ContabilBeforePost(DataSet: TDataSet);
    procedure MovimentoNewRecord(DataSet: TDataSet);
    procedure Tipo_DocumentoAfterInsert(DataSet: TDataSet);
    procedure MovimentoBeforePost(DataSet: TDataSet);
    procedure Movimento_ContabilCONTAValidate(Sender: TField);
    procedure Movimento_ContabilAfterPost(DataSet: TDataSet);
    procedure VendedoresNewRecord(DataSet: TDataSet);
    procedure ProdutosNewRecord(DataSet: TDataSet);
    procedure Formas_PagtoNewRecord(DataSet: TDataSet);
    procedure Formas_PagtoNPARCELASValidate(Sender: TField);
    procedure TerceirosNewRecord(DataSet: TDataSet);
    procedure ClientesFREQUENCIAGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure ClientesFREQUENCIASetText(Sender: TField;
      const Text: String);
    procedure SubgruposNewRecord(DataSet: TDataSet);
    procedure Subgrupos_CotasAfterInsert(DataSet: TDataSet);
    procedure MotoristasAfterInsert(DataSet: TDataSet);
    procedure Rotas_CidadesAfterInsert(DataSet: TDataSet);
    procedure SerieNewRecord(DataSet: TDataSet);
    procedure SerieAfterInsert(DataSet: TDataSet);
    procedure FuncionariosAfterInsert(DataSet: TDataSet);
    procedure CargasNewRecord(DataSet: TDataSet);
    procedure ClientesNewRecord(DataSet: TDataSet);
    procedure ClassificacoesNewRecord(DataSet: TDataSet);
    procedure SubUnidadesNewRecord(DataSet: TDataSet);
    procedure Subgrupos_CotasNewRecord(DataSet: TDataSet);
    procedure ProdutosCalcFields(DataSet: TDataSet);
    procedure BoletoBancarioNewRecord(DataSet: TDataSet);
    procedure AlteraPessoas_FJPESSOAGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure AlteraPessoas_FJPESSOASetText(Sender: TField;
      const Text: String);
    procedure Produtos_AplicacoesNewRecord(DataSet: TDataSet);
    procedure Produtos_AplicacoesPRODUTOValidate(Sender: TField);
    procedure ProdutosBeforeOpen(DataSet: TDataSet);
    procedure VeiculoAfterInsert(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure ProdutosBeforePost(DataSet: TDataSet);
    procedure ClientesPERIODO_FATURAMENTOGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure ClientesPERIODO_FATURAMENTOSetText(Sender: TField;
      const Text: String);
    procedure Altera_PropriedadeAfterInsert(DataSet: TDataSet);
    procedure Altera_PropriedadeBeforePost(DataSet: TDataSet);
    procedure Formas_PagtoFATURA_FUTURAValidate(Sender: TField);
    procedure Contas_PessoasNewRecord(DataSet: TDataSet);
    procedure LoteBeforePost(DataSet: TDataSet);
    procedure LoteNewRecord(DataSet: TDataSet);
    procedure FornecedoresNewRecord(DataSet: TDataSet);
    procedure Pessoas_FJCIDADEValidate(Sender: TField);
    procedure Pessoas_FJUFValidate(Sender: TField);
    procedure NotaPromissoriaNewRecord(DataSet: TDataSet);
    procedure NotaPromissoriaLPPGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure NotaPromissoriaLPPSetText(Sender: TField;
      const Text: String);
    procedure ProdutosCOD_AGRUPValidate(Sender: TField);
    procedure Pessoas_FJCPF_CGCValidate(Sender: TField);
    procedure ProdutosCTEValidate(Sender: TField);
    procedure Precos_EspeciaisAfterInsert(DataSet: TDataSet);
    procedure Precos_EspeciaisPRODUTOValidate(Sender: TField);
    procedure MecanicosNewRecord(DataSet: TDataSet);
    procedure ViajanteNewRecord(DataSet: TDataSet);
    procedure AgrupadorAfterInsert(DataSet: TDataSet);
    procedure MovimentoAfterPost(DataSet: TDataSet);
    procedure EstadosNewRecord(DataSet: TDataSet);
    procedure ClientesCalcFields(DataSet: TDataSet);
    procedure VENDEDOR_FAIXAAfterInsert(DataSet: TDataSet);
    procedure VENDEDOR_FAIXANewRecord(DataSet: TDataSet);
    procedure PropriedadesNewRecord(DataSet: TDataSet);
    procedure Centro_CustoTIPO_CENTROGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure Centro_CustoTIPO_CENTROSetText(Sender: TField;
      const Text: String);
    procedure AgrupadorBeforePost(DataSet: TDataSet);
    procedure MovimentoAfterEdit(DataSet: TDataSet);
    procedure GradesBeforePost(DataSet: TDataSet);
    procedure GradesNewRecord(DataSet: TDataSet);
    procedure VeiculoNewRecord(DataSet: TDataSet);
    procedure ProdutosMARGEM_BRUTAValidate(Sender: TField);
    procedure AtividadesPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure GRADES_NUMEROSNewRecord(DataSet: TDataSet);
    procedure Perfil_GradesBeforePost(DataSet: TDataSet);
    procedure Perfil_Grades_AdicionalNewRecord(DataSet: TDataSet);
    procedure Pessoas_FJBeforePost(DataSet: TDataSet);
    procedure GradesAfterInsert(DataSet: TDataSet);
    procedure Produtos_TributacaoNewRecord(DataSet: TDataSet);
    procedure Produtos_TributacaoCTEGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure Produtos_TributacaoCTIESetText(Sender: TField;
      const Text: String);
    procedure Perfil_Grades_AdicionalCODIGOSetText(Sender: TField;
      const Text: String);
    procedure ClientesSENHA_PDVValidate(Sender: TField);
    procedure BancosAfterInsert(DataSet: TDataSet);
    procedure FornecedoresBeforePost(DataSet: TDataSet);
    procedure MesasNewRecord(DataSet: TDataSet);
    procedure edtFornecedoresCIDADEValidate(Sender: TField);
    procedure PropriedadesCIDADEValidate(Sender: TField);
    procedure edtFornecedoresPESSOASetText(Sender: TField;
      const Text: String);
    procedure edtFornecedoresPESSOAGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure ProdutosUNIDADEValidate(Sender: TField);
    procedure RegioesAfterInsert(DataSet: TDataSet);
    procedure Centro_CustoAfterInsert(DataSet: TDataSet);
    procedure MarcasAfterInsert(DataSet: TDataSet);
    procedure LogradourosBeforePost(DataSet: TDataSet);
    procedure TecnicoAfterInsert(DataSet: TDataSet);
    procedure Formas_Pagto_ParcelasNewRecord(DataSet: TDataSet);
    procedure Formas_PagtoINTERVALO_PRE_DEFINIDOValidate(Sender: TField);
    procedure Formas_PagtoVENCTO_FIXOValidate(Sender: TField);
    procedure Pessoas_FJPESSOAValidate(Sender: TField);
    procedure edtFornecedoresCPF_CGCValidate(Sender: TField);
    procedure Cliente_EnderecoBeforeOpen(DataSet: TDataSet);
    procedure Cliente_EnderecoBeforePost(DataSet: TDataSet);
    procedure Cliente_EnderecoAfterPost(DataSet: TDataSet);
    procedure Tipo_EnderecoBeforePost(DataSet: TDataSet);
    procedure ContatoBeforePost(DataSet: TDataSet);
    procedure ContatoAfterPost(DataSet: TDataSet);
    procedure Cliente_EnderecoAfterInsert(DataSet: TDataSet);
    procedure Pessoas_FJAfterScroll(DataSet: TDataSet);
    procedure ClientesBeforePost(DataSet: TDataSet);
    procedure ProdutosTRIB_PISGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure ProdutosTRIB_PISSetText(Sender: TField; const Text: String);
    procedure ProdutosTRIB_COFINSGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure ProdutosTRIB_COFINSSetText(Sender: TField;
      const Text: String);
    procedure ProdutosTRIB_IPISetText(Sender: TField; const Text: String);
    procedure ProdutosTRIB_IPIGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure ProdutosAfterPost(DataSet: TDataSet);
    procedure Pessoas_FJAfterPost(DataSet: TDataSet);
    procedure FornecedoresBeforeOpen(DataSet: TDataSet);
    procedure ProdutosGRUPOChange(Sender: TField);
    procedure SubgruposProdBeforeOpen(DataSet: TDataSet);
    procedure ProdutosGRUPOValidate(Sender: TField);
    procedure ProdutosAfterEdit(DataSet: TDataSet);
    procedure ProdutosCSOSNGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure ProdutosCSOSNSetText(Sender: TField; const Text: String);
    procedure LocalizacaoBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
    //ARMAZENA O ESTADO ATUAL DO MOVIMENTO CONTABIL
    ESTADO_CTB: CHAR ;

  public
    Produto_Lote : string;
    Peso_Lote : real;
    procedure SetMaskCNPJ_CPF;
    { Public declarations }
  end;

var
   DMCadastros: TDMCadastros;


implementation

uses Application_DM,
     Aplicacoes_Form,
     Plano_DM,
     FormasPagto_Form,
     Funcoes,
     PessoasFJ_Form,
     Clientes_Form,
     Vendas_Dm, EntraDescricao_Form, Produtos_Form, Variants;

{$R *.DFM}

procedure TDMCadastros.Pessoas_FJAfterInsert(DataSet: TDataSet);
begin
  TIBDataSet(DataSet).FieldByName('CNPJ').Value := DMApp.Cnpj;
  TIBDataSet(DataSet).FieldByName('CODIGO').Value := DMApp.GerarCodigo(UpperCase(Dataset.Name), 0) + 1;
  TIBDataSet(DataSet).FieldByName('UF').Value        := 'MS';
  TIBDataSet(DataSet).FieldByName('PESSOA').Value    := 'M';
  TIBDataSet(DataSet).FieldByName('DT_CADASTRO').Value := Date();
end;

procedure TDMCadastros.Pessoas_FJPESSOAGetText(Sender: TField; var Text: String; DisplayText: Boolean);
begin
  If Sender.Value = 'F' Then
     Text := 'Fisica Feminina';
  If Sender.Value = 'M' Then
     Text := 'Fisica Masculina';
  If Sender.Value = 'J' Then
     Text := 'Juridica';
end;

procedure TDMCadastros.Pessoas_FJPESSOASetText(Sender: TField; const Text: String);
begin
  If Text = 'Fisica Feminina' Then
     Sender.Value := 'F';
  If Text = 'Fisica Masculina' Then
     Sender.Value := 'M';
  If Text = 'Juridica' Then
     Sender.Value := 'J';
end;

procedure TDMCadastros.LogradourosAfterClose(DataSet: TDataSet);
begin
  If (DataSet is TIBQuery) Then
     (Dataset as TIBQuery).UnPrepare;
  If (DataSet is TIBDataSet) Then
     (Dataset as TIBDataset).UnPrepare;
end;

procedure TDMCadastros.LogradourosAfterInsert(DataSet: TDataSet);
begin
  DataSet.Fields[0].Value := DMApp.Cnpj;
  Dataset.Fields[1].Value := DMApp.GerarCodigo(UpperCase(Dataset.Name), 0) + 1;
end;

procedure TDMCadastros.LogradourosBeforeOpen(DataSet: TDataSet);
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

procedure TDMCadastros.UnidadesAfterInsert(DataSet: TDataSet);
begin
  UnidadesCNPJ.Value := DMApp.Cnpj;
  UnidadesSIGLA.Clear;
end;

procedure TDMCadastros.SubgruposAfterInsert(DataSet: TDataSet);
begin
  SubGruposCNPJ.Value       := DMApp.Cnpj;
  SubgruposGRUPO.Value      := GruposCODIGO.Value;
  SubgruposSUBGRUPO.Value   := DMApp.GerarCodigoSubGrupo(DMApp.Cnpj, GruposCODIGO.Value);
end;

procedure TDMCadastros.NaturezaESGetText(Sender: TField; var Text: String; DisplayText: Boolean);
begin
  If Sender.Value = 'E' Then
     Text := 'Entrada';
  If Sender.Value = 'S' Then
     Text := 'Saida';
end;

procedure TDMCadastros.NaturezaINTERESTADUALGetText(Sender: TField; var Text: String; DisplayText: Boolean);
begin
  If Sender.Value = 'E' Then
     Text := 'Estadual';
  If Sender.Value = 'I' Then
     Text := 'Interestadual';
end;

procedure TDMCadastros.NaturezaAfterInsert(DataSet: TDataSet);
begin
  //
  NaturezaCNPJ.Value            := DMApp.Cnpj;
  //
  NaturezaES.Value              := 'S';
  NaturezaINTERESTADUAL.Value   := 'E';

  //
  NaturezaPERC_ICMS.Value       := 0;
  NaturezaPERC_ICMS_REV.Value   := 0;
  NaturezaPERC_ISS.Value        := 0;
  //
  
  NaturezaMOV_CAIXA.Value       := 'N';
  NaturezaMOV_ESTOQUE.Value     := 'N';
  NaturezaPAGA_COMISSAO.Value   := 'N';
  NaturezaCOMPUTA_VENDA.Value   := 'N';
  NaturezaRESUMO_CONTABIL.Value := 'N';
  NaturezaALTERA_CUSTO.Value    := 'N';
  NaturezaCONSIGNACAO.Value     := 'N';
  NaturezaREMESSA.Value         := 'N';
  NaturezaDEVOLUCAO.Value       := 'N';
  NaturezaENTREGA_FUTURA.Value  := 'N';
  NaturezaTTL_RES_DIVERSOS.Value:= 'N';
  NaturezaPAGA_COMISSAO.Value   := 'N';
  NaturezaATIVA.Value := 'S';
  NaturezaGERA_FINANCEIRO.Value := 'S';
  NaturezaTTL_RES_BONIFICACAO.Value := 'N';
end;

procedure TDMCadastros.ProdutosAfterInsert(DataSet: TDataSet);
begin
  ProdutosCNPJ.Value           := DMApp.Cnpj;
  ProdutosCODIGO_INTERNO.Value := DMApp.GerarCodigo(UpperCase(Dataset.Name), 0) + 1;
end;

procedure TDMCadastros.ProdutosCODIGOValidate(Sender: TField);
begin
     If Not(Sender.IsNull) And (Produtos.State in [dsinsert]) Then
     begin
          //BUSCA OS VALORES DO PRODUTO
          Valida_Produto.Close ;
          Valida_Produto.ParamByName ('CNPJ').AsString        := DmApp.Cnpj   ;
          Valida_Produto.ParamByName ('PRODUTO').AsString     := Sender.Value ;
          Valida_Produto.ExecProc ;

          If Not Valida_Produto.ParamByName('NOME').IsNull
          Then Begin
               MessageDlg('Produto Já Cadastrado, Verifique!', mtError, [mbOK], 0);
               Abort ;
          End
          else
              ProdutosCodigo_2.Value := Sender.Value;
     end;
end;

procedure TDMCadastros.ProdutosCTEGetText(Sender: TField; var Text: String; DisplayText: Boolean);
begin
  If Sender.Value = 1 Then
     Text := '1 - Tributada Integralmente';

  If Sender.Value = 2 Then
     Text := '2 - Tributada com Reduçao na Base de Cálculo';

  If Sender.Value = 3 Then
     Text := '3 - Isento de ICMS';

  If Sender.Value = 4 Then
     Text := '4 - ICMS nao incidência';

  If Sender.Value = 5 Then
     Text := '5 - Diferido';

  If Sender.Value = 6 Then
     Text := '6 - Substituiçao Tributária';

  If Sender.Value = 7 Then
     Text := '7 - ISS';
end;

procedure TDMCadastros.ProdutosORIGEMGetText(Sender: TField; var Text: String; DisplayText: Boolean);
begin
  If Sender.Value = 0 Then
     Text := '0 - Nacional';
  If Sender.Value = 1 Then
     Text := '1 - Importada ( Adquirida no Mercado Interno )';
  If Sender.Value = 2 Then
     Text := '2 - Importada Diretamente';
end;


procedure TDMCadastros.SubgruposBeforePost(DataSet: TDataSet);
begin
  //
  If DataSet.State = dsInsert Then
     SubGruposSUBGRUPO.Value := DMApp.GerarCodigoSubGrupo(DMApp.Cnpj, SubGruposGRUPO.Value);
end;

procedure TDMCadastros.PropriedadesAfterInsert(DataSet: TDataSet);
begin
  //
  PropriedadesCNPJ.vALUE        := DmApp.Cnpj ;
  PropriedadesPESSOA_FJ.Value   := Pessoas_FJCODIGO.Value;
  PropriedadesPROPRIEDADE.Value := DMApp.GerarCodigoPropriedade(Pessoas_FJCODIGO.Value);
end;

procedure TDMCadastros.PropriedadesBeforePost(DataSet: TDataSet);
begin
  //
  If Propriedades.State = dsInsert Then
     PropriedadesPROPRIEDADE.Value := DMApp.GerarCodigoPropriedade(Pessoas_FJCODIGO.Value);
end;

procedure TDMCadastros.Produtos_SimilaresCalcFields(DataSet: TDataSet);
begin
  //
  Produtos_SimilaresNOME_SIMILAR.Value := DMApp.NomeSimilar(Produtos_SimilaresPRODUTO_A.Value,
                                                            Produtos_SimilaresPRODUTO_B.Value,
                                                            Produtos_Similares.ParamByName('CODIGO').asString);
end;

procedure TDMCadastros.ProdutosCTESetText(Sender: TField; const Text: String);
begin
  If Text = '1 - Tributada Integralmente' Then
     Sender.Value := 1;

  If Text = '2 - Tributada com Redução na Base de Cálculo' Then
     Sender.Value := 2;

  If Text = '3 - Isento de ICMS' Then
     Sender.Value := 3;

  If Text = '4 - ICMS não incidência' Then
     Sender.Value := 4;
     
  If Text = '5 - Diferido' Then
     Sender.Value := 5;

  If Text = '6 - Substituição Tributária' Then
     Sender.Value := 6;

  If Text = '7 - ISS' Then
     Sender.Value := 7;
end;

procedure TDMCadastros.ProdutosCTIESetText(Sender: TField; const Text: String);
begin
  If Text = '1 - Tributada Integralmente' Then
     Sender.Value := 1;
  If Text = '2 - Tributada com Reduçao na Base de Cálculo' Then
     Sender.Value := 2;
  If Text = '3 - Isento de ICMS' Then
     Sender.Value := 3;
  If Text = '4 - ICMS nao incidência' Then
     Sender.Value := 4;
  If Text = '5 - Diferido' Then
     Sender.Value := 5;
  If Text = '6 - Substituiçao Tributária' Then
     Sender.Value := 6;
  If Text = '7 - ISS' Then
     Sender.Value := 7;
end;

procedure TDMCadastros.ProdutosORIGEMSetText(Sender: TField; const Text: String);
begin
  If Text = '0 - Nacional' Then
     Sender.Value := 0;
  If Text = '1 - Importada ( Adquirida no Mercado Interno )' Then
     Sender.Value := 1;
  If Text = '2 - Importada Diretamente' Then
     Sender.Value := 2;
end;

procedure TDMCadastros.Produtos_SimilaresAfterInsert(DataSet: TDataSet);
begin
  //
  Produtos_SimilaresPRODUTO_A.Value := Produtos_Similares.ParamByName('CODIGO').asString;
end;

procedure TDMCadastros.ClientesCLASSIFGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  If Sender.Value = 'B' Then
     Text := 'Bom';
  If Sender.Value = 'M' Then
     Text := 'Médio';
  If Sender.Value = 'R' Then
     Text := 'Regular';
end;

procedure TDMCadastros.ClientesCLASSIFSetText(Sender: TField;
  const Text: String);
begin
  If Text = 'Bom' Then
     Sender.Value := 'B';
  If Text = 'Médio' Then
     Sender.Value := 'M';
  If Text = 'Regular' Then
     Sender.Value := 'R';
end;

procedure TDMCadastros.ClientesAfterInsert(DataSet: TDataSet);
begin
  //
  ClientesCNPJ.Value         := DMApp.Cnpj;
  ClientesCLASSIF.Value      := 'M';
  ClientesDIA_PREF_FAT.Value := 0;
  ClientesREQUISICAO.Value   := 'N';
  ClientesSUB_TRIBUTARIO.value := 'N';
  ClientesRET_INSS.value := 'N';
  ClientesRET_IRRF.value := 'N';
  ClientesRET_PIS.value := 'N';
end;

procedure TDMCadastros.FornecedoresAfterInsert(DataSet: TDataSet);
begin
  FornecedoresCNPJ.Value := DMApp.Cnpj;
end;

procedure TDMCadastros.Formas_PagtoAfterInsert(DataSet: TDataSet);
begin
  //
  DataSet.Fields[0].Value := DMApp.Cnpj;

  DataSet.FieldByName('ACRESCIMO').asFloat   := 0;
  DataSet.FieldByName('DESCONTO').asFloat    := 0;
  DataSet.FieldByName('NPARCELAS').asInteger := 1;
  DataSet.FieldByName('INTERVALO').asInteger := 30;
  DataSet.FieldByName('COMENTRADA').asString := 'N';
  DataSet.FieldByName('AVISTA').asString     := 'N';
  Formas_PagtoVENCTO_FIXO.Value := 'N';
  Formas_PagtoINTERVALO_PRE_DEFINIDO.value := 'N';
end;

procedure TDMCadastros.Movimento_ContabilNewRecord(DataSet: TDataSet);
VAR
   MES, ANO, DIA: WORD;
begin
     DecodeDate(DATE, ANO, MES, DIA );
     MOVIMENTO_CONTABIL.FIELDBYNAME('MES').Value    := MES  ;
     MOVIMENTO_CONTABIL.FIELDBYNAME('ANO').Value    := ANO  ;
     MOVIMENTO_CONTABIL.FIELDBYNAME('DATA').Value   := DmApp.Data_Servidor ;
     MOVIMENTO_CONTABILVALOR.Value                  := 0    ;
     MOVIMENTO_CONTABIL.FieldByName('CODIGO').Value := DMApp.GerarCodigo('MOVCONTABIL',0 ) + 1 ;
     if (DmApp.EXIBE_ACERTO = 'S') then
       MOVIMENTO_CONTABIL.FieldByName('PLANILHA').Value := DMApp.GerarCodigo('ACERTO',0 ) + 1
     else
       MOVIMENTO_CONTABIL.FieldByName('PLANILHA').Value := DMApp.GerarCodigo('PLANILHA',0 ) + 1  ;
     MOVIMENTO_CONTABILORIGEM.VALUE                 := 'MOV' ;
     MOVIMENTO_CONTABILTIPO.value                   := 'C' ;
     Movimento_ContabilCNPJ.Value                   := DmApp.Cnpj ;
     Movimento_ContabilTIPO_LANCAMENTO.Value        := 'M'        ;
end;

procedure TDMCadastros.Movimento_ContabilBeforePost(DataSet: TDataSet);
begin
     IF MOVIMENTO_CONTABIL.State = dsInsert
     THEN BEGIN
          MOVIMENTO_CONTABIL.FieldByName('CODIGO'  ).Value := DMApp.GerarCodigo('MOVCONTABIL', 1) ;
          MOVIMENTO_CONTABIL.FieldByName('PLANILHA').Value := DMApp.GerarCodigo('PLANILHA'   , 1) ;
     END;
end;

procedure TDMCadastros.MovimentoNewRecord(DataSet: TDataSet);
VAR
   MES, ANO, DIA: WORD;
begin
     DecodeDate(DATE, ANO, MES, DIA );
     MOVIMENTOCNPJ.Value     := DMApp.Cnpj;
     MOVIMENTOMES.Value      := MES  ;
     MOVIMENTOANO.Value      := ANO  ;
     if DmApp.DT_CX_MOVTO_ANTERIOR <> 'N' then
        MOVIMENTODATA.Value     := (DmApp.Data_Servidor - 1)
     else
       MOVIMENTODATA.Value     := (DmApp.Data_Servidor) ;
       
     MOVIMENTOVALOR.Value    := 0    ;
     MOVIMENTOCODIGO.Value   := DMApp.GerarCodigo('MOVCONTABIL',0 ) + 1 ;
     if (DmApp.EXIBE_ACERTO = 'S') then
       MOVIMENTOPLANILHA.Value := DMApp.GerarCodigo('ACERTO',0 ) + 1
     else
       MOVIMENTOPLANILHA.Value := DMApp.GerarCodigo('PLANILHA',0 ) + 1  ;
     MOVIMENTOORIGEM.VALUE   := 'MOV' ;
     MOVIMENTOTIPO.value     := 'D' ;
     MovimentoCONTA.Value    := DmPlano.PlanoMovimentoCONTA.Value ;
     MovimentoBANCO.Value    := DmPlano.PlanoMovimentoBANCO.Value ;
     MovimentoTIPO_LANCAMENTO.Value := 'M' ;
     ESTADO_CTB := 'I' ;//INSERINDO
end;

procedure TDMCadastros.Tipo_DocumentoAfterInsert(DataSet: TDataSet);
begin
     Tipo_DocumentoCNPJ.Value := DMApp.Cnpj;
     Tipo_DocumentoBLT.Value := 'N';
end;

procedure TDMCadastros.MovimentoBeforePost(DataSet: TDataSet);
begin
     IF MOVIMENTO.State = dsInsert
     THEN BEGIN
          MOVIMENTO.FieldByName('CODIGO'  ).Value := DMApp.GerarCodigo('MOVCONTABIL', 1) ;
           if (DmApp.EXIBE_ACERTO = 'S') then
              MOVIMENTO.FieldByName('PLANILHA').Value := DMApp.GerarCodigo('ACERTO',0 ) + 1
           else
              MOVIMENTO.FieldByName('PLANILHA').Value := DMApp.GerarCodigo('PLANILHA'   , 1) ;
     END;
end;

procedure TDMCadastros.Movimento_ContabilCONTAValidate(Sender: TField);
begin
     If Sender.IsNull
     Then
         Exit ;

     Geral.Close ;
     Geral.Sql.Clear ;

     Geral.Params.CreateParam ( FtString , 'E', PtInput );
     Geral.Params.CreateParam ( FtInteger, 'C', PtInput );

     Geral.Sql.Add (' Select conta From Ctb_PlanoConta Where Conta = :C and Cnpj = :E ');

     Geral.ParamByName ('E').AsString  := DmApp.Cnpj   ;
     Geral.ParamByName ('C').AsInteger := Sender.Value ;

     Geral.Prepare ;

     Geral.Open ;

     If Geral.Fields[0].isNull
     then Begin
          MessageDlg('Conta Inexistente!',mtError,[mbOk],0);
          Abort;
     end
     else begin
          If Movimento_ContabilCONTA.value = Movimento_ContabilCONTRA_PARTIDA.value
          then begin
               MessageDlg('Conta Duplicada no Lançamento, Crédito e Débito!',mtError,[mbOk],0);
               Abort;
          end;
     end;
end;

procedure TDMCadastros.Movimento_ContabilAfterPost(DataSet: TDataSet);
begin
     Movimento_Contabil.FetchAll ;
end;

procedure TDMCadastros.VendedoresNewRecord(DataSet: TDataSet);
begin
     VendedoresCOM_VISTA.Value := 0;
     VendedoresCOM_PRAZO.Value := 0;
end;

procedure TDMCadastros.ProdutosNewRecord(DataSet: TDataSet);
Var
   I: Integer;
begin


     ProdutosDEBITA_ICMS.Value      := 'N' ;
     ProdutosATIVO.Value            := 'S' ;
     ProdutosCOMPLEMENTO_NF.Value   := 'N' ;
     ProdutosVENDE_FRACIONADO.Value := 'N' ;
     ProdutosPOSSUI_LOTE.Value      := 'N' ;
     ProdutosCTE.Value              := 1   ;
     ProdutosCTIe.Value             := 1   ;
     ProdutosNEG_QTDADE_2.Value     := 'N' ;
     ProdutosEtiqueta_ent.Value     := 'N' ;
     ProdutosComplemento_NF.Value   := 'N' ;
     ProdutosPROD_PESAVEL.Value     := 'N' ;
     ProdutosSERVICO.Value          := 'N' ;
     ProdutosCUSTO_INDEXADO.Value   := 0   ;
     ProdutosSINCRONIZA_FILIAIS.Value          := 'S' ;
     For I := 0 to Produtos.FieldCount - 1 do
     begin
          if Produtos.Fields.FIELDS[i].DataType = FtFloat
          then Begin
               Produtos.Fields[i].Value := 0;
          end;
     end;
   ProdutosMARGEM_BRUTA.value := DmApp.MARGEM_BRUTA;
end;

procedure TDMCadastros.Formas_PagtoNewRecord(DataSet: TDataSet);
begin
     Formas_PagtoAVISTA.Value        := 'N' ;
     Formas_PagtoINTERVALO.Value     := 0   ;
     Formas_PagtoCOMENTRADA.Value    := 'N' ;
     Formas_PagtoNPARCELAS.Value     := 0   ;
     Formas_PagtoFATURA_FUTURA.Value := 'N' ;
     Formas_PagtoATIVO.Value         := 'S' ;
     Formas_PagtoVENCTO_FIXO.Value := 'N';
     Formas_PagtoINTERVALO_PRE_DEFINIDO.value := 'N';
end;

procedure TDMCadastros.Formas_PagtoNPARCELASValidate(Sender: TField);
begin
     WITH FrmFormasPagto DO
     BEGIN
          IF Formas_PagtoAVISTA.Value = 'S'
          THEN BEGIN
               cbNParcelas.Enabled          := FALSE ;
               edIntervalo.Enabled          := FALSE ;
               cbEntrada.Enabled            := FALSE ;
               edtDtVenctoFixo.Enabled      := false;

               Formas_PagtoINTERVALO.Value  := 0     ;
               Formas_PagtoCOMENTRADA.Value := 'N'   ;
               Formas_PagtoVENCTO_FIXO.Value := 'N';
               Formas_PagtoINTERVALO_PRE_DEFINIDO.value := 'N';
          END
          ELSE
          BEGIN
            cbNParcelas.Enabled          := TRUE ;
            edIntervalo.Enabled          := TRUE ;
            cbEntrada.Enabled            := TRUE ;
            edtDtVenctoFixo.Enabled      := true;
          END;
     END;
end;

procedure TDMCadastros.TerceirosNewRecord(DataSet: TDataSet);
begin
     TerceirosCOM_PRAZO.Value := 0;
     TerceirosCOM_VISTA.Value := 0;
end;

procedure TDMCadastros.ClientesFREQUENCIAGetText(Sender: TField;  var Text: String; DisplayText: Boolean);
begin
  If Sender.Value = 'Fre' Then
     Text := 'Frequente';
  If Sender.Value = 'Exp' Then
     Text := 'Exporadico';
  If Sender.Value = 'Eve' Then
     Text := 'Eventual';
end;

procedure TDMCadastros.ClientesFREQUENCIASetText(Sender: TField; const Text: String);
begin
  If Text = 'Frequente' Then
     Sender.Value := 'Fre';
  If Text = 'Exporadico' Then
     Sender.Value := 'Exp';
  If Text = 'Eventual' Then
     Sender.Value := 'Eve';
end;

procedure TDMCadastros.SubgruposNewRecord(DataSet: TDataSet);
begin
     
     SubGruposDIGITA_PRC.Value   := 'N';
     SubgruposDESCONTO_MAX.Value := 0  ;
end;

procedure TDMCadastros.Subgrupos_CotasAfterInsert(DataSet: TDataSet);
begin
  DataSet.Fields[0].Value := DMApp.Cnpj;
end;

procedure TDMCadastros.MotoristasAfterInsert(DataSet: TDataSet);
begin
  //
  DataSet.FieldByName('CNPJ').asString := DMApp.Cnpj;
end;

procedure TDMCadastros.Rotas_CidadesAfterInsert(DataSet: TDataSet);
begin
  //
  DataSet.FieldByName('CNPJ').asString  := DMApp.Cnpj;
  DataSet.FieldByName('ROTA').asInteger := Rotas.FieldByName('CODIGO').asInteger;
end;

procedure TDMCadastros.SerieNewRecord(DataSet: TDataSet);
Var
   I: Integer;
begin
     For I := 0 to Serie.FieldCount - 1 do
     begin
          if Serie.Fields.FIELDS[i].DataType = FtInteger
          then Begin
               Serie.Fields[i].Value := 0;
          end;
     end;
     SerieTIPO.Value := 'P' ;
     SerieLOCALDUPLICATAS.Value := 'C' ;
end;

procedure TDMCadastros.SerieAfterInsert(DataSet: TDataSet);
begin
   DataSet.Fields[0].Value := DMApp.Cnpj;
end;

procedure TDMCadastros.FuncionariosAfterInsert(DataSet: TDataSet);
begin
     DataSet.Fields[0].Value := DMApp.Cnpj;
end;

procedure TDMCadastros.CargasNewRecord(DataSet: TDataSet);
begin
     CargasPESO.Value := 0;
     CargasVOLUME.Value := 0;
end;

procedure TDMCadastros.ClientesNewRecord(DataSet: TDataSet);
begin
     ClientesBLOQUEADO.VALUE              := 'N' ;
     ClientesAJUSTE_AUT_FATURAS.VALUE     := 'N' ;
     ClientesLIMITE_TEMPO.Value           := 0   ;
     ClientesLIMITE_CREDITO.Value         := 0   ;
     ClientesPERIODO_FATURAMENTO.Value    := 'M' ;
     ClientesTOLERANCIA_FATURAMENTO.Value := 0   ;
     ClientesNAO_COBR_JUR_ATE.Value       := 0   ;
     ClientesASSINA_NOTA.VALUE            := 'N' ;
     ClientesCONTROLA_KM.VALUE            := 'N' ;
     ClientesCONTROLA_PLACA.VALUE         := 'N' ;
     ClientesCONS_REV.Value               := 'C' ;
     Clientesfrequencia.VALUE := 'Eve';
     Clientesclassif.VALUE := 'R';
     ClientesCNPJ.Value           := Pessoas_FJCNPJ.value   ;
     ClientesPESSOA_FJ.Value      := Pessoas_FJCODIGO.Value ;
end;

procedure TDMCadastros.ClassificacoesNewRecord(DataSet: TDataSet);
begin
     ClassificacoesDIG_SENHA.Value := 'N' ;
end;

procedure TDMCadastros.SubUnidadesNewRecord(DataSet: TDataSet);
begin
     SubUnidadesCNPJ.Value  := UnidadesCNPJ.Value  ;
     SubUnidadesSIGLA.Value := UnidadesSIGLA.Value ;
end;

procedure TDMCadastros.Subgrupos_CotasNewRecord(DataSet: TDataSet);
begin
     Subgrupos_CotasVENDEDOR.Value       := SelVendedorCODIGO.Value ;                         
     Subgrupos_CotasVALOR.Value          := 0;
     Subgrupos_CotasCOMISSAO_VISTA.Value := 0;
     Subgrupos_CotasCOMISSAO_PRAZO.Value := 0;
end;

procedure TDMCadastros.ProdutosCalcFields(DataSet: TDataSet);
begin
  If (ProdutosUNIDADE.Value <> ProdutosUNIDADE.OldValue) Or (ProdutosQTD_UM.IsNull) Or(ProdutosQTD_UNIT.IsNull)  Then
  Begin
       //
    if Unidades.Active then
    begin
      If UnidadesSIGLA.Value <> ProdutosUNIDADE.Value Then
        Unidades.Locate('SIGLA', ProdutosUNIDADE.Value, []);
    end;

    If ProdutosSUBUNIDADE.Value > 0  then
       ProdutosQTD_UM.Value   := arredonda((ProdutosQTDADE_2.Value / ProdutosSUBUNIDADE.Value),2)
    else
       ProdutosQTD_UM.Value   := arredonda(ProdutosQTDADE_2.Value,2); //aqui

     ProdutosQTD_UNIT.Value := ProdutosQTDADE_2.Value - (ProdutosQTD_UM.Value * ProdutosSUBUNIDADE.VALUE);
  end;

  ProdutosEstoque_Fisico.Value := ProdutosPRC_CUSTO_MED.Value * ProdutosQTD_UNIT.Value ;
end;

procedure TDMCadastros.BoletoBancarioNewRecord(DataSet: TDataSet);
Var
   I: Integer;
begin
     For I := 0 to BoletoBancario.FieldCount - 1 do
     begin
          if BoletoBancario.Fields.FIELDS[i].DataType = FtInteger
          then Begin
               BoletoBancario.Fields[i].Value := 0;
          end;
     end;
end;

procedure TDMCadastros.AlteraPessoas_FJPESSOAGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  If Sender.Value = 'F' Then
     Text := 'Fisica Feminina';
  If Sender.Value = 'M' Then
     Text := 'Fisica Masculina';
  If Sender.Value = 'J' Then
     Text := 'Juridica';
end;

procedure TDMCadastros.AlteraPessoas_FJPESSOASetText(Sender: TField;
  const Text: String);
begin
  If Text = 'Fisica Feminina' Then
     Sender.Value := 'F';
  If Text = 'Fisica Masculina' Then
     Sender.Value := 'M';
  If Text = 'Juridica' Then
     Sender.Value := 'J';
end;

procedure TDMCadastros.Produtos_AplicacoesNewRecord(DataSet: TDataSet);
begin
     Produtos_AplicacoesCNPJ.Value := DmApp.Cnpj ;
end;

procedure TDMCadastros.Produtos_AplicacoesPRODUTOValidate(Sender: TField);
begin
     If Sender.IsNull
     Then
         Exit ;

     Geral.Close ;
     Geral.Sql.Clear ;

     Geral.Params.CreateParam ( FtString , 'E', PtInput );
     Geral.Params.CreateParam ( FtString , 'C', PtInput );

     Geral.Sql.Add (' Select CODIGO From Est_Produtos Where CODIGO = :C and Cnpj = :E ');

     Geral.ParamByName ('E').AsString  := DmApp.Cnpj   ;
     Geral.ParamByName ('C').AsString  := Sender.Value ;

     Geral.Prepare ;

     Geral.Open ;

     If Geral.Fields[0].isNull
     then Begin
          MessageDlg('Produto Inexistente!',mtError,[mbOk],0);
          Abort;
     end;
end;

procedure TDMCadastros.ProdutosBeforeOpen(DataSet: TDataSet);
begin
  If (DataSet is TIBQuery) Then
     Begin
       (DataSet as TIBQuery).ParamByName('EMPRESA').asString := DMApp.Cnpj;
       (Dataset as TIBQuery).Prepare;
     End;
  If (DataSet is TIBDataset) Then
     Begin
       (DataSet as TIBDataSet).ParamByName('EMPRESA').asString := DMApp.Cnpj;
       (Dataset as TIBDataSet).Prepare;
     End;
end;

procedure TDMCadastros.VeiculoAfterInsert(DataSet: TDataSet);
begin
  //
  VeiculoCNPJ.vALUE      := DmApp.Cnpj ;
end;

procedure TDMCadastros.DataModuleCreate(Sender: TObject);
begin
     IniciaComponentesDm ( Self as TDataModule );

     Pessoas_FJFONE.EditMask        := DmaPP.MASCARA_FONE ;
     Pessoas_FJFAX.EditMask         := DmaPP.MASCARA_FONE ;
     Pessoas_FJCELULAR.EditMask     := DmaPP.MASCARA_FONE ;

     ClientesFONE_TRABALHO.EditMask := DmaPP.MASCARA_FONE ;
     ClientesFONE_LOCAL_CONJUGE.EditMask := DmaPP.MASCARA_FONE ;
     ClientesFONE.EditMask          := DmaPP.MASCARA_FONE ;

     FornecedoresFONE_VEN.EditMask  := DmaPP.MASCARA_FONE ;
     FornecedoresFONE_FIN.EditMask  := DmaPP.MASCARA_FONE ;
     FornecedoresFONE_REP.EditMask  := DmaPP.MASCARA_FONE ;
end;

procedure TDMCadastros.ProdutosBeforePost(DataSet: TDataSet);
begin
    If Dataset.State = dsInsert Then
     ProdutosCODIGO_INTERNO.Value := DMApp.GerarCodigo(UpperCase(Dataset.Name), 1);

    ProdutosCNPJ.Value := DmApp.Cnpj ;

    if (ProdutosNOME.Value = '') then
      DMCadastros.ProdutosNOME.value := copy(FrmProdutos.cmbGrupo.Text,1,11)+'-'+copy(FrmProdutos.cmbSecao.Text,1,11)+'-'+copy(FrmProdutos.cmbSubgrupo.Text,1,11)+'-'+copy(FrmProdutos.cmbModelo.Text,1,11);

    If Not ProdutosCOD_AGRUP.IsNull
    then begin
         ProdutosCNPJ_AGRUP.Value := DmApp.Cnpj ;
    end;

    if (ProdutosCOR.asInteger = 0) then
       ProdutosCOR.asVariant := Null;

    if (ProdutosMATERIAL.asInteger = 0) then
       ProdutosMATERIAL.asVariant := Null;
end;

procedure TDMCadastros.ClientesPERIODO_FATURAMENTOGetText(Sender: TField; var Text: String; DisplayText: Boolean);
begin
  If Sender.Value = 'M' Then
     Text := 'Mensal';
  If Sender.Value = 'S' Then
     Text := 'Semanal';
  If Sender.Value = 'Q' Then
     Text := 'Quinzenal';

end;

procedure TDMCadastros.ClientesPERIODO_FATURAMENTOSetText(Sender: TField; const Text: String);
begin
  If Text = 'Mensal' Then
     Sender.Value := 'M';
  If Text = 'Quinzenal' Then
     Sender.Value := 'Q';
  If Text = 'Semanal' Then
     Sender.Value := 'S';
end;

procedure TDMCadastros.Altera_PropriedadeAfterInsert(DataSet: TDataSet);
begin
     //
     Altera_PropriedadeCNPJ.vALUE        := AlteraPessoas_FJCNPJ.Value ;
     Altera_PropriedadePESSOA_FJ.Value   := AlteraPessoas_FJCODIGO.Value;
     Altera_PropriedadePROPRIEDADE.Value := DMApp.GerarCodigoPropriedade(AlteraPessoas_FJCODIGO.Value);
end;

procedure TDMCadastros.Altera_PropriedadeBeforePost(DataSet: TDataSet);
begin
     //
     If Altera_Propriedade.State = dsInsert Then
        Altera_PropriedadePROPRIEDADE.Value := DMApp.GerarCodigoPropriedade(AlteraPessoas_FJCODIGO.Value);
end;

procedure TDMCadastros.Formas_PagtoFATURA_FUTURAValidate(Sender: TField);
begin
{     WITH FrmFormasPagto DO
     BEGIN
          IF Formas_PagtoFATURA_FUTURA.Value = 'S'
          THEN BEGIN
               cbNParcelas.Enabled          := FALSE ;
               edIntervalo.Enabled          := FALSE ;
               cbEntrada.Enabled            := FALSE ;
               cbVista.Enabled              := FALSE ;
               Formas_PagtoINTERVALO.Value  := 0     ;
               Formas_PagtoCOMENTRADA.Value := 'N'   ;
               Formas_PagtoAVISTA.Value     := 'N'   ;
          END
          ELSE BEGIN
               cbVista.Enabled              := TRUE ;
               cbNParcelas.Enabled          := TRUE ;
               edIntervalo.Enabled          := TRUE ;
               cbEntrada.Enabled            := TRUE ;
          END;
     END;}
end;

procedure TDMCadastros.Contas_PessoasNewRecord(DataSet: TDataSet);
begin
     Contas_PessoasPESSOA_FJ.Value := Pessoas_FJCODIGO.Value ;
     Contas_PessoasCNPJ.Value      := Pessoas_FJCNPJ.Value ;
end;

procedure TDMCadastros.LoteBeforePost(DataSet: TDataSet);
begin
     If Dataset.State = dsInsert Then
     LoteCODIGO.Value := DMApp.GerarCodigo('LOTE', 1);
end;

procedure TDMCadastros.LoteNewRecord(DataSet: TDataSet);
begin
  LoteESTOQUE.Value := 0;
  LotePRODUTO.Value := Produto_Lote;
  LotePESO.value := Peso_Lote;
end;

procedure TDMCadastros.FornecedoresNewRecord(DataSet: TDataSet);
begin
     FornecedoresPESSOA_FJ.Value := Pessoas_FJCODIGO.Value ;
     FornecedoresSINCRONIZA_FILIAIS.VALUE := 'S';
end;

procedure TDMCadastros.Pessoas_FJCIDADEValidate(Sender: TField);
begin
     Geral.Close ;
     Geral.Sql.text := ' select UF From Glo_Cidades Where CODIGO = :C and Cnpj = :E ';
     Geral.ParamByName ('E').AsString  := DmApp.Cnpj   ;
     Geral.ParamByName ('C').AsInteger := Sender.Value ;
     Geral.Open ;

     If Geral.Fields[0].isNull
     then Begin
          MessageDlg('Cidade Inexistente!',mtError,[mbOk],0);
          Abort;
     end
     else begin
          Pessoas_FJUF.Value := Geral.Fields[0].Value ;
     end;
end;

procedure TDMCadastros.Pessoas_FJUFValidate(Sender: TField);
begin
     Geral.Close ;
     Geral.Sql.Clear ;

     Geral.Params.CreateParam ( FtString , 'E', PtInput );
     Geral.Params.CreateParam ( FtString , 'C', PtInput );

     Geral.Sql.Add (' Select Sigla From Glo_Estados Where SIGLA = :C and Cnpj = :E ');

     Geral.ParamByName ('E').AsString  := DmApp.Cnpj   ;
     Geral.ParamByName ('C').AsString  := Sender.Value ;

     Geral.Prepare ;

     Geral.Open ;

     If Geral.Fields[0].isNull
     then Begin
          MessageDlg('Estado Inexistente!',mtError,[mbOk],0);
          Abort;
     end;
end;

procedure TDMCadastros.NotaPromissoriaNewRecord(DataSet: TDataSet);
Var
   I: Integer;
begin
     For I := 0 to NotaPromissoria.FieldCount - 1 do
     begin
          if NotaPromissoria.Fields.FIELDS[i].DataType = FtInteger
          then Begin
               NotaPromissoria.Fields[i].Value := 0;
          end;
     end;
end;

procedure TDMCadastros.NotaPromissoriaLPPGetText(Sender: TField; var Text: String; DisplayText: Boolean);
begin
  If Sender.Value = 6 Then
     Text := 'Seis';
  If Sender.Value = 8 Then
     Text := 'Oito';
end;

procedure TDMCadastros.NotaPromissoriaLPPSetText(Sender: TField; const Text: String);
begin
  If Text = 'Seis' Then
     Sender.Value := 6;
  If Text = 'Oito' Then
     Sender.Value := 8;

end;

procedure TDMCadastros.ProdutosCOD_AGRUPValidate(Sender: TField);
begin
     If Not(Sender.IsNull)
     Then begin
          ProdutosCNPJ_AGRUP.Value := DmApp.Cnpj ;
     end;
end;

procedure TDMCadastros.Pessoas_FJCPF_CGCValidate(Sender: TField);
var
  doc : string;
begin
     If DMApp.VALIDA_DOCS <> 'N'
     THEN BEGIN
          IF Pessoas_FJPESSOA.Value = 'J'
          THEN BEGIN
               //Valida Cnpj
               If Not CGC_Valido ( Sender.Value )
               then begin
                    MessageDlg('Cnpj Inválido!', mtError, [mbOK], 0);
                    Abort ;
               end
               else begin
                    If Pessoas_FJ.state in [ dsinsert ]
                    then begin
                         //VERIFICA SE NAO ESTA DUPLICADO
                         IF DmApp.Valida_Cpf_Cnpj ( Sender.Value ) = 'N'
                         THEN BEGIN
                              MessageDlg('Este CNPJ Já Está Cadastrado, Verifique!', mtError, [mbOK], 0);
                              Abort ;
                         END;
                    end;
               end;

               if not(ChkInscEstadual(Pessoas_FJRG_IE.AsString,Pessoas_FJUF.AsString)) then
               begin
                  Application.MessageBox('Inscrição Estadual Inválida. Verifique','Aviso',mb_iconerror + mb_ok);
                  Abort ;
                  exit;
               end;

          END
          ELSE BEGIN
               //Valida Cnpj
               doc := StringReplace(Sender.Value,'.','',[rfReplaceAll]);
               doc := StringReplace(doc,'-','',[rfReplaceAll]);
               If ((Not CPF_Valido (doc)) and (trim(doc) <> ''))
               then begin
                    MessageDlg('Cpf Inválido!', mtError, [mbOK], 0);
                    Abort ;
               end
               else if (trim(doc) <> '') then
               begin
                    If Pessoas_FJ.state in [ dsinsert, dsEdit ]
                    then begin
                         //VERIFICA SE NAO ESTA DUPLICADO
                         IF DmApp.Valida_Cpf_Cnpj ( Sender.Value ) = 'N'
                         THEN BEGIN
                              MessageDlg('Este CPF Já Está Cadastrado, Verifique!', mtError, [mbOK], 0);
                              Abort ;
                         END;
                    end;
               end;
          END;
     END;
end;

procedure TDMCadastros.ProdutosCTEValidate(Sender: TField);
begin
  //-> Substituicao Tributaria
  If ProdutosCTE.Value = 6 then
    ProdutosALIQUOTA_ECF.Value := 'FF' ;
  //-> Nao Incidencia
  If ProdutosCTE.Value = 3 then
    ProdutosALIQUOTA_ECF.Value := 'II' ;
  //-> Substituicao
  If ProdutosCTE.Value = 4 then
    ProdutosALIQUOTA_ECF.Value := 'NN' ;
end;

procedure TDMCadastros.Precos_EspeciaisAfterInsert(DataSet: TDataSet);
begin
     Precos_EspeciaisCNPJ.Value        := DmApp.Cnpj ;
     Precos_EspeciaisPESSOA_FJ.Value   := Pessoas_FJCODIGO.Value ;
     Precos_EspeciaisPORCENTAGEM.Value := 0;
end;

procedure TDMCadastros.Precos_EspeciaisPRODUTOValidate(Sender: TField);
begin
  //
  If Sender.IsNull Then
     Exit ;
  //
  If trim(Sender.Value) = '' Then
     Exit ;

  //BUSCA OS VALORES DO PRODUTO
  Valida_Produto2.Close ;
  Valida_Produto2.ParamByName ('CNPJ').AsString        := DmApp.Cnpj   ;
  Valida_Produto2.ParamByName ('PRODUTO').AsString     := Sender.Value ;
  Valida_Produto2.ParamByName ('VENDEDOR').value     := 0 ;
  Valida_Produto2.Open;

  Precos_EspeciaisORIGINAL.Value := Valida_Produto2PRC_VENDA.asFloat;
end;

procedure TDMCadastros.MecanicosNewRecord(DataSet: TDataSet);
begin
     MecanicosCOM_VISTA.Value := 0;
     MecanicosCOM_PRAZO.Value := 0;
end;

procedure TDMCadastros.ViajanteNewRecord(DataSet: TDataSet);
begin
     ViajanteCOM_VISTA.Value := 0;
     ViajanteCOM_PRAZO.Value := 0;
end;

procedure TDMCadastros.AgrupadorAfterInsert(DataSet: TDataSet);
begin
     DataSet.Fields[0].Value := DMApp.Cnpj;
     Dataset.Fields[1].Value := INTTOSTR(DMApp.GerarCodigo(UpperCase(Dataset.Name), 0) + 1);
end;

procedure TDMCadastros.MovimentoAfterPost(DataSet: TDataSet);
begin
     ESTADO_CTB := 'N' ;
end;

procedure TDMCadastros.EstadosNewRecord(DataSet: TDataSet);
begin
     DataSet.Fields[0].Value := DMApp.Cnpj;
end;

procedure TDMCadastros.ClientesCalcFields(DataSet: TDataSet);
begin
     If Not ClientesADMISSAO.IsNull
     then begin
          ClientesTMP_SERVICO.value := CalculaTempo ( ClientesADMISSAO.Value, DmApp.Data_Servidor );
     end;
end;

procedure TDMCadastros.VENDEDOR_FAIXAAfterInsert(DataSet: TDataSet);
begin
     VENDEDOR_FAIXACNPJ.Value   := VendedoresCNPJ.value   ;
     VENDEDOR_FAIXACODIGO.Value := VendedoresCODIGO.value ;
end;

procedure TDMCadastros.VENDEDOR_FAIXANewRecord(DataSet: TDataSet);
begin
     VENDEDOR_FAIXAVALOR.VALUE := 0;
     VENDEDOR_FAIXAPRAZO.VALUE := 0;
     VENDEDOR_FAIXAVISTA.VALUE := 0;
end;

procedure TDMCadastros.PropriedadesNewRecord(DataSet: TDataSet);
begin
     PropriedadesATIVA.value := 'S' ;
end;

procedure TDMCadastros.Centro_CustoTIPO_CENTROGetText(Sender: TField; var Text: String; DisplayText: Boolean);
begin
     If Sender.Value = 'Sal' Then
        Text := 'Salarios e Ordenados';
     If Sender.Value = 'Fix' Then
        Text := 'Fixas';
     If Sender.Value = 'Var' Then
        Text := 'Variáveis';
     If Sender.Value = 'Ter' Then
        Text := 'Terceiros';
     If Sender.Value = 'Vei' Then
        Text := 'Veiculos';
     If Sender.Value = 'Ban' Then
        Text := 'Bancarias';
     If Sender.Value = 'Fin' Then
        Text := 'Financeiras';
     If Sender.Value = 'Imo' Then
        Text := 'Imobilizado';
     If Sender.Value = 'Imp' Then
        Text := 'Impostos';
end;

procedure TDMCadastros.Centro_CustoTIPO_CENTROSetText(Sender: TField; const Text: String);
begin
     If Text = 'Salarios e Ordenados'
     Then
         Sender.Value := 'Sal';

     If Text = 'Fixas'
     Then
         Sender.Value := 'Fix';

     If Text = 'Salarios e Ordenados'
     Then
         Sender.Value := 'Sal';

     If Text = 'Variáveis'
     Then
         Sender.Value := 'Var';

     If Text = 'Terceiros'
     Then
         Sender.Value := 'Ter' ;

     If Text = 'Veiculos'
     Then
         Sender.Value := 'Vei';

     If Text = 'Bancarias'
     Then
         Sender.Value := 'Ban';

     If Text = 'Financeiras'
     Then
         Sender.Value := 'Fin';

     If Text = 'Imobilizado'
     Then
         Sender.Value := 'Imo';

     If Text = 'Impostos'
     Then
         Sender.Value := 'Imp';

end;

procedure TDMCadastros.AgrupadorBeforePost(DataSet: TDataSet);
begin
     If Dataset.State = dsInsert Then
     Dataset.Fields[1].Value := INTTOSTR(DMApp.GerarCodigo(UpperCase(Dataset.Name), 1));
end;

procedure TDMCadastros.MovimentoAfterEdit(DataSet: TDataSet);
begin
     ESTADO_CTB := 'A' ;
end;

procedure TDMCadastros.GradesBeforePost(DataSet: TDataSet);
begin
     If Dataset.State = dsInsert Then
     GradesGRADE.Value := DMApp.GerarCodigoGrade(1);
end;

procedure TDMCadastros.GradesNewRecord(DataSet: TDataSet);
begin
     GradesESTOQUE.Value := 0;
     GradesPRODUTO.Value := ProdutosCODIGO.Value;
     GradesCOR.Value := ProdutosCOR.value;
     GradesMATERIAL.Value := ProdutosMATERIAL.value;
end;

procedure TDMCadastros.VeiculoNewRecord(DataSet: TDataSet);
begin
     IF FrmPessoasFJ <> nIL
     THEN BEGIN
          VeiculoPESSOA_FJ.Value := Pessoas_FJCODIGO.Value;
     //     VeiculoCODIGO.Value    := DMApp.GerarCodigoVeiculo(Pessoas_FJCODIGO.Value);
     END;

     IF FrmClientes <> Nil
     THEN BEGIN
          VeiculoPESSOA_FJ.Value := Pessoas_FJCODIGO.Value;
     //     VeiculoCODIGO.Value    := DMApp.GerarCodigoVeiculo(Pessoas_FJCODIGO.Value);
     END;
end;

procedure TDMCadastros.ProdutosMARGEM_BRUTAValidate(Sender: TField);
begin
     IF (( DMAPP.ALT_PRCVEND_MARG = 'S' ) AND ( PRODUTOSPRC_REPOS.Value > 0 ) AND ( SENDER.VALUE > 0 ))
     THEN BEGIN
          ProdutosPRC_VENDA.VALUE := PRODUTOSPRC_REPOS.Value + (( PRODUTOSPRC_REPOS.Value * SENDER.VALUE )/100);
     END;
end;

procedure TDMCadastros.AtividadesPostError(DataSet: TDataSet; E: EDatabaseError; var Action: TDataAction);
begin
     IF UPPERCASE(COPY(( EDatabaseError(E).MESSAGE ),1,34)) = 'VIOLATION OF PRIMARY OR UNIQUE KEY'
     THEN BEGIN
          ShowMessage('Registro já existe!');
          Action:= daAbort;
     END;
end;

procedure TDMCadastros.GRADES_NUMEROSNewRecord(DataSet: TDataSet);
begin
     GRADES_NUMEROSCNPJ.Value    := GradesCNPJ.Value    ;
     GRADES_NUMEROSGRADE.Value   := GradesGRADE.value   ;
     GRADES_NUMEROSPRODUTO.Value := GradesPRODUTO.Value ;
end;

procedure TDMCadastros.Perfil_GradesBeforePost(DataSet: TDataSet);
begin
     If Dataset.State = dsInsert Then
     Perfil_GradesCODIGO.Value := DMApp.GerarCodigo('PERFIL_GRADES', 1);
end;

procedure TDMCadastros.Perfil_Grades_AdicionalNewRecord(DataSet: TDataSet);
begin
     Perfil_Grades_AdicionalGRADE.Value := Perfil_GradesCODIGO.Value ;
     Perfil_Grades_AdicionalCNPJ.VALUE  := Perfil_GradesCNPJ.Value ;
end;

procedure TDMCadastros.Pessoas_FJBeforePost(DataSet: TDataSet);
begin
     IF DMAPP.BLOQ_CAD_SEM_CPF = 'S'
     THEN BEGIN
          IF (trim(TIBDataSet(DataSet).FieldByName('CPF_CGC').asString) = '' )
          THEN BEGIN
               MessageDlg('Digite o CPF/CNPJ!',mtError,[mbOk],0);
               Abort;
          END
          ELSE
              If Dataset.State = dsInsert Then
              Dataset.Fields[1].Value := DMApp.GerarCodigo(UpperCase(Dataset.Name), 1);
     END
     ELSE
         If Dataset.State = dsInsert
         Then
             Dataset.Fields[1].Value := DMApp.GerarCodigo(UpperCase(Dataset.Name), 1);

end;

procedure TDMCadastros.GradesAfterInsert(DataSet: TDataSet);
begin
  GradesCNPJ.Value  := DMApp.Cnpj;
  GradesGRADE.Value := DMApp.GerarCodigoGrade(1);
end;

procedure TDMCadastros.Produtos_TributacaoNewRecord(DataSet: TDataSet);
begin
     Produtos_TributacaoCNPJ.value    := dmapp.Cnpj ;
     Produtos_TributacaoPRODUTO.Value := ProdutosCODIGO.value ;
end;

procedure TDMCadastros.Produtos_TributacaoCTEGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  If Sender.Value = 1 Then
     Text := '1 - Tributada Integralmente';
  If Sender.Value = 2 Then
     Text := '2 - Tributada com Reduçao na Base de Cálculo';
  If Sender.Value = 3 Then
     Text := '3 - Isento de ICMS';
  If Sender.Value = 4 Then
     Text := '4 - ICMS nao incidência';
  If Sender.Value = 5 Then
     Text := '5 - Diferido';
  If Sender.Value = 6 Then
     Text := '6 - Substituiçao Tributária';
  If Sender.Value = 7 Then
     Text := '7 - ISS';
end;

procedure TDMCadastros.Produtos_TributacaoCTIESetText(Sender: TField;
  const Text: String);
begin
  If Text = '1 - Tributada Integralmente' Then
     Sender.Value := 1;
  If Text = '2 - Tributada com Reduçao na Base de Cálculo' Then
     Sender.Value := 2;
  If Text = '3 - Isento de ICMS' Then
     Sender.Value := 3;
  If Text = '4 - ICMS nao incidência' Then
     Sender.Value := 4;
  If Text = '5 - Diferido' Then
     Sender.Value := 5;
  If Text = '6 - Substituiçao Tributária' Then
     Sender.Value := 6;
  If Text = '7 - ISS' Then
     Sender.Value := 7;
end;

procedure TDMCadastros.Perfil_Grades_AdicionalCODIGOSetText(Sender: TField;
  const Text: String);
begin
     sender.value := uppercase ( text );
end;

procedure TDMCadastros.ClientesSENHA_PDVValidate(Sender: TField);
Var
   Senha: String;
begin
     Application.CreateForm(TFrmEntraDescricao, FrmEntraDescricao);

     FrmEntraDescricao.LblTitulo.Caption := 'Confirmar Senha';
     FrmEntraDescricao.LBLPROMPT.Caption := 'Senha';

     FrmEntraDescricao.EdNumero.PasswordChar := char('*') ;

     Repeat
       IF FrmEntraDescricao.ShowModal = MROK
       THEN BEGIN
           Senha := FrmEntraDescricao.EdNumero.Text ;
       END;
         If Trim( Senha) = '' then
           Showmessage('Digite uma Senha Válida e diferente de Em Branco!');
     Until trim( Senha ) <> '' ;

     FrmEntraDescricao.Free ;
     FrmEntraDescricao := Nil;

     if Senha <> Sender.value then
       begin
          Showmessage('Senha Informada Incorretamente, Confirme!');
          Abort;
       end;
end;

procedure TDMCadastros.BancosAfterInsert(DataSet: TDataSet);
begin
  BancosPADRAO_BOLETO.value := 'N';
end;

procedure TDMCadastros.FornecedoresBeforePost(DataSet: TDataSet);
begin
  if FornecedoresPessoa_Fj.AsInteger = 0 then
    FornecedoresPessoa_Fj.value := edtFornecedoresCodigo.value;
end;

procedure TDMCadastros.MesasNewRecord(DataSet: TDataSet);
begin
  MesasCNPJ.value := dmApp.cnpj;
  MesasATIVO.value := 'S';
end;

procedure TDMCadastros.edtFornecedoresCIDADEValidate(Sender: TField);
begin
  Geral.Close ;
  Geral.Sql.Clear ;

  Geral.Params.CreateParam ( FtString , 'E', PtInput );
  Geral.Params.CreateParam ( FtInteger, 'C', PtInput );

  Geral.Sql.Add (' Select UF From Glo_Cidades Where CODIGO = :C and Cnpj = :E ');

  Geral.ParamByName ('E').AsString  := DmApp.Cnpj   ;
  Geral.ParamByName ('C').AsInteger := Sender.Value ;

  Geral.Prepare ;

  Geral.Open ;

  If Geral.Fields[0].isNull then
  begin
    MessageDlg('Cidade Inexistente!',mtError,[mbOk],0);
    Abort;
  end
  else
  begin
    edtFornecedoresUF.Value := Geral.Fields[0].Value ;
  end;
end;

procedure TDMCadastros.PropriedadesCIDADEValidate(Sender: TField);
begin
  Geral.Close ;
  Geral.Sql.Clear ;
  Geral.Params.CreateParam ( FtString , 'E', PtInput );
  Geral.Params.CreateParam ( FtInteger, 'C', PtInput );
  Geral.Sql.Add (' Select UF From Glo_Cidades Where CODIGO = :C and Cnpj = :E ');
  Geral.ParamByName ('E').AsString  := DmApp.Cnpj   ;
  Geral.ParamByName ('C').AsInteger := Sender.Value ;
  Geral.Prepare ;
  Geral.Open ;

  If Geral.Fields[0].isNull then
  begin
    MessageDlg('Cidade Inexistente!',mtError,[mbOk],0);
    Abort;
  end
  else
  begin
    PropriedadesUF.Value := Geral.Fields[0].Value ;
  end;
end;

procedure TDMCadastros.edtFornecedoresPESSOASetText(Sender: TField;
  const Text: String);
begin
  If Text = 'Fisica Feminina' Then
     Sender.Value := 'F';
  If Text = 'Fisica Masculina' Then
     Sender.Value := 'M';
  If Text = 'Juridica' Then
     Sender.Value := 'J';
end;

procedure TDMCadastros.edtFornecedoresPESSOAGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  If Sender.Value = 'F' Then
     Text := 'Fisica Feminina';
  If Sender.Value = 'M' Then
     Text := 'Fisica Masculina';
  If Sender.Value = 'J' Then
     Text := 'Juridica';
end;

procedure TDMCadastros.ProdutosUNIDADEValidate(Sender: TField);
begin
 ProdutosSUBUNIDADE.value := SubUnidadesUNIDADES.value;
end;

procedure TDMCadastros.RegioesAfterInsert(DataSet: TDataSet);
begin
  DataSet.Fields[0].Value := DMApp.Cnpj;
end;

procedure TDMCadastros.Centro_CustoAfterInsert(DataSet: TDataSet);
begin
  DataSet.Fields[0].Value := DMApp.Cnpj;
end;

procedure TDMCadastros.MarcasAfterInsert(DataSet: TDataSet);
begin
  DataSet.Fields[0].Value := DMApp.Cnpj;
end;

procedure TDMCadastros.LogradourosBeforePost(DataSet: TDataSet);
const
  x : string = ' nao apague seu otário';
begin
  //nao apague
  If Dataset.State = dsInsert Then
      Dataset.Fields[1].Value := DMApp.GerarCodigo(UpperCase(Dataset.Name), 1);
end;

procedure TDMCadastros.TecnicoAfterInsert(DataSet: TDataSet);
begin
  DataSet.Fields[0].Value := DMApp.Cnpj;
  Dataset.Fields[1].Value := DMApp.GerarCodigo(UpperCase(Dataset.Name), 0) + 1;
end;

procedure TDMCadastros.Formas_Pagto_ParcelasNewRecord(DataSet: TDataSet);
begin
  Formas_Pagto_ParcelasCNPJ.value := dmApp.cnpj;
  Formas_Pagto_ParcelasCOD_FORMA_PAGTO.Value := Formas_PagtoCODIGO.value;
end;

procedure TDMCadastros.Formas_PagtoINTERVALO_PRE_DEFINIDOValidate(
  Sender: TField);
begin
  WITH FrmFormasPagto DO
  BEGIN
          IF Formas_PagtoINTERVALO_PRE_DEFINIDO.Value = 'S'
          THEN BEGIN
               cbNParcelas.Enabled          := FALSE ;
               edIntervalo.Enabled          := FALSE ;
               cbEntrada.Enabled            := FALSE ;
               edtDtVenctoFixo.Enabled := FALSE;
               pnlParcelas.Enabled := true;
               edIntervalo.Enabled := false;

               Formas_PagtoINTERVALO.Value  := 0     ;
               Formas_PagtoCOMENTRADA.Value := 'N'   ;
               Formas_PagtoVENCTO_FIXO.Value := 'N';
               Formas_PagtoAVISTA.value := 'N';
          END
          ELSE
          BEGIN
              cbNParcelas.Enabled          := TRUE ;
              edIntervalo.Enabled          := TRUE ;
              cbEntrada.Enabled            := TRUE ;
              edtDtVenctoFixo.Enabled := true;
              pnlParcelas.Enabled := false;
              edIntervalo.Enabled := true;
          END;
     END;
end;

procedure TDMCadastros.Formas_PagtoVENCTO_FIXOValidate(Sender: TField);
begin
  WITH FrmFormasPagto DO
  BEGIN
          IF Formas_PagtoVENCTO_FIXO.Value = 'S'
          THEN BEGIN
               cbNParcelas.Enabled          := FALSE ;
               edIntervalo.Enabled          := FALSE ;
               cbEntrada.Enabled            := FALSE ;
               edtDtVenctoFixo.Enabled := true;
               pnlParcelas.Enabled := false;

               Formas_PagtoINTERVALO.Value  := 0     ;
               Formas_PagtoCOMENTRADA.Value := 'N'   ;
               Formas_PagtoINTERVALO_PRE_DEFINIDO.value := 'N';
               Formas_PagtoAVISTA.value := 'N';
          END
          ELSE
          BEGIN
              cbNParcelas.Enabled          := TRUE ;
              edIntervalo.Enabled          := TRUE ;
              cbEntrada.Enabled            := TRUE ;
              edtDtVenctoFixo.Enabled := false;
              pnlParcelas.Enabled := true;
          END;
     END;
end;

procedure TDMCadastros.Pessoas_FJPESSOAValidate(Sender: TField);
begin
  SetMaskCNPJ_CPF;
end;

procedure TDMCadastros.SetMaskCNPJ_CPF;
begin
 If Pessoas_FJPESSOA.asString = 'J' Then
  begin

   // Pessoas_FJCPF_CGC.EditMask := '00.000.000/0000-00;0;_';
    if (frmClientes <> nil) then
    begin
//     frmClientes.EDCPFCGC.Properties.EditMask :=  '##.###.###/####-##';
     frmClientes.EDCPFCGC.Properties.EditMask := '00.000.000/0000-00;0;_';
     frmClientes.cxLabel76.Caption := 'C.N.P.J';
     frmClientes.cxLabel77.Caption := 'I.E.';

    end;
  end
  else
  begin
  //  Pessoas_FJCPF_CGC.EditMask := '000.000.000-00;0;_';
    if (frmClientes <> nil) then
    begin
      frmClientes.EDCPFCGC.Properties.EditMask := '000.000.000-00;0;_';
      frmClientes.cxLabel76.Caption := 'C.P.F.';
      frmClientes.cxLabel77.Caption := 'R.G.';
    end;
  end;
end;

procedure TDMCadastros.edtFornecedoresCPF_CGCValidate(Sender: TField);
var
  doc : string;
begin
     If DMApp.VALIDA_DOCS <> 'N'
     THEN BEGIN
          IF edtFornecedoresPESSOA.Value = 'J'
          THEN BEGIN
               //Valida Cnpj
               If Not CGC_Valido ( Sender.Value )
               then begin
                    MessageDlg('Cnpj Inválido!', mtError, [mbOK], 0);
                    Abort ;
               end
               else begin
                    If edtFornecedores.state in [ dsinsert ]
                    then begin
                         //VERIFICA SE NAO ESTA DUPLICADO
                         IF DmApp.Valida_Cpf_Cnpj ( Sender.Value ) = 'N'
                         THEN BEGIN
                              MessageDlg('Este CNPJ Já Está Cadastrado, Verifique!', mtError, [mbOK], 0);
                              Abort ;
                         END;
                    end;
               end;
          END
          ELSE BEGIN
               //Valida Cnpj
               doc := StringReplace(Sender.Value,'.','',[rfReplaceAll]);
               doc := StringReplace(doc,'-','',[rfReplaceAll]);
               If Not CPF_Valido ( doc )
               then begin
                    MessageDlg('Cpf Inválido!', mtError, [mbOK], 0);
                    Abort ;
               end
               else begin
                    If edtFornecedores.state in [ dsinsert, dsEdit ]
                    then begin
                         //VERIFICA SE NAO ESTA DUPLICADO
                         IF DmApp.Valida_Cpf_Cnpj ( Sender.Value ) = 'N'
                         THEN BEGIN
                              MessageDlg('Este CPF Já Está Cadastrado, Verifique!', mtError, [mbOK], 0);
                              Abort ;
                         END;
                    end;
               end;
          END;
     END;
end;

procedure TDMCadastros.Cliente_EnderecoBeforeOpen(DataSet: TDataSet);
begin
  If (DataSet is TIBQuery) Then
     Begin
       (DataSet as TIBQuery).ParamByName('CNPJ').asString := DMApp.Cnpj;
       (DataSet as TIBQuery).ParamByName('ID_CLIENTE').AsInteger := DMCadastros.Pessoas_FJCODIGO.AsInteger;
       (Dataset as TIBQuery).Prepare;
     End;
  If (DataSet is TIBDataset) Then
     Begin
       (DataSet as TIBDataSet).ParamByName('CNPJ').asString := DMApp.Cnpj;
       (DataSet as TIBDataSet).ParamByName('ID_CLIENTE').AsInteger := DMCadastros.Pessoas_FJCODIGO.AsInteger;
       (Dataset as TIBDataSet).Prepare;
     End;
end;

procedure TDMCadastros.Cliente_EnderecoBeforePost(DataSet: TDataSet);
begin
  If (DataSet is TIBQuery) Then
     Begin
       (DataSet as TIBQuery).FieldByName('CNPJ').asString := DMApp.Cnpj;
       (DataSet as TIBQuery).FieldByName('ID_CLIENTE').AsInteger := DMCadastros.Pessoas_FJCODIGO.AsInteger;
     End;
  If (DataSet is TIBDataset) Then
     Begin
       (DataSet as TIBDataSet).FieldByName('CNPJ').asString := DMApp.Cnpj;
       (DataSet as TIBDataSet).FieldByName('ID_CLIENTE').AsInteger := DMCadastros.Pessoas_FJCODIGO.AsInteger;
     End;
end;

procedure TDMCadastros.Cliente_EnderecoAfterPost(DataSet: TDataSet);
begin
  If (DataSet is TIBQuery) Then
     Begin
       (DataSet as TIBQuery).Close;
       (DataSet as TIBQuery).Open;
     End;
  If (DataSet is TIBDataset) Then
     Begin
       (DataSet as TIBDataSet).Close;
       (DataSet as TIBDataSet).Open;
     End;
end;

procedure TDMCadastros.Tipo_EnderecoBeforePost(DataSet: TDataSet);
begin
  If (DataSet is TIBQuery) Then
       (DataSet as TIBQuery).FieldByName('CNPJ').asString := DMApp.Cnpj;
  If (DataSet is TIBDataset) Then
       (DataSet as TIBDataSet).FieldByName('CNPJ').asString := DMApp.Cnpj;

end;

procedure TDMCadastros.ContatoBeforePost(DataSet: TDataSet);
begin
    if DMCadastros.Contato.FieldByName('IDCLIENTE_RELACIONADO').value <= 0 then
    begin
        MessageDlg('Para adicionar um contato é necessário a escola de um contato!!!', mtInformation, [mbOK], 0);
        exit;
    end;

    if DMCadastros.Contato.FieldByName('TIPO_CONTATO').value <= 0 then
    begin
        MessageDlg('Para adicionar um contato é necessário a escolha de um tipo de contato!!!', mtInformation, [mbOK], 0);
        exit;
    end;
      If (DataSet is TIBQuery) Then
     Begin
       (DataSet as TIBQuery).FieldByName('CNPJ').asString := DMApp.Cnpj;
       (DataSet as TIBQuery).FieldByName('IDCLIENTE').AsInteger := DMCadastros.Pessoas_FJCODIGO.AsInteger;
     End;
      If (DataSet is TIBDataset) Then
     Begin
       (DataSet as TIBDataSet).FieldByName('CNPJ').asString := DMApp.Cnpj;
       (DataSet as TIBDataSet).FieldByName('IDCLIENTE').AsInteger := DMCadastros.Pessoas_FJCODIGO.AsInteger;
     End;
end;

procedure TDMCadastros.ContatoAfterPost(DataSet: TDataSet);
begin
      Contato.Close;
      Contato.Open;
end;

procedure TDMCadastros.Cliente_EnderecoAfterInsert(DataSet: TDataSet);
begin
  Cliente_EnderecoID_CLIENTE.Value :=  Pessoas_FJCodigo.value;
end;

procedure TDMCadastros.Pessoas_FJAfterScroll(DataSet: TDataSet);
begin
  SetMaskCNPJ_CPF;
   {SetMaskCNPJ_CPF;
  Cliente_Endereco.Close;
  Cliente_Endereco.Open;
  Contato.Close;
  Contato.Open;}
end;

procedure TDMCadastros.ClientesBeforePost(DataSet: TDataSet);
begin
  ClientesCNPJ.Value           := Pessoas_FJCNPJ.value   ;
  ClientesPESSOA_FJ.Value      := Pessoas_FJCODIGO.Value ;
end;

procedure TDMCadastros.ProdutosTRIB_PISGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
   If Sender.Value = '01' Then
     Text := '01 - Op. Tributavel';
   If Sender.Value = '02' Then
     Text := '02 - Op. Tributavel - Aliq. Diferenciada';
   If Sender.Value = '03' Then
     Text := '03 - Op. Tributavel - Aliq. por Unidade de Produto';
   If Sender.Value = '04' Then
     Text := '04 - Op. Tributavel - Monofasica';
   If Sender.Value = '06' Then
     Text := '06 - Op. Tributavel - Aliq. Zero';
   If Sender.Value = '07' Then
     Text := '07 - Op. Isenta';
   If Sender.Value = '08' Then
     Text := '08 - Op. Sem Incidencia';
   If Sender.Value = '09' Then
     Text := '09 - Op. Suspensao';
   If Sender.Value = '99' Then
     Text := '99 - Outras Operacoes';
end;

procedure TDMCadastros.ProdutosTRIB_PISSetText(Sender: TField;
  const Text: String);
begin
  If trim(Text) = '01 - Op. Tributavel' Then
     Sender.Value := '01';
   If trim(Text) = '02 - Op. Tributavel - Aliq. Diferenciada' Then
     Sender.Value := '02' ;
   If trim(Text) = '03 - Op. Tributavel - Aliq. por Unidade de Produto' Then
     Sender.Value := '03';
   If trim(Text) = '04 - Op. Tributavel - Monofasica'  Then
     Sender.Value := '04';
   If trim(Text) = '06 - Op. Tributavel - Aliq. Zero' Then
     Sender.Value := '06';
   If trim(Text) = '07 - Op. Isenta' Then
     Sender.Value := '07';
   If trim(Text) = '08 - Op. Sem Incidencia' Then
     Sender.Value := '08' ;
   If trim(Text) = '09 - Op. Suspensao'  Then
     Sender.Value := '09';
   If trim(Text) = '99 - Outras Operacoes' Then
     Sender.Value := '99';

end;

procedure TDMCadastros.ProdutosTRIB_COFINSGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  If Sender.Value = '01' Then
     Text := '01 - Op. Tributavel';
   If Sender.Value = '02' Then
     Text := '02 - Op. Tributavel - Aliq. Diferenciada';
   If Sender.Value = '03' Then
     Text := '03 - Op. Tributavel - Aliq. por Unidade de Produto';
   If Sender.Value = '04' Then
     Text := '04 - Op. Tributavel - Monofasica';
   If Sender.Value = '06' Then
     Text := '06 - Op. Tributavel - Alq. Zero';
   If Sender.Value = '07' Then
     Text := '07 - Op. Isenta';
   If Sender.Value = '08' Then
     Text := '08 - Op. Sem Incidencia';
   If Sender.Value = '09' Then
     Text := '09 - Op. Suspensao';
   If Sender.Value = '99' Then
     Text := '99 - Outras Operacoes';
end;

procedure TDMCadastros.ProdutosTRIB_COFINSSetText(Sender: TField;
  const Text: String);
begin
  If trim(Text) = '01 - Op. Tributavel' Then
     Sender.Value := '01';
   If trim(Text) = '02 - Op. Tributavel - Aliq. Diferenciada' Then
     Sender.Value := '02' ;
   If trim(Text) = '03 - Op. Tributavel - Aliq. por Unidade de Produto' Then
     Sender.Value := '03';
   If trim(Text) = '04 - Op. Tributavel - Monofasica'  Then
     Sender.Value := '04';
   If trim(Text) = '06 - Op. Tributavel - Aliq. Zero' Then
     Sender.Value := '06';
   If trim(Text) = '07 - Op. Isenta' Then
     Sender.Value := '07';
   If trim(Text) = '08 - Op. Sem Incidencia' Then
     Sender.Value := '08' ;
   If trim(Text) = '09 - Op. Suspensao'  Then
     Sender.Value := '09';
   If trim(Text) = '99 - Outras Operacoes' Then
     Sender.Value := '99';
end;

procedure TDMCadastros.ProdutosTRIB_IPISetText(Sender: TField;
  const Text: String);
begin
   If trim(Text) = '00 - Entrada com recuperacao de credito' Then
     Sender.Value := '00';
   If trim(Text) = '01 - Entrada tributada com aliquota zero' Then
     Sender.Value := '01';
   If trim(Text) = '02 - Entrada isenta' Then
     Sender.Value := '02';
   If trim(Text) = '03 - Entrada nao-tributada' Then
     Sender.Value := '03';
   If trim(Text) = '04 - Entrada imune' Then
     Sender.Value := '04';
   If trim(Text) = '05 - Entrada com suspensao' Then
     Sender.Value := '05';
   If trim(Text) = '49 - Outras entradas' Then
     Sender.Value := '49';
   If trim(Text) = '50 - Saida tributada' Then
     Sender.Value := '50';
   If trim(Text) = '51 - Saida tributada com aliquota zero' Then
     Sender.Value := '51';
   If trim(Text) = '52 - Saida isenta' Then
     Sender.Value := '52';
   If trim(Text) = '53 - Saida nao-tributada' Then
     Sender.Value := '53';
   If trim(Text) = '54 - Saida imune' Then
     Sender.Value := '54';
   If trim(Text) = '55 - Saida com suspensao' Then
     Sender.Value := '55';
   If trim(Text) = '99 - Outras Saidas'Then
     Sender.Value := '99' ;
end;

procedure TDMCadastros.ProdutosTRIB_IPIGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
   {00 - Entrada com recuperacao de credito
    01 - Entrada tributada com aliquota zero
    02 - Entrada isenta
    03 - Entrada não-tributada
    04 - Entrada imune
    05 - Entrada com suspensão
    49 - Outras entradas
    50 - Saida tributada
    51 - Saida tributada com aliquota zero
    52 - Saida isenta
    53 - Saida não-tributada
    54 - Saida imune
    55 - Saida com suspensão
    99 - Outras Saidas}

   If Sender.Value = '00' Then
     Text := '00 - Entrada com recuperacao de credito';
   If Sender.Value = '01' Then
     Text := '01 - Entrada tributada com aliquota zero';
   If Sender.Value = '02' Then
     Text := '02 - Entrada isenta';
   If Sender.Value = '03' Then
     Text := '03 - Entrada nao-tributada';
   If Sender.Value = '04' Then
     Text := '04 - Entrada imune';
   If Sender.Value = '05' Then
     Text := '05 - Entrada com suspensao';
   If Sender.Value = '49' Then
     Text := '49 - Outras entradas';
   If Sender.Value = '50' Then
     Text := '50 - Saida tributada';
   If Sender.Value = '51' Then
     Text := '51 - Saida tributada com aliquota zero';
   If Sender.Value = '52' Then
     Text := '52 - Saida isenta';
   If Sender.Value = '53' Then
     Text := '53 - Saida nao-tributada';
   If Sender.Value = '54' Then
     Text := '54 - Saida imune';
   If Sender.Value = '55' Then
     Text := '55 - Saida com suspensao';
   If Sender.Value = '99' Then
     Text := '99 - Outras Saidas';
end;

procedure TDMCadastros.ProdutosAfterPost(DataSet: TDataSet);
begin
  if (DmApp.BCH_HABILITA_SINC_AUT = 'S') then
    dmApp.BCH_SYNC_PRODUTO(ProdutosCODIGO.AsString);
end;

procedure TDMCadastros.Pessoas_FJAfterPost(DataSet: TDataSet);
begin
  if (DmApp.BCH_HABILITA_SINC_AUT = 'S') then
    dmApp.BCH_SYNC_CLIENTE(Pessoas_FJCODIGO.Value);
end;

procedure TDMCadastros.FornecedoresBeforeOpen(DataSet: TDataSet);
begin
   Fornecedores.ParamByName('codigo').value := edtFornecedoresCodigo.value;
   Fornecedores.ParamByName('cnpj').value := dmApp.cnpj;
end;

procedure TDMCadastros.ProdutosGRUPOChange(Sender: TField);
begin
 if ((ProdutosGRUPO.OldValue <> ProdutosGRUPO.NewValue) and (Produtos.State in [dsEdit,dsInsert])) then
 begin
    ProdutosSUBGRUPO.Clear;
    SubgruposProd.close;
    SubgruposProd.Open;
 end
end;

procedure TDMCadastros.SubgruposProdBeforeOpen(DataSet: TDataSet);
begin
  TIBDataSet(DataSet).ParamByName('CNPJ').asString := DMApp.Cnpj;
  TIBDataset(DataSet).ParamByName('grupo').value := ProdutosGRUPO.AsInteger; 
  if (Produtos.State in [dsEdit,dsInsert]) then
    TIBDataset(DataSet).ParamByName('subgrupo').value := 0
  else
    TIBDataset(DataSet).ParamByName('subgrupo').value := ProdutosSUBGRUPO.AsInteger;


end;

procedure TDMCadastros.ProdutosGRUPOValidate(Sender: TField);
begin
   dmCadastros.SubgruposProd.close;
   dmCadastros.SubgruposProd.Open;
end;

procedure TDMCadastros.ProdutosAfterEdit(DataSet: TDataSet);
begin
  dmCadastros.SubgruposProd.close;
  dmCadastros.SubgruposProd.Open;
end;

procedure TDMCadastros.ProdutosCSOSNGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if (Sender.Value = 101) then
    Text:= '101 - Tributado com permissão de crédito'
  else if (Sender.Value = 102) then
    Text:= '102 - Tributado sem permissão de crédito'
  else if (Sender.Value = 103) then
    Text:= '103 - Isenção de icms por faixa de receita bruta'
  else if (Sender.Value = 201) then
    Text:= '201 - Tributado com permissão de crédito e com cobrança do ICMS por ST'
  else if (Sender.Value = 202) then
    Text:= '202 - Tributado sem permissão de crédito e com cobrança do ICMS por ST'
  else if (Sender.Value = 203) then
    Text:= '203 - Isenção do ICMS para faixa de receita bruta e com combrança de ICMS por ST'
  else if (Sender.Value = 300) then
    Text:= '300 - Imune'
  else if (Sender.Value = 400) then
    Text:= '400 - Não tributado'
  else if (Sender.Value = 900) then
    Text:= '900 - Outros';
end;

procedure TDMCadastros.ProdutosCSOSNSetText(Sender: TField;
  const Text: String);
begin
  if (Text= '101 - Tributado com permissão de crédito') then
    Sender.Value := 101
  else if (Text ='102 - Tributado sem permissão de crédito' ) then
     Sender.Value := 102
  else if (Text= '103 - Isenção de icms por faixa de receita bruta' ) then
    Sender.Value := 103
  else if (Text = '201 - Tributado com permissão de crédito e com cobrança do ICMS por ST' ) then
    Sender.Value := 201
  else if (Text = '202 - Tributado sem permissão de crédito e com cobrança do ICMS por ST') then
    Sender.Value := 202
  else if (Text = '203 - Isenção do ICMS para faixa de receita bruta e com combrança de ICMS por ST') then
    Sender.Value := 203
  else if (Text = '300 - Imune' ) then
    Sender.Value := 300
  else if (Text = '400 - Não tributado') then
    Sender.Value := 400
  else if (Text= '900 - Outros') then
    Sender.Value := 900;
end;

procedure TDMCadastros.LocalizacaoBeforePost(DataSet: TDataSet);
begin
  LocalizacaoCNPJ.value := dmApp.cnpj;
end;

end.
