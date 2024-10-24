lemma mod_arithmetic:
  fixes a b c :: nat
  assumes "a > 0" "b < a" "c < a"
  shows "(b + c) mod a = (b mod a + c mod a) mod a"
proof -
  have "b mod a = b" using assms(2) by simp
  have "c mod a = c" using assms(3) by simp
  then have "b mod a + c mod a = b + c" using `b mod a = b` by simp
  then have "(b + c) mod a = (b + c) mod a" by simp
  thus ?thesis by presburger
qed