 unit ConsultaVendasVendedor_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, Db, dxExEdtr, dxEdLib, dxCntner, dxEditor, dxDBEdtr,
  dxDBELib, StdCtrls,  RDprint,   ComCtrls, 
  TeeProcs, TeEngine, Chart, DBChart, Series, dxTL, dxDBCtrl, dxDBGrid,
  dxDBTLCl, dxGrClms, cxPropertiesStore, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Menus, cxControls, cxContainer, cxEdit,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue, cxLabel,
  cxButtons;

type
  TFrmConsultaVendasVend = class(TForm)
    pnlClient: TPanel;
    Actions: TActionList;
    ActPreview: TAction;
    Panel2: TPanel;
    RzBitBtn3: TcxButton;
    DsVendedor: TDataSource;
    DS_FatVendasVendedor: TDataSource;
    Panel1: TPanel;
    Label3: TcxLabel;                                
    Ini: TdxDateEdit;
    Label1: TcxLabel;
    Fim: TdxDateEdit;
    cmbVendedor: TdxLookupEdit;
    Label2: TcxLabel;
    LblTitulo: TcxLabel;
    b2: TBevel;
    Label6: TcxLabel;
    RzBitBtn2: TcxButton;
    stgFrmConsultaVendasVend: TcxPropertiesStore;
    Grid: TdxDBGrid;
    GridCODIGO: TdxDBGridMaskColumn;
    GridPESSOA_RAZAO: TdxDBGridMaskColumn;
    GridNOME_NATUREZA: TdxDBGridMaskColumn;
    GridNUM_NF: TdxDBGridMaskColumn;
    GridNUM_CUPOM: TdxDBGridMaskColumn;
    GridDESC_ACRES: TdxDBGridMaskColumn;
    GridVLRLIQUIDO: TdxDBGridMaskColumn;
    GridDATA: TdxDBGridDateColumn;
    GridTOTAL: TdxDBGridMaskColumn;
    procedure FormCreate(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cmbPessoaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure ActPreviewExecute(Sender: TObject);
    procedure cmbVendedorEnter(Sender: TObject);
    procedure cmbVendedorExit(Sender: TObject);
    procedure IniExit(Sender: TObject);
    procedure FimExit(Sender: TObject);
  private
    { Private declarations }
    Grupo, SubGrupo: Integer;
  public
    { Public declarations }
  end;

var
  FrmConsultaVendasVend: TFrmConsultaVendasVend;
  Linha, Pagina: Integer;

implementation

uses Relatorios_DM, Usuarios_DM, Application_DM, Funcoes, Main;

{$R *.DFM}

procedure TFrmConsultaVendasVend.FormCreate(Sender: TObject);
begin
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, Self.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TFrmConsultaVendasVend.ActFecharExecute(Sender: TObject);
begin
  Close;
end;

procedure TFrmConsultaVendasVend.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  //
  Action := caFree;
  FrmConsultaVendasVend := Nil;
  FrmMain.PnlClient.Visible := True;
end;

procedure TFrmConsultaVendasVend.cmbPessoaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmConsultaVendasVend.FormShow(Sender: TObject);
begin
  cmbVendedor.SetFocus;

  //
  IniciaComponentes(Self as TForm);
    Try
       If Not(dsVendedor.DataSet.Active) Then
           dsVendedor.DataSet.Open;
       //
       //
  Except
    On E:EDataBaseError Do
       Begin
         ShowMessage('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ');
         Exit;
       End
    Else
       Begin
         ShowMessage('Ocorreu um Erro não identificado pelo Sistema !');
         Exit;
       End;
  End;
end;

procedure TFrmConsultaVendasVend.ActPreviewExecute(Sender: TObject);
Var
  Total_Geral1, Total_Desconto1, Total_Liquido1: Real;
begin
  If (Ini.date <=0) then
  begin
    MessageDlg('Informe a data inicial', MtError, [MbOk],0);
    Ini.setfocus;
    exit;
  end;

  If (fim.date <=0) then
  begin
    MessageDlg('Informe a data final', MtError, [MbOk],0);
    fim.setfocus;
    exit;
  end;

  If (fim.date < ini.date) then
  begin
    MessageDlg('Período inválido', MtError, [MbOk],0);
    exit;
  end;

  DMRelatorios.Fat_VendasVend.close;
  DMRelatorios.Fat_VendasVend.sql.text := ' select * from ver_fat_vendas_vendedor (:cnpj,:dtinic,:dtfinal,:vend)'+
                                          ' where coalesce(fechada,''N'') = ''S'' and coalesce(enviada_cx,''N'') = ''S'''+
                                          ' and (data_caixa between :dtinic and :dtfinal)';

  DMRelatorios.Fat_VendasVend.ParamByName('DTINIC').asDate    := Ini.Date;
  DMRelatorios.Fat_VendasVend.ParamByName('DTFINAL').asDate   := Fim.Date;
  DMRelatorios.Fat_VendasVend.ParamByName('CNPJ').asString:= DMApp.Cnpj;
  If CmbVendedor.Text = '' Then
    DMRelatorios.Fat_VendasVend.ParamByName('VEND').asInteger :=  0
  else
    DMRelatorios.Fat_VendasVend.ParamByName('VEND').asInteger := DsVendedor.DataSet.fieldByName('CODIGO').Value;

  DMRelatorios.Fat_VendasVend.Open;

  {Total_Geral1 :=0;
  Total_Desconto1:=0;
  Total_Liquido1:=0;
  DMRelatorios.Fat_VendasVend.DisableControls;
  DMRelatorios.Fat_VendasVend.First;
  While not (DMRelatorios.Fat_VendasVend.Eof) Do
  Begin
       Total_Geral1:= Total_Geral1 + DmRelatorios.Fat_VendasVendTOTAL.Value;
       Total_Desconto1:= Total_Desconto1 + DmRelatorios.Fat_VendasVendDESC_ACRES.Value;
       Total_Liquido1:= Total_Liquido1 + DmRelatorios.Fat_VendasVendVLRLIQUIDO.Value;
       DMRelatorios.Fat_VendasVend.Next;
  End;

  DMRelatorios.Fat_VendasVend.EnableControls;}
end;

procedure TFrmConsultaVendasVend.cmbVendedorEnter(Sender: TObject);
begin
     CORFUNDO( SENDER );

end;

procedure TFrmConsultaVendasVend.cmbVendedorExit(Sender: TObject);
begin
     //TROCA A COR PARA A COR SELECIONADA
     TIRACORFUNDO( SENDER );

end;

procedure TFrmConsultaVendasVend.IniExit(Sender: TObject);
begin
   TIRACORFUNDO( SENDER );
   if Ini.Date <= 0 then
    Ini.Date := strtodate('01/01/1901');
end;

procedure TFrmConsultaVendasVend.FimExit(Sender: TObject);
begin
  TIRACORFUNDO( SENDER );
  if Fim.Date <= 0 then
      Fim.Date := Date;
end;

end.
