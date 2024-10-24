lemma properties_of_mod:
  fixes a b m :: nat
  assumes "a mod m = b" "b < m"
  shows "a = k * m + b \<exists> k :: nat"