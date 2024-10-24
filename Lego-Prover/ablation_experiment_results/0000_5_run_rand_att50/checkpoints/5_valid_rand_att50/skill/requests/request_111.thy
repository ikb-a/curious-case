lemma limit_sqrt:
  fixes u :: "nat ⇒ real"
  assumes "∀n. u (n + 1) = sqrt (x + u n)"
  and "filterlim u at_top (nhds 9)"
  shows "9 = sqrt (x + 9)"