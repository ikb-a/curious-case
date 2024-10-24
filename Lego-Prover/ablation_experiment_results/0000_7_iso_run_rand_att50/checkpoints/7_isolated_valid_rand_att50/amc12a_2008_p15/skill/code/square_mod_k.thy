lemma square_mod_k:
  fixes x k :: nat
  assumes "k > 0"
  shows "(x mod k)^2 mod k = (x^2 mod k)"
  using assms
  by (metis power_mod)