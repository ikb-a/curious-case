lemma combine_mod:
  fixes x y :: nat
  assumes "x mod 10 = a" "y mod 10 = b"
  shows "(x + y) mod 10 = (a + b) mod 10"
proof -
  have "x = (x mod 10) + (x div 10) * 10" using assms(1) by auto
  have "y = (y mod 10) + (y div 10) * 10" using assms(2) by auto
  then have "x + y = ((x mod 10) + (y mod 10)) + ((x div 10) + (y div 10)) * 10"
    by (simp add: algebra_simps)
  then have "(x + y) mod 10 = (((x mod 10) + (y mod 10)) + ((x div 10) + (y div 10)) * 10) mod 10"
    by presburger
  also have "... = ((x mod 10) + (y mod 10)) mod 10" 
    by presburger
  finally show ?thesis using assms by auto
qed