lemma floor_sum_bounds:
  fixes r :: real and k :: nat
  assumes "k \<in> {19..91}"
  shows "\<lfloor>r + k / 100\<rfloor> \<in> {7, 8}"