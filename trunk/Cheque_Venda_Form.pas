 unit Cheque_Venda_Form;

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
  TChequeDefault = Class(TObject)
  public
    Banco :String;
    Conta :String;
    ContaDv :String;
    Agencia :String;
    AgenciaDv :String;
    Cheque :String;
    ChequeDv :String;
  end;
type
  TFrmCheque_Venda = class(TForm)
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
    Label7: TcxLabel;
    Label3: TcxLabel;
    dxDBEdit2: TdxDBEdit;
    Label1: TcxLabel;
    DsBanco: TDataSource;
    Label6: TcxLabel;
    cmbBanco: TdxDBLookupEdit;
    btnBancos: TcxButton;
    EdConta: TdxDBEdit;
    dxDBEdit1: TdxDBEdit;
    dxDBEdit4: TdxDBEdit;
    Label9: TcxLabel;
    EdDesdobrado: TdxEdit;
    Label10: TcxLabel;
    EdAgencia: TdxDBEdit;
    dxDBEdit6: TdxDBEdit;
    dxDBEdit7: TdxDBEdit;
    EDNOME: TdxDBEdit;
    edtValorTotal: TdxEdit;
    dtCheque: TIBDataSet;
    dtChequeCNPJ: TIBStringField;
    dtChequeAGENCIA: TIBStringField;
    dtChequeBANCO: TIBStringField;
    dtChequeCHEQUE: TIBStringField;
    dtChequeCONCILIADO: TIBStringField;
    dtChequeCONTA: TIBStringField;
    dtChequeEMISSAO: TDateTimeField;
    dtChequeHISTORICO: TIBStringField;
    dtChequePESSOA_FJ: TIntegerField;
    dtChequePRE_DATE: TDateTimeField;
    dtChequeVALOR: TFloatField;
    dtChequeVENDA: TIntegerField;
    dtChequeNOME: TIBStringField;
    dtChequeDATA_CONCILIACAO: TDateTimeField;
    dtChequeJUROS: TFloatField;
    dtChequeMOEDA1: TFloatField;
    dtChequeMOEDA2: TFloatField;
    dtChequeTIPO: TIBStringField;
    dtChequeDATA_ACERTO: TDateTimeField;
    dtChequeDATA_CAIXA: TDateTimeField;
    dtChequeUSUARIO: TIntegerField;
    dtChequeDIGITO_AGENCIA: TIBStringField;
    dtChequeDIGITO_CONTA: TIBStringField;
    dtChequeDIGITO_CHEQUE: TIBStringField;
    dtChequeORIGEM: TIBStringField;
    dtChequeTURNO: TIntegerField;
    dtChequeTROCA: TIntegerField;
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
    procedure ActLookupExecute(Sender: TObject);
    procedure dxDBEdit1Exit(Sender: TObject);
    procedure GRIDKeyPress(Sender: TObject; var Key: Char);
    procedure dxDBEdit2Enter(Sender: TObject);
    procedure dxDBEdit2Exit(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure dtChequeBeforeClose(DataSet: TDataSet);
    procedure dtChequeNewRecord(DataSet: TDataSet);
    procedure dtChequeAfterDelete(DataSet: TDataSet);
    procedure dtChequeAfterInsert(DataSet: TDataSet);
    procedure dtChequeAfterPost(DataSet: TDataSet);
    procedure dtChequeBeforeOpen(DataSet: TDataSet);
    procedure dtChequePESSOA_FJValidate(Sender: TField);
  private
    Default :TChequeDefault;
    Acumulado: Real ;
    { Private declarations }
  public
    { Public declarations }
    ValorDesdobrado: Real;
    CodPessoa, CodTroca, CodVenda, CodReceber  : Integer;
    Cheque,Receber,Troca,Venda : boolean;//variavel será true se o cheque for p/cobrir um um outro cheque
    docHistorico : String; //Usado somente para cobrir outro cheque
    TotalCheques : Real;
    Valor_cheque : Real;

  end;

var
  FrmCheque_Venda: TFrmCheque_Venda;
implementation

uses Cadastros_DM,
     Listagens_DM,
     Application_DM,
     Main,
     Usuarios_DM,
     Funcoes,
     Bancos_Form,
     Vendas_Dm, Financeiro_Dm, Receber_Form, MensagemClassificacao_Form,
  Vendas_DM2;

{$R *.DFM}



procedure TFrmCheque_Venda.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  IF EdtValorTotal.text <> edDesdobrado.Text then
  begin
       application.messagebox(Pchar('O Valor Desdobrado R$ ' + edDesdobrado.text +#13+ 'Não Confere com o Valor Total R$ ' +edtValorTotal.text),'Aviso',mb_iconinformation + mb_ok);

       Application.CreateForm(TFrmMensagemClassificacao, FrmMensagemClassificacao);

       FrmMensagemClassificacao.MEMO.Lines.Add ('DIGITE A SENHA GERENCIAL');

       FrmMensagemClassificacao.EdSenha.Visible := true ;
       FrmMensagemClassificacao.Label6.Visible  := true ;
       //Se o Nível ou a Classificacao exigir senha e não foi digitada
       if FrmMensagemClassificacao.Showmodal = MrCancel
       then Begin
            FrmMensagemClassificacao.Free ;
            FrmMensagemClassificacao := Nil;
            ABORT;
       end;

  end;

  FreeAndNil(Default);
  Action := caFree;
end;

procedure TFrmCheque_Venda.ActIncluirExecute(Sender: TObject);
begin
  If DataSource.State in dsEditModes Then
     Exit;
  Try
    if DataSource.DataSet.state in [dsInactive] then
      DataSource.DataSet.open;

    DataSource.DataSet.Append;
    if Default <> nil then
    begin
      dtChequeBANCO.Value := Default.Banco;
      dtChequeAGENCIA.Value := Default.Agencia;
      dtChequeDIGITO_AGENCIA.Value := Default.AgenciaDv;
      dtChequeCONTA.Value := Default.Conta;
      dtChequeDIGITO_CONTA.Value := Default.ContaDv;
      dtChequeCHEQUE.Value := Default.Cheque;
      dtChequeDIGITO_CHEQUE.Value := Default.ChequeDv;
    end;

    if dtChequePessoa_fj.value = 1
    then begin
         Ednome.enabled := true ;
         Ednome.setfocus ;
    end
    else
        cmbBanco.setfocus;

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

procedure TFrmCheque_Venda.ActExcluirExecute(Sender: TObject);
begin
  If MessageBox(Handle,'Tem certeza que deseja Excluir este Cheque ?',
                       'Atenção !!!',MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2)=IDYES Then
     DataSource.Dataset.Delete;
end;

procedure TFrmCheque_Venda.ActPostExecute(Sender: TObject);
begin
  Try
    DataSource.DataSet.Post;

    Ednome.enabled := false ;

    DMApp.Transaction.CommitRetaining;
    if Default = nil then
    begin
      Default := TChequeDefault.Create;
      Default.Banco := dtChequeBANCO.Value;
      Default.Agencia := dtChequeAGENCIA.Value;
      Default.AgenciaDv := dtChequeDIGITO_AGENCIA.Value;
      Default.Conta := dtChequeCONTA.Value;
      Default.ContaDv := dtChequeDIGITO_CONTA.Value;
      Default.Cheque := inttostr(strtoint(dtChequeCHEQUE.Value) + 1);
      Default.ChequeDv := dtChequeDIGITO_CHEQUE.Value;
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

procedure TFrmCheque_Venda.ActCancelExecute(Sender: TObject);
begin
  If DataSource.DataSet.State in dsEditModes
  Then begin
     DataSource.DataSet.Cancel ;
     Ednome.enabled := false ;
  end
  Else
     BtnFechar.OnClick(BtnFechar);
end;

procedure TFrmCheque_Venda.FormCreate(Sender: TObject);
begin
  //
  ActListagem.Hint := ActListagem.Hint + LblTitulo.Caption + ' [F5]';
  // Se o Usuário for Supervisor
  if DMUsuarios.Direito = 'SUPERVISOR' then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, LblTitulo.Caption, ListaActions(Actions))
  else
    if DMUsuarios.Objeto = Self.Name then
      AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TFrmCheque_Venda.ActLocalizarExecute(Sender: TObject);
begin
  DMApp.Localizar(Datasource);
end;

procedure TFrmCheque_Venda.dxDBEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmCheque_Venda.pnlClientResize(Sender: TObject);
begin
  b2.Width := pnlClient.Width - 17;
end;

procedure TFrmCheque_Venda.DataSourceStateChange(Sender: TObject);
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

procedure TFrmCheque_Venda.ActFecharExecute(Sender: TObject);
begin
  If FrmCheque_Venda.FormStyle = fsMDIChild Then
     FrmMain.opFechar.OnClick(FrmMain.opFechar)
  Else
     Close;
end;

procedure TFrmCheque_Venda.FormShow(Sender: TObject);
begin
  IniciaComponentes ( Self as TForm );
  Acumulado := 0;

  edtValorTotal.Text := formatfloat('###,##0.00',TotalCheques);
  Try
    If Not(DsBanco.DataSet.Active) Then
       DsBanco.DataSet.Open;

      if (Troca) then
      begin
        lblTitulo.Caption := 'Cheques da Troca';
        dtCheque.Close;
        dtCheque.SelectSQL.text := ' Select * From fin_Cheques Where CNPJ = :CNPJ AND troca = :troca ';
        dtCheque.ParamByName('troca').AsInteger := CodTroca ;
        dtCheque.Open;
      end
      else if (Venda) then
      begin
        lblTitulo.Caption := 'Cheques da Venda';
        dtCheque.Close ;
        dtCheque.SelectSQL.text := ' Select * From fin_Cheques where CNPJ = :CNPJ AND VENDA = :VENDA ';
        dtCheque.ParamByName('VENDA').AsInteger := CodVenda ;
        dtCheque.Open;
      end
      else if (cheque) then
      begin
        lblTitulo.Caption := 'Cheques p/ Acerto de Cheque';
      end
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
  cmbBanco.SetFocus;
end;

procedure TFrmCheque_Venda.btnBancosClick(Sender: TObject);
begin
  //
  If ActAlterar.Tag = 0 Then
     Exit;
  //
  If Datasource.DataSet.State = dsBrowse Then
     Datasource.DataSet.Edit;
  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmBancos', False);

  DsBanco.DataSet.Tag := DsBanco.DataSet.Tag + 1;

  FrmBancos := TFrmBancos.Create(Self);
  FrmBancos.ShowModal;
  //
  Datasource.DataSet.FieldByName('BANCO').asString := FrmMain.Codigo_Str;
  FrmBancos.Free;
  FrmBancos := Nil;

  DsBanco.DataSet.Tag := DsBanco.DataSet.Tag - 1;

  //
  cmbBanco.SetFocus;
end;

procedure TFrmCheque_Venda.ActLookupExecute(Sender: TObject);
begin
     If FrmCheque_Venda.ActiveControl = cmbBanco Then
        btnBancos.OnClick(btnBancos);
end;

procedure TFrmCheque_Venda.dxDBEdit1Exit(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     TIRACORFUNDO ( SENDER );
     IF DATASOURCE.STATE IN [ DSINSERT, DSEDIT ]
     THEN BEGIN
          WHILE LENGTH ( dtChequeCHEQUE.VALUE ) < 6 DO
          BEGIN
               dtChequeCHEQUE.VALUE := '0' + dtChequeCHEQUE.VALUE ;
          END;
     END;
end;

procedure TFrmCheque_Venda.GRIDKeyPress(Sender: TObject; var Key: Char);
begin
     IF (( KEY = #13 ) and ( Not DataSource.DataSet.FieldByname ('BANCO').Isnull ))
     THEN BEGIN
          DataSource.DATASET.EDIT ;
          cmbBanco.SetFocus ;
     END;
end;

procedure TFrmCheque_Venda.dxDBEdit2Enter(Sender: TObject);
begin
     CORFUNDO ( SENDER );
end;

procedure TFrmCheque_Venda.dxDBEdit2Exit(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     TIRACORFUNDO ( SENDER );
end;

procedure TFrmCheque_Venda.FormDestroy(Sender: TObject);
begin
  FrmCheque_Venda := nil;
end;

procedure TFrmCheque_Venda.dtChequeBeforeClose(DataSet: TDataSet);
Var
   Aux: Real;
begin
          Aux := 0;

         dtCheque.DisableControls ;

         dtCheque.First ;

          While Not dtCheque.Eof do
          begin
               Aux := Aux +dtChequevalor.value ;
              dtCheque.Next;
          end;

         dtCheque.EnableControls ;

          FrmCheque_Venda.EdDesdobrado.text := FormatFloat ('###,###,##0.00', Aux);

          FrmCheque_Venda.Acumulado := Aux ;
end;

procedure TFrmCheque_Venda.dtChequeNewRecord(DataSet: TDataSet);
var
  valor : real;
  Pessoa: Integer;
  Data : Tdate;
  Historico : string;
begin
     If Dmapp.TurnoCaixa > 0  then
       dtChequeTURNO.VALUE := dmapp.TurnoCaixa ;

     Valor := Arredonda(TotalCheques  - FrmCheque_Venda.Acumulado,2) ;
     Pessoa := CodPessoa;
     Data := date;
     if (Cheque) then
       Historico := trim('Acert cheq :'+docHistorico)
     else
       Historico := trim(docHistorico);


     if (CodVenda > 0) then
       dtChequeVENDA.value := CodVenda;

     if (CodTroca > 0) then
       dtChequeTROCA.value := CodTroca;

     dtChequeVALOR.Value     := Valor;
     dtChequePESSOA_FJ.Value := Pessoa;
     dtChequeCONCILIADO.Value:= 'N'                         ;
     dtChequeEMISSAO.Value   := Data;
     dtChequeTIPO.Value      := 'NO'                        ;
     dtChequeDATA_CAIXA.Value:= DmApp.DataCaixa             ;
     dtChequeUSUARIO.Value   := DmApp.UsuarioCaixa          ;
     dtChequeHISTORICO.Value := Historico
end;

procedure TFrmCheque_Venda.dtChequeAfterDelete(DataSet: TDataSet);
Var
   Aux: Real;
begin
          Aux := 0;

         dtCheque.DisableControls ;

         dtCheque.First ;

          While Not dtCheque.Eof do
          begin
              Aux := Aux +dtChequevalor.value ;
              dtCheque.Next;
          end;

          dtCheque.EnableControls ;

          FrmCheque_Venda.EdDesdobrado.text := FormatFloat ('###,###,##0.00', Aux);

          FrmCheque_Venda.Acumulado := Aux ;
end;

procedure TFrmCheque_Venda.dtChequeAfterInsert(DataSet: TDataSet);
begin
   DataSet.Fields[0].Value := DMApp.Cnpj;
end;

procedure TFrmCheque_Venda.dtChequeAfterPost(DataSet: TDataSet);
Var
   Aux: Real;
begin
          Aux := 0;

         dtCheque.DisableControls ;

         dtCheque.First ;

          While Not dtCheque.Eof do
          begin
               Aux := Aux +dtChequevalor.value ;
              dtCheque.Next;
          end;

         dtCheque.EnableControls ;

          FrmCheque_Venda.EdDesdobrado.text := FormatFloat ('###,###,##0.00', Aux);

          FrmCheque_Venda.Acumulado := Aux ;
end;

procedure TFrmCheque_Venda.dtChequeBeforeOpen(DataSet: TDataSet);
begin
  dtCheque.ParamByName('CNPJ').asString  := DMApp.Cnpj;
end;

procedure TFrmCheque_Venda.dtChequePESSOA_FJValidate(Sender: TField);
Var
   Clas: Integer;
   NomeClas: String;
   Dig_Senha: String;
begin
   with dmVendas2 do
   begin
     Valida_Cliente.Close ;
     Valida_Cliente.ParamByName ('CNPJ').AsString    := DmApp.Cnpj   ;
     Valida_Cliente.ParamByName ('CODIGO').AsInteger := Sender.Value ;
     Valida_Cliente.Open ;

     If Valida_ClientePESSOA_FJ.isNull then
     begin
       Showmessage ('Cliente Inexistente!');
        Abort;
     end;

     If Not Valida_ClienteNOME.isNull then
      dtChequeNOME.Value := Valida_ClienteNOME.Value ;
   end
end;

end.
