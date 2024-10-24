lemma real_number_properties:
  fixes x y z :: real
  shows "x + y = y + x" "x * y = y * x" "x + (y + z) = (x + y) + z"
proof -
  show "x + y = y + x" by auto
  show "x * y = y * x" by auto
  show "x + (y + z) = (x + y) + z" by auto
qed