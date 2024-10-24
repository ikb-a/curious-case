lemma multiplicative_inverse_properties:
  fixes a :: real
  assumes "a \<noteq> 0"
  shows "a * (1 / a) = 1 \<and> (1 / a) * a = 1"
proof -
  have left: "a * (1 / a) = 1" using assms by auto
  have right: "(1 / a) * a = 1" using assms by auto
  then show ?thesis using left by auto
qed