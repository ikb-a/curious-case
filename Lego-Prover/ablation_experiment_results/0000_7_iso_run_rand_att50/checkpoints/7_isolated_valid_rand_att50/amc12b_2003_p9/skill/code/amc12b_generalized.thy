theorem amc12b_generalized:
  fixes a b :: real and f :: "real \<Rightarrow> real"
  assumes "\<forall> x. f x = a * x + b"
    and "f x1 - f x2 = d"  
  shows "f x3 - f x2 = (x3 - x2) * a"  
proof -
  have "f x1 - f x2 = (a * x1 + b) - (a * x2 + b)"
    using assms(1) by simp
  then have "f x1 - f x2 = a * x1 - a * x2"
    by simp
  then have "f x1 - f x2 = a * (x1 - x2)"
    by (simp add: algebra_simps)
  then have "a * (x1 - x2) = d" using assms(2) by simp
  then have "f x3 - f x2 = (a * x3 + b) - (a * x2 + b)"
    using assms(1) by simp
  then have "f x3 - f x2 = a * x3 - a * x2"
    by simp
  then have "f x3 - f x2 = a * (x3 - x2)" by (simp add: algebra_simps)
  then show ?thesis by simp
qed