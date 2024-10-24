lemma simplify_congruence:
  fixes a b c :: nat
  assumes "a > 0" "b < a" "c < a"
  shows "(b + c) mod a = (b mod a + c mod a) mod a"
proof -
  have "b mod a = b" using assms(2) by simp
  have "c mod a = c" using assms(3) by simp
  have "b + c = (b mod a) + (c mod a)" 
    using assms(1) assms(2) assms(3) by auto
  then have "(b + c) mod a = ((b mod a) + (c mod a)) mod a"
    by auto
  thus ?thesis by simp
qed