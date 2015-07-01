{$A8,B-,C+,D+,E-,F-,G+,H+,I+,J+,K-,L+,M-,N+,O+,P+,Q-,R-,S-,T-,U-,V+,W-,X+,Y+,Z1}
{$MINSTACKSIZE $00004000}
{$MAXSTACKSIZE $00100000}
{$IMAGEBASE $00400000}
{$APPTYPE GUI}
{$WARN SYMBOL_DEPRECATED ON}
{$WARN SYMBOL_LIBRARY ON}
{$WARN SYMBOL_PLATFORM ON}
{$WARN UNIT_LIBRARY ON}
{$WARN UNIT_PLATFORM ON}
{$WARN UNIT_DEPRECATED ON}
{$WARN HRESULT_COMPAT ON}
{$WARN HIDING_MEMBER ON}
{$WARN HIDDEN_VIRTUAL ON}
{$WARN GARBAGE ON}
{$WARN BOUNDS_ERROR ON}
{$WARN ZERO_NIL_COMPAT ON}
{$WARN STRING_CONST_TRUNCED ON}
{$WARN FOR_LOOP_VAR_VARPAR ON}
{$WARN TYPED_CONST_VARPAR ON}
{$WARN ASG_TO_TYPED_CONST ON}
{$WARN CASE_LABEL_RANGE ON}
{$WARN FOR_VARIABLE ON}
{$WARN CONSTRUCTING_ABSTRACT ON}
{$WARN COMPARISON_FALSE ON}
{$WARN COMPARISON_TRUE ON}
{$WARN COMPARING_SIGNED_UNSIGNED ON}
{$WARN COMBINING_SIGNED_UNSIGNED ON}
{$WARN UNSUPPORTED_CONSTRUCT ON}
{$WARN FILE_OPEN ON}
{$WARN FILE_OPEN_UNITSRC ON}
{$WARN BAD_GLOBAL_SYMBOL ON}
{$WARN DUPLICATE_CTOR_DTOR ON}
{$WARN INVALID_DIRECTIVE ON}
{$WARN PACKAGE_NO_LINK ON}
{$WARN PACKAGED_THREADVAR ON}
{$WARN IMPLICIT_IMPORT ON}
{$WARN HPPEMIT_IGNORED ON}
{$WARN NO_RETVAL ON}
{$WARN USE_BEFORE_DEF ON}
{$WARN FOR_LOOP_VAR_UNDEF ON}
{$WARN UNIT_NAME_MISMATCH ON}
{$WARN NO_CFG_FILE_FOUND ON}
{$WARN MESSAGE_DIRECTIVE ON}
{$WARN IMPLICIT_VARIANTS ON}
{$WARN UNICODE_TO_LOCALE ON}
{$WARN LOCALE_TO_UNICODE ON}
{$WARN IMAGEBASE_MULTIPLE ON}
{$WARN SUSPICIOUS_TYPECAST ON}
{$WARN PRIVATE_PROPACCESSOR ON}
{$WARN UNSAFE_TYPE ON}
{$WARN UNSAFE_CODE ON}
{$WARN UNSAFE_CAST ON}
  unit OrcamentosItens_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxEditor, dxExEdtr, dxDBEdtr, dxDBELib, dxCntner, dxEdLib, StdCtrls,
   ExtCtrls, Db, Grids, DBGrids, ActnList, dxDBGrid, dxDBTLCl,
  dxGrClms, dxTL, dxDBCtrl, cxPropertiesStore, Variants, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue, Menus,
  cxButtons, cxLabel;

type
  TFrmOrcamentosItens = class(TForm)
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
    Label4: TcxLabel;
    dxDBCalcEdit1: TdxDBCalcEdit;
    Label5: TcxLabel;
    dxDBCalcEdit2: TdxDBCalcEdit;
    dxDBEdit2: TdxDBEdit;
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
    Label13: TcxLabel;
    edPrcUnit_2: TdxDBCalcEdit;
    dxDBEdit5: TdxDBEdit;
    Label14: TcxLabel;
    Label15: TcxLabel;
    dxDBEdit6: TdxDBEdit;
    Label11: TcxLabel;
    ActPecas: TAction;
    Label10: TcxLabel;
    EDGRADE: TdxDBEdit;
    EDNUMERO: TdxDBEdit;
    ActLocalizarGrade: TAction;
    GridItens: TdxDBGrid;
    GridItensPRODUTO: TdxDBGridMaskColumn;
    GridItensQUANTIDADE: TdxDBGridMaskColumn;
    GridItensPRC_UNITARIO: TdxDBGridMaskColumn;
    GridItensDESCONTO: TdxDBGridMaskColumn;
    GridItensTotal: TdxDBGridColumn;
    GridItensNOME_PRODUTO: TdxDBGridMaskColumn;
    GridItensSaldo: TdxDBGridColumn;
    GridItensGRADE: TdxDBGridMaskColumn;
    GridItensNUMERO: TdxDBGridMaskColumn;
    GridItensQTDE_FATURADA: TdxDBGridMaskColumn;
    stgFrmOrcamentosItens: TcxPropertiesStore;
    GridItensPRC_UNIT_ORIGINAL: TdxDBGridMaskColumn;
    GridItensCOMPLEMENTO: TdxDBGridMaskColumn;
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
    procedure GridItensSaldoCustomDrawCell(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
      AColumn: TdxTreeListColumn; ASelected, AFocused,
      ANewItemRow: Boolean; var AText: String; var AColor: TColor;
      AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EDGRADEEnter(Sender: TObject);
    procedure ActLocalizarGradeExecute(Sender: TObject);
  private
    autorizado : boolean;
    { Private declarations }
  public
    { Public declarations }
    ULTLINHA : INTEGER;
    LOCPROD  : Boolean;
    procedure Calcular_Itens;
  end;

var
  FrmOrcamentosItens: TFrmOrcamentosItens;

implementation

uses Vendas_DM,
     Application_DM,
     Funcoes,
     Cadastros_DM,
     Produtos_Form,
     Main,
     LocalizarProd_DM, Localizar_Produto_Cadastro_Auto, Vendas_DM2,
  Localizar_Grade, Orcamentos_Form;

{$R *.DFM}

procedure TFrmOrcamentosItens.Calcular_Itens;
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
          Peso      := Peso      + DataSource.DataSet.FieldByName('PESO'        ).asFloat;
          VoLume    := Peso      + DataSource.DataSet.FieldByName('VOLUME'      ).asFloat;

          Contagem  := Contagem + DataSource.DataSet.FieldByName('QUANTIDADE'   ).asFloat;
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

procedure TFrmOrcamentosItens.edProdutoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmOrcamentosItens.FormCreate(Sender: TObject);
begin
     ULTLINHA := 0 ;
     LOCPROD  := False ;
    FrmLocProdutoCadastro_Auto := TFrmLocProdutoCadastro_Auto.Create(Self);
end;

procedure TFrmOrcamentosItens.ActSalvarExecute(Sender: TObject);
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

procedure TFrmOrcamentosItens.ActCancelarExecute(Sender: TObject);
begin
     If DataSource.State in [ dsinsert, dsedit ]
     then begin  //
         DataSource.DataSet.Cancel ;
         EdProduto.SetFocus ;
     end
     else
         Close;
end;

procedure TFrmOrcamentosItens.btnBuscaClick(Sender: TObject);
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

procedure TFrmOrcamentosItens.ActInserirExecute(Sender: TObject);
begin
     If Not ( DataSource.State in [ dsedit, dsinsert ] )
     then
         DataSource.DataSet.Append ;

     edProduto.SetFocus ;
end;

procedure TFrmOrcamentosItens.edPrcUnitExit(Sender: TObject);
begin
  //TROCA A COR DE FUNDO
  TiraCorFundo ( Sender );
  if ( trim( edPrcUnit.Text ) = '0') or ( trim( edPrcUnit.Text ) = '0,00' ) or ( trim( edPrcUnit.Text ) = '' )and ( not ( Datasource.DataSet.State in [dsBrowse]))
  then
  begin
    MessageDlg('Digite o Valor!',MtError,[MbOk],0);
    edPrcUnit.SetFocus ;
    Exit;
  end;

  with FrmOrcamentos do
  begin
    if ( Orcamentos_Itens.State in [ dsinsert, dsedit ] ) then
    begin
      if Orcamentos_ItensPRC_UNITARIO.Value > Orcamentos_ItensPRC_UNIT_ORIGINAL.Value then
      begin
        Orcamentos_ItensDESCONTO.Value  := 0;
        Orcamentos_ItensPORC_DESC.Value  := 0;
        exit;
      end;

      Orcamentos_ItensDESCONTO.Value     := arredonda(Arredonda(Orcamentos_ItensPRC_UNIT_ORIGINAL.Value,2) - Orcamentos_ItensPRC_UNITARIO.VALUE,2) ;
      Orcamentos_ItensPORC_DESC.Value    := Orcamentos_ItensDESCONTO.Value * 100 /Arredonda(Orcamentos_ItensPRC_UNIT_ORIGINAL.Value,2);
      Orcamentos_ItensPRC_UNITARIO.value := (Arredonda(Orcamentos_ItensPRC_UNIT_ORIGINAL.Value,2) - Orcamentos_ItensDESCONTO.Value);

      DmVendas2.qryAux.close;
      DmVendas2.qryAux.sql.text := ' select desconto_maximo from SIS_EMPRESAS';
      DmVendas2.qryAux.open;

      if (DmVendas2.qryAux.fieldbyname('desconto_maximo').asfloat < Orcamentos_ItensPORC_DESC.asfloat) then
      begin
        If Not Autorizado then
        begin
          If Not PedirSenha (  'Desconto Acima do ', 'Máximo Permitido!','' ) then
             edPrcUnit.SetFocus
           else
             Autorizado := True ;
        end;
      end;
    end;
  end;
end;

procedure TFrmOrcamentosItens.edQtdadeExit(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     TiraCorFundo ( Sender );
     IF ( trim( edQtdade.Text ) = '0' ) or (  trim( edQtdade.Text ) = '0,00' ) or ( trim( edQtdade.Text ) = '' )and ( not ( Datasource.DataSet.State in [dsBrowse]))
     then begin
          Showmessage('Digite a Quantidade!');
          edQtdade.SetFocus ;
     end;
end;

procedure TFrmOrcamentosItens.edProdutoExit(Sender: TObject);
Var
   Aux, AuxSql: String;
   Aux2: Variant;
begin
     //TROCA A COR DE FUNDO
     TiraCorFundo ( Sender );
     IF trim( edProduto.Text ) = ''
     then begin
          //
          If Datasource.DataSet.State = dsBrowse Then
          Datasource.DataSet.Append;

          { * * * * * }
          DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmLocProduto', False);

          { * * * * * }
          //
          if FrmLocProdutoCadastro_Auto.Showmodal = mrok then
            Datasource.DataSet.FieldByName('PRODUTO').asString := (FrmLocProdutoCadastro_Auto.CampTrecho);


        //Validando produto ativo -- Sanniel
        AuxSql := 'select coalesce(prd.ativo, ' + '''' + 'N' +'''' + ') from est_produtos prd where prd.cnpj = ' + '''' + FrmOrcamentos.Orcamentos_ItensCNPJ.AsString + '''' + ' and prd.codigo = ' + '''' + FrmOrcamentos.Orcamentos_ItensPRODUTO.AsString + '''';
        Aux2 := RetornaValor(AuxSql);
        if Aux2 = 'N' then
        begin
          Application.MessageBox('Produto Inativo.','Aviso',mb_iconerror + mb_ok);
          Datasource.DataSet.FieldByName('PRODUTO').asString := '';
        end else
        begin
          //Validando estoque comprometido. -- Sanniel
          AuxSql := 'select est_disponivel from pcd_lista_produto(' + '''' + FrmOrcamentos.Orcamentos_ItensCNPJ.AsString + '''' + ', ' + '''' + FrmOrcamentos.Orcamentos_ItensPRODUTO.AsString + '''' + ')';
          Aux2 := RetornaValor(AuxSql);
          if Aux2 < 1 then
          begin
            Application.MessageBox('Produto com saldo insuficiente.','Aviso',mb_iconerror + mb_ok);
            Datasource.DataSet.FieldByName('PRODUTO').asString := '';
          end;
        end;
        
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

               Datasource.DataSet.FieldByName('PRODUTO').asString := (FrmLocProdutoCadastro_Auto.CampTrecho );

               edProduto.SetFocus ;

               LocProd := False ;
          end;
     end;

     LocProd := False ;
end;

procedure TFrmOrcamentosItens.dxDBCalcEdit1Exit(Sender: TObject);
begin
     autorizado := false;
     //TROCA A COR DE FUNDO
     TiraCorFundo ( Sender );
     WITH FrmOrcamentos DO
     BEGIN
       if not (Orcamentos_Itens.State in [ dsinsert, dsedit ] )then
         exit;

       if Orcamentos_ItensPRC_UNITARIO.Value > Orcamentos_ItensPRC_UNIT_ORIGINAL.Value then
       begin
         Orcamentos_ItensDESCONTO.Value := 0;
         Orcamentos_ItensPORC_DESC.Value := 0;
         exit;
       end;

       Orcamentos_ItensPORC_DESC.Value := Orcamentos_ItensDESCONTO.Value * 100 / Arredonda(Orcamentos_ItensPRC_UNIT_ORIGINAL.Value,2) ;
       Orcamentos_ItensPRC_UNITARIO.value := (Arredonda(Orcamentos_ItensPRC_UNIT_ORIGINAL.Value,2) - Orcamentos_ItensDESCONTO.Value);


       DmVendas2.qryAux.close;
       DmVendas2.qryAux.sql.text := ' select desconto_maximo from SIS_EMPRESAS';
       DmVendas2.qryAux.open;

       if (DmVendas2.qryAux.fieldbyname('desconto_maximo').asfloat < Orcamentos_ItensPORC_DESC.asfloat) then
       begin
          If Not Autorizado then
          begin
            If Not PedirSenha (  'Desconto Acima do ', 'Máximo Permitido!','' ) then
              dxDBCalcEdit1.SetFocus
            else
              Autorizado := True ;
          end;
       end;
     END;
end;

procedure TFrmOrcamentosItens.dxDBCalcEdit2Exit(Sender: TObject);
begin
  autorizado := false;
  TiraCorFundo ( Sender );
  WITH FrmOrcamentos DO
  BEGIN
    if not (Orcamentos_Itens.State in [ dsinsert, dsedit ] )then
       exit;

    if Orcamentos_ItensPRC_UNITARIO.Value > Orcamentos_ItensPRC_UNIT_ORIGINAL.Value then
    begin
      Orcamentos_ItensDESCONTO.Value := 0;
      Orcamentos_ItensPORC_DESC.Value := 0;
      exit;
    end;

    Orcamentos_ItensDESCONTO.Value := (Orcamentos_ItensPORC_DESC.Value * Arredonda(Orcamentos_ItensPRC_UNIT_ORIGINAL.Value,2) / 100) ;
    Orcamentos_ItensPRC_UNITARIO.value := (Arredonda(Orcamentos_ItensPRC_UNIT_ORIGINAL.Value,2) - Orcamentos_ItensDESCONTO.Value);

    DmVendas2.qryAux.close;
    DmVendas2.qryAux.sql.text := ' select desconto_maximo from SIS_EMPRESAS';
    DmVendas2.qryAux.open;

    if (DmVendas2.qryAux.fieldbyname('desconto_maximo').asfloat < Orcamentos_ItensPORC_DESC.asfloat) then
    begin
      If Not Autorizado then
      begin
        If Not PedirSenha (  'Desconto Acima do ', 'Máximo Permitido!','' ) then
          dxDBCalcEdit2.SetFocus
        else
          Autorizado := True ;
      end;
    end;
  END;
end;

procedure TFrmOrcamentosItens.FormShow(Sender: TObject);
begin
     IniciaComponentes ( Self as TForm );

     IF DmApp.DIG_PREC_VENDA = 'N' THEN
         edPrcUnit.Enabled := False ;

     IF DMAPP.EST_USA_GRADE = 'S' THEN
        EDGRADE.Enabled := true ;

     If UpperCase(DmaPP.TIPO_ORCAMENTO) = 'AGRUPADO'
     THEN BEGIN
          Label15.Visible     := False ;
          dxDBEdit6.Visible   := False ;
          Label13.Visible     := False ;
          edPrcUnit_2.Visible := False ;
          dxDBEdit2.Visible   := False ;
          edPrcTotal.Visible  := False ;
          Label11.Visible     := False ;
          edPrcTotal.Visible  := False ;

          GridItens.Top       := 64   ;
          GridItens.HeigHT    := 241  ;
     END
     ELSE BEGIN
          Label15.Visible     := true ;
          dxDBEdit6.Visible   := true ;
          Label13.Visible     := true ;
          edPrcUnit_2.Visible := true ;
          dxDBEdit2.Visible   := true ;
          edPrcTotal.Visible  := true ;
          Label11.Visible     := true ;
          edPrcTotal.Visible  := true ;

          GridItens.Top       := 104  ;
          GridItens.HeighT    := 206  ;
     END;

     If DataSource.DataSet.State in [ DsBrowse ]
     then
         ActInserir.Execute
     Else
         edProduto.SetFocus ;
end;

procedure TFrmOrcamentosItens.ActCadastroExecute(Sender: TObject);
begin
     If FrmOrcamentosItens.ActiveControl = edProduto
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

procedure TFrmOrcamentosItens.edProdutoEnter(Sender: TObject);
begin
    CorFundo ( Sender );
end;

procedure TFrmOrcamentosItens.edQtdadeEnter(Sender: TObject);
begin
    CorFundo ( Sender );

end;

procedure TFrmOrcamentosItens.dxDBEdit2Enter(Sender: TObject);
begin
    CorFundo ( Sender );

end;

procedure TFrmOrcamentosItens.edPrcUnitEnter(Sender: TObject);
begin
    CorFundo ( Sender ); 
end;

procedure TFrmOrcamentosItens.dxDBCalcEdit1Enter(Sender: TObject);
begin
    CorFundo ( Sender );
end;

procedure TFrmOrcamentosItens.dxDBCalcEdit2Enter(Sender: TObject);
begin
    CorFundo ( Sender );
end;

procedure TFrmOrcamentosItens.btnSalvarEnter(Sender: TObject);
begin
     CORFUNDO( Sender );
end;

procedure TFrmOrcamentosItens.btnSalvarExit(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     TIRACORFUNDO( Sender );
end;

procedure TFrmOrcamentosItens.dxDBEdit1Exit(Sender: TObject);
begin
     TIRACORFUNDO ( SENDER );
end;

procedure TFrmOrcamentosItens.edPrcUnit_2Exit(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     TiraCorFundo ( Sender );
end;

procedure TFrmOrcamentosItens.GridItensKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     IF KEY = 13
     THEN BEGIN
          edProduto.SetFocus ;
          DataSource.DataSet.Edit ;
     END;
end;

procedure TFrmOrcamentosItens.ActExcluirExecute(Sender: TObject);
begin
     //ELIMINA O ITEM
     IF MessageDlg('Excluir Este Item?', mtConfirmation, [mbOK, mbCancel], 0) = MrOk
     then begin
          DataSource.DataSet.Delete ;
     end;
end;

procedure TFrmOrcamentosItens.DataSourceStateChange(Sender: TObject);
begin
     If DataSource.State in [ dsinsert, dsedit ]
     then begin
          GridItens.TabStop := False ;
     end
     else begin
          GridItens.TabStop := True ;
     end;
     //Autorizado para desconto acima do máximo
     Autorizado := False;
end;

procedure TFrmOrcamentosItens.GridItensSaldoCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
var
  Value : variant;
begin
  if not(ASelected)  then
  begin
    Value := ANode.Values[GridItensSaldo.Index];

    if not VarIsNull(Value) then
    begin
      if (Value < 0)  then
        AFont.Color := clRed
      else if (Value > 0) then
        AFont.Color := clGreen;
    end
  end;
end;

procedure TFrmOrcamentosItens.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FrmLocProdutoCadastro_Auto.free;
  FrmLocProdutoCadastro_Auto := nil;
end;

procedure TFrmOrcamentosItens.EDGRADEEnter(Sender: TObject);
begin
  //Verificando Grade
  CorFundo(Sender);
  with dmVendas2 do
  begin
    if trim(edProduto.Text) <> ''  then
    begin
      qConsultaGrade.close;
      qConsultaGrade.parambyname('cnpj').value := dmapp.cnpj;
      qConsultaGrade.parambyname('produto').value := FrmOrcamentos.Orcamentos_ItensProduto.value;
      qConsultaGrade.open;

      if ((dmVendas2.qConsultaGradeCOUNT.VALUE > 0) and (FrmOrcamentos.Orcamentos_ItensGRADE.value = '') and (FrmOrcamentos.Orcamentos_ItensNUMERO.asString = '')) then
        ActlocalizarGradeExecute(Sender);
    end;
  end;
end;

procedure TFrmOrcamentosItens.ActLocalizarGradeExecute(Sender: TObject);
begin
  //Chama a Tela Para Localizar Naturezas
  Application.CreateForm(TFrm_Localizar_Grades, Frm_Localizar_Grades);
  DMVENDAS.Lista_Grades.close;
  DMVENDAS.Lista_Grades.ParamByName ('CNPJ'  ).ASSTRING  := DMAPP.CNPJ                         ;
  DMVENDAS.Lista_Grades.ParamByName ('PRODUTO').ASSTRING := FrmOrcamentos.Orcamentos_ItensPRODUTO.value;
  DMVENDAS.Lista_Grades.open;

  Frm_Localizar_Grades.DSource.DataSet := DMVENDAS.Lista_Grades ;
  if (Frm_Localizar_Grades.showmodal = mrOk ) then
  begin
    Frm_Localizar_Grades.CAMPtRECHO ;
    FrmOrcamentos.Orcamentos_ItensGRADE.VALUE  := (Frm_Localizar_Grades.GRADE);
    FrmOrcamentos.Orcamentos_ItensNUMERO.VALUE := (Frm_Localizar_Grades.Camptrecho);
  end;

  Frm_Localizar_Grades.FREE   ;
  Frm_Localizar_Grades := NIL ;
end;

end.
