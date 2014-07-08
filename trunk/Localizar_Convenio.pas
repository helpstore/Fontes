  unit Localizar_Convenio;
                                 
interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Grids, DBGrids, Buttons, ExtCtrls, db,
    ActnList,
  dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid, dxCntner,dxExEdtr, 
  dxBar, dxBarDBNav, dxEditor, dxDBEdtr, dxDBELib, 
  Menus, cxPropertiesStore, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, cxButtons, cxLabel;

type
  TFrm_Localizar_Convenios = class(TForm)
    pnlClient: TPanel;
    Act: TActionList;
    ActOk: TAction;
    ActCancelar: TAction;
    GRID: TdxDBGrid;
    DSource: TDataSource;
    LblTitulo: TcxLabel;
    b2: TBevel;
    LblRegistros: TcxLabel;
    ActLookup: TAction;
    GRIDCODIGO: TdxDBGridMaskColumn;
    GRIDNOME_RAZAO: TdxDBGridMaskColumn;
    GRIDFONE: TdxDBGridColumn;
    GRIDFANTASIA: TdxDBGridColumn;
    GRIDDOCUMENTO: TdxDBGridColumn;
    GRIDBLOQUEADO: TdxDBGridColumn;
    Panel2: TPanel;
    BtnOk: TcxButton;
    BtnCancelar: TcxButton;
    GRIDCLASSIFICACAO: TdxDBGridColumn;
    PopUp: TPopupMenu;
    DesabilitarColuna1: TMenuItem;
    ActDesabilitar: TAction;
    DesabilitarNome1: TMenuItem;
    DesabilitarFone1: TMenuItem;
    DesabilitarClassificao1: TMenuItem;
    DesabilitarFantasia1: TMenuItem;
    Desabilitar1: TMenuItem;
    DesabilitarBloqueado1: TMenuItem;
    ActConfigurar: TAction;
    stgFrm_Localizar_Convenios: TcxPropertiesStore;
    procedure FormShow(Sender: TObject);
    procedure GridKeyPress(Sender: TObject; var Key: Char);
    procedure GridDblClick(Sender: TObject);
    procedure GRIDKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ActOkExecute(Sender: TObject);
    procedure ActCancelarExecute(Sender: TObject);
    procedure pnlClientResize(Sender: TObject);
    procedure ActLookupExecute(Sender: TObject);
    procedure DesabilitarColuna1Click(Sender: TObject);
    procedure DesabilitarNome1Click(Sender: TObject);
    procedure DesabilitarFone1Click(Sender: TObject);
    procedure DesabilitarClassificao1Click(Sender: TObject);
    procedure DesabilitarFantasia1Click(Sender: TObject);
    procedure Desabilitar1Click(Sender: TObject);
    procedure DesabilitarBloqueado1Click(Sender: TObject);
    procedure ActDesabilitarExecute(Sender: TObject);
  private
    { Private declarations }

    function  GetTrecho: Integer;

  public
    { Public declarations }
    Cad: String[1] ;

    property CampTrecho: Integer Read GetTrecho ;

  end;

var
  Frm_Localizar_Convenios: TFrm_Localizar_Convenios;
  Campo: String;

implementation

uses Cadastros_DM, Application_DM, Funcoes, PessoasFj_Form, Vendas_Dm;

{$R *.DFM}

function TFrm_Localizar_Convenios.GetTrecho: Integer ;
begin
     Result := DSource.DataSet.FieldByName('PESSOA_FJ').AsInteger ;
end;

procedure TFrm_Localizar_Convenios.FormShow(Sender: TObject);
begin
     IniciaComponentes ( Self as TForm );

     Frm_Localizar_Convenios.PopUp := PopUp ;

     If Not DSource.DataSet.active
     Then
         DSource.DataSet.Open ;

     ActiveControl := GRID;
     Cad           := 'N' ;

     DesabilitarColuna1.Checked      := NOT GRIDCODIGO.Visible ;
     DesabilitarNome1.Checked        := NOT GRIDNOME_RAZAO.Visible ;
     DesabilitarFone1.Checked        := NOT GRIDFONE.Visible ;
     DesabilitarClassificao1.Checked := NOT GRIDCLASSIFICACAO.Visible ;
     DesabilitarFantasia1.Checked    := NOT GRIDFANTASIA.Visible ;
     Desabilitar1.Checked            := NOT GRIDDOCUMENTO.Visible ;
     DesabilitarBloqueado1.Checked   := NOT GRIDBLOQUEADO.Visible ;
end;

procedure TFrm_Localizar_Convenios.GridKeyPress(Sender: TObject; var Key: Char);
begin
     If Key = #13
     then begin
          ModalResult:=mrOk;
     end
     else
         if key = #27
         then
              ModalResult:=mrCancel;
end;

procedure TFrm_Localizar_Convenios.GridDblClick(Sender: TObject);
begin
     ModalResult:=mrOk;
end;

procedure TFrm_Localizar_Convenios.GRIDKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     If Key = 13
     then begin
          ModalResult:=mrOk;
     end
     else
         if key = 27
         then
              ModalResult:=mrCancel;
end;

procedure TFrm_Localizar_Convenios.ActOkExecute(Sender: TObject);
begin
     ModalResult:=mrOk;
end;

procedure TFrm_Localizar_Convenios.ActCancelarExecute(Sender: TObject);
begin
     ModalResult:=mrCancel;
end;

procedure TFrm_Localizar_Convenios.pnlClientResize(Sender: TObject);
begin
  b2.Width := pnlClient.Width - 17;
  LblRegistros.Left := pnlClient.Width - 11 - LblRegistros.Width;
end;

procedure TFrm_Localizar_Convenios.ActLookupExecute(Sender: TObject);
begin
     //LookUp
     Cad := 'S' ;
     ModalResult:=mrCancel;
end;

procedure TFrm_Localizar_Convenios.DesabilitarColuna1Click(Sender: TObject);
begin
     Campo := 'CODIGO' ;
     ActDesabilitar.Execute ;
end;

procedure TFrm_Localizar_Convenios.DesabilitarNome1Click(Sender: TObject);
begin
     Campo := 'NOME' ;
     ActDesabilitar.Execute ;
end;

procedure TFrm_Localizar_Convenios.DesabilitarFone1Click(Sender: TObject);
begin
     Campo := 'FONE' ;
     ActDesabilitar.Execute ;
end;

procedure TFrm_Localizar_Convenios.DesabilitarClassificao1Click(Sender: TObject);
begin
     Campo := 'CLASSIFICACAO' ;
     ActDesabilitar.Execute ;
end;

procedure TFrm_Localizar_Convenios.DesabilitarFantasia1Click(Sender: TObject);
begin
     Campo := 'FANTASIA' ;
     ActDesabilitar.Execute ;
end;

procedure TFrm_Localizar_Convenios.Desabilitar1Click(Sender: TObject);
begin
     Campo := 'CPF' ;
     ActDesabilitar.Execute ;
end;

procedure TFrm_Localizar_Convenios.DesabilitarBloqueado1Click(Sender: TObject);
begin
     Campo := 'BLQ' ;
     ActDesabilitar.Execute ;
end;

procedure TFrm_Localizar_Convenios.ActDesabilitarExecute(Sender: TObject);
begin
     IF CAMPO = 'CODIGO'
     THEN BEGIN
          GRIDCODIGO.Visible := NOT GRIDCODIGO.Visible ;
     END;

     IF CAMPO = 'NOME'
     THEN BEGIN
          GRIDNOME_RAZAO.Visible := NOT GRIDNOME_RAZAO.Visible ;
     END;

     IF CAMPO = 'FONE'
     THEN BEGIN
          GRIDFONE.Visible := NOT GRIDFONE.Visible ;
     END;

     IF CAMPO = 'CLASSIFICACAO'
     THEN BEGIN
          GRIDCLASSIFICACAO.Visible := NOT GRIDCLASSIFICACAO.Visible ;
     END;

     IF CAMPO = 'FANTASIA'
     THEN BEGIN
          GRIDFANTASIA.Visible := NOT GRIDFANTASIA.Visible ;
     END;

     IF CAMPO = 'CPF'
     THEN BEGIN
          GRIDDOCUMENTO.Visible := NOT GRIDDOCUMENTO.Visible ;
     END;

     IF CAMPO = 'BLQ'
     THEN BEGIN
          GRIDBLOQUEADO.Visible := NOT GRIDBLOQUEADO.Visible ;
     END;
end;

end.
