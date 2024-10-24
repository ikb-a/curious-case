theorem amc12b_2003_p9_extended:
  fixes a b :: real and f :: "real \<Rightarrow> real"
  assumes "\<forall> x. f x = a * x + b"
    and "f 6 - f 2 = 12"
    and "f 12 - f 2 = 30"
  shows "a = 3"
proof -
  have "f 6 - f 2 = (a * 6 + b) - (a * 2 + b)" by (simp add: assms(1))
  have "f 6 - f 2 = 6 * a - 2 * a" by (smt (verit) \<open>f 6 - f 2 = a * 6 + b - (a * 2 + b)\<close>)
  then have "4 * a = 12" using assms(2) by simp
  thus "a = 3" by (simp)
qed