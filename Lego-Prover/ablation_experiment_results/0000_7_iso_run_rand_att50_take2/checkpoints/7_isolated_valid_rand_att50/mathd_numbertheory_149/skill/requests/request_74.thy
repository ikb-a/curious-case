lemma linear_congruence:
  fixes a b m :: nat
  assumes "gcd a m = 1"
  shows "∃x. a * x ≡ b mod m ⟷ ∃k. x = (b * (inverse a m) + k * (m div (gcd a m))) mod m"