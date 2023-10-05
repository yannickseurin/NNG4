import Game.Levels.Addition
import Game.MyNat.AdvAddition

World "AdvAddition"
Level 7
Title "intro practice"

namespace MyNat

Introduction
" Let's see if you can use the tactics we've learnt to prove $x+1=y+1\\implies x=y$.
Try this one by yourself; if you need help then click on \"Show more help!\".
"

/-- $x+1=y+1\implies x=y$. -/
Statement (x : ℕ) : x + 1 = y + 1 → x = y := by
  Hint (hidden := true) "Start with `intro h` to assume the hypothesis."
  intro h
  Hint (hidden := true) "Now `repeat rw [← succ_eq_add_one] at h` is the quickest way to
  change `succ x = succ y`."
  repeat rw [← succ_eq_add_one] at h
  Hint (hidden := true) "Now `apply succ_inj at h` to cancel the `succ`s."
  apply succ_inj at h
  Hint (hidden := true) "Now `rw [h]` then `rfl` works, but `assumption` is quicker."
  assumption

Conclusion "These worlds have been a tutorial on our new tactics. Now let's use them
to prove some more fundamental facts about the naturals which we will need in later worlds."
