type Instance__DARKLUA_TYPE_a={Name:string?,Parent:Instance__DARKLUA_TYPE_a?,
Archivable:boolean?,ClassName:string?,Clone:((self:Instance__DARKLUA_TYPE_a)->
Instance__DARKLUA_TYPE_a)?,Destroy:((self:Instance__DARKLUA_TYPE_a)->())?,
FindFirstAncestor:((self:Instance__DARKLUA_TYPE_a,name:string)->
Instance__DARKLUA_TYPE_a?)?,FindFirstAncestorWhichIsA:((self:
Instance__DARKLUA_TYPE_a,className:string)->Instance__DARKLUA_TYPE_a?)?,
FindFirstAncestorOfClass:((self:Instance__DARKLUA_TYPE_a,className:string)->
Instance__DARKLUA_TYPE_a?)?,FindFirstChild:((self:Instance__DARKLUA_TYPE_a,name:
string,recursive:boolean?)->Instance__DARKLUA_TYPE_a?)?,FindFirstChildWhichIsA:(
(self:Instance__DARKLUA_TYPE_a,className:string,recursive:boolean?)->
Instance__DARKLUA_TYPE_a?)?,FindFirstChildOfClass:((self:
Instance__DARKLUA_TYPE_a,className:string,recursive:boolean?)->
Instance__DARKLUA_TYPE_a?)?,GetAttribute:((self:Instance__DARKLUA_TYPE_a,
attribute:string)->any)?,GetAttributes:((self:Instance__DARKLUA_TYPE_a)->{[
string]:any})?,GetChildren:((self:Instance__DARKLUA_TYPE_a)->{
Instance__DARKLUA_TYPE_a})?,GetDescendants:((self:Instance__DARKLUA_TYPE_a)->{
Instance__DARKLUA_TYPE_a})?,HasTag:((self:Instance__DARKLUA_TYPE_a,tag:string)->
boolean)?,IsA:((self:Instance__DARKLUA_TYPE_a,className:string)->boolean)?,
IsAncestorOf:((self:Instance__DARKLUA_TYPE_a,descendant:Instance__DARKLUA_TYPE_a
)->boolean)?,IsDescendantOf:((self:Instance__DARKLUA_TYPE_a,ancestor:
Instance__DARKLUA_TYPE_a)->boolean)?,WaitForChild:((self:
Instance__DARKLUA_TYPE_a,childName:string,timeOut:number?)->
Instance__DARKLUA_TYPE_a)?,AncestryChanged:((self:Instance__DARKLUA_TYPE_a,
handler:(child:Instance__DARKLUA_TYPE_a,parent:Instance__DARKLUA_TYPE_a?)->())->
RBXScriptConnection)?,AttributeChanged:((self:Instance__DARKLUA_TYPE_a,handler:(
attribute:string)->())->RBXScriptConnection)?,ChildAdded:((self:
Instance__DARKLUA_TYPE_a,handler:(child:Instance__DARKLUA_TYPE_a)->())->
RBXScriptConnection)?,ChildRemoved:((self:Instance__DARKLUA_TYPE_a,handler:(
child:Instance__DARKLUA_TYPE_a)->())->RBXScriptConnection)?,DescendantAdded:((
self:Instance__DARKLUA_TYPE_a,handler:(descendant:Instance__DARKLUA_TYPE_a)->()
)->RBXScriptConnection)?,DescendantRemoving:((self:Instance__DARKLUA_TYPE_a,
handler:(descendant:Instance__DARKLUA_TYPE_a)->())->RBXScriptConnection)?,
Destroying:((self:Instance__DARKLUA_TYPE_a,handler:()->())->RBXScriptConnection)
?,PropertyChanged:((self:Instance__DARKLUA_TYPE_a,property:string)->
RBXScriptConnection)?}type GuiBase2d__DARKLUA_TYPE_b=Instance__DARKLUA_TYPE_a&{
AutoLocalize:boolean?,RootLocalizationTable:LocalizationTable?,
SelectionBehaviorDown:Enum.SelectionBehavior?,SelectionBehaviorLeft:Enum.
SelectionBehavior?,SelectionBehaviorRight:Enum.SelectionBehavior?,
SelectionBehaviorUp:Enum.SelectionBehavior?,SelectionGroup:boolean?}type
LayerCollector__DARKLUA_TYPE_c=GuiBase2d__DARKLUA_TYPE_b&{Enabled:boolean?,
ResetOnSpawn:boolean?,ZIndexBehavior:Enum.ZIndexBehavior?}type
GuiObject__DARKLUA_TYPE_d=GuiBase2d__DARKLUA_TYPE_b&{AnchorPoint:Vector2?,
BackgroundColor3:Color3?,BackgroundTransparency:number?,BorderColor3:Color3?,
BorderMode:Enum.BorderMode?,BorderSizePixel:number?,ClipsDescendants:boolean?,
LayoutOrder:number?,Position:UDim2?,Rotation:number?,Selectable:boolean?,
SelectionImageObject:GuiObject__DARKLUA_TYPE_d?,Size:UDim2?,SizeConstraint:Enum.
SizeConstraint?,Visible:boolean?,ZIndex:number?,AutomaticSize:Enum.AutomaticSize
?}type ScreenGui__DARKLUA_TYPE_e=LayerCollector__DARKLUA_TYPE_c&{DisplayOrder:
number?,IgnoreGuiInset:boolean?,ScreenInsets:Enum.ScreenInsets?,
ClipToDeviceSafeArea:boolean?,SafeAreaCompatibility:Enum.SafeAreaCompatibility?}
type Frame__DARKLUA_TYPE_f=GuiObject__DARKLUA_TYPE_d&{Style:Enum.FrameStyle?}
type TextLabel__DARKLUA_TYPE_g=GuiObject__DARKLUA_TYPE_d&{FontFace:Font?,
LineHeight:number?,MaxVisibleGraphemes:number?,OpenTypeFeatures:string?,RichText
:boolean?,Text:string?,TextColor3:Color3?,TextDirection:Enum.TextDirection?,
TextScaled:boolean?,TextSize:number?,TextStrokeColor3:Color3?,
TextStrokeTransparency:number?,TextTransparency:number?,TextTruncate:Enum.
TextTruncate?,TextWrapped:boolean?,TextXAlignment:Enum.TextXAlignment?,
TextYAlignment:Enum.TextYAlignment?}type TextBox__DARKLUA_TYPE_h=
GuiObject__DARKLUA_TYPE_d&{ClearTextOnFocus:boolean?,CursorPosition:number?,
MultiLine:boolean?,ShowNativeInput:boolean?,TextEditable:boolean?,ContentText:
string?,FontFace:Font?,LineHeight:number?,MaxVisibleGraphemes:number?,
OpenTypeFeatures:string?,OpenTypeFeaturesError:string?,PlaceholderColor3:Color3?
,PlaceholderText:string?,RichText:boolean?,Text:string?,TextBounds:Vector2?,
TextColor3:Color3?,TextDirection:Enum.TextDirection?,TextFits:boolean?,
TextScaled:boolean?,TextSize:number?,TextStrokeColor3:Color3?,
TextStrokeTransparency:number?,TextTransparency:number?,TextTruncate:Enum.
TextTruncate?,TextWrapped:boolean?,TextXAlignment:Enum.TextXAlignment?,
TextYAlignment:Enum.TextYAlignment?,SelectionStart:number?,CaptureFocus:((self:
TextBox__DARKLUA_TYPE_h)->())?,IsFocused:((self:TextBox__DARKLUA_TYPE_h)->
boolean)?,ReleaseFocus:((self:TextBox__DARKLUA_TYPE_h,submitted:boolean?)->())?,
Focused:((self:TextBox__DARKLUA_TYPE_h,handler:()->())->RBXScriptConnection)?,
FocusLost:((self:TextBox__DARKLUA_TYPE_h,handler:(enterPressed:boolean,
inputThatCausedFocusLoss:InputObject)->())->RBXScriptConnection)?,
ReturnPressedFromOnScreenKeyboard:((self:TextBox__DARKLUA_TYPE_h,handler:()->()
)->RBXScriptConnection)?}type ImageLabel__DARKLUA_TYPE_i=
GuiObject__DARKLUA_TYPE_d&{Image:string?,ImageColor3:Color3?,ImageContent:string
?,ImageRectOffset:Vector2?,ImageRectSize:Vector2?,ImageTransparency:number?,
IsLoaded:boolean?,ResampleMode:Enum.ResamplerMode?,ScaleType:Enum.ScaleType?,
SliceCenter:Rect?,SliceScale:number?,TileSize:UDim2?}type
GuiButton__DARKLUA_TYPE_j=GuiObject__DARKLUA_TYPE_d&{AutoButtonColor:boolean?,
Modal:boolean?,Style:Enum.ButtonStyle?,HoverHapticEffect:HapticEffect?,
PressHapticEffect:HapticEffect?,Selected:boolean?,Activated:((self:
GuiButton__DARKLUA_TYPE_j,handler:(inputObject:InputObject,clickCount:number)->(
))->RBXScriptConnection)?,MouseButton1Click:((self:GuiButton__DARKLUA_TYPE_j,
handler:()->())->RBXScriptConnection)?,MouseButton1Down:((self:
GuiButton__DARKLUA_TYPE_j,handler:(x:number,y:number)->())->RBXScriptConnection)
?,MouseButton1Up:((self:GuiButton__DARKLUA_TYPE_j,handler:(x:number,y:number)->(
))->RBXScriptConnection)?,MouseButton2Click:((self:GuiButton__DARKLUA_TYPE_j,
handler:()->())->RBXScriptConnection)?,MouseButton2Down:((self:
GuiButton__DARKLUA_TYPE_j,handler:(x:number,y:number)->())->RBXScriptConnection)
?,MouseButton2Up:((self:GuiButton__DARKLUA_TYPE_j,handler:(x:number,y:number)->(
))->RBXScriptConnection)?}type TextButton__DARKLUA_TYPE_k=
GuiButton__DARKLUA_TYPE_j&{FontFace:Font?,LineHeight:number?,MaxVisibleGraphemes
:number?,OpenTypeFeatures:string?,RichText:boolean?,Text:string?,TextColor3:
Color3?,TextDirection:Enum.TextDirection?,TextScaled:boolean?,TextSize:number?,
TextStrokeColor3:Color3?,TextStrokeTransparency:number?,TextTransparency:number?
,TextTruncate:Enum.TextTruncate?,TextWrapped:boolean?,TextXAlignment:Enum.
TextXAlignment?,TextYAlignment:Enum.TextYAlignment?,SetTextFromInput:((self:
TextButton__DARKLUA_TYPE_k,text:string)->())?}type ValueState__DARKLUA_TYPE_l={
Value:any,Connect:(...any)->any}type Theme__DARKLUA_TYPE_m={[any]:any}type
BaseComponent__DARKLUA_TYPE_n={Type:string,Theme:Theme__DARKLUA_TYPE_m,
Structures:{[string]:Instance__DARKLUA_TYPE_a|{any}}}type
AppProperties__DARKLUA_TYPE_o=ScreenGui__DARKLUA_TYPE_e&{WindowPill:boolean?,
Theme:Theme__DARKLUA_TYPE_m?}type App__DARKLUA_TYPE_p=
AppProperties__DARKLUA_TYPE_o&Components__DARKLUA_TYPE_3 type
WindowProperties__DARKLUA_TYPE_q=Frame__DARKLUA_TYPE_f&{Searching:boolean?,
Draggable:boolean?,Resizable:boolean?,Title:string?,Subtitle:string?,Maximized:
boolean?,Minimized:boolean?,Dropshadow:boolean?,UIBlur:boolean?}type
Window__DARKLUA_TYPE_r=BaseComponent__DARKLUA_TYPE_n&Components__DARKLUA_TYPE_3&
WindowProperties__DARKLUA_TYPE_q type SectionProperties__DARKLUA_TYPE_s=
Frame__DARKLUA_TYPE_f&{Title:string?,Disclosure:boolean?,Expanded:boolean?}type
Section__DARKLUA_TYPE_t=BaseComponent__DARKLUA_TYPE_n&Components__DARKLUA_TYPE_3
&SectionProperties__DARKLUA_TYPE_s type TabProperties__DARKLUA_TYPE_u=
Frame__DARKLUA_TYPE_f&{Title:string?,Icon:string?,Indentation:number?,Selected:
boolean?}type Tab__DARKLUA_TYPE_v=BaseComponent__DARKLUA_TYPE_n&
Components__DARKLUA_TYPE_3&TabProperties__DARKLUA_TYPE_u type
FormProperties__DARKLUA_TYPE_w=Frame__DARKLUA_TYPE_f type Form__DARKLUA_TYPE_x=
BaseComponent__DARKLUA_TYPE_n&Components__DARKLUA_TYPE_3&
FormProperties__DARKLUA_TYPE_w type RowProperties__DARKLUA_TYPE_y=
Frame__DARKLUA_TYPE_f&{SearchIndex:string?}type Row__DARKLUA_TYPE_z=
BaseComponent__DARKLUA_TYPE_n&Components__DARKLUA_TYPE_3&
RowProperties__DARKLUA_TYPE_y&{Left:(self:Row__DARKLUA_TYPE_z)->
Row__DARKLUA_TYPE_z,Right:(self:Row__DARKLUA_TYPE_z)->Row__DARKLUA_TYPE_z}type
StackProperties__DARKLUA_TYPE_A=Frame__DARKLUA_TYPE_f&{Padding:UDim?,
HorizontalAlignment:Enum.HorizontalAlignment?,VerticalAlignment:Enum.
VerticalAlignment?}type Stack__DARKLUA_TYPE_B=BaseComponent__DARKLUA_TYPE_n&
Components__DARKLUA_TYPE_3&StackProperties__DARKLUA_TYPE_A type
TitleStackProperties__DARKLUA_TYPE_C=Frame__DARKLUA_TYPE_f&{Title:string?,
Subtitle:string?}type TitleStack__DARKLUA_TYPE_D=BaseComponent__DARKLUA_TYPE_n&
Components__DARKLUA_TYPE_3&TitleStackProperties__DARKLUA_TYPE_C type
PageSectionProperties__DARKLUA_TYPE_E=Frame__DARKLUA_TYPE_f&{Title:string?,
Subtitle:string?}type PageSection__DARKLUA_TYPE_F=BaseComponent__DARKLUA_TYPE_n&
Components__DARKLUA_TYPE_3&PageSectionProperties__DARKLUA_TYPE_E type
LabelProperties__DARKLUA_TYPE_G=TextLabel__DARKLUA_TYPE_g type
Label__DARKLUA_TYPE_H=BaseComponent__DARKLUA_TYPE_n&Components__DARKLUA_TYPE_3&
LabelProperties__DARKLUA_TYPE_G type SymbolProperties__DARKLUA_TYPE_I=
ImageLabel__DARKLUA_TYPE_i&{Style:('Primary'|'Secondary')?}type
Symbol__DARKLUA_TYPE_J=BaseComponent__DARKLUA_TYPE_n&Components__DARKLUA_TYPE_3&
SymbolProperties__DARKLUA_TYPE_I type ToggleProperties__DARKLUA_TYPE_K=
Frame__DARKLUA_TYPE_f&{Value:boolean?,ValueChanged:((self:Toggle__DARKLUA_TYPE_L
,value:boolean)->unknown)?}type Toggle__DARKLUA_TYPE_L=
BaseComponent__DARKLUA_TYPE_n&Components__DARKLUA_TYPE_3&
ToggleProperties__DARKLUA_TYPE_K type TextFieldProperties__DARKLUA_TYPE_M=
Frame__DARKLUA_TYPE_f&{Placeholder:string?,Value:string?,TextChanged:((self:
TextField__DARKLUA_TYPE_N,text:string)->unknown)?,ValueChanged:((self:
TextField__DARKLUA_TYPE_N,value:string)->unknown)?}type
TextField__DARKLUA_TYPE_N=BaseComponent__DARKLUA_TYPE_n&
Components__DARKLUA_TYPE_3&TextFieldProperties__DARKLUA_TYPE_M type
KeybindFieldProperties__DARKLUA_TYPE_O=Frame__DARKLUA_TYPE_f&{Placeholder:string
?,Value:Enum.KeyCode?,BindPressed:((self:KeybindField__DARKLUA_TYPE_P,value:Enum
.KeyCode,inputComplete:boolean,gameProcessedEvent:boolean)->unknown)?,
ValueChanged:((self:KeybindField__DARKLUA_TYPE_P,value:Enum.KeyCode)->unknown)?}
type KeybindField__DARKLUA_TYPE_P=BaseComponent__DARKLUA_TYPE_n&
Components__DARKLUA_TYPE_3&KeybindFieldProperties__DARKLUA_TYPE_O type
SliderProperties__DARKLUA_TYPE_Q=ImageLabel__DARKLUA_TYPE_i&{Minimum:number?,
Maximum:number?,Value:number?,ValueChanged:((self:Slider__DARKLUA_TYPE_R,value:
number)->unknown)?}type Slider__DARKLUA_TYPE_R=BaseComponent__DARKLUA_TYPE_n&
Components__DARKLUA_TYPE_3&SliderProperties__DARKLUA_TYPE_Q type
ButtonProperties__DARKLUA_TYPE_S=TextButton__DARKLUA_TYPE_k&{State:('Primary'|
'Secondary'|'Destructive')?,Label:string?,Pushed:((self:Button__DARKLUA_TYPE_T
)->unknown)?}type Button__DARKLUA_TYPE_T=BaseComponent__DARKLUA_TYPE_n&
Components__DARKLUA_TYPE_3&ButtonProperties__DARKLUA_TYPE_S type
StepperProperties__DARKLUA_TYPE_U=ImageLabel__DARKLUA_TYPE_i&{Minimum:number?,
Maximum:number?,Step:number?,Fielded:boolean?,Value:number?,ValueChanged:((self:
Stepper__DARKLUA_TYPE_V,value:number)->unknown)?}type Stepper__DARKLUA_TYPE_V=
BaseComponent__DARKLUA_TYPE_n&Components__DARKLUA_TYPE_3&
StepperProperties__DARKLUA_TYPE_U&{Increment:()->nil,Decrement:()->nil}type
RadioButtonGroupProperties__DARKLUA_TYPE_W=Frame__DARKLUA_TYPE_f&{Options:{[
number]:string}?,Value:number?,ValueChanged:((self:
RadioButtonGroup__DARKLUA_TYPE_X,value:number)->unknown)?}type
RadioButtonGroup__DARKLUA_TYPE_X=BaseComponent__DARKLUA_TYPE_n&
Components__DARKLUA_TYPE_3&RadioButtonGroupProperties__DARKLUA_TYPE_W&{Option:(
Name:string?)->Frame__DARKLUA_TYPE_f}type PopUpButtonProperties__DARKLUA_TYPE_Y=
Frame__DARKLUA_TYPE_f&{Options:{[number]:string}?,Expanded:boolean?,Maximum:
number?,Value:(number|{number})?,ValueChanged:((self:PopUpButton__DARKLUA_TYPE_Z
,value:number|{number})->unknown)?}type PopUpButton__DARKLUA_TYPE_Z=
BaseComponent__DARKLUA_TYPE_n&Components__DARKLUA_TYPE_3&
PopUpButtonProperties__DARKLUA_TYPE_Y&{Option:(Name:string?)->
Frame__DARKLUA_TYPE_f,Remove:(Index:number?)->nil}type
PullDownButtonProperties__DARKLUA_TYPE__=Frame__DARKLUA_TYPE_f&{Options:{[number
]:string}?,Expanded:boolean?,Label:string?,Value:number?,ValueChanged:((self:
PullDownButton__DARKLUA_TYPE_0,value:number)->unknown)?}type
PullDownButton__DARKLUA_TYPE_0=BaseComponent__DARKLUA_TYPE_n&
Components__DARKLUA_TYPE_3&PullDownButtonProperties__DARKLUA_TYPE__&{Option:(
Name:string?)->Frame__DARKLUA_TYPE_f,Remove:(Index:number?)->nil}type
NotificationProperties__DARKLUA_TYPE_1=Frame__DARKLUA_TYPE_f&{Title:string?,Body
:string?,Footer:string?,Icon:string?,Duration:number?,Position:('TopLeft'|
'TopRight'|'BottomLeft'|'BottomRight')?}type Notification__DARKLUA_TYPE_2=
BaseComponent__DARKLUA_TYPE_n&Components__DARKLUA_TYPE_3&
NotificationProperties__DARKLUA_TYPE_1&{Dismiss:(tween:boolean?)->nil,Show:()->
nil}type Components__DARKLUA_TYPE_3={Window:(self:any,properties:
WindowProperties__DARKLUA_TYPE_q?)->Window__DARKLUA_TYPE_r,Section:(self:any,
properties:SectionProperties__DARKLUA_TYPE_s?)->Section__DARKLUA_TYPE_t,Tab:(
self:any,properties:TabProperties__DARKLUA_TYPE_u?)->Tab__DARKLUA_TYPE_v,Form:(
self:any,properties:FormProperties__DARKLUA_TYPE_w?)->Form__DARKLUA_TYPE_x,Row:(
self:any,properties:RowProperties__DARKLUA_TYPE_y?)->Row__DARKLUA_TYPE_z,VStack:
(self:any,properties:StackProperties__DARKLUA_TYPE_A?)->Stack__DARKLUA_TYPE_B,
HStack:(self:any,properties:StackProperties__DARKLUA_TYPE_A?)->
Stack__DARKLUA_TYPE_B,TitleStack:(self:any,properties:
TitleStackProperties__DARKLUA_TYPE_C?)->TitleStack__DARKLUA_TYPE_D,PageSection:(
self:any,properties:PageSectionProperties__DARKLUA_TYPE_E?)->
PageSection__DARKLUA_TYPE_F,Label:(self:any,properties:
LabelProperties__DARKLUA_TYPE_G)->Label__DARKLUA_TYPE_H,Symbol:(self:any,
properties:SymbolProperties__DARKLUA_TYPE_I)->Symbol__DARKLUA_TYPE_J,Toggle:(
self:any,properties:ToggleProperties__DARKLUA_TYPE_K)->Toggle__DARKLUA_TYPE_L,
TextField:(self:any,properties:TextFieldProperties__DARKLUA_TYPE_M)->
TextField__DARKLUA_TYPE_N,KeybindField:(self:any,properties:
KeybindFieldProperties__DARKLUA_TYPE_O)->KeybindField__DARKLUA_TYPE_P,Slider:(
self:any,properties:SliderProperties__DARKLUA_TYPE_Q)->Slider__DARKLUA_TYPE_R,
Button:(self:any,properties:ButtonProperties__DARKLUA_TYPE_S)->
Button__DARKLUA_TYPE_T,Stepper:(self:any,properties:
StepperProperties__DARKLUA_TYPE_U)->Stepper__DARKLUA_TYPE_V,RadioButtonGroup:(
self:any,properties:RadioButtonGroupProperties__DARKLUA_TYPE_W)->
RadioButtonGroup__DARKLUA_TYPE_X,PopUpButton:(self:any,properties:
PopUpButtonProperties__DARKLUA_TYPE_Y)->PopUpButton__DARKLUA_TYPE_Z,
PullDownButton:(self:any,properties:PullDownButtonProperties__DARKLUA_TYPE__)->
PullDownButton__DARKLUA_TYPE_0,Notification:(self:any,properties:
NotificationProperties__DARKLUA_TYPE_1)->Notification__DARKLUA_TYPE_2}type
ExpectedObject__DARKLUA_TYPE_4=((...any)->...any)|Instance|SomeOtherService
local a={cache={}::any}do do local b=function()return 1 end function a.a():
typeof(b())local c=a.cache.a if not c then c={c=b()}a.cache.a=c end return c.c
end end do local b=function()local b={}b.Clone=function(c:any)local d:any if
type(c)=='function'then d=clonefunction and clonefunction(c)elseif typeof(c)==
'Instance'then d=cloneref and cloneref(c)end return d or c end b.ProtectUI=
function(c:Instance):ScreenGui|string local d,e=pcall(function()return gethui()
end)local f,g=pcall(function()local f=b.Clone(game:GetService'CoreGui')if f and
f.ClassName then return f end return end)local h,i=pcall(function()c.Parent=d
and e or f and g or b.Clone(game:GetService'Players').LocalPlayer.PlayerGui end)
return h and c or i end return b end function a.b():typeof(b())local c=a.cache.b
if not c then c={c=b()}a.cache.b=c end return c.c end end do local b=function()
local b=a.b()local c=function(c:string)return b.Clone(game:GetService(c))end
return{HttpService=c'HttpService'::HttpService,TweenService=c'TweenService'::
TweenService,RunService=c'RunService'::RunService,UserInputService=c
'UserInputService'::UserInputService,GuiService=c'GuiService'::GuiService,
Workspace=c'Workspace'::Workspace,Players=c'Players'::Players,Lighting=c
'Lighting'::Lighting}end function a.c():typeof(b())local c=a.cache.c if not c
then c={c=b()}a.cache.c=c end return c.c end end do local b=function()local b={}
function b.Apply(c:{[string]:any},d:any,e:{[number]:string}?):any for f,g in
pairs(c)do if e and table.find(e,f)then continue end pcall(function()d[f]=g end)
end return d end function b.ReactiveTable(c,d)local e,f=table.clone(c or{}),{}
local g={__index=function(g,h)return e[h]end,__newindex=function(g,h,i)e[h]=i if
d then d(e)end end,__len=function()return#e end,__pairs=function()return pairs(e
)end,__ipairs=function()return ipairs(e)end,__metatable=false}return
setmetatable(f,g)end function b.Wrap(c:{[string]:any},d:{[string]:(any)->()},e:
Instance?,f:{[number]:any}?):any local g={}setmetatable(g,{__index=function(h,i)
if c[i]~=nil then return c[i]elseif e then local j,k=pcall(function()return e[i]
end)if j then return k end end return end,__newindex=function(h,i,j)local k=d[i]
if k then k(j)if not(f and table.find(f,i))then c[i]=j end elseif e then local l
=pcall(function()e[i]=j end)if not l then c[i]=j end else c[i]=j end end})return
g end return b end function a.d():typeof(b())local c=a.cache.d if not c then c={
c=b()}a.cache.d=c end return c.c end end do local b=function()local b,c,d=a.a(),
a.d(),{}function d.Value(e:any):ValueState__DARKLUA_TYPE_l local f={}return c.
Wrap({Value=e,Connect=function(g,h)table.insert(f,h)return h end},{Value=
function(g)for h,i in pairs(f)do pcall(i,g)end end})end function d.Create(e:
string)return function(f)f=f or{}local g=Instance.new(e)for h,i in pairs(f)do if
h=='__dynamicKeys'and type(i)=='table'then for j,k:ValueState__DARKLUA_TYPE_l in
pairs(i)do pcall(function()g[j]=k.Value end)k:Connect(function(l)task.defer(
pcall,function()if f.__contextKeys and f.__contextKeys._general then f.
__contextKeys._general()end g[j]=f.__contextKeys and f.__contextKeys[j]and f.
__contextKeys[j]()or l end)end)end continue end if typeof(i)=='table'and i.
__unique then i.Parent=g end pcall(function()g[h]=i end)end return setmetatable(
{__unique=true},{__metatable=g,__index=function(h,i)if i=='__instance'then
return g end local j=g[i]if typeof(j)=='function'then return function(k,...)
return j(g,...)end else return j end end,__newindex=function(h,i,j)g[i]=j end})
end end return d end function a.e():typeof(b())local c=a.cache.e if not c then c
={c=b()}a.cache.e=c end return c.c end end do local b=function()local b,c=a.c(),
a.e()local d,e,f,g=b.Workspace,b.Lighting,c.Create,function(d,e,f,g,h)return(d-e
)*(h-g)/(f-e)+g end local h,i=function(h,i)local j=d.CurrentCamera:
ScreenPointToRay(h.X,h.Y)return j.Origin+j.Direction*i end,function()local h=d.
CurrentCamera.ViewportSize.Y return g(h,0,2560,8,56)end local j=function(j:
number?)local k,l,m,n,o=Instance.new('Folder',d.CurrentCamera),{},{topLeft=
Vector2.new(),topRight=Vector2.new(),bottomRight=Vector2.new()},f'Part'{Color=
Color3.new(0,0,0),Material=Enum.Material.Glass,Size=Vector3.new(1,1,0),Anchored=
true,CanTouch=false,CanCollide=false,CanQuery=false,Locked=true,CastShadow=false
,Transparency=0.98,f'SpecialMesh'{MeshType=Enum.MeshType.Brick,Offset=Vector3.
new(0,0,-1E-6)}}::Part,f'DepthOfFieldEffect'{FarIntensity=0,NearIntensity=1,
InFocusRadius=0.1,Parent=e}local p=n:FindFirstChildWhichIsA'SpecialMesh'j=j or
0.001 local q,r=function(q,r)m.topLeft=r m.topRight=r+Vector2.new(q.X,0)m.
bottomRight=r+q end,function()local q=d.CurrentCamera local r,s,t,u=(q and{(q.
CFrame)}or{(CFrame.identity)})[1],m.topLeft,m.topRight,m.bottomRight local v,w,x
=h(s,j),h(t,j),h(u,j)local y,z=(w-v).Magnitude,(w-x).Magnitude n.CFrame=CFrame.
fromMatrix((v+x)/2,r.XVector,r.YVector,r.ZVector)if p then p.Scale=Vector3.new(y
,z,0)end end local s,t=function(s)local t=i()local u,v=s.AbsoluteSize-Vector2.
new(t,t),s.AbsolutePosition+Vector2.new(t/2,t/2)q(u,v)task.spawn(r)end,function(
)local s=d.CurrentCamera if not s then return end l[#l+1]=s:
GetPropertyChangedSignal'CFrame':Connect(r)l[#l+1]=s:GetPropertyChangedSignal
'ViewportSize':Connect(r)l[#l+1]=s:GetPropertyChangedSignal'FieldOfView':
Connect(r)task.spawn(r)end n.Parent=k n.Destroying:Connect(function()for u,v in
l do pcall(function()o:Destroy()k:Destroy()v:Disconnect()end)end end)t()return s
,n end return function(k:GuiObject,l:number?)local m,n,o={},j(l)m.SetVisibility=
function(p)o.Transparency=p and 0.98 or 1 end k:GetPropertyChangedSignal
'AbsolutePosition':Connect(function()n(k)end)k:GetPropertyChangedSignal
'AbsoluteSize':Connect(function()n(k)end)k:GetPropertyChangedSignal'Visible':
Connect(function()m.SetVisibility(k.Visible)end)k.Destroying:Connect(function()o
:Destroy()end)m.Model=o n(k)return m end end function a.f():typeof(b())local c=a
.cache.f if not c then c={c=b()}a.cache.f=c end return c.c end end do local b=
function()return{UIBlur=a.f()}end function a.g():typeof(b())local c=a.cache.g if
not c then c={c=b()}a.cache.g=c end return c.c end end do local b=function()
return function(b)local c,d=a.e(),a.c()local e,f,g=c.Create,d.TweenService,{}g.
Body=e'Frame'{Name='TextField',AutomaticSize=Enum.AutomaticSize.XY,
BackgroundColor3=Color3.fromRGB(255,255,255),BackgroundTransparency=1,
BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,Size=UDim2.fromOffset(150,
23),SizeConstraint=Enum.SizeConstraint.RelativeXX,e'UICorner'{Name='UICorner',
CornerRadius=UDim.new(0,5)},e'UIStroke'{Name='UIStroke',ApplyStrokeMode=Enum.
ApplyStrokeMode.Border,Thickness=1,__dynamicKeys={Color=b.Theme.Controls.
ViewBorder[1],Transparency=b.Theme.Controls.ViewBorder[2]}},e'TextBox'{Name=
'Field',AutomaticSize=Enum.AutomaticSize.XY,Size=UDim2.fromOffset(138,0),
BackgroundColor3=Color3.fromRGB(255,255,255),BackgroundTransparency=1,
BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,CursorPosition=-1,
TextXAlignment=Enum.TextXAlignment.Left,FontFace=Font.new
'rbxassetid://12187365364',PlaceholderText='',Text='',TextSize=15,__dynamicKeys=
{PlaceholderColor3=b.Theme.Text.Tertiary[1],TextTransparency=b.Theme.Text.
Tertiary[2]},__contextKeys={_general=function()local h=g.Field if not h then
return end if h.Text==''then h.PlaceholderColor3=b.Theme.Text.Tertiary[1].Value
h.TextTransparency=b.Theme.Text.Tertiary[2].Value else h.TextColor3=b.Theme.Text
.Primary[1].Value h.TextTransparency=b.Theme.Text.Primary[2].Value end end,
TextTransparency=function()if not g.Field then return 1 end return g.Field.Text
==''and b.Theme.Text.Tertiary[2].Value or b.Theme.Text.Primary[2].Value end},e
'UIPadding'{Name='UIPadding',PaddingTop=UDim.new(0,4),PaddingBottom=UDim.new(0,4
)}},e'UIPadding'{Name='UIPadding',PaddingLeft=UDim.new(0,6),PaddingRight=UDim.
new(0,6)},e'UIListLayout'{Name='UIListLayout',SortOrder=Enum.SortOrder.
LayoutOrder,HorizontalAlignment=Enum.HorizontalAlignment.Right,VerticalAlignment
=Enum.VerticalAlignment.Center,FillDirection=Enum.FillDirection.Horizontal,
Padding=UDim.new(0,4)}}::Frame g.Stroke=g.Body:FindFirstChild'UIStroke'::
UIStroke g.Padding=g.Body:FindFirstChild'UIPadding'::UIPadding g.Corner=g.Body:
FindFirstChild'UICorner'::UICorner g.Layout=g.Body:FindFirstChild'UIListLayout'
::UIListLayout g.Field=g.Body:FindFirstChild'Field'::TextBox g.FieldPadding=g.
Field:FindFirstChild'UIPadding'::UIPadding local h,i,j:Tween=TweenInfo.new(0.13,
Enum.EasingStyle.Sine,Enum.EasingDirection.Out),(TweenInfo.new(0.2,Enum.
EasingStyle.Sine,Enum.EasingDirection.Out))g.Field.Focused:Connect(function()if
j then j:Cancel()end j=f:Create(g.Stroke,h,{Color=b.Theme.Controls.
SelectionStroke[1].Value,Transparency=b.Theme.Controls.SelectionStroke[2].Value,
Thickness=3})j:Play()end)g.Field.FocusLost:Connect(function()if j then j:Cancel(
)end j=f:Create(g.Stroke,i,{Color=b.Theme.Controls.ViewBorder[1].Value,
Transparency=b.Theme.Controls.ViewBorder[2].Value,Thickness=1})j:Play()end)g.
Field:GetPropertyChangedSignal'Text':Connect(function()if g.Field.Text==''then g
.Field.PlaceholderColor3=b.Theme.Text.Tertiary[1].Value g.Field.TextTransparency
=b.Theme.Text.Tertiary[2].Value else g.Field.TextColor3=b.Theme.Text.Primary[1].
Value g.Field.TextTransparency=b.Theme.Text.Primary[2].Value end end)return g
end end function a.h():typeof(b())local c=a.cache.h if not c then c={c=b()}a.
cache.h=c end return c.c end end do local b=function()return function(b)local c,
d=a.e(),a.h()(b)local e,f,g,h,i,j=c.Create,{},0,{},function(e)local f,g=e.
AbsolutePosition,e.AbsoluteSize return{Left=f.X,Right=f.X+g.X,Top=f.Y,Bottom=f.Y
+g.Y}end h.Body=e'Frame'{Name='Toolbar',BorderColor3=Color3.fromRGB(0,0,0),
BorderSizePixel=0,Size=UDim2.new(1,0,0,52),__dynamicKeys={BackgroundColor3=b.
Theme.Controls.Titlebar[1],BackgroundTransparency=b.Theme.Controls.Titlebar[2]},
e'UICorner'{Name='UICorner',CornerRadius=UDim.new(0,10)},e'Frame'{Name='Shadow',
AnchorPoint=Vector2.new(1,0),BackgroundColor3=Color3.fromRGB(234,234,234),
BackgroundTransparency=0.75,BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0
,Position=UDim2.fromScale(1,1),Size=UDim2.new(1,0,0,2),ZIndex=0,__dynamicKeys={
BackgroundColor3=b.Theme.Controls.TitlebarShadow.Background[1],
BackgroundTransparency=b.Theme.Controls.TitlebarShadow.Background[2]},e
'UIGradient'{Name='UIGradient',Color=ColorSequence.new{ColorSequenceKeypoint.
new(0,Color3.fromRGB(255,255,255)),ColorSequenceKeypoint.new(1,Color3.fromRGB(0,
0,0))},Rotation=-90,Transparency=NumberSequence.new{NumberSequenceKeypoint.new(0
,0.35),NumberSequenceKeypoint.new(1,0.35)},__dynamicKeys={Color=b.Theme.Controls
.TitlebarShadow.Color,Transparency=b.Theme.Controls.TitlebarShadow.Transparency}
}},e'Frame'{Name='Content',BackgroundColor3=Color3.fromRGB(255,255,255),
BackgroundTransparency=1,BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,
Size=UDim2.fromScale(1,1),e'Frame'{Name='Leading',BackgroundColor3=Color3.
fromRGB(255,255,255),BackgroundTransparency=1,BorderColor3=Color3.fromRGB(0,0,0)
,BorderSizePixel=0,Size=UDim2.fromScale(0,1),e'UIListLayout'{Name='UIListLayout'
,FillDirection=Enum.FillDirection.Horizontal,Padding=UDim.new(0,8),SortOrder=
Enum.SortOrder.LayoutOrder,VerticalAlignment=Enum.VerticalAlignment.Center},e
'Frame'{Name='TitleSubtitle',AutomaticSize=Enum.AutomaticSize.XY,
BackgroundColor3=Color3.fromRGB(255,255,255),BackgroundTransparency=1,
BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,LayoutOrder=2,e
'UIListLayout'{Name='UIListLayout',SortOrder=Enum.SortOrder.LayoutOrder,
VerticalAlignment=Enum.VerticalAlignment.Center},e'TextLabel'{Name='Subtitle',
AutomaticSize=Enum.AutomaticSize.X,BackgroundTransparency=1,BorderColor3=Color3.
fromRGB(0,0,0),BorderSizePixel=0,FontFace=Font.new('rbxassetid://12187365364',
Enum.FontWeight.Medium,Enum.FontStyle.Normal),LayoutOrder=1,RichText=true,Size=
UDim2.fromOffset(0,14),Text='Subtitle',TextColor3=Color3.fromRGB(0,0,0),TextSize
=12,Visible=false,__dynamicKeys={TextColor3=b.Theme.Text.Secondary[1],
TextTransparency=b.Theme.Text.Secondary[2]}},e'TextLabel'{Name='Title',
AutomaticSize=Enum.AutomaticSize.X,BackgroundColor3=Color3.fromRGB(255,255,255),
BackgroundTransparency=1,BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,
FontFace=Font.new('rbxassetid://12187365364',Enum.FontWeight.SemiBold,Enum.
FontStyle.Normal),LineHeight=0,RichText=true,Size=UDim2.fromOffset(0,20),Text=
'Title',TextSize=16,__dynamicKeys={TextColor3=b.Theme.Text.Primary[1],
TextTransparency=b.Theme.Text.Primary[2]}}},e'UIPadding'{Name='UIPadding',
PaddingLeft=UDim.new(0,12),PaddingRight=UDim.new(0,12)},e'Frame'{Name=
'NavigationButtons',AutomaticSize=Enum.AutomaticSize.XY,BackgroundColor3=Color3.
fromRGB(255,255,255),BackgroundTransparency=1,BorderColor3=Color3.fromRGB(0,0,0)
,BorderSizePixel=0,LayoutOrder=1,e'UIListLayout'{Name='UIListLayout',
FillDirection=Enum.FillDirection.Horizontal,Padding=UDim.new(0,1),SortOrder=Enum
.SortOrder.LayoutOrder,VerticalAlignment=Enum.VerticalAlignment.Center},e
'TextButton'{Name='Back',BackgroundColor3=Color3.fromRGB(255,255,255),
BackgroundTransparency=1,BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,
FontFace=Font.new'rbxasset://fonts/families/SourceSansPro.json',Size=UDim2.
fromOffset(27,20),Text='',TextColor3=Color3.fromRGB(0,0,0),TextSize=14,e
'ImageLabel'{Name='Image',AnchorPoint=Vector2.new(0.5,0.5),
BackgroundTransparency=1,BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,
Image='rbxassetid://137248392050045',ImageColor3=Color3.fromRGB(0,0,0),Position=
UDim2.fromScale(0.5,0.5),Size=UDim2.fromOffset(9,15),__dynamicKeys={ImageColor3=
b.Theme.Text.Tertiary[1],ImageTransparency=b.Theme.Text.Tertiary[2]},
__contextKeys={ImageColor3=function()local k,l=g>1,j.Theme.Text return(k and l.
Secondary[1].Value)or l.Tertiary[1].Value end,ImageTransparency=function()local
k,l=g>1,j.Theme.Text return(k and l.Secondary[2].Value)or l.Tertiary[2].Value
end}}},e'TextButton'{Name='Forward',BackgroundColor3=Color3.fromRGB(255,255,255)
,BackgroundTransparency=1,BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,
FontFace=Font.new'rbxasset://fonts/families/SourceSansPro.json',LayoutOrder=1,
Size=UDim2.fromOffset(27,20),Text='',TextColor3=Color3.fromRGB(0,0,0),TextSize=
14,e'ImageLabel'{Name='Image',AnchorPoint=Vector2.new(0.5,0.5),BackgroundColor3=
Color3.fromRGB(255,255,255),BackgroundTransparency=1,BorderColor3=Color3.
fromRGB(0,0,0),BorderSizePixel=0,Image='rbxassetid://95285878898359',Position=
UDim2.fromScale(0.5,0.5),Size=UDim2.fromOffset(9,15),__dynamicKeys={ImageColor3=
b.Theme.Text.Tertiary[1],ImageTransparency=b.Theme.Text.Tertiary[2]},
__contextKeys={ImageColor3=function()local k,l=g<#f,j.Theme.Text return(k and l.
Secondary[1].Value)or l.Tertiary[1].Value end,ImageTransparency=function()local
k,l=g<#f,j.Theme.Text return(k and l.Secondary[2].Value)or l.Tertiary[2].Value
end}}}},e'Frame'{Name='SidebarButton',AutomaticSize=Enum.AutomaticSize.XY,
BackgroundColor3=Color3.fromRGB(255,255,255),BackgroundTransparency=1,
BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,Size=UDim2.fromOffset(38,34
),e'ImageButton'{Name='Image',AnchorPoint=Vector2.new(0.5,0.5),AutoButtonColor=
false,BackgroundColor3=Color3.fromRGB(255,255,255),BackgroundTransparency=1,
BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,Image=
'rbxassetid://74380920233260',Position=UDim2.fromScale(0.5,0.5),Size=UDim2.
fromOffset(20,16),__dynamicKeys={ImageColor3=b.Theme.Text.Secondary[1],
ImageTransparency=b.Theme.Text.Secondary[2]}}}},e'UIListLayout'{Name=
'UIListLayout',FillDirection=Enum.FillDirection.Horizontal,HorizontalFlex=Enum.
UIFlexAlignment.Fill,SortOrder=Enum.SortOrder.LayoutOrder},e'Frame'{Name=
'Trailing',BackgroundColor3=Color3.fromRGB(255,255,255),BackgroundTransparency=1
,BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,Size=UDim2.fromScale(0,1),
e'UIPadding'{Name='UIPadding',PaddingLeft=UDim.new(0,12),PaddingRight=UDim.new(0
,12)},e'UIListLayout'{Name='UIListLayout',HorizontalAlignment=Enum.
HorizontalAlignment.Right,SortOrder=Enum.SortOrder.LayoutOrder,VerticalAlignment
=Enum.VerticalAlignment.Center}}},e'Frame'{Name='CornerClipRight',AnchorPoint=
Vector2.new(1,1),BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,Position=
UDim2.fromScale(1,1),Size=UDim2.new(0,10,0.5,0),ZIndex=-1,__dynamicKeys={
BackgroundColor3=b.Theme.Controls.Titlebar[1]}},e'Frame'{Name='CornerClipLeft',
AnchorPoint=Vector2.new(0,1),BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=
0,Position=UDim2.fromScale(0,1),Size=UDim2.new(0,10,1,0),ZIndex=-1,__dynamicKeys
={BackgroundColor3=b.Theme.Controls.Titlebar[1]}}}::TextButton h.CornerClipLeft=
h.Body:FindFirstChild'CornerClipLeft'::Frame h.CornerClipRight=h.Body:
FindFirstChild'ConerClipRight'::Frame h.Content=h.Body:FindFirstChild'Content'::
Frame h.Leading=h.Content:FindFirstChild'Leading'::Frame h.Trailing=h.Content:
FindFirstChild'Trailing'::Frame h.NavigationButtons=h.Leading:FindFirstChild
'NavigationButtons'::Frame h.Back=h.NavigationButtons:FindFirstChild'Back'::
TextButton h.Forward=h.NavigationButtons:FindFirstChild'Forward'::TextButton h.
SidebarButton=h.Leading:FindFirstChild'SidebarButton':FindFirstChild'Image'::
ImageButton h.TitleStack=h.Leading:FindFirstChild'TitleSubtitle'::Frame h.Title=
h.TitleStack:FindFirstChild'Title'::TextLabel h.Subtitle=h.TitleStack:
FindFirstChild'Subtitle'::TextLabel h.SearchField=d h.SearchField.Body.Size=
UDim2.fromOffset(126,28)h.SearchField.Field.Size=UDim2.fromOffset(90,0)h.
SearchField.Layout.Padding=UDim.new(0,8)h.SearchField.Field.LayoutOrder=1 h.
SearchField.Field.PlaceholderText='Search'h.SearchField.Padding.PaddingLeft=UDim
.new(0,7)h.SearchField.Padding.PaddingRight=UDim.new(0,7)h.SearchField.Corner=
UDim.new(0,6)e'ImageLabel'{Name='ImageLabel',BackgroundColor3=Color3.fromRGB(255
,255,255),BackgroundTransparency=1,BorderColor3=Color3.fromRGB(0,0,0),
BorderSizePixel=0,Image='rbxassetid://120817720539967',Size=UDim2.fromOffset(13,
14),Parent=h.SearchField.Body.__instance,__dynamicKeys={ImageColor3=b.Theme.Text
.PrimaryAccent[1],ImageTransparency=b.Theme.Text.PrimaryAccent[2]}}h.SearchField
.Body.Parent=h.Trailing local k=function()if not j then return end local k,l,m=h
.Back:FindFirstChild'Image',h.Forward:FindFirstChild'Image',j.Theme.Text if k
then local n=g>1 k.ImageColor3=(n and m.Secondary[1].Value)or m.Tertiary[1].
Value k.ImageTransparency=(n and m.Secondary[2].Value)or m.Tertiary[2].Value h.
Back.Interactable=n end if l then local n=g<#f l.ImageColor3=(n and m.Secondary[
1].Value)or m.Tertiary[1].Value l.ImageTransparency=(n and m.Secondary[2].Value)
or m.Tertiary[2].Value h.Forward.Interactable=n end end local l,m=setmetatable({
},{__newindex=function(l,m,n)rawset(f,m,n)k()end,__index=function(l,m)return f[m
]end,__len=function()return#f end}),function(l)if j and j.Tabs then for m,n in
pairs(j.Tabs)do if n.__container==l then n.Selected=true else n.Selected=false
end end end end local n,o=function()h.Back.MouseButton1Click:Connect(function()
if g>1 then g-=1 m(f[g])k()end end)h.Forward.MouseButton1Click:Connect(function(
)if g<#f then g+=1 m(f[g])k()end end)end,function()for n,o in pairs(h.Trailing:
GetChildren())do if not o:IsA'GuiObject'then continue end local p,q=i(o),true
for r,s in pairs(h.Leading:GetChildren())do if not s:IsA'GuiObject'then continue
end local t=i(s)local u=(t.Right>=p.Left and t.Left<=p.Right)and(t.Bottom>=p.Top
and t.Top<=p.Bottom)if u then q=false break end end o.Visible=q end end o()h.
Body:GetPropertyChangedSignal'AbsoluteSize':Connect(o)return h,function(p)j=p n(
)return function(q)for r=#f,g+1,-1 do f[r]=nil end g+=1 l[g]=q end end end end
function a.i():typeof(b())local c=a.cache.i if not c then c={c=b()}a.cache.i=c
end return c.c end end do local b=function()return function(b,c)local d=a.e()
local e,f=d.Create,{}f.Handles=e'Folder'{Name='Handles',Parent=b,e'Frame'{Name=
'E',AnchorPoint=Vector2.new(1,0.5),BackgroundColor3=Color3.fromRGB(255,0,81),
BackgroundTransparency=1,BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,
Position=UDim2.fromScale(1,0.5),Size=UDim2.new(0,6,1,0),ZIndex=8,e
'UIDragDetector'{Name='UIDragDetector',ActivatedCursorIcon=
'rbxassetid://122180269146343',CursorIcon='rbxassetid://122180269146343',
ResponseStyle=Enum.UIDragDetectorResponseStyle.CustomOffset,
SelectionModeDragSpeed=UDim2.new(),SelectionModeRotateSpeed=0}},e'Frame'{Name=
'N',AnchorPoint=Vector2.new(0.5,0),BackgroundColor3=Color3.fromRGB(255,0,81),
BackgroundTransparency=1,BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,
Position=UDim2.fromScale(0.5,0),Size=UDim2.new(1,0,0,6),ZIndex=8,e
'UIDragDetector'{Name='UIDragDetector',ActivatedCursorIcon=
'rbxassetid://109321922977357',CursorIcon='rbxassetid://109321922977357',
ResponseStyle=Enum.UIDragDetectorResponseStyle.CustomOffset,
SelectionModeDragSpeed=UDim2.new(),SelectionModeRotateSpeed=0}},e'Frame'{Name=
'NE',AnchorPoint=Vector2.new(1,0),BackgroundColor3=Color3.fromRGB(255,0,81),
BackgroundTransparency=1,BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,
Position=UDim2.fromScale(1,0),Size=UDim2.fromOffset(10,10),ZIndex=9,e
'UIDragDetector'{Name='UIDragDetector',ActivatedCursorIcon=
'rbxassetid://78578587100983',CursorIcon='rbxassetid://78578587100983',
ResponseStyle=Enum.UIDragDetectorResponseStyle.CustomOffset,
SelectionModeDragSpeed=UDim2.new(),SelectionModeRotateSpeed=0}},e'Frame'{Name=
'NW',BackgroundColor3=Color3.fromRGB(255,0,81),BackgroundTransparency=1,
BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,Size=UDim2.fromOffset(10,10
),ZIndex=9,e'UIDragDetector'{Name='UIDragDetector',ActivatedCursorIcon=
'rbxassetid://127507239458439',CursorIcon='rbxassetid://127507239458439',
ResponseStyle=Enum.UIDragDetectorResponseStyle.CustomOffset,
SelectionModeDragSpeed=UDim2.new(),SelectionModeRotateSpeed=0}},e'Frame'{Name=
'S',AnchorPoint=Vector2.new(0.5,1),BackgroundColor3=Color3.fromRGB(255,0,81),
BackgroundTransparency=1,BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,
Position=UDim2.fromScale(0.5,1),Size=UDim2.new(1,0,0,6),ZIndex=8,e
'UIDragDetector'{Name='UIDragDetector',ActivatedCursorIcon=
'rbxassetid://109321922977357',CursorIcon='rbxassetid://109321922977357',
ResponseStyle=Enum.UIDragDetectorResponseStyle.CustomOffset,
SelectionModeDragSpeed=UDim2.new(),SelectionModeRotateSpeed=0}},e'Frame'{Name=
'SE',AnchorPoint=Vector2.new(1,1),BackgroundColor3=Color3.fromRGB(255,0,81),
BackgroundTransparency=1,BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,
Position=UDim2.fromScale(1,1),Size=UDim2.fromOffset(10,10),ZIndex=9,e
'UIDragDetector'{Name='UIDragDetector',ActivatedCursorIcon=
'rbxassetid://127507239458439',CursorIcon='rbxassetid://127507239458439',
ResponseStyle=Enum.UIDragDetectorResponseStyle.CustomOffset,
SelectionModeDragSpeed=UDim2.new(),SelectionModeRotateSpeed=0}},e'Frame'{Name=
'SW',AnchorPoint=Vector2.new(0,1),BackgroundColor3=Color3.fromRGB(255,0,81),
BackgroundTransparency=1,BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,
Position=UDim2.fromScale(0,1),Size=UDim2.fromOffset(10,10),ZIndex=9,e
'UIDragDetector'{Name='UIDragDetector',ActivatedCursorIcon=
'rbxassetid://78578587100983',CursorIcon='rbxassetid://78578587100983',
ResponseStyle=Enum.UIDragDetectorResponseStyle.CustomOffset,
SelectionModeDragSpeed=UDim2.new(),SelectionModeRotateSpeed=0}},e'Frame'{Name=
'W',AnchorPoint=Vector2.new(0,0.5),BackgroundColor3=Color3.fromRGB(255,0,81),
BackgroundTransparency=1,BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,
Position=UDim2.fromScale(0,0.5),Size=UDim2.new(0,6,1,0),ZIndex=8,e
'UIDragDetector'{Name='UIDragDetector',ActivatedCursorIcon=
'rbxassetid://122180269146343',CursorIcon='rbxassetid://122180269146343',
ResponseStyle=Enum.UIDragDetectorResponseStyle.CustomOffset,
SelectionModeDragSpeed=UDim2.new(),SelectionModeRotateSpeed=0}}}::Folder c=c or
Vector2.new(0,0)f.N=f.Handles:FindFirstChild'N':FindFirstChild'UIDragDetector'f.
S=f.Handles:FindFirstChild'S':FindFirstChild'UIDragDetector'f.W=f.Handles:
FindFirstChild'W':FindFirstChild'UIDragDetector'f.E=f.Handles:FindFirstChild'E':
FindFirstChild'UIDragDetector'f.NE=f.Handles:FindFirstChild'NE':FindFirstChild
'UIDragDetector'f.SE=f.Handles:FindFirstChild'SE':FindFirstChild'UIDragDetector'
f.NW=f.Handles:FindFirstChild'NW':FindFirstChild'UIDragDetector'f.SW=f.Handles:
FindFirstChild'SW':FindFirstChild'UIDragDetector'local g,h,i={}g.__index=g local
j=function(j:Vector2,k:string)local l=Vector2.zero if string.find(k,'N')then l+=
Vector2.new(0,-1)end if string.find(k,'S')then l+=Vector2.new(0,1)end if string.
find(k,'W')then l+=Vector2.new(-1,0)end if string.find(k,'E')then l+=Vector2.
new(1,0)end local m=Vector2.new((l.X~=0)and(j.X*l.X)or 0,(l.Y~=0)and(j.Y*l.Y)or
0)local n=i+m n=Vector2.new(math.max(c.X,n.X),math.max(c.Y,n.Y))local o=n-i
local p=Vector2.new(l.X<0 and-o.X*0.5 or o.X*0.5,l.Y<0 and-o.Y*0.5 or o.Y*0.5)
local q=h+p b.Size=UDim2.fromOffset(n.X,n.Y)b.Position=UDim2.new(0.5,q.X,0.5,q.Y
)end local k=function(k,l:string)k.DragStart:Connect(function()i=b.AbsoluteSize
h=Vector2.new(b.Position.X.Offset,b.Position.Y.Offset)end)k.DragContinue:
Connect(function()j(Vector2.new(k.DragUDim2.X.Offset,k.DragUDim2.Y.Offset),l)end
)end function g.CreateClient()k(f.NW,'NW')k(f.NE,'NE')k(f.SW,'SW')k(f.SE,'SE')k(
f.E,'E')k(f.W,'W')k(f.S,'S')k(f.N,'N')end function g.SetEnabled(l:boolean)for m,
n in pairs(f)do if n:IsA'UIDragDetector'then n.Enabled=l end end end return g
end end function a.j():typeof(b())local c=a.cache.j if not c then c={c=b()}a.
cache.j=c end return c.c end end end a.a()return function(b,c:
WindowProperties__DARKLUA_TYPE_q):Window__DARKLUA_TYPE_r local d,e,f,g,h,i=a.g()
,a.c(),a.e(),a.d(),a.i()(b)local j,k,l,m,n=a.j(),f.Create,e.UserInputService,e.
TweenService,b.__container or b.__instance or b local o,p,q,r,s,t,u,v=k'Frame'{
Name='Window',BackgroundTransparency=1,BorderSizePixel=0,Size=UDim2.fromScale(1,
1),AnchorPoint=Vector2.new(0.5,0.5),Position=UDim2.fromScale(0.5,0.5),Parent=n}.
__instance,{}c=c or{}c.Size=c.Size or UDim2.fromOffset(850,530)c.Maximized=c.
Maximized==true c.Minimized=c.Minimized==true c.Searching=c.Searching~=false c.
Resizable=c.Resizable~=false c.Draggable=c.Draggable~=false c.Resizable=c.
Resizable~=false c.Dropshadow=c.Dropshadow~=false c.UIBlur=c.UIBlur~=false c.
Title=c.Title or'Title'p.Body=g.Apply(c,k'Frame'{Name='Body',BorderSizePixel=0,
AnchorPoint=Vector2.new(0.5,0.5),Position=UDim2.fromScale(0.5,0.5),Parent=o,
__dynamicKeys={BackgroundColor3=b.Theme.Controls.Sidebar[1],
BackgroundTransparency=b.Theme.Controls.Sidebar[2]},__contextKeys={
BackgroundTransparency=function()return c.UIBlur and b.Theme.Controls.Sidebar[2]
.Value or 0 end},k'UICorner'{Name='UICorner',CornerRadius=UDim.new(0,10)},k
'UIListLayout'{Name='UIListLayout',FillDirection=Enum.FillDirection.Horizontal,
Padding=UDim.new(0,0),SortOrder=Enum.SortOrder.LayoutOrder},k'Frame'{Name=
'Sidebar',BackgroundColor3=Color3.fromRGB(234,234,234),BackgroundTransparency=1,
BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,Size=UDim2.new(0,200,1,0),
ClipsDescendants=true,k'UIPadding'{Name='UIPadding'},k'Frame'{Name='Margins',
BackgroundColor3=Color3.fromRGB(234,234,234),BackgroundTransparency=1,
BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,Size=UDim2.new(0,200,1,0),k
'Folder'{Name='LayoutIgnore',k'Frame'{Name='Shadow',AnchorPoint=Vector2.new(1,0)
,BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,Position=UDim2.new(1,2,0,0
),Size=UDim2.new(0,5,1,0),ZIndex=0,__dynamicKeys={BackgroundColor3=b.Theme.
Controls.Separator.Shadow[1],BackgroundTransparency=b.Theme.Controls.Separator.
Shadow[2]},k'UIGradient'{Name='UIGradient',Transparency=NumberSequence.new{
NumberSequenceKeypoint.new(0,1),NumberSequenceKeypoint.new(1,0)}}}},k'UIPadding'
{Name='UIPadding',PaddingRight=UDim.new(0,2)},k'Frame'{Name='Toolbar',
BackgroundColor3=Color3.fromRGB(255,255,255),BackgroundTransparency=1,
BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,Size=UDim2.new(1,0,0,52),k
'Frame'{Name='WindowControls',AnchorPoint=Vector2.new(0,0.5),BackgroundColor3=
Color3.fromRGB(255,255,255),BackgroundTransparency=1,BorderColor3=Color3.
fromRGB(0,0,0),BorderSizePixel=0,Position=UDim2.fromScale(0,0.5),Size=UDim2.
fromOffset(92,38),k'UIListLayout'{Name='UIListLayout',FillDirection=Enum.
FillDirection.Horizontal,Padding=UDim.new(0,8),SortOrder=Enum.SortOrder.
LayoutOrder,VerticalAlignment=Enum.VerticalAlignment.Center},k'UIPadding'{Name=
'UIPadding',PaddingLeft=UDim.new(0,20),PaddingRight=UDim.new(0,20)},k
'ImageButton'{Name='Exit',AutoButtonColor=false,BackgroundColor3=Color3.fromRGB(
255,255,255),BackgroundTransparency=1,BorderColor3=Color3.fromRGB(0,0,0),
BorderSizePixel=0,Image='rbxassetid://132228700346004',Size=UDim2.fromOffset(12,
12),__dynamicKeys={ImageColor3=b.Theme.Controls.Exit[1],ImageTransparency=b.
Theme.Controls.Exit[2]},k'ImageLabel'{Name='Stroke',BackgroundColor3=Color3.
fromRGB(255,255,255),BackgroundTransparency=1,BorderColor3=Color3.fromRGB(0,0,0)
,BorderSizePixel=0,Image='rbxassetid://94763505860483',Size=UDim2.fromScale(1,1)
,__dynamicKeys={ImageColor3=b.Theme.Controls.WindowControlStroke[1],
ImageTransparency=b.Theme.Controls.WindowControlStroke[2]}},k'ImageLabel'{Name=
'Icon',AnchorPoint=Vector2.new(0.5,0.5),BackgroundColor3=Color3.fromRGB(255,255,
255),BackgroundTransparency=1,BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel
=0,Image='rbxassetid://94781753558308',Position=UDim2.fromScale(0.5,0.5),Size=
UDim2.fromScale(1,1),Visible=false,__dynamicKeys={ImageColor3=b.Theme.Controls.
WindowControlIcon[1],ImageTransparency=b.Theme.Controls.WindowControlIcon[2]}}},
k'ImageButton'{Name='Minimize',AutoButtonColor=false,BackgroundColor3=Color3.
fromRGB(255,255,255),BackgroundTransparency=1,BorderColor3=Color3.fromRGB(0,0,0)
,BorderSizePixel=0,Image='rbxassetid://132228700346004',LayoutOrder=1,Size=UDim2
.fromOffset(12,12),__dynamicKeys={ImageColor3=b.Theme.Controls.Minimize[1],
ImageTransparency=b.Theme.Controls.Minimize[2]},k'ImageLabel'{Name='Stroke',
BackgroundColor3=Color3.fromRGB(255,255,255),BackgroundTransparency=1,
BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,Image=
'rbxassetid://94763505860483',Size=UDim2.fromScale(1,1),__dynamicKeys={
ImageColor3=b.Theme.Controls.WindowControlStroke[1],ImageTransparency=b.Theme.
Controls.WindowControlStroke[2]}},k'ImageLabel'{Name='Icon',AnchorPoint=Vector2.
new(0.5,0.5),BackgroundColor3=Color3.fromRGB(255,255,255),BackgroundTransparency
=1,BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,Image=
'rbxassetid://118368309445367',Position=UDim2.fromScale(0.5,0.5),Size=UDim2.
fromScale(1,1),Visible=false,__dynamicKeys={ImageColor3=b.Theme.Controls.
WindowControlIcon[1],ImageTransparency=b.Theme.Controls.WindowControlIcon[2]}}},
k'ImageButton'{Name='Zoom',AutoButtonColor=false,BackgroundColor3=Color3.
fromRGB(255,255,255),BackgroundTransparency=1,BorderColor3=Color3.fromRGB(0,0,0)
,BorderSizePixel=0,Image='rbxassetid://132228700346004',LayoutOrder=2,Size=UDim2
.fromOffset(12,12),__dynamicKeys={ImageColor3=b.Theme.Controls.Zoom[1],
ImageTransparency=b.Theme.Controls.Zoom[2]},k'ImageLabel'{Name='Stroke',
BackgroundColor3=Color3.fromRGB(255,255,255),BackgroundTransparency=1,
BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,Image=
'rbxassetid://94763505860483',Size=UDim2.fromScale(1,1),__dynamicKeys={
ImageColor3=b.Theme.Controls.WindowControlStroke[1],ImageTransparency=b.Theme.
Controls.WindowControlStroke[2]}},k'ImageLabel'{Name='Icon',AnchorPoint=Vector2.
new(0.5,0.5),BackgroundColor3=Color3.fromRGB(255,255,255),BackgroundTransparency
=1,BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,Image=
'rbxassetid://114376524082699',Position=UDim2.fromScale(0.5,0.5),Size=UDim2.
fromScale(1,1),Visible=false,__dynamicKeys={ImageColor3=b.Theme.Controls.
WindowControlIcon[1],ImageTransparency=b.Theme.Controls.WindowControlIcon[2]}}}}
},k'ScrollingFrame'{Name='SidebarList',AutomaticCanvasSize=Enum.AutomaticSize.Y,
BackgroundColor3=Color3.fromRGB(255,255,255),BackgroundTransparency=1,
BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,CanvasSize=UDim2.new(),
Position=UDim2.fromOffset(0,52),ScrollBarImageColor3=Color3.fromRGB(0,0,0),
ScrollBarImageTransparency=0.7,ScrollBarThickness=6,Size=UDim2.new(1,0,1,-52),k
'UIListLayout'{Name='UIListLayout',Padding=UDim.new(0,9),SortOrder=Enum.
SortOrder.LayoutOrder,HorizontalAlignment=Enum.HorizontalAlignment.Right},k
'UIPadding'{Name='UIPadding',PaddingLeft=UDim.new(0,10),PaddingRight=UDim.new(0,
10),PaddingBottom=UDim.new(0,10)}}}},k'Frame'{Name='Separator',AnchorPoint=
Vector2.new(1,0),BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,
LayoutOrder=1,Position=UDim2.fromScale(1,0),Size=UDim2.new(0,1,1,0),
__dynamicKeys={BackgroundColor3=b.Theme.Controls.Separator.Background[1],
BackgroundTransparency=b.Theme.Controls.Separator.Background[2]}},k'Frame'{Name=
'ContentBody',AnchorPoint=Vector2.new(1,0),BorderColor3=Color3.fromRGB(0,0,0),
BorderSizePixel=0,ClipsDescendants=true,LayoutOrder=2,Position=UDim2.fromScale(1
,0),Size=UDim2.new(1,-201,1,0),__dynamicKeys={BackgroundColor3=b.Theme.Controls.
Background[1],BackgroundTransparency=b.Theme.Controls.Background[2]},k'UICorner'
{Name='UICorner',CornerRadius=UDim.new(0,10)},k'Frame'{Name='Content',
BackgroundColor3=Color3.fromRGB(255,255,255),BackgroundTransparency=1,
BorderColor3=Color3.fromRGB(255,199,199),BorderMode=Enum.BorderMode.Inset,
BorderSizePixel=0,ClipsDescendants=true,Position=UDim2.fromOffset(0,52),Size=
UDim2.new(1,0,1,-52),k'UIPadding'{Name='Margins',PaddingBottom=UDim.new(0,3),
PaddingLeft=UDim.new(0,3),PaddingRight=UDim.new(0,3),PaddingTop=UDim.new(0,3)}},
k'Frame'{Name='CornerClip',AnchorPoint=Vector2.new(0,1),BorderColor3=Color3.
fromRGB(0,0,0),BorderSizePixel=0,Position=UDim2.fromScale(0,1),Size=UDim2.
fromOffset(10,10),ZIndex=-1,__dynamicKeys={BackgroundColor3=b.Theme.Controls.
Background[1]}}},k'Folder'{Name='LayoutIgnore',k'TextButton'{Name='TopArea',
AutoButtonColor=false,Active=false,BackgroundColor3=Color3.fromRGB(255,255,255),
BackgroundTransparency=1,BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,
Size=UDim2.new(1,0,0,52),ZIndex=0,Text='',Modal=false},k'ImageLabel'{Name=
'Dropshadow',AnchorPoint=Vector2.new(0.5,0.5),BackgroundColor3=Color3.fromRGB(
255,255,255),BackgroundTransparency=1,BorderColor3=Color3.fromRGB(0,0,0),
BorderSizePixel=0,Image='rbxassetid://138260268144845',ImageTransparency=0.65,
Interactable=false,Position=UDim2.new(0.5,0,0.5,3),ScaleType=Enum.ScaleType.
Slice,Size=UDim2.new(1,24,1,24),SliceCenter=Rect.new(28,26,96,94),ZIndex=0}}})::
Frame p.Scale=k'UIScale'{Parent=o}p.Cornering=p.Body:FindFirstChild'UICorner'::
UICorner p.LayoutIgnore=p.Body:FindFirstChild'LayoutIgnore'::Folder p.Dropshadow
=p.LayoutIgnore:FindFirstChild'Dropshadow'::ImageLabel p.Separator=p.Body:
FindFirstChild'Separator'::Frame p.SidebarMargins=p.Body:FindFirstChild'Sidebar'
p.Sidebar=p.SidebarMargins:FindFirstChild'Margins'::Frame p.SidebarList=p.
Sidebar:FindFirstChild'SidebarList'::Frame p.Toolbar=p.Sidebar:FindFirstChild
'Toolbar'::Frame p.WindowControls=p.Toolbar:FindFirstChild'WindowControls'::
Frame p.ContentBody=p.Body:FindFirstChild'ContentBody'::Frame p.Content=p.
ContentBody:FindFirstChild'Content'::Frame p.CornerClip=p.ContentBody:
FindFirstChild'CornerClip'::Frame p.Titlebar=h p.Titlebar.Body.Parent=p.
ContentBody q=p.Body.Size r=p.Body.Position local w={Title=function(w:string)p.
Titlebar.Title.Visible=w and true or false if w then p.Titlebar.Title.Text=w end
end,Subtitle=function(w:string)p.Titlebar.Subtitle.Visible=w and true or false
if w then p.Titlebar.Subtitle.Text=w end end,Searching=function(w:boolean)p.
Titlebar.SearchField.Body.Parent=w and p.Titlebar.Trailing or nil p.Titlebar.
SearchField.Body.Visible=w end,Draggable=function(w:boolean)u=not w and false
end,Resizable=function(w:boolean)if v and not c.Maximized then v.SetEnabled(w)
end end,Minimized=function(w:boolean?,x:boolean?)local y=x~=false if w and not t
then s=p.Body.Position if p.BlurModel then p.BlurModel.SetVisibility(false)end
end local z,A,B=TweenInfo.new(0.25,Enum.EasingStyle.Exponential,Enum.
EasingDirection.Out),{Position=w and UDim2.new(0.5,0,0.5,p.Body.AbsoluteSize.Y*2
)or s},{Scale=w and 0 or 1}if y then t=true m:Create(p.Body.__instance,z,A):
Play()local C:Tween=m:Create(p.Scale.__instance,z,B)C:Play()C.Completed:Once(
function()t=false if p.BlurModel and not c.Minimized then p.BlurModel.
SetVisibility(true)end end)else p.Body.Position=A.Position p.Scale.Scale=B.Scale
if w and p.BlurModel then p.BlurModel.SetVisibility(false)end end end,Maximized=
function(w:boolean?,x:boolean?)x=x~=false if w then q=p.Body.Size r=p.Body.
Position v.SetEnabled(false)else u=false end local y,z,A=TweenInfo.new(0.5,Enum.
EasingStyle.Exponential,Enum.EasingDirection.Out),{Size=w and UDim2.fromScale(1,
1)or q,Position=w and UDim2.fromScale(0.5,0.5)or r},{CornerRadius=w and UDim.
new(0,0)or UDim.new(0,10)}if x then m:Create(p.Body.__instance,y,z):Play()m:
Create(p.Cornering,y,A):Play()else p.Body.Size=z.Size p.Body.Position=z.Position
p.Cornering.CornerRadius=A.CornerRadius end if not w then v.SetEnabled(c.
Resizable)end end,Dropshadow=function(w:boolean)p.Dropshadow.Visible=w end,
UIBlur=function(w:boolean)if p.BlurModel then p.BlurModel.Model:Destroy()p.
BlurModel=nil end p.Body.BackgroundTransparency=w and b.Theme.Controls.Sidebar[2
].Value or 0 if w and not c.Minimized then p.BlurModel=d.UIBlur(p.Body)end end}
local x=g.Wrap(c,w,p.Body)x.Type='Window'x.Theme=b.Theme x.Structures=p x.Tabs={
}x.addToHistory=i(x)x.__container=p.Content do v=j(p.Body.__instance,Vector2.
new(350,250))v.CreateClient()end do local y=true local z=function()y=not y local
z,A,B,C,D=y and UDim.new(0,0)or UDim.new(0,-200),y and UDim2.new(0,200,1,0)or
UDim2.new(0,0,1,0),y and UDim2.new(1,-201,1,0)or UDim2.new(1,0,1,0),y and UDim2.
new(0,10,1,0)or UDim2.new(0,10,0.5,0),TweenInfo.new(0.6,Enum.EasingStyle.
Exponential,Enum.EasingDirection.Out)p.Separator.Visible=y and true or false p.
CornerClip.Visible=y and true m:Create(p.ContentBody,D,{Size=B}):Play()m:Create(
p.SidebarMargins:FindFirstChild'UIPadding',D,{PaddingLeft=z}):Play()local E=m:
Create(p.SidebarMargins,D,{Size=A})m:Create(p.Titlebar.CornerClipLeft,D,{Size=C}
):Play()E:Play()if not y then E.Completed:Connect(function()p.CornerClip.Visible
=false end)end end p.Titlebar.SidebarButton.MouseButton1Click:Connect(z)end do
local y,z=p.Titlebar.SearchField.Field,{}local A,B=function(A,B)local C={}for D,
E in ipairs(B)do if E:IsA'GuiObject'then C[E]=E.Visible end end z[A]=C end,
function(A,B)local C=z[A]if not C then return end for D,E in ipairs(B)do if E:
IsA'GuiObject'then E.Visible=C[E]~=false end end end y:GetPropertyChangedSignal
'Text':Connect(function()local C,D,E={},{},p.Content:FindFirstChildOfClass
'ScrollingFrame'if not E then return end local F=E:GetDescendants()if not z[E]
then A(E,F)end local G=y.Text:lower()if G==''then B(E,F)return end for H,I in
ipairs(F)do if I:IsA'GuiObject'then local J=I:GetAttribute'SearchIndex'if
typeof(J)=='string'and J:lower():find(G)then table.insert(C,I)end end end for H,
I in ipairs(C)do D[I]=true local J=I.Parent while J and J~=E do if J:IsA
'GuiObject'then D[J]=true end J=J.Parent end end for H,I in ipairs(F)do if I:IsA
'GuiObject'then I.Visible=false end end for H,I in ipairs(C)do I.Visible=true
local J=I.Parent while J and J~=E do if J:IsA'GuiObject'then J.Visible=true end
J=J.Parent end local K=z[E]for L,M in ipairs(I:GetDescendants())do if M:IsA
'GuiObject'then local N=K and K[M]if N then M.Visible=true end end end end end)
end do local y,z,A=p.WindowControls:FindFirstChild'Exit'::ImageButton,p.
WindowControls:FindFirstChild'Minimize'::ImageButton,p.WindowControls:
FindFirstChild'Zoom'::ImageButton local B=function()y:FindFirstChild'Icon'.
Visible=p.WindowControls.GuiState~=Enum.GuiState.Hover z:FindFirstChild'Icon'.
Visible=p.WindowControls.GuiState~=Enum.GuiState.Hover A:FindFirstChild'Icon'.
Visible=p.WindowControls.GuiState~=Enum.GuiState.Hover end A.MouseButton1Click:
Connect(function()c.Maximized=not c.Maximized w.Maximized(c.Maximized,true)end)z
.MouseButton1Click:Connect(function()c.Minimized=not c.Minimized w.Minimized(c.
Minimized,true)end)if b.Structures and b.Structures.WindowPill then local C:
ImageButton=b.Structures.WindowPill C.MouseButton1Click:Connect(function()c.
Minimized=not c.Minimized w.Minimized(c.Minimized,true)end)end y.
MouseButton1Click:Connect(function()w.Minimized(true)task.delay(0.25,p.Body.
Destroy)end)p.WindowControls.MouseEnter:Connect(B)p.WindowControls.MouseLeave:
Connect(B)end do local y,z,A,B=(p.LayoutIgnore:FindFirstChild'TopArea')y.
InputBegan:Connect(function(C)if(C.UserInputType==Enum.UserInputType.
MouseButton1 or C.UserInputType==Enum.UserInputType.Touch)and c.Draggable and
not c.Maximized then u=true z=C.Position A=p.Body.Position if B then B:
Disconnect()end B=C.Changed:Connect(function()if C.UserInputState==Enum.
UserInputState.End then u=false end end)end end)l.InputChanged:Connect(function(
C)if C.UserInputType==Enum.UserInputType.MouseMovement or C.UserInputType==Enum.
UserInputType.Touch then if u then local D=C.Position-z local E=UDim2.new(A.X.
Scale,A.X.Offset+D.X,A.Y.Scale,A.Y.Offset+D.Y)p.Body.Position=E end end end)end
g.Apply(c,x)local y=function()for y,z in pairs(p.Body:GetDescendants())do if not
pcall(function()return z.Size end)then continue end local A=z.Size z.Size=UDim2.
fromOffset(0,0)z.Size=A end end task.defer(y)task.delay(1,y)return x end