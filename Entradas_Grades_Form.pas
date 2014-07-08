unit Entradas_Grades_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, dxBarDBNav, dxBar,   dxCntner, dxEditor,
  dxEdLib, dxDBELib, StdCtrls, Db, IBCustomDataSet, dxDBTLCl, dxGrClms,
  dxDBCtrl, dxDBGrid, dxTL, dxExEdtr,   Grids, DBGrids, Variants,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinsdxBarPainter, cxClasses, cxLabel;

type
  TFrmEntradas_Grades = class(TForm)
    pnlClient: TPanel;
    pnlBottom: TPanel;
    dxBarDockControl1: TdxBarDockControl;
    BarDBNavigator: TdxBarDBNavigator;
    BarManager: TdxBarManager;
    dxBarBDBNavFirst: TdxBarDBNavButton;
    dxBarBDBNavPrev: TdxBarDBNavButton;
    dxBarBDBNavNext: TdxBarDBNavButton;
    dxBarBDBNavLast: TdxBarDBNavButton;
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
    DataSource: TDataSource;
    BtnListagem: TdxBarButton;
    ActListagem: TAction;
    BtnFechar: TdxBarButton;
    Panel1: TPanel;
    ActFechar: TAction;
    LblTitulo: TcxLabel;
    Label3: TcxLabel;
    LBLQUANTIDADE: TcxLabel;
    Label4: TcxLabel;
    LBLDESDOBRADO: TcxLabel;
    GRID: TDBGrid;
    ActGrades: TAction;
    Label1: TcxLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ActPostExecute(Sender: TObject);
    procedure ActCancelExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dxDBEdit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure pnlClientResize(Sender: TObject);
    procedure DataSourceStateChange(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure EdInicialEnter(Sender: TObject);
    procedure EdInicialExit(Sender: TObject);
    procedure CmbGradeButtonClick(Sender: TObject; AbsoluteIndex: Integer);
    function  SomaLancado ( Valor: Real ): Boolean ;
    procedure EDNUMEROButtonClick(Sender: TObject; AbsoluteIndex: Integer);
    procedure ActGradesExecute(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    Quantidade : Real;
  end;

var
  FrmEntradas_Grades: TFrmEntradas_Grades;

implementation

uses Entradas_DM,
     Application_DM,
     Main,
     Usuarios_DM,
     Funcoes,
     Cadastros_DM,
     Localizar_Grade, Grades_Entradas_Form ;

{$R *.DFM}

function  TFrmEntradas_Grades.SomaLancado ( Valor: Real ): Boolean ;
Var
   Qntde: Real;
begin
     If Datasource.DataSet.State in [ dsiNsert, dsedit ]
     then begin
          Datasource.dataset.cancel ;
     end;

     Datasource.DataSet.First ;

     Qntde := 0;

     while not Datasource.dataset.eof do
     begin
          Qntde := Qntde + Datasource.dataset.fieldbyname ('QUANTIDADE').Value ;

          Datasource.DataSet.Next ;
     end;

     LBLDESDOBRADO.caption := formatfloat('###,##0.00', Qntde);

     If arredonda ( Qntde, 2 ) <> arredonda( Valor, 2 )
     then begin
          Result := False ;
     end
     else begin
          Result := True ;
     end;
end;

procedure TFrmEntradas_Grades.FormClose(Sender: TObject; var Action: TCloseAction);
Var
   Qntde: Real;
begin
     If Datasource.DataSet.State in [ dsiNsert, dsedit ]
     then begin
          Datasource.dataset.cancel ;
     end;

     Datasource.DataSet.First ;

     Qntde := 0;

     while not Datasource.dataset.eof do
     begin
          Qntde := Qntde + Datasource.dataset.fieldbyname ('QUANTIDADE').Value ;

          Datasource.DataSet.Next ;
     end;

     LBLDESDOBRADO.caption := formatfloat('###,##0.00', Qntde);

     If arredonda ( Qntde, 2 ) <> arredonda( Quantidade, 2 )
     then begin
          messagedlg('A Quantidade Desdobrada (' + formatfloat('###,##0.00', Qntde) + '), não confere com o valor da Nota (' + formatfloat('###,##0.00', Quantidade) + ')', mterror, [mbok],0);
          aCTION := CANONE ;         
     end
     else begin
          //
          If Datasource.DataSet.Tag = 0
          Then
              Datasource.Dataset.Close;
          //
          //
          Action := caFree;
          FrmEntradas_Grades := Nil;
     end;
end;

procedure TFrmEntradas_Grades.ActPostExecute(Sender: TObject);
begin
  Try
    DataSource.DataSet.Post;
    DMApp.Transaction.CommitRetaining;

    //Soma Lancado
    SOMALANCADO ( QUANTIDADE ) ;
  Except
  End;
end;

procedure TFrmEntradas_Grades.ActCancelExecute(Sender: TObject);
begin
  If DataSource.DataSet.State in dsEditModes Then
     DataSource.DataSet.Cancel
  Else
     BtnFechar.OnClick(BtnFechar);
end;

procedure TFrmEntradas_Grades.FormShow(Sender: TObject);
begin
  IniciaComponentes ( Self as TForm );

  //
  Try

    If Not(DataSource.DataSet.Active) Then
       Datasource.DataSet.Open;

    (Datasource.DataSet as TIBDataset).FetchAll;

    //Soma Lancado
    SOMALANCADO ( QUANTIDADE ) ;

    //
    With DmEntradas do
    Begin
         Lista_Grades.First ;

         WHILE NOT Lista_Grades.eof DO
         BEGIN
              IF NOT Produtos_Grades.LOCATE ( 'GRADE;NUMERO', VarArrayOf([Lista_GradesGRADE.VALUE,Lista_GradesNUMERO.VALUE]), [])
              THEN BEGIN
                   Produtos_Grades.Append ;

                   Produtos_GradesNUMERO.Value     := Lista_GradesNUMERO.VALUE ;
                   Produtos_GradesGRADE.Value      := Lista_GradesGRADE.VALUE  ;
                   Produtos_GradesQUANTIDADE.Value := 0;
                   Produtos_GradesORDEM.Value      := Lista_GradesOrdem.value  ;

                   Produtos_Grades.post ;
              END;

              Lista_Grades.next ;

              Produtos_Grades.close ;
              Produtos_Grades.open  ;
         END;
    end;
  Except
    On E:EDataBaseError Do
       Begin
         MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
         Exit;
       End
    Else
       Begin
         MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
         Exit;
       End;
  End;
  //
  Datasource.AutoEdit := True ;
  GRID.SetFocus;
end;

procedure TFrmEntradas_Grades.FormCreate(Sender: TObject);
begin
  //
  ActListagem.Hint := ActListagem.Hint + LblTitulo.Caption + ' [F5]';
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, LblTitulo.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TFrmEntradas_Grades.dxDBEdit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmEntradas_Grades.pnlClientResize(Sender: TObject);
begin
  b2.Width := pnlClient.Width - 17;
end;

procedure TFrmEntradas_Grades.DataSourceStateChange(Sender: TObject);
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

procedure TFrmEntradas_Grades.ActFecharExecute(Sender: TObject);
begin
  If FrmEntradas_Grades.FormStyle = fsMDIChild Then
     FrmMain.opFechar.OnClick(FrmMain.opFechar)
  Else
     Close;
end;

procedure TFrmEntradas_Grades.EdInicialEnter(Sender: TObject);
begin
     CORFUNDO ( SENDER );
end;

procedure TFrmEntradas_Grades.EdInicialExit(Sender: TObject);
begin
     TIRACORFUNDO ( SENDER );
end;

procedure TFrmEntradas_Grades.CmbGradeButtonClick(Sender: TObject; AbsoluteIndex: Integer);
begin
     with dmentradas do
     begin
          //Chama a Tela Para Localizar Naturezas
          Application.CreateForm(TFrm_Localizar_Grades, Frm_Localizar_Grades);

          Frm_Localizar_Grades.DSource.DataSet := Lista_Grades ;

          if ( Frm_Localizar_Grades.showmodal = mrOk )
          Then Begin
               If Not ( Produtos_Grades.State in [ dsinsert, dsedit ] )
               then
                   Produtos_Grades.Append ;

               Produtos_GradesNUMERO.Value := (Frm_Localizar_Grades.CampTrecho);
               Produtos_GradesGRADE.Value  := (Frm_Localizar_Grades.Grade     );
          end
          else begin
               MessageDlg( 'Selecione Uma Grade!', MtError, [Mbok], 0);
               Abort;
          end;

          Frm_Localizar_Grades.free   ;
          Frm_Localizar_Grades := Nil ;
     end;
end;

procedure TFrmEntradas_Grades.EDNUMEROButtonClick(Sender: TObject; AbsoluteIndex: Integer);
begin
     with dmentradas do
     begin
          //Chama a Tela Para Localizar Naturezas
          Application.CreateForm(TFrm_Localizar_Grades, Frm_Localizar_Grades);

          Frm_Localizar_Grades.DSource.DataSet := Lista_Grades ;

          if ( Frm_Localizar_Grades.showmodal = mrOk )
          Then Begin
               If Not ( Produtos_Grades.State in [ dsinsert, dsedit ] )
               then
                   Produtos_Grades.Append ;

               Produtos_GradesNUMERO.Value := (Frm_Localizar_Grades.CampTrecho);
          end
          else begin
               MessageDlg( 'Selecione Uma Grade!', MtError, [Mbok], 0);
               Abort;
          end;

          Frm_Localizar_Grades.free   ;
          Frm_Localizar_Grades := Nil ;
     end;
end;

procedure TFrmEntradas_Grades.ActGradesExecute(Sender: TObject);
begin
     { * * * * * }
     DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmGrades_Entradas', False);

     { * * * * * }
{    If DMCadastros = Nil
     then
         DMCadastros := TDMCadastros.Create(Self)
     else
         DMCadastros.Tag := DMCadastros.Tag + 1;}
     //
     FrmGrades_Entradas := TFrmGrades_Entradas.Create(Self);

     FrmGrades_Entradas.Codigo_Produto := DMEntradas.Entradas_ItensPRODUTO.Value ;

     FrmGrades_Entradas.Nome_Produto := DMEntradas.Entradas_ItensNOME_PRODUTO.Value ;

     FrmGrades_Entradas.ShowModal;
     //
     FrmGrades_Entradas.Free;

     FrmGrades_Entradas := Nil;

     //CARREGA AS NOVAS GRADES
     WITH DMENTRADAS DO
     BEGIN
          //VERIFICA A GRADE E O NUMERO
          Lista_Grades.Close ;
          Lista_Grades.ParamByName ( 'CNPJ'    ).AsString := DMAPP.CNPJ   ;
          Lista_Grades.ParamByName ( 'PRODUTO' ).AsString := Entradas_ItensPRODUTO.Value ;
          Lista_Grades.Prepare ;
          Lista_Grades.Open ;

          Lista_Grades.FetchAll ;

          Lista_Grades.First ;

          Lista_Grades.DisableControls ;
          Produtos_Grades.DisableControls ;

          WHILE NOT Lista_Grades.eof DO
          BEGIN
               IF NOT Produtos_Grades.LOCATE ( 'GRADE;NUMERO', VarArrayOf([Lista_GradesGRADE.VALUE,Lista_GradesNUMERO.VALUE]), [])
               THEN BEGIN
                    Produtos_Grades.Append ;

                    Produtos_GradesNUMERO.Value     := Lista_GradesNUMERO.VALUE ;
                    Produtos_GradesGRADE.Value      := Lista_GradesGRADE.VALUE  ;
                    Produtos_GradesQUANTIDADE.Value := 0;
                    Produtos_GradesORDEM.Value      := Lista_GradesOrdem.value  ;

                    Produtos_Grades.post ;
               END;

               Lista_Grades.next ;

               Produtos_Grades.close ;
               Produtos_Grades.open  ;
          END;

          Lista_Grades.EnableControls ;
          Produtos_Grades.EnableControls ;
     END;

     DMEntradas.Produtos_Grades.Close ;

     DMEntradas.Produtos_Grades.Open  ;

{    If DMCadastros.Tag = 0
     then begin
          DMCadastros.free   ;
          DMCadastros := Nil ;
     end
     else
         DMCadastros.Tag := DMCadastros.Tag - 1;}
end;

end.
