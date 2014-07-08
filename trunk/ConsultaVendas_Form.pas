 unit ConsultaVendas_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, Db, dxExEdtr, dxEdLib, dxCntner, dxEditor, dxDBEdtr,
  dxDBELib, StdCtrls,  RDprint,  
  dxDBGrid, dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, Grids, DBGrids, Mask,
   Buttons, Menus,   cxPropertiesStore, OleCtrls, SHDocVw, ComCtrls,
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
  dxSkinXmas2008Blue, cxButtons, cxLabel;

type
  TFrmConsultaVenda = class(TForm)
    Panel2: TPanel;
    RzBitBtn2: TcxButton;
    Actions: TActionList;
    ActFechar: TAction;
    dsProdutos: TDataSource;
    DsVenda: TDataSource;
    DsParcelas: TDataSource;
    Label10: TcxLabel;
    ActCores: TAction;
    Label21: TcxLabel;
    ActServico: TAction;
    actLancarDevolucao: TAction;
    btnDevolucao: TcxButton;
    edtCodBarras: TdxEdit;
    edtVlrDec: TdxEdit;
    Label23: TcxLabel;
    Label24: TcxLabel;
    MenuSelecionar: TPopupMenu;
    SelecionarItem: TMenuItem;
    Label26: TcxLabel;
    ActDefineComissao: TAction;
    stgFrmConsultaVenda: TcxPropertiesStore;
    Label30: TcxLabel;
    Label31: TcxLabel;
    ActReusaNF: TAction;
    PGC: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    pnlClient: TPanel;
    Label1: TcxLabel;
    Label3: TcxLabel;
    Label2: TcxLabel;
    Label15: TcxLabel;
    Label16: TcxLabel;
    Label4: TcxLabel;
    Label5: TcxLabel;
    LBLTERCEIROS: TcxLabel;
    LblTitulo: TcxLabel;
    Image1: TImage;
    b2: TBevel;
    Label17: TcxLabel;
    Label34: TcxLabel;
    Label35: TcxLabel;
    Label29: TcxLabel;
    Label9: TcxLabel;
    Label11: TcxLabel;
    Label12: TcxLabel;
    Label13: TcxLabel;
    Label14: TcxLabel;
    Label8: TcxLabel;
    Bevel1: TBevel;
    Label18: TcxLabel;
    Label19: TcxLabel;
    Label20: TcxLabel;
    Label22: TcxLabel;
    EdDocumento: TdxDBEdit;
    cbFrete: TdxDBCheckEdit;
    EdDataNota: TdxDBDateEdit;
    dxDBEdit3: TdxDBEdit;
    EdPessoa: TdxDBEdit;
    dxDBEdit9: TdxDBEdit;
    dxDBEdit10: TdxDBEdit;
    EdNatureza: TdxDBEdit;
    EdVendedor: TdxDBEdit;
    EdTerceiro: TdxDBEdit;
    dxDBEdit1: TdxDBEdit;
    dxDBEdit4: TdxDBEdit;
    dxDBEdit5: TdxDBEdit;
    GridItens: TdxDBGrid;
    GridItensPRODUTO: TdxDBGridMaskColumn;
    GridItensCODIGO_2: TdxDBGridMaskColumn;
    GridItensNome_Produto: TdxDBGridLookupColumn;
    GridItensGRADE: TdxDBGridMaskColumn;
    GridItensNUMERO: TdxDBGridMaskColumn;
    GridItensLUCRO_ITEM: TdxDBGridMaskColumn;
    GridItensSEQUENCIA: TdxDBGridMaskColumn;
    GridItensQUANTIDADE: TdxDBGridMaskColumn;
    GridItensPRC_UNITARIO: TdxDBGridMaskColumn;
    GridItensDesconto: TdxDBGridColumn;
    GridItensPRC_UNIT_ORIGINAL: TdxDBGridMaskColumn;
    GridItensTotal: TdxDBGridColumn;
    GridItensComplemento: TdxDBGridColumn;
    GridItensVENDEDOR: TdxDBGridMaskColumn;
    GridItensQTDE_ENTREGUE: TdxDBGridMaskColumn;
    GridItensPRC_CUSTO: TdxDBGridMaskColumn;
    GridItensCUSTO_MEDIO: TdxDBGridMaskColumn;
    Panel3: TPanel;
    Label25: TcxLabel;
    Label27: TcxLabel;
    Label6: TcxLabel;
    Label28: TcxLabel;
    dxDBEdit6: TdxDBEdit;
    dxDBEdit8: TdxDBEdit;
    dxDBEdit7: TdxDBEdit;
    dxDBEdit26: TdxDBEdit;
    GRIDFATURAMENTO: TDBGrid;
    edObservacoes: TdxDBMemo;
    dxDBEdit11: TdxDBEdit;
    dxDBEdit12: TdxDBEdit;
    dxDBEdit13: TdxDBEdit;
    dxDBEdit14: TdxDBEdit;
    dxDBEdit15: TdxDBEdit;
    dxDBEdit16: TdxDBEdit;
    dxDBEdit17: TdxDBEdit;
    dxDBEdit19: TdxDBEdit;
    dxDBEdit20: TdxDBEdit;
    dxDBEdit18: TdxDBEdit;
    dxDBEdit21: TdxDBEdit;
    dxDBEdit22: TdxDBEdit;
    dxDBEdit23: TdxDBEdit;
    dxDBEdit24: TdxDBEdit;
    dxDBEdit25: TdxDBEdit;
    EDSERVICO: TdxDBMemo;
    WBResposta: TWebBrowser;
    MemoResp: TMemo;
    GridItensNOME_MARCA: TdxDBGridMaskColumn;
    GridItensCFOP: TdxDBGridMaskColumn;
    GridItensBCH_CODIGO: TdxDBGridMaskColumn;
    Label7: TcxLabel;
    procedure ActFecharExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cmbPessoaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure ActCoresExecute(Sender: TObject);
    procedure ActServicoExecute(Sender: TObject);
    procedure actLancarDevolucaoExecute(Sender: TObject);
    procedure edtCodBarrasEnter(Sender: TObject);
    procedure edtCodBarrasKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EDSERVICOClick(Sender: TObject);
    procedure SelecionarItemClick(Sender: TObject);
    procedure MenuSelecionarPopup(Sender: TObject);
    procedure ActDefineComissaoExecute(Sender: TObject);
    procedure ActReusaNFExecute(Sender: TObject);
  private
    { Private declarations }
    //Completa com caracteres a esquerda
    function InsereCaracterEsq(Texto: string;Caracter: String;Tamanho: Integer):String;
    function EliminaZeros(Texto:string):string;
  public
    procedure LoadXML(MyMemo: TMemo; MyWebBrowser: TWebBrowser);
    { Public declarations }
  end;

var
  FrmConsultaVenda: TFrmConsultaVenda;
  Linha, Pagina: Integer;
implementation

uses Vendas_Dm, Usuarios_DM, Application_DM, EnviaCaixa_FRel, Funcoes,
  TipoFaturaVenda_Form, SelFaturaVendas_Form, DefineComissao_Form,
  Cadastros_Dm2;


{$R *.DFM}

procedure TFrmConsultaVenda.ActFecharExecute(Sender: TObject);
begin
  IF EDSERVICO.Visible
  THEN BEGIN
       EDSERVICO.Visible := FALSE ;
  END
  ELSE
    Close;
end;

procedure TFrmConsultaVenda.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //
  Action := caFree;
  FrmConsultaVenda := Nil;
end;

procedure TFrmConsultaVenda.cmbPessoaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmConsultaVenda.FormShow(Sender: TObject);
var
  FileXML : string;
begin
  IniciaComponentes ( Self as TForm );
  edtCodBarras.Enabled := false;
  edtVlrDec.enabled := false;
  PGC.ActivePageIndex := 0;
  //verificando se o filtro é p/vendas abertas ou fechadas
  //se for fechada entao nao permito ele fazer devolucao
  if FrmSelFaturaVendas <> Nil then
  begin
      if (trim(FrmSelFaturaVendas.EdTipo.text) = 'Abertas') and (trim(FrmSelFaturaVendas.cbxTipoVenda.Text) = 'Condicional') then
        btnDevolucao.Enabled := true;
  end;

  if (DmVendas.Consulta_VendaNFE_XML.value <> '') then
  begin
    {if not(DirectoryExists('C:\Sistemas\HelpStore\NFe\Temp\')) then
      CreateDir('C:\Sistemas\HelpStore\NFe\Temp\');

    FileXML := 'C:\Sistemas\HelpStore\NFe\Temp'+dmCadastros2.NFe_Faturamentos2NUM_NF.AsString+'.tmp';

    DmVendas.Consulta_VendaNFE_XML.SaveToFile(FileXML);}
    MemoResp.Lines.Text :=  UTF8Encode(dmVendas.Consulta_VendaNFE_XML.value);
    LoadXML(MemoResp, WBResposta);
  end;
end;

procedure TFrmConsultaVenda.ActCoresExecute(Sender: TObject);
begin
     //Visualizar
     DmVendas.Ver_Vendas_Cor (
     DmVendas.Consulta_VendaCODIGO.VALUE,
     DmVendas.Consulta_Venda_ItensPRODUTO.Value,
     DmVendas.Consulta_Venda_ItensSEQUENCIA.Value );
end;

procedure TFrmConsultaVenda.ActServicoExecute(Sender: TObject);
begin
     EDSERVICO.Visible := TRUE ;
end;

procedure TFrmConsultaVenda.actLancarDevolucaoExecute(Sender: TObject);
begin
  //Desabilitando leitura de codigo de barras pra devolucao
  if edtCodBarras.Enabled then
  begin
    edtCodBarras.enabled := false;
    edtCodBarras.text := '';
    edtVlrDec.enabled := false;
    edtVlrDec.text := '';
    SelecionarItem.Enabled := false;
  end
  else
  begin //Habilitando leitura de codigo de barras pra devolucao
    edtCodBarras.enabled := true;
    edtVlrDec.enabled := true;
    edtVlrDec.text := '1';
    edtCodBarras.setfocus;
    SelecionarItem.Enabled := true;
  end;
end;

procedure TFrmConsultaVenda.edtCodBarrasEnter(Sender: TObject);
begin
  CorFundo(Sender);
end;

procedure TFrmConsultaVenda.edtCodBarrasKeyDown(Sender: TObject;  var Key: Word; Shift: TShiftState);
var
  grade, numero,Sequencia, produto,venda, sSql, sWhere  : string;
  QtdeProduto, posicao : Integer;
  TotalItem, VlrItem, DescItem : Real;
  UsaGrade : Boolean;
begin
  if key = 13 then
  begin
    sSql := 'select count(*) cont from fat_vendas_itens item ';
    //verificando se foi nescessario inserir a sequencia para definir o produto corretamente
    Sequencia := '';
    posicao := pos('@',trim(uppercase(edtCodBarras.Text)));
    if posicao <> 0 then
      Sequencia := copy(trim(uppercase(edtCodBarras.Text)),(posicao),length(trim(uppercase(edtCodBarras.Text))));

    //Produto com grade (que ´é o codigo de barras descontado a sequencia + o '-'
    if (length(trim(uppercase(edtCodBarras.Text))) - (Length(Sequencia)) >= 15) then
    begin
      UsaGrade := true;
      produto := EliminaZeros(copy(trim(uppercase(edtCodBarras.Text)),1,6));

      if length(trim(uppercase(edtCodBarras.Text))) - (Length(Sequencia)) = 15 then
      begin
        GRADE := 'A'+(copy(trim(uppercase(edtCodBarras.Text)),7,3));
        numero := EliminaZeros(copy(trim(uppercase(edtCodBarras.Text)),10,6));
      end
      else
      begin
        GRADE :=  (copy(trim(uppercase(edtCodBarras.Text)),7,4));
        numero := EliminaZeros(copy(trim(uppercase(edtCodBarras.Text)),11,6));
      end;

      venda := trim(EdDocumento.Text);
      //retirando o '-' da sequencia
      Sequencia := StringReplace(Sequencia,'@','',[rfReplaceAll]);
      sWhere := ' where item.codigo = '+venda+' and item.produto ='''+produto+'''';
      if (grade <> '') and (numero <> '') then
        sWhere := swhere +' and (item.grade) = '''+grade+''' and item.numero ='''+numero+'''';
      if sequencia <> '' then
        sWhere := sWhere + ' and sequencia ='+Sequencia;
    end
    else //produto sem grade
    begin
      UsaGrade := false;
      venda := trim(EdDocumento.Text);//retirando o -sequencia do codigo do produto
      if posicao > 0 then
        produto := copy(trim(uppercase(edtCodBarras.Text)),1,posicao -1)
      else
        produto := trim(uppercase(edtCodBarras.Text));

      Sequencia := StringReplace(Sequencia,'@','',[rfReplaceAll]);
      sWhere := ' where item.codigo = '+venda+' and item.produto ='''+produto+'''';
      if sequencia <> '' then
        sWhere := sWhere +  ' and sequencia ='+Sequencia;
    end;

    with dmVendas do
    begin
      qryaux.Close;
      qryAux.SQL.text := sSql + sWhere;
      qryAux.Open;

      //-------------se existir + de item com as mesmas especificacoes na venda ----------//
      if qryAux.FieldByName('cont').value > 1 then
      begin
        //identificando a sequencia maxima do item na venda pra exclui-lo
        sSql := 'select max(sequencia) sequencia from fat_vendas_itens item ';
        qryaux.Close;
        qryAux.SQL.text := sSql + sWhere;
        qryAux.Open;
        sequencia := qryAux.FieldByName('sequencia').asstring;
        sWhere := sWhere +  ' and sequencia ='+Sequencia;
      end
      else if qryAux.FieldByName('cont').value = 0 then
      begin
        application.MessageBox('Produto não encontrado nos itens da venda','Aviso',mb_iconinformation + mb_ok);
        exit;
      end;

      //-------------verificando a quantidade do item caso ele tenha passado pela primeira verificacao----------//
      sSql := 'select item.quantidade, item.PRC_UNITARIO, item.DESCONTO from fat_vendas_itens item ';
      qryaux.Close;
      qryAux.SQL.text := sSql + sWhere;
      qryAux.Open;
      QtdeProduto := qryAux.FieldByName('quantidade').asinteger;
      VlrItem := qryAux.FieldByName('PRC_UNITARIO').asfloat;
      DescItem := qryAux.FieldByName('DESCONTO').asfloat;


      //------------------------------VALIDAÇÕES DE VALOR DE DECREMENTO------------------------------------//
      //-------------verificando se valor de decremento é válido-------------//
      if  (trim(edtVlrDec.Text) = '0') or (Trim(edtVlrDec.Text) = '') then
      begin
        application.messagebox('O Valor de decremento é inválido','Aviso', mb_ok + MB_ICONINFORMATION);
        exit;
      end;

      //---------verificando a qntde do produto na venda é menor que q o valor p/ser decrementado-------//

      if (QtdeProduto < StrToInt(Trim(edtVlrDec.Text))) then
      begin
        application.messagebox('O Valor de decremento é maior que a quantidade do item na venda','Aviso', mb_ok + MB_ICONINFORMATION);
        exit;
      end;

      //---------------------------------------ATUALIZANDO VENDAS ITEMS------------------------------------//
      if (QtdeProduto - StrToInt(Trim(edtVlrDec.Text))) = 0  then
      begin
        qryAux.close;
        sSql := ' delete from fat_vendas_itens fat  where fat.cnpj = :cnpj and fat.codigo =:venda and fat.produto = :prod and (fat.grade) = :grade and fat.numero = :numero ';
         if sequencia <> '' then
          sSql := sSql +  ' and sequencia ='+Sequencia;

        qryAux.sql.text := sSql;
        qryAux.ParamByName('cnpj').value :=  DMApp.Cnpj;
        qryAux.ParamByName('venda').value := venda;
        qryAux.ParamByName('prod').value := produto;
        qryAux.ParamByName('grade').value := grade;
        qryAux.ParamByName('numero').value := numero;
        qryAux.open;
        qryAux.Transaction.CommitRetaining;

        qryAux.close;
        qryAux.ParamByName('cnpj').value :=  DMApp.Cnpj;
        qryAux.ParamByName('venda').value := venda;
        qryAux.ParamByName('prod').value := produto;
        qryAux.ParamByName('grade').value := '0';
        qryAux.ParamByName('numero').value := '0';
        qryAux.open;
        qryAux.Transaction.CommitRetaining;
      end
      else
      begin
        sSql := 'update fat_vendas_itens fat set fat.quantidade = :qtde where fat.cnpj = :cnpj and fat.codigo = :venda '+
                ' and fat.produto = :prod and (fat.grade) = :grade and fat.numero = :numero';

        if sequencia <> '' then
          sSql := sSql +  ' and sequencia ='+Sequencia;

        qryAux.Close;
        qryAux.sql.clear;
        qryAux.sql.text := sSql;
        qryAux.ParamByName('qtde').value := (QtdeProduto - StrToInt(Trim(edtVlrDec.Text)));
        qryAux.ParamByName('cnpj').value :=  DMApp.Cnpj;
        qryAux.ParamByName('venda').value := venda;
        qryAux.ParamByName('prod').value := produto;
        qryAux.ParamByName('grade').value := grade;
        qryAux.ParamByName('numero').value := numero;
        qryAux.open;
        qryAux.Transaction.CommitRetaining;


        sSql := 'update fat_vendas_itens fat set fat.quantidade = :qtde where fat.cnpj = :cnpj and fat.codigo = :venda '+
                ' and fat.produto = :prod and (fat.grade) = :grade and fat.numero = :numero';

        if sequencia <> '' then
          sSql := sSql +  ' and sequencia ='+Sequencia;

        qryAux.close;
        qryAux.sql.text := sSql;
        qryAux.ParamByName('cnpj').value :=  DMApp.Cnpj;
        qryAux.ParamByName('venda').value := venda;
        qryAux.ParamByName('prod').value := produto;
        qryAux.ParamByName('grade').value := '0';
        qryAux.ParamByName('numero').value := '0';
        qryAux.ParamByName('qtde').value := QtdeProduto - StrToInt(Trim(edtVlrDec.Text));
        qryAux.open;
        qryAux.Transaction.CommitRetaining;
      end;


      sSql := 'select item.quantidade, item.PRC_UNITARIO, item.DESCONTO from fat_vendas_itens item ';
      qryaux.Close;
      qryAux.SQL.text := sSql + sWhere;
      qryAux.Open;
      //-------------PARA ATUALIZAR ESTOQUES O PRODUTO PRECISA TER SIDO REALMENTE DECREMENTADO---------------//
      if qryAux.FieldByName('quantidade').asinteger < QtdeProduto then
      begin
        //--------------------------------Atualizando Valor Total da Venda-----------------------//
        qryAux.close;
        qryAux.sql.text := 'update fat_vendas ved set ved.total = :Valor where ved.cnpj = :cnpj and ved.codigo = :venda';
        qryAux.ParamByName('cnpj').value :=  DMApp.Cnpj;
        qryAux.ParamByName('venda').value := venda;
        qryAux.ParamByName('Valor').value := DmVendas.Consulta_VendaTotal.AsFloat - (StrToInt(Trim(edtVlrDec.Text)) * (VlrItem - DescItem));
        qryAux.open;
        qryAux.Transaction.CommitRetaining;
        //----------------------------final da atulização da venda e dos items-------------------------------------------//

        //-------------------------ATUALIZANDO ESTOQUES--------------------------//
        qryAux.close;
        qryAux.sql.text := 'update est_produtos set qtdade_2 = qtdade_2 + '+Trim(edtVlrDec.Text)+' where cnpj ='''+ dmApp.Cnpj+''' and codigo = '''+ produto+'''';
        qryAux.open;
        qryAux.Transaction.CommitRetaining;

        //------------------------CASO O PRODUTO POSSUA GRADE---------------------------//
        if UsaGrade then
        begin
          //-----------------------Atualizando da grade do produto caso ele tenha--------------------------//
          qryAux.close;
          qryAux.sql.Text := ' update est_produtos_grades set estoque = estoque + '+Trim(edtVlrDec.Text)+' where CNPJ = '''
                              +DMApp.Cnpj+'''  and produto ='''+produto+''' and (grade) = '''+grade+'''';
          qryAux.open;
          qryAux.Transaction.CommitRetaining;

          //-----------------------Atualizando da grade numeros do produto caso ele tenha--------------------------//
          qryAux.close;
          qryAux.sql.Text := ' update est_produtos_grades_numeros set estoque = estoque + '+Trim(edtVlrDec.Text)+' where cnpj = '''
                               +DMApp.Cnpj+''' and produto ='''+produto+''' and (grade) = '''+grade+''' and numero ='''+numero+'''';

          qryAux.Open;
          qryAux.Transaction.CommitRetaining;
        end;

        //refresh em vendas
        DmVendas.Consulta_Venda.Close;
        DmVendas.Consulta_Venda.ParamByName('cod').value := Venda;
        DmVendas.Consulta_Venda.ParamByName('cnpj').value := dmapp.Cnpj;
        DmVendas.Consulta_Venda.Open;

        //refresh em vendas items
        DmVendas.Consulta_Venda_Itens.Close;
        DmVendas.Consulta_Venda_Itens.ParamByName('codigo').value := Venda;
        DmVendas.Consulta_Venda_Itens.ParamByName('cnpj').value := dmapp.Cnpj;
        DmVendas.Consulta_Venda_Itens.Open;

        application.MessageBox('Produto devolvido!','Aviso',mb_ok + MB_ICONINFORMATION);
        edtCodBarras.clear;
        edtCodBarras.SetFocus ;
      end
      else
        application.MessageBox('Produto não foi devolvido!','Aviso',mb_ok + MB_ICONINFORMATION);
        edtCodBarras.clear;
        edtCodBarras.SetFocus ;
    end;
  end;
end;

procedure TFrmConsultaVenda.EDSERVICOClick(Sender: TObject);
begin
  //atribuo o codigo do produto p/o edit de captura de codigo de barras p/efetivar devolução
  if edtCodBarras.enabled then
  begin
    //se existe um posicionamento no dataset
    if DmVendas.Consulta_Venda_ItensPRODUTO.Value <> '' then
      edtCodBarras.Text := DmVendas.Consulta_Venda_ItensPRODUTO.AsString + '-'+DmVendas.Consulta_Venda_ItensSEQUENCIA.AsString;
  end;
end;

procedure TFrmConsultaVenda.SelecionarItemClick(Sender: TObject);
begin
  with DmVendas do
  begin
      //produtos trabalhando com grande
    //montando codigo de barras com (produto+grade+numero)
    if (Trim(Consulta_Venda_ItensGRADE.Value) <> '') and (Trim(Consulta_Venda_ItensGRADE.Value) <> '0')  then
      edtCodBarras.Text := InsereCaracterEsq(Consulta_Venda_ItensPRODUTO.AsString,'0',6) + InsereCaracterEsq(Consulta_Venda_ItensGRADE.AsString,'0',3)
                           + InsereCaracterEsq(Consulta_Venda_ItensNUMERO.AsString,'0',6)+'@'+Consulta_Venda_ItensSEQUENCIA.AsString
    else //produtos trabalhando sem grande
      edtCodBarras.Text := Consulta_Venda_ItensPRODUTO.AsString+'@'+Consulta_Venda_ItensSEQUENCIA.AsString;
  end;
end;

function TFrmConsultaVenda.InsereCaracterEsq(Texto, Caracter: String;
  Tamanho: Integer): String;
  var
    TamanhoAtual : integer;
    Aux : string;
begin
    TamanhoAtual := length(Texto);
    Aux := '';
    while TamanhoAtual < Tamanho do
    begin
      Aux := Aux + Caracter;
      inc(TamanhoAtual);
    end;
    result := Aux + Texto;
end;

function TFrmConsultaVenda.EliminaZeros(Texto: string): string;
begin
  while Copy(Texto,1,1) = '0' DO
    Texto := Copy(Texto,2,15);
  result := Texto;
end;

procedure TFrmConsultaVenda.MenuSelecionarPopup(Sender: TObject);
begin
  if edtCodBarras.Enabled then
    SelecionarItem.Enabled := true
  else
    SelecionarItem.Enabled := false;
end;

procedure TFrmConsultaVenda.ActDefineComissaoExecute(Sender: TObject);
begin
  frmRedefineComissao := TfrmRedefineComissao.Create(Self);
  frmRedefineComissao.showModal;
  frmRedefineComissao.Free;
  frmRedefineComissao := nil;
end;

procedure TFrmConsultaVenda.ActReusaNFExecute(Sender: TObject);
begin
  with dmVendas do
  begin
    if (Application.MessageBox('Deseja realmente corrigir a numeração da nota fiscal?','Aviso', mb_yesno + mb_iconquestion) = id_no) then
      exit;
    try
      PCD_REUTILIZAR_N_NF.ParamByName('cnpj').value := dmApp.cnpj;
      PCD_REUTILIZAR_N_NF.ParamByName('codigo').value := Consulta_VendaCODIGO.value;
      PCD_REUTILIZAR_N_NF.ExecProc;
      PCD_REUTILIZAR_N_NF.Transaction.CommitRetaining;
      Application.MessageBox('Numeração corrigida com sucesso','Aviso', mb_yesno + mb_iconquestion)
    except
      On E:EDataBaseError Do
        begin
          Application.MessageBox(Pchar('Ocorreu o seguinte erro :'+ E.Message),'Aviso',mb_ok+mb_iconerror);
        end
        else
        begin
          Application.MessageBox('Ocorreu um erro não identificado pelo Sistema','Aviso',mb_ok+mb_iconerror);
        end;
        PCD_REUTILIZAR_N_NF.Transaction.RollbackRetaining;
    end
  end
end;

procedure TFrmConsultaVenda.LoadXML(MyMemo: TMemo;
  MyWebBrowser: TWebBrowser);
begin
  MyMemo.Lines.SaveToFile(ExtractFileDir(application.ExeName)+'cons_temp.xml');
  MyWebBrowser.Navigate(ExtractFileDir(application.ExeName)+'cons_temp.xml');
end;

end.


