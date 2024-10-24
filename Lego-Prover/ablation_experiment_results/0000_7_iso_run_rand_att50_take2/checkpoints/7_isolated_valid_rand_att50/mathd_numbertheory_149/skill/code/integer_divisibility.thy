lemma integer_divisibility:
  fixes n d :: nat
  assumes "n mod d = 0"
  shows "\<exists>k. n = k * d"
proof -
  have "n = d * (n div d) + (n mod d)"
    by auto
  moreover have "n mod d = 0" using assms by simp
  ultimately have "n = d * (n div d) + 0" by auto
  thus "\<exists>k. n = k * d" 
    by (auto simp: field_simps) 
qed