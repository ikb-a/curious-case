lemma combine_mod_results:
  fixes x y :: nat
  assumes "x mod 10 = 0" and "y mod 10 = 6"
  shows "(x + y) mod 10 = 6"
proof -
  have "x = 10 * (x div 10) + 0" using assms(1) by auto
  have "y = 10 * (y div 10) + 6" using assms(2) by presburger
  have "x + y = (10 * (x div 10) + 0) + (10 * (y div 10) + 6)"
    by (metis \<open>x = 10 * (x div 10) + 0\<close> \<open>y = 10 * (y div 10) + 6\<close>)
  then have "x + y = 10 * ((x div 10) + (y div 10)) + 6"
    by auto
  then have "(x + y) mod 10 = (10 * ((x div 10) + (y div 10)) + 6) mod 10"
    by (auto simp: field_simps)
  also have "... = 6 mod 10"
    by (metis mod_mult_self4)
  finally show ?thesis by simp
qed