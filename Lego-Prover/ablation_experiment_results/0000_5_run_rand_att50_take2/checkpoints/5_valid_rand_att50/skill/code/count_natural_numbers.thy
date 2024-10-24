lemma count_natural_numbers:
  fixes a b :: nat
  assumes "a < b"
  shows "card {a::nat..<b} = b - a"
proof -
  have "card {a::nat..<b} = b - a" 
    by (simp add: card_image)
  thus ?thesis using assms by simp
qed