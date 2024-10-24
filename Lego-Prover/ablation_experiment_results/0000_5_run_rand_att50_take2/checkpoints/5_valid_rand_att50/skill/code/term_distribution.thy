lemma term_distribution:
  shows "num_eights = 35 \<and> num_sevens = 38"
proof -
  have "num_eights = 35" by (simp add: num_eights_def)
  have "num_sevens = 38" by (simp add: num_sevens_def)
  thus ?thesis by eval
qed