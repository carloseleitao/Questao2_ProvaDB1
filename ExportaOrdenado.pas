unit ExportaOrdenado;

interface

uses
  ExportaTexto;


type
  TExportaOrdenado = class(TExportaTexto)
  public
    function Exportar(texto: String; caracteres: Integer = 0): String; override;
  end;

implementation

uses SysUtils;
             

{ExportaOrdenado}

function TExportaOrdenado.Exportar(texto: String; caracteres: Integer): String;
var i, j: Integer;
    sAux: string;
    vAux: array of String;
begin
  SetLength(vAux,Length(texto));

  for i:=0 to Length(texto)-1 do
  begin
    vAux[i] := Copy(texto,i+1,1);
  end;    
                         
  for i:=0 to Length(vAux)-1 do
  begin
    for j:= i+1 to Length(vAux)-1 do
    begin
      if vAux[i] > vAux[j] then
      begin
        sAux:=vAux[i];
        vAux[i]:=vAux[j];
        vAux[j]:=sAux;
      end;
    end;
  end;

  sAux:='';
  for i:=0 to Length(vAux)-1 do
  begin
    sAux:=sAux + vAux[i]; 
  end;
  

  if caracteres>0 then
  begin
    sAux:= Copy(sAux,0,caracteres);
  end;

  setTexto(sAux);

  Result:= getTexto;
end;

end.

