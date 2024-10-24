lemma product_odd_any_even:
  fixes a :: nat
  fixes b :: nat
  assumes "b mod 2 = 0"  
  shows "a * b mod 2 = 0" 
proof -
  obtain n where "b = 2 * n" using assms by auto
  hence "a * b = a * (2 * n)" by simp
  thus "a * b mod 2 = 0" by auto
qed