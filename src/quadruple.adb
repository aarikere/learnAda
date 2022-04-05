function Quadruple(I:Integer) return Integer is
   function Double(I:Integer) return Integer is
   begin
      return I*2;
   end Double;
begin
   return Double(Double(I));
end Quadruple;
