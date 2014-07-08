 unit Cheque_Pdv_Form;

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
  TFrmCheque_Pdv = class(TForm)
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
    dxDBEdit3: TdxDBEdit;
    Label1: TcxLabel;
    DsBanco: TDataSource;
    Label6: TcxLabel;
    cmbBanco: TdxDBLookupEdit;
    btnBancos: TcxButton;
    EdConta: TdxDBEdit;
    dxDBEdit1: TdxDBEdit;
    dxDBEdit4: TdxDBEdit;
    dxDBEdit5: TdxDBEdit;
    Label9: TcxLabel;
    EdDesdobrado: TdxEdit;
    Label10: TcxLabel;
    EdAgencia: TdxDBEdit;
    dxDBEdit6: TdxDBEdit;
    dxDBEdit7: TdxDBEdit;
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
  private
    Default :TChequeDefault;
    { Private declarations }
  public
    { Public declarations }
    Acumulado: Real ;
    Retorno: Integer;
    ValorDesdobrado: Real;

    Function VerificaCheque: Boolean;
    Function Verifica_Cheque_Prazo: Boolean;

  end;

var
  FrmCheque_Pdv: TFrmCheque_Pdv;
implementation

uses Cadastros_DM,
     Listagens_DM,
     Application_DM,
     Main,
     Usuarios_DM,
     Funcoes,
     Bancos_Form,
     Pdv_DM,
     MensagemClassificacao_Form;

{$R *.DFM}

Function TFrmCheque_Pdv.Verifica_Cheque_Prazo: Boolean;
Var
   Book: TbookMark;
begin
     Book := DmPdv.cheque.GetBookmark ;

     DmPdv.cheque.DisableControls ;

     DmPdv.cheque.First ;

     DmApp.Cheque_Prazo := False ;

     while not DmPdv.cheque.eof do
     begin
          if DmApp.LOCAL_FATURA <> 'C'
          then begin
               if DmPdv.chequePRE_DATE.value > DmApp.Data_Servidor
               then
                   DmApp.Cheque_Prazo := True ;
          end
          else begin
               if DmPdv.chequePRE_DATE.value > DmApp.DataCaixa
               then
                   DmApp.Cheque_Prazo := True ;
          end;

          DmPdv.cheque.Next ;
     end;

     DmPdv.cheque.GotoBookmark ( Book );

     DmPdv.cheque.FreeBookmark ( Book );

     DmPdv.cheque.EnableControls ;
end;

Function TFrmCheque_Pdv.VerificaCheque: Boolean;
begin
     If DmApp.TIPO_EMPRESA <> 'Loja'
     THEN BEGIN
          //Soma os Cheques
          VALORDESDOBRADO := DmApp.Cheque_Venda ( DmPdv.PdvCodigo.Value );

          IF arredonda( VALORDESDOBRADO, 2 ) <> arredonda( DmPdv.PdvCHEQUE.Value,2 )
          THEN BEGIN
               Result := False;
          END
          ELSE BEGIN
               Result := True;
          END;
     END
     ELSE BEGIN
          //Soma os Cheques
          VALORDESDOBRADO := DmApp.Cheque_Venda ( DmPdv.PdvCodigo.Value );

          IF arredonda( VALORDESDOBRADO, 2 ) <> arredonda( DmPdv.PdvCHEQUE.Value,2 )
          THEN BEGIN
               Result := False;
          END
          ELSE BEGIN
               Result := True;
          END;
     END;
end;

procedure TFrmCheque_Pdv.FormClose(Sender: TObject; var Action: TCloseAction);
Var
   Resp: Char ;
begin
     IF VERIFICACHEQUE
     THEN BEGIN
          VERIFICA_CHEQUE_PRAZO ;

          //
          Datasource.Dataset.Close;

          DsBanco.DataSet.Close;

          //
{         If DMCadastros.Tag = 0
          then begin
              DMCadastros.Free ;
              DMCadastros := Nil ;
          end
          else
              DMCadastros.Tag := DMCadastros.Tag + 1;}

          FreeAndNil(Default);

          Action := caFree;
          FrmCheque_Pdv := Nil;
     END
     ELSE BEGIN
          Showmessage ('O Valor Desdobrado R$ ' + FORMATFLOAT('###,###,##0.00', VALORDESDOBRADO ) + CHAR(13) + 'Não Confere com o Valor da Nota R$ ' + formatfloat ('###,###,##0.00', DmPdv.PdvCHEQUE.Value));

          Resp := 'F' ;

          Application.CreateForm(TFrmMensagemClassificacao, FrmMensagemClassificacao);

          FrmMensagemClassificacao.MEMO.Lines.Add ('DIGITE A SENHA GERENCIAL');

          FrmMensagemClassificacao.EdSenha.Visible := true ;
          FrmMensagemClassificacao.Label6.Visible  := true ;
          //Se o Nível ou a Classificacao exigir senha e não foi digitada
          if FrmMensagemClassificacao.Showmodal = MrCancel
          then Begin
               MessageDlg('Senha Não Informada Corretamente!', mtError, [mbOK], 0);
               Resp := 'F' ;
          end
          else
              Resp := 'S' ;

          FrmMensagemClassificacao.Free ;
          FrmMensagemClassificacao := Nil;

          IF RESP = 'F'
          THEN
              ABORT;
     END;
end;

procedure TFrmCheque_Pdv.ActIncluirExecute(Sender: TObject);
begin
  If DataSource.State in dsEditModes Then
     Exit;
  Try
    DataSource.DataSet.Append;
    if Default <> nil then
    begin
      DmPdv.ChequeBANCO.Value := Default.Banco;
      DmPdv.ChequeAGENCIA.Value := Default.Agencia;
      DmPdv.ChequeDIGITO_AGENCIA.Value := Default.AgenciaDv;
      DmPdv.ChequeCONTA.Value := Default.Conta;
      DmPdv.ChequeDIGITO_CONTA.Value := Default.ContaDv;
      DmPdv.ChequeCHEQUE.Value := Default.Cheque;
      DmPdv.ChequeDIGITO_CHEQUE.Value := Default.ChequeDv;
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
  cmbBanco.setfocus;
end;

procedure TFrmCheque_Pdv.ActExcluirExecute(Sender: TObject);
begin
  If MessageBox(Handle,'Tem certeza que deseja Excluir este Cheque ?',
                       'Atenção !!!',MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2)=IDYES Then
     DataSource.Dataset.Delete;
end;

procedure TFrmCheque_Pdv.ActPostExecute(Sender: TObject);
begin
  Try
    DataSource.DataSet.Post;
    DMApp.Transaction.CommitRetaining;
    if Default = nil then
    begin
      Default := TChequeDefault.Create;
      Default.Banco := DmPdv.ChequeBANCO.Value;
      Default.Agencia := DmPdv.ChequeAGENCIA.Value;
      Default.AgenciaDv := DmPdv.ChequeDIGITO_AGENCIA.Value;
      Default.Conta := DmPdv.ChequeCONTA.Value;
      Default.ContaDv := DmPdv.ChequeDIGITO_CONTA.Value;
      Default.Cheque := DmPdv.ChequeCHEQUE.Value;
      Default.ChequeDv := DmPdv.ChequeDIGITO_CHEQUE.Value;
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

procedure TFrmCheque_Pdv.ActCancelExecute(Sender: TObject);
begin
  If DataSource.DataSet.State in dsEditModes Then
     DataSource.DataSet.Cancel
  Else
     BtnFechar.OnClick(BtnFechar);
end;

procedure TFrmCheque_Pdv.FormCreate(Sender: TObject);
begin
  DmApp.Cheque_Prazo := False ;

  //
  ActListagem.Hint := ActListagem.Hint + LblTitulo.Caption + ' [F5]';
  // Se o Usuário for Supervisor
  if DMUsuarios.Direito = 'SUPERVISOR' then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, LblTitulo.Caption, ListaActions(Actions))
  else
    if DMUsuarios.Objeto = Self.Name then
      AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TFrmCheque_Pdv.ActLocalizarExecute(Sender: TObject);
begin
  DMApp.Localizar(Datasource);
end;

procedure TFrmCheque_Pdv.dxDBEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmCheque_Pdv.pnlClientResize(Sender: TObject);
begin
  b2.Width := pnlClient.Width - 17;
end;

procedure TFrmCheque_Pdv.DataSourceStateChange(Sender: TObject);
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

procedure TFrmCheque_Pdv.ActFecharExecute(Sender: TObject);
begin
  If FrmCheque_Pdv.FormStyle = fsMDIChild Then
     FrmMain.opFechar.OnClick(FrmMain.opFechar)
  Else
     Close;
end;

procedure TFrmCheque_Pdv.FormShow(Sender: TObject);
begin
  IniciaComponentes ( Self as TForm );

  Acumulado := 0;
  //
  Try
{   If DMCadastros = Nil
    then
      DMCadastros     := TDMCadastros.Create(Self)
    else
      DMCadastros.Tag := DMCadastros.Tag + 1;}

    If Not(DsBanco.DataSet.Active) Then
       DsBanco.DataSet.Open;

    With DmPdv do
    begin
         Cheque.Close ;

         Cheque.SelectSql.Clear ;

         Cheque.SelectSQL.Add (' Select * From fin_Cheques ');
         Cheque.SelectSQL.Add (' Where CNPJ = :CNPJ AND VENDA = :VENDA ');

         Cheque.Params.ByName ( 'VENDA' ).AsInteger := PdvCodigo.Value ;

         Cheque.Prepare ;
         Cheque.Open    ;
    End;
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

procedure TFrmCheque_Pdv.btnBancosClick(Sender: TObject);
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
  { * * * * * }
  //
{  If DMCadastros = Nil
  then
      DMCadastros     := TDMCadastros.Create(Self)
  else
      DMCadastros.Tag := DMCadastros.Tag + 1;}

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

procedure TFrmCheque_Pdv.ActLookupExecute(Sender: TObject);
begin
     If FrmCheque_Pdv.ActiveControl = cmbBanco Then
        btnBancos.OnClick(btnBancos);
end;

procedure TFrmCheque_Pdv.dxDBEdit1Exit(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     TIRACORFUNDO ( SENDER );
     IF DATASOURCE.STATE IN [ DSINSERT, DSEDIT ]
     THEN BEGIN
          WHILE LENGTH ( DmPdv.ChequeCHEQUE.VALUE ) < 6 DO
          BEGIN
               DmPdv.ChequeCHEQUE.VALUE := '0' + DmPdv.ChequeCHEQUE.VALUE ;
          END;
     END;
end;

procedure TFrmCheque_Pdv.GRIDKeyPress(Sender: TObject; var Key: Char);
begin
     IF (( KEY = #13 ) and ( Not DataSource.DataSet.FieldByname ('BANCO').Isnull ))
     THEN BEGIN
          DataSource.DATASET.EDIT ;
          cmbBanco.SetFocus ;
     END;
end;

procedure TFrmCheque_Pdv.dxDBEdit2Enter(Sender: TObject);
begin
     CORFUNDO ( SENDER );
end;

procedure TFrmCheque_Pdv.dxDBEdit2Exit(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     TIRACORFUNDO ( SENDER );
end;

end.
