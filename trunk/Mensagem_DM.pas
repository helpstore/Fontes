 unit Mensagem_DM;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, IBCustomDataSet, IBQuery, IBSQL;

type
  TDMMensagem = class(TDataModule)
    Mensagem: TIBDataSet;
    MensagemCODIGO: TIntegerField;
    MensagemANO: TIntegerField;
    MensagemREMETENTE: TIBStringField;
    MensagemDESTINATARIO: TIBStringField;
    MensagemASSUNTO: TIBStringField;
    MensagemMENSAGEM: TIBStringField;
    MensagemDT_ENVIO: TDateTimeField;
    MensagemDT_RESPOSTA: TDateTimeField;
    MensagemDT_AVISO: TDateTimeField;
    MensagemDT_LEITURA: TDateTimeField;
    MensagemDT_RESP: TDateTimeField;
    SelUsuario: TIBQuery;
    SelUsuarioLOGIN: TIBStringField;
    SelUsuarioNOME: TIBStringField;
    Mensagens: TIBQuery;
    MensagensCODIGO: TIntegerField;
    MensagensANO: TIntegerField;
    MensagensREMETENTE: TIBStringField;
    MensagensDESTINATARIO: TIBStringField;
    MensagensASSUNTO: TIBStringField;
    MensagensMENSAGEM: TIBStringField;
    MensagensDT_ENVIO: TDateTimeField;
    MensagensDT_RESPOSTA: TDateTimeField;
    MensagensDT_AVISO: TDateTimeField;
    MensagensDT_LEITURA: TDateTimeField;
    MensagensDT_RESP: TDateTimeField;
    MensagensDT_VALIDADE: TDateTimeField;
    MensagensRes: TIBQuery;
    MensagensResCODIGO: TIntegerField;
    MensagensResANO: TIntegerField;
    MensagensResREMETENTE: TIBStringField;
    MensagensResDESTINATARIO: TIBStringField;
    MensagensResASSUNTO: TIBStringField;
    MensagensResMENSAGEM: TIBStringField;
    MensagensResDT_ENVIO: TDateTimeField;
    MensagensResDT_RESPOSTA: TDateTimeField;
    MensagensResDT_AVISO: TDateTimeField;
    MensagensResDT_LEITURA: TDateTimeField;
    MensagensResDT_RESP: TDateTimeField;
    MensagensResDT_VALIDADE: TDateTimeField;
    MensagemDT_VALIDADE: TDateTimeField;
    MensagemRESERVADO: TIBStringField;
    UpdMSG: TIBSQL;
    procedure MensagemAfterClose(DataSet: TDataSet);
    procedure MensagemBeforeOpen(DataSet: TDataSet);
    procedure MensagensResBeforeOpen(DataSet: TDataSet);
    procedure MensagemAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMMensagem: TDMMensagem;

implementation

uses Application_DM, Usuarios_DM;

{$R *.DFM}

procedure TDMMensagem.MensagemAfterClose(DataSet: TDataSet);
begin
  //
  If (DataSet is TIBQuery) Then
     (DataSet as TIBQuery).UnPrepare;
  If (DataSet is TIBDataSet) Then
     (DataSet as TIBDataSet).UnPrepare;
end;

procedure TDMMensagem.MensagemBeforeOpen(DataSet: TDataSet);
begin
  //
  If (DataSet is TIBQuery) Then
     (DataSet as TIBQuery).Prepare;
  If (DataSet is TIBDataSet) Then
     (DataSet as TIBDataSet).Prepare;
end;

procedure TDMMensagem.MensagensResBeforeOpen(DataSet: TDataSet);
begin
   if (DMUsuarios = nil) then
    exit;
    
  (DataSet as TIBQuery).ParamByName('LOGIN').asString := DMUsuarios.LoginLOGIN.Value;
  (DataSet as TIBQuery).Prepare;
end;

procedure TDMMensagem.MensagemAfterInsert(DataSet: TDataSet);
begin
  //
  MensagemCODIGO.Value      := 0;
  MensagemANO.Value         := 0;
  MensagemREMETENTE.Value   := DMUsuarios.LoginLOGIN.Value;
  MensagemRESERVADO.Value   := 'N'; 
  MensagemDT_ENVIO.Value    := DMApp.DataHora('D');
  MensagemDT_VALIDADE.Value := DMApp.DataHora('D') + 15;
end;

end.
