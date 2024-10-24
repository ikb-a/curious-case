lemma mod_properties:
  fixes a b c :: nat
  assumes "c > 0"
  shows "(a + b) mod c = ((a mod c) + (b mod c)) mod c"
proof -
  have "a = (a mod c) + c * (a div c)" using assms by (metis mod_mult_div_eq)
  have "b = (b mod c) + c * (b div c)" using assms by (metis mod_mult_div_eq)
  then have "a + b = ((a mod c) + c * (a div c)) + ((b mod c) + c * (b div c))" 
    by auto
  then have "a + b = (a mod c) + (b mod c) + c * ((a div c) + (b div c))" 
    by (simp add: algebra_simps)
  then have "(a + b) mod c = ((a mod c) + (b mod c) + c * ((a div c) + (b div c))) mod c" 
    by simp
  also have "... = ((a mod c) + (b mod c)) mod c" 
    by auto
  finally show ?thesis by simp
qed