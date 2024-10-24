lemma sum_of_congruences:
  fixes a b m n :: nat
  assumes "a mod m = b" "c mod n = d"
  shows "(\<Sum> k\<in> {x::nat. x < L \<and> x mod m = a \<and> x mod n = c}. k) = S"