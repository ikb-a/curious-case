lemma neg_times_distribution:
  fixes x y :: real
  shows "-a * (x + y) = -a * x - a * y"
  by (simp add: algebra_simps)