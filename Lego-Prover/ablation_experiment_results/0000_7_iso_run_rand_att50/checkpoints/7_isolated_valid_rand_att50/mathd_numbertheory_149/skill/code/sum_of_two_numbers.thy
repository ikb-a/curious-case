lemma sum_of_two_numbers:
  fixes a b :: nat
  shows "a + b = b + a"
proof -
  have "a + b = b + a" by (simp add: add.commute)
  thus ?thesis by auto
qed