lemma rearrangement:
  fixes a b c :: real
  assumes "a = b + c"
  shows "b = a - c"
proof -
  have "a - c = (b + c) - c" 
    using assms by simp
  then show "b = a - c" 
    by (simp add: algebra_simps)
qed