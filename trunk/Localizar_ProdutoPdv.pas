 unit Localizar_ProdutoPdv;

interface

uses               
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Grids, DBGrids, Db, ActnList, dxDBGrid, dxTL, dxDBCtrl,
  dxCntner,   Buttons, ExtCtrls, dxGrClms, dxExEdtr, dxEditor,
  dxEdLib, IBQuery,  cxPropertiesStore, cxGraphics, cxControls,
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
  TFrmLocProdutoPdv = class(TForm)
    pnlClient: TPanel;
    Bevel3: TBevel;
    pnlTop: TPanel;
    Bevel2: TBevel;
    LblTitulo: TcxLabel;
    Act: TActionList;
    ActOk: TAction;
    ActCancelar: TAction;
    DSource: TDataSource;
    ActTrocaOrdem: TAction;
    Label6: TcxLabel;
    EdCodigo: TdxEdit;
    Label1: TcxLabel;
    EdNome: TdxEdit;
    GRID: TDBGrid;
    Panel2: TPanel;
    RzBitBtn1: TcxButton;
    BtnCancelar: TcxButton;
    RDNOME: TRadioButton;
    RdCodigo: TRadioButton;
    stgFrmLocProdutoPdv: TcxPropertiesStore;
    procedure FormShow(Sender: TObject);
    procedure GridKeyPress(Sender: TObject; var Key: Char);
    procedure GridDblClick(Sender: TObject);
    procedure GRIDKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ActOkExecute(Sender: TObject);
    procedure ActCancelarExecute(Sender: TObject);
    procedure EdCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdCodigoExit(Sender: TObject);
    procedure EdNomeExit(Sender: TObject);
    procedure GRIDEnter(Sender: TObject);
    procedure GRIDExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure EdCodigoEnter(Sender: TObject);
    procedure EdNomeEnter(Sender: TObject);
  private
    { Private declarations }

    function  GetTrecho: String;
    Procedure Ordenar  ;

  public
    { Public declarations }

    property CampTrecho: String Read GetTrecho ;

  end;

var
  FrmLocProdutoPdv: TFrmLocProdutoPdv;

implementation

uses
    Application_DM,
    Funcoes,
    LocalizarProd_DM,
    Main,
    Cadastros_DM ;


{$R *.DFM}

function TFrmLocProdutoPdv.GetTrecho: String ;
begin
     Result := DSource.DataSet.FieldByName ('CODIGO').AsString ;
end;

procedure TFrmLocProdutoPdv.FormShow(Sender: TObject);
begin
     //TROCANDO COR DE FUNDO
     IF (( TRIM(DMAPP.PDV_COR_FUNDO) <> '') and ( TRIM(DMAPP.PDV_COR_FUNDO) <> '0'))
     THEN BEGIN
          pnlTop.Color      := STRTOINT(TRIM(DMAPP.PDV_COR_FUNDO));
          pnlClient.Color   := STRTOINT(TRIM(DMAPP.PDV_COR_FUNDO));
          Panel2.Color      := STRTOINT(TRIM(DMAPP.PDV_COR_FUNDO));
     END;

     IF ((TRIM(DMAPP.PDV_COR_FONTE) <> '') and (TRIM(DMAPP.PDV_COR_FONTE) <> '0'))
     THEN BEGIN
          LblTitulo.Style.Font.Color   := STRTOINT(TRIM(DMAPP.PDV_COR_FONTE));
          Label6.Style.Font.Color      := STRTOINT(TRIM(DMAPP.PDV_COR_FONTE));
          Label1.Style.Font.Color      := STRTOINT(TRIM(DMAPP.PDV_COR_FONTE));
          RdCodigo.Font.Color    := STRTOINT(TRIM(DMAPP.PDV_COR_FONTE));
          RDNOME.Font.Color      := STRTOINT(TRIM(DMAPP.PDV_COR_FONTE));
          RzBitBtn1.Font.Color   := STRTOINT(TRIM(DMAPP.PDV_COR_FONTE));
          BtnCancelar.Font.Color := STRTOINT(TRIM(DMAPP.PDV_COR_FONTE));
     end;

     IF (TRIM(EDCODIGO.Text) = '') 
     THEN BEGIN
          If UPPERCASE(DmApp.ORDENA_VENDA) <> 'NOME'
          then begin
               rdcodigo.Checked := True;
               EdCodigo.SetFocus ;
          end
          else begin
               rdNome.Checked := True;
               EdNome.SetFocus ;
          end;
     END
     ELSE
         GRID.SETFOCUS ;
end;

procedure TFrmLocProdutoPdv.GridKeyPress(Sender: TObject; var Key: Char);
begin
     If Key = #13
     then begin
          ModalResult:=mrOk;
     end
     else
         if key = #27
         then begin
              If RdCodigo.Checked
              then
                  EdCodigo.SetFocus
              else
                  EdNome.SetFocus
         end;
end;

procedure TFrmLocProdutoPdv.GridDblClick(Sender: TObject);
begin
     ModalResult:=mrOk;
end;

procedure TFrmLocProdutoPdv.GRIDKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
    If Key = 13
     then begin
          ModalResult:=mrOk;
     end
     else
         if key = 27
         then begin
              If RdCodigo.Checked
              then
                  EdCodigo.SetFocus
              else
                  EdNome.SetFocus
         end;
end;

procedure TFrmLocProdutoPdv.ActOkExecute(Sender: TObject);
begin
     ModalResult:=mrOk;
end;

procedure TFrmLocProdutoPdv.ActCancelarExecute(Sender: TObject);
begin
     ModalResult:=mrCancel;
end;

procedure TFrmLocProdutoPdv.Ordenar;
begin
     If RdNome.Checked
     then begin
          DSource.DataSet := DMLocalizarProd.ProdutosA ;

          EdNome.SetFocus ;
     end
     else begin
          DSource.DataSet := DMLocalizarProd.Produtos ;

          EdCodigo.SetFocus ;
     end;
end;

procedure TFrmLocProdutoPdv.EdCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmLocProdutoPdv.EdCodigoExit(Sender: TObject);
Var
   Aux : String;
begin
     TiraCorFundo ( Sender );

     If Trim(EdCodigo.Text) <> ''
     then begin
     //Novo Codigo Para Localizar

          Aux := EdCodigo.Text ;

          If DmApp.Elimina_Zeros = 'S'
          THEN BEGIN
               While Copy ( Aux, 1, 1 ) = '0' DO
               BEGIN
                    Aux := Copy ( Aux, 2, 15 );
               End;
          END;

          If DmApp.Acrescenta_Zeros = 'S'
          THEN BEGIN
               While Length ( Aux ) < 10 DO
               BEGIN
                    Aux := '0' + Aux ;
               End;
          END ;

          EdCodigo.Text := Aux ;

	  //FECHA O REGISTRO E TRAZ OS NOVOS REGISTROS
          DMLocalizarProd.Produtos.Close ;
          DMLocalizarProd.Produtos.ParamByName ( 'PRODUTO' ).AsString := EdCodigo.Text ;
	  DMLocalizarProd.Produtos.Open ;

          //LocateNext = Apos a Posicao corrente do Cursor
          If ( Dsource.DataSet.FieldByName('CODIGO').Value <= EdCodigo.Text ) and ( RdCodigo.Checked )
          then begin
               (Dsource.DataSet as TIBQuery).LocateNext('CODIGO',EdCodigo.Text,[LopartialKey, LocaseInsensitive])
          end
          else begin
               Dsource.DataSet.Locate('CODIGO',EdCodigo.Text,[LopartialKey, LocaseInsensitive])
          end;

          EdCodigo.Clear ;
          Grid.SetFocus ;
     end;
end;

procedure TFrmLocProdutoPdv.EdNomeExit(Sender: TObject);
begin
     TiraCorFundo ( Sender );

     If Trim(EdNome.Text) <> ''
     then begin
	  //FECHA O REGISTRO E TRAZ OS NOVOS REGISTROS
          DMLocalizarProd.ProdutosA.Close ;
          DMLocalizarProd.ProdutosA.ParamByName ( 'PRODUTO' ).AsString := EdNome.Text ;
	  DMLocalizarProd.ProdutosA.Open ;

          //LocateNext = Apos a Posicao corrente do Cursor
          If ( Dsource.DataSet.FieldByName('NOME').Value <= EdNome.Text ) and ( RdNome.Checked )
          then begin
               (Dsource.DataSet as TIBQuery).LocateNext('NOME',EdNome.Text,[LopartialKey, LocaseInsensitive])
          end
          else begin
               Dsource.DataSet.Locate('NOME',EdNome.Text,[LopartialKey, LocaseInsensitive])
          end;
          EdNome.Clear ;
          Grid.SetFocus ;
     end;
end;

procedure TFrmLocProdutoPdv.GRIDEnter(Sender: TObject);
begin
     ActOk.ShortCut       := 13 ;
     ActCancelar.ShortCut := VK_F12 ;
end;

procedure TFrmLocProdutoPdv.GRIDExit(Sender: TObject);
begin
     ActOk.ShortCut       := VK_F12 ;
     ActCancelar.ShortCut := 27 ;
end;

procedure TFrmLocProdutoPdv.FormCreate(Sender: TObject);
begin
     If UPPERCASE(DmApp.ORDENA_VENDA) <> 'NOME'
     then begin
          DSource.DataSet := DMLocalizarProd.Produtos ;
     END
     ELSE BEGIN
          DSource.DataSet := DMLocalizarProd.ProdutosA  ;
     END;
end;

procedure TFrmLocProdutoPdv.EdCodigoEnter(Sender: TObject);
begin
     CorFundo( Sender );

     EdCodigo.Clear ;

     RDNOME.Checked := False ;
     EdNome.Clear ;

     RdCodigo.Checked := True ;
     Ordenar ;     
end;

procedure TFrmLocProdutoPdv.EdNomeEnter(Sender: TObject);
begin
     CorFundo( Sender );

     EdNome.Clear ;
     EdCodigo.Clear;
     RdCodigo.Checked := False ;

     RdNome.Checked := True ;
     Ordenar ;
end;

end.

