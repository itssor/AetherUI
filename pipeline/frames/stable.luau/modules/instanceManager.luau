local a={instances={},baseZIndex=200,zIncrement=1,focusedInstance=nil}a.register
=function(b,c)a.instances[b]={screenGui=c,zIndex=a.baseZIndex+(#a.instances*a.
zIncrement),visible=true,createdAt=os.time()}c.DisplayOrder=a.instances[b].
zIndex return a.instances[b]end a.unregister=function(b)if a.instances[b]then a.
instances[b]=nil a.recalculateZIndexes()end end a.recalculateZIndexes=function()
local b={}for c,d in pairs(a.instances)do table.insert(b,{id=c,data=d})end table
.sort(b,function(c,d)return c.data.createdAt<d.data.createdAt end)for c,d in
ipairs(b)do local e=a.baseZIndex+((c-1)*a.zIncrement)a.instances[d.id].zIndex=e
a.instances[d.id].screenGui.DisplayOrder=e end end a.bringToFront=function(b)
local c=a.instances[b]if not c then return end c.createdAt=os.time()a.
recalculateZIndexes()a.focusedInstance=b end a.sendToBack=function(b)local c=a.
instances[b]if not c then return end c.createdAt=0 a.recalculateZIndexes()end a.
show=function(b)local c=a.instances[b]if not c then return end c.visible=true c.
screenGui.Enabled=true end a.hide=function(b)local c=a.instances[b]if not c then
return end c.visible=false c.screenGui.Enabled=false end a.toggle=function(b)
local c=a.instances[b]if not c then return end if c.visible then a.hide(b)else a
.show(b)end end a.get=function(b)return a.instances[b]end a.getAll=function()
return a.instances end a.getVisible=function()local b={}for c,d in pairs(a.
instances)do if d.visible then b[c]=d end end return b end a.count=function()
local b=0 for c in pairs(a.instances)do b=b+1 end return b end a.setBaseZIndex=
function(b)a.baseZIndex=b a.recalculateZIndexes()end a.focus=function(b)a.
bringToFront(b)a.focusedInstance=b end a.getFocused=function()return a.
focusedInstance end a.clearFocus=function()a.focusedInstance=nil end a.cycleNext
=function()local b={}for c,d in pairs(a.instances)do table.insert(b,c)end if#b<=
1 then return end table.sort(b)local c=a.focusedInstance and table.find(b,a.
focusedInstance)or 0 local d=(c%#b)+1 a.focus(b[d])end a.cyclePrevious=function(
)local b={}for c,d in pairs(a.instances)do table.insert(b,c)end if#b<=1 then
return end table.sort(b)local c=a.focusedInstance and table.find(b,a.
focusedInstance)or 1 local d=c-1 if d<1 then d=#b end a.focus(b[d])end a.
destroyAll=function()for b,c in pairs(a.instances)do if c.screenGui and c.
screenGui.Parent then c.screenGui:Destroy()end end a.instances={}a.
focusedInstance=nil end a.destroy=function(b)local c=a.instances[b]if c and c.
screenGui and c.screenGui.Parent then c.screenGui:Destroy()end a.unregister(b)
end return a