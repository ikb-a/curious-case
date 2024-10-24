lemma mathd_algebra_n_dimensional:
  fixes a b :: "real list"
  assumes h0: "length a = 3" and h1: "length b = 3"
  and h2: "3 * (a!0) + 2 * (b!0) = 12"
  and h3: "a!0 = 4"
  shows "b!0 = 0"
proof -
  have eq: "3 * (a!0) + 2 * (b!0) = 12" using h2 by simp
  have "3 * 4 + 2 * (b!0) = 12" using h3 eq by simp
  have "12 + 2 * (b!0) = 12" by (smt (verit) \<open>3 * 4 + 2 * (b!0) = 12\<close>)
  have "2 * (b!0) = 0" by (metis \<open>12 + 2 * (b!0) = 12\<close> add_cancel_right_right)
  show ?thesis using `2 * (b!0) = 0` by simp
qed