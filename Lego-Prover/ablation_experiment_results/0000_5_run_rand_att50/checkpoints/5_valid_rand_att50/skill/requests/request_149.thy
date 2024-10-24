lemma floor_bounds:
  fixes r :: real
  assumes "(\<Sum> k \<in>{19::nat..<92}. (floor (r + k / 100))) = 546"
  shows "floor r \<le> 7 \<and> ceil r \<ge> 8"