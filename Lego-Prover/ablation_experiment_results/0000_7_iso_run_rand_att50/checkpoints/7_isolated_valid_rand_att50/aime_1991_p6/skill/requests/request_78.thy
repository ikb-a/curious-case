lemma sum_of_floors:
  fixes r :: real
  assumes "a < r < b"
  shows "(\<Sum> k \<in> {a::nat..<b}. floor (r + k / 100)) = (b - a) * floor r + m"
  where "m" is the count of terms where \( r + k/100 \) rounds up.