lemma mod4_cases_expanded:
  fixes a :: int
  shows "a mod 4 = 0 \<or> a mod 4 = 1 \<or> a mod 4 = 2 \<or> a mod 4 = 3"
proof -
  have "a mod 4 = (if a mod 4 = 0 then 0 else
                  if a mod 4 = 1 then 1 else
                  if a mod 4 = 2 then 2 else
                  if a mod 4 = 3 then 3 else
                  undefined)"
    by auto
  thus ?thesis by auto
qed