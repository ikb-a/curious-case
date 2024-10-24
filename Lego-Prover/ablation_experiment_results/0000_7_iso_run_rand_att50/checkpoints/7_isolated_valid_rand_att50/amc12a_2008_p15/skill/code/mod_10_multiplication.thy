lemma mod_10_multiplication:
  fixes a b :: nat
  shows "(a * b) mod 10 = ((a mod 10) * (b mod 10)) mod 10"
proof -
  have "a * b = (10 * (a div 10) + (a mod 10)) * (10 * (b div 10) + (b mod 10))" by auto
  then have "(a * b) mod 10 = ((a mod 10) * (b mod 10)) mod 10" by (metis mod_mult_eq)
  thus ?thesis by simp
qed