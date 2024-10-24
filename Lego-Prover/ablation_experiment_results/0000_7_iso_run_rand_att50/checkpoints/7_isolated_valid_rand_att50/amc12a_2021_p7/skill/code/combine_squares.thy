lemma combine_squares:
  fixes x y :: real
  shows "1 <= (x * y - 1)^2 + (x + y)^2"
proof -
  have "1 <= (x * y - 1)^2 + (x + y)^2"
  proof -
    let ?a = "x * y - 1"
    let ?b = "x + y"
    have "0 <= ?a^2" by (simp add: power2_eq_square)
    have "0 <= ?b^2" by (simp add: power2_eq_square)
    have "1 <= 0 + ?a^2 + ?b^2"
      using add_nonneg_nonneg[of "0" "?a^2"] 
            \<open>0 <= ?a^2\<close> 
      by sos
    thus ?thesis by simp
  qed
  thus ?thesis by simp
qed