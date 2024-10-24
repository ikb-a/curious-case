lemma odd_even_product:
  fixes a b :: nat
  assumes "odd a" and "even b"
  shows "even (a * b)"
proof -
  from assms(1) obtain m where "a = 2 * m + 1" by (cases a) auto
  from assms(2) obtain n where "b = 2 * n" by auto
  then have "a * b = (2 * m + 1) * (2 * n)" by (metis \<open>a = 2 * m + 1\<close>)
  also have "... = 2 * (m * (2 * n) + n)" by (simp add: algebra_simps)
  hence "even (a * b)" by (metis assms(2) even_mult_iff)
  thus ?thesis by simp
qed