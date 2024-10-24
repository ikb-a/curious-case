lemma sum_of_solutions:
  fixes N :: nat
  assumes "N < 50"
    and "N mod 8 = 5"
    and "N mod 6 = 3"
  shows "(\<Sum> k\<in> {x::nat. x<50 \<and> x mod 8 =5 \<and> x mod 6=3}. k) = 66"