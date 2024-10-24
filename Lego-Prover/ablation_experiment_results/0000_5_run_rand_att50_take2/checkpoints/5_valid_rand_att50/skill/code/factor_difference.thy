lemma factor_difference:
  fixes a b c :: real
  assumes "a \<noteq> b"
  shows "a * c - b * c = (a - b) * c"
proof -
  have "a * c - b * c = (a - b) * c + b * c - b * c" by (simp add: algebra_simps)
  then show ?thesis by (simp add: algebra_simps)
qed