lemma mod_simplification:
  fixes x y n a b :: nat
  assumes "x mod n = a" and "y mod n = b"
  shows "(x + y) mod n = (a + b) mod n"
proof -
  let ?a = "x mod n"
  let ?b = "y mod n"
  have "x = ?a + (x div n) * n" and "y = ?b + (y div n) * n"
    by auto 
  have "x + y = (?a + ?b) + ((x div n) + (y div n)) * n"
    by (simp add: algebra_simps)
  then have "(x + y) mod n = ((?a + ?b) + ((x div n) + (y div n)) * n) mod n"
    by simp
  also have "... = (?a + ?b) mod n"
    by (simp add: mod_add_eq) 
  also have "... = (a + b) mod n"
    using assms by auto
  finally show ?thesis by auto
qed