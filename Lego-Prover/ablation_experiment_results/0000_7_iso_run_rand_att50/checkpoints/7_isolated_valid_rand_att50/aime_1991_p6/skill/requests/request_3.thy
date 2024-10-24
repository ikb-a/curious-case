lemma floor_add:
  fixes r :: real
  assumes "a < r" "r < b"
  shows "floor r = floor a"