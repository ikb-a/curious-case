lemma square_root_property:
  fixes x :: real
  assumes "x \<ge> 0"
  shows "sqrt x^2 = abs x"
proof -
  have "sqrt x^2 = sqrt (if x \<ge> 0 then x^2 else x^2)" 
    by (metis real_sqrt_power)
  then show ?thesis 
    by auto
qed