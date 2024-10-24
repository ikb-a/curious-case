lemma inequality_bounds:
  fixes x :: nat
  assumes "x < c" "x = a + b"
  shows "a < c \<and> b < c"
proof -
  obtain k where "x = a + b" using assms(2) by auto
  have "a + b < c" using assms(1) by (metis assms(2))
  then have "a < c" 
  proof -
    have "b < c - a" using `a + b < c` by auto
    thus "a < c" using `x = a + b` by auto
  qed
  moreover have "b < c" 
  proof -
    have "a < c - b" using `a + b < c` by auto
    thus "b < c" using `x = a + b` by auto
  qed
  ultimately show "a < c \<and> b < c" by simp
qed