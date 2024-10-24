lemma mod_sum:
  fixes x y :: nat
  shows "(x mod 10 + y mod 10) mod 10 = (x + y) mod 10"
proof -
  let ?a = "x mod 10"
  let ?b = "y mod 10"
  have "x = ?a + (x div 10) * 10" and "y = ?b + (y div 10) * 10"
    by auto
  have "x + y = (?a + ?b) + ((x div 10) + (y div 10)) * 10"
    using `x = ?a + (x div 10) * 10` `y = ?b + (y div 10) * 10`
    by (simp add: algebra_simps)
  have "(x + y) mod 10 = ((?a + ?b) + ((x div 10) + (y div 10)) * 10) mod 10"
    by (simp add: algebra_simps)
  also have "... = (?a + ?b) mod 10"
    by presburger
  also have "... = (x mod 10 + y mod 10) mod 10"
    by auto
  finally show ?thesis by presburger
qed