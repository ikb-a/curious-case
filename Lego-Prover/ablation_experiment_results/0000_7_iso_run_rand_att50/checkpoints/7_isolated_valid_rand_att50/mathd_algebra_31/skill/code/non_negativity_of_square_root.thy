lemma non_negativity_of_square_root:
  fixes a :: real
  assumes "0 \<le> a"
  shows "sqrt a \<ge> 0"
proof -
  have "sqrt a = sqrt (max a 0)" using assms by simp
  then show ?thesis by auto
qed