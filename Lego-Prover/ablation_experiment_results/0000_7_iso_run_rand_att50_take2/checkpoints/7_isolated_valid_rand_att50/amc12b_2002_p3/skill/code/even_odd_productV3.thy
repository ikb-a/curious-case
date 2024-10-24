lemma even_odd_product:
  fixes a b :: nat
  assumes "even a" and "odd b"
  shows "even (a * b)"
proof -
  obtain k where "a = 2 * k" using assms(1) by auto
  obtain m where "b = 2 * m + 1" using assms(2) by (metis odd_two_times_div_two_succ)
  hence "a * b = (2 * k) * (2 * m + 1)" by (simp add: `a = 2 * k` `b = 2 * m + 1`)
  thus "even (a * b)" 
  proof -
    have "a * b = 2 * k * (2 * m + 1)" by (metis \<open>a * b = 2 * k * (2 * m + 1)\<close>)
    also have "... = 2 * (k * (2 * m + 1))" by (simp add: ac_simps)
    finally show ?thesis by auto
  qed
qed