lemma power_modulo_cycle:
  fixes a :: nat
  assumes "a > 0"
  shows "(\<forall>n. a^n mod 10 = (a mod 10)^n mod 10)"