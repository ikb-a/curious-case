lemma minimum_value:
  fixes f :: "real \<Rightarrow> real"
  assumes "f x = (x * y - 1)^2 + (x + y)^2"
  shows "min f = 1"