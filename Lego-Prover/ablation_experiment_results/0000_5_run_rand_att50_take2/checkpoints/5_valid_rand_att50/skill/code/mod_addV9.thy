lemma mod_add:
  fixes a b n :: nat
  assumes "n > 0"
  shows "(a + b) mod n = ((a mod n) + (b mod n)) mod n"
proof -
  let ?a' = "a mod n"
  let ?b' = "b mod n"
  have "a = ?a' + (a div n) * n" using assms by auto
  have "b = ?b' + (b div n) * n" using assms by auto
  then have "a + b = (?a' + (a div n) * n) + (?b' + (b div n) * n)"
    by (simp add: algebra_simps)
  thus ?thesis 
  proof -
    have "a + b = (?a' + ?b') + ((a div n) + (b div n)) * n"
      by (simp add: algebra_simps)
    then have "(a + b) mod n = ((?a' + ?b') + ((a div n) + (b div n)) * n) mod n"
      by simp
    also have "... = ((?a' + ?b') mod n) + (((a div n) + (b div n)) * n mod n)"
      by auto
    also have "... = (?a' + ?b') mod n"
      by (simp add: mod_mult_self1)
    finally show ?thesis using mod_add_eq by simp
  qed
qed