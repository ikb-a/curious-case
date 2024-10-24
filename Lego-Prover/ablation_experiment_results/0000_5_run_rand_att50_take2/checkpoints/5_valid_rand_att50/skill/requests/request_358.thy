lemma properties_of_mod:
  fixes a b m :: nat
  assumes "m > 0"
  shows "a mod m = b mod m \<longleftrightarrow> (a - b) mod m = 0"