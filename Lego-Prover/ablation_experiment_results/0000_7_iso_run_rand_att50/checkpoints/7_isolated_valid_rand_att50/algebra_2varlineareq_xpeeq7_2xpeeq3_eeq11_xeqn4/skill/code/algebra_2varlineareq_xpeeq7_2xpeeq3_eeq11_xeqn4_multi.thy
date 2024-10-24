theorem algebra_2varlineareq_xpeeq7_2xpeeq3_eeq11_xeqn4_multi:
  fixes x e :: "complex \<Rightarrow> complex"
  assumes h0 : "\<And>z. x z + e z = 7"
    and h1 : "\<And>z. 2 * x z + e z = 3"
  shows "\<And>z. e z = 11 \<and> x z = (-4)"
proof -
  let ?e = "\<lambda>z. 7 - x z"
  have "\<And>z. e z = ?e z" using h0 by (auto simp: field_simps)
  then have "\<And>z. 2 * x z + (7 - x z) = 3" using h1 by simp
  then have "\<And>z. 2 * x z - x z + 7 = 3" by simp
  then have "\<And>z. x z + 7 = 3" by simp
  then have "\<And>z. x z = 3 - 7" by (metis add.commute add_diff_cancel diff_add_eq minus_add_cancel numeral_neq_neg_numeral square_eq_iff uminus_add_conv_diff)
  then have "\<And>z. x z = -4" by simp
  from this have "\<And>z. e z = 7 - (-4)" by (metis \<open>\<And>z. e z = 7 - x z\<close> \<open>\<And>z. x z = 3 - 7\<close>)
  then have "\<And>z. e z = 7 + 4" by simp
  then show "\<And>z. e z = 11 \<and> x z = -4" by (metis \<open>\<And>z. x z = - 4\<close> add.commute diff_minus_eq_add numeral_plus_numeral semiring_norm(2) semiring_norm(7))
qed