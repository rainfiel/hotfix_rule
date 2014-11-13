
local mt = {}
mt.__index = mt

function mt.func()
	print("mt.func")
end

function mt:method()
	print("mt:method ", self)
end

local M = {}

function M.new()
	return setmetatable({}, mt)
end

return M
