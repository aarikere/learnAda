package LowPassFilter is 
   function Filter(u: Float; T: Float) return Float;
   --procedure Init(i: Float:=0);
   --procedure Reset(r: Boolean; i: Float:=0);
   procedure SetF(frq: Float);
   
private
   s: Float:=0.0;
   f: Float:=1.0;
end LowPassFilter;
