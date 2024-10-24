lemma units_digit_modulo:
  fixes a :: nat
  shows "a mod 10 = (a mod 10)"
proof -
  show ?thesis by simp
qed