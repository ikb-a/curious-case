lemma solve_congruences:
  fixes a b c d m n :: nat
  assumes "a > 0" "b > 0" "c > 0" "d > 0"
  shows "(\<exists> x. x mod a = b \<and> x mod c = d) \<longleftrightarrow> (b - d) mod (gcd a c) = 0"