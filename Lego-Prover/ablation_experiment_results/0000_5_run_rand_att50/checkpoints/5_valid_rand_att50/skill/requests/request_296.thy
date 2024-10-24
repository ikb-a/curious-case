lemma bounds_on_n:
  fixes n :: nat
  assumes "n < m"
  shows "n \<in> {x::nat. x < m}"