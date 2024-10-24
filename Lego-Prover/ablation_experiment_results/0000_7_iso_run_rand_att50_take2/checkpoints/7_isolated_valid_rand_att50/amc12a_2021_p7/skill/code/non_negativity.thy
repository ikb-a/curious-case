lemma non_negativity:
  fixes a :: real
  shows "a^2 >= 0"
proof -
  have "a^2 = a * a" by sos
  then have "a^2 >= 0" 
    by auto
  thus ?thesis by simp
qed