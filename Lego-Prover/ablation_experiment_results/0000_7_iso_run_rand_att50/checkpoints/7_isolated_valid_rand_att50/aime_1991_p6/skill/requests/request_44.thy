lemma floor_sum_properties:
  fixes r :: real
  assumes "k_start < k_end" and "k_start \<le> k" and "k < k_end" 
  shows "\<lfloor r + k_start / 100 \<rfloor + \<lfloor r + (k_start + 1) / 100 \<rfloor + ... + \<lfloor r + (k_end - 1) / 100 \<rfloor = \<lfloor r + k_start / 100 \<rfloor + ... + \<lfloor r + (k_end - 1) / 100 \<rfloor"