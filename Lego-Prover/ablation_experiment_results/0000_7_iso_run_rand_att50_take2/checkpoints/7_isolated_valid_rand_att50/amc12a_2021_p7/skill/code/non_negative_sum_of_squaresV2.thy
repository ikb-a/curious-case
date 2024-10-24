lemma non_negative_sum_of_squares:
  fixes x y :: real
  assumes "0 <= x" and "0 <= y"
  shows "0 <= x^2 + y^2"
proof -
  have "0 <= x^2" by auto
  have "0 <= y^2" by auto
  then show ?thesis by simp
qed