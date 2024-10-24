theorem numbertheory_sqmod4_properties:
  fixes a :: int
  shows "(a mod 4 = 0) \<or> (a mod 4 = 1) \<or> (a mod 4 = 2) \<or> (a mod 4 = 3)"
proof -
  obtain b::int where c0: "b = a mod 4" by auto
  have "b \<ge> 0 \<and> b \<le> 3" by (smt (verit) Euclidean_Division.pos_mod_bound Euclidean_Division.pos_mod_sign c0 uminus_int_code(1) zle_add1_eq_le)
  thus ?thesis by auto
qed