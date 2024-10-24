lemma factor_difference:
  fixes a b c :: real
  assumes "a \<noteq> b"
  shows "a * c - b * c = (a - b) * c"
proof -
  have "a * c - b * c = (a - b) * c + b * c - b * c" 
    by (simp only: algebra_simps)
  also have "... = (a - b) * c + (b * c - b * c)" 
    by (simp)
  also have "... = (a - b) * c + 0" 
    by (simp)
  finally show ?thesis by simp
qed