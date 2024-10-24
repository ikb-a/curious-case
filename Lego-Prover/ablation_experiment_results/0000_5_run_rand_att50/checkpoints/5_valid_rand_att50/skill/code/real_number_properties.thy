lemma real_number_properties:
  fixes x y z :: real
  shows "x + y = y + x" "x * y = y * x" "x + (y + z) = (x + y) + z"
proof -
  show "x + y = y + x" by (simp add: add.commute)
  show "x * y = y * x" by (simp add: mult.commute)
  show "x + (y + z) = (x + y) + z" by (simp add: add.assoc)
qed