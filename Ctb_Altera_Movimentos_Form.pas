 unit Ctb_Altera_Movimentos_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, dxCntner, dxEditor, dxExEdtr, dxEdLib, StdCtrls,
  ActnList,  dxTL, dxDBCtrl, dxDBGrid, Db, dxDBTLCl, dxGrClms, Variants,
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
  dxSkinXmas2008Blue, cxLabel;

type
  TFrmCtb_Altera_Movtos = class(TForm)
    pnlClient: TPanel;
    LblTitulo: TcxLabel;
    b2: TBevel;
    Actions: TActionList;
    ActFechar: TAction;
    ActOk: TAction;
    GRID: TdxDBGrid;
    DSource: TDataSource;
    GRIDBANCO: TdxDBGridMaskColumn;
    GRIDCOD_DOC: TdxDBGridMaskColumn;
    GRIDCODIGO: TdxDBGridMaskColumn;
    GRIDCONTA: TdxDBGridMaskColumn;
    GRIDDATA: TdxDBGridDateColumn;
    GRIDDATA_CONCILIACAO: TdxDBGridDateColumn;
    GRIDDOCUMENTO: TdxDBGridMaskColumn;
    GRIDFORNECEDOR: TdxDBGridMaskColumn;
    GRIDHISTORICO: TdxDBGridMaskColumn;
    GRIDORIGEM: TdxDBGridMaskColumn;
    GRIDPLANILHA: TdxDBGridMaskColumn;
    GRIDTIPO: TdxDBGridMaskColumn;
    GRIDVALOR: TdxDBGridMaskColumn;
    procedure pnlClientResize(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure IniKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ActOkExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure IniEnter(Sender: TObject);
    procedure IniExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure GRIDCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
  private
    { Private declarations }
    Function Verifica: Boolean;
  public
    { Public declarations }
    Planilha: Integer;
  end;

var
  FrmCtb_Altera_Movtos: TFrmCtb_Altera_Movtos;

implementation

uses Funcoes, Plano_DM, Application_DM, Usuarios_DM;

{$R *.DFM}

Function TFrmCtb_Altera_Movtos.Verifica: Boolean;
var
   Lancado: Real ;
   Credito, Debito: Real;
begin
     with DmPlano do
     begin
          Credito := 0;
          Debito  := 0;

          Ctb_Altera_Movtos.first ;

          Ctb_Altera_Movtos.DisableControls ;

          while not Ctb_Altera_Movtos.eof do
          begin
               if Ctb_Altera_Movtostipo.Value = 'C'
               THEN
                   Credito := Credito + Ctb_Altera_MovtosVALOR.VALUE
               ELSE
                   DEBITO := DEBITO + Ctb_Altera_MovtosVALOR.VALUE;

               Ctb_Altera_Movtos.Next ;
          end;

          Ctb_Altera_Movtos.EnableControls ;
     end;

     IF ARREDONDA ( CREDITO, 2 ) = ARREDONDA ( DEBITO, 2 )
     THEN BEGIN
          Lancado := arredonda(CREDITO, 2) ;

          Result := True ;
     END
     ELSE BEGIN
          MessageDlg('O Total Lançado de Crédito Não Confere com o valor Lançado para Débitos, Verifique', mtError, [mbOK, mbCancel], 0);
          Result := False
     END;
end;

procedure TFrmCtb_Altera_Movtos.pnlClientResize(Sender: TObject);
begin
  b2.Width := pnlClient.Width - 17;
end;

procedure TFrmCtb_Altera_Movtos.ActFecharExecute(Sender: TObject);
begin
     Modalresult := mrCancel ;
end;

procedure TFrmCtb_Altera_Movtos.IniKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmCtb_Altera_Movtos.ActOkExecute(Sender: TObject);
begin
     Modalresult := mrok ;
end;

procedure TFrmCtb_Altera_Movtos.FormShow(Sender: TObject);
begin
     IniciaComponentes ( Self as TForm );

     //
     Try
        With DmPlano do
        begin
             Ctb_Altera_Movtos.Close ;

             Ctb_Altera_Movtos.SelectSQL.Clear ;

             Ctb_Altera_Movtos.SelectSQL.Add (' SELECT * from CTB_MOVIMENTO_CONTABIL        ');
             Ctb_Altera_Movtos.SelectSQL.Add (' Where CNPJ = :CNPJ AND PLANILHA = :PLANILHA ');

             Ctb_Altera_Movtos.ParamByName ('CNPJ'    ).AsString  := DmApp.Cnpj ;
             Ctb_Altera_Movtos.ParamByName ('PLANILHA').AsInteger := Planilha   ;

             Ctb_Altera_Movtos.Prepare ;

             If Not(DSource.DataSet.Active)
             Then
                 DSource.DataSet.Open;

             Ctb_Altera_Movtos.FetchAll ;
        end;
     except

     end;
end;

procedure TFrmCtb_Altera_Movtos.IniEnter(Sender: TObject);
begin
     CORFUNDO ( SENDER );
end;

procedure TFrmCtb_Altera_Movtos.IniExit(Sender: TObject);
begin
     TIRACORFUNDO ( SENDER );
end;

procedure TFrmCtb_Altera_Movtos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     IF VERIFICA
     THEN BEGIN
          DSource.Dataset.Close;
     END
     ELSE BEGIN
          Action := CaNone ;
     END;
end;

procedure TFrmCtb_Altera_Movtos.FormCreate(Sender: TObject);
begin
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, LblTitulo.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TFrmCtb_Altera_Movtos.GRIDCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
Var
   Value: String;
begin
     if ( not ASelected  ) AND ( NOT (DSource.DataSet.STATE IN [ DSINSERT, DSEDIT ]))
     then begin
          Value := ANode.Values[GRIDTIPO.Index];

          if not VarIsNull(Value)
          then begin
               if Value = 'C'
               then
                   AColor := $00ECAD84
               else
                   AColor := clWhite;
          end
          else begin
               AFont.Color := clBlack;
          end;
     end;
end;

end.
