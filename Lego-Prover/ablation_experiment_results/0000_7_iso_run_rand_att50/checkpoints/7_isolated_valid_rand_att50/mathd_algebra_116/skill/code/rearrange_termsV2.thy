lemma rearrange_terms:
  fixes a b c :: real
  assumes "a = b + c"
  shows "b = a - c"
proof -
  from assms have "b = a - c" 
    by (simp add: algebra_simps)
  thus ?thesis
    by assumption
qed