lemma limit_of_recursive_sequence:
  fixes x :: real and u :: "nat \<Rightarrow> real"
  assumes "\<forall> n. u (n + 1) = sqrt (x + u n)"
    and "filterlim u at_top (nhds L)"
  shows "L = sqrt (x + L)"