procedure Swap(A, B: in out Integer) is
   Tmp: Integer;
begin
   Tmp:= A;
   A:=B;
   B:=Tmp;
end Swap;
