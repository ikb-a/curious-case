lemma product_of_two_positive_integers:
  fixes a b :: nat
  assumes "a > 0" "b > 0" "a * b = c" and "c > 0"
  shows "\<exists>x y. (x = a \<and> y = b) \<or> (x = b \<and> y = a)"
proof -
  have "a > 0 \<and> b > 0" using assms(1) assms(2) by auto
  then show ?thesis
    using assms(3) assms(4) product_of_integers(1) by blast
qed