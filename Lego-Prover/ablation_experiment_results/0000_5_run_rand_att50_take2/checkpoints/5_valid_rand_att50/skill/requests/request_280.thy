lemma average_estimate:
  fixes total :: int
  assumes "total = 546" "count = 73"
  shows "total / count \<approx> 7.48"