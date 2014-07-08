 unit Sintegra_Prosoft_Form;

interface
                       
uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxBar, StdCtrls, ExtCtrls, dxCntner, dxEditor, dxEdLib,
  ComCtrls,  ActnList, dbtables, db, IBCustomDataSet, IBQuery,
    IBStoredProc, variants, dxExEdtr, DateUtils,
  cxPropertiesStore, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, Menus, cxButtons, cxLabel;

type
  TFrmProsoftSintegra = class(TForm)
    pnlClient: TPanel;
    Bevel1: TBevel;
    b2: TBevel;
    LblTitulo: TcxLabel;
    Panel2: TPanel;
    LblStatus: TcxLabel;
    RzBitBtn2: TcxButton;
    pgb: TProgressBar;
    DIR: TOpenDialog;
    Actions: TActionList;
    ActFechar: TAction;
    ActAbre: TAction;
    ActExporta: TAction;
    Parceiros: TIBQuery;
    ActImporta: TAction;
    ActAbreElgin: TAction;
    ActImportaElgin: TAction;
    btnExporta: TcxButton;
    Label3: TcxLabel;
    PathDestino: TdxEdit;
    Ini: TdxDateEdit;
    Fim: TdxDateEdit;
    Label1: TcxLabel;
    Label2: TcxLabel;
    BtnDir: TcxButton;
    GroupBox1: TGroupBox;
    rdNF: TRadioButton;
    rdNFI: TRadioButton;
    rdTerc: TRadioButton;
    rdNFET: TRadioButton;
    rdNFETI: TRadioButton;
    Label4: TcxLabel;
    ParceirosPERSONALIDADE: TIBStringField;
    ParceirosCPF_CGC: TIBStringField;
    ParceirosNOME_RAZAO: TIBStringField;
    ParceirosFANTASIA: TIBStringField;
    ParceirosLOGRADOURO: TIBStringField;
    ParceirosNUMERO: TIBStringField;
    ParceirosCOMPLEMENTO: TIBStringField;
    ParceirosCEP: TIBStringField;
    ParceirosBAIRRO: TIBStringField;
    ParceirosMUNICIPIO: TIBStringField;
    ParceirosUF: TIBStringField;
    ParceirosDT_NASCIMENTO: TDateTimeField;
    ParceirosFONE: TIBStringField;
    ParceirosFAX: TIBStringField;
    ParceirosEMAIL: TIBStringField;
    ParceirosRG_IE: TIBStringField;
    ParceirosINSC_MUNIC: TIBStringField;
    ParceirosSEXO: TIBStringField;
    ParceirosCOD_IBGE: TIBStringField;
    NFSaida: TIBQuery;
    NFSaidaNUM_NF: TIntegerField;
    NFSaidaSERIE: TIBStringField;
    NFSaidaDATA_SAIDA: TDateField;
    NFSaidaVALOR_CONTABIL: TFloatField;
    NFSaidaVALOR_MERCADORIAS: TFloatField;
    NFSaidaBASE_CALCULO_ICMS: TFloatField;
    NFSaidaICMS_DEBITADO: TFloatField;
    NFSaidaALIQUOTA_ICMS: TFloatField;
    NFSaidaCLIENTE_CPF_CNPJ: TIBStringField;
    NFSaidaCLIENTE_UF: TIBStringField;
    NFSaidaCLIENTE_IE: TIBStringField;
    NFSaidaTIPO_FRETE: TIBStringField;
    NFSaidaCONDICAO_VENDA: TIBStringField;
    NFSaidaDATA_DOCUMENTO: TDateField;
    NFSaidaCFOP: TIntegerField;
    NFSaidaBASE_CALCULO_ICMS_SUB: TFloatField;
    NFSaidaIMPOSTO_RETIDO_ICMS_SUB: TFloatField;
    NFSaidaNOTA_CANCELADA: TIBStringField;
    NFSaidaItens: TIBQuery;
    NFSaidaItensNUM_NF: TIntegerField;
    NFSaidaItensSERIE: TIBStringField;
    NFSaidaItensDATA_SAIDA: TDateField;
    NFSaidaItensICMS_DEBITADO: TFloatField;
    NFSaidaItensALIQUOTA_ICMS: TFloatField;
    NFSaidaItensCFOP: TIntegerField;
    NFSaidaItensIMPOSTO_RETIDO_ICMS_SUB: TFloatField;
    NFSaidaItensNUM_ITEM: TIntegerField;
    NFSaidaItensCOD_PRODUTO: TIBStringField;
    NFSaidaItensUNIDADE: TIBStringField;
    NFSaidaItensSIT_TRIB: TIBStringField;
    NFSaidaItensQTDE: TFloatField;
    NFSaidaItensPRECO_UNITARIO: TFloatField;
    NFSaidaItensDESCONTO: TFloatField;
    NFSaidaItensVALOR_ITEM: TFloatField;
    NFSaidaItensBASE_ICMS: TFloatField;
    NFSaidaItensBASE_ICMS_SUB: TFloatField;
    NFSaidaItensPRODUTO_DESCRICAO: TIBStringField;
    NFSaidaItensPRODUTO_SIT_TRIB: TIBStringField;
    NFSaidaItensPRODUTO_FANTASIA: TIBStringField;
    NFSaidaItensMOVIMENTA_MERCADORIA: TIBStringField;
    NFSaidaItensINDICACAO_TRIBUTACAO: TIBStringField;
    rdCF: TRadioButton;
    rdCFI: TRadioButton;
    CFMestre: TIBQuery;
    CFMestreCNPJ: TIBStringField;
    CFMestreCODIGO: TIntegerField;
    CFMestreDATA_MOVIMENTO: TDateField;
    CFMestreNUM_SEQ_ECF: TIBStringField;
    CFMestreNUM_SER_ECF: TIBStringField;
    CFMestreCT_OO_ANT: TIntegerField;
    CFMestreCT_OO_FIN: TIntegerField;
    CFMestreCT_RED_Z_FIN: TIntegerField;
    CFMestreNUM_ULT_DOC_IMP: TIntegerField;
    CFMestreNUM_CONT_R_OO: TIntegerField;
    CFMestreTT_GERAL_INI: TFloatField;
    CFMestreTT_GERAL_FIN: TFloatField;
    CFMestreMOVIMENTO_DIA: TFloatField;
    CFMestreCANCELAMENTOS: TFloatField;
    CFMestreDESCCONTOS: TFloatField;
    CFMestreTT_OP_ISS: TFloatField;
    CFMestreACRESCIMO: TFloatField;
    CFMestreVALOR_CONTABIL: TFloatField;
    CFMestreF_SUB_TRIB: TFloatField;
    CFMestreI_ISENTAS: TFloatField;
    CFMestreN_INCIDENCIA: TFloatField;
    CFMestreSUSPENSAO: TFloatField;
    CFMestreALIQ_ICMS_01: TFloatField;
    CFMestreDEBITO_ICMS_01: TFloatField;
    CFMestreBASE_ICMS_01: TFloatField;
    CFMestrePCT_REDUCAO_01: TFloatField;
    CFMestreVALOR_S_REDUCAO_01: TFloatField;
    CFMestreVALOR_C_REDUCAO_01: TFloatField;
    CFMestreVALOR_ICMS_01: TFloatField;
    CFMestreVALOR_OUTRAS_01: TFloatField;
    CFMestreVALOR_ISENTAS_01: TFloatField;
    CFCabecalho: TIBQuery;
    CFItens: TIBQuery;
    CFCabecalhoDT_EMISSAO_CF: TDateField;
    CFCabecalhoNUM_CUPOM: TIntegerField;
    CFCabecalhoTOTAL_NOTA: TFloatField;
    CFCabecalhoSERIE: TIBStringField;
    CFCabecalhoN_SEQ_ECF: TIBStringField;
    CFCabecalhoN_SERIE_ECF: TIBStringField;
    CFItensDT_EMISSAO_CF: TDateField;
    CFItensN_SEQ_ECF: TIBStringField;
    CFItensNUM_CUPOM: TIntegerField;
    CFItensTIPO_ITEM: TIBStringField;
    CFItensPRODUTO: TIBStringField;
    CFItensCST: TIBStringField;
    CFItensQUANTIDADE: TFloatField;
    CFItensPRC_UNITARIO: TFloatField;
    CFItensVALORTOTAL: TFloatField;
    CFItensBASECALCULOICM: TFloatField;
    CFItensICM: TFloatField;
    CFItensALIQUOTA_ICMS: TFloatField;
    NFEntrada: TIBQuery;
    NFEntradaCPF_CGC: TIBStringField;
    NFEntradaDATA_ENT: TDateTimeField;
    NFEntradaDATA_NF: TDateTimeField;
    NFEntradaSERIE_NF: TIBStringField;
    NFEntradaVLR_PRODUTOS: TFloatField;
    NFEntradaVLR_BC_ICM: TFloatField;
    NFEntradaVLR_ICM: TFloatField;
    NFEntradaVLR_IPI: TFloatField;
    NFEntradaPERC_ICM: TFloatField;
    NFEntradaBASE_IPI: TFloatField;
    NFEntradaVLR_TOTAL_NF: TFloatField;
    NFEntradaCONDICAO_PAGTO: TIBStringField;
    NFEntradaRG_IE: TIBStringField;
    NFEntradaUF: TIBStringField;
    NFEntradaNATUREZA: TIntegerField;
    NFEntradaBASE_ICMS_SUB: TFloatField;
    NFEntradaVLR_ICM_SUBS: TFloatField;
    NFEntradaVLR_FRETE: TFloatField;
    NFEntradaVLR_SEGURO: TFloatField;
    NFEntradaVLR_OUTRAS_DESP: TFloatField;
    NFEntradaNDOCTO: TIBStringField;
    NFEntradasItens: TIBQuery;
    NFEntradasItensNUM_NF: TIBStringField;
    NFEntradasItensSERIE: TIBStringField;
    NFEntradasItensDATA_ENTRADA: TDateField;
    NFEntradasItensICMS_DEBITADO: TFloatField;
    NFEntradasItensALIQUOTA_ICMS: TFloatField;
    NFEntradasItensCFOP: TIntegerField;
    NFEntradasItensIMPOSTO_RETIDO_ICMS_SUB: TFloatField;
    NFEntradasItensNUM_ITEM: TIntegerField;
    NFEntradasItensCOD_PRODUTO: TIBStringField;
    NFEntradasItensUNIDADE: TIBStringField;
    NFEntradasItensSIT_TRIB: TIBStringField;
    NFEntradasItensQTDE: TFloatField;
    NFEntradasItensPRECO_UNITARIO: TFloatField;
    NFEntradasItensDESCONTO: TFloatField;
    NFEntradasItensVALOR_ITEM: TFloatField;
    NFEntradasItensBASE_ICMS: TFloatField;
    NFEntradasItensBASE_ICMS_SUB: TFloatField;
    NFEntradasItensBASE_IPI: TFloatField;
    NFEntradasItensIND_TRIB_IPI: TIBStringField;
    NFEntradasItensIND_TRIB_ICMS: TIBStringField;
    NFEntradasItensPRODUTO_DESCRICAO: TIBStringField;
    NFEntradasItensPRODUTO_PCT_RED_BASE: TFloatField;
    NFEntradasItensPRODUTO_ALIQ_IPI: TFloatField;
    NFEntradasItensPRODUTO_ALIQ_ICMS: TFloatField;
    NFEntradasItensPRODUTO_SIT_TRIB: TIBStringField;
    NFEntradasItensPRODUTO_FANTASIA: TIBStringField;
    NFEntradasItensMOVIMENTA_MERCADORIA: TIBStringField;
    NFEntradasItensINDICACAO_TRIBUTACAO: TIBStringField;
    NFEntradasItensALIQUOTA_ISS: TFloatField;
    NFEntradasItensALIQUOTA_IPI: TFloatField;
    NFEntradasItensVALOR_IPI: TFloatField;
    NFEntradasItensREDUCAO: TFloatField;
    NFEntradasItensCNPJ_EMITENTE: TIBStringField;
    ParceirosCODIGO: TIntegerField;
    stgExportaProsoft: TcxPropertiesStore;
    NFSaidaVLR_OUTROS: TFloatField;
    NFSaidaPSA_CODIGO: TIntegerField;
    NFSaidaItensVLR_OUTROS: TFloatField;
    NFEntradasItensDESP_ACESSORIAS: TFloatField;
    NFEntradasItensVLR_ICM_SUBS_ITEM: TFloatField;
    rdProduto: TRadioButton;
    qryProdutos: TIBQuery;
    qryProdutosCODIGO: TIBStringField;
    qryProdutosNOME: TIBStringField;
    qryProdutosUNIDADE: TIBStringField;
    qryProdutosCOD_CLASS_FISCAL: TIBStringField;
    qryProdutosSIT_TRIBUTARIA: TIBStringField;
    qryProdutosCODIGO_MEDIDA_PADRAO: TIBStringField;
    qryProdutosINCENTIVO_FISCAL: TIBStringField;
    qryProdutosSIT_TRIBUTARIA_CF: TIBStringField;
    qryProdutosNOME_FANTASIA: TIBStringField;
    qryProdutosSUJ_SUB_TRIB: TIBStringField;
    NFEntradaTP_NOME: TIBStringField;
    NFSaidaMODELO: TIBStringField;
    NFEntradaMODELO: TIBStringField;
    procedure FormCreate(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure ActExportaExecute(Sender: TObject);
    procedure ParceirosBeforeOpen(DataSet: TDataSet);
    procedure RzBitBtn2Click(Sender: TObject);
    procedure ActAbreExecute(Sender: TObject);
  private
    { Private declarations }
    procedure gera_parceiros;
    procedure gera_produtos;
    procedure gera_cab_nf_saida;
    procedure gera_cab_nf_saida_itens;
    procedure gera_cab_nf_entrada;
    procedure gera_cab_nf_entrada_itens;
    procedure gera_cf;
    procedure gera_cf_itens;
  public
    { Public declarations }
  end;

var
  FrmProsoftSintegra: TFrmProsoftSintegra;

implementation

uses Usuarios_DM, Application_DM, Funcoes;

{$R *.DFM}

procedure TFrmProsoftSintegra.FormCreate(Sender: TObject);
begin
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, Self.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TFrmProsoftSintegra.ActFecharExecute(Sender: TObject);
begin
     Close ;
end;

procedure TFrmProsoftSintegra.ActExportaExecute(Sender: TObject);
begin
 if (trim(PathDestino.Text) = '') then
 begin
   Application.MessageBox('Defina o caminho para geração dos registros','Aviso',mb_ok+mb_iconerror);
   exit;
 end;

 if (rdTerc.Checked) then
   gera_parceiros
 else if (rdProduto.Checked) then
   gera_produtos
 else if (rdNF.Checked) then
   gera_cab_nf_saida
 else if (rdNFi.Checked) then
   gera_cab_nf_saida_itens
 else if (rdCF.Checked) then
   gera_cf
 else if (rdCFI.Checked) then
   gera_cf_itens
 else if (rdNFET.Checked) then
   gera_cab_nf_entrada
 else if (rdNFETI.Checked) then
   gera_cab_nf_entrada_itens;
end;

procedure TFrmProsoftSintegra.ParceirosBeforeOpen(DataSet: TDataSet);
begin
     (DataSet as TIBQuery).ParamByName('CNPJ').asString := DMApp.Cnpj;
     (DataSet as TIBQuery).Prepare;
end;

procedure TFrmProsoftSintegra.RzBitBtn2Click(Sender: TObject);
begin
     Close ;
end;


procedure TFrmProsoftSintegra.gera_parceiros;
var
  I,sequencia: Integer;
  qtdex: real;
  f: TextFile;
  aux, ano, mes, dia : string;

  tiporegistro: String[3];
  ordem: String[5];
  filter: String[2];
  personalidade: String[1];
  cpf_cnpj_livre: String[14];
  nome_razao: String[60];
  apelido: String[20];
  end_tipo_logradouro: String[10];
  end_logradouro: String[60];
  end_numero: String[10];
  end_complemento: String[20];
  end_cep: String[09];
  end_bairro: String[30];
  end_municipio: String[30];
  end_uf: String[2];
  data_nasc: String[8];
  telefone_ddd: String[5];
  telefone_numero: String[10];
  telefax_ddd: String[5];
  telefax_numero: String[10];
  email: String[50];
  homepage: String[60];
  insc_estadual: String[20];
  insc_municipal: String[20];
  cnae : String[10];
  rgnumero : String[18];
  rg_orgao_emissor : String[5];
  rg_estado_emissor : String[2];
  rg_data_emissao : String[8];
  sexo : String[1];
  codigo_pais : String[4];
  codigo_ibge : String[5];
  filter2 : String[86];
  codigo_municipio_estadual : String[10];
  end_tipo_bairro : String[10];
  end_principal : String[1];
begin
  try
     if (ini.date <= 0) then
     begin
       Application.MessageBox('Defina a data inicial de pesquisa','Aviso',mb_ok+mb_iconerror);
       ini.setfocus;
       exit;
     end;

     if (fim.date <= 0) then
     begin
       Application.MessageBox('Defina a data final de pesquisa','Aviso',mb_ok+mb_iconerror);
       fim.setfocus;
       exit;
     end;

     if (fim.date <= ini.date) then
     begin
       Application.MessageBox('Intervalo de datas inválido','Aviso',mb_ok+mb_iconerror);
       fim.setfocus;
       exit;
     end;

     AssignFile( f, PathDestino.text);

     if FileExists( PathDestino.text) then
       DeleteFile( PathDestino.text);

     Rewrite(F, PathDestino.text);
     Append(f);


     Parceiros.Close;
     Parceiros.parambyname('data1').value :=  Ini.Date;
     Parceiros.parambyname('data2').value :=  Fim.Date;
     Parceiros.Open;
     Parceiros.fetchAll;

     pgb.Max := Parceiros.RecordCount;
     Parceiros.first;
     tiporegistro := 'TRC';
     while NOT Parceiros.EOF do
     begin
        personalidade := ParceirosPERSONALIDADE.value;
        cpf_cnpj_livre := ParceirosCPF_CGC.value;
        //Limpando codigo cnpj
        cpf_cnpj_livre := StringReplace(cpf_cnpj_livre,'.','',[rfreplaceall]);
        cpf_cnpj_livre := StringReplace(cpf_cnpj_livre,',','',[rfreplaceall]);
        cpf_cnpj_livre := StringReplace(cpf_cnpj_livre,'-','',[rfreplaceall]);
        cpf_cnpj_livre := StringReplace(cpf_cnpj_livre,'/','',[rfreplaceall]);

        if (trim(cpf_cnpj_livre) = '') then
        begin
          personalidade := '2';//livre
          cpf_cnpj_livre := ParceirosCODIGO.AsString;
        end;

        nome_razao := ParceirosNOME_RAZAO.value;
        apelido := ParceirosFANTASIA.value;
        end_tipo_logradouro := 'R/AV';

        end_logradouro := ParceirosLOGRADOURO.value;
        if trim(end_logradouro) = '' then
         end_logradouro := '<Não definido>';

        end_numero := ParceirosNUMERO.value;
        if trim(end_numero) = '' then
         end_numero := 'SN';

        end_complemento := ParceirosCOMPLEMENTO.value;

        end_cep := ParceirosCEP.value;
        //Limpando codigo cnpj
        end_cep := StringReplace(end_cep,'.','',[rfreplaceall]);
        end_cep := StringReplace(end_cep,',','',[rfreplaceall]);
        end_cep := StringReplace(end_cep,'-','',[rfreplaceall]);
        end_cep := StringReplace(end_cep,'/','',[rfreplaceall]);

        end_bairro := ParceirosBAIRRO.value;
        end_municipio := ParceirosMUNICIPIO.value;
        end_uf := ParceirosUF.value;

        ano := IntToStr(YearOF(ParceirosDT_NASCIMENTO.value));
        mes := IntToStr(MonthOF(ParceirosDT_NASCIMENTO.value));
        dia := IntToStr(DayOF(ParceirosDT_NASCIMENTO.value));
        data_nasc := ano+mes+dia;
        data_nasc := datetostr(ParceirosDT_NASCIMENTO.value);
        data_nasc := StringReplace(data_nasc,'/','',[rfreplaceall]);
        data_nasc := StringReplace(data_nasc,'\','',[rfreplaceall]);

        {
        telefone_numero := ParceirosFONE.AsString;
        telefone_numero := StringReplace(telefone_numero,'(','',[rfreplaceall]);
        telefone_numero := StringReplace(telefone_numero,')','',[rfreplaceall]);
        telefone_numero := StringReplace(telefone_numero,'-','',[rfreplaceall]);
        telefone_numero := StringReplace(telefone_numero,'.','',[rfreplaceall]);

        if (Length(telefone_numero) > 8) then
        begin
          telefone_ddd := copy(telefone_numero,1,2);
          telefone_numero := copy(telefone_numero,3,8);
        end
        else
          telefone_ddd := '';}

        telefone_ddd := '';
        telefone_numero := '';
        telefax_ddd := '';
        telefax_numero := '';

        insc_estadual := ParceirosRG_IE.value;
        insc_estadual := StringReplace(insc_estadual,'.','',[rfreplaceall]);
        insc_estadual := StringReplace(insc_estadual,',','',[rfreplaceall]);
        insc_estadual := StringReplace(insc_estadual,',','',[rfreplaceall]);
        insc_estadual := StringReplace(insc_estadual,'-','',[rfreplaceall]);
        insc_estadual := StringReplace(insc_estadual,'/','',[rfreplaceall]);



        insc_municipal := ParceirosINSC_MUNIC.value;

        cnae := '';
        rgnumero := ParceirosRG_IE.value;
        rgnumero := StringReplace(rgnumero,'.','',[rfreplaceall]);
        rgnumero := StringReplace(rgnumero,',','',[rfreplaceall]);
        rgnumero := StringReplace(rgnumero,'-','',[rfreplaceall]);
        rgnumero := StringReplace(rgnumero,'/','',[rfreplaceall]);

        rg_orgao_emissor := '';
        rg_estado_emissor := '';
        rg_data_emissao := '';
        sexo := ParceirosSEXO.value;
        codigo_pais := '';
        codigo_ibge := ParceirosCOD_IBGE.value;
        codigo_municipio_estadual := '';
        end_tipo_bairro := '';
        end_principal := 'S';

        if (trim(cpf_cnpj_livre) = '02374835804') then
           cpf_cnpj_livre := cpf_cnpj_livre;

        if (UPPERCASE(trim(insc_estadual)) = 'ISENTA') then
          insc_estadual := 'ISENTO';

        if (Length(trim(cpf_cnpj_livre))< 14) then
           personalidade := '1';

        if (personalidade <> '0') then
        begin
          if not ChkInscEstadual(insc_estadual,end_uf) then
            insc_estadual := 'ISENTO';
        end;

        if (trim(nome_razao) = 'CONSUMIDOR') then
           personalidade := '2';

        aux := Completa(tiporegistro,' ',3)+
               Completa(ordem,' ',5)+
               Completa(ordem,' ',2)+//filter
               Completa(personalidade,' ',1)+
               Completaesq(cpf_cnpj_livre,'0',14)+
               Completa(nome_razao,' ',60)+
               Completa(apelido,' ',20)+
               Completa(end_tipo_logradouro,' ',10)+
               Completa(end_logradouro,' ',60)+
               Completa('',' ',10)+
               Completa('',' ',20)+
               Completa(end_cep,' ',9)+
               Completa(end_bairro,' ',30)+
               Completa(end_municipio,' ',30)+
               Completa(end_uf,' ',2)+
               Completa('',' ',8)+
               Completa('',' ',5)+
               Completa('',' ',10)+
               Completa('',' ',5)+
               Completa('',' ',10)+
               Completa('',' ',50)+
               Completa('',' ',60)+
               Completa(insc_estadual,' ',20)+
               Completa('',' ',20)+
               Completa('',' ',10)+
               Completa('',' ',18)+
               Completa('',' ',5)+
               Completa('',' ',2)+
               Completa('',' ',8)+
               Completa('',' ',1)+
               Completa('1058',' ',4)+//codigo do pai
               Completa('',' ',5)+
               Completa(filter2,' ',86)+
               Completa('',' ',10)+
               Completa('',' ',10)+
               Completa('',' ',1);
               Writeln( f, AUX );
       Parceiros.Next;
       pgb.StepBy(1);
//       pgb.position := pgb.position + 1;
     end;

    CloseFile(f);
    Application.MessageBox('Arquivo de parceiros gerado com sucesso!','Aviso',mb_ok+mb_iconinformation);
  except
    Application.MessageBox('Erro ao gerar o arquivo de parceiros','Aviso',mb_ok+mb_iconerror);
  end;
end;

procedure TFrmProsoftSintegra.ActAbreExecute(Sender: TObject);
begin
  IF DIR.Execute THEN
  BEGIN
      PathDestino.Text := DIR.FileName ;
  END;
end;

procedure TFrmProsoftSintegra.gera_cab_nf_saida;
var
  f: TextFile;
  aux, IE, valoroutros, aliquota,  cpf_cnpj,datasaida, datadocumento, valorcontabil, valormercadoria, basecalculoicms, icmsdebidato, basecalculoicmssub, icmssubretito : string;
begin
try
     if (ini.date <= 0) then
     begin
       Application.MessageBox('Defina a data inicial de pesquisa','Aviso',mb_ok+mb_iconerror);
       ini.setfocus;
       exit;
     end;

     if (fim.date <= 0) then
     begin
       Application.MessageBox('Defina a data final de pesquisa','Aviso',mb_ok+mb_iconerror);
       fim.setfocus;
       exit;
     end;

     if (fim.date <= ini.date) then
     begin
       Application.MessageBox('Intervalo de datas inválido','Aviso',mb_ok+mb_iconerror);
       fim.setfocus;
       exit;
     end;


     AssignFile( f, PathDestino.text);

     if FileExists( PathDestino.text) then
       DeleteFile( PathDestino.text);

     Rewrite(F, PathDestino.text);
     Append(f);


     NFSaida.Close;
     NFSaida.parambyname('data1').value := ini.date;
     NFSaida.parambyname('cnpj').value := dmApp.Cnpj;
     NFSaida.parambyname('data2').value := Fim.date;
     NFSaida.Open;
     NFSaida.fetchAll;


     pgb.Max := NFSaida.RecordCount;
     NFSaida.first;
     while NOT NFSaida.EOF do
     begin
        datasaida :=  FormatDateTime('dd/mm/yy',NFSaidaDATA_SAIDA.Value);
        datasaida := StringReplace(datasaida,'/','',[rfreplaceall]);

        datadocumento := FormatDateTime('dd/mm/yy',NFSaidaDATA_DOCUMENTO.Value);
        datadocumento := StringReplace(datadocumento,'/','',[rfreplaceall]);

        valorcontabil := FormatFloat('###,##0.00',NFSaidaVALOR_CONTABIL.Value);
        valorcontabil := StringReplace(valorcontabil,'.','',[rfReplaceAll]);
        valorcontabil := StringReplace(valorcontabil,',','.',[rfReplaceAll]);

        valoroutros := FormatFloat('###,##0.00',NFSaidaVLR_OUTROS.Value);
        valoroutros := StringReplace(valoroutros,'.','',[rfReplaceAll]);
        valoroutros := StringReplace(valoroutros,',','.',[rfReplaceAll]);


        valormercadoria := FormatFloat('###,##0.00',NFSaidaVALOR_MERCADORIAS.Value);
        valormercadoria := StringReplace(valormercadoria,'.','',[rfReplaceAll]);
        valormercadoria := StringReplace(valormercadoria,',','.',[rfReplaceAll]);

        basecalculoicms := FormatFloat('###,##0.00',NFSaidaBASE_CALCULO_ICMS.Value);
        basecalculoicms := StringReplace(basecalculoicms,'.','',[rfReplaceAll]);
        basecalculoicms := StringReplace(basecalculoicms,',','.',[rfReplaceAll]);

        icmsdebidato := FormatFloat('###,##0.00',NFSaidaICMS_DEBITADO.Value);
        icmsdebidato := StringReplace(icmsdebidato,'.','',[rfReplaceAll]);
        icmsdebidato := StringReplace(icmsdebidato,',','.',[rfReplaceAll]);

        basecalculoicmssub := FormatFloat('###,##0.00',NFSaidaBASE_CALCULO_ICMS_SUB.Value);
        basecalculoicmssub := StringReplace(basecalculoicmssub,'.','',[rfReplaceAll]);
        basecalculoicmssub := StringReplace(basecalculoicmssub,',','.',[rfReplaceAll]);

        icmssubretito := FormatFloat('###,##0.00',NFSaidaIMPOSTO_RETIDO_ICMS_SUB.Value);
        icmssubretito := StringReplace(icmssubretito,'.','',[rfReplaceAll]);
        icmssubretito := StringReplace(icmssubretito,',','.',[rfReplaceAll]);

        cpf_cnpj := NFSaidaCLIENTE_CPF_CNPJ.AsString;
        cpf_cnpj := StringReplace(cpf_cnpj,'.','',[rfreplaceall]);
        cpf_cnpj := StringReplace(cpf_cnpj,',','',[rfreplaceall]);
        cpf_cnpj := StringReplace(cpf_cnpj,'-','',[rfreplaceall]);
        cpf_cnpj := StringReplace(cpf_cnpj,'/','',[rfreplaceall]);

        if (cpf_cnpj = '15505738000188') then
           cpf_cnpj := '15505738000188';

        {validar 02953773134}
        IE := NFSaidaCLIENTE_IE.Value;
        IE := StringReplace(IE,'.','',[rfreplaceall]);
        IE := StringReplace(IE,',','',[rfreplaceall]);
        IE := StringReplace(IE,'-','',[rfreplaceall]);
        IE := StringReplace(IE,'/','',[rfreplaceall]);

        if ((Length(trim(cpf_cnpj))< 14)) then
        begin
          if not ChkInscEstadual(IE,NFSaidaCLIENTE_UF.AsString) then
            IE := 'ISENTO';
        end;

        if not ChkInscEstadual(IE,NFSaidaCLIENTE_UF.AsString) then
            IE := 'ISENTO';

        if (IE = 'ISENTA') then
          IE := 'ISENTO';

        if (NFSaidaALIQUOTA_ICMS.Value <= 0) then
           aliquota := '00.00'
        else
          aliquota := '17.00';

        if (NFSaidaPSA_CODIGO.Value = 1) then
        begin
          cpf_cnpj := '00000000000';
          IE := 'ISENTO';
        end;

        aux := Completa('',' ',3)+//Espécie de documento
               Completa('',' ',3)+ //Série do documento
               completaesq('',' ',6)+//Numero da NF inicial
               completaesq('',' ',6)+//Numero da NF Final
               Completa('0',' ',1)+//Item desdobramento
               Completa(datasaida,' ',6)+//DataSaida
               completaesq('','0',5)+//Código Contábil
               completaesq('','0',3)+//CFOP Antigo
               Completaesq(valorcontabil,'0',14)+ //valor contabil ICMS
               Completaesq(valorcontabil,'0',14)+ //valor mercadoria ICMS
               Completaesq(basecalculoicms,'0',14)+//base de calculo ICMS
               Completaesq(icmsdebidato,'0',14)+//icmsdebitado
               Completaesq('0.00',' ',14)+//isentas não tributados icms
               Completa(valoroutros,' ',14)+//outras icms {substituicao tributaria}
               Completaesq('0.00',' ',14)+//base calculo IPI
               Completaesq('0.00',' ',14)+//IPI debitado
               Completaesq('0.00',' ',14)+//Isentas não tributadas ipi
               Completaesq('0.00',' ',14)+//Outras IPI
               Completaesq('0.00',' ',14)+//IPI Creditado/Cupom Cancelado
               Completa(aliquota,' ',5)+//Aliquota ICMS
               completaesq('',' ',2)+//Classificação contábil
               completaesq('',' ',3)+//Sit. Especial, codigo
               Completaesq('0.00',' ',14)+//Sit. Especial valor 1
               Completaesq('0.00',' ',14)+//Sit. Especial valor 2
               Completaesq('0.00',' ',14)+//Sit. Especial valor 3
               Completaesq('0.00',' ',14)+//Sit. Especial valor 4
               Completa(cpf_cnpj,' ',14)+//Sit. Especial valor 4
               completaesq('',' ',5)+//Cliente código contabil
               Completa(NFSaidaCLIENTE_UF.value,'0',2)+//Cliente UF
               Completa('',' ',10)+//Código do municipio
               Completa('',' ',110)+//Observação
               Completa('',' ',1)+//Zera acumulado
               Completaesq('',' ',14)+//Remetente CNPJ
               Completa('',' ',18)+//Remetente IE
               Completa('',' ',2)+//Remetente Frete UF
               Completa('',' ',34)+//Remetente Frete Nome
               Completaesq('',' ',14)+//Destinatario Frete CNPJ
               Completa('',' ',18)+//Destinatario Frete IE
               Completa('',' ',2)+//Destinatario Frete UF
               Completa('',' ',34)+//Destinatario Frete nome
               Completa(NFSaidaTIPO_FRETE.value,' ',1)+//Tipo Frete
               completaesq('',' ',6)+//Nota Mercadoria
               Completa('',' ',3)+//Nota Mercadoria Serie
               Completa('',' ',2)+//Nota Mercadoria Tipo Doc
               Completa('',' ',3)+//Nota Mercadoria Especie
               Completa('',' ',6)+//Nota Mercadoria Emissao
               Completa('',' ',2)+//Reservado
               Completaesq('0.00',' ',14)+//Nota Mercadoria
               Completa(NFSaidaCONDICAO_VENDA.Value,' ',1)+//Condição de Venda
               Completaesq('0.00',' ',14)+//Valor do Servico
               Completa('',' ',6)+//1 Vencimento
               Completaesq('0.00',' ',14)+//1a Parcela
               Completa('',' ',6)+//2 Vencimento
               Completaesq('0.00',' ',14)+//2a Parcela
               Completa('',' ',6)+//3 Vencimento
               Completaesq('0.00',' ',14)+//3a Parcela
               Completa('',' ',6)+//4 Vencimento
               Completaesq('0.00',' ',14)+//4a Parcela
               Completa('',' ',6)+//5 Vencimento
               Completaesq('0.00',' ',14)+//5a Parcela
               Completa('',' ',6)+//6 Vencimento
               Completaesq('0.00',' ',14)+//6a Parcela
               Completa('',' ',1)+//Cod. CTB Sit. Especial
               Completa('',' ',6)+//Aliq. ICMS
               Completa('',' ',11)+//Descontos ECF
               Completa('',' ',1)+//Tipo Frete
               Completa('',' ',3)+//Digito Adicional CFOP
               Completa('',' ',2)+//Desdobramento insc. estadual por UF
               Completa(datasaida,' ',6)+//Data Documento
               completaesq(NFSaidaCFOP.AsString,'0',4)+//Data Documento
               completaesq('','0',3)+//Codigo para Saidas Isentas
               completaesq('','0',3)+//Codigo para Outras Saidas
               //-----------combustiveis-------------------//
                  //local de saida
                  Completaesq('',' ',14)+//cnpj
                  Completa('',' ',18)+//IE
                  Completa('',' ',2)+//UF
                  //local de entrega
                  Completaesq('',' ',14)+//cnpj
                  Completa('',' ',18)+//IE
                  Completa('',' ',2)+//UF
                  //Dados do transportador
                  Completaesq('',' ',14)+//cnpj
                  Completa('',' ',18)+//IE
                  Completa('',' ',2)+//UF
                  Completa('',' ',1)+//Modal
                  Completa('',' ',7)+//Placa 1
                  Completa('',' ',2)+//UF Placa 1
                  Completa('',' ',7)+//Placa 2
                  Completa('',' ',2)+//UF Placa 2
                  Completa('',' ',7)+//Placa 3
                  Completa('',' ',2)+//UF Placa 3
                  Completa('',' ',1)+//Movimentação fisica de combustivel
                  Completa('',' ',1)+//Tipo Receita comunicação
                  Completa('',' ',4)+//Complemento receita de comunicação
                  completaesq('',' ',4)+//Classif. Contabil Integracação
                  Completa('',' ',2)+//Código DIPAM
                  completaesq('',' ',10)+//Código MUnicipio da coleta
               {-----Orientação (Tecnicos Prosoft) para não incluirmos os valores de substituição tributaria,
                devemos fazer somente se a EMPRESA for substituta tributaria, caso não seja mas tiver itens com sub.
                deveremos colocar estes valores no campo outras da nota}
               Completaesq('0'{basecalculoicmssub},'0',14)+//Base calculo substituição
               Completaesq('0'{icmssubretito},'0',14)+//Base calculo substituição
               completaesq('',' ',6)+//Codigo PIS Cofins
               Completa(NFSaidaNOTA_CANCELADA.AsString,' ',1)+//Nota Cancelada
               Completa('',' ',5)+//Espaço reservado
               Completaesq('0.00',' ',14)+//Valor do Frete
               Completaesq('0.00',' ',14)+//Valor do Seguro
               Completaesq('0.00',' ',14)+//Valor do Outras Despesas
               Completa('NF',' ',5)+//Especie documento windows
               Completa('',' ',1)+//IPI na base do ICMS
               Completa(NFSaidaSERIE.AsString,' ',3)+//Serie
               Completa('',' ',2)+//SubSerie  aqui
               completaesq(NFSaidaNUM_NF.AsString,'0',10)+//Num. Nota Fiscal Inicial
               completaesq(NFSaidaNUM_NF.AsString,'0',10)+//Num. Nota Fiscal Final
               completaesq('','0',10)+//Num. Disp. Inicial
               completaesq('','0',10)+//Num. Disp. Final
               completaesq('',' ',5)+//Cod. Centro Custo.
               completaesq('','0',3)+//Cod. Tabela Simples Nacional
               Completa(IE,' ',18)+//Cliente Insc. Estadual
               Completa('',' ',8)+//Hora da Emissão NF
               Completa('',' ',8)+//Hora da saida NF
               Completa('',' ',3)+//Tipo Nota Asoociada
               Completa('',' ',2)+//UF da nota
                  //--------------Speed-Coleta----------//
                  Completa('',' ',2)+//Sigla UF
                  Completa('',' ',5)+//Código IBGE Municipio
                  //--------------Speed-Entrega---------//
                  Completa('',' ',2)+//Sigla UF
                  Completa('',' ',5)+//Código IBGE Municipio

                  Completa('',' ',11)+//Cpf contribuinte local coleta
                  Completa('',' ',11)+//Cpf contribuinte local entrega
                  Completa('',' ',20)+//Contribuinte, código autori. pela sefaz
                  Completa('',' ',20)+//Contribuinte, passe fiscal
                  Completa('',' ',5)+//Combustivel teperatura
                  Completaesq('0.00',' ',14)+//Combustivel peso bruto
                  Completaesq('0.00',' ',14)+//Combustivel peso liquido
                  Completa('',' ',40)+//Nome Motorista
                  Completa('',' ',11)+//cpf Motorista
                  Completa('',' ',2)+//cod classe consumo
                  Completaesq('0.00',' ',14)+//energia eletrica
                  Completaesq('0.00',' ',14)+//Valor cobrado de terceiros
                  Completa('',' ',2)+//Tipo de Serviço Prestado
                  Completa('',' ',8)+//Data Inicio de prestação de serviço
                  Completa('',' ',8)+//Data Final de Prestação de Serviço
                  Completa('',' ',6)+//Data Fiscal da Prestação de Serviço
                  Completa('',' ',30)+//Código de Area
                  Completa('',' ',19)+//Comunicação identificação do terminal
                  Completa('',' ',2)+//Código da Classe de Consumo
                  Completaesq('0.00',' ',14)+//Valor do Frete
                  Completa('',' ',8)+//Aliquota ICMS Frete
                  Completaesq('0.00',' ',14)+//Valor ICMS Frete
                  Completa('',' ',44)+//Chave NFe
                  //------------------Prestação serviço comunicação Elétrica------------//
                  Completa('',' ',2)+//Sigla UF
                  Completa('',' ',5)+//Código IBGE Municipio
                  Completa('',' ',2)+// tipo de titulo de cobrança
                  Completa('',' ',40)+// Descrição de titulo de cobrança
                  Completa('',' ',30)+// Numero de Processo
                  Completa('',' ',1);// Indicação da Origem do Processo
               Writeln(f, AUX );
       NFSaida.Next;
       pgb.StepBy(1);
     end;

    CloseFile(f);
    Application.MessageBox('Arquivo de NF de Saída gerados com sucesso!','Aviso',mb_ok+mb_iconinformation);
  except
    Application.MessageBox('Erro ao gerar o arquivo de NF de Saída','Aviso',mb_ok+mb_iconerror);
  end;

end;

procedure TFrmProsoftSintegra.gera_cab_nf_saida_itens;
var
  f: TextFile;
  aux, qtde, vlroutros, precounitario, desconto, dataescrituracao, valoritem,ncpf_cnpj,datasaida, datadocumento, valorcontabil, basecalculoicms, icmsdebidato, basecalculoicmssub, icmssubretito : string;
begin
try
     if (ini.date <= 0) then
     begin
       Application.MessageBox('Defina a data inicial de pesquisa','Aviso',mb_ok+mb_iconerror);
       ini.setfocus;
       exit;
     end;

     if (fim.date <= 0) then
     begin
       Application.MessageBox('Defina a data final de pesquisa','Aviso',mb_ok+mb_iconerror);
       fim.setfocus;
       exit;
     end;

     if (fim.date <= ini.date) then
     begin
       Application.MessageBox('Intervalo de datas inválido','Aviso',mb_ok+mb_iconerror);
       fim.setfocus;
       exit;
     end;


     AssignFile( f, PathDestino.text);

     if FileExists( PathDestino.text) then
       DeleteFile( PathDestino.text);

     Rewrite(F, PathDestino.text);
     Append(f);

     NFSaidaItens.Close;
     NFSaidaItens.parambyname('data1').value := ini.date;
     NFSaidaItens.parambyname('cnpj').value := dmApp.Cnpj;
     NFSaidaItens.parambyname('data2').value := Fim.date;
     NFSaidaItens.Open;
     NFSaidaItens.fetchAll;


     pgb.Max := NFSaidaItens.RecordCount;
     NFSaidaItens.first;
     while NOT NFSaidaItens.EOF do
     begin
        datasaida := FormatDateTime('yyyy/mm/dd',NFSaidaItensDATA_SAIDA.Value);
        datasaida := StringReplace(datasaida,'/','',[rfreplaceall]);

        dataescrituracao := FormatDateTime('dd/mm/yyyy',NFSaidaItensDATA_SAIDA.Value);
        dataescrituracao := StringReplace(dataescrituracao,'/','',[rfreplaceall]);

        qtde := FormatFloat('###,##0.00',NFSaidaItensQTDE.Value);
        qtde := StringReplace(qtde,'.','',[rfReplaceAll]);
        qtde := StringReplace(qtde,',','.',[rfReplaceAll]);

        precounitario := FormatFloat('###,##0.00',NFSaidaItensPRECO_UNITARIO.Value);
        precounitario := StringReplace(precounitario,'.','',[rfReplaceAll]);
        precounitario := StringReplace(precounitario,',','.',[rfReplaceAll]);

        desconto := FormatFloat('###,##0.00',NFSaidaItensDESCONTO.Value);
        desconto := StringReplace(desconto,'.','',[rfReplaceAll]);
        desconto := StringReplace(desconto,',','.',[rfReplaceAll]);

        valoritem := FormatFloat('###,##0.00',NFSaidaItensVALOR_ITEM.Value);
        valoritem := StringReplace(valoritem,'.','',[rfReplaceAll]);
        valoritem := StringReplace(valoritem,',','.',[rfReplaceAll]);

        vlroutros := FormatFloat('###,##0.00',NFSaidaItensVLR_OUTROS.Value);
        vlroutros := StringReplace(vlroutros,'.','',[rfReplaceAll]);
        vlroutros := StringReplace(vlroutros,',','.',[rfReplaceAll]);

        basecalculoicms := FormatFloat('###,##0.00',NFSaidaItensBASE_ICMS.Value);
        basecalculoicms := StringReplace(basecalculoicms,'.','',[rfReplaceAll]);
        basecalculoicms := StringReplace(basecalculoicms,',','.',[rfReplaceAll]);

        basecalculoicmssub := FormatFloat('###,##0.00',NFSaidaItensBASE_ICMS_SUB.Value);
        basecalculoicmssub := StringReplace(basecalculoicmssub,'.','',[rfReplaceAll]);
        basecalculoicmssub := StringReplace(basecalculoicmssub,',','.',[rfReplaceAll]);

        icmsdebidato := FormatFloat('###,##0.00',NFSaidaItensICMS_DEBITADO.Value);
        icmsdebidato := StringReplace(icmsdebidato,'.','',[rfReplaceAll]);
        icmsdebidato := StringReplace(icmsdebidato,',','.',[rfReplaceAll]);

        icmssubretito := FormatFloat('###,##0.00',NFSaidaItensIMPOSTO_RETIDO_ICMS_SUB.Value);
        icmssubretito := StringReplace(icmssubretito,'.','',[rfReplaceAll]);
        icmssubretito := StringReplace(icmssubretito,',','.',[rfReplaceAll]);

        aux := completaesq('',' ',14)+//Filter
               Completa(datasaida,' ',8)+ //Série do documento
               completaesq(NFSaidaItensNUM_NF.AsString,'0',6)+//Numero do documento
               Completa(NFSaidaItensSERIE.value,' ',3)+//Numero da NF Final
               Completa('0',' ',1)+//Item desdobramento da NF
               Completa(NFSaidaItensNUM_ITEM.AsString,' ',2)+//Numero do item
               Completa(NFSaidaItensCOD_PRODUTO.AsString,' ',20)+//Numero do item
               Completa('',' ',3)+//CFOP do iten, 3 digitos?
               Completa('',' ',1)+//Item desdobramento Nat. Operacao
               Completa(NFSaidaItensUNIDADE.AsString,' ',3)+//Unidade
               Completa(NFSaidaItensSIT_TRIB.AsString,' ',3)+//Situação tributária
               Completaesq(qtde,'0',14)+//qtde
               Completaesq(precounitario,'0',14)+//preço unitário
               Completaesq(desconto,'0',14)+//Desconto
               Completaesq(valoritem,'0',14)+//Valor do Item
               Completa('',' ',5)+//Aliquota ipi
               Completaesq('0.00',' ',14)+//valor ipi
               Completaesq(basecalculoicms,'0',14)+//base calculo icms
               Completaesq('0'{basecalculoicmssub},'0',14)+//base calculo icms sub
               //--------------------------dados cadastrais de produto----------------------------//
               Completa(NFSaidaItensPRODUTO_DESCRICAO.AsString,' ',80)+//descrição de produtos
               Completa('',' ',2)+//grupo de produtos DOS
               Completa('',' ',10)+//codigo classificação fiscal
               Completa('',' ',2)+//Item desdobramento ccf
               Completa('',' ',5)+//Aliq. ICMS Op. Interna
               Completa('',' ',5)+//Percentual de redução base icms
               Completaesq('0.00',' ',14)+//Base de calculo para substituição tributária
               Completa('',' ',5)+//Alquota ipi
               Completa('',' ',2)+//Produto especie - Produto
               Completa(NFSaidaItensSIT_TRIB.value,' ',3)+//Produto Sit. Tributacao
               Completa(NFSaidaItensPRODUTO_FANTASIA.value,' ',30)+//Produto Nome Fantasia
               Completa('',' ',3)+//Numero do item
               Completa(NFSaidaItensMOVIMENTA_MERCADORIA.value,' ',1)+//Produto especie - Produto
               Completaesq('0.00',' ',14)+//Base calculo IPI
               Completa('',' ',1)+//Indicador tributação IPI
               Completaesq(NFSaidaItensALIQUOTA_ICMS.AsString,'0',5)+//Aliquota ICMS
               Completaesq(icmsdebidato,'0',14)+//Valor ICMS
               Completa(NFSaidaItensINDICACAO_TRIBUTACAO.AsString,' ',1)+//Indicador tributação ICMS
               Completaesq('0'{icmssubretito},'0',14)+//Valor ICMS
               //----------------------------combustivel-----------------------------------------//
               Completaesq('0.00',' ',14)+//Base calculo St. Interestadual
               Completaesq('0.00',' ',14)+//ICMS St. Interestadual
               Completaesq('0.00',' ',14)+//ICMS St. Interestadual Complementar
               Completaesq('0.00',' ',14)+//Base de Calculo de Retenção
               Completaesq('0.00',' ',14)+//Parcela do Imp. Retido
               Completa('',' ',3)+//Produto grupo de produto
               Completa('',' ',2)+//Produto PRODEPE código Apuração
               Completa('',' ',2)+//Produto PRODEPE Indic. Incentivo
               Completa('',' ',56)+//Reserva p. Dados de Produto
               Completaesq('',' ',14)+//CNPJ Operadora destino
               Completa('',' ',10)+//Código número terminal
               Completa('',' ',2)+//Prodepe: Código de Apuração
               Completa('',' ',1)+//Gera registro 88
               Completaesq('0.00',' ',14)+//Isentas
               Completa(vlroutros,' ',14)+//outras substituicao tributaria
               Completaesq('0.00',' ',14)+//Isentas Não Tributadas
               Completaesq('0.00',' ',14)+//outras IPI
               Completa('',' ',4)+//Produto Grupo de Produto
               Completa('',' ',3)+//Serie
               Completa('',' ',2)+//SubSerie
               Completaesq('','0',10)+//N. documento
               Completaesq('0.00',' ',14)+//valor despesas acessór
               Completa('',' ',2)+//Codigo Sit. IPI
               Completa('',' ',2)+//Codigo Sit. Pis
               Completa('',' ',2)+//Codigo Sit. Cofins
               Completa('',' ',21)+//Medicamento, numero lote Fabricação
               Completa('',' ',16)+//Qtde item p/Lote
               Completa('',' ',8)+//Medicamento data de Fabricação
               Completa('',' ',8)+//Medicamento data de validade
               Completaesq('0.00',' ',14)+//Medicamento Valor Tabelado Valor Preço Maximo
               Completa('',' ',1)+//Veiculo Indicador de Operacao
               Completa('',' ',12)+//IPI - Qtde do selo valor aplicada
               Completaesq('0.00',' ',14)+//IPI - Valor unidade padrão de tributação
               Completa('',' ',15)+//IPI - Qtde padrão de tributação
               Completa(datasaida,' ',8)+//Data da escrituracao
               Completa('',' ',10)+//Número da Nota
               Completa('',' ',6)+//Serie da Nota
               Completa('',' ',6)+//SubSerie
               Completa('',' ',3)+//Número item desdobramento da nota
               Completaesq('',' ',14)+//CNPJ do fornecedor
               Completa('',' ',18)+//CNPJ do fornecedor

               Completa('',' ',4)+//Ressarcimento da substituição tributária
               Completa('',' ',15)+//Ressarcimento da substituição tributária qtde de item a ultima nf
               Completaesq('0.00',' ',14)+//Ressarcimento da substituição tributária ref. valor unitário
               Completaesq('0.00',' ',14)+//Ressarcimento da substituição tributária ref. valor unitário da base da calculo
               Completaesq('0.00',' ',14)+//Valor da redução de base da calculo
                 //--------------------------PRODUTO-------------------------//
                 Completa('','04',2)+//PRODUTO speed tipo produto
               Completa('',' ',6)+//Código de selo controle do IPI
               Completa('',' ',5)+//Classe enquadramento IPI
               Completa('',' ',1)+//Medicamento referencia de base de calculo
               Completa('',' ',1)+//Medicamento tipo de produto
               Completaesq('0.00',' ',14)+//Medicamento preço tabelado ou preço máximo
               Completa('',' ',4)+//Comunicação código de classificação do ITEM
               Completa('',' ',1)+//PRODUTO - Comunicação tipo de Receita
               Completa('',' ',4)+//Energia elétrica. Codigo de Classificação do Item
               Completa('',' ',1)+//Energia Tipo de Receita
               Completa('',' ',17)+//Veículo numero de chassi
               Completaesq('0.00',' ',14)+//Valor por unidade padrão de Tributação
               Completa('',' ',3)+//Código de enquadramento IPI
               Completa('',' ',1)+//Código do movimento
               Completa('',' ',1)+//Tipo de Produto
                 Completa('',' ',7)+//PRODUTO - Cód. Produtos Relevantes
                 Completa('',' ',4)+//PRODUTO - Cód. Sefaz
                 Completa('',' ',16)+//Produto unitário com 6 casas decimais
               Completa('',' ',1)+//PRODUTO - Tipo Produto/Serviço
               Completa('',' ',10)+//PRODUTO ANP - Específico para tipo de produto/serviço
               Completa('',' ',5);//ICMS ST. Aliquota ST
               Writeln( f, AUX );
       NFSaidaItens.Next;
       pgb.StepBy(1);
     end;

    CloseFile(f);
    Application.MessageBox('Arquivo de Itens de NF de Saída gerados com sucesso!','Aviso',mb_ok+mb_iconinformation);
  except
    Application.MessageBox('Erro ao gerar o arquivo de Itens NF de Saída','Aviso',mb_ok+mb_iconerror);
  end;

end;

procedure TFrmProsoftSintegra.gera_cf;
var
  f: TextFile;
  aux, totalgeralinidia, totalgeralfimdia, movimentodia, cancelamentos, descontos, totalopiss, acrescimos,
  subtributaria, isentas, nincidencia, suspensao, aliquotaicms,
  debitoicms, baseicms, pctreducaoicms, vlrsemreducaoicms, vlrcomreducaoicms, vlricms, vlroutras, vlrisentas,
  datamovimento, valorcontabil : string;
begin
try
     if (ini.date <= 0) then
     begin
       Application.MessageBox('Defina a data inicial de pesquisa','Aviso',mb_ok+mb_iconerror);
       ini.setfocus;
       exit;
     end;

     if (fim.date <= 0) then
     begin
       Application.MessageBox('Defina a data final de pesquisa','Aviso',mb_ok+mb_iconerror);
       fim.setfocus;
       exit;
     end;

     if (fim.date <= ini.date) then
     begin
       Application.MessageBox('Intervalo de datas inválido','Aviso',mb_ok+mb_iconerror);
       fim.setfocus;
       exit;
     end;


     AssignFile( f, PathDestino.text);

     if FileExists( PathDestino.text) then
       DeleteFile( PathDestino.text);

     Rewrite(F, PathDestino.text);
     Append(f);

     CFMestre.Close;
     CFMestre.parambyname('data1').value := ini.date;
     CFMestre.parambyname('cnpj').value := dmApp.Cnpj;
     CFMestre.parambyname('data2').value := Fim.date;
     CFMestre.Open;
     CFMestre.fetchAll;


     pgb.Max := CFMestre.RecordCount;
     CFMestre.first;
     while NOT CFMestre.EOF do
     begin
        datamovimento := FormatDateTime('yyyy/mm/dd',CFMestreDATA_MOVIMENTO.value);
        datamovimento := StringReplace(datamovimento,'/','',[rfreplaceall]);

        totalgeralinidia := FormatFloat('###,##0.00',CFMestreTT_GERAL_INI.Value);
        totalgeralinidia := StringReplace(totalgeralinidia,'.','',[rfReplaceAll]);
        totalgeralinidia := StringReplace(totalgeralinidia,',','.',[rfReplaceAll]);

        totalgeralfimdia := FormatFloat('###,##0.00',CFMestreTT_GERAL_FIN.Value);
        totalgeralfimdia := StringReplace(totalgeralfimdia,'.','',[rfReplaceAll]);
        totalgeralfimdia := StringReplace(totalgeralfimdia,',','.',[rfReplaceAll]);

        movimentodia := FormatFloat('###,##0.00',CFMestreMOVIMENTO_DIA.Value);
        movimentodia := StringReplace(movimentodia,'.','',[rfReplaceAll]);
        movimentodia := StringReplace(movimentodia,',','.',[rfReplaceAll]);

        cancelamentos := FormatFloat('###,##0.00',CFMestreCANCELAMENTOS.Value);
        cancelamentos := StringReplace(cancelamentos,'.','',[rfReplaceAll]);
        cancelamentos := StringReplace(cancelamentos,',','.',[rfReplaceAll]);

        descontos := FormatFloat('###,##0.00',CFMestreDESCCONTOS.Value);
        descontos := StringReplace(descontos,'.','',[rfReplaceAll]);
        descontos := StringReplace(descontos,',','.',[rfReplaceAll]);

        totalopiss := FormatFloat('###,##0.00',CFMestreDESCCONTOS.Value);
        totalopiss := StringReplace(totalopiss,'.','',[rfReplaceAll]);
        totalopiss := StringReplace(totalopiss,',','.',[rfReplaceAll]);

        acrescimos := FormatFloat('###,##0.00',CFMestreACRESCIMO.Value);
        acrescimos := StringReplace(acrescimos,'.','',[rfReplaceAll]);
        acrescimos := StringReplace(acrescimos,',','.',[rfReplaceAll]);

        valorcontabil := FormatFloat('###,##0.00',CFMestreVALOR_CONTABIL.Value);
        valorcontabil := StringReplace(valorcontabil,'.','',[rfReplaceAll]);
        valorcontabil := StringReplace(valorcontabil,',','.',[rfReplaceAll]);

        subtributaria := FormatFloat('###,##0.00',CFMestreF_SUB_TRIB.Value);
        subtributaria := StringReplace(subtributaria,'.','',[rfReplaceAll]);
        subtributaria := StringReplace(subtributaria,',','.',[rfReplaceAll]);

        isentas := FormatFloat('###,##0.00',CFMestreI_ISENTAS.Value);
        isentas := StringReplace(isentas,'.','',[rfReplaceAll]);
        isentas := StringReplace(isentas,',','.',[rfReplaceAll]);

        nincidencia := FormatFloat('###,##0.00',CFMestreN_INCIDENCIA.Value);
        nincidencia := StringReplace(nincidencia,'.','',[rfReplaceAll]);
        nincidencia := StringReplace(nincidencia,',','.',[rfReplaceAll]);

        suspensao := FormatFloat('###,##0.00',CFMestreSUSPENSAO.Value);
        suspensao := StringReplace(suspensao,'.','',[rfReplaceAll]);
        suspensao := StringReplace(suspensao,',','.',[rfReplaceAll]);

        aliquotaicms := FormatFloat('###,##0.00',CFMestreALIQ_ICMS_01.Value);
        aliquotaicms := StringReplace(aliquotaicms,'.','',[rfReplaceAll]);
        aliquotaicms := StringReplace(aliquotaicms,',','.',[rfReplaceAll]);

        debitoicms := FormatFloat('###,##0.00',CFMestreDEBITO_ICMS_01.Value);
        debitoicms := StringReplace(debitoicms,'.','',[rfReplaceAll]);
        debitoicms := StringReplace(debitoicms,',','.',[rfReplaceAll]);

        baseicms := FormatFloat('###,##0.00',CFMestreBASE_ICMS_01.Value);
        baseicms := StringReplace(baseicms,'.','',[rfReplaceAll]);
        baseicms := StringReplace(baseicms,',','.',[rfReplaceAll]);

        pctreducaoicms := FormatFloat('###,##0.00',CFMestrePCT_REDUCAO_01.Value);
        pctreducaoicms := StringReplace(pctreducaoicms,'.','',[rfReplaceAll]);
        pctreducaoicms := StringReplace(pctreducaoicms,',','.',[rfReplaceAll]);

        vlrsemreducaoicms := FormatFloat('###,##0.00',CFMestreVALOR_S_REDUCAO_01.Value);
        vlrsemreducaoicms := StringReplace(vlrsemreducaoicms,'.','',[rfReplaceAll]);
        vlrsemreducaoicms := StringReplace(vlrsemreducaoicms,',','.',[rfReplaceAll]);

        vlrcomreducaoicms := FormatFloat('###,##0.00',CFMestreVALOR_C_REDUCAO_01.Value);
        vlrcomreducaoicms := StringReplace(vlrcomreducaoicms,'.','',[rfReplaceAll]);
        vlrcomreducaoicms := StringReplace(vlrcomreducaoicms,',','.',[rfReplaceAll]);

        vlricms := FormatFloat('###,##0.00',CFMestreVALOR_ICMS_01.Value);
        vlricms := StringReplace(vlricms,'.','',[rfReplaceAll]);
        vlricms := StringReplace(vlricms,',','.',[rfReplaceAll]);

        vlroutras := FormatFloat('###,##0.00',CFMestreVALOR_OUTRAS_01.Value);
        vlroutras := StringReplace(vlroutras,'.','',[rfReplaceAll]);
        vlroutras := StringReplace(vlroutras,',','.',[rfReplaceAll]);

        vlrisentas := FormatFloat('###,##0.00',CFMestreVALOR_ISENTAS_01.Value);
        vlrisentas := StringReplace(vlrisentas,'.','',[rfReplaceAll]);
        vlrisentas := StringReplace(vlrisentas,',','.',[rfReplaceAll]);

        aux := Completa(datamovimento,' ',8)+//Data Movimento
               Completa('',' ',1)+ //Filter
               Completaesq(trim(CFMestreNUM_SEQ_ECF.Value),'0',3)+ //N Sequencia do ECF
               Completa('',' ',20)+ //Filter
               Completa(CFMestreNUM_SER_ECF.Value,' ',20)+ //N serie do ECF
               Completa(CFMestreCT_OO_ANT.AsString,' ',6)+ //Contador de Ordem de Operacao Anterior
               Completa(CFMestreCT_OO_FIN.AsString,' ',6)+ //Contador de Ordem de Operacao Final
               Completa('',' ',54)+ //Filter
               Completa(CFMestreCT_RED_Z_FIN.AsString,' ',6)+ //Contador de Redução Z Final
               Completa('',' ',24)+ //Filter
               Completa(CFMestreNUM_ULT_DOC_IMP.AsString,' ',6)+//N ultimo documento pré-impresso emitido
               Completa(CFMestreNUM_CONT_R_OO.AsString,' ',6)+//N Contador Reinicio de Operacoes
               Completa('',' ',12)+ //Filter
               Completa(totalgeralinidia ,' ',17)+ //Totalizador Geral Inicio do dia
               Completa(totalgeralfimdia,' ',17)+ //Totalizador Geral Final do dia
               Completa(movimentodia,' ',14)+ //Movimento do Dia
               Completa(cancelamentos,' ',14)+ //Cancelamentos
               Completa(descontos,' ',14)+ //Descontos
               Completa(totalopiss,' ',14)+ //Total de Operações ISS
               Completa(acrescimos,' ',14)+ //Acréscimos
               Completa(valorcontabil,' ',14)+ //Valor Contábil
               Completa(subtributaria,' ',14)+ //F - Substituição Tributária
               Completa(isentas,' ',14)+ //I - Isentas
               Completa(nincidencia,' ',14)+ //N - Não incidencia
               Completaesq('0.00',' ',14)+ //F - Substituição Tributária Combustível 1
               Completaesq('0.00',' ',14)+ //F - Substituição Tributária Combustível 2
               Completa(suspensao,' ',14)+ //S - Suspensão
               Completaesq('0.00',' ',14)+ //Filter
               Completa('17.0000',' ',7)+ //Aliquota ICMS 01
               Completa('',' ',7)+ //Aliquota ICMS 02
               Completa('',' ',7)+ //Aliquota ICMS 03
               Completa('',' ',7)+ //Aliquota ICMS 04
               Completa('',' ',7)+ //Aliquota ICMS 05
               Completa('',' ',7)+ //Aliquota ICMS 06
               Completa('',' ',7)+ //Aliquota ICMS 07
               Completa('',' ',7)+ //Aliquota ICMS 08
               Completaesq('0.00',' ',14)+ //Filter
               Completa(debitoicms,' ',7)+ //Débito ICMS 01
               Completa('',' ',7)+ //Débito ICMS 02
               Completa('',' ',7)+ //Débito ICMS 03
               Completa('',' ',7)+ //Débito ICMS 04
               Completa('',' ',7)+ //Débito ICMS 05
               Completa('',' ',7)+ //Débito ICMS 06
               Completa('',' ',7)+//Débito ICMS 07
               Completa('',' ',7)+ //Débito ICMS 08
               Completa('',' ',28)+ //Filter
               Completa(baseicms,' ',7)+ //Base de ICMS 01
               Completa('',' ',7)+ //Base de ICMS 02
               Completa('',' ',7)+ //Base de ICMS 03
               Completa('',' ',7)+ //Base de ICMS 04
               Completa('',' ',7)+ //Base de ICMS 05
               Completa('',' ',7)+ //Base de ICMS 06
               Completa('',' ',7)+ //Base de ICMS 07
               Completa('',' ',7)+ //Base de ICMS 08
               Completa('',' ',28)+ //Filter
               Completa('',' ',3)+ //Situação Especial 01
               Completa('',' ',3)+ //Situação Especial 02
               Completa('',' ',3)+ //Situação Especial 03
               Completa('',' ',3)+ //Situação Especial 04
               Completa('',' ',3)+ //Situação Especial 05
               Completa('',' ',3)+ //Situação Especial 06
               Completa('',' ',3)+ //Situação Especial 07
               Completa('',' ',3)+ //Filter
               Completa('',' ',3)+ //Filter
               Completa('',' ',3)+ //Filter
               Completa(pctreducaoicms,' ',7)+ //Percentual de Redução 01
               Completa('',' ',7)+ //Percentual de Redução 02
               Completa('',' ',7)+ //Percentual de Redução 03
               Completa('',' ',7)+ //Percentual de Redução 04
               Completa('',' ',7)+ //Percentual de Redução 05
               Completa('',' ',7)+ //Percentual de Redução 06
               Completa('',' ',7)+ //Percentual de Redução 07
               Completa('',' ',7)+ //Filter
               Completa('',' ',7)+ //Filter
               Completa('',' ',7)+ //Filter
               Completa(vlrsemreducaoicms,' ',14)+ //Valor sem redução 01
               Completaesq('0.00',' ',14)+ //Valor sem redução 02
               Completaesq('0.00',' ',14)+ //Valor sem redução 03
               Completaesq('0.00',' ',14)+ //Valor sem redução 04
               Completaesq('0.00',' ',14)+ //Valor sem redução 05
               Completaesq('0.00',' ',14)+ //Valor sem redução 06
               Completaesq('0.00',' ',14)+ //Valor sem redução 07
               Completaesq('0.00',' ',14)+ //Filter
               Completaesq('0.00',' ',14)+ //Filter
               Completaesq('0.00',' ',14)+ //Filter
               Completa(vlrcomreducaoicms,' ',14)+ //Valor com redução 01
               Completaesq('0.00',' ',14)+ //Valor com redução 02
               Completaesq('0.00',' ',14)+ //Valor com redução 03
               Completaesq('0.00',' ',14)+ //Valor com redução 04
               Completaesq('0.00',' ',14)+ //Valor com redução 05
               Completaesq('0.00',' ',14)+ //Valor com redução 06
               Completaesq('0.00',' ',14)+ //Valor com redução 07
               Completaesq('0.00',' ',14)+ //Filter
               Completaesq('0.00',' ',14)+ //Filter
               Completaesq('0.00',' ',14)+ //Filter
               //------------------Valor ICMS sem Base Reduzida--------------------//
               Completa(vlricms,' ',14)+ //Valor do ICMS 01
               Completaesq('0.00',' ',14)+ //Valor do ICMS 02
               Completaesq('0.00',' ',14)+ //Valor do ICMS 03
               Completaesq('0.00',' ',14)+ //Valor do ICMS 04
               Completaesq('0.00',' ',14)+ //Valor do ICMS 05
               Completaesq('0.00',' ',14)+ //Valor do ICMS 06
               Completaesq('0.00',' ',14)+ //Valor do ICMS 07
               Completaesq('0.00',' ',14)+ //Filter
               Completaesq('0.00',' ',14)+ //Filter
               Completaesq('0.00',' ',14)+ //Filter
               //------------------Outras sobre Redução--------------------//
               Completa(vlroutras,' ',14)+ //Valor Outras 01
               Completaesq('0.00',' ',14)+ //Valor Outras 02
               Completaesq('0.00',' ',14)+ //Valor Outras 03
               Completaesq('0.00',' ',14)+ //Valor Outras 04
               Completaesq('0.00',' ',14)+ //Valor Outras 05
               Completaesq('0.00',' ',14)+ //Valor Outras 06
               Completaesq('0.00',' ',14)+ //Valor Outras 07
               Completaesq('0.00',' ',14)+ //Filter
               Completaesq('0.00',' ',14)+ //Filter
               Completaesq('0.00',' ',14)+ //Filter
               //------------------Isentas sobre Redução--------------------//
               Completa(vlrisentas,' ',14)+ //Valor Isentas 01
               Completaesq('0.00',' ',14)+ //Valor Isentas 02
               Completaesq('0.00',' ',14)+ //Valor Isentas 03
               Completaesq('0.00',' ',14)+ //Valor Isentas 04
               Completaesq('0.00',' ',14)+ //Valor Isentas 05
               Completaesq('0.00',' ',14)+ //Valor Isentas 06
               Completaesq('0.00',' ',14)+ //Valor Isentas 07
               Completaesq('0.00',' ',14)+ //Filter
               Completaesq('0.00',' ',14)+ //Filter
               Completaesq('0.00',' ',14)+ //Filter
               //------------------Bloco valroes 2a Alq. ICMS--------------------//
               Completa('',' ',800)+ //Campos das Reduções de base de Cálculo
               //------------------Bloco valroes 3a Alq. ICMS--------------------//
               Completa('',' ',800)+ //Campos das Reduções de base de Cálculo
               //------------------Bloco valroes 4a Alq. ICMS--------------------//
               Completa('',' ',800)+ //Campos das Reduções de base de Cálculo
               //------------------Bloco valroes 5a Alq. ICMS--------------------//
               Completa('',' ',800)+ //Campos das Reduções de base de Cálculo
               //------------------Bloco valroes 6a Alq. ICMS--------------------//
               Completa('',' ',800)+ //Campos das Reduções de base de Cálculo
               //------------------Bloco valroes 7a Alq. ICMS--------------------//
               Completa('',' ',800)+ //Campos das Reduções de base de Cálculo
               //------------------Bloco valroes 8a Alq. ICMS--------------------//
               Completa('',' ',800)+ //Campos das Reduções de base de Cálculo
               Completa('',' ',1)+ //Situação Tributária ISS para DMS Bahia
               Completa('',' ',12)+ //Código Contábil
               Completa('',' ',3)+ //Código Simples Nacional
               Completa('',' ',3)+ //Código Simples Nacional ST
               Completa('',' ',3)+ //Código Simples Nacional ST Combust. Consumo
               Completa('',' ',3)+ //Código Simples Nacional ST Combust. Consumo Ind.
               Completa('',' ',100); //Observação Mapa Resumo

               Writeln( f, AUX );
       CFMestre.Next;
       pgb.StepBy(1);
     end;

    CloseFile(f);
    Application.MessageBox('Arquivo de Itens de NF de Saída gerados com sucesso!','Aviso',mb_ok+mb_iconinformation);
  except
    Application.MessageBox('Erro ao gerar o arquivo de Itens NF de Saída','Aviso',mb_ok+mb_iconerror);
  end;
end;

procedure TFrmProsoftSintegra.gera_cf_itens;
var
  f: TextFile;
  aux, qtde, valorunitario, valortotal, basecalculoicms, valoricms, datamovimento, totalcupom: string;
  item : integer;
begin
try
     if (ini.date <= 0) then
     begin
       Application.MessageBox('Defina a data inicial de pesquisa','Aviso',mb_ok+mb_iconerror);
       ini.setfocus;
       exit;
     end;

     if (fim.date <= 0) then
     begin
       Application.MessageBox('Defina a data final de pesquisa','Aviso',mb_ok+mb_iconerror);
       fim.setfocus;
       exit;
     end;

     if (fim.date <= ini.date) then
     begin
       Application.MessageBox('Intervalo de datas inválido','Aviso',mb_ok+mb_iconerror);
       fim.setfocus;
       exit;
     end;


     AssignFile( f, PathDestino.text);

     if FileExists( PathDestino.text) then
       DeleteFile( PathDestino.text);

     Rewrite(F, PathDestino.text);
     Append(f);


     CFCabecalho.Close;
     CFCabecalho.parambyname('data1').value := ini.date;
     CFCabecalho.parambyname('cnpj').value := dmApp.Cnpj;
     CFCabecalho.parambyname('data2').value := Fim.date;
     CFCabecalho.Open;
     CFCabecalho.fetchAll;

     pgb.Max := CFCabecalho.RecordCount;
     CFCabecalho.first;
     while NOT CFCabecalho.EOF do
     begin
        datamovimento := FormatDateTime('yyyy/mm/dd',CFCabecalhoDT_EMISSAO_CF.value);
        datamovimento := StringReplace(datamovimento,'/','',[rfreplaceall]);

        totalcupom := FormatFloat('###,##0.00',CFCabecalhoTOTAL_NOTA.Value);
        totalcupom := StringReplace(totalcupom,'.','',[rfReplaceAll]);
        totalcupom := StringReplace(totalcupom,',','.',[rfReplaceAll]);

        aux := Completa(datamovimento,' ',8)+//Data Movimento
               Completa('','0',1)+ //Campo Fixo
               Completaesq(CFCabecalhoN_SEQ_ECF.Value,'0',3)+ //N da Maquina
               Completaesq(CFCabecalhoNUM_CUPOM.AsString,'0',6)+ //N do cupom fiscal
               Completa('','0',4)+ //Campo Fixo
               Completa(totalcupom,' ',14)+ //Valor do Cupom
               Completa(CFCabecalhoN_SERIE_ECF.Value,' ',20)+ //Numero Serie Equipamento
               Completa('',' ',3)+//Série do equipamento
               Completaesq('',' ',14)+//CNPJ/CPF do Cupom Fiscal
               Completa('',' ',457);//Espaço em branco
               Writeln(f, AUX );

        //Criando os itens do cabeçalho do cupom
        CFItens.Close;
        CFItens.parambyname('cnpj').value := dmApp.Cnpj;
        CFItens.parambyname('num_cf').value := CFCabecalhoNUM_CUPOM.Value;
        CFItens.Open;

        CFItens.First;
        item := 1;
        while NOT CFItens.EOF do
        begin
          qtde := FormatFloat('###,##0.00',CFItensQUANTIDADE.Value);
          qtde := StringReplace(qtde,'.','',[rfReplaceAll]);
          qtde := StringReplace(qtde,',','.',[rfReplaceAll]);

          valorunitario := FormatFloat('###,##0.00',CFItensPRC_UNITARIO.Value);
          valorunitario := StringReplace(valorunitario,'.','',[rfReplaceAll]);
          valorunitario := StringReplace(valorunitario,',','.',[rfReplaceAll]);

          valortotal := FormatFloat('###,##0.00',CFItensVALORTOTAL.Value);
          valortotal := StringReplace(valortotal,'.','',[rfReplaceAll]);
          valortotal := StringReplace(valortotal,',','.',[rfReplaceAll]);

          basecalculoicms := FormatFloat('###,##0.00',CFItensBASECALCULOICM.Value);
          basecalculoicms := StringReplace(basecalculoicms,'.','',[rfReplaceAll]);
          basecalculoicms := StringReplace(basecalculoicms,',','.',[rfReplaceAll]);

          valoricms := FormatFloat('###,##0.00',CFItensICM.Value);
          valoricms := StringReplace(valoricms,'.','',[rfReplaceAll]);
          valoricms := StringReplace(valoricms,',','.',[rfReplaceAll]);

          aux := Completa(datamovimento,' ',8)+//Data Movimento
                 Completa('','0',1)+ //Campo Fixo
                 Completaesq(CFItensN_SEQ_ECF.value,'0',3)+ //N da Maquina
                 Completaesq(CFItensNUM_CUPOM.AsString,'0',6)+ //N do cupom fiscal
                 Completa('','0',1)+ //Tipo do Item (Produto ou Serviço)
                 Completaesq(IntToStr(item),'0',3)+ //Numero Item
                 Completa(CFItensPRODUTO.Value,' ',20)+ //Produto
                 Completa('000',' ',4)+ //Código da Situação Tributária
                 //Completa(CFItensCST.value,' ',4)+ //Código da Situação Tributária
                 Completa(qtde,' ',14)+ //Qtde
                 Completa(valorunitario,' ',14)+ //Valor Unitário
                 Completa(valortotal,' ',14)+ //Valor Total
                 Completa(basecalculoicms,' ',14)+ //Valor de Base Cal. ICMS
                 Completa(valoricms,' ',14)+ //Valor ICMS
                 Completa('',' ',5)+ //PCT Redução ICMS
                 Completa('17.00',' ',7)+ //Aliquota ICMS
                 Completa('',' ',402)+ //Filter
                 Completa('',' ',2); //EsPED do Totalizador Parcial
                 Writeln(f, AUX );
          item := item + 1;
          CFItens.Next;
        end;
       CFCabecalho.Next;
       pgb.StepBy(1);
     end;

    CloseFile(f);
    Application.MessageBox('Arquivo de Itens de CF gerados com sucesso!','Aviso',mb_ok+mb_iconinformation);
  except
    Application.MessageBox('Erro ao gerar o arquivo de Itens NF de Saída','Aviso',mb_ok+mb_iconerror);
  end;
end;

procedure TFrmProsoftSintegra.gera_cab_nf_entrada;
var
  f: TextFile;
  aux, especie, insc_estadual, cpf_cnpj,dataentrada, aliquotaicms, ipidebitado, dataemissao, totalmercadorias, outrasdespesas,
  vlrseguro, CFOP, vlroutros, vlrfrete, numnf, valorcontabil, valormercadoria, basecalculoicms, icmsdebidato, basecalculoicmssub, icmssubretito : string;
begin

  try
     if (ini.date <= 0) then
     begin
       Application.MessageBox('Defina a data inicial de pesquisa','Aviso',mb_ok+mb_iconerror);
       ini.setfocus;
       exit;
     end;

     if (fim.date <= 0) then
     begin
       Application.MessageBox('Defina a data final de pesquisa','Aviso',mb_ok+mb_iconerror);
       fim.setfocus;
       exit;
     end;

     if (fim.date <= ini.date) then
     begin
       Application.MessageBox('Intervalo de datas inválido','Aviso',mb_ok+mb_iconerror);
       fim.setfocus;
       exit;
     end;


     AssignFile( f, PathDestino.text);

     if FileExists( PathDestino.text) then
       DeleteFile( PathDestino.text);

     Rewrite(F, PathDestino.text);
     Append(f);

     NFEntrada.Close;
     NFEntrada.parambyname('data1').value := ini.date;
     NFEntrada.parambyname('cnpj').value := dmApp.Cnpj;
     NFEntrada.parambyname('data2').value := Fim.date;
     NFEntrada.Open;
     NFEntrada.fetchAll;


     pgb.Max := NFEntrada.RecordCount;
     NFEntrada.first;
     while NOT NFEntrada.EOF do
     begin
        dataemissao := FormatDateTime('dd/mm/yy',NFEntradaDATA_ENT.Value);
        dataemissao := StringReplace(dataemissao,'/','',[rfreplaceall]);

        dataentrada := dataemissao;
        {dataentrada :=  FormatDateTime('dd/mm/yy',NFEntradaDATA_ENT.Value);
        dataentrada := StringReplace(dataentrada,'/','',[rfreplaceall]);}

        valorcontabil := FormatFloat('###,##0.00',NFEntradaVLR_TOTAL_NF.Value);
        valorcontabil := StringReplace(valorcontabil,'.','',[rfReplaceAll]);
        valorcontabil := StringReplace(valorcontabil,',','.',[rfReplaceAll]);

        valormercadoria := FormatFloat('###,##0.00',NFEntradaVLR_PRODUTOS.Value);
        valormercadoria := StringReplace(valormercadoria,'.','',[rfReplaceAll]);
        valormercadoria := StringReplace(valormercadoria,',','.',[rfReplaceAll]);

        basecalculoicms := FormatFloat('###,##0.00',NFEntradaVLR_BC_ICM.Value);
        basecalculoicms := StringReplace(basecalculoicms,'.','',[rfReplaceAll]);
        basecalculoicms := StringReplace(basecalculoicms,',','.',[rfReplaceAll]);

        icmsdebidato := FormatFloat('###,##0.00',NFEntradaVLR_ICM.Value);
        icmsdebidato := StringReplace(icmsdebidato,'.','',[rfReplaceAll]);
        icmsdebidato := StringReplace(icmsdebidato,',','.',[rfReplaceAll]);

        outrasdespesas := FormatFloat('###,##0.00',NFEntradaVLR_OUTRAS_DESP.Value);
        outrasdespesas := StringReplace(outrasdespesas,'.','',[rfReplaceAll]);
        outrasdespesas := StringReplace(outrasdespesas,',','.',[rfReplaceAll]);

        vlrseguro := FormatFloat('###,##0.00',NFEntradaVLR_SEGURO.Value);
        vlrseguro := StringReplace(vlrseguro,'.','',[rfReplaceAll]);
        vlrseguro := StringReplace(vlrseguro,',','.',[rfReplaceAll]);

        vlrfrete := FormatFloat('###,##0.00',NFEntradaVLR_FRETE.Value);
        vlrfrete := StringReplace(vlrfrete,'.','',[rfReplaceAll]);
        vlrfrete := StringReplace(vlrfrete,',','.',[rfReplaceAll]);

        basecalculoicmssub := FormatFloat('###,##0.00',NFEntradaBASE_ICMS_SUB.Value);
        basecalculoicmssub := StringReplace(basecalculoicmssub,'.','',[rfReplaceAll]);
        basecalculoicmssub := StringReplace(basecalculoicmssub,',','.',[rfReplaceAll]);

        icmssubretito := FormatFloat('###,##0.00',NFEntradaVLR_ICM_SUBS.Value);
        icmssubretito := StringReplace(icmssubretito,'.','',[rfReplaceAll]);
        icmssubretito := StringReplace(icmssubretito,',','.',[rfReplaceAll]);

        ipidebitado := FormatFloat('###,##0.00',NFEntradaVLR_IPI.Value);
        ipidebitado := StringReplace(ipidebitado,'.','',[rfReplaceAll]);
        ipidebitado := StringReplace(ipidebitado,',','.',[rfReplaceAll]);

        aliquotaicms := FormatFloat('###,##0.00',NFEntradaPERC_ICM.Value);
        aliquotaicms := StringReplace(aliquotaicms,'.','',[rfReplaceAll]);
        aliquotaicms := StringReplace(aliquotaicms,',','.',[rfReplaceAll]);

        cpf_cnpj := NFEntradaCPF_CGC.AsString;
        cpf_cnpj := StringReplace(cpf_cnpj,'.','',[rfreplaceall]);
        cpf_cnpj := StringReplace(cpf_cnpj,',','',[rfreplaceall]);
        cpf_cnpj := StringReplace(cpf_cnpj,'-','',[rfreplaceall]);
        cpf_cnpj := StringReplace(cpf_cnpj,'/','',[rfreplaceall]);

        insc_estadual := NFEntradaRG_IE.value;
        insc_estadual := StringReplace(insc_estadual,'.','',[rfreplaceall]);
        insc_estadual := StringReplace(insc_estadual,',','',[rfreplaceall]);
        insc_estadual := StringReplace(insc_estadual,',','',[rfreplaceall]);
        insc_estadual := StringReplace(insc_estadual,'-','',[rfreplaceall]);
        insc_estadual := StringReplace(insc_estadual,'/','',[rfreplaceall]);

        numnf := RetiraZeros(NFEntradaNDOCTO.Value);
        numnf := StringReplace(numnf,'.','',[rfreplaceall]);
        numnf := StringReplace(numnf,',','',[rfreplaceall]);
        numnf := StringReplace(numnf,'-','',[rfreplaceall]);
        numnf := StringReplace(numnf,'/','',[rfreplaceall]);

        if (numnf = '921144') then
           numnf := '921144';

        //Substituição tributaria
        CFOP := NFEntradaNATUREZA.asstring;
        vlroutros := '0.00';
        if ((CFOP <> '1102') and (CFOP <> '2102')) then
        begin
          aliquotaicms := '00.00';
          basecalculoicms := '0.00';
          icmsdebidato := '0.00';
          vlroutros := valorcontabil;
          valormercadoria := valorcontabil;
          if (NFEntradaUF.value = 'MS') then
            CFOP := '1403'
          else
            CFOP := '2403';

        end;

        especie := NFEntradaMODELO.Value;
        if (especie = 'CTR') then
           especie := 'CTRC';

        aux := Completa('',' ',4)+//FILTER
               Completa(cpf_cnpj,' ',14)+//cnpj do emitente
               Completa(dataentrada,' ',6)+//data da entrada
               Completa(dataemissao,' ',6)+//data de Emissão
               Completaesq(numnf,'0',6)+//numero documento
               Completa('',' ',3)+//especie
               Completa(NFEntradaSERIE_NF.value,' ',3)+//serie e subserie
               Completa('0',' ',1)+//item do desdobramento
               Completaesq('',' ',5)+//código contabil
               Completaesq('',' ',3)+//CFOP antigo 3 digitos
               Completaesq(valormercadoria,'0',14)+//Valor total de mercadorias
               Completaesq(basecalculoicms,'0',14)+//Base de calculo do icms
               Completaesq(icmsdebidato,'0',14)+//ICMS Creditado
               Completaesq('0.00',' ',14)+//Isentdas não tributadas
               Completaesq(vlroutros,' ',14)+//Outras
               Completaesq('0.00','0',14)+//IPI não creditado
               Completaesq(aliquotaicms,'0',5)+//Aliquota do ICMS
               Completaesq('0.00',' ',14)+//Base da calculo do IPI
               Completaesq('0.00','0',14)+//IPI Creditado
               Completaesq('0.00',' ',14)+//IPI Creditado 50%
               Completaesq('0.00',' ',14)+//Isentas /Não tributadas
               Completaesq('',' ',14)+//outras
               Completaesq(valorcontabil,'0',14)+//valor contabil
               Completa('0',' ',1)+//condição de pagamento //0 - A vista 1 - Prazo
               Completaesq('','0',2)+//Classificação contabil
               Completaesq('',' ',3)+//Sit. Especial codigo
               Completa('',' ',12)+//Sit Especial valor 1
               Completa('',' ',12)+//Sit Especial valor 2
               Completa('',' ',12)+//Sit Especial valor 3
               Completa('',' ',12)+//Sit Especial valor 4
               Completa('',' ',100)+//Observação
               Completa('',' ',6)+//1 vencimento
               Completaesq('0.00',' ',14)+//1 Parcela
               Completa('',' ',6)+//2 vencimento
               Completaesq('0.00',' ',14)+//2 Parcela
               Completa('',' ',6)+//3 vencimento
               Completaesq('0.00',' ',14)+//3 Parcela
               Completa('',' ',6)+//4 vencimento
               Completaesq('0.00',' ',14)+//4 Parcela
               Completa('',' ',6)+//5 vencimento
               Completaesq('0.00',' ',14)+//5 Parcela
               Completa('',' ',6)+//6 vencimento
               Completaesq('0.00',' ',14)+//6 Parcela
               Completa(copy(insc_estadual,1,18),' ',18)+//Insc. Estadual
               Completa(NFEntradaUF.value,' ',2)+//UF Insc. Est. Forncedor
               Completa('1',' ',1)+//Tipo Frete  1 - Cif ou  2 -FOB
                 //---------Campos Espirito Santo e MG-------------------//
                 Completa('',' ',5)+//Sigla sit. tributaria
                 Completaesq('0.00',' ',14)+//Vlr. Sit. Tributaria
                 Completa('',' ',1)+//Digito Adicional para CFOP
                 //---------Campos MG-------------------//
                 Completa('',' ',5)+//Sigla sit. tributaria 02
                 Completaesq('0.00',' ',14)+//Vlr. Sit. Tributaria 02
                 Completa('',' ',5)+//Sigla sit. tributaria 03
                 Completaesq('0.00',' ',14)+//Vlr. Sit. Tributaria 03
                 Completa('',' ',5)+//Sigla sit. tributaria 04
                 Completaesq('0.00',' ',14)+//Vlr. Sit. Tributaria 04
                 Completaesq('0.00',' ',14)+//Vlr. Parcela Isenta
                 Completa('',' ',3)+//Digito Adicional para CFOP
                 //---------Sergipe---------------//
                 Completa('',' ',4)+//Ano da AIDF
                 Completa('',' ',6)+//Nusmero da AIDF
              Completa(CFOP,' ',4)+//CFOP novo 4 digitos
              Completa('',' ',10)+//Código municipal fornecedor
                 //---------Transportador - (Sóh Combustivel)-----------------//
                 //Local de Saida Origem
                 Completaesq('',' ',14)+//CNPJ
                 Completa('',' ',18)+//Insc. Estadual
                 Completa('',' ',2)+//UF
                 //Local de Entrega Recbto (Destino)
                 Completaesq('',' ',14)+//CNPJ
                 Completa('',' ',18)+//Insc. Estadual
                 Completa('',' ',2)+//UF
                 //Dados transportador
                 Completaesq('',' ',14)+//CNPJ
                 Completa('',' ',18)+//Insc. Estadual
                 Completa('',' ',2)+//UF
                 Completa('',' ',1)+//Modal
                 Completa('',' ',7)+//Placa 1
                 Completa('',' ',2)+//UF Placa 1
                 Completa('',' ',7)+//Placa 2
                 Completa('',' ',2)+//UF Placa 2
                 Completa('',' ',7)+//Placa 3
                 Completa('',' ',2)+//UF Placa 3
                 Completa('',' ',1)+//Movimentação fisica do combustivel
                 Completaesq('',' ',4)+//Classe Contabil Integracao
                 Completa('',' ',2)+//Código DIPAM
              Completaesq('0'{basecalculoicmssub},'0',14)+//Base de Calculo Sub. Tributária
              Completaesq('0'{icmssubretito},'0',14)+//Imposto retido sub. tributaria
              Completa('',' ',6)+//Código recolhimento PIS/Cofins
              Completa('0',' ',1)+//Nota Cancelada
              Completa('',' ',6)+//Espaço reservado
              Completaesq('0.00','0',14)+//Valor do Frete
              Completaesq('0.00','0',14)+//Valor do Seguro
              Completaesq('0.00',' ',14)+//Valor Outras Despesas
              Completa(especie,' ',5)+//Especie documentos
              Completa('',' ',1)+//IPI na Base de ICMS
              Completa(NFEntradaSERIE_NF.value,' ',3)+//Serie
              Completa('',' ',2)+//SubSerie
              Completaesq(numnf,'0',10)+//N Documento 10 digitos
              Completaesq('',' ',10)+//N Dispositivo Inicial
              Completaesq('',' ',10)+//N Dispositivo Final
              Completa('',' ',5)+//Código Centro de Custo
              Completaesq('',' ',3)+//Código Tabela do Simples Nacional
              Completa('',' ',8)+//Hora emissão NF
              Completa('',' ',8)+//Hora da Emtrada
              //SPED
              Completaesq('0.00',' ',14)+//Valor cobrado de terceiros
              Completaesq('0.00',' ',14)+//Valor do Frete
              Completa('',' ',8)+//Aliquota ICMS Frete
              Completaesq('0.00',' ',14)+//Valor do ICMS sobre Frete
              Completa('',' ',44)+//Chave Fiscal Eletronica
              Completa('',' ',2)+//SPED Tipo do Titulo de Cobranca
              Completa('',' ',40)+//Descrição titulo de cobrnaca...
              Completa('',' ',30)+//numero de processo
              Completa('',' ',1)+//Indicador Origem do Processo
              Completa('',' ',1)+//Subst. Tributário
              Completa('',' ',3);//Tipo. Nota Associada
              Writeln( f, AUX );
       NFEntrada.Next;
       pgb.StepBy(1);
     end;

    CloseFile(f);
    Application.MessageBox('Arquivo de NF de Entrada gerados com sucesso!','Aviso',mb_ok+mb_iconinformation);
  except
    Application.MessageBox('Erro ao gerar o arquivo de NF de Entrada','Aviso',mb_ok+mb_iconerror);
  end;
end;

procedure TFrmProsoftSintegra.gera_cab_nf_entrada_itens;
var
  f: TextFile;
  aux, aliq_ipi, serie, valor_ipi, reducao, baseipi, cpf_cnpj,dataentrada, datadocumento, desconto,
  valoritem,vlroutros, CFOP, despacessorias, aliquotaicms, qtde, numnf, precounitario, basecalculoicms, icmsdebidato, basecalculoicmssub, icmssubretito : string;
begin

  try
     if (ini.date <= 0) then
     begin
       Application.MessageBox('Defina a data inicial de pesquisa','Aviso',mb_ok+mb_iconerror);
       ini.setfocus;
       exit;
     end;

     if (fim.date <= 0) then
     begin
       Application.MessageBox('Defina a data final de pesquisa','Aviso',mb_ok+mb_iconerror);
       fim.setfocus;
       exit;
     end;

     if (fim.date <= ini.date) then
     begin
       Application.MessageBox('Intervalo de datas inválido','Aviso',mb_ok+mb_iconerror);
       fim.setfocus;
       exit;
     end;


     AssignFile( f, PathDestino.text);

     if FileExists( PathDestino.text) then
       DeleteFile( PathDestino.text);

     Rewrite(F, PathDestino.text);

     Append(f);


     NFEntradasItens.Close;
     NFEntradasItens.parambyname('data1').value := ini.date;
     NFEntradasItens.parambyname('cnpj').value := dmApp.Cnpj;
     NFEntradasItens.parambyname('data2').value := Fim.date;
     NFEntradasItens.Open;
     NFEntradasItens.fetchAll;


     pgb.Max := NFEntradasItens.RecordCount;
     NFEntradasItens.first;
     while NOT NFEntradasItens.EOF do
     begin
        dataentrada :=  FormatDateTime('yyyy/mm/dd',NFEntradasItensDATA_ENTRADA.Value);
        dataentrada := StringReplace(dataentrada,'/','',[rfreplaceall]);

        qtde := FormatFloat('###,##0.00',NFEntradasItensQTDE.Value);
        qtde := StringReplace(qtde,'.','',[rfReplaceAll]);
        qtde := StringReplace(qtde,',','.',[rfReplaceAll]);

        despacessorias:= FormatFloat('###,##0.00',NFEntradasItensDESP_ACESSORIAS.Value);
        despacessorias := StringReplace(despacessorias,'.','',[rfReplaceAll]);
        despacessorias := StringReplace(despacessorias,',','.',[rfReplaceAll]);


        precounitario := FormatFloat('###,##0.00',NFEntradasItensPRECO_UNITARIO.Value);
        precounitario := StringReplace(precounitario,'.','',[rfReplaceAll]);
        precounitario := StringReplace(precounitario,',','.',[rfReplaceAll]);

        desconto := FormatFloat('###,##0.00',NFEntradasItensDESCONTO.Value);
        desconto := StringReplace(desconto,'.','',[rfReplaceAll]);
        desconto := StringReplace(desconto,',','.',[rfReplaceAll]);

        desconto := FormatFloat('###,##0.00',NFEntradasItensDESCONTO.Value);
        desconto := StringReplace(desconto,'.','',[rfReplaceAll]);
        desconto := StringReplace(desconto,',','.',[rfReplaceAll]);

        valoritem := FormatFloat('###,##0.00',NFEntradasItensVALOR_ITEM.Value);
        valoritem := StringReplace(valoritem,'.','',[rfReplaceAll]);
        valoritem := StringReplace(valoritem,',','.',[rfReplaceAll]);

        aliq_ipi := FormatFloat('###,##0.00',NFEntradasItensALIQUOTA_IPI.Value);
        aliq_ipi := StringReplace(aliq_ipi,'.','',[rfReplaceAll]);
        aliq_ipi := StringReplace(aliq_ipi,',','.',[rfReplaceAll]);

        valor_ipi := FormatFloat('###,##0.00',NFEntradasItensVALOR_IPI.Value);
        valor_ipi := StringReplace(valor_ipi,'.','',[rfReplaceAll]);
        valor_ipi := StringReplace(valor_ipi,',','.',[rfReplaceAll]);


        basecalculoicms := FormatFloat('###,##0.00',NFEntradasItensBASE_ICMS.Value);
        basecalculoicms := StringReplace(basecalculoicms,'.','',[rfReplaceAll]);
        basecalculoicms := StringReplace(basecalculoicms,',','.',[rfReplaceAll]);

        icmsdebidato := FormatFloat('###,##0.00',NFEntradasItensICMS_DEBITADO.Value);
        icmsdebidato := StringReplace(icmsdebidato,'.','',[rfReplaceAll]);
        icmsdebidato := StringReplace(icmsdebidato,',','.',[rfReplaceAll]);

        basecalculoicmssub := FormatFloat('###,##0.00',NFEntradasItensBASE_ICMS_SUB.Value);
        basecalculoicmssub := StringReplace(basecalculoicmssub,'.','',[rfReplaceAll]);
        basecalculoicmssub := StringReplace(basecalculoicmssub,',','.',[rfReplaceAll]);

        icmssubretito := FormatFloat('###,##0.00',NFEntradasItensVLR_ICM_SUBS_ITEM.Value);
        icmssubretito := StringReplace(icmssubretito,'.','',[rfReplaceAll]);
        icmssubretito := StringReplace(icmssubretito,',','.',[rfReplaceAll]);

        reducao := FormatFloat('###,##0.00',NFEntradasItensREDUCAO.Value);
        reducao := StringReplace(reducao,'.','',[rfReplaceAll]);
        reducao := StringReplace(reducao,',','.',[rfReplaceAll]);

        baseipi := FormatFloat('###,##0.00',NFEntradasItensBASE_IPI.Value);
        baseipi := StringReplace(baseipi,'.','',[rfReplaceAll]);
        baseipi := StringReplace(baseipi,',','.',[rfReplaceAll]);

        baseipi := FormatFloat('###,##0.00',NFEntradasItensBASE_IPI.Value);
        baseipi := StringReplace(baseipi,'.','',[rfReplaceAll]);
        baseipi := StringReplace(baseipi,',','.',[rfReplaceAll]);

        cpf_cnpj := NFEntradasItensCNPJ_EMITENTE.AsString;
        cpf_cnpj := StringReplace(cpf_cnpj,'.','',[rfreplaceall]);
        cpf_cnpj := StringReplace(cpf_cnpj,',','',[rfreplaceall]);
        cpf_cnpj := StringReplace(cpf_cnpj,'-','',[rfreplaceall]);
        cpf_cnpj := StringReplace(cpf_cnpj,'/','',[rfreplaceall]);

        numnf := RetiraZeros(NFEntradasItensNUM_NF.Value);
        numnf := StringReplace(numnf,'.','',[rfreplaceall]);
        numnf := StringReplace(numnf,',','',[rfreplaceall]);
        numnf := StringReplace(numnf,'-','',[rfreplaceall]);
        numnf := StringReplace(numnf,'/','',[rfreplaceall]);

        if (numnf = '24140') then
          numnf := '24140';

        //Substituição tributaria
        CFOP := NFEntradasItensCFOP.AsString;
        vlroutros := '0.00';

        if ((CFOP <> '1102') and (CFOP <> '2102')) then
        begin
          valor_ipi := '00.00';
          aliq_ipi := '00.00';
          aliquotaicms := '00.00';
          basecalculoicms := '0.00';
          icmsdebidato := '0.00';
          icmssubretito := '0.00';
          precounitario := FormatFloat('###,##0.00',NFEntradasItensPRECO_UNITARIO.Value + (NFEntradasItensDESP_ACESSORIAS.Value/NFEntradasItensQTDE.Value));
          precounitario := StringReplace(precounitario,'.','',[rfReplaceAll]);
          precounitario := StringReplace(precounitario,',','.',[rfReplaceAll]);


          valoritem := FormatFloat('###,##0.00',(NFEntradasItensVALOR_ITEM.Value + NFEntradasItensDESP_ACESSORIAS.Value));
          valoritem := StringReplace(valoritem,'.','',[rfReplaceAll]);
          valoritem := StringReplace(valoritem,',','.',[rfReplaceAll]);
          vlroutros := valoritem ;
          despacessorias := '0.00';
        end
        else
          aliquotaicms := '17.00';

        serie := NFEntradasItensSERIE.value;
        if (trim(serie) = '000') then
          serie := '1';
        aux := Completa(cpf_cnpj,' ',14)+//CNPJ do emitente
               Completa(dataentrada,' ',8)+//Data da Entrada
               Completaesq(numnf,'0',6)+//Numero do Documento
               Completa(serie,' ',3)+//Serie e SubSerie
               Completa('0',' ',1)+//Item desdobramento da NF
               Completaesq(NFEntradasItensNUM_ITEM.AsString,'0',2)+//Numero do Item
               Completa(NFEntradasItensCOD_PRODUTO.Value,' ',20)+//Código do Produto
               Completa('',' ',3)+//Natureza de operacao
               Completa('',' ',1)+//Itens desd. Nat. Operacao
               Completa(NFEntradasItensUNIDADE.Value,' ',3)+//Und. Medida
               Completa(NFEntradasItensSIT_TRIB.Value,' ',3)+//Sit. Tributaria
               Completaesq(qtde,'0',14)+//Qtde
               Completaesq(precounitario,'0',14)+//Preco Unitario
               Completaesq(desconto,'0',14)+//Descontos
               Completaesq(valoritem,'0',14)+//Valor do Item
               Completaesq(aliq_ipi,'0',5)+//Aliquota do IPI
               Completaesq(valor_ipi,'0',14)+//Valor do IPI
               Completaesq(basecalculoicms,'0',14)+//Base de Calculo ICMS
               Completaesq(basecalculoicmssub,'0',14)+//Base Calc. Substituicao
               //--------------------PRODUTO--------------------------//
               Completa(NFEntradasItensPRODUTO_DESCRICAO.value,' ',80)+//Descricao do produto
               Completa('',' ',2)+//grupo de produtos
               Completa('',' ',10)+//Codigo class contabil
               Completa('',' ',2)+//Item desdobramento CCF
               Completa(aliquotaicms,' ',5)+//Aliq. ICMS Op. Internas
               Completaesq(reducao,'0',5)+//Redução de Base do ICMS
               Completaesq('0.00',' ',14)+//Produto base calc sub. tributaria
               Completaesq('0.00','0',5)+//Aliquota IPI
               Completa('',' ',2)+//Especie Produto
               Completa(NFEntradasItensSIT_TRIB.value,' ',3)+//Sit. Tributaria
               Completa(copy(NFEntradasItensPRODUTO_FANTASIA.value,1,30),' ',30)+//Nome Fantasia
               Completa('',' ',3)+//N. Item 3 Digito
               Completa(NFEntradasItensMOVIMENTA_MERCADORIA.value,' ',1)+//Movimentou mercadoria
               Completaesq('0.00','0',14)+//Base calculo IPI
               Completa(NFEntradasItensIND_TRIB_IPI.value,' ',1)+//Indicação de tributação IPI
               Completa(aliquotaicms,' ',5)+//Aliquota ICMS
               Completaesq(icmsdebidato,'0',14)+//Valor ICMS
               Completa(NFEntradasItensIND_TRIB_ICMS.value,' ',1)+//Indicação de tributação ICMS
               Completaesq(icmssubretito,'0',14)+//ICMS ST. ICMS ST.
                   //------------------COMBUSTIVEL-----------------------//
                   Completaesq('0.00',' ',14)+//Base calc. st. Interestadual
                   Completaesq('0.00',' ',14)+//ICMS st. Interestadual
                   Completaesq('0.00',' ',14)+//ICMS st. Inter. a complementar
                   Completaesq('0.00',' ',14)+//Base de calculo de retenção
                   Completaesq('0.00',' ',14)+//Parcela do Imp. Retido
                   Completa('',' ',3)+//Grupo de Produto - 3 digitos
                   Completa('',' ',2)+//PRODEPE - Código de Apuração
                   Completa('',' ',2)+//Incentivo Entr. - Código de Apuração
                   Completa('',' ',96)+//Reserva para dados de produtos
                   Completa('',' ',10)+//Número da DI
                   Completa('',' ',8)+//Data da DI
                   Completa('',' ',1)+//Código INF Reg 88 GT
                   Completaesq('0.00',' ',14)+//ICMS Diferido e Dilatado
                   Completa('',' ',2)+//PRODEPE - CODIGO DE APURAÇÃO
                   Completa('',' ',1)+//Gera registro 88
                   Completaesq('0.00',' ',14)+//Isentas Não tributada ICMS
                   Completaesq(vlroutros,' ',14)+//Outras ICMS
                   Completaesq('0.00',' ',14)+//Isentas não tributada IPI
                   Completaesq('0.00',' ',14)+//Outras IPI
                   Completa('',' ',4)+//PRODUTO- grupo de produto
               Completa(serie,' ',3)+//Serie
               Completa('',' ',2)+//SubSerie
               Completaesq(numnf,'0',10)+//N de documento com 10 digitos
               Completaesq(despacessorias,' ',14)+//Valor despesas acessorias
               //Campos abaixo so obrigatorios se a NF foi gravada com um endereço diferente do end. principal
               Completa('',' ',18)+//IE do emitente
               Completa('',' ',2)+//UF Emitente
               Completa('',' ',2)+//Código da sit. trib. IPI
               Completa('',' ',2)+//Código da sit. trib. PIS
               Completa('',' ',2)+//Código da sit. trib. COFINS
               //Medicamento
               Completa('',' ',21)+//Numero do Lote de Fabricacao
               Completa('',' ',16)+//Qtde item p/Lote
               Completa('',' ',8)+//Data de Fabricacao
               Completa('',' ',8)+//Data de Validade
               Completaesq('0.00',' ',14)+//Medicamento Valor Tabelado valor preco maximo
               Completa('',' ',1)+//Veiculo Indicacao tipo de operacao
               Completa('',' ',8)+//Data da escrituracao
               Completa('',' ',10)+//Numero da Nota
               Completa('',' ',6)+//Serie
               Completa('',' ',6)+//Sub. Serie
               Completa('',' ',3)+//Num. Item desdobramento NF
               Completaesq('',' ',14)+//CNPJ do fornecedor
               Completa('',' ',18)+//Insc. Est.  do Fornecedor
               Completa('',' ',4)+//Ressarcimento Sub. Tributaria ano da NF Ultima Entrada
               Completa('',' ',15)+//Ressarcimento Qtde do item relativa a ultima entrada
               Completaesq('0.00',' ',14)+//Ressarcimento valor unitario da mercadoria
               Completaesq('0.00',' ',14)+//Ressarcimento subst. tributaria valor unitadio da base de calculo do imposto
               Completaesq('0.00',' ',14)+//valor da reducao de base de caulculo
               Completa('',' ',2)+//Produto SPED
               Completa('',' ',6)+//Produto - Controle selo IPI
               Completa('',' ',5)+//Produto - Classe enquadramento IPI
               Completa('',' ',1)+//Produto - medicamento ref. base calculo
               Completa('',' ',1)+//Produto - medicamento Tipo de Produto
               Completaesq('0.00',' ',14)+//Produto - medicamento Preço Tabelado ou preço máxmo
               Completa('',' ',4)+//Produto - comunicação, código de classificação do item
               Completa('',' ',1)+//Produto - Comunicação Tipo de Receita
               Completa('',' ',4)+//Produto - Energia elétrica, código de classificação do item
               Completa('',' ',1)+//Produto - Energia elétrica Tipo de Receita
               Completa('',' ',17)+//Veículo, número de chassi
               Completaesq('0.00',' ',14)+//Produto, IPI valor numeroo do chassi
               Completa('',' ',3)+//Código do enquadramento legal IPI
               Completa('',' ',1)+//Código do movimento
               Completa('',' ',1)+//Tipo de Produto
               Completa('',' ',7)+//PRODUTO - Código de Produtos Relevantes
               Completa('',' ',4)+//PRODUTO - Código Sefaz
               Completa('',' ',16)+//Preço unitário 6 casas decimais
               //Ceara
               Completa('',' ',1)+//Produto Tipo Serviço
               Completa('',' ',10)+//Produto ANP - Codigo do produto
               Completa('',' ',5);
              Writeln( f, AUX );
       NFEntradasItens.Next;
       pgb.StepBy(1);
     end;

    CloseFile(f);
    Application.MessageBox('Arquivo de Itens de NF de Entrada gerados com sucesso!','Aviso',mb_ok+mb_iconinformation);
  except
    Application.MessageBox('Erro ao gerar o arquivo de Itens de NF de Entrada','Aviso',mb_ok+mb_iconerror);
  end;
end;

procedure TFrmProsoftSintegra.gera_produtos;
var
  f: TextFile;
  aux, IE, valoroutros, aliquota,  cpf_cnpj,datasaida, datadocumento, valorcontabil, valormercadoria, basecalculoicms, icmsdebidato, basecalculoicmssub, icmssubretito : string;
begin
try
     if (ini.date <= 0) then
     begin
       Application.MessageBox('Defina a data inicial de pesquisa','Aviso',mb_ok+mb_iconerror);
       ini.setfocus;
       exit;
     end;

     if (fim.date <= 0) then
     begin
       Application.MessageBox('Defina a data final de pesquisa','Aviso',mb_ok+mb_iconerror);
       fim.setfocus;
       exit;
     end;

     if (fim.date <= ini.date) then
     begin
       Application.MessageBox('Intervalo de datas inválido','Aviso',mb_ok+mb_iconerror);
       fim.setfocus;
       exit;
     end;


     AssignFile( f, PathDestino.text);

     if FileExists( PathDestino.text) then
       DeleteFile( PathDestino.text);

     Rewrite(F, PathDestino.text);
     Append(f);


     qryProdutos.Close;
     qryProdutos.parambyname('data1').value := ini.date;
     qryProdutos.parambyname('cnpj').value := dmApp.Cnpj;
     qryProdutos.parambyname('data2').value := Fim.date;
     qryProdutos.Open;
     qryProdutos.fetchAll;


     pgb.Max := qryProdutos.RecordCount;
     qryProdutos.first;
     while NOT qryProdutos.EOF do
     begin

        aux := Completa(qryProdutosCODIGO.AsString,' ',20)+//codigo produt
               Completa(qryProdutosNOME.AsString,' ',80)+ //nome produto
               completa('',' ',2)+//grupo de produto dos
               completa('UN',' ',3)+//unidade medida
               completaesq(qryProdutosCOD_CLASS_FISCAL.AsString,'0',10)+//cod. calss cnm
               completa('',' ',2)+//item desdobramento
               completa('',' ',5)+//item desdobramento
               completa('',' ',5)+//item desdobramento
               completa('',' ',14)+//item desdobramento
               completa('',' ',5)+//item desdobramento
               completa('',' ',2)+//item desdobramento
               completaesq(qryProdutosSIT_TRIBUTARIA.asstring,' ',3)+//sit tributaria
               completa('',' ',2)+//codi. padrao
               completa('',' ',14)+//item desdobramento
               completa('',' ',14)+//item desdobramento
               completa('',' ',7)+//item desdobramento
               completa('',' ',1)+//item desdobramento
               completa('',' ',5)+//item desdobramento
               completa('N',' ',1)+//insentivo fiscal
               completa(qryProdutosSIT_TRIBUTARIA_CF.AsString,' ',4)+//sit. trib. cf
               completa('',' ',2)+//item desdobramento
               completa('',' ',3)+//item desdobramento
               completa('',' ',5)+//item desdobramento
               completa('',' ',7)+//item desdobramento
               completa('',' ',3)+//item desdobramento
               completa('',' ',4)+//item desdobramento
               completa('',' ',3)+//item desdobramento
               completa('',' ',5)+//item desdobramento
               completa('',' ',5)+//item desdobramento
               completa('',' ',2)+//item desdobramento
               completa('',' ',2)+//item desdobramento
               completa('',' ',6)+//item desdobramento
               completa('',' ',30)+//nome fantasia
               completa('',' ',30)+//item desdobramento
               completa('',' ',4)+//item desdobramento
               completa('',' ',4)+//item desdobramento
               completa('',' ',5)+//item desdobramento
               completa('',' ',8)+//item desdobramento
               completa('',' ',1)+//suj. substicao tributaria
               completa('',' ',2)+//item desdobramento
               completa('',' ',6)+//item desdobramento
               completa('',' ',5)+//item desdobramento
               completa('',' ',1)+//item desdobramento
               completa('',' ',1)+//item desdobramento
               completa('',' ',14)+//item desdobramento
               completa('',' ',4)+//item desdobramento
               completa('',' ',1)+//item desdobramento
               completa('',' ',4)+//item desdobramento
               completa('',' ',1)+//item desdobramento
               completa('',' ',17)+//item desdobramento
               completa('',' ',14)+//item desdobramento
               completa('',' ',4)+//item desdobramento
               completa('',' ',1)+//item desdobramento
               completa('',' ',1)+//item desdobramento
               completa('',' ',10);

               Writeln(f, AUX );
       qryProdutos.Next;
       pgb.StepBy(1);
     end;

    CloseFile(f);
    Application.MessageBox('Produtos gerados com sucesso!','Aviso',mb_ok+mb_iconinformation);
  except
    Application.MessageBox('Erro ao gerar Produtos','Aviso',mb_ok+mb_iconerror);
  end;
end;

end.

