lemma algebraic_manipulation:
  fixes x y :: real
  assumes "x + 2/x = y + 2/y"
  shows "x - y + 2 * (y - x) / (x * y) = 0"
proof -
  have eq: "x + 2/x = y + 2/y" using assms by simp
  have "x - y = (2/y - 2/x)" 
    using eq by (simp add: field_simps)
  have "x - y + 2 * (y - x) / (x * y) = (x - y) - 2 * (x - y) / (x * y)"
    by (smt (verit) \<open>x - y = 2 / y - 2 / x\<close> diff_minus_eq_add eq minus_divide_left mult_2)
  have "(x - y) * (1 - 2/(x * y)) = 0"
    using `x - y = (2/y - 2/x)` by sos
  show ?thesis
  proof (cases "x - y = 0")
    case True
    then show ?thesis by simp
  next
    case False
    then have "1 - 2/(x * y) = 0" by (smt (verit) \<open>(x - y) * (1 - 2 / (x * y)) = 0\<close> no_zero_divisors)
    then show ?thesis by (auto simp: field_simps)
  qed
qed