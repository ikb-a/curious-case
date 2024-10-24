lemma mod_add_power:
  fixes x n a b c :: nat
  assumes "n > 0" "b > 0" "c > 0" "x mod n = a"
  shows "((x + b)^c) mod n = ((a + b)^c) mod n"
proof -
  have "x mod n = a" by (simp add: assms(4))
  hence "(x + b) mod n = (a + b) mod n" 
    by (metis add.commute add.assoc mod_add_left_eq)
  have "(x + b)^c mod n = ((x + b) mod n)^c mod n" 
    by (metis power_mod)
  also have "... = ((a + b) mod n)^c mod n" 
    using `x mod n = a` by (metis \<open>(x + b) mod n = (a + b) mod n\<close> power_mod)
  finally show ?thesis 
    by (metis power_mod)
qed