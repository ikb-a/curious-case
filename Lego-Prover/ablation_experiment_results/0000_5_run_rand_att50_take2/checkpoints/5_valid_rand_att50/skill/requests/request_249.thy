lemma exp_mod_property:
  fixes a b :: nat
  assumes "a mod m = 0"
  shows "(a^b) mod m = 0"