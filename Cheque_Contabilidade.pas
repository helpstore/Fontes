 unit Cheque_Contabilidade;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, dxBarDBNav, dxBar, dxCntner, dxEditor,
  dxEdLib, dxDBELib, StdCtrls, Db, IBCustomDataSet, Buttons, dxExEdtr,
  dxDBEdtr, Grids, DBGrids, IBTable, IBQuery, Mask, DBCtrls, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue, Menus,
  dxSkinsdxBarPainter, cxClasses, cxButtons, cxLabel;

type
  TFrmCheque_Contabilidade = class(TForm)
    edRestante: TdxEdit;
    Label3: TcxLabel;
    Label6: TcxLabel;
    edPredate: TdxDBDateEdit;
    DBCheckBox1: TDBCheckBox;
  private
    Ffornecedor: integer;
    Fnome: string;
  public
    procedure Setfornecedor(const Value: integer);
    procedure Setnome(const Value: string);
  published
    pnlClient: TPanel;
    pnlBottom: TPanel;
    dxBarDockControl1: TdxBarDockControl;
    BarDBNavigator: TdxBarDBNavigator;
    BarManager: TdxBarManager;
    btnIncluir: TdxBarButton;
    btnExcluir: TdxBarButton;
    dxBarBDBNavFirst: TdxBarDBNavButton;
    dxBarBDBNavPrev: TdxBarDBNavButton;
    dxBarBDBNavNext: TdxBarDBNavButton;
    dxBarBDBNavLast: TdxBarDBNavButton;
    btnLocalizar: TdxBarButton;
    BtnSalvar: TdxBarButton;
    BtnCancelar: TdxBarButton;
    Actions: TActionList;
    ActIncluir: TAction;
    ActAlterar: TAction;
    ActExcluir: TAction;
    ActLocalizar: TAction;
    ActPost: TAction;
    ActCancel: TAction;
    Bevel1: TBevel;
    b2: TBevel;
    LblTitulo: TcxLabel;
    DataSource: TDataSource;
    BtnListagem: TdxBarButton;
    ActListagem: TAction;
    BtnFechar: TdxBarButton;
    Panel1: TPanel;
    ActFechar: TAction;
    ActLookup: TAction;
    Label8: TcxLabel;
    EdValor: TdxDBCalcEdit;
    EdData: TdxDBDateEdit;
    Label4: TcxLabel;
    Bevel2: TBevel;
    GRID: TDBGrid;
    ActPeriodo: TAction;
    Label7: TcxLabel;
    Label1: TcxLabel;
    dxDBEdit1: TdxDBEdit;
    dxDBEdit4: TdxDBEdit;
    Label9: TcxLabel;
    EdDesdobrado: TdxEdit;
    EdTotal: TdxEdit;
    Label2: TcxLabel;
    DsConta: TDataSource;
    cmbConta: TdxDBLookupEdit;
    dxDBEdit5: TdxDBEdit;
    BtnFornecedor: TcxButton;
    CMBpessoa: TdxDBButtonEdit;
    Label5: TcxLabel;
    DsFornecedor: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActExcluirExecute(Sender: TObject);
    procedure ActPostExecute(Sender: TObject);
    procedure ActCancelExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ActLocalizarExecute(Sender: TObject);
    procedure dxDBEdit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure pnlClientResize(Sender: TObject);
    procedure DataSourceStateChange(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnBancosClick(Sender: TObject);
    procedure dxDBEdit1Exit(Sender: TObject);
    procedure dxDBEdit2Enter(Sender: TObject);
    procedure dxDBEdit2Exit(Sender: TObject);
    procedure CMBpessoaButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure BtnFornecedorClick(Sender: TObject);
  private
    { Private declarations }
    property fornecedor : integer read Ffornecedor write Setfornecedor;
    property nome : string read Fnome write Setnome;
    procedure SetaValoresPadroes;
  public
    { Public declarations }
    TotalDesdobrar, Acumulado: Real ;
    Planilha, Retorno, Cliente, Conta: Integer;
    ValorDesdobrado: Real;
    Data_Caixa: TDateTime;
    Usuario: Integer;
    Historico, Origem: String;
  end;

var
  FrmCheque_Contabilidade: TFrmCheque_Contabilidade;
implementation

uses Cadastros_DM,
     Listagens_DM,
     Application_DM,
     Main,
     Usuarios_DM,
     Funcoes,
     Bancos_Form, Financeiro_Dm, Localizar_Fornecedor, Plano_DM,
     Fornecedores_Form;// ,  Financeiro_Dm;

{$R *.DFM}

procedure TFrmCheque_Contabilidade.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     if trim(edRestante.text) = '0,00' then
     begin
          //
          Datasource.Dataset.Close;
          DsConta.DataSet.Close;
          //
          Action := caFree;
          FrmCheque_Contabilidade := Nil;
     end
     else
     begin
          Showmessage ('O Valor Desdobrado R$ '+edDesdobrado.text+CHAR(13) + 'Não Confere com o Valor total R$ ' + edtotal.text);
          ABORT;
     end;
end;

procedure TFrmCheque_Contabilidade.ActIncluirExecute(Sender: TObject);
begin
  If DataSource.State in dsEditModes Then
     Exit;
  Try
    DataSource.DataSet.Append;
    SetaValoresPadroes;
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
  cmbConta.setfocus;
end;

procedure TFrmCheque_Contabilidade.ActExcluirExecute(Sender: TObject);
begin
  If MessageBox(Handle,'Tem certeza que deseja Excluir este Cheque ?',
                       'Atenção !!!',MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2)=IDYES Then
     DataSource.Dataset.Delete;
end;

procedure TFrmCheque_Contabilidade.ActPostExecute(Sender: TObject);
var
  total : real;
begin
  Try
    with dmFinanceiro do
    begin
      if ((DesdChequeCtbPRE_DATE.asDateTime <= DMApp.DataServidor) and (DesdChequeCtbPRE_DATE.asDateTime > 0)) then
      begin
        application.messagebox('Data de pré-date do cheque precisa ser superior a data atual','Aviso', mb_iconinformation + mb_ok);
        edPredate.SetFocus;
        exit;
      end;
    end;

    DataSource.DataSet.Post;
    DmaPP.Atualiza_Ultimo_Cheque (Datasource.DataSet.FieldByName('conta').asInteger,Datasource.DataSet.FieldByName('cheque').asInteger);
    DMApp.Transaction.CommitRetaining;

    with DmFinanceiro do
    begin
      total := 0;
      DesdChequeCtb.DisableControls;
      DesdChequeCtb.first;
      while not DesdChequeCtb.Eof do
      begin
        total :=  total + DesdChequeCtbVALOR.Value;
        DesdChequeCtb.next;
      end;
      DesdChequeCtb.EnableControls;
      EdDesdobrado.Text := FormatFloat('###,###,##0.00',total);
      edRestante.Text := FormatFloat('###,###,##0.00',TotalDesdobrar - Total);
    end;
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

procedure TFrmCheque_Contabilidade.ActCancelExecute(Sender: TObject);
begin
  If DataSource.DataSet.State in dsEditModes Then
     DataSource.DataSet.Cancel
  Else
     BtnFechar.OnClick(BtnFechar);
end;

procedure TFrmCheque_Contabilidade.FormCreate(Sender: TObject);
begin
  //
  ActListagem.Hint := ActListagem.Hint + LblTitulo.Caption + ' [F5]';
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, LblTitulo.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TFrmCheque_Contabilidade.ActLocalizarExecute(Sender: TObject);
begin
     DMApp.Localizar(Datasource);
end;

procedure TFrmCheque_Contabilidade.dxDBEdit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
    if (key=VK_RETURN) OR (Key=VK_DOWN) Then
        Perform(WM_NEXTDLGCTL, 0, 0);
    if (key=VK_UP) then
        Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmCheque_Contabilidade.pnlClientResize(Sender: TObject);
begin
  b2.Width := pnlClient.Width - 17;
end;

procedure TFrmCheque_Contabilidade.DataSourceStateChange(Sender: TObject);
begin
  If DataSource.State in dsEditModes Then
     Begin
       ActIncluir.Enabled   := False;
       ActAlterar.Enabled   := False;
       ActExcluir.Enabled   := False;
       ActLocalizar.Enabled := False;
       ActListagem.Enabled  := False;
       BtnSalvar.Enabled    := True;
       BtnCancelar.Enabled  := True;
       ActFechar.Enabled    := False;
     End
  Else
     Begin
       ActIncluir.Enabled   := ActIncluir.Tag = 1;
       ActAlterar.Enabled   := ActAlterar.Tag = 1;
       ActExcluir.Enabled   := ActExcluir.Tag = 1;
       ActLocalizar.Enabled := True;
       ActListagem.Enabled  := ActListagem.Tag = 1;
       BtnSalvar.Enabled    := False;
       BtnCancelar.Enabled  := False;
       ActFechar.Enabled    := True;
     End;
end;

procedure TFrmCheque_Contabilidade.ActFecharExecute(Sender: TObject);
begin
  If FrmCheque_Contabilidade.FormStyle = fsMDIChild Then
     FrmMain.opFechar.OnClick(FrmMain.opFechar)
  Else
     Close;
end;

procedure TFrmCheque_Contabilidade.FormShow(Sender: TObject);
begin
  IniciaComponentes ( Self as TForm );
  Acumulado := 0;
  Try
    If Not(DsConta.DataSet.Active) Then
       DsConta.DataSet.Open;

    EdTotal.Text := FormatFloat ('###,###,##0.00', TotalDesdobrar);
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
  //
  Datasource.AutoEdit := ActAlterar.Enabled;
  with dmFinanceiro do
  begin
    DesdChequeCtb.close;
    DesdChequeCtb.open;
    DesdChequeCtb.insert;
  end;

  SetaValoresPadroes;
end;

procedure TFrmCheque_Contabilidade.btnBancosClick(Sender: TObject);
begin
  //
  If ActAlterar.Tag = 0 Then
     Exit;
  //
  If Datasource.DataSet.State = dsBrowse Then
     Datasource.DataSet.Edit;
  //
  { * * * * * }
  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmBancos', False);

  FrmBancos := TFrmBancos.Create(Self);
  FrmBancos.ShowModal;

  DsConta.DataSet.Close ;
  DsConta.DataSet.Open  ;

  //Datasource.DataSet.FieldByName('BANCO').asString := FrmMain.Codigo_Str;


  FrmBancos.Free;
  FrmBancos := Nil;
  //
//  cmbConta.SetFocus;
end;

procedure TFrmCheque_Contabilidade.dxDBEdit1Exit(Sender: TObject);
begin
   TIRACORFUNDO ( SENDER );
end;

procedure TFrmCheque_Contabilidade.dxDBEdit2Enter(Sender: TObject);
begin
     CORFUNDO ( SENDER );
end;

procedure TFrmCheque_Contabilidade.dxDBEdit2Exit(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     TIRACORFUNDO ( SENDER );
     with (DmFinanceiro) do
     begin
       {if DesdChequeCtbConta.Value <> conta then
       begin
           if application.messagebox(Pchar('Você está modificando a conta préviamente definida no momento do pagto da dívida.'+
                                           #13+'Deseja continuar?'),'Aviso',mb_iconquestion + mb_yesno) = idno then
              DesdChequeCtbConta.Value := conta;
       end;}
     end;
end;


procedure TFrmCheque_Contabilidade.CMBpessoaButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  try
    If not (DataSource.State in [ dsinsert, dsedit ]) then
      DataSource.DataSet.Edit;

    //Chama a Tela Para Localizar Fornecedor
    Frm_Localizar_Fornecedor.DSource.dataset := DmFinanceiro.SelFornecedor ;

    if ( Frm_Localizar_Fornecedor.showmodal = mrOk )Then
       DmFinanceiro.DesdChequeCtbPESSOA_FJ.Value := (Frm_Localizar_Fornecedor.CampTrecho)
    else
    begin
      If Frm_Localizar_Fornecedor.Cad = 'S' THEN
        BtnFornecedor.OnClick ( BtnFornecedor );
    end;
  Except

  end;
end;

procedure TFrmCheque_Contabilidade.BtnFornecedorClick(Sender: TObject);
begin
  If ActAlterar.Tag = 0 Then
     Exit;
  //
  If Datasource.DataSet.State = dsBrowse Then
     Datasource.DataSet.Edit;
  //
  { * * * * * }
  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmFornecedores', False);

  If DMPLANO = Nil then
      DMPLANO := TDMPLANO.Create(Self)
  else
      DMPLANO.Tag := DMPLANO.Tag + 1;

  FrmFornecedores := TFrmFornecedores.Create(Application);

  FrmFornecedores.Showmodal ;
  Datasource.DataSet.FieldByName('PESSOA_FJ').asInteger := FrmMain.Codigo_Int;
  DsFornecedor.DataSet.Close ;
  DsFornecedor.DataSet.Open  ;

  If DMCadastros <> Nil then
      DMCadastros.Tag := DMCadastros.Tag - 1;

  cmbPessoa.SetFocus;
end;


procedure TFrmCheque_Contabilidade.Setfornecedor(const Value: integer);
begin
  Ffornecedor := Value;
end;

procedure TFrmCheque_Contabilidade.Setnome(const Value: string);
begin
  Fnome := Value;
end;

procedure TFrmCheque_Contabilidade.SetaValoresPadroes;
begin
  Datasource.DataSet.FieldByName('pessoa_fj').value := fornecedor;
  Datasource.DataSet.FieldByName('nome').asString := nome;
  Datasource.DataSet.FieldByName('data').asDateTime := Date;
  Datasource.DataSet.FieldByName('Planilha').value := Planilha;
  Datasource.DataSet.FieldByName('HISTORICO').value := Historico;
end;

end.
