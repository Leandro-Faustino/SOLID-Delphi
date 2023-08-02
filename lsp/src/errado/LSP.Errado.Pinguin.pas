//falha de modelagem - O pingue não poderá herdar da classe ave,
//pois não implementa de fato todas os recursos de ave...


unit LSP.Errado.Pinguin;

interface

uses LSP.Errado.Ave;

type
  TPinguin = class(TAve)
  public
    procedure Voar; override;
  end;

implementation

uses System.SysUtils;

{ TPinguin }

procedure TPinguin.Voar;
begin
  raise Exception.Create('Pinguin não sabe voar');
end;

end.
