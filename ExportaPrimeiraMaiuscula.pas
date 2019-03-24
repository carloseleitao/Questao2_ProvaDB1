unit ExportaPrimeiraMaiuscula;

interface

uses
  ExportaTexto;


type
  TExportaPrimeiraMaiuscula = class(TExportaTexto)
  public
    function Exportar(texto: String; caracteres: Integer = 0): String; override;
  end;

implementation

uses SysUtils;
             

{ExportaPrimeiraMaiuscula}

function TExportaPrimeiraMaiuscula.Exportar(texto: String; caracteres: Integer): String;
var i: Integer;
    sAux: string;
begin 
  for i:=1 to Length(texto) do
  begin
    if i = 1 then
      sAux := StrUpper(PChar(Copy(texto,i,1)))
    else if (Copy(texto,i-1,1)) = ' ' then
      sAux := sAux + StrUpper(PChar(Copy(texto,i,1)))
    else
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

