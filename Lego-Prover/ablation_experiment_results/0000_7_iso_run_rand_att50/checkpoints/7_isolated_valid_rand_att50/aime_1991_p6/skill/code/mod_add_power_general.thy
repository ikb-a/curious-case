lemma mod_add_power_general:
  fixes x n a b :: nat
  assumes "n > 0" "b > 0" 
          "x mod n = a"
  shows "((x + b)^e) mod n = ((a + b)^e) mod n"
proof -
  have "((x + b)^e) mod n = (((x + b)^e mod n))"
    by presburger
  also have "... = ((x mod n + b)^e mod n)"
    using assms(3) by (smt (verit) mod_add_left_eq power_mod)
  also have "... = ((a + b)^e mod n)"
    using assms(3) by (simp add: power_mod)
  finally show ?thesis by (metis \<open>(x + b) ^ e mod n = (x mod n + b) ^ e mod n\<close> add.commute assms(3))
qed