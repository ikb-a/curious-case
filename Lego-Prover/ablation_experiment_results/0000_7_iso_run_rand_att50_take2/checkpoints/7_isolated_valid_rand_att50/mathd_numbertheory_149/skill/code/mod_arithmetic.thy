lemma mod_arithmetic:
  fixes a b c :: nat
  assumes "a > 0" "b < a" "c > 0"
  shows "(b + c) mod a = ((b mod a) + (c mod a)) mod a"
proof -
  have "b mod a = b" using assms(2) by simp
  have "c mod a < a" using assms(3) by (metis assms(1) mod_less_divisor)
  have "b + c = (b mod a) + (c mod a) + (b div a + c div a) * a"
    by (auto simp: field_simps)
  then have "(b + c) mod a = ((b mod a) + (c mod a) + (b div a + c div a) * a) mod a"
    by simp
  also have "... = ((b mod a) + (c mod a)) mod a"
    using assms(1) assms(2) by presburger
  finally show ?thesis by simp
qed