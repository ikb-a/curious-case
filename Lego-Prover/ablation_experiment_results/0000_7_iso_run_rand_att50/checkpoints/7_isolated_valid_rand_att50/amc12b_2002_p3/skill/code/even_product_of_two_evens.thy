lemma even_product_of_two_evens:
  fixes a b :: nat
  assumes "even a" "even b"
  shows "even (a * b)"
proof -
  obtain k where "a = 2 * k" using assms(1) by auto
  obtain m where "b = 2 * m" using assms(2) by auto
  have "a * b = (2 * k) * (2 * m)" 
    using `a = 2 * k` `b = 2 * m` by simp
  thus "even (a * b)" 
    by auto
qed