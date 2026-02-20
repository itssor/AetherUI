local a={}function a.Apply(b:{[string]:any},c:any,d:{[number]:string}?):any for
e,f in pairs(b)do if d and table.find(d,e)then continue end pcall(function()c[e]
=f end)end return c end function a.ReactiveTable(b,c)local d,e=table.clone(b or{
}),{}local f={__index=function(f,g)return d[g]end,__newindex=function(f,g,h)d[g]
=h if c then c(d)end end,__len=function()return#d end,__pairs=function()return
pairs(d)end,__ipairs=function()return ipairs(d)end,__metatable=false}return
setmetatable(e,f)end function a.Wrap(b:{[string]:any},c:{[string]:(any)->()},d:
Instance?,e:{[number]:any}?):any local f={}setmetatable(f,{__index=function(g,h)
if b[h]~=nil then return b[h]elseif d then local i,j=pcall(function()return d[h]
end)if i then return j end end return end,__newindex=function(g,h,i)local j=c[h]
if j then j(i)if not(e and table.find(e,h))then b[h]=i end elseif d then local k
=pcall(function()d[h]=i end)if not k then b[h]=i end else b[h]=i end end})return
f end return a