theorem amc12b_2003_p9_multi:
  fixes a b :: real and f :: "real \<Rightarrow> real"
  assumes "\<forall> x. f x = a * x + b"
    and "f 6 - f 2 = 12"
    and "f 10 - f 2 = 20"  
  shows "f 12 - f 2 = 30"
proof -
  have "f x = a * x + b" for x by (simp add: assms(1))
  have "f 6 - f 2 = (a * 6 + b) - (a * 2 + b)" by (simp add: assms(1))
  have "f 6 - f 2 = 6 * a - 2 * a" by (smt (verit) \<open>f 6 - f 2 = a * 6 + b - (a * 2 + b)\<close>)
  have "4 * a = 12" using `f 6 - f 2 = 12` by (smt (verit) \<open>f 6 - f 2 = 6 * a - 2 * a\<close>)
  have "a = 3" by (smt (verit) \<open>4 * a = 12\<close>)
  have "f 12 - f 2 = (a * 12 + b) - (a * 2 + b)" by (simp add: assms(1))
  have "f 12 - f 2 = 12 * a - 2 * a" by (smt (verit) \<open>f 12 - f 2 = a * 12 + b - (a * 2 + b)\<close>)
  have "f 12 - f 2 = 10 * a" by (smt (verit) \<open>f 12 - f 2 = 12 * a - 2 * a\<close>)
  then have "f 12 - f 2 = 10 * 3" using `a = 3` by simp
  show ?thesis by (smt (verit) \<open>f 12 - f 2 = 10 * 3\<close>)
qed