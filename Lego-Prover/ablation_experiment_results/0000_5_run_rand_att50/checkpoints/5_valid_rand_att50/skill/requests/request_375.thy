lemma fixed_point:
  fixes f :: "real ⇒ real"
  assumes "f x = x"
  shows "x = f x"