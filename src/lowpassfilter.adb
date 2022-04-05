with Ada.Numerics; use Ada.Numerics;
package body LowPassFilter is
   function Filter(u: Float; T: Float) return Float is 
      alpha: Float := 2.0*Pi*T*f/(2.0*Pi*f+1.0);
      tmp: Float := s;
   begin 
      s := u;
      return alpha*u + (1.0-alpha)*tmp;
   end Filter;

   procedure SetF(frq: float) is
   begin
      f:= frq;
   end SetF;
end LowPassFilter;
