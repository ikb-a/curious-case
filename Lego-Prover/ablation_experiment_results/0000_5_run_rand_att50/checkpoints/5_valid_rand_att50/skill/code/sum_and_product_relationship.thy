lemma sum_and_product_relationship:
  fixes a b :: real
  assumes "a \<noteq> 0" "b \<noteq> 0"
  shows "(a + b)^2 = a^2 + 2*a*b + b^2" 
proof -
  have "a + b = -(-a + -b)" by simp
  then have "(-a + -b)^2 = a^2 + 2*a*b + b^2" 
    by (simp add: power2_eq_square algebra_simps)
  thus ?thesis by sos
qed