lemma rearranging_terms:
  fixes a b c :: real
  assumes "a = b + c"
  shows "b = a - c"
proof -
  from assms have "b + c = a" by simp
  then have "b = a - c" by (simp add: add_diff_eq)
  thus ?thesis by simp
qed