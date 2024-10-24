theorem chinese_remainder:
  fixes a b :: nat
  assumes "a mod m1 = r1" and "a mod m2 = r2"
  shows "a = r1 + k * m1" for some integer k