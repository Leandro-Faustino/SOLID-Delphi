//Embora minha classe tenha novos m�todos bicar e voar,
//os comportamentos est�o sendo implemtados dentro da class Ave.

unit LSP.Certo.Tucano;

interface

uses LSP.Certo.Ave;

type
  TTucano = class
  private
    FAve: TAve;   // composi��o
  public
    constructor Create;
    procedure Bicar;
    procedure Voar;
    destructor Destroy; override;
  end;

implementation

{ TTucano }

procedure TTucano.Bicar;
begin
  FAve.Bicar;
end;

constructor TTucano.Create;
begin
  FAve := TAve.Create;
end;

destructor TTucano.Destroy;
begin
  FAve.Free;
  inherited;
end;

procedure TTucano.Voar;
begin
  FAve.Voar;
end;

end.
