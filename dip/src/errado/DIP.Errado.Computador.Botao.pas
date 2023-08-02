//se eu tiver 20 tipos de PC, vou ter que implementar 20 tipos de botão
//pois minha dependência vem de uma classe concreta
unit DIP.Errado.Computador.Botao;

interface

uses DIP.Errado.Computador;

type
  TBotaoComputador = class
  private
    FComputador: TComputador;  //depende de uma classe concreta
  public
    constructor Create;
    procedure Acionar;
    destructor Destroy; override;
  end;

implementation

{ TBotaoComputador }

procedure TBotaoComputador.Acionar;
begin
  if FComputador.IsLigado then
    FComputador.Desligar
  else
    FComputador.Ligar;
end;

constructor TBotaoComputador.Create;
begin
  FComputador := TComputador.Create;
end;

destructor TBotaoComputador.Destroy;
begin
  FComputador.Free;
  inherited;
end;

end.
