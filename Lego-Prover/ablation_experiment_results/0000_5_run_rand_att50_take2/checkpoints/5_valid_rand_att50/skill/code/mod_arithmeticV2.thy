lemma mod_arithmetic:
  fixes a b c :: nat
  assumes "a > 0" "b < a" "c < a"
  shows "(b + c) mod a = (b mod a + c mod a) mod a"
proof -
  have "b mod a = b" using assms(2) by simp
  have "c mod a = c" using assms(3) by simp
  then have "(b mod a + c mod a) = b + c" using `b mod a = b` `c mod a = c` by simp
  thus ?thesis 
    using `a > 0` by (simp add: mod_add_eq)
qed