lemma combine_mod:
  fixes a b :: nat
  assumes "a mod 10 = x" "b mod 10 = y"
  shows "(a + b) mod 10 = (x + y) mod 10"
proof -
  let ?m1 = "a mod 10"
  let ?m2 = "b mod 10"
  have "a = 10 * (a div 10) + ?m1" using assms(1) by auto
  have "b = 10 * (b div 10) + ?m2" using assms(2) by auto
  have "a + b = (10 * (a div 10) + ?m1) + (10 * (b div 10) + ?m2)"
    by simp
  then have "a + b = 10 * ((a div 10) + (b div 10)) + (?m1 + ?m2)"
    by simp
  have "(a + b) mod 10 = (10 * ((a div 10) + (b div 10)) + (?m1 + ?m2)) mod 10"
    by (auto simp: field_simps)
  also have "... = (?m1 + ?m2) mod 10"
    by (metis mod_mult_self4)
  also have "... = (x + y) mod 10"
    using assms by auto
  finally show ?thesis .
qed