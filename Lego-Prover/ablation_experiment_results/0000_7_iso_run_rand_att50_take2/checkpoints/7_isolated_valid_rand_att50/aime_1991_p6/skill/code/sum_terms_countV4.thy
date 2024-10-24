lemma sum_terms_count:
  fixes a b :: nat
  assumes "b = 92" and "a = 19"
  shows "(\<Sum> k \<in> {a..<b}. 1) = b - a"
proof -
  have "b - a = 92 - 19" by (metis assms(1) assms(2))
  also have "... = 73" by simp
  finally show ?thesis by auto
qed