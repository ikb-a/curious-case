lemma average_floor:
  fixes n :: nat and s :: real
  assumes "s = (\<Sum> i \<in> {1..n}. floor (r + i / c))"
  shows "floor (s / n) ∈ {floor (r), floor (r) + 1}"