lemma combine_modular_results:
  fixes a b :: nat
  assumes "a mod 10 = 0" and "b mod 10 = 6"
  shows "(a + b) mod 10 = 6"
proof -
  have "a = 10 * (a div 10)" using assms(1) by auto
  hence "a + b = 10 * (a div 10) + b" by simp
  then have "(a + b) mod 10 = (10 * (a div 10) + b) mod 10" by simp
  also have "... = (b mod 10)" by (simp add: mod_add_eq)
  also have "... = 6" using assms(2) by simp
  finally show ?thesis by simp
qed