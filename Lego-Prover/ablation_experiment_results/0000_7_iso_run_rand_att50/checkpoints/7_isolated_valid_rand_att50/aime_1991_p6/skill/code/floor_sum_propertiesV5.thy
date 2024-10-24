lemma floor_sum_properties:
  fixes r :: real
  assumes "a < b"
  shows "floor (r + a) + floor (r + b) = floor (r + a) + floor (r + b) + (if r + a < floor (r + a) + 1 then 0 else 1)"
proof -
  have "floor (r + a) + floor (r + b) = floor (r + a) + floor (r + b)" 
    by simp
  let ?f1 = "floor (r + a)"
  let ?f2 = "floor (r + b)"
  have "\<forall> x. x = floor (x) + (if x < floor (x) + 1 then 0 else 1)" 
    for x::real
    by auto
  then show ?thesis 
    using `a < b` by auto
qed