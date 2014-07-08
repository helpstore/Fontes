 unit Cria_Tab_Ext_Prod_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, dxBarDBNav, dxBar, dxCntner, dxEditor,
  dxEdLib, dxDBELib, StdCtrls, Db, IBCustomDataSet, dxExEdtr, dxDBEdtr,
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
  TFrmTabelaExterna = class(TForm)
    pnlClient: TPanel;
    pnlBottom: TPanel;
    dxBarDockControl1: TdxBarDockControl;
    BarManager: TdxBarManager;
    BtnCancelar: TdxBarButton;
    Actions: TActionList;
    ActCancel: TAction;
    Bevel1: TBevel;
    Label1: TcxLabel;
    Label2: TcxLabel;
    b2: TBevel;
    BtnFechar: TdxBarButton;
    Panel1: TPanel;
    ActFechar: TAction;
    LblTitulo: TcxLabel;
    DataSource: TDataSource;
    Origem: TdxLookupEdit;
    Destino: TdxLookupEdit;
    ActCria: TAction;
    OpCriaTabela: TdxBarButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ActCancelExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dxDBEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure pnlClientResize(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure ActAlterarExecute(Sender: TObject);
    procedure EdInicialEnter(Sender: TObject);
    procedure EdInicialExit(Sender: TObject);
    procedure ActCriaExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmTabelaExterna: TFrmTabelaExterna;

implementation

uses Application_DM, Main, Usuarios_DM, Funcoes, Estoque_Dm, Procedures2_DM;

{$R *.DFM}

procedure TFrmTabelaExterna.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //
  If Datasource.DataSet.Tag = 0 Then
     Datasource.Dataset.Close;
  //

  //
  If FrmTabelaExterna.FormStyle = fsMDIChild Then
     FrmMain.PnlClient.Visible := True;
  //
  Action := caFree;
  FrmTabelaExterna := Nil;
end;

procedure TFrmTabelaExterna.ActCancelExecute(Sender: TObject);
begin
     Close ;
end;

procedure TFrmTabelaExterna.FormShow(Sender: TObject);
begin
  IniciaComponentes ( Self as TForm );
  //
  Try
    If Not(DataSource.DataSet.Active) Then
       Datasource.DataSet.Open;

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
  //  Datasource.AutoEdit := ActAlterar.Enabled;
  Origem.SetFocus;
end;

procedure TFrmTabelaExterna.FormCreate(Sender: TObject);
begin
  //
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, LblTitulo.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TFrmTabelaExterna.dxDBEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmTabelaExterna.pnlClientResize(Sender: TObject);
begin
  b2.Width := pnlClient.Width - 17;
end;

procedure TFrmTabelaExterna.ActFecharExecute(Sender: TObject);
begin
  If FrmTabelaExterna.FormStyle = fsMDIChild Then
     FrmMain.opFechar.OnClick(FrmMain.opFechar)
  Else
     Close;
end;

procedure TFrmTabelaExterna.ActAlterarExecute(Sender: TObject);
begin
  If DataSource.State in dsEditModes Then
     Exit;
  Try
    DataSource.DataSet.Edit;
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
end;

procedure TFrmTabelaExterna.EdInicialEnter(Sender: TObject);
begin
     CORFUNDO ( SENDER );
end;

procedure TFrmTabelaExterna.EdInicialExit(Sender: TObject);
begin
     TIRACORFUNDO ( SENDER );
end;

procedure TFrmTabelaExterna.ActCriaExecute(Sender: TObject);
Var
   Orig, Dest: String;
begin
     If Origem.text = ''
     then begin
          Showmessage('Selecione a Empresa Origem!' );
          Origem.setfocus ;
          Exit ;
     end;

     If Destino.text = ''
     then begin
          Showmessage('Selecione a Empresa Destino!' );
          Destino.setfocus ;
          Exit ;
     end;

     Orig := Origem.LookupKeyValue ;

     Dest := Destino.LookupKeyValue ;

     If Orig = Dest
     then begin
          Showmessage('Empresa Destino Inválida!' );
          Destino.setfocus ;
          Exit ;
     end;

     TRY
        With DMEstoque do
        begin
             Try
                If Not DmaPP.TransactionProc.InTransaction
                then
                    DmaPP.TransactionProc.StartTransaction ;

                //APAGANDO PROCUDURE CRIA
                Sql_Externa.Close ;

                Sql_Externa.SQL.Clear ;

                Sql_Externa.SQL.Add ( ' DROP PROCEDURE CRIA_ARQUIVO_EXTERNO_PRODUTOS ' );

                Sql_Externa.ExecQuery ;


                //APAGANDO PROCEDURE EXPORTA
                Sql_Externa.Close ;

                Sql_Externa.SQL.Clear ;

                Sql_Externa.SQL.Add ( ' DROP PROCEDURE ALTERA_PRECOS_ARQ_EXT_PRODUTOS  ' );

                Sql_Externa.ExecQuery ;

                //APAGANDO TABELA EXTERNA
                Sql_Externa.Close ;

                Sql_Externa.SQL.Clear ;

                Sql_Externa.SQL.Add ( ' DROP TABLE EXT_EST_PRODUTOS ' );

                Sql_Externa.ExecQuery ;


                //CRIANDO TABELA EXTERNA
                Sql_Externa_Tabela.Close ;

                Sql_Externa_Tabela.ExecQuery ;



                //CRIANDO PROCEDURE MIGRA TABELA
                Sql_Externa_Proc_Migra.Close ;

                Sql_Externa_Proc_Migra.ExecQuery ;

                //CRIANDO PROCEDURE CRIA TABELA
                Sql_Externa_Proc_Cria.Close ;

                Sql_Externa_Proc_Cria.ExecQuery ;



                DmApp.TransactionProc.Commit ;

                DMProcs2.CRIA_TABELA_EXTERNA.Close ;
             except
                   DmApp.TransactionProc.Rollback ;
             end;
        end;

        If DMProcs2 = Nil Then
           DMProcs2 := TDMProcs2.Create(Self);

        If Not DmaPP.TransactionProc.InTransaction
        then
            DmaPP.TransactionProc.StartTransaction ;

        DMProcs2.CRIA_TABELA_EXTERNA.ParamByName  ('CNPJ'    ).asString  := Orig  ;

        DMProcs2.CRIA_TABELA_EXTERNA.ExecProc;

        DmApp.TransactionProc.Commit ;

        DMProcs2.CRIA_TABELA_EXTERNA.Close ;
        ShowMessage('Tabela Externa Criada com Sucesso!');
     except
        DmApp.TransactionProc.Rollback ;
        ShowMessage('Erro aO Criar Tabela Externa!');
     end;
end;

end.
