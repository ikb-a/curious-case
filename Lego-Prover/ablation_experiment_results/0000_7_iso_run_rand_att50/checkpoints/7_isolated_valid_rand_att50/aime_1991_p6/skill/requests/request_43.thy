lemma floor_distribution:
  fixes r :: real
  assumes "n < m"
  shows "floor (r + n) = k \<or> floor (r + n) = k + 1"