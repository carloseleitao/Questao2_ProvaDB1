unit ExportaTexto;

interface

uses
  Exportacao, Dialogs;


type
  TExportaTexto = class(TExportacao)
  private
    FTexto: String;
  protected
    procedure setTexto(Valor: String); Virtual;
    function getTexto: String; Virtual;
  public
    property texto: String read getTexto write setTexto;
  end;

implementation

uses SysUtils;
             

{ExportaTexto}

function TExportaTexto.getTexto: String;
begin
  Result := FTexto;
end;

procedure TExportaTexto.setTexto(Valor: String);
begin
  if Trim(Valor) = '' then
    ShowMessage('É obrigatório informar um texto!')
  else
    FTexto := Valor;
end;

end.

