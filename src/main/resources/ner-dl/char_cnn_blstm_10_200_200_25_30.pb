
q
char_repr/char_idsPlaceholder"/device:GPU:0*
dtype0*2
shape):'���������������������������
h
char_repr/word_lengthsPlaceholder"/device:GPU:0*
dtype0*%
shape:������������������
_
word_repr/sentence_lengthsPlaceholder"/device:GPU:0*
shape:���������*
dtype0
a
training/labelsPlaceholder"/device:GPU:0*
dtype0*%
shape:������������������
M
training/lr/inputConst"/device:GPU:0*
dtype0*
valueB
 *
ף;
a
training/lrPlaceholderWithDefaulttraining/lr/input"/device:GPU:0*
dtype0*
shape: 
H
training/dropoutPlaceholder"/device:GPU:0*
dtype0*
shape: 
�
>char_repr_cnn/char_embeddings/Initializer/random_uniform/shapeConst*
dtype0*
valueB"�      *0
_class&
$"loc:@char_repr_cnn/char_embeddings
�
<char_repr_cnn/char_embeddings/Initializer/random_uniform/minConst*
valueB
 *�\��*0
_class&
$"loc:@char_repr_cnn/char_embeddings*
dtype0
�
<char_repr_cnn/char_embeddings/Initializer/random_uniform/maxConst*
valueB
 *�\�>*0
_class&
$"loc:@char_repr_cnn/char_embeddings*
dtype0
�
Fchar_repr_cnn/char_embeddings/Initializer/random_uniform/RandomUniformRandomUniform>char_repr_cnn/char_embeddings/Initializer/random_uniform/shape*
T0*0
_class&
$"loc:@char_repr_cnn/char_embeddings*
dtype0*
seed2 *

seed 
�
<char_repr_cnn/char_embeddings/Initializer/random_uniform/subSub<char_repr_cnn/char_embeddings/Initializer/random_uniform/max<char_repr_cnn/char_embeddings/Initializer/random_uniform/min*
T0*0
_class&
$"loc:@char_repr_cnn/char_embeddings
�
<char_repr_cnn/char_embeddings/Initializer/random_uniform/mulMulFchar_repr_cnn/char_embeddings/Initializer/random_uniform/RandomUniform<char_repr_cnn/char_embeddings/Initializer/random_uniform/sub*
T0*0
_class&
$"loc:@char_repr_cnn/char_embeddings
�
8char_repr_cnn/char_embeddings/Initializer/random_uniformAdd<char_repr_cnn/char_embeddings/Initializer/random_uniform/mul<char_repr_cnn/char_embeddings/Initializer/random_uniform/min*
T0*0
_class&
$"loc:@char_repr_cnn/char_embeddings
�
char_repr_cnn/char_embeddings
VariableV2"/device:GPU:0*
dtype0*
	container *
shape:	�*
shared_name *0
_class&
$"loc:@char_repr_cnn/char_embeddings
�
$char_repr_cnn/char_embeddings/AssignAssignchar_repr_cnn/char_embeddings8char_repr_cnn/char_embeddings/Initializer/random_uniform"/device:GPU:0*
use_locking(*
T0*0
_class&
$"loc:@char_repr_cnn/char_embeddings*
validate_shape(
�
"char_repr_cnn/char_embeddings/readIdentitychar_repr_cnn/char_embeddings"/device:GPU:0*
T0*0
_class&
$"loc:@char_repr_cnn/char_embeddings
�
#char_repr_cnn/embedding_lookup/axisConst"/device:GPU:0*
value	B : *0
_class&
$"loc:@char_repr_cnn/char_embeddings*
dtype0
�
char_repr_cnn/embedding_lookupGatherV2"char_repr_cnn/char_embeddings/readchar_repr/char_ids#char_repr_cnn/embedding_lookup/axis"/device:GPU:0*
Tindices0*
Tparams0*0
_class&
$"loc:@char_repr_cnn/char_embeddings*
Taxis0
l
char_repr_cnn/dropout/ShapeShapechar_repr_cnn/embedding_lookup"/device:GPU:0*
T0*
out_type0
d
(char_repr_cnn/dropout/random_uniform/minConst"/device:GPU:0*
valueB
 *    *
dtype0
d
(char_repr_cnn/dropout/random_uniform/maxConst"/device:GPU:0*
valueB
 *  �?*
dtype0
�
2char_repr_cnn/dropout/random_uniform/RandomUniformRandomUniformchar_repr_cnn/dropout/Shape"/device:GPU:0*
T0*
dtype0*
seed2 *

seed 
�
(char_repr_cnn/dropout/random_uniform/subSub(char_repr_cnn/dropout/random_uniform/max(char_repr_cnn/dropout/random_uniform/min"/device:GPU:0*
T0
�
(char_repr_cnn/dropout/random_uniform/mulMul2char_repr_cnn/dropout/random_uniform/RandomUniform(char_repr_cnn/dropout/random_uniform/sub"/device:GPU:0*
T0
�
$char_repr_cnn/dropout/random_uniformAdd(char_repr_cnn/dropout/random_uniform/mul(char_repr_cnn/dropout/random_uniform/min"/device:GPU:0*
T0
p
char_repr_cnn/dropout/addAddtraining/dropout$char_repr_cnn/dropout/random_uniform"/device:GPU:0*
T0
W
char_repr_cnn/dropout/FloorFloorchar_repr_cnn/dropout/add"/device:GPU:0*
T0
n
char_repr_cnn/dropout/divRealDivchar_repr_cnn/embedding_lookuptraining/dropout"/device:GPU:0*
T0
p
char_repr_cnn/dropout/mulMulchar_repr_cnn/dropout/divchar_repr_cnn/dropout/Floor"/device:GPU:0*
T0
_
char_repr_cnn/ShapeShapechar_repr_cnn/dropout/mul"/device:GPU:0*
T0*
out_type0
g
!char_repr_cnn/strided_slice/stackConst"/device:GPU:0*
valueB:
���������*
dtype0
i
#char_repr_cnn/strided_slice/stack_1Const"/device:GPU:0*
valueB:
���������*
dtype0
`
#char_repr_cnn/strided_slice/stack_2Const"/device:GPU:0*
valueB:*
dtype0
�
char_repr_cnn/strided_sliceStridedSlicechar_repr_cnn/Shape!char_repr_cnn/strided_slice/stack#char_repr_cnn/strided_slice/stack_1#char_repr_cnn/strided_slice/stack_2"/device:GPU:0*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
Index0*
T0*
shrink_axis_mask
_
char_repr_cnn/Reshape/shape/0Const"/device:GPU:0*
dtype0*
valueB :
���������
V
char_repr_cnn/Reshape/shape/2Const"/device:GPU:0*
dtype0*
value	B :
�
char_repr_cnn/Reshape/shapePackchar_repr_cnn/Reshape/shape/0char_repr_cnn/strided_slicechar_repr_cnn/Reshape/shape/2"/device:GPU:0*
T0*

axis *
N
~
char_repr_cnn/ReshapeReshapechar_repr_cnn/dropout/mulchar_repr_cnn/Reshape/shape"/device:GPU:0*
T0*
Tshape0
�
<char_repr_cnn/conv1d/kernel/Initializer/random_uniform/shapeConst*!
valueB"         *.
_class$
" loc:@char_repr_cnn/conv1d/kernel*
dtype0
�
:char_repr_cnn/conv1d/kernel/Initializer/random_uniform/minConst*
valueB
 *�DC�*.
_class$
" loc:@char_repr_cnn/conv1d/kernel*
dtype0
�
:char_repr_cnn/conv1d/kernel/Initializer/random_uniform/maxConst*
dtype0*
valueB
 *�DC>*.
_class$
" loc:@char_repr_cnn/conv1d/kernel
�
Dchar_repr_cnn/conv1d/kernel/Initializer/random_uniform/RandomUniformRandomUniform<char_repr_cnn/conv1d/kernel/Initializer/random_uniform/shape*
T0*.
_class$
" loc:@char_repr_cnn/conv1d/kernel*
dtype0*
seed2 *

seed 
�
:char_repr_cnn/conv1d/kernel/Initializer/random_uniform/subSub:char_repr_cnn/conv1d/kernel/Initializer/random_uniform/max:char_repr_cnn/conv1d/kernel/Initializer/random_uniform/min*
T0*.
_class$
" loc:@char_repr_cnn/conv1d/kernel
�
:char_repr_cnn/conv1d/kernel/Initializer/random_uniform/mulMulDchar_repr_cnn/conv1d/kernel/Initializer/random_uniform/RandomUniform:char_repr_cnn/conv1d/kernel/Initializer/random_uniform/sub*
T0*.
_class$
" loc:@char_repr_cnn/conv1d/kernel
�
6char_repr_cnn/conv1d/kernel/Initializer/random_uniformAdd:char_repr_cnn/conv1d/kernel/Initializer/random_uniform/mul:char_repr_cnn/conv1d/kernel/Initializer/random_uniform/min*
T0*.
_class$
" loc:@char_repr_cnn/conv1d/kernel
�
char_repr_cnn/conv1d/kernel
VariableV2"/device:GPU:0*
shape:*
shared_name *.
_class$
" loc:@char_repr_cnn/conv1d/kernel*
dtype0*
	container 
�
"char_repr_cnn/conv1d/kernel/AssignAssignchar_repr_cnn/conv1d/kernel6char_repr_cnn/conv1d/kernel/Initializer/random_uniform"/device:GPU:0*
use_locking(*
T0*.
_class$
" loc:@char_repr_cnn/conv1d/kernel*
validate_shape(
�
 char_repr_cnn/conv1d/kernel/readIdentitychar_repr_cnn/conv1d/kernel"/device:GPU:0*
T0*.
_class$
" loc:@char_repr_cnn/conv1d/kernel
�
+char_repr_cnn/conv1d/bias/Initializer/zerosConst*
valueB*    *,
_class"
 loc:@char_repr_cnn/conv1d/bias*
dtype0
�
char_repr_cnn/conv1d/bias
VariableV2"/device:GPU:0*,
_class"
 loc:@char_repr_cnn/conv1d/bias*
dtype0*
	container *
shape:*
shared_name 
�
 char_repr_cnn/conv1d/bias/AssignAssignchar_repr_cnn/conv1d/bias+char_repr_cnn/conv1d/bias/Initializer/zeros"/device:GPU:0*
use_locking(*
T0*,
_class"
 loc:@char_repr_cnn/conv1d/bias*
validate_shape(
�
char_repr_cnn/conv1d/bias/readIdentitychar_repr_cnn/conv1d/bias"/device:GPU:0*
T0*,
_class"
 loc:@char_repr_cnn/conv1d/bias
_
"char_repr_cnn/conv1d/dilation_rateConst"/device:GPU:0*
valueB:*
dtype0
c
*char_repr_cnn/conv1d/conv1d/ExpandDims/dimConst"/device:GPU:0*
value	B :*
dtype0
�
&char_repr_cnn/conv1d/conv1d/ExpandDims
ExpandDimschar_repr_cnn/Reshape*char_repr_cnn/conv1d/conv1d/ExpandDims/dim"/device:GPU:0*

Tdim0*
T0
e
,char_repr_cnn/conv1d/conv1d/ExpandDims_1/dimConst"/device:GPU:0*
value	B : *
dtype0
�
(char_repr_cnn/conv1d/conv1d/ExpandDims_1
ExpandDims char_repr_cnn/conv1d/kernel/read,char_repr_cnn/conv1d/conv1d/ExpandDims_1/dim"/device:GPU:0*

Tdim0*
T0
�
"char_repr_cnn/conv1d/conv1d/Conv2DConv2D&char_repr_cnn/conv1d/conv1d/ExpandDims(char_repr_cnn/conv1d/conv1d/ExpandDims_1"/device:GPU:0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
	dilations
*
T0
�
#char_repr_cnn/conv1d/conv1d/SqueezeSqueeze"char_repr_cnn/conv1d/conv1d/Conv2D"/device:GPU:0*
squeeze_dims
*
T0
�
char_repr_cnn/conv1d/BiasAddBiasAdd#char_repr_cnn/conv1d/conv1d/Squeezechar_repr_cnn/conv1d/bias/read"/device:GPU:0*
T0*
data_formatNHWC
W
char_repr_cnn/conv1d/ReluReluchar_repr_cnn/conv1d/BiasAdd"/device:GPU:0*
T0
\
#char_repr_cnn/Max/reduction_indicesConst"/device:GPU:0*
dtype0*
value	B :
�
char_repr_cnn/MaxMaxchar_repr_cnn/conv1d/Relu#char_repr_cnn/Max/reduction_indices"/device:GPU:0*
T0*

Tidx0*
	keep_dims(
b
char_repr_cnn/SqueezeSqueezechar_repr_cnn/Max"/device:GPU:0*
squeeze_dims
*
T0
`
#char_repr_cnn/strided_slice_1/stackConst"/device:GPU:0*
dtype0*
valueB: 
b
%char_repr_cnn/strided_slice_1/stack_1Const"/device:GPU:0*
dtype0*
valueB:
b
%char_repr_cnn/strided_slice_1/stack_2Const"/device:GPU:0*
valueB:*
dtype0
�
char_repr_cnn/strided_slice_1StridedSlicechar_repr_cnn/Shape#char_repr_cnn/strided_slice_1/stack%char_repr_cnn/strided_slice_1/stack_1%char_repr_cnn/strided_slice_1/stack_2"/device:GPU:0*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
Index0*
T0*
shrink_axis_mask
`
#char_repr_cnn/strided_slice_2/stackConst"/device:GPU:0*
valueB:*
dtype0
b
%char_repr_cnn/strided_slice_2/stack_1Const"/device:GPU:0*
valueB:*
dtype0
b
%char_repr_cnn/strided_slice_2/stack_2Const"/device:GPU:0*
valueB:*
dtype0
�
char_repr_cnn/strided_slice_2StridedSlicechar_repr_cnn/Shape#char_repr_cnn/strided_slice_2/stack%char_repr_cnn/strided_slice_2/stack_1%char_repr_cnn/strided_slice_2/stack_2"/device:GPU:0*
T0*
Index0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask 
X
char_repr_cnn/Reshape_1/shape/2Const"/device:GPU:0*
dtype0*
value	B :
�
char_repr_cnn/Reshape_1/shapePackchar_repr_cnn/strided_slice_1char_repr_cnn/strided_slice_2char_repr_cnn/Reshape_1/shape/2"/device:GPU:0*
N*
T0*

axis 
~
char_repr_cnn/Reshape_1Reshapechar_repr_cnn/Squeezechar_repr_cnn/Reshape_1/shape"/device:GPU:0*
T0*
Tshape0
r
word_repr_1/word_embeddingsPlaceholder"/device:GPU:0*
dtype0**
shape!:�������������������
Y
word_repr_1/concat/axisConst"/device:GPU:0*
valueB :
���������*
dtype0
�
word_repr_1/concatConcatV2char_repr_cnn/Reshape_1word_repr_1/word_embeddingsword_repr_1/concat/axis"/device:GPU:0*
T0*
N*

Tidx0
_
context_repr/dropout/ShapeShapeword_repr_1/concat"/device:GPU:0*
T0*
out_type0
c
'context_repr/dropout/random_uniform/minConst"/device:GPU:0*
valueB
 *    *
dtype0
c
'context_repr/dropout/random_uniform/maxConst"/device:GPU:0*
dtype0*
valueB
 *  �?
�
1context_repr/dropout/random_uniform/RandomUniformRandomUniformcontext_repr/dropout/Shape"/device:GPU:0*
T0*
dtype0*
seed2 *

seed 
�
'context_repr/dropout/random_uniform/subSub'context_repr/dropout/random_uniform/max'context_repr/dropout/random_uniform/min"/device:GPU:0*
T0
�
'context_repr/dropout/random_uniform/mulMul1context_repr/dropout/random_uniform/RandomUniform'context_repr/dropout/random_uniform/sub"/device:GPU:0*
T0
�
#context_repr/dropout/random_uniformAdd'context_repr/dropout/random_uniform/mul'context_repr/dropout/random_uniform/min"/device:GPU:0*
T0
n
context_repr/dropout/addAddtraining/dropout#context_repr/dropout/random_uniform"/device:GPU:0*
T0
U
context_repr/dropout/FloorFloorcontext_repr/dropout/add"/device:GPU:0*
T0
a
context_repr/dropout/divRealDivword_repr_1/concattraining/dropout"/device:GPU:0*
T0
m
context_repr/dropout/mulMulcontext_repr/dropout/divcontext_repr/dropout/Floor"/device:GPU:0*
T0
b
)context_repr/bidirectional_rnn/fw/fw/RankConst"/device:GPU:0*
dtype0*
value	B :
i
0context_repr/bidirectional_rnn/fw/fw/range/startConst"/device:GPU:0*
dtype0*
value	B :
i
0context_repr/bidirectional_rnn/fw/fw/range/deltaConst"/device:GPU:0*
value	B :*
dtype0
�
*context_repr/bidirectional_rnn/fw/fw/rangeRange0context_repr/bidirectional_rnn/fw/fw/range/start)context_repr/bidirectional_rnn/fw/fw/Rank0context_repr/bidirectional_rnn/fw/fw/range/delta"/device:GPU:0*

Tidx0
x
4context_repr/bidirectional_rnn/fw/fw/concat/values_0Const"/device:GPU:0*
valueB"       *
dtype0
i
0context_repr/bidirectional_rnn/fw/fw/concat/axisConst"/device:GPU:0*
value	B : *
dtype0
�
+context_repr/bidirectional_rnn/fw/fw/concatConcatV24context_repr/bidirectional_rnn/fw/fw/concat/values_0*context_repr/bidirectional_rnn/fw/fw/range0context_repr/bidirectional_rnn/fw/fw/concat/axis"/device:GPU:0*
N*

Tidx0*
T0
�
.context_repr/bidirectional_rnn/fw/fw/transpose	Transposecontext_repr/dropout/mul+context_repr/bidirectional_rnn/fw/fw/concat"/device:GPU:0*
T0*
Tperm0
t
4context_repr/bidirectional_rnn/fw/fw/sequence_lengthIdentityword_repr/sentence_lengths"/device:GPU:0*
T0
�
*context_repr/bidirectional_rnn/fw/fw/ShapeShape.context_repr/bidirectional_rnn/fw/fw/transpose"/device:GPU:0*
T0*
out_type0
u
8context_repr/bidirectional_rnn/fw/fw/strided_slice/stackConst"/device:GPU:0*
valueB:*
dtype0
w
:context_repr/bidirectional_rnn/fw/fw/strided_slice/stack_1Const"/device:GPU:0*
valueB:*
dtype0
w
:context_repr/bidirectional_rnn/fw/fw/strided_slice/stack_2Const"/device:GPU:0*
dtype0*
valueB:
�
2context_repr/bidirectional_rnn/fw/fw/strided_sliceStridedSlice*context_repr/bidirectional_rnn/fw/fw/Shape8context_repr/bidirectional_rnn/fw/fw/strided_slice/stack:context_repr/bidirectional_rnn/fw/fw/strided_slice/stack_1:context_repr/bidirectional_rnn/fw/fw/strided_slice/stack_2"/device:GPU:0*
end_mask *
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask 
~
Econtext_repr/bidirectional_rnn/fw/fw/LSTMCellZeroState/ExpandDims/dimConst"/device:GPU:0*
dtype0*
value	B : 
�
Acontext_repr/bidirectional_rnn/fw/fw/LSTMCellZeroState/ExpandDims
ExpandDims2context_repr/bidirectional_rnn/fw/fw/strided_sliceEcontext_repr/bidirectional_rnn/fw/fw/LSTMCellZeroState/ExpandDims/dim"/device:GPU:0*

Tdim0*
T0
z
<context_repr/bidirectional_rnn/fw/fw/LSTMCellZeroState/ConstConst"/device:GPU:0*
valueB:�*
dtype0
{
Bcontext_repr/bidirectional_rnn/fw/fw/LSTMCellZeroState/concat/axisConst"/device:GPU:0*
dtype0*
value	B : 
�
=context_repr/bidirectional_rnn/fw/fw/LSTMCellZeroState/concatConcatV2Acontext_repr/bidirectional_rnn/fw/fw/LSTMCellZeroState/ExpandDims<context_repr/bidirectional_rnn/fw/fw/LSTMCellZeroState/ConstBcontext_repr/bidirectional_rnn/fw/fw/LSTMCellZeroState/concat/axis"/device:GPU:0*
N*

Tidx0*
T0
~
Bcontext_repr/bidirectional_rnn/fw/fw/LSTMCellZeroState/zeros/ConstConst"/device:GPU:0*
valueB
 *    *
dtype0
�
<context_repr/bidirectional_rnn/fw/fw/LSTMCellZeroState/zerosFill=context_repr/bidirectional_rnn/fw/fw/LSTMCellZeroState/concatBcontext_repr/bidirectional_rnn/fw/fw/LSTMCellZeroState/zeros/Const"/device:GPU:0*
T0*

index_type0
�
Gcontext_repr/bidirectional_rnn/fw/fw/LSTMCellZeroState/ExpandDims_1/dimConst"/device:GPU:0*
value	B : *
dtype0
�
Ccontext_repr/bidirectional_rnn/fw/fw/LSTMCellZeroState/ExpandDims_1
ExpandDims2context_repr/bidirectional_rnn/fw/fw/strided_sliceGcontext_repr/bidirectional_rnn/fw/fw/LSTMCellZeroState/ExpandDims_1/dim"/device:GPU:0*

Tdim0*
T0
|
>context_repr/bidirectional_rnn/fw/fw/LSTMCellZeroState/Const_1Const"/device:GPU:0*
dtype0*
valueB:�
�
Gcontext_repr/bidirectional_rnn/fw/fw/LSTMCellZeroState/ExpandDims_2/dimConst"/device:GPU:0*
dtype0*
value	B : 
�
Ccontext_repr/bidirectional_rnn/fw/fw/LSTMCellZeroState/ExpandDims_2
ExpandDims2context_repr/bidirectional_rnn/fw/fw/strided_sliceGcontext_repr/bidirectional_rnn/fw/fw/LSTMCellZeroState/ExpandDims_2/dim"/device:GPU:0*
T0*

Tdim0
|
>context_repr/bidirectional_rnn/fw/fw/LSTMCellZeroState/Const_2Const"/device:GPU:0*
dtype0*
valueB:�
}
Dcontext_repr/bidirectional_rnn/fw/fw/LSTMCellZeroState/concat_1/axisConst"/device:GPU:0*
value	B : *
dtype0
�
?context_repr/bidirectional_rnn/fw/fw/LSTMCellZeroState/concat_1ConcatV2Ccontext_repr/bidirectional_rnn/fw/fw/LSTMCellZeroState/ExpandDims_2>context_repr/bidirectional_rnn/fw/fw/LSTMCellZeroState/Const_2Dcontext_repr/bidirectional_rnn/fw/fw/LSTMCellZeroState/concat_1/axis"/device:GPU:0*

Tidx0*
T0*
N
�
Dcontext_repr/bidirectional_rnn/fw/fw/LSTMCellZeroState/zeros_1/ConstConst"/device:GPU:0*
valueB
 *    *
dtype0
�
>context_repr/bidirectional_rnn/fw/fw/LSTMCellZeroState/zeros_1Fill?context_repr/bidirectional_rnn/fw/fw/LSTMCellZeroState/concat_1Dcontext_repr/bidirectional_rnn/fw/fw/LSTMCellZeroState/zeros_1/Const"/device:GPU:0*
T0*

index_type0
�
Gcontext_repr/bidirectional_rnn/fw/fw/LSTMCellZeroState/ExpandDims_3/dimConst"/device:GPU:0*
dtype0*
value	B : 
�
Ccontext_repr/bidirectional_rnn/fw/fw/LSTMCellZeroState/ExpandDims_3
ExpandDims2context_repr/bidirectional_rnn/fw/fw/strided_sliceGcontext_repr/bidirectional_rnn/fw/fw/LSTMCellZeroState/ExpandDims_3/dim"/device:GPU:0*

Tdim0*
T0
|
>context_repr/bidirectional_rnn/fw/fw/LSTMCellZeroState/Const_3Const"/device:GPU:0*
valueB:�*
dtype0
�
,context_repr/bidirectional_rnn/fw/fw/Shape_1Shape4context_repr/bidirectional_rnn/fw/fw/sequence_length"/device:GPU:0*
T0*
out_type0
�
*context_repr/bidirectional_rnn/fw/fw/stackPack2context_repr/bidirectional_rnn/fw/fw/strided_slice"/device:GPU:0*
T0*

axis *
N
�
*context_repr/bidirectional_rnn/fw/fw/EqualEqual,context_repr/bidirectional_rnn/fw/fw/Shape_1*context_repr/bidirectional_rnn/fw/fw/stack"/device:GPU:0*
T0
g
*context_repr/bidirectional_rnn/fw/fw/ConstConst"/device:GPU:0*
valueB: *
dtype0
�
(context_repr/bidirectional_rnn/fw/fw/AllAll*context_repr/bidirectional_rnn/fw/fw/Equal*context_repr/bidirectional_rnn/fw/fw/Const"/device:GPU:0*

Tidx0*
	keep_dims( 
�
1context_repr/bidirectional_rnn/fw/fw/Assert/ConstConst"/device:GPU:0*
dtype0*e
value\BZ BTExpected shape for Tensor context_repr/bidirectional_rnn/fw/fw/sequence_length:0 is 
{
3context_repr/bidirectional_rnn/fw/fw/Assert/Const_1Const"/device:GPU:0*!
valueB B but saw shape: *
dtype0
�
9context_repr/bidirectional_rnn/fw/fw/Assert/Assert/data_0Const"/device:GPU:0*e
value\BZ BTExpected shape for Tensor context_repr/bidirectional_rnn/fw/fw/sequence_length:0 is *
dtype0
�
9context_repr/bidirectional_rnn/fw/fw/Assert/Assert/data_2Const"/device:GPU:0*!
valueB B but saw shape: *
dtype0
�
2context_repr/bidirectional_rnn/fw/fw/Assert/AssertAssert(context_repr/bidirectional_rnn/fw/fw/All9context_repr/bidirectional_rnn/fw/fw/Assert/Assert/data_0*context_repr/bidirectional_rnn/fw/fw/stack9context_repr/bidirectional_rnn/fw/fw/Assert/Assert/data_2,context_repr/bidirectional_rnn/fw/fw/Shape_1"/device:GPU:0*
T
2*
	summarize
�
0context_repr/bidirectional_rnn/fw/fw/CheckSeqLenIdentity4context_repr/bidirectional_rnn/fw/fw/sequence_length3^context_repr/bidirectional_rnn/fw/fw/Assert/Assert"/device:GPU:0*
T0
�
,context_repr/bidirectional_rnn/fw/fw/Shape_2Shape.context_repr/bidirectional_rnn/fw/fw/transpose"/device:GPU:0*
T0*
out_type0
w
:context_repr/bidirectional_rnn/fw/fw/strided_slice_1/stackConst"/device:GPU:0*
dtype0*
valueB: 
y
<context_repr/bidirectional_rnn/fw/fw/strided_slice_1/stack_1Const"/device:GPU:0*
valueB:*
dtype0
y
<context_repr/bidirectional_rnn/fw/fw/strided_slice_1/stack_2Const"/device:GPU:0*
dtype0*
valueB:
�
4context_repr/bidirectional_rnn/fw/fw/strided_slice_1StridedSlice,context_repr/bidirectional_rnn/fw/fw/Shape_2:context_repr/bidirectional_rnn/fw/fw/strided_slice_1/stack<context_repr/bidirectional_rnn/fw/fw/strided_slice_1/stack_1<context_repr/bidirectional_rnn/fw/fw/strided_slice_1/stack_2"/device:GPU:0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
Index0*
T0
�
,context_repr/bidirectional_rnn/fw/fw/Shape_3Shape.context_repr/bidirectional_rnn/fw/fw/transpose"/device:GPU:0*
T0*
out_type0
w
:context_repr/bidirectional_rnn/fw/fw/strided_slice_2/stackConst"/device:GPU:0*
valueB:*
dtype0
y
<context_repr/bidirectional_rnn/fw/fw/strided_slice_2/stack_1Const"/device:GPU:0*
valueB:*
dtype0
y
<context_repr/bidirectional_rnn/fw/fw/strided_slice_2/stack_2Const"/device:GPU:0*
valueB:*
dtype0
�
4context_repr/bidirectional_rnn/fw/fw/strided_slice_2StridedSlice,context_repr/bidirectional_rnn/fw/fw/Shape_3:context_repr/bidirectional_rnn/fw/fw/strided_slice_2/stack<context_repr/bidirectional_rnn/fw/fw/strided_slice_2/stack_1<context_repr/bidirectional_rnn/fw/fw/strided_slice_2/stack_2"/device:GPU:0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
T0*
Index0
l
3context_repr/bidirectional_rnn/fw/fw/ExpandDims/dimConst"/device:GPU:0*
dtype0*
value	B : 
�
/context_repr/bidirectional_rnn/fw/fw/ExpandDims
ExpandDims4context_repr/bidirectional_rnn/fw/fw/strided_slice_23context_repr/bidirectional_rnn/fw/fw/ExpandDims/dim"/device:GPU:0*

Tdim0*
T0
j
,context_repr/bidirectional_rnn/fw/fw/Const_1Const"/device:GPU:0*
valueB:�*
dtype0
k
2context_repr/bidirectional_rnn/fw/fw/concat_1/axisConst"/device:GPU:0*
value	B : *
dtype0
�
-context_repr/bidirectional_rnn/fw/fw/concat_1ConcatV2/context_repr/bidirectional_rnn/fw/fw/ExpandDims,context_repr/bidirectional_rnn/fw/fw/Const_12context_repr/bidirectional_rnn/fw/fw/concat_1/axis"/device:GPU:0*
T0*
N*

Tidx0
l
0context_repr/bidirectional_rnn/fw/fw/zeros/ConstConst"/device:GPU:0*
valueB
 *    *
dtype0
�
*context_repr/bidirectional_rnn/fw/fw/zerosFill-context_repr/bidirectional_rnn/fw/fw/concat_10context_repr/bidirectional_rnn/fw/fw/zeros/Const"/device:GPU:0*
T0*

index_type0
i
,context_repr/bidirectional_rnn/fw/fw/Const_2Const"/device:GPU:0*
valueB: *
dtype0
�
(context_repr/bidirectional_rnn/fw/fw/MinMin0context_repr/bidirectional_rnn/fw/fw/CheckSeqLen,context_repr/bidirectional_rnn/fw/fw/Const_2"/device:GPU:0*
T0*

Tidx0*
	keep_dims( 
i
,context_repr/bidirectional_rnn/fw/fw/Const_3Const"/device:GPU:0*
dtype0*
valueB: 
�
(context_repr/bidirectional_rnn/fw/fw/MaxMax0context_repr/bidirectional_rnn/fw/fw/CheckSeqLen,context_repr/bidirectional_rnn/fw/fw/Const_3"/device:GPU:0*

Tidx0*
	keep_dims( *
T0
b
)context_repr/bidirectional_rnn/fw/fw/timeConst"/device:GPU:0*
value	B : *
dtype0
�
0context_repr/bidirectional_rnn/fw/fw/TensorArrayTensorArrayV34context_repr/bidirectional_rnn/fw/fw/strided_slice_1*P
tensor_array_name;9context_repr/bidirectional_rnn/fw/fw/dynamic_rnn/output_0*
dtype0*%
element_shape:����������*
dynamic_size( *
clear_after_read(*
identical_element_shapes(
�
2context_repr/bidirectional_rnn/fw/fw/TensorArray_1TensorArrayV34context_repr/bidirectional_rnn/fw/fw/strided_slice_1*
identical_element_shapes(*O
tensor_array_name:8context_repr/bidirectional_rnn/fw/fw/dynamic_rnn/input_0*
dtype0*%
element_shape:����������*
dynamic_size( *
clear_after_read(
�
=context_repr/bidirectional_rnn/fw/fw/TensorArrayUnstack/ShapeShape.context_repr/bidirectional_rnn/fw/fw/transpose"/device:GPU:0*
T0*
out_type0
�
Kcontext_repr/bidirectional_rnn/fw/fw/TensorArrayUnstack/strided_slice/stackConst"/device:GPU:0*
valueB: *
dtype0
�
Mcontext_repr/bidirectional_rnn/fw/fw/TensorArrayUnstack/strided_slice/stack_1Const"/device:GPU:0*
dtype0*
valueB:
�
Mcontext_repr/bidirectional_rnn/fw/fw/TensorArrayUnstack/strided_slice/stack_2Const"/device:GPU:0*
dtype0*
valueB:
�
Econtext_repr/bidirectional_rnn/fw/fw/TensorArrayUnstack/strided_sliceStridedSlice=context_repr/bidirectional_rnn/fw/fw/TensorArrayUnstack/ShapeKcontext_repr/bidirectional_rnn/fw/fw/TensorArrayUnstack/strided_slice/stackMcontext_repr/bidirectional_rnn/fw/fw/TensorArrayUnstack/strided_slice/stack_1Mcontext_repr/bidirectional_rnn/fw/fw/TensorArrayUnstack/strided_slice/stack_2"/device:GPU:0*
Index0*
T0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask 
|
Ccontext_repr/bidirectional_rnn/fw/fw/TensorArrayUnstack/range/startConst"/device:GPU:0*
value	B : *
dtype0
|
Ccontext_repr/bidirectional_rnn/fw/fw/TensorArrayUnstack/range/deltaConst"/device:GPU:0*
value	B :*
dtype0
�
=context_repr/bidirectional_rnn/fw/fw/TensorArrayUnstack/rangeRangeCcontext_repr/bidirectional_rnn/fw/fw/TensorArrayUnstack/range/startEcontext_repr/bidirectional_rnn/fw/fw/TensorArrayUnstack/strided_sliceCcontext_repr/bidirectional_rnn/fw/fw/TensorArrayUnstack/range/delta"/device:GPU:0*

Tidx0
�
_context_repr/bidirectional_rnn/fw/fw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3TensorArrayScatterV32context_repr/bidirectional_rnn/fw/fw/TensorArray_1=context_repr/bidirectional_rnn/fw/fw/TensorArrayUnstack/range.context_repr/bidirectional_rnn/fw/fw/transpose4context_repr/bidirectional_rnn/fw/fw/TensorArray_1:1"/device:GPU:0*
T0*A
_class7
53loc:@context_repr/bidirectional_rnn/fw/fw/transpose
g
.context_repr/bidirectional_rnn/fw/fw/Maximum/xConst"/device:GPU:0*
value	B :*
dtype0
�
,context_repr/bidirectional_rnn/fw/fw/MaximumMaximum.context_repr/bidirectional_rnn/fw/fw/Maximum/x(context_repr/bidirectional_rnn/fw/fw/Max"/device:GPU:0*
T0
�
,context_repr/bidirectional_rnn/fw/fw/MinimumMinimum4context_repr/bidirectional_rnn/fw/fw/strided_slice_1,context_repr/bidirectional_rnn/fw/fw/Maximum"/device:GPU:0*
T0
u
<context_repr/bidirectional_rnn/fw/fw/while/iteration_counterConst"/device:GPU:0*
value	B : *
dtype0
�
0context_repr/bidirectional_rnn/fw/fw/while/EnterEnter<context_repr/bidirectional_rnn/fw/fw/while/iteration_counter"/device:GPU:0*
T0*
is_constant( *
parallel_iterations *H

frame_name:8context_repr/bidirectional_rnn/fw/fw/while/while_context
�
2context_repr/bidirectional_rnn/fw/fw/while/Enter_1Enter)context_repr/bidirectional_rnn/fw/fw/time"/device:GPU:0*
T0*
is_constant( *
parallel_iterations *H

frame_name:8context_repr/bidirectional_rnn/fw/fw/while/while_context
�
2context_repr/bidirectional_rnn/fw/fw/while/Enter_2Enter2context_repr/bidirectional_rnn/fw/fw/TensorArray:1"/device:GPU:0*
parallel_iterations *H

frame_name:8context_repr/bidirectional_rnn/fw/fw/while/while_context*
T0*
is_constant( 
�
2context_repr/bidirectional_rnn/fw/fw/while/Enter_3Enter<context_repr/bidirectional_rnn/fw/fw/LSTMCellZeroState/zeros"/device:GPU:0*
T0*
is_constant( *
parallel_iterations *H

frame_name:8context_repr/bidirectional_rnn/fw/fw/while/while_context
�
2context_repr/bidirectional_rnn/fw/fw/while/Enter_4Enter>context_repr/bidirectional_rnn/fw/fw/LSTMCellZeroState/zeros_1"/device:GPU:0*
T0*
is_constant( *
parallel_iterations *H

frame_name:8context_repr/bidirectional_rnn/fw/fw/while/while_context
�
0context_repr/bidirectional_rnn/fw/fw/while/MergeMerge0context_repr/bidirectional_rnn/fw/fw/while/Enter8context_repr/bidirectional_rnn/fw/fw/while/NextIteration"/device:GPU:0*
N*
T0
�
2context_repr/bidirectional_rnn/fw/fw/while/Merge_1Merge2context_repr/bidirectional_rnn/fw/fw/while/Enter_1:context_repr/bidirectional_rnn/fw/fw/while/NextIteration_1"/device:GPU:0*
T0*
N
�
2context_repr/bidirectional_rnn/fw/fw/while/Merge_2Merge2context_repr/bidirectional_rnn/fw/fw/while/Enter_2:context_repr/bidirectional_rnn/fw/fw/while/NextIteration_2"/device:GPU:0*
T0*
N
�
2context_repr/bidirectional_rnn/fw/fw/while/Merge_3Merge2context_repr/bidirectional_rnn/fw/fw/while/Enter_3:context_repr/bidirectional_rnn/fw/fw/while/NextIteration_3"/device:GPU:0*
T0*
N
�
2context_repr/bidirectional_rnn/fw/fw/while/Merge_4Merge2context_repr/bidirectional_rnn/fw/fw/while/Enter_4:context_repr/bidirectional_rnn/fw/fw/while/NextIteration_4"/device:GPU:0*
N*
T0
�
/context_repr/bidirectional_rnn/fw/fw/while/LessLess0context_repr/bidirectional_rnn/fw/fw/while/Merge5context_repr/bidirectional_rnn/fw/fw/while/Less/Enter"/device:GPU:0*
T0
�
5context_repr/bidirectional_rnn/fw/fw/while/Less/EnterEnter4context_repr/bidirectional_rnn/fw/fw/strided_slice_1"/device:GPU:0*
parallel_iterations *H

frame_name:8context_repr/bidirectional_rnn/fw/fw/while/while_context*
T0*
is_constant(
�
1context_repr/bidirectional_rnn/fw/fw/while/Less_1Less2context_repr/bidirectional_rnn/fw/fw/while/Merge_17context_repr/bidirectional_rnn/fw/fw/while/Less_1/Enter"/device:GPU:0*
T0
�
7context_repr/bidirectional_rnn/fw/fw/while/Less_1/EnterEnter,context_repr/bidirectional_rnn/fw/fw/Minimum"/device:GPU:0*
parallel_iterations *H

frame_name:8context_repr/bidirectional_rnn/fw/fw/while/while_context*
T0*
is_constant(
�
5context_repr/bidirectional_rnn/fw/fw/while/LogicalAnd
LogicalAnd/context_repr/bidirectional_rnn/fw/fw/while/Less1context_repr/bidirectional_rnn/fw/fw/while/Less_1"/device:GPU:0
�
3context_repr/bidirectional_rnn/fw/fw/while/LoopCondLoopCond5context_repr/bidirectional_rnn/fw/fw/while/LogicalAnd"/device:GPU:0
�
1context_repr/bidirectional_rnn/fw/fw/while/SwitchSwitch0context_repr/bidirectional_rnn/fw/fw/while/Merge3context_repr/bidirectional_rnn/fw/fw/while/LoopCond"/device:GPU:0*
T0*C
_class9
75loc:@context_repr/bidirectional_rnn/fw/fw/while/Merge
�
3context_repr/bidirectional_rnn/fw/fw/while/Switch_1Switch2context_repr/bidirectional_rnn/fw/fw/while/Merge_13context_repr/bidirectional_rnn/fw/fw/while/LoopCond"/device:GPU:0*
T0*E
_class;
97loc:@context_repr/bidirectional_rnn/fw/fw/while/Merge_1
�
3context_repr/bidirectional_rnn/fw/fw/while/Switch_2Switch2context_repr/bidirectional_rnn/fw/fw/while/Merge_23context_repr/bidirectional_rnn/fw/fw/while/LoopCond"/device:GPU:0*
T0*E
_class;
97loc:@context_repr/bidirectional_rnn/fw/fw/while/Merge_2
�
3context_repr/bidirectional_rnn/fw/fw/while/Switch_3Switch2context_repr/bidirectional_rnn/fw/fw/while/Merge_33context_repr/bidirectional_rnn/fw/fw/while/LoopCond"/device:GPU:0*
T0*E
_class;
97loc:@context_repr/bidirectional_rnn/fw/fw/while/Merge_3
�
3context_repr/bidirectional_rnn/fw/fw/while/Switch_4Switch2context_repr/bidirectional_rnn/fw/fw/while/Merge_43context_repr/bidirectional_rnn/fw/fw/while/LoopCond"/device:GPU:0*
T0*E
_class;
97loc:@context_repr/bidirectional_rnn/fw/fw/while/Merge_4
�
3context_repr/bidirectional_rnn/fw/fw/while/IdentityIdentity3context_repr/bidirectional_rnn/fw/fw/while/Switch:1"/device:GPU:0*
T0
�
5context_repr/bidirectional_rnn/fw/fw/while/Identity_1Identity5context_repr/bidirectional_rnn/fw/fw/while/Switch_1:1"/device:GPU:0*
T0
�
5context_repr/bidirectional_rnn/fw/fw/while/Identity_2Identity5context_repr/bidirectional_rnn/fw/fw/while/Switch_2:1"/device:GPU:0*
T0
�
5context_repr/bidirectional_rnn/fw/fw/while/Identity_3Identity5context_repr/bidirectional_rnn/fw/fw/while/Switch_3:1"/device:GPU:0*
T0
�
5context_repr/bidirectional_rnn/fw/fw/while/Identity_4Identity5context_repr/bidirectional_rnn/fw/fw/while/Switch_4:1"/device:GPU:0*
T0
�
0context_repr/bidirectional_rnn/fw/fw/while/add/yConst4^context_repr/bidirectional_rnn/fw/fw/while/Identity"/device:GPU:0*
value	B :*
dtype0
�
.context_repr/bidirectional_rnn/fw/fw/while/addAdd3context_repr/bidirectional_rnn/fw/fw/while/Identity0context_repr/bidirectional_rnn/fw/fw/while/add/y"/device:GPU:0*
T0
�
<context_repr/bidirectional_rnn/fw/fw/while/TensorArrayReadV3TensorArrayReadV3Bcontext_repr/bidirectional_rnn/fw/fw/while/TensorArrayReadV3/Enter5context_repr/bidirectional_rnn/fw/fw/while/Identity_1Dcontext_repr/bidirectional_rnn/fw/fw/while/TensorArrayReadV3/Enter_1"/device:GPU:0*
dtype0
�
Bcontext_repr/bidirectional_rnn/fw/fw/while/TensorArrayReadV3/EnterEnter2context_repr/bidirectional_rnn/fw/fw/TensorArray_1"/device:GPU:0*
T0*
is_constant(*
parallel_iterations *H

frame_name:8context_repr/bidirectional_rnn/fw/fw/while/while_context
�
Dcontext_repr/bidirectional_rnn/fw/fw/while/TensorArrayReadV3/Enter_1Enter_context_repr/bidirectional_rnn/fw/fw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3"/device:GPU:0*
T0*
is_constant(*
parallel_iterations *H

frame_name:8context_repr/bidirectional_rnn/fw/fw/while/while_context
�
7context_repr/bidirectional_rnn/fw/fw/while/GreaterEqualGreaterEqual5context_repr/bidirectional_rnn/fw/fw/while/Identity_1=context_repr/bidirectional_rnn/fw/fw/while/GreaterEqual/Enter"/device:GPU:0*
T0
�
=context_repr/bidirectional_rnn/fw/fw/while/GreaterEqual/EnterEnter0context_repr/bidirectional_rnn/fw/fw/CheckSeqLen"/device:GPU:0*
T0*
is_constant(*
parallel_iterations *H

frame_name:8context_repr/bidirectional_rnn/fw/fw/while/while_context
�
Scontext_repr/bidirectional_rnn/fw/lstm_cell/kernel/Initializer/random_uniform/shapeConst*
dtype0*
valueB"�     *E
_class;
97loc:@context_repr/bidirectional_rnn/fw/lstm_cell/kernel
�
Qcontext_repr/bidirectional_rnn/fw/lstm_cell/kernel/Initializer/random_uniform/minConst*
dtype0*
valueB
 *�	��*E
_class;
97loc:@context_repr/bidirectional_rnn/fw/lstm_cell/kernel
�
Qcontext_repr/bidirectional_rnn/fw/lstm_cell/kernel/Initializer/random_uniform/maxConst*
valueB
 *�	�=*E
_class;
97loc:@context_repr/bidirectional_rnn/fw/lstm_cell/kernel*
dtype0
�
[context_repr/bidirectional_rnn/fw/lstm_cell/kernel/Initializer/random_uniform/RandomUniformRandomUniformScontext_repr/bidirectional_rnn/fw/lstm_cell/kernel/Initializer/random_uniform/shape*
dtype0*
seed2 *

seed *
T0*E
_class;
97loc:@context_repr/bidirectional_rnn/fw/lstm_cell/kernel
�
Qcontext_repr/bidirectional_rnn/fw/lstm_cell/kernel/Initializer/random_uniform/subSubQcontext_repr/bidirectional_rnn/fw/lstm_cell/kernel/Initializer/random_uniform/maxQcontext_repr/bidirectional_rnn/fw/lstm_cell/kernel/Initializer/random_uniform/min*
T0*E
_class;
97loc:@context_repr/bidirectional_rnn/fw/lstm_cell/kernel
�
Qcontext_repr/bidirectional_rnn/fw/lstm_cell/kernel/Initializer/random_uniform/mulMul[context_repr/bidirectional_rnn/fw/lstm_cell/kernel/Initializer/random_uniform/RandomUniformQcontext_repr/bidirectional_rnn/fw/lstm_cell/kernel/Initializer/random_uniform/sub*
T0*E
_class;
97loc:@context_repr/bidirectional_rnn/fw/lstm_cell/kernel
�
Mcontext_repr/bidirectional_rnn/fw/lstm_cell/kernel/Initializer/random_uniformAddQcontext_repr/bidirectional_rnn/fw/lstm_cell/kernel/Initializer/random_uniform/mulQcontext_repr/bidirectional_rnn/fw/lstm_cell/kernel/Initializer/random_uniform/min*
T0*E
_class;
97loc:@context_repr/bidirectional_rnn/fw/lstm_cell/kernel
�
2context_repr/bidirectional_rnn/fw/lstm_cell/kernel
VariableV2"/device:GPU:0*
shape:
��*
shared_name *E
_class;
97loc:@context_repr/bidirectional_rnn/fw/lstm_cell/kernel*
dtype0*
	container 
�
9context_repr/bidirectional_rnn/fw/lstm_cell/kernel/AssignAssign2context_repr/bidirectional_rnn/fw/lstm_cell/kernelMcontext_repr/bidirectional_rnn/fw/lstm_cell/kernel/Initializer/random_uniform"/device:GPU:0*
validate_shape(*
use_locking(*
T0*E
_class;
97loc:@context_repr/bidirectional_rnn/fw/lstm_cell/kernel
�
7context_repr/bidirectional_rnn/fw/lstm_cell/kernel/readIdentity2context_repr/bidirectional_rnn/fw/lstm_cell/kernel"/device:GPU:0*
T0
�
Bcontext_repr/bidirectional_rnn/fw/lstm_cell/bias/Initializer/zerosConst*
valueB�*    *C
_class9
75loc:@context_repr/bidirectional_rnn/fw/lstm_cell/bias*
dtype0
�
0context_repr/bidirectional_rnn/fw/lstm_cell/bias
VariableV2"/device:GPU:0*
shared_name *C
_class9
75loc:@context_repr/bidirectional_rnn/fw/lstm_cell/bias*
dtype0*
	container *
shape:�
�
7context_repr/bidirectional_rnn/fw/lstm_cell/bias/AssignAssign0context_repr/bidirectional_rnn/fw/lstm_cell/biasBcontext_repr/bidirectional_rnn/fw/lstm_cell/bias/Initializer/zeros"/device:GPU:0*
use_locking(*
T0*C
_class9
75loc:@context_repr/bidirectional_rnn/fw/lstm_cell/bias*
validate_shape(
�
5context_repr/bidirectional_rnn/fw/lstm_cell/bias/readIdentity0context_repr/bidirectional_rnn/fw/lstm_cell/bias"/device:GPU:0*
T0
�
@context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/concat/axisConst4^context_repr/bidirectional_rnn/fw/fw/while/Identity"/device:GPU:0*
value	B :*
dtype0
�
;context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/concatConcatV2<context_repr/bidirectional_rnn/fw/fw/while/TensorArrayReadV35context_repr/bidirectional_rnn/fw/fw/while/Identity_4@context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/concat/axis"/device:GPU:0*
N*

Tidx0*
T0
�
;context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/MatMulMatMul;context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/concatAcontext_repr/bidirectional_rnn/fw/fw/while/lstm_cell/MatMul/Enter"/device:GPU:0*
T0*
transpose_a( *
transpose_b( 
�
Acontext_repr/bidirectional_rnn/fw/fw/while/lstm_cell/MatMul/EnterEnter7context_repr/bidirectional_rnn/fw/lstm_cell/kernel/read"/device:GPU:0*
T0*
is_constant(*
parallel_iterations *H

frame_name:8context_repr/bidirectional_rnn/fw/fw/while/while_context
�
<context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/BiasAddBiasAdd;context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/MatMulBcontext_repr/bidirectional_rnn/fw/fw/while/lstm_cell/BiasAdd/Enter"/device:GPU:0*
T0*
data_formatNHWC
�
Bcontext_repr/bidirectional_rnn/fw/fw/while/lstm_cell/BiasAdd/EnterEnter5context_repr/bidirectional_rnn/fw/lstm_cell/bias/read"/device:GPU:0*
T0*
is_constant(*
parallel_iterations *H

frame_name:8context_repr/bidirectional_rnn/fw/fw/while/while_context
�
:context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/ConstConst4^context_repr/bidirectional_rnn/fw/fw/while/Identity"/device:GPU:0*
value	B :*
dtype0
�
Dcontext_repr/bidirectional_rnn/fw/fw/while/lstm_cell/split/split_dimConst4^context_repr/bidirectional_rnn/fw/fw/while/Identity"/device:GPU:0*
value	B :*
dtype0
�
:context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/splitSplitDcontext_repr/bidirectional_rnn/fw/fw/while/lstm_cell/split/split_dim<context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/BiasAdd"/device:GPU:0*
T0*
	num_split
�
:context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/add/yConst4^context_repr/bidirectional_rnn/fw/fw/while/Identity"/device:GPU:0*
valueB
 *  �?*
dtype0
�
8context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/addAdd<context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/split:2:context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/add/y"/device:GPU:0*
T0
�
<context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/SigmoidSigmoid8context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/add"/device:GPU:0*
T0
�
8context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mulMul<context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/Sigmoid5context_repr/bidirectional_rnn/fw/fw/while/Identity_3"/device:GPU:0*
T0
�
>context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/Sigmoid_1Sigmoid:context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/split"/device:GPU:0*
T0
�
9context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/TanhTanh<context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/split:1"/device:GPU:0*
T0
�
:context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_1Mul>context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/Sigmoid_19context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/Tanh"/device:GPU:0*
T0
�
:context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/add_1Add8context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul:context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_1"/device:GPU:0*
T0
�
>context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/Sigmoid_2Sigmoid<context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/split:3"/device:GPU:0*
T0
�
;context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/Tanh_1Tanh:context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/add_1"/device:GPU:0*
T0
�
:context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_2Mul>context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/Sigmoid_2;context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/Tanh_1"/device:GPU:0*
T0
�
1context_repr/bidirectional_rnn/fw/fw/while/SelectSelect7context_repr/bidirectional_rnn/fw/fw/while/GreaterEqual7context_repr/bidirectional_rnn/fw/fw/while/Select/Enter:context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_2"/device:GPU:0*
T0*M
_classC
A?loc:@context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_2
�
7context_repr/bidirectional_rnn/fw/fw/while/Select/EnterEnter*context_repr/bidirectional_rnn/fw/fw/zeros"/device:GPU:0*
parallel_iterations *H

frame_name:8context_repr/bidirectional_rnn/fw/fw/while/while_context*
T0*
is_constant(*M
_classC
A?loc:@context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_2
�
3context_repr/bidirectional_rnn/fw/fw/while/Select_1Select7context_repr/bidirectional_rnn/fw/fw/while/GreaterEqual5context_repr/bidirectional_rnn/fw/fw/while/Identity_3:context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/add_1"/device:GPU:0*
T0*M
_classC
A?loc:@context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/add_1
�
3context_repr/bidirectional_rnn/fw/fw/while/Select_2Select7context_repr/bidirectional_rnn/fw/fw/while/GreaterEqual5context_repr/bidirectional_rnn/fw/fw/while/Identity_4:context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_2"/device:GPU:0*
T0*M
_classC
A?loc:@context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_2
�
Ncontext_repr/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3TensorArrayWriteV3Tcontext_repr/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3/Enter5context_repr/bidirectional_rnn/fw/fw/while/Identity_11context_repr/bidirectional_rnn/fw/fw/while/Select5context_repr/bidirectional_rnn/fw/fw/while/Identity_2"/device:GPU:0*
T0*M
_classC
A?loc:@context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_2
�
Tcontext_repr/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3/EnterEnter0context_repr/bidirectional_rnn/fw/fw/TensorArray"/device:GPU:0*
T0*
is_constant(*M
_classC
A?loc:@context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_2*
parallel_iterations *H

frame_name:8context_repr/bidirectional_rnn/fw/fw/while/while_context
�
2context_repr/bidirectional_rnn/fw/fw/while/add_1/yConst4^context_repr/bidirectional_rnn/fw/fw/while/Identity"/device:GPU:0*
value	B :*
dtype0
�
0context_repr/bidirectional_rnn/fw/fw/while/add_1Add5context_repr/bidirectional_rnn/fw/fw/while/Identity_12context_repr/bidirectional_rnn/fw/fw/while/add_1/y"/device:GPU:0*
T0
�
8context_repr/bidirectional_rnn/fw/fw/while/NextIterationNextIteration.context_repr/bidirectional_rnn/fw/fw/while/add"/device:GPU:0*
T0
�
:context_repr/bidirectional_rnn/fw/fw/while/NextIteration_1NextIteration0context_repr/bidirectional_rnn/fw/fw/while/add_1"/device:GPU:0*
T0
�
:context_repr/bidirectional_rnn/fw/fw/while/NextIteration_2NextIterationNcontext_repr/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3"/device:GPU:0*
T0
�
:context_repr/bidirectional_rnn/fw/fw/while/NextIteration_3NextIteration3context_repr/bidirectional_rnn/fw/fw/while/Select_1"/device:GPU:0*
T0
�
:context_repr/bidirectional_rnn/fw/fw/while/NextIteration_4NextIteration3context_repr/bidirectional_rnn/fw/fw/while/Select_2"/device:GPU:0*
T0
�
/context_repr/bidirectional_rnn/fw/fw/while/ExitExit1context_repr/bidirectional_rnn/fw/fw/while/Switch"/device:GPU:0*
T0
�
1context_repr/bidirectional_rnn/fw/fw/while/Exit_1Exit3context_repr/bidirectional_rnn/fw/fw/while/Switch_1"/device:GPU:0*
T0
�
1context_repr/bidirectional_rnn/fw/fw/while/Exit_2Exit3context_repr/bidirectional_rnn/fw/fw/while/Switch_2"/device:GPU:0*
T0
�
1context_repr/bidirectional_rnn/fw/fw/while/Exit_3Exit3context_repr/bidirectional_rnn/fw/fw/while/Switch_3"/device:GPU:0*
T0
�
1context_repr/bidirectional_rnn/fw/fw/while/Exit_4Exit3context_repr/bidirectional_rnn/fw/fw/while/Switch_4"/device:GPU:0*
T0
�
Gcontext_repr/bidirectional_rnn/fw/fw/TensorArrayStack/TensorArraySizeV3TensorArraySizeV30context_repr/bidirectional_rnn/fw/fw/TensorArray1context_repr/bidirectional_rnn/fw/fw/while/Exit_2*C
_class9
75loc:@context_repr/bidirectional_rnn/fw/fw/TensorArray
�
Acontext_repr/bidirectional_rnn/fw/fw/TensorArrayStack/range/startConst*
dtype0*
value	B : *C
_class9
75loc:@context_repr/bidirectional_rnn/fw/fw/TensorArray
�
Acontext_repr/bidirectional_rnn/fw/fw/TensorArrayStack/range/deltaConst*
value	B :*C
_class9
75loc:@context_repr/bidirectional_rnn/fw/fw/TensorArray*
dtype0
�
;context_repr/bidirectional_rnn/fw/fw/TensorArrayStack/rangeRangeAcontext_repr/bidirectional_rnn/fw/fw/TensorArrayStack/range/startGcontext_repr/bidirectional_rnn/fw/fw/TensorArrayStack/TensorArraySizeV3Acontext_repr/bidirectional_rnn/fw/fw/TensorArrayStack/range/delta*

Tidx0*C
_class9
75loc:@context_repr/bidirectional_rnn/fw/fw/TensorArray
�
Icontext_repr/bidirectional_rnn/fw/fw/TensorArrayStack/TensorArrayGatherV3TensorArrayGatherV30context_repr/bidirectional_rnn/fw/fw/TensorArray;context_repr/bidirectional_rnn/fw/fw/TensorArrayStack/range1context_repr/bidirectional_rnn/fw/fw/while/Exit_2*C
_class9
75loc:@context_repr/bidirectional_rnn/fw/fw/TensorArray*
dtype0*%
element_shape:����������
j
,context_repr/bidirectional_rnn/fw/fw/Const_4Const"/device:GPU:0*
valueB:�*
dtype0
d
+context_repr/bidirectional_rnn/fw/fw/Rank_1Const"/device:GPU:0*
value	B :*
dtype0
k
2context_repr/bidirectional_rnn/fw/fw/range_1/startConst"/device:GPU:0*
value	B :*
dtype0
k
2context_repr/bidirectional_rnn/fw/fw/range_1/deltaConst"/device:GPU:0*
dtype0*
value	B :
�
,context_repr/bidirectional_rnn/fw/fw/range_1Range2context_repr/bidirectional_rnn/fw/fw/range_1/start+context_repr/bidirectional_rnn/fw/fw/Rank_12context_repr/bidirectional_rnn/fw/fw/range_1/delta"/device:GPU:0*

Tidx0
z
6context_repr/bidirectional_rnn/fw/fw/concat_2/values_0Const"/device:GPU:0*
valueB"       *
dtype0
k
2context_repr/bidirectional_rnn/fw/fw/concat_2/axisConst"/device:GPU:0*
value	B : *
dtype0
�
-context_repr/bidirectional_rnn/fw/fw/concat_2ConcatV26context_repr/bidirectional_rnn/fw/fw/concat_2/values_0,context_repr/bidirectional_rnn/fw/fw/range_12context_repr/bidirectional_rnn/fw/fw/concat_2/axis"/device:GPU:0*
N*

Tidx0*
T0
�
0context_repr/bidirectional_rnn/fw/fw/transpose_1	TransposeIcontext_repr/bidirectional_rnn/fw/fw/TensorArrayStack/TensorArrayGatherV3-context_repr/bidirectional_rnn/fw/fw/concat_2"/device:GPU:0*
Tperm0*
T0
�
1context_repr/bidirectional_rnn/bw/ReverseSequenceReverseSequencecontext_repr/dropout/mulword_repr/sentence_lengths"/device:GPU:0*
	batch_dim *
T0*
seq_dim*

Tlen0
b
)context_repr/bidirectional_rnn/bw/bw/RankConst"/device:GPU:0*
value	B :*
dtype0
i
0context_repr/bidirectional_rnn/bw/bw/range/startConst"/device:GPU:0*
value	B :*
dtype0
i
0context_repr/bidirectional_rnn/bw/bw/range/deltaConst"/device:GPU:0*
value	B :*
dtype0
�
*context_repr/bidirectional_rnn/bw/bw/rangeRange0context_repr/bidirectional_rnn/bw/bw/range/start)context_repr/bidirectional_rnn/bw/bw/Rank0context_repr/bidirectional_rnn/bw/bw/range/delta"/device:GPU:0*

Tidx0
x
4context_repr/bidirectional_rnn/bw/bw/concat/values_0Const"/device:GPU:0*
valueB"       *
dtype0
i
0context_repr/bidirectional_rnn/bw/bw/concat/axisConst"/device:GPU:0*
dtype0*
value	B : 
�
+context_repr/bidirectional_rnn/bw/bw/concatConcatV24context_repr/bidirectional_rnn/bw/bw/concat/values_0*context_repr/bidirectional_rnn/bw/bw/range0context_repr/bidirectional_rnn/bw/bw/concat/axis"/device:GPU:0*
T0*
N*

Tidx0
�
.context_repr/bidirectional_rnn/bw/bw/transpose	Transpose1context_repr/bidirectional_rnn/bw/ReverseSequence+context_repr/bidirectional_rnn/bw/bw/concat"/device:GPU:0*
Tperm0*
T0
t
4context_repr/bidirectional_rnn/bw/bw/sequence_lengthIdentityword_repr/sentence_lengths"/device:GPU:0*
T0
�
*context_repr/bidirectional_rnn/bw/bw/ShapeShape.context_repr/bidirectional_rnn/bw/bw/transpose"/device:GPU:0*
T0*
out_type0
u
8context_repr/bidirectional_rnn/bw/bw/strided_slice/stackConst"/device:GPU:0*
valueB:*
dtype0
w
:context_repr/bidirectional_rnn/bw/bw/strided_slice/stack_1Const"/device:GPU:0*
valueB:*
dtype0
w
:context_repr/bidirectional_rnn/bw/bw/strided_slice/stack_2Const"/device:GPU:0*
valueB:*
dtype0
�
2context_repr/bidirectional_rnn/bw/bw/strided_sliceStridedSlice*context_repr/bidirectional_rnn/bw/bw/Shape8context_repr/bidirectional_rnn/bw/bw/strided_slice/stack:context_repr/bidirectional_rnn/bw/bw/strided_slice/stack_1:context_repr/bidirectional_rnn/bw/bw/strided_slice/stack_2"/device:GPU:0*
end_mask *
Index0*
T0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask 
~
Econtext_repr/bidirectional_rnn/bw/bw/LSTMCellZeroState/ExpandDims/dimConst"/device:GPU:0*
dtype0*
value	B : 
�
Acontext_repr/bidirectional_rnn/bw/bw/LSTMCellZeroState/ExpandDims
ExpandDims2context_repr/bidirectional_rnn/bw/bw/strided_sliceEcontext_repr/bidirectional_rnn/bw/bw/LSTMCellZeroState/ExpandDims/dim"/device:GPU:0*
T0*

Tdim0
z
<context_repr/bidirectional_rnn/bw/bw/LSTMCellZeroState/ConstConst"/device:GPU:0*
dtype0*
valueB:�
{
Bcontext_repr/bidirectional_rnn/bw/bw/LSTMCellZeroState/concat/axisConst"/device:GPU:0*
value	B : *
dtype0
�
=context_repr/bidirectional_rnn/bw/bw/LSTMCellZeroState/concatConcatV2Acontext_repr/bidirectional_rnn/bw/bw/LSTMCellZeroState/ExpandDims<context_repr/bidirectional_rnn/bw/bw/LSTMCellZeroState/ConstBcontext_repr/bidirectional_rnn/bw/bw/LSTMCellZeroState/concat/axis"/device:GPU:0*

Tidx0*
T0*
N
~
Bcontext_repr/bidirectional_rnn/bw/bw/LSTMCellZeroState/zeros/ConstConst"/device:GPU:0*
valueB
 *    *
dtype0
�
<context_repr/bidirectional_rnn/bw/bw/LSTMCellZeroState/zerosFill=context_repr/bidirectional_rnn/bw/bw/LSTMCellZeroState/concatBcontext_repr/bidirectional_rnn/bw/bw/LSTMCellZeroState/zeros/Const"/device:GPU:0*
T0*

index_type0
�
Gcontext_repr/bidirectional_rnn/bw/bw/LSTMCellZeroState/ExpandDims_1/dimConst"/device:GPU:0*
value	B : *
dtype0
�
Ccontext_repr/bidirectional_rnn/bw/bw/LSTMCellZeroState/ExpandDims_1
ExpandDims2context_repr/bidirectional_rnn/bw/bw/strided_sliceGcontext_repr/bidirectional_rnn/bw/bw/LSTMCellZeroState/ExpandDims_1/dim"/device:GPU:0*

Tdim0*
T0
|
>context_repr/bidirectional_rnn/bw/bw/LSTMCellZeroState/Const_1Const"/device:GPU:0*
dtype0*
valueB:�
�
Gcontext_repr/bidirectional_rnn/bw/bw/LSTMCellZeroState/ExpandDims_2/dimConst"/device:GPU:0*
value	B : *
dtype0
�
Ccontext_repr/bidirectional_rnn/bw/bw/LSTMCellZeroState/ExpandDims_2
ExpandDims2context_repr/bidirectional_rnn/bw/bw/strided_sliceGcontext_repr/bidirectional_rnn/bw/bw/LSTMCellZeroState/ExpandDims_2/dim"/device:GPU:0*
T0*

Tdim0
|
>context_repr/bidirectional_rnn/bw/bw/LSTMCellZeroState/Const_2Const"/device:GPU:0*
valueB:�*
dtype0
}
Dcontext_repr/bidirectional_rnn/bw/bw/LSTMCellZeroState/concat_1/axisConst"/device:GPU:0*
dtype0*
value	B : 
�
?context_repr/bidirectional_rnn/bw/bw/LSTMCellZeroState/concat_1ConcatV2Ccontext_repr/bidirectional_rnn/bw/bw/LSTMCellZeroState/ExpandDims_2>context_repr/bidirectional_rnn/bw/bw/LSTMCellZeroState/Const_2Dcontext_repr/bidirectional_rnn/bw/bw/LSTMCellZeroState/concat_1/axis"/device:GPU:0*

Tidx0*
T0*
N
�
Dcontext_repr/bidirectional_rnn/bw/bw/LSTMCellZeroState/zeros_1/ConstConst"/device:GPU:0*
valueB
 *    *
dtype0
�
>context_repr/bidirectional_rnn/bw/bw/LSTMCellZeroState/zeros_1Fill?context_repr/bidirectional_rnn/bw/bw/LSTMCellZeroState/concat_1Dcontext_repr/bidirectional_rnn/bw/bw/LSTMCellZeroState/zeros_1/Const"/device:GPU:0*
T0*

index_type0
�
Gcontext_repr/bidirectional_rnn/bw/bw/LSTMCellZeroState/ExpandDims_3/dimConst"/device:GPU:0*
value	B : *
dtype0
�
Ccontext_repr/bidirectional_rnn/bw/bw/LSTMCellZeroState/ExpandDims_3
ExpandDims2context_repr/bidirectional_rnn/bw/bw/strided_sliceGcontext_repr/bidirectional_rnn/bw/bw/LSTMCellZeroState/ExpandDims_3/dim"/device:GPU:0*
T0*

Tdim0
|
>context_repr/bidirectional_rnn/bw/bw/LSTMCellZeroState/Const_3Const"/device:GPU:0*
valueB:�*
dtype0
�
,context_repr/bidirectional_rnn/bw/bw/Shape_1Shape4context_repr/bidirectional_rnn/bw/bw/sequence_length"/device:GPU:0*
T0*
out_type0
�
*context_repr/bidirectional_rnn/bw/bw/stackPack2context_repr/bidirectional_rnn/bw/bw/strided_slice"/device:GPU:0*
T0*

axis *
N
�
*context_repr/bidirectional_rnn/bw/bw/EqualEqual,context_repr/bidirectional_rnn/bw/bw/Shape_1*context_repr/bidirectional_rnn/bw/bw/stack"/device:GPU:0*
T0
g
*context_repr/bidirectional_rnn/bw/bw/ConstConst"/device:GPU:0*
valueB: *
dtype0
�
(context_repr/bidirectional_rnn/bw/bw/AllAll*context_repr/bidirectional_rnn/bw/bw/Equal*context_repr/bidirectional_rnn/bw/bw/Const"/device:GPU:0*

Tidx0*
	keep_dims( 
�
1context_repr/bidirectional_rnn/bw/bw/Assert/ConstConst"/device:GPU:0*e
value\BZ BTExpected shape for Tensor context_repr/bidirectional_rnn/bw/bw/sequence_length:0 is *
dtype0
{
3context_repr/bidirectional_rnn/bw/bw/Assert/Const_1Const"/device:GPU:0*
dtype0*!
valueB B but saw shape: 
�
9context_repr/bidirectional_rnn/bw/bw/Assert/Assert/data_0Const"/device:GPU:0*
dtype0*e
value\BZ BTExpected shape for Tensor context_repr/bidirectional_rnn/bw/bw/sequence_length:0 is 
�
9context_repr/bidirectional_rnn/bw/bw/Assert/Assert/data_2Const"/device:GPU:0*!
valueB B but saw shape: *
dtype0
�
2context_repr/bidirectional_rnn/bw/bw/Assert/AssertAssert(context_repr/bidirectional_rnn/bw/bw/All9context_repr/bidirectional_rnn/bw/bw/Assert/Assert/data_0*context_repr/bidirectional_rnn/bw/bw/stack9context_repr/bidirectional_rnn/bw/bw/Assert/Assert/data_2,context_repr/bidirectional_rnn/bw/bw/Shape_1"/device:GPU:0*
T
2*
	summarize
�
0context_repr/bidirectional_rnn/bw/bw/CheckSeqLenIdentity4context_repr/bidirectional_rnn/bw/bw/sequence_length3^context_repr/bidirectional_rnn/bw/bw/Assert/Assert"/device:GPU:0*
T0
�
,context_repr/bidirectional_rnn/bw/bw/Shape_2Shape.context_repr/bidirectional_rnn/bw/bw/transpose"/device:GPU:0*
T0*
out_type0
w
:context_repr/bidirectional_rnn/bw/bw/strided_slice_1/stackConst"/device:GPU:0*
valueB: *
dtype0
y
<context_repr/bidirectional_rnn/bw/bw/strided_slice_1/stack_1Const"/device:GPU:0*
valueB:*
dtype0
y
<context_repr/bidirectional_rnn/bw/bw/strided_slice_1/stack_2Const"/device:GPU:0*
valueB:*
dtype0
�
4context_repr/bidirectional_rnn/bw/bw/strided_slice_1StridedSlice,context_repr/bidirectional_rnn/bw/bw/Shape_2:context_repr/bidirectional_rnn/bw/bw/strided_slice_1/stack<context_repr/bidirectional_rnn/bw/bw/strided_slice_1/stack_1<context_repr/bidirectional_rnn/bw/bw/strided_slice_1/stack_2"/device:GPU:0*
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask 
�
,context_repr/bidirectional_rnn/bw/bw/Shape_3Shape.context_repr/bidirectional_rnn/bw/bw/transpose"/device:GPU:0*
T0*
out_type0
w
:context_repr/bidirectional_rnn/bw/bw/strided_slice_2/stackConst"/device:GPU:0*
valueB:*
dtype0
y
<context_repr/bidirectional_rnn/bw/bw/strided_slice_2/stack_1Const"/device:GPU:0*
dtype0*
valueB:
y
<context_repr/bidirectional_rnn/bw/bw/strided_slice_2/stack_2Const"/device:GPU:0*
valueB:*
dtype0
�
4context_repr/bidirectional_rnn/bw/bw/strided_slice_2StridedSlice,context_repr/bidirectional_rnn/bw/bw/Shape_3:context_repr/bidirectional_rnn/bw/bw/strided_slice_2/stack<context_repr/bidirectional_rnn/bw/bw/strided_slice_2/stack_1<context_repr/bidirectional_rnn/bw/bw/strided_slice_2/stack_2"/device:GPU:0*
T0*
Index0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask 
l
3context_repr/bidirectional_rnn/bw/bw/ExpandDims/dimConst"/device:GPU:0*
value	B : *
dtype0
�
/context_repr/bidirectional_rnn/bw/bw/ExpandDims
ExpandDims4context_repr/bidirectional_rnn/bw/bw/strided_slice_23context_repr/bidirectional_rnn/bw/bw/ExpandDims/dim"/device:GPU:0*

Tdim0*
T0
j
,context_repr/bidirectional_rnn/bw/bw/Const_1Const"/device:GPU:0*
valueB:�*
dtype0
k
2context_repr/bidirectional_rnn/bw/bw/concat_1/axisConst"/device:GPU:0*
value	B : *
dtype0
�
-context_repr/bidirectional_rnn/bw/bw/concat_1ConcatV2/context_repr/bidirectional_rnn/bw/bw/ExpandDims,context_repr/bidirectional_rnn/bw/bw/Const_12context_repr/bidirectional_rnn/bw/bw/concat_1/axis"/device:GPU:0*
N*

Tidx0*
T0
l
0context_repr/bidirectional_rnn/bw/bw/zeros/ConstConst"/device:GPU:0*
dtype0*
valueB
 *    
�
*context_repr/bidirectional_rnn/bw/bw/zerosFill-context_repr/bidirectional_rnn/bw/bw/concat_10context_repr/bidirectional_rnn/bw/bw/zeros/Const"/device:GPU:0*
T0*

index_type0
i
,context_repr/bidirectional_rnn/bw/bw/Const_2Const"/device:GPU:0*
dtype0*
valueB: 
�
(context_repr/bidirectional_rnn/bw/bw/MinMin0context_repr/bidirectional_rnn/bw/bw/CheckSeqLen,context_repr/bidirectional_rnn/bw/bw/Const_2"/device:GPU:0*
T0*

Tidx0*
	keep_dims( 
i
,context_repr/bidirectional_rnn/bw/bw/Const_3Const"/device:GPU:0*
valueB: *
dtype0
�
(context_repr/bidirectional_rnn/bw/bw/MaxMax0context_repr/bidirectional_rnn/bw/bw/CheckSeqLen,context_repr/bidirectional_rnn/bw/bw/Const_3"/device:GPU:0*

Tidx0*
	keep_dims( *
T0
b
)context_repr/bidirectional_rnn/bw/bw/timeConst"/device:GPU:0*
value	B : *
dtype0
�
0context_repr/bidirectional_rnn/bw/bw/TensorArrayTensorArrayV34context_repr/bidirectional_rnn/bw/bw/strided_slice_1*P
tensor_array_name;9context_repr/bidirectional_rnn/bw/bw/dynamic_rnn/output_0*
dtype0*%
element_shape:����������*
clear_after_read(*
dynamic_size( *
identical_element_shapes(
�
2context_repr/bidirectional_rnn/bw/bw/TensorArray_1TensorArrayV34context_repr/bidirectional_rnn/bw/bw/strided_slice_1*
identical_element_shapes(*O
tensor_array_name:8context_repr/bidirectional_rnn/bw/bw/dynamic_rnn/input_0*
dtype0*%
element_shape:����������*
dynamic_size( *
clear_after_read(
�
=context_repr/bidirectional_rnn/bw/bw/TensorArrayUnstack/ShapeShape.context_repr/bidirectional_rnn/bw/bw/transpose"/device:GPU:0*
T0*
out_type0
�
Kcontext_repr/bidirectional_rnn/bw/bw/TensorArrayUnstack/strided_slice/stackConst"/device:GPU:0*
valueB: *
dtype0
�
Mcontext_repr/bidirectional_rnn/bw/bw/TensorArrayUnstack/strided_slice/stack_1Const"/device:GPU:0*
valueB:*
dtype0
�
Mcontext_repr/bidirectional_rnn/bw/bw/TensorArrayUnstack/strided_slice/stack_2Const"/device:GPU:0*
valueB:*
dtype0
�
Econtext_repr/bidirectional_rnn/bw/bw/TensorArrayUnstack/strided_sliceStridedSlice=context_repr/bidirectional_rnn/bw/bw/TensorArrayUnstack/ShapeKcontext_repr/bidirectional_rnn/bw/bw/TensorArrayUnstack/strided_slice/stackMcontext_repr/bidirectional_rnn/bw/bw/TensorArrayUnstack/strided_slice/stack_1Mcontext_repr/bidirectional_rnn/bw/bw/TensorArrayUnstack/strided_slice/stack_2"/device:GPU:0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
Index0*
T0
|
Ccontext_repr/bidirectional_rnn/bw/bw/TensorArrayUnstack/range/startConst"/device:GPU:0*
value	B : *
dtype0
|
Ccontext_repr/bidirectional_rnn/bw/bw/TensorArrayUnstack/range/deltaConst"/device:GPU:0*
value	B :*
dtype0
�
=context_repr/bidirectional_rnn/bw/bw/TensorArrayUnstack/rangeRangeCcontext_repr/bidirectional_rnn/bw/bw/TensorArrayUnstack/range/startEcontext_repr/bidirectional_rnn/bw/bw/TensorArrayUnstack/strided_sliceCcontext_repr/bidirectional_rnn/bw/bw/TensorArrayUnstack/range/delta"/device:GPU:0*

Tidx0
�
_context_repr/bidirectional_rnn/bw/bw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3TensorArrayScatterV32context_repr/bidirectional_rnn/bw/bw/TensorArray_1=context_repr/bidirectional_rnn/bw/bw/TensorArrayUnstack/range.context_repr/bidirectional_rnn/bw/bw/transpose4context_repr/bidirectional_rnn/bw/bw/TensorArray_1:1"/device:GPU:0*
T0*A
_class7
53loc:@context_repr/bidirectional_rnn/bw/bw/transpose
g
.context_repr/bidirectional_rnn/bw/bw/Maximum/xConst"/device:GPU:0*
value	B :*
dtype0
�
,context_repr/bidirectional_rnn/bw/bw/MaximumMaximum.context_repr/bidirectional_rnn/bw/bw/Maximum/x(context_repr/bidirectional_rnn/bw/bw/Max"/device:GPU:0*
T0
�
,context_repr/bidirectional_rnn/bw/bw/MinimumMinimum4context_repr/bidirectional_rnn/bw/bw/strided_slice_1,context_repr/bidirectional_rnn/bw/bw/Maximum"/device:GPU:0*
T0
u
<context_repr/bidirectional_rnn/bw/bw/while/iteration_counterConst"/device:GPU:0*
value	B : *
dtype0
�
0context_repr/bidirectional_rnn/bw/bw/while/EnterEnter<context_repr/bidirectional_rnn/bw/bw/while/iteration_counter"/device:GPU:0*
parallel_iterations *H

frame_name:8context_repr/bidirectional_rnn/bw/bw/while/while_context*
T0*
is_constant( 
�
2context_repr/bidirectional_rnn/bw/bw/while/Enter_1Enter)context_repr/bidirectional_rnn/bw/bw/time"/device:GPU:0*
parallel_iterations *H

frame_name:8context_repr/bidirectional_rnn/bw/bw/while/while_context*
T0*
is_constant( 
�
2context_repr/bidirectional_rnn/bw/bw/while/Enter_2Enter2context_repr/bidirectional_rnn/bw/bw/TensorArray:1"/device:GPU:0*
T0*
is_constant( *
parallel_iterations *H

frame_name:8context_repr/bidirectional_rnn/bw/bw/while/while_context
�
2context_repr/bidirectional_rnn/bw/bw/while/Enter_3Enter<context_repr/bidirectional_rnn/bw/bw/LSTMCellZeroState/zeros"/device:GPU:0*
parallel_iterations *H

frame_name:8context_repr/bidirectional_rnn/bw/bw/while/while_context*
T0*
is_constant( 
�
2context_repr/bidirectional_rnn/bw/bw/while/Enter_4Enter>context_repr/bidirectional_rnn/bw/bw/LSTMCellZeroState/zeros_1"/device:GPU:0*
T0*
is_constant( *
parallel_iterations *H

frame_name:8context_repr/bidirectional_rnn/bw/bw/while/while_context
�
0context_repr/bidirectional_rnn/bw/bw/while/MergeMerge0context_repr/bidirectional_rnn/bw/bw/while/Enter8context_repr/bidirectional_rnn/bw/bw/while/NextIteration"/device:GPU:0*
N*
T0
�
2context_repr/bidirectional_rnn/bw/bw/while/Merge_1Merge2context_repr/bidirectional_rnn/bw/bw/while/Enter_1:context_repr/bidirectional_rnn/bw/bw/while/NextIteration_1"/device:GPU:0*
T0*
N
�
2context_repr/bidirectional_rnn/bw/bw/while/Merge_2Merge2context_repr/bidirectional_rnn/bw/bw/while/Enter_2:context_repr/bidirectional_rnn/bw/bw/while/NextIteration_2"/device:GPU:0*
N*
T0
�
2context_repr/bidirectional_rnn/bw/bw/while/Merge_3Merge2context_repr/bidirectional_rnn/bw/bw/while/Enter_3:context_repr/bidirectional_rnn/bw/bw/while/NextIteration_3"/device:GPU:0*
T0*
N
�
2context_repr/bidirectional_rnn/bw/bw/while/Merge_4Merge2context_repr/bidirectional_rnn/bw/bw/while/Enter_4:context_repr/bidirectional_rnn/bw/bw/while/NextIteration_4"/device:GPU:0*
T0*
N
�
/context_repr/bidirectional_rnn/bw/bw/while/LessLess0context_repr/bidirectional_rnn/bw/bw/while/Merge5context_repr/bidirectional_rnn/bw/bw/while/Less/Enter"/device:GPU:0*
T0
�
5context_repr/bidirectional_rnn/bw/bw/while/Less/EnterEnter4context_repr/bidirectional_rnn/bw/bw/strided_slice_1"/device:GPU:0*
T0*
is_constant(*
parallel_iterations *H

frame_name:8context_repr/bidirectional_rnn/bw/bw/while/while_context
�
1context_repr/bidirectional_rnn/bw/bw/while/Less_1Less2context_repr/bidirectional_rnn/bw/bw/while/Merge_17context_repr/bidirectional_rnn/bw/bw/while/Less_1/Enter"/device:GPU:0*
T0
�
7context_repr/bidirectional_rnn/bw/bw/while/Less_1/EnterEnter,context_repr/bidirectional_rnn/bw/bw/Minimum"/device:GPU:0*
T0*
is_constant(*
parallel_iterations *H

frame_name:8context_repr/bidirectional_rnn/bw/bw/while/while_context
�
5context_repr/bidirectional_rnn/bw/bw/while/LogicalAnd
LogicalAnd/context_repr/bidirectional_rnn/bw/bw/while/Less1context_repr/bidirectional_rnn/bw/bw/while/Less_1"/device:GPU:0
�
3context_repr/bidirectional_rnn/bw/bw/while/LoopCondLoopCond5context_repr/bidirectional_rnn/bw/bw/while/LogicalAnd"/device:GPU:0
�
1context_repr/bidirectional_rnn/bw/bw/while/SwitchSwitch0context_repr/bidirectional_rnn/bw/bw/while/Merge3context_repr/bidirectional_rnn/bw/bw/while/LoopCond"/device:GPU:0*
T0*C
_class9
75loc:@context_repr/bidirectional_rnn/bw/bw/while/Merge
�
3context_repr/bidirectional_rnn/bw/bw/while/Switch_1Switch2context_repr/bidirectional_rnn/bw/bw/while/Merge_13context_repr/bidirectional_rnn/bw/bw/while/LoopCond"/device:GPU:0*
T0*E
_class;
97loc:@context_repr/bidirectional_rnn/bw/bw/while/Merge_1
�
3context_repr/bidirectional_rnn/bw/bw/while/Switch_2Switch2context_repr/bidirectional_rnn/bw/bw/while/Merge_23context_repr/bidirectional_rnn/bw/bw/while/LoopCond"/device:GPU:0*
T0*E
_class;
97loc:@context_repr/bidirectional_rnn/bw/bw/while/Merge_2
�
3context_repr/bidirectional_rnn/bw/bw/while/Switch_3Switch2context_repr/bidirectional_rnn/bw/bw/while/Merge_33context_repr/bidirectional_rnn/bw/bw/while/LoopCond"/device:GPU:0*
T0*E
_class;
97loc:@context_repr/bidirectional_rnn/bw/bw/while/Merge_3
�
3context_repr/bidirectional_rnn/bw/bw/while/Switch_4Switch2context_repr/bidirectional_rnn/bw/bw/while/Merge_43context_repr/bidirectional_rnn/bw/bw/while/LoopCond"/device:GPU:0*
T0*E
_class;
97loc:@context_repr/bidirectional_rnn/bw/bw/while/Merge_4
�
3context_repr/bidirectional_rnn/bw/bw/while/IdentityIdentity3context_repr/bidirectional_rnn/bw/bw/while/Switch:1"/device:GPU:0*
T0
�
5context_repr/bidirectional_rnn/bw/bw/while/Identity_1Identity5context_repr/bidirectional_rnn/bw/bw/while/Switch_1:1"/device:GPU:0*
T0
�
5context_repr/bidirectional_rnn/bw/bw/while/Identity_2Identity5context_repr/bidirectional_rnn/bw/bw/while/Switch_2:1"/device:GPU:0*
T0
�
5context_repr/bidirectional_rnn/bw/bw/while/Identity_3Identity5context_repr/bidirectional_rnn/bw/bw/while/Switch_3:1"/device:GPU:0*
T0
�
5context_repr/bidirectional_rnn/bw/bw/while/Identity_4Identity5context_repr/bidirectional_rnn/bw/bw/while/Switch_4:1"/device:GPU:0*
T0
�
0context_repr/bidirectional_rnn/bw/bw/while/add/yConst4^context_repr/bidirectional_rnn/bw/bw/while/Identity"/device:GPU:0*
dtype0*
value	B :
�
.context_repr/bidirectional_rnn/bw/bw/while/addAdd3context_repr/bidirectional_rnn/bw/bw/while/Identity0context_repr/bidirectional_rnn/bw/bw/while/add/y"/device:GPU:0*
T0
�
<context_repr/bidirectional_rnn/bw/bw/while/TensorArrayReadV3TensorArrayReadV3Bcontext_repr/bidirectional_rnn/bw/bw/while/TensorArrayReadV3/Enter5context_repr/bidirectional_rnn/bw/bw/while/Identity_1Dcontext_repr/bidirectional_rnn/bw/bw/while/TensorArrayReadV3/Enter_1"/device:GPU:0*
dtype0
�
Bcontext_repr/bidirectional_rnn/bw/bw/while/TensorArrayReadV3/EnterEnter2context_repr/bidirectional_rnn/bw/bw/TensorArray_1"/device:GPU:0*
T0*
is_constant(*
parallel_iterations *H

frame_name:8context_repr/bidirectional_rnn/bw/bw/while/while_context
�
Dcontext_repr/bidirectional_rnn/bw/bw/while/TensorArrayReadV3/Enter_1Enter_context_repr/bidirectional_rnn/bw/bw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3"/device:GPU:0*
T0*
is_constant(*
parallel_iterations *H

frame_name:8context_repr/bidirectional_rnn/bw/bw/while/while_context
�
7context_repr/bidirectional_rnn/bw/bw/while/GreaterEqualGreaterEqual5context_repr/bidirectional_rnn/bw/bw/while/Identity_1=context_repr/bidirectional_rnn/bw/bw/while/GreaterEqual/Enter"/device:GPU:0*
T0
�
=context_repr/bidirectional_rnn/bw/bw/while/GreaterEqual/EnterEnter0context_repr/bidirectional_rnn/bw/bw/CheckSeqLen"/device:GPU:0*
parallel_iterations *H

frame_name:8context_repr/bidirectional_rnn/bw/bw/while/while_context*
T0*
is_constant(
�
Scontext_repr/bidirectional_rnn/bw/lstm_cell/kernel/Initializer/random_uniform/shapeConst*
valueB"�     *E
_class;
97loc:@context_repr/bidirectional_rnn/bw/lstm_cell/kernel*
dtype0
�
Qcontext_repr/bidirectional_rnn/bw/lstm_cell/kernel/Initializer/random_uniform/minConst*
dtype0*
valueB
 *�	��*E
_class;
97loc:@context_repr/bidirectional_rnn/bw/lstm_cell/kernel
�
Qcontext_repr/bidirectional_rnn/bw/lstm_cell/kernel/Initializer/random_uniform/maxConst*
valueB
 *�	�=*E
_class;
97loc:@context_repr/bidirectional_rnn/bw/lstm_cell/kernel*
dtype0
�
[context_repr/bidirectional_rnn/bw/lstm_cell/kernel/Initializer/random_uniform/RandomUniformRandomUniformScontext_repr/bidirectional_rnn/bw/lstm_cell/kernel/Initializer/random_uniform/shape*
T0*E
_class;
97loc:@context_repr/bidirectional_rnn/bw/lstm_cell/kernel*
dtype0*
seed2 *

seed 
�
Qcontext_repr/bidirectional_rnn/bw/lstm_cell/kernel/Initializer/random_uniform/subSubQcontext_repr/bidirectional_rnn/bw/lstm_cell/kernel/Initializer/random_uniform/maxQcontext_repr/bidirectional_rnn/bw/lstm_cell/kernel/Initializer/random_uniform/min*
T0*E
_class;
97loc:@context_repr/bidirectional_rnn/bw/lstm_cell/kernel
�
Qcontext_repr/bidirectional_rnn/bw/lstm_cell/kernel/Initializer/random_uniform/mulMul[context_repr/bidirectional_rnn/bw/lstm_cell/kernel/Initializer/random_uniform/RandomUniformQcontext_repr/bidirectional_rnn/bw/lstm_cell/kernel/Initializer/random_uniform/sub*
T0*E
_class;
97loc:@context_repr/bidirectional_rnn/bw/lstm_cell/kernel
�
Mcontext_repr/bidirectional_rnn/bw/lstm_cell/kernel/Initializer/random_uniformAddQcontext_repr/bidirectional_rnn/bw/lstm_cell/kernel/Initializer/random_uniform/mulQcontext_repr/bidirectional_rnn/bw/lstm_cell/kernel/Initializer/random_uniform/min*
T0*E
_class;
97loc:@context_repr/bidirectional_rnn/bw/lstm_cell/kernel
�
2context_repr/bidirectional_rnn/bw/lstm_cell/kernel
VariableV2"/device:GPU:0*
shared_name *E
_class;
97loc:@context_repr/bidirectional_rnn/bw/lstm_cell/kernel*
dtype0*
	container *
shape:
��
�
9context_repr/bidirectional_rnn/bw/lstm_cell/kernel/AssignAssign2context_repr/bidirectional_rnn/bw/lstm_cell/kernelMcontext_repr/bidirectional_rnn/bw/lstm_cell/kernel/Initializer/random_uniform"/device:GPU:0*
T0*E
_class;
97loc:@context_repr/bidirectional_rnn/bw/lstm_cell/kernel*
validate_shape(*
use_locking(
�
7context_repr/bidirectional_rnn/bw/lstm_cell/kernel/readIdentity2context_repr/bidirectional_rnn/bw/lstm_cell/kernel"/device:GPU:0*
T0
�
Bcontext_repr/bidirectional_rnn/bw/lstm_cell/bias/Initializer/zerosConst*
valueB�*    *C
_class9
75loc:@context_repr/bidirectional_rnn/bw/lstm_cell/bias*
dtype0
�
0context_repr/bidirectional_rnn/bw/lstm_cell/bias
VariableV2"/device:GPU:0*
shape:�*
shared_name *C
_class9
75loc:@context_repr/bidirectional_rnn/bw/lstm_cell/bias*
dtype0*
	container 
�
7context_repr/bidirectional_rnn/bw/lstm_cell/bias/AssignAssign0context_repr/bidirectional_rnn/bw/lstm_cell/biasBcontext_repr/bidirectional_rnn/bw/lstm_cell/bias/Initializer/zeros"/device:GPU:0*
use_locking(*
T0*C
_class9
75loc:@context_repr/bidirectional_rnn/bw/lstm_cell/bias*
validate_shape(
�
5context_repr/bidirectional_rnn/bw/lstm_cell/bias/readIdentity0context_repr/bidirectional_rnn/bw/lstm_cell/bias"/device:GPU:0*
T0
�
@context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/concat/axisConst4^context_repr/bidirectional_rnn/bw/bw/while/Identity"/device:GPU:0*
value	B :*
dtype0
�
;context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/concatConcatV2<context_repr/bidirectional_rnn/bw/bw/while/TensorArrayReadV35context_repr/bidirectional_rnn/bw/bw/while/Identity_4@context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/concat/axis"/device:GPU:0*
T0*
N*

Tidx0
�
;context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/MatMulMatMul;context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/concatAcontext_repr/bidirectional_rnn/bw/bw/while/lstm_cell/MatMul/Enter"/device:GPU:0*
T0*
transpose_a( *
transpose_b( 
�
Acontext_repr/bidirectional_rnn/bw/bw/while/lstm_cell/MatMul/EnterEnter7context_repr/bidirectional_rnn/bw/lstm_cell/kernel/read"/device:GPU:0*
T0*
is_constant(*
parallel_iterations *H

frame_name:8context_repr/bidirectional_rnn/bw/bw/while/while_context
�
<context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/BiasAddBiasAdd;context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/MatMulBcontext_repr/bidirectional_rnn/bw/bw/while/lstm_cell/BiasAdd/Enter"/device:GPU:0*
T0*
data_formatNHWC
�
Bcontext_repr/bidirectional_rnn/bw/bw/while/lstm_cell/BiasAdd/EnterEnter5context_repr/bidirectional_rnn/bw/lstm_cell/bias/read"/device:GPU:0*
T0*
is_constant(*
parallel_iterations *H

frame_name:8context_repr/bidirectional_rnn/bw/bw/while/while_context
�
:context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/ConstConst4^context_repr/bidirectional_rnn/bw/bw/while/Identity"/device:GPU:0*
value	B :*
dtype0
�
Dcontext_repr/bidirectional_rnn/bw/bw/while/lstm_cell/split/split_dimConst4^context_repr/bidirectional_rnn/bw/bw/while/Identity"/device:GPU:0*
value	B :*
dtype0
�
:context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/splitSplitDcontext_repr/bidirectional_rnn/bw/bw/while/lstm_cell/split/split_dim<context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/BiasAdd"/device:GPU:0*
T0*
	num_split
�
:context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/add/yConst4^context_repr/bidirectional_rnn/bw/bw/while/Identity"/device:GPU:0*
valueB
 *  �?*
dtype0
�
8context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/addAdd<context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/split:2:context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/add/y"/device:GPU:0*
T0
�
<context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/SigmoidSigmoid8context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/add"/device:GPU:0*
T0
�
8context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mulMul<context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/Sigmoid5context_repr/bidirectional_rnn/bw/bw/while/Identity_3"/device:GPU:0*
T0
�
>context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/Sigmoid_1Sigmoid:context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/split"/device:GPU:0*
T0
�
9context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/TanhTanh<context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/split:1"/device:GPU:0*
T0
�
:context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_1Mul>context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/Sigmoid_19context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/Tanh"/device:GPU:0*
T0
�
:context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/add_1Add8context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul:context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_1"/device:GPU:0*
T0
�
>context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/Sigmoid_2Sigmoid<context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/split:3"/device:GPU:0*
T0
�
;context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/Tanh_1Tanh:context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/add_1"/device:GPU:0*
T0
�
:context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_2Mul>context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/Sigmoid_2;context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/Tanh_1"/device:GPU:0*
T0
�
1context_repr/bidirectional_rnn/bw/bw/while/SelectSelect7context_repr/bidirectional_rnn/bw/bw/while/GreaterEqual7context_repr/bidirectional_rnn/bw/bw/while/Select/Enter:context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_2"/device:GPU:0*
T0*M
_classC
A?loc:@context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_2
�
7context_repr/bidirectional_rnn/bw/bw/while/Select/EnterEnter*context_repr/bidirectional_rnn/bw/bw/zeros"/device:GPU:0*
T0*
is_constant(*M
_classC
A?loc:@context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_2*
parallel_iterations *H

frame_name:8context_repr/bidirectional_rnn/bw/bw/while/while_context
�
3context_repr/bidirectional_rnn/bw/bw/while/Select_1Select7context_repr/bidirectional_rnn/bw/bw/while/GreaterEqual5context_repr/bidirectional_rnn/bw/bw/while/Identity_3:context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/add_1"/device:GPU:0*
T0*M
_classC
A?loc:@context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/add_1
�
3context_repr/bidirectional_rnn/bw/bw/while/Select_2Select7context_repr/bidirectional_rnn/bw/bw/while/GreaterEqual5context_repr/bidirectional_rnn/bw/bw/while/Identity_4:context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_2"/device:GPU:0*
T0*M
_classC
A?loc:@context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_2
�
Ncontext_repr/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3TensorArrayWriteV3Tcontext_repr/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3/Enter5context_repr/bidirectional_rnn/bw/bw/while/Identity_11context_repr/bidirectional_rnn/bw/bw/while/Select5context_repr/bidirectional_rnn/bw/bw/while/Identity_2"/device:GPU:0*
T0*M
_classC
A?loc:@context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_2
�
Tcontext_repr/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3/EnterEnter0context_repr/bidirectional_rnn/bw/bw/TensorArray"/device:GPU:0*
T0*
is_constant(*M
_classC
A?loc:@context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_2*
parallel_iterations *H

frame_name:8context_repr/bidirectional_rnn/bw/bw/while/while_context
�
2context_repr/bidirectional_rnn/bw/bw/while/add_1/yConst4^context_repr/bidirectional_rnn/bw/bw/while/Identity"/device:GPU:0*
value	B :*
dtype0
�
0context_repr/bidirectional_rnn/bw/bw/while/add_1Add5context_repr/bidirectional_rnn/bw/bw/while/Identity_12context_repr/bidirectional_rnn/bw/bw/while/add_1/y"/device:GPU:0*
T0
�
8context_repr/bidirectional_rnn/bw/bw/while/NextIterationNextIteration.context_repr/bidirectional_rnn/bw/bw/while/add"/device:GPU:0*
T0
�
:context_repr/bidirectional_rnn/bw/bw/while/NextIteration_1NextIteration0context_repr/bidirectional_rnn/bw/bw/while/add_1"/device:GPU:0*
T0
�
:context_repr/bidirectional_rnn/bw/bw/while/NextIteration_2NextIterationNcontext_repr/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3"/device:GPU:0*
T0
�
:context_repr/bidirectional_rnn/bw/bw/while/NextIteration_3NextIteration3context_repr/bidirectional_rnn/bw/bw/while/Select_1"/device:GPU:0*
T0
�
:context_repr/bidirectional_rnn/bw/bw/while/NextIteration_4NextIteration3context_repr/bidirectional_rnn/bw/bw/while/Select_2"/device:GPU:0*
T0
�
/context_repr/bidirectional_rnn/bw/bw/while/ExitExit1context_repr/bidirectional_rnn/bw/bw/while/Switch"/device:GPU:0*
T0
�
1context_repr/bidirectional_rnn/bw/bw/while/Exit_1Exit3context_repr/bidirectional_rnn/bw/bw/while/Switch_1"/device:GPU:0*
T0
�
1context_repr/bidirectional_rnn/bw/bw/while/Exit_2Exit3context_repr/bidirectional_rnn/bw/bw/while/Switch_2"/device:GPU:0*
T0
�
1context_repr/bidirectional_rnn/bw/bw/while/Exit_3Exit3context_repr/bidirectional_rnn/bw/bw/while/Switch_3"/device:GPU:0*
T0
�
1context_repr/bidirectional_rnn/bw/bw/while/Exit_4Exit3context_repr/bidirectional_rnn/bw/bw/while/Switch_4"/device:GPU:0*
T0
�
Gcontext_repr/bidirectional_rnn/bw/bw/TensorArrayStack/TensorArraySizeV3TensorArraySizeV30context_repr/bidirectional_rnn/bw/bw/TensorArray1context_repr/bidirectional_rnn/bw/bw/while/Exit_2*C
_class9
75loc:@context_repr/bidirectional_rnn/bw/bw/TensorArray
�
Acontext_repr/bidirectional_rnn/bw/bw/TensorArrayStack/range/startConst*
value	B : *C
_class9
75loc:@context_repr/bidirectional_rnn/bw/bw/TensorArray*
dtype0
�
Acontext_repr/bidirectional_rnn/bw/bw/TensorArrayStack/range/deltaConst*
dtype0*
value	B :*C
_class9
75loc:@context_repr/bidirectional_rnn/bw/bw/TensorArray
�
;context_repr/bidirectional_rnn/bw/bw/TensorArrayStack/rangeRangeAcontext_repr/bidirectional_rnn/bw/bw/TensorArrayStack/range/startGcontext_repr/bidirectional_rnn/bw/bw/TensorArrayStack/TensorArraySizeV3Acontext_repr/bidirectional_rnn/bw/bw/TensorArrayStack/range/delta*

Tidx0*C
_class9
75loc:@context_repr/bidirectional_rnn/bw/bw/TensorArray
�
Icontext_repr/bidirectional_rnn/bw/bw/TensorArrayStack/TensorArrayGatherV3TensorArrayGatherV30context_repr/bidirectional_rnn/bw/bw/TensorArray;context_repr/bidirectional_rnn/bw/bw/TensorArrayStack/range1context_repr/bidirectional_rnn/bw/bw/while/Exit_2*%
element_shape:����������*C
_class9
75loc:@context_repr/bidirectional_rnn/bw/bw/TensorArray*
dtype0
j
,context_repr/bidirectional_rnn/bw/bw/Const_4Const"/device:GPU:0*
valueB:�*
dtype0
d
+context_repr/bidirectional_rnn/bw/bw/Rank_1Const"/device:GPU:0*
value	B :*
dtype0
k
2context_repr/bidirectional_rnn/bw/bw/range_1/startConst"/device:GPU:0*
value	B :*
dtype0
k
2context_repr/bidirectional_rnn/bw/bw/range_1/deltaConst"/device:GPU:0*
value	B :*
dtype0
�
,context_repr/bidirectional_rnn/bw/bw/range_1Range2context_repr/bidirectional_rnn/bw/bw/range_1/start+context_repr/bidirectional_rnn/bw/bw/Rank_12context_repr/bidirectional_rnn/bw/bw/range_1/delta"/device:GPU:0*

Tidx0
z
6context_repr/bidirectional_rnn/bw/bw/concat_2/values_0Const"/device:GPU:0*
dtype0*
valueB"       
k
2context_repr/bidirectional_rnn/bw/bw/concat_2/axisConst"/device:GPU:0*
value	B : *
dtype0
�
-context_repr/bidirectional_rnn/bw/bw/concat_2ConcatV26context_repr/bidirectional_rnn/bw/bw/concat_2/values_0,context_repr/bidirectional_rnn/bw/bw/range_12context_repr/bidirectional_rnn/bw/bw/concat_2/axis"/device:GPU:0*
T0*
N*

Tidx0
�
0context_repr/bidirectional_rnn/bw/bw/transpose_1	TransposeIcontext_repr/bidirectional_rnn/bw/bw/TensorArrayStack/TensorArrayGatherV3-context_repr/bidirectional_rnn/bw/bw/concat_2"/device:GPU:0*
T0*
Tperm0
�
context_repr/ReverseSequenceReverseSequence0context_repr/bidirectional_rnn/bw/bw/transpose_1word_repr/sentence_lengths"/device:GPU:0*
T0*
seq_dim*

Tlen0*
	batch_dim 
Z
context_repr/concat/axisConst"/device:GPU:0*
dtype0*
valueB :
���������
�
context_repr/concatConcatV20context_repr/bidirectional_rnn/fw/fw/transpose_1context_repr/ReverseSequencecontext_repr/concat/axis"/device:GPU:0*
N*

Tidx0*
T0
b
context_repr/dropout_1/ShapeShapecontext_repr/concat"/device:GPU:0*
T0*
out_type0
e
)context_repr/dropout_1/random_uniform/minConst"/device:GPU:0*
valueB
 *    *
dtype0
e
)context_repr/dropout_1/random_uniform/maxConst"/device:GPU:0*
valueB
 *  �?*
dtype0
�
3context_repr/dropout_1/random_uniform/RandomUniformRandomUniformcontext_repr/dropout_1/Shape"/device:GPU:0*
T0*
dtype0*
seed2 *

seed 
�
)context_repr/dropout_1/random_uniform/subSub)context_repr/dropout_1/random_uniform/max)context_repr/dropout_1/random_uniform/min"/device:GPU:0*
T0
�
)context_repr/dropout_1/random_uniform/mulMul3context_repr/dropout_1/random_uniform/RandomUniform)context_repr/dropout_1/random_uniform/sub"/device:GPU:0*
T0
�
%context_repr/dropout_1/random_uniformAdd)context_repr/dropout_1/random_uniform/mul)context_repr/dropout_1/random_uniform/min"/device:GPU:0*
T0
r
context_repr/dropout_1/addAddtraining/dropout%context_repr/dropout_1/random_uniform"/device:GPU:0*
T0
Y
context_repr/dropout_1/FloorFloorcontext_repr/dropout_1/add"/device:GPU:0*
T0
d
context_repr/dropout_1/divRealDivcontext_repr/concattraining/dropout"/device:GPU:0*
T0
s
context_repr/dropout_1/mulMulcontext_repr/dropout_1/divcontext_repr/dropout_1/Floor"/device:GPU:0*
T0
�
/context_repr/W/Initializer/random_uniform/shapeConst*
valueB"�  
   *!
_class
loc:@context_repr/W*
dtype0
}
-context_repr/W/Initializer/random_uniform/minConst*
valueB
 *����*!
_class
loc:@context_repr/W*
dtype0
}
-context_repr/W/Initializer/random_uniform/maxConst*
valueB
 *���=*!
_class
loc:@context_repr/W*
dtype0
�
7context_repr/W/Initializer/random_uniform/RandomUniformRandomUniform/context_repr/W/Initializer/random_uniform/shape*
dtype0*
seed2 *

seed *
T0*!
_class
loc:@context_repr/W
�
-context_repr/W/Initializer/random_uniform/subSub-context_repr/W/Initializer/random_uniform/max-context_repr/W/Initializer/random_uniform/min*
T0*!
_class
loc:@context_repr/W
�
-context_repr/W/Initializer/random_uniform/mulMul7context_repr/W/Initializer/random_uniform/RandomUniform-context_repr/W/Initializer/random_uniform/sub*
T0*!
_class
loc:@context_repr/W
�
)context_repr/W/Initializer/random_uniformAdd-context_repr/W/Initializer/random_uniform/mul-context_repr/W/Initializer/random_uniform/min*
T0*!
_class
loc:@context_repr/W
�
context_repr/W
VariableV2"/device:GPU:0*!
_class
loc:@context_repr/W*
dtype0*
	container *
shape:	�
*
shared_name 
�
context_repr/W/AssignAssigncontext_repr/W)context_repr/W/Initializer/random_uniform"/device:GPU:0*
use_locking(*
T0*!
_class
loc:@context_repr/W*
validate_shape(
j
context_repr/W/readIdentitycontext_repr/W"/device:GPU:0*
T0*!
_class
loc:@context_repr/W
�
/context_repr/b/Initializer/random_uniform/shapeConst*
dtype0*
valueB:
*!
_class
loc:@context_repr/b
}
-context_repr/b/Initializer/random_uniform/minConst*
valueB
 *�7�*!
_class
loc:@context_repr/b*
dtype0
}
-context_repr/b/Initializer/random_uniform/maxConst*
valueB
 *�7?*!
_class
loc:@context_repr/b*
dtype0
�
7context_repr/b/Initializer/random_uniform/RandomUniformRandomUniform/context_repr/b/Initializer/random_uniform/shape*
T0*!
_class
loc:@context_repr/b*
dtype0*
seed2 *

seed 
�
-context_repr/b/Initializer/random_uniform/subSub-context_repr/b/Initializer/random_uniform/max-context_repr/b/Initializer/random_uniform/min*
T0*!
_class
loc:@context_repr/b
�
-context_repr/b/Initializer/random_uniform/mulMul7context_repr/b/Initializer/random_uniform/RandomUniform-context_repr/b/Initializer/random_uniform/sub*
T0*!
_class
loc:@context_repr/b
�
)context_repr/b/Initializer/random_uniformAdd-context_repr/b/Initializer/random_uniform/mul-context_repr/b/Initializer/random_uniform/min*
T0*!
_class
loc:@context_repr/b
�
context_repr/b
VariableV2"/device:GPU:0*
shape:
*
shared_name *!
_class
loc:@context_repr/b*
dtype0*
	container 
�
context_repr/b/AssignAssigncontext_repr/b)context_repr/b/Initializer/random_uniform"/device:GPU:0*
use_locking(*
T0*!
_class
loc:@context_repr/b*
validate_shape(
j
context_repr/b/readIdentitycontext_repr/b"/device:GPU:0*
T0*!
_class
loc:@context_repr/b
_
context_repr/ShapeShapecontext_repr/dropout_1/mul"/device:GPU:0*
T0*
out_type0
]
 context_repr/strided_slice/stackConst"/device:GPU:0*
valueB:*
dtype0
_
"context_repr/strided_slice/stack_1Const"/device:GPU:0*
valueB:*
dtype0
_
"context_repr/strided_slice/stack_2Const"/device:GPU:0*
dtype0*
valueB:
�
context_repr/strided_sliceStridedSlicecontext_repr/Shape context_repr/strided_slice/stack"context_repr/strided_slice/stack_1"context_repr/strided_slice/stack_2"/device:GPU:0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
Index0*
T0
^
context_repr/Reshape/shapeConst"/device:GPU:0*
valueB"�����  *
dtype0
}
context_repr/ReshapeReshapecontext_repr/dropout_1/mulcontext_repr/Reshape/shape"/device:GPU:0*
T0*
Tshape0
�
context_repr/MatMulMatMulcontext_repr/Reshapecontext_repr/W/read"/device:GPU:0*
T0*
transpose_a( *
transpose_b( 
Y
context_repr/addAddcontext_repr/MatMulcontext_repr/b/read"/device:GPU:0*
T0
`
context_repr/Reshape_1/shape/0Const"/device:GPU:0*
valueB :
���������*
dtype0
W
context_repr/Reshape_1/shape/2Const"/device:GPU:0*
dtype0*
value	B :

�
context_repr/Reshape_1/shapePackcontext_repr/Reshape_1/shape/0context_repr/strided_slicecontext_repr/Reshape_1/shape/2"/device:GPU:0*
N*
T0*

axis 
w
context_repr/Reshape_1Reshapecontext_repr/addcontext_repr/Reshape_1/shape"/device:GPU:0*
T0*
Tshape0
O
context_repr/scoresIdentitycontext_repr/Reshape_1"/device:GPU:0*
T0
G
context_repr/predIdentitycontext_repr/add"/device:GPU:0*
T0
_
context_repr/ArgMax/dimensionConst"/device:GPU:0*
dtype0*
valueB :
���������
�
context_repr/ArgMaxArgMaxcontext_repr/Reshape_1context_repr/ArgMax/dimension"/device:GPU:0*
output_type0	*

Tidx0*
T0
V
context_repr/predicted_labelsIdentitycontext_repr/ArgMax"/device:GPU:0*
T0	
F
inference/crfConst"/device:GPU:0*
value	B
 Z *
dtype0

u
3inference/SparseSoftmaxCrossEntropyWithLogits/ShapeShapetraining/labels"/device:GPU:0*
T0*
out_type0
w
5inference/SparseSoftmaxCrossEntropyWithLogits/Shape_1Shapetraining/labels"/device:GPU:0*
T0*
out_type0
~
5inference/SparseSoftmaxCrossEntropyWithLogits/Shape_2Shapecontext_repr/Reshape_1"/device:GPU:0*
T0*
out_type0
~
Ainference/SparseSoftmaxCrossEntropyWithLogits/strided_slice/stackConst"/device:GPU:0*
valueB: *
dtype0
�
Cinference/SparseSoftmaxCrossEntropyWithLogits/strided_slice/stack_1Const"/device:GPU:0*
valueB:
���������*
dtype0
�
Cinference/SparseSoftmaxCrossEntropyWithLogits/strided_slice/stack_2Const"/device:GPU:0*
dtype0*
valueB:
�
;inference/SparseSoftmaxCrossEntropyWithLogits/strided_sliceStridedSlice5inference/SparseSoftmaxCrossEntropyWithLogits/Shape_2Ainference/SparseSoftmaxCrossEntropyWithLogits/strided_slice/stackCinference/SparseSoftmaxCrossEntropyWithLogits/strided_slice/stack_1Cinference/SparseSoftmaxCrossEntropyWithLogits/strided_slice/stack_2"/device:GPU:0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask *
Index0*
T0
�
@inference/SparseSoftmaxCrossEntropyWithLogits/assert_equal/EqualEqual5inference/SparseSoftmaxCrossEntropyWithLogits/Shape_1;inference/SparseSoftmaxCrossEntropyWithLogits/strided_slice"/device:GPU:0*
T0
}
@inference/SparseSoftmaxCrossEntropyWithLogits/assert_equal/ConstConst"/device:GPU:0*
dtype0*
valueB: 
�
>inference/SparseSoftmaxCrossEntropyWithLogits/assert_equal/AllAll@inference/SparseSoftmaxCrossEntropyWithLogits/assert_equal/Equal@inference/SparseSoftmaxCrossEntropyWithLogits/assert_equal/Const"/device:GPU:0*

Tidx0*
	keep_dims( 

Ginference/SparseSoftmaxCrossEntropyWithLogits/assert_equal/Assert/ConstConst"/device:GPU:0*
dtype0*
valueB B 
�
Iinference/SparseSoftmaxCrossEntropyWithLogits/assert_equal/Assert/Const_1Const"/device:GPU:0*<
value3B1 B+Condition x == y did not hold element-wise:*
dtype0
�
Iinference/SparseSoftmaxCrossEntropyWithLogits/assert_equal/Assert/Const_2Const"/device:GPU:0*O
valueFBD B>x (inference/SparseSoftmaxCrossEntropyWithLogits/Shape_1:0) = *
dtype0
�
Iinference/SparseSoftmaxCrossEntropyWithLogits/assert_equal/Assert/Const_3Const"/device:GPU:0*U
valueLBJ BDy (inference/SparseSoftmaxCrossEntropyWithLogits/strided_slice:0) = *
dtype0
�
Oinference/SparseSoftmaxCrossEntropyWithLogits/assert_equal/Assert/Assert/data_0Const"/device:GPU:0*
valueB B *
dtype0
�
Oinference/SparseSoftmaxCrossEntropyWithLogits/assert_equal/Assert/Assert/data_1Const"/device:GPU:0*<
value3B1 B+Condition x == y did not hold element-wise:*
dtype0
�
Oinference/SparseSoftmaxCrossEntropyWithLogits/assert_equal/Assert/Assert/data_2Const"/device:GPU:0*O
valueFBD B>x (inference/SparseSoftmaxCrossEntropyWithLogits/Shape_1:0) = *
dtype0
�
Oinference/SparseSoftmaxCrossEntropyWithLogits/assert_equal/Assert/Assert/data_4Const"/device:GPU:0*
dtype0*U
valueLBJ BDy (inference/SparseSoftmaxCrossEntropyWithLogits/strided_slice:0) = 
�
Hinference/SparseSoftmaxCrossEntropyWithLogits/assert_equal/Assert/AssertAssert>inference/SparseSoftmaxCrossEntropyWithLogits/assert_equal/AllOinference/SparseSoftmaxCrossEntropyWithLogits/assert_equal/Assert/Assert/data_0Oinference/SparseSoftmaxCrossEntropyWithLogits/assert_equal/Assert/Assert/data_1Oinference/SparseSoftmaxCrossEntropyWithLogits/assert_equal/Assert/Assert/data_25inference/SparseSoftmaxCrossEntropyWithLogits/Shape_1Oinference/SparseSoftmaxCrossEntropyWithLogits/assert_equal/Assert/Assert/data_4;inference/SparseSoftmaxCrossEntropyWithLogits/strided_slice"/device:GPU:0*
T

2*
	summarize
�
5inference/SparseSoftmaxCrossEntropyWithLogits/Shape_3Shapecontext_repr/Reshape_1I^inference/SparseSoftmaxCrossEntropyWithLogits/assert_equal/Assert/Assert"/device:GPU:0*
T0*
out_type0
�
2inference/SparseSoftmaxCrossEntropyWithLogits/RankConstI^inference/SparseSoftmaxCrossEntropyWithLogits/assert_equal/Assert/Assert"/device:GPU:0*
dtype0*
value	B :
�
3inference/SparseSoftmaxCrossEntropyWithLogits/sub/yConstI^inference/SparseSoftmaxCrossEntropyWithLogits/assert_equal/Assert/Assert"/device:GPU:0*
value	B :*
dtype0
�
1inference/SparseSoftmaxCrossEntropyWithLogits/subSub2inference/SparseSoftmaxCrossEntropyWithLogits/Rank3inference/SparseSoftmaxCrossEntropyWithLogits/sub/y"/device:GPU:0*
T0
�
3inference/SparseSoftmaxCrossEntropyWithLogits/add/yConstI^inference/SparseSoftmaxCrossEntropyWithLogits/assert_equal/Assert/Assert"/device:GPU:0*
value	B :*
dtype0
�
1inference/SparseSoftmaxCrossEntropyWithLogits/addAdd1inference/SparseSoftmaxCrossEntropyWithLogits/sub3inference/SparseSoftmaxCrossEntropyWithLogits/add/y"/device:GPU:0*
T0
�
Cinference/SparseSoftmaxCrossEntropyWithLogits/strided_slice_1/stackPack1inference/SparseSoftmaxCrossEntropyWithLogits/sub"/device:GPU:0*
T0*

axis *
N
�
Einference/SparseSoftmaxCrossEntropyWithLogits/strided_slice_1/stack_1Pack1inference/SparseSoftmaxCrossEntropyWithLogits/add"/device:GPU:0*
T0*

axis *
N
�
Einference/SparseSoftmaxCrossEntropyWithLogits/strided_slice_1/stack_2ConstI^inference/SparseSoftmaxCrossEntropyWithLogits/assert_equal/Assert/Assert"/device:GPU:0*
valueB:*
dtype0
�
=inference/SparseSoftmaxCrossEntropyWithLogits/strided_slice_1StridedSlice5inference/SparseSoftmaxCrossEntropyWithLogits/Shape_3Cinference/SparseSoftmaxCrossEntropyWithLogits/strided_slice_1/stackEinference/SparseSoftmaxCrossEntropyWithLogits/strided_slice_1/stack_1Einference/SparseSoftmaxCrossEntropyWithLogits/strided_slice_1/stack_2"/device:GPU:0*
Index0*
T0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask 
�
=inference/SparseSoftmaxCrossEntropyWithLogits/Reshape/shape/0ConstI^inference/SparseSoftmaxCrossEntropyWithLogits/assert_equal/Assert/Assert"/device:GPU:0*
valueB :
���������*
dtype0
�
;inference/SparseSoftmaxCrossEntropyWithLogits/Reshape/shapePack=inference/SparseSoftmaxCrossEntropyWithLogits/Reshape/shape/0=inference/SparseSoftmaxCrossEntropyWithLogits/strided_slice_1"/device:GPU:0*
T0*

axis *
N
�
5inference/SparseSoftmaxCrossEntropyWithLogits/ReshapeReshapecontext_repr/Reshape_1;inference/SparseSoftmaxCrossEntropyWithLogits/Reshape/shape"/device:GPU:0*
T0*
Tshape0
�
=inference/SparseSoftmaxCrossEntropyWithLogits/Reshape_1/shapeConstI^inference/SparseSoftmaxCrossEntropyWithLogits/assert_equal/Assert/Assert"/device:GPU:0*
dtype0*
valueB:
���������
�
7inference/SparseSoftmaxCrossEntropyWithLogits/Reshape_1Reshapetraining/labels=inference/SparseSoftmaxCrossEntropyWithLogits/Reshape_1/shape"/device:GPU:0*
T0*
Tshape0
�
Qinference/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogits5inference/SparseSoftmaxCrossEntropyWithLogits/Reshape7inference/SparseSoftmaxCrossEntropyWithLogits/Reshape_1"/device:GPU:0*
T0*
Tlabels0
�
7inference/SparseSoftmaxCrossEntropyWithLogits/Reshape_2ReshapeQinference/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits3inference/SparseSoftmaxCrossEntropyWithLogits/Shape"/device:GPU:0*
T0*
Tshape0
Y
inference/SequenceMask/ConstConst"/device:GPU:0*
valueB: *
dtype0
�
inference/SequenceMask/MaxMaxword_repr/sentence_lengthsinference/SequenceMask/Const"/device:GPU:0*

Tidx0*
	keep_dims( *
T0
W
inference/SequenceMask/Const_1Const"/device:GPU:0*
value	B : *
dtype0
W
inference/SequenceMask/Const_2Const"/device:GPU:0*
dtype0*
value	B :
�
inference/SequenceMask/RangeRangeinference/SequenceMask/Const_1inference/SequenceMask/Maxinference/SequenceMask/Const_2"/device:GPU:0*

Tidx0
g
%inference/SequenceMask/ExpandDims/dimConst"/device:GPU:0*
valueB :
���������*
dtype0
�
!inference/SequenceMask/ExpandDims
ExpandDimsword_repr/sentence_lengths%inference/SequenceMask/ExpandDims/dim"/device:GPU:0*

Tdim0*
T0
m
inference/SequenceMask/CastCast!inference/SequenceMask/ExpandDims"/device:GPU:0*

DstT0*

SrcT0
v
inference/SequenceMask/LessLessinference/SequenceMask/Rangeinference/SequenceMask/Cast"/device:GPU:0*
T0
�
inference/boolean_mask/ShapeShape7inference/SparseSoftmaxCrossEntropyWithLogits/Reshape_2"/device:GPU:0*
T0*
out_type0
g
*inference/boolean_mask/strided_slice/stackConst"/device:GPU:0*
valueB: *
dtype0
i
,inference/boolean_mask/strided_slice/stack_1Const"/device:GPU:0*
valueB:*
dtype0
i
,inference/boolean_mask/strided_slice/stack_2Const"/device:GPU:0*
valueB:*
dtype0
�
$inference/boolean_mask/strided_sliceStridedSliceinference/boolean_mask/Shape*inference/boolean_mask/strided_slice/stack,inference/boolean_mask/strided_slice/stack_1,inference/boolean_mask/strided_slice/stack_2"/device:GPU:0*
shrink_axis_mask *
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
Index0*
T0
j
-inference/boolean_mask/Prod/reduction_indicesConst"/device:GPU:0*
dtype0*
valueB: 
�
inference/boolean_mask/ProdProd$inference/boolean_mask/strided_slice-inference/boolean_mask/Prod/reduction_indices"/device:GPU:0*
T0*

Tidx0*
	keep_dims( 
�
inference/boolean_mask/Shape_1Shape7inference/SparseSoftmaxCrossEntropyWithLogits/Reshape_2"/device:GPU:0*
T0*
out_type0
i
,inference/boolean_mask/strided_slice_1/stackConst"/device:GPU:0*
valueB: *
dtype0
k
.inference/boolean_mask/strided_slice_1/stack_1Const"/device:GPU:0*
valueB: *
dtype0
k
.inference/boolean_mask/strided_slice_1/stack_2Const"/device:GPU:0*
valueB:*
dtype0
�
&inference/boolean_mask/strided_slice_1StridedSliceinference/boolean_mask/Shape_1,inference/boolean_mask/strided_slice_1/stack.inference/boolean_mask/strided_slice_1/stack_1.inference/boolean_mask/strided_slice_1/stack_2"/device:GPU:0*
Index0*
T0*
shrink_axis_mask *
ellipsis_mask *

begin_mask*
new_axis_mask *
end_mask 
�
inference/boolean_mask/Shape_2Shape7inference/SparseSoftmaxCrossEntropyWithLogits/Reshape_2"/device:GPU:0*
T0*
out_type0
i
,inference/boolean_mask/strided_slice_2/stackConst"/device:GPU:0*
valueB:*
dtype0
k
.inference/boolean_mask/strided_slice_2/stack_1Const"/device:GPU:0*
valueB: *
dtype0
k
.inference/boolean_mask/strided_slice_2/stack_2Const"/device:GPU:0*
valueB:*
dtype0
�
&inference/boolean_mask/strided_slice_2StridedSliceinference/boolean_mask/Shape_2,inference/boolean_mask/strided_slice_2/stack.inference/boolean_mask/strided_slice_2/stack_1.inference/boolean_mask/strided_slice_2/stack_2"/device:GPU:0*
shrink_axis_mask *
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask*
T0*
Index0
x
&inference/boolean_mask/concat/values_1Packinference/boolean_mask/Prod"/device:GPU:0*
N*
T0*

axis 
[
"inference/boolean_mask/concat/axisConst"/device:GPU:0*
dtype0*
value	B : 
�
inference/boolean_mask/concatConcatV2&inference/boolean_mask/strided_slice_1&inference/boolean_mask/concat/values_1&inference/boolean_mask/strided_slice_2"inference/boolean_mask/concat/axis"/device:GPU:0*
N*

Tidx0*
T0
�
inference/boolean_mask/ReshapeReshape7inference/SparseSoftmaxCrossEntropyWithLogits/Reshape_2inference/boolean_mask/concat"/device:GPU:0*
T0*
Tshape0
l
&inference/boolean_mask/Reshape_1/shapeConst"/device:GPU:0*
dtype0*
valueB:
���������
�
 inference/boolean_mask/Reshape_1Reshapeinference/SequenceMask/Less&inference/boolean_mask/Reshape_1/shape"/device:GPU:0*
T0
*
Tshape0
_
inference/boolean_mask/WhereWhere inference/boolean_mask/Reshape_1"/device:GPU:0*
T0

v
inference/boolean_mask/SqueezeSqueezeinference/boolean_mask/Where"/device:GPU:0*
T0	*
squeeze_dims

]
$inference/boolean_mask/GatherV2/axisConst"/device:GPU:0*
value	B : *
dtype0
�
inference/boolean_mask/GatherV2GatherV2inference/boolean_mask/Reshapeinference/boolean_mask/Squeeze$inference/boolean_mask/GatherV2/axis"/device:GPU:0*
Tparams0*
Taxis0*
Tindices0	
L
inference/ConstConst"/device:GPU:0*
valueB: *
dtype0
}
inference/MeanMeaninference/boolean_mask/GatherV2inference/Const"/device:GPU:0*

Tidx0*
	keep_dims( *
T0
B
inference/lossIdentityinference/Mean"/device:GPU:0*
T0
R
training_1/gradients/ShapeConst"/device:GPU:0*
valueB *
dtype0
Z
training_1/gradients/grad_ys_0Const"/device:GPU:0*
valueB
 *  �?*
dtype0
�
training_1/gradients/FillFilltraining_1/gradients/Shapetraining_1/gradients/grad_ys_0"/device:GPU:0*
T0*

index_type0
U
training_1/gradients/f_countConst"/device:GPU:0*
dtype0*
value	B : 
�
training_1/gradients/f_count_1Entertraining_1/gradients/f_count"/device:GPU:0*
T0*
is_constant( *
parallel_iterations *H

frame_name:8context_repr/bidirectional_rnn/fw/fw/while/while_context
�
training_1/gradients/MergeMergetraining_1/gradients/f_count_1"training_1/gradients/NextIteration"/device:GPU:0*
T0*
N
�
training_1/gradients/SwitchSwitchtraining_1/gradients/Merge3context_repr/bidirectional_rnn/fw/fw/while/LoopCond"/device:GPU:0*
T0
�
training_1/gradients/Add/yConst4^context_repr/bidirectional_rnn/fw/fw/while/Identity"/device:GPU:0*
value	B :*
dtype0
r
training_1/gradients/AddAddtraining_1/gradients/Switch:1training_1/gradients/Add/y"/device:GPU:0*
T0
�
"training_1/gradients/NextIterationNextIterationtraining_1/gradients/Adda^training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Select_1_grad/Select/StackPushV2e^training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Select_1_grad/zeros_like/StackPushV2e^training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Select_2_grad/zeros_like/StackPushV2�^training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPushV2k^training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/MatMul_grad/MatMul_1/StackPushV2w^training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/add_1_grad/BroadcastGradientArgs/StackPushV2y^training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/add_1_grad/BroadcastGradientArgs/StackPushV2_1u^training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/add_grad/BroadcastGradientArgs/StackPushV2i^training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/concat_grad/ShapeN/StackPushV2w^training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPushV2y^training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPushV2_1e^training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_1_grad/Mul/StackPushV2g^training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_1_grad/Mul_1/StackPushV2w^training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPushV2y^training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPushV2_1e^training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_2_grad/Mul/StackPushV2g^training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_2_grad/Mul_1/StackPushV2u^training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_grad/BroadcastGradientArgs/StackPushV2w^training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_grad/BroadcastGradientArgs/StackPushV2_1e^training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_grad/Mul_1/StackPushV2"/device:GPU:0*
T0
[
training_1/gradients/f_count_2Exittraining_1/gradients/Switch"/device:GPU:0*
T0
U
training_1/gradients/b_countConst"/device:GPU:0*
value	B :*
dtype0
�
training_1/gradients/b_count_1Entertraining_1/gradients/f_count_2"/device:GPU:0*
T0*
is_constant( *
parallel_iterations *]

frame_nameOMtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/while_context
�
training_1/gradients/Merge_1Mergetraining_1/gradients/b_count_1$training_1/gradients/NextIteration_1"/device:GPU:0*
T0*
N
�
!training_1/gradients/GreaterEqualGreaterEqualtraining_1/gradients/Merge_1'training_1/gradients/GreaterEqual/Enter"/device:GPU:0*
T0
�
'training_1/gradients/GreaterEqual/EnterEntertraining_1/gradients/b_count"/device:GPU:0*
T0*
is_constant(*
parallel_iterations *]

frame_nameOMtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/while_context
\
training_1/gradients/b_count_2LoopCond!training_1/gradients/GreaterEqual"/device:GPU:0
}
training_1/gradients/Switch_1Switchtraining_1/gradients/Merge_1training_1/gradients/b_count_2"/device:GPU:0*
T0
�
training_1/gradients/SubSubtraining_1/gradients/Switch_1:1'training_1/gradients/GreaterEqual/Enter"/device:GPU:0*
T0
�
$training_1/gradients/NextIteration_1NextIterationtraining_1/gradients/Sub�^training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/b_sync"/device:GPU:0*
T0
]
training_1/gradients/b_count_3Exittraining_1/gradients/Switch_1"/device:GPU:0*
T0
W
training_1/gradients/f_count_3Const"/device:GPU:0*
dtype0*
value	B : 
�
training_1/gradients/f_count_4Entertraining_1/gradients/f_count_3"/device:GPU:0*
T0*
is_constant( *
parallel_iterations *H

frame_name:8context_repr/bidirectional_rnn/bw/bw/while/while_context
�
training_1/gradients/Merge_2Mergetraining_1/gradients/f_count_4$training_1/gradients/NextIteration_2"/device:GPU:0*
T0*
N
�
training_1/gradients/Switch_2Switchtraining_1/gradients/Merge_23context_repr/bidirectional_rnn/bw/bw/while/LoopCond"/device:GPU:0*
T0
�
training_1/gradients/Add_1/yConst4^context_repr/bidirectional_rnn/bw/bw/while/Identity"/device:GPU:0*
value	B :*
dtype0
x
training_1/gradients/Add_1Addtraining_1/gradients/Switch_2:1training_1/gradients/Add_1/y"/device:GPU:0*
T0
�
$training_1/gradients/NextIteration_2NextIterationtraining_1/gradients/Add_1a^training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Select_1_grad/Select/StackPushV2e^training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Select_1_grad/zeros_like/StackPushV2e^training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Select_2_grad/zeros_like/StackPushV2�^training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPushV2k^training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/MatMul_grad/MatMul_1/StackPushV2w^training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/add_1_grad/BroadcastGradientArgs/StackPushV2y^training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/add_1_grad/BroadcastGradientArgs/StackPushV2_1u^training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/add_grad/BroadcastGradientArgs/StackPushV2i^training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/concat_grad/ShapeN/StackPushV2w^training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPushV2y^training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPushV2_1e^training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_1_grad/Mul/StackPushV2g^training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_1_grad/Mul_1/StackPushV2w^training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPushV2y^training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPushV2_1e^training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_2_grad/Mul/StackPushV2g^training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_2_grad/Mul_1/StackPushV2u^training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_grad/BroadcastGradientArgs/StackPushV2w^training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_grad/BroadcastGradientArgs/StackPushV2_1e^training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_grad/Mul_1/StackPushV2"/device:GPU:0*
T0
]
training_1/gradients/f_count_5Exittraining_1/gradients/Switch_2"/device:GPU:0*
T0
W
training_1/gradients/b_count_4Const"/device:GPU:0*
value	B :*
dtype0
�
training_1/gradients/b_count_5Entertraining_1/gradients/f_count_5"/device:GPU:0*
T0*
is_constant( *
parallel_iterations *]

frame_nameOMtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/while_context
�
training_1/gradients/Merge_3Mergetraining_1/gradients/b_count_5$training_1/gradients/NextIteration_3"/device:GPU:0*
N*
T0
�
#training_1/gradients/GreaterEqual_1GreaterEqualtraining_1/gradients/Merge_3)training_1/gradients/GreaterEqual_1/Enter"/device:GPU:0*
T0
�
)training_1/gradients/GreaterEqual_1/EnterEntertraining_1/gradients/b_count_4"/device:GPU:0*
T0*
is_constant(*
parallel_iterations *]

frame_nameOMtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/while_context
^
training_1/gradients/b_count_6LoopCond#training_1/gradients/GreaterEqual_1"/device:GPU:0
}
training_1/gradients/Switch_3Switchtraining_1/gradients/Merge_3training_1/gradients/b_count_6"/device:GPU:0*
T0
�
training_1/gradients/Sub_1Subtraining_1/gradients/Switch_3:1)training_1/gradients/GreaterEqual_1/Enter"/device:GPU:0*
T0
�
$training_1/gradients/NextIteration_3NextIterationtraining_1/gradients/Sub_1�^training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/b_sync"/device:GPU:0*
T0
]
training_1/gradients/b_count_7Exittraining_1/gradients/Switch_3"/device:GPU:0*
T0
s
6training_1/gradients/inference/Mean_grad/Reshape/shapeConst"/device:GPU:0*
dtype0*
valueB:
�
0training_1/gradients/inference/Mean_grad/ReshapeReshapetraining_1/gradients/Fill6training_1/gradients/inference/Mean_grad/Reshape/shape"/device:GPU:0*
T0*
Tshape0
�
.training_1/gradients/inference/Mean_grad/ShapeShapeinference/boolean_mask/GatherV2"/device:GPU:0*
T0*
out_type0
�
-training_1/gradients/inference/Mean_grad/TileTile0training_1/gradients/inference/Mean_grad/Reshape.training_1/gradients/inference/Mean_grad/Shape"/device:GPU:0*
T0*

Tmultiples0
�
0training_1/gradients/inference/Mean_grad/Shape_1Shapeinference/boolean_mask/GatherV2"/device:GPU:0*
T0*
out_type0
h
0training_1/gradients/inference/Mean_grad/Shape_2Const"/device:GPU:0*
dtype0*
valueB 
k
.training_1/gradients/inference/Mean_grad/ConstConst"/device:GPU:0*
valueB: *
dtype0
�
-training_1/gradients/inference/Mean_grad/ProdProd0training_1/gradients/inference/Mean_grad/Shape_1.training_1/gradients/inference/Mean_grad/Const"/device:GPU:0*

Tidx0*
	keep_dims( *
T0
m
0training_1/gradients/inference/Mean_grad/Const_1Const"/device:GPU:0*
dtype0*
valueB: 
�
/training_1/gradients/inference/Mean_grad/Prod_1Prod0training_1/gradients/inference/Mean_grad/Shape_20training_1/gradients/inference/Mean_grad/Const_1"/device:GPU:0*

Tidx0*
	keep_dims( *
T0
k
2training_1/gradients/inference/Mean_grad/Maximum/yConst"/device:GPU:0*
value	B :*
dtype0
�
0training_1/gradients/inference/Mean_grad/MaximumMaximum/training_1/gradients/inference/Mean_grad/Prod_12training_1/gradients/inference/Mean_grad/Maximum/y"/device:GPU:0*
T0
�
1training_1/gradients/inference/Mean_grad/floordivFloorDiv-training_1/gradients/inference/Mean_grad/Prod0training_1/gradients/inference/Mean_grad/Maximum"/device:GPU:0*
T0
�
-training_1/gradients/inference/Mean_grad/CastCast1training_1/gradients/inference/Mean_grad/floordiv"/device:GPU:0*

SrcT0*

DstT0
�
0training_1/gradients/inference/Mean_grad/truedivRealDiv-training_1/gradients/inference/Mean_grad/Tile-training_1/gradients/inference/Mean_grad/Cast"/device:GPU:0*
T0
�
?training_1/gradients/inference/boolean_mask/GatherV2_grad/ShapeShapeinference/boolean_mask/Reshape"/device:GPU:0*
T0*
out_type0	*1
_class'
%#loc:@inference/boolean_mask/Reshape
�
Atraining_1/gradients/inference/boolean_mask/GatherV2_grad/ToInt32Cast?training_1/gradients/inference/boolean_mask/GatherV2_grad/Shape"/device:GPU:0*

SrcT0	*1
_class'
%#loc:@inference/boolean_mask/Reshape*

DstT0
�
>training_1/gradients/inference/boolean_mask/GatherV2_grad/SizeSizeinference/boolean_mask/Squeeze"/device:GPU:0*
T0	*
out_type0
�
Htraining_1/gradients/inference/boolean_mask/GatherV2_grad/ExpandDims/dimConst"/device:GPU:0*
value	B : *
dtype0
�
Dtraining_1/gradients/inference/boolean_mask/GatherV2_grad/ExpandDims
ExpandDims>training_1/gradients/inference/boolean_mask/GatherV2_grad/SizeHtraining_1/gradients/inference/boolean_mask/GatherV2_grad/ExpandDims/dim"/device:GPU:0*

Tdim0*
T0
�
Mtraining_1/gradients/inference/boolean_mask/GatherV2_grad/strided_slice/stackConst"/device:GPU:0*
valueB:*
dtype0
�
Otraining_1/gradients/inference/boolean_mask/GatherV2_grad/strided_slice/stack_1Const"/device:GPU:0*
dtype0*
valueB: 
�
Otraining_1/gradients/inference/boolean_mask/GatherV2_grad/strided_slice/stack_2Const"/device:GPU:0*
valueB:*
dtype0
�
Gtraining_1/gradients/inference/boolean_mask/GatherV2_grad/strided_sliceStridedSliceAtraining_1/gradients/inference/boolean_mask/GatherV2_grad/ToInt32Mtraining_1/gradients/inference/boolean_mask/GatherV2_grad/strided_slice/stackOtraining_1/gradients/inference/boolean_mask/GatherV2_grad/strided_slice/stack_1Otraining_1/gradients/inference/boolean_mask/GatherV2_grad/strided_slice/stack_2"/device:GPU:0*
end_mask*
T0*
Index0*
shrink_axis_mask *
ellipsis_mask *

begin_mask *
new_axis_mask 
~
Etraining_1/gradients/inference/boolean_mask/GatherV2_grad/concat/axisConst"/device:GPU:0*
value	B : *
dtype0
�
@training_1/gradients/inference/boolean_mask/GatherV2_grad/concatConcatV2Dtraining_1/gradients/inference/boolean_mask/GatherV2_grad/ExpandDimsGtraining_1/gradients/inference/boolean_mask/GatherV2_grad/strided_sliceEtraining_1/gradients/inference/boolean_mask/GatherV2_grad/concat/axis"/device:GPU:0*

Tidx0*
T0*
N
�
Atraining_1/gradients/inference/boolean_mask/GatherV2_grad/ReshapeReshape0training_1/gradients/inference/Mean_grad/truediv@training_1/gradients/inference/boolean_mask/GatherV2_grad/concat"/device:GPU:0*
T0*
Tshape0
�
Ctraining_1/gradients/inference/boolean_mask/GatherV2_grad/Reshape_1Reshapeinference/boolean_mask/SqueezeDtraining_1/gradients/inference/boolean_mask/GatherV2_grad/ExpandDims"/device:GPU:0*
T0	*
Tshape0
�
>training_1/gradients/inference/boolean_mask/Reshape_grad/ShapeShape7inference/SparseSoftmaxCrossEntropyWithLogits/Reshape_2"/device:GPU:0*
T0*
out_type0
�
Ttraining_1/gradients/inference/boolean_mask/Reshape_grad/Reshape/strided_slice/stackConst"/device:GPU:0*
valueB: *
dtype0
�
Vtraining_1/gradients/inference/boolean_mask/Reshape_grad/Reshape/strided_slice/stack_1Const"/device:GPU:0*
valueB:*
dtype0
�
Vtraining_1/gradients/inference/boolean_mask/Reshape_grad/Reshape/strided_slice/stack_2Const"/device:GPU:0*
valueB:*
dtype0
�
Ntraining_1/gradients/inference/boolean_mask/Reshape_grad/Reshape/strided_sliceStridedSliceAtraining_1/gradients/inference/boolean_mask/GatherV2_grad/ToInt32Ttraining_1/gradients/inference/boolean_mask/Reshape_grad/Reshape/strided_slice/stackVtraining_1/gradients/inference/boolean_mask/Reshape_grad/Reshape/strided_slice/stack_1Vtraining_1/gradients/inference/boolean_mask/Reshape_grad/Reshape/strided_slice/stack_2"/device:GPU:0*
end_mask *
Index0*
T0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask 
�
Gtraining_1/gradients/inference/boolean_mask/Reshape_grad/Reshape/tensorUnsortedSegmentSumAtraining_1/gradients/inference/boolean_mask/GatherV2_grad/ReshapeCtraining_1/gradients/inference/boolean_mask/GatherV2_grad/Reshape_1Ntraining_1/gradients/inference/boolean_mask/Reshape_grad/Reshape/strided_slice"/device:GPU:0*
Tnumsegments0*
Tindices0	*
T0
�
@training_1/gradients/inference/boolean_mask/Reshape_grad/ReshapeReshapeGtraining_1/gradients/inference/boolean_mask/Reshape_grad/Reshape/tensor>training_1/gradients/inference/boolean_mask/Reshape_grad/Shape"/device:GPU:0*
T0*
Tshape0
�
Wtraining_1/gradients/inference/SparseSoftmaxCrossEntropyWithLogits/Reshape_2_grad/ShapeShapeQinference/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits"/device:GPU:0*
T0*
out_type0
�
Ytraining_1/gradients/inference/SparseSoftmaxCrossEntropyWithLogits/Reshape_2_grad/ReshapeReshape@training_1/gradients/inference/boolean_mask/Reshape_grad/ReshapeWtraining_1/gradients/inference/SparseSoftmaxCrossEntropyWithLogits/Reshape_2_grad/Shape"/device:GPU:0*
T0*
Tshape0
�
training_1/gradients/zeros_like	ZerosLikeSinference/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1"/device:GPU:0*
T0
�
{training_1/gradients/inference/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientSinference/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1"/device:GPU:0*
T0*�
message��Currently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()
�
ztraining_1/gradients/inference/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst"/device:GPU:0*
dtype0*
valueB :
���������
�
vtraining_1/gradients/inference/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDimsYtraining_1/gradients/inference/SparseSoftmaxCrossEntropyWithLogits/Reshape_2_grad/Reshapeztraining_1/gradients/inference/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim"/device:GPU:0*
T0*

Tdim0
�
otraining_1/gradients/inference/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mulMulvtraining_1/gradients/inference/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims{training_1/gradients/inference/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient"/device:GPU:0*
T0
�
Utraining_1/gradients/inference/SparseSoftmaxCrossEntropyWithLogits/Reshape_grad/ShapeShapecontext_repr/Reshape_1"/device:GPU:0*
T0*
out_type0
�
Wtraining_1/gradients/inference/SparseSoftmaxCrossEntropyWithLogits/Reshape_grad/ReshapeReshapeotraining_1/gradients/inference/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mulUtraining_1/gradients/inference/SparseSoftmaxCrossEntropyWithLogits/Reshape_grad/Shape"/device:GPU:0*
T0*
Tshape0
y
6training_1/gradients/context_repr/Reshape_1_grad/ShapeShapecontext_repr/add"/device:GPU:0*
T0*
out_type0
�
8training_1/gradients/context_repr/Reshape_1_grad/ReshapeReshapeWtraining_1/gradients/inference/SparseSoftmaxCrossEntropyWithLogits/Reshape_grad/Reshape6training_1/gradients/context_repr/Reshape_1_grad/Shape"/device:GPU:0*
T0*
Tshape0
v
0training_1/gradients/context_repr/add_grad/ShapeShapecontext_repr/MatMul"/device:GPU:0*
T0*
out_type0
o
2training_1/gradients/context_repr/add_grad/Shape_1Const"/device:GPU:0*
dtype0*
valueB:

�
@training_1/gradients/context_repr/add_grad/BroadcastGradientArgsBroadcastGradientArgs0training_1/gradients/context_repr/add_grad/Shape2training_1/gradients/context_repr/add_grad/Shape_1"/device:GPU:0*
T0
�
.training_1/gradients/context_repr/add_grad/SumSum8training_1/gradients/context_repr/Reshape_1_grad/Reshape@training_1/gradients/context_repr/add_grad/BroadcastGradientArgs"/device:GPU:0*
T0*

Tidx0*
	keep_dims( 
�
2training_1/gradients/context_repr/add_grad/ReshapeReshape.training_1/gradients/context_repr/add_grad/Sum0training_1/gradients/context_repr/add_grad/Shape"/device:GPU:0*
T0*
Tshape0
�
0training_1/gradients/context_repr/add_grad/Sum_1Sum8training_1/gradients/context_repr/Reshape_1_grad/ReshapeBtraining_1/gradients/context_repr/add_grad/BroadcastGradientArgs:1"/device:GPU:0*
T0*

Tidx0*
	keep_dims( 
�
4training_1/gradients/context_repr/add_grad/Reshape_1Reshape0training_1/gradients/context_repr/add_grad/Sum_12training_1/gradients/context_repr/add_grad/Shape_1"/device:GPU:0*
T0*
Tshape0
�
;training_1/gradients/context_repr/add_grad/tuple/group_depsNoOp3^training_1/gradients/context_repr/add_grad/Reshape5^training_1/gradients/context_repr/add_grad/Reshape_1"/device:GPU:0
�
Ctraining_1/gradients/context_repr/add_grad/tuple/control_dependencyIdentity2training_1/gradients/context_repr/add_grad/Reshape<^training_1/gradients/context_repr/add_grad/tuple/group_deps"/device:GPU:0*
T0*E
_class;
97loc:@training_1/gradients/context_repr/add_grad/Reshape
�
Etraining_1/gradients/context_repr/add_grad/tuple/control_dependency_1Identity4training_1/gradients/context_repr/add_grad/Reshape_1<^training_1/gradients/context_repr/add_grad/tuple/group_deps"/device:GPU:0*
T0*G
_class=
;9loc:@training_1/gradients/context_repr/add_grad/Reshape_1
�
4training_1/gradients/context_repr/MatMul_grad/MatMulMatMulCtraining_1/gradients/context_repr/add_grad/tuple/control_dependencycontext_repr/W/read"/device:GPU:0*
transpose_a( *
transpose_b(*
T0
�
6training_1/gradients/context_repr/MatMul_grad/MatMul_1MatMulcontext_repr/ReshapeCtraining_1/gradients/context_repr/add_grad/tuple/control_dependency"/device:GPU:0*
T0*
transpose_a(*
transpose_b( 
�
>training_1/gradients/context_repr/MatMul_grad/tuple/group_depsNoOp5^training_1/gradients/context_repr/MatMul_grad/MatMul7^training_1/gradients/context_repr/MatMul_grad/MatMul_1"/device:GPU:0
�
Ftraining_1/gradients/context_repr/MatMul_grad/tuple/control_dependencyIdentity4training_1/gradients/context_repr/MatMul_grad/MatMul?^training_1/gradients/context_repr/MatMul_grad/tuple/group_deps"/device:GPU:0*
T0*G
_class=
;9loc:@training_1/gradients/context_repr/MatMul_grad/MatMul
�
Htraining_1/gradients/context_repr/MatMul_grad/tuple/control_dependency_1Identity6training_1/gradients/context_repr/MatMul_grad/MatMul_1?^training_1/gradients/context_repr/MatMul_grad/tuple/group_deps"/device:GPU:0*
T0*I
_class?
=;loc:@training_1/gradients/context_repr/MatMul_grad/MatMul_1
�
4training_1/gradients/context_repr/Reshape_grad/ShapeShapecontext_repr/dropout_1/mul"/device:GPU:0*
T0*
out_type0
�
6training_1/gradients/context_repr/Reshape_grad/ReshapeReshapeFtraining_1/gradients/context_repr/MatMul_grad/tuple/control_dependency4training_1/gradients/context_repr/Reshape_grad/Shape"/device:GPU:0*
T0*
Tshape0
�
:training_1/gradients/context_repr/dropout_1/mul_grad/ShapeShapecontext_repr/dropout_1/div"/device:GPU:0*
T0*
out_type0
�
<training_1/gradients/context_repr/dropout_1/mul_grad/Shape_1Shapecontext_repr/dropout_1/Floor"/device:GPU:0*
T0*
out_type0
�
Jtraining_1/gradients/context_repr/dropout_1/mul_grad/BroadcastGradientArgsBroadcastGradientArgs:training_1/gradients/context_repr/dropout_1/mul_grad/Shape<training_1/gradients/context_repr/dropout_1/mul_grad/Shape_1"/device:GPU:0*
T0
�
8training_1/gradients/context_repr/dropout_1/mul_grad/MulMul6training_1/gradients/context_repr/Reshape_grad/Reshapecontext_repr/dropout_1/Floor"/device:GPU:0*
T0
�
8training_1/gradients/context_repr/dropout_1/mul_grad/SumSum8training_1/gradients/context_repr/dropout_1/mul_grad/MulJtraining_1/gradients/context_repr/dropout_1/mul_grad/BroadcastGradientArgs"/device:GPU:0*

Tidx0*
	keep_dims( *
T0
�
<training_1/gradients/context_repr/dropout_1/mul_grad/ReshapeReshape8training_1/gradients/context_repr/dropout_1/mul_grad/Sum:training_1/gradients/context_repr/dropout_1/mul_grad/Shape"/device:GPU:0*
T0*
Tshape0
�
:training_1/gradients/context_repr/dropout_1/mul_grad/Mul_1Mulcontext_repr/dropout_1/div6training_1/gradients/context_repr/Reshape_grad/Reshape"/device:GPU:0*
T0
�
:training_1/gradients/context_repr/dropout_1/mul_grad/Sum_1Sum:training_1/gradients/context_repr/dropout_1/mul_grad/Mul_1Ltraining_1/gradients/context_repr/dropout_1/mul_grad/BroadcastGradientArgs:1"/device:GPU:0*
T0*

Tidx0*
	keep_dims( 
�
>training_1/gradients/context_repr/dropout_1/mul_grad/Reshape_1Reshape:training_1/gradients/context_repr/dropout_1/mul_grad/Sum_1<training_1/gradients/context_repr/dropout_1/mul_grad/Shape_1"/device:GPU:0*
T0*
Tshape0
�
Etraining_1/gradients/context_repr/dropout_1/mul_grad/tuple/group_depsNoOp=^training_1/gradients/context_repr/dropout_1/mul_grad/Reshape?^training_1/gradients/context_repr/dropout_1/mul_grad/Reshape_1"/device:GPU:0
�
Mtraining_1/gradients/context_repr/dropout_1/mul_grad/tuple/control_dependencyIdentity<training_1/gradients/context_repr/dropout_1/mul_grad/ReshapeF^training_1/gradients/context_repr/dropout_1/mul_grad/tuple/group_deps"/device:GPU:0*
T0*O
_classE
CAloc:@training_1/gradients/context_repr/dropout_1/mul_grad/Reshape
�
Otraining_1/gradients/context_repr/dropout_1/mul_grad/tuple/control_dependency_1Identity>training_1/gradients/context_repr/dropout_1/mul_grad/Reshape_1F^training_1/gradients/context_repr/dropout_1/mul_grad/tuple/group_deps"/device:GPU:0*
T0*Q
_classG
ECloc:@training_1/gradients/context_repr/dropout_1/mul_grad/Reshape_1
�
:training_1/gradients/context_repr/dropout_1/div_grad/ShapeShapecontext_repr/concat"/device:GPU:0*
T0*
out_type0
t
<training_1/gradients/context_repr/dropout_1/div_grad/Shape_1Const"/device:GPU:0*
valueB *
dtype0
�
Jtraining_1/gradients/context_repr/dropout_1/div_grad/BroadcastGradientArgsBroadcastGradientArgs:training_1/gradients/context_repr/dropout_1/div_grad/Shape<training_1/gradients/context_repr/dropout_1/div_grad/Shape_1"/device:GPU:0*
T0
�
<training_1/gradients/context_repr/dropout_1/div_grad/RealDivRealDivMtraining_1/gradients/context_repr/dropout_1/mul_grad/tuple/control_dependencytraining/dropout"/device:GPU:0*
T0
�
8training_1/gradients/context_repr/dropout_1/div_grad/SumSum<training_1/gradients/context_repr/dropout_1/div_grad/RealDivJtraining_1/gradients/context_repr/dropout_1/div_grad/BroadcastGradientArgs"/device:GPU:0*

Tidx0*
	keep_dims( *
T0
�
<training_1/gradients/context_repr/dropout_1/div_grad/ReshapeReshape8training_1/gradients/context_repr/dropout_1/div_grad/Sum:training_1/gradients/context_repr/dropout_1/div_grad/Shape"/device:GPU:0*
T0*
Tshape0
l
8training_1/gradients/context_repr/dropout_1/div_grad/NegNegcontext_repr/concat"/device:GPU:0*
T0
�
>training_1/gradients/context_repr/dropout_1/div_grad/RealDiv_1RealDiv8training_1/gradients/context_repr/dropout_1/div_grad/Negtraining/dropout"/device:GPU:0*
T0
�
>training_1/gradients/context_repr/dropout_1/div_grad/RealDiv_2RealDiv>training_1/gradients/context_repr/dropout_1/div_grad/RealDiv_1training/dropout"/device:GPU:0*
T0
�
8training_1/gradients/context_repr/dropout_1/div_grad/mulMulMtraining_1/gradients/context_repr/dropout_1/mul_grad/tuple/control_dependency>training_1/gradients/context_repr/dropout_1/div_grad/RealDiv_2"/device:GPU:0*
T0
�
:training_1/gradients/context_repr/dropout_1/div_grad/Sum_1Sum8training_1/gradients/context_repr/dropout_1/div_grad/mulLtraining_1/gradients/context_repr/dropout_1/div_grad/BroadcastGradientArgs:1"/device:GPU:0*

Tidx0*
	keep_dims( *
T0
�
>training_1/gradients/context_repr/dropout_1/div_grad/Reshape_1Reshape:training_1/gradients/context_repr/dropout_1/div_grad/Sum_1<training_1/gradients/context_repr/dropout_1/div_grad/Shape_1"/device:GPU:0*
T0*
Tshape0
�
Etraining_1/gradients/context_repr/dropout_1/div_grad/tuple/group_depsNoOp=^training_1/gradients/context_repr/dropout_1/div_grad/Reshape?^training_1/gradients/context_repr/dropout_1/div_grad/Reshape_1"/device:GPU:0
�
Mtraining_1/gradients/context_repr/dropout_1/div_grad/tuple/control_dependencyIdentity<training_1/gradients/context_repr/dropout_1/div_grad/ReshapeF^training_1/gradients/context_repr/dropout_1/div_grad/tuple/group_deps"/device:GPU:0*
T0*O
_classE
CAloc:@training_1/gradients/context_repr/dropout_1/div_grad/Reshape
�
Otraining_1/gradients/context_repr/dropout_1/div_grad/tuple/control_dependency_1Identity>training_1/gradients/context_repr/dropout_1/div_grad/Reshape_1F^training_1/gradients/context_repr/dropout_1/div_grad/tuple/group_deps"/device:GPU:0*
T0*Q
_classG
ECloc:@training_1/gradients/context_repr/dropout_1/div_grad/Reshape_1
k
2training_1/gradients/context_repr/concat_grad/RankConst"/device:GPU:0*
value	B :*
dtype0
�
1training_1/gradients/context_repr/concat_grad/modFloorModcontext_repr/concat/axis2training_1/gradients/context_repr/concat_grad/Rank"/device:GPU:0*
T0
�
3training_1/gradients/context_repr/concat_grad/ShapeShape0context_repr/bidirectional_rnn/fw/fw/transpose_1"/device:GPU:0*
T0*
out_type0
�
4training_1/gradients/context_repr/concat_grad/ShapeNShapeN0context_repr/bidirectional_rnn/fw/fw/transpose_1context_repr/ReverseSequence"/device:GPU:0*
N*
T0*
out_type0
�
:training_1/gradients/context_repr/concat_grad/ConcatOffsetConcatOffset1training_1/gradients/context_repr/concat_grad/mod4training_1/gradients/context_repr/concat_grad/ShapeN6training_1/gradients/context_repr/concat_grad/ShapeN:1"/device:GPU:0*
N
�
3training_1/gradients/context_repr/concat_grad/SliceSliceMtraining_1/gradients/context_repr/dropout_1/div_grad/tuple/control_dependency:training_1/gradients/context_repr/concat_grad/ConcatOffset4training_1/gradients/context_repr/concat_grad/ShapeN"/device:GPU:0*
T0*
Index0
�
5training_1/gradients/context_repr/concat_grad/Slice_1SliceMtraining_1/gradients/context_repr/dropout_1/div_grad/tuple/control_dependency<training_1/gradients/context_repr/concat_grad/ConcatOffset:16training_1/gradients/context_repr/concat_grad/ShapeN:1"/device:GPU:0*
T0*
Index0
�
>training_1/gradients/context_repr/concat_grad/tuple/group_depsNoOp4^training_1/gradients/context_repr/concat_grad/Slice6^training_1/gradients/context_repr/concat_grad/Slice_1"/device:GPU:0
�
Ftraining_1/gradients/context_repr/concat_grad/tuple/control_dependencyIdentity3training_1/gradients/context_repr/concat_grad/Slice?^training_1/gradients/context_repr/concat_grad/tuple/group_deps"/device:GPU:0*
T0*F
_class<
:8loc:@training_1/gradients/context_repr/concat_grad/Slice
�
Htraining_1/gradients/context_repr/concat_grad/tuple/control_dependency_1Identity5training_1/gradients/context_repr/concat_grad/Slice_1?^training_1/gradients/context_repr/concat_grad/tuple/group_deps"/device:GPU:0*
T0*H
_class>
<:loc:@training_1/gradients/context_repr/concat_grad/Slice_1
�
\training_1/gradients/context_repr/bidirectional_rnn/fw/fw/transpose_1_grad/InvertPermutationInvertPermutation-context_repr/bidirectional_rnn/fw/fw/concat_2"/device:GPU:0*
T0
�
Ttraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/transpose_1_grad/transpose	TransposeFtraining_1/gradients/context_repr/concat_grad/tuple/control_dependency\training_1/gradients/context_repr/bidirectional_rnn/fw/fw/transpose_1_grad/InvertPermutation"/device:GPU:0*
T0*
Tperm0
�
Ftraining_1/gradients/context_repr/ReverseSequence_grad/ReverseSequenceReverseSequenceHtraining_1/gradients/context_repr/concat_grad/tuple/control_dependency_1word_repr/sentence_lengths"/device:GPU:0*
T0*
seq_dim*

Tlen0*
	batch_dim 
�
�training_1/gradients/context_repr/bidirectional_rnn/fw/fw/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayGrad/TensorArrayGradV3TensorArrayGradV30context_repr/bidirectional_rnn/fw/fw/TensorArray1context_repr/bidirectional_rnn/fw/fw/while/Exit_2* 
sourcetraining_1/gradients*C
_class9
75loc:@context_repr/bidirectional_rnn/fw/fw/TensorArray
�
�training_1/gradients/context_repr/bidirectional_rnn/fw/fw/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayGrad/gradient_flowIdentity1context_repr/bidirectional_rnn/fw/fw/while/Exit_2�^training_1/gradients/context_repr/bidirectional_rnn/fw/fw/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayGrad/TensorArrayGradV3*
T0*C
_class9
75loc:@context_repr/bidirectional_rnn/fw/fw/TensorArray
�
�training_1/gradients/context_repr/bidirectional_rnn/fw/fw/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayScatter/TensorArrayScatterV3TensorArrayScatterV3�training_1/gradients/context_repr/bidirectional_rnn/fw/fw/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayGrad/TensorArrayGradV3;context_repr/bidirectional_rnn/fw/fw/TensorArrayStack/rangeTtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/transpose_1_grad/transpose�training_1/gradients/context_repr/bidirectional_rnn/fw/fw/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayGrad/gradient_flow"/device:GPU:0*
T0
y
!training_1/gradients/zeros_like_1	ZerosLike1context_repr/bidirectional_rnn/fw/fw/while/Exit_3"/device:GPU:0*
T0
y
!training_1/gradients/zeros_like_2	ZerosLike1context_repr/bidirectional_rnn/fw/fw/while/Exit_4"/device:GPU:0*
T0
�
\training_1/gradients/context_repr/bidirectional_rnn/bw/bw/transpose_1_grad/InvertPermutationInvertPermutation-context_repr/bidirectional_rnn/bw/bw/concat_2"/device:GPU:0*
T0
�
Ttraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/transpose_1_grad/transpose	TransposeFtraining_1/gradients/context_repr/ReverseSequence_grad/ReverseSequence\training_1/gradients/context_repr/bidirectional_rnn/bw/bw/transpose_1_grad/InvertPermutation"/device:GPU:0*
Tperm0*
T0
�
Rtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Exit_2_grad/b_exitEnter�training_1/gradients/context_repr/bidirectional_rnn/fw/fw/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayScatter/TensorArrayScatterV3"/device:GPU:0*
T0*
is_constant( *
parallel_iterations *]

frame_nameOMtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/while_context
�
Rtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Exit_3_grad/b_exitEnter!training_1/gradients/zeros_like_1"/device:GPU:0*
T0*
is_constant( *
parallel_iterations *]

frame_nameOMtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/while_context
�
Rtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Exit_4_grad/b_exitEnter!training_1/gradients/zeros_like_2"/device:GPU:0*
T0*
is_constant( *
parallel_iterations *]

frame_nameOMtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/while_context
�
�training_1/gradients/context_repr/bidirectional_rnn/bw/bw/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayGrad/TensorArrayGradV3TensorArrayGradV30context_repr/bidirectional_rnn/bw/bw/TensorArray1context_repr/bidirectional_rnn/bw/bw/while/Exit_2* 
sourcetraining_1/gradients*C
_class9
75loc:@context_repr/bidirectional_rnn/bw/bw/TensorArray
�
�training_1/gradients/context_repr/bidirectional_rnn/bw/bw/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayGrad/gradient_flowIdentity1context_repr/bidirectional_rnn/bw/bw/while/Exit_2�^training_1/gradients/context_repr/bidirectional_rnn/bw/bw/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayGrad/TensorArrayGradV3*
T0*C
_class9
75loc:@context_repr/bidirectional_rnn/bw/bw/TensorArray
�
�training_1/gradients/context_repr/bidirectional_rnn/bw/bw/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayScatter/TensorArrayScatterV3TensorArrayScatterV3�training_1/gradients/context_repr/bidirectional_rnn/bw/bw/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayGrad/TensorArrayGradV3;context_repr/bidirectional_rnn/bw/bw/TensorArrayStack/rangeTtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/transpose_1_grad/transpose�training_1/gradients/context_repr/bidirectional_rnn/bw/bw/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayGrad/gradient_flow"/device:GPU:0*
T0
y
!training_1/gradients/zeros_like_3	ZerosLike1context_repr/bidirectional_rnn/bw/bw/while/Exit_3"/device:GPU:0*
T0
y
!training_1/gradients/zeros_like_4	ZerosLike1context_repr/bidirectional_rnn/bw/bw/while/Exit_4"/device:GPU:0*
T0
�
Vtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Switch_2_grad/b_switchMergeRtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Exit_2_grad/b_exit]training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Switch_2_grad_1/NextIteration"/device:GPU:0*
N*
T0
�
Vtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Switch_3_grad/b_switchMergeRtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Exit_3_grad/b_exit]training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Switch_3_grad_1/NextIteration"/device:GPU:0*
T0*
N
�
Vtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Switch_4_grad/b_switchMergeRtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Exit_4_grad/b_exit]training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Switch_4_grad_1/NextIteration"/device:GPU:0*
N*
T0
�
Rtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Exit_2_grad/b_exitEnter�training_1/gradients/context_repr/bidirectional_rnn/bw/bw/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayScatter/TensorArrayScatterV3"/device:GPU:0*
T0*
is_constant( *
parallel_iterations *]

frame_nameOMtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/while_context
�
Rtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Exit_3_grad/b_exitEnter!training_1/gradients/zeros_like_3"/device:GPU:0*
parallel_iterations *]

frame_nameOMtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/while_context*
T0*
is_constant( 
�
Rtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Exit_4_grad/b_exitEnter!training_1/gradients/zeros_like_4"/device:GPU:0*
T0*
is_constant( *
parallel_iterations *]

frame_nameOMtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/while_context
�
Straining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Merge_2_grad/SwitchSwitchVtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Switch_2_grad/b_switchtraining_1/gradients/b_count_2"/device:GPU:0*
T0*i
_class_
][loc:@training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Switch_2_grad/b_switch
�
]training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Merge_2_grad/tuple/group_depsNoOpT^training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Merge_2_grad/Switch"/device:GPU:0
�
etraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Merge_2_grad/tuple/control_dependencyIdentityStraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Merge_2_grad/Switch^^training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Merge_2_grad/tuple/group_deps"/device:GPU:0*
T0*i
_class_
][loc:@training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Switch_2_grad/b_switch
�
gtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Merge_2_grad/tuple/control_dependency_1IdentityUtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Merge_2_grad/Switch:1^^training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Merge_2_grad/tuple/group_deps"/device:GPU:0*
T0*i
_class_
][loc:@training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Switch_2_grad/b_switch
�
Straining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Merge_3_grad/SwitchSwitchVtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Switch_3_grad/b_switchtraining_1/gradients/b_count_2"/device:GPU:0*
T0*i
_class_
][loc:@training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Switch_3_grad/b_switch
�
]training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Merge_3_grad/tuple/group_depsNoOpT^training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Merge_3_grad/Switch"/device:GPU:0
�
etraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Merge_3_grad/tuple/control_dependencyIdentityStraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Merge_3_grad/Switch^^training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Merge_3_grad/tuple/group_deps"/device:GPU:0*
T0*i
_class_
][loc:@training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Switch_3_grad/b_switch
�
gtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Merge_3_grad/tuple/control_dependency_1IdentityUtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Merge_3_grad/Switch:1^^training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Merge_3_grad/tuple/group_deps"/device:GPU:0*
T0*i
_class_
][loc:@training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Switch_3_grad/b_switch
�
Straining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Merge_4_grad/SwitchSwitchVtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Switch_4_grad/b_switchtraining_1/gradients/b_count_2"/device:GPU:0*
T0*i
_class_
][loc:@training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Switch_4_grad/b_switch
�
]training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Merge_4_grad/tuple/group_depsNoOpT^training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Merge_4_grad/Switch"/device:GPU:0
�
etraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Merge_4_grad/tuple/control_dependencyIdentityStraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Merge_4_grad/Switch^^training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Merge_4_grad/tuple/group_deps"/device:GPU:0*
T0*i
_class_
][loc:@training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Switch_4_grad/b_switch
�
gtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Merge_4_grad/tuple/control_dependency_1IdentityUtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Merge_4_grad/Switch:1^^training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Merge_4_grad/tuple/group_deps"/device:GPU:0*
T0*i
_class_
][loc:@training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Switch_4_grad/b_switch
�
Vtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Switch_2_grad/b_switchMergeRtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Exit_2_grad/b_exit]training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Switch_2_grad_1/NextIteration"/device:GPU:0*
T0*
N
�
Vtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Switch_3_grad/b_switchMergeRtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Exit_3_grad/b_exit]training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Switch_3_grad_1/NextIteration"/device:GPU:0*
T0*
N
�
Vtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Switch_4_grad/b_switchMergeRtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Exit_4_grad/b_exit]training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Switch_4_grad_1/NextIteration"/device:GPU:0*
T0*
N
�
Qtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Enter_2_grad/ExitExitetraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Merge_2_grad/tuple/control_dependency"/device:GPU:0*
T0
�
Qtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Enter_3_grad/ExitExitetraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Merge_3_grad/tuple/control_dependency"/device:GPU:0*
T0
�
Qtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Enter_4_grad/ExitExitetraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Merge_4_grad/tuple/control_dependency"/device:GPU:0*
T0
�
Straining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Merge_2_grad/SwitchSwitchVtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Switch_2_grad/b_switchtraining_1/gradients/b_count_6"/device:GPU:0*
T0*i
_class_
][loc:@training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Switch_2_grad/b_switch
�
]training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Merge_2_grad/tuple/group_depsNoOpT^training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Merge_2_grad/Switch"/device:GPU:0
�
etraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Merge_2_grad/tuple/control_dependencyIdentityStraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Merge_2_grad/Switch^^training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Merge_2_grad/tuple/group_deps"/device:GPU:0*
T0*i
_class_
][loc:@training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Switch_2_grad/b_switch
�
gtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Merge_2_grad/tuple/control_dependency_1IdentityUtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Merge_2_grad/Switch:1^^training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Merge_2_grad/tuple/group_deps"/device:GPU:0*
T0*i
_class_
][loc:@training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Switch_2_grad/b_switch
�
Straining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Merge_3_grad/SwitchSwitchVtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Switch_3_grad/b_switchtraining_1/gradients/b_count_6"/device:GPU:0*
T0*i
_class_
][loc:@training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Switch_3_grad/b_switch
�
]training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Merge_3_grad/tuple/group_depsNoOpT^training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Merge_3_grad/Switch"/device:GPU:0
�
etraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Merge_3_grad/tuple/control_dependencyIdentityStraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Merge_3_grad/Switch^^training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Merge_3_grad/tuple/group_deps"/device:GPU:0*
T0*i
_class_
][loc:@training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Switch_3_grad/b_switch
�
gtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Merge_3_grad/tuple/control_dependency_1IdentityUtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Merge_3_grad/Switch:1^^training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Merge_3_grad/tuple/group_deps"/device:GPU:0*
T0*i
_class_
][loc:@training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Switch_3_grad/b_switch
�
Straining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Merge_4_grad/SwitchSwitchVtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Switch_4_grad/b_switchtraining_1/gradients/b_count_6"/device:GPU:0*
T0*i
_class_
][loc:@training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Switch_4_grad/b_switch
�
]training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Merge_4_grad/tuple/group_depsNoOpT^training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Merge_4_grad/Switch"/device:GPU:0
�
etraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Merge_4_grad/tuple/control_dependencyIdentityStraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Merge_4_grad/Switch^^training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Merge_4_grad/tuple/group_deps"/device:GPU:0*
T0*i
_class_
][loc:@training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Switch_4_grad/b_switch
�
gtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Merge_4_grad/tuple/control_dependency_1IdentityUtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Merge_4_grad/Switch:1^^training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Merge_4_grad/tuple/group_deps"/device:GPU:0*
T0*i
_class_
][loc:@training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Switch_4_grad/b_switch
�
�training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/TensorArrayGradV3TensorArrayGradV3�training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/TensorArrayGradV3/Entergtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Merge_2_grad/tuple/control_dependency_1"/device:GPU:0* 
sourcetraining_1/gradients*M
_classC
A?loc:@context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_2
�
�training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/TensorArrayGradV3/EnterEnter0context_repr/bidirectional_rnn/fw/fw/TensorArray"/device:GPU:0*
T0*
is_constant(*M
_classC
A?loc:@context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_2*
parallel_iterations *]

frame_nameOMtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/while_context
�
�training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/gradient_flowIdentitygtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Merge_2_grad/tuple/control_dependency_1�^training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/TensorArrayGradV3"/device:GPU:0*
T0*M
_classC
A?loc:@context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_2
�
ztraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3TensorArrayReadV3�training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/TensorArrayGradV3�training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2�training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/gradient_flow"/device:GPU:0*
dtype0
�
�training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/ConstConst"/device:GPU:0*
valueB :
���������*H
_class>
<:loc:@context_repr/bidirectional_rnn/fw/fw/while/Identity_1*
dtype0
�
�training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/f_accStackV2�training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/Const"/device:GPU:0*

stack_name *
	elem_type0*H
_class>
<:loc:@context_repr/bidirectional_rnn/fw/fw/while/Identity_1
�
�training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/EnterEnter�training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/f_acc"/device:GPU:0*
T0*
is_constant(*
parallel_iterations *H

frame_name:8context_repr/bidirectional_rnn/fw/fw/while/while_context
�
�training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPushV2StackPushV2�training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/Enter5context_repr/bidirectional_rnn/fw/fw/while/Identity_1^training_1/gradients/Add"/device:GPU:0*
T0*
swap_memory( 
�
�training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2
StackPopV2�training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2/Enter^training_1/gradients/Sub"/device:GPU:0*
	elem_type0
�
�training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2/EnterEnter�training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/f_acc"/device:GPU:0*
T0*
is_constant(*
parallel_iterations *]

frame_nameOMtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/while_context
�
�training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/b_syncControlTrigger`^training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Select_1_grad/Select/StackPopV2d^training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Select_1_grad/zeros_like/StackPopV2d^training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Select_2_grad/zeros_like/StackPopV2�^training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2j^training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/MatMul_grad/MatMul_1/StackPopV2v^training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/add_1_grad/BroadcastGradientArgs/StackPopV2x^training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/add_1_grad/BroadcastGradientArgs/StackPopV2_1t^training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/add_grad/BroadcastGradientArgs/StackPopV2h^training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/concat_grad/ShapeN/StackPopV2v^training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2x^training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2_1d^training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_1_grad/Mul/StackPopV2f^training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_1_grad/Mul_1/StackPopV2v^training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2x^training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2_1d^training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_2_grad/Mul/StackPopV2f^training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_2_grad/Mul_1/StackPopV2t^training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_grad/BroadcastGradientArgs/StackPopV2v^training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_grad/BroadcastGradientArgs/StackPopV2_1d^training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_grad/Mul_1/StackPopV2"/device:GPU:0
�
ytraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/group_depsNoOph^training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Merge_2_grad/tuple/control_dependency_1{^training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3"/device:GPU:0
�
�training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/control_dependencyIdentityztraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3z^training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/group_deps"/device:GPU:0*
T0*�
_class�
�loc:@training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3
�
�training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/control_dependency_1Identitygtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Merge_2_grad/tuple/control_dependency_1z^training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/group_deps"/device:GPU:0*
T0*i
_class_
][loc:@training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Switch_2_grad/b_switch
�
Xtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Select_1_grad/zeros_like	ZerosLikectraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Select_1_grad/zeros_like/StackPopV2"/device:GPU:0*
T0
�
^training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Select_1_grad/zeros_like/ConstConst"/device:GPU:0*
dtype0*
valueB :
���������*H
_class>
<:loc:@context_repr/bidirectional_rnn/fw/fw/while/Identity_3
�
^training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Select_1_grad/zeros_like/f_accStackV2^training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Select_1_grad/zeros_like/Const"/device:GPU:0*
	elem_type0*H
_class>
<:loc:@context_repr/bidirectional_rnn/fw/fw/while/Identity_3*

stack_name 
�
^training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Select_1_grad/zeros_like/EnterEnter^training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Select_1_grad/zeros_like/f_acc"/device:GPU:0*
T0*
is_constant(*
parallel_iterations *H

frame_name:8context_repr/bidirectional_rnn/fw/fw/while/while_context
�
dtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Select_1_grad/zeros_like/StackPushV2StackPushV2^training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Select_1_grad/zeros_like/Enter5context_repr/bidirectional_rnn/fw/fw/while/Identity_3^training_1/gradients/Add"/device:GPU:0*
T0*
swap_memory( 
�
ctraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Select_1_grad/zeros_like/StackPopV2
StackPopV2itraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Select_1_grad/zeros_like/StackPopV2/Enter^training_1/gradients/Sub"/device:GPU:0*
	elem_type0
�
itraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Select_1_grad/zeros_like/StackPopV2/EnterEnter^training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Select_1_grad/zeros_like/f_acc"/device:GPU:0*
T0*
is_constant(*
parallel_iterations *]

frame_nameOMtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/while_context
�
Ttraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Select_1_grad/SelectSelect_training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Select_1_grad/Select/StackPopV2gtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Merge_3_grad/tuple/control_dependency_1Xtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Select_1_grad/zeros_like"/device:GPU:0*
T0
�
Ztraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Select_1_grad/Select/ConstConst"/device:GPU:0*
valueB :
���������*J
_class@
><loc:@context_repr/bidirectional_rnn/fw/fw/while/GreaterEqual*
dtype0
�
Ztraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Select_1_grad/Select/f_accStackV2Ztraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Select_1_grad/Select/Const"/device:GPU:0*J
_class@
><loc:@context_repr/bidirectional_rnn/fw/fw/while/GreaterEqual*

stack_name *
	elem_type0

�
Ztraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Select_1_grad/Select/EnterEnterZtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Select_1_grad/Select/f_acc"/device:GPU:0*
parallel_iterations *H

frame_name:8context_repr/bidirectional_rnn/fw/fw/while/while_context*
T0*
is_constant(
�
`training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Select_1_grad/Select/StackPushV2StackPushV2Ztraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Select_1_grad/Select/Enter7context_repr/bidirectional_rnn/fw/fw/while/GreaterEqual^training_1/gradients/Add"/device:GPU:0*
T0
*
swap_memory( 
�
_training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Select_1_grad/Select/StackPopV2
StackPopV2etraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Select_1_grad/Select/StackPopV2/Enter^training_1/gradients/Sub"/device:GPU:0*
	elem_type0

�
etraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Select_1_grad/Select/StackPopV2/EnterEnterZtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Select_1_grad/Select/f_acc"/device:GPU:0*
T0*
is_constant(*
parallel_iterations *]

frame_nameOMtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/while_context
�
Vtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Select_1_grad/Select_1Select_training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Select_1_grad/Select/StackPopV2Xtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Select_1_grad/zeros_likegtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Merge_3_grad/tuple/control_dependency_1"/device:GPU:0*
T0
�
^training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Select_1_grad/tuple/group_depsNoOpU^training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Select_1_grad/SelectW^training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Select_1_grad/Select_1"/device:GPU:0
�
ftraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Select_1_grad/tuple/control_dependencyIdentityTtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Select_1_grad/Select_^training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Select_1_grad/tuple/group_deps"/device:GPU:0*
T0*g
_class]
[Yloc:@training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Select_1_grad/Select
�
htraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Select_1_grad/tuple/control_dependency_1IdentityVtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Select_1_grad/Select_1_^training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Select_1_grad/tuple/group_deps"/device:GPU:0*
T0*i
_class_
][loc:@training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Select_1_grad/Select_1
�
Xtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Select_2_grad/zeros_like	ZerosLikectraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Select_2_grad/zeros_like/StackPopV2"/device:GPU:0*
T0
�
^training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Select_2_grad/zeros_like/ConstConst"/device:GPU:0*
dtype0*
valueB :
���������*H
_class>
<:loc:@context_repr/bidirectional_rnn/fw/fw/while/Identity_4
�
^training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Select_2_grad/zeros_like/f_accStackV2^training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Select_2_grad/zeros_like/Const"/device:GPU:0*
	elem_type0*H
_class>
<:loc:@context_repr/bidirectional_rnn/fw/fw/while/Identity_4*

stack_name 
�
^training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Select_2_grad/zeros_like/EnterEnter^training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Select_2_grad/zeros_like/f_acc"/device:GPU:0*
T0*
is_constant(*
parallel_iterations *H

frame_name:8context_repr/bidirectional_rnn/fw/fw/while/while_context
�
dtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Select_2_grad/zeros_like/StackPushV2StackPushV2^training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Select_2_grad/zeros_like/Enter5context_repr/bidirectional_rnn/fw/fw/while/Identity_4^training_1/gradients/Add"/device:GPU:0*
swap_memory( *
T0
�
ctraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Select_2_grad/zeros_like/StackPopV2
StackPopV2itraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Select_2_grad/zeros_like/StackPopV2/Enter^training_1/gradients/Sub"/device:GPU:0*
	elem_type0
�
itraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Select_2_grad/zeros_like/StackPopV2/EnterEnter^training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Select_2_grad/zeros_like/f_acc"/device:GPU:0*
T0*
is_constant(*
parallel_iterations *]

frame_nameOMtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/while_context
�
Ttraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Select_2_grad/SelectSelect_training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Select_1_grad/Select/StackPopV2gtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Merge_4_grad/tuple/control_dependency_1Xtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Select_2_grad/zeros_like"/device:GPU:0*
T0
�
Vtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Select_2_grad/Select_1Select_training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Select_1_grad/Select/StackPopV2Xtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Select_2_grad/zeros_likegtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Merge_4_grad/tuple/control_dependency_1"/device:GPU:0*
T0
�
^training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Select_2_grad/tuple/group_depsNoOpU^training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Select_2_grad/SelectW^training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Select_2_grad/Select_1"/device:GPU:0
�
ftraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Select_2_grad/tuple/control_dependencyIdentityTtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Select_2_grad/Select_^training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Select_2_grad/tuple/group_deps"/device:GPU:0*
T0*g
_class]
[Yloc:@training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Select_2_grad/Select
�
htraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Select_2_grad/tuple/control_dependency_1IdentityVtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Select_2_grad/Select_1_^training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Select_2_grad/tuple/group_deps"/device:GPU:0*
T0*i
_class_
][loc:@training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Select_2_grad/Select_1
�
Qtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Enter_2_grad/ExitExitetraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Merge_2_grad/tuple/control_dependency"/device:GPU:0*
T0
�
Qtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Enter_3_grad/ExitExitetraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Merge_3_grad/tuple/control_dependency"/device:GPU:0*
T0
�
Qtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Enter_4_grad/ExitExitetraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Merge_4_grad/tuple/control_dependency"/device:GPU:0*
T0
�
Vtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Select_grad/zeros_like	ZerosLike\training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Select_grad/zeros_like/Enter^training_1/gradients/Sub"/device:GPU:0*
T0
�
\training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Select_grad/zeros_like/EnterEnter*context_repr/bidirectional_rnn/fw/fw/zeros"/device:GPU:0*
T0*
is_constant(*
parallel_iterations *]

frame_nameOMtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/while_context
�
Rtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Select_grad/SelectSelect_training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Select_1_grad/Select/StackPopV2�training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/control_dependencyVtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Select_grad/zeros_like"/device:GPU:0*
T0
�
Ttraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Select_grad/Select_1Select_training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Select_1_grad/Select/StackPopV2Vtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Select_grad/zeros_like�training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/control_dependency"/device:GPU:0*
T0
�
\training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Select_grad/tuple/group_depsNoOpS^training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Select_grad/SelectU^training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Select_grad/Select_1"/device:GPU:0
�
dtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Select_grad/tuple/control_dependencyIdentityRtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Select_grad/Select]^training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Select_grad/tuple/group_deps"/device:GPU:0*
T0*e
_class[
YWloc:@training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Select_grad/Select
�
ftraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Select_grad/tuple/control_dependency_1IdentityTtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Select_grad/Select_1]^training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Select_grad/tuple/group_deps"/device:GPU:0*
T0*g
_class]
[Yloc:@training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Select_grad/Select_1
�
�training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/TensorArrayGradV3TensorArrayGradV3�training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/TensorArrayGradV3/Entergtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Merge_2_grad/tuple/control_dependency_1"/device:GPU:0* 
sourcetraining_1/gradients*M
_classC
A?loc:@context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_2
�
�training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/TensorArrayGradV3/EnterEnter0context_repr/bidirectional_rnn/bw/bw/TensorArray"/device:GPU:0*
T0*
is_constant(*M
_classC
A?loc:@context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_2*
parallel_iterations *]

frame_nameOMtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/while_context
�
�training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/gradient_flowIdentitygtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Merge_2_grad/tuple/control_dependency_1�^training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/TensorArrayGradV3"/device:GPU:0*
T0*M
_classC
A?loc:@context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_2
�
ztraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3TensorArrayReadV3�training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/TensorArrayGradV3�training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2�training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/gradient_flow"/device:GPU:0*
dtype0
�
�training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/ConstConst"/device:GPU:0*
valueB :
���������*H
_class>
<:loc:@context_repr/bidirectional_rnn/bw/bw/while/Identity_1*
dtype0
�
�training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/f_accStackV2�training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/Const"/device:GPU:0*
	elem_type0*H
_class>
<:loc:@context_repr/bidirectional_rnn/bw/bw/while/Identity_1*

stack_name 
�
�training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/EnterEnter�training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/f_acc"/device:GPU:0*
T0*
is_constant(*
parallel_iterations *H

frame_name:8context_repr/bidirectional_rnn/bw/bw/while/while_context
�
�training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPushV2StackPushV2�training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/Enter5context_repr/bidirectional_rnn/bw/bw/while/Identity_1^training_1/gradients/Add_1"/device:GPU:0*
swap_memory( *
T0
�
�training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2
StackPopV2�training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2/Enter^training_1/gradients/Sub_1"/device:GPU:0*
	elem_type0
�
�training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2/EnterEnter�training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/f_acc"/device:GPU:0*
T0*
is_constant(*
parallel_iterations *]

frame_nameOMtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/while_context
�
�training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/b_syncControlTrigger`^training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Select_1_grad/Select/StackPopV2d^training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Select_1_grad/zeros_like/StackPopV2d^training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Select_2_grad/zeros_like/StackPopV2�^training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2j^training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/MatMul_grad/MatMul_1/StackPopV2v^training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/add_1_grad/BroadcastGradientArgs/StackPopV2x^training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/add_1_grad/BroadcastGradientArgs/StackPopV2_1t^training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/add_grad/BroadcastGradientArgs/StackPopV2h^training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/concat_grad/ShapeN/StackPopV2v^training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2x^training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2_1d^training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_1_grad/Mul/StackPopV2f^training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_1_grad/Mul_1/StackPopV2v^training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2x^training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2_1d^training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_2_grad/Mul/StackPopV2f^training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_2_grad/Mul_1/StackPopV2t^training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_grad/BroadcastGradientArgs/StackPopV2v^training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_grad/BroadcastGradientArgs/StackPopV2_1d^training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_grad/Mul_1/StackPopV2"/device:GPU:0
�
ytraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/group_depsNoOph^training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Merge_2_grad/tuple/control_dependency_1{^training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3"/device:GPU:0
�
�training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/control_dependencyIdentityztraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3z^training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/group_deps"/device:GPU:0*
T0*�
_class�
�loc:@training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3
�
�training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/control_dependency_1Identitygtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Merge_2_grad/tuple/control_dependency_1z^training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/group_deps"/device:GPU:0*
T0*i
_class_
][loc:@training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Switch_2_grad/b_switch
�
Xtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Select_1_grad/zeros_like	ZerosLikectraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Select_1_grad/zeros_like/StackPopV2"/device:GPU:0*
T0
�
^training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Select_1_grad/zeros_like/ConstConst"/device:GPU:0*
dtype0*
valueB :
���������*H
_class>
<:loc:@context_repr/bidirectional_rnn/bw/bw/while/Identity_3
�
^training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Select_1_grad/zeros_like/f_accStackV2^training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Select_1_grad/zeros_like/Const"/device:GPU:0*H
_class>
<:loc:@context_repr/bidirectional_rnn/bw/bw/while/Identity_3*

stack_name *
	elem_type0
�
^training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Select_1_grad/zeros_like/EnterEnter^training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Select_1_grad/zeros_like/f_acc"/device:GPU:0*
T0*
is_constant(*
parallel_iterations *H

frame_name:8context_repr/bidirectional_rnn/bw/bw/while/while_context
�
dtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Select_1_grad/zeros_like/StackPushV2StackPushV2^training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Select_1_grad/zeros_like/Enter5context_repr/bidirectional_rnn/bw/bw/while/Identity_3^training_1/gradients/Add_1"/device:GPU:0*
swap_memory( *
T0
�
ctraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Select_1_grad/zeros_like/StackPopV2
StackPopV2itraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Select_1_grad/zeros_like/StackPopV2/Enter^training_1/gradients/Sub_1"/device:GPU:0*
	elem_type0
�
itraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Select_1_grad/zeros_like/StackPopV2/EnterEnter^training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Select_1_grad/zeros_like/f_acc"/device:GPU:0*
T0*
is_constant(*
parallel_iterations *]

frame_nameOMtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/while_context
�
Ttraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Select_1_grad/SelectSelect_training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Select_1_grad/Select/StackPopV2gtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Merge_3_grad/tuple/control_dependency_1Xtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Select_1_grad/zeros_like"/device:GPU:0*
T0
�
Ztraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Select_1_grad/Select/ConstConst"/device:GPU:0*
dtype0*
valueB :
���������*J
_class@
><loc:@context_repr/bidirectional_rnn/bw/bw/while/GreaterEqual
�
Ztraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Select_1_grad/Select/f_accStackV2Ztraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Select_1_grad/Select/Const"/device:GPU:0*
	elem_type0
*J
_class@
><loc:@context_repr/bidirectional_rnn/bw/bw/while/GreaterEqual*

stack_name 
�
Ztraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Select_1_grad/Select/EnterEnterZtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Select_1_grad/Select/f_acc"/device:GPU:0*
T0*
is_constant(*
parallel_iterations *H

frame_name:8context_repr/bidirectional_rnn/bw/bw/while/while_context
�
`training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Select_1_grad/Select/StackPushV2StackPushV2Ztraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Select_1_grad/Select/Enter7context_repr/bidirectional_rnn/bw/bw/while/GreaterEqual^training_1/gradients/Add_1"/device:GPU:0*
swap_memory( *
T0

�
_training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Select_1_grad/Select/StackPopV2
StackPopV2etraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Select_1_grad/Select/StackPopV2/Enter^training_1/gradients/Sub_1"/device:GPU:0*
	elem_type0

�
etraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Select_1_grad/Select/StackPopV2/EnterEnterZtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Select_1_grad/Select/f_acc"/device:GPU:0*
parallel_iterations *]

frame_nameOMtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/while_context*
T0*
is_constant(
�
Vtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Select_1_grad/Select_1Select_training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Select_1_grad/Select/StackPopV2Xtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Select_1_grad/zeros_likegtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Merge_3_grad/tuple/control_dependency_1"/device:GPU:0*
T0
�
^training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Select_1_grad/tuple/group_depsNoOpU^training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Select_1_grad/SelectW^training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Select_1_grad/Select_1"/device:GPU:0
�
ftraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Select_1_grad/tuple/control_dependencyIdentityTtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Select_1_grad/Select_^training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Select_1_grad/tuple/group_deps"/device:GPU:0*
T0*g
_class]
[Yloc:@training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Select_1_grad/Select
�
htraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Select_1_grad/tuple/control_dependency_1IdentityVtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Select_1_grad/Select_1_^training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Select_1_grad/tuple/group_deps"/device:GPU:0*
T0*i
_class_
][loc:@training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Select_1_grad/Select_1
�
Xtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Select_2_grad/zeros_like	ZerosLikectraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Select_2_grad/zeros_like/StackPopV2"/device:GPU:0*
T0
�
^training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Select_2_grad/zeros_like/ConstConst"/device:GPU:0*
valueB :
���������*H
_class>
<:loc:@context_repr/bidirectional_rnn/bw/bw/while/Identity_4*
dtype0
�
^training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Select_2_grad/zeros_like/f_accStackV2^training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Select_2_grad/zeros_like/Const"/device:GPU:0*
	elem_type0*H
_class>
<:loc:@context_repr/bidirectional_rnn/bw/bw/while/Identity_4*

stack_name 
�
^training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Select_2_grad/zeros_like/EnterEnter^training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Select_2_grad/zeros_like/f_acc"/device:GPU:0*
T0*
is_constant(*
parallel_iterations *H

frame_name:8context_repr/bidirectional_rnn/bw/bw/while/while_context
�
dtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Select_2_grad/zeros_like/StackPushV2StackPushV2^training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Select_2_grad/zeros_like/Enter5context_repr/bidirectional_rnn/bw/bw/while/Identity_4^training_1/gradients/Add_1"/device:GPU:0*
swap_memory( *
T0
�
ctraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Select_2_grad/zeros_like/StackPopV2
StackPopV2itraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Select_2_grad/zeros_like/StackPopV2/Enter^training_1/gradients/Sub_1"/device:GPU:0*
	elem_type0
�
itraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Select_2_grad/zeros_like/StackPopV2/EnterEnter^training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Select_2_grad/zeros_like/f_acc"/device:GPU:0*
T0*
is_constant(*
parallel_iterations *]

frame_nameOMtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/while_context
�
Ttraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Select_2_grad/SelectSelect_training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Select_1_grad/Select/StackPopV2gtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Merge_4_grad/tuple/control_dependency_1Xtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Select_2_grad/zeros_like"/device:GPU:0*
T0
�
Vtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Select_2_grad/Select_1Select_training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Select_1_grad/Select/StackPopV2Xtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Select_2_grad/zeros_likegtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Merge_4_grad/tuple/control_dependency_1"/device:GPU:0*
T0
�
^training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Select_2_grad/tuple/group_depsNoOpU^training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Select_2_grad/SelectW^training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Select_2_grad/Select_1"/device:GPU:0
�
ftraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Select_2_grad/tuple/control_dependencyIdentityTtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Select_2_grad/Select_^training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Select_2_grad/tuple/group_deps"/device:GPU:0*
T0*g
_class]
[Yloc:@training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Select_2_grad/Select
�
htraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Select_2_grad/tuple/control_dependency_1IdentityVtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Select_2_grad/Select_1_^training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Select_2_grad/tuple/group_deps"/device:GPU:0*
T0*i
_class_
][loc:@training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Select_2_grad/Select_1
�
training_1/gradients/AddNAddNhtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Select_2_grad/tuple/control_dependency_1ftraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Select_grad/tuple/control_dependency_1"/device:GPU:0*
T0*i
_class_
][loc:@training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Select_2_grad/Select_1*
N
�
Ztraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_2_grad/ShapeShape>context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/Sigmoid_2"/device:GPU:0*
T0*
out_type0
�
\training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_2_grad/Shape_1Shape;context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/Tanh_1"/device:GPU:0*
T0*
out_type0
�
jtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_2_grad/BroadcastGradientArgsBroadcastGradientArgsutraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2wtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2_1"/device:GPU:0*
T0
�
ptraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_2_grad/BroadcastGradientArgs/ConstConst"/device:GPU:0*
valueB :
���������*m
_classc
a_loc:@training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_2_grad/Shape*
dtype0
�
ptraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_2_grad/BroadcastGradientArgs/f_accStackV2ptraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_2_grad/BroadcastGradientArgs/Const"/device:GPU:0*
	elem_type0*m
_classc
a_loc:@training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_2_grad/Shape*

stack_name 
�
ptraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_2_grad/BroadcastGradientArgs/EnterEnterptraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_2_grad/BroadcastGradientArgs/f_acc"/device:GPU:0*
parallel_iterations *H

frame_name:8context_repr/bidirectional_rnn/fw/fw/while/while_context*
T0*
is_constant(
�
vtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPushV2StackPushV2ptraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_2_grad/BroadcastGradientArgs/EnterZtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_2_grad/Shape^training_1/gradients/Add"/device:GPU:0*
T0*
swap_memory( 
�
utraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2
StackPopV2{training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2/Enter^training_1/gradients/Sub"/device:GPU:0*
	elem_type0
�
{training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2/EnterEnterptraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_2_grad/BroadcastGradientArgs/f_acc"/device:GPU:0*
T0*
is_constant(*
parallel_iterations *]

frame_nameOMtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/while_context
�
rtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_2_grad/BroadcastGradientArgs/Const_1Const"/device:GPU:0*
valueB :
���������*o
_classe
caloc:@training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_2_grad/Shape_1*
dtype0
�
rtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_2_grad/BroadcastGradientArgs/f_acc_1StackV2rtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_2_grad/BroadcastGradientArgs/Const_1"/device:GPU:0*o
_classe
caloc:@training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_2_grad/Shape_1*

stack_name *
	elem_type0
�
rtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_2_grad/BroadcastGradientArgs/Enter_1Enterrtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_2_grad/BroadcastGradientArgs/f_acc_1"/device:GPU:0*
T0*
is_constant(*
parallel_iterations *H

frame_name:8context_repr/bidirectional_rnn/fw/fw/while/while_context
�
xtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2rtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_2_grad/BroadcastGradientArgs/Enter_1\training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_2_grad/Shape_1^training_1/gradients/Add"/device:GPU:0*
swap_memory( *
T0
�
wtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2}training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2_1/Enter^training_1/gradients/Sub"/device:GPU:0*
	elem_type0
�
}training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnterrtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_2_grad/BroadcastGradientArgs/f_acc_1"/device:GPU:0*
T0*
is_constant(*
parallel_iterations *]

frame_nameOMtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/while_context
�
Xtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_2_grad/MulMultraining_1/gradients/AddNctraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_2_grad/Mul/StackPopV2"/device:GPU:0*
T0
�
^training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_2_grad/Mul/ConstConst"/device:GPU:0*
dtype0*
valueB :
���������*N
_classD
B@loc:@context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/Tanh_1
�
^training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_2_grad/Mul/f_accStackV2^training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_2_grad/Mul/Const"/device:GPU:0*N
_classD
B@loc:@context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/Tanh_1*

stack_name *
	elem_type0
�
^training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_2_grad/Mul/EnterEnter^training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_2_grad/Mul/f_acc"/device:GPU:0*
T0*
is_constant(*
parallel_iterations *H

frame_name:8context_repr/bidirectional_rnn/fw/fw/while/while_context
�
dtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_2_grad/Mul/StackPushV2StackPushV2^training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_2_grad/Mul/Enter;context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/Tanh_1^training_1/gradients/Add"/device:GPU:0*
T0*
swap_memory( 
�
ctraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_2_grad/Mul/StackPopV2
StackPopV2itraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_2_grad/Mul/StackPopV2/Enter^training_1/gradients/Sub"/device:GPU:0*
	elem_type0
�
itraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_2_grad/Mul/StackPopV2/EnterEnter^training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_2_grad/Mul/f_acc"/device:GPU:0*
parallel_iterations *]

frame_nameOMtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/while_context*
T0*
is_constant(
�
Xtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_2_grad/SumSumXtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_2_grad/Muljtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_2_grad/BroadcastGradientArgs"/device:GPU:0*
T0*

Tidx0*
	keep_dims( 
�
\training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_2_grad/ReshapeReshapeXtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_2_grad/Sumutraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2"/device:GPU:0*
T0*
Tshape0
�
Ztraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_2_grad/Mul_1Muletraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_2_grad/Mul_1/StackPopV2training_1/gradients/AddN"/device:GPU:0*
T0
�
`training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_2_grad/Mul_1/ConstConst"/device:GPU:0*
valueB :
���������*Q
_classG
ECloc:@context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/Sigmoid_2*
dtype0
�
`training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_2_grad/Mul_1/f_accStackV2`training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_2_grad/Mul_1/Const"/device:GPU:0*Q
_classG
ECloc:@context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/Sigmoid_2*

stack_name *
	elem_type0
�
`training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_2_grad/Mul_1/EnterEnter`training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_2_grad/Mul_1/f_acc"/device:GPU:0*
T0*
is_constant(*
parallel_iterations *H

frame_name:8context_repr/bidirectional_rnn/fw/fw/while/while_context
�
ftraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_2_grad/Mul_1/StackPushV2StackPushV2`training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_2_grad/Mul_1/Enter>context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/Sigmoid_2^training_1/gradients/Add"/device:GPU:0*
T0*
swap_memory( 
�
etraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_2_grad/Mul_1/StackPopV2
StackPopV2ktraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_2_grad/Mul_1/StackPopV2/Enter^training_1/gradients/Sub"/device:GPU:0*
	elem_type0
�
ktraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_2_grad/Mul_1/StackPopV2/EnterEnter`training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_2_grad/Mul_1/f_acc"/device:GPU:0*
parallel_iterations *]

frame_nameOMtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/while_context*
T0*
is_constant(
�
Ztraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_2_grad/Sum_1SumZtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_2_grad/Mul_1ltraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_2_grad/BroadcastGradientArgs:1"/device:GPU:0*

Tidx0*
	keep_dims( *
T0
�
^training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_2_grad/Reshape_1ReshapeZtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_2_grad/Sum_1wtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2_1"/device:GPU:0*
T0*
Tshape0
�
etraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_2_grad/tuple/group_depsNoOp]^training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_2_grad/Reshape_^training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_2_grad/Reshape_1"/device:GPU:0
�
mtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_2_grad/tuple/control_dependencyIdentity\training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_2_grad/Reshapef^training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_2_grad/tuple/group_deps"/device:GPU:0*
T0*o
_classe
caloc:@training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_2_grad/Reshape
�
otraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_2_grad/tuple/control_dependency_1Identity^training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_2_grad/Reshape_1f^training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_2_grad/tuple/group_deps"/device:GPU:0*
T0*q
_classg
ecloc:@training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_2_grad/Reshape_1
�
]training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Switch_2_grad_1/NextIterationNextIteration�training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/control_dependency_1"/device:GPU:0*
T0
�
Vtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Select_grad/zeros_like	ZerosLike\training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Select_grad/zeros_like/Enter^training_1/gradients/Sub_1"/device:GPU:0*
T0
�
\training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Select_grad/zeros_like/EnterEnter*context_repr/bidirectional_rnn/bw/bw/zeros"/device:GPU:0*
T0*
is_constant(*
parallel_iterations *]

frame_nameOMtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/while_context
�
Rtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Select_grad/SelectSelect_training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Select_1_grad/Select/StackPopV2�training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/control_dependencyVtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Select_grad/zeros_like"/device:GPU:0*
T0
�
Ttraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Select_grad/Select_1Select_training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Select_1_grad/Select/StackPopV2Vtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Select_grad/zeros_like�training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/control_dependency"/device:GPU:0*
T0
�
\training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Select_grad/tuple/group_depsNoOpS^training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Select_grad/SelectU^training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Select_grad/Select_1"/device:GPU:0
�
dtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Select_grad/tuple/control_dependencyIdentityRtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Select_grad/Select]^training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Select_grad/tuple/group_deps"/device:GPU:0*
T0*e
_class[
YWloc:@training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Select_grad/Select
�
ftraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Select_grad/tuple/control_dependency_1IdentityTtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Select_grad/Select_1]^training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Select_grad/tuple/group_deps"/device:GPU:0*
T0*g
_class]
[Yloc:@training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Select_grad/Select_1
�
dtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/Sigmoid_2_grad/SigmoidGradSigmoidGradetraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_2_grad/Mul_1/StackPopV2mtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_2_grad/tuple/control_dependency"/device:GPU:0*
T0
�
^training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/Tanh_1_grad/TanhGradTanhGradctraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_2_grad/Mul/StackPopV2otraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_2_grad/tuple/control_dependency_1"/device:GPU:0*
T0
�
training_1/gradients/AddN_1AddNhtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Select_2_grad/tuple/control_dependency_1ftraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Select_grad/tuple/control_dependency_1"/device:GPU:0*
T0*i
_class_
][loc:@training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Select_2_grad/Select_1*
N
�
Ztraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_2_grad/ShapeShape>context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/Sigmoid_2"/device:GPU:0*
T0*
out_type0
�
\training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_2_grad/Shape_1Shape;context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/Tanh_1"/device:GPU:0*
T0*
out_type0
�
jtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_2_grad/BroadcastGradientArgsBroadcastGradientArgsutraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2wtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2_1"/device:GPU:0*
T0
�
ptraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_2_grad/BroadcastGradientArgs/ConstConst"/device:GPU:0*
dtype0*
valueB :
���������*m
_classc
a_loc:@training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_2_grad/Shape
�
ptraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_2_grad/BroadcastGradientArgs/f_accStackV2ptraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_2_grad/BroadcastGradientArgs/Const"/device:GPU:0*m
_classc
a_loc:@training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_2_grad/Shape*

stack_name *
	elem_type0
�
ptraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_2_grad/BroadcastGradientArgs/EnterEnterptraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_2_grad/BroadcastGradientArgs/f_acc"/device:GPU:0*
T0*
is_constant(*
parallel_iterations *H

frame_name:8context_repr/bidirectional_rnn/bw/bw/while/while_context
�
vtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPushV2StackPushV2ptraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_2_grad/BroadcastGradientArgs/EnterZtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_2_grad/Shape^training_1/gradients/Add_1"/device:GPU:0*
T0*
swap_memory( 
�
utraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2
StackPopV2{training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2/Enter^training_1/gradients/Sub_1"/device:GPU:0*
	elem_type0
�
{training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2/EnterEnterptraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_2_grad/BroadcastGradientArgs/f_acc"/device:GPU:0*
T0*
is_constant(*
parallel_iterations *]

frame_nameOMtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/while_context
�
rtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_2_grad/BroadcastGradientArgs/Const_1Const"/device:GPU:0*
valueB :
���������*o
_classe
caloc:@training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_2_grad/Shape_1*
dtype0
�
rtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_2_grad/BroadcastGradientArgs/f_acc_1StackV2rtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_2_grad/BroadcastGradientArgs/Const_1"/device:GPU:0*o
_classe
caloc:@training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_2_grad/Shape_1*

stack_name *
	elem_type0
�
rtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_2_grad/BroadcastGradientArgs/Enter_1Enterrtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_2_grad/BroadcastGradientArgs/f_acc_1"/device:GPU:0*
T0*
is_constant(*
parallel_iterations *H

frame_name:8context_repr/bidirectional_rnn/bw/bw/while/while_context
�
xtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2rtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_2_grad/BroadcastGradientArgs/Enter_1\training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_2_grad/Shape_1^training_1/gradients/Add_1"/device:GPU:0*
T0*
swap_memory( 
�
wtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2}training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2_1/Enter^training_1/gradients/Sub_1"/device:GPU:0*
	elem_type0
�
}training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnterrtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_2_grad/BroadcastGradientArgs/f_acc_1"/device:GPU:0*
T0*
is_constant(*
parallel_iterations *]

frame_nameOMtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/while_context
�
Xtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_2_grad/MulMultraining_1/gradients/AddN_1ctraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_2_grad/Mul/StackPopV2"/device:GPU:0*
T0
�
^training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_2_grad/Mul/ConstConst"/device:GPU:0*
valueB :
���������*N
_classD
B@loc:@context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/Tanh_1*
dtype0
�
^training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_2_grad/Mul/f_accStackV2^training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_2_grad/Mul/Const"/device:GPU:0*
	elem_type0*N
_classD
B@loc:@context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/Tanh_1*

stack_name 
�
^training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_2_grad/Mul/EnterEnter^training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_2_grad/Mul/f_acc"/device:GPU:0*
T0*
is_constant(*
parallel_iterations *H

frame_name:8context_repr/bidirectional_rnn/bw/bw/while/while_context
�
dtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_2_grad/Mul/StackPushV2StackPushV2^training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_2_grad/Mul/Enter;context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/Tanh_1^training_1/gradients/Add_1"/device:GPU:0*
T0*
swap_memory( 
�
ctraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_2_grad/Mul/StackPopV2
StackPopV2itraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_2_grad/Mul/StackPopV2/Enter^training_1/gradients/Sub_1"/device:GPU:0*
	elem_type0
�
itraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_2_grad/Mul/StackPopV2/EnterEnter^training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_2_grad/Mul/f_acc"/device:GPU:0*
parallel_iterations *]

frame_nameOMtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/while_context*
T0*
is_constant(
�
Xtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_2_grad/SumSumXtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_2_grad/Muljtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_2_grad/BroadcastGradientArgs"/device:GPU:0*
T0*

Tidx0*
	keep_dims( 
�
\training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_2_grad/ReshapeReshapeXtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_2_grad/Sumutraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2"/device:GPU:0*
T0*
Tshape0
�
Ztraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_2_grad/Mul_1Muletraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_2_grad/Mul_1/StackPopV2training_1/gradients/AddN_1"/device:GPU:0*
T0
�
`training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_2_grad/Mul_1/ConstConst"/device:GPU:0*
valueB :
���������*Q
_classG
ECloc:@context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/Sigmoid_2*
dtype0
�
`training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_2_grad/Mul_1/f_accStackV2`training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_2_grad/Mul_1/Const"/device:GPU:0*Q
_classG
ECloc:@context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/Sigmoid_2*

stack_name *
	elem_type0
�
`training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_2_grad/Mul_1/EnterEnter`training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_2_grad/Mul_1/f_acc"/device:GPU:0*
T0*
is_constant(*
parallel_iterations *H

frame_name:8context_repr/bidirectional_rnn/bw/bw/while/while_context
�
ftraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_2_grad/Mul_1/StackPushV2StackPushV2`training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_2_grad/Mul_1/Enter>context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/Sigmoid_2^training_1/gradients/Add_1"/device:GPU:0*
swap_memory( *
T0
�
etraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_2_grad/Mul_1/StackPopV2
StackPopV2ktraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_2_grad/Mul_1/StackPopV2/Enter^training_1/gradients/Sub_1"/device:GPU:0*
	elem_type0
�
ktraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_2_grad/Mul_1/StackPopV2/EnterEnter`training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_2_grad/Mul_1/f_acc"/device:GPU:0*
T0*
is_constant(*
parallel_iterations *]

frame_nameOMtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/while_context
�
Ztraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_2_grad/Sum_1SumZtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_2_grad/Mul_1ltraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_2_grad/BroadcastGradientArgs:1"/device:GPU:0*
T0*

Tidx0*
	keep_dims( 
�
^training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_2_grad/Reshape_1ReshapeZtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_2_grad/Sum_1wtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2_1"/device:GPU:0*
T0*
Tshape0
�
etraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_2_grad/tuple/group_depsNoOp]^training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_2_grad/Reshape_^training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_2_grad/Reshape_1"/device:GPU:0
�
mtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_2_grad/tuple/control_dependencyIdentity\training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_2_grad/Reshapef^training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_2_grad/tuple/group_deps"/device:GPU:0*
T0*o
_classe
caloc:@training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_2_grad/Reshape
�
otraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_2_grad/tuple/control_dependency_1Identity^training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_2_grad/Reshape_1f^training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_2_grad/tuple/group_deps"/device:GPU:0*
T0*q
_classg
ecloc:@training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_2_grad/Reshape_1
�
]training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Switch_2_grad_1/NextIterationNextIteration�training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/control_dependency_1"/device:GPU:0*
T0
�
training_1/gradients/AddN_2AddNhtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Select_1_grad/tuple/control_dependency_1^training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/Tanh_1_grad/TanhGrad"/device:GPU:0*
N*
T0*i
_class_
][loc:@training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Select_1_grad/Select_1
�
Ztraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/add_1_grad/ShapeShape8context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul"/device:GPU:0*
T0*
out_type0
�
\training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/add_1_grad/Shape_1Shape:context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_1"/device:GPU:0*
T0*
out_type0
�
jtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/add_1_grad/BroadcastGradientArgsBroadcastGradientArgsutraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/add_1_grad/BroadcastGradientArgs/StackPopV2wtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/add_1_grad/BroadcastGradientArgs/StackPopV2_1"/device:GPU:0*
T0
�
ptraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/add_1_grad/BroadcastGradientArgs/ConstConst"/device:GPU:0*
valueB :
���������*m
_classc
a_loc:@training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/add_1_grad/Shape*
dtype0
�
ptraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/add_1_grad/BroadcastGradientArgs/f_accStackV2ptraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/add_1_grad/BroadcastGradientArgs/Const"/device:GPU:0*m
_classc
a_loc:@training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/add_1_grad/Shape*

stack_name *
	elem_type0
�
ptraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/add_1_grad/BroadcastGradientArgs/EnterEnterptraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/add_1_grad/BroadcastGradientArgs/f_acc"/device:GPU:0*
T0*
is_constant(*
parallel_iterations *H

frame_name:8context_repr/bidirectional_rnn/fw/fw/while/while_context
�
vtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/add_1_grad/BroadcastGradientArgs/StackPushV2StackPushV2ptraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/add_1_grad/BroadcastGradientArgs/EnterZtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/add_1_grad/Shape^training_1/gradients/Add"/device:GPU:0*
T0*
swap_memory( 
�
utraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/add_1_grad/BroadcastGradientArgs/StackPopV2
StackPopV2{training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/add_1_grad/BroadcastGradientArgs/StackPopV2/Enter^training_1/gradients/Sub"/device:GPU:0*
	elem_type0
�
{training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/add_1_grad/BroadcastGradientArgs/StackPopV2/EnterEnterptraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/add_1_grad/BroadcastGradientArgs/f_acc"/device:GPU:0*
T0*
is_constant(*
parallel_iterations *]

frame_nameOMtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/while_context
�
rtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/add_1_grad/BroadcastGradientArgs/Const_1Const"/device:GPU:0*
valueB :
���������*o
_classe
caloc:@training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/add_1_grad/Shape_1*
dtype0
�
rtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/add_1_grad/BroadcastGradientArgs/f_acc_1StackV2rtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/add_1_grad/BroadcastGradientArgs/Const_1"/device:GPU:0*

stack_name *
	elem_type0*o
_classe
caloc:@training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/add_1_grad/Shape_1
�
rtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/add_1_grad/BroadcastGradientArgs/Enter_1Enterrtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/add_1_grad/BroadcastGradientArgs/f_acc_1"/device:GPU:0*
parallel_iterations *H

frame_name:8context_repr/bidirectional_rnn/fw/fw/while/while_context*
T0*
is_constant(
�
xtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/add_1_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2rtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/add_1_grad/BroadcastGradientArgs/Enter_1\training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/add_1_grad/Shape_1^training_1/gradients/Add"/device:GPU:0*
swap_memory( *
T0
�
wtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/add_1_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2}training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/add_1_grad/BroadcastGradientArgs/StackPopV2_1/Enter^training_1/gradients/Sub"/device:GPU:0*
	elem_type0
�
}training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/add_1_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnterrtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/add_1_grad/BroadcastGradientArgs/f_acc_1"/device:GPU:0*
T0*
is_constant(*
parallel_iterations *]

frame_nameOMtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/while_context
�
Xtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/add_1_grad/SumSumtraining_1/gradients/AddN_2jtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/add_1_grad/BroadcastGradientArgs"/device:GPU:0*
T0*

Tidx0*
	keep_dims( 
�
\training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/add_1_grad/ReshapeReshapeXtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/add_1_grad/Sumutraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/add_1_grad/BroadcastGradientArgs/StackPopV2"/device:GPU:0*
T0*
Tshape0
�
Ztraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/add_1_grad/Sum_1Sumtraining_1/gradients/AddN_2ltraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/add_1_grad/BroadcastGradientArgs:1"/device:GPU:0*

Tidx0*
	keep_dims( *
T0
�
^training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/add_1_grad/Reshape_1ReshapeZtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/add_1_grad/Sum_1wtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/add_1_grad/BroadcastGradientArgs/StackPopV2_1"/device:GPU:0*
T0*
Tshape0
�
etraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/add_1_grad/tuple/group_depsNoOp]^training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/add_1_grad/Reshape_^training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/add_1_grad/Reshape_1"/device:GPU:0
�
mtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/add_1_grad/tuple/control_dependencyIdentity\training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/add_1_grad/Reshapef^training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/add_1_grad/tuple/group_deps"/device:GPU:0*
T0*o
_classe
caloc:@training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/add_1_grad/Reshape
�
otraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/add_1_grad/tuple/control_dependency_1Identity^training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/add_1_grad/Reshape_1f^training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/add_1_grad/tuple/group_deps"/device:GPU:0*
T0*q
_classg
ecloc:@training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/add_1_grad/Reshape_1
�
dtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/Sigmoid_2_grad/SigmoidGradSigmoidGradetraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_2_grad/Mul_1/StackPopV2mtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_2_grad/tuple/control_dependency"/device:GPU:0*
T0
�
^training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/Tanh_1_grad/TanhGradTanhGradctraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_2_grad/Mul/StackPopV2otraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_2_grad/tuple/control_dependency_1"/device:GPU:0*
T0
�
Xtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_grad/ShapeShape<context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/Sigmoid"/device:GPU:0*
T0*
out_type0
�
Ztraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_grad/Shape_1Shape5context_repr/bidirectional_rnn/fw/fw/while/Identity_3"/device:GPU:0*
T0*
out_type0
�
htraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_grad/BroadcastGradientArgsBroadcastGradientArgsstraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_grad/BroadcastGradientArgs/StackPopV2utraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_grad/BroadcastGradientArgs/StackPopV2_1"/device:GPU:0*
T0
�
ntraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_grad/BroadcastGradientArgs/ConstConst"/device:GPU:0*
valueB :
���������*k
_classa
_]loc:@training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_grad/Shape*
dtype0
�
ntraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_grad/BroadcastGradientArgs/f_accStackV2ntraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_grad/BroadcastGradientArgs/Const"/device:GPU:0*
	elem_type0*k
_classa
_]loc:@training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_grad/Shape*

stack_name 
�
ntraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_grad/BroadcastGradientArgs/EnterEnterntraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_grad/BroadcastGradientArgs/f_acc"/device:GPU:0*
T0*
is_constant(*
parallel_iterations *H

frame_name:8context_repr/bidirectional_rnn/fw/fw/while/while_context
�
ttraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_grad/BroadcastGradientArgs/StackPushV2StackPushV2ntraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_grad/BroadcastGradientArgs/EnterXtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_grad/Shape^training_1/gradients/Add"/device:GPU:0*
swap_memory( *
T0
�
straining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_grad/BroadcastGradientArgs/StackPopV2
StackPopV2ytraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_grad/BroadcastGradientArgs/StackPopV2/Enter^training_1/gradients/Sub"/device:GPU:0*
	elem_type0
�
ytraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_grad/BroadcastGradientArgs/StackPopV2/EnterEnterntraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_grad/BroadcastGradientArgs/f_acc"/device:GPU:0*
T0*
is_constant(*
parallel_iterations *]

frame_nameOMtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/while_context
�
ptraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_grad/BroadcastGradientArgs/Const_1Const"/device:GPU:0*
valueB :
���������*m
_classc
a_loc:@training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_grad/Shape_1*
dtype0
�
ptraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_grad/BroadcastGradientArgs/f_acc_1StackV2ptraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_grad/BroadcastGradientArgs/Const_1"/device:GPU:0*m
_classc
a_loc:@training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_grad/Shape_1*

stack_name *
	elem_type0
�
ptraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_grad/BroadcastGradientArgs/Enter_1Enterptraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_grad/BroadcastGradientArgs/f_acc_1"/device:GPU:0*
T0*
is_constant(*
parallel_iterations *H

frame_name:8context_repr/bidirectional_rnn/fw/fw/while/while_context
�
vtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2ptraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_grad/BroadcastGradientArgs/Enter_1Ztraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_grad/Shape_1^training_1/gradients/Add"/device:GPU:0*
T0*
swap_memory( 
�
utraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2{training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_grad/BroadcastGradientArgs/StackPopV2_1/Enter^training_1/gradients/Sub"/device:GPU:0*
	elem_type0
�
{training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnterptraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_grad/BroadcastGradientArgs/f_acc_1"/device:GPU:0*
T0*
is_constant(*
parallel_iterations *]

frame_nameOMtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/while_context
�
Vtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_grad/MulMulmtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/add_1_grad/tuple/control_dependencyctraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Select_1_grad/zeros_like/StackPopV2"/device:GPU:0*
T0
�
Vtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_grad/SumSumVtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_grad/Mulhtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_grad/BroadcastGradientArgs"/device:GPU:0*

Tidx0*
	keep_dims( *
T0
�
Ztraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_grad/ReshapeReshapeVtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_grad/Sumstraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_grad/BroadcastGradientArgs/StackPopV2"/device:GPU:0*
T0*
Tshape0
�
Xtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_grad/Mul_1Mulctraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_grad/Mul_1/StackPopV2mtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/add_1_grad/tuple/control_dependency"/device:GPU:0*
T0
�
^training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_grad/Mul_1/ConstConst"/device:GPU:0*
valueB :
���������*O
_classE
CAloc:@context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/Sigmoid*
dtype0
�
^training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_grad/Mul_1/f_accStackV2^training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_grad/Mul_1/Const"/device:GPU:0*O
_classE
CAloc:@context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/Sigmoid*

stack_name *
	elem_type0
�
^training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_grad/Mul_1/EnterEnter^training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_grad/Mul_1/f_acc"/device:GPU:0*
parallel_iterations *H

frame_name:8context_repr/bidirectional_rnn/fw/fw/while/while_context*
T0*
is_constant(
�
dtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_grad/Mul_1/StackPushV2StackPushV2^training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_grad/Mul_1/Enter<context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/Sigmoid^training_1/gradients/Add"/device:GPU:0*
T0*
swap_memory( 
�
ctraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_grad/Mul_1/StackPopV2
StackPopV2itraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_grad/Mul_1/StackPopV2/Enter^training_1/gradients/Sub"/device:GPU:0*
	elem_type0
�
itraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_grad/Mul_1/StackPopV2/EnterEnter^training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_grad/Mul_1/f_acc"/device:GPU:0*
T0*
is_constant(*
parallel_iterations *]

frame_nameOMtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/while_context
�
Xtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_grad/Sum_1SumXtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_grad/Mul_1jtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_grad/BroadcastGradientArgs:1"/device:GPU:0*
T0*

Tidx0*
	keep_dims( 
�
\training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_grad/Reshape_1ReshapeXtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_grad/Sum_1utraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_grad/BroadcastGradientArgs/StackPopV2_1"/device:GPU:0*
T0*
Tshape0
�
ctraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_grad/tuple/group_depsNoOp[^training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_grad/Reshape]^training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_grad/Reshape_1"/device:GPU:0
�
ktraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_grad/tuple/control_dependencyIdentityZtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_grad/Reshaped^training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_grad/tuple/group_deps"/device:GPU:0*
T0*m
_classc
a_loc:@training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_grad/Reshape
�
mtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_grad/tuple/control_dependency_1Identity\training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_grad/Reshape_1d^training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_grad/tuple/group_deps"/device:GPU:0*
T0*o
_classe
caloc:@training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_grad/Reshape_1
�
Ztraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_1_grad/ShapeShape>context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/Sigmoid_1"/device:GPU:0*
T0*
out_type0
�
\training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_1_grad/Shape_1Shape9context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/Tanh"/device:GPU:0*
T0*
out_type0
�
jtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgsutraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2wtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2_1"/device:GPU:0*
T0
�
ptraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_1_grad/BroadcastGradientArgs/ConstConst"/device:GPU:0*
valueB :
���������*m
_classc
a_loc:@training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_1_grad/Shape*
dtype0
�
ptraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_1_grad/BroadcastGradientArgs/f_accStackV2ptraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_1_grad/BroadcastGradientArgs/Const"/device:GPU:0*

stack_name *
	elem_type0*m
_classc
a_loc:@training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_1_grad/Shape
�
ptraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_1_grad/BroadcastGradientArgs/EnterEnterptraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_1_grad/BroadcastGradientArgs/f_acc"/device:GPU:0*
T0*
is_constant(*
parallel_iterations *H

frame_name:8context_repr/bidirectional_rnn/fw/fw/while/while_context
�
vtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPushV2StackPushV2ptraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_1_grad/BroadcastGradientArgs/EnterZtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_1_grad/Shape^training_1/gradients/Add"/device:GPU:0*
swap_memory( *
T0
�
utraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2
StackPopV2{training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2/Enter^training_1/gradients/Sub"/device:GPU:0*
	elem_type0
�
{training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2/EnterEnterptraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_1_grad/BroadcastGradientArgs/f_acc"/device:GPU:0*
T0*
is_constant(*
parallel_iterations *]

frame_nameOMtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/while_context
�
rtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_1_grad/BroadcastGradientArgs/Const_1Const"/device:GPU:0*
dtype0*
valueB :
���������*o
_classe
caloc:@training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_1_grad/Shape_1
�
rtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_1_grad/BroadcastGradientArgs/f_acc_1StackV2rtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_1_grad/BroadcastGradientArgs/Const_1"/device:GPU:0*

stack_name *
	elem_type0*o
_classe
caloc:@training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_1_grad/Shape_1
�
rtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_1_grad/BroadcastGradientArgs/Enter_1Enterrtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_1_grad/BroadcastGradientArgs/f_acc_1"/device:GPU:0*
T0*
is_constant(*
parallel_iterations *H

frame_name:8context_repr/bidirectional_rnn/fw/fw/while/while_context
�
xtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2rtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_1_grad/BroadcastGradientArgs/Enter_1\training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_1_grad/Shape_1^training_1/gradients/Add"/device:GPU:0*
T0*
swap_memory( 
�
wtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2}training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2_1/Enter^training_1/gradients/Sub"/device:GPU:0*
	elem_type0
�
}training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnterrtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_1_grad/BroadcastGradientArgs/f_acc_1"/device:GPU:0*
T0*
is_constant(*
parallel_iterations *]

frame_nameOMtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/while_context
�
Xtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_1_grad/MulMulotraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/add_1_grad/tuple/control_dependency_1ctraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_1_grad/Mul/StackPopV2"/device:GPU:0*
T0
�
^training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_1_grad/Mul/ConstConst"/device:GPU:0*
valueB :
���������*L
_classB
@>loc:@context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/Tanh*
dtype0
�
^training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_1_grad/Mul/f_accStackV2^training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_1_grad/Mul/Const"/device:GPU:0*
	elem_type0*L
_classB
@>loc:@context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/Tanh*

stack_name 
�
^training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_1_grad/Mul/EnterEnter^training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_1_grad/Mul/f_acc"/device:GPU:0*
parallel_iterations *H

frame_name:8context_repr/bidirectional_rnn/fw/fw/while/while_context*
T0*
is_constant(
�
dtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_1_grad/Mul/StackPushV2StackPushV2^training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_1_grad/Mul/Enter9context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/Tanh^training_1/gradients/Add"/device:GPU:0*
swap_memory( *
T0
�
ctraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_1_grad/Mul/StackPopV2
StackPopV2itraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_1_grad/Mul/StackPopV2/Enter^training_1/gradients/Sub"/device:GPU:0*
	elem_type0
�
itraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_1_grad/Mul/StackPopV2/EnterEnter^training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_1_grad/Mul/f_acc"/device:GPU:0*
parallel_iterations *]

frame_nameOMtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/while_context*
T0*
is_constant(
�
Xtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_1_grad/SumSumXtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_1_grad/Muljtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_1_grad/BroadcastGradientArgs"/device:GPU:0*

Tidx0*
	keep_dims( *
T0
�
\training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_1_grad/ReshapeReshapeXtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_1_grad/Sumutraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2"/device:GPU:0*
T0*
Tshape0
�
Ztraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_1_grad/Mul_1Muletraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_1_grad/Mul_1/StackPopV2otraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/add_1_grad/tuple/control_dependency_1"/device:GPU:0*
T0
�
`training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_1_grad/Mul_1/ConstConst"/device:GPU:0*
dtype0*
valueB :
���������*Q
_classG
ECloc:@context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/Sigmoid_1
�
`training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_1_grad/Mul_1/f_accStackV2`training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_1_grad/Mul_1/Const"/device:GPU:0*
	elem_type0*Q
_classG
ECloc:@context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/Sigmoid_1*

stack_name 
�
`training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_1_grad/Mul_1/EnterEnter`training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_1_grad/Mul_1/f_acc"/device:GPU:0*
T0*
is_constant(*
parallel_iterations *H

frame_name:8context_repr/bidirectional_rnn/fw/fw/while/while_context
�
ftraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_1_grad/Mul_1/StackPushV2StackPushV2`training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_1_grad/Mul_1/Enter>context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/Sigmoid_1^training_1/gradients/Add"/device:GPU:0*
T0*
swap_memory( 
�
etraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_1_grad/Mul_1/StackPopV2
StackPopV2ktraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_1_grad/Mul_1/StackPopV2/Enter^training_1/gradients/Sub"/device:GPU:0*
	elem_type0
�
ktraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_1_grad/Mul_1/StackPopV2/EnterEnter`training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_1_grad/Mul_1/f_acc"/device:GPU:0*
parallel_iterations *]

frame_nameOMtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/while_context*
T0*
is_constant(
�
Ztraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_1_grad/Sum_1SumZtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_1_grad/Mul_1ltraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_1_grad/BroadcastGradientArgs:1"/device:GPU:0*
T0*

Tidx0*
	keep_dims( 
�
^training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_1_grad/Reshape_1ReshapeZtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_1_grad/Sum_1wtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2_1"/device:GPU:0*
T0*
Tshape0
�
etraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_1_grad/tuple/group_depsNoOp]^training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_1_grad/Reshape_^training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_1_grad/Reshape_1"/device:GPU:0
�
mtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_1_grad/tuple/control_dependencyIdentity\training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_1_grad/Reshapef^training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_1_grad/tuple/group_deps"/device:GPU:0*
T0*o
_classe
caloc:@training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_1_grad/Reshape
�
otraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_1_grad/tuple/control_dependency_1Identity^training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_1_grad/Reshape_1f^training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_1_grad/tuple/group_deps"/device:GPU:0*
T0*q
_classg
ecloc:@training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_1_grad/Reshape_1
�
training_1/gradients/AddN_3AddNhtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Select_1_grad/tuple/control_dependency_1^training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/Tanh_1_grad/TanhGrad"/device:GPU:0*
N*
T0*i
_class_
][loc:@training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Select_1_grad/Select_1
�
Ztraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/add_1_grad/ShapeShape8context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul"/device:GPU:0*
T0*
out_type0
�
\training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/add_1_grad/Shape_1Shape:context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_1"/device:GPU:0*
T0*
out_type0
�
jtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/add_1_grad/BroadcastGradientArgsBroadcastGradientArgsutraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/add_1_grad/BroadcastGradientArgs/StackPopV2wtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/add_1_grad/BroadcastGradientArgs/StackPopV2_1"/device:GPU:0*
T0
�
ptraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/add_1_grad/BroadcastGradientArgs/ConstConst"/device:GPU:0*
valueB :
���������*m
_classc
a_loc:@training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/add_1_grad/Shape*
dtype0
�
ptraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/add_1_grad/BroadcastGradientArgs/f_accStackV2ptraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/add_1_grad/BroadcastGradientArgs/Const"/device:GPU:0*
	elem_type0*m
_classc
a_loc:@training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/add_1_grad/Shape*

stack_name 
�
ptraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/add_1_grad/BroadcastGradientArgs/EnterEnterptraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/add_1_grad/BroadcastGradientArgs/f_acc"/device:GPU:0*
T0*
is_constant(*
parallel_iterations *H

frame_name:8context_repr/bidirectional_rnn/bw/bw/while/while_context
�
vtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/add_1_grad/BroadcastGradientArgs/StackPushV2StackPushV2ptraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/add_1_grad/BroadcastGradientArgs/EnterZtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/add_1_grad/Shape^training_1/gradients/Add_1"/device:GPU:0*
swap_memory( *
T0
�
utraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/add_1_grad/BroadcastGradientArgs/StackPopV2
StackPopV2{training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/add_1_grad/BroadcastGradientArgs/StackPopV2/Enter^training_1/gradients/Sub_1"/device:GPU:0*
	elem_type0
�
{training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/add_1_grad/BroadcastGradientArgs/StackPopV2/EnterEnterptraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/add_1_grad/BroadcastGradientArgs/f_acc"/device:GPU:0*
T0*
is_constant(*
parallel_iterations *]

frame_nameOMtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/while_context
�
rtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/add_1_grad/BroadcastGradientArgs/Const_1Const"/device:GPU:0*
dtype0*
valueB :
���������*o
_classe
caloc:@training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/add_1_grad/Shape_1
�
rtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/add_1_grad/BroadcastGradientArgs/f_acc_1StackV2rtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/add_1_grad/BroadcastGradientArgs/Const_1"/device:GPU:0*
	elem_type0*o
_classe
caloc:@training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/add_1_grad/Shape_1*

stack_name 
�
rtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/add_1_grad/BroadcastGradientArgs/Enter_1Enterrtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/add_1_grad/BroadcastGradientArgs/f_acc_1"/device:GPU:0*
T0*
is_constant(*
parallel_iterations *H

frame_name:8context_repr/bidirectional_rnn/bw/bw/while/while_context
�
xtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/add_1_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2rtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/add_1_grad/BroadcastGradientArgs/Enter_1\training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/add_1_grad/Shape_1^training_1/gradients/Add_1"/device:GPU:0*
T0*
swap_memory( 
�
wtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/add_1_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2}training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/add_1_grad/BroadcastGradientArgs/StackPopV2_1/Enter^training_1/gradients/Sub_1"/device:GPU:0*
	elem_type0
�
}training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/add_1_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnterrtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/add_1_grad/BroadcastGradientArgs/f_acc_1"/device:GPU:0*
T0*
is_constant(*
parallel_iterations *]

frame_nameOMtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/while_context
�
Xtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/add_1_grad/SumSumtraining_1/gradients/AddN_3jtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/add_1_grad/BroadcastGradientArgs"/device:GPU:0*
T0*

Tidx0*
	keep_dims( 
�
\training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/add_1_grad/ReshapeReshapeXtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/add_1_grad/Sumutraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/add_1_grad/BroadcastGradientArgs/StackPopV2"/device:GPU:0*
T0*
Tshape0
�
Ztraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/add_1_grad/Sum_1Sumtraining_1/gradients/AddN_3ltraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/add_1_grad/BroadcastGradientArgs:1"/device:GPU:0*
T0*

Tidx0*
	keep_dims( 
�
^training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/add_1_grad/Reshape_1ReshapeZtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/add_1_grad/Sum_1wtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/add_1_grad/BroadcastGradientArgs/StackPopV2_1"/device:GPU:0*
T0*
Tshape0
�
etraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/add_1_grad/tuple/group_depsNoOp]^training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/add_1_grad/Reshape_^training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/add_1_grad/Reshape_1"/device:GPU:0
�
mtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/add_1_grad/tuple/control_dependencyIdentity\training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/add_1_grad/Reshapef^training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/add_1_grad/tuple/group_deps"/device:GPU:0*
T0*o
_classe
caloc:@training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/add_1_grad/Reshape
�
otraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/add_1_grad/tuple/control_dependency_1Identity^training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/add_1_grad/Reshape_1f^training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/add_1_grad/tuple/group_deps"/device:GPU:0*
T0*q
_classg
ecloc:@training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/add_1_grad/Reshape_1
�
btraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/Sigmoid_grad/SigmoidGradSigmoidGradctraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_grad/Mul_1/StackPopV2ktraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_grad/tuple/control_dependency"/device:GPU:0*
T0
�
training_1/gradients/AddN_4AddNftraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Select_1_grad/tuple/control_dependencymtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_grad/tuple/control_dependency_1"/device:GPU:0*
T0*g
_class]
[Yloc:@training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Select_1_grad/Select*
N
�
dtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/Sigmoid_1_grad/SigmoidGradSigmoidGradetraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_1_grad/Mul_1/StackPopV2mtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_1_grad/tuple/control_dependency"/device:GPU:0*
T0
�
\training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/Tanh_grad/TanhGradTanhGradctraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_1_grad/Mul/StackPopV2otraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/mul_1_grad/tuple/control_dependency_1"/device:GPU:0*
T0
�
Xtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_grad/ShapeShape<context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/Sigmoid"/device:GPU:0*
T0*
out_type0
�
Ztraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_grad/Shape_1Shape5context_repr/bidirectional_rnn/bw/bw/while/Identity_3"/device:GPU:0*
T0*
out_type0
�
htraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_grad/BroadcastGradientArgsBroadcastGradientArgsstraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_grad/BroadcastGradientArgs/StackPopV2utraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_grad/BroadcastGradientArgs/StackPopV2_1"/device:GPU:0*
T0
�
ntraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_grad/BroadcastGradientArgs/ConstConst"/device:GPU:0*
valueB :
���������*k
_classa
_]loc:@training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_grad/Shape*
dtype0
�
ntraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_grad/BroadcastGradientArgs/f_accStackV2ntraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_grad/BroadcastGradientArgs/Const"/device:GPU:0*
	elem_type0*k
_classa
_]loc:@training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_grad/Shape*

stack_name 
�
ntraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_grad/BroadcastGradientArgs/EnterEnterntraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_grad/BroadcastGradientArgs/f_acc"/device:GPU:0*
T0*
is_constant(*
parallel_iterations *H

frame_name:8context_repr/bidirectional_rnn/bw/bw/while/while_context
�
ttraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_grad/BroadcastGradientArgs/StackPushV2StackPushV2ntraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_grad/BroadcastGradientArgs/EnterXtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_grad/Shape^training_1/gradients/Add_1"/device:GPU:0*
swap_memory( *
T0
�
straining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_grad/BroadcastGradientArgs/StackPopV2
StackPopV2ytraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_grad/BroadcastGradientArgs/StackPopV2/Enter^training_1/gradients/Sub_1"/device:GPU:0*
	elem_type0
�
ytraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_grad/BroadcastGradientArgs/StackPopV2/EnterEnterntraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_grad/BroadcastGradientArgs/f_acc"/device:GPU:0*
T0*
is_constant(*
parallel_iterations *]

frame_nameOMtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/while_context
�
ptraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_grad/BroadcastGradientArgs/Const_1Const"/device:GPU:0*
valueB :
���������*m
_classc
a_loc:@training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_grad/Shape_1*
dtype0
�
ptraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_grad/BroadcastGradientArgs/f_acc_1StackV2ptraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_grad/BroadcastGradientArgs/Const_1"/device:GPU:0*
	elem_type0*m
_classc
a_loc:@training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_grad/Shape_1*

stack_name 
�
ptraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_grad/BroadcastGradientArgs/Enter_1Enterptraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_grad/BroadcastGradientArgs/f_acc_1"/device:GPU:0*
T0*
is_constant(*
parallel_iterations *H

frame_name:8context_repr/bidirectional_rnn/bw/bw/while/while_context
�
vtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2ptraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_grad/BroadcastGradientArgs/Enter_1Ztraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_grad/Shape_1^training_1/gradients/Add_1"/device:GPU:0*
T0*
swap_memory( 
�
utraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2{training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_grad/BroadcastGradientArgs/StackPopV2_1/Enter^training_1/gradients/Sub_1"/device:GPU:0*
	elem_type0
�
{training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnterptraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_grad/BroadcastGradientArgs/f_acc_1"/device:GPU:0*
T0*
is_constant(*
parallel_iterations *]

frame_nameOMtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/while_context
�
Vtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_grad/MulMulmtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/add_1_grad/tuple/control_dependencyctraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Select_1_grad/zeros_like/StackPopV2"/device:GPU:0*
T0
�
Vtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_grad/SumSumVtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_grad/Mulhtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_grad/BroadcastGradientArgs"/device:GPU:0*

Tidx0*
	keep_dims( *
T0
�
Ztraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_grad/ReshapeReshapeVtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_grad/Sumstraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_grad/BroadcastGradientArgs/StackPopV2"/device:GPU:0*
T0*
Tshape0
�
Xtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_grad/Mul_1Mulctraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_grad/Mul_1/StackPopV2mtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/add_1_grad/tuple/control_dependency"/device:GPU:0*
T0
�
^training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_grad/Mul_1/ConstConst"/device:GPU:0*
dtype0*
valueB :
���������*O
_classE
CAloc:@context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/Sigmoid
�
^training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_grad/Mul_1/f_accStackV2^training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_grad/Mul_1/Const"/device:GPU:0*

stack_name *
	elem_type0*O
_classE
CAloc:@context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/Sigmoid
�
^training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_grad/Mul_1/EnterEnter^training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_grad/Mul_1/f_acc"/device:GPU:0*
T0*
is_constant(*
parallel_iterations *H

frame_name:8context_repr/bidirectional_rnn/bw/bw/while/while_context
�
dtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_grad/Mul_1/StackPushV2StackPushV2^training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_grad/Mul_1/Enter<context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/Sigmoid^training_1/gradients/Add_1"/device:GPU:0*
T0*
swap_memory( 
�
ctraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_grad/Mul_1/StackPopV2
StackPopV2itraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_grad/Mul_1/StackPopV2/Enter^training_1/gradients/Sub_1"/device:GPU:0*
	elem_type0
�
itraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_grad/Mul_1/StackPopV2/EnterEnter^training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_grad/Mul_1/f_acc"/device:GPU:0*
T0*
is_constant(*
parallel_iterations *]

frame_nameOMtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/while_context
�
Xtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_grad/Sum_1SumXtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_grad/Mul_1jtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_grad/BroadcastGradientArgs:1"/device:GPU:0*

Tidx0*
	keep_dims( *
T0
�
\training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_grad/Reshape_1ReshapeXtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_grad/Sum_1utraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_grad/BroadcastGradientArgs/StackPopV2_1"/device:GPU:0*
T0*
Tshape0
�
ctraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_grad/tuple/group_depsNoOp[^training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_grad/Reshape]^training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_grad/Reshape_1"/device:GPU:0
�
ktraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_grad/tuple/control_dependencyIdentityZtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_grad/Reshaped^training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_grad/tuple/group_deps"/device:GPU:0*
T0*m
_classc
a_loc:@training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_grad/Reshape
�
mtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_grad/tuple/control_dependency_1Identity\training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_grad/Reshape_1d^training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_grad/tuple/group_deps"/device:GPU:0*
T0*o
_classe
caloc:@training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_grad/Reshape_1
�
Ztraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_1_grad/ShapeShape>context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/Sigmoid_1"/device:GPU:0*
T0*
out_type0
�
\training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_1_grad/Shape_1Shape9context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/Tanh"/device:GPU:0*
T0*
out_type0
�
jtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgsutraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2wtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2_1"/device:GPU:0*
T0
�
ptraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_1_grad/BroadcastGradientArgs/ConstConst"/device:GPU:0*
dtype0*
valueB :
���������*m
_classc
a_loc:@training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_1_grad/Shape
�
ptraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_1_grad/BroadcastGradientArgs/f_accStackV2ptraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_1_grad/BroadcastGradientArgs/Const"/device:GPU:0*m
_classc
a_loc:@training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_1_grad/Shape*

stack_name *
	elem_type0
�
ptraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_1_grad/BroadcastGradientArgs/EnterEnterptraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_1_grad/BroadcastGradientArgs/f_acc"/device:GPU:0*
T0*
is_constant(*
parallel_iterations *H

frame_name:8context_repr/bidirectional_rnn/bw/bw/while/while_context
�
vtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPushV2StackPushV2ptraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_1_grad/BroadcastGradientArgs/EnterZtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_1_grad/Shape^training_1/gradients/Add_1"/device:GPU:0*
T0*
swap_memory( 
�
utraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2
StackPopV2{training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2/Enter^training_1/gradients/Sub_1"/device:GPU:0*
	elem_type0
�
{training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2/EnterEnterptraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_1_grad/BroadcastGradientArgs/f_acc"/device:GPU:0*
T0*
is_constant(*
parallel_iterations *]

frame_nameOMtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/while_context
�
rtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_1_grad/BroadcastGradientArgs/Const_1Const"/device:GPU:0*
valueB :
���������*o
_classe
caloc:@training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_1_grad/Shape_1*
dtype0
�
rtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_1_grad/BroadcastGradientArgs/f_acc_1StackV2rtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_1_grad/BroadcastGradientArgs/Const_1"/device:GPU:0*o
_classe
caloc:@training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_1_grad/Shape_1*

stack_name *
	elem_type0
�
rtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_1_grad/BroadcastGradientArgs/Enter_1Enterrtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_1_grad/BroadcastGradientArgs/f_acc_1"/device:GPU:0*
T0*
is_constant(*
parallel_iterations *H

frame_name:8context_repr/bidirectional_rnn/bw/bw/while/while_context
�
xtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2rtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_1_grad/BroadcastGradientArgs/Enter_1\training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_1_grad/Shape_1^training_1/gradients/Add_1"/device:GPU:0*
T0*
swap_memory( 
�
wtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2}training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2_1/Enter^training_1/gradients/Sub_1"/device:GPU:0*
	elem_type0
�
}training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnterrtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_1_grad/BroadcastGradientArgs/f_acc_1"/device:GPU:0*
T0*
is_constant(*
parallel_iterations *]

frame_nameOMtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/while_context
�
Xtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_1_grad/MulMulotraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/add_1_grad/tuple/control_dependency_1ctraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_1_grad/Mul/StackPopV2"/device:GPU:0*
T0
�
^training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_1_grad/Mul/ConstConst"/device:GPU:0*
dtype0*
valueB :
���������*L
_classB
@>loc:@context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/Tanh
�
^training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_1_grad/Mul/f_accStackV2^training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_1_grad/Mul/Const"/device:GPU:0*L
_classB
@>loc:@context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/Tanh*

stack_name *
	elem_type0
�
^training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_1_grad/Mul/EnterEnter^training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_1_grad/Mul/f_acc"/device:GPU:0*
T0*
is_constant(*
parallel_iterations *H

frame_name:8context_repr/bidirectional_rnn/bw/bw/while/while_context
�
dtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_1_grad/Mul/StackPushV2StackPushV2^training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_1_grad/Mul/Enter9context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/Tanh^training_1/gradients/Add_1"/device:GPU:0*
T0*
swap_memory( 
�
ctraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_1_grad/Mul/StackPopV2
StackPopV2itraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_1_grad/Mul/StackPopV2/Enter^training_1/gradients/Sub_1"/device:GPU:0*
	elem_type0
�
itraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_1_grad/Mul/StackPopV2/EnterEnter^training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_1_grad/Mul/f_acc"/device:GPU:0*
parallel_iterations *]

frame_nameOMtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/while_context*
T0*
is_constant(
�
Xtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_1_grad/SumSumXtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_1_grad/Muljtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_1_grad/BroadcastGradientArgs"/device:GPU:0*

Tidx0*
	keep_dims( *
T0
�
\training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_1_grad/ReshapeReshapeXtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_1_grad/Sumutraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2"/device:GPU:0*
T0*
Tshape0
�
Ztraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_1_grad/Mul_1Muletraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_1_grad/Mul_1/StackPopV2otraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/add_1_grad/tuple/control_dependency_1"/device:GPU:0*
T0
�
`training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_1_grad/Mul_1/ConstConst"/device:GPU:0*
valueB :
���������*Q
_classG
ECloc:@context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/Sigmoid_1*
dtype0
�
`training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_1_grad/Mul_1/f_accStackV2`training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_1_grad/Mul_1/Const"/device:GPU:0*
	elem_type0*Q
_classG
ECloc:@context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/Sigmoid_1*

stack_name 
�
`training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_1_grad/Mul_1/EnterEnter`training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_1_grad/Mul_1/f_acc"/device:GPU:0*
parallel_iterations *H

frame_name:8context_repr/bidirectional_rnn/bw/bw/while/while_context*
T0*
is_constant(
�
ftraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_1_grad/Mul_1/StackPushV2StackPushV2`training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_1_grad/Mul_1/Enter>context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/Sigmoid_1^training_1/gradients/Add_1"/device:GPU:0*
swap_memory( *
T0
�
etraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_1_grad/Mul_1/StackPopV2
StackPopV2ktraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_1_grad/Mul_1/StackPopV2/Enter^training_1/gradients/Sub_1"/device:GPU:0*
	elem_type0
�
ktraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_1_grad/Mul_1/StackPopV2/EnterEnter`training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_1_grad/Mul_1/f_acc"/device:GPU:0*
T0*
is_constant(*
parallel_iterations *]

frame_nameOMtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/while_context
�
Ztraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_1_grad/Sum_1SumZtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_1_grad/Mul_1ltraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_1_grad/BroadcastGradientArgs:1"/device:GPU:0*
T0*

Tidx0*
	keep_dims( 
�
^training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_1_grad/Reshape_1ReshapeZtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_1_grad/Sum_1wtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2_1"/device:GPU:0*
T0*
Tshape0
�
etraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_1_grad/tuple/group_depsNoOp]^training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_1_grad/Reshape_^training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_1_grad/Reshape_1"/device:GPU:0
�
mtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_1_grad/tuple/control_dependencyIdentity\training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_1_grad/Reshapef^training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_1_grad/tuple/group_deps"/device:GPU:0*
T0*o
_classe
caloc:@training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_1_grad/Reshape
�
otraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_1_grad/tuple/control_dependency_1Identity^training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_1_grad/Reshape_1f^training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_1_grad/tuple/group_deps"/device:GPU:0*
T0*q
_classg
ecloc:@training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_1_grad/Reshape_1
�
Xtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/add_grad/ShapeShape<context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/split:2"/device:GPU:0*
T0*
out_type0
�
Ztraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/add_grad/Shape_1Const^training_1/gradients/Sub"/device:GPU:0*
valueB *
dtype0
�
htraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/add_grad/BroadcastGradientArgsBroadcastGradientArgsstraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/add_grad/BroadcastGradientArgs/StackPopV2Ztraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/add_grad/Shape_1"/device:GPU:0*
T0
�
ntraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/add_grad/BroadcastGradientArgs/ConstConst"/device:GPU:0*
valueB :
���������*k
_classa
_]loc:@training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/add_grad/Shape*
dtype0
�
ntraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/add_grad/BroadcastGradientArgs/f_accStackV2ntraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/add_grad/BroadcastGradientArgs/Const"/device:GPU:0*k
_classa
_]loc:@training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/add_grad/Shape*

stack_name *
	elem_type0
�
ntraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/add_grad/BroadcastGradientArgs/EnterEnterntraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/add_grad/BroadcastGradientArgs/f_acc"/device:GPU:0*
T0*
is_constant(*
parallel_iterations *H

frame_name:8context_repr/bidirectional_rnn/fw/fw/while/while_context
�
ttraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/add_grad/BroadcastGradientArgs/StackPushV2StackPushV2ntraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/add_grad/BroadcastGradientArgs/EnterXtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/add_grad/Shape^training_1/gradients/Add"/device:GPU:0*
T0*
swap_memory( 
�
straining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/add_grad/BroadcastGradientArgs/StackPopV2
StackPopV2ytraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/add_grad/BroadcastGradientArgs/StackPopV2/Enter^training_1/gradients/Sub"/device:GPU:0*
	elem_type0
�
ytraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/add_grad/BroadcastGradientArgs/StackPopV2/EnterEnterntraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/add_grad/BroadcastGradientArgs/f_acc"/device:GPU:0*
T0*
is_constant(*
parallel_iterations *]

frame_nameOMtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/while_context
�
Vtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/add_grad/SumSumbtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/Sigmoid_grad/SigmoidGradhtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/add_grad/BroadcastGradientArgs"/device:GPU:0*

Tidx0*
	keep_dims( *
T0
�
Ztraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/add_grad/ReshapeReshapeVtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/add_grad/Sumstraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/add_grad/BroadcastGradientArgs/StackPopV2"/device:GPU:0*
T0*
Tshape0
�
Xtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/add_grad/Sum_1Sumbtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/Sigmoid_grad/SigmoidGradjtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/add_grad/BroadcastGradientArgs:1"/device:GPU:0*

Tidx0*
	keep_dims( *
T0
�
\training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/add_grad/Reshape_1ReshapeXtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/add_grad/Sum_1Ztraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/add_grad/Shape_1"/device:GPU:0*
T0*
Tshape0
�
ctraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/add_grad/tuple/group_depsNoOp[^training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/add_grad/Reshape]^training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/add_grad/Reshape_1"/device:GPU:0
�
ktraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/add_grad/tuple/control_dependencyIdentityZtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/add_grad/Reshaped^training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/add_grad/tuple/group_deps"/device:GPU:0*
T0*m
_classc
a_loc:@training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/add_grad/Reshape
�
mtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/add_grad/tuple/control_dependency_1Identity\training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/add_grad/Reshape_1d^training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/add_grad/tuple/group_deps"/device:GPU:0*
T0*o
_classe
caloc:@training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/add_grad/Reshape_1
�
]training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Switch_3_grad_1/NextIterationNextIterationtraining_1/gradients/AddN_4"/device:GPU:0*
T0
�
btraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/Sigmoid_grad/SigmoidGradSigmoidGradctraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_grad/Mul_1/StackPopV2ktraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_grad/tuple/control_dependency"/device:GPU:0*
T0
�
training_1/gradients/AddN_5AddNftraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Select_1_grad/tuple/control_dependencymtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_grad/tuple/control_dependency_1"/device:GPU:0*
T0*g
_class]
[Yloc:@training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Select_1_grad/Select*
N
�
dtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/Sigmoid_1_grad/SigmoidGradSigmoidGradetraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_1_grad/Mul_1/StackPopV2mtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_1_grad/tuple/control_dependency"/device:GPU:0*
T0
�
\training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/Tanh_grad/TanhGradTanhGradctraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_1_grad/Mul/StackPopV2otraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/mul_1_grad/tuple/control_dependency_1"/device:GPU:0*
T0
�
[training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/split_grad/concatConcatV2dtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/Sigmoid_1_grad/SigmoidGrad\training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/Tanh_grad/TanhGradktraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/add_grad/tuple/control_dependencydtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/Sigmoid_2_grad/SigmoidGradatraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/split_grad/concat/Const"/device:GPU:0*
N*

Tidx0*
T0
�
atraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/split_grad/concat/ConstConst^training_1/gradients/Sub"/device:GPU:0*
value	B :*
dtype0
�
Xtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/add_grad/ShapeShape<context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/split:2"/device:GPU:0*
T0*
out_type0
�
Ztraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/add_grad/Shape_1Const^training_1/gradients/Sub_1"/device:GPU:0*
valueB *
dtype0
�
htraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/add_grad/BroadcastGradientArgsBroadcastGradientArgsstraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/add_grad/BroadcastGradientArgs/StackPopV2Ztraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/add_grad/Shape_1"/device:GPU:0*
T0
�
ntraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/add_grad/BroadcastGradientArgs/ConstConst"/device:GPU:0*
valueB :
���������*k
_classa
_]loc:@training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/add_grad/Shape*
dtype0
�
ntraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/add_grad/BroadcastGradientArgs/f_accStackV2ntraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/add_grad/BroadcastGradientArgs/Const"/device:GPU:0*
	elem_type0*k
_classa
_]loc:@training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/add_grad/Shape*

stack_name 
�
ntraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/add_grad/BroadcastGradientArgs/EnterEnterntraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/add_grad/BroadcastGradientArgs/f_acc"/device:GPU:0*
T0*
is_constant(*
parallel_iterations *H

frame_name:8context_repr/bidirectional_rnn/bw/bw/while/while_context
�
ttraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/add_grad/BroadcastGradientArgs/StackPushV2StackPushV2ntraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/add_grad/BroadcastGradientArgs/EnterXtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/add_grad/Shape^training_1/gradients/Add_1"/device:GPU:0*
T0*
swap_memory( 
�
straining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/add_grad/BroadcastGradientArgs/StackPopV2
StackPopV2ytraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/add_grad/BroadcastGradientArgs/StackPopV2/Enter^training_1/gradients/Sub_1"/device:GPU:0*
	elem_type0
�
ytraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/add_grad/BroadcastGradientArgs/StackPopV2/EnterEnterntraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/add_grad/BroadcastGradientArgs/f_acc"/device:GPU:0*
T0*
is_constant(*
parallel_iterations *]

frame_nameOMtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/while_context
�
Vtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/add_grad/SumSumbtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/Sigmoid_grad/SigmoidGradhtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/add_grad/BroadcastGradientArgs"/device:GPU:0*
T0*

Tidx0*
	keep_dims( 
�
Ztraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/add_grad/ReshapeReshapeVtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/add_grad/Sumstraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/add_grad/BroadcastGradientArgs/StackPopV2"/device:GPU:0*
T0*
Tshape0
�
Xtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/add_grad/Sum_1Sumbtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/Sigmoid_grad/SigmoidGradjtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/add_grad/BroadcastGradientArgs:1"/device:GPU:0*

Tidx0*
	keep_dims( *
T0
�
\training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/add_grad/Reshape_1ReshapeXtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/add_grad/Sum_1Ztraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/add_grad/Shape_1"/device:GPU:0*
T0*
Tshape0
�
ctraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/add_grad/tuple/group_depsNoOp[^training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/add_grad/Reshape]^training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/add_grad/Reshape_1"/device:GPU:0
�
ktraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/add_grad/tuple/control_dependencyIdentityZtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/add_grad/Reshaped^training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/add_grad/tuple/group_deps"/device:GPU:0*
T0*m
_classc
a_loc:@training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/add_grad/Reshape
�
mtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/add_grad/tuple/control_dependency_1Identity\training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/add_grad/Reshape_1d^training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/add_grad/tuple/group_deps"/device:GPU:0*
T0*o
_classe
caloc:@training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/add_grad/Reshape_1
�
]training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Switch_3_grad_1/NextIterationNextIterationtraining_1/gradients/AddN_5"/device:GPU:0*
T0
�
btraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/BiasAdd_grad/BiasAddGradBiasAddGrad[training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/split_grad/concat"/device:GPU:0*
T0*
data_formatNHWC
�
gtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/BiasAdd_grad/tuple/group_depsNoOpc^training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/BiasAdd_grad/BiasAddGrad\^training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/split_grad/concat"/device:GPU:0
�
otraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/BiasAdd_grad/tuple/control_dependencyIdentity[training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/split_grad/concath^training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/BiasAdd_grad/tuple/group_deps"/device:GPU:0*
T0*n
_classd
b`loc:@training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/split_grad/concat
�
qtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/BiasAdd_grad/tuple/control_dependency_1Identitybtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/BiasAdd_grad/BiasAddGradh^training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/BiasAdd_grad/tuple/group_deps"/device:GPU:0*
T0*u
_classk
igloc:@training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/BiasAdd_grad/BiasAddGrad
�
[training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/split_grad/concatConcatV2dtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/Sigmoid_1_grad/SigmoidGrad\training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/Tanh_grad/TanhGradktraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/add_grad/tuple/control_dependencydtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/Sigmoid_2_grad/SigmoidGradatraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/split_grad/concat/Const"/device:GPU:0*
T0*
N*

Tidx0
�
atraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/split_grad/concat/ConstConst^training_1/gradients/Sub_1"/device:GPU:0*
value	B :*
dtype0
�
\training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/MatMul_grad/MatMulMatMulotraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/BiasAdd_grad/tuple/control_dependencybtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/MatMul_grad/MatMul/Enter"/device:GPU:0*
T0*
transpose_a( *
transpose_b(
�
btraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/MatMul_grad/MatMul/EnterEnter7context_repr/bidirectional_rnn/fw/lstm_cell/kernel/read"/device:GPU:0*
T0*
is_constant(*
parallel_iterations *]

frame_nameOMtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/while_context
�
^training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/MatMul_grad/MatMul_1MatMulitraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/MatMul_grad/MatMul_1/StackPopV2otraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/BiasAdd_grad/tuple/control_dependency"/device:GPU:0*
transpose_b( *
T0*
transpose_a(
�
dtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/MatMul_grad/MatMul_1/ConstConst"/device:GPU:0*
dtype0*
valueB :
���������*N
_classD
B@loc:@context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/concat
�
dtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/MatMul_grad/MatMul_1/f_accStackV2dtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/MatMul_grad/MatMul_1/Const"/device:GPU:0*N
_classD
B@loc:@context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/concat*

stack_name *
	elem_type0
�
dtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/MatMul_grad/MatMul_1/EnterEnterdtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/MatMul_grad/MatMul_1/f_acc"/device:GPU:0*
T0*
is_constant(*
parallel_iterations *H

frame_name:8context_repr/bidirectional_rnn/fw/fw/while/while_context
�
jtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/MatMul_grad/MatMul_1/StackPushV2StackPushV2dtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/MatMul_grad/MatMul_1/Enter;context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/concat^training_1/gradients/Add"/device:GPU:0*
T0*
swap_memory( 
�
itraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/MatMul_grad/MatMul_1/StackPopV2
StackPopV2otraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/MatMul_grad/MatMul_1/StackPopV2/Enter^training_1/gradients/Sub"/device:GPU:0*
	elem_type0
�
otraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/MatMul_grad/MatMul_1/StackPopV2/EnterEnterdtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/MatMul_grad/MatMul_1/f_acc"/device:GPU:0*
parallel_iterations *]

frame_nameOMtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/while_context*
T0*
is_constant(
�
ftraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/MatMul_grad/tuple/group_depsNoOp]^training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/MatMul_grad/MatMul_^training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/MatMul_grad/MatMul_1"/device:GPU:0
�
ntraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/MatMul_grad/tuple/control_dependencyIdentity\training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/MatMul_grad/MatMulg^training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/MatMul_grad/tuple/group_deps"/device:GPU:0*
T0*o
_classe
caloc:@training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/MatMul_grad/MatMul
�
ptraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/MatMul_grad/tuple/control_dependency_1Identity^training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/MatMul_grad/MatMul_1g^training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/MatMul_grad/tuple/group_deps"/device:GPU:0*
T0*q
_classg
ecloc:@training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/MatMul_grad/MatMul_1
�
btraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/BiasAdd/Enter_grad/b_accConst"/device:GPU:0*
valueB�*    *
dtype0
�
dtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/BiasAdd/Enter_grad/b_acc_1Enterbtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/BiasAdd/Enter_grad/b_acc"/device:GPU:0*
T0*
is_constant( *
parallel_iterations *]

frame_nameOMtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/while_context
�
dtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/BiasAdd/Enter_grad/b_acc_2Mergedtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/BiasAdd/Enter_grad/b_acc_1jtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/BiasAdd/Enter_grad/NextIteration"/device:GPU:0*
T0*
N
�
ctraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/BiasAdd/Enter_grad/SwitchSwitchdtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/BiasAdd/Enter_grad/b_acc_2training_1/gradients/b_count_2"/device:GPU:0*
T0
�
`training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/BiasAdd/Enter_grad/AddAddetraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/BiasAdd/Enter_grad/Switch:1qtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/BiasAdd_grad/tuple/control_dependency_1"/device:GPU:0*
T0
�
jtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/BiasAdd/Enter_grad/NextIterationNextIteration`training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/BiasAdd/Enter_grad/Add"/device:GPU:0*
T0
�
dtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/BiasAdd/Enter_grad/b_acc_3Exitctraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/BiasAdd/Enter_grad/Switch"/device:GPU:0*
T0
�
btraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/BiasAdd_grad/BiasAddGradBiasAddGrad[training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/split_grad/concat"/device:GPU:0*
data_formatNHWC*
T0
�
gtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/BiasAdd_grad/tuple/group_depsNoOpc^training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/BiasAdd_grad/BiasAddGrad\^training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/split_grad/concat"/device:GPU:0
�
otraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/BiasAdd_grad/tuple/control_dependencyIdentity[training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/split_grad/concath^training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/BiasAdd_grad/tuple/group_deps"/device:GPU:0*
T0*n
_classd
b`loc:@training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/split_grad/concat
�
qtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/BiasAdd_grad/tuple/control_dependency_1Identitybtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/BiasAdd_grad/BiasAddGradh^training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/BiasAdd_grad/tuple/group_deps"/device:GPU:0*
T0*u
_classk
igloc:@training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/BiasAdd_grad/BiasAddGrad
�
[training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/concat_grad/ConstConst^training_1/gradients/Sub"/device:GPU:0*
value	B :*
dtype0
�
Ztraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/concat_grad/RankConst^training_1/gradients/Sub"/device:GPU:0*
dtype0*
value	B :
�
Ytraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/concat_grad/modFloorMod[training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/concat_grad/ConstZtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/concat_grad/Rank"/device:GPU:0*
T0
�
[training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/concat_grad/ShapeShape<context_repr/bidirectional_rnn/fw/fw/while/TensorArrayReadV3"/device:GPU:0*
T0*
out_type0
�
\training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/concat_grad/ShapeNShapeNgtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/concat_grad/ShapeN/StackPopV2ctraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Select_2_grad/zeros_like/StackPopV2"/device:GPU:0*
T0*
out_type0*
N
�
btraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/concat_grad/ShapeN/ConstConst"/device:GPU:0*
dtype0*
valueB :
���������*O
_classE
CAloc:@context_repr/bidirectional_rnn/fw/fw/while/TensorArrayReadV3
�
btraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/concat_grad/ShapeN/f_accStackV2btraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/concat_grad/ShapeN/Const"/device:GPU:0*O
_classE
CAloc:@context_repr/bidirectional_rnn/fw/fw/while/TensorArrayReadV3*

stack_name *
	elem_type0
�
btraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/concat_grad/ShapeN/EnterEnterbtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/concat_grad/ShapeN/f_acc"/device:GPU:0*
parallel_iterations *H

frame_name:8context_repr/bidirectional_rnn/fw/fw/while/while_context*
T0*
is_constant(
�
htraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/concat_grad/ShapeN/StackPushV2StackPushV2btraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/concat_grad/ShapeN/Enter<context_repr/bidirectional_rnn/fw/fw/while/TensorArrayReadV3^training_1/gradients/Add"/device:GPU:0*
swap_memory( *
T0
�
gtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/concat_grad/ShapeN/StackPopV2
StackPopV2mtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/concat_grad/ShapeN/StackPopV2/Enter^training_1/gradients/Sub"/device:GPU:0*
	elem_type0
�
mtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/concat_grad/ShapeN/StackPopV2/EnterEnterbtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/concat_grad/ShapeN/f_acc"/device:GPU:0*
parallel_iterations *]

frame_nameOMtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/while_context*
T0*
is_constant(
�
btraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/concat_grad/ConcatOffsetConcatOffsetYtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/concat_grad/mod\training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/concat_grad/ShapeN^training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/concat_grad/ShapeN:1"/device:GPU:0*
N
�
[training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/concat_grad/SliceSlicentraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/MatMul_grad/tuple/control_dependencybtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/concat_grad/ConcatOffset\training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/concat_grad/ShapeN"/device:GPU:0*
T0*
Index0
�
]training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/concat_grad/Slice_1Slicentraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/MatMul_grad/tuple/control_dependencydtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/concat_grad/ConcatOffset:1^training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/concat_grad/ShapeN:1"/device:GPU:0*
T0*
Index0
�
ftraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/concat_grad/tuple/group_depsNoOp\^training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/concat_grad/Slice^^training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/concat_grad/Slice_1"/device:GPU:0
�
ntraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/concat_grad/tuple/control_dependencyIdentity[training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/concat_grad/Sliceg^training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/concat_grad/tuple/group_deps"/device:GPU:0*
T0*n
_classd
b`loc:@training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/concat_grad/Slice
�
ptraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/concat_grad/tuple/control_dependency_1Identity]training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/concat_grad/Slice_1g^training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/concat_grad/tuple/group_deps"/device:GPU:0*
T0*p
_classf
dbloc:@training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/concat_grad/Slice_1
�
atraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/MatMul/Enter_grad/b_accConst"/device:GPU:0*
valueB
��*    *
dtype0
�
ctraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/MatMul/Enter_grad/b_acc_1Enteratraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/MatMul/Enter_grad/b_acc"/device:GPU:0*
parallel_iterations *]

frame_nameOMtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/while_context*
T0*
is_constant( 
�
ctraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/MatMul/Enter_grad/b_acc_2Mergectraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/MatMul/Enter_grad/b_acc_1itraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/MatMul/Enter_grad/NextIteration"/device:GPU:0*
T0*
N
�
btraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/MatMul/Enter_grad/SwitchSwitchctraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/MatMul/Enter_grad/b_acc_2training_1/gradients/b_count_2"/device:GPU:0*
T0
�
_training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/MatMul/Enter_grad/AddAdddtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/MatMul/Enter_grad/Switch:1ptraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/MatMul_grad/tuple/control_dependency_1"/device:GPU:0*
T0
�
itraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/MatMul/Enter_grad/NextIterationNextIteration_training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/MatMul/Enter_grad/Add"/device:GPU:0*
T0
�
ctraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/MatMul/Enter_grad/b_acc_3Exitbtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/MatMul/Enter_grad/Switch"/device:GPU:0*
T0
�
\training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/MatMul_grad/MatMulMatMulotraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/BiasAdd_grad/tuple/control_dependencybtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/MatMul_grad/MatMul/Enter"/device:GPU:0*
T0*
transpose_a( *
transpose_b(
�
btraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/MatMul_grad/MatMul/EnterEnter7context_repr/bidirectional_rnn/bw/lstm_cell/kernel/read"/device:GPU:0*
T0*
is_constant(*
parallel_iterations *]

frame_nameOMtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/while_context
�
^training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/MatMul_grad/MatMul_1MatMulitraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/MatMul_grad/MatMul_1/StackPopV2otraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/BiasAdd_grad/tuple/control_dependency"/device:GPU:0*
transpose_a(*
transpose_b( *
T0
�
dtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/MatMul_grad/MatMul_1/ConstConst"/device:GPU:0*
valueB :
���������*N
_classD
B@loc:@context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/concat*
dtype0
�
dtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/MatMul_grad/MatMul_1/f_accStackV2dtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/MatMul_grad/MatMul_1/Const"/device:GPU:0*

stack_name *
	elem_type0*N
_classD
B@loc:@context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/concat
�
dtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/MatMul_grad/MatMul_1/EnterEnterdtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/MatMul_grad/MatMul_1/f_acc"/device:GPU:0*
T0*
is_constant(*
parallel_iterations *H

frame_name:8context_repr/bidirectional_rnn/bw/bw/while/while_context
�
jtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/MatMul_grad/MatMul_1/StackPushV2StackPushV2dtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/MatMul_grad/MatMul_1/Enter;context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/concat^training_1/gradients/Add_1"/device:GPU:0*
T0*
swap_memory( 
�
itraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/MatMul_grad/MatMul_1/StackPopV2
StackPopV2otraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/MatMul_grad/MatMul_1/StackPopV2/Enter^training_1/gradients/Sub_1"/device:GPU:0*
	elem_type0
�
otraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/MatMul_grad/MatMul_1/StackPopV2/EnterEnterdtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/MatMul_grad/MatMul_1/f_acc"/device:GPU:0*
T0*
is_constant(*
parallel_iterations *]

frame_nameOMtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/while_context
�
ftraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/MatMul_grad/tuple/group_depsNoOp]^training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/MatMul_grad/MatMul_^training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/MatMul_grad/MatMul_1"/device:GPU:0
�
ntraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/MatMul_grad/tuple/control_dependencyIdentity\training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/MatMul_grad/MatMulg^training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/MatMul_grad/tuple/group_deps"/device:GPU:0*
T0*o
_classe
caloc:@training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/MatMul_grad/MatMul
�
ptraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/MatMul_grad/tuple/control_dependency_1Identity^training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/MatMul_grad/MatMul_1g^training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/MatMul_grad/tuple/group_deps"/device:GPU:0*
T0*q
_classg
ecloc:@training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/MatMul_grad/MatMul_1
�
btraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/BiasAdd/Enter_grad/b_accConst"/device:GPU:0*
valueB�*    *
dtype0
�
dtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/BiasAdd/Enter_grad/b_acc_1Enterbtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/BiasAdd/Enter_grad/b_acc"/device:GPU:0*
T0*
is_constant( *
parallel_iterations *]

frame_nameOMtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/while_context
�
dtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/BiasAdd/Enter_grad/b_acc_2Mergedtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/BiasAdd/Enter_grad/b_acc_1jtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/BiasAdd/Enter_grad/NextIteration"/device:GPU:0*
T0*
N
�
ctraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/BiasAdd/Enter_grad/SwitchSwitchdtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/BiasAdd/Enter_grad/b_acc_2training_1/gradients/b_count_6"/device:GPU:0*
T0
�
`training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/BiasAdd/Enter_grad/AddAddetraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/BiasAdd/Enter_grad/Switch:1qtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/BiasAdd_grad/tuple/control_dependency_1"/device:GPU:0*
T0
�
jtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/BiasAdd/Enter_grad/NextIterationNextIteration`training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/BiasAdd/Enter_grad/Add"/device:GPU:0*
T0
�
dtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/BiasAdd/Enter_grad/b_acc_3Exitctraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/BiasAdd/Enter_grad/Switch"/device:GPU:0*
T0
�
xtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3TensorArrayGradV3~training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/Enter�training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/Enter_1^training_1/gradients/Sub"/device:GPU:0* 
sourcetraining_1/gradients*U
_classK
IGloc:@context_repr/bidirectional_rnn/fw/fw/while/TensorArrayReadV3/Enter
�
~training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/EnterEnter2context_repr/bidirectional_rnn/fw/fw/TensorArray_1"/device:GPU:0*
T0*
is_constant(*U
_classK
IGloc:@context_repr/bidirectional_rnn/fw/fw/while/TensorArrayReadV3/Enter*
parallel_iterations *]

frame_nameOMtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/while_context
�
�training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/Enter_1Enter_context_repr/bidirectional_rnn/fw/fw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3"/device:GPU:0*
parallel_iterations *]

frame_nameOMtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/while_context*
T0*
is_constant(*U
_classK
IGloc:@context_repr/bidirectional_rnn/fw/fw/while/TensorArrayReadV3/Enter
�
ttraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/TensorArrayReadV3_grad/TensorArrayGrad/gradient_flowIdentity�training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/Enter_1y^training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3"/device:GPU:0*
T0*U
_classK
IGloc:@context_repr/bidirectional_rnn/fw/fw/while/TensorArrayReadV3/Enter
�
ztraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3TensorArrayWriteV3xtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3�training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2ntraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/concat_grad/tuple/control_dependencyttraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/TensorArrayReadV3_grad/TensorArrayGrad/gradient_flow"/device:GPU:0*
T0
�
training_1/gradients/AddN_6AddNftraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Select_2_grad/tuple/control_dependencyptraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/concat_grad/tuple/control_dependency_1"/device:GPU:0*
T0*g
_class]
[Yloc:@training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Select_2_grad/Select*
N
�
[training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/concat_grad/ConstConst^training_1/gradients/Sub_1"/device:GPU:0*
dtype0*
value	B :
�
Ztraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/concat_grad/RankConst^training_1/gradients/Sub_1"/device:GPU:0*
value	B :*
dtype0
�
Ytraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/concat_grad/modFloorMod[training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/concat_grad/ConstZtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/concat_grad/Rank"/device:GPU:0*
T0
�
[training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/concat_grad/ShapeShape<context_repr/bidirectional_rnn/bw/bw/while/TensorArrayReadV3"/device:GPU:0*
T0*
out_type0
�
\training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/concat_grad/ShapeNShapeNgtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/concat_grad/ShapeN/StackPopV2ctraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Select_2_grad/zeros_like/StackPopV2"/device:GPU:0*
T0*
out_type0*
N
�
btraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/concat_grad/ShapeN/ConstConst"/device:GPU:0*
valueB :
���������*O
_classE
CAloc:@context_repr/bidirectional_rnn/bw/bw/while/TensorArrayReadV3*
dtype0
�
btraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/concat_grad/ShapeN/f_accStackV2btraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/concat_grad/ShapeN/Const"/device:GPU:0*
	elem_type0*O
_classE
CAloc:@context_repr/bidirectional_rnn/bw/bw/while/TensorArrayReadV3*

stack_name 
�
btraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/concat_grad/ShapeN/EnterEnterbtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/concat_grad/ShapeN/f_acc"/device:GPU:0*
T0*
is_constant(*
parallel_iterations *H

frame_name:8context_repr/bidirectional_rnn/bw/bw/while/while_context
�
htraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/concat_grad/ShapeN/StackPushV2StackPushV2btraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/concat_grad/ShapeN/Enter<context_repr/bidirectional_rnn/bw/bw/while/TensorArrayReadV3^training_1/gradients/Add_1"/device:GPU:0*
swap_memory( *
T0
�
gtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/concat_grad/ShapeN/StackPopV2
StackPopV2mtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/concat_grad/ShapeN/StackPopV2/Enter^training_1/gradients/Sub_1"/device:GPU:0*
	elem_type0
�
mtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/concat_grad/ShapeN/StackPopV2/EnterEnterbtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/concat_grad/ShapeN/f_acc"/device:GPU:0*
T0*
is_constant(*
parallel_iterations *]

frame_nameOMtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/while_context
�
btraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/concat_grad/ConcatOffsetConcatOffsetYtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/concat_grad/mod\training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/concat_grad/ShapeN^training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/concat_grad/ShapeN:1"/device:GPU:0*
N
�
[training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/concat_grad/SliceSlicentraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/MatMul_grad/tuple/control_dependencybtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/concat_grad/ConcatOffset\training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/concat_grad/ShapeN"/device:GPU:0*
T0*
Index0
�
]training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/concat_grad/Slice_1Slicentraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/MatMul_grad/tuple/control_dependencydtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/concat_grad/ConcatOffset:1^training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/concat_grad/ShapeN:1"/device:GPU:0*
T0*
Index0
�
ftraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/concat_grad/tuple/group_depsNoOp\^training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/concat_grad/Slice^^training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/concat_grad/Slice_1"/device:GPU:0
�
ntraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/concat_grad/tuple/control_dependencyIdentity[training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/concat_grad/Sliceg^training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/concat_grad/tuple/group_deps"/device:GPU:0*
T0*n
_classd
b`loc:@training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/concat_grad/Slice
�
ptraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/concat_grad/tuple/control_dependency_1Identity]training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/concat_grad/Slice_1g^training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/concat_grad/tuple/group_deps"/device:GPU:0*
T0*p
_classf
dbloc:@training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/concat_grad/Slice_1
�
atraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/MatMul/Enter_grad/b_accConst"/device:GPU:0*
valueB
��*    *
dtype0
�
ctraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/MatMul/Enter_grad/b_acc_1Enteratraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/MatMul/Enter_grad/b_acc"/device:GPU:0*
T0*
is_constant( *
parallel_iterations *]

frame_nameOMtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/while_context
�
ctraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/MatMul/Enter_grad/b_acc_2Mergectraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/MatMul/Enter_grad/b_acc_1itraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/MatMul/Enter_grad/NextIteration"/device:GPU:0*
T0*
N
�
btraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/MatMul/Enter_grad/SwitchSwitchctraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/MatMul/Enter_grad/b_acc_2training_1/gradients/b_count_6"/device:GPU:0*
T0
�
_training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/MatMul/Enter_grad/AddAdddtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/MatMul/Enter_grad/Switch:1ptraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/MatMul_grad/tuple/control_dependency_1"/device:GPU:0*
T0
�
itraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/MatMul/Enter_grad/NextIterationNextIteration_training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/MatMul/Enter_grad/Add"/device:GPU:0*
T0
�
ctraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/MatMul/Enter_grad/b_acc_3Exitbtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/MatMul/Enter_grad/Switch"/device:GPU:0*
T0
�
dtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/TensorArrayReadV3/Enter_1_grad/b_accConst"/device:GPU:0*
valueB
 *    *
dtype0
�
ftraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/TensorArrayReadV3/Enter_1_grad/b_acc_1Enterdtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/TensorArrayReadV3/Enter_1_grad/b_acc"/device:GPU:0*
T0*
is_constant( *
parallel_iterations *]

frame_nameOMtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/while_context
�
ftraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/TensorArrayReadV3/Enter_1_grad/b_acc_2Mergeftraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/TensorArrayReadV3/Enter_1_grad/b_acc_1ltraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/TensorArrayReadV3/Enter_1_grad/NextIteration"/device:GPU:0*
T0*
N
�
etraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/TensorArrayReadV3/Enter_1_grad/SwitchSwitchftraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/TensorArrayReadV3/Enter_1_grad/b_acc_2training_1/gradients/b_count_2"/device:GPU:0*
T0
�
btraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/TensorArrayReadV3/Enter_1_grad/AddAddgtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/TensorArrayReadV3/Enter_1_grad/Switch:1ztraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3"/device:GPU:0*
T0
�
ltraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/TensorArrayReadV3/Enter_1_grad/NextIterationNextIterationbtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/TensorArrayReadV3/Enter_1_grad/Add"/device:GPU:0*
T0
�
ftraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/TensorArrayReadV3/Enter_1_grad/b_acc_3Exitetraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/TensorArrayReadV3/Enter_1_grad/Switch"/device:GPU:0*
T0
�
]training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/Switch_4_grad_1/NextIterationNextIterationtraining_1/gradients/AddN_6"/device:GPU:0*
T0
�
xtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3TensorArrayGradV3~training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/Enter�training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/Enter_1^training_1/gradients/Sub_1"/device:GPU:0* 
sourcetraining_1/gradients*U
_classK
IGloc:@context_repr/bidirectional_rnn/bw/bw/while/TensorArrayReadV3/Enter
�
~training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/EnterEnter2context_repr/bidirectional_rnn/bw/bw/TensorArray_1"/device:GPU:0*
T0*
is_constant(*U
_classK
IGloc:@context_repr/bidirectional_rnn/bw/bw/while/TensorArrayReadV3/Enter*
parallel_iterations *]

frame_nameOMtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/while_context
�
�training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/Enter_1Enter_context_repr/bidirectional_rnn/bw/bw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3"/device:GPU:0*
T0*
is_constant(*U
_classK
IGloc:@context_repr/bidirectional_rnn/bw/bw/while/TensorArrayReadV3/Enter*
parallel_iterations *]

frame_nameOMtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/while_context
�
ttraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/TensorArrayReadV3_grad/TensorArrayGrad/gradient_flowIdentity�training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/Enter_1y^training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3"/device:GPU:0*
T0*U
_classK
IGloc:@context_repr/bidirectional_rnn/bw/bw/while/TensorArrayReadV3/Enter
�
ztraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3TensorArrayWriteV3xtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3�training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2ntraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/concat_grad/tuple/control_dependencyttraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/TensorArrayReadV3_grad/TensorArrayGrad/gradient_flow"/device:GPU:0*
T0
�
training_1/gradients/AddN_7AddNftraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Select_2_grad/tuple/control_dependencyptraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/concat_grad/tuple/control_dependency_1"/device:GPU:0*
T0*g
_class]
[Yloc:@training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Select_2_grad/Select*
N
�
�training_1/gradients/context_repr/bidirectional_rnn/fw/fw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/TensorArrayGradV3TensorArrayGradV32context_repr/bidirectional_rnn/fw/fw/TensorArray_1ftraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/TensorArrayReadV3/Enter_1_grad/b_acc_3* 
sourcetraining_1/gradients*E
_class;
97loc:@context_repr/bidirectional_rnn/fw/fw/TensorArray_1
�
�training_1/gradients/context_repr/bidirectional_rnn/fw/fw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/gradient_flowIdentityftraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/TensorArrayReadV3/Enter_1_grad/b_acc_3�^training_1/gradients/context_repr/bidirectional_rnn/fw/fw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/TensorArrayGradV3*
T0*E
_class;
97loc:@context_repr/bidirectional_rnn/fw/fw/TensorArray_1
�
�training_1/gradients/context_repr/bidirectional_rnn/fw/fw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGatherV3TensorArrayGatherV3�training_1/gradients/context_repr/bidirectional_rnn/fw/fw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/TensorArrayGradV3=context_repr/bidirectional_rnn/fw/fw/TensorArrayUnstack/range�training_1/gradients/context_repr/bidirectional_rnn/fw/fw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/gradient_flow"/device:GPU:0*
element_shape:*
dtype0
�
�training_1/gradients/context_repr/bidirectional_rnn/fw/fw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/tuple/group_depsNoOp�^training_1/gradients/context_repr/bidirectional_rnn/fw/fw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGatherV3g^training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/TensorArrayReadV3/Enter_1_grad/b_acc_3"/device:GPU:0
�
�training_1/gradients/context_repr/bidirectional_rnn/fw/fw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/tuple/control_dependencyIdentity�training_1/gradients/context_repr/bidirectional_rnn/fw/fw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGatherV3�^training_1/gradients/context_repr/bidirectional_rnn/fw/fw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/tuple/group_deps"/device:GPU:0*
T0*�
_class�
��loc:@training_1/gradients/context_repr/bidirectional_rnn/fw/fw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGatherV3
�
�training_1/gradients/context_repr/bidirectional_rnn/fw/fw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/tuple/control_dependency_1Identityftraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/TensorArrayReadV3/Enter_1_grad/b_acc_3�^training_1/gradients/context_repr/bidirectional_rnn/fw/fw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/tuple/group_deps"/device:GPU:0*
T0*y
_classo
mkloc:@training_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/TensorArrayReadV3/Enter_1_grad/b_acc_3
�
dtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/TensorArrayReadV3/Enter_1_grad/b_accConst"/device:GPU:0*
valueB
 *    *
dtype0
�
ftraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/TensorArrayReadV3/Enter_1_grad/b_acc_1Enterdtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/TensorArrayReadV3/Enter_1_grad/b_acc"/device:GPU:0*
T0*
is_constant( *
parallel_iterations *]

frame_nameOMtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/while_context
�
ftraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/TensorArrayReadV3/Enter_1_grad/b_acc_2Mergeftraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/TensorArrayReadV3/Enter_1_grad/b_acc_1ltraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/TensorArrayReadV3/Enter_1_grad/NextIteration"/device:GPU:0*
T0*
N
�
etraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/TensorArrayReadV3/Enter_1_grad/SwitchSwitchftraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/TensorArrayReadV3/Enter_1_grad/b_acc_2training_1/gradients/b_count_6"/device:GPU:0*
T0
�
btraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/TensorArrayReadV3/Enter_1_grad/AddAddgtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/TensorArrayReadV3/Enter_1_grad/Switch:1ztraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3"/device:GPU:0*
T0
�
ltraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/TensorArrayReadV3/Enter_1_grad/NextIterationNextIterationbtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/TensorArrayReadV3/Enter_1_grad/Add"/device:GPU:0*
T0
�
ftraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/TensorArrayReadV3/Enter_1_grad/b_acc_3Exitetraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/TensorArrayReadV3/Enter_1_grad/Switch"/device:GPU:0*
T0
�
]training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/Switch_4_grad_1/NextIterationNextIterationtraining_1/gradients/AddN_7"/device:GPU:0*
T0
�
Ztraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/transpose_grad/InvertPermutationInvertPermutation+context_repr/bidirectional_rnn/fw/fw/concat"/device:GPU:0*
T0
�
Rtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/transpose_grad/transpose	Transpose�training_1/gradients/context_repr/bidirectional_rnn/fw/fw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/tuple/control_dependencyZtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/transpose_grad/InvertPermutation"/device:GPU:0*
T0*
Tperm0
�
�training_1/gradients/context_repr/bidirectional_rnn/bw/bw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/TensorArrayGradV3TensorArrayGradV32context_repr/bidirectional_rnn/bw/bw/TensorArray_1ftraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/TensorArrayReadV3/Enter_1_grad/b_acc_3* 
sourcetraining_1/gradients*E
_class;
97loc:@context_repr/bidirectional_rnn/bw/bw/TensorArray_1
�
�training_1/gradients/context_repr/bidirectional_rnn/bw/bw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/gradient_flowIdentityftraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/TensorArrayReadV3/Enter_1_grad/b_acc_3�^training_1/gradients/context_repr/bidirectional_rnn/bw/bw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/TensorArrayGradV3*
T0*E
_class;
97loc:@context_repr/bidirectional_rnn/bw/bw/TensorArray_1
�
�training_1/gradients/context_repr/bidirectional_rnn/bw/bw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGatherV3TensorArrayGatherV3�training_1/gradients/context_repr/bidirectional_rnn/bw/bw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/TensorArrayGradV3=context_repr/bidirectional_rnn/bw/bw/TensorArrayUnstack/range�training_1/gradients/context_repr/bidirectional_rnn/bw/bw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/gradient_flow"/device:GPU:0*
element_shape:*
dtype0
�
�training_1/gradients/context_repr/bidirectional_rnn/bw/bw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/tuple/group_depsNoOp�^training_1/gradients/context_repr/bidirectional_rnn/bw/bw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGatherV3g^training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/TensorArrayReadV3/Enter_1_grad/b_acc_3"/device:GPU:0
�
�training_1/gradients/context_repr/bidirectional_rnn/bw/bw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/tuple/control_dependencyIdentity�training_1/gradients/context_repr/bidirectional_rnn/bw/bw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGatherV3�^training_1/gradients/context_repr/bidirectional_rnn/bw/bw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/tuple/group_deps"/device:GPU:0*
T0*�
_class�
��loc:@training_1/gradients/context_repr/bidirectional_rnn/bw/bw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGatherV3
�
�training_1/gradients/context_repr/bidirectional_rnn/bw/bw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/tuple/control_dependency_1Identityftraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/TensorArrayReadV3/Enter_1_grad/b_acc_3�^training_1/gradients/context_repr/bidirectional_rnn/bw/bw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/tuple/group_deps"/device:GPU:0*
T0*y
_classo
mkloc:@training_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/TensorArrayReadV3/Enter_1_grad/b_acc_3
�
Ztraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/transpose_grad/InvertPermutationInvertPermutation+context_repr/bidirectional_rnn/bw/bw/concat"/device:GPU:0*
T0
�
Rtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/transpose_grad/transpose	Transpose�training_1/gradients/context_repr/bidirectional_rnn/bw/bw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/tuple/control_dependencyZtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/transpose_grad/InvertPermutation"/device:GPU:0*
Tperm0*
T0
�
[training_1/gradients/context_repr/bidirectional_rnn/bw/ReverseSequence_grad/ReverseSequenceReverseSequenceRtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/transpose_grad/transposeword_repr/sentence_lengths"/device:GPU:0*
T0*
seq_dim*

Tlen0*
	batch_dim 
�
training_1/gradients/AddN_8AddNRtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/transpose_grad/transpose[training_1/gradients/context_repr/bidirectional_rnn/bw/ReverseSequence_grad/ReverseSequence"/device:GPU:0*
N*
T0*e
_class[
YWloc:@training_1/gradients/context_repr/bidirectional_rnn/fw/fw/transpose_grad/transpose
�
8training_1/gradients/context_repr/dropout/mul_grad/ShapeShapecontext_repr/dropout/div"/device:GPU:0*
T0*
out_type0
�
:training_1/gradients/context_repr/dropout/mul_grad/Shape_1Shapecontext_repr/dropout/Floor"/device:GPU:0*
T0*
out_type0
�
Htraining_1/gradients/context_repr/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs8training_1/gradients/context_repr/dropout/mul_grad/Shape:training_1/gradients/context_repr/dropout/mul_grad/Shape_1"/device:GPU:0*
T0
�
6training_1/gradients/context_repr/dropout/mul_grad/MulMultraining_1/gradients/AddN_8context_repr/dropout/Floor"/device:GPU:0*
T0
�
6training_1/gradients/context_repr/dropout/mul_grad/SumSum6training_1/gradients/context_repr/dropout/mul_grad/MulHtraining_1/gradients/context_repr/dropout/mul_grad/BroadcastGradientArgs"/device:GPU:0*

Tidx0*
	keep_dims( *
T0
�
:training_1/gradients/context_repr/dropout/mul_grad/ReshapeReshape6training_1/gradients/context_repr/dropout/mul_grad/Sum8training_1/gradients/context_repr/dropout/mul_grad/Shape"/device:GPU:0*
T0*
Tshape0
�
8training_1/gradients/context_repr/dropout/mul_grad/Mul_1Mulcontext_repr/dropout/divtraining_1/gradients/AddN_8"/device:GPU:0*
T0
�
8training_1/gradients/context_repr/dropout/mul_grad/Sum_1Sum8training_1/gradients/context_repr/dropout/mul_grad/Mul_1Jtraining_1/gradients/context_repr/dropout/mul_grad/BroadcastGradientArgs:1"/device:GPU:0*
T0*

Tidx0*
	keep_dims( 
�
<training_1/gradients/context_repr/dropout/mul_grad/Reshape_1Reshape8training_1/gradients/context_repr/dropout/mul_grad/Sum_1:training_1/gradients/context_repr/dropout/mul_grad/Shape_1"/device:GPU:0*
T0*
Tshape0
�
Ctraining_1/gradients/context_repr/dropout/mul_grad/tuple/group_depsNoOp;^training_1/gradients/context_repr/dropout/mul_grad/Reshape=^training_1/gradients/context_repr/dropout/mul_grad/Reshape_1"/device:GPU:0
�
Ktraining_1/gradients/context_repr/dropout/mul_grad/tuple/control_dependencyIdentity:training_1/gradients/context_repr/dropout/mul_grad/ReshapeD^training_1/gradients/context_repr/dropout/mul_grad/tuple/group_deps"/device:GPU:0*
T0*M
_classC
A?loc:@training_1/gradients/context_repr/dropout/mul_grad/Reshape
�
Mtraining_1/gradients/context_repr/dropout/mul_grad/tuple/control_dependency_1Identity<training_1/gradients/context_repr/dropout/mul_grad/Reshape_1D^training_1/gradients/context_repr/dropout/mul_grad/tuple/group_deps"/device:GPU:0*
T0*O
_classE
CAloc:@training_1/gradients/context_repr/dropout/mul_grad/Reshape_1
}
8training_1/gradients/context_repr/dropout/div_grad/ShapeShapeword_repr_1/concat"/device:GPU:0*
T0*
out_type0
r
:training_1/gradients/context_repr/dropout/div_grad/Shape_1Const"/device:GPU:0*
valueB *
dtype0
�
Htraining_1/gradients/context_repr/dropout/div_grad/BroadcastGradientArgsBroadcastGradientArgs8training_1/gradients/context_repr/dropout/div_grad/Shape:training_1/gradients/context_repr/dropout/div_grad/Shape_1"/device:GPU:0*
T0
�
:training_1/gradients/context_repr/dropout/div_grad/RealDivRealDivKtraining_1/gradients/context_repr/dropout/mul_grad/tuple/control_dependencytraining/dropout"/device:GPU:0*
T0
�
6training_1/gradients/context_repr/dropout/div_grad/SumSum:training_1/gradients/context_repr/dropout/div_grad/RealDivHtraining_1/gradients/context_repr/dropout/div_grad/BroadcastGradientArgs"/device:GPU:0*
T0*

Tidx0*
	keep_dims( 
�
:training_1/gradients/context_repr/dropout/div_grad/ReshapeReshape6training_1/gradients/context_repr/dropout/div_grad/Sum8training_1/gradients/context_repr/dropout/div_grad/Shape"/device:GPU:0*
T0*
Tshape0
i
6training_1/gradients/context_repr/dropout/div_grad/NegNegword_repr_1/concat"/device:GPU:0*
T0
�
<training_1/gradients/context_repr/dropout/div_grad/RealDiv_1RealDiv6training_1/gradients/context_repr/dropout/div_grad/Negtraining/dropout"/device:GPU:0*
T0
�
<training_1/gradients/context_repr/dropout/div_grad/RealDiv_2RealDiv<training_1/gradients/context_repr/dropout/div_grad/RealDiv_1training/dropout"/device:GPU:0*
T0
�
6training_1/gradients/context_repr/dropout/div_grad/mulMulKtraining_1/gradients/context_repr/dropout/mul_grad/tuple/control_dependency<training_1/gradients/context_repr/dropout/div_grad/RealDiv_2"/device:GPU:0*
T0
�
8training_1/gradients/context_repr/dropout/div_grad/Sum_1Sum6training_1/gradients/context_repr/dropout/div_grad/mulJtraining_1/gradients/context_repr/dropout/div_grad/BroadcastGradientArgs:1"/device:GPU:0*

Tidx0*
	keep_dims( *
T0
�
<training_1/gradients/context_repr/dropout/div_grad/Reshape_1Reshape8training_1/gradients/context_repr/dropout/div_grad/Sum_1:training_1/gradients/context_repr/dropout/div_grad/Shape_1"/device:GPU:0*
T0*
Tshape0
�
Ctraining_1/gradients/context_repr/dropout/div_grad/tuple/group_depsNoOp;^training_1/gradients/context_repr/dropout/div_grad/Reshape=^training_1/gradients/context_repr/dropout/div_grad/Reshape_1"/device:GPU:0
�
Ktraining_1/gradients/context_repr/dropout/div_grad/tuple/control_dependencyIdentity:training_1/gradients/context_repr/dropout/div_grad/ReshapeD^training_1/gradients/context_repr/dropout/div_grad/tuple/group_deps"/device:GPU:0*
T0*M
_classC
A?loc:@training_1/gradients/context_repr/dropout/div_grad/Reshape
�
Mtraining_1/gradients/context_repr/dropout/div_grad/tuple/control_dependency_1Identity<training_1/gradients/context_repr/dropout/div_grad/Reshape_1D^training_1/gradients/context_repr/dropout/div_grad/tuple/group_deps"/device:GPU:0*
T0*O
_classE
CAloc:@training_1/gradients/context_repr/dropout/div_grad/Reshape_1
j
1training_1/gradients/word_repr_1/concat_grad/RankConst"/device:GPU:0*
value	B :*
dtype0
�
0training_1/gradients/word_repr_1/concat_grad/modFloorModword_repr_1/concat/axis1training_1/gradients/word_repr_1/concat_grad/Rank"/device:GPU:0*
T0
|
2training_1/gradients/word_repr_1/concat_grad/ShapeShapechar_repr_cnn/Reshape_1"/device:GPU:0*
T0*
out_type0
�
3training_1/gradients/word_repr_1/concat_grad/ShapeNShapeNchar_repr_cnn/Reshape_1word_repr_1/word_embeddings"/device:GPU:0*
T0*
out_type0*
N
�
9training_1/gradients/word_repr_1/concat_grad/ConcatOffsetConcatOffset0training_1/gradients/word_repr_1/concat_grad/mod3training_1/gradients/word_repr_1/concat_grad/ShapeN5training_1/gradients/word_repr_1/concat_grad/ShapeN:1"/device:GPU:0*
N
�
2training_1/gradients/word_repr_1/concat_grad/SliceSliceKtraining_1/gradients/context_repr/dropout/div_grad/tuple/control_dependency9training_1/gradients/word_repr_1/concat_grad/ConcatOffset3training_1/gradients/word_repr_1/concat_grad/ShapeN"/device:GPU:0*
T0*
Index0
�
4training_1/gradients/word_repr_1/concat_grad/Slice_1SliceKtraining_1/gradients/context_repr/dropout/div_grad/tuple/control_dependency;training_1/gradients/word_repr_1/concat_grad/ConcatOffset:15training_1/gradients/word_repr_1/concat_grad/ShapeN:1"/device:GPU:0*
T0*
Index0
�
=training_1/gradients/word_repr_1/concat_grad/tuple/group_depsNoOp3^training_1/gradients/word_repr_1/concat_grad/Slice5^training_1/gradients/word_repr_1/concat_grad/Slice_1"/device:GPU:0
�
Etraining_1/gradients/word_repr_1/concat_grad/tuple/control_dependencyIdentity2training_1/gradients/word_repr_1/concat_grad/Slice>^training_1/gradients/word_repr_1/concat_grad/tuple/group_deps"/device:GPU:0*
T0*E
_class;
97loc:@training_1/gradients/word_repr_1/concat_grad/Slice
�
Gtraining_1/gradients/word_repr_1/concat_grad/tuple/control_dependency_1Identity4training_1/gradients/word_repr_1/concat_grad/Slice_1>^training_1/gradients/word_repr_1/concat_grad/tuple/group_deps"/device:GPU:0*
T0*G
_class=
;9loc:@training_1/gradients/word_repr_1/concat_grad/Slice_1

7training_1/gradients/char_repr_cnn/Reshape_1_grad/ShapeShapechar_repr_cnn/Squeeze"/device:GPU:0*
T0*
out_type0
�
9training_1/gradients/char_repr_cnn/Reshape_1_grad/ReshapeReshapeEtraining_1/gradients/word_repr_1/concat_grad/tuple/control_dependency7training_1/gradients/char_repr_cnn/Reshape_1_grad/Shape"/device:GPU:0*
T0*
Tshape0
y
5training_1/gradients/char_repr_cnn/Squeeze_grad/ShapeShapechar_repr_cnn/Max"/device:GPU:0*
T0*
out_type0
�
7training_1/gradients/char_repr_cnn/Squeeze_grad/ReshapeReshape9training_1/gradients/char_repr_cnn/Reshape_1_grad/Reshape5training_1/gradients/char_repr_cnn/Squeeze_grad/Shape"/device:GPU:0*
T0*
Tshape0
}
1training_1/gradients/char_repr_cnn/Max_grad/ShapeShapechar_repr_cnn/conv1d/Relu"/device:GPU:0*
T0*
out_type0
i
0training_1/gradients/char_repr_cnn/Max_grad/SizeConst"/device:GPU:0*
dtype0*
value	B :
�
/training_1/gradients/char_repr_cnn/Max_grad/addAdd#char_repr_cnn/Max/reduction_indices0training_1/gradients/char_repr_cnn/Max_grad/Size"/device:GPU:0*
T0
�
/training_1/gradients/char_repr_cnn/Max_grad/modFloorMod/training_1/gradients/char_repr_cnn/Max_grad/add0training_1/gradients/char_repr_cnn/Max_grad/Size"/device:GPU:0*
T0
k
3training_1/gradients/char_repr_cnn/Max_grad/Shape_1Const"/device:GPU:0*
dtype0*
valueB 
p
7training_1/gradients/char_repr_cnn/Max_grad/range/startConst"/device:GPU:0*
value	B : *
dtype0
p
7training_1/gradients/char_repr_cnn/Max_grad/range/deltaConst"/device:GPU:0*
dtype0*
value	B :
�
1training_1/gradients/char_repr_cnn/Max_grad/rangeRange7training_1/gradients/char_repr_cnn/Max_grad/range/start0training_1/gradients/char_repr_cnn/Max_grad/Size7training_1/gradients/char_repr_cnn/Max_grad/range/delta"/device:GPU:0*

Tidx0
o
6training_1/gradients/char_repr_cnn/Max_grad/Fill/valueConst"/device:GPU:0*
value	B :*
dtype0
�
0training_1/gradients/char_repr_cnn/Max_grad/FillFill3training_1/gradients/char_repr_cnn/Max_grad/Shape_16training_1/gradients/char_repr_cnn/Max_grad/Fill/value"/device:GPU:0*
T0*

index_type0
�
9training_1/gradients/char_repr_cnn/Max_grad/DynamicStitchDynamicStitch1training_1/gradients/char_repr_cnn/Max_grad/range/training_1/gradients/char_repr_cnn/Max_grad/mod1training_1/gradients/char_repr_cnn/Max_grad/Shape0training_1/gradients/char_repr_cnn/Max_grad/Fill"/device:GPU:0*
T0*
N
�
3training_1/gradients/char_repr_cnn/Max_grad/ReshapeReshapechar_repr_cnn/Max9training_1/gradients/char_repr_cnn/Max_grad/DynamicStitch"/device:GPU:0*
T0*
Tshape0
�
5training_1/gradients/char_repr_cnn/Max_grad/Reshape_1Reshape7training_1/gradients/char_repr_cnn/Squeeze_grad/Reshape9training_1/gradients/char_repr_cnn/Max_grad/DynamicStitch"/device:GPU:0*
T0*
Tshape0
�
1training_1/gradients/char_repr_cnn/Max_grad/EqualEqual3training_1/gradients/char_repr_cnn/Max_grad/Reshapechar_repr_cnn/conv1d/Relu"/device:GPU:0*
T0
�
0training_1/gradients/char_repr_cnn/Max_grad/CastCast1training_1/gradients/char_repr_cnn/Max_grad/Equal"/device:GPU:0*

DstT0*

SrcT0

�
/training_1/gradients/char_repr_cnn/Max_grad/SumSum0training_1/gradients/char_repr_cnn/Max_grad/Cast#char_repr_cnn/Max/reduction_indices"/device:GPU:0*
T0*

Tidx0*
	keep_dims( 
�
5training_1/gradients/char_repr_cnn/Max_grad/Reshape_2Reshape/training_1/gradients/char_repr_cnn/Max_grad/Sum9training_1/gradients/char_repr_cnn/Max_grad/DynamicStitch"/device:GPU:0*
T0*
Tshape0
�
/training_1/gradients/char_repr_cnn/Max_grad/divRealDiv0training_1/gradients/char_repr_cnn/Max_grad/Cast5training_1/gradients/char_repr_cnn/Max_grad/Reshape_2"/device:GPU:0*
T0
�
/training_1/gradients/char_repr_cnn/Max_grad/mulMul/training_1/gradients/char_repr_cnn/Max_grad/div5training_1/gradients/char_repr_cnn/Max_grad/Reshape_1"/device:GPU:0*
T0
�
<training_1/gradients/char_repr_cnn/conv1d/Relu_grad/ReluGradReluGrad/training_1/gradients/char_repr_cnn/Max_grad/mulchar_repr_cnn/conv1d/Relu"/device:GPU:0*
T0
�
Btraining_1/gradients/char_repr_cnn/conv1d/BiasAdd_grad/BiasAddGradBiasAddGrad<training_1/gradients/char_repr_cnn/conv1d/Relu_grad/ReluGrad"/device:GPU:0*
T0*
data_formatNHWC
�
Gtraining_1/gradients/char_repr_cnn/conv1d/BiasAdd_grad/tuple/group_depsNoOpC^training_1/gradients/char_repr_cnn/conv1d/BiasAdd_grad/BiasAddGrad=^training_1/gradients/char_repr_cnn/conv1d/Relu_grad/ReluGrad"/device:GPU:0
�
Otraining_1/gradients/char_repr_cnn/conv1d/BiasAdd_grad/tuple/control_dependencyIdentity<training_1/gradients/char_repr_cnn/conv1d/Relu_grad/ReluGradH^training_1/gradients/char_repr_cnn/conv1d/BiasAdd_grad/tuple/group_deps"/device:GPU:0*
T0*O
_classE
CAloc:@training_1/gradients/char_repr_cnn/conv1d/Relu_grad/ReluGrad
�
Qtraining_1/gradients/char_repr_cnn/conv1d/BiasAdd_grad/tuple/control_dependency_1IdentityBtraining_1/gradients/char_repr_cnn/conv1d/BiasAdd_grad/BiasAddGradH^training_1/gradients/char_repr_cnn/conv1d/BiasAdd_grad/tuple/group_deps"/device:GPU:0*
T0*U
_classK
IGloc:@training_1/gradients/char_repr_cnn/conv1d/BiasAdd_grad/BiasAddGrad
�
Ctraining_1/gradients/char_repr_cnn/conv1d/conv1d/Squeeze_grad/ShapeShape"char_repr_cnn/conv1d/conv1d/Conv2D"/device:GPU:0*
T0*
out_type0
�
Etraining_1/gradients/char_repr_cnn/conv1d/conv1d/Squeeze_grad/ReshapeReshapeOtraining_1/gradients/char_repr_cnn/conv1d/BiasAdd_grad/tuple/control_dependencyCtraining_1/gradients/char_repr_cnn/conv1d/conv1d/Squeeze_grad/Shape"/device:GPU:0*
T0*
Tshape0
�
Ctraining_1/gradients/char_repr_cnn/conv1d/conv1d/Conv2D_grad/ShapeNShapeN&char_repr_cnn/conv1d/conv1d/ExpandDims(char_repr_cnn/conv1d/conv1d/ExpandDims_1"/device:GPU:0*
T0*
out_type0*
N
�
Ptraining_1/gradients/char_repr_cnn/conv1d/conv1d/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInputCtraining_1/gradients/char_repr_cnn/conv1d/conv1d/Conv2D_grad/ShapeN(char_repr_cnn/conv1d/conv1d/ExpandDims_1Etraining_1/gradients/char_repr_cnn/conv1d/conv1d/Squeeze_grad/Reshape"/device:GPU:0*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME
�
Qtraining_1/gradients/char_repr_cnn/conv1d/conv1d/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilter&char_repr_cnn/conv1d/conv1d/ExpandDimsEtraining_1/gradients/char_repr_cnn/conv1d/conv1d/Conv2D_grad/ShapeN:1Etraining_1/gradients/char_repr_cnn/conv1d/conv1d/Squeeze_grad/Reshape"/device:GPU:0*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME
�
Mtraining_1/gradients/char_repr_cnn/conv1d/conv1d/Conv2D_grad/tuple/group_depsNoOpR^training_1/gradients/char_repr_cnn/conv1d/conv1d/Conv2D_grad/Conv2DBackpropFilterQ^training_1/gradients/char_repr_cnn/conv1d/conv1d/Conv2D_grad/Conv2DBackpropInput"/device:GPU:0
�
Utraining_1/gradients/char_repr_cnn/conv1d/conv1d/Conv2D_grad/tuple/control_dependencyIdentityPtraining_1/gradients/char_repr_cnn/conv1d/conv1d/Conv2D_grad/Conv2DBackpropInputN^training_1/gradients/char_repr_cnn/conv1d/conv1d/Conv2D_grad/tuple/group_deps"/device:GPU:0*
T0*c
_classY
WUloc:@training_1/gradients/char_repr_cnn/conv1d/conv1d/Conv2D_grad/Conv2DBackpropInput
�
Wtraining_1/gradients/char_repr_cnn/conv1d/conv1d/Conv2D_grad/tuple/control_dependency_1IdentityQtraining_1/gradients/char_repr_cnn/conv1d/conv1d/Conv2D_grad/Conv2DBackpropFilterN^training_1/gradients/char_repr_cnn/conv1d/conv1d/Conv2D_grad/tuple/group_deps"/device:GPU:0*
T0*d
_classZ
XVloc:@training_1/gradients/char_repr_cnn/conv1d/conv1d/Conv2D_grad/Conv2DBackpropFilter
�
Ftraining_1/gradients/char_repr_cnn/conv1d/conv1d/ExpandDims_grad/ShapeShapechar_repr_cnn/Reshape"/device:GPU:0*
T0*
out_type0
�
Htraining_1/gradients/char_repr_cnn/conv1d/conv1d/ExpandDims_grad/ReshapeReshapeUtraining_1/gradients/char_repr_cnn/conv1d/conv1d/Conv2D_grad/tuple/control_dependencyFtraining_1/gradients/char_repr_cnn/conv1d/conv1d/ExpandDims_grad/Shape"/device:GPU:0*
T0*
Tshape0
�
Htraining_1/gradients/char_repr_cnn/conv1d/conv1d/ExpandDims_1_grad/ShapeConst"/device:GPU:0*!
valueB"         *
dtype0
�
Jtraining_1/gradients/char_repr_cnn/conv1d/conv1d/ExpandDims_1_grad/ReshapeReshapeWtraining_1/gradients/char_repr_cnn/conv1d/conv1d/Conv2D_grad/tuple/control_dependency_1Htraining_1/gradients/char_repr_cnn/conv1d/conv1d/ExpandDims_1_grad/Shape"/device:GPU:0*
T0*
Tshape0
�
5training_1/gradients/char_repr_cnn/Reshape_grad/ShapeShapechar_repr_cnn/dropout/mul"/device:GPU:0*
T0*
out_type0
�
7training_1/gradients/char_repr_cnn/Reshape_grad/ReshapeReshapeHtraining_1/gradients/char_repr_cnn/conv1d/conv1d/ExpandDims_grad/Reshape5training_1/gradients/char_repr_cnn/Reshape_grad/Shape"/device:GPU:0*
T0*
Tshape0
�
9training_1/gradients/char_repr_cnn/dropout/mul_grad/ShapeShapechar_repr_cnn/dropout/div"/device:GPU:0*
T0*
out_type0
�
;training_1/gradients/char_repr_cnn/dropout/mul_grad/Shape_1Shapechar_repr_cnn/dropout/Floor"/device:GPU:0*
T0*
out_type0
�
Itraining_1/gradients/char_repr_cnn/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs9training_1/gradients/char_repr_cnn/dropout/mul_grad/Shape;training_1/gradients/char_repr_cnn/dropout/mul_grad/Shape_1"/device:GPU:0*
T0
�
7training_1/gradients/char_repr_cnn/dropout/mul_grad/MulMul7training_1/gradients/char_repr_cnn/Reshape_grad/Reshapechar_repr_cnn/dropout/Floor"/device:GPU:0*
T0
�
7training_1/gradients/char_repr_cnn/dropout/mul_grad/SumSum7training_1/gradients/char_repr_cnn/dropout/mul_grad/MulItraining_1/gradients/char_repr_cnn/dropout/mul_grad/BroadcastGradientArgs"/device:GPU:0*
T0*

Tidx0*
	keep_dims( 
�
;training_1/gradients/char_repr_cnn/dropout/mul_grad/ReshapeReshape7training_1/gradients/char_repr_cnn/dropout/mul_grad/Sum9training_1/gradients/char_repr_cnn/dropout/mul_grad/Shape"/device:GPU:0*
T0*
Tshape0
�
9training_1/gradients/char_repr_cnn/dropout/mul_grad/Mul_1Mulchar_repr_cnn/dropout/div7training_1/gradients/char_repr_cnn/Reshape_grad/Reshape"/device:GPU:0*
T0
�
9training_1/gradients/char_repr_cnn/dropout/mul_grad/Sum_1Sum9training_1/gradients/char_repr_cnn/dropout/mul_grad/Mul_1Ktraining_1/gradients/char_repr_cnn/dropout/mul_grad/BroadcastGradientArgs:1"/device:GPU:0*
T0*

Tidx0*
	keep_dims( 
�
=training_1/gradients/char_repr_cnn/dropout/mul_grad/Reshape_1Reshape9training_1/gradients/char_repr_cnn/dropout/mul_grad/Sum_1;training_1/gradients/char_repr_cnn/dropout/mul_grad/Shape_1"/device:GPU:0*
T0*
Tshape0
�
Dtraining_1/gradients/char_repr_cnn/dropout/mul_grad/tuple/group_depsNoOp<^training_1/gradients/char_repr_cnn/dropout/mul_grad/Reshape>^training_1/gradients/char_repr_cnn/dropout/mul_grad/Reshape_1"/device:GPU:0
�
Ltraining_1/gradients/char_repr_cnn/dropout/mul_grad/tuple/control_dependencyIdentity;training_1/gradients/char_repr_cnn/dropout/mul_grad/ReshapeE^training_1/gradients/char_repr_cnn/dropout/mul_grad/tuple/group_deps"/device:GPU:0*
T0*N
_classD
B@loc:@training_1/gradients/char_repr_cnn/dropout/mul_grad/Reshape
�
Ntraining_1/gradients/char_repr_cnn/dropout/mul_grad/tuple/control_dependency_1Identity=training_1/gradients/char_repr_cnn/dropout/mul_grad/Reshape_1E^training_1/gradients/char_repr_cnn/dropout/mul_grad/tuple/group_deps"/device:GPU:0*
T0*P
_classF
DBloc:@training_1/gradients/char_repr_cnn/dropout/mul_grad/Reshape_1
�
9training_1/gradients/char_repr_cnn/dropout/div_grad/ShapeShapechar_repr_cnn/embedding_lookup"/device:GPU:0*
T0*
out_type0
s
;training_1/gradients/char_repr_cnn/dropout/div_grad/Shape_1Const"/device:GPU:0*
valueB *
dtype0
�
Itraining_1/gradients/char_repr_cnn/dropout/div_grad/BroadcastGradientArgsBroadcastGradientArgs9training_1/gradients/char_repr_cnn/dropout/div_grad/Shape;training_1/gradients/char_repr_cnn/dropout/div_grad/Shape_1"/device:GPU:0*
T0
�
;training_1/gradients/char_repr_cnn/dropout/div_grad/RealDivRealDivLtraining_1/gradients/char_repr_cnn/dropout/mul_grad/tuple/control_dependencytraining/dropout"/device:GPU:0*
T0
�
7training_1/gradients/char_repr_cnn/dropout/div_grad/SumSum;training_1/gradients/char_repr_cnn/dropout/div_grad/RealDivItraining_1/gradients/char_repr_cnn/dropout/div_grad/BroadcastGradientArgs"/device:GPU:0*

Tidx0*
	keep_dims( *
T0
�
;training_1/gradients/char_repr_cnn/dropout/div_grad/ReshapeReshape7training_1/gradients/char_repr_cnn/dropout/div_grad/Sum9training_1/gradients/char_repr_cnn/dropout/div_grad/Shape"/device:GPU:0*
T0*
Tshape0
v
7training_1/gradients/char_repr_cnn/dropout/div_grad/NegNegchar_repr_cnn/embedding_lookup"/device:GPU:0*
T0
�
=training_1/gradients/char_repr_cnn/dropout/div_grad/RealDiv_1RealDiv7training_1/gradients/char_repr_cnn/dropout/div_grad/Negtraining/dropout"/device:GPU:0*
T0
�
=training_1/gradients/char_repr_cnn/dropout/div_grad/RealDiv_2RealDiv=training_1/gradients/char_repr_cnn/dropout/div_grad/RealDiv_1training/dropout"/device:GPU:0*
T0
�
7training_1/gradients/char_repr_cnn/dropout/div_grad/mulMulLtraining_1/gradients/char_repr_cnn/dropout/mul_grad/tuple/control_dependency=training_1/gradients/char_repr_cnn/dropout/div_grad/RealDiv_2"/device:GPU:0*
T0
�
9training_1/gradients/char_repr_cnn/dropout/div_grad/Sum_1Sum7training_1/gradients/char_repr_cnn/dropout/div_grad/mulKtraining_1/gradients/char_repr_cnn/dropout/div_grad/BroadcastGradientArgs:1"/device:GPU:0*
T0*

Tidx0*
	keep_dims( 
�
=training_1/gradients/char_repr_cnn/dropout/div_grad/Reshape_1Reshape9training_1/gradients/char_repr_cnn/dropout/div_grad/Sum_1;training_1/gradients/char_repr_cnn/dropout/div_grad/Shape_1"/device:GPU:0*
T0*
Tshape0
�
Dtraining_1/gradients/char_repr_cnn/dropout/div_grad/tuple/group_depsNoOp<^training_1/gradients/char_repr_cnn/dropout/div_grad/Reshape>^training_1/gradients/char_repr_cnn/dropout/div_grad/Reshape_1"/device:GPU:0
�
Ltraining_1/gradients/char_repr_cnn/dropout/div_grad/tuple/control_dependencyIdentity;training_1/gradients/char_repr_cnn/dropout/div_grad/ReshapeE^training_1/gradients/char_repr_cnn/dropout/div_grad/tuple/group_deps"/device:GPU:0*
T0*N
_classD
B@loc:@training_1/gradients/char_repr_cnn/dropout/div_grad/Reshape
�
Ntraining_1/gradients/char_repr_cnn/dropout/div_grad/tuple/control_dependency_1Identity=training_1/gradients/char_repr_cnn/dropout/div_grad/Reshape_1E^training_1/gradients/char_repr_cnn/dropout/div_grad/tuple/group_deps"/device:GPU:0*
T0*P
_classF
DBloc:@training_1/gradients/char_repr_cnn/dropout/div_grad/Reshape_1
�
>training_1/gradients/char_repr_cnn/embedding_lookup_grad/ShapeConst"/device:GPU:0*
dtype0	*%
valueB	"�              *0
_class&
$"loc:@char_repr_cnn/char_embeddings
�
@training_1/gradients/char_repr_cnn/embedding_lookup_grad/ToInt32Cast>training_1/gradients/char_repr_cnn/embedding_lookup_grad/Shape"/device:GPU:0*

SrcT0	*0
_class&
$"loc:@char_repr_cnn/char_embeddings*

DstT0
�
=training_1/gradients/char_repr_cnn/embedding_lookup_grad/SizeSizechar_repr/char_ids"/device:GPU:0*
T0*
out_type0
�
Gtraining_1/gradients/char_repr_cnn/embedding_lookup_grad/ExpandDims/dimConst"/device:GPU:0*
value	B : *
dtype0
�
Ctraining_1/gradients/char_repr_cnn/embedding_lookup_grad/ExpandDims
ExpandDims=training_1/gradients/char_repr_cnn/embedding_lookup_grad/SizeGtraining_1/gradients/char_repr_cnn/embedding_lookup_grad/ExpandDims/dim"/device:GPU:0*
T0*

Tdim0
�
Ltraining_1/gradients/char_repr_cnn/embedding_lookup_grad/strided_slice/stackConst"/device:GPU:0*
valueB:*
dtype0
�
Ntraining_1/gradients/char_repr_cnn/embedding_lookup_grad/strided_slice/stack_1Const"/device:GPU:0*
dtype0*
valueB: 
�
Ntraining_1/gradients/char_repr_cnn/embedding_lookup_grad/strided_slice/stack_2Const"/device:GPU:0*
dtype0*
valueB:
�
Ftraining_1/gradients/char_repr_cnn/embedding_lookup_grad/strided_sliceStridedSlice@training_1/gradients/char_repr_cnn/embedding_lookup_grad/ToInt32Ltraining_1/gradients/char_repr_cnn/embedding_lookup_grad/strided_slice/stackNtraining_1/gradients/char_repr_cnn/embedding_lookup_grad/strided_slice/stack_1Ntraining_1/gradients/char_repr_cnn/embedding_lookup_grad/strided_slice/stack_2"/device:GPU:0*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask*
Index0*
T0*
shrink_axis_mask 
}
Dtraining_1/gradients/char_repr_cnn/embedding_lookup_grad/concat/axisConst"/device:GPU:0*
dtype0*
value	B : 
�
?training_1/gradients/char_repr_cnn/embedding_lookup_grad/concatConcatV2Ctraining_1/gradients/char_repr_cnn/embedding_lookup_grad/ExpandDimsFtraining_1/gradients/char_repr_cnn/embedding_lookup_grad/strided_sliceDtraining_1/gradients/char_repr_cnn/embedding_lookup_grad/concat/axis"/device:GPU:0*
T0*
N*

Tidx0
�
@training_1/gradients/char_repr_cnn/embedding_lookup_grad/ReshapeReshapeLtraining_1/gradients/char_repr_cnn/dropout/div_grad/tuple/control_dependency?training_1/gradients/char_repr_cnn/embedding_lookup_grad/concat"/device:GPU:0*
T0*
Tshape0
�
Btraining_1/gradients/char_repr_cnn/embedding_lookup_grad/Reshape_1Reshapechar_repr/char_idsCtraining_1/gradients/char_repr_cnn/embedding_lookup_grad/ExpandDims"/device:GPU:0*
T0*
Tshape0
i
,training_1/clip_by_value/strided_slice/stackConst"/device:GPU:0*
valueB: *
dtype0
k
.training_1/clip_by_value/strided_slice/stack_1Const"/device:GPU:0*
valueB:*
dtype0
k
.training_1/clip_by_value/strided_slice/stack_2Const"/device:GPU:0*
valueB:*
dtype0
�
&training_1/clip_by_value/strided_sliceStridedSlice@training_1/gradients/char_repr_cnn/embedding_lookup_grad/ToInt32,training_1/clip_by_value/strided_slice/stack.training_1/clip_by_value/strided_slice/stack_1.training_1/clip_by_value/strided_slice/stack_2"/device:GPU:0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
T0*
Index0
�
training_1/clip_by_value/tUnsortedSegmentSum@training_1/gradients/char_repr_cnn/embedding_lookup_grad/ReshapeBtraining_1/gradients/char_repr_cnn/embedding_lookup_grad/Reshape_1&training_1/clip_by_value/strided_slice"/device:GPU:0*
T0*
Tnumsegments0*
Tindices0
^
"training_1/clip_by_value/Minimum/yConst"/device:GPU:0*
valueB
 *  �@*
dtype0
�
 training_1/clip_by_value/MinimumMinimumtraining_1/clip_by_value/t"training_1/clip_by_value/Minimum/y"/device:GPU:0*
T0
V
training_1/clip_by_value/yConst"/device:GPU:0*
valueB
 *  ��*
dtype0
y
training_1/clip_by_valueMaximum training_1/clip_by_value/Minimumtraining_1/clip_by_value/y"/device:GPU:0*
T0
`
$training_1/clip_by_value_1/Minimum/yConst"/device:GPU:0*
dtype0*
valueB
 *  �@
�
"training_1/clip_by_value_1/MinimumMinimumJtraining_1/gradients/char_repr_cnn/conv1d/conv1d/ExpandDims_1_grad/Reshape$training_1/clip_by_value_1/Minimum/y"/device:GPU:0*
T0
X
training_1/clip_by_value_1/yConst"/device:GPU:0*
valueB
 *  ��*
dtype0

training_1/clip_by_value_1Maximum"training_1/clip_by_value_1/Minimumtraining_1/clip_by_value_1/y"/device:GPU:0*
T0
`
$training_1/clip_by_value_2/Minimum/yConst"/device:GPU:0*
valueB
 *  �@*
dtype0
�
"training_1/clip_by_value_2/MinimumMinimumQtraining_1/gradients/char_repr_cnn/conv1d/BiasAdd_grad/tuple/control_dependency_1$training_1/clip_by_value_2/Minimum/y"/device:GPU:0*
T0
X
training_1/clip_by_value_2/yConst"/device:GPU:0*
valueB
 *  ��*
dtype0

training_1/clip_by_value_2Maximum"training_1/clip_by_value_2/Minimumtraining_1/clip_by_value_2/y"/device:GPU:0*
T0
`
$training_1/clip_by_value_3/Minimum/yConst"/device:GPU:0*
dtype0*
valueB
 *  �@
�
"training_1/clip_by_value_3/MinimumMinimumctraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/MatMul/Enter_grad/b_acc_3$training_1/clip_by_value_3/Minimum/y"/device:GPU:0*
T0
X
training_1/clip_by_value_3/yConst"/device:GPU:0*
valueB
 *  ��*
dtype0

training_1/clip_by_value_3Maximum"training_1/clip_by_value_3/Minimumtraining_1/clip_by_value_3/y"/device:GPU:0*
T0
`
$training_1/clip_by_value_4/Minimum/yConst"/device:GPU:0*
dtype0*
valueB
 *  �@
�
"training_1/clip_by_value_4/MinimumMinimumdtraining_1/gradients/context_repr/bidirectional_rnn/fw/fw/while/lstm_cell/BiasAdd/Enter_grad/b_acc_3$training_1/clip_by_value_4/Minimum/y"/device:GPU:0*
T0
X
training_1/clip_by_value_4/yConst"/device:GPU:0*
valueB
 *  ��*
dtype0

training_1/clip_by_value_4Maximum"training_1/clip_by_value_4/Minimumtraining_1/clip_by_value_4/y"/device:GPU:0*
T0
`
$training_1/clip_by_value_5/Minimum/yConst"/device:GPU:0*
dtype0*
valueB
 *  �@
�
"training_1/clip_by_value_5/MinimumMinimumctraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/MatMul/Enter_grad/b_acc_3$training_1/clip_by_value_5/Minimum/y"/device:GPU:0*
T0
X
training_1/clip_by_value_5/yConst"/device:GPU:0*
valueB
 *  ��*
dtype0

training_1/clip_by_value_5Maximum"training_1/clip_by_value_5/Minimumtraining_1/clip_by_value_5/y"/device:GPU:0*
T0
`
$training_1/clip_by_value_6/Minimum/yConst"/device:GPU:0*
valueB
 *  �@*
dtype0
�
"training_1/clip_by_value_6/MinimumMinimumdtraining_1/gradients/context_repr/bidirectional_rnn/bw/bw/while/lstm_cell/BiasAdd/Enter_grad/b_acc_3$training_1/clip_by_value_6/Minimum/y"/device:GPU:0*
T0
X
training_1/clip_by_value_6/yConst"/device:GPU:0*
valueB
 *  ��*
dtype0

training_1/clip_by_value_6Maximum"training_1/clip_by_value_6/Minimumtraining_1/clip_by_value_6/y"/device:GPU:0*
T0
`
$training_1/clip_by_value_7/Minimum/yConst"/device:GPU:0*
valueB
 *  �@*
dtype0
�
"training_1/clip_by_value_7/MinimumMinimumHtraining_1/gradients/context_repr/MatMul_grad/tuple/control_dependency_1$training_1/clip_by_value_7/Minimum/y"/device:GPU:0*
T0
X
training_1/clip_by_value_7/yConst"/device:GPU:0*
valueB
 *  ��*
dtype0

training_1/clip_by_value_7Maximum"training_1/clip_by_value_7/Minimumtraining_1/clip_by_value_7/y"/device:GPU:0*
T0
`
$training_1/clip_by_value_8/Minimum/yConst"/device:GPU:0*
valueB
 *  �@*
dtype0
�
"training_1/clip_by_value_8/MinimumMinimumEtraining_1/gradients/context_repr/add_grad/tuple/control_dependency_1$training_1/clip_by_value_8/Minimum/y"/device:GPU:0*
T0
X
training_1/clip_by_value_8/yConst"/device:GPU:0*
valueB
 *  ��*
dtype0

training_1/clip_by_value_8Maximum"training_1/clip_by_value_8/Minimumtraining_1/clip_by_value_8/y"/device:GPU:0*
T0
�
Qtraining/char_repr_cnn/char_embeddings/Momentum/Initializer/zeros/shape_as_tensorConst"/device:GPU:0*
valueB"�      *0
_class&
$"loc:@char_repr_cnn/char_embeddings*
dtype0
�
Gtraining/char_repr_cnn/char_embeddings/Momentum/Initializer/zeros/ConstConst"/device:GPU:0*
dtype0*
valueB
 *    *0
_class&
$"loc:@char_repr_cnn/char_embeddings
�
Atraining/char_repr_cnn/char_embeddings/Momentum/Initializer/zerosFillQtraining/char_repr_cnn/char_embeddings/Momentum/Initializer/zeros/shape_as_tensorGtraining/char_repr_cnn/char_embeddings/Momentum/Initializer/zeros/Const"/device:GPU:0*
T0*

index_type0*0
_class&
$"loc:@char_repr_cnn/char_embeddings
�
/training/char_repr_cnn/char_embeddings/Momentum
VariableV2"/device:GPU:0*
shape:	�*
shared_name *0
_class&
$"loc:@char_repr_cnn/char_embeddings*
dtype0*
	container 
�
6training/char_repr_cnn/char_embeddings/Momentum/AssignAssign/training/char_repr_cnn/char_embeddings/MomentumAtraining/char_repr_cnn/char_embeddings/Momentum/Initializer/zeros"/device:GPU:0*
T0*0
_class&
$"loc:@char_repr_cnn/char_embeddings*
validate_shape(*
use_locking(
�
4training/char_repr_cnn/char_embeddings/Momentum/readIdentity/training/char_repr_cnn/char_embeddings/Momentum"/device:GPU:0*
T0*0
_class&
$"loc:@char_repr_cnn/char_embeddings
�
Otraining/char_repr_cnn/conv1d/kernel/Momentum/Initializer/zeros/shape_as_tensorConst"/device:GPU:0*!
valueB"         *.
_class$
" loc:@char_repr_cnn/conv1d/kernel*
dtype0
�
Etraining/char_repr_cnn/conv1d/kernel/Momentum/Initializer/zeros/ConstConst"/device:GPU:0*
valueB
 *    *.
_class$
" loc:@char_repr_cnn/conv1d/kernel*
dtype0
�
?training/char_repr_cnn/conv1d/kernel/Momentum/Initializer/zerosFillOtraining/char_repr_cnn/conv1d/kernel/Momentum/Initializer/zeros/shape_as_tensorEtraining/char_repr_cnn/conv1d/kernel/Momentum/Initializer/zeros/Const"/device:GPU:0*
T0*

index_type0*.
_class$
" loc:@char_repr_cnn/conv1d/kernel
�
-training/char_repr_cnn/conv1d/kernel/Momentum
VariableV2"/device:GPU:0*
shape:*
shared_name *.
_class$
" loc:@char_repr_cnn/conv1d/kernel*
dtype0*
	container 
�
4training/char_repr_cnn/conv1d/kernel/Momentum/AssignAssign-training/char_repr_cnn/conv1d/kernel/Momentum?training/char_repr_cnn/conv1d/kernel/Momentum/Initializer/zeros"/device:GPU:0*
validate_shape(*
use_locking(*
T0*.
_class$
" loc:@char_repr_cnn/conv1d/kernel
�
2training/char_repr_cnn/conv1d/kernel/Momentum/readIdentity-training/char_repr_cnn/conv1d/kernel/Momentum"/device:GPU:0*
T0*.
_class$
" loc:@char_repr_cnn/conv1d/kernel
�
=training/char_repr_cnn/conv1d/bias/Momentum/Initializer/zerosConst"/device:GPU:0*
valueB*    *,
_class"
 loc:@char_repr_cnn/conv1d/bias*
dtype0
�
+training/char_repr_cnn/conv1d/bias/Momentum
VariableV2"/device:GPU:0*
shared_name *,
_class"
 loc:@char_repr_cnn/conv1d/bias*
dtype0*
	container *
shape:
�
2training/char_repr_cnn/conv1d/bias/Momentum/AssignAssign+training/char_repr_cnn/conv1d/bias/Momentum=training/char_repr_cnn/conv1d/bias/Momentum/Initializer/zeros"/device:GPU:0*
use_locking(*
T0*,
_class"
 loc:@char_repr_cnn/conv1d/bias*
validate_shape(
�
0training/char_repr_cnn/conv1d/bias/Momentum/readIdentity+training/char_repr_cnn/conv1d/bias/Momentum"/device:GPU:0*
T0*,
_class"
 loc:@char_repr_cnn/conv1d/bias
�
ftraining/context_repr/bidirectional_rnn/fw/lstm_cell/kernel/Momentum/Initializer/zeros/shape_as_tensorConst"/device:GPU:0*
valueB"�     *E
_class;
97loc:@context_repr/bidirectional_rnn/fw/lstm_cell/kernel*
dtype0
�
\training/context_repr/bidirectional_rnn/fw/lstm_cell/kernel/Momentum/Initializer/zeros/ConstConst"/device:GPU:0*
valueB
 *    *E
_class;
97loc:@context_repr/bidirectional_rnn/fw/lstm_cell/kernel*
dtype0
�
Vtraining/context_repr/bidirectional_rnn/fw/lstm_cell/kernel/Momentum/Initializer/zerosFillftraining/context_repr/bidirectional_rnn/fw/lstm_cell/kernel/Momentum/Initializer/zeros/shape_as_tensor\training/context_repr/bidirectional_rnn/fw/lstm_cell/kernel/Momentum/Initializer/zeros/Const"/device:GPU:0*
T0*

index_type0*E
_class;
97loc:@context_repr/bidirectional_rnn/fw/lstm_cell/kernel
�
Dtraining/context_repr/bidirectional_rnn/fw/lstm_cell/kernel/Momentum
VariableV2"/device:GPU:0*E
_class;
97loc:@context_repr/bidirectional_rnn/fw/lstm_cell/kernel*
dtype0*
	container *
shape:
��*
shared_name 
�
Ktraining/context_repr/bidirectional_rnn/fw/lstm_cell/kernel/Momentum/AssignAssignDtraining/context_repr/bidirectional_rnn/fw/lstm_cell/kernel/MomentumVtraining/context_repr/bidirectional_rnn/fw/lstm_cell/kernel/Momentum/Initializer/zeros"/device:GPU:0*
T0*E
_class;
97loc:@context_repr/bidirectional_rnn/fw/lstm_cell/kernel*
validate_shape(*
use_locking(
�
Itraining/context_repr/bidirectional_rnn/fw/lstm_cell/kernel/Momentum/readIdentityDtraining/context_repr/bidirectional_rnn/fw/lstm_cell/kernel/Momentum"/device:GPU:0*
T0*E
_class;
97loc:@context_repr/bidirectional_rnn/fw/lstm_cell/kernel
�
Ttraining/context_repr/bidirectional_rnn/fw/lstm_cell/bias/Momentum/Initializer/zerosConst"/device:GPU:0*
valueB�*    *C
_class9
75loc:@context_repr/bidirectional_rnn/fw/lstm_cell/bias*
dtype0
�
Btraining/context_repr/bidirectional_rnn/fw/lstm_cell/bias/Momentum
VariableV2"/device:GPU:0*
shared_name *C
_class9
75loc:@context_repr/bidirectional_rnn/fw/lstm_cell/bias*
dtype0*
	container *
shape:�
�
Itraining/context_repr/bidirectional_rnn/fw/lstm_cell/bias/Momentum/AssignAssignBtraining/context_repr/bidirectional_rnn/fw/lstm_cell/bias/MomentumTtraining/context_repr/bidirectional_rnn/fw/lstm_cell/bias/Momentum/Initializer/zeros"/device:GPU:0*
T0*C
_class9
75loc:@context_repr/bidirectional_rnn/fw/lstm_cell/bias*
validate_shape(*
use_locking(
�
Gtraining/context_repr/bidirectional_rnn/fw/lstm_cell/bias/Momentum/readIdentityBtraining/context_repr/bidirectional_rnn/fw/lstm_cell/bias/Momentum"/device:GPU:0*
T0*C
_class9
75loc:@context_repr/bidirectional_rnn/fw/lstm_cell/bias
�
ftraining/context_repr/bidirectional_rnn/bw/lstm_cell/kernel/Momentum/Initializer/zeros/shape_as_tensorConst"/device:GPU:0*
dtype0*
valueB"�     *E
_class;
97loc:@context_repr/bidirectional_rnn/bw/lstm_cell/kernel
�
\training/context_repr/bidirectional_rnn/bw/lstm_cell/kernel/Momentum/Initializer/zeros/ConstConst"/device:GPU:0*
valueB
 *    *E
_class;
97loc:@context_repr/bidirectional_rnn/bw/lstm_cell/kernel*
dtype0
�
Vtraining/context_repr/bidirectional_rnn/bw/lstm_cell/kernel/Momentum/Initializer/zerosFillftraining/context_repr/bidirectional_rnn/bw/lstm_cell/kernel/Momentum/Initializer/zeros/shape_as_tensor\training/context_repr/bidirectional_rnn/bw/lstm_cell/kernel/Momentum/Initializer/zeros/Const"/device:GPU:0*
T0*

index_type0*E
_class;
97loc:@context_repr/bidirectional_rnn/bw/lstm_cell/kernel
�
Dtraining/context_repr/bidirectional_rnn/bw/lstm_cell/kernel/Momentum
VariableV2"/device:GPU:0*
shape:
��*
shared_name *E
_class;
97loc:@context_repr/bidirectional_rnn/bw/lstm_cell/kernel*
dtype0*
	container 
�
Ktraining/context_repr/bidirectional_rnn/bw/lstm_cell/kernel/Momentum/AssignAssignDtraining/context_repr/bidirectional_rnn/bw/lstm_cell/kernel/MomentumVtraining/context_repr/bidirectional_rnn/bw/lstm_cell/kernel/Momentum/Initializer/zeros"/device:GPU:0*
use_locking(*
T0*E
_class;
97loc:@context_repr/bidirectional_rnn/bw/lstm_cell/kernel*
validate_shape(
�
Itraining/context_repr/bidirectional_rnn/bw/lstm_cell/kernel/Momentum/readIdentityDtraining/context_repr/bidirectional_rnn/bw/lstm_cell/kernel/Momentum"/device:GPU:0*
T0*E
_class;
97loc:@context_repr/bidirectional_rnn/bw/lstm_cell/kernel
�
Ttraining/context_repr/bidirectional_rnn/bw/lstm_cell/bias/Momentum/Initializer/zerosConst"/device:GPU:0*
dtype0*
valueB�*    *C
_class9
75loc:@context_repr/bidirectional_rnn/bw/lstm_cell/bias
�
Btraining/context_repr/bidirectional_rnn/bw/lstm_cell/bias/Momentum
VariableV2"/device:GPU:0*
shared_name *C
_class9
75loc:@context_repr/bidirectional_rnn/bw/lstm_cell/bias*
dtype0*
	container *
shape:�
�
Itraining/context_repr/bidirectional_rnn/bw/lstm_cell/bias/Momentum/AssignAssignBtraining/context_repr/bidirectional_rnn/bw/lstm_cell/bias/MomentumTtraining/context_repr/bidirectional_rnn/bw/lstm_cell/bias/Momentum/Initializer/zeros"/device:GPU:0*
T0*C
_class9
75loc:@context_repr/bidirectional_rnn/bw/lstm_cell/bias*
validate_shape(*
use_locking(
�
Gtraining/context_repr/bidirectional_rnn/bw/lstm_cell/bias/Momentum/readIdentityBtraining/context_repr/bidirectional_rnn/bw/lstm_cell/bias/Momentum"/device:GPU:0*
T0*C
_class9
75loc:@context_repr/bidirectional_rnn/bw/lstm_cell/bias
�
Btraining/context_repr/W/Momentum/Initializer/zeros/shape_as_tensorConst"/device:GPU:0*
valueB"�  
   *!
_class
loc:@context_repr/W*
dtype0
�
8training/context_repr/W/Momentum/Initializer/zeros/ConstConst"/device:GPU:0*
valueB
 *    *!
_class
loc:@context_repr/W*
dtype0
�
2training/context_repr/W/Momentum/Initializer/zerosFillBtraining/context_repr/W/Momentum/Initializer/zeros/shape_as_tensor8training/context_repr/W/Momentum/Initializer/zeros/Const"/device:GPU:0*
T0*

index_type0*!
_class
loc:@context_repr/W
�
 training/context_repr/W/Momentum
VariableV2"/device:GPU:0*
dtype0*
	container *
shape:	�
*
shared_name *!
_class
loc:@context_repr/W
�
'training/context_repr/W/Momentum/AssignAssign training/context_repr/W/Momentum2training/context_repr/W/Momentum/Initializer/zeros"/device:GPU:0*
validate_shape(*
use_locking(*
T0*!
_class
loc:@context_repr/W
�
%training/context_repr/W/Momentum/readIdentity training/context_repr/W/Momentum"/device:GPU:0*
T0*!
_class
loc:@context_repr/W
�
2training/context_repr/b/Momentum/Initializer/zerosConst"/device:GPU:0*
dtype0*
valueB
*    *!
_class
loc:@context_repr/b
�
 training/context_repr/b/Momentum
VariableV2"/device:GPU:0*
dtype0*
	container *
shape:
*
shared_name *!
_class
loc:@context_repr/b
�
'training/context_repr/b/Momentum/AssignAssign training/context_repr/b/Momentum2training/context_repr/b/Momentum/Initializer/zeros"/device:GPU:0*
use_locking(*
T0*!
_class
loc:@context_repr/b*
validate_shape(
�
%training/context_repr/b/Momentum/readIdentity training/context_repr/b/Momentum"/device:GPU:0*
T0*!
_class
loc:@context_repr/b
X
training_1/Momentum/momentumConst"/device:GPU:0*
valueB
 *fff?*
dtype0
�
Ftraining_1/Momentum/update_char_repr_cnn/char_embeddings/ApplyMomentumApplyMomentumchar_repr_cnn/char_embeddings/training/char_repr_cnn/char_embeddings/Momentumtraining/lrtraining_1/clip_by_valuetraining_1/Momentum/momentum"/device:GPU:0*
use_nesterov( *
use_locking( *
T0*0
_class&
$"loc:@char_repr_cnn/char_embeddings
�
Dtraining_1/Momentum/update_char_repr_cnn/conv1d/kernel/ApplyMomentumApplyMomentumchar_repr_cnn/conv1d/kernel-training/char_repr_cnn/conv1d/kernel/Momentumtraining/lrtraining_1/clip_by_value_1training_1/Momentum/momentum"/device:GPU:0*
use_nesterov( *
use_locking( *
T0*.
_class$
" loc:@char_repr_cnn/conv1d/kernel
�
Btraining_1/Momentum/update_char_repr_cnn/conv1d/bias/ApplyMomentumApplyMomentumchar_repr_cnn/conv1d/bias+training/char_repr_cnn/conv1d/bias/Momentumtraining/lrtraining_1/clip_by_value_2training_1/Momentum/momentum"/device:GPU:0*
T0*,
_class"
 loc:@char_repr_cnn/conv1d/bias*
use_nesterov( *
use_locking( 
�
[training_1/Momentum/update_context_repr/bidirectional_rnn/fw/lstm_cell/kernel/ApplyMomentumApplyMomentum2context_repr/bidirectional_rnn/fw/lstm_cell/kernelDtraining/context_repr/bidirectional_rnn/fw/lstm_cell/kernel/Momentumtraining/lrtraining_1/clip_by_value_3training_1/Momentum/momentum"/device:GPU:0*
use_locking( *
T0*E
_class;
97loc:@context_repr/bidirectional_rnn/fw/lstm_cell/kernel*
use_nesterov( 
�
Ytraining_1/Momentum/update_context_repr/bidirectional_rnn/fw/lstm_cell/bias/ApplyMomentumApplyMomentum0context_repr/bidirectional_rnn/fw/lstm_cell/biasBtraining/context_repr/bidirectional_rnn/fw/lstm_cell/bias/Momentumtraining/lrtraining_1/clip_by_value_4training_1/Momentum/momentum"/device:GPU:0*
use_nesterov( *
use_locking( *
T0*C
_class9
75loc:@context_repr/bidirectional_rnn/fw/lstm_cell/bias
�
[training_1/Momentum/update_context_repr/bidirectional_rnn/bw/lstm_cell/kernel/ApplyMomentumApplyMomentum2context_repr/bidirectional_rnn/bw/lstm_cell/kernelDtraining/context_repr/bidirectional_rnn/bw/lstm_cell/kernel/Momentumtraining/lrtraining_1/clip_by_value_5training_1/Momentum/momentum"/device:GPU:0*
use_nesterov( *
use_locking( *
T0*E
_class;
97loc:@context_repr/bidirectional_rnn/bw/lstm_cell/kernel
�
Ytraining_1/Momentum/update_context_repr/bidirectional_rnn/bw/lstm_cell/bias/ApplyMomentumApplyMomentum0context_repr/bidirectional_rnn/bw/lstm_cell/biasBtraining/context_repr/bidirectional_rnn/bw/lstm_cell/bias/Momentumtraining/lrtraining_1/clip_by_value_6training_1/Momentum/momentum"/device:GPU:0*
use_locking( *
T0*C
_class9
75loc:@context_repr/bidirectional_rnn/bw/lstm_cell/bias*
use_nesterov( 
�
7training_1/Momentum/update_context_repr/W/ApplyMomentumApplyMomentumcontext_repr/W training/context_repr/W/Momentumtraining/lrtraining_1/clip_by_value_7training_1/Momentum/momentum"/device:GPU:0*
use_locking( *
T0*!
_class
loc:@context_repr/W*
use_nesterov( 
�
7training_1/Momentum/update_context_repr/b/ApplyMomentumApplyMomentumcontext_repr/b training/context_repr/b/Momentumtraining/lrtraining_1/clip_by_value_8training_1/Momentum/momentum"/device:GPU:0*
use_locking( *
T0*!
_class
loc:@context_repr/b*
use_nesterov( 
�
training_1/MomentumNoOpG^training_1/Momentum/update_char_repr_cnn/char_embeddings/ApplyMomentumC^training_1/Momentum/update_char_repr_cnn/conv1d/bias/ApplyMomentumE^training_1/Momentum/update_char_repr_cnn/conv1d/kernel/ApplyMomentum8^training_1/Momentum/update_context_repr/W/ApplyMomentum8^training_1/Momentum/update_context_repr/b/ApplyMomentumZ^training_1/Momentum/update_context_repr/bidirectional_rnn/bw/lstm_cell/bias/ApplyMomentum\^training_1/Momentum/update_context_repr/bidirectional_rnn/bw/lstm_cell/kernel/ApplyMomentumZ^training_1/Momentum/update_context_repr/bidirectional_rnn/fw/lstm_cell/bias/ApplyMomentum\^training_1/Momentum/update_context_repr/bidirectional_rnn/fw/lstm_cell/kernel/ApplyMomentum"/device:GPU:0
�
training_1/initNoOp%^char_repr_cnn/char_embeddings/Assign!^char_repr_cnn/conv1d/bias/Assign#^char_repr_cnn/conv1d/kernel/Assign^context_repr/W/Assign^context_repr/b/Assign8^context_repr/bidirectional_rnn/bw/lstm_cell/bias/Assign:^context_repr/bidirectional_rnn/bw/lstm_cell/kernel/Assign8^context_repr/bidirectional_rnn/fw/lstm_cell/bias/Assign:^context_repr/bidirectional_rnn/fw/lstm_cell/kernel/Assign7^training/char_repr_cnn/char_embeddings/Momentum/Assign3^training/char_repr_cnn/conv1d/bias/Momentum/Assign5^training/char_repr_cnn/conv1d/kernel/Momentum/Assign(^training/context_repr/W/Momentum/Assign(^training/context_repr/b/Momentum/AssignJ^training/context_repr/bidirectional_rnn/bw/lstm_cell/bias/Momentum/AssignL^training/context_repr/bidirectional_rnn/bw/lstm_cell/kernel/Momentum/AssignJ^training/context_repr/bidirectional_rnn/fw/lstm_cell/bias/Momentum/AssignL^training/context_repr/bidirectional_rnn/fw/lstm_cell/kernel/Momentum/Assign"/device:GPU:0
8

save/ConstConst*
dtype0*
valueB Bmodel
�
save/SaveV2/tensor_namesConst*�
value�B�Bchar_repr_cnn/char_embeddingsBchar_repr_cnn/conv1d/biasBchar_repr_cnn/conv1d/kernelBcontext_repr/WBcontext_repr/bB0context_repr/bidirectional_rnn/bw/lstm_cell/biasB2context_repr/bidirectional_rnn/bw/lstm_cell/kernelB0context_repr/bidirectional_rnn/fw/lstm_cell/biasB2context_repr/bidirectional_rnn/fw/lstm_cell/kernelB/training/char_repr_cnn/char_embeddings/MomentumB+training/char_repr_cnn/conv1d/bias/MomentumB-training/char_repr_cnn/conv1d/kernel/MomentumB training/context_repr/W/MomentumB training/context_repr/b/MomentumBBtraining/context_repr/bidirectional_rnn/bw/lstm_cell/bias/MomentumBDtraining/context_repr/bidirectional_rnn/bw/lstm_cell/kernel/MomentumBBtraining/context_repr/bidirectional_rnn/fw/lstm_cell/bias/MomentumBDtraining/context_repr/bidirectional_rnn/fw/lstm_cell/kernel/Momentum*
dtype0
k
save/SaveV2/shape_and_slicesConst*
dtype0*7
value.B,B B B B B B B B B B B B B B B B B B 
�
save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_sliceschar_repr_cnn/char_embeddingschar_repr_cnn/conv1d/biaschar_repr_cnn/conv1d/kernelcontext_repr/Wcontext_repr/b0context_repr/bidirectional_rnn/bw/lstm_cell/bias2context_repr/bidirectional_rnn/bw/lstm_cell/kernel0context_repr/bidirectional_rnn/fw/lstm_cell/bias2context_repr/bidirectional_rnn/fw/lstm_cell/kernel/training/char_repr_cnn/char_embeddings/Momentum+training/char_repr_cnn/conv1d/bias/Momentum-training/char_repr_cnn/conv1d/kernel/Momentum training/context_repr/W/Momentum training/context_repr/b/MomentumBtraining/context_repr/bidirectional_rnn/bw/lstm_cell/bias/MomentumDtraining/context_repr/bidirectional_rnn/bw/lstm_cell/kernel/MomentumBtraining/context_repr/bidirectional_rnn/fw/lstm_cell/bias/MomentumDtraining/context_repr/bidirectional_rnn/fw/lstm_cell/kernel/Momentum* 
dtypes
2
e
save/control_dependencyIdentity
save/Const^save/SaveV2*
T0*
_class
loc:@save/Const
�
save/RestoreV2/tensor_namesConst"/device:CPU:0*�
value�B�Bchar_repr_cnn/char_embeddingsBchar_repr_cnn/conv1d/biasBchar_repr_cnn/conv1d/kernelBcontext_repr/WBcontext_repr/bB0context_repr/bidirectional_rnn/bw/lstm_cell/biasB2context_repr/bidirectional_rnn/bw/lstm_cell/kernelB0context_repr/bidirectional_rnn/fw/lstm_cell/biasB2context_repr/bidirectional_rnn/fw/lstm_cell/kernelB/training/char_repr_cnn/char_embeddings/MomentumB+training/char_repr_cnn/conv1d/bias/MomentumB-training/char_repr_cnn/conv1d/kernel/MomentumB training/context_repr/W/MomentumB training/context_repr/b/MomentumBBtraining/context_repr/bidirectional_rnn/bw/lstm_cell/bias/MomentumBDtraining/context_repr/bidirectional_rnn/bw/lstm_cell/kernel/MomentumBBtraining/context_repr/bidirectional_rnn/fw/lstm_cell/bias/MomentumBDtraining/context_repr/bidirectional_rnn/fw/lstm_cell/kernel/Momentum*
dtype0
}
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*7
value.B,B B B B B B B B B B B B B B B B B B *
dtype0
�
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0* 
dtypes
2
�
save/AssignAssignchar_repr_cnn/char_embeddingssave/RestoreV2"/device:GPU:0*
validate_shape(*
use_locking(*
T0*0
_class&
$"loc:@char_repr_cnn/char_embeddings
�
save/Assign_1Assignchar_repr_cnn/conv1d/biassave/RestoreV2:1"/device:GPU:0*
T0*,
_class"
 loc:@char_repr_cnn/conv1d/bias*
validate_shape(*
use_locking(
�
save/Assign_2Assignchar_repr_cnn/conv1d/kernelsave/RestoreV2:2"/device:GPU:0*
T0*.
_class$
" loc:@char_repr_cnn/conv1d/kernel*
validate_shape(*
use_locking(
�
save/Assign_3Assigncontext_repr/Wsave/RestoreV2:3"/device:GPU:0*
use_locking(*
T0*!
_class
loc:@context_repr/W*
validate_shape(
�
save/Assign_4Assigncontext_repr/bsave/RestoreV2:4"/device:GPU:0*
T0*!
_class
loc:@context_repr/b*
validate_shape(*
use_locking(
�
save/Assign_5Assign0context_repr/bidirectional_rnn/bw/lstm_cell/biassave/RestoreV2:5"/device:GPU:0*
use_locking(*
T0*C
_class9
75loc:@context_repr/bidirectional_rnn/bw/lstm_cell/bias*
validate_shape(
�
save/Assign_6Assign2context_repr/bidirectional_rnn/bw/lstm_cell/kernelsave/RestoreV2:6"/device:GPU:0*
T0*E
_class;
97loc:@context_repr/bidirectional_rnn/bw/lstm_cell/kernel*
validate_shape(*
use_locking(
�
save/Assign_7Assign0context_repr/bidirectional_rnn/fw/lstm_cell/biassave/RestoreV2:7"/device:GPU:0*
validate_shape(*
use_locking(*
T0*C
_class9
75loc:@context_repr/bidirectional_rnn/fw/lstm_cell/bias
�
save/Assign_8Assign2context_repr/bidirectional_rnn/fw/lstm_cell/kernelsave/RestoreV2:8"/device:GPU:0*
validate_shape(*
use_locking(*
T0*E
_class;
97loc:@context_repr/bidirectional_rnn/fw/lstm_cell/kernel
�
save/Assign_9Assign/training/char_repr_cnn/char_embeddings/Momentumsave/RestoreV2:9"/device:GPU:0*
use_locking(*
T0*0
_class&
$"loc:@char_repr_cnn/char_embeddings*
validate_shape(
�
save/Assign_10Assign+training/char_repr_cnn/conv1d/bias/Momentumsave/RestoreV2:10"/device:GPU:0*
use_locking(*
T0*,
_class"
 loc:@char_repr_cnn/conv1d/bias*
validate_shape(
�
save/Assign_11Assign-training/char_repr_cnn/conv1d/kernel/Momentumsave/RestoreV2:11"/device:GPU:0*
T0*.
_class$
" loc:@char_repr_cnn/conv1d/kernel*
validate_shape(*
use_locking(
�
save/Assign_12Assign training/context_repr/W/Momentumsave/RestoreV2:12"/device:GPU:0*
validate_shape(*
use_locking(*
T0*!
_class
loc:@context_repr/W
�
save/Assign_13Assign training/context_repr/b/Momentumsave/RestoreV2:13"/device:GPU:0*
use_locking(*
T0*!
_class
loc:@context_repr/b*
validate_shape(
�
save/Assign_14AssignBtraining/context_repr/bidirectional_rnn/bw/lstm_cell/bias/Momentumsave/RestoreV2:14"/device:GPU:0*
T0*C
_class9
75loc:@context_repr/bidirectional_rnn/bw/lstm_cell/bias*
validate_shape(*
use_locking(
�
save/Assign_15AssignDtraining/context_repr/bidirectional_rnn/bw/lstm_cell/kernel/Momentumsave/RestoreV2:15"/device:GPU:0*
use_locking(*
T0*E
_class;
97loc:@context_repr/bidirectional_rnn/bw/lstm_cell/kernel*
validate_shape(
�
save/Assign_16AssignBtraining/context_repr/bidirectional_rnn/fw/lstm_cell/bias/Momentumsave/RestoreV2:16"/device:GPU:0*
T0*C
_class9
75loc:@context_repr/bidirectional_rnn/fw/lstm_cell/bias*
validate_shape(*
use_locking(
�
save/Assign_17AssignDtraining/context_repr/bidirectional_rnn/fw/lstm_cell/kernel/Momentumsave/RestoreV2:17"/device:GPU:0*
use_locking(*
T0*E
_class;
97loc:@context_repr/bidirectional_rnn/fw/lstm_cell/kernel*
validate_shape(
�
save/restore_allNoOp^save/Assign^save/Assign_1^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_2^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9"/device:GPU:0"