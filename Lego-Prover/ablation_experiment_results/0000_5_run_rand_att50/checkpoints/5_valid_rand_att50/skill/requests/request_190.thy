lemma nested_sqrt_converges:
  fixes x :: real
  assumes "x \<ge> 0"
  shows "\<exists>u. (\<forall>n. u (n + 1) = sqrt (x + u n)) \<and> filterlim u at_top (nhds (sqrt (x + 9)))"