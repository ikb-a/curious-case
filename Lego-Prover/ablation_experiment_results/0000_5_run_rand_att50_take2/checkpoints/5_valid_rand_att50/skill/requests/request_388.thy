lemma limit_recursive_definition:
  fixes u :: "nat ⇒ real"
  assumes "∀n. u (n + 1) = sqrt (x + u n)"
  shows "filterlim u at_top (nhds L) ⟷ (L = sqrt (x + L))"