lemma inequality_bounds:
  fixes r :: real
  assumes "m = 546 - 73 * n" "n = floor r"
  shows "m >= 0 \<Longrightarrow> n <= 7 \<Longrightarrow> n >= 6"