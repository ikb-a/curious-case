lemma solve_linear_equation_with_fixed_a:
  fixes a b :: real
  assumes h0: "3 * a + 2 * b = 12" 
    and h1: "a = 4"
  shows "b = 0"
proof -
  have eq: "3 * a + 2 * b = 12" using h0 by simp
  have "3 * 4 + 2 * b = 12" using h1 eq by simp
  have "12 + 2 * b = 12" by (smt (verit) \<open>3 * 4 + 2 * b = 12\<close>)
  then have "2 * b = 0" by (metis add_cancel_right_right)
  then show ?thesis by simp
qed