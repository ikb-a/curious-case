theorem algebra_2varlineareq_n_dimensions:
  fixes x e :: "complex list"
  assumes h0 : "\<forall>i. i < size x \<longrightarrow> x ! i + e ! i = 7"
    and h1 : "\<forall>i. i < size x \<longrightarrow> 2 * (x ! i) + e ! i = 3"
  shows "\<forall>i. i < size x \<longrightarrow> e ! i = 11 \<and> x ! i = -4"
proof -
  let ?f = "\<lambda>i. 7 - (x ! i)"
  let ?g = "\<lambda>i. 2 * (x ! i) + (7 - (x ! i))"
  have "\<forall>i. i < size x \<longrightarrow> ?f i = 7 - (x ! i)" by auto
  hence e_expr: "\<forall>i. i < size x \<longrightarrow> e ! i = ?f i" using h0 by (auto simp: field_simps)
  have eq_substituted: "\<forall>i. i < size x \<longrightarrow> ?g i = 3" using e_expr h1 by auto
  have eq_simplified: "\<forall>i. i < size x \<longrightarrow> (x ! i) + 7 = 3" using eq_substituted by auto
  then have x_values: "\<forall>i. i < size x \<longrightarrow> x ! i = -4" by (smt (verit) algebra_2varlineareq_xpeeq7_2xpeeq3_eeq11_xeqn4 h0 h1)
  hence e_values: "\<forall>i. i < size x \<longrightarrow> e ! i = 7 + 4" using e_expr x_values by auto
  then show ?thesis using x_values by auto
qed