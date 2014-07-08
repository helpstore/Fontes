unit Extorna_Pagar_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, dxBarDBNav, dxBar,   dxCntner, dxEditor,
  dxEdLib, dxDBELib, StdCtrls, Db, IBCustomDataSet, Buttons, dxExEdtr,
  dxDBEdtr, Grids, DBGrids, dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid,
     cxPropertiesStore, cxGraphics, cxControls, cxLookAndFeels,
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
  cxLabel, cxTextEdit, cxDBEdit;

type
  TFrmExtornaPagar = class(TForm)
    pnlClient: TPanel;
    pnlBottom: TPanel;
    dxBarDockControl1: TdxBarDockControl;
    BarDBNavigator: TdxBarDBNavigator;
    BarManager: TdxBarManager;
    dxBarBDBNavFirst: TdxBarDBNavButton;
    dxBarBDBNavPrev: TdxBarDBNavButton;
    dxBarBDBNavNext: TdxBarDBNavButton;
    dxBarBDBNavLast: TdxBarDBNavButton;
    btnLocalizar: TdxBarButton;
    Actions: TActionList;
    Bevel1: TBevel;
    Label1: TcxLabel;
    b2: TBevel;
    LblTitulo: TcxLabel;
    DataSource: TDataSource;
    BtnFechar: TdxBarButton;
    Panel1: TPanel;
    ActFechar: TAction;
    ActLookup: TAction;
    Label8: TcxLabel;
    Label4: TcxLabel;
    Bevel2: TBevel;
    ActPeriodo: TAction;
    Label5: TcxLabel;
    Label2: TcxLabel;
    Label7: TcxLabel;
    Label6: TcxLabel;
    ActExtorna: TAction;
    Label10: TcxLabel;
    Label13: TcxLabel;
    Label3: TcxLabel;
    Label9: TcxLabel;
    Label11: TcxLabel;
    Label12: TcxLabel;
    GRID: TdxDBGrid;
    GRIDCODIGO: TdxDBGridMaskColumn;
    GRIDANO: TdxDBGridMaskColumn;
    GRIDCODIGO_CR: TdxDBGridMaskColumn;
    GRIDANO_CR: TdxDBGridMaskColumn;
    GRIDDT_BAIXA: TdxDBGridDateColumn;
    GRIDHISTORICO_BX: TdxDBGridMaskColumn;
    GRIDPLANILHA: TdxDBGridMaskColumn;
    GRIDTIPO_JUROS: TdxDBGridMaskColumn;
    GRIDPESSOA_FJ: TdxDBGridMaskColumn;
    GRIDDT_EMISSAO: TdxDBGridDateColumn;
    GRIDDT_VENCTO: TdxDBGridDateColumn;
    GRIDDT_LANCTO: TdxDBGridDateColumn;
    GRIDDOCTO: TdxDBGridMaskColumn;
    GRIDPARCELA: TdxDBGridMaskColumn;
    GRIDHISTORICO: TdxDBGridMaskColumn;
    GRIDORIGEM: TdxDBGridMaskColumn;
    GRIDAVISO: TdxDBGridMaskColumn;
    GRIDVALOR: TdxDBGridMaskColumn;
    GRIDJUROS: TdxDBGridMaskColumn;
    GRIDDESCONTOS: TdxDBGridMaskColumn;
    GRIDTAXA_JUROS: TdxDBGridMaskColumn;
    GRIDNOME: TdxDBGridMaskColumn;
    GRIDFONE: TdxDBGridMaskColumn;
    GRIDCPF_CGC: TdxDBGridMaskColumn;
    GRIDTotal: TdxDBGridColumn;
    GRIDVLR_PARCIAL: TdxDBGridColumn;
    GRIDJUROS_REC: TdxDBGridColumn;
    GRIDDESCONTOS_REC: TdxDBGridColumn;
    GRIDVLR_BAIXA: TdxDBGridColumn;
    Label14: TcxLabel;
    Label15: TcxLabel;
    Label16: TcxLabel;
    LblCaixa: TcxLabel;
    ActTrocaCentro: TAction;
    GRIDCENTRO: TdxDBGridColumn;
    Panel4: TPanel;
    BtnExtornaVenda: TcxButton;
    RzBitBtn5: TcxButton;
    stgFrmExtornaPagar: TcxPropertiesStore;
    GRIDCOD_INDEXADOR: TdxDBGridMaskColumn;
    GRIDIDX_DATABASE: TdxDBGridDateColumn;
    GRIDIDX_COTACAO: TdxDBGridMaskColumn;
    GRIDIDX_QTDE: TdxDBGridMaskColumn;
    dxDBEdit1: TcxDBTextEdit;
    dxDBEdit4: TcxDBTextEdit;
    dxDBEdit6: TcxDBTextEdit;
    dxDBEdit13: TcxDBTextEdit;
    dxDBEdit11: TcxDBTextEdit;
    dxDBEdit5: TcxDBTextEdit;
    dxDBEdit3: TcxDBTextEdit;
    EdDocumento: TcxDBTextEdit;
    dxDBEdit7: TcxDBTextEdit;
    dxDBEdit14: TcxDBTextEdit;
    dxDBEdit2: TcxDBTextEdit;
    dxDBEdit9: TcxDBTextEdit;
    dxDBEdit8: TcxDBTextEdit;
    dxDBEdit10: TcxDBTextEdit;
    dxDBEdit12: TcxDBTextEdit;
    dxDBEdit15: TcxDBTextEdit;
    EdParcela: TcxDBTextEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ActLocalizarExecute(Sender: TObject);
    procedure dxDBEdit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure pnlClientResize(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure ActPeriodoExecute(Sender: TObject);
    procedure ActExtornaExecute(Sender: TObject);
    procedure ActTrocaCentroExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmExtornaPagar: TFrmExtornaPagar;

implementation

uses
     Application_DM,
     Main,
     Usuarios_DM,
     Funcoes,
     Financeiro_Dm,
     Cadastros_DM,
     ConfirmaExtorno_Form,
     Filtra_Baixa_Pagar_Form, EntraCentro_Form , Financeiro_Dm2;

{$R *.DFM}

procedure TFrmExtornaPagar.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     Datasource.Dataset.Close;

     DmFinanceiro.SelFornecedor.Close;
     DmFinanceiro.SelCentro.Close;

     Action := caFree;
     FrmExtornaPagar := Nil;

     FrmMain.PnlClient.Visible := True;
end;

procedure TFrmExtornaPagar.FormShow(Sender: TObject);
begin
  IniciaComponentes ( Self as TForm );
  //
  Try
    If Not(DmFinanceiro.SelFornecedor.Active) Then
       DmFinanceiro.SelFornecedor.Open;

    If Not(DmFinanceiro.SelCentro.Active) Then
       DmFinanceiro.SelCentro.Open;

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
  Datasource.AutoEdit := false;
//  grid.SetFocus;
end;

procedure TFrmExtornaPagar.FormCreate(Sender: TObject);
begin
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, LblTitulo.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TFrmExtornaPagar.ActLocalizarExecute(Sender: TObject);
begin
  DMApp.Localizar(Datasource);
end;

procedure TFrmExtornaPagar.dxDBEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmExtornaPagar.pnlClientResize(Sender: TObject);
begin
  b2.Width := pnlClient.Width - 17;
end;

procedure TFrmExtornaPagar.ActFecharExecute(Sender: TObject);
begin
  If FrmExtornaPagar.FormStyle = fsMDIChild Then
     FrmMain.opFechar.OnClick(FrmMain.opFechar)
  Else
     Close;
end;

procedure TFrmExtornaPagar.ActPeriodoExecute(Sender: TObject);
Var
   Cont: Integer;
begin
     Application.CreateForm(TFrmBaixaContasPagar, FrmBaixaContasPagar);
     FrmBaixaContasPagar.dsPessoas.DataSet := DmFinanceiro.SelFornecedor ;
     FrmBaixaContasPagar.Caption           := 'Filtrar';
     FrmBaixaContasPagar.LblTitulo.Caption := 'Filtra Contas Pagas';
     FrmBaixaContasPagar.LblTitulo.Caption := 'Dados do Filtro';

     IF FrmBaixaContasPagar.ShowModal = MROK
     THEN BEGIN
          With DmFinanceiro do
          begin
               Cont := 0 ;

               Baixas_Pagar.Close ;

               Baixas_Pagar.Sql.Clear ;

               Baixas_Pagar.SQL.Add (' Select * From Ver_Baixa_Pagar ( :CNPJ ) ');

               IF (( FrmBaixaContasPagar.Ini.Text <> '  /  /  ' ) and ( FrmBaixaContasPagar.Ini.Text <> '  /  /    ' ))
               THEN BEGIN
                    Baixas_Pagar.Params.CreateParam ( FtDate, 'INI', PtInputOutPut );

                    Baixas_Pagar.SQL.Add (' Where DT_BAIXA >= :INI ');

                    Baixas_Pagar.ParamByName ('INI').asdate := FrmBaixaContasPagar.Ini.Date ;

                    Cont := Cont + 1;
               END;

               IF (( FrmBaixaContasPagar.Fim.Text <> '  /  /  ' ) and ( FrmBaixaContasPagar.Fim.Text <> '  /  /    ' ))
               THEN BEGIN
                    if Cont = 0
                    Then Begin
                         Baixas_Pagar.Params.CreateParam ( FtDate, 'FIM', PtInputOutPut );

                         Baixas_Pagar.SQL.Add (' Where DT_BAIXA <= :FIM ');

                         Baixas_Pagar.ParamByName ('FIM').asdate := FrmBaixaContasPagar.Fim.Date ;

                         Cont := Cont + 1;
                    end
                    Else Begin
                         Baixas_Pagar.Params.CreateParam ( FtDate, 'FIM', PtInputOutPut );

                         Baixas_Pagar.SQL.Add (' and DT_BAIXA <= :FIM ');

                         Baixas_Pagar.ParamByName ('FIM').asdate := FrmBaixaContasPagar.Fim.Date ;

                         Cont := Cont + 1;
                    end;
               END;


               IF ( FrmBaixaContasPagar.CmbPessoa.Text <> '' )
               THEN BEGIN
                    if Cont = 0
                    Then Begin
                         Baixas_Pagar.Params.CreateParam ( FtInteger, 'PES', PtInputOutPut );

                         Baixas_Pagar.SQL.Add (' Where Pessoa_Fj = :PES ');

                         Baixas_Pagar.ParamByName ('PES').asInteger := FrmBaixaContasPagar.CmbPessoa.LookUpKeyValue ;

                         Cont := Cont + 1;
                    end
                    else begin
                         Baixas_Pagar.Params.CreateParam ( FtInteger, 'PES', PtInputOutPut );

                         Baixas_Pagar.SQL.Add (' and Pessoa_Fj = :PES ');

                         Baixas_Pagar.ParamByName ('PES').asInteger := FrmBaixaContasPagar.CmbPessoa.LookUpKeyValue ;

                         Cont := Cont + 1;
                    end;
               END;

               IF ( FrmBaixaContasPagar.EdDocumento.Text <> '' )
               THEN BEGIN
                    if Cont = 0
                    Then Begin
                         Baixas_Pagar.SQL.Add (' Where DOCTO Like ' + char(39) + '%' + FrmBaixaContasPagar.EdDocumento.Text+'%'+ char(39));

                         Cont := Cont + 1;
                    end
                    else begin
                         Baixas_Pagar.SQL.Add (' and DOCTO Like ' + char(39) + '%' + FrmBaixaContasPagar.EdDocumento.Text+'%'+ char(39));

                         Cont := Cont + 1;
                    end;
               END;

               IF ( FrmBaixaContasPagar.EdDocumento.Text <> '' )
               THEN BEGIN
                    if Cont = 0
                    Then Begin
                         Baixas_Pagar.Params.CreateParam ( FtString, 'DOC', PtInputOutPut );

                         Baixas_Pagar.SQL.Add (' Where Duplicata = :DOC ' );

                         Baixas_Pagar.ParamByName ('DOC').asString := FrmBaixaContasPagar.EdDuplicata.Text ;

                         Cont := Cont + 1;
                    end
                    else begin
                         Baixas_Pagar.Params.CreateParam ( FtString, 'DOC', PtInputOutPut );

                         Baixas_Pagar.SQL.Add (' And Duplicata = :DOC ' );

                         Baixas_Pagar.ParamByName ('DOC').asString := FrmBaixaContasPagar.EdDuplicata.Text ;

                         Cont := Cont + 1;
                    end;
               END;

               IF ( FrmBaixaContasPagar.CkConferidas.Checked )
               THEN BEGIN
                    if Cont = 0
                    Then Begin
                         Baixas_Pagar.Params.CreateParam ( FtString, 'CONF', PtInputOutPut );

                         Baixas_Pagar.SQL.Add (' Where Conferida = :CONF ' );

                         Baixas_Pagar.ParamByName ('CONF').asString := 'S' ;

                         Cont := Cont + 1;
                    end
                    else begin
                         Baixas_Pagar.Params.CreateParam ( FtString, 'CONF', PtInputOutPut );

                         Baixas_Pagar.SQL.Add (' And Conferida = :CONF ' );

                         Baixas_Pagar.ParamByName ('CONF').asString := 'S' ;

                         Cont := Cont + 1;
                    end;
               END;

               Baixas_Pagar.Prepare ;
               Baixas_Pagar.Open    ;

               GRID.SETFOCUS ;
          END;
     END;
end;

procedure TFrmExtornaPagar.ActExtornaExecute(Sender: TObject);
begin
     Application.CreateForm(TFrmConfirmaExtorno, FrmConfirmaExtorno);

     FrmConfirmaExtorno.Nome.Text            := DmFinanceiro.Baixas_PagarNOME.Value         ;
     FrmConfirmaExtorno.Documento.Text       := DmFinanceiro.Baixas_PagarDOCTO.Value        ;
     FrmConfirmaExtorno.Historico.Text       := DmFinanceiro.Baixas_PagarHISTORICO_BX.Value ;
     FrmConfirmaExtorno.DataBaixa.Text       := DmFinanceiro.Baixas_PagarDT_BAIXA.AsString  ;
     FrmConfirmaExtorno.DataLancamento.Text  := DmFinanceiro.Baixas_PagarDT_LANCTO.AsString ;
     FrmConfirmaExtorno.Valor.Text           := DmFinanceiro.Baixas_PagarTotal.Text         ;

     If FrmConfirmaExtorno.Showmodal = MrOk then
     begin
        If Not DmaPP.TransactionProc.InTransaction then
          DmaPP.TransactionProc.StartTransaction ;

        try
          dmFinanceiro2.PCD_ESTORNA_PAGAR2.ParamByName('CNPJ').asString        := DmApp.Cnpj ;
          dmFinanceiro2.PCD_ESTORNA_PAGAR2.ParamByName('PLANILHA').asInteger      := DmFinanceiro.Baixas_PAGARPLANILHA.value ;
          dmFinanceiro2.PCD_ESTORNA_PAGAR2.ExecProc;

          DmApp.TransactionProc.Commit ;
        except
        begin
          if DmaPP.TransactionProc.InTransaction then
            DmApp.TransactionProc.Rollback ;

          Application.messagebox('Erro ao efetuar o estorno. Verifique','Aviso',mb_iconerror+mb_ok);
        end;
       //DmFinanceiro.Extorna_Pagar( DmFinanceiro.Baixas_PagarCODIGO.Value, DmFinanceiro.Baixas_PagarAno.Value );
       end;
       DmFinanceiro.Baixas_Pagar.Close;
       DmFinanceiro.Baixas_Pagar.Open ;
     end;

     FrmConfirmaExtorno.Free ;
     FrmConfirmaExtorno := Nil ;
end;

procedure TFrmExtornaPagar.ActTrocaCentroExecute(Sender: TObject);
var
   Numero, ANO, Centro: Integer;
   Book: TbookMark ;
begin

end;

end.
