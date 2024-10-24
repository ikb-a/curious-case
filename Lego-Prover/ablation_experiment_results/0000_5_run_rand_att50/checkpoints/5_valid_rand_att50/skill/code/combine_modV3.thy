lemma combine_mod:
  fixes a b :: nat
  assumes "a mod 10 = x" "b mod 10 = y"
  shows "(a + b) mod 10 = (x + y) mod 10"
proof -
  have "a = (a mod 10) + 10 * (a div 10)" 
    by (simp add: nat_eq_iff)
  have "b = (b mod 10) + 10 * (b div 10)" 
    by (simp add: nat_eq_iff)
  obtain m n where "a = x + 10 * m" "b = y + 10 * n" 
    using assms by (smt (verit) \<open>a = a mod 10 + 10 * (a div 10)\<close> \<open>b = b mod 10 + 10 * (b div 10)\<close>)
  have "a + b = (x + 10 * m) + (y + 10 * n)"
    by (metis \<open>a = x + 10 * m\<close> \<open>b = y + 10 * n\<close>)
  then have "a + b = (x + y) + 10 * (m + n)"
    by simp
  then have "(a + b) mod 10 = ((x + y) + 10 * (m + n)) mod 10"
    by presburger
  also have "... = (x + y) mod 10" 
    by presburger
  finally show ?thesis by simp
qed