lemma mod_add:
  fixes a b n :: nat
  assumes "n > 0"
  shows "(a + b) mod n = ((a mod n) + (b mod n)) mod n"
proof -
  have "a = (a div n) * n + (a mod n)" by auto
  have "b = (b div n) * n + (b mod n)" by auto
  then have "a + b = (a div n) * n + (b div n) * n + (a mod n) + (b mod n)" 
    by (simp add: algebra_simps)
  then have "(a + b) mod n = ((a div n + b div n) * n + (a mod n + b mod n)) mod n"
    by (simp add: algebra_simps)
  also have "... = (a mod n + b mod n) mod n" 
    by (simp add: mod_add_eq)
  finally show ?thesis by simp
qed