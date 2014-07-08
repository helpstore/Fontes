 unit PosicaoEstoqueGrade_FRel;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, Db, dxExEdtr, dxEdLib, dxCntner, dxEditor, dxDBEdtr,
  dxDBELib, StdCtrls,  RDprint,   ComCtrls, ppDB,
  ppDBPipe, ppBands, ppCache, ppClass, ppComm, ppRelatv, ppProd, ppReport,
  ppPrnabl, ppStrtch, ppCTMain, ppVar, ppCtrls, ppParameter, cxGraphics,
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
  TFRelPosicaoEstoqueGrade = class(TForm)
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
    dsProdGrd: TDataSource;
    rpt: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel1: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppCrossTab1: TppCrossTab;
    lblEmpresa: TppLabel;
    dsSomaPerfil: TDataSource;
    CmbMarca: TdxLookupEdit;
    Label1: TcxLabel;
    DsMarca: TDataSource;
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
  FRelPosicaoEstoqueGrade: TFRelPosicaoEstoqueGrade;
  linharel, Pagina: Integer;
implementation

uses Relatorios_DM, Usuarios_DM, Application_DM, Funcoes;

{$R *.DFM}

procedure TFRelPosicaoEstoqueGrade.FormCreate(Sender: TObject);
begin
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, Self.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TFRelPosicaoEstoqueGrade.ActFecharExecute(Sender: TObject);
begin
  Close;
end;

procedure TFRelPosicaoEstoqueGrade.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //
  dsSubGrupo.DataSet.Close;
  dsGrupos.DataSet.Close;
  DsMarca.DataSet.Close;
  //
  Action := caFree;
  FRelPosicaoEstoqueGrade := Nil;
end;

procedure TFRelPosicaoEstoqueGrade.cmbPessoaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFRelPosicaoEstoqueGrade.RelPrintBeforeNewPage(Sender: TObject; Pagina: Integer);
begin
  // Rodapé...
  relprint.ImpF(63, 01, Replicate('-', 80), [Normal]);
  relprint.ImpF(64, 01, dmapp.QryParceiroPARC_TEXTO_RELATORIO.AsString, [comp17,italico]);
  relprint.ImpF(64, 74, 'Pag. : ' + FormatFloat('0000', Pagina), [Comp17]);
end;

procedure TFRelPosicaoEstoqueGrade.RelPrintNewPage(Sender: TObject; Pagina: Integer);
Var
   Aux, Inicial, Final, Intervalo: Integer;
begin
try
  // Cabeçalho...
  relprint.ImpF(01, 01, Replicate('-', 80), [Normal]);
  relprint.ImpF(02, 01, DMApp.Nome, [Normal, Negrito]);
  relprint.ImpF(02, 55, 'Data : '+ DateTimeToStr(now()), [Normal]);
  relprint.ImpF(03, 01, relprint.TitulodoRelatorio, [Normal]);
  relprint.ImpF(04, 01, Replicate('-', 80), [Normal]);

  IF ( PAGINA > 1 )
  THEN BEGIN
       relprint.ImpF(05, 01,'*** ' + DMRELATORIOS.VER_EST_PRODUTOS_GRADESNOME_PERFIL.VALUE + '--' + DMRELATORIOS.VER_EST_PRODUTOS_GRADESPERFIL.ASSTRING, [Comp17, negrito]);

       relprint.ImpF(06, 01, 'Codigo          Nome                  Cod Se', [Comp17]);

       relprint.ImpF(07, 01, '------ ------------------------------ ------', [Comp17]);

       Inicial   := DMRELATORIOS.VER_EST_PRODUTOS_GRADESINICIAL.VALUE;

       Final     := DMRELATORIOS.VER_EST_PRODUTOS_GRADESFINAL.VALUE;

       Intervalo := DMRELATORIOS.VER_EST_PRODUTOS_GRADESINTERVALO.VALUE;

       Aux := 27;

       //LISTANDO P, M, G, GG, XG, XXGG
       DMRELATORIOS.VER_EST_GRADES_ADICIONAL.Close ;

       DMRELATORIOS.VER_EST_GRADES_ADICIONAL.Open  ;

       WHILE (( NOT DMRELATORIOS.VER_EST_GRADES_ADICIONAL.EOF ) AND ( AUX <= 80 ))  DO
       BEGIN
            relprint.ImpF(06, Aux, DMRELATORIOS.VER_EST_GRADES_ADICIONALCODIGO.VALUE, [Comp17]);
            relprint.ImpF(07, Aux, '----', [Comp17]);
            AUX     := AUX   + 3          ;
            DMRELATORIOS.VER_EST_GRADES_ADICIONAL.NEXT ;
       END;

       DMRELATORIOS.VER_EST_GRADES_ADICIONAL.Close ;

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
       LINHAREL := 8;
  END
  ELSE
      linharel  := 5;
except
  showmessage(IntToStr(Pagina) + ' / ' + IntToStr(LinhaRel) );
end;
end;

procedure TFRelPosicaoEstoqueGrade.FormShow(Sender: TObject);
begin
  IniciaComponentes(Self as TForm);
  Try
    dsGrupos.DataSet.Open;
    dsSubGrupo.DataSet.Open;
    DsMarca.DataSet.Open;
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

procedure TFRelPosicaoEstoqueGrade.ActPreviewExecute(Sender: TObject);
Var
   Total_Custo, Total_Quantidade : real;
   Custo, Quantidade: Extended;
   Mascara, Str: String;
   Ult_Perfil, Inicial, Final, Intervalo, Aux: Integer;
begin
  try
    Screen.Cursor := crHourglass;
//    Ult_Perfil := -1 ;
    lblStatus.caption := 'Selecionando Dados';
    lblStatus.Visible := True;
    lblStatus.Refresh;
   // relprint.TitulodoRelatorio := 'Posicao de Estoque por Grade'; -=-
    with DMRelatorios do
    begin
      qPosEstGrade.Close;
      qPosEstGrade.SelectSQL.Clear;
      qPosEstGrade.SelectSQL.Text := 'select sum(ESTOQUE) estoque, perfil, coalesce(codigo , '''')||'' | ''|| coalesce(produto, '''') || ';
      qPosEstGrade.SelectSQL.Text := qPosEstGrade.SelectSQL.Text + ''' | ''||coalesce(codigo_2, '''')produto, marca, numero, CODPERFIL, ordem ';
      qPosEstGrade.SelectSQL.Text := qPosEstGrade.SelectSQL.Text + 'from ver_est_posicao_estoque_grade(:cnpj) ';
      qPosEstGrade.SelectSQL.Text := qPosEstGrade.SelectSQL.Text + 'where ativo = :atv ';
      if (cmbGrupo.TEXT <> '') then
        qPosEstGrade.SelectSQL.Text := qPosEstGrade.SelectSQL.Text + ' and Grupo = :grp ';
      if (cmbSubGrupo.TEXT <> '') then
        qPosEstGrade.SelectSQL.Text := qPosEstGrade.SelectSQL.Text + ' and SubGrupo = :sub ';
      if (CmbMarca.Text <> '') then
        qPosEstGrade.SelectSQL.Text := qPosEstGrade.SelectSQL.Text + ' and codmarca = :mrc ';
      qPosEstGrade.SelectSQL.Text := qPosEstGrade.SelectSQL.Text + ' group by perfil, marca, produto, numero, codigo, codigo_2, ordem, CODPERFIL';
      if RDALFA.Checked then
        qPosEstGrade.SelectSQL.Text := qPosEstGrade.SelectSQL.Text + ' order by CODPERFIL, ordem, numero, produto'
      else
        qPosEstGrade.SelectSQL.Text := qPosEstGrade.SelectSQL.Text + ' order by CODPERFIL, ordem, numero, codigo';
      qPosEstGrade.ParamByName('cnpj').asString := DMApp.Cnpj;
      if (EdTipo.Text = 'Ativo') then
        qPosEstGrade.ParamByName('atv').asString := 'S'
      else
        qPosEstGrade.ParamByName('atv').asString := 'N';
      if (cmbGrupo.TEXT <> '') then
        qPosEstGrade.ParamByName('grp').asInteger := cmbGrupo.LookupKeyValue ;
      if (cmbSubGrupo.TEXT <> '') then
        qPosEstGrade.ParamByName('sub').asInteger := cmbSubGrupo.LookupKeyValue;
      if (CmbMarca.Text <> '') then
        qPosEstGrade.ParamByName('mrc').asInteger := CmbMarca.LookupKeyValue;
      qPosEstGrade.Open;
      lblEmpresa.Caption := DMApp.Nome;
      rpt.Reset;//reset pq não estava atualizando o relatório qdo mudava a consulta sem fechar a tela de filtragem
      rpt.Print;
      Screen.Cursor := crDefault;
      {      VER_EST_PRODUTOS_GRADES.SQL.Clear ;
VER_EST_PRODUTOS_GRADES.SQL.Add(' select *');
      VER_EST_PRODUTOS_GRADES.SQL.Add(' From VER_EST_PRODUTOS_GRADES(:CNPJ)');
      VER_EST_PRODUTOS_GRADES.SQL.Add(' WHERE ATIVO = :ATV');
      VER_EST_PRODUTOS_GRADES.ParamByName('CNPJ').asString := DMApp.Cnpj;
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
        VER_EST_PRODUTOS_GRADES.Params.CreateParam(FtInteger, 'SUB', PtInput);
        VER_EST_PRODUTOS_GRADES.Sql.Add(' And (SubGrupo = :SUB) ');
        VER_EST_PRODUTOS_GRADES.ParamByName('SUB').asInteger := cmbSubGrupo.LookupKeyValue;
      end;
      if RDALFA.Checked then
        VER_EST_PRODUTOS_GRADES.SQL.Add(' ORDER BY NOME_PERFIL, PERFIL, NOME, CODIGO')
      else
        VER_EST_PRODUTOS_GRADES.SQL.Add(' ORDER BY NOME_PERFIL, PERFIL, CODIGO');
      VER_EST_PRODUTOS_GRADES.Open;}
{      if VER_EST_PRODUTOS_GRADES.RecordCount = 0 then-=-
      begin
        lblStatus.Visible := False ;
        ShowMessage('Não há registro a imprimir para o período, verifique !');
        VER_EST_PRODUTOS_GRADES.Close;
        cmbGrupo.SetFocus;
        Exit;
      end
      else
      begin
        lblStatus.Visible := False ;
        VER_EST_PRODUTOS_GRADES.FetchAll ;
        Anda.Max := VER_EST_PRODUTOS_GRADES.RecordCount;
        Anda.Position := 0;
        Anda.Visible  := TRUE ;
      end;
      relprint.Abrir;
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
        if DmaPP.CASAS_QNTDE = 'S' then
          Mascara := '###,###,##0.00'
        else
          Mascara := '###,###,##0';
        if (VER_EST_PRODUTOS_GRADESPERFIL.VALUE <> Ult_Perfil) then
        begin
          Inicial := VER_EST_PRODUTOS_GRADESINICIAL.VALUE;
          Final := VER_EST_PRODUTOS_GRADESFINAL.VALUE;
          Intervalo := VER_EST_PRODUTOS_GRADESINTERVALO.VALUE;
          IncLinRel;
          relprint.ImpF(linharel, 01,'*** ' + VER_EST_PRODUTOS_GRADESNOME_PERFIL.VALUE + '--' + VER_EST_PRODUTOS_GRADESPERFIL.ASSTRING, [Comp17, negrito]);
          IncLinRel;
          relprint.ImpF(linharel, 01,     'Codigo Nome                           Cod Se', [Comp17]);
          relprint.ImpF(linharel + 1, 01, '------ ------------------------------ ------', [Comp17]);
          Aux := 27;
          //LISTANDO P, M, G, GG, XG, XXGG
          VER_EST_GRADES_ADICIONAL.Close;
          VER_EST_GRADES_ADICIONAL.Open;
          while((not VER_EST_GRADES_ADICIONAL.EOF) and (AUX <= 80)) do
          begin
            relprint.ImpF(linharel, Aux, VER_EST_GRADES_ADICIONALCODIGO.VALUE, [Comp17]);
            relprint.ImpF(linharel + 1, Aux, '----', [Comp17]);
            AUX := AUX + 3;
            VER_EST_GRADES_ADICIONAL.NEXT ;
          end;
          VER_EST_GRADES_ADICIONAL.Close ;
          if ((INICIAL <> 0) AND (FINAL <> 0)) then
          begin
            while ((INICIAL <= FINAL) and (AUX <= 80)) do
            begin
              relprint.ImpF(linharel, Aux, IntToStr(Inicial), [Comp17]);
              relprint.ImpF(linharel + 1, Aux, '----', [Comp17]);
              INICIAL := INICIAL + INTERVALO ;
              AUX := AUX + 3;
            end;
          end;
          Ult_Perfil := VER_EST_PRODUTOS_GRADESPERFIL.VALUE ;
          IncLinRel;
          IncLinRel;
        end;
        relprint.ImpF(linharel, 01, Format('%6s %-30s %6s',
        [
         copy(VER_EST_PRODUTOS_GRADESCODIGO.Text,1,6),
         Copy(VER_EST_PRODUTOS_GRADESNOME.Text, 1, 30),
         copy(VER_EST_PRODUTOS_GRADESCODIGO_2.Text,1,6)
        ]), [Comp17]);
        VER_EST_PRODUTOS_GRADES_NUMEROS.CLOSE ;
        VER_EST_PRODUTOS_GRADES_NUMEROS.OPEN  ;
        Aux := 27;
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
            while LENGTH( STR ) < 4 do
              STR := ' ' + STR ;
            relprint.ImpF(linharel, Aux, Str, [Comp17]);
            VER_EST_PRODUTOS_GRADES_NUMEROS.NEXT ;
            AUX := AUX + 3;
          end;
        end;
        IncLinRel;
        Total_Custo := Total_Custo      + Custo;
        Total_Quantidade := Total_Quantidade + Quantidade;
        Anda.Position := Anda.Position + 1;
        VER_EST_PRODUTOS_GRADES.Next;
      end;
      VER_EST_PRODUTOS_GRADES.Close;
      Anda.Visible:= False;
      IncLinRel;
{      relprint.ImpF(linharel, 01, Format('%-39s %-35s %14s %12s %14s %12s',
                                     ['',
                                      '',
                                      FormatFloat('#,##0.00', Total_Quantidade ),
                                      FormatFloat('#,##0.00', Total_Custo ),
                                      '',
                                      '']), [Comp17]);
}
    //  relprint.Fechar;-=-
    end;
    except
      SHOWMESSAGE(INTTOSTR( ANDA.POSITION ));
    end;
end;

procedure TFRelPosicaoEstoqueGrade.cmbGrupoEnter(Sender: TObject);
begin
     CORFUNDO ( SENDER );
end;

procedure TFRelPosicaoEstoqueGrade.cmbGrupoExit(Sender: TObject);
begin
     //TROCA A COR PARA A COR SELECIONADA
     TIRACORFUNDO ( SENDER );
end;

procedure TFRelPosicaoEstoqueGrade.IncLinRel;
begin
     try
        linharel := linharel + 1;

        If linharel >= 63
        Then
            relprint.Novapagina;
     except
        showmessage(inttostr(Pagina) + ' / ' +inttostr(linharel));
     end;
end;

end.
