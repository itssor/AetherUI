type ExpectedObject__DARKLUA_TYPE_a=((...any)->...any)|Instance|SomeOtherService
local a={cache={}::any}do do local b=function()local b={}b.Clone=function(c:any)
local d:any if type(c)=='function'then d=clonefunction and clonefunction(c)
elseif typeof(c)=='Instance'then d=cloneref and cloneref(c)end return d or c end
b.ProtectUI=function(c:Instance):ScreenGui|string local d,e=pcall(function()
return gethui()end)local f,g=pcall(function()local f=b.Clone(game:GetService
'CoreGui')if f and f.ClassName then return f end return end)local h,i=pcall(
function()c.Parent=d and e or f and g or b.Clone(game:GetService'Players').
LocalPlayer.PlayerGui end)return h and c or i end return b end function a.a():
typeof(b())local c=a.cache.a if not c then c={c=b()}a.cache.a=c end return c.c
end end end local b=a.a()local c=function(c:string)return b.Clone(game:
GetService(c))end return{HttpService=c'HttpService'::HttpService,TweenService=c
'TweenService'::TweenService,RunService=c'RunService'::RunService,
UserInputService=c'UserInputService'::UserInputService,GuiService=c'GuiService'
::GuiService,Workspace=c'Workspace'::Workspace,Players=c'Players'::Players,
Lighting=c'Lighting'::Lighting}