lemma power_cycle:
  fixes a :: nat
  assumes "a > 0"
  shows "(\<forall>n. a^n mod 10 = a^(n mod 4) mod 10)"