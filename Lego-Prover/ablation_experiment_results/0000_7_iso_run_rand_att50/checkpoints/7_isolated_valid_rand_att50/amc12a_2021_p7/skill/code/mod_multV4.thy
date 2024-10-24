lemma mod_mult:
  fixes a b n :: nat
  assumes "n > 0"
  shows "(a * b) mod n = ((a mod n) * (b mod n)) mod n"
proof -
  have "a = (a mod n) + (a div n) * n" by auto
  have "b = (b mod n) + (b div n) * n" by auto
  have "(a * b) mod n = ((a mod n) + (a div n) * n) * ((b mod n) + (b div n) * n) mod n"
    by auto
  also have "... = ((a mod n) * (b mod n) + (a mod n) * (b div n) * n + (b mod n) * (a div n) * n + (a div n) * (b div n) * n * n) mod n"
    by (metis calculation comm_semiring_class.distrib group_cancel.add1 left_add_mult_distrib mod_mult_eq mod_mult_self1)
  also have "... = ((a mod n) * (b mod n)) mod n"
  proof -
    have "((a mod n) * (b div n) * n) mod n = 0" by (simp add: mod_mult_self1)
    have "((b mod n) * (a div n) * n) mod n = 0" by (simp add: mod_mult_self1)
    have "((a div n) * (b div n) * n * n) mod n = 0" by (simp add: mod_mult_self1)
    thus ?thesis by auto
  qed
  finally show ?thesis by auto
qed