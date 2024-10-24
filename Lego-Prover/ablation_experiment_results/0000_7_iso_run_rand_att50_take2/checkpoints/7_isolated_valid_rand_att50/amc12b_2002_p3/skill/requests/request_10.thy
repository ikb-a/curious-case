lemma prime_definition:
  fixes p :: nat
  shows "prime p \<longleftrightarrow> (p > 1 \<and> (\<forall>m. m > 1 \<and> m < p \<longrightarrow> p mod m \<noteq> 0))"