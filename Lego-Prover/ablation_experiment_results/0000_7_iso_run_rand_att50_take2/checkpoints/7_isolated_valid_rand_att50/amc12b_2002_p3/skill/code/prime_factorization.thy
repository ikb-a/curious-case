lemma prime_factorization:
  fixes a b :: nat
  assumes "a * b = p" and "prime p"
  shows "a = 1 \<or> b = 1"
proof -
  have "a = 1 \<or> b = 1" using assms(2) prime_product assms(1) by (metis)
  thus ?thesis by auto
qed