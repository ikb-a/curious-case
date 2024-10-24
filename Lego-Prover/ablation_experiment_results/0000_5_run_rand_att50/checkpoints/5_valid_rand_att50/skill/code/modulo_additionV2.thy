lemma modulo_addition:
  fixes a b :: nat
  shows "(a + b) mod 10 = (a mod 10 + b mod 10) mod 10"
proof -
  have "a mod 10 < 10" and "b mod 10 < 10" by auto
  then have "a mod 10 + b mod 10 < 20" by auto
  have "(a + b) = (a mod 10 + b mod 10) + 10 * (a div 10 + b div 10)"
    by (simp add: algebra_simps)
  then have "(a + b) mod 10 = ((a mod 10 + b mod 10) + 10 * (a div 10 + b div 10)) mod 10"
    by presburger
  also have "... = (a mod 10 + b mod 10) mod 10"
  proof -
    have "((a mod 10 + b mod 10) + 10 * (a div 10 + b div 10)) mod 10 = (a mod 10 + b mod 10) mod 10"
      using `a mod 10 + b mod 10 < 20`
      by presburger
    thus ?thesis by simp
  qed
  finally show ?thesis by simp
qed