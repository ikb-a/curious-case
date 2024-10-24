lemma floor_sum_property:
  fixes r :: real
  assumes "a \<le> r < b"
  shows "floor (r + k) = floor r + floor k" if "k \<in> {0..1}"