lemma sum_of_congruent_numbers:
  fixes S :: "nat set"
  assumes "S = {x. x < 50 \<and> x mod 8 = 5 \<and> x mod 6 = 3}"
  shows "sum S = 66"