lemma nonzero_product_nonzero_complex:
  fixes z1 z2 :: complex
  assumes "z1 \<noteq> 0" "z2 \<noteq> 0"
  shows "z1 * z2 \<noteq> 0"
proof -
  have "z1 * z2 \<noteq> 0" using assms by auto
  thus ?thesis .
qed