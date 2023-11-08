
function bench(bndl)
	local out = {
		col = {},
		row = {},
		val = {}
	}
	
	local src = bndl["/idx_hz_amp"]
	local pairLen = #src / 3

	local count = 1

	for i=0, (pairLen-1) do
		local col_idx = (i * 3) + 1
		local row_idx = col_idx + 1
		local val_idx = col_idx + 2

		out.col[i] = src[col_idx]
		out.row[i] = src[row_idx]
		out.val[i] = src[val_idx]

	end
	

	return out

end