lemma limit_properties:
  fixes u :: "nat ⇒ real"
  assumes "filterlim u at_top (nhds L)"
  shows "u n → L"
  using assms by (simp add: filterlim_def)