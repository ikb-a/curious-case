lemma k_definition_generalized:
  fixes k d :: nat
  assumes "k = d^2 + 2^d"
  shows "k mod d = (2^d) mod d"
proof -
  have "k = d^2 + 2^d" by (simp add: assms)
  hence "k mod d = (d^2 mod d + 2^d mod d) mod d" 
    by (metis mod_add_eq) 
  also have "d^2 mod d = 0" by auto
  hence "k mod d = (0 + 2^d mod d) mod d"
    by (metis Suc_1 calculation)
  finally show ?thesis by (smt (verit) \<open>d\<^sup>2 mod d = 0\<close> \<open>k mod d = (d\<^sup>2 mod d + 2 ^ d mod d) mod d\<close> add_cancel_left_left mod_mod_trivial)
qed