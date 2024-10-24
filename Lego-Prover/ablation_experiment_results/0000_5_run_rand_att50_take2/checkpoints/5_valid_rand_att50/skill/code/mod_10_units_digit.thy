lemma mod_10_units_digit:
  fixes n :: nat
  shows "n mod 10 = (n mod 10)"
proof -
  show ?thesis by simp
qed