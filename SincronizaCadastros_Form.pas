 unit SincronizaCadastros_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxBar,   StdCtrls, ExtCtrls, dxCntner, dxEditor, dxEdLib,
  ComCtrls, ActnList, dbtables, db, IBCustomDataSet, IBQuery,
    IBStoredProc, cxPropertiesStore, dxExEdtr, 
  dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid, dxmdaset, dxDBEdtr,
  dxDBELib, Menus, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxPC, cxButtons, cxLabel;

type
  TfrmSincronizaCadastros = class(TForm)
    pnlClient: TPanel;
    Bevel1: TBevel;
    Panel2: TPanel;
    LblStatus: TcxLabel;
    RzBitBtn2: TcxButton;
    DIR: TOpenDialog;
    Actions: TActionList;
    ActFechar: TAction;
    ActSeleciona: TAction;
    ActExporta: TAction;
    stgfrmSincronizaCadastros: TcxPropertiesStore;
    QryProdutos: TIBDataSet;
    BtnCriar: TcxButton;
    QryEmpresas: TIBQuery;
    Panel1: TPanel;
    b2: TBevel;
    LblTitulo: TcxLabel;
    pc: TcxPageControl;
    tbsProdutos: TcxTabSheet;
    Shape1: TShape;
    Panel9: TPanel;
    GridProdutos: TdxDBGrid;
    tbsFornecedores: TcxTabSheet;
    Panel5: TPanel;
    GridFornecedores: TdxDBGrid;
    Panel3: TPanel;
    lbldestino: TcxLabel;
    dsProdutos: TDataSource;
    QryEmpresasNOME: TIBStringField;
    QryEmpresasCNPJ: TIBStringField;
    dsEmpresas: TDataSource;
    cmbEmpresas: TdxLookupEdit;
    GridProdutosCODIGO: TdxDBGridMaskColumn;
    GridProdutosCODIGO_2: TdxDBGridMaskColumn;
    GridProdutosNOME: TdxDBGridMaskColumn;
    GridProdutosEXISTE: TdxDBGridCheckColumn;
    GridProdutosSELECIONADO: TdxDBGridCheckColumn;
    QryProdutosCODIGO: TIBStringField;
    QryProdutosCODIGO_2: TIBStringField;
    QryProdutosNOME: TIBStringField;
    QryProdutosEXISTE: TIBStringField;
    QryProdutosSELECIONADO: TIBStringField;
    QryProdutosCNPJ_ORIGEM: TIBStringField;
    QryProdutosMARCA: TIBStringField;
    QryProdutosCOD_MARCA: TIntegerField;
    QryProdutosCOD_GRUPO: TIntegerField;
    QryProdutosGRUPO: TIBStringField;
    QryProdutosCOD_SUBGRUPO: TIntegerField;
    QryProdutosSUBGRUPO: TIBStringField;
    GridProdutosMARCA: TdxDBGridMaskColumn;
    GridProdutosCOD_MARCA: TdxDBGridMaskColumn;
    GridProdutosCOD_GRUPO: TdxDBGridMaskColumn;
    GridProdutosGRUPO: TdxDBGridMaskColumn;
    GridProdutosCOD_SUBGRUPO: TdxDBGridMaskColumn;
    GridProdutosSUBGRUPO: TdxDBGridMaskColumn;
    ActSelecionaTodos: TAction;
    PopSelecao: TPopupMenu;
    MarcarTodososRegistros1: TMenuItem;
    DesmarcarTodososRegistros1: TMenuItem;
    ActDeselecionaTodos: TAction;
    ckSincronizados: TCheckBox;
    edtRegistro: TEdit;
    Label1: TcxLabel;
    InsereProdutos: TIBStoredProc;
    pgbar: TProgressBar;
    QryFornecedor: TIBDataSet;
    InsereFornecedor: TIBStoredProc;
    QryFornecedorCPF_CNPJ: TIBStringField;
    QryFornecedorNOME: TIBStringField;
    QryFornecedorEXISTE: TIBStringField;
    QryFornecedorSELECIONADO: TIBStringField;
    QryFornecedorCNPJ_ORIGEM: TIBStringField;
    dsFornecedor: TDataSource;
    GridFornecedoresCODIGO: TdxDBGridMaskColumn;
    GridFornecedoresCPF_CNPJ: TdxDBGridMaskColumn;
    GridFornecedoresNOME: TdxDBGridMaskColumn;
    GridFornecedoresCNPJ_ORIGEM: TdxDBGridMaskColumn;
    GridFornecedoresSELECIONADO: TdxDBGridCheckColumn;
    GridFornecedoresEXISTE: TdxDBGridCheckColumn;
    QryFornecedorCODIGO: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure ActExportaExecute(Sender: TObject);
    procedure PRODUTOSBeforeOpen(DataSet: TDataSet);
    procedure RzBitBtn2Click(Sender: TObject);
    procedure IniKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FimKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);

    procedure BtnDirKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnCriarKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RzBitBtn2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Panel3Exit(Sender: TObject);
    procedure ActSelecionaExecute(Sender: TObject);
    procedure ActSelecionaTodosExecute(Sender: TObject);
    procedure ActDeselecionaTodosExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure filtrar;
  public
    { Public declarations }
  end;

var
  frmSincronizaCadastros: TfrmSincronizaCadastros;

implementation

uses Usuarios_DM, Application_DM, Funcoes;

{$R *.DFM}

procedure TfrmSincronizaCadastros.FormCreate(Sender: TObject);
begin
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, Self.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);

  QryEmpresas.Close;
  QryEmpresas.Parambyname('cnpj').value := dmApp.cnpj;
  QryEmpresas.Open;
end;

procedure TfrmSincronizaCadastros.ActFecharExecute(Sender: TObject);
begin
     Close ;
end;

procedure TfrmSincronizaCadastros.ActExportaExecute(Sender: TObject);
var
 cont: Integer;
begin

    if (Application.MessageBox('Deseja realizar a sincronização dos registros?','Aviso',mb_iconquestion+mb_yesno) = id_no) then
     exit;
  try
    if (pc.ActivePageIndex = 0) then
    begin
      if (QryProdutos.RecordCount >0) then
        pgbar.Max := QryProdutos.RecordCount
      else
        pgbar.Max := 1;
      pgbar.min := 1;

      QryProdutos.DisableControls;
      qryProdutos.First;
      cont := 0;
      while not QryProdutos.eof do
      begin
        if ((QryProdutosSELECIONADO.asString = 'S') and (QryProdutosEXISTE.asString = 'N'))  then
        begin
          InsereProdutos.ParamByName('cnpj_origem').value := dmapp.cnpj;
          InsereProdutos.ParamByName('cnpj_destino').value := QryEmpresasCNPJ.value;
          InsereProdutos.ParamByName('codigo').value := QryProdutosCODIGO.value;
          InsereProdutos.ExecProc;
        end;
        QryProdutos.next;
        pgbar.Position := pgbar.Position + 1;

        cont := cont + 1;
        edtRegistro.text := IntToStr(cont);
        edtRegistro.Refresh;
      end;
      QryProdutos.EnableControls;
    end
    else if (pc.ActivePageIndex = 1) then
    begin
      if (QryFornecedor.RecordCount >0) then
        pgbar.Max := QryFornecedor.RecordCount
      else
        pgbar.Max := 1;

      pgbar.min := 1;

      QryFornecedor.DisableControls;
      QryFornecedor.First;
      cont := 0;
      while not QryFornecedor.eof do
      begin
        if ((QryFornecedorSELECIONADO.asString = 'S') and (QryFornecedorEXISTE.asString = 'N'))  then
        begin
          InsereFornecedor.ParamByName('cnpj_origem').value := dmapp.cnpj;
          InsereFornecedor.ParamByName('cnpj_destino').value := QryEmpresasCNPJ.value;
          InsereFornecedor.ParamByName('codigo').value := QryFornecedorCODIGO.value;
          InsereFornecedor.ExecProc;
        end;
        QryFornecedor.next;
        pgbar.Position := pgbar.Position + 1;

        cont := cont + 1;
        edtRegistro.text := IntToStr(cont);
        edtRegistro.Refresh;
      end;
      QryFornecedor.EnableControls;
    end;

    DMApp.Transaction.CommitRetaining;
    Filtrar;
    Application.MessageBox('Registros  sincronizados com sucesso!','Aviso',mb_ok+mb_iconinformation);
  except
        On E:EDataBaseError Do
           Begin
             Application.MessageBox(Pchar('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message),'Aviso',mb_iconerror + mb_ok);
             exit;
           End
        Else
           Begin
             Application.MessageBox('Erro na sincronizacação de registro','Aviso',mb_iconerror + mb_ok);
             exit;
           End;
  end;
end;

procedure TfrmSincronizaCadastros.PRODUTOSBeforeOpen(DataSet: TDataSet);
begin
     (DataSet as TIBQuery).ParamByName('CNPJ').asString := DMApp.Cnpj;
     (DataSet as TIBQuery).Prepare;
end;

procedure TfrmSincronizaCadastros.RzBitBtn2Click(Sender: TObject);
begin
  Close ;
end;

procedure TfrmSincronizaCadastros.IniKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Begin
       Perform(WM_NEXTDLGCTL, 0, 0);
     End;
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TfrmSincronizaCadastros.FimKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Begin
       Perform(WM_NEXTDLGCTL, 0, 0);
     End;
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;



procedure TfrmSincronizaCadastros.BtnDirKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Begin
       Perform(WM_NEXTDLGCTL, 0, 0);
     End;
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TfrmSincronizaCadastros.BtnCriarKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Begin
       Perform(WM_NEXTDLGCTL, 0, 0);
     End;
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TfrmSincronizaCadastros.RzBitBtn2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Begin
       Perform(WM_NEXTDLGCTL, 0, 0);
     End;
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TfrmSincronizaCadastros.Panel3Exit(Sender: TObject);
begin
 Filtrar;
end;

procedure TfrmSincronizaCadastros.filtrar;
var
  cont : integer;
begin
  if (cmbEmpresas.text = '') then
    exit;

  if (pc.ActivePageIndex = 0) then
  begin
    QryProdutos.close;
    QryProdutos.parambyname('CNPJ').value := dmApp.cnpj;
    QryProdutos.parambyname('CNPJ_DESTINO').value := QryEmpresasCNPJ.value;
    if (ckSincronizados.checked) then
      QryProdutos.parambyname('TIPO').value := 'D'
    else
      QryProdutos.parambyname('TIPO').value := 'T';
    QryProdutos.Open;
    QryProdutos.EnableControls;
  end
  else if (pc.ActivePageIndex = 1) then
  begin
    QryFornecedor.close;
    QryFornecedor.parambyname('CNPJ').value := dmApp.cnpj;
    QryFornecedor.parambyname('CNPJ_DESTINO').value := QryEmpresasCNPJ.value;
    if (ckSincronizados.checked) then
      QryFornecedor.parambyname('TIPO').value := 'D'
    else
      QryFornecedor.parambyname('TIPO').value := 'T';
    QryFornecedor.Open;
    QryProdutos.EnableControls;
  end

end;

procedure TfrmSincronizaCadastros.ActSelecionaExecute(Sender: TObject);
begin
  if (pc.ActivePageIndex = 0) then
  begin
    if QryProdutosEXISTE.value = 'S' then
    begin
      Application.MessageBox('Impossivel selecionar. Registro já sincronizado','Aviso',mb_iconerror+mb_ok);
      exit;
    end;

    if QryProdutos.state <> dsedit then
      QryProdutos.edit;

    if (QryProdutosSELECIONADO.Value = 'S') then
      QryProdutosSELECIONADO.value := 'N'
    else
      QryProdutosSELECIONADO.value := 'S'
  end
  else if (pc.ActivePageIndex = 1) then
  begin
    if qryFornecedorEXISTE.value = 'S' then
    begin
      Application.MessageBox('Impossivel selecionar. Registro já sincronizado','Aviso',mb_iconerror+mb_ok);
      exit;
    end;

    if qryFornecedor.state <> dsedit then
      qryFornecedor.edit;

    if (qryFornecedorSELECIONADO.Value = 'S') then
      qryFornecedorSELECIONADO.value := 'N'
    else
      qryFornecedorSELECIONADO.value := 'S'
  end
end;

procedure TfrmSincronizaCadastros.ActSelecionaTodosExecute(
  Sender: TObject);
var
  cont : integer;
begin
  if (Application.MessageBox('Deseja marcar como selecionados todos os registros não sincronizados?','Aviso',mb_iconquestion+mb_yesno) = id_no) then
    exit;

  if (pc.ActivePageIndex = 0) then
  begin
    QryProdutos.DisableControls;
    qryProdutos.First;
    cont := 0;
    while not QryProdutos.eof do
    begin
      if ((QryProdutosSELECIONADO.asString = 'N') and (QryProdutosEXISTE.asString = 'N'))  then
      begin
        if QryProdutos.state <> dsedit then
          QryProdutos.edit;

        QryProdutosSELECIONADO.value := 'S';
      end;
      QryProdutos.next;
      cont := cont + 1;
      edtRegistro.text := IntToStr(cont);
      edtRegistro.Refresh;
    end;
    QryProdutos.EnableControls;
  end
  else if (pc.ActivePageIndex = 1) then
  begin
    qryFornecedor.DisableControls;
    qryFornecedor.First;
    cont := 0;
    while not qryFornecedor.eof do
    begin
      if ((qryFornecedorSELECIONADO.asString = 'N') and (qryFornecedorEXISTE.asString = 'N'))  then
      begin
        if qryFornecedor.state <> dsedit then
          qryFornecedor.edit;

        qryFornecedorSELECIONADO.value := 'S';
      end;
      qryFornecedor.next;
      cont := cont + 1;
      edtRegistro.text := IntToStr(cont);
      edtRegistro.Refresh;
    end;
    qryFornecedor.EnableControls;
  end;
  Application.MessageBox('Registros marcados com sucesso','Aviso',mb_iconinformation+mb_ok);
end;

procedure TfrmSincronizaCadastros.ActDeselecionaTodosExecute(
  Sender: TObject);
var
  cont : integer;
begin
  if (Application.MessageBox('Deseja desmarcar como selecionados todos os registros não sincronizados?','Aviso',mb_iconquestion+mb_yesno) = id_no) then
    exit;

  if (pc.ActivePageIndex = 0) then
  begin
    QryProdutos.DisableControls;
    QryProdutos.First;
    cont := 0;
    while not QryProdutos.eof do
    begin
      if ((QryProdutosSELECIONADO.asString = 'S') and (QryProdutosEXISTE.asString = 'N'))  then
      begin
        if QryProdutos.state <> dsedit then
          QryProdutos.edit;

        QryProdutosSELECIONADO.value := 'N';
      end;

      QryProdutos.next;
      cont := cont + 1;
      edtRegistro.text := IntToStr(cont);
      edtRegistro.Refresh;
    end;
    QryProdutos.EnableControls;
  end
  else if (pc.ActivePageIndex = 1) then
  begin
    qryFornecedor.DisableControls;
    qryFornecedor.First;
    cont := 0;
    while not qryFornecedor.eof do
    begin
      if ((qryFornecedorSELECIONADO.asString = 'S') and (qryFornecedorEXISTE.asString = 'N'))  then
      begin
        if qryFornecedor.state <> dsedit then
          qryFornecedor.edit;

        qryFornecedorSELECIONADO.value := 'N';
      end;

      qryFornecedor.next;
      cont := cont + 1;
      edtRegistro.text := IntToStr(cont);
      edtRegistro.Refresh;
    end;
    qryFornecedor.EnableControls;
  end;

  Application.MessageBox('Registros desmarcados com sucesso','Aviso',mb_iconinformation+mb_ok);
end;

procedure TfrmSincronizaCadastros.FormShow(Sender: TObject);
begin
  cmbEmpresas.Setfocus;
end;

end.

