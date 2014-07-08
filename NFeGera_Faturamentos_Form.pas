 unit NFeGera_Faturamentos_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, Db, dxExEdtr, dxEdLib, dxCntner, dxEditor, dxDBEdtr,
  dxDBELib, StdCtrls,  RDprint,   ComCtrls,   
  dxmdaset, dxTL, dxDBCtrl, dxDBGrid, dxDBTLCl, dxGrClms, IBCustomDataSet,
  IBQuery, raFunc, cxGraphics, cxControls, cxLookAndFeels,
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
  TfrmNFeGeraFaturamentos = class(TForm)
    pnlClient: TPanel;
    Panel2: TPanel;
    RzBitBtn1: TcxButton;
    RzBitBtn2: TcxButton;
    Actions: TActionList;
    ActPreview: TAction;
    LblStatus: TcxLabel;
    PGB: TProgressBar;
    mtbExporta: TdxMemData;
    mtbExportaLinha: TStringField;
    qryNFeFaturamentos: TIBQuery;
    DataSource: TDataSource;
    dsSeries: TDataSource;
    Panel1: TPanel;
    cmbSerie: TdxLookupEdit;
    Label1: TcxLabel;
    Label2: TcxLabel;
    cmbTpEmissao: TdxPickEdit;
    Panel10: TPanel;
    Panel3: TPanel;
    GRID: TdxDBGrid;
    Panel4: TPanel;
    qryNFeFaturamentosLINHA: TIBStringField;
    GRIDRecId: TdxDBGridColumn;
    GRIDCODIGO: TdxDBGridMaskColumn;
    GRIDCLIENTE: TdxDBGridMaskColumn;
    GRIDNUM_NF: TdxDBGridMaskColumn;
    GRIDCPF_CNPJ: TdxDBGridMaskColumn;
    GRIDDATA: TdxDBGridDateColumn;
    GRIDDATA_CAIXA: TdxDBGridDateColumn;
    GRIDTOTAL: TdxDBGridCurrencyColumn;
    cmbTpFinalidade: TdxPickEdit;
    Label3: TcxLabel;
    procedure FormCreate(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure cmbPessoaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure edCodigoInicialEnter(Sender: TObject);
    procedure edCodigoInicialExit(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
  private
    { Private declarations }
    Grupo, SubGrupo: Integer;
  public
    { Public declarations }
  end;

var
  frmNFeGeraFaturamentos: TfrmNFeGeraFaturamentos;
  Linha, Pagina: Integer;

implementation

uses  Usuarios_DM, Application_DM, Funcoes, NFeManutencao_Form,
  Cadastros_Dm2;

{$R *.DFM}

procedure TfrmNFeGeraFaturamentos.FormCreate(Sender: TObject);
begin
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, Self.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TfrmNFeGeraFaturamentos.ActFecharExecute(Sender: TObject);
begin
  Close;
end;

procedure TfrmNFeGeraFaturamentos.cmbPessoaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TfrmNFeGeraFaturamentos.FormShow(Sender: TObject);
begin
  PGB.Max := FrmNFeManutencao.mtbCliente.RecordCount;
  IniciaComponentes(Self as TForm);
  dmCadastros2.NFe_QrySeries.Close;
  dmCadastros2.NFe_QrySeries.Open;
  cmbTpFinalidade.ItemIndex := 0;
  cmbTpEmissao.ItemIndex := 0;

end;

procedure TfrmNFeGeraFaturamentos.edCodigoInicialEnter(Sender: TObject);
begin
     CORFUNDO ( SENDER );
end;

procedure TfrmNFeGeraFaturamentos.edCodigoInicialExit(Sender: TObject);
begin
     TIRACORFUNDO ( SENDER );
end;

procedure TfrmNFeGeraFaturamentos.RzBitBtn1Click(Sender: TObject);
var
  nome, serie, tpemissao, finalidade  : string;
begin
  //Comboboxes
  mtbExporta.Close;
  if (cmbSerie.text = '') then
  begin
    Application.MessageBox('Defina a série da Nota Fiscal','Aviso',mb_ok + mb_iconerror);
    cmbSerie.SetFocus;
    exit;
  end;
  serie := cmbSerie.text;
  tpemissao := IntToStr(cmbTpEmissao.ItemIndex+1);
  finalidade := IntToStr(cmbTpFinalidade.ItemIndex+1);

  mtbExportaLinha.FieldName := 'NOTA FISCAL|'+IntToStr(FrmNFeManutencao.mtbFaturamentos.RecordCount)+'|';
  mtbExporta.Open;
  if not mtbExporta.IsEmpty then
    mtbExporta.data.Values.Clear;


  FrmNFeManutencao.mtbFaturamentos.First;
  while not FrmNFeManutencao.mtbFaturamentos.eof do
  begin
    //:cnpj,:codigo,:xxbserie,:xxbtimp,:xxbcdv, :xxbfinnfe
    qryNFeFaturamentos.Close;
    qryNFeFaturamentos.parambyname('cnpj').value := dmApp.cnpj;
    qryNFeFaturamentos.parambyname('codigo').value := FrmNFeManutencao.mtbFaturamentosCODIGO.value;
    qryNFeFaturamentos.parambyname('xxbserie').value := serie;
    qryNFeFaturamentos.parambyname('xxbtpemis').value := tpEmissao;
    qryNFeFaturamentos.parambyname('xxbcdv').value := '';//Modulo11();
    qryNFeFaturamentos.parambyname('xxbfinnfe').value := finalidade;
    qryNFeFaturamentos.Open;

    qryNFeFaturamentos.First;
    while not qryNFeFaturamentos.eof do
    begin
      mtbExporta.append;
      mtbExportaLinha.value := qryNFeFaturamentosLinha.asString;
      mtbExporta.Post;

      qryNFeFaturamentos.Next;
    end;

    FrmNFeManutencao.mtbFaturamentos.next;
    PGB.Position := PGB.Position + 1;
  end;
  Nome := ' NFe Faturamentos ['+DateTimeToStr(Now)+'].txt';
  Nome := StringReplace(Nome,'/','-',[rfReplaceAll]);
  Nome := StringReplace(Nome,':',';',[rfReplaceAll]);
  try
    if not(DirectoryExists(DmApp.NFE_DIR_EXP)) then
    begin
      ForceDirectories(DmApp.NFE_DIR_EXP);
      Application.MessageBox(Pchar('Foi criado o seguinte diretório para exportações de NFe: '+DmApp.NFE_DIR_EXP),'Aviso',MB_ICONinformation+MB_OK);
    end;

    mtbExporta.SaveToTextFile(DmApp.NFE_DIR_EXP+'\'+Nome);
    Application.MessageBox('Faturamentos exportados com sucesso','Aviso',mb_iconinformation + mb_ok);
    close;
  except
    Application.MessageBox('Erro ao tentar exportar os faturamentos','Aviso',mb_iconerror + mb_ok);
  end;
end;

end.
