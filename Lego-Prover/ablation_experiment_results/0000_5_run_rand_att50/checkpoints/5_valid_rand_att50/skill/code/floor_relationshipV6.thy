lemma floor_relationship:
  fixes r :: real
  assumes "n = floor r"
  shows "n \<le> r \<and> r < n + 1"
proof -
  have "n \<le> r" using assms
    by auto
  have "r < n + 1" using assms
  proof -
    have "n \<le> r" using assms by auto
    also have "r < n + 1" by (metis add.commute assms floor_less_iff less_add_same_cancel2 less_numeral_extra(1))
    ultimately show "r < n + 1" by auto
  qed
  thus ?thesis by (simp add: `n \<le> r`)
qed