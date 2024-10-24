lemma square_equation:
  fixes a b :: real
  assumes "a = b"
  shows "a^2 = b^2"
proof -
  obtain x where "a = x" and "b = x" using assms by auto
  then have "a^2 = x^2" by (simp add: power2_eq_square)
  moreover have "b^2 = x^2" by (metis \<open>a = x\<close> assms)
  ultimately show ?thesis by (simp)
qed