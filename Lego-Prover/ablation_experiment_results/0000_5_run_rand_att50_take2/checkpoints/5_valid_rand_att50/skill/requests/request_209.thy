lemma floor_distribution:
  fixes r :: real
  assumes "x = floor (r + k / c)" "x ∈ {a, a+1}"
  shows "r + k / c ∈ {x, x+1}"