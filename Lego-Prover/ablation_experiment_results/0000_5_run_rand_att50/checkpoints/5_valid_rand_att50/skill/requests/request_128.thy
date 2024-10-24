lemma count_integers_in_range:
  fixes a b :: real
  assumes "a < b"
  shows "card {x :: nat. a < real_of_nat x \<and> real_of_nat x < b} = floor b - ceil a + 1"