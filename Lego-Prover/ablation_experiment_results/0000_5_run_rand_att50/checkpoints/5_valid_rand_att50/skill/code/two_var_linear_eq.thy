lemma two_var_linear_eq:
  fixes x y :: complex
  assumes h0: "x + y = a"  
      and h1: "b * x + c * y = d"  
  shows "y = a - x"  
proof -
  have "y = a - x" using h0 by auto
  thus ?thesis by simp
qed