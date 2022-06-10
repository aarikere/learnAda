package body SWC is

   procedure app_tick is

      tmp: Integer:=0;
   begin
      cnt := cnt + 1;
      tmp := u + u_old;
      u_old := u;
      u := tmp;
      
   end app_tick;
end SWC;
