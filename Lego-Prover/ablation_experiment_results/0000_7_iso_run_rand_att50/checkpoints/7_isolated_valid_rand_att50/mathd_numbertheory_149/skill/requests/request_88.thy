lemma linear_combination:
  fixes a b c d :: nat
  assumes "a ≡ b mod c" and "a ≡ d mod e"
  shows "a ≡ b mod (lcm c e)"