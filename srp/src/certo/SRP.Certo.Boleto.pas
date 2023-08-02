unit SRP.Certo.Boleto;

interface

uses SRP.Certo.Boleto.Intf, SRP.Certo.Email.Intf;

type
  TBoleto = class(TInterfacedObject, IBoleto)
  private
    FEmail: IEmail;
    procedure Gerar;
  public
    constructor Create(const AEmail: IEmail);  //injest�o de dependencias do email
    property Email: IEmail read FEmail;
  end;

implementation

{ TBoleto }

constructor TBoleto.Create(const AEmail: IEmail);
begin
  FEmail := AEmail;
end;

procedure TBoleto.Gerar;
begin
  // Gera o boleto
  Self.Email.Enviar;
end;

end.
