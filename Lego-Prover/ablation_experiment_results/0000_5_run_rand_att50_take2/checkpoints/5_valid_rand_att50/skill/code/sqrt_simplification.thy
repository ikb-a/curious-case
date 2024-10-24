lemma sqrt_simplification:
  fixes a b :: real
  assumes "a \<ge> 0" "b \<ge> 0"
  shows "sqrt(a) + sqrt(b) = sqrt(a + b + 2*sqrt(a*b))"
proof -
  let ?x = "sqrt a"
  let ?y = "sqrt b"
  have "a = ?x^2" using assms(1) by (simp add: sqrt_def)
  have "b = ?y^2" using assms(2) by (simp add: sqrt_def)
  have "sqrt(a + b + 2*sqrt(a*b)) = sqrt(?x^2 + ?y^2 + 2*?x*?y)"
    by (smt (verit) \<open>a = (sqrt a)\<^sup>2\<close> \<open>b = (sqrt b)\<^sup>2\<close> add.left_cancel mult.commute mult_2_right real_sqrt_eq_iff real_sqrt_mult ring_class.ring_distribs(1))
  have "sqrt(?x^2 + ?y^2 + 2*?x*?y) = sqrt((?x + ?y)^2)"
    by (simp add: power2_sum)
  then have "sqrt(?x^2 + ?y^2 + 2*?x*?y) = ?x + ?y"
    by (metis add_nonneg_nonneg assms(1) assms(2) power2_sum real_sqrt_ge_zero real_sqrt_unique)
  thus ?thesis 
    by (metis \<open>a = (sqrt a)\<^sup>2\<close> \<open>b = (sqrt b)\<^sup>2\<close> \<open>sqrt (a + b + 2 * sqrt (a * b)) = sqrt ((sqrt a)\<^sup>2 + (sqrt b)\<^sup>2 + 2 * sqrt a * sqrt b)\<close>)
qed