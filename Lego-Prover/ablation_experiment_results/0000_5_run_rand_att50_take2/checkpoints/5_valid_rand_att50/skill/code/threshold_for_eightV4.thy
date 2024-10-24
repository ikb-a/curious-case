lemma threshold_for_eight:
  assumes "floor (r + 57 / 100) = 8"
  shows "8 \<le> r + 57 / 100 \<and> r + 57 / 100 < 9"
proof -
  have "8 \<le> r + 57 / 100" 
  proof -
    have "floor (r + 57 / 100) = 8" 
      using assms by simp
    thus "8 \<le> r + 57 / 100" 
      by (metis dual_order.refl numeral_le_floor)
  qed
  have "r + 57 / 100 < 9" 
  proof -
    have "floor (r + 57 / 100) = 8" 
      using assms by simp
    thus "r + 57 / 100 < 9" 
      by (smt (verit) floor_le_numeral floor_less_one floor_less_one floor_numeral floor_one floor_one less_numeral_extra(4) numeral_Bit0 numeral_One numeral_plus_one numeral_plus_one semiring_norm(2) semiring_norm(5))
  qed
  thus ?thesis by (metis \<open>(8::'a) \<le> r + (57::'a) / (100::'a)\<close>)
qed