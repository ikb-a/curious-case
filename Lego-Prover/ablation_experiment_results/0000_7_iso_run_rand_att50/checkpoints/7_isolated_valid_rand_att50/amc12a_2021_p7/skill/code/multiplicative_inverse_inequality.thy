lemma multiplicative_inverse_inequality:
  fixes a b :: real
  assumes "a > 0" and "b > 0"
  shows "1 / a < 1 / b \<longleftrightarrow> a > b"
proof -
  have "1 / a < 1 / b \<longleftrightarrow> b < a" using assms
    by (auto simp: field_simps)
  then show ?thesis by simp
qed