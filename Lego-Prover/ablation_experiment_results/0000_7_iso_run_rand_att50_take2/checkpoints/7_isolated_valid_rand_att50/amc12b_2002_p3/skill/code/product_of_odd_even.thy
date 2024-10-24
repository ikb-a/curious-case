lemma product_of_odd_even:
  fixes x y :: nat
  assumes "odd x" and "even y"
  shows "odd (x * y) = False"
proof -
  have "even (x * y)" using odd_even_product assms by simp
  thus ?thesis by auto
qed