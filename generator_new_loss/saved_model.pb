ЙГ
ƒЧ
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( И
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
ј
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
.
Identity

input"T
output"T"	
Ttype
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
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
Ѕ
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
executor_typestring И®
@
StaticRegexFullMatch	
input

output
"
patternstring
ч
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
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
-
Tanh
x"T
y"T"
Ttype:

2
Ц
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И"serve*2.10.12v2.10.0-76-gfdfc646704c8•в
И
conv2d_transpose_19/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameconv2d_transpose_19/bias
Б
,conv2d_transpose_19/bias/Read/ReadVariableOpReadVariableOpconv2d_transpose_19/bias*
_output_shapes
:*
dtype0
Щ
conv2d_transpose_19/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*+
shared_nameconv2d_transpose_19/kernel
Т
.conv2d_transpose_19/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_19/kernel*'
_output_shapes
:А*
dtype0
И
conv2d_transpose_18/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*)
shared_nameconv2d_transpose_18/bias
Б
,conv2d_transpose_18/bias/Read/ReadVariableOpReadVariableOpconv2d_transpose_18/bias*
_output_shapes
:@*
dtype0
Щ
conv2d_transpose_18/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@А*+
shared_nameconv2d_transpose_18/kernel
Т
.conv2d_transpose_18/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_18/kernel*'
_output_shapes
:@А*
dtype0
Й
conv2d_transpose_17/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*)
shared_nameconv2d_transpose_17/bias
В
,conv2d_transpose_17/bias/Read/ReadVariableOpReadVariableOpconv2d_transpose_17/bias*
_output_shapes	
:А*
dtype0
Ъ
conv2d_transpose_17/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*+
shared_nameconv2d_transpose_17/kernel
У
.conv2d_transpose_17/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_17/kernel*(
_output_shapes
:АА*
dtype0
Й
conv2d_transpose_16/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*)
shared_nameconv2d_transpose_16/bias
В
,conv2d_transpose_16/bias/Read/ReadVariableOpReadVariableOpconv2d_transpose_16/bias*
_output_shapes	
:А*
dtype0
Ъ
conv2d_transpose_16/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*+
shared_nameconv2d_transpose_16/kernel
У
.conv2d_transpose_16/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_16/kernel*(
_output_shapes
:АА*
dtype0
u
conv2d_39/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*
shared_nameconv2d_39/bias
n
"conv2d_39/bias/Read/ReadVariableOpReadVariableOpconv2d_39/bias*
_output_shapes	
:А*
dtype0
Ж
conv2d_39/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*!
shared_nameconv2d_39/kernel

$conv2d_39/kernel/Read/ReadVariableOpReadVariableOpconv2d_39/kernel*(
_output_shapes
:АА*
dtype0
u
conv2d_38/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*
shared_nameconv2d_38/bias
n
"conv2d_38/bias/Read/ReadVariableOpReadVariableOpconv2d_38/bias*
_output_shapes	
:А*
dtype0
Ж
conv2d_38/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*!
shared_nameconv2d_38/kernel

$conv2d_38/kernel/Read/ReadVariableOpReadVariableOpconv2d_38/kernel*(
_output_shapes
:АА*
dtype0
u
conv2d_37/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*
shared_nameconv2d_37/bias
n
"conv2d_37/bias/Read/ReadVariableOpReadVariableOpconv2d_37/bias*
_output_shapes	
:А*
dtype0
Е
conv2d_37/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@А*!
shared_nameconv2d_37/kernel
~
$conv2d_37/kernel/Read/ReadVariableOpReadVariableOpconv2d_37/kernel*'
_output_shapes
:@А*
dtype0
t
conv2d_36/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_36/bias
m
"conv2d_36/bias/Read/ReadVariableOpReadVariableOpconv2d_36/bias*
_output_shapes
:@*
dtype0
Д
conv2d_36/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*!
shared_nameconv2d_36/kernel
}
$conv2d_36/kernel/Read/ReadVariableOpReadVariableOpconv2d_36/kernel*&
_output_shapes
:@*
dtype0
П
serving_default_input_18Placeholder*1
_output_shapes
:€€€€€€€€€АА*
dtype0*&
shape:€€€€€€€€€АА
ј
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_18conv2d_36/kernelconv2d_36/biasconv2d_37/kernelconv2d_37/biasconv2d_38/kernelconv2d_38/biasconv2d_39/kernelconv2d_39/biasconv2d_transpose_16/kernelconv2d_transpose_16/biasconv2d_transpose_17/kernelconv2d_transpose_17/biasconv2d_transpose_18/kernelconv2d_transpose_18/biasconv2d_transpose_19/kernelconv2d_transpose_19/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *-
f(R&
$__inference_signature_wrapper_532389

NoOpNoOp
“I
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*НI
valueГIBАI BщH
Ђ
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
layer_with_weights-4
layer-5
layer-6
layer_with_weights-5
layer-7
	layer-8

layer_with_weights-6

layer-9
layer-10
layer_with_weights-7
layer-11
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures*

_init_input_shape* 
»
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias
 _jit_compiled_convolution_op*
»
	variables
 trainable_variables
!regularization_losses
"	keras_api
#__call__
*$&call_and_return_all_conditional_losses

%kernel
&bias
 '_jit_compiled_convolution_op*
»
(	variables
)trainable_variables
*regularization_losses
+	keras_api
,__call__
*-&call_and_return_all_conditional_losses

.kernel
/bias
 0_jit_compiled_convolution_op*
»
1	variables
2trainable_variables
3regularization_losses
4	keras_api
5__call__
*6&call_and_return_all_conditional_losses

7kernel
8bias
 9_jit_compiled_convolution_op*
»
:	variables
;trainable_variables
<regularization_losses
=	keras_api
>__call__
*?&call_and_return_all_conditional_losses

@kernel
Abias
 B_jit_compiled_convolution_op*
О
C	variables
Dtrainable_variables
Eregularization_losses
F	keras_api
G__call__
*H&call_and_return_all_conditional_losses* 
»
I	variables
Jtrainable_variables
Kregularization_losses
L	keras_api
M__call__
*N&call_and_return_all_conditional_losses

Okernel
Pbias
 Q_jit_compiled_convolution_op*
О
R	variables
Strainable_variables
Tregularization_losses
U	keras_api
V__call__
*W&call_and_return_all_conditional_losses* 
»
X	variables
Ytrainable_variables
Zregularization_losses
[	keras_api
\__call__
*]&call_and_return_all_conditional_losses

^kernel
_bias
 `_jit_compiled_convolution_op*
О
a	variables
btrainable_variables
cregularization_losses
d	keras_api
e__call__
*f&call_and_return_all_conditional_losses* 
»
g	variables
htrainable_variables
iregularization_losses
j	keras_api
k__call__
*l&call_and_return_all_conditional_losses

mkernel
nbias
 o_jit_compiled_convolution_op*
z
0
1
%2
&3
.4
/5
76
87
@8
A9
O10
P11
^12
_13
m14
n15*
z
0
1
%2
&3
.4
/5
76
87
@8
A9
O10
P11
^12
_13
m14
n15*
* 
∞
pnon_trainable_variables

qlayers
rmetrics
slayer_regularization_losses
tlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
utrace_0
vtrace_1
wtrace_2
xtrace_3* 
6
ytrace_0
ztrace_1
{trace_2
|trace_3* 
* 

}serving_default* 
* 

0
1*

0
1*
* 
Ц
~non_trainable_variables

layers
Аmetrics
 Бlayer_regularization_losses
Вlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

Гtrace_0* 

Дtrace_0* 
`Z
VARIABLE_VALUEconv2d_36/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_36/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

%0
&1*

%0
&1*
* 
Ш
Еnon_trainable_variables
Жlayers
Зmetrics
 Иlayer_regularization_losses
Йlayer_metrics
	variables
 trainable_variables
!regularization_losses
#__call__
*$&call_and_return_all_conditional_losses
&$"call_and_return_conditional_losses*

Кtrace_0* 

Лtrace_0* 
`Z
VARIABLE_VALUEconv2d_37/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_37/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

.0
/1*

.0
/1*
* 
Ш
Мnon_trainable_variables
Нlayers
Оmetrics
 Пlayer_regularization_losses
Рlayer_metrics
(	variables
)trainable_variables
*regularization_losses
,__call__
*-&call_and_return_all_conditional_losses
&-"call_and_return_conditional_losses*

Сtrace_0* 

Тtrace_0* 
`Z
VARIABLE_VALUEconv2d_38/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_38/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

70
81*

70
81*
* 
Ш
Уnon_trainable_variables
Фlayers
Хmetrics
 Цlayer_regularization_losses
Чlayer_metrics
1	variables
2trainable_variables
3regularization_losses
5__call__
*6&call_and_return_all_conditional_losses
&6"call_and_return_conditional_losses*

Шtrace_0* 

Щtrace_0* 
`Z
VARIABLE_VALUEconv2d_39/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_39/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

@0
A1*

@0
A1*
* 
Ш
Ъnon_trainable_variables
Ыlayers
Ьmetrics
 Эlayer_regularization_losses
Юlayer_metrics
:	variables
;trainable_variables
<regularization_losses
>__call__
*?&call_and_return_all_conditional_losses
&?"call_and_return_conditional_losses*

Яtrace_0* 

†trace_0* 
jd
VARIABLE_VALUEconv2d_transpose_16/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUEconv2d_transpose_16/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
Ц
°non_trainable_variables
Ґlayers
£metrics
 §layer_regularization_losses
•layer_metrics
C	variables
Dtrainable_variables
Eregularization_losses
G__call__
*H&call_and_return_all_conditional_losses
&H"call_and_return_conditional_losses* 

¶trace_0* 

Іtrace_0* 

O0
P1*

O0
P1*
* 
Ш
®non_trainable_variables
©layers
™metrics
 Ђlayer_regularization_losses
ђlayer_metrics
I	variables
Jtrainable_variables
Kregularization_losses
M__call__
*N&call_and_return_all_conditional_losses
&N"call_and_return_conditional_losses*

≠trace_0* 

Ѓtrace_0* 
jd
VARIABLE_VALUEconv2d_transpose_17/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUEconv2d_transpose_17/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
Ц
ѓnon_trainable_variables
∞layers
±metrics
 ≤layer_regularization_losses
≥layer_metrics
R	variables
Strainable_variables
Tregularization_losses
V__call__
*W&call_and_return_all_conditional_losses
&W"call_and_return_conditional_losses* 

іtrace_0* 

µtrace_0* 

^0
_1*

^0
_1*
* 
Ш
ґnon_trainable_variables
Јlayers
Єmetrics
 єlayer_regularization_losses
Їlayer_metrics
X	variables
Ytrainable_variables
Zregularization_losses
\__call__
*]&call_and_return_all_conditional_losses
&]"call_and_return_conditional_losses*

їtrace_0* 

Љtrace_0* 
jd
VARIABLE_VALUEconv2d_transpose_18/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUEconv2d_transpose_18/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
Ц
љnon_trainable_variables
Њlayers
њmetrics
 јlayer_regularization_losses
Ѕlayer_metrics
a	variables
btrainable_variables
cregularization_losses
e__call__
*f&call_and_return_all_conditional_losses
&f"call_and_return_conditional_losses* 

¬trace_0* 

√trace_0* 

m0
n1*

m0
n1*
* 
Ш
ƒnon_trainable_variables
≈layers
∆metrics
 «layer_regularization_losses
»layer_metrics
g	variables
htrainable_variables
iregularization_losses
k__call__
*l&call_and_return_all_conditional_losses
&l"call_and_return_conditional_losses*

…trace_0* 

 trace_0* 
jd
VARIABLE_VALUEconv2d_transpose_19/kernel6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUEconv2d_transpose_19/bias4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
Z
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
11*
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
ќ
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$conv2d_36/kernel/Read/ReadVariableOp"conv2d_36/bias/Read/ReadVariableOp$conv2d_37/kernel/Read/ReadVariableOp"conv2d_37/bias/Read/ReadVariableOp$conv2d_38/kernel/Read/ReadVariableOp"conv2d_38/bias/Read/ReadVariableOp$conv2d_39/kernel/Read/ReadVariableOp"conv2d_39/bias/Read/ReadVariableOp.conv2d_transpose_16/kernel/Read/ReadVariableOp,conv2d_transpose_16/bias/Read/ReadVariableOp.conv2d_transpose_17/kernel/Read/ReadVariableOp,conv2d_transpose_17/bias/Read/ReadVariableOp.conv2d_transpose_18/kernel/Read/ReadVariableOp,conv2d_transpose_18/bias/Read/ReadVariableOp.conv2d_transpose_19/kernel/Read/ReadVariableOp,conv2d_transpose_19/bias/Read/ReadVariableOpConst*
Tin
2*
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
GPU2*0J 8В *(
f#R!
__inference__traced_save_533061
Й
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_36/kernelconv2d_36/biasconv2d_37/kernelconv2d_37/biasconv2d_38/kernelconv2d_38/biasconv2d_39/kernelconv2d_39/biasconv2d_transpose_16/kernelconv2d_transpose_16/biasconv2d_transpose_17/kernelconv2d_transpose_17/biasconv2d_transpose_18/kernelconv2d_transpose_18/biasconv2d_transpose_19/kernelconv2d_transpose_19/bias*
Tin
2*
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
GPU2*0J 8В *+
f&R$
"__inference__traced_restore_533119рв

Р
Б
E__inference_conv2d_39_layer_call_and_return_conditional_losses_532779

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€АY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€Аj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:€€€€€€€€€Аw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :€€€€€€€€€  А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:€€€€€€€€€  А
 
_user_specified_nameinputs
’9
н
D__inference_model_13_layer_call_and_return_conditional_losses_532303
input_18*
conv2d_36_532259:@
conv2d_36_532261:@+
conv2d_37_532264:@А
conv2d_37_532266:	А,
conv2d_38_532269:АА
conv2d_38_532271:	А,
conv2d_39_532274:АА
conv2d_39_532276:	А6
conv2d_transpose_16_532279:АА)
conv2d_transpose_16_532281:	А6
conv2d_transpose_17_532285:АА)
conv2d_transpose_17_532287:	А5
conv2d_transpose_18_532291:@А(
conv2d_transpose_18_532293:@5
conv2d_transpose_19_532297:А(
conv2d_transpose_19_532299:
identityИҐ!conv2d_36/StatefulPartitionedCallҐ!conv2d_37/StatefulPartitionedCallҐ!conv2d_38/StatefulPartitionedCallҐ!conv2d_39/StatefulPartitionedCallҐ+conv2d_transpose_16/StatefulPartitionedCallҐ+conv2d_transpose_17/StatefulPartitionedCallҐ+conv2d_transpose_18/StatefulPartitionedCallҐ+conv2d_transpose_19/StatefulPartitionedCallГ
!conv2d_36/StatefulPartitionedCallStatefulPartitionedCallinput_18conv2d_36_532259conv2d_36_532261*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_36_layer_call_and_return_conditional_losses_531897§
!conv2d_37/StatefulPartitionedCallStatefulPartitionedCall*conv2d_36/StatefulPartitionedCall:output:0conv2d_37_532264conv2d_37_532266*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€@@А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_37_layer_call_and_return_conditional_losses_531914§
!conv2d_38/StatefulPartitionedCallStatefulPartitionedCall*conv2d_37/StatefulPartitionedCall:output:0conv2d_38_532269conv2d_38_532271*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€  А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_38_layer_call_and_return_conditional_losses_531931§
!conv2d_39/StatefulPartitionedCallStatefulPartitionedCall*conv2d_38/StatefulPartitionedCall:output:0conv2d_39_532274conv2d_39_532276*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_39_layer_call_and_return_conditional_losses_531948ћ
+conv2d_transpose_16/StatefulPartitionedCallStatefulPartitionedCall*conv2d_39/StatefulPartitionedCall:output:0conv2d_transpose_16_532279conv2d_transpose_16_532281*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€  А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *X
fSRQ
O__inference_conv2d_transpose_16_layer_call_and_return_conditional_losses_531737Ђ
concatenate_16/PartitionedCallPartitionedCall4conv2d_transpose_16/StatefulPartitionedCall:output:0*conv2d_38/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€  А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *S
fNRL
J__inference_concatenate_16_layer_call_and_return_conditional_losses_531966…
+conv2d_transpose_17/StatefulPartitionedCallStatefulPartitionedCall'concatenate_16/PartitionedCall:output:0conv2d_transpose_17_532285conv2d_transpose_17_532287*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€@@А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *X
fSRQ
O__inference_conv2d_transpose_17_layer_call_and_return_conditional_losses_531782Ђ
concatenate_17/PartitionedCallPartitionedCall4conv2d_transpose_17/StatefulPartitionedCall:output:0*conv2d_37/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€@@А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *S
fNRL
J__inference_concatenate_17_layer_call_and_return_conditional_losses_531980 
+conv2d_transpose_18/StatefulPartitionedCallStatefulPartitionedCall'concatenate_17/PartitionedCall:output:0conv2d_transpose_18_532291conv2d_transpose_18_532293*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *X
fSRQ
O__inference_conv2d_transpose_18_layer_call_and_return_conditional_losses_531827≠
concatenate_18/PartitionedCallPartitionedCall4conv2d_transpose_18/StatefulPartitionedCall:output:0*conv2d_36/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:€€€€€€€€€ААА* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *S
fNRL
J__inference_concatenate_18_layer_call_and_return_conditional_losses_531994 
+conv2d_transpose_19/StatefulPartitionedCallStatefulPartitionedCall'concatenate_18/PartitionedCall:output:0conv2d_transpose_19_532297conv2d_transpose_19_532299*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *X
fSRQ
O__inference_conv2d_transpose_19_layer_call_and_return_conditional_losses_531872Н
IdentityIdentity4conv2d_transpose_19/StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€ААО
NoOpNoOp"^conv2d_36/StatefulPartitionedCall"^conv2d_37/StatefulPartitionedCall"^conv2d_38/StatefulPartitionedCall"^conv2d_39/StatefulPartitionedCall,^conv2d_transpose_16/StatefulPartitionedCall,^conv2d_transpose_17/StatefulPartitionedCall,^conv2d_transpose_18/StatefulPartitionedCall,^conv2d_transpose_19/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:€€€€€€€€€АА: : : : : : : : : : : : : : : : 2F
!conv2d_36/StatefulPartitionedCall!conv2d_36/StatefulPartitionedCall2F
!conv2d_37/StatefulPartitionedCall!conv2d_37/StatefulPartitionedCall2F
!conv2d_38/StatefulPartitionedCall!conv2d_38/StatefulPartitionedCall2F
!conv2d_39/StatefulPartitionedCall!conv2d_39/StatefulPartitionedCall2Z
+conv2d_transpose_16/StatefulPartitionedCall+conv2d_transpose_16/StatefulPartitionedCall2Z
+conv2d_transpose_17/StatefulPartitionedCall+conv2d_transpose_17/StatefulPartitionedCall2Z
+conv2d_transpose_18/StatefulPartitionedCall+conv2d_transpose_18/StatefulPartitionedCall2Z
+conv2d_transpose_19/StatefulPartitionedCall+conv2d_transpose_19/StatefulPartitionedCall:[ W
1
_output_shapes
:€€€€€€€€€АА
"
_user_specified_name
input_18
”
ђ
4__inference_conv2d_transpose_16_layer_call_fn_532788

inputs#
unknown:АА
	unknown_0:	А
identityИҐStatefulPartitionedCallВ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *X
fSRQ
O__inference_conv2d_transpose_16_layer_call_and_return_conditional_losses_531737К
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А: : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А
 
_user_specified_nameinputs
“!
Я
O__inference_conv2d_transpose_16_layer_call_and_return_conditional_losses_531737

inputsD
(conv2d_transpose_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐconv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
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
valueB:—
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
valueB:ў
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
valueB:ў
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
: J
stack/3Const*
_output_shapes
: *
dtype0*
value
B :Аy
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
valueB:ў
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskТ
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*(
_output_shapes
:АА*
dtype0Ё
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Ъ
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€Аk
ReluReluBiasAdd:output:0*
T0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А|
IdentityIdentityRelu:activations:0^NoOp*
T0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€АБ
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:j f
B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А
 
_user_specified_nameinputs
Р
Б
E__inference_conv2d_39_layer_call_and_return_conditional_losses_531948

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€АY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€Аj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:€€€€€€€€€Аw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :€€€€€€€€€  А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:€€€€€€€€€  А
 
_user_specified_nameinputs
ъ
t
J__inference_concatenate_18_layer_call_and_return_conditional_losses_531994

inputs
inputs_1
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :А
concatConcatV2inputsinputs_1concat/axis:output:0*
N*
T0*2
_output_shapes 
:€€€€€€€€€АААb
IdentityIdentityconcat:output:0*
T0*2
_output_shapes 
:€€€€€€€€€ААА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*M
_input_shapes<
::€€€€€€€€€АА@:€€€€€€€€€АА@:Y U
1
_output_shapes
:€€€€€€€€€АА@
 
_user_specified_nameinputs:YU
1
_output_shapes
:€€€€€€€€€АА@
 
_user_specified_nameinputs
Щ
з
)__inference_model_13_layer_call_fn_532256
input_18!
unknown:@
	unknown_0:@$
	unknown_1:@А
	unknown_2:	А%
	unknown_3:АА
	unknown_4:	А%
	unknown_5:АА
	unknown_6:	А%
	unknown_7:АА
	unknown_8:	А%
	unknown_9:АА

unknown_10:	А%

unknown_11:@А

unknown_12:@%

unknown_13:А

unknown_14:
identityИҐStatefulPartitionedCall£
StatefulPartitionedCallStatefulPartitionedCallinput_18unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_model_13_layer_call_and_return_conditional_losses_532184y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€АА`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:€€€€€€€€€АА: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
1
_output_shapes
:€€€€€€€€€АА
"
_user_specified_name
input_18
Р
Б
E__inference_conv2d_38_layer_call_and_return_conditional_losses_532759

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€  А*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€  АY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€  Аj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:€€€€€€€€€  Аw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :€€€€€€€€€@@А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:€€€€€€€€€@@А
 
_user_specified_nameinputs
Э±
т
!__inference__wrapped_model_531699
input_18K
1model_13_conv2d_36_conv2d_readvariableop_resource:@@
2model_13_conv2d_36_biasadd_readvariableop_resource:@L
1model_13_conv2d_37_conv2d_readvariableop_resource:@АA
2model_13_conv2d_37_biasadd_readvariableop_resource:	АM
1model_13_conv2d_38_conv2d_readvariableop_resource:ААA
2model_13_conv2d_38_biasadd_readvariableop_resource:	АM
1model_13_conv2d_39_conv2d_readvariableop_resource:ААA
2model_13_conv2d_39_biasadd_readvariableop_resource:	Аa
Emodel_13_conv2d_transpose_16_conv2d_transpose_readvariableop_resource:ААK
<model_13_conv2d_transpose_16_biasadd_readvariableop_resource:	Аa
Emodel_13_conv2d_transpose_17_conv2d_transpose_readvariableop_resource:ААK
<model_13_conv2d_transpose_17_biasadd_readvariableop_resource:	А`
Emodel_13_conv2d_transpose_18_conv2d_transpose_readvariableop_resource:@АJ
<model_13_conv2d_transpose_18_biasadd_readvariableop_resource:@`
Emodel_13_conv2d_transpose_19_conv2d_transpose_readvariableop_resource:АJ
<model_13_conv2d_transpose_19_biasadd_readvariableop_resource:
identityИҐ)model_13/conv2d_36/BiasAdd/ReadVariableOpҐ(model_13/conv2d_36/Conv2D/ReadVariableOpҐ)model_13/conv2d_37/BiasAdd/ReadVariableOpҐ(model_13/conv2d_37/Conv2D/ReadVariableOpҐ)model_13/conv2d_38/BiasAdd/ReadVariableOpҐ(model_13/conv2d_38/Conv2D/ReadVariableOpҐ)model_13/conv2d_39/BiasAdd/ReadVariableOpҐ(model_13/conv2d_39/Conv2D/ReadVariableOpҐ3model_13/conv2d_transpose_16/BiasAdd/ReadVariableOpҐ<model_13/conv2d_transpose_16/conv2d_transpose/ReadVariableOpҐ3model_13/conv2d_transpose_17/BiasAdd/ReadVariableOpҐ<model_13/conv2d_transpose_17/conv2d_transpose/ReadVariableOpҐ3model_13/conv2d_transpose_18/BiasAdd/ReadVariableOpҐ<model_13/conv2d_transpose_18/conv2d_transpose/ReadVariableOpҐ3model_13/conv2d_transpose_19/BiasAdd/ReadVariableOpҐ<model_13/conv2d_transpose_19/conv2d_transpose/ReadVariableOpҐ
(model_13/conv2d_36/Conv2D/ReadVariableOpReadVariableOp1model_13_conv2d_36_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0√
model_13/conv2d_36/Conv2DConv2Dinput_180model_13/conv2d_36/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€АА@*
paddingSAME*
strides
Ш
)model_13/conv2d_36/BiasAdd/ReadVariableOpReadVariableOp2model_13_conv2d_36_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Є
model_13/conv2d_36/BiasAddBiasAdd"model_13/conv2d_36/Conv2D:output:01model_13/conv2d_36/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€АА@А
model_13/conv2d_36/ReluRelu#model_13/conv2d_36/BiasAdd:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА@£
(model_13/conv2d_37/Conv2D/ReadVariableOpReadVariableOp1model_13_conv2d_37_conv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype0я
model_13/conv2d_37/Conv2DConv2D%model_13/conv2d_36/Relu:activations:00model_13/conv2d_37/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€@@А*
paddingSAME*
strides
Щ
)model_13/conv2d_37/BiasAdd/ReadVariableOpReadVariableOp2model_13_conv2d_37_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Ј
model_13/conv2d_37/BiasAddBiasAdd"model_13/conv2d_37/Conv2D:output:01model_13/conv2d_37/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€@@А
model_13/conv2d_37/ReluRelu#model_13/conv2d_37/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€@@А§
(model_13/conv2d_38/Conv2D/ReadVariableOpReadVariableOp1model_13_conv2d_38_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0я
model_13/conv2d_38/Conv2DConv2D%model_13/conv2d_37/Relu:activations:00model_13/conv2d_38/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€  А*
paddingSAME*
strides
Щ
)model_13/conv2d_38/BiasAdd/ReadVariableOpReadVariableOp2model_13_conv2d_38_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Ј
model_13/conv2d_38/BiasAddBiasAdd"model_13/conv2d_38/Conv2D:output:01model_13/conv2d_38/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€  А
model_13/conv2d_38/ReluRelu#model_13/conv2d_38/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€  А§
(model_13/conv2d_39/Conv2D/ReadVariableOpReadVariableOp1model_13_conv2d_39_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0я
model_13/conv2d_39/Conv2DConv2D%model_13/conv2d_38/Relu:activations:00model_13/conv2d_39/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
Щ
)model_13/conv2d_39/BiasAdd/ReadVariableOpReadVariableOp2model_13_conv2d_39_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Ј
model_13/conv2d_39/BiasAddBiasAdd"model_13/conv2d_39/Conv2D:output:01model_13/conv2d_39/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А
model_13/conv2d_39/ReluRelu#model_13/conv2d_39/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€Аw
"model_13/conv2d_transpose_16/ShapeShape%model_13/conv2d_39/Relu:activations:0*
T0*
_output_shapes
:z
0model_13/conv2d_transpose_16/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2model_13/conv2d_transpose_16/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2model_13/conv2d_transpose_16/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:в
*model_13/conv2d_transpose_16/strided_sliceStridedSlice+model_13/conv2d_transpose_16/Shape:output:09model_13/conv2d_transpose_16/strided_slice/stack:output:0;model_13/conv2d_transpose_16/strided_slice/stack_1:output:0;model_13/conv2d_transpose_16/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
$model_13/conv2d_transpose_16/stack/1Const*
_output_shapes
: *
dtype0*
value	B : f
$model_13/conv2d_transpose_16/stack/2Const*
_output_shapes
: *
dtype0*
value	B : g
$model_13/conv2d_transpose_16/stack/3Const*
_output_shapes
: *
dtype0*
value
B :АЪ
"model_13/conv2d_transpose_16/stackPack3model_13/conv2d_transpose_16/strided_slice:output:0-model_13/conv2d_transpose_16/stack/1:output:0-model_13/conv2d_transpose_16/stack/2:output:0-model_13/conv2d_transpose_16/stack/3:output:0*
N*
T0*
_output_shapes
:|
2model_13/conv2d_transpose_16/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ~
4model_13/conv2d_transpose_16/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4model_13/conv2d_transpose_16/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:к
,model_13/conv2d_transpose_16/strided_slice_1StridedSlice+model_13/conv2d_transpose_16/stack:output:0;model_13/conv2d_transpose_16/strided_slice_1/stack:output:0=model_13/conv2d_transpose_16/strided_slice_1/stack_1:output:0=model_13/conv2d_transpose_16/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskћ
<model_13/conv2d_transpose_16/conv2d_transpose/ReadVariableOpReadVariableOpEmodel_13_conv2d_transpose_16_conv2d_transpose_readvariableop_resource*(
_output_shapes
:АА*
dtype0Ѕ
-model_13/conv2d_transpose_16/conv2d_transposeConv2DBackpropInput+model_13/conv2d_transpose_16/stack:output:0Dmodel_13/conv2d_transpose_16/conv2d_transpose/ReadVariableOp:value:0%model_13/conv2d_39/Relu:activations:0*
T0*0
_output_shapes
:€€€€€€€€€  А*
paddingSAME*
strides
≠
3model_13/conv2d_transpose_16/BiasAdd/ReadVariableOpReadVariableOp<model_13_conv2d_transpose_16_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0я
$model_13/conv2d_transpose_16/BiasAddBiasAdd6model_13/conv2d_transpose_16/conv2d_transpose:output:0;model_13/conv2d_transpose_16/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€  АУ
!model_13/conv2d_transpose_16/ReluRelu-model_13/conv2d_transpose_16/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€  Аe
#model_13/concatenate_16/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :ф
model_13/concatenate_16/concatConcatV2/model_13/conv2d_transpose_16/Relu:activations:0%model_13/conv2d_38/Relu:activations:0,model_13/concatenate_16/concat/axis:output:0*
N*
T0*0
_output_shapes
:€€€€€€€€€  Аy
"model_13/conv2d_transpose_17/ShapeShape'model_13/concatenate_16/concat:output:0*
T0*
_output_shapes
:z
0model_13/conv2d_transpose_17/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2model_13/conv2d_transpose_17/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2model_13/conv2d_transpose_17/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:в
*model_13/conv2d_transpose_17/strided_sliceStridedSlice+model_13/conv2d_transpose_17/Shape:output:09model_13/conv2d_transpose_17/strided_slice/stack:output:0;model_13/conv2d_transpose_17/strided_slice/stack_1:output:0;model_13/conv2d_transpose_17/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
$model_13/conv2d_transpose_17/stack/1Const*
_output_shapes
: *
dtype0*
value	B :@f
$model_13/conv2d_transpose_17/stack/2Const*
_output_shapes
: *
dtype0*
value	B :@g
$model_13/conv2d_transpose_17/stack/3Const*
_output_shapes
: *
dtype0*
value
B :АЪ
"model_13/conv2d_transpose_17/stackPack3model_13/conv2d_transpose_17/strided_slice:output:0-model_13/conv2d_transpose_17/stack/1:output:0-model_13/conv2d_transpose_17/stack/2:output:0-model_13/conv2d_transpose_17/stack/3:output:0*
N*
T0*
_output_shapes
:|
2model_13/conv2d_transpose_17/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ~
4model_13/conv2d_transpose_17/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4model_13/conv2d_transpose_17/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:к
,model_13/conv2d_transpose_17/strided_slice_1StridedSlice+model_13/conv2d_transpose_17/stack:output:0;model_13/conv2d_transpose_17/strided_slice_1/stack:output:0=model_13/conv2d_transpose_17/strided_slice_1/stack_1:output:0=model_13/conv2d_transpose_17/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskћ
<model_13/conv2d_transpose_17/conv2d_transpose/ReadVariableOpReadVariableOpEmodel_13_conv2d_transpose_17_conv2d_transpose_readvariableop_resource*(
_output_shapes
:АА*
dtype0√
-model_13/conv2d_transpose_17/conv2d_transposeConv2DBackpropInput+model_13/conv2d_transpose_17/stack:output:0Dmodel_13/conv2d_transpose_17/conv2d_transpose/ReadVariableOp:value:0'model_13/concatenate_16/concat:output:0*
T0*0
_output_shapes
:€€€€€€€€€@@А*
paddingSAME*
strides
≠
3model_13/conv2d_transpose_17/BiasAdd/ReadVariableOpReadVariableOp<model_13_conv2d_transpose_17_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0я
$model_13/conv2d_transpose_17/BiasAddBiasAdd6model_13/conv2d_transpose_17/conv2d_transpose:output:0;model_13/conv2d_transpose_17/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€@@АУ
!model_13/conv2d_transpose_17/ReluRelu-model_13/conv2d_transpose_17/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€@@Аe
#model_13/concatenate_17/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :ф
model_13/concatenate_17/concatConcatV2/model_13/conv2d_transpose_17/Relu:activations:0%model_13/conv2d_37/Relu:activations:0,model_13/concatenate_17/concat/axis:output:0*
N*
T0*0
_output_shapes
:€€€€€€€€€@@Аy
"model_13/conv2d_transpose_18/ShapeShape'model_13/concatenate_17/concat:output:0*
T0*
_output_shapes
:z
0model_13/conv2d_transpose_18/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2model_13/conv2d_transpose_18/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2model_13/conv2d_transpose_18/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:в
*model_13/conv2d_transpose_18/strided_sliceStridedSlice+model_13/conv2d_transpose_18/Shape:output:09model_13/conv2d_transpose_18/strided_slice/stack:output:0;model_13/conv2d_transpose_18/strided_slice/stack_1:output:0;model_13/conv2d_transpose_18/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
$model_13/conv2d_transpose_18/stack/1Const*
_output_shapes
: *
dtype0*
value
B :Аg
$model_13/conv2d_transpose_18/stack/2Const*
_output_shapes
: *
dtype0*
value
B :Аf
$model_13/conv2d_transpose_18/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@Ъ
"model_13/conv2d_transpose_18/stackPack3model_13/conv2d_transpose_18/strided_slice:output:0-model_13/conv2d_transpose_18/stack/1:output:0-model_13/conv2d_transpose_18/stack/2:output:0-model_13/conv2d_transpose_18/stack/3:output:0*
N*
T0*
_output_shapes
:|
2model_13/conv2d_transpose_18/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ~
4model_13/conv2d_transpose_18/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4model_13/conv2d_transpose_18/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:к
,model_13/conv2d_transpose_18/strided_slice_1StridedSlice+model_13/conv2d_transpose_18/stack:output:0;model_13/conv2d_transpose_18/strided_slice_1/stack:output:0=model_13/conv2d_transpose_18/strided_slice_1/stack_1:output:0=model_13/conv2d_transpose_18/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskЋ
<model_13/conv2d_transpose_18/conv2d_transpose/ReadVariableOpReadVariableOpEmodel_13_conv2d_transpose_18_conv2d_transpose_readvariableop_resource*'
_output_shapes
:@А*
dtype0ƒ
-model_13/conv2d_transpose_18/conv2d_transposeConv2DBackpropInput+model_13/conv2d_transpose_18/stack:output:0Dmodel_13/conv2d_transpose_18/conv2d_transpose/ReadVariableOp:value:0'model_13/concatenate_17/concat:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА@*
paddingSAME*
strides
ђ
3model_13/conv2d_transpose_18/BiasAdd/ReadVariableOpReadVariableOp<model_13_conv2d_transpose_18_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0а
$model_13/conv2d_transpose_18/BiasAddBiasAdd6model_13/conv2d_transpose_18/conv2d_transpose:output:0;model_13/conv2d_transpose_18/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€АА@Ф
!model_13/conv2d_transpose_18/ReluRelu-model_13/conv2d_transpose_18/BiasAdd:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА@e
#model_13/concatenate_18/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :ц
model_13/concatenate_18/concatConcatV2/model_13/conv2d_transpose_18/Relu:activations:0%model_13/conv2d_36/Relu:activations:0,model_13/concatenate_18/concat/axis:output:0*
N*
T0*2
_output_shapes 
:€€€€€€€€€АААy
"model_13/conv2d_transpose_19/ShapeShape'model_13/concatenate_18/concat:output:0*
T0*
_output_shapes
:z
0model_13/conv2d_transpose_19/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2model_13/conv2d_transpose_19/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2model_13/conv2d_transpose_19/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:в
*model_13/conv2d_transpose_19/strided_sliceStridedSlice+model_13/conv2d_transpose_19/Shape:output:09model_13/conv2d_transpose_19/strided_slice/stack:output:0;model_13/conv2d_transpose_19/strided_slice/stack_1:output:0;model_13/conv2d_transpose_19/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
$model_13/conv2d_transpose_19/stack/1Const*
_output_shapes
: *
dtype0*
value
B :Аg
$model_13/conv2d_transpose_19/stack/2Const*
_output_shapes
: *
dtype0*
value
B :Аf
$model_13/conv2d_transpose_19/stack/3Const*
_output_shapes
: *
dtype0*
value	B :Ъ
"model_13/conv2d_transpose_19/stackPack3model_13/conv2d_transpose_19/strided_slice:output:0-model_13/conv2d_transpose_19/stack/1:output:0-model_13/conv2d_transpose_19/stack/2:output:0-model_13/conv2d_transpose_19/stack/3:output:0*
N*
T0*
_output_shapes
:|
2model_13/conv2d_transpose_19/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ~
4model_13/conv2d_transpose_19/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4model_13/conv2d_transpose_19/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:к
,model_13/conv2d_transpose_19/strided_slice_1StridedSlice+model_13/conv2d_transpose_19/stack:output:0;model_13/conv2d_transpose_19/strided_slice_1/stack:output:0=model_13/conv2d_transpose_19/strided_slice_1/stack_1:output:0=model_13/conv2d_transpose_19/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskЋ
<model_13/conv2d_transpose_19/conv2d_transpose/ReadVariableOpReadVariableOpEmodel_13_conv2d_transpose_19_conv2d_transpose_readvariableop_resource*'
_output_shapes
:А*
dtype0ƒ
-model_13/conv2d_transpose_19/conv2d_transposeConv2DBackpropInput+model_13/conv2d_transpose_19/stack:output:0Dmodel_13/conv2d_transpose_19/conv2d_transpose/ReadVariableOp:value:0'model_13/concatenate_18/concat:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА*
paddingSAME*
strides
ђ
3model_13/conv2d_transpose_19/BiasAdd/ReadVariableOpReadVariableOp<model_13_conv2d_transpose_19_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0а
$model_13/conv2d_transpose_19/BiasAddBiasAdd6model_13/conv2d_transpose_19/conv2d_transpose:output:0;model_13/conv2d_transpose_19/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€ААФ
!model_13/conv2d_transpose_19/TanhTanh-model_13/conv2d_transpose_19/BiasAdd:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА~
IdentityIdentity%model_13/conv2d_transpose_19/Tanh:y:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€ААц
NoOpNoOp*^model_13/conv2d_36/BiasAdd/ReadVariableOp)^model_13/conv2d_36/Conv2D/ReadVariableOp*^model_13/conv2d_37/BiasAdd/ReadVariableOp)^model_13/conv2d_37/Conv2D/ReadVariableOp*^model_13/conv2d_38/BiasAdd/ReadVariableOp)^model_13/conv2d_38/Conv2D/ReadVariableOp*^model_13/conv2d_39/BiasAdd/ReadVariableOp)^model_13/conv2d_39/Conv2D/ReadVariableOp4^model_13/conv2d_transpose_16/BiasAdd/ReadVariableOp=^model_13/conv2d_transpose_16/conv2d_transpose/ReadVariableOp4^model_13/conv2d_transpose_17/BiasAdd/ReadVariableOp=^model_13/conv2d_transpose_17/conv2d_transpose/ReadVariableOp4^model_13/conv2d_transpose_18/BiasAdd/ReadVariableOp=^model_13/conv2d_transpose_18/conv2d_transpose/ReadVariableOp4^model_13/conv2d_transpose_19/BiasAdd/ReadVariableOp=^model_13/conv2d_transpose_19/conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:€€€€€€€€€АА: : : : : : : : : : : : : : : : 2V
)model_13/conv2d_36/BiasAdd/ReadVariableOp)model_13/conv2d_36/BiasAdd/ReadVariableOp2T
(model_13/conv2d_36/Conv2D/ReadVariableOp(model_13/conv2d_36/Conv2D/ReadVariableOp2V
)model_13/conv2d_37/BiasAdd/ReadVariableOp)model_13/conv2d_37/BiasAdd/ReadVariableOp2T
(model_13/conv2d_37/Conv2D/ReadVariableOp(model_13/conv2d_37/Conv2D/ReadVariableOp2V
)model_13/conv2d_38/BiasAdd/ReadVariableOp)model_13/conv2d_38/BiasAdd/ReadVariableOp2T
(model_13/conv2d_38/Conv2D/ReadVariableOp(model_13/conv2d_38/Conv2D/ReadVariableOp2V
)model_13/conv2d_39/BiasAdd/ReadVariableOp)model_13/conv2d_39/BiasAdd/ReadVariableOp2T
(model_13/conv2d_39/Conv2D/ReadVariableOp(model_13/conv2d_39/Conv2D/ReadVariableOp2j
3model_13/conv2d_transpose_16/BiasAdd/ReadVariableOp3model_13/conv2d_transpose_16/BiasAdd/ReadVariableOp2|
<model_13/conv2d_transpose_16/conv2d_transpose/ReadVariableOp<model_13/conv2d_transpose_16/conv2d_transpose/ReadVariableOp2j
3model_13/conv2d_transpose_17/BiasAdd/ReadVariableOp3model_13/conv2d_transpose_17/BiasAdd/ReadVariableOp2|
<model_13/conv2d_transpose_17/conv2d_transpose/ReadVariableOp<model_13/conv2d_transpose_17/conv2d_transpose/ReadVariableOp2j
3model_13/conv2d_transpose_18/BiasAdd/ReadVariableOp3model_13/conv2d_transpose_18/BiasAdd/ReadVariableOp2|
<model_13/conv2d_transpose_18/conv2d_transpose/ReadVariableOp<model_13/conv2d_transpose_18/conv2d_transpose/ReadVariableOp2j
3model_13/conv2d_transpose_19/BiasAdd/ReadVariableOp3model_13/conv2d_transpose_19/BiasAdd/ReadVariableOp2|
<model_13/conv2d_transpose_19/conv2d_transpose/ReadVariableOp<model_13/conv2d_transpose_19/conv2d_transpose/ReadVariableOp:[ W
1
_output_shapes
:€€€€€€€€€АА
"
_user_specified_name
input_18
’9
н
D__inference_model_13_layer_call_and_return_conditional_losses_532350
input_18*
conv2d_36_532306:@
conv2d_36_532308:@+
conv2d_37_532311:@А
conv2d_37_532313:	А,
conv2d_38_532316:АА
conv2d_38_532318:	А,
conv2d_39_532321:АА
conv2d_39_532323:	А6
conv2d_transpose_16_532326:АА)
conv2d_transpose_16_532328:	А6
conv2d_transpose_17_532332:АА)
conv2d_transpose_17_532334:	А5
conv2d_transpose_18_532338:@А(
conv2d_transpose_18_532340:@5
conv2d_transpose_19_532344:А(
conv2d_transpose_19_532346:
identityИҐ!conv2d_36/StatefulPartitionedCallҐ!conv2d_37/StatefulPartitionedCallҐ!conv2d_38/StatefulPartitionedCallҐ!conv2d_39/StatefulPartitionedCallҐ+conv2d_transpose_16/StatefulPartitionedCallҐ+conv2d_transpose_17/StatefulPartitionedCallҐ+conv2d_transpose_18/StatefulPartitionedCallҐ+conv2d_transpose_19/StatefulPartitionedCallГ
!conv2d_36/StatefulPartitionedCallStatefulPartitionedCallinput_18conv2d_36_532306conv2d_36_532308*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_36_layer_call_and_return_conditional_losses_531897§
!conv2d_37/StatefulPartitionedCallStatefulPartitionedCall*conv2d_36/StatefulPartitionedCall:output:0conv2d_37_532311conv2d_37_532313*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€@@А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_37_layer_call_and_return_conditional_losses_531914§
!conv2d_38/StatefulPartitionedCallStatefulPartitionedCall*conv2d_37/StatefulPartitionedCall:output:0conv2d_38_532316conv2d_38_532318*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€  А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_38_layer_call_and_return_conditional_losses_531931§
!conv2d_39/StatefulPartitionedCallStatefulPartitionedCall*conv2d_38/StatefulPartitionedCall:output:0conv2d_39_532321conv2d_39_532323*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_39_layer_call_and_return_conditional_losses_531948ћ
+conv2d_transpose_16/StatefulPartitionedCallStatefulPartitionedCall*conv2d_39/StatefulPartitionedCall:output:0conv2d_transpose_16_532326conv2d_transpose_16_532328*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€  А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *X
fSRQ
O__inference_conv2d_transpose_16_layer_call_and_return_conditional_losses_531737Ђ
concatenate_16/PartitionedCallPartitionedCall4conv2d_transpose_16/StatefulPartitionedCall:output:0*conv2d_38/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€  А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *S
fNRL
J__inference_concatenate_16_layer_call_and_return_conditional_losses_531966…
+conv2d_transpose_17/StatefulPartitionedCallStatefulPartitionedCall'concatenate_16/PartitionedCall:output:0conv2d_transpose_17_532332conv2d_transpose_17_532334*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€@@А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *X
fSRQ
O__inference_conv2d_transpose_17_layer_call_and_return_conditional_losses_531782Ђ
concatenate_17/PartitionedCallPartitionedCall4conv2d_transpose_17/StatefulPartitionedCall:output:0*conv2d_37/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€@@А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *S
fNRL
J__inference_concatenate_17_layer_call_and_return_conditional_losses_531980 
+conv2d_transpose_18/StatefulPartitionedCallStatefulPartitionedCall'concatenate_17/PartitionedCall:output:0conv2d_transpose_18_532338conv2d_transpose_18_532340*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *X
fSRQ
O__inference_conv2d_transpose_18_layer_call_and_return_conditional_losses_531827≠
concatenate_18/PartitionedCallPartitionedCall4conv2d_transpose_18/StatefulPartitionedCall:output:0*conv2d_36/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:€€€€€€€€€ААА* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *S
fNRL
J__inference_concatenate_18_layer_call_and_return_conditional_losses_531994 
+conv2d_transpose_19/StatefulPartitionedCallStatefulPartitionedCall'concatenate_18/PartitionedCall:output:0conv2d_transpose_19_532344conv2d_transpose_19_532346*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *X
fSRQ
O__inference_conv2d_transpose_19_layer_call_and_return_conditional_losses_531872Н
IdentityIdentity4conv2d_transpose_19/StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€ААО
NoOpNoOp"^conv2d_36/StatefulPartitionedCall"^conv2d_37/StatefulPartitionedCall"^conv2d_38/StatefulPartitionedCall"^conv2d_39/StatefulPartitionedCall,^conv2d_transpose_16/StatefulPartitionedCall,^conv2d_transpose_17/StatefulPartitionedCall,^conv2d_transpose_18/StatefulPartitionedCall,^conv2d_transpose_19/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:€€€€€€€€€АА: : : : : : : : : : : : : : : : 2F
!conv2d_36/StatefulPartitionedCall!conv2d_36/StatefulPartitionedCall2F
!conv2d_37/StatefulPartitionedCall!conv2d_37/StatefulPartitionedCall2F
!conv2d_38/StatefulPartitionedCall!conv2d_38/StatefulPartitionedCall2F
!conv2d_39/StatefulPartitionedCall!conv2d_39/StatefulPartitionedCall2Z
+conv2d_transpose_16/StatefulPartitionedCall+conv2d_transpose_16/StatefulPartitionedCall2Z
+conv2d_transpose_17/StatefulPartitionedCall+conv2d_transpose_17/StatefulPartitionedCall2Z
+conv2d_transpose_18/StatefulPartitionedCall+conv2d_transpose_18/StatefulPartitionedCall2Z
+conv2d_transpose_19/StatefulPartitionedCall+conv2d_transpose_19/StatefulPartitionedCall:[ W
1
_output_shapes
:€€€€€€€€€АА
"
_user_specified_name
input_18
ѕ
™
4__inference_conv2d_transpose_19_layer_call_fn_532956

inputs"
unknown:А
	unknown_0:
identityИҐStatefulPartitionedCallБ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *X
fSRQ
O__inference_conv2d_transpose_19_layer_call_and_return_conditional_losses_531872Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А: : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А
 
_user_specified_nameinputs
В
v
J__inference_concatenate_18_layer_call_and_return_conditional_losses_532947
inputs_0
inputs_1
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :В
concatConcatV2inputs_0inputs_1concat/axis:output:0*
N*
T0*2
_output_shapes 
:€€€€€€€€€АААb
IdentityIdentityconcat:output:0*
T0*2
_output_shapes 
:€€€€€€€€€ААА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*M
_input_shapes<
::€€€€€€€€€АА@:€€€€€€€€€АА@:[ W
1
_output_shapes
:€€€€€€€€€АА@
"
_user_specified_name
inputs/0:[W
1
_output_shapes
:€€€€€€€€€АА@
"
_user_specified_name
inputs/1
ѕ
™
4__inference_conv2d_transpose_18_layer_call_fn_532900

inputs"
unknown:@А
	unknown_0:@
identityИҐStatefulPartitionedCallБ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *X
fSRQ
O__inference_conv2d_transpose_18_layer_call_and_return_conditional_losses_531827Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А: : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А
 
_user_specified_nameinputs
ч
°
*__inference_conv2d_37_layer_call_fn_532728

inputs"
unknown:@А
	unknown_0:	А
identityИҐStatefulPartitionedCallж
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€@@А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_37_layer_call_and_return_conditional_losses_531914x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:€€€€€€€€€@@А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:€€€€€€€€€АА@: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:€€€€€€€€€АА@
 
_user_specified_nameinputs
з
[
/__inference_concatenate_16_layer_call_fn_532828
inputs_0
inputs_1
identityќ
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€  А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *S
fNRL
J__inference_concatenate_16_layer_call_and_return_conditional_losses_531966i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:€€€€€€€€€  А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:€€€€€€€€€  А:€€€€€€€€€  А:Z V
0
_output_shapes
:€€€€€€€€€  А
"
_user_specified_name
inputs/0:ZV
0
_output_shapes
:€€€€€€€€€  А
"
_user_specified_name
inputs/1
ц
Ґ
*__inference_conv2d_38_layer_call_fn_532748

inputs#
unknown:АА
	unknown_0:	А
identityИҐStatefulPartitionedCallж
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€  А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_38_layer_call_and_return_conditional_losses_531931x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:€€€€€€€€€  А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :€€€€€€€€€@@А: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:€€€€€€€€€@@А
 
_user_specified_nameinputs
з
[
/__inference_concatenate_17_layer_call_fn_532884
inputs_0
inputs_1
identityќ
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€@@А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *S
fNRL
J__inference_concatenate_17_layer_call_and_return_conditional_losses_531980i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:€€€€€€€€€@@А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:€€€€€€€€€@@А:€€€€€€€€€@@А:Z V
0
_output_shapes
:€€€€€€€€€@@А
"
_user_specified_name
inputs/0:ZV
0
_output_shapes
:€€€€€€€€€@@А
"
_user_specified_name
inputs/1
“!
Я
O__inference_conv2d_transpose_16_layer_call_and_return_conditional_losses_532822

inputsD
(conv2d_transpose_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐconv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
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
valueB:—
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
valueB:ў
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
valueB:ў
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
: J
stack/3Const*
_output_shapes
: *
dtype0*
value
B :Аy
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
valueB:ў
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskТ
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*(
_output_shapes
:АА*
dtype0Ё
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Ъ
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€Аk
ReluReluBiasAdd:output:0*
T0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А|
IdentityIdentityRelu:activations:0^NoOp*
T0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€АБ
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:j f
B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А
 
_user_specified_nameinputs
ѕ9
л
D__inference_model_13_layer_call_and_return_conditional_losses_532002

inputs*
conv2d_36_531898:@
conv2d_36_531900:@+
conv2d_37_531915:@А
conv2d_37_531917:	А,
conv2d_38_531932:АА
conv2d_38_531934:	А,
conv2d_39_531949:АА
conv2d_39_531951:	А6
conv2d_transpose_16_531954:АА)
conv2d_transpose_16_531956:	А6
conv2d_transpose_17_531968:АА)
conv2d_transpose_17_531970:	А5
conv2d_transpose_18_531982:@А(
conv2d_transpose_18_531984:@5
conv2d_transpose_19_531996:А(
conv2d_transpose_19_531998:
identityИҐ!conv2d_36/StatefulPartitionedCallҐ!conv2d_37/StatefulPartitionedCallҐ!conv2d_38/StatefulPartitionedCallҐ!conv2d_39/StatefulPartitionedCallҐ+conv2d_transpose_16/StatefulPartitionedCallҐ+conv2d_transpose_17/StatefulPartitionedCallҐ+conv2d_transpose_18/StatefulPartitionedCallҐ+conv2d_transpose_19/StatefulPartitionedCallБ
!conv2d_36/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_36_531898conv2d_36_531900*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_36_layer_call_and_return_conditional_losses_531897§
!conv2d_37/StatefulPartitionedCallStatefulPartitionedCall*conv2d_36/StatefulPartitionedCall:output:0conv2d_37_531915conv2d_37_531917*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€@@А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_37_layer_call_and_return_conditional_losses_531914§
!conv2d_38/StatefulPartitionedCallStatefulPartitionedCall*conv2d_37/StatefulPartitionedCall:output:0conv2d_38_531932conv2d_38_531934*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€  А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_38_layer_call_and_return_conditional_losses_531931§
!conv2d_39/StatefulPartitionedCallStatefulPartitionedCall*conv2d_38/StatefulPartitionedCall:output:0conv2d_39_531949conv2d_39_531951*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_39_layer_call_and_return_conditional_losses_531948ћ
+conv2d_transpose_16/StatefulPartitionedCallStatefulPartitionedCall*conv2d_39/StatefulPartitionedCall:output:0conv2d_transpose_16_531954conv2d_transpose_16_531956*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€  А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *X
fSRQ
O__inference_conv2d_transpose_16_layer_call_and_return_conditional_losses_531737Ђ
concatenate_16/PartitionedCallPartitionedCall4conv2d_transpose_16/StatefulPartitionedCall:output:0*conv2d_38/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€  А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *S
fNRL
J__inference_concatenate_16_layer_call_and_return_conditional_losses_531966…
+conv2d_transpose_17/StatefulPartitionedCallStatefulPartitionedCall'concatenate_16/PartitionedCall:output:0conv2d_transpose_17_531968conv2d_transpose_17_531970*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€@@А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *X
fSRQ
O__inference_conv2d_transpose_17_layer_call_and_return_conditional_losses_531782Ђ
concatenate_17/PartitionedCallPartitionedCall4conv2d_transpose_17/StatefulPartitionedCall:output:0*conv2d_37/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€@@А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *S
fNRL
J__inference_concatenate_17_layer_call_and_return_conditional_losses_531980 
+conv2d_transpose_18/StatefulPartitionedCallStatefulPartitionedCall'concatenate_17/PartitionedCall:output:0conv2d_transpose_18_531982conv2d_transpose_18_531984*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *X
fSRQ
O__inference_conv2d_transpose_18_layer_call_and_return_conditional_losses_531827≠
concatenate_18/PartitionedCallPartitionedCall4conv2d_transpose_18/StatefulPartitionedCall:output:0*conv2d_36/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:€€€€€€€€€ААА* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *S
fNRL
J__inference_concatenate_18_layer_call_and_return_conditional_losses_531994 
+conv2d_transpose_19/StatefulPartitionedCallStatefulPartitionedCall'concatenate_18/PartitionedCall:output:0conv2d_transpose_19_531996conv2d_transpose_19_531998*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *X
fSRQ
O__inference_conv2d_transpose_19_layer_call_and_return_conditional_losses_531872Н
IdentityIdentity4conv2d_transpose_19/StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€ААО
NoOpNoOp"^conv2d_36/StatefulPartitionedCall"^conv2d_37/StatefulPartitionedCall"^conv2d_38/StatefulPartitionedCall"^conv2d_39/StatefulPartitionedCall,^conv2d_transpose_16/StatefulPartitionedCall,^conv2d_transpose_17/StatefulPartitionedCall,^conv2d_transpose_18/StatefulPartitionedCall,^conv2d_transpose_19/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:€€€€€€€€€АА: : : : : : : : : : : : : : : : 2F
!conv2d_36/StatefulPartitionedCall!conv2d_36/StatefulPartitionedCall2F
!conv2d_37/StatefulPartitionedCall!conv2d_37/StatefulPartitionedCall2F
!conv2d_38/StatefulPartitionedCall!conv2d_38/StatefulPartitionedCall2F
!conv2d_39/StatefulPartitionedCall!conv2d_39/StatefulPartitionedCall2Z
+conv2d_transpose_16/StatefulPartitionedCall+conv2d_transpose_16/StatefulPartitionedCall2Z
+conv2d_transpose_17/StatefulPartitionedCall+conv2d_transpose_17/StatefulPartitionedCall2Z
+conv2d_transpose_18/StatefulPartitionedCall+conv2d_transpose_18/StatefulPartitionedCall2Z
+conv2d_transpose_19/StatefulPartitionedCall+conv2d_transpose_19/StatefulPartitionedCall:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
”
ђ
4__inference_conv2d_transpose_17_layer_call_fn_532844

inputs#
unknown:АА
	unknown_0:	А
identityИҐStatefulPartitionedCallВ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *X
fSRQ
O__inference_conv2d_transpose_17_layer_call_and_return_conditional_losses_531782К
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А: : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А
 
_user_specified_nameinputs
“!
Я
O__inference_conv2d_transpose_17_layer_call_and_return_conditional_losses_531782

inputsD
(conv2d_transpose_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐconv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
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
valueB:—
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
valueB:ў
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
valueB:ў
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
: J
stack/3Const*
_output_shapes
: *
dtype0*
value
B :Аy
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
valueB:ў
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskТ
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*(
_output_shapes
:АА*
dtype0Ё
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Ъ
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€Аk
ReluReluBiasAdd:output:0*
T0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А|
IdentityIdentityRelu:activations:0^NoOp*
T0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€АБ
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:j f
B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А
 
_user_specified_nameinputs
њ!
Э
O__inference_conv2d_transpose_19_layer_call_and_return_conditional_losses_531872

inputsC
(conv2d_transpose_readvariableop_resource:А-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐconv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
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
valueB:—
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
valueB:ў
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
valueB:ў
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
value	B :y
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
valueB:ў
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskС
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*'
_output_shapes
:А*
dtype0№
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0Щ
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€j
TanhTanhBiasAdd:output:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€q
IdentityIdentityTanh:y:0^NoOp*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€Б
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:j f
B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А
 
_user_specified_nameinputs
Р
Б
E__inference_conv2d_38_layer_call_and_return_conditional_losses_531931

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€  А*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€  АY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€  Аj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:€€€€€€€€€  Аw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :€€€€€€€€€@@А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:€€€€€€€€€@@А
 
_user_specified_nameinputs
ґЬ
у
D__inference_model_13_layer_call_and_return_conditional_losses_532699

inputsB
(conv2d_36_conv2d_readvariableop_resource:@7
)conv2d_36_biasadd_readvariableop_resource:@C
(conv2d_37_conv2d_readvariableop_resource:@А8
)conv2d_37_biasadd_readvariableop_resource:	АD
(conv2d_38_conv2d_readvariableop_resource:АА8
)conv2d_38_biasadd_readvariableop_resource:	АD
(conv2d_39_conv2d_readvariableop_resource:АА8
)conv2d_39_biasadd_readvariableop_resource:	АX
<conv2d_transpose_16_conv2d_transpose_readvariableop_resource:ААB
3conv2d_transpose_16_biasadd_readvariableop_resource:	АX
<conv2d_transpose_17_conv2d_transpose_readvariableop_resource:ААB
3conv2d_transpose_17_biasadd_readvariableop_resource:	АW
<conv2d_transpose_18_conv2d_transpose_readvariableop_resource:@АA
3conv2d_transpose_18_biasadd_readvariableop_resource:@W
<conv2d_transpose_19_conv2d_transpose_readvariableop_resource:АA
3conv2d_transpose_19_biasadd_readvariableop_resource:
identityИҐ conv2d_36/BiasAdd/ReadVariableOpҐconv2d_36/Conv2D/ReadVariableOpҐ conv2d_37/BiasAdd/ReadVariableOpҐconv2d_37/Conv2D/ReadVariableOpҐ conv2d_38/BiasAdd/ReadVariableOpҐconv2d_38/Conv2D/ReadVariableOpҐ conv2d_39/BiasAdd/ReadVariableOpҐconv2d_39/Conv2D/ReadVariableOpҐ*conv2d_transpose_16/BiasAdd/ReadVariableOpҐ3conv2d_transpose_16/conv2d_transpose/ReadVariableOpҐ*conv2d_transpose_17/BiasAdd/ReadVariableOpҐ3conv2d_transpose_17/conv2d_transpose/ReadVariableOpҐ*conv2d_transpose_18/BiasAdd/ReadVariableOpҐ3conv2d_transpose_18/conv2d_transpose/ReadVariableOpҐ*conv2d_transpose_19/BiasAdd/ReadVariableOpҐ3conv2d_transpose_19/conv2d_transpose/ReadVariableOpР
conv2d_36/Conv2D/ReadVariableOpReadVariableOp(conv2d_36_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0ѓ
conv2d_36/Conv2DConv2Dinputs'conv2d_36/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€АА@*
paddingSAME*
strides
Ж
 conv2d_36/BiasAdd/ReadVariableOpReadVariableOp)conv2d_36_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Э
conv2d_36/BiasAddBiasAddconv2d_36/Conv2D:output:0(conv2d_36/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€АА@n
conv2d_36/ReluReluconv2d_36/BiasAdd:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА@С
conv2d_37/Conv2D/ReadVariableOpReadVariableOp(conv2d_37_conv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype0ƒ
conv2d_37/Conv2DConv2Dconv2d_36/Relu:activations:0'conv2d_37/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€@@А*
paddingSAME*
strides
З
 conv2d_37/BiasAdd/ReadVariableOpReadVariableOp)conv2d_37_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Ь
conv2d_37/BiasAddBiasAddconv2d_37/Conv2D:output:0(conv2d_37/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€@@Аm
conv2d_37/ReluReluconv2d_37/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€@@АТ
conv2d_38/Conv2D/ReadVariableOpReadVariableOp(conv2d_38_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0ƒ
conv2d_38/Conv2DConv2Dconv2d_37/Relu:activations:0'conv2d_38/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€  А*
paddingSAME*
strides
З
 conv2d_38/BiasAdd/ReadVariableOpReadVariableOp)conv2d_38_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Ь
conv2d_38/BiasAddBiasAddconv2d_38/Conv2D:output:0(conv2d_38/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€  Аm
conv2d_38/ReluReluconv2d_38/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€  АТ
conv2d_39/Conv2D/ReadVariableOpReadVariableOp(conv2d_39_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0ƒ
conv2d_39/Conv2DConv2Dconv2d_38/Relu:activations:0'conv2d_39/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
З
 conv2d_39/BiasAdd/ReadVariableOpReadVariableOp)conv2d_39_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Ь
conv2d_39/BiasAddBiasAddconv2d_39/Conv2D:output:0(conv2d_39/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€Аm
conv2d_39/ReluReluconv2d_39/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€Аe
conv2d_transpose_16/ShapeShapeconv2d_39/Relu:activations:0*
T0*
_output_shapes
:q
'conv2d_transpose_16/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)conv2d_transpose_16/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)conv2d_transpose_16/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:µ
!conv2d_transpose_16/strided_sliceStridedSlice"conv2d_transpose_16/Shape:output:00conv2d_transpose_16/strided_slice/stack:output:02conv2d_transpose_16/strided_slice/stack_1:output:02conv2d_transpose_16/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask]
conv2d_transpose_16/stack/1Const*
_output_shapes
: *
dtype0*
value	B : ]
conv2d_transpose_16/stack/2Const*
_output_shapes
: *
dtype0*
value	B : ^
conv2d_transpose_16/stack/3Const*
_output_shapes
: *
dtype0*
value
B :Ан
conv2d_transpose_16/stackPack*conv2d_transpose_16/strided_slice:output:0$conv2d_transpose_16/stack/1:output:0$conv2d_transpose_16/stack/2:output:0$conv2d_transpose_16/stack/3:output:0*
N*
T0*
_output_shapes
:s
)conv2d_transpose_16/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+conv2d_transpose_16/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+conv2d_transpose_16/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:љ
#conv2d_transpose_16/strided_slice_1StridedSlice"conv2d_transpose_16/stack:output:02conv2d_transpose_16/strided_slice_1/stack:output:04conv2d_transpose_16/strided_slice_1/stack_1:output:04conv2d_transpose_16/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskЇ
3conv2d_transpose_16/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_16_conv2d_transpose_readvariableop_resource*(
_output_shapes
:АА*
dtype0Э
$conv2d_transpose_16/conv2d_transposeConv2DBackpropInput"conv2d_transpose_16/stack:output:0;conv2d_transpose_16/conv2d_transpose/ReadVariableOp:value:0conv2d_39/Relu:activations:0*
T0*0
_output_shapes
:€€€€€€€€€  А*
paddingSAME*
strides
Ы
*conv2d_transpose_16/BiasAdd/ReadVariableOpReadVariableOp3conv2d_transpose_16_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0ƒ
conv2d_transpose_16/BiasAddBiasAdd-conv2d_transpose_16/conv2d_transpose:output:02conv2d_transpose_16/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€  АБ
conv2d_transpose_16/ReluRelu$conv2d_transpose_16/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€  А\
concatenate_16/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :–
concatenate_16/concatConcatV2&conv2d_transpose_16/Relu:activations:0conv2d_38/Relu:activations:0#concatenate_16/concat/axis:output:0*
N*
T0*0
_output_shapes
:€€€€€€€€€  Аg
conv2d_transpose_17/ShapeShapeconcatenate_16/concat:output:0*
T0*
_output_shapes
:q
'conv2d_transpose_17/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)conv2d_transpose_17/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)conv2d_transpose_17/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:µ
!conv2d_transpose_17/strided_sliceStridedSlice"conv2d_transpose_17/Shape:output:00conv2d_transpose_17/strided_slice/stack:output:02conv2d_transpose_17/strided_slice/stack_1:output:02conv2d_transpose_17/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask]
conv2d_transpose_17/stack/1Const*
_output_shapes
: *
dtype0*
value	B :@]
conv2d_transpose_17/stack/2Const*
_output_shapes
: *
dtype0*
value	B :@^
conv2d_transpose_17/stack/3Const*
_output_shapes
: *
dtype0*
value
B :Ан
conv2d_transpose_17/stackPack*conv2d_transpose_17/strided_slice:output:0$conv2d_transpose_17/stack/1:output:0$conv2d_transpose_17/stack/2:output:0$conv2d_transpose_17/stack/3:output:0*
N*
T0*
_output_shapes
:s
)conv2d_transpose_17/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+conv2d_transpose_17/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+conv2d_transpose_17/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:љ
#conv2d_transpose_17/strided_slice_1StridedSlice"conv2d_transpose_17/stack:output:02conv2d_transpose_17/strided_slice_1/stack:output:04conv2d_transpose_17/strided_slice_1/stack_1:output:04conv2d_transpose_17/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskЇ
3conv2d_transpose_17/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_17_conv2d_transpose_readvariableop_resource*(
_output_shapes
:АА*
dtype0Я
$conv2d_transpose_17/conv2d_transposeConv2DBackpropInput"conv2d_transpose_17/stack:output:0;conv2d_transpose_17/conv2d_transpose/ReadVariableOp:value:0concatenate_16/concat:output:0*
T0*0
_output_shapes
:€€€€€€€€€@@А*
paddingSAME*
strides
Ы
*conv2d_transpose_17/BiasAdd/ReadVariableOpReadVariableOp3conv2d_transpose_17_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0ƒ
conv2d_transpose_17/BiasAddBiasAdd-conv2d_transpose_17/conv2d_transpose:output:02conv2d_transpose_17/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€@@АБ
conv2d_transpose_17/ReluRelu$conv2d_transpose_17/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€@@А\
concatenate_17/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :–
concatenate_17/concatConcatV2&conv2d_transpose_17/Relu:activations:0conv2d_37/Relu:activations:0#concatenate_17/concat/axis:output:0*
N*
T0*0
_output_shapes
:€€€€€€€€€@@Аg
conv2d_transpose_18/ShapeShapeconcatenate_17/concat:output:0*
T0*
_output_shapes
:q
'conv2d_transpose_18/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)conv2d_transpose_18/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)conv2d_transpose_18/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:µ
!conv2d_transpose_18/strided_sliceStridedSlice"conv2d_transpose_18/Shape:output:00conv2d_transpose_18/strided_slice/stack:output:02conv2d_transpose_18/strided_slice/stack_1:output:02conv2d_transpose_18/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
conv2d_transpose_18/stack/1Const*
_output_shapes
: *
dtype0*
value
B :А^
conv2d_transpose_18/stack/2Const*
_output_shapes
: *
dtype0*
value
B :А]
conv2d_transpose_18/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@н
conv2d_transpose_18/stackPack*conv2d_transpose_18/strided_slice:output:0$conv2d_transpose_18/stack/1:output:0$conv2d_transpose_18/stack/2:output:0$conv2d_transpose_18/stack/3:output:0*
N*
T0*
_output_shapes
:s
)conv2d_transpose_18/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+conv2d_transpose_18/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+conv2d_transpose_18/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:љ
#conv2d_transpose_18/strided_slice_1StridedSlice"conv2d_transpose_18/stack:output:02conv2d_transpose_18/strided_slice_1/stack:output:04conv2d_transpose_18/strided_slice_1/stack_1:output:04conv2d_transpose_18/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskє
3conv2d_transpose_18/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_18_conv2d_transpose_readvariableop_resource*'
_output_shapes
:@А*
dtype0†
$conv2d_transpose_18/conv2d_transposeConv2DBackpropInput"conv2d_transpose_18/stack:output:0;conv2d_transpose_18/conv2d_transpose/ReadVariableOp:value:0concatenate_17/concat:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА@*
paddingSAME*
strides
Ъ
*conv2d_transpose_18/BiasAdd/ReadVariableOpReadVariableOp3conv2d_transpose_18_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0≈
conv2d_transpose_18/BiasAddBiasAdd-conv2d_transpose_18/conv2d_transpose:output:02conv2d_transpose_18/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€АА@В
conv2d_transpose_18/ReluRelu$conv2d_transpose_18/BiasAdd:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА@\
concatenate_18/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :“
concatenate_18/concatConcatV2&conv2d_transpose_18/Relu:activations:0conv2d_36/Relu:activations:0#concatenate_18/concat/axis:output:0*
N*
T0*2
_output_shapes 
:€€€€€€€€€АААg
conv2d_transpose_19/ShapeShapeconcatenate_18/concat:output:0*
T0*
_output_shapes
:q
'conv2d_transpose_19/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)conv2d_transpose_19/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)conv2d_transpose_19/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:µ
!conv2d_transpose_19/strided_sliceStridedSlice"conv2d_transpose_19/Shape:output:00conv2d_transpose_19/strided_slice/stack:output:02conv2d_transpose_19/strided_slice/stack_1:output:02conv2d_transpose_19/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
conv2d_transpose_19/stack/1Const*
_output_shapes
: *
dtype0*
value
B :А^
conv2d_transpose_19/stack/2Const*
_output_shapes
: *
dtype0*
value
B :А]
conv2d_transpose_19/stack/3Const*
_output_shapes
: *
dtype0*
value	B :н
conv2d_transpose_19/stackPack*conv2d_transpose_19/strided_slice:output:0$conv2d_transpose_19/stack/1:output:0$conv2d_transpose_19/stack/2:output:0$conv2d_transpose_19/stack/3:output:0*
N*
T0*
_output_shapes
:s
)conv2d_transpose_19/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+conv2d_transpose_19/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+conv2d_transpose_19/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:љ
#conv2d_transpose_19/strided_slice_1StridedSlice"conv2d_transpose_19/stack:output:02conv2d_transpose_19/strided_slice_1/stack:output:04conv2d_transpose_19/strided_slice_1/stack_1:output:04conv2d_transpose_19/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskє
3conv2d_transpose_19/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_19_conv2d_transpose_readvariableop_resource*'
_output_shapes
:А*
dtype0†
$conv2d_transpose_19/conv2d_transposeConv2DBackpropInput"conv2d_transpose_19/stack:output:0;conv2d_transpose_19/conv2d_transpose/ReadVariableOp:value:0concatenate_18/concat:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА*
paddingSAME*
strides
Ъ
*conv2d_transpose_19/BiasAdd/ReadVariableOpReadVariableOp3conv2d_transpose_19_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0≈
conv2d_transpose_19/BiasAddBiasAdd-conv2d_transpose_19/conv2d_transpose:output:02conv2d_transpose_19/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€ААВ
conv2d_transpose_19/TanhTanh$conv2d_transpose_19/BiasAdd:output:0*
T0*1
_output_shapes
:€€€€€€€€€ААu
IdentityIdentityconv2d_transpose_19/Tanh:y:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€ААж
NoOpNoOp!^conv2d_36/BiasAdd/ReadVariableOp ^conv2d_36/Conv2D/ReadVariableOp!^conv2d_37/BiasAdd/ReadVariableOp ^conv2d_37/Conv2D/ReadVariableOp!^conv2d_38/BiasAdd/ReadVariableOp ^conv2d_38/Conv2D/ReadVariableOp!^conv2d_39/BiasAdd/ReadVariableOp ^conv2d_39/Conv2D/ReadVariableOp+^conv2d_transpose_16/BiasAdd/ReadVariableOp4^conv2d_transpose_16/conv2d_transpose/ReadVariableOp+^conv2d_transpose_17/BiasAdd/ReadVariableOp4^conv2d_transpose_17/conv2d_transpose/ReadVariableOp+^conv2d_transpose_18/BiasAdd/ReadVariableOp4^conv2d_transpose_18/conv2d_transpose/ReadVariableOp+^conv2d_transpose_19/BiasAdd/ReadVariableOp4^conv2d_transpose_19/conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:€€€€€€€€€АА: : : : : : : : : : : : : : : : 2D
 conv2d_36/BiasAdd/ReadVariableOp conv2d_36/BiasAdd/ReadVariableOp2B
conv2d_36/Conv2D/ReadVariableOpconv2d_36/Conv2D/ReadVariableOp2D
 conv2d_37/BiasAdd/ReadVariableOp conv2d_37/BiasAdd/ReadVariableOp2B
conv2d_37/Conv2D/ReadVariableOpconv2d_37/Conv2D/ReadVariableOp2D
 conv2d_38/BiasAdd/ReadVariableOp conv2d_38/BiasAdd/ReadVariableOp2B
conv2d_38/Conv2D/ReadVariableOpconv2d_38/Conv2D/ReadVariableOp2D
 conv2d_39/BiasAdd/ReadVariableOp conv2d_39/BiasAdd/ReadVariableOp2B
conv2d_39/Conv2D/ReadVariableOpconv2d_39/Conv2D/ReadVariableOp2X
*conv2d_transpose_16/BiasAdd/ReadVariableOp*conv2d_transpose_16/BiasAdd/ReadVariableOp2j
3conv2d_transpose_16/conv2d_transpose/ReadVariableOp3conv2d_transpose_16/conv2d_transpose/ReadVariableOp2X
*conv2d_transpose_17/BiasAdd/ReadVariableOp*conv2d_transpose_17/BiasAdd/ReadVariableOp2j
3conv2d_transpose_17/conv2d_transpose/ReadVariableOp3conv2d_transpose_17/conv2d_transpose/ReadVariableOp2X
*conv2d_transpose_18/BiasAdd/ReadVariableOp*conv2d_transpose_18/BiasAdd/ReadVariableOp2j
3conv2d_transpose_18/conv2d_transpose/ReadVariableOp3conv2d_transpose_18/conv2d_transpose/ReadVariableOp2X
*conv2d_transpose_19/BiasAdd/ReadVariableOp*conv2d_transpose_19/BiasAdd/ReadVariableOp2j
3conv2d_transpose_19/conv2d_transpose/ReadVariableOp3conv2d_transpose_19/conv2d_transpose/ReadVariableOp:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
с
в
$__inference_signature_wrapper_532389
input_18!
unknown:@
	unknown_0:@$
	unknown_1:@А
	unknown_2:	А%
	unknown_3:АА
	unknown_4:	А%
	unknown_5:АА
	unknown_6:	А%
	unknown_7:АА
	unknown_8:	А%
	unknown_9:АА

unknown_10:	А%

unknown_11:@А

unknown_12:@%

unknown_13:А

unknown_14:
identityИҐStatefulPartitionedCallА
StatefulPartitionedCallStatefulPartitionedCallinput_18unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В **
f%R#
!__inference__wrapped_model_531699y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€АА`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:€€€€€€€€€АА: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
1
_output_shapes
:€€€€€€€€€АА
"
_user_specified_name
input_18
Щ
з
)__inference_model_13_layer_call_fn_532037
input_18!
unknown:@
	unknown_0:@$
	unknown_1:@А
	unknown_2:	А%
	unknown_3:АА
	unknown_4:	А%
	unknown_5:АА
	unknown_6:	А%
	unknown_7:АА
	unknown_8:	А%
	unknown_9:АА

unknown_10:	А%

unknown_11:@А

unknown_12:@%

unknown_13:А

unknown_14:
identityИҐStatefulPartitionedCall£
StatefulPartitionedCallStatefulPartitionedCallinput_18unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_model_13_layer_call_and_return_conditional_losses_532002y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€АА`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:€€€€€€€€€АА: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
1
_output_shapes
:€€€€€€€€€АА
"
_user_specified_name
input_18
“!
Я
O__inference_conv2d_transpose_17_layer_call_and_return_conditional_losses_532878

inputsD
(conv2d_transpose_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐconv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
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
valueB:—
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
valueB:ў
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
valueB:ў
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
: J
stack/3Const*
_output_shapes
: *
dtype0*
value
B :Аy
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
valueB:ў
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskТ
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*(
_output_shapes
:АА*
dtype0Ё
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Ъ
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€Аk
ReluReluBiasAdd:output:0*
T0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А|
IdentityIdentityRelu:activations:0^NoOp*
T0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€АБ
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:j f
B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А
 
_user_specified_nameinputs
Р
ю
E__inference_conv2d_36_layer_call_and_return_conditional_losses_531897

inputs8
conv2d_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0Ы
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€АА@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€АА@Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА@k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€АА@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:€€€€€€€€€АА: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
Р
ю
E__inference_conv2d_36_layer_call_and_return_conditional_losses_532719

inputs8
conv2d_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0Ы
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€АА@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€АА@Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА@k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€АА@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:€€€€€€€€€АА: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
с
t
J__inference_concatenate_16_layer_call_and_return_conditional_losses_531966

inputs
inputs_1
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :~
concatConcatV2inputsinputs_1concat/axis:output:0*
N*
T0*0
_output_shapes
:€€€€€€€€€  А`
IdentityIdentityconcat:output:0*
T0*0
_output_shapes
:€€€€€€€€€  А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:€€€€€€€€€  А:€€€€€€€€€  А:X T
0
_output_shapes
:€€€€€€€€€  А
 
_user_specified_nameinputs:XT
0
_output_shapes
:€€€€€€€€€  А
 
_user_specified_nameinputs
У
е
)__inference_model_13_layer_call_fn_532426

inputs!
unknown:@
	unknown_0:@$
	unknown_1:@А
	unknown_2:	А%
	unknown_3:АА
	unknown_4:	А%
	unknown_5:АА
	unknown_6:	А%
	unknown_7:АА
	unknown_8:	А%
	unknown_9:АА

unknown_10:	А%

unknown_11:@А

unknown_12:@%

unknown_13:А

unknown_14:
identityИҐStatefulPartitionedCall°
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_model_13_layer_call_and_return_conditional_losses_532002y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€АА`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:€€€€€€€€€АА: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
ц+
Љ
__inference__traced_save_533061
file_prefix/
+savev2_conv2d_36_kernel_read_readvariableop-
)savev2_conv2d_36_bias_read_readvariableop/
+savev2_conv2d_37_kernel_read_readvariableop-
)savev2_conv2d_37_bias_read_readvariableop/
+savev2_conv2d_38_kernel_read_readvariableop-
)savev2_conv2d_38_bias_read_readvariableop/
+savev2_conv2d_39_kernel_read_readvariableop-
)savev2_conv2d_39_bias_read_readvariableop9
5savev2_conv2d_transpose_16_kernel_read_readvariableop7
3savev2_conv2d_transpose_16_bias_read_readvariableop9
5savev2_conv2d_transpose_17_kernel_read_readvariableop7
3savev2_conv2d_transpose_17_bias_read_readvariableop9
5savev2_conv2d_transpose_18_kernel_read_readvariableop7
3savev2_conv2d_transpose_18_bias_read_readvariableop9
5savev2_conv2d_transpose_19_kernel_read_readvariableop7
3savev2_conv2d_transpose_19_bias_read_readvariableop
savev2_const

identity_1ИҐMergeV2Checkpointsw
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
: ъ
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*£
valueЩBЦB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHП
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*5
value,B*B B B B B B B B B B B B B B B B B –
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_conv2d_36_kernel_read_readvariableop)savev2_conv2d_36_bias_read_readvariableop+savev2_conv2d_37_kernel_read_readvariableop)savev2_conv2d_37_bias_read_readvariableop+savev2_conv2d_38_kernel_read_readvariableop)savev2_conv2d_38_bias_read_readvariableop+savev2_conv2d_39_kernel_read_readvariableop)savev2_conv2d_39_bias_read_readvariableop5savev2_conv2d_transpose_16_kernel_read_readvariableop3savev2_conv2d_transpose_16_bias_read_readvariableop5savev2_conv2d_transpose_17_kernel_read_readvariableop3savev2_conv2d_transpose_17_bias_read_readvariableop5savev2_conv2d_transpose_18_kernel_read_readvariableop3savev2_conv2d_transpose_18_bias_read_readvariableop5savev2_conv2d_transpose_19_kernel_read_readvariableop3savev2_conv2d_transpose_19_bias_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes
2Р
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:Л
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*й
_input_shapes„
‘: :@:@:@А:А:АА:А:АА:А:АА:А:АА:А:@А:@:А:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
:@: 

_output_shapes
:@:-)
'
_output_shapes
:@А:!

_output_shapes	
:А:.*
(
_output_shapes
:АА:!

_output_shapes	
:А:.*
(
_output_shapes
:АА:!

_output_shapes	
:А:.	*
(
_output_shapes
:АА:!


_output_shapes	
:А:.*
(
_output_shapes
:АА:!

_output_shapes	
:А:-)
'
_output_shapes
:@А: 

_output_shapes
:@:-)
'
_output_shapes
:А: 

_output_shapes
::

_output_shapes
: 
ц
Ґ
*__inference_conv2d_39_layer_call_fn_532768

inputs#
unknown:АА
	unknown_0:	А
identityИҐStatefulPartitionedCallж
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_39_layer_call_and_return_conditional_losses_531948x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:€€€€€€€€€А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :€€€€€€€€€  А: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:€€€€€€€€€  А
 
_user_specified_nameinputs
У
е
)__inference_model_13_layer_call_fn_532463

inputs!
unknown:@
	unknown_0:@$
	unknown_1:@А
	unknown_2:	А%
	unknown_3:АА
	unknown_4:	А%
	unknown_5:АА
	unknown_6:	А%
	unknown_7:АА
	unknown_8:	А%
	unknown_9:АА

unknown_10:	А%

unknown_11:@А

unknown_12:@%

unknown_13:А

unknown_14:
identityИҐStatefulPartitionedCall°
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_model_13_layer_call_and_return_conditional_losses_532184y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€АА`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:€€€€€€€€€АА: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
ЋC
Б
"__inference__traced_restore_533119
file_prefix;
!assignvariableop_conv2d_36_kernel:@/
!assignvariableop_1_conv2d_36_bias:@>
#assignvariableop_2_conv2d_37_kernel:@А0
!assignvariableop_3_conv2d_37_bias:	А?
#assignvariableop_4_conv2d_38_kernel:АА0
!assignvariableop_5_conv2d_38_bias:	А?
#assignvariableop_6_conv2d_39_kernel:АА0
!assignvariableop_7_conv2d_39_bias:	АI
-assignvariableop_8_conv2d_transpose_16_kernel:АА:
+assignvariableop_9_conv2d_transpose_16_bias:	АJ
.assignvariableop_10_conv2d_transpose_17_kernel:АА;
,assignvariableop_11_conv2d_transpose_17_bias:	АI
.assignvariableop_12_conv2d_transpose_18_kernel:@А:
,assignvariableop_13_conv2d_transpose_18_bias:@I
.assignvariableop_14_conv2d_transpose_19_kernel:А:
,assignvariableop_15_conv2d_transpose_19_bias:
identity_17ИҐAssignVariableOpҐAssignVariableOp_1ҐAssignVariableOp_10ҐAssignVariableOp_11ҐAssignVariableOp_12ҐAssignVariableOp_13ҐAssignVariableOp_14ҐAssignVariableOp_15ҐAssignVariableOp_2ҐAssignVariableOp_3ҐAssignVariableOp_4ҐAssignVariableOp_5ҐAssignVariableOp_6ҐAssignVariableOp_7ҐAssignVariableOp_8ҐAssignVariableOp_9э
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*£
valueЩBЦB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHТ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*5
value,B*B B B B B B B B B B B B B B B B B у
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*X
_output_shapesF
D:::::::::::::::::*
dtypes
2[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOpAssignVariableOp!assignvariableop_conv2d_36_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_1AssignVariableOp!assignvariableop_1_conv2d_36_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:Т
AssignVariableOp_2AssignVariableOp#assignvariableop_2_conv2d_37_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_3AssignVariableOp!assignvariableop_3_conv2d_37_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:Т
AssignVariableOp_4AssignVariableOp#assignvariableop_4_conv2d_38_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_5AssignVariableOp!assignvariableop_5_conv2d_38_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:Т
AssignVariableOp_6AssignVariableOp#assignvariableop_6_conv2d_39_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_7AssignVariableOp!assignvariableop_7_conv2d_39_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_8AssignVariableOp-assignvariableop_8_conv2d_transpose_16_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_9AssignVariableOp+assignvariableop_9_conv2d_transpose_16_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:Я
AssignVariableOp_10AssignVariableOp.assignvariableop_10_conv2d_transpose_17_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:Э
AssignVariableOp_11AssignVariableOp,assignvariableop_11_conv2d_transpose_17_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:Я
AssignVariableOp_12AssignVariableOp.assignvariableop_12_conv2d_transpose_18_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:Э
AssignVariableOp_13AssignVariableOp,assignvariableop_13_conv2d_transpose_18_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:Я
AssignVariableOp_14AssignVariableOp.assignvariableop_14_conv2d_transpose_19_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:Э
AssignVariableOp_15AssignVariableOp,assignvariableop_15_conv2d_transpose_19_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ѓ
Identity_16Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_17IdentityIdentity_16:output:0^NoOp_1*
T0*
_output_shapes
: Ь
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_17Identity_17:output:0*5
_input_shapes$
": : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
Р
А
E__inference_conv2d_37_layer_call_and_return_conditional_losses_531914

inputs9
conv2d_readvariableop_resource:@А.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€@@А*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€@@АY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€@@Аj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:€€€€€€€€€@@Аw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:€€€€€€€€€АА@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:€€€€€€€€€АА@
 
_user_specified_nameinputs
с
t
J__inference_concatenate_17_layer_call_and_return_conditional_losses_531980

inputs
inputs_1
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :~
concatConcatV2inputsinputs_1concat/axis:output:0*
N*
T0*0
_output_shapes
:€€€€€€€€€@@А`
IdentityIdentityconcat:output:0*
T0*0
_output_shapes
:€€€€€€€€€@@А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:€€€€€€€€€@@А:€€€€€€€€€@@А:X T
0
_output_shapes
:€€€€€€€€€@@А
 
_user_specified_nameinputs:XT
0
_output_shapes
:€€€€€€€€€@@А
 
_user_specified_nameinputs
…!
Э
O__inference_conv2d_transpose_18_layer_call_and_return_conditional_losses_531827

inputsC
(conv2d_transpose_readvariableop_resource:@А-
biasadd_readvariableop_resource:@
identityИҐBiasAdd/ReadVariableOpҐconv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
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
valueB:—
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
valueB:ў
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
valueB:ў
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
value	B :@y
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
valueB:ў
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskС
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*'
_output_shapes
:@А*
dtype0№
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Щ
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@j
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@{
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@Б
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:j f
B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А
 
_user_specified_nameinputs
п
[
/__inference_concatenate_18_layer_call_fn_532940
inputs_0
inputs_1
identity–
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:€€€€€€€€€ААА* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *S
fNRL
J__inference_concatenate_18_layer_call_and_return_conditional_losses_531994k
IdentityIdentityPartitionedCall:output:0*
T0*2
_output_shapes 
:€€€€€€€€€ААА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*M
_input_shapes<
::€€€€€€€€€АА@:€€€€€€€€€АА@:[ W
1
_output_shapes
:€€€€€€€€€АА@
"
_user_specified_name
inputs/0:[W
1
_output_shapes
:€€€€€€€€€АА@
"
_user_specified_name
inputs/1
ч
Я
*__inference_conv2d_36_layer_call_fn_532708

inputs!
unknown:@
	unknown_0:@
identityИҐStatefulPartitionedCallз
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_36_layer_call_and_return_conditional_losses_531897y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€АА@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:€€€€€€€€€АА: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
Р
А
E__inference_conv2d_37_layer_call_and_return_conditional_losses_532739

inputs9
conv2d_readvariableop_resource:@А.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€@@А*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€@@АY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€@@Аj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:€€€€€€€€€@@Аw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:€€€€€€€€€АА@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:€€€€€€€€€АА@
 
_user_specified_nameinputs
ъ
v
J__inference_concatenate_17_layer_call_and_return_conditional_losses_532891
inputs_0
inputs_1
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :А
concatConcatV2inputs_0inputs_1concat/axis:output:0*
N*
T0*0
_output_shapes
:€€€€€€€€€@@А`
IdentityIdentityconcat:output:0*
T0*0
_output_shapes
:€€€€€€€€€@@А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:€€€€€€€€€@@А:€€€€€€€€€@@А:Z V
0
_output_shapes
:€€€€€€€€€@@А
"
_user_specified_name
inputs/0:ZV
0
_output_shapes
:€€€€€€€€€@@А
"
_user_specified_name
inputs/1
ъ
v
J__inference_concatenate_16_layer_call_and_return_conditional_losses_532835
inputs_0
inputs_1
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :А
concatConcatV2inputs_0inputs_1concat/axis:output:0*
N*
T0*0
_output_shapes
:€€€€€€€€€  А`
IdentityIdentityconcat:output:0*
T0*0
_output_shapes
:€€€€€€€€€  А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:€€€€€€€€€  А:€€€€€€€€€  А:Z V
0
_output_shapes
:€€€€€€€€€  А
"
_user_specified_name
inputs/0:ZV
0
_output_shapes
:€€€€€€€€€  А
"
_user_specified_name
inputs/1
…!
Э
O__inference_conv2d_transpose_18_layer_call_and_return_conditional_losses_532934

inputsC
(conv2d_transpose_readvariableop_resource:@А-
biasadd_readvariableop_resource:@
identityИҐBiasAdd/ReadVariableOpҐconv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
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
valueB:—
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
valueB:ў
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
valueB:ў
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
value	B :@y
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
valueB:ў
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskС
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*'
_output_shapes
:@А*
dtype0№
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Щ
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@j
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@{
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@Б
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:j f
B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А
 
_user_specified_nameinputs
ѕ9
л
D__inference_model_13_layer_call_and_return_conditional_losses_532184

inputs*
conv2d_36_532140:@
conv2d_36_532142:@+
conv2d_37_532145:@А
conv2d_37_532147:	А,
conv2d_38_532150:АА
conv2d_38_532152:	А,
conv2d_39_532155:АА
conv2d_39_532157:	А6
conv2d_transpose_16_532160:АА)
conv2d_transpose_16_532162:	А6
conv2d_transpose_17_532166:АА)
conv2d_transpose_17_532168:	А5
conv2d_transpose_18_532172:@А(
conv2d_transpose_18_532174:@5
conv2d_transpose_19_532178:А(
conv2d_transpose_19_532180:
identityИҐ!conv2d_36/StatefulPartitionedCallҐ!conv2d_37/StatefulPartitionedCallҐ!conv2d_38/StatefulPartitionedCallҐ!conv2d_39/StatefulPartitionedCallҐ+conv2d_transpose_16/StatefulPartitionedCallҐ+conv2d_transpose_17/StatefulPartitionedCallҐ+conv2d_transpose_18/StatefulPartitionedCallҐ+conv2d_transpose_19/StatefulPartitionedCallБ
!conv2d_36/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_36_532140conv2d_36_532142*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_36_layer_call_and_return_conditional_losses_531897§
!conv2d_37/StatefulPartitionedCallStatefulPartitionedCall*conv2d_36/StatefulPartitionedCall:output:0conv2d_37_532145conv2d_37_532147*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€@@А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_37_layer_call_and_return_conditional_losses_531914§
!conv2d_38/StatefulPartitionedCallStatefulPartitionedCall*conv2d_37/StatefulPartitionedCall:output:0conv2d_38_532150conv2d_38_532152*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€  А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_38_layer_call_and_return_conditional_losses_531931§
!conv2d_39/StatefulPartitionedCallStatefulPartitionedCall*conv2d_38/StatefulPartitionedCall:output:0conv2d_39_532155conv2d_39_532157*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_39_layer_call_and_return_conditional_losses_531948ћ
+conv2d_transpose_16/StatefulPartitionedCallStatefulPartitionedCall*conv2d_39/StatefulPartitionedCall:output:0conv2d_transpose_16_532160conv2d_transpose_16_532162*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€  А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *X
fSRQ
O__inference_conv2d_transpose_16_layer_call_and_return_conditional_losses_531737Ђ
concatenate_16/PartitionedCallPartitionedCall4conv2d_transpose_16/StatefulPartitionedCall:output:0*conv2d_38/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€  А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *S
fNRL
J__inference_concatenate_16_layer_call_and_return_conditional_losses_531966…
+conv2d_transpose_17/StatefulPartitionedCallStatefulPartitionedCall'concatenate_16/PartitionedCall:output:0conv2d_transpose_17_532166conv2d_transpose_17_532168*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€@@А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *X
fSRQ
O__inference_conv2d_transpose_17_layer_call_and_return_conditional_losses_531782Ђ
concatenate_17/PartitionedCallPartitionedCall4conv2d_transpose_17/StatefulPartitionedCall:output:0*conv2d_37/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€@@А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *S
fNRL
J__inference_concatenate_17_layer_call_and_return_conditional_losses_531980 
+conv2d_transpose_18/StatefulPartitionedCallStatefulPartitionedCall'concatenate_17/PartitionedCall:output:0conv2d_transpose_18_532172conv2d_transpose_18_532174*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *X
fSRQ
O__inference_conv2d_transpose_18_layer_call_and_return_conditional_losses_531827≠
concatenate_18/PartitionedCallPartitionedCall4conv2d_transpose_18/StatefulPartitionedCall:output:0*conv2d_36/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:€€€€€€€€€ААА* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *S
fNRL
J__inference_concatenate_18_layer_call_and_return_conditional_losses_531994 
+conv2d_transpose_19/StatefulPartitionedCallStatefulPartitionedCall'concatenate_18/PartitionedCall:output:0conv2d_transpose_19_532178conv2d_transpose_19_532180*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *X
fSRQ
O__inference_conv2d_transpose_19_layer_call_and_return_conditional_losses_531872Н
IdentityIdentity4conv2d_transpose_19/StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€ААО
NoOpNoOp"^conv2d_36/StatefulPartitionedCall"^conv2d_37/StatefulPartitionedCall"^conv2d_38/StatefulPartitionedCall"^conv2d_39/StatefulPartitionedCall,^conv2d_transpose_16/StatefulPartitionedCall,^conv2d_transpose_17/StatefulPartitionedCall,^conv2d_transpose_18/StatefulPartitionedCall,^conv2d_transpose_19/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:€€€€€€€€€АА: : : : : : : : : : : : : : : : 2F
!conv2d_36/StatefulPartitionedCall!conv2d_36/StatefulPartitionedCall2F
!conv2d_37/StatefulPartitionedCall!conv2d_37/StatefulPartitionedCall2F
!conv2d_38/StatefulPartitionedCall!conv2d_38/StatefulPartitionedCall2F
!conv2d_39/StatefulPartitionedCall!conv2d_39/StatefulPartitionedCall2Z
+conv2d_transpose_16/StatefulPartitionedCall+conv2d_transpose_16/StatefulPartitionedCall2Z
+conv2d_transpose_17/StatefulPartitionedCall+conv2d_transpose_17/StatefulPartitionedCall2Z
+conv2d_transpose_18/StatefulPartitionedCall+conv2d_transpose_18/StatefulPartitionedCall2Z
+conv2d_transpose_19/StatefulPartitionedCall+conv2d_transpose_19/StatefulPartitionedCall:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
њ!
Э
O__inference_conv2d_transpose_19_layer_call_and_return_conditional_losses_532990

inputsC
(conv2d_transpose_readvariableop_resource:А-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐconv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
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
valueB:—
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
valueB:ў
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
valueB:ў
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
value	B :y
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
valueB:ў
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskС
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*'
_output_shapes
:А*
dtype0№
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0Щ
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€j
TanhTanhBiasAdd:output:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€q
IdentityIdentityTanh:y:0^NoOp*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€Б
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:j f
B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А
 
_user_specified_nameinputs
ґЬ
у
D__inference_model_13_layer_call_and_return_conditional_losses_532581

inputsB
(conv2d_36_conv2d_readvariableop_resource:@7
)conv2d_36_biasadd_readvariableop_resource:@C
(conv2d_37_conv2d_readvariableop_resource:@А8
)conv2d_37_biasadd_readvariableop_resource:	АD
(conv2d_38_conv2d_readvariableop_resource:АА8
)conv2d_38_biasadd_readvariableop_resource:	АD
(conv2d_39_conv2d_readvariableop_resource:АА8
)conv2d_39_biasadd_readvariableop_resource:	АX
<conv2d_transpose_16_conv2d_transpose_readvariableop_resource:ААB
3conv2d_transpose_16_biasadd_readvariableop_resource:	АX
<conv2d_transpose_17_conv2d_transpose_readvariableop_resource:ААB
3conv2d_transpose_17_biasadd_readvariableop_resource:	АW
<conv2d_transpose_18_conv2d_transpose_readvariableop_resource:@АA
3conv2d_transpose_18_biasadd_readvariableop_resource:@W
<conv2d_transpose_19_conv2d_transpose_readvariableop_resource:АA
3conv2d_transpose_19_biasadd_readvariableop_resource:
identityИҐ conv2d_36/BiasAdd/ReadVariableOpҐconv2d_36/Conv2D/ReadVariableOpҐ conv2d_37/BiasAdd/ReadVariableOpҐconv2d_37/Conv2D/ReadVariableOpҐ conv2d_38/BiasAdd/ReadVariableOpҐconv2d_38/Conv2D/ReadVariableOpҐ conv2d_39/BiasAdd/ReadVariableOpҐconv2d_39/Conv2D/ReadVariableOpҐ*conv2d_transpose_16/BiasAdd/ReadVariableOpҐ3conv2d_transpose_16/conv2d_transpose/ReadVariableOpҐ*conv2d_transpose_17/BiasAdd/ReadVariableOpҐ3conv2d_transpose_17/conv2d_transpose/ReadVariableOpҐ*conv2d_transpose_18/BiasAdd/ReadVariableOpҐ3conv2d_transpose_18/conv2d_transpose/ReadVariableOpҐ*conv2d_transpose_19/BiasAdd/ReadVariableOpҐ3conv2d_transpose_19/conv2d_transpose/ReadVariableOpР
conv2d_36/Conv2D/ReadVariableOpReadVariableOp(conv2d_36_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0ѓ
conv2d_36/Conv2DConv2Dinputs'conv2d_36/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€АА@*
paddingSAME*
strides
Ж
 conv2d_36/BiasAdd/ReadVariableOpReadVariableOp)conv2d_36_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Э
conv2d_36/BiasAddBiasAddconv2d_36/Conv2D:output:0(conv2d_36/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€АА@n
conv2d_36/ReluReluconv2d_36/BiasAdd:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА@С
conv2d_37/Conv2D/ReadVariableOpReadVariableOp(conv2d_37_conv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype0ƒ
conv2d_37/Conv2DConv2Dconv2d_36/Relu:activations:0'conv2d_37/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€@@А*
paddingSAME*
strides
З
 conv2d_37/BiasAdd/ReadVariableOpReadVariableOp)conv2d_37_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Ь
conv2d_37/BiasAddBiasAddconv2d_37/Conv2D:output:0(conv2d_37/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€@@Аm
conv2d_37/ReluReluconv2d_37/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€@@АТ
conv2d_38/Conv2D/ReadVariableOpReadVariableOp(conv2d_38_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0ƒ
conv2d_38/Conv2DConv2Dconv2d_37/Relu:activations:0'conv2d_38/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€  А*
paddingSAME*
strides
З
 conv2d_38/BiasAdd/ReadVariableOpReadVariableOp)conv2d_38_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Ь
conv2d_38/BiasAddBiasAddconv2d_38/Conv2D:output:0(conv2d_38/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€  Аm
conv2d_38/ReluReluconv2d_38/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€  АТ
conv2d_39/Conv2D/ReadVariableOpReadVariableOp(conv2d_39_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0ƒ
conv2d_39/Conv2DConv2Dconv2d_38/Relu:activations:0'conv2d_39/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
З
 conv2d_39/BiasAdd/ReadVariableOpReadVariableOp)conv2d_39_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Ь
conv2d_39/BiasAddBiasAddconv2d_39/Conv2D:output:0(conv2d_39/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€Аm
conv2d_39/ReluReluconv2d_39/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€Аe
conv2d_transpose_16/ShapeShapeconv2d_39/Relu:activations:0*
T0*
_output_shapes
:q
'conv2d_transpose_16/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)conv2d_transpose_16/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)conv2d_transpose_16/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:µ
!conv2d_transpose_16/strided_sliceStridedSlice"conv2d_transpose_16/Shape:output:00conv2d_transpose_16/strided_slice/stack:output:02conv2d_transpose_16/strided_slice/stack_1:output:02conv2d_transpose_16/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask]
conv2d_transpose_16/stack/1Const*
_output_shapes
: *
dtype0*
value	B : ]
conv2d_transpose_16/stack/2Const*
_output_shapes
: *
dtype0*
value	B : ^
conv2d_transpose_16/stack/3Const*
_output_shapes
: *
dtype0*
value
B :Ан
conv2d_transpose_16/stackPack*conv2d_transpose_16/strided_slice:output:0$conv2d_transpose_16/stack/1:output:0$conv2d_transpose_16/stack/2:output:0$conv2d_transpose_16/stack/3:output:0*
N*
T0*
_output_shapes
:s
)conv2d_transpose_16/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+conv2d_transpose_16/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+conv2d_transpose_16/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:љ
#conv2d_transpose_16/strided_slice_1StridedSlice"conv2d_transpose_16/stack:output:02conv2d_transpose_16/strided_slice_1/stack:output:04conv2d_transpose_16/strided_slice_1/stack_1:output:04conv2d_transpose_16/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskЇ
3conv2d_transpose_16/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_16_conv2d_transpose_readvariableop_resource*(
_output_shapes
:АА*
dtype0Э
$conv2d_transpose_16/conv2d_transposeConv2DBackpropInput"conv2d_transpose_16/stack:output:0;conv2d_transpose_16/conv2d_transpose/ReadVariableOp:value:0conv2d_39/Relu:activations:0*
T0*0
_output_shapes
:€€€€€€€€€  А*
paddingSAME*
strides
Ы
*conv2d_transpose_16/BiasAdd/ReadVariableOpReadVariableOp3conv2d_transpose_16_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0ƒ
conv2d_transpose_16/BiasAddBiasAdd-conv2d_transpose_16/conv2d_transpose:output:02conv2d_transpose_16/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€  АБ
conv2d_transpose_16/ReluRelu$conv2d_transpose_16/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€  А\
concatenate_16/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :–
concatenate_16/concatConcatV2&conv2d_transpose_16/Relu:activations:0conv2d_38/Relu:activations:0#concatenate_16/concat/axis:output:0*
N*
T0*0
_output_shapes
:€€€€€€€€€  Аg
conv2d_transpose_17/ShapeShapeconcatenate_16/concat:output:0*
T0*
_output_shapes
:q
'conv2d_transpose_17/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)conv2d_transpose_17/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)conv2d_transpose_17/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:µ
!conv2d_transpose_17/strided_sliceStridedSlice"conv2d_transpose_17/Shape:output:00conv2d_transpose_17/strided_slice/stack:output:02conv2d_transpose_17/strided_slice/stack_1:output:02conv2d_transpose_17/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask]
conv2d_transpose_17/stack/1Const*
_output_shapes
: *
dtype0*
value	B :@]
conv2d_transpose_17/stack/2Const*
_output_shapes
: *
dtype0*
value	B :@^
conv2d_transpose_17/stack/3Const*
_output_shapes
: *
dtype0*
value
B :Ан
conv2d_transpose_17/stackPack*conv2d_transpose_17/strided_slice:output:0$conv2d_transpose_17/stack/1:output:0$conv2d_transpose_17/stack/2:output:0$conv2d_transpose_17/stack/3:output:0*
N*
T0*
_output_shapes
:s
)conv2d_transpose_17/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+conv2d_transpose_17/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+conv2d_transpose_17/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:љ
#conv2d_transpose_17/strided_slice_1StridedSlice"conv2d_transpose_17/stack:output:02conv2d_transpose_17/strided_slice_1/stack:output:04conv2d_transpose_17/strided_slice_1/stack_1:output:04conv2d_transpose_17/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskЇ
3conv2d_transpose_17/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_17_conv2d_transpose_readvariableop_resource*(
_output_shapes
:АА*
dtype0Я
$conv2d_transpose_17/conv2d_transposeConv2DBackpropInput"conv2d_transpose_17/stack:output:0;conv2d_transpose_17/conv2d_transpose/ReadVariableOp:value:0concatenate_16/concat:output:0*
T0*0
_output_shapes
:€€€€€€€€€@@А*
paddingSAME*
strides
Ы
*conv2d_transpose_17/BiasAdd/ReadVariableOpReadVariableOp3conv2d_transpose_17_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0ƒ
conv2d_transpose_17/BiasAddBiasAdd-conv2d_transpose_17/conv2d_transpose:output:02conv2d_transpose_17/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€@@АБ
conv2d_transpose_17/ReluRelu$conv2d_transpose_17/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€@@А\
concatenate_17/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :–
concatenate_17/concatConcatV2&conv2d_transpose_17/Relu:activations:0conv2d_37/Relu:activations:0#concatenate_17/concat/axis:output:0*
N*
T0*0
_output_shapes
:€€€€€€€€€@@Аg
conv2d_transpose_18/ShapeShapeconcatenate_17/concat:output:0*
T0*
_output_shapes
:q
'conv2d_transpose_18/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)conv2d_transpose_18/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)conv2d_transpose_18/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:µ
!conv2d_transpose_18/strided_sliceStridedSlice"conv2d_transpose_18/Shape:output:00conv2d_transpose_18/strided_slice/stack:output:02conv2d_transpose_18/strided_slice/stack_1:output:02conv2d_transpose_18/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
conv2d_transpose_18/stack/1Const*
_output_shapes
: *
dtype0*
value
B :А^
conv2d_transpose_18/stack/2Const*
_output_shapes
: *
dtype0*
value
B :А]
conv2d_transpose_18/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@н
conv2d_transpose_18/stackPack*conv2d_transpose_18/strided_slice:output:0$conv2d_transpose_18/stack/1:output:0$conv2d_transpose_18/stack/2:output:0$conv2d_transpose_18/stack/3:output:0*
N*
T0*
_output_shapes
:s
)conv2d_transpose_18/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+conv2d_transpose_18/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+conv2d_transpose_18/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:љ
#conv2d_transpose_18/strided_slice_1StridedSlice"conv2d_transpose_18/stack:output:02conv2d_transpose_18/strided_slice_1/stack:output:04conv2d_transpose_18/strided_slice_1/stack_1:output:04conv2d_transpose_18/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskє
3conv2d_transpose_18/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_18_conv2d_transpose_readvariableop_resource*'
_output_shapes
:@А*
dtype0†
$conv2d_transpose_18/conv2d_transposeConv2DBackpropInput"conv2d_transpose_18/stack:output:0;conv2d_transpose_18/conv2d_transpose/ReadVariableOp:value:0concatenate_17/concat:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА@*
paddingSAME*
strides
Ъ
*conv2d_transpose_18/BiasAdd/ReadVariableOpReadVariableOp3conv2d_transpose_18_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0≈
conv2d_transpose_18/BiasAddBiasAdd-conv2d_transpose_18/conv2d_transpose:output:02conv2d_transpose_18/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€АА@В
conv2d_transpose_18/ReluRelu$conv2d_transpose_18/BiasAdd:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА@\
concatenate_18/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :“
concatenate_18/concatConcatV2&conv2d_transpose_18/Relu:activations:0conv2d_36/Relu:activations:0#concatenate_18/concat/axis:output:0*
N*
T0*2
_output_shapes 
:€€€€€€€€€АААg
conv2d_transpose_19/ShapeShapeconcatenate_18/concat:output:0*
T0*
_output_shapes
:q
'conv2d_transpose_19/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)conv2d_transpose_19/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)conv2d_transpose_19/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:µ
!conv2d_transpose_19/strided_sliceStridedSlice"conv2d_transpose_19/Shape:output:00conv2d_transpose_19/strided_slice/stack:output:02conv2d_transpose_19/strided_slice/stack_1:output:02conv2d_transpose_19/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
conv2d_transpose_19/stack/1Const*
_output_shapes
: *
dtype0*
value
B :А^
conv2d_transpose_19/stack/2Const*
_output_shapes
: *
dtype0*
value
B :А]
conv2d_transpose_19/stack/3Const*
_output_shapes
: *
dtype0*
value	B :н
conv2d_transpose_19/stackPack*conv2d_transpose_19/strided_slice:output:0$conv2d_transpose_19/stack/1:output:0$conv2d_transpose_19/stack/2:output:0$conv2d_transpose_19/stack/3:output:0*
N*
T0*
_output_shapes
:s
)conv2d_transpose_19/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+conv2d_transpose_19/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+conv2d_transpose_19/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:љ
#conv2d_transpose_19/strided_slice_1StridedSlice"conv2d_transpose_19/stack:output:02conv2d_transpose_19/strided_slice_1/stack:output:04conv2d_transpose_19/strided_slice_1/stack_1:output:04conv2d_transpose_19/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskє
3conv2d_transpose_19/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_19_conv2d_transpose_readvariableop_resource*'
_output_shapes
:А*
dtype0†
$conv2d_transpose_19/conv2d_transposeConv2DBackpropInput"conv2d_transpose_19/stack:output:0;conv2d_transpose_19/conv2d_transpose/ReadVariableOp:value:0concatenate_18/concat:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА*
paddingSAME*
strides
Ъ
*conv2d_transpose_19/BiasAdd/ReadVariableOpReadVariableOp3conv2d_transpose_19_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0≈
conv2d_transpose_19/BiasAddBiasAdd-conv2d_transpose_19/conv2d_transpose:output:02conv2d_transpose_19/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€ААВ
conv2d_transpose_19/TanhTanh$conv2d_transpose_19/BiasAdd:output:0*
T0*1
_output_shapes
:€€€€€€€€€ААu
IdentityIdentityconv2d_transpose_19/Tanh:y:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€ААж
NoOpNoOp!^conv2d_36/BiasAdd/ReadVariableOp ^conv2d_36/Conv2D/ReadVariableOp!^conv2d_37/BiasAdd/ReadVariableOp ^conv2d_37/Conv2D/ReadVariableOp!^conv2d_38/BiasAdd/ReadVariableOp ^conv2d_38/Conv2D/ReadVariableOp!^conv2d_39/BiasAdd/ReadVariableOp ^conv2d_39/Conv2D/ReadVariableOp+^conv2d_transpose_16/BiasAdd/ReadVariableOp4^conv2d_transpose_16/conv2d_transpose/ReadVariableOp+^conv2d_transpose_17/BiasAdd/ReadVariableOp4^conv2d_transpose_17/conv2d_transpose/ReadVariableOp+^conv2d_transpose_18/BiasAdd/ReadVariableOp4^conv2d_transpose_18/conv2d_transpose/ReadVariableOp+^conv2d_transpose_19/BiasAdd/ReadVariableOp4^conv2d_transpose_19/conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:€€€€€€€€€АА: : : : : : : : : : : : : : : : 2D
 conv2d_36/BiasAdd/ReadVariableOp conv2d_36/BiasAdd/ReadVariableOp2B
conv2d_36/Conv2D/ReadVariableOpconv2d_36/Conv2D/ReadVariableOp2D
 conv2d_37/BiasAdd/ReadVariableOp conv2d_37/BiasAdd/ReadVariableOp2B
conv2d_37/Conv2D/ReadVariableOpconv2d_37/Conv2D/ReadVariableOp2D
 conv2d_38/BiasAdd/ReadVariableOp conv2d_38/BiasAdd/ReadVariableOp2B
conv2d_38/Conv2D/ReadVariableOpconv2d_38/Conv2D/ReadVariableOp2D
 conv2d_39/BiasAdd/ReadVariableOp conv2d_39/BiasAdd/ReadVariableOp2B
conv2d_39/Conv2D/ReadVariableOpconv2d_39/Conv2D/ReadVariableOp2X
*conv2d_transpose_16/BiasAdd/ReadVariableOp*conv2d_transpose_16/BiasAdd/ReadVariableOp2j
3conv2d_transpose_16/conv2d_transpose/ReadVariableOp3conv2d_transpose_16/conv2d_transpose/ReadVariableOp2X
*conv2d_transpose_17/BiasAdd/ReadVariableOp*conv2d_transpose_17/BiasAdd/ReadVariableOp2j
3conv2d_transpose_17/conv2d_transpose/ReadVariableOp3conv2d_transpose_17/conv2d_transpose/ReadVariableOp2X
*conv2d_transpose_18/BiasAdd/ReadVariableOp*conv2d_transpose_18/BiasAdd/ReadVariableOp2j
3conv2d_transpose_18/conv2d_transpose/ReadVariableOp3conv2d_transpose_18/conv2d_transpose/ReadVariableOp2X
*conv2d_transpose_19/BiasAdd/ReadVariableOp*conv2d_transpose_19/BiasAdd/ReadVariableOp2j
3conv2d_transpose_19/conv2d_transpose/ReadVariableOp3conv2d_transpose_19/conv2d_transpose/ReadVariableOp:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs"µ	L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*ћ
serving_defaultЄ
G
input_18;
serving_default_input_18:0€€€€€€€€€ААQ
conv2d_transpose_19:
StatefulPartitionedCall:0€€€€€€€€€ААtensorflow/serving/predict:ЧИ
¬
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
layer_with_weights-4
layer-5
layer-6
layer_with_weights-5
layer-7
	layer-8

layer_with_weights-6

layer-9
layer-10
layer_with_weights-7
layer-11
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures"
_tf_keras_network
6
_init_input_shape"
_tf_keras_input_layer
Ё
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias
 _jit_compiled_convolution_op"
_tf_keras_layer
Ё
	variables
 trainable_variables
!regularization_losses
"	keras_api
#__call__
*$&call_and_return_all_conditional_losses

%kernel
&bias
 '_jit_compiled_convolution_op"
_tf_keras_layer
Ё
(	variables
)trainable_variables
*regularization_losses
+	keras_api
,__call__
*-&call_and_return_all_conditional_losses

.kernel
/bias
 0_jit_compiled_convolution_op"
_tf_keras_layer
Ё
1	variables
2trainable_variables
3regularization_losses
4	keras_api
5__call__
*6&call_and_return_all_conditional_losses

7kernel
8bias
 9_jit_compiled_convolution_op"
_tf_keras_layer
Ё
:	variables
;trainable_variables
<regularization_losses
=	keras_api
>__call__
*?&call_and_return_all_conditional_losses

@kernel
Abias
 B_jit_compiled_convolution_op"
_tf_keras_layer
•
C	variables
Dtrainable_variables
Eregularization_losses
F	keras_api
G__call__
*H&call_and_return_all_conditional_losses"
_tf_keras_layer
Ё
I	variables
Jtrainable_variables
Kregularization_losses
L	keras_api
M__call__
*N&call_and_return_all_conditional_losses

Okernel
Pbias
 Q_jit_compiled_convolution_op"
_tf_keras_layer
•
R	variables
Strainable_variables
Tregularization_losses
U	keras_api
V__call__
*W&call_and_return_all_conditional_losses"
_tf_keras_layer
Ё
X	variables
Ytrainable_variables
Zregularization_losses
[	keras_api
\__call__
*]&call_and_return_all_conditional_losses

^kernel
_bias
 `_jit_compiled_convolution_op"
_tf_keras_layer
•
a	variables
btrainable_variables
cregularization_losses
d	keras_api
e__call__
*f&call_and_return_all_conditional_losses"
_tf_keras_layer
Ё
g	variables
htrainable_variables
iregularization_losses
j	keras_api
k__call__
*l&call_and_return_all_conditional_losses

mkernel
nbias
 o_jit_compiled_convolution_op"
_tf_keras_layer
Ц
0
1
%2
&3
.4
/5
76
87
@8
A9
O10
P11
^12
_13
m14
n15"
trackable_list_wrapper
Ц
0
1
%2
&3
.4
/5
76
87
@8
A9
O10
P11
^12
_13
m14
n15"
trackable_list_wrapper
 "
trackable_list_wrapper
 
pnon_trainable_variables

qlayers
rmetrics
slayer_regularization_losses
tlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
ў
utrace_0
vtrace_1
wtrace_2
xtrace_32о
)__inference_model_13_layer_call_fn_532037
)__inference_model_13_layer_call_fn_532426
)__inference_model_13_layer_call_fn_532463
)__inference_model_13_layer_call_fn_532256њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zutrace_0zvtrace_1zwtrace_2zxtrace_3
≈
ytrace_0
ztrace_1
{trace_2
|trace_32Џ
D__inference_model_13_layer_call_and_return_conditional_losses_532581
D__inference_model_13_layer_call_and_return_conditional_losses_532699
D__inference_model_13_layer_call_and_return_conditional_losses_532303
D__inference_model_13_layer_call_and_return_conditional_losses_532350њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zytrace_0zztrace_1z{trace_2z|trace_3
ЌB 
!__inference__wrapped_model_531699input_18"Ш
С≤Н
FullArgSpec
argsЪ 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
,
}serving_default"
signature_map
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
∞
~non_trainable_variables

layers
Аmetrics
 Бlayer_regularization_losses
Вlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
р
Гtrace_02—
*__inference_conv2d_36_layer_call_fn_532708Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
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
annotations™ *
 zГtrace_0
Л
Дtrace_02м
E__inference_conv2d_36_layer_call_and_return_conditional_losses_532719Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
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
annotations™ *
 zДtrace_0
*:(@2conv2d_36/kernel
:@2conv2d_36/bias
і2±Ѓ
£≤Я
FullArgSpec'
argsЪ
jself
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
annotations™ *
 0
.
%0
&1"
trackable_list_wrapper
.
%0
&1"
trackable_list_wrapper
 "
trackable_list_wrapper
≤
Еnon_trainable_variables
Жlayers
Зmetrics
 Иlayer_regularization_losses
Йlayer_metrics
	variables
 trainable_variables
!regularization_losses
#__call__
*$&call_and_return_all_conditional_losses
&$"call_and_return_conditional_losses"
_generic_user_object
р
Кtrace_02—
*__inference_conv2d_37_layer_call_fn_532728Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
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
annotations™ *
 zКtrace_0
Л
Лtrace_02м
E__inference_conv2d_37_layer_call_and_return_conditional_losses_532739Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
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
annotations™ *
 zЛtrace_0
+:)@А2conv2d_37/kernel
:А2conv2d_37/bias
і2±Ѓ
£≤Я
FullArgSpec'
argsЪ
jself
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
annotations™ *
 0
.
.0
/1"
trackable_list_wrapper
.
.0
/1"
trackable_list_wrapper
 "
trackable_list_wrapper
≤
Мnon_trainable_variables
Нlayers
Оmetrics
 Пlayer_regularization_losses
Рlayer_metrics
(	variables
)trainable_variables
*regularization_losses
,__call__
*-&call_and_return_all_conditional_losses
&-"call_and_return_conditional_losses"
_generic_user_object
р
Сtrace_02—
*__inference_conv2d_38_layer_call_fn_532748Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
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
annotations™ *
 zСtrace_0
Л
Тtrace_02м
E__inference_conv2d_38_layer_call_and_return_conditional_losses_532759Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
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
annotations™ *
 zТtrace_0
,:*АА2conv2d_38/kernel
:А2conv2d_38/bias
і2±Ѓ
£≤Я
FullArgSpec'
argsЪ
jself
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
annotations™ *
 0
.
70
81"
trackable_list_wrapper
.
70
81"
trackable_list_wrapper
 "
trackable_list_wrapper
≤
Уnon_trainable_variables
Фlayers
Хmetrics
 Цlayer_regularization_losses
Чlayer_metrics
1	variables
2trainable_variables
3regularization_losses
5__call__
*6&call_and_return_all_conditional_losses
&6"call_and_return_conditional_losses"
_generic_user_object
р
Шtrace_02—
*__inference_conv2d_39_layer_call_fn_532768Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
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
annotations™ *
 zШtrace_0
Л
Щtrace_02м
E__inference_conv2d_39_layer_call_and_return_conditional_losses_532779Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
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
annotations™ *
 zЩtrace_0
,:*АА2conv2d_39/kernel
:А2conv2d_39/bias
і2±Ѓ
£≤Я
FullArgSpec'
argsЪ
jself
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
annotations™ *
 0
.
@0
A1"
trackable_list_wrapper
.
@0
A1"
trackable_list_wrapper
 "
trackable_list_wrapper
≤
Ъnon_trainable_variables
Ыlayers
Ьmetrics
 Эlayer_regularization_losses
Юlayer_metrics
:	variables
;trainable_variables
<regularization_losses
>__call__
*?&call_and_return_all_conditional_losses
&?"call_and_return_conditional_losses"
_generic_user_object
ъ
Яtrace_02џ
4__inference_conv2d_transpose_16_layer_call_fn_532788Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
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
annotations™ *
 zЯtrace_0
Х
†trace_02ц
O__inference_conv2d_transpose_16_layer_call_and_return_conditional_losses_532822Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
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
annotations™ *
 z†trace_0
6:4АА2conv2d_transpose_16/kernel
':%А2conv2d_transpose_16/bias
і2±Ѓ
£≤Я
FullArgSpec'
argsЪ
jself
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
annotations™ *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≤
°non_trainable_variables
Ґlayers
£metrics
 §layer_regularization_losses
•layer_metrics
C	variables
Dtrainable_variables
Eregularization_losses
G__call__
*H&call_and_return_all_conditional_losses
&H"call_and_return_conditional_losses"
_generic_user_object
х
¶trace_02÷
/__inference_concatenate_16_layer_call_fn_532828Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
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
annotations™ *
 z¶trace_0
Р
Іtrace_02с
J__inference_concatenate_16_layer_call_and_return_conditional_losses_532835Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
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
annotations™ *
 zІtrace_0
.
O0
P1"
trackable_list_wrapper
.
O0
P1"
trackable_list_wrapper
 "
trackable_list_wrapper
≤
®non_trainable_variables
©layers
™metrics
 Ђlayer_regularization_losses
ђlayer_metrics
I	variables
Jtrainable_variables
Kregularization_losses
M__call__
*N&call_and_return_all_conditional_losses
&N"call_and_return_conditional_losses"
_generic_user_object
ъ
≠trace_02џ
4__inference_conv2d_transpose_17_layer_call_fn_532844Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
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
annotations™ *
 z≠trace_0
Х
Ѓtrace_02ц
O__inference_conv2d_transpose_17_layer_call_and_return_conditional_losses_532878Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
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
annotations™ *
 zЃtrace_0
6:4АА2conv2d_transpose_17/kernel
':%А2conv2d_transpose_17/bias
і2±Ѓ
£≤Я
FullArgSpec'
argsЪ
jself
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
annotations™ *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≤
ѓnon_trainable_variables
∞layers
±metrics
 ≤layer_regularization_losses
≥layer_metrics
R	variables
Strainable_variables
Tregularization_losses
V__call__
*W&call_and_return_all_conditional_losses
&W"call_and_return_conditional_losses"
_generic_user_object
х
іtrace_02÷
/__inference_concatenate_17_layer_call_fn_532884Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
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
annotations™ *
 zіtrace_0
Р
µtrace_02с
J__inference_concatenate_17_layer_call_and_return_conditional_losses_532891Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
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
annotations™ *
 zµtrace_0
.
^0
_1"
trackable_list_wrapper
.
^0
_1"
trackable_list_wrapper
 "
trackable_list_wrapper
≤
ґnon_trainable_variables
Јlayers
Єmetrics
 єlayer_regularization_losses
Їlayer_metrics
X	variables
Ytrainable_variables
Zregularization_losses
\__call__
*]&call_and_return_all_conditional_losses
&]"call_and_return_conditional_losses"
_generic_user_object
ъ
їtrace_02џ
4__inference_conv2d_transpose_18_layer_call_fn_532900Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
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
annotations™ *
 zїtrace_0
Х
Љtrace_02ц
O__inference_conv2d_transpose_18_layer_call_and_return_conditional_losses_532934Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
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
annotations™ *
 zЉtrace_0
5:3@А2conv2d_transpose_18/kernel
&:$@2conv2d_transpose_18/bias
і2±Ѓ
£≤Я
FullArgSpec'
argsЪ
jself
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
annotations™ *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≤
љnon_trainable_variables
Њlayers
њmetrics
 јlayer_regularization_losses
Ѕlayer_metrics
a	variables
btrainable_variables
cregularization_losses
e__call__
*f&call_and_return_all_conditional_losses
&f"call_and_return_conditional_losses"
_generic_user_object
х
¬trace_02÷
/__inference_concatenate_18_layer_call_fn_532940Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
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
annotations™ *
 z¬trace_0
Р
√trace_02с
J__inference_concatenate_18_layer_call_and_return_conditional_losses_532947Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
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
annotations™ *
 z√trace_0
.
m0
n1"
trackable_list_wrapper
.
m0
n1"
trackable_list_wrapper
 "
trackable_list_wrapper
≤
ƒnon_trainable_variables
≈layers
∆metrics
 «layer_regularization_losses
»layer_metrics
g	variables
htrainable_variables
iregularization_losses
k__call__
*l&call_and_return_all_conditional_losses
&l"call_and_return_conditional_losses"
_generic_user_object
ъ
…trace_02џ
4__inference_conv2d_transpose_19_layer_call_fn_532956Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
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
annotations™ *
 z…trace_0
Х
 trace_02ц
O__inference_conv2d_transpose_19_layer_call_and_return_conditional_losses_532990Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
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
annotations™ *
 z trace_0
5:3А2conv2d_transpose_19/kernel
&:$2conv2d_transpose_19/bias
і2±Ѓ
£≤Я
FullArgSpec'
argsЪ
jself
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
annotations™ *
 0
 "
trackable_list_wrapper
v
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
11"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ьBщ
)__inference_model_13_layer_call_fn_532037input_18"њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ъBч
)__inference_model_13_layer_call_fn_532426inputs"њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ъBч
)__inference_model_13_layer_call_fn_532463inputs"њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ьBщ
)__inference_model_13_layer_call_fn_532256input_18"њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ХBТ
D__inference_model_13_layer_call_and_return_conditional_losses_532581inputs"њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ХBТ
D__inference_model_13_layer_call_and_return_conditional_losses_532699inputs"њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЧBФ
D__inference_model_13_layer_call_and_return_conditional_losses_532303input_18"њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЧBФ
D__inference_model_13_layer_call_and_return_conditional_losses_532350input_18"њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ћB…
$__inference_signature_wrapper_532389input_18"Ф
Н≤Й
FullArgSpec
argsЪ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
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
ёBџ
*__inference_conv2d_36_layer_call_fn_532708inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
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
annotations™ *
 
щBц
E__inference_conv2d_36_layer_call_and_return_conditional_losses_532719inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
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
annotations™ *
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
ёBџ
*__inference_conv2d_37_layer_call_fn_532728inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
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
annotations™ *
 
щBц
E__inference_conv2d_37_layer_call_and_return_conditional_losses_532739inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
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
annotations™ *
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
ёBџ
*__inference_conv2d_38_layer_call_fn_532748inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
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
annotations™ *
 
щBц
E__inference_conv2d_38_layer_call_and_return_conditional_losses_532759inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
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
annotations™ *
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
ёBџ
*__inference_conv2d_39_layer_call_fn_532768inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
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
annotations™ *
 
щBц
E__inference_conv2d_39_layer_call_and_return_conditional_losses_532779inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
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
annotations™ *
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
иBе
4__inference_conv2d_transpose_16_layer_call_fn_532788inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
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
annotations™ *
 
ГBА
O__inference_conv2d_transpose_16_layer_call_and_return_conditional_losses_532822inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
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
annotations™ *
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
пBм
/__inference_concatenate_16_layer_call_fn_532828inputs/0inputs/1"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
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
annotations™ *
 
КBЗ
J__inference_concatenate_16_layer_call_and_return_conditional_losses_532835inputs/0inputs/1"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
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
annotations™ *
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
иBе
4__inference_conv2d_transpose_17_layer_call_fn_532844inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
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
annotations™ *
 
ГBА
O__inference_conv2d_transpose_17_layer_call_and_return_conditional_losses_532878inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
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
annotations™ *
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
пBм
/__inference_concatenate_17_layer_call_fn_532884inputs/0inputs/1"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
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
annotations™ *
 
КBЗ
J__inference_concatenate_17_layer_call_and_return_conditional_losses_532891inputs/0inputs/1"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
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
annotations™ *
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
иBе
4__inference_conv2d_transpose_18_layer_call_fn_532900inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
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
annotations™ *
 
ГBА
O__inference_conv2d_transpose_18_layer_call_and_return_conditional_losses_532934inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
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
annotations™ *
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
пBм
/__inference_concatenate_18_layer_call_fn_532940inputs/0inputs/1"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
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
annotations™ *
 
КBЗ
J__inference_concatenate_18_layer_call_and_return_conditional_losses_532947inputs/0inputs/1"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
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
annotations™ *
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
иBе
4__inference_conv2d_transpose_19_layer_call_fn_532956inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
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
annotations™ *
 
ГBА
O__inference_conv2d_transpose_19_layer_call_and_return_conditional_losses_532990inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
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
annotations™ *
  
!__inference__wrapped_model_531699§%&./78@AOP^_mn;Ґ8
1Ґ.
,К)
input_18€€€€€€€€€АА
™ "S™P
N
conv2d_transpose_197К4
conv2d_transpose_19€€€€€€€€€ААн
J__inference_concatenate_16_layer_call_and_return_conditional_losses_532835ЮlҐi
bҐ_
]ЪZ
+К(
inputs/0€€€€€€€€€  А
+К(
inputs/1€€€€€€€€€  А
™ ".Ґ+
$К!
0€€€€€€€€€  А
Ъ ≈
/__inference_concatenate_16_layer_call_fn_532828СlҐi
bҐ_
]ЪZ
+К(
inputs/0€€€€€€€€€  А
+К(
inputs/1€€€€€€€€€  А
™ "!К€€€€€€€€€  Ан
J__inference_concatenate_17_layer_call_and_return_conditional_losses_532891ЮlҐi
bҐ_
]ЪZ
+К(
inputs/0€€€€€€€€€@@А
+К(
inputs/1€€€€€€€€€@@А
™ ".Ґ+
$К!
0€€€€€€€€€@@А
Ъ ≈
/__inference_concatenate_17_layer_call_fn_532884СlҐi
bҐ_
]ЪZ
+К(
inputs/0€€€€€€€€€@@А
+К(
inputs/1€€€€€€€€€@@А
™ "!К€€€€€€€€€@@Ас
J__inference_concatenate_18_layer_call_and_return_conditional_losses_532947ҐnҐk
dҐa
_Ъ\
,К)
inputs/0€€€€€€€€€АА@
,К)
inputs/1€€€€€€€€€АА@
™ "0Ґ-
&К#
0€€€€€€€€€ААА
Ъ …
/__inference_concatenate_18_layer_call_fn_532940ХnҐk
dҐa
_Ъ\
,К)
inputs/0€€€€€€€€€АА@
,К)
inputs/1€€€€€€€€€АА@
™ "#К €€€€€€€€€АААє
E__inference_conv2d_36_layer_call_and_return_conditional_losses_532719p9Ґ6
/Ґ,
*К'
inputs€€€€€€€€€АА
™ "/Ґ,
%К"
0€€€€€€€€€АА@
Ъ С
*__inference_conv2d_36_layer_call_fn_532708c9Ґ6
/Ґ,
*К'
inputs€€€€€€€€€АА
™ ""К€€€€€€€€€АА@Є
E__inference_conv2d_37_layer_call_and_return_conditional_losses_532739o%&9Ґ6
/Ґ,
*К'
inputs€€€€€€€€€АА@
™ ".Ґ+
$К!
0€€€€€€€€€@@А
Ъ Р
*__inference_conv2d_37_layer_call_fn_532728b%&9Ґ6
/Ґ,
*К'
inputs€€€€€€€€€АА@
™ "!К€€€€€€€€€@@АЈ
E__inference_conv2d_38_layer_call_and_return_conditional_losses_532759n./8Ґ5
.Ґ+
)К&
inputs€€€€€€€€€@@А
™ ".Ґ+
$К!
0€€€€€€€€€  А
Ъ П
*__inference_conv2d_38_layer_call_fn_532748a./8Ґ5
.Ґ+
)К&
inputs€€€€€€€€€@@А
™ "!К€€€€€€€€€  АЈ
E__inference_conv2d_39_layer_call_and_return_conditional_losses_532779n788Ґ5
.Ґ+
)К&
inputs€€€€€€€€€  А
™ ".Ґ+
$К!
0€€€€€€€€€А
Ъ П
*__inference_conv2d_39_layer_call_fn_532768a788Ґ5
.Ґ+
)К&
inputs€€€€€€€€€  А
™ "!К€€€€€€€€€Аж
O__inference_conv2d_transpose_16_layer_call_and_return_conditional_losses_532822Т@AJҐG
@Ґ=
;К8
inputs,€€€€€€€€€€€€€€€€€€€€€€€€€€€А
™ "@Ґ=
6К3
0,€€€€€€€€€€€€€€€€€€€€€€€€€€€А
Ъ Њ
4__inference_conv2d_transpose_16_layer_call_fn_532788Е@AJҐG
@Ґ=
;К8
inputs,€€€€€€€€€€€€€€€€€€€€€€€€€€€А
™ "3К0,€€€€€€€€€€€€€€€€€€€€€€€€€€€Аж
O__inference_conv2d_transpose_17_layer_call_and_return_conditional_losses_532878ТOPJҐG
@Ґ=
;К8
inputs,€€€€€€€€€€€€€€€€€€€€€€€€€€€А
™ "@Ґ=
6К3
0,€€€€€€€€€€€€€€€€€€€€€€€€€€€А
Ъ Њ
4__inference_conv2d_transpose_17_layer_call_fn_532844ЕOPJҐG
@Ґ=
;К8
inputs,€€€€€€€€€€€€€€€€€€€€€€€€€€€А
™ "3К0,€€€€€€€€€€€€€€€€€€€€€€€€€€€Ае
O__inference_conv2d_transpose_18_layer_call_and_return_conditional_losses_532934С^_JҐG
@Ґ=
;К8
inputs,€€€€€€€€€€€€€€€€€€€€€€€€€€€А
™ "?Ґ<
5К2
0+€€€€€€€€€€€€€€€€€€€€€€€€€€€@
Ъ љ
4__inference_conv2d_transpose_18_layer_call_fn_532900Д^_JҐG
@Ґ=
;К8
inputs,€€€€€€€€€€€€€€€€€€€€€€€€€€€А
™ "2К/+€€€€€€€€€€€€€€€€€€€€€€€€€€€@е
O__inference_conv2d_transpose_19_layer_call_and_return_conditional_losses_532990СmnJҐG
@Ґ=
;К8
inputs,€€€€€€€€€€€€€€€€€€€€€€€€€€€А
™ "?Ґ<
5К2
0+€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ љ
4__inference_conv2d_transpose_19_layer_call_fn_532956ДmnJҐG
@Ґ=
;К8
inputs,€€€€€€€€€€€€€€€€€€€€€€€€€€€А
™ "2К/+€€€€€€€€€€€€€€€€€€€€€€€€€€€—
D__inference_model_13_layer_call_and_return_conditional_losses_532303И%&./78@AOP^_mnCҐ@
9Ґ6
,К)
input_18€€€€€€€€€АА
p 

 
™ "/Ґ,
%К"
0€€€€€€€€€АА
Ъ —
D__inference_model_13_layer_call_and_return_conditional_losses_532350И%&./78@AOP^_mnCҐ@
9Ґ6
,К)
input_18€€€€€€€€€АА
p

 
™ "/Ґ,
%К"
0€€€€€€€€€АА
Ъ ѕ
D__inference_model_13_layer_call_and_return_conditional_losses_532581Ж%&./78@AOP^_mnAҐ>
7Ґ4
*К'
inputs€€€€€€€€€АА
p 

 
™ "/Ґ,
%К"
0€€€€€€€€€АА
Ъ ѕ
D__inference_model_13_layer_call_and_return_conditional_losses_532699Ж%&./78@AOP^_mnAҐ>
7Ґ4
*К'
inputs€€€€€€€€€АА
p

 
™ "/Ґ,
%К"
0€€€€€€€€€АА
Ъ ®
)__inference_model_13_layer_call_fn_532037{%&./78@AOP^_mnCҐ@
9Ґ6
,К)
input_18€€€€€€€€€АА
p 

 
™ ""К€€€€€€€€€АА®
)__inference_model_13_layer_call_fn_532256{%&./78@AOP^_mnCҐ@
9Ґ6
,К)
input_18€€€€€€€€€АА
p

 
™ ""К€€€€€€€€€АА¶
)__inference_model_13_layer_call_fn_532426y%&./78@AOP^_mnAҐ>
7Ґ4
*К'
inputs€€€€€€€€€АА
p 

 
™ ""К€€€€€€€€€АА¶
)__inference_model_13_layer_call_fn_532463y%&./78@AOP^_mnAҐ>
7Ґ4
*К'
inputs€€€€€€€€€АА
p

 
™ ""К€€€€€€€€€ААў
$__inference_signature_wrapper_532389∞%&./78@AOP^_mnGҐD
Ґ 
=™:
8
input_18,К)
input_18€€€€€€€€€АА"S™P
N
conv2d_transpose_197К4
conv2d_transpose_19€€€€€€€€€АА