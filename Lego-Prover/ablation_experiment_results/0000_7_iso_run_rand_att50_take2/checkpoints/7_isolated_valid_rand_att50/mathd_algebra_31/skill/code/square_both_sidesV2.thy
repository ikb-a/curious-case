lemma square_both_sides:
  fixes a b :: real
  assumes "a = b"
  shows "sqrt a = sqrt b"
proof -
  from assms have "a = b" by assumption
  hence "sqrt a = sqrt b" by auto
  thus ?thesis by simp
qed