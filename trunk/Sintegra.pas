 unit Sintegra;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, DB, ADODB, Mask, DBCtrls, Grids,
  DBGrids, DBTables, dxCntner, dxEditor, dxEdLib, dxExEdtr, 
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, Menus, cxButtons, cxLabel;

type
  TFrmSintegra = class(TForm)
    Memo1: TMemo;
    Panel1: TPanel;
    PC: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    BtnSalvar: TcxButton;
    BtnSair: TcxButton;
    ANDA: TProgressBar;
    LblTabela: TcxLabel;
    Reg10: TCheckBox;
    Reg11: TCheckBox;
    reg50: TCheckBox;
    reg51: TCheckBox;
    reg53: TCheckBox;
    reg54: TCheckBox;
    reg55: TCheckBox;
    reg60m: TCheckBox;
    reg60a: TCheckBox;
    reg60d: TCheckBox;
    reg60i: TCheckBox;
    reg60r: TCheckBox;
    reg61: TCheckBox;
    reg70: TCheckBox;
    reg71: TCheckBox;
    reg74: TCheckBox;
    reg75: TCheckBox;
    reg90: TCheckBox;
    DATASOURCE: TDataSource;
    TabSheet3: TTabSheet;
    DBGrid1: TDBGrid;
    EdEmpresa: TdxEdit;
    Label8: TcxLabel;
    Label1: TcxLabel;
    EDENDERECO: TdxEdit;
    Label2: TcxLabel;
    EDFONE: TdxEdit;
    Label3: TcxLabel;
    EDFAX: TdxEdit;
    Label4: TcxLabel;
    EDCNPJ: TdxEdit;
    Label5: TcxLabel;
    EDIE: TdxEdit;
    edDtInicial: TdxDateEdit;
    Label6: TcxLabel;
    Label7: TcxLabel;
    edDtFinal: TdxDateEdit;
    Panel2: TPanel;
    LblStatus: TcxLabel;
    RzBitBtn1: TcxButton;
    RzBitBtn2: TcxButton;
    ProgressBar1: TProgressBar;
    Function  TrataNum ( Valor: Real ): String;

    Procedure Trata_SIntegra_Str(TempStr: String; Origem: String);

    procedure BtnSalvarClick(Sender: TObject);
    procedure BtnSairClick(Sender: TObject);

    procedure PRegistro10 ;
    procedure PRegistro11 ;
    procedure PRegistro50 ;
    procedure PRegistro54 ;
    procedure PRegistro90 ;
    procedure PRegistro53 ;
    procedure PRegistro55 ;
    procedure PRegistro60 ;
    procedure PRegistro60a;
    procedure PRegistro60r;
    procedure PRegistro61 ;
    procedure PRegistro70 ;
    procedure PRegistro71 ;
    procedure PRegistro74 ;
    procedure PRegistro75 ;
    procedure PRegistro51 ;
    procedure PRegistro60d;
    procedure PRegistro60i;
    procedure FormShow(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmSintegra: TFrmSintegra;
  CGC:           String ;
  IE:            String ;              //Sem dígito verificador
  UF:            String ;

  Logradouro     :String;  //
  Numero, Complemento, Bairro, Cep, Contato, Fone, ModeloNf: String;

implementation

uses Application_DM, Relatorios_DM;

  Procedure Inicia_SIntegra; stdcall; external 'SIntegra32Dll.dll';
  Procedure Finaliza_SIntegra; stdcall; external 'SIntegra32Dll.DLL';
  Function Registro10(CGC_MF, Insc_Est, Nome_Contribuinte, Municipio, UF,
                      Fax, Data_Inicial, Data_Final, Cod_Convenio, Cod_Operacao,
                      Cod_Finalidade: ShortString): ShortString; stdcall; external 'SIntegra32Dll.DLL';
  Function Registro11(Logradouro, Nro, Complemento, Bairro, CEP,
                      Nome_Contato, Telefone: ShortString): ShortString; stdcall; external 'SIntegra32Dll.DLL';
  Function Registro50(CNPJ, Insc_Est, Data_Emissao_Recebimento, UF, Modelo, Serie,
                      Nro, CFOP, Emitente, Valor_Total, Base_ICMS, Valor_ICMS, Isenta, Outras,
                      Aliquota, Situacao: ShortString): ShortString; stdcall; external 'SIntegra32Dll.DLL';
  Function Registro51(CNPJ, Insc_Est, Data_Emissao_Recebimento, UF, Serie,
                      Nro, CFOP, Valor_Total, Valor_IPI, Isenta_IPI, Outras_IPI,
                      Brancos, Situacao: ShortString): ShortString; stdcall; external 'SIntegra32Dll.DLL';
  Function Registro53(CNPJ, Insc_Est, Data_Emissao_Recebimento, UF, Modelo, Serie,
                      Nro, CFOP, Emitente, Base_ICMS, ICMS_Retido, Despesas_Acessorias,
                      Situacao, Brancos: ShortString): ShortString; stdcall; external 'SIntegra32Dll.DLL';
  Function Registro54(CNPJ, Modelo, Serie, Nro, CFOP, CST, Nro_Item,
                      Cod_Produto_Servico, Quantidade, Valor_Produto, Valor_Desconto,
                      Base_ICMS, Base_ICMS_S_Trib, Valor_IPI,
                      Aliquota_ICMS: ShortString): ShortString; stdcall; external 'SIntegra32Dll.DLL';
  Function Registro55(CNPJ, Insc_Est, Data_GNRE, UF_Substituto, UF_Favorecida, Banco_GNRE,
                      Agencia_GNRE, Nro_GNRE, Valor_GNRE, Data_Vencimento_ICMS, Mes_Ano_Ref,
                      Nro_Convenio: ShortString): ShortString; stdcall; external 'SIntegra32Dll.DLL';
  Function Registro60Mestre(Data_Emissao, Nro_Serie_Eqp, Nro_Ordem_Eqp, Modelo_Doc,
                            Nro_Contador_Inicio, Nro_Contador_Fim, Nro_Contador_Z,
                            Contador_Reinicio, Valor_Venda_Bruta,
                            Valor_Total_Geral, Brancos: ShortString): ShortString; stdcall; external 'SIntegra32Dll.DLL';
  Function Registro60Analitico(Data_Emissao, Nro_Serie_Eqp, S_Trib_Aliquota, Valor_TParcial,
                               Brancos: ShortString): ShortString; stdcall; external 'SIntegra32Dll.DLL';
  Function Registro60ResumoDiario(Data_Emissao, Nro_Serie_Eqp, Cod_Produto, Quantidade,
                                  Valor_Produto, Base_ICMS, S_Trib_Aliquota, Valor_ICMS,
                                  Brancos: ShortString): ShortString; stdcall; external 'SIntegra32Dll.DLL';
  Function Registro60Item(Data_Emissao, Nro_Serie_Eqp, Modelo_Doc, COO, Nro_Item, Cod_Produto,
                          Quantidade, Valor_Produto, Base_ICMS, S_Trib_Aliquota, Valor_ICMS,
                          Brancos: ShortString): ShortString; stdcall; external 'SIntegra32Dll.DLL';
  Function Registro60ResumoMensal(Mes_Ano_Emissao, Cod_Produto_Servico, Quantidade,
                                  Valor_Produto, Base_ICMS, S_Trib_Aliquota,
                                  Brancos: ShortString): ShortString; stdcall; external 'SIntegra32Dll.DLL';
  Function Registro61(Brancos_2, Brancos_3, Data_Emissao, Modelo, Serie, SubSerie,
                      Nro_Ordem_Inicio, Nro_Ordem_Fim, Valor_Total, Base_ICMS, Valor_ICMS,
                      Isenta, Outras, Aliquota, Branco: ShortString): ShortString; stdcall; external 'SIntegra32Dll.DLL';
  Function Registro70(CNPJ, Insc_Est, Data_Emissao_Utilizacao, UF, Modelo, Serie, SubSerie,
                      Nro, CFOP, Valor_Total, Base_ICMS, Valor_ICMS, Isenta, Outras,
                      CIF_FOB, Situacao: ShortString): ShortString; stdcall; external 'SIntegra32Dll.DLL';
  Function Registro71(CNPJ, Insc_Est_Tomador, Data_Emissao_Conhecimento, UF_Tomador,
                      Modelo_Conhecimento, Serie, SubSerie, Nro_Conhecimento,
                      UF_Remetente_Destinatario, CNPJ_Remetente_Destinatario,
                      Insc_Est_Remetente_Destinatario, Data_Emissao_NF, Modelo_NF, Serie_NF,
                      Nro_NF, Valor_Total_NF, Brancos: ShortString): ShortString; stdcall; external 'SIntegra32Dll.DLL';
  Function Registro74(Data_Inventario, Cod_Produto, Quantidade, Valor_Produto,
                      Cod_Posse, CNPJ_Possuidor, Insc_Est_Possuidor, UF_Possuidor,
                      Brancos: ShortString): ShortString; stdcall; external 'SIntegra32Dll.DLL';
  Function Registro75(Data_Inicial, Data_Final, Cod_Produto_Servico, Cod_NCM, Descricao,
                      UND_Medida, S_Trib, Aliquota_IPI, Aliquota_ICMS, Reducao_Base_ICMS,
                      Base_ICMS: ShortString): ShortString; stdcall; external 'SIntegra32Dll.DLL';
  Function Registro90: ShortString; stdcall; external 'SIntegra32Dll.DLL';

{$R *.dfm}

procedure TFrmSintegra.FormShow(Sender: TObject);
begin
     EdEmpresa.Text  := DmApp.Nome  ;
     EDENDERECO.Text := DmApp.ENDER ;
     EDFONE.Text     := DmApp.FONE  ;
     EDFAX.Text      := DmApp.FAX   ;
     EDCNPJ.Text     := DmApp.Cnpj  ;
     EDIE.text       := ''          ;

     CGC             := '04.157.875/0001-52';
     IE              := '28.315.319';              //Sem dígito verificador
     UF              := 'MS';
     Logradouro      := 'AV. WEIMAR GONCALVES TORRES' ;
     Numero          := '2329' ;
     Complemento     := '';
     Bairro          := 'Centro';
     Cep             := '79.804-040';
     Contato         := 'Sandra';
     Fone            := '(067)422-7927';
     ModeloNf        := 'M1' ;

     edDtInicial.setfocus ;
end;

Function  TFrmSintegra.TrataNum ( Valor: Real ): String;
Var
   Str, Aux: String;
   I  : Integer ;
Begin
     Str := FormatFLoat ('###,###,##0.00', Valor );

     I   := 1;

     Aux := '';

     While I <= 12 DO
     BEGIN
          If Copy ( Str, I, 1 ) <> '.'
          then
              Aux := Aux + Copy ( Str, I, 1 )
          else
              Aux := Aux + ',' ;

          I := I + 1 ;
     END;

     Result := Aux;
end;

Procedure TFrmSintegra.Trata_SIntegra_Str(TempStr: String; Origem: String);
begin
    if TempStr[1] <> '-'
    then begin
         //Grava no Log do Sintegra
    end
    else begin
         Memo1.Lines.Add(TempStr);
    end;
end;

//Registro10 - Mestre do Estabelecimento - Indentifição do Estabelecimento informante
procedure TFrmSintegra.PRegistro10 ;
var
 TempStr, Ini, Fin: String;
begin
{     Ini := edDtInicial.text;

     Fin := edDtFinal.text  ;

     Inicia_SIntegra;

     TempStr := Registro10(
                      CGC,                              //CGC
                      IE,                               //IE
                      Empresaparempnom.Value,           //Nome_Contribuinte
                      'Dourados',                       //Municipio
                      'MS',                             //UF
                      '(067)422-1998',                  //Fax
                      Ini,                              //Data Inicial
                      Fin,                              //Data Final
                      '2',                              //Convênio 31/99
                      '1',                              //InterEstaduais - com ou sem Subs. Trib.
                      '1'                               //Normal
                      );

     Trata_SIntegra_Str(TempStr, '10');

     Reg10.Checked := TRUE ;}
end;

procedure TFrmSintegra.PRegistro11 ;
var
 TempStr: String;
begin
    //Registro11 - Dados complementares do informante
    try
       TempStr := Registro11(Logradouro,             //Logradouro
                       Numero,                       //Número
                       Complemento,                  //Complemento
                       Bairro,                       //Bairro
                       Cep,                          //Cep
                       Contato,                      //Nome do Contato
                       Fone                          //Telefone
                      );
       Trata_SIntegra_Str(TempStr, '11');
       Reg11.Checked := TRUE ;
    except
          showmessage('erro');
    end;
end;

procedure TFrmSintegra.PRegistro50;
var
 TempStr: String;
 CGC_Nota,
 IE_Nota,
 DtEmissao,
 UF_Nota,
 Modelo,
 Serie,
 Numero,
 Cfop,
 Emitente,
 Valor_Total,
 Base_Icm,
 Valor_Icms,
 Isenta,
 Outras,
 Aliquota,
 Situacao: String;

begin
{     With DMRelatorios do
     begin
          Entradas.Close ;
          Entradas.Sql.Clear ;
          Entradas.Sql.Add ( ' SELECT * FROM VER_EST_ENTRADAS_CONFERENTE  ');
          Entradas.Sql.Add ( ' ( :CNPJ, :DT_INICIAL, :DT_FINAL ) ');

          Entradas.ParamByName('CNPJ').asString     := DMApp.Cnpj;
          DMRelatorios.Entradas.ParamByName('DT_INICIAL').asDate := edDtInicial.date ;
          DMRelatorios.Entradas.ParamByName('DT_FINAL').asDate := edDtFinal.Date     ;

          Entradas.SQL.Add ( ' ORDER BY NDOCTO, NOME_RAZAO, PESSOA_FJ ' );

          Entradas.Open;

          Entradas.FetchAll ;

          Entradas.First ;

          While Not Entradas.Eof do
          begin
               CGC_Nota    := Entradasforcpfcgc.Value ;
               IE_Nota     := Entradasforierg.Value   ;
               DtEmissao   := DateToStr(Entradasentdtnota.Value)  ;
               UF_Nota     := Entradasciduf.Value     ;
               Modelo      := ModeloNf                ;
               Serie       := Entradasentserie.Value  ;
               Numero      := Entradasentdocto.Value  ;
               Cfop        := Entradasnatcod.Text     ;
               Emitente    := 'P'                     ;
               Valor_Total := TrataNum(EntradasTotal_Nota.Value) ;
               Base_Icm    := TrataNum(Entradasentbaseicm.Value) ;
               Valor_Icms  := TrataNum(Entradasenttoticm.Value)  ;
               Isenta      := '0,00'                             ;
               Outras      := '0,00'                             ;
               Aliquota    := TrataNum(Entradasentpercicm.Value) ;
               Situacao    := 'N'                                ;//Nao Esta Cancelada


               //Registro50 - Registro de Total de Nota Fiscal
               TempStr := Registro50(
                      CGC_Nota,                   //CNPJ
                      IE_Nota,                    //Insc_Est
                      DtEmissao,                  //Data_Emissao_Recebimento
                      UF_Nota,                    //UF,
                      Modelo,                     //Modelo
                      Serie,                      //Serie
                      Numero,                     //Nro
                      Cfop,                       //CFOP
                      Emitente,                   //Emitente
                      Valor_Total,                //Valor_Total
                      Base_Icm,                   //Base_ICMS
                      Valor_Icms,                 //Valor_ICMS
                      Isenta,                     //Isenta
                      Outras,                     //Outras
                      Aliquota,                   //Aliquota
                      Situacao                    //Situacao
                     );

               Trata_SIntegra_Str(TempStr,'50');

               anda.Position := anda.Position + 1;

               Entradas.Next ;
          end;

          Reg50.Checked := TRUE ;
     end;}
end;

procedure TFrmSintegra.PRegistro54 ;
var
 TempStr: String;
 CGC_Nota,                 //CNPJ
 Modelo,                   //Modelo
 Serie,                    //Serie
 Numero,                   //Nº
 Cfop,                     //CFOP
 Cst,                      //CST
 item,                     //Nº Item
 Codigo,                   //Codigo Produto
 Quantidade,               //Quantidade
 Valor,                    //Valor Produto
 Desconto,                 //Valor Desconto
 BaseIcm,                  //Base ICMS
 BaseSubst,                //Base ICMS S. Trib.
 Ipi,                      //Valor IPI
 Aliquota: String;         //Aliquota ICMS
begin
     //Registro54 - Registro de Produto (Classificação Fiscal)
     TempStr := Registro54(
                      CGC_Nota,                  //CNPJ
                      '1A',                      //Modelo
                      '1',                       //Serie
                      '1',                       //Nº
                      '511',                     //CFOP
                      '111',                        //CST
                      '001',                     //Nº Item
                      '1',                       //Codigo Produto
                      '1',                       //Quantidade
                      '518,19',                  //Valor Produto
                      '0,00',                    //Valor Desconto
                      '518,19',                  //Base ICMS
                      '0,00',                    //Base ICMS S. Trib.
                      '0,00',                    //Valor IPI
                      '7,00'                     //Aliquota ICMS
                     );

 Trata_SIntegra_Str(TempStr,'54');
end;

procedure TFrmSintegra.PRegistro90 ;
var
 TempStr: String;
begin
 //Registro90 - Registro de Totalização do Arquivo
 TempStr := Registro90;          //Requisita a leitura do Registro90

 Trata_SIntegra_Str(TempStr,'90');

 Finaliza_SIntegra;              //Finaliza o uso da Dll
end;

procedure TFrmSintegra.BtnSalvarClick(Sender: TObject);
begin
 memo1.Lines.SaveToFile('c:\windows\desktop\sintegra.txt')
end;

procedure TFrmSintegra.BtnSairClick(Sender: TObject);
begin
 self.close;
end;

procedure TFrmSintegra.PRegistro53 ;
var
 TempStr: String;
 CGC_Nota:String;
 Ie_Nota :String;
 Uf_Nota :String;
begin
//Registro53 - Registro de Total de Documento Fical  quanto a substituição tributária
TempStr := Registro53(CGC_Nota,                         //CGC
                      IE_Nota,                          //IE
                      '01/10/2002',                     //Data_Emissao_Recebimento
                      UF_Nota,                          //UF
                      '1A',                             //Modelo
                      '1',                              //Serie
                      '1',                              //Nro
                      '5111',                           //CFOP
                      'T',                              //Emitente
                      '518,19',                         //Base_ICMS
                      '36,27',                          //ICMS_Retido
                      '0',                              //Despesas_Acessorias
                      'N',                              //Situacao
                      ''                                //Brancos
                     );

 Trata_SIntegra_Str(TempStr,'53');
end;

procedure TFrmSintegra.PRegistro55 ;
var
 TempStr: String;
 CGC_Nota:String;
 Ie_Nota :String;
 Uf_Nota :String;

begin
//Registro55 - Registro de Guia Nacional de Recolhimento de Tributos Estaduais
TempStr := Registro55(CGC,                   //CGC
                      IE_Nota,               //Insc_Est
                      '01/10/2001',          //Data_GNRE
                      UF,                    //UF_Substituto
                      UF_Nota,               //UF_Favorecida
                      '1',                   //Banco_GNRE
                      '1',                   //Agencia_GNRE
                      '1',                   //Nro_GNRE
                      '1',                   //Valor_GNRE
                      '01/11/2002',          //Data_Vencimento_ICMS
                      '11/2002',             //Mes_Ano_Ref
                      '1'                   //Nro_Convenio
                     );

 Trata_SIntegra_Str(TempStr,'55');
end;

procedure TFrmSintegra.PRegistro60 ;
var
 TempStr: String;
begin
//Registro60Mestre - Registro de informação de operações/prestações realizadas
//com ECF, Indentificador do Equipamento
TempStr := Registro60Mestre('01/10/2002',     //Data_Emissao
                            '1',              //Nro_Serie_Eqp
                            '1',              //Nro_Ordem_Eqp
                            '02',             //Modelo_Doc
                            '1',              //Nro_Contador_Inicio
                            '2',              //Nro_Contador_Fim
                            '1',              //Nro_Contador_Z
                            '1',              //Contador_Reinicio
                            '2',              //Valor_Venda_Bruta
                            '4',              //Valor_Total_Geral
                            ''                //Brancos
                           );

 Trata_SIntegra_Str(TempStr,'60');
end;

procedure TFrmSintegra.PRegistro60a;
var
 TempStr: String;
begin
//Registro60Analitico - Registro de informação de operações/prestações realizadas
//com ECF, Indentificador de cada situação tributária no final do dia de cada equipamento
//emissor de cupom fiscal.
TempStr := Registro60Analitico('01/10/2002',     //Data_Emissao
                               '1',              //Nro_PDV
                               '7,00',           //S_Trib_Aliquota
                               '1',              //Valor_TParcial
                               ''                //Brancos
                              );

 Trata_SIntegra_Str(TempStr,'60a');
end;

procedure TFrmSintegra.PRegistro60r ;
var
 TempStr: String;
begin
//Registro60ResumoMensal - Registro de informação de operações/prestações realizadas
//com ECF, Registro de Produto ou serviço processado em equipamento emissor de cupom fiscal.
TempStr := Registro60ResumoMensal('10/2002',       //Mes_Ano_Emissao
                                  '1',             //Cod_Produto_Servico
                                  '1',             //Quantidade
                                  '1',             //Valor_Produto
                                  '1',             //Base_ICMS
                                  '7,00',          //S_Trib_Aliquota
                                  ''               //Brancos
                                 );

 Trata_SIntegra_Str(TempStr,'60r');
end;

procedure TFrmSintegra.PRegistro61 ;
var
 TempStr: String;
begin
//Registro61 - Para Documentos quando não emitidos por ECF
TempStr := Registro61('',               //Brancos_2
                      '',               //Brancos_3
                      '01/10/2002',     //Data_Emissao
                      '02',             //Modelo
                      '1',              //Serie
                      '',               //SubSerie
                      '1',              //Nro_Ordem_Inicio
                      '2',              //Nro_Ordem_Fim
                      '1',              //Valor_Total
                      '1',              //Base_ICMS
                      '0,7',            //Valor_ICMS
                      '0',              //Isenta
                      '0',              //Outras
                      '7,00',           //Aliquota
                      ''                //Branco
                     );

 Trata_SIntegra_Str(TempStr,'61');
end;

procedure TFrmSintegra.PRegistro70;
var
 TempStr: String;
 CGC_Nota:String;
 Ie_Nota :String;
 Uf_Nota :String;

begin
//Registro70 - Registro de Total quanto ao ICMS
TempStr := Registro70(CGC_Nota,         //CGC_MF
                      IE_Nota,          //Insc_Est
                      '01/10/2002',     //Data_Emissao_Utilizacao
                      UF_Nota,          //UF
                      '01',             //Modelo
                      '1',              //Serie
                      '',               //SubSerie
                      '1',              //Nro
                      '511',            //CFOP
                      '1',              //Valor_Total
                      '1',              //Base_ICMS
                      '0',              //Valor_ICMS
                      '0',              //Isenta
                      '0',              //Outras
                      '1',              //CIF_FOB
                      'N'               //Situacao
                     );

 Trata_SIntegra_Str(TempStr,'70');
end;

procedure TFrmSintegra.PRegistro71;
var
 TempStr: String;
 CGC_Nota:String;
 Ie_Nota :String;
 Uf_Nota :String;

begin
     //Registro71 - Registro de Informações de Carga Transportada
     TempStr := Registro71(CGC,              //CGC_MF
                      IE,               //Insc_Est
                      '01/10/2002',     //Data_Emissao_Conhecimento
                      UF_Nota,          //UF_Tomador
                      '01',             //Modelo_Conhecimento
                      '1',              //Serie
                      '',               //SubSerie
                      '1',              //Nro_Conhecimento
                      UF_Nota,          //UF_Remetente_Destinatario
                      CGC_Nota,         //CGC_MF_Remetente_Destinatario
                      IE_Nota,          //Insc_Est_Remetente_Destinatario
                      '01/10/2002',     //Data_Emissao_NF
                      '01',             //Modelo_NF
                      '1',              //Serie_NF
                      '1',              //Nro_NF
                      '1',              //Valor_Total_NF
                      ''                //Brancos
                     );

 Trata_SIntegra_Str(TempStr,'71');
end;

procedure TFrmSintegra.PRegistro74 ;
var
 TempStr: String;
begin
//Registro74 - Registro de Inventário
TempStr := Registro74('01/10/2002',    //Data Inventario
                      '1',             //Cod_Produto
                      '1',             //Quantidade
                      '1',             //Valor_Produto
                      '1',             //Cod_Posse
                      CGC,             //CNPJ_Possuidor
                      '',        //Insc_Est_Possuidor
                      UF,              //UF_Possuidor
                      ''               //Brancos
                     );

 Trata_SIntegra_Str(TempStr,'74');
end;

procedure TFrmSintegra.PRegistro75 ;
var
 TempStr: String;
begin
//Registro75 - Registro de Código de Produto e Serviço
TempStr := Registro75('01/10/2002',             //Data Inicial
                      '31/10/2002',             //Data_Final
                      '1',                      //Cod_Produto_Servico
                      '1',                      //Cod_NCM
                      'Descrição de Produto',   //Descricao
                      'CX',                     //UND_Medida
                      '0',                      //S_Trib
                      '0',                      //Aliquota_IPI
                      '0',                      //Aliquota_ICMS
                      '0',                      //Reducao_Base_ICMS
                      '0'                       //Base_ICMS
                     );

 Trata_SIntegra_Str(TempStr,'75');
end;

procedure TFrmSintegra.PRegistro51 ;
var
 TempStr: String;
 CGC_Nota:String;
 Ie_Nota :String;
 Uf_Nota :String;

begin
//Registro51 - Registros de Total de Nota Fiscal Quanto ao IPI
TempStr := Registro51(CGC_Nota,         //CGC
                      IE_Nota,          //Insc_Est
                      '01/10/2002',     //Data_Emissao_Recebimento
                      UF_Nota,          //UF
                      '1',              //Serie
                      '1',              //Nro
                      '511',            //CFOP
                      '518,19',         //Valor_Total
                      '0',              //Valor_IPI
                      '0',              //Isenta_IPI
                      '0',              //Outras_IPI
                      '',               //Brancos
                      'N'               //Situacao
                     );

 Trata_SIntegra_Str(TempStr,'51');
end;

procedure TFrmSintegra.PRegistro60d ;
var
 TempStr: String;
begin
//Registro60ResumoDiário - Registro de produto ou serviço registrado em documento
//fiscal emitido por Terminal Ponto de Venda (PDV) ou equipamento Emissor de Cupom
//Fiscal (ECF).
TempStr := Registro60ResumoDiario('01/10/2002',       //Data_Emissao
                                  '1',                //Nro_Serie_Eqp
                                  '1',                //Cod_Produto
                                  '1',                //Quantidade
                                  '1',                //Valor_Produto
                                  '17,00',            //Base_ICMS
                                  '0',                //S_Trib_Aliquota
                                  '0,17',             //Valor_ICMS
                                  ''                  //Brancos
                                 );
 Trata_SIntegra_Str(TempStr,'60d');
end;

procedure TFrmSintegra.PRegistro60i;
var
 TempStr: String;
begin
//Registro60Item - Item do documento fiscal documento fiscal emitido por Terminal
//Ponto de Venda (PDV) ou equipamento Emissor de Cupom Fiscal (ECF).
TempStr := Registro60Item('01/10/2002',            //Data_Emissao
                          '1',                     //Nro_Serie_Eqp
                          '1A',                    //Modelo_Doc
                          '1',                     //COO
                          '1',                     //Nro_Item
                          '1',                     //Cod_Produto
                          '1',                     //Quantidade
                          '1',                     //Valor_Produto
                          '17,00',                 //Base_ICMS
                          '0',                     //S_Trib_Aliquota
                          '0,17',                  //Valor_ICMS
                          ''                       //Brancos
                          );

 Trata_Sintegra_Str(TempStr,'60i');
end;

procedure TFrmSintegra.RzBitBtn1Click(Sender: TObject);
begin
     MEMO1.Clear ;
     PC.ActivePageIndex := 1;
     PRegistro10;
     PRegistro11;
     PRegistro50;
end;

end.
