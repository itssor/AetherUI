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
NotificationProperties__DARKLUA_TYPE_1)->Notification__DARKLUA_TYPE_2}local a={
cache={}::any}do do local b=function()return 1 end function a.a():typeof(b())
local c=a.cache.a if not c then c={c=b()}a.cache.a=c end return c.c end end do
local b=function()local b={}function b.Apply(c:{[string]:any},d:any,e:{[number]:
string}?):any for f,g in pairs(c)do if e and table.find(e,f)then continue end
pcall(function()d[f]=g end)end return d end function b.ReactiveTable(c,d)local e
,f=table.clone(c or{}),{}local g={__index=function(g,h)return e[h]end,__newindex
=function(g,h,i)e[h]=i if d then d(e)end end,__len=function()return#e end,
__pairs=function()return pairs(e)end,__ipairs=function()return ipairs(e)end,
__metatable=false}return setmetatable(f,g)end function b.Wrap(c:{[string]:any},d
:{[string]:(any)->()},e:Instance?,f:{[number]:any}?):any local g={}setmetatable(
g,{__index=function(h,i)if c[i]~=nil then return c[i]elseif e then local j,k=
pcall(function()return e[i]end)if j then return k end end return end,__newindex=
function(h,i,j)local k=d[i]if k then k(j)if not(f and table.find(f,i))then c[i]=
j end elseif e then local l=pcall(function()e[i]=j end)if not l then c[i]=j end
else c[i]=j end end})return g end return b end function a.b():typeof(b())local c
=a.cache.b if not c then c={c=b()}a.cache.b=c end return c.c end end end local b
,c,d=a.a(),a.b(),{}function d.Value(e:any):ValueState__DARKLUA_TYPE_l local f={}
return c.Wrap({Value=e,Connect=function(g,h)table.insert(f,h)return h end},{
Value=function(g)for h,i in pairs(f)do pcall(i,g)end end})end function d.Create(
e:string)return function(f)f=f or{}local g=Instance.new(e)for h,i in pairs(f)do
if h=='__dynamicKeys'and type(i)=='table'then for j,k:ValueState__DARKLUA_TYPE_l
in pairs(i)do pcall(function()g[j]=k.Value end)k:Connect(function(l)task.defer(
pcall,function()if f.__contextKeys and f.__contextKeys._general then f.
__contextKeys._general()end g[j]=f.__contextKeys and f.__contextKeys[j]and f.
__contextKeys[j]()or l end)end)end continue end if typeof(i)=='table'and i.
__unique then i.Parent=g end pcall(function()g[h]=i end)end return setmetatable(
{__unique=true},{__metatable=g,__index=function(h,i)if i=='__instance'then
return g end local j=g[i]if typeof(j)=='function'then return function(k,...)
return j(g,...)end else return j end end,__newindex=function(h,i,j)g[i]=j end})
end end return d