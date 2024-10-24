lemma num_terms_in_range:
  fixes a b :: nat
  assumes "a < b"
  shows "card {a::nat..<b} = b - a"
proof -
  have "{a::nat..<b} = {k. a \<le> k \<and> k < b}" by auto
  then show ?thesis by fastforce
qed