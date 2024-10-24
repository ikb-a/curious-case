lemma linear_congruence:
  fixes a b c :: nat
  assumes "b > 0"
  shows "\<exists>x. x mod b = a \<and> x < c \<longleftrightarrow> a < c"