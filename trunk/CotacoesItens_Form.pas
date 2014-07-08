 unit CotacoesItens_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
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
  TFrmCotacoesItens = class(TForm)
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
    edPrcTotal: TdxDBEdit;
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
    GridItensPorcDesc: TdxDBGridColumn;
    Label4: TcxLabel;
    dxDBCalcEdit1: TdxDBCalcEdit;
    Label5: TcxLabel;
    dxDBCalcEdit2: TdxDBCalcEdit;
    Label11: TcxLabel;
    GridItensUnidade: TdxDBGridColumn;
    dxDBEdit2: TdxDBEdit;
    ActCadastro: TAction;
    Label7: TcxLabel;
    LblContagem: TcxLabel;
    Label6: TcxLabel;
    LblItens: TcxLabel;
    Label8: TcxLabel;
    LblTotal: TcxLabel;
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
  private
    { Private declarations }
  public
    { Public declarations }
    ULTLINHA : INTEGER;
    LOCPROD  : Boolean;
    procedure Calcular_Itens;
  end;

var
  FrmCotacoesItens: TFrmCotacoesItens;

implementation

uses Vendas_DM,
     Application_DM,
     Funcoes,
     Cadastros_DM,
     Produtos_Form,
     Main, LocalizarProd_DM, Localizar_Produto_Cadastro_Auto;

{$R *.DFM}

procedure TFrmCotacoesItens.Calcular_Itens;
Var bReg: Pointer;
    tProdutos: Extended;
    Itens    : Integer ;
    Contagem : Extended;
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

  //
  While Not DataSource.DataSet.Eof Do
        Begin
          //
          tProdutos := tProdutos + DataSource.DataSet.FieldByName('TOTAL'       ).asFloat;

          Contagem  := Contagem + DataSource.DataSet.FieldByName('QUANTIDADE'   ).asFloat;
          Itens     := Itens + 1 ;
          //
          DataSource.DataSet.Next;
        End;

  LblItens.Caption    := FormatFloat('###,##0',           itens     );
  LblContagem.Caption := FormatFloat('###,##0',           Contagem  );
  LblTotal.Caption    := FormatFloat('###,###,##0.00',    TProdutos );

  //
  If DataSource.DataSet.RecordCount > 0 Then
     Begin
       DataSource.DataSet.GotoBookmark(bReg);
       DataSource.DataSet.FreeBookmark(bReg);
     End;
  //
  DataSource.DataSet.EnableControls;
end;

procedure TFrmCotacoesItens.edProdutoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmCotacoesItens.FormCreate(Sender: TObject);
begin
     ULTLINHA := 0 ;
     LOCPROD  := False ;
end;

procedure TFrmCotacoesItens.ActSalvarExecute(Sender: TObject);
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

procedure TFrmCotacoesItens.ActCancelarExecute(Sender: TObject);
begin
     If DataSource.State in [ dsinsert, dsedit ]
     then begin  //
         DataSource.DataSet.Cancel ;
         EdProduto.SetFocus ;
     end
     else
         Close;
end;

procedure TFrmCotacoesItens.btnBuscaClick(Sender: TObject);
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

procedure TFrmCotacoesItens.ActInserirExecute(Sender: TObject);
begin
     If Not ( DataSource.State in [ dsedit, dsinsert ] )
     then
         DataSource.DataSet.Append ;

     edProduto.SetFocus ;
end;

procedure TFrmCotacoesItens.edPrcUnitExit(Sender: TObject);
begin
    //TROCA A COR DE FUNDO
    TiraCorFundo ( Sender );
    If Datasource.DataSet.State = dsBrowse Then
        Datasource.DataSet.Edit;

    {WITH DMVENDAS DO
    BEGIN
      If Cotacoes_ItensPRC_UNITARIO.VALUE > 0 then
      begin
        IF (Cotacoes_Itens.State in [ dsinsert, dsedit ]) THEN
        BEGIN
          Cotacoes_ItensDESCONTO.Value     := Cotacoes_ItensPRC_UNIT_ORIGINAL.Value - Cotacoes_ItensPRC_UNITARIO.VALUE;
          If Cotacoes_ItensPRC_UNIT_ORIGINAL.Value > 0 then
            Cotacoes_ItensPORC_DESC.Value    := Cotacoes_ItensDESCONTO.Value * 100 / Cotacoes_ItensPRC_UNIT_ORIGINAL.Value ;

    Cotacoes_ItensPRC_UNITARIO.VALUE     := Cotacoes_ItensPRC_UNIT_ORIGINAL.Value ;
    end;
    END;
    END;}
end;

procedure TFrmCotacoesItens.edQtdadeExit(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     TiraCorFundo ( Sender );
     If Datasource.DataSet.State = dsBrowse Then
         Datasource.DataSet.Edit;

     IF ( trim( edQtdade.Text ) = '0' ) or (  trim( edQtdade.Text ) = '0,00' ) or ( trim( edQtdade.Text ) = '' )and ( not ( Datasource.DataSet.State in [dsBrowse]))
     then begin
          Showmessage('Digite a Quantidade!');
          edQtdade.SetFocus ;
     end;
end;

procedure TFrmCotacoesItens.edProdutoExit(Sender: TObject);
Var
   Aux: String;
begin
     //TROCA A COR DE FUNDO
     TiraCorFundo ( Sender );

     If Datasource.DataSet.State = dsBrowse Then
       Datasource.DataSet.edit;

     IF trim( edProduto.Text ) = ''
     then begin
          //
          If Datasource.DataSet.State = dsBrowse Then
          Datasource.DataSet.Append;
          //
          { * * * * * }
          DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmLocProduto', False);
          { * * * * * }
          //
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

procedure TFrmCotacoesItens.dxDBCalcEdit1Exit(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     TiraCorFundo ( Sender );
     If Datasource.DataSet.State = dsBrowse Then
        Datasource.DataSet.Edit;

     WITH DmVendas DO
     BEGIN
          IF ( Cotacoes_ItensPRC_UNITARIO.Value > 0 ) and ( Cotacoes_Itens.State in [ dsinsert, dsedit ] )
          THEN BEGIN
               Cotacoes_ItensPORC_DESC.Value := Cotacoes_ItensDESCONTO.Value * 100 / Cotacoes_ItensPRC_UNITARIO.Value ;
          END;
     END;
end;

procedure TFrmCotacoesItens.dxDBCalcEdit2Exit(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     TiraCorFundo ( Sender );
     If Datasource.DataSet.State = dsBrowse Then
        Datasource.DataSet.Edit;

     WITH DmVendas DO
     BEGIN
          IF ( Cotacoes_Itens.State in [ dsinsert, dsedit ] )
          THEN BEGIN
               Cotacoes_ItensDESCONTO.Value := Cotacoes_ItensPORC_DESC.Value * Cotacoes_ItensPRC_UNITARIO.Value / 100 ;
          END;
     END;      
end;

procedure TFrmCotacoesItens.FormShow(Sender: TObject);
begin
     IniciaComponentes ( Self as TForm );

     ActInserir.Execute ;
end;

procedure TFrmCotacoesItens.ActCadastroExecute(Sender: TObject);
begin
     If FrmCotacoesItens.ActiveControl = edProduto
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

procedure TFrmCotacoesItens.edProdutoEnter(Sender: TObject);
begin
   If Datasource.DataSet.State = dsBrowse Then
     Datasource.DataSet.edit;
   CorFundo ( Sender );
end;

procedure TFrmCotacoesItens.edQtdadeEnter(Sender: TObject);
begin
    CorFundo ( Sender );
   If Datasource.DataSet.State = dsBrowse Then
     Datasource.DataSet.edit;
end;

procedure TFrmCotacoesItens.dxDBEdit2Enter(Sender: TObject);
begin
    CorFundo ( Sender );

end;

procedure TFrmCotacoesItens.edPrcUnitEnter(Sender: TObject);
begin
    CorFundo ( Sender );
   If Datasource.DataSet.State = dsBrowse Then
     Datasource.DataSet.edit;
end;

procedure TFrmCotacoesItens.dxDBCalcEdit1Enter(Sender: TObject);
begin
    CorFundo ( Sender );
   If Datasource.DataSet.State = dsBrowse Then
     Datasource.DataSet.edit;
end;

procedure TFrmCotacoesItens.dxDBCalcEdit2Enter(Sender: TObject);
begin
    CorFundo ( Sender );
   If Datasource.DataSet.State = dsBrowse Then
     Datasource.DataSet.edit;
end;

procedure TFrmCotacoesItens.btnSalvarEnter(Sender: TObject);
begin
     CORFUNDO( Sender );
end;

procedure TFrmCotacoesItens.btnSalvarExit(Sender: TObject);
begin
     TIRACORFUNDO( Sender );
end;

end.
