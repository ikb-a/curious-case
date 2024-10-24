lemma odd_even_product:
  fixes a b :: nat
  assumes "a mod 2 = 0" and "b mod 2 = 1"
  shows "(a * b) mod 2 = 0"
proof -
  have "a mod 2 = 0" and "b mod 2 = 1" using assms by auto
  have "a * b mod 2 = (0 * (b mod 2)) mod 2" 
    using `a mod 2 = 0` by auto
  moreover have "(0 * (b mod 2)) mod 2 = 0" 
    by auto
  ultimately show "(a * b) mod 2 = 0" by simp
qed