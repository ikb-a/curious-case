lemma sum_mod:
  fixes a b :: nat
  shows "(a mod 10 + b mod 10) mod 10 = (a + b) mod 10"
  by (simp add: mod_add)