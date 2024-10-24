theorem differences_of_rearrangements:
  fixes a b :: real
  assumes "a + 2/a = b + 2/b"
  shows "a - b = (2/b - 2/a)"
proof -
  have "a + 2/a - (b + 2/b) = 0" using assms by simp
  then show ?thesis by (simp add: field_simps)
qed