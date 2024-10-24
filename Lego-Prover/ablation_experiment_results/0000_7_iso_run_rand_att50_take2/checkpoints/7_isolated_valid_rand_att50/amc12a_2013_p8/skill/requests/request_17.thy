lemma distinct_product_relation:
  fixes x y :: real
  assumes "x \<noteq> y" "x + 2/x = y + 2/y"
  shows "xy = 2"