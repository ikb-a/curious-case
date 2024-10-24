lemma square_of_fraction_generalized:
  fixes a b :: real
  assumes "b \<noteq> 0"
  shows "(a / b)^2 = a^2 / b^2"
proof -
  have "b > 0 \<or> b < 0" using assms by auto
  then show ?thesis
    using assms by (simp add: power2_eq_square)
qed