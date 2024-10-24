lemma sum_of_congruent_numbers:
  fixes S :: "nat set"
  assumes "finite S" and "x ∈ S" and "y ∈ S"
  shows "sum S = x + y + ... (other terms)"