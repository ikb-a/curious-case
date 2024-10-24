lemma limit_substitution:
  fixes f :: "nat \<Rightarrow> real" and L :: real
  assumes "filterlim f at_top (nhds L)"
  shows "f n \<to> L"