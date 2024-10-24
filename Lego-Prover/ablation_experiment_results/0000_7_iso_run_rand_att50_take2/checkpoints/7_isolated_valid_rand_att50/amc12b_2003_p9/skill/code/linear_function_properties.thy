theorem linear_function_properties:
  fixes m1 m2 b x1 x2 y1 y2 :: real
  assumes "\<forall> x y. f x y = m1 * x + m2 * y + b"
  shows "f x1 y1 - f x2 y2 = m1 * (x1 - x2) + m2 * (y1 - y2)"
  and "f x1 y1 = f x2 y2 \<longleftrightarrow> (x1 - x2) * m1 + (y1 - y2) * m2 = 0"
proof -
  have "f x1 y1 - f x2 y2 = (m1 * x1 + m2 * y1 + b) - (m1 * x2 + m2 * y2 + b)"
    using assms by simp
  also have "... = m1 * (x1 - x2) + m2 * (y1 - y2)" 
    by (simp add: algebra_simps)
  ultimately show "f x1 y1 - f x2 y2 = m1 * (x1 - x2) + m2 * (y1 - y2)" by simp
  show "f x1 y1 = f x2 y2 \<longleftrightarrow> (x1 - x2) * m1 + (y1 - y2) * m2 = 0"
  proof
    assume "f x1 y1 = f x2 y2"
    then have "m1 * x1 + m2 * y1 + b = m1 * x2 + m2 * y2 + b" by (simp add: assms)
    thus "(x1 - x2) * m1 + (y1 - y2) * m2 = 0" by (simp add: algebra_simps)
  next
    assume "(x1 - x2) * m1 + (y1 - y2) * m2 = 0"
    then have "m1 * x1 + m2 * y1 = m1 * x2 + m2 * y2" by (simp add: algebra_simps)
    thus "f x1 y1 = f x2 y2" by (simp add: assms)
  qed
qed