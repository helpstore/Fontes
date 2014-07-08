 unit VendasSubgrupo_FRel;

interface
                  
uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, Db, dxExEdtr, dxEdLib, dxCntner, dxEditor, dxDBEdtr,
  dxDBELib, StdCtrls,  RDprint,   ComCtrls,
    ppDB, ppDBPipe, ppParameter, ppModule, raCodMod, ppCtrls,
  ppBands, ppVar, ppPrnabl, ppClass, ppCache, ppComm, ppRelatv, ppProd,
  ppReport, cxPropertiesStore, cxGraphics, cxControls, cxLookAndFeels,
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
  TFRelVendasSubGrupos = class(TForm)
    pnlClient: TPanel;
    Panel2: TPanel;
    RzBitBtn1: TcxButton;
    RzBitBtn2: TcxButton;
    Actions: TActionList;
    ActPreview: TAction;
    LblStatus: TcxLabel;
    ANDA: TProgressBar;
    Label3: TcxLabel;
    Label1: TcxLabel;
    Ini: TdxDateEdit;
    Fim: TdxDateEdit;
    Label2: TcxLabel;
    cmbGrupo: TdxLookupEdit;
    LblTitulo: TcxLabel;
    b2: TBevel;
    DsGrupo: TDataSource;
    CkTipo: TdxCheckEdit;
    ActFechar: TAction;
    Label4: TcxLabel;
    CmbVendedor: TdxLookupEdit;
    DsVendedor: TDataSource;
    Label5: TcxLabel;
    cmbSubGrupo: TdxLookupEdit;
    DsSubGrupo: TDataSource;
    rptVendaSub: TppReport;
    ppTitleBand6: TppTitleBand;
    ppShape5: TppShape;
    lblEmpresa: TppLabel;
    ppLabel62: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppHeaderBand2: TppHeaderBand;
    ppLabel63: TppLabel;
    ppLabel64: TppLabel;
    ppLabel65: TppLabel;
    ppLabel66: TppLabel;
    ppLabel67: TppLabel;
    ppLabel68: TppLabel;
    ppLine5: TppLine;
    ppDetailBand6: TppDetailBand;
    ppDBText57: TppDBText;
    ppDBText58: TppDBText;
    ppDBText60: TppDBText;
    ppDBText61: TppDBText;
    ppFooterBand4: TppFooterBand;
    ppShape9: TppShape;
    ppSystemVariable3: TppSystemVariable;
    ppSummaryBand2: TppSummaryBand;
    ppLabel73: TppLabel;
    ppLine11: TppLine;
    raCodeModule4: TraCodeModule;
    ppParameterList2: TppParameterList;
    dbVendaSub: TppDBPipeline;
    dsVendaSub: TDataSource;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLabel1: TppLabel;
    ppLine1: TppLine;
    ppDBText3: TppDBText;
    ppLine2: TppLine;
    ppLabel2: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    lblFiltro: TppLabel;
    stgFRelVendasSubGrupos: TcxPropertiesStore;
    ppAppRepresentante: TppDBPipeline;
    dsApp: TDataSource;
    ppDBText4: TppDBText;
    procedure FormCreate(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cmbPessoaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure ActPreviewExecute(Sender: TObject);
    procedure IniEnter(Sender: TObject);
    procedure IniExit(Sender: TObject);
    procedure FimExit(Sender: TObject);

  private
    { Private declarations }
    Grupo, SubGrupo: Integer;
  public
    { Public declarations }
  end;

var
  FRelVendasSubGrupos: TFRelVendasSubGrupos;
  Linha, Pagina: Integer;

implementation

uses Relatorios_DM, Usuarios_DM, Application_DM, Funcoes;

{$R *.DFM}



procedure TFRelVendasSubGrupos.FormCreate(Sender: TObject);
begin
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, Self.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);

end;

procedure TFRelVendasSubGrupos.ActFecharExecute(Sender: TObject);
begin
     Close;
end;

procedure TFRelVendasSubGrupos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  //
  dsVendedor.DataSet.Close ;
  DsSubGrupo.DataSet.Close ;
  DsGrupo.DataSet.Close ;

  //
  Action := caFree;
  FRelVendasSubGrupos := Nil;
end;

procedure TFRelVendasSubGrupos.cmbPessoaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFRelVendasSubGrupos.FormShow(Sender: TObject);
begin
  //
  IniciaComponentes(Self as TForm);
    Try

    If Not(dsGrupo.DataSet.Active) Then
       dsGrupo.DataSet.Open;

    If Not(dsSubGrupo.DataSet.Active) Then
       dsSubGrupo.DataSet.Open;

    If Not(dsVendedor.DataSet.Active) Then
       dsVendedor.DataSet.Open;

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

procedure TFRelVendasSubGrupos.ActPreviewExecute(Sender: TObject);
Var
   Cod_Grupo: Integer;
   sfiltro : string;
begin
  //
  Cod_Grupo := 0;
  //
  lblStatus.caption := 'Selecionando Dados' ;
  lblStatus.Visible := True ;
  lblStatus.Refresh ;

  If (Ini.date <=0) or (fim.date <=0)Then
  Begin
    MessageDlg('Informe o Período', MtError, [MbOk],0);
    ini.setfocus;
    exit;
  end;

  If cmbGrupo.text = '' then
  begin
    MessageDlg('Informe o Grupo', MtError, [MbOk],0);
    cmbGrupo.SETFOCUS ;
    EXIT ;
  END;

  If cmbSubGrupo.text = ''then
  begin
    MessageDlg('Informe o Sub-Grupo', MtError, [MbOk],0);
    cmbSubGrupo.SETFOCUS ;
    EXIT ;
  END;

  with DMRelatorios do
  begin
    Fat_VendasSubGrupo.Close ;
    Fat_VendasSubGrupo.SQL.text :=  ' Select * from VER_FAT_VENDAS_SUBGRUPO (:CNPJ,:DTINI,:DTFIM,:COD_GRUPO,:COD_SUBGRUPO) WHERE  FECHADA = :TIPO '  ;
    Fat_VendasSubGrupo.ParamByName('CNPJ').asString:= DMApp.Cnpj;
    Fat_VendasSubGrupo.ParamByName('DTINI').asDate := Ini.Date;
    Fat_VendasSubGrupo.ParamByName('DTFIM').asDate := Fim.Date;
    Fat_VendasSubGrupo.ParamByName('COD_GRUPO'     ).asInteger := cmbGrupo.LookupKeyValue;
    Fat_VendasSubGrupo.ParamByName('COD_SUBGRUPO'  ).asInteger := cmbSubGrupo.LookupKeyValue;

    If CmbVendedor.text <> '' then
      Fat_VendasSubGrupo.SQL.Add ('  and VENDEDOR = '+inttostr(CmbVendedor.LookupKeyValue));

    Fat_VendasSubGrupo.SQL.Add ( ' order by VENDEDOR, NOME_PRODUTO, PRODUTO ' );

    If NOT CkTipo.Checked  then
      Fat_VendasSubGrupo.ParamByName('TIPO'  ).asString:= 'S'
    else
      Fat_VendasSubGrupo.ParamByName('TIPO'  ).asString:= 'N';

    Fat_VendasSubGrupo.open;

    lblfiltro.text := 'Filtro - Grupo:'+cmbGrupo.text+' Sub-Grupo:'+cmbSubGrupo.text;
    lblEmpresa.Text := dmapp.nome;
    rptVendaSub.print;
  end;


end;


procedure TFRelVendasSubGrupos.IniEnter(Sender: TObject);
begin
     CORFUNDO ( SENDER );
end;

procedure TFRelVendasSubGrupos.IniExit(Sender: TObject);
begin
     //TROCA A COR PARA A COR SELECIONADA
     TIRACORFUNDO ( SENDER );

     IF ( INI.TEXT = '  /  /    ' ) or ( INI.TEXT = '  /  /  ' )
     THEN BEGIN
             INI.DATE := STRTODATE('01/01/1900') ;
     END;
end;

procedure TFRelVendasSubGrupos.FimExit(Sender: TObject);
begin
     //TROCA A COR PARA A COR SELECIONADA
     TIRACORFUNDO ( SENDER );

     IF ( FIM.TEXT = '  /  /    ' ) or ( FIM.TEXT = '  /  /  ' )
     THEN BEGIN
             FIM.DATE := STRTODATE('31/12/9999') ;
     END;
end;

end.
