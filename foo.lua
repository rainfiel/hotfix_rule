

local M = {}

M.attr = 1

function M.func()
	print("foo.func")
end

function M:method()
	print("foo:method ", self)
end


return M
