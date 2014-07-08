unit ListaSimp_FRel;

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
  TFRelListaSimp = class(TForm)
    pnlClient: TPanel;
    Panel2: TPanel;
    RzBitBtn1: TcxButton;
    RzBitBtn2: TcxButton;
    Actions: TActionList;
    ActPreview: TAction;
    ActFechar: TAction;
    Label2: TcxLabel;
    cmbGrupoInicial: TdxLookupEdit;
    dsGrupos: TDataSource;
    Print: TRDprint;
    ActBuscarProd: TAction;
    Label3: TcxLabel;
    cmbGrupoFinal: TdxLookupEdit;
    LblStatus: TcxLabel;
    ANDA: TProgressBar;
    Label4: TcxLabel;
    EdTipo: TdxPickEdit;
    RDALFA: TRadioButton;
    RadioButton2: TRadioButton;
    CkEstoque: TCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cmbPessoaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PrintBeforeNewPage(Sender: TObject; Pagina: Integer);
    procedure PrintNewPage(Sender: TObject; Pagina: Integer);
    procedure FormShow(Sender: TObject);
    procedure ActPreviewExecute(Sender: TObject);
    procedure cmbGrupoInicialEnter(Sender: TObject);
    procedure cmbGrupoInicialExit(Sender: TObject);
  private
    { Private declarations }
    Grupo, SubGrupo: Integer;
  public
    { Public declarations }
  end;

var
  FRelListaSimp: TFRelListaSimp;
  Linha, Pagina: Integer;
implementation

uses Relatorios_DM, Usuarios_DM, Application_DM, Funcoes;

{$R *.DFM}

procedure TFRelListaSimp.FormCreate(Sender: TObject);
begin
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, Self.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TFRelListaSimp.ActFecharExecute(Sender: TObject);
begin
  Close;
end;

procedure TFRelListaSimp.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  //
  dsGrupos.DataSet.Close;
  //
  //
  Action := caFree;
  FRelListaSimp := Nil;
end;

procedure TFRelListaSimp.cmbPessoaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFRelListaSimp.PrintBeforeNewPage(Sender: TObject; Pagina: Integer);
begin
  // Rodapé...
//  Print.ImpF(63, 01, Replicate('-', 80), [Normal]);
//  Print.ImpF(64, 01, dmapp.QryParceiroPARC_TEXTO_RELATORIO.AsString, [comp17,italico]);
//  Print.ImpF(64, 74, 'Pag. : ' + FormatFloat('0000', Pagina), [Comp17]);
end;

procedure TFRelListaSimp.PrintNewPage(Sender: TObject; Pagina: Integer);
begin
  // Cabeçalho...
  Print.ImpF(01, 01, Replicate('-', 80), [Normal]);
  Print.ImpF(02, 01, DMApp.Nome, [Normal, Negrito]);
  Print.ImpF(02, 55, 'Data : '+ DateTimeToStr(Now()), [Normal]);
  Print.ImpF(03, 01, Print.TitulodoRelatorio, [Normal]);
  Print.ImpF(04, 01, Replicate('-', 80), [Normal]);
                    //....5...10...15...20...25...30...35...40...45...50...55...60...65...70...75...80...85...90...95...00...05...10...15...20...25...30...35.
  Print.ImpF(05, 01, '* GRUPO', [Normal, Negrito]);
  Print.ImpF(06, 01, '  ** SUBGRUPO', [Normal, Negrito]);
  Print.ImpF(07, 01, Replicate('-', 80), [Normal]);
  Print.ImpF(08, 01, '        Codigo Nome                                           Quantidade Observacao             ', [Comp12]);
  Print.ImpF(09, 01, '-------------- -------------------------------------------- ------------ -----------------------', [Comp12]);
  linha  := 10;
end;

procedure TFRelListaSimp.FormShow(Sender: TObject);
begin
  //
  IniciaComponentes(Self as TForm);
  //
  Try
    dsGrupos.DataSet.Open;
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

procedure TFRelListaSimp.ActPreviewExecute(Sender: TObject);
Var
   Quantidade: Real;
   Str : String;
begin
  //
  Grupo      := 0;
  SubGrupo   := 0;
  Quantidade := 0;

  lblStatus.caption := 'Selecionando Dados' ;
  lblStatus.Visible := True ;
  lblStatus.Refresh ;

  //
  Print.TitulodoRelatorio := 'Lista Simplificada';
  //

  IF RDALFA.Checked
  THEN BEGIN
       WITH DMRelatorios DO
       BEGIN
            ListaSimp.SQL.Clear ;

            ListaSimp.SQL.Add (' SELECT G.CODIGO CODIGO_G,                     ');
            ListaSimp.SQL.Add ('    G.NOME NOME_GRUPO,                         ');
            ListaSimp.SQL.Add ('    SG.SUBGRUPO,                               ');
            ListaSimp.SQL.Add ('    SG.NOME NOME_SUBGRUPO,                     ');
            ListaSimp.SQL.Add ('    P.CODIGO CODIGO_P,                         ');
            ListaSimp.SQL.Add ('    P.NOME NOME_PRODUTO,                       ');
            ListaSimp.SQL.Add ('    P.QTDADE_2                                 ');
            ListaSimp.SQL.Add ('  FROM EST_PRODUTOS P                          ');
            ListaSimp.SQL.Add (' INNER JOIN EST_GRUPOS G                       ');
            ListaSimp.SQL.Add (' ON (G.CNPJ = P.CNPJ AND                       ');
            ListaSimp.SQL.Add ('        G.CODIGO = P.GRUPO)                    ');
            ListaSimp.SQL.Add (' INNER JOIN EST_SUBGRUPOS SG                   ');
            ListaSimp.SQL.Add (' ON (SG.CNPJ = P.CNPJ AND                      ');
            ListaSimp.SQL.Add ('         SG.GRUPO = P.GRUPO AND                ');
            ListaSimp.SQL.Add ('        SG.SUBGRUPO = P.SUBGRUPO)              ');
            ListaSimp.SQL.Add (' WHERE P.CNPJ = :CNPJ AND P.ATIVO = :ATV       ');
            ListaSimp.SQL.Add (' AND G.NOME >= :GRUPO_INI AND G.NOME <= :GRUPO_FIM ');
            ListaSimp.SQL.Add (' ORDER BY G.NOME, SG.NOME, P.NOME              ');
       END;
  END
  ELSE BEGIN
       WITH DMRelatorios DO
       BEGIN
            ListaSimp.SQL.Clear ;
            ListaSimp.SQL.Add (' SELECT G.CODIGO CODIGO_G,                     ');
            ListaSimp.SQL.Add ('    G.NOME NOME_GRUPO,                         ');
            ListaSimp.SQL.Add ('    SG.SUBGRUPO,                               ');
            ListaSimp.SQL.Add ('    SG.NOME NOME_SUBGRUPO,                     ');
            ListaSimp.SQL.Add ('    P.CODIGO CODIGO_P,                         ');
            ListaSimp.SQL.Add ('    P.NOME NOME_PRODUTO,                       ');
            ListaSimp.SQL.Add ('    P.QTDADE_2                                 ');
            ListaSimp.SQL.Add ('  FROM EST_PRODUTOS P                          ');
            ListaSimp.SQL.Add (' INNER JOIN EST_GRUPOS G                       ');
            ListaSimp.SQL.Add (' ON (G.CNPJ = P.CNPJ AND                       ');
            ListaSimp.SQL.Add ('        G.CODIGO = P.GRUPO)                    ');
            ListaSimp.SQL.Add (' INNER JOIN EST_SUBGRUPOS SG                   ');
            ListaSimp.SQL.Add (' ON (SG.CNPJ = P.CNPJ AND                      ');
            ListaSimp.SQL.Add ('         SG.GRUPO = P.GRUPO AND                ');
            ListaSimp.SQL.Add ('        SG.SUBGRUPO = P.SUBGRUPO)              ');
            ListaSimp.SQL.Add (' WHERE P.CNPJ = :CNPJ AND P.ATIVO = :ATV       ');
            ListaSimp.SQL.Add (' AND G.NOME >= :GRUPO_INI AND G.NOME <= :GRUPO_FIM ');
            ListaSimp.SQL.Add (' ORDER BY G.NOME, SG.NOME, P.CODIGO            ');
       END;
  END;


  DMRelatorios.ListaSimp.ParamByName('CNPJ').asString     := DMApp.Cnpj;
  If (EdTipo.Text = 'Ativo') Then
      DMRelatorios.ListaSimp.ParamByName('ATV' ).asString     := 'S'
      Else
              DMRelatorios.ListaSimp.ParamByName('ATV' ).asString     := 'N';
  //
  If cmbGrupoInicial.Text <> '' Then
     DMRelatorios.ListaSimp.ParamByName('GRUPO_INI').asString := cmbGrupoInicial.Text
  Else
     DMRelatorios.ListaSimp.ParamByName('GRUPO_INI').asString := '';
  //
  If cmbGrupoFinal.Text <> '' Then
     DMRelatorios.ListaSimp.ParamByName('GRUPO_FIM').asString := cmbGrupoFinal.Text
  Else
     DMRelatorios.ListaSimp.ParamByName('GRUPO_FIM').asString := Replicate('Z', 50);

  //
  DMRelatorios.ListaSimp.Open;
  //
  If DMRelatorios.ListaSimp.RecordCount = 0 Then
     Begin
       lblStatus.Visible := False ;
       ShowMessage('Não há registro a imprimir para o período, verifique !');
       //
       DMRelatorios.ListaSimp.Close;
       //
       cmbGrupoInicial.SetFocus;
       Exit;
     End
     Else
     Begin
          lblStatus.Visible := False ;
          DMRelatorios.ListaSimp.FetchAll ;
          Anda.Max := DMRelatorios.ListaSimp.RecordCount;
          Anda.Position := 0;
          Anda.Visible  := TRUE ;
     End;

  //
  print.Abrir;
  //
  DMRelatorios.ListaSimp.First;
  While Not DMRelatorios.ListaSimp.Eof Do
  Begin
       IF ( CkEstoque.Checked )
       THEN BEGIN
            IF ( DMRelatorios.ListaSimpQTDADE_2.VALUE > 0 )
            THEN BEGIN
                 //
                 If Grupo <> DMRelatorios.ListaSimpCODIGO_G.Value
                 then Begin
                      //
                      Print.ImpF(Linha + 1, 01, '* ' + DMRelatorios.ListaSimpNOME_GRUPO.Text, [Normal, Negrito]);
                      Grupo := DMRelatorios.ListaSimpCODIGO_G.Value;
                      SubGrupo := 0;
                      //
                      Linha := Linha + 2;
                 End;
                 //
                 If SubGrupo <> DMRelatorios.ListaSimpSUBGRUPO.Value
                 then Begin
                      //
                      Print.ImpF(Linha + 1, 01, '  ** ' + DMRelatorios.ListaSimpNOME_SUBGRUPO.Text, [Normal, Negrito]);
                      SubGrupo := DMRelatorios.ListaSimpSUBGRUPO.Value;
                      //
                      Linha := Linha + 3;
                 End;
                 //
                 Print.ImpF(Linha, 01, Format('%15s %-43s %12s %14s',
                                       [DMRelatorios.ListaSimpCODIGO_P.Text,
                                        Copy(DMRelatorios.ListaSimpNOME_PRODUTO.Text, 1, 42),
                                        DMRelatorios.ListaSimpQTDADE_2.Text,
                                        Replicate('_', 23)]), [Comp12]);

                 QUANTIDADE := QUANTIDADE + DMRelatorios.ListaSimpQTDADE_2.VALUE ;

                 //
                 Anda.Position := Anda.Position + 1;
                 //
                 Inc(Linha);
                 //
                 If Linha >= 63
                 Then
                     Print.Novapagina;
            END;

            DMRelatorios.ListaSimp.Next;
       END
       ELSE BEGIN
            //
            If Grupo <> DMRelatorios.ListaSimpCODIGO_G.Value
            then Begin
               //
               Print.ImpF(Linha + 1, 01, '* ' + DMRelatorios.ListaSimpNOME_GRUPO.Text, [Normal, Negrito]);
               Grupo := DMRelatorios.ListaSimpCODIGO_G.Value;
               SubGrupo := 0;
               //
               Linha := Linha + 2;
            End;
            //
            If SubGrupo <> DMRelatorios.ListaSimpSUBGRUPO.Value
            then Begin
               //
               Print.ImpF(Linha + 1, 01, '  ** ' + DMRelatorios.ListaSimpNOME_SUBGRUPO.Text, [Normal, Negrito]);
               SubGrupo := DMRelatorios.ListaSimpSUBGRUPO.Value;
               //
               Linha := Linha + 3;
            End;
            //
            Print.ImpF(Linha, 01, Format('%15s %-43s %12s %14s',
                                       [DMRelatorios.ListaSimpCODIGO_P.Text,
                                        Copy(DMRelatorios.ListaSimpNOME_PRODUTO.Text, 1, 42),
                                        DMRelatorios.ListaSimpQTDADE_2.Text,
                                        Replicate('_', 23)]), [Comp12]);

            QUANTIDADE := QUANTIDADE + DMRelatorios.ListaSimpQTDADE_2.VALUE ;

            //
            Anda.Position := Anda.Position + 1;
            DMRelatorios.ListaSimp.Next;
            //
            Inc(Linha);
            //
            If Linha >= 63
            Then
                Print.Novapagina;
       END;
  End;

  Inc(Linha);
  Inc(Linha);

  Str := formatfloat('###,##0.00', quantidade);

  while length(str) <= 10 do
  begin
       Str := ' ' + Str ;
  end;

  Print.ImpF(Linha, 01, Format('%15s %-43s %12s %14s',
                                       ['',
                                        'QUANTIDADE',
                                        STR,
                                        Replicate('_', 23)]), [Comp12]);


  //
  DMRelatorios.ListaSimp.Close;
  //
  Anda.Visible:= False;
  print.Fechar;
end;

procedure TFRelListaSimp.cmbGrupoInicialEnter(Sender: TObject);
begin
     CORFUNDO ( SENDER );

end;

procedure TFRelListaSimp.cmbGrupoInicialExit(Sender: TObject);
begin
     //TROCA A COR PARA A COR SELECIONADA
     TIRACORFUNDO ( SENDER );
end;

end.
