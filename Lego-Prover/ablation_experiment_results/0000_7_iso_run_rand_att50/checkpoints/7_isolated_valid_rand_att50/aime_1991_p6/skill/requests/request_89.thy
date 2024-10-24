lemma floor_sum:
  fixes r :: real
  assumes "(\<Sum> k \<in> {m..n}. floor (r + k)) = S"
  shows "floor (r) * (n - m + 1) + (n - m + 1 - a) = S"
  where "a" is the number of terms equal to \( \lfloor r \rfloor + 1 \).