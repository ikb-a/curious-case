lemma mod_n_multiply:
  fixes a b n :: nat
  assumes "n > 0"
  shows "(a * b) mod n = (a mod n * b mod n) mod n"
  using assms by (metis mod_mod_trivial mod_mult_left_eq)