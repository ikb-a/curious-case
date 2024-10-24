lemma even_product_of_two:
  fixes a b :: nat
  assumes "even a" and "even b"
  shows "even (a * b)"
proof -
  obtain k1 where "a = 2 * k1" using assms(1) by auto
  obtain k2 where "b = 2 * k2" using assms(2) by auto
  hence "a * b = (2 * k1) * (2 * k2)" by (simp add: `a = 2 * k1` `b = 2 * k2`)
  thus "even (a * b)" 
  proof -
    have "a * b = 2 * k1 * 2 * k2" by (smt (verit) \<open>a = 2 * k1\<close> \<open>b = 2 * k2\<close> mult.assoc)
    also have "... = 2 * (k1 * k2 * 2)" by (simp add: ac_simps)
    finally show ?thesis by auto
  qed
qed