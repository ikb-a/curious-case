lemma sqrt_equality:
  fixes a b :: real
  assumes "sqrt a = sqrt b" "a \<ge> 0" "b \<ge> 0"
  shows "a = b"
proof -
  have "sqrt a * sqrt a = sqrt b * sqrt b" 
    using assms(1) by (metis real_sqrt_mult)
  also have "sqrt a * sqrt a = a" 
    using assms(2) by auto
  also have "sqrt b * sqrt b = b" 
    using assms(3) by auto
  finally have "a = b" by simp
  thus ?thesis by simp
qed