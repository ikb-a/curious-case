lemma sqrt_square_general:
  fixes a :: "real \<Rightarrow> real"
  assumes "a x >= 0" "x \<in> A"  
  shows "sqrt (a x) * sqrt (a x) = a x"
proof -
  have "sqrt (a x) * sqrt (a x) = a x" using assms by auto
  then show ?thesis by simp
qed