lemma sqrt_equality:
  fixes a b :: real
  assumes "sqrt a = sqrt b" "a \<ge> 0" "b \<ge> 0"
  shows "a = b"
proof -
  have "sqrt a ^ 2 = sqrt b ^ 2" 
    using assms(1) by (simp add: power2_eq_square)
  then have "a = b" 
    using assms(2) assms(3) by auto
  thus ?thesis by simp
qed