lemma last_digit_of_square:
  fixes a :: nat
  shows "(a mod 10)^2 mod 10 = (a^2 mod 10)"
proof -
  let ?x = "a mod 10"
  have "a^2 mod 10 = (a mod 10)^2 mod 10" by (metis power_mod)
  thus ?thesis by simp
qed