ůQ
÷Ć

BiasAdd

value"T	
bias"T
output"T""
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
8
Const
output"dtype"
valuetensor"
dtypetype
.
Identity

input"T
output"T"	
Ttype
u
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
2	

MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( 

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
ł
PartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
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
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
?
Select
	condition

t"T
e"T
output"T"	
Ttype
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
Á
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
executor_typestring ¨
@
StaticRegexFullMatch	
input

output
"
patternstring
L

StringJoin
inputs*N

output"

Nint("
	separatorstring "serve*2.14.02v2.14.0-rc1-21-g4dacf3f368e8ţ<
z
serving_default_double1Placeholder*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
dtype0*
shape:˙˙˙˙˙˙˙˙˙

PartitionedCallPartitionedCallserving_default_double1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 **
f%R#
!__inference_signature_wrapper_371

NoOpNoOp

ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*B
value9B7 B1


signatures* 

serving_default* 
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 

StatefulPartitionedCallStatefulPartitionedCallsaver_filenameConst*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *%
f R
__inference__traced_save_393

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *(
f#R!
__inference__traced_restore_402Á3

E
__inference__traced_restore_402
file_prefix

identity_1
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*1
value(B&B_CHECKPOINTABLE_OBJECT_GRAPHr
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB
B Ł
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*
_output_shapes
:*
dtypes
2Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 X
IdentityIdentityfile_prefix^NoOp"/device:CPU:0*
T0*
_output_shapes
: J

Identity_1IdentityIdentity:output:0*
T0*
_output_shapes
: "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: :C ?

_output_shapes
: 
%
_user_specified_namefile_prefix

i
__inference__traced_save_393
file_prefix
savev2_const

identity_1˘MergeV2Checkpointsw
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
_temp/part
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
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*1
value(B&B_CHECKPOINTABLE_OBJECT_GRAPHo
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB
B Ř
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtypes
2
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:ł
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: 7
NoOpNoOp^MergeV2Checkpoints*
_output_shapes
 "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:=9

_output_shapes
: 

_user_specified_nameConst
ą
3
__inference_pruned_365
double1
identity
*model/dense/MatMul/ReadVariableOp/resourceConst*
_output_shapes

:*
dtype0*
valueB*rÚ2?x
+model/dense/BiasAdd/ReadVariableOp/resourceConst*
_output_shapes
:*
dtype0*
valueB*    
,model/dense_1/MatMul/ReadVariableOp/resourceConst*
_output_shapes

:*
dtype0*
valueB*i3žz
-model/dense_1/BiasAdd/ReadVariableOp/resourceConst*
_output_shapes
:*
dtype0*
valueB*    b
model/dense/CastCastdouble1*

DstT0*

SrcT0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ł
!model/dense/MatMul/ReadVariableOpIdentity3model/dense/MatMul/ReadVariableOp/resource:output:0*
T0*&
 _has_manual_control_dependencies(*
_output_shapes

:
model/dense/MatMulMatMulmodel/dense/Cast:y:0*model/dense/MatMul/ReadVariableOp:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ą
"model/dense/BiasAdd/ReadVariableOpIdentity4model/dense/BiasAdd/ReadVariableOp/resource:output:0*
T0*&
 _has_manual_control_dependencies(*
_output_shapes
:
model/dense/BiasAddBiasAddmodel/dense/MatMul:product:0+model/dense/BiasAdd/ReadVariableOp:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙h
model/dense/ReluRelumodel/dense/BiasAdd:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ˇ
#model/dense_1/MatMul/ReadVariableOpIdentity5model/dense_1/MatMul/ReadVariableOp/resource:output:0*
T0*&
 _has_manual_control_dependencies(*
_output_shapes

:
model/dense_1/MatMulMatMulmodel/dense/Relu:activations:0,model/dense_1/MatMul/ReadVariableOp:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ľ
$model/dense_1/BiasAdd/ReadVariableOpIdentity6model/dense_1/BiasAdd/ReadVariableOp/resource:output:0*
T0*&
 _has_manual_control_dependencies(*
_output_shapes
:Ą
model/dense_1/BiasAddBiasAddmodel/dense_1/MatMul:product:0-model/dense_1/BiasAdd/ReadVariableOp:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙r
model/dense_1/SigmoidSigmoidmodel/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ŕ
NoOpNoOp#^model/dense/BiasAdd/ReadVariableOp"^model/dense/MatMul/ReadVariableOp%^model/dense_1/BiasAdd/ReadVariableOp$^model/dense_1/MatMul/ReadVariableOp*&
 _has_manual_control_dependencies(*
_output_shapes
 h
IdentityIdentitymodel/dense_1/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:˙˙˙˙˙˙˙˙˙:- )
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ę
>
!__inference_signature_wrapper_371
double1
identity
PartitionedCallPartitionedCalldouble1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *
fR
__inference_pruned_365`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:˙˙˙˙˙˙˙˙˙:P L
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
!
_user_specified_name	double1"§J
saver_filename:0StatefulPartitionedCall:0StatefulPartitionedCall_18"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*Ł
serving_default
;
double10
serving_default_double1:0˙˙˙˙˙˙˙˙˙4
output_0(
PartitionedCall:0˙˙˙˙˙˙˙˙˙tensorflow/serving/predict:¨
E

signaturesB#
__inference_pruned_365double1z
signatures
,
serving_default"
signature_map
ÍBĘ
!__inference_signature_wrapper_371double1"
˛
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs
	jdouble1
kwonlydefaults
 
annotationsŞ *
 G
__inference_pruned_365-
 "'$
"
tensor_0˙˙˙˙˙˙˙˙˙
!__inference_signature_wrapper_371r;˘8
˘ 
1Ş.
,
double1!
double1˙˙˙˙˙˙˙˙˙"3Ş0
.
output_0"
output_0˙˙˙˙˙˙˙˙˙