lemma sum_of_squares_inequality:
  fixes a b :: real
  shows "a^2 + b^2 >= 2 * a * b"
proof -
  have "a^2 - 2 * a * b + b^2 = (a - b)^2" by (simp add: power2_eq_square algebra_simps)
  then show ?thesis by sos
qed