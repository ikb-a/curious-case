lemma mod_add:
  fixes a b n :: nat
  assumes "n > 0"
  shows "(a + b) mod n = ((a mod n) + (b mod n)) mod n"
proof -
  let ?a' = "a mod n"
  let ?b' = "b mod n"
  have "a = ?a' + (a div n) * n" by auto
  have "b = ?b' + (b div n) * n" by auto
  then have "a + b = (?a' + (a div n) * n) + (?b' + (b div n) * n)"
    by (simp add: algebra_simps)
  then have "a + b = (?a' + ?b') + ((a div n) + (b div n)) * n" 
    by (simp add: algebra_simps)
  have "((a + b) mod n) = ((?a' + ?b') + ((a div n) + (b div n)) * n) mod n" 
    by presburger
  also have "... = ((?a' + ?b') mod n)" 
    by auto
  finally show ?thesis 
    by (simp add: mod_add_eq)
qed