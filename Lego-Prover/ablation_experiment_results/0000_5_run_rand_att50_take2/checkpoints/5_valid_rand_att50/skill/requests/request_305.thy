lemma floor_distribution:
  fixes r :: real
  assumes "a < b"
  shows "floor r = n \<Longrightarrow> floor (r + k) = n \<or> floor (r + k) = n + 1" if "k \<in> {0..1}"