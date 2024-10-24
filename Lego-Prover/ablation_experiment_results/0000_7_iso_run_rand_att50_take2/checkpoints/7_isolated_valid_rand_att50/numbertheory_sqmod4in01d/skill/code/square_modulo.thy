lemma square_modulo:
  fixes a :: int
  shows "(a mod 4)^2 mod 4 = (a^2 mod 4)"
proof -
  obtain b::int where c0: "b = a mod 4" by auto
  have c1: "b \<ge> 0 \<and> b \<le> 3"
    by (smt (verit) Euclidean_Division.pos_mod_bound Euclidean_Division.pos_mod_sign c0 uminus_int_code(1) zle_add1_eq_le)
  hence c2: "a^2 mod 4 = b^2 mod 4" using c0
    by (smt (verit) power_mod)
  show ?thesis using c2 by (metis power_mod)
qed