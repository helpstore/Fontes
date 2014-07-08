 unit Localizar_Ordens;

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
  TFrmLocOrdens = class(TForm)
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
    stgFrmLocOrdens: TcxPropertiesStore;
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
  FrmLocOrdens: TFrmLocOrdens;

implementation

uses
    Application_DM,
    Funcoes,
    Main,
    Servicos_DM ;


{$R *.DFM}

function TFrmLocOrdens.GetTrecho: Integer ;
begin
     Result := DmServicos.SelOrdens_ServicosOFC_CODIGO.Value ;
     DmServicos.SelOrdens_Servicos.Close ;
end;

procedure TFrmLocOrdens.FormShow(Sender: TObject);
begin
     IniciaComponentes ( Self as TForm );

     EdCodigo.SetFocus ;
end;

Procedure TFrmLocOrdens.Filtrar;
Var
   Cont: Integer ;
Begin
  //
  If DSource.DataSet.Active Then
     DSource.DataSet.Close;

  With DmServicos do
  begin
       Cont := 0;

       SelOrdens_Servicos.Sql.Clear    ;
       SelOrdens_Servicos.Params.Clear ;

       SelOrdens_Servicos.Sql.Add ( ' SELECT * FROM VER_ORDEM_SERVICO ( :CNPJ ) ' );

       SelOrdens_Servicos.Params.CreateParam (FtString, 'CNPJ', PtInput);

       //
       If trim(EdNome.Text) <> ''
       Then Begin
            If Cont = 0
            then begin
                 SelOrdens_Servicos.Params.CreateParam (FtString, 'NOME', PtInput);

                 SelOrdens_Servicos.Sql.Add ( ' Where NOME >= :NOME ' );

                 SelOrdens_Servicos.ParamByName ( 'NOME' ).AsString := EdNome.Text;

                 Cont := 1;
            END
            ELSE BEGIN
                 SelOrdens_Servicos.Params.CreateParam (FtString, 'NOME', PtInput);

                 SelOrdens_Servicos.Sql.Add ( ' And NOME >= :NOME ' );

                 SelOrdens_Servicos.ParamByName ( 'NOME' ).AsString := EdNome.Text;

                 Cont := 1;
            END;
       end;

       //
       If Trim(EdCodigo.Text) <> ''
       Then begin
            If Cont = 0
            then begin
                 SelOrdens_Servicos.Params.CreateParam (FtInteger, 'COD', PtInput);

                 SelOrdens_Servicos.Sql.Add ( ' Where CODIGO >= :COD ' );

                 SelOrdens_Servicos.ParamByName ( 'COD' ).AsInteger := strtoint(trim(EdCodigo.Text));

                 Cont := 1;
            end
            else begin
                 SelOrdens_Servicos.Params.CreateParam (FtInteger, 'COD', PtInput);

                 SelOrdens_Servicos.Sql.Add ( ' and CODIGO >= :COD ' );

                 SelOrdens_Servicos.ParamByName ( 'COD' ).AsInteger := strtoint(trim(EdCodigo.Text));
            end;

       end;

       If rdNome.Checked
       then begin
            //Nome do cliente
            SelOrdens_Servicos.Sql.Add ( ' order by NOME ' );
       end
       else begin
            //Codigo da Venda
            SelOrdens_Servicos.Sql.Add ( ' order by CODIGO ' );
       end;
       //
  end;
  //
  DSource.DataSet.Open;
End;

procedure TFrmLocOrdens.GridKeyPress(Sender: TObject; var Key: Char);
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

procedure TFrmLocOrdens.GridDblClick(Sender: TObject);
begin
     ModalResult:=mrOk;
     Close ;
end;

procedure TFrmLocOrdens.GRIDKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TFrmLocOrdens.ActOkExecute(Sender: TObject);
begin
     If FrmLocOrdens.ActiveControl = Grid
     then begin
          ModalResult:=mrOk;
     end;
end;

procedure TFrmLocOrdens.ActCancelarExecute(Sender: TObject);
begin
     ModalResult:=mrCancel;
     Close ;
end;

procedure TFrmLocOrdens.RDNOMEClick(Sender: TObject);
begin
     Ordenar ;
end;

procedure TFrmLocOrdens.Ordenar;
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

procedure TFrmLocOrdens.ActTrocaOrdemExecute(Sender: TObject);
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

procedure TFrmLocOrdens.EdCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmLocOrdens.EdCodigoExit(Sender: TObject);
begin
     TiraCorFundo( Sender );

     If Trim(EdCodigo.Text) <> ''
     then begin
          Filtrar ;
          EdCodigo.Clear ;
          Grid.SetFocus ;
     end;
end;

procedure TFrmLocOrdens.EdNomeExit(Sender: TObject);
begin
     TiraCorFundo( Sender );

     If Trim(EdNome.Text) <> ''
     then begin
          Filtrar ;
          EdNome.Clear ;
          Grid.SetFocus ;
     end;
end;

procedure TFrmLocOrdens.GRIDEnter(Sender: TObject);
begin
     ActOk.ShortCut := 13 ;
end;

procedure TFrmLocOrdens.GRIDExit(Sender: TObject);
begin
     ActOk.ShortCut := 0 ;
end;

procedure TFrmLocOrdens.EdCodigoEnter(Sender: TObject);
begin
     CorFundo( Sender );
end;

procedure TFrmLocOrdens.EdNomeEnter(Sender: TObject);
begin
     CorFundo( Sender );
end;

end.

