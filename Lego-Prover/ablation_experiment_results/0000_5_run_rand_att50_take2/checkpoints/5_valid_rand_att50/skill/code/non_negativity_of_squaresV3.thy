lemma non_negativity_of_squares:
  fixes z :: real
  shows "z^2 >= 0"
proof -
  have "z^2 = z * z" by sos
  then show "z^2 >= 0" 
    by auto
qed