lemma sum_floor_range:
  fixes r :: real
  assumes "(\<Sum> k \<in> {19::nat..<92}. (floor (r + k / 100))) = 546"
  shows "7 * 73 \<le> 546 \<and> 8 * 73 \ge> 546"
proof -
  have "7 * 73 = 511" by simp
  have "8 * 73 = 584" by simp
  show ?thesis using assms by simp
qed

(* lemma 2: A lemma to help with the formulation of equations based on the floor function *)
lemma floor_equations:
  fixes a b :: nat
  assumes "a + b = 73" "8 * a + 7 * b = 546"
  shows "a = 35"
proof -
  have "b = 73 - a" using assms(1) by simp
  then have "8 * a + 7 * (73 - a) = 546" using assms(2) by simp
  then have "8 * a + 511 - 7 * a = 546" by simp
  thus ?thesis by simp
qed

(* formal statement copy from the input *)
theorem aime_1991_p6:
  fixes r :: real
  assumes "(\<Sum> k \<in>