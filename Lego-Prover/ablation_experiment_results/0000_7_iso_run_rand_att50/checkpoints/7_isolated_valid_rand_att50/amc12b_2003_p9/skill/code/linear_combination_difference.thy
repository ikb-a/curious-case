lemma linear_combination_difference:
  fixes a1 a2 b1 b2 :: real and f1 f2 :: "real \<Rightarrow> real"
  assumes "\<forall>x. f1 x = a1 * x + b1" 
    and "\<forall>x. f2 x = a2 * x + b2" 
  shows "f1 x - f2 y = a1 * x - a2 * y + (b1 - b2)"
proof -
  have "f1 x = a1 * x + b1" 
    and "f2 y = a2 * y + b2" 
    using assms by auto
  then show ?thesis by simp
qed