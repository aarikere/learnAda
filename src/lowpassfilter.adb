with Ada.Numerics; use Ada.Numerics;
package body LowPassFilter is
   function Filter(u: Float; T: Float) return Float is 
      alpha: Float := 2.0*Pi*f*T/(2.0*Pi*f*T+1.0);
      tmp: Float := s;
   begin 
      s := alpha*u + (1.0-alpha)*tmp;
      return s;
   end Filter;

   procedure SetF(frq: float) is
   begin
      f:= frq;
   end SetF;
end LowPassFilter;
