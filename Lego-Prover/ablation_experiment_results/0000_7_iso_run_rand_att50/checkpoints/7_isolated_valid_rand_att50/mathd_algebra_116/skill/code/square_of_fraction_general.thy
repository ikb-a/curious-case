lemma square_of_fraction_general:
  fixes a b :: real
  assumes "b \<noteq> 0"
  shows "(a / b)^2 = a^2 / b^2"
proof -
  have "b > 0 \<or> b < 0" using assms by auto
  then show ?thesis
  proof
    assume "b > 0"
    then have "(a / b)^2 = (a * (1 / b))^2" by (simp add: field_simps)
    also have "... = a^2 * (1 / b)^2" by (simp add: power2_eq_square)
    also have "... = a^2 / b^2" by (simp add: field_simps)
    finally show ?thesis .
  next
    assume "b < 0"
    then have "(a / b)^2 = (a * (1 / b))^2" by (simp add: field_simps)
    also have "... = a^2 * (1 / b)^2" by (simp add: power2_eq_square)
    also have "... = a^2 / b^2" by (simp add: field_simps)
    finally show ?thesis .
  qed
qed