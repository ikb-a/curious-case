lemma floor_sum_property:
  fixes r :: real
  assumes "a \<le> r < b" and "n \<in> {0..m}"
  shows "\<lfloor r + n / 100 \<rfloor = \<lfloor r \rfloor + (if r - \<lfloor r \rfloor + n / 100 < 1 then 0 else 1)"