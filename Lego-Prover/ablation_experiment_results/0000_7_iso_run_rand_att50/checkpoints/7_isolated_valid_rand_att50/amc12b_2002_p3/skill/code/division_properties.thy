lemma division_properties:
  fixes a b c :: real
  assumes "a \<noteq> 0"
  shows "(b / a) * a = b \<and> (c / a) * a = c \<and> (b / a) + (c / a) = (b + c) / a"
proof -
  have first: "(b / a) * a = b" using assms by (metis field_simps)
  have second: "(c / a) * a = c" using assms by (metis field_simps)
  have third: "(b / a) + (c / a) = (b + c) / a"
    using assms by (auto simp: field_simps)
  then show ?thesis by (metis first second)
qed