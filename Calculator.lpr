program Calculator;

{$modeswitch result+}
{$mode objFPC}

{%region Input functions}
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

{%endregion}

{%region Effective calculations}
function Add(num1, num2: integer): integer;
begin
  Result := num1 + num2;
end;

function Subtract(num1, num2: integer): integer;
begin
  Result := num1 - num2;
end;
{%endregion}

{%region Entry point}
var
  response: char;
  num1, num2: integer;
begin
  num1 := GetFirstVal();
  num2 := GetSecondVal();
  Write('Now, time to do some work! Type ''A'' to add the numbers or ''S'' to subtract them. ');
  ReadLn(response);

  if (response = 'A') or (response = 'a') then
  begin
  	 WriteLn(num1, ' + ', num2, ' = ', Add(num1, num2));
     ReadLn();
  end

  else if (response = 'B') or (response = 'b') then
     Subtract(num1, num2)

  else Write('Oops! We''re still working on that!')
end.
{%endregion}

