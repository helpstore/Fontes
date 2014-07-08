unit IndicesPdv_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, StdCtrls, Mask,  dxCntner, dxEditor,
  dxExEdtr, dxEdLib,  Grids, DBGrids, dxDBTLCl, dxGrClms,
  dxDBCtrl, dxDBGrid, dxTL, DB, dxmdaset, DBCtrls;

type
  TPdv_FormIndices = class(TForm)
    ActLista: TActionList;
    PnlTotal: TPanel;
    ActMarcaDesmarca: TAction;
    dxDBGrid1: TdxDBGrid;
    dsIndices: TDataSource;
    dxDBGrid1RecId: TdxDBGridColumn;
    dxDBGrid1COTACAO: TdxDBGridMaskColumn;
    dxDBGrid1SIGLA: TdxDBGridMaskColumn;
    dxDBGrid1NOME: TdxDBGridMaskColumn;
    dxDBGrid1TOTAL: TdxDBGridMaskColumn;
    dxDBGrid1SEL: TdxDBGridCheckColumn;
    dxDBGrid1Troco: TdxDBGridMaskColumn;
    ActionFechar: TAction;
    mtbIndices: TdxMemData;
    mtbIndicesSel: TBooleanField;
    mtbIndicesCOTACAO: TFloatField;
    mtbIndicesSIGLA: TStringField;
    mtbIndicesNOME: TStringField;
    mtbIndicesTOTAL: TFloatField;
    mtbIndicesTroco: TFloatField;
    Panel1: TPanel;
    status: TPanel;
    PNUNITARIO: TPanel;
    EdtVALOR: TDBEdit;
    mtbValorPago: TdxMemData;
    mtbValorPagoValorPago: TFloatField;
    dsValor: TDataSource;
    mtbIndicesCOD_MOEDA: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure ActSairExecute(Sender: TObject);
    procedure ActLeituraXExecute(Sender: TObject);
    procedure ActCancelaIUltimotemExecute(Sender: TObject);
    procedure ActAbreGavetaExecute(Sender: TObject);
    procedure ActMarcaDesmarcaExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EdDigitacaoKeyPress(Sender: TObject; var Key: Char);
    procedure mtbIndicesSelChange(Sender: TField);
    procedure EdtVALORKeyPress(Sender: TObject; var Key: Char);
    procedure EdtVALORKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ActionFecharExecute(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    ValorItem : real;
    Nominal, Extrato, LeituraX, LeituraZ: Boolean ;
  end;

var
  Pdv_FormIndices: TPdv_FormIndices;

implementation

uses Funcoes,
     Pdv_Frm,
     Pdv_DM,
     Application_DM,
     ConsultaProdPdv_Form,
     SenhaGerencialPdv_Form,
     ArredondaTruncaPdv_Form,
     CancelaItemPdv_Form, SetaNumPedidodv_Form, FuncoesPdv_Form;

{$R *.DFM}

procedure TPdv_FormIndices.FormShow(Sender: TObject);
begin
  mtbValorPago.Close;
  mtbValorPago.Open;
  mtbValorPago.data.Values.Clear;
  mtbValorPago.Append;

  Pdv_FormIndices.Top  := FrmPdv.Lista.Top  ;
  Pdv_FormIndices.Left := FrmPdv.Lista.Left ;

     //TROCANDO COR DE FUNDO
  if (( TRIM(DMAPP.PDV_COR_FUNDO) <> '') and ( TRIM(DMAPP.PDV_COR_FUNDO) <> '0')) then
     Pdv_FormIndices.Color      := STRTOINT(TRIM(DMAPP.PDV_COR_FUNDO));

  if ((TRIM(DMAPP.PDV_COR_FONTE) <> '') and (TRIM(DMAPP.PDV_COR_FONTE) <> '0')) then
     Pdv_FormIndices.Font.Color           := STRTOINT(TRIM(DMAPP.PDV_COR_FONTE));

  with dmPDV do
  begin
    mtbIndices.Close;
    mtbIndices.Open;
    mtbIndices.data.Values.Clear;

    //---------------------------------Contas à Receber------------------------------------//
    QryIndices.Close;
    QryIndices.ParamByName('total').value := valoritem;
    QryIndices.ParamByName('data').AsDate := dmApp.DataCaixa;
    QryIndices.Open;

    mtbIndices.DisableControls;

    QryIndices.First;
    while not QryIndices.Eof do
    begin
      mtbIndices.Append;
      mtbIndicesCOTACAO.value := QryIndicesCOTACAO.AsFloat;
      mtbIndicesSIGLA.value := QryIndicesSIGLA.value;
      mtbIndicesNOME.value :=  QryIndicesNOME.value;
      mtbIndicesTOTAL.value := QryIndicesTOTAL.AsFloat;
      mtbIndicesSel.value := false;
      mtbIndicesTroco.value := 0;
      mtbIndicesCOD_MOEDA.value := QryIndicesCODIGO.value;
      mtbIndices.post;
      QryIndices.next;
    end;

    mtbIndices.First;
    mtbIndices.EnableControls;
    EdtVALOR.setfocus;
  end;
end;

procedure TPdv_FormIndices.ActSairExecute(Sender: TObject);
begin
  ModalResult := MrOk ;
end;

procedure TPdv_FormIndices.ActLeituraXExecute(Sender: TObject);
begin
  ModalResult := MrOk ;
end;

procedure TPdv_FormIndices.ActCancelaIUltimotemExecute(Sender: TObject);
begin
  Close ;
end;

procedure TPdv_FormIndices.ActAbreGavetaExecute(Sender: TObject);
begin
  Close ;
end;

procedure TPdv_FormIndices.ActMarcaDesmarcaExecute(Sender: TObject);
begin
  if mtbIndices.State <> dsEdit then
    mtbIndices.Edit;

  if (mtbIndicesSel.value) then
    mtbIndicesSel.Value := false
  else
    mtbIndicesSel.Value := true;
end;

procedure TPdv_FormIndices.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  Pdv_FormIndices := Nil;
end;

procedure TPdv_FormIndices.EdDigitacaoKeyPress(Sender: TObject;
  var Key: Char);
begin
  //TROCA A TECLA 191 POR 46 = "."
  IF KEY = ';' THEN
    KEY := '.';

  IF ( KEY = #84 ) or ( KEY = #85 ) or ( KEY = #86 ) or ( Key = #116 ) or ( KEY = #117 ) or ( KEY = #118 ) THEN
    KEY := CHAR(8);
end;

procedure TPdv_FormIndices.mtbIndicesSelChange(Sender: TField);
begin
  if mtbIndicesSel.value then
  begin
    mtbIndicesTroco.value := mtbValorPagoValorPago.value - mtbIndicesTOTAL.value;
    FrmPdv.TotalIndice := mtbValorPagoValorPago.value * mtbIndicesCOTACAO.Value;
  end
  else
    mtbIndicesTroco.value := 0;
end;

procedure TPdv_FormIndices.EdtVALORKeyPress(Sender: TObject; var Key: Char);
begin
  //TROCA A TECLA 191 POR 46 = "."
     IF KEY = ';'
     THEN BEGIN
          KEY := ',' ;             
     END;

     IF ( KEY = #84 ) or ( KEY = #85 ) or ( KEY = #86 ) or ( Key = #116 ) or ( KEY = #117 ) or ( KEY = #118 )
     THEN BEGIN
          KEY := CHAR(8);
     END;
end;

procedure TPdv_FormIndices.EdtVALORKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if (key=VK_RETURN) OR (Key=VK_DOWN) Then
   Perform(WM_NEXTDLGCTL, 0, 0);
end;

procedure TPdv_FormIndices.ActionFecharExecute(Sender: TObject);
var
  indcont, codigo : integer;
begin
  indcont := 0;
  mtbIndices.First;
  while not mtbIndices.eof do
  begin
    if mtbIndicesSel.Value then
    begin
      indcont := indcont + 1;
      codigo := mtbIndicesCOD_MOEDA.value;
    end;

    mtbIndices.next;
  end;

  if (indcont =0) then
  begin
    if Application.Messagebox('Defina pelo menos uma moeda','Aviso',mb_ok+mb_iconerror) = id_no then
    begin
       FrmPdv.TotalIndice := 0;
       abort;
       exit;
    end;
  end
  else if (indcont > 1) then
  begin
    if Application.Messagebox('Defina apenas uma moeda','Aviso',mb_ok+mb_iconerror) = id_no then
    begin
       FrmPdv.TotalIndice := 0;
       abort;
       exit;
    end;
  end
  else
  begin
    frmPdv.codindice := codigo;
    modalresult := mrok;
  end;
end;

end.
