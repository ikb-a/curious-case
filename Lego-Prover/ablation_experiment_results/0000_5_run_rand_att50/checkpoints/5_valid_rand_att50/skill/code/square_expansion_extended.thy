lemma square_expansion_extended:
  fixes a b :: "'a::{real_normed_field}"
  shows "(a - b)^2 = a^2 - 2*a*b + b^2"
proof -
  have "(a - b) * (a - b) = a * a - 2 * a * b + b * b" by (simp add: algebra_simps)
  then show ?thesis by (metis mult_2 numeral_2_eq_2 power2_eq_square)
qed