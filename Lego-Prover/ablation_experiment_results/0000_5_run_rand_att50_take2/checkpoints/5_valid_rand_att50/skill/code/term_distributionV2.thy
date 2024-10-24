lemma term_distribution:
  fixes num_eights :: nat
  fixes num_sevens :: nat
  assumes "num_eights + num_sevens = 73"
  assumes "num_eights = 35"
  assumes "num_sevens = 38"
  shows "num_eights = 35 \<and> num_sevens = 38"
proof -
  have "num_sevens = 73 - num_eights" using `num_eights + num_sevens = 73` by simp
  then have "num_sevens = 73 - 35" using `num_eights = 35` by simp
  then have "num_sevens = 38" by simp
  thus ?thesis using `num_eights = 35` by simp
qed