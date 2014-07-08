  unit Localizar_Conta_Nota;
                                 
interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Grids, DBGrids, Buttons, ExtCtrls, db,
    ActnList,
  dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid, dxCntner,dxExEdtr,
  dxBar, dxBarDBNav, dxEditor, dxDBEdtr, dxDBELib, dxEdLib,
   cxPropertiesStore, cxGraphics, cxControls, cxLookAndFeels,
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
  TFrm_Localizar_ContaNota = class(TForm)
    pnlClient: TPanel;
    Act: TActionList;
    ActCancelar: TAction;
    GRID: TdxDBGrid;
    DSource: TDataSource;
    LblTitulo: TcxLabel;
    b2: TBevel;
    ActLookup: TAction;
    Panel1: TPanel;
    BTNCANCELA: TcxButton;
    RxLabel1: TcxLabel;
    ActNovaConta: TAction;
    RzBitBtn1: TcxButton;
    GRIDAGENCIA: TdxDBGridMaskColumn;
    GRIDBANCO: TdxDBGridMaskColumn;
    GRIDCONTA: TdxDBGridMaskColumn;
    GRIDNOME_BANCO: TdxDBGridMaskColumn;
    DsBanco: TDataSource;
    cmbBanco: TdxDBLookupEdit;
    EdConta: TdxDBEdit;
    BtnBanco: TcxButton;
    RxLabel2: TcxLabel;
    RxLabel3: TcxLabel;
    RxLabel4: TcxLabel;
    DsConta: TDataSource;
    BtnCadastrar: TcxButton;
    RxLabel5: TcxLabel;
    ActSelecionar: TAction;
    lbldados: TcxLabel;
    EdPredate: TdxDateEdit;
    RxLabel6: TcxLabel;
    BtnTaerceiro: TcxButton;
    CmbBancoTerceiro: TdxLookupEdit;
    RxLabel7: TcxLabel;
    BtnBancoTerceiro: TcxButton;
    RxLabel8: TcxLabel;
    EdContaTerceiro: TdxEdit;
    RxLabel9: TcxLabel;
    RxLabel10: TcxLabel;
    BtnCadastraTerceiro: TcxButton;
    ActTerceiros: TAction;
    ActEnter: TAction;
    EdCheque: TdxMaskEdit;
    EdAgenciaTerceiro: TdxMaskEdit;
    EDAGENCIA: TdxDBMaskEdit;
    EDCHEQUETERCEIRO: TdxMaskEdit;
    BtnConta: TcxButton;
    GRIDColumn5: TdxDBGridColumn;
    GRIDColumn6: TdxDBGridColumn;
    RxLabel11: TcxLabel;
    EDDVCONTA: TdxDBEdit;
    RxLabel12: TcxLabel;
    EDDVAGENCIA: TdxDBEdit;
    DVCONTATERCEIRO: TdxEdit;
    stgFrm_Localizar_ContaNota: TcxPropertiesStore;
    procedure FormShow(Sender: TObject);
    procedure GridDblClick(Sender: TObject);
    procedure ActCancelarExecute(Sender: TObject);
    procedure pnlClientResize(Sender: TObject);
    procedure ActLookupExecute(Sender: TObject);
    procedure cmbBancoEnter(Sender: TObject);
    procedure cmbBancoExit(Sender: TObject);
    procedure cmbBancoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DsContaStateChange(Sender: TObject);
    procedure ActNovaContaExecute(Sender: TObject);
    procedure BtnCadastrarClick(Sender: TObject);
    procedure ActSelecionarExecute(Sender: TObject);
    procedure EdChequeEnter(Sender: TObject);
    procedure EdChequeExit(Sender: TObject);
    procedure EdPredateEnter(Sender: TObject);
    procedure EDCHEQUETERCEIROEnter(Sender: TObject);
    procedure Habilitar ( Opcao: String );
    procedure BtnCadastraTerceiroClick(Sender: TObject);
    procedure ActTerceirosExecute(Sender: TObject);
    procedure EdPredateKeyPress(Sender: TObject; var Key: Char);
    procedure ActEnterExecute(Sender: TObject);
    procedure BtnBancoClick(Sender: TObject);
    procedure BtnBancoTerceiroClick(Sender: TObject);
    procedure BtnContaClick(Sender: TObject);

    private
    { Private declarations }

    function  GetTrecho: String;

  public
    { Public declarations }
    CPF_CNPJ, Banco, Agencia, Conta, DV_Agencia, DV_Conta, ValorCheque : String;

    property CampTrecho: String Read GetTrecho ;

  end;

var
  Frm_Localizar_ContaNota: TFrm_Localizar_ContaNota;

implementation

uses Cadastros_DM,
     Application_DM,
     Funcoes,
     Vendas_Dm,
     Bancos_Form,
     Altera_ContasPessoas_Form;

{$R *.DFM}

procedure TFrm_Localizar_ContaNota.Habilitar ( Opcao: String );
begin
     If Opcao = 'P'
     THEN BEGIN
          CmbBancoTerceiro.Enabled    := false ;
          EdAgenciaTerceiro.Enabled   := false ;
          EdContaTerceiro.Enabled     := false ;
          EDCHEQUETERCEIRO.Enabled    := false ;
          BtnCadastraTerceiro.Enabled := false ;
          BtnBancoTerceiro.Enabled    := false ;
          DVCONTATERCEIRO.Enabled     := false ;
          GRID.Enabled                := false ;

          cmbBanco.Enabled            := true ;
          EdAgencia.Enabled           := true ;
          EdConta.Enabled             := true ;
          BtnCadastrar.Enabled        := true ;
          EDDVAGENCIA.Enabled         := true ;
          EDDVCONTA.Enabled           := true ;
     END;

     If Opcao = 'T'
     THEN BEGIN
          CmbBancoTerceiro.Enabled    := true ;
          EdAgenciaTerceiro.Enabled   := true ;
          EdContaTerceiro.Enabled     := true ;
          EDCHEQUETERCEIRO.Enabled    := true ;
          BtnCadastraTerceiro.Enabled := true ;
          BtnBancoTerceiro.Enabled    := true ;
          DVCONTATERCEIRO.Enabled     := true ;

          GRID.Enabled                := false ;

          cmbBanco.Enabled            := false ;
          EdAgencia.Enabled           := false ;
          EdConta.Enabled             := false ;
          BtnCadastrar.Enabled        := false ;
          EDDVAGENCIA.Enabled         := FALSE ;
          EDDVCONTA.Enabled           := FALSE ;
     END;
end;

function TFrm_Localizar_ContaNota.GetTrecho: String ;
begin
     Result := ( EdCheque.text ) ;
end;

procedure TFrm_Localizar_ContaNota.FormShow(Sender: TObject);
begin
     If Not DSource.DataSet.active
     Then
         DSource.DataSet.Open ;

     ActiveControl := GRID;
end;

procedure TFrm_Localizar_ContaNota.GridDblClick(Sender: TObject);
begin
     ModalResult:=mrOk;
end;

procedure TFrm_Localizar_ContaNota.ActCancelarExecute(Sender: TObject);
begin
     ModalResult:=mrCancel;
end;

procedure TFrm_Localizar_ContaNota.pnlClientResize(Sender: TObject);
begin
  b2.Width := pnlClient.Width - 17;
end;

procedure TFrm_Localizar_ContaNota.ActLookupExecute(Sender: TObject);
begin
     If Frm_Localizar_ContaNota.ActiveControl = cmbBanco Then
     BtnBanco.OnClick(BtnBanco);

     If Frm_Localizar_ContaNota.ActiveControl = CmbBancoTerceiro Then
     BtnBancoTerceiro.OnClick(BtnBancoTerceiro);

     If Frm_Localizar_ContaNota.ActiveControl = GRID Then
     BtnConta.OnClick(BtnConta);
end;

procedure TFrm_Localizar_ContaNota.cmbBancoEnter(Sender: TObject);
begin
     CORFUNDO( SENDER );
end;

procedure TFrm_Localizar_ContaNota.cmbBancoExit(Sender: TObject);
begin
     //TROCA A COR PARA A COR SELECIONADA
     TIRACORFUNDO( SENDER );
end;

procedure TFrm_Localizar_ContaNota.cmbBancoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if (key=VK_RETURN) OR (Key=VK_DOWN) Then
        Perform(WM_NEXTDLGCTL, 0, 0);
     if (key=VK_UP) then
        Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrm_Localizar_ContaNota.DsContaStateChange(Sender: TObject);
begin
     IF ( DsConta.State in [ dsinsert, dsedit ] )
     THEN BEGIN
          RxLabel4.Enabled     := TRUE ;
          cmbBanco.Enabled     := TRUE ;
          BtnBanco.Enabled     := TRUE ;
          RxLabel3.Enabled     := TRUE ;
          EdAgencia.Enabled    := TRUE ;
          RxLabel2.Enabled     := TRUE ;
          EdConta.Enabled     := TRUE ;
          BtnCadastrar.Enabled := TRUE ;
     END
     ELSE BEGIN
          RxLabel4.Enabled     := FALSE ;
          cmbBanco.Enabled     := FALSE ;
          BtnBanco.Enabled     := FALSE ;
          RxLabel3.Enabled     := FALSE ;
          EdAgencia.Enabled    := FALSE ;
          RxLabel2.Enabled     := FALSE ;
          EdConta.Enabled     := FALSE ;
          BtnCadastrar.Enabled := FALSE ;
     END;
end;

procedure TFrm_Localizar_ContaNota.ActNovaContaExecute(Sender: TObject);
begin
     If Not ( DsConta.DataSet.State in [ dsinsert, dsedit ] )
     then begin
          DsConta.DataSet.Append ;
     end;

     cmbBanco.SetFocus ;
     Habilitar ( 'P' );
end;

procedure TFrm_Localizar_ContaNota.BtnCadastrarClick(Sender: TObject);
begin
     If ( DsConta.DataSet.State in [ dsinsert, dsedit ] )
     then begin
          DsConta.DataSet.Post ;

          BANCO      := DmVendas.Contas_PessoasBANCO.VALUE   ;
          CONTA      := DmVendas.Contas_PessoasCONTA.VALUE   ;
          AGENCIA    := DmVendas.Contas_PessoasAGENCIA.VALUE ;
          DV_AGENCIA := DmVendas.Contas_PessoasDV_AGENCIA.VALUE ;
          DV_CONTA   := DmVendas.Contas_PessoasDV_CONTA.VALUE ;
          AGENCIA    := DmVendas.Contas_PessoasAGENCIA.VALUE ;

          lbldados.Caption := 'Banco = '+ Banco + ' Agência = ' + Agencia + ' Conta = ' + Conta ;

          DmVendas.SelConta.Close ;
          DmVendas.SelConta.Open  ;

          DmVendas.SelConta.Locate ('CONTA', CONTA, []) ;

          GRID.Enabled := TRUE ;
          GRID.SetFocus ;
     end;
end;

procedure TFrm_Localizar_ContaNota.ActSelecionarExecute(Sender: TObject);
Var
   Chq: String;
begin
     If trim(EdCheque.text) = '-'
     THEN BEGIN
          MessageDlg('Digite o Número do Cheque!', mtError, [mbOK], 0);
          EdCheque.SetFocus ;
     END
     ELSE BEGIN
          If (( Banco <> '' ) and ( Conta <> '' ) and ( Agencia <> '' ))
          then begin
               Chq := EdCheque.text;

               While Length(Chq) < 8 do
               begin
                    If Length(Chq) = 6
                    then begin
                         Chq :=  Chq + '-';
                    end;

                    If Length(Chq) < 6
                    then begin
                         Chq := '0' + Chq ;
                    end;

                    If Length(Chq) = 7
                    then begin
                         Chq := Chq + '0' ;
                    end;
               end;

               chq := copy( chq, 1, 6 );

               IF DMApp.Verifica_Cheque( Banco, Conta, Chq ) = 'S'
               then begin
                    MessageDlg('Cheque Duplicado, Verifique!', mtError, [mbOK], 0);
                    EdCheque.text ;
               end
               else begin
                    ModalResult:=mrOk;
               end;
          end
          else begin
               MessageDlg('Selecione Uma Conta Válida!', mtError, [mbOK], 0);
               GRID.SetFocus ;
          END;
     END;
end;

procedure TFrm_Localizar_ContaNota.EdChequeEnter(Sender: TObject);
begin
     CORFUNDO( SENDER );

     IF ((BANCO = '') OR (CONTA = '') OR (AGENCIA = ''))
     THEN BEGIN
          MessageDlg('Selecione Uma Conta Válida', mtError, [mbOK], 0);
          grid.SetFocus ;
     END
end;

procedure TFrm_Localizar_ContaNota.EdChequeExit(Sender: TObject);
begin
     TIRACORFUNDO( SENDER );
end;

procedure TFrm_Localizar_ContaNota.EdPredateEnter(Sender: TObject);
begin
     CORFUNDO( SENDER );

     IF ((BANCO = '') OR (CONTA = '') OR (AGENCIA = ''))
     THEN BEGIN
          MessageDlg('Selecione Uma Conta Válida', mtError, [mbOK], 0);
          grid.SetFocus ;
     END ;

     IF ( trim(EDCHEQUE.text) = '-' )
     THEN BEGIN
          MessageDlg('Digite um Número de Cheque Válido', mtError, [mbOK], 0);
          EDCHEQUE.SetFocus ;
     END ;      
end;

procedure TFrm_Localizar_ContaNota.EDCHEQUETERCEIROEnter(Sender: TObject);
begin
     CORFUNDO( SENDER );

     IF ((BANCO = '') OR (CONTA = '') OR (AGENCIA = ''))
     THEN BEGIN
          MessageDlg('Selecione Uma Conta Válida', mtError, [mbOK], 0);
          CmbBancoTerceiro.SetFocus ;
     END;
end;

procedure TFrm_Localizar_ContaNota.BtnCadastraTerceiroClick(Sender: TObject);
Var
   Chq: String;
begin
     If ( DsConta.DataSet.State in [ dsinsert, dsedit ] )
     then begin
          DsConta.DataSet.CANCEL ;
     end;

     BANCO      := CmbBancoTerceiro.LOOKUPKEYVALUE   ;
     CONTA      := EdContaTerceiro.TEXT              ;
     AGENCIA    := copy(EdAgenciaTerceiro.TEXT,1,4)  ;
     DV_AGENCIA := copy(EdAgenciaTerceiro.TEXT,6,1)  ;
     DV_CONTA   := COPY(DVCONTATERCEIRO.TEXT,1,1)    ;

     lbldados.Caption := 'Banco = '+ Banco + ' Agência = ' + Agencia + ' Conta = ' + Conta ;

     IF ((BANCO = '') OR (CONTA = '') OR (AGENCIA = ''))
     THEN BEGIN
          MessageDlg('Selecione Uma Conta Válida!', mtError, [mbOK], 0);
          CmbBancoTerceiro.SetFocus ;
     end
     else begin
          If (TRIM(EDCHEQUETERCEIRO.TEXT) = '-')
          then begin
               MessageDlg('Digite o Número do Cheque!', mtError, [mbOK], 0);
               EDCHEQUETERCEIRO.SetFocus ;
               exit;
          end
          else begin
               Chq := EdCheque.text;

               While Length(Chq) < 8 do
               begin
                    If Length(Chq) = 6
                    then begin
                         Chq :=  Chq + '-';
                    end;

                    If Length(Chq) < 6
                    then begin
                         Chq := '0' + Chq ;
                    end;

                    If Length(Chq) = 7
                    then begin
                         Chq := Chq + '0' ;
                    end;
               end ;

               chq := copy( chq, 1, 6 );

               IF DMApp.Verifica_Cheque( Banco, Conta, Chq ) = 'S'
               then begin
                    MessageDlg('Cheque Duplicado, Verifique!', mtError, [mbOK], 0);
                    EdCheque.text ;
               end
               else begin
                    ModalResult:=mrOk;
                    exit;
               end;
          end;
     end;
end;

procedure TFrm_Localizar_ContaNota.ActTerceirosExecute(Sender: TObject);
begin
     If ( DsConta.DataSet.State in [ dsinsert, dsedit ] )
     then begin
          DsConta.DataSet.Cancel ;
     end;

     Habilitar ( 'T' );

     CmbBancoTerceiro.SetFocus ;
end;

procedure TFrm_Localizar_ContaNota.EdPredateKeyPress(Sender: TObject; var Key: Char);
Var
   Chq: String;
begin
     IF KEY = #13
     THEN BEGIN
          IF ((BANCO = '') OR (CONTA = '') OR (AGENCIA = ''))
          THEN BEGIN
               MessageDlg('Selecione Uma Conta Válida!', mtError, [mbOK], 0);
               GRID.SetFOCUS ;
          end
          else begin
               If trim(edcheque.text) = '-'
               then begin
                    MessageDlg('Digite o Número do Cheque!', mtError, [mbOK], 0);
                    EdCheque.SetFocus ;
                    exit;
               end
               else begin
                    IF ((EdPredate.Text = '  /  /  ' ) OR (EdPredate.Text = '  /  /    ' ))
                    THEN BEGIN
                         MessageDlg('Digite a Data de Pré-Date !', mtError, [mbOK], 0);
                         EdPredate.Date := DmApp.Data_Servidor ;
                         EdPredate.SetFocus ;
                         exit;
                    END
                    ELSE BEGIN
                         Chq := EdCheque.text;

                         While Length(Chq) < 8 do
                         begin
                              If Length(Chq) = 6
                              then begin
                                   Chq :=  Chq + '-';
                              end;

                              If Length(Chq) < 6
                              then begin
                                   Chq := '0' + Chq ;
                              end;

                              If Length(Chq) = 7
                              then begin
                                   Chq := Chq + '0' ;
                              end;
                         end ;

                         chq := copy( chq, 1, 6 );

                         IF DMApp.Verifica_Cheque( Banco, Conta, Chq ) = 'S'
                         then begin
                              MessageDlg('Cheque Duplicado, Verifique!', mtError, [mbOK], 0);
                              EdCheque.text ;
                         end
                         else begin
                              Modalresult := mrok ;
                         END;
                    END;
               end;
          end;
     END;
end;

procedure TFrm_Localizar_ContaNota.ActEnterExecute(Sender: TObject);
Var
   Chq: String;
begin
     If Frm_Localizar_ContaNota.ActiveControl = GRID
     then begin
          If DmVendas.SelContaCONTA.IsNull
          then begin
               MessageDlg('Selecione Uma Conta Válida!', mtError, [mbOK], 0);
               GRID.SetFOCUS ;
          end
          else begin
               BANCO      := DmVendas.SelContaBANCO.VALUE   ;
               CONTA      := DmVendas.SelContaCONTA.VALUE   ;
               AGENCIA    := DmVendas.SelContaAGENCIA.VALUE ;
               DV_AGENCIA := DmVendas.SelContaDV_AGENCIA.VALUE ;
               DV_CONTA   := DmVendas.SelContaDV_CONTA.VALUE ;

               lbldados.Caption := 'Banco = '+ Banco + ' Agência = ' + Agencia + ' Conta = ' + Conta ;

               EdCheque.Clear ;
               EdCheque.SetFocus   ;
          end;
     end
     ELSE BEGIN
          IF Frm_Localizar_ContaNota.ActiveControl = EdCheque
          THEN BEGIN
               IF ((BANCO = '') OR (CONTA = '') OR (AGENCIA = ''))
               THEN BEGIN
                    MessageDlg('Selecione Uma Conta Válida!', mtError, [mbOK], 0);
                    GRID.SetFOCUS ;
               end
               else begin
                    If (trim(edcheque.text) = '-') OR (LENGTH(trim(edcheque.text)) < 8)
                    then begin
                         MessageDlg('Digite o Número do Cheque!', mtError, [mbOK], 0);
                         EdCheque.SetFocus ;
                         exit;
                    end
                    else begin
                         If (trim(DmApp.CHEQUE_CONTA) <> '') AND (TRIM(CPF_CNPJ) <> '')
                         then begin
                              DmApp.Consulta_Cheques(
                              DmApp.CHEQUE_CONTA,
                              DmApp.CHEQUE_SENHA,
                              CPF_CNPJ,
                              Banco,
                              Agencia,
                              Conta,
                              DV_Conta,
                              copy(EdCheque.text,1,6),
                              copy(EdCheque.text,8,1),
                              EdPredate.text,
                              ValorCheque,
                              '',
                              ''
                              );
                         end;

                         Chq := EdCheque.text;

                         While Length(Chq) < 8 do
                         begin
                              If Length(Chq) = 6
                              then begin
                                   Chq :=  Chq + '-';
                              end;

                              If Length(Chq) < 6
                              then begin
                                   Chq := '0' + Chq ;
                              end;

                              If Length(Chq) = 7
                              then begin
                                   Chq := Chq + '0' ;
                              end;
                         end ;

                         chq := copy( chq, 1, 6 );

                         IF DMApp.Verifica_Cheque( Banco, Conta, Chq ) = 'S'
                         then begin
                              MessageDlg('Cheque Duplicado, Verifique!', mtError, [mbOK], 0);
                              EdCheque.text ;
                         end
                         else begin
                              Modalresult := mrok ;
                              exit;
                         END;
                    end;
               end;
          END
          ELSE
              Perform(WM_NEXTDLGCTL, 0, 0);
     END;

     If Frm_Localizar_ContaNota.ActiveControl = BtnCadastrar
     then begin
          BtnCadastrar.OnClick ( BtnCadastrar );
     end;

     If Frm_Localizar_ContaNota.ActiveControl = BtnCadastraTerceiro
     then begin
          BtnCadastraTerceiro.OnClick ( BtnCadastraTerceiro );
     end;

end;

procedure TFrm_Localizar_ContaNota.BtnBancoClick(Sender: TObject);
begin
     { * * * * * }
{     if DMCadastros = Nil
     then
         DMCadastros := TDMCadastros.Create(Self)
     else
         DMCadastros.Tag := DMCadastros.Tag + 1;}

     { * * * * * }
     DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmBancos', False);

     { * * * * * }
     //
     dsBanco.DataSet.Tag := dsBanco.DataSet.Tag + 1;
     //
     FrmBancos := TFrmBancos.Create(Self);
     FrmBancos.ShowModal;
     //
     DsBanco.DataSet.Tag := DsBanco.DataSet.Tag - 1;

{     If DMCadastros.Tag = 0
     then begin
          DMCadastros.Free ;
          DMCadastros := Nil ;
     end
     else begin
          DMCadastros.Tag := DMCadastros.Tag - 1;
     end ;}

     FrmBancos.Free;
     FrmBancos := Nil;

     dsBanco.DataSet.Close ;
     dsBanco.DataSet.Open  ;

     //
     cmbBanco.SetFocus;
end;

procedure TFrm_Localizar_ContaNota.BtnBancoTerceiroClick(Sender: TObject);
begin
     { * * * * * }
{     if DMCadastros = Nil
     then
         DMCadastros := TDMCadastros.Create(Self)
     else
         DMCadastros.Tag := DMCadastros.Tag + 1;}

     { * * * * * }
     DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmBancos', False);

     { * * * * * }
     //
     dsBanco.DataSet.Tag := dsBanco.DataSet.Tag + 1;
     //
     FrmBancos := TFrmBancos.Create(Self);
     FrmBancos.ShowModal;
     //
     DsBanco.DataSet.Tag := DsBanco.DataSet.Tag - 1;

{     If DMCadastros.Tag = 0
     then begin
          DMCadastros.Free ;
          DMCadastros := Nil ;
     end
     else begin
          DMCadastros.Tag := DMCadastros.Tag - 1;
     end ;}

     FrmBancos.Free;
     FrmBancos := Nil;

     dsBanco.DataSet.Close ;
     dsBanco.DataSet.Open  ;

     //
     CmbBancoTerceiro.SetFocus;
end;

procedure TFrm_Localizar_ContaNota.BtnContaClick(Sender: TObject);
begin
     { * * * * * }
{     if DMCadastros = Nil
     then
         DMCadastros := TDMCadastros.Create(Self)
     else
         DMCadastros.Tag := DMCadastros.Tag + 1;}
     { * * * * * }

     //
     FrmAlteraContasPessoas := TFrmAlteraContasPessoas.Create(Self);
     FrmAlteraContasPessoas.ShowModal;
     //
     FrmAlteraContasPessoas.Free;
     FrmAlteraContasPessoas := Nil;

{     If DMCadastros.Tag = 0
     then begin
          DMCadastros.Free ;
          DMCadastros := Nil ;
     end
     else begin
          DMCadastros.Tag := DMCadastros.Tag - 1;
     end ;}

     DsConta.DataSet.Close ;
     With DmVendas do
     begin
          SelConta.Close ;
          SelConta.ParamByName ( 'CNPJ'      ).AsString  := DmaPP.Cnpj ;
          SelConta.ParamByName ( 'PESSOA_FJ' ).AsInteger := NotasPessoa_Fj.Value ;
          SelConta.Prepare ;
          SelConta.Open    ;
     end;
     //
     GRID.SetFocus;
end;

end.
