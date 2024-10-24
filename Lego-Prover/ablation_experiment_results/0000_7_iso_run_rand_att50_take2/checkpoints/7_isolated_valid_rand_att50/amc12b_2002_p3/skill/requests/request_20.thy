lemma prime_factors:
  fixes n :: nat
  assumes "n > 0" "prime n"
  shows "n = 2 \<or> n = p" where "p" is a prime greater than 2