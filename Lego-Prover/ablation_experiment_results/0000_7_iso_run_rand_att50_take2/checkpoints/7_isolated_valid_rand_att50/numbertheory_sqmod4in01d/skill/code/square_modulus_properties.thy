lemma square_modulus_properties:
  fixes a :: int
  shows "(a mod 4 = 0) \<or> (a mod 4 = 1) \<or> (a mod 4 = 2) \<or> (a mod 4 = 3)"
proof -
  obtain b :: int where c0: "b = a mod 4" by auto
  have c1: "b \<ge> 0 \<and> b \<le> 3" 
    by (smt (verit) Euclidean_Division.pos_mod_bound Euclidean_Division.pos_mod_sign c0)
  then show ?thesis using c0 by auto
qed