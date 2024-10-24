lemma inequality_floor:
  fixes r :: real
  assumes "n = floor r"
  shows "n \<le> r \<and> r < n + 1"
proof -
  have "n \<le> r" using assms
    by auto 
  have "r < n + 1" using assms
    by auto 
  thus ?thesis by (metis \<open>real_of_int n \<le> r\<close> add.commute assms floor_add_int floor_less_cancel floor_one less_add_same_cancel2 less_numeral_extra(1))
qed