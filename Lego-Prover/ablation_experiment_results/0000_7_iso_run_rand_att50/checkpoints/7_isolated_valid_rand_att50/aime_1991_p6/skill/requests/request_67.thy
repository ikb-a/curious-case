lemma floor_sum:
  fixes r :: real
  assumes "a < b"
  shows "floor (r + a) + floor (r + (a + 1)) + ... + floor (r + b) = (b - a + 1) * floor r + (sum (λk. floor (k / 100)) {a..b})"