lemma cross_multiplication:
  fixes x y :: real
  assumes h0: "x \<noteq> y"
  shows "(x - y) * x * y = 2 * (x - y) \<longleftrightarrow> x * y = 2"
proof -
  have "x - y \<noteq> 0" using h0 by simp
  have "x * y = 2 \<longrightarrow> (x - y) * x * y = 2 * (x - y)"
    by (simp add: field_simps)
  moreover
  have "((x - y) * x * y = 2 * (x - y)) \<longrightarrow> x * y = 2"
    using h0 by sos
  ultimately show ?thesis by blast
qed