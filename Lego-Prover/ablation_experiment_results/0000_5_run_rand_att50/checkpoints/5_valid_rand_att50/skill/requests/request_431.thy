lemma solve_congruences:
  fixes a b c d :: nat
  assumes "a > 0" "b > 0" "c > 0" "d > 0"
  shows "(\<exists>k. x = a * k + b) \<and> (x mod c = d) \<longrightarrow> (\<exists>m. x = a * (c * m + k) + b)"