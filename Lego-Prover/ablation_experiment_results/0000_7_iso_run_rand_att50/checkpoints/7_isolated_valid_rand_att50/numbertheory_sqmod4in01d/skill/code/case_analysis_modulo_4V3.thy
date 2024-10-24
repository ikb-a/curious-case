lemma case_analysis_modulo_4:
  fixes a :: int
  shows "a mod 4 = 0 \<or> a mod 4 = 1 \<or> a mod 4 = 2 \<or> a mod 4 = 3"
proof -
  have "\<exists>r. a = 4 * (a div 4) + r \<and> r < 4"
    by presburger
  then obtain r where r_def: "a = 4 * (a div 4) + r" and r_lt: "r < 4" by auto
  then have "r = 0 \<or> r = 1 \<or> r = 2 \<or> r = 3"
  proof -
    have "r < 4" by (metis r_lt)
    moreover have "r \<ge> 0" 
      using r_def by auto
    ultimately show ?thesis
      by auto
  qed
  thus ?thesis
    using r_def by auto
qed