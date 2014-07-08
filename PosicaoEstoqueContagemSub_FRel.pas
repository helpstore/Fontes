unit PosicaoEstoqueContagemSub_FRel;

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
  TFRelPosicaoEstoqueContagemSub = class(TForm)
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
    Label1: TcxLabel;
    cmbTipoCusto: TdxPickEdit;
    LblStatus: TcxLabel;
    ANDA: TProgressBar;
    Label4: TcxLabel;
    EdTipo: TdxPickEdit;
    RDALFA: TRadioButton;
    RadioButton2: TRadioButton;
    cmbSubGrupo: TdxLookupEdit;
    DsSubGrupo: TDataSource;
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
  FRelPosicaoEstoqueContagemSub: TFRelPosicaoEstoqueContagemSub;
  Linha, Pagina: Integer;
implementation

uses Relatorios_DM, Usuarios_DM, Application_DM, Funcoes;

{$R *.DFM}

procedure TFRelPosicaoEstoqueContagemSub.FormCreate(Sender: TObject);
begin
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, Self.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TFRelPosicaoEstoqueContagemSub.ActFecharExecute(Sender: TObject);
begin
  Close;
end;

procedure TFRelPosicaoEstoqueContagemSub.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //
  dsSubGrupo.DataSet.Close;
  dsGrupos.DataSet.Close;
  //
  Action := caFree;
  FRelPosicaoEstoqueContagemSub := Nil;
end;

procedure TFRelPosicaoEstoqueContagemSub.cmbPessoaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFRelPosicaoEstoqueContagemSub.PrintBeforeNewPage(Sender: TObject; Pagina: Integer);
begin
  // Rodapé...
  Print.ImpF(63, 01, Replicate('-', 80), [Normal]);
  Print.ImpF(64, 01, dmapp.QryParceiroPARC_TEXTO_RELATORIO.AsString, [comp17,italico]);
  Print.ImpF(64, 74, 'Pag. : ' + FormatFloat('0000', Pagina), [Comp17]);
end;

procedure TFRelPosicaoEstoqueContagemSub.PrintNewPage(Sender: TObject; Pagina: Integer);
begin
  // Cabeçalho...
  Print.ImpF(01, 01, Replicate('-', 80), [Normal]);
  Print.ImpF(02, 01, DMApp.Nome, [Normal, Negrito]);
  Print.ImpF(02, 55, 'Data : '+ DateTimeToStr(now()), [Normal]);
  Print.ImpF(03, 01, Print.TitulodoRelatorio, [Normal]);
  Print.ImpF(04, 01, Replicate('-', 80), [Normal]);
                    //....5...10...15...20...25...30...35...40...45...50...55...60...65...70...75...80...85...90...95...00...05...10...15...20...25...30...35.

  Print.ImpF(05, 01, '* GRUPO', [Comp17, Negrito]);
  Print.ImpF(06, 01, '  ** SUBGRUPO', [Comp17, Negrito]);
  Print.ImpF(07, 01, Replicate('-', 80), [Normal]);

  Print.ImpF(08, 01, '     Int             Codigo Nome                                       Unid.   Quantidade  Custo Unit.  Venda Unit.                      ', [Comp17]);
  Print.ImpF(09, 01, '     -----  --------------- ------------------------------------------ ----- ------------ ------------ ------------ ---------------------', [Comp17]);

  linha  := 10;
end;

procedure TFRelPosicaoEstoqueContagemSub.FormShow(Sender: TObject);
begin
  //
  IniciaComponentes(Self as TForm);
  //
  Try
    dsGrupos.DataSet.Open;
    dsSubGrupo.DataSet.Open;
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
  cmbTipoCusto.ItemIndex := 0;
end;

procedure TFRelPosicaoEstoqueContagemSub.ActPreviewExecute(Sender: TObject);
Var
   Total_Custo, Total_Quantidade : real;
   Custo, Quantidade: Extended;
   Mascara: String;
begin
  //

  If cmbGrupoInicial.Text = ''
  Then begin
       MessageDlg('Selecione o Grupo ',MtError,[MbOk],0);
       cmbGrupoInicial.SetFocus ;
       Exit;
  end;

  If cmbSubGrupo.Text = ''
  Then begin
       MessageDlg('Selecione o SubGrupo ',MtError,[MbOk],0);
       cmbSubGrupo.SetFocus ;
       Exit;
  end;

  Grupo := 0;
  SubGrupo := 0;

  lblStatus.caption := 'Selecionando Dados' ;

  lblStatus.Visible := True ;
  lblStatus.Refresh ;
  //
  Print.TitulodoRelatorio := 'Posicao de Estoque (' + cmbTipoCusto.Text + ')';
  //
  DMRelatorios.PosicaoEstoque.ParamByName('CNPJ').asString     := DMApp.Cnpj;

  IF RDALFA.Checked
  THEN BEGIN
     DMRelatorios.PosicaoEstoque.SQL.Clear ;
     DMRelatorios.PosicaoEstoque.SQL.Add ( ' select CODIGO, CODIGO_INTERNO, CUSTO_AQUISICAO, NOME, UNIDADE, NOME_GRUPO, CODIGO_G , ');
     DMRelatorios.PosicaoEstoque.SQL.Add ( ' SUBGRUPO , NOME_SUBGRUPO , SUBUNIDADE , QTDADE_2 , PRC_REPOS , PRC_CUSTO_MED ,        ');
     DMRelatorios.PosicaoEstoque.SQL.Add ( ' PRC_VENDA From VER_PRODUTO_GRUPO ( :CNPJ, :GRUPO_INI, :GRUPO_FIM, :ATV )              ');
     DMRelatorios.PosicaoEstoque.SQL.Add ( ' WHERE SUBGRUPO = :SUBGRUPO                                                            ');
     DMRelatorios.PosicaoEstoque.SQL.Add ( ' ORDER BY NOME_GRUPO, NOME_SUBGRUPO, NOME                                              ');
  END
  ELSE BEGIN
     DMRelatorios.PosicaoEstoque.SQL.Clear ;
     DMRelatorios.PosicaoEstoque.SQL.Add ( ' select CODIGO, CODIGO_INTERNO, CUSTO_AQUISICAO, NOME, UNIDADE, NOME_GRUPO, CODIGO_G , ');
     DMRelatorios.PosicaoEstoque.SQL.Add ( ' SUBGRUPO , NOME_SUBGRUPO , SUBUNIDADE , QTDADE_2 , PRC_REPOS , PRC_CUSTO_MED ,        ');
     DMRelatorios.PosicaoEstoque.SQL.Add ( ' PRC_VENDA From VER_PRODUTO_GRUPO ( :CNPJ, :GRUPO_INI, :GRUPO_FIM, :ATV )              ');
     DMRelatorios.PosicaoEstoque.SQL.Add ( ' WHERE SUBGRUPO = :SUBGRUPO                                                            ');
     DMRelatorios.PosicaoEstoque.SQL.Add ( ' ORDER BY NOME_GRUPO, NOME_SUBGRUPO, CODIGO                                            ');
  END;

  If (EdTipo.Text = 'Ativo') Then
     DMRelatorios.PosicaoEstoque.ParamByName('ATV' ).asString     := 'S'
  Else
     DMRelatorios.PosicaoEstoque.ParamByName('ATV' ).asString     := 'N';
  //
  DMRelatorios.PosicaoEstoque.ParamByName('GRUPO_INI').asString := cmbGrupoInicial.Text ;

  DMRelatorios.PosicaoEstoque.ParamByName('GRUPO_FIM').asString := cmbGrupoInicial.Text ;


  DMRelatorios.PosicaoEstoque.ParamByName('SUBGRUPO' ).asInteger  := CmbSubGrupo.lookupkeyvalue ;

  //
  DMRelatorios.PosicaoEstoque.Tag := cmbTipoCusto.ItemIndex;

  //
  DMRelatorios.PosicaoEstoque.Open;

  //
  If DMRelatorios.PosicaoEstoque.RecordCount = 0 Then
     Begin
       lblStatus.Visible := False ;
       ShowMessage('Não há registro a imprimir para o período, verifique !');
       //
       DMRelatorios.PosicaoEstoque.Close;
       //
       cmbGrupoInicial.SetFocus;
       Exit;
     End
     Else
     Begin
          lblStatus.Visible := False ;
          DMRelatorios.PosicaoEstoque.FetchAll ;
          Anda.Max := DMRelatorios.PosicaoEstoque.RecordCount;
          Anda.Position := 0;
          Anda.Visible  := TRUE ;
     End;

  //
  print.Abrir;

  Total_Custo      := 0;
  Total_Quantidade := 0;

  //
  DMRelatorios.PosicaoEstoque.First;
  While Not DMRelatorios.PosicaoEstoque.Eof Do
  Begin
          //
          If Grupo <> DMRelatorios.PosicaoEstoqueCODIGO_G.Value then
             Begin
               //
               Print.ImpF(Linha + 1, 01, '* ' + DMRelatorios.PosicaoEstoqueNOME_GRUPO.Text, [Comp17, Negrito]);
               Grupo := DMRelatorios.PosicaoEstoqueCODIGO_G.Value;
               SubGrupo := 0;
               //
               Linha := Linha + 2;
             End;
          //
          If SubGrupo <> DMRelatorios.PosicaoEstoqueSUBGRUPO.Value then
             Begin
               //
               Print.ImpF(Linha + 1, 01, '  ** ' + DMRelatorios.PosicaoEstoqueNOME_SUBGRUPO.Text, [Comp17, Negrito]);
               SubGrupo := DMRelatorios.PosicaoEstoqueSUBGRUPO.Value;
               //
               Linha := Linha + 3;
             End;
          //
          If DMRelatorios.PosicaoEstoque.Tag = 0 Then
             Custo := DMRelatorios.PosicaoEstoquePRC_CUSTO_MED.Value
          Else
             Custo := DMRelatorios.PosicaoEstoquePRC_REPOS.Value;

          If DMRelatorios.PosicaoEstoqueSUBUNIDADE.VALUE > 0
          then begin
               Quantidade := DMRelatorios.PosicaoEstoqueQTDADE_2.VALUE/DMRelatorios.PosicaoEstoqueSUBUNIDADE.VALUE;
          end
          else begin
               Quantidade := DMRelatorios.PosicaoEstoqueQTDADE_2.VALUE;
          end;

          If DmaPP.CASAS_QNTDE = 'S'
          THEN BEGIN
               Mascara := '###,###,##0.00';
          END
          ELSE BEGIN
               Mascara := '###,###,##0';
          END;

          If ( CkEstoque.Checked  )
          then begin
               if ( Quantidade > 0 )
               then begin
                    //
                    Print.ImpF(Linha, 01, Format('%5s %6S %16s %-38s %-8s %12s %12s %12s %20s',
                                       ['',
                                        DMRelatorios.PosicaoEstoqueCODIGO_INTERNO.Text,
                                        DMRelatorios.PosicaoEstoqueCODIGO.Text,
                                        Copy(DMRelatorios.PosicaoEstoqueNOME.Text, 1, 39),
                                        copy(DMRelatorios.PosicaoEstoqueUNIDADE.Text + ' ' + DMRelatorios.PosicaoEstoqueSUBUNIDADE.Text,1,6),
                                        FormatFloat(Mascara, Quantidade),
                                        FormatFloat('#,##0.00', Custo),
                                        DMRelatorios.PosicaoEstoquePRC_VENDA.Text,
                                        '____________________']), [Comp17]);
                    //
                    Inc(Linha);
                    Total_Custo      := Total_Custo      + ( Quantidade * Custo );
                    Total_Quantidade := Total_Quantidade + Quantidade;
               end;
          end
          else begin
                    //
                    Print.ImpF(Linha, 01, Format('%5s %6S %16s %-38s %-8s %12s %12s %12s %20s',
                                       ['',
                                        DMRelatorios.PosicaoEstoqueCODIGO_INTERNO.Text,
                                        DMRelatorios.PosicaoEstoqueCODIGO.Text,
                                        Copy(DMRelatorios.PosicaoEstoqueNOME.Text, 1, 39),
                                        copy(DMRelatorios.PosicaoEstoqueUNIDADE.Text + ' ' + DMRelatorios.PosicaoEstoqueSUBUNIDADE.Text,1,6),
                                        FormatFloat(Mascara, Quantidade),
                                        FormatFloat('#,##0.00', Custo),
                                        DMRelatorios.PosicaoEstoquePRC_VENDA.Text,
                                        '____________________']), [Comp17]);
                    //
                    Inc(Linha);
                    Total_Custo      := Total_Custo      + (Custo * Quantidade);
                    Total_Quantidade := Total_Quantidade + Quantidade;
          end;

               //
          Anda.Position := Anda.Position + 1;
          DMRelatorios.PosicaoEstoque.Next;
          //
          If Linha >= 63 Then
              Print.Novapagina;
        End;
  //
  DMRelatorios.PosicaoEstoque.Close;
  //
  Anda.Visible:= False;

  Inc(Linha);

  Print.ImpF(Linha, 01, Format('%-39s %-35s %14s %12s %14s %12s',
                                       ['',
                                        '',
                                        FormatFloat('#,##0.00', Total_Quantidade ),
                                        FormatFloat('#,##0.00', Total_Custo ),
                                        '',
                                        '']), [Comp17]);

  print.Fechar;
end;

procedure TFRelPosicaoEstoqueContagemSub.cmbGrupoInicialEnter(Sender: TObject);
begin
     CORFUNDO ( SENDER );
end;

procedure TFRelPosicaoEstoqueContagemSub.cmbGrupoInicialExit(Sender: TObject);
begin
     //TROCA A COR PARA A COR SELECIONADA
     TIRACORFUNDO ( SENDER );
end;

end.
