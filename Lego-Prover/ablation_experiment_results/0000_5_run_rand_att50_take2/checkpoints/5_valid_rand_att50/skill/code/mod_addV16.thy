lemma mod_add:
  fixes a b n :: nat
  assumes "n > 0"
  shows "(a + b) mod n = ((a mod n) + (b mod n)) mod n"
proof -
  have "a = (a div n) * n + (a mod n)" using assms by auto
  have "b = (b div n) * n + (b mod n)" using assms by auto
  then have "a + b = ((a div n) * n + (b div n) * n) + (a mod n) + (b mod n)" 
    by (simp add: algebra_simps)
  then have "a + b = ((a div n + b div n) * n) + (a mod n + b mod n)" 
    by (simp add: algebra_simps)
  then have "(a + b) mod n = (((a div n + b div n) * n) + (a mod n + b mod n)) mod n" 
    by (simp add: algebra_simps)
  also have "... = ((a mod n + b mod n) + ((a div n + b div n) * n)) mod n" 
    by (simp add: algebra_simps)
  finally show ?thesis 
    by (simp only: add.assoc mod_add_eq)
qed