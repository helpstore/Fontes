unit Seleciona_Caixas_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxEditor, dxExEdtr, dxDBEdtr, dxDBELib, StdCtrls, dxCntner, dxEdLib,
  Buttons, Grids, DBGrids, Db, ExtCtrls,  ActnList, IBQuery,
  IBCustomDataSet, cxGraphics, cxControls, cxLookAndFeels,
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
  TFrmSelecionaCaixas = class(TForm)
    DsCaixa: TDataSource;
    DsUsuario: TDataSource;
    PnClient: TPanel;
    lblsenha: TcxLabel;
    lbluser: TcxLabel;
    cmbUsuario: TdxLookupEdit;
    edSenha: TdxEdit;
    GRID: TDBGrid;
    ActLista: TActionList;
    ActOk: TAction;
    ActCancelar: TAction;
    Caixas_Usuario: TIBDataSet;
    Caixas_UsuarioCNPJ: TIBStringField;
    Caixas_UsuarioCONTA: TIntegerField;
    Caixas_UsuarioUSUARIO: TIntegerField;
    Caixas_UsuarioNome: TStringField;
    Caixas: TIBDataSet;
    CaixasCHEQUE: TFloatField;
    CaixasCNPJ: TIBStringField;
    CaixasCONTA: TIntegerField;
    CaixasDINHEIRO: TFloatField;
    CaixasSALDO_ANTERIOR: TFloatField;
    CaixasTICKET: TFloatField;
    CaixasUSUARIO: TIntegerField;
    CaixasDATA: TDateTimeField;
    CaixasNome: TStringField;
    SelUsuario: TIBQuery;
    SelUsuarioCODIGO: TIntegerField;
    SelUsuarioLOGIN: TIBStringField;
    SelUsuarioNOME: TIBStringField;
    SelUsuarioPERFIL: TIntegerField;
    SelUsuarioSENHA: TIBStringField;
    Caixas_UsuarioLogin: TStringField;
    Panel1: TPanel;
    BtnOk: TcxButton;
    btnCancelar: TcxButton;
    Shape1: TShape;
    Usuario_Caixa: TIBQuery;
    Usuario_CaixaCNPJ: TIBStringField;
    Usuario_CaixaCODIGO: TIntegerField;
    Usuario_CaixaCONTA_DESCONTOS: TIntegerField;
    Usuario_CaixaCONTA_DIFERENCA: TIntegerField;
    Usuario_CaixaVENDEDOR: TIntegerField;
    Caixas_UsuarioTURNO: TIntegerField;
    CaixasTURNO: TIntegerField;
    ActAbreCaixa: TAction;
    BtnAbreCaixa: TcxButton;
    procedure edSenhaExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ActCancelarExecute(Sender: TObject);
    procedure DsCaixaDataChange(Sender: TObject; Field: TField);
    procedure cmbUsuarioKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure Caixas_UsuarioAfterClose(DataSet: TDataSet);
    procedure Caixas_UsuarioBeforeOpen(DataSet: TDataSet);
    procedure ActOkExecute(Sender: TObject);
    procedure GRIDKeyPress(Sender: TObject; var Key: Char);
    procedure Usuario_CaixaBeforeOpen(DataSet: TDataSet);
    procedure cmbUsuarioEnter(Sender: TObject);
    procedure ActAbreCaixaExecute(Sender: TObject);
  private
    { Private declarations }
    Function  VERIFICASENHA(Login: String; Senha: String): Boolean ;
    procedure LISTACAIXAS ( Usuario: Integer; Conta: Integer ) ;
  public
    { Public declarations }
    OpcaoCaixa: String;
  end;

var
  FrmSelecionaCaixas: TFrmSelecionaCaixas;

implementation

uses Application_DM,
     Funcoes,
     MensagemClassificacao_Form,
     AberturaCaixas_Form,
     Main,
     Seguranca_DM,
     Plano_DM,
     Caixa_Dm;


{$R *.DFM}

procedure TFrmSelecionaCaixas.edSenhaExit(Sender: TObject);
begin
  If Trim(cmbUsuario.Text) = '' Then
     Begin
       Showmessage('Selecione o Usuário !');
       cmbUsuario.setfocus ;
       Exit;
     End;

  If ( edSenha.Text = dmapp.PDV_SENHA )
  then begin
       ListaCaixas(Caixas_UsuarioUSUARIO.Value, Caixas_UsuarioCONTA.Value);
       ActAbreCaixa.Enabled := True ;
  end
  else begin
       If ( VerificaSenha(Caixas_UsuarioLogin.Value, edSenha.Text))
       Then Begin
            ListaCaixas(Caixas_UsuarioUSUARIO.Value, Caixas_UsuarioCONTA.Value);
            ActAbreCaixa.Enabled := True ;
       end
       else begin
            ActAbreCaixa.Enabled := False ;
       end;
  end;
end;

procedure TFrmSelecionaCaixas.ListaCaixas( Usuario: Integer; Conta: Integer );
begin
  // LISTA OS CAIXAS
  Caixas.Close ;
  //
  Caixas.SelectSQL.Clear ;
  Caixas.SelectSQL.Add ( ' select CHEQUE, CNPJ, CONTA, DATA, DINHEIRO, SALDO_ANTERIOR, TICKET, USUARIO, TURNO from FAT_CAIXAS ' );
  Caixas.SelectSQL.Add ( ' where CNPJ = :CNPJ AND FECHADO = :OP                                                        ' );
  Caixas.SelectSQL.Add ( ' and USUARIO = :Usuario and Conta = :Conta and Cnpj = :CNPJ ORDER BY DATA                    ' );
  //
  Caixas.Params.ByName ('Cnpj'   ).AsString  := DmaPP.Cnpj ;
  Caixas.Params.ByName ('Usuario').AsInteger := Usuario    ;
  Caixas.Params.ByName ('Conta'  ).AsInteger := Conta      ;
  Caixas.Params.ByName ('Op'     ).AsString  := OpcaoCaixa ;
  //
  Caixas.Prepare;
  Caixas.Open;
  
  Grid.Setfocus;
end;

Function  TFrmSelecionaCaixas.VERIFICASENHA(Login: String; Senha: String): Boolean;
begin
  If DMApp.AutenticarCaixa(Login, Encrypt(Senha)) Then
     Result := True  // se o Login ocorreu corretamente
  Else
     Begin
       //
       ShowMessage('Login inválido, verifique Usuário e Senha !');
       //
       cmbUsuario.SetFocus ;
       //
       Caixas.Close ;
       BtnOk.Visible := False ;
       BtnCancelar.Visible := False ;
       Result := False ;
     End;
end;


procedure TFrmSelecionaCaixas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     //
     Caixas_Usuario.Close ;

     Caixas.Close         ;

     SelUsuario.Close     ;

     //
     Action := Cafree ;
     FrmSelecionaCaixas := Nil;
end;

procedure TFrmSelecionaCaixas.ActCancelarExecute(Sender: TObject);
begin
     With DMApp Do
     Begin
          DataCaixa     :=  DmApp.Data_Servidor ;
          UsuarioCaixa  :=  0    ;
          NomeCaixa     :=  ''   ;
          ContaCaixa    :=  0    ;
          ModalResult := MrOk;
     End;

     ModalResult := MrCancel ;
     Close;
end;

procedure TFrmSelecionaCaixas.DsCaixaDataChange(Sender: TObject;  Field: TField);
begin
  If DsCaixa.Dataset.RecordCount > 0 Then
     Begin
       BtnOk.Visible  := true;
       BtnCancelar.Visible := true;
     End
  Else
     Begin
       BtnOk.Visible  := false;
       BtnCancelar.Visible := false;
     End;
end;

procedure TFrmSelecionaCaixas.cmbUsuarioKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmSelecionaCaixas.FormShow(Sender: TObject);
begin
  IniciaComponentes ( Self as TForm );
  Caixas_Usuario.Close ;
  Caixas_Usuario.Open ;
  SelUsuario.Open     ;
end;

procedure TFrmSelecionaCaixas.Caixas_UsuarioAfterClose(DataSet: TDataSet);
begin
  If (DataSet is TIBQuery) Then
     (Dataset as TIBQuery).UnPrepare;
  If (DataSet is TIBDataSet) Then
     (Dataset as TIBDataset).UnPrepare;
end;

procedure TFrmSelecionaCaixas.Caixas_UsuarioBeforeOpen(DataSet: TDataSet);
begin
  If (DataSet is TIBQuery) Then
     Begin
       (DataSet as TIBQuery).ParamByName('CNPJ').asString := DMApp.Cnpj;
       (Dataset as TIBQuery).Prepare;
     End;
  If (DataSet is TIBDataset) Then
     Begin
       (DataSet as TIBDataSet).ParamByName('CNPJ').asString := DMApp.Cnpj;
       (Dataset as TIBDataSet).Prepare;
     End;
end;

procedure TFrmSelecionaCaixas.ActOkExecute(Sender: TObject);
begin
  //
  If btnOk.Visible Then
     Begin
       If Caixas.RecordCount = 0
       Then Begin
            ShowMessage('Não Há Caixas Abertos!');
            cmbUsuario.SetFocus ;
       End
       Else Begin
             With DMApp Do
             Begin

                   DataCaixa        :=  FrmSelecionaCaixas.CaixasDATA.Value              ;
                   UsuarioCaixa     :=  FrmSelecionaCaixas.CaixasUSUARIO.Value           ;
                   NomeCaixa        :=  FrmSelecionaCaixas.Caixas_UsuarioLogin.Value     ;
                   NomeCaixaCompleto:=  FrmSelecionaCaixas.Caixas_UsuarioNome.Value      ;
                   ContaCaixa       :=  FrmSelecionaCaixas.Caixas_UsuarioCONTA.Value     ;
                   TurnoCaixa       :=  CaixasTURNO.Value                                ;

                   //Contabilidade
                   Usuario_Caixa.Close ;
                   Usuario_Caixa.ParamByName ( 'CODIGO' ).AsInteger := UsuarioCaixa ;
                   Usuario_Caixa.Open;

                   Conta_Dif_Caixa  :=  FrmSelecionaCaixas.Usuario_CaixaConta_Diferenca.Value ;
                   Conta_Desc_Caixa :=  FrmSelecionaCaixas.Usuario_CaixaConta_Descontos.Value ;


                   Vendedor_Caixa:= 0;

                   Usuario_Caixa.Close;

                   ModalResult := MrOk;
                 End;
          End;
     End;
end;

procedure TFrmSelecionaCaixas.GRIDKeyPress(Sender: TObject; var Key: Char);
begin
     IF KEY = #13
     THEN
         ActOk.EXECUTE ;
end;

procedure TFrmSelecionaCaixas.Usuario_CaixaBeforeOpen(DataSet: TDataSet);
begin
  If (DataSet is TIBQuery) Then
     Begin
       (DataSet as TIBQuery).ParamByName('CNPJ').asString := DMApp.Cnpj;
       (Dataset as TIBQuery).Prepare;
     End;
  If (DataSet is TIBDataset) Then
     Begin
       (DataSet as TIBDataSet).ParamByName('CNPJ').asString := DMApp.Cnpj;
       (Dataset as TIBDataSet).Prepare;
     End;
end;

procedure TFrmSelecionaCaixas.cmbUsuarioEnter(Sender: TObject);
begin
     ActAbreCaixa.Enabled := False ;
end;

procedure TFrmSelecionaCaixas.ActAbreCaixaExecute(Sender: TObject);
begin
     If cmbUsuario.Text = ''
     then begin
          ShowMessage('Selecione o Usuário!');
          cmbUsuario.SetFocus ;
     end
     else begin
          { * * * * * }
          If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmAberturaCaixas', True)) Then
          Exit;

          { * * * * * }
          If FrmAberturaCaixas = Nil Then
          Begin
               //
               Application.ProcessMessages;

               //
               if DMSeguranca <> Nil
               then
                   DMSeguranca.TAG := DMSeguranca.Tag + 1
               Else
                   DMSeguranca := TDMSeguranca.Create(Self);

               if DMCaixa <> Nil
               then
                   DMCaixa.TAG := DMCaixa.Tag + 1
               Else
                   DMCaixa := TDMCaixa.Create(Self);

               FrmAberturaCaixas := TFrmAberturaCaixas.Create(Self);
               FrmAberturaCaixas.Usuario := cmbUsuario.lookupkeyvalue ;

               //
               FrmAberturaCaixas.Showmodal ;
               FrmAberturaCaixas.Free      ;
               FrmAberturaCaixas := Nil    ;

               ListaCaixas(Caixas_UsuarioUSUARIO.Value, Caixas_UsuarioCONTA.Value);
          End;
     end;
end;

end.
