lemma floor_value_distribution:
  fixes r :: real
  assumes "(\<Sum> k \<in>{19::nat..<92}. (floor (r + k / 100))) = 546"
  obtains (n_8) n where "n = 7" "a + b = 73" "a * n + b * (n + 1) = 546"