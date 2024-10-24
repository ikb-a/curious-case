lemma mod_add:
  fixes a b c d :: nat
  assumes "a mod c = b" and "a mod d = b"
  shows "a mod (lcm c d) = b"