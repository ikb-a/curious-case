lemma sum_of_naturals_condition:
  fixes S :: "nat set"
  assumes "finite S" "∀x ∈ S. P x"
  shows "sum S = sum {x. x < N ∧ P x}"