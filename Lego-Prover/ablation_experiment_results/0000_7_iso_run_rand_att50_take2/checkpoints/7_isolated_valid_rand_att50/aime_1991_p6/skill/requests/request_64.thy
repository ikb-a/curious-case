lemma floor_function_sum:
  fixes r :: real
  assumes "x \<in> {19::nat..<92}"
  shows "floor (r + x / 100) = floor r + floor (x / 100)"