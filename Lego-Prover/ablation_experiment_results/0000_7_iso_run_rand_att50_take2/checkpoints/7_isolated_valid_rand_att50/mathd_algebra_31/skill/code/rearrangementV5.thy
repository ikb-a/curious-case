lemma rearrangement:
  fixes a b c :: real
  assumes "a = b + c"
  shows "b = a - c"
proof -
  have "a - c = (b + c) - c" 
    using assms by simp
  also have "... = b" 
    by (simp add: algebra_simps)
  finally show "b = a - c" by simp
qed