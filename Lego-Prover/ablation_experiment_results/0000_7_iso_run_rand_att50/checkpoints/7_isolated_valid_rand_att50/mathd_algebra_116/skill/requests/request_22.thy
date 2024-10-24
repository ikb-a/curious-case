lemma quadratic_root_conditions:
  fixes a b c :: real
  assumes "a > 0"
  shows "b^2 - 4*a*c >= 0 \<longleftrightarrow> \text{the quadratic } ax^2 + bx + c \text{ has real roots}"