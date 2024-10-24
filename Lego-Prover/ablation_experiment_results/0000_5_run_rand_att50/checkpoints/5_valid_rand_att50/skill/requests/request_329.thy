lemma chinese_remainder:
  fixes a b c d :: nat
  assumes "a > 0" "b > 0" "c > 0" "d > 0"
  shows "\<exists> x. x mod a = b \<and> x mod c = d \<longleftrightarrow> gcd a c divides (d - b)"