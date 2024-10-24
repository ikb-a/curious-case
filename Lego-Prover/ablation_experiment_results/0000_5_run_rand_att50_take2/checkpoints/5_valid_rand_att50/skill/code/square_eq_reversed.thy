lemma square_eq_reversed:
  fixes a b :: real
  assumes "a^2 = b^2"
  shows "a = b \<or> a = -b"
  using assms by (metis power2_eq_iff)