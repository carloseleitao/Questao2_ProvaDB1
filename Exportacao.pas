unit Exportacao;

interface
type
  TExportacao = class
  public
    function Exportar(texto: String; caracteres: Integer = 0): String; Virtual; Abstract;
  end;

implementation

{TExportacao}


end.
