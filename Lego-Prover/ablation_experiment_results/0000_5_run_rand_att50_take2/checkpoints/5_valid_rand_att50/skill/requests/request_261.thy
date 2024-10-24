lemma linear_congruence:
  fixes a b c d :: nat
  assumes "a > 0" "b > 0" "c > 0" "d > 0"
  shows "x mod a = b \<Longrightarrow> x mod c = d \<Longrightarrow> x = k * a + b \<Longrightarrow> (k * a + b) mod c = d"