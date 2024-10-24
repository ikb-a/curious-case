lemma square_non_negative:
  fixes a :: real
  shows "a^2 >= 0"
proof -
  have "a^2 = a * a" by sos
  then show ?thesis by auto
qed