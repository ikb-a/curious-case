lemma negative_thirteen_times_x:
  fixes x :: real
  shows "-13 * ((13 - sqrt 131) / 4) = -(169 - 13 * sqrt 131) / 4"
proof -
  have LHS: "-13 * ((13 - sqrt 131) / 4) = (-13 * (13 - sqrt 131)) / 4" 
    by (simp add: field_simps)
  have step1: "-13 * (13 - sqrt 131) = -169 + 13 * sqrt 131" 
    by simp
  have LHS_final: "(-13 * (13 - sqrt 131)) / 4 = (-169 + 13 * sqrt 131) / 4" 
    using LHS step1 by simp
  have RHS: "-(169 - 13 * sqrt 131) = -169 + 13 * sqrt 131" 
    by simp
  have RHS_final: "-(169 - 13 * sqrt 131) / 4 = (-169 + 13 * sqrt 131) / 4" 
    by (simp add: RHS)
  show ?thesis 
    by (simp add: LHS_final RHS_final)
qed