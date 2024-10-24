lemma linear_congruence_solution:
  fixes a b m :: nat
  assumes "gcd m d = 1"
  shows "\<exists>x. x ≡ a (mod m) \<and> x ≡ b (mod d)"