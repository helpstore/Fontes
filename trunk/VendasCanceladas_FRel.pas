 unit VendasCanceladas_FRel;

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
  TFRelVendasCanceladas = class(TForm)
    pnlClient: TPanel;
    Print: TRDprint;
    Actions: TActionList;
    ActPreview: TAction;
    Label3: TcxLabel;
    Label1: TcxLabel;
    Ini: TdxDateEdit;
    Fim: TdxDateEdit;
    LblTitulo: TcxLabel;
    b2: TBevel;
    TipoRel: TRadioGroup;
    Panel2: TPanel;
    LblStatus: TcxLabel;
    RzBitBtn1: TcxButton;
    RzBitBtn2: TcxButton;
    ANDA: TProgressBar;
    TipoVenda: TRadioGroup;
    procedure FormCreate(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cmbPessoaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PrintBeforeNewPage(Sender: TObject; Pagina: Integer);
    procedure PrintNewPage(Sender: TObject; Pagina: Integer);
    procedure FormShow(Sender: TObject);
    procedure ActPreviewExecute(Sender: TObject);
    procedure IniExit(Sender: TObject);
    procedure IniEnter(Sender: TObject);
  private
    { Private declarations }
    Grupo, SubGrupo: Integer;
  public
    { Public declarations }
  end;

var
  FRelVendasCanceladas: TFRelVendasCanceladas;
  Linha, Pagina: Integer;

implementation

uses Relatorios_DM, Usuarios_DM, Application_DM, Funcoes;

{$R *.DFM}

procedure TFRelVendasCanceladas.FormCreate(Sender: TObject);
begin
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, Self.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TFRelVendasCanceladas.ActFecharExecute(Sender: TObject);
begin
  Close;
end;

procedure TFRelVendasCanceladas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //
  Action := caFree;
  FRelVendasCanceladas := Nil;
end;

procedure TFRelVendasCanceladas.cmbPessoaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFRelVendasCanceladas.PrintBeforeNewPage(Sender: TObject; Pagina: Integer);
begin
  // Rodapé...
  Print.ImpF(63, 01, Replicate('-', 80), [Normal]);
  Print.ImpF(64, 01, dmapp.QryParceiroPARC_TEXTO_RELATORIO.AsString, [comp17,italico]);
  Print.ImpF(64, 74, 'Pag. : ' + FormatFloat('0000', Pagina), [Comp17]);
end;

procedure TFRelVendasCanceladas.PrintNewPage(Sender: TObject; Pagina: Integer);
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
       Print.ImpF(05,01,'Codigo Data       Cliente                                            Natureza  Nota Fiscal          Total       Desconto     Vlr Liquido', [Comp17]);
       Print.ImpF(06,01, Replicate('-', 136), [Comp17]);
       linha  := 08;
     End
  Else // Analitico
     Begin
       Print.ImpF(05,01,'Codigo Data       Cliente                                            Natureza  Nota Fiscal          Total       Desconto     Vlr Liquido', [Comp17]);
       Print.ImpF(06,01,'                  Codigo            Produto                                Unidade SubUnidade Qtde       VlrUnit    Desconto   TotalItem', [Comp17]);
       Print.ImpF(07,01, Replicate('-', 136), [Comp17]);
       Linha  := 09;
     End;
end;

procedure TFRelVendasCanceladas.FormShow(Sender: TObject);
begin
  //
  IniciaComponentes(Self as TForm);
    Try
       //
       //
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

procedure TFRelVendasCanceladas.ActPreviewExecute(Sender: TObject);
Var
    Cod_Vendedor: Integer;
    Total_Vendedor, Total_Geral: Real;
    STR: String;
    AVista, APrazo, Descontos: Real;
begin
  //
  Cod_Vendedor := 0;

  AVista       := 0;
  APrazo       := 0;
  Descontos    := 0;

  //
  lblStatus.caption := 'Selecionando Dados' ;
  lblStatus.Visible := True ;
  lblStatus.Refresh ;
  // *** Passagem de Parametros ***

  If TipoVenda.ItemIndex = 0
  then begin
       DMRelatorios.Fat_VendasVend.Close ;
       DMRelatorios.Fat_VendasVend.SQL.Clear ;

       DMRelatorios.Fat_VendasVend.SQL.Add ( ' Select * from VER_FAT_VENDAS_VENDEDOR         ' );

       DMRelatorios.Fat_VendasVend.SQL.Add ( ' (  :CNPJ,  :DTINIC,  :DTFINAL,  :VEND ) ' );

       DMRelatorios.Fat_VendasVend.ParamByName('CNPJ').asString:= DMApp.Cnpj;

       //SOMENTE CANCELADAS
       DMRelatorios.Fat_VendasVend.SQL.Add ( ' Where (CANCELADA = :CANCELADA )  ' );

       DMRelatorios.Fat_VendasVend.ParamByName('CANCELADA').asString:= 'S' ;


       If (Ini.Text = '  / /    ') Or (Fim.Text = '  / /    ')
       Then begin
            MessageDlg('Informe o Período', MtError, [MbOk],0);
       end
       Else Begin
            DMRelatorios.Fat_VendasVend.ParamByName('DTINIC').asDate  := Ini.Date;
            DMRelatorios.Fat_VendasVend.ParamByName('DTFINAL').asDate := Fim.Date;
       End;

       DMRelatorios.Fat_VendasVend.ParamByName('VEND').asString:= '0';
  end ;


  If TipoVenda.ItemIndex = 1
  then begin
       DMRelatorios.Fat_VendasVend.Close ;
       DMRelatorios.Fat_VendasVend.SQL.Clear ;

       DMRelatorios.Fat_VendasVend.SQL.Add ( ' Select * from VER_FAT_VENDAS_VENDEDOR        ' );

       DMRelatorios.Fat_VendasVend.SQL.Add ( ' (  :CNPJ,  :DTINIC,  :DTFINAL,  :VEND )      ' );

       DMRelatorios.Fat_VendasVend.ParamByName('CNPJ').asString:= DMApp.Cnpj;

       //SOMENTE CANCELADAS
       DMRelatorios.Fat_VendasVend.SQL.Add ( ' Where (( NUM_NF > 0 ) OR ( NUM_CUPOM > 0 )) AND (CANCELADA = :CANCELADA )  ' );

       DMRelatorios.Fat_VendasVend.ParamByName('CANCELADA').asString:= 'S' ;


       If (Ini.Text = '  / /    ') Or (Fim.Text = '  / /    ')
       Then begin
            MessageDlg('Informe o Período', MtError, [MbOk],0);
       end
       Else Begin
            DMRelatorios.Fat_VendasVend.ParamByName('DTINIC').asDate  := Ini.Date;
            DMRelatorios.Fat_VendasVend.ParamByName('DTFINAL').asDate := Fim.Date;
       End;

       DMRelatorios.Fat_VendasVend.ParamByName('VEND').asString:= '0';
  end ;

  If TipoVenda.ItemIndex = 2 then
  begin
    DMRelatorios.Fat_VendasVend.Close ;

    DMRelatorios.Fat_VendasVend.SQL.Clear ;
    DMRelatorios.Fat_VendasVend.SQL.text := ' Select * from VER_FAT_VENDAS_VENDEDOR(:CNPJ,:DTINIC,:DTFINAL,:VEND) Where (( NUM_NF = 0 ) AND ( NUM_CUPOM = 0 ) AND ( CANCELADA = :CANCELADA ))  ';
    DMRelatorios.Fat_VendasVend.ParamByName('CNPJ').asString:= DMApp.Cnpj;
    DMRelatorios.Fat_VendasVend.ParamByName('CANCELADA').asString:= 'S' ;


    if (Ini.Text = '  / /    ') Or (Fim.Text = '  / /    ') Then
      MessageDlg('Informe o Período', MtError, [MbOk],0)
    else
    begin
      DMRelatorios.Fat_VendasVend.ParamByName('DTINIC').asDate  := Ini.Date;
      DMRelatorios.Fat_VendasVend.ParamByName('DTFINAL').asDate := Fim.Date;
    end;

       DMRelatorios.Fat_VendasVend.ParamByName('VEND').asString:= '0';
  end;

  DMRelatorios.Fat_VendasVend.SQL.Add ( ' Order by CODIGO ' );

  // *** fim da Passagem de Parametros ***

  //
  DMRelatorios.Fat_VendasVend.Open ;

  DMRelatorios.Fat_VendasVend.FetchAll ;

  //
  If DMRelatorios.Fat_VendasVend.RecordCount = 0 Then
     Begin
       lblStatus.Visible := False ;
       ShowMessage('Não há registro a imprimir para o período, verifique !');
       //
       DMRelatorios.Fat_VendasVend.Close;
       //
       Ini.SetFocus;
       Exit;
     End
  Else
     Begin
       lblStatus.Visible := False ;
       DMRelatorios.Fat_VendasVend.FetchAll ;
       Anda.Max := DMRelatorios.Fat_VendasVend.RecordCount;
       Anda.Position := 0;
       Anda.Visible  := TRUE ;
     End;
  //
  print.TitulodoRelatorio:='Relatorio de Vendas Canceladas no Periodo';
  print.Abrir;
  //
  Total_Vendedor:= 0;
  Total_Geral:= 0;
  //
  DMRelatorios.Fat_VendasVend.First;
  While Not DMRelatorios.Fat_VendasVend.Eof Do
        Begin
          //
          Print.ImpF(Linha,01,Format('%6s %-8s %-50s %-9s %11s %14s %14s %15s',
                  [DMRelatorios.Fat_VendasVendCODIGO.Text,
                   DMRelatorios.Fat_VendasVendDATA_CAIXA.Text,
                   DMRelatorios.Fat_VendasVendPESSOA_RAZAO.Text,
                   DMRelatorios.Fat_VendasVendNATUREZA.Text,
                   DMRelatorios.Fat_VendasVendNUM_NF.Text,
                   '0.00',
                   '0.00',
                   '0.00']),[Comp17]);
                   {
                   DMRelatorios.Fat_VendasVendTOTAL.Text,
                   DMRelatorios.Fat_VendasVendDESC_ACRES.Text,
                   DMRelatorios.Fat_VendasVendVLRLIQUIDO.Text]),[Comp17]);}

          If (TipoRel.ItemIndex = 1)
          Then Begin // Analitico
               Linha := Linha + 1;
               DMRelatorios.Fat_VendasItens.Close ;
               DMRelatorios.Fat_VendasItens.ParamByName('CNPJ').Value:= DMApp.Cnpj;
               DMRelatorios.Fat_VendasItens.ParamByName('CODIGO').Value:= DMRelatorios.Fat_VendasVendCODIGO.Value;
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
                                '0.00',
                                '0.00',
                                '0.00']), [Comp17]);
                       Linha := Linha + 1;
                       DMRelatorios.Fat_VendasItens.Next;
                       {
                       DMRelatorios.Fat_VendasItensPRC_UNITARIO.Text,
                                DMRelatorios.Fat_VendasItensDESCONTO.Text,
                                FormatFloat('#,##0.00',(DMRelatorios.Fat_VendasItensQUANTIDADE.AsFloat * DMRelatorios.Fat_VendasItensPRC_UNITARIO.AsFloat) - DMRelatorios.Fat_VendasItensDESCONTO.AsFloat)
                       }
                       If (Linha >= 63)
                       Then
                           Print.Novapagina;
               End;

               Print.ImpF(Linha, 01, Replicate('-', 136), [Comp17]);
               Linha:= Linha + 1;
          End;

          {Total_Geral:= Total_Geral + DMRelatorios.Fat_VendasVendVLRLIQUIDO.Value ;
          AVista       := AVista    + DMRelatorios.Fat_VendasVendAVISTA.Value     ;
          APrazo       := APrazo    + DMRelatorios.Fat_VendasVendAPRAZO.Value     ;
          Descontos    := Descontos + DMRelatorios.Fat_VendasVendDESC_ACRES.Value ;}
          Total_Geral:= 0;
          AVista       := 0;
          APrazo       := 0;
          Descontos    := 0;

          //
          Anda.Position := Anda.Position + 1;
          DMRelatorios.Fat_VendasVend.Next;
          //
          Linha := Linha + 1;
          //
          If (Linha >= 63) Then
             Print.Novapagina;
        End;
  //
  Linha := Linha + 1;

  If (Linha >= 63)
  Then
      Print.Novapagina;

  Print.ImpF(Linha, 01, Format('%106s Total Geral : %15s', ['', FormatFloat('#,##0.00', TOTAL_GERAL)]), [Comp17]);

  Linha := Linha + 1;

  If (Linha >= 63)
  Then
      Print.Novapagina;

  Print.ImpF(Linha,01,Format('%110s A Vista : %15s',['', FormatFloat('#,##0.00', AVISTA)]), [Comp17]);

  Linha := Linha + 1;

  If (Linha >= 63)
  Then
      Print.Novapagina;

  Print.ImpF(Linha,01,Format('%110s A Prazo : %15s',['', FormatFloat('#,##0.00', APRAZO)]), [Comp17]);

  Linha := Linha + 1;

  If (Linha >= 63)
  Then
      Print.Novapagina;

  Print.ImpF(Linha,01,Format('%110s Desctos : %15s',['', FormatFloat('#,##0.00', DESCONTOS)]), [Comp17]);

  //
  DMRelatorios.Fat_VendasVend.Close;
  //
  Anda.Visible:= False;
  print.Fechar;
end;

procedure TFRelVendasCanceladas.IniExit(Sender: TObject);
begin
     //TROCA A COR PARA A COR SELECIONADA
     TIRACorFundo ( Sender );

end;

procedure TFRelVendasCanceladas.IniEnter(Sender: TObject);
begin
     CorFundo ( Sender );
end;

end.
