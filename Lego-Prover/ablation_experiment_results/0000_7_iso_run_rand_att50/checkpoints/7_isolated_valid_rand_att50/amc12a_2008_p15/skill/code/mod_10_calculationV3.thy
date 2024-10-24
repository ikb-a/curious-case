lemma mod_10_calculation:
  fixes a b :: nat
  assumes "a mod 10 = 4" and "b mod 10 = 6"
  shows "(a + b) mod 10 = 0"
proof -
  have "a = 10 * (a div 10) + 4" using assms(1) by presburger
  have "b = 10 * (b div 10) + 6" using assms(2) by presburger
  then have "a + b = (10 * (a div 10) + 4) + (10 * (b div 10) + 6)"
    by (metis \<open>a = 10 * (a div 10) + 4\<close>)
  then have "a + b = 10 * ((a div 10) + (b div 10)) + (4 + 6)"
    by simp
  have "4 + 6 = 10" by simp
  thus ?thesis
    by (metis \<open>a + b = 10 * (a div 10 + b div 10) + (4 + 6)\<close> mod_add_self2 mod_mult_self1_is_0 numeral_plus_numeral semiring_norm(2) semiring_norm(3) semiring_norm(6) semiring_norm(7))
qed