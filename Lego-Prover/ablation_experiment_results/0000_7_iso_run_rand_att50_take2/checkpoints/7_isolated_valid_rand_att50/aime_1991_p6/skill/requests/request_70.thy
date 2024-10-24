lemma sum_floor_bounds:
  fixes r :: real and a :: int
  assumes "x = floor r" "x > 0" "n > 0" and sum_eq: "(\<Sum> k \<in> {0::nat..<n}. floor (r + k / 100)) = s"
  shows "s = n * x + (n - m) * (x + 1) + m"
    where "m = card {k. floor (r + k / 100) = x + 1}"