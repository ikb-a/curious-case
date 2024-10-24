lemma floor_function_properties:
  fixes r :: real and k :: int
  shows "floor (r + k / 100) = floor r + floor (k / 100) \<or> floor (r + k / 100) = floor r + floor (k / 100) + 1"
proof -
  have "floor (k / 100) = n" if "floor (k / 100) = n" for n :: int
  proof -
    have "n \<le> k / 100" using that by arith
    have "k / 100 < n + 1" using that by fastforce
    hence "n * 100 \<le> k" using that by arith
    also have "k < (n + 1) * 100" using that by (metis \<open>real_of_int k / 100 < real_of_int (n + 1)\<close> add.commute divide_less_eq_numeral1(1) of_int_less_iff of_int_mult of_int_numeral)
    finally show ?thesis by (metis that)
  qed
  then have "floor (r + k / 100) = floor r + floor (k / 100) \<or> floor (r + k / 100) = floor r + floor (k / 100) + 1"
  proof (cases "r + k / 100 < floor r + floor (k / 100) + 1")
    case True
    hence "floor (r + k / 100) = floor r + floor (k / 100)" 
      using floor_mono by arith
    thus ?thesis by auto
  next
    case False
    hence "floor (r + k / 100) = floor r + floor (k / 100) + 1"
      using floor_mono by arith
    thus ?thesis by auto
  qed
  thus ?thesis by auto
qed