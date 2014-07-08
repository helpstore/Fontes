unit Localizar_Faturas;

interface

uses
  Windows, Messages,   SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Grids, DBGrids, Db, ActnList, dxDBGrid, dxTL, dxDBCtrl,
  dxCntner,   Buttons, ExtCtrls, dxGrClms, dxExEdtr, dxEditor,
  dxEdLib,  cxPropertiesStore, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinXmas2008Blue, Menus, cxButtons, cxLabel;

type
  TFrmLocFaturas = class(TForm)
    pnlClient: TPanel;
    Bevel3: TBevel;
    pnlTop: TPanel;
    Bevel2: TBevel;
    LblTitulo: TcxLabel;
    RzLabel1: TcxLabel;
    Act: TActionList;
    ActOk: TAction;
    ActCancelar: TAction;
    GRID: TdxDBGrid;
    DSource: TDataSource;
    GRIDCODIGO: TdxDBGridMaskColumn;
    GRIDNOME: TdxDBGridMaskColumn;
    GRIDDATA: TdxDBGridColumn;
    ActTrocaOrdem: TAction;
    Label6: TcxLabel;
    EdCodigo: TdxEdit;
    Label1: TcxLabel;
    EdNome: TdxEdit;
    GRIDTOTAL: TdxDBGridColumn;
    Panel2: TPanel;
    BtnOk: TcxButton;
    BtnCancelar: TcxButton;
    RzLabel3: TcxLabel;
    RDNOME: TRadioButton;
    rdcodigo: TRadioButton;
    stgFrmLocFaturas: TcxPropertiesStore;
    procedure FormShow(Sender: TObject);
    procedure GridKeyPress(Sender: TObject; var Key: Char);
    procedure GridDblClick(Sender: TObject);
    procedure GRIDKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ActOkExecute(Sender: TObject);
    procedure ActCancelarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RDNOMEClick(Sender: TObject);
    procedure ActTrocaOrdemExecute(Sender: TObject);
    procedure EdCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdCodigoExit(Sender: TObject);
    procedure EdNomeExit(Sender: TObject);
    procedure GRIDEnter(Sender: TObject);
    procedure GRIDExit(Sender: TObject);
  private
    { Private declarations }

    function  GetTrecho: Integer ;
    Procedure Ordenar  ;

  public
    { Public declarations }

    property CampTrecho: Integer Read GetTrecho ;

  end;

var
  FrmLocFaturas: TFrmLocFaturas;

implementation

uses
    Application_DM,
    Funcoes,
    Main,
    Financeiro_Dm ;


{$R *.DFM}

function TFrmLocFaturas.GetTrecho: Integer ;
begin
     Result := DmFinanceiro.Manutencao_FaturaCodigo.Value ;
end;

procedure TFrmLocFaturas.FormShow(Sender: TObject);
begin
     IniciaComponentes ( Self as TForm );

     EdCodigo.SetFocus ;
end;

procedure TFrmLocFaturas.GridKeyPress(Sender: TObject; var Key: Char);
begin
     If Key = #13
     then begin
          ModalResult:=mrOk;
          Close ;
     end
     else
         if key = #27
         then begin
              ModalResult:=mrCancel;
              Close ;
         end;
end;

procedure TFrmLocFaturas.GridDblClick(Sender: TObject);
begin
     ModalResult:=mrOk;
     Close ;
end;

procedure TFrmLocFaturas.GRIDKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     If Key = 13
     then begin
          ModalResult:=mrOk;
          Close ;
     end
     else
         if key = 27
         then begin
              ModalResult:=mrCancel;
              Close ;
         end;
end;

procedure TFrmLocFaturas.ActOkExecute(Sender: TObject);
begin
     If FrmLocFaturas.ActiveControl = Grid
     then begin
          ModalResult:=mrOk;
          Close ;
     end;
end;

procedure TFrmLocFaturas.ActCancelarExecute(Sender: TObject);
begin
     ModalResult:=mrCancel;
     Close ;
end;

procedure TFrmLocFaturas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     If FrmLocFaturas.FormStyle = fsMDIChild Then
     Begin
          Action := CaFree ;
          FrmLocFaturas := Nil ;
     end;
end;

procedure TFrmLocFaturas.RDNOMEClick(Sender: TObject);
begin
     Ordenar ;
end;

procedure TFrmLocFaturas.Ordenar;
begin
  //
  If DSource.DataSet.Active Then
     DSource.DataSet.Close;

  If rdcodigo.Checked
  then begin
       EdCodigo.SetFocus ;
  end
  else begin
       If rdNome.Checked
       then begin
            EdNome.SetFocus ;
       end;
  end;

  //
  DSource.DataSet.Open;

  If RdCodigo.Checked
  then begin
       EdCodigo.SetFocus ;
  end
  else begin
       EdNome.SetFocus ;
  end;

end;

procedure TFrmLocFaturas.ActTrocaOrdemExecute(Sender: TObject);
begin
     IF RDCODIGO.Checked
     THEN BEGIN
          RDNOME.Checked := TRUE ;
          ORDENAR ;
     END
     ELSE BEGIN
          IF RDNOME.Checked
          THEN BEGIN
               RDCODIGO.Checked := TRUE ;
               ORDENAR ;
          END;
     END;
end;

procedure TFrmLocFaturas.EdCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmLocFaturas.EdCodigoExit(Sender: TObject);
begin
  If Trim(EdCodigo.Text) <> ''
  then begin

     with DmFinanceiro do
     Begin
          Manutencao_Fatura.Close ;

          Manutencao_Fatura.Sql.Clear ;
          Manutencao_Fatura.Params.Clear ;

          Manutencao_Fatura.Params.CreateParam ( FtString, 'CNPJ'   , PtInput );
          Manutencao_Fatura.Params.CreateParam ( FtString, 'BAIXADA', PtInput );

          Manutencao_Fatura.Sql.Add (' select *  from FIN_FATURAS                           ');

          Manutencao_Fatura.Sql.Add (' where CNPJ = :CNPJ                                   ');

          Manutencao_Fatura.Sql.Add (' and BAIXADA = :BAIXADA                               ');

          Manutencao_Fatura.ParamByName ('BAIXADA').asString  := 'N';

          Manutencao_Fatura.ParamByName ('CNPJ').asString     := DmaPP.Cnpj ;

          IF ( EdCodigo.Text <> '' )
          THEN BEGIN
               Manutencao_Fatura.Params.CreateParam ( FtInteger, 'COD', PtInput );

               Manutencao_Fatura.Sql.Add (' And CODIGO = :COD ' );

               Manutencao_Fatura.ParamByName ('COD').asInteger := strtoint(EdCodigo.Text) ;
          END;

          Manutencao_Fatura.Prepare ;

          Manutencao_Fatura.Open    ;

          Dsource.DataSet.Locate('CODIGO', EdCodigo.Text,[LopartialKey, LocaseInsensitive]);

          EdCodigo.Clear ;

          Grid.SetFocus ;
     end;
  end;
end;

procedure TFrmLocFaturas.EdNomeExit(Sender: TObject);
begin
     with DmFinanceiro do
     Begin
          Manutencao_Fatura.Close ;

          Manutencao_Fatura.Sql.Clear ;

          Manutencao_Fatura.Params.Clear ;

          Manutencao_Fatura.Params.CreateParam ( FtString, 'CNPJ'   , PtInput );

          Manutencao_Fatura.Params.CreateParam ( FtString, 'BAIXADA', PtInput );

          Manutencao_Fatura.Sql.Add (' select *  from FIN_FATURAS                           ');

          Manutencao_Fatura.Sql.Add (' where CNPJ = :CNPJ                                   ');

          Manutencao_Fatura.Sql.Add (' and BAIXADA = :BAIXADA                               ');

          Manutencao_Fatura.ParamByName ('BAIXADA').asString  := 'N';

          Manutencao_Fatura.ParamByName ('CNPJ').asString     := DmaPP.Cnpj ;

          IF ( EDNOME.Text <> '' )
          THEN BEGIN
               Manutencao_Fatura.Params.CreateParam ( FtString, 'NOME', PtInput );

               Manutencao_Fatura.Sql.Add (' And NOME = :NOME ' );

               Manutencao_Fatura.ParamByName ('NOME').asString := EdNome.Text ;
          END;

          Manutencao_Fatura.Prepare ;

          Manutencao_Fatura.Open    ;

          Dsource.DataSet.Locate('NOME', EdNOME.Text,[LopartialKey, LocaseInsensitive]);

          EdCodigo.Clear ;

          Grid.SetFocus ;
     end;
end;

procedure TFrmLocFaturas.GRIDEnter(Sender: TObject);
begin
     ActOk.ShortCut := 13 ;
end;

procedure TFrmLocFaturas.GRIDExit(Sender: TObject);
begin
     ActOk.ShortCut := 0 ;
end;

end.

