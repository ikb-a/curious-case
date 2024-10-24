lemma mod_combination:
  fixes a b m n :: nat
  assumes "a mod m = b mod m" "a mod n = b mod n"
  shows "a mod (lcm m n) = b mod (lcm m n)"