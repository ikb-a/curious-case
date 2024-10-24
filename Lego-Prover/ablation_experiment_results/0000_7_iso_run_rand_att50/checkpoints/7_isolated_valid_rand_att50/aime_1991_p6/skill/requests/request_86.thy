lemma sum_floor:
  fixes r :: real
  assumes "(\<Sum> k \<in> A. floor (r + k)) = S"
  shows "floor (r + k) = n" for some \( n \in \mathbb{Z} \)