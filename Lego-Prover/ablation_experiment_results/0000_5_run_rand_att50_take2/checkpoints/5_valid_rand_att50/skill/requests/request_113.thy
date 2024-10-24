lemma power_cycle:
  fixes a :: nat
  assumes "a > 0"
  shows "(\<forall>n. a^n mod 10 = f(n mod m))" for some cycle function f and period m.