lemma square_eq_multi:
  fixes xs :: "real list"
  shows "(\<forall>x \<in> set xs. x = hd xs) \<Longrightarrow> (\<forall>x \<in> set xs. x^2 = (hd xs)^2)"
proof (induction xs)
  case Nil
  then show ?case by simp
next
  case (Cons x xs)
  then show ?case
  proof (cases xs)
    case Nil
    then show ?thesis by auto
  next
    case (Cons y ys)
    then have "x = hd (x # ys)" by simp
    then have "x^2 = (hd (x # ys))^2" using Cons.prems by (metis)
    then have "x^2 = (hd xs)^2" by (metis Cons.prems list.sel(1) list.set_intros(1) list.set_intros(2) local.Cons one_add_one)
    moreover have "\<forall>z \<in> set (y # ys). z = hd (x # ys)" using Cons.prems by (metis list.sel(1) list.set_intros(2) local.Cons)
    ultimately show ?thesis using Cons.IH by (metis Cons.prems list.sel(1))
  qed
qed