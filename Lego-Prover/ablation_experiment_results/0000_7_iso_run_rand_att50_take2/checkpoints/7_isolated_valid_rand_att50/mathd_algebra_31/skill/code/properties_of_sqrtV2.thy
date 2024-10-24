lemma properties_of_sqrt:
  fixes a :: real
  assumes "a \<ge> 0"
  shows "sqrt a \<ge> 0"
proof -
  obtain b where "b = sqrt a" by auto
  then have "b \<ge> 0" using assms by (metis real_sqrt_ge_zero)
  thus "sqrt a \<ge> 0" by (metis assms real_sqrt_ge_zero)
qed