lemma integer_distribution:
  fixes n :: nat
  assumes "x + y = n"
  shows "x \<le> n \<Longrightarrow> y \<le> n"