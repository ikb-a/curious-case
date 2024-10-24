lemma product_even:
  assumes "even a" "even b"
  shows "even (a * b)"
proof -
  obtain k1 k2 where "a = 2 * k1" and "b = 2 * k2" using assms by blast
  then have "a * b = (2 * k1) * (2 * k2)" by simp
  thus "even (a * b)" 
    by auto
qed