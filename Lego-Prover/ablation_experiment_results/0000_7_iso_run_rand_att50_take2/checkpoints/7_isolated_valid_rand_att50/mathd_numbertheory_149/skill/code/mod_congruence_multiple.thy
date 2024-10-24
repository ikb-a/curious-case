lemma mod_congruence_multiple:
  fixes a b m n :: nat
  assumes "a mod m = b mod m"
  shows "(c * a) mod m = (c * b) mod m" 
  using assms
  by (metis mod_mult_cong mult.commute)