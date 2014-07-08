unit GarantiasItens_Form;

interface

uses
  Windows, Messages, SysUtils, Classes,  Graphics, Controls, Forms, Dialogs,
  dxEditor, dxExEdtr, dxDBEdtr, dxDBELib, dxCntner, dxEdLib, StdCtrls,
   ExtCtrls, Db, Grids, DBGrids, ActnList, dxDBGrid, dxDBTLCl,
  dxGrClms, dxTL, dxDBCtrl, IBCustomDataSet, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinXmas2008Blue, Menus, cxButtons, cxLabel;

type
  TFrmGarantiasItens = class(TForm)
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
    dsProdutos: TDataSource;
    dxDBEdit1: TdxDBEdit;
    ActLista: TActionList;
    ActLookUP: TAction;
    ActSalvar: TAction;
    ActCancelar: TAction;
    ActInserir: TAction;
    GridItens: TdxDBGrid;
    GridItensPRODUTO: TdxDBGridMaskColumn;
    GridItensNome_Produto: TdxDBGridLookupColumn;
    GridItensQUANTIDADE: TdxDBGridMaskColumn;
    GridItensPRC_UNITARIO: TdxDBGridMaskColumn;
    GridItensTotal: TdxDBGridColumn;
    GridItensDesconto: TdxDBGridColumn;
    Label4: TcxLabel;
    dxDBCalcEdit1: TdxDBCalcEdit;
    Label5: TcxLabel;
    dxDBCalcEdit2: TdxDBCalcEdit;
    ActCadastro: TAction;
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
    dxDBEdit5: TdxDBEdit;
    Label14: TcxLabel;
    ActExcluir: TAction;
    CmbTipo: TdxDBPickEdit;
    Label10: TcxLabel;
    GridItensEntradas: TdxDBGridColumn;
    dxDBEdit2: TdxDBEdit;
    Label11: TcxLabel;
    procedure edProdutoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure ActSalvarExecute(Sender: TObject);
    procedure ActCancelarExecute(Sender: TObject);
    procedure btnBuscaClick(Sender: TObject);
    procedure ActInserirExecute(Sender: TObject);
    procedure edPrcUnitExit(Sender: TObject);
    procedure edQtdadeExit(Sender: TObject);
    procedure edProdutoExit(Sender: TObject);
    procedure dxDBCalcEdit1Exit(Sender: TObject);
    procedure dxDBCalcEdit2Exit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ActCadastroExecute(Sender: TObject);
    procedure edProdutoEnter(Sender: TObject);
    procedure edQtdadeEnter(Sender: TObject);
    procedure dxDBEdit2Enter(Sender: TObject);
    procedure edPrcUnitEnter(Sender: TObject);
    procedure dxDBCalcEdit1Enter(Sender: TObject);
    procedure dxDBCalcEdit2Enter(Sender: TObject);
    procedure btnSalvarEnter(Sender: TObject);
    procedure btnSalvarExit(Sender: TObject);
    procedure dxDBEdit1Exit(Sender: TObject);
    procedure edPrcUnit_2Exit(Sender: TObject);
    procedure GridItensKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ActExcluirExecute(Sender: TObject);
    procedure DataSourceStateChange(Sender: TObject);
    procedure CmbTipoExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    ULTLINHA : INTEGER;
    LOCPROD  : Boolean;
    procedure Calcular_Itens;
  end;

var
  FrmGarantiasItens: TFrmGarantiasItens;

implementation

uses
     Application_DM,
     Funcoes,
     Cadastros_DM,
     Produtos_Form,
     Main,
     LocalizarProd_DM,
     Servicos_DM, Localizar_Produto_Cadastro_Auto;

{$R *.DFM}

procedure TFrmGarantiasItens.Calcular_Itens;
Var bReg: Pointer;
    tDescontoE, tProdutosE: Extended;
    tDescontoS, tProdutosS: Extended;
    Itens: Integer;
begin
  //
  If DataSource.DataSet.RecordCount > 0 Then
     bReg := DataSource.DataSet.GetBookmark;
  //
  DataSource.DataSet.DisableControls;
  //
  tProdutosE := 0;
  tDescontoE := 0;

  tProdutosS := 0;
  tDescontoS := 0;

  Itens      := 0;

  //
  DataSource.DataSet.First;
  //
  While Not DataSource.DataSet.Eof Do
  Begin
       If DataSource.DataSet.FieldByName('TIPO').AsString = 'E'
       THEN BEGIN
            //
            tProdutosE  := tProdutosE  + DataSource.DataSet.FieldByName('TOTAL'   ).asFloat;
            tDescontoE  := tDescontoE  + DataSource.DataSet.FieldByName('DESCONTO').asFloat;
       END
       ELSE BEGIN
            //
            tProdutosS  := tProdutosS  + DataSource.DataSet.FieldByName('TOTAL'   ).asFloat;
            tDescontoS  := tDescontoS  + DataSource.DataSet.FieldByName('DESCONTO').asFloat;
       END;

       Itens := Itens + 1 ;

       //
       DataSource.DataSet.Next;
  End;

  LblItens.Caption := Formatfloat ( '###,##0', Itens );
  LblTotal.Caption := Formatfloat ( '###,##0.00',  TProdutosE - TProdutosS );

  //
  If DataSource.DataSet.RecordCount > 0 Then
     Begin
       DataSource.DataSet.GotoBookmark(bReg);
       DataSource.DataSet.FreeBookmark(bReg);
     End;
  //
  DataSource.DataSet.EnableControls;
end;

procedure TFrmGarantiasItens.edProdutoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmGarantiasItens.FormCreate(Sender: TObject);
begin
     ULTLINHA := 0 ;
     LOCPROD  := False ;
end;

procedure TFrmGarantiasItens.ActSalvarExecute(Sender: TObject);
begin
  //
  Try
     If DataSource.DataSet.FieldByName ('TIPO').IsNull
     then begin
          MessageDlg('Digite o Tipo de Movimentação', mtError, [mbOK], 0);
          CmbTipo.SetFocus ;
          exit ;
     end;

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
end;

procedure TFrmGarantiasItens.ActCancelarExecute(Sender: TObject);
begin
     If DataSource.State in [ dsinsert, dsedit ]
     then begin  //
         DataSource.DataSet.Cancel ;
         EdProduto.SetFocus ;
     end
     else
         Close;
end;

procedure TFrmGarantiasItens.btnBuscaClick(Sender: TObject);
Var CodigoProduto: String[13];
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

procedure TFrmGarantiasItens.ActInserirExecute(Sender: TObject);
begin
     If Not ( DataSource.State in [ dsedit, dsinsert ] )
     then
         DataSource.DataSet.Append ;

     edProduto.SetFocus ;
end;

procedure TFrmGarantiasItens.edPrcUnitExit(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     TiraCorFundo ( Sender );

     WITH DMSERVICOS DO
     BEGIN
          IF ( Garantias_Itens.State in [ dsinsert, dsedit ] )
          THEN BEGIN
               If Garantias_ItensPRC_UNIT_ORIGINAL.Value > 0
               then
                   Garantias_ItensDESCONTO.Value     := Garantias_ItensPRC_UNIT_ORIGINAL.Value - Garantias_ItensPRC_UNITARIO.VALUE    ;

               If Garantias_ItensPRC_UNIT_ORIGINAL.Value > 0
               then begin
                    Garantias_ItensPORC_DESC.Value    := Garantias_ItensDESCONTO.Value * 100 / Garantias_ItensPRC_UNIT_ORIGINAL.Value ;
               end
               else begin
                    Garantias_ItensPORC_DESC.Value    := 0 ;
               end;

               If Garantias_ItensPRC_UNIT_ORIGINAL.Value > 0
               then
                   Garantias_ItensPRC_UNITARIO.VALUE := Garantias_ItensPRC_UNIT_ORIGINAL.Value ;
          END;
     END;

end;

procedure TFrmGarantiasItens.edQtdadeExit(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     TiraCorFundo ( Sender );
     IF ( trim( edQtdade.Text ) = '0' ) or (  trim( edQtdade.Text ) = '0,00' ) or ( trim( edQtdade.Text ) = '' )and ( not ( Datasource.DataSet.State in [dsBrowse]))
     then begin
          Showmessage('Digite a Quantidade!');
          edQtdade.SetFocus ;
     end;
end;

procedure TFrmGarantiasItens.edProdutoExit(Sender: TObject);
Var
   Aux: String;
begin
     //TROCA A COR DE FUNDO
     TiraCorFundo ( Sender );

     IF trim( edProduto.Text ) = ''
     then begin
          If Datasource.DataSet.State = dsBrowse Then
          Datasource.DataSet.Append;

          { * * * * * }
          DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmLocProduto', False);

          { * * * * * }
          FrmLocProdutoCadastro_Auto.Showmodal ;

          Datasource.DataSet.FieldByName('PRODUTO').asString := ( FrmLocProdutoCadastro_Auto.CampTrecho );

          edProduto.SetFocus ;
     end
     Else begin
          If LocProd
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

               FrmLocProdutoCadastro_Auto.Showmodal ;

               Datasource.DataSet.FieldByName('PRODUTO').asString := ( FrmLocProdutoCadastro_Auto.CampTrecho );

               edProduto.SetFocus ;

               LocProd := False ;
          end;
     end;

     LocProd := False ;
end;

procedure TFrmGarantiasItens.dxDBCalcEdit1Exit(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     TiraCorFundo ( Sender );
     WITH DMSERVICOS DO
     BEGIN
          IF ( Garantias_ItensPRC_UNITARIO.Value > 0 ) and ( Garantias_Itens.State in [ dsinsert, dsedit ] )
          THEN BEGIN
               Garantias_ItensPORC_DESC.Value := Garantias_ItensDESCONTO.Value * 100 / Garantias_ItensPRC_UNITARIO.Value ;
          END;
     END;
end;

procedure TFrmGarantiasItens.dxDBCalcEdit2Exit(Sender: TObject);
begin
     TiraCorFundo ( Sender );
     WITH DMSERVICOS DO
     BEGIN
          IF ( Garantias_Itens.State in [ dsinsert, dsedit ] )
          THEN BEGIN
               Garantias_ItensDESCONTO.Value := Garantias_ItensPORC_DESC.Value * Garantias_ItensPRC_UNITARIO.Value / 100 ;
          END;
     END;      
end;

procedure TFrmGarantiasItens.FormShow(Sender: TObject);
begin
     IniciaComponentes ( Self as TForm );

     IF DmApp.DIG_PREC_VENDA = 'N'
     THEN
         edPrcUnit.Enabled := False ;


     If DataSource.DataSet.State in [ DsBrowse ]
     then
         ActInserir.Execute
     Else
         edProduto.SetFocus ;
end;

procedure TFrmGarantiasItens.ActCadastroExecute(Sender: TObject);
begin
     If FrmGarantiasItens.ActiveControl = edProduto
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

procedure TFrmGarantiasItens.edProdutoEnter(Sender: TObject);
begin
    CorFundo ( Sender );
end;

procedure TFrmGarantiasItens.edQtdadeEnter(Sender: TObject);
begin
    CorFundo ( Sender );

end;

procedure TFrmGarantiasItens.dxDBEdit2Enter(Sender: TObject);
begin
    CorFundo ( Sender );

end;

procedure TFrmGarantiasItens.edPrcUnitEnter(Sender: TObject);
begin
    CorFundo ( Sender );

end;

procedure TFrmGarantiasItens.dxDBCalcEdit1Enter(Sender: TObject);
begin
    CorFundo ( Sender );

end;

procedure TFrmGarantiasItens.dxDBCalcEdit2Enter(Sender: TObject);
begin
    CorFundo ( Sender );

end;

procedure TFrmGarantiasItens.btnSalvarEnter(Sender: TObject);
begin
     CORFUNDO( Sender );
end;

procedure TFrmGarantiasItens.btnSalvarExit(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     TIRACORFUNDO( Sender );
end;

procedure TFrmGarantiasItens.dxDBEdit1Exit(Sender: TObject);
begin
     TIRACORFUNDO ( SENDER );
end;

procedure TFrmGarantiasItens.edPrcUnit_2Exit(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     TiraCorFundo ( Sender );
end;

procedure TFrmGarantiasItens.GridItensKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     IF KEY = 13
     THEN BEGIN
          edProduto.SetFocus ;
          DataSource.DataSet.Edit ;
     END;
end;

procedure TFrmGarantiasItens.ActExcluirExecute(Sender: TObject);
begin
     //ELIMINA O ITEM
     IF MessageDlg('Excluir Este Item?', mtConfirmation, [mbOK, mbCancel], 0) = MrOk
     then begin
          DataSource.DataSet.Delete ;
     end;
end;

procedure TFrmGarantiasItens.DataSourceStateChange(Sender: TObject);
begin
     If DataSource.State in [ dsinsert, dsedit ]
     then begin
          GridItens.TabStop := False ;
     end
     else begin
          GridItens.TabStop := True ;
     end;
end;

procedure TFrmGarantiasItens.CmbTipoExit(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     TiraCorFundo ( Sender );
end;

end.
