lemma cancel_division_complex:
  fixes z a b c :: complex
  assumes "z \<noteq> 0" "a + b / z = c"
  shows "a * z + b = c * z"
proof -
  have "z * (a + b / z) = c * z" using assms(2) by auto
  then have "z * a + b = c * z" 
    using assms(1) by (simp add: distrib_left)
  thus ?thesis by (auto simp: field_simps)
qed