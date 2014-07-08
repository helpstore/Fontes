 unit Sintegra_Exactus_Form;

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
  TFrmExactusSintegra = class(TForm)
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
    stgSintegraExactus: TcxPropertiesStore;
    NFSaidaVLR_OUTROS: TFloatField;
    NFSaidaPSA_CODIGO: TIntegerField;
    NFEntradasItensDESP_ACESSORIAS: TFloatField;
    NFEntradasItensVLR_ICM_SUBS_ITEM: TFloatField;
    rdProduto: TRadioButton;
    qryProdutos: TIBQuery;
    qryProdutosCODIGO: TIBStringField;
    qryProdutosNOME: TIBStringField;
    qryProdutosUNIDADE: TIBStringField;
    qryProdutosCST_ORIG: TIBStringField;
    qryProdutosCST_TRIB: TIBStringField;
    qryProdutosALIQ_ICM: TIBStringField;
    ParceirosCODIGO: TIntegerField;
    ParceirosNOME_RAZAO: TIBStringField;
    ParceirosFANTASIA: TIBStringField;
    ParceirosCPF_CGC: TIBStringField;
    ParceirosRG_IE: TIBStringField;
    ParceirosUF: TIBStringField;
    ParceirosCOD_IBGE: TIBStringField;
    ParceirosINSC_MUNIC: TIBStringField;
    ParceirosLOGRADOURO: TIBStringField;
    ParceirosNUMERO: TIBStringField;
    ParceirosCOMPLEMENTO: TIBStringField;
    ParceirosBAIRRO: TIBStringField;
    ParceirosCEP: TIBStringField;
    ParceirosFONE: TIBStringField;
    ParceirosEMAIL: TIBStringField;
    ParceirosCLIENTE: TIntegerField;
    ParceirosFORNECEDOR: TIntegerField;
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
    NFSaidaItensVLR_OUTROS: TFloatField;
    NFSaidaItensBASE_ICMS: TFloatField;
    NFSaidaItensBASE_ICMS_SUB: TFloatField;
    NFSaidaItensPRODUTO_DESCRICAO: TIBStringField;
    NFSaidaItensPRODUTO_SIT_TRIB: TIBStringField;
    NFSaidaItensPRODUTO_FANTASIA: TIBStringField;
    NFSaidaItensMOVIMENTA_MERCADORIA: TIBStringField;
    NFSaidaItensINDICACAO_TRIBUTACAO: TIBStringField;
    NFEntradaPSA_CODIGO: TIntegerField;
    NFEntradasItensPSA_CODIGO: TIntegerField;
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
  public
    { Public declarations }
  end;

var
  FrmExactusSintegra: TFrmExactusSintegra;

implementation

uses Usuarios_DM, Application_DM, Funcoes;

{$R *.DFM}

procedure TFrmExactusSintegra.FormCreate(Sender: TObject);
begin
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, Self.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TFrmExactusSintegra.ActFecharExecute(Sender: TObject);
begin
     Close ;
end;

procedure TFrmExactusSintegra.ActExportaExecute(Sender: TObject);
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
 else if (rdNFET.Checked) then
   gera_cab_nf_entrada
 else if (rdNFETI.Checked) then
   gera_cab_nf_entrada_itens;
end;

procedure TFrmExactusSintegra.ParceirosBeforeOpen(DataSet: TDataSet);
begin
     (DataSet as TIBQuery).ParamByName('CNPJ').asString := DMApp.Cnpj;
     (DataSet as TIBQuery).Prepare;
end;

procedure TFrmExactusSintegra.RzBitBtn2Click(Sender: TObject);
begin
     Close ;
end;


procedure TFrmExactusSintegra.gera_parceiros;
var
  I,sequencia: Integer;
  f: TextFile;
  cpf, rgnumero, aux, end_cep, cpf_cnpj_livre, forn_cliente, xcnpj, insc_estadual : string;
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
     Parceiros.parambyname('cnpj').value :=  dmapp.cnpj;
     Parceiros.Open;
     Parceiros.fetchAll;

     pgb.Max := Parceiros.RecordCount;
     Parceiros.first;
     while NOT Parceiros.EOF do
     begin
        xcnpj := '';
        cpf := '';
        if (ParceirosFORNECEDOR.Value > 0) then
          forn_cliente := '1'
        else if (ParceirosFORNECEDOR.Value < 0) then
          forn_cliente := '2'
        else
          forn_cliente := '3';

        cpf_cnpj_livre := ParceirosCPF_CGC.value;
        //Limpando codigo cnpj
        cpf_cnpj_livre := StringReplace(cpf_cnpj_livre,'.','',[rfreplaceall]);
        cpf_cnpj_livre := StringReplace(cpf_cnpj_livre,',','',[rfreplaceall]);
        cpf_cnpj_livre := StringReplace(cpf_cnpj_livre,'-','',[rfreplaceall]);
        cpf_cnpj_livre := StringReplace(cpf_cnpj_livre,'/','',[rfreplaceall]);

        if (Length(cpf_cnpj_livre)=11) then
          cpf := cpf_cnpj_livre
        else if (Length(cpf_cnpj_livre) > 11) then
          xcnpj := cpf_cnpj_livre;


        end_cep := ParceirosCEP.value;
        //Limpando codigo cnpj
        end_cep := StringReplace(end_cep,'.','',[rfreplaceall]);
        end_cep := StringReplace(end_cep,',','',[rfreplaceall]);
        end_cep := StringReplace(end_cep,'-','',[rfreplaceall]);
        end_cep := StringReplace(end_cep,'/','',[rfreplaceall]);



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

        insc_estadual := ParceirosRG_IE.value;
        insc_estadual := StringReplace(insc_estadual,'.','',[rfreplaceall]);
        insc_estadual := StringReplace(insc_estadual,',','',[rfreplaceall]);
        insc_estadual := StringReplace(insc_estadual,',','',[rfreplaceall]);
        insc_estadual := StringReplace(insc_estadual,'-','',[rfreplaceall]);
        insc_estadual := StringReplace(insc_estadual,'/','',[rfreplaceall]);




        rgnumero := ParceirosRG_IE.value;
        rgnumero := StringReplace(rgnumero,'.','',[rfreplaceall]);
        rgnumero := StringReplace(rgnumero,',','',[rfreplaceall]);
        rgnumero := StringReplace(rgnumero,'-','',[rfreplaceall]);
        rgnumero := StringReplace(rgnumero,'/','',[rfreplaceall]);


        if (UPPERCASE(trim(insc_estadual)) = 'ISENTA') then
          insc_estadual := 'ISENTO';


        aux := Completa(copy(ParceirosCODIGO.asString,1,14),' ',14)+ // codigo
               Completa(copy(ParceirosNOME_RAZAO.value,1,44),' ',44)+ //razao social
               Completa(copy(ParceirosFANTASIA.value,1,10),' ',10)+' '+ //nome fantasia
               Completa(copy(XCNPJ,1,14),' ',14)+ //cnpj
               Completaesq(copy(insc_estadual,1,20),' ',20)+// insc estauda
               Completa(copy(ParceirosUF.Value,1,2),' ',2)+// uf
               Completa(' ',' ',1)+// agropecaruario s/n
               Completaesq(copy(ParceirosCOD_IBGE.AsString,1,7),' ',7)+ //codigo municiopio
               Completaesq(copy(CPF,1,11),' ',11)+ //cpf
               Completa(' ',' ',7)+'   '+ //Conta cont fornecedor , deixei em branco  
               Completa('1',' ',3)+' '+ //serie
               Completa('01',' ',2)+ //modelo
               Completa(' ',' ',7)+ //Conta cont cliente
               Completa(forn_cliente,' ',1)+ //fornecedor clientte
               Completa(copy(ParceirosINSC_MUNIC.AsString,1,11),' ',11)+ //inscrição municipal
               Completa('R/AV',' ',8)+ //tipo logradouro
               Completa(copy(ParceirosLOGRADOURO.AsString,1,31),' ',31)+ //nome logradouro
               Completa(copy(ParceirosNUMERO.AsString,1,6),' ',6)+ //numero
               Completa(copy(ParceirosCOMPLEMENTO.AsString,1,17),' ',17)+ //complemneto
               Completa(copy('BAIRRO',1,7),' ',7)+ //tipo bairro
               Completa(copy(ParceirosBAIRRO.AsString,1,17),' ',17)+ //nome bairro
               Completa(copy(end_cep,1,8),' ',8)+ //cep
               Completa(' ',' ',1)+ //rentenção est. resp
               Completa(' ',' ',1)+ //optante simples
               Completa(' ',' ',11)+ //numero alvara
               Completa('',' ',15)+ //telefone
               Completa(copy(ParceirosEMAIL.AsString,1,36),' ',36)+ //email
               Completa('',' ',6)+ //codigo pais
               Completa(copy('',1,9),' ',9); //insc. suframa
               Writeln( f, AUX );
       Parceiros.Next;
       pgb.StepBy(1);
     end;

    CloseFile(f);
    Application.MessageBox('Arquivo de parceiros gerado com sucesso!','Aviso',mb_ok+mb_iconinformation);
  except
    Application.MessageBox('Erro ao gerar o arquivo de parceiros','Aviso',mb_ok+mb_iconerror);
  end;
end;

procedure TFrmExactusSintegra.ActAbreExecute(Sender: TObject);
begin
  IF DIR.Execute THEN
  BEGIN
      PathDestino.Text := DIR.FileName ;
  END;
end;

procedure TFrmExactusSintegra.gera_cab_nf_saida;
var
  f: TextFile;

  aux, diaemissao, IE, valoroutros, aliquota,  cpf_cnpj,datasaida, datadocumento, valorcontabil, valormercadoria, basecalculoicms, icmsdebidato, basecalculoicmssub, icmssubretito : string;
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

        diaemissao := copy(datasaida,1,2);
        datadocumento := FormatDateTime('dd/mm/yy',NFSaidaDATA_DOCUMENTO.Value);
        datadocumento := StringReplace(datadocumento,'/','',[rfreplaceall]);

        valorcontabil := FormatFloat('###,##0.00',NFSaidaVALOR_CONTABIL.Value);
        valorcontabil := StringReplace(valorcontabil,'.','',[rfReplaceAll]);
        valorcontabil := StringReplace(valorcontabil,',','',[rfReplaceAll]);

        valoroutros := FormatFloat('###,##0.00',NFSaidaVLR_OUTROS.Value);
        valoroutros := StringReplace(valoroutros,'.','',[rfReplaceAll]);
        valoroutros := StringReplace(valoroutros,',','',[rfReplaceAll]);


        valormercadoria := FormatFloat('###,##0.00',NFSaidaVALOR_MERCADORIAS.Value);
        valormercadoria := StringReplace(valormercadoria,'.','',[rfReplaceAll]);
        valormercadoria := StringReplace(valormercadoria,',','',[rfReplaceAll]);

        basecalculoicms := FormatFloat('###,##0.00',NFSaidaBASE_CALCULO_ICMS.Value);
        basecalculoicms := StringReplace(basecalculoicms,'.','',[rfReplaceAll]);
        basecalculoicms := StringReplace(basecalculoicms,',','',[rfReplaceAll]);

        icmsdebidato := FormatFloat('###,##0.00',NFSaidaICMS_DEBITADO.Value);
        icmsdebidato := StringReplace(icmsdebidato,'.','',[rfReplaceAll]);
        icmsdebidato := StringReplace(icmsdebidato,',','',[rfReplaceAll]);

        basecalculoicmssub := FormatFloat('###,##0.00',NFSaidaBASE_CALCULO_ICMS_SUB.Value);
        basecalculoicmssub := StringReplace(basecalculoicmssub,'.','',[rfReplaceAll]);
        basecalculoicmssub := StringReplace(basecalculoicmssub,',','',[rfReplaceAll]);

        icmssubretito := FormatFloat('###,##0.00',NFSaidaIMPOSTO_RETIDO_ICMS_SUB.Value);
        icmssubretito := StringReplace(icmssubretito,'.','',[rfReplaceAll]);
        icmssubretito := StringReplace(icmssubretito,',','',[rfReplaceAll]);

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

       if  (NFSaidaPSA_CODIGO.Value = 1) then
       begin
         cpf_cnpj := '00000000000';
         IE := 'ISENTO';
       end;

        aux := Completa(diaemissao,' ',2)+//dia de emissao
               Completaesq(copy(NFSaidaNUM_NF.AsString,1,9),' ',9)+ //numero inicial
               Completaesq(copy(NFSaidaNUM_NF.AsString,1,9),' ',9)+ //numero final
               Completa(copy(NFSaidaSERIE.AsString,1,2),' ',2)+ //Série
               Completa('',' ',4)+ //especie
               Completa('',' ',1)+ //Lancamento
               Completaesq(copy(NFSaidaPSA_CODIGO.AsString,1,14),' ',14)+ //Cod. Cliente
               Completa('',' ',2)+ //Modelo
               Completaesq(copy(NFSaidaCFOP.AsString,1,4),' ',4)+ //Cod. Fiscal
               Completa('',' ',6)+ //complemento
               Completa('',' ',9)+ //Cod. Contabil
               Completaesq('1700',' ',4)+ //Aliquota
               Completa('',' ',6)+ //Cod. Observacao
               Completa('',' ',24)+ //Observacao1
               Completa('',' ',24)+ //Observacao2
               Completa('',' ',24)+ //Observacao3
               Completa('',' ',24)+ //Observacao4
               Completa(copy(NFSaidaCLIENTE_UF.AsString,1,2),' ',2)+ //UF Cliente
               Completa('',' ',2)+ //UF Origem CTRC
               Completa('',' ',7)+ //Cod. Mun. CTRC
               completaesq(copy(valorcontabil,1,11),' ',11)+ //Valor Contabil
               completaesq(copy(basecalculoicms,1,11),' ',11)+ //Base de Calculo
               completaesq(copy(icmsdebidato,1,11),' ',11)+ //Imposto ICMS
               Completa('',' ',11)+ //Isentas ICMS
               Completa('',' ',11)+ //Outras ICMS
               Completa('',' ',11)+ //Valor Aux. ICMS
               Completa('',' ',11)+ //Base de IPI
               Completa('',' ',11)+ //Imposto IPI
               Completa('',' ',11)+ //Isentas IPI
               Completa('',' ',11)+ //Outras IPI
               Completa('',' ',11)+ //Valor Aux. IPI
               completaesq(copy(basecalculoicmssub,1,11),' ',11)+ //Base ICMS Retido
               completaesq(copy(icmssubretito,1,11),' ',11); //ICMS Retido
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

procedure TFrmExactusSintegra.gera_cab_nf_saida_itens;
var
  f: TextFile;
  sequencia : integer;
  aux, qtde, vlroutros, diaemissao, precounitario, desconto, dataescrituracao, valoritem,ncpf_cnpj,datasaida, datadocumento, valorcontabil, basecalculoicms, icmsdebidato, basecalculoicmssub, icmssubretito : string;
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

     sequencia := 1;
     pgb.Max := NFSaidaItens.RecordCount;
     NFSaidaItens.first;
     while NOT NFSaidaItens.EOF do
     begin
        datasaida := FormatDateTime('yyyy/mm/dd',NFSaidaItensDATA_SAIDA.Value);
        datasaida := StringReplace(datasaida,'/','',[rfreplaceall]);

        dataescrituracao := FormatDateTime('dd/mm/yyyy',NFSaidaItensDATA_SAIDA.Value);
        dataescrituracao := StringReplace(dataescrituracao,'/','',[rfreplaceall]);

        diaemissao := copy(dataescrituracao,1,2);

        qtde := FormatFloat('###,##0.00',NFSaidaItensQTDE.Value);
        qtde := StringReplace(qtde,'.','',[rfReplaceAll]);
        qtde := StringReplace(qtde,',','',[rfReplaceAll]);

        precounitario := FormatFloat('###,##0.00',NFSaidaItensPRECO_UNITARIO.Value);
        precounitario := StringReplace(precounitario,'.','',[rfReplaceAll]);
        precounitario := StringReplace(precounitario,',','',[rfReplaceAll]);

        desconto := FormatFloat('###,##0.00',NFSaidaItensDESCONTO.Value);
        desconto := StringReplace(desconto,'.','',[rfReplaceAll]);
        desconto := StringReplace(desconto,',','',[rfReplaceAll]);

        valoritem := FormatFloat('###,##0.00',NFSaidaItensVALOR_ITEM.Value);
        valoritem := StringReplace(valoritem,'.','',[rfReplaceAll]);
        valoritem := StringReplace(valoritem,',','',[rfReplaceAll]);

        vlroutros := FormatFloat('###,##0.00',NFSaidaItensVLR_OUTROS.Value);
        vlroutros := StringReplace(vlroutros,'.','',[rfReplaceAll]);
        vlroutros := StringReplace(vlroutros,',','',[rfReplaceAll]);

        basecalculoicms := FormatFloat('###,##0.00',NFSaidaItensBASE_ICMS.Value);
        basecalculoicms := StringReplace(basecalculoicms,'.','',[rfReplaceAll]);
        basecalculoicms := StringReplace(basecalculoicms,',','',[rfReplaceAll]);

        basecalculoicmssub := FormatFloat('###,##0.00',NFSaidaItensBASE_ICMS_SUB.Value);
        basecalculoicmssub := StringReplace(basecalculoicmssub,'.','',[rfReplaceAll]);
        basecalculoicmssub := StringReplace(basecalculoicmssub,',','',[rfReplaceAll]);

        icmsdebidato := FormatFloat('###,##0.00',NFSaidaItensICMS_DEBITADO.Value);
        icmsdebidato := StringReplace(icmsdebidato,'.','',[rfReplaceAll]);
        icmsdebidato := StringReplace(icmsdebidato,',','',[rfReplaceAll]);

        icmssubretito := FormatFloat('###,##0.00',NFSaidaItensIMPOSTO_RETIDO_ICMS_SUB.Value);
        icmssubretito := StringReplace(icmssubretito,'.','',[rfReplaceAll]);
        icmssubretito := StringReplace(icmssubretito,',','',[rfReplaceAll]);

        aux := completaesq(diaemissao,' ',2)+//Dia de Vencimento
               completaesq(copy(NFSaidaItensNUM_NF.AsString,1,9),' ',9)+//numero inicial
               completaesq(copy(NFSaidaItensNUM_NF.AsString,1,9),' ',9)+//numero final
               completaesq(copy(NFSaidaItensSERIE.AsString,1,3),' ',3)+//Serie
               completaesq('',' ',4)+//Especie
               completaesq('',' ',1)+//Lançamento
               completaesq(IntToStr(sequencia),' ',1)+//Ordem Iten NF
               completaesq('',' ',4)+//Codigo do Grupo
               completaesq('',' ',4)+//Codigo do SubGrupo
               completaesq('',' ',6)+//Codigo do Item
               completaesq(copy(qtde,1,9),' ',9)+//Qtde do Produto
               completaesq(copy(valoritem,1,11),' ',11)+//Valor total do produto
               completaesq(copy(desconto,1,11),' ',11)+//Desconto
               completaesq(copy(basecalculoicms,1,11),' ',11)+//Base de Calculo ICMS
               completaesq(copy(basecalculoicmssub,1,11),' ',11)+//Base de Calculo ICMS ST
               completaesq('',' ',11)+//Valor do IPI
               completaesq('1700',' ',5);//Aliquota do ICMS
               Writeln( f, AUX );
       sequencia := sequencia + 1;
       NFSaidaItens.Next;
       pgb.StepBy(1);
     end;

    CloseFile(f);
    Application.MessageBox('Arquivo de Itens de NF de Saída gerados com sucesso!','Aviso',mb_ok+mb_iconinformation);
  except
    Application.MessageBox('Erro ao gerar o arquivo de Itens NF de Saída','Aviso',mb_ok+mb_iconerror);
  end;

end;

procedure TFrmExactusSintegra.gera_cab_nf_entrada;
var
  f: TextFile;
  aux, insc_estadual, cpf_cnpj,dataentrada, aliquotaicms, ipidebitado, dataemissao, totalmercadorias, outrasdespesas,
  vlrseguro, CFOP, diaentrada, mesentrada, anoentrada, vlroutros, vlrfrete, numnf, valorcontabil, valormercadoria, basecalculoicms, icmsdebidato, basecalculoicmssub, icmssubretito : string;
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
        dataemissao := FormatDateTime('dd/mm/yyyy',NFEntradaDATA_NF.Value);
        dataemissao := StringReplace(dataemissao,'/','',[rfreplaceall]);

        dataentrada := dataemissao;
        diaentrada := copy(dataentrada,1,2);
        mesentrada := copy(dataentrada,3,2);
        anoentrada := copy(dataentrada,5,4);
        {dataentrada :=  FormatDateTime('dd/mm/yy',NFEntradaDATA_ENT.Value);
        dataentrada := StringReplace(dataentrada,'/','',[rfreplaceall]);}

        valorcontabil := FormatFloat('###,##0.00',NFEntradaVLR_TOTAL_NF.Value);
        valorcontabil := StringReplace(valorcontabil,'.','',[rfReplaceAll]);
        valorcontabil := StringReplace(valorcontabil,',','',[rfReplaceAll]);

        valormercadoria := FormatFloat('###,##0.00',NFEntradaVLR_PRODUTOS.Value);
        valormercadoria := StringReplace(valormercadoria,'.','',[rfReplaceAll]);
        valormercadoria := StringReplace(valormercadoria,',','',[rfReplaceAll]);

        basecalculoicms := FormatFloat('###,##0.00',NFEntradaVLR_BC_ICM.Value);
        basecalculoicms := StringReplace(basecalculoicms,'.','',[rfReplaceAll]);
        basecalculoicms := StringReplace(basecalculoicms,',','',[rfReplaceAll]);

        icmsdebidato := FormatFloat('###,##0.00',NFEntradaVLR_ICM.Value);
        icmsdebidato := StringReplace(icmsdebidato,'.','',[rfReplaceAll]);
        icmsdebidato := StringReplace(icmsdebidato,',','',[rfReplaceAll]);

        outrasdespesas := FormatFloat('###,##0.00',NFEntradaVLR_OUTRAS_DESP.Value);
        outrasdespesas := StringReplace(outrasdespesas,'.','',[rfReplaceAll]);
        outrasdespesas := StringReplace(outrasdespesas,',','',[rfReplaceAll]);

        vlrseguro := FormatFloat('###,##0.00',NFEntradaVLR_SEGURO.Value);
        vlrseguro := StringReplace(vlrseguro,'.','',[rfReplaceAll]);
        vlrseguro := StringReplace(vlrseguro,',','',[rfReplaceAll]);

        vlrfrete := FormatFloat('###,##0.00',NFEntradaVLR_FRETE.Value);
        vlrfrete := StringReplace(vlrfrete,'.','',[rfReplaceAll]);
        vlrfrete := StringReplace(vlrfrete,',','',[rfReplaceAll]);

        basecalculoicmssub := FormatFloat('###,##0.00',NFEntradaBASE_ICMS_SUB.Value);
        basecalculoicmssub := StringReplace(basecalculoicmssub,'.','',[rfReplaceAll]);
        basecalculoicmssub := StringReplace(basecalculoicmssub,',','',[rfReplaceAll]);

        icmssubretito := FormatFloat('###,##0.00',NFEntradaVLR_ICM_SUBS.Value);
        icmssubretito := StringReplace(icmssubretito,'.','',[rfReplaceAll]);
        icmssubretito := StringReplace(icmssubretito,',','',[rfReplaceAll]);

        ipidebitado := FormatFloat('###,##0.00',NFEntradaVLR_IPI.Value);
        ipidebitado := StringReplace(ipidebitado,'.','',[rfReplaceAll]);
        ipidebitado := StringReplace(ipidebitado,',','',[rfReplaceAll]);

        aliquotaicms := FormatFloat('###,##0.00',NFEntradaPERC_ICM.Value);
        aliquotaicms := StringReplace(aliquotaicms,'.','',[rfReplaceAll]);
        aliquotaicms := StringReplace(aliquotaicms,',','',[rfReplaceAll]);

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

        if (numnf = '8683') then
           numnf := '8683';

        //Substituição tributaria
        CFOP := NFEntradaNATUREZA.asstring;
        if ((NFEntradaNATUREZA.value = 1403) or (NFEntradaNATUREZA.value = 2403)) then
        begin
          aliquotaicms := '00.00';
          basecalculoicms := '0.00';
          icmsdebidato := '0.00';
          vlroutros := valorcontabil;
        end;

        aux := Completa(diaentrada,' ',2)+//Dia Entrada
               Completaesq(copy(NFEntradaPSA_CODIGO.AsString,1,14),' ',14)+//Cod. Fornecedor
               Completaesq(copy(NFEntradaNDOCTO.AsString,1,9),' ',9)+//Numero
               Completaesq(copy(RetiraZeros(trim(NFEntradaSERIE_NF.AsString)),1,3),' ',3)+//Série
               Completaesq('NF',' ',4)+//Especie
               Completa('',' ',2)+//Lancamento
               Completa('01',' ',2)+//Modelo
               Completa('',' ',11)+//branco
               Completa(copy(NFEntradaNATUREZA.AsString,1,4),' ',4)+//Cod. Fiscal
               Completa('',' ',16)+//Branco
               {Completa('',' ',6)+//Complemento
               Completa('',' ',9)+//Cód. Contabil}
               Completaesq(aliquotaicms,' ',4)+//Aliquota
               Completaesq(diaentrada,' ',2)+//Dia de Emissao
               Completaesq(mesentrada,' ',2)+//Mes de Emissao
               Completaesq(anoentrada,' ',4)+//Ano da Emissao
               Completa('',' ',136)+
               {Completa('',' ',3)+//Cod. Observacao
               Completa('',' ',24)+//Observacao 1
               Completa('',' ',24)+//Observacao 2
               Completa('',' ',24)+//Observacao 3
               Completa('',' ',24)+//Observacao 4}
               completa(copy(valorcontabil,1,11),' ',11)+//Valor Contabil
               completa(copy(basecalculoicms,1,11),' ',11)+//Base de Calculo ICMS
               completa(copy(icmsdebidato,1,11),' ',11)+//Imposto ICMS
               Completa('',' ',11)+//Isentas ICMS
               Completa('',' ',11)+//Outras ICMS
               Completa('',' ',11)+//Valor Aux ICMS
               Completa('',' ',11)+//Base IPI
               Completa('',' ',11)+//Imposto IPI
               Completa('',' ',11)+//Isentas IPI
               Completa('',' ',11)+//Outras IPI
               Completa('',' ',11)+//Vlr. Aux. IPI
               completa(copy(basecalculoicmssub,1,11),' ',11)+//Base ICMS Retido IPI
               completa(copy(icmssubretito,1,11),' ',11)+//ICMS Retido
               Completa('',' ',5)+//Aliq. Diferencial
               Completa('',' ',11)+//Base Diferencial
               Completa('',' ',44);//Chave NFE

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

procedure TFrmExactusSintegra.gera_cab_nf_entrada_itens;
var
  f: TextFile;
  aux, aliq_ipi, diaentrada, valor_ipi, reducao, baseipi, cpf_cnpj,dataentrada, datadocumento, desconto,
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
        dataentrada :=  FormatDateTime('dd/mm/yyyy',NFEntradasItensDATA_ENTRADA.Value);
        dataentrada := StringReplace(dataentrada,'/','',[rfreplaceall]);

        diaentrada := copy(dataentrada,1,2);

        qtde := FormatFloat('###,##0.00',NFEntradasItensQTDE.Value);
        qtde := StringReplace(qtde,'.','',[rfReplaceAll]);
        qtde := StringReplace(qtde,',','',[rfReplaceAll]);

        despacessorias:= FormatFloat('###,##0.00',NFEntradasItensDESP_ACESSORIAS.Value);
        despacessorias := StringReplace(despacessorias,'.','',[rfReplaceAll]);
        despacessorias := StringReplace(despacessorias,',','',[rfReplaceAll]);
        despacessorias := '0.00';

        precounitario := FormatFloat('###,##0.00',NFEntradasItensPRECO_UNITARIO.Value);
        precounitario := StringReplace(precounitario,'.','',[rfReplaceAll]);
        precounitario := StringReplace(precounitario,',','',[rfReplaceAll]);

        desconto := FormatFloat('###,##0.00',NFEntradasItensDESCONTO.Value);
        desconto := StringReplace(desconto,'.','',[rfReplaceAll]);
        desconto := StringReplace(desconto,',','',[rfReplaceAll]);

        desconto := FormatFloat('###,##0.00',NFEntradasItensDESCONTO.Value);
        desconto := StringReplace(desconto,'.','',[rfReplaceAll]);
        desconto := StringReplace(desconto,',','',[rfReplaceAll]);

        valoritem := FormatFloat('###,##0.00',NFEntradasItensVALOR_ITEM.Value);
        valoritem := StringReplace(valoritem,'.','',[rfReplaceAll]);
        valoritem := StringReplace(valoritem,',','',[rfReplaceAll]);

        aliq_ipi := FormatFloat('###,##0.00',NFEntradasItensALIQUOTA_IPI.Value);
        aliq_ipi := StringReplace(aliq_ipi,'.','',[rfReplaceAll]);
        aliq_ipi := StringReplace(aliq_ipi,',','',[rfReplaceAll]);

        valor_ipi := FormatFloat('###,##0.00',NFEntradasItensVALOR_IPI.Value);
        valor_ipi := StringReplace(valor_ipi,'.','',[rfReplaceAll]);
        valor_ipi := StringReplace(valor_ipi,',','',[rfReplaceAll]);


        basecalculoicms := FormatFloat('###,##0.00',NFEntradasItensBASE_ICMS.Value);
        basecalculoicms := StringReplace(basecalculoicms,'.','',[rfReplaceAll]);
        basecalculoicms := StringReplace(basecalculoicms,',','',[rfReplaceAll]);

        icmsdebidato := FormatFloat('###,##0.00',NFEntradasItensICMS_DEBITADO.Value);
        icmsdebidato := StringReplace(icmsdebidato,'.','',[rfReplaceAll]);
        icmsdebidato := StringReplace(icmsdebidato,',','',[rfReplaceAll]);

        basecalculoicmssub := FormatFloat('###,##0.00',NFEntradasItensBASE_ICMS_SUB.Value);
        basecalculoicmssub := StringReplace(basecalculoicmssub,'.','',[rfReplaceAll]);
        basecalculoicmssub := StringReplace(basecalculoicmssub,',','',[rfReplaceAll]);

        icmssubretito := FormatFloat('###,##0.00',NFEntradasItensVLR_ICM_SUBS_ITEM.Value);
        icmssubretito := StringReplace(icmssubretito,'.','',[rfReplaceAll]);
        icmssubretito := StringReplace(icmssubretito,',','',[rfReplaceAll]);

        reducao := FormatFloat('###,##0.00',NFEntradasItensREDUCAO.Value);
        reducao := StringReplace(reducao,'.','',[rfReplaceAll]);
        reducao := StringReplace(reducao,',','',[rfReplaceAll]);

        baseipi := FormatFloat('###,##0.00',NFEntradasItensBASE_IPI.Value);
        baseipi := StringReplace(baseipi,'.','',[rfReplaceAll]);
        baseipi := StringReplace(baseipi,',','',[rfReplaceAll]);

        baseipi := FormatFloat('###,##0.00',NFEntradasItensBASE_IPI.Value);
        baseipi := StringReplace(baseipi,'.','',[rfReplaceAll]);
        baseipi := StringReplace(baseipi,',','',[rfReplaceAll]);

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

        if (numnf = '4774') then
          numnf := '4774';

        //Substituição tributaria
        CFOP := NFEntradasItensCFOP.AsString;
        if (( CFOP = '1403') or (CFOP = '2403')) then
        begin
          aliquotaicms := '00.00';
          basecalculoicms := '0.00';
          icmsdebidato := '0.00';
         // icmssubretito := '0.00';
          vlroutros := valoritem;
        end
        else
          aliquotaicms := '17.00';

        aux := Completa(diaentrada,' ',2)+//Dia Entrada
               Completaesq(copy(NFEntradasItensPSA_CODIGO.AsString,1,14),' ',14)+//Codigo do Fornecedor
               Completaesq(copy(NFEntradasItensNUM_NF.AsString,1,9),' ',9)+//Numero
               Completaesq(copy(NFEntradasItensSERIE.AsString,1,3),' ',3)+//Serie
               Completa('',' ',4)+//Especie
               Completa('',' ',1)+//Lançamento
               Completaesq(copy(NFEntradasItensNUM_ITEM.AsString,1,3),' ',3)+//Ordem do Item na NF
               Completa('',' ',4)+//Código do Grupo
               Completa('',' ',4)+//Código do SubGrupo
               Completa('',' ',6)+//Código do Item
               completaesq(copy(qtde,1,9),' ',9)+//Quantidade Produto
               completaesq(copy(valoritem,1,11),' ',11)+//Valor total do produto
               completaesq(copy(desconto,1,11),' ',11)+//Desconto
               completaesq(copy(basecalculoicms,1,11),' ',11)+//Base Calculo ICMS
               completaesq(copy(basecalculoicmssub,1,11),' ',11)+//Base Calculo ICMS ST
               Completa('',' ',11)+//Valor IPI
               Completa('1700',' ',5);//Aliquota ICMS
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

procedure TFrmExactusSintegra.gera_produtos;
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

        aux := Completa('',' ',4)+//codigo grupo
               Completa('',' ',4)+//codigo subgrupo
               Completa(copy(qryProdutosCODIGO.value,1,6),' ',6)+//CODIGO produto
               Completa('',' ',8)+//codigo NCM
               Completa(copy(qryProdutosNOME.value,1,35),' ',35)+//nome produto
               Completa(copy(qryProdutosUNIDADE.value,1,3),' ',3)+//nome produto
               Completa('',' ',1)+//inteiro
               Completa('0',' ',1)+//CST ORIGEM
               Completa(copy(qryProdutosCST_TRIB.value,1,3),' ',2)+//nome produto
               Completa('17.00',' ',5)+//ALIQ ICM
               Completa('00.00',' ',5)+//ALIQ IPI
               Completa('00.00',' ',5)+//RED. BASE CALCULO
               Completa('00.00',' ',5)+// ALIQ PIS
               Completa('00.00',' ',5)+// ALIQ COFINS
               Completa(' ',' ',1)+//COMB. DERIVADOS
               Completa(' ',' ',4);//CÓD. SEFAZ SP
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

