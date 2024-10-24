lemma find_a_b_value:
  fixes c d :: real
  assumes 
    "c/3 + d = 5"
    "d/3 + c = 7"
  shows "c = 6 \<and> d = 3"