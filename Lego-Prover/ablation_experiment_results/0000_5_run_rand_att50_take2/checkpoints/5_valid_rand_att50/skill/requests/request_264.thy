lemma floor_sum_integer:
  fixes r :: real
  assumes "n ∈ {19::nat..<92}"
  shows "floor (r + n / 100) ∈ {floor r, floor r + 1}"