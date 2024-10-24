lemma product_prime:
  fixes a b :: nat
  assumes "a > 0" and "b > 0" and "a * b = p" and "prime p"
  shows "a = 1 \<or> b = 1"
proof -
  have "p = a * b" using assms(3) by simp
  then have "1 < a * b" using assms(1) assms(2) by (metis assms(3) assms(4) prime_nat_iff)
  then have "a = 1 \<or> b = 1" using assms(4) prime_def by (metis assms(3) prime_product)
  thus ?thesis by auto
qed