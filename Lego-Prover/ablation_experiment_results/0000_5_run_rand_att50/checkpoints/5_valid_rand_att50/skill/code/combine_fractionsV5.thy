lemma combine_fractions:
  fixes x y z :: real
  shows "x / a + y / a = (x + y) / a"
proof -
  have "x / a + y / a = (x + y) / a"
  proof (cases "a = 0")
    case True
    then show ?thesis by simp
  next
    case False
    then have "a \<noteq> 0" by simp
    thus ?thesis by (simp add: field_simps)
  qed
  thus ?thesis by simp
qed