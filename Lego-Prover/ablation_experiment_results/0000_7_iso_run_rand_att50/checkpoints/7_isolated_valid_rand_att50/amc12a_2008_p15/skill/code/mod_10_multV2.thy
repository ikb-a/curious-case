lemma mod_10_mult:
  fixes a b :: nat
  shows "(a * b) mod 10 = ( (a mod 10) * (b mod 10) ) mod 10"
proof -
  have "(a * b) mod 10 = ((a mod 10) + 10 * (a div 10)) * ((b mod 10) + 10 * (b div 10)) mod 10"
    by auto
  also have "... = ((a mod 10) * (b mod 10)) mod 10"
    by (metis calculation mod_mult_eq)
  finally show ?thesis by simp
qed