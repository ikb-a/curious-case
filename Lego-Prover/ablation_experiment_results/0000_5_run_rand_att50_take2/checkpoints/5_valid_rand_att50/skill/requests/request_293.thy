lemma solve_congruences:
  fixes a b c d :: nat
  assumes "a > 0" "b > 0" "c > 0" "d > 0"
  shows "x mod a = b \<and> x mod c = d \<Longrightarrow> x = a * k + b"