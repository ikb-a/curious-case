lemma simplify_square_root_expression:
  fixes a b c :: real
  assumes "c \<noteq> 0" "b \<ge> 0"  
  shows "((a - sqrt b) / c)^2 = (a^2 - 2*a*sqrt b + b) / (c^2)"
proof -
  have left_side: "((a - sqrt b) / c)^2 = (a - sqrt b)^2 / (c^2)"
    by (simp add: power_divide)
  have expansion: "(a - sqrt b)^2 = a^2 - 2*a*sqrt b + (sqrt b)^2"
    by (smt (verit) diff_add_eq power2_diff)
  have right_side: "(sqrt b)^2 = b"
    by (metis assms(2) real_sqrt_pow2)
  then have "(a - sqrt b)^2 = a^2 - 2*a*sqrt b + b"
    using expansion by simp
  then show ?thesis 
    using left_side by simp
qed