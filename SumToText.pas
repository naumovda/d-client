unit SumToText;

interface

function ConvertSumToText(AValue: real): string;

implementation

uses
  SysUtils
  ;

function Propis(Value: int64): string;
var
  Rend: boolean;
  
  ValueTemp: int64;

  procedure Num(Value: byte);
  begin
    case Value of
      1: if Rend = true then Result := Result + '���� ' else Result := Result + '���� ';
      2: if Rend = true then Result := Result + '��� ' else Result := Result + '��� ';
      3: Result := Result + '��� ';
      4: Result := Result + '������ ';
      5: Result := Result + '���� ';
      6: Result := Result + '����� ';
      7: Result := Result + '���� ';
      8: Result := Result + '������ ';
      9: Result := Result + '������ ';
      10: Result := Result + '������ ';
      11: Result := Result + '����������� ';
      12: Result := Result + '���������� ';
      13: Result := Result + '���������� ';
      14: Result := Result + '������������ ';
      15: Result := Result + '���������� ';
      16: Result := Result + '����������� ';
      17: Result := Result + '���������� ';
      18: Result := Result + '������������ ';
      19: Result := Result + '������������ ';
    end
  end;

  procedure Num10(Value: byte);
  begin
    case Value of
      2: Result := Result + '�������� ';
      3: Result := Result + '�������� ';
      4: Result := Result + '����� ';
      5: Result := Result + '��������� ';
      6: Result := Result + '���������� ';
      7: Result := Result + '��������� ';
      8: Result := Result + '����������� ';
      9: Result := Result + '��������� ';
    end;
  end;

  procedure Num100(Value: byte);
  begin
    case Value of
      1: Result := Result + '��� ';
      2: Result := Result + '������ ';
      3: Result := Result + '������ ';
      4: Result := Result + '��������� ';
      5: Result := Result + '������� ';
      6: Result := Result + '�������� ';
      7: Result := Result + '������� ';
      8: Result := Result + '��������� ';
      9: Result := Result + '��������� ';
    end
  end;

  procedure Num00;
  begin
    Num100(ValueTemp div 100);
    ValueTemp := ValueTemp mod 100;
    if ValueTemp < 20 then Num(ValueTemp)
    else
    begin
      Num10(ValueTemp div 10);
      ValueTemp := ValueTemp mod 10;
      Num(ValueTemp);
    end;
  end;

  procedure NumMult(Mult: int64; s1, s2, s3: string);
  var ValueRes: int64;
  begin
    if Value >= Mult then
    begin
      ValueTemp := Value div Mult;
      ValueRes := ValueTemp;
      Num00;
      if ValueTemp = 1 then Result := Result + s1
      else if (ValueTemp > 1) and (ValueTemp < 5) then Result := Result + s2
      else Result := Result + s3;
      Value := Value - Mult * ValueRes;
    end;
  end;

begin
  if (Value = 0) then Result := '����'
  else
  begin
    Result := '';
    Rend := true;
    NumMult(1000000000000, '�������� ', '��������� ', '���������� ');
    NumMult(1000000000, '�������� ', '��������� ', '���������� ');
    NumMult(1000000, '������� ', '�������� ', '��������� ');
    Rend := false;
    NumMult(1000, '������ ', '������ ', '����� ');
    Rend := true;
    ValueTemp := Value;
    Num00;
  end;
end;

procedure Fst(S: string; Var  S1: string; Var  S2: string; Var  S3: string);
var
  pos: integer;
begin
  S1 := '';
  S2 := '';
  S3 := '';

  pos := 1;

  while ((pos <= Length(S))and(S[pos] <> ';'))do
  begin
    S1 := S1 + S[pos];
    inc(pos);
  end;
  inc(pos);

  while ((pos <= Length(S))and(S[pos] <> ';'))do
  begin
    S2 := S2 + S[pos];
    inc(pos);
  end;
  inc(pos);

  while ((pos <= Length(S))and(S[pos] <> ';'))do
  begin
    S3 := S3 + S[pos];
    inc(pos);
  end;
  inc(pos);
end;

function Ruble(Value: int64; Skl: string): string;
var
  hk10, hk20: integer;
  Skl1,Skl2,Skl3: string;
begin
  Fst(Skl,Skl1,Skl2,Skl3);
  hk10 := Value mod 10;
  hk20 := Value mod 100;
  if (hk20 > 10) and (hk20 < 20) then result := result + Skl3
  else if (hk10 = 1) then result := result + Skl1
  else if (hk10 > 1) and (hk10 < 5) then result := result + Skl2
  else result := result + Skl3;
end;

function Kopeika(Value: integer; Skp: string): string;
var
  hk10, hk20: integer;
  Skp1,Skp2,Skp3: string;
begin
  Fst(Skp,Skp1,Skp2,Skp3);
  hk10 := Value mod 10;
  hk20 := Value mod 100;
  if (hk20 > 10) and (hk20 < 20) then result := result + Skp3
  else if (hk10 = 1) then result := result + Skp1
  else if (hk10 > 1) and (hk10 < 5) then result := result + Skp2
  else result := result + Skp3;
end;

function ConvertSumToText(AValue: real): string;
var
  i: byte;
begin
  i := (Round(Frac(AValue) * 100));
  result := Propis(Trunc(AValue)) + ' '
    + Ruble(Trunc(AValue), '�����;�����;������' ) + ' '
    + IntToStr(i div 10) + IntToStr(i mod 10) + ' '
    + Kopeika(i, '�������;�������;������');
end;

end.
