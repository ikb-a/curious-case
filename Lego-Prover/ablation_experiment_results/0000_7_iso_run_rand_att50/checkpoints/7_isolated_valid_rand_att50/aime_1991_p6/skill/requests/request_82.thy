lemma floor_log_properties:
  fixes a :: real
  assumes "a > 0"
  shows "floor (log 2 a) = n \<longleftrightarrow> 2^n \leq a < 2^(n + 1)"