theorem amc12b_2003_p9_extended:
  fixes a b :: real and f :: "real \<Rightarrow> real"
  assumes "\<forall> x. f x = a * x + b"
    and "f 6 - f 2 = 12"
  shows "f x - f 2 = (x - 2) * a" 
proof -
  have "f x - f 2 = (a * x + b) - (a * 2 + b)"
    using assms(1) by auto
  then show ?thesis by (auto simp: field_simps)
qed