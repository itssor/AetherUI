type ExpectedObject=((...any)->...any)|Instance|SomeOtherService local a={}a.
Clone=function(b:any)local c:any if type(b)=='function'then c=clonefunction and
clonefunction(b)elseif typeof(b)=='Instance'then c=cloneref and cloneref(b)end
return c or b end a.ProtectUI=function(b:Instance):ScreenGui|string local c,d=
pcall(function()return gethui()end)local e,f=pcall(function()local e=a.Clone(
game:GetService'CoreGui')if e and e.ClassName then return e end return end)local
g,h=pcall(function()b.Parent=c and d or e and f or a.Clone(game:GetService
'Players').LocalPlayer.PlayerGui end)return g and b or h end return a