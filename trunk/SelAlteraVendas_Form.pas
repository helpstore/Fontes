unit SelAlteraVendas_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, dxBarDBNav, dxBar,   dxCntner, dxEditor,
  dxEdLib, dxDBELib, StdCtrls, Db, IBCustomDataSet, dxDBEdtr, dxExEdtr,
  Buttons,     dxTL, dxDBCtrl, dxDBGrid,
  dxDBTLCl, dxGrClms,  IBquery,   cxPropertiesStore, dxSkinsCore,
  dxSkinsdxBarPainter, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, cxClasses,   cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinscxPCPainter, cxPC;

type
  TFrmSelAlteraVendas = class(TForm)
    pnlClient: TPanel;
    pnlBottom: TPanel;
    dxBarDockControl1: TdxBarDockControl;
    BarMgr: TdxBarManager;
    Actions: TActionList;
    Bevel1: TBevel;
    b2: TBevel;
    BtnFechar: TdxBarButton;
    Panel1: TPanel;
    ActFechar: TAction;
    DataSource: TDataSource;
    LblTitulo: TLabel;
    pc: TcxPageControl;
    TAB1: TcxTabSheet;
    Shape1: TShape;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edDtInicial: TdxDateEdit;
    edNDocto: TdxEdit;
    kdofoco: TAction;
    Image1: TImage;
    GRID: TdxDBGrid;
    GRIDCODIGO: TdxDBGridMaskColumn;
    GRIDPESSOA_FJ: TdxDBGridMaskColumn;
    GRIDNOME_RAZAO: TdxDBGridMaskColumn;
    GRIDDATA: TdxDBGridDateColumn;
    GRIDVALOR: TdxDBGridMaskColumn;
    GRIDNATUREZA: TdxDBGridColumn;
    GRIDVENDEDOR: TdxDBGridColumn;
    Label4: TLabel;
    GRIDTIPO_VENDA: TdxDBGridColumn;
    GRIDCONSUMIDOR: TdxDBGridColumn;
    ActImprimir: TAction;
    GRIDORCAMENTO: TdxDBGridColumn;
    GRIDNF: TdxDBGridColumn;
    GRIDCF: TdxDBGridColumn;
    ActAtualizar: TAction;
    Label5: TLabel;
    DsClientes: TDataSource;
    CmbCliente: TdxButtonEdit;
    lblnome: TLabel;
    GRIDCAIXA: TdxDBGridColumn;
    GRIDUSUARIO: TdxDBGridColumn;
    GRIDCANCELADA: TdxDBGridColumn;
    ActExtornaCancelamento: TAction;
    dxBarButton1: TdxBarButton;
    stgFrmSelAlteraVendas: TcxPropertiesStore;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dxDBEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure pnlClientResize(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure btnFiltrarClick(Sender: TObject);
    procedure EdDataNotaKeyPress(Sender: TObject; var Key: Char);
    procedure Panel2Exit(Sender: TObject);
    procedure Panel2Enter(Sender: TObject);
    procedure GRIDExit(Sender: TObject);
    procedure ActImprimirExecute(Sender: TObject);
    procedure ActAtualizarExecute(Sender: TObject);
    procedure GRIDKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CmbClienteButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure CmbClienteEnter(Sender: TObject);
    procedure edDtInicialEnter(Sender: TObject);
    procedure edNDoctoEnter(Sender: TObject);
    procedure EdTipoEnter(Sender: TObject);
    procedure CmbClienteExit(Sender: TObject);
    procedure edDtInicialExit(Sender: TObject);
    procedure ActExtornaCancelamentoExecute(Sender: TObject);
  private
    { Private declarations }
    Procedure Filtrar;
  public
    { Public declarations }
  end;

var
  FrmSelAlteraVendas: TFrmSelAlteraVendas;
  Numero: Integer;

implementation

uses Vendas_DM,
     Main,
     Usuarios_DM,
     Funcoes,
     Application_DM,
     Cadastros_DM,
     Localizar_Cliente, EnviaCaixa_FRel;

  {$R *.DFM}

Procedure TFrmSelAlteraVendas.Filtrar;
Var
   Cont: Integer;
Begin
  //
  If DataSource.DataSet.Active Then
     DataSource.DataSet.Close;

  With DmVendas do
  begin
       Cont := 0;

       SelVendasTotais.Sql.Clear    ;
       SelVendasTotais.Params.Clear ;

       SelVendasTotais.Params.CreateParam (FtString, 'CNPJ', PtInput);

       SelVendasTotais.Sql.Add ( ' SELECT * FROM VER_VENDAS_TOTAIS ( :CNPJ ) ' );

       //
       If trim(CmbCliente.Text) <> ''
       Then Begin
            If Cont = 0
            then begin
                 SelVendasTotais.Params.CreateParam (FtInteger, 'CLIENTE', PtInput);

                 SelVendasTotais.Sql.Add ( ' Where PESSOA_FJ = :CLIENTE ' );

                 SelVendasTotais.ParamByName ( 'CLIENTE' ).AsInteger := DMVendas.SelPessoasFJCodigo.Value;

                 Cont := 1;
            END
            ELSE BEGIN
                 SelVendasTotais.Params.CreateParam (FtInteger, 'CLIENTE', PtInput);

                 SelVendasTotais.Sql.Add ( ' And PESSOA_FJ = :CLIENTE ' );

                 SelVendasTotais.ParamByName ( 'CLIENTE' ).AsInteger := DMVendas.SelPessoasFJCodigo.Value;

                 Cont := 1;
            END;
       end;

       //
       If edDtInicial.Text <> '  /  /    '
       Then begin
            If Cont = 0
            then begin
                 SelVendasTotais.Params.CreateParam (FtDate, 'DTINI', PtInput);

                 SelVendasTotais.Sql.Add ( ' Where DATA >= :DTINI ' );

                 SelVendasTotais.ParamByName ( 'DTINI' ).AsDate := edDtInicial.Date;

                 Cont := 1;
            end
            else begin
                 SelVendasTotais.Params.CreateParam (FtDate, 'DTINI', PtInput);

                 SelVendasTotais.Sql.Add ( ' And DATA >= :DTINI ' );

                 SelVendasTotais.ParamByName ( 'DTINI' ).AsDate := edDtInicial.Date;
            end;
       end ;

       //
       If Trim(edNDocto.Text) <> ''
       Then begin
            If Cont = 0
            then begin
                 SelVendasTotais.Params.CreateParam (FtInteger, 'COD', PtInput);

                 SelVendasTotais.Sql.Add ( ' Where CODIGO >= :COD ' );

                 SelVendasTotais.ParamByName ( 'COD' ).AsInteger := strtoint(trim(edNDocto.Text));

                 Cont := 1;
            end
            else begin
                 SelVendasTotais.Params.CreateParam (FtInteger, 'COD', PtInput);

                 SelVendasTotais.Sql.Add ( ' and CODIGO >= :COD ' );

                 SelVendasTotais.ParamByName ( 'COD' ).AsInteger := strtoint(trim(edNDocto.Text));
            end;

            //Nome do cliente
            SelVendasTotais.Sql.Add ( ' order by NOME ' );
       end;
       //
  end;

  //
  DataSource.DataSet.Open;
End;

procedure TFrmSelAlteraVendas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //
  If DataSource.DataSet.Tag = 0 Then
     DataSource.DataSet.Close;

  If dsClientes.DataSet.Tag = 0 Then
     dsClientes.DataSet.Close;

  //
{  DMCadastros.Free;
  DMCadastros := Nil;}

{  DMVendas.Free;
  DMVendas := Nil;}

  Frm_Localizar_Cliente.Free ;
  Frm_Localizar_Cliente := Nil ;

  //
  Action := caFree;
  FrmSelAlteraVendas := Nil;

  //
  If FrmMain.MDIChildCount = 1 Then
     FrmMain.PnlClient.Visible := True;
end;

procedure TFrmSelAlteraVendas.FormShow(Sender: TObject);
begin
  IniciaComponentes ( Self as TForm );

  Try
    If Not(dsClientes.DataSet.Active) Then
       dsClientes.DataSet.Open;

 //   DmCadastros     := TDmCadastros.Create(Self);

    //Cria o Formulario de Localizar Cliente
    Application.CreateForm(TFrm_Localizar_Cliente, Frm_Localizar_Cliente) ;

    edDtInicial.date := DmApp.Data_Servidor ;

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

  cmbCliente.SetFocus;
end;

procedure TFrmSelAlteraVendas.FormCreate(Sender: TObject);
begin
  //
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, LblTitulo.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TFrmSelAlteraVendas.dxDBEdit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Begin
       Perform(WM_NEXTDLGCTL, 0, 0);
       If Self.ActiveControl = pc Then
          Perform(WM_NEXTDLGCTL, 0, 0);
     End;
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmSelAlteraVendas.pnlClientResize(Sender: TObject);
begin
  b2.Width := pnlClient.Width - 17;
end;

procedure TFrmSelAlteraVendas.ActFecharExecute(Sender: TObject);
begin
  If pc.ActivePageIndex <> 0 Then
     pc.ActivePageIndex := 0
  Else
     Begin
       If FrmSelAlteraVendas.FormStyle = fsMDIChild Then
          FrmMain.opFechar.OnClick(FrmMain.opFechar)
       Else
          Close;
     End;
end;

procedure TFrmSelAlteraVendas.btnFiltrarClick(Sender: TObject);
begin
  //FilterDialog.Execute;
  DMApp.Filtrar(DataSource);
end;

procedure TFrmSelAlteraVendas.EdDataNotaKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = '-' Then
     Begin
       (Sender as TdxDBDateEdit).Date := (Sender as TdxDBDateEdit).Date -1;
       (Sender as TdxDBDateEdit).SelectAll;
       Key := #0;
     End;
  If Key = '+' Then
     Begin
       (Sender as TdxDBDateEdit).Date := (Sender as TdxDBDateEdit).Date +1;
       (Sender as TdxDBDateEdit).SelectAll;
       Key := #0;
     End;
end;

procedure TFrmSelAlteraVendas.Panel2Exit(Sender: TObject);
begin
  Filtrar;
end;

procedure TFrmSelAlteraVendas.Panel2Enter(Sender: TObject);
begin
  DataSource.DataSet.Close;
end;

procedure TFrmSelAlteraVendas.GRIDExit(Sender: TObject);
begin
  cmbCliente.SetFocus;
end;

procedure TFrmSelAlteraVendas.ActImprimirExecute(Sender: TObject);
begin
     If DataSource.DataSet.fieldbyname('Codigo').Value > 0
     then begin
          FRelEnviaCaixa := TFRelEnviaCaixa.Create(Self);
          FRelEnviaCaixa.Tipo         := 'FATURA' ;
          FRelEnviaCaixa.PedidoNumero := DataSource.DataSet.FieldByName('CODIGO').asInteger ;
          FRelEnviaCaixa.Showmodal ;
     end;
end;

procedure TFrmSelAlteraVendas.ActAtualizarExecute(Sender: TObject);
begin
     Filtrar;
end;

procedure TFrmSelAlteraVendas.GRIDKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     If Key = 13
     then
         DmVendaS.Proc_Altera_Venda (DmVendas.SelVendasTotaisCODIGO.Value);
end;

procedure TFrmSelAlteraVendas.CmbClienteButtonClick(Sender: TObject; AbsoluteIndex: Integer);
begin
     Frm_Localizar_Cliente.DSource.dataset := DmVendas.SelPessoasFJ ;

     if ( Frm_Localizar_Cliente.showmodal = mrOk )
     Then Begin
          CmbCliente.Text := IntToStr(Frm_Localizar_Cliente.CampTrecho)    ;
          lblnome.Caption := DMVendas.SelPessoasFJNOME_RAZAO.value ;
     end
end;

procedure TFrmSelAlteraVendas.CmbClienteEnter(Sender: TObject);
begin
     CorFundo ( Sender );

end;

procedure TFrmSelAlteraVendas.edDtInicialEnter(Sender: TObject);
begin
     CorFundo ( Sender );

end;

procedure TFrmSelAlteraVendas.edNDoctoEnter(Sender: TObject);
begin
     CorFundo ( Sender );

end;

procedure TFrmSelAlteraVendas.EdTipoEnter(Sender: TObject);
begin
     CorFundo ( Sender );

end;

procedure TFrmSelAlteraVendas.CmbClienteExit(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     TiraCorFundo ( Sender );

     With DmVendas do
     begin
          If Trim(CmbCliente.Text) <> ''
          then begin
               If SelPessoasFJ.locate ( 'CODIGO', CmbCliente.Text, [] )
               then begin
                    CmbCliente.Text  := DMVendas.SelPessoasFJCodigo.Text      ;
                    lblnome.Caption  := DMVendas.SelPessoasFJNOME_RAZAO.value ;
               end
               else begin
                    CmbCliente.Text  := '' ;
                    lblnome.Caption  := '' ;
               end;
          end
          else begin
               CmbCliente.Text  := ''  ;
               lblnome.Caption  := ''  ;
          end;
     end;
end;

procedure TFrmSelAlteraVendas.edDtInicialExit(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     TiraCorFundo ( Sender );
end;

procedure TFrmSelAlteraVendas.ActExtornaCancelamentoExecute(Sender: TObject);
Var
   NUM: Integer;
   BOOK: TBOOKMARK;
begin
     IF DataSource.DataSet.fieldbyname('Codigo').Value > 0
     THEN
         NUM :=  ( DataSource.DataSet.fieldbyname('Codigo').Value )
     ELSE
         NUM := 0;

     IF (( NUM > 0 ) AND ( DataSource.DataSet.fieldbyname('CANCELADA').Value = 'S' ))
     THEN BEGIN
          IF MessageDlg('Deseja Realmente Extornar este Cancelamento ? ' + INTTOSTR(NUM) , mtConfirmation, [mbOk, mbCancel], 0) = MrOk
          THEN BEGIN
               DMAPP.EXTORNA_CANCELAMENTO_VENDA ( NUM );

               BOOK := DataSource.DataSeT.GetBookmark ;

               DataSource.DataSet.close ;

               DataSource.DataSet.open  ;

               DataSource.DataSeT.FreeBookmark ( BOOK ) ;
          END ;
     END;
end;

end.


