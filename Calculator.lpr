program Calculator;

function GetFirstVal(): integer;
var num1: integer;
begin
  Write('Good day, please enter your first number: ');
  ReadLn(num1);
  Result := num1;
end;

function GetSecondVal(): integer;
var num2: integer;
begin
  Write('Very well, now enter your second number: ');
  ReadLn(num2);
  Result := num2;
end;

begin
  GetFirstVal();
  GetSecondVal();
end.

