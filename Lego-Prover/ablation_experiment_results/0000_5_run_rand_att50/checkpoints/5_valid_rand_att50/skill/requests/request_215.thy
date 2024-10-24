lemma optimization_minimum:
  fixes f :: "real ⇒ real"
  assumes "f is continuous"
  shows "∃x. f x = min f"