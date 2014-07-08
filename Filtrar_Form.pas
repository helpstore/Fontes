 unit Filtrar_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask,       
  dxCntner, dxEditor, dxExEdtr, dxDBEdtr, dxDBELib,  DB,
  IBCustomDataSet, IBQuery, dxEdLib, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Menus, cxControls, cxContainer, cxEdit,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue, cxLabel,
  cxButtons,       cxTextEdit, cxCheckBox, cxRadioGroup;

type
  TFrmFiltrar = class(TForm)
    Panel1: TPanel;
    PNLClient: TPanel;
    Label1: TcxLabel;
    lbCampos: TListBox;
    Label2: TcxLabel;
    Panel3: TPanel;
    Panel4: TPanel;
    nbOpcoes: TNotebook;
    Label4: TcxLabel;
    EdValor: tcxtextedit;
    RzCheckBox2: TcxCheckBox;
    Label5: TcxLabel;
    rbRefEq: TRadioButton;
    rbRefDif: TRadioButton;
    Label7: TcxLabel;
    cmbReferencia: TdxLookupEdit;
    btnAplicar: TcxButton;
    lbFiltro: TListBox;
    rbE: TcxRadioButton;
    rbOU: TcxRadioButton;
    btnSalvar: TcxButton;
    btnCarregar: TcxButton;
    btnLimpar: TcxButton;
    Label3: TcxLabel;
    Shape1: TShape;
    BtnAdicionar: TcxButton;
    BtnRemover: TcxButton;
    dsReferencia: TDataSource;
    Referencia: TIBQuery;
    ReferenciaNOME: TIBStringField;
    Label6: TcxLabel;
    edValorNum: TdxCurrencyEdit;
    Label8: TcxLabel;
    cmbCritNum: TdxPickEdit;
    Label9: TcxLabel;
    edValorNum1: TdxCurrencyEdit;
    Label10: TcxLabel;
    cmbCritNum1: TdxPickEdit;
    cbNumE: TdxCheckEdit;
    cbNumOU: TdxCheckEdit;
    Label11: TcxLabel;
    Label12: TcxLabel;
    cmbCritDate: TdxPickEdit;
    Label13: TcxLabel;
    Label14: TcxLabel;
    cmbCritDate1: TdxPickEdit;
    cbDateE: TdxCheckEdit;
    cbDateOU: TdxCheckEdit;
    edDate: TdxDateEdit;
    edDate1: TdxDateEdit;
    BtnFechar: TcxButton;
    ReferenciaCHAVE: TIBStringField;
    procedure btnAplicarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnAdicionarClick(Sender: TObject);
    procedure lbCamposClick(Sender: TObject);
    procedure nbOpcoesPageChanged(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure lbFiltroClick(Sender: TObject);
    procedure btnRemoverClick(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
    procedure EdValorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RzCheckBox1KeyPress(Sender: TObject; var Key: Char);
    procedure cbNumEChange(Sender: TObject);
    procedure cbNumOUChange(Sender: TObject);
    procedure cbDateEChange(Sender: TObject);
    procedure cbDateOUChange(Sender: TObject);
    procedure BtnFecharClick(Sender: TObject);
    procedure lbFiltroDblClick(Sender: TObject);
  private
    { Private declarations }
    Function NomeDoCampo(DisplayLabel: String): String;
    Function PosicaoWhere(SqlText: TStrings): Integer;
    Procedure Prepara_Filtragem;
    Procedure Habilita_2o_Criterio;
  public
    { Public declarations }
    Datasource: TDataSource;
    s_Sql_Where: TStringList;
  end;

var
  FrmFiltrar: TFrmFiltrar;

implementation

uses Funcoes, Application_DM, Procedures_DM;

{$R *.DFM}

function TFrmFiltrar.PosicaoWhere(SqlText: TStrings): Integer;
Var i: Integer;
begin
  //
  For i := 0 To SqlText.Count -1 Do
      If Pos('ORDER BY', SqlText[i]) > 0 Then
         Result := i;
end;

procedure TFrmFiltrar.Habilita_2o_Criterio;
begin
  //
  If nbOpcoes.PageIndex = 3 Then
     Begin
       //
       Label9.Enabled      := (cbNumE.Checked) Or (cbNumOU.Checked);
       Label10.Enabled     := (cbNumE.Checked) Or (cbNumOU.Checked);
       cmbCritNum1.Enabled := (cbNumE.Checked) Or (cbNumOU.Checked);
       edValorNum1.Enabled := (cbNumE.Checked) Or (cbNumOU.Checked);
     End;
  //
  If nbOpcoes.PageIndex = 4 Then
     Begin
       //
       Label13.Enabled      := (cbDateE.Checked) Or (cbDateOU.Checked);
       Label14.Enabled      := (cbDateE.Checked) Or (cbDateOU.Checked);
       cmbCritDate1.Enabled := (cbDateE.Checked) Or (cbDateOU.Checked);
       edDate1.Enabled      := (cbDateE.Checked) Or (cbDateOU.Checked);
     End;
end;

function TFrmFiltrar.NomeDoCampo(DisplayLabel: String): String;
Var i: Integer;
begin
  For i := 0 To Datasource.Dataset.FieldCount - 1 Do
      If Datasource.Dataset.Fields.Fields[i].DisplayLabel = DisplayLabel Then
         Result := Datasource.Dataset.Fields.Fields[i].FieldName;
end;

procedure TFrmFiltrar.Prepara_Filtragem;
Var Tabela, Campo, TabelaRel, CampoRel, CampoRes: String;
    Origem: String;
    CHAVE: TStringField;
begin
  //
end;

procedure TFrmFiltrar.btnAplicarClick(Sender: TObject);
Var i, li, lf: Integer;
    aplicar: Boolean;
begin
  //
  li := 0;
  lf := 0;
  aplicar := False;
  // Eliminando filtro anterior, caso exista
  For i := 0 To (DataSource.DataSet as TIBDataSet).SelectSQL.Count -1 Do
      Begin
        If Pos('/* INICIO FILTRAGEM */', (DataSource.DataSet as TIBDataSet).SelectSQL.Strings[i]) > 0 Then
           li := i;
        If Pos('/* TERMINO FILTRAGEM */', (DataSource.DataSet as TIBDataSet).SelectSQL.Strings[i]) > 0  Then
           lf := i;
      End;
  //
  If (li <> 0) Or (lf <> 0) Then
     aplicar := True;
  //
  If (lf <> 0) And (li <> 0) Then
     For i := lf DownTo li Do
         (DataSource.DataSet as TIBDataSet).SelectSQL.Delete(i);
  //
  If s_Sql_Where.Count > 1 Then
     Begin
       // Montando novo filtro
       s_Sql_Where.Insert(0, '/* INICIO FILTRAGEM */');
       s_Sql_Where.Add   (   ') /* TERMINO FILTRAGEM */');
       // descobrindo a linha a inserir
       li := PosicaoWhere((DataSource.DataSet as TIBDataSet).SelectSQL);
       //
       For i := 0 To s_Sql_Where.Count -1 Do
           Begin
             (DataSource.DataSet as TIBDataSet).SelectSQL.Insert(li, Trim(s_Sql_Where[i]));
             Inc(li);
           End;
       //
       aplicar := True;
     End;
  //
  If aplicar Then
     DataSource.DataSet.Open;
  //
  DMApp.s_Texto_Where := lbFiltro.Items.Text;
  //
  Close;
end;

procedure TFrmFiltrar.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //
  s_Sql_Where.Free;
  //
  Referencia.Close;
  Referencia.UnPrepare;
  //
  Action := caFree;
  FrmFiltrar := Nil;
end;

procedure TFrmFiltrar.FormShow(Sender: TObject);
var i, li, lf: integer;
begin
  //
  IniciaComponentes ( Self as TForm );
  //
  lbFiltro.Items.Clear ;
  lbCampos.Items.Clear;
  For i := 0 To Datasource.Dataset.FieldCount - 1 Do
      If Not(AllUpperCase(Datasource.Dataset.Fields.Fields[i].DisplayLabel)) Then
         lbCampos.Items.Add(Datasource.Dataset.Fields.Fields[i].DisplayLabel);
  //
  lbCampos.ItemIndex := 0;
  //
  If Pos('/* INICIO FILTRAGEM */', (DataSource.DataSet as TIBDataSet).SelectSQL.Text) > 0 Then
     Begin
       //
       lbFiltro.Items.Text := DMApp.s_Texto_Where;
       //
       For i := 0 To (DataSource.DataSet as TIBDataSet).SelectSQL.Count -1 Do
           Begin
             If Pos('/* INICIO FILTRAGEM */', (DataSource.DataSet as TIBDataSet).SelectSQL.Strings[i]) > 0 Then
                li := i;
             If Pos('/* TERMINO FILTRAGEM */', (DataSource.DataSet as TIBDataSet).SelectSQL.Strings[i]) > 0  Then
                lf := i;
           End;
       //
       s_Sql_Where.Clear;
       //
       For i := (li +1) To (lf -1) Do
           s_Sql_Where.Add((DataSource.DataSet as TIBDataSet).SelectSQL.Strings[i]);
       //
       //s_Sql_Where.Delete(0);
       //s_Sql_Where.Delete(s_Sql_Where.Count -1);
     End;
     lbCampos.SetFocus  ;
end;

procedure TFrmFiltrar.btnAdicionarClick(Sender: TObject);
var Conexao  ,   Criterio, Adicional,   Conexao2: String;
    Conexao_W, Criterio_W,   Valor_W, Conexao2_W: String;
begin
  //
 { Conexao     := '';
  Conexao_W   := '';
  Criterio    := '';
  Criterio_W  := '';
  Adicional   := '';
  //
  If (rbE.Enabled) And (rbE.Checked) Then
     Begin
       Conexao   := 'E';
       Conexao_W := 'And';
     End;
  If (rbOU.Enabled) And (rbOU.Checked) Then
     Begin
       Conexao   := 'OU';
       Conexao_W := 'Or';
     End;
  //
  If nbOpcoes.PageIndex = 1 Then
     Begin
       Case rbOpcoesBusca.ItemIndex Of
            0: Begin
                 Criterio   := ' = ';
                 Criterio_W := ' = ';
                 Valor_W    :=  '''' + Trim(EdValor.Text) + '''';
               End;
            1: Begin
                 Criterio   := ' contenha ';
                 Criterio_W := 'like';
                 Adicional  := ' no inicio';
                 Valor_W    := '''' + Trim(EdValor.Text) + '%''';
               End;
            2: Begin
                 Criterio   := ' contenha ';
                 Criterio_W := 'like';
                 Adicional  := ' no final';
                 Valor_W    := '''%' + Trim(EdValor.Text) + '''';
               End;
            3: Begin
                 Criterio   := ' contenha ';
                 Criterio_W := 'like';
                 Valor_W    :=  '''%' + Trim(EdValor.Text) + '%''';
               End;
       End;
       //
       If lbFiltro.Items.Count = 0 Then
          lbFiltro.Items.Add(Format('"%1s" %1s "%1s" %1s', [lbCampos.SelectedItem, Criterio, EdValor.Text, Adicional]))
       Else
          lbFiltro.Items.Add(Format('%1s "%1s" %1s "%1s" %1s', [Conexao, lbCampos.SelectedItem, Criterio, EdValor.Text, Adicional]));
       //
       If s_Sql_Where.Count = 0 Then
          s_Sql_Where.Add(Format('%1s %1s %1s', [NomeDoCampo(lbCampos.SelectedItem), Criterio_W, Valor_W]))
       Else
          s_Sql_Where.Add(Format('%1s %1s %1s %1s', [Conexao_W, NomeDoCampo(lbCampos.Item), Criterio_W, Valor_W]));
     End;
  //
  If nbOpcoes.PageIndex = 2 Then
     Begin
       //
       If rbRefEq.Checked Then
          Begin
            Criterio   := ' = ';
            Criterio_W := ' = ';
          End;
       If rbRefDif.Checked Then
          Begin
            Criterio   := ' # ';
            Criterio_W := ' <> ';
          End;
       //
       If lbFiltro.Items.Count = 0 Then
          lbFiltro.Items.Add(Format('"%1s" %1s "%1s"', [lbCampos.SelectedItem, Criterio, cmbReferencia.Text]))
       Else
          lbFiltro.Items.Add(Format('%1s "%1s" %1s "%1s"', [Conexao, lbCampos.SelectedItem, Criterio, cmbReferencia.Text]));
       //
       If s_Sql_Where.Count = 0 Then
          s_Sql_Where.Add(Format('%1s %1s %1s', [NomeDoCampo(lbCampos.SelectedItem), Criterio_W, cmbReferencia.LookupKeyValue]))
       Else
          s_Sql_Where.Add(Format('%1s %1s %1s %1s', [Conexao_W, NomeDoCampo(lbCampos.SelectedItem), Criterio_W, cmbReferencia.LookupKeyValue]));
     End;
  //
  If nbOpcoes.PageIndex = 3 Then
     Begin
       //
       If (cbNumE.Checked) Or (cbNumOU.Checked) Then
          Begin
            //
            If cbNumE.Checked Then
               Begin
                 Conexao2   := 'E';
                 Conexao2_W := 'And';
               End;
            If cbNumOU.Checked Then
               Begin
                 Conexao2   := 'OU';
                 Conexao2_W := 'Or'
               End;
            //
            If lbFiltro.Items.Count = 0 Then
               lbFiltro.Items.Add(Format('("%1s" %1s "%1s" %1s "%1s" %1s "%1s")', [lbCampos.SelectedItem, Trim(cmbCritNum.Text), edValorNum.Text, Conexao2, lbCampos.SelectedItem, Trim(cmbCritNum1.Text), edValorNum1.Text]))
            Else
               lbFiltro.Items.Add(Format('%1s ("%1s" %1s "%1s" %1s "%1s" %1s "%1s")', [Conexao_W, lbCampos.SelectedItem, Trim(cmbCritNum.Text), edValorNum.Text, Conexao2, lbCampos.SelectedItem, Trim(cmbCritNum1.Text), edValorNum1.Text]));
            //
            If s_Sql_Where.Count = 0 Then
               s_Sql_Where.Add(Format('(%1s %1s %1s %1s %1s %1s %1s)', [NomeDoCampo(lbCampos.SelectedItem), Trim(cmbCritNum.Text), edValorNum.Text, Conexao2, NomeDoCampo(lbCampos.SelectedItem), Trim(cmbCritNum1.Text), edValorNum1.Text]))
            Else
               s_Sql_Where.Add(Format('%1s (%1s %1s %1s %1s %1s %1s %1s)', [Conexao_W, NomeDoCampo(lbCampos.SelectedItem), Trim(cmbCritNum.Text), edValorNum.Text, Conexao2_W, NomeDoCampo(lbCampos.SelectedItem), Trim(cmbCritNum1.Text), edValorNum1.Text]));
          End
       Else
          Begin
            //
            If lbFiltro.Items.Count = 0 Then
               lbFiltro.Items.Add(Format('"%1s" %1s "%1s"', [lbCampos.SelectedItem, Trim(cmbCritNum.Text), edValorNum.Text]))
            Else
               lbFiltro.Items.Add(Format('%1s "%1s" %1s "%1s"', [Conexao, lbCampos.SelectedItem, Trim(cmbCritNum.Text), edValorNum.Text]));
            //
            If s_Sql_Where.Count = 0 Then
               s_Sql_Where.Add(Format('%1s %1s %1s', [NomeDoCampo(lbCampos.SelectedItem), Trim(cmbCritNum.Text), edValorNum.Text]))
            Else
               s_Sql_Where.Add(Format('%1s %1s %1s %1s', [Conexao_W, NomeDoCampo(lbCampos.SelectedItem), Trim(cmbCritNum.Text), edValorNum.Text]));
          End;
     End;
  //
  If nbOpcoes.PageIndex = 4 Then
     Begin
       //
       If (cbDateE.Checked) Or (cbDateOU.Checked) Then
          Begin
            //
            If cbDateE.Checked Then
               Begin
                 Conexao2   := 'E';
                 Conexao2_W := 'And';
               End;
            If cbDateOU.Checked Then
               Begin
                 Conexao2   := 'OU';
                 Conexao2_W := 'Or';
               End;
            //
            If lbFiltro.Items.Count = 0 Then
               lbFiltro.Items.Add(Format('("%1s" %1s "%1s" %1s "%1s" %1s "%1s")', [lbCampos.SelectedItem, Trim(cmbCritDate.Text), edDate.Text, Conexao2, lbCampos.SelectedItem, Trim(cmbCritDate1.Text), edDate1.Text]))
            Else
               lbFiltro.Items.Add(Format('%1s ("%1s" %1s "%1s" %1s "%1s" %1s "%1s")', [Conexao, lbCampos.SelectedItem, Trim(cmbCritDate.Text), edDate.Text, Conexao2, lbCampos.SelectedItem, Trim(cmbCritDate1.Text), edDate1.Text]));
            //
            If s_Sql_Where.Count = 0 Then
               s_Sql_Where.Add(Format('(%1s %1s %1s %1s %1s %1s %1s)', [NomeDoCampo(lbCampos.SelectedItem), Trim(cmbCritDate.Text), edDate.Text, Conexao2_W, NomeDoCampo(lbCampos.SelectedItem), Trim(cmbCritDate1.Text), edDate1.Text]))
            Else
               s_Sql_Where.Add(Format('%1s (%1s %1s %1s %1s %1s %1s %1s)', [Conexao_W, NomeDoCampo(lbCampos.SelectedItem), Trim(cmbCritDate.Text), edDate.Text, Conexao2_W, NomeDoCampo(lbCampos.SelectedItem), Trim(cmbCritDate1.Text), edDate1.Text]));
          End
       Else
          Begin
            //
            If lbFiltro.Items.Count = 0 Then
               lbFiltro.Items.Add(Format('"%1s" %1s "%1s"', [lbCampos.SelectedItem, Trim(cmbCritDate.Text), edDate.Text]))
            Else
               lbFiltro.Items.Add(Format('%1s "%1s" %1s "%1s"', [Conexao, lbCampos.SelectedItem, Trim(cmbCritDate.Text), edDate.Text]));
            //
            If s_Sql_Where.Count = 0 Then
               s_Sql_Where.Add(Format('%1s %1s %1s', [NomeDoCampo(lbCampos.SelectedItem), Trim(cmbCritDate.Text), edDate.Text]))
            Else
               s_Sql_Where.Add(Format('%1s %1s %1s %1s', [Conexao_W, NomeDoCampo(lbCampos.SelectedItem), Trim(cmbCritDate.Text), edDate.Text]));
          End;
     End;
  //
  lbCampos.ItemIndex := -1;
  nbOpcoes.PageIndex := 0;   }
end;

procedure TFrmFiltrar.lbCamposClick(Sender: TObject);
begin
  //  Ao selecionar o campo, deverá saber de que tipo de filtragem se trata
  Prepara_Filtragem;
end;

procedure TFrmFiltrar.nbOpcoesPageChanged(Sender: TObject);
begin
 { If nbOpcoes.PageIndex <> 0 Then
     Begin
       btnAdicionar.Enabled := True;
       If lbFiltro.Items.Count > 0 Then
          Begin
            rbE.Enabled := True;
            rbOU.Enabled := True;
          End;
     End
  Else
     Begin
       //
       btnAdicionar.Enabled := False;
       rbE.Enabled := False;
       rbOU.Enabled := False;
       //
       Referencia.Close;
       Referencia.UnPrepare;
     End; }
end;

procedure TFrmFiltrar.FormCreate(Sender: TObject);
begin
  //
  nbOpcoes.PageIndex := 0;
  //
  s_Sql_Where := TStringList.Create;
  //
  s_Sql_Where.Add('AND (');
end;

procedure TFrmFiltrar.lbFiltroClick(Sender: TObject);
begin
  If lbFiltro.ItemIndex > -1 Then
     btnRemover.Enabled := True
  Else
     btnRemover.Enabled := False;
end;

procedure TFrmFiltrar.btnRemoverClick(Sender: TObject);
Var i: Integer;
begin
  //
  i := lbFiltro.ItemIndex;
  If i < (lbFiltro.Items.Count - 1) Then
     Begin
       //
       If Copy(lbFiltro.Items.Strings[i + 1], 1, 2) = 'E ' Then
          lbFiltro.Items.Strings[i + 1] := Copy(lbFiltro.Items.Strings[i + 1], 3, Length(lbFiltro.Items.Strings[i + 1]));
       If Copy(lbFiltro.Items.Strings[i + 1], 1, 3) = 'OU ' Then
          lbFiltro.Items.Strings[i + 1] := Copy(lbFiltro.Items.Strings[i + 1], 4, Length(lbFiltro.Items.Strings[i + 1]));
       //
       If Copy(s_Sql_Where[i + 2], 1, 4) = 'And ' Then
          s_Sql_Where[i + 2] := Copy(s_Sql_Where[i + 2], 5, Length(s_Sql_Where[i + 2]));
       If Copy(s_Sql_Where[i + 2], 1, 3) = 'Or ' Then
          s_Sql_Where[i + 2] := Copy(s_Sql_Where[i + 2], 4, Length(s_Sql_Where[i + 2]));
     End;
  //
  s_Sql_Where.Delete(lbFiltro.ItemIndex + 1);
  //
  lbFiltro.Items.Delete(lbFiltro.ItemIndex);
  //
  lbFiltro.OnClick(lbFiltro);
end;

procedure TFrmFiltrar.btnLimparClick(Sender: TObject);
begin
  //
  lbFiltro.Items.Clear;
  //
  s_Sql_Where.Clear;
  s_Sql_Where.Add('AND (');
  //
  nbOpcoes.PageIndex := 0;
end;

procedure TFrmFiltrar.EdValorKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmFiltrar.RzCheckBox1KeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 Then
     Perform(WM_NEXTDLGCTL, 0, 0);
end;

procedure TFrmFiltrar.cbNumEChange(Sender: TObject);
begin
  //
  If cbNumE.Checked Then
     cbNumOU.Checked := False;
  //
  Habilita_2o_Criterio;
end;

procedure TFrmFiltrar.cbNumOUChange(Sender: TObject);
begin
  //
  If cbNumOU.Checked Then
     cbNumE.Checked := False;
  //
  Habilita_2o_Criterio;
end;

procedure TFrmFiltrar.cbDateEChange(Sender: TObject);
begin
  //
  If cbDateE.Checked Then
     cbDateOU.Checked := False;
  //
  Habilita_2o_Criterio;
end;

procedure TFrmFiltrar.cbDateOUChange(Sender: TObject);
begin
  //
  If cbDateOU.Checked Then
     cbDateE.Checked := False;
  //
  Habilita_2o_Criterio;
end;

procedure TFrmFiltrar.BtnFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmFiltrar.lbFiltroDblClick(Sender: TObject);
begin
  MessageDlg(s_Sql_Where.Text,MtInformation,[MbOk],0);
end;

end.
