lemma mod_arithmetic:
  fixes a b c :: nat
  assumes "a > 0" "b < a" "c < a"
  shows "(b + c) mod a = (b mod a + c mod a) mod a"
proof -
  have "b mod a = b" and "c mod a = c" 
    using assms by auto
  then have "(b mod a + c mod a) mod a = (b + c) mod a"
    by (simp add: algebra_simps)
  thus ?thesis by simp
qed