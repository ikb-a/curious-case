lemma trivial_inequality:
  fixes x :: real
  shows "x^2 >= 0"
proof -
  have "x^2 = x * x" by sos
  then show "x^2 >= 0" 
    using mult_nonneg_nonneg[OF le_refl le_refl] by auto
qed