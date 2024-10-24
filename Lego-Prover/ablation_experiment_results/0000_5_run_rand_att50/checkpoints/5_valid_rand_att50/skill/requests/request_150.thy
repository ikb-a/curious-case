lemma terms_distribution:
  fixes r :: real
  assumes "(\<Sum> k \<in>{19::nat..<92}. (floor (r + k / 100))) = 546" 
  shows "\<exists>x. x + (73 - x) = 546"