lemma odd_even_product:
  fixes a b :: nat
  assumes "even a" "odd b"
  shows "even (a * b)"
proof -
  obtain m where "a = 2 * m" 
    using assms(1) by auto
  obtain n where "b = 2 * n + 1" 
    using assms(2) by (metis odd_two_times_div_two_succ)
  have "a * b = (2 * m) * (2 * n + 1)" 
    by (metis `a = 2 * m` `b = 2 * n + 1`)
  hence "a * b = 2 * m * (2 * n + 1)" 
    by (simp)
  thus "even (a * b)" 
    by auto
qed