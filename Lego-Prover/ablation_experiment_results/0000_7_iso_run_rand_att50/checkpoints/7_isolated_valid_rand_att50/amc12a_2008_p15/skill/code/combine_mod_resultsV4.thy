lemma combine_mod_results:
  fixes x y :: nat
  assumes "x mod 10 = 0" and "y mod 10 = 6"
  shows "(x + y) mod 10 = 6"
proof -
  have "x mod 10 = 0" using assms(1) by simp
  have "y mod 10 = 6" using assms(2) by simp
  have "x = 10 * (x div 10) + 0" using `x mod 10 = 0` by auto
  have "y = 10 * (y div 10) + 6" using `y mod 10 = 6` by presburger
  have "x + y = (10 * (x div 10) + 0) + (10 * (y div 10) + 6)"
    by (metis \<open>x = 10 * (x div 10) + 0\<close> \<open>y = 10 * (y div 10) + 6\<close>)
  then have "x + y = 10 * ((x div 10) + (y div 10)) + 6"
    by auto
  have "(x + y) mod 10 = (10 * ((x div 10) + (y div 10)) + 6) mod 10"
    by (metis \<open>x + y = 10 * (x div 10 + y div 10) + 6\<close> semiring_norm(3))
  also have "... = 6 mod 10"
    by (metis mod_mult_self4)
  finally show ?thesis by simp
qed