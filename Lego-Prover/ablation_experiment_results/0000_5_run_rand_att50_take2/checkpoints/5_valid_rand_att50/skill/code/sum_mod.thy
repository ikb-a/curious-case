lemma sum_mod:
  fixes a b :: nat
  shows "(a mod 10 + b mod 10) mod 10 = (a + b) mod 10"
proof -
  let ?x = "a mod 10"
  let ?y = "b mod 10"
  have "a = ?x + (a div 10) * 10" and "b = ?y + (b div 10) * 10"
    by auto
  then have "a + b = (?x + ?y) + ((a div 10) + (b div 10)) * 10"
    by (simp add: algebra_simps)
  then have "(a + b) mod 10 = ((?x + ?y) + ((a div 10) + (b div 10)) * 10) mod 10"
    by presburger
  also have "... = (?x + ?y) mod 10"
    by presburger
  also have "... = (a mod 10 + b mod 10) mod 10"
    by auto
  finally show ?thesis by presburger
qed