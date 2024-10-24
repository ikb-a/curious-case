lemma mod_properties_extended_multi:
  fixes a b c d :: nat
  assumes "a mod d = b" "c mod d = 0" "e mod d = f"
  shows "((a + c) + e) mod d = (b + f) mod d"
proof -
  have "((a + c) + e) mod d = ((b + ((a div d) + (c div d)) * d) + e) mod d" 
    using mod_properties_extended[OF assms(1) assms(2)] by (smt (verit) assms(1) assms(2) mod_add_cong mod_add_left_eq mod_mult_self1 mod_properties_extended)
  also have "... = (b + f + ((a div d) + (c div d)) * d) mod d" 
    using assms(3) by (metis add.commute group_cancel.add1 mod_add_cong mod_mod_trivial mod_mult_self1 mod_mult_self2 mult.commute)
  also have "... = (b + f) mod d" by auto
  finally show ?thesis by simp
qed