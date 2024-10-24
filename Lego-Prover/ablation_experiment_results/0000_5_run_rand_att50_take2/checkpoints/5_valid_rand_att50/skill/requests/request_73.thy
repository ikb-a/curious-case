lemma sum_partition:
  fixes n :: nat
  assumes "x + y = n"
  shows "x * a + y * b = c \<Longrightarrow> (x + y) * a + y * (b - a) = c"