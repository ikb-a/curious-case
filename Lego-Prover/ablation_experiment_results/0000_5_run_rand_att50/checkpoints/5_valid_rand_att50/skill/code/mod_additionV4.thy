lemma mod_addition:
  fixes a b :: nat
  assumes "a mod 10 = 0" and "b mod 10 = 6"
  shows "(a + b) mod 10 = 6"
proof -
  have "a = 10 * (a div 10)" using assms(1) by auto
  have "b = 6 + 10 * (b div 10)" using assms(2) by presburger
  then have "a + b = (10 * (a div 10)) + (6 + 10 * (b div 10))"
    by (metis \<open>a = 10 * (a div 10)\<close>)
  hence "a + b = (10 * (a div 10 + b div 10)) + 6"
    by (simp add: algebra_simps)
  then have "(a + b) mod 10 = 6" 
    using mod_add_eq by presburger
  thus ?thesis by simp
qed