lemma sum_of_scalars:
  fixes A :: "'a set" and a b :: real
  assumes "finite A"
  shows "(\<Sum>i\<in>A. a * b) = card A * a * b"
proof -
  have "(\<Sum>i\<in>A. a * b) = (\<Sum>i\<in>A. a) * b" by (simp add: distrib_left)
  then show ?thesis by (simp add: card_image)
qed