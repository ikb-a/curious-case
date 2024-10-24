lemma algebraic_manipulation:
  fixes x y z :: real
  shows "(x + y)^2 = x^2 + 2 * x * y + y^2"
proof -
  have "(x + y)^2 = x^2 + 2 * x * y + y^2" 
    by sos
  thus ?thesis by simp
qed