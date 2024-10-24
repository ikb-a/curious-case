lemma sqrt_square_difference:
  fixes a b :: real
  assumes "a >= 0" "b >= 0"
  shows "sqrt a * sqrt a - sqrt b * sqrt b = a - b"
proof -
  have "sqrt a * sqrt a = a" using assms(1) sqrt_square_general by simp
  have "sqrt b * sqrt b = b" using assms(2) sqrt_square_general by simp
  then show ?thesis by (metis \<open>sqrt a * sqrt a = a\<close>)
qed