 unit VendasPorProduto_FRel;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, Db, dxExEdtr, dxEdLib, dxCntner, dxEditor, dxDBEdtr,
  dxDBELib, StdCtrls,  RDprint,   ComCtrls, cxGraphics,
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
  TFRelVendasPorProduto = class(TForm)
    pnlClient: TPanel;
    Panel2: TPanel;
    RzBitBtn1: TcxButton;
    RzBitBtn2: TcxButton;
    Print: TRDprint;
    Actions: TActionList;
    ActPreview: TAction;
    LblStatus: TcxLabel;
    ANDA: TProgressBar;
    Label3: TcxLabel;
    Label1: TcxLabel;
    Ini: TdxDateEdit;
    Fim: TdxDateEdit;
    Label2: TcxLabel;
    LblTitulo: TcxLabel;
    b2: TBevel;
    EdCodigo: TdxEdit;
    CkEntradas: TCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cmbPessoaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PrintBeforeNewPage(Sender: TObject; Pagina: Integer);
    procedure PrintNewPage(Sender: TObject; Pagina: Integer);
    procedure FormShow(Sender: TObject);
    procedure ActPreviewExecute(Sender: TObject);
    procedure cmbProdutoEnter(Sender: TObject);
    procedure cmbProdutoExit(Sender: TObject);
    procedure EdCodigoExit(Sender: TObject);
    procedure IniExit(Sender: TObject);
    procedure FimExit(Sender: TObject);
  private
    { Private declarations }
    Grupo, SubGrupo: Integer;
  public
    { Public declarations }
  end;

var
  FRelVendasPorProduto: TFRelVendasPorProduto;
  Linha, Pagina: Integer;

implementation

uses Relatorios_DM, Usuarios_DM, Application_DM, Funcoes, LocalizarProd_DM,
  Localizar_Produto_Cadastro_Auto;

{$R *.DFM}

procedure TFRelVendasPorProduto.FormCreate(Sender: TObject);
begin
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, Self.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TFRelVendasPorProduto.ActFecharExecute(Sender: TObject);
begin
  Close;
end;

procedure TFRelVendasPorProduto.FormClose(Sender: TObject; var Action: TCloseAction);
begin

  FrmLocProdutoCadastro_Auto.Free    ;
  FrmLocProdutoCadastro_Auto := Nil  ;

  //
  Action := caFree;
  FRelVendasPorProduto := Nil;
end;

procedure TFRelVendasPorProduto.cmbPessoaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFRelVendasPorProduto.PrintBeforeNewPage(Sender: TObject; Pagina: Integer);
begin
  // Rodapé...
  Print.ImpF(63, 01, Replicate('-', 80), [Normal]);
  Print.ImpF(64, 01, dmapp.QryParceiroPARC_TEXTO_RELATORIO.AsString, [comp17,italico]);
  Print.ImpF(64, 74, 'Pag. : ' + FormatFloat('0000', Pagina), [Comp17]);
end;

procedure TFRelVendasPorProduto.PrintNewPage(Sender: TObject; Pagina: Integer);
begin
  // Cabeçalho...
  Print.ImpF(01, 01, Replicate('-', 136), [Comp17]);
  Print.ImpF(02, 01, DMApp.Nome, [Normal, Negrito]);
  Print.ImpF(02, 55, 'Data : '+ DateTimeToStr(now()), [Normal]);
  Print.ImpF(03, 01, Print.TitulodoRelatorio, [Normal]);
  Print.ImpF(04, 01, Replicate('-', 136), [Comp17]);
                  //....5...10...15...20...25...30...35...40...45...50...55...60...65...70...75...80...85...90...95...00...05...10...15...20...25...30...35.
  Print.ImpF(05,01,'Codigo Data      Cliente                                Vendedor   Natureza   Nota Fiscal     Qtdade      Prc Unit    Desconto     Valor', [Comp17]);
  Print.ImpF(06,01, Replicate('-', 136), [Comp17]);
  linha  := 08;
end;

procedure TFRelVendasPorProduto.FormShow(Sender: TObject);
begin
  //
  IniciaComponentes(Self as TForm);

  Try

    If FrmLocProdutoCadastro_Auto = Nil then
      FrmLocProdutoCadastro_Auto := TFrmLocProdutoCadastro_Auto.Create(Application) ;

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

procedure TFRelVendasPorProduto.ActPreviewExecute(Sender: TObject);
Var
    Cod_Produto: String[15];
    Total_Produto, Total_Geral, Total_Quantidade: Real;
    STR: String;
    Cont: Integer;
    ULTCOD, NOME: STRING;
    SOMAQUANTIDADE, SOMACUSTO  : REAL;
begin
  //
  cont := 0;
  Cod_Produto := '';
  //
  lblStatus.caption := 'Selecionando Dados' ;
  lblStatus.Visible := True ;
  lblStatus.Refresh ;
  // *** Passagem de Parametros ***
  DMRelatorios.Fat_VendasPorProduto.ParamByName('CNPJ').asString:= DMApp.Cnpj;
  If (Ini.Text = '  / /    ') Or (Fim.Text = '  / /    ') Then
     MessageDlg('Informe o Período', MtError, [MbOk],0)
  Else
     Begin
        DMRelatorios.Fat_VendasPorProduto.ParamByName('DTINIC').asString:= Ini.Text;
        DMRelatorios.Fat_VendasPorProduto.ParamByName('DTFINAL').asString:= Fim.Text;
     End;

  If EdCodigo.Text = '' Then
     DMRelatorios.Fat_VendasPorProduto.ParamByName('PRODUTO').asString:= ''
  Else
     DMRelatorios.Fat_VendasPorProduto.ParamByName('PRODUTO').asString:= EdCodigo.text ;


  // *** fim da Passagem de Parametros ***

  //
  DMRelatorios.Fat_VendasPorProduto.Open;
  //
  If DMRelatorios.Fat_VendasPorProduto.RecordCount = 0 Then
     Begin
       lblStatus.Visible := False ;
       ShowMessage('Não há registro a imprimir para o período, verifique !');
       //
       DMRelatorios.Fat_VendasPorProduto.Close;
       //
       Ini.SetFocus;
       Exit;
     End
  Else
     Begin
       lblStatus.Visible := False ;
       Anda.Max := DMRelatorios.Fat_VendasPorProduto.RecordCount;
       Anda.Position := 0;
       Anda.Visible  := TRUE ;
     End;
  //
  print.TitulodoRelatorio:='Relatorio de Vendas por Produto';
  print.Abrir;
  //
  Total_Produto:= 0;
  Total_Geral:= 0;
  Total_Quantidade := 0;
  //
  DMRelatorios.Fat_VendasPorProduto.First;
  While Not DMRelatorios.Fat_VendasPorProduto.Eof Do
        Begin
          //
          If Cod_Produto <> DmRelatorios.Fat_VendasPorProdutoPRODUTO.Value Then
             Begin
               Print.ImpF(Linha,01,'Produto : '+ DmRelatorios.Fat_VendasPorProdutoNOME_PRODUTO.Text,[Comp17, Negrito]);
               Cod_Produto := DmRelatorios.Fat_VendasPorProdutoPRODUTO.Value;
               Linha := Linha + 2;
               Total_Produto:= 0;
             End;
//    Print.ImpF(05,01,'Codigo Data      Cliente                                               Natureza   Nota Fiscal  Qtdade    Prc Unit   Desconto     Valor', [Comp17]);
          inc(cont);
          Print.ImpF(Linha,01,Format('%6s %-8s %-39s %-10s %-9s %10s %10s %13s %10s %10s',
                  [DMRelatorios.Fat_VendasPorProdutoCODIGO.Text,
                   DMRelatorios.Fat_VendasPorProdutoDATA.Text,
                   COPY(DMRelatorios.Fat_VendasPorProdutoPESSOA_RAZAO.Text,1,39),
                   COPY(DMRelatorios.Fat_VendasPorProdutoNOME_VENDEDOR.Text,1,10),
                   DMRelatorios.Fat_VendasPorProdutoNATUREZA.Text,
                   DMRelatorios.Fat_VendasPorProdutoNF.Text,
                   DMRelatorios.Fat_VendasPorProdutoQUANTIDADE.Text ,
                   DMRelatorios.Fat_VendasPorProdutoPRC_UNITARIO.Text,
                   DMRelatorios.Fat_VendasPorProdutoDESCONTO.Text,
                   DMRelatorios.Fat_VendasPorProdutoVALOR.Text]),[Comp17]);

          Total_Geral:= Total_Geral + DMRelatorios.Fat_VendasPorProdutoVALOR.Value;
          Total_Produto:= Total_Produto + DMRelatorios.Fat_VendasPorProdutoVALOR.Value;
          Total_Quantidade := Total_Quantidade + DMRelatorios.Fat_VendasPorProdutoQUANTIDADE.Value;
          //
          Anda.Position := Anda.Position + 1;
          DMRelatorios.Fat_VendasPorProduto.Next;
          //
          Linha := Linha + 1;
          //
          If (Cod_Produto <> DmRelatorios.Fat_VendasPorProdutoPRODUTO.Value) Or
             (DMRelatorios.Fat_VendasPorProduto.Eof) Then
             Begin
               Linha:= Linha + 1;

               Print.ImpF(Linha, 01, Format('%103s Total Registros: %15s', ['',inttostr(cont)]), [Comp17, Negrito]);
               Linha:= Linha + 1;

               Print.ImpF(Linha, 01, Format('%103s Total Produto  : %15s', ['', FormatFloat('#,##0.00', TOTAL_PRODUTO )]), [Comp17, Negrito]);
               Linha:= Linha + 1;

               Print.ImpF(Linha, 01, Format('%103s Total Qntde    : %15s', ['', FormatFloat('#,##0.00', TOTAL_QUANTIDADE )]), [Comp17, Negrito]);
               Linha:= Linha + 1;

               Print.ImpF(Linha, 01, Replicate('-', 136), [Comp17]);
               Linha:= Linha + 1;
             End;
          //
          If (Linha >= 63) Then
             Print.Novapagina;
        End;
  //
  Print.ImpF(Linha+1, 01, Format('%106s Total Geral : %15s', ['', FormatFloat('#,##0.00', TOTAL_GERAL)]), [Comp17, Negrito]);
  //
  DMRelatorios.Fat_VendasPorProduto.Close;
  //
  Linha:= Linha + 3;

  if ( CkEntradas.Checked )
  then begin
       //AGRUPADORES
       WITH DMRELATORIOS DO
       BEGIN
            SOMAQUANTIDADE  := 0;
            SOMACUSTO       := 0;

            Entradas_Produto.Close ;
            Entradas_Produto.sql.Clear;

            Entradas_Produto.sql.add (' SELECT * FROM VER_EST_ENTRADAS ( :CNPJ, :PESSOA_FJ )                           ');
            Entradas_Produto.sql.add (' WHERE PRODUTO = :PRODUTO  AND DATA_REF >= :DATA_INI AND DATA_REF <= :DATA_FIM  ');

            Entradas_Produto.ParamByName ( 'CNPJ'     ).AsString  := DmApp.Cnpj       ;
            Entradas_Produto.ParamByName ( 'PESSOA_FJ').AsInteger := 0                ;
            Entradas_Produto.ParamByName ( 'PRODUTO'  ).AsString  := EdCodigo.TEXT    ;

            Entradas_Produto.ParamByName ( 'DATA_INI'  ).AsDate   := ini.date    ;
            Entradas_Produto.ParamByName ( 'DATA_FIM'  ).AsDate   := Fim.date    ;


            Entradas_Produto.Open  ;

            anda.Max := Entradas_Produto.recordcount ;

            anda.position := 1;

            Inc( Linha );

            //
            If Linha >= 63 Then Print.Novapagina;

            Print.ImpF(Linha, 01, '--------------- -------------------------------------------------- ---------- ----------', [comp17]);

            Inc( Linha );
            //
            If Linha >= 63 Then Print.Novapagina;

            Entradas_Produto.First;

            While Not Entradas_Produto.Eof Do
            Begin
                 Print.ImpF(Linha,01,Format('%6s %-8s %-39s %-10s %-9s %10s %10s %13s %10s %10s',
                 [copy(Entradas_Produtondocto.Text,1,6),
                   Entradas_ProdutoDATA_REF.Text,
                   COPY(Entradas_ProdutoNOME.Text,1,39),
                   COPY('',1,10),
                   Entradas_ProdutoNATUREZA.Text,
                   copy(Entradas_Produtondocto.Text,1,8),
                   Entradas_ProdutoQUANTIDADE.Text ,
                   Entradas_ProdutoPRC_UNITARIO.Text,
                   '0,00',
                   Entradas_ProdutoPRC_UNITARIO.Text]),[Comp17]);

                 SOMACUSTO      := SOMACUSTO      + Entradas_ProdutoPRC_UNITARIO.Value;
                 SOMAQUANTIDADE := SOMAQUANTIDADE + Entradas_ProdutoQUANTIDADE.VALUE;

                 Inc( Linha );

                 anda.position := anda.position + 1;
                 //
                 If Linha >= 63
                 Then
                     Print.Novapagina;

                 Entradas_Produto.next ;
            END;

            Print.ImpF(Linha+1, 01, Format('%105s Tot Entradas : %15s', ['', FormatFloat('#,##0.00', SOMAQUANTIDADE)]), [Comp17, Negrito]);
       end;
  END;

  Anda.Visible:= False;

  print.Fechar;
end;

procedure TFRelVendasPorProduto.cmbProdutoEnter(Sender: TObject);
begin
     CORFUNDO ( SENDER );
end;

procedure TFRelVendasPorProduto.cmbProdutoExit(Sender: TObject);
begin
     TIRACORFUNDO ( SENDER );

     if INI.TEXT = '  /  /    '
     THEN
         INI.DATE := STRTODATE ('01/01/1900');
end;

procedure TFRelVendasPorProduto.EdCodigoExit(Sender: TObject);
begin
     If (edcodigo.text = '') then
     begin
       if FrmLocProdutoCadastro_Auto.Showmodal = mrok then
          edcodigo.text := ( FrmLocProdutoCadastro_Auto.CampTrecho );
     end;
end;

procedure TFRelVendasPorProduto.IniExit(Sender: TObject);
begin
     TIRACORFUNDO ( SENDER );

     if INI.TEXT = '  /  /    '
     THEN
         INI.DATE := STRTODATE ('01/01/1900');

end;

procedure TFRelVendasPorProduto.FimExit(Sender: TObject);
begin
     //TROCA A COR PARA A COR SELECIONADA
     TIRACorFundo ( Sender );

     if FIM.TEXT = '  /  /    '
     THEN
         FIM.DATE := STRTODATE ('31/12/9999');
end;

end.
