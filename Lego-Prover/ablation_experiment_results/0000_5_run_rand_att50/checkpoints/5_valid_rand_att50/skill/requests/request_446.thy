lemma congruence_manipulation:
  fixes a b m n :: nat
  assumes "m > 0" "n > 0"
  shows "a mod m = b mod m \<Longrightarrow> a = b + k * m \<Longrightarrow> a mod n = b mod n"