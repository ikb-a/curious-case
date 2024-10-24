lemma inequality_manipulation:
  fixes a b :: real
  assumes "a < b"
  shows "a + c < b + c"
proof -
  have "a < b" using assms by simp
  then have "a + c < b + c" 
    by auto
  thus ?thesis by simp
qed