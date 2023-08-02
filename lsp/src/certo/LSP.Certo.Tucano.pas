//Embora minha classe tenha novos métodos bicar e voar,
//os comportamentos estão sendo implemtados dentro da class Ave.

unit LSP.Certo.Tucano;

interface

uses LSP.Certo.Ave;

type
  TTucano = class
  private
    FAve: TAve;   // composição
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
