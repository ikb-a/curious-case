lemma sum_integer_partitions:
  fixes n :: nat
  assumes "n = a + b"
  shows "a <= n \<and> b <= n"