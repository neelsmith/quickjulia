### A Pluto.jl notebook ###
# v0.15.0

using Markdown
using InteractiveUtils

# ╔═╡ 2f69c67e-a178-4b8c-bcb1-4331972e4299
md"""> Pluto notebooks


Every cell in a Pluto notebook contains a single Julia *value* which is displayed just above the cell.  Show or hide the cell to see what Julia expression produced the value displayed above it.
"""


# ╔═╡ 2e2bdb71-53be-42d4-985a-481dc139ac1b
md""">Values


*Values* have a particular *type* which you can always discover using the `typeof` function. 

From the following examples, infer the correct syntax for expressing a value of the following types:


- `Int64` (integer values)
- `String` (strings of characters)
- `Bool` (Boolean true/false value)
- `Char` (a single character value)

"""

# ╔═╡ dcabd83e-5ed3-4a6f-a80b-f757a39d3b45
24

# ╔═╡ f758194b-d9b5-4f56-a779-c54a776028a8
typeof(24)

# ╔═╡ 1cb62915-3a28-4390-a27f-f7db0129d3b5
"Iliad"

# ╔═╡ 5de09447-6f4c-4485-a980-e80dbf18f65a
typeof("Iliad")

# ╔═╡ 996da392-3811-4c89-aeaf-674ba4556941
'A'

# ╔═╡ a7325e5c-f6c0-44bf-89c8-18867ba877eb
typeof('A')

# ╔═╡ b818d462-ebb3-4f45-a645-8149dc7c94c5
true

# ╔═╡ 85c0d4af-5587-4584-9a92-c8bd7e0cf650
typeof(true)

# ╔═╡ 5763895c-98d2-489c-9dce-94d1576f97bf
md"""> Variables


*Variables* are names for values. You use `=` (the *assignment operator*) to bind a value (on the right side of `=`) to a variable name (the left side of the operator).
"""

# ╔═╡ 473b56f8-9a74-4ca2-b2e2-cb6d710633e8
title = "Iliad"

# ╔═╡ 5ed43f84-ed47-404e-a9a0-0cd01296e7c4
booksInIliad = 24

# ╔═╡ 90920bcd-30a5-422c-a6a6-7ef874438fa2
md"Using the named variable is identical to using the literal value."

# ╔═╡ a1ee02a1-6977-4c92-b47d-bcb609375310
title

# ╔═╡ 281ed357-24a0-4d7d-94ac-429246e6e6e5
typeof(title)

# ╔═╡ 704a2cb9-e46a-451b-8174-101374bd3784
booksInIliad

# ╔═╡ 3b206efb-8b46-44de-80dd-9771fb713429
typeof(booksInIliad)

# ╔═╡ c3bec136-54b0-4fc7-b60c-186265ea5976
md"""> Functions


A *function* is an expression that takes 0 or more pieces of information (*arguments*, or *parameters*), and produces a single value.  The most generic syntax for using a function is to list the arguments in parentheses following the function name.
"""

# ╔═╡ 90a57957-595c-4e58-bdc5-53e3df1966ae
md"""Figure out what type of value each of these functions returns."""

# ╔═╡ de3e4102-dcf0-42b3-9d38-ea4331a5bbc2
length("Iliad")

# ╔═╡ f3547f1d-5939-492d-8ccc-0acb19802443
lowercase("Iliad")

# ╔═╡ 9f5fce0f-f170-43a8-a25a-6cbd3286b7af


# ╔═╡ 4eb8cea5-a298-4b11-b802-82415ca04300
wordlist = split("Now is the time")

# ╔═╡ 9b0f0bfe-0a4f-44e6-bf02-c4223fa1dcec
typeof(wordlist[1])

# ╔═╡ 9bf72e13-affd-4e97-89cc-f77223a3e1a0


# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

"""

# ╔═╡ Cell order:
# ╟─2f69c67e-a178-4b8c-bcb1-4331972e4299
# ╟─2e2bdb71-53be-42d4-985a-481dc139ac1b
# ╠═dcabd83e-5ed3-4a6f-a80b-f757a39d3b45
# ╠═f758194b-d9b5-4f56-a779-c54a776028a8
# ╠═1cb62915-3a28-4390-a27f-f7db0129d3b5
# ╠═5de09447-6f4c-4485-a980-e80dbf18f65a
# ╠═996da392-3811-4c89-aeaf-674ba4556941
# ╠═a7325e5c-f6c0-44bf-89c8-18867ba877eb
# ╠═b818d462-ebb3-4f45-a645-8149dc7c94c5
# ╠═85c0d4af-5587-4584-9a92-c8bd7e0cf650
# ╟─5763895c-98d2-489c-9dce-94d1576f97bf
# ╠═473b56f8-9a74-4ca2-b2e2-cb6d710633e8
# ╠═5ed43f84-ed47-404e-a9a0-0cd01296e7c4
# ╟─90920bcd-30a5-422c-a6a6-7ef874438fa2
# ╠═a1ee02a1-6977-4c92-b47d-bcb609375310
# ╠═281ed357-24a0-4d7d-94ac-429246e6e6e5
# ╠═704a2cb9-e46a-451b-8174-101374bd3784
# ╠═3b206efb-8b46-44de-80dd-9771fb713429
# ╟─c3bec136-54b0-4fc7-b60c-186265ea5976
# ╠═90a57957-595c-4e58-bdc5-53e3df1966ae
# ╠═de3e4102-dcf0-42b3-9d38-ea4331a5bbc2
# ╠═f3547f1d-5939-492d-8ccc-0acb19802443
# ╠═9f5fce0f-f170-43a8-a25a-6cbd3286b7af
# ╠═4eb8cea5-a298-4b11-b802-82415ca04300
# ╠═9b0f0bfe-0a4f-44e6-bf02-c4223fa1dcec
# ╠═9bf72e13-affd-4e97-89cc-f77223a3e1a0
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
