lemma sum_floor_bounds:
  fixes r :: real and n :: nat
  assumes "19 \<le> k" "k \<le> 91"
  shows "floor (r + k / 100) \<in> {floor r, floor r + 1}"