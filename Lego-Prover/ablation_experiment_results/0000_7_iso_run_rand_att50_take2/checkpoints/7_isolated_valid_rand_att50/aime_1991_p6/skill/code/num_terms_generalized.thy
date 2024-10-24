lemma num_terms_generalized:
  fixes m n :: nat
  assumes "m < n"
  shows "card {m::nat..<n} = n - m"
proof -
  have "card {m::nat..<n} = n - m"
    by (simp add: assms)
  then show ?thesis by simp
qed