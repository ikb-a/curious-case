lemma nested_sqrt_eq_multi_dim:
  fixes x :: "real" and n :: "nat"
  assumes "sqrt (x + real (n^2)) = real n"
  shows "x = real (n^2) - real n^2"
proof -
  have "x + real (n^2) = (real n)^2" using assms by (smt (verit) of_nat_0_le_iff real_sqrt_le_iff real_sqrt_pow2 real_sqrt_zero)
  then have "x + real (n^2) = real (n^2)" by simp
  then show "x = real (n^2) - real n^2" by simp
qed