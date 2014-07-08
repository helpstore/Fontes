 unit NFeGera_Produtos_Form;

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
  TfrmNFeGeraProdutos = class(TForm)
    pnlClient: TPanel;
    Panel2: TPanel;
    RzBitBtn1: TcxButton;
    RzBitBtn2: TcxButton;
    Actions: TActionList;
    ActPreview: TAction;
    LblStatus: TcxLabel;
    PGB: TProgressBar;
    GRID: TdxDBGrid;
    GRIDRecId: TdxDBGridColumn;
    GRIDCOD_PRODUTO: TdxDBGridMaskColumn;
    GRIDDESCRICAO: TdxDBGridMaskColumn;
    GRIDSel: TdxDBGridCheckColumn;
    mtbExporta: TdxMemData;
    mtbExportaLinha: TStringField;
    qryNFeProdutos: TIBQuery;
    qryNFeProdutosLINHA: TIBStringField;
    DataSource: TDataSource;
    SaveDialog: TSaveDialog;
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
  frmNFeGeraProdutos: TfrmNFeGeraProdutos;
  Linha, Pagina: Integer;

implementation

uses  Usuarios_DM, Application_DM, Funcoes, NFeManutencao_Form;

{$R *.DFM}

procedure TfrmNFeGeraProdutos.FormCreate(Sender: TObject);
begin
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, Self.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TfrmNFeGeraProdutos.ActFecharExecute(Sender: TObject);
begin
  Close;
end;

procedure TfrmNFeGeraProdutos.cmbPessoaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TfrmNFeGeraProdutos.FormShow(Sender: TObject);
begin
  //
  IniciaComponentes(Self as TForm);
    PGB.Max := FrmNFeManutencao.mtbProduto.RecordCount;

end;

procedure TfrmNFeGeraProdutos.edCodigoInicialEnter(Sender: TObject);
begin
     CORFUNDO ( SENDER );
end;

procedure TfrmNFeGeraProdutos.edCodigoInicialExit(Sender: TObject);
begin
     TIRACORFUNDO ( SENDER );
end;

procedure TfrmNFeGeraProdutos.RzBitBtn1Click(Sender: TObject);
var
  nome, linha : string;
begin
  PGB.Max := FrmNFeManutencao.mtbProduto.RecordCount;
  mtbExportaLinha.FieldName := 'PRODUTO|'+IntToStr(FrmNFeManutencao.mtbProduto.RecordCount)+'|';
  mtbExporta.Open;
  if not mtbExporta.IsEmpty then
    mtbExporta.data.Values.Clear;


  FrmNFeManutencao.mtbProduto.First;
  while not FrmNFeManutencao.mtbProduto.eof do
  begin

    qryNFeProdutos.Close;
    qryNFeProdutos.parambyname('cnpj').value := dmApp.cnpj;
    qryNFeProdutos.parambyname('codigo').value := FrmNFeManutencao.mtbProdutoCOD_PRODUTO.value;
    qryNFeProdutos.Open;

    qryNFeProdutos.First;
    while not qryNFeProdutos.eof do
    begin
      linha := StringReplace(qryNFeProdutosLinha.asString,',',' ',[rfReplaceAll]);
      linha := StringReplace(uppercase(linha),'Ç','C',[rfReplaceAll]);
      linha := StringReplace(uppercase(linha),'Õ','O',[rfReplaceAll]);
      linha := StringReplace(uppercase(linha),'Ô','O',[rfReplaceAll]);
      linha := StringReplace(uppercase(linha),'Ê','E',[rfReplaceAll]);
      linha := StringReplace(uppercase(linha),'É','E',[rfReplaceAll]);
      linha := StringReplace(uppercase(linha),'Ã','A',[rfReplaceAll]);
      linha := StringReplace(uppercase(linha),'Â','A',[rfReplaceAll]);
      linha := StringReplace(uppercase(linha),'Á','A',[rfReplaceAll]);
      linha := StringReplace(uppercase(linha),'Í','I',[rfReplaceAll]);
      linha := StringReplace(uppercase(linha),',',' ',[rfReplaceAll]);
      linha := StringReplace(uppercase(linha),'^',' ',[rfReplaceAll]);
      linha := StringReplace(uppercase(linha),'~',' ',[rfReplaceAll]);
      linha := StringReplace(uppercase(linha),'''',' ',[rfReplaceAll]);
      linha := StringReplace(uppercase(linha),'Ú','U',[rfReplaceAll]);
      mtbExporta.append;
      mtbExportaLinha.value := linha;
      mtbExporta.Post;

      qryNFeProdutos.Next;
    end;

    FrmNFeManutencao.mtbProduto.next;
    PGB.Position := PGB.Position + 1;
  end;
  Nome := ' NFe Produtos ['+DateTimeToStr(Now)+'].txt';
  Nome := StringReplace(Nome,'/','-',[rfReplaceAll]);
  Nome := StringReplace(Nome,':',';',[rfReplaceAll]);
  mtbExporta.SaveToTextFile('C:\Sistemas\HelpStore\'+Nome);
  ShowMessage('Arquivo exportado');

end;

end.
