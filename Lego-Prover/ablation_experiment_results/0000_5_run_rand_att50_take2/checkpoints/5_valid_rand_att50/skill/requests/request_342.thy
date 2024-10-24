lemma linear_congruence_solution:
  fixes a b m :: nat
  assumes "m > 0"
  shows "\<exists> x. x mod m = a \<and> x mod m = b \<longleftrightarrow> a ≡ b (mod m)"