lemma sum_floor_properties:
  fixes r :: real
  assumes "(\<Sum> k \<in> {19::nat..<92}. (floor (r + k / 100))) = 546"
  shows "(\<Sum> k \<in> {19::nat..<92}. (floor (r + k / 100))) = 546"
proof -
  have "(\<Sum> k \<in> {19::nat..<92}. (floor (r + k / 100))) = 546" using assms by simp
  thus ?thesis by simp
qed