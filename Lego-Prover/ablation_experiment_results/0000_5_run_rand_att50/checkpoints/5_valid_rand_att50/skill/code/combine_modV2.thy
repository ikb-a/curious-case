lemma combine_mod:
  fixes a b :: nat
  assumes "a mod 10 = x" "b mod 10 = y"
  shows "(a + b) mod 10 = (x + y) mod 10"
proof -
  have "a = (a mod 10) + 10 * (a div 10)" 
    by (simp add: nat_eq_iff)
  have "b = (b mod 10) + 10 * (b div 10)" 
    by (simp add: nat_eq_iff)
  then have "a + b = (a mod 10) + (b mod 10) + 10 * ((a div 10) + (b div 10))" 
    by simp
  have "(a + b) mod 10 = ((a mod 10) + (b mod 10) + 10 * ((a div 10) + (b div 10))) mod 10" 
    by presburger
  also have "... = ((x + y) + 10 * ((a div 10) + (b div 10))) mod 10" 
    using assms by auto
  also have "... = (x + y) mod 10" 
    by presburger
  finally show ?thesis by simp
qed