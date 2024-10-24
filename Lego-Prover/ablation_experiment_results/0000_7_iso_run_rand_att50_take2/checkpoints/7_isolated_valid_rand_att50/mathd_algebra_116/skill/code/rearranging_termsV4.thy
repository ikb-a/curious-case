lemma rearranging_terms:
  fixes a b c :: real
  assumes "a = b + c"
  shows "b = a - c"
proof -
  from assms have "b + c = a" by simp
  then have "b = a - c" using add_diff_eq by simp
  thus ?thesis by simp
qed