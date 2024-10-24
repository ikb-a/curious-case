lemma combine_mod:
  fixes a b :: nat
  assumes "a mod 10 = x" "b mod 10 = y"
  shows "(a + b) mod 10 = (x + y) mod 10"
proof -
  let ?m1 = "a mod 10"
  let ?m2 = "b mod 10"
  have "a = 10 * (a div 10) + ?m1" using assms(1) by auto
  have "b = 10 * (b div 10) + ?m2" using assms(2) by auto
  then have "a + b = (10 * (a div 10) + ?m1) + (10 * (b div 10) + ?m2)"
    by (metis \<open>a = 10 * (a div 10) + ?m1\<close>)
  then have "a + b = 10 * ((a div 10) + (b div 10)) + (?m1 + ?m2)"
    by auto
  also have "... mod 10 = (?m1 + ?m2) mod 10"
    by (metis mod_mult_self4)
  finally show ?thesis by (metis assms(1) assms(2) mod_add_cong mod_add_eq)
qed