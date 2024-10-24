lemma mod_addition:
  fixes a b m :: nat
  shows "(a + b) mod m = ((a mod m) + (b mod m)) mod m"
proof (induction a)
  case 0
  then show ?case
  proof (cases b)
    case 0
    then show ?thesis by simp
  next
    case (Suc n)
    then show ?thesis by simp
  qed
next
  case (Suc a)
  then show ?case
  proof (cases "b mod m")
    case 0
    then have "b = (b div m) * m" by auto
    then have "(a + b) mod m = (a + (b div m) * m) mod m"
      by simp
    also have "... = (a mod m + 0) mod m" 
      using Suc.IH by simp
    finally show ?thesis by (metis mod_add_eq)
  next
    case (Suc n)
    then show ?thesis
      using Suc.IH by (metis mod_add_eq)
  qed
qed