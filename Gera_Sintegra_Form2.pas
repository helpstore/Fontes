unit Gera_Sintegra_Form2;

interface

uses
  Windows, Messages, SysUtils,  Variants, Classes, Graphics, Controls,
  Forms, Dialogs, StdCtrls, CheckLst, Mask, ACBrSintegra, ExtCtrls,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, cxDBEdit, DB, IBCustomDataSet, IBQuery, cxPropertiesStore,
  dxmdaset, DBCtrls, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue, Menus,
  cxButtons, cxLabel;

type
  TfrmGeraSintegra2 = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    Label7: TcxLabel;
    Label8: TcxLabel;
    GroupBox4: TGroupBox;
    CheckListBox1: TCheckListBox;
    SaveDialog1: TSaveDialog;
    Label1: TcxLabel;
    Label2: TcxLabel;
    Panel1: TPanel;
    Label9: TcxLabel;
    ComboBox4: TComboBox;
    ComboBox5: TComboBox;
    Button1: TcxButton;
    Label10: TcxLabel;
    MaskEdit1: TcxDateEdit;
    MaskEdit2: TcxDateEdit;
    edtCNPJ: TcxDBMaskEdit;
    ComboBox2: TComboBox;
    Label4: TcxLabel;
    ComboBox3: TComboBox;
    Label5: TcxLabel;
    Label3: TcxLabel;
    ComboBox1: TComboBox;
    edtIE: TcxDBMaskEdit;
    edtRazao: TcxDBMaskEdit;
    Label11: TcxLabel;
    edtCidade: TcxDBMaskEdit;
    Label12: TcxLabel;
    edtUF: TcxDBMaskEdit;
    UF: TcxLabel;
    edtFone: TcxDBMaskEdit;
    Label13: TcxLabel;
    edtLogradouro: TcxDBMaskEdit;
    Label14: TcxLabel;
    edtNumero: TcxMaskEdit;
    Label15: TcxLabel;
    edtBairro: TcxDBMaskEdit;
    Label16: TcxLabel;
    edtCep: TcxDBMaskEdit;
    Label17: TcxLabel;
    edtResponsavel: TcxMaskEdit;
    Label18: TcxLabel;
    REG_50: TIBQuery;
    REG_50SERIE: TIBStringField;
    REG_50DATA_DOCTO: TDateField;
    REG_50VALOR_CONTABIL: TFloatField;
    REG_50VALOR_MERCADORIAS: TFloatField;
    REG_50BASE_CALCULO_ICMS: TFloatField;
    REG_50ICMS_DEBITADO: TFloatField;
    REG_50ALIQUOTA_ICMS: TFloatField;
    REG_50CLIENTE_CPF_CNPJ: TIBStringField;
    REG_50CLIENTE_UF: TIBStringField;
    REG_50CLIENTE_IE: TIBStringField;
    REG_50TIPO_FRETE: TIBStringField;
    REG_50CONDICAO_VENDA: TIBStringField;
    REG_50DATA_DOCUMENTO: TDateField;
    REG_50CFOP: TIntegerField;
    REG_50BASE_CALCULO_ICMS_SUB: TFloatField;
    REG_50IMPOSTO_RETIDO_ICMS_SUB: TFloatField;
    REG_50NOTA_CANCELADA: TIBStringField;
    REG_50PSA_CODIGO: TIntegerField;
    REG_50MODELO: TIntegerField;
    stgMainGeraSintegra: TcxPropertiesStore;
    mtbCabecalho: TdxMemData;
    mtbCabecalhoCNPJ: TStringField;
    mtbCabecalhoRAZAO_SOCIAL: TStringField;
    mtbCabecalhoIE: TStringField;
    mtbCabecalhoLOGRADOURO: TStringField;
    mtbCabecalhoNUMERO: TStringField;
    mtbCabecalhoBAIRRO: TStringField;
    mtbCabecalhoCEP: TStringField;
    mtbCabecalhoCIDADE: TStringField;
    mtbCabecalhoUF: TStringField;
    mtbCabecalhoRESPONSAVEL: TStringField;
    DsCabecalho: TDataSource;
    mtbCabecalhoFONE: TStringField;
    REG_54: TIBQuery;
    REG_54SERIE: TIBStringField;
    REG_54DATA_MOVTO: TDateField;
    REG_54ICMS_DEBITADO: TFloatField;
    REG_54ALIQUOTA_ICMS: TFloatField;
    REG_54CFOP: TIntegerField;
    REG_54IMPOSTO_RETIDO_ICMS_SUB: TFloatField;
    REG_54NUM_ITEM: TIntegerField;
    REG_54COD_PRODUTO: TIBStringField;
    REG_54UNIDADE: TIBStringField;
    REG_54SIT_TRIB: TIBStringField;
    REG_54QTDE: TFloatField;
    REG_54PRECO_UNITARIO: TFloatField;
    REG_54DESP_ACESSORIAS: TFloatField;
    REG_54DESCONTO: TFloatField;
    REG_54VALOR_ITEM: TFloatField;
    REG_54BASE_ICMS: TFloatField;
    REG_54BASE_ICMS_SUB: TFloatField;
    REG_54PRODUTO_DESCRICAO: TIBStringField;
    REG_54PRODUTO_SIT_TRIB: TIBStringField;
    REG_54PRODUTO_FANTASIA: TIBStringField;
    REG_54MOVIMENTA_MERCADORIA: TIBStringField;
    REG_54INDICACAO_TRIBUTACAO: TIBStringField;
    REG_54ALIQUOTA_IPI: TFloatField;
    REG_54VALOR_IPI: TFloatField;
    REG_54BASE_IPI: TFloatField;
    REG_50EMISSORDOCUMENTO: TIBStringField;
    REG_50VLR_ISENTO: TFloatField;
    REG_50VLR_BASE: TFloatField;
    REG_50VLR_OUTROS: TFloatField;
    REG_50CODIGO_FISCAL: TIBStringField;
    REG_54CODIGO_FISCAL: TIBStringField;
    REG_54NUM_NF: TIBStringField;
    REG_60M: TIBQuery;
    REG_60MDATA_MOVIMENTO: TDateField;
    REG_60MNUM_SER_ECF: TIBStringField;
    REG_60MNUM_SEQ_ECF: TIBStringField;
    REG_60MCT_OO_ANT: TIntegerField;
    REG_60MCT_OO_FIN: TIntegerField;
    REG_60MCT_RED_Z_FIN: TIntegerField;
    REG_60MNUM_CONT_R_OO: TIntegerField;
    REG_60MVENDA_BRUTA: TFloatField;
    REG_60MTT_GERAL_FIN: TFloatField;
    REG_60A: TIBQuery;
    REG_60ADATA_MOVIMENTO: TDateField;
    REG_60ANUM_SER_ECF: TIBStringField;
    REG_60AALIQUOTA: TIBStringField;
    REG_60AVALOR: TFloatField;
    REG_60D: TIBQuery;
    REG_60I: TIBQuery;
    REG_60R: TIBQuery;
    REG_60DNUM_SER_ECF: TIBStringField;
    REG_60DDATA_MOVTO: TDateField;
    REG_60DCOD_PRODUTO: TIBStringField;
    REG_60DSIT_TRIB: TIBStringField;
    REG_60DQTDE: TFloatField;
    REG_60DVALOR: TFloatField;
    REG_60DALIQUOTA: TFloatField;
    REG_60DBASE_ICMS: TFloatField;
    REG_60DVALOR_ICMS: TFloatField;
    REG_60DPRD_DESCRICAO: TIBStringField;
    REG_60DPRD_UNIDADE: TIBStringField;
    REG_60INUM_SER_ECF: TIBStringField;
    REG_60IDATA_MOVTO: TDateField;
    REG_60ICOD_PRODUTO: TIBStringField;
    REG_60ISIT_TRIB: TIBStringField;
    REG_60IQTDE: TFloatField;
    REG_60IVALOR: TFloatField;
    REG_60IALIQUOTA: TFloatField;
    REG_60IBASE_ICMS: TFloatField;
    REG_60IVALOR_ICMS: TFloatField;
    REG_60IPRD_DESCRICAO: TIBStringField;
    REG_60IPRD_UNIDADE: TIBStringField;
    REG_60INUM_CUPOM: TIntegerField;
    REG_60IN_ITEM: TIntegerField;
    REG_60RNUM_SER_ECF: TIBStringField;
    REG_60RCOD_PRODUTO: TIBStringField;
    REG_60RSIT_TRIB: TIBStringField;
    REG_60RQTDE: TFloatField;
    REG_60RVALOR: TFloatField;
    REG_60RALIQUOTA: TFloatField;
    REG_60RBASE_ICMS: TFloatField;
    REG_60RVALOR_ICMS: TFloatField;
    REG_60RMESANO: TIBStringField;
    REG_53: TIBQuery;
    REG_53SERIE: TIBStringField;
    REG_53DATA_DOCTO: TDateField;
    REG_53VALOR_CONTABIL: TFloatField;
    REG_53VALOR_MERCADORIAS: TFloatField;
    REG_53ALIQUOTA_ICMS: TFloatField;
    REG_53CLIENTE_CPF_CNPJ: TIBStringField;
    REG_53CLIENTE_UF: TIBStringField;
    REG_53CLIENTE_IE: TIBStringField;
    REG_53TIPO_FRETE: TIBStringField;
    REG_53CONDICAO_VENDA: TIBStringField;
    REG_53DATA_DOCUMENTO: TDateField;
    REG_53CFOP: TIntegerField;
    REG_53BASE_CALCULO_ICMS_SUB: TFloatField;
    REG_53IMPOSTO_RETIDO_ICMS_SUB: TFloatField;
    REG_53NOTA_CANCELADA: TIBStringField;
    REG_53PSA_CODIGO: TIntegerField;
    REG_53VLR_OUTROS: TFloatField;
    REG_53VLR_ISENTO: TFloatField;
    REG_53VLR_BASE: TFloatField;
    REG_53EMISSORDOCUMENTO: TIBStringField;
    REG_53CODIGO_FISCAL: TIBStringField;
    REG_53SITUACAO: TIBStringField;
    REG_54PSA_CPF_CNPJ: TIBStringField;
    REG_74: TIBQuery;
    REG_74CODIGO: TIBStringField;
    REG_74QTDADE_2: TFloatField;
    REG_74VALOR_PRODUTO: TFloatField;
    REG_50NUM_NF: TIBStringField;
    REG_53NUM_NF: TIBStringField;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    wretorno: Integer;
    procedure GerarRegistro10;
    procedure GerarRegistro11;
    procedure GerarRegistro50;
    procedure GerarRegistro51;
    procedure GerarRegistro53;
    procedure GerarRegistro54;
    procedure GerarRegistro60M;
    procedure GerarRegistro60A;
    procedure GerarRegistro60D;
    procedure GerarRegistro60I;
    procedure GerarRegistro60R;
    procedure GerarRegistro70;
    procedure GerarRegistro74;

    procedure GerarRegistro10Dll;
    procedure GerarRegistro11Dll;
    procedure GerarRegistro50Dll;
    procedure GerarRegistro51Dll;
    procedure GerarRegistro53Dll;
    procedure GerarRegistro54Dll;
    procedure GerarRegistro60MDll;
    procedure GerarRegistro60ADll;
    procedure GerarRegistro60DDll;
    procedure GerarRegistro70Dll;


  public
    { Public declarations }
  end;

  //funcoes de inicializacao;
  function ACBr_SintegraAtivar: Integer; stdcall; external 'ACBr.dll';
  function ACBr_SintegraDesativar: Integer; stdcall; external 'ACBr.dll';

  //funcoes sintegra
  function ACBr_SintegraRegistro10(CNPJ,Inscricao,RazaoSocial,Cidade,Estado,
    Telefone,DataInicial,DataFinal,CodigoConvenio,NaturezaInformacoes,
    FinalidadeArquivo: PChar): Integer; stdcall; external 'ACBr.dll';
  function ACBr_SintegraRegistro11(Endereco,Numero,Bairro,Cep,Responsavel,
    Telefone: PChar): Integer; stdcall; external 'ACBr.dll';
  function ACBr_SintegraRegistro50(CPFCNPJ,Inscricao,DataDocumento,UF,Modelo,
    Serie,Numero,Cfop,EmissorDocumento,ValorContabil,BasedeCalculo,Icms,
    Isentas,Outras,Aliquota,Situacao: PChar): Integer; stdcall; external 'ACBr.dll';
  function ACBr_SintegraRegistro51(CPFCNPJ,Inscricao,DataDocumento,Estado,
    Serie,Numero,CFOP,ValorContabil,ValorIpi,ValorOutras,ValorIsentas,
    Situacao: PChar): Integer; stdcall; external 'ACBr.dll';
  function ACBr_SintegraRegistro53(CPFCNPJ,Inscricao,DataDocumento,Estado,
    Modelo,Serie,Numero,CFOP,Emitente,BaseST,IcmsRetido,Despesas,
    Situacao,CodigoAntecipacao: PChar): Integer; stdcall; external 'ACBr.dll';
  function ACBr_SintegraRegistro54(CPFCNPJ,Modelo,Serie,Numero,CFOP,CST,
    NumeroItem,Codigo,Descricao,Quantidade,Valor,ValorDescontoDespesa,
    BasedeCalculo,BaseST,ValorIpi,Aliquota: PChar): Integer; stdcall; external 'ACBr.dll';
  function ACBr_SintegraRegistro60M(Emissao,NumSerie,NumOrdem,ModeloDoc,
    CooInicial,CooFinal,CRZ,CRO,VendaBruta,ValorGT: PChar): Integer; stdcall; external 'ACBr.dll';
  function ACBr_SintegraRegistro60A(Emissao,NumSerie,Aliquota,
    Valor: PChar): Integer; stdcall; external 'ACBr.dll';
  function ACBr_SintegraRegistro70(CPFCNPJ,Inscricao,DataDocumento,UF,
    Modelo,Serie,SubSerie,Numero,Cfop,ValorContabil,
    BasedeCalculo,Icms,Isentas,Outras,CifFobOutros,
    Situacao: PChar): Integer; stdcall; external 'ACBr.dll';
  function ACBr_SintegraRegistro75(DataInicial,DataFinal,Codigo,NCM,
    Descricao,Unidade,AliquotaIpi,AliquotaICMS,Reducao,
    BaseST: PChar): Integer; stdcall; external 'ACBr.dll';
  function ACBr_SintegraGeraArquivo(Arquivo: PChar;
    VersaoValidador: Integer): Integer; stdcall; external 'ACBr.dll';

  //funcoes de informacao
  function ACBr_VersaoDll(var Versao: ShortString): Integer; stdcall;
    external 'ACBr.dll';
var
  frmGeraSintegra2: TfrmGeraSintegra2;

implementation

uses Aplicacoes_Form, Application_DM, Funcoes;

{$R *.dfm}

procedure TfrmGeraSintegra2.Button1Click(Sender: TObject);
begin
  if edtResponsavel.text='' then
  begin
    messagebox(0,'Informe o nome do responsável','Informação',mb_iconinformation+mb_taskmodal);
    edtResponsavel.setfocus;
    exit;
  end;

  try
    if MaskEdit1.date <= 0 then
    begin
       application.MessageBox('Defina uma data inicial','Erro',mb_iconstop);
       MaskEdit1.setfocus;
       exit;
    end;

    if MaskEdit2.date <= 0 then
    begin
       application.MessageBox('Defina uma data final','Erro',mb_iconstop);
       MaskEdit2.setfocus;
       exit;
    end;

    if MaskEdit2.date < MaskEdit1.date then begin
       application.MessageBox('Data Final não pode ser menor que a inicial','Erro',mb_iconstop);
       MaskEdit2.setfocus;
       exit;
       end
     else if MaskEdit1.date > date then begin
       application.MessageBox('Data Final não pode ser maior que a data atual','Erro',mb_iconstop);
       MaskEdit2.setfocus;
       exit;
    end;
  except
    application.MessageBox('Intervalo de datas inválido.','Erro',mb_iconstop);
    MaskEdit1.setfocus;
    exit;
  end;
  SaveDialog1.InitialDir:=ExtractFilePath(Application.ExeName);
  SaveDialog1.FileName:='Sintegra ';//- '+edtRazao.Text+'- '+IntToStr(Month(MaskEdit1.Date))+'/'+IntToStr(Year(MaskEdit1.Date));


 if SaveDialog1.Execute then
  begin
    try
      try
        if ComboBox4.ItemIndex=0 then
        begin
          ACBrSintegra.FileName :=SaveDialog1.FileName;
          ACBrSintegra.VersaoValidador:=TVersaoValidador(ComboBox5.ItemIndex);
          GerarRegistro10;
          GerarRegistro11;
          if CheckListBox1.Checked[0] then
            GerarRegistro50;
          if CheckListBox1.Checked[1] then
            GerarRegistro51;
          if CheckListBox1.Checked[2] then
            GerarRegistro53;
          if CheckListBox1.Checked[3] then
            GerarRegistro54;
          if CheckListBox1.Checked[4] then
            GerarRegistro60M;
          if CheckListBox1.Checked[5] then
            GerarRegistro60A;
          if CheckListBox1.Checked[6] then
            GerarRegistro60D;
          if CheckListBox1.Checked[7] then
            GerarRegistro60I;
          if CheckListBox1.Checked[8] then
            GerarRegistro60R;
          if CheckListBox1.Checked[9] then
            GerarRegistro70;
          ACBrSintegra.GeraArquivo;
        end
        else
        begin
          try
            wretorno:= ACBr_SintegraAtivar;
            if wretorno=1 then
            begin
              GerarRegistro10Dll;
              GerarRegistro11Dll;
              //geracao via dll
              if CheckListBox1.Checked[0] then
                GerarRegistro50Dll;
              if CheckListBox1.Checked[1] then
                GerarRegistro51Dll;
              if CheckListBox1.Checked[2] then
                GerarRegistro53Dll;
              if CheckListBox1.Checked[3] then
                GerarRegistro54Dll;
              if CheckListBox1.Checked[4] then
                GerarRegistro60MDll;
              if CheckListBox1.Checked[5] then
                GerarRegistro60ADll;
              if CheckListBox1.Checked[6] then
                GerarRegistro70Dll;
              ACBr_SintegraGeraArquivo(PChar(SaveDialog1.FileName),
                ComboBox5.ItemIndex);
            end
            else
            begin
             raise Exception.Create('Erro ao inicializar ACBrSintegra '+IntToStr(wretorno));
            end;
          finally
            ACBr_SintegraDesativar;
          end;
        end;
       MessageBox(0,'Geração concluída','Informação',mb_iconinformation+mb_taskmodal);
      except
        on e:Exception do
        begin
         Application.MessageBox(PChar('Erro ao gerar arquivo do sintegra!'+#13+
            'Erro: '+e.Message),'Erro',MB_ICONSTOP+MB_TASKMODAL);
        end;
      end;
    finally
    end;
  end;
end;

procedure TfrmGeraSintegra2.Button2Click(Sender: TObject);
var
  str: Shortstring;
begin
   if ComboBox4.ItemIndex=0 then
  begin
    ShowMessage(ACBrSintegra.Versao);
  end
  else
  begin
    ACBr_VersaoDll(str);
    ShowMessage(str);
  end;
end;

procedure TfrmGeraSintegra2.FormCreate(Sender: TObject);
begin
 CheckListBox1.Checked[0]:=True;
// CheckListBox1.Checked[2]:=True;
 CheckListBox1.Checked[3]:=True;
// CheckListBox1.Checked[4]:=True;
 {CheckListBox1.Checked[5]:=True;
 CheckListBox1.Checked[6]:=True;}
end;

procedure TfrmGeraSintegra2.GerarRegistro10;
var
  fone : string;
begin
  with ACBrSintegra do
  begin
    Registro10.CNPJ :=  NFe_RetiraCaracEspecial(edtCNPJ.Text);
    Registro10.Inscricao := NFe_RetiraCaracEspecial(edtIE.Text);
    Registro10.RazaoSocial := NFe_RetiraCaracEspecial(edtRazao.Text);
    Registro10.Cidade := NFe_RetiraCaracEspecial(edtCidade.Text);
    Registro10.Estado := NFe_RetiraCaracEspecial(edtUF.Text);
    Registro10.Telefone := copy(NFe_RetiraCaracEspecial(edtFone.Text),2,10);
    Registro10.DataInicial := MaskEdit1.Date;
    Registro10.DataFinal := MaskEdit2.Date;
    Registro10.CodigoConvenio := IntToStr(ComboBox1.ItemIndex + 1);
    Registro10.NaturezaInformacoes := IntToStr(ComboBox2.ItemIndex + 1);
    Registro10.FinalidadeArquivo := Copy(ComboBox3.Items[ComboBox3.ItemIndex], 1, 1);
  end;
end;

procedure TfrmGeraSintegra2.GerarRegistro10Dll;
begin
 {  wretorno:=ACBr_SintegraRegistro10(PChar(Edit2.Text),PChar(Edit3.Text),
    PChar('EMPRESA DE TESTE'),PChar('CIDADE DE TESTE'),PChar('MG'),
    PChar('3511111111'),PChar(MaskEdit1.Text),PChar(MaskEdit2.Text),
    PChar(IntToStr(ComboBox1.ItemIndex + 1)),PChar(IntToStr(ComboBox2.ItemIndex + 1)),
    PChar(Copy(ComboBox3.Items[ComboBox3.ItemIndex],1,1)));
  if wretorno<>1 then
    raise Exception.Create('Erro ao gerar registro 10!'+IntToStr(wretorno));  }
end;

procedure TfrmGeraSintegra2.GerarRegistro11;
begin
   with ACBrSintegra do
  begin
    Registro11.Endereco:= NFe_RetiraCaracEspecial(edtLogradouro.Text);
    Registro11.Numero:= NFe_RetiraCaracEspecial(edtNumero.Text) ;
    Registro11.Bairro:= NFe_RetiraCaracEspecial(edtBairro.Text);
    Registro11.Cep:= NFe_RetiraCaracEspecial(edtCep.Text);
    Registro11.Responsavel:= NFe_RetiraCaracEspecial(edtResponsavel.Text);
    Registro11.Telefone:= copy(NFe_RetiraCaracEspecial(edtFone.Text),2,10);
  end;
end;

procedure TfrmGeraSintegra2.GerarRegistro11Dll;
begin
  { wretorno:=ACBr_SintegraRegistro11('ENDERECO DA EMPRESA','1','BAIRRO DA EMPRESA',
    '11.111-111','RESPONSAVEL','1111111111');
  if wretorno<>1 then
    raise Exception.Create('Erro ao gerar registro 11!'+IntToStr(wretorno));}
end;

procedure TfrmGeraSintegra2.GerarRegistro50;
var
  IE, modelo, Situacao, cpf_cnpj : string;
  aliquota : integer;
  wregistro50: TRegistro50;
  valorbasecalc, valoricms : real;
begin
  REG_50.Close;
  REG_50.ParamByName('cnpj').value := dmApp.cnpj;
  REG_50.ParamByName('Data1').value := MaskEdit1.Date;
  REG_50.ParamByName('Data2').value := MaskEdit2.Date;
  REG_50.Open;
  REG_50.FetchAll;
  REG_50.First;


  with ACBrSintegra do
  begin
    while not REG_50.Eof do
    begin
      cpf_cnpj := REG_50CLIENTE_CPF_CNPJ.AsString;

      IE := REG_50CLIENTE_IE.Value;
      IE := StringReplace(IE,'.','',[rfreplaceall]);
      IE := StringReplace(IE,',','',[rfreplaceall]);
      IE := StringReplace(IE,'-','',[rfreplaceall]);
      IE := StringReplace(IE,'/','',[rfreplaceall]);
      if ((Length(trim(cpf_cnpj))< 14)) then
      begin
        if not ChkInscEstadual(IE,REG_50CLIENTE_UF.AsString) then
          IE := 'ISENTO';
      end;

      if (trim(IE) = '') then
        IE := 'ISENTO';

      {IF (IE = 'ISENTO') THEN
        IE := '283330112' ;}
      //if (REG_50MODELO.AsInteger = 0) then
      modelo := '1';

      if (REG_50NOTA_CANCELADA.Value = 'S') then
        situacao := 'S'  //cancelada
      else
        situacao := 'N'; //normal

      wregistro50:=TRegistro50.Create;
      wregistro50.CPFCNPJ               :=      NFe_RetiraCaracEspecial(cpf_cnpj);
      wregistro50.Inscricao             :=      NFe_RetiraCaracEspecial(IE) ;
      wregistro50.DataDocumento         :=      REG_50DATA_DOCUMENTO.Value;
      wregistro50.UF                    :=      REG_50CLIENTE_UF.AsString;
      wregistro50.Modelo                :=      trim(REG_50CODIGO_FISCAL.value);
      wregistro50.Serie     :=         '1';
      wregistro50.Numero    :=        RETIRAZEROS(TRIM(SoNumeros(REG_50NUM_NF.value)));
      wregistro50.Cfop:=          REG_50CFOP.AsString;
      wregistro50.EmissorDocumento:=  REG_50EMISSORDOCUMENTO.Value;
      wregistro50.ValorContabil := REG_50VALOR_CONTABIL.Value;
      wregistro50.BasedeCalculo := REG_50BASE_CALCULO_ICMS.Value;
      wregistro50.Icms:=          REG_50ICMS_DEBITADO.Value;
      wregistro50.Isentas := REG_50VLR_ISENTO.Value;;
      wregistro50.Outras:= REG_50VLR_OUTROS.value;
      wregistro50.Aliquota:=     REG_50ALIQUOTA_ICMS.AsInteger;
      wregistro50.Situacao:= situacao;
      ACBrSintegra.Registros50.Add(wregistro50);
      REG_50.next;
    end
  end;
end;

procedure TfrmGeraSintegra2.GerarRegistro50Dll;
begin
   wretorno:=ACBr_SintegraRegistro50('43.214.055/0042-85','349016872110',
    PChar(MaskEdit1.Text),'SP','1','1','123','2.102','T','1500,00','1500,00',
    '270,00','0','0','18','N');
  if wretorno<>1 then
    raise Exception.Create('Erro ao gerar registro 50!'+IntToStr(wretorno));
end;

procedure TfrmGeraSintegra2.GerarRegistro51;
begin

end;

procedure TfrmGeraSintegra2.GerarRegistro51Dll;
begin

end;

procedure TfrmGeraSintegra2.GerarRegistro53;
var
  wregistro53: TRegistro53;
begin
    REG_53.Close;
    REG_53.ParamByName('cnpj').value := dmApp.cnpj;
    REG_53.ParamByName('Data1').value := MaskEdit1.Date;
    REG_53.ParamByName('Data2').value := MaskEdit2.Date;
    REG_53.Open;
    REG_53.FetchAll;
    REG_53.First;

    while not REG_53.eof do
    begin
      wregistro53 := TRegistro53.Create;
      wregistro53.CPFCNPJ:=               NFe_RetiraCaracEspecial(REG_53CLIENTE_CPF_CNPJ.Value);
      wregistro53.Inscricao :=               trim(REG_53CLIENTE_IE.value);
      wregistro53.Serie := NFe_RetiraCaracEspecial(REG_53SERIE.value);
      wregistro53.Modelo := trim(REG_53CODIGO_FISCAL.value);
      wregistro53.Numero:=               RETIRAZEROS(TRIM(SoNumeros(REG_53NUM_NF.value)));
      wregistro53.DataDocumento :=       REG_53DATA_DOCTO.value;
      wregistro53.Estado :=       REG_53CLIENTE_UF.value;
      wregistro53.Cfop:=                  REG_53CFOP.AsString;
      wregistro53.Emitente:=                  REG_53EMISSORDOCUMENTO.AsString;
      wregistro53.BaseST:=                REG_53BASE_CALCULO_ICMS_SUB.value;
      wregistro53.IcmsRetido:=                REG_53IMPOSTO_RETIDO_ICMS_SUB.value;
      wregistro53.Despesas:=                0;
      wregistro53.Situacao:=                REG_53SITUACAO.value;
      wregistro53.CodigoAntecipacao:=                '';
      ACBrSintegra.Registros53.Add(wregistro53);
      REG_53.Next;
    end;
end;

procedure TfrmGeraSintegra2.GerarRegistro53Dll;
begin

end;

procedure TfrmGeraSintegra2.GerarRegistro54;
var
  wregistro54: TRegistro54;
  wregistro75: TRegistro75;
  teste: string;
begin
    REG_54.Close;
    REG_54.ParamByName('cnpj').value := dmApp.cnpj;
    REG_54.ParamByName('Data1').value := MaskEdit1.Date;
    REG_54.ParamByName('Data2').value := MaskEdit2.Date;
    REG_54.Open;
    REG_54.FetchAll;
    REG_54.First;

    while not REG_54.eof do
    begin
      if ('6446' = REG_54NUM_NF.AsString) then
        teste := '';

      wregistro54 := TRegistro54.Create;
      wregistro54.CPFCNPJ:=               NFe_RetiraCaracEspecial(REG_54PSA_CPF_CNPJ.Value);
      wregistro54.Modelo :=               trim(REG_54CODIGO_FISCAL.value);
      wregistro54.Serie:=                 NFe_RetiraCaracEspecial(REG_54SERIE.value);
      wregistro54.Numero:=               RETIRAZEROS(TRIM(SoNumeros(REG_54NUM_NF.value)));
      wregistro54.Cfop:=                  REG_54CFOP.AsString;
      wregistro54.CST:=                   REG_54SIT_TRIB.Value;
      wregistro54.NumeroItem:=            REG_54NUM_ITEM.Value;
      wregistro54.Codigo:=                NFe_RetiraCaracEspecial(REG_54COD_PRODUTO.Value);
      wregistro54.Descricao:=             NFe_RetiraCaracEspecial(REG_54PRODUTO_DESCRICAO.Value);
      wregistro54.Quantidade :=           REG_54QTDE.Value;
      wregistro54.Valor:=                 REG_54VALOR_ITEM.Value;
      wregistro54.ValorDescontoDespesa:= (REG_54DESCONTO.Value * REG_54QTDE.value);
      wregistro54.BasedeCalculo :=        REG_54BASE_ICMS.Value;
      wregistro54.BaseST:=                REG_54BASE_ICMS_SUB.value;
      wregistro54.ValorIpi :=              REG_54VALOR_IPI.value;
      wregistro54.Aliquota :=              REG_54ALIQUOTA_ICMS.value;
      ACBrSintegra.Registros54.Add(wregistro54);

      wregistro75:=TRegistro75.Create;
      wregistro75.Codigo:=        wregistro54.Codigo;
      wregistro75.AliquotaICMS:=  wregistro54.Aliquota;
      wregistro75.DataInicial:=   ACBrSintegra.Registro10.DataInicial;
      wregistro75.DataFinal:=     ACBrSintegra.Registro10.DataFinal;
      wregistro75.Descricao:=     NFe_RetiraCaracEspecial(REG_54PRODUTO_DESCRICAO.Value);
      wregistro75.Unidade:=       NFe_RetiraCaracEspecial(REG_54UNIDADE.Value);
      ACBrSintegra.Registros75.Add(wregistro75);
      REG_54.Next;
    end;

end;

procedure TfrmGeraSintegra2.GerarRegistro54Dll;
begin
   wretorno:=ACBr_SintegraRegistro54('43.214.055/0042-85','1','1','123','2.102',
    '000','1','0000000000017','PRODUTO DE TESTE','1,000','1500,00','0','1500,00',
    '0','0','18');
  if wretorno<>1 then
    raise Exception.Create('Erro ao gerar registro 54!'+IntToStr(wretorno));

  //para cada 54 gerado um 75 deve ser informado
  wretorno:=ACBr_SintegraRegistro75(PChar(MaskEdit1.Text),PChar(MaskEdit2.Text),
    '0000000000017','','PRODUTO DE TESTE','UN','0','18','0','0');
  if wretorno<>1 then
    raise Exception.Create('Erro ao gerar registro 75!'+IntToStr(wretorno)); 
end;

procedure TfrmGeraSintegra2.GerarRegistro60A;
var
  wregistro60A: TRegistro60A;
begin
  REG_60A.Close;
  REG_60A.ParamByName('cnpj').value := dmApp.cnpj;
  REG_60A.ParamByName('Data1').value := MaskEdit1.Date;
  REG_60A.ParamByName('Data2').value := MaskEdit2.Date;
  REG_60A.Open;
  REG_60A.FetchAll;
  REG_60A.First;

  while not REG_60A.eof do
  begin
    wregistro60A:=TRegistro60A.Create;
    wregistro60A.Emissao:= REG_60ADATA_MOVIMENTO.value;
    wregistro60A.NumSerie:= REG_60ANUM_SER_ECF.value;
    wregistro60A.StAliquota:= REG_60AALIQUOTA.value;
    wregistro60A.Valor:= REG_60AVALOR.value ;
    ACBrSintegra.Registros60A.Add(wregistro60A);
    REG_60A.Next;
  end;
end;

procedure TfrmGeraSintegra2.GerarRegistro60ADll;
begin
   wretorno:=ACBr_SintegraRegistro60A(PChar(MaskEdit1.Text),
    '000000987456','F','500,00');
  if wretorno<>1 then
    raise Exception.Create('Erro ao gerar registro 60A!'+IntToStr(wretorno));

  wretorno:=ACBr_SintegraRegistro60A(PChar(MaskEdit1.Text),
  '000000987456','I','550,00');
  if wretorno<>1 then
    raise Exception.Create('Erro ao gerar registro 60A!'+IntToStr(wretorno));

  wretorno:=ACBr_SintegraRegistro60A(PChar(MaskEdit1.Text),
  '000000987456','1800','1000,35');
  if wretorno<>1 then
    raise Exception.Create('Erro ao gerar registro 60A!'+IntToStr(wretorno));

  //outro ecf
  wretorno:=ACBr_SintegraRegistro60A(PChar(MaskEdit1.Text),
  '000000777777','F','100,00');
  if wretorno<>1 then
    raise Exception.Create('Erro ao gerar registro 60A!'+IntToStr(wretorno));

  wretorno:=ACBr_SintegraRegistro60A(PChar(MaskEdit1.Text),
  '000000777777','I','100,00');
  if wretorno<>1 then
    raise Exception.Create('Erro ao gerar registro 60A!'+IntToStr(wretorno));

  wretorno:=ACBr_SintegraRegistro60A(PChar(MaskEdit1.Text),
  '000000777777','1800','100,00');
  if wretorno<>1 then
    raise Exception.Create('Erro ao gerar registro 60A!'+IntToStr(wretorno)); 
end;

procedure TfrmGeraSintegra2.GerarRegistro60D;
var
  wregistro60D: TRegistro60D;
  wregistro75: TRegistro75;
  ST : STRING;
begin
  REG_60D.Close;
  REG_60D.ParamByName('cnpj').value := dmApp.cnpj;
  REG_60D.ParamByName('Data1').value := MaskEdit1.Date;
  REG_60D.ParamByName('Data2').value := MaskEdit2.Date;
  REG_60D.Open;
  REG_60D.FetchAll;
  REG_60D.First;

  while not REG_60D.eof do
  begin
    if (REG_60DSIT_TRIB.value = '') then
     ST := FormatFloat('#0.00',REG_60DALIQUOTA.Value)
    else
     st := REG_60DSIT_TRIB.value;

    st:= StringReplace(st,'.','',[rfReplaceAll]);
    wregistro60D:=TRegistro60D.Create;
    wregistro60D.Emissao:= REG_60DDATA_MOVTO.value;
    wregistro60D.NumSerie:= REG_60DNUM_SER_ECF.value;
    wregistro60D.Codigo:= REG_60DCOD_PRODUTO.value;
    wregistro60D.Quantidade:= REG_60DQTDE.value;
    wregistro60D.Valor:= REG_60DVALOR.Value;
    wregistro60D.BaseDeCalculo:= REG_60DBASE_ICMS.value;
    wregistro60D.StAliquota:= ST;
    wregistro60D.ValorIcms:= REG_60DVALOR_ICMS.value;
    ACBrSintegra.Registros60D.Add(wregistro60D);

    wregistro75:=TRegistro75.Create;
    wregistro75.Codigo:=wregistro60D.Codigo;
    wregistro75.AliquotaICMS:= REG_60DALIQUOTA.Value;
    wregistro75.DataInicial:=  ACBrSintegra.Registro10.DataInicial;
    wregistro75.DataFinal:=    ACBrSintegra.Registro10.DataFinal;
    wregistro75.Descricao:=  REG_60DPRD_DESCRICAO.value;
    wregistro75.Unidade:= REG_60DPRD_UNIDADE.value;
    ACBrSintegra.Registros75.Add(wregistro75);

    REG_60D.Next;
  end;
end;

procedure TfrmGeraSintegra2.GerarRegistro60DDll;
begin

end;

procedure TfrmGeraSintegra2.GerarRegistro60M;
var
  wregistro60M: TRegistro60M;
begin

  REG_60M.Close;
  REG_60M.ParamByName('cnpj').value := dmApp.cnpj;
  REG_60M.ParamByName('Data1').value := MaskEdit1.Date;
  REG_60M.ParamByName('Data2').value := MaskEdit2.Date;
  REG_60M.Open;
  REG_60M.FetchAll;
  REG_60M.First;

  while not REG_60M.eof do
  begin
    wregistro60M:=TRegistro60M.Create;
    wregistro60M.Emissao:= REG_60MDATA_MOVIMENTO.value;
    wregistro60M.NumSerie:= REG_60MNUM_SER_ECF.Value;
    wregistro60M.NumOrdem:= StrToInt(trim(REG_60MNUM_SEQ_ECF.value));
    wregistro60M.ModeloDoc:= '2D';
    wregistro60M.CooInicial:= REG_60MCT_OO_ANT.AsInteger;
    wregistro60M.CooFinal:= REG_60MCT_OO_FIN.AsInteger ;
    wregistro60M.CRZ := REG_60MCT_RED_Z_FIN.AsInteger ;
    wregistro60M.CRO:= REG_60MNUM_CONT_R_OO.AsInteger;
    wregistro60M.VendaBruta:= REG_60MVENDA_BRUTA.Value;
    wregistro60M.ValorGT := REG_60MTT_GERAL_FIN.value;
    ACBrSintegra.Registros60M.Add(wregistro60M);
    REG_60M.Next;
  end;
end;

procedure TfrmGeraSintegra2.GerarRegistro60MDll;
begin
   wretorno:=ACBr_SintegraRegistro60M(PChar(MaskEdit1.Text),
    '000000987456','1','2D','1000','1050','1','1','2050,35','10000,00');
  if wretorno<>1 then
    raise Exception.Create('Erro ao gerar registro 60M!'+IntToStr(wretorno));

  wretorno:=ACBr_SintegraRegistro60M(PChar(MaskEdit1.Text),
    '000000777777','2','2D','2000','2010','1','1','300,00','15000,00');
  if wretorno<>1 then
    raise Exception.Create('Erro ao gerar registro 60M!'+IntToStr(wretorno));
end;

procedure TfrmGeraSintegra2.GerarRegistro70;
begin

end;


procedure TfrmGeraSintegra2.GerarRegistro70Dll;
begin

end;

procedure TfrmGeraSintegra2.FormShow(Sender: TObject);
begin
  mtbCabecalho.Open;
  mtbCabecalho.Edit;
  mtbCabecalhoCNPJ.Value := dmApp.cnpj;
  mtbCabecalhoIE.value := dmApp.IE;
  mtbCabecalhoRAZAO_SOCIAL.Value := dmapp.Nome;
  mtbCabecalhoCIDADE.Value := dmApp.CIDADE;
  mtbCabecalhoUF.Value := dmapp.UF;
  mtbCabecalhoFONE.Value := dmApp.FONE;
  mtbCabecalhoLOGRADOURO.Value := dmapp.ENDER;
  mtbCabecalhoBAIRRO.value := dmApp.BAIRRO;
  mtbCabecalhoCEP.value := dmApp.CEP;
  ComboBox1.ItemIndex := 2;
  ComboBox2.ItemIndex := 2;
  ComboBox3.ItemIndex := 0;
end;


procedure TfrmGeraSintegra2.GerarRegistro60I;
var
  wregistro60I: TRegistro60I;
  ST : STRING;
begin
  REG_60I.Close;
  REG_60I.ParamByName('cnpj').value := dmApp.cnpj;
  REG_60I.ParamByName('Data1').value := MaskEdit1.Date;
  REG_60I.ParamByName('Data2').value := MaskEdit2.Date;
  REG_60I.Open;
  REG_60I.FetchAll;
  REG_60I.First;

  while not REG_60I.eof do
  begin
    if (REG_60ISIT_TRIB.value = '') then
     ST := FormatFloat('#0.00',REG_60IALIQUOTA.Value)
    else
     st := REG_60ISIT_TRIB.value;

    st:= StringReplace(st,'.','',[rfReplaceAll]);
    wregistro60i := TRegistro60I.Create;
    wregistro60i.Emissao:= REG_60IDATA_MOVTO.value;
    wregistro60i.NumSerie:= REG_60INUM_SER_ECF.value;
    wregistro60I.ModeloDoc:= '2D';
    wregistro60i.Cupom:= REG_60INUM_CUPOM.AsString;
    wregistro60i.Item:= REG_60IN_ITEM.AsInteger;
    wregistro60i.Codigo:= REG_60ICOD_PRODUTO.VALUE;
    wregistro60i.Quantidade:= REG_60IQTDE.value;
    wregistro60i.Valor:= REG_60IVALOR.Value;
    wregistro60i.BaseDeCalculo:= REG_60IBASE_ICMS.value;
    wregistro60i.StAliquota:= ST;
    wregistro60i.ValorIcms:= REG_60IVALOR_ICMS.value;
    ACBrSintegra.Registros60I.Add(wregistro60i);

   { wregistro75:=TRegistro75.Create;
    wregistro75.Codigo:=wregistro60D.Codigo;
    wregistro75.AliquotaICMS:= REG_60DALIQUOTA.Value;
    wregistro75.DataInicial:=  ACBrSintegra.Registro10.DataInicial;
    wregistro75.DataFinal:=    ACBrSintegra.Registro10.DataFinal;
    wregistro75.Descricao:=  REG_60DPRD_DESCRICAO.value;
    wregistro75.Unidade:= REG_60DPRD_UNIDADE.value;
    ACBrSintegra.Registros75.Add(wregistro75);}

    REG_60i.Next;
  end;
end;

procedure TfrmGeraSintegra2.GerarRegistro60R;
var
  wregistro60r: TRegistro60R;
  ST : STRING;
begin
  REG_60r.Close;
  REG_60r.ParamByName('cnpj').value := dmApp.cnpj;
  REG_60r.ParamByName('Data1').value := MaskEdit1.Date;
  REG_60r.ParamByName('Data2').value := MaskEdit2.Date;
  REG_60r.Open;
  REG_60r.FetchAll;
  REG_60r.First;

  while not REG_60r.eof do
  begin
    if (REG_60rSIT_TRIB.value = '') then
     ST := FormatFloat('#0.00',REG_60rALIQUOTA.Value)
    else
     st := REG_60rSIT_TRIB.value;

    st:= StringReplace(st,'.','',[rfReplaceAll]);
    wregistro60R := TRegistro60R.Create;
    wregistro60R.MesAno:= REG_60RMESANO.Value;
    wregistro60R.Codigo:= REG_60rCOD_PRODUTO.VALUE;
    wregistro60R.Qtd:= REG_60rQTDE.value;
    wregistro60R.Valor:= REG_60rVALOR.Value;
    wregistro60R.BaseDeCalculo:= REG_60rBASE_ICMS.value;
    wregistro60R.Aliquota := ST;
    ACBrSintegra.Registros60R.Add(wregistro60R);
    REG_60R.Next;
  end;
end;

procedure TfrmGeraSintegra2.GerarRegistro74;
var
  wregistro74: TRegistro74;
  teste: string;
begin
    REG_74.Close;
    REG_74.ParamByName('cnpj').value := dmApp.cnpj;
    REG_74.Open;
    REG_74.FetchAll;
    REG_74.First;

    while not REG_74.eof do
    begin
      wregistro74 := TRegistro74.Create;
      wregistro74.Data :=  MaskEdit2.Date;;
      wregistro74.Codigo := copy(REG_74CODIGO.value,1,14);
      ACBrSintegra.Registros74.Add(wregistro74);
      REG_74.Next;
    end;
end;

end.
