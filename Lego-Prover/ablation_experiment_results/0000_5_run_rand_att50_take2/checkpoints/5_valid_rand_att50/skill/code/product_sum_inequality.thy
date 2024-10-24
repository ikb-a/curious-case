lemma product_sum_inequality:
  fixes x y :: real
  assumes "x > 0" and "y > 0"
  shows "((x * y) - 1)^2 + (x + y)^2 \<ge> 1"
proof -
  let ?E = "((x * y) - 1)^2 + (x + y)^2"
  have "((x * y) - 1)^2 = (x^2 * y^2 - 2 * x * y + 1)" by sos
  have "(x + y)^2 = x^2 + 2 * x * y + y^2" by sos
  have "?E = (x^2 * y^2 - 2 * x * y + 1) + (x^2 + 2 * x * y + y^2)"
    by sos
  have "?E = x^2 * y^2 + x^2 + y^2 + 1" by sos
  have "x^2 * y^2 \<ge> 0" by simp
  have "x^2 \<ge> 0" by simp
  have "y^2 \<ge> 0" by simp
  have "?E \<ge> 1" using `x > 0` `y > 0` by (smt (verit) \<open>(x * y - 1)\<^sup>2 + (x + y)\<^sup>2 = x\<^sup>2 * y\<^sup>2 + x\<^sup>2 + y\<^sup>2 + 1\<close> \<open>0 \<le> x\<^sup>2 * y\<^sup>2\<close> \<open>0 \<le> x\<^sup>2\<close> \<open>0 \<le> y\<^sup>2\<close>)
  thus ?thesis by simp
qed