with Ada.Text_IO; use Ada.Text_IO;

package body Simple_Sync_Pkg is
   task body T is
   begin
      accept Start do
         for I in 1..10 loop
            Put_Line("hello " & I'Image);
            delay 0.1;
         end loop;
      end Start;
      
      
      for I in 1..10 loop
            Put_Line("hello 1 - " & I'Image);
            delay 0.1;
      end loop;
      
      accept Continue;
      Put_Line ("Continuing...");
      
   end T;
   
   

end Simple_Sync_Pkg;
