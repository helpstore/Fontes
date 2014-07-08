 unit Plano_DM;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, IBCustomDataSet, IBQuery, RDprint, IBStoredProc;

type
  TDmPlano = class(TDataModule)
    Plano: TIBDataSet;
    PlanoCONTA: TIntegerField;
    PlanoCODIGO: TIBStringField;
    PlanoCONTAPAI: TIBStringField;
    PlanoNOME: TIBStringField;
    Movimento: TIBQuery;
    MovimentoCODIGO: TIntegerField;
    MovimentoDATA: TDateTimeField;
    MovimentoTIPO: TIBStringField;
    MovimentoDOCUMENTO: TIBStringField;
    MovimentoHISTORICO: TIBStringField;
    MovimentoMES: TIntegerField;
    MovimentoANO: TIntegerField;
    MovimentoCONTA: TIntegerField;
    MovimentoORIGEM: TIBStringField;
    MovimentoPLANILHA: TIntegerField;
    MovimentoCONTRA_PARTIDA: TIntegerField;
    MovimentoCREDITO: TIBStringField;
    MovimentoDEBITO: TIBStringField;
    MovimentoVALOR: TIBBCDField;
    Razao: TIBQuery;
    Balancete: TIBQuery;
    BalanceteCODIGOPLANO: TIBStringField;
    BalanceteCONTAPAI: TIBStringField;
    BalanceteCONTA: TIntegerField;
    BalanceteNOME: TIBStringField;
    Geral: TIBQuery;
    MovimentoCODIGO_CONTABIL: TIBStringField;
    PlanoBANCO: TIBStringField;
    PlanoCNPJ: TIBStringField;
    IMPRESSORA: TRDprint;
    BalanceteCNPJ: TIBStringField;
    BalanceteCREDITO: TIBBCDField;
    BalanceteDEBITO: TIBBCDField;
    PlanoULTIMO_CHEQUE: TIntegerField;
    Plano_Diferenca: TIBQuery;
    Plano_DiferencaCONTA: TIntegerField;
    Plano_DiferencaCODIGO: TIBStringField;
    Plano_DiferencaCONTAPAI: TIBStringField;
    Plano_DiferencaNOME: TIBStringField;
    Plano_DiferencaBANCO: TIBStringField;
    Plano_DiferencaULTIMO_CHEQUE: TIntegerField;
    RazaoCONTA: TIntegerField;
    RazaoCODIGOPLANO: TIBStringField;
    RazaoCONTAPAI: TIBStringField;
    RazaoNOME: TIBStringField;
    RazaoCODIGO: TIntegerField;
    RazaoDATA: TDateField;
    RazaoTIPO: TIBStringField;
    RazaoDOCUMENTO: TIBStringField;
    RazaoHISTORICO: TIBStringField;
    RazaoMES: TIntegerField;
    RazaoANO: TIntegerField;
    RazaoVALOR: TIBBCDField;
    RazaoORIGEM: TIBStringField;
    RazaoPLANILHA: TIntegerField;
    RazaoCONTRA_PARTIDA: TIntegerField;
    SelPlano: TIBQuery;
    SelPlanoCNPJ: TIBStringField;
    SelPlanoCONTA: TIntegerField;
    SelPlanoCODIGO: TIBStringField;
    SelPlanoCONTAPAI: TIBStringField;
    SelPlanoNOME: TIBStringField;
    SelPlanoBANCO: TIBStringField;
    SelPlanoULTIMO_CHEQUE: TIntegerField;
    Desdobra_Movimento: TIBDataSet;
    Desdobra_MovimentoANO: TIntegerField;
    Desdobra_MovimentoCNPJ: TIBStringField;
    Desdobra_MovimentoDATA: TDateTimeField;
    Desdobra_MovimentoDOCUMENTO: TIBStringField;
    Desdobra_MovimentoHISTORICO: TIBStringField;
    Desdobra_MovimentoMES: TIntegerField;
    Desdobra_MovimentoORIGEM: TIBStringField;
    Desdobra_MovimentoPLANILHA: TIntegerField;
    Desdobra_MovimentoVALOR: TFloatField;
    Desdobra_Movimento_Contas: TIBDataSet;
    Desdobra_Movimento_ContasCNPJ: TIBStringField;
    Desdobra_Movimento_ContasPLANILHA: TIntegerField;
    Desdobra_Movimento_ContasCONTA: TIntegerField;
    Desdobra_Movimento_ContasNOME: TIBStringField;
    Desdobra_Movimento_ContasTIPO: TIBStringField;
    Desdobra_Movimento_ContasVALOR: TFloatField;
    Desdobra_MovimentoPESSOA_FJ: TIntegerField;
    PlanoMovimento: TIBQuery;
    PlanoMovimentoCNPJ: TIBStringField;
    PlanoMovimentoCONTA: TIntegerField;
    PlanoMovimentoCODIGO: TIBStringField;
    PlanoMovimentoCONTAPAI: TIBStringField;
    PlanoMovimentoNOME: TIBStringField;
    PlanoMovimentoBANCO: TIBStringField;
    PlanoMovimentoULTIMO_CHEQUE: TIntegerField;
    Desdobra_Movimento_ContasPROCESSA: TIBStringField;
    MovimentoCNPJ: TIBStringField;
    MovimentoEXCLUIR: TIBStringField;
    ImpPlano: TIBQuery;
    ImpPlanoCNPJ: TIBStringField;
    ImpPlanoCONTA: TIntegerField;
    ImpPlanoCODIGO: TIBStringField;
    ImpPlanoCONTAPAI: TIBStringField;
    ImpPlanoNOME: TIBStringField;
    ImpPlanoBANCO: TIBStringField;
    ImpPlanoULTIMO_CHEQUE: TIntegerField;
    VER_RAZAO_RECEITAS: TIBQuery;
    VER_RAZAO_RECEITASCNPJ: TIBStringField;
    VER_RAZAO_RECEITASCODIGO: TIntegerField;
    VER_RAZAO_RECEITASCODIGO_CONTABIL: TIBStringField;
    VER_RAZAO_RECEITASDATA: TDateField;
    VER_RAZAO_RECEITASTIPO: TIBStringField;
    VER_RAZAO_RECEITASDOCUMENTO: TIBStringField;
    VER_RAZAO_RECEITASHISTORICO: TIBStringField;
    VER_RAZAO_RECEITASMES: TIntegerField;
    VER_RAZAO_RECEITASANO: TIntegerField;
    VER_RAZAO_RECEITASVALOR: TIBBCDField;
    VER_RAZAO_RECEITASCONTA: TIntegerField;
    VER_RAZAO_RECEITASORIGEM: TIBStringField;
    VER_RAZAO_RECEITASPLANILHA: TIntegerField;
    VER_RAZAO_RECEITASCONTRA_PARTIDA: TIntegerField;
    VER_RAZAO_RECEITASCREDITO: TIBStringField;
    VER_RAZAO_RECEITASDEBITO: TIBStringField;
    VER_RAZAO_RECEITASEXCLUIR: TIBStringField;
    VER_RAZAO_RECEITASCONTA_PAI: TIBStringField;
    VER_RAZAO_RECEITASNOME_CONTA_PAI: TIBStringField;
    VER_RAZAO_RECEITASVALOR_INDEXADO: TIBBCDField;
    SLDANT: TIBQuery;
    SLDANTSOMAC: TIBBCDField;
    SLDANTSOMAD: TIBBCDField;
    SALDO_CONTA_PERIODO: TIBQuery;
    SALDO_CONTA_PERIODOSOMAC: TIBBCDField;
    SALDO_CONTA_PERIODOSOMAD: TIBBCDField;
    VER_RAZAO_DESPESAS: TIBQuery;
    VER_RAZAO_DESPESASCNPJ: TIBStringField;
    VER_RAZAO_DESPESASCODIGO: TIntegerField;
    VER_RAZAO_DESPESASCODIGO_CONTABIL: TIBStringField;
    VER_RAZAO_DESPESASDATA: TDateField;
    VER_RAZAO_DESPESASTIPO: TIBStringField;
    VER_RAZAO_DESPESASDOCUMENTO: TIBStringField;
    VER_RAZAO_DESPESASHISTORICO: TIBStringField;
    VER_RAZAO_DESPESASMES: TIntegerField;
    VER_RAZAO_DESPESASANO: TIntegerField;
    VER_RAZAO_DESPESASVALOR: TIBBCDField;
    VER_RAZAO_DESPESASCONTA: TIntegerField;
    VER_RAZAO_DESPESASORIGEM: TIBStringField;
    VER_RAZAO_DESPESASPLANILHA: TIntegerField;
    VER_RAZAO_DESPESASCONTRA_PARTIDA: TIntegerField;
    VER_RAZAO_DESPESASCREDITO: TIBStringField;
    VER_RAZAO_DESPESASDEBITO: TIBStringField;
    VER_RAZAO_DESPESASEXCLUIR: TIBStringField;
    VER_RAZAO_DESPESASCONTA_PAI: TIBStringField;
    VER_RAZAO_DESPESASNOME_CONTA_PAI: TIBStringField;
    VER_RAZAO_DESPESASVALOR_INDEXADO: TIBBCDField;
    VER_RAZAO_DESPESAS_SINTETICO: TIBQuery;
    VER_RAZAO_DESPESAS_SINTETICOVALOR: TIBBCDField;
    VER_RAZAO_DESPESAS_SINTETICOCONTA_PAI: TIBStringField;
    VER_RAZAO_DESPESAS_SINTETICONOME_CONTA_PAI: TIBStringField;
    VER_RAZAO_DESPESAS_SINTETICOVALOR_INDEXADO: TIBBCDField;
    VER_RAZAO_DESPESAS_ACUMULADAS: TIBQuery;
    VER_RAZAO_DESPESAS_ACUMULADASVALOR: TIBBCDField;
    VER_RAZAO_DESPESAS_ACUMULADASINDICE: TIBBCDField;
    VER_RAZAO_DESPESAS_ACUMULADASCONTA_PAI: TIBStringField;
    VER_RAZAO_DESPESAS_ACUMULADASNOME_CONTA_PAI: TIBStringField;
    VER_RAZAO_DESPESAS_ACUMULADASVALOR_INDEXADO: TIBBCDField;
    SALDOANT_CONTA_RAZAO: TIBQuery;
    SALDOANT_CONTA_RAZAOSOMAC: TIBBCDField;
    SALDOANT_CONTA_RAZAOSOMAD: TIBBCDField;
    SALDO_CONTA_PERIODO_RAZAO: TIBQuery;
    SALDO_CONTA_PERIODO_RAZAOSOMAC: TIBBCDField;
    SALDO_CONTA_PERIODO_RAZAOSOMAD: TIBBCDField;
    Ctb_Altera_Movtos: TIBDataSet;
    Ctb_Altera_MovtosCNPJ: TIBStringField;
    Ctb_Altera_MovtosANO: TIntegerField;
    Ctb_Altera_MovtosBANCO: TIBStringField;
    Ctb_Altera_MovtosCOD_DOC: TIBStringField;
    Ctb_Altera_MovtosCODIGO: TIntegerField;
    Ctb_Altera_MovtosCONTA: TIntegerField;
    Ctb_Altera_MovtosCONTRA_PARTIDA: TIntegerField;
    Ctb_Altera_MovtosDATA: TDateTimeField;
    Ctb_Altera_MovtosDATA_CONCILIACAO: TDateTimeField;
    Ctb_Altera_MovtosDOCUMENTO: TIBStringField;
    Ctb_Altera_MovtosEXCLUIR: TIBStringField;
    Ctb_Altera_MovtosFORNECEDOR: TIntegerField;
    Ctb_Altera_MovtosHISTORICO: TIBStringField;
    Ctb_Altera_MovtosORIGEM: TIBStringField;
    Ctb_Altera_MovtosPLANILHA: TIntegerField;
    Ctb_Altera_MovtosTIPO: TIBStringField;
    Ctb_Altera_MovtosTIPO_LANCAMENTO: TIBStringField;
    Ctb_Altera_MovtosVALOR: TFloatField;
    Ctb_Altera_MovtosVALOR_INDEXADO: TFloatField;
    CONFIG_REL: TIBDataSet;
    CONFIG_RELCNPJ: TIBStringField;
    CONFIG_RELCODIGO: TIntegerField;
    CONFIG_RELNOME: TIBStringField;
    PLANO_CONF_REL: TIBQuery;
    PLANO_CONF_RELCONTA: TIntegerField;
    PLANO_CONF_RELNOME: TIBStringField;
    CONFIG_REL_CONTAS: TIBDataSet;
    VER_CTB_CONFIGURA_REL_CONTAS: TIBQuery;
    VER_CTB_CONFIGURA_REL_CONTASCONTA: TIntegerField;
    VER_CTB_CONFIGURA_REL_CONTASNOME: TIBStringField;
    DSCONFIG_REL: TDataSource;
    CONFIG_REL_CONTASCNPJ: TIBStringField;
    CONFIG_REL_CONTASCODIGO: TIntegerField;
    CONFIG_REL_CONTASCONTA: TIntegerField;
    EXCLUI_CTB_CONFIG_REL_CONTAS: TIBStoredProc;
    CONTA_CTB_CONFIG_REL_CONTAS: TIBStoredProc;
    CONFIGURACOES: TIBDataSet;
    CONFIGURACOESCNPJ: TIBStringField;
    CONFIGURACOESATIVO: TIBStringField;
    CONFIGURACOESPASSIVO: TIBStringField;
    CONFIGURACOESCMV: TIBStringField;
    CONFIGURACOESRECEITAS: TIBStringField;
    CONFIGURACOESDESPESAS: TIBStringField;
    BalanceteDATA: TDateField;
    BalanceteTIPO: TIBStringField;
    BalanceteANTERIOR: TIBBCDField;
    PlanoTIPO: TIBStringField;
    SelPlanoTIPO: TIBStringField;
    ImpPlanoTIPO: TIBStringField;
    Ctb_Fluxo_Caixa: TIBDataSet;
    Ctb_Fluxo_CaixaCNPJ: TIBStringField;
    Ctb_Fluxo_CaixaCARTAO: TFloatField;
    Ctb_Fluxo_CaixaCHQ_PRAZO: TFloatField;
    Ctb_Fluxo_CaixaDATA: TDateTimeField;
    Ctb_Fluxo_CaixaPAGAR: TFloatField;
    Ctb_Fluxo_CaixaRECEBER: TFloatField;
    Ctb_Fluxo_CaixaSALDO: TFloatField;
    Ctb_Fluxo_CaixaSALDO_INICIAL: TFloatField;
    Ctb_Fluxo_CaixaVENDAS_VISTA: TFloatField;
    CRIA_CTB_FLUXO_CAIXA: TIBStoredProc;
    SOMA_CARTAO_FLUXO: TIBStoredProc;
    PlanoAGENCIA: TIBStringField;
    PlanoDV_AGENCIA: TIBStringField;
    PlanoCONTA_CORRENTE: TIBStringField;
    PlanoDV_CONTA_CORRENTE: TIBStringField;
    PlanoDV_AGENCIA_CONTA: TIBStringField;
    SelPlanoAGENCIA: TIBStringField;
    SelPlanoDV_AGENCIA: TIBStringField;
    SelPlanoCONTA_CORRENTE: TIBStringField;
    SelPlanoDV_CONTA_CORRENTE: TIBStringField;
    SelPlanoDV_AGENCIA_CONTA: TIBStringField;
    IBQuery1: TIBQuery;
    PlanoCTB_FLUXO_CAIXA: TIBStringField;
    PlanoGERA_BOLETOS: TIBStringField;
    PlanoBLT_INSTRUCAO: TMemoField;
    PlanoBLT_LOCAL_PAGTO: TIBStringField;
    PlanoBLT_COD_CEDENTE: TIntegerField;
    PlanoBLT_DIG_COD_CEDENTE: TIBStringField;
    PlanoBLT_CONVENIO: TIntegerField;
    PlanoBLT_CARTEIRA: TIBStringField;
    PlanoBLT_LAYOUT: TSmallintField;
    PlanoBLT_ACEITE_DOCTO: TIBStringField;
    PlanoBLT_DIAS_ABATIMENTO: TIBStringField;
    PlanoBLT_DIAS_DESCONTO: TIntegerField;
    PlanoBLT_DIAS_MORA_JUROS: TIntegerField;
    PlanoBLT_DIAS_PROTESTO: TIntegerField;
    PlanoBLT_PCT_ABATIMENTO: TFloatField;
    PlanoBLT_PCT_DESCONTO: TFloatField;
    PlanoDESP_BANCARIA: TFloatField;
    PlanoMORA_DIARIA: TFloatField;
    PlanoBLT_VLR_IOF: TFloatField;
    PlanoBLT_VLR_OUTRAS_DESP: TFloatField;
    PlanoBLT_DIR_REMESSA: TIBStringField;
    PlanoBLT_DIR_RETORNO: TIBStringField;
    PlanoBLT_MULTA: TFloatField;
    PlanoBLT_NOSSO_NUM_INI: TIntegerField;
    PlanoBLT_NOSSO_NUM_FIM: TIntegerField;
    PlanoBLT_NOSSO_NUM_PROX: TIntegerField;
    PlanoBLT_AGENCIA: TIBStringField;
    PlanoBLT_DIG_AGENCIA: TIBStringField;
    PlanoBLT_CONTA: TIBStringField;
    PlanoBLT_DIG_CONTA: TIBStringField;
    PlanoBLT_MODALIDADE: TIBStringField;
    PlanoBLT_LAYOUT_IMPRESSAO: TIBStringField;
    PlanoBLT_NUM_COPIAS: TIntegerField;
    procedure PlanoAfterClose(DataSet: TDataSet);
    procedure PlanoAfterInsert(DataSet: TDataSet);
    procedure PlanoBeforeOpen(DataSet: TDataSet);
    procedure PlanoBeforePost(DataSet: TDataSet);
    procedure IMPRESSORABeforeNewPage(Sender: TObject; Pagina: Integer);
    procedure IMPRESSORANewPage(Sender: TObject; Pagina: Integer);
    procedure Desdobra_Movimento_ContasAfterInsert(DataSet: TDataSet);
    procedure Desdobra_Movimento_ContasCONTAValidate(Sender: TField);
    procedure Desdobra_MovimentoDATAValidate(Sender: TField);
    procedure Desdobra_Movimento_ContasAfterPost(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure CONFIG_RELAfterInsert(DataSet: TDataSet);
    procedure CONFIG_RELBeforeOpen(DataSet: TDataSet);
    procedure CONFIG_RELBeforePost(DataSet: TDataSet);
    procedure CONFIG_REL_CONTASNewRecord(DataSet: TDataSet);
    procedure EXCLUI_CONTA_CONF_REL ( CODIGO: INTEGER; CONTA : INTEGER );
    Function  CONTA_CONTA_CONF_REL ( CODIGO: INTEGER; CONTA : INTEGER ): Integer;
    procedure CONFIGURACOESAfterInsert(DataSet: TDataSet);
    procedure CONFIGURACOESNewRecord(DataSet: TDataSet);
    procedure Ctb_Fluxo_CaixaAfterInsert(DataSet: TDataSet);
    procedure Ctb_Fluxo_CaixaNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure lsPlano;
    procedure ValidaPlanoConta;
    Function  Codigo_Conta ( Conta: Integer ): String;
    Function  Fluxo_Soma_Cartao ( Data: TDateTime ): Real;
  end;

var
  DmPlano: TDmPlano;
  LINHA, PAGINA: Integer;
  BReg: TBookMark ;
  TituloColunas: String ;  
implementation

uses Application_DM, Funcoes;

{$R *.DFM}

Function TDmPlano.Codigo_Conta ( Conta: Integer ): String;
Begin
     Try
        Geral.Close ;
        Geral.Sql.Clear ;

        Geral.Params.CreateParam ( FtString , 'E', PtInput );
        Geral.Params.CreateParam ( FtInteger, 'C', PtInput );

        Geral.Sql.Add (' Select CODIGO From Ctb_PlanoConta Where Conta = :C and Cnpj = :E ');

        Geral.ParamByName ('E').AsString  := DmApp.Cnpj   ;
        Geral.ParamByName ('C').AsInteger := Conta        ;

        Geral.Prepare ;
        Geral.Open ;

        If Geral.Fields[0].isNull
        then Begin
             Result := '';
        end
        else begin
             Result := Geral.Fields[0].Value ;
        end;
     except
           Result := '';
     end;
end;

procedure TDmPlano.EXCLUI_CONTA_CONF_REL ( CODIGO: INTEGER; CONTA : INTEGER );
Begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction
        then
            DmaPP.TransactionProc.StartTransaction ;

        EXCLUI_CTB_CONFIG_REL_CONTAS.Close ;

        EXCLUI_CTB_CONFIG_REL_CONTAS.ParamByName ('CNPJ'   ).asString  := DmaPP.Cnpj ;
        EXCLUI_CTB_CONFIG_REL_CONTAS.ParamByName ('CODIGO' ).asInteger := Codigo     ;
        EXCLUI_CTB_CONFIG_REL_CONTAS.ParamByName ('CONTA'  ).asInteger := Conta      ;

        EXCLUI_CTB_CONFIG_REL_CONTAS.ExecProc;

        DmApp.TransactionProc.Commit ;
     except
           DmApp.TransactionProc.Rollback ;
     end;
end;

Function TDmPlano.Fluxo_Soma_Cartao ( Data: TDateTime ): Real;
Begin
     Try
        SOMA_CARTAO_FLUXO.Close ;

        SOMA_CARTAO_FLUXO.ParamByName ('CNPJ').AsString  := DmApp.Cnpj ;
        SOMA_CARTAO_FLUXO.ParamByName ('DATA').AsFloat   := Data       ;

        SOMA_CARTAO_FLUXO.Prepare ;
        SOMA_CARTAO_FLUXO.Open ;

        If SOMA_CARTAO_FLUXO.Fields[0].isNull
        then Begin
             Result := 0;
        end
        else begin
             Result := SOMA_CARTAO_FLUXO.Fields[0].Value ;
        end;
     except
           Result := 0;
     end;
end;

Function TDmPlano.CONTA_CONTA_CONF_REL ( CODIGO: INTEGER; CONTA : INTEGER ): Integer;
Begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction
        then
            DmaPP.TransactionProc.StartTransaction ;

        CONTA_CTB_CONFIG_REL_CONTAS.Close ;

        CONTA_CTB_CONFIG_REL_CONTAS.ParamByName ('CNPJ'   ).asString  := DmaPP.Cnpj ;
        CONTA_CTB_CONFIG_REL_CONTAS.ParamByName ('CODIGO' ).asInteger := Codigo     ;
        CONTA_CTB_CONFIG_REL_CONTAS.ParamByName ('CONTA'  ).asInteger := Conta      ;

        CONTA_CTB_CONFIG_REL_CONTAS.ExecProc;

        RESULT := CONTA_CTB_CONFIG_REL_CONTAS.ParamByName ('NUM').asInteger ;

        DmApp.TransactionProc.Commit ;
     except
           DmApp.TransactionProc.Rollback ;
     end;
end;

procedure TDmPlano.lsPlano;
VAR
   AUX, I: INTEGER;
begin
  //
  //
  ImpPlano.Open ;
  ImpPlano.First;
  //
  Pagina := 1;
  Impressora.TitulodoRelatorio := 'Plano de Contas';
  TituloColunas := Format('%6s %-50s %6s', ['Codigo', 'Nome', 'C/D']);
  Impressora.Abrir;
  //
  While Not ImpPlano.Eof Do
  Begin
       Impressora.ImpF(Linha, 1, ImpPlano.FieldByName('CONTA').Value, [Comp17]);

       Impressora.ImpF(Linha, length(ImpPlano.FieldByName('CODIGO').Value), ImpPlano.FieldByName('CODIGO').Value, [Comp17]);

       I := 0;

       IF (length(ImpPlano.FieldByName('CODIGO').Value) <= 1 ) AND ( I = 0 )
       THEN BEGIN
            AUX := 0;
            I := 1;
       END;

       IF (length(ImpPlano.FieldByName('CODIGO').Value) <= 4) AND ( I = 0 )
       THEN BEGIN
            AUX := 2;
            I := 1;
       END;

       IF (length(ImpPlano.FieldByName('CODIGO').Value) <= 7 ) AND ( I = 0 )
       THEN BEGIN
            AUX := 4;
            I := 1;
       END;

       IF (length(ImpPlano.FieldByName('CODIGO').Value) <= 10 ) AND ( I = 0 )
       THEN BEGIN
            AUX := 6;
            I := 1;
       END;

       IF (length(ImpPlano.FieldByName('CODIGO').Value) <= 15 ) AND ( I = 0 )
       THEN BEGIN
            AUX := 8;
       END;

       Impressora.ImpF(Linha, 25 + AUX, ImpPlano.FieldByName('NOME').Value , [Comp17]);

       Impressora.ImpF(Linha, 130, ImpPlano.FieldByName('TIPO').AsString, [Comp17]);

       ImpPlano.Next;

       Inc(Linha);

       If Linha > 62
       then
           Impressora.Novapagina ;
  End;
  //
  Impressora.ImpF(Linha + 1, 01, Replicate('-', 80), [Normal]);
  Impressora.ImpF(Linha + 2, 01, Format('%6s %-60s', [FormatFloat('#,##0', ImpPlano.RecordCount), 'registro(s) listado(s).']), [Normal]);
  //
  //
  Impressora.Fechar;

  ImpPlano.Close ;
end;

procedure TDmPlano.PlanoAfterClose(DataSet: TDataSet);
begin
  (Dataset as TIBDataset).UnPrepare;
end;

procedure TDmPlano.PlanoAfterInsert(DataSet: TDataSet);
begin
     PlanoCONTAPAI.VALUE := ' ';
     PLANOCONTA.Value := DMApp.GerarCodigo(UpperCase(Dataset.Name), 0) + 1;
     PLANOCNPJ.Value  := DMApp.Cnpj;
     ValidaPlanoConta;
end;

procedure TDmPlano.PlanoBeforeOpen(DataSet: TDataSet);
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

procedure TDmPlano.PlanoBeforePost(DataSet: TDataSet);
begin
  If Dataset.State = dsInsert Then
     PlanoCONTA.Value := DMApp.GerarCodigo(UpperCase(Dataset.Name), 1);

 ValidaPlanoConta;
end;

procedure TDmPlano.IMPRESSORABeforeNewPage(Sender: TObject; Pagina: Integer);
begin
  //Rodapé
  IMPRESSORA.ImpF(62, 01, Replicate('-', 80), [Normal]);
  IMPRESSORA.ImpF(63, 01, Format('%-122s Pagina : %4s', [dmApp.QryParceiroPARC_TEXTO_RELATORIO.AsString, StrZero(Pagina, 4)]), [Comp17]);
  Linha := 0;
end;

procedure TDmPlano.IMPRESSORANewPage(Sender: TObject; Pagina: Integer);
begin
  //Cabecalho
  Impressora.ImpF(01, 01, DmApp.Nome, [Negrito]);
  Impressora.ImpF(01, 62, DateTIMEToStr(NOW()), [Normal]);
  Impressora.ImpF(02, 01, Impressora.TitulodoRelatorio, [Normal]);
  Impressora.ImpF(02, 73, TimeToStr(Time()), [Normal]);
  Impressora.ImpF(03, 01, Replicate('-', 80), [Normal]);

  Impressora.ImpF(04, 01, 'CODIGO', [Comp20]);
  Impressora.ImpF(04, 40, 'NOME', [Comp20]);

  Impressora.ImpF(05, 01, Replicate('-', 80), [Normal]);
  Linha := 7;
end;

procedure TDmPlano.Desdobra_Movimento_ContasAfterInsert(DataSet: TDataSet);
begin
     Desdobra_Movimento_ContasCNPJ.Value     := Desdobra_MovimentoCNPJ.Value     ;
     Desdobra_Movimento_ContasPLANILHA.Value := Desdobra_MovimentoPLANILHA.Value ;
     Desdobra_Movimento_ContasPROCESSA.Value := 'S'                              ;
end;

procedure TDmPlano.Desdobra_Movimento_ContasCONTAValidate(Sender: TField);
begin
     If Sender.IsNull
     Then
         Exit ;

     Geral.Close ;
     Geral.Sql.Clear ;

     Geral.Params.CreateParam ( FtString , 'E', PtInput );
     Geral.Params.CreateParam ( FtInteger, 'C', PtInput );

     Geral.Sql.Add (' Select NOME From Ctb_PlanoConta Where Conta = :C and Cnpj = :E ');

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
          Desdobra_Movimento_ContasNOME.Value := Geral.Fields[0].Value ;
     end;
end;

procedure TDmPlano.Desdobra_MovimentoDATAValidate(Sender: TField);
Var
   Ano, Mes: String  ;
   Len     : Integer ;
begin
     Len := Length(Desdobra_MovimentoDATA.Text);

     If Len = 8
     then begin
          Ano := Copy (Desdobra_MovimentoDATA.Text,7,2 );
     end
     else begin
          Ano := Copy (Desdobra_MovimentoDATA.Text,9,2 );
     end;

     Mes := Copy (Desdobra_MovimentoDATA.Text, 4, 2);

     Desdobra_MovimentoANO.Value := StrToInt ( Ano );
     Desdobra_MovimentoMES.Value := StrToInt ( Mes );
end;

procedure TDmPlano.Desdobra_Movimento_ContasAfterPost(DataSet: TDataSet);
begin
     Desdobra_Movimento_Contas.Append ;
end;

procedure TDmPlano.DataModuleCreate(Sender: TObject);
begin
     IniciaComponentesDm ( Sender as TDataModule );
end;

procedure TDmPlano.CONFIG_RELAfterInsert(DataSet: TDataSet);
begin
     CONFIG_RELCODIGO.Value := DMApp.GerarCodigo(UpperCase(Dataset.Name), 0) + 1;
     CONFIG_RELCNPJ.Value   := DMApp.Cnpj;
end;

procedure TDmPlano.CONFIG_RELBeforeOpen(DataSet: TDataSet);
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

procedure TDmPlano.CONFIG_RELBeforePost(DataSet: TDataSet);
begin
     If Dataset.State = dsInsert
     Then
         CONFIG_RELCODIGO.Value := DMApp.GerarCodigo(UpperCase(Dataset.Name), 1);
end;

procedure TDmPlano.CONFIG_REL_CONTASNewRecord(DataSet: TDataSet);
begin
     CONFIG_REL_CONTASCNPJ.Value   := CONFIG_RELCNPJ.Value   ;
     CONFIG_REL_CONTASCODIGO.Value := CONFIG_RELCODIGO.Value ;
end;

procedure TDmPlano.CONFIGURACOESAfterInsert(DataSet: TDataSet);
begin
     CONFIGURACOESCNPJ.Value  := DMApp.Cnpj;
end;

procedure TDmPlano.CONFIGURACOESNewRecord(DataSet: TDataSet);
begin
     CONFIGURACOESCNPJ.Value  := DMApp.Cnpj;
end;

procedure TDmPlano.Ctb_Fluxo_CaixaAfterInsert(DataSet: TDataSet);
begin
     Ctb_Fluxo_CaixaCNPJ.Value  := DMApp.Cnpj;
end;

procedure TDmPlano.Ctb_Fluxo_CaixaNewRecord(DataSet: TDataSet);
Var
   I: Integer;
begin
     For I := 0 to Ctb_Fluxo_Caixa.FieldCount - 1 do
     begin
          If Ctb_Fluxo_Caixa.Fields.FIELDS[i].DataType = FtFloat
          then Begin
               Ctb_Fluxo_Caixa.Fields[i].Value := 0;
          end;
     end;
end;

procedure TDmPlano.ValidaPlanoConta;
var
  Len : integer;
begin
  {Esta codificação estava nos triguers de befor update e befor Insert
  do banco de dados, e utiliava UDFs para as valiadações, o código
  foi trazido para a aplicação juntamente com as funções das UDFs
  que estas possuiam}

  //formatando o código do plano de contas
  if not ( Plano.state in [ dsinsert, dsedit ] )
  then
      Plano.edit ;

  PlanoCodigo.value := PlnCtaFormat(Pchar(PlanoCodigo.value), '9.99.99.99.9999');

{  if (PlanoCodigo.asstring = '') then
  begin
    application.messagebox('Exclusao Nao Permitida, Verifique!','Aviso',mb_ok);
    exit;
  end;
 }
  LEN := length(PlanoCodigo.asstring);
  if (LEN > 1) then
    PlanoCONTAPAI.value := PlnCtaMain(Pchar(PlanoCODIGO.value));
end;

end.


