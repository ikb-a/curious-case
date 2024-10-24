theorem amc12a_2013_p8_simplified:
  fixes x y :: real
  assumes "x \<noteq> 0" "y \<noteq> 0" "x \<noteq> y" "x + 2/x = y + 2/y"
  shows "x * y = 2"
proof -
  obtain a b where "x = a" and "y = b" using assms by auto
  have "a + 2/a = b + 2/b" using assms(4) by (metis \<open>x = a\<close> \<open>y = b\<close>)
  have "a - b = (2/b - 2/a)" by (smt (verit) \<open>a + 2 / a = b + 2 / b\<close> \<open>x = a\<close> \<open>y = b\<close>)
  have "((a - b) * a * b) = 2 * (a - b)" using `a - b = (2/b - 2/a)` by sos
  hence "a * b = 2" by (smt (verit) \<open>a + 2 / a = b + 2 / b\<close> \<open>x = a\<close> \<open>y = b\<close> amc12a_2013_p8_evolved assms(1) assms(2) assms(3))
  thus ?thesis by (metis \<open>x = a\<close> \<open>y = b\<close>)
qed