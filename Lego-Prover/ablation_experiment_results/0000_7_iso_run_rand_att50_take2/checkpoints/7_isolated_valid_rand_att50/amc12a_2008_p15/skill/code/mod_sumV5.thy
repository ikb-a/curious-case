lemma mod_sum:
  fixes a b :: nat
  assumes "a mod 10 + b mod 10 < 10"
  shows "(a + b) mod 10 = (a mod 10 + b mod 10)"
proof -
  have "a + b = (a mod 10) + (b mod 10) + 10 * (a div 10 + b div 10)"
    by (auto simp: field_simps)
  then have "(a + b) mod 10 = ((a mod 10) + (b mod 10) + 10 * (a div 10 + b div 10)) mod 10"
    by presburger
  also have "... = (a mod 10) + (b mod 10)"
  proof -
    have "10 * (a div 10 + b div 10) mod 10 = 0"
      by simp
    then show ?thesis 
      using assms by fastforce
  qed
  finally show ?thesis by simp
qed