lemma sqrt_and_square:
  fixes x :: real
  shows "sqrt (x^2) = abs x"
proof -
  have "sqrt (x^2) = sqrt ((if x < 0 then -x else x)^2)" by (simp add: if_splits)
  then show "sqrt (x^2) = abs x" by auto
qed