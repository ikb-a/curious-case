lemma floor_distribution:
  fixes r :: real
  assumes "a < r < b"
  shows "floor r = a \<or> floor r = a + 1"