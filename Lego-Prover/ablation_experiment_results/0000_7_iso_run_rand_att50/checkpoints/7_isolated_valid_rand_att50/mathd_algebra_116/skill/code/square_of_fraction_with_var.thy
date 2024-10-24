lemma square_of_fraction_with_var:
  fixes x y z :: real
  assumes "y \<noteq> 0"
  shows "(x / y)^2 + (z / y)^2 = (x^2 + z^2) / y^2"
proof -
  have "((x + z) / y)^2 = (x + z)^2 / y^2"
    by (simp add: power2_eq_square)
  thus ?thesis by (smt (verit) add_divide_distrib power_divide)
qed