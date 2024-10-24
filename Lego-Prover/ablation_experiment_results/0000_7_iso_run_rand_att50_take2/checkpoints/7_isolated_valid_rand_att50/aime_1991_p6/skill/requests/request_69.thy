lemma real_inequality_manipulation:
  fixes r :: real
  assumes "8 <= r + 57 / 100" "r + 57 / 100 < 8.01"
  shows "794.3 <= 100 * r < 801"