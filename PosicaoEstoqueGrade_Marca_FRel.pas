 unit PosicaoEstoqueGrade_Marca_FRel;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, Db, dxExEdtr, dxEdLib, dxCntner, dxEditor, dxDBEdtr,
  dxDBELib, StdCtrls,  RDprint,   ComCtrls, ppDB,
  ppDBPipe, ppComm, ppRelatv, ppProd, ppClass, ppReport, ppBands, ppCache,
  ppParameter, cxGraphics, cxControls, cxLookAndFeels,
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
  TFRelPosicaoEstoqueGrade_Marca = class(TForm)
    pnlClient: TPanel;
    Panel2: TPanel;
    RzBitBtn1: TcxButton;
    RzBitBtn2: TcxButton;
    Actions: TActionList;
    ActPreview: TAction;
    ActFechar: TAction;
    Label2: TcxLabel;
    cmbGrupo: TdxLookupEdit;
    dsGrupos: TDataSource;
    RelPrint: TRDprint;
    ActBuscarProd: TAction;
    Label3: TcxLabel;
    LblStatus: TcxLabel;
    ANDA: TProgressBar;
    Label4: TcxLabel;
    EdTipo: TdxPickEdit;
    RDALFA: TRadioButton;
    RadioButton2: TRadioButton;
    cmbSubGrupo: TdxLookupEdit;
    DsSubGrupo: TDataSource;
    CkEstoque: TCheckBox;
    DsMarca: TDataSource;
    Label1: TcxLabel;
    CmbMarca: TdxLookupEdit;
    rptPosEstMarca: TppReport;
    dbPosEstMarca: TppDBPipeline;
    dsPosEstMarca: TDataSource;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    procedure FormCreate(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cmbPessoaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RelPrintBeforeNewPage(Sender: TObject; Pagina: Integer);
    procedure RelPrintNewPage(Sender: TObject; Pagina: Integer);
    procedure FormShow(Sender: TObject);
    procedure ActPreviewExecute(Sender: TObject);
    procedure cmbGrupoEnter(Sender: TObject);
    procedure cmbGrupoExit(Sender: TObject);
    procedure IncLinRel;
  private
    { Private declarations }
    Grupo, SubGrupo: Integer;
  public
    { Public declarations }
  end;

var
  FRelPosicaoEstoqueGrade_Marca: TFRelPosicaoEstoqueGrade_Marca;
  linharel, Pagina: Integer;
implementation

uses Relatorios_DM, Usuarios_DM, Application_DM, Funcoes;

{$R *.DFM}

procedure TFRelPosicaoEstoqueGrade_Marca.FormCreate(Sender: TObject);
begin
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, Self.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TFRelPosicaoEstoqueGrade_Marca.ActFecharExecute(Sender: TObject);
begin
  Close;
end;

procedure TFRelPosicaoEstoqueGrade_Marca.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //
  dsSubGrupo.DataSet.Close;
  dsGrupos.DataSet.Close;
  dsMarca.DataSet.Close;
  //
  Action := caFree;
  FRelPosicaoEstoqueGrade_Marca := Nil;
end;

procedure TFRelPosicaoEstoqueGrade_Marca.cmbPessoaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFRelPosicaoEstoqueGrade_Marca.RelPrintBeforeNewPage(Sender: TObject; Pagina: Integer);
begin
  // Rodapé...
  relprint.ImpF(63, 01, Replicate('-', 80), [Normal]);
  relprint.ImpF(64, 01, dmapp.QryParceiroPARC_TEXTO_RELATORIO.AsString, [comp17,italico]);
  relprint.ImpF(64, 74, 'Pag. : ' + FormatFloat('0000', Pagina), [Comp17]);
end;

procedure TFRelPosicaoEstoqueGrade_Marca.RelPrintNewPage(Sender: TObject; Pagina: Integer);
Var
   Aux, Inicial, Final, Intervalo: Integer;
begin
try
  // Cabeçalho...
{  relprint.ImpF(01, 01, Replicate('-', 80), [Normal]);
  relprint.ImpF(02, 01, DMApp.Nome, [Normal, Negrito]);
  relprint.ImpF(02, 55, 'Data : '+ DateTimeToStr(now()), [Normal]);
  relprint.ImpF(03, 01, relprint.TitulodoRelatorio, [Normal]);

  relprint.ImpF(04, 01, Replicate('-', 80), [Normal]);

//  relprint.ImpF(05, 01,'*** ' + DMRELATORIOS.VER_EST_GRADESCODIGO.TEXT + '--' + DMRELATORIOS.VER_EST_GRADESNOME.ASSTRING, [Comp17, negrito]);

//  Inicial   := DMRELATORIOS.VER_EST_GRADESINICIAL.VALUE   ;

//  Final     := DMRELATORIOS.VER_EST_GRADESFINAL.VALUE     ;

//  Intervalo := DMRELATORIOS.VER_EST_GRADESINTERVALO.VALUE ;

  Aux := 01;

  DMRELATORIOS.VER_EST_GRADES_ADICIONAL.Close ;

  DMRELATORIOS.VER_EST_GRADES_ADICIONAL.ParamByName ('CNPJ' ).AsString  := DMApp.Cnpj ;
  DMRELATORIOS.VER_EST_GRADES_ADICIONAL.ParamByName ('GRADE').AsInteger := DMRELATORIOS.VER_EST_GRADESCODIGO.VALUE ;

  DMRELATORIOS.VER_EST_GRADES_ADICIONAL.Open  ;


  //LISTANDO P, M, G, GG, XG, XXGG
  DMRELATORIOS.VER_EST_GRADES_ADICIONAL.FIRST ;

  WHILE (( NOT DMRELATORIOS.VER_EST_GRADES_ADICIONAL.EOF ) AND ( AUX <= 80 ))  DO
  BEGIN
       relprint.ImpF(06, Aux, DMRELATORIOS.VER_EST_GRADES_ADICIONALCODIGO.VALUE, [Comp17]);
       relprint.ImpF(07, Aux, '----', [Comp17]);
       AUX     := AUX   + 3          ;
       DMRELATORIOS.VER_EST_GRADES_ADICIONAL.NEXT ;
  END;

  IF (( INICIAL <> 0 ) AND ( FINAL <> 0 ))
  THEN BEGIN
  WHILE (( INICIAL <= FINAL ) AND ( AUX <= 80 )) DO
        BEGIN
             relprint.ImpF(06, Aux, IntToStr(Inicial), [Comp17]);
             relprint.ImpF(07, Aux, '----', [Comp17]);
             INICIAL := INICIAL + INTERVALO ;
             AUX     := AUX     + 3         ;
        END;
  END;

  relprint.ImpF(08, 01, 'Codigo          Nome                  Cod Se Marca', [Comp17]);

  relprint.ImpF(09, 01, '------ ------------------------------ ------ ------------------------------', [Comp17]);

  LINHAREL := 10;
  }
except
  showmessage(IntToStr(Pagina) + ' / ' + IntToStr(LinhaRel) );
end;
end;

procedure TFRelPosicaoEstoqueGrade_Marca.FormShow(Sender: TObject);
begin
  //
  IniciaComponentes(Self as TForm);
  //
  Try
    dsGrupos.DataSet.Open;
    dsSubGrupo.DataSet.Open;
    dsMarca.DataSet.Open;
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
end;

procedure TFRelPosicaoEstoqueGrade_Marca.ActPreviewExecute(Sender: TObject);
Var
   Total_Custo, Total_Quantidade : real;
   Custo, Quantidade: Extended;
   Mascara, Str: String;
   Ult_Perfil, Inicial, Final, Intervalo, Aux, Lin: Integer;
   Iniciou: Boolean;
   perfil :integer;
begin
  try
//    Ult_Perfil := -1 ;
    lblStatus.caption := 'Selecionando Dados' ;
    lblStatus.Visible := True ;
    lblStatus.Refresh ;
   // DMRelatorios.qPosEstGrade

  //  relprint.TitulodoRelatorio := 'Posicao de Estoque por Grade / Marca';
 //   Iniciou := False ;
{    with DMRelatorios do
    begin
      //SEPERANDO AS GRADES
      VER_EST_GRADES.Close ;
      VER_EST_GRADES.ParamByName ('CNPJ').AsString := DMApp.Cnpj ;
      VER_EST_GRADES.Open  ;
      VER_EST_GRADES.FIRST ;
      while not VER_EST_GRADES.EOF do
      begin
        VER_EST_PRODUTOS_GRADES.SQL.Clear ;
        VER_EST_PRODUTOS_GRADES.SQL.Add(' select *                               ');
        VER_EST_PRODUTOS_GRADES.SQL.Add(' From VER_EST_PRODUTOS_GRADES ( :CNPJ ) ');
        VER_EST_PRODUTOS_GRADES.SQL.Add(' WHERE ATIVO = :ATV                     ');
        VER_EST_PRODUTOS_GRADES.ParamByName('CNPJ').asString := DMApp.Cnpj;
        VER_EST_PRODUTOS_GRADES.Params.CreateParam(FtInteger, 'PERFIL', PtInput);
        VER_EST_PRODUTOS_GRADES.Sql.Add(' And (PERFIL = :PERFIL) ');
        VER_EST_PRODUTOS_GRADES.ParamByName('PERFIL').asInteger := perfil;
        //
        if (EdTipo.Text = 'Ativo') then
          VER_EST_PRODUTOS_GRADES.ParamByName('ATV').asString := 'S'
        else
          VER_EST_PRODUTOS_GRADES.ParamByName('ATV').asString := 'N';
        if (cmbGrupo.TEXT <> '') then
        begin
          VER_EST_PRODUTOS_GRADES.Params.CreateParam(FtInteger, 'GRP', PtInput);
          VER_EST_PRODUTOS_GRADES.Sql.Add(' And (Grupo = :GRP) ');
          VER_EST_PRODUTOS_GRADES.ParamByName('GRP').asInteger := cmbGrupo.LookupKeyValue ;
        end;
        if (cmbSubGrupo.TEXT <> '') then
        begin
          VER_EST_PRODUTOS_GRADES.Params.CreateParam ( FtInteger, 'SUB', PtInput );
          VER_EST_PRODUTOS_GRADES.Sql.Add(' And ( SubGrupo = :SUB ) ');
          VER_EST_PRODUTOS_GRADES.ParamByName('SUB').asInteger := cmbSubGrupo.LookupKeyValue ;
        end;
        if (CmbMarca.TEXT <> '') then
        begin
          VER_EST_PRODUTOS_GRADES.Params.CreateParam(FtInteger, 'MARCA', PtInput);
          VER_EST_PRODUTOS_GRADES.Sql.Add(' And (Marca = :MARCA) ');
          VER_EST_PRODUTOS_GRADES.ParamByName('MARCA').asInteger := cmbMarca.LookupKeyValue ;
        end;
        if RDALFA.Checked then
          VER_EST_PRODUTOS_GRADES.SQL.Add(' ORDER BY NOME, CODIGO ')
        else
          VER_EST_PRODUTOS_GRADES.SQL.Add(' ORDER BY CODIGO, NOME ');
        VER_EST_PRODUTOS_GRADES.Open;
{        VER_EST_PRODUTOS_GRADES.FetchAll ;
        if ((VER_EST_PRODUTOS_GRADES.RecordCount > 0) and (NOT INICIOU)) then
//        begin
          Iniciou := true ;
          relprint.Abrir;
//        end
//        else
//        begin
{          if (VER_EST_PRODUTOS_GRADES.RecordCount > 0) then
          begin
            relprint.ImpF(linharel, 01, Replicate('-', 80), [Normal]);
            InclinRel ;
            relprint.ImpF(linharel, 01,'*** ' + VER_EST_GRADESCODIGO.TEXT + '--' + DMRELATORIOS.VER_EST_GRADESNOME.ASSTRING, [Comp17, negrito]);
            InclinRel;
            Inicial := VER_EST_GRADESINICIAL.VALUE;
            Final := VER_EST_GRADESFINAL.VALUE;
            Intervalo := VER_EST_GRADESINTERVALO.VALUE;
            Aux := 01;
            VER_EST_GRADES_ADICIONAL.Close ;
            VER_EST_GRADES_ADICIONAL.ParamByName('CNPJ').AsString  := DMApp.Cnpj ;
            VER_EST_GRADES_ADICIONAL.ParamByName('GRADE').AsInteger := DMRELATORIOS.VER_EST_GRADESCODIGO.VALUE ;
            VER_EST_GRADES_ADICIONAL.Open  ;
            //LISTANDO P, M, G, GG, XG, XXGG
            VER_EST_GRADES_ADICIONAL.FIRST ;
            Lin := 0;
            Lin := linharel ;
            while ((not VER_EST_GRADES_ADICIONAL.EOF) and (AUX <= 80)) do
            begin
              relprint.ImpF(Lin, Aux, VER_EST_GRADES_ADICIONALCODIGO.VALUE, [Comp17]);
              relprint.ImpF(Lin + 1, Aux, '----', [Comp17]);
              AUX := AUX   + 3          ;
              VER_EST_GRADES_ADICIONAL.NEXT;
            end;
            if ((INICIAL <> 0) and (FINAL <> 0)) then
            begin
              while ((INICIAL <= FINAL) and (AUX <= 80)) do
              begin
                relprint.ImpF(lin, Aux, IntToStr(Inicial), [Comp17]);
                relprint.ImpF(lin + 1, Aux, '----', [Comp17]);
                INICIAL := INICIAL + INTERVALO ;
                AUX := AUX + 3;
              end;
            end;
            Inclinrel ;
            Inclinrel ;
            relprint.ImpF(linharel, 01, 'Codigo          Nome                  Cod Se Marca', [Comp17]);
            InclinRel ;
            relprint.ImpF(linharel, 01, '------ ------------------------------ ------ ------------------------------', [Comp17]);
  //        end;
//        end;
        Anda.Max := VER_EST_PRODUTOS_GRADES.RecordCount;
        Anda.Position := 0;
        Anda.Visible := TRUE ;
        Total_Custo := 0;
        Total_Quantidade := 0;
        VER_EST_PRODUTOS_GRADES.First;
        while not VER_EST_PRODUTOS_GRADES.Eof do
        begin
          if VER_EST_PRODUTOS_GRADES.Tag = 0 then
            Custo := VER_EST_PRODUTOS_GRADESPRC_CUSTO_MED.Value
          else
            Custo := VER_EST_PRODUTOS_GRADESPRC_REPOS.Value;
          if VER_EST_PRODUTOS_GRADESSUBUNIDADE.VALUE > 0 then
            Quantidade := VER_EST_PRODUTOS_GRADESQTDADE_2.VALUE/VER_EST_PRODUTOS_GRADESSUBUNIDADE.VALUE
          else
            Quantidade := VER_EST_PRODUTOS_GRADESQTDADE_2.VALUE;
          end;
          if DmaPP.CASAS_QNTDE = 'S' then
            Mascara := '###,###,##0.00'
          else
            Mascara := '###,###,##0';
          relprint.ImpF(linharel, 01, Format('%6s %-30s %6s %-30s',
          [
          copy(VER_EST_PRODUTOS_GRADESCODIGO.Text,1,6),
          Copy(VER_EST_PRODUTOS_GRADESNOME.Text, 1, 30),
          copy(VER_EST_PRODUTOS_GRADESCODIGO_2.Text,1,6),
          Copy(VER_EST_PRODUTOS_GRADESNOME_MARCA.Text, 1, 30)
          ]), [Comp17]);
          IncLinRel;
          VER_EST_PRODUTOS_GRADES_NUMEROS.CLOSE ;
          VER_EST_PRODUTOS_GRADES_NUMEROS.OPEN  ;
          Aux := 01;
          while ((not VER_EST_PRODUTOS_GRADES_NUMEROS.EOF) and (AUX <= 80)) do
          begin
            if CkEstoque.Checked then
            begin
              STR := FORMATFLOAT ('###,##0',  VER_EST_PRODUTOS_GRADES_NUMEROSESTOQUE.VALUE);
              while LENGTH(STR) < 4 do
                STR := ' ' + STR ;
              if VER_EST_PRODUTOS_GRADES_NUMEROSESTOQUE.VALUE > 0 then
                relprint.ImpF(linharel, Aux, Str, [Comp17]);
              VER_EST_PRODUTOS_GRADES_NUMEROS.NEXT ;
              AUX := AUX + 3;
            end
            else
            begin
              STR := FORMATFLOAT ('###,##0',  VER_EST_PRODUTOS_GRADES_NUMEROSESTOQUE.VALUE);
              while LENGTH(STR) < 4 do
                STR := ' ' + STR ;
              relprint.ImpF(linharel, Aux, Str, [Comp17]);
              VER_EST_PRODUTOS_GRADES_NUMEROS.NEXT ;
              AUX := AUX + 3;
            end;
          end;
          IncLinRel;
          Total_Custo := Total_Custo + Custo;
          Total_Quantidade := Total_Quantidade + Quantidade;
          Anda.Position := Anda.Position + 1;
          VER_EST_PRODUTOS_GRADES.Next;
        end;
        DMRelatorios.VER_EST_PRODUTOS_GRADES.Close;
        //VER_EST_GRADES.NEXT ;
        //IMPRIMINDO NOVO CABECALHO
{        IF NOT VER_EST_GRADES.EOF
        THEN BEGIN
        END;
        Anda.Visible:= False;
        relprint.Fechar;
      end;}
  except
    //SHOWMESSAGE(INTTOSTR( ANDA.POSITION ));
  END;                  
end;

procedure TFRelPosicaoEstoqueGrade_Marca.cmbGrupoEnter(Sender: TObject);
begin
     CORFUNDO ( SENDER );
end;

procedure TFRelPosicaoEstoqueGrade_Marca.cmbGrupoExit(Sender: TObject);
begin
     //TROCA A COR PARA A COR SELECIONADA
     TIRACORFUNDO ( SENDER );
end;

procedure TFRelPosicaoEstoqueGrade_Marca.IncLinRel;
begin
  try
    linharel := linharel + 1;
    if linharel >= 63 then
      relprint.Novapagina;
  except
     showmessage(inttostr(Pagina) + ' / ' +inttostr(linharel));
  end;
end;

end.
