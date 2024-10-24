lemma term_distribution:
  shows "num_eights = 35 \<and> num_sevens = 38"
proof -
  have "num_eights = 35" unfolding num_eights_def by simp
  moreover have "num_sevens = 38" unfolding num_sevens_def by simp
  ultimately show "num_eights = 35 \<and> num_sevens = 38" by simp
qed