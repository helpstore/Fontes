 unit Cheque_Financeiro_Form;

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
  TFrmCheque_Planilha = class(TForm)
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
    Label9: TcxLabel;
    EdDesdobrado: TdxEdit;
    Label10: TcxLabel;
    EdAgencia: TdxDBEdit;
    EdTotal: TdxEdit;
    dxDBEdit5: TdxDBEdit;
    dxDBEdit6: TdxDBEdit;
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
    { Private declarations }
  public
    { Public declarations }
    TotalDesdobrar, Acumulado: Real ;
    Planilha, Retorno, Cliente: Integer;
    ValorDesdobrado: Real;
    Data_Caixa: TDateTime;
    Usuario: Integer;
    Origem: String;

    Function VerificaCheque: Boolean;
  end;

var
  FrmCheque_Planilha: TFrmCheque_Planilha;
implementation

uses Cadastros_DM,
     Listagens_DM,
     Application_DM,
     Main,
     Usuarios_DM,
     Funcoes,
     Bancos_Form,
     Financeiro_Dm;

{$R *.DFM}

Function TFrmCheque_Planilha.VerificaCheque: Boolean;
begin
     If DmApp.TIPO_EMPRESA <> 'Loja'
     THEN BEGIN
          //Soma os Cheques
          VALORDESDOBRADO := DmApp.Cheque_Planilha ( Planilha );

          IF arredonda( VALORDESDOBRADO, 2 ) <> arredonda( TotalDesdobrar, 2 )
          THEN BEGIN
               Result := False;
          END
          ELSE BEGIN
               Result := True;
          END;
     END
     ELSE BEGIN
          //Soma os Cheques
          VALORDESDOBRADO := DmApp.Cheque_Planilha ( Planilha );

          IF arredonda( VALORDESDOBRADO, 2 ) <> arredonda( TotalDesdobrar, 2 )
          THEN BEGIN
               Result := False;
          END
          ELSE BEGIN
               Result := True;
          END;
     END;
end;

procedure TFrmCheque_Planilha.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     IF VERIFICACHEQUE
     THEN BEGIN
          //
          Datasource.Dataset.Close;
          DsBanco.DataSet.Close;
          //
          Action := caFree;
          FrmCheque_Planilha := Nil;
     END
     ELSE BEGIN
          Showmessage ('O Valor Desdobrado R$ ' + FORMATFLOAT('###,###,##0.00', VALORDESDOBRADO ) + CHAR(13) + 'Não Confere com o Valor da Nota R$ ' + formatfloat ('###,###,##0.00', TotalDesdobrar ));
          ABORT;
     END;
end;

procedure TFrmCheque_Planilha.ActIncluirExecute(Sender: TObject);
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
  cmbBanco.setfocus;
end;

procedure TFrmCheque_Planilha.ActExcluirExecute(Sender: TObject);
begin
  If MessageBox(Handle,'Tem certeza que deseja Excluir este Cheque ?',
                       'Atenção !!!',MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2)=IDYES Then
     DataSource.Dataset.Delete;
end;

procedure TFrmCheque_Planilha.ActPostExecute(Sender: TObject);
begin
  Try
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

procedure TFrmCheque_Planilha.ActCancelExecute(Sender: TObject);
begin
  If DataSource.DataSet.State in dsEditModes Then
     DataSource.DataSet.Cancel
  Else
     BtnFechar.OnClick(BtnFechar);
end;

procedure TFrmCheque_Planilha.FormCreate(Sender: TObject);
begin
  //
  ActListagem.Hint := ActListagem.Hint + LblTitulo.Caption + ' [F5]';
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, LblTitulo.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TFrmCheque_Planilha.ActLocalizarExecute(Sender: TObject);
begin
     DMApp.Localizar(Datasource);
end;

procedure TFrmCheque_Planilha.dxDBEdit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if (key=VK_RETURN) OR (Key=VK_DOWN) Then
        Perform(WM_NEXTDLGCTL, 0, 0);
     if (key=VK_UP) then
        Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmCheque_Planilha.pnlClientResize(Sender: TObject);
begin
  b2.Width := pnlClient.Width - 17;
end;

procedure TFrmCheque_Planilha.DataSourceStateChange(Sender: TObject);
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

procedure TFrmCheque_Planilha.ActFecharExecute(Sender: TObject);
begin
  If FrmCheque_Planilha.FormStyle = fsMDIChild Then
     FrmMain.opFechar.OnClick(FrmMain.opFechar)
  Else
     Close;
end;

procedure TFrmCheque_Planilha.FormShow(Sender: TObject);
begin
  IniciaComponentes ( Self as TForm );
  Acumulado := 0;
  Try
    If Not(DsBanco.DataSet.Active) Then
       DsBanco.DataSet.Open;

    With DmFinanceiro do
    begin
      Cheque.Close ;
      Cheque.SelectSQL.text := ' Select * From fin_Cheques where CNPJ = :CNPJ AND PLANILHA = :PLANILHA ';
      Cheque.ParambyName ( 'PLANILHA' ).AsInteger := Planilha ;
      Cheque.Open;
    End;
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
  cmbBanco.SetFocus;
end;

procedure TFrmCheque_Planilha.btnBancosClick(Sender: TObject);
begin

  If ActAlterar.Tag = 0 Then
     Exit;



    If Datasource.DataSet.State = dsBrowse Then
       Datasource.DataSet.Edit;

    DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmBancos', False);
    FrmBancos := TFrmBancos.Create(Self);
    FrmBancos.ShowModal;

    DsBanco.DataSet.Close ;
    DsBanco.DataSet.Open  ;
    Datasource.DataSet.FieldByName('BANCO').asString := FrmMain.Codigo_Str;


    FrmBancos.Free;
    FrmBancos := Nil;
    cmbBanco.SetFocus;
  
end;

procedure TFrmCheque_Planilha.ActLookupExecute(Sender: TObject);
begin
     If FrmCheque_Planilha.ActiveControl = cmbBanco Then
        btnBancos.OnClick(btnBancos);
end;

procedure TFrmCheque_Planilha.dxDBEdit1Exit(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     TIRACORFUNDO ( SENDER );

     IF DATASOURCE.STATE IN [ DSINSERT, DSEDIT ]
     THEN BEGIN
          WHILE LENGTH ( DmFinanceiro.ChequeCHEQUE.VALUE ) < 6 DO
          BEGIN
               DmFinanceiro.ChequeCHEQUE.VALUE := '0' + DmFinanceiro.ChequeCHEQUE.VALUE ;
          END;
     END;
end;

procedure TFrmCheque_Planilha.GRIDKeyPress(Sender: TObject; var Key: Char);
begin
     IF (( KEY = #13 ) and ( Not DataSource.DataSet.FieldByname ('BANCO').Isnull ))
     THEN BEGIN
          DataSource.DATASET.EDIT ;
          cmbBanco.SetFocus ;
     END;
end;

procedure TFrmCheque_Planilha.dxDBEdit2Enter(Sender: TObject);
begin
     CORFUNDO ( SENDER );
end;

procedure TFrmCheque_Planilha.dxDBEdit2Exit(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     TIRACORFUNDO ( SENDER );
end;

end.
