package body Home_Mathematics.Products is


   function Generic_Constrained_Square_Matrix_Matrix_Product_IKJ (Left : Matrix; Right : Matrix) return Matrix is
      Result : Matrix := (others => (others => 0.0));
   begin
      for I in Index loop
         for K in Index loop
            for J in Index loop
               Result (I, J) := Result (I, J) + Left (K, J) * Right (I, K);
            end loop;
         end loop;
      end loop;
      return Result;
   end;


   function Generic_Constrained_Square_Matrix_Vector_Product (Left : Matrix; Right : Vector) return Vector  is
      Result : Vector := (others => 0.0);
   begin
      for J in Index loop
         for I in Index loop
            Result (J) := Result (J) + Left (I, J) * Right (I);
         end loop;
      end loop;
      return Result;
   end;


   procedure Generic_Constrianed_Square_Matrix_Vector_Transpose_Product_Accumulate
     (Left : Matrix; Right : Vector; Result : in out Vector) is
   begin
      for J in Index loop
         for I in Index loop
            Result (J) := Result (J) + Left (J, I) * Right (I);
         end loop;
      end loop;
   end;



end;
