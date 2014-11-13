
local foo = require "foo"
local bar = require "bar"
local hotfix = require "hotfix"

---------------------foo--------------------
print("FOO:before hotfix")
foo.func()
foo:method()

hotfix.apply_foo()

print("\n")
print("FOO:after hotfix")
foo.func()
foo:method()


print("\n\n")

----------------------bar--------------------
local inst = bar.new()
local meta = getmetatable(inst)

print("BAR:before hotfix")
inst.func()
inst:method()

hotfix.apply_bar()

print("\n")
print("BAR:affter hotfix")
inst.func()
inst:method()
