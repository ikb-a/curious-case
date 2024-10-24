lemma square_root_inequality:
  fixes a b :: real
  assumes "a >= 0" "b >= 0"
  shows "sqrt(a) * sqrt(b) <= (sqrt(a + b))^2"
proof -
  have "sqrt(a) * sqrt(b) = sqrt(a * b)" by (metis real_sqrt_mult)
  also have "... <= sqrt((a + b) * (a + b))" using \<open>a >= 0\<close> \<open>b >= 0\<close> by (auto simp: field_simps)
  finally show ?thesis by (simp add: power2_eq_square)
qed