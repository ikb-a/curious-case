lemma less_than_50:
  fixes N m :: nat
  assumes "N = 24m + 21"
  shows "N < 50 \<longleftrightarrow> m < 2"