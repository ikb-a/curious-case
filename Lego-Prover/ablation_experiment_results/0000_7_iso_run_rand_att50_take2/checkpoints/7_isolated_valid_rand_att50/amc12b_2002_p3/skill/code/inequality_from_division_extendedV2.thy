lemma inequality_from_division_extended:
  fixes a b c d :: real
  assumes "c > 0" "d > 0" "a / c < b / d"
  shows "a * d < b * c"
proof -
  have "a / c < b / d" using assms(1) assms(2) by (metis assms(3))
  hence "a * d < b * c" using assms(1) assms(2) 
    by (auto simp: field_simps)
  thus ?thesis by simp
qed