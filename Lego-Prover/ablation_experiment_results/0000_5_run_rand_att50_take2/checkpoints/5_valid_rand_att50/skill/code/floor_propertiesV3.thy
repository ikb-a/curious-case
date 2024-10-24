lemma floor_properties:
  fixes x :: real
  shows "floor (x + 1) = floor x + 1"
proof -
  have "floor (x + 1) = floor x + 1" if "floor x = n" for n :: int
  proof -
    have "n <= x" using that by auto
    have "x < n + 1" using that by auto
    hence "n + 1 <= x + 1" by (smt (verit) \<open>real_of_int n \<le> x\<close> add_mono_thms_linordered_semiring(2) of_int_1 of_int_add)
    also have "x + 1 < n + 2" using that by arith
    finally show ?thesis by auto
  qed
  then show ?thesis
    by auto
qed