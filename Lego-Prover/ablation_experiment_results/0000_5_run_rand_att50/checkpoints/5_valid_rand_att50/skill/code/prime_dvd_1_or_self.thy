lemma prime_dvd_1_or_self:
  assumes "prime p" "d dvd p"
  shows "d = 1 \<or> d = p"
  using assms unfolding prime_def by auto