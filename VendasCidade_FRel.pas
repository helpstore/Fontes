 unit VendasCidade_FRel;

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
  TFRelVendasCidade = class(TForm)
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
    cmbCidade: TdxLookupEdit;
    LblTitulo: TcxLabel;
    b2: TBevel;
    DsCidade: TDataSource;
    TipoRel: TRadioGroup;
    procedure FormCreate(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cmbPessoaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PrintBeforeNewPage(Sender: TObject; Pagina: Integer);
    procedure PrintNewPage(Sender: TObject; Pagina: Integer);
    procedure FormShow(Sender: TObject);
    procedure ActPreviewExecute(Sender: TObject);
    procedure IniEnter(Sender: TObject);
    procedure IniExit(Sender: TObject);
    procedure FimExit(Sender: TObject);
  private
    { Private declarations }
    Grupo, SubGrupo: Integer;
    procedure IncLin ;
  public
    { Public declarations }
  end;

var
  FRelVendasCidade: TFRelVendasCidade;
  Linha, Pagina: Integer;

implementation

uses Relatorios_DM, Usuarios_DM, Application_DM, Funcoes;

{$R *.DFM}

procedure TFRelVendasCidade.FormCreate(Sender: TObject);
begin
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, Self.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TFRelVendasCidade.IncLin;
begin
     Linha := Linha + 1;

     If Linha > 62
     then
         Print.Novapagina ;
end;

procedure TFRelVendasCidade.ActFecharExecute(Sender: TObject);
begin
  Close;
end;

procedure TFRelVendasCidade.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  //
  Action := caFree;
  FRelVendasCidade := Nil;
end;

procedure TFRelVendasCidade.cmbPessoaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFRelVendasCidade.PrintBeforeNewPage(Sender: TObject; Pagina: Integer);
begin
  // Rodapé...
  Print.ImpF(63, 01, Replicate('-', 80), [Normal]);
  Print.ImpF(64, 01, dmapp.QryParceiroPARC_TEXTO_RELATORIO.AsString, [comp17,italico]);
  Print.ImpF(64, 74, 'Pag. : ' + FormatFloat('0000', Pagina), [Comp17]);
end;

procedure TFRelVendasCidade.PrintNewPage(Sender: TObject; Pagina: Integer);
var
  cidade : string;
begin
  if cmbCidade.text <> '' then
    cidade := cmbcidade.text
  else
    cidade := 'Todas as Cidades ';

  // Cabeçalho...
  Print.ImpF(01, 01, Replicate('-', 136), [Comp17]);
  Print.ImpF(02, 01, DMApp.Nome, [Normal, Negrito]);
  Print.ImpF(02, 55, 'Data : '+ DateTimeToStr(now()), [Normal]);
  Print.ImpF(03, 01, Print.TitulodoRelatorio+' - '+ini.text+' à '+fim.text+' - '+cidade, [Normal]);
  Print.ImpF(04, 01, Replicate('-', 136), [Comp17]);
                  //....5...10...15...20...25...30...35...40...45...50...55...60...65...70...75...80...85...90...95...00...05...10...15...20...25...30...35.
  If (TipoRel.ItemIndex = 0) Then // Sintético
     Begin
       Print.ImpF(05,01,'Codigo Data       Vendedor                                           Natureza  Nota Fiscal          Total       Desconto     Vlr Liquido', [Comp17]);

       Print.ImpF(06,01, Replicate('-', 136), [Comp17]);
       linha  := 08;
     End
  Else // Analitico
     Begin
       Print.ImpF(05,01,'Codigo', [Comp17]);
       Print.ImpF(05,07,'Data', [Comp17]);
       Print.ImpF(05,15,'Vendedor', [Comp17]);
       Print.ImpF(05,30,'Natureza', [Comp17]);
       Print.ImpF(05,43,'       NF', [Comp17]);
       Print.ImpF(05,53,'     Total', [Comp17]);
       Print.ImpF(05,63,' Desconto'    , [Comp17]);
       Print.ImpF(05,72,'Vlr Liquido', [Comp17]);

       Print.ImpF(06,01,'Codigo', [Comp17]);
       Print.ImpF(06,15,'Produto', [Comp17]);
       Print.ImpF(06,24,'Unidade', [Comp17]);
       Print.ImpF(06,30,'SubUnidade', [Comp17]);
       Print.ImpF(06,43,'     Qtde', [Comp17]);
       Print.ImpF(06,53,'  VlrUnit', [Comp17]);
       Print.ImpF(06,63,' Desconto', [Comp17]);
       Print.ImpF(06,73,'TotalItem', [Comp17]);

       Print.ImpF(07,01, Replicate('-', 136), [Comp17]);
       Linha  := 09;
     End;
end;

procedure TFRelVendasCidade.FormShow(Sender: TObject);
begin
  //
  IniciaComponentes(Self as TForm);
    Try

    If Not(DsCidade.DataSet.Active) Then
       DsCidade.DataSet.Open;
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

procedure TFRelVendasCidade.ActPreviewExecute(Sender: TObject);
Var
    Cod_Cliente: Integer;
    Total_Cliente, Total_Geral: Real;
    STR: String;
begin
  //
  Cod_Cliente := 0;
  //
  lblStatus.caption := 'Selecionando Dados' ;
  lblStatus.Visible := True ;
  lblStatus.Refresh ;
  // *** Passagem de Parametros ***
  If (Ini.date <= 0) or (Fim.date <= 0) Then
  begin
     MessageDlg('Informe o Período', MtError, [MbOk],0);
     exit;
  end;

  DMRelatorios.qryRelVendasCidade.Close ;
  DMRelatorios.qryRelVendasCidade.ParamByName('CNPJ').asString:= DMApp.Cnpj;
  DMRelatorios.qryRelVendasCidade.ParamByName('DTINIC').asString:= Ini.Text;
  DMRelatorios.qryRelVendasCidade.ParamByName('DTFINAL').asString:= Fim.Text;
  DMRelatorios.qryRelVendasCidade.ParamByName('CIDADE').Value:= cmbCidade.LookupKeyValue;
  DMRelatorios.qryRelVendasCidade.Open;


  If DMRelatorios.qryRelVendasCidade.RecordCount = 0 Then
     Begin
       lblStatus.Visible := False ;
       ShowMessage('Não há registro a imprimir para o período, verifique !');
       //
       DMRelatorios.qryRelVendasCidade.Close;
       //
       Ini.SetFocus;
       Exit;
     End
  Else
     Begin
       lblStatus.Visible := False ;
       Anda.Max := DMRelatorios.qryRelVendasCidade.RecordCount;
       Anda.Position := 0;
       Anda.Visible  := TRUE ;
     End;
  //
  print.TitulodoRelatorio:='Relatorio de Vendas por Cidade';
  print.Abrir;
  //
  Total_Cliente:= 0;
  Total_Geral  := 0;
  Cod_Cliente  := 0;
  //
  DMRelatorios.qryRelVendasCidade.First;
  While Not DMRelatorios.qryRelVendasCidade.Eof Do
  Begin
          //
          If Cod_Cliente <> DmRelatorios.qryRelVendasCidadePESSOA_FJ.Value Then
             Begin
               Print.ImpF(Linha,01,'Cliente : '+ DmRelatorios.qryRelVendasCidadePESSOA_RAZAO.Text,[Comp17, Negrito]);
               Cod_Cliente := DmRelatorios.qryRelVendasCidadePESSOA_FJ.Value;
               IncLin;
               IncLin;
               Total_Cliente:= 0;
             End;
          //
          Print.ImpF(Linha,  01, DMRelatorios.qryRelVendasCidadeCODIGO.Text,[Comp17]);
          Print.ImpF(Linha,  07, DMRelatorios.qryRelVendasCidadeDATA.Text,[Comp17]);
          Print.ImpF(Linha,  15, DMRelatorios.qryRelVendasCidadeNOME_VENDEDOR.Text,[Comp17]);
          Print.ImpF(Linha,  30, DMRelatorios.qryRelVendasCidadeNATUREZA.Text,[Comp17]);
          Print.ImpVAL(Linha,43, '###,##0.00',DMRelatorios.qryRelVendasCidadeNUM_NF.Value,[Comp17]);
          Print.ImpVal(Linha,53, '###,##0.00',DMRelatorios.qryRelVendasCidadeTOTAL.value,[Comp17]);
          Print.ImpVal(Linha,63, '###,##0.00',DMRelatorios.qryRelVendasCidadeDESC_ACRES.value,[Comp17]);
          Print.ImpVal(Linha,73, '###,##0.00',DMRelatorios.qryRelVendasCidadeVLRLIQUIDO.value,[Comp17]);

          If (TipoRel.ItemIndex = 1)
          Then // Analitico
          Begin
               IncLin;

               DMRelatorios.Fat_VendasItens.Close ;
               DMRelatorios.Fat_VendasItens.ParamByName('CNPJ').Value   := DMApp.Cnpj;
               DMRelatorios.Fat_VendasItens.ParamByName('CODIGO').Value := DMRelatorios.qryRelVendasCidadeCODIGO.Value;
               DMRelatorios.Fat_VendasItens.Open;
               DMRelatorios.Fat_VendasItens.First;

               While Not DMRelatorios.Fat_VendasItens.Eof Do
               Begin
                       Print.ImpF(Linha  ,1, DMRelatorios.Fat_VendasItensPRODUTO.Text, [Comp17]);
                       Print.ImpF(Linha  ,15,copy(DMRelatorios.Fat_VendasItensNOME.Text,1,37), [Comp17]);
                       Print.ImpF(Linha  ,24,DMRelatorios.Fat_VendasItensUNIDADE.Text, [Comp17]);
                       Print.ImpF(Linha  ,30,DMRelatorios.Fat_VendasItensSUBUNIDADE.Text, [Comp17]);

                       Print.ImpVAL(Linha  ,43,'###,##0.00',DMRelatorios.Fat_VendasItensQUANTIDADE.value, [Comp17]);

                       Print.ImpVAL(Linha  ,53,'###,##0.00',DMRelatorios.Fat_VendasItensPRC_UNITARIO.value, [Comp17]);

                       Print.ImpVAL(Linha  ,63,'###,##0.00',DMRelatorios.Fat_VendasItensDESCONTO_TOTAL.value, [Comp17]);

                       Print.ImpVAL(Linha  ,73,'###,##0.00',
                       ((DMRelatorios.Fat_VendasItensQUANTIDADE.AsFloat * DMRelatorios.Fat_VendasItensPRC_UNITARIO.AsFloat))
                       , [Comp17]);


                       IncLin;
                       DMRelatorios.Fat_VendasItens.Next;
                     End;
          End;
          Total_Geral:= Total_Geral + DMRelatorios.qryRelVendasCidadeVLRLIQUIDO.Value;
          Total_Cliente:= Total_Cliente + DMRelatorios.qryRelVendasCidadeVLRLIQUIDO.Value;
          //
          Anda.Position := Anda.Position + 1;
          DMRelatorios.qryRelVendasCidade.Next;
          //
          IncLin;
          //
          If (Cod_Cliente <> DmRelatorios.qryRelVendasCidadePESSOA_FJ.Value) Or
             (DMRelatorios.qryRelVendasCidade.Eof) Then
             Begin
               Print.ImpF(Linha, 53,'Total Cliente', [Comp17, Negrito]);
               Print.ImpVal(Linha, 73,'###,##0.00',Total_Cliente, [Comp17, Negrito]);
               IncLin;
               Print.ImpF(Linha, 01, Replicate('-', 136), [Comp17]);
               IncLin;
             End;
        End;
  //
  Print.ImpF(Linha + 1, 55, 'Total Geral', [Comp17, Negrito]);

  Print.ImpVal(Linha, 73,'###,##0.00',TOTAL_GERAL, [Comp17, Negrito]);

  //
  DMRelatorios.qryRelVendasCidade.Close;
  DMRelatorios.Fat_VendasItens.Close;
  //
  Anda.Visible:= False;
  print.Fechar;
end;

procedure TFRelVendasCidade.IniEnter(Sender: TObject);
begin
     CORFUNDO(SENDER);
end;

procedure TFRelVendasCidade.IniExit(Sender: TObject);
Var
   Data: TDateTime ;
begin
     //TROCA A COR PARA A COR SELECIONADA
     TIRACORFUNDO(SENDER);

     TRY
        IF ( INI.TEXT <> '  /  /    ' ) AND ( INI.TEXT <> '  /  /  ' )
        THEN BEGIN
             DATA := STRTODATE ( INI.TEXT ) ;
        END;

        //TROCA A COR PARA A COR SELECIONADA
        TiraCorFundo ( Sender );

        if INI.TEXT = '  /  /    '
        THEN
            INI.DATE := STRTODATE ('01/01/1900');

     EXCEPT
           MessageDlg('Data Inválida!',MtError,[MbOk],0);
           INI.SETFOCUS ;
     END;
end;

procedure TFRelVendasCidade.FimExit(Sender: TObject);
VAR
   DATA: TDATETIME;
begin
     TIRACORFUNDO( SENDER );
     TRY
        IF ( FIM.TEXT <> '  /  /    ' ) AND ( FIM.TEXT <> '  /  /  ' )
        THEN BEGIN
             DATA := STRTODATE ( FIM.TEXT ) ;
        END;

        if FIM.TEXT = '  /  /    '
        THEN
            FIM.DATE := STRTODATE ('31/12/9999');

     EXCEPT
           MessageDlg('Data Inválida!',MtError,[MbOk],0);
           FIM.SETFOCUS ;
     END;
end;

end.
