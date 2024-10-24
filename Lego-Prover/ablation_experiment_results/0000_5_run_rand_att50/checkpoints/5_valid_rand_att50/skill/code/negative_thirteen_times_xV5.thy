lemma negative_thirteen_times_x:
  fixes x :: real
  shows "-13 * ((13 - sqrt 131) / 4) = -(169 - 13 * sqrt 131) / 4"
proof -
  have left_side: "-13 * ((13 - sqrt 131) / 4) = (-13 * (13 - sqrt 131)) / 4" by simp
  also have "... = (-169 + 13 * sqrt 131) / 4" by (simp add: algebra_simps)
  finally have " -13 * ((13 - sqrt 131) / 4) = (-169 + 13 * sqrt 131) / 4" .
  have right_side: "-(169 - 13 * sqrt 131) / 4 = (-169 + 13 * sqrt 131) / 4" by simp
  thus ?thesis by (simp add: left_side right_side)
qed