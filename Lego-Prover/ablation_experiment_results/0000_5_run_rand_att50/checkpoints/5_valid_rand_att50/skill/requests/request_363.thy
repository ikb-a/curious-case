lemma minimum_value:
  fixes f :: "real \<Rightarrow> real"
  assumes "f x = (xy - 1)^2 + (x + y)^2"
  shows "\<exists>c. f c = minimum f"