lemma unique_factorization_property:
  fixes a b c :: nat
  assumes "a * b = c" and "c > 0"
  shows "a > 0 \<and> b > 0"
proof -
  have "c > 0" using assms(2) by simp
  then have "a > 0 \<or> b > 0" using assms(1) by auto
  then show ?thesis
  proof (cases "a = 0")
    case True
    then have "b > 0" using assms(1) assms(2) by auto
    then show ?thesis using True by (metis assms(1) assms(2) mult_zero_left not_less_zero)
  next
    case False
    then have "a > 0" using assms(1) by auto
    then show ?thesis using assms(1) by (metis assms(2) gr_zeroI less_numeral_extra(3) mult_0_right)
  qed
qed