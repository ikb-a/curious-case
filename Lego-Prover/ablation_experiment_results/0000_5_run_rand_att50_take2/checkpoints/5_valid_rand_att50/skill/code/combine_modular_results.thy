lemma combine_modular_results:
  fixes a b :: nat
  assumes "a mod 10 = 0" and "b mod 10 = 6"
  shows "(a + b) mod 10 = 6"
proof -
  have "a = 10 * (a div 10)" using assms(1) by auto
  have "b = 10 * (b div 10) + 6" using assms(2) by presburger
  then have "a + b = 10 * (a div 10) + (10 * (b div 10) + 6)" 
    by (metis \<open>a = 10 * (a div 10)\<close>)
  then have "a + b = 10 * (a div 10 + b div 10) + 6"
    by (simp add: algebra_simps)
  then have "(a + b) mod 10 = (10 * (a div 10 + b div 10) + 6) mod 10"
    by simp
  also have "... = 6"
    by presburger
  finally show ?thesis .
qed