lemma express_N_general:
  fixes N :: nat and k :: nat and a b :: nat
  assumes "N = a * k + b" "a > 0" "b < a"
  shows "N mod a = b"
proof -
  have "N mod a = (a * k + b) mod a" using assms by simp
  also have "... = (a * k mod a + b mod a)" by auto
  also have "... = (0 + b) mod a" by (simp add: mod_less_divisor)
  also have "... = b" by (metis add_cancel_left_left assms(3) mod_less)
  finally show "N mod a = b" by simp
qed