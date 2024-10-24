lemma limit_substitution:
  fixes u :: "nat \<Rightarrow> real" and L :: real
  assumes "filterlim u at_top (nhds L)"
  shows "u n \<to> L"