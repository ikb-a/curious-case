lemma min_value_at_points:
  fixes f :: "real ⇒ real"
  assumes "f is continuous"
  shows "∃x. f x = min f"