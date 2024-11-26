### A Pluto.jl notebook ###
# v0.20.3

using Markdown
using InteractiveUtils

# ╔═╡ 7c099b7d-e52d-4d43-bb17-04b52505082d
using HypertextLiteral, Printf

# ╔═╡ f3773f85-c65a-4854-b6dc-a60553abf4d7
calcLength = (x, y, r) -> sqrt(x * x + y * y - r * r)

# ╔═╡ 19fd4ba4-24df-48db-b8ee-575156e2f7a4
r = 25

# ╔═╡ dd4c6f5f-b1ed-420d-b05d-25db4df331e4
x = 250

# ╔═╡ 2844df42-5fa2-4d51-9f21-2ede6b12ee44
y = 350

# ╔═╡ b1e80aca-2a59-491d-bb3c-12a045768b63
length = calcLength(x, y, r)

# ╔═╡ c05b365b-1a2e-45a2-baf4-a91f90e08599
theta = (pi / 2) - atan(y, x) - atan(r, length)

# ╔═╡ 8ea18456-a380-11ef-150b-379525ef8dbe
begin
	# TODO:
	#  - add text for displaying length
	margin = r * 1.5
	width = 500
	height = 500

	x0 = margin
	y0 = margin

	x1 = x0 + x
	y1 = y0 + y

	xp = x0 + cos(theta) * r
	yp = y0 - sin(theta) * r

	rotation = @sprintf("%.2f", rad2deg(theta))
	
	@htl("""
	<svg width="$width" height="$height" style="border:1px solid black; background-color:white">
	  <circle cx="$(x0)" cy="$(x0)" r="$(r)" fill="black" />
	  <circle cx="$(x1)" cy="$(y1)" r="2" fill="#f33" />
	  <line x1="$(xp)" y1="$(yp)" x2="$(x1)" y2="$(y1)" stroke="black"/>

	  <text x="$(x0 + margin)" y="$(y0 - margin * 0.5)">$(rotation)&deg;</text>
	  <text x="$(x1 + margin * 0.5)" y="$(y1)">$(@sprintf("[%d, %d]", x, y))</text>
	</svg>
	""")
end

# ╔═╡ c9930ee4-5c71-4516-b0bf-4d0bc1da5e10


# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
HypertextLiteral = "ac1192a8-f4b3-4bfe-ba22-af5b92cd3ab2"
Printf = "de0858da-6303-5e67-8744-51eddeeeb8d7"

[compat]
HypertextLiteral = "~0.9.5"
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

julia_version = "1.11.1"
manifest_format = "2.0"
project_hash = "4785cd689ab96b3aead8735c11ad2ad8c0ab0c03"

[[deps.HypertextLiteral]]
deps = ["Tricks"]
git-tree-sha1 = "7134810b1afce04bbc1045ca1985fbe81ce17653"
uuid = "ac1192a8-f4b3-4bfe-ba22-af5b92cd3ab2"
version = "0.9.5"

[[deps.Printf]]
deps = ["Unicode"]
uuid = "de0858da-6303-5e67-8744-51eddeeeb8d7"
version = "1.11.0"

[[deps.Tricks]]
git-tree-sha1 = "7822b97e99a1672bfb1b49b668a6d46d58d8cbcb"
uuid = "410a4b4d-49e4-4fbc-ab6d-cb71b17b3775"
version = "0.1.9"

[[deps.Unicode]]
uuid = "4ec0a83e-493e-50e2-b9ac-8f72acf5a8f5"
version = "1.11.0"
"""

# ╔═╡ Cell order:
# ╠═7c099b7d-e52d-4d43-bb17-04b52505082d
# ╠═f3773f85-c65a-4854-b6dc-a60553abf4d7
# ╠═19fd4ba4-24df-48db-b8ee-575156e2f7a4
# ╠═dd4c6f5f-b1ed-420d-b05d-25db4df331e4
# ╠═2844df42-5fa2-4d51-9f21-2ede6b12ee44
# ╠═b1e80aca-2a59-491d-bb3c-12a045768b63
# ╠═c05b365b-1a2e-45a2-baf4-a91f90e08599
# ╠═8ea18456-a380-11ef-150b-379525ef8dbe
# ╠═c9930ee4-5c71-4516-b0bf-4d0bc1da5e10
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
