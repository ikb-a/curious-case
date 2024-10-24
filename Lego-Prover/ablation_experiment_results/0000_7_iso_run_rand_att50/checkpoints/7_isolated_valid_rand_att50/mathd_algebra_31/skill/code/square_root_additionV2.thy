lemma square_root_addition:
  fixes x y :: real
  assumes "x \<ge> 0" "y \<ge> 0"
  shows "sqrt (x + y) \<ge> sqrt x"
proof -
  have "sqrt (x + y) = sqrt (x + 0 + y)" by simp
  also have "... \<ge> sqrt x" using assms by auto
  finally show ?thesis.
qed