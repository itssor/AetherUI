type ExpectedObject__DARKLUA_TYPE_a=((...any)->...any)|Instance|SomeOtherService
type Instance__DARKLUA_TYPE_b={Name:string?,Parent:Instance__DARKLUA_TYPE_b?,
Archivable:boolean?,ClassName:string?,Clone:((self:Instance__DARKLUA_TYPE_b)->
Instance__DARKLUA_TYPE_b)?,Destroy:((self:Instance__DARKLUA_TYPE_b)->())?,
FindFirstAncestor:((self:Instance__DARKLUA_TYPE_b,name:string)->
Instance__DARKLUA_TYPE_b?)?,FindFirstAncestorWhichIsA:((self:
Instance__DARKLUA_TYPE_b,className:string)->Instance__DARKLUA_TYPE_b?)?,
FindFirstAncestorOfClass:((self:Instance__DARKLUA_TYPE_b,className:string)->
Instance__DARKLUA_TYPE_b?)?,FindFirstChild:((self:Instance__DARKLUA_TYPE_b,name:
string,recursive:boolean?)->Instance__DARKLUA_TYPE_b?)?,FindFirstChildWhichIsA:(
(self:Instance__DARKLUA_TYPE_b,className:string,recursive:boolean?)->
Instance__DARKLUA_TYPE_b?)?,FindFirstChildOfClass:((self:
Instance__DARKLUA_TYPE_b,className:string,recursive:boolean?)->
Instance__DARKLUA_TYPE_b?)?,GetAttribute:((self:Instance__DARKLUA_TYPE_b,
attribute:string)->any)?,GetAttributes:((self:Instance__DARKLUA_TYPE_b)->{[
string]:any})?,GetChildren:((self:Instance__DARKLUA_TYPE_b)->{
Instance__DARKLUA_TYPE_b})?,GetDescendants:((self:Instance__DARKLUA_TYPE_b)->{
Instance__DARKLUA_TYPE_b})?,HasTag:((self:Instance__DARKLUA_TYPE_b,tag:string)->
boolean)?,IsA:((self:Instance__DARKLUA_TYPE_b,className:string)->boolean)?,
IsAncestorOf:((self:Instance__DARKLUA_TYPE_b,descendant:Instance__DARKLUA_TYPE_b
)->boolean)?,IsDescendantOf:((self:Instance__DARKLUA_TYPE_b,ancestor:
Instance__DARKLUA_TYPE_b)->boolean)?,WaitForChild:((self:
Instance__DARKLUA_TYPE_b,childName:string,timeOut:number?)->
Instance__DARKLUA_TYPE_b)?,AncestryChanged:((self:Instance__DARKLUA_TYPE_b,
handler:(child:Instance__DARKLUA_TYPE_b,parent:Instance__DARKLUA_TYPE_b?)->())->
RBXScriptConnection)?,AttributeChanged:((self:Instance__DARKLUA_TYPE_b,handler:(
attribute:string)->())->RBXScriptConnection)?,ChildAdded:((self:
Instance__DARKLUA_TYPE_b,handler:(child:Instance__DARKLUA_TYPE_b)->())->
RBXScriptConnection)?,ChildRemoved:((self:Instance__DARKLUA_TYPE_b,handler:(
child:Instance__DARKLUA_TYPE_b)->())->RBXScriptConnection)?,DescendantAdded:((
self:Instance__DARKLUA_TYPE_b,handler:(descendant:Instance__DARKLUA_TYPE_b)->()
)->RBXScriptConnection)?,DescendantRemoving:((self:Instance__DARKLUA_TYPE_b,
handler:(descendant:Instance__DARKLUA_TYPE_b)->())->RBXScriptConnection)?,
Destroying:((self:Instance__DARKLUA_TYPE_b,handler:()->())->RBXScriptConnection)
?,PropertyChanged:((self:Instance__DARKLUA_TYPE_b,property:string)->
RBXScriptConnection)?}type GuiBase2d__DARKLUA_TYPE_c=Instance__DARKLUA_TYPE_b&{
AutoLocalize:boolean?,RootLocalizationTable:LocalizationTable?,
SelectionBehaviorDown:Enum.SelectionBehavior?,SelectionBehaviorLeft:Enum.
SelectionBehavior?,SelectionBehaviorRight:Enum.SelectionBehavior?,
SelectionBehaviorUp:Enum.SelectionBehavior?,SelectionGroup:boolean?}type
LayerCollector__DARKLUA_TYPE_d=GuiBase2d__DARKLUA_TYPE_c&{Enabled:boolean?,
ResetOnSpawn:boolean?,ZIndexBehavior:Enum.ZIndexBehavior?}type
GuiObject__DARKLUA_TYPE_e=GuiBase2d__DARKLUA_TYPE_c&{AnchorPoint:Vector2?,
BackgroundColor3:Color3?,BackgroundTransparency:number?,BorderColor3:Color3?,
BorderMode:Enum.BorderMode?,BorderSizePixel:number?,ClipsDescendants:boolean?,
LayoutOrder:number?,Position:UDim2?,Rotation:number?,Selectable:boolean?,
SelectionImageObject:GuiObject__DARKLUA_TYPE_e?,Size:UDim2?,SizeConstraint:Enum.
SizeConstraint?,Visible:boolean?,ZIndex:number?,AutomaticSize:Enum.AutomaticSize
?}type ScreenGui__DARKLUA_TYPE_f=LayerCollector__DARKLUA_TYPE_d&{DisplayOrder:
number?,IgnoreGuiInset:boolean?,ScreenInsets:Enum.ScreenInsets?,
ClipToDeviceSafeArea:boolean?,SafeAreaCompatibility:Enum.SafeAreaCompatibility?}
type Frame__DARKLUA_TYPE_g=GuiObject__DARKLUA_TYPE_e&{Style:Enum.FrameStyle?}
type TextLabel__DARKLUA_TYPE_h=GuiObject__DARKLUA_TYPE_e&{FontFace:Font?,
LineHeight:number?,MaxVisibleGraphemes:number?,OpenTypeFeatures:string?,RichText
:boolean?,Text:string?,TextColor3:Color3?,TextDirection:Enum.TextDirection?,
TextScaled:boolean?,TextSize:number?,TextStrokeColor3:Color3?,
TextStrokeTransparency:number?,TextTransparency:number?,TextTruncate:Enum.
TextTruncate?,TextWrapped:boolean?,TextXAlignment:Enum.TextXAlignment?,
TextYAlignment:Enum.TextYAlignment?}type TextBox__DARKLUA_TYPE_i=
GuiObject__DARKLUA_TYPE_e&{ClearTextOnFocus:boolean?,CursorPosition:number?,
MultiLine:boolean?,ShowNativeInput:boolean?,TextEditable:boolean?,ContentText:
string?,FontFace:Font?,LineHeight:number?,MaxVisibleGraphemes:number?,
OpenTypeFeatures:string?,OpenTypeFeaturesError:string?,PlaceholderColor3:Color3?
,PlaceholderText:string?,RichText:boolean?,Text:string?,TextBounds:Vector2?,
TextColor3:Color3?,TextDirection:Enum.TextDirection?,TextFits:boolean?,
TextScaled:boolean?,TextSize:number?,TextStrokeColor3:Color3?,
TextStrokeTransparency:number?,TextTransparency:number?,TextTruncate:Enum.
TextTruncate?,TextWrapped:boolean?,TextXAlignment:Enum.TextXAlignment?,
TextYAlignment:Enum.TextYAlignment?,SelectionStart:number?,CaptureFocus:((self:
TextBox__DARKLUA_TYPE_i)->())?,IsFocused:((self:TextBox__DARKLUA_TYPE_i)->
boolean)?,ReleaseFocus:((self:TextBox__DARKLUA_TYPE_i,submitted:boolean?)->())?,
Focused:((self:TextBox__DARKLUA_TYPE_i,handler:()->())->RBXScriptConnection)?,
FocusLost:((self:TextBox__DARKLUA_TYPE_i,handler:(enterPressed:boolean,
inputThatCausedFocusLoss:InputObject)->())->RBXScriptConnection)?,
ReturnPressedFromOnScreenKeyboard:((self:TextBox__DARKLUA_TYPE_i,handler:()->()
)->RBXScriptConnection)?}type ImageLabel__DARKLUA_TYPE_j=
GuiObject__DARKLUA_TYPE_e&{Image:string?,ImageColor3:Color3?,ImageContent:string
?,ImageRectOffset:Vector2?,ImageRectSize:Vector2?,ImageTransparency:number?,
IsLoaded:boolean?,ResampleMode:Enum.ResamplerMode?,ScaleType:Enum.ScaleType?,
SliceCenter:Rect?,SliceScale:number?,TileSize:UDim2?}type
GuiButton__DARKLUA_TYPE_k=GuiObject__DARKLUA_TYPE_e&{AutoButtonColor:boolean?,
Modal:boolean?,Style:Enum.ButtonStyle?,HoverHapticEffect:HapticEffect?,
PressHapticEffect:HapticEffect?,Selected:boolean?,Activated:((self:
GuiButton__DARKLUA_TYPE_k,handler:(inputObject:InputObject,clickCount:number)->(
))->RBXScriptConnection)?,MouseButton1Click:((self:GuiButton__DARKLUA_TYPE_k,
handler:()->())->RBXScriptConnection)?,MouseButton1Down:((self:
GuiButton__DARKLUA_TYPE_k,handler:(x:number,y:number)->())->RBXScriptConnection)
?,MouseButton1Up:((self:GuiButton__DARKLUA_TYPE_k,handler:(x:number,y:number)->(
))->RBXScriptConnection)?,MouseButton2Click:((self:GuiButton__DARKLUA_TYPE_k,
handler:()->())->RBXScriptConnection)?,MouseButton2Down:((self:
GuiButton__DARKLUA_TYPE_k,handler:(x:number,y:number)->())->RBXScriptConnection)
?,MouseButton2Up:((self:GuiButton__DARKLUA_TYPE_k,handler:(x:number,y:number)->(
))->RBXScriptConnection)?}type TextButton__DARKLUA_TYPE_l=
GuiButton__DARKLUA_TYPE_k&{FontFace:Font?,LineHeight:number?,MaxVisibleGraphemes
:number?,OpenTypeFeatures:string?,RichText:boolean?,Text:string?,TextColor3:
Color3?,TextDirection:Enum.TextDirection?,TextScaled:boolean?,TextSize:number?,
TextStrokeColor3:Color3?,TextStrokeTransparency:number?,TextTransparency:number?
,TextTruncate:Enum.TextTruncate?,TextWrapped:boolean?,TextXAlignment:Enum.
TextXAlignment?,TextYAlignment:Enum.TextYAlignment?,SetTextFromInput:((self:
TextButton__DARKLUA_TYPE_l,text:string)->())?}type ValueState__DARKLUA_TYPE_m={
Value:any,Connect:(...any)->any}type Theme__DARKLUA_TYPE_n={[any]:any}type
BaseComponent__DARKLUA_TYPE_o={Type:string,Theme:Theme__DARKLUA_TYPE_n,
Structures:{[string]:Instance__DARKLUA_TYPE_b|{any}}}type
AppProperties__DARKLUA_TYPE_p=ScreenGui__DARKLUA_TYPE_f&{WindowPill:boolean?,
Theme:Theme__DARKLUA_TYPE_n?}type App__DARKLUA_TYPE_q=
AppProperties__DARKLUA_TYPE_p&Components__DARKLUA_TYPE_4 type
WindowProperties__DARKLUA_TYPE_r=Frame__DARKLUA_TYPE_g&{Searching:boolean?,
Draggable:boolean?,Resizable:boolean?,Title:string?,Subtitle:string?,Maximized:
boolean?,Minimized:boolean?,Dropshadow:boolean?,UIBlur:boolean?}type
Window__DARKLUA_TYPE_s=BaseComponent__DARKLUA_TYPE_o&Components__DARKLUA_TYPE_4&
WindowProperties__DARKLUA_TYPE_r type SectionProperties__DARKLUA_TYPE_t=
Frame__DARKLUA_TYPE_g&{Title:string?,Disclosure:boolean?,Expanded:boolean?}type
Section__DARKLUA_TYPE_u=BaseComponent__DARKLUA_TYPE_o&Components__DARKLUA_TYPE_4
&SectionProperties__DARKLUA_TYPE_t type TabProperties__DARKLUA_TYPE_v=
Frame__DARKLUA_TYPE_g&{Title:string?,Icon:string?,Indentation:number?,Selected:
boolean?}type Tab__DARKLUA_TYPE_w=BaseComponent__DARKLUA_TYPE_o&
Components__DARKLUA_TYPE_4&TabProperties__DARKLUA_TYPE_v type
FormProperties__DARKLUA_TYPE_x=Frame__DARKLUA_TYPE_g type Form__DARKLUA_TYPE_y=
BaseComponent__DARKLUA_TYPE_o&Components__DARKLUA_TYPE_4&
FormProperties__DARKLUA_TYPE_x type RowProperties__DARKLUA_TYPE_z=
Frame__DARKLUA_TYPE_g&{SearchIndex:string?}type Row__DARKLUA_TYPE_A=
BaseComponent__DARKLUA_TYPE_o&Components__DARKLUA_TYPE_4&
RowProperties__DARKLUA_TYPE_z&{Left:(self:Row__DARKLUA_TYPE_A)->
Row__DARKLUA_TYPE_A,Right:(self:Row__DARKLUA_TYPE_A)->Row__DARKLUA_TYPE_A}type
StackProperties__DARKLUA_TYPE_B=Frame__DARKLUA_TYPE_g&{Padding:UDim?,
HorizontalAlignment:Enum.HorizontalAlignment?,VerticalAlignment:Enum.
VerticalAlignment?}type Stack__DARKLUA_TYPE_C=BaseComponent__DARKLUA_TYPE_o&
Components__DARKLUA_TYPE_4&StackProperties__DARKLUA_TYPE_B type
TitleStackProperties__DARKLUA_TYPE_D=Frame__DARKLUA_TYPE_g&{Title:string?,
Subtitle:string?}type TitleStack__DARKLUA_TYPE_E=BaseComponent__DARKLUA_TYPE_o&
Components__DARKLUA_TYPE_4&TitleStackProperties__DARKLUA_TYPE_D type
PageSectionProperties__DARKLUA_TYPE_F=Frame__DARKLUA_TYPE_g&{Title:string?,
Subtitle:string?}type PageSection__DARKLUA_TYPE_G=BaseComponent__DARKLUA_TYPE_o&
Components__DARKLUA_TYPE_4&PageSectionProperties__DARKLUA_TYPE_F type
LabelProperties__DARKLUA_TYPE_H=TextLabel__DARKLUA_TYPE_h type
Label__DARKLUA_TYPE_I=BaseComponent__DARKLUA_TYPE_o&Components__DARKLUA_TYPE_4&
LabelProperties__DARKLUA_TYPE_H type SymbolProperties__DARKLUA_TYPE_J=
ImageLabel__DARKLUA_TYPE_j&{Style:('Primary'|'Secondary')?}type
Symbol__DARKLUA_TYPE_K=BaseComponent__DARKLUA_TYPE_o&Components__DARKLUA_TYPE_4&
SymbolProperties__DARKLUA_TYPE_J type ToggleProperties__DARKLUA_TYPE_L=
Frame__DARKLUA_TYPE_g&{Value:boolean?,ValueChanged:((self:Toggle__DARKLUA_TYPE_M
,value:boolean)->unknown)?}type Toggle__DARKLUA_TYPE_M=
BaseComponent__DARKLUA_TYPE_o&Components__DARKLUA_TYPE_4&
ToggleProperties__DARKLUA_TYPE_L type TextFieldProperties__DARKLUA_TYPE_N=
Frame__DARKLUA_TYPE_g&{Placeholder:string?,Value:string?,TextChanged:((self:
TextField__DARKLUA_TYPE_O,text:string)->unknown)?,ValueChanged:((self:
TextField__DARKLUA_TYPE_O,value:string)->unknown)?}type
TextField__DARKLUA_TYPE_O=BaseComponent__DARKLUA_TYPE_o&
Components__DARKLUA_TYPE_4&TextFieldProperties__DARKLUA_TYPE_N type
KeybindFieldProperties__DARKLUA_TYPE_P=Frame__DARKLUA_TYPE_g&{Placeholder:string
?,Value:Enum.KeyCode?,BindPressed:((self:KeybindField__DARKLUA_TYPE_Q,value:Enum
.KeyCode,inputComplete:boolean,gameProcessedEvent:boolean)->unknown)?,
ValueChanged:((self:KeybindField__DARKLUA_TYPE_Q,value:Enum.KeyCode)->unknown)?}
type KeybindField__DARKLUA_TYPE_Q=BaseComponent__DARKLUA_TYPE_o&
Components__DARKLUA_TYPE_4&KeybindFieldProperties__DARKLUA_TYPE_P type
SliderProperties__DARKLUA_TYPE_R=ImageLabel__DARKLUA_TYPE_j&{Minimum:number?,
Maximum:number?,Value:number?,ValueChanged:((self:Slider__DARKLUA_TYPE_S,value:
number)->unknown)?}type Slider__DARKLUA_TYPE_S=BaseComponent__DARKLUA_TYPE_o&
Components__DARKLUA_TYPE_4&SliderProperties__DARKLUA_TYPE_R type
ButtonProperties__DARKLUA_TYPE_T=TextButton__DARKLUA_TYPE_l&{State:('Primary'|
'Secondary'|'Destructive')?,Label:string?,Pushed:((self:Button__DARKLUA_TYPE_U
)->unknown)?}type Button__DARKLUA_TYPE_U=BaseComponent__DARKLUA_TYPE_o&
Components__DARKLUA_TYPE_4&ButtonProperties__DARKLUA_TYPE_T type
StepperProperties__DARKLUA_TYPE_V=ImageLabel__DARKLUA_TYPE_j&{Minimum:number?,
Maximum:number?,Step:number?,Fielded:boolean?,Value:number?,ValueChanged:((self:
Stepper__DARKLUA_TYPE_W,value:number)->unknown)?}type Stepper__DARKLUA_TYPE_W=
BaseComponent__DARKLUA_TYPE_o&Components__DARKLUA_TYPE_4&
StepperProperties__DARKLUA_TYPE_V&{Increment:()->nil,Decrement:()->nil}type
RadioButtonGroupProperties__DARKLUA_TYPE_X=Frame__DARKLUA_TYPE_g&{Options:{[
number]:string}?,Value:number?,ValueChanged:((self:
RadioButtonGroup__DARKLUA_TYPE_Y,value:number)->unknown)?}type
RadioButtonGroup__DARKLUA_TYPE_Y=BaseComponent__DARKLUA_TYPE_o&
Components__DARKLUA_TYPE_4&RadioButtonGroupProperties__DARKLUA_TYPE_X&{Option:(
Name:string?)->Frame__DARKLUA_TYPE_g}type PopUpButtonProperties__DARKLUA_TYPE_Z=
Frame__DARKLUA_TYPE_g&{Options:{[number]:string}?,Expanded:boolean?,Maximum:
number?,Value:(number|{number})?,ValueChanged:((self:PopUpButton__DARKLUA_TYPE__
,value:number|{number})->unknown)?}type PopUpButton__DARKLUA_TYPE__=
BaseComponent__DARKLUA_TYPE_o&Components__DARKLUA_TYPE_4&
PopUpButtonProperties__DARKLUA_TYPE_Z&{Option:(Name:string?)->
Frame__DARKLUA_TYPE_g,Remove:(Index:number?)->nil}type
PullDownButtonProperties__DARKLUA_TYPE_0=Frame__DARKLUA_TYPE_g&{Options:{[number
]:string}?,Expanded:boolean?,Label:string?,Value:number?,ValueChanged:((self:
PullDownButton__DARKLUA_TYPE_1,value:number)->unknown)?}type
PullDownButton__DARKLUA_TYPE_1=BaseComponent__DARKLUA_TYPE_o&
Components__DARKLUA_TYPE_4&PullDownButtonProperties__DARKLUA_TYPE_0&{Option:(
Name:string?)->Frame__DARKLUA_TYPE_g,Remove:(Index:number?)->nil}type
NotificationProperties__DARKLUA_TYPE_2=Frame__DARKLUA_TYPE_g&{Title:string?,Body
:string?,Footer:string?,Icon:string?,Duration:number?,Position:('TopLeft'|
'TopRight'|'BottomLeft'|'BottomRight')?}type Notification__DARKLUA_TYPE_3=
BaseComponent__DARKLUA_TYPE_o&Components__DARKLUA_TYPE_4&
NotificationProperties__DARKLUA_TYPE_2&{Dismiss:(tween:boolean?)->nil,Show:()->
nil}type Components__DARKLUA_TYPE_4={Window:(self:any,properties:
WindowProperties__DARKLUA_TYPE_r?)->Window__DARKLUA_TYPE_s,Section:(self:any,
properties:SectionProperties__DARKLUA_TYPE_t?)->Section__DARKLUA_TYPE_u,Tab:(
self:any,properties:TabProperties__DARKLUA_TYPE_v?)->Tab__DARKLUA_TYPE_w,Form:(
self:any,properties:FormProperties__DARKLUA_TYPE_x?)->Form__DARKLUA_TYPE_y,Row:(
self:any,properties:RowProperties__DARKLUA_TYPE_z?)->Row__DARKLUA_TYPE_A,VStack:
(self:any,properties:StackProperties__DARKLUA_TYPE_B?)->Stack__DARKLUA_TYPE_C,
HStack:(self:any,properties:StackProperties__DARKLUA_TYPE_B?)->
Stack__DARKLUA_TYPE_C,TitleStack:(self:any,properties:
TitleStackProperties__DARKLUA_TYPE_D?)->TitleStack__DARKLUA_TYPE_E,PageSection:(
self:any,properties:PageSectionProperties__DARKLUA_TYPE_F?)->
PageSection__DARKLUA_TYPE_G,Label:(self:any,properties:
LabelProperties__DARKLUA_TYPE_H)->Label__DARKLUA_TYPE_I,Symbol:(self:any,
properties:SymbolProperties__DARKLUA_TYPE_J)->Symbol__DARKLUA_TYPE_K,Toggle:(
self:any,properties:ToggleProperties__DARKLUA_TYPE_L)->Toggle__DARKLUA_TYPE_M,
TextField:(self:any,properties:TextFieldProperties__DARKLUA_TYPE_N)->
TextField__DARKLUA_TYPE_O,KeybindField:(self:any,properties:
KeybindFieldProperties__DARKLUA_TYPE_P)->KeybindField__DARKLUA_TYPE_Q,Slider:(
self:any,properties:SliderProperties__DARKLUA_TYPE_R)->Slider__DARKLUA_TYPE_S,
Button:(self:any,properties:ButtonProperties__DARKLUA_TYPE_T)->
Button__DARKLUA_TYPE_U,Stepper:(self:any,properties:
StepperProperties__DARKLUA_TYPE_V)->Stepper__DARKLUA_TYPE_W,RadioButtonGroup:(
self:any,properties:RadioButtonGroupProperties__DARKLUA_TYPE_X)->
RadioButtonGroup__DARKLUA_TYPE_Y,PopUpButton:(self:any,properties:
PopUpButtonProperties__DARKLUA_TYPE_Z)->PopUpButton__DARKLUA_TYPE__,
PullDownButton:(self:any,properties:PullDownButtonProperties__DARKLUA_TYPE_0)->
PullDownButton__DARKLUA_TYPE_1,Notification:(self:any,properties:
NotificationProperties__DARKLUA_TYPE_2)->Notification__DARKLUA_TYPE_3}local a={
cache={}::any}do do local b=function()local b={}b.Clone=function(c:any)local d:
any if type(c)=='function'then d=clonefunction and clonefunction(c)elseif
typeof(c)=='Instance'then d=cloneref and cloneref(c)end return d or c end b.
ProtectUI=function(c:Instance):ScreenGui|string local d,e=pcall(function()return
gethui()end)local f,g=pcall(function()local f=b.Clone(game:GetService'CoreGui')
if f and f.ClassName then return f end return end)local h,i=pcall(function()c.
Parent=d and e or f and g or b.Clone(game:GetService'Players').LocalPlayer.
PlayerGui end)return h and c or i end return b end function a.a():typeof(b())
local c=a.cache.a if not c then c={c=b()}a.cache.a=c end return c.c end end do
local b=function()local b=a.a()local c=function(c:string)return b.Clone(game:
GetService(c))end return{HttpService=c'HttpService'::HttpService,TweenService=c
'TweenService'::TweenService,RunService=c'RunService'::RunService,
UserInputService=c'UserInputService'::UserInputService,GuiService=c'GuiService'
::GuiService,Workspace=c'Workspace'::Workspace,Players=c'Players'::Players,
Lighting=c'Lighting'::Lighting}end function a.b():typeof(b())local c=a.cache.b
if not c then c={c=b()}a.cache.b=c end return c.c end end do local b=function()
return 1 end function a.c():typeof(b())local c=a.cache.c if not c then c={c=b()}
a.cache.c=c end return c.c end end do local b=function()local b={}function b.
Apply(c:{[string]:any},d:any,e:{[number]:string}?):any for f,g in pairs(c)do if
e and table.find(e,f)then continue end pcall(function()d[f]=g end)end return d
end function b.ReactiveTable(c,d)local e,f=table.clone(c or{}),{}local g={
__index=function(g,h)return e[h]end,__newindex=function(g,h,i)e[h]=i if d then
d(e)end end,__len=function()return#e end,__pairs=function()return pairs(e)end,
__ipairs=function()return ipairs(e)end,__metatable=false}return setmetatable(f,g
)end function b.Wrap(c:{[string]:any},d:{[string]:(any)->()},e:Instance?,f:{[
number]:any}?):any local g={}setmetatable(g,{__index=function(h,i)if c[i]~=nil
then return c[i]elseif e then local j,k=pcall(function()return e[i]end)if j then
return k end end return end,__newindex=function(h,i,j)local k=d[i]if k then k(j)
if not(f and table.find(f,i))then c[i]=j end elseif e then local l=pcall(
function()e[i]=j end)if not l then c[i]=j end else c[i]=j end end})return g end
return b end function a.d():typeof(b())local c=a.cache.d if not c then c={c=b()}
a.cache.d=c end return c.c end end do local b=function()local b,c,d=a.c(),a.d(),
{}function d.Value(e:any):ValueState__DARKLUA_TYPE_m local f={}return c.Wrap({
Value=e,Connect=function(g,h)table.insert(f,h)return h end},{Value=function(g)
for h,i in pairs(f)do pcall(i,g)end end})end function d.Create(e:string)return
function(f)f=f or{}local g=Instance.new(e)for h,i in pairs(f)do if h==
'__dynamicKeys'and type(i)=='table'then for j,k:ValueState__DARKLUA_TYPE_m in
pairs(i)do pcall(function()g[j]=k.Value end)k:Connect(function(l)task.defer(
pcall,function()if f.__contextKeys and f.__contextKeys._general then f.
__contextKeys._general()end g[j]=f.__contextKeys and f.__contextKeys[j]and f.
__contextKeys[j]()or l end)end)end continue end if typeof(i)=='table'and i.
__unique then i.Parent=g end pcall(function()g[h]=i end)end return setmetatable(
{__unique=true},{__metatable=g,__index=function(h,i)if i=='__instance'then
return g end local j=g[i]if typeof(j)=='function'then return function(k,...)
return j(g,...)end else return j end end,__newindex=function(h,i,j)g[i]=j end})
end end return d end function a.e():typeof(b())local c=a.cache.e if not c then c
={c=b()}a.cache.e=c end return c.c end end do local b=function()local b,c=a.b(),
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
.cache.f if not c then c={c=b()}a.cache.f=c end return c.c end end end return{
UIBlur=a.f()}