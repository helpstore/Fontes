 unit Fatura_Parcelas_Form;
                         
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
  dxSkinXmas2008Blue, dxSkinsdxBarPainter, cxClasses, cxLabel;

type
  TFrmFatura_Parcelas = class(TForm)
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
    ActPeriodo: TAction;
    dxDBEdit5: TdxDBEdit;
    Label9: TcxLabel;
    EdDesdobrado: TdxEdit;
    GRID: TDBGrid;
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
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    Acumulado: Real ;
    Parcelas, Retorno, Intervalo: Integer;
    ValorDesdobrado: Real;
    Codigo: Integer;

    Function Verifica: Boolean;
  end;

var
  FrmFatura_Parcelas: TFrmFatura_Parcelas;
implementation

uses
     Financeiro_DM,
     Application_DM,
     Main,
     Usuarios_DM,
     Funcoes;

{$R *.DFM}

procedure TFrmFatura_Parcelas.FormShow(Sender: TObject);
Var
   Valor, SaldoRest: Real;
   DiaFixo, I, J: Integer;
   Vencimento: TDateTime ;
   Ano, Mes, Dia: Word   ;
begin
//  IniciaComponentes ( Self as TForm );

  dxDBEdit5.text    := formatfloat('###,##0.00', Acumulado);
  EdDesdobrado.text := formatfloat('###,##0.00', ValorDesdobrado);

  Codigo := DMApp.GerarCodigo('FATURA_PARCELAS', 1) ;

  //
  Try
    With DmFinanceiro do
    begin
         Faturas_Pcl.Close ;

         Faturas_Pcl.Params.ByName ( 'CODIGO' ).AsInteger := FrmFatura_Parcelas.CODIGO ;
         Faturas_Pcl.ParamByName('CNPJ').asString        := DMApp.Cnpj;

         Faturas_Pcl.Prepare ;

         Faturas_Pcl.Open    ;

         Faturas_Pcl.FetchAll ;

         //FAZ O PARCELAMENTO

         //Saldo Restante
         SaldoRest := Acumulado ;

         J := Parcelas ;

         DiaFixo := 0;

         If Parcelas > 0
         then
             Valor := (arredonda((Acumulado / Parcelas),2))
         Else
             Valor := 0;

         //Contador
         I := 1;

         Faturas_Pcl.DisableControls ;

         Vencimento := DmApp.Data_Servidor ;

         While I <= J do
         Begin
               IF DIAFIXO <> 0
               THEN BEGIN
                    DIAFIXO := STRTOINT(COPY(DATETOSTR(Vencimento),1,2));

                    //Vencimento
                    Vencimento := Vencimento + Intervalo ;

                    Decodedate(Vencimento, Ano, Mes, Dia);

                    If ( Mes = 2 ) and ( DIAFIXO > 28 )
                    then
                        Vencimento := Encodedate(Ano, Mes, 28)
                    Else
                        Vencimento := Encodedate(Ano, Mes, DIAFIXO);

               END
               ELSE BEGIN
                    //Vencimento
                    Vencimento := Vencimento + Intervalo ;

                    DIAFIXO := STRTOINT(COPY(DATETOSTR(Vencimento),1,2));
               END;

               Faturas_Pcl.Append;

               Faturas_PclCODIGO.VALUE  := FrmFatura_Parcelas.CODIGO ;

               Faturas_PclVALOR.Value   := ARREDONDA(Valor,2)        ;
               Faturas_PclDATA.Value    := Vencimento ;

               SaldoRest := ARREDONDA(SaldoRest - Valor,2) ;

               Parcelas := Parcelas - 1 ;

               IF Parcelas > 0
               THEN
                   Valor := ARREDONDA(SaldoRest / Parcelas,2)  ;

               Faturas_Pcl.Post ;

               I := I + 1;
         end;
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
  GRID.SetFocus;
end;

Function TFrmFatura_Parcelas.Verifica: Boolean;
begin
     ValorDesdobrado := 0;

     if DmFinanceiro.Faturas_Pcl.state in [ dsinsert, dsedit ]
     then begin
          DmFinanceiro.Faturas_Pcl.cancel ;
     end;

     DmFinanceiro.Faturas_Pcl.first ;

     while not DmFinanceiro.Faturas_Pcl.eof do
     begin
          ValorDesdobrado := ValorDesdobrado + DmFinanceiro.Faturas_PclValor.Value ;
          DmFinanceiro.Faturas_Pcl.next ;
     end;

     IF arredonda( ValorDesdobrado, 2 ) <> arredonda( ACUMULADO,2 )
     THEN BEGIN
          Result := False;
     END
     ELSE BEGIN
          Result := True;
     END;
end;

procedure TFrmFatura_Parcelas.ActIncluirExecute(Sender: TObject);
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
  
  GRID.setfocus;
end;

procedure TFrmFatura_Parcelas.ActExcluirExecute(Sender: TObject);
begin
  If MessageBox(Handle,'Tem certeza que deseja Excluir esta Parcela ?',
                       'Atenção !!!',MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2)=IDYES Then
     DataSource.Dataset.Delete;
end;

procedure TFrmFatura_Parcelas.ActPostExecute(Sender: TObject);
begin
  Try
    DataSource.DataSet.Post;
    DMApp.Transaction.CommitRetaining;

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

procedure TFrmFatura_Parcelas.ActCancelExecute(Sender: TObject);
begin
  If DataSource.DataSet.State in dsEditModes Then
     DataSource.DataSet.Cancel
  Else
     BtnFechar.OnClick(BtnFechar);
end;

procedure TFrmFatura_Parcelas.FormCreate(Sender: TObject);
begin
  //
  ActListagem.Hint := ActListagem.Hint + LblTitulo.Caption + ' [F5]';
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, LblTitulo.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TFrmFatura_Parcelas.ActLocalizarExecute(Sender: TObject);
begin
  DMApp.Localizar(Datasource);
end;

procedure TFrmFatura_Parcelas.dxDBEdit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmFatura_Parcelas.pnlClientResize(Sender: TObject);
begin
  b2.Width := pnlClient.Width - 17;
end;

procedure TFrmFatura_Parcelas.DataSourceStateChange(Sender: TObject);
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

procedure TFrmFatura_Parcelas.ActFecharExecute(Sender: TObject);
begin
  If FrmFatura_Parcelas.FormStyle = fsMDIChild Then
     FrmMain.opFechar.OnClick(FrmMain.opFechar)
  Else
     Close;
end;


procedure TFrmFatura_Parcelas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     IF VERIFICA
     THEN BEGIN
          //
          Datasource.Dataset.Close;
          //
          Action := caFree;
          FrmFatura_Parcelas := Nil;
     END
     ELSE BEGIN
          Showmessage ('O Valor Desdobrado R$ ' + FORMATFLOAT('###,###,##0.00', VALORDESDOBRADO ) + CHAR(13) + 'Não Confere com o Valor da Nota R$ ' + formatfloat ('###,###,##0.00', ACUMULADO ));
          ABORT;
     END;
end;

end.
