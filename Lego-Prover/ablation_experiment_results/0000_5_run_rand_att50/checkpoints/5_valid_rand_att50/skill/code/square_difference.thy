lemma square_difference:
  fixes a b :: complex
  shows "(a - b)^2 = a^2 - 2*a*b + b^2"
proof -
  have "(a - b)^2 = (-b + a)^2" by (simp)
  also have "... = a^2 - 2*a*b + b^2" by (smt (verit) calculation diff_add_eq power2_diff)
  finally show ?thesis by simp
qed