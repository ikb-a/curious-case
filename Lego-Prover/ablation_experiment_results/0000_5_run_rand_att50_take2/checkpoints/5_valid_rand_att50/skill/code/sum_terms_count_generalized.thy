lemma sum_terms_count_generalized:
  fixes m n :: nat
  assumes "m < n"
  shows "card {m::nat..<n} = n - m"
  by (simp add: assms)