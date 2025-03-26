with Ada.Text_IO; use Ada.Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;

procedure Simple_Calculator is
   type Operation is (Add, Subtract, Multiply, Divide, Quit);
   package Operation_IO is new Ada.Text_IO.Enumeration_IO(Operation);
   
   Num1, Num2, Result : Float;
   Op : Operation;
   Continue : Boolean := True;
begin
   Put_Line("Simple Calculator");
   Put_Line("---------------------");
   
   while Continue loop
      Put("Enter first number: ");
      Get(Num1);
      
      Put("Enter operation (Add, Subtract, Multiply, Divide, Quit): ");
      Operation_IO.Get(Op);
      Skip_Line;
      
      if Op /= Quit then
         Put("Enter second number: ");
         Get(Num2);
         
         case Op is
            when Add =>
               Result := Num1 + Num2;
               Put("Result: ");
               Put(Result, Fore => 1, Aft => 2, Exp => 0);
               New_Line;
            when Subtract =>
               Result := Num1 - Num2;
               Put("Result: ");
               Put(Result, Fore => 1, Aft => 2, Exp => 0);
               New_Line;
            when Multiply =>
               Result := Num1 * Num2;
               Put("Result: ");
               Put(Result, Fore => 1, Aft => 2, Exp => 0);
               New_Line;
            when Divide =>
               if Num2 /= 0.0 then
                  Result := Num1 / Num2;
                  Put("Result: ");
                  Put(Result, Fore => 1, Aft => 2, Exp => 0);
                  New_Line;
               else
                  Put_Line("Error: Division by zero!");
               end if;
            when Quit =>
               Continue := False;
         end case;
      else
         Continue := False;
      end if;
      
      New_Line;
   end loop;
   
   Put_Line("Goodbye!");
end Simple_Calculator;