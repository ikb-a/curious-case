lemma rearrange_terms:
  fixes a b c :: real
  assumes "a = b + c"
  shows "b = a - c"
proof -
  from assms have "b + c = a" by auto
  then show ?thesis
    by (simp add: algebra_simps)
qed