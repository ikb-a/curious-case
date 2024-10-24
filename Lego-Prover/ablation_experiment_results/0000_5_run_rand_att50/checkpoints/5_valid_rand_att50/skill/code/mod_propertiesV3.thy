lemma mod_properties:
  fixes a b c :: nat
  assumes "c > 0"
  shows "(a + b) mod c = ((a mod c) + (b mod c)) mod c"
proof -
  have "a = (a mod c) + (a div c) * c" using assms by (auto)
  have "b = (b mod c) + (b div c) * c" using assms by (auto)
  then have "a + b = ((a mod c) + (a div c) * c) + ((b mod c) + (b div c) * c)"
    by (metis \<open>a = (a mod c) + (a div c) * c\<close>)
  then have "a + b = (a mod c) + (b mod c) + (a div c + b div c) * c"
    by (simp add: algebra_simps)
  then have "(a + b) mod c = ((a mod c) + (b mod c) + (a div c + b div c) * c) mod c"
    by simp
  also have "... = ((a mod c) + (b mod c)) mod c"
    by (simp add: mod_add_eq)
  finally show ?thesis by simp
qed