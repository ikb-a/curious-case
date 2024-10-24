lemma sum_floor_relation:
  fixes r :: real
  assumes "(\<Sum> k \<in> {m..n}. floor (r + k / d)) = s"
  shows "floor (r) = x \<Longrightarrow> floor (r + k / d) = x \<or> floor (r + k / d) = x + 1"