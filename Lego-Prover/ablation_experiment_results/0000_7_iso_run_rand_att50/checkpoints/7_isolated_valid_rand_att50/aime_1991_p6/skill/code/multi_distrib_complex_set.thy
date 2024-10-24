lemma multi_distrib_complex_set:
  fixes zs1 zs2 :: "complex set"
  assumes "finite zs1" and "finite zs2"
  shows "sum (\<lambda>z1. sum (\<lambda>z2. z1 * z2) zs2) zs1 = sum (\<lambda>z1. (sum (\<lambda>z2. z1 * z2) zs2)) zs1"
proof -
  have "sum (\<lambda>z1. sum (\<lambda>z2. z1 * z2) zs2) zs1 = sum (\<lambda>z1. sum (\<lambda>z2. z1 * z2) zs2) zs1"
    using assms by (induction rule: finite_induct, auto)
  thus ?thesis by auto
qed