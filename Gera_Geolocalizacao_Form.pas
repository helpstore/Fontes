unit Gera_Geolocalizacao_Form;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, cxGroupBox, Menus, ActnList, cxRadioGroup, cxLabel,
  ExtCtrls, StdCtrls, cxButtons, cxProgressBar, IBSQL, DB, IBCustomDataSet,
  OleCtrls, SHDocVw, IBQuery, MSHTML, Activex, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdHTTP, xmldom, XMLIntf, msxmldom, XMLDoc,
  ComCtrls;

type
  TfrmGerarGeolocalizacao = class(TForm)
    Panel2: TPanel;
    RzBitBtn1: TcxButton;
    RzBitBtn2: TcxButton;
    pnlClient: TPanel;
    b2: TBevel;
    LblTitulo: TcxLabel;
    cxRadioGroup1: TcxRadioGroup;
    Actions: TActionList;
    ActOK: TAction;
    ActClose: TAction;
    QryUpdate: TIBSQL;
    qryConsulta: TIBQuery;
    qryConsultaCODIGO: TIntegerField;
    qryConsultaNOME_RAZAO: TIBStringField;
    qryConsultaMAP_LAT: TIBStringField;
    qryConsultaMAP_LONG: TIBStringField;
    qryConsultaLOGRADOURO: TIBStringField;
    qryConsultaNUMERO: TIBStringField;
    qryConsultaCIDADE: TIBStringField;
    qryConsultaUF: TIBStringField;
    HTTP: TIdHTTP;
    XMLDocument: TXMLDocument;
    bar: TProgressBar;
    lblCont: TcxLabel;
    lblTotal: TcxLabel;
    procedure ActOKExecute(Sender: TObject);
  private
    { Private declarations }
    procedure ConsultaReverso(pEndereco, sqlUpdate: String);
  public
    { Public declarations }
  end;

var
  frmGerarGeolocalizacao: TfrmGerarGeolocalizacao;

implementation

uses Application_DM, uXMLNodes, uGeoCode, Funcoes;

{$R *.dfm}

procedure TfrmGerarGeolocalizacao.ConsultaReverso(pEndereco, sqlUpdate: String);
var
  lcURL : String;
  lcXML : IXMLGeocodeResponseType;
begin
  lcURL := 'http://maps.google.com/maps/api/geocode/xml?sensor=false&address=' + pEndereco;
  lcURL := StringReplace(lcURL, ' ', '+', [rfReplaceAll]);

  try
    XMLDocument.XML.Clear;
    XMLDocument.XML.Text := HTTP.Get(lcURL);
    XMLDocument.XML.Text := StringReplace( XMLDocument.XML.Text, 'UTF-8', 'iso-8859-1', [rfReplaceAll] );
    XMLDocument.Active := True;
    lcXML := GetGeocodeResponse(XMLDocument);
   // if lcXML.Result[0].GeocodeResponse.status = 'OK' then
    if (lcXML.Status <> 'INVALID_REQUEST') and (lcXML.Status <> 'OVER_QUERY_LIMIT') and (lcXML.Status <>'ZERO_RESULTS') and (lcXML.Status <> 'REQUEST_DENIED') then
    begin
      QryUpdate.SQL.Text :=  sqlUpdate;
      QryUpdate.parambyname('cnpj').value := dmApp.cnpj;
      QryUpdate.parambyname('codigo').value := qryConsultaCODIGO.Value;
      QryUpdate.parambyname('long').value := lcXML.Result[0].Geometry.Location.Lng;
      QryUpdate.parambyname('lat').value := lcXML.Result[0].Geometry.Location.Lat;
      QryUpdate.ExecQuery;
      QryUpdate.Transaction.CommitRetaining;
    end;
  finally
    //Result := lcXML.Status;
    XMLDocument.Active := False;
  end;
end;


procedure TfrmGerarGeolocalizacao.ActOKExecute(Sender: TObject);
var
  sqlUpdate : string;
  codigo : integer;
  address    : string;
begin
  sqlUpdate := 'update glo_pessoas_fj psa set psa.map_lat = :lat, psa.map_long = :long where psa.codigo = :codigo and psa.cnpj = :cnpj ';
  qryConsulta.close;
  qryConsulta.parambyname('cnpj').value := dmApp.cnpj;
  qryConsulta.Open;

  qryConsulta.FetchAll;

  bar.Max := qryConsulta.RecordCount;
  lblTotal.Caption := IntToStr(bar.Max);
  lblTotal.Refresh;

  bar.Min := 1;
  qryConsulta.First;
  while not qryConsulta.Eof do
  begin
   if (ExtraiDigitos(qryConsultaNUMERO.AsString) <> '') then
     address := qryConsultaLOGRADOURO.AsString + ' , '+ExtraiDigitos(qryConsultaNUMERO.AsString)+' , CIDADE '+qryConsultaCIDADE.AsString+' - '+qryConsultaUF.AsString
   else
     address := qryConsultaLOGRADOURO.AsString + ','+' CIDADE '+qryConsultaCIDADE.AsString+' - '+qryConsultaUF.AsString;

   address := StringReplace(StringReplace(Trim(address), #13, ' ', [rfReplaceAll]), #10, ' ', [rfReplaceAll]);
   address := Maps_RetiraCaracEspecial(address);
   if Length(trim(address)) > 4 then
    ConsultaReverso(address,sqlUpdate);

   qryConsulta.Next;
   bar.Position := bar.Position + 1;
   lblCont.Caption := IntToStr(bar.Position);
   lblCont.Refresh;
  // Sleep(500);
  end;
end;

end.
