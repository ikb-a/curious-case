lemma product_of_integers:
  fixes a b :: nat
  assumes "a * b = c" and "c > 0"
  shows "a > 0 \<and> b > 0"
proof -
  have "a > 0 \<or> b > 0"
  proof (cases "a = 0")
    case True
    then have "b > 0" using assms(1) assms(2) by auto
    then show ?thesis by auto
  next
    case False
    then have "a > 0" using assms(1) by auto
    then show ?thesis by auto
  qed
  then show ?thesis
  proof (cases "a > 0")
    case True
    then have "b > 0" using assms(1) assms(2) by auto
    then show ?thesis by (metis True)
  next
    case False
    then show ?thesis by (metis assms(1) assms(2) gr0I mult_zero_left not_less0)
  qed
qed