with Ada.Text_IO; use Ada.Text_IO;
with Increment;
with Quadruple;
with Swap;
with Week.Child;
with Operations;
with Dates;       use Dates;
with Ada.Numerics; use Ada.Numerics;
with LowPassFilter; use LowPassFilter;

procedure main is
   A, B, C: Integer;
   type AcuteAngleDegrees is range 0..179;
   type Degrees is mod 360;

   function IncrBy3(I: Integer; Incr:Integer:=3) return Integer renames
     Increment;

   procedure Put_Line(S: String) renames Ada.Text_IO.Put_Line;

   procedure Display_result is
   begin
      Put_Line("Increment of "
               & A'Image
               & " with "
               & B'Image
               & " is "
               & C'Image);
   end Display_result;


   use Week.Child;
   package Inc renames Operations;

   acAng: AcuteAngleDegrees;
   ang: Degrees;
   --SetF(1.0)
   filtertmp:Float;


   type tmp is range -15..-10;
   type T2 is digits 2;
   type T8 is digits 8;

   D : Date := (1, January, 2000);

   type My_Int is range 0..1000;
   type Index is new Months range January..May;

   type My_Int_Array is
     array (Index) of My_Int;
   Arr:My_Int_Array := (2,3,5,7,11);

   V:My_Int;

   type testArr is Array (1..5) of Integer;
   tmpVar : testArr:=(4,3,7,2,3);

   type testType is range 1..5;

   type unconstMyInt is
     array (Index range <>) of My_Int;

   unconstMyIntVar:unconstMyInt(February..May):=(February=>1,May=>2,others=>3);

begin
   A:=10;
   B:=5;
   C := Increment(A,B);
   Display_result;

   Put_Line("Quadruple of " & B'Image & " is " & Integer'Image(Quadruple(B)));

   Put_Line("A and B are " & A'Image & B'Image);
   Swap(A, B);
   Put_Line("A and B swapped are " & A'Image & B'Image);

   Put_Line(Integer'Image(IncrBy3(10)));

   Put_Line(Get_First_Of_Week);

   C:= Inc.Increment_By(A);
   B:= Inc.Get_Increment_Value;

   Put_Line(A'Image & " incremented by "
            & B'Image & " is "
            & C'Image);

   C:= Inc.Increment_By(A, -2);
   B:= Inc.Get_Increment_Value;

   Put_Line(A'Image & " incremented by "
            & B'Image & " is "
            & C'Image);

   acAng:= 150;
   ang := 320;

   Put_Line(acAng'Image);
   Put_Line(ang'Image);

   Put_Line("New values");

   acAng := acAng - 100;
   ang := ang + 100;

   Put_Line(acAng'Image);
   Put_Line(ang'Image);

   Put_Line("Type tmp requires " & Integer'Image(tmp'Size) & " bits");
   Put_Line("Type T2 requires " & Integer'Image(T2'Size) & " bits");
   Put_Line("Type T8 requires " & Integer'Image(T8'Size) & " bits");


   Display_Month (D);

   Put_Line ("Increasing month...");
   Increase_Month (D);

   Display_Month (D);

   for I in reverse Index loop
      V:= Arr(I)**2;
      Put_Line("Element at index " & I'Image & " is " & My_Int'Image(V));
   end loop;
   New_Line;

   for idx in 1..5 loop
      Put_Line(Integer'Image(tmpVar(idx)**2));
   end loop;

   Put_Line("Separator");

   for I in testType range 2..5 loop
      Put_Line(testType'Image(testType'Val(I)));
   end loop;

   for I in My_Int_Array'First .. My_Int_Array'Last loop
      Put_Line(Index'Image(I));
   end loop;

   for I in unconstMyIntVar'Range loop
      Put_Line(My_Int'Image(unconstMyIntVar(I)) & " at index " & I'Image);
   end loop;

   Put_Line(Pi'Image);
   filtertmp := LowPassFilter.Filter(1.0,0.01);
   Put_Line(filtertmp'Image);
   filtertmp := LowPassFilter.Filter(1.0,0.01);
   Put_Line(filtertmp'Image);
   filtertmp := LowPassFilter.Filter(1.0,0.01);
   Put_Line(filtertmp'Image);
end main;






