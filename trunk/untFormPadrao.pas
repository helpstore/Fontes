unit untFormPadrao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, IBQuery, DB, IBCustomDataSet, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinXmas2008Blue, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox;

type
  TFormPadrao = class(TForm)
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  Protected
    indicefoco : integer;
    campochave : string;
    procedure CadastroLookup(ClasseForm : TFormClass; eDataSet :TIBDataset;Campo: String; eDataSetList: TIBQuery);
    procedure AbreDataSet(DataSet : TDataSet);
  public
    { Public declarations }
    CodigoImput : Variant;
    Codigo : Variant;  //campo que retornar� o valor da chave, normalmente pra a��es de cadastro do dblookup dos form
  end;

var
  FormPadrao: TFormPadrao;

implementation


{$R *.dfm}


procedure TFormPadrao.FormShow(Sender: TObject);
var
 i : integer;
begin
  {
    Observa��es importantes, relacionados a 'TAGs'.
    As tags ser�o usadas para propositos diversos, neste caso em especifico para 3 situa��es, identificar o
    componente em tela que dever� receber o foco na edi��o, abrir automaticamente os datasets de listagem,
    idenficar o campo chave de cada tabela de cadastro:

    a) para definir o componente de tela que receber� o foco na edi��o basta colocar a propriedade TAG = 1 do controle
    em quest�o

    b) Abrir automaticamente os DataSets de consulta, geralmente dataset de listagem de combobox no intuito de economizar tempo
      e linhas de programa��o. Para que estes dataset abram automaticamente basta colocar a propriedade TAG deles = 4

    c) 'Indentificar' o campo chave do cadastro, tendo em vista que n�o � em todas as tabelas que o campo chama-se 'codigo',
    logo em cada cadastro em que o campo chave n�o for o 'codigo' o TField dever� ter a propriedade TAG = 1
  }

  //por padrao o campo chave � 'codigo'
  campochave := 'codigo';

  //percorrendo todos os componentes
  for i := 0 to TFormPadrao(Sender).ComponentCount - 1 do
  begin
    //bloco utilizado para identificar qual o componente de edi��o que deter� o foco ao editar, se tag for > 0, ent�o � ele
    //por padr�o EDTNOME ir� com tag = 1, mas poder� ser alterado em virtude de compatibilidade de tabelas do sistema
    if (TFormPadrao(Sender).Components[I] is TcxCustomTextEdit) then
    begin
       if TcxCustomTextEdit(TFormPadrao(Sender).Components[I]).Tag = 1 then
          indicefoco := i;
    end
    else if (TFormPadrao(Sender).Components[I] is TIBQuery) then
    begin
       //bloco utilizado para abrir automaticamente todos os TIBQuery q forem tag=4, geralmente datasetlist
       // de controles de tela
       if TIBQuery(TFormPadrao(Sender).Components[I]).Tag = 4 then
       begin
         TIBQuery(TFormPadrao(Sender).Components[I]).Close;
         TIBQuery(TFormPadrao(Sender).Components[I]).Open;
       end;
    end  //os campos que normalmente receberao foco, serao do tipo integer ou string, logo vou restringir a pesquisa a estes dois at� segunda ordem
    else if ((TFormPadrao(Sender).Components[I] is TIntegerField) or (TFormPadrao(Sender).Components[I] is TIBStringField))  then
    begin
       if TFormPadrao(Sender).Components[I].tag = 1 then
         campochave := TField(TFormPadrao(Sender).Components[I]).FieldName;
    end;
  end;
end;

procedure TFormPadrao.AbreDataSet(DataSet: TDataSet);
begin
  TDataset(DataSet).Close;
  TDataset(DataSet).Open;
end;

procedure TFormPadrao.CadastroLookup(ClasseForm : TFormClass;
  eDataSet: TIBDataset; Campo: String; eDataSetList: TIBQuery);
var
  Formulario : Tform;
begin
  //f := fc.Create(Application);
  Formulario := ClasseForm.Create(Application);

  if not VarIsNull(eDataSet.FieldByName(Campo).value) then
    TFormPadrao(Formulario).CodigoImput := eDataSet.FieldByName(Campo).value;

  Formulario.ShowMODAL ;

  AbreDataSet(eDataSetList);

  eDataSet.Edit;
  eDataSet.FieldByName(campo).value := TFormPadrao(Formulario).Codigo ;

  Formulario.Free;
  Formulario := nil;
end;
end.
