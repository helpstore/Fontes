unit Entradas_NaoRepostas_FRel;

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
  TFRelEntradasNaoRepostas = class(TForm)
    pnlClient: TPanel;
    Panel2: TPanel;
    RzBitBtn1: TcxButton;
    RzBitBtn2: TcxButton;
    Print: TRDprint;
    Actions: TActionList;
    ActPreview: TAction;
    LblStatus: TcxLabel;
    ANDA: TProgressBar;
    LblTitulo: TcxLabel;
    b2: TBevel;
    procedure FormCreate(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cmbPessoaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PrintBeforeNewPage(Sender: TObject; Pagina: Integer);
    procedure PrintNewPage(Sender: TObject; Pagina: Integer);
    procedure FormShow(Sender: TObject);
    procedure ActPreviewExecute(Sender: TObject);
  private
    { Private declarations }
    Grupo, SubGrupo: Integer;
  public
    { Public declarations }
  end;

var
  FRelEntradasNaoRepostas: TFRelEntradasNaoRepostas;
  Linha, Pagina: Integer;

implementation

uses Relatorios_DM, Usuarios_DM, Application_DM, Funcoes, LocalizarProd_DM;

{$R *.DFM}

procedure TFRelEntradasNaoRepostas.FormCreate(Sender: TObject);
begin
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, Self.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
   
end;

procedure TFRelEntradasNaoRepostas.ActFecharExecute(Sender: TObject);
begin
  Close;
end;

procedure TFRelEntradasNaoRepostas.FormClose(Sender: TObject; var Action: TCloseAction);
begin

  //
  Action := caFree;
  FRelEntradasNaoRepostas := Nil;
end;

procedure TFRelEntradasNaoRepostas.cmbPessoaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFRelEntradasNaoRepostas.PrintBeforeNewPage(Sender: TObject; Pagina: Integer);
begin
  // Rodapé...
  Print.ImpF(63, 01, Replicate('-', 80), [Normal]);
  Print.ImpF(64, 01, dmapp.QryParceiroPARC_TEXTO_RELATORIO.AsString, [comp17,italico]);
  Print.ImpF(64, 74, 'Pag. : ' + FormatFloat('0000', Pagina), [Comp17]);
end;

procedure TFRelEntradasNaoRepostas.PrintNewPage(Sender: TObject; Pagina: Integer);
begin
  // Cabeçalho...
  Print.ImpF(01, 01, Replicate('-', 136), [Comp17]);
  Print.ImpF(02, 01, DMApp.Nome, [Normal, Negrito]);
  Print.ImpF(02, 55, 'Data : '+ DateTimeToStr(now()), [Normal]);
  Print.ImpF(03, 01, Print.TitulodoRelatorio, [Normal]);
  Print.ImpF(04, 01, Replicate('-', 136), [Comp17]);
                  //....5...10...15...20...25...30...35...40...45...50...55...60...65...70...75...80...85...90...95...00...05...10...15...20...25...30...35.

  Print.ImpF(05,01,'  Qntde', [Comp17]);
  Print.ImpF(05,08,'Codigo', [Comp17]);
  Print.ImpF(05,23,'Nome', [Comp17]);
  Print.ImpF(05,75,'   Valor', [Comp17]);


  Print.ImpF(06,01, Replicate('-', 136), [Comp17]);
  linha  := 08;
end;

procedure TFRelEntradasNaoRepostas.FormShow(Sender: TObject);
begin
  //
  IniciaComponentes(Self as TForm);

  Try

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

procedure TFRelEntradasNaoRepostas.ActPreviewExecute(Sender: TObject);
Var
    Cod_Produto: String[15];
    STR: String;
    Grupo: Integer;
    Qntde: Integer;
    Preco_Atual: Real ;
begin
  //
  Cod_Produto := '';
  //
  lblStatus.caption := 'Selecionando Dados' ;
  lblStatus.Visible := True ;
  lblStatus.Refresh ;

  grupo := -1 ;

  Qntde := 0;

  // *** Passagem de Parametros ***
  with DMRelatorios do
  begin
       Ver_Est_Produtos.SQL.Clear ;

       Ver_Est_Produtos.SQL.Add ( ' select * from VER_EST_PRODUTOS ( :CNPJ )  ');
       Ver_Est_Produtos.SQL.Add ( ' Where ATUALIZAR = :FEC  ');

       Ver_Est_Produtos.ParamByName('CNPJ').asString:= DMApp.Cnpj;
       Ver_Est_Produtos.ParamByName('FEC' ).asString:= 'S';

       Ver_Est_Produtos.SQL.Add ( ' ORDER BY GRUPO, NOME ' );

       // *** fim da Passagem de Parametros ***

       //
       Ver_Est_Produtos.Open;

       //
       If Ver_Est_Produtos.RecordCount = 0 Then
       Begin
            lblStatus.Visible := False ;
            ShowMessage('Não há registro a imprimir para o período, verifique !');
            //
            Ver_Est_Produtos.Close;
            //
            Exit;
       End
       Else Begin
            lblStatus.Visible := False ;
            Anda.Max := Ver_Est_Produtos.RecordCount;
            Anda.Position := 0;
            Anda.Visible  := TRUE ;
       End;

       //
       print.TitulodoRelatorio:='Relatorio de Entradas Não Repostas';
       print.Abrir;
       //
       //
       Ver_Est_Produtos.First;

       While Not Ver_Est_Produtos.Eof Do
        Begin
            //
            if ( grupo <> Ver_Est_ProdutosGRUPO.value )
            then begin
                 if grupo <> -1
                 then
                     print.Novapagina ;

                 Print.ImpF(Linha,01, Ver_Est_Produtosnome_grupo.AsString ,[Comp17]);

                 grupo :=  Ver_Est_Produtosgrupo.value ;

                 Linha := Linha + 2;

                 //
                 If (Linha >= 63) Then
                    Print.Novapagina;
            end;

            Str := FORMATFLOAT('###,##0.00', Ver_Est_ProdutosQTDADE_2.VALUE );

            WHILE LENGTH(STR) < 10
            DO BEGIN
               STR := ' ' + STR;
            END;

            Print.ImpF(Linha,01, STR ,[Comp17]);

            Print.ImpF(Linha,08, copy(Ver_Est_ProdutosCODIGO.AsString,1,15) ,[Comp17]);

            Print.ImpF(Linha,23, COPY(TRIM(Ver_Est_ProdutosNOME.Value),1,30) ,[Comp17]);

            Geral.Close ;
            Geral.Sql.Clear ;

            Geral.Params.CreateParam ( FtString , 'E', PtInput );
            Geral.Params.CreateParam ( FtString , 'C', PtInput );
            Geral.Params.CreateParam ( FtDate   , 'D', PtInput );

            Geral.Sql.Add (' Select MAX(VLR_VENDA) From EST_ENTRADAS_MANUAL Where PRODUTO = :C and Cnpj = :E AND DATA = :D ');

            Geral.ParamByName ('E').AsString  := DmApp.Cnpj   ;
            Geral.ParamByName ('C').AsString  := Ver_Est_ProdutosCODIGO.AsString          ;
            Geral.ParamByName ('D').AsDate    := date         ;

            Geral.Prepare ;

            Geral.Open ;

            if  geral.fields[0].isnull
            then begin
                 Str := FORMATFLOAT('###,##0.00', Ver_Est_ProdutosPRC_VENDA.VALUE );
            end
            ELSE BEGIN
                 //PRECO DE VENDA
                 Str := FORMATFLOAT('###,##0.00', geral.fields[0].VALUE );
            END;

            WHILE LENGTH(STR) < 8
            DO BEGIN
               STR := ' ' + STR;
            END;

            Print.ImpF(Linha, 75, STR ,[Comp17]);

            //
            Linha := Linha + 1;

            //
            If (Linha >= 63) Then
               Print.Novapagina;

          //
          Anda.Position := Anda.Position + 1;

          Ver_Est_Produtos.Next;

       End;

       //
       Ver_Est_Produtos.Close;
  END;
  //
  Anda.Visible:= False;
  print.Fechar;
end;

end.
