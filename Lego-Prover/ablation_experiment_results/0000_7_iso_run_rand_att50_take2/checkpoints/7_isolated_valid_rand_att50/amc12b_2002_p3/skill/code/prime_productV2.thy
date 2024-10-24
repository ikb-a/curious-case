lemma prime_product:
  fixes a b :: nat
  assumes "prime (a * b)" "a > 1" "b > 1"
  shows "False"
proof -
  have "a * b > 1" using assms(1) by (metis prime_gt_1_nat)
  have "a > 1 \<and> b > 1 \<longrightarrow> a * b > 1" by (metis \<open>1 < a * b\<close>)
  hence "\<not> (a > 1 \<and> b > 1)" using `a * b > 1` by (metis assms(1) less_not_refl less_numeral_extra(4) prime_product)
  thus "False" 
    using assms(2) assms(3) by auto
qed