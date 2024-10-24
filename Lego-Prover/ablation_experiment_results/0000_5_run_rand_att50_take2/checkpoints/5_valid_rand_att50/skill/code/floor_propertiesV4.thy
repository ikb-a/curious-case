lemma floor_properties:
  fixes x :: real
  shows "floor (x + 1) = floor x + 1"
proof -
  obtain n :: int where "floor x = n" by auto
  have "n \<le> x" using `floor x = n` by auto
  have "x < n + 1" using `floor x = n` by auto
  hence "n + 1 \<le> x + 1" by (smt (verit) \<open>real_of_int n \<le> x\<close> add_mono_thms_linordered_semiring(2) of_int_1 of_int_add)
  also have "x + 1 < n + 2" by (smt (verit) \<open>x < real_of_int (n + 1)\<close> add_le_imp_le_right int_le_real_less)
  finally have "floor (x + 1) = n + 1" 
    by (metis \<open>\<lfloor>x\<rfloor> = n\<close> add.commute floor_add one_add_floor) 
  thus "floor (x + 1) = floor x + 1" 
    using `floor x = n` by auto
qed