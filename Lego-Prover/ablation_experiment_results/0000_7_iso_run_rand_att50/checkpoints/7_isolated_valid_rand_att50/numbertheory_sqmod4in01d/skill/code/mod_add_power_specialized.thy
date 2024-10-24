theorem mod_add_power_specialized:
  fixes x n b c :: nat
  assumes "n > 0" "b > 0" "c > 0" "x mod n = 0"
  shows "((x + b)^c) mod n = (b^c) mod n"
proof -
  let ?a = "0"
  have "((x + b)^c) mod n = ((?a + b)^c) mod n" 
    using assms by (simp add: mod_add_power_generalized)
  thus ?thesis by simp
qed