lemma nat_successor_inequality:
  fixes a b :: nat
  assumes "a < b"
  shows "a + 1 < b + 1"
proof -
  have "a + 1 < b + 1" using assms by simp
  then show ?thesis by simp
qed