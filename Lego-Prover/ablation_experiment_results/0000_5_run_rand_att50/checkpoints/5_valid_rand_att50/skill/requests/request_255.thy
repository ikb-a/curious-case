lemma nested_radical_limit:
  fixes x :: real
  assumes "sqrt (x + sqrt (x + sqrt (x + ...))) = L"
  shows "L = sqrt (x + L)"