lemma count_range_terms:
  fixes a b :: nat
  assumes "a < b"
  shows "b - a + 1 = card {a..b}"
proof -
  have "b - a + 1 = length [x. x \<leftarrow> [a..b]]" by (smt (verit) assms ceiling_less_one ceiling_one int_ops(2) int_ops(6) length_upto less_numeral_extra(3) list.map_ident nat_diff_split nat_less_as_int nat_plus_as_int zero_less_diff)
  also have "... = card {a..b}" by simp
  finally show ?thesis by simp
qed