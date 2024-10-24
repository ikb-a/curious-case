lemma inequality_manipulation:
  fixes a b c :: real
  assumes "a < b" "c > 0"
  shows "a * c < b * c"
proof -
  have "a < b" using assms(1) by assumption
  have "c > 0" using assms(2) by assumption
  from this and `a < b` have "a * c < b * c"
    by (simp add: field_simps)
  thus ?thesis by simp
qed