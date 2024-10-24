lemma simplify_square_root_expression:
  fixes a b c :: real
  assumes "c \<noteq> 0" "b \<ge> 0"
  shows "((a - sqrt b) / c)^2 = (a^2 - 2*a*sqrt b + b) / (c^2)"
proof -
  have left_side: "((a - sqrt b) / c)^2 = (a - sqrt b)^2 / (c^2)"
    by (auto simp: field_simps)
  have right_side: "(a - sqrt b)^2 = a^2 - 2*a*sqrt b + (sqrt b)^2"
    by (smt (verit) diff_add_eq power2_diff)
  have "(sqrt b)^2 = b"
    by (metis assms(2) real_sqrt_pow2)
  have final_eq: "(a - sqrt b)^2 = a^2 - 2*a*sqrt b + b"
    by (metis \<open>(sqrt b)\<^sup>2 = b\<close> right_side)
  then show ?thesis using left_side final_eq by simp
qed