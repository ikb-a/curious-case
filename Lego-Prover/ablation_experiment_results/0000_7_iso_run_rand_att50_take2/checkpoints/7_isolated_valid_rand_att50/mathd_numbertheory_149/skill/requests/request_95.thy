lemma find_solutions:
  fixes a m :: nat
  assumes "a < m"
  shows "(\<exists>k. k mod m = a)"