lemma integer_partition_property:
  fixes n x :: nat
  assumes "x * (n - 1) + 73 = 546"
  shows "x = 473 / (n - 1) \<Longrightarrow> n - 1 divides 473"