unit ExportaInvertido;

interface

uses
  ExportaTexto;


type
  TExportaInvertido = class(TExportaTexto)
  public
    function Exportar(texto: String; caracteres: Integer = 0): String; override;
  end;

implementation

uses SysUtils;
             

{ExportaInvertido}

function TExportaInvertido.Exportar(texto: String; caracteres: Integer): String;
var i: Integer;
    sAux: string;
begin 
  for i:= Length(texto) downto 1 do
  begin
    sAux := sAux + Copy(texto,i,1);
  end;

  if caracteres>0 then
  begin
    sAux:= Copy(sAux,1,caracteres);
  end;

  setTexto(sAux);

  Result:= getTexto;
end;

end.

