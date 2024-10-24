lemma sum_terms_count:
  fixes lower :: nat and upper :: nat
  assumes "lower < upper"
  shows "card {lower::nat..<upper} = upper - lower"
proof -
  have "card {lower::nat..<upper} = upper - lower" 
    by auto
  then show ?thesis by (metis assms)
qed