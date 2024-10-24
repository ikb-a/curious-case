lemma non_negativity_of_squares:
  fixes a :: real
  shows "a^2 >= 0"
proof -
  have "a^2 = a * a" by sos
  thus ?thesis
  proof (cases "a = 0")
    case True
    then show ?thesis by simp
  next
    case False
    then have "a \<noteq> 0" by simp
    then have "a * a > 0" using mult_pos_pos[of "a" "a"] by sos
    thus ?thesis by simp
  qed
qed