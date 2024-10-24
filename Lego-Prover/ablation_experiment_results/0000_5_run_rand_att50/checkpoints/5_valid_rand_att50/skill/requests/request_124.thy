lemma sum_mod_conditions:
  fixes N :: nat
  assumes "N < 50" "N mod 8 = 5" "N mod 6 = 3"
  shows "(\<Sum> k\<in>{x::nat. x < 50 \<and> x mod 8 = 5 \<and> x mod 6 = 3}. k) = 66"