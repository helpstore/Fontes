 unit Localizar_Vendas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
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
  TFrmLocVendas = class(TForm)
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
    Panel2: TPanel;
    BtnTrocar: TcxButton;
    RzBitBtn1: TcxButton;
    BtnCancelar: TcxButton;
    RDNOME: TRadioButton;
    RdCodigo: TRadioButton;
    stgFrmLocVendas: TcxPropertiesStore;
    procedure FormShow(Sender: TObject);
    procedure GridKeyPress(Sender: TObject; var Key: Char);
    procedure GridDblClick(Sender: TObject);
    procedure GRIDKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ActOkExecute(Sender: TObject);
    procedure ActCancelarExecute(Sender: TObject);
    procedure RDNOMEClick(Sender: TObject);
    procedure ActTrocaOrdemExecute(Sender: TObject);
    procedure EdCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdCodigoExit(Sender: TObject);
    procedure EdNomeExit(Sender: TObject);
    procedure GRIDEnter(Sender: TObject);
    procedure GRIDExit(Sender: TObject);
    procedure EdCodigoEnter(Sender: TObject);
    procedure EdNomeEnter(Sender: TObject);
  private
    { Private declarations }

    function  GetTrecho: Integer ;
    Procedure Ordenar  ;

  public
    { Public declarations }

    property  CampTrecho: Integer Read GetTrecho ;
    Procedure Filtrar;

  end;

var
  FrmLocVendas: TFrmLocVendas;

implementation

uses
    Application_DM,
    Funcoes,
    Main,
    Vendas_Dm ;


{$R *.DFM}

function TFrmLocVendas.GetTrecho: Integer ;
begin
     Result := DmVendas.Localizar_VendasCODIGO.Value ;
     DmVendas.Localizar_Vendas.Close ;
end;

procedure TFrmLocVendas.FormShow(Sender: TObject);
begin
     IniciaComponentes ( Self as TForm );

     EdCodigo.SetFocus ;
end;

Procedure TFrmLocVendas.Filtrar;
Var
   Cont: Integer ;
Begin
  //
  If DSource.DataSet.Active Then
     DSource.DataSet.Close;

  With DmVendas do
  begin
       Cont := 0;

       Localizar_Vendas.Sql.Clear    ;
       Localizar_Vendas.Params.Clear ;

       Localizar_Vendas.Sql.Add ( ' SELECT * FROM VER_VENDAS ( :CNPJ, :TP ) ' );

       Localizar_Vendas.Params.CreateParam (FtString, 'CNPJ', PtInput);
       Localizar_Vendas.Params.CreateParam (FtString, 'TP'  , PtInput);

       Localizar_Vendas.ParamByName ( 'TP' ).AsString := 'N';

       //VENDAS ENVIADAS NO CAIXA
       If DmApp.VER_ENVIADAS <> 'S'
       Then begin
            Localizar_Vendas.Params.CreateParam (FtString, 'ENV', PtInput);

            Localizar_Vendas.Sql.Add ( ' Where ENVIADA_CX = :ENV ' );

            Localizar_Vendas.ParamByName ( 'ENV' ).AsString := 'N' ;

            Cont := 1;
       end
       ELSE BEGIN
            Localizar_Vendas.Params.CreateParam (FtString, 'ENV', PtInput);

            Localizar_Vendas.Sql.Add ( ' Where ENVIADA_CX <> :ENV ' );

            Localizar_Vendas.ParamByName ( 'ENV' ).AsString := 'X' ;

            Cont := 1;
       END;

       //
       If trim(EdNome.Text) <> ''
       Then Begin
            If Cont = 0
            then begin
                 Localizar_Vendas.Params.CreateParam (FtString, 'NOME', PtInput);

                 Localizar_Vendas.Sql.Add ( ' Where NOME >= :NOME ' );

                 Localizar_Vendas.ParamByName ( 'NOME' ).AsString := EdNome.Text;

                 Cont := 1;
            END
            ELSE BEGIN
                 Localizar_Vendas.Params.CreateParam (FtString, 'NOME', PtInput);

                 Localizar_Vendas.Sql.Add ( ' And NOME >= :NOME ' );

                 Localizar_Vendas.ParamByName ( 'NOME' ).AsString := EdNome.Text;

                 Cont := 1;
            END;
       end;

       //
       If Trim(EdCodigo.Text) <> ''
       Then begin
            If Cont = 0
            then begin
                 Localizar_Vendas.Params.CreateParam (FtInteger, 'COD', PtInput);

                 Localizar_Vendas.Sql.Add ( ' Where CODIGO >= :COD ' );

                 Localizar_Vendas.ParamByName ( 'COD' ).AsInteger := strtoint(trim(EdCodigo.Text));

                 Cont := 1;
            end
            else begin
                 Localizar_Vendas.Params.CreateParam (FtInteger, 'COD', PtInput);

                 Localizar_Vendas.Sql.Add ( ' and CODIGO >= :COD ' );

                 Localizar_Vendas.ParamByName ( 'COD' ).AsInteger := strtoint(trim(EdCodigo.Text));
            end;

       end;

       If rdNome.Checked
       then begin
            //Nome do cliente
            Localizar_Vendas.Sql.Add ( ' order by NOME ' );
       end
       else begin
            //Codigo da Venda
            Localizar_Vendas.Sql.Add ( ' order by CODIGO ' );
       end;
       //
  end;
  //
  DSource.DataSet.Open;
End;

procedure TFrmLocVendas.GridKeyPress(Sender: TObject; var Key: Char);
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

procedure TFrmLocVendas.GridDblClick(Sender: TObject);
begin
     ModalResult:=mrOk;
     Close ;
end;

procedure TFrmLocVendas.GRIDKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TFrmLocVendas.ActOkExecute(Sender: TObject);
begin
     If FrmLocVendas.ActiveControl = Grid
     then begin
          ModalResult:=mrOk;
          Close ;
     end;
end;

procedure TFrmLocVendas.ActCancelarExecute(Sender: TObject);
begin
     ModalResult:=mrCancel;
     Close ;
end;

procedure TFrmLocVendas.RDNOMEClick(Sender: TObject);
begin
     Ordenar ;
end;

procedure TFrmLocVendas.Ordenar;
begin
  //
  If rdcodigo.Checked
  then begin
       rdNome.Checked := True ;
       EdNome.SetFocus ;
       Filtrar ;
  end
  else begin
       If rdNome.Checked
       then begin
            rdcodigo.Checked := True ;
            EdCodigo.SetFocus ;
            Filtrar ;
       end;
  end;

  //
end;

procedure TFrmLocVendas.ActTrocaOrdemExecute(Sender: TObject);
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

procedure TFrmLocVendas.EdCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmLocVendas.EdCodigoExit(Sender: TObject);
begin
     TiraCorFundo( Sender );

     If Trim(EdCodigo.Text) <> ''
     then begin
          Filtrar ;
          EdCodigo.Clear ;
          Grid.SetFocus ;
     end;
end;

procedure TFrmLocVendas.EdNomeExit(Sender: TObject);
begin
     TiraCorFundo( Sender );

     If Trim(EdNome.Text) <> ''
     then begin
          Filtrar ;
          EdNome.Clear ;
          Grid.SetFocus ;
     end;
end;

procedure TFrmLocVendas.GRIDEnter(Sender: TObject);
begin
     ActOk.ShortCut := 13 ;
end;

procedure TFrmLocVendas.GRIDExit(Sender: TObject);
begin
     ActOk.ShortCut := 0 ;
end;

procedure TFrmLocVendas.EdCodigoEnter(Sender: TObject);
begin
     CorFundo( Sender );
end;

procedure TFrmLocVendas.EdNomeEnter(Sender: TObject);
begin
     CorFundo( Sender );
end;

end.

