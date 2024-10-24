theorem mathd_algebra_109_general:
  fixes a b :: real
  assumes h0: "c * a + d * b = e"  
    and h1: "a = f"  
    and c: "c > 0" and d: "d > 0"  
  shows "b = (e - c * f) / d"  
proof -
  have "c * a + d * b = e" using h0 by simp
  have "c * f + d * b = e" using h1 by (metis assms(1))
  have "d * b = e - c * f" by (metis \<open>c * f + d * b = e\<close> add_diff_cancel_left' h1 mult_delta_right)
  then show "b = (e - c * f) / d" using d by (auto simp: field_simps)
qed