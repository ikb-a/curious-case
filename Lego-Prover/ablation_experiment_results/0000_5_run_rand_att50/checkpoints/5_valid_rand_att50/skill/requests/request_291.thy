lemma sqrt_continuity:
  fixes f :: "real \<Rightarrow> real"
  shows "continuous f \<longleftrightarrow> (\<forall>x. f x >= 0) \<and> (\<forall>x. f x = sqrt x)"