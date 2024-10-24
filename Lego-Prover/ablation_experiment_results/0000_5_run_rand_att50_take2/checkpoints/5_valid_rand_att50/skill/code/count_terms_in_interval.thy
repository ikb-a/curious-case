lemma count_terms_in_interval:
  fixes a b :: nat
  assumes "a < b"
  shows "card {a ..< b} = b - a"
proof -
  have "card {a ..< b} = b - a" using assms by simp
  then show ?thesis by auto
qed