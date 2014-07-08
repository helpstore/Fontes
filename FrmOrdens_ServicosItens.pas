 unit FrmOrdens_ServicosItens;

interface

uses
  Windows,  Messages, SysUtils,  Classes, Graphics, Controls, Forms, Dialogs,
  dxEditor, dxExEdtr, dxDBEdtr, dxDBELib, dxCntner, dxEdLib, StdCtrls,
   ExtCtrls, Db, Grids, DBGrids, ActnList, dxDBGrid, dxDBTLCl,
  dxGrClms, dxTL, dxDBCtrl, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, Menus, cxButtons, cxLabel;

type
  TFrmVendasItens = class(TForm)
    Panel1: TPanel;
    pnlClient: TPanel;
    btnSalvar: TcxButton;
    btnCancelar: TcxButton;
    Label1: TcxLabel;
    Label2: TcxLabel;
    Label3: TcxLabel;
    edProduto: TdxDBEdit;
    edQtdade: TdxDBEdit;
    edPrcUnit: TdxDBCalcEdit;
    DataSource: TDataSource;
    btnBusca: TcxButton;
    dsProdutos: TDataSource;
    edPrcTotal: TdxDBEdit;
    dxDBEdit1: TdxDBEdit;
    ActLista: TActionList;
    ActLookUP: TAction;
    ActSalvar: TAction;
    ActCancelar: TAction;
    ActInserir: TAction;
    Label4: TcxLabel;
    dxDBCalcEdit1: TdxDBCalcEdit;
    Label5: TcxLabel;
    dxDBCalcEdit2: TdxDBCalcEdit;
    Label11: TcxLabel;
    ActNovoProduto: TAction;
    Label7: TcxLabel;
    LblContagem: TcxLabel;
    Label6: TcxLabel;
    LblItens: TcxLabel;
    Label8: TcxLabel;
    LblTotal: TcxLabel;
    Label9: TcxLabel;
    lblpeso: TcxLabel;
    Label12: TcxLabel;
    lblvolume: TcxLabel;
    ActSimilar: TAction;
    DsUnidade: TDataSource;
    cmbUnidade: TdxDBLookupEdit;
    CmbSubUnidade: TdxDBLookupEdit;
    DsSubUnidade: TDataSource;
    GridItens: TDBGrid;
    Label10: TcxLabel;
    EdNatureza: TdxDBEdit;
    Label13: TcxLabel;
    ActNovoCfop: TAction;
    procedure edProdutoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure ActSalvarExecute(Sender: TObject);
    procedure ActCancelarExecute(Sender: TObject);
    procedure btnBuscaClick(Sender: TObject);
    procedure ActLookUPExecute(Sender: TObject);
    procedure ActInserirExecute(Sender: TObject);
    procedure edPrcUnitExit(Sender: TObject);
    procedure edQtdadeExit(Sender: TObject);
    procedure edProdutoExit(Sender: TObject);
    procedure dxDBCalcEdit1Exit(Sender: TObject);
    procedure dxDBCalcEdit2Exit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ActNovoProdutoExecute(Sender: TObject);
    procedure ActSimilarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnSalvarEnter(Sender: TObject);
    procedure btnSalvarExit(Sender: TObject);
    procedure edProdutoEnter(Sender: TObject);
    procedure edQtdadeEnter(Sender: TObject);
    procedure cmbUnidadeExit(Sender: TObject);
    procedure CmbSubUnidadeExit(Sender: TObject);
    procedure ActNovoCfopExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    ULTLINHA  : INTEGER;
    LocProd   : Boolean;
    LocSimilar: Boolean;
    CancelaQtd: Boolean;
    procedure Calcular_Itens;
  end;

var
  FrmVendasItens: TFrmVendasItens;
  PorcDesc: Real;
implementation

uses Vendas_DM,
     Application_DM,
     Funcoes,
     Cadastros_DM,
     Produtos_Form, Main,
     LocalizarProd_DM, Localizar_Natureza;

{$R *.DFM}

procedure TFrmVendasItens.Calcular_Itens;
Var bReg: Pointer;
    tProdutos: Extended;
    Itens    : Integer ;
    Contagem : Extended;
    Peso     : Extended;
    Volume   : Extended;
begin
  //
  If DataSource.DataSet.RecordCount > 0 Then
     bReg := DataSource.DataSet.GetBookmark;
  //
  DataSource.DataSet.DisableControls;
  //
  tProdutos := 0;
  //
  if ( DataSource.state in [ dsinsert, dsedit ] )
  then
      DataSource.DataSet.Cancel ;

  DataSource.DataSet.First;
  Itens    := 0;
  Contagem := 0;
  Peso     := 0;
  Volume   := 0;
  //
  While Not DataSource.DataSet.Eof Do
        Begin
          //
          tProdutos := tProdutos + DataSource.DataSet.FieldByName('TOTAL'       ).asFloat;
          Contagem  := Contagem + DataSource.DataSet.FieldByName('QUANTIDADE'   ).asFloat;
          Peso      := Peso      + DataSource.DataSet.FieldByName('PESO'        ).asFloat;
          VoLume    := Peso      + DataSource.DataSet.FieldByName('VOLUME'      ).asFloat;
          Itens     := Itens + 1 ;
          //
          DataSource.DataSet.Next;
        End;

  LblItens.Caption    := FormatFloat('###,##0',           itens     );
  LblContagem.Caption := FormatFloat('###,##0',           Contagem  );
  LblTotal.Caption    := FormatFloat('###,###,##0.00',    TProdutos );
  LblpESO.Caption     := FormatFloat('###,##0',           PESO      );
  LblVOLUME.Caption   := FormatFloat('###,##0',           VOLUME    );
  //
  If DataSource.DataSet.RecordCount > 0 Then
     Begin
       DataSource.DataSet.GotoBookmark(bReg);
       DataSource.DataSet.FreeBookmark(bReg);
     End;
  //
  DataSource.DataSet.EnableControls;
end;

procedure TFrmVendasItens.edProdutoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmVendasItens.FormCreate(Sender: TObject);
begin
     ULTLINHA   := 0 ;
     LocProd    := False ;
     LocSimilar := False;
     btnBusca.OnClick := btnBuscaClick ;
end;

procedure TFrmVendasItens.ActSalvarExecute(Sender: TObject);
begin
  //
  Try
     If DataSource.State in [ dsinsert, dsedit ]
     then begin  //
          DataSource.DataSet.Post;
          Calcular_Itens ;
          DataSource.DataSet.Append ;
     end;

     edProduto.setfocus ;
         
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
end;

procedure TFrmVendasItens.ActCancelarExecute(Sender: TObject);
begin
     If DataSource.State in [ dsinsert, dsedit ]
     then begin  //
          DmVendas.Vendas_Itens.DisableControls ;
          DataSource.DataSet.Cancel ;
          EdProduto.SetFocus ;
          DmVendas.Vendas_Itens.EnableControls ;
     end
     else
         Close;
end;

procedure TFrmVendasItens.btnBuscaClick(Sender: TObject);
Var CodigoProduto: String[15];
begin
  //
  CodigoProduto := DMApp.LocalizarProduto;
  //
  If Trim(CodigoProduto) <> '' Then
     Begin
          If not ( DataSource.State in [ dsinsert, dsedit ] )
          then
              DataSource.DataSet.append ;

          DataSource.DataSet.FieldByName('PRODUTO').asString := CodigoProduto;

          edQtdade.SetFocus;
     End
  Else
     edProduto.SetFocus;
end;

procedure TFrmVendasItens.ActLookUPExecute(Sender: TObject);
begin
     If FrmVendasItens.ActiveControl = edProduto Then
        btnBusca.OnClick(btnBusca);
end;

procedure TFrmVendasItens.ActInserirExecute(Sender: TObject);
begin
     LocProd    := False ;
     LocSimilar := False ;
     CancelaQtd := False ;

     If Not ( DataSource.State in [ dsedit, dsinsert ] )
     then
         DataSource.DataSet.Append ;

     edProduto.SetFocus ;
end;

procedure TFrmVendasItens.edPrcUnitExit(Sender: TObject);
begin
     TiraCorFundo ( Sender );

     IF ( trim( edPrcUnit.Text ) = '0') or ( trim( edPrcUnit.Text ) = '0,00' ) or ( trim( edPrcUnit.Text ) = '' )and ( not ( Datasource.DataSet.State in [dsBrowse]))
     then begin
          MessageDlg('Digite o Valor!',MtError,[MbOk],0);
          edPrcUnit.SetFocus ;
          Exit;
     end;

     WITH DMVENDAS DO
     BEGIN
          IF ( Vendas_Itens.State in [ dsinsert, dsedit ] )
          THEN BEGIN
               IF ( Vendas_ItensPRC_UNIT_ORIGINAL.IsNull ) or ( Vendas_ItensPRC_UNITARIO.IsNull ) or ( arredonda(Vendas_ItensPRC_UNITARIO.Value, 2) = arredonda(Vendas_ItensPRC_UNIT_ORIGINAL.Value, 2))
               Then begin
                    Vendas_ItensDESCONTO.Value     := arredonda( 0  , 2 ) ;
                    Vendas_ItensPORC_DESC.Value    := arredonda( 0  , 2 ) ;
               end
               Else begin
                    Vendas_ItensDESCONTO.Value     := arredonda(Vendas_ItensPRC_UNIT_ORIGINAL.Value - Vendas_ItensPRC_UNITARIO.VALUE  , 2 ) ;
                    Vendas_ItensPORC_DESC.Value    := arredonda(Vendas_ItensDESCONTO.Value * 100 / Vendas_ItensPRC_UNIT_ORIGINAL.Value, 2 ) ;
                    Vendas_ItensPRC_UNITARIO.VALUE := arredonda(Vendas_ItensPRC_UNIT_ORIGINAL.Value                                   , 2 ) ;
               end;
          END;
     END;
end;

procedure TFrmVendasItens.edQtdadeExit(Sender: TObject);
begin
     TiraCorFundo ( Sender );
     IF ( trim( edQtdade.Text ) = '0' ) or (  trim( edQtdade.Text ) = '0,00' ) or ( trim( edQtdade.Text ) = '' ) and ( not ( Datasource.DataSet.State in [dsBrowse]))
     then begin
          MessageDlg('Digite a Quantidade!',MtError,[MbOk],0);
          edQtdade.SetFocus ;
     end
     else begin

          If DmVendas.VendasLOCAL.Value = 1
          then begin
               If DmApp.BlqQtdeFiscal = 'S'
               THEN BEGIN
                    //A VARIAVEL LOCSIMILAR E PREENCHIDA NO On VALIDATE DO CAMPO QUANTIDADE
                    If LocSimilar
                    then begin
                         ActSimilar.Execute ;

                         If cmbUnidade.enabled
                         then
                             cmbUnidade.SetFocus
                         else
                             edPrcUnit.SetFocus ;
                    end;
               END;
          end;
     end;
end;

procedure TFrmVendasItens.edProdutoExit(Sender: TObject);
Var
   Aux: String;
begin

     IF trim( edProduto.Text ) = ''
     then begin
          //
          If Datasource.DataSet.State = dsBrowse Then
          Datasource.DataSet.Append;
          //
          if FrmLocProdutoCadastro_Auto.Showmodal = mrok then
             Datasource.DataSet.FieldByName('PRODUTO').asString := ( FrmLocProdutoCadastro_Auto.CampTrecho );

          edProduto.SetFocus ;
     end
     Else begin
          If ( LocProd ) and ( DmApp.CHM_PROD_INEXIST = 'S' )
          then begin
               //
               If Datasource.DataSet.State = dsBrowse Then
               Datasource.DataSet.Append;

               Aux := edProduto.Text ;

               If DmApp.Elimina_Zeros = 'S'
               THEN BEGIN
                    While Copy ( Aux, 1, 1 ) = '0' DO
                    BEGIN
                         Aux := Copy ( Aux, 2, 15 );
                    End;
               END;

               If DmApp.Acrescenta_Zeros = 'S'
               THEN BEGIN
                    While Length ( Aux ) < 10 DO
                    BEGIN
                         Aux := '0' + Aux ;
                    End;
               END ;

               edProduto.Text := Aux ;

	       //FECHA O REGISTRO E TRAZ OS NOVOS REGISTROS
               DMLocalizarProd.Produtos.Close ;
               DMLocalizarProd.Produtos.ParamByName ( 'PRODUTO' ).AsString := EdProduto.Text ;
	       DMLocalizarProd.Produtos.Open ;

               //
               DMLocalizarProd.Produtos.LOCATE('CODIGO', EdProduto.Text,[LoPartialKey, LocaseInsensitive]);

                    FrmLocProdutoCadastro_Auto.EdCodigo.Text := EdProduto.Text ;

               if FrmLocProdutoCadastro_Auto.Showmodal = mrok then
                  Datasource.DataSet.FieldByName('PRODUTO').asString := (FrmLocProdutoCadastro_Auto.CampTrecho );


               edProduto.SetFocus ;

               LocProd := False ;
          end;
     end;

     LocProd := False ;
     //TROCA A COR DE FUNDO
     TiraCorFundo ( Sender );
     
end;

procedure TFrmVendasItens.dxDBCalcEdit1Exit(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     TiraCorFundo ( Sender );
     WITH DmVendas DO
     BEGIN
          IF ( Vendas_ItensPRC_UNITARIO.Value > 0 ) and ( Vendas_Itens.State in [ dsinsert, dsedit ] )
          THEN BEGIN
               Vendas_ItensPORC_DESC.Value := arredonda(Vendas_ItensDESCONTO.Value * 100 / Vendas_ItensPRC_UNITARIO.Value,2) ;
          END;
     END;
end;

procedure TFrmVendasItens.dxDBCalcEdit2Exit(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     TiraCorFundo ( Sender );
     WITH DmVendas DO
     BEGIN
          IF ( Vendas_Itens.State in [ dsinsert, dsedit ] ) and ( arredonda( PorcDesc,2) <> Arredonda (DmVendas.Vendas_ItensPORC_DESC.Value,2) )

          THEN BEGIN
               Vendas_ItensDESCONTO.Value := arredonda( Vendas_ItensPORC_DESC.Value * Vendas_ItensPRC_UNITARIO.Value / 100, 2) ;
          END;
     END;      
end;

procedure TFrmVendasItens.FormShow(Sender: TObject);
begin
     IniciaComponentes ( Self as TForm );

     IF DmApp.DIG_PREC_VENDA = 'N'
     THEN BEGIN
          edPrcUnit.Enabled := False ;
     END
     ELSE BEGIN
          edPrcUnit.Enabled := TRUE ;
     END;

     IF DmApp.DIG_UNIDADE_VENDA = 'N'
     THEN BEGIN
          CmbUnidade.Enabled    := False ;
          CmbSubUnidade.Enabled := False ;
          DsUnidade.DataSet.Close        ;
          DsSubUnidade.DataSet.Close     ;
     END
     ELSE BEGIN
          CmbUnidade.Enabled    := true  ;
          CmbSubUnidade.Enabled := true  ;
          DsUnidade.DataSet.Open         ;
          DsSubUnidade.DataSet.Open      ;
     END;

     If Not(  DataSource.DataSet.State in [ dsinsert, dsedit ] )
     then begin
          ActInserir.Execute ;
     end;
end;

procedure TFrmVendasItens.ActNovoProdutoExecute(Sender: TObject);
begin
     If FrmVendasItens.ActiveControl = edProduto
     Then begin
          //
          If Datasource.DataSet.State = dsBrowse Then
          Datasource.DataSet.Edit;
          //
          { * * * * * }
          DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmProdutos', False);
          { * * * * * }
          //

          DmCadastros.Tag := 1;

          FrmProdutos := TFrmProdutos.Create(Application);

          FrmProdutos.Showmodal ;

          Datasource.DataSet.FieldByName('PRODUTO').asString := FrmMain.Codigo_Str;

          
          EdProduto.SetFocus;

          DsProdutos.DataSet.Close;
          DsProdutos.DataSet.Open ;
          //
     end;
end;

procedure TFrmVendasItens.ActSimilarExecute(Sender: TObject);
begin
     //
     If Datasource.DataSet.State = dsBrowse Then
     Datasource.DataSet.Append;

     FrmLocProdutoCadastro_Auto.Showmodal ;

     FrmLocProdutoCadastro_Auto.LblTitulo.Blinking := False ;

     FrmLocProdutoCadastro_Auto.LblTitulo.Caption := 'Localizar Produto' ;

     Datasource.DataSet.FieldByName('PRODUTOFIS').asString := (FrmLocProdutoCadastro_Auto.CampTrecho );

     IF CancelaQtd
     THEN BEGIN
          MessageDlg('Estoque Insuficiente!', mtError, [mbOK], 0);

          btnCancelar.OnClick ( btnCancelar );

          Exit ;
     END
     ELSE BEGIN
          If (
             (Datasource.DataSet.FieldByName('PRODUTOFIS').asString <> '')
             and
             (Datasource.DataSet.FieldByName('PRODUTO').asString <> Datasource.DataSet.FieldByName('PRODUTOFIS').asString)
             and
             (Not Datasource.DataSet.FieldByName('PRODUTOFIS').IsNull)
             )
          then begin
               If cmbUnidade.enabled
               then
                   cmbUnidade.SetFocus
               else
                   edPrcUnit.SetFocus ;
          end
          else begin
               MessageDlg('Não Foi Selecinado '+#13+#10+'Um Produto Válido', mtError, [mbOK], 0);
               DataSource.DataSet.Cancel ;
               EdProduto.SetFocus ;
          end;

          LocSimilar := False ;
     END;
end;

procedure TFrmVendasItens.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     DsUnidade.DataSet.Close        ;
     DsSubUnidade.DataSet.Close     ;
end;

procedure TFrmVendasItens.btnSalvarEnter(Sender: TObject);
begin
     btnSalvar.Colors.Default := StrToInt(DmaPp.COR_FUNDO_SEL) ;
end;

procedure TFrmVendasItens.btnSalvarExit(Sender: TObject);
begin
     btnSalvar.Colors.Default := clMenu ;
end;

procedure TFrmVendasItens.edProdutoEnter(Sender: TObject);
begin
     CorFundo ( Sender );
end;

procedure TFrmVendasItens.edQtdadeEnter(Sender: TObject);
begin
     CorFundo ( Sender );
     PorcDesc := DmVendas.Vendas_ItensPORC_DESC.Value ;
end;

procedure TFrmVendasItens.cmbUnidadeExit(Sender: TObject);
begin
     TiraCorFundo ( Sender );
end;

procedure TFrmVendasItens.CmbSubUnidadeExit(Sender: TObject);
begin
     TiraCorFundo ( Sender );
end;

procedure TFrmVendasItens.ActNovoCfopExecute(Sender: TObject);
begin
     If ( Not DmVendas.Vendas_ItensProduto.IsNull )
     THEN BEGIN
          If Datasource.DataSet.State = dsBrowse
          Then
              Datasource.DataSet.Edit;

          //Chama a Tela Para Localizar Naturezas
          Application.CreateForm(TFrm_Localizar_Natureza, Frm_Localizar_Natureza);
          Frm_Localizar_Natureza.DSource.dataset := DmVendas.SelNatureza ;

          if ( Frm_Localizar_Natureza.showmodal = mrOk )
          Then Begin
               DmVendas.Vendas_ItensCFOP.Value := (Frm_Localizar_Natureza.CampTrecho) ;
          end;
          Frm_Localizar_Natureza.free   ;
          Frm_Localizar_Natureza := Nil ;

          Datasource.DataSet.Post;
     END;
end;

end.
