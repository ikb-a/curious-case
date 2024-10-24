lemma recursive_limit:
  fixes u :: "nat ⇒ real"
  assumes "u 0 = 0" "∀n. u (n + 1) = sqrt (x + u n)"
  shows "filterlim u at_top (nhds (sqrt x))"