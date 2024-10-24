lemma product_of_integers:
  fixes a b :: nat
  assumes "a > 0" "b > 0"
  shows "prime (a * b) \<longleftrightarrow> (a = 1 \<and> b \text{ is prime}) \lor (b = 1 \<and> a \text{ is prime})"