lemma negative_thirteen_times_x:
  fixes x :: real
  shows "-13 * ((13 - sqrt 131) / 4) = -(169 - 13 * sqrt 131) / 4"
proof -
  have "-13 * ((13 - sqrt 131) / 4) = (-13 * (13 - sqrt 131)) / 4" 
    by (simp add: field_simps)
  also have "... = (-13 * 13 + 13 * sqrt 131) / 4" 
    by (simp add: algebra_simps)
  also have "... = (-169 + 13 * sqrt 131) / 4" 
    by simp
  also have "... = -(169 - 13 * sqrt 131) / 4" 
    by (simp add: algebra_simps)
  finally show "-13 * ((13 - sqrt 131) / 4) = -(169 - 13 * sqrt 131) / 4" 
    by simp
qed