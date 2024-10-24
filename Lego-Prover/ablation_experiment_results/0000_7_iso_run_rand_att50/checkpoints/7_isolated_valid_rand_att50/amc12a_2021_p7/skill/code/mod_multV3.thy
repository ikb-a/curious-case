lemma mod_mult:
  fixes a b n :: nat
  assumes "n > 0"
  shows "(a * b) mod n = ((a mod n) * (b mod n)) mod n"
proof -
  have "a = (a mod n) + (a div n) * n" by auto
  have "b = (b mod n) + (b div n) * n" by auto
  then have "(a * b) mod n = ((a mod n) + (a div n) * n) * b mod n" 
    by auto
  also have "... = ((a mod n) * b + (a div n) * n * b) mod n" by (metis add_mult_distrib)
  also have "... = ((a mod n) * (b mod n) + (a div n) * (b div n) * n * n) mod n" 
    using `(b = (b mod n) + (b div n) * n)` by (metis calculation mod_mult_eq mod_mult_self1)
  also have "... = ((a mod n) * (b mod n)) mod n" 
    by (simp add: mod_add_right_eq)
  finally show ?thesis by auto
qed