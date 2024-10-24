lemma combine_fractions:
  fixes a b c d :: real
  assumes "c \<noteq> 0" "d \<noteq> 0"
  shows "(a / c) + (b / d) = (a * d + b * c) / (c * d)"
proof -
  have "a / c + b / d = (a * d) / (c * d) + (b * c) / (c * d)"
    by (simp add: assms(1) assms(2) field_simps)
  then have "a / c + b / d = (a * d + b * c) / (c * d)"
    by (simp add: assms(1) assms(2) field_simps)
  thus ?thesis by simp
qed