 unit VendasNatureza_FRel;

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
  TFRelVendasNatureza = class(TForm)
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
    cmbNatureza: TdxLookupEdit;
    LblTitulo: TcxLabel;
    b2: TBevel;
    DsNatureza: TDataSource;
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
  public
    { Public declarations }
  end;

var
  FRelVendasNatureza: TFRelVendasNatureza;
  Linha, Pagina: Integer;

implementation

uses Relatorios_DM, Usuarios_DM, Application_DM, Funcoes;

{$R *.DFM}

procedure TFRelVendasNatureza.FormCreate(Sender: TObject);
begin
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, Self.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TFRelVendasNatureza.ActFecharExecute(Sender: TObject);
begin
  Close;
end;

procedure TFRelVendasNatureza.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  //
  //
  Action := caFree;
  FRelVendasNatureza := Nil;
end;

procedure TFRelVendasNatureza.cmbPessoaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFRelVendasNatureza.PrintBeforeNewPage(Sender: TObject; Pagina: Integer);
begin
  // Rodapé...
  Print.ImpF(63, 01, Replicate('-', 80), [Normal]);
  Print.ImpF(64, 01, dmapp.QryParceiroPARC_TEXTO_RELATORIO.AsString, [comp17,italico]);
  Print.ImpF(64, 74, 'Pag. : ' + FormatFloat('0000', Pagina), [Comp17]);
end;

procedure TFRelVendasNatureza.PrintNewPage(Sender: TObject; Pagina: Integer);
begin
  // Cabeçalho...
  Print.ImpF(01, 01, Replicate('-', 136), [Comp17]);
  Print.ImpF(02, 01, DMApp.Nome, [Normal, Negrito]);
  Print.ImpF(02, 55, 'Data : '+ DateTimeToStr(now()), [Normal]);
  Print.ImpF(03, 01, Print.TitulodoRelatorio, [Normal]);
  Print.ImpF(04, 01, Replicate('-', 136), [Comp17]);
                  //....5...10...15...20...25...30...35...40...45...50...55...60...65...70...75...80...85...90...95...00...05...10...15...20...25...30...35.
  If (TipoRel.ItemIndex = 0) Then // Sintético
     Begin
       Print.ImpF(05,01,'Codigo Data       Cliente                                            Vendedor  Nota Fiscal          Total       Desconto     Vlr Liquido', [Comp17]);
       Print.ImpF(06,01, Replicate('-', 136), [Comp17]);
       linha  := 08;
     End
  Else // Analitico
     Begin
       Print.ImpF(05,01,'Codigo Data       Cliente                                            Vendedor  Nota Fiscal          Total       Desconto     Vlr Liquido', [Comp17]);
       Print.ImpF(06,01,'                  Codigo            Produto                                Unidade SubUnidade Qtde       VlrUnit    Desconto   TotalItem', [Comp17]);
       Print.ImpF(07,01, Replicate('-', 136), [Comp17]);
       Linha  := 09;
     End;
end;

procedure TFRelVendasNatureza.FormShow(Sender: TObject);
begin
  //
  IniciaComponentes(Self as TForm);
    Try
    If Not(dsNatureza.DataSet.Active) Then
       dsNatureza.DataSet.Open;
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

procedure TFRelVendasNatureza.ActPreviewExecute(Sender: TObject);
Var
    Cod_Natureza: Integer;
    Total_Natureza, Total_Geral: Real;
    STR: String;
begin
  //
  Cod_Natureza := 0;
  //
  lblStatus.caption := 'Selecionando Dados' ;
  lblStatus.Visible := True ;
  lblStatus.Refresh ;
  // *** Passagem de Parametros ***
  DMRelatorios.Fat_VendasNatu.ParamByName('CNPJ').asString:= DMApp.Cnpj;

  If (Ini.Text = '  / /    ') Or (Fim.Text = '  / /    ') Then
     MessageDlg('Informe o Período', MtError, [MbOk],0)
  Else
     Begin
        DMRelatorios.Fat_VendasNatu.ParamByName('DINI').asString:= Ini.Text;
        DMRelatorios.Fat_VendasNatu.ParamByName('DFIM').asString:= Fim.Text;
     End;
  If CmbNatureza.Text = '' Then
     DMRelatorios.Fat_VendasNatu.ParamByName('COD_NATUREZA').Value:= 0
  Else
     DMRelatorios.Fat_VendasNatu.ParamByName('COD_NATUREZA').Value:= DsNatureza.DataSet.fieldByName('CODIGO').Value;
  // *** fim da Passagem de Parametros ***

  //
  DMRelatorios.Fat_VendasNatu.Open;
  //
  If DMRelatorios.Fat_VendasNatu.RecordCount = 0 Then
     Begin
       lblStatus.Visible := False ;
       ShowMessage('Não há registro a imprimir para o período, verifique !');
       //
       DMRelatorios.Fat_VendasNatu.Close;
       //
       Ini.SetFocus;
       Exit;
     End
  Else
     Begin
       lblStatus.Visible := False ;
       Anda.Max := DMRelatorios.Fat_VendasNatu.RecordCount;
       Anda.Position := 0;
       Anda.Visible  := TRUE ;
     End;
  //
  print.TitulodoRelatorio:='Relatorio de Vendas por Natureza';
  print.Abrir;
  //
  Total_Natureza:= 0;
  Total_Geral:= 0;
  //
  DMRelatorios.Fat_VendasNatu.First;
  While Not DMRelatorios.Fat_VendasNatu.Eof Do
        Begin
          //
          If Cod_Natureza <> DmRelatorios.Fat_VendasNatuNATUREZA.Value Then
          Begin
               Print.ImpF(Linha,01,'Natureza : '+ DmRelatorios.Fat_VendasNatuNOME_NATUREZA.Text,[Comp17, Negrito]);
               Cod_Natureza := DmRelatorios.Fat_VendasNatuNATUREZA.Value;
               Linha := Linha + 2;

               If (Linha >= 63) Then
                  Print.Novapagina;

               Total_Natureza:= 0;
          End;
          //
          Print.ImpF(Linha,01,Format('%6s %-8s %-50s %-9s %11s %14s %14s %15s',
                  [DMRelatorios.Fat_VendasNatuCODIGO.Text,
                   DMRelatorios.Fat_VendasNatuDATA.Text,
                   DMRelatorios.Fat_VendasNatuPESSOA_RAZAO.Text,
                   DMRelatorios.Fat_VendasNatuNOME_VENDEDOR.Text,
                   DMRelatorios.Fat_VendasNatuNUM_NF.Text,
                   DMRelatorios.Fat_VendasNatuTOTAL.Text,
                   DMRelatorios.Fat_VendasNatuDESC_ACRES.Text,
                   DMRelatorios.Fat_VendasNatuVLRLIQUIDO.Text]),[Comp17]);
          If (TipoRel.ItemIndex = 1) Then // Analitico
             Begin
               Linha := Linha + 1;

               If (Linha >= 63) Then
                  Print.Novapagina;
               DMRelatorios.Fat_VendasItens.Close ;
               DMRelatorios.Fat_VendasItens.ParamByName('CNPJ').Value:= DMApp.Cnpj;
               DMRelatorios.Fat_VendasItens.ParamByName('CODIGO').Value:= DMRelatorios.Fat_VendasNatuCODIGO.Value;
               DMRelatorios.Fat_VendasItens.Open;
               DMRelatorios.Fat_VendasItens.First;
               While Not DMRelatorios.Fat_VendasItens.Eof Do
                     Begin
                       Print.ImpF(Linha,12,Format('%-17s %-39s %-6s %-10s %9s %9s %9s %11s',
                               [DMRelatorios.Fat_VendasItensPRODUTO.Text,
                                copy(DMRelatorios.Fat_VendasItensNOME.Text,1,37),
                                DMRelatorios.Fat_VendasItensUNIDADE.Text,
                                DMRelatorios.Fat_VendasItensSUBUNIDADE.Text,
                                DMRelatorios.Fat_VendasItensQUANTIDADE.Text,
                                DMRelatorios.Fat_VendasItensPRC_UNITARIO.Text,
                                DMRelatorios.Fat_VendasItensDESCONTO.Text,
                                FormatFloat('#,##0.00',(DMRelatorios.Fat_VendasItensQUANTIDADE.AsFloat * DMRelatorios.Fat_VendasItensPRC_UNITARIO.AsFloat))]), [Comp17]);
                       Linha := Linha + 1;

                       If (Linha >= 63) Then
                          Print.Novapagina;

                       DMRelatorios.Fat_VendasItens.Next;
                     End;
             End;
          Total_Geral:= Total_Geral + DMRelatorios.Fat_VendasNatuVLRLIQUIDO.Value;
          Total_Natureza:= Total_Natureza + DMRelatorios.Fat_VendasNatuVLRLIQUIDO.Value;
          //
          Anda.Position := Anda.Position + 1;
          DMRelatorios.Fat_VendasNatu.Next;
          //
          Linha := Linha + 1;

          If (Linha >= 63) Then
             Print.Novapagina;
          //
          If (Cod_Natureza <> DmRelatorios.Fat_VendasNatuNATUREZA.Value) Or
             (DMRelatorios.Fat_VendasNatu.Eof) Then
             Begin
               Print.ImpF(Linha, 01, Format('%103s Total Natureza : %15s', ['', FormatFloat('#,##0.00', TOTAL_Natureza)]), [Comp17, Negrito]);
               Linha:= Linha + 1;
               If (Linha >= 63) Then
                  Print.Novapagina;
               Print.ImpF(Linha, 01, Replicate('-', 136), [Comp17]);
               Linha:= Linha + 1;
               If (Linha >= 63) Then
                  Print.Novapagina;
             End;
          //
          If (Linha >= 63) Then
             Print.Novapagina;
        End;
  //
  Print.ImpF(Linha+1, 01, Format('%106s Total Geral : %15s', ['', FormatFloat('#,##0.00', TOTAL_GERAL)]), [Comp17, Negrito]);
  //
  DMRelatorios.Fat_VendasNatu.Close;
  //
  Anda.Visible:= False;
  print.Fechar;
end;

procedure TFRelVendasNatureza.IniEnter(Sender: TObject);
begin
     CORFUNDO ( SENDER );
end;

procedure TFRelVendasNatureza.IniExit(Sender: TObject);
begin
     TIRACORFUNDO ( SENDER );
     if INI.TEXT = '  /  /    '
     THEN
         INI.DATE := STRTODATE ('01/01/1900');
end;

procedure TFRelVendasNatureza.FimExit(Sender: TObject);
begin
     //TROCA A COR PARA A COR SELECIONADA
     TIRACorFundo ( Sender );

     if FIM.TEXT = '  /  /    '
     THEN
         FIM.DATE := STRTODATE ('31/12/9999');
end;

end.
