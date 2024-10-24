lemma square_root_properties:
  fixes x y :: real
  assumes "x ≥ 0" "y ≥ 0"
  shows "sqrt x = sqrt y ⟷ x = y"