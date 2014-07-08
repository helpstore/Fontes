 unit Consulta_Pessoas_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, DBCtrls, dxCntner, dxEditor, dxEdLib, dxDBELib, StdCtrls, DB,
     ActnList, Buttons, dxExEdtr, dxDBEdtr, 
  dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid, ComCtrls, Grids, DBGrids,
     RDprint, ppDB,
  ppDBPipe, ppComm, ppRelatv, ppProd, ppClass, ppReport, ppPrnabl, ppCtrls,
  ppBands, ppCache, ppStrtch, ppRegion, ppEndUsr,   Menus,
  dxmdaset, cxPropertiesStore, ppParameter, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, cxControls, cxContainer, cxEdit, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinXmas2008Blue, dxSkinscxPCPainter, cxPC, cxLabel,
  cxButtons;

type
  TFrmMalaDireta = class(TForm)
    pnlForm: TPanel;
    pnlBottom: TPanel;
    Navigator: TDBNavigator;
    DSource: TDataSource;
    Bevel1: TBevel;
    pnlTop: TPanel;
    Bevel2: TBevel;
    BtnFechar: TcxButton;
    Actions: TActionList;
    ActLocalizar: TAction;
    BtnLocalizar: TcxButton;
    ActFechar: TAction;
    LblTitulo: TcxLabel;
    Image1: TImage;
    LblRegistros: TcxLabel;
    DsAtividades: TDataSource;
    DsCidades: TDataSource;
    DsBairro: TDataSource;
    pc: TcxPageControl;
    dxTabSheet1: TcxTabSheet;
    Shape1: TShape;
    GRID: TdxDBGrid;
    GRIDCODIGO: TdxDBGridMaskColumn;
    GRIDNOME_RAZAO: TdxDBGridMaskColumn;
    GRIDATIVIDADE: TdxDBGridMaskColumn;
    GRIDENDERECO: TdxDBGridMaskColumn;
    GRIDNUMERO: TdxDBGridMaskColumn;
    GRIDCOMPLEMENTO: TdxDBGridMaskColumn;
    GRIDBAIRRO: TdxDBGridMaskColumn;
    GRIDCIDADE: TdxDBGridMaskColumn;
    GRIDUF: TdxDBGridMaskColumn;
    GRIDCEP: TdxDBGridMaskColumn;
    GRIDFONE: TdxDBGridMaskColumn;
    GRIDFAX: TdxDBGridMaskColumn;
    GRIDCELULAR: TdxDBGridMaskColumn;
    GRIDPESSOA: TdxDBGridMaskColumn;
    GRIDCPF_CGC: TdxDBGridMaskColumn;
    GRIDRG_IE: TdxDBGridMaskColumn;
    GRIDCONTATO: TdxDBGridMaskColumn;
    GRIDDT_NASCIMENTO: TdxDBGridDateColumn;
    GRIDDT_CADASTRO: TdxDBGridDateColumn;
    GRIDEMAIL: TdxDBGridMaskColumn;
    GRIDOBS: TdxDBGridBlobColumn;
    GRIDCXP: TdxDBGridMaskColumn;
    Label7: TcxLabel;
    Label4: TcxLabel;
    Label5: TcxLabel;
    EdDiaIni: TdxMRUEdit;
    Label1: TcxLabel;
    EdMesIni: TdxMRUEdit;
    Label3: TcxLabel;
    EdDiaFim: TdxMRUEdit;
    Label2: TcxLabel;
    EdMesFim: TdxMRUEdit;
    EdCidade: TdxLookupEdit;
    Label6: TcxLabel;
    Label8: TcxLabel;
    EdOrdem: TdxMRUEdit;
    BtnSeleciona: TcxButton;
    EdBairro: TdxLookupEdit;
    EdAtividade: TdxLookupEdit;
    dxTabSheet2: TcxTabSheet;
    CkTipo: TdxCheckEdit;
    GRIDNOTA: TdxDBGridColumn;
    ActImprimir: TAction;
    Print: TRDprint;
    CkFone: TdxCheckEdit;
    SpeedButton1: TcxButton;
    rptEtiqueta: TppReport;
    dbEtiqueta: TppDBPipeline;
    RzBitBtn2: TcxButton;
    ppDetailBand1: TppDetailBand;
    ppColumnHeaderBand1: TppColumnHeaderBand;
    ppColumnFooterBand1: TppColumnFooterBand;
    ppRegion1: TppRegion;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText9: TppDBText;
    Label9: TcxLabel;
    Altura: TdxCurrencyEdit;
    Label10: TcxLabel;
    Label11: TcxLabel;
    Largura: TdxCurrencyEdit;
    RzBitBtn3: TcxButton;
    Envelope: TRDprint;
    Label12: TcxLabel;
    coluna: TdxCurrencyEdit;
    btncfg3: TcxButton;
    ppDesigner: TppDesigner;
    ppTemplate: TppDBPipeline;
    DsTemplate: TDataSource;
    mtbMalaDireta: TdxMemData;
    mtbMalaDiretaPESSOA: TStringField;
    mtbMalaDiretaCODIGO: TIntegerField;
    mtbMalaDiretaATIVIDADE: TStringField;
    mtbMalaDiretaNOME_RAZAO: TStringField;
    mtbMalaDiretaFANTASIA: TStringField;
    mtbMalaDiretaENDERECO: TStringField;
    mtbMalaDiretaNUMERO: TStringField;
    mtbMalaDiretaCOMPLEMENTO: TStringField;
    mtbMalaDiretaBAIRRO: TStringField;
    mtbMalaDiretaCIDADE: TStringField;
    mtbMalaDiretaCEP: TStringField;
    mtbMalaDiretaCPF_CGC: TStringField;
    mtbMalaDiretaCPF: TStringField;
    mtbMalaDiretaCNPJ: TStringField;
    mtbMalaDiretaRG_IE: TStringField;
    mtbMalaDiretaFONE: TStringField;
    mtbMalaDiretaFAX: TStringField;
    mtbMalaDiretaCELULAR: TStringField;
    mtbMalaDiretaEMAIL: TStringField;
    mtbMalaDiretaNOME_VENDEDOR: TStringField;
    mtbMalaDiretaNOME_FORMA_PAGTO: TStringField;
    mtbMalaDiretaPRAZO: TIntegerField;
    mtbMalaDiretaCOMPRADOR: TStringField;
    mtbMalaDiretaDT_CADASTRO: TDateTimeField;
    mtbMalaDiretaBLOQUEADO: TStringField;
    mtbMalaDiretaNOME_CLASSIF: TStringField;
    mtbMalaDiretaCOD_CLASSIF: TIntegerField;
    mtbMalaDiretaCOD_VENDEDOR: TIntegerField;
    mtbMalaDiretaREGIAO: TIntegerField;
    mtbMalaDiretaASSINA_NOTA: TStringField;
    mtbMalaDiretaUF: TStringField;
    mtbMalaDiretaDT_NASCIMENTO: TDateTimeField;
    mtbMalaDiretaFREQUENCIA: TStringField;
    mtbMalaDiretaSel: TBooleanField;
    ActSelecionar: TAction;
    GRIDSel: TdxDBGridCheckColumn;
    popMenu: TPopupMenu;
    SelecionarTodos1: TMenuItem;
    popMenudes: TMenuItem;
    ActSelTodos: TAction;
    ActDeselTodos: TAction;
    mtbEtiqueta: TdxMemData;
    mtbEtiquetaPESSOA: TStringField;
    mtbEtiquetaCODIGO: TIntegerField;
    mtbEtiquetaATIVIDADE: TStringField;
    mtbEtiquetaNOME_RAZAO: TStringField;
    mtbEtiquetaFANTASIA: TStringField;
    mtbEtiquetaENDERECO: TStringField;
    mtbEtiquetaNUMERO: TStringField;
    mtbEtiquetaCOMPLEMENTO: TStringField;
    mtbEtiquetaBAIRRO: TStringField;
    mtbEtiquetaCIDADE: TStringField;
    mtbEtiquetaCEP: TStringField;
    mtbEtiquetaCPF_CGC: TStringField;
    mtbEtiquetaCPF: TStringField;
    mtbEtiquetaCNPJ: TStringField;
    mtbEtiquetaRG_IE: TStringField;
    mtbEtiquetaFONE: TStringField;
    mtbEtiquetaFAX: TStringField;
    mtbEtiquetaCELULAR: TStringField;
    mtbEtiquetaEMAIL: TStringField;
    mtbEtiquetaNOME_VENDEDOR: TStringField;
    mtbEtiquetaNOME_FORMA_PAGTO: TStringField;
    mtbEtiquetaPRAZO: TIntegerField;
    mtbEtiquetaCOMPRADOR: TStringField;
    mtbEtiquetaDT_CADASTRO: TDateTimeField;
    mtbEtiquetaBLOQUEADO: TStringField;
    mtbEtiquetaNOME_CLASSIF: TStringField;
    mtbEtiquetaCOD_CLASSIF: TIntegerField;
    mtbEtiquetaCOD_VENDEDOR: TIntegerField;
    mtbEtiquetaREGIAO: TIntegerField;
    mtbEtiquetaASSINA_NOTA: TStringField;
    mtbEtiquetaUF: TStringField;
    mtbEtiquetaDT_NASCIMENTO: TDateTimeField;
    mtbEtiquetaFREQUENCIA: TStringField;
    mtbEtiquetaSel: TBooleanField;
    dsEtiqueta: TDataSource;
    Label13: TcxLabel;
    stgFrmMalaDireta: TcxPropertiesStore;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormResize(Sender: TObject);
    procedure BtnFecharClick(Sender: TObject);
    procedure ActLocalizarExecute(Sender: TObject);
    procedure EdDiaIniKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnSelecionaClick(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure DSourceDataChange(Sender: TObject; Field: TField);
    procedure FormShow(Sender: TObject);
    procedure pcChanging(Sender: TObject; NewPage: TcxTabSheet;
      var AllowChange: Boolean);
    procedure EdDiaIniEnter(Sender: TObject);
    procedure EdDiaIniExit(Sender: TObject);
    procedure ActImprimirExecute(Sender: TObject);
    procedure PrintBeforeNewPage(Sender: TObject; Pagina: Integer);
    procedure PrintNewPage(Sender: TObject; Pagina: Integer);
    procedure RzBitBtn2Click(Sender: TObject);
    procedure RzBitBtn3Click(Sender: TObject);
    procedure btncfg3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ActSelecionarExecute(Sender: TObject);
    procedure GRIDClick(Sender: TObject);
    procedure ActDeselTodosExecute(Sender: TObject);
    procedure ActSelTodosExecute(Sender: TObject);
  private
    { Private declarations }
    procedure InsereEtiqueta;
  public
    { Public declarations }
  end;

var
  FrmMalaDireta: TFrmMalaDireta;
  sqlOriginal : string;
implementation

uses
     Main, Application_DM,Cadastros_DM,
     Relatorios_DM, Funcoes, Estoque_Dm, Usuarios_DM;

{$R *.DFM}

procedure TFrmMalaDireta.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //
  DmRelatorios.ClientesAlf.Close ;
  DMRelatorios.ClientesAlf.sql.text := sqlOriginal; 

  DMCadastros.Atividades.Close ;
  DMCadastros.Bairros.Close ;
  DMCadastros.Cidades.Close ;
  //

  Action := caFree;
  FrmMalaDireta := NIL ;
end;

procedure TFrmMalaDireta.FormResize(Sender: TObject);
begin
  Bevel1.Width := pnlBottom.Width - 30;
  Bevel2.Width := pnlTop.Width - 30;
  BtnFechar.Left := Bevel1.Left + (Bevel1.Width - BtnFechar.Width);
end;

procedure TFrmMalaDireta.BtnFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmMalaDireta.ActLocalizarExecute(Sender: TObject);
begin
  DMApp.Localizar(DSource);
end;

procedure TFrmMalaDireta.EdDiaIniKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  If (key=VK_RETURN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  If (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmMalaDireta.BtnSelecionaClick(Sender: TObject);
VAR
   DINI, DFIM, MINI, MFIM :Integer ;
   filtro : string;
begin
     FrmMalaDireta.Enabled := false ;

     IF EdDiaIni.Text = ''
     THEN BEGIN
          DINI := 1 ;
     END
     ELSE BEGIN
          DINI := strtoint(EdDiaIni.text) ;
     END;

     IF EdDiaFim.Text = ''
     THEN BEGIN
          DFIM := 31 ;
     END
     ELSE BEGIN
          DFIM := strtoint(EdDiaFim.text) ;
     END;

     IF EdMesIni.Text = ''
     THEN BEGIN
          MINI := 1 ;
     END
     ELSE BEGIN
          if EdMesIni.text = 'Janeiro'
          THEN
              MINI := 01 ;
          if EdMesIni.text = 'Fevereiro'
          THEN
              MINI := 02 ;
          if EdMesIni.text = 'Março'
          THEN
              MINI := 03 ;
          if EdMesIni.text = 'Abril'
          THEN
              MINI := 04 ;
          if EdMesIni.text = 'Maio'
          THEN
              MINI := 05 ;
          if EdMesIni.text = 'Junho'
          THEN
              MINI := 06 ;
          if EdMesIni.text = 'Julho'
          THEN
              MINI := 07 ;
          if EdMesIni.text = 'Agosto'
          THEN
              MINI := 08 ;
          if EdMesIni.text = 'Setembro'
          THEN
              MINI := 09;
          if EdMesIni.text = 'Outubro'
          THEN
              MINI := 10 ;
          if EdMesIni.text = 'Novembro'
          THEN
              MINI := 11 ;
          if EdMesIni.text = 'Dezembro'
          THEN
              MINI := 12 ;
     END;

     IF EdMesFim.Text = ''
     THEN BEGIN
          MFIM := 12 ;
     END
     ELSE BEGIN
          if EdMesFIM.text = 'Janeiro'
          THEN
              MFIM := 01 ;
          if EdMesFIM.text = 'Fevereiro'
          THEN
              MFIM := 02 ;
          if EdMesFIM.text = 'Março'
          THEN
              MFIM := 03 ;
          if EdMesFIM.text = 'Abril'
          THEN
              MFIM := 04 ;
          if EdMesFIM.text = 'Maio'
          THEN
              MFIM := 05 ;
          if EdMesFIM.text = 'Junho'
          THEN
              MFIM := 06 ;
          if EdMesFIM.text = 'Julho'
          THEN
              MFIM := 07 ;
          if EdMesFIM.text = 'Agosto'
          THEN
              MFIM := 08 ;
          if EdMesFIM.text = 'Setembro'
          THEN
              MFIM := 09;
          if EdMesFIM.text = 'Outubro'
          THEN
              MFIM := 10 ;
          if EdMesFIM.text = 'Novembro'
          THEN
              MFIM := 11 ;
          if EdMesFIM.text = 'Dezembro'
          THEN
              MFIM := 12 ;
     END;

  Try
     With DmRelatorios do
     begin
          filtro := '';
          ClientesAlf.Close ;
          ClientesAlf.Sql.text := sqlOriginal+
                                  ' WHERE EXTRACT(DAY FROM DT_NASCIMENTO ) >= '+intToStr(DINI)+' AND EXTRACT (DAY FROM DT_NASCIMENTO) <= '+IntToStr(DFIM)+'  AND '+
                                  ' EXTRACT (MONTH FROM DT_NASCIMENTO) >= '+IntToStr(MINI)+' AND   EXTRACT ( MONTH FROM DT_NASCIMENTO ) <= '+IntToStr(MFIM);

          if EdAtividade.Text <> '' then
            filtro := ' AND COD_ATIVIDADE = '+inttoStr(EdAtividade.LookupKeyValue);



          if EdCidade.Text <> '' then
            filtro := filtro + ' AND COD_CIDADE = '+IntToStr(EdCidade.LookupKeyValue);

          if EdBairro.Text <> '' then
            filtro := filtro + ' AND COD_BAIRRO ='+intToStr(EdBairro.LookupKeyValue);

          if CkTipo.Checked then
            filtro := filtro + '  AND ASSINA_NOTA = ''S''';

          If Edordem.text = '' then
            filtro := filtro + ' ORDER BY NOME_RAZAO '
          else
          begin
            if Edordem.text = 'Nome, codigo' then
               filtro := filtro + ' ORDER BY NOME_RAZAO, CODIGO '
            else if Edordem.text = 'Nome, Atividade' then
               filtro := filtro + ' ORDER BY NOME_RAZAO, ATIVIDADE '
            else if Edordem.text = 'Nome, Bairro' then
               filtro := filtro + ' ORDER BY NOME_RAZAO, BAIRRO '
            else if Edordem.text = 'Nome, Cidade' then
               filtro := filtro + ' ORDER BY NOME_RAZAO, CIDADE '
            else if Edordem.text = 'Bairro, Nome' then
               filtro := filtro + ' ORDER BY BAIRRO, NOME_RAZAO '
            else if Edordem.text = 'Cidade, Nome' then
               filtro := filtro + ' ORDER BY CIDADE, NOME_RAZAO '
            else if Edordem.text = 'Atividade, Nome' then
               filtro := filtro + ' ORDER BY ATIVIDADE, NOME_RAZAO '
            else if Edordem.text = 'Cep, Nome' then
               filtro := filtro + ' ORDER BY CEP, NOME_RAZAO '
            else if Edordem.text = 'Cep, Cidade' then
               filtro := filtro + ' ORDER BY CEP, CIDADE ';
          end;


          mtbMalaDireta.open;
          if (filtro <> '') then
            ClientesAlf.sql.add(filtro);

          mtbMalaDireta.DisableControls;
          ClientesAlf.Open;

          if not mtbMalaDireta.IsEmpty then
            mtbMalaDireta.data.Values.Clear;

          mtbMalaDireta.open;
          while not ClientesAlf.eof do
          begin
            mtbMalaDireta.Append;
            mtbMalaDiretaPESSOA.value := ClientesAlfPESSOA.value;
            mtbMalaDiretaCODIGO.value := ClientesAlfCODIGO.value;
            mtbMalaDiretaATIVIDADE.value := ClientesAlfATIVIDADE.value;
            mtbMalaDiretaNOME_RAZAO.value := ClientesAlfNOME_RAZAO.value;
            mtbMalaDiretaFANTASIA.value := ClientesAlfFANTASIA.value;
            mtbMalaDiretaENDERECO.value := ClientesAlfENDERECO.value;
            mtbMalaDiretaNUMERO.value := ClientesAlfNUMERO.value;
            mtbMalaDiretaCOMPLEMENTO.value := ClientesAlfCOMPLEMENTO.value;
            mtbMalaDiretaBAIRRO.value := ClientesAlfBAIRRO.value;
            mtbMalaDiretaCIDADE.value := ClientesAlfCIDADE.value;
            mtbMalaDiretaCEP.value := ClientesAlfCEP.value;
            mtbMalaDiretaCPF_CGC.value := ClientesAlfCPF_CGC.value;
            mtbMalaDiretaCPF.value := ClientesAlfCPF.value;
            mtbMalaDiretaRG_IE.value := ClientesAlfRG_IE.value;
            mtbMalaDiretaFONE.value := ClientesAlfFONE.value;
            mtbMalaDiretaFAX.value := ClientesAlfFAX.value;
            mtbMalaDiretaCELULAR.value := ClientesAlfCELULAR.value;
            mtbMalaDiretaEMAIL.value := ClientesAlfEMAIL.value;
            mtbMalaDiretaNOME_VENDEDOR.value := ClientesAlfNOME_VENDEDOR.value;
            mtbMalaDiretaNOME_FORMA_PAGTO.value := ClientesAlfNOME_FORMA_PAGTO.value;
            mtbMalaDiretaPRAZO.value := ClientesAlfPRAZO.value;
            mtbMalaDiretaCOMPRADOR.value := ClientesAlfCOMPRADOR.value;
            mtbMalaDiretaDT_CADASTRO.value := ClientesAlfDT_CADASTRO.value;
            mtbMalaDiretaBLOQUEADO.value := ClientesAlfBLOQUEADO.value;
            mtbMalaDiretaNOME_CLASSIF.value := ClientesAlfNOME_CLASSIF.value;
            mtbMalaDiretaCOD_CLASSIF.value := ClientesAlfCOD_CLASSIF.value;
            mtbMalaDiretaCOD_VENDEDOR.value := ClientesAlfCOD_VENDEDOR.value;
            mtbMalaDiretaREGIAO.value := ClientesAlfREGIAO.value;
            mtbMalaDiretaASSINA_NOTA.value := ClientesAlfASSINA_NOTA.value;
            mtbMalaDiretaUF.value := ClientesAlfUF.value;
            mtbMalaDiretaDT_NASCIMENTO.value := ClientesAlfDT_NASCIMENTO.value;
            mtbMalaDiretaFREQUENCIA.value := ClientesAlfFREQUENCIA.value;
            mtbMalaDireta.post;
            ClientesAlf.next;
          end;
          mtbMalaDireta.EnableControls;
     end;
     FrmMalaDireta.Enabled := true ;

     GRID.SETFOCUS ;

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

procedure TFrmMalaDireta.ActFecharExecute(Sender: TObject);
begin
     Close ;
end;

procedure TFrmMalaDireta.DSourceDataChange(Sender: TObject; Field: TField);
begin
     LblRegistros.Caption := IntToStr(dmRelatorios.ClientesAlf.Recno) + '/' + IntToStr(dmRelatorios.ClientesAlf.RecordCount);
end;

procedure TFrmMalaDireta.FormShow(Sender: TObject);
begin
  Try
     With DMCadastros do
     begin
          Atividades.close;
          Cidades.close;
          Bairros.close;

          Atividades.Open;
          Cidades.Open ;
          Bairros.Open ;
          EdDiaIni.ItemIndex := 0;
          EdDiaFim.ItemIndex := 30;
          EdMesFim.ItemIndex := 11;
          EdMesIni.ItemIndex := 0
     end;
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

procedure TFrmMalaDireta.pcChanging(Sender: TObject; NewPage: TcxTabSheet; var AllowChange: Boolean);
begin
     If ( DmRelatorios.ClientesAlf.RecordCount <= 0 )  and ( pc.ActivePageIndex = 0 ) and ( FrmMalaDireta <> Nil )
     then begin
          MessageDlg ('Não Existem Arquivos Selecionados!', MtError, [MBOK],0 );
          AllowChange := False ;
     end;
end;

procedure TFrmMalaDireta.EdDiaIniEnter(Sender: TObject);
begin
     CORFUNDO ( SENDER );
end;

procedure TFrmMalaDireta.EdDiaIniExit(Sender: TObject);
begin
     TIRACORFUNDO ( SENDER );
end;

procedure TFrmMalaDireta.ActImprimirExecute(Sender: TObject);
var
   Cont: Integer ;
begin
  //
  Print.TitulodoRelatorio := 'Listagem Resumida de Clientes';
  //
  If mtbMalaDireta.RecordCount = 0 Then
  Begin
       ShowMessage('Não há registro a imprimir para o período, verifique !');
       //
       EdDiaIni.SetFocus;
       Exit;
  End;

  //
  print.Abrir;
  //
  mtbMalaDireta.First;

  mtbMalaDireta.DisableControls ;

  While Not mtbMalaDireta.Eof Do
  Begin
     if mtbMalaDiretaSel.value then
     begin
       IF CkFone.Checked
       THEN BEGIN
            //
            Print.ImpF(Linha    , 01, Format('%8s %-50s %-20s %-20s %-20s %-10s',
                                           [mtbMalaDiretaCODIGO.Text,
                                            mtbMalaDiretaNOME_RAZAO.Text,
                                            mtbMalaDiretaFONE.Text,
                                            mtbMalaDiretaFAX.Text,
                                            mtbMalaDiretaCELULAR.Text,
                                            mtbMalaDiretaDT_NASCIMENTO.TEXT
                                            ]), [Comp17]);

            Linha := Linha + 1;
            If Linha >= 63 Then
              Print.Novapagina;
       END
       ELSE
       BEGIN
            //
            Print.ImpF(Linha    , 01, Format('%8s %-50s %-20s %-20s %-20s %-10s',
                                           [mtbMalaDiretaCODIGO.Text,
                                            mtbMalaDiretaNOME_RAZAO.Text,
                                            mtbMalaDiretaFONE.Text,
                                            mtbMalaDiretaFAX.Text,
                                            mtbMalaDiretaCELULAR.Text,
                                            mtbMalaDiretaDT_NASCIMENTO.TEXT
                                            ]), [Comp17]);
            Print.ImpF(Linha + 1, 01, Format('%8s %-50s %-41s %-30s',
                                           ['',
                                            mtbMalaDiretaENDERECO.Text + ', ' + mtbMalaDiretaNUMERO.Text,
                                            mtbMalaDiretaBAIRRO.Text,
                                            mtbMalaDiretaCIDADE.Text]), [Comp17]);
            Linha := Linha + 3;
            If Linha >= 63 Then
              Print.Novapagina;
       End;
     end;
     mtbMalaDireta.Next;
  END;


  mtbMalaDireta.EnableControls ;

  //

  print.Fechar;
end;

procedure TFrmMalaDireta.PrintBeforeNewPage(Sender: TObject;
  Pagina: Integer);
begin
  // Rodapé...
  Print.ImpF(63, 01, Replicate('-', 80), [Normal]);
  Print.ImpF(64, 01, dmapp.QryParceiroPARC_TEXTO_RELATORIO.AsString, [comp17,italico]);
  Print.ImpF(64, 74, 'Pag. : ' + FormatFloat('0000', Pagina), [Comp17]);
end;

procedure TFrmMalaDireta.PrintNewPage(Sender: TObject; Pagina: Integer);
begin
  // Cabeçalho...
  Print.ImpF(01, 01, Replicate('-', 80), [Normal]);
  Print.ImpF(02, 01, DMApp.Nome, [Normal, Negrito]);
  Print.ImpF(02, 55, 'Data : '+ DateTimeToStr(now()), [Normal]);
  Print.ImpF(03, 01, Print.TitulodoRelatorio, [Normal]);
  Print.ImpF(04, 01, Replicate('-', 136), [Comp17]);
                    //....5...10...15...20...25...30...35...40...45...50...55...60...65...70...75...80...85...90...95...00...05...10...15...20...25...30...35.
  IF CkFone.Checked
  THEN BEGIN
       Print.ImpF(05, 01, '  Codigo Nome                                               Telefone              Fax                 Celular                           ', [Comp17]);

       Print.ImpF(07, 01, Replicate('-', 136), [Comp17]);
  END
  ELSE BEGIN
       Print.ImpF(05, 01, '  Codigo Nome                                               Telefone              Fax                 Celular                           ', [Comp17]);
       Print.ImpF(06, 01, '         Endereco                                           Bairro                                    Cidade/MS                         ', [Comp17]);
       Print.ImpF(07, 01, Replicate('-', 136), [Comp17]);
  END;
  linha  := 8;
end;

procedure TFrmMalaDireta.RzBitBtn2Click(Sender: TObject);
begin
  InsereEtiqueta;

  dmRelatorios.MalaDireta.close;
  dmRelatorios.MalaDireta.open;

  rptEtiqueta.Template.DatabaseSettings.Name := DmRelatorios.MalaDiretaCnpj.asString;
  rptEtiqueta.Template.LoadFromDatabase;
  rptEtiqueta.Print;
end;

procedure TFrmMalaDireta.RzBitBtn3Click(Sender: TObject);
var
   Cont, col: Integer ;
begin
  //

  if (( largura.value <= 0 ) or ( Altura.value <= 0 ) or ( coluna.value <= 0 ))
  then begin
       messagedlg('Informe as Configurações do Envelope!', mterror, [mbok],0);
       Exit ;
  end;

  Envelope.TamanhoQteLinhas := trunc(Largura.value);

  //
  If mtbMalaDireta.RecordCount = 0
  Then Begin
       ShowMessage('Não há registro a imprimir para o período, verifique !');
       //
       //
       EdDiaIni.SetFocus;
       Exit;
  End;

  //
  Envelope.Abrir;
  //
  mtbMalaDireta.First;

  mtbMalaDireta.DisableControls ;

  While Not mtbMalaDireta.Eof Do
  Begin
    if mtbMalaDiretaSel.value then
    begin
       lINHA := TRUNC(ALTURA.VALUE);

       col := TRUNC(coluna.VALUE);

       Print.ImpF(Linha    , COL, mtbMalaDiretaNOME_RAZAO.TexT, [Comp17]);
       Print.ImpF(Linha + 1, COL, mtbMalaDiretaENDERECO.Text + ', N ' + mtbMalaDiretaNUMERO.Text , [Comp17]);
       Print.ImpF(Linha + 2, COL, mtbMalaDiretaCIDADE.Text + '  BAIRRO = ' + mtbMalaDiretaBAIRRO.Text
       + ', CEP = ' + mtbMalaDiretaCEP.Text + ' UF = ' + mtbMalaDiretaUF.Text, [Comp17]);

       ENVELOPE.Novapagina ;
    end;
    mtbMalaDireta.Next;
  END;


  mtbMalaDireta.EnableControls ;
  print.Fechar;
end;

procedure TFrmMalaDireta.btncfg3Click(Sender: TObject);
begin
 dmRelatorios.MalaDireta.close;
 dmRelatorios.MalaDireta.open;

 rptEtiqueta.Template.DatabaseSettings.Name := DmRelatorios.MalaDiretaCnpj.asString;
 rptEtiqueta.Template.LoadFromDatabase;
 ppDesigner.Show;
 DmRelatorios.MalaDireta.edit;
end;

procedure TFrmMalaDireta.FormCreate(Sender: TObject);
begin
  sqlOriginal := DMRelatorios.ClientesAlf.sql.text;
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, LblTitulo.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TFrmMalaDireta.ActSelecionarExecute(Sender: TObject);
begin
  if not Grid.Focused then
     exit;

  mtbMalaDireta.edit;

  if (mtbMalaDiretaSel.value) then
    mtbMalaDiretaSel.value := false
  else
    mtbMalaDiretaSel.value := true;

  mtbMalaDireta.post;
end;

procedure TFrmMalaDireta.GRIDClick(Sender: TObject);
begin
  if Grid.FocusedField.FullName = 'Sel' then
    ActSelecionar.Execute;
end;

procedure TFrmMalaDireta.ActDeselTodosExecute(Sender: TObject);
begin
 if mtbMalaDireta.recordCount < 0 then
   exit;
 mtbMalaDireta.DisableControls;
 mtbMalaDireta.first;
 while not mtbMalaDireta.eof do
 begin
  mtbMalaDireta.edit;
  mtbMalaDiretaSel.value := false;
  mtbMalaDireta.post;
  mtbMalaDireta.next;
 end;
 mtbMalaDireta.EnableControls;

end;

procedure TFrmMalaDireta.ActSelTodosExecute(Sender: TObject);
begin
 if mtbMalaDireta.recordCount < 0 then
   exit;

 mtbMalaDireta.DisableControls;
 mtbMalaDireta.first;
 while not mtbMalaDireta.eof do
 begin
  mtbMalaDireta.edit;
  mtbMalaDiretaSel.value := true;
  mtbMalaDireta.post;
  mtbMalaDireta.next;
 end;
 mtbMalaDireta.EnableControls;
end;

procedure TFrmMalaDireta.InsereEtiqueta;
begin
  mtbMalaDireta.DisableControls;
  mtbMalaDireta.open;
  mtbMalaDireta.first;

  if not mtbEtiqueta.IsEmpty then
    mtbEtiqueta.data.Values.Clear;

  mtbEtiqueta.open;
  while not mtbMalaDireta.eof do
  begin
    if (mtbMalaDiretaSel.value) then
    begin
        mtbEtiqueta.Append;
        mtbEtiquetaPESSOA.value := mtbMalaDiretaPESSOA.value;
        mtbEtiquetaCODIGO.value := mtbMalaDiretaCODIGO.value;
        mtbEtiquetaATIVIDADE.value := mtbMalaDiretaATIVIDADE.value;
        mtbEtiquetaNOME_RAZAO.value := mtbMalaDiretaNOME_RAZAO.value;
        mtbEtiquetaFANTASIA.value := mtbMalaDiretaFANTASIA.value;
        mtbEtiquetaENDERECO.value := mtbMalaDiretaENDERECO.value;
        mtbEtiquetaNUMERO.value := mtbMalaDiretaNUMERO.value;
        mtbEtiquetaCOMPLEMENTO.value := mtbMalaDiretaCOMPLEMENTO.value;
        mtbEtiquetaBAIRRO.value := mtbMalaDiretaBAIRRO.value;
        mtbEtiquetaCIDADE.value := mtbMalaDiretaCIDADE.value;
        mtbEtiquetaCEP.value := mtbMalaDiretaCEP.value;
        mtbEtiquetaCPF_CGC.value := mtbMalaDiretaCPF_CGC.value;
        mtbEtiquetaCPF.value := mtbMalaDiretaCPF.value;
        mtbEtiquetaRG_IE.value := mtbMalaDiretaRG_IE.value;
        mtbEtiquetaFONE.value := mtbMalaDiretaFONE.value;
        mtbEtiquetaFAX.value := mtbMalaDiretaFAX.value;
        mtbEtiquetaCELULAR.value := mtbMalaDiretaCELULAR.value;
        mtbEtiquetaEMAIL.value := mtbMalaDiretaEMAIL.value;
        mtbEtiquetaNOME_VENDEDOR.value := mtbMalaDiretaNOME_VENDEDOR.value;
        mtbEtiquetaNOME_FORMA_PAGTO.value := mtbMalaDiretaNOME_FORMA_PAGTO.value;
        mtbEtiquetaPRAZO.value := mtbMalaDiretaPRAZO.value;
        mtbEtiquetaCOMPRADOR.value := mtbMalaDiretaCOMPRADOR.value;
        mtbEtiquetaDT_CADASTRO.value := mtbMalaDiretaDT_CADASTRO.value;
        mtbEtiquetaBLOQUEADO.value := mtbMalaDiretaBLOQUEADO.value;
        mtbEtiquetaNOME_CLASSIF.value := mtbMalaDiretaNOME_CLASSIF.value;
        mtbEtiquetaCOD_CLASSIF.value := mtbMalaDiretaCOD_CLASSIF.value;
        mtbEtiquetaCOD_VENDEDOR.value := mtbMalaDiretaCOD_VENDEDOR.value;
        mtbEtiquetaREGIAO.value := mtbMalaDiretaREGIAO.value;
        mtbEtiquetaASSINA_NOTA.value := mtbMalaDiretaASSINA_NOTA.value;
        mtbEtiquetaUF.value := mtbMalaDiretaUF.value;
        mtbEtiquetaDT_NASCIMENTO.value := mtbMalaDiretaDT_NASCIMENTO.value;
        mtbEtiquetaFREQUENCIA.value := mtbMalaDiretaFREQUENCIA.value;
        mtbEtiqueta.post;
    end;
    mtbMalaDireta.next;
  end;
  mtbMalaDireta.EnableControls;
end;

end.
