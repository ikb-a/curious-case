theorem linear_equation_substitution:
  fixes a b c d :: real
  assumes h0: "a + b = c" 
    and h1: "a = k"  
  shows "b = c - k"
proof -
  have "b = c - a" using h0 by simp
  also have "... = c - k" using h1 by simp
  finally show ?thesis by simp
qed