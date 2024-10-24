lemma unique_solution_mod:
  fixes a b c d :: nat
  assumes "a mod c = b mod c" "c > 0"
  shows "a = b + k * c \<longleftrightarrow> k \<in int"