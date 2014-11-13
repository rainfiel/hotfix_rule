
local foo = require "foo"
local bar = require "bar"

local M={}

local old_foo_func = foo.func
local function new_foo_func()
	old_foo_func()
	print("new foo.func")
end

local old_foo_method = foo.method
local function new_foo_method(self)
	old_foo_method(self)
	print("new foo:method ", self)
end


local inst = bar.new()
local meta = getmetatable(inst)
inst=nil

local old_bar_func = meta.func
local function new_bar_func()
	old_bar_func()
	print("new bar.func")
end

local old_bar_method = meta.method
local function new_bar_method(self)
	old_bar_method(self)
	print("new bar:method ", self)
end

function M.apply_foo()
	foo.func = new_foo_func
	foo.method = new_foo_method
end

function M.apply_bar()
	meta.func = new_bar_func
	meta.method = new_bar_method
end

return M
