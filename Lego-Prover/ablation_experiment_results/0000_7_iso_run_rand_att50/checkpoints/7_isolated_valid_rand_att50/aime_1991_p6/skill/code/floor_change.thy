lemma floor_change:
  fixes r :: real and k :: nat
  assumes "k \<in> {19..91}"
  shows "floor (r + (k + 1) / 100) - floor (r + k / 100) \<in> {0, 1}"
proof -
  let ?x = "r + k / 100"
  let ?y = "r + (k + 1) / 100"
  have "floor ?y - floor ?x \<in> {0, 1}"
  proof -
    have "floor ?y = floor (?x + 0.01)"
      by (auto simp: field_simps)
    have "floor ?y = floor ?x + (if ?x + 0.01 < floor ?x + 1 then 0 else 1)"
      using floor_add by (smt (verit) \<open>\<lfloor>r + real (k + 1) / 100\<rfloor> = \<lfloor>r + real k / 100 + 1 / 10\<^sup>2\<rfloor>\<close> add.commute add_less_imp_less_left add_less_same_cancel1 divide_less_cancel divide_less_eq_1_pos floor_add_int floor_eq floor_less_cancel floor_less_iff floor_zero int_ops(1) int_ops(2) less_add_one linorder_neqE_linordered_idom nat_1_add_1 not_one_less_zero numeral_Bit0_div_2 numerals(1) odd_one odd_succ_div_two of_nat_less_imp_less one_div_two_eq_zero one_less_power pos2 zadd_int_left zero_less_power_eq)
    thus ?thesis
      by auto
  qed
  thus ?thesis by auto
qed