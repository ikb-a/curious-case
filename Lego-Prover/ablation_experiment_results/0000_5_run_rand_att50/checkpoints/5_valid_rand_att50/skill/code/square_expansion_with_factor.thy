lemma square_expansion_with_factor:
  fixes a b k :: real
  assumes "k \<noteq> 0"
  shows "(k * (a - b))^2 = k^2 * (a^2 - 2*a*b + b^2)"
proof -
  have "(k * (a - b))^2 = k^2 * (a - b)^2" by (simp add: power2_eq_square)
  then show ?thesis by sos
qed