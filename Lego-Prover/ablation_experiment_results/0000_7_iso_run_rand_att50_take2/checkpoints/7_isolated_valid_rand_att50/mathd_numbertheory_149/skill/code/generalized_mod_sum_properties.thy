lemma generalized_mod_sum_properties:
  fixes a b c :: nat
  assumes "a < c" "b < c"
  shows "(a + b) mod c = (a mod c + b mod c) mod c"
proof -
  have "a mod c = a" and "b mod c = b" using assms by simp_all
  then have "(a + b) mod c = (a + b) mod c" by simp
  thus ?thesis by presburger
qed