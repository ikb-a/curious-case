# solve_for_b

Tasks where a provided skill is reproduced verbatim

Frequency: 1

Lemma:
```isabelle
lemma solve_for_b:
  fixes a b :: nat
  assumes "lcm a b = c" "gcd a b = d" "a > 0"
  shows "b = d * (c / a)"
proof -
  have "a * b = gcd a b * lcm a b" by simp
  also have "... = d * c" using assms by simp
  finally have "a * b = d * c" .
  hence "b = (d * c) / a" using assms by fastforce
  thus ?thesis by simp
qed
```


## Usage 1 of 1:
### Problem:
Task name: `mathd_numbertheory_222.json`

The least common multiple of two numbers is 3720, and their greatest common divisor is 8. Given that one of the numbers is 120, what is the other number? Show that it is 248.
### Informal Proof:
We know that $\gcd(a,b) \cdot \mathop{\text{lcm}}[a,b] = ab$ for all positive integers $a$ and $b$.  Hence, in this case, the other number is $8 \cdot 3720/120 = 248$.
### Solution:
```isabelle
theorem mathd_numbertheory_222:
  fixes b :: nat
  assumes "lcm 120 b = 3720"
    and "gcd 120 b = 8" 
  shows "b = 248"
```
AI Generated completion (lemma lines higlighted):
```isabelle
theory mathd_numbertheory_222
  imports Complex_Main
begin

(* lemma 1. It would be helpful for step 1 if there exists lemma that calculate the gcd and lcm of two numbers is equal to the product of the two numbers *)
lemma gcd_times_lcm:
  fixes a b :: nat
  shows "gcd a b * lcm a b = a * b"
  by simp

(* lemma 2. In step 3 they uses the gcd_times_lcm lemma to solve the equation. It would be helpful to have a lemma that solve for b given the gcd and lcm and one of the numbers. *)
lemma solve_for_b: %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  fixes a b :: nat
  assumes "lcm a b = c" "gcd a b = d" "a > 0"
  shows "b = d * (c / a)"
proof -
  have "a * b = gcd a b * lcm a b" by simp
  also have "... = d * c" using assms by simp
  finally have "a * b = d * c" .
  hence "b = (d * c) / a" using assms by fastforce
  thus ?thesis by simp
qed

(* formal statement copy from the input*)
theorem mathd_numbertheory_222:
  fixes b :: nat
  assumes "lcm 120 b = 3720"
    and "gcd 120 b = 8" 
  shows "b = 248"
proof -
  (* Step 1: Use the property that the product of the greatest common divisor (gcd) and the least common multiple (lcm) of two numbers is equal to the product of the two numbers. In this case, we have gcd(120, b) * lcm(120, b) = 120 * b. *)
  have eq1: "gcd 120 b * lcm 120 b = 120 * b"
    using gcd_times_lcm by simp

  (* Step 2: Substitute the given values of lcm(120, b) = 3720 and gcd(120, b) = 8 into the equation from Step 1. *)
  have eq2: "8 * 3720 = 120 * b"
    using assms(1) assms(2) eq1 by simp

  (* Step 3: Solve the equation to find the value of b. Divide both sides of the equation by 120 and multiply by 8 to isolate b. *)
  have eq3: "b = 8 * (3720 / 120)"
    using eq2 by simp

  (* Step 4: Conclude that the other number is b = 248. *)
  have eq4: "b = 8 * 31"
    using eq3 by simp
  have eq5: "b = 248"
    using eq4 by simp

  then show ?thesis
    by auto
qed

end
```
