lemma mod_congruence_extended:
  fixes a b m k :: nat
  assumes "a mod m = b mod m" "k > 0"
  shows "(k * a) mod m = (k * b) mod m" 
  using assms mod_congruence_multiple_general by blast