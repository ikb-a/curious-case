lemma floor_sum_property:
  fixes r :: real
  assumes "a < b"
  shows "(\<Sum> k \<in> {a::nat..<b}. floor (r + k / 100)) = floor (r + a / 100) + floor (r + (a + 1) / 100) + ... + floor (r + (b - 1) / 100)"