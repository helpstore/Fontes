 unit Rel_Vendas_Servicos_FRel;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, Db, dxExEdtr, dxEdLib, dxCntner, dxEditor, dxDBEdtr,
  dxDBELib, StdCtrls,  RDprint,   ComCtrls,  
  Grids, DBGrids, cxGraphics, cxControls, cxLookAndFeels,
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
  TFRelVendasServicos = class(TForm)
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
    Panel2: TPanel;
    LblStatus: TcxLabel;
    RzBitBtn1: TcxButton;
    RzBitBtn2: TcxButton;
    ANDA: TProgressBar;
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
    procedure Buscar_Pagamento_Venda(Codigo: Integer);

    { Private declarations }

  public
    { Public declarations }
  end;

var
  FRelVendasServicos: TFRelVendasServicos;
  Linha, Pagina: Integer;
  Banco: String;

implementation

uses Usuarios_DM, Application_DM, Funcoes, Relatorios_DM, Procedures5_DM ;


{$R *.DFM}


procedure TFRelVendasServicos.Buscar_Pagamento_Venda(Codigo: Integer);
begin
     Try
        With DmRelatorios do
        begin
           Ver_Pagamentos_Vendas.close ;

           Ver_Pagamentos_Vendas.ParamByName('CNPJ' ).AsString  := DmApp.Cnpj ;
           Ver_Pagamentos_Vendas.ParamByName('VENDA').AsInteger := Codigo     ;

           Ver_Pagamentos_Vendas.Open  ;
        end;
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

procedure TFRelVendasServicos.FormCreate(Sender: TObject);
begin
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, Self.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TFRelVendasServicos.ActFecharExecute(Sender: TObject);
begin
  Close;
end;

procedure TFRelVendasServicos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  //
  Action := caFree;
  FRelVendasServicos := Nil;
end;

procedure TFRelVendasServicos.cmbPessoaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFRelVendasServicos.PrintBeforeNewPage(Sender: TObject; Pagina: Integer);
begin
  // Rodapé...
  Print.ImpF(63, 01, Replicate('-', 80), [Normal]);
  Print.ImpF(64, 01, dmapp.QryParceiroPARC_TEXTO_RELATORIO.AsString, [comp17,italico]);
  Print.ImpF(64, 74, 'Pag. : ' + FormatFloat('0000', Pagina), [Comp17]);
end;

procedure TFRelVendasServicos.PrintNewPage(Sender: TObject; Pagina: Integer);
begin
  // Cabeçalho...
  Print.ImpF(01, 01, Replicate('-', 80), [Normal]);
  Print.ImpF(02, 01, DMApp.Nome, [Normal, Negrito]);
  Print.ImpF(02, 55, 'Data : '+ DateTimeToStr(now()), [Normal]);
  Print.ImpF(03, 01, Print.TitulodoRelatorio, [Normal]);
  Print.ImpF(04, 01, Replicate('-', 80), [Normal]);
                    //....5...10...15...20...25...30...35...40...45...50...55...60...65...70...75...80...85...90...95...00...05...10...15...20...25...30...35.
  Print.ImpF(05, 01, 'Docto  Cliente                           Data NF.    Base Calc.        IRRF        INSS         ISS         PIS  Dt Pgto   Banco        ', [Comp17, Negrito]);
  Print.ImpF(06, 01, '------ --------------------------------- ---------- ----------- ----------- ----------- ----------- ----------- ---------- -------------', [Comp17]);
  //
  linha  := 07;
end;

procedure TFRelVendasServicos.FormShow(Sender: TObject);
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

procedure TFRelVendasServicos.ActPreviewExecute(Sender: TObject);
Var
    Cod_Vendedor: Integer;

    STR: String;
    UltData: TDateTime ;
    UltNota: Integer   ;

    CodigoVnd, DataCaixa, Nome, Natureza, Data_Pagamento: String;

    IRRF, ISS, INSS, PIS, TOTAL, DESCONTO, GERAL: REAL ;

    Dt: TDateTime ;
begin
  //
  Cod_Vendedor := 0;
  //
  lblStatus.caption := 'Selecionando Dados' ;
  lblStatus.Visible := True ;
  lblStatus.Refresh ;

  // *** Passagem de Parametros ***

  DMRelatorios.Fat_VendasVend.Close ;
  DMRelatorios.Fat_VendasVend.SQL.Clear ;

  DMRelatorios.Fat_VendasVend.SQL.Add ( ' Select * from VER_FAT_VENDAS_VENDEDOR             ' );
  DMRelatorios.Fat_VendasVend.SQL.Add ( ' (  :CNPJ,  :DTINIC,  :DTFINAL,  :VEND )           ' );
  DMRelatorios.Fat_VendasVend.SQL.Add ( ' Where (( NUM_NF > 0 ) AND ( NUM_CUPOM = 0 ))      ' );
  DMRelatorios.Fat_VendasVend.SQL.Add ( ' AND CANCELADA <> :OP AND SERIE LIKE '''+'S%'+'''  ' );
  DMRelatorios.Fat_VendasVend.SQL.Add ( ' ORDER BY DATA_CAIXA, NUM_NF                       ' );

  DMRelatorios.Fat_VendasVend.ParamByName('CNPJ').asString:= DMApp.Cnpj  ;
  DMRelatorios.Fat_VendasVend.ParamByName('OP').asString   := 'S'        ;

  If (Ini.Text = '  / /    ') Or (Fim.Text = '  / /    ')
  Then begin
       MessageDlg('Informe o Período', MtError, [MbOk],0);
  end
  Else Begin
       DMRelatorios.Fat_VendasVend.ParamByName('DTINIC').asDate  := Ini.Date;
       DMRelatorios.Fat_VendasVend.ParamByName('DTFINAL').asDate := Fim.Date;
  End;

  DMRelatorios.Fat_VendasVend.ParamByName('VEND').asString:= '0';

  // *** fim da Passagem de Parametros ***

  //
  DMRelatorios.Fat_VendasVend.Open;
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
  Print.TitulodoRelatorio := 'Relação de Faturamento de Serviços';
  Print.Abrir;

  Total := 0 ;
  IRRF  := 0 ;
  ISS   := 0 ;
  INSS  := 0 ;
  PIS   := 0 ;
  DESCONTO := 0;
  GERAL    := 0;
  BANCO    := '';

  //
  DMRelatorios.Fat_VendasVend.First;
  While Not DMRelatorios.Fat_VendasVend.Eof Do
  Begin
       IRRF        := IRRF  + DMRelatorios.Fat_VendasVendIRRF.Value ;
       ISS         := ISS   + DMRelatorios.Fat_VendasVendISS.Value ;
       INSS        := INSS  + DMRelatorios.Fat_VendasVendINSS.Value ;
       PIS         := PIS   + DMRelatorios.Fat_VendasVendPIS_COFINS_CSLL.Value ;
       TOTAL       := TOTAL + DMRelatorios.Fat_VendasVendTOTAL.Value ;
       DESCONTO    := DESCONTO + DMRelatorios.Fat_VendasVendDESC_ACRES.Value ;
       GERAL       := GERAL    + DMRelatorios.Fat_VendasVendTOTAL.Value +  DMRelatorios.Fat_VendasVendDESC_ACRES.Value ;

       Buscar_Pagamento_Venda ( DMRelatorios.Fat_VendasVendCodigo.Value );

       if DMRelatorios.Ver_Pagamentos_Vendas.RecordCount > 0
       then begin
            If Not DMRelatorios.Ver_Pagamentos_VendasDATA_BAIXA.IsNull
            then begin
                 Data_Pagamento := DateToStr( DMRelatorios.Ver_Pagamentos_VendasDATA_BAIXA.value );
            end
            else
                Data_Pagamento := '  /  /    ' ;

            DMRelatorios.Ver_Pagamentos_Vendas.next ;
       end;

       //
       Print.ImpF(Linha, 01, Format('%6s %-33s %10s %11s %11s %11s %11s %11s %8s %15s',
         [
         Copy(DMRelatorios.Fat_VendasVendNUM_NF.Text, 1, 14),
         Copy(DMRelatorios.Fat_VendasVendPESSOA_RAZAO.Text, 1, 33),
         DMRelatorios.Fat_VendasVendDATA_CAIXA.Text,
         formatfloat('##0.00', DMRelatorios.Fat_VendasVendTOTAL.Value + DMRelatorios.Fat_VendasVendDESC_ACRES.Value),
         formatfloat('##0.00', DMRelatorios.Fat_VendasVendIRRF.Value),
         formatfloat('##0.00', DMRelatorios.Fat_VendasVendINSS.Value),
         formatfloat('##0.00', DMRelatorios.Fat_VendasVendISS.Value),
         formatfloat('##0.00', DMRelatorios.Fat_VendasVendPIS_COFINS_CSLL.Value),
         Data_Pagamento,
         banco
         ]), [Comp17]);

       if not DMRelatorios.Ver_Pagamentos_Vendas.eof 
       Then begin
          //Imprime todos os pagamentos
          while not DMRelatorios.Ver_Pagamentos_Vendas.eof do
          begin
             If Not DMRelatorios.Ver_Pagamentos_VendasDATA_BAIXA.IsNull
             then begin
                  Data_Pagamento := DateToStr( DMRelatorios.Ver_Pagamentos_VendasDATA_BAIXA.value );
             end
             else
                 Data_Pagamento := '  /  /    ' ;

             Banco := DMRelatorios.Ver_Pagamentos_VendasBanco.Value ;

             Print.ImpF(Linha, 01, Format('%6s %-33s %10s %11s %11s %11s %11s %11s %10s %13s',
             [
             '',
             '',
             '',
             '',
             '',
             '',
             '',
             '',
             Data_Pagamento,
             copy(banco,1,13)
             ]), [Comp17]);

             DMRelatorios.Ver_Pagamentos_Vendas.next ;
          end;
       end;

       //
       Linha := Linha + 1;

       //
       Anda.Position := Anda.Position + 1;

       DMRelatorios.Fat_VendasVend.Next;

       //
       If Linha >= 64
       Then
           Print.Novapagina;
  End;

  //
  DMRelatorios.Fat_VendasVend.Close;
  //
  Anda.Visible:= False;


  Print.ImpF(LINHA, 01, Replicate('-', 80), [Normal]);
  INC(LINHA );

  //Imprime o Rodape
  Print.ImpF(Linha , 01, 'BASE CALCULO:' , [Comp17]);
  Print.ImpVal(Linha , 20, '###,###,##0.00', TOTAL , [Comp17]);

  //IRFF
  Print.ImpF(Linha , 35, 'IRRF........:' , [Comp17]);
  Print.ImpVal(Linha , 55, '###,###,##0.00', IRRF , [Comp17]);
  Inc( Linha );
  //
  If Linha >= 63 Then Print.Novapagina;

  //INSS
  Print.ImpF(Linha , 01, 'INSS........:' , [Comp17]);
  Print.ImpVal(Linha , 20, '###,###,##0.00', INSS, [Comp17]);

  //ISS
  Print.ImpF(Linha , 35, 'ISS.........:' , [Comp17]);
  Print.ImpVal(Linha , 55, '###,###,##0.00', ISS, [Comp17]);
  Inc( Linha );
  //
  If Linha >= 63 Then Print.Novapagina;

  //PIS/COFINS/CSLL
  Print.ImpF(Linha , 01, 'PIS/COFINS/CSLL:' , [Comp17]);
  Print.ImpVal(Linha , 20, '###,###,##0.00', PIS ,[Comp17]);

  //DESCONTO
  Print.ImpF(Linha , 35, 'DESCONTO....:' , [Comp17]);
  Print.ImpVal(Linha , 55, '###,###,##0.00', DESCONTO ,[Comp17]);
  Inc( Linha );

  //
  If Linha >= 63 Then Print.Novapagina;

  //TOTAL GERAL
  Print.ImpF(Linha , 01, 'TOTAL GERAL.:' , [Comp17]);
  Print.ImpVal(Linha , 20, '###,###,##0.00', GERAL, [Comp17]);

  Inc( Linha );
  //
  If Linha >= 63 Then Print.Novapagina;

  Print.ImpF(LINHA, 01, Replicate('-', 80), [Normal]);

  Print.Fechar;
end;

procedure TFRelVendasServicos.IniExit(Sender: TObject);
begin
     //TROCA A COR PARA A COR SELECIONADA
     TIRACorFundo ( Sender );

end;

procedure TFRelVendasServicos.IniEnter(Sender: TObject);
begin
     CorFundo ( Sender );
end;

end.
