lemma prime_product_extended:
  fixes a b c :: nat
  assumes "a > 0" "b > 0" "c > 0" "prime (a * b * c)"
  shows "a = 1 \<or> b = 1 \<or> c = 1"
proof -
  have "prime (a * b * c) \<longleftrightarrow> (a = 1 \<and> b * c > 1) \<or> (b = 1 \<and> a * c > 1) \<or> (c = 1 \<and> a * b > 1)"
    using assms by (metis Primes.prime_nat_def dvd_imp_le dvd_mult_cancel1 dvd_mult_cancel2 mult.commute mult.left_commute mult_1 nat_less_le nat_mult_1_right one_dvd prime_nat_iff prime_product)
  thus ?thesis 
    by (metis assms(4))
qed