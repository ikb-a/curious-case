lemma floor_change:
  fixes r :: real and k :: nat
  assumes "k \<in> {19..91}"
  shows "floor (r + (k + 1) / 100) - floor (r + k / 100) \<in> {0, 1}"