lemma prime_mod_property:
  fixes p :: nat
  assumes "prime p"
  shows "p mod m = 1 \<or> p mod m = 0"