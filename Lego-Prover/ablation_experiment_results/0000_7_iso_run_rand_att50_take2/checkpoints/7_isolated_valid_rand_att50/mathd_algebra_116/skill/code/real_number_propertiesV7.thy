lemma real_number_properties:
  fixes x y :: real
  assumes "x \<ge> 0" "y \<ge> 0"
  shows "x + y \<ge> 0"
proof -
  from assms have "x + y = x + y" by simp
  then show ?thesis
    using assms by auto
qed