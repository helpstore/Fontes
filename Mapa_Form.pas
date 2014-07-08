unit Mapa_Form;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, OleCtrls, SHDocVw;

type
  TfrmMapa = class(TForm)
    WebBrowser1: TWebBrowser;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMapa: TfrmMapa;

implementation

{$R *.dfm}

procedure TfrmMapa.FormCreate(Sender: TObject);
begin
    WebBrowser1.Navigate('C:\Globaltech\HelpStore\Script\Mapa.html');
end;

end.
