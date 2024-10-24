lemma floor_integer_relation:
  fixes r :: real
  assumes "n = floor r"
  shows "n <= r \<and> r < n + 1"
proof -
  have "floor r \<le> r" using assms by simp
  moreover have "r < floor r + 1" using assms by auto
  ultimately show ?thesis by (metis add.commute add_strict_increasing assms floor_add_int floor_less_cancel floor_one le_floor_iff less_add_same_cancel2 less_numeral_extra(1) nle_le order_refl zero_less_one)
qed