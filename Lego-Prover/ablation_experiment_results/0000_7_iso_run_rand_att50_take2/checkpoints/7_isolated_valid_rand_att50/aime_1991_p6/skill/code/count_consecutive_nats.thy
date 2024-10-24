lemma count_consecutive_nats:
  fixes a b :: nat
  assumes "a < b"
  shows "card {a::nat..<b} = b - a"
proof -
  have "card {a::nat..<b} = b - a" using assms
    by auto
  then show ?thesis by simp
qed