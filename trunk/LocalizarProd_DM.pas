 unit LocalizarProd_DM;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, IBCustomDataSet, IBQuery;

type
  TDMLocalizarProd = class(TDataModule)
    SelMarca: TIBQuery;
    SelAplicacao: TIBQuery;
    SelMarcaCNPJ: TIBStringField;
    SelMarcaCODIGO: TIntegerField;
    SelMarcaNOME: TIBStringField;
    SelAplicacaoCNPJ: TIBStringField;
    SelAplicacaoCODIGO: TIntegerField;
    SelAplicacaoNOME: TIBStringField;
    Similares: TIBQuery;
    SimilaresCNPJ: TIBStringField;
    SimilaresCODIGO: TIBStringField;
    SimilaresNOME: TIBStringField;
    SimilaresQTDADE_2: TFloatField;
    SimilaresPRC_VENDA: TFloatField;
    dsProdutos: TDataSource;
    Produtos: TIBQuery;
    ProdutosCODIGO: TIBStringField;
    ProdutosCODIGO_2: TIBStringField;
    ProdutosNOME: TIBStringField;
    ProdutosQTDADE_2: TIBBCDField;
    ProdutosQTDADE_1: TIBBCDField;
    ProdutosPRC_VENDA: TIBBCDField;
    ProdutosPRC_REPOS: TIBBCDField;
    ProdutosMARCA: TIBStringField;
    Aplicacoes: TIBQuery;
    AplicacoesAPLICACAO: TIBStringField;
    AplicacoesLOCAL: TIBStringField;
    ProdutosCOD_AGRUP: TIBStringField;
    ProdutosCUSTO: TIBStringField;
    Produto: TIBDataSet;
    ProdutoCNPJ: TIBStringField;
    ProdutoCODIGO: TIBStringField;
    ProdutoCODIGO_2: TIBStringField;
    ProdutoCNPJ_AGRUP: TIBStringField;
    ProdutoCOD_AGRUP: TIBStringField;
    ProdutoNOME: TIBStringField;
    ProdutoMARCA: TIntegerField;
    ProdutoGRUPO: TIntegerField;
    ProdutoSUBGRUPO: TIntegerField;
    ProdutoREDUCAO: TIntegerField;
    ProdutoUNIDADE: TIBStringField;
    ProdutoCTE: TSmallintField;
    ProdutoCTIE: TSmallintField;
    ProdutoLOCALIZACAO_1: TIBStringField;
    ProdutoLOCALIZACAO_2: TIBStringField;
    ProdutoLOCALIZACAO_3: TIBStringField;
    ProdutoCOMPLEMENTO_NF: TIBStringField;
    ProdutoDT_ULT_COMPRA: TDateTimeField;
    ProdutoDT_ULT_VENDA: TDateTimeField;
    ProdutoALIQUOTA_ECF: TIBStringField;
    ProdutoORIGEM: TSmallintField;
    ProdutoQTDADE_1: TFloatField;
    ProdutoQTDADE_2: TFloatField;
    ProdutoQTDADE_MIN: TIntegerField;
    ProdutoQTDADE_MAX: TIntegerField;
    ProdutoQT_ULT_COMPRA: TIntegerField;
    ProdutoMARGEM_BRUTA: TFloatField;
    ProdutoPRC_REPOS: TFloatField;
    ProdutoPRC_CUSTO_ANT: TFloatField;
    ProdutoPRC_CUSTO_MED: TFloatField;
    ProdutoPRC_VENDA: TFloatField;
    ProdutoPRC_VENDA_ANT: TFloatField;
    ProdutoPRC_VENDA_MED: TFloatField;
    ProdutoPESO_LIQ: TFloatField;
    ProdutoPERC_FRETE: TFloatField;
    ProdutoIPI: TFloatField;
    ProdutoVOLUME: TFloatField;
    ProdutoNEG_QTDADE_2: TIBStringField;
    ProdutoQTD_UM: TFloatField;
    ProdutoQTD_UNIT: TFloatField;
    ProdutoETIQUETA_ENT: TIBStringField;
    ProdutoATIVO: TIBStringField;
    ProdutoPROD_PESAVEL: TIBStringField;
    ProdutoULTIMO_FORNECEDOR: TIntegerField;
    ProdutoSUBUNIDADE: TIntegerField;
    Unidades: TIBDataSet;
    UnidadesCNPJ: TIBStringField;
    UnidadesSIGLA: TIBStringField;
    UnidadesNOME: TIBStringField;
    ProdutosA: TIBQuery;
    ProdutosACODIGO: TIBStringField;
    ProdutosACODIGO_2: TIBStringField;
    ProdutosANOME: TIBStringField;
    ProdutosAQTDADE_2: TIBBCDField;
    ProdutosAQTDADE_1: TIBBCDField;
    ProdutosAPRC_VENDA: TIBBCDField;
    ProdutosAPRC_REPOS: TIBBCDField;
    ProdutosAMARCA: TIBStringField;
    ProdutosACOD_AGRUP: TIBStringField;
    ProdutosACUSTO: TIBStringField;
    ProdutosCODIGO_INTERNO: TIntegerField;
    ProdutosACODIGO_INTERNO: TIntegerField;
    ProdutoCODIGO_INTERNO: TIntegerField;
    ProdutoDT_ULT_ATU_PRECO: TDateTimeField;
    ProdutoCUSTO_AQUISICAO: TFloatField;
    UnidadesUNIDADES: TFloatField;
    ProdutosALIQUOTA_ECF: TIBStringField;
    ProdutosAALIQUOTA_ECF: TIBStringField;
    ProdutosVALIDADE: TIntegerField;
    ProdutosAVALIDADE: TIntegerField;
    ProdutoVALIDADE: TIntegerField;
    ProdutosG: TIBQuery;
    ProdutosGCODIGO: TIBStringField;
    ProdutosGCODIGO_2: TIBStringField;
    ProdutosGNOME: TIBStringField;
    ProdutosGQTDADE_2: TIBBCDField;
    ProdutosGQTDADE_1: TIBBCDField;
    ProdutosGPRC_VENDA: TIBBCDField;
    ProdutosGPRC_REPOS: TIBBCDField;
    ProdutosGMARCA: TIBStringField;
    ProdutosGCOD_AGRUP: TIBStringField;
    ProdutosGCUSTO: TIBStringField;
    ProdutosGCODIGO_INTERNO: TIntegerField;
    ProdutosGALIQUOTA_ECF: TIBStringField;
    ProdutosGVALIDADE: TIntegerField;
    ProdutosAG: TIBQuery;
    ProdutosAGCODIGO: TIBStringField;
    ProdutosAGCODIGO_2: TIBStringField;
    ProdutosAGNOME: TIBStringField;
    ProdutosAGQTDADE_2: TIBBCDField;
    ProdutosAGQTDADE_1: TIBBCDField;
    ProdutosAGPRC_VENDA: TIBBCDField;
    ProdutosAGPRC_REPOS: TIBBCDField;
    ProdutosAGMARCA: TIBStringField;
    ProdutosAGCOD_AGRUP: TIBStringField;
    ProdutosAGCUSTO: TIBStringField;
    ProdutosAGCODIGO_INTERNO: TIntegerField;
    ProdutosAGALIQUOTA_ECF: TIBStringField;
    ProdutosAGVALIDADE: TIntegerField;
    ProdutoEST_MIN: TFloatField;
    ProdutoEST_MAX: TFloatField;
    procedure SelMarcaBeforeOpen(DataSet: TDataSet);
    procedure SelMarcaAfterClose(DataSet: TDataSet);
    procedure ProdutoAfterInsert(DataSet: TDataSet);
    procedure ProdutoCalcFields(DataSet: TDataSet);
    procedure ProdutoNewRecord(DataSet: TDataSet);
    procedure ProdutoBeforeOpen(DataSet: TDataSet);
    procedure ProdutoCODIGOValidate(Sender: TField);
    procedure ProdutoCTESetText(Sender: TField; const Text: String);
    procedure ProdutoCTEGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure ProdutoCTIEGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure ProdutoCTIESetText(Sender: TField; const Text: String);
    procedure ProdutoORIGEMGetText(Sender: TField; var Text: String; DisplayText: Boolean);
    procedure ProdutoORIGEMSetText(Sender: TField; const Text: String);
    procedure ProdutoMARGEM_BRUTAValidate(Sender: TField);
  private
    { Private declarations }
  public
    { Public declarations }
    CodigoProdAlterar: String;
    procedure VerAplicacoes (Codigo: String);
  end;

var
  DMLocalizarProd: TDMLocalizarProd;

implementation

uses Application_DM;

{$R *.DFM}

procedure TDMLocalizarProd.SelMarcaBeforeOpen(DataSet: TDataSet);
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

procedure TDMLocalizarProd.SelMarcaAfterClose(DataSet: TDataSet);
begin
  If (DataSet is TIBQuery) Then
     (Dataset as TIBQuery).UnPrepare;
  If (DataSet is TIBDataSet) Then
     (Dataset as TIBDataset).UnPrepare;
end;

procedure TDMLocalizarProd.ProdutoAfterInsert(DataSet: TDataSet);
begin
    ProdutoCNPJ.Value           := DMApp.Cnpj;
end;

procedure TDMLocalizarProd.ProdutoCalcFields(DataSet: TDataSet);
begin
{     If (ProdutoUNIDADE.Value <> ProdutoUNIDADE.OldValue)
     Or (ProdutoQTD_UM.IsNull)
     Or (ProdutoQTD_UNIT.IsNull)
     Then Begin
       //
       If UnidadesSIGLA.Value <> ProdutoUNIDADE.Value Then
          Unidades.Locate('SIGLA', ProdutoUNIDADE.Value, []);

       If UnidadesUNIDADES.Value > 0
       then begin
            ProdutoQTD_UM.Value   := Int(ProdutoQTDADE_2.Value / UnidadesUNIDADES.Value);
       end
       else begin
            ProdutoQTD_UM.Value   := (ProdutoQTDADE_2.Value);
       end;
       ProdutoQTD_UNIT.Value := ProdutoQTDADE_2.Value - (ProdutoQTD_UM.Value * UnidadesUNIDADES.Value);
     End;}
end;

procedure TDMLocalizarProd.ProdutoNewRecord(DataSet: TDataSet);
begin
     ProdutoATIVO.Value            := 'S' ;
     ProdutoCOMPLEMENTO_NF.Value   := 'N' ;
     ProdutoQTDADE_2.Value         := 0   ;
     ProdutoMARGEM_BRUTA.Value     := 0   ;
     ProdutoPRC_REPOS.Value        := 0   ;
     ProdutoPRC_CUSTO_ANT.Value    := 0   ;
     ProdutoPRC_CUSTO_MED.Value    := 0   ;
     ProdutoPRC_VENDA.Value        := 0   ;
     ProdutoPRC_VENDA_ANT.Value    := 0   ;
     ProdutoPRC_VENDA_MED.Value    := 0   ;
     ProdutoPESO_LIQ.Value         := 0   ;
     ProdutoPERC_FRETE.Value       := 0   ;
     ProdutoIPI.Value              := 0   ;
     ProdutoVOLUME.Value           := 0   ;
     ProdutoQTDADE_1.Value         := 0   ;
     ProdutoQTDADE_2.Value         := 0   ;
     ProdutoReducao.Value          := 1   ;
     ProdutoCTE.Value              := 1   ;
     ProdutoCTIe.Value             := 1   ;
     ProdutoNEG_QTDADE_2.Value     := 'N' ;
     ProdutoQTDADE_MIN.Value       := 0   ;
     ProdutoQTDADE_MAX.Value       := 0   ;
     ProdutoEtiqueta_ent.Value     := 'N' ;
     ProdutoComplemento_NF.Value   := 'N' ;
     ProdutoOrigem.Value           := 0   ;
     ProdutoPROD_PESAVEL.Value     := 'N' ;
end;

procedure TDMLocalizarProd.ProdutoBeforeOpen(DataSet: TDataSet);
begin
  If (DataSet is TIBQuery) Then
     Begin
       (DataSet as TIBQuery).ParamByName('CNPJ'  ).asString := DMApp.Cnpj;
       (DataSet as TIBQuery).ParamByName('CODIGO').asString := CodigoProdAlterar;
       (Dataset as TIBQuery).Prepare;
     End;
  If (DataSet is TIBDataset) Then
     Begin
       (DataSet as TIBDataSet).ParamByName('CNPJ'  ).asString := DMApp.Cnpj;
       (DataSet as TIBDataSet).ParamByName('CODIGO').asString := CodigoProdAlterar;
       (Dataset as TIBDataSet).Prepare;
     End;
end;

procedure TDMLocalizarProd.ProdutoCODIGOValidate(Sender: TField);
begin
  If Not(Sender.IsNull) And (Produto.State in [dsinsert]) Then
     ProdutoCodigo_2.Value := Sender.Value;
end;

procedure TDMLocalizarProd.ProdutoCTESetText(Sender: TField; const Text: String);
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

procedure TDMLocalizarProd.ProdutoCTEGetText(Sender: TField; var Text: String; DisplayText: Boolean);
begin
  If Sender.Value = 1 Then
     Text := '1 - Tributada Integralmente';
  If Sender.Value = 2 Then
     Text := '2 - Tributada com Redução na Base de Cálculo';
  If Sender.Value = 3 Then
     Text := '3 - Isento de ICMS';
  If Sender.Value = 4 Then
     Text := '4 - ICMS não incidência';
  If Sender.Value = 5 Then
     Text := '5 - Diferido';
  If Sender.Value = 6 Then
     Text := '6 - Substituição Tributária';
  If Sender.Value = 7 Then
     Text := '7 - ISS';
end;

procedure TDMLocalizarProd.ProdutoCTIEGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  If Sender.Value = 1 Then
     Text := '1 - Tributada Integralmente';
  If Sender.Value = 2 Then
     Text := '2 - Tributada com Redução na Base de Cálculo';
  If Sender.Value = 3 Then
     Text := '3 - Isento de ICMS';
  If Sender.Value = 4 Then
     Text := '4 - ICMS não incidência';
  If Sender.Value = 5 Then
     Text := '5 - Diferido';
  If Sender.Value = 6 Then
     Text := '6 - Substituição Tributária';
  If Sender.Value = 7 Then
     Text := '7 - ISS';
end;

procedure TDMLocalizarProd.ProdutoCTIESetText(Sender: TField;
  const Text: String);
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

procedure TDMLocalizarProd.ProdutoORIGEMGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  If Sender.Value = 0 Then
     Text := '0 - Nacional';
  If Sender.Value = 1 Then
     Text := '1 - Importada ( Adquirida no Mercado Interno )';
  If Sender.Value = 2 Then
     Text := '2 - Importada Diretamente';
end;

procedure TDMLocalizarProd.ProdutoORIGEMSetText(Sender: TField;
  const Text: String);
begin
  If Text = '0 - Nacional' Then
     Sender.Value := 0;
  If Text = '1 - Importada ( Adquirida no Mercado Interno )' Then
     Sender.Value := 1;
  If Text = '2 - Importada Diretamente' Then
     Sender.Value := 2;
end;

procedure TDMLocalizarProd.VerAplicacoes (Codigo: String);
begin
     //Dados da Pessoa
     Aplicacoes.Close ;

     Aplicacoes.ParamByName ('CNPJ'   ).AsString  := DmApp.Cnpj   ;
     Aplicacoes.ParamByName ('PRODUTO').AsString  := Codigo       ;

     Aplicacoes.Prepare ;

     Aplicacoes.Open ;
end;

procedure TDMLocalizarProd.ProdutoMARGEM_BRUTAValidate(Sender: TField);
begin
     IF (( DMAPP.ALT_PRCVEND_MARG = 'S' ) AND ( PRODUTOPRC_REPOS.Value > 0 ) AND ( SENDER.VALUE > 0 ))
     THEN BEGIN
          ProdutoPRC_VENDA.VALUE := PRODUTOPRC_REPOS.Value + (( PRODUTOPRC_REPOS.Value * SENDER.VALUE )/100);
     END;
end;

end.






