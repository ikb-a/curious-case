lemma generalized_mod_properties:
  fixes a b c d :: nat
  assumes "b > 0" "c > 0" "d > 0"
  shows "(a + b + d) mod c = ((a mod c + b mod c + d mod c) mod c)"
proof -
  have "(a + b + d) mod c = ((a + b) + d) mod c"
    by simp
  also have "... = ((a mod c + b mod c) + d) mod c"
    by (metis mod_add_eq)
  also have "... = ((a mod c + b mod c + d mod c) mod c)"
    by (metis mod_add_right_eq)
  finally show ?thesis by (metis group_cancel.add1 mod_add_cong mod_add_eq mod_mod_trivial)
qed