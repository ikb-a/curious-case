lemma integer_division_properties:
  fixes a b :: nat
  assumes "b > 0"
  shows "a div b + (if a mod b > 0 then 1 else 0) = (a + b - 1) div b"