ō
ŻÆ
:
Add
x"T
y"T
z"T"
Ttype:
2	

ArgMax

input"T
	dimension"Tidx
output"output_type" 
Ttype:
2	"
Tidxtype0:
2	"
output_typetype0	:
2	
x
Assign
ref"T

value"T

output_ref"T"	
Ttype"
validate_shapebool("
use_lockingbool(
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
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
ģ
Conv2D

input"T
filter"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
Ō
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
=
Mul
x"T
y"T
z"T"
Ttype:
2	
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
X
PlaceholderWithDefault
input"dtype
output"dtype"
dtypetype"
shapeshape
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
:
Sub
x"T
y"T
z"T"
Ttype:
2	
s

VariableV2
ref"dtype"
shapeshape"
dtypetype"
	containerstring "
shared_namestring "serve*1.13.12b'v1.13.1-0-g6612da8951'8ŽČ

global_step/Initializer/zerosConst*
value	B	 R *
_class
loc:@global_step*
dtype0	*
_output_shapes
: 
k
global_step
VariableV2*
dtype0	*
_output_shapes
: *
shape: *
_class
loc:@global_step

global_step/AssignAssignglobal_stepglobal_step/Initializer/zeros*
T0	*
_class
loc:@global_step*
_output_shapes
: 
j
global_step/readIdentityglobal_step*
T0	*
_class
loc:@global_step*
_output_shapes
: 
e
spPlaceholder*
dtype0*'
_output_shapes
:’’’’’’’’’`*
shape:’’’’’’’’’`
g
fuelPlaceholder*
dtype0*'
_output_shapes
:’’’’’’’’’`*
shape:’’’’’’’’’`
_

sp_1/shapeConst*!
valueB"’’’’`      *
dtype0*
_output_shapes
:
U
sp_1Reshapesp
sp_1/shape*
T0*+
_output_shapes
:’’’’’’’’’`
©
0sp_conv1/kernel/Initializer/random_uniform/shapeConst*!
valueB"         *"
_class
loc:@sp_conv1/kernel*
dtype0*
_output_shapes
:

.sp_conv1/kernel/Initializer/random_uniform/minConst*
valueB
 *ŗōŗ¾*"
_class
loc:@sp_conv1/kernel*
dtype0*
_output_shapes
: 

.sp_conv1/kernel/Initializer/random_uniform/maxConst*
valueB
 *ŗōŗ>*"
_class
loc:@sp_conv1/kernel*
dtype0*
_output_shapes
: 
Ł
8sp_conv1/kernel/Initializer/random_uniform/RandomUniformRandomUniform0sp_conv1/kernel/Initializer/random_uniform/shape*
T0*"
_class
loc:@sp_conv1/kernel*
dtype0*"
_output_shapes
:
Ś
.sp_conv1/kernel/Initializer/random_uniform/subSub.sp_conv1/kernel/Initializer/random_uniform/max.sp_conv1/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@sp_conv1/kernel*
_output_shapes
: 
š
.sp_conv1/kernel/Initializer/random_uniform/mulMul8sp_conv1/kernel/Initializer/random_uniform/RandomUniform.sp_conv1/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@sp_conv1/kernel*"
_output_shapes
:
ā
*sp_conv1/kernel/Initializer/random_uniformAdd.sp_conv1/kernel/Initializer/random_uniform/mul.sp_conv1/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@sp_conv1/kernel*"
_output_shapes
:

sp_conv1/kernel
VariableV2*"
_class
loc:@sp_conv1/kernel*
dtype0*"
_output_shapes
:*
shape:
®
sp_conv1/kernel/AssignAssignsp_conv1/kernel*sp_conv1/kernel/Initializer/random_uniform*"
_output_shapes
:*
T0*"
_class
loc:@sp_conv1/kernel

sp_conv1/kernel/readIdentitysp_conv1/kernel*
T0*"
_class
loc:@sp_conv1/kernel*"
_output_shapes
:

sp_conv1/bias/Initializer/zerosConst*
valueB*    * 
_class
loc:@sp_conv1/bias*
dtype0*
_output_shapes
:
w
sp_conv1/bias
VariableV2* 
_class
loc:@sp_conv1/bias*
dtype0*
_output_shapes
:*
shape:

sp_conv1/bias/AssignAssignsp_conv1/biassp_conv1/bias/Initializer/zeros*
T0* 
_class
loc:@sp_conv1/bias*
_output_shapes
:
t
sp_conv1/bias/readIdentitysp_conv1/bias*
_output_shapes
:*
T0* 
_class
loc:@sp_conv1/bias
`
sp_conv1/dilation_rateConst*
valueB:*
dtype0*
_output_shapes
:
`
sp_conv1/conv1d/ExpandDims/dimConst*
value	B :*
dtype0*
_output_shapes
: 

sp_conv1/conv1d/ExpandDims
ExpandDimssp_1sp_conv1/conv1d/ExpandDims/dim*
T0*/
_output_shapes
:’’’’’’’’’`
b
 sp_conv1/conv1d/ExpandDims_1/dimConst*
dtype0*
_output_shapes
: *
value	B : 

sp_conv1/conv1d/ExpandDims_1
ExpandDimssp_conv1/kernel/read sp_conv1/conv1d/ExpandDims_1/dim*&
_output_shapes
:*
T0
¼
sp_conv1/conv1d/Conv2DConv2Dsp_conv1/conv1d/ExpandDimssp_conv1/conv1d/ExpandDims_1*
T0*
strides
*/
_output_shapes
:’’’’’’’’’`*
paddingSAME

sp_conv1/conv1d/SqueezeSqueezesp_conv1/conv1d/Conv2D*+
_output_shapes
:’’’’’’’’’`*
squeeze_dims
*
T0
~
sp_conv1/BiasAddBiasAddsp_conv1/conv1d/Squeezesp_conv1/bias/read*+
_output_shapes
:’’’’’’’’’`*
T0
]
sp_conv1/ReluRelusp_conv1/BiasAdd*
T0*+
_output_shapes
:’’’’’’’’’`
Y
sp_pool1/ExpandDims/dimConst*
value	B :*
dtype0*
_output_shapes
: 

sp_pool1/ExpandDims
ExpandDimssp_conv1/Relusp_pool1/ExpandDims/dim*/
_output_shapes
:’’’’’’’’’`*
T0

sp_pool1/MaxPoolMaxPoolsp_pool1/ExpandDims*
ksize
*
paddingVALID*
strides
*/
_output_shapes
:’’’’’’’’’0
z
sp_pool1/SqueezeSqueezesp_pool1/MaxPool*
T0*+
_output_shapes
:’’’’’’’’’0*
squeeze_dims

©
0sp_conv2/kernel/Initializer/random_uniform/shapeConst*!
valueB"         *"
_class
loc:@sp_conv2/kernel*
dtype0*
_output_shapes
:

.sp_conv2/kernel/Initializer/random_uniform/minConst*
valueB
 *.łd¾*"
_class
loc:@sp_conv2/kernel*
dtype0*
_output_shapes
: 

.sp_conv2/kernel/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *.łd>*"
_class
loc:@sp_conv2/kernel
Ł
8sp_conv2/kernel/Initializer/random_uniform/RandomUniformRandomUniform0sp_conv2/kernel/Initializer/random_uniform/shape*
T0*"
_class
loc:@sp_conv2/kernel*
dtype0*"
_output_shapes
:
Ś
.sp_conv2/kernel/Initializer/random_uniform/subSub.sp_conv2/kernel/Initializer/random_uniform/max.sp_conv2/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*"
_class
loc:@sp_conv2/kernel
š
.sp_conv2/kernel/Initializer/random_uniform/mulMul8sp_conv2/kernel/Initializer/random_uniform/RandomUniform.sp_conv2/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@sp_conv2/kernel*"
_output_shapes
:
ā
*sp_conv2/kernel/Initializer/random_uniformAdd.sp_conv2/kernel/Initializer/random_uniform/mul.sp_conv2/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@sp_conv2/kernel*"
_output_shapes
:

sp_conv2/kernel
VariableV2*
shape:*"
_class
loc:@sp_conv2/kernel*
dtype0*"
_output_shapes
:
®
sp_conv2/kernel/AssignAssignsp_conv2/kernel*sp_conv2/kernel/Initializer/random_uniform*"
_output_shapes
:*
T0*"
_class
loc:@sp_conv2/kernel

sp_conv2/kernel/readIdentitysp_conv2/kernel*"
_output_shapes
:*
T0*"
_class
loc:@sp_conv2/kernel

sp_conv2/bias/Initializer/zerosConst*
valueB*    * 
_class
loc:@sp_conv2/bias*
dtype0*
_output_shapes
:
w
sp_conv2/bias
VariableV2*
shape:* 
_class
loc:@sp_conv2/bias*
dtype0*
_output_shapes
:

sp_conv2/bias/AssignAssignsp_conv2/biassp_conv2/bias/Initializer/zeros*
T0* 
_class
loc:@sp_conv2/bias*
_output_shapes
:
t
sp_conv2/bias/readIdentitysp_conv2/bias*
T0* 
_class
loc:@sp_conv2/bias*
_output_shapes
:
`
sp_conv2/dilation_rateConst*
valueB:*
dtype0*
_output_shapes
:
`
sp_conv2/conv1d/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
value	B :

sp_conv2/conv1d/ExpandDims
ExpandDimssp_pool1/Squeezesp_conv2/conv1d/ExpandDims/dim*
T0*/
_output_shapes
:’’’’’’’’’0
b
 sp_conv2/conv1d/ExpandDims_1/dimConst*
value	B : *
dtype0*
_output_shapes
: 

sp_conv2/conv1d/ExpandDims_1
ExpandDimssp_conv2/kernel/read sp_conv2/conv1d/ExpandDims_1/dim*
T0*&
_output_shapes
:
¼
sp_conv2/conv1d/Conv2DConv2Dsp_conv2/conv1d/ExpandDimssp_conv2/conv1d/ExpandDims_1*
strides
*/
_output_shapes
:’’’’’’’’’0*
paddingSAME*
T0

sp_conv2/conv1d/SqueezeSqueezesp_conv2/conv1d/Conv2D*
squeeze_dims
*
T0*+
_output_shapes
:’’’’’’’’’0
~
sp_conv2/BiasAddBiasAddsp_conv2/conv1d/Squeezesp_conv2/bias/read*
T0*+
_output_shapes
:’’’’’’’’’0
]
sp_conv2/ReluRelusp_conv2/BiasAdd*+
_output_shapes
:’’’’’’’’’0*
T0
Y
sp_pool2/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
value	B :

sp_pool2/ExpandDims
ExpandDimssp_conv2/Relusp_pool2/ExpandDims/dim*
T0*/
_output_shapes
:’’’’’’’’’0

sp_pool2/MaxPoolMaxPoolsp_pool2/ExpandDims*
ksize
*
paddingVALID*
strides
*/
_output_shapes
:’’’’’’’’’
z
sp_pool2/SqueezeSqueezesp_pool2/MaxPool*+
_output_shapes
:’’’’’’’’’*
squeeze_dims
*
T0
d
sp_pool2_flat/shapeConst*
dtype0*
_output_shapes
:*
valueB"’’’’  
r
sp_pool2_flatReshapesp_pool2/Squeezesp_pool2_flat/shape*
T0*(
_output_shapes
:’’’’’’’’’
a
fuel_1/shapeConst*
dtype0*
_output_shapes
:*!
valueB"’’’’`      
[
fuel_1Reshapefuelfuel_1/shape*
T0*+
_output_shapes
:’’’’’’’’’`
­
2fuel_conv1/kernel/Initializer/random_uniform/shapeConst*!
valueB"         *$
_class
loc:@fuel_conv1/kernel*
dtype0*
_output_shapes
:

0fuel_conv1/kernel/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *ŗōŗ¾*$
_class
loc:@fuel_conv1/kernel

0fuel_conv1/kernel/Initializer/random_uniform/maxConst*
valueB
 *ŗōŗ>*$
_class
loc:@fuel_conv1/kernel*
dtype0*
_output_shapes
: 
ß
:fuel_conv1/kernel/Initializer/random_uniform/RandomUniformRandomUniform2fuel_conv1/kernel/Initializer/random_uniform/shape*
T0*$
_class
loc:@fuel_conv1/kernel*
dtype0*"
_output_shapes
:
ā
0fuel_conv1/kernel/Initializer/random_uniform/subSub0fuel_conv1/kernel/Initializer/random_uniform/max0fuel_conv1/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*$
_class
loc:@fuel_conv1/kernel
ų
0fuel_conv1/kernel/Initializer/random_uniform/mulMul:fuel_conv1/kernel/Initializer/random_uniform/RandomUniform0fuel_conv1/kernel/Initializer/random_uniform/sub*
T0*$
_class
loc:@fuel_conv1/kernel*"
_output_shapes
:
ź
,fuel_conv1/kernel/Initializer/random_uniformAdd0fuel_conv1/kernel/Initializer/random_uniform/mul0fuel_conv1/kernel/Initializer/random_uniform/min*
T0*$
_class
loc:@fuel_conv1/kernel*"
_output_shapes
:

fuel_conv1/kernel
VariableV2*$
_class
loc:@fuel_conv1/kernel*
dtype0*"
_output_shapes
:*
shape:
¶
fuel_conv1/kernel/AssignAssignfuel_conv1/kernel,fuel_conv1/kernel/Initializer/random_uniform*
T0*$
_class
loc:@fuel_conv1/kernel*"
_output_shapes
:

fuel_conv1/kernel/readIdentityfuel_conv1/kernel*
T0*$
_class
loc:@fuel_conv1/kernel*"
_output_shapes
:

!fuel_conv1/bias/Initializer/zerosConst*
valueB*    *"
_class
loc:@fuel_conv1/bias*
dtype0*
_output_shapes
:
{
fuel_conv1/bias
VariableV2*
shape:*"
_class
loc:@fuel_conv1/bias*
dtype0*
_output_shapes
:

fuel_conv1/bias/AssignAssignfuel_conv1/bias!fuel_conv1/bias/Initializer/zeros*
T0*"
_class
loc:@fuel_conv1/bias*
_output_shapes
:
z
fuel_conv1/bias/readIdentityfuel_conv1/bias*
T0*"
_class
loc:@fuel_conv1/bias*
_output_shapes
:
b
fuel_conv1/dilation_rateConst*
dtype0*
_output_shapes
:*
valueB:
b
 fuel_conv1/conv1d/ExpandDims/dimConst*
value	B :*
dtype0*
_output_shapes
: 

fuel_conv1/conv1d/ExpandDims
ExpandDimsfuel_1 fuel_conv1/conv1d/ExpandDims/dim*
T0*/
_output_shapes
:’’’’’’’’’`
d
"fuel_conv1/conv1d/ExpandDims_1/dimConst*
dtype0*
_output_shapes
: *
value	B : 

fuel_conv1/conv1d/ExpandDims_1
ExpandDimsfuel_conv1/kernel/read"fuel_conv1/conv1d/ExpandDims_1/dim*
T0*&
_output_shapes
:
Ā
fuel_conv1/conv1d/Conv2DConv2Dfuel_conv1/conv1d/ExpandDimsfuel_conv1/conv1d/ExpandDims_1*
paddingSAME*
T0*
strides
*/
_output_shapes
:’’’’’’’’’`

fuel_conv1/conv1d/SqueezeSqueezefuel_conv1/conv1d/Conv2D*+
_output_shapes
:’’’’’’’’’`*
squeeze_dims
*
T0

fuel_conv1/BiasAddBiasAddfuel_conv1/conv1d/Squeezefuel_conv1/bias/read*
T0*+
_output_shapes
:’’’’’’’’’`
a
fuel_conv1/ReluRelufuel_conv1/BiasAdd*+
_output_shapes
:’’’’’’’’’`*
T0
[
fuel_pool1/ExpandDims/dimConst*
value	B :*
dtype0*
_output_shapes
: 

fuel_pool1/ExpandDims
ExpandDimsfuel_conv1/Relufuel_pool1/ExpandDims/dim*
T0*/
_output_shapes
:’’’’’’’’’`
”
fuel_pool1/MaxPoolMaxPoolfuel_pool1/ExpandDims*
ksize
*
paddingVALID*
strides
*/
_output_shapes
:’’’’’’’’’0
~
fuel_pool1/SqueezeSqueezefuel_pool1/MaxPool*
squeeze_dims
*
T0*+
_output_shapes
:’’’’’’’’’0
­
2fuel_conv2/kernel/Initializer/random_uniform/shapeConst*!
valueB"         *$
_class
loc:@fuel_conv2/kernel*
dtype0*
_output_shapes
:

0fuel_conv2/kernel/Initializer/random_uniform/minConst*
valueB
 *.łd¾*$
_class
loc:@fuel_conv2/kernel*
dtype0*
_output_shapes
: 

0fuel_conv2/kernel/Initializer/random_uniform/maxConst*
valueB
 *.łd>*$
_class
loc:@fuel_conv2/kernel*
dtype0*
_output_shapes
: 
ß
:fuel_conv2/kernel/Initializer/random_uniform/RandomUniformRandomUniform2fuel_conv2/kernel/Initializer/random_uniform/shape*
dtype0*"
_output_shapes
:*
T0*$
_class
loc:@fuel_conv2/kernel
ā
0fuel_conv2/kernel/Initializer/random_uniform/subSub0fuel_conv2/kernel/Initializer/random_uniform/max0fuel_conv2/kernel/Initializer/random_uniform/min*
T0*$
_class
loc:@fuel_conv2/kernel*
_output_shapes
: 
ų
0fuel_conv2/kernel/Initializer/random_uniform/mulMul:fuel_conv2/kernel/Initializer/random_uniform/RandomUniform0fuel_conv2/kernel/Initializer/random_uniform/sub*
T0*$
_class
loc:@fuel_conv2/kernel*"
_output_shapes
:
ź
,fuel_conv2/kernel/Initializer/random_uniformAdd0fuel_conv2/kernel/Initializer/random_uniform/mul0fuel_conv2/kernel/Initializer/random_uniform/min*
T0*$
_class
loc:@fuel_conv2/kernel*"
_output_shapes
:

fuel_conv2/kernel
VariableV2*$
_class
loc:@fuel_conv2/kernel*
dtype0*"
_output_shapes
:*
shape:
¶
fuel_conv2/kernel/AssignAssignfuel_conv2/kernel,fuel_conv2/kernel/Initializer/random_uniform*"
_output_shapes
:*
T0*$
_class
loc:@fuel_conv2/kernel

fuel_conv2/kernel/readIdentityfuel_conv2/kernel*"
_output_shapes
:*
T0*$
_class
loc:@fuel_conv2/kernel

!fuel_conv2/bias/Initializer/zerosConst*
valueB*    *"
_class
loc:@fuel_conv2/bias*
dtype0*
_output_shapes
:
{
fuel_conv2/bias
VariableV2*"
_class
loc:@fuel_conv2/bias*
dtype0*
_output_shapes
:*
shape:

fuel_conv2/bias/AssignAssignfuel_conv2/bias!fuel_conv2/bias/Initializer/zeros*
T0*"
_class
loc:@fuel_conv2/bias*
_output_shapes
:
z
fuel_conv2/bias/readIdentityfuel_conv2/bias*
T0*"
_class
loc:@fuel_conv2/bias*
_output_shapes
:
b
fuel_conv2/dilation_rateConst*
dtype0*
_output_shapes
:*
valueB:
b
 fuel_conv2/conv1d/ExpandDims/dimConst*
value	B :*
dtype0*
_output_shapes
: 

fuel_conv2/conv1d/ExpandDims
ExpandDimsfuel_pool1/Squeeze fuel_conv2/conv1d/ExpandDims/dim*/
_output_shapes
:’’’’’’’’’0*
T0
d
"fuel_conv2/conv1d/ExpandDims_1/dimConst*
value	B : *
dtype0*
_output_shapes
: 

fuel_conv2/conv1d/ExpandDims_1
ExpandDimsfuel_conv2/kernel/read"fuel_conv2/conv1d/ExpandDims_1/dim*
T0*&
_output_shapes
:
Ā
fuel_conv2/conv1d/Conv2DConv2Dfuel_conv2/conv1d/ExpandDimsfuel_conv2/conv1d/ExpandDims_1*
paddingSAME*
T0*
strides
*/
_output_shapes
:’’’’’’’’’0

fuel_conv2/conv1d/SqueezeSqueezefuel_conv2/conv1d/Conv2D*
squeeze_dims
*
T0*+
_output_shapes
:’’’’’’’’’0

fuel_conv2/BiasAddBiasAddfuel_conv2/conv1d/Squeezefuel_conv2/bias/read*+
_output_shapes
:’’’’’’’’’0*
T0
a
fuel_conv2/ReluRelufuel_conv2/BiasAdd*+
_output_shapes
:’’’’’’’’’0*
T0
[
fuel_pool2/ExpandDims/dimConst*
value	B :*
dtype0*
_output_shapes
: 

fuel_pool2/ExpandDims
ExpandDimsfuel_conv2/Relufuel_pool2/ExpandDims/dim*/
_output_shapes
:’’’’’’’’’0*
T0
”
fuel_pool2/MaxPoolMaxPoolfuel_pool2/ExpandDims*
strides
*/
_output_shapes
:’’’’’’’’’*
ksize
*
paddingVALID
~
fuel_pool2/SqueezeSqueezefuel_pool2/MaxPool*
squeeze_dims
*
T0*+
_output_shapes
:’’’’’’’’’
f
fuel_pool2_flat/shapeConst*
valueB"’’’’  *
dtype0*
_output_shapes
:
x
fuel_pool2_flatReshapefuel_pool2/Squeezefuel_pool2_flat/shape*
T0*(
_output_shapes
:’’’’’’’’’
M
concat/axisConst*
value	B :*
dtype0*
_output_shapes
: 
{
concatConcatV2sp_pool2_flatfuel_pool2_flatconcat/axis*
T0*
N*(
_output_shapes
:’’’’’’’’’
W
dropout/IdentityIdentityconcat*(
_output_shapes
:’’’’’’’’’*
T0
”
.logits/kernel/Initializer/random_uniform/shapeConst*
valueB"      * 
_class
loc:@logits/kernel*
dtype0*
_output_shapes
:

,logits/kernel/Initializer/random_uniform/minConst*
valueB
 *ŗČ“½* 
_class
loc:@logits/kernel*
dtype0*
_output_shapes
: 

,logits/kernel/Initializer/random_uniform/maxConst*
valueB
 *ŗČ“=* 
_class
loc:@logits/kernel*
dtype0*
_output_shapes
: 
Š
6logits/kernel/Initializer/random_uniform/RandomUniformRandomUniform.logits/kernel/Initializer/random_uniform/shape*
T0* 
_class
loc:@logits/kernel*
dtype0*
_output_shapes
:	
Ņ
,logits/kernel/Initializer/random_uniform/subSub,logits/kernel/Initializer/random_uniform/max,logits/kernel/Initializer/random_uniform/min*
T0* 
_class
loc:@logits/kernel*
_output_shapes
: 
å
,logits/kernel/Initializer/random_uniform/mulMul6logits/kernel/Initializer/random_uniform/RandomUniform,logits/kernel/Initializer/random_uniform/sub*
T0* 
_class
loc:@logits/kernel*
_output_shapes
:	
×
(logits/kernel/Initializer/random_uniformAdd,logits/kernel/Initializer/random_uniform/mul,logits/kernel/Initializer/random_uniform/min*
T0* 
_class
loc:@logits/kernel*
_output_shapes
:	

logits/kernel
VariableV2* 
_class
loc:@logits/kernel*
dtype0*
_output_shapes
:	*
shape:	
£
logits/kernel/AssignAssignlogits/kernel(logits/kernel/Initializer/random_uniform*
_output_shapes
:	*
T0* 
_class
loc:@logits/kernel
y
logits/kernel/readIdentitylogits/kernel*
T0* 
_class
loc:@logits/kernel*
_output_shapes
:	

logits/bias/Initializer/zerosConst*
valueB*    *
_class
loc:@logits/bias*
dtype0*
_output_shapes
:
s
logits/bias
VariableV2*
_class
loc:@logits/bias*
dtype0*
_output_shapes
:*
shape:

logits/bias/AssignAssignlogits/biaslogits/bias/Initializer/zeros*
_output_shapes
:*
T0*
_class
loc:@logits/bias
n
logits/bias/readIdentitylogits/bias*
T0*
_class
loc:@logits/bias*
_output_shapes
:
o
logits/MatMulMatMuldropout/Identitylogits/kernel/read*
T0*'
_output_shapes
:’’’’’’’’’
l
logits/BiasAddBiasAddlogits/MatMullogits/bias/read*'
_output_shapes
:’’’’’’’’’*
T0
R
ArgMax/dimensionConst*
value	B :*
dtype0*
_output_shapes
: 
`
ArgMaxArgMaxlogits/BiasAddArgMax/dimension*#
_output_shapes
:’’’’’’’’’*
T0
[
softmax_tensorSoftmaxlogits/BiasAdd*
T0*'
_output_shapes
:’’’’’’’’’

initNoOp

init_all_tablesNoOp

init_1NoOp
4

group_depsNoOp^init^init_1^init_all_tables
Y
save/filename/inputConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
n
save/filenamePlaceholderWithDefaultsave/filename/input*
shape: *
dtype0*
_output_shapes
: 
e

save/ConstPlaceholderWithDefaultsave/filename*
dtype0*
_output_shapes
: *
shape: 

save/StringJoin/inputs_1Const*
dtype0*
_output_shapes
: *<
value3B1 B+_temp_bcf4360c8d3842d5bed502f31bc1d8cf/part
d
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
N*
_output_shapes
: 
Q
save/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
k
save/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 

save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards"/device:CPU:0*
_output_shapes
: 
¢
save/SaveV2/tensor_namesConst"/device:CPU:0*Ę
value¼B¹Bfuel_conv1/biasBfuel_conv1/kernelBfuel_conv2/biasBfuel_conv2/kernelBglobal_stepBlogits/biasBlogits/kernelBsp_conv1/biasBsp_conv1/kernelBsp_conv2/biasBsp_conv2/kernel*
dtype0*
_output_shapes
:

save/SaveV2/shape_and_slicesConst"/device:CPU:0*)
value BB B B B B B B B B B B *
dtype0*
_output_shapes
:
¾
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesfuel_conv1/biasfuel_conv1/kernelfuel_conv2/biasfuel_conv2/kernelglobal_steplogits/biaslogits/kernelsp_conv1/biassp_conv1/kernelsp_conv2/biassp_conv2/kernel"/device:CPU:0*
dtypes
2	
 
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2"/device:CPU:0*
T0*'
_class
loc:@save/ShardedFilename*
_output_shapes
: 
 
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency"/device:CPU:0*
T0*
N*
_output_shapes
:
u
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const"/device:CPU:0

save/IdentityIdentity
save/Const^save/MergeV2Checkpoints^save/control_dependency"/device:CPU:0*
_output_shapes
: *
T0
„
save/RestoreV2/tensor_namesConst"/device:CPU:0*Ę
value¼B¹Bfuel_conv1/biasBfuel_conv1/kernelBfuel_conv2/biasBfuel_conv2/kernelBglobal_stepBlogits/biasBlogits/kernelBsp_conv1/biasBsp_conv1/kernelBsp_conv2/biasBsp_conv2/kernel*
dtype0*
_output_shapes
:

save/RestoreV2/shape_and_slicesConst"/device:CPU:0*)
value BB B B B B B B B B B B *
dtype0*
_output_shapes
:
Ń
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*
dtypes
2	*@
_output_shapes.
,:::::::::::

save/AssignAssignfuel_conv1/biassave/RestoreV2*
T0*"
_class
loc:@fuel_conv1/bias*
_output_shapes
:

save/Assign_1Assignfuel_conv1/kernelsave/RestoreV2:1*"
_output_shapes
:*
T0*$
_class
loc:@fuel_conv1/kernel

save/Assign_2Assignfuel_conv2/biassave/RestoreV2:2*
T0*"
_class
loc:@fuel_conv2/bias*
_output_shapes
:

save/Assign_3Assignfuel_conv2/kernelsave/RestoreV2:3*
T0*$
_class
loc:@fuel_conv2/kernel*"
_output_shapes
:
w
save/Assign_4Assignglobal_stepsave/RestoreV2:4*
T0	*
_class
loc:@global_step*
_output_shapes
: 
{
save/Assign_5Assignlogits/biassave/RestoreV2:5*
T0*
_class
loc:@logits/bias*
_output_shapes
:

save/Assign_6Assignlogits/kernelsave/RestoreV2:6*
T0* 
_class
loc:@logits/kernel*
_output_shapes
:	

save/Assign_7Assignsp_conv1/biassave/RestoreV2:7*
T0* 
_class
loc:@sp_conv1/bias*
_output_shapes
:

save/Assign_8Assignsp_conv1/kernelsave/RestoreV2:8*
T0*"
_class
loc:@sp_conv1/kernel*"
_output_shapes
:

save/Assign_9Assignsp_conv2/biassave/RestoreV2:9*
T0* 
_class
loc:@sp_conv2/bias*
_output_shapes
:

save/Assign_10Assignsp_conv2/kernelsave/RestoreV2:10*
T0*"
_class
loc:@sp_conv2/kernel*"
_output_shapes
:
É
save/restore_shardNoOp^save/Assign^save/Assign_1^save/Assign_10^save/Assign_2^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9
-
save/restore_allNoOp^save/restore_shard"<
save/Const:0save/Identity:0save/restore_all (5 @F8"č
trainable_variablesŠĶ
s
sp_conv1/kernel:0sp_conv1/kernel/Assignsp_conv1/kernel/read:02,sp_conv1/kernel/Initializer/random_uniform:08
b
sp_conv1/bias:0sp_conv1/bias/Assignsp_conv1/bias/read:02!sp_conv1/bias/Initializer/zeros:08
s
sp_conv2/kernel:0sp_conv2/kernel/Assignsp_conv2/kernel/read:02,sp_conv2/kernel/Initializer/random_uniform:08
b
sp_conv2/bias:0sp_conv2/bias/Assignsp_conv2/bias/read:02!sp_conv2/bias/Initializer/zeros:08
{
fuel_conv1/kernel:0fuel_conv1/kernel/Assignfuel_conv1/kernel/read:02.fuel_conv1/kernel/Initializer/random_uniform:08
j
fuel_conv1/bias:0fuel_conv1/bias/Assignfuel_conv1/bias/read:02#fuel_conv1/bias/Initializer/zeros:08
{
fuel_conv2/kernel:0fuel_conv2/kernel/Assignfuel_conv2/kernel/read:02.fuel_conv2/kernel/Initializer/random_uniform:08
j
fuel_conv2/bias:0fuel_conv2/bias/Assignfuel_conv2/bias/read:02#fuel_conv2/bias/Initializer/zeros:08
k
logits/kernel:0logits/kernel/Assignlogits/kernel/read:02*logits/kernel/Initializer/random_uniform:08
Z
logits/bias:0logits/bias/Assignlogits/bias/read:02logits/bias/Initializer/zeros:08"k
global_step\Z
X
global_step:0global_step/Assignglobal_step/read:02global_step/Initializer/zeros:0"ø	
	variablesŖ	§	
X
global_step:0global_step/Assignglobal_step/read:02global_step/Initializer/zeros:0
s
sp_conv1/kernel:0sp_conv1/kernel/Assignsp_conv1/kernel/read:02,sp_conv1/kernel/Initializer/random_uniform:08
b
sp_conv1/bias:0sp_conv1/bias/Assignsp_conv1/bias/read:02!sp_conv1/bias/Initializer/zeros:08
s
sp_conv2/kernel:0sp_conv2/kernel/Assignsp_conv2/kernel/read:02,sp_conv2/kernel/Initializer/random_uniform:08
b
sp_conv2/bias:0sp_conv2/bias/Assignsp_conv2/bias/read:02!sp_conv2/bias/Initializer/zeros:08
{
fuel_conv1/kernel:0fuel_conv1/kernel/Assignfuel_conv1/kernel/read:02.fuel_conv1/kernel/Initializer/random_uniform:08
j
fuel_conv1/bias:0fuel_conv1/bias/Assignfuel_conv1/bias/read:02#fuel_conv1/bias/Initializer/zeros:08
{
fuel_conv2/kernel:0fuel_conv2/kernel/Assignfuel_conv2/kernel/read:02.fuel_conv2/kernel/Initializer/random_uniform:08
j
fuel_conv2/bias:0fuel_conv2/bias/Assignfuel_conv2/bias/read:02#fuel_conv2/bias/Initializer/zeros:08
k
logits/kernel:0logits/kernel/Assignlogits/kernel/read:02*logits/kernel/Initializer/random_uniform:08
Z
logits/bias:0logits/bias/Assignlogits/bias/read:02logits/bias/Initializer/zeros:08"%
saved_model_main_op


group_deps*Ü
serving_defaultČ
!
sp
sp:0’’’’’’’’’`
%
fuel
fuel:0’’’’’’’’’`8
probabilities'
softmax_tensor:0’’’’’’’’’&
classes
ArgMax:0	’’’’’’’’’tensorflow/serving/predict