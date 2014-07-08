 unit Cartao_Venda_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, dxBarDBNav, dxBar, dxCntner, dxEditor,
  dxEdLib, dxDBELib, StdCtrls, Db, IBCustomDataSet, Buttons, dxExEdtr,
  dxDBEdtr, Grids, DBGrids, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, Menus, dxSkinsdxBarPainter, cxClasses, cxButtons,
  cxLabel;

type
  TCartaoDefault = class(TObject)
  public
    Admin : Integer;
    Tipo : String;
    NCartao :String;
    Venda :Integer;
    Troca :Integer;
    CodPessoa :Integer;
    Planilha : integer;
    procedure SetDefault(vAdmin :Integer; Tipo, NCartao :String);
  end;

type
  TFrmCartao_Venda = class(TForm)
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
    Label5: TcxLabel;
    Label2: TcxLabel;
    EdVencimento: TdxDBDateEdit;
    Label3: TcxLabel;
    dxDBEdit2: TdxDBEdit;
    dxDBEdit3: TdxDBEdit;
    Label1: TcxLabel;
    DsAdministradora: TDataSource;
    Label6: TcxLabel;
    cmbAdministradora: TdxDBLookupEdit;
    btnAdministradoras: TcxButton;
    EdCartao: TdxDBEdit;
    dxDBEdit4: TdxDBEdit;
    Label9: TcxLabel;
    EdDesdobrado: TdxEdit;
    CmbTipoPessoa: TdxDBPickEdit;
    Label7: TcxLabel;
    dxDBEdit1: TdxDBEdit;
    dsFormas: TDataSource;
    Label11: TcxLabel;
    ckbEntrada: TdxCheckEdit;
    edtParcelas: TdxSpinEdit;
    edtValorTotal: TdxEdit;
    Cartao: TIBDataSet;
    CartaoCNPJ: TIBStringField;
    CartaoCODIGO: TIntegerField;
    CartaoADMINISTRADORA: TIntegerField;
    CartaoCLIENTE: TIBStringField;
    CartaoCONCILIADO: TIBStringField;
    CartaoCONTA: TIntegerField;
    CartaoCPF_CNPJ: TIBStringField;
    CartaoDATA: TDateTimeField;
    CartaoDOCUMENTO: TIBStringField;
    CartaoNUM_BANCO: TIBStringField;
    CartaoNUM_CARTAO: TIBStringField;
    CartaoNUM_CONTA: TIBStringField;
    CartaoREEMBOLSO: TDateTimeField;
    CartaoTIPO_DOC: TIBStringField;
    CartaoUSUARIO: TIntegerField;
    CartaoVALOR: TFloatField;
    CartaoVENDA: TIntegerField;
    CartaoPESSOA_FJ: TIntegerField;
    CartaoTIPO: TIBStringField;
    CartaoNUM_PARCELAS: TIntegerField;
    CartaoTAXA: TFloatField;
    CartaoValor_Liquido: TFloatField;
    CartaoTURNO: TIntegerField;
    CartaoTROCA: TIntegerField;
    CartaoPLANILHA: TIntegerField;
    CartaoDATA_CONCILIACAO: TDateTimeField;
    CartaoPROCESSADO: TIBStringField;
    CartaoCTR_CODIGO: TIntegerField;
    CartaoCOD_ACERTOCONTA: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
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
    procedure btnAdministradorasClick(Sender: TObject);
    procedure ActLookupExecute(Sender: TObject);
    procedure dxDBEdit1Exit(Sender: TObject);
    procedure GRIDKeyPress(Sender: TObject; var Key: Char);
    procedure dxDBEdit2Enter(Sender: TObject);
    procedure dxDBEdit2Exit(Sender: TObject);
    procedure CmbTipoPessoaEnter(Sender: TObject);
    procedure GeraParcelas;
    procedure ckbEntradaExit(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActAlterarExecute(Sender: TObject);
    procedure CartaoAfterDelete(DataSet: TDataSet);
    procedure CartaoAfterInsert(DataSet: TDataSet);
    procedure CartaoAfterPost(DataSet: TDataSet);
    procedure CartaoBeforeOpen(DataSet: TDataSet);
    procedure CartaoCalcFields(DataSet: TDataSet);
    procedure CartaoNewRecord(DataSet: TDataSet);
    procedure CartaoADMINISTRADORAValidate(Sender: TField);
    procedure CartaoPESSOA_FJValidate(Sender: TField);
    procedure CartaoTIPOGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure CartaoTIPOSetText(Sender: TField; const Text: String);
    procedure CartaoTIPOValidate(Sender: TField);
  private
    { Private declarations }
  public
    { Public declarations }
    //-- se estas opcoes estiverem preenchidasé porque á chamada vem de um pgto de conta a receber
    Troca,Venda,Receber :boolean;
    VlrCartao : Real;
    pessoa : integer;
    nome : string;
    Data : TDate;
    Planilha : integer;
    //---------------//
    Acumulado: Real ;
    CodigoTroca : Integer;
    CodigoVenda : Integer;
    CodigoReceber : Integer;
    Default :TCartaoDefault;
    Function VerificaCartao: Boolean;
  end;

var
  FrmCartao_Venda: TFrmCartao_Venda;
implementation

uses Cadastros_DM,
     Listagens_DM,
     Application_DM,
     Main,
     Usuarios_DM,
     Funcoes,
     Bancos_Form,
     Vendas_Dm,
     Financeiro_Dm,
     Administradoras_Form, Pdv_DM, Vendas_DM2;

{$R *.DFM}

Function TFrmCartao_Venda.VerificaCartao: Boolean;
begin
  IF trim(edtvalortotal.text) <> trim(eddesdobrado.text) THEN
    Result := False
  ELSE
    Result := True;
    
end;

procedure TFrmCartao_Venda.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  IF VERIFICACartao THEN
  BEGIN
    Cartao.Transaction.CommitRetaining;
    Datasource.Dataset.Close;
    DsAdministradora.DataSet.Close;

    FreeAndNil(Default);
    Action := caFree;
    FrmCartao_Venda := Nil;
  END
  ELSE BEGIN
    Showmessage ('O Valor Desdobrado R$ ' +edtValorTotal.text+ CHAR(13) + 'Não Confere com o Valor da Nota R$ '
    +edDesdobrado.text);
    ABORT;
  END;
end;

procedure TFrmCartao_Venda.ActExcluirExecute(Sender: TObject);
begin
  If MessageBox(Handle,'Tem certeza que deseja Excluir este Cartao ?',
                       'Atenção !!!',MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2)=IDYES Then
     DataSource.Dataset.Delete;
end;

procedure TFrmCartao_Venda.ActPostExecute(Sender: TObject);
begin
  Try
    if DataSource.state in [ dsinsert, dsedit ] then
      DataSource.DataSet.Post;
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

procedure TFrmCartao_Venda.ActCancelExecute(Sender: TObject);
begin
  If DataSource.DataSet.State in dsEditModes Then
     DataSource.DataSet.Cancel
  Else
     BtnFechar.OnClick(BtnFechar);
end;

procedure TFrmCartao_Venda.FormCreate(Sender: TObject);
begin
  Default := TCartaoDefault.Create;
  ActListagem.Hint := ActListagem.Hint + LblTitulo.Caption + ' [F5]';
  // Se o Usuário for Supervisor
  if DMUsuarios.Direito = 'SUPERVISOR' then
    DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, LblTitulo.Caption, ListaActions(Actions))
  else if DMUsuarios.Objeto = Self.Name then
    AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TFrmCartao_Venda.ActLocalizarExecute(Sender: TObject);
begin
  DMApp.Localizar(Datasource);
end;

procedure TFrmCartao_Venda.dxDBEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmCartao_Venda.pnlClientResize(Sender: TObject);
begin
  b2.Width := pnlClient.Width - 17;
end;

procedure TFrmCartao_Venda.DataSourceStateChange(Sender: TObject);
begin
  If DataSource.State in dsEditModes Then
     Begin
       ActIncluir.Enabled   := true;
       ActAlterar.Enabled   := False;
       ActExcluir.Enabled   := true;
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

procedure TFrmCartao_Venda.ActFecharExecute(Sender: TObject);
begin

  If FrmCartao_Venda.FormStyle = fsMDIChild Then
     FrmMain.opFechar.OnClick(FrmMain.opFechar)
  Else
     Close;
end;

procedure TFrmCartao_Venda.FormShow(Sender: TObject);
begin
  IniciaComponentes ( Self as TForm );
  Acumulado := 0;

  if FrmCartao_Venda.VlrCartao > 0 then
    edtValorTotal.text := formatfloat('###,##0.00',VlrCartao);

  Try
         DsAdministradora.DataSet.Close;
         DsAdministradora.DataSet.Open;

         Cartao.Close ;
         Cartao.Params.ByName('VENDA').AsInteger := CodigoVenda;
         Cartao.Params.ByName('TROCA').AsInteger := CodigoTroca;
         Cartao.Params.ByName('PLANILHA').AsInteger := Planilha;
         Cartao.Open;
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
  if not (Cartao.state in [dsInsert, dsEdit]) then
     Cartao.Insert;

  cmbadministradora.SetFocus;
end;

procedure TFrmCartao_Venda.btnAdministradorasClick(Sender: TObject);
begin
  //
  If ActAlterar.Tag = 0 Then
     Exit;


      If Datasource.DataSet.State = dsBrowse Then
         Datasource.DataSet.Edit;
      //
      DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmAdministradoras', False);
      { * * * * * }
      //
      FrmAdministradoras := TFrmAdministradoras.Create(Self);
      FrmAdministradoras.ShowModal;
      //
      Datasource.DataSet.FieldByName('ADMINISTRADORA').asInteger := FrmMain.Codigo_Int;
      FrmAdministradoras.Free;
      FrmAdministradoras := Nil;

      DsAdministradora.DataSet.close ;

      DsAdministradora.DataSet.oPEN ;
      //
      cmbadministradora.SetFocus;
  
end;

procedure TFrmCartao_Venda.ActLookupExecute(Sender: TObject);
begin
     If FrmCartao_Venda.ActiveControl = cmbAdministradora Then
        btnAdministradoras.OnClick(btnAdministradoras);
end;

procedure TFrmCartao_Venda.dxDBEdit1Exit(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     TIRACORFUNDO ( SENDER );
end;

procedure TFrmCartao_Venda.GRIDKeyPress(Sender: TObject; var Key: Char);
begin
     IF (( KEY = #13 ) and ( Not DataSource.DataSet.FieldByname ('BANCO').Isnull ))
     THEN BEGIN
          DataSource.DATASET.EDIT ;
          cmbAdministradora.SetFocus ;
     END;
end;

procedure TFrmCartao_Venda.dxDBEdit2Enter(Sender: TObject);
begin
     CORFUNDO ( SENDER );
end;

procedure TFrmCartao_Venda.dxDBEdit2Exit(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     TIRACORFUNDO ( SENDER );
end;

procedure TFrmCartao_Venda.CmbTipoPessoaEnter(Sender: TObject);
begin
  CORFUNDO ( SENDER );
  (Sender as TdxDBPickEdit).Text := (Sender as TdxDBPickEdit).DataSource.DataSet.FieldByName((Sender as TdxDBPickEdit).DataField).Text;
  (Sender as TdxDBPickEdit).SelectAll;
end;

procedure TFrmCartao_Venda.GeraParcelas;
var
  x :Integer;
  nTotalParc :Integer;
  ValorParc :Currency;
  Acumulado :Currency;
  sValorParc : string;
begin
  Default.SetDefault(0,'0','0');
  if Cartao.State in [dsInsert, dsEdit] then
    Cartao.Cancel;
  //Excluir cartão, pois se o usuário tentar alterar alguma informação depois q.
  //as parcelas são geradas
  if not Cartao.IsEmpty then
  begin
    Cartao.First;
    while not Cartao.IsEmpty do
      Cartao.Delete;
  end;
  nTotalParc := Trunc(edtParcelas.Value);
  sValorParc := stringReplace(edtValorTotal.text,'.','',[rfReplaceAll]);


  ValorParc := (StrToFloat(sValorParc) /nTotalParc);
  Acumulado := 0;
  for x := 1 to nTotalParc do
  begin
    Cartao.Insert;
    CartaoNUM_CARTAO.Value := Default.NCartao;
    CartaoADMINISTRADORA.Value := Default.Admin;

    if (Default.PLANILHA > 0) then
      CartaoPLANILHA.Value := Default.PLANILHA;

    if CodigoTroca > 0 then
      CartaoTroca.Value := Default.Venda;

    if CodigoVenda > 0 then
      CartaoVENDA.Value := Default.Venda;

    CartaoPESSOA_FJ.Value := Default.CodPessoa;
    CartaoTIPO.Value := Default.Tipo;
    CartaoNUM_PARCELAS.Value := trunc(edtParcelas.Value);
    if x = nTotalParc then
      ValorParc := strToFloat(stringReplace(edtValorTotal.text,'.','',[rfReplaceAll])) - Acumulado;
    CartaoVALOR.Value := ValorParc;
    Acumulado := Acumulado + ValorParc;

    if nTotalParc > 1 then
    begin
      if ckbEntrada.Checked then
        CartaoREEMBOLSO.Value := Data + ((x-1)*30)
      else
        CartaoREEMBOLSO.Value := Data + (x*30);
    end;
    Cartao.Post;
  end;
end;

{ TCartaoDefault }

procedure TCartaoDefault.SetDefault(vAdmin: Integer; Tipo,
  NCartao: String);
begin
  Admin := FrmCartao_Venda.CartaoADMINISTRADORA.Value;
  Tipo := FrmCartao_Venda.CartaoTIPO_DOC.Value;
  NCartao := FrmCartao_Venda.CartaoNUM_CARTAO.Value;
end;

procedure TFrmCartao_Venda.ckbEntradaExit(Sender: TObject);
begin
  //desdobramento vindo de contas a receber
  if Receber then
    Default.Planilha := Planilha
  else
    Default.Planilha := 0;

  Default.Tipo := CartaoTIPO.Value;
  Default.NCartao := CartaoNUM_CARTAO.Value;
  Default.CodPessoa := pessoa;
  if CodigoTroca > 0 then
    Default.Troca := CodigoTroca;

  if CodigoTroca > 0 then
    Default.Venda := CodigoVenda;


  GeraParcelas;
end;

procedure TFrmCartao_Venda.ActIncluirExecute(Sender: TObject);
begin
  If DataSource.State in dsEditModes Then
     Exit;
  Try
    DataSource.DataSet.Append;
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

  cmbAdministradora.setfocus;
end;

procedure TFrmCartao_Venda.ActAlterarExecute(Sender: TObject);
begin
  If DataSource.State in dsEditModes Then
     Exit;
  DataSource.DataSet.Edit;
end;

procedure TFrmCartao_Venda.CartaoAfterDelete(DataSet: TDataSet);
Var
   Aux: Real;
begin
    Aux := 0;

    Cartao.DisableControls ;
    Cartao.First ;

    While Not Cartao.Eof do
    begin
         Aux := Aux + Cartaovalor.value ;
         Cartao.Next;
    end;

    Cartao.EnableControls ;

    FrmCartao_Venda.EdDesdobrado.text := FormatFloat ('###,###,##0.00', Aux);

    FrmCartao_Venda.Acumulado := Aux ;
end;

procedure TFrmCartao_Venda.CartaoAfterInsert(DataSet: TDataSet);
begin
   DataSet.Fields[0].Value := DMApp.Cnpj;
   CartaoUSUARIO.Value     := DmaPP.UsuarioCaixa ;
   CartaoCONTA.Value       := DmaPP.ContaCaixa   ;
   CartaoNUM_PARCELAS.Value:= 1;
   CartaoTURNO.VALUE := dmapp.TurnoCaixa ;
end;

procedure TFrmCartao_Venda.CartaoAfterPost(DataSet: TDataSet);
Var
   Aux: Real;
begin
     If FrmCartao_Venda <> Nil
     then begin
          Aux := 0;

          Cartao.DisableControls ;

          Cartao.First ;

          While Not Cartao.Eof do
          begin
               Aux := Aux + Cartaovalor.value ;
               Cartao.Next;
          end;

          Cartao.EnableControls ;

          FrmCartao_Venda.EdDesdobrado.text := FormatFloat ('###,###,##0.00', Aux);

          FrmCartao_Venda.Acumulado := Aux ;
     end;
end;

procedure TFrmCartao_Venda.CartaoBeforeOpen(DataSet: TDataSet);
begin
  (DataSet as TIBDataSet).ParamByName('CNPJ').asString  := DMApp.Cnpj;
end;

procedure TFrmCartao_Venda.CartaoCalcFields(DataSet: TDataSet);
begin
    If CartaoTAXA.Value > 0 then
    CartaoValor_Liquido.Value := CartaoVALOR.Value + ((CartaoVALOR.Value + CartaoTAXA.Value)/100)
  else
    CartaoValor_Liquido.Value := CartaoVALOR.Value ;
end;

procedure TFrmCartao_Venda.CartaoNewRecord(DataSet: TDataSet);
begin
  CartaoVALOR.Value     := Arredonda(FrmCartao_Venda.VlrCartao,2);
  CartaoPESSOA_FJ.Value := Pessoa;
  CartaoCONCILIADO.Value:= 'N'                         ;
  CartaoCONCILIADO.Value:= 'N'                         ;
  CartaoCLIENTE.Value := Nome;
  {
   If TRIM(FaturaTrocasNOME_CONSUMIDOR.vALUE) <> '' THEN
        CartaoCLIENTE.Value := FaturaTrocasNOME.Value
      ELSE
        CartaoCLIENTE.Value := FaturaTrocasNOME_CONSUMIDOR.Value;
  }
  CartaoDATA.Value      := Data;
  {
      if dmapp.LOCAL_FATURA = 'C' THEN
        CartaoDATA.Value      := DmApp.datacaixa
      ELSE
        CartaoDATA.Value      := DmPDV.PdvDATA.Value ;
  }

end;

procedure TFrmCartao_Venda.CartaoADMINISTRADORAValidate(Sender: TField);
begin
   with dmVendas do
   begin
     Geral.Close;
     Geral.Sql.text := ' Select DIASREEMBOLSO, TAXA From FIN_ADMINISTRADORA Where Codigo = :C and CNPJ = :E ';
     Geral.ParamByName ('E').AsString  := DmApp.Cnpj   ;
     Geral.ParamByName ('C').AsInteger := Sender.Value ;
     Geral.Open ;

     If Not Geral.Fields[0].isNull then
     begin
       if Cartao.State in [dsEdit,dsInsert] then
           CartaoREEMBOLSO.Value := Data + Geral.Fields[0].Value
     end;
   end;
end;

procedure TFrmCartao_Venda.CartaoPESSOA_FJValidate(Sender: TField);
begin
    If (not ( Cartao.State in [ DsInsert, DsEdit] )) or ( CartaoPessoa_Fj.IsNull ) then
        Exit;

    with dmVendas do
    begin
       Valida_Cliente.Close;
       Valida_Cliente.ParamByName ('CNPJ').AsString    := DmApp.Cnpj   ;
       Valida_Cliente.ParamByName ('CODIGO').AsInteger := Sender.Value ;
       Valida_Cliente.Open;

       If Valida_ClientePESSOA_FJ.isNull  then
       Begin
          Showmessage ('Cliente Inexistente!');
          Abort;
       end;

       If Not Valida_ClienteNOME.isNull then
          CartaoCLIENTE.Value := Valida_ClienteNOME.Value ;

       If Not Valida_ClienteCPF_CNPJ.isNull then
         CartaoCPF_CNPJ.Value := Valida_ClienteCPF_CNPJ.Value ;

       Valida_Cliente.Close ;
    end;
end;

procedure TFrmCartao_Venda.CartaoTIPOGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  If Sender.Value = 'Deb' Then
        Text := 'Debito';
     If Sender.Value = 'Cre' Then
        Text := 'Credito';
     If Sender.Value = 'Par' Then
        Text := 'Parcelado';
end;

procedure TFrmCartao_Venda.CartaoTIPOSetText(Sender: TField;
  const Text: String);
begin
   If Text = 'Debito' Then
     Sender.Value := 'Deb';
     If Text = 'Credito' Then
     Sender.Value := 'Cre';
     If Text = 'Parcelado' Then
     Sender.Value := 'Par';
end;

procedure TFrmCartao_Venda.CartaoTIPOValidate(Sender: TField);
begin
  with dmVendas do
  begin
    Geral.Close ;
    Geral.Sql.text := ' Select  DIASREEMBOLSO, TAXA, TAXA_DEBITO, TAXA_PARCELADO '+
                      '  From FIN_ADMINISTRADORA Where Codigo = :C and CNPJ = :E ';
    Geral.ParamByName ('E').AsString  := DmApp.Cnpj   ;
    Geral.ParamByName ('C').AsInteger := CartaoADMINISTRADORA.Value ;
    Geral.Open ;

    CartaoREEMBOLSO.Value := Data + Geral.Fields[0].asInteger;

    If Sender.Value = 'Deb' then
      CartaoTAXA.Value := Geral.Fields[2].AsInteger 
    else
      CartaoTAXA.Value := Geral.Fields[1].asInteger;
  end;
end;

end.
