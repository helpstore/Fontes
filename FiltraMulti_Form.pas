 unit FiltraMulti_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
    RDprint, Db, ActnList, dxDBGrid, dxDBTLCl, dxGrClms, dxTL,
  dxDBCtrl, dxCntner, StdCtrls, Buttons, ExtCtrls, 
    dxBar, cxPropertiesStore, dxExEdtr, variants, Grids,
  DBGrids, IBCustomDataSet, IBQuery, dxmdaset, cxLookAndFeels,
  cxGraphics, cxControls, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue,
  dxSkinsdxBarPainter, cxClasses, cxLabel;


type

  TfrmFiltraMulti = class(TForm)
    pnlForm: TPanel;
    LBLCLIENTE: TcxLabel;
    Actions: TActionList;
    ActFechar: TAction;
    ActProdutos: TAction;
    ActImprimir: TAction;
    ActLibera: TAction;
    LBLLIMITE: TcxLabel;
    BarManager: TdxBarManager;
    dxBarButton1: TdxBarButton;
    LimiteAtual: TdxBarButton;
    Panel1: TPanel;
    Panel6: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    GridSelecionar: TdxDBGrid;
    GridSelecionados: TdxDBGrid;
    btnConfirmar: TdxBarButton;
    btnMarcarTodas: TdxBarButton;
    btnDesmarcarTodas: TdxBarButton;
    dsSelecionados: TDataSource;
    mtbSelecionado: TdxMemData;
    dsSelecionar: TDataSource;
    LookAndFeel: TcxLookAndFeelController;
    procedure ActFecharExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);

  private
    { Private declarations }
  public
    Nome: String ;
    Codigo: Integer ;
    Autorizou: Boolean ;
    procedure CriaCampos(Grid: TDxDBGrid);
    { Public declarations }
  end;

var
  frmFiltraMulti: TfrmFiltraMulti;
  INI, FIM: Integer;
  AUX, STR: String;
  Inicial, Final: Integer ;
  Pagina, Lin   : Integer ;
  SomaReceber, SomaCheque, SomaFatura, SomaFaturaFutura: Real ;

procedure GenerateColumnName(Col: TdxDBTreeListColumn);

implementation

{$R *.DFM}
uses
    Cadastros_DM,
    Application_DM,
    Funcoes,
    Main,
    Financeiro_Dm,
    Empresas_DM,
    Vendas_Dm,
    MensagemClassificacao_Form, Vendas_DM2;



procedure TfrmFiltraMulti.ActFecharExecute(Sender: TObject);
begin
  Autorizou := False ;
  close ;
end;

procedure TfrmFiltraMulti.FormShow(Sender: TObject);
begin
  IniciaComponentes ( Self as TForm );
  Autorizou := true ;
end;

function TrimAll(const S: string): string;
const
  ValidChar = ['A'..'Z', 'a'..'z', '_', '0'..'9'];
var
  I: Integer;
begin
  Result := '';
  for I := 1 to Length(S) do
    if S[i] in ValidChar then Result := Result + S[i];
end;


procedure GenerateColumnName(Col: TdxDBTreeListColumn);
begin
  try
    with Col do Name := ATreeList.Name + TrimAll(FieldName);
  except
    on EComponentError do {Ignore rename errors };
  end;
end;

procedure TfrmFiltraMulti.FormCreate(Sender: TObject);
var
  I: Integer;
  C: TdxDBTreeListColumnClass;
  Res: Integer;
  Column: TdxDBTreeListColumn;
begin
  CriaCampos(GridSelecionar);
  mtbSelecionado.CreateFieldsFromDataSet(TDataSet(dsSelecionar.DataSet));
  CriaCampos(GridSelecionados);
end;

procedure TfrmFiltraMulti.CriaCampos(Grid: TDxDBGrid);
var
  I: Integer;
  C: TdxDBTreeListColumnClass;
  Res: Integer;
  Column: TdxDBTreeListColumn;
begin
    with Grid do
    begin
      BeginUpdate;
      BeginGrouping;
      try
          DefaultFields := False;
          ClearGroupColumns;
          DestroyColumns;

          if Assigned(DataLink.DataSet) then
          begin
            for I := 0 to DataLink.DataSet.FieldCount - 1 do
            begin
              C := TdxDBTreeListColumnClass(GetClass('TdxDBGridMaskColumn'));
              if C <> nil then
              begin
                Column := CreateColumnEx(C, Grid);
                Column.FieldName := DataLink.DataSet.Fields[I].FieldName;
                Column.Visible :=  True;
                 // generate column name
                GenerateColumnName(Column);
              end;
            end;
          end;

      finally
         EndGrouping;
         EndUpdate;
      end;
    end;

    //Encontrando a chave
    i := 0;
    While ( i <= TDataSet(Grid.DataSource.DataSet).FieldCount - 1) do
    begin
     if (TDataSet(Grid.DataSource.DataSet).Fields.Fields[i].tag = 1) then
     begin
       GridSelecionar.KeyField := TIBQuery(Grid.DataSource.DataSet).Fields.Fields[i].FieldName;
       break;
     end;
     inc(i);
    end;

    TDataSet(Grid.DataSource.DataSet).Close;
    TDataSet(Grid.DataSource.DataSet).Open;
end;

end.
