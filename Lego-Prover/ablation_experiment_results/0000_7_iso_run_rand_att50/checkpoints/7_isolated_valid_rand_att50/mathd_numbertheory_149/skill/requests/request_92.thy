lemma find_modular_solutions:
  fixes n :: nat
  assumes "n > 0"
  shows "(\<Sum> k\<in> {x::nat. x < n \<and> x mod a = b}. k) = sum_of_solutions"