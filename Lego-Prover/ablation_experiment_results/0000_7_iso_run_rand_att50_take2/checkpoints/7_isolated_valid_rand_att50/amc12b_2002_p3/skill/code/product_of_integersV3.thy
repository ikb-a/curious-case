lemma product_of_integers:
  fixes a b :: nat
  assumes "a * b = c" and "c > 0"
  shows "\<exists>x y. (x = a \<and> y = b) \<or> (x = b \<and> y = a)"
proof -
  have "a > 0 \<or> b > 0"
  proof (cases "a = 0")
    case True
    then have "b > 0" using assms(1) assms(2) by auto
    then show ?thesis by auto
  next
    case False
    then have "a > 0" using assms(1) by (simp add: mult_nonneg_nonneg)
    then show ?thesis by auto
  qed
  obtain x y where "x = a" and "y = b" using assms(1) by auto
  thus ?thesis by auto
qed