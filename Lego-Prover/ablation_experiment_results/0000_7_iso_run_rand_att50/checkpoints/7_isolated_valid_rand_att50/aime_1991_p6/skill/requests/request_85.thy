lemma average_sum:
  fixes xs :: "nat list"
  assumes "length xs = n" "n > 0"
  shows "sum xs = n * average xs"