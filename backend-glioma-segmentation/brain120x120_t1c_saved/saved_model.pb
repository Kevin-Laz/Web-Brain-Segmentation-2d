░Ї
дЇ
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( И
А
BiasAdd

value"T	
bias"T
output"T""
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
Ы
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

└
Conv2DBackpropInput
input_sizes
filter"T
out_backprop"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

$
DisableCopyOnRead
resourceИ
.
Identity

input"T
output"T"	
Ttype
В
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
Ж
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( И

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetypeИ
E
Relu
features"T
activations"T"
Ttype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
?
Select
	condition

t"T
e"T
output"T"	
Ttype
d
Shape

input"T&
output"out_typeКэout_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
┴
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring Ии
@
StaticRegexFullMatch	
input

output
"
patternstring
ў
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
L

StringJoin
inputs*N

output"

Nint("
	separatorstring 
░
VarHandleOp
resource"
	containerstring "
shared_namestring "

debug_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И"serve*2.15.02v2.15.0-rc1-8-g6887368d6d48ё°
Х
conv2d_10/biasVarHandleOp*
_output_shapes
: *

debug_nameconv2d_10/bias/*
dtype0*
shape:*
shared_nameconv2d_10/bias
m
"conv2d_10/bias/Read/ReadVariableOpReadVariableOpconv2d_10/bias*
_output_shapes
:*
dtype0
з
conv2d_10/kernelVarHandleOp*
_output_shapes
: *!

debug_nameconv2d_10/kernel/*
dtype0*
shape:*!
shared_nameconv2d_10/kernel
}
$conv2d_10/kernel/Read/ReadVariableOpReadVariableOpconv2d_10/kernel*&
_output_shapes
:*
dtype0
Т
conv2d_9/biasVarHandleOp*
_output_shapes
: *

debug_nameconv2d_9/bias/*
dtype0*
shape:*
shared_nameconv2d_9/bias
k
!conv2d_9/bias/Read/ReadVariableOpReadVariableOpconv2d_9/bias*
_output_shapes
:*
dtype0
д
conv2d_9/kernelVarHandleOp*
_output_shapes
: * 

debug_nameconv2d_9/kernel/*
dtype0*
shape:* 
shared_nameconv2d_9/kernel
{
#conv2d_9/kernel/Read/ReadVariableOpReadVariableOpconv2d_9/kernel*&
_output_shapes
:*
dtype0
Т
conv2d_8/biasVarHandleOp*
_output_shapes
: *

debug_nameconv2d_8/bias/*
dtype0*
shape:*
shared_nameconv2d_8/bias
k
!conv2d_8/bias/Read/ReadVariableOpReadVariableOpconv2d_8/bias*
_output_shapes
:*
dtype0
д
conv2d_8/kernelVarHandleOp*
_output_shapes
: * 

debug_nameconv2d_8/kernel/*
dtype0*
shape: * 
shared_nameconv2d_8/kernel
{
#conv2d_8/kernel/Read/ReadVariableOpReadVariableOpconv2d_8/kernel*&
_output_shapes
: *
dtype0
░
conv2d_transpose_1/biasVarHandleOp*
_output_shapes
: *(

debug_nameconv2d_transpose_1/bias/*
dtype0*
shape:*(
shared_nameconv2d_transpose_1/bias

+conv2d_transpose_1/bias/Read/ReadVariableOpReadVariableOpconv2d_transpose_1/bias*
_output_shapes
:*
dtype0
┬
conv2d_transpose_1/kernelVarHandleOp*
_output_shapes
: **

debug_nameconv2d_transpose_1/kernel/*
dtype0*
shape: **
shared_nameconv2d_transpose_1/kernel
П
-conv2d_transpose_1/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_1/kernel*&
_output_shapes
: *
dtype0
Т
conv2d_7/biasVarHandleOp*
_output_shapes
: *

debug_nameconv2d_7/bias/*
dtype0*
shape: *
shared_nameconv2d_7/bias
k
!conv2d_7/bias/Read/ReadVariableOpReadVariableOpconv2d_7/bias*
_output_shapes
: *
dtype0
д
conv2d_7/kernelVarHandleOp*
_output_shapes
: * 

debug_nameconv2d_7/kernel/*
dtype0*
shape:  * 
shared_nameconv2d_7/kernel
{
#conv2d_7/kernel/Read/ReadVariableOpReadVariableOpconv2d_7/kernel*&
_output_shapes
:  *
dtype0
Т
conv2d_6/biasVarHandleOp*
_output_shapes
: *

debug_nameconv2d_6/bias/*
dtype0*
shape: *
shared_nameconv2d_6/bias
k
!conv2d_6/bias/Read/ReadVariableOpReadVariableOpconv2d_6/bias*
_output_shapes
: *
dtype0
д
conv2d_6/kernelVarHandleOp*
_output_shapes
: * 

debug_nameconv2d_6/kernel/*
dtype0*
shape:@ * 
shared_nameconv2d_6/kernel
{
#conv2d_6/kernel/Read/ReadVariableOpReadVariableOpconv2d_6/kernel*&
_output_shapes
:@ *
dtype0
к
conv2d_transpose/biasVarHandleOp*
_output_shapes
: *&

debug_nameconv2d_transpose/bias/*
dtype0*
shape: *&
shared_nameconv2d_transpose/bias
{
)conv2d_transpose/bias/Read/ReadVariableOpReadVariableOpconv2d_transpose/bias*
_output_shapes
: *
dtype0
╝
conv2d_transpose/kernelVarHandleOp*
_output_shapes
: *(

debug_nameconv2d_transpose/kernel/*
dtype0*
shape: @*(
shared_nameconv2d_transpose/kernel
Л
+conv2d_transpose/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose/kernel*&
_output_shapes
: @*
dtype0
Т
conv2d_5/biasVarHandleOp*
_output_shapes
: *

debug_nameconv2d_5/bias/*
dtype0*
shape:@*
shared_nameconv2d_5/bias
k
!conv2d_5/bias/Read/ReadVariableOpReadVariableOpconv2d_5/bias*
_output_shapes
:@*
dtype0
д
conv2d_5/kernelVarHandleOp*
_output_shapes
: * 

debug_nameconv2d_5/kernel/*
dtype0*
shape:@@* 
shared_nameconv2d_5/kernel
{
#conv2d_5/kernel/Read/ReadVariableOpReadVariableOpconv2d_5/kernel*&
_output_shapes
:@@*
dtype0
Т
conv2d_4/biasVarHandleOp*
_output_shapes
: *

debug_nameconv2d_4/bias/*
dtype0*
shape:@*
shared_nameconv2d_4/bias
k
!conv2d_4/bias/Read/ReadVariableOpReadVariableOpconv2d_4/bias*
_output_shapes
:@*
dtype0
д
conv2d_4/kernelVarHandleOp*
_output_shapes
: * 

debug_nameconv2d_4/kernel/*
dtype0*
shape: @* 
shared_nameconv2d_4/kernel
{
#conv2d_4/kernel/Read/ReadVariableOpReadVariableOpconv2d_4/kernel*&
_output_shapes
: @*
dtype0
Т
conv2d_3/biasVarHandleOp*
_output_shapes
: *

debug_nameconv2d_3/bias/*
dtype0*
shape: *
shared_nameconv2d_3/bias
k
!conv2d_3/bias/Read/ReadVariableOpReadVariableOpconv2d_3/bias*
_output_shapes
: *
dtype0
д
conv2d_3/kernelVarHandleOp*
_output_shapes
: * 

debug_nameconv2d_3/kernel/*
dtype0*
shape:  * 
shared_nameconv2d_3/kernel
{
#conv2d_3/kernel/Read/ReadVariableOpReadVariableOpconv2d_3/kernel*&
_output_shapes
:  *
dtype0
Т
conv2d_2/biasVarHandleOp*
_output_shapes
: *

debug_nameconv2d_2/bias/*
dtype0*
shape: *
shared_nameconv2d_2/bias
k
!conv2d_2/bias/Read/ReadVariableOpReadVariableOpconv2d_2/bias*
_output_shapes
: *
dtype0
д
conv2d_2/kernelVarHandleOp*
_output_shapes
: * 

debug_nameconv2d_2/kernel/*
dtype0*
shape: * 
shared_nameconv2d_2/kernel
{
#conv2d_2/kernel/Read/ReadVariableOpReadVariableOpconv2d_2/kernel*&
_output_shapes
: *
dtype0
Т
conv2d_1/biasVarHandleOp*
_output_shapes
: *

debug_nameconv2d_1/bias/*
dtype0*
shape:*
shared_nameconv2d_1/bias
k
!conv2d_1/bias/Read/ReadVariableOpReadVariableOpconv2d_1/bias*
_output_shapes
:*
dtype0
д
conv2d_1/kernelVarHandleOp*
_output_shapes
: * 

debug_nameconv2d_1/kernel/*
dtype0*
shape:* 
shared_nameconv2d_1/kernel
{
#conv2d_1/kernel/Read/ReadVariableOpReadVariableOpconv2d_1/kernel*&
_output_shapes
:*
dtype0
М
conv2d/biasVarHandleOp*
_output_shapes
: *

debug_nameconv2d/bias/*
dtype0*
shape:*
shared_nameconv2d/bias
g
conv2d/bias/Read/ReadVariableOpReadVariableOpconv2d/bias*
_output_shapes
:*
dtype0
Ю
conv2d/kernelVarHandleOp*
_output_shapes
: *

debug_nameconv2d/kernel/*
dtype0*
shape:*
shared_nameconv2d/kernel
w
!conv2d/kernel/Read/ReadVariableOpReadVariableOpconv2d/kernel*&
_output_shapes
:*
dtype0
К
serving_default_input_1Placeholder*/
_output_shapes
:         xx*
dtype0*$
shape:         xx
▒
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1conv2d/kernelconv2d/biasconv2d_1/kernelconv2d_1/biasconv2d_2/kernelconv2d_2/biasconv2d_3/kernelconv2d_3/biasconv2d_4/kernelconv2d_4/biasconv2d_5/kernelconv2d_5/biasconv2d_transpose/kernelconv2d_transpose/biasconv2d_6/kernelconv2d_6/biasconv2d_7/kernelconv2d_7/biasconv2d_transpose_1/kernelconv2d_transpose_1/biasconv2d_8/kernelconv2d_8/biasconv2d_9/kernelconv2d_9/biasconv2d_10/kernelconv2d_10/bias*&
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         xx*<
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *+
f&R$
"__inference_signature_wrapper_1324

NoOpNoOp
▒o
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*ьn
valueтnB▀n B╪n
Д
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer-6
layer_with_weights-4
layer-7
	layer_with_weights-5
	layer-8

layer_with_weights-6

layer-9
layer-10
layer_with_weights-7
layer-11
layer_with_weights-8
layer-12
layer_with_weights-9
layer-13
layer-14
layer_with_weights-10
layer-15
layer_with_weights-11
layer-16
layer_with_weights-12
layer-17
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures*
* 
╚
	variables
trainable_variables
regularization_losses
	keras_api
__call__
* &call_and_return_all_conditional_losses

!kernel
"bias
 #_jit_compiled_convolution_op*
╚
$	variables
%trainable_variables
&regularization_losses
'	keras_api
(__call__
*)&call_and_return_all_conditional_losses

*kernel
+bias
 ,_jit_compiled_convolution_op*
О
-	variables
.trainable_variables
/regularization_losses
0	keras_api
1__call__
*2&call_and_return_all_conditional_losses* 
╚
3	variables
4trainable_variables
5regularization_losses
6	keras_api
7__call__
*8&call_and_return_all_conditional_losses

9kernel
:bias
 ;_jit_compiled_convolution_op*
╚
<	variables
=trainable_variables
>regularization_losses
?	keras_api
@__call__
*A&call_and_return_all_conditional_losses

Bkernel
Cbias
 D_jit_compiled_convolution_op*
О
E	variables
Ftrainable_variables
Gregularization_losses
H	keras_api
I__call__
*J&call_and_return_all_conditional_losses* 
╚
K	variables
Ltrainable_variables
Mregularization_losses
N	keras_api
O__call__
*P&call_and_return_all_conditional_losses

Qkernel
Rbias
 S_jit_compiled_convolution_op*
╚
T	variables
Utrainable_variables
Vregularization_losses
W	keras_api
X__call__
*Y&call_and_return_all_conditional_losses

Zkernel
[bias
 \_jit_compiled_convolution_op*
╚
]	variables
^trainable_variables
_regularization_losses
`	keras_api
a__call__
*b&call_and_return_all_conditional_losses

ckernel
dbias
 e_jit_compiled_convolution_op*
О
f	variables
gtrainable_variables
hregularization_losses
i	keras_api
j__call__
*k&call_and_return_all_conditional_losses* 
╚
l	variables
mtrainable_variables
nregularization_losses
o	keras_api
p__call__
*q&call_and_return_all_conditional_losses

rkernel
sbias
 t_jit_compiled_convolution_op*
╚
u	variables
vtrainable_variables
wregularization_losses
x	keras_api
y__call__
*z&call_and_return_all_conditional_losses

{kernel
|bias
 }_jit_compiled_convolution_op*
╧
~	variables
trainable_variables
Аregularization_losses
Б	keras_api
В__call__
+Г&call_and_return_all_conditional_losses
Дkernel
	Еbias
!Ж_jit_compiled_convolution_op*
Ф
З	variables
Иtrainable_variables
Йregularization_losses
К	keras_api
Л__call__
+М&call_and_return_all_conditional_losses* 
╤
Н	variables
Оtrainable_variables
Пregularization_losses
Р	keras_api
С__call__
+Т&call_and_return_all_conditional_losses
Уkernel
	Фbias
!Х_jit_compiled_convolution_op*
╤
Ц	variables
Чtrainable_variables
Шregularization_losses
Щ	keras_api
Ъ__call__
+Ы&call_and_return_all_conditional_losses
Ьkernel
	Эbias
!Ю_jit_compiled_convolution_op*
╤
Я	variables
аtrainable_variables
бregularization_losses
в	keras_api
г__call__
+д&call_and_return_all_conditional_losses
еkernel
	жbias
!з_jit_compiled_convolution_op*
╥
!0
"1
*2
+3
94
:5
B6
C7
Q8
R9
Z10
[11
c12
d13
r14
s15
{16
|17
Д18
Е19
У20
Ф21
Ь22
Э23
е24
ж25*
╥
!0
"1
*2
+3
94
:5
B6
C7
Q8
R9
Z10
[11
c12
d13
r14
s15
{16
|17
Д18
Е19
У20
Ф21
Ь22
Э23
е24
ж25*
* 
╡
иnon_trainable_variables
йlayers
кmetrics
 лlayer_regularization_losses
мlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

нtrace_0
оtrace_1* 

пtrace_0
░trace_1* 
* 

▒serving_default* 

!0
"1*

!0
"1*
* 
Ш
▓non_trainable_variables
│layers
┤metrics
 ╡layer_regularization_losses
╢layer_metrics
	variables
trainable_variables
regularization_losses
__call__
* &call_and_return_all_conditional_losses
& "call_and_return_conditional_losses*

╖trace_0* 

╕trace_0* 
]W
VARIABLE_VALUEconv2d/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEconv2d/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

*0
+1*

*0
+1*
* 
Ш
╣non_trainable_variables
║layers
╗metrics
 ╝layer_regularization_losses
╜layer_metrics
$	variables
%trainable_variables
&regularization_losses
(__call__
*)&call_and_return_all_conditional_losses
&)"call_and_return_conditional_losses*

╛trace_0* 

┐trace_0* 
_Y
VARIABLE_VALUEconv2d_1/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_1/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
Ц
└non_trainable_variables
┴layers
┬metrics
 ├layer_regularization_losses
─layer_metrics
-	variables
.trainable_variables
/regularization_losses
1__call__
*2&call_and_return_all_conditional_losses
&2"call_and_return_conditional_losses* 

┼trace_0* 

╞trace_0* 

90
:1*

90
:1*
* 
Ш
╟non_trainable_variables
╚layers
╔metrics
 ╩layer_regularization_losses
╦layer_metrics
3	variables
4trainable_variables
5regularization_losses
7__call__
*8&call_and_return_all_conditional_losses
&8"call_and_return_conditional_losses*

╠trace_0* 

═trace_0* 
_Y
VARIABLE_VALUEconv2d_2/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_2/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

B0
C1*

B0
C1*
* 
Ш
╬non_trainable_variables
╧layers
╨metrics
 ╤layer_regularization_losses
╥layer_metrics
<	variables
=trainable_variables
>regularization_losses
@__call__
*A&call_and_return_all_conditional_losses
&A"call_and_return_conditional_losses*

╙trace_0* 

╘trace_0* 
_Y
VARIABLE_VALUEconv2d_3/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_3/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
Ц
╒non_trainable_variables
╓layers
╫metrics
 ╪layer_regularization_losses
┘layer_metrics
E	variables
Ftrainable_variables
Gregularization_losses
I__call__
*J&call_and_return_all_conditional_losses
&J"call_and_return_conditional_losses* 

┌trace_0* 

█trace_0* 

Q0
R1*

Q0
R1*
* 
Ш
▄non_trainable_variables
▌layers
▐metrics
 ▀layer_regularization_losses
рlayer_metrics
K	variables
Ltrainable_variables
Mregularization_losses
O__call__
*P&call_and_return_all_conditional_losses
&P"call_and_return_conditional_losses*

сtrace_0* 

тtrace_0* 
_Y
VARIABLE_VALUEconv2d_4/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_4/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

Z0
[1*

Z0
[1*
* 
Ш
уnon_trainable_variables
фlayers
хmetrics
 цlayer_regularization_losses
чlayer_metrics
T	variables
Utrainable_variables
Vregularization_losses
X__call__
*Y&call_and_return_all_conditional_losses
&Y"call_and_return_conditional_losses*

шtrace_0* 

щtrace_0* 
_Y
VARIABLE_VALUEconv2d_5/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_5/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

c0
d1*

c0
d1*
* 
Ш
ъnon_trainable_variables
ыlayers
ьmetrics
 эlayer_regularization_losses
юlayer_metrics
]	variables
^trainable_variables
_regularization_losses
a__call__
*b&call_and_return_all_conditional_losses
&b"call_and_return_conditional_losses*

яtrace_0* 

Ёtrace_0* 
ga
VARIABLE_VALUEconv2d_transpose/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEconv2d_transpose/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
Ц
ёnon_trainable_variables
Єlayers
єmetrics
 Їlayer_regularization_losses
їlayer_metrics
f	variables
gtrainable_variables
hregularization_losses
j__call__
*k&call_and_return_all_conditional_losses
&k"call_and_return_conditional_losses* 

Ўtrace_0* 

ўtrace_0* 

r0
s1*

r0
s1*
* 
Ш
°non_trainable_variables
∙layers
·metrics
 √layer_regularization_losses
№layer_metrics
l	variables
mtrainable_variables
nregularization_losses
p__call__
*q&call_and_return_all_conditional_losses
&q"call_and_return_conditional_losses*

¤trace_0* 

■trace_0* 
_Y
VARIABLE_VALUEconv2d_6/kernel6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_6/bias4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

{0
|1*

{0
|1*
* 
Ш
 non_trainable_variables
Аlayers
Бmetrics
 Вlayer_regularization_losses
Гlayer_metrics
u	variables
vtrainable_variables
wregularization_losses
y__call__
*z&call_and_return_all_conditional_losses
&z"call_and_return_conditional_losses*

Дtrace_0* 

Еtrace_0* 
_Y
VARIABLE_VALUEconv2d_7/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_7/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

Д0
Е1*

Д0
Е1*
* 
Ь
Жnon_trainable_variables
Зlayers
Иmetrics
 Йlayer_regularization_losses
Кlayer_metrics
~	variables
trainable_variables
Аregularization_losses
В__call__
+Г&call_and_return_all_conditional_losses
'Г"call_and_return_conditional_losses*

Лtrace_0* 

Мtrace_0* 
ic
VARIABLE_VALUEconv2d_transpose_1/kernel6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUEconv2d_transpose_1/bias4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
Ь
Нnon_trainable_variables
Оlayers
Пmetrics
 Рlayer_regularization_losses
Сlayer_metrics
З	variables
Иtrainable_variables
Йregularization_losses
Л__call__
+М&call_and_return_all_conditional_losses
'М"call_and_return_conditional_losses* 

Тtrace_0* 

Уtrace_0* 

У0
Ф1*

У0
Ф1*
* 
Ю
Фnon_trainable_variables
Хlayers
Цmetrics
 Чlayer_regularization_losses
Шlayer_metrics
Н	variables
Оtrainable_variables
Пregularization_losses
С__call__
+Т&call_and_return_all_conditional_losses
'Т"call_and_return_conditional_losses*

Щtrace_0* 

Ъtrace_0* 
`Z
VARIABLE_VALUEconv2d_8/kernel7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_8/bias5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

Ь0
Э1*

Ь0
Э1*
* 
Ю
Ыnon_trainable_variables
Ьlayers
Эmetrics
 Юlayer_regularization_losses
Яlayer_metrics
Ц	variables
Чtrainable_variables
Шregularization_losses
Ъ__call__
+Ы&call_and_return_all_conditional_losses
'Ы"call_and_return_conditional_losses*

аtrace_0* 

бtrace_0* 
`Z
VARIABLE_VALUEconv2d_9/kernel7layer_with_weights-11/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_9/bias5layer_with_weights-11/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

е0
ж1*

е0
ж1*
* 
Ю
вnon_trainable_variables
гlayers
дmetrics
 еlayer_regularization_losses
жlayer_metrics
Я	variables
аtrainable_variables
бregularization_losses
г__call__
+д&call_and_return_all_conditional_losses
'д"call_and_return_conditional_losses*

зtrace_0* 

иtrace_0* 
a[
VARIABLE_VALUEconv2d_10/kernel7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv2d_10/bias5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
К
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
°
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameconv2d/kernelconv2d/biasconv2d_1/kernelconv2d_1/biasconv2d_2/kernelconv2d_2/biasconv2d_3/kernelconv2d_3/biasconv2d_4/kernelconv2d_4/biasconv2d_5/kernelconv2d_5/biasconv2d_transpose/kernelconv2d_transpose/biasconv2d_6/kernelconv2d_6/biasconv2d_7/kernelconv2d_7/biasconv2d_transpose_1/kernelconv2d_transpose_1/biasconv2d_8/kernelconv2d_8/biasconv2d_9/kernelconv2d_9/biasconv2d_10/kernelconv2d_10/biasConst*'
Tin 
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *&
f!R
__inference__traced_save_1852
є
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d/kernelconv2d/biasconv2d_1/kernelconv2d_1/biasconv2d_2/kernelconv2d_2/biasconv2d_3/kernelconv2d_3/biasconv2d_4/kernelconv2d_4/biasconv2d_5/kernelconv2d_5/biasconv2d_transpose/kernelconv2d_transpose/biasconv2d_6/kernelconv2d_6/biasconv2d_7/kernelconv2d_7/biasconv2d_transpose_1/kernelconv2d_transpose_1/biasconv2d_8/kernelconv2d_8/biasconv2d_9/kernelconv2d_9/biasconv2d_10/kernelconv2d_10/bias*&
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *)
f$R"
 __inference__traced_restore_1939З╝

╞W
╙
E__inference_BrainMask120_layer_call_and_return_conditional_losses_968
input_1$

conv2d_774:

conv2d_776:&
conv2d_1_790:
conv2d_1_792:&
conv2d_2_807: 
conv2d_2_809: &
conv2d_3_823:  
conv2d_3_825: &
conv2d_4_840: @
conv2d_4_842:@&
conv2d_5_856:@@
conv2d_5_858:@.
conv2d_transpose_861: @"
conv2d_transpose_863: &
conv2d_6_885:@ 
conv2d_6_887: &
conv2d_7_901:  
conv2d_7_903: 0
conv2d_transpose_1_906: $
conv2d_transpose_1_908:&
conv2d_8_930: 
conv2d_8_932:&
conv2d_9_946:
conv2d_9_948:'
conv2d_10_962:
conv2d_10_964:
identityИвconv2d/StatefulPartitionedCallв conv2d_1/StatefulPartitionedCallв!conv2d_10/StatefulPartitionedCallв conv2d_2/StatefulPartitionedCallв conv2d_3/StatefulPartitionedCallв conv2d_4/StatefulPartitionedCallв conv2d_5/StatefulPartitionedCallв conv2d_6/StatefulPartitionedCallв conv2d_7/StatefulPartitionedCallв conv2d_8/StatefulPartitionedCallв conv2d_9/StatefulPartitionedCallв(conv2d_transpose/StatefulPartitionedCallв*conv2d_transpose_1/StatefulPartitionedCallы
conv2d/StatefulPartitionedCallStatefulPartitionedCallinput_1
conv2d_774
conv2d_776*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         xx*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *H
fCRA
?__inference_conv2d_layer_call_and_return_conditional_losses_773У
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall'conv2d/StatefulPartitionedCall:output:0conv2d_1_790conv2d_1_792*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         xx*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *J
fERC
A__inference_conv2d_1_layer_call_and_return_conditional_losses_789э
max_pooling2d/PartitionedCallPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         <<* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_max_pooling2d_layer_call_and_return_conditional_losses_661Т
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0conv2d_2_807conv2d_2_809*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         << *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *J
fERC
A__inference_conv2d_2_layer_call_and_return_conditional_losses_806Х
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0conv2d_3_823conv2d_3_825*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         << *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *J
fERC
A__inference_conv2d_3_layer_call_and_return_conditional_losses_822ё
max_pooling2d_1/PartitionedCallPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_671Ф
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_1/PartitionedCall:output:0conv2d_4_840conv2d_4_842*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *J
fERC
A__inference_conv2d_4_layer_call_and_return_conditional_losses_839Х
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0conv2d_5_856conv2d_5_858*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *J
fERC
A__inference_conv2d_5_layer_call_and_return_conditional_losses_855╡
(conv2d_transpose/StatefulPartitionedCallStatefulPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0conv2d_transpose_861conv2d_transpose_863*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         << *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_conv2d_transpose_layer_call_and_return_conditional_losses_709Э
concatenate/PartitionedCallPartitionedCall1conv2d_transpose/StatefulPartitionedCall:output:0)conv2d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         <<@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_concatenate_layer_call_and_return_conditional_losses_872Р
 conv2d_6/StatefulPartitionedCallStatefulPartitionedCall$concatenate/PartitionedCall:output:0conv2d_6_885conv2d_6_887*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         << *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *J
fERC
A__inference_conv2d_6_layer_call_and_return_conditional_losses_884Х
 conv2d_7/StatefulPartitionedCallStatefulPartitionedCall)conv2d_6/StatefulPartitionedCall:output:0conv2d_7_901conv2d_7_903*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         << *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *J
fERC
A__inference_conv2d_7_layer_call_and_return_conditional_losses_900╜
*conv2d_transpose_1/StatefulPartitionedCallStatefulPartitionedCall)conv2d_7/StatefulPartitionedCall:output:0conv2d_transpose_1_906conv2d_transpose_1_908*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         xx*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_751г
concatenate_1/PartitionedCallPartitionedCall3conv2d_transpose_1/StatefulPartitionedCall:output:0)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         xx * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_concatenate_1_layer_call_and_return_conditional_losses_917Т
 conv2d_8/StatefulPartitionedCallStatefulPartitionedCall&concatenate_1/PartitionedCall:output:0conv2d_8_930conv2d_8_932*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         xx*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *J
fERC
A__inference_conv2d_8_layer_call_and_return_conditional_losses_929Х
 conv2d_9/StatefulPartitionedCallStatefulPartitionedCall)conv2d_8/StatefulPartitionedCall:output:0conv2d_9_946conv2d_9_948*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         xx*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *J
fERC
A__inference_conv2d_9_layer_call_and_return_conditional_losses_945Щ
!conv2d_10/StatefulPartitionedCallStatefulPartitionedCall)conv2d_9/StatefulPartitionedCall:output:0conv2d_10_962conv2d_10_964*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         xx*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_conv2d_10_layer_call_and_return_conditional_losses_961Б
IdentityIdentity*conv2d_10/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         xx·
NoOpNoOp^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall"^conv2d_10/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall!^conv2d_4/StatefulPartitionedCall!^conv2d_5/StatefulPartitionedCall!^conv2d_6/StatefulPartitionedCall!^conv2d_7/StatefulPartitionedCall!^conv2d_8/StatefulPartitionedCall!^conv2d_9/StatefulPartitionedCall)^conv2d_transpose/StatefulPartitionedCall+^conv2d_transpose_1/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:         xx: : : : : : : : : : : : : : : : : : : : : : : : : : 2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2F
!conv2d_10/StatefulPartitionedCall!conv2d_10/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall2D
 conv2d_6/StatefulPartitionedCall conv2d_6/StatefulPartitionedCall2D
 conv2d_7/StatefulPartitionedCall conv2d_7/StatefulPartitionedCall2D
 conv2d_8/StatefulPartitionedCall conv2d_8/StatefulPartitionedCall2D
 conv2d_9/StatefulPartitionedCall conv2d_9/StatefulPartitionedCall2T
(conv2d_transpose/StatefulPartitionedCall(conv2d_transpose/StatefulPartitionedCall2X
*conv2d_transpose_1/StatefulPartitionedCall*conv2d_transpose_1/StatefulPartitionedCall:#

_user_specified_name964:#

_user_specified_name962:#

_user_specified_name948:#

_user_specified_name946:#

_user_specified_name932:#

_user_specified_name930:#

_user_specified_name908:#

_user_specified_name906:#

_user_specified_name903:#

_user_specified_name901:#

_user_specified_name887:#

_user_specified_name885:#

_user_specified_name863:#

_user_specified_name861:#

_user_specified_name858:#

_user_specified_name856:#


_user_specified_name842:#	

_user_specified_name840:#

_user_specified_name825:#

_user_specified_name823:#

_user_specified_name809:#

_user_specified_name807:#

_user_specified_name792:#

_user_specified_name790:#

_user_specified_name776:#

_user_specified_name774:X T
/
_output_shapes
:         xx
!
_user_specified_name	input_1
ю
q
E__inference_concatenate_layer_call_and_return_conditional_losses_1519
inputs_0
inputs_1
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :
concatConcatV2inputs_0inputs_1concat/axis:output:0*
N*
T0*/
_output_shapes
:         <<@_
IdentityIdentityconcat:output:0*
T0*/
_output_shapes
:         <<@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:         << :         << :YU
/
_output_shapes
:         << 
"
_user_specified_name
inputs_1:Y U
/
_output_shapes
:         << 
"
_user_specified_name
inputs_0
о
°
?__inference_conv2d_layer_call_and_return_conditional_losses_773

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Щ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         xx*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         xxX
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         xxi
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         xxS
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         xx: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:         xx
 
_user_specified_nameinputs
Р
Ь
'__inference_conv2d_6_layer_call_fn_1528

inputs!
unknown:@ 
	unknown_0: 
identityИвStatefulPartitionedCallс
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         << *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *J
fERC
A__inference_conv2d_6_layer_call_and_return_conditional_losses_884w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         << <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         <<@: : 22
StatefulPartitionedCallStatefulPartitionedCall:$ 

_user_specified_name1524:$ 

_user_specified_name1522:W S
/
_output_shapes
:         <<@
 
_user_specified_nameinputs
▒
√
B__inference_conv2d_8_layer_call_and_return_conditional_losses_1634

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Щ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         xx*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         xxX
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         xxi
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         xxS
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         xx : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:         xx 
 
_user_specified_nameinputs
Р
Ь
'__inference_conv2d_3_layer_call_fn_1403

inputs!
unknown:  
	unknown_0: 
identityИвStatefulPartitionedCallс
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         << *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *J
fERC
A__inference_conv2d_3_layer_call_and_return_conditional_losses_822w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         << <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         << : : 22
StatefulPartitionedCallStatefulPartitionedCall:$ 

_user_specified_name1399:$ 

_user_specified_name1397:W S
/
_output_shapes
:         << 
 
_user_specified_nameinputs
░
·
A__inference_conv2d_5_layer_call_and_return_conditional_losses_855

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0Щ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         @i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         @S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
▒
√
B__inference_conv2d_3_layer_call_and_return_conditional_losses_1414

inputs8
conv2d_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0Щ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         << *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         << X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         << i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         << S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         << : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:         << 
 
_user_specified_nameinputs
▒
√
B__inference_conv2d_2_layer_call_and_return_conditional_losses_1394

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Щ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         << *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         << X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         << i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         << S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         <<: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:         <<
 
_user_specified_nameinputs
░
·
A__inference_conv2d_3_layer_call_and_return_conditional_losses_822

inputs8
conv2d_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0Щ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         << *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         << X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         << i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         << S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         << : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:         << 
 
_user_specified_nameinputs
░
·
A__inference_conv2d_2_layer_call_and_return_conditional_losses_806

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Щ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         << *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         << X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         << i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         << S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         <<: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:         <<
 
_user_specified_nameinputs
ЇW
у
F__inference_BrainMask120_layer_call_and_return_conditional_losses_1041
input_1$

conv2d_971:

conv2d_973:&
conv2d_1_976:
conv2d_1_978:&
conv2d_2_982: 
conv2d_2_984: &
conv2d_3_987:  
conv2d_3_989: &
conv2d_4_993: @
conv2d_4_995:@&
conv2d_5_998:@@
conv2d_5_1000:@/
conv2d_transpose_1003: @#
conv2d_transpose_1005: '
conv2d_6_1009:@ 
conv2d_6_1011: '
conv2d_7_1014:  
conv2d_7_1016: 1
conv2d_transpose_1_1019: %
conv2d_transpose_1_1021:'
conv2d_8_1025: 
conv2d_8_1027:'
conv2d_9_1030:
conv2d_9_1032:(
conv2d_10_1035:
conv2d_10_1037:
identityИвconv2d/StatefulPartitionedCallв conv2d_1/StatefulPartitionedCallв!conv2d_10/StatefulPartitionedCallв conv2d_2/StatefulPartitionedCallв conv2d_3/StatefulPartitionedCallв conv2d_4/StatefulPartitionedCallв conv2d_5/StatefulPartitionedCallв conv2d_6/StatefulPartitionedCallв conv2d_7/StatefulPartitionedCallв conv2d_8/StatefulPartitionedCallв conv2d_9/StatefulPartitionedCallв(conv2d_transpose/StatefulPartitionedCallв*conv2d_transpose_1/StatefulPartitionedCallы
conv2d/StatefulPartitionedCallStatefulPartitionedCallinput_1
conv2d_971
conv2d_973*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         xx*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *H
fCRA
?__inference_conv2d_layer_call_and_return_conditional_losses_773У
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall'conv2d/StatefulPartitionedCall:output:0conv2d_1_976conv2d_1_978*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         xx*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *J
fERC
A__inference_conv2d_1_layer_call_and_return_conditional_losses_789э
max_pooling2d/PartitionedCallPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         <<* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_max_pooling2d_layer_call_and_return_conditional_losses_661Т
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0conv2d_2_982conv2d_2_984*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         << *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *J
fERC
A__inference_conv2d_2_layer_call_and_return_conditional_losses_806Х
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0conv2d_3_987conv2d_3_989*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         << *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *J
fERC
A__inference_conv2d_3_layer_call_and_return_conditional_losses_822ё
max_pooling2d_1/PartitionedCallPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_671Ф
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_1/PartitionedCall:output:0conv2d_4_993conv2d_4_995*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *J
fERC
A__inference_conv2d_4_layer_call_and_return_conditional_losses_839Ц
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0conv2d_5_998conv2d_5_1000*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *J
fERC
A__inference_conv2d_5_layer_call_and_return_conditional_losses_855╖
(conv2d_transpose/StatefulPartitionedCallStatefulPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0conv2d_transpose_1003conv2d_transpose_1005*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         << *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_conv2d_transpose_layer_call_and_return_conditional_losses_709Э
concatenate/PartitionedCallPartitionedCall1conv2d_transpose/StatefulPartitionedCall:output:0)conv2d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         <<@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_concatenate_layer_call_and_return_conditional_losses_872Т
 conv2d_6/StatefulPartitionedCallStatefulPartitionedCall$concatenate/PartitionedCall:output:0conv2d_6_1009conv2d_6_1011*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         << *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *J
fERC
A__inference_conv2d_6_layer_call_and_return_conditional_losses_884Ч
 conv2d_7/StatefulPartitionedCallStatefulPartitionedCall)conv2d_6/StatefulPartitionedCall:output:0conv2d_7_1014conv2d_7_1016*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         << *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *J
fERC
A__inference_conv2d_7_layer_call_and_return_conditional_losses_900┐
*conv2d_transpose_1/StatefulPartitionedCallStatefulPartitionedCall)conv2d_7/StatefulPartitionedCall:output:0conv2d_transpose_1_1019conv2d_transpose_1_1021*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         xx*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_751г
concatenate_1/PartitionedCallPartitionedCall3conv2d_transpose_1/StatefulPartitionedCall:output:0)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         xx * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_concatenate_1_layer_call_and_return_conditional_losses_917Ф
 conv2d_8/StatefulPartitionedCallStatefulPartitionedCall&concatenate_1/PartitionedCall:output:0conv2d_8_1025conv2d_8_1027*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         xx*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *J
fERC
A__inference_conv2d_8_layer_call_and_return_conditional_losses_929Ч
 conv2d_9/StatefulPartitionedCallStatefulPartitionedCall)conv2d_8/StatefulPartitionedCall:output:0conv2d_9_1030conv2d_9_1032*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         xx*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *J
fERC
A__inference_conv2d_9_layer_call_and_return_conditional_losses_945Ы
!conv2d_10/StatefulPartitionedCallStatefulPartitionedCall)conv2d_9/StatefulPartitionedCall:output:0conv2d_10_1035conv2d_10_1037*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         xx*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_conv2d_10_layer_call_and_return_conditional_losses_961Б
IdentityIdentity*conv2d_10/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         xx·
NoOpNoOp^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall"^conv2d_10/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall!^conv2d_4/StatefulPartitionedCall!^conv2d_5/StatefulPartitionedCall!^conv2d_6/StatefulPartitionedCall!^conv2d_7/StatefulPartitionedCall!^conv2d_8/StatefulPartitionedCall!^conv2d_9/StatefulPartitionedCall)^conv2d_transpose/StatefulPartitionedCall+^conv2d_transpose_1/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:         xx: : : : : : : : : : : : : : : : : : : : : : : : : : 2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2F
!conv2d_10/StatefulPartitionedCall!conv2d_10/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall2D
 conv2d_6/StatefulPartitionedCall conv2d_6/StatefulPartitionedCall2D
 conv2d_7/StatefulPartitionedCall conv2d_7/StatefulPartitionedCall2D
 conv2d_8/StatefulPartitionedCall conv2d_8/StatefulPartitionedCall2D
 conv2d_9/StatefulPartitionedCall conv2d_9/StatefulPartitionedCall2T
(conv2d_transpose/StatefulPartitionedCall(conv2d_transpose/StatefulPartitionedCall2X
*conv2d_transpose_1/StatefulPartitionedCall*conv2d_transpose_1/StatefulPartitionedCall:$ 

_user_specified_name1037:$ 

_user_specified_name1035:$ 

_user_specified_name1032:$ 

_user_specified_name1030:$ 

_user_specified_name1027:$ 

_user_specified_name1025:$ 

_user_specified_name1021:$ 

_user_specified_name1019:$ 

_user_specified_name1016:$ 

_user_specified_name1014:$ 

_user_specified_name1011:$ 

_user_specified_name1009:$ 

_user_specified_name1005:$ 

_user_specified_name1003:$ 

_user_specified_name1000:#

_user_specified_name998:#


_user_specified_name995:#	

_user_specified_name993:#

_user_specified_name989:#

_user_specified_name987:#

_user_specified_name984:#

_user_specified_name982:#

_user_specified_name978:#

_user_specified_name976:#

_user_specified_name973:#

_user_specified_name971:X T
/
_output_shapes
:         xx
!
_user_specified_name	input_1
▒
√
B__inference_conv2d_7_layer_call_and_return_conditional_losses_1559

inputs8
conv2d_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0Щ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         << *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         << X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         << i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         << S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         << : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:         << 
 
_user_specified_nameinputs
Р!
Ш
K__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_751

inputsB
(conv2d_transpose_readvariableop_resource: -
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвconv2d_transpose/ReadVariableOpI
ShapeShapeinputs*
T0*
_output_shapes
::э╧]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: I
stack/3Const*
_output_shapes
: *
dtype0*
value	B :y
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskР
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype0▄
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+                           *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0Щ
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                           y
IdentityIdentityBiasAdd:output:0^NoOp*
T0*A
_output_shapes/
-:+                           ]
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+                            : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs
х
n
D__inference_concatenate_layer_call_and_return_conditional_losses_872

inputs
inputs_1
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :}
concatConcatV2inputsinputs_1concat/axis:output:0*
N*
T0*/
_output_shapes
:         <<@_
IdentityIdentityconcat:output:0*
T0*/
_output_shapes
:         <<@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:         << :         << :WS
/
_output_shapes
:         << 
 
_user_specified_nameinputs:W S
/
_output_shapes
:         << 
 
_user_specified_nameinputs
щ
д
/__inference_conv2d_transpose_layer_call_fn_1473

inputs!
unknown: @
	unknown_0: 
identityИвStatefulPartitionedCall√
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                            *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_conv2d_transpose_layer_call_and_return_conditional_losses_709Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                            <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+                           @: : 22
StatefulPartitionedCallStatefulPartitionedCall:$ 

_user_specified_name1469:$ 

_user_specified_name1467:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
Ъ
Ш
+__inference_BrainMask120_layer_call_fn_1155
input_1!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3: 
	unknown_4: #
	unknown_5:  
	unknown_6: #
	unknown_7: @
	unknown_8:@#
	unknown_9:@@

unknown_10:@$

unknown_11: @

unknown_12: $

unknown_13:@ 

unknown_14: $

unknown_15:  

unknown_16: $

unknown_17: 

unknown_18:$

unknown_19: 

unknown_20:$

unknown_21:

unknown_22:$

unknown_23:

unknown_24:
identityИвStatefulPartitionedCallо
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24*&
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         xx*<
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_BrainMask120_layer_call_and_return_conditional_losses_1041w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         xx<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:         xx: : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:$ 

_user_specified_name1151:$ 

_user_specified_name1149:$ 

_user_specified_name1147:$ 

_user_specified_name1145:$ 

_user_specified_name1143:$ 

_user_specified_name1141:$ 

_user_specified_name1139:$ 

_user_specified_name1137:$ 

_user_specified_name1135:$ 

_user_specified_name1133:$ 

_user_specified_name1131:$ 

_user_specified_name1129:$ 

_user_specified_name1127:$ 

_user_specified_name1125:$ 

_user_specified_name1123:$ 

_user_specified_name1121:$
 

_user_specified_name1119:$	 

_user_specified_name1117:$ 

_user_specified_name1115:$ 

_user_specified_name1113:$ 

_user_specified_name1111:$ 

_user_specified_name1109:$ 

_user_specified_name1107:$ 

_user_specified_name1105:$ 

_user_specified_name1103:$ 

_user_specified_name1101:X T
/
_output_shapes
:         xx
!
_user_specified_name	input_1
░
·
A__inference_conv2d_7_layer_call_and_return_conditional_losses_900

inputs8
conv2d_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0Щ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         << *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         << X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         << i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         << S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         << : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:         << 
 
_user_specified_nameinputs
О!
Ц
I__inference_conv2d_transpose_layer_call_and_return_conditional_losses_709

inputsB
(conv2d_transpose_readvariableop_resource: @-
biasadd_readvariableop_resource: 
identityИвBiasAdd/ReadVariableOpвconv2d_transpose/ReadVariableOpI
ShapeShapeinputs*
T0*
_output_shapes
::э╧]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: I
stack/3Const*
_output_shapes
: *
dtype0*
value	B : y
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskР
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype0▄
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+                            *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0Щ
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                            y
IdentityIdentityBiasAdd:output:0^NoOp*
T0*A
_output_shapes/
-:+                            ]
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+                           @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
П!
Ч
J__inference_conv2d_transpose_layer_call_and_return_conditional_losses_1506

inputsB
(conv2d_transpose_readvariableop_resource: @-
biasadd_readvariableop_resource: 
identityИвBiasAdd/ReadVariableOpвconv2d_transpose/ReadVariableOpI
ShapeShapeinputs*
T0*
_output_shapes
::э╧]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: I
stack/3Const*
_output_shapes
: *
dtype0*
value	B : y
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskР
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype0▄
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+                            *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0Щ
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                            y
IdentityIdentityBiasAdd:output:0^NoOp*
T0*A
_output_shapes/
-:+                            ]
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+                           @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
Р
Ь
'__inference_conv2d_2_layer_call_fn_1383

inputs!
unknown: 
	unknown_0: 
identityИвStatefulPartitionedCallс
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         << *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *J
fERC
A__inference_conv2d_2_layer_call_and_return_conditional_losses_806w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         << <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         <<: : 22
StatefulPartitionedCallStatefulPartitionedCall:$ 

_user_specified_name1379:$ 

_user_specified_name1377:W S
/
_output_shapes
:         <<
 
_user_specified_nameinputs
░
·
A__inference_conv2d_9_layer_call_and_return_conditional_losses_945

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Щ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         xx*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         xxX
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         xxi
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         xxS
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         xx: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:         xx
 
_user_specified_nameinputs
п
∙
@__inference_conv2d_layer_call_and_return_conditional_losses_1344

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Щ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         xx*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         xxX
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         xxi
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         xxS
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         xx: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:         xx
 
_user_specified_nameinputs
░
·
A__inference_conv2d_1_layer_call_and_return_conditional_losses_789

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Щ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         xx*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         xxX
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         xxi
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         xxS
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         xx: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:         xx
 
_user_specified_nameinputs
░
·
A__inference_conv2d_6_layer_call_and_return_conditional_losses_884

inputs8
conv2d_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype0Щ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         << *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         << X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         << i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         << S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         <<@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:         <<@
 
_user_specified_nameinputs
жz
╜
 __inference__traced_restore_1939
file_prefix8
assignvariableop_conv2d_kernel:,
assignvariableop_1_conv2d_bias:<
"assignvariableop_2_conv2d_1_kernel:.
 assignvariableop_3_conv2d_1_bias:<
"assignvariableop_4_conv2d_2_kernel: .
 assignvariableop_5_conv2d_2_bias: <
"assignvariableop_6_conv2d_3_kernel:  .
 assignvariableop_7_conv2d_3_bias: <
"assignvariableop_8_conv2d_4_kernel: @.
 assignvariableop_9_conv2d_4_bias:@=
#assignvariableop_10_conv2d_5_kernel:@@/
!assignvariableop_11_conv2d_5_bias:@E
+assignvariableop_12_conv2d_transpose_kernel: @7
)assignvariableop_13_conv2d_transpose_bias: =
#assignvariableop_14_conv2d_6_kernel:@ /
!assignvariableop_15_conv2d_6_bias: =
#assignvariableop_16_conv2d_7_kernel:  /
!assignvariableop_17_conv2d_7_bias: G
-assignvariableop_18_conv2d_transpose_1_kernel: 9
+assignvariableop_19_conv2d_transpose_1_bias:=
#assignvariableop_20_conv2d_8_kernel: /
!assignvariableop_21_conv2d_8_bias:=
#assignvariableop_22_conv2d_9_kernel:/
!assignvariableop_23_conv2d_9_bias:>
$assignvariableop_24_conv2d_10_kernel:0
"assignvariableop_25_conv2d_10_bias:
identity_27ИвAssignVariableOpвAssignVariableOp_1вAssignVariableOp_10вAssignVariableOp_11вAssignVariableOp_12вAssignVariableOp_13вAssignVariableOp_14вAssignVariableOp_15вAssignVariableOp_16вAssignVariableOp_17вAssignVariableOp_18вAssignVariableOp_19вAssignVariableOp_2вAssignVariableOp_20вAssignVariableOp_21вAssignVariableOp_22вAssignVariableOp_23вAssignVariableOp_24вAssignVariableOp_25вAssignVariableOp_3вAssignVariableOp_4вAssignVariableOp_5вAssignVariableOp_6вAssignVariableOp_7вAssignVariableOp_8вAssignVariableOp_9й
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*╧
value┼B┬B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-11/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-11/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHж
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*I
value@B>B B B B B B B B B B B B B B B B B B B B B B B B B B B ж
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*А
_output_shapesn
l:::::::::::::::::::::::::::*)
dtypes
2[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:▒
AssignVariableOpAssignVariableOpassignvariableop_conv2d_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:╡
AssignVariableOp_1AssignVariableOpassignvariableop_1_conv2d_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:╣
AssignVariableOp_2AssignVariableOp"assignvariableop_2_conv2d_1_kernelIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:╖
AssignVariableOp_3AssignVariableOp assignvariableop_3_conv2d_1_biasIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:╣
AssignVariableOp_4AssignVariableOp"assignvariableop_4_conv2d_2_kernelIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:╖
AssignVariableOp_5AssignVariableOp assignvariableop_5_conv2d_2_biasIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:╣
AssignVariableOp_6AssignVariableOp"assignvariableop_6_conv2d_3_kernelIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:╖
AssignVariableOp_7AssignVariableOp assignvariableop_7_conv2d_3_biasIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:╣
AssignVariableOp_8AssignVariableOp"assignvariableop_8_conv2d_4_kernelIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:╖
AssignVariableOp_9AssignVariableOp assignvariableop_9_conv2d_4_biasIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:╝
AssignVariableOp_10AssignVariableOp#assignvariableop_10_conv2d_5_kernelIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:║
AssignVariableOp_11AssignVariableOp!assignvariableop_11_conv2d_5_biasIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:─
AssignVariableOp_12AssignVariableOp+assignvariableop_12_conv2d_transpose_kernelIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:┬
AssignVariableOp_13AssignVariableOp)assignvariableop_13_conv2d_transpose_biasIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:╝
AssignVariableOp_14AssignVariableOp#assignvariableop_14_conv2d_6_kernelIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:║
AssignVariableOp_15AssignVariableOp!assignvariableop_15_conv2d_6_biasIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:╝
AssignVariableOp_16AssignVariableOp#assignvariableop_16_conv2d_7_kernelIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:║
AssignVariableOp_17AssignVariableOp!assignvariableop_17_conv2d_7_biasIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:╞
AssignVariableOp_18AssignVariableOp-assignvariableop_18_conv2d_transpose_1_kernelIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:─
AssignVariableOp_19AssignVariableOp+assignvariableop_19_conv2d_transpose_1_biasIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:╝
AssignVariableOp_20AssignVariableOp#assignvariableop_20_conv2d_8_kernelIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:║
AssignVariableOp_21AssignVariableOp!assignvariableop_21_conv2d_8_biasIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:╝
AssignVariableOp_22AssignVariableOp#assignvariableop_22_conv2d_9_kernelIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:║
AssignVariableOp_23AssignVariableOp!assignvariableop_23_conv2d_9_biasIdentity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:╜
AssignVariableOp_24AssignVariableOp$assignvariableop_24_conv2d_10_kernelIdentity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:╗
AssignVariableOp_25AssignVariableOp"assignvariableop_25_conv2d_10_biasIdentity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 Л
Identity_26Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_27IdentityIdentity_26:output:0^NoOp_1*
T0*
_output_shapes
: ╘
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
_output_shapes
 "#
identity_27Identity_27:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6: : : : : : : : : : : : : : : : : : : : : : : : : : : 2*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_92$
AssignVariableOpAssignVariableOp:.*
(
_user_specified_nameconv2d_10/bias:0,
*
_user_specified_nameconv2d_10/kernel:-)
'
_user_specified_nameconv2d_9/bias:/+
)
_user_specified_nameconv2d_9/kernel:-)
'
_user_specified_nameconv2d_8/bias:/+
)
_user_specified_nameconv2d_8/kernel:73
1
_user_specified_nameconv2d_transpose_1/bias:95
3
_user_specified_nameconv2d_transpose_1/kernel:-)
'
_user_specified_nameconv2d_7/bias:/+
)
_user_specified_nameconv2d_7/kernel:-)
'
_user_specified_nameconv2d_6/bias:/+
)
_user_specified_nameconv2d_6/kernel:51
/
_user_specified_nameconv2d_transpose/bias:73
1
_user_specified_nameconv2d_transpose/kernel:-)
'
_user_specified_nameconv2d_5/bias:/+
)
_user_specified_nameconv2d_5/kernel:-
)
'
_user_specified_nameconv2d_4/bias:/	+
)
_user_specified_nameconv2d_4/kernel:-)
'
_user_specified_nameconv2d_3/bias:/+
)
_user_specified_nameconv2d_3/kernel:-)
'
_user_specified_nameconv2d_2/bias:/+
)
_user_specified_nameconv2d_2/kernel:-)
'
_user_specified_nameconv2d_1/bias:/+
)
_user_specified_nameconv2d_1/kernel:+'
%
_user_specified_nameconv2d/bias:-)
'
_user_specified_nameconv2d/kernel:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
╓
V
*__inference_concatenate_layer_call_fn_1512
inputs_0
inputs_1
identity╟
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         <<@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_concatenate_layer_call_and_return_conditional_losses_872h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:         <<@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:         << :         << :YU
/
_output_shapes
:         << 
"
_user_specified_name
inputs_1:Y U
/
_output_shapes
:         << 
"
_user_specified_name
inputs_0
▒
√
B__inference_conv2d_10_layer_call_and_return_conditional_losses_961

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         xx*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         xx^
SigmoidSigmoidBiasAdd:output:0*
T0*/
_output_shapes
:         xxb
IdentityIdentitySigmoid:y:0^NoOp*
T0*/
_output_shapes
:         xxS
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         xx: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:         xx
 
_user_specified_nameinputs
┌
X
,__inference_concatenate_1_layer_call_fn_1607
inputs_0
inputs_1
identity╔
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         xx * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_concatenate_1_layer_call_and_return_conditional_losses_917h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:         xx "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:         xx:         xx:YU
/
_output_shapes
:         xx
"
_user_specified_name
inputs_1:Y U
/
_output_shapes
:         xx
"
_user_specified_name
inputs_0
▒
√
B__inference_conv2d_6_layer_call_and_return_conditional_losses_1539

inputs8
conv2d_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype0Щ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         << *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         << X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         << i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         << S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         <<@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:         <<@
 
_user_specified_nameinputs
░
·
A__inference_conv2d_4_layer_call_and_return_conditional_losses_839

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0Щ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         @i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         @S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:          : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:          
 
_user_specified_nameinputs
▒
√
B__inference_conv2d_4_layer_call_and_return_conditional_losses_1444

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0Щ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         @i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         @S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:          : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:          
 
_user_specified_nameinputs
Р
Ь
'__inference_conv2d_5_layer_call_fn_1453

inputs!
unknown:@@
	unknown_0:@
identityИвStatefulPartitionedCallс
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *J
fERC
A__inference_conv2d_5_layer_call_and_return_conditional_losses_855w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         @<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         @: : 22
StatefulPartitionedCallStatefulPartitionedCall:$ 

_user_specified_name1449:$ 

_user_specified_name1447:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
╢
J
.__inference_max_pooling2d_1_layer_call_fn_1419

inputs
identity┘
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_671Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
М
Ъ
%__inference_conv2d_layer_call_fn_1333

inputs!
unknown:
	unknown_0:
identityИвStatefulPartitionedCall▀
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         xx*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *H
fCRA
?__inference_conv2d_layer_call_and_return_conditional_losses_773w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         xx<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         xx: : 22
StatefulPartitionedCallStatefulPartitionedCall:$ 

_user_specified_name1329:$ 

_user_specified_name1327:W S
/
_output_shapes
:         xx
 
_user_specified_nameinputs
Ё
s
G__inference_concatenate_1_layer_call_and_return_conditional_losses_1614
inputs_0
inputs_1
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :
concatConcatV2inputs_0inputs_1concat/axis:output:0*
N*
T0*/
_output_shapes
:         xx _
IdentityIdentityconcat:output:0*
T0*/
_output_shapes
:         xx "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:         xx:         xx:YU
/
_output_shapes
:         xx
"
_user_specified_name
inputs_1:Y U
/
_output_shapes
:         xx
"
_user_specified_name
inputs_0
ч
p
F__inference_concatenate_1_layer_call_and_return_conditional_losses_917

inputs
inputs_1
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :}
concatConcatV2inputsinputs_1concat/axis:output:0*
N*
T0*/
_output_shapes
:         xx _
IdentityIdentityconcat:output:0*
T0*/
_output_shapes
:         xx "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:         xx:         xx:WS
/
_output_shapes
:         xx
 
_user_specified_nameinputs:W S
/
_output_shapes
:         xx
 
_user_specified_nameinputs
С!
Щ
L__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_1601

inputsB
(conv2d_transpose_readvariableop_resource: -
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвconv2d_transpose/ReadVariableOpI
ShapeShapeinputs*
T0*
_output_shapes
::э╧]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: I
stack/3Const*
_output_shapes
: *
dtype0*
value	B :y
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskР
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype0▄
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+                           *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0Щ
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                           y
IdentityIdentityBiasAdd:output:0^NoOp*
T0*A
_output_shapes/
-:+                           ]
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+                            : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs
Р
Ь
'__inference_conv2d_7_layer_call_fn_1548

inputs!
unknown:  
	unknown_0: 
identityИвStatefulPartitionedCallс
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         << *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *J
fERC
A__inference_conv2d_7_layer_call_and_return_conditional_losses_900w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         << <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         << : : 22
StatefulPartitionedCallStatefulPartitionedCall:$ 

_user_specified_name1544:$ 

_user_specified_name1542:W S
/
_output_shapes
:         << 
 
_user_specified_nameinputs
Р
Ь
'__inference_conv2d_9_layer_call_fn_1643

inputs!
unknown:
	unknown_0:
identityИвStatefulPartitionedCallс
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         xx*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *J
fERC
A__inference_conv2d_9_layer_call_and_return_conditional_losses_945w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         xx<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         xx: : 22
StatefulPartitionedCallStatefulPartitionedCall:$ 

_user_specified_name1639:$ 

_user_specified_name1637:W S
/
_output_shapes
:         xx
 
_user_specified_nameinputs
▓
№
C__inference_conv2d_10_layer_call_and_return_conditional_losses_1674

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         xx*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         xx^
SigmoidSigmoidBiasAdd:output:0*
T0*/
_output_shapes
:         xxb
IdentityIdentitySigmoid:y:0^NoOp*
T0*/
_output_shapes
:         xxS
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         xx: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:         xx
 
_user_specified_nameinputs
▓
H
,__inference_max_pooling2d_layer_call_fn_1369

inputs
identity╫
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_max_pooling2d_layer_call_and_return_conditional_losses_661Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
С
e
I__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_1424

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Т
Э
(__inference_conv2d_10_layer_call_fn_1663

inputs!
unknown:
	unknown_0:
identityИвStatefulPartitionedCallт
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         xx*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_conv2d_10_layer_call_and_return_conditional_losses_961w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         xx<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         xx: : 22
StatefulPartitionedCallStatefulPartitionedCall:$ 

_user_specified_name1659:$ 

_user_specified_name1657:W S
/
_output_shapes
:         xx
 
_user_specified_nameinputs
▒
√
B__inference_conv2d_5_layer_call_and_return_conditional_losses_1464

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0Щ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         @i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         @S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
э
ж
1__inference_conv2d_transpose_1_layer_call_fn_1568

inputs!
unknown: 
	unknown_0:
identityИвStatefulPartitionedCall¤
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_751Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+                            : : 22
StatefulPartitionedCallStatefulPartitionedCall:$ 

_user_specified_name1564:$ 

_user_specified_name1562:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs
П
c
G__inference_max_pooling2d_layer_call_and_return_conditional_losses_1374

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
И╦
Ї
__inference__wrapped_model_656
input_1L
2brainmask120_conv2d_conv2d_readvariableop_resource:A
3brainmask120_conv2d_biasadd_readvariableop_resource:N
4brainmask120_conv2d_1_conv2d_readvariableop_resource:C
5brainmask120_conv2d_1_biasadd_readvariableop_resource:N
4brainmask120_conv2d_2_conv2d_readvariableop_resource: C
5brainmask120_conv2d_2_biasadd_readvariableop_resource: N
4brainmask120_conv2d_3_conv2d_readvariableop_resource:  C
5brainmask120_conv2d_3_biasadd_readvariableop_resource: N
4brainmask120_conv2d_4_conv2d_readvariableop_resource: @C
5brainmask120_conv2d_4_biasadd_readvariableop_resource:@N
4brainmask120_conv2d_5_conv2d_readvariableop_resource:@@C
5brainmask120_conv2d_5_biasadd_readvariableop_resource:@`
Fbrainmask120_conv2d_transpose_conv2d_transpose_readvariableop_resource: @K
=brainmask120_conv2d_transpose_biasadd_readvariableop_resource: N
4brainmask120_conv2d_6_conv2d_readvariableop_resource:@ C
5brainmask120_conv2d_6_biasadd_readvariableop_resource: N
4brainmask120_conv2d_7_conv2d_readvariableop_resource:  C
5brainmask120_conv2d_7_biasadd_readvariableop_resource: b
Hbrainmask120_conv2d_transpose_1_conv2d_transpose_readvariableop_resource: M
?brainmask120_conv2d_transpose_1_biasadd_readvariableop_resource:N
4brainmask120_conv2d_8_conv2d_readvariableop_resource: C
5brainmask120_conv2d_8_biasadd_readvariableop_resource:N
4brainmask120_conv2d_9_conv2d_readvariableop_resource:C
5brainmask120_conv2d_9_biasadd_readvariableop_resource:O
5brainmask120_conv2d_10_conv2d_readvariableop_resource:D
6brainmask120_conv2d_10_biasadd_readvariableop_resource:
identityИв*BrainMask120/conv2d/BiasAdd/ReadVariableOpв)BrainMask120/conv2d/Conv2D/ReadVariableOpв,BrainMask120/conv2d_1/BiasAdd/ReadVariableOpв+BrainMask120/conv2d_1/Conv2D/ReadVariableOpв-BrainMask120/conv2d_10/BiasAdd/ReadVariableOpв,BrainMask120/conv2d_10/Conv2D/ReadVariableOpв,BrainMask120/conv2d_2/BiasAdd/ReadVariableOpв+BrainMask120/conv2d_2/Conv2D/ReadVariableOpв,BrainMask120/conv2d_3/BiasAdd/ReadVariableOpв+BrainMask120/conv2d_3/Conv2D/ReadVariableOpв,BrainMask120/conv2d_4/BiasAdd/ReadVariableOpв+BrainMask120/conv2d_4/Conv2D/ReadVariableOpв,BrainMask120/conv2d_5/BiasAdd/ReadVariableOpв+BrainMask120/conv2d_5/Conv2D/ReadVariableOpв,BrainMask120/conv2d_6/BiasAdd/ReadVariableOpв+BrainMask120/conv2d_6/Conv2D/ReadVariableOpв,BrainMask120/conv2d_7/BiasAdd/ReadVariableOpв+BrainMask120/conv2d_7/Conv2D/ReadVariableOpв,BrainMask120/conv2d_8/BiasAdd/ReadVariableOpв+BrainMask120/conv2d_8/Conv2D/ReadVariableOpв,BrainMask120/conv2d_9/BiasAdd/ReadVariableOpв+BrainMask120/conv2d_9/Conv2D/ReadVariableOpв4BrainMask120/conv2d_transpose/BiasAdd/ReadVariableOpв=BrainMask120/conv2d_transpose/conv2d_transpose/ReadVariableOpв6BrainMask120/conv2d_transpose_1/BiasAdd/ReadVariableOpв?BrainMask120/conv2d_transpose_1/conv2d_transpose/ReadVariableOpд
)BrainMask120/conv2d/Conv2D/ReadVariableOpReadVariableOp2brainmask120_conv2d_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0┬
BrainMask120/conv2d/Conv2DConv2Dinput_11BrainMask120/conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         xx*
paddingSAME*
strides
Ъ
*BrainMask120/conv2d/BiasAdd/ReadVariableOpReadVariableOp3brainmask120_conv2d_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0╣
BrainMask120/conv2d/BiasAddBiasAdd#BrainMask120/conv2d/Conv2D:output:02BrainMask120/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         xxА
BrainMask120/conv2d/ReluRelu$BrainMask120/conv2d/BiasAdd:output:0*
T0*/
_output_shapes
:         xxи
+BrainMask120/conv2d_1/Conv2D/ReadVariableOpReadVariableOp4brainmask120_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0х
BrainMask120/conv2d_1/Conv2DConv2D&BrainMask120/conv2d/Relu:activations:03BrainMask120/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         xx*
paddingSAME*
strides
Ю
,BrainMask120/conv2d_1/BiasAdd/ReadVariableOpReadVariableOp5brainmask120_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0┐
BrainMask120/conv2d_1/BiasAddBiasAdd%BrainMask120/conv2d_1/Conv2D:output:04BrainMask120/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         xxД
BrainMask120/conv2d_1/ReluRelu&BrainMask120/conv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:         xx─
"BrainMask120/max_pooling2d/MaxPoolMaxPool(BrainMask120/conv2d_1/Relu:activations:0*/
_output_shapes
:         <<*
ksize
*
paddingVALID*
strides
и
+BrainMask120/conv2d_2/Conv2D/ReadVariableOpReadVariableOp4brainmask120_conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0ъ
BrainMask120/conv2d_2/Conv2DConv2D+BrainMask120/max_pooling2d/MaxPool:output:03BrainMask120/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         << *
paddingSAME*
strides
Ю
,BrainMask120/conv2d_2/BiasAdd/ReadVariableOpReadVariableOp5brainmask120_conv2d_2_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0┐
BrainMask120/conv2d_2/BiasAddBiasAdd%BrainMask120/conv2d_2/Conv2D:output:04BrainMask120/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         << Д
BrainMask120/conv2d_2/ReluRelu&BrainMask120/conv2d_2/BiasAdd:output:0*
T0*/
_output_shapes
:         << и
+BrainMask120/conv2d_3/Conv2D/ReadVariableOpReadVariableOp4brainmask120_conv2d_3_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0ч
BrainMask120/conv2d_3/Conv2DConv2D(BrainMask120/conv2d_2/Relu:activations:03BrainMask120/conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         << *
paddingSAME*
strides
Ю
,BrainMask120/conv2d_3/BiasAdd/ReadVariableOpReadVariableOp5brainmask120_conv2d_3_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0┐
BrainMask120/conv2d_3/BiasAddBiasAdd%BrainMask120/conv2d_3/Conv2D:output:04BrainMask120/conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         << Д
BrainMask120/conv2d_3/ReluRelu&BrainMask120/conv2d_3/BiasAdd:output:0*
T0*/
_output_shapes
:         << ╞
$BrainMask120/max_pooling2d_1/MaxPoolMaxPool(BrainMask120/conv2d_3/Relu:activations:0*/
_output_shapes
:          *
ksize
*
paddingVALID*
strides
и
+BrainMask120/conv2d_4/Conv2D/ReadVariableOpReadVariableOp4brainmask120_conv2d_4_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0ь
BrainMask120/conv2d_4/Conv2DConv2D-BrainMask120/max_pooling2d_1/MaxPool:output:03BrainMask120/conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingSAME*
strides
Ю
,BrainMask120/conv2d_4/BiasAdd/ReadVariableOpReadVariableOp5brainmask120_conv2d_4_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0┐
BrainMask120/conv2d_4/BiasAddBiasAdd%BrainMask120/conv2d_4/Conv2D:output:04BrainMask120/conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @Д
BrainMask120/conv2d_4/ReluRelu&BrainMask120/conv2d_4/BiasAdd:output:0*
T0*/
_output_shapes
:         @и
+BrainMask120/conv2d_5/Conv2D/ReadVariableOpReadVariableOp4brainmask120_conv2d_5_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0ч
BrainMask120/conv2d_5/Conv2DConv2D(BrainMask120/conv2d_4/Relu:activations:03BrainMask120/conv2d_5/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingSAME*
strides
Ю
,BrainMask120/conv2d_5/BiasAdd/ReadVariableOpReadVariableOp5brainmask120_conv2d_5_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0┐
BrainMask120/conv2d_5/BiasAddBiasAdd%BrainMask120/conv2d_5/Conv2D:output:04BrainMask120/conv2d_5/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @Д
BrainMask120/conv2d_5/ReluRelu&BrainMask120/conv2d_5/BiasAdd:output:0*
T0*/
_output_shapes
:         @Й
#BrainMask120/conv2d_transpose/ShapeShape(BrainMask120/conv2d_5/Relu:activations:0*
T0*
_output_shapes
::э╧{
1BrainMask120/conv2d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: }
3BrainMask120/conv2d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3BrainMask120/conv2d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ч
+BrainMask120/conv2d_transpose/strided_sliceStridedSlice,BrainMask120/conv2d_transpose/Shape:output:0:BrainMask120/conv2d_transpose/strided_slice/stack:output:0<BrainMask120/conv2d_transpose/strided_slice/stack_1:output:0<BrainMask120/conv2d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%BrainMask120/conv2d_transpose/stack/1Const*
_output_shapes
: *
dtype0*
value	B :<g
%BrainMask120/conv2d_transpose/stack/2Const*
_output_shapes
: *
dtype0*
value	B :<g
%BrainMask120/conv2d_transpose/stack/3Const*
_output_shapes
: *
dtype0*
value	B : Я
#BrainMask120/conv2d_transpose/stackPack4BrainMask120/conv2d_transpose/strided_slice:output:0.BrainMask120/conv2d_transpose/stack/1:output:0.BrainMask120/conv2d_transpose/stack/2:output:0.BrainMask120/conv2d_transpose/stack/3:output:0*
N*
T0*
_output_shapes
:}
3BrainMask120/conv2d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
5BrainMask120/conv2d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
5BrainMask120/conv2d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:я
-BrainMask120/conv2d_transpose/strided_slice_1StridedSlice,BrainMask120/conv2d_transpose/stack:output:0<BrainMask120/conv2d_transpose/strided_slice_1/stack:output:0>BrainMask120/conv2d_transpose/strided_slice_1/stack_1:output:0>BrainMask120/conv2d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask╠
=BrainMask120/conv2d_transpose/conv2d_transpose/ReadVariableOpReadVariableOpFbrainmask120_conv2d_transpose_conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype0╞
.BrainMask120/conv2d_transpose/conv2d_transposeConv2DBackpropInput,BrainMask120/conv2d_transpose/stack:output:0EBrainMask120/conv2d_transpose/conv2d_transpose/ReadVariableOp:value:0(BrainMask120/conv2d_5/Relu:activations:0*
T0*/
_output_shapes
:         << *
paddingSAME*
strides
о
4BrainMask120/conv2d_transpose/BiasAdd/ReadVariableOpReadVariableOp=brainmask120_conv2d_transpose_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0с
%BrainMask120/conv2d_transpose/BiasAddBiasAdd7BrainMask120/conv2d_transpose/conv2d_transpose:output:0<BrainMask120/conv2d_transpose/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         << f
$BrainMask120/concatenate/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :ў
BrainMask120/concatenate/concatConcatV2.BrainMask120/conv2d_transpose/BiasAdd:output:0(BrainMask120/conv2d_3/Relu:activations:0-BrainMask120/concatenate/concat/axis:output:0*
N*
T0*/
_output_shapes
:         <<@и
+BrainMask120/conv2d_6/Conv2D/ReadVariableOpReadVariableOp4brainmask120_conv2d_6_conv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype0ч
BrainMask120/conv2d_6/Conv2DConv2D(BrainMask120/concatenate/concat:output:03BrainMask120/conv2d_6/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         << *
paddingSAME*
strides
Ю
,BrainMask120/conv2d_6/BiasAdd/ReadVariableOpReadVariableOp5brainmask120_conv2d_6_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0┐
BrainMask120/conv2d_6/BiasAddBiasAdd%BrainMask120/conv2d_6/Conv2D:output:04BrainMask120/conv2d_6/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         << Д
BrainMask120/conv2d_6/ReluRelu&BrainMask120/conv2d_6/BiasAdd:output:0*
T0*/
_output_shapes
:         << и
+BrainMask120/conv2d_7/Conv2D/ReadVariableOpReadVariableOp4brainmask120_conv2d_7_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0ч
BrainMask120/conv2d_7/Conv2DConv2D(BrainMask120/conv2d_6/Relu:activations:03BrainMask120/conv2d_7/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         << *
paddingSAME*
strides
Ю
,BrainMask120/conv2d_7/BiasAdd/ReadVariableOpReadVariableOp5brainmask120_conv2d_7_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0┐
BrainMask120/conv2d_7/BiasAddBiasAdd%BrainMask120/conv2d_7/Conv2D:output:04BrainMask120/conv2d_7/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         << Д
BrainMask120/conv2d_7/ReluRelu&BrainMask120/conv2d_7/BiasAdd:output:0*
T0*/
_output_shapes
:         << Л
%BrainMask120/conv2d_transpose_1/ShapeShape(BrainMask120/conv2d_7/Relu:activations:0*
T0*
_output_shapes
::э╧}
3BrainMask120/conv2d_transpose_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
5BrainMask120/conv2d_transpose_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
5BrainMask120/conv2d_transpose_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ё
-BrainMask120/conv2d_transpose_1/strided_sliceStridedSlice.BrainMask120/conv2d_transpose_1/Shape:output:0<BrainMask120/conv2d_transpose_1/strided_slice/stack:output:0>BrainMask120/conv2d_transpose_1/strided_slice/stack_1:output:0>BrainMask120/conv2d_transpose_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maski
'BrainMask120/conv2d_transpose_1/stack/1Const*
_output_shapes
: *
dtype0*
value	B :xi
'BrainMask120/conv2d_transpose_1/stack/2Const*
_output_shapes
: *
dtype0*
value	B :xi
'BrainMask120/conv2d_transpose_1/stack/3Const*
_output_shapes
: *
dtype0*
value	B :й
%BrainMask120/conv2d_transpose_1/stackPack6BrainMask120/conv2d_transpose_1/strided_slice:output:00BrainMask120/conv2d_transpose_1/stack/1:output:00BrainMask120/conv2d_transpose_1/stack/2:output:00BrainMask120/conv2d_transpose_1/stack/3:output:0*
N*
T0*
_output_shapes
:
5BrainMask120/conv2d_transpose_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: Б
7BrainMask120/conv2d_transpose_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Б
7BrainMask120/conv2d_transpose_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:∙
/BrainMask120/conv2d_transpose_1/strided_slice_1StridedSlice.BrainMask120/conv2d_transpose_1/stack:output:0>BrainMask120/conv2d_transpose_1/strided_slice_1/stack:output:0@BrainMask120/conv2d_transpose_1/strided_slice_1/stack_1:output:0@BrainMask120/conv2d_transpose_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask╨
?BrainMask120/conv2d_transpose_1/conv2d_transpose/ReadVariableOpReadVariableOpHbrainmask120_conv2d_transpose_1_conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype0╠
0BrainMask120/conv2d_transpose_1/conv2d_transposeConv2DBackpropInput.BrainMask120/conv2d_transpose_1/stack:output:0GBrainMask120/conv2d_transpose_1/conv2d_transpose/ReadVariableOp:value:0(BrainMask120/conv2d_7/Relu:activations:0*
T0*/
_output_shapes
:         xx*
paddingSAME*
strides
▓
6BrainMask120/conv2d_transpose_1/BiasAdd/ReadVariableOpReadVariableOp?brainmask120_conv2d_transpose_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0ч
'BrainMask120/conv2d_transpose_1/BiasAddBiasAdd9BrainMask120/conv2d_transpose_1/conv2d_transpose:output:0>BrainMask120/conv2d_transpose_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         xxh
&BrainMask120/concatenate_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :¤
!BrainMask120/concatenate_1/concatConcatV20BrainMask120/conv2d_transpose_1/BiasAdd:output:0(BrainMask120/conv2d_1/Relu:activations:0/BrainMask120/concatenate_1/concat/axis:output:0*
N*
T0*/
_output_shapes
:         xx и
+BrainMask120/conv2d_8/Conv2D/ReadVariableOpReadVariableOp4brainmask120_conv2d_8_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0щ
BrainMask120/conv2d_8/Conv2DConv2D*BrainMask120/concatenate_1/concat:output:03BrainMask120/conv2d_8/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         xx*
paddingSAME*
strides
Ю
,BrainMask120/conv2d_8/BiasAdd/ReadVariableOpReadVariableOp5brainmask120_conv2d_8_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0┐
BrainMask120/conv2d_8/BiasAddBiasAdd%BrainMask120/conv2d_8/Conv2D:output:04BrainMask120/conv2d_8/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         xxД
BrainMask120/conv2d_8/ReluRelu&BrainMask120/conv2d_8/BiasAdd:output:0*
T0*/
_output_shapes
:         xxи
+BrainMask120/conv2d_9/Conv2D/ReadVariableOpReadVariableOp4brainmask120_conv2d_9_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0ч
BrainMask120/conv2d_9/Conv2DConv2D(BrainMask120/conv2d_8/Relu:activations:03BrainMask120/conv2d_9/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         xx*
paddingSAME*
strides
Ю
,BrainMask120/conv2d_9/BiasAdd/ReadVariableOpReadVariableOp5brainmask120_conv2d_9_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0┐
BrainMask120/conv2d_9/BiasAddBiasAdd%BrainMask120/conv2d_9/Conv2D:output:04BrainMask120/conv2d_9/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         xxД
BrainMask120/conv2d_9/ReluRelu&BrainMask120/conv2d_9/BiasAdd:output:0*
T0*/
_output_shapes
:         xxк
,BrainMask120/conv2d_10/Conv2D/ReadVariableOpReadVariableOp5brainmask120_conv2d_10_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0ъ
BrainMask120/conv2d_10/Conv2DConv2D(BrainMask120/conv2d_9/Relu:activations:04BrainMask120/conv2d_10/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         xx*
paddingVALID*
strides
а
-BrainMask120/conv2d_10/BiasAdd/ReadVariableOpReadVariableOp6brainmask120_conv2d_10_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0┬
BrainMask120/conv2d_10/BiasAddBiasAdd&BrainMask120/conv2d_10/Conv2D:output:05BrainMask120/conv2d_10/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         xxМ
BrainMask120/conv2d_10/SigmoidSigmoid'BrainMask120/conv2d_10/BiasAdd:output:0*
T0*/
_output_shapes
:         xxy
IdentityIdentity"BrainMask120/conv2d_10/Sigmoid:y:0^NoOp*
T0*/
_output_shapes
:         xxС

NoOpNoOp+^BrainMask120/conv2d/BiasAdd/ReadVariableOp*^BrainMask120/conv2d/Conv2D/ReadVariableOp-^BrainMask120/conv2d_1/BiasAdd/ReadVariableOp,^BrainMask120/conv2d_1/Conv2D/ReadVariableOp.^BrainMask120/conv2d_10/BiasAdd/ReadVariableOp-^BrainMask120/conv2d_10/Conv2D/ReadVariableOp-^BrainMask120/conv2d_2/BiasAdd/ReadVariableOp,^BrainMask120/conv2d_2/Conv2D/ReadVariableOp-^BrainMask120/conv2d_3/BiasAdd/ReadVariableOp,^BrainMask120/conv2d_3/Conv2D/ReadVariableOp-^BrainMask120/conv2d_4/BiasAdd/ReadVariableOp,^BrainMask120/conv2d_4/Conv2D/ReadVariableOp-^BrainMask120/conv2d_5/BiasAdd/ReadVariableOp,^BrainMask120/conv2d_5/Conv2D/ReadVariableOp-^BrainMask120/conv2d_6/BiasAdd/ReadVariableOp,^BrainMask120/conv2d_6/Conv2D/ReadVariableOp-^BrainMask120/conv2d_7/BiasAdd/ReadVariableOp,^BrainMask120/conv2d_7/Conv2D/ReadVariableOp-^BrainMask120/conv2d_8/BiasAdd/ReadVariableOp,^BrainMask120/conv2d_8/Conv2D/ReadVariableOp-^BrainMask120/conv2d_9/BiasAdd/ReadVariableOp,^BrainMask120/conv2d_9/Conv2D/ReadVariableOp5^BrainMask120/conv2d_transpose/BiasAdd/ReadVariableOp>^BrainMask120/conv2d_transpose/conv2d_transpose/ReadVariableOp7^BrainMask120/conv2d_transpose_1/BiasAdd/ReadVariableOp@^BrainMask120/conv2d_transpose_1/conv2d_transpose/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:         xx: : : : : : : : : : : : : : : : : : : : : : : : : : 2X
*BrainMask120/conv2d/BiasAdd/ReadVariableOp*BrainMask120/conv2d/BiasAdd/ReadVariableOp2V
)BrainMask120/conv2d/Conv2D/ReadVariableOp)BrainMask120/conv2d/Conv2D/ReadVariableOp2\
,BrainMask120/conv2d_1/BiasAdd/ReadVariableOp,BrainMask120/conv2d_1/BiasAdd/ReadVariableOp2Z
+BrainMask120/conv2d_1/Conv2D/ReadVariableOp+BrainMask120/conv2d_1/Conv2D/ReadVariableOp2^
-BrainMask120/conv2d_10/BiasAdd/ReadVariableOp-BrainMask120/conv2d_10/BiasAdd/ReadVariableOp2\
,BrainMask120/conv2d_10/Conv2D/ReadVariableOp,BrainMask120/conv2d_10/Conv2D/ReadVariableOp2\
,BrainMask120/conv2d_2/BiasAdd/ReadVariableOp,BrainMask120/conv2d_2/BiasAdd/ReadVariableOp2Z
+BrainMask120/conv2d_2/Conv2D/ReadVariableOp+BrainMask120/conv2d_2/Conv2D/ReadVariableOp2\
,BrainMask120/conv2d_3/BiasAdd/ReadVariableOp,BrainMask120/conv2d_3/BiasAdd/ReadVariableOp2Z
+BrainMask120/conv2d_3/Conv2D/ReadVariableOp+BrainMask120/conv2d_3/Conv2D/ReadVariableOp2\
,BrainMask120/conv2d_4/BiasAdd/ReadVariableOp,BrainMask120/conv2d_4/BiasAdd/ReadVariableOp2Z
+BrainMask120/conv2d_4/Conv2D/ReadVariableOp+BrainMask120/conv2d_4/Conv2D/ReadVariableOp2\
,BrainMask120/conv2d_5/BiasAdd/ReadVariableOp,BrainMask120/conv2d_5/BiasAdd/ReadVariableOp2Z
+BrainMask120/conv2d_5/Conv2D/ReadVariableOp+BrainMask120/conv2d_5/Conv2D/ReadVariableOp2\
,BrainMask120/conv2d_6/BiasAdd/ReadVariableOp,BrainMask120/conv2d_6/BiasAdd/ReadVariableOp2Z
+BrainMask120/conv2d_6/Conv2D/ReadVariableOp+BrainMask120/conv2d_6/Conv2D/ReadVariableOp2\
,BrainMask120/conv2d_7/BiasAdd/ReadVariableOp,BrainMask120/conv2d_7/BiasAdd/ReadVariableOp2Z
+BrainMask120/conv2d_7/Conv2D/ReadVariableOp+BrainMask120/conv2d_7/Conv2D/ReadVariableOp2\
,BrainMask120/conv2d_8/BiasAdd/ReadVariableOp,BrainMask120/conv2d_8/BiasAdd/ReadVariableOp2Z
+BrainMask120/conv2d_8/Conv2D/ReadVariableOp+BrainMask120/conv2d_8/Conv2D/ReadVariableOp2\
,BrainMask120/conv2d_9/BiasAdd/ReadVariableOp,BrainMask120/conv2d_9/BiasAdd/ReadVariableOp2Z
+BrainMask120/conv2d_9/Conv2D/ReadVariableOp+BrainMask120/conv2d_9/Conv2D/ReadVariableOp2l
4BrainMask120/conv2d_transpose/BiasAdd/ReadVariableOp4BrainMask120/conv2d_transpose/BiasAdd/ReadVariableOp2~
=BrainMask120/conv2d_transpose/conv2d_transpose/ReadVariableOp=BrainMask120/conv2d_transpose/conv2d_transpose/ReadVariableOp2p
6BrainMask120/conv2d_transpose_1/BiasAdd/ReadVariableOp6BrainMask120/conv2d_transpose_1/BiasAdd/ReadVariableOp2В
?BrainMask120/conv2d_transpose_1/conv2d_transpose/ReadVariableOp?BrainMask120/conv2d_transpose_1/conv2d_transpose/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:X T
/
_output_shapes
:         xx
!
_user_specified_name	input_1
Р
Ь
'__inference_conv2d_1_layer_call_fn_1353

inputs!
unknown:
	unknown_0:
identityИвStatefulPartitionedCallс
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         xx*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *J
fERC
A__inference_conv2d_1_layer_call_and_return_conditional_losses_789w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         xx<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         xx: : 22
StatefulPartitionedCallStatefulPartitionedCall:$ 

_user_specified_name1349:$ 

_user_specified_name1347:W S
/
_output_shapes
:         xx
 
_user_specified_nameinputs
щ
П
"__inference_signature_wrapper_1324
input_1!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3: 
	unknown_4: #
	unknown_5:  
	unknown_6: #
	unknown_7: @
	unknown_8:@#
	unknown_9:@@

unknown_10:@$

unknown_11: @

unknown_12: $

unknown_13:@ 

unknown_14: $

unknown_15:  

unknown_16: $

unknown_17: 

unknown_18:$

unknown_19: 

unknown_20:$

unknown_21:

unknown_22:$

unknown_23:

unknown_24:
identityИвStatefulPartitionedCallЖ
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24*&
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         xx*<
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *'
f"R 
__inference__wrapped_model_656w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         xx<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:         xx: : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:$ 

_user_specified_name1320:$ 

_user_specified_name1318:$ 

_user_specified_name1316:$ 

_user_specified_name1314:$ 

_user_specified_name1312:$ 

_user_specified_name1310:$ 

_user_specified_name1308:$ 

_user_specified_name1306:$ 

_user_specified_name1304:$ 

_user_specified_name1302:$ 

_user_specified_name1300:$ 

_user_specified_name1298:$ 

_user_specified_name1296:$ 

_user_specified_name1294:$ 

_user_specified_name1292:$ 

_user_specified_name1290:$
 

_user_specified_name1288:$	 

_user_specified_name1286:$ 

_user_specified_name1284:$ 

_user_specified_name1282:$ 

_user_specified_name1280:$ 

_user_specified_name1278:$ 

_user_specified_name1276:$ 

_user_specified_name1274:$ 

_user_specified_name1272:$ 

_user_specified_name1270:X T
/
_output_shapes
:         xx
!
_user_specified_name	input_1
Р
d
H__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_671

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
░
·
A__inference_conv2d_8_layer_call_and_return_conditional_losses_929

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Щ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         xx*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         xxX
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         xxi
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         xxS
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         xx : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:         xx 
 
_user_specified_nameinputs
Р
Ь
'__inference_conv2d_8_layer_call_fn_1623

inputs!
unknown: 
	unknown_0:
identityИвStatefulPartitionedCallс
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         xx*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *J
fERC
A__inference_conv2d_8_layer_call_and_return_conditional_losses_929w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         xx<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         xx : : 22
StatefulPartitionedCallStatefulPartitionedCall:$ 

_user_specified_name1619:$ 

_user_specified_name1617:W S
/
_output_shapes
:         xx 
 
_user_specified_nameinputs
Р
Ь
'__inference_conv2d_4_layer_call_fn_1433

inputs!
unknown: @
	unknown_0:@
identityИвStatefulPartitionedCallс
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *J
fERC
A__inference_conv2d_4_layer_call_and_return_conditional_losses_839w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         @<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:          : : 22
StatefulPartitionedCallStatefulPartitionedCall:$ 

_user_specified_name1429:$ 

_user_specified_name1427:W S
/
_output_shapes
:          
 
_user_specified_nameinputs
▒
√
B__inference_conv2d_9_layer_call_and_return_conditional_losses_1654

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Щ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         xx*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         xxX
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         xxi
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         xxS
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         xx: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:         xx
 
_user_specified_nameinputs
Щ
Ш
+__inference_BrainMask120_layer_call_fn_1098
input_1!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3: 
	unknown_4: #
	unknown_5:  
	unknown_6: #
	unknown_7: @
	unknown_8:@#
	unknown_9:@@

unknown_10:@$

unknown_11: @

unknown_12: $

unknown_13:@ 

unknown_14: $

unknown_15:  

unknown_16: $

unknown_17: 

unknown_18:$

unknown_19: 

unknown_20:$

unknown_21:

unknown_22:$

unknown_23:

unknown_24:
identityИвStatefulPartitionedCallн
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24*&
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         xx*<
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_BrainMask120_layer_call_and_return_conditional_losses_968w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         xx<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:         xx: : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:$ 

_user_specified_name1094:$ 

_user_specified_name1092:$ 

_user_specified_name1090:$ 

_user_specified_name1088:$ 

_user_specified_name1086:$ 

_user_specified_name1084:$ 

_user_specified_name1082:$ 

_user_specified_name1080:$ 

_user_specified_name1078:$ 

_user_specified_name1076:$ 

_user_specified_name1074:$ 

_user_specified_name1072:$ 

_user_specified_name1070:$ 

_user_specified_name1068:$ 

_user_specified_name1066:$ 

_user_specified_name1064:$
 

_user_specified_name1062:$	 

_user_specified_name1060:$ 

_user_specified_name1058:$ 

_user_specified_name1056:$ 

_user_specified_name1054:$ 

_user_specified_name1052:$ 

_user_specified_name1050:$ 

_user_specified_name1048:$ 

_user_specified_name1046:$ 

_user_specified_name1044:X T
/
_output_shapes
:         xx
!
_user_specified_name	input_1
▒
√
B__inference_conv2d_1_layer_call_and_return_conditional_losses_1364

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Щ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         xx*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         xxX
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         xxi
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         xxS
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         xx: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:         xx
 
_user_specified_nameinputs
О
b
F__inference_max_pooling2d_layer_call_and_return_conditional_losses_661

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
х═
Ч
__inference__traced_save_1852
file_prefix>
$read_disablecopyonread_conv2d_kernel:2
$read_1_disablecopyonread_conv2d_bias:B
(read_2_disablecopyonread_conv2d_1_kernel:4
&read_3_disablecopyonread_conv2d_1_bias:B
(read_4_disablecopyonread_conv2d_2_kernel: 4
&read_5_disablecopyonread_conv2d_2_bias: B
(read_6_disablecopyonread_conv2d_3_kernel:  4
&read_7_disablecopyonread_conv2d_3_bias: B
(read_8_disablecopyonread_conv2d_4_kernel: @4
&read_9_disablecopyonread_conv2d_4_bias:@C
)read_10_disablecopyonread_conv2d_5_kernel:@@5
'read_11_disablecopyonread_conv2d_5_bias:@K
1read_12_disablecopyonread_conv2d_transpose_kernel: @=
/read_13_disablecopyonread_conv2d_transpose_bias: C
)read_14_disablecopyonread_conv2d_6_kernel:@ 5
'read_15_disablecopyonread_conv2d_6_bias: C
)read_16_disablecopyonread_conv2d_7_kernel:  5
'read_17_disablecopyonread_conv2d_7_bias: M
3read_18_disablecopyonread_conv2d_transpose_1_kernel: ?
1read_19_disablecopyonread_conv2d_transpose_1_bias:C
)read_20_disablecopyonread_conv2d_8_kernel: 5
'read_21_disablecopyonread_conv2d_8_bias:C
)read_22_disablecopyonread_conv2d_9_kernel:5
'read_23_disablecopyonread_conv2d_9_bias:D
*read_24_disablecopyonread_conv2d_10_kernel:6
(read_25_disablecopyonread_conv2d_10_bias:
savev2_const
identity_53ИвMergeV2CheckpointsвRead/DisableCopyOnReadвRead/ReadVariableOpвRead_1/DisableCopyOnReadвRead_1/ReadVariableOpвRead_10/DisableCopyOnReadвRead_10/ReadVariableOpвRead_11/DisableCopyOnReadвRead_11/ReadVariableOpвRead_12/DisableCopyOnReadвRead_12/ReadVariableOpвRead_13/DisableCopyOnReadвRead_13/ReadVariableOpвRead_14/DisableCopyOnReadвRead_14/ReadVariableOpвRead_15/DisableCopyOnReadвRead_15/ReadVariableOpвRead_16/DisableCopyOnReadвRead_16/ReadVariableOpвRead_17/DisableCopyOnReadвRead_17/ReadVariableOpвRead_18/DisableCopyOnReadвRead_18/ReadVariableOpвRead_19/DisableCopyOnReadвRead_19/ReadVariableOpвRead_2/DisableCopyOnReadвRead_2/ReadVariableOpвRead_20/DisableCopyOnReadвRead_20/ReadVariableOpвRead_21/DisableCopyOnReadвRead_21/ReadVariableOpвRead_22/DisableCopyOnReadвRead_22/ReadVariableOpвRead_23/DisableCopyOnReadвRead_23/ReadVariableOpвRead_24/DisableCopyOnReadвRead_24/ReadVariableOpвRead_25/DisableCopyOnReadвRead_25/ReadVariableOpвRead_3/DisableCopyOnReadвRead_3/ReadVariableOpвRead_4/DisableCopyOnReadвRead_4/ReadVariableOpвRead_5/DisableCopyOnReadвRead_5/ReadVariableOpвRead_6/DisableCopyOnReadвRead_6/ReadVariableOpвRead_7/DisableCopyOnReadвRead_7/ReadVariableOpвRead_8/DisableCopyOnReadвRead_8/ReadVariableOpвRead_9/DisableCopyOnReadвRead_9/ReadVariableOpw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/partБ
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : У
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: v
Read/DisableCopyOnReadDisableCopyOnRead$read_disablecopyonread_conv2d_kernel"/device:CPU:0*
_output_shapes
 и
Read/ReadVariableOpReadVariableOp$read_disablecopyonread_conv2d_kernel^Read/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0q
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:i

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*&
_output_shapes
:x
Read_1/DisableCopyOnReadDisableCopyOnRead$read_1_disablecopyonread_conv2d_bias"/device:CPU:0*
_output_shapes
 а
Read_1/ReadVariableOpReadVariableOp$read_1_disablecopyonread_conv2d_bias^Read_1/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0i

Identity_2IdentityRead_1/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:_

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes
:|
Read_2/DisableCopyOnReadDisableCopyOnRead(read_2_disablecopyonread_conv2d_1_kernel"/device:CPU:0*
_output_shapes
 ░
Read_2/ReadVariableOpReadVariableOp(read_2_disablecopyonread_conv2d_1_kernel^Read_2/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0u

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:k

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*&
_output_shapes
:z
Read_3/DisableCopyOnReadDisableCopyOnRead&read_3_disablecopyonread_conv2d_1_bias"/device:CPU:0*
_output_shapes
 в
Read_3/ReadVariableOpReadVariableOp&read_3_disablecopyonread_conv2d_1_bias^Read_3/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0i

Identity_6IdentityRead_3/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:_

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes
:|
Read_4/DisableCopyOnReadDisableCopyOnRead(read_4_disablecopyonread_conv2d_2_kernel"/device:CPU:0*
_output_shapes
 ░
Read_4/ReadVariableOpReadVariableOp(read_4_disablecopyonread_conv2d_2_kernel^Read_4/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: *
dtype0u

Identity_8IdentityRead_4/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: k

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*&
_output_shapes
: z
Read_5/DisableCopyOnReadDisableCopyOnRead&read_5_disablecopyonread_conv2d_2_bias"/device:CPU:0*
_output_shapes
 в
Read_5/ReadVariableOpReadVariableOp&read_5_disablecopyonread_conv2d_2_bias^Read_5/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0j
Identity_10IdentityRead_5/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*
_output_shapes
: |
Read_6/DisableCopyOnReadDisableCopyOnRead(read_6_disablecopyonread_conv2d_3_kernel"/device:CPU:0*
_output_shapes
 ░
Read_6/ReadVariableOpReadVariableOp(read_6_disablecopyonread_conv2d_3_kernel^Read_6/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:  *
dtype0v
Identity_12IdentityRead_6/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:  m
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0*&
_output_shapes
:  z
Read_7/DisableCopyOnReadDisableCopyOnRead&read_7_disablecopyonread_conv2d_3_bias"/device:CPU:0*
_output_shapes
 в
Read_7/ReadVariableOpReadVariableOp&read_7_disablecopyonread_conv2d_3_bias^Read_7/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0j
Identity_14IdentityRead_7/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes
: |
Read_8/DisableCopyOnReadDisableCopyOnRead(read_8_disablecopyonread_conv2d_4_kernel"/device:CPU:0*
_output_shapes
 ░
Read_8/ReadVariableOpReadVariableOp(read_8_disablecopyonread_conv2d_4_kernel^Read_8/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: @*
dtype0v
Identity_16IdentityRead_8/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: @m
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0*&
_output_shapes
: @z
Read_9/DisableCopyOnReadDisableCopyOnRead&read_9_disablecopyonread_conv2d_4_bias"/device:CPU:0*
_output_shapes
 в
Read_9/ReadVariableOpReadVariableOp&read_9_disablecopyonread_conv2d_4_bias^Read_9/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0j
Identity_18IdentityRead_9/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes
:@~
Read_10/DisableCopyOnReadDisableCopyOnRead)read_10_disablecopyonread_conv2d_5_kernel"/device:CPU:0*
_output_shapes
 │
Read_10/ReadVariableOpReadVariableOp)read_10_disablecopyonread_conv2d_5_kernel^Read_10/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@@*
dtype0w
Identity_20IdentityRead_10/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@@m
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0*&
_output_shapes
:@@|
Read_11/DisableCopyOnReadDisableCopyOnRead'read_11_disablecopyonread_conv2d_5_bias"/device:CPU:0*
_output_shapes
 е
Read_11/ReadVariableOpReadVariableOp'read_11_disablecopyonread_conv2d_5_bias^Read_11/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_22IdentityRead_11/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0*
_output_shapes
:@Ж
Read_12/DisableCopyOnReadDisableCopyOnRead1read_12_disablecopyonread_conv2d_transpose_kernel"/device:CPU:0*
_output_shapes
 ╗
Read_12/ReadVariableOpReadVariableOp1read_12_disablecopyonread_conv2d_transpose_kernel^Read_12/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: @*
dtype0w
Identity_24IdentityRead_12/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: @m
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0*&
_output_shapes
: @Д
Read_13/DisableCopyOnReadDisableCopyOnRead/read_13_disablecopyonread_conv2d_transpose_bias"/device:CPU:0*
_output_shapes
 н
Read_13/ReadVariableOpReadVariableOp/read_13_disablecopyonread_conv2d_transpose_bias^Read_13/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_26IdentityRead_13/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0*
_output_shapes
: ~
Read_14/DisableCopyOnReadDisableCopyOnRead)read_14_disablecopyonread_conv2d_6_kernel"/device:CPU:0*
_output_shapes
 │
Read_14/ReadVariableOpReadVariableOp)read_14_disablecopyonread_conv2d_6_kernel^Read_14/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@ *
dtype0w
Identity_28IdentityRead_14/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@ m
Identity_29IdentityIdentity_28:output:0"/device:CPU:0*
T0*&
_output_shapes
:@ |
Read_15/DisableCopyOnReadDisableCopyOnRead'read_15_disablecopyonread_conv2d_6_bias"/device:CPU:0*
_output_shapes
 е
Read_15/ReadVariableOpReadVariableOp'read_15_disablecopyonread_conv2d_6_bias^Read_15/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_30IdentityRead_15/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_31IdentityIdentity_30:output:0"/device:CPU:0*
T0*
_output_shapes
: ~
Read_16/DisableCopyOnReadDisableCopyOnRead)read_16_disablecopyonread_conv2d_7_kernel"/device:CPU:0*
_output_shapes
 │
Read_16/ReadVariableOpReadVariableOp)read_16_disablecopyonread_conv2d_7_kernel^Read_16/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:  *
dtype0w
Identity_32IdentityRead_16/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:  m
Identity_33IdentityIdentity_32:output:0"/device:CPU:0*
T0*&
_output_shapes
:  |
Read_17/DisableCopyOnReadDisableCopyOnRead'read_17_disablecopyonread_conv2d_7_bias"/device:CPU:0*
_output_shapes
 е
Read_17/ReadVariableOpReadVariableOp'read_17_disablecopyonread_conv2d_7_bias^Read_17/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_34IdentityRead_17/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_35IdentityIdentity_34:output:0"/device:CPU:0*
T0*
_output_shapes
: И
Read_18/DisableCopyOnReadDisableCopyOnRead3read_18_disablecopyonread_conv2d_transpose_1_kernel"/device:CPU:0*
_output_shapes
 ╜
Read_18/ReadVariableOpReadVariableOp3read_18_disablecopyonread_conv2d_transpose_1_kernel^Read_18/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: *
dtype0w
Identity_36IdentityRead_18/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: m
Identity_37IdentityIdentity_36:output:0"/device:CPU:0*
T0*&
_output_shapes
: Ж
Read_19/DisableCopyOnReadDisableCopyOnRead1read_19_disablecopyonread_conv2d_transpose_1_bias"/device:CPU:0*
_output_shapes
 п
Read_19/ReadVariableOpReadVariableOp1read_19_disablecopyonread_conv2d_transpose_1_bias^Read_19/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_38IdentityRead_19/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_39IdentityIdentity_38:output:0"/device:CPU:0*
T0*
_output_shapes
:~
Read_20/DisableCopyOnReadDisableCopyOnRead)read_20_disablecopyonread_conv2d_8_kernel"/device:CPU:0*
_output_shapes
 │
Read_20/ReadVariableOpReadVariableOp)read_20_disablecopyonread_conv2d_8_kernel^Read_20/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: *
dtype0w
Identity_40IdentityRead_20/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: m
Identity_41IdentityIdentity_40:output:0"/device:CPU:0*
T0*&
_output_shapes
: |
Read_21/DisableCopyOnReadDisableCopyOnRead'read_21_disablecopyonread_conv2d_8_bias"/device:CPU:0*
_output_shapes
 е
Read_21/ReadVariableOpReadVariableOp'read_21_disablecopyonread_conv2d_8_bias^Read_21/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_42IdentityRead_21/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_43IdentityIdentity_42:output:0"/device:CPU:0*
T0*
_output_shapes
:~
Read_22/DisableCopyOnReadDisableCopyOnRead)read_22_disablecopyonread_conv2d_9_kernel"/device:CPU:0*
_output_shapes
 │
Read_22/ReadVariableOpReadVariableOp)read_22_disablecopyonread_conv2d_9_kernel^Read_22/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0w
Identity_44IdentityRead_22/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:m
Identity_45IdentityIdentity_44:output:0"/device:CPU:0*
T0*&
_output_shapes
:|
Read_23/DisableCopyOnReadDisableCopyOnRead'read_23_disablecopyonread_conv2d_9_bias"/device:CPU:0*
_output_shapes
 е
Read_23/ReadVariableOpReadVariableOp'read_23_disablecopyonread_conv2d_9_bias^Read_23/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_46IdentityRead_23/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_47IdentityIdentity_46:output:0"/device:CPU:0*
T0*
_output_shapes
:
Read_24/DisableCopyOnReadDisableCopyOnRead*read_24_disablecopyonread_conv2d_10_kernel"/device:CPU:0*
_output_shapes
 ┤
Read_24/ReadVariableOpReadVariableOp*read_24_disablecopyonread_conv2d_10_kernel^Read_24/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0w
Identity_48IdentityRead_24/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:m
Identity_49IdentityIdentity_48:output:0"/device:CPU:0*
T0*&
_output_shapes
:}
Read_25/DisableCopyOnReadDisableCopyOnRead(read_25_disablecopyonread_conv2d_10_bias"/device:CPU:0*
_output_shapes
 ж
Read_25/ReadVariableOpReadVariableOp(read_25_disablecopyonread_conv2d_10_bias^Read_25/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_50IdentityRead_25/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_51IdentityIdentity_50:output:0"/device:CPU:0*
T0*
_output_shapes
:ж
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*╧
value┼B┬B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-11/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-11/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHг
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*I
value@B>B B B B B B B B B B B B B B B B B B B B B B B B B B B й
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0Identity_37:output:0Identity_39:output:0Identity_41:output:0Identity_43:output:0Identity_45:output:0Identity_47:output:0Identity_49:output:0Identity_51:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *)
dtypes
2Р
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:│
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 i
Identity_52Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: U
Identity_53IdentityIdentity_52:output:0^NoOp*
T0*
_output_shapes
: Б
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_14/DisableCopyOnRead^Read_14/ReadVariableOp^Read_15/DisableCopyOnRead^Read_15/ReadVariableOp^Read_16/DisableCopyOnRead^Read_16/ReadVariableOp^Read_17/DisableCopyOnRead^Read_17/ReadVariableOp^Read_18/DisableCopyOnRead^Read_18/ReadVariableOp^Read_19/DisableCopyOnRead^Read_19/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_20/DisableCopyOnRead^Read_20/ReadVariableOp^Read_21/DisableCopyOnRead^Read_21/ReadVariableOp^Read_22/DisableCopyOnRead^Read_22/ReadVariableOp^Read_23/DisableCopyOnRead^Read_23/ReadVariableOp^Read_24/DisableCopyOnRead^Read_24/ReadVariableOp^Read_25/DisableCopyOnRead^Read_25/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*
_output_shapes
 "#
identity_53Identity_53:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints20
Read/DisableCopyOnReadRead/DisableCopyOnRead2*
Read/ReadVariableOpRead/ReadVariableOp24
Read_1/DisableCopyOnReadRead_1/DisableCopyOnRead2.
Read_1/ReadVariableOpRead_1/ReadVariableOp26
Read_10/DisableCopyOnReadRead_10/DisableCopyOnRead20
Read_10/ReadVariableOpRead_10/ReadVariableOp26
Read_11/DisableCopyOnReadRead_11/DisableCopyOnRead20
Read_11/ReadVariableOpRead_11/ReadVariableOp26
Read_12/DisableCopyOnReadRead_12/DisableCopyOnRead20
Read_12/ReadVariableOpRead_12/ReadVariableOp26
Read_13/DisableCopyOnReadRead_13/DisableCopyOnRead20
Read_13/ReadVariableOpRead_13/ReadVariableOp26
Read_14/DisableCopyOnReadRead_14/DisableCopyOnRead20
Read_14/ReadVariableOpRead_14/ReadVariableOp26
Read_15/DisableCopyOnReadRead_15/DisableCopyOnRead20
Read_15/ReadVariableOpRead_15/ReadVariableOp26
Read_16/DisableCopyOnReadRead_16/DisableCopyOnRead20
Read_16/ReadVariableOpRead_16/ReadVariableOp26
Read_17/DisableCopyOnReadRead_17/DisableCopyOnRead20
Read_17/ReadVariableOpRead_17/ReadVariableOp26
Read_18/DisableCopyOnReadRead_18/DisableCopyOnRead20
Read_18/ReadVariableOpRead_18/ReadVariableOp26
Read_19/DisableCopyOnReadRead_19/DisableCopyOnRead20
Read_19/ReadVariableOpRead_19/ReadVariableOp24
Read_2/DisableCopyOnReadRead_2/DisableCopyOnRead2.
Read_2/ReadVariableOpRead_2/ReadVariableOp26
Read_20/DisableCopyOnReadRead_20/DisableCopyOnRead20
Read_20/ReadVariableOpRead_20/ReadVariableOp26
Read_21/DisableCopyOnReadRead_21/DisableCopyOnRead20
Read_21/ReadVariableOpRead_21/ReadVariableOp26
Read_22/DisableCopyOnReadRead_22/DisableCopyOnRead20
Read_22/ReadVariableOpRead_22/ReadVariableOp26
Read_23/DisableCopyOnReadRead_23/DisableCopyOnRead20
Read_23/ReadVariableOpRead_23/ReadVariableOp26
Read_24/DisableCopyOnReadRead_24/DisableCopyOnRead20
Read_24/ReadVariableOpRead_24/ReadVariableOp26
Read_25/DisableCopyOnReadRead_25/DisableCopyOnRead20
Read_25/ReadVariableOpRead_25/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp24
Read_4/DisableCopyOnReadRead_4/DisableCopyOnRead2.
Read_4/ReadVariableOpRead_4/ReadVariableOp24
Read_5/DisableCopyOnReadRead_5/DisableCopyOnRead2.
Read_5/ReadVariableOpRead_5/ReadVariableOp24
Read_6/DisableCopyOnReadRead_6/DisableCopyOnRead2.
Read_6/ReadVariableOpRead_6/ReadVariableOp24
Read_7/DisableCopyOnReadRead_7/DisableCopyOnRead2.
Read_7/ReadVariableOpRead_7/ReadVariableOp24
Read_8/DisableCopyOnReadRead_8/DisableCopyOnRead2.
Read_8/ReadVariableOpRead_8/ReadVariableOp24
Read_9/DisableCopyOnReadRead_9/DisableCopyOnRead2.
Read_9/ReadVariableOpRead_9/ReadVariableOp:=9

_output_shapes
: 

_user_specified_nameConst:.*
(
_user_specified_nameconv2d_10/bias:0,
*
_user_specified_nameconv2d_10/kernel:-)
'
_user_specified_nameconv2d_9/bias:/+
)
_user_specified_nameconv2d_9/kernel:-)
'
_user_specified_nameconv2d_8/bias:/+
)
_user_specified_nameconv2d_8/kernel:73
1
_user_specified_nameconv2d_transpose_1/bias:95
3
_user_specified_nameconv2d_transpose_1/kernel:-)
'
_user_specified_nameconv2d_7/bias:/+
)
_user_specified_nameconv2d_7/kernel:-)
'
_user_specified_nameconv2d_6/bias:/+
)
_user_specified_nameconv2d_6/kernel:51
/
_user_specified_nameconv2d_transpose/bias:73
1
_user_specified_nameconv2d_transpose/kernel:-)
'
_user_specified_nameconv2d_5/bias:/+
)
_user_specified_nameconv2d_5/kernel:-
)
'
_user_specified_nameconv2d_4/bias:/	+
)
_user_specified_nameconv2d_4/kernel:-)
'
_user_specified_nameconv2d_3/bias:/+
)
_user_specified_nameconv2d_3/kernel:-)
'
_user_specified_nameconv2d_2/bias:/+
)
_user_specified_nameconv2d_2/kernel:-)
'
_user_specified_nameconv2d_1/bias:/+
)
_user_specified_nameconv2d_1/kernel:+'
%
_user_specified_nameconv2d/bias:-)
'
_user_specified_nameconv2d/kernel:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix"эL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*╝
serving_defaultи
C
input_18
serving_default_input_1:0         xxE
	conv2d_108
StatefulPartitionedCall:0         xxtensorflow/serving/predict:вр
Ы
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer-6
layer_with_weights-4
layer-7
	layer_with_weights-5
	layer-8

layer_with_weights-6

layer-9
layer-10
layer_with_weights-7
layer-11
layer_with_weights-8
layer-12
layer_with_weights-9
layer-13
layer-14
layer_with_weights-10
layer-15
layer_with_weights-11
layer-16
layer_with_weights-12
layer-17
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures"
_tf_keras_network
"
_tf_keras_input_layer
▌
	variables
trainable_variables
regularization_losses
	keras_api
__call__
* &call_and_return_all_conditional_losses

!kernel
"bias
 #_jit_compiled_convolution_op"
_tf_keras_layer
▌
$	variables
%trainable_variables
&regularization_losses
'	keras_api
(__call__
*)&call_and_return_all_conditional_losses

*kernel
+bias
 ,_jit_compiled_convolution_op"
_tf_keras_layer
е
-	variables
.trainable_variables
/regularization_losses
0	keras_api
1__call__
*2&call_and_return_all_conditional_losses"
_tf_keras_layer
▌
3	variables
4trainable_variables
5regularization_losses
6	keras_api
7__call__
*8&call_and_return_all_conditional_losses

9kernel
:bias
 ;_jit_compiled_convolution_op"
_tf_keras_layer
▌
<	variables
=trainable_variables
>regularization_losses
?	keras_api
@__call__
*A&call_and_return_all_conditional_losses

Bkernel
Cbias
 D_jit_compiled_convolution_op"
_tf_keras_layer
е
E	variables
Ftrainable_variables
Gregularization_losses
H	keras_api
I__call__
*J&call_and_return_all_conditional_losses"
_tf_keras_layer
▌
K	variables
Ltrainable_variables
Mregularization_losses
N	keras_api
O__call__
*P&call_and_return_all_conditional_losses

Qkernel
Rbias
 S_jit_compiled_convolution_op"
_tf_keras_layer
▌
T	variables
Utrainable_variables
Vregularization_losses
W	keras_api
X__call__
*Y&call_and_return_all_conditional_losses

Zkernel
[bias
 \_jit_compiled_convolution_op"
_tf_keras_layer
▌
]	variables
^trainable_variables
_regularization_losses
`	keras_api
a__call__
*b&call_and_return_all_conditional_losses

ckernel
dbias
 e_jit_compiled_convolution_op"
_tf_keras_layer
е
f	variables
gtrainable_variables
hregularization_losses
i	keras_api
j__call__
*k&call_and_return_all_conditional_losses"
_tf_keras_layer
▌
l	variables
mtrainable_variables
nregularization_losses
o	keras_api
p__call__
*q&call_and_return_all_conditional_losses

rkernel
sbias
 t_jit_compiled_convolution_op"
_tf_keras_layer
▌
u	variables
vtrainable_variables
wregularization_losses
x	keras_api
y__call__
*z&call_and_return_all_conditional_losses

{kernel
|bias
 }_jit_compiled_convolution_op"
_tf_keras_layer
ф
~	variables
trainable_variables
Аregularization_losses
Б	keras_api
В__call__
+Г&call_and_return_all_conditional_losses
Дkernel
	Еbias
!Ж_jit_compiled_convolution_op"
_tf_keras_layer
л
З	variables
Иtrainable_variables
Йregularization_losses
К	keras_api
Л__call__
+М&call_and_return_all_conditional_losses"
_tf_keras_layer
ц
Н	variables
Оtrainable_variables
Пregularization_losses
Р	keras_api
С__call__
+Т&call_and_return_all_conditional_losses
Уkernel
	Фbias
!Х_jit_compiled_convolution_op"
_tf_keras_layer
ц
Ц	variables
Чtrainable_variables
Шregularization_losses
Щ	keras_api
Ъ__call__
+Ы&call_and_return_all_conditional_losses
Ьkernel
	Эbias
!Ю_jit_compiled_convolution_op"
_tf_keras_layer
ц
Я	variables
аtrainable_variables
бregularization_losses
в	keras_api
г__call__
+д&call_and_return_all_conditional_losses
еkernel
	жbias
!з_jit_compiled_convolution_op"
_tf_keras_layer
ю
!0
"1
*2
+3
94
:5
B6
C7
Q8
R9
Z10
[11
c12
d13
r14
s15
{16
|17
Д18
Е19
У20
Ф21
Ь22
Э23
е24
ж25"
trackable_list_wrapper
ю
!0
"1
*2
+3
94
:5
B6
C7
Q8
R9
Z10
[11
c12
d13
r14
s15
{16
|17
Д18
Е19
У20
Ф21
Ь22
Э23
е24
ж25"
trackable_list_wrapper
 "
trackable_list_wrapper
╧
иnon_trainable_variables
йlayers
кmetrics
 лlayer_regularization_losses
мlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
═
нtrace_0
оtrace_12Т
+__inference_BrainMask120_layer_call_fn_1098
+__inference_BrainMask120_layer_call_fn_1155╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zнtrace_0zоtrace_1
В
пtrace_0
░trace_12╟
E__inference_BrainMask120_layer_call_and_return_conditional_losses_968
F__inference_BrainMask120_layer_call_and_return_conditional_losses_1041╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zпtrace_0z░trace_1
╔B╞
__inference__wrapped_model_656input_1"Ш
С▓Н
FullArgSpec
argsЪ

jargs_0
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
-
▒serving_default"
signature_map
.
!0
"1"
trackable_list_wrapper
.
!0
"1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
▓non_trainable_variables
│layers
┤metrics
 ╡layer_regularization_losses
╢layer_metrics
	variables
trainable_variables
regularization_losses
__call__
* &call_and_return_all_conditional_losses
& "call_and_return_conditional_losses"
_generic_user_object
с
╖trace_02┬
%__inference_conv2d_layer_call_fn_1333Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╖trace_0
№
╕trace_02▌
@__inference_conv2d_layer_call_and_return_conditional_losses_1344Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╕trace_0
':%2conv2d/kernel
:2conv2d/bias
к2зд
Ы▓Ч
FullArgSpec
argsЪ
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0
.
*0
+1"
trackable_list_wrapper
.
*0
+1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
╣non_trainable_variables
║layers
╗metrics
 ╝layer_regularization_losses
╜layer_metrics
$	variables
%trainable_variables
&regularization_losses
(__call__
*)&call_and_return_all_conditional_losses
&)"call_and_return_conditional_losses"
_generic_user_object
у
╛trace_02─
'__inference_conv2d_1_layer_call_fn_1353Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╛trace_0
■
┐trace_02▀
B__inference_conv2d_1_layer_call_and_return_conditional_losses_1364Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z┐trace_0
):'2conv2d_1/kernel
:2conv2d_1/bias
к2зд
Ы▓Ч
FullArgSpec
argsЪ
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
└non_trainable_variables
┴layers
┬metrics
 ├layer_regularization_losses
─layer_metrics
-	variables
.trainable_variables
/regularization_losses
1__call__
*2&call_and_return_all_conditional_losses
&2"call_and_return_conditional_losses"
_generic_user_object
ш
┼trace_02╔
,__inference_max_pooling2d_layer_call_fn_1369Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z┼trace_0
Г
╞trace_02ф
G__inference_max_pooling2d_layer_call_and_return_conditional_losses_1374Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╞trace_0
.
90
:1"
trackable_list_wrapper
.
90
:1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
╟non_trainable_variables
╚layers
╔metrics
 ╩layer_regularization_losses
╦layer_metrics
3	variables
4trainable_variables
5regularization_losses
7__call__
*8&call_and_return_all_conditional_losses
&8"call_and_return_conditional_losses"
_generic_user_object
у
╠trace_02─
'__inference_conv2d_2_layer_call_fn_1383Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╠trace_0
■
═trace_02▀
B__inference_conv2d_2_layer_call_and_return_conditional_losses_1394Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z═trace_0
):' 2conv2d_2/kernel
: 2conv2d_2/bias
к2зд
Ы▓Ч
FullArgSpec
argsЪ
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0
.
B0
C1"
trackable_list_wrapper
.
B0
C1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
╬non_trainable_variables
╧layers
╨metrics
 ╤layer_regularization_losses
╥layer_metrics
<	variables
=trainable_variables
>regularization_losses
@__call__
*A&call_and_return_all_conditional_losses
&A"call_and_return_conditional_losses"
_generic_user_object
у
╙trace_02─
'__inference_conv2d_3_layer_call_fn_1403Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╙trace_0
■
╘trace_02▀
B__inference_conv2d_3_layer_call_and_return_conditional_losses_1414Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╘trace_0
):'  2conv2d_3/kernel
: 2conv2d_3/bias
к2зд
Ы▓Ч
FullArgSpec
argsЪ
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
╒non_trainable_variables
╓layers
╫metrics
 ╪layer_regularization_losses
┘layer_metrics
E	variables
Ftrainable_variables
Gregularization_losses
I__call__
*J&call_and_return_all_conditional_losses
&J"call_and_return_conditional_losses"
_generic_user_object
ъ
┌trace_02╦
.__inference_max_pooling2d_1_layer_call_fn_1419Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z┌trace_0
Е
█trace_02ц
I__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_1424Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z█trace_0
.
Q0
R1"
trackable_list_wrapper
.
Q0
R1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
▄non_trainable_variables
▌layers
▐metrics
 ▀layer_regularization_losses
рlayer_metrics
K	variables
Ltrainable_variables
Mregularization_losses
O__call__
*P&call_and_return_all_conditional_losses
&P"call_and_return_conditional_losses"
_generic_user_object
у
сtrace_02─
'__inference_conv2d_4_layer_call_fn_1433Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zсtrace_0
■
тtrace_02▀
B__inference_conv2d_4_layer_call_and_return_conditional_losses_1444Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zтtrace_0
):' @2conv2d_4/kernel
:@2conv2d_4/bias
к2зд
Ы▓Ч
FullArgSpec
argsЪ
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0
.
Z0
[1"
trackable_list_wrapper
.
Z0
[1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
уnon_trainable_variables
фlayers
хmetrics
 цlayer_regularization_losses
чlayer_metrics
T	variables
Utrainable_variables
Vregularization_losses
X__call__
*Y&call_and_return_all_conditional_losses
&Y"call_and_return_conditional_losses"
_generic_user_object
у
шtrace_02─
'__inference_conv2d_5_layer_call_fn_1453Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zшtrace_0
■
щtrace_02▀
B__inference_conv2d_5_layer_call_and_return_conditional_losses_1464Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zщtrace_0
):'@@2conv2d_5/kernel
:@2conv2d_5/bias
к2зд
Ы▓Ч
FullArgSpec
argsЪ
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0
.
c0
d1"
trackable_list_wrapper
.
c0
d1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
ъnon_trainable_variables
ыlayers
ьmetrics
 эlayer_regularization_losses
юlayer_metrics
]	variables
^trainable_variables
_regularization_losses
a__call__
*b&call_and_return_all_conditional_losses
&b"call_and_return_conditional_losses"
_generic_user_object
ы
яtrace_02╠
/__inference_conv2d_transpose_layer_call_fn_1473Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zяtrace_0
Ж
Ёtrace_02ч
J__inference_conv2d_transpose_layer_call_and_return_conditional_losses_1506Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЁtrace_0
1:/ @2conv2d_transpose/kernel
#:! 2conv2d_transpose/bias
к2зд
Ы▓Ч
FullArgSpec
argsЪ
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
ёnon_trainable_variables
Єlayers
єmetrics
 Їlayer_regularization_losses
їlayer_metrics
f	variables
gtrainable_variables
hregularization_losses
j__call__
*k&call_and_return_all_conditional_losses
&k"call_and_return_conditional_losses"
_generic_user_object
ц
Ўtrace_02╟
*__inference_concatenate_layer_call_fn_1512Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЎtrace_0
Б
ўtrace_02т
E__inference_concatenate_layer_call_and_return_conditional_losses_1519Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zўtrace_0
.
r0
s1"
trackable_list_wrapper
.
r0
s1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
°non_trainable_variables
∙layers
·metrics
 √layer_regularization_losses
№layer_metrics
l	variables
mtrainable_variables
nregularization_losses
p__call__
*q&call_and_return_all_conditional_losses
&q"call_and_return_conditional_losses"
_generic_user_object
у
¤trace_02─
'__inference_conv2d_6_layer_call_fn_1528Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z¤trace_0
■
■trace_02▀
B__inference_conv2d_6_layer_call_and_return_conditional_losses_1539Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z■trace_0
):'@ 2conv2d_6/kernel
: 2conv2d_6/bias
к2зд
Ы▓Ч
FullArgSpec
argsЪ
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0
.
{0
|1"
trackable_list_wrapper
.
{0
|1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
 non_trainable_variables
Аlayers
Бmetrics
 Вlayer_regularization_losses
Гlayer_metrics
u	variables
vtrainable_variables
wregularization_losses
y__call__
*z&call_and_return_all_conditional_losses
&z"call_and_return_conditional_losses"
_generic_user_object
у
Дtrace_02─
'__inference_conv2d_7_layer_call_fn_1548Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zДtrace_0
■
Еtrace_02▀
B__inference_conv2d_7_layer_call_and_return_conditional_losses_1559Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЕtrace_0
):'  2conv2d_7/kernel
: 2conv2d_7/bias
к2зд
Ы▓Ч
FullArgSpec
argsЪ
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0
0
Д0
Е1"
trackable_list_wrapper
0
Д0
Е1"
trackable_list_wrapper
 "
trackable_list_wrapper
╢
Жnon_trainable_variables
Зlayers
Иmetrics
 Йlayer_regularization_losses
Кlayer_metrics
~	variables
trainable_variables
Аregularization_losses
В__call__
+Г&call_and_return_all_conditional_losses
'Г"call_and_return_conditional_losses"
_generic_user_object
э
Лtrace_02╬
1__inference_conv2d_transpose_1_layer_call_fn_1568Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЛtrace_0
И
Мtrace_02щ
L__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_1601Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zМtrace_0
3:1 2conv2d_transpose_1/kernel
%:#2conv2d_transpose_1/bias
к2зд
Ы▓Ч
FullArgSpec
argsЪ
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
Нnon_trainable_variables
Оlayers
Пmetrics
 Рlayer_regularization_losses
Сlayer_metrics
З	variables
Иtrainable_variables
Йregularization_losses
Л__call__
+М&call_and_return_all_conditional_losses
'М"call_and_return_conditional_losses"
_generic_user_object
ш
Тtrace_02╔
,__inference_concatenate_1_layer_call_fn_1607Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zТtrace_0
Г
Уtrace_02ф
G__inference_concatenate_1_layer_call_and_return_conditional_losses_1614Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zУtrace_0
0
У0
Ф1"
trackable_list_wrapper
0
У0
Ф1"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
Фnon_trainable_variables
Хlayers
Цmetrics
 Чlayer_regularization_losses
Шlayer_metrics
Н	variables
Оtrainable_variables
Пregularization_losses
С__call__
+Т&call_and_return_all_conditional_losses
'Т"call_and_return_conditional_losses"
_generic_user_object
у
Щtrace_02─
'__inference_conv2d_8_layer_call_fn_1623Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЩtrace_0
■
Ъtrace_02▀
B__inference_conv2d_8_layer_call_and_return_conditional_losses_1634Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЪtrace_0
):' 2conv2d_8/kernel
:2conv2d_8/bias
к2зд
Ы▓Ч
FullArgSpec
argsЪ
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0
0
Ь0
Э1"
trackable_list_wrapper
0
Ь0
Э1"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
Ыnon_trainable_variables
Ьlayers
Эmetrics
 Юlayer_regularization_losses
Яlayer_metrics
Ц	variables
Чtrainable_variables
Шregularization_losses
Ъ__call__
+Ы&call_and_return_all_conditional_losses
'Ы"call_and_return_conditional_losses"
_generic_user_object
у
аtrace_02─
'__inference_conv2d_9_layer_call_fn_1643Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zаtrace_0
■
бtrace_02▀
B__inference_conv2d_9_layer_call_and_return_conditional_losses_1654Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zбtrace_0
):'2conv2d_9/kernel
:2conv2d_9/bias
к2зд
Ы▓Ч
FullArgSpec
argsЪ
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0
0
е0
ж1"
trackable_list_wrapper
0
е0
ж1"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
вnon_trainable_variables
гlayers
дmetrics
 еlayer_regularization_losses
жlayer_metrics
Я	variables
аtrainable_variables
бregularization_losses
г__call__
+д&call_and_return_all_conditional_losses
'д"call_and_return_conditional_losses"
_generic_user_object
ф
зtrace_02┼
(__inference_conv2d_10_layer_call_fn_1663Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zзtrace_0
 
иtrace_02р
C__inference_conv2d_10_layer_call_and_return_conditional_losses_1674Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zиtrace_0
*:(2conv2d_10/kernel
:2conv2d_10/bias
к2зд
Ы▓Ч
FullArgSpec
argsЪ
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0
 "
trackable_list_wrapper
ж
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ъBч
+__inference_BrainMask120_layer_call_fn_1098input_1"м
е▓б
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ъBч
+__inference_BrainMask120_layer_call_fn_1155input_1"м
е▓б
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ДBБ
E__inference_BrainMask120_layer_call_and_return_conditional_losses_968input_1"м
е▓б
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЕBВ
F__inference_BrainMask120_layer_call_and_return_conditional_losses_1041input_1"м
е▓б
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╬B╦
"__inference_signature_wrapper_1324input_1"Щ
Т▓О
FullArgSpec
argsЪ 
varargs
 
varkw
 
defaults
 

kwonlyargsЪ
	jinput_1
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
╧B╠
%__inference_conv2d_layer_call_fn_1333inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ъBч
@__inference_conv2d_layer_call_and_return_conditional_losses_1344inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
╤B╬
'__inference_conv2d_1_layer_call_fn_1353inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ьBщ
B__inference_conv2d_1_layer_call_and_return_conditional_losses_1364inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
╓B╙
,__inference_max_pooling2d_layer_call_fn_1369inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ёBю
G__inference_max_pooling2d_layer_call_and_return_conditional_losses_1374inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
╤B╬
'__inference_conv2d_2_layer_call_fn_1383inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ьBщ
B__inference_conv2d_2_layer_call_and_return_conditional_losses_1394inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
╤B╬
'__inference_conv2d_3_layer_call_fn_1403inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ьBщ
B__inference_conv2d_3_layer_call_and_return_conditional_losses_1414inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
╪B╒
.__inference_max_pooling2d_1_layer_call_fn_1419inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
єBЁ
I__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_1424inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
╤B╬
'__inference_conv2d_4_layer_call_fn_1433inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ьBщ
B__inference_conv2d_4_layer_call_and_return_conditional_losses_1444inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
╤B╬
'__inference_conv2d_5_layer_call_fn_1453inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ьBщ
B__inference_conv2d_5_layer_call_and_return_conditional_losses_1464inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
┘B╓
/__inference_conv2d_transpose_layer_call_fn_1473inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЇBё
J__inference_conv2d_transpose_layer_call_and_return_conditional_losses_1506inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
рB▌
*__inference_concatenate_layer_call_fn_1512inputs_0inputs_1"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
√B°
E__inference_concatenate_layer_call_and_return_conditional_losses_1519inputs_0inputs_1"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
╤B╬
'__inference_conv2d_6_layer_call_fn_1528inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ьBщ
B__inference_conv2d_6_layer_call_and_return_conditional_losses_1539inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
╤B╬
'__inference_conv2d_7_layer_call_fn_1548inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ьBщ
B__inference_conv2d_7_layer_call_and_return_conditional_losses_1559inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
█B╪
1__inference_conv2d_transpose_1_layer_call_fn_1568inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЎBє
L__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_1601inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
тB▀
,__inference_concatenate_1_layer_call_fn_1607inputs_0inputs_1"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
¤B·
G__inference_concatenate_1_layer_call_and_return_conditional_losses_1614inputs_0inputs_1"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
╤B╬
'__inference_conv2d_8_layer_call_fn_1623inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ьBщ
B__inference_conv2d_8_layer_call_and_return_conditional_losses_1634inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
╤B╬
'__inference_conv2d_9_layer_call_fn_1643inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ьBщ
B__inference_conv2d_9_layer_call_and_return_conditional_losses_1654inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
╥B╧
(__inference_conv2d_10_layer_call_fn_1663inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
эBъ
C__inference_conv2d_10_layer_call_and_return_conditional_losses_1674inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 ч
F__inference_BrainMask120_layer_call_and_return_conditional_losses_1041Ь"!"*+9:BCQRZ[cdrs{|ДЕУФЬЭеж@в=
6в3
)К&
input_1         xx
p 

 
к "4в1
*К'
tensor_0         xx
Ъ ц
E__inference_BrainMask120_layer_call_and_return_conditional_losses_968Ь"!"*+9:BCQRZ[cdrs{|ДЕУФЬЭеж@в=
6в3
)К&
input_1         xx
p

 
к "4в1
*К'
tensor_0         xx
Ъ ┴
+__inference_BrainMask120_layer_call_fn_1098С"!"*+9:BCQRZ[cdrs{|ДЕУФЬЭеж@в=
6в3
)К&
input_1         xx
p

 
к ")К&
unknown         xx┴
+__inference_BrainMask120_layer_call_fn_1155С"!"*+9:BCQRZ[cdrs{|ДЕУФЬЭеж@в=
6в3
)К&
input_1         xx
p 

 
к ")К&
unknown         xx└
__inference__wrapped_model_656Э"!"*+9:BCQRZ[cdrs{|ДЕУФЬЭеж8в5
.в+
)К&
input_1         xx
к "=к:
8
	conv2d_10+К(
	conv2d_10         xxю
G__inference_concatenate_1_layer_call_and_return_conditional_losses_1614вjвg
`в]
[ЪX
*К'
inputs_0         xx
*К'
inputs_1         xx
к "4в1
*К'
tensor_0         xx 
Ъ ╚
,__inference_concatenate_1_layer_call_fn_1607Чjвg
`в]
[ЪX
*К'
inputs_0         xx
*К'
inputs_1         xx
к ")К&
unknown         xx ь
E__inference_concatenate_layer_call_and_return_conditional_losses_1519вjвg
`в]
[ЪX
*К'
inputs_0         << 
*К'
inputs_1         << 
к "4в1
*К'
tensor_0         <<@
Ъ ╞
*__inference_concatenate_layer_call_fn_1512Чjвg
`в]
[ЪX
*К'
inputs_0         << 
*К'
inputs_1         << 
к ")К&
unknown         <<@╝
C__inference_conv2d_10_layer_call_and_return_conditional_losses_1674uеж7в4
-в*
(К%
inputs         xx
к "4в1
*К'
tensor_0         xx
Ъ Ц
(__inference_conv2d_10_layer_call_fn_1663jеж7в4
-в*
(К%
inputs         xx
к ")К&
unknown         xx╣
B__inference_conv2d_1_layer_call_and_return_conditional_losses_1364s*+7в4
-в*
(К%
inputs         xx
к "4в1
*К'
tensor_0         xx
Ъ У
'__inference_conv2d_1_layer_call_fn_1353h*+7в4
-в*
(К%
inputs         xx
к ")К&
unknown         xx╣
B__inference_conv2d_2_layer_call_and_return_conditional_losses_1394s9:7в4
-в*
(К%
inputs         <<
к "4в1
*К'
tensor_0         << 
Ъ У
'__inference_conv2d_2_layer_call_fn_1383h9:7в4
-в*
(К%
inputs         <<
к ")К&
unknown         << ╣
B__inference_conv2d_3_layer_call_and_return_conditional_losses_1414sBC7в4
-в*
(К%
inputs         << 
к "4в1
*К'
tensor_0         << 
Ъ У
'__inference_conv2d_3_layer_call_fn_1403hBC7в4
-в*
(К%
inputs         << 
к ")К&
unknown         << ╣
B__inference_conv2d_4_layer_call_and_return_conditional_losses_1444sQR7в4
-в*
(К%
inputs          
к "4в1
*К'
tensor_0         @
Ъ У
'__inference_conv2d_4_layer_call_fn_1433hQR7в4
-в*
(К%
inputs          
к ")К&
unknown         @╣
B__inference_conv2d_5_layer_call_and_return_conditional_losses_1464sZ[7в4
-в*
(К%
inputs         @
к "4в1
*К'
tensor_0         @
Ъ У
'__inference_conv2d_5_layer_call_fn_1453hZ[7в4
-в*
(К%
inputs         @
к ")К&
unknown         @╣
B__inference_conv2d_6_layer_call_and_return_conditional_losses_1539srs7в4
-в*
(К%
inputs         <<@
к "4в1
*К'
tensor_0         << 
Ъ У
'__inference_conv2d_6_layer_call_fn_1528hrs7в4
-в*
(К%
inputs         <<@
к ")К&
unknown         << ╣
B__inference_conv2d_7_layer_call_and_return_conditional_losses_1559s{|7в4
-в*
(К%
inputs         << 
к "4в1
*К'
tensor_0         << 
Ъ У
'__inference_conv2d_7_layer_call_fn_1548h{|7в4
-в*
(К%
inputs         << 
к ")К&
unknown         << ╗
B__inference_conv2d_8_layer_call_and_return_conditional_losses_1634uУФ7в4
-в*
(К%
inputs         xx 
к "4в1
*К'
tensor_0         xx
Ъ Х
'__inference_conv2d_8_layer_call_fn_1623jУФ7в4
-в*
(К%
inputs         xx 
к ")К&
unknown         xx╗
B__inference_conv2d_9_layer_call_and_return_conditional_losses_1654uЬЭ7в4
-в*
(К%
inputs         xx
к "4в1
*К'
tensor_0         xx
Ъ Х
'__inference_conv2d_9_layer_call_fn_1643jЬЭ7в4
-в*
(К%
inputs         xx
к ")К&
unknown         xx╖
@__inference_conv2d_layer_call_and_return_conditional_losses_1344s!"7в4
-в*
(К%
inputs         xx
к "4в1
*К'
tensor_0         xx
Ъ С
%__inference_conv2d_layer_call_fn_1333h!"7в4
-в*
(К%
inputs         xx
к ")К&
unknown         xxъ
L__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_1601ЩДЕIвF
?в<
:К7
inputs+                            
к "FвC
<К9
tensor_0+                           
Ъ ─
1__inference_conv2d_transpose_1_layer_call_fn_1568ОДЕIвF
?в<
:К7
inputs+                            
к ";К8
unknown+                           ц
J__inference_conv2d_transpose_layer_call_and_return_conditional_losses_1506ЧcdIвF
?в<
:К7
inputs+                           @
к "FвC
<К9
tensor_0+                            
Ъ └
/__inference_conv2d_transpose_layer_call_fn_1473МcdIвF
?в<
:К7
inputs+                           @
к ";К8
unknown+                            є
I__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_1424еRвO
HвE
CК@
inputs4                                    
к "OвL
EКB
tensor_04                                    
Ъ ═
.__inference_max_pooling2d_1_layer_call_fn_1419ЪRвO
HвE
CК@
inputs4                                    
к "DКA
unknown4                                    ё
G__inference_max_pooling2d_layer_call_and_return_conditional_losses_1374еRвO
HвE
CК@
inputs4                                    
к "OвL
EКB
tensor_04                                    
Ъ ╦
,__inference_max_pooling2d_layer_call_fn_1369ЪRвO
HвE
CК@
inputs4                                    
к "DКA
unknown4                                    ╧
"__inference_signature_wrapper_1324и"!"*+9:BCQRZ[cdrs{|ДЕУФЬЭежCв@
в 
9к6
4
input_1)К&
input_1         xx"=к:
8
	conv2d_10+К(
	conv2d_10         xx