lemma units_digit_modulo:
  fixes a :: nat
  shows "a mod 10 = (a mod 10)"
proof -
  have "a mod 10 = a mod 10" by simp
  thus ?thesis by simp
qed