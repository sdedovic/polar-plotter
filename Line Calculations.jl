### A Pluto.jl notebook ###
# v0.20.3

using Markdown
using InteractiveUtils

# ╔═╡ 7c099b7d-e52d-4d43-bb17-04b52505082d
using HypertextLiteral

# ╔═╡ 19fd4ba4-24df-48db-b8ee-575156e2f7a4
r = 10

# ╔═╡ dd4c6f5f-b1ed-420d-b05d-25db4df331e4
x = 250

# ╔═╡ 2844df42-5fa2-4d51-9f21-2ede6b12ee44
y = 250

# ╔═╡ b1e80aca-2a59-491d-bb3c-12a045768b63
length = sqrt(x * x + y * y - r * r)

# ╔═╡ 8ea18456-a380-11ef-150b-379525ef8dbe
begin
	# TODO:
	#  - add text for displaying lenght
	#  - line should start at tangent of pulley, not center
	margin = 15
	width = 500
	height = 500
	@htl("""
	<svg width="$width" height="$height" style="border:1px solid black; background-color:white">
	  <rect x="$margin" y="$margin" width="$(width-2*margin)" height="$(height-2*margin)" fill="white" />
	  <circle cx="$(margin)" cy="$(margin)" r="$(r)" fill="black" />
	  <circle cx="$(x + margin)" cy="$(y + margin)" r="2" fill="#f33" />
	  <line x1="$(x + margin)" y1="$(y + margin)" x2="$(margin)" y2="$(margin)" stroke="black"/>
	</svg>
	""")
end

# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
HypertextLiteral = "ac1192a8-f4b3-4bfe-ba22-af5b92cd3ab2"

[compat]
HypertextLiteral = "~0.9.5"
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

julia_version = "1.11.1"
manifest_format = "2.0"
project_hash = "60bb17116de90af65672383384a5610ccd921125"

[[deps.HypertextLiteral]]
deps = ["Tricks"]
git-tree-sha1 = "7134810b1afce04bbc1045ca1985fbe81ce17653"
uuid = "ac1192a8-f4b3-4bfe-ba22-af5b92cd3ab2"
version = "0.9.5"

[[deps.Tricks]]
git-tree-sha1 = "7822b97e99a1672bfb1b49b668a6d46d58d8cbcb"
uuid = "410a4b4d-49e4-4fbc-ab6d-cb71b17b3775"
version = "0.1.9"
"""

# ╔═╡ Cell order:
# ╠═7c099b7d-e52d-4d43-bb17-04b52505082d
# ╠═19fd4ba4-24df-48db-b8ee-575156e2f7a4
# ╠═dd4c6f5f-b1ed-420d-b05d-25db4df331e4
# ╠═2844df42-5fa2-4d51-9f21-2ede6b12ee44
# ╠═b1e80aca-2a59-491d-bb3c-12a045768b63
# ╠═8ea18456-a380-11ef-150b-379525ef8dbe
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
