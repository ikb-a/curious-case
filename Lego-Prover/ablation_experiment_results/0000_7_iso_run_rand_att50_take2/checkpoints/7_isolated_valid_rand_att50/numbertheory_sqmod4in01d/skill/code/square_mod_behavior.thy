lemma square_mod_behavior:
  fixes a :: int
  shows "(a mod n)^2 mod n = (a^2 mod n)"
proof -
  obtain b::int where c0: "b = a mod n" by auto
  have "b^2 mod n = (a^2 mod n)"
  proof -
    have "b = a - n * (a div n)" by (metis c0 cancel_ab_semigroup_add_class.diff_right_commute diff_eq_diff_eq minus_mod_eq_mult_div)
    then have "b^2 = (a - n * (a div n))^2" by simp
    also have "... = a^2 - 2 * a * (n * (a div n)) + (n^2 * (a div n)^2)" by (smt (verit) diff_add_eq power2_diff power_mult_distrib)
    then have "... mod n = a^2 mod n" using mod_mult_self2 [of a "n * (a div n)"] by (smt (verit) \<open>b = a - n * (a div n)\<close> c0 power_mod)
    thus ?thesis by (metis \<open>b = a - n * (a div n)\<close> c0 minus_mult_div_eq_mod mod_mod_trivial mod_mult_cong power2_eq_square)
  qed
  thus ?thesis by (metis power_mod)
qed