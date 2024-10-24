lemma non_negative_square_difference:
  fixes a b :: real
  shows "0 \<le> (a - b)^2"
proof -
  have "(a - b)^2 = a^2 - 2*a*b + b^2" by (simp add: square_expansion)
  then show ?thesis by sos
qed