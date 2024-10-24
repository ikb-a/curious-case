lemma floor_sum_bounds:
  fixes r :: real
  assumes "a < b"
  shows "floor (r + a) * (b - a + 1) \leq (\<Sum> k \<in> {a..b}. floor (r + k)) \<leq (floor (r + b) + 1) * (b - a + 1)"