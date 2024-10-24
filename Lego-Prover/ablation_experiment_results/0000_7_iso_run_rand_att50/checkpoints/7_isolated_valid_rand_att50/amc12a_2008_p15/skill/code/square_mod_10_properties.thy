lemma square_mod_10_properties:
  fixes x y :: nat
  shows "((x + y) mod n)^2 mod n = ((x mod n + y mod n) mod n)^2 mod n"
  by (metis mod_add_eq)