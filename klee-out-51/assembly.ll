; ModuleID = 'klee_ready.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.tensorflow::StubCPUAllocator" = type { %"class.tensorflow::AbstractTensorInterface" }
%"class.tensorflow::AbstractTensorInterface" = type { i32 (...)** }
%"class.tensorflow::Tensor" = type { %"class.tensorflow::TensorShape", %"class.tensorflow::TensorBuffer"* }
%"class.tensorflow::TensorShape" = type <{ %"class.std::vector", i32, %"class.std::allocator.0", [3 x i8] }>
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl" }
%"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl" = type { %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data" }
%"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data" = type { i64*, i64*, i64* }
%"class.std::allocator.0" = type { i8 }
%"class.tensorflow::TensorBuffer" = type { %"class.tensorflow::core::RefCounted", i8* }
%"class.tensorflow::core::RefCounted" = type { i32 (...)**, %"struct.std::atomic" }
%"struct.std::atomic" = type { %"struct.std::__atomic_base" }
%"struct.std::__atomic_base" = type { i64 }
%struct.TF_Tensor = type { %"class.tensorflow::AbstractTensorInterface"* }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char>>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char>>::_Alloc_hider" = type { i8* }
%union.anon = type { i64, [8 x i8] }
%class.TF_ManagedBuffer = type <{ %"class.tensorflow::TensorBuffer", i64, void (i8*, i64, i8*)*, i8*, i8, [7 x i8] }>
%"class.tensorflow::TensorInterface" = type { %"class.tensorflow::AbstractTensorInterface", %"class.tensorflow::Tensor" }
%"class.__gnu_cxx::__normal_iterator" = type { i64* }
%"class.tensorflow::AllocationDescription" = type opaque

$_ZN10tensorflow13cpu_allocatorEv = comdat any

$_ZN10tensorflow16StubCPUAllocatorC2Ev = comdat any

$_ZN10tensorflow9AllocatorC2Ev = comdat any

$_ZN10tensorflow16StubCPUAllocatorD2Ev = comdat any

$_ZN10tensorflow16StubCPUAllocatorD0Ev = comdat any

$_ZN10tensorflow16StubCPUAllocator4NameB5cxx11Ev = comdat any

$_ZN10tensorflow9Allocator11AllocateRawEmm = comdat any

$_ZN10tensorflow9Allocator13DeallocateRawEPv = comdat any

$_ZN10tensorflow9Allocator11AllocateRawEmmPKv = comdat any

$_ZN10tensorflow9Allocator13DeallocateRawEPvmm = comdat any

$_ZNK10tensorflow9Allocator21TracksAllocationSizesEv = comdat any

$_ZNK10tensorflow9Allocator21AllocatesOpaqueHandleEv = comdat any

$_ZNK10tensorflow9Allocator13RequestedSizeEPKv = comdat any

$_ZNK10tensorflow9Allocator13AllocatedSizeEPKv = comdat any

$_ZNK10tensorflow9Allocator12AllocationIdEPKv = comdat any

$_ZNK10tensorflow9Allocator17AllocatedSizeSlowEPKv = comdat any

$_ZN10tensorflow9Allocator10ClearStatsEv = comdat any

$_ZN10tensorflow9Allocator15SetSafeFrontierEm = comdat any

$_ZN10tensorflow9Allocator29SetStreamAndPreallocateMemoryEPv = comdat any

$_ZNK10tensorflow9Allocator13GetMemoryTypeEv = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_ = comdat any

$_ZNSt11char_traitsIcE6lengthEPKc = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev = comdat any

$_ZN9__gnu_cxx17__is_null_pointerIKcEEbPT_ = comdat any

$_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_ = comdat any

$__clang_call_terminate = comdat any

$_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_ = comdat any

$_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag = comdat any

$_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc = comdat any

$_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_ = comdat any

$_ZN10tensorflow9AllocatorD2Ev = comdat any

$_ZN10tensorflow9AllocatorD0Ev = comdat any

$_ZN10tensorflow9Allocator4NameB5cxx11Ev = comdat any

$_ZN16TF_ManagedBufferC2EPvmPFvS0_mS0_ES0_b = comdat any

$_ZNSaIlEC2Ev = comdat any

$_ZNSt6vectorIlSaIlEEC2EmRKS0_ = comdat any

$_ZNSaIlED2Ev = comdat any

$_ZNSt6vectorIlSaIlEEixEm = comdat any

$_ZN10tensorflow11TensorShapeC2ERKSt6vectorIlSaIlEE = comdat any

$_ZN10tensorflow11TensorShapeD2Ev = comdat any

$_ZNK10tensorflow4core10RefCounted5UnrefEv = comdat any

$_ZNK10tensorflow6Tensor11NumElementsEv = comdat any

$_ZSt4moveIRN10tensorflow6TensorEEONSt16remove_referenceIT_E4typeEOS4_ = comdat any

$_ZN10tensorflow15TensorInterfaceC2ENS_6TensorE = comdat any

$_ZNSt6vectorIlSaIlEED2Ev = comdat any

$_ZNSt12_Vector_baseIlSaIlEE19_M_get_Tp_allocatorEv = comdat any

$_ZSt8_DestroyIPllEvT_S1_RSaIT0_E = comdat any

$_ZNSt12_Vector_baseIlSaIlEED2Ev = comdat any

$_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm = comdat any

$_ZNSt12_Vector_baseIlSaIlEE12_Vector_implD2Ev = comdat any

$_ZNSt16allocator_traitsISaIlEE10deallocateERS0_Plm = comdat any

$_ZN9__gnu_cxx13new_allocatorIlE10deallocateEPlm = comdat any

$_ZSt8_DestroyIPlEvT_S1_ = comdat any

$_ZNSt12_Destroy_auxILb1EE9__destroyIPlEEvT_S3_ = comdat any

$_ZN10tensorflow23AbstractTensorInterfaceC2Ev = comdat any

$_ZN10tensorflow23AbstractTensorInterfaceD2Ev = comdat any

$_ZN10tensorflow15TensorInterface7ReleaseEv = comdat any

$_ZNK10tensorflow15TensorInterface4TypeEv = comdat any

$_ZNK10tensorflow15TensorInterface7NumDimsEv = comdat any

$_ZNK10tensorflow15TensorInterface3DimEi = comdat any

$_ZNK10tensorflow15TensorInterface11NumElementsEv = comdat any

$_ZNK10tensorflow15TensorInterface8ByteSizeEv = comdat any

$_ZNK10tensorflow15TensorInterface4DataEv = comdat any

$_ZNK10tensorflow15TensorInterface9IsAlignedEv = comdat any

$_ZNK10tensorflow15TensorInterface7CanMoveEv = comdat any

$_ZNK10tensorflow15TensorInterface14SummarizeValueB5cxx11Ev = comdat any

$_ZN10tensorflow15TensorInterfaceD2Ev = comdat any

$_ZN10tensorflow15TensorInterfaceD0Ev = comdat any

$_ZN10tensorflow23AbstractTensorInterfaceD0Ev = comdat any

$_ZNK10tensorflow6Tensor5shapeEv = comdat any

$_ZNK10tensorflow11TensorShape12num_elementsEv = comdat any

$_ZNKSt6vectorIlSaIlEE5emptyEv = comdat any

$_ZNKSt6vectorIlSaIlEE5beginEv = comdat any

$_ZNKSt6vectorIlSaIlEE3endEv = comdat any

$_ZN9__gnu_cxxneIPKlSt6vectorIlSaIlEEEEbRKNS_17__normal_iteratorIT_T0_EESB_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEdeEv = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEppEv = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEE4baseEv = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEC2ERKS2_ = comdat any

$_ZN9__gnu_cxxeqIPKlSt6vectorIlSaIlEEEEbRKNS_17__normal_iteratorIT_T0_EESB_ = comdat any

$_ZNSt6vectorIlSaIlEEC2ERKS1_ = comdat any

$_ZNKSt6vectorIlSaIlEE4sizeEv = comdat any

$_ZNKSt12_Vector_baseIlSaIlEE19_M_get_Tp_allocatorEv = comdat any

$_ZN9__gnu_cxx14__alloc_traitsISaIlElE17_S_select_on_copyERKS1_ = comdat any

$_ZNSt12_Vector_baseIlSaIlEEC2EmRKS0_ = comdat any

$_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEEPllET0_T_SA_S9_RSaIT1_E = comdat any

$_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEEPlET0_T_SA_S9_ = comdat any

$_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEEPlEET0_T_SC_SB_ = comdat any

$_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEEPlET0_T_SA_S9_ = comdat any

$_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEEET_S8_ = comdat any

$_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEEPlET1_T0_SA_S9_ = comdat any

$_ZSt12__niter_baseIPKlSt6vectorIlSaIlEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE = comdat any

$_ZSt12__niter_baseIPlET_S1_ = comdat any

$_ZSt14__copy_move_a1ILb0EPKlPlET1_T0_S4_S3_ = comdat any

$_ZSt12__niter_wrapIPlET_RKS1_S1_ = comdat any

$_ZSt14__copy_move_a2ILb0EPKlPlET1_T0_S4_S3_ = comdat any

$_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIlEEPT_PKS3_S6_S4_ = comdat any

$_ZNSt12_Vector_baseIlSaIlEE12_Vector_implC2ERKS0_ = comdat any

$_ZNSt12_Vector_baseIlSaIlEE17_M_create_storageEm = comdat any

$_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm = comdat any

$_ZNSt16allocator_traitsISaIlEE8allocateERS0_m = comdat any

$_ZN9__gnu_cxx13new_allocatorIlE8allocateEmPKv = comdat any

$_ZNK9__gnu_cxx13new_allocatorIlE11_M_max_sizeEv = comdat any

$_ZNSaIlEC2ERKS_ = comdat any

$_ZNSt12_Vector_baseIlSaIlEE17_Vector_impl_dataC2Ev = comdat any

$_ZN9__gnu_cxx13new_allocatorIlEC2ERKS1_ = comdat any

$_ZNSt16allocator_traitsISaIlEE37select_on_container_copy_constructionERKS0_ = comdat any

$_ZN9__gnu_cxx13new_allocatorIlED2Ev = comdat any

$_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_ = comdat any

$_ZNSt6vectorIlSaIlEE21_M_default_initializeEm = comdat any

$_ZSt27__uninitialized_default_n_aIPlmlET_S1_T0_RSaIT1_E = comdat any

$_ZSt25__uninitialized_default_nIPlmET_S1_T0_ = comdat any

$_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPlmEET_S3_T0_ = comdat any

$_ZSt11__addressofIlEPT_RS0_ = comdat any

$_ZSt10_ConstructIlJEEvPT_DpOT0_ = comdat any

$_ZSt6fill_nIPlmlET_S1_T0_RKT1_ = comdat any

$_ZSt17__size_to_integerm = comdat any

$_ZSt19__iterator_categoryIPlENSt15iterator_traitsIT_E17iterator_categoryERKS2_ = comdat any

$_ZSt10__fill_n_aIPlmlET_S1_T0_RKT1_St26random_access_iterator_tag = comdat any

$_ZSt8__fill_aIPllEvT_S1_RKT0_ = comdat any

$_ZSt9__fill_a1IPllEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_ = comdat any

$_ZNSt6vectorIlSaIlEE11_S_max_sizeERKS0_ = comdat any

$_ZNSt16allocator_traitsISaIlEE8max_sizeERKS0_ = comdat any

$_ZSt3minImERKT_S2_S2_ = comdat any

$_ZNK9__gnu_cxx13new_allocatorIlE8max_sizeEv = comdat any

$_ZN9__gnu_cxx13new_allocatorIlEC2Ev = comdat any

$_ZN10tensorflow12TensorBufferC2EPv = comdat any

$_ZN16TF_ManagedBufferD2Ev = comdat any

$_ZN16TF_ManagedBufferD0Ev = comdat any

$_ZNK16TF_ManagedBuffer4sizeEv = comdat any

$_ZN16TF_ManagedBuffer11root_bufferEv = comdat any

$_ZNK16TF_ManagedBuffer25FillAllocationDescriptionEPN10tensorflow21AllocationDescriptionE = comdat any

$_ZNK16TF_ManagedBuffer10OwnsMemoryEv = comdat any

$_ZNK10tensorflow12TensorBuffer13GetMemoryTypeEv = comdat any

$_ZNK10tensorflow12TensorBuffer4dataEv = comdat any

$_ZN10tensorflow12TensorBufferD2Ev = comdat any

$_ZN10tensorflow4core10RefCountedD2Ev = comdat any

$_ZN10tensorflow4core10RefCountedC2Ev = comdat any

$_ZNSt6atomicImEC2Em = comdat any

$_ZNSt13__atomic_baseImEC2Em = comdat any

$_ZN10tensorflow4core10RefCountedD0Ev = comdat any

$_ZN10tensorflow20DataTypeCanUseMemcpyE8DataType = comdat any

$_ZSt3maxIiERKT_S2_S2_ = comdat any

$_ZN10tensorflow12TensorBufferD0Ev = comdat any

$_ZNK10tensorflow12TensorBuffer10OwnsMemoryEv = comdat any

$_ZN10tensorflow11TensorShapeC2ERKS0_ = comdat any

$_ZN10tensorflow6Tensor9set_dtypeE8DataType = comdat any

$_ZNK10tensorflow4core10RefCounted3RefEv = comdat any

$_ZN10tensorflow11TensorShape13set_data_typeE8DataType = comdat any

$_ZSt4moveIRN10tensorflow11TensorShapeEEONSt16remove_referenceIT_E4typeEOS4_ = comdat any

$_ZN10tensorflow11TensorShapeC2EOS0_ = comdat any

$_ZNK10tensorflow6Tensor5dtypeEv = comdat any

$_ZNK10tensorflow11TensorShape9data_typeEv = comdat any

$_ZNSt6vectorIlSaIlEEC2EOS1_ = comdat any

$_ZNSt12_Vector_baseIlSaIlEEC2EOS1_ = comdat any

$_ZNSt12_Vector_baseIlSaIlEE12_Vector_implC2EOS2_ = comdat any

$_ZSt4moveIRNSt12_Vector_baseIlSaIlEE12_Vector_implEEONSt16remove_referenceIT_E4typeEOS6_ = comdat any

$_ZNSt12_Vector_baseIlSaIlEE17_Vector_impl_dataC2EOS2_ = comdat any

$_ZGVZN10tensorflow13cpu_allocatorEvE4inst = comdat any

$_ZZN10tensorflow13cpu_allocatorEvE4inst = comdat any

$_ZTVN10tensorflow16StubCPUAllocatorE = comdat any

$_ZTIN10tensorflow16StubCPUAllocatorE = comdat any

$_ZTSN10tensorflow16StubCPUAllocatorE = comdat any

$_ZTIN10tensorflow9AllocatorE = comdat any

$_ZTSN10tensorflow9AllocatorE = comdat any

$_ZTVN10tensorflow9AllocatorE = comdat any

$_ZTVN10tensorflow15TensorInterfaceE = comdat any

$_ZTIN10tensorflow15TensorInterfaceE = comdat any

$_ZTSN10tensorflow15TensorInterfaceE = comdat any

$_ZTIN10tensorflow23AbstractTensorInterfaceE = comdat any

$_ZTSN10tensorflow23AbstractTensorInterfaceE = comdat any

$_ZTVN10tensorflow23AbstractTensorInterfaceE = comdat any

$_ZTV16TF_ManagedBuffer = comdat any

$_ZTI16TF_ManagedBuffer = comdat any

$_ZTS16TF_ManagedBuffer = comdat any

$_ZTVN10tensorflow4core10RefCountedE = comdat any

$_ZTIN10tensorflow4core10RefCountedE = comdat any

$_ZTSN10tensorflow4core10RefCountedE = comdat any

@.str = private unnamed_addr constant [5 x i8] c"dims\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"dtype\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"len\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"offset\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"payload_prefix\00", align 1
@_ZGVZN10tensorflow13cpu_allocatorEvE4inst = linkonce_odr dso_local global i64 0, comdat, align 8
@_ZZN10tensorflow13cpu_allocatorEvE4inst = linkonce_odr dso_local global %"class.tensorflow::StubCPUAllocator"* null, comdat, align 8, !dbg !0
@_ZTVN10tensorflow16StubCPUAllocatorE = linkonce_odr dso_local unnamed_addr constant { [19 x i8*] } { [19 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN10tensorflow16StubCPUAllocatorE to i8*), i8* bitcast (void (%"class.tensorflow::StubCPUAllocator"*)* @_ZN10tensorflow16StubCPUAllocatorD2Ev to i8*), i8* bitcast (void (%"class.tensorflow::StubCPUAllocator"*)* @_ZN10tensorflow16StubCPUAllocatorD0Ev to i8*), i8* bitcast (void (%"class.std::__cxx11::basic_string"*, %"class.tensorflow::StubCPUAllocator"*)* @_ZN10tensorflow16StubCPUAllocator4NameB5cxx11Ev to i8*), i8* bitcast (i8* (%"class.tensorflow::AbstractTensorInterface"*, i64, i64)* @_ZN10tensorflow9Allocator11AllocateRawEmm to i8*), i8* bitcast (void (%"class.tensorflow::AbstractTensorInterface"*, i8*)* @_ZN10tensorflow9Allocator13DeallocateRawEPv to i8*), i8* bitcast (i8* (%"class.tensorflow::AbstractTensorInterface"*, i64, i64, i8*)* @_ZN10tensorflow9Allocator11AllocateRawEmmPKv to i8*), i8* bitcast (void (%"class.tensorflow::AbstractTensorInterface"*, i8*, i64, i64)* @_ZN10tensorflow9Allocator13DeallocateRawEPvmm to i8*), i8* bitcast (i1 (%"class.tensorflow::AbstractTensorInterface"*)* @_ZNK10tensorflow9Allocator21TracksAllocationSizesEv to i8*), i8* bitcast (i1 (%"class.tensorflow::AbstractTensorInterface"*)* @_ZNK10tensorflow9Allocator21AllocatesOpaqueHandleEv to i8*), i8* bitcast (i64 (%"class.tensorflow::AbstractTensorInterface"*, i8*)* @_ZNK10tensorflow9Allocator13RequestedSizeEPKv to i8*), i8* bitcast (i64 (%"class.tensorflow::AbstractTensorInterface"*, i8*)* @_ZNK10tensorflow9Allocator13AllocatedSizeEPKv to i8*), i8* bitcast (i64 (%"class.tensorflow::AbstractTensorInterface"*, i8*)* @_ZNK10tensorflow9Allocator12AllocationIdEPKv to i8*), i8* bitcast (i64 (%"class.tensorflow::AbstractTensorInterface"*, i8*)* @_ZNK10tensorflow9Allocator17AllocatedSizeSlowEPKv to i8*), i8* bitcast (i1 (%"class.tensorflow::AbstractTensorInterface"*)* @_ZN10tensorflow9Allocator10ClearStatsEv to i8*), i8* bitcast (void (%"class.tensorflow::AbstractTensorInterface"*, i64)* @_ZN10tensorflow9Allocator15SetSafeFrontierEm to i8*), i8* bitcast (void (%"class.tensorflow::AbstractTensorInterface"*, i8*)* @_ZN10tensorflow9Allocator29SetStreamAndPreallocateMemoryEPv to i8*), i8* bitcast (i32 (%"class.tensorflow::AbstractTensorInterface"*)* @_ZNK10tensorflow9Allocator13GetMemoryTypeEv to i8*)] }, comdat, align 8
@_ZTIN10tensorflow16StubCPUAllocatorE = linkonce_odr dso_local constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @_ZTSN10tensorflow16StubCPUAllocatorE, i32 0, i32 0), i8* bitcast ({ i8*, i8* }* @_ZTIN10tensorflow9AllocatorE to i8*) }, comdat, align 8
@.str.4.1 = private unnamed_addr constant [17 x i8] c"StubCPUAllocator\00", align 1
@.str.3.2 = private unnamed_addr constant [42 x i8] c"basic_string::_M_construct null not valid\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external dso_local global i8*
@_ZTSN10tensorflow16StubCPUAllocatorE = linkonce_odr dso_local constant [33 x i8] c"N10tensorflow16StubCPUAllocatorE\00", comdat, align 1
@_ZTIN10tensorflow9AllocatorE = linkonce_odr dso_local constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv117__class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @_ZTSN10tensorflow9AllocatorE, i32 0, i32 0) }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external dso_local global i8*
@_ZTSN10tensorflow9AllocatorE = linkonce_odr dso_local constant [25 x i8] c"N10tensorflow9AllocatorE\00", comdat, align 1
@_ZTVN10tensorflow9AllocatorE = linkonce_odr dso_local unnamed_addr constant { [19 x i8*] } { [19 x i8*] [i8* null, i8* bitcast ({ i8*, i8* }* @_ZTIN10tensorflow9AllocatorE to i8*), i8* bitcast (void (%"class.tensorflow::AbstractTensorInterface"*)* @_ZN10tensorflow9AllocatorD2Ev to i8*), i8* bitcast (void (%"class.tensorflow::AbstractTensorInterface"*)* @_ZN10tensorflow9AllocatorD0Ev to i8*), i8* bitcast (void (%"class.std::__cxx11::basic_string"*, %"class.tensorflow::AbstractTensorInterface"*)* @_ZN10tensorflow9Allocator4NameB5cxx11Ev to i8*), i8* bitcast (i8* (%"class.tensorflow::AbstractTensorInterface"*, i64, i64)* @_ZN10tensorflow9Allocator11AllocateRawEmm to i8*), i8* bitcast (void (%"class.tensorflow::AbstractTensorInterface"*, i8*)* @_ZN10tensorflow9Allocator13DeallocateRawEPv to i8*), i8* bitcast (i8* (%"class.tensorflow::AbstractTensorInterface"*, i64, i64, i8*)* @_ZN10tensorflow9Allocator11AllocateRawEmmPKv to i8*), i8* bitcast (void (%"class.tensorflow::AbstractTensorInterface"*, i8*, i64, i64)* @_ZN10tensorflow9Allocator13DeallocateRawEPvmm to i8*), i8* bitcast (i1 (%"class.tensorflow::AbstractTensorInterface"*)* @_ZNK10tensorflow9Allocator21TracksAllocationSizesEv to i8*), i8* bitcast (i1 (%"class.tensorflow::AbstractTensorInterface"*)* @_ZNK10tensorflow9Allocator21AllocatesOpaqueHandleEv to i8*), i8* bitcast (i64 (%"class.tensorflow::AbstractTensorInterface"*, i8*)* @_ZNK10tensorflow9Allocator13RequestedSizeEPKv to i8*), i8* bitcast (i64 (%"class.tensorflow::AbstractTensorInterface"*, i8*)* @_ZNK10tensorflow9Allocator13AllocatedSizeEPKv to i8*), i8* bitcast (i64 (%"class.tensorflow::AbstractTensorInterface"*, i8*)* @_ZNK10tensorflow9Allocator12AllocationIdEPKv to i8*), i8* bitcast (i64 (%"class.tensorflow::AbstractTensorInterface"*, i8*)* @_ZNK10tensorflow9Allocator17AllocatedSizeSlowEPKv to i8*), i8* bitcast (i1 (%"class.tensorflow::AbstractTensorInterface"*)* @_ZN10tensorflow9Allocator10ClearStatsEv to i8*), i8* bitcast (void (%"class.tensorflow::AbstractTensorInterface"*, i64)* @_ZN10tensorflow9Allocator15SetSafeFrontierEm to i8*), i8* bitcast (void (%"class.tensorflow::AbstractTensorInterface"*, i8*)* @_ZN10tensorflow9Allocator29SetStreamAndPreallocateMemoryEPv to i8*), i8* bitcast (i32 (%"class.tensorflow::AbstractTensorInterface"*)* @_ZNK10tensorflow9Allocator13GetMemoryTypeEv to i8*)] }, comdat, align 8
@.str.2.3 = private unnamed_addr constant [14 x i8] c"StubAllocator\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"TF_AllocateTensor\00", align 1
@_ZTVN10tensorflow15TensorInterfaceE = linkonce_odr dso_local unnamed_addr constant { [14 x i8*] } { [14 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN10tensorflow15TensorInterfaceE to i8*), i8* bitcast (void (%"class.tensorflow::TensorInterface"*)* @_ZN10tensorflow15TensorInterface7ReleaseEv to i8*), i8* bitcast (i32 (%"class.tensorflow::TensorInterface"*)* @_ZNK10tensorflow15TensorInterface4TypeEv to i8*), i8* bitcast (i32 (%"class.tensorflow::TensorInterface"*)* @_ZNK10tensorflow15TensorInterface7NumDimsEv to i8*), i8* bitcast (i64 (%"class.tensorflow::TensorInterface"*, i32)* @_ZNK10tensorflow15TensorInterface3DimEi to i8*), i8* bitcast (i64 (%"class.tensorflow::TensorInterface"*)* @_ZNK10tensorflow15TensorInterface11NumElementsEv to i8*), i8* bitcast (i64 (%"class.tensorflow::TensorInterface"*)* @_ZNK10tensorflow15TensorInterface8ByteSizeEv to i8*), i8* bitcast (i8* (%"class.tensorflow::TensorInterface"*)* @_ZNK10tensorflow15TensorInterface4DataEv to i8*), i8* bitcast (i1 (%"class.tensorflow::TensorInterface"*)* @_ZNK10tensorflow15TensorInterface9IsAlignedEv to i8*), i8* bitcast (i1 (%"class.tensorflow::TensorInterface"*)* @_ZNK10tensorflow15TensorInterface7CanMoveEv to i8*), i8* bitcast (void (%"class.std::__cxx11::basic_string"*, %"class.tensorflow::TensorInterface"*)* @_ZNK10tensorflow15TensorInterface14SummarizeValueB5cxx11Ev to i8*), i8* bitcast (void (%"class.tensorflow::TensorInterface"*)* @_ZN10tensorflow15TensorInterfaceD2Ev to i8*), i8* bitcast (void (%"class.tensorflow::TensorInterface"*)* @_ZN10tensorflow15TensorInterfaceD0Ev to i8*)] }, comdat, align 8
@_ZTIN10tensorflow15TensorInterfaceE = linkonce_odr dso_local constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @_ZTSN10tensorflow15TensorInterfaceE, i32 0, i32 0), i8* bitcast ({ i8*, i8* }* @_ZTIN10tensorflow23AbstractTensorInterfaceE to i8*) }, comdat, align 8
@_ZTSN10tensorflow15TensorInterfaceE = linkonce_odr dso_local constant [32 x i8] c"N10tensorflow15TensorInterfaceE\00", comdat, align 1
@_ZTIN10tensorflow23AbstractTensorInterfaceE = linkonce_odr dso_local constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv117__class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @_ZTSN10tensorflow23AbstractTensorInterfaceE, i32 0, i32 0) }, comdat, align 8
@_ZTSN10tensorflow23AbstractTensorInterfaceE = linkonce_odr dso_local constant [40 x i8] c"N10tensorflow23AbstractTensorInterfaceE\00", comdat, align 1
@_ZTVN10tensorflow23AbstractTensorInterfaceE = linkonce_odr dso_local unnamed_addr constant { [14 x i8*] } { [14 x i8*] [i8* null, i8* bitcast ({ i8*, i8* }* @_ZTIN10tensorflow23AbstractTensorInterfaceE to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void (%"class.tensorflow::AbstractTensorInterface"*)* @_ZN10tensorflow23AbstractTensorInterfaceD2Ev to i8*), i8* bitcast (void (%"class.tensorflow::AbstractTensorInterface"*)* @_ZN10tensorflow23AbstractTensorInterfaceD0Ev to i8*)] }, comdat, align 8
@.str.5.6 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@_ZTV16TF_ManagedBuffer = linkonce_odr dso_local unnamed_addr constant { [10 x i8*] } { [10 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTI16TF_ManagedBuffer to i8*), i8* bitcast (void (%class.TF_ManagedBuffer*)* @_ZN16TF_ManagedBufferD2Ev to i8*), i8* bitcast (void (%class.TF_ManagedBuffer*)* @_ZN16TF_ManagedBufferD0Ev to i8*), i8* bitcast (i64 (%class.TF_ManagedBuffer*)* @_ZNK16TF_ManagedBuffer4sizeEv to i8*), i8* bitcast (%"class.tensorflow::TensorBuffer"* (%class.TF_ManagedBuffer*)* @_ZN16TF_ManagedBuffer11root_bufferEv to i8*), i8* bitcast (void (%class.TF_ManagedBuffer*, %"class.tensorflow::AllocationDescription"*)* @_ZNK16TF_ManagedBuffer25FillAllocationDescriptionEPN10tensorflow21AllocationDescriptionE to i8*), i8* bitcast (i1 (%"class.tensorflow::TensorBuffer"*, i64*)* @_ZNK10tensorflow12TensorBuffer17GetAllocatedBytesEPm to i8*), i8* bitcast (i1 (%class.TF_ManagedBuffer*)* @_ZNK16TF_ManagedBuffer10OwnsMemoryEv to i8*), i8* bitcast (i32 (%"class.tensorflow::TensorBuffer"*)* @_ZNK10tensorflow12TensorBuffer13GetMemoryTypeEv to i8*)] }, comdat, align 8
@_ZTI16TF_ManagedBuffer = linkonce_odr dso_local constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @_ZTS16TF_ManagedBuffer, i32 0, i32 0), i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN10tensorflow12TensorBufferE to i8*) }, comdat, align 8
@_ZTS16TF_ManagedBuffer = linkonce_odr dso_local constant [19 x i8] c"16TF_ManagedBuffer\00", comdat, align 1
@_ZTVN10tensorflow4core10RefCountedE = linkonce_odr dso_local unnamed_addr constant { [4 x i8*] } { [4 x i8*] [i8* null, i8* bitcast ({ i8*, i8* }* @_ZTIN10tensorflow4core10RefCountedE to i8*), i8* bitcast (void (%"class.tensorflow::core::RefCounted"*)* @_ZN10tensorflow4core10RefCountedD2Ev to i8*), i8* bitcast (void (%"class.tensorflow::core::RefCounted"*)* @_ZN10tensorflow4core10RefCountedD0Ev to i8*)] }, comdat, align 8
@_ZTIN10tensorflow4core10RefCountedE = linkonce_odr dso_local constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv117__class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @_ZTSN10tensorflow4core10RefCountedE, i32 0, i32 0) }, comdat, align 8
@_ZTSN10tensorflow4core10RefCountedE = linkonce_odr dso_local constant [32 x i8] c"N10tensorflow4core10RefCountedE\00", comdat, align 1
@.str.1.9 = private unnamed_addr constant [13 x i8] c"TF_NewTensor\00", align 1
@_ZTVN10tensorflow12TensorBufferE = dso_local unnamed_addr constant { [10 x i8*] } { [10 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN10tensorflow12TensorBufferE to i8*), i8* bitcast (void (%"class.tensorflow::TensorBuffer"*)* @_ZN10tensorflow12TensorBufferD2Ev to i8*), i8* bitcast (void (%"class.tensorflow::TensorBuffer"*)* @_ZN10tensorflow12TensorBufferD0Ev to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (i1 (%"class.tensorflow::TensorBuffer"*, i64*)* @_ZNK10tensorflow12TensorBuffer17GetAllocatedBytesEPm to i8*), i8* bitcast (i1 (%"class.tensorflow::TensorBuffer"*)* @_ZNK10tensorflow12TensorBuffer10OwnsMemoryEv to i8*), i8* bitcast (i32 (%"class.tensorflow::TensorBuffer"*)* @_ZNK10tensorflow12TensorBuffer13GetMemoryTypeEv to i8*)] }, align 8
@_ZTIN10tensorflow12TensorBufferE = dso_local constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @_ZTSN10tensorflow12TensorBufferE, i32 0, i32 0), i8* bitcast ({ i8*, i8* }* @_ZTIN10tensorflow4core10RefCountedE to i8*) }, align 8
@_ZTSN10tensorflow12TensorBufferE = dso_local constant [29 x i8] c"N10tensorflow12TensorBufferE\00", align 1
@.str.9 = private unnamed_addr constant [67 x i8] c"/home/mushfiqur/tools/klee/runtime/Intrinsic/klee_div_zero_check.c\00", align 1
@.str.1.10 = private unnamed_addr constant [15 x i8] c"divide by zero\00", align 1
@.str.2.11 = private unnamed_addr constant [8 x i8] c"div.err\00", align 1

@_ZN10tensorflow6TensorC1E8DataTypeRKNS_11TensorShapeEPNS_12TensorBufferE = dso_local unnamed_addr alias void (%"class.tensorflow::Tensor"*, i32, %"class.tensorflow::TensorShape"*, %"class.tensorflow::TensorBuffer"*), void (%"class.tensorflow::Tensor"*, i32, %"class.tensorflow::TensorShape"*, %"class.tensorflow::TensorBuffer"*)* @_ZN10tensorflow6TensorC2E8DataTypeRKNS_11TensorShapeEPNS_12TensorBufferE
@_ZN10tensorflow6TensorD1Ev = dso_local unnamed_addr alias void (%"class.tensorflow::Tensor"*), void (%"class.tensorflow::Tensor"*)* @_ZN10tensorflow6TensorD2Ev
@_ZN10tensorflow6TensorC1EOS0_ = dso_local unnamed_addr alias void (%"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"*), void (%"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"*)* @_ZN10tensorflow6TensorC2EOS0_

; Function Attrs: noinline norecurse optnone uwtable
define dso_local i32 @main() #0 !dbg !2308 {
entry:
  %retval = alloca i32, align 4
  %dims = alloca [3 x i64], align 16
  %dtype = alloca i32, align 4
  %len = alloca i64, align 8
  %base = alloca i8*, align 8
  %offset = alloca i32, align 4
  %data = alloca i8*, align 8
  %sym = alloca i64, align 8
  %t = alloca %struct.TF_Tensor*, align 8
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata [3 x i64]* %dims, metadata !2310, metadata !DIExpression()), !dbg !2314
  %arraydecay = getelementptr inbounds [3 x i64], [3 x i64]* %dims, i64 0, i64 0, !dbg !2315
  %0 = bitcast i64* %arraydecay to i8*, !dbg !2315
  call void @klee_make_symbolic(i8* %0, i64 24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0)), !dbg !2316
  %arrayidx = getelementptr inbounds [3 x i64], [3 x i64]* %dims, i64 0, i64 0, !dbg !2317
  %1 = load i64, i64* %arrayidx, align 16, !dbg !2317
  %cmp = icmp sge i64 %1, -100, !dbg !2318
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !2319

land.rhs:                                         ; preds = %entry
  %arrayidx1 = getelementptr inbounds [3 x i64], [3 x i64]* %dims, i64 0, i64 0, !dbg !2320
  %2 = load i64, i64* %arrayidx1, align 16, !dbg !2320
  %cmp2 = icmp sle i64 %2, 100, !dbg !2321
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i1 [ false, %entry ], [ %cmp2, %land.rhs ], !dbg !2322
  %conv = zext i1 %3 to i64, !dbg !2317
  call void @klee_assume(i64 %conv), !dbg !2323
  %arrayidx3 = getelementptr inbounds [3 x i64], [3 x i64]* %dims, i64 0, i64 1, !dbg !2324
  %4 = load i64, i64* %arrayidx3, align 8, !dbg !2324
  %cmp4 = icmp sge i64 %4, -100, !dbg !2325
  br i1 %cmp4, label %land.rhs5, label %land.end8, !dbg !2326

land.rhs5:                                        ; preds = %land.end
  %arrayidx6 = getelementptr inbounds [3 x i64], [3 x i64]* %dims, i64 0, i64 1, !dbg !2327
  %5 = load i64, i64* %arrayidx6, align 8, !dbg !2327
  %cmp7 = icmp sle i64 %5, 100, !dbg !2328
  br label %land.end8

land.end8:                                        ; preds = %land.rhs5, %land.end
  %6 = phi i1 [ false, %land.end ], [ %cmp7, %land.rhs5 ], !dbg !2322
  %conv9 = zext i1 %6 to i64, !dbg !2324
  call void @klee_assume(i64 %conv9), !dbg !2329
  call void @llvm.dbg.declare(metadata i32* %dtype, metadata !2330, metadata !DIExpression()), !dbg !2331
  %7 = bitcast i32* %dtype to i8*, !dbg !2332
  call void @klee_make_symbolic(i8* %7, i64 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0)), !dbg !2333
  %8 = load i32, i32* %dtype, align 4, !dbg !2334
  %cmp10 = icmp eq i32 %8, 1, !dbg !2335
  br i1 %cmp10, label %lor.end, label %lor.lhs.false, !dbg !2336

lor.lhs.false:                                    ; preds = %land.end8
  %9 = load i32, i32* %dtype, align 4, !dbg !2337
  %cmp11 = icmp eq i32 %9, 2, !dbg !2338
  br i1 %cmp11, label %lor.end, label %lor.lhs.false12, !dbg !2339

lor.lhs.false12:                                  ; preds = %lor.lhs.false
  %10 = load i32, i32* %dtype, align 4, !dbg !2340
  %cmp13 = icmp eq i32 %10, 3, !dbg !2341
  br i1 %cmp13, label %lor.end, label %lor.lhs.false14, !dbg !2342

lor.lhs.false14:                                  ; preds = %lor.lhs.false12
  %11 = load i32, i32* %dtype, align 4, !dbg !2343
  %cmp15 = icmp eq i32 %11, 4, !dbg !2344
  br i1 %cmp15, label %lor.end, label %lor.lhs.false16, !dbg !2345

lor.lhs.false16:                                  ; preds = %lor.lhs.false14
  %12 = load i32, i32* %dtype, align 4, !dbg !2346
  %cmp17 = icmp eq i32 %12, 5, !dbg !2347
  br i1 %cmp17, label %lor.end, label %lor.lhs.false18, !dbg !2348

lor.lhs.false18:                                  ; preds = %lor.lhs.false16
  %13 = load i32, i32* %dtype, align 4, !dbg !2349
  %cmp19 = icmp eq i32 %13, 6, !dbg !2350
  br i1 %cmp19, label %lor.end, label %lor.lhs.false20, !dbg !2351

lor.lhs.false20:                                  ; preds = %lor.lhs.false18
  %14 = load i32, i32* %dtype, align 4, !dbg !2352
  %cmp21 = icmp eq i32 %14, 9, !dbg !2353
  br i1 %cmp21, label %lor.end, label %lor.rhs, !dbg !2354

lor.rhs:                                          ; preds = %lor.lhs.false20
  %15 = load i32, i32* %dtype, align 4, !dbg !2355
  %cmp22 = icmp eq i32 %15, 10, !dbg !2356
  br label %lor.end, !dbg !2354

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false20, %lor.lhs.false18, %lor.lhs.false16, %lor.lhs.false14, %lor.lhs.false12, %lor.lhs.false, %land.end8
  %16 = phi i1 [ true, %lor.lhs.false20 ], [ true, %lor.lhs.false18 ], [ true, %lor.lhs.false16 ], [ true, %lor.lhs.false14 ], [ true, %lor.lhs.false12 ], [ true, %lor.lhs.false ], [ true, %land.end8 ], [ %cmp22, %lor.rhs ]
  %conv23 = zext i1 %16 to i64, !dbg !2334
  call void @klee_assume(i64 %conv23), !dbg !2357
  call void @llvm.dbg.declare(metadata i64* %len, metadata !2358, metadata !DIExpression()), !dbg !2359
  %17 = bitcast i64* %len to i8*, !dbg !2360
  call void @klee_make_symbolic(i8* %17, i64 8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)), !dbg !2361
  %18 = load i64, i64* %len, align 8, !dbg !2362
  %cmp24 = icmp ule i64 %18, 128, !dbg !2363
  br i1 %cmp24, label %land.rhs25, label %land.end27, !dbg !2364

land.rhs25:                                       ; preds = %lor.end
  %19 = load i64, i64* %len, align 8, !dbg !2365
  %cmp26 = icmp uge i64 %19, 1, !dbg !2366
  br label %land.end27

land.end27:                                       ; preds = %land.rhs25, %lor.end
  %20 = phi i1 [ false, %lor.end ], [ %cmp26, %land.rhs25 ], !dbg !2322
  %conv28 = zext i1 %20 to i64, !dbg !2362
  call void @klee_assume(i64 %conv28), !dbg !2367
  call void @llvm.dbg.declare(metadata i8** %base, metadata !2368, metadata !DIExpression()), !dbg !2369
  %call = call noalias i8* @malloc(i64 192) #6, !dbg !2370
  store i8* %call, i8** %base, align 8, !dbg !2369
  %21 = load i8*, i8** %base, align 8, !dbg !2371
  %cmp29 = icmp ne i8* %21, null, !dbg !2372
  %conv30 = zext i1 %cmp29 to i64, !dbg !2371
  call void @klee_assume(i64 %conv30), !dbg !2373
  call void @llvm.dbg.declare(metadata i32* %offset, metadata !2374, metadata !DIExpression()), !dbg !2375
  %22 = bitcast i32* %offset to i8*, !dbg !2376
  call void @klee_make_symbolic(i8* %22, i64 4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0)), !dbg !2377
  %23 = load i32, i32* %offset, align 4, !dbg !2378
  %cmp31 = icmp ult i32 %23, 32, !dbg !2379
  %conv32 = zext i1 %cmp31 to i64, !dbg !2378
  call void @klee_assume(i64 %conv32), !dbg !2380
  call void @llvm.dbg.declare(metadata i8** %data, metadata !2381, metadata !DIExpression()), !dbg !2382
  %24 = load i8*, i8** %base, align 8, !dbg !2383
  %25 = load i32, i32* %offset, align 4, !dbg !2384
  %idx.ext = zext i32 %25 to i64, !dbg !2385
  %add.ptr = getelementptr inbounds i8, i8* %24, i64 %idx.ext, !dbg !2385
  store i8* %add.ptr, i8** %data, align 8, !dbg !2382
  %26 = load i64, i64* %len, align 8, !dbg !2386
  %cmp33 = icmp ugt i64 %26, 0, !dbg !2388
  br i1 %cmp33, label %if.then, label %if.end, !dbg !2389

if.then:                                          ; preds = %land.end27
  call void @llvm.dbg.declare(metadata i64* %sym, metadata !2390, metadata !DIExpression()), !dbg !2392
  %27 = load i64, i64* %len, align 8, !dbg !2393
  %cmp34 = icmp ult i64 %27, 16, !dbg !2394
  br i1 %cmp34, label %cond.true, label %cond.false, !dbg !2393

cond.true:                                        ; preds = %if.then
  %28 = load i64, i64* %len, align 8, !dbg !2395
  br label %cond.end, !dbg !2393

cond.false:                                       ; preds = %if.then
  br label %cond.end, !dbg !2393

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %28, %cond.true ], [ 16, %cond.false ], !dbg !2393
  store i64 %cond, i64* %sym, align 8, !dbg !2392
  %29 = load i8*, i8** %data, align 8, !dbg !2396
  %30 = load i64, i64* %sym, align 8, !dbg !2397
  call void @klee_make_symbolic(i8* %29, i64 %30, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0)), !dbg !2398
  br label %if.end, !dbg !2399

if.end:                                           ; preds = %cond.end, %land.end27
  call void @llvm.dbg.declare(metadata %struct.TF_Tensor** %t, metadata !2400, metadata !DIExpression()), !dbg !2445
  %31 = load i32, i32* %dtype, align 4, !dbg !2446
  %arraydecay35 = getelementptr inbounds [3 x i64], [3 x i64]* %dims, i64 0, i64 0, !dbg !2447
  %32 = load i8*, i8** %data, align 8, !dbg !2448
  %33 = load i64, i64* %len, align 8, !dbg !2449
  %call36 = call %struct.TF_Tensor* @TF_NewTensor(i32 %31, i64* %arraydecay35, i32 2, i8* %32, i64 %33, void (i8*, i64, i8*)* @_ZL17dummy_deallocatorPvmS_, i8* null), !dbg !2450
  store %struct.TF_Tensor* %call36, %struct.TF_Tensor** %t, align 8, !dbg !2445
  %34 = load %struct.TF_Tensor*, %struct.TF_Tensor** %t, align 8, !dbg !2451
  %cmp37 = icmp eq %struct.TF_Tensor* %34, null, !dbg !2453
  br i1 %cmp37, label %if.then38, label %if.end46, !dbg !2454

if.then38:                                        ; preds = %if.end
  %arrayidx39 = getelementptr inbounds [3 x i64], [3 x i64]* %dims, i64 0, i64 0, !dbg !2455
  %35 = load i64, i64* %arrayidx39, align 16, !dbg !2455
  %cmp40 = icmp eq i64 %35, 0, !dbg !2458
  br i1 %cmp40, label %if.then44, label %lor.lhs.false41, !dbg !2459

lor.lhs.false41:                                  ; preds = %if.then38
  %arrayidx42 = getelementptr inbounds [3 x i64], [3 x i64]* %dims, i64 0, i64 1, !dbg !2460
  %36 = load i64, i64* %arrayidx42, align 8, !dbg !2460
  %cmp43 = icmp eq i64 %36, 0, !dbg !2461
  br i1 %cmp43, label %if.then44, label %if.else, !dbg !2462

if.then44:                                        ; preds = %lor.lhs.false41, %if.then38
  br label %if.end45, !dbg !2463

if.else:                                          ; preds = %lor.lhs.false41
  br label %if.end45

if.end45:                                         ; preds = %if.else, %if.then44
  store i32 0, i32* %retval, align 4, !dbg !2465
  br label %return, !dbg !2465

if.end46:                                         ; preds = %if.end
  %37 = load %struct.TF_Tensor*, %struct.TF_Tensor** %t, align 8, !dbg !2466
  call void @TF_DeleteTensor(%struct.TF_Tensor* %37), !dbg !2467
  %38 = load i8*, i8** %base, align 8, !dbg !2468
  call void @free(i8* %38) #6, !dbg !2469
  store i32 0, i32* %retval, align 4, !dbg !2470
  br label %return, !dbg !2470

return:                                           ; preds = %if.end46, %if.end45
  %39 = load i32, i32* %retval, align 4, !dbg !2471
  ret i32 %39, !dbg !2471
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local void @klee_make_symbolic(i8*, i64, i8*) #2

declare dso_local void @klee_assume(i64) #2

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_ZL17dummy_deallocatorPvmS_(i8* %data, i64 %len, i8* %arg) #4 !dbg !2472 {
entry:
  %data.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %arg.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !2475, metadata !DIExpression()), !dbg !2476
  store i64 %len, i64* %len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !2477, metadata !DIExpression()), !dbg !2478
  store i8* %arg, i8** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %arg.addr, metadata !2479, metadata !DIExpression()), !dbg !2480
  ret void, !dbg !2481
}

; Function Attrs: nounwind
declare dso_local void @free(i8*) #3

; Function Attrs: noinline optnone uwtable
define dso_local i8* @_ZN10tensorflow15allocate_tensorEPKcmPNS_9AllocatorE(i8* %operation, i64 %len, %"class.tensorflow::AbstractTensorInterface"* %allocator) #5 !dbg !2482 {
entry:
  %operation.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %allocator.addr = alloca %"class.tensorflow::AbstractTensorInterface"*, align 8
  %data = alloca i8*, align 8
  store i8* %operation, i8** %operation.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %operation.addr, metadata !2485, metadata !DIExpression()), !dbg !2486
  store i64 %len, i64* %len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !2487, metadata !DIExpression()), !dbg !2488
  store %"class.tensorflow::AbstractTensorInterface"* %allocator, %"class.tensorflow::AbstractTensorInterface"** %allocator.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::AbstractTensorInterface"** %allocator.addr, metadata !2489, metadata !DIExpression()), !dbg !2490
  call void @llvm.dbg.declare(metadata i8** %data, metadata !2491, metadata !DIExpression()), !dbg !2492
  %0 = load %"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"** %allocator.addr, align 8, !dbg !2493
  %1 = load i64, i64* %len.addr, align 8, !dbg !2494
  %2 = bitcast %"class.tensorflow::AbstractTensorInterface"* %0 to i8* (%"class.tensorflow::AbstractTensorInterface"*, i64, i64)***, !dbg !2495
  %vtable = load i8* (%"class.tensorflow::AbstractTensorInterface"*, i64, i64)**, i8* (%"class.tensorflow::AbstractTensorInterface"*, i64, i64)*** %2, align 8, !dbg !2495
  %vfn = getelementptr inbounds i8* (%"class.tensorflow::AbstractTensorInterface"*, i64, i64)*, i8* (%"class.tensorflow::AbstractTensorInterface"*, i64, i64)** %vtable, i64 3, !dbg !2495
  %3 = load i8* (%"class.tensorflow::AbstractTensorInterface"*, i64, i64)*, i8* (%"class.tensorflow::AbstractTensorInterface"*, i64, i64)** %vfn, align 8, !dbg !2495
  %call = call i8* %3(%"class.tensorflow::AbstractTensorInterface"* %0, i64 64, i64 %1), !dbg !2495
  store i8* %call, i8** %data, align 8, !dbg !2492
  %4 = load i8*, i8** %data, align 8, !dbg !2496
  ret i8* %4, !dbg !2497
}

; Function Attrs: noinline optnone uwtable
define dso_local i8* @_ZN10tensorflow15allocate_tensorEPKcm(i8* %operation, i64 %len) #5 !dbg !2498 {
entry:
  %operation.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  store i8* %operation, i8** %operation.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %operation.addr, metadata !2501, metadata !DIExpression()), !dbg !2502
  store i64 %len, i64* %len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !2503, metadata !DIExpression()), !dbg !2504
  %0 = load i8*, i8** %operation.addr, align 8, !dbg !2505
  %1 = load i64, i64* %len.addr, align 8, !dbg !2506
  %call = call %"class.tensorflow::AbstractTensorInterface"* @_ZN10tensorflow13cpu_allocatorEv(), !dbg !2507
  %call1 = call i8* @_ZN10tensorflow15allocate_tensorEPKcmPNS_9AllocatorE(i8* %0, i64 %1, %"class.tensorflow::AbstractTensorInterface"* %call), !dbg !2508
  ret i8* %call1, !dbg !2509
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %"class.tensorflow::AbstractTensorInterface"* @_ZN10tensorflow13cpu_allocatorEv() #5 comdat personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !2 {
entry:
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  %0 = load i8, i8* bitcast (i64* @_ZGVZN10tensorflow13cpu_allocatorEvE4inst to i8*), align 8, !dbg !2510
  %guard.uninitialized = icmp eq i8 %0, 0, !dbg !2510
  br i1 %guard.uninitialized, label %init.check, label %init.end, !dbg !2510, !prof !2511

init.check:                                       ; preds = %entry
  %1 = call i32 @__cxa_guard_acquire(i64* @_ZGVZN10tensorflow13cpu_allocatorEvE4inst) #6, !dbg !2510
  %tobool = icmp ne i32 %1, 0, !dbg !2510
  br i1 %tobool, label %init, label %init.end, !dbg !2510

init:                                             ; preds = %init.check
  %call = invoke noalias nonnull i8* @_Znwm(i64 8) #16
          to label %invoke.cont unwind label %lpad, !dbg !2512, !heapallocsite !2183

invoke.cont:                                      ; preds = %init
  %2 = bitcast i8* %call to %"class.tensorflow::StubCPUAllocator"*, !dbg !2512
  %3 = bitcast %"class.tensorflow::StubCPUAllocator"* %2 to i8*, !dbg !2513
  %4 = call i8* @memset(i8* %3, i32 0, i64 8), !dbg !2513
  call void @_ZN10tensorflow16StubCPUAllocatorC2Ev(%"class.tensorflow::StubCPUAllocator"* %2) #6, !dbg !2513
  store %"class.tensorflow::StubCPUAllocator"* %2, %"class.tensorflow::StubCPUAllocator"** @_ZZN10tensorflow13cpu_allocatorEvE4inst, align 8, !dbg !2510
  call void @__cxa_guard_release(i64* @_ZGVZN10tensorflow13cpu_allocatorEvE4inst) #6, !dbg !2510
  br label %init.end, !dbg !2510

init.end:                                         ; preds = %invoke.cont, %init.check, %entry
  %5 = load %"class.tensorflow::StubCPUAllocator"*, %"class.tensorflow::StubCPUAllocator"** @_ZZN10tensorflow13cpu_allocatorEvE4inst, align 8, !dbg !2514
  %6 = bitcast %"class.tensorflow::StubCPUAllocator"* %5 to %"class.tensorflow::AbstractTensorInterface"*, !dbg !2514
  ret %"class.tensorflow::AbstractTensorInterface"* %6, !dbg !2515

lpad:                                             ; preds = %init
  %7 = landingpad { i8*, i32 }
          cleanup, !dbg !2516
  %8 = extractvalue { i8*, i32 } %7, 0, !dbg !2516
  store i8* %8, i8** %exn.slot, align 8, !dbg !2516
  %9 = extractvalue { i8*, i32 } %7, 1, !dbg !2516
  store i32 %9, i32* %ehselector.slot, align 4, !dbg !2516
  call void @__cxa_guard_abort(i64* @_ZGVZN10tensorflow13cpu_allocatorEvE4inst) #6, !dbg !2510
  br label %eh.resume, !dbg !2510

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8, !dbg !2510
  %sel = load i32, i32* %ehselector.slot, align 4, !dbg !2510
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0, !dbg !2510
  %lpad.val1 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1, !dbg !2510
  resume { i8*, i32 } %lpad.val1, !dbg !2510
}

declare dso_local i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare dso_local i32 @__cxa_guard_acquire(i64*) #6

; Function Attrs: nobuiltin allocsize(0)
declare dso_local nonnull i8* @_Znwm(i64) #7

; Function Attrs: argmemonly nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow16StubCPUAllocatorC2Ev(%"class.tensorflow::StubCPUAllocator"* %this) unnamed_addr #4 comdat align 2 !dbg !2517 {
entry:
  %this.addr = alloca %"class.tensorflow::StubCPUAllocator"*, align 8
  store %"class.tensorflow::StubCPUAllocator"* %this, %"class.tensorflow::StubCPUAllocator"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::StubCPUAllocator"** %this.addr, metadata !2519, metadata !DIExpression()), !dbg !2520
  %this1 = load %"class.tensorflow::StubCPUAllocator"*, %"class.tensorflow::StubCPUAllocator"** %this.addr, align 8
  %0 = bitcast %"class.tensorflow::StubCPUAllocator"* %this1 to %"class.tensorflow::AbstractTensorInterface"*, !dbg !2521
  call void @_ZN10tensorflow9AllocatorC2Ev(%"class.tensorflow::AbstractTensorInterface"* %0) #6, !dbg !2521
  %1 = bitcast %"class.tensorflow::StubCPUAllocator"* %this1 to i32 (...)***, !dbg !2521
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [19 x i8*] }, { [19 x i8*] }* @_ZTVN10tensorflow16StubCPUAllocatorE, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %1, align 8, !dbg !2521
  ret void, !dbg !2521
}

; Function Attrs: nounwind
declare dso_local void @__cxa_guard_release(i64*) #6

; Function Attrs: nounwind
declare dso_local void @__cxa_guard_abort(i64*) #6

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow9AllocatorC2Ev(%"class.tensorflow::AbstractTensorInterface"* %this) unnamed_addr #4 comdat align 2 !dbg !2522 {
entry:
  %this.addr = alloca %"class.tensorflow::AbstractTensorInterface"*, align 8
  store %"class.tensorflow::AbstractTensorInterface"* %this, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::AbstractTensorInterface"** %this.addr, metadata !2524, metadata !DIExpression()), !dbg !2525
  %this1 = load %"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  %0 = bitcast %"class.tensorflow::AbstractTensorInterface"* %this1 to i32 (...)***, !dbg !2526
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [19 x i8*] }, { [19 x i8*] }* @_ZTVN10tensorflow9AllocatorE, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %0, align 8, !dbg !2526
  ret void, !dbg !2526
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow16StubCPUAllocatorD2Ev(%"class.tensorflow::StubCPUAllocator"* %this) unnamed_addr #4 comdat align 2 !dbg !2527 {
entry:
  %this.addr = alloca %"class.tensorflow::StubCPUAllocator"*, align 8
  store %"class.tensorflow::StubCPUAllocator"* %this, %"class.tensorflow::StubCPUAllocator"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::StubCPUAllocator"** %this.addr, metadata !2528, metadata !DIExpression()), !dbg !2529
  %this1 = load %"class.tensorflow::StubCPUAllocator"*, %"class.tensorflow::StubCPUAllocator"** %this.addr, align 8
  %0 = bitcast %"class.tensorflow::StubCPUAllocator"* %this1 to %"class.tensorflow::AbstractTensorInterface"*, !dbg !2530
  call void @_ZN10tensorflow9AllocatorD2Ev(%"class.tensorflow::AbstractTensorInterface"* %0) #6, !dbg !2530
  ret void, !dbg !2532
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow16StubCPUAllocatorD0Ev(%"class.tensorflow::StubCPUAllocator"* %this) unnamed_addr #4 comdat align 2 !dbg !2533 {
entry:
  %this.addr = alloca %"class.tensorflow::StubCPUAllocator"*, align 8
  store %"class.tensorflow::StubCPUAllocator"* %this, %"class.tensorflow::StubCPUAllocator"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::StubCPUAllocator"** %this.addr, metadata !2534, metadata !DIExpression()), !dbg !2535
  %this1 = load %"class.tensorflow::StubCPUAllocator"*, %"class.tensorflow::StubCPUAllocator"** %this.addr, align 8
  call void @_ZN10tensorflow16StubCPUAllocatorD2Ev(%"class.tensorflow::StubCPUAllocator"* %this1) #6, !dbg !2536
  %0 = bitcast %"class.tensorflow::StubCPUAllocator"* %this1 to i8*, !dbg !2536
  call void @_ZdlPv(i8* %0) #17, !dbg !2536
  ret void, !dbg !2536
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow16StubCPUAllocator4NameB5cxx11Ev(%"class.std::__cxx11::basic_string"* noalias sret align 8 %agg.result, %"class.tensorflow::StubCPUAllocator"* %this) unnamed_addr #5 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !2537 {
entry:
  %result.ptr = alloca i8*, align 8
  %this.addr = alloca %"class.tensorflow::StubCPUAllocator"*, align 8
  %ref.tmp = alloca %"class.std::allocator.0", align 1
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  %0 = bitcast %"class.std::__cxx11::basic_string"* %agg.result to i8*
  store i8* %0, i8** %result.ptr, align 8
  store %"class.tensorflow::StubCPUAllocator"* %this, %"class.tensorflow::StubCPUAllocator"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::StubCPUAllocator"** %this.addr, metadata !2538, metadata !DIExpression()), !dbg !2539
  %this1 = load %"class.tensorflow::StubCPUAllocator"*, %"class.tensorflow::StubCPUAllocator"** %this.addr, align 8
  call void @_ZNSaIcEC1Ev(%"class.std::allocator.0"* %ref.tmp) #6, !dbg !2540
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(%"class.std::__cxx11::basic_string"* %agg.result, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4.1, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %ref.tmp)
          to label %invoke.cont unwind label %lpad, !dbg !2540

invoke.cont:                                      ; preds = %entry
  call void @_ZNSaIcED1Ev(%"class.std::allocator.0"* %ref.tmp) #6, !dbg !2541
  ret void, !dbg !2541

lpad:                                             ; preds = %entry
  %1 = landingpad { i8*, i32 }
          cleanup, !dbg !2542
  %2 = extractvalue { i8*, i32 } %1, 0, !dbg !2542
  store i8* %2, i8** %exn.slot, align 8, !dbg !2542
  %3 = extractvalue { i8*, i32 } %1, 1, !dbg !2542
  store i32 %3, i32* %ehselector.slot, align 4, !dbg !2542
  call void @_ZNSaIcED1Ev(%"class.std::allocator.0"* %ref.tmp) #6, !dbg !2541
  br label %eh.resume, !dbg !2541

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8, !dbg !2541
  %sel = load i32, i32* %ehselector.slot, align 4, !dbg !2541
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0, !dbg !2541
  %lpad.val2 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1, !dbg !2541
  resume { i8*, i32 } %lpad.val2, !dbg !2541
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i8* @_ZN10tensorflow9Allocator11AllocateRawEmm(%"class.tensorflow::AbstractTensorInterface"* %this, i64 %alignment, i64 %num_bytes) unnamed_addr #5 comdat align 2 !dbg !2543 {
entry:
  %this.addr = alloca %"class.tensorflow::AbstractTensorInterface"*, align 8
  %alignment.addr = alloca i64, align 8
  %num_bytes.addr = alloca i64, align 8
  store %"class.tensorflow::AbstractTensorInterface"* %this, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::AbstractTensorInterface"** %this.addr, metadata !2544, metadata !DIExpression()), !dbg !2545
  store i64 %alignment, i64* %alignment.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %alignment.addr, metadata !2546, metadata !DIExpression()), !dbg !2547
  store i64 %num_bytes, i64* %num_bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %num_bytes.addr, metadata !2548, metadata !DIExpression()), !dbg !2549
  %this1 = load %"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  %0 = load i64, i64* %num_bytes.addr, align 8, !dbg !2550
  %1 = load i64, i64* %alignment.addr, align 8, !dbg !2551
  %call = call noalias nonnull i8* @_ZnwmSt11align_val_t(i64 %0, i64 %1) #18, !dbg !2552
  %mask = sub i64 %1, 1, !dbg !2552
  %ptrint = ptrtoint i8* %call to i64, !dbg !2552
  %maskedptr = and i64 %ptrint, %mask, !dbg !2552
  %maskcond = icmp eq i64 %maskedptr, 0, !dbg !2552
  ret i8* %call, !dbg !2553
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow9Allocator13DeallocateRawEPv(%"class.tensorflow::AbstractTensorInterface"* %this, i8* %ptr) unnamed_addr #4 comdat align 2 !dbg !2554 {
entry:
  %this.addr = alloca %"class.tensorflow::AbstractTensorInterface"*, align 8
  %ptr.addr = alloca i8*, align 8
  store %"class.tensorflow::AbstractTensorInterface"* %this, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::AbstractTensorInterface"** %this.addr, metadata !2555, metadata !DIExpression()), !dbg !2556
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !2557, metadata !DIExpression()), !dbg !2558
  %this1 = load %"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !2559
  call void @_ZdlPv(i8* %0) #6, !dbg !2560
  ret void, !dbg !2561
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i8* @_ZN10tensorflow9Allocator11AllocateRawEmmPKv(%"class.tensorflow::AbstractTensorInterface"* %this, i64 %alignment, i64 %num_bytes, i8* %0) unnamed_addr #5 comdat align 2 !dbg !2562 {
entry:
  %this.addr = alloca %"class.tensorflow::AbstractTensorInterface"*, align 8
  %alignment.addr = alloca i64, align 8
  %num_bytes.addr = alloca i64, align 8
  %.addr = alloca i8*, align 8
  store %"class.tensorflow::AbstractTensorInterface"* %this, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::AbstractTensorInterface"** %this.addr, metadata !2563, metadata !DIExpression()), !dbg !2564
  store i64 %alignment, i64* %alignment.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %alignment.addr, metadata !2565, metadata !DIExpression()), !dbg !2566
  store i64 %num_bytes, i64* %num_bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %num_bytes.addr, metadata !2567, metadata !DIExpression()), !dbg !2568
  store i8* %0, i8** %.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %.addr, metadata !2569, metadata !DIExpression()), !dbg !2570
  %this1 = load %"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  %1 = load i64, i64* %alignment.addr, align 8, !dbg !2571
  %2 = load i64, i64* %num_bytes.addr, align 8, !dbg !2572
  %3 = bitcast %"class.tensorflow::AbstractTensorInterface"* %this1 to i8* (%"class.tensorflow::AbstractTensorInterface"*, i64, i64)***, !dbg !2573
  %vtable = load i8* (%"class.tensorflow::AbstractTensorInterface"*, i64, i64)**, i8* (%"class.tensorflow::AbstractTensorInterface"*, i64, i64)*** %3, align 8, !dbg !2573
  %vfn = getelementptr inbounds i8* (%"class.tensorflow::AbstractTensorInterface"*, i64, i64)*, i8* (%"class.tensorflow::AbstractTensorInterface"*, i64, i64)** %vtable, i64 3, !dbg !2573
  %4 = load i8* (%"class.tensorflow::AbstractTensorInterface"*, i64, i64)*, i8* (%"class.tensorflow::AbstractTensorInterface"*, i64, i64)** %vfn, align 8, !dbg !2573
  %call = call i8* %4(%"class.tensorflow::AbstractTensorInterface"* %this1, i64 %1, i64 %2), !dbg !2573
  ret i8* %call, !dbg !2574
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow9Allocator13DeallocateRawEPvmm(%"class.tensorflow::AbstractTensorInterface"* %this, i8* %ptr, i64 %0, i64 %1) unnamed_addr #5 comdat align 2 !dbg !2575 {
entry:
  %this.addr = alloca %"class.tensorflow::AbstractTensorInterface"*, align 8
  %ptr.addr = alloca i8*, align 8
  %.addr = alloca i64, align 8
  %.addr1 = alloca i64, align 8
  store %"class.tensorflow::AbstractTensorInterface"* %this, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::AbstractTensorInterface"** %this.addr, metadata !2576, metadata !DIExpression()), !dbg !2577
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !2578, metadata !DIExpression()), !dbg !2579
  store i64 %0, i64* %.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %.addr, metadata !2580, metadata !DIExpression()), !dbg !2581
  store i64 %1, i64* %.addr1, align 8
  call void @llvm.dbg.declare(metadata i64* %.addr1, metadata !2582, metadata !DIExpression()), !dbg !2583
  %this2 = load %"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  %2 = load i8*, i8** %ptr.addr, align 8, !dbg !2584
  %3 = bitcast %"class.tensorflow::AbstractTensorInterface"* %this2 to void (%"class.tensorflow::AbstractTensorInterface"*, i8*)***, !dbg !2585
  %vtable = load void (%"class.tensorflow::AbstractTensorInterface"*, i8*)**, void (%"class.tensorflow::AbstractTensorInterface"*, i8*)*** %3, align 8, !dbg !2585
  %vfn = getelementptr inbounds void (%"class.tensorflow::AbstractTensorInterface"*, i8*)*, void (%"class.tensorflow::AbstractTensorInterface"*, i8*)** %vtable, i64 4, !dbg !2585
  %4 = load void (%"class.tensorflow::AbstractTensorInterface"*, i8*)*, void (%"class.tensorflow::AbstractTensorInterface"*, i8*)** %vfn, align 8, !dbg !2585
  call void %4(%"class.tensorflow::AbstractTensorInterface"* %this2, i8* %2), !dbg !2585
  ret void, !dbg !2586
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local zeroext i1 @_ZNK10tensorflow9Allocator21TracksAllocationSizesEv(%"class.tensorflow::AbstractTensorInterface"* %this) unnamed_addr #4 comdat align 2 !dbg !2587 {
entry:
  %this.addr = alloca %"class.tensorflow::AbstractTensorInterface"*, align 8
  store %"class.tensorflow::AbstractTensorInterface"* %this, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::AbstractTensorInterface"** %this.addr, metadata !2588, metadata !DIExpression()), !dbg !2590
  %this1 = load %"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  ret i1 false, !dbg !2591
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local zeroext i1 @_ZNK10tensorflow9Allocator21AllocatesOpaqueHandleEv(%"class.tensorflow::AbstractTensorInterface"* %this) unnamed_addr #4 comdat align 2 !dbg !2592 {
entry:
  %this.addr = alloca %"class.tensorflow::AbstractTensorInterface"*, align 8
  store %"class.tensorflow::AbstractTensorInterface"* %this, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::AbstractTensorInterface"** %this.addr, metadata !2593, metadata !DIExpression()), !dbg !2594
  %this1 = load %"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  ret i1 false, !dbg !2595
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @_ZNK10tensorflow9Allocator13RequestedSizeEPKv(%"class.tensorflow::AbstractTensorInterface"* %this, i8* %0) unnamed_addr #4 comdat align 2 !dbg !2596 {
entry:
  %this.addr = alloca %"class.tensorflow::AbstractTensorInterface"*, align 8
  %.addr = alloca i8*, align 8
  store %"class.tensorflow::AbstractTensorInterface"* %this, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::AbstractTensorInterface"** %this.addr, metadata !2597, metadata !DIExpression()), !dbg !2598
  store i8* %0, i8** %.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %.addr, metadata !2599, metadata !DIExpression()), !dbg !2600
  %this1 = load %"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  ret i64 0, !dbg !2601
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @_ZNK10tensorflow9Allocator13AllocatedSizeEPKv(%"class.tensorflow::AbstractTensorInterface"* %this, i8* %0) unnamed_addr #4 comdat align 2 !dbg !2602 {
entry:
  %this.addr = alloca %"class.tensorflow::AbstractTensorInterface"*, align 8
  %.addr = alloca i8*, align 8
  store %"class.tensorflow::AbstractTensorInterface"* %this, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::AbstractTensorInterface"** %this.addr, metadata !2603, metadata !DIExpression()), !dbg !2604
  store i8* %0, i8** %.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %.addr, metadata !2605, metadata !DIExpression()), !dbg !2606
  %this1 = load %"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  ret i64 0, !dbg !2607
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @_ZNK10tensorflow9Allocator12AllocationIdEPKv(%"class.tensorflow::AbstractTensorInterface"* %this, i8* %0) unnamed_addr #4 comdat align 2 !dbg !2608 {
entry:
  %this.addr = alloca %"class.tensorflow::AbstractTensorInterface"*, align 8
  %.addr = alloca i8*, align 8
  store %"class.tensorflow::AbstractTensorInterface"* %this, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::AbstractTensorInterface"** %this.addr, metadata !2609, metadata !DIExpression()), !dbg !2610
  store i8* %0, i8** %.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %.addr, metadata !2611, metadata !DIExpression()), !dbg !2612
  %this1 = load %"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  ret i64 0, !dbg !2613
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @_ZNK10tensorflow9Allocator17AllocatedSizeSlowEPKv(%"class.tensorflow::AbstractTensorInterface"* %this, i8* %0) unnamed_addr #4 comdat align 2 !dbg !2614 {
entry:
  %this.addr = alloca %"class.tensorflow::AbstractTensorInterface"*, align 8
  %.addr = alloca i8*, align 8
  store %"class.tensorflow::AbstractTensorInterface"* %this, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::AbstractTensorInterface"** %this.addr, metadata !2615, metadata !DIExpression()), !dbg !2616
  store i8* %0, i8** %.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %.addr, metadata !2617, metadata !DIExpression()), !dbg !2618
  %this1 = load %"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  ret i64 0, !dbg !2619
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local zeroext i1 @_ZN10tensorflow9Allocator10ClearStatsEv(%"class.tensorflow::AbstractTensorInterface"* %this) unnamed_addr #4 comdat align 2 !dbg !2620 {
entry:
  %this.addr = alloca %"class.tensorflow::AbstractTensorInterface"*, align 8
  store %"class.tensorflow::AbstractTensorInterface"* %this, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::AbstractTensorInterface"** %this.addr, metadata !2621, metadata !DIExpression()), !dbg !2622
  %this1 = load %"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  ret i1 false, !dbg !2623
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow9Allocator15SetSafeFrontierEm(%"class.tensorflow::AbstractTensorInterface"* %this, i64 %0) unnamed_addr #4 comdat align 2 !dbg !2624 {
entry:
  %this.addr = alloca %"class.tensorflow::AbstractTensorInterface"*, align 8
  %.addr = alloca i64, align 8
  store %"class.tensorflow::AbstractTensorInterface"* %this, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::AbstractTensorInterface"** %this.addr, metadata !2625, metadata !DIExpression()), !dbg !2626
  store i64 %0, i64* %.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %.addr, metadata !2627, metadata !DIExpression()), !dbg !2628
  %this1 = load %"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  ret void, !dbg !2629
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow9Allocator29SetStreamAndPreallocateMemoryEPv(%"class.tensorflow::AbstractTensorInterface"* %this, i8* %0) unnamed_addr #4 comdat align 2 !dbg !2630 {
entry:
  %this.addr = alloca %"class.tensorflow::AbstractTensorInterface"*, align 8
  %.addr = alloca i8*, align 8
  store %"class.tensorflow::AbstractTensorInterface"* %this, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::AbstractTensorInterface"** %this.addr, metadata !2631, metadata !DIExpression()), !dbg !2632
  store i8* %0, i8** %.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %.addr, metadata !2633, metadata !DIExpression()), !dbg !2634
  %this1 = load %"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  ret void, !dbg !2635
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i32 @_ZNK10tensorflow9Allocator13GetMemoryTypeEv(%"class.tensorflow::AbstractTensorInterface"* %this) unnamed_addr #4 comdat align 2 !dbg !2636 {
entry:
  %this.addr = alloca %"class.tensorflow::AbstractTensorInterface"*, align 8
  store %"class.tensorflow::AbstractTensorInterface"* %this, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::AbstractTensorInterface"** %this.addr, metadata !2637, metadata !DIExpression()), !dbg !2638
  %this1 = load %"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  ret i32 0, !dbg !2639
}

; Function Attrs: nobuiltin nounwind
declare dso_local void @_ZdlPv(i8*) #9

; Function Attrs: nobuiltin allocsize(0)
declare dso_local noalias nonnull i8* @_ZnwmSt11align_val_t(i64, i64) #7

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #10

; Function Attrs: nounwind
declare dso_local void @_ZNSaIcEC1Ev(%"class.std::allocator.0"*) unnamed_addr #3

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(%"class.std::__cxx11::basic_string"* %this, i8* %__s, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %__a) unnamed_addr #5 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !2640 {
entry:
  %this.addr = alloca %"class.std::__cxx11::basic_string"*, align 8
  %__s.addr = alloca i8*, align 8
  %__a.addr = alloca %"class.std::allocator.0"*, align 8
  %__end = alloca i8*, align 8
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  %agg.tmp = alloca %"class.std::allocator.0", align 1
  %ref.tmp = alloca %"class.std::allocator.0", align 1
  store %"class.std::__cxx11::basic_string"* %this, %"class.std::__cxx11::basic_string"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__cxx11::basic_string"** %this.addr, metadata !2647, metadata !DIExpression()), !dbg !2649
  store i8* %__s, i8** %__s.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %__s.addr, metadata !2650, metadata !DIExpression()), !dbg !2651
  store %"class.std::allocator.0"* %__a, %"class.std::allocator.0"** %__a.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::allocator.0"** %__a.addr, metadata !2652, metadata !DIExpression()), !dbg !2653
  %this1 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %this.addr, align 8
  %_M_dataplus = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %this1, i32 0, i32 0, !dbg !2654
  %call = call i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv(%"class.std::__cxx11::basic_string"* %this1), !dbg !2655
  %0 = load %"class.std::allocator.0"*, %"class.std::allocator.0"** %__a.addr, align 8, !dbg !2656
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC1EPcRKS3_(%"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char>>::_Alloc_hider"* %_M_dataplus, i8* %call, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %0), !dbg !2654
  call void @llvm.dbg.declare(metadata i8** %__end, metadata !2657, metadata !DIExpression()), !dbg !2659
  %1 = load i8*, i8** %__s.addr, align 8, !dbg !2660
  %tobool = icmp ne i8* %1, null, !dbg !2660
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !2660

cond.true:                                        ; preds = %entry
  %2 = load i8*, i8** %__s.addr, align 8, !dbg !2661
  %3 = load i8*, i8** %__s.addr, align 8, !dbg !2662
  %call2 = invoke i64 @_ZNSt11char_traitsIcE6lengthEPKc(i8* %3)
          to label %invoke.cont unwind label %lpad, !dbg !2663

invoke.cont:                                      ; preds = %cond.true
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 %call2, !dbg !2664
  br label %cond.end, !dbg !2660

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !2660

cond.end:                                         ; preds = %cond.false, %invoke.cont
  %cond = phi i8* [ %add.ptr, %invoke.cont ], [ inttoptr (i64 1 to i8*), %cond.false ], !dbg !2660
  store i8* %cond, i8** %__end, align 8, !dbg !2659
  %4 = load i8*, i8** %__s.addr, align 8, !dbg !2665
  %5 = load i8*, i8** %__end, align 8, !dbg !2666
  %6 = bitcast %"class.std::allocator.0"* %ref.tmp to %"class.std::allocator.0"*, !dbg !2667
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag(%"class.std::__cxx11::basic_string"* %this1, i8* %4, i8* %5)
          to label %invoke.cont3 unwind label %lpad, !dbg !2668

invoke.cont3:                                     ; preds = %cond.end
  ret void, !dbg !2669

lpad:                                             ; preds = %cond.end, %cond.true
  %7 = landingpad { i8*, i32 }
          cleanup, !dbg !2670
  %8 = extractvalue { i8*, i32 } %7, 0, !dbg !2670
  store i8* %8, i8** %exn.slot, align 8, !dbg !2670
  %9 = extractvalue { i8*, i32 } %7, 1, !dbg !2670
  store i32 %9, i32* %ehselector.slot, align 4, !dbg !2670
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev(%"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char>>::_Alloc_hider"* %_M_dataplus) #6, !dbg !2670
  br label %eh.resume, !dbg !2670

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8, !dbg !2670
  %sel = load i32, i32* %ehselector.slot, align 4, !dbg !2670
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0, !dbg !2670
  %lpad.val4 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1, !dbg !2670
  resume { i8*, i32 } %lpad.val4, !dbg !2670
}

; Function Attrs: nounwind
declare dso_local void @_ZNSaIcED1Ev(%"class.std::allocator.0"*) unnamed_addr #3

declare dso_local i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv(%"class.std::__cxx11::basic_string"*) #2

declare dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC1EPcRKS3_(%"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char>>::_Alloc_hider"*, i8*, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1)) unnamed_addr #2

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i64 @_ZNSt11char_traitsIcE6lengthEPKc(i8* %__s) #5 comdat align 2 !dbg !2671 {
entry:
  %__s.addr.i = alloca i8*, align 8
  %retval = alloca i64, align 8
  %__s.addr = alloca i8*, align 8
  store i8* %__s, i8** %__s.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %__s.addr, metadata !2724, metadata !DIExpression()), !dbg !2725
  %0 = load i8*, i8** %__s.addr, align 8, !dbg !2726
  store i8* %0, i8** %__s.addr.i, align 8
  call void @llvm.dbg.declare(metadata i8** %__s.addr.i, metadata !2728, metadata !DIExpression()), !dbg !2732
  br i1 false, label %if.then, label %if.end, !dbg !2734

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %__s.addr, align 8, !dbg !2735
  %call1 = call i64 @_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc(i8* %1), !dbg !2736
  store i64 %call1, i64* %retval, align 8, !dbg !2737
  br label %return, !dbg !2737

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %__s.addr, align 8, !dbg !2738
  %call2 = call i64 @strlen(i8* %2) #6, !dbg !2739
  store i64 %call2, i64* %retval, align 8, !dbg !2740
  br label %return, !dbg !2740

return:                                           ; preds = %if.end, %if.then
  %3 = load i64, i64* %retval, align 8, !dbg !2741
  ret i64 %3, !dbg !2741
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag(%"class.std::__cxx11::basic_string"* %this, i8* %__beg, i8* %__end) #5 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !2742 {
entry:
  %0 = alloca %"class.std::allocator.0", align 1
  %this.addr = alloca %"class.std::__cxx11::basic_string"*, align 8
  %__beg.addr = alloca i8*, align 8
  %__end.addr = alloca i8*, align 8
  %__dnew = alloca i64, align 8
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  store %"class.std::__cxx11::basic_string"* %this, %"class.std::__cxx11::basic_string"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__cxx11::basic_string"** %this.addr, metadata !2752, metadata !DIExpression()), !dbg !2753
  store i8* %__beg, i8** %__beg.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %__beg.addr, metadata !2754, metadata !DIExpression()), !dbg !2755
  store i8* %__end, i8** %__end.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %__end.addr, metadata !2756, metadata !DIExpression()), !dbg !2757
  call void @llvm.dbg.declare(metadata %"class.std::allocator.0"* %0, metadata !2758, metadata !DIExpression()), !dbg !2759
  %this1 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %this.addr, align 8
  %1 = load i8*, i8** %__beg.addr, align 8, !dbg !2760
  %call = call zeroext i1 @_ZN9__gnu_cxx17__is_null_pointerIKcEEbPT_(i8* %1), !dbg !2762
  br i1 %call, label %land.lhs.true, label %if.end, !dbg !2763

land.lhs.true:                                    ; preds = %entry
  %2 = load i8*, i8** %__beg.addr, align 8, !dbg !2764
  %3 = load i8*, i8** %__end.addr, align 8, !dbg !2765
  %cmp = icmp ne i8* %2, %3, !dbg !2766
  br i1 %cmp, label %if.then, label %if.end, !dbg !2767

if.then:                                          ; preds = %land.lhs.true
  call void @_ZSt19__throw_logic_errorPKc(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3.2, i64 0, i64 0)) #19, !dbg !2768
  unreachable, !dbg !2768

if.end:                                           ; preds = %land.lhs.true, %entry
  call void @llvm.dbg.declare(metadata i64* %__dnew, metadata !2769, metadata !DIExpression()), !dbg !2770
  %4 = load i8*, i8** %__beg.addr, align 8, !dbg !2771
  %5 = load i8*, i8** %__end.addr, align 8, !dbg !2772
  %call2 = call i64 @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_(i8* %4, i8* %5), !dbg !2773
  store i64 %call2, i64* %__dnew, align 8, !dbg !2770
  %6 = load i64, i64* %__dnew, align 8, !dbg !2774
  %cmp3 = icmp ugt i64 %6, 15, !dbg !2776
  br i1 %cmp3, label %if.then4, label %if.end6, !dbg !2777

if.then4:                                         ; preds = %if.end
  %call5 = call i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* %this1, i64* nonnull align 8 dereferenceable(8) %__dnew, i64 0), !dbg !2778
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc(%"class.std::__cxx11::basic_string"* %this1, i8* %call5), !dbg !2780
  %7 = load i64, i64* %__dnew, align 8, !dbg !2781
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm(%"class.std::__cxx11::basic_string"* %this1, i64 %7), !dbg !2782
  br label %if.end6, !dbg !2783

if.end6:                                          ; preds = %if.then4, %if.end
  %call7 = invoke i8* @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv(%"class.std::__cxx11::basic_string"* %this1)
          to label %invoke.cont unwind label %lpad, !dbg !2784

invoke.cont:                                      ; preds = %if.end6
  %8 = load i8*, i8** %__beg.addr, align 8, !dbg !2786
  %9 = load i8*, i8** %__end.addr, align 8, !dbg !2787
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_(i8* %call7, i8* %8, i8* %9) #6, !dbg !2788
  br label %try.cont, !dbg !2789

lpad:                                             ; preds = %if.end6
  %10 = landingpad { i8*, i32 }
          catch i8* null, !dbg !2790
  %11 = extractvalue { i8*, i32 } %10, 0, !dbg !2790
  store i8* %11, i8** %exn.slot, align 8, !dbg !2790
  %12 = extractvalue { i8*, i32 } %10, 1, !dbg !2790
  store i32 %12, i32* %ehselector.slot, align 4, !dbg !2790
  br label %catch, !dbg !2790

catch:                                            ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8, !dbg !2789
  %13 = call i8* @__cxa_begin_catch(i8* %exn) #6, !dbg !2789
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv(%"class.std::__cxx11::basic_string"* %this1)
          to label %invoke.cont9 unwind label %lpad8, !dbg !2791

invoke.cont9:                                     ; preds = %catch
  invoke void @__cxa_rethrow() #19
          to label %unreachable unwind label %lpad8, !dbg !2793

lpad8:                                            ; preds = %invoke.cont9, %catch
  %14 = landingpad { i8*, i32 }
          cleanup, !dbg !2794
  %15 = extractvalue { i8*, i32 } %14, 0, !dbg !2794
  store i8* %15, i8** %exn.slot, align 8, !dbg !2794
  %16 = extractvalue { i8*, i32 } %14, 1, !dbg !2794
  store i32 %16, i32* %ehselector.slot, align 4, !dbg !2794
  invoke void @__cxa_end_catch()
          to label %invoke.cont10 unwind label %terminate.lpad, !dbg !2795

invoke.cont10:                                    ; preds = %lpad8
  br label %eh.resume, !dbg !2795

try.cont:                                         ; preds = %invoke.cont
  %17 = load i64, i64* %__dnew, align 8, !dbg !2796
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm(%"class.std::__cxx11::basic_string"* %this1, i64 %17), !dbg !2797
  ret void, !dbg !2798

eh.resume:                                        ; preds = %invoke.cont10
  %exn11 = load i8*, i8** %exn.slot, align 8, !dbg !2795
  %sel = load i32, i32* %ehselector.slot, align 4, !dbg !2795
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn11, 0, !dbg !2795
  %lpad.val12 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1, !dbg !2795
  resume { i8*, i32 } %lpad.val12, !dbg !2795

terminate.lpad:                                   ; preds = %lpad8
  %18 = landingpad { i8*, i32 }
          catch i8* null, !dbg !2795
  %19 = extractvalue { i8*, i32 } %18, 0, !dbg !2795
  call void @__clang_call_terminate(i8* %19) #14, !dbg !2795
  unreachable, !dbg !2795

unreachable:                                      ; preds = %invoke.cont9
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev(%"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char>>::_Alloc_hider"* %this) unnamed_addr #4 comdat align 2 !dbg !2799 {
entry:
  %this.addr = alloca %"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char>>::_Alloc_hider"*, align 8
  store %"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char>>::_Alloc_hider"* %this, %"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char>>::_Alloc_hider"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char>>::_Alloc_hider"** %this.addr, metadata !2824, metadata !DIExpression()), !dbg !2826
  %this1 = load %"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char>>::_Alloc_hider"*, %"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char>>::_Alloc_hider"** %this.addr, align 8
  %0 = bitcast %"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char>>::_Alloc_hider"* %this1 to %"class.std::allocator.0"*, !dbg !2827
  call void @_ZNSaIcED2Ev(%"class.std::allocator.0"* %0) #6, !dbg !2827
  ret void, !dbg !2829
}

; Function Attrs: nounwind
declare dso_local void @_ZNSaIcED2Ev(%"class.std::allocator.0"*) unnamed_addr #3

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local zeroext i1 @_ZN9__gnu_cxx17__is_null_pointerIKcEEbPT_(i8* %__ptr) #4 comdat !dbg !2830 {
entry:
  %__ptr.addr = alloca i8*, align 8
  store i8* %__ptr, i8** %__ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %__ptr.addr, metadata !2834, metadata !DIExpression()), !dbg !2835
  %0 = load i8*, i8** %__ptr.addr, align 8, !dbg !2836
  %cmp = icmp eq i8* %0, null, !dbg !2837
  ret i1 %cmp, !dbg !2838
}

; Function Attrs: noreturn
declare dso_local void @_ZSt19__throw_logic_errorPKc(i8*) #11

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i64 @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_(i8* %__first, i8* %__last) #5 comdat !dbg !2839 {
entry:
  %__first.addr = alloca i8*, align 8
  %__last.addr = alloca i8*, align 8
  %agg.tmp = alloca %"class.std::allocator.0", align 1
  %undef.agg.tmp = alloca %"class.std::allocator.0", align 1
  store i8* %__first, i8** %__first.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %__first.addr, metadata !2849, metadata !DIExpression()), !dbg !2850
  store i8* %__last, i8** %__last.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %__last.addr, metadata !2851, metadata !DIExpression()), !dbg !2852
  %0 = load i8*, i8** %__first.addr, align 8, !dbg !2853
  %1 = load i8*, i8** %__last.addr, align 8, !dbg !2854
  call void @_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_(i8** nonnull align 8 dereferenceable(8) %__first.addr), !dbg !2855
  %call = call i64 @_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag(i8* %0, i8* %1), !dbg !2856
  ret i64 %call, !dbg !2857
}

declare dso_local i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"*, i64* nonnull align 8 dereferenceable(8), i64) #2

declare dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc(%"class.std::__cxx11::basic_string"*, i8*) #2

declare dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm(%"class.std::__cxx11::basic_string"*, i64) #2

declare dso_local i8* @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv(%"class.std::__cxx11::basic_string"*) #2

; Function Attrs: nounwind
declare dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_(i8*, i8*, i8*) #3

declare dso_local i8* @__cxa_begin_catch(i8*)

declare dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv(%"class.std::__cxx11::basic_string"*) #2

declare dso_local void @__cxa_rethrow()

declare dso_local void @__cxa_end_catch()

declare dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm(%"class.std::__cxx11::basic_string"*, i64) #2

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8* %0) #12 comdat {
  %2 = call i8* @__cxa_begin_catch(i8* %0) #6
  call void @_ZSt9terminatev() #14
  unreachable
}

declare dso_local void @_ZSt9terminatev()

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_(i8** nonnull align 8 dereferenceable(8) %0) #4 comdat !dbg !2858 {
entry:
  %.addr = alloca i8**, align 8
  store i8** %0, i8*** %.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %.addr, metadata !2872, metadata !DIExpression()), !dbg !2873
  ret void, !dbg !2874
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag(i8* %__first, i8* %__last) #4 comdat !dbg !2875 {
entry:
  %0 = alloca %"class.std::allocator.0", align 1
  %__first.addr = alloca i8*, align 8
  %__last.addr = alloca i8*, align 8
  store i8* %__first, i8** %__first.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %__first.addr, metadata !2880, metadata !DIExpression()), !dbg !2881
  store i8* %__last, i8** %__last.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %__last.addr, metadata !2882, metadata !DIExpression()), !dbg !2883
  call void @llvm.dbg.declare(metadata %"class.std::allocator.0"* %0, metadata !2884, metadata !DIExpression()), !dbg !2885
  %1 = load i8*, i8** %__last.addr, align 8, !dbg !2886
  %2 = load i8*, i8** %__first.addr, align 8, !dbg !2887
  %sub.ptr.lhs.cast = ptrtoint i8* %1 to i64, !dbg !2888
  %sub.ptr.rhs.cast = ptrtoint i8* %2 to i64, !dbg !2888
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !2888
  ret i64 %sub.ptr.sub, !dbg !2889
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i64 @_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc(i8* %__p) #5 comdat align 2 !dbg !2890 {
entry:
  %__p.addr = alloca i8*, align 8
  %__i = alloca i64, align 8
  %ref.tmp = alloca i8, align 1
  store i8* %__p, i8** %__p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %__p.addr, metadata !2942, metadata !DIExpression()), !dbg !2943
  call void @llvm.dbg.declare(metadata i64* %__i, metadata !2944, metadata !DIExpression()), !dbg !2945
  store i64 0, i64* %__i, align 8, !dbg !2945
  br label %while.cond, !dbg !2946

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i8*, i8** %__p.addr, align 8, !dbg !2947
  %1 = load i64, i64* %__i, align 8, !dbg !2948
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 %1, !dbg !2947
  store i8 0, i8* %ref.tmp, align 1, !dbg !2949
  %call = call zeroext i1 @_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_(i8* nonnull align 1 dereferenceable(1) %arrayidx, i8* nonnull align 1 dereferenceable(1) %ref.tmp), !dbg !2950
  %lnot = xor i1 %call, true, !dbg !2951
  br i1 %lnot, label %while.body, label %while.end, !dbg !2946

while.body:                                       ; preds = %while.cond
  %2 = load i64, i64* %__i, align 8, !dbg !2952
  %inc = add i64 %2, 1, !dbg !2952
  store i64 %inc, i64* %__i, align 8, !dbg !2952
  br label %while.cond, !dbg !2946, !llvm.loop !2953

while.end:                                        ; preds = %while.cond
  %3 = load i64, i64* %__i, align 8, !dbg !2955
  ret i64 %3, !dbg !2956
}

; Function Attrs: nounwind
declare dso_local i64 @strlen(i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local zeroext i1 @_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_(i8* nonnull align 1 dereferenceable(1) %__c1, i8* nonnull align 1 dereferenceable(1) %__c2) #4 comdat align 2 !dbg !2957 {
entry:
  %__c1.addr = alloca i8*, align 8
  %__c2.addr = alloca i8*, align 8
  store i8* %__c1, i8** %__c1.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %__c1.addr, metadata !2958, metadata !DIExpression()), !dbg !2959
  store i8* %__c2, i8** %__c2.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %__c2.addr, metadata !2960, metadata !DIExpression()), !dbg !2961
  %0 = load i8*, i8** %__c1.addr, align 8, !dbg !2962
  %1 = load i8, i8* %0, align 1, !dbg !2962
  %conv = sext i8 %1 to i32, !dbg !2962
  %2 = load i8*, i8** %__c2.addr, align 8, !dbg !2963
  %3 = load i8, i8* %2, align 1, !dbg !2963
  %conv1 = sext i8 %3 to i32, !dbg !2963
  %cmp = icmp eq i32 %conv, %conv1, !dbg !2964
  ret i1 %cmp, !dbg !2965
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow9AllocatorD2Ev(%"class.tensorflow::AbstractTensorInterface"* %this) unnamed_addr #4 comdat align 2 !dbg !2966 {
entry:
  %this.addr = alloca %"class.tensorflow::AbstractTensorInterface"*, align 8
  store %"class.tensorflow::AbstractTensorInterface"* %this, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::AbstractTensorInterface"** %this.addr, metadata !2967, metadata !DIExpression()), !dbg !2968
  %this1 = load %"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  ret void, !dbg !2969
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow9AllocatorD0Ev(%"class.tensorflow::AbstractTensorInterface"* %this) unnamed_addr #4 comdat align 2 !dbg !2970 {
entry:
  %this.addr = alloca %"class.tensorflow::AbstractTensorInterface"*, align 8
  store %"class.tensorflow::AbstractTensorInterface"* %this, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::AbstractTensorInterface"** %this.addr, metadata !2971, metadata !DIExpression()), !dbg !2972
  %this1 = load %"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  call void @_ZN10tensorflow9AllocatorD2Ev(%"class.tensorflow::AbstractTensorInterface"* %this1) #6, !dbg !2973
  %0 = bitcast %"class.tensorflow::AbstractTensorInterface"* %this1 to i8*, !dbg !2973
  call void @_ZdlPv(i8* %0) #17, !dbg !2973
  ret void, !dbg !2974
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow9Allocator4NameB5cxx11Ev(%"class.std::__cxx11::basic_string"* noalias sret align 8 %agg.result, %"class.tensorflow::AbstractTensorInterface"* %this) unnamed_addr #5 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !2975 {
entry:
  %result.ptr = alloca i8*, align 8
  %this.addr = alloca %"class.tensorflow::AbstractTensorInterface"*, align 8
  %ref.tmp = alloca %"class.std::allocator.0", align 1
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  %0 = bitcast %"class.std::__cxx11::basic_string"* %agg.result to i8*
  store i8* %0, i8** %result.ptr, align 8
  store %"class.tensorflow::AbstractTensorInterface"* %this, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::AbstractTensorInterface"** %this.addr, metadata !2976, metadata !DIExpression()), !dbg !2977
  %this1 = load %"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  call void @_ZNSaIcEC1Ev(%"class.std::allocator.0"* %ref.tmp) #6, !dbg !2978
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(%"class.std::__cxx11::basic_string"* %agg.result, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.3, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %ref.tmp)
          to label %invoke.cont unwind label %lpad, !dbg !2978

invoke.cont:                                      ; preds = %entry
  call void @_ZNSaIcED1Ev(%"class.std::allocator.0"* %ref.tmp) #6, !dbg !2979
  ret void, !dbg !2979

lpad:                                             ; preds = %entry
  %1 = landingpad { i8*, i32 }
          cleanup, !dbg !2980
  %2 = extractvalue { i8*, i32 } %1, 0, !dbg !2980
  store i8* %2, i8** %exn.slot, align 8, !dbg !2980
  %3 = extractvalue { i8*, i32 } %1, 1, !dbg !2980
  store i32 %3, i32* %ehselector.slot, align 4, !dbg !2980
  call void @_ZNSaIcED1Ev(%"class.std::allocator.0"* %ref.tmp) #6, !dbg !2979
  br label %eh.resume, !dbg !2979

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8, !dbg !2979
  %sel = load i32, i32* %ehselector.slot, align 4, !dbg !2979
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0, !dbg !2979
  %lpad.val2 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1, !dbg !2979
  resume { i8*, i32 } %lpad.val2, !dbg !2979
}

; Function Attrs: noinline optnone uwtable
define dso_local void @_ZN10tensorflow17deallocate_bufferEPvmS0_(i8* %data, i64 %len, i8* %arg) #5 !dbg !2981 {
entry:
  %data.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %arg.addr = alloca i8*, align 8
  %allocator = alloca %"class.tensorflow::AbstractTensorInterface"*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !2982, metadata !DIExpression()), !dbg !2983
  store i64 %len, i64* %len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !2984, metadata !DIExpression()), !dbg !2985
  store i8* %arg, i8** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %arg.addr, metadata !2986, metadata !DIExpression()), !dbg !2987
  call void @llvm.dbg.declare(metadata %"class.tensorflow::AbstractTensorInterface"** %allocator, metadata !2988, metadata !DIExpression()), !dbg !2989
  store %"class.tensorflow::AbstractTensorInterface"* null, %"class.tensorflow::AbstractTensorInterface"** %allocator, align 8, !dbg !2989
  %0 = load i8*, i8** %arg.addr, align 8, !dbg !2990
  %cmp = icmp eq i8* %0, null, !dbg !2992
  br i1 %cmp, label %if.then, label %if.else, !dbg !2993

if.then:                                          ; preds = %entry
  %call = call %"class.tensorflow::AbstractTensorInterface"* @_ZN10tensorflow13cpu_allocatorEv(), !dbg !2994
  store %"class.tensorflow::AbstractTensorInterface"* %call, %"class.tensorflow::AbstractTensorInterface"** %allocator, align 8, !dbg !2996
  br label %if.end, !dbg !2997

if.else:                                          ; preds = %entry
  %1 = load i8*, i8** %arg.addr, align 8, !dbg !2998
  %2 = bitcast i8* %1 to %"class.tensorflow::AbstractTensorInterface"*, !dbg !3000
  store %"class.tensorflow::AbstractTensorInterface"* %2, %"class.tensorflow::AbstractTensorInterface"** %allocator, align 8, !dbg !3001
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load %"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"** %allocator, align 8, !dbg !3002
  %4 = load i8*, i8** %data.addr, align 8, !dbg !3003
  %5 = bitcast %"class.tensorflow::AbstractTensorInterface"* %3 to void (%"class.tensorflow::AbstractTensorInterface"*, i8*)***, !dbg !3004
  %vtable = load void (%"class.tensorflow::AbstractTensorInterface"*, i8*)**, void (%"class.tensorflow::AbstractTensorInterface"*, i8*)*** %5, align 8, !dbg !3004
  %vfn = getelementptr inbounds void (%"class.tensorflow::AbstractTensorInterface"*, i8*)*, void (%"class.tensorflow::AbstractTensorInterface"*, i8*)** %vtable, i64 4, !dbg !3004
  %6 = load void (%"class.tensorflow::AbstractTensorInterface"*, i8*)*, void (%"class.tensorflow::AbstractTensorInterface"*, i8*)** %vfn, align 8, !dbg !3004
  call void %6(%"class.tensorflow::AbstractTensorInterface"* %3, i8* %4), !dbg !3004
  ret void, !dbg !3005
}

; Function Attrs: noinline optnone uwtable
define dso_local %struct.TF_Tensor* @TF_AllocateTensor(i32 %dtype, i64* %dims, i32 %num_dims, i64 %len) #5 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !3006 {
entry:
  %dtype.addr = alloca i32, align 4
  %dims.addr = alloca i64*, align 8
  %num_dims.addr = alloca i32, align 4
  %len.addr = alloca i64, align 8
  %data = alloca i8*, align 8
  %buf = alloca %class.TF_ManagedBuffer*, align 8
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  store i32 %dtype, i32* %dtype.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %dtype.addr, metadata !3013, metadata !DIExpression()), !dbg !3014
  store i64* %dims, i64** %dims.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %dims.addr, metadata !3015, metadata !DIExpression()), !dbg !3016
  store i32 %num_dims, i32* %num_dims.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %num_dims.addr, metadata !3017, metadata !DIExpression()), !dbg !3018
  store i64 %len, i64* %len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !3019, metadata !DIExpression()), !dbg !3020
  call void @llvm.dbg.declare(metadata i8** %data, metadata !3021, metadata !DIExpression()), !dbg !3022
  %0 = load i64, i64* %len.addr, align 8, !dbg !3023
  %call = call %"class.tensorflow::AbstractTensorInterface"* @_ZN10tensorflow13cpu_allocatorEv(), !dbg !3024
  %call1 = call i8* @_ZN10tensorflow15allocate_tensorEPKcmPNS_9AllocatorE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i64 %0, %"class.tensorflow::AbstractTensorInterface"* %call), !dbg !3025
  store i8* %call1, i8** %data, align 8, !dbg !3022
  call void @llvm.dbg.declare(metadata %class.TF_ManagedBuffer** %buf, metadata !3026, metadata !DIExpression()), !dbg !3236
  %call2 = call noalias nonnull i8* @_Znwm(i64 56) #16, !dbg !3237, !heapallocsite !3028
  %1 = bitcast i8* %call2 to %class.TF_ManagedBuffer*, !dbg !3237
  %2 = load i8*, i8** %data, align 8, !dbg !3238
  %3 = load i64, i64* %len.addr, align 8, !dbg !3239
  %call3 = invoke %"class.tensorflow::AbstractTensorInterface"* @_ZN10tensorflow13cpu_allocatorEv()
          to label %invoke.cont unwind label %lpad, !dbg !3240

invoke.cont:                                      ; preds = %entry
  %4 = bitcast %"class.tensorflow::AbstractTensorInterface"* %call3 to i8*, !dbg !3240
  invoke void @_ZN16TF_ManagedBufferC2EPvmPFvS0_mS0_ES0_b(%class.TF_ManagedBuffer* %1, i8* %2, i64 %3, void (i8*, i64, i8*)* @_ZN10tensorflow17deallocate_bufferEPvmS0_, i8* %4, i1 zeroext true)
          to label %invoke.cont4 unwind label %lpad, !dbg !3241

invoke.cont4:                                     ; preds = %invoke.cont
  store %class.TF_ManagedBuffer* %1, %class.TF_ManagedBuffer** %buf, align 8, !dbg !3236
  %5 = load %class.TF_ManagedBuffer*, %class.TF_ManagedBuffer** %buf, align 8, !dbg !3242
  %6 = load i32, i32* %dtype.addr, align 4, !dbg !3243
  %7 = load i64*, i64** %dims.addr, align 8, !dbg !3244
  %8 = load i32, i32* %num_dims.addr, align 4, !dbg !3245
  %9 = load i64, i64* %len.addr, align 8, !dbg !3246
  %call5 = call %struct.TF_Tensor* @_ZN12_GLOBAL__N_112CreateTensorEP16TF_ManagedBuffer11TF_DataTypePKlim(%class.TF_ManagedBuffer* %5, i32 %6, i64* %7, i32 %8, i64 %9), !dbg !3247
  ret %struct.TF_Tensor* %call5, !dbg !3248

lpad:                                             ; preds = %invoke.cont, %entry
  %10 = landingpad { i8*, i32 }
          cleanup, !dbg !3249
  %11 = extractvalue { i8*, i32 } %10, 0, !dbg !3249
  store i8* %11, i8** %exn.slot, align 8, !dbg !3249
  %12 = extractvalue { i8*, i32 } %10, 1, !dbg !3249
  store i32 %12, i32* %ehselector.slot, align 4, !dbg !3249
  call void @_ZdlPv(i8* %call2) #17, !dbg !3237
  br label %eh.resume, !dbg !3237

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8, !dbg !3237
  %sel = load i32, i32* %ehselector.slot, align 4, !dbg !3237
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0, !dbg !3237
  %lpad.val6 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1, !dbg !3237
  resume { i8*, i32 } %lpad.val6, !dbg !3237
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN16TF_ManagedBufferC2EPvmPFvS0_mS0_ES0_b(%class.TF_ManagedBuffer* %this, i8* %data, i64 %len, void (i8*, i64, i8*)* %deallocator, i8* %deallocator_arg, i1 zeroext %owns_memory) unnamed_addr #5 comdat align 2 !dbg !3250 {
entry:
  %this.addr = alloca %class.TF_ManagedBuffer*, align 8
  %data.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %deallocator.addr = alloca void (i8*, i64, i8*)*, align 8
  %deallocator_arg.addr = alloca i8*, align 8
  %owns_memory.addr = alloca i8, align 1
  store %class.TF_ManagedBuffer* %this, %class.TF_ManagedBuffer** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %class.TF_ManagedBuffer** %this.addr, metadata !3251, metadata !DIExpression()), !dbg !3252
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !3253, metadata !DIExpression()), !dbg !3254
  store i64 %len, i64* %len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !3255, metadata !DIExpression()), !dbg !3256
  store void (i8*, i64, i8*)* %deallocator, void (i8*, i64, i8*)** %deallocator.addr, align 8
  call void @llvm.dbg.declare(metadata void (i8*, i64, i8*)** %deallocator.addr, metadata !3257, metadata !DIExpression()), !dbg !3258
  store i8* %deallocator_arg, i8** %deallocator_arg.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %deallocator_arg.addr, metadata !3259, metadata !DIExpression()), !dbg !3260
  %frombool = zext i1 %owns_memory to i8
  store i8 %frombool, i8* %owns_memory.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %owns_memory.addr, metadata !3261, metadata !DIExpression()), !dbg !3262
  %this1 = load %class.TF_ManagedBuffer*, %class.TF_ManagedBuffer** %this.addr, align 8
  %0 = bitcast %class.TF_ManagedBuffer* %this1 to %"class.tensorflow::TensorBuffer"*, !dbg !3263
  %1 = load i8*, i8** %data.addr, align 8, !dbg !3264
  call void @_ZN10tensorflow12TensorBufferC2EPv(%"class.tensorflow::TensorBuffer"* %0, i8* %1), !dbg !3265
  %2 = bitcast %class.TF_ManagedBuffer* %this1 to i32 (...)***, !dbg !3263
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [10 x i8*] }, { [10 x i8*] }* @_ZTV16TF_ManagedBuffer, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %2, align 8, !dbg !3263
  %len_ = getelementptr inbounds %class.TF_ManagedBuffer, %class.TF_ManagedBuffer* %this1, i32 0, i32 1, !dbg !3266
  %3 = load i64, i64* %len.addr, align 8, !dbg !3267
  store i64 %3, i64* %len_, align 8, !dbg !3266
  %deallocator_ = getelementptr inbounds %class.TF_ManagedBuffer, %class.TF_ManagedBuffer* %this1, i32 0, i32 2, !dbg !3268
  %4 = load void (i8*, i64, i8*)*, void (i8*, i64, i8*)** %deallocator.addr, align 8, !dbg !3269
  store void (i8*, i64, i8*)* %4, void (i8*, i64, i8*)** %deallocator_, align 8, !dbg !3268
  %deallocator_arg_ = getelementptr inbounds %class.TF_ManagedBuffer, %class.TF_ManagedBuffer* %this1, i32 0, i32 3, !dbg !3270
  %5 = load i8*, i8** %deallocator_arg.addr, align 8, !dbg !3271
  store i8* %5, i8** %deallocator_arg_, align 8, !dbg !3270
  %owns_memory_ = getelementptr inbounds %class.TF_ManagedBuffer, %class.TF_ManagedBuffer* %this1, i32 0, i32 4, !dbg !3272
  %6 = load i8, i8* %owns_memory.addr, align 1, !dbg !3273
  %tobool = trunc i8 %6 to i1, !dbg !3273
  %frombool2 = zext i1 %tobool to i8, !dbg !3272
  store i8 %frombool2, i8* %owns_memory_, align 8, !dbg !3272
  ret void, !dbg !3274
}

; Function Attrs: noinline optnone uwtable
define internal %struct.TF_Tensor* @_ZN12_GLOBAL__N_112CreateTensorEP16TF_ManagedBuffer11TF_DataTypePKlim(%class.TF_ManagedBuffer* %buf, i32 %dtype, i64* %dims, i32 %num_dims, i64 %len) #5 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !3275 {
entry:
  %retval = alloca %struct.TF_Tensor*, align 8
  %buf.addr = alloca %class.TF_ManagedBuffer*, align 8
  %dtype.addr = alloca i32, align 4
  %dims.addr = alloca i64*, align 8
  %num_dims.addr = alloca i32, align 4
  %len.addr = alloca i64, align 8
  %dimvec = alloca %"class.std::vector", align 8
  %ref.tmp = alloca %"class.std::allocator.0", align 1
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  %i = alloca i32, align 4
  %ret = alloca %"class.tensorflow::Tensor", align 8
  %ref.tmp2 = alloca %"class.tensorflow::TensorShape", align 8
  %elem_size = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %agg.tmp = alloca %"class.tensorflow::Tensor", align 8
  %cleanup.isactive = alloca i1, align 1
  %cleanup.isactive26 = alloca i1, align 1
  store %class.TF_ManagedBuffer* %buf, %class.TF_ManagedBuffer** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata %class.TF_ManagedBuffer** %buf.addr, metadata !3279, metadata !DIExpression()), !dbg !3280
  store i32 %dtype, i32* %dtype.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %dtype.addr, metadata !3281, metadata !DIExpression()), !dbg !3282
  store i64* %dims, i64** %dims.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %dims.addr, metadata !3283, metadata !DIExpression()), !dbg !3284
  store i32 %num_dims, i32* %num_dims.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %num_dims.addr, metadata !3285, metadata !DIExpression()), !dbg !3286
  store i64 %len, i64* %len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !3287, metadata !DIExpression()), !dbg !3288
  call void @llvm.dbg.declare(metadata %"class.std::vector"* %dimvec, metadata !3289, metadata !DIExpression()), !dbg !3290
  %0 = load i32, i32* %num_dims.addr, align 4, !dbg !3291
  %conv = sext i32 %0 to i64, !dbg !3291
  call void @_ZNSaIlEC2Ev(%"class.std::allocator.0"* %ref.tmp) #6, !dbg !3290
  invoke void @_ZNSt6vectorIlSaIlEEC2EmRKS0_(%"class.std::vector"* %dimvec, i64 %conv, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %ref.tmp)
          to label %invoke.cont unwind label %lpad, !dbg !3290

invoke.cont:                                      ; preds = %entry
  call void @_ZNSaIlED2Ev(%"class.std::allocator.0"* %ref.tmp) #6, !dbg !3290
  call void @llvm.dbg.declare(metadata i32* %i, metadata !3292, metadata !DIExpression()), !dbg !3294
  store i32 0, i32* %i, align 4, !dbg !3294
  br label %for.cond, !dbg !3295

for.cond:                                         ; preds = %for.inc, %invoke.cont
  %1 = load i32, i32* %i, align 4, !dbg !3296
  %2 = load i32, i32* %num_dims.addr, align 4, !dbg !3298
  %cmp = icmp slt i32 %1, %2, !dbg !3299
  br i1 %cmp, label %for.body, label %for.end, !dbg !3300

for.body:                                         ; preds = %for.cond
  %3 = load i64*, i64** %dims.addr, align 8, !dbg !3301
  %4 = load i32, i32* %i, align 4, !dbg !3303
  %idxprom = sext i32 %4 to i64, !dbg !3301
  %arrayidx = getelementptr inbounds i64, i64* %3, i64 %idxprom, !dbg !3301
  %5 = load i64, i64* %arrayidx, align 8, !dbg !3301
  %6 = load i32, i32* %i, align 4, !dbg !3304
  %conv1 = sext i32 %6 to i64, !dbg !3304
  %call = call nonnull align 8 dereferenceable(8) i64* @_ZNSt6vectorIlSaIlEEixEm(%"class.std::vector"* %dimvec, i64 %conv1) #6, !dbg !3305
  store i64 %5, i64* %call, align 8, !dbg !3306
  br label %for.inc, !dbg !3307

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !dbg !3308
  %inc = add nsw i32 %7, 1, !dbg !3308
  store i32 %inc, i32* %i, align 4, !dbg !3308
  br label %for.cond, !dbg !3309, !llvm.loop !3310

lpad:                                             ; preds = %entry
  %8 = landingpad { i8*, i32 }
          cleanup, !dbg !3312
  %9 = extractvalue { i8*, i32 } %8, 0, !dbg !3312
  store i8* %9, i8** %exn.slot, align 8, !dbg !3312
  %10 = extractvalue { i8*, i32 } %8, 1, !dbg !3312
  store i32 %10, i32* %ehselector.slot, align 4, !dbg !3312
  call void @_ZNSaIlED2Ev(%"class.std::allocator.0"* %ref.tmp) #6, !dbg !3290
  br label %eh.resume, !dbg !3290

for.end:                                          ; preds = %for.cond
  call void @llvm.dbg.declare(metadata %"class.tensorflow::Tensor"* %ret, metadata !3313, metadata !DIExpression()), !dbg !3314
  %11 = load i32, i32* %dtype.addr, align 4, !dbg !3315
  invoke void @_ZN10tensorflow11TensorShapeC2ERKSt6vectorIlSaIlEE(%"class.tensorflow::TensorShape"* %ref.tmp2, %"class.std::vector"* nonnull align 8 dereferenceable(24) %dimvec)
          to label %invoke.cont4 unwind label %lpad3, !dbg !3316

invoke.cont4:                                     ; preds = %for.end
  %12 = load %class.TF_ManagedBuffer*, %class.TF_ManagedBuffer** %buf.addr, align 8, !dbg !3317
  %13 = bitcast %class.TF_ManagedBuffer* %12 to %"class.tensorflow::TensorBuffer"*, !dbg !3317
  invoke void @_ZN10tensorflow6TensorC1E8DataTypeRKNS_11TensorShapeEPNS_12TensorBufferE(%"class.tensorflow::Tensor"* %ret, i32 %11, %"class.tensorflow::TensorShape"* nonnull align 8 dereferenceable(29) %ref.tmp2, %"class.tensorflow::TensorBuffer"* %13)
          to label %invoke.cont6 unwind label %lpad5, !dbg !3314

invoke.cont6:                                     ; preds = %invoke.cont4
  call void @_ZN10tensorflow11TensorShapeD2Ev(%"class.tensorflow::TensorShape"* %ref.tmp2) #6, !dbg !3314
  %14 = load %class.TF_ManagedBuffer*, %class.TF_ManagedBuffer** %buf.addr, align 8, !dbg !3318
  %15 = bitcast %class.TF_ManagedBuffer* %14 to %"class.tensorflow::core::RefCounted"*, !dbg !3319
  %call9 = invoke zeroext i1 @_ZNK10tensorflow4core10RefCounted5UnrefEv(%"class.tensorflow::core::RefCounted"* %15)
          to label %invoke.cont8 unwind label %lpad7, !dbg !3319

invoke.cont8:                                     ; preds = %invoke.cont6
  call void @llvm.dbg.declare(metadata i64* %elem_size, metadata !3320, metadata !DIExpression()), !dbg !3321
  %16 = load i32, i32* %dtype.addr, align 4, !dbg !3322
  %call11 = invoke i64 @_ZL15TF_DataTypeSize11TF_DataType(i32 %16)
          to label %invoke.cont10 unwind label %lpad7, !dbg !3323

invoke.cont10:                                    ; preds = %invoke.cont8
  store i64 %call11, i64* %elem_size, align 8, !dbg !3321
  %17 = load i64, i64* %elem_size, align 8, !dbg !3324
  %cmp12 = icmp ugt i64 %17, 0, !dbg !3326
  br i1 %cmp12, label %land.lhs.true, label %if.end, !dbg !3327

land.lhs.true:                                    ; preds = %invoke.cont10
  %18 = load i64, i64* %len.addr, align 8, !dbg !3328
  %19 = load i64, i64* %elem_size, align 8, !dbg !3329
  %call14 = invoke i64 @_ZNK10tensorflow6Tensor11NumElementsEv(%"class.tensorflow::Tensor"* %ret)
          to label %invoke.cont13 unwind label %lpad7, !dbg !3330

invoke.cont13:                                    ; preds = %land.lhs.true
  %mul = mul i64 %19, %call14, !dbg !3331
  %cmp15 = icmp ult i64 %18, %mul, !dbg !3332
  br i1 %cmp15, label %if.then, label %if.end, !dbg !3333

if.then:                                          ; preds = %invoke.cont13
  store %struct.TF_Tensor* null, %struct.TF_Tensor** %retval, align 8, !dbg !3334
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3334

lpad3:                                            ; preds = %for.end
  %20 = landingpad { i8*, i32 }
          cleanup, !dbg !3312
  %21 = extractvalue { i8*, i32 } %20, 0, !dbg !3312
  store i8* %21, i8** %exn.slot, align 8, !dbg !3312
  %22 = extractvalue { i8*, i32 } %20, 1, !dbg !3312
  store i32 %22, i32* %ehselector.slot, align 4, !dbg !3312
  br label %ehcleanup33, !dbg !3312

lpad5:                                            ; preds = %invoke.cont4
  %23 = landingpad { i8*, i32 }
          cleanup, !dbg !3312
  %24 = extractvalue { i8*, i32 } %23, 0, !dbg !3312
  store i8* %24, i8** %exn.slot, align 8, !dbg !3312
  %25 = extractvalue { i8*, i32 } %23, 1, !dbg !3312
  store i32 %25, i32* %ehselector.slot, align 4, !dbg !3312
  call void @_ZN10tensorflow11TensorShapeD2Ev(%"class.tensorflow::TensorShape"* %ref.tmp2) #6, !dbg !3314
  br label %ehcleanup33, !dbg !3314

lpad7:                                            ; preds = %if.end, %land.lhs.true, %invoke.cont8, %invoke.cont6
  %26 = landingpad { i8*, i32 }
          cleanup, !dbg !3312
  %27 = extractvalue { i8*, i32 } %26, 0, !dbg !3312
  store i8* %27, i8** %exn.slot, align 8, !dbg !3312
  %28 = extractvalue { i8*, i32 } %26, 1, !dbg !3312
  store i32 %28, i32* %ehselector.slot, align 4, !dbg !3312
  br label %ehcleanup31, !dbg !3312

if.end:                                           ; preds = %invoke.cont13, %invoke.cont10
  %call17 = invoke noalias nonnull i8* @_Znwm(i64 8) #16
          to label %invoke.cont16 unwind label %lpad7, !dbg !3336, !heapallocsite !3010

invoke.cont16:                                    ; preds = %if.end
  store i1 true, i1* %cleanup.isactive26, align 1
  %29 = bitcast i8* %call17 to %struct.TF_Tensor*, !dbg !3336
  %tensor = getelementptr inbounds %struct.TF_Tensor, %struct.TF_Tensor* %29, i32 0, i32 0, !dbg !3337
  %call20 = invoke noalias nonnull i8* @_Znwm(i64 48) #16
          to label %invoke.cont19 unwind label %lpad18, !dbg !3338, !heapallocsite !3339

invoke.cont19:                                    ; preds = %invoke.cont16
  store i1 true, i1* %cleanup.isactive, align 1
  %30 = bitcast i8* %call20 to %"class.tensorflow::TensorInterface"*, !dbg !3338
  %call21 = call nonnull align 8 dereferenceable(40) %"class.tensorflow::Tensor"* @_ZSt4moveIRN10tensorflow6TensorEEONSt16remove_referenceIT_E4typeEOS4_(%"class.tensorflow::Tensor"* nonnull align 8 dereferenceable(40) %ret) #6, !dbg !3397
  invoke void @_ZN10tensorflow6TensorC1EOS0_(%"class.tensorflow::Tensor"* %agg.tmp, %"class.tensorflow::Tensor"* nonnull align 8 dereferenceable(40) %call21)
          to label %invoke.cont23 unwind label %lpad22, !dbg !3397

invoke.cont23:                                    ; preds = %invoke.cont19
  invoke void @_ZN10tensorflow15TensorInterfaceC2ENS_6TensorE(%"class.tensorflow::TensorInterface"* %30, %"class.tensorflow::Tensor"* %agg.tmp)
          to label %invoke.cont25 unwind label %lpad24, !dbg !3398

invoke.cont25:                                    ; preds = %invoke.cont23
  store i1 false, i1* %cleanup.isactive, align 1, !dbg !3338
  %31 = bitcast %"class.tensorflow::TensorInterface"* %30 to %"class.tensorflow::AbstractTensorInterface"*, !dbg !3338
  store %"class.tensorflow::AbstractTensorInterface"* %31, %"class.tensorflow::AbstractTensorInterface"** %tensor, align 8, !dbg !3337
  store i1 false, i1* %cleanup.isactive26, align 1, !dbg !3336
  store %struct.TF_Tensor* %29, %struct.TF_Tensor** %retval, align 8, !dbg !3399
  call void @_ZN10tensorflow6TensorD1Ev(%"class.tensorflow::Tensor"* %agg.tmp) #6, !dbg !3399
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3399

lpad18:                                           ; preds = %invoke.cont16
  %32 = landingpad { i8*, i32 }
          cleanup, !dbg !3312
  %33 = extractvalue { i8*, i32 } %32, 0, !dbg !3312
  store i8* %33, i8** %exn.slot, align 8, !dbg !3312
  %34 = extractvalue { i8*, i32 } %32, 1, !dbg !3312
  store i32 %34, i32* %ehselector.slot, align 4, !dbg !3312
  br label %ehcleanup27, !dbg !3312

lpad22:                                           ; preds = %invoke.cont19
  %35 = landingpad { i8*, i32 }
          cleanup, !dbg !3312
  %36 = extractvalue { i8*, i32 } %35, 0, !dbg !3312
  store i8* %36, i8** %exn.slot, align 8, !dbg !3312
  %37 = extractvalue { i8*, i32 } %35, 1, !dbg !3312
  store i32 %37, i32* %ehselector.slot, align 4, !dbg !3312
  br label %ehcleanup, !dbg !3312

lpad24:                                           ; preds = %invoke.cont23
  %38 = landingpad { i8*, i32 }
          cleanup, !dbg !3312
  %39 = extractvalue { i8*, i32 } %38, 0, !dbg !3312
  store i8* %39, i8** %exn.slot, align 8, !dbg !3312
  %40 = extractvalue { i8*, i32 } %38, 1, !dbg !3312
  store i32 %40, i32* %ehselector.slot, align 4, !dbg !3312
  call void @_ZN10tensorflow6TensorD1Ev(%"class.tensorflow::Tensor"* %agg.tmp) #6, !dbg !3399
  br label %ehcleanup, !dbg !3399

ehcleanup:                                        ; preds = %lpad24, %lpad22
  %cleanup.is_active = load i1, i1* %cleanup.isactive, align 1, !dbg !3399
  br i1 %cleanup.is_active, label %cleanup.action, label %cleanup.done, !dbg !3399

cleanup.action:                                   ; preds = %ehcleanup
  call void @_ZdlPv(i8* %call20) #17, !dbg !3399
  br label %cleanup.done, !dbg !3399

cleanup.done:                                     ; preds = %cleanup.action, %ehcleanup
  br label %ehcleanup27, !dbg !3399

ehcleanup27:                                      ; preds = %cleanup.done, %lpad18
  %cleanup.is_active28 = load i1, i1* %cleanup.isactive26, align 1, !dbg !3399
  br i1 %cleanup.is_active28, label %cleanup.action29, label %cleanup.done30, !dbg !3399

cleanup.action29:                                 ; preds = %ehcleanup27
  call void @_ZdlPv(i8* %call17) #17, !dbg !3399
  br label %cleanup.done30, !dbg !3399

cleanup.done30:                                   ; preds = %cleanup.action29, %ehcleanup27
  br label %ehcleanup31, !dbg !3399

cleanup:                                          ; preds = %invoke.cont25, %if.then
  call void @_ZN10tensorflow6TensorD1Ev(%"class.tensorflow::Tensor"* %ret) #6, !dbg !3312
  call void @_ZNSt6vectorIlSaIlEED2Ev(%"class.std::vector"* %dimvec) #6, !dbg !3312
  %41 = load %struct.TF_Tensor*, %struct.TF_Tensor** %retval, align 8, !dbg !3312
  ret %struct.TF_Tensor* %41, !dbg !3312

ehcleanup31:                                      ; preds = %cleanup.done30, %lpad7
  call void @_ZN10tensorflow6TensorD1Ev(%"class.tensorflow::Tensor"* %ret) #6, !dbg !3312
  br label %ehcleanup33, !dbg !3312

ehcleanup33:                                      ; preds = %ehcleanup31, %lpad5, %lpad3
  call void @_ZNSt6vectorIlSaIlEED2Ev(%"class.std::vector"* %dimvec) #6, !dbg !3312
  br label %eh.resume, !dbg !3312

eh.resume:                                        ; preds = %ehcleanup33, %lpad
  %exn = load i8*, i8** %exn.slot, align 8, !dbg !3290
  %sel = load i32, i32* %ehselector.slot, align 4, !dbg !3290
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0, !dbg !3290
  %lpad.val34 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1, !dbg !3290
  resume { i8*, i32 } %lpad.val34, !dbg !3290
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSaIlEC2Ev(%"class.std::allocator.0"* %this) unnamed_addr #4 comdat align 2 !dbg !3400 {
entry:
  %this.addr = alloca %"class.std::allocator.0"*, align 8
  store %"class.std::allocator.0"* %this, %"class.std::allocator.0"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::allocator.0"** %this.addr, metadata !3401, metadata !DIExpression()), !dbg !3403
  %this1 = load %"class.std::allocator.0"*, %"class.std::allocator.0"** %this.addr, align 8
  %0 = bitcast %"class.std::allocator.0"* %this1 to %"class.std::allocator.0"*, !dbg !3404
  call void @_ZN9__gnu_cxx13new_allocatorIlEC2Ev(%"class.std::allocator.0"* %0) #6, !dbg !3405
  ret void, !dbg !3406
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIlSaIlEEC2EmRKS0_(%"class.std::vector"* %this, i64 %__n, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %__a) unnamed_addr #5 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !3407 {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  %__n.addr = alloca i64, align 8
  %__a.addr = alloca %"class.std::allocator.0"*, align 8
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::vector"** %this.addr, metadata !3408, metadata !DIExpression()), !dbg !3410
  store i64 %__n, i64* %__n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %__n.addr, metadata !3411, metadata !DIExpression()), !dbg !3412
  store %"class.std::allocator.0"* %__a, %"class.std::allocator.0"** %__a.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::allocator.0"** %__a.addr, metadata !3413, metadata !DIExpression()), !dbg !3414
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*, !dbg !3415
  %1 = load i64, i64* %__n.addr, align 8, !dbg !3416
  %2 = load %"class.std::allocator.0"*, %"class.std::allocator.0"** %__a.addr, align 8, !dbg !3417
  %call = call i64 @_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_(i64 %1, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %2), !dbg !3418
  %3 = load %"class.std::allocator.0"*, %"class.std::allocator.0"** %__a.addr, align 8, !dbg !3419
  call void @_ZNSt12_Vector_baseIlSaIlEEC2EmRKS0_(%"struct.std::_Vector_base"* %0, i64 %call, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %3), !dbg !3420
  %4 = load i64, i64* %__n.addr, align 8, !dbg !3421
  invoke void @_ZNSt6vectorIlSaIlEE21_M_default_initializeEm(%"class.std::vector"* %this1, i64 %4)
          to label %invoke.cont unwind label %lpad, !dbg !3423

invoke.cont:                                      ; preds = %entry
  ret void, !dbg !3424

lpad:                                             ; preds = %entry
  %5 = landingpad { i8*, i32 }
          cleanup, !dbg !3425
  %6 = extractvalue { i8*, i32 } %5, 0, !dbg !3425
  store i8* %6, i8** %exn.slot, align 8, !dbg !3425
  %7 = extractvalue { i8*, i32 } %5, 1, !dbg !3425
  store i32 %7, i32* %ehselector.slot, align 4, !dbg !3425
  %8 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*, !dbg !3425
  call void @_ZNSt12_Vector_baseIlSaIlEED2Ev(%"struct.std::_Vector_base"* %8) #6, !dbg !3425
  br label %eh.resume, !dbg !3425

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8, !dbg !3425
  %sel = load i32, i32* %ehselector.slot, align 4, !dbg !3425
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0, !dbg !3425
  %lpad.val2 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1, !dbg !3425
  resume { i8*, i32 } %lpad.val2, !dbg !3425
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSaIlED2Ev(%"class.std::allocator.0"* %this) unnamed_addr #4 comdat align 2 !dbg !3426 {
entry:
  %this.addr = alloca %"class.std::allocator.0"*, align 8
  store %"class.std::allocator.0"* %this, %"class.std::allocator.0"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::allocator.0"** %this.addr, metadata !3427, metadata !DIExpression()), !dbg !3428
  %this1 = load %"class.std::allocator.0"*, %"class.std::allocator.0"** %this.addr, align 8
  %0 = bitcast %"class.std::allocator.0"* %this1 to %"class.std::allocator.0"*, !dbg !3429
  call void @_ZN9__gnu_cxx13new_allocatorIlED2Ev(%"class.std::allocator.0"* %0) #6, !dbg !3429
  ret void, !dbg !3431
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) i64* @_ZNSt6vectorIlSaIlEEixEm(%"class.std::vector"* %this, i64 %__n) #4 comdat align 2 !dbg !3432 {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  %__n.addr = alloca i64, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::vector"** %this.addr, metadata !3433, metadata !DIExpression()), !dbg !3434
  store i64 %__n, i64* %__n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %__n.addr, metadata !3435, metadata !DIExpression()), !dbg !3436
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*, !dbg !3437
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %0, i32 0, i32 0, !dbg !3437
  %1 = bitcast %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %_M_impl to %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"*, !dbg !3438
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data", %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* %1, i32 0, i32 0, !dbg !3439
  %2 = load i64*, i64** %_M_start, align 8, !dbg !3439
  %3 = load i64, i64* %__n.addr, align 8, !dbg !3440
  %add.ptr = getelementptr inbounds i64, i64* %2, i64 %3, !dbg !3441
  ret i64* %add.ptr, !dbg !3442
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow11TensorShapeC2ERKSt6vectorIlSaIlEE(%"class.tensorflow::TensorShape"* %this, %"class.std::vector"* nonnull align 8 dereferenceable(24) %dims) unnamed_addr #5 comdat align 2 !dbg !3443 {
entry:
  %this.addr = alloca %"class.tensorflow::TensorShape"*, align 8
  %dims.addr = alloca %"class.std::vector"*, align 8
  store %"class.tensorflow::TensorShape"* %this, %"class.tensorflow::TensorShape"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::TensorShape"** %this.addr, metadata !3444, metadata !DIExpression()), !dbg !3445
  store %"class.std::vector"* %dims, %"class.std::vector"** %dims.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::vector"** %dims.addr, metadata !3446, metadata !DIExpression()), !dbg !3447
  %this1 = load %"class.tensorflow::TensorShape"*, %"class.tensorflow::TensorShape"** %this.addr, align 8
  %dims_ = getelementptr inbounds %"class.tensorflow::TensorShape", %"class.tensorflow::TensorShape"* %this1, i32 0, i32 0, !dbg !3448
  %0 = load %"class.std::vector"*, %"class.std::vector"** %dims.addr, align 8, !dbg !3449
  call void @_ZNSt6vectorIlSaIlEEC2ERKS1_(%"class.std::vector"* %dims_, %"class.std::vector"* nonnull align 8 dereferenceable(24) %0), !dbg !3448
  %dtype_ = getelementptr inbounds %"class.tensorflow::TensorShape", %"class.tensorflow::TensorShape"* %this1, i32 0, i32 1, !dbg !3450
  store i32 0, i32* %dtype_, align 8, !dbg !3450
  %partial_ = getelementptr inbounds %"class.tensorflow::TensorShape", %"class.tensorflow::TensorShape"* %this1, i32 0, i32 2, !dbg !3451
  ret void, !dbg !3452
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow11TensorShapeD2Ev(%"class.tensorflow::TensorShape"* %this) unnamed_addr #4 comdat align 2 !dbg !3453 {
entry:
  %this.addr = alloca %"class.tensorflow::TensorShape"*, align 8
  store %"class.tensorflow::TensorShape"* %this, %"class.tensorflow::TensorShape"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::TensorShape"** %this.addr, metadata !3455, metadata !DIExpression()), !dbg !3456
  %this1 = load %"class.tensorflow::TensorShape"*, %"class.tensorflow::TensorShape"** %this.addr, align 8
  %dims_ = getelementptr inbounds %"class.tensorflow::TensorShape", %"class.tensorflow::TensorShape"* %this1, i32 0, i32 0, !dbg !3457
  call void @_ZNSt6vectorIlSaIlEED2Ev(%"class.std::vector"* %dims_) #6, !dbg !3457
  ret void, !dbg !3459
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local zeroext i1 @_ZNK10tensorflow4core10RefCounted5UnrefEv(%"class.tensorflow::core::RefCounted"* %this) #4 comdat align 2 !dbg !3460 {
entry:
  %this.addr.i = alloca %"struct.std::__atomic_base"*, align 8
  %__i.addr.i = alloca i64, align 8
  %__m.addr.i = alloca i32, align 4
  %.atomictmp.i = alloca i64, align 8
  %atomic-temp.i = alloca i64, align 8
  %retval = alloca i1, align 1
  %this.addr = alloca %"class.tensorflow::core::RefCounted"*, align 8
  store %"class.tensorflow::core::RefCounted"* %this, %"class.tensorflow::core::RefCounted"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::core::RefCounted"** %this.addr, metadata !3461, metadata !DIExpression()), !dbg !3463
  %this1 = load %"class.tensorflow::core::RefCounted"*, %"class.tensorflow::core::RefCounted"** %this.addr, align 8
  %ref_count_ = getelementptr inbounds %"class.tensorflow::core::RefCounted", %"class.tensorflow::core::RefCounted"* %this1, i32 0, i32 1, !dbg !3464
  %0 = bitcast %"struct.std::atomic"* %ref_count_ to %"struct.std::__atomic_base"*, !dbg !3464
  store %"struct.std::__atomic_base"* %0, %"struct.std::__atomic_base"** %this.addr.i, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::__atomic_base"** %this.addr.i, metadata !3466, metadata !DIExpression()), !dbg !3469
  store i64 1, i64* %__i.addr.i, align 8
  call void @llvm.dbg.declare(metadata i64* %__i.addr.i, metadata !3471, metadata !DIExpression()), !dbg !3472
  store i32 4, i32* %__m.addr.i, align 4
  call void @llvm.dbg.declare(metadata i32* %__m.addr.i, metadata !3473, metadata !DIExpression()), !dbg !3474
  %this1.i = load %"struct.std::__atomic_base"*, %"struct.std::__atomic_base"** %this.addr.i, align 8
  %_M_i.i = getelementptr inbounds %"struct.std::__atomic_base", %"struct.std::__atomic_base"* %this1.i, i32 0, i32 0, !dbg !3475
  %1 = load i32, i32* %__m.addr.i, align 4, !dbg !3476
  %2 = load i64, i64* %__i.addr.i, align 8, !dbg !3477
  store i64 %2, i64* %.atomictmp.i, align 8, !dbg !3478
  switch i32 %1, label %monotonic.i [
    i32 1, label %acquire.i
    i32 2, label %acquire.i
    i32 3, label %release.i
    i32 4, label %acqrel.i
    i32 5, label %seqcst.i
  ], !dbg !3478

monotonic.i:                                      ; preds = %entry
  %3 = load i64, i64* %.atomictmp.i, align 8, !dbg !3478
  %4 = load i64, i64* %_M_i.i, align 8, !dbg !3478
  %5 = sub i64 %4, %3, !dbg !3478
  store i64 %5, i64* %_M_i.i, align 8, !dbg !3478
  store i64 %4, i64* %atomic-temp.i, align 8, !dbg !3478
  br label %_ZNSt13__atomic_baseImE9fetch_subEmSt12memory_order.exit, !dbg !3478

acquire.i:                                        ; preds = %entry, %entry
  %6 = load i64, i64* %.atomictmp.i, align 8, !dbg !3478
  %7 = load i64, i64* %_M_i.i, align 8, !dbg !3478
  %8 = sub i64 %7, %6, !dbg !3478
  store i64 %8, i64* %_M_i.i, align 8, !dbg !3478
  store i64 %7, i64* %atomic-temp.i, align 8, !dbg !3478
  br label %_ZNSt13__atomic_baseImE9fetch_subEmSt12memory_order.exit, !dbg !3478

release.i:                                        ; preds = %entry
  %9 = load i64, i64* %.atomictmp.i, align 8, !dbg !3478
  %10 = load i64, i64* %_M_i.i, align 8, !dbg !3478
  %11 = sub i64 %10, %9, !dbg !3478
  store i64 %11, i64* %_M_i.i, align 8, !dbg !3478
  store i64 %10, i64* %atomic-temp.i, align 8, !dbg !3478
  br label %_ZNSt13__atomic_baseImE9fetch_subEmSt12memory_order.exit, !dbg !3478

acqrel.i:                                         ; preds = %entry
  %12 = load i64, i64* %.atomictmp.i, align 8, !dbg !3478
  %13 = load i64, i64* %_M_i.i, align 8, !dbg !3478
  %14 = sub i64 %13, %12, !dbg !3478
  store i64 %14, i64* %_M_i.i, align 8, !dbg !3478
  store i64 %13, i64* %atomic-temp.i, align 8, !dbg !3478
  br label %_ZNSt13__atomic_baseImE9fetch_subEmSt12memory_order.exit, !dbg !3478

seqcst.i:                                         ; preds = %entry
  %15 = load i64, i64* %.atomictmp.i, align 8, !dbg !3478
  %16 = load i64, i64* %_M_i.i, align 8, !dbg !3478
  %17 = sub i64 %16, %15, !dbg !3478
  store i64 %17, i64* %_M_i.i, align 8, !dbg !3478
  store i64 %16, i64* %atomic-temp.i, align 8, !dbg !3478
  br label %_ZNSt13__atomic_baseImE9fetch_subEmSt12memory_order.exit, !dbg !3478

_ZNSt13__atomic_baseImE9fetch_subEmSt12memory_order.exit: ; preds = %monotonic.i, %acquire.i, %release.i, %acqrel.i, %seqcst.i
  %18 = load i64, i64* %atomic-temp.i, align 8, !dbg !3478
  %cmp = icmp eq i64 %18, 1, !dbg !3479
  br i1 %cmp, label %if.then, label %if.end, !dbg !3480

if.then:                                          ; preds = %_ZNSt13__atomic_baseImE9fetch_subEmSt12memory_order.exit
  %isnull = icmp eq %"class.tensorflow::core::RefCounted"* %this1, null, !dbg !3481
  br i1 %isnull, label %delete.end, label %delete.notnull, !dbg !3481

delete.notnull:                                   ; preds = %if.then
  %19 = bitcast %"class.tensorflow::core::RefCounted"* %this1 to void (%"class.tensorflow::core::RefCounted"*)***, !dbg !3481
  %vtable = load void (%"class.tensorflow::core::RefCounted"*)**, void (%"class.tensorflow::core::RefCounted"*)*** %19, align 8, !dbg !3481
  %vfn = getelementptr inbounds void (%"class.tensorflow::core::RefCounted"*)*, void (%"class.tensorflow::core::RefCounted"*)** %vtable, i64 1, !dbg !3481
  %20 = load void (%"class.tensorflow::core::RefCounted"*)*, void (%"class.tensorflow::core::RefCounted"*)** %vfn, align 8, !dbg !3481
  call void %20(%"class.tensorflow::core::RefCounted"* %this1) #6, !dbg !3481
  br label %delete.end, !dbg !3481

delete.end:                                       ; preds = %delete.notnull, %if.then
  store i1 true, i1* %retval, align 1, !dbg !3483
  br label %return, !dbg !3483

if.end:                                           ; preds = %_ZNSt13__atomic_baseImE9fetch_subEmSt12memory_order.exit
  store i1 false, i1* %retval, align 1, !dbg !3484
  br label %return, !dbg !3484

return:                                           ; preds = %if.end, %delete.end
  %21 = load i1, i1* %retval, align 1, !dbg !3485
  ret i1 %21, !dbg !3485
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @_ZL15TF_DataTypeSize11TF_DataType(i32 %dt) #4 !dbg !3486 {
entry:
  %retval = alloca i64, align 8
  %dt.addr = alloca i32, align 4
  store i32 %dt, i32* %dt.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %dt.addr, metadata !3489, metadata !DIExpression()), !dbg !3490
  %0 = load i32, i32* %dt.addr, align 4, !dbg !3491
  switch i32 %0, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
    i32 3, label %sw.bb2
    i32 22, label %sw.bb3
    i32 4, label %sw.bb4
    i32 17, label %sw.bb5
    i32 5, label %sw.bb6
    i32 6, label %sw.bb7
    i32 8, label %sw.bb8
    i32 18, label %sw.bb9
    i32 9, label %sw.bb10
    i32 23, label %sw.bb11
    i32 10, label %sw.bb12
    i32 11, label %sw.bb13
    i32 12, label %sw.bb14
    i32 15, label %sw.bb15
    i32 16, label %sw.bb16
    i32 13, label %sw.bb17
    i32 14, label %sw.bb18
    i32 19, label %sw.bb19
    i32 7, label %sw.bb20
    i32 20, label %sw.bb20
    i32 21, label %sw.bb20
    i32 24, label %sw.bb21
    i32 25, label %sw.bb21
    i32 26, label %sw.bb21
    i32 27, label %sw.bb21
    i32 28, label %sw.bb21
    i32 29, label %sw.bb22
    i32 30, label %sw.bb22
    i32 31, label %sw.bb22
    i32 32, label %sw.bb22
  ], !dbg !3492

sw.bb:                                            ; preds = %entry
  store i64 4, i64* %retval, align 8, !dbg !3493
  br label %return, !dbg !3493

sw.bb1:                                           ; preds = %entry
  store i64 8, i64* %retval, align 8, !dbg !3495
  br label %return, !dbg !3495

sw.bb2:                                           ; preds = %entry
  store i64 4, i64* %retval, align 8, !dbg !3496
  br label %return, !dbg !3496

sw.bb3:                                           ; preds = %entry
  store i64 4, i64* %retval, align 8, !dbg !3497
  br label %return, !dbg !3497

sw.bb4:                                           ; preds = %entry
  store i64 1, i64* %retval, align 8, !dbg !3498
  br label %return, !dbg !3498

sw.bb5:                                           ; preds = %entry
  store i64 2, i64* %retval, align 8, !dbg !3499
  br label %return, !dbg !3499

sw.bb6:                                           ; preds = %entry
  store i64 2, i64* %retval, align 8, !dbg !3500
  br label %return, !dbg !3500

sw.bb7:                                           ; preds = %entry
  store i64 1, i64* %retval, align 8, !dbg !3501
  br label %return, !dbg !3501

sw.bb8:                                           ; preds = %entry
  store i64 8, i64* %retval, align 8, !dbg !3502
  br label %return, !dbg !3502

sw.bb9:                                           ; preds = %entry
  store i64 16, i64* %retval, align 8, !dbg !3503
  br label %return, !dbg !3503

sw.bb10:                                          ; preds = %entry
  store i64 8, i64* %retval, align 8, !dbg !3504
  br label %return, !dbg !3504

sw.bb11:                                          ; preds = %entry
  store i64 8, i64* %retval, align 8, !dbg !3505
  br label %return, !dbg !3505

sw.bb12:                                          ; preds = %entry
  store i64 1, i64* %retval, align 8, !dbg !3506
  br label %return, !dbg !3506

sw.bb13:                                          ; preds = %entry
  store i64 1, i64* %retval, align 8, !dbg !3507
  br label %return, !dbg !3507

sw.bb14:                                          ; preds = %entry
  store i64 1, i64* %retval, align 8, !dbg !3508
  br label %return, !dbg !3508

sw.bb15:                                          ; preds = %entry
  store i64 2, i64* %retval, align 8, !dbg !3509
  br label %return, !dbg !3509

sw.bb16:                                          ; preds = %entry
  store i64 2, i64* %retval, align 8, !dbg !3510
  br label %return, !dbg !3510

sw.bb17:                                          ; preds = %entry
  store i64 4, i64* %retval, align 8, !dbg !3511
  br label %return, !dbg !3511

sw.bb18:                                          ; preds = %entry
  store i64 2, i64* %retval, align 8, !dbg !3512
  br label %return, !dbg !3512

sw.bb19:                                          ; preds = %entry
  store i64 2, i64* %retval, align 8, !dbg !3513
  br label %return, !dbg !3513

sw.bb20:                                          ; preds = %entry, %entry, %entry
  store i64 0, i64* %retval, align 8, !dbg !3514
  br label %return, !dbg !3514

sw.bb21:                                          ; preds = %entry, %entry, %entry, %entry, %entry
  store i64 1, i64* %retval, align 8, !dbg !3515
  br label %return, !dbg !3515

sw.bb22:                                          ; preds = %entry, %entry, %entry, %entry
  store i64 0, i64* %retval, align 8, !dbg !3516
  br label %return, !dbg !3516

sw.default:                                       ; preds = %entry
  store i64 0, i64* %retval, align 8, !dbg !3517
  br label %return, !dbg !3517

return:                                           ; preds = %sw.default, %sw.bb22, %sw.bb21, %sw.bb20, %sw.bb19, %sw.bb18, %sw.bb17, %sw.bb16, %sw.bb15, %sw.bb14, %sw.bb13, %sw.bb12, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %1 = load i64, i64* %retval, align 8, !dbg !3518
  ret i64 %1, !dbg !3518
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i64 @_ZNK10tensorflow6Tensor11NumElementsEv(%"class.tensorflow::Tensor"* %this) #5 comdat align 2 !dbg !3519 {
entry:
  %this.addr = alloca %"class.tensorflow::Tensor"*, align 8
  store %"class.tensorflow::Tensor"* %this, %"class.tensorflow::Tensor"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::Tensor"** %this.addr, metadata !3520, metadata !DIExpression()), !dbg !3522
  %this1 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %this.addr, align 8
  %call = call nonnull align 8 dereferenceable(29) %"class.tensorflow::TensorShape"* @_ZNK10tensorflow6Tensor5shapeEv(%"class.tensorflow::Tensor"* %this1), !dbg !3523
  %call2 = call i64 @_ZNK10tensorflow11TensorShape12num_elementsEv(%"class.tensorflow::TensorShape"* %call), !dbg !3524
  ret i64 %call2, !dbg !3525
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(40) %"class.tensorflow::Tensor"* @_ZSt4moveIRN10tensorflow6TensorEEONSt16remove_referenceIT_E4typeEOS4_(%"class.tensorflow::Tensor"* nonnull align 8 dereferenceable(40) %__t) #4 comdat !dbg !3526 {
entry:
  %__t.addr = alloca %"class.tensorflow::Tensor"*, align 8
  store %"class.tensorflow::Tensor"* %__t, %"class.tensorflow::Tensor"** %__t.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::Tensor"** %__t.addr, metadata !3535, metadata !DIExpression()), !dbg !3536
  %0 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %__t.addr, align 8, !dbg !3537
  ret %"class.tensorflow::Tensor"* %0, !dbg !3538
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow15TensorInterfaceC2ENS_6TensorE(%"class.tensorflow::TensorInterface"* %this, %"class.tensorflow::Tensor"* %t) unnamed_addr #5 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !3539 {
entry:
  %this.addr = alloca %"class.tensorflow::TensorInterface"*, align 8
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  store %"class.tensorflow::TensorInterface"* %this, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::TensorInterface"** %this.addr, metadata !3540, metadata !DIExpression()), !dbg !3542
  call void @llvm.dbg.declare(metadata %"class.tensorflow::Tensor"* %t, metadata !3543, metadata !DIExpression()), !dbg !3544
  %this1 = load %"class.tensorflow::TensorInterface"*, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  %0 = bitcast %"class.tensorflow::TensorInterface"* %this1 to %"class.tensorflow::AbstractTensorInterface"*, !dbg !3545
  call void @_ZN10tensorflow23AbstractTensorInterfaceC2Ev(%"class.tensorflow::AbstractTensorInterface"* %0) #6, !dbg !3546
  %1 = bitcast %"class.tensorflow::TensorInterface"* %this1 to i32 (...)***, !dbg !3545
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [14 x i8*] }, { [14 x i8*] }* @_ZTVN10tensorflow15TensorInterfaceE, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %1, align 8, !dbg !3545
  %tensor_ = getelementptr inbounds %"class.tensorflow::TensorInterface", %"class.tensorflow::TensorInterface"* %this1, i32 0, i32 1, !dbg !3547
  %call = call nonnull align 8 dereferenceable(40) %"class.tensorflow::Tensor"* @_ZSt4moveIRN10tensorflow6TensorEEONSt16remove_referenceIT_E4typeEOS4_(%"class.tensorflow::Tensor"* nonnull align 8 dereferenceable(40) %t) #6, !dbg !3548
  invoke void @_ZN10tensorflow6TensorC1EOS0_(%"class.tensorflow::Tensor"* %tensor_, %"class.tensorflow::Tensor"* nonnull align 8 dereferenceable(40) %call)
          to label %invoke.cont unwind label %lpad, !dbg !3547

invoke.cont:                                      ; preds = %entry
  ret void, !dbg !3549

lpad:                                             ; preds = %entry
  %2 = landingpad { i8*, i32 }
          cleanup, !dbg !3549
  %3 = extractvalue { i8*, i32 } %2, 0, !dbg !3549
  store i8* %3, i8** %exn.slot, align 8, !dbg !3549
  %4 = extractvalue { i8*, i32 } %2, 1, !dbg !3549
  store i32 %4, i32* %ehselector.slot, align 4, !dbg !3549
  %5 = bitcast %"class.tensorflow::TensorInterface"* %this1 to %"class.tensorflow::AbstractTensorInterface"*, !dbg !3550
  call void @_ZN10tensorflow23AbstractTensorInterfaceD2Ev(%"class.tensorflow::AbstractTensorInterface"* %5) #6, !dbg !3550
  br label %eh.resume, !dbg !3550

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8, !dbg !3550
  %sel = load i32, i32* %ehselector.slot, align 4, !dbg !3550
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0, !dbg !3550
  %lpad.val2 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1, !dbg !3550
  resume { i8*, i32 } %lpad.val2, !dbg !3550
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIlSaIlEED2Ev(%"class.std::vector"* %this) unnamed_addr #4 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !3552 {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::vector"** %this.addr, metadata !3553, metadata !DIExpression()), !dbg !3554
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*, !dbg !3555
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %0, i32 0, i32 0, !dbg !3555
  %1 = bitcast %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %_M_impl to %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"*, !dbg !3557
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data", %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* %1, i32 0, i32 0, !dbg !3558
  %2 = load i64*, i64** %_M_start, align 8, !dbg !3558
  %3 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*, !dbg !3559
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %3, i32 0, i32 0, !dbg !3559
  %4 = bitcast %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %_M_impl2 to %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"*, !dbg !3560
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data", %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* %4, i32 0, i32 1, !dbg !3561
  %5 = load i64*, i64** %_M_finish, align 8, !dbg !3561
  %6 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*, !dbg !3562
  %call = call nonnull align 1 dereferenceable(1) %"class.std::allocator.0"* @_ZNSt12_Vector_baseIlSaIlEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %6) #6, !dbg !3562
  invoke void @_ZSt8_DestroyIPllEvT_S1_RSaIT0_E(i64* %2, i64* %5, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %call)
          to label %invoke.cont unwind label %lpad, !dbg !3563

invoke.cont:                                      ; preds = %entry
  %7 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*, !dbg !3564
  call void @_ZNSt12_Vector_baseIlSaIlEED2Ev(%"struct.std::_Vector_base"* %7) #6, !dbg !3564
  ret void, !dbg !3565

lpad:                                             ; preds = %entry
  %8 = landingpad { i8*, i32 }
          catch i8* null, !dbg !3564
  %9 = extractvalue { i8*, i32 } %8, 0, !dbg !3564
  store i8* %9, i8** %exn.slot, align 8, !dbg !3564
  %10 = extractvalue { i8*, i32 } %8, 1, !dbg !3564
  store i32 %10, i32* %ehselector.slot, align 4, !dbg !3564
  %11 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*, !dbg !3564
  call void @_ZNSt12_Vector_baseIlSaIlEED2Ev(%"struct.std::_Vector_base"* %11) #6, !dbg !3564
  br label %terminate.handler, !dbg !3564

terminate.handler:                                ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8, !dbg !3564
  call void @__clang_call_terminate(i8* %exn) #14, !dbg !3564
  unreachable, !dbg !3564
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 1 dereferenceable(1) %"class.std::allocator.0"* @_ZNSt12_Vector_baseIlSaIlEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %this) #4 comdat align 2 !dbg !3566 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base"*, align 8
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::_Vector_base"** %this.addr, metadata !3567, metadata !DIExpression()), !dbg !3569
  %this1 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0, !dbg !3570
  %0 = bitcast %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %_M_impl to %"class.std::allocator.0"*, !dbg !3571
  ret %"class.std::allocator.0"* %0, !dbg !3572
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPllEvT_S1_RSaIT0_E(i64* %__first, i64* %__last, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %0) #5 comdat !dbg !3573 {
entry:
  %__first.addr = alloca i64*, align 8
  %__last.addr = alloca i64*, align 8
  %.addr = alloca %"class.std::allocator.0"*, align 8
  store i64* %__first, i64** %__first.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %__first.addr, metadata !3578, metadata !DIExpression()), !dbg !3579
  store i64* %__last, i64** %__last.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %__last.addr, metadata !3580, metadata !DIExpression()), !dbg !3581
  store %"class.std::allocator.0"* %0, %"class.std::allocator.0"** %.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::allocator.0"** %.addr, metadata !3582, metadata !DIExpression()), !dbg !3583
  %1 = load i64*, i64** %__first.addr, align 8, !dbg !3584
  %2 = load i64*, i64** %__last.addr, align 8, !dbg !3585
  call void @_ZSt8_DestroyIPlEvT_S1_(i64* %1, i64* %2), !dbg !3586
  ret void, !dbg !3587
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIlSaIlEED2Ev(%"struct.std::_Vector_base"* %this) unnamed_addr #4 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !3588 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base"*, align 8
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::_Vector_base"** %this.addr, metadata !3589, metadata !DIExpression()), !dbg !3590
  %this1 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0, !dbg !3591
  %0 = bitcast %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %_M_impl to %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"*, !dbg !3591
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data", %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* %0, i32 0, i32 0, !dbg !3593
  %1 = load i64*, i64** %_M_start, align 8, !dbg !3593
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0, !dbg !3594
  %2 = bitcast %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %_M_impl2 to %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"*, !dbg !3594
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data", %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* %2, i32 0, i32 2, !dbg !3595
  %3 = load i64*, i64** %_M_end_of_storage, align 8, !dbg !3595
  %_M_impl3 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0, !dbg !3596
  %4 = bitcast %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %_M_impl3 to %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"*, !dbg !3596
  %_M_start4 = getelementptr inbounds %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data", %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* %4, i32 0, i32 0, !dbg !3597
  %5 = load i64*, i64** %_M_start4, align 8, !dbg !3597
  %sub.ptr.lhs.cast = ptrtoint i64* %3 to i64, !dbg !3598
  %sub.ptr.rhs.cast = ptrtoint i64* %5 to i64, !dbg !3598
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !3598
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8, !dbg !3598
  invoke void @_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm(%"struct.std::_Vector_base"* %this1, i64* %1, i64 %sub.ptr.div)
          to label %invoke.cont unwind label %lpad, !dbg !3599

invoke.cont:                                      ; preds = %entry
  %_M_impl5 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0, !dbg !3600
  call void @_ZNSt12_Vector_baseIlSaIlEE12_Vector_implD2Ev(%"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %_M_impl5) #6, !dbg !3600
  ret void, !dbg !3601

lpad:                                             ; preds = %entry
  %6 = landingpad { i8*, i32 }
          catch i8* null, !dbg !3600
  %7 = extractvalue { i8*, i32 } %6, 0, !dbg !3600
  store i8* %7, i8** %exn.slot, align 8, !dbg !3600
  %8 = extractvalue { i8*, i32 } %6, 1, !dbg !3600
  store i32 %8, i32* %ehselector.slot, align 4, !dbg !3600
  %_M_impl6 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0, !dbg !3600
  call void @_ZNSt12_Vector_baseIlSaIlEE12_Vector_implD2Ev(%"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %_M_impl6) #6, !dbg !3600
  br label %terminate.handler, !dbg !3600

terminate.handler:                                ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8, !dbg !3600
  call void @__clang_call_terminate(i8* %exn) #14, !dbg !3600
  unreachable, !dbg !3600
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm(%"struct.std::_Vector_base"* %this, i64* %__p, i64 %__n) #5 comdat align 2 !dbg !3602 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base"*, align 8
  %__p.addr = alloca i64*, align 8
  %__n.addr = alloca i64, align 8
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::_Vector_base"** %this.addr, metadata !3603, metadata !DIExpression()), !dbg !3604
  store i64* %__p, i64** %__p.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %__p.addr, metadata !3605, metadata !DIExpression()), !dbg !3606
  store i64 %__n, i64* %__n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %__n.addr, metadata !3607, metadata !DIExpression()), !dbg !3608
  %this1 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %this.addr, align 8
  %0 = load i64*, i64** %__p.addr, align 8, !dbg !3609
  %tobool = icmp ne i64* %0, null, !dbg !3609
  br i1 %tobool, label %if.then, label %if.end, !dbg !3611

if.then:                                          ; preds = %entry
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0, !dbg !3612
  %1 = bitcast %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %_M_impl to %"class.std::allocator.0"*, !dbg !3612
  %2 = load i64*, i64** %__p.addr, align 8, !dbg !3613
  %3 = load i64, i64* %__n.addr, align 8, !dbg !3614
  call void @_ZNSt16allocator_traitsISaIlEE10deallocateERS0_Plm(%"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %1, i64* %2, i64 %3), !dbg !3615
  br label %if.end, !dbg !3615

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !3616
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIlSaIlEE12_Vector_implD2Ev(%"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %this) unnamed_addr #4 comdat align 2 !dbg !3617 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"*, align 8
  store %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %this, %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"** %this.addr, metadata !3619, metadata !DIExpression()), !dbg !3621
  %this1 = load %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"*, %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"** %this.addr, align 8
  %0 = bitcast %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %this1 to %"class.std::allocator.0"*, !dbg !3622
  call void @_ZNSaIlED2Ev(%"class.std::allocator.0"* %0) #6, !dbg !3622
  ret void, !dbg !3624
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIlEE10deallocateERS0_Plm(%"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %__a, i64* %__p, i64 %__n) #5 comdat align 2 !dbg !3625 {
entry:
  %__a.addr = alloca %"class.std::allocator.0"*, align 8
  %__p.addr = alloca i64*, align 8
  %__n.addr = alloca i64, align 8
  store %"class.std::allocator.0"* %__a, %"class.std::allocator.0"** %__a.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::allocator.0"** %__a.addr, metadata !3626, metadata !DIExpression()), !dbg !3627
  store i64* %__p, i64** %__p.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %__p.addr, metadata !3628, metadata !DIExpression()), !dbg !3629
  store i64 %__n, i64* %__n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %__n.addr, metadata !3630, metadata !DIExpression()), !dbg !3631
  %0 = load %"class.std::allocator.0"*, %"class.std::allocator.0"** %__a.addr, align 8, !dbg !3632
  %1 = bitcast %"class.std::allocator.0"* %0 to %"class.std::allocator.0"*, !dbg !3632
  %2 = load i64*, i64** %__p.addr, align 8, !dbg !3633
  %3 = load i64, i64* %__n.addr, align 8, !dbg !3634
  call void @_ZN9__gnu_cxx13new_allocatorIlE10deallocateEPlm(%"class.std::allocator.0"* %1, i64* %2, i64 %3), !dbg !3635
  ret void, !dbg !3636
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorIlE10deallocateEPlm(%"class.std::allocator.0"* %this, i64* %__p, i64 %__t) #4 comdat align 2 !dbg !3637 {
entry:
  %this.addr = alloca %"class.std::allocator.0"*, align 8
  %__p.addr = alloca i64*, align 8
  %__t.addr = alloca i64, align 8
  store %"class.std::allocator.0"* %this, %"class.std::allocator.0"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::allocator.0"** %this.addr, metadata !3638, metadata !DIExpression()), !dbg !3640
  store i64* %__p, i64** %__p.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %__p.addr, metadata !3641, metadata !DIExpression()), !dbg !3642
  store i64 %__t, i64* %__t.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %__t.addr, metadata !3643, metadata !DIExpression()), !dbg !3644
  %this1 = load %"class.std::allocator.0"*, %"class.std::allocator.0"** %this.addr, align 8
  %0 = load i64*, i64** %__p.addr, align 8, !dbg !3645
  %1 = bitcast i64* %0 to i8*, !dbg !3645
  call void @_ZdlPv(i8* %1) #6, !dbg !3646
  ret void, !dbg !3647
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPlEvT_S1_(i64* %__first, i64* %__last) #5 comdat !dbg !3648 {
entry:
  %__first.addr = alloca i64*, align 8
  %__last.addr = alloca i64*, align 8
  store i64* %__first, i64** %__first.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %__first.addr, metadata !3653, metadata !DIExpression()), !dbg !3654
  store i64* %__last, i64** %__last.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %__last.addr, metadata !3655, metadata !DIExpression()), !dbg !3656
  %0 = load i64*, i64** %__first.addr, align 8, !dbg !3657
  %1 = load i64*, i64** %__last.addr, align 8, !dbg !3658
  call void @_ZNSt12_Destroy_auxILb1EE9__destroyIPlEEvT_S3_(i64* %0, i64* %1), !dbg !3659
  ret void, !dbg !3660
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb1EE9__destroyIPlEEvT_S3_(i64* %0, i64* %1) #4 comdat align 2 !dbg !3661 {
entry:
  %.addr = alloca i64*, align 8
  %.addr1 = alloca i64*, align 8
  store i64* %0, i64** %.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %.addr, metadata !3666, metadata !DIExpression()), !dbg !3667
  store i64* %1, i64** %.addr1, align 8
  call void @llvm.dbg.declare(metadata i64** %.addr1, metadata !3668, metadata !DIExpression()), !dbg !3669
  ret void, !dbg !3670
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow23AbstractTensorInterfaceC2Ev(%"class.tensorflow::AbstractTensorInterface"* %this) unnamed_addr #4 comdat align 2 !dbg !3671 {
entry:
  %this.addr = alloca %"class.tensorflow::AbstractTensorInterface"*, align 8
  store %"class.tensorflow::AbstractTensorInterface"* %this, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::AbstractTensorInterface"** %this.addr, metadata !3673, metadata !DIExpression()), !dbg !3674
  %this1 = load %"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  %0 = bitcast %"class.tensorflow::AbstractTensorInterface"* %this1 to i32 (...)***, !dbg !3675
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [14 x i8*] }, { [14 x i8*] }* @_ZTVN10tensorflow23AbstractTensorInterfaceE, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %0, align 8, !dbg !3675
  ret void, !dbg !3675
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow23AbstractTensorInterfaceD2Ev(%"class.tensorflow::AbstractTensorInterface"* %this) unnamed_addr #4 comdat align 2 !dbg !3676 {
entry:
  %this.addr = alloca %"class.tensorflow::AbstractTensorInterface"*, align 8
  store %"class.tensorflow::AbstractTensorInterface"* %this, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::AbstractTensorInterface"** %this.addr, metadata !3677, metadata !DIExpression()), !dbg !3678
  %this1 = load %"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  ret void, !dbg !3679
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow15TensorInterface7ReleaseEv(%"class.tensorflow::TensorInterface"* %this) unnamed_addr #4 comdat align 2 !dbg !3680 {
entry:
  %this.addr = alloca %"class.tensorflow::TensorInterface"*, align 8
  store %"class.tensorflow::TensorInterface"* %this, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::TensorInterface"** %this.addr, metadata !3681, metadata !DIExpression()), !dbg !3682
  %this1 = load %"class.tensorflow::TensorInterface"*, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  %isnull = icmp eq %"class.tensorflow::TensorInterface"* %this1, null, !dbg !3683
  br i1 %isnull, label %delete.end, label %delete.notnull, !dbg !3683

delete.notnull:                                   ; preds = %entry
  %0 = bitcast %"class.tensorflow::TensorInterface"* %this1 to void (%"class.tensorflow::TensorInterface"*)***, !dbg !3683
  %vtable = load void (%"class.tensorflow::TensorInterface"*)**, void (%"class.tensorflow::TensorInterface"*)*** %0, align 8, !dbg !3683
  %vfn = getelementptr inbounds void (%"class.tensorflow::TensorInterface"*)*, void (%"class.tensorflow::TensorInterface"*)** %vtable, i64 11, !dbg !3683
  %1 = load void (%"class.tensorflow::TensorInterface"*)*, void (%"class.tensorflow::TensorInterface"*)** %vfn, align 8, !dbg !3683
  call void %1(%"class.tensorflow::TensorInterface"* %this1) #6, !dbg !3683
  br label %delete.end, !dbg !3683

delete.end:                                       ; preds = %delete.notnull, %entry
  ret void, !dbg !3684
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i32 @_ZNK10tensorflow15TensorInterface4TypeEv(%"class.tensorflow::TensorInterface"* %this) unnamed_addr #4 comdat align 2 !dbg !3685 {
entry:
  %this.addr = alloca %"class.tensorflow::TensorInterface"*, align 8
  store %"class.tensorflow::TensorInterface"* %this, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::TensorInterface"** %this.addr, metadata !3686, metadata !DIExpression()), !dbg !3688
  %this1 = load %"class.tensorflow::TensorInterface"*, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  ret i32 0, !dbg !3689
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i32 @_ZNK10tensorflow15TensorInterface7NumDimsEv(%"class.tensorflow::TensorInterface"* %this) unnamed_addr #4 comdat align 2 !dbg !3690 {
entry:
  %this.addr = alloca %"class.tensorflow::TensorInterface"*, align 8
  store %"class.tensorflow::TensorInterface"* %this, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::TensorInterface"** %this.addr, metadata !3691, metadata !DIExpression()), !dbg !3692
  %this1 = load %"class.tensorflow::TensorInterface"*, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  ret i32 0, !dbg !3693
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @_ZNK10tensorflow15TensorInterface3DimEi(%"class.tensorflow::TensorInterface"* %this, i32 %0) unnamed_addr #4 comdat align 2 !dbg !3694 {
entry:
  %this.addr = alloca %"class.tensorflow::TensorInterface"*, align 8
  %.addr = alloca i32, align 4
  store %"class.tensorflow::TensorInterface"* %this, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::TensorInterface"** %this.addr, metadata !3695, metadata !DIExpression()), !dbg !3696
  store i32 %0, i32* %.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %.addr, metadata !3697, metadata !DIExpression()), !dbg !3698
  %this1 = load %"class.tensorflow::TensorInterface"*, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  ret i64 0, !dbg !3699
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @_ZNK10tensorflow15TensorInterface11NumElementsEv(%"class.tensorflow::TensorInterface"* %this) unnamed_addr #4 comdat align 2 !dbg !3700 {
entry:
  %this.addr = alloca %"class.tensorflow::TensorInterface"*, align 8
  store %"class.tensorflow::TensorInterface"* %this, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::TensorInterface"** %this.addr, metadata !3701, metadata !DIExpression()), !dbg !3702
  %this1 = load %"class.tensorflow::TensorInterface"*, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  ret i64 0, !dbg !3703
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @_ZNK10tensorflow15TensorInterface8ByteSizeEv(%"class.tensorflow::TensorInterface"* %this) unnamed_addr #4 comdat align 2 !dbg !3704 {
entry:
  %this.addr = alloca %"class.tensorflow::TensorInterface"*, align 8
  store %"class.tensorflow::TensorInterface"* %this, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::TensorInterface"** %this.addr, metadata !3705, metadata !DIExpression()), !dbg !3706
  %this1 = load %"class.tensorflow::TensorInterface"*, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  ret i64 0, !dbg !3707
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i8* @_ZNK10tensorflow15TensorInterface4DataEv(%"class.tensorflow::TensorInterface"* %this) unnamed_addr #4 comdat align 2 !dbg !3708 {
entry:
  %this.addr = alloca %"class.tensorflow::TensorInterface"*, align 8
  store %"class.tensorflow::TensorInterface"* %this, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::TensorInterface"** %this.addr, metadata !3709, metadata !DIExpression()), !dbg !3710
  %this1 = load %"class.tensorflow::TensorInterface"*, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  ret i8* null, !dbg !3711
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local zeroext i1 @_ZNK10tensorflow15TensorInterface9IsAlignedEv(%"class.tensorflow::TensorInterface"* %this) unnamed_addr #4 comdat align 2 !dbg !3712 {
entry:
  %this.addr = alloca %"class.tensorflow::TensorInterface"*, align 8
  store %"class.tensorflow::TensorInterface"* %this, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::TensorInterface"** %this.addr, metadata !3713, metadata !DIExpression()), !dbg !3714
  %this1 = load %"class.tensorflow::TensorInterface"*, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  ret i1 true, !dbg !3715
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local zeroext i1 @_ZNK10tensorflow15TensorInterface7CanMoveEv(%"class.tensorflow::TensorInterface"* %this) unnamed_addr #4 comdat align 2 !dbg !3716 {
entry:
  %this.addr = alloca %"class.tensorflow::TensorInterface"*, align 8
  store %"class.tensorflow::TensorInterface"* %this, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::TensorInterface"** %this.addr, metadata !3717, metadata !DIExpression()), !dbg !3718
  %this1 = load %"class.tensorflow::TensorInterface"*, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  ret i1 true, !dbg !3719
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNK10tensorflow15TensorInterface14SummarizeValueB5cxx11Ev(%"class.std::__cxx11::basic_string"* noalias sret align 8 %agg.result, %"class.tensorflow::TensorInterface"* %this) unnamed_addr #4 comdat align 2 !dbg !3720 {
entry:
  %result.ptr = alloca i8*, align 8
  %this.addr = alloca %"class.tensorflow::TensorInterface"*, align 8
  %0 = bitcast %"class.std::__cxx11::basic_string"* %agg.result to i8*
  store i8* %0, i8** %result.ptr, align 8
  store %"class.tensorflow::TensorInterface"* %this, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::TensorInterface"** %this.addr, metadata !3721, metadata !DIExpression()), !dbg !3722
  %this1 = load %"class.tensorflow::TensorInterface"*, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev(%"class.std::__cxx11::basic_string"* %agg.result) #6, !dbg !3723
  ret void, !dbg !3724
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow15TensorInterfaceD2Ev(%"class.tensorflow::TensorInterface"* %this) unnamed_addr #4 comdat align 2 !dbg !3725 {
entry:
  %this.addr = alloca %"class.tensorflow::TensorInterface"*, align 8
  store %"class.tensorflow::TensorInterface"* %this, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::TensorInterface"** %this.addr, metadata !3726, metadata !DIExpression()), !dbg !3727
  %this1 = load %"class.tensorflow::TensorInterface"*, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  %0 = bitcast %"class.tensorflow::TensorInterface"* %this1 to i32 (...)***, !dbg !3728
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [14 x i8*] }, { [14 x i8*] }* @_ZTVN10tensorflow15TensorInterfaceE, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %0, align 8, !dbg !3728
  %tensor_ = getelementptr inbounds %"class.tensorflow::TensorInterface", %"class.tensorflow::TensorInterface"* %this1, i32 0, i32 1, !dbg !3729
  call void @_ZN10tensorflow6TensorD1Ev(%"class.tensorflow::Tensor"* %tensor_) #6, !dbg !3729
  %1 = bitcast %"class.tensorflow::TensorInterface"* %this1 to %"class.tensorflow::AbstractTensorInterface"*, !dbg !3729
  call void @_ZN10tensorflow23AbstractTensorInterfaceD2Ev(%"class.tensorflow::AbstractTensorInterface"* %1) #6, !dbg !3729
  ret void, !dbg !3731
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow15TensorInterfaceD0Ev(%"class.tensorflow::TensorInterface"* %this) unnamed_addr #4 comdat align 2 !dbg !3732 {
entry:
  %this.addr = alloca %"class.tensorflow::TensorInterface"*, align 8
  store %"class.tensorflow::TensorInterface"* %this, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::TensorInterface"** %this.addr, metadata !3733, metadata !DIExpression()), !dbg !3734
  %this1 = load %"class.tensorflow::TensorInterface"*, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  call void @_ZN10tensorflow15TensorInterfaceD2Ev(%"class.tensorflow::TensorInterface"* %this1) #6, !dbg !3735
  %0 = bitcast %"class.tensorflow::TensorInterface"* %this1 to i8*, !dbg !3735
  call void @_ZdlPv(i8* %0) #17, !dbg !3735
  ret void, !dbg !3736
}

; Function Attrs: nounwind
declare dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev(%"class.std::__cxx11::basic_string"*) unnamed_addr #3

declare dso_local void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow23AbstractTensorInterfaceD0Ev(%"class.tensorflow::AbstractTensorInterface"* %this) unnamed_addr #4 comdat align 2 !dbg !3737 {
entry:
  %this.addr = alloca %"class.tensorflow::AbstractTensorInterface"*, align 8
  store %"class.tensorflow::AbstractTensorInterface"* %this, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::AbstractTensorInterface"** %this.addr, metadata !3738, metadata !DIExpression()), !dbg !3739
  %this1 = load %"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  call void @abort(), !dbg !3740
  unreachable, !dbg !3740
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(29) %"class.tensorflow::TensorShape"* @_ZNK10tensorflow6Tensor5shapeEv(%"class.tensorflow::Tensor"* %this) #4 comdat align 2 !dbg !3741 {
entry:
  %this.addr = alloca %"class.tensorflow::Tensor"*, align 8
  store %"class.tensorflow::Tensor"* %this, %"class.tensorflow::Tensor"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::Tensor"** %this.addr, metadata !3742, metadata !DIExpression()), !dbg !3743
  %this1 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %this.addr, align 8
  %shape_ = getelementptr inbounds %"class.tensorflow::Tensor", %"class.tensorflow::Tensor"* %this1, i32 0, i32 0, !dbg !3744
  ret %"class.tensorflow::TensorShape"* %shape_, !dbg !3745
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @_ZNK10tensorflow11TensorShape12num_elementsEv(%"class.tensorflow::TensorShape"* %this) #4 comdat align 2 !dbg !3746 {
entry:
  %retval = alloca i64, align 8
  %this.addr = alloca %"class.tensorflow::TensorShape"*, align 8
  %prod = alloca i64, align 8
  %__range2 = alloca %"class.std::vector"*, align 8
  %__begin2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__end2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %d = alloca i64, align 8
  store %"class.tensorflow::TensorShape"* %this, %"class.tensorflow::TensorShape"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::TensorShape"** %this.addr, metadata !3747, metadata !DIExpression()), !dbg !3748
  %this1 = load %"class.tensorflow::TensorShape"*, %"class.tensorflow::TensorShape"** %this.addr, align 8
  %dims_ = getelementptr inbounds %"class.tensorflow::TensorShape", %"class.tensorflow::TensorShape"* %this1, i32 0, i32 0, !dbg !3749
  %call = call zeroext i1 @_ZNKSt6vectorIlSaIlEE5emptyEv(%"class.std::vector"* %dims_) #6, !dbg !3751
  br i1 %call, label %if.then, label %if.end, !dbg !3752

if.then:                                          ; preds = %entry
  store i64 1, i64* %retval, align 8, !dbg !3753
  br label %return, !dbg !3753

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %prod, metadata !3754, metadata !DIExpression()), !dbg !3755
  store i64 1, i64* %prod, align 8, !dbg !3755
  call void @llvm.dbg.declare(metadata %"class.std::vector"** %__range2, metadata !3756, metadata !DIExpression()), !dbg !3758
  %dims_2 = getelementptr inbounds %"class.tensorflow::TensorShape", %"class.tensorflow::TensorShape"* %this1, i32 0, i32 0, !dbg !3759
  store %"class.std::vector"* %dims_2, %"class.std::vector"** %__range2, align 8, !dbg !3759
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator"* %__begin2, metadata !3760, metadata !DIExpression()), !dbg !3758
  %0 = load %"class.std::vector"*, %"class.std::vector"** %__range2, align 8, !dbg !3761
  %call3 = call i64* @_ZNKSt6vectorIlSaIlEE5beginEv(%"class.std::vector"* %0) #6, !dbg !3761
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__begin2, i32 0, i32 0, !dbg !3761
  store i64* %call3, i64** %coerce.dive, align 8, !dbg !3761
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator"* %__end2, metadata !3762, metadata !DIExpression()), !dbg !3758
  %1 = load %"class.std::vector"*, %"class.std::vector"** %__range2, align 8, !dbg !3761
  %call4 = call i64* @_ZNKSt6vectorIlSaIlEE3endEv(%"class.std::vector"* %1) #6, !dbg !3761
  %coerce.dive5 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__end2, i32 0, i32 0, !dbg !3761
  store i64* %call4, i64** %coerce.dive5, align 8, !dbg !3761
  br label %for.cond, !dbg !3761

for.cond:                                         ; preds = %for.inc, %if.end
  %call6 = call zeroext i1 @_ZN9__gnu_cxxneIPKlSt6vectorIlSaIlEEEEbRKNS_17__normal_iteratorIT_T0_EESB_(%"class.__gnu_cxx::__normal_iterator"* nonnull align 8 dereferenceable(8) %__begin2, %"class.__gnu_cxx::__normal_iterator"* nonnull align 8 dereferenceable(8) %__end2) #6, !dbg !3761
  br i1 %call6, label %for.body, label %for.end, !dbg !3761

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i64* %d, metadata !3763, metadata !DIExpression()), !dbg !3765
  %call7 = call nonnull align 8 dereferenceable(8) i64* @_ZNK9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEdeEv(%"class.__gnu_cxx::__normal_iterator"* %__begin2) #6, !dbg !3766
  %2 = load i64, i64* %call7, align 8, !dbg !3766
  store i64 %2, i64* %d, align 8, !dbg !3765
  %3 = load i64, i64* %d, align 8, !dbg !3767
  %cmp = icmp sle i64 %3, 0, !dbg !3770
  br i1 %cmp, label %if.then8, label %if.end9, !dbg !3771

if.then8:                                         ; preds = %for.body
  store i64 0, i64* %retval, align 8, !dbg !3772
  br label %return, !dbg !3772

if.end9:                                          ; preds = %for.body
  %4 = load i64, i64* %d, align 8, !dbg !3773
  %5 = load i64, i64* %prod, align 8, !dbg !3774
  %mul = mul nsw i64 %5, %4, !dbg !3774
  store i64 %mul, i64* %prod, align 8, !dbg !3774
  br label %for.inc, !dbg !3775

for.inc:                                          ; preds = %if.end9
  %call10 = call nonnull align 8 dereferenceable(8) %"class.__gnu_cxx::__normal_iterator"* @_ZN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEppEv(%"class.__gnu_cxx::__normal_iterator"* %__begin2) #6, !dbg !3761
  br label %for.cond, !dbg !3761, !llvm.loop !3776

for.end:                                          ; preds = %for.cond
  %6 = load i64, i64* %prod, align 8, !dbg !3778
  store i64 %6, i64* %retval, align 8, !dbg !3779
  br label %return, !dbg !3779

return:                                           ; preds = %for.end, %if.then8, %if.then
  %7 = load i64, i64* %retval, align 8, !dbg !3780
  ret i64 %7, !dbg !3780
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local zeroext i1 @_ZNKSt6vectorIlSaIlEE5emptyEv(%"class.std::vector"* %this) #4 comdat align 2 !dbg !3781 {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  %ref.tmp = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %ref.tmp2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::vector"** %this.addr, metadata !3782, metadata !DIExpression()), !dbg !3784
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %call = call i64* @_ZNKSt6vectorIlSaIlEE5beginEv(%"class.std::vector"* %this1) #6, !dbg !3785
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %ref.tmp, i32 0, i32 0, !dbg !3785
  store i64* %call, i64** %coerce.dive, align 8, !dbg !3785
  %call3 = call i64* @_ZNKSt6vectorIlSaIlEE3endEv(%"class.std::vector"* %this1) #6, !dbg !3786
  %coerce.dive4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %ref.tmp2, i32 0, i32 0, !dbg !3786
  store i64* %call3, i64** %coerce.dive4, align 8, !dbg !3786
  %call5 = call zeroext i1 @_ZN9__gnu_cxxeqIPKlSt6vectorIlSaIlEEEEbRKNS_17__normal_iteratorIT_T0_EESB_(%"class.__gnu_cxx::__normal_iterator"* nonnull align 8 dereferenceable(8) %ref.tmp, %"class.__gnu_cxx::__normal_iterator"* nonnull align 8 dereferenceable(8) %ref.tmp2) #6, !dbg !3787
  ret i1 %call5, !dbg !3788
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64* @_ZNKSt6vectorIlSaIlEE5beginEv(%"class.std::vector"* %this) #4 comdat align 2 !dbg !3789 {
entry:
  %retval = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %this.addr = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::vector"** %this.addr, metadata !3790, metadata !DIExpression()), !dbg !3791
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*, !dbg !3792
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %0, i32 0, i32 0, !dbg !3792
  %1 = bitcast %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %_M_impl to %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"*, !dbg !3793
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data", %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* %1, i32 0, i32 0, !dbg !3794
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEC2ERKS2_(%"class.__gnu_cxx::__normal_iterator"* %retval, i64** nonnull align 8 dereferenceable(8) %_M_start) #6, !dbg !3795
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %retval, i32 0, i32 0, !dbg !3796
  %2 = load i64*, i64** %coerce.dive, align 8, !dbg !3796
  ret i64* %2, !dbg !3796
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64* @_ZNKSt6vectorIlSaIlEE3endEv(%"class.std::vector"* %this) #4 comdat align 2 !dbg !3797 {
entry:
  %retval = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %this.addr = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::vector"** %this.addr, metadata !3798, metadata !DIExpression()), !dbg !3799
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*, !dbg !3800
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %0, i32 0, i32 0, !dbg !3800
  %1 = bitcast %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %_M_impl to %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"*, !dbg !3801
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data", %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* %1, i32 0, i32 1, !dbg !3802
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEC2ERKS2_(%"class.__gnu_cxx::__normal_iterator"* %retval, i64** nonnull align 8 dereferenceable(8) %_M_finish) #6, !dbg !3803
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %retval, i32 0, i32 0, !dbg !3804
  %2 = load i64*, i64** %coerce.dive, align 8, !dbg !3804
  ret i64* %2, !dbg !3804
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local zeroext i1 @_ZN9__gnu_cxxneIPKlSt6vectorIlSaIlEEEEbRKNS_17__normal_iteratorIT_T0_EESB_(%"class.__gnu_cxx::__normal_iterator"* nonnull align 8 dereferenceable(8) %__lhs, %"class.__gnu_cxx::__normal_iterator"* nonnull align 8 dereferenceable(8) %__rhs) #4 comdat !dbg !3805 {
entry:
  %__lhs.addr = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  %__rhs.addr = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %__lhs, %"class.__gnu_cxx::__normal_iterator"** %__lhs.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator"** %__lhs.addr, metadata !3809, metadata !DIExpression()), !dbg !3810
  store %"class.__gnu_cxx::__normal_iterator"* %__rhs, %"class.__gnu_cxx::__normal_iterator"** %__rhs.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator"** %__rhs.addr, metadata !3811, metadata !DIExpression()), !dbg !3812
  %0 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %__lhs.addr, align 8, !dbg !3813
  %call = call nonnull align 8 dereferenceable(8) i64** @_ZNK9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %0) #6, !dbg !3814
  %1 = load i64*, i64** %call, align 8, !dbg !3814
  %2 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %__rhs.addr, align 8, !dbg !3815
  %call1 = call nonnull align 8 dereferenceable(8) i64** @_ZNK9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %2) #6, !dbg !3816
  %3 = load i64*, i64** %call1, align 8, !dbg !3816
  %cmp = icmp ne i64* %1, %3, !dbg !3817
  ret i1 %cmp, !dbg !3818
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) i64* @_ZNK9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEdeEv(%"class.__gnu_cxx::__normal_iterator"* %this) #4 comdat align 2 !dbg !3819 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %this, %"class.__gnu_cxx::__normal_iterator"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator"** %this.addr, metadata !3820, metadata !DIExpression()), !dbg !3822
  %this1 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %this.addr, align 8
  %_M_current = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %this1, i32 0, i32 0, !dbg !3823
  %0 = load i64*, i64** %_M_current, align 8, !dbg !3823
  ret i64* %0, !dbg !3824
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) %"class.__gnu_cxx::__normal_iterator"* @_ZN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEppEv(%"class.__gnu_cxx::__normal_iterator"* %this) #4 comdat align 2 !dbg !3825 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %this, %"class.__gnu_cxx::__normal_iterator"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator"** %this.addr, metadata !3826, metadata !DIExpression()), !dbg !3828
  %this1 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %this.addr, align 8
  %_M_current = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %this1, i32 0, i32 0, !dbg !3829
  %0 = load i64*, i64** %_M_current, align 8, !dbg !3830
  %incdec.ptr = getelementptr inbounds i64, i64* %0, i32 1, !dbg !3830
  store i64* %incdec.ptr, i64** %_M_current, align 8, !dbg !3830
  ret %"class.__gnu_cxx::__normal_iterator"* %this1, !dbg !3831
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) i64** @_ZNK9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %this) #4 comdat align 2 !dbg !3832 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %this, %"class.__gnu_cxx::__normal_iterator"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator"** %this.addr, metadata !3833, metadata !DIExpression()), !dbg !3834
  %this1 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %this.addr, align 8
  %_M_current = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %this1, i32 0, i32 0, !dbg !3835
  ret i64** %_M_current, !dbg !3836
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEC2ERKS2_(%"class.__gnu_cxx::__normal_iterator"* %this, i64** nonnull align 8 dereferenceable(8) %__i) unnamed_addr #4 comdat align 2 !dbg !3837 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  %__i.addr = alloca i64**, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %this, %"class.__gnu_cxx::__normal_iterator"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator"** %this.addr, metadata !3838, metadata !DIExpression()), !dbg !3839
  store i64** %__i, i64*** %__i.addr, align 8
  call void @llvm.dbg.declare(metadata i64*** %__i.addr, metadata !3840, metadata !DIExpression()), !dbg !3841
  %this1 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %this.addr, align 8
  %_M_current = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %this1, i32 0, i32 0, !dbg !3842
  %0 = load i64**, i64*** %__i.addr, align 8, !dbg !3843
  %1 = load i64*, i64** %0, align 8, !dbg !3843
  store i64* %1, i64** %_M_current, align 8, !dbg !3842
  ret void, !dbg !3844
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local zeroext i1 @_ZN9__gnu_cxxeqIPKlSt6vectorIlSaIlEEEEbRKNS_17__normal_iteratorIT_T0_EESB_(%"class.__gnu_cxx::__normal_iterator"* nonnull align 8 dereferenceable(8) %__lhs, %"class.__gnu_cxx::__normal_iterator"* nonnull align 8 dereferenceable(8) %__rhs) #4 comdat !dbg !3845 {
entry:
  %__lhs.addr = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  %__rhs.addr = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %__lhs, %"class.__gnu_cxx::__normal_iterator"** %__lhs.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator"** %__lhs.addr, metadata !3846, metadata !DIExpression()), !dbg !3847
  store %"class.__gnu_cxx::__normal_iterator"* %__rhs, %"class.__gnu_cxx::__normal_iterator"** %__rhs.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator"** %__rhs.addr, metadata !3848, metadata !DIExpression()), !dbg !3849
  %0 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %__lhs.addr, align 8, !dbg !3850
  %call = call nonnull align 8 dereferenceable(8) i64** @_ZNK9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %0) #6, !dbg !3851
  %1 = load i64*, i64** %call, align 8, !dbg !3851
  %2 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %__rhs.addr, align 8, !dbg !3852
  %call1 = call nonnull align 8 dereferenceable(8) i64** @_ZNK9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %2) #6, !dbg !3853
  %3 = load i64*, i64** %call1, align 8, !dbg !3853
  %cmp = icmp eq i64* %1, %3, !dbg !3854
  ret i1 %cmp, !dbg !3855
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIlSaIlEEC2ERKS1_(%"class.std::vector"* %this, %"class.std::vector"* nonnull align 8 dereferenceable(24) %__x) unnamed_addr #5 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !3856 {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  %__x.addr = alloca %"class.std::vector"*, align 8
  %ref.tmp = alloca %"class.std::allocator.0", align 1
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  %agg.tmp = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp4 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::vector"** %this.addr, metadata !3857, metadata !DIExpression()), !dbg !3858
  store %"class.std::vector"* %__x, %"class.std::vector"** %__x.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::vector"** %__x.addr, metadata !3859, metadata !DIExpression()), !dbg !3860
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*, !dbg !3861
  %1 = load %"class.std::vector"*, %"class.std::vector"** %__x.addr, align 8, !dbg !3862
  %call = call i64 @_ZNKSt6vectorIlSaIlEE4sizeEv(%"class.std::vector"* %1) #6, !dbg !3863
  %2 = load %"class.std::vector"*, %"class.std::vector"** %__x.addr, align 8, !dbg !3864
  %3 = bitcast %"class.std::vector"* %2 to %"struct.std::_Vector_base"*, !dbg !3864
  %call2 = call nonnull align 1 dereferenceable(1) %"class.std::allocator.0"* @_ZNKSt12_Vector_baseIlSaIlEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %3) #6, !dbg !3865
  call void @_ZN9__gnu_cxx14__alloc_traitsISaIlElE17_S_select_on_copyERKS1_(%"class.std::allocator.0"* sret align 1 %ref.tmp, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %call2), !dbg !3866
  invoke void @_ZNSt12_Vector_baseIlSaIlEEC2EmRKS0_(%"struct.std::_Vector_base"* %0, i64 %call, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %ref.tmp)
          to label %invoke.cont unwind label %lpad, !dbg !3867

invoke.cont:                                      ; preds = %entry
  call void @_ZNSaIlED2Ev(%"class.std::allocator.0"* %ref.tmp) #6, !dbg !3867
  %4 = load %"class.std::vector"*, %"class.std::vector"** %__x.addr, align 8, !dbg !3868
  %call3 = call i64* @_ZNKSt6vectorIlSaIlEE5beginEv(%"class.std::vector"* %4) #6, !dbg !3870
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp, i32 0, i32 0, !dbg !3870
  store i64* %call3, i64** %coerce.dive, align 8, !dbg !3870
  %5 = load %"class.std::vector"*, %"class.std::vector"** %__x.addr, align 8, !dbg !3871
  %call5 = call i64* @_ZNKSt6vectorIlSaIlEE3endEv(%"class.std::vector"* %5) #6, !dbg !3872
  %coerce.dive6 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp4, i32 0, i32 0, !dbg !3872
  store i64* %call5, i64** %coerce.dive6, align 8, !dbg !3872
  %6 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*, !dbg !3873
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %6, i32 0, i32 0, !dbg !3873
  %7 = bitcast %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %_M_impl to %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"*, !dbg !3874
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data", %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* %7, i32 0, i32 0, !dbg !3875
  %8 = load i64*, i64** %_M_start, align 8, !dbg !3875
  %9 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*, !dbg !3876
  %call7 = call nonnull align 1 dereferenceable(1) %"class.std::allocator.0"* @_ZNSt12_Vector_baseIlSaIlEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %9) #6, !dbg !3876
  %coerce.dive8 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp, i32 0, i32 0, !dbg !3877
  %10 = load i64*, i64** %coerce.dive8, align 8, !dbg !3877
  %coerce.dive9 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp4, i32 0, i32 0, !dbg !3877
  %11 = load i64*, i64** %coerce.dive9, align 8, !dbg !3877
  %call12 = invoke i64* @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEEPllET0_T_SA_S9_RSaIT1_E(i64* %10, i64* %11, i64* %8, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %call7)
          to label %invoke.cont11 unwind label %lpad10, !dbg !3877

invoke.cont11:                                    ; preds = %invoke.cont
  %12 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*, !dbg !3878
  %_M_impl13 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %12, i32 0, i32 0, !dbg !3878
  %13 = bitcast %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %_M_impl13 to %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"*, !dbg !3879
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data", %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* %13, i32 0, i32 1, !dbg !3880
  store i64* %call12, i64** %_M_finish, align 8, !dbg !3881
  ret void, !dbg !3882

lpad:                                             ; preds = %entry
  %14 = landingpad { i8*, i32 }
          cleanup, !dbg !3882
  %15 = extractvalue { i8*, i32 } %14, 0, !dbg !3882
  store i8* %15, i8** %exn.slot, align 8, !dbg !3882
  %16 = extractvalue { i8*, i32 } %14, 1, !dbg !3882
  store i32 %16, i32* %ehselector.slot, align 4, !dbg !3882
  call void @_ZNSaIlED2Ev(%"class.std::allocator.0"* %ref.tmp) #6, !dbg !3867
  br label %eh.resume, !dbg !3867

lpad10:                                           ; preds = %invoke.cont
  %17 = landingpad { i8*, i32 }
          cleanup, !dbg !3883
  %18 = extractvalue { i8*, i32 } %17, 0, !dbg !3883
  store i8* %18, i8** %exn.slot, align 8, !dbg !3883
  %19 = extractvalue { i8*, i32 } %17, 1, !dbg !3883
  store i32 %19, i32* %ehselector.slot, align 4, !dbg !3883
  %20 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*, !dbg !3883
  call void @_ZNSt12_Vector_baseIlSaIlEED2Ev(%"struct.std::_Vector_base"* %20) #6, !dbg !3883
  br label %eh.resume, !dbg !3883

eh.resume:                                        ; preds = %lpad10, %lpad
  %exn = load i8*, i8** %exn.slot, align 8, !dbg !3867
  %sel = load i32, i32* %ehselector.slot, align 4, !dbg !3867
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0, !dbg !3867
  %lpad.val14 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1, !dbg !3867
  resume { i8*, i32 } %lpad.val14, !dbg !3867
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @_ZNKSt6vectorIlSaIlEE4sizeEv(%"class.std::vector"* %this) #4 comdat align 2 !dbg !3884 {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::vector"** %this.addr, metadata !3885, metadata !DIExpression()), !dbg !3886
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*, !dbg !3887
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %0, i32 0, i32 0, !dbg !3887
  %1 = bitcast %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %_M_impl to %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"*, !dbg !3888
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data", %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* %1, i32 0, i32 1, !dbg !3889
  %2 = load i64*, i64** %_M_finish, align 8, !dbg !3889
  %3 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*, !dbg !3890
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %3, i32 0, i32 0, !dbg !3890
  %4 = bitcast %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %_M_impl2 to %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"*, !dbg !3891
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data", %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* %4, i32 0, i32 0, !dbg !3892
  %5 = load i64*, i64** %_M_start, align 8, !dbg !3892
  %sub.ptr.lhs.cast = ptrtoint i64* %2 to i64, !dbg !3893
  %sub.ptr.rhs.cast = ptrtoint i64* %5 to i64, !dbg !3893
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !3893
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8, !dbg !3893
  ret i64 %sub.ptr.div, !dbg !3894
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 1 dereferenceable(1) %"class.std::allocator.0"* @_ZNKSt12_Vector_baseIlSaIlEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %this) #4 comdat align 2 !dbg !3895 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base"*, align 8
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::_Vector_base"** %this.addr, metadata !3896, metadata !DIExpression()), !dbg !3898
  %this1 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0, !dbg !3899
  %0 = bitcast %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %_M_impl to %"class.std::allocator.0"*, !dbg !3900
  ret %"class.std::allocator.0"* %0, !dbg !3901
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx14__alloc_traitsISaIlElE17_S_select_on_copyERKS1_(%"class.std::allocator.0"* noalias sret align 1 %agg.result, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %__a) #5 comdat align 2 !dbg !3902 {
entry:
  %result.ptr = alloca i8*, align 8
  %__a.addr = alloca %"class.std::allocator.0"*, align 8
  %0 = bitcast %"class.std::allocator.0"* %agg.result to i8*
  store i8* %0, i8** %result.ptr, align 8
  store %"class.std::allocator.0"* %__a, %"class.std::allocator.0"** %__a.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::allocator.0"** %__a.addr, metadata !3903, metadata !DIExpression()), !dbg !3904
  %1 = load %"class.std::allocator.0"*, %"class.std::allocator.0"** %__a.addr, align 8, !dbg !3905
  call void @_ZNSt16allocator_traitsISaIlEE37select_on_container_copy_constructionERKS0_(%"class.std::allocator.0"* sret align 1 %agg.result, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %1), !dbg !3906
  ret void, !dbg !3907
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIlSaIlEEC2EmRKS0_(%"struct.std::_Vector_base"* %this, i64 %__n, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %__a) unnamed_addr #5 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !3908 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base"*, align 8
  %__n.addr = alloca i64, align 8
  %__a.addr = alloca %"class.std::allocator.0"*, align 8
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::_Vector_base"** %this.addr, metadata !3909, metadata !DIExpression()), !dbg !3910
  store i64 %__n, i64* %__n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %__n.addr, metadata !3911, metadata !DIExpression()), !dbg !3912
  store %"class.std::allocator.0"* %__a, %"class.std::allocator.0"** %__a.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::allocator.0"** %__a.addr, metadata !3913, metadata !DIExpression()), !dbg !3914
  %this1 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0, !dbg !3915
  %0 = load %"class.std::allocator.0"*, %"class.std::allocator.0"** %__a.addr, align 8, !dbg !3916
  call void @_ZNSt12_Vector_baseIlSaIlEE12_Vector_implC2ERKS0_(%"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %_M_impl, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %0) #6, !dbg !3915
  %1 = load i64, i64* %__n.addr, align 8, !dbg !3917
  invoke void @_ZNSt12_Vector_baseIlSaIlEE17_M_create_storageEm(%"struct.std::_Vector_base"* %this1, i64 %1)
          to label %invoke.cont unwind label %lpad, !dbg !3919

invoke.cont:                                      ; preds = %entry
  ret void, !dbg !3920

lpad:                                             ; preds = %entry
  %2 = landingpad { i8*, i32 }
          cleanup, !dbg !3921
  %3 = extractvalue { i8*, i32 } %2, 0, !dbg !3921
  store i8* %3, i8** %exn.slot, align 8, !dbg !3921
  %4 = extractvalue { i8*, i32 } %2, 1, !dbg !3921
  store i32 %4, i32* %ehselector.slot, align 4, !dbg !3921
  call void @_ZNSt12_Vector_baseIlSaIlEE12_Vector_implD2Ev(%"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %_M_impl) #6, !dbg !3921
  br label %eh.resume, !dbg !3921

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8, !dbg !3921
  %sel = load i32, i32* %ehselector.slot, align 4, !dbg !3921
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0, !dbg !3921
  %lpad.val2 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1, !dbg !3921
  resume { i8*, i32 } %lpad.val2, !dbg !3921
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i64* @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEEPllET0_T_SA_S9_RSaIT1_E(i64* %__first.coerce, i64* %__last.coerce, i64* %__result, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %0) #5 comdat !dbg !3922 {
entry:
  %__first = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__last = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__result.addr = alloca i64*, align 8
  %.addr = alloca %"class.std::allocator.0"*, align 8
  %agg.tmp = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__first, i32 0, i32 0
  store i64* %__first.coerce, i64** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__last, i32 0, i32 0
  store i64* %__last.coerce, i64** %coerce.dive1, align 8
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator"* %__first, metadata !3928, metadata !DIExpression()), !dbg !3929
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator"* %__last, metadata !3930, metadata !DIExpression()), !dbg !3931
  store i64* %__result, i64** %__result.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %__result.addr, metadata !3932, metadata !DIExpression()), !dbg !3933
  store %"class.std::allocator.0"* %0, %"class.std::allocator.0"** %.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::allocator.0"** %.addr, metadata !3934, metadata !DIExpression()), !dbg !3935
  %1 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp to i8*, !dbg !3936
  %2 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__first to i8*, !dbg !3936
  %3 = call i8* @memcpy(i8* %1, i8* %2, i64 8), !dbg !3936
  %4 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp2 to i8*, !dbg !3937
  %5 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__last to i8*, !dbg !3937
  %6 = call i8* @memcpy(i8* %4, i8* %5, i64 8), !dbg !3937
  %7 = load i64*, i64** %__result.addr, align 8, !dbg !3938
  %coerce.dive3 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp, i32 0, i32 0, !dbg !3939
  %8 = load i64*, i64** %coerce.dive3, align 8, !dbg !3939
  %coerce.dive4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp2, i32 0, i32 0, !dbg !3939
  %9 = load i64*, i64** %coerce.dive4, align 8, !dbg !3939
  %call = call i64* @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEEPlET0_T_SA_S9_(i64* %8, i64* %9, i64* %7), !dbg !3939
  ret i64* %call, !dbg !3940
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #13

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i64* @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEEPlET0_T_SA_S9_(i64* %__first.coerce, i64* %__last.coerce, i64* %__result) #5 comdat !dbg !3941 {
entry:
  %__first = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__last = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__result.addr = alloca i64*, align 8
  %__assignable = alloca i8, align 1
  %agg.tmp = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__first, i32 0, i32 0
  store i64* %__first.coerce, i64** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__last, i32 0, i32 0
  store i64* %__last.coerce, i64** %coerce.dive1, align 8
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator"* %__first, metadata !3945, metadata !DIExpression()), !dbg !3946
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator"* %__last, metadata !3947, metadata !DIExpression()), !dbg !3948
  store i64* %__result, i64** %__result.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %__result.addr, metadata !3949, metadata !DIExpression()), !dbg !3950
  call void @llvm.dbg.declare(metadata i8* %__assignable, metadata !3951, metadata !DIExpression()), !dbg !3952
  store i8 1, i8* %__assignable, align 1, !dbg !3952
  %0 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp to i8*, !dbg !3953
  %1 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__first to i8*, !dbg !3953
  %2 = call i8* @memcpy(i8* %0, i8* %1, i64 8), !dbg !3953
  %3 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp2 to i8*, !dbg !3954
  %4 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__last to i8*, !dbg !3954
  %5 = call i8* @memcpy(i8* %3, i8* %4, i64 8), !dbg !3954
  %6 = load i64*, i64** %__result.addr, align 8, !dbg !3955
  %coerce.dive3 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp, i32 0, i32 0, !dbg !3956
  %7 = load i64*, i64** %coerce.dive3, align 8, !dbg !3956
  %coerce.dive4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp2, i32 0, i32 0, !dbg !3956
  %8 = load i64*, i64** %coerce.dive4, align 8, !dbg !3956
  %call = call i64* @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEEPlEET0_T_SC_SB_(i64* %7, i64* %8, i64* %6), !dbg !3956
  ret i64* %call, !dbg !3957
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i64* @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEEPlEET0_T_SC_SB_(i64* %__first.coerce, i64* %__last.coerce, i64* %__result) #5 comdat align 2 !dbg !3958 {
entry:
  %__first = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__last = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__result.addr = alloca i64*, align 8
  %agg.tmp = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__first, i32 0, i32 0
  store i64* %__first.coerce, i64** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__last, i32 0, i32 0
  store i64* %__last.coerce, i64** %coerce.dive1, align 8
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator"* %__first, metadata !3963, metadata !DIExpression()), !dbg !3964
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator"* %__last, metadata !3965, metadata !DIExpression()), !dbg !3966
  store i64* %__result, i64** %__result.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %__result.addr, metadata !3967, metadata !DIExpression()), !dbg !3968
  %0 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp to i8*, !dbg !3969
  %1 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__first to i8*, !dbg !3969
  %2 = call i8* @memcpy(i8* %0, i8* %1, i64 8), !dbg !3969
  %3 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp2 to i8*, !dbg !3970
  %4 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__last to i8*, !dbg !3970
  %5 = call i8* @memcpy(i8* %3, i8* %4, i64 8), !dbg !3970
  %6 = load i64*, i64** %__result.addr, align 8, !dbg !3971
  %coerce.dive3 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp, i32 0, i32 0, !dbg !3972
  %7 = load i64*, i64** %coerce.dive3, align 8, !dbg !3972
  %coerce.dive4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp2, i32 0, i32 0, !dbg !3972
  %8 = load i64*, i64** %coerce.dive4, align 8, !dbg !3972
  %call = call i64* @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEEPlET0_T_SA_S9_(i64* %7, i64* %8, i64* %6), !dbg !3972
  ret i64* %call, !dbg !3973
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i64* @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEEPlET0_T_SA_S9_(i64* %__first.coerce, i64* %__last.coerce, i64* %__result) #5 comdat !dbg !3974 {
entry:
  %__first = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__last = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__result.addr = alloca i64*, align 8
  %agg.tmp = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp5 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp6 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__first, i32 0, i32 0
  store i64* %__first.coerce, i64** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__last, i32 0, i32 0
  store i64* %__last.coerce, i64** %coerce.dive1, align 8
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator"* %__first, metadata !3979, metadata !DIExpression()), !dbg !3980
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator"* %__last, metadata !3981, metadata !DIExpression()), !dbg !3982
  store i64* %__result, i64** %__result.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %__result.addr, metadata !3983, metadata !DIExpression()), !dbg !3984
  %0 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp2 to i8*, !dbg !3985
  %1 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__first to i8*, !dbg !3985
  %2 = call i8* @memcpy(i8* %0, i8* %1, i64 8), !dbg !3985
  %coerce.dive3 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp2, i32 0, i32 0, !dbg !3986
  %3 = load i64*, i64** %coerce.dive3, align 8, !dbg !3986
  %call = call i64* @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEEET_S8_(i64* %3), !dbg !3986
  %coerce.dive4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp, i32 0, i32 0, !dbg !3986
  store i64* %call, i64** %coerce.dive4, align 8, !dbg !3986
  %4 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp6 to i8*, !dbg !3987
  %5 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__last to i8*, !dbg !3987
  %6 = call i8* @memcpy(i8* %4, i8* %5, i64 8), !dbg !3987
  %coerce.dive7 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp6, i32 0, i32 0, !dbg !3988
  %7 = load i64*, i64** %coerce.dive7, align 8, !dbg !3988
  %call8 = call i64* @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEEET_S8_(i64* %7), !dbg !3988
  %coerce.dive9 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp5, i32 0, i32 0, !dbg !3988
  store i64* %call8, i64** %coerce.dive9, align 8, !dbg !3988
  %8 = load i64*, i64** %__result.addr, align 8, !dbg !3989
  %coerce.dive10 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp, i32 0, i32 0, !dbg !3990
  %9 = load i64*, i64** %coerce.dive10, align 8, !dbg !3990
  %coerce.dive11 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp5, i32 0, i32 0, !dbg !3990
  %10 = load i64*, i64** %coerce.dive11, align 8, !dbg !3990
  %call12 = call i64* @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEEPlET1_T0_SA_S9_(i64* %9, i64* %10, i64* %8), !dbg !3990
  ret i64* %call12, !dbg !3991
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64* @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEEET_S8_(i64* %__it.coerce) #4 comdat !dbg !3992 {
entry:
  %retval = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__it = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__it, i32 0, i32 0
  store i64* %__it.coerce, i64** %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator"* %__it, metadata !3998, metadata !DIExpression()), !dbg !3999
  %0 = bitcast %"class.__gnu_cxx::__normal_iterator"* %retval to i8*, !dbg !4000
  %1 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__it to i8*, !dbg !4000
  %2 = call i8* @memcpy(i8* %0, i8* %1, i64 8), !dbg !4000
  %coerce.dive1 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %retval, i32 0, i32 0, !dbg !4001
  %3 = load i64*, i64** %coerce.dive1, align 8, !dbg !4001
  ret i64* %3, !dbg !4001
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i64* @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEEPlET1_T0_SA_S9_(i64* %__first.coerce, i64* %__last.coerce, i64* %__result) #5 comdat !dbg !4002 {
entry:
  %__first = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__last = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__result.addr = alloca i64*, align 8
  %agg.tmp = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp3 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__first, i32 0, i32 0
  store i64* %__first.coerce, i64** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__last, i32 0, i32 0
  store i64* %__last.coerce, i64** %coerce.dive1, align 8
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator"* %__first, metadata !4005, metadata !DIExpression()), !dbg !4006
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator"* %__last, metadata !4007, metadata !DIExpression()), !dbg !4008
  store i64* %__result, i64** %__result.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %__result.addr, metadata !4009, metadata !DIExpression()), !dbg !4010
  %0 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp to i8*, !dbg !4011
  %1 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__first to i8*, !dbg !4011
  %2 = call i8* @memcpy(i8* %0, i8* %1, i64 8), !dbg !4011
  %coerce.dive2 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp, i32 0, i32 0, !dbg !4012
  %3 = load i64*, i64** %coerce.dive2, align 8, !dbg !4012
  %call = call i64* @_ZSt12__niter_baseIPKlSt6vectorIlSaIlEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE(i64* %3) #6, !dbg !4012
  %4 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp3 to i8*, !dbg !4013
  %5 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__last to i8*, !dbg !4013
  %6 = call i8* @memcpy(i8* %4, i8* %5, i64 8), !dbg !4013
  %coerce.dive4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp3, i32 0, i32 0, !dbg !4014
  %7 = load i64*, i64** %coerce.dive4, align 8, !dbg !4014
  %call5 = call i64* @_ZSt12__niter_baseIPKlSt6vectorIlSaIlEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE(i64* %7) #6, !dbg !4014
  %8 = load i64*, i64** %__result.addr, align 8, !dbg !4015
  %call6 = call i64* @_ZSt12__niter_baseIPlET_S1_(i64* %8) #6, !dbg !4016
  %call7 = call i64* @_ZSt14__copy_move_a1ILb0EPKlPlET1_T0_S4_S3_(i64* %call, i64* %call5, i64* %call6), !dbg !4017
  %call8 = call i64* @_ZSt12__niter_wrapIPlET_RKS1_S1_(i64** nonnull align 8 dereferenceable(8) %__result.addr, i64* %call7), !dbg !4018
  ret i64* %call8, !dbg !4019
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64* @_ZSt12__niter_baseIPKlSt6vectorIlSaIlEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE(i64* %__it.coerce) #4 comdat !dbg !4020 {
entry:
  %__it = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__it, i32 0, i32 0
  store i64* %__it.coerce, i64** %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator"* %__it, metadata !4023, metadata !DIExpression()), !dbg !4024
  %call = call nonnull align 8 dereferenceable(8) i64** @_ZNK9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %__it) #6, !dbg !4025
  %0 = load i64*, i64** %call, align 8, !dbg !4025
  ret i64* %0, !dbg !4026
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64* @_ZSt12__niter_baseIPlET_S1_(i64* %__it) #4 comdat !dbg !4027 {
entry:
  %__it.addr = alloca i64*, align 8
  store i64* %__it, i64** %__it.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %__it.addr, metadata !4030, metadata !DIExpression()), !dbg !4031
  %0 = load i64*, i64** %__it.addr, align 8, !dbg !4032
  ret i64* %0, !dbg !4033
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i64* @_ZSt14__copy_move_a1ILb0EPKlPlET1_T0_S4_S3_(i64* %__first, i64* %__last, i64* %__result) #5 comdat !dbg !4034 {
entry:
  %__first.addr = alloca i64*, align 8
  %__last.addr = alloca i64*, align 8
  %__result.addr = alloca i64*, align 8
  store i64* %__first, i64** %__first.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %__first.addr, metadata !4039, metadata !DIExpression()), !dbg !4040
  store i64* %__last, i64** %__last.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %__last.addr, metadata !4041, metadata !DIExpression()), !dbg !4042
  store i64* %__result, i64** %__result.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %__result.addr, metadata !4043, metadata !DIExpression()), !dbg !4044
  %0 = load i64*, i64** %__first.addr, align 8, !dbg !4045
  %1 = load i64*, i64** %__last.addr, align 8, !dbg !4046
  %2 = load i64*, i64** %__result.addr, align 8, !dbg !4047
  %call = call i64* @_ZSt14__copy_move_a2ILb0EPKlPlET1_T0_S4_S3_(i64* %0, i64* %1, i64* %2), !dbg !4048
  ret i64* %call, !dbg !4049
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64* @_ZSt12__niter_wrapIPlET_RKS1_S1_(i64** nonnull align 8 dereferenceable(8) %0, i64* %__res) #4 comdat !dbg !4050 {
entry:
  %.addr = alloca i64**, align 8
  %__res.addr = alloca i64*, align 8
  store i64** %0, i64*** %.addr, align 8
  call void @llvm.dbg.declare(metadata i64*** %.addr, metadata !4053, metadata !DIExpression()), !dbg !4054
  store i64* %__res, i64** %__res.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %__res.addr, metadata !4055, metadata !DIExpression()), !dbg !4056
  %1 = load i64*, i64** %__res.addr, align 8, !dbg !4057
  ret i64* %1, !dbg !4058
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i64* @_ZSt14__copy_move_a2ILb0EPKlPlET1_T0_S4_S3_(i64* %__first, i64* %__last, i64* %__result) #5 comdat !dbg !4059 {
entry:
  %__first.addr = alloca i64*, align 8
  %__last.addr = alloca i64*, align 8
  %__result.addr = alloca i64*, align 8
  store i64* %__first, i64** %__first.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %__first.addr, metadata !4060, metadata !DIExpression()), !dbg !4061
  store i64* %__last, i64** %__last.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %__last.addr, metadata !4062, metadata !DIExpression()), !dbg !4063
  store i64* %__result, i64** %__result.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %__result.addr, metadata !4064, metadata !DIExpression()), !dbg !4065
  %0 = load i64*, i64** %__first.addr, align 8, !dbg !4066
  %1 = load i64*, i64** %__last.addr, align 8, !dbg !4067
  %2 = load i64*, i64** %__result.addr, align 8, !dbg !4068
  %call = call i64* @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIlEEPT_PKS3_S6_S4_(i64* %0, i64* %1, i64* %2), !dbg !4069
  ret i64* %call, !dbg !4070
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64* @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIlEEPT_PKS3_S6_S4_(i64* %__first, i64* %__last, i64* %__result) #4 comdat align 2 !dbg !4071 {
entry:
  %__first.addr = alloca i64*, align 8
  %__last.addr = alloca i64*, align 8
  %__result.addr = alloca i64*, align 8
  %_Num = alloca i64, align 8
  store i64* %__first, i64** %__first.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %__first.addr, metadata !4077, metadata !DIExpression()), !dbg !4078
  store i64* %__last, i64** %__last.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %__last.addr, metadata !4079, metadata !DIExpression()), !dbg !4080
  store i64* %__result, i64** %__result.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %__result.addr, metadata !4081, metadata !DIExpression()), !dbg !4082
  call void @llvm.dbg.declare(metadata i64* %_Num, metadata !4083, metadata !DIExpression()), !dbg !4085
  %0 = load i64*, i64** %__last.addr, align 8, !dbg !4086
  %1 = load i64*, i64** %__first.addr, align 8, !dbg !4087
  %sub.ptr.lhs.cast = ptrtoint i64* %0 to i64, !dbg !4088
  %sub.ptr.rhs.cast = ptrtoint i64* %1 to i64, !dbg !4088
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !4088
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8, !dbg !4088
  store i64 %sub.ptr.div, i64* %_Num, align 8, !dbg !4085
  %2 = load i64, i64* %_Num, align 8, !dbg !4089
  %tobool = icmp ne i64 %2, 0, !dbg !4089
  br i1 %tobool, label %if.then, label %if.end, !dbg !4091

if.then:                                          ; preds = %entry
  %3 = load i64*, i64** %__result.addr, align 8, !dbg !4092
  %4 = bitcast i64* %3 to i8*, !dbg !4093
  %5 = load i64*, i64** %__first.addr, align 8, !dbg !4094
  %6 = bitcast i64* %5 to i8*, !dbg !4093
  %7 = load i64, i64* %_Num, align 8, !dbg !4095
  %mul = mul i64 8, %7, !dbg !4096
  %8 = call i8* @memmove(i8* %4, i8* %6, i64 %mul), !dbg !4093
  br label %if.end, !dbg !4093

if.end:                                           ; preds = %if.then, %entry
  %9 = load i64*, i64** %__result.addr, align 8, !dbg !4097
  %10 = load i64, i64* %_Num, align 8, !dbg !4098
  %add.ptr = getelementptr inbounds i64, i64* %9, i64 %10, !dbg !4099
  ret i64* %add.ptr, !dbg !4100
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i1 immarg) #13

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIlSaIlEE12_Vector_implC2ERKS0_(%"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %this, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %__a) unnamed_addr #4 comdat align 2 !dbg !4101 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"*, align 8
  %__a.addr = alloca %"class.std::allocator.0"*, align 8
  store %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %this, %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"** %this.addr, metadata !4102, metadata !DIExpression()), !dbg !4103
  store %"class.std::allocator.0"* %__a, %"class.std::allocator.0"** %__a.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::allocator.0"** %__a.addr, metadata !4104, metadata !DIExpression()), !dbg !4105
  %this1 = load %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"*, %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"** %this.addr, align 8
  %0 = bitcast %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %this1 to %"class.std::allocator.0"*, !dbg !4106
  %1 = load %"class.std::allocator.0"*, %"class.std::allocator.0"** %__a.addr, align 8, !dbg !4107
  call void @_ZNSaIlEC2ERKS_(%"class.std::allocator.0"* %0, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %1) #6, !dbg !4108
  %2 = bitcast %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %this1 to %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"*, !dbg !4106
  call void @_ZNSt12_Vector_baseIlSaIlEE17_Vector_impl_dataC2Ev(%"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* %2) #6, !dbg !4109
  ret void, !dbg !4110
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIlSaIlEE17_M_create_storageEm(%"struct.std::_Vector_base"* %this, i64 %__n) #5 comdat align 2 !dbg !4111 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base"*, align 8
  %__n.addr = alloca i64, align 8
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::_Vector_base"** %this.addr, metadata !4112, metadata !DIExpression()), !dbg !4113
  store i64 %__n, i64* %__n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %__n.addr, metadata !4114, metadata !DIExpression()), !dbg !4115
  %this1 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %this.addr, align 8
  %0 = load i64, i64* %__n.addr, align 8, !dbg !4116
  %call = call i64* @_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm(%"struct.std::_Vector_base"* %this1, i64 %0), !dbg !4117
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0, !dbg !4118
  %1 = bitcast %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %_M_impl to %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"*, !dbg !4119
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data", %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* %1, i32 0, i32 0, !dbg !4120
  store i64* %call, i64** %_M_start, align 8, !dbg !4121
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0, !dbg !4122
  %2 = bitcast %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %_M_impl2 to %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"*, !dbg !4123
  %_M_start3 = getelementptr inbounds %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data", %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* %2, i32 0, i32 0, !dbg !4124
  %3 = load i64*, i64** %_M_start3, align 8, !dbg !4124
  %_M_impl4 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0, !dbg !4125
  %4 = bitcast %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %_M_impl4 to %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"*, !dbg !4126
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data", %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* %4, i32 0, i32 1, !dbg !4127
  store i64* %3, i64** %_M_finish, align 8, !dbg !4128
  %_M_impl5 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0, !dbg !4129
  %5 = bitcast %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %_M_impl5 to %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"*, !dbg !4130
  %_M_start6 = getelementptr inbounds %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data", %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* %5, i32 0, i32 0, !dbg !4131
  %6 = load i64*, i64** %_M_start6, align 8, !dbg !4131
  %7 = load i64, i64* %__n.addr, align 8, !dbg !4132
  %add.ptr = getelementptr inbounds i64, i64* %6, i64 %7, !dbg !4133
  %_M_impl7 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0, !dbg !4134
  %8 = bitcast %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %_M_impl7 to %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"*, !dbg !4135
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data", %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* %8, i32 0, i32 2, !dbg !4136
  store i64* %add.ptr, i64** %_M_end_of_storage, align 8, !dbg !4137
  ret void, !dbg !4138
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i64* @_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm(%"struct.std::_Vector_base"* %this, i64 %__n) #5 comdat align 2 !dbg !4139 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base"*, align 8
  %__n.addr = alloca i64, align 8
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::_Vector_base"** %this.addr, metadata !4140, metadata !DIExpression()), !dbg !4141
  store i64 %__n, i64* %__n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %__n.addr, metadata !4142, metadata !DIExpression()), !dbg !4143
  %this1 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %this.addr, align 8
  %0 = load i64, i64* %__n.addr, align 8, !dbg !4144
  %cmp = icmp ne i64 %0, 0, !dbg !4145
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !4144

cond.true:                                        ; preds = %entry
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0, !dbg !4146
  %1 = bitcast %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %_M_impl to %"class.std::allocator.0"*, !dbg !4146
  %2 = load i64, i64* %__n.addr, align 8, !dbg !4147
  %call = call i64* @_ZNSt16allocator_traitsISaIlEE8allocateERS0_m(%"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %1, i64 %2), !dbg !4148
  br label %cond.end, !dbg !4144

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !4144

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64* [ %call, %cond.true ], [ null, %cond.false ], !dbg !4144
  ret i64* %cond, !dbg !4149
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i64* @_ZNSt16allocator_traitsISaIlEE8allocateERS0_m(%"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %__a, i64 %__n) #5 comdat align 2 !dbg !4150 {
entry:
  %__a.addr = alloca %"class.std::allocator.0"*, align 8
  %__n.addr = alloca i64, align 8
  store %"class.std::allocator.0"* %__a, %"class.std::allocator.0"** %__a.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::allocator.0"** %__a.addr, metadata !4151, metadata !DIExpression()), !dbg !4152
  store i64 %__n, i64* %__n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %__n.addr, metadata !4153, metadata !DIExpression()), !dbg !4154
  %0 = load %"class.std::allocator.0"*, %"class.std::allocator.0"** %__a.addr, align 8, !dbg !4155
  %1 = bitcast %"class.std::allocator.0"* %0 to %"class.std::allocator.0"*, !dbg !4155
  %2 = load i64, i64* %__n.addr, align 8, !dbg !4156
  %call = call i64* @_ZN9__gnu_cxx13new_allocatorIlE8allocateEmPKv(%"class.std::allocator.0"* %1, i64 %2, i8* null), !dbg !4157
  ret i64* %call, !dbg !4158
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i64* @_ZN9__gnu_cxx13new_allocatorIlE8allocateEmPKv(%"class.std::allocator.0"* %this, i64 %__n, i8* %0) #5 comdat align 2 !dbg !4159 {
entry:
  %this.addr = alloca %"class.std::allocator.0"*, align 8
  %__n.addr = alloca i64, align 8
  %.addr = alloca i8*, align 8
  store %"class.std::allocator.0"* %this, %"class.std::allocator.0"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::allocator.0"** %this.addr, metadata !4160, metadata !DIExpression()), !dbg !4161
  store i64 %__n, i64* %__n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %__n.addr, metadata !4162, metadata !DIExpression()), !dbg !4163
  store i8* %0, i8** %.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %.addr, metadata !4164, metadata !DIExpression()), !dbg !4165
  %this1 = load %"class.std::allocator.0"*, %"class.std::allocator.0"** %this.addr, align 8
  %1 = load i64, i64* %__n.addr, align 8, !dbg !4166
  %call = call i64 @_ZNK9__gnu_cxx13new_allocatorIlE11_M_max_sizeEv(%"class.std::allocator.0"* %this1) #6, !dbg !4168
  %cmp = icmp ugt i64 %1, %call, !dbg !4169
  br i1 %cmp, label %if.then, label %if.end4, !dbg !4170

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %__n.addr, align 8, !dbg !4171
  %cmp2 = icmp ugt i64 %2, 2305843009213693951, !dbg !4174
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !4175

if.then3:                                         ; preds = %if.then
  call void @_ZSt28__throw_bad_array_new_lengthv() #19, !dbg !4176
  unreachable, !dbg !4176

if.end:                                           ; preds = %if.then
  call void @_ZSt17__throw_bad_allocv() #19, !dbg !4177
  unreachable, !dbg !4177

if.end4:                                          ; preds = %entry
  %3 = load i64, i64* %__n.addr, align 8, !dbg !4178
  %mul = mul i64 %3, 8, !dbg !4179
  %call5 = call noalias nonnull i8* @_Znwm(i64 %mul) #18, !dbg !4180
  %4 = bitcast i8* %call5 to i64*, !dbg !4181
  ret i64* %4, !dbg !4182
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @_ZNK9__gnu_cxx13new_allocatorIlE11_M_max_sizeEv(%"class.std::allocator.0"* %this) #4 comdat align 2 !dbg !4183 {
entry:
  %this.addr = alloca %"class.std::allocator.0"*, align 8
  store %"class.std::allocator.0"* %this, %"class.std::allocator.0"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::allocator.0"** %this.addr, metadata !4184, metadata !DIExpression()), !dbg !4186
  %this1 = load %"class.std::allocator.0"*, %"class.std::allocator.0"** %this.addr, align 8
  ret i64 1152921504606846975, !dbg !4187
}

; Function Attrs: noreturn
declare dso_local void @_ZSt28__throw_bad_array_new_lengthv() #11

; Function Attrs: noreturn
declare dso_local void @_ZSt17__throw_bad_allocv() #11

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSaIlEC2ERKS_(%"class.std::allocator.0"* %this, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %__a) unnamed_addr #4 comdat align 2 !dbg !4188 {
entry:
  %this.addr = alloca %"class.std::allocator.0"*, align 8
  %__a.addr = alloca %"class.std::allocator.0"*, align 8
  store %"class.std::allocator.0"* %this, %"class.std::allocator.0"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::allocator.0"** %this.addr, metadata !4189, metadata !DIExpression()), !dbg !4190
  store %"class.std::allocator.0"* %__a, %"class.std::allocator.0"** %__a.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::allocator.0"** %__a.addr, metadata !4191, metadata !DIExpression()), !dbg !4192
  %this1 = load %"class.std::allocator.0"*, %"class.std::allocator.0"** %this.addr, align 8
  %0 = bitcast %"class.std::allocator.0"* %this1 to %"class.std::allocator.0"*, !dbg !4193
  %1 = load %"class.std::allocator.0"*, %"class.std::allocator.0"** %__a.addr, align 8, !dbg !4194
  %2 = bitcast %"class.std::allocator.0"* %1 to %"class.std::allocator.0"*, !dbg !4194
  call void @_ZN9__gnu_cxx13new_allocatorIlEC2ERKS1_(%"class.std::allocator.0"* %0, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %2) #6, !dbg !4195
  ret void, !dbg !4196
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIlSaIlEE17_Vector_impl_dataC2Ev(%"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* %this) unnamed_addr #4 comdat align 2 !dbg !4197 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"*, align 8
  store %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* %this, %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"** %this.addr, metadata !4198, metadata !DIExpression()), !dbg !4200
  %this1 = load %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"*, %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"** %this.addr, align 8
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data", %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* %this1, i32 0, i32 0, !dbg !4201
  store i64* null, i64** %_M_start, align 8, !dbg !4201
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data", %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* %this1, i32 0, i32 1, !dbg !4202
  store i64* null, i64** %_M_finish, align 8, !dbg !4202
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data", %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* %this1, i32 0, i32 2, !dbg !4203
  store i64* null, i64** %_M_end_of_storage, align 8, !dbg !4203
  ret void, !dbg !4204
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorIlEC2ERKS1_(%"class.std::allocator.0"* %this, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %0) unnamed_addr #4 comdat align 2 !dbg !4205 {
entry:
  %this.addr = alloca %"class.std::allocator.0"*, align 8
  %.addr = alloca %"class.std::allocator.0"*, align 8
  store %"class.std::allocator.0"* %this, %"class.std::allocator.0"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::allocator.0"** %this.addr, metadata !4206, metadata !DIExpression()), !dbg !4207
  store %"class.std::allocator.0"* %0, %"class.std::allocator.0"** %.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::allocator.0"** %.addr, metadata !4208, metadata !DIExpression()), !dbg !4209
  %this1 = load %"class.std::allocator.0"*, %"class.std::allocator.0"** %this.addr, align 8
  ret void, !dbg !4210
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIlEE37select_on_container_copy_constructionERKS0_(%"class.std::allocator.0"* noalias sret align 1 %agg.result, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %__rhs) #4 comdat align 2 !dbg !4211 {
entry:
  %result.ptr = alloca i8*, align 8
  %__rhs.addr = alloca %"class.std::allocator.0"*, align 8
  %0 = bitcast %"class.std::allocator.0"* %agg.result to i8*
  store i8* %0, i8** %result.ptr, align 8
  store %"class.std::allocator.0"* %__rhs, %"class.std::allocator.0"** %__rhs.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::allocator.0"** %__rhs.addr, metadata !4212, metadata !DIExpression()), !dbg !4213
  %1 = load %"class.std::allocator.0"*, %"class.std::allocator.0"** %__rhs.addr, align 8, !dbg !4214
  call void @_ZNSaIlEC2ERKS_(%"class.std::allocator.0"* %agg.result, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %1) #6, !dbg !4214
  ret void, !dbg !4215
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorIlED2Ev(%"class.std::allocator.0"* %this) unnamed_addr #4 comdat align 2 !dbg !4216 {
entry:
  %this.addr = alloca %"class.std::allocator.0"*, align 8
  store %"class.std::allocator.0"* %this, %"class.std::allocator.0"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::allocator.0"** %this.addr, metadata !4217, metadata !DIExpression()), !dbg !4218
  %this1 = load %"class.std::allocator.0"*, %"class.std::allocator.0"** %this.addr, align 8
  ret void, !dbg !4219
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i64 @_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_(i64 %__n, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %__a) #5 comdat align 2 !dbg !4220 {
entry:
  %__n.addr = alloca i64, align 8
  %__a.addr = alloca %"class.std::allocator.0"*, align 8
  %ref.tmp = alloca %"class.std::allocator.0", align 1
  store i64 %__n, i64* %__n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %__n.addr, metadata !4221, metadata !DIExpression()), !dbg !4222
  store %"class.std::allocator.0"* %__a, %"class.std::allocator.0"** %__a.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::allocator.0"** %__a.addr, metadata !4223, metadata !DIExpression()), !dbg !4224
  %0 = load i64, i64* %__n.addr, align 8, !dbg !4225
  %1 = load %"class.std::allocator.0"*, %"class.std::allocator.0"** %__a.addr, align 8, !dbg !4227
  call void @_ZNSaIlEC2ERKS_(%"class.std::allocator.0"* %ref.tmp, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %1) #6, !dbg !4228
  %call = call i64 @_ZNSt6vectorIlSaIlEE11_S_max_sizeERKS0_(%"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %ref.tmp) #6, !dbg !4229
  %cmp = icmp ugt i64 %0, %call, !dbg !4230
  call void @_ZNSaIlED2Ev(%"class.std::allocator.0"* %ref.tmp) #6, !dbg !4225
  br i1 %cmp, label %if.then, label %if.end, !dbg !4231

if.then:                                          ; preds = %entry
  call void @_ZSt20__throw_length_errorPKc(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5.6, i64 0, i64 0)) #19, !dbg !4232
  unreachable, !dbg !4232

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %__n.addr, align 8, !dbg !4233
  ret i64 %2, !dbg !4234
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIlSaIlEE21_M_default_initializeEm(%"class.std::vector"* %this, i64 %__n) #5 comdat align 2 !dbg !4235 {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  %__n.addr = alloca i64, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::vector"** %this.addr, metadata !4236, metadata !DIExpression()), !dbg !4237
  store i64 %__n, i64* %__n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %__n.addr, metadata !4238, metadata !DIExpression()), !dbg !4239
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*, !dbg !4240
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %0, i32 0, i32 0, !dbg !4240
  %1 = bitcast %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %_M_impl to %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"*, !dbg !4241
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data", %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* %1, i32 0, i32 0, !dbg !4242
  %2 = load i64*, i64** %_M_start, align 8, !dbg !4242
  %3 = load i64, i64* %__n.addr, align 8, !dbg !4243
  %4 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*, !dbg !4244
  %call = call nonnull align 1 dereferenceable(1) %"class.std::allocator.0"* @_ZNSt12_Vector_baseIlSaIlEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %4) #6, !dbg !4244
  %call2 = call i64* @_ZSt27__uninitialized_default_n_aIPlmlET_S1_T0_RSaIT1_E(i64* %2, i64 %3, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %call), !dbg !4245
  %5 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*, !dbg !4246
  %_M_impl3 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %5, i32 0, i32 0, !dbg !4246
  %6 = bitcast %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %_M_impl3 to %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"*, !dbg !4247
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data", %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* %6, i32 0, i32 1, !dbg !4248
  store i64* %call2, i64** %_M_finish, align 8, !dbg !4249
  ret void, !dbg !4250
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i64* @_ZSt27__uninitialized_default_n_aIPlmlET_S1_T0_RSaIT1_E(i64* %__first, i64 %__n, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %0) #5 comdat !dbg !4251 {
entry:
  %__first.addr = alloca i64*, align 8
  %__n.addr = alloca i64, align 8
  %.addr = alloca %"class.std::allocator.0"*, align 8
  store i64* %__first, i64** %__first.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %__first.addr, metadata !4256, metadata !DIExpression()), !dbg !4257
  store i64 %__n, i64* %__n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %__n.addr, metadata !4258, metadata !DIExpression()), !dbg !4259
  store %"class.std::allocator.0"* %0, %"class.std::allocator.0"** %.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::allocator.0"** %.addr, metadata !4260, metadata !DIExpression()), !dbg !4261
  %1 = load i64*, i64** %__first.addr, align 8, !dbg !4262
  %2 = load i64, i64* %__n.addr, align 8, !dbg !4263
  %call = call i64* @_ZSt25__uninitialized_default_nIPlmET_S1_T0_(i64* %1, i64 %2), !dbg !4264
  ret i64* %call, !dbg !4265
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i64* @_ZSt25__uninitialized_default_nIPlmET_S1_T0_(i64* %__first, i64 %__n) #5 comdat !dbg !4266 {
entry:
  %__first.addr = alloca i64*, align 8
  %__n.addr = alloca i64, align 8
  %__can_fill = alloca i8, align 1
  store i64* %__first, i64** %__first.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %__first.addr, metadata !4270, metadata !DIExpression()), !dbg !4271
  store i64 %__n, i64* %__n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %__n.addr, metadata !4272, metadata !DIExpression()), !dbg !4273
  call void @llvm.dbg.declare(metadata i8* %__can_fill, metadata !4274, metadata !DIExpression()), !dbg !4275
  store i8 1, i8* %__can_fill, align 1, !dbg !4275
  %0 = load i64*, i64** %__first.addr, align 8, !dbg !4276
  %1 = load i64, i64* %__n.addr, align 8, !dbg !4277
  %call = call i64* @_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPlmEET_S3_T0_(i64* %0, i64 %1), !dbg !4278
  ret i64* %call, !dbg !4279
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i64* @_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPlmEET_S3_T0_(i64* %__first, i64 %__n) #5 comdat align 2 !dbg !4280 {
entry:
  %__first.addr = alloca i64*, align 8
  %__n.addr = alloca i64, align 8
  %__val = alloca i64*, align 8
  store i64* %__first, i64** %__first.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %__first.addr, metadata !4285, metadata !DIExpression()), !dbg !4286
  store i64 %__n, i64* %__n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %__n.addr, metadata !4287, metadata !DIExpression()), !dbg !4288
  %0 = load i64, i64* %__n.addr, align 8, !dbg !4289
  %cmp = icmp ugt i64 %0, 0, !dbg !4291
  br i1 %cmp, label %if.then, label %if.end, !dbg !4292

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64** %__val, metadata !4293, metadata !DIExpression()), !dbg !4297
  %1 = load i64*, i64** %__first.addr, align 8, !dbg !4298
  %call = call i64* @_ZSt11__addressofIlEPT_RS0_(i64* nonnull align 8 dereferenceable(8) %1) #6, !dbg !4299
  store i64* %call, i64** %__val, align 8, !dbg !4297
  %2 = load i64*, i64** %__val, align 8, !dbg !4300
  call void @_ZSt10_ConstructIlJEEvPT_DpOT0_(i64* %2), !dbg !4301
  %3 = load i64*, i64** %__first.addr, align 8, !dbg !4302
  %incdec.ptr = getelementptr inbounds i64, i64* %3, i32 1, !dbg !4302
  store i64* %incdec.ptr, i64** %__first.addr, align 8, !dbg !4302
  %4 = load i64*, i64** %__first.addr, align 8, !dbg !4303
  %5 = load i64, i64* %__n.addr, align 8, !dbg !4304
  %sub = sub i64 %5, 1, !dbg !4305
  %6 = load i64*, i64** %__val, align 8, !dbg !4306
  %call1 = call i64* @_ZSt6fill_nIPlmlET_S1_T0_RKT1_(i64* %4, i64 %sub, i64* nonnull align 8 dereferenceable(8) %6), !dbg !4307
  store i64* %call1, i64** %__first.addr, align 8, !dbg !4308
  br label %if.end, !dbg !4309

if.end:                                           ; preds = %if.then, %entry
  %7 = load i64*, i64** %__first.addr, align 8, !dbg !4310
  ret i64* %7, !dbg !4311
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64* @_ZSt11__addressofIlEPT_RS0_(i64* nonnull align 8 dereferenceable(8) %__r) #4 comdat !dbg !4312 {
entry:
  %__r.addr = alloca i64*, align 8
  store i64* %__r, i64** %__r.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %__r.addr, metadata !4315, metadata !DIExpression()), !dbg !4316
  %0 = load i64*, i64** %__r.addr, align 8, !dbg !4317
  ret i64* %0, !dbg !4318
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZSt10_ConstructIlJEEvPT_DpOT0_(i64* %__p) #4 comdat !dbg !4319 {
entry:
  %__p.addr = alloca i64*, align 8
  store i64* %__p, i64** %__p.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %__p.addr, metadata !4324, metadata !DIExpression()), !dbg !4325
  %0 = load i64*, i64** %__p.addr, align 8, !dbg !4326
  %1 = bitcast i64* %0 to i8*, !dbg !4326
  %2 = bitcast i8* %1 to i64*, !dbg !4327
  store i64 0, i64* %2, align 8, !dbg !4327
  ret void, !dbg !4328
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i64* @_ZSt6fill_nIPlmlET_S1_T0_RKT1_(i64* %__first, i64 %__n, i64* nonnull align 8 dereferenceable(8) %__value) #5 comdat !dbg !4329 {
entry:
  %__first.addr = alloca i64*, align 8
  %__n.addr = alloca i64, align 8
  %__value.addr = alloca i64*, align 8
  %agg.tmp = alloca %"class.std::allocator.0", align 1
  %undef.agg.tmp = alloca %"class.std::allocator.0", align 1
  store i64* %__first, i64** %__first.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %__first.addr, metadata !4333, metadata !DIExpression()), !dbg !4334
  store i64 %__n, i64* %__n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %__n.addr, metadata !4335, metadata !DIExpression()), !dbg !4336
  store i64* %__value, i64** %__value.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %__value.addr, metadata !4337, metadata !DIExpression()), !dbg !4338
  %0 = load i64*, i64** %__first.addr, align 8, !dbg !4339
  %1 = load i64, i64* %__n.addr, align 8, !dbg !4340
  %call = call i64 @_ZSt17__size_to_integerm(i64 %1), !dbg !4341
  %2 = load i64*, i64** %__value.addr, align 8, !dbg !4342
  call void @_ZSt19__iterator_categoryIPlENSt15iterator_traitsIT_E17iterator_categoryERKS2_(i64** nonnull align 8 dereferenceable(8) %__first.addr), !dbg !4343
  %call1 = call i64* @_ZSt10__fill_n_aIPlmlET_S1_T0_RKT1_St26random_access_iterator_tag(i64* %0, i64 %call, i64* nonnull align 8 dereferenceable(8) %2), !dbg !4344
  ret i64* %call1, !dbg !4345
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @_ZSt17__size_to_integerm(i64 %__n) #4 comdat !dbg !4346 {
entry:
  %__n.addr = alloca i64, align 8
  store i64 %__n, i64* %__n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %__n.addr, metadata !4349, metadata !DIExpression()), !dbg !4350
  %0 = load i64, i64* %__n.addr, align 8, !dbg !4351
  ret i64 %0, !dbg !4352
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZSt19__iterator_categoryIPlENSt15iterator_traitsIT_E17iterator_categoryERKS2_(i64** nonnull align 8 dereferenceable(8) %0) #4 comdat !dbg !4353 {
entry:
  %.addr = alloca i64**, align 8
  store i64** %0, i64*** %.addr, align 8
  call void @llvm.dbg.declare(metadata i64*** %.addr, metadata !4359, metadata !DIExpression()), !dbg !4360
  ret void, !dbg !4361
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i64* @_ZSt10__fill_n_aIPlmlET_S1_T0_RKT1_St26random_access_iterator_tag(i64* %__first, i64 %__n, i64* nonnull align 8 dereferenceable(8) %__value) #5 comdat !dbg !4362 {
entry:
  %retval = alloca i64*, align 8
  %0 = alloca %"class.std::allocator.0", align 1
  %__first.addr = alloca i64*, align 8
  %__n.addr = alloca i64, align 8
  %__value.addr = alloca i64*, align 8
  store i64* %__first, i64** %__first.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %__first.addr, metadata !4367, metadata !DIExpression()), !dbg !4368
  store i64 %__n, i64* %__n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %__n.addr, metadata !4369, metadata !DIExpression()), !dbg !4370
  store i64* %__value, i64** %__value.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %__value.addr, metadata !4371, metadata !DIExpression()), !dbg !4372
  call void @llvm.dbg.declare(metadata %"class.std::allocator.0"* %0, metadata !4373, metadata !DIExpression()), !dbg !4374
  %1 = load i64, i64* %__n.addr, align 8, !dbg !4375
  %cmp = icmp ule i64 %1, 0, !dbg !4377
  br i1 %cmp, label %if.then, label %if.end, !dbg !4378

if.then:                                          ; preds = %entry
  %2 = load i64*, i64** %__first.addr, align 8, !dbg !4379
  store i64* %2, i64** %retval, align 8, !dbg !4380
  br label %return, !dbg !4380

if.end:                                           ; preds = %entry
  %3 = load i64*, i64** %__first.addr, align 8, !dbg !4381
  %4 = load i64*, i64** %__first.addr, align 8, !dbg !4382
  %5 = load i64, i64* %__n.addr, align 8, !dbg !4383
  %add.ptr = getelementptr inbounds i64, i64* %4, i64 %5, !dbg !4384
  %6 = load i64*, i64** %__value.addr, align 8, !dbg !4385
  call void @_ZSt8__fill_aIPllEvT_S1_RKT0_(i64* %3, i64* %add.ptr, i64* nonnull align 8 dereferenceable(8) %6), !dbg !4386
  %7 = load i64*, i64** %__first.addr, align 8, !dbg !4387
  %8 = load i64, i64* %__n.addr, align 8, !dbg !4388
  %add.ptr1 = getelementptr inbounds i64, i64* %7, i64 %8, !dbg !4389
  store i64* %add.ptr1, i64** %retval, align 8, !dbg !4390
  br label %return, !dbg !4390

return:                                           ; preds = %if.end, %if.then
  %9 = load i64*, i64** %retval, align 8, !dbg !4391
  ret i64* %9, !dbg !4391
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZSt8__fill_aIPllEvT_S1_RKT0_(i64* %__first, i64* %__last, i64* nonnull align 8 dereferenceable(8) %__value) #5 comdat !dbg !4392 {
entry:
  %__first.addr = alloca i64*, align 8
  %__last.addr = alloca i64*, align 8
  %__value.addr = alloca i64*, align 8
  store i64* %__first, i64** %__first.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %__first.addr, metadata !4397, metadata !DIExpression()), !dbg !4398
  store i64* %__last, i64** %__last.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %__last.addr, metadata !4399, metadata !DIExpression()), !dbg !4400
  store i64* %__value, i64** %__value.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %__value.addr, metadata !4401, metadata !DIExpression()), !dbg !4402
  %0 = load i64*, i64** %__first.addr, align 8, !dbg !4403
  %1 = load i64*, i64** %__last.addr, align 8, !dbg !4404
  %2 = load i64*, i64** %__value.addr, align 8, !dbg !4405
  call void @_ZSt9__fill_a1IPllEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_(i64* %0, i64* %1, i64* nonnull align 8 dereferenceable(8) %2), !dbg !4406
  ret void, !dbg !4407
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZSt9__fill_a1IPllEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_(i64* %__first, i64* %__last, i64* nonnull align 8 dereferenceable(8) %__value) #4 comdat !dbg !4408 {
entry:
  %__first.addr = alloca i64*, align 8
  %__last.addr = alloca i64*, align 8
  %__value.addr = alloca i64*, align 8
  %__tmp = alloca i64, align 8
  store i64* %__first, i64** %__first.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %__first.addr, metadata !4415, metadata !DIExpression()), !dbg !4416
  store i64* %__last, i64** %__last.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %__last.addr, metadata !4417, metadata !DIExpression()), !dbg !4418
  store i64* %__value, i64** %__value.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %__value.addr, metadata !4419, metadata !DIExpression()), !dbg !4420
  call void @llvm.dbg.declare(metadata i64* %__tmp, metadata !4421, metadata !DIExpression()), !dbg !4422
  %0 = load i64*, i64** %__value.addr, align 8, !dbg !4423
  %1 = load i64, i64* %0, align 8, !dbg !4423
  store i64 %1, i64* %__tmp, align 8, !dbg !4422
  br label %for.cond, !dbg !4424

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i64*, i64** %__first.addr, align 8, !dbg !4425
  %3 = load i64*, i64** %__last.addr, align 8, !dbg !4428
  %cmp = icmp ne i64* %2, %3, !dbg !4429
  br i1 %cmp, label %for.body, label %for.end, !dbg !4430

for.body:                                         ; preds = %for.cond
  %4 = load i64, i64* %__tmp, align 8, !dbg !4431
  %5 = load i64*, i64** %__first.addr, align 8, !dbg !4432
  store i64 %4, i64* %5, align 8, !dbg !4433
  br label %for.inc, !dbg !4434

for.inc:                                          ; preds = %for.body
  %6 = load i64*, i64** %__first.addr, align 8, !dbg !4435
  %incdec.ptr = getelementptr inbounds i64, i64* %6, i32 1, !dbg !4435
  store i64* %incdec.ptr, i64** %__first.addr, align 8, !dbg !4435
  br label %for.cond, !dbg !4436, !llvm.loop !4437

for.end:                                          ; preds = %for.cond
  ret void, !dbg !4439
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @_ZNSt6vectorIlSaIlEE11_S_max_sizeERKS0_(%"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %__a) #4 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !4440 {
entry:
  %__a.addr = alloca %"class.std::allocator.0"*, align 8
  %__diffmax = alloca i64, align 8
  %__allocmax = alloca i64, align 8
  store %"class.std::allocator.0"* %__a, %"class.std::allocator.0"** %__a.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::allocator.0"** %__a.addr, metadata !4441, metadata !DIExpression()), !dbg !4442
  call void @llvm.dbg.declare(metadata i64* %__diffmax, metadata !4443, metadata !DIExpression()), !dbg !4445
  store i64 1152921504606846975, i64* %__diffmax, align 8, !dbg !4445
  call void @llvm.dbg.declare(metadata i64* %__allocmax, metadata !4446, metadata !DIExpression()), !dbg !4447
  %0 = load %"class.std::allocator.0"*, %"class.std::allocator.0"** %__a.addr, align 8, !dbg !4448
  %call = call i64 @_ZNSt16allocator_traitsISaIlEE8max_sizeERKS0_(%"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %0) #6, !dbg !4449
  store i64 %call, i64* %__allocmax, align 8, !dbg !4447
  %call1 = invoke nonnull align 8 dereferenceable(8) i64* @_ZSt3minImERKT_S2_S2_(i64* nonnull align 8 dereferenceable(8) %__diffmax, i64* nonnull align 8 dereferenceable(8) %__allocmax)
          to label %invoke.cont unwind label %terminate.lpad, !dbg !4450

invoke.cont:                                      ; preds = %entry
  %1 = load i64, i64* %call1, align 8, !dbg !4450
  ret i64 %1, !dbg !4451

terminate.lpad:                                   ; preds = %entry
  %2 = landingpad { i8*, i32 }
          catch i8* null, !dbg !4450
  %3 = extractvalue { i8*, i32 } %2, 0, !dbg !4450
  call void @__clang_call_terminate(i8* %3) #14, !dbg !4450
  unreachable, !dbg !4450
}

; Function Attrs: noreturn
declare dso_local void @_ZSt20__throw_length_errorPKc(i8*) #11

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @_ZNSt16allocator_traitsISaIlEE8max_sizeERKS0_(%"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %__a) #4 comdat align 2 !dbg !4452 {
entry:
  %__a.addr = alloca %"class.std::allocator.0"*, align 8
  store %"class.std::allocator.0"* %__a, %"class.std::allocator.0"** %__a.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::allocator.0"** %__a.addr, metadata !4453, metadata !DIExpression()), !dbg !4454
  %0 = load %"class.std::allocator.0"*, %"class.std::allocator.0"** %__a.addr, align 8, !dbg !4455
  %1 = bitcast %"class.std::allocator.0"* %0 to %"class.std::allocator.0"*, !dbg !4455
  %call = call i64 @_ZNK9__gnu_cxx13new_allocatorIlE8max_sizeEv(%"class.std::allocator.0"* %1) #6, !dbg !4456
  ret i64 %call, !dbg !4457
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) i64* @_ZSt3minImERKT_S2_S2_(i64* nonnull align 8 dereferenceable(8) %__a, i64* nonnull align 8 dereferenceable(8) %__b) #4 comdat !dbg !4458 {
entry:
  %retval = alloca i64*, align 8
  %__a.addr = alloca i64*, align 8
  %__b.addr = alloca i64*, align 8
  store i64* %__a, i64** %__a.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %__a.addr, metadata !4463, metadata !DIExpression()), !dbg !4464
  store i64* %__b, i64** %__b.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %__b.addr, metadata !4465, metadata !DIExpression()), !dbg !4466
  %0 = load i64*, i64** %__b.addr, align 8, !dbg !4467
  %1 = load i64, i64* %0, align 8, !dbg !4467
  %2 = load i64*, i64** %__a.addr, align 8, !dbg !4469
  %3 = load i64, i64* %2, align 8, !dbg !4469
  %cmp = icmp ult i64 %1, %3, !dbg !4470
  br i1 %cmp, label %if.then, label %if.end, !dbg !4471

if.then:                                          ; preds = %entry
  %4 = load i64*, i64** %__b.addr, align 8, !dbg !4472
  store i64* %4, i64** %retval, align 8, !dbg !4473
  br label %return, !dbg !4473

if.end:                                           ; preds = %entry
  %5 = load i64*, i64** %__a.addr, align 8, !dbg !4474
  store i64* %5, i64** %retval, align 8, !dbg !4475
  br label %return, !dbg !4475

return:                                           ; preds = %if.end, %if.then
  %6 = load i64*, i64** %retval, align 8, !dbg !4476
  ret i64* %6, !dbg !4476
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @_ZNK9__gnu_cxx13new_allocatorIlE8max_sizeEv(%"class.std::allocator.0"* %this) #4 comdat align 2 !dbg !4477 {
entry:
  %this.addr = alloca %"class.std::allocator.0"*, align 8
  store %"class.std::allocator.0"* %this, %"class.std::allocator.0"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::allocator.0"** %this.addr, metadata !4478, metadata !DIExpression()), !dbg !4479
  %this1 = load %"class.std::allocator.0"*, %"class.std::allocator.0"** %this.addr, align 8
  %call = call i64 @_ZNK9__gnu_cxx13new_allocatorIlE11_M_max_sizeEv(%"class.std::allocator.0"* %this1) #6, !dbg !4480
  ret i64 %call, !dbg !4481
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorIlEC2Ev(%"class.std::allocator.0"* %this) unnamed_addr #4 comdat align 2 !dbg !4482 {
entry:
  %this.addr = alloca %"class.std::allocator.0"*, align 8
  store %"class.std::allocator.0"* %this, %"class.std::allocator.0"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::allocator.0"** %this.addr, metadata !4483, metadata !DIExpression()), !dbg !4484
  %this1 = load %"class.std::allocator.0"*, %"class.std::allocator.0"** %this.addr, align 8
  ret void, !dbg !4485
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow12TensorBufferC2EPv(%"class.tensorflow::TensorBuffer"* %this, i8* %data_ptr) unnamed_addr #5 comdat align 2 !dbg !4486 {
entry:
  %this.addr = alloca %"class.tensorflow::TensorBuffer"*, align 8
  %data_ptr.addr = alloca i8*, align 8
  store %"class.tensorflow::TensorBuffer"* %this, %"class.tensorflow::TensorBuffer"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::TensorBuffer"** %this.addr, metadata !4491, metadata !DIExpression()), !dbg !4492
  store i8* %data_ptr, i8** %data_ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data_ptr.addr, metadata !4493, metadata !DIExpression()), !dbg !4494
  %this1 = load %"class.tensorflow::TensorBuffer"*, %"class.tensorflow::TensorBuffer"** %this.addr, align 8
  %0 = bitcast %"class.tensorflow::TensorBuffer"* %this1 to %"class.tensorflow::core::RefCounted"*, !dbg !4495
  call void @_ZN10tensorflow4core10RefCountedC2Ev(%"class.tensorflow::core::RefCounted"* %0), !dbg !4496
  %1 = bitcast %"class.tensorflow::TensorBuffer"* %this1 to i32 (...)***, !dbg !4495
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [10 x i8*] }, { [10 x i8*] }* @_ZTVN10tensorflow12TensorBufferE, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %1, align 8, !dbg !4495
  %data_ = getelementptr inbounds %"class.tensorflow::TensorBuffer", %"class.tensorflow::TensorBuffer"* %this1, i32 0, i32 1, !dbg !4497
  %2 = load i8*, i8** %data_ptr.addr, align 8, !dbg !4498
  store i8* %2, i8** %data_, align 8, !dbg !4497
  ret void, !dbg !4499
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN16TF_ManagedBufferD2Ev(%class.TF_ManagedBuffer* %this) unnamed_addr #4 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !4500 {
entry:
  %this.addr = alloca %class.TF_ManagedBuffer*, align 8
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  store %class.TF_ManagedBuffer* %this, %class.TF_ManagedBuffer** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %class.TF_ManagedBuffer** %this.addr, metadata !4501, metadata !DIExpression()), !dbg !4502
  %this1 = load %class.TF_ManagedBuffer*, %class.TF_ManagedBuffer** %this.addr, align 8
  %0 = bitcast %class.TF_ManagedBuffer* %this1 to i32 (...)***, !dbg !4503
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [10 x i8*] }, { [10 x i8*] }* @_ZTV16TF_ManagedBuffer, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %0, align 8, !dbg !4503
  %deallocator_ = getelementptr inbounds %class.TF_ManagedBuffer, %class.TF_ManagedBuffer* %this1, i32 0, i32 2, !dbg !4504
  %1 = load void (i8*, i64, i8*)*, void (i8*, i64, i8*)** %deallocator_, align 8, !dbg !4504
  %2 = bitcast %class.TF_ManagedBuffer* %this1 to %"class.tensorflow::TensorBuffer"*, !dbg !4506
  %call = invoke i8* @_ZNK10tensorflow12TensorBuffer4dataEv(%"class.tensorflow::TensorBuffer"* %2)
          to label %invoke.cont unwind label %lpad, !dbg !4506

invoke.cont:                                      ; preds = %entry
  %len_ = getelementptr inbounds %class.TF_ManagedBuffer, %class.TF_ManagedBuffer* %this1, i32 0, i32 1, !dbg !4507
  %3 = load i64, i64* %len_, align 8, !dbg !4507
  %deallocator_arg_ = getelementptr inbounds %class.TF_ManagedBuffer, %class.TF_ManagedBuffer* %this1, i32 0, i32 3, !dbg !4508
  %4 = load i8*, i8** %deallocator_arg_, align 8, !dbg !4508
  invoke void %1(i8* %call, i64 %3, i8* %4)
          to label %invoke.cont2 unwind label %lpad, !dbg !4509

invoke.cont2:                                     ; preds = %invoke.cont
  %5 = bitcast %class.TF_ManagedBuffer* %this1 to %"class.tensorflow::TensorBuffer"*, !dbg !4510
  call void @_ZN10tensorflow12TensorBufferD2Ev(%"class.tensorflow::TensorBuffer"* %5) #6, !dbg !4510
  ret void, !dbg !4511

lpad:                                             ; preds = %invoke.cont, %entry
  %6 = landingpad { i8*, i32 }
          catch i8* null, !dbg !4510
  %7 = extractvalue { i8*, i32 } %6, 0, !dbg !4510
  store i8* %7, i8** %exn.slot, align 8, !dbg !4510
  %8 = extractvalue { i8*, i32 } %6, 1, !dbg !4510
  store i32 %8, i32* %ehselector.slot, align 4, !dbg !4510
  %9 = bitcast %class.TF_ManagedBuffer* %this1 to %"class.tensorflow::TensorBuffer"*, !dbg !4510
  call void @_ZN10tensorflow12TensorBufferD2Ev(%"class.tensorflow::TensorBuffer"* %9) #6, !dbg !4510
  br label %terminate.handler, !dbg !4510

terminate.handler:                                ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8, !dbg !4510
  call void @__clang_call_terminate(i8* %exn) #14, !dbg !4510
  unreachable, !dbg !4510
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN16TF_ManagedBufferD0Ev(%class.TF_ManagedBuffer* %this) unnamed_addr #4 comdat align 2 !dbg !4512 {
entry:
  %this.addr = alloca %class.TF_ManagedBuffer*, align 8
  store %class.TF_ManagedBuffer* %this, %class.TF_ManagedBuffer** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %class.TF_ManagedBuffer** %this.addr, metadata !4513, metadata !DIExpression()), !dbg !4514
  %this1 = load %class.TF_ManagedBuffer*, %class.TF_ManagedBuffer** %this.addr, align 8
  call void @_ZN16TF_ManagedBufferD2Ev(%class.TF_ManagedBuffer* %this1) #6, !dbg !4515
  %0 = bitcast %class.TF_ManagedBuffer* %this1 to i8*, !dbg !4515
  call void @_ZdlPv(i8* %0) #17, !dbg !4515
  ret void, !dbg !4516
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @_ZNK16TF_ManagedBuffer4sizeEv(%class.TF_ManagedBuffer* %this) unnamed_addr #4 comdat align 2 !dbg !4517 {
entry:
  %this.addr = alloca %class.TF_ManagedBuffer*, align 8
  store %class.TF_ManagedBuffer* %this, %class.TF_ManagedBuffer** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %class.TF_ManagedBuffer** %this.addr, metadata !4518, metadata !DIExpression()), !dbg !4520
  %this1 = load %class.TF_ManagedBuffer*, %class.TF_ManagedBuffer** %this.addr, align 8
  %len_ = getelementptr inbounds %class.TF_ManagedBuffer, %class.TF_ManagedBuffer* %this1, i32 0, i32 1, !dbg !4521
  %0 = load i64, i64* %len_, align 8, !dbg !4521
  ret i64 %0, !dbg !4522
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %"class.tensorflow::TensorBuffer"* @_ZN16TF_ManagedBuffer11root_bufferEv(%class.TF_ManagedBuffer* %this) unnamed_addr #4 comdat align 2 !dbg !4523 {
entry:
  %this.addr = alloca %class.TF_ManagedBuffer*, align 8
  store %class.TF_ManagedBuffer* %this, %class.TF_ManagedBuffer** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %class.TF_ManagedBuffer** %this.addr, metadata !4524, metadata !DIExpression()), !dbg !4525
  %this1 = load %class.TF_ManagedBuffer*, %class.TF_ManagedBuffer** %this.addr, align 8
  %0 = bitcast %class.TF_ManagedBuffer* %this1 to %"class.tensorflow::TensorBuffer"*, !dbg !4526
  ret %"class.tensorflow::TensorBuffer"* %0, !dbg !4527
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNK16TF_ManagedBuffer25FillAllocationDescriptionEPN10tensorflow21AllocationDescriptionE(%class.TF_ManagedBuffer* %this, %"class.tensorflow::AllocationDescription"* %0) unnamed_addr #4 comdat align 2 !dbg !4528 {
entry:
  %this.addr = alloca %class.TF_ManagedBuffer*, align 8
  %.addr = alloca %"class.tensorflow::AllocationDescription"*, align 8
  store %class.TF_ManagedBuffer* %this, %class.TF_ManagedBuffer** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %class.TF_ManagedBuffer** %this.addr, metadata !4529, metadata !DIExpression()), !dbg !4530
  store %"class.tensorflow::AllocationDescription"* %0, %"class.tensorflow::AllocationDescription"** %.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::AllocationDescription"** %.addr, metadata !4531, metadata !DIExpression()), !dbg !4532
  %this1 = load %class.TF_ManagedBuffer*, %class.TF_ManagedBuffer** %this.addr, align 8
  ret void, !dbg !4533
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local zeroext i1 @_ZNK16TF_ManagedBuffer10OwnsMemoryEv(%class.TF_ManagedBuffer* %this) unnamed_addr #4 comdat align 2 !dbg !4534 {
entry:
  %this.addr = alloca %class.TF_ManagedBuffer*, align 8
  store %class.TF_ManagedBuffer* %this, %class.TF_ManagedBuffer** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %class.TF_ManagedBuffer** %this.addr, metadata !4535, metadata !DIExpression()), !dbg !4536
  %this1 = load %class.TF_ManagedBuffer*, %class.TF_ManagedBuffer** %this.addr, align 8
  %owns_memory_ = getelementptr inbounds %class.TF_ManagedBuffer, %class.TF_ManagedBuffer* %this1, i32 0, i32 4, !dbg !4537
  %0 = load i8, i8* %owns_memory_, align 8, !dbg !4537
  %tobool = trunc i8 %0 to i1, !dbg !4537
  ret i1 %tobool, !dbg !4538
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i32 @_ZNK10tensorflow12TensorBuffer13GetMemoryTypeEv(%"class.tensorflow::TensorBuffer"* %this) unnamed_addr #4 comdat align 2 !dbg !4539 {
entry:
  %this.addr = alloca %"class.tensorflow::TensorBuffer"*, align 8
  store %"class.tensorflow::TensorBuffer"* %this, %"class.tensorflow::TensorBuffer"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::TensorBuffer"** %this.addr, metadata !4545, metadata !DIExpression()), !dbg !4547
  %this1 = load %"class.tensorflow::TensorBuffer"*, %"class.tensorflow::TensorBuffer"** %this.addr, align 8
  ret i32 0, !dbg !4548
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i8* @_ZNK10tensorflow12TensorBuffer4dataEv(%"class.tensorflow::TensorBuffer"* %this) #4 comdat align 2 !dbg !4549 {
entry:
  %this.addr = alloca %"class.tensorflow::TensorBuffer"*, align 8
  store %"class.tensorflow::TensorBuffer"* %this, %"class.tensorflow::TensorBuffer"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::TensorBuffer"** %this.addr, metadata !4553, metadata !DIExpression()), !dbg !4554
  %this1 = load %"class.tensorflow::TensorBuffer"*, %"class.tensorflow::TensorBuffer"** %this.addr, align 8
  %data_ = getelementptr inbounds %"class.tensorflow::TensorBuffer", %"class.tensorflow::TensorBuffer"* %this1, i32 0, i32 1, !dbg !4555
  %0 = load i8*, i8** %data_, align 8, !dbg !4555
  ret i8* %0, !dbg !4556
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow12TensorBufferD2Ev(%"class.tensorflow::TensorBuffer"* %this) unnamed_addr #4 comdat align 2 !dbg !4557 {
entry:
  %this.addr = alloca %"class.tensorflow::TensorBuffer"*, align 8
  store %"class.tensorflow::TensorBuffer"* %this, %"class.tensorflow::TensorBuffer"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::TensorBuffer"** %this.addr, metadata !4561, metadata !DIExpression()), !dbg !4562
  %this1 = load %"class.tensorflow::TensorBuffer"*, %"class.tensorflow::TensorBuffer"** %this.addr, align 8
  %0 = bitcast %"class.tensorflow::TensorBuffer"* %this1 to %"class.tensorflow::core::RefCounted"*, !dbg !4563
  call void @_ZN10tensorflow4core10RefCountedD2Ev(%"class.tensorflow::core::RefCounted"* %0) #6, !dbg !4563
  ret void, !dbg !4565
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow4core10RefCountedD2Ev(%"class.tensorflow::core::RefCounted"* %this) unnamed_addr #4 comdat align 2 !dbg !4566 {
entry:
  %this.addr = alloca %"class.tensorflow::core::RefCounted"*, align 8
  store %"class.tensorflow::core::RefCounted"* %this, %"class.tensorflow::core::RefCounted"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::core::RefCounted"** %this.addr, metadata !4567, metadata !DIExpression()), !dbg !4569
  %this1 = load %"class.tensorflow::core::RefCounted"*, %"class.tensorflow::core::RefCounted"** %this.addr, align 8
  ret void, !dbg !4570
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow4core10RefCountedC2Ev(%"class.tensorflow::core::RefCounted"* %this) unnamed_addr #4 comdat align 2 !dbg !4571 {
entry:
  %this.addr = alloca %"class.tensorflow::core::RefCounted"*, align 8
  store %"class.tensorflow::core::RefCounted"* %this, %"class.tensorflow::core::RefCounted"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::core::RefCounted"** %this.addr, metadata !4572, metadata !DIExpression()), !dbg !4573
  %this1 = load %"class.tensorflow::core::RefCounted"*, %"class.tensorflow::core::RefCounted"** %this.addr, align 8
  %0 = bitcast %"class.tensorflow::core::RefCounted"* %this1 to i32 (...)***, !dbg !4574
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [4 x i8*] }, { [4 x i8*] }* @_ZTVN10tensorflow4core10RefCountedE, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %0, align 8, !dbg !4574
  %ref_count_ = getelementptr inbounds %"class.tensorflow::core::RefCounted", %"class.tensorflow::core::RefCounted"* %this1, i32 0, i32 1, !dbg !4575
  call void @_ZNSt6atomicImEC2Em(%"struct.std::atomic"* %ref_count_, i64 1) #6, !dbg !4575
  ret void, !dbg !4576
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt6atomicImEC2Em(%"struct.std::atomic"* %this, i64 %__i) unnamed_addr #4 comdat align 2 !dbg !4577 {
entry:
  %this.addr = alloca %"struct.std::atomic"*, align 8
  %__i.addr = alloca i64, align 8
  store %"struct.std::atomic"* %this, %"struct.std::atomic"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::atomic"** %this.addr, metadata !4578, metadata !DIExpression()), !dbg !4580
  store i64 %__i, i64* %__i.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %__i.addr, metadata !4581, metadata !DIExpression()), !dbg !4582
  %this1 = load %"struct.std::atomic"*, %"struct.std::atomic"** %this.addr, align 8
  %0 = bitcast %"struct.std::atomic"* %this1 to %"struct.std::__atomic_base"*, !dbg !4583
  %1 = load i64, i64* %__i.addr, align 8, !dbg !4584
  call void @_ZNSt13__atomic_baseImEC2Em(%"struct.std::__atomic_base"* %0, i64 %1) #6, !dbg !4585
  ret void, !dbg !4586
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt13__atomic_baseImEC2Em(%"struct.std::__atomic_base"* %this, i64 %__i) unnamed_addr #4 comdat align 2 !dbg !4587 {
entry:
  %this.addr = alloca %"struct.std::__atomic_base"*, align 8
  %__i.addr = alloca i64, align 8
  store %"struct.std::__atomic_base"* %this, %"struct.std::__atomic_base"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::__atomic_base"** %this.addr, metadata !4588, metadata !DIExpression()), !dbg !4589
  store i64 %__i, i64* %__i.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %__i.addr, metadata !4590, metadata !DIExpression()), !dbg !4591
  %this1 = load %"struct.std::__atomic_base"*, %"struct.std::__atomic_base"** %this.addr, align 8
  %_M_i = getelementptr inbounds %"struct.std::__atomic_base", %"struct.std::__atomic_base"* %this1, i32 0, i32 0, !dbg !4592
  %0 = load i64, i64* %__i.addr, align 8, !dbg !4593
  store i64 %0, i64* %_M_i, align 8, !dbg !4592
  ret void, !dbg !4594
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow4core10RefCountedD0Ev(%"class.tensorflow::core::RefCounted"* %this) unnamed_addr #4 comdat align 2 !dbg !4595 {
entry:
  %this.addr = alloca %"class.tensorflow::core::RefCounted"*, align 8
  store %"class.tensorflow::core::RefCounted"* %this, %"class.tensorflow::core::RefCounted"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::core::RefCounted"** %this.addr, metadata !4596, metadata !DIExpression()), !dbg !4597
  %this1 = load %"class.tensorflow::core::RefCounted"*, %"class.tensorflow::core::RefCounted"** %this.addr, align 8
  call void @_ZN10tensorflow4core10RefCountedD2Ev(%"class.tensorflow::core::RefCounted"* %this1) #6, !dbg !4598
  %0 = bitcast %"class.tensorflow::core::RefCounted"* %this1 to i8*, !dbg !4598
  call void @_ZdlPv(i8* %0) #17, !dbg !4598
  ret void, !dbg !4598
}

; Function Attrs: noinline optnone uwtable
define dso_local %struct.TF_Tensor* @TF_NewTensor(i32 %dtype, i64* %dims, i32 %num_dims, i8* %data, i64 %len, void (i8*, i64, i8*)* %deallocator, i8* %deallocator_arg) #5 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !4599 {
entry:
  %dtype.addr = alloca i32, align 4
  %dims.addr = alloca i64*, align 8
  %num_dims.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %deallocator.addr = alloca void (i8*, i64, i8*)*, align 8
  %deallocator_arg.addr = alloca i8*, align 8
  %buf = alloca %class.TF_ManagedBuffer*, align 8
  %ref.tmp = alloca i32, align 4
  %ref.tmp3 = alloca i32, align 4
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  store i32 %dtype, i32* %dtype.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %dtype.addr, metadata !4602, metadata !DIExpression()), !dbg !4603
  store i64* %dims, i64** %dims.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %dims.addr, metadata !4604, metadata !DIExpression()), !dbg !4605
  store i32 %num_dims, i32* %num_dims.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %num_dims.addr, metadata !4606, metadata !DIExpression()), !dbg !4607
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !4608, metadata !DIExpression()), !dbg !4609
  store i64 %len, i64* %len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !4610, metadata !DIExpression()), !dbg !4611
  store void (i8*, i64, i8*)* %deallocator, void (i8*, i64, i8*)** %deallocator.addr, align 8
  call void @llvm.dbg.declare(metadata void (i8*, i64, i8*)** %deallocator.addr, metadata !4612, metadata !DIExpression()), !dbg !4613
  store i8* %deallocator_arg, i8** %deallocator_arg.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %deallocator_arg.addr, metadata !4614, metadata !DIExpression()), !dbg !4615
  call void @llvm.dbg.declare(metadata %class.TF_ManagedBuffer** %buf, metadata !4616, metadata !DIExpression()), !dbg !4617
  store %class.TF_ManagedBuffer* null, %class.TF_ManagedBuffer** %buf, align 8, !dbg !4617
  %0 = load i32, i32* %dtype.addr, align 4, !dbg !4618
  %cmp = icmp ne i32 %0, 7, !dbg !4620
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !4621

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %dtype.addr, align 4, !dbg !4622
  %cmp1 = icmp ne i32 %1, 20, !dbg !4623
  br i1 %cmp1, label %land.lhs.true2, label %land.end, !dbg !4624

land.lhs.true2:                                   ; preds = %land.lhs.true
  %2 = load i32, i32* %dtype.addr, align 4, !dbg !4625
  %call = call zeroext i1 @_ZN10tensorflow20DataTypeCanUseMemcpyE8DataType(i32 %2), !dbg !4626
  br i1 %call, label %land.rhs, label %land.end, !dbg !4627

land.rhs:                                         ; preds = %land.lhs.true2
  %3 = load i8*, i8** %data.addr, align 8, !dbg !4628
  %4 = ptrtoint i8* %3 to i64, !dbg !4629
  store i32 1, i32* %ref.tmp, align 4, !dbg !4630
  store i32 64, i32* %ref.tmp3, align 4, !dbg !4631
  %call4 = call nonnull align 4 dereferenceable(4) i32* @_ZSt3maxIiERKT_S2_S2_(i32* nonnull align 4 dereferenceable(4) %ref.tmp, i32* nonnull align 4 dereferenceable(4) %ref.tmp3), !dbg !4632
  %5 = load i32, i32* %call4, align 4, !dbg !4632
  %conv = sext i32 %5 to i64, !dbg !4632
  call void @klee_div_zero_check(i64 %conv), !dbg !4633
  %rem = srem i64 %4, %conv, !dbg !4633, !klee.check.div !4634
  %cmp5 = icmp ne i64 %rem, 0, !dbg !4635
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true2, %land.lhs.true, %entry
  %6 = phi i1 [ false, %land.lhs.true2 ], [ false, %land.lhs.true ], [ false, %entry ], [ %cmp5, %land.rhs ], !dbg !4636
  br i1 %6, label %if.then, label %if.else, !dbg !4637

if.then:                                          ; preds = %land.end
  %call6 = call noalias nonnull i8* @_Znwm(i64 56) #16, !dbg !4638, !heapallocsite !3028
  %7 = bitcast i8* %call6 to %class.TF_ManagedBuffer*, !dbg !4638
  %8 = load i64, i64* %len.addr, align 8, !dbg !4640
  %call7 = invoke i8* @_ZN10tensorflow15allocate_tensorEPKcm(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1.9, i64 0, i64 0), i64 %8)
          to label %invoke.cont unwind label %lpad, !dbg !4641

invoke.cont:                                      ; preds = %if.then
  %9 = load i64, i64* %len.addr, align 8, !dbg !4642
  invoke void @_ZN16TF_ManagedBufferC2EPvmPFvS0_mS0_ES0_b(%class.TF_ManagedBuffer* %7, i8* %call7, i64 %9, void (i8*, i64, i8*)* @_ZN10tensorflow17deallocate_bufferEPvmS0_, i8* null, i1 zeroext true)
          to label %invoke.cont8 unwind label %lpad, !dbg !4643

invoke.cont8:                                     ; preds = %invoke.cont
  store %class.TF_ManagedBuffer* %7, %class.TF_ManagedBuffer** %buf, align 8, !dbg !4644
  %10 = load %class.TF_ManagedBuffer*, %class.TF_ManagedBuffer** %buf, align 8, !dbg !4645
  %11 = bitcast %class.TF_ManagedBuffer* %10 to %"class.tensorflow::TensorBuffer"*, !dbg !4646
  %call9 = call i8* @_ZNK10tensorflow12TensorBuffer4dataEv(%"class.tensorflow::TensorBuffer"* %11), !dbg !4646
  %12 = load i8*, i8** %data.addr, align 8, !dbg !4647
  %13 = load i64, i64* %len.addr, align 8, !dbg !4648
  %14 = call i8* @memcpy(i8* %call9, i8* %12, i64 %13), !dbg !4649
  %15 = load void (i8*, i64, i8*)*, void (i8*, i64, i8*)** %deallocator.addr, align 8, !dbg !4650
  %16 = load i8*, i8** %data.addr, align 8, !dbg !4651
  %17 = load i64, i64* %len.addr, align 8, !dbg !4652
  %18 = load i8*, i8** %deallocator_arg.addr, align 8, !dbg !4653
  call void %15(i8* %16, i64 %17, i8* %18), !dbg !4650
  br label %if.end, !dbg !4654

lpad:                                             ; preds = %invoke.cont, %if.then
  %19 = landingpad { i8*, i32 }
          cleanup, !dbg !4655
  %20 = extractvalue { i8*, i32 } %19, 0, !dbg !4655
  store i8* %20, i8** %exn.slot, align 8, !dbg !4655
  %21 = extractvalue { i8*, i32 } %19, 1, !dbg !4655
  store i32 %21, i32* %ehselector.slot, align 4, !dbg !4655
  call void @_ZdlPv(i8* %call6) #17, !dbg !4638
  br label %eh.resume, !dbg !4638

if.else:                                          ; preds = %land.end
  %call10 = call noalias nonnull i8* @_Znwm(i64 56) #16, !dbg !4656, !heapallocsite !3028
  %22 = bitcast i8* %call10 to %class.TF_ManagedBuffer*, !dbg !4656
  %23 = load i8*, i8** %data.addr, align 8, !dbg !4658
  %24 = load i64, i64* %len.addr, align 8, !dbg !4659
  %25 = load void (i8*, i64, i8*)*, void (i8*, i64, i8*)** %deallocator.addr, align 8, !dbg !4660
  %26 = load i8*, i8** %deallocator_arg.addr, align 8, !dbg !4661
  invoke void @_ZN16TF_ManagedBufferC2EPvmPFvS0_mS0_ES0_b(%class.TF_ManagedBuffer* %22, i8* %23, i64 %24, void (i8*, i64, i8*)* %25, i8* %26, i1 zeroext false)
          to label %invoke.cont12 unwind label %lpad11, !dbg !4662

invoke.cont12:                                    ; preds = %if.else
  store %class.TF_ManagedBuffer* %22, %class.TF_ManagedBuffer** %buf, align 8, !dbg !4663
  br label %if.end

lpad11:                                           ; preds = %if.else
  %27 = landingpad { i8*, i32 }
          cleanup, !dbg !4664
  %28 = extractvalue { i8*, i32 } %27, 0, !dbg !4664
  store i8* %28, i8** %exn.slot, align 8, !dbg !4664
  %29 = extractvalue { i8*, i32 } %27, 1, !dbg !4664
  store i32 %29, i32* %ehselector.slot, align 4, !dbg !4664
  call void @_ZdlPv(i8* %call10) #17, !dbg !4656
  br label %eh.resume, !dbg !4656

if.end:                                           ; preds = %invoke.cont12, %invoke.cont8
  %30 = load %class.TF_ManagedBuffer*, %class.TF_ManagedBuffer** %buf, align 8, !dbg !4665
  %31 = load i32, i32* %dtype.addr, align 4, !dbg !4666
  %32 = load i64*, i64** %dims.addr, align 8, !dbg !4667
  %33 = load i32, i32* %num_dims.addr, align 4, !dbg !4668
  %34 = load i64, i64* %len.addr, align 8, !dbg !4669
  %call13 = call %struct.TF_Tensor* @_ZN12_GLOBAL__N_112CreateTensorEP16TF_ManagedBuffer11TF_DataTypePKlim(%class.TF_ManagedBuffer* %30, i32 %31, i64* %32, i32 %33, i64 %34), !dbg !4670
  ret %struct.TF_Tensor* %call13, !dbg !4671

eh.resume:                                        ; preds = %lpad11, %lpad
  %exn = load i8*, i8** %exn.slot, align 8, !dbg !4638
  %sel = load i32, i32* %ehselector.slot, align 4, !dbg !4638
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0, !dbg !4638
  %lpad.val14 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1, !dbg !4638
  resume { i8*, i32 } %lpad.val14, !dbg !4638
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local zeroext i1 @_ZN10tensorflow20DataTypeCanUseMemcpyE8DataType(i32 %dt) #4 comdat !dbg !4672 {
entry:
  %retval = alloca i1, align 1
  %dt.addr = alloca i32, align 4
  store i32 %dt, i32* %dt.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %dt.addr, metadata !4675, metadata !DIExpression()), !dbg !4676
  %0 = load i32, i32* %dt.addr, align 4, !dbg !4677
  switch i32 %0, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 22, label %sw.bb
    i32 4, label %sw.bb
    i32 17, label %sw.bb
    i32 5, label %sw.bb
    i32 6, label %sw.bb
    i32 8, label %sw.bb
    i32 18, label %sw.bb
    i32 9, label %sw.bb
    i32 23, label %sw.bb
    i32 10, label %sw.bb
    i32 11, label %sw.bb
    i32 12, label %sw.bb
    i32 15, label %sw.bb
    i32 16, label %sw.bb
    i32 13, label %sw.bb
    i32 14, label %sw.bb
    i32 19, label %sw.bb
    i32 24, label %sw.bb
    i32 25, label %sw.bb
    i32 26, label %sw.bb
    i32 27, label %sw.bb
    i32 28, label %sw.bb
    i32 29, label %sw.bb
    i32 30, label %sw.bb
    i32 31, label %sw.bb
    i32 32, label %sw.bb
  ], !dbg !4678

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry
  store i1 true, i1* %retval, align 1, !dbg !4679
  br label %return, !dbg !4679

sw.default:                                       ; preds = %entry
  store i1 false, i1* %retval, align 1, !dbg !4681
  br label %return, !dbg !4681

return:                                           ; preds = %sw.default, %sw.bb
  %1 = load i1, i1* %retval, align 1, !dbg !4682
  ret i1 %1, !dbg !4682
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 4 dereferenceable(4) i32* @_ZSt3maxIiERKT_S2_S2_(i32* nonnull align 4 dereferenceable(4) %__a, i32* nonnull align 4 dereferenceable(4) %__b) #4 comdat !dbg !4683 {
entry:
  %retval = alloca i32*, align 8
  %__a.addr = alloca i32*, align 8
  %__b.addr = alloca i32*, align 8
  store i32* %__a, i32** %__a.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %__a.addr, metadata !4689, metadata !DIExpression()), !dbg !4690
  store i32* %__b, i32** %__b.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %__b.addr, metadata !4691, metadata !DIExpression()), !dbg !4692
  %0 = load i32*, i32** %__a.addr, align 8, !dbg !4693
  %1 = load i32, i32* %0, align 4, !dbg !4693
  %2 = load i32*, i32** %__b.addr, align 8, !dbg !4695
  %3 = load i32, i32* %2, align 4, !dbg !4695
  %cmp = icmp slt i32 %1, %3, !dbg !4696
  br i1 %cmp, label %if.then, label %if.end, !dbg !4697

if.then:                                          ; preds = %entry
  %4 = load i32*, i32** %__b.addr, align 8, !dbg !4698
  store i32* %4, i32** %retval, align 8, !dbg !4699
  br label %return, !dbg !4699

if.end:                                           ; preds = %entry
  %5 = load i32*, i32** %__a.addr, align 8, !dbg !4700
  store i32* %5, i32** %retval, align 8, !dbg !4701
  br label %return, !dbg !4701

return:                                           ; preds = %if.end, %if.then
  %6 = load i32*, i32** %retval, align 8, !dbg !4702
  ret i32* %6, !dbg !4702
}

; Function Attrs: noinline optnone uwtable
define dso_local %struct.TF_Tensor* @TF_TensorMaybeMove(%struct.TF_Tensor* %t) #5 !dbg !4703 {
entry:
  %t.addr = alloca %struct.TF_Tensor*, align 8
  store %struct.TF_Tensor* %t, %struct.TF_Tensor** %t.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.TF_Tensor** %t.addr, metadata !4706, metadata !DIExpression()), !dbg !4707
  %0 = load %struct.TF_Tensor*, %struct.TF_Tensor** %t.addr, align 8, !dbg !4708
  %tensor = getelementptr inbounds %struct.TF_Tensor, %struct.TF_Tensor* %0, i32 0, i32 0, !dbg !4709
  %1 = load %"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"** %tensor, align 8, !dbg !4709
  %2 = bitcast %"class.tensorflow::AbstractTensorInterface"* %1 to i1 (%"class.tensorflow::AbstractTensorInterface"*)***, !dbg !4710
  %vtable = load i1 (%"class.tensorflow::AbstractTensorInterface"*)**, i1 (%"class.tensorflow::AbstractTensorInterface"*)*** %2, align 8, !dbg !4710
  %vfn = getelementptr inbounds i1 (%"class.tensorflow::AbstractTensorInterface"*)*, i1 (%"class.tensorflow::AbstractTensorInterface"*)** %vtable, i64 8, !dbg !4710
  %3 = load i1 (%"class.tensorflow::AbstractTensorInterface"*)*, i1 (%"class.tensorflow::AbstractTensorInterface"*)** %vfn, align 8, !dbg !4710
  %call = call zeroext i1 %3(%"class.tensorflow::AbstractTensorInterface"* %1), !dbg !4710
  br i1 %call, label %cond.true, label %cond.false, !dbg !4708

cond.true:                                        ; preds = %entry
  %4 = load %struct.TF_Tensor*, %struct.TF_Tensor** %t.addr, align 8, !dbg !4711
  br label %cond.end, !dbg !4708

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !4708

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.TF_Tensor* [ %4, %cond.true ], [ null, %cond.false ], !dbg !4708
  ret %struct.TF_Tensor* %cond, !dbg !4712
}

; Function Attrs: noinline optnone uwtable
define dso_local void @TF_DeleteTensor(%struct.TF_Tensor* %t) #5 !dbg !4713 {
entry:
  %t.addr = alloca %struct.TF_Tensor*, align 8
  store %struct.TF_Tensor* %t, %struct.TF_Tensor** %t.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.TF_Tensor** %t.addr, metadata !4716, metadata !DIExpression()), !dbg !4717
  %0 = load %struct.TF_Tensor*, %struct.TF_Tensor** %t.addr, align 8, !dbg !4718
  %cmp = icmp eq %struct.TF_Tensor* %0, null, !dbg !4720
  br i1 %cmp, label %if.then, label %if.end, !dbg !4721

if.then:                                          ; preds = %entry
  br label %delete.end, !dbg !4722

if.end:                                           ; preds = %entry
  %1 = load %struct.TF_Tensor*, %struct.TF_Tensor** %t.addr, align 8, !dbg !4724
  %tensor = getelementptr inbounds %struct.TF_Tensor, %struct.TF_Tensor* %1, i32 0, i32 0, !dbg !4726
  %2 = load %"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"** %tensor, align 8, !dbg !4726
  %tobool = icmp ne %"class.tensorflow::AbstractTensorInterface"* %2, null, !dbg !4724
  br i1 %tobool, label %if.then1, label %if.end3, !dbg !4727

if.then1:                                         ; preds = %if.end
  %3 = load %struct.TF_Tensor*, %struct.TF_Tensor** %t.addr, align 8, !dbg !4728
  %tensor2 = getelementptr inbounds %struct.TF_Tensor, %struct.TF_Tensor* %3, i32 0, i32 0, !dbg !4730
  %4 = load %"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"** %tensor2, align 8, !dbg !4730
  %5 = bitcast %"class.tensorflow::AbstractTensorInterface"* %4 to void (%"class.tensorflow::AbstractTensorInterface"*)***, !dbg !4731
  %vtable = load void (%"class.tensorflow::AbstractTensorInterface"*)**, void (%"class.tensorflow::AbstractTensorInterface"*)*** %5, align 8, !dbg !4731
  %vfn = getelementptr inbounds void (%"class.tensorflow::AbstractTensorInterface"*)*, void (%"class.tensorflow::AbstractTensorInterface"*)** %vtable, i64 0, !dbg !4731
  %6 = load void (%"class.tensorflow::AbstractTensorInterface"*)*, void (%"class.tensorflow::AbstractTensorInterface"*)** %vfn, align 8, !dbg !4731
  call void %6(%"class.tensorflow::AbstractTensorInterface"* %4), !dbg !4731
  br label %if.end3, !dbg !4732

if.end3:                                          ; preds = %if.then1, %if.end
  %7 = load %struct.TF_Tensor*, %struct.TF_Tensor** %t.addr, align 8, !dbg !4733
  %isnull = icmp eq %struct.TF_Tensor* %7, null, !dbg !4734
  br i1 %isnull, label %delete.end, label %delete.notnull, !dbg !4734

delete.notnull:                                   ; preds = %if.end3
  %8 = bitcast %struct.TF_Tensor* %7 to i8*, !dbg !4734
  call void @_ZdlPv(i8* %8) #17, !dbg !4734
  br label %delete.end, !dbg !4734

delete.end:                                       ; preds = %if.then, %delete.notnull, %if.end3
  ret void, !dbg !4735
}

; Function Attrs: noinline optnone uwtable
define dso_local i32 @TF_TensorType(%struct.TF_Tensor* %t) #5 !dbg !4736 {
entry:
  %t.addr = alloca %struct.TF_Tensor*, align 8
  store %struct.TF_Tensor* %t, %struct.TF_Tensor** %t.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.TF_Tensor** %t.addr, metadata !4741, metadata !DIExpression()), !dbg !4742
  %0 = load %struct.TF_Tensor*, %struct.TF_Tensor** %t.addr, align 8, !dbg !4743
  %tensor = getelementptr inbounds %struct.TF_Tensor, %struct.TF_Tensor* %0, i32 0, i32 0, !dbg !4744
  %1 = load %"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"** %tensor, align 8, !dbg !4744
  %2 = bitcast %"class.tensorflow::AbstractTensorInterface"* %1 to i32 (%"class.tensorflow::AbstractTensorInterface"*)***, !dbg !4745
  %vtable = load i32 (%"class.tensorflow::AbstractTensorInterface"*)**, i32 (%"class.tensorflow::AbstractTensorInterface"*)*** %2, align 8, !dbg !4745
  %vfn = getelementptr inbounds i32 (%"class.tensorflow::AbstractTensorInterface"*)*, i32 (%"class.tensorflow::AbstractTensorInterface"*)** %vtable, i64 1, !dbg !4745
  %3 = load i32 (%"class.tensorflow::AbstractTensorInterface"*)*, i32 (%"class.tensorflow::AbstractTensorInterface"*)** %vfn, align 8, !dbg !4745
  %call = call i32 %3(%"class.tensorflow::AbstractTensorInterface"* %1), !dbg !4745
  ret i32 %call, !dbg !4746
}

; Function Attrs: noinline optnone uwtable
define dso_local i32 @TF_NumDims(%struct.TF_Tensor* %t) #5 !dbg !4747 {
entry:
  %t.addr = alloca %struct.TF_Tensor*, align 8
  store %struct.TF_Tensor* %t, %struct.TF_Tensor** %t.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.TF_Tensor** %t.addr, metadata !4750, metadata !DIExpression()), !dbg !4751
  %0 = load %struct.TF_Tensor*, %struct.TF_Tensor** %t.addr, align 8, !dbg !4752
  %tensor = getelementptr inbounds %struct.TF_Tensor, %struct.TF_Tensor* %0, i32 0, i32 0, !dbg !4753
  %1 = load %"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"** %tensor, align 8, !dbg !4753
  %2 = bitcast %"class.tensorflow::AbstractTensorInterface"* %1 to i32 (%"class.tensorflow::AbstractTensorInterface"*)***, !dbg !4754
  %vtable = load i32 (%"class.tensorflow::AbstractTensorInterface"*)**, i32 (%"class.tensorflow::AbstractTensorInterface"*)*** %2, align 8, !dbg !4754
  %vfn = getelementptr inbounds i32 (%"class.tensorflow::AbstractTensorInterface"*)*, i32 (%"class.tensorflow::AbstractTensorInterface"*)** %vtable, i64 2, !dbg !4754
  %3 = load i32 (%"class.tensorflow::AbstractTensorInterface"*)*, i32 (%"class.tensorflow::AbstractTensorInterface"*)** %vfn, align 8, !dbg !4754
  %call = call i32 %3(%"class.tensorflow::AbstractTensorInterface"* %1), !dbg !4754
  ret i32 %call, !dbg !4755
}

; Function Attrs: noinline optnone uwtable
define dso_local i64 @TF_Dim(%struct.TF_Tensor* %t, i32 %dim_index) #5 !dbg !4756 {
entry:
  %t.addr = alloca %struct.TF_Tensor*, align 8
  %dim_index.addr = alloca i32, align 4
  store %struct.TF_Tensor* %t, %struct.TF_Tensor** %t.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.TF_Tensor** %t.addr, metadata !4759, metadata !DIExpression()), !dbg !4760
  store i32 %dim_index, i32* %dim_index.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %dim_index.addr, metadata !4761, metadata !DIExpression()), !dbg !4762
  %0 = load %struct.TF_Tensor*, %struct.TF_Tensor** %t.addr, align 8, !dbg !4763
  %tensor = getelementptr inbounds %struct.TF_Tensor, %struct.TF_Tensor* %0, i32 0, i32 0, !dbg !4764
  %1 = load %"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"** %tensor, align 8, !dbg !4764
  %2 = load i32, i32* %dim_index.addr, align 4, !dbg !4765
  %3 = bitcast %"class.tensorflow::AbstractTensorInterface"* %1 to i64 (%"class.tensorflow::AbstractTensorInterface"*, i32)***, !dbg !4766
  %vtable = load i64 (%"class.tensorflow::AbstractTensorInterface"*, i32)**, i64 (%"class.tensorflow::AbstractTensorInterface"*, i32)*** %3, align 8, !dbg !4766
  %vfn = getelementptr inbounds i64 (%"class.tensorflow::AbstractTensorInterface"*, i32)*, i64 (%"class.tensorflow::AbstractTensorInterface"*, i32)** %vtable, i64 3, !dbg !4766
  %4 = load i64 (%"class.tensorflow::AbstractTensorInterface"*, i32)*, i64 (%"class.tensorflow::AbstractTensorInterface"*, i32)** %vfn, align 8, !dbg !4766
  %call = call i64 %4(%"class.tensorflow::AbstractTensorInterface"* %1, i32 %2), !dbg !4766
  ret i64 %call, !dbg !4767
}

; Function Attrs: noinline optnone uwtable
define dso_local i64 @TF_TensorByteSize(%struct.TF_Tensor* %t) #5 !dbg !4768 {
entry:
  %t.addr = alloca %struct.TF_Tensor*, align 8
  store %struct.TF_Tensor* %t, %struct.TF_Tensor** %t.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.TF_Tensor** %t.addr, metadata !4771, metadata !DIExpression()), !dbg !4772
  %0 = load %struct.TF_Tensor*, %struct.TF_Tensor** %t.addr, align 8, !dbg !4773
  %tensor = getelementptr inbounds %struct.TF_Tensor, %struct.TF_Tensor* %0, i32 0, i32 0, !dbg !4774
  %1 = load %"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"** %tensor, align 8, !dbg !4774
  %2 = bitcast %"class.tensorflow::AbstractTensorInterface"* %1 to i64 (%"class.tensorflow::AbstractTensorInterface"*)***, !dbg !4775
  %vtable = load i64 (%"class.tensorflow::AbstractTensorInterface"*)**, i64 (%"class.tensorflow::AbstractTensorInterface"*)*** %2, align 8, !dbg !4775
  %vfn = getelementptr inbounds i64 (%"class.tensorflow::AbstractTensorInterface"*)*, i64 (%"class.tensorflow::AbstractTensorInterface"*)** %vtable, i64 5, !dbg !4775
  %3 = load i64 (%"class.tensorflow::AbstractTensorInterface"*)*, i64 (%"class.tensorflow::AbstractTensorInterface"*)** %vfn, align 8, !dbg !4775
  %call = call i64 %3(%"class.tensorflow::AbstractTensorInterface"* %1), !dbg !4775
  ret i64 %call, !dbg !4776
}

; Function Attrs: noinline optnone uwtable
define dso_local i8* @TF_TensorData(%struct.TF_Tensor* %t) #5 !dbg !4777 {
entry:
  %t.addr = alloca %struct.TF_Tensor*, align 8
  store %struct.TF_Tensor* %t, %struct.TF_Tensor** %t.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.TF_Tensor** %t.addr, metadata !4780, metadata !DIExpression()), !dbg !4781
  %0 = load %struct.TF_Tensor*, %struct.TF_Tensor** %t.addr, align 8, !dbg !4782
  %tensor = getelementptr inbounds %struct.TF_Tensor, %struct.TF_Tensor* %0, i32 0, i32 0, !dbg !4783
  %1 = load %"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"** %tensor, align 8, !dbg !4783
  %2 = bitcast %"class.tensorflow::AbstractTensorInterface"* %1 to i8* (%"class.tensorflow::AbstractTensorInterface"*)***, !dbg !4784
  %vtable = load i8* (%"class.tensorflow::AbstractTensorInterface"*)**, i8* (%"class.tensorflow::AbstractTensorInterface"*)*** %2, align 8, !dbg !4784
  %vfn = getelementptr inbounds i8* (%"class.tensorflow::AbstractTensorInterface"*)*, i8* (%"class.tensorflow::AbstractTensorInterface"*)** %vtable, i64 6, !dbg !4784
  %3 = load i8* (%"class.tensorflow::AbstractTensorInterface"*)*, i8* (%"class.tensorflow::AbstractTensorInterface"*)** %vfn, align 8, !dbg !4784
  %call = call i8* %3(%"class.tensorflow::AbstractTensorInterface"* %1), !dbg !4784
  ret i8* %call, !dbg !4785
}

; Function Attrs: noinline optnone uwtable
define dso_local i64 @TF_TensorElementCount(%struct.TF_Tensor* %t) #5 !dbg !4786 {
entry:
  %t.addr = alloca %struct.TF_Tensor*, align 8
  %result = alloca i64, align 8
  %rank = alloca i32, align 4
  %dim = alloca i32, align 4
  store %struct.TF_Tensor* %t, %struct.TF_Tensor** %t.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.TF_Tensor** %t.addr, metadata !4789, metadata !DIExpression()), !dbg !4790
  call void @llvm.dbg.declare(metadata i64* %result, metadata !4791, metadata !DIExpression()), !dbg !4792
  store i64 1, i64* %result, align 8, !dbg !4792
  call void @llvm.dbg.declare(metadata i32* %rank, metadata !4793, metadata !DIExpression()), !dbg !4794
  %0 = load %struct.TF_Tensor*, %struct.TF_Tensor** %t.addr, align 8, !dbg !4795
  %call = call i32 @TF_NumDims(%struct.TF_Tensor* %0), !dbg !4796
  store i32 %call, i32* %rank, align 4, !dbg !4794
  call void @llvm.dbg.declare(metadata i32* %dim, metadata !4797, metadata !DIExpression()), !dbg !4799
  store i32 0, i32* %dim, align 4, !dbg !4799
  br label %for.cond, !dbg !4800

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %dim, align 4, !dbg !4801
  %2 = load i32, i32* %rank, align 4, !dbg !4803
  %cmp = icmp slt i32 %1, %2, !dbg !4804
  br i1 %cmp, label %for.body, label %for.end, !dbg !4805

for.body:                                         ; preds = %for.cond
  %3 = load %struct.TF_Tensor*, %struct.TF_Tensor** %t.addr, align 8, !dbg !4806
  %4 = load i32, i32* %dim, align 4, !dbg !4808
  %call1 = call i64 @TF_Dim(%struct.TF_Tensor* %3, i32 %4), !dbg !4809
  %5 = load i64, i64* %result, align 8, !dbg !4810
  %mul = mul nsw i64 %5, %call1, !dbg !4810
  store i64 %mul, i64* %result, align 8, !dbg !4810
  br label %for.inc, !dbg !4811

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %dim, align 4, !dbg !4812
  %inc = add nsw i32 %6, 1, !dbg !4812
  store i32 %inc, i32* %dim, align 4, !dbg !4812
  br label %for.cond, !dbg !4813, !llvm.loop !4814

for.end:                                          ; preds = %for.cond
  %7 = load i64, i64* %result, align 8, !dbg !4816
  ret i64 %7, !dbg !4817
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow12TensorBufferD0Ev(%"class.tensorflow::TensorBuffer"* %this) unnamed_addr #4 comdat align 2 !dbg !4818 {
entry:
  %this.addr = alloca %"class.tensorflow::TensorBuffer"*, align 8
  store %"class.tensorflow::TensorBuffer"* %this, %"class.tensorflow::TensorBuffer"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::TensorBuffer"** %this.addr, metadata !4855, metadata !DIExpression()), !dbg !4856
  %this1 = load %"class.tensorflow::TensorBuffer"*, %"class.tensorflow::TensorBuffer"** %this.addr, align 8
  call void @abort(), !dbg !4857
  unreachable, !dbg !4857
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @_ZNK10tensorflow12TensorBuffer17GetAllocatedBytesEPm(%"class.tensorflow::TensorBuffer"* %this, i64* %out_bytes) unnamed_addr #4 align 2 !dbg !4858 {
entry:
  %this.addr = alloca %"class.tensorflow::TensorBuffer"*, align 8
  %out_bytes.addr = alloca i64*, align 8
  store %"class.tensorflow::TensorBuffer"* %this, %"class.tensorflow::TensorBuffer"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::TensorBuffer"** %this.addr, metadata !4860, metadata !DIExpression()), !dbg !4862
  store i64* %out_bytes, i64** %out_bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %out_bytes.addr, metadata !4863, metadata !DIExpression()), !dbg !4864
  %this1 = load %"class.tensorflow::TensorBuffer"*, %"class.tensorflow::TensorBuffer"** %this.addr, align 8
  ret i1 true, !dbg !4865
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local zeroext i1 @_ZNK10tensorflow12TensorBuffer10OwnsMemoryEv(%"class.tensorflow::TensorBuffer"* %this) unnamed_addr #4 comdat align 2 !dbg !4866 {
entry:
  %this.addr = alloca %"class.tensorflow::TensorBuffer"*, align 8
  store %"class.tensorflow::TensorBuffer"* %this, %"class.tensorflow::TensorBuffer"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::TensorBuffer"** %this.addr, metadata !4867, metadata !DIExpression()), !dbg !4868
  %this1 = load %"class.tensorflow::TensorBuffer"*, %"class.tensorflow::TensorBuffer"** %this.addr, align 8
  ret i1 true, !dbg !4869
}

; Function Attrs: noinline optnone uwtable
define dso_local void @_ZN10tensorflow6TensorC2E8DataTypeRKNS_11TensorShapeEPNS_12TensorBufferE(%"class.tensorflow::Tensor"* %this, i32 %type, %"class.tensorflow::TensorShape"* nonnull align 8 dereferenceable(29) %shape, %"class.tensorflow::TensorBuffer"* %buf) unnamed_addr #5 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !4870 {
entry:
  %this.addr = alloca %"class.tensorflow::Tensor"*, align 8
  %type.addr = alloca i32, align 4
  %shape.addr = alloca %"class.tensorflow::TensorShape"*, align 8
  %buf.addr = alloca %"class.tensorflow::TensorBuffer"*, align 8
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  store %"class.tensorflow::Tensor"* %this, %"class.tensorflow::Tensor"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::Tensor"** %this.addr, metadata !4874, metadata !DIExpression()), !dbg !4875
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !4876, metadata !DIExpression()), !dbg !4877
  store %"class.tensorflow::TensorShape"* %shape, %"class.tensorflow::TensorShape"** %shape.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::TensorShape"** %shape.addr, metadata !4878, metadata !DIExpression()), !dbg !4879
  store %"class.tensorflow::TensorBuffer"* %buf, %"class.tensorflow::TensorBuffer"** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::TensorBuffer"** %buf.addr, metadata !4880, metadata !DIExpression()), !dbg !4881
  %this1 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %this.addr, align 8
  %shape_ = getelementptr inbounds %"class.tensorflow::Tensor", %"class.tensorflow::Tensor"* %this1, i32 0, i32 0, !dbg !4882
  %0 = load %"class.tensorflow::TensorShape"*, %"class.tensorflow::TensorShape"** %shape.addr, align 8, !dbg !4883
  call void @_ZN10tensorflow11TensorShapeC2ERKS0_(%"class.tensorflow::TensorShape"* %shape_, %"class.tensorflow::TensorShape"* nonnull align 8 dereferenceable(29) %0), !dbg !4882
  %buf_ = getelementptr inbounds %"class.tensorflow::Tensor", %"class.tensorflow::Tensor"* %this1, i32 0, i32 1, !dbg !4884
  %1 = load %"class.tensorflow::TensorBuffer"*, %"class.tensorflow::TensorBuffer"** %buf.addr, align 8, !dbg !4885
  store %"class.tensorflow::TensorBuffer"* %1, %"class.tensorflow::TensorBuffer"** %buf_, align 8, !dbg !4884
  %2 = load i32, i32* %type.addr, align 4, !dbg !4886
  invoke void @_ZN10tensorflow6Tensor9set_dtypeE8DataType(%"class.tensorflow::Tensor"* %this1, i32 %2)
          to label %invoke.cont unwind label %lpad, !dbg !4888

invoke.cont:                                      ; preds = %entry
  %3 = load %"class.tensorflow::TensorBuffer"*, %"class.tensorflow::TensorBuffer"** %buf.addr, align 8, !dbg !4889
  %4 = bitcast %"class.tensorflow::TensorBuffer"* %3 to %"class.tensorflow::core::RefCounted"*, !dbg !4889
  invoke void @_ZN10tensorflow12_GLOBAL__N_112RefIfNonNullEPNS_4core10RefCountedE(%"class.tensorflow::core::RefCounted"* %4)
          to label %invoke.cont2 unwind label %lpad, !dbg !4890

invoke.cont2:                                     ; preds = %invoke.cont
  ret void, !dbg !4891

lpad:                                             ; preds = %invoke.cont, %entry
  %5 = landingpad { i8*, i32 }
          cleanup, !dbg !4892
  %6 = extractvalue { i8*, i32 } %5, 0, !dbg !4892
  store i8* %6, i8** %exn.slot, align 8, !dbg !4892
  %7 = extractvalue { i8*, i32 } %5, 1, !dbg !4892
  store i32 %7, i32* %ehselector.slot, align 4, !dbg !4892
  call void @_ZN10tensorflow11TensorShapeD2Ev(%"class.tensorflow::TensorShape"* %shape_) #6, !dbg !4892
  br label %eh.resume, !dbg !4892

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8, !dbg !4892
  %sel = load i32, i32* %ehselector.slot, align 4, !dbg !4892
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0, !dbg !4892
  %lpad.val3 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1, !dbg !4892
  resume { i8*, i32 } %lpad.val3, !dbg !4892
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow11TensorShapeC2ERKS0_(%"class.tensorflow::TensorShape"* %this, %"class.tensorflow::TensorShape"* nonnull align 8 dereferenceable(29) %0) unnamed_addr #5 comdat align 2 !dbg !4893 {
entry:
  %this.addr = alloca %"class.tensorflow::TensorShape"*, align 8
  %.addr = alloca %"class.tensorflow::TensorShape"*, align 8
  store %"class.tensorflow::TensorShape"* %this, %"class.tensorflow::TensorShape"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::TensorShape"** %this.addr, metadata !4897, metadata !DIExpression()), !dbg !4898
  store %"class.tensorflow::TensorShape"* %0, %"class.tensorflow::TensorShape"** %.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::TensorShape"** %.addr, metadata !4899, metadata !DIExpression()), !dbg !4898
  %this1 = load %"class.tensorflow::TensorShape"*, %"class.tensorflow::TensorShape"** %this.addr, align 8
  %dims_ = getelementptr inbounds %"class.tensorflow::TensorShape", %"class.tensorflow::TensorShape"* %this1, i32 0, i32 0, !dbg !4900
  %1 = load %"class.tensorflow::TensorShape"*, %"class.tensorflow::TensorShape"** %.addr, align 8, !dbg !4900
  %dims_2 = getelementptr inbounds %"class.tensorflow::TensorShape", %"class.tensorflow::TensorShape"* %1, i32 0, i32 0, !dbg !4900
  call void @_ZNSt6vectorIlSaIlEEC2ERKS1_(%"class.std::vector"* %dims_, %"class.std::vector"* nonnull align 8 dereferenceable(24) %dims_2), !dbg !4900
  %dtype_ = getelementptr inbounds %"class.tensorflow::TensorShape", %"class.tensorflow::TensorShape"* %this1, i32 0, i32 1, !dbg !4900
  %2 = load %"class.tensorflow::TensorShape"*, %"class.tensorflow::TensorShape"** %.addr, align 8, !dbg !4900
  %dtype_3 = getelementptr inbounds %"class.tensorflow::TensorShape", %"class.tensorflow::TensorShape"* %2, i32 0, i32 1, !dbg !4900
  %3 = bitcast i32* %dtype_ to i8*, !dbg !4900
  %4 = bitcast i32* %dtype_3 to i8*, !dbg !4900
  %5 = call i8* @memcpy(i8* %3, i8* %4, i64 4), !dbg !4900
  ret void, !dbg !4900
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow6Tensor9set_dtypeE8DataType(%"class.tensorflow::Tensor"* %this, i32 %t) #5 comdat align 2 !dbg !4901 {
entry:
  %this.addr = alloca %"class.tensorflow::Tensor"*, align 8
  %t.addr = alloca i32, align 4
  store %"class.tensorflow::Tensor"* %this, %"class.tensorflow::Tensor"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::Tensor"** %this.addr, metadata !4902, metadata !DIExpression()), !dbg !4903
  store i32 %t, i32* %t.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %t.addr, metadata !4904, metadata !DIExpression()), !dbg !4905
  %this1 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %this.addr, align 8
  %shape_ = getelementptr inbounds %"class.tensorflow::Tensor", %"class.tensorflow::Tensor"* %this1, i32 0, i32 0, !dbg !4906
  %0 = load i32, i32* %t.addr, align 4, !dbg !4907
  call void @_ZN10tensorflow11TensorShape13set_data_typeE8DataType(%"class.tensorflow::TensorShape"* %shape_, i32 %0), !dbg !4908
  ret void, !dbg !4909
}

; Function Attrs: noinline optnone uwtable
define internal void @_ZN10tensorflow12_GLOBAL__N_112RefIfNonNullEPNS_4core10RefCountedE(%"class.tensorflow::core::RefCounted"* %buf) #5 !dbg !4910 {
entry:
  %buf.addr = alloca %"class.tensorflow::core::RefCounted"*, align 8
  store %"class.tensorflow::core::RefCounted"* %buf, %"class.tensorflow::core::RefCounted"** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::core::RefCounted"** %buf.addr, metadata !4914, metadata !DIExpression()), !dbg !4915
  %0 = load %"class.tensorflow::core::RefCounted"*, %"class.tensorflow::core::RefCounted"** %buf.addr, align 8, !dbg !4916
  %tobool = icmp ne %"class.tensorflow::core::RefCounted"* %0, null, !dbg !4916
  br i1 %tobool, label %if.then, label %if.end, !dbg !4918

if.then:                                          ; preds = %entry
  %1 = load %"class.tensorflow::core::RefCounted"*, %"class.tensorflow::core::RefCounted"** %buf.addr, align 8, !dbg !4919
  call void @_ZNK10tensorflow4core10RefCounted3RefEv(%"class.tensorflow::core::RefCounted"* %1), !dbg !4920
  br label %if.end, !dbg !4919

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !4921
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNK10tensorflow4core10RefCounted3RefEv(%"class.tensorflow::core::RefCounted"* %this) #4 comdat align 2 !dbg !4922 {
entry:
  %this.addr.i = alloca %"struct.std::__atomic_base"*, align 8
  %__i.addr.i = alloca i64, align 8
  %__m.addr.i = alloca i32, align 4
  %.atomictmp.i = alloca i64, align 8
  %atomic-temp.i = alloca i64, align 8
  %this.addr = alloca %"class.tensorflow::core::RefCounted"*, align 8
  store %"class.tensorflow::core::RefCounted"* %this, %"class.tensorflow::core::RefCounted"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::core::RefCounted"** %this.addr, metadata !4923, metadata !DIExpression()), !dbg !4924
  %this1 = load %"class.tensorflow::core::RefCounted"*, %"class.tensorflow::core::RefCounted"** %this.addr, align 8
  %ref_count_ = getelementptr inbounds %"class.tensorflow::core::RefCounted", %"class.tensorflow::core::RefCounted"* %this1, i32 0, i32 1, !dbg !4925
  %0 = bitcast %"struct.std::atomic"* %ref_count_ to %"struct.std::__atomic_base"*, !dbg !4925
  store %"struct.std::__atomic_base"* %0, %"struct.std::__atomic_base"** %this.addr.i, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::__atomic_base"** %this.addr.i, metadata !4926, metadata !DIExpression()), !dbg !4928
  store i64 1, i64* %__i.addr.i, align 8
  call void @llvm.dbg.declare(metadata i64* %__i.addr.i, metadata !4930, metadata !DIExpression()), !dbg !4931
  store i32 0, i32* %__m.addr.i, align 4
  call void @llvm.dbg.declare(metadata i32* %__m.addr.i, metadata !4932, metadata !DIExpression()), !dbg !4933
  %this1.i = load %"struct.std::__atomic_base"*, %"struct.std::__atomic_base"** %this.addr.i, align 8
  %_M_i.i = getelementptr inbounds %"struct.std::__atomic_base", %"struct.std::__atomic_base"* %this1.i, i32 0, i32 0, !dbg !4934
  %1 = load i32, i32* %__m.addr.i, align 4, !dbg !4935
  %2 = load i64, i64* %__i.addr.i, align 8, !dbg !4936
  store i64 %2, i64* %.atomictmp.i, align 8, !dbg !4937
  switch i32 %1, label %monotonic.i [
    i32 1, label %acquire.i
    i32 2, label %acquire.i
    i32 3, label %release.i
    i32 4, label %acqrel.i
    i32 5, label %seqcst.i
  ], !dbg !4937

monotonic.i:                                      ; preds = %entry
  %3 = load i64, i64* %.atomictmp.i, align 8, !dbg !4937
  %4 = load i64, i64* %_M_i.i, align 8, !dbg !4937
  %5 = add i64 %4, %3, !dbg !4937
  store i64 %5, i64* %_M_i.i, align 8, !dbg !4937
  store i64 %4, i64* %atomic-temp.i, align 8, !dbg !4937
  br label %_ZNSt13__atomic_baseImE9fetch_addEmSt12memory_order.exit, !dbg !4937

acquire.i:                                        ; preds = %entry, %entry
  %6 = load i64, i64* %.atomictmp.i, align 8, !dbg !4937
  %7 = load i64, i64* %_M_i.i, align 8, !dbg !4937
  %8 = add i64 %7, %6, !dbg !4937
  store i64 %8, i64* %_M_i.i, align 8, !dbg !4937
  store i64 %7, i64* %atomic-temp.i, align 8, !dbg !4937
  br label %_ZNSt13__atomic_baseImE9fetch_addEmSt12memory_order.exit, !dbg !4937

release.i:                                        ; preds = %entry
  %9 = load i64, i64* %.atomictmp.i, align 8, !dbg !4937
  %10 = load i64, i64* %_M_i.i, align 8, !dbg !4937
  %11 = add i64 %10, %9, !dbg !4937
  store i64 %11, i64* %_M_i.i, align 8, !dbg !4937
  store i64 %10, i64* %atomic-temp.i, align 8, !dbg !4937
  br label %_ZNSt13__atomic_baseImE9fetch_addEmSt12memory_order.exit, !dbg !4937

acqrel.i:                                         ; preds = %entry
  %12 = load i64, i64* %.atomictmp.i, align 8, !dbg !4937
  %13 = load i64, i64* %_M_i.i, align 8, !dbg !4937
  %14 = add i64 %13, %12, !dbg !4937
  store i64 %14, i64* %_M_i.i, align 8, !dbg !4937
  store i64 %13, i64* %atomic-temp.i, align 8, !dbg !4937
  br label %_ZNSt13__atomic_baseImE9fetch_addEmSt12memory_order.exit, !dbg !4937

seqcst.i:                                         ; preds = %entry
  %15 = load i64, i64* %.atomictmp.i, align 8, !dbg !4937
  %16 = load i64, i64* %_M_i.i, align 8, !dbg !4937
  %17 = add i64 %16, %15, !dbg !4937
  store i64 %17, i64* %_M_i.i, align 8, !dbg !4937
  store i64 %16, i64* %atomic-temp.i, align 8, !dbg !4937
  br label %_ZNSt13__atomic_baseImE9fetch_addEmSt12memory_order.exit, !dbg !4937

_ZNSt13__atomic_baseImE9fetch_addEmSt12memory_order.exit: ; preds = %monotonic.i, %acquire.i, %release.i, %acqrel.i, %seqcst.i
  %18 = load i64, i64* %atomic-temp.i, align 8, !dbg !4937
  ret void, !dbg !4938
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow11TensorShape13set_data_typeE8DataType(%"class.tensorflow::TensorShape"* %this, i32 %t) #4 comdat align 2 !dbg !4939 {
entry:
  %this.addr = alloca %"class.tensorflow::TensorShape"*, align 8
  %t.addr = alloca i32, align 4
  store %"class.tensorflow::TensorShape"* %this, %"class.tensorflow::TensorShape"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::TensorShape"** %this.addr, metadata !4940, metadata !DIExpression()), !dbg !4941
  store i32 %t, i32* %t.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %t.addr, metadata !4942, metadata !DIExpression()), !dbg !4943
  %this1 = load %"class.tensorflow::TensorShape"*, %"class.tensorflow::TensorShape"** %this.addr, align 8
  %0 = load i32, i32* %t.addr, align 4, !dbg !4944
  %dtype_ = getelementptr inbounds %"class.tensorflow::TensorShape", %"class.tensorflow::TensorShape"* %this1, i32 0, i32 1, !dbg !4945
  store i32 %0, i32* %dtype_, align 8, !dbg !4946
  ret void, !dbg !4947
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_ZN10tensorflow6TensorD2Ev(%"class.tensorflow::Tensor"* %this) unnamed_addr #4 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !4948 {
entry:
  %this.addr = alloca %"class.tensorflow::Tensor"*, align 8
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  store %"class.tensorflow::Tensor"* %this, %"class.tensorflow::Tensor"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::Tensor"** %this.addr, metadata !4949, metadata !DIExpression()), !dbg !4950
  %this1 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %this.addr, align 8
  %buf_ = getelementptr inbounds %"class.tensorflow::Tensor", %"class.tensorflow::Tensor"* %this1, i32 0, i32 1, !dbg !4951
  %0 = load %"class.tensorflow::TensorBuffer"*, %"class.tensorflow::TensorBuffer"** %buf_, align 8, !dbg !4951
  %1 = bitcast %"class.tensorflow::TensorBuffer"* %0 to %"class.tensorflow::core::RefCounted"*, !dbg !4951
  invoke void @_ZN10tensorflow12_GLOBAL__N_114UnrefIfNonNullEPNS_4core10RefCountedE(%"class.tensorflow::core::RefCounted"* %1)
          to label %invoke.cont unwind label %lpad, !dbg !4953

invoke.cont:                                      ; preds = %entry
  %shape_ = getelementptr inbounds %"class.tensorflow::Tensor", %"class.tensorflow::Tensor"* %this1, i32 0, i32 0, !dbg !4954
  call void @_ZN10tensorflow11TensorShapeD2Ev(%"class.tensorflow::TensorShape"* %shape_) #6, !dbg !4954
  ret void, !dbg !4955

lpad:                                             ; preds = %entry
  %2 = landingpad { i8*, i32 }
          catch i8* null, !dbg !4954
  %3 = extractvalue { i8*, i32 } %2, 0, !dbg !4954
  store i8* %3, i8** %exn.slot, align 8, !dbg !4954
  %4 = extractvalue { i8*, i32 } %2, 1, !dbg !4954
  store i32 %4, i32* %ehselector.slot, align 4, !dbg !4954
  %shape_2 = getelementptr inbounds %"class.tensorflow::Tensor", %"class.tensorflow::Tensor"* %this1, i32 0, i32 0, !dbg !4954
  call void @_ZN10tensorflow11TensorShapeD2Ev(%"class.tensorflow::TensorShape"* %shape_2) #6, !dbg !4954
  br label %terminate.handler, !dbg !4954

terminate.handler:                                ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8, !dbg !4954
  call void @__clang_call_terminate(i8* %exn) #14, !dbg !4954
  unreachable, !dbg !4954
}

; Function Attrs: noinline optnone uwtable
define internal void @_ZN10tensorflow12_GLOBAL__N_114UnrefIfNonNullEPNS_4core10RefCountedE(%"class.tensorflow::core::RefCounted"* %buf) #5 !dbg !4956 {
entry:
  %buf.addr = alloca %"class.tensorflow::core::RefCounted"*, align 8
  store %"class.tensorflow::core::RefCounted"* %buf, %"class.tensorflow::core::RefCounted"** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::core::RefCounted"** %buf.addr, metadata !4957, metadata !DIExpression()), !dbg !4958
  %0 = load %"class.tensorflow::core::RefCounted"*, %"class.tensorflow::core::RefCounted"** %buf.addr, align 8, !dbg !4959
  %tobool = icmp ne %"class.tensorflow::core::RefCounted"* %0, null, !dbg !4959
  br i1 %tobool, label %if.then, label %if.end, !dbg !4961

if.then:                                          ; preds = %entry
  %1 = load %"class.tensorflow::core::RefCounted"*, %"class.tensorflow::core::RefCounted"** %buf.addr, align 8, !dbg !4962
  %call = call zeroext i1 @_ZNK10tensorflow4core10RefCounted5UnrefEv(%"class.tensorflow::core::RefCounted"* %1), !dbg !4963
  br label %if.end, !dbg !4962

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !4964
}

; Function Attrs: noinline optnone uwtable
define dso_local void @_ZN10tensorflow6TensorC2EOS0_(%"class.tensorflow::Tensor"* %this, %"class.tensorflow::Tensor"* nonnull align 8 dereferenceable(40) %other) unnamed_addr #5 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !4965 {
entry:
  %this.addr = alloca %"class.tensorflow::Tensor"*, align 8
  %other.addr = alloca %"class.tensorflow::Tensor"*, align 8
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  store %"class.tensorflow::Tensor"* %this, %"class.tensorflow::Tensor"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::Tensor"** %this.addr, metadata !4966, metadata !DIExpression()), !dbg !4967
  store %"class.tensorflow::Tensor"* %other, %"class.tensorflow::Tensor"** %other.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::Tensor"** %other.addr, metadata !4968, metadata !DIExpression()), !dbg !4969
  %this1 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %this.addr, align 8
  %shape_ = getelementptr inbounds %"class.tensorflow::Tensor", %"class.tensorflow::Tensor"* %this1, i32 0, i32 0, !dbg !4970
  %0 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %other.addr, align 8, !dbg !4971
  %shape_2 = getelementptr inbounds %"class.tensorflow::Tensor", %"class.tensorflow::Tensor"* %0, i32 0, i32 0, !dbg !4972
  %call = call nonnull align 8 dereferenceable(29) %"class.tensorflow::TensorShape"* @_ZSt4moveIRN10tensorflow11TensorShapeEEONSt16remove_referenceIT_E4typeEOS4_(%"class.tensorflow::TensorShape"* nonnull align 8 dereferenceable(29) %shape_2) #6, !dbg !4973
  call void @_ZN10tensorflow11TensorShapeC2EOS0_(%"class.tensorflow::TensorShape"* %shape_, %"class.tensorflow::TensorShape"* nonnull align 8 dereferenceable(29) %call) #6, !dbg !4970
  %buf_ = getelementptr inbounds %"class.tensorflow::Tensor", %"class.tensorflow::Tensor"* %this1, i32 0, i32 1, !dbg !4974
  %1 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %other.addr, align 8, !dbg !4975
  %buf_3 = getelementptr inbounds %"class.tensorflow::Tensor", %"class.tensorflow::Tensor"* %1, i32 0, i32 1, !dbg !4976
  %2 = load %"class.tensorflow::TensorBuffer"*, %"class.tensorflow::TensorBuffer"** %buf_3, align 8, !dbg !4976
  store %"class.tensorflow::TensorBuffer"* %2, %"class.tensorflow::TensorBuffer"** %buf_, align 8, !dbg !4974
  %3 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %other.addr, align 8, !dbg !4977
  %call4 = invoke i32 @_ZNK10tensorflow6Tensor5dtypeEv(%"class.tensorflow::Tensor"* %3)
          to label %invoke.cont unwind label %lpad, !dbg !4979

invoke.cont:                                      ; preds = %entry
  invoke void @_ZN10tensorflow6Tensor9set_dtypeE8DataType(%"class.tensorflow::Tensor"* %this1, i32 %call4)
          to label %invoke.cont5 unwind label %lpad, !dbg !4980

invoke.cont5:                                     ; preds = %invoke.cont
  %4 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %other.addr, align 8, !dbg !4981
  %buf_6 = getelementptr inbounds %"class.tensorflow::Tensor", %"class.tensorflow::Tensor"* %4, i32 0, i32 1, !dbg !4982
  store %"class.tensorflow::TensorBuffer"* null, %"class.tensorflow::TensorBuffer"** %buf_6, align 8, !dbg !4983
  ret void, !dbg !4984

lpad:                                             ; preds = %invoke.cont, %entry
  %5 = landingpad { i8*, i32 }
          cleanup, !dbg !4985
  %6 = extractvalue { i8*, i32 } %5, 0, !dbg !4985
  store i8* %6, i8** %exn.slot, align 8, !dbg !4985
  %7 = extractvalue { i8*, i32 } %5, 1, !dbg !4985
  store i32 %7, i32* %ehselector.slot, align 4, !dbg !4985
  call void @_ZN10tensorflow11TensorShapeD2Ev(%"class.tensorflow::TensorShape"* %shape_) #6, !dbg !4985
  br label %eh.resume, !dbg !4985

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8, !dbg !4985
  %sel = load i32, i32* %ehselector.slot, align 4, !dbg !4985
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0, !dbg !4985
  %lpad.val7 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1, !dbg !4985
  resume { i8*, i32 } %lpad.val7, !dbg !4985
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(29) %"class.tensorflow::TensorShape"* @_ZSt4moveIRN10tensorflow11TensorShapeEEONSt16remove_referenceIT_E4typeEOS4_(%"class.tensorflow::TensorShape"* nonnull align 8 dereferenceable(29) %__t) #4 comdat !dbg !4986 {
entry:
  %__t.addr = alloca %"class.tensorflow::TensorShape"*, align 8
  store %"class.tensorflow::TensorShape"* %__t, %"class.tensorflow::TensorShape"** %__t.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::TensorShape"** %__t.addr, metadata !4995, metadata !DIExpression()), !dbg !4996
  %0 = load %"class.tensorflow::TensorShape"*, %"class.tensorflow::TensorShape"** %__t.addr, align 8, !dbg !4997
  ret %"class.tensorflow::TensorShape"* %0, !dbg !4998
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow11TensorShapeC2EOS0_(%"class.tensorflow::TensorShape"* %this, %"class.tensorflow::TensorShape"* nonnull align 8 dereferenceable(29) %0) unnamed_addr #4 comdat align 2 !dbg !4999 {
entry:
  %this.addr = alloca %"class.tensorflow::TensorShape"*, align 8
  %.addr = alloca %"class.tensorflow::TensorShape"*, align 8
  store %"class.tensorflow::TensorShape"* %this, %"class.tensorflow::TensorShape"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::TensorShape"** %this.addr, metadata !5004, metadata !DIExpression()), !dbg !5005
  store %"class.tensorflow::TensorShape"* %0, %"class.tensorflow::TensorShape"** %.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::TensorShape"** %.addr, metadata !5006, metadata !DIExpression()), !dbg !5005
  %this1 = load %"class.tensorflow::TensorShape"*, %"class.tensorflow::TensorShape"** %this.addr, align 8
  %dims_ = getelementptr inbounds %"class.tensorflow::TensorShape", %"class.tensorflow::TensorShape"* %this1, i32 0, i32 0, !dbg !5007
  %1 = load %"class.tensorflow::TensorShape"*, %"class.tensorflow::TensorShape"** %.addr, align 8, !dbg !5007
  %dims_2 = getelementptr inbounds %"class.tensorflow::TensorShape", %"class.tensorflow::TensorShape"* %1, i32 0, i32 0, !dbg !5007
  call void @_ZNSt6vectorIlSaIlEEC2EOS1_(%"class.std::vector"* %dims_, %"class.std::vector"* nonnull align 8 dereferenceable(24) %dims_2) #6, !dbg !5007
  %dtype_ = getelementptr inbounds %"class.tensorflow::TensorShape", %"class.tensorflow::TensorShape"* %this1, i32 0, i32 1, !dbg !5007
  %2 = load %"class.tensorflow::TensorShape"*, %"class.tensorflow::TensorShape"** %.addr, align 8, !dbg !5007
  %dtype_3 = getelementptr inbounds %"class.tensorflow::TensorShape", %"class.tensorflow::TensorShape"* %2, i32 0, i32 1, !dbg !5007
  %3 = bitcast i32* %dtype_ to i8*, !dbg !5007
  %4 = bitcast i32* %dtype_3 to i8*, !dbg !5007
  %5 = call i8* @memcpy(i8* %3, i8* %4, i64 4), !dbg !5007
  ret void, !dbg !5007
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i32 @_ZNK10tensorflow6Tensor5dtypeEv(%"class.tensorflow::Tensor"* %this) #5 comdat align 2 !dbg !5008 {
entry:
  %this.addr = alloca %"class.tensorflow::Tensor"*, align 8
  store %"class.tensorflow::Tensor"* %this, %"class.tensorflow::Tensor"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::Tensor"** %this.addr, metadata !5009, metadata !DIExpression()), !dbg !5010
  %this1 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %this.addr, align 8
  %shape_ = getelementptr inbounds %"class.tensorflow::Tensor", %"class.tensorflow::Tensor"* %this1, i32 0, i32 0, !dbg !5011
  %call = call i32 @_ZNK10tensorflow11TensorShape9data_typeEv(%"class.tensorflow::TensorShape"* %shape_), !dbg !5012
  ret i32 %call, !dbg !5013
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i32 @_ZNK10tensorflow11TensorShape9data_typeEv(%"class.tensorflow::TensorShape"* %this) #4 comdat align 2 !dbg !5014 {
entry:
  %this.addr = alloca %"class.tensorflow::TensorShape"*, align 8
  store %"class.tensorflow::TensorShape"* %this, %"class.tensorflow::TensorShape"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::TensorShape"** %this.addr, metadata !5015, metadata !DIExpression()), !dbg !5016
  %this1 = load %"class.tensorflow::TensorShape"*, %"class.tensorflow::TensorShape"** %this.addr, align 8
  %dtype_ = getelementptr inbounds %"class.tensorflow::TensorShape", %"class.tensorflow::TensorShape"* %this1, i32 0, i32 1, !dbg !5017
  %0 = load i32, i32* %dtype_, align 8, !dbg !5017
  ret i32 %0, !dbg !5018
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIlSaIlEEC2EOS1_(%"class.std::vector"* %this, %"class.std::vector"* nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 comdat align 2 !dbg !5019 {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  %.addr = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::vector"** %this.addr, metadata !5020, metadata !DIExpression()), !dbg !5021
  store %"class.std::vector"* %0, %"class.std::vector"** %.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::vector"** %.addr, metadata !5022, metadata !DIExpression()), !dbg !5023
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %1 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*, !dbg !5024
  %2 = load %"class.std::vector"*, %"class.std::vector"** %.addr, align 8, !dbg !5025
  %3 = bitcast %"class.std::vector"* %2 to %"struct.std::_Vector_base"*, !dbg !5025
  call void @_ZNSt12_Vector_baseIlSaIlEEC2EOS1_(%"struct.std::_Vector_base"* %1, %"struct.std::_Vector_base"* nonnull align 8 dereferenceable(24) %3) #6, !dbg !5025
  ret void, !dbg !5024
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIlSaIlEEC2EOS1_(%"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"* nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 comdat align 2 !dbg !5026 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base"*, align 8
  %.addr = alloca %"struct.std::_Vector_base"*, align 8
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::_Vector_base"** %this.addr, metadata !5027, metadata !DIExpression()), !dbg !5028
  store %"struct.std::_Vector_base"* %0, %"struct.std::_Vector_base"** %.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::_Vector_base"** %.addr, metadata !5029, metadata !DIExpression()), !dbg !5030
  %this1 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0, !dbg !5031
  %1 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %.addr, align 8, !dbg !5031
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %1, i32 0, i32 0, !dbg !5031
  call void @_ZNSt12_Vector_baseIlSaIlEE12_Vector_implC2EOS2_(%"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %_M_impl, %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* nonnull align 8 dereferenceable(24) %_M_impl2) #6, !dbg !5031
  ret void, !dbg !5032
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIlSaIlEE12_Vector_implC2EOS2_(%"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %this, %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* nonnull align 8 dereferenceable(24) %__x) unnamed_addr #4 comdat align 2 !dbg !5033 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"*, align 8
  %__x.addr = alloca %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"*, align 8
  store %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %this, %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"** %this.addr, metadata !5034, metadata !DIExpression()), !dbg !5035
  store %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %__x, %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"** %__x.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"** %__x.addr, metadata !5036, metadata !DIExpression()), !dbg !5037
  %this1 = load %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"*, %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"** %this.addr, align 8
  %0 = bitcast %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %this1 to %"class.std::allocator.0"*, !dbg !5038
  %1 = load %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"*, %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"** %__x.addr, align 8, !dbg !5039
  %call = call nonnull align 8 dereferenceable(24) %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* @_ZSt4moveIRNSt12_Vector_baseIlSaIlEE12_Vector_implEEONSt16remove_referenceIT_E4typeEOS6_(%"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* nonnull align 8 dereferenceable(24) %1) #6, !dbg !5040
  %2 = bitcast %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %call to %"class.std::allocator.0"*, !dbg !5040
  call void @_ZNSaIlEC2ERKS_(%"class.std::allocator.0"* %0, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %2) #6, !dbg !5041
  %3 = bitcast %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %this1 to %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"*, !dbg !5038
  %4 = load %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"*, %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"** %__x.addr, align 8, !dbg !5042
  %call2 = call nonnull align 8 dereferenceable(24) %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* @_ZSt4moveIRNSt12_Vector_baseIlSaIlEE12_Vector_implEEONSt16remove_referenceIT_E4typeEOS6_(%"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* nonnull align 8 dereferenceable(24) %4) #6, !dbg !5043
  %5 = bitcast %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %call2 to %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"*, !dbg !5043
  call void @_ZNSt12_Vector_baseIlSaIlEE17_Vector_impl_dataC2EOS2_(%"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* %3, %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* nonnull align 8 dereferenceable(24) %5) #6, !dbg !5044
  ret void, !dbg !5045
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(24) %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* @_ZSt4moveIRNSt12_Vector_baseIlSaIlEE12_Vector_implEEONSt16remove_referenceIT_E4typeEOS6_(%"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* nonnull align 8 dereferenceable(24) %__t) #4 comdat !dbg !5046 {
entry:
  %__t.addr = alloca %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"*, align 8
  store %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %__t, %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"** %__t.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"** %__t.addr, metadata !5055, metadata !DIExpression()), !dbg !5056
  %0 = load %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"*, %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"** %__t.addr, align 8, !dbg !5057
  ret %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %0, !dbg !5058
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIlSaIlEE17_Vector_impl_dataC2EOS2_(%"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* %this, %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* nonnull align 8 dereferenceable(24) %__x) unnamed_addr #4 comdat align 2 !dbg !5059 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"*, align 8
  %__x.addr = alloca %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"*, align 8
  store %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* %this, %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"** %this.addr, metadata !5060, metadata !DIExpression()), !dbg !5061
  store %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* %__x, %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"** %__x.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"** %__x.addr, metadata !5062, metadata !DIExpression()), !dbg !5063
  %this1 = load %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"*, %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"** %this.addr, align 8
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data", %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* %this1, i32 0, i32 0, !dbg !5064
  %0 = load %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"*, %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"** %__x.addr, align 8, !dbg !5065
  %_M_start2 = getelementptr inbounds %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data", %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* %0, i32 0, i32 0, !dbg !5066
  %1 = load i64*, i64** %_M_start2, align 8, !dbg !5066
  store i64* %1, i64** %_M_start, align 8, !dbg !5064
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data", %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* %this1, i32 0, i32 1, !dbg !5067
  %2 = load %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"*, %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"** %__x.addr, align 8, !dbg !5068
  %_M_finish3 = getelementptr inbounds %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data", %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* %2, i32 0, i32 1, !dbg !5069
  %3 = load i64*, i64** %_M_finish3, align 8, !dbg !5069
  store i64* %3, i64** %_M_finish, align 8, !dbg !5067
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data", %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* %this1, i32 0, i32 2, !dbg !5070
  %4 = load %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"*, %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"** %__x.addr, align 8, !dbg !5071
  %_M_end_of_storage4 = getelementptr inbounds %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data", %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* %4, i32 0, i32 2, !dbg !5072
  %5 = load i64*, i64** %_M_end_of_storage4, align 8, !dbg !5072
  store i64* %5, i64** %_M_end_of_storage, align 8, !dbg !5070
  %6 = load %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"*, %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"** %__x.addr, align 8, !dbg !5073
  %_M_end_of_storage5 = getelementptr inbounds %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data", %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* %6, i32 0, i32 2, !dbg !5075
  store i64* null, i64** %_M_end_of_storage5, align 8, !dbg !5076
  %7 = load %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"*, %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"** %__x.addr, align 8, !dbg !5077
  %_M_finish6 = getelementptr inbounds %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data", %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* %7, i32 0, i32 1, !dbg !5078
  store i64* null, i64** %_M_finish6, align 8, !dbg !5079
  %8 = load %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"*, %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"** %__x.addr, align 8, !dbg !5080
  %_M_start7 = getelementptr inbounds %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data", %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* %8, i32 0, i32 0, !dbg !5081
  store i64* null, i64** %_M_start7, align 8, !dbg !5082
  ret void, !dbg !5083
}

; Function Attrs: noreturn nounwind
declare void @abort() #14

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* %destaddr, i8* %srcaddr, i64 %len) #15 !dbg !5084 {
entry:
  %destaddr.addr = alloca i8*, align 8
  %srcaddr.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %dest = alloca i8*, align 8
  %src = alloca i8*, align 8
  store i8* %destaddr, i8** %destaddr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %destaddr.addr, metadata !5090, metadata !DIExpression()), !dbg !5091
  store i8* %srcaddr, i8** %srcaddr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %srcaddr.addr, metadata !5092, metadata !DIExpression()), !dbg !5093
  store i64 %len, i64* %len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !5094, metadata !DIExpression()), !dbg !5095
  call void @llvm.dbg.declare(metadata i8** %dest, metadata !5096, metadata !DIExpression()), !dbg !5097
  %0 = load i8*, i8** %destaddr.addr, align 8, !dbg !5098
  store i8* %0, i8** %dest, align 8, !dbg !5097
  call void @llvm.dbg.declare(metadata i8** %src, metadata !5099, metadata !DIExpression()), !dbg !5100
  %1 = load i8*, i8** %srcaddr.addr, align 8, !dbg !5101
  store i8* %1, i8** %src, align 8, !dbg !5100
  br label %while.cond, !dbg !5102

while.cond:                                       ; preds = %while.body, %entry
  %2 = load i64, i64* %len.addr, align 8, !dbg !5103
  %dec = add i64 %2, -1, !dbg !5103
  store i64 %dec, i64* %len.addr, align 8, !dbg !5103
  %cmp = icmp ugt i64 %2, 0, !dbg !5104
  br i1 %cmp, label %while.body, label %while.end, !dbg !5102

while.body:                                       ; preds = %while.cond
  %3 = load i8*, i8** %src, align 8, !dbg !5105
  %incdec.ptr = getelementptr inbounds i8, i8* %3, i32 1, !dbg !5105
  store i8* %incdec.ptr, i8** %src, align 8, !dbg !5105
  %4 = load i8, i8* %3, align 1, !dbg !5106
  %5 = load i8*, i8** %dest, align 8, !dbg !5107
  %incdec.ptr1 = getelementptr inbounds i8, i8* %5, i32 1, !dbg !5107
  store i8* %incdec.ptr1, i8** %dest, align 8, !dbg !5107
  store i8 %4, i8* %5, align 1, !dbg !5108
  br label %while.cond, !dbg !5102, !llvm.loop !5109

while.end:                                        ; preds = %while.cond
  %6 = load i8*, i8** %destaddr.addr, align 8, !dbg !5110
  ret i8* %6, !dbg !5111
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memmove(i8* %dst, i8* %src, i64 %count) #15 !dbg !5112 {
entry:
  %retval = alloca i8*, align 8
  %dst.addr = alloca i8*, align 8
  %src.addr = alloca i8*, align 8
  %count.addr = alloca i64, align 8
  %a = alloca i8*, align 8
  %b = alloca i8*, align 8
  store i8* %dst, i8** %dst.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dst.addr, metadata !5114, metadata !DIExpression()), !dbg !5115
  store i8* %src, i8** %src.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %src.addr, metadata !5116, metadata !DIExpression()), !dbg !5117
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !5118, metadata !DIExpression()), !dbg !5119
  call void @llvm.dbg.declare(metadata i8** %a, metadata !5120, metadata !DIExpression()), !dbg !5121
  %0 = load i8*, i8** %dst.addr, align 8, !dbg !5122
  store i8* %0, i8** %a, align 8, !dbg !5121
  call void @llvm.dbg.declare(metadata i8** %b, metadata !5123, metadata !DIExpression()), !dbg !5124
  %1 = load i8*, i8** %src.addr, align 8, !dbg !5125
  store i8* %1, i8** %b, align 8, !dbg !5124
  %2 = load i8*, i8** %src.addr, align 8, !dbg !5126
  %3 = load i8*, i8** %dst.addr, align 8, !dbg !5128
  %cmp = icmp eq i8* %2, %3, !dbg !5129
  br i1 %cmp, label %if.then, label %if.end, !dbg !5130

if.then:                                          ; preds = %entry
  %4 = load i8*, i8** %dst.addr, align 8, !dbg !5131
  store i8* %4, i8** %retval, align 8, !dbg !5132
  br label %return, !dbg !5132

if.end:                                           ; preds = %entry
  %5 = load i8*, i8** %src.addr, align 8, !dbg !5133
  %6 = load i8*, i8** %dst.addr, align 8, !dbg !5135
  %cmp1 = icmp ugt i8* %5, %6, !dbg !5136
  br i1 %cmp1, label %while.cond, label %if.else, !dbg !5137

while.cond:                                       ; preds = %if.end, %while.body
  %7 = load i64, i64* %count.addr, align 8, !dbg !5138
  %dec = add i64 %7, -1, !dbg !5138
  store i64 %dec, i64* %count.addr, align 8, !dbg !5138
  %tobool = icmp ne i64 %7, 0, !dbg !5140
  br i1 %tobool, label %while.body, label %if.end13, !dbg !5140

while.body:                                       ; preds = %while.cond
  %8 = load i8*, i8** %b, align 8, !dbg !5141
  %incdec.ptr = getelementptr inbounds i8, i8* %8, i32 1, !dbg !5141
  store i8* %incdec.ptr, i8** %b, align 8, !dbg !5141
  %9 = load i8, i8* %8, align 1, !dbg !5142
  %10 = load i8*, i8** %a, align 8, !dbg !5143
  %incdec.ptr3 = getelementptr inbounds i8, i8* %10, i32 1, !dbg !5143
  store i8* %incdec.ptr3, i8** %a, align 8, !dbg !5143
  store i8 %9, i8* %10, align 1, !dbg !5144
  br label %while.cond, !dbg !5140, !llvm.loop !5145

if.else:                                          ; preds = %if.end
  %11 = load i64, i64* %count.addr, align 8, !dbg !5146
  %sub = sub i64 %11, 1, !dbg !5148
  %12 = load i8*, i8** %a, align 8, !dbg !5149
  %add.ptr = getelementptr inbounds i8, i8* %12, i64 %sub, !dbg !5149
  store i8* %add.ptr, i8** %a, align 8, !dbg !5149
  %13 = load i64, i64* %count.addr, align 8, !dbg !5150
  %sub4 = sub i64 %13, 1, !dbg !5151
  %14 = load i8*, i8** %b, align 8, !dbg !5152
  %add.ptr5 = getelementptr inbounds i8, i8* %14, i64 %sub4, !dbg !5152
  store i8* %add.ptr5, i8** %b, align 8, !dbg !5152
  br label %while.cond6, !dbg !5153

while.cond6:                                      ; preds = %while.body9, %if.else
  %15 = load i64, i64* %count.addr, align 8, !dbg !5154
  %dec7 = add i64 %15, -1, !dbg !5154
  store i64 %dec7, i64* %count.addr, align 8, !dbg !5154
  %tobool8 = icmp ne i64 %15, 0, !dbg !5153
  br i1 %tobool8, label %while.body9, label %if.end13, !dbg !5153

while.body9:                                      ; preds = %while.cond6
  %16 = load i8*, i8** %b, align 8, !dbg !5155
  %incdec.ptr10 = getelementptr inbounds i8, i8* %16, i32 -1, !dbg !5155
  store i8* %incdec.ptr10, i8** %b, align 8, !dbg !5155
  %17 = load i8, i8* %16, align 1, !dbg !5156
  %18 = load i8*, i8** %a, align 8, !dbg !5157
  %incdec.ptr11 = getelementptr inbounds i8, i8* %18, i32 -1, !dbg !5157
  store i8* %incdec.ptr11, i8** %a, align 8, !dbg !5157
  store i8 %17, i8* %18, align 1, !dbg !5158
  br label %while.cond6, !dbg !5153, !llvm.loop !5159

if.end13:                                         ; preds = %while.cond6, %while.cond
  %19 = load i8*, i8** %dst.addr, align 8, !dbg !5160
  store i8* %19, i8** %retval, align 8, !dbg !5161
  br label %return, !dbg !5161

return:                                           ; preds = %if.end13, %if.then
  %20 = load i8*, i8** %retval, align 8, !dbg !5162
  ret i8* %20, !dbg !5162
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* %dst, i32 %s, i64 %count) #15 !dbg !5163 {
entry:
  %dst.addr = alloca i8*, align 8
  %s.addr = alloca i32, align 4
  %count.addr = alloca i64, align 8
  %a = alloca i8*, align 8
  store i8* %dst, i8** %dst.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dst.addr, metadata !5167, metadata !DIExpression()), !dbg !5168
  store i32 %s, i32* %s.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %s.addr, metadata !5169, metadata !DIExpression()), !dbg !5170
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !5171, metadata !DIExpression()), !dbg !5172
  call void @llvm.dbg.declare(metadata i8** %a, metadata !5173, metadata !DIExpression()), !dbg !5174
  %0 = load i8*, i8** %dst.addr, align 8, !dbg !5175
  store i8* %0, i8** %a, align 8, !dbg !5174
  br label %while.cond, !dbg !5176

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i64, i64* %count.addr, align 8, !dbg !5177
  %dec = add i64 %1, -1, !dbg !5177
  store i64 %dec, i64* %count.addr, align 8, !dbg !5177
  %cmp = icmp ugt i64 %1, 0, !dbg !5178
  br i1 %cmp, label %while.body, label %while.end, !dbg !5176

while.body:                                       ; preds = %while.cond
  %2 = load i32, i32* %s.addr, align 4, !dbg !5179
  %conv = trunc i32 %2 to i8, !dbg !5179
  %3 = load i8*, i8** %a, align 8, !dbg !5180
  %incdec.ptr = getelementptr inbounds i8, i8* %3, i32 1, !dbg !5180
  store i8* %incdec.ptr, i8** %a, align 8, !dbg !5180
  store i8 %conv, i8* %3, align 1, !dbg !5181
  br label %while.cond, !dbg !5176, !llvm.loop !5182

while.end:                                        ; preds = %while.cond
  %4 = load i8*, i8** %dst.addr, align 8, !dbg !5183
  ret i8* %4, !dbg !5184
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @klee_div_zero_check(i64 %z) #15 !dbg !5185 {
entry:
  %z.addr = alloca i64, align 8
  store i64 %z, i64* %z.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %z.addr, metadata !5189, metadata !DIExpression()), !dbg !5190
  %0 = load i64, i64* %z.addr, align 8, !dbg !5191
  %cmp = icmp eq i64 %0, 0, !dbg !5193
  br i1 %cmp, label %if.then, label %if.end, !dbg !5194

if.then:                                          ; preds = %entry
  call void @klee_report_error(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.9, i64 0, i64 0), i32 14, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1.10, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.11, i64 0, i64 0)) #19, !dbg !5195
  unreachable, !dbg !5195

if.end:                                           ; preds = %entry
  ret void, !dbg !5196
}

; Function Attrs: noreturn
declare dso_local void @klee_report_error(i8*, i32, i8*, i8*) #11

attributes #0 = { noinline norecurse optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noinline optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nobuiltin allocsize(0) "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { argmemonly nounwind willreturn writeonly }
attributes #9 = { nobuiltin nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nounwind willreturn }
attributes #11 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { noinline noreturn nounwind }
attributes #13 = { argmemonly nounwind willreturn }
attributes #14 = { noreturn nounwind }
attributes #15 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #16 = { builtin allocsize(0) }
attributes #17 = { builtin nounwind }
attributes #18 = { allocsize(0) }
attributes #19 = { noreturn }

!llvm.dbg.cu = !{!2193, !89, !2235, !2296, !2298, !2300, !2302}
!llvm.ident = !{!2304, !2304, !2304, !2304, !2304, !2304, !2304}
!llvm.module.flags = !{!2305, !2306, !2307}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "inst", scope: !2, file: !3, line: 22, type: !2182, isLocal: false, isDefinition: true)
!2 = distinct !DISubprogram(name: "cpu_allocator", linkageName: "_ZN10tensorflow13cpu_allocatorEv", scope: !4, file: !3, line: 21, type: !5, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, retainedNodes: !212)
!3 = !DIFile(filename: "tensorflow/core/framework/allocator_cpu_stub.h", directory: "/home/mushfiqur/Desktop/Github/tensorflow")
!4 = !DINamespace(name: "tensorflow", scope: null)
!5 = !DISubroutineType(types: !6)
!6 = !{!7}
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!8 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Allocator", scope: !4, file: !9, line: 76, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !10, vtableHolder: !8, identifier: "_ZTSN10tensorflow9AllocatorE")
!9 = !DIFile(filename: "tensorflow/core/framework/allocatorstub.h", directory: "/home/mushfiqur/Desktop/Github/tensorflow")
!10 = !{!11, !17, !22, !26, !35, !39, !42, !47, !50, !56, !57, !60, !61, !69, !70, !73, !79, !80}
!11 = !DIDerivedType(tag: DW_TAG_member, name: "_vptr$Allocator", scope: !9, file: !9, baseType: !12, size: 64, flags: DIFlagArtificial)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "__vtbl_ptr_type", baseType: !14, size: 64)
!14 = !DISubroutineType(types: !15)
!15 = !{!16}
!16 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "kAllocatorAlignment", scope: !8, file: !9, line: 78, baseType: !18, flags: DIFlagPublic | DIFlagStaticMember, extraData: i64 64)
!18 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !20, line: 46, baseType: !21)
!20 = !DIFile(filename: "tools/llvm-project/build/lib/clang/11.1.0/include/stddef.h", directory: "/home/mushfiqur")
!21 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!22 = !DISubprogram(name: "~Allocator", scope: !8, file: !9, line: 79, type: !23, scopeLine: 79, containingType: !8, virtualIndex: 0, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!23 = !DISubroutineType(types: !24)
!24 = !{null, !25}
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!26 = !DISubprogram(name: "Name", linkageName: "_ZN10tensorflow9Allocator4NameB5cxx11Ev", scope: !8, file: !9, line: 82, type: !27, scopeLine: 82, containingType: !8, virtualIndex: 2, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!27 = !DISubroutineType(types: !28)
!28 = !{!29, !25}
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "string", scope: !31, file: !30, line: 79, baseType: !32)
!30 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/stringfwd.h", directory: "")
!31 = !DINamespace(name: "std", scope: null)
!32 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "basic_string<char, std::char_traits<char>, std::allocator<char> >", scope: !34, file: !33, line: 1627, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE")
!33 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/basic_string.tcc", directory: "")
!34 = !DINamespace(name: "__cxx11", scope: !31, exportSymbols: true)
!35 = !DISubprogram(name: "AllocateRaw", linkageName: "_ZN10tensorflow9Allocator11AllocateRawEmm", scope: !8, file: !9, line: 84, type: !36, scopeLine: 84, containingType: !8, virtualIndex: 3, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!36 = !DISubroutineType(types: !37)
!37 = !{!38, !25, !19, !19}
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!39 = !DISubprogram(name: "DeallocateRaw", linkageName: "_ZN10tensorflow9Allocator13DeallocateRawEPv", scope: !8, file: !9, line: 88, type: !40, scopeLine: 88, containingType: !8, virtualIndex: 4, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!40 = !DISubroutineType(types: !41)
!41 = !{null, !25, !38}
!42 = !DISubprogram(name: "AllocateRaw", linkageName: "_ZN10tensorflow9Allocator11AllocateRawEmmPKv", scope: !8, file: !9, line: 91, type: !43, scopeLine: 91, containingType: !8, virtualIndex: 5, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!43 = !DISubroutineType(types: !44)
!44 = !{!38, !25, !19, !19, !45}
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!47 = !DISubprogram(name: "DeallocateRaw", linkageName: "_ZN10tensorflow9Allocator13DeallocateRawEPvmm", scope: !8, file: !9, line: 95, type: !48, scopeLine: 95, containingType: !8, virtualIndex: 6, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!48 = !DISubroutineType(types: !49)
!49 = !{null, !25, !38, !19, !19}
!50 = !DISubprogram(name: "TracksAllocationSizes", linkageName: "_ZNK10tensorflow9Allocator21TracksAllocationSizesEv", scope: !8, file: !9, line: 99, type: !51, scopeLine: 99, containingType: !8, virtualIndex: 7, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!51 = !DISubroutineType(types: !52)
!52 = !{!53, !54}
!53 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!55 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!56 = !DISubprogram(name: "AllocatesOpaqueHandle", linkageName: "_ZNK10tensorflow9Allocator21AllocatesOpaqueHandleEv", scope: !8, file: !9, line: 100, type: !51, scopeLine: 100, containingType: !8, virtualIndex: 8, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!57 = !DISubprogram(name: "RequestedSize", linkageName: "_ZNK10tensorflow9Allocator13RequestedSizeEPKv", scope: !8, file: !9, line: 102, type: !58, scopeLine: 102, containingType: !8, virtualIndex: 9, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!58 = !DISubroutineType(types: !59)
!59 = !{!19, !54, !45}
!60 = !DISubprogram(name: "AllocatedSize", linkageName: "_ZNK10tensorflow9Allocator13AllocatedSizeEPKv", scope: !8, file: !9, line: 103, type: !58, scopeLine: 103, containingType: !8, virtualIndex: 10, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!61 = !DISubprogram(name: "AllocationId", linkageName: "_ZNK10tensorflow9Allocator12AllocationIdEPKv", scope: !8, file: !9, line: 104, type: !62, scopeLine: 104, containingType: !8, virtualIndex: 11, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!62 = !DISubroutineType(types: !63)
!63 = !{!64, !54, !45}
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !65, line: 27, baseType: !66)
!65 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !67, line: 43, baseType: !68)
!67 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!68 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!69 = !DISubprogram(name: "AllocatedSizeSlow", linkageName: "_ZNK10tensorflow9Allocator17AllocatedSizeSlowEPKv", scope: !8, file: !9, line: 105, type: !58, scopeLine: 105, containingType: !8, virtualIndex: 12, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!70 = !DISubprogram(name: "ClearStats", linkageName: "_ZN10tensorflow9Allocator10ClearStatsEv", scope: !8, file: !9, line: 108, type: !71, scopeLine: 108, containingType: !8, virtualIndex: 13, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!71 = !DISubroutineType(types: !72)
!72 = !{!53, !25}
!73 = !DISubprogram(name: "SetSafeFrontier", linkageName: "_ZN10tensorflow9Allocator15SetSafeFrontierEm", scope: !8, file: !9, line: 110, type: !74, scopeLine: 110, containingType: !8, virtualIndex: 14, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!74 = !DISubroutineType(types: !75)
!75 = !{null, !25, !76}
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !77, line: 27, baseType: !78)
!77 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !67, line: 44, baseType: !21)
!79 = !DISubprogram(name: "SetStreamAndPreallocateMemory", linkageName: "_ZN10tensorflow9Allocator29SetStreamAndPreallocateMemoryEPv", scope: !8, file: !9, line: 111, type: !40, scopeLine: 111, containingType: !8, virtualIndex: 15, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!80 = !DISubprogram(name: "GetMemoryType", linkageName: "_ZNK10tensorflow9Allocator13GetMemoryTypeEv", scope: !8, file: !9, line: 113, type: !81, scopeLine: 113, containingType: !8, virtualIndex: 16, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!81 = !DISubroutineType(types: !82)
!82 = !{!83, !54}
!83 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "AllocatorMemoryType", scope: !4, file: !9, line: 40, baseType: !16, size: 32, flags: DIFlagEnumClass, elements: !84, identifier: "_ZTSN10tensorflow19AllocatorMemoryTypeE")
!84 = !{!85, !86, !87, !88}
!85 = !DIEnumerator(name: "kUnknown", value: 0)
!86 = !DIEnumerator(name: "kDevice", value: 1)
!87 = !DIEnumerator(name: "kHostPageable", value: 2)
!88 = !DIEnumerator(name: "kHostPinned", value: 3)
!89 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !90, producer: "clang version 11.1.0 (https://github.com/llvm/llvm-project.git 1fdec59bffc11ae37eb51a1b9869f0696bfd5312)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !91, retainedTypes: !222, globals: !1016, imports: !1017, splitDebugInlining: false, nameTableKind: None)
!90 = !DIFile(filename: "/home/mushfiqur/Desktop/Github/tensorflow/tensorflow/c/tf_tensor.cc", directory: "/home/mushfiqur/Desktop/Github/tensorflow")
!91 = !{!92, !100, !83, !168, !204, !208, !213}
!92 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "_Lock_policy", scope: !94, file: !93, line: 49, baseType: !95, size: 32, elements: !96, identifier: "_ZTSN9__gnu_cxx12_Lock_policyE")
!93 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/ext/concurrence.h", directory: "")
!94 = !DINamespace(name: "__gnu_cxx", scope: null)
!95 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!96 = !{!97, !98, !99}
!97 = !DIEnumerator(name: "_S_single", value: 0, isUnsigned: true)
!98 = !DIEnumerator(name: "_S_mutex", value: 1, isUnsigned: true)
!99 = !DIEnumerator(name: "_S_atomic", value: 2, isUnsigned: true)
!100 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "DataType", file: !101, line: 10, baseType: !16, size: 32, elements: !102, identifier: "_ZTS8DataType")
!101 = !DIFile(filename: "tensorflow/core/framework/tensorshapestub.h", directory: "/home/mushfiqur/Desktop/Github/tensorflow")
!102 = !{!103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167}
!103 = !DIEnumerator(name: "DT_INVALID", value: 0)
!104 = !DIEnumerator(name: "DT_FLOAT", value: 1)
!105 = !DIEnumerator(name: "DT_DOUBLE", value: 2)
!106 = !DIEnumerator(name: "DT_INT32", value: 3)
!107 = !DIEnumerator(name: "DT_UINT8", value: 4)
!108 = !DIEnumerator(name: "DT_INT16", value: 5)
!109 = !DIEnumerator(name: "DT_INT8", value: 6)
!110 = !DIEnumerator(name: "DT_STRING", value: 7)
!111 = !DIEnumerator(name: "DT_COMPLEX64", value: 8)
!112 = !DIEnumerator(name: "DT_INT64", value: 9)
!113 = !DIEnumerator(name: "DT_BOOL", value: 10)
!114 = !DIEnumerator(name: "DT_QINT8", value: 11)
!115 = !DIEnumerator(name: "DT_QUINT8", value: 12)
!116 = !DIEnumerator(name: "DT_QINT32", value: 13)
!117 = !DIEnumerator(name: "DT_BFLOAT16", value: 14)
!118 = !DIEnumerator(name: "DT_QINT16", value: 15)
!119 = !DIEnumerator(name: "DT_QUINT16", value: 16)
!120 = !DIEnumerator(name: "DT_UINT16", value: 17)
!121 = !DIEnumerator(name: "DT_COMPLEX128", value: 18)
!122 = !DIEnumerator(name: "DT_HALF", value: 19)
!123 = !DIEnumerator(name: "DT_RESOURCE", value: 20)
!124 = !DIEnumerator(name: "DT_VARIANT", value: 21)
!125 = !DIEnumerator(name: "DT_UINT32", value: 22)
!126 = !DIEnumerator(name: "DT_UINT64", value: 23)
!127 = !DIEnumerator(name: "DT_FLOAT8_E5M2", value: 24)
!128 = !DIEnumerator(name: "DT_FLOAT8_E4M3FN", value: 25)
!129 = !DIEnumerator(name: "DT_FLOAT8_E4M3FNUZ", value: 26)
!130 = !DIEnumerator(name: "DT_FLOAT8_E4M3B11FNUZ", value: 27)
!131 = !DIEnumerator(name: "DT_FLOAT8_E5M2FNUZ", value: 28)
!132 = !DIEnumerator(name: "DT_INT4", value: 29)
!133 = !DIEnumerator(name: "DT_UINT4", value: 30)
!134 = !DIEnumerator(name: "DT_INT2", value: 31)
!135 = !DIEnumerator(name: "DT_UINT2", value: 32)
!136 = !DIEnumerator(name: "DT_FLOAT_REF", value: 101)
!137 = !DIEnumerator(name: "DT_DOUBLE_REF", value: 102)
!138 = !DIEnumerator(name: "DT_INT32_REF", value: 103)
!139 = !DIEnumerator(name: "DT_UINT8_REF", value: 104)
!140 = !DIEnumerator(name: "DT_INT16_REF", value: 105)
!141 = !DIEnumerator(name: "DT_INT8_REF", value: 106)
!142 = !DIEnumerator(name: "DT_STRING_REF", value: 107)
!143 = !DIEnumerator(name: "DT_COMPLEX64_REF", value: 108)
!144 = !DIEnumerator(name: "DT_INT64_REF", value: 109)
!145 = !DIEnumerator(name: "DT_BOOL_REF", value: 110)
!146 = !DIEnumerator(name: "DT_QINT8_REF", value: 111)
!147 = !DIEnumerator(name: "DT_QUINT8_REF", value: 112)
!148 = !DIEnumerator(name: "DT_QINT32_REF", value: 113)
!149 = !DIEnumerator(name: "DT_BFLOAT16_REF", value: 114)
!150 = !DIEnumerator(name: "DT_QINT16_REF", value: 115)
!151 = !DIEnumerator(name: "DT_QUINT16_REF", value: 116)
!152 = !DIEnumerator(name: "DT_UINT16_REF", value: 117)
!153 = !DIEnumerator(name: "DT_COMPLEX128_REF", value: 118)
!154 = !DIEnumerator(name: "DT_HALF_REF", value: 119)
!155 = !DIEnumerator(name: "DT_RESOURCE_REF", value: 120)
!156 = !DIEnumerator(name: "DT_VARIANT_REF", value: 121)
!157 = !DIEnumerator(name: "DT_UINT32_REF", value: 122)
!158 = !DIEnumerator(name: "DT_UINT64_REF", value: 123)
!159 = !DIEnumerator(name: "DT_FLOAT8_E5M2_REF", value: 124)
!160 = !DIEnumerator(name: "DT_FLOAT8_E4M3FN_REF", value: 125)
!161 = !DIEnumerator(name: "DT_FLOAT8_E4M3FNUZ_REF", value: 126)
!162 = !DIEnumerator(name: "DT_FLOAT8_E4M3B11FNUZ_REF", value: 127)
!163 = !DIEnumerator(name: "DT_FLOAT8_E5M2FNUZ_REF", value: 128)
!164 = !DIEnumerator(name: "DT_INT4_REF", value: 129)
!165 = !DIEnumerator(name: "DT_UINT4_REF", value: 130)
!166 = !DIEnumerator(name: "DT_INT2_REF", value: 131)
!167 = !DIEnumerator(name: "DT_UINT2_REF", value: 132)
!168 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "TF_DataType", file: !169, line: 32, baseType: !95, size: 32, elements: !170, identifier: "_ZTS11TF_DataType")
!169 = !DIFile(filename: "tensorflow/c/tf_datatype.h", directory: "/home/mushfiqur/Desktop/Github/tensorflow")
!170 = !{!171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203}
!171 = !DIEnumerator(name: "TF_FLOAT", value: 1, isUnsigned: true)
!172 = !DIEnumerator(name: "TF_DOUBLE", value: 2, isUnsigned: true)
!173 = !DIEnumerator(name: "TF_INT32", value: 3, isUnsigned: true)
!174 = !DIEnumerator(name: "TF_UINT8", value: 4, isUnsigned: true)
!175 = !DIEnumerator(name: "TF_INT16", value: 5, isUnsigned: true)
!176 = !DIEnumerator(name: "TF_INT8", value: 6, isUnsigned: true)
!177 = !DIEnumerator(name: "TF_STRING", value: 7, isUnsigned: true)
!178 = !DIEnumerator(name: "TF_COMPLEX64", value: 8, isUnsigned: true)
!179 = !DIEnumerator(name: "TF_COMPLEX", value: 8, isUnsigned: true)
!180 = !DIEnumerator(name: "TF_INT64", value: 9, isUnsigned: true)
!181 = !DIEnumerator(name: "TF_BOOL", value: 10, isUnsigned: true)
!182 = !DIEnumerator(name: "TF_QINT8", value: 11, isUnsigned: true)
!183 = !DIEnumerator(name: "TF_QUINT8", value: 12, isUnsigned: true)
!184 = !DIEnumerator(name: "TF_QINT32", value: 13, isUnsigned: true)
!185 = !DIEnumerator(name: "TF_BFLOAT16", value: 14, isUnsigned: true)
!186 = !DIEnumerator(name: "TF_QINT16", value: 15, isUnsigned: true)
!187 = !DIEnumerator(name: "TF_QUINT16", value: 16, isUnsigned: true)
!188 = !DIEnumerator(name: "TF_UINT16", value: 17, isUnsigned: true)
!189 = !DIEnumerator(name: "TF_COMPLEX128", value: 18, isUnsigned: true)
!190 = !DIEnumerator(name: "TF_HALF", value: 19, isUnsigned: true)
!191 = !DIEnumerator(name: "TF_RESOURCE", value: 20, isUnsigned: true)
!192 = !DIEnumerator(name: "TF_VARIANT", value: 21, isUnsigned: true)
!193 = !DIEnumerator(name: "TF_UINT32", value: 22, isUnsigned: true)
!194 = !DIEnumerator(name: "TF_UINT64", value: 23, isUnsigned: true)
!195 = !DIEnumerator(name: "TF_FLOAT8_E5M2", value: 24, isUnsigned: true)
!196 = !DIEnumerator(name: "TF_FLOAT8_E4M3FN", value: 25, isUnsigned: true)
!197 = !DIEnumerator(name: "TF_FLOAT8_E4M3FNUZ", value: 26, isUnsigned: true)
!198 = !DIEnumerator(name: "TF_FLOAT8_E4M3B11FNUZ", value: 27, isUnsigned: true)
!199 = !DIEnumerator(name: "TF_FLOAT8_E5M2FNUZ", value: 28, isUnsigned: true)
!200 = !DIEnumerator(name: "TF_INT4", value: 29, isUnsigned: true)
!201 = !DIEnumerator(name: "TF_UINT4", value: 30, isUnsigned: true)
!202 = !DIEnumerator(name: "TF_INT2", value: 31, isUnsigned: true)
!203 = !DIEnumerator(name: "TF_UINT2", value: 32, isUnsigned: true)
!204 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, scope: !32, file: !205, line: 177, baseType: !95, size: 32, elements: !206, identifier: "_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEUt_E")
!205 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/basic_string.h", directory: "")
!206 = !{!207}
!207 = !DIEnumerator(name: "_S_local_capacity", value: 15, isUnsigned: true)
!208 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "align_val_t", scope: !31, file: !209, line: 89, baseType: !210, size: 64, flags: DIFlagEnumClass, elements: !212, identifier: "_ZTSSt11align_val_t")
!209 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/new", directory: "")
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", scope: !31, file: !211, line: 280, baseType: !21)
!211 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/x86_64-linux-gnu/c++/11/bits/c++config.h", directory: "")
!212 = !{}
!213 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_order", scope: !31, file: !214, line: 78, baseType: !95, size: 32, elements: !215, identifier: "_ZTSSt12memory_order")
!214 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/atomic_base.h", directory: "")
!215 = !{!216, !217, !218, !219, !220, !221}
!216 = !DIEnumerator(name: "memory_order_relaxed", value: 0, isUnsigned: true)
!217 = !DIEnumerator(name: "memory_order_consume", value: 1, isUnsigned: true)
!218 = !DIEnumerator(name: "memory_order_acquire", value: 2, isUnsigned: true)
!219 = !DIEnumerator(name: "memory_order_release", value: 3, isUnsigned: true)
!220 = !DIEnumerator(name: "memory_order_acq_rel", value: 4, isUnsigned: true)
!221 = !DIEnumerator(name: "memory_order_seq_cst", value: 5, isUnsigned: true)
!222 = !{!7, !100, !223, !225, !226, !229, !208, !64, !284, !539, !210, !45, !309, !38, !559, !697, !16}
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !224, line: 97, baseType: !68)
!224 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "TF_DataType", file: !169, line: 70, baseType: !168)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!227 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !228)
!228 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", scope: !32, file: !205, line: 96, baseType: !230)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", scope: !232, file: !231, line: 59, baseType: !258)
!231 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/ext/alloc_traits.h", directory: "")
!232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__alloc_traits<std::allocator<char>, char>", scope: !94, file: !231, line: 48, size: 8, flags: DIFlagTypePassByValue, elements: !233, templateParams: !282, identifier: "_ZTSN9__gnu_cxx14__alloc_traitsISaIcEcEE")
!233 = !{!234, !266, !271, !275, !278, !279, !280, !281}
!234 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !232, baseType: !235, extraData: i32 0)
!235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "allocator_traits<std::allocator<char> >", scope: !31, file: !236, line: 411, size: 8, flags: DIFlagTypePassByValue, elements: !237, templateParams: !264, identifier: "_ZTSSt16allocator_traitsISaIcEE")
!236 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/alloc_traits.h", directory: "")
!237 = !{!238, !248, !252, !255, !261}
!238 = !DISubprogram(name: "allocate", linkageName: "_ZNSt16allocator_traitsISaIcEE8allocateERS0_m", scope: !235, file: !236, line: 463, type: !239, scopeLine: 463, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!239 = !DISubroutineType(types: !240)
!240 = !{!241, !243, !247}
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !235, file: !236, line: 420, baseType: !242)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!243 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !244, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocator_type", scope: !235, file: !236, line: 414, baseType: !245)
!245 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "allocator<char>", scope: !31, file: !246, line: 261, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSaIcE")
!246 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/allocator.h", directory: "")
!247 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", file: !236, line: 435, baseType: !210)
!248 = !DISubprogram(name: "allocate", linkageName: "_ZNSt16allocator_traitsISaIcEE8allocateERS0_mPKv", scope: !235, file: !236, line: 477, type: !249, scopeLine: 477, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!249 = !DISubroutineType(types: !250)
!250 = !{!241, !243, !247, !251}
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_void_pointer", file: !236, line: 429, baseType: !45)
!252 = !DISubprogram(name: "deallocate", linkageName: "_ZNSt16allocator_traitsISaIcEE10deallocateERS0_Pcm", scope: !235, file: !236, line: 495, type: !253, scopeLine: 495, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!253 = !DISubroutineType(types: !254)
!254 = !{null, !243, !241, !247}
!255 = !DISubprogram(name: "max_size", linkageName: "_ZNSt16allocator_traitsISaIcEE8max_sizeERKS0_", scope: !235, file: !236, line: 547, type: !256, scopeLine: 547, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!256 = !DISubroutineType(types: !257)
!257 = !{!258, !259}
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", scope: !235, file: !236, line: 435, baseType: !210)
!259 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !260, size: 64)
!260 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !244)
!261 = !DISubprogram(name: "select_on_container_copy_construction", linkageName: "_ZNSt16allocator_traitsISaIcEE37select_on_container_copy_constructionERKS0_", scope: !235, file: !236, line: 562, type: !262, scopeLine: 562, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!262 = !DISubroutineType(types: !263)
!263 = !{!244, !259}
!264 = !{!265}
!265 = !DITemplateTypeParameter(name: "_Alloc", type: !245)
!266 = !DISubprogram(name: "_S_select_on_copy", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaIcEcE17_S_select_on_copyERKS1_", scope: !232, file: !231, line: 97, type: !267, scopeLine: 97, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!267 = !DISubroutineType(types: !268)
!268 = !{!245, !269}
!269 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !270, size: 64)
!270 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !245)
!271 = !DISubprogram(name: "_S_on_swap", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaIcEcE10_S_on_swapERS1_S3_", scope: !232, file: !231, line: 100, type: !272, scopeLine: 100, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!272 = !DISubroutineType(types: !273)
!273 = !{null, !274, !274}
!274 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !245, size: 64)
!275 = !DISubprogram(name: "_S_propagate_on_copy_assign", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaIcEcE27_S_propagate_on_copy_assignEv", scope: !232, file: !231, line: 103, type: !276, scopeLine: 103, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!276 = !DISubroutineType(types: !277)
!277 = !{!53}
!278 = !DISubprogram(name: "_S_propagate_on_move_assign", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaIcEcE27_S_propagate_on_move_assignEv", scope: !232, file: !231, line: 106, type: !276, scopeLine: 106, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!279 = !DISubprogram(name: "_S_propagate_on_swap", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaIcEcE20_S_propagate_on_swapEv", scope: !232, file: !231, line: 109, type: !276, scopeLine: 109, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!280 = !DISubprogram(name: "_S_always_equal", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaIcEcE15_S_always_equalEv", scope: !232, file: !231, line: 112, type: !276, scopeLine: 112, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!281 = !DISubprogram(name: "_S_nothrow_move", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaIcEcE15_S_nothrow_moveEv", scope: !232, file: !231, line: 115, type: !276, scopeLine: 115, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!282 = !{!265, !283}
!283 = !DITemplateTypeParameter(type: !228)
!284 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "TensorShape", scope: !4, file: !101, line: 147, size: 256, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !285, identifier: "_ZTSN10tensorflow11TensorShapeE")
!285 = !{!286, !887, !888, !895, !899, !902, !905, !908, !913, !916, !963, !966, !972, !998, !1003, !1006, !1009, !1012, !1015}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "dims_", scope: !284, file: !101, line: 253, baseType: !287, size: 192)
!287 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "vector<long, std::allocator<long> >", scope: !31, file: !288, line: 389, size: 192, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !289, templateParams: !497, identifier: "_ZTSSt6vectorIlSaIlEE")
!288 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/stl_vector.h", directory: "")
!289 = !{!290, !498, !517, !533, !534, !540, !543, !546, !550, !556, !560, !566, !571, !575, !578, !581, !584, !587, !616, !617, !621, !624, !627, !630, !633, !694, !752, !753, !754, !759, !764, !765, !766, !767, !768, !769, !770, !773, !774, !777, !778, !779, !780, !783, !784, !792, !799, !802, !803, !804, !807, !810, !811, !812, !815, !818, !821, !825, !826, !829, !832, !835, !838, !841, !844, !847, !848, !849, !850, !851, !854, !855, !858, !859, !860, !864, !867, !872, !875, !878, !881, !884}
!290 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !287, baseType: !291, flags: DIFlagProtected, extraData: i32 0)
!291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Vector_base<long, std::allocator<long> >", scope: !31, file: !288, line: 84, size: 192, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !292, templateParams: !497, identifier: "_ZTSSt12_Vector_baseIlSaIlEE")
!292 = !{!293, !448, !453, !458, !462, !465, !470, !473, !476, !480, !483, !486, !489, !490, !493, !496}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "_M_impl", scope: !291, file: !288, line: 340, baseType: !294, size: 192)
!294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Vector_impl", scope: !291, file: !288, line: 128, size: 192, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !295, identifier: "_ZTSNSt12_Vector_baseIlSaIlEE12_Vector_implE")
!295 = !{!296, !403, !428, !432, !437, !441, !445}
!296 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !294, baseType: !297, extraData: i32 0)
!297 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Tp_alloc_type", scope: !291, file: !288, line: 87, baseType: !298)
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "other", scope: !299, file: !231, line: 120, baseType: !402)
!299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rebind<long>", scope: !300, file: !231, line: 119, size: 8, flags: DIFlagTypePassByValue, elements: !212, templateParams: !356, identifier: "_ZTSN9__gnu_cxx14__alloc_traitsISaIlElE6rebindIlEE")
!300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__alloc_traits<std::allocator<long>, long>", scope: !94, file: !231, line: 48, size: 8, flags: DIFlagTypePassByValue, elements: !301, templateParams: !400, identifier: "_ZTSN9__gnu_cxx14__alloc_traitsISaIlElEE")
!301 = !{!302, !389, !392, !395, !396, !397, !398, !399}
!302 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !300, baseType: !303, extraData: i32 0)
!303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "allocator_traits<std::allocator<long> >", scope: !31, file: !236, line: 411, size: 8, flags: DIFlagTypePassByValue, elements: !304, templateParams: !387, identifier: "_ZTSSt16allocator_traitsISaIlEE")
!304 = !{!305, !372, !375, !378, !384}
!305 = !DISubprogram(name: "allocate", linkageName: "_ZNSt16allocator_traitsISaIlEE8allocateERS0_m", scope: !303, file: !236, line: 463, type: !306, scopeLine: 463, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!306 = !DISubroutineType(types: !307)
!307 = !{!308, !310, !247}
!308 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !303, file: !236, line: 420, baseType: !309)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!310 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !311, size: 64)
!311 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocator_type", scope: !303, file: !236, line: 414, baseType: !312)
!312 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "allocator<long>", scope: !31, file: !246, line: 124, size: 8, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !313, templateParams: !356, identifier: "_ZTSSaIlE")
!313 = !{!314, !358, !362, !367, !371}
!314 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !312, baseType: !315, flags: DIFlagPublic, extraData: i32 0)
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "__allocator_base<long>", scope: !31, file: !316, line: 48, baseType: !317)
!316 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/x86_64-linux-gnu/c++/11/bits/c++allocator.h", directory: "")
!317 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "new_allocator<long>", scope: !94, file: !318, line: 55, size: 8, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !319, templateParams: !356, identifier: "_ZTSN9__gnu_cxx13new_allocatorIlEE")
!318 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/ext/new_allocator.h", directory: "")
!319 = !{!320, !324, !329, !330, !337, !345, !349, !352, !355}
!320 = !DISubprogram(name: "new_allocator", scope: !317, file: !318, line: 79, type: !321, scopeLine: 79, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!321 = !DISubroutineType(types: !322)
!322 = !{null, !323}
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!324 = !DISubprogram(name: "new_allocator", scope: !317, file: !318, line: 82, type: !325, scopeLine: 82, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!325 = !DISubroutineType(types: !326)
!326 = !{null, !323, !327}
!327 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !328, size: 64)
!328 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !317)
!329 = !DISubprogram(name: "~new_allocator", scope: !317, file: !318, line: 89, type: !321, scopeLine: 89, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!330 = !DISubprogram(name: "address", linkageName: "_ZNK9__gnu_cxx13new_allocatorIlE7addressERl", scope: !317, file: !318, line: 92, type: !331, scopeLine: 92, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!331 = !DISubroutineType(types: !332)
!332 = !{!333, !334, !335}
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !317, file: !318, line: 62, baseType: !309)
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !317, file: !318, line: 64, baseType: !336)
!336 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !68, size: 64)
!337 = !DISubprogram(name: "address", linkageName: "_ZNK9__gnu_cxx13new_allocatorIlE7addressERKl", scope: !317, file: !318, line: 96, type: !338, scopeLine: 96, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!338 = !DISubroutineType(types: !339)
!339 = !{!340, !334, !343}
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_pointer", scope: !317, file: !318, line: 63, baseType: !341)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!342 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !68)
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reference", scope: !317, file: !318, line: 65, baseType: !344)
!344 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !342, size: 64)
!345 = !DISubprogram(name: "allocate", linkageName: "_ZN9__gnu_cxx13new_allocatorIlE8allocateEmPKv", scope: !317, file: !318, line: 103, type: !346, scopeLine: 103, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!346 = !DISubroutineType(types: !347)
!347 = !{!309, !323, !348, !45}
!348 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", file: !318, line: 59, baseType: !210)
!349 = !DISubprogram(name: "deallocate", linkageName: "_ZN9__gnu_cxx13new_allocatorIlE10deallocateEPlm", scope: !317, file: !318, line: 132, type: !350, scopeLine: 132, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!350 = !DISubroutineType(types: !351)
!351 = !{null, !323, !309, !348}
!352 = !DISubprogram(name: "max_size", linkageName: "_ZNK9__gnu_cxx13new_allocatorIlE8max_sizeEv", scope: !317, file: !318, line: 154, type: !353, scopeLine: 154, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!353 = !DISubroutineType(types: !354)
!354 = !{!348, !334}
!355 = !DISubprogram(name: "_M_max_size", linkageName: "_ZNK9__gnu_cxx13new_allocatorIlE11_M_max_sizeEv", scope: !317, file: !318, line: 197, type: !353, scopeLine: 197, flags: DIFlagPrototyped, spFlags: 0)
!356 = !{!357}
!357 = !DITemplateTypeParameter(name: "_Tp", type: !68)
!358 = !DISubprogram(name: "allocator", scope: !312, file: !246, line: 156, type: !359, scopeLine: 156, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!359 = !DISubroutineType(types: !360)
!360 = !{null, !361}
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!362 = !DISubprogram(name: "allocator", scope: !312, file: !246, line: 159, type: !363, scopeLine: 159, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!363 = !DISubroutineType(types: !364)
!364 = !{null, !361, !365}
!365 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !366, size: 64)
!366 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !312)
!367 = !DISubprogram(name: "operator=", linkageName: "_ZNSaIlEaSERKS_", scope: !312, file: !246, line: 164, type: !368, scopeLine: 164, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!368 = !DISubroutineType(types: !369)
!369 = !{!370, !361, !365}
!370 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !312, size: 64)
!371 = !DISubprogram(name: "~allocator", scope: !312, file: !246, line: 174, type: !359, scopeLine: 174, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!372 = !DISubprogram(name: "allocate", linkageName: "_ZNSt16allocator_traitsISaIlEE8allocateERS0_mPKv", scope: !303, file: !236, line: 477, type: !373, scopeLine: 477, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!373 = !DISubroutineType(types: !374)
!374 = !{!308, !310, !247, !251}
!375 = !DISubprogram(name: "deallocate", linkageName: "_ZNSt16allocator_traitsISaIlEE10deallocateERS0_Plm", scope: !303, file: !236, line: 495, type: !376, scopeLine: 495, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!376 = !DISubroutineType(types: !377)
!377 = !{null, !310, !308, !247}
!378 = !DISubprogram(name: "max_size", linkageName: "_ZNSt16allocator_traitsISaIlEE8max_sizeERKS0_", scope: !303, file: !236, line: 547, type: !379, scopeLine: 547, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!379 = !DISubroutineType(types: !380)
!380 = !{!381, !382}
!381 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", scope: !303, file: !236, line: 435, baseType: !210)
!382 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !383, size: 64)
!383 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !311)
!384 = !DISubprogram(name: "select_on_container_copy_construction", linkageName: "_ZNSt16allocator_traitsISaIlEE37select_on_container_copy_constructionERKS0_", scope: !303, file: !236, line: 562, type: !385, scopeLine: 562, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!385 = !DISubroutineType(types: !386)
!386 = !{!311, !382}
!387 = !{!388}
!388 = !DITemplateTypeParameter(name: "_Alloc", type: !312)
!389 = !DISubprogram(name: "_S_select_on_copy", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaIlElE17_S_select_on_copyERKS1_", scope: !300, file: !231, line: 97, type: !390, scopeLine: 97, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!390 = !DISubroutineType(types: !391)
!391 = !{!312, !365}
!392 = !DISubprogram(name: "_S_on_swap", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaIlElE10_S_on_swapERS1_S3_", scope: !300, file: !231, line: 100, type: !393, scopeLine: 100, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!393 = !DISubroutineType(types: !394)
!394 = !{null, !370, !370}
!395 = !DISubprogram(name: "_S_propagate_on_copy_assign", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaIlElE27_S_propagate_on_copy_assignEv", scope: !300, file: !231, line: 103, type: !276, scopeLine: 103, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!396 = !DISubprogram(name: "_S_propagate_on_move_assign", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaIlElE27_S_propagate_on_move_assignEv", scope: !300, file: !231, line: 106, type: !276, scopeLine: 106, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!397 = !DISubprogram(name: "_S_propagate_on_swap", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaIlElE20_S_propagate_on_swapEv", scope: !300, file: !231, line: 109, type: !276, scopeLine: 109, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!398 = !DISubprogram(name: "_S_always_equal", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaIlElE15_S_always_equalEv", scope: !300, file: !231, line: 112, type: !276, scopeLine: 112, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!399 = !DISubprogram(name: "_S_nothrow_move", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaIlElE15_S_nothrow_moveEv", scope: !300, file: !231, line: 115, type: !276, scopeLine: 115, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!400 = !{!388, !401}
!401 = !DITemplateTypeParameter(type: !68)
!402 = !DIDerivedType(tag: DW_TAG_typedef, name: "rebind_alloc<long>", scope: !303, file: !236, line: 450, baseType: !312)
!403 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !294, baseType: !404, extraData: i32 0)
!404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Vector_impl_data", scope: !291, file: !288, line: 91, size: 192, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !405, identifier: "_ZTSNSt12_Vector_baseIlSaIlEE17_Vector_impl_dataE")
!405 = !{!406, !409, !410, !411, !415, !419, !424}
!406 = !DIDerivedType(tag: DW_TAG_member, name: "_M_start", scope: !404, file: !288, line: 93, baseType: !407, size: 64)
!407 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !291, file: !288, line: 89, baseType: !408)
!408 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !300, file: !231, line: 57, baseType: !308)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "_M_finish", scope: !404, file: !288, line: 94, baseType: !407, size: 64, offset: 64)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "_M_end_of_storage", scope: !404, file: !288, line: 95, baseType: !407, size: 64, offset: 128)
!411 = !DISubprogram(name: "_Vector_impl_data", scope: !404, file: !288, line: 97, type: !412, scopeLine: 97, flags: DIFlagPrototyped, spFlags: 0)
!412 = !DISubroutineType(types: !413)
!413 = !{null, !414}
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!415 = !DISubprogram(name: "_Vector_impl_data", scope: !404, file: !288, line: 102, type: !416, scopeLine: 102, flags: DIFlagPrototyped, spFlags: 0)
!416 = !DISubroutineType(types: !417)
!417 = !{null, !414, !418}
!418 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !404, size: 64)
!419 = !DISubprogram(name: "_M_copy_data", linkageName: "_ZNSt12_Vector_baseIlSaIlEE17_Vector_impl_data12_M_copy_dataERKS2_", scope: !404, file: !288, line: 109, type: !420, scopeLine: 109, flags: DIFlagPrototyped, spFlags: 0)
!420 = !DISubroutineType(types: !421)
!421 = !{null, !414, !422}
!422 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !423, size: 64)
!423 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !404)
!424 = !DISubprogram(name: "_M_swap_data", linkageName: "_ZNSt12_Vector_baseIlSaIlEE17_Vector_impl_data12_M_swap_dataERS2_", scope: !404, file: !288, line: 117, type: !425, scopeLine: 117, flags: DIFlagPrototyped, spFlags: 0)
!425 = !DISubroutineType(types: !426)
!426 = !{null, !414, !427}
!427 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !404, size: 64)
!428 = !DISubprogram(name: "_Vector_impl", scope: !294, file: !288, line: 131, type: !429, scopeLine: 131, flags: DIFlagPrototyped, spFlags: 0)
!429 = !DISubroutineType(types: !430)
!430 = !{null, !431}
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!432 = !DISubprogram(name: "_Vector_impl", scope: !294, file: !288, line: 136, type: !433, scopeLine: 136, flags: DIFlagPrototyped, spFlags: 0)
!433 = !DISubroutineType(types: !434)
!434 = !{null, !431, !435}
!435 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !436, size: 64)
!436 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !297)
!437 = !DISubprogram(name: "_Vector_impl", scope: !294, file: !288, line: 143, type: !438, scopeLine: 143, flags: DIFlagPrototyped, spFlags: 0)
!438 = !DISubroutineType(types: !439)
!439 = !{null, !431, !440}
!440 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !294, size: 64)
!441 = !DISubprogram(name: "_Vector_impl", scope: !294, file: !288, line: 147, type: !442, scopeLine: 147, flags: DIFlagPrototyped, spFlags: 0)
!442 = !DISubroutineType(types: !443)
!443 = !{null, !431, !444}
!444 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !297, size: 64)
!445 = !DISubprogram(name: "_Vector_impl", scope: !294, file: !288, line: 151, type: !446, scopeLine: 151, flags: DIFlagPrototyped, spFlags: 0)
!446 = !DISubroutineType(types: !447)
!447 = !{null, !431, !444, !440}
!448 = !DISubprogram(name: "_M_get_Tp_allocator", linkageName: "_ZNSt12_Vector_baseIlSaIlEE19_M_get_Tp_allocatorEv", scope: !291, file: !288, line: 276, type: !449, scopeLine: 276, flags: DIFlagPrototyped, spFlags: 0)
!449 = !DISubroutineType(types: !450)
!450 = !{!451, !452}
!451 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !297, size: 64)
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!453 = !DISubprogram(name: "_M_get_Tp_allocator", linkageName: "_ZNKSt12_Vector_baseIlSaIlEE19_M_get_Tp_allocatorEv", scope: !291, file: !288, line: 280, type: !454, scopeLine: 280, flags: DIFlagPrototyped, spFlags: 0)
!454 = !DISubroutineType(types: !455)
!455 = !{!435, !456}
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!457 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !291)
!458 = !DISubprogram(name: "get_allocator", linkageName: "_ZNKSt12_Vector_baseIlSaIlEE13get_allocatorEv", scope: !291, file: !288, line: 284, type: !459, scopeLine: 284, flags: DIFlagPrototyped, spFlags: 0)
!459 = !DISubroutineType(types: !460)
!460 = !{!461, !456}
!461 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocator_type", scope: !291, file: !288, line: 273, baseType: !312)
!462 = !DISubprogram(name: "_Vector_base", scope: !291, file: !288, line: 288, type: !463, scopeLine: 288, flags: DIFlagPrototyped, spFlags: 0)
!463 = !DISubroutineType(types: !464)
!464 = !{null, !452}
!465 = !DISubprogram(name: "_Vector_base", scope: !291, file: !288, line: 293, type: !466, scopeLine: 293, flags: DIFlagPrototyped, spFlags: 0)
!466 = !DISubroutineType(types: !467)
!467 = !{null, !452, !468}
!468 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !469, size: 64)
!469 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !461)
!470 = !DISubprogram(name: "_Vector_base", scope: !291, file: !288, line: 298, type: !471, scopeLine: 298, flags: DIFlagPrototyped, spFlags: 0)
!471 = !DISubroutineType(types: !472)
!472 = !{null, !452, !210}
!473 = !DISubprogram(name: "_Vector_base", scope: !291, file: !288, line: 303, type: !474, scopeLine: 303, flags: DIFlagPrototyped, spFlags: 0)
!474 = !DISubroutineType(types: !475)
!475 = !{null, !452, !210, !468}
!476 = !DISubprogram(name: "_Vector_base", scope: !291, file: !288, line: 308, type: !477, scopeLine: 308, flags: DIFlagPrototyped, spFlags: 0)
!477 = !DISubroutineType(types: !478)
!478 = !{null, !452, !479}
!479 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !291, size: 64)
!480 = !DISubprogram(name: "_Vector_base", scope: !291, file: !288, line: 312, type: !481, scopeLine: 312, flags: DIFlagPrototyped, spFlags: 0)
!481 = !DISubroutineType(types: !482)
!482 = !{null, !452, !444}
!483 = !DISubprogram(name: "_Vector_base", scope: !291, file: !288, line: 315, type: !484, scopeLine: 315, flags: DIFlagPrototyped, spFlags: 0)
!484 = !DISubroutineType(types: !485)
!485 = !{null, !452, !479, !468}
!486 = !DISubprogram(name: "_Vector_base", scope: !291, file: !288, line: 328, type: !487, scopeLine: 328, flags: DIFlagPrototyped, spFlags: 0)
!487 = !DISubroutineType(types: !488)
!488 = !{null, !452, !468, !479}
!489 = !DISubprogram(name: "~_Vector_base", scope: !291, file: !288, line: 333, type: !463, scopeLine: 333, flags: DIFlagPrototyped, spFlags: 0)
!490 = !DISubprogram(name: "_M_allocate", linkageName: "_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm", scope: !291, file: !288, line: 343, type: !491, scopeLine: 343, flags: DIFlagPrototyped, spFlags: 0)
!491 = !DISubroutineType(types: !492)
!492 = !{!407, !452, !210}
!493 = !DISubprogram(name: "_M_deallocate", linkageName: "_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm", scope: !291, file: !288, line: 350, type: !494, scopeLine: 350, flags: DIFlagPrototyped, spFlags: 0)
!494 = !DISubroutineType(types: !495)
!495 = !{null, !452, !407, !210}
!496 = !DISubprogram(name: "_M_create_storage", linkageName: "_ZNSt12_Vector_baseIlSaIlEE17_M_create_storageEm", scope: !291, file: !288, line: 359, type: !471, scopeLine: 359, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!497 = !{!357, !388}
!498 = !DISubprogram(name: "_S_nothrow_relocate", linkageName: "_ZNSt6vectorIlSaIlEE19_S_nothrow_relocateESt17integral_constantIbLb1EE", scope: !287, file: !288, line: 431, type: !499, scopeLine: 431, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!499 = !DISubroutineType(types: !500)
!500 = !{!53, !501}
!501 = !DIDerivedType(tag: DW_TAG_typedef, name: "true_type", scope: !31, file: !502, line: 83, baseType: !503)
!502 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/type_traits", directory: "")
!503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "integral_constant<bool, true>", scope: !31, file: !502, line: 65, size: 8, flags: DIFlagTypePassByValue, elements: !504, templateParams: !514, identifier: "_ZTSSt17integral_constantIbLb1EE")
!504 = !{!505, !507, !513}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !503, file: !502, line: 67, baseType: !506, flags: DIFlagStaticMember, extraData: i1 true)
!506 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !53)
!507 = !DISubprogram(name: "operator bool", linkageName: "_ZNKSt17integral_constantIbLb1EEcvbEv", scope: !503, file: !502, line: 70, type: !508, scopeLine: 70, flags: DIFlagPrototyped, spFlags: 0)
!508 = !DISubroutineType(types: !509)
!509 = !{!510, !511}
!510 = !DIDerivedType(tag: DW_TAG_typedef, name: "value_type", scope: !503, file: !502, line: 68, baseType: !53)
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!512 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !503)
!513 = !DISubprogram(name: "operator()", linkageName: "_ZNKSt17integral_constantIbLb1EEclEv", scope: !503, file: !502, line: 75, type: !508, scopeLine: 75, flags: DIFlagPrototyped, spFlags: 0)
!514 = !{!515, !516}
!515 = !DITemplateTypeParameter(name: "_Tp", type: !53)
!516 = !DITemplateValueParameter(name: "__v", type: !53, value: i1 true)
!517 = !DISubprogram(name: "_S_nothrow_relocate", linkageName: "_ZNSt6vectorIlSaIlEE19_S_nothrow_relocateESt17integral_constantIbLb0EE", scope: !287, file: !288, line: 440, type: !518, scopeLine: 440, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!518 = !DISubroutineType(types: !519)
!519 = !{!53, !520}
!520 = !DIDerivedType(tag: DW_TAG_typedef, name: "false_type", scope: !31, file: !502, line: 86, baseType: !521)
!521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "integral_constant<bool, false>", scope: !31, file: !502, line: 65, size: 8, flags: DIFlagTypePassByValue, elements: !522, templateParams: !531, identifier: "_ZTSSt17integral_constantIbLb0EE")
!522 = !{!523, !524, !530}
!523 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !521, file: !502, line: 67, baseType: !506, flags: DIFlagStaticMember, extraData: i1 false)
!524 = !DISubprogram(name: "operator bool", linkageName: "_ZNKSt17integral_constantIbLb0EEcvbEv", scope: !521, file: !502, line: 70, type: !525, scopeLine: 70, flags: DIFlagPrototyped, spFlags: 0)
!525 = !DISubroutineType(types: !526)
!526 = !{!527, !528}
!527 = !DIDerivedType(tag: DW_TAG_typedef, name: "value_type", scope: !521, file: !502, line: 68, baseType: !53)
!528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!529 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !521)
!530 = !DISubprogram(name: "operator()", linkageName: "_ZNKSt17integral_constantIbLb0EEclEv", scope: !521, file: !502, line: 75, type: !525, scopeLine: 75, flags: DIFlagPrototyped, spFlags: 0)
!531 = !{!515, !532}
!532 = !DITemplateValueParameter(name: "__v", type: !53, value: i1 false)
!533 = !DISubprogram(name: "_S_use_relocate", linkageName: "_ZNSt6vectorIlSaIlEE15_S_use_relocateEv", scope: !287, file: !288, line: 444, type: !276, scopeLine: 444, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!534 = !DISubprogram(name: "_S_do_relocate", linkageName: "_ZNSt6vectorIlSaIlEE14_S_do_relocateEPlS2_S2_RS0_St17integral_constantIbLb1EE", scope: !287, file: !288, line: 453, type: !535, scopeLine: 453, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!535 = !DISubroutineType(types: !536)
!536 = !{!537, !537, !537, !537, !538, !501}
!537 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !287, file: !288, line: 415, baseType: !407)
!538 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !539, size: 64)
!539 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Tp_alloc_type", scope: !287, file: !288, line: 410, baseType: !297)
!540 = !DISubprogram(name: "_S_do_relocate", linkageName: "_ZNSt6vectorIlSaIlEE14_S_do_relocateEPlS2_S2_RS0_St17integral_constantIbLb0EE", scope: !287, file: !288, line: 460, type: !541, scopeLine: 460, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!541 = !DISubroutineType(types: !542)
!542 = !{!537, !537, !537, !537, !538, !520}
!543 = !DISubprogram(name: "_S_relocate", linkageName: "_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_", scope: !287, file: !288, line: 465, type: !544, scopeLine: 465, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!544 = !DISubroutineType(types: !545)
!545 = !{!537, !537, !537, !537, !538}
!546 = !DISubprogram(name: "vector", scope: !287, file: !288, line: 487, type: !547, scopeLine: 487, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!547 = !DISubroutineType(types: !548)
!548 = !{null, !549}
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!550 = !DISubprogram(name: "vector", scope: !287, file: !288, line: 497, type: !551, scopeLine: 497, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!551 = !DISubroutineType(types: !552)
!552 = !{null, !549, !553}
!553 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !554, size: 64)
!554 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !555)
!555 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocator_type", scope: !287, file: !288, line: 426, baseType: !312)
!556 = !DISubprogram(name: "vector", scope: !287, file: !288, line: 510, type: !557, scopeLine: 510, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!557 = !DISubroutineType(types: !558)
!558 = !{null, !549, !559, !553}
!559 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", file: !288, line: 424, baseType: !210)
!560 = !DISubprogram(name: "vector", scope: !287, file: !288, line: 522, type: !561, scopeLine: 522, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!561 = !DISubroutineType(types: !562)
!562 = !{null, !549, !559, !563, !553}
!563 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !564, size: 64)
!564 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !565)
!565 = !DIDerivedType(tag: DW_TAG_typedef, name: "value_type", scope: !287, file: !288, line: 414, baseType: !68)
!566 = !DISubprogram(name: "vector", scope: !287, file: !288, line: 553, type: !567, scopeLine: 553, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!567 = !DISubroutineType(types: !568)
!568 = !{null, !549, !569}
!569 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !570, size: 64)
!570 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !287)
!571 = !DISubprogram(name: "vector", scope: !287, file: !288, line: 572, type: !572, scopeLine: 572, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!572 = !DISubroutineType(types: !573)
!573 = !{null, !549, !574}
!574 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !287, size: 64)
!575 = !DISubprogram(name: "vector", scope: !287, file: !288, line: 575, type: !576, scopeLine: 575, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!576 = !DISubroutineType(types: !577)
!577 = !{null, !549, !569, !553}
!578 = !DISubprogram(name: "vector", scope: !287, file: !288, line: 585, type: !579, scopeLine: 585, flags: DIFlagPrototyped, spFlags: 0)
!579 = !DISubroutineType(types: !580)
!580 = !{null, !549, !574, !553, !501}
!581 = !DISubprogram(name: "vector", scope: !287, file: !288, line: 589, type: !582, scopeLine: 589, flags: DIFlagPrototyped, spFlags: 0)
!582 = !DISubroutineType(types: !583)
!583 = !{null, !549, !574, !553, !520}
!584 = !DISubprogram(name: "vector", scope: !287, file: !288, line: 607, type: !585, scopeLine: 607, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!585 = !DISubroutineType(types: !586)
!586 = !{null, !549, !574, !553}
!587 = !DISubprogram(name: "vector", scope: !287, file: !288, line: 625, type: !588, scopeLine: 625, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!588 = !DISubroutineType(types: !589)
!589 = !{null, !549, !590, !553}
!590 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "initializer_list<long>", scope: !31, file: !591, line: 47, size: 128, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !592, templateParams: !614, identifier: "_ZTSSt16initializer_listIlE")
!591 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/initializer_list", directory: "")
!592 = !{!593, !595, !597, !602, !605, !610, !613}
!593 = !DIDerivedType(tag: DW_TAG_member, name: "_M_array", scope: !590, file: !591, line: 58, baseType: !594, size: 64)
!594 = !DIDerivedType(tag: DW_TAG_typedef, name: "iterator", scope: !590, file: !591, line: 54, baseType: !341)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "_M_len", scope: !590, file: !591, line: 59, baseType: !596, size: 64, offset: 64)
!596 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", file: !591, line: 53, baseType: !210)
!597 = !DISubprogram(name: "initializer_list", scope: !590, file: !591, line: 62, type: !598, scopeLine: 62, flags: DIFlagPrototyped, spFlags: 0)
!598 = !DISubroutineType(types: !599)
!599 = !{null, !600, !601, !596}
!600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!601 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_iterator", scope: !590, file: !591, line: 55, baseType: !341)
!602 = !DISubprogram(name: "initializer_list", scope: !590, file: !591, line: 66, type: !603, scopeLine: 66, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!603 = !DISubroutineType(types: !604)
!604 = !{null, !600}
!605 = !DISubprogram(name: "size", linkageName: "_ZNKSt16initializer_listIlE4sizeEv", scope: !590, file: !591, line: 71, type: !606, scopeLine: 71, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!606 = !DISubroutineType(types: !607)
!607 = !{!596, !608}
!608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !609, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!609 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !590)
!610 = !DISubprogram(name: "begin", linkageName: "_ZNKSt16initializer_listIlE5beginEv", scope: !590, file: !591, line: 75, type: !611, scopeLine: 75, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!611 = !DISubroutineType(types: !612)
!612 = !{!601, !608}
!613 = !DISubprogram(name: "end", linkageName: "_ZNKSt16initializer_listIlE3endEv", scope: !590, file: !591, line: 79, type: !611, scopeLine: 79, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!614 = !{!615}
!615 = !DITemplateTypeParameter(name: "_E", type: !68)
!616 = !DISubprogram(name: "~vector", scope: !287, file: !288, line: 678, type: !547, scopeLine: 678, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!617 = !DISubprogram(name: "operator=", linkageName: "_ZNSt6vectorIlSaIlEEaSERKS1_", scope: !287, file: !288, line: 695, type: !618, scopeLine: 695, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!618 = !DISubroutineType(types: !619)
!619 = !{!620, !549, !569}
!620 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !287, size: 64)
!621 = !DISubprogram(name: "operator=", linkageName: "_ZNSt6vectorIlSaIlEEaSEOS1_", scope: !287, file: !288, line: 709, type: !622, scopeLine: 709, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!622 = !DISubroutineType(types: !623)
!623 = !{!620, !549, !574}
!624 = !DISubprogram(name: "operator=", linkageName: "_ZNSt6vectorIlSaIlEEaSESt16initializer_listIlE", scope: !287, file: !288, line: 730, type: !625, scopeLine: 730, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!625 = !DISubroutineType(types: !626)
!626 = !{!620, !549, !590}
!627 = !DISubprogram(name: "assign", linkageName: "_ZNSt6vectorIlSaIlEE6assignEmRKl", scope: !287, file: !288, line: 749, type: !628, scopeLine: 749, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!628 = !DISubroutineType(types: !629)
!629 = !{null, !549, !559, !563}
!630 = !DISubprogram(name: "assign", linkageName: "_ZNSt6vectorIlSaIlEE6assignESt16initializer_listIlE", scope: !287, file: !288, line: 794, type: !631, scopeLine: 794, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!631 = !DISubroutineType(types: !632)
!632 = !{null, !549, !590}
!633 = !DISubprogram(name: "begin", linkageName: "_ZNSt6vectorIlSaIlEE5beginEv", scope: !287, file: !288, line: 811, type: !634, scopeLine: 811, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!634 = !DISubroutineType(types: !635)
!635 = !{!636, !549}
!636 = !DIDerivedType(tag: DW_TAG_typedef, name: "iterator", scope: !287, file: !288, line: 419, baseType: !637)
!637 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__normal_iterator<long *, std::vector<long, std::allocator<long> > >", scope: !94, file: !638, line: 1004, size: 64, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !639, templateParams: !692, identifier: "_ZTSN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEE")
!638 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/stl_iterator.h", directory: "")
!639 = !{!640, !641, !645, !650, !661, !666, !670, !673, !674, !675, !681, !684, !687, !688, !689}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "_M_current", scope: !637, file: !638, line: 1007, baseType: !309, size: 64, flags: DIFlagProtected)
!641 = !DISubprogram(name: "__normal_iterator", scope: !637, file: !638, line: 1023, type: !642, scopeLine: 1023, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!642 = !DISubroutineType(types: !643)
!643 = !{null, !644}
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!645 = !DISubprogram(name: "__normal_iterator", scope: !637, file: !638, line: 1027, type: !646, scopeLine: 1027, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!646 = !DISubroutineType(types: !647)
!647 = !{null, !644, !648}
!648 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !649, size: 64)
!649 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !309)
!650 = !DISubprogram(name: "operator*", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEdeEv", scope: !637, file: !638, line: 1042, type: !651, scopeLine: 1042, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!651 = !DISubroutineType(types: !652)
!652 = !{!653, !659}
!653 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !637, file: !638, line: 1016, baseType: !654)
!654 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !656, file: !655, line: 216, baseType: !336)
!655 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/stl_iterator_base_types.h", directory: "")
!656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iterator_traits<long *>", scope: !31, file: !655, line: 210, size: 8, flags: DIFlagTypePassByValue, elements: !212, templateParams: !657, identifier: "_ZTSSt15iterator_traitsIPlE")
!657 = !{!658}
!658 = !DITemplateTypeParameter(name: "_Iterator", type: !309)
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!660 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !637)
!661 = !DISubprogram(name: "operator->", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEptEv", scope: !637, file: !638, line: 1047, type: !662, scopeLine: 1047, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!662 = !DISubroutineType(types: !663)
!663 = !{!664, !659}
!664 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !637, file: !638, line: 1017, baseType: !665)
!665 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !656, file: !655, line: 215, baseType: !309)
!666 = !DISubprogram(name: "operator++", linkageName: "_ZN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEppEv", scope: !637, file: !638, line: 1052, type: !667, scopeLine: 1052, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!667 = !DISubroutineType(types: !668)
!668 = !{!669, !644}
!669 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !637, size: 64)
!670 = !DISubprogram(name: "operator++", linkageName: "_ZN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEppEi", scope: !637, file: !638, line: 1060, type: !671, scopeLine: 1060, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!671 = !DISubroutineType(types: !672)
!672 = !{!637, !644, !16}
!673 = !DISubprogram(name: "operator--", linkageName: "_ZN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEmmEv", scope: !637, file: !638, line: 1066, type: !667, scopeLine: 1066, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!674 = !DISubprogram(name: "operator--", linkageName: "_ZN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEmmEi", scope: !637, file: !638, line: 1074, type: !671, scopeLine: 1074, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!675 = !DISubprogram(name: "operator[]", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEixEl", scope: !637, file: !638, line: 1080, type: !676, scopeLine: 1080, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!676 = !DISubroutineType(types: !677)
!677 = !{!653, !659, !678}
!678 = !DIDerivedType(tag: DW_TAG_typedef, name: "difference_type", scope: !637, file: !638, line: 1015, baseType: !679)
!679 = !DIDerivedType(tag: DW_TAG_typedef, name: "difference_type", scope: !656, file: !655, line: 214, baseType: !680)
!680 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", scope: !31, file: !211, line: 281, baseType: !68)
!681 = !DISubprogram(name: "operator+=", linkageName: "_ZN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEpLEl", scope: !637, file: !638, line: 1085, type: !682, scopeLine: 1085, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!682 = !DISubroutineType(types: !683)
!683 = !{!669, !644, !678}
!684 = !DISubprogram(name: "operator+", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEplEl", scope: !637, file: !638, line: 1090, type: !685, scopeLine: 1090, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!685 = !DISubroutineType(types: !686)
!686 = !{!637, !659, !678}
!687 = !DISubprogram(name: "operator-=", linkageName: "_ZN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEmIEl", scope: !637, file: !638, line: 1095, type: !682, scopeLine: 1095, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!688 = !DISubprogram(name: "operator-", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEmiEl", scope: !637, file: !638, line: 1100, type: !685, scopeLine: 1100, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!689 = !DISubprogram(name: "base", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEE4baseEv", scope: !637, file: !638, line: 1105, type: !690, scopeLine: 1105, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!690 = !DISubroutineType(types: !691)
!691 = !{!648, !659}
!692 = !{!658, !693}
!693 = !DITemplateTypeParameter(name: "_Container", type: !287)
!694 = !DISubprogram(name: "begin", linkageName: "_ZNKSt6vectorIlSaIlEE5beginEv", scope: !287, file: !288, line: 820, type: !695, scopeLine: 820, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!695 = !DISubroutineType(types: !696)
!696 = !{!697, !751}
!697 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_iterator", scope: !287, file: !288, line: 421, baseType: !698)
!698 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__normal_iterator<const long *, std::vector<long, std::allocator<long> > >", scope: !94, file: !638, line: 1004, size: 64, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !699, templateParams: !750, identifier: "_ZTSN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEE")
!699 = !{!700, !701, !705, !710, !720, !725, !729, !732, !733, !734, !739, !742, !745, !746, !747}
!700 = !DIDerivedType(tag: DW_TAG_member, name: "_M_current", scope: !698, file: !638, line: 1007, baseType: !341, size: 64, flags: DIFlagProtected)
!701 = !DISubprogram(name: "__normal_iterator", scope: !698, file: !638, line: 1023, type: !702, scopeLine: 1023, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!702 = !DISubroutineType(types: !703)
!703 = !{null, !704}
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!705 = !DISubprogram(name: "__normal_iterator", scope: !698, file: !638, line: 1027, type: !706, scopeLine: 1027, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!706 = !DISubroutineType(types: !707)
!707 = !{null, !704, !708}
!708 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !709, size: 64)
!709 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !341)
!710 = !DISubprogram(name: "operator*", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEdeEv", scope: !698, file: !638, line: 1042, type: !711, scopeLine: 1042, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!711 = !DISubroutineType(types: !712)
!712 = !{!713, !718}
!713 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !698, file: !638, line: 1016, baseType: !714)
!714 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !715, file: !655, line: 227, baseType: !344)
!715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iterator_traits<const long *>", scope: !31, file: !655, line: 221, size: 8, flags: DIFlagTypePassByValue, elements: !212, templateParams: !716, identifier: "_ZTSSt15iterator_traitsIPKlE")
!716 = !{!717}
!717 = !DITemplateTypeParameter(name: "_Iterator", type: !341)
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!719 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !698)
!720 = !DISubprogram(name: "operator->", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEptEv", scope: !698, file: !638, line: 1047, type: !721, scopeLine: 1047, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!721 = !DISubroutineType(types: !722)
!722 = !{!723, !718}
!723 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !698, file: !638, line: 1017, baseType: !724)
!724 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !715, file: !655, line: 226, baseType: !341)
!725 = !DISubprogram(name: "operator++", linkageName: "_ZN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEppEv", scope: !698, file: !638, line: 1052, type: !726, scopeLine: 1052, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!726 = !DISubroutineType(types: !727)
!727 = !{!728, !704}
!728 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !698, size: 64)
!729 = !DISubprogram(name: "operator++", linkageName: "_ZN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEppEi", scope: !698, file: !638, line: 1060, type: !730, scopeLine: 1060, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!730 = !DISubroutineType(types: !731)
!731 = !{!698, !704, !16}
!732 = !DISubprogram(name: "operator--", linkageName: "_ZN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEmmEv", scope: !698, file: !638, line: 1066, type: !726, scopeLine: 1066, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!733 = !DISubprogram(name: "operator--", linkageName: "_ZN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEmmEi", scope: !698, file: !638, line: 1074, type: !730, scopeLine: 1074, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!734 = !DISubprogram(name: "operator[]", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEixEl", scope: !698, file: !638, line: 1080, type: !735, scopeLine: 1080, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!735 = !DISubroutineType(types: !736)
!736 = !{!713, !718, !737}
!737 = !DIDerivedType(tag: DW_TAG_typedef, name: "difference_type", scope: !698, file: !638, line: 1015, baseType: !738)
!738 = !DIDerivedType(tag: DW_TAG_typedef, name: "difference_type", scope: !715, file: !655, line: 225, baseType: !680)
!739 = !DISubprogram(name: "operator+=", linkageName: "_ZN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEpLEl", scope: !698, file: !638, line: 1085, type: !740, scopeLine: 1085, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!740 = !DISubroutineType(types: !741)
!741 = !{!728, !704, !737}
!742 = !DISubprogram(name: "operator+", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEplEl", scope: !698, file: !638, line: 1090, type: !743, scopeLine: 1090, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!743 = !DISubroutineType(types: !744)
!744 = !{!698, !718, !737}
!745 = !DISubprogram(name: "operator-=", linkageName: "_ZN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEmIEl", scope: !698, file: !638, line: 1095, type: !740, scopeLine: 1095, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!746 = !DISubprogram(name: "operator-", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEmiEl", scope: !698, file: !638, line: 1100, type: !743, scopeLine: 1100, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!747 = !DISubprogram(name: "base", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEE4baseEv", scope: !698, file: !638, line: 1105, type: !748, scopeLine: 1105, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!748 = !DISubroutineType(types: !749)
!749 = !{!708, !718}
!750 = !{!717, !693}
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!752 = !DISubprogram(name: "end", linkageName: "_ZNSt6vectorIlSaIlEE3endEv", scope: !287, file: !288, line: 829, type: !634, scopeLine: 829, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!753 = !DISubprogram(name: "end", linkageName: "_ZNKSt6vectorIlSaIlEE3endEv", scope: !287, file: !288, line: 838, type: !695, scopeLine: 838, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!754 = !DISubprogram(name: "rbegin", linkageName: "_ZNSt6vectorIlSaIlEE6rbeginEv", scope: !287, file: !288, line: 847, type: !755, scopeLine: 847, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!755 = !DISubroutineType(types: !756)
!756 = !{!757, !549}
!757 = !DIDerivedType(tag: DW_TAG_typedef, name: "reverse_iterator", scope: !287, file: !288, line: 423, baseType: !758)
!758 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "reverse_iterator<__gnu_cxx::__normal_iterator<long *, std::vector<long, std::allocator<long> > > >", scope: !31, file: !638, line: 128, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEE")
!759 = !DISubprogram(name: "rbegin", linkageName: "_ZNKSt6vectorIlSaIlEE6rbeginEv", scope: !287, file: !288, line: 856, type: !760, scopeLine: 856, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!760 = !DISubroutineType(types: !761)
!761 = !{!762, !751}
!762 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reverse_iterator", scope: !287, file: !288, line: 422, baseType: !763)
!763 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "reverse_iterator<__gnu_cxx::__normal_iterator<const long *, std::vector<long, std::allocator<long> > > >", scope: !31, file: !638, line: 128, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEEE")
!764 = !DISubprogram(name: "rend", linkageName: "_ZNSt6vectorIlSaIlEE4rendEv", scope: !287, file: !288, line: 865, type: !755, scopeLine: 865, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!765 = !DISubprogram(name: "rend", linkageName: "_ZNKSt6vectorIlSaIlEE4rendEv", scope: !287, file: !288, line: 874, type: !760, scopeLine: 874, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!766 = !DISubprogram(name: "cbegin", linkageName: "_ZNKSt6vectorIlSaIlEE6cbeginEv", scope: !287, file: !288, line: 884, type: !695, scopeLine: 884, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!767 = !DISubprogram(name: "cend", linkageName: "_ZNKSt6vectorIlSaIlEE4cendEv", scope: !287, file: !288, line: 893, type: !695, scopeLine: 893, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!768 = !DISubprogram(name: "crbegin", linkageName: "_ZNKSt6vectorIlSaIlEE7crbeginEv", scope: !287, file: !288, line: 902, type: !760, scopeLine: 902, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!769 = !DISubprogram(name: "crend", linkageName: "_ZNKSt6vectorIlSaIlEE5crendEv", scope: !287, file: !288, line: 911, type: !760, scopeLine: 911, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!770 = !DISubprogram(name: "size", linkageName: "_ZNKSt6vectorIlSaIlEE4sizeEv", scope: !287, file: !288, line: 918, type: !771, scopeLine: 918, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!771 = !DISubroutineType(types: !772)
!772 = !{!559, !751}
!773 = !DISubprogram(name: "max_size", linkageName: "_ZNKSt6vectorIlSaIlEE8max_sizeEv", scope: !287, file: !288, line: 923, type: !771, scopeLine: 923, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!774 = !DISubprogram(name: "resize", linkageName: "_ZNSt6vectorIlSaIlEE6resizeEm", scope: !287, file: !288, line: 937, type: !775, scopeLine: 937, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!775 = !DISubroutineType(types: !776)
!776 = !{null, !549, !559}
!777 = !DISubprogram(name: "resize", linkageName: "_ZNSt6vectorIlSaIlEE6resizeEmRKl", scope: !287, file: !288, line: 957, type: !628, scopeLine: 957, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!778 = !DISubprogram(name: "shrink_to_fit", linkageName: "_ZNSt6vectorIlSaIlEE13shrink_to_fitEv", scope: !287, file: !288, line: 989, type: !547, scopeLine: 989, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!779 = !DISubprogram(name: "capacity", linkageName: "_ZNKSt6vectorIlSaIlEE8capacityEv", scope: !287, file: !288, line: 998, type: !771, scopeLine: 998, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!780 = !DISubprogram(name: "empty", linkageName: "_ZNKSt6vectorIlSaIlEE5emptyEv", scope: !287, file: !288, line: 1007, type: !781, scopeLine: 1007, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!781 = !DISubroutineType(types: !782)
!782 = !{!53, !751}
!783 = !DISubprogram(name: "reserve", linkageName: "_ZNSt6vectorIlSaIlEE7reserveEm", scope: !287, file: !288, line: 1028, type: !775, scopeLine: 1028, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!784 = !DISubprogram(name: "operator[]", linkageName: "_ZNSt6vectorIlSaIlEEixEm", scope: !287, file: !288, line: 1043, type: !785, scopeLine: 1043, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!785 = !DISubroutineType(types: !786)
!786 = !{!787, !549, !559}
!787 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !287, file: !288, line: 417, baseType: !788)
!788 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !300, file: !231, line: 62, baseType: !789)
!789 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !790, size: 64)
!790 = !DIDerivedType(tag: DW_TAG_typedef, name: "value_type", scope: !300, file: !231, line: 56, baseType: !791)
!791 = !DIDerivedType(tag: DW_TAG_typedef, name: "value_type", scope: !303, file: !236, line: 417, baseType: !68)
!792 = !DISubprogram(name: "operator[]", linkageName: "_ZNKSt6vectorIlSaIlEEixEm", scope: !287, file: !288, line: 1061, type: !793, scopeLine: 1061, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!793 = !DISubroutineType(types: !794)
!794 = !{!795, !751, !559}
!795 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reference", scope: !287, file: !288, line: 418, baseType: !796)
!796 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reference", scope: !300, file: !231, line: 63, baseType: !797)
!797 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !798, size: 64)
!798 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !790)
!799 = !DISubprogram(name: "_M_range_check", linkageName: "_ZNKSt6vectorIlSaIlEE14_M_range_checkEm", scope: !287, file: !288, line: 1070, type: !800, scopeLine: 1070, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!800 = !DISubroutineType(types: !801)
!801 = !{null, !751, !559}
!802 = !DISubprogram(name: "at", linkageName: "_ZNSt6vectorIlSaIlEE2atEm", scope: !287, file: !288, line: 1092, type: !785, scopeLine: 1092, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!803 = !DISubprogram(name: "at", linkageName: "_ZNKSt6vectorIlSaIlEE2atEm", scope: !287, file: !288, line: 1110, type: !793, scopeLine: 1110, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!804 = !DISubprogram(name: "front", linkageName: "_ZNSt6vectorIlSaIlEE5frontEv", scope: !287, file: !288, line: 1121, type: !805, scopeLine: 1121, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!805 = !DISubroutineType(types: !806)
!806 = !{!787, !549}
!807 = !DISubprogram(name: "front", linkageName: "_ZNKSt6vectorIlSaIlEE5frontEv", scope: !287, file: !288, line: 1132, type: !808, scopeLine: 1132, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!808 = !DISubroutineType(types: !809)
!809 = !{!795, !751}
!810 = !DISubprogram(name: "back", linkageName: "_ZNSt6vectorIlSaIlEE4backEv", scope: !287, file: !288, line: 1143, type: !805, scopeLine: 1143, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!811 = !DISubprogram(name: "back", linkageName: "_ZNKSt6vectorIlSaIlEE4backEv", scope: !287, file: !288, line: 1154, type: !808, scopeLine: 1154, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!812 = !DISubprogram(name: "data", linkageName: "_ZNSt6vectorIlSaIlEE4dataEv", scope: !287, file: !288, line: 1168, type: !813, scopeLine: 1168, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!813 = !DISubroutineType(types: !814)
!814 = !{!309, !549}
!815 = !DISubprogram(name: "data", linkageName: "_ZNKSt6vectorIlSaIlEE4dataEv", scope: !287, file: !288, line: 1172, type: !816, scopeLine: 1172, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!816 = !DISubroutineType(types: !817)
!817 = !{!341, !751}
!818 = !DISubprogram(name: "push_back", linkageName: "_ZNSt6vectorIlSaIlEE9push_backERKl", scope: !287, file: !288, line: 1187, type: !819, scopeLine: 1187, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!819 = !DISubroutineType(types: !820)
!820 = !{null, !549, !563}
!821 = !DISubprogram(name: "push_back", linkageName: "_ZNSt6vectorIlSaIlEE9push_backEOl", scope: !287, file: !288, line: 1203, type: !822, scopeLine: 1203, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!822 = !DISubroutineType(types: !823)
!823 = !{null, !549, !824}
!824 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !565, size: 64)
!825 = !DISubprogram(name: "pop_back", linkageName: "_ZNSt6vectorIlSaIlEE8pop_backEv", scope: !287, file: !288, line: 1225, type: !547, scopeLine: 1225, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!826 = !DISubprogram(name: "insert", linkageName: "_ZNSt6vectorIlSaIlEE6insertEN9__gnu_cxx17__normal_iteratorIPKlS1_EERS4_", scope: !287, file: !288, line: 1263, type: !827, scopeLine: 1263, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!827 = !DISubroutineType(types: !828)
!828 = !{!636, !549, !697, !563}
!829 = !DISubprogram(name: "insert", linkageName: "_ZNSt6vectorIlSaIlEE6insertEN9__gnu_cxx17__normal_iteratorIPKlS1_EEOl", scope: !287, file: !288, line: 1293, type: !830, scopeLine: 1293, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!830 = !DISubroutineType(types: !831)
!831 = !{!636, !549, !697, !824}
!832 = !DISubprogram(name: "insert", linkageName: "_ZNSt6vectorIlSaIlEE6insertEN9__gnu_cxx17__normal_iteratorIPKlS1_EESt16initializer_listIlE", scope: !287, file: !288, line: 1310, type: !833, scopeLine: 1310, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!833 = !DISubroutineType(types: !834)
!834 = !{!636, !549, !697, !590}
!835 = !DISubprogram(name: "insert", linkageName: "_ZNSt6vectorIlSaIlEE6insertEN9__gnu_cxx17__normal_iteratorIPKlS1_EEmRS4_", scope: !287, file: !288, line: 1335, type: !836, scopeLine: 1335, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!836 = !DISubroutineType(types: !837)
!837 = !{!636, !549, !697, !559, !563}
!838 = !DISubprogram(name: "erase", linkageName: "_ZNSt6vectorIlSaIlEE5eraseEN9__gnu_cxx17__normal_iteratorIPKlS1_EE", scope: !287, file: !288, line: 1430, type: !839, scopeLine: 1430, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!839 = !DISubroutineType(types: !840)
!840 = !{!636, !549, !697}
!841 = !DISubprogram(name: "erase", linkageName: "_ZNSt6vectorIlSaIlEE5eraseEN9__gnu_cxx17__normal_iteratorIPKlS1_EES6_", scope: !287, file: !288, line: 1457, type: !842, scopeLine: 1457, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!842 = !DISubroutineType(types: !843)
!843 = !{!636, !549, !697, !697}
!844 = !DISubprogram(name: "swap", linkageName: "_ZNSt6vectorIlSaIlEE4swapERS1_", scope: !287, file: !288, line: 1480, type: !845, scopeLine: 1480, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!845 = !DISubroutineType(types: !846)
!846 = !{null, !549, !620}
!847 = !DISubprogram(name: "clear", linkageName: "_ZNSt6vectorIlSaIlEE5clearEv", scope: !287, file: !288, line: 1498, type: !547, scopeLine: 1498, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!848 = !DISubprogram(name: "_M_fill_initialize", linkageName: "_ZNSt6vectorIlSaIlEE18_M_fill_initializeEmRKl", scope: !287, file: !288, line: 1593, type: !628, scopeLine: 1593, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!849 = !DISubprogram(name: "_M_default_initialize", linkageName: "_ZNSt6vectorIlSaIlEE21_M_default_initializeEm", scope: !287, file: !288, line: 1603, type: !775, scopeLine: 1603, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!850 = !DISubprogram(name: "_M_fill_assign", linkageName: "_ZNSt6vectorIlSaIlEE14_M_fill_assignEmRKl", scope: !287, file: !288, line: 1645, type: !628, scopeLine: 1645, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!851 = !DISubprogram(name: "_M_fill_insert", linkageName: "_ZNSt6vectorIlSaIlEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPlS1_EEmRKl", scope: !287, file: !288, line: 1684, type: !852, scopeLine: 1684, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!852 = !DISubroutineType(types: !853)
!853 = !{null, !549, !636, !559, !563}
!854 = !DISubprogram(name: "_M_default_append", linkageName: "_ZNSt6vectorIlSaIlEE17_M_default_appendEm", scope: !287, file: !288, line: 1689, type: !775, scopeLine: 1689, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!855 = !DISubprogram(name: "_M_shrink_to_fit", linkageName: "_ZNSt6vectorIlSaIlEE16_M_shrink_to_fitEv", scope: !287, file: !288, line: 1692, type: !856, scopeLine: 1692, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!856 = !DISubroutineType(types: !857)
!857 = !{!53, !549}
!858 = !DISubprogram(name: "_M_insert_rval", linkageName: "_ZNSt6vectorIlSaIlEE14_M_insert_rvalEN9__gnu_cxx17__normal_iteratorIPKlS1_EEOl", scope: !287, file: !288, line: 1741, type: !830, scopeLine: 1741, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!859 = !DISubprogram(name: "_M_emplace_aux", linkageName: "_ZNSt6vectorIlSaIlEE14_M_emplace_auxEN9__gnu_cxx17__normal_iteratorIPKlS1_EEOl", scope: !287, file: !288, line: 1750, type: !830, scopeLine: 1750, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!860 = !DISubprogram(name: "_M_check_len", linkageName: "_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc", scope: !287, file: !288, line: 1756, type: !861, scopeLine: 1756, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!861 = !DISubroutineType(types: !862)
!862 = !{!863, !751, !559, !226}
!863 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", scope: !287, file: !288, line: 424, baseType: !210)
!864 = !DISubprogram(name: "_S_check_init_len", linkageName: "_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_", scope: !287, file: !288, line: 1767, type: !865, scopeLine: 1767, flags: DIFlagProtected | DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!865 = !DISubroutineType(types: !866)
!866 = !{!863, !559, !553}
!867 = !DISubprogram(name: "_S_max_size", linkageName: "_ZNSt6vectorIlSaIlEE11_S_max_sizeERKS0_", scope: !287, file: !288, line: 1776, type: !868, scopeLine: 1776, flags: DIFlagProtected | DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!868 = !DISubroutineType(types: !869)
!869 = !{!863, !870}
!870 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !871, size: 64)
!871 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !539)
!872 = !DISubprogram(name: "_M_erase_at_end", linkageName: "_ZNSt6vectorIlSaIlEE15_M_erase_at_endEPl", scope: !287, file: !288, line: 1792, type: !873, scopeLine: 1792, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!873 = !DISubroutineType(types: !874)
!874 = !{null, !549, !537}
!875 = !DISubprogram(name: "_M_erase", linkageName: "_ZNSt6vectorIlSaIlEE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPlS1_EE", scope: !287, file: !288, line: 1804, type: !876, scopeLine: 1804, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!876 = !DISubroutineType(types: !877)
!877 = !{!636, !549, !636}
!878 = !DISubprogram(name: "_M_erase", linkageName: "_ZNSt6vectorIlSaIlEE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPlS1_EES5_", scope: !287, file: !288, line: 1807, type: !879, scopeLine: 1807, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!879 = !DISubroutineType(types: !880)
!880 = !{!636, !549, !636, !636}
!881 = !DISubprogram(name: "_M_move_assign", linkageName: "_ZNSt6vectorIlSaIlEE14_M_move_assignEOS1_St17integral_constantIbLb1EE", scope: !287, file: !288, line: 1815, type: !882, scopeLine: 1815, flags: DIFlagPrototyped, spFlags: 0)
!882 = !DISubroutineType(types: !883)
!883 = !{null, !549, !574, !501}
!884 = !DISubprogram(name: "_M_move_assign", linkageName: "_ZNSt6vectorIlSaIlEE14_M_move_assignEOS1_St17integral_constantIbLb0EE", scope: !287, file: !288, line: 1826, type: !885, scopeLine: 1826, flags: DIFlagPrototyped, spFlags: 0)
!885 = !DISubroutineType(types: !886)
!886 = !{null, !549, !574, !520}
!887 = !DIDerivedType(tag: DW_TAG_member, name: "dtype_", scope: !284, file: !101, line: 254, baseType: !100, size: 32, offset: 192)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "partial_", scope: !284, file: !101, line: 255, baseType: !889, size: 8, offset: 224)
!889 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "PartialTensorShape", scope: !4, file: !101, line: 141, size: 8, flags: DIFlagTypePassByValue, elements: !890, identifier: "_ZTSN10tensorflow18PartialTensorShapeE")
!890 = !{!891}
!891 = !DISubprogram(name: "PartialTensorShape", scope: !889, file: !101, line: 143, type: !892, scopeLine: 143, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!892 = !DISubroutineType(types: !893)
!893 = !{null, !894}
!894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !889, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!895 = !DISubprogram(name: "TensorShape", scope: !284, file: !101, line: 149, type: !896, scopeLine: 149, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!896 = !DISubroutineType(types: !897)
!897 = !{null, !898}
!898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!899 = !DISubprogram(name: "TensorShape", scope: !284, file: !101, line: 150, type: !900, scopeLine: 150, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!900 = !DISubroutineType(types: !901)
!901 = !{null, !898, !590}
!902 = !DISubprogram(name: "TensorShape", scope: !284, file: !101, line: 151, type: !903, scopeLine: 151, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!903 = !DISubroutineType(types: !904)
!904 = !{null, !898, !569}
!905 = !DISubprogram(name: "set_data_type", linkageName: "_ZN10tensorflow11TensorShape13set_data_typeE8DataType", scope: !284, file: !101, line: 154, type: !906, scopeLine: 154, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!906 = !DISubroutineType(types: !907)
!907 = !{null, !898, !100}
!908 = !DISubprogram(name: "data_type", linkageName: "_ZNK10tensorflow11TensorShape9data_typeEv", scope: !284, file: !101, line: 155, type: !909, scopeLine: 155, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!909 = !DISubroutineType(types: !910)
!910 = !{!100, !911}
!911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !912, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!912 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !284)
!913 = !DISubprogram(name: "num_elements", linkageName: "_ZNK10tensorflow11TensorShape12num_elementsEv", scope: !284, file: !101, line: 158, type: !914, scopeLine: 158, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!914 = !DISubroutineType(types: !915)
!915 = !{!64, !911}
!916 = !DISubprogram(name: "BuildTensorShape", linkageName: "_ZN10tensorflow11TensorShape16BuildTensorShapeEN4absl4SpanIKlEEPS0_", scope: !284, file: !101, line: 169, type: !917, scopeLine: 169, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!917 = !DISubroutineType(types: !918)
!918 = !{!919, !931, !962}
!919 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Status", scope: !920, file: !101, line: 82, size: 8, flags: DIFlagTypePassByValue, elements: !922, identifier: "_ZTSN4absl12lts_202501276StatusE")
!920 = !DINamespace(name: "lts_20250127", scope: !921, exportSymbols: true)
!921 = !DINamespace(name: "absl", scope: null)
!922 = !{!923, !926}
!923 = !DISubprogram(name: "OK", linkageName: "_ZN4absl12lts_202501276Status2OKEv", scope: !919, file: !101, line: 84, type: !924, scopeLine: 84, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!924 = !DISubroutineType(types: !925)
!925 = !{!919}
!926 = !DISubprogram(name: "ok", linkageName: "_ZNK4absl12lts_202501276Status2okEv", scope: !919, file: !101, line: 85, type: !927, scopeLine: 85, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!927 = !DISubroutineType(types: !928)
!928 = !{!53, !929}
!929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !930, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!930 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !919)
!931 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Span<const long>", scope: !921, file: !101, line: 105, size: 128, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !932, templateParams: !960, identifier: "_ZTSN4absl4SpanIKlEE")
!932 = !{!933, !934, !935, !939, !942, !948, !952, !957}
!933 = !DIDerivedType(tag: DW_TAG_member, name: "data_", scope: !931, file: !101, line: 114, baseType: !341, size: 64)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "size_", scope: !931, file: !101, line: 115, baseType: !19, size: 64, offset: 64)
!935 = !DISubprogram(name: "Span", scope: !931, file: !101, line: 107, type: !936, scopeLine: 107, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!936 = !DISubroutineType(types: !937)
!937 = !{null, !938}
!938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !931, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!939 = !DISubprogram(name: "Span", scope: !931, file: !101, line: 108, type: !940, scopeLine: 108, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!940 = !DISubroutineType(types: !941)
!941 = !{null, !938, !341, !19}
!942 = !DISubprogram(name: "Span", scope: !931, file: !101, line: 109, type: !943, scopeLine: 109, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!943 = !DISubroutineType(types: !944)
!944 = !{null, !938, !945}
!945 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !946, size: 64)
!946 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !947)
!947 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "vector<const long, std::allocator<const long> >", scope: !31, file: !288, line: 389, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt6vectorIKlSaIS0_EE")
!948 = !DISubprogram(name: "Span", scope: !931, file: !101, line: 110, type: !949, scopeLine: 110, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!949 = !DISubroutineType(types: !950)
!950 = !{null, !938, !951}
!951 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "initializer_list<const long>", scope: !31, file: !591, line: 47, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt16initializer_listIKlE")
!952 = !DISubprogram(name: "data", linkageName: "_ZNK4absl4SpanIKlE4dataEv", scope: !931, file: !101, line: 111, type: !953, scopeLine: 111, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!953 = !DISubroutineType(types: !954)
!954 = !{!341, !955}
!955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !956, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!956 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !931)
!957 = !DISubprogram(name: "size", linkageName: "_ZNK4absl4SpanIKlE4sizeEv", scope: !931, file: !101, line: 112, type: !958, scopeLine: 112, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!958 = !DISubroutineType(types: !959)
!959 = !{!19, !955}
!960 = !{!961}
!961 = !DITemplateTypeParameter(name: "T", type: !342)
!962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!963 = !DISubprogram(name: "BuildTensorShape", linkageName: "_ZN10tensorflow11TensorShape16BuildTensorShapeESt16initializer_listIlEPS0_", scope: !284, file: !101, line: 174, type: !964, scopeLine: 174, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!964 = !DISubroutineType(types: !965)
!965 = !{!919, !590, !962}
!966 = !DISubprogram(name: "BuildTensorShape", linkageName: "_ZN10tensorflow11TensorShape16BuildTensorShapeERKNS_16TensorShapeProtoEPS0_", scope: !284, file: !101, line: 179, type: !967, scopeLine: 179, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!967 = !DISubroutineType(types: !968)
!968 = !{!919, !969, !962}
!969 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !970, size: 64)
!970 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !971)
!971 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "TensorShapeProto", scope: !4, file: !101, line: 139, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN10tensorflow16TensorShapeProtoE")
!972 = !DISubprogram(name: "BuildTensorShape", linkageName: "_ZN10tensorflow11TensorShape16BuildTensorShapeERKNS_16TensorShapeProtoE", scope: !284, file: !101, line: 184, type: !973, scopeLine: 184, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!973 = !DISubroutineType(types: !974)
!974 = !{!975, !969}
!975 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "StatusOr<tensorflow::TensorShape>", scope: !920, file: !101, line: 89, size: 256, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !976, templateParams: !996, identifier: "_ZTSN4absl12lts_202501278StatusOrIN10tensorflow11TensorShapeEEE")
!976 = !{!977, !978, !983, !988, !991, !992}
!977 = !DIDerivedType(tag: DW_TAG_member, name: "value_", scope: !975, file: !101, line: 97, baseType: !284, size: 256)
!978 = !DISubprogram(name: "StatusOr", scope: !975, file: !101, line: 91, type: !979, scopeLine: 91, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!979 = !DISubroutineType(types: !980)
!980 = !{null, !981, !982}
!981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !975, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!982 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !912, size: 64)
!983 = !DISubprogram(name: "ok", linkageName: "_ZNK4absl12lts_202501278StatusOrIN10tensorflow11TensorShapeEE2okEv", scope: !975, file: !101, line: 92, type: !984, scopeLine: 92, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!984 = !DISubroutineType(types: !985)
!985 = !{!53, !986}
!986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !987, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!987 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !975)
!988 = !DISubprogram(name: "value", linkageName: "_ZNK4absl12lts_202501278StatusOrIN10tensorflow11TensorShapeEE5valueEv", scope: !975, file: !101, line: 93, type: !989, scopeLine: 93, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!989 = !DISubroutineType(types: !990)
!990 = !{!982, !986}
!991 = !DISubprogram(name: "operator*", linkageName: "_ZNK4absl12lts_202501278StatusOrIN10tensorflow11TensorShapeEEdeEv", scope: !975, file: !101, line: 94, type: !989, scopeLine: 94, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!992 = !DISubprogram(name: "operator->", linkageName: "_ZNK4absl12lts_202501278StatusOrIN10tensorflow11TensorShapeEEptEv", scope: !975, file: !101, line: 95, type: !993, scopeLine: 95, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!993 = !DISubroutineType(types: !994)
!994 = !{!995, !986}
!995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !912, size: 64)
!996 = !{!997}
!997 = !DITemplateTypeParameter(name: "T", type: !284)
!998 = !DISubprogram(name: "operator const tensorflow::PartialTensorShape &", linkageName: "_ZNK10tensorflow11TensorShapecvRKNS_18PartialTensorShapeEEv", scope: !284, file: !101, line: 191, type: !999, scopeLine: 191, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!999 = !DISubroutineType(types: !1000)
!1000 = !{!1001, !911}
!1001 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1002, size: 64)
!1002 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !889)
!1003 = !DISubprogram(name: "dims", linkageName: "_ZNK10tensorflow11TensorShape4dimsEv", scope: !284, file: !101, line: 193, type: !1004, scopeLine: 193, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1004 = !DISubroutineType(types: !1005)
!1005 = !{!16, !911}
!1006 = !DISubprogram(name: "dim_size", linkageName: "_ZNK10tensorflow11TensorShape8dim_sizeEi", scope: !284, file: !101, line: 194, type: !1007, scopeLine: 194, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1007 = !DISubroutineType(types: !1008)
!1008 = !{!64, !911, !16}
!1009 = !DISubprogram(name: "IsSameSize", linkageName: "_ZNK10tensorflow11TensorShape10IsSameSizeERKS0_", scope: !284, file: !101, line: 195, type: !1010, scopeLine: 195, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1010 = !DISubroutineType(types: !1011)
!1011 = !{!53, !911, !982}
!1012 = !DISubprogram(name: "CheckDimsEqual", linkageName: "_ZNK10tensorflow11TensorShape14CheckDimsEqualEi", scope: !284, file: !101, line: 228, type: !1013, scopeLine: 228, flags: DIFlagPrototyped, spFlags: 0)
!1013 = !DISubroutineType(types: !1014)
!1014 = !{null, !911, !16}
!1015 = !DISubprogram(name: "CheckDimsAtMost", linkageName: "_ZNK10tensorflow11TensorShape15CheckDimsAtMostEi", scope: !284, file: !101, line: 229, type: !1013, scopeLine: 229, flags: DIFlagPrototyped, spFlags: 0)
!1016 = !{!0}
!1017 = !{!1018, !1022, !1039, !1042, !1047, !1055, !1063, !1067, !1074, !1078, !1082, !1084, !1086, !1090, !1097, !1101, !1107, !1113, !1115, !1119, !1123, !1127, !1131, !1142, !1144, !1148, !1152, !1156, !1158, !1163, !1167, !1171, !1173, !1175, !1179, !1187, !1191, !1195, !1199, !1201, !1207, !1209, !1216, !1221, !1225, !1229, !1233, !1237, !1241, !1243, !1245, !1249, !1253, !1257, !1259, !1263, !1267, !1269, !1271, !1275, !1280, !1285, !1290, !1291, !1292, !1293, !1294, !1295, !1296, !1297, !1298, !1299, !1300, !1354, !1358, !1360, !1363, !1369, !1373, !1379, !1383, !1387, !1391, !1395, !1397, !1399, !1403, !1407, !1411, !1415, !1419, !1421, !1423, !1425, !1429, !1433, !1437, !1439, !1441, !1446, !1451, !1455, !1458, !1459, !1461, !1463, !1465, !1467, !1469, !1471, !1473, !1475, !1478, !1479, !1483, !1487, !1490, !1491, !1493, !1495, !1497, !1499, !1501, !1503, !1505, !1507, !1510, !1512, !1516, !1520, !1525, !1531, !1533, !1535, !1537, !1539, !1541, !1543, !1545, !1547, !1549, !1551, !1553, !1555, !1557, !1561, !1565, !1571, !1575, !1579, !1584, !1586, !1590, !1594, !1598, !1606, !1608, !1612, !1616, !1620, !1624, !1628, !1632, !1636, !1640, !1644, !1648, !1652, !1654, !1656, !1660, !1664, !1670, !1674, !1678, !1680, !1684, !1688, !1694, !1696, !1700, !1704, !1708, !1712, !1716, !1720, !1724, !1725, !1726, !1727, !1729, !1730, !1731, !1732, !1733, !1734, !1735, !1739, !1745, !1750, !1754, !1756, !1758, !1760, !1762, !1769, !1773, !1777, !1781, !1785, !1789, !1793, !1797, !1799, !1803, !1809, !1813, !1817, !1819, !1821, !1825, !1829, !1831, !1833, !1835, !1837, !1839, !1841, !1843, !1847, !1851, !1855, !1859, !1863, !1867, !1869, !1873, !1877, !1881, !1885, !1887, !1889, !1893, !1897, !1898, !1899, !1900, !1901, !1902, !1903, !1905, !2181}
!1018 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !1019, entity: !1020, file: !1021, line: 58)
!1019 = !DINamespace(name: "__gnu_debug", scope: null)
!1020 = !DINamespace(name: "__debug", scope: !31)
!1021 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/debug/debug.h", directory: "")
!1022 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1023, file: !1038, line: 64)
!1023 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1024, line: 6, baseType: !1025)
!1024 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h", directory: "")
!1025 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1026, line: 21, baseType: !1027)
!1026 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h", directory: "")
!1027 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1026, line: 13, size: 64, flags: DIFlagTypePassByValue, elements: !1028, identifier: "_ZTS11__mbstate_t")
!1028 = !{!1029, !1030}
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1027, file: !1026, line: 15, baseType: !16, size: 32)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1027, file: !1026, line: 20, baseType: !1031, size: 32, offset: 32)
!1031 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1027, file: !1026, line: 16, size: 32, flags: DIFlagTypePassByValue, elements: !1032, identifier: "_ZTSN11__mbstate_tUt_E")
!1032 = !{!1033, !1034}
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1031, file: !1026, line: 18, baseType: !95, size: 32)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1031, file: !1026, line: 19, baseType: !1035, size: 32)
!1035 = !DICompositeType(tag: DW_TAG_array_type, baseType: !228, size: 32, elements: !1036)
!1036 = !{!1037}
!1037 = !DISubrange(count: 4)
!1038 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/cwchar", directory: "")
!1039 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1040, file: !1038, line: 141)
!1040 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !1041, line: 20, baseType: !95)
!1041 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h", directory: "")
!1042 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1043, file: !1038, line: 143)
!1043 = !DISubprogram(name: "btowc", scope: !1044, file: !1044, line: 284, type: !1045, flags: DIFlagPrototyped, spFlags: 0)
!1044 = !DIFile(filename: "/usr/include/wchar.h", directory: "")
!1045 = !DISubroutineType(types: !1046)
!1046 = !{!1040, !16}
!1047 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1048, file: !1038, line: 144)
!1048 = !DISubprogram(name: "fgetwc", scope: !1044, file: !1044, line: 727, type: !1049, flags: DIFlagPrototyped, spFlags: 0)
!1049 = !DISubroutineType(types: !1050)
!1050 = !{!1040, !1051}
!1051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1052, size: 64)
!1052 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !1053, line: 5, baseType: !1054)
!1053 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__FILE.h", directory: "")
!1054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1053, line: 4, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS8_IO_FILE")
!1055 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1056, file: !1038, line: 145)
!1056 = !DISubprogram(name: "fgetws", scope: !1044, file: !1044, line: 756, type: !1057, flags: DIFlagPrototyped, spFlags: 0)
!1057 = !DISubroutineType(types: !1058)
!1058 = !{!1059, !1061, !16, !1062}
!1059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1060, size: 64)
!1060 = !DIBasicType(name: "wchar_t", size: 32, encoding: DW_ATE_signed)
!1061 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1059)
!1062 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1051)
!1063 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1064, file: !1038, line: 146)
!1064 = !DISubprogram(name: "fputwc", scope: !1044, file: !1044, line: 741, type: !1065, flags: DIFlagPrototyped, spFlags: 0)
!1065 = !DISubroutineType(types: !1066)
!1066 = !{!1040, !1060, !1051}
!1067 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1068, file: !1038, line: 147)
!1068 = !DISubprogram(name: "fputws", scope: !1044, file: !1044, line: 763, type: !1069, flags: DIFlagPrototyped, spFlags: 0)
!1069 = !DISubroutineType(types: !1070)
!1070 = !{!16, !1071, !1062}
!1071 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1072)
!1072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1073, size: 64)
!1073 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1060)
!1074 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1075, file: !1038, line: 148)
!1075 = !DISubprogram(name: "fwide", scope: !1044, file: !1044, line: 573, type: !1076, flags: DIFlagPrototyped, spFlags: 0)
!1076 = !DISubroutineType(types: !1077)
!1077 = !{!16, !1051, !16}
!1078 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1079, file: !1038, line: 149)
!1079 = !DISubprogram(name: "fwprintf", scope: !1044, file: !1044, line: 580, type: !1080, flags: DIFlagPrototyped, spFlags: 0)
!1080 = !DISubroutineType(types: !1081)
!1081 = !{!16, !1062, !1071, null}
!1082 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1083, file: !1038, line: 150)
!1083 = !DISubprogram(name: "fwscanf", scope: !1044, file: !1044, line: 621, type: !1080, flags: DIFlagPrototyped, spFlags: 0)
!1084 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1085, file: !1038, line: 151)
!1085 = !DISubprogram(name: "getwc", scope: !1044, file: !1044, line: 728, type: !1049, flags: DIFlagPrototyped, spFlags: 0)
!1086 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1087, file: !1038, line: 152)
!1087 = !DISubprogram(name: "getwchar", scope: !1044, file: !1044, line: 734, type: !1088, flags: DIFlagPrototyped, spFlags: 0)
!1088 = !DISubroutineType(types: !1089)
!1089 = !{!1040}
!1090 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1091, file: !1038, line: 153)
!1091 = !DISubprogram(name: "mbrlen", scope: !1044, file: !1044, line: 307, type: !1092, flags: DIFlagPrototyped, spFlags: 0)
!1092 = !DISubroutineType(types: !1093)
!1093 = !{!19, !1094, !19, !1095}
!1094 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !226)
!1095 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1096)
!1096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1023, size: 64)
!1097 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1098, file: !1038, line: 154)
!1098 = !DISubprogram(name: "mbrtowc", scope: !1044, file: !1044, line: 296, type: !1099, flags: DIFlagPrototyped, spFlags: 0)
!1099 = !DISubroutineType(types: !1100)
!1100 = !{!19, !1061, !1094, !19, !1095}
!1101 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1102, file: !1038, line: 155)
!1102 = !DISubprogram(name: "mbsinit", scope: !1044, file: !1044, line: 292, type: !1103, flags: DIFlagPrototyped, spFlags: 0)
!1103 = !DISubroutineType(types: !1104)
!1104 = !{!16, !1105}
!1105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1106, size: 64)
!1106 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1023)
!1107 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1108, file: !1038, line: 156)
!1108 = !DISubprogram(name: "mbsrtowcs", scope: !1044, file: !1044, line: 337, type: !1109, flags: DIFlagPrototyped, spFlags: 0)
!1109 = !DISubroutineType(types: !1110)
!1110 = !{!19, !1061, !1111, !19, !1095}
!1111 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1112)
!1112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!1113 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1114, file: !1038, line: 157)
!1114 = !DISubprogram(name: "putwc", scope: !1044, file: !1044, line: 742, type: !1065, flags: DIFlagPrototyped, spFlags: 0)
!1115 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1116, file: !1038, line: 158)
!1116 = !DISubprogram(name: "putwchar", scope: !1044, file: !1044, line: 748, type: !1117, flags: DIFlagPrototyped, spFlags: 0)
!1117 = !DISubroutineType(types: !1118)
!1118 = !{!1040, !1060}
!1119 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1120, file: !1038, line: 160)
!1120 = !DISubprogram(name: "swprintf", scope: !1044, file: !1044, line: 590, type: !1121, flags: DIFlagPrototyped, spFlags: 0)
!1121 = !DISubroutineType(types: !1122)
!1122 = !{!16, !1061, !19, !1071, null}
!1123 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1124, file: !1038, line: 162)
!1124 = !DISubprogram(name: "swscanf", scope: !1044, file: !1044, line: 631, type: !1125, flags: DIFlagPrototyped, spFlags: 0)
!1125 = !DISubroutineType(types: !1126)
!1126 = !{!16, !1071, !1071, null}
!1127 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1128, file: !1038, line: 163)
!1128 = !DISubprogram(name: "ungetwc", scope: !1044, file: !1044, line: 771, type: !1129, flags: DIFlagPrototyped, spFlags: 0)
!1129 = !DISubroutineType(types: !1130)
!1130 = !{!1040, !1040, !1051}
!1131 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1132, file: !1038, line: 164)
!1132 = !DISubprogram(name: "vfwprintf", scope: !1044, file: !1044, line: 598, type: !1133, flags: DIFlagPrototyped, spFlags: 0)
!1133 = !DISubroutineType(types: !1134)
!1134 = !{!16, !1062, !1071, !1135}
!1135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1136, size: 64)
!1136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !90, line: 53, size: 192, flags: DIFlagTypePassByValue, elements: !1137, identifier: "_ZTS13__va_list_tag")
!1137 = !{!1138, !1139, !1140, !1141}
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1136, file: !90, line: 53, baseType: !95, size: 32)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1136, file: !90, line: 53, baseType: !95, size: 32, offset: 32)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1136, file: !90, line: 53, baseType: !38, size: 64, offset: 64)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1136, file: !90, line: 53, baseType: !38, size: 64, offset: 128)
!1142 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1143, file: !1038, line: 166)
!1143 = !DISubprogram(name: "vfwscanf", scope: !1044, file: !1044, line: 673, type: !1133, flags: DIFlagPrototyped, spFlags: 0)
!1144 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1145, file: !1038, line: 169)
!1145 = !DISubprogram(name: "vswprintf", scope: !1044, file: !1044, line: 611, type: !1146, flags: DIFlagPrototyped, spFlags: 0)
!1146 = !DISubroutineType(types: !1147)
!1147 = !{!16, !1061, !19, !1071, !1135}
!1148 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1149, file: !1038, line: 172)
!1149 = !DISubprogram(name: "vswscanf", scope: !1044, file: !1044, line: 685, type: !1150, flags: DIFlagPrototyped, spFlags: 0)
!1150 = !DISubroutineType(types: !1151)
!1151 = !{!16, !1071, !1071, !1135}
!1152 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1153, file: !1038, line: 174)
!1153 = !DISubprogram(name: "vwprintf", scope: !1044, file: !1044, line: 606, type: !1154, flags: DIFlagPrototyped, spFlags: 0)
!1154 = !DISubroutineType(types: !1155)
!1155 = !{!16, !1071, !1135}
!1156 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1157, file: !1038, line: 176)
!1157 = !DISubprogram(name: "vwscanf", scope: !1044, file: !1044, line: 681, type: !1154, flags: DIFlagPrototyped, spFlags: 0)
!1158 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1159, file: !1038, line: 178)
!1159 = !DISubprogram(name: "wcrtomb", scope: !1044, file: !1044, line: 301, type: !1160, flags: DIFlagPrototyped, spFlags: 0)
!1160 = !DISubroutineType(types: !1161)
!1161 = !{!19, !1162, !1060, !1095}
!1162 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !242)
!1163 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1164, file: !1038, line: 179)
!1164 = !DISubprogram(name: "wcscat", scope: !1044, file: !1044, line: 97, type: !1165, flags: DIFlagPrototyped, spFlags: 0)
!1165 = !DISubroutineType(types: !1166)
!1166 = !{!1059, !1061, !1071}
!1167 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1168, file: !1038, line: 180)
!1168 = !DISubprogram(name: "wcscmp", scope: !1044, file: !1044, line: 106, type: !1169, flags: DIFlagPrototyped, spFlags: 0)
!1169 = !DISubroutineType(types: !1170)
!1170 = !{!16, !1072, !1072}
!1171 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1172, file: !1038, line: 181)
!1172 = !DISubprogram(name: "wcscoll", scope: !1044, file: !1044, line: 131, type: !1169, flags: DIFlagPrototyped, spFlags: 0)
!1173 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1174, file: !1038, line: 182)
!1174 = !DISubprogram(name: "wcscpy", scope: !1044, file: !1044, line: 87, type: !1165, flags: DIFlagPrototyped, spFlags: 0)
!1175 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1176, file: !1038, line: 183)
!1176 = !DISubprogram(name: "wcscspn", scope: !1044, file: !1044, line: 187, type: !1177, flags: DIFlagPrototyped, spFlags: 0)
!1177 = !DISubroutineType(types: !1178)
!1178 = !{!19, !1072, !1072}
!1179 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1180, file: !1038, line: 184)
!1180 = !DISubprogram(name: "wcsftime", scope: !1044, file: !1044, line: 835, type: !1181, flags: DIFlagPrototyped, spFlags: 0)
!1181 = !DISubroutineType(types: !1182)
!1182 = !{!19, !1061, !19, !1071, !1183}
!1183 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1184)
!1184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1185, size: 64)
!1185 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1186)
!1186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !1044, line: 83, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS2tm")
!1187 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1188, file: !1038, line: 185)
!1188 = !DISubprogram(name: "wcslen", scope: !1044, file: !1044, line: 222, type: !1189, flags: DIFlagPrototyped, spFlags: 0)
!1189 = !DISubroutineType(types: !1190)
!1190 = !{!19, !1072}
!1191 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1192, file: !1038, line: 186)
!1192 = !DISubprogram(name: "wcsncat", scope: !1044, file: !1044, line: 101, type: !1193, flags: DIFlagPrototyped, spFlags: 0)
!1193 = !DISubroutineType(types: !1194)
!1194 = !{!1059, !1061, !1071, !19}
!1195 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1196, file: !1038, line: 187)
!1196 = !DISubprogram(name: "wcsncmp", scope: !1044, file: !1044, line: 109, type: !1197, flags: DIFlagPrototyped, spFlags: 0)
!1197 = !DISubroutineType(types: !1198)
!1198 = !{!16, !1072, !1072, !19}
!1199 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1200, file: !1038, line: 188)
!1200 = !DISubprogram(name: "wcsncpy", scope: !1044, file: !1044, line: 92, type: !1193, flags: DIFlagPrototyped, spFlags: 0)
!1201 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1202, file: !1038, line: 189)
!1202 = !DISubprogram(name: "wcsrtombs", scope: !1044, file: !1044, line: 343, type: !1203, flags: DIFlagPrototyped, spFlags: 0)
!1203 = !DISubroutineType(types: !1204)
!1204 = !{!19, !1162, !1205, !19, !1095}
!1205 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1206)
!1206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1072, size: 64)
!1207 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1208, file: !1038, line: 190)
!1208 = !DISubprogram(name: "wcsspn", scope: !1044, file: !1044, line: 191, type: !1177, flags: DIFlagPrototyped, spFlags: 0)
!1209 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1210, file: !1038, line: 191)
!1210 = !DISubprogram(name: "wcstod", scope: !1044, file: !1044, line: 377, type: !1211, flags: DIFlagPrototyped, spFlags: 0)
!1211 = !DISubroutineType(types: !1212)
!1212 = !{!1213, !1071, !1214}
!1213 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!1214 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1215)
!1215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1059, size: 64)
!1216 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1217, file: !1038, line: 193)
!1217 = !DISubprogram(name: "wcstof", scope: !1044, file: !1044, line: 382, type: !1218, flags: DIFlagPrototyped, spFlags: 0)
!1218 = !DISubroutineType(types: !1219)
!1219 = !{!1220, !1071, !1214}
!1220 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!1221 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1222, file: !1038, line: 195)
!1222 = !DISubprogram(name: "wcstok", scope: !1044, file: !1044, line: 217, type: !1223, flags: DIFlagPrototyped, spFlags: 0)
!1223 = !DISubroutineType(types: !1224)
!1224 = !{!1059, !1061, !1071, !1214}
!1225 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1226, file: !1038, line: 196)
!1226 = !DISubprogram(name: "wcstol", scope: !1044, file: !1044, line: 428, type: !1227, flags: DIFlagPrototyped, spFlags: 0)
!1227 = !DISubroutineType(types: !1228)
!1228 = !{!68, !1071, !1214, !16}
!1229 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1230, file: !1038, line: 197)
!1230 = !DISubprogram(name: "wcstoul", scope: !1044, file: !1044, line: 433, type: !1231, flags: DIFlagPrototyped, spFlags: 0)
!1231 = !DISubroutineType(types: !1232)
!1232 = !{!21, !1071, !1214, !16}
!1233 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1234, file: !1038, line: 198)
!1234 = !DISubprogram(name: "wcsxfrm", scope: !1044, file: !1044, line: 135, type: !1235, flags: DIFlagPrototyped, spFlags: 0)
!1235 = !DISubroutineType(types: !1236)
!1236 = !{!19, !1061, !1071, !19}
!1237 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1238, file: !1038, line: 199)
!1238 = !DISubprogram(name: "wctob", scope: !1044, file: !1044, line: 288, type: !1239, flags: DIFlagPrototyped, spFlags: 0)
!1239 = !DISubroutineType(types: !1240)
!1240 = !{!16, !1040}
!1241 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1242, file: !1038, line: 200)
!1242 = !DISubprogram(name: "wmemcmp", scope: !1044, file: !1044, line: 258, type: !1197, flags: DIFlagPrototyped, spFlags: 0)
!1243 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1244, file: !1038, line: 201)
!1244 = !DISubprogram(name: "wmemcpy", scope: !1044, file: !1044, line: 262, type: !1193, flags: DIFlagPrototyped, spFlags: 0)
!1245 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1246, file: !1038, line: 202)
!1246 = !DISubprogram(name: "wmemmove", scope: !1044, file: !1044, line: 267, type: !1247, flags: DIFlagPrototyped, spFlags: 0)
!1247 = !DISubroutineType(types: !1248)
!1248 = !{!1059, !1059, !1072, !19}
!1249 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1250, file: !1038, line: 203)
!1250 = !DISubprogram(name: "wmemset", scope: !1044, file: !1044, line: 271, type: !1251, flags: DIFlagPrototyped, spFlags: 0)
!1251 = !DISubroutineType(types: !1252)
!1252 = !{!1059, !1059, !1060, !19}
!1253 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1254, file: !1038, line: 204)
!1254 = !DISubprogram(name: "wprintf", scope: !1044, file: !1044, line: 587, type: !1255, flags: DIFlagPrototyped, spFlags: 0)
!1255 = !DISubroutineType(types: !1256)
!1256 = !{!16, !1071, null}
!1257 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1258, file: !1038, line: 205)
!1258 = !DISubprogram(name: "wscanf", scope: !1044, file: !1044, line: 628, type: !1255, flags: DIFlagPrototyped, spFlags: 0)
!1259 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1260, file: !1038, line: 206)
!1260 = !DISubprogram(name: "wcschr", scope: !1044, file: !1044, line: 164, type: !1261, flags: DIFlagPrototyped, spFlags: 0)
!1261 = !DISubroutineType(types: !1262)
!1262 = !{!1059, !1072, !1060}
!1263 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1264, file: !1038, line: 207)
!1264 = !DISubprogram(name: "wcspbrk", scope: !1044, file: !1044, line: 201, type: !1265, flags: DIFlagPrototyped, spFlags: 0)
!1265 = !DISubroutineType(types: !1266)
!1266 = !{!1059, !1072, !1072}
!1267 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1268, file: !1038, line: 208)
!1268 = !DISubprogram(name: "wcsrchr", scope: !1044, file: !1044, line: 174, type: !1261, flags: DIFlagPrototyped, spFlags: 0)
!1269 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1270, file: !1038, line: 209)
!1270 = !DISubprogram(name: "wcsstr", scope: !1044, file: !1044, line: 212, type: !1265, flags: DIFlagPrototyped, spFlags: 0)
!1271 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1272, file: !1038, line: 210)
!1272 = !DISubprogram(name: "wmemchr", scope: !1044, file: !1044, line: 253, type: !1273, flags: DIFlagPrototyped, spFlags: 0)
!1273 = !DISubroutineType(types: !1274)
!1274 = !{!1059, !1072, !1060, !19}
!1275 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !1276, file: !1038, line: 251)
!1276 = !DISubprogram(name: "wcstold", scope: !1044, file: !1044, line: 384, type: !1277, flags: DIFlagPrototyped, spFlags: 0)
!1277 = !DISubroutineType(types: !1278)
!1278 = !{!1279, !1071, !1214}
!1279 = !DIBasicType(name: "long double", size: 128, encoding: DW_ATE_float)
!1280 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !1281, file: !1038, line: 260)
!1281 = !DISubprogram(name: "wcstoll", scope: !1044, file: !1044, line: 441, type: !1282, flags: DIFlagPrototyped, spFlags: 0)
!1282 = !DISubroutineType(types: !1283)
!1283 = !{!1284, !1071, !1214, !16}
!1284 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!1285 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !1286, file: !1038, line: 261)
!1286 = !DISubprogram(name: "wcstoull", scope: !1044, file: !1044, line: 448, type: !1287, flags: DIFlagPrototyped, spFlags: 0)
!1287 = !DISubroutineType(types: !1288)
!1288 = !{!1289, !1071, !1214, !16}
!1289 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!1290 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1276, file: !1038, line: 267)
!1291 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1281, file: !1038, line: 268)
!1292 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1286, file: !1038, line: 269)
!1293 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1217, file: !1038, line: 283)
!1294 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1143, file: !1038, line: 286)
!1295 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1149, file: !1038, line: 289)
!1296 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1157, file: !1038, line: 292)
!1297 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1276, file: !1038, line: 296)
!1298 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1281, file: !1038, line: 297)
!1299 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1286, file: !1038, line: 298)
!1300 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1301, file: !1302, line: 68)
!1301 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "exception_ptr", scope: !1303, file: !1302, line: 90, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !1304, identifier: "_ZTSNSt15__exception_ptr13exception_ptrE")
!1302 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/exception_ptr.h", directory: "")
!1303 = !DINamespace(name: "__exception_ptr", scope: !31)
!1304 = !{!1305, !1306, !1310, !1313, !1314, !1319, !1320, !1324, !1329, !1333, !1337, !1340, !1341, !1344, !1347}
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "_M_exception_object", scope: !1301, file: !1302, line: 92, baseType: !38, size: 64)
!1306 = !DISubprogram(name: "exception_ptr", scope: !1301, file: !1302, line: 94, type: !1307, scopeLine: 94, flags: DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!1307 = !DISubroutineType(types: !1308)
!1308 = !{null, !1309, !38}
!1309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1301, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1310 = !DISubprogram(name: "_M_addref", linkageName: "_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv", scope: !1301, file: !1302, line: 96, type: !1311, scopeLine: 96, flags: DIFlagPrototyped, spFlags: 0)
!1311 = !DISubroutineType(types: !1312)
!1312 = !{null, !1309}
!1313 = !DISubprogram(name: "_M_release", linkageName: "_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv", scope: !1301, file: !1302, line: 97, type: !1311, scopeLine: 97, flags: DIFlagPrototyped, spFlags: 0)
!1314 = !DISubprogram(name: "_M_get", linkageName: "_ZNKSt15__exception_ptr13exception_ptr6_M_getEv", scope: !1301, file: !1302, line: 99, type: !1315, scopeLine: 99, flags: DIFlagPrototyped, spFlags: 0)
!1315 = !DISubroutineType(types: !1316)
!1316 = !{!38, !1317}
!1317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1318, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1318 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1301)
!1319 = !DISubprogram(name: "exception_ptr", scope: !1301, file: !1302, line: 107, type: !1311, scopeLine: 107, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1320 = !DISubprogram(name: "exception_ptr", scope: !1301, file: !1302, line: 109, type: !1321, scopeLine: 109, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1321 = !DISubroutineType(types: !1322)
!1322 = !{null, !1309, !1323}
!1323 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1318, size: 64)
!1324 = !DISubprogram(name: "exception_ptr", scope: !1301, file: !1302, line: 112, type: !1325, scopeLine: 112, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1325 = !DISubroutineType(types: !1326)
!1326 = !{null, !1309, !1327}
!1327 = !DIDerivedType(tag: DW_TAG_typedef, name: "nullptr_t", scope: !31, file: !211, line: 284, baseType: !1328)
!1328 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "decltype(nullptr)")
!1329 = !DISubprogram(name: "exception_ptr", scope: !1301, file: !1302, line: 116, type: !1330, scopeLine: 116, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1330 = !DISubroutineType(types: !1331)
!1331 = !{null, !1309, !1332}
!1332 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !1301, size: 64)
!1333 = !DISubprogram(name: "operator=", linkageName: "_ZNSt15__exception_ptr13exception_ptraSERKS0_", scope: !1301, file: !1302, line: 129, type: !1334, scopeLine: 129, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1334 = !DISubroutineType(types: !1335)
!1335 = !{!1336, !1309, !1323}
!1336 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1301, size: 64)
!1337 = !DISubprogram(name: "operator=", linkageName: "_ZNSt15__exception_ptr13exception_ptraSEOS0_", scope: !1301, file: !1302, line: 133, type: !1338, scopeLine: 133, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1338 = !DISubroutineType(types: !1339)
!1339 = !{!1336, !1309, !1332}
!1340 = !DISubprogram(name: "~exception_ptr", scope: !1301, file: !1302, line: 140, type: !1311, scopeLine: 140, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1341 = !DISubprogram(name: "swap", linkageName: "_ZNSt15__exception_ptr13exception_ptr4swapERS0_", scope: !1301, file: !1302, line: 143, type: !1342, scopeLine: 143, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1342 = !DISubroutineType(types: !1343)
!1343 = !{null, !1309, !1336}
!1344 = !DISubprogram(name: "operator bool", linkageName: "_ZNKSt15__exception_ptr13exception_ptrcvbEv", scope: !1301, file: !1302, line: 155, type: !1345, scopeLine: 155, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!1345 = !DISubroutineType(types: !1346)
!1346 = !{!53, !1317}
!1347 = !DISubprogram(name: "__cxa_exception_type", linkageName: "_ZNKSt15__exception_ptr13exception_ptr20__cxa_exception_typeEv", scope: !1301, file: !1302, line: 176, type: !1348, scopeLine: 176, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1348 = !DISubroutineType(types: !1349)
!1349 = !{!1350, !1317}
!1350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1351, size: 64)
!1351 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1352)
!1352 = !DICompositeType(tag: DW_TAG_class_type, name: "type_info", scope: !31, file: !1353, line: 88, flags: DIFlagFwdDecl | DIFlagNonTrivial)
!1353 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/typeinfo", directory: "")
!1354 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !1303, entity: !1355, file: !1302, line: 84)
!1355 = !DISubprogram(name: "rethrow_exception", linkageName: "_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE", scope: !31, file: !1302, line: 80, type: !1356, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!1356 = !DISubroutineType(types: !1357)
!1357 = !{null, !1301}
!1358 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !92, file: !1359, line: 95)
!1359 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/shared_ptr_base.h", directory: "")
!1360 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1361, file: !1359, line: 96)
!1361 = !DIGlobalVariable(name: "__default_lock_policy", linkageName: "_ZN9__gnu_cxxL21__default_lock_policyE", scope: !94, file: !93, line: 53, type: !1362, isLocal: true, isDefinition: false)
!1362 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !92)
!1363 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1364, file: !1368, line: 77)
!1364 = !DISubprogram(name: "memchr", scope: !1365, file: !1365, line: 90, type: !1366, flags: DIFlagPrototyped, spFlags: 0)
!1365 = !DIFile(filename: "/usr/include/string.h", directory: "")
!1366 = !DISubroutineType(types: !1367)
!1367 = !{!38, !45, !16, !19}
!1368 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/cstring", directory: "")
!1369 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1370, file: !1368, line: 78)
!1370 = !DISubprogram(name: "memcmp", scope: !1365, file: !1365, line: 63, type: !1371, flags: DIFlagPrototyped, spFlags: 0)
!1371 = !DISubroutineType(types: !1372)
!1372 = !{!16, !45, !45, !19}
!1373 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1374, file: !1368, line: 79)
!1374 = !DISubprogram(name: "memcpy", scope: !1365, file: !1365, line: 42, type: !1375, flags: DIFlagPrototyped, spFlags: 0)
!1375 = !DISubroutineType(types: !1376)
!1376 = !{!38, !1377, !1378, !19}
!1377 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !38)
!1378 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !45)
!1379 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1380, file: !1368, line: 80)
!1380 = !DISubprogram(name: "memmove", scope: !1365, file: !1365, line: 46, type: !1381, flags: DIFlagPrototyped, spFlags: 0)
!1381 = !DISubroutineType(types: !1382)
!1382 = !{!38, !38, !45, !19}
!1383 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1384, file: !1368, line: 81)
!1384 = !DISubprogram(name: "memset", scope: !1365, file: !1365, line: 60, type: !1385, flags: DIFlagPrototyped, spFlags: 0)
!1385 = !DISubroutineType(types: !1386)
!1386 = !{!38, !38, !16, !19}
!1387 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1388, file: !1368, line: 82)
!1388 = !DISubprogram(name: "strcat", scope: !1365, file: !1365, line: 129, type: !1389, flags: DIFlagPrototyped, spFlags: 0)
!1389 = !DISubroutineType(types: !1390)
!1390 = !{!242, !1162, !1094}
!1391 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1392, file: !1368, line: 83)
!1392 = !DISubprogram(name: "strcmp", scope: !1365, file: !1365, line: 136, type: !1393, flags: DIFlagPrototyped, spFlags: 0)
!1393 = !DISubroutineType(types: !1394)
!1394 = !{!16, !226, !226}
!1395 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1396, file: !1368, line: 84)
!1396 = !DISubprogram(name: "strcoll", scope: !1365, file: !1365, line: 143, type: !1393, flags: DIFlagPrototyped, spFlags: 0)
!1397 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1398, file: !1368, line: 85)
!1398 = !DISubprogram(name: "strcpy", scope: !1365, file: !1365, line: 121, type: !1389, flags: DIFlagPrototyped, spFlags: 0)
!1399 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1400, file: !1368, line: 86)
!1400 = !DISubprogram(name: "strcspn", scope: !1365, file: !1365, line: 272, type: !1401, flags: DIFlagPrototyped, spFlags: 0)
!1401 = !DISubroutineType(types: !1402)
!1402 = !{!19, !226, !226}
!1403 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1404, file: !1368, line: 87)
!1404 = !DISubprogram(name: "strerror", scope: !1365, file: !1365, line: 396, type: !1405, flags: DIFlagPrototyped, spFlags: 0)
!1405 = !DISubroutineType(types: !1406)
!1406 = !{!242, !16}
!1407 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1408, file: !1368, line: 88)
!1408 = !DISubprogram(name: "strlen", scope: !1365, file: !1365, line: 384, type: !1409, flags: DIFlagPrototyped, spFlags: 0)
!1409 = !DISubroutineType(types: !1410)
!1410 = !{!19, !226}
!1411 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1412, file: !1368, line: 89)
!1412 = !DISubprogram(name: "strncat", scope: !1365, file: !1365, line: 132, type: !1413, flags: DIFlagPrototyped, spFlags: 0)
!1413 = !DISubroutineType(types: !1414)
!1414 = !{!242, !1162, !1094, !19}
!1415 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1416, file: !1368, line: 90)
!1416 = !DISubprogram(name: "strncmp", scope: !1365, file: !1365, line: 139, type: !1417, flags: DIFlagPrototyped, spFlags: 0)
!1417 = !DISubroutineType(types: !1418)
!1418 = !{!16, !226, !226, !19}
!1419 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1420, file: !1368, line: 91)
!1420 = !DISubprogram(name: "strncpy", scope: !1365, file: !1365, line: 124, type: !1413, flags: DIFlagPrototyped, spFlags: 0)
!1421 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1422, file: !1368, line: 92)
!1422 = !DISubprogram(name: "strspn", scope: !1365, file: !1365, line: 276, type: !1401, flags: DIFlagPrototyped, spFlags: 0)
!1423 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1424, file: !1368, line: 93)
!1424 = !DISubprogram(name: "strtok", scope: !1365, file: !1365, line: 335, type: !1389, flags: DIFlagPrototyped, spFlags: 0)
!1425 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1426, file: !1368, line: 94)
!1426 = !DISubprogram(name: "strxfrm", scope: !1365, file: !1365, line: 146, type: !1427, flags: DIFlagPrototyped, spFlags: 0)
!1427 = !DISubroutineType(types: !1428)
!1428 = !{!19, !1162, !1094, !19}
!1429 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1430, file: !1368, line: 95)
!1430 = !DISubprogram(name: "strchr", scope: !1365, file: !1365, line: 225, type: !1431, flags: DIFlagPrototyped, spFlags: 0)
!1431 = !DISubroutineType(types: !1432)
!1432 = !{!242, !226, !16}
!1433 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1434, file: !1368, line: 96)
!1434 = !DISubprogram(name: "strpbrk", scope: !1365, file: !1365, line: 302, type: !1435, flags: DIFlagPrototyped, spFlags: 0)
!1435 = !DISubroutineType(types: !1436)
!1436 = !{!242, !226, !226}
!1437 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1438, file: !1368, line: 97)
!1438 = !DISubprogram(name: "strrchr", scope: !1365, file: !1365, line: 252, type: !1431, flags: DIFlagPrototyped, spFlags: 0)
!1439 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1440, file: !1368, line: 98)
!1440 = !DISubprogram(name: "strstr", scope: !1365, file: !1365, line: 329, type: !1435, flags: DIFlagPrototyped, spFlags: 0)
!1441 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1442, file: !1445, line: 58)
!1442 = !DIDerivedType(tag: DW_TAG_typedef, name: "max_align_t", file: !1443, line: 24, baseType: !1444)
!1443 = !DIFile(filename: "tools/llvm-project/build/lib/clang/11.1.0/include/__stddef_max_align_t.h", directory: "/home/mushfiqur")
!1444 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1443, line: 19, flags: DIFlagFwdDecl, identifier: "_ZTS11max_align_t")
!1445 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/cstddef", directory: "")
!1446 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1447, file: !1450, line: 47)
!1447 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !65, line: 24, baseType: !1448)
!1448 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !67, line: 36, baseType: !1449)
!1449 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1450 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/cstdint", directory: "")
!1451 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1452, file: !1450, line: 48)
!1452 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !65, line: 25, baseType: !1453)
!1453 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int16_t", file: !67, line: 38, baseType: !1454)
!1454 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1455 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1456, file: !1450, line: 49)
!1456 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !65, line: 26, baseType: !1457)
!1457 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !67, line: 40, baseType: !16)
!1458 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !64, file: !1450, line: 50)
!1459 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1460, file: !1450, line: 52)
!1460 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast8_t", file: !224, line: 68, baseType: !1449)
!1461 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1462, file: !1450, line: 53)
!1462 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast16_t", file: !224, line: 70, baseType: !68)
!1463 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1464, file: !1450, line: 54)
!1464 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast32_t", file: !224, line: 71, baseType: !68)
!1465 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1466, file: !1450, line: 55)
!1466 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast64_t", file: !224, line: 72, baseType: !68)
!1467 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1468, file: !1450, line: 57)
!1468 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least8_t", file: !224, line: 43, baseType: !1449)
!1469 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1470, file: !1450, line: 58)
!1470 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least16_t", file: !224, line: 44, baseType: !1454)
!1471 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1472, file: !1450, line: 59)
!1472 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least32_t", file: !224, line: 45, baseType: !16)
!1473 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1474, file: !1450, line: 60)
!1474 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least64_t", file: !224, line: 47, baseType: !68)
!1475 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1476, file: !1450, line: 62)
!1476 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !224, line: 111, baseType: !1477)
!1477 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !67, line: 61, baseType: !68)
!1478 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !223, file: !1450, line: 63)
!1479 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1480, file: !1450, line: 65)
!1480 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !77, line: 24, baseType: !1481)
!1481 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !67, line: 37, baseType: !1482)
!1482 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!1483 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1484, file: !1450, line: 66)
!1484 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !77, line: 25, baseType: !1485)
!1485 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !67, line: 39, baseType: !1486)
!1486 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!1487 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1488, file: !1450, line: 67)
!1488 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !77, line: 26, baseType: !1489)
!1489 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !67, line: 41, baseType: !95)
!1490 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !76, file: !1450, line: 68)
!1491 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1492, file: !1450, line: 70)
!1492 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast8_t", file: !224, line: 81, baseType: !1482)
!1493 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1494, file: !1450, line: 71)
!1494 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast16_t", file: !224, line: 83, baseType: !21)
!1495 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1496, file: !1450, line: 72)
!1496 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast32_t", file: !224, line: 84, baseType: !21)
!1497 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1498, file: !1450, line: 73)
!1498 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast64_t", file: !224, line: 85, baseType: !21)
!1499 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1500, file: !1450, line: 75)
!1500 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least8_t", file: !224, line: 54, baseType: !1482)
!1501 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1502, file: !1450, line: 76)
!1502 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least16_t", file: !224, line: 55, baseType: !1486)
!1503 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1504, file: !1450, line: 77)
!1504 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least32_t", file: !224, line: 56, baseType: !95)
!1505 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1506, file: !1450, line: 78)
!1506 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least64_t", file: !224, line: 58, baseType: !21)
!1507 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1508, file: !1450, line: 80)
!1508 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !224, line: 112, baseType: !1509)
!1509 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !67, line: 62, baseType: !21)
!1510 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1511, file: !1450, line: 81)
!1511 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !224, line: 100, baseType: !21)
!1512 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1513, file: !1515, line: 53)
!1513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lconv", file: !1514, line: 51, flags: DIFlagFwdDecl, identifier: "_ZTS5lconv")
!1514 = !DIFile(filename: "/usr/include/locale.h", directory: "")
!1515 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/clocale", directory: "")
!1516 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1517, file: !1515, line: 54)
!1517 = !DISubprogram(name: "setlocale", scope: !1514, file: !1514, line: 122, type: !1518, flags: DIFlagPrototyped, spFlags: 0)
!1518 = !DISubroutineType(types: !1519)
!1519 = !{!242, !16, !226}
!1520 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1521, file: !1515, line: 55)
!1521 = !DISubprogram(name: "localeconv", scope: !1514, file: !1514, line: 125, type: !1522, flags: DIFlagPrototyped, spFlags: 0)
!1522 = !DISubroutineType(types: !1523)
!1523 = !{!1524}
!1524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1513, size: 64)
!1525 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1526, file: !1530, line: 64)
!1526 = !DISubprogram(name: "isalnum", scope: !1527, file: !1527, line: 108, type: !1528, flags: DIFlagPrototyped, spFlags: 0)
!1527 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!1528 = !DISubroutineType(types: !1529)
!1529 = !{!16, !16}
!1530 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/cctype", directory: "")
!1531 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1532, file: !1530, line: 65)
!1532 = !DISubprogram(name: "isalpha", scope: !1527, file: !1527, line: 109, type: !1528, flags: DIFlagPrototyped, spFlags: 0)
!1533 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1534, file: !1530, line: 66)
!1534 = !DISubprogram(name: "iscntrl", scope: !1527, file: !1527, line: 110, type: !1528, flags: DIFlagPrototyped, spFlags: 0)
!1535 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1536, file: !1530, line: 67)
!1536 = !DISubprogram(name: "isdigit", scope: !1527, file: !1527, line: 111, type: !1528, flags: DIFlagPrototyped, spFlags: 0)
!1537 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1538, file: !1530, line: 68)
!1538 = !DISubprogram(name: "isgraph", scope: !1527, file: !1527, line: 113, type: !1528, flags: DIFlagPrototyped, spFlags: 0)
!1539 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1540, file: !1530, line: 69)
!1540 = !DISubprogram(name: "islower", scope: !1527, file: !1527, line: 112, type: !1528, flags: DIFlagPrototyped, spFlags: 0)
!1541 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1542, file: !1530, line: 70)
!1542 = !DISubprogram(name: "isprint", scope: !1527, file: !1527, line: 114, type: !1528, flags: DIFlagPrototyped, spFlags: 0)
!1543 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1544, file: !1530, line: 71)
!1544 = !DISubprogram(name: "ispunct", scope: !1527, file: !1527, line: 115, type: !1528, flags: DIFlagPrototyped, spFlags: 0)
!1545 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1546, file: !1530, line: 72)
!1546 = !DISubprogram(name: "isspace", scope: !1527, file: !1527, line: 116, type: !1528, flags: DIFlagPrototyped, spFlags: 0)
!1547 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1548, file: !1530, line: 73)
!1548 = !DISubprogram(name: "isupper", scope: !1527, file: !1527, line: 117, type: !1528, flags: DIFlagPrototyped, spFlags: 0)
!1549 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1550, file: !1530, line: 74)
!1550 = !DISubprogram(name: "isxdigit", scope: !1527, file: !1527, line: 118, type: !1528, flags: DIFlagPrototyped, spFlags: 0)
!1551 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1552, file: !1530, line: 75)
!1552 = !DISubprogram(name: "tolower", scope: !1527, file: !1527, line: 122, type: !1528, flags: DIFlagPrototyped, spFlags: 0)
!1553 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1554, file: !1530, line: 76)
!1554 = !DISubprogram(name: "toupper", scope: !1527, file: !1527, line: 125, type: !1528, flags: DIFlagPrototyped, spFlags: 0)
!1555 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1556, file: !1530, line: 87)
!1556 = !DISubprogram(name: "isblank", scope: !1527, file: !1527, line: 130, type: !1528, flags: DIFlagPrototyped, spFlags: 0)
!1557 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1558, file: !1560, line: 52)
!1558 = !DISubprogram(name: "abs", scope: !1559, file: !1559, line: 837, type: !1528, flags: DIFlagPrototyped, spFlags: 0)
!1559 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!1560 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/std_abs.h", directory: "")
!1561 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1562, file: !1564, line: 127)
!1562 = !DIDerivedType(tag: DW_TAG_typedef, name: "div_t", file: !1559, line: 62, baseType: !1563)
!1563 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1559, line: 58, flags: DIFlagFwdDecl, identifier: "_ZTS5div_t")
!1564 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/cstdlib", directory: "")
!1565 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1566, file: !1564, line: 128)
!1566 = !DIDerivedType(tag: DW_TAG_typedef, name: "ldiv_t", file: !1559, line: 70, baseType: !1567)
!1567 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1559, line: 66, size: 128, flags: DIFlagTypePassByValue, elements: !1568, identifier: "_ZTS6ldiv_t")
!1568 = !{!1569, !1570}
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !1567, file: !1559, line: 68, baseType: !68, size: 64)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !1567, file: !1559, line: 69, baseType: !68, size: 64, offset: 64)
!1571 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1572, file: !1564, line: 130)
!1572 = !DISubprogram(name: "abort", scope: !1559, file: !1559, line: 588, type: !1573, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!1573 = !DISubroutineType(types: !1574)
!1574 = !{null}
!1575 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1576, file: !1564, line: 132)
!1576 = !DISubprogram(name: "aligned_alloc", scope: !1559, file: !1559, line: 583, type: !1577, flags: DIFlagPrototyped, spFlags: 0)
!1577 = !DISubroutineType(types: !1578)
!1578 = !{!38, !19, !19}
!1579 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1580, file: !1564, line: 134)
!1580 = !DISubprogram(name: "atexit", scope: !1559, file: !1559, line: 592, type: !1581, flags: DIFlagPrototyped, spFlags: 0)
!1581 = !DISubroutineType(types: !1582)
!1582 = !{!16, !1583}
!1583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1573, size: 64)
!1584 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1585, file: !1564, line: 137)
!1585 = !DISubprogram(name: "at_quick_exit", scope: !1559, file: !1559, line: 597, type: !1581, flags: DIFlagPrototyped, spFlags: 0)
!1586 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1587, file: !1564, line: 140)
!1587 = !DISubprogram(name: "atof", scope: !1559, file: !1559, line: 101, type: !1588, flags: DIFlagPrototyped, spFlags: 0)
!1588 = !DISubroutineType(types: !1589)
!1589 = !{!1213, !226}
!1590 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1591, file: !1564, line: 141)
!1591 = !DISubprogram(name: "atoi", scope: !1559, file: !1559, line: 104, type: !1592, flags: DIFlagPrototyped, spFlags: 0)
!1592 = !DISubroutineType(types: !1593)
!1593 = !{!16, !226}
!1594 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1595, file: !1564, line: 142)
!1595 = !DISubprogram(name: "atol", scope: !1559, file: !1559, line: 107, type: !1596, flags: DIFlagPrototyped, spFlags: 0)
!1596 = !DISubroutineType(types: !1597)
!1597 = !{!68, !226}
!1598 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1599, file: !1564, line: 143)
!1599 = !DISubprogram(name: "bsearch", scope: !1559, file: !1559, line: 817, type: !1600, flags: DIFlagPrototyped, spFlags: 0)
!1600 = !DISubroutineType(types: !1601)
!1601 = !{!38, !45, !45, !19, !19, !1602}
!1602 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !1559, line: 805, baseType: !1603)
!1603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1604, size: 64)
!1604 = !DISubroutineType(types: !1605)
!1605 = !{!16, !45, !45}
!1606 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1607, file: !1564, line: 144)
!1607 = !DISubprogram(name: "calloc", scope: !1559, file: !1559, line: 541, type: !1577, flags: DIFlagPrototyped, spFlags: 0)
!1608 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1609, file: !1564, line: 145)
!1609 = !DISubprogram(name: "div", scope: !1559, file: !1559, line: 849, type: !1610, flags: DIFlagPrototyped, spFlags: 0)
!1610 = !DISubroutineType(types: !1611)
!1611 = !{!1562, !16, !16}
!1612 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1613, file: !1564, line: 146)
!1613 = !DISubprogram(name: "exit", scope: !1559, file: !1559, line: 614, type: !1614, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!1614 = !DISubroutineType(types: !1615)
!1615 = !{null, !16}
!1616 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1617, file: !1564, line: 147)
!1617 = !DISubprogram(name: "free", scope: !1559, file: !1559, line: 563, type: !1618, flags: DIFlagPrototyped, spFlags: 0)
!1618 = !DISubroutineType(types: !1619)
!1619 = !{null, !38}
!1620 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1621, file: !1564, line: 148)
!1621 = !DISubprogram(name: "getenv", scope: !1559, file: !1559, line: 631, type: !1622, flags: DIFlagPrototyped, spFlags: 0)
!1622 = !DISubroutineType(types: !1623)
!1623 = !{!242, !226}
!1624 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1625, file: !1564, line: 149)
!1625 = !DISubprogram(name: "labs", scope: !1559, file: !1559, line: 838, type: !1626, flags: DIFlagPrototyped, spFlags: 0)
!1626 = !DISubroutineType(types: !1627)
!1627 = !{!68, !68}
!1628 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1629, file: !1564, line: 150)
!1629 = !DISubprogram(name: "ldiv", scope: !1559, file: !1559, line: 851, type: !1630, flags: DIFlagPrototyped, spFlags: 0)
!1630 = !DISubroutineType(types: !1631)
!1631 = !{!1566, !68, !68}
!1632 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1633, file: !1564, line: 151)
!1633 = !DISubprogram(name: "malloc", scope: !1559, file: !1559, line: 539, type: !1634, flags: DIFlagPrototyped, spFlags: 0)
!1634 = !DISubroutineType(types: !1635)
!1635 = !{!38, !19}
!1636 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1637, file: !1564, line: 153)
!1637 = !DISubprogram(name: "mblen", scope: !1559, file: !1559, line: 919, type: !1638, flags: DIFlagPrototyped, spFlags: 0)
!1638 = !DISubroutineType(types: !1639)
!1639 = !{!16, !226, !19}
!1640 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1641, file: !1564, line: 154)
!1641 = !DISubprogram(name: "mbstowcs", scope: !1559, file: !1559, line: 930, type: !1642, flags: DIFlagPrototyped, spFlags: 0)
!1642 = !DISubroutineType(types: !1643)
!1643 = !{!19, !1061, !1094, !19}
!1644 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1645, file: !1564, line: 155)
!1645 = !DISubprogram(name: "mbtowc", scope: !1559, file: !1559, line: 922, type: !1646, flags: DIFlagPrototyped, spFlags: 0)
!1646 = !DISubroutineType(types: !1647)
!1647 = !{!16, !1061, !1094, !19}
!1648 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1649, file: !1564, line: 157)
!1649 = !DISubprogram(name: "qsort", scope: !1559, file: !1559, line: 827, type: !1650, flags: DIFlagPrototyped, spFlags: 0)
!1650 = !DISubroutineType(types: !1651)
!1651 = !{null, !38, !19, !19, !1602}
!1652 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1653, file: !1564, line: 160)
!1653 = !DISubprogram(name: "quick_exit", scope: !1559, file: !1559, line: 620, type: !1614, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!1654 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1655, file: !1564, line: 163)
!1655 = !DISubprogram(name: "rand", scope: !1559, file: !1559, line: 453, type: !14, flags: DIFlagPrototyped, spFlags: 0)
!1656 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1657, file: !1564, line: 164)
!1657 = !DISubprogram(name: "realloc", scope: !1559, file: !1559, line: 549, type: !1658, flags: DIFlagPrototyped, spFlags: 0)
!1658 = !DISubroutineType(types: !1659)
!1659 = !{!38, !38, !19}
!1660 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1661, file: !1564, line: 165)
!1661 = !DISubprogram(name: "srand", scope: !1559, file: !1559, line: 455, type: !1662, flags: DIFlagPrototyped, spFlags: 0)
!1662 = !DISubroutineType(types: !1663)
!1663 = !{null, !95}
!1664 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1665, file: !1564, line: 166)
!1665 = !DISubprogram(name: "strtod", scope: !1559, file: !1559, line: 117, type: !1666, flags: DIFlagPrototyped, spFlags: 0)
!1666 = !DISubroutineType(types: !1667)
!1667 = !{!1213, !1094, !1668}
!1668 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1669)
!1669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!1670 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1671, file: !1564, line: 167)
!1671 = !DISubprogram(name: "strtol", scope: !1559, file: !1559, line: 176, type: !1672, flags: DIFlagPrototyped, spFlags: 0)
!1672 = !DISubroutineType(types: !1673)
!1673 = !{!68, !1094, !1668, !16}
!1674 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1675, file: !1564, line: 168)
!1675 = !DISubprogram(name: "strtoul", scope: !1559, file: !1559, line: 180, type: !1676, flags: DIFlagPrototyped, spFlags: 0)
!1676 = !DISubroutineType(types: !1677)
!1677 = !{!21, !1094, !1668, !16}
!1678 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1679, file: !1564, line: 169)
!1679 = !DISubprogram(name: "system", scope: !1559, file: !1559, line: 781, type: !1592, flags: DIFlagPrototyped, spFlags: 0)
!1680 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1681, file: !1564, line: 171)
!1681 = !DISubprogram(name: "wcstombs", scope: !1559, file: !1559, line: 933, type: !1682, flags: DIFlagPrototyped, spFlags: 0)
!1682 = !DISubroutineType(types: !1683)
!1683 = !{!19, !1162, !1071, !19}
!1684 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1685, file: !1564, line: 172)
!1685 = !DISubprogram(name: "wctomb", scope: !1559, file: !1559, line: 926, type: !1686, flags: DIFlagPrototyped, spFlags: 0)
!1686 = !DISubroutineType(types: !1687)
!1687 = !{!16, !242, !1060}
!1688 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !1689, file: !1564, line: 200)
!1689 = !DIDerivedType(tag: DW_TAG_typedef, name: "lldiv_t", file: !1559, line: 80, baseType: !1690)
!1690 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1559, line: 76, size: 128, flags: DIFlagTypePassByValue, elements: !1691, identifier: "_ZTS7lldiv_t")
!1691 = !{!1692, !1693}
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !1690, file: !1559, line: 78, baseType: !1284, size: 64)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !1690, file: !1559, line: 79, baseType: !1284, size: 64, offset: 64)
!1694 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !1695, file: !1564, line: 206)
!1695 = !DISubprogram(name: "_Exit", scope: !1559, file: !1559, line: 626, type: !1614, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!1696 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !1697, file: !1564, line: 210)
!1697 = !DISubprogram(name: "llabs", scope: !1559, file: !1559, line: 841, type: !1698, flags: DIFlagPrototyped, spFlags: 0)
!1698 = !DISubroutineType(types: !1699)
!1699 = !{!1284, !1284}
!1700 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !1701, file: !1564, line: 216)
!1701 = !DISubprogram(name: "lldiv", scope: !1559, file: !1559, line: 855, type: !1702, flags: DIFlagPrototyped, spFlags: 0)
!1702 = !DISubroutineType(types: !1703)
!1703 = !{!1689, !1284, !1284}
!1704 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !1705, file: !1564, line: 227)
!1705 = !DISubprogram(name: "atoll", scope: !1559, file: !1559, line: 112, type: !1706, flags: DIFlagPrototyped, spFlags: 0)
!1706 = !DISubroutineType(types: !1707)
!1707 = !{!1284, !226}
!1708 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !1709, file: !1564, line: 228)
!1709 = !DISubprogram(name: "strtoll", scope: !1559, file: !1559, line: 200, type: !1710, flags: DIFlagPrototyped, spFlags: 0)
!1710 = !DISubroutineType(types: !1711)
!1711 = !{!1284, !1094, !1668, !16}
!1712 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !1713, file: !1564, line: 229)
!1713 = !DISubprogram(name: "strtoull", scope: !1559, file: !1559, line: 205, type: !1714, flags: DIFlagPrototyped, spFlags: 0)
!1714 = !DISubroutineType(types: !1715)
!1715 = !{!1289, !1094, !1668, !16}
!1716 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !1717, file: !1564, line: 231)
!1717 = !DISubprogram(name: "strtof", scope: !1559, file: !1559, line: 123, type: !1718, flags: DIFlagPrototyped, spFlags: 0)
!1718 = !DISubroutineType(types: !1719)
!1719 = !{!1220, !1094, !1668}
!1720 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !1721, file: !1564, line: 232)
!1721 = !DISubprogram(name: "strtold", scope: !1559, file: !1559, line: 126, type: !1722, flags: DIFlagPrototyped, spFlags: 0)
!1722 = !DISubroutineType(types: !1723)
!1723 = !{!1279, !1094, !1668}
!1724 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1689, file: !1564, line: 240)
!1725 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1695, file: !1564, line: 242)
!1726 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1697, file: !1564, line: 244)
!1727 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1728, file: !1564, line: 245)
!1728 = !DISubprogram(name: "div", linkageName: "_ZN9__gnu_cxx3divExx", scope: !94, file: !1564, line: 213, type: !1702, flags: DIFlagPrototyped, spFlags: 0)
!1729 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1701, file: !1564, line: 246)
!1730 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1705, file: !1564, line: 248)
!1731 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1717, file: !1564, line: 249)
!1732 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1709, file: !1564, line: 250)
!1733 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1713, file: !1564, line: 251)
!1734 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1721, file: !1564, line: 252)
!1735 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1736, file: !1738, line: 98)
!1736 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1737, line: 7, baseType: !1054)
!1737 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!1738 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/cstdio", directory: "")
!1739 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1740, file: !1738, line: 99)
!1740 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !1741, line: 78, baseType: !1742)
!1741 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!1742 = !DIDerivedType(tag: DW_TAG_typedef, name: "_G_fpos_t", file: !1743, line: 30, baseType: !1744)
!1743 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/_G_config.h", directory: "")
!1744 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1743, line: 26, flags: DIFlagFwdDecl, identifier: "_ZTS9_G_fpos_t")
!1745 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1746, file: !1738, line: 101)
!1746 = !DISubprogram(name: "clearerr", scope: !1741, file: !1741, line: 757, type: !1747, flags: DIFlagPrototyped, spFlags: 0)
!1747 = !DISubroutineType(types: !1748)
!1748 = !{null, !1749}
!1749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1736, size: 64)
!1750 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1751, file: !1738, line: 102)
!1751 = !DISubprogram(name: "fclose", scope: !1741, file: !1741, line: 199, type: !1752, flags: DIFlagPrototyped, spFlags: 0)
!1752 = !DISubroutineType(types: !1753)
!1753 = !{!16, !1749}
!1754 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1755, file: !1738, line: 103)
!1755 = !DISubprogram(name: "feof", scope: !1741, file: !1741, line: 759, type: !1752, flags: DIFlagPrototyped, spFlags: 0)
!1756 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1757, file: !1738, line: 104)
!1757 = !DISubprogram(name: "ferror", scope: !1741, file: !1741, line: 761, type: !1752, flags: DIFlagPrototyped, spFlags: 0)
!1758 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1759, file: !1738, line: 105)
!1759 = !DISubprogram(name: "fflush", scope: !1741, file: !1741, line: 204, type: !1752, flags: DIFlagPrototyped, spFlags: 0)
!1760 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1761, file: !1738, line: 106)
!1761 = !DISubprogram(name: "fgetc", scope: !1741, file: !1741, line: 477, type: !1752, flags: DIFlagPrototyped, spFlags: 0)
!1762 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1763, file: !1738, line: 107)
!1763 = !DISubprogram(name: "fgetpos", scope: !1741, file: !1741, line: 731, type: !1764, flags: DIFlagPrototyped, spFlags: 0)
!1764 = !DISubroutineType(types: !1765)
!1765 = !{!16, !1766, !1767}
!1766 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1749)
!1767 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1768)
!1768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1740, size: 64)
!1769 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1770, file: !1738, line: 108)
!1770 = !DISubprogram(name: "fgets", scope: !1741, file: !1741, line: 564, type: !1771, flags: DIFlagPrototyped, spFlags: 0)
!1771 = !DISubroutineType(types: !1772)
!1772 = !{!242, !1162, !16, !1766}
!1773 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1774, file: !1738, line: 109)
!1774 = !DISubprogram(name: "fopen", scope: !1741, file: !1741, line: 232, type: !1775, flags: DIFlagPrototyped, spFlags: 0)
!1775 = !DISubroutineType(types: !1776)
!1776 = !{!1749, !1094, !1094}
!1777 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1778, file: !1738, line: 110)
!1778 = !DISubprogram(name: "fprintf", scope: !1741, file: !1741, line: 312, type: !1779, flags: DIFlagPrototyped, spFlags: 0)
!1779 = !DISubroutineType(types: !1780)
!1780 = !{!16, !1766, !1094, null}
!1781 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1782, file: !1738, line: 111)
!1782 = !DISubprogram(name: "fputc", scope: !1741, file: !1741, line: 517, type: !1783, flags: DIFlagPrototyped, spFlags: 0)
!1783 = !DISubroutineType(types: !1784)
!1784 = !{!16, !16, !1749}
!1785 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1786, file: !1738, line: 112)
!1786 = !DISubprogram(name: "fputs", scope: !1741, file: !1741, line: 626, type: !1787, flags: DIFlagPrototyped, spFlags: 0)
!1787 = !DISubroutineType(types: !1788)
!1788 = !{!16, !1094, !1766}
!1789 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1790, file: !1738, line: 113)
!1790 = !DISubprogram(name: "fread", scope: !1741, file: !1741, line: 646, type: !1791, flags: DIFlagPrototyped, spFlags: 0)
!1791 = !DISubroutineType(types: !1792)
!1792 = !{!19, !1377, !19, !19, !1766}
!1793 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1794, file: !1738, line: 114)
!1794 = !DISubprogram(name: "freopen", scope: !1741, file: !1741, line: 238, type: !1795, flags: DIFlagPrototyped, spFlags: 0)
!1795 = !DISubroutineType(types: !1796)
!1796 = !{!1749, !1094, !1094, !1766}
!1797 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1798, file: !1738, line: 115)
!1798 = !DISubprogram(name: "fscanf", scope: !1741, file: !1741, line: 377, type: !1779, flags: DIFlagPrototyped, spFlags: 0)
!1799 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1800, file: !1738, line: 116)
!1800 = !DISubprogram(name: "fseek", scope: !1741, file: !1741, line: 684, type: !1801, flags: DIFlagPrototyped, spFlags: 0)
!1801 = !DISubroutineType(types: !1802)
!1802 = !{!16, !1749, !68, !16}
!1803 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1804, file: !1738, line: 117)
!1804 = !DISubprogram(name: "fsetpos", scope: !1741, file: !1741, line: 736, type: !1805, flags: DIFlagPrototyped, spFlags: 0)
!1805 = !DISubroutineType(types: !1806)
!1806 = !{!16, !1749, !1807}
!1807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1808, size: 64)
!1808 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1740)
!1809 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1810, file: !1738, line: 118)
!1810 = !DISubprogram(name: "ftell", scope: !1741, file: !1741, line: 689, type: !1811, flags: DIFlagPrototyped, spFlags: 0)
!1811 = !DISubroutineType(types: !1812)
!1812 = !{!68, !1749}
!1813 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1814, file: !1738, line: 119)
!1814 = !DISubprogram(name: "fwrite", scope: !1741, file: !1741, line: 652, type: !1815, flags: DIFlagPrototyped, spFlags: 0)
!1815 = !DISubroutineType(types: !1816)
!1816 = !{!19, !1378, !19, !19, !1766}
!1817 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1818, file: !1738, line: 120)
!1818 = !DISubprogram(name: "getc", scope: !1741, file: !1741, line: 478, type: !1752, flags: DIFlagPrototyped, spFlags: 0)
!1819 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1820, file: !1738, line: 121)
!1820 = !DISubprogram(name: "getchar", scope: !1741, file: !1741, line: 484, type: !14, flags: DIFlagPrototyped, spFlags: 0)
!1821 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1822, file: !1738, line: 126)
!1822 = !DISubprogram(name: "perror", scope: !1741, file: !1741, line: 775, type: !1823, flags: DIFlagPrototyped, spFlags: 0)
!1823 = !DISubroutineType(types: !1824)
!1824 = !{null, !226}
!1825 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1826, file: !1738, line: 127)
!1826 = !DISubprogram(name: "printf", scope: !1741, file: !1741, line: 318, type: !1827, flags: DIFlagPrototyped, spFlags: 0)
!1827 = !DISubroutineType(types: !1828)
!1828 = !{!16, !1094, null}
!1829 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1830, file: !1738, line: 128)
!1830 = !DISubprogram(name: "putc", scope: !1741, file: !1741, line: 518, type: !1783, flags: DIFlagPrototyped, spFlags: 0)
!1831 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1832, file: !1738, line: 129)
!1832 = !DISubprogram(name: "putchar", scope: !1741, file: !1741, line: 524, type: !1528, flags: DIFlagPrototyped, spFlags: 0)
!1833 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1834, file: !1738, line: 130)
!1834 = !DISubprogram(name: "puts", scope: !1741, file: !1741, line: 632, type: !1592, flags: DIFlagPrototyped, spFlags: 0)
!1835 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1836, file: !1738, line: 131)
!1836 = !DISubprogram(name: "remove", scope: !1741, file: !1741, line: 144, type: !1592, flags: DIFlagPrototyped, spFlags: 0)
!1837 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1838, file: !1738, line: 132)
!1838 = !DISubprogram(name: "rename", scope: !1741, file: !1741, line: 146, type: !1393, flags: DIFlagPrototyped, spFlags: 0)
!1839 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1840, file: !1738, line: 133)
!1840 = !DISubprogram(name: "rewind", scope: !1741, file: !1741, line: 694, type: !1747, flags: DIFlagPrototyped, spFlags: 0)
!1841 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1842, file: !1738, line: 134)
!1842 = !DISubprogram(name: "scanf", scope: !1741, file: !1741, line: 383, type: !1827, flags: DIFlagPrototyped, spFlags: 0)
!1843 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1844, file: !1738, line: 135)
!1844 = !DISubprogram(name: "setbuf", scope: !1741, file: !1741, line: 290, type: !1845, flags: DIFlagPrototyped, spFlags: 0)
!1845 = !DISubroutineType(types: !1846)
!1846 = !{null, !1766, !1162}
!1847 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1848, file: !1738, line: 136)
!1848 = !DISubprogram(name: "setvbuf", scope: !1741, file: !1741, line: 294, type: !1849, flags: DIFlagPrototyped, spFlags: 0)
!1849 = !DISubroutineType(types: !1850)
!1850 = !{!16, !1766, !1162, !16, !19}
!1851 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1852, file: !1738, line: 137)
!1852 = !DISubprogram(name: "sprintf", scope: !1741, file: !1741, line: 320, type: !1853, flags: DIFlagPrototyped, spFlags: 0)
!1853 = !DISubroutineType(types: !1854)
!1854 = !{!16, !1162, !1094, null}
!1855 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1856, file: !1738, line: 138)
!1856 = !DISubprogram(name: "sscanf", scope: !1741, file: !1741, line: 385, type: !1857, flags: DIFlagPrototyped, spFlags: 0)
!1857 = !DISubroutineType(types: !1858)
!1858 = !{!16, !1094, !1094, null}
!1859 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1860, file: !1738, line: 139)
!1860 = !DISubprogram(name: "tmpfile", scope: !1741, file: !1741, line: 159, type: !1861, flags: DIFlagPrototyped, spFlags: 0)
!1861 = !DISubroutineType(types: !1862)
!1862 = !{!1749}
!1863 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1864, file: !1738, line: 141)
!1864 = !DISubprogram(name: "tmpnam", scope: !1741, file: !1741, line: 173, type: !1865, flags: DIFlagPrototyped, spFlags: 0)
!1865 = !DISubroutineType(types: !1866)
!1866 = !{!242, !242}
!1867 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1868, file: !1738, line: 143)
!1868 = !DISubprogram(name: "ungetc", scope: !1741, file: !1741, line: 639, type: !1783, flags: DIFlagPrototyped, spFlags: 0)
!1869 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1870, file: !1738, line: 144)
!1870 = !DISubprogram(name: "vfprintf", scope: !1741, file: !1741, line: 327, type: !1871, flags: DIFlagPrototyped, spFlags: 0)
!1871 = !DISubroutineType(types: !1872)
!1872 = !{!16, !1766, !1094, !1135}
!1873 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1874, file: !1738, line: 145)
!1874 = !DISubprogram(name: "vprintf", scope: !1741, file: !1741, line: 333, type: !1875, flags: DIFlagPrototyped, spFlags: 0)
!1875 = !DISubroutineType(types: !1876)
!1876 = !{!16, !1094, !1135}
!1877 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1878, file: !1738, line: 146)
!1878 = !DISubprogram(name: "vsprintf", scope: !1741, file: !1741, line: 335, type: !1879, flags: DIFlagPrototyped, spFlags: 0)
!1879 = !DISubroutineType(types: !1880)
!1880 = !{!16, !1162, !1094, !1135}
!1881 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !1882, file: !1738, line: 175)
!1882 = !DISubprogram(name: "snprintf", scope: !1741, file: !1741, line: 340, type: !1883, flags: DIFlagPrototyped, spFlags: 0)
!1883 = !DISubroutineType(types: !1884)
!1884 = !{!16, !1162, !19, !1094, null}
!1885 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !1886, file: !1738, line: 176)
!1886 = !DISubprogram(name: "vfscanf", scope: !1741, file: !1741, line: 420, type: !1871, flags: DIFlagPrototyped, spFlags: 0)
!1887 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !1888, file: !1738, line: 177)
!1888 = !DISubprogram(name: "vscanf", scope: !1741, file: !1741, line: 428, type: !1875, flags: DIFlagPrototyped, spFlags: 0)
!1889 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !1890, file: !1738, line: 178)
!1890 = !DISubprogram(name: "vsnprintf", scope: !1741, file: !1741, line: 344, type: !1891, flags: DIFlagPrototyped, spFlags: 0)
!1891 = !DISubroutineType(types: !1892)
!1892 = !{!16, !1162, !19, !1094, !1135}
!1893 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !1894, file: !1738, line: 179)
!1894 = !DISubprogram(name: "vsscanf", scope: !1741, file: !1741, line: 432, type: !1895, flags: DIFlagPrototyped, spFlags: 0)
!1895 = !DISubroutineType(types: !1896)
!1896 = !{!16, !1094, !1094, !1135}
!1897 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1882, file: !1738, line: 185)
!1898 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1886, file: !1738, line: 186)
!1899 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1888, file: !1738, line: 187)
!1900 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1890, file: !1738, line: 188)
!1901 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1894, file: !1738, line: 189)
!1902 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !4, entity: !100, file: !101, line: 135)
!1903 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !4, entity: !100, file: !1904, line: 11)
!1904 = !DIFile(filename: "tensorflow/core/framework/datatype_memcpy_stub.h", directory: "/home/mushfiqur/Desktop/Github/tensorflow")
!1905 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !89, entity: !1906, file: !2180, line: 40)
!1906 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Tensor", scope: !4, file: !1907, line: 120, size: 320, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !1908, identifier: "_ZTSN10tensorflow6TensorE")
!1907 = !DIFile(filename: "tensorflow/core/framework/tensor.h", directory: "/home/mushfiqur/Desktop/Github/tensorflow")
!1908 = !{!1909, !1910, !1913, !1917, !1920, !1923, !1929, !1932, !1935, !1939, !1942, !1945, !1948, !1951, !1954, !1957, !1960, !1963, !1966, !1970, !1973, !1994, !2015, !2036, !2057, !2078, !2083, !2087, !2088, !2092, !2095, !2098, !2101, !2104, !2107, !2108, !2111, !2114, !2115, !2116, !2117, !2121, !2124, !2127, !2130, !2135, !2136, !2139, !2142, !2145, !2146, !2151, !2154, !2157, !2160, !2161, !2162, !2165, !2168, !2169, !2172, !2173, !2174, !2177}
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "shape_", scope: !1906, file: !1907, line: 708, baseType: !284, size: 256)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "buf_", scope: !1906, file: !1907, line: 709, baseType: !1911, size: 64, offset: 256)
!1911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1912, size: 64)
!1912 = !DICompositeType(tag: DW_TAG_class_type, name: "TensorBuffer", scope: !4, file: !1907, line: 76, flags: DIFlagFwdDecl | DIFlagNonTrivial)
!1913 = !DISubprogram(name: "Tensor", scope: !1906, file: !1907, line: 136, type: !1914, scopeLine: 136, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1914 = !DISubroutineType(types: !1915)
!1915 = !{null, !1916}
!1916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1906, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1917 = !DISubprogram(name: "Tensor", scope: !1906, file: !1907, line: 146, type: !1918, scopeLine: 146, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1918 = !DISubroutineType(types: !1919)
!1919 = !{null, !1916, !100, !982}
!1920 = !DISubprogram(name: "Tensor", scope: !1906, file: !1907, line: 157, type: !1921, scopeLine: 157, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1921 = !DISubroutineType(types: !1922)
!1922 = !{null, !1916, !7, !100, !982}
!1923 = !DISubprogram(name: "Tensor", scope: !1906, file: !1907, line: 170, type: !1924, scopeLine: 170, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1924 = !DISubroutineType(types: !1925)
!1925 = !{null, !1916, !7, !100, !982, !1926}
!1926 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1927, size: 64)
!1927 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1928)
!1928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "AllocationAttributes", scope: !4, file: !9, line: 56, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN10tensorflow20AllocationAttributesE")
!1929 = !DISubprogram(name: "Tensor", scope: !1906, file: !1907, line: 176, type: !1930, scopeLine: 176, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1930 = !DISubroutineType(types: !1931)
!1931 = !{null, !1916, !100, !982, !1911}
!1932 = !DISubprogram(name: "Tensor", scope: !1906, file: !1907, line: 188, type: !1933, scopeLine: 188, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!1933 = !DISubroutineType(types: !1934)
!1934 = !{null, !1916, !100}
!1935 = !DISubprogram(name: "BuildTensor", linkageName: "_ZN10tensorflow6Tensor11BuildTensorE8DataTypeRKNS_11TensorShapeEPS0_", scope: !1906, file: !1907, line: 196, type: !1936, scopeLine: 196, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!1936 = !DISubroutineType(types: !1937)
!1937 = !{!919, !100, !982, !1938}
!1938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1906, size: 64)
!1939 = !DISubprogram(name: "Tensor", scope: !1906, file: !1907, line: 218, type: !1940, scopeLine: 218, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!1940 = !DISubroutineType(types: !1941)
!1941 = !{null, !1916, !1220}
!1942 = !DISubprogram(name: "Tensor", scope: !1906, file: !1907, line: 220, type: !1943, scopeLine: 220, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!1943 = !DISubroutineType(types: !1944)
!1944 = !{null, !1916, !1213}
!1945 = !DISubprogram(name: "Tensor", scope: !1906, file: !1907, line: 222, type: !1946, scopeLine: 222, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!1946 = !DISubroutineType(types: !1947)
!1947 = !{null, !1916, !1456}
!1948 = !DISubprogram(name: "Tensor", scope: !1906, file: !1907, line: 224, type: !1949, scopeLine: 224, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!1949 = !DISubroutineType(types: !1950)
!1950 = !{null, !1916, !1488}
!1951 = !DISubprogram(name: "Tensor", scope: !1906, file: !1907, line: 226, type: !1952, scopeLine: 226, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!1952 = !DISubroutineType(types: !1953)
!1953 = !{null, !1916, !1484}
!1954 = !DISubprogram(name: "Tensor", scope: !1906, file: !1907, line: 228, type: !1955, scopeLine: 228, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!1955 = !DISubroutineType(types: !1956)
!1956 = !{null, !1916, !1480}
!1957 = !DISubprogram(name: "Tensor", scope: !1906, file: !1907, line: 230, type: !1958, scopeLine: 230, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!1958 = !DISubroutineType(types: !1959)
!1959 = !{null, !1916, !1452}
!1960 = !DISubprogram(name: "Tensor", scope: !1906, file: !1907, line: 232, type: !1961, scopeLine: 232, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!1961 = !DISubroutineType(types: !1962)
!1962 = !{null, !1916, !1447}
!1963 = !DISubprogram(name: "Tensor", scope: !1906, file: !1907, line: 240, type: !1964, scopeLine: 240, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!1964 = !DISubroutineType(types: !1965)
!1965 = !{null, !1916, !64}
!1966 = !DISubprogram(name: "Tensor", scope: !1906, file: !1907, line: 242, type: !1967, scopeLine: 242, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!1967 = !DISubroutineType(types: !1968)
!1968 = !{null, !1916, !1969}
!1969 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64", scope: !4, file: !9, line: 51, baseType: !76)
!1970 = !DISubprogram(name: "Tensor", scope: !1906, file: !1907, line: 244, type: !1971, scopeLine: 244, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!1971 = !DISubroutineType(types: !1972)
!1972 = !{null, !1916, !53}
!1973 = !DISubprogram(name: "Tensor", scope: !1906, file: !1907, line: 246, type: !1974, scopeLine: 246, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!1974 = !DISubroutineType(types: !1975)
!1975 = !{null, !1916, !1976}
!1976 = !DIDerivedType(tag: DW_TAG_typedef, name: "qint8", scope: !4, file: !9, line: 28, baseType: !1977)
!1977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "QuantizedInteger<signed char>", scope: !4, file: !9, line: 14, size: 8, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !1978, templateParams: !1992, identifier: "_ZTSN10tensorflow16QuantizedIntegerIaEE")
!1978 = !{!1979, !1980, !1984, !1987}
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1977, file: !9, line: 17, baseType: !1449, size: 8)
!1980 = !DISubprogram(name: "QuantizedInteger", scope: !1977, file: !9, line: 20, type: !1981, scopeLine: 20, flags: DIFlagPrototyped, spFlags: 0)
!1981 = !DISubroutineType(types: !1982)
!1982 = !{null, !1983}
!1983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1977, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1984 = !DISubprogram(name: "QuantizedInteger", scope: !1977, file: !9, line: 21, type: !1985, scopeLine: 21, flags: DIFlagPrototyped, spFlags: 0)
!1985 = !DISubroutineType(types: !1986)
!1986 = !{null, !1983, !1449}
!1987 = !DISubprogram(name: "operator signed char", linkageName: "_ZNK10tensorflow16QuantizedIntegerIaEcvaEv", scope: !1977, file: !9, line: 24, type: !1988, scopeLine: 24, flags: DIFlagPrototyped, spFlags: 0)
!1988 = !DISubroutineType(types: !1989)
!1989 = !{!1449, !1990}
!1990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1991, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1991 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1977)
!1992 = !{!1993}
!1993 = !DITemplateTypeParameter(name: "T", type: !1449)
!1994 = !DISubprogram(name: "Tensor", scope: !1906, file: !1907, line: 248, type: !1995, scopeLine: 248, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!1995 = !DISubroutineType(types: !1996)
!1996 = !{null, !1916, !1997}
!1997 = !DIDerivedType(tag: DW_TAG_typedef, name: "quint8", scope: !4, file: !9, line: 29, baseType: !1998)
!1998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "QuantizedInteger<unsigned char>", scope: !4, file: !9, line: 14, size: 8, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !1999, templateParams: !2013, identifier: "_ZTSN10tensorflow16QuantizedIntegerIhEE")
!1999 = !{!2000, !2001, !2005, !2008}
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1998, file: !9, line: 17, baseType: !1482, size: 8)
!2001 = !DISubprogram(name: "QuantizedInteger", scope: !1998, file: !9, line: 20, type: !2002, scopeLine: 20, flags: DIFlagPrototyped, spFlags: 0)
!2002 = !DISubroutineType(types: !2003)
!2003 = !{null, !2004}
!2004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1998, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2005 = !DISubprogram(name: "QuantizedInteger", scope: !1998, file: !9, line: 21, type: !2006, scopeLine: 21, flags: DIFlagPrototyped, spFlags: 0)
!2006 = !DISubroutineType(types: !2007)
!2007 = !{null, !2004, !1482}
!2008 = !DISubprogram(name: "operator unsigned char", linkageName: "_ZNK10tensorflow16QuantizedIntegerIhEcvhEv", scope: !1998, file: !9, line: 24, type: !2009, scopeLine: 24, flags: DIFlagPrototyped, spFlags: 0)
!2009 = !DISubroutineType(types: !2010)
!2010 = !{!1482, !2011}
!2011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2012, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2012 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1998)
!2013 = !{!2014}
!2014 = !DITemplateTypeParameter(name: "T", type: !1482)
!2015 = !DISubprogram(name: "Tensor", scope: !1906, file: !1907, line: 250, type: !2016, scopeLine: 250, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!2016 = !DISubroutineType(types: !2017)
!2017 = !{null, !1916, !2018}
!2018 = !DIDerivedType(tag: DW_TAG_typedef, name: "qint16", scope: !4, file: !9, line: 30, baseType: !2019)
!2019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "QuantizedInteger<short>", scope: !4, file: !9, line: 14, size: 16, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !2020, templateParams: !2034, identifier: "_ZTSN10tensorflow16QuantizedIntegerIsEE")
!2020 = !{!2021, !2022, !2026, !2029}
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2019, file: !9, line: 17, baseType: !1454, size: 16)
!2022 = !DISubprogram(name: "QuantizedInteger", scope: !2019, file: !9, line: 20, type: !2023, scopeLine: 20, flags: DIFlagPrototyped, spFlags: 0)
!2023 = !DISubroutineType(types: !2024)
!2024 = !{null, !2025}
!2025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2019, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2026 = !DISubprogram(name: "QuantizedInteger", scope: !2019, file: !9, line: 21, type: !2027, scopeLine: 21, flags: DIFlagPrototyped, spFlags: 0)
!2027 = !DISubroutineType(types: !2028)
!2028 = !{null, !2025, !1454}
!2029 = !DISubprogram(name: "operator short", linkageName: "_ZNK10tensorflow16QuantizedIntegerIsEcvsEv", scope: !2019, file: !9, line: 24, type: !2030, scopeLine: 24, flags: DIFlagPrototyped, spFlags: 0)
!2030 = !DISubroutineType(types: !2031)
!2031 = !{!1454, !2032}
!2032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2033, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2033 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2019)
!2034 = !{!2035}
!2035 = !DITemplateTypeParameter(name: "T", type: !1454)
!2036 = !DISubprogram(name: "Tensor", scope: !1906, file: !1907, line: 252, type: !2037, scopeLine: 252, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!2037 = !DISubroutineType(types: !2038)
!2038 = !{null, !1916, !2039}
!2039 = !DIDerivedType(tag: DW_TAG_typedef, name: "quint16", scope: !4, file: !9, line: 31, baseType: !2040)
!2040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "QuantizedInteger<unsigned short>", scope: !4, file: !9, line: 14, size: 16, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !2041, templateParams: !2055, identifier: "_ZTSN10tensorflow16QuantizedIntegerItEE")
!2041 = !{!2042, !2043, !2047, !2050}
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2040, file: !9, line: 17, baseType: !1486, size: 16)
!2043 = !DISubprogram(name: "QuantizedInteger", scope: !2040, file: !9, line: 20, type: !2044, scopeLine: 20, flags: DIFlagPrototyped, spFlags: 0)
!2044 = !DISubroutineType(types: !2045)
!2045 = !{null, !2046}
!2046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2040, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2047 = !DISubprogram(name: "QuantizedInteger", scope: !2040, file: !9, line: 21, type: !2048, scopeLine: 21, flags: DIFlagPrototyped, spFlags: 0)
!2048 = !DISubroutineType(types: !2049)
!2049 = !{null, !2046, !1486}
!2050 = !DISubprogram(name: "operator unsigned short", linkageName: "_ZNK10tensorflow16QuantizedIntegerItEcvtEv", scope: !2040, file: !9, line: 24, type: !2051, scopeLine: 24, flags: DIFlagPrototyped, spFlags: 0)
!2051 = !DISubroutineType(types: !2052)
!2052 = !{!1486, !2053}
!2053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2054, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2054 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2040)
!2055 = !{!2056}
!2056 = !DITemplateTypeParameter(name: "T", type: !1486)
!2057 = !DISubprogram(name: "Tensor", scope: !1906, file: !1907, line: 254, type: !2058, scopeLine: 254, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!2058 = !DISubroutineType(types: !2059)
!2059 = !{null, !1916, !2060}
!2060 = !DIDerivedType(tag: DW_TAG_typedef, name: "qint32", scope: !4, file: !9, line: 32, baseType: !2061)
!2061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "QuantizedInteger<int>", scope: !4, file: !9, line: 14, size: 32, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !2062, templateParams: !2076, identifier: "_ZTSN10tensorflow16QuantizedIntegerIiEE")
!2062 = !{!2063, !2064, !2068, !2071}
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2061, file: !9, line: 17, baseType: !16, size: 32)
!2064 = !DISubprogram(name: "QuantizedInteger", scope: !2061, file: !9, line: 20, type: !2065, scopeLine: 20, flags: DIFlagPrototyped, spFlags: 0)
!2065 = !DISubroutineType(types: !2066)
!2066 = !{null, !2067}
!2067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2061, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2068 = !DISubprogram(name: "QuantizedInteger", scope: !2061, file: !9, line: 21, type: !2069, scopeLine: 21, flags: DIFlagPrototyped, spFlags: 0)
!2069 = !DISubroutineType(types: !2070)
!2070 = !{null, !2067, !16}
!2071 = !DISubprogram(name: "operator int", linkageName: "_ZNK10tensorflow16QuantizedIntegerIiEcviEv", scope: !2061, file: !9, line: 24, type: !2072, scopeLine: 24, flags: DIFlagPrototyped, spFlags: 0)
!2072 = !DISubroutineType(types: !2073)
!2073 = !{!16, !2074}
!2074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2075, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2075 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2061)
!2076 = !{!2077}
!2077 = !DITemplateTypeParameter(name: "T", type: !16)
!2078 = !DISubprogram(name: "Tensor", scope: !1906, file: !1907, line: 270, type: !2079, scopeLine: 270, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!2079 = !DISubroutineType(types: !2080)
!2080 = !{null, !1916, !2081}
!2081 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2082, size: 64)
!2082 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1906)
!2083 = !DISubprogram(name: "Tensor", scope: !1906, file: !1907, line: 275, type: !2084, scopeLine: 275, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!2084 = !DISubroutineType(types: !2085)
!2085 = !{null, !1916, !2086}
!2086 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !1906, size: 64)
!2087 = !DISubprogram(name: "~Tensor", scope: !1906, file: !1907, line: 283, type: !1914, scopeLine: 283, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!2088 = !DISubprogram(name: "dtype", linkageName: "_ZNK10tensorflow6Tensor5dtypeEv", scope: !1906, file: !1907, line: 290, type: !2089, scopeLine: 290, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!2089 = !DISubroutineType(types: !2090)
!2090 = !{!100, !2091}
!2091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2082, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2092 = !DISubprogram(name: "shape", linkageName: "_ZNK10tensorflow6Tensor5shapeEv", scope: !1906, file: !1907, line: 293, type: !2093, scopeLine: 293, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!2093 = !DISubroutineType(types: !2094)
!2094 = !{!982, !2091}
!2095 = !DISubprogram(name: "dims", linkageName: "_ZNK10tensorflow6Tensor4dimsEv", scope: !1906, file: !1907, line: 299, type: !2096, scopeLine: 299, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!2096 = !DISubroutineType(types: !2097)
!2097 = !{!16, !2091}
!2098 = !DISubprogram(name: "dim_size", linkageName: "_ZNK10tensorflow6Tensor8dim_sizeEi", scope: !1906, file: !1907, line: 302, type: !2099, scopeLine: 302, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!2099 = !DISubroutineType(types: !2100)
!2100 = !{!64, !2091, !16}
!2101 = !DISubprogram(name: "NumElements", linkageName: "_ZNK10tensorflow6Tensor11NumElementsEv", scope: !1906, file: !1907, line: 305, type: !2102, scopeLine: 305, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!2102 = !DISubroutineType(types: !2103)
!2103 = !{!64, !2091}
!2104 = !DISubprogram(name: "IsSameSize", linkageName: "_ZNK10tensorflow6Tensor10IsSameSizeERKS0_", scope: !1906, file: !1907, line: 307, type: !2105, scopeLine: 307, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!2105 = !DISubroutineType(types: !2106)
!2106 = !{!53, !2091, !2081}
!2107 = !DISubprogram(name: "SharesBufferWith", linkageName: "_ZNK10tensorflow6Tensor16SharesBufferWithERKS0_", scope: !1906, file: !1907, line: 312, type: !2105, scopeLine: 312, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!2108 = !DISubprogram(name: "IsInitialized", linkageName: "_ZNK10tensorflow6Tensor13IsInitializedEv", scope: !1906, file: !1907, line: 318, type: !2109, scopeLine: 318, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!2109 = !DISubroutineType(types: !2110)
!2110 = !{!53, !2091}
!2111 = !DISubprogram(name: "TotalBytes", linkageName: "_ZNK10tensorflow6Tensor10TotalBytesEv", scope: !1906, file: !1907, line: 321, type: !2112, scopeLine: 321, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!2112 = !DISubroutineType(types: !2113)
!2113 = !{!19, !2091}
!2114 = !DISubprogram(name: "GetBufferSize", linkageName: "_ZNK10tensorflow6Tensor13GetBufferSizeEv", scope: !1906, file: !1907, line: 324, type: !2112, scopeLine: 324, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!2115 = !DISubprogram(name: "AllocatedBytes", linkageName: "_ZNK10tensorflow6Tensor14AllocatedBytesEv", scope: !1906, file: !1907, line: 327, type: !2112, scopeLine: 327, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!2116 = !DISubprogram(name: "IsAligned", linkageName: "_ZNK10tensorflow6Tensor9IsAlignedEv", scope: !1906, file: !1907, line: 330, type: !2109, scopeLine: 330, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!2117 = !DISubprogram(name: "operator=", linkageName: "_ZN10tensorflow6TensoraSERKS0_", scope: !1906, file: !1907, line: 341, type: !2118, scopeLine: 341, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!2118 = !DISubroutineType(types: !2119)
!2119 = !{!2120, !1916, !2081}
!2120 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1906, size: 64)
!2121 = !DISubprogram(name: "operator=", linkageName: "_ZN10tensorflow6TensoraSEOS0_", scope: !1906, file: !1907, line: 347, type: !2122, scopeLine: 347, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!2122 = !DISubroutineType(types: !2123)
!2123 = !{!2120, !1916, !2086}
!2124 = !DISubprogram(name: "Slice", linkageName: "_ZNK10tensorflow6Tensor5SliceEll", scope: !1906, file: !1907, line: 378, type: !2125, scopeLine: 378, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!2125 = !DISubroutineType(types: !2126)
!2126 = !{!1906, !2091, !64, !64}
!2127 = !DISubprogram(name: "SubSlice", linkageName: "_ZNK10tensorflow6Tensor8SubSliceEl", scope: !1906, file: !1907, line: 394, type: !2128, scopeLine: 394, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!2128 = !DISubroutineType(types: !2129)
!2129 = !{!1906, !2091, !64}
!2130 = !DISubprogram(name: "AsProtoField", linkageName: "_ZNK10tensorflow6Tensor12AsProtoFieldEPNS_11TensorProtoE", scope: !1906, file: !1907, line: 408, type: !2131, scopeLine: 408, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!2131 = !DISubroutineType(types: !2132)
!2132 = !{null, !2091, !2133}
!2133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2134, size: 64)
!2134 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "TensorProto", scope: !4, file: !1907, line: 55, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN10tensorflow11TensorProtoE")
!2135 = !DISubprogram(name: "AsProtoTensorContent", linkageName: "_ZNK10tensorflow6Tensor20AsProtoTensorContentEPNS_11TensorProtoE", scope: !1906, file: !1907, line: 409, type: !2131, scopeLine: 409, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!2136 = !DISubprogram(name: "SummarizeValue", linkageName: "_ZNK10tensorflow6Tensor14SummarizeValueB5cxx11Elb", scope: !1906, file: !1907, line: 618, type: !2137, scopeLine: 618, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!2137 = !DISubroutineType(types: !2138)
!2138 = !{!29, !2091, !64, !53}
!2139 = !DISubprogram(name: "DebugString", linkageName: "_ZNK10tensorflow6Tensor11DebugStringB5cxx11Ei", scope: !1906, file: !1907, line: 624, type: !2140, scopeLine: 624, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!2140 = !DISubroutineType(types: !2141)
!2141 = !{!29, !2091, !16}
!2142 = !DISubprogram(name: "DebugString", linkageName: "_ZNK10tensorflow6Tensor11DebugStringB5cxx11Ev", scope: !1906, file: !1907, line: 625, type: !2143, scopeLine: 625, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!2143 = !DISubroutineType(types: !2144)
!2144 = !{!29, !2091}
!2145 = !DISubprogram(name: "DeviceSafeDebugString", linkageName: "_ZNK10tensorflow6Tensor21DeviceSafeDebugStringB5cxx11Ev", scope: !1906, file: !1907, line: 630, type: !2143, scopeLine: 630, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!2146 = !DISubprogram(name: "FillDescription", linkageName: "_ZNK10tensorflow6Tensor15FillDescriptionEPNS_17TensorDescriptionE", scope: !1906, file: !1907, line: 634, type: !2147, scopeLine: 634, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!2147 = !DISubroutineType(types: !2148)
!2148 = !{null, !2091, !2149}
!2149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2150, size: 64)
!2150 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "TensorDescription", scope: !4, file: !1907, line: 54, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN10tensorflow17TensorDescriptionE")
!2151 = !DISubprogram(name: "data", linkageName: "_ZNK10tensorflow6Tensor4dataEv", scope: !1906, file: !1907, line: 648, type: !2152, scopeLine: 648, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!2152 = !DISubroutineType(types: !2153)
!2153 = !{!38, !2091}
!2154 = !DISubprogram(name: "BitcastFrom", linkageName: "_ZN10tensorflow6Tensor11BitcastFromERKS0_8DataTypeRKNS_11TensorShapeE", scope: !1906, file: !1907, line: 671, type: !2155, scopeLine: 671, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!2155 = !DISubroutineType(types: !2156)
!2156 = !{!919, !1916, !2081, !100, !982}
!2157 = !DISubprogram(name: "UnsafeCopyFromInternal", linkageName: "_ZN10tensorflow6Tensor22UnsafeCopyFromInternalERKS0_8DataTypeRKNS_11TensorShapeE", scope: !1906, file: !1907, line: 677, type: !2158, scopeLine: 677, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!2158 = !DISubroutineType(types: !2159)
!2159 = !{null, !1916, !2081, !100, !982}
!2160 = !DISubprogram(name: "RefCountIsOne", linkageName: "_ZNK10tensorflow6Tensor13RefCountIsOneEv", scope: !1906, file: !1907, line: 684, type: !2109, scopeLine: 684, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!2161 = !DISubprogram(name: "RefCount", linkageName: "_ZNK10tensorflow6Tensor8RefCountEv", scope: !1906, file: !1907, line: 688, type: !2096, scopeLine: 688, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!2162 = !DISubprogram(name: "GetMemoryType", linkageName: "_ZNK10tensorflow6Tensor13GetMemoryTypeEv", scope: !1906, file: !1907, line: 691, type: !2163, scopeLine: 691, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!2163 = !DISubroutineType(types: !2164)
!2164 = !{!83, !2091}
!2165 = !DISubprogram(name: "CheckType", linkageName: "_ZNK10tensorflow6Tensor9CheckTypeE8DataType", scope: !1906, file: !1907, line: 697, type: !2166, scopeLine: 697, flags: DIFlagPrototyped, spFlags: 0)
!2166 = !DISubroutineType(types: !2167)
!2167 = !{null, !2091, !100}
!2168 = !DISubprogram(name: "CheckTypeAndIsAligned", linkageName: "_ZNK10tensorflow6Tensor21CheckTypeAndIsAlignedE8DataType", scope: !1906, file: !1907, line: 698, type: !2166, scopeLine: 698, flags: DIFlagPrototyped, spFlags: 0)
!2169 = !DISubprogram(name: "CheckIsAlignedAndSingleElement", linkageName: "_ZNK10tensorflow6Tensor30CheckIsAlignedAndSingleElementEv", scope: !1906, file: !1907, line: 699, type: !2170, scopeLine: 699, flags: DIFlagPrototyped, spFlags: 0)
!2170 = !DISubroutineType(types: !2171)
!2171 = !{null, !2091}
!2172 = !DISubprogram(name: "set_dtype", linkageName: "_ZN10tensorflow6Tensor9set_dtypeE8DataType", scope: !1906, file: !1907, line: 700, type: !1933, scopeLine: 700, flags: DIFlagPrototyped, spFlags: 0)
!2173 = !DISubprogram(name: "CanUseDMA", linkageName: "_ZNK10tensorflow6Tensor9CanUseDMAEv", scope: !1906, file: !1907, line: 739, type: !2109, scopeLine: 739, flags: DIFlagPrototyped, spFlags: 0)
!2174 = !DISubprogram(name: "set_shape", linkageName: "_ZN10tensorflow6Tensor9set_shapeERKNS_11TensorShapeE", scope: !1906, file: !1907, line: 745, type: !2175, scopeLine: 745, flags: DIFlagPrototyped, spFlags: 0)
!2175 = !DISubroutineType(types: !2176)
!2176 = !{null, !1916, !982}
!2177 = !DISubprogram(name: "CopyFromInternal", linkageName: "_ZN10tensorflow6Tensor16CopyFromInternalERKS0_RKNS_11TensorShapeE", scope: !1906, file: !1907, line: 751, type: !2178, scopeLine: 751, flags: DIFlagPrototyped, spFlags: 0)
!2178 = !DISubroutineType(types: !2179)
!2179 = !{null, !1916, !2081, !982}
!2180 = !DIFile(filename: "tensorflow/c/tf_tensor.cc", directory: "/home/mushfiqur/Desktop/Github/tensorflow")
!2181 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !89, entity: !1912, file: !2180, line: 41)
!2182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2183, size: 64)
!2183 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "StubCPUAllocator", scope: !4, file: !3, line: 13, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !2184, vtableHolder: !8, identifier: "_ZTSN10tensorflow16StubCPUAllocatorE")
!2184 = !{!2185, !2186, !2190}
!2185 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !2183, baseType: !8, flags: DIFlagPublic, extraData: i32 0)
!2186 = !DISubprogram(name: "~StubCPUAllocator", scope: !2183, file: !3, line: 15, type: !2187, scopeLine: 15, containingType: !2183, virtualIndex: 0, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!2187 = !DISubroutineType(types: !2188)
!2188 = !{null, !2189}
!2189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2183, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2190 = !DISubprogram(name: "Name", linkageName: "_ZN10tensorflow16StubCPUAllocator4NameB5cxx11Ev", scope: !2183, file: !3, line: 16, type: !2191, scopeLine: 16, containingType: !2183, virtualIndex: 2, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!2191 = !DISubroutineType(types: !2192)
!2192 = !{!29, !2189}
!2193 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !2194, producer: "clang version 11.1.0 (https://github.com/llvm/llvm-project.git 1fdec59bffc11ae37eb51a1b9869f0696bfd5312)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2195, retainedTypes: !2196, imports: !2198, splitDebugInlining: false, nameTableKind: None)
!2194 = !DIFile(filename: "/home/mushfiqur/Desktop/Github/tensorflow/tensorflow/c/tf_tensor_harness.cc", directory: "/home/mushfiqur/Desktop/Github/tensorflow")
!2195 = !{!168}
!2196 = !{!2197}
!2197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1482, size: 64)
!2198 = !{!1557, !1561, !1565, !1571, !1575, !1579, !1584, !1586, !1590, !1594, !1598, !1606, !1608, !1612, !1616, !1620, !1624, !1628, !1632, !1636, !1640, !1644, !1648, !1652, !1654, !1656, !1660, !1664, !1670, !1674, !1678, !1680, !1684, !1688, !1694, !1696, !1700, !1704, !1708, !1712, !1716, !1720, !1724, !1725, !1726, !1727, !1729, !1730, !1731, !1732, !1733, !1734, !2199, !2201, !2202, !2203, !2204, !2205, !2206, !2207, !2211, !2212, !2213, !2214, !2215, !2216, !2217, !2218, !2219, !2220, !2221, !2222, !2223, !2224, !2225, !2226, !2227, !2228, !2229, !2230, !2231, !2232, !2233, !2234}
!2199 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2193, entity: !1572, file: !2200, line: 38)
!2200 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/stdlib.h", directory: "")
!2201 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2193, entity: !1580, file: !2200, line: 39)
!2202 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2193, entity: !1613, file: !2200, line: 40)
!2203 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2193, entity: !1585, file: !2200, line: 43)
!2204 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2193, entity: !1653, file: !2200, line: 46)
!2205 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2193, entity: !1562, file: !2200, line: 51)
!2206 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2193, entity: !1566, file: !2200, line: 52)
!2207 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2193, entity: !2208, file: !2200, line: 54)
!2208 = !DISubprogram(name: "abs", linkageName: "_ZSt3abse", scope: !31, file: !1560, line: 79, type: !2209, flags: DIFlagPrototyped, spFlags: 0)
!2209 = !DISubroutineType(types: !2210)
!2210 = !{!1279, !1279}
!2211 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2193, entity: !1587, file: !2200, line: 55)
!2212 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2193, entity: !1591, file: !2200, line: 56)
!2213 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2193, entity: !1595, file: !2200, line: 57)
!2214 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2193, entity: !1599, file: !2200, line: 58)
!2215 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2193, entity: !1607, file: !2200, line: 59)
!2216 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2193, entity: !1728, file: !2200, line: 60)
!2217 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2193, entity: !1617, file: !2200, line: 61)
!2218 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2193, entity: !1621, file: !2200, line: 62)
!2219 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2193, entity: !1625, file: !2200, line: 63)
!2220 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2193, entity: !1629, file: !2200, line: 64)
!2221 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2193, entity: !1633, file: !2200, line: 65)
!2222 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2193, entity: !1637, file: !2200, line: 67)
!2223 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2193, entity: !1641, file: !2200, line: 68)
!2224 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2193, entity: !1645, file: !2200, line: 69)
!2225 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2193, entity: !1649, file: !2200, line: 71)
!2226 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2193, entity: !1655, file: !2200, line: 72)
!2227 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2193, entity: !1657, file: !2200, line: 73)
!2228 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2193, entity: !1661, file: !2200, line: 74)
!2229 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2193, entity: !1665, file: !2200, line: 75)
!2230 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2193, entity: !1671, file: !2200, line: 76)
!2231 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2193, entity: !1675, file: !2200, line: 77)
!2232 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2193, entity: !1679, file: !2200, line: 78)
!2233 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2193, entity: !1681, file: !2200, line: 80)
!2234 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2193, entity: !1685, file: !2200, line: 81)
!2235 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !2236, producer: "clang version 11.1.0 (https://github.com/llvm/llvm-project.git 1fdec59bffc11ae37eb51a1b9869f0696bfd5312)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2237, retainedTypes: !2238, imports: !2239, splitDebugInlining: false, nameTableKind: None)
!2236 = !DIFile(filename: "/home/mushfiqur/Desktop/Github/tensorflow/tensorflow/core/framework/tensor.cc", directory: "/home/mushfiqur/Desktop/Github/tensorflow")
!2237 = !{!100, !92, !83, !213}
!2238 = !{!559, !45, !210, !309, !697, !16}
!2239 = !{!1441, !1446, !1451, !1455, !1458, !1459, !1461, !1463, !1465, !1467, !1469, !1471, !1473, !1475, !1478, !1479, !1483, !1487, !1490, !1491, !1493, !1495, !1497, !1499, !1501, !1503, !1505, !1507, !1510, !1022, !1039, !1042, !1047, !1055, !1063, !1067, !1074, !1078, !1082, !1084, !1086, !1090, !1097, !1101, !1107, !1113, !1115, !1119, !1123, !1127, !1131, !1142, !1144, !1148, !1152, !1156, !1158, !1163, !1167, !1171, !1173, !1175, !1179, !1187, !1191, !1195, !1199, !1201, !1207, !1209, !1216, !1221, !1225, !1229, !1233, !1237, !1241, !1243, !1245, !1249, !1253, !1257, !1259, !1263, !1267, !1269, !1271, !1275, !1280, !1285, !1290, !1291, !1292, !1293, !1294, !1295, !1296, !1297, !1298, !1299, !1018, !1512, !1516, !1520, !1525, !1531, !1533, !1535, !1537, !1539, !1541, !1543, !1545, !1547, !1549, !1551, !1553, !1555, !1557, !1561, !1565, !1571, !1575, !1579, !1584, !1586, !1590, !1594, !1598, !1606, !1608, !1612, !1616, !1620, !1624, !1628, !1632, !1636, !1640, !1644, !1648, !1652, !1654, !1656, !1660, !1664, !1670, !1674, !1678, !1680, !1684, !1688, !1694, !1696, !1700, !1704, !1708, !1712, !1716, !1720, !1724, !1725, !1726, !1727, !1729, !1730, !1731, !1732, !1733, !1734, !1735, !1739, !1745, !1750, !1754, !1756, !1758, !1760, !1762, !1769, !1773, !1777, !1781, !1785, !1789, !1793, !1797, !1799, !1803, !1809, !1813, !1817, !1819, !1821, !1825, !1829, !1831, !1833, !1835, !1837, !1839, !1841, !1843, !1847, !1851, !1855, !1859, !1863, !1867, !1869, !1873, !1877, !1881, !1885, !1887, !1889, !1893, !1897, !1898, !1899, !1900, !1901, !1300, !1354, !1902, !1363, !1369, !1373, !1379, !1383, !1387, !1391, !1395, !1397, !1399, !1403, !1407, !1411, !1415, !1419, !1421, !1423, !1425, !1429, !1433, !1437, !1439, !1358, !1360, !2240, !2246, !2249, !2250, !2252, !2254, !2256, !2258, !2262, !2264, !2266, !2268, !2270, !2272, !2274, !2276, !2278, !2282, !2286, !2288, !2292}
!2240 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !2241, file: !2245, line: 82)
!2241 = !DIDerivedType(tag: DW_TAG_typedef, name: "wctrans_t", file: !2242, line: 48, baseType: !2243)
!2242 = !DIFile(filename: "/usr/include/wctype.h", directory: "")
!2243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2244, size: 64)
!2244 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1457)
!2245 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/cwctype", directory: "")
!2246 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !2247, file: !2245, line: 83)
!2247 = !DIDerivedType(tag: DW_TAG_typedef, name: "wctype_t", file: !2248, line: 38, baseType: !21)
!2248 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h", directory: "")
!2249 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !1040, file: !2245, line: 84)
!2250 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !2251, file: !2245, line: 86)
!2251 = !DISubprogram(name: "iswalnum", scope: !2248, file: !2248, line: 95, type: !1239, flags: DIFlagPrototyped, spFlags: 0)
!2252 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !2253, file: !2245, line: 87)
!2253 = !DISubprogram(name: "iswalpha", scope: !2248, file: !2248, line: 101, type: !1239, flags: DIFlagPrototyped, spFlags: 0)
!2254 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !2255, file: !2245, line: 89)
!2255 = !DISubprogram(name: "iswblank", scope: !2248, file: !2248, line: 146, type: !1239, flags: DIFlagPrototyped, spFlags: 0)
!2256 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !2257, file: !2245, line: 91)
!2257 = !DISubprogram(name: "iswcntrl", scope: !2248, file: !2248, line: 104, type: !1239, flags: DIFlagPrototyped, spFlags: 0)
!2258 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !2259, file: !2245, line: 92)
!2259 = !DISubprogram(name: "iswctype", scope: !2248, file: !2248, line: 159, type: !2260, flags: DIFlagPrototyped, spFlags: 0)
!2260 = !DISubroutineType(types: !2261)
!2261 = !{!16, !1040, !2247}
!2262 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !2263, file: !2245, line: 93)
!2263 = !DISubprogram(name: "iswdigit", scope: !2248, file: !2248, line: 108, type: !1239, flags: DIFlagPrototyped, spFlags: 0)
!2264 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !2265, file: !2245, line: 94)
!2265 = !DISubprogram(name: "iswgraph", scope: !2248, file: !2248, line: 112, type: !1239, flags: DIFlagPrototyped, spFlags: 0)
!2266 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !2267, file: !2245, line: 95)
!2267 = !DISubprogram(name: "iswlower", scope: !2248, file: !2248, line: 117, type: !1239, flags: DIFlagPrototyped, spFlags: 0)
!2268 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !2269, file: !2245, line: 96)
!2269 = !DISubprogram(name: "iswprint", scope: !2248, file: !2248, line: 120, type: !1239, flags: DIFlagPrototyped, spFlags: 0)
!2270 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !2271, file: !2245, line: 97)
!2271 = !DISubprogram(name: "iswpunct", scope: !2248, file: !2248, line: 125, type: !1239, flags: DIFlagPrototyped, spFlags: 0)
!2272 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !2273, file: !2245, line: 98)
!2273 = !DISubprogram(name: "iswspace", scope: !2248, file: !2248, line: 130, type: !1239, flags: DIFlagPrototyped, spFlags: 0)
!2274 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !2275, file: !2245, line: 99)
!2275 = !DISubprogram(name: "iswupper", scope: !2248, file: !2248, line: 135, type: !1239, flags: DIFlagPrototyped, spFlags: 0)
!2276 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !2277, file: !2245, line: 100)
!2277 = !DISubprogram(name: "iswxdigit", scope: !2248, file: !2248, line: 140, type: !1239, flags: DIFlagPrototyped, spFlags: 0)
!2278 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !2279, file: !2245, line: 101)
!2279 = !DISubprogram(name: "towctrans", scope: !2242, file: !2242, line: 55, type: !2280, flags: DIFlagPrototyped, spFlags: 0)
!2280 = !DISubroutineType(types: !2281)
!2281 = !{!1040, !1040, !2241}
!2282 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !2283, file: !2245, line: 102)
!2283 = !DISubprogram(name: "towlower", scope: !2248, file: !2248, line: 166, type: !2284, flags: DIFlagPrototyped, spFlags: 0)
!2284 = !DISubroutineType(types: !2285)
!2285 = !{!1040, !1040}
!2286 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !2287, file: !2245, line: 103)
!2287 = !DISubprogram(name: "towupper", scope: !2248, file: !2248, line: 169, type: !2284, flags: DIFlagPrototyped, spFlags: 0)
!2288 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !2289, file: !2245, line: 104)
!2289 = !DISubprogram(name: "wctrans", scope: !2242, file: !2242, line: 52, type: !2290, flags: DIFlagPrototyped, spFlags: 0)
!2290 = !DISubroutineType(types: !2291)
!2291 = !{!2241, !226}
!2292 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !2293, file: !2245, line: 105)
!2293 = !DISubprogram(name: "wctype", scope: !2248, file: !2248, line: 155, type: !2294, flags: DIFlagPrototyped, spFlags: 0)
!2294 = !DISubroutineType(types: !2295)
!2295 = !{!2247, !226}
!2296 = distinct !DICompileUnit(language: DW_LANG_C99, file: !2297, producer: "clang version 11.1.0 (https://github.com/llvm/llvm-project.git 1fdec59bffc11ae37eb51a1b9869f0696bfd5312)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !212, splitDebugInlining: false, nameTableKind: None)
!2297 = !DIFile(filename: "/home/mushfiqur/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/mushfiqur/tools/klee/build/runtime/Freestanding")
!2298 = distinct !DICompileUnit(language: DW_LANG_C99, file: !2299, producer: "clang version 11.1.0 (https://github.com/llvm/llvm-project.git 1fdec59bffc11ae37eb51a1b9869f0696bfd5312)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !212, splitDebugInlining: false, nameTableKind: None)
!2299 = !DIFile(filename: "/home/mushfiqur/tools/klee/runtime/Freestanding/memmove.c", directory: "/home/mushfiqur/tools/klee/build/runtime/Freestanding")
!2300 = distinct !DICompileUnit(language: DW_LANG_C99, file: !2301, producer: "clang version 11.1.0 (https://github.com/llvm/llvm-project.git 1fdec59bffc11ae37eb51a1b9869f0696bfd5312)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !212, splitDebugInlining: false, nameTableKind: None)
!2301 = !DIFile(filename: "/home/mushfiqur/tools/klee/runtime/Freestanding/memset.c", directory: "/home/mushfiqur/tools/klee/build/runtime/Freestanding")
!2302 = distinct !DICompileUnit(language: DW_LANG_C89, file: !2303, producer: "clang version 11.1.0 (https://github.com/llvm/llvm-project.git 1fdec59bffc11ae37eb51a1b9869f0696bfd5312)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !212, splitDebugInlining: false, nameTableKind: None)
!2303 = !DIFile(filename: "/home/mushfiqur/tools/klee/runtime/Intrinsic/klee_div_zero_check.c", directory: "/home/mushfiqur/tools/klee/build/runtime/Intrinsic")
!2304 = !{!"clang version 11.1.0 (https://github.com/llvm/llvm-project.git 1fdec59bffc11ae37eb51a1b9869f0696bfd5312)"}
!2305 = !{i32 7, !"Dwarf Version", i32 4}
!2306 = !{i32 2, !"Debug Info Version", i32 3}
!2307 = !{i32 1, !"wchar_size", i32 4}
!2308 = distinct !DISubprogram(name: "main", scope: !2309, file: !2309, line: 16, type: !14, scopeLine: 16, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2193, retainedNodes: !212)
!2309 = !DIFile(filename: "tensorflow/c/tf_tensor_harness.cc", directory: "/home/mushfiqur/Desktop/Github/tensorflow")
!2310 = !DILocalVariable(name: "dims", scope: !2308, file: !2309, line: 18, type: !2311)
!2311 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 192, elements: !2312)
!2312 = !{!2313}
!2313 = !DISubrange(count: 3)
!2314 = !DILocation(line: 18, column: 11, scope: !2308)
!2315 = !DILocation(line: 19, column: 22, scope: !2308)
!2316 = !DILocation(line: 19, column: 3, scope: !2308)
!2317 = !DILocation(line: 21, column: 15, scope: !2308)
!2318 = !DILocation(line: 21, column: 23, scope: !2308)
!2319 = !DILocation(line: 21, column: 31, scope: !2308)
!2320 = !DILocation(line: 21, column: 34, scope: !2308)
!2321 = !DILocation(line: 21, column: 42, scope: !2308)
!2322 = !DILocation(line: 0, scope: !2308)
!2323 = !DILocation(line: 21, column: 3, scope: !2308)
!2324 = !DILocation(line: 22, column: 15, scope: !2308)
!2325 = !DILocation(line: 22, column: 23, scope: !2308)
!2326 = !DILocation(line: 22, column: 31, scope: !2308)
!2327 = !DILocation(line: 22, column: 34, scope: !2308)
!2328 = !DILocation(line: 22, column: 42, scope: !2308)
!2329 = !DILocation(line: 22, column: 3, scope: !2308)
!2330 = !DILocalVariable(name: "dtype", scope: !2308, file: !2309, line: 26, type: !225)
!2331 = !DILocation(line: 26, column: 15, scope: !2308)
!2332 = !DILocation(line: 27, column: 22, scope: !2308)
!2333 = !DILocation(line: 27, column: 3, scope: !2308)
!2334 = !DILocation(line: 29, column: 15, scope: !2308)
!2335 = !DILocation(line: 29, column: 21, scope: !2308)
!2336 = !DILocation(line: 29, column: 35, scope: !2308)
!2337 = !DILocation(line: 30, column: 15, scope: !2308)
!2338 = !DILocation(line: 30, column: 21, scope: !2308)
!2339 = !DILocation(line: 30, column: 35, scope: !2308)
!2340 = !DILocation(line: 31, column: 15, scope: !2308)
!2341 = !DILocation(line: 31, column: 21, scope: !2308)
!2342 = !DILocation(line: 31, column: 35, scope: !2308)
!2343 = !DILocation(line: 32, column: 15, scope: !2308)
!2344 = !DILocation(line: 32, column: 21, scope: !2308)
!2345 = !DILocation(line: 32, column: 35, scope: !2308)
!2346 = !DILocation(line: 33, column: 15, scope: !2308)
!2347 = !DILocation(line: 33, column: 21, scope: !2308)
!2348 = !DILocation(line: 33, column: 35, scope: !2308)
!2349 = !DILocation(line: 34, column: 15, scope: !2308)
!2350 = !DILocation(line: 34, column: 21, scope: !2308)
!2351 = !DILocation(line: 34, column: 35, scope: !2308)
!2352 = !DILocation(line: 35, column: 15, scope: !2308)
!2353 = !DILocation(line: 35, column: 21, scope: !2308)
!2354 = !DILocation(line: 35, column: 35, scope: !2308)
!2355 = !DILocation(line: 36, column: 15, scope: !2308)
!2356 = !DILocation(line: 36, column: 21, scope: !2308)
!2357 = !DILocation(line: 29, column: 3, scope: !2308)
!2358 = !DILocalVariable(name: "len", scope: !2308, file: !2309, line: 39, type: !19)
!2359 = !DILocation(line: 39, column: 10, scope: !2308)
!2360 = !DILocation(line: 40, column: 22, scope: !2308)
!2361 = !DILocation(line: 40, column: 3, scope: !2308)
!2362 = !DILocation(line: 42, column: 15, scope: !2308)
!2363 = !DILocation(line: 42, column: 19, scope: !2308)
!2364 = !DILocation(line: 42, column: 26, scope: !2308)
!2365 = !DILocation(line: 42, column: 29, scope: !2308)
!2366 = !DILocation(line: 42, column: 32, scope: !2308)
!2367 = !DILocation(line: 42, column: 3, scope: !2308)
!2368 = !DILocalVariable(name: "base", scope: !2308, file: !2309, line: 48, type: !2197)
!2369 = !DILocation(line: 48, column: 18, scope: !2308)
!2370 = !DILocation(line: 48, column: 41, scope: !2308)
!2371 = !DILocation(line: 49, column: 15, scope: !2308)
!2372 = !DILocation(line: 49, column: 20, scope: !2308)
!2373 = !DILocation(line: 49, column: 3, scope: !2308)
!2374 = !DILocalVariable(name: "offset", scope: !2308, file: !2309, line: 50, type: !95)
!2375 = !DILocation(line: 50, column: 12, scope: !2308)
!2376 = !DILocation(line: 51, column: 22, scope: !2308)
!2377 = !DILocation(line: 51, column: 3, scope: !2308)
!2378 = !DILocation(line: 53, column: 15, scope: !2308)
!2379 = !DILocation(line: 53, column: 22, scope: !2308)
!2380 = !DILocation(line: 53, column: 3, scope: !2308)
!2381 = !DILocalVariable(name: "data", scope: !2308, file: !2309, line: 54, type: !38)
!2382 = !DILocation(line: 54, column: 9, scope: !2308)
!2383 = !DILocation(line: 54, column: 16, scope: !2308)
!2384 = !DILocation(line: 54, column: 23, scope: !2308)
!2385 = !DILocation(line: 54, column: 21, scope: !2308)
!2386 = !DILocation(line: 56, column: 7, scope: !2387)
!2387 = distinct !DILexicalBlock(scope: !2308, file: !2309, line: 56, column: 7)
!2388 = !DILocation(line: 56, column: 11, scope: !2387)
!2389 = !DILocation(line: 56, column: 7, scope: !2308)
!2390 = !DILocalVariable(name: "sym", scope: !2391, file: !2309, line: 57, type: !19)
!2391 = distinct !DILexicalBlock(scope: !2387, file: !2309, line: 56, column: 16)
!2392 = !DILocation(line: 57, column: 12, scope: !2391)
!2393 = !DILocation(line: 57, column: 18, scope: !2391)
!2394 = !DILocation(line: 57, column: 22, scope: !2391)
!2395 = !DILocation(line: 57, column: 29, scope: !2391)
!2396 = !DILocation(line: 58, column: 24, scope: !2391)
!2397 = !DILocation(line: 58, column: 30, scope: !2391)
!2398 = !DILocation(line: 58, column: 5, scope: !2391)
!2399 = !DILocation(line: 59, column: 3, scope: !2391)
!2400 = !DILocalVariable(name: "t", scope: !2308, file: !2309, line: 62, type: !2401)
!2401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2402, size: 64)
!2402 = !DIDerivedType(tag: DW_TAG_typedef, name: "TF_Tensor", file: !2403, line: 57, baseType: !2404)
!2403 = !DIFile(filename: "tensorflow/c/tf_tensor.h", directory: "/home/mushfiqur/Desktop/Github/tensorflow")
!2404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "TF_Tensor", file: !2405, line: 41, size: 64, flags: DIFlagTypePassByValue, elements: !2406, identifier: "_ZTS9TF_Tensor")
!2405 = !DIFile(filename: "tensorflow/c/tf_tensor_internal.h", directory: "/home/mushfiqur/Desktop/Github/tensorflow")
!2406 = !{!2407}
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "tensor", scope: !2404, file: !2405, line: 42, baseType: !2408, size: 64)
!2408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2409, size: 64)
!2409 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "AbstractTensorInterface", scope: !4, file: !2410, line: 31, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !2411, vtableHolder: !2409, identifier: "_ZTSN10tensorflow23AbstractTensorInterfaceE")
!2410 = !DIFile(filename: "tensorflow/c/tensor_interface.h", directory: "/home/mushfiqur/Desktop/Github/tensorflow")
!2411 = !{!2412, !2413, !2417, !2422, !2425, !2428, !2431, !2434, !2437, !2440, !2441, !2444}
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "_vptr$AbstractTensorInterface", scope: !2410, file: !2410, baseType: !12, size: 64, flags: DIFlagArtificial)
!2413 = !DISubprogram(name: "Release", linkageName: "_ZN10tensorflow23AbstractTensorInterface7ReleaseEv", scope: !2409, file: !2410, line: 34, type: !2414, scopeLine: 34, containingType: !2409, virtualIndex: 0, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual)
!2414 = !DISubroutineType(types: !2415)
!2415 = !{null, !2416}
!2416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2409, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2417 = !DISubprogram(name: "Type", linkageName: "_ZNK10tensorflow23AbstractTensorInterface4TypeEv", scope: !2409, file: !2410, line: 37, type: !2418, scopeLine: 37, containingType: !2409, virtualIndex: 1, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual)
!2418 = !DISubroutineType(types: !2419)
!2419 = !{!100, !2420}
!2420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2421, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2421 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2409)
!2422 = !DISubprogram(name: "NumDims", linkageName: "_ZNK10tensorflow23AbstractTensorInterface7NumDimsEv", scope: !2409, file: !2410, line: 39, type: !2423, scopeLine: 39, containingType: !2409, virtualIndex: 2, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual)
!2423 = !DISubroutineType(types: !2424)
!2424 = !{!16, !2420}
!2425 = !DISubprogram(name: "Dim", linkageName: "_ZNK10tensorflow23AbstractTensorInterface3DimEi", scope: !2409, file: !2410, line: 41, type: !2426, scopeLine: 41, containingType: !2409, virtualIndex: 3, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual)
!2426 = !DISubroutineType(types: !2427)
!2427 = !{!64, !2420, !16}
!2428 = !DISubprogram(name: "NumElements", linkageName: "_ZNK10tensorflow23AbstractTensorInterface11NumElementsEv", scope: !2409, file: !2410, line: 43, type: !2429, scopeLine: 43, containingType: !2409, virtualIndex: 4, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual)
!2429 = !DISubroutineType(types: !2430)
!2430 = !{!64, !2420}
!2431 = !DISubprogram(name: "ByteSize", linkageName: "_ZNK10tensorflow23AbstractTensorInterface8ByteSizeEv", scope: !2409, file: !2410, line: 45, type: !2432, scopeLine: 45, containingType: !2409, virtualIndex: 5, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual)
!2432 = !DISubroutineType(types: !2433)
!2433 = !{!19, !2420}
!2434 = !DISubprogram(name: "Data", linkageName: "_ZNK10tensorflow23AbstractTensorInterface4DataEv", scope: !2409, file: !2410, line: 47, type: !2435, scopeLine: 47, containingType: !2409, virtualIndex: 6, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual)
!2435 = !DISubroutineType(types: !2436)
!2436 = !{!38, !2420}
!2437 = !DISubprogram(name: "IsAligned", linkageName: "_ZNK10tensorflow23AbstractTensorInterface9IsAlignedEv", scope: !2409, file: !2410, line: 50, type: !2438, scopeLine: 50, containingType: !2409, virtualIndex: 7, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual)
!2438 = !DISubroutineType(types: !2439)
!2439 = !{!53, !2420}
!2440 = !DISubprogram(name: "CanMove", linkageName: "_ZNK10tensorflow23AbstractTensorInterface7CanMoveEv", scope: !2409, file: !2410, line: 52, type: !2438, scopeLine: 52, containingType: !2409, virtualIndex: 8, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual)
!2441 = !DISubprogram(name: "SummarizeValue", linkageName: "_ZNK10tensorflow23AbstractTensorInterface14SummarizeValueB5cxx11Ev", scope: !2409, file: !2410, line: 54, type: !2442, scopeLine: 54, containingType: !2409, virtualIndex: 9, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual)
!2442 = !DISubroutineType(types: !2443)
!2443 = !{!29, !2420}
!2444 = !DISubprogram(name: "~AbstractTensorInterface", scope: !2409, file: !2410, line: 57, type: !2414, scopeLine: 57, containingType: !2409, virtualIndex: 0, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!2445 = !DILocation(line: 62, column: 14, scope: !2308)
!2446 = !DILocation(line: 62, column: 31, scope: !2308)
!2447 = !DILocation(line: 62, column: 38, scope: !2308)
!2448 = !DILocation(line: 62, column: 60, scope: !2308)
!2449 = !DILocation(line: 62, column: 66, scope: !2308)
!2450 = !DILocation(line: 62, column: 18, scope: !2308)
!2451 = !DILocation(line: 66, column: 7, scope: !2452)
!2452 = distinct !DILexicalBlock(scope: !2308, file: !2309, line: 66, column: 7)
!2453 = !DILocation(line: 66, column: 9, scope: !2452)
!2454 = !DILocation(line: 66, column: 7, scope: !2308)
!2455 = !DILocation(line: 69, column: 10, scope: !2456)
!2456 = distinct !DILexicalBlock(scope: !2457, file: !2309, line: 69, column: 9)
!2457 = distinct !DILexicalBlock(scope: !2452, file: !2309, line: 66, column: 18)
!2458 = !DILocation(line: 69, column: 18, scope: !2456)
!2459 = !DILocation(line: 69, column: 24, scope: !2456)
!2460 = !DILocation(line: 69, column: 28, scope: !2456)
!2461 = !DILocation(line: 69, column: 36, scope: !2456)
!2462 = !DILocation(line: 69, column: 9, scope: !2457)
!2463 = !DILocation(line: 71, column: 5, scope: !2464)
!2464 = distinct !DILexicalBlock(scope: !2456, file: !2309, line: 69, column: 43)
!2465 = !DILocation(line: 75, column: 5, scope: !2457)
!2466 = !DILocation(line: 81, column: 19, scope: !2308)
!2467 = !DILocation(line: 81, column: 3, scope: !2308)
!2468 = !DILocation(line: 82, column: 8, scope: !2308)
!2469 = !DILocation(line: 82, column: 3, scope: !2308)
!2470 = !DILocation(line: 83, column: 3, scope: !2308)
!2471 = !DILocation(line: 84, column: 1, scope: !2308)
!2472 = distinct !DISubprogram(name: "dummy_deallocator", linkageName: "_ZL17dummy_deallocatorPvmS_", scope: !2309, file: !2309, line: 14, type: !2473, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2193, retainedNodes: !212)
!2473 = !DISubroutineType(types: !2474)
!2474 = !{null, !38, !19, !38}
!2475 = !DILocalVariable(name: "data", arg: 1, scope: !2472, file: !2309, line: 14, type: !38)
!2476 = !DILocation(line: 14, column: 37, scope: !2472)
!2477 = !DILocalVariable(name: "len", arg: 2, scope: !2472, file: !2309, line: 14, type: !19)
!2478 = !DILocation(line: 14, column: 50, scope: !2472)
!2479 = !DILocalVariable(name: "arg", arg: 3, scope: !2472, file: !2309, line: 14, type: !38)
!2480 = !DILocation(line: 14, column: 61, scope: !2472)
!2481 = !DILocation(line: 14, column: 102, scope: !2472)
!2482 = distinct !DISubprogram(name: "allocate_tensor", linkageName: "_ZN10tensorflow15allocate_tensorEPKcmPNS_9AllocatorE", scope: !4, file: !2180, line: 48, type: !2483, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, retainedNodes: !212)
!2483 = !DISubroutineType(types: !2484)
!2484 = !{!38, !226, !19, !7}
!2485 = !DILocalVariable(name: "operation", arg: 1, scope: !2482, file: !2180, line: 48, type: !226)
!2486 = !DILocation(line: 48, column: 35, scope: !2482)
!2487 = !DILocalVariable(name: "len", arg: 2, scope: !2482, file: !2180, line: 48, type: !19)
!2488 = !DILocation(line: 48, column: 53, scope: !2482)
!2489 = !DILocalVariable(name: "allocator", arg: 3, scope: !2482, file: !2180, line: 48, type: !7)
!2490 = !DILocation(line: 48, column: 69, scope: !2482)
!2491 = !DILocalVariable(name: "data", scope: !2482, file: !2180, line: 49, type: !38)
!2492 = !DILocation(line: 49, column: 9, scope: !2482)
!2493 = !DILocation(line: 49, column: 16, scope: !2482)
!2494 = !DILocation(line: 49, column: 62, scope: !2482)
!2495 = !DILocation(line: 49, column: 27, scope: !2482)
!2496 = !DILocation(line: 55, column: 10, scope: !2482)
!2497 = !DILocation(line: 55, column: 3, scope: !2482)
!2498 = distinct !DISubprogram(name: "allocate_tensor", linkageName: "_ZN10tensorflow15allocate_tensorEPKcm", scope: !4, file: !2180, line: 58, type: !2499, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, retainedNodes: !212)
!2499 = !DISubroutineType(types: !2500)
!2500 = !{!38, !226, !19}
!2501 = !DILocalVariable(name: "operation", arg: 1, scope: !2498, file: !2180, line: 58, type: !226)
!2502 = !DILocation(line: 58, column: 35, scope: !2498)
!2503 = !DILocalVariable(name: "len", arg: 2, scope: !2498, file: !2180, line: 58, type: !19)
!2504 = !DILocation(line: 58, column: 53, scope: !2498)
!2505 = !DILocation(line: 59, column: 26, scope: !2498)
!2506 = !DILocation(line: 59, column: 37, scope: !2498)
!2507 = !DILocation(line: 59, column: 42, scope: !2498)
!2508 = !DILocation(line: 59, column: 10, scope: !2498)
!2509 = !DILocation(line: 59, column: 3, scope: !2498)
!2510 = !DILocation(line: 22, column: 3, scope: !2)
!2511 = !{!"branch_weights", i32 1, i32 1048575}
!2512 = !DILocation(line: 22, column: 35, scope: !2)
!2513 = !DILocation(line: 22, column: 39, scope: !2)
!2514 = !DILocation(line: 23, column: 10, scope: !2)
!2515 = !DILocation(line: 23, column: 3, scope: !2)
!2516 = !DILocation(line: 24, column: 1, scope: !2)
!2517 = distinct !DISubprogram(name: "StubCPUAllocator", linkageName: "_ZN10tensorflow16StubCPUAllocatorC2Ev", scope: !2183, file: !3, line: 13, type: !2187, scopeLine: 13, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !2518, retainedNodes: !212)
!2518 = !DISubprogram(name: "StubCPUAllocator", scope: !2183, type: !2187, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!2519 = !DILocalVariable(name: "this", arg: 1, scope: !2517, type: !2182, flags: DIFlagArtificial | DIFlagObjectPointer)
!2520 = !DILocation(line: 0, scope: !2517)
!2521 = !DILocation(line: 13, column: 7, scope: !2517)
!2522 = distinct !DISubprogram(name: "Allocator", linkageName: "_ZN10tensorflow9AllocatorC2Ev", scope: !8, file: !9, line: 76, type: !23, scopeLine: 76, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !2523, retainedNodes: !212)
!2523 = !DISubprogram(name: "Allocator", scope: !8, type: !23, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!2524 = !DILocalVariable(name: "this", arg: 1, scope: !2522, type: !7, flags: DIFlagArtificial | DIFlagObjectPointer)
!2525 = !DILocation(line: 0, scope: !2522)
!2526 = !DILocation(line: 76, column: 7, scope: !2522)
!2527 = distinct !DISubprogram(name: "~StubCPUAllocator", linkageName: "_ZN10tensorflow16StubCPUAllocatorD2Ev", scope: !2183, file: !3, line: 15, type: !2187, scopeLine: 15, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !2186, retainedNodes: !212)
!2528 = !DILocalVariable(name: "this", arg: 1, scope: !2527, type: !2182, flags: DIFlagArtificial | DIFlagObjectPointer)
!2529 = !DILocation(line: 0, scope: !2527)
!2530 = !DILocation(line: 15, column: 40, scope: !2531)
!2531 = distinct !DILexicalBlock(scope: !2527, file: !3, line: 15, column: 40)
!2532 = !DILocation(line: 15, column: 40, scope: !2527)
!2533 = distinct !DISubprogram(name: "~StubCPUAllocator", linkageName: "_ZN10tensorflow16StubCPUAllocatorD0Ev", scope: !2183, file: !3, line: 15, type: !2187, scopeLine: 15, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !2186, retainedNodes: !212)
!2534 = !DILocalVariable(name: "this", arg: 1, scope: !2533, type: !2182, flags: DIFlagArtificial | DIFlagObjectPointer)
!2535 = !DILocation(line: 0, scope: !2533)
!2536 = !DILocation(line: 15, column: 40, scope: !2533)
!2537 = distinct !DISubprogram(name: "Name", linkageName: "_ZN10tensorflow16StubCPUAllocator4NameB5cxx11Ev", scope: !2183, file: !3, line: 16, type: !2191, scopeLine: 16, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !2190, retainedNodes: !212)
!2538 = !DILocalVariable(name: "this", arg: 1, scope: !2537, type: !2182, flags: DIFlagArtificial | DIFlagObjectPointer)
!2539 = !DILocation(line: 0, scope: !2537)
!2540 = !DILocation(line: 16, column: 40, scope: !2537)
!2541 = !DILocation(line: 16, column: 33, scope: !2537)
!2542 = !DILocation(line: 16, column: 60, scope: !2537)
!2543 = distinct !DISubprogram(name: "AllocateRaw", linkageName: "_ZN10tensorflow9Allocator11AllocateRawEmm", scope: !8, file: !9, line: 84, type: !36, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !35, retainedNodes: !212)
!2544 = !DILocalVariable(name: "this", arg: 1, scope: !2543, type: !7, flags: DIFlagArtificial | DIFlagObjectPointer)
!2545 = !DILocation(line: 0, scope: !2543)
!2546 = !DILocalVariable(name: "alignment", arg: 2, scope: !2543, file: !9, line: 84, type: !19)
!2547 = !DILocation(line: 84, column: 36, scope: !2543)
!2548 = !DILocalVariable(name: "num_bytes", arg: 3, scope: !2543, file: !9, line: 84, type: !19)
!2549 = !DILocation(line: 84, column: 54, scope: !2543)
!2550 = !DILocation(line: 85, column: 27, scope: !2543)
!2551 = !DILocation(line: 85, column: 55, scope: !2543)
!2552 = !DILocation(line: 85, column: 12, scope: !2543)
!2553 = !DILocation(line: 85, column: 5, scope: !2543)
!2554 = distinct !DISubprogram(name: "DeallocateRaw", linkageName: "_ZN10tensorflow9Allocator13DeallocateRawEPv", scope: !8, file: !9, line: 88, type: !40, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !39, retainedNodes: !212)
!2555 = !DILocalVariable(name: "this", arg: 1, scope: !2554, type: !7, flags: DIFlagArtificial | DIFlagObjectPointer)
!2556 = !DILocation(line: 0, scope: !2554)
!2557 = !DILocalVariable(name: "ptr", arg: 2, scope: !2554, file: !9, line: 88, type: !38)
!2558 = !DILocation(line: 88, column: 36, scope: !2554)
!2559 = !DILocation(line: 88, column: 61, scope: !2554)
!2560 = !DILocation(line: 88, column: 43, scope: !2554)
!2561 = !DILocation(line: 88, column: 67, scope: !2554)
!2562 = distinct !DISubprogram(name: "AllocateRaw", linkageName: "_ZN10tensorflow9Allocator11AllocateRawEmmPKv", scope: !8, file: !9, line: 91, type: !43, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !42, retainedNodes: !212)
!2563 = !DILocalVariable(name: "this", arg: 1, scope: !2562, type: !7, flags: DIFlagArtificial | DIFlagObjectPointer)
!2564 = !DILocation(line: 0, scope: !2562)
!2565 = !DILocalVariable(name: "alignment", arg: 2, scope: !2562, file: !9, line: 91, type: !19)
!2566 = !DILocation(line: 91, column: 36, scope: !2562)
!2567 = !DILocalVariable(name: "num_bytes", arg: 3, scope: !2562, file: !9, line: 91, type: !19)
!2568 = !DILocation(line: 91, column: 54, scope: !2562)
!2569 = !DILocalVariable(arg: 4, scope: !2562, file: !9, line: 92, type: !45)
!2570 = !DILocation(line: 92, column: 60, scope: !2562)
!2571 = !DILocation(line: 93, column: 24, scope: !2562)
!2572 = !DILocation(line: 93, column: 35, scope: !2562)
!2573 = !DILocation(line: 93, column: 12, scope: !2562)
!2574 = !DILocation(line: 93, column: 5, scope: !2562)
!2575 = distinct !DISubprogram(name: "DeallocateRaw", linkageName: "_ZN10tensorflow9Allocator13DeallocateRawEPvmm", scope: !8, file: !9, line: 95, type: !48, scopeLine: 95, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !47, retainedNodes: !212)
!2576 = !DILocalVariable(name: "this", arg: 1, scope: !2575, type: !7, flags: DIFlagArtificial | DIFlagObjectPointer)
!2577 = !DILocation(line: 0, scope: !2575)
!2578 = !DILocalVariable(name: "ptr", arg: 2, scope: !2575, file: !9, line: 95, type: !38)
!2579 = !DILocation(line: 95, column: 36, scope: !2575)
!2580 = !DILocalVariable(arg: 3, scope: !2575, file: !9, line: 95, type: !19)
!2581 = !DILocation(line: 95, column: 47, scope: !2575)
!2582 = !DILocalVariable(arg: 4, scope: !2575, file: !9, line: 95, type: !19)
!2583 = !DILocation(line: 95, column: 55, scope: !2575)
!2584 = !DILocation(line: 96, column: 19, scope: !2575)
!2585 = !DILocation(line: 96, column: 5, scope: !2575)
!2586 = !DILocation(line: 97, column: 3, scope: !2575)
!2587 = distinct !DISubprogram(name: "TracksAllocationSizes", linkageName: "_ZNK10tensorflow9Allocator21TracksAllocationSizesEv", scope: !8, file: !9, line: 99, type: !51, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !50, retainedNodes: !212)
!2588 = !DILocalVariable(name: "this", arg: 1, scope: !2587, type: !2589, flags: DIFlagArtificial | DIFlagObjectPointer)
!2589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!2590 = !DILocation(line: 0, scope: !2587)
!2591 = !DILocation(line: 99, column: 48, scope: !2587)
!2592 = distinct !DISubprogram(name: "AllocatesOpaqueHandle", linkageName: "_ZNK10tensorflow9Allocator21AllocatesOpaqueHandleEv", scope: !8, file: !9, line: 100, type: !51, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !56, retainedNodes: !212)
!2593 = !DILocalVariable(name: "this", arg: 1, scope: !2592, type: !2589, flags: DIFlagArtificial | DIFlagObjectPointer)
!2594 = !DILocation(line: 0, scope: !2592)
!2595 = !DILocation(line: 100, column: 48, scope: !2592)
!2596 = distinct !DISubprogram(name: "RequestedSize", linkageName: "_ZNK10tensorflow9Allocator13RequestedSizeEPKv", scope: !8, file: !9, line: 102, type: !58, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !57, retainedNodes: !212)
!2597 = !DILocalVariable(name: "this", arg: 1, scope: !2596, type: !2589, flags: DIFlagArtificial | DIFlagObjectPointer)
!2598 = !DILocation(line: 0, scope: !2596)
!2599 = !DILocalVariable(arg: 2, scope: !2596, file: !9, line: 102, type: !45)
!2600 = !DILocation(line: 102, column: 51, scope: !2596)
!2601 = !DILocation(line: 102, column: 61, scope: !2596)
!2602 = distinct !DISubprogram(name: "AllocatedSize", linkageName: "_ZNK10tensorflow9Allocator13AllocatedSizeEPKv", scope: !8, file: !9, line: 103, type: !58, scopeLine: 103, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !60, retainedNodes: !212)
!2603 = !DILocalVariable(name: "this", arg: 1, scope: !2602, type: !2589, flags: DIFlagArtificial | DIFlagObjectPointer)
!2604 = !DILocation(line: 0, scope: !2602)
!2605 = !DILocalVariable(arg: 2, scope: !2602, file: !9, line: 103, type: !45)
!2606 = !DILocation(line: 103, column: 51, scope: !2602)
!2607 = !DILocation(line: 103, column: 61, scope: !2602)
!2608 = distinct !DISubprogram(name: "AllocationId", linkageName: "_ZNK10tensorflow9Allocator12AllocationIdEPKv", scope: !8, file: !9, line: 104, type: !62, scopeLine: 104, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !61, retainedNodes: !212)
!2609 = !DILocalVariable(name: "this", arg: 1, scope: !2608, type: !2589, flags: DIFlagArtificial | DIFlagObjectPointer)
!2610 = !DILocation(line: 0, scope: !2608)
!2611 = !DILocalVariable(arg: 2, scope: !2608, file: !9, line: 104, type: !45)
!2612 = !DILocation(line: 104, column: 51, scope: !2608)
!2613 = !DILocation(line: 104, column: 61, scope: !2608)
!2614 = distinct !DISubprogram(name: "AllocatedSizeSlow", linkageName: "_ZNK10tensorflow9Allocator17AllocatedSizeSlowEPKv", scope: !8, file: !9, line: 105, type: !58, scopeLine: 105, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !69, retainedNodes: !212)
!2615 = !DILocalVariable(name: "this", arg: 1, scope: !2614, type: !2589, flags: DIFlagArtificial | DIFlagObjectPointer)
!2616 = !DILocation(line: 0, scope: !2614)
!2617 = !DILocalVariable(arg: 2, scope: !2614, file: !9, line: 105, type: !45)
!2618 = !DILocation(line: 105, column: 55, scope: !2614)
!2619 = !DILocation(line: 105, column: 65, scope: !2614)
!2620 = distinct !DISubprogram(name: "ClearStats", linkageName: "_ZN10tensorflow9Allocator10ClearStatsEv", scope: !8, file: !9, line: 108, type: !71, scopeLine: 108, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !70, retainedNodes: !212)
!2621 = !DILocalVariable(name: "this", arg: 1, scope: !2620, type: !7, flags: DIFlagArtificial | DIFlagObjectPointer)
!2622 = !DILocation(line: 0, scope: !2620)
!2623 = !DILocation(line: 108, column: 31, scope: !2620)
!2624 = distinct !DISubprogram(name: "SetSafeFrontier", linkageName: "_ZN10tensorflow9Allocator15SetSafeFrontierEm", scope: !8, file: !9, line: 110, type: !74, scopeLine: 110, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !73, retainedNodes: !212)
!2625 = !DILocalVariable(name: "this", arg: 1, scope: !2624, type: !7, flags: DIFlagArtificial | DIFlagObjectPointer)
!2626 = !DILocation(line: 0, scope: !2624)
!2627 = !DILocalVariable(arg: 2, scope: !2624, file: !9, line: 110, type: !76)
!2628 = !DILocation(line: 110, column: 40, scope: !2624)
!2629 = !DILocation(line: 110, column: 43, scope: !2624)
!2630 = distinct !DISubprogram(name: "SetStreamAndPreallocateMemory", linkageName: "_ZN10tensorflow9Allocator29SetStreamAndPreallocateMemoryEPv", scope: !8, file: !9, line: 111, type: !40, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !79, retainedNodes: !212)
!2631 = !DILocalVariable(name: "this", arg: 1, scope: !2630, type: !7, flags: DIFlagArtificial | DIFlagObjectPointer)
!2632 = !DILocation(line: 0, scope: !2630)
!2633 = !DILocalVariable(arg: 2, scope: !2630, file: !9, line: 111, type: !38)
!2634 = !DILocation(line: 111, column: 62, scope: !2630)
!2635 = !DILocation(line: 111, column: 65, scope: !2630)
!2636 = distinct !DISubprogram(name: "GetMemoryType", linkageName: "_ZNK10tensorflow9Allocator13GetMemoryTypeEv", scope: !8, file: !9, line: 113, type: !81, scopeLine: 113, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !80, retainedNodes: !212)
!2637 = !DILocalVariable(name: "this", arg: 1, scope: !2636, type: !2589, flags: DIFlagArtificial | DIFlagObjectPointer)
!2638 = !DILocation(line: 0, scope: !2636)
!2639 = !DILocation(line: 114, column: 5, scope: !2636)
!2640 = distinct !DISubprogram(name: "basic_string<std::allocator<char> >", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_", scope: !32, file: !205, line: 533, type: !2641, scopeLine: 535, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, templateParams: !2645, declaration: !2644, retainedNodes: !212)
!2641 = !DISubroutineType(types: !2642)
!2642 = !{null, !2643, !226, !269}
!2643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2644 = !DISubprogram(name: "basic_string<std::allocator<char> >", scope: !32, file: !205, line: 533, type: !2641, scopeLine: 533, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0, templateParams: !2645)
!2645 = !{!2646}
!2646 = !DITemplateTypeParameter(type: !245)
!2647 = !DILocalVariable(name: "this", arg: 1, scope: !2640, type: !2648, flags: DIFlagArtificial | DIFlagObjectPointer)
!2648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!2649 = !DILocation(line: 0, scope: !2640)
!2650 = !DILocalVariable(name: "__s", arg: 2, scope: !2640, file: !205, line: 533, type: !226)
!2651 = !DILocation(line: 533, column: 34, scope: !2640)
!2652 = !DILocalVariable(name: "__a", arg: 3, scope: !2640, file: !205, line: 533, type: !269)
!2653 = !DILocation(line: 533, column: 53, scope: !2640)
!2654 = !DILocation(line: 534, column: 9, scope: !2640)
!2655 = !DILocation(line: 534, column: 21, scope: !2640)
!2656 = !DILocation(line: 534, column: 38, scope: !2640)
!2657 = !DILocalVariable(name: "__end", scope: !2658, file: !205, line: 536, type: !226)
!2658 = distinct !DILexicalBlock(scope: !2640, file: !205, line: 535, column: 7)
!2659 = !DILocation(line: 536, column: 16, scope: !2658)
!2660 = !DILocation(line: 536, column: 24, scope: !2658)
!2661 = !DILocation(line: 536, column: 30, scope: !2658)
!2662 = !DILocation(line: 536, column: 56, scope: !2658)
!2663 = !DILocation(line: 536, column: 36, scope: !2658)
!2664 = !DILocation(line: 536, column: 34, scope: !2658)
!2665 = !DILocation(line: 539, column: 15, scope: !2658)
!2666 = !DILocation(line: 539, column: 20, scope: !2658)
!2667 = !DILocation(line: 539, column: 27, scope: !2658)
!2668 = !DILocation(line: 539, column: 2, scope: !2658)
!2669 = !DILocation(line: 540, column: 7, scope: !2640)
!2670 = !DILocation(line: 540, column: 7, scope: !2658)
!2671 = distinct !DISubprogram(name: "length", linkageName: "_ZNSt11char_traitsIcE6lengthEPKc", scope: !2673, file: !2672, line: 393, type: !2691, scopeLine: 394, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !2690, retainedNodes: !212)
!2672 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/char_traits.h", directory: "")
!2673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "char_traits<char>", scope: !31, file: !2672, line: 344, size: 8, flags: DIFlagTypePassByValue, elements: !2674, templateParams: !2722, identifier: "_ZTSSt11char_traitsIcE")
!2674 = !{!2675, !2682, !2685, !2686, !2690, !2693, !2696, !2700, !2701, !2704, !2710, !2713, !2716, !2719}
!2675 = !DISubprogram(name: "assign", linkageName: "_ZNSt11char_traitsIcE6assignERcRKc", scope: !2673, file: !2672, line: 356, type: !2676, scopeLine: 356, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2676 = !DISubroutineType(types: !2677)
!2677 = !{null, !2678, !2680}
!2678 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2679, size: 64)
!2679 = !DIDerivedType(tag: DW_TAG_typedef, name: "char_type", scope: !2673, file: !2672, line: 346, baseType: !228)
!2680 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2681, size: 64)
!2681 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2679)
!2682 = !DISubprogram(name: "eq", linkageName: "_ZNSt11char_traitsIcE2eqERKcS2_", scope: !2673, file: !2672, line: 360, type: !2683, scopeLine: 360, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2683 = !DISubroutineType(types: !2684)
!2684 = !{!53, !2680, !2680}
!2685 = !DISubprogram(name: "lt", linkageName: "_ZNSt11char_traitsIcE2ltERKcS2_", scope: !2673, file: !2672, line: 364, type: !2683, scopeLine: 364, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2686 = !DISubprogram(name: "compare", linkageName: "_ZNSt11char_traitsIcE7compareEPKcS2_m", scope: !2673, file: !2672, line: 372, type: !2687, scopeLine: 372, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2687 = !DISubroutineType(types: !2688)
!2688 = !{!16, !2689, !2689, !210}
!2689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2681, size: 64)
!2690 = !DISubprogram(name: "length", linkageName: "_ZNSt11char_traitsIcE6lengthEPKc", scope: !2673, file: !2672, line: 393, type: !2691, scopeLine: 393, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2691 = !DISubroutineType(types: !2692)
!2692 = !{!210, !2689}
!2693 = !DISubprogram(name: "find", linkageName: "_ZNSt11char_traitsIcE4findEPKcmRS1_", scope: !2673, file: !2672, line: 403, type: !2694, scopeLine: 403, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2694 = !DISubroutineType(types: !2695)
!2695 = !{!2689, !2689, !210, !2680}
!2696 = !DISubprogram(name: "move", linkageName: "_ZNSt11char_traitsIcE4moveEPcPKcm", scope: !2673, file: !2672, line: 417, type: !2697, scopeLine: 417, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2697 = !DISubroutineType(types: !2698)
!2698 = !{!2699, !2699, !2689, !210}
!2699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2679, size: 64)
!2700 = !DISubprogram(name: "copy", linkageName: "_ZNSt11char_traitsIcE4copyEPcPKcm", scope: !2673, file: !2672, line: 429, type: !2697, scopeLine: 429, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2701 = !DISubprogram(name: "assign", linkageName: "_ZNSt11char_traitsIcE6assignEPcmc", scope: !2673, file: !2672, line: 441, type: !2702, scopeLine: 441, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2702 = !DISubroutineType(types: !2703)
!2703 = !{!2699, !2699, !210, !2679}
!2704 = !DISubprogram(name: "to_char_type", linkageName: "_ZNSt11char_traitsIcE12to_char_typeERKi", scope: !2673, file: !2672, line: 453, type: !2705, scopeLine: 453, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2705 = !DISubroutineType(types: !2706)
!2706 = !{!2679, !2707}
!2707 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2708, size: 64)
!2708 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2709)
!2709 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_type", scope: !2673, file: !2672, line: 347, baseType: !16)
!2710 = !DISubprogram(name: "to_int_type", linkageName: "_ZNSt11char_traitsIcE11to_int_typeERKc", scope: !2673, file: !2672, line: 459, type: !2711, scopeLine: 459, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2711 = !DISubroutineType(types: !2712)
!2712 = !{!2709, !2680}
!2713 = !DISubprogram(name: "eq_int_type", linkageName: "_ZNSt11char_traitsIcE11eq_int_typeERKiS2_", scope: !2673, file: !2672, line: 463, type: !2714, scopeLine: 463, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2714 = !DISubroutineType(types: !2715)
!2715 = !{!53, !2707, !2707}
!2716 = !DISubprogram(name: "eof", linkageName: "_ZNSt11char_traitsIcE3eofEv", scope: !2673, file: !2672, line: 467, type: !2717, scopeLine: 467, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2717 = !DISubroutineType(types: !2718)
!2718 = !{!2709}
!2719 = !DISubprogram(name: "not_eof", linkageName: "_ZNSt11char_traitsIcE7not_eofERKi", scope: !2673, file: !2672, line: 471, type: !2720, scopeLine: 471, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2720 = !DISubroutineType(types: !2721)
!2721 = !{!2709, !2707}
!2722 = !{!2723}
!2723 = !DITemplateTypeParameter(name: "_CharT", type: !228)
!2724 = !DILocalVariable(name: "__s", arg: 1, scope: !2671, file: !2672, line: 393, type: !2689)
!2725 = !DILocation(line: 393, column: 31, scope: !2671)
!2726 = !DILocation(line: 396, column: 26, scope: !2727)
!2727 = distinct !DILexicalBlock(scope: !2671, file: !2672, line: 396, column: 6)
!2728 = !DILocalVariable(name: "__s", arg: 1, scope: !2729, file: !2672, line: 285, type: !226)
!2729 = distinct !DISubprogram(name: "__constant_string_p<char>", linkageName: "_ZSt19__constant_string_pIcEbPKT_", scope: !31, file: !2672, line: 285, type: !2730, scopeLine: 286, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, templateParams: !2722, retainedNodes: !212)
!2730 = !DISubroutineType(types: !2731)
!2731 = !{!53, !226}
!2732 = !DILocation(line: 285, column: 39, scope: !2729, inlinedAt: !2733)
!2733 = distinct !DILocation(line: 396, column: 6, scope: !2727)
!2734 = !DILocation(line: 396, column: 6, scope: !2671)
!2735 = !DILocation(line: 397, column: 53, scope: !2727)
!2736 = !DILocation(line: 397, column: 11, scope: !2727)
!2737 = !DILocation(line: 397, column: 4, scope: !2727)
!2738 = !DILocation(line: 399, column: 26, scope: !2671)
!2739 = !DILocation(line: 399, column: 9, scope: !2671)
!2740 = !DILocation(line: 399, column: 2, scope: !2671)
!2741 = !DILocation(line: 400, column: 7, scope: !2671)
!2742 = distinct !DISubprogram(name: "_M_construct<const char *>", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag", scope: !32, file: !33, line: 207, type: !2743, scopeLine: 209, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, templateParams: !2750, declaration: !2749, retainedNodes: !212)
!2743 = !DISubroutineType(types: !2744)
!2744 = !{null, !2643, !226, !226, !2745}
!2745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "forward_iterator_tag", scope: !31, file: !655, line: 99, size: 8, flags: DIFlagTypePassByValue, elements: !2746, identifier: "_ZTSSt20forward_iterator_tag")
!2746 = !{!2747}
!2747 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !2745, baseType: !2748, extraData: i32 0)
!2748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_iterator_tag", scope: !31, file: !655, line: 93, size: 8, flags: DIFlagTypePassByValue, elements: !212, identifier: "_ZTSSt18input_iterator_tag")
!2749 = !DISubprogram(name: "_M_construct<const char *>", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag", scope: !32, file: !205, line: 287, type: !2743, scopeLine: 287, flags: DIFlagPrototyped, spFlags: 0, templateParams: !2750)
!2750 = !{!2751}
!2751 = !DITemplateTypeParameter(name: "_FwdIterator", type: !226)
!2752 = !DILocalVariable(name: "this", arg: 1, scope: !2742, type: !2648, flags: DIFlagArtificial | DIFlagObjectPointer)
!2753 = !DILocation(line: 0, scope: !2742)
!2754 = !DILocalVariable(name: "__beg", arg: 2, scope: !2742, file: !205, line: 287, type: !226)
!2755 = !DILocation(line: 287, column: 35, scope: !2742)
!2756 = !DILocalVariable(name: "__end", arg: 3, scope: !2742, file: !205, line: 287, type: !226)
!2757 = !DILocation(line: 287, column: 55, scope: !2742)
!2758 = !DILocalVariable(arg: 4, scope: !2742, file: !205, line: 288, type: !2745)
!2759 = !DILocation(line: 288, column: 33, scope: !2742)
!2760 = !DILocation(line: 211, column: 35, scope: !2761)
!2761 = distinct !DILexicalBlock(scope: !2742, file: !33, line: 211, column: 6)
!2762 = !DILocation(line: 211, column: 6, scope: !2761)
!2763 = !DILocation(line: 211, column: 42, scope: !2761)
!2764 = !DILocation(line: 211, column: 45, scope: !2761)
!2765 = !DILocation(line: 211, column: 54, scope: !2761)
!2766 = !DILocation(line: 211, column: 51, scope: !2761)
!2767 = !DILocation(line: 211, column: 6, scope: !2742)
!2768 = !DILocation(line: 212, column: 4, scope: !2761)
!2769 = !DILocalVariable(name: "__dnew", scope: !2742, file: !33, line: 215, type: !229)
!2770 = !DILocation(line: 215, column: 12, scope: !2742)
!2771 = !DILocation(line: 215, column: 58, scope: !2742)
!2772 = !DILocation(line: 215, column: 65, scope: !2742)
!2773 = !DILocation(line: 215, column: 44, scope: !2742)
!2774 = !DILocation(line: 217, column: 6, scope: !2775)
!2775 = distinct !DILexicalBlock(scope: !2742, file: !33, line: 217, column: 6)
!2776 = !DILocation(line: 217, column: 13, scope: !2775)
!2777 = !DILocation(line: 217, column: 6, scope: !2742)
!2778 = !DILocation(line: 219, column: 14, scope: !2779)
!2779 = distinct !DILexicalBlock(scope: !2775, file: !33, line: 218, column: 4)
!2780 = !DILocation(line: 219, column: 6, scope: !2779)
!2781 = !DILocation(line: 220, column: 18, scope: !2779)
!2782 = !DILocation(line: 220, column: 6, scope: !2779)
!2783 = !DILocation(line: 221, column: 4, scope: !2779)
!2784 = !DILocation(line: 225, column: 26, scope: !2785)
!2785 = distinct !DILexicalBlock(scope: !2742, file: !33, line: 225, column: 4)
!2786 = !DILocation(line: 225, column: 37, scope: !2785)
!2787 = !DILocation(line: 225, column: 44, scope: !2785)
!2788 = !DILocation(line: 225, column: 6, scope: !2785)
!2789 = !DILocation(line: 225, column: 52, scope: !2785)
!2790 = !DILocation(line: 233, column: 7, scope: !2785)
!2791 = !DILocation(line: 228, column: 6, scope: !2792)
!2792 = distinct !DILexicalBlock(scope: !2742, file: !33, line: 227, column: 4)
!2793 = !DILocation(line: 229, column: 6, scope: !2792)
!2794 = !DILocation(line: 233, column: 7, scope: !2792)
!2795 = !DILocation(line: 230, column: 4, scope: !2792)
!2796 = !DILocation(line: 232, column: 16, scope: !2742)
!2797 = !DILocation(line: 232, column: 2, scope: !2742)
!2798 = !DILocation(line: 233, column: 7, scope: !2742)
!2799 = distinct !DISubprogram(name: "~_Alloc_hider", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev", scope: !2800, file: !205, line: 158, type: !2821, scopeLine: 158, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !2823, retainedNodes: !212)
!2800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Alloc_hider", scope: !32, file: !205, line: 158, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !2801, identifier: "_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE")
!2801 = !{!2802, !2810, !2813, !2817}
!2802 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !2800, baseType: !2803, extraData: i32 0)
!2803 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocator_type", scope: !32, file: !205, line: 95, baseType: !2804)
!2804 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Char_alloc_type", scope: !32, file: !205, line: 88, baseType: !2805)
!2805 = !DIDerivedType(tag: DW_TAG_typedef, name: "other", scope: !2806, file: !231, line: 120, baseType: !2809)
!2806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rebind<char>", scope: !232, file: !231, line: 119, size: 8, flags: DIFlagTypePassByValue, elements: !212, templateParams: !2807, identifier: "_ZTSN9__gnu_cxx14__alloc_traitsISaIcEcE6rebindIcEE")
!2807 = !{!2808}
!2808 = !DITemplateTypeParameter(name: "_Tp", type: !228)
!2809 = !DIDerivedType(tag: DW_TAG_typedef, name: "rebind_alloc<char>", scope: !235, file: !236, line: 450, baseType: !245)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "_M_p", scope: !2800, file: !205, line: 171, baseType: !2811, size: 64)
!2811 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !32, file: !205, line: 100, baseType: !2812)
!2812 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !232, file: !231, line: 57, baseType: !241)
!2813 = !DISubprogram(name: "_Alloc_hider", scope: !2800, file: !205, line: 164, type: !2814, scopeLine: 164, flags: DIFlagPrototyped, spFlags: 0)
!2814 = !DISubroutineType(types: !2815)
!2815 = !{null, !2816, !2811, !269}
!2816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2800, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2817 = !DISubprogram(name: "_Alloc_hider", scope: !2800, file: !205, line: 167, type: !2818, scopeLine: 167, flags: DIFlagPrototyped, spFlags: 0)
!2818 = !DISubroutineType(types: !2819)
!2819 = !{null, !2816, !2811, !2820}
!2820 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !245, size: 64)
!2821 = !DISubroutineType(types: !2822)
!2822 = !{null, !2816}
!2823 = !DISubprogram(name: "~_Alloc_hider", scope: !2800, type: !2821, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!2824 = !DILocalVariable(name: "this", arg: 1, scope: !2799, type: !2825, flags: DIFlagArtificial | DIFlagObjectPointer)
!2825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2800, size: 64)
!2826 = !DILocation(line: 0, scope: !2799)
!2827 = !DILocation(line: 158, column: 14, scope: !2828)
!2828 = distinct !DILexicalBlock(scope: !2799, file: !205, line: 158, column: 14)
!2829 = !DILocation(line: 158, column: 14, scope: !2799)
!2830 = distinct !DISubprogram(name: "__is_null_pointer<const char>", linkageName: "_ZN9__gnu_cxx17__is_null_pointerIKcEEbPT_", scope: !94, file: !2831, line: 152, type: !2730, scopeLine: 153, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, templateParams: !2832, retainedNodes: !212)
!2831 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/ext/type_traits.h", directory: "")
!2832 = !{!2833}
!2833 = !DITemplateTypeParameter(name: "_Type", type: !227)
!2834 = !DILocalVariable(name: "__ptr", arg: 1, scope: !2830, file: !2831, line: 152, type: !226)
!2835 = !DILocation(line: 152, column: 30, scope: !2830)
!2836 = !DILocation(line: 153, column: 14, scope: !2830)
!2837 = !DILocation(line: 153, column: 20, scope: !2830)
!2838 = !DILocation(line: 153, column: 7, scope: !2830)
!2839 = distinct !DISubprogram(name: "distance<const char *>", linkageName: "_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_", scope: !31, file: !2840, line: 138, type: !2841, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, templateParams: !2847, retainedNodes: !212)
!2840 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/stl_iterator_base_funcs.h", directory: "")
!2841 = !DISubroutineType(types: !2842)
!2842 = !{!2843, !226, !226}
!2843 = !DIDerivedType(tag: DW_TAG_typedef, name: "difference_type", scope: !2844, file: !655, line: 225, baseType: !680)
!2844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iterator_traits<const char *>", scope: !31, file: !655, line: 221, size: 8, flags: DIFlagTypePassByValue, elements: !212, templateParams: !2845, identifier: "_ZTSSt15iterator_traitsIPKcE")
!2845 = !{!2846}
!2846 = !DITemplateTypeParameter(name: "_Iterator", type: !226)
!2847 = !{!2848}
!2848 = !DITemplateTypeParameter(name: "_InputIterator", type: !226)
!2849 = !DILocalVariable(name: "__first", arg: 1, scope: !2839, file: !2840, line: 138, type: !226)
!2850 = !DILocation(line: 138, column: 29, scope: !2839)
!2851 = !DILocalVariable(name: "__last", arg: 2, scope: !2839, file: !2840, line: 138, type: !226)
!2852 = !DILocation(line: 138, column: 53, scope: !2839)
!2853 = !DILocation(line: 141, column: 30, scope: !2839)
!2854 = !DILocation(line: 141, column: 39, scope: !2839)
!2855 = !DILocation(line: 142, column: 9, scope: !2839)
!2856 = !DILocation(line: 141, column: 14, scope: !2839)
!2857 = !DILocation(line: 141, column: 7, scope: !2839)
!2858 = distinct !DISubprogram(name: "__iterator_category<const char *>", linkageName: "_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_", scope: !31, file: !655, line: 238, type: !2859, scopeLine: 239, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, templateParams: !2870, retainedNodes: !212)
!2859 = !DISubroutineType(types: !2860)
!2860 = !{!2861, !2868}
!2861 = !DIDerivedType(tag: DW_TAG_typedef, name: "iterator_category", scope: !2844, file: !655, line: 223, baseType: !2862)
!2862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "random_access_iterator_tag", scope: !31, file: !655, line: 107, size: 8, flags: DIFlagTypePassByValue, elements: !2863, identifier: "_ZTSSt26random_access_iterator_tag")
!2863 = !{!2864}
!2864 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !2862, baseType: !2865, extraData: i32 0)
!2865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bidirectional_iterator_tag", scope: !31, file: !655, line: 103, size: 8, flags: DIFlagTypePassByValue, elements: !2866, identifier: "_ZTSSt26bidirectional_iterator_tag")
!2866 = !{!2867}
!2867 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !2865, baseType: !2745, extraData: i32 0)
!2868 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2869, size: 64)
!2869 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !226)
!2870 = !{!2871}
!2871 = !DITemplateTypeParameter(name: "_Iter", type: !226)
!2872 = !DILocalVariable(arg: 1, scope: !2858, file: !655, line: 238, type: !2868)
!2873 = !DILocation(line: 238, column: 37, scope: !2858)
!2874 = !DILocation(line: 239, column: 7, scope: !2858)
!2875 = distinct !DISubprogram(name: "__distance<const char *>", linkageName: "_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag", scope: !31, file: !2840, line: 98, type: !2876, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, templateParams: !2878, retainedNodes: !212)
!2876 = !DISubroutineType(types: !2877)
!2877 = !{!2843, !226, !226, !2862}
!2878 = !{!2879}
!2879 = !DITemplateTypeParameter(name: "_RandomAccessIterator", type: !226)
!2880 = !DILocalVariable(name: "__first", arg: 1, scope: !2875, file: !2840, line: 98, type: !226)
!2881 = !DILocation(line: 98, column: 38, scope: !2875)
!2882 = !DILocalVariable(name: "__last", arg: 2, scope: !2875, file: !2840, line: 98, type: !226)
!2883 = !DILocation(line: 98, column: 69, scope: !2875)
!2884 = !DILocalVariable(arg: 3, scope: !2875, file: !2840, line: 99, type: !2862)
!2885 = !DILocation(line: 99, column: 42, scope: !2875)
!2886 = !DILocation(line: 104, column: 14, scope: !2875)
!2887 = !DILocation(line: 104, column: 23, scope: !2875)
!2888 = !DILocation(line: 104, column: 21, scope: !2875)
!2889 = !DILocation(line: 104, column: 7, scope: !2875)
!2890 = distinct !DISubprogram(name: "length", linkageName: "_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc", scope: !2891, file: !2672, line: 168, type: !2909, scopeLine: 169, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !2908, retainedNodes: !212)
!2891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "char_traits<char>", scope: !94, file: !2672, line: 90, size: 8, flags: DIFlagTypePassByValue, elements: !2892, templateParams: !2722, identifier: "_ZTSN9__gnu_cxx11char_traitsIcEE")
!2892 = !{!2893, !2900, !2903, !2904, !2908, !2911, !2914, !2918, !2919, !2922, !2930, !2933, !2936, !2939}
!2893 = !DISubprogram(name: "assign", linkageName: "_ZN9__gnu_cxx11char_traitsIcE6assignERcRKc", scope: !2891, file: !2672, line: 102, type: !2894, scopeLine: 102, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2894 = !DISubroutineType(types: !2895)
!2895 = !{null, !2896, !2898}
!2896 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2897, size: 64)
!2897 = !DIDerivedType(tag: DW_TAG_typedef, name: "char_type", scope: !2891, file: !2672, line: 92, baseType: !228)
!2898 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2899, size: 64)
!2899 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2897)
!2900 = !DISubprogram(name: "eq", linkageName: "_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_", scope: !2891, file: !2672, line: 106, type: !2901, scopeLine: 106, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2901 = !DISubroutineType(types: !2902)
!2902 = !{!53, !2898, !2898}
!2903 = !DISubprogram(name: "lt", linkageName: "_ZN9__gnu_cxx11char_traitsIcE2ltERKcS3_", scope: !2891, file: !2672, line: 110, type: !2901, scopeLine: 110, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2904 = !DISubprogram(name: "compare", linkageName: "_ZN9__gnu_cxx11char_traitsIcE7compareEPKcS3_m", scope: !2891, file: !2672, line: 114, type: !2905, scopeLine: 114, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2905 = !DISubroutineType(types: !2906)
!2906 = !{!16, !2907, !2907, !210}
!2907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2899, size: 64)
!2908 = !DISubprogram(name: "length", linkageName: "_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc", scope: !2891, file: !2672, line: 117, type: !2909, scopeLine: 117, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2909 = !DISubroutineType(types: !2910)
!2910 = !{!210, !2907}
!2911 = !DISubprogram(name: "find", linkageName: "_ZN9__gnu_cxx11char_traitsIcE4findEPKcmRS2_", scope: !2891, file: !2672, line: 120, type: !2912, scopeLine: 120, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2912 = !DISubroutineType(types: !2913)
!2913 = !{!2907, !2907, !210, !2898}
!2914 = !DISubprogram(name: "move", linkageName: "_ZN9__gnu_cxx11char_traitsIcE4moveEPcPKcm", scope: !2891, file: !2672, line: 123, type: !2915, scopeLine: 123, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2915 = !DISubroutineType(types: !2916)
!2916 = !{!2917, !2917, !2907, !210}
!2917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2897, size: 64)
!2918 = !DISubprogram(name: "copy", linkageName: "_ZN9__gnu_cxx11char_traitsIcE4copyEPcPKcm", scope: !2891, file: !2672, line: 126, type: !2915, scopeLine: 126, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2919 = !DISubprogram(name: "assign", linkageName: "_ZN9__gnu_cxx11char_traitsIcE6assignEPcmc", scope: !2891, file: !2672, line: 129, type: !2920, scopeLine: 129, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2920 = !DISubroutineType(types: !2921)
!2921 = !{!2917, !2917, !210, !2897}
!2922 = !DISubprogram(name: "to_char_type", linkageName: "_ZN9__gnu_cxx11char_traitsIcE12to_char_typeERKm", scope: !2891, file: !2672, line: 132, type: !2923, scopeLine: 132, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2923 = !DISubroutineType(types: !2924)
!2924 = !{!2897, !2925}
!2925 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2926, size: 64)
!2926 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2927)
!2927 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_type", scope: !2891, file: !2672, line: 93, baseType: !2928)
!2928 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_type", scope: !2929, file: !2672, line: 67, baseType: !21)
!2929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Char_types<char>", scope: !94, file: !2672, line: 65, size: 8, flags: DIFlagTypePassByValue, elements: !212, templateParams: !2722, identifier: "_ZTSN9__gnu_cxx11_Char_typesIcEE")
!2930 = !DISubprogram(name: "to_int_type", linkageName: "_ZN9__gnu_cxx11char_traitsIcE11to_int_typeERKc", scope: !2891, file: !2672, line: 136, type: !2931, scopeLine: 136, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2931 = !DISubroutineType(types: !2932)
!2932 = !{!2927, !2898}
!2933 = !DISubprogram(name: "eq_int_type", linkageName: "_ZN9__gnu_cxx11char_traitsIcE11eq_int_typeERKmS3_", scope: !2891, file: !2672, line: 140, type: !2934, scopeLine: 140, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2934 = !DISubroutineType(types: !2935)
!2935 = !{!53, !2925, !2925}
!2936 = !DISubprogram(name: "eof", linkageName: "_ZN9__gnu_cxx11char_traitsIcE3eofEv", scope: !2891, file: !2672, line: 144, type: !2937, scopeLine: 144, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2937 = !DISubroutineType(types: !2938)
!2938 = !{!2927}
!2939 = !DISubprogram(name: "not_eof", linkageName: "_ZN9__gnu_cxx11char_traitsIcE7not_eofERKm", scope: !2891, file: !2672, line: 148, type: !2940, scopeLine: 148, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2940 = !DISubroutineType(types: !2941)
!2941 = !{!2927, !2925}
!2942 = !DILocalVariable(name: "__p", arg: 1, scope: !2890, file: !2672, line: 117, type: !2907)
!2943 = !DILocation(line: 117, column: 31, scope: !2890)
!2944 = !DILocalVariable(name: "__i", scope: !2890, file: !2672, line: 170, type: !210)
!2945 = !DILocation(line: 170, column: 19, scope: !2890)
!2946 = !DILocation(line: 171, column: 7, scope: !2890)
!2947 = !DILocation(line: 171, column: 18, scope: !2890)
!2948 = !DILocation(line: 171, column: 22, scope: !2890)
!2949 = !DILocation(line: 171, column: 28, scope: !2890)
!2950 = !DILocation(line: 171, column: 15, scope: !2890)
!2951 = !DILocation(line: 171, column: 14, scope: !2890)
!2952 = !DILocation(line: 172, column: 9, scope: !2890)
!2953 = distinct !{!2953, !2946, !2954}
!2954 = !DILocation(line: 172, column: 11, scope: !2890)
!2955 = !DILocation(line: 173, column: 14, scope: !2890)
!2956 = !DILocation(line: 173, column: 7, scope: !2890)
!2957 = distinct !DISubprogram(name: "eq", linkageName: "_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_", scope: !2891, file: !2672, line: 106, type: !2901, scopeLine: 107, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !2900, retainedNodes: !212)
!2958 = !DILocalVariable(name: "__c1", arg: 1, scope: !2957, file: !2672, line: 106, type: !2898)
!2959 = !DILocation(line: 106, column: 27, scope: !2957)
!2960 = !DILocalVariable(name: "__c2", arg: 2, scope: !2957, file: !2672, line: 106, type: !2898)
!2961 = !DILocation(line: 106, column: 50, scope: !2957)
!2962 = !DILocation(line: 107, column: 16, scope: !2957)
!2963 = !DILocation(line: 107, column: 24, scope: !2957)
!2964 = !DILocation(line: 107, column: 21, scope: !2957)
!2965 = !DILocation(line: 107, column: 9, scope: !2957)
!2966 = distinct !DISubprogram(name: "~Allocator", linkageName: "_ZN10tensorflow9AllocatorD2Ev", scope: !8, file: !9, line: 79, type: !23, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !22, retainedNodes: !212)
!2967 = !DILocalVariable(name: "this", arg: 1, scope: !2966, type: !7, flags: DIFlagArtificial | DIFlagObjectPointer)
!2968 = !DILocation(line: 0, scope: !2966)
!2969 = !DILocation(line: 79, column: 25, scope: !2966)
!2970 = distinct !DISubprogram(name: "~Allocator", linkageName: "_ZN10tensorflow9AllocatorD0Ev", scope: !8, file: !9, line: 79, type: !23, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !22, retainedNodes: !212)
!2971 = !DILocalVariable(name: "this", arg: 1, scope: !2970, type: !7, flags: DIFlagArtificial | DIFlagObjectPointer)
!2972 = !DILocation(line: 0, scope: !2970)
!2973 = !DILocation(line: 79, column: 24, scope: !2970)
!2974 = !DILocation(line: 79, column: 25, scope: !2970)
!2975 = distinct !DISubprogram(name: "Name", linkageName: "_ZN10tensorflow9Allocator4NameB5cxx11Ev", scope: !8, file: !9, line: 82, type: !27, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !26, retainedNodes: !212)
!2976 = !DILocalVariable(name: "this", arg: 1, scope: !2975, type: !7, flags: DIFlagArtificial | DIFlagObjectPointer)
!2977 = !DILocation(line: 0, scope: !2975)
!2978 = !DILocation(line: 82, column: 39, scope: !2975)
!2979 = !DILocation(line: 82, column: 32, scope: !2975)
!2980 = !DILocation(line: 82, column: 56, scope: !2975)
!2981 = distinct !DISubprogram(name: "deallocate_buffer", linkageName: "_ZN10tensorflow17deallocate_bufferEPvmS0_", scope: !4, file: !2180, line: 62, type: !2473, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, retainedNodes: !212)
!2982 = !DILocalVariable(name: "data", arg: 1, scope: !2981, file: !2180, line: 62, type: !38)
!2983 = !DILocation(line: 62, column: 30, scope: !2981)
!2984 = !DILocalVariable(name: "len", arg: 2, scope: !2981, file: !2180, line: 62, type: !19)
!2985 = !DILocation(line: 62, column: 43, scope: !2981)
!2986 = !DILocalVariable(name: "arg", arg: 3, scope: !2981, file: !2180, line: 62, type: !38)
!2987 = !DILocation(line: 62, column: 54, scope: !2981)
!2988 = !DILocalVariable(name: "allocator", scope: !2981, file: !2180, line: 63, type: !7)
!2989 = !DILocation(line: 63, column: 14, scope: !2981)
!2990 = !DILocation(line: 64, column: 7, scope: !2991)
!2991 = distinct !DILexicalBlock(scope: !2981, file: !2180, line: 64, column: 7)
!2992 = !DILocation(line: 64, column: 11, scope: !2991)
!2993 = !DILocation(line: 64, column: 7, scope: !2981)
!2994 = !DILocation(line: 65, column: 17, scope: !2995)
!2995 = distinct !DILexicalBlock(scope: !2991, file: !2180, line: 64, column: 23)
!2996 = !DILocation(line: 65, column: 15, scope: !2995)
!2997 = !DILocation(line: 66, column: 3, scope: !2995)
!2998 = !DILocation(line: 67, column: 46, scope: !2999)
!2999 = distinct !DILexicalBlock(scope: !2991, file: !2180, line: 66, column: 10)
!3000 = !DILocation(line: 67, column: 17, scope: !2999)
!3001 = !DILocation(line: 67, column: 15, scope: !2999)
!3002 = !DILocation(line: 74, column: 3, scope: !2981)
!3003 = !DILocation(line: 74, column: 28, scope: !2981)
!3004 = !DILocation(line: 74, column: 14, scope: !2981)
!3005 = !DILocation(line: 75, column: 1, scope: !2981)
!3006 = distinct !DISubprogram(name: "TF_AllocateTensor", scope: !2180, file: !2180, line: 97, type: !3007, scopeLine: 98, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, retainedNodes: !212)
!3007 = !DISubroutineType(types: !3008)
!3008 = !{!3009, !225, !3011, !16, !19}
!3009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3010, size: 64)
!3010 = !DIDerivedType(tag: DW_TAG_typedef, name: "TF_Tensor", file: !2405, line: 43, baseType: !2404)
!3011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3012, size: 64)
!3012 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !64)
!3013 = !DILocalVariable(name: "dtype", arg: 1, scope: !3006, file: !2180, line: 97, type: !225)
!3014 = !DILocation(line: 97, column: 42, scope: !3006)
!3015 = !DILocalVariable(name: "dims", arg: 2, scope: !3006, file: !2180, line: 97, type: !3011)
!3016 = !DILocation(line: 97, column: 64, scope: !3006)
!3017 = !DILocalVariable(name: "num_dims", arg: 3, scope: !3006, file: !2180, line: 98, type: !16)
!3018 = !DILocation(line: 98, column: 34, scope: !3006)
!3019 = !DILocalVariable(name: "len", arg: 4, scope: !3006, file: !2180, line: 98, type: !19)
!3020 = !DILocation(line: 98, column: 51, scope: !3006)
!3021 = !DILocalVariable(name: "data", scope: !3006, file: !2180, line: 99, type: !38)
!3022 = !DILocation(line: 99, column: 9, scope: !3006)
!3023 = !DILocation(line: 99, column: 65, scope: !3006)
!3024 = !DILocation(line: 100, column: 44, scope: !3006)
!3025 = !DILocation(line: 99, column: 16, scope: !3006)
!3026 = !DILocalVariable(name: "buf", scope: !3006, file: !2180, line: 101, type: !3027)
!3027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3028, size: 64)
!3028 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "TF_ManagedBuffer", file: !2405, line: 45, size: 448, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !3029, vtableHolder: !3061, identifier: "_ZTS16TF_ManagedBuffer")
!3029 = !{!3030, !3031, !3032, !3035, !3037, !3038, !3042, !3045, !3050, !3053, !3058}
!3030 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !3028, baseType: !1912, flags: DIFlagPublic, extraData: i32 0)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "len_", scope: !3028, file: !2405, line: 72, baseType: !18, size: 64, offset: 192)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "deallocator_", scope: !3028, file: !2405, line: 73, baseType: !3033, size: 64, offset: 256)
!3033 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3034)
!3034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2473, size: 64)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "deallocator_arg_", scope: !3028, file: !2405, line: 74, baseType: !3036, size: 64, offset: 320)
!3036 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "owns_memory_", scope: !3028, file: !2405, line: 75, baseType: !53, size: 8, offset: 384)
!3038 = !DISubprogram(name: "TF_ManagedBuffer", scope: !3028, file: !2405, line: 47, type: !3039, scopeLine: 47, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!3039 = !DISubroutineType(types: !3040)
!3040 = !{null, !3041, !38, !19, !3034, !38, !53}
!3041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3028, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3042 = !DISubprogram(name: "~TF_ManagedBuffer", scope: !3028, file: !2405, line: 56, type: !3043, scopeLine: 56, containingType: !3028, virtualIndex: 0, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!3043 = !DISubroutineType(types: !3044)
!3044 = !{null, !3041}
!3045 = !DISubprogram(name: "size", linkageName: "_ZNK16TF_ManagedBuffer4sizeEv", scope: !3028, file: !2405, line: 60, type: !3046, scopeLine: 60, containingType: !3028, virtualIndex: 2, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!3046 = !DISubroutineType(types: !3047)
!3047 = !{!19, !3048}
!3048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3049, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3049 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3028)
!3050 = !DISubprogram(name: "root_buffer", linkageName: "_ZN16TF_ManagedBuffer11root_bufferEv", scope: !3028, file: !2405, line: 61, type: !3051, scopeLine: 61, containingType: !3028, virtualIndex: 3, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!3051 = !DISubroutineType(types: !3052)
!3052 = !{!1911, !3041}
!3053 = !DISubprogram(name: "FillAllocationDescription", linkageName: "_ZNK16TF_ManagedBuffer25FillAllocationDescriptionEPN10tensorflow21AllocationDescriptionE", scope: !3028, file: !2405, line: 62, type: !3054, scopeLine: 62, containingType: !3028, virtualIndex: 4, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!3054 = !DISubroutineType(types: !3055)
!3055 = !{null, !3048, !3056}
!3056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3057, size: 64)
!3057 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "AllocationDescription", scope: !4, file: !1907, line: 48, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN10tensorflow21AllocationDescriptionE")
!3058 = !DISubprogram(name: "OwnsMemory", linkageName: "_ZNK16TF_ManagedBuffer10OwnsMemoryEv", scope: !3028, file: !2405, line: 69, type: !3059, scopeLine: 69, containingType: !3028, virtualIndex: 6, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!3059 = !DISubroutineType(types: !3060)
!3060 = !{!53, !3048}
!3061 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "RefCounted", scope: !3063, file: !3062, line: 11, size: 128, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !3064, vtableHolder: !3061, identifier: "_ZTSN10tensorflow4core10RefCountedE")
!3062 = !DIFile(filename: "tensorflow/core/framework/refcountstub.h", directory: "/home/mushfiqur/Desktop/Github/tensorflow")
!3063 = !DINamespace(name: "core", scope: !4)
!3064 = !{!3065, !3066, !3220, !3224, !3225, !3230, !3233}
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "_vptr$RefCounted", scope: !3062, file: !3062, baseType: !12, size: 64, flags: DIFlagArtificial)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count_", scope: !3061, file: !3062, line: 39, baseType: !3067, size: 64, offset: 64)
!3067 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "atomic<unsigned long>", scope: !31, file: !3068, line: 891, size: 64, flags: DIFlagTypePassByReference, elements: !3069, templateParams: !3218, identifier: "_ZTSSt6atomicImE")
!3068 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/atomic", directory: "")
!3069 = !{!3070, !3194, !3195, !3199, !3200, !3205, !3209, !3214}
!3070 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !3067, baseType: !3071, extraData: i32 0)
!3071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__atomic_base<unsigned long>", scope: !31, file: !214, line: 324, size: 64, flags: DIFlagTypePassByReference, elements: !3072, templateParams: !3192, identifier: "_ZTSSt13__atomic_baseImE")
!3072 = !{!3073, !3075, !3077, !3081, !3082, !3087, !3091, !3096, !3099, !3103, !3108, !3111, !3114, !3117, !3120, !3121, !3122, !3125, !3128, !3129, !3130, !3131, !3132, !3133, !3134, !3135, !3136, !3137, !3138, !3139, !3140, !3143, !3146, !3150, !3153, !3156, !3159, !3162, !3165, !3169, !3172, !3175, !3178, !3179, !3180, !3181, !3182, !3183, !3184, !3185, !3186, !3187, !3188, !3189, !3190, !3191}
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "_S_alignment", scope: !3071, file: !214, line: 332, baseType: !3074, flags: DIFlagPrivate | DIFlagStaticMember, extraData: i32 8)
!3074 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "_M_i", scope: !3071, file: !214, line: 335, baseType: !3076, size: 64, align: 64, flags: DIFlagPrivate)
!3076 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_type", scope: !3071, file: !214, line: 330, baseType: !21)
!3077 = !DISubprogram(name: "__atomic_base", scope: !3071, file: !214, line: 338, type: !3078, scopeLine: 338, flags: DIFlagPrototyped, spFlags: 0)
!3078 = !DISubroutineType(types: !3079)
!3079 = !{null, !3080}
!3080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3071, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3081 = !DISubprogram(name: "~__atomic_base", scope: !3071, file: !214, line: 339, type: !3078, scopeLine: 339, flags: DIFlagPrototyped, spFlags: 0)
!3082 = !DISubprogram(name: "__atomic_base", scope: !3071, file: !214, line: 340, type: !3083, scopeLine: 340, flags: DIFlagPrototyped, spFlags: DISPFlagDeleted)
!3083 = !DISubroutineType(types: !3084)
!3084 = !{null, !3080, !3085}
!3085 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3086, size: 64)
!3086 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3071)
!3087 = !DISubprogram(name: "operator=", linkageName: "_ZNSt13__atomic_baseImEaSERKS0_", scope: !3071, file: !214, line: 341, type: !3088, scopeLine: 341, flags: DIFlagPrototyped, spFlags: DISPFlagDeleted)
!3088 = !DISubroutineType(types: !3089)
!3089 = !{!3090, !3080, !3085}
!3090 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3071, size: 64)
!3091 = !DISubprogram(name: "operator=", linkageName: "_ZNVSt13__atomic_baseImEaSERKS0_", scope: !3071, file: !214, line: 342, type: !3092, scopeLine: 342, flags: DIFlagPrototyped, spFlags: DISPFlagDeleted)
!3092 = !DISubroutineType(types: !3093)
!3093 = !{!3090, !3094, !3085}
!3094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3095, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3095 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !3071)
!3096 = !DISubprogram(name: "__atomic_base", scope: !3071, file: !214, line: 345, type: !3097, scopeLine: 345, flags: DIFlagPrototyped, spFlags: 0)
!3097 = !DISubroutineType(types: !3098)
!3098 = !{null, !3080, !3076}
!3099 = !DISubprogram(name: "operator unsigned long", linkageName: "_ZNKSt13__atomic_baseImEcvmEv", scope: !3071, file: !214, line: 347, type: !3100, scopeLine: 347, flags: DIFlagPrototyped, spFlags: 0)
!3100 = !DISubroutineType(types: !3101)
!3101 = !{!3076, !3102}
!3102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3086, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3103 = !DISubprogram(name: "operator unsigned long", linkageName: "_ZNVKSt13__atomic_baseImEcvmEv", scope: !3071, file: !214, line: 350, type: !3104, scopeLine: 350, flags: DIFlagPrototyped, spFlags: 0)
!3104 = !DISubroutineType(types: !3105)
!3105 = !{!3076, !3106}
!3106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3107, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3107 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3095)
!3108 = !DISubprogram(name: "operator=", linkageName: "_ZNSt13__atomic_baseImEaSEm", scope: !3071, file: !214, line: 354, type: !3109, scopeLine: 354, flags: DIFlagPrototyped, spFlags: 0)
!3109 = !DISubroutineType(types: !3110)
!3110 = !{!3076, !3080, !3076}
!3111 = !DISubprogram(name: "operator=", linkageName: "_ZNVSt13__atomic_baseImEaSEm", scope: !3071, file: !214, line: 361, type: !3112, scopeLine: 361, flags: DIFlagPrototyped, spFlags: 0)
!3112 = !DISubroutineType(types: !3113)
!3113 = !{!3076, !3094, !3076}
!3114 = !DISubprogram(name: "operator++", linkageName: "_ZNSt13__atomic_baseImEppEi", scope: !3071, file: !214, line: 368, type: !3115, scopeLine: 368, flags: DIFlagPrototyped, spFlags: 0)
!3115 = !DISubroutineType(types: !3116)
!3116 = !{!3076, !3080, !16}
!3117 = !DISubprogram(name: "operator++", linkageName: "_ZNVSt13__atomic_baseImEppEi", scope: !3071, file: !214, line: 372, type: !3118, scopeLine: 372, flags: DIFlagPrototyped, spFlags: 0)
!3118 = !DISubroutineType(types: !3119)
!3119 = !{!3076, !3094, !16}
!3120 = !DISubprogram(name: "operator--", linkageName: "_ZNSt13__atomic_baseImEmmEi", scope: !3071, file: !214, line: 376, type: !3115, scopeLine: 376, flags: DIFlagPrototyped, spFlags: 0)
!3121 = !DISubprogram(name: "operator--", linkageName: "_ZNVSt13__atomic_baseImEmmEi", scope: !3071, file: !214, line: 380, type: !3118, scopeLine: 380, flags: DIFlagPrototyped, spFlags: 0)
!3122 = !DISubprogram(name: "operator++", linkageName: "_ZNSt13__atomic_baseImEppEv", scope: !3071, file: !214, line: 384, type: !3123, scopeLine: 384, flags: DIFlagPrototyped, spFlags: 0)
!3123 = !DISubroutineType(types: !3124)
!3124 = !{!3076, !3080}
!3125 = !DISubprogram(name: "operator++", linkageName: "_ZNVSt13__atomic_baseImEppEv", scope: !3071, file: !214, line: 388, type: !3126, scopeLine: 388, flags: DIFlagPrototyped, spFlags: 0)
!3126 = !DISubroutineType(types: !3127)
!3127 = !{!3076, !3094}
!3128 = !DISubprogram(name: "operator--", linkageName: "_ZNSt13__atomic_baseImEmmEv", scope: !3071, file: !214, line: 392, type: !3123, scopeLine: 392, flags: DIFlagPrototyped, spFlags: 0)
!3129 = !DISubprogram(name: "operator--", linkageName: "_ZNVSt13__atomic_baseImEmmEv", scope: !3071, file: !214, line: 396, type: !3126, scopeLine: 396, flags: DIFlagPrototyped, spFlags: 0)
!3130 = !DISubprogram(name: "operator+=", linkageName: "_ZNSt13__atomic_baseImEpLEm", scope: !3071, file: !214, line: 400, type: !3109, scopeLine: 400, flags: DIFlagPrototyped, spFlags: 0)
!3131 = !DISubprogram(name: "operator+=", linkageName: "_ZNVSt13__atomic_baseImEpLEm", scope: !3071, file: !214, line: 404, type: !3112, scopeLine: 404, flags: DIFlagPrototyped, spFlags: 0)
!3132 = !DISubprogram(name: "operator-=", linkageName: "_ZNSt13__atomic_baseImEmIEm", scope: !3071, file: !214, line: 408, type: !3109, scopeLine: 408, flags: DIFlagPrototyped, spFlags: 0)
!3133 = !DISubprogram(name: "operator-=", linkageName: "_ZNVSt13__atomic_baseImEmIEm", scope: !3071, file: !214, line: 412, type: !3112, scopeLine: 412, flags: DIFlagPrototyped, spFlags: 0)
!3134 = !DISubprogram(name: "operator&=", linkageName: "_ZNSt13__atomic_baseImEaNEm", scope: !3071, file: !214, line: 416, type: !3109, scopeLine: 416, flags: DIFlagPrototyped, spFlags: 0)
!3135 = !DISubprogram(name: "operator&=", linkageName: "_ZNVSt13__atomic_baseImEaNEm", scope: !3071, file: !214, line: 420, type: !3112, scopeLine: 420, flags: DIFlagPrototyped, spFlags: 0)
!3136 = !DISubprogram(name: "operator|=", linkageName: "_ZNSt13__atomic_baseImEoREm", scope: !3071, file: !214, line: 424, type: !3109, scopeLine: 424, flags: DIFlagPrototyped, spFlags: 0)
!3137 = !DISubprogram(name: "operator|=", linkageName: "_ZNVSt13__atomic_baseImEoREm", scope: !3071, file: !214, line: 428, type: !3112, scopeLine: 428, flags: DIFlagPrototyped, spFlags: 0)
!3138 = !DISubprogram(name: "operator^=", linkageName: "_ZNSt13__atomic_baseImEeOEm", scope: !3071, file: !214, line: 432, type: !3109, scopeLine: 432, flags: DIFlagPrototyped, spFlags: 0)
!3139 = !DISubprogram(name: "operator^=", linkageName: "_ZNVSt13__atomic_baseImEeOEm", scope: !3071, file: !214, line: 436, type: !3112, scopeLine: 436, flags: DIFlagPrototyped, spFlags: 0)
!3140 = !DISubprogram(name: "is_lock_free", linkageName: "_ZNKSt13__atomic_baseImE12is_lock_freeEv", scope: !3071, file: !214, line: 440, type: !3141, scopeLine: 440, flags: DIFlagPrototyped, spFlags: 0)
!3141 = !DISubroutineType(types: !3142)
!3142 = !{!53, !3102}
!3143 = !DISubprogram(name: "is_lock_free", linkageName: "_ZNVKSt13__atomic_baseImE12is_lock_freeEv", scope: !3071, file: !214, line: 448, type: !3144, scopeLine: 448, flags: DIFlagPrototyped, spFlags: 0)
!3144 = !DISubroutineType(types: !3145)
!3145 = !{!53, !3106}
!3146 = !DISubprogram(name: "store", linkageName: "_ZNSt13__atomic_baseImE5storeEmSt12memory_order", scope: !3071, file: !214, line: 456, type: !3147, scopeLine: 456, flags: DIFlagPrototyped, spFlags: 0)
!3147 = !DISubroutineType(types: !3148)
!3148 = !{null, !3080, !3076, !3149}
!3149 = !DIDerivedType(tag: DW_TAG_typedef, name: "memory_order", scope: !31, file: !214, line: 86, baseType: !213)
!3150 = !DISubprogram(name: "store", linkageName: "_ZNVSt13__atomic_baseImE5storeEmSt12memory_order", scope: !3071, file: !214, line: 468, type: !3151, scopeLine: 468, flags: DIFlagPrototyped, spFlags: 0)
!3151 = !DISubroutineType(types: !3152)
!3152 = !{null, !3094, !3076, !3149}
!3153 = !DISubprogram(name: "load", linkageName: "_ZNKSt13__atomic_baseImE4loadESt12memory_order", scope: !3071, file: !214, line: 481, type: !3154, scopeLine: 481, flags: DIFlagPrototyped, spFlags: 0)
!3154 = !DISubroutineType(types: !3155)
!3155 = !{!3076, !3102, !3149}
!3156 = !DISubprogram(name: "load", linkageName: "_ZNVKSt13__atomic_baseImE4loadESt12memory_order", scope: !3071, file: !214, line: 492, type: !3157, scopeLine: 492, flags: DIFlagPrototyped, spFlags: 0)
!3157 = !DISubroutineType(types: !3158)
!3158 = !{!3076, !3106, !3149}
!3159 = !DISubprogram(name: "exchange", linkageName: "_ZNSt13__atomic_baseImE8exchangeEmSt12memory_order", scope: !3071, file: !214, line: 503, type: !3160, scopeLine: 503, flags: DIFlagPrototyped, spFlags: 0)
!3160 = !DISubroutineType(types: !3161)
!3161 = !{!3076, !3080, !3076, !3149}
!3162 = !DISubprogram(name: "exchange", linkageName: "_ZNVSt13__atomic_baseImE8exchangeEmSt12memory_order", scope: !3071, file: !214, line: 511, type: !3163, scopeLine: 511, flags: DIFlagPrototyped, spFlags: 0)
!3163 = !DISubroutineType(types: !3164)
!3164 = !{!3076, !3094, !3076, !3149}
!3165 = !DISubprogram(name: "compare_exchange_weak", linkageName: "_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_", scope: !3071, file: !214, line: 518, type: !3166, scopeLine: 518, flags: DIFlagPrototyped, spFlags: 0)
!3166 = !DISubroutineType(types: !3167)
!3167 = !{!53, !3080, !3168, !3076, !3149, !3149}
!3168 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3076, size: 64)
!3169 = !DISubprogram(name: "compare_exchange_weak", linkageName: "_ZNVSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_", scope: !3071, file: !214, line: 528, type: !3170, scopeLine: 528, flags: DIFlagPrototyped, spFlags: 0)
!3170 = !DISubroutineType(types: !3171)
!3171 = !{!53, !3094, !3168, !3076, !3149, !3149}
!3172 = !DISubprogram(name: "compare_exchange_weak", linkageName: "_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_order", scope: !3071, file: !214, line: 539, type: !3173, scopeLine: 539, flags: DIFlagPrototyped, spFlags: 0)
!3173 = !DISubroutineType(types: !3174)
!3174 = !{!53, !3080, !3168, !3076, !3149}
!3175 = !DISubprogram(name: "compare_exchange_weak", linkageName: "_ZNVSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_order", scope: !3071, file: !214, line: 547, type: !3176, scopeLine: 547, flags: DIFlagPrototyped, spFlags: 0)
!3176 = !DISubroutineType(types: !3177)
!3177 = !{!53, !3094, !3168, !3076, !3149}
!3178 = !DISubprogram(name: "compare_exchange_strong", linkageName: "_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_", scope: !3071, file: !214, line: 555, type: !3166, scopeLine: 555, flags: DIFlagPrototyped, spFlags: 0)
!3179 = !DISubprogram(name: "compare_exchange_strong", linkageName: "_ZNVSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_", scope: !3071, file: !214, line: 565, type: !3170, scopeLine: 565, flags: DIFlagPrototyped, spFlags: 0)
!3180 = !DISubprogram(name: "compare_exchange_strong", linkageName: "_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_order", scope: !3071, file: !214, line: 576, type: !3173, scopeLine: 576, flags: DIFlagPrototyped, spFlags: 0)
!3181 = !DISubprogram(name: "compare_exchange_strong", linkageName: "_ZNVSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_order", scope: !3071, file: !214, line: 584, type: !3176, scopeLine: 584, flags: DIFlagPrototyped, spFlags: 0)
!3182 = !DISubprogram(name: "fetch_add", linkageName: "_ZNSt13__atomic_baseImE9fetch_addEmSt12memory_order", scope: !3071, file: !214, line: 616, type: !3160, scopeLine: 616, flags: DIFlagPrototyped, spFlags: 0)
!3183 = !DISubprogram(name: "fetch_add", linkageName: "_ZNVSt13__atomic_baseImE9fetch_addEmSt12memory_order", scope: !3071, file: !214, line: 621, type: !3163, scopeLine: 621, flags: DIFlagPrototyped, spFlags: 0)
!3184 = !DISubprogram(name: "fetch_sub", linkageName: "_ZNSt13__atomic_baseImE9fetch_subEmSt12memory_order", scope: !3071, file: !214, line: 626, type: !3160, scopeLine: 626, flags: DIFlagPrototyped, spFlags: 0)
!3185 = !DISubprogram(name: "fetch_sub", linkageName: "_ZNVSt13__atomic_baseImE9fetch_subEmSt12memory_order", scope: !3071, file: !214, line: 631, type: !3163, scopeLine: 631, flags: DIFlagPrototyped, spFlags: 0)
!3186 = !DISubprogram(name: "fetch_and", linkageName: "_ZNSt13__atomic_baseImE9fetch_andEmSt12memory_order", scope: !3071, file: !214, line: 636, type: !3160, scopeLine: 636, flags: DIFlagPrototyped, spFlags: 0)
!3187 = !DISubprogram(name: "fetch_and", linkageName: "_ZNVSt13__atomic_baseImE9fetch_andEmSt12memory_order", scope: !3071, file: !214, line: 641, type: !3163, scopeLine: 641, flags: DIFlagPrototyped, spFlags: 0)
!3188 = !DISubprogram(name: "fetch_or", linkageName: "_ZNSt13__atomic_baseImE8fetch_orEmSt12memory_order", scope: !3071, file: !214, line: 646, type: !3160, scopeLine: 646, flags: DIFlagPrototyped, spFlags: 0)
!3189 = !DISubprogram(name: "fetch_or", linkageName: "_ZNVSt13__atomic_baseImE8fetch_orEmSt12memory_order", scope: !3071, file: !214, line: 651, type: !3163, scopeLine: 651, flags: DIFlagPrototyped, spFlags: 0)
!3190 = !DISubprogram(name: "fetch_xor", linkageName: "_ZNSt13__atomic_baseImE9fetch_xorEmSt12memory_order", scope: !3071, file: !214, line: 656, type: !3160, scopeLine: 656, flags: DIFlagPrototyped, spFlags: 0)
!3191 = !DISubprogram(name: "fetch_xor", linkageName: "_ZNVSt13__atomic_baseImE9fetch_xorEmSt12memory_order", scope: !3071, file: !214, line: 661, type: !3163, scopeLine: 661, flags: DIFlagPrototyped, spFlags: 0)
!3192 = !{!3193}
!3193 = !DITemplateTypeParameter(name: "_ITp", type: !21)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "is_always_lock_free", scope: !3067, file: !3068, line: 908, baseType: !506, flags: DIFlagStaticMember, extraData: i1 true)
!3195 = !DISubprogram(name: "atomic", scope: !3067, file: !3068, line: 896, type: !3196, scopeLine: 896, flags: DIFlagPrototyped, spFlags: 0)
!3196 = !DISubroutineType(types: !3197)
!3197 = !{null, !3198}
!3198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3067, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3199 = !DISubprogram(name: "~atomic", scope: !3067, file: !3068, line: 897, type: !3196, scopeLine: 897, flags: DIFlagPrototyped, spFlags: 0)
!3200 = !DISubprogram(name: "atomic", scope: !3067, file: !3068, line: 898, type: !3201, scopeLine: 898, flags: DIFlagPrototyped, spFlags: DISPFlagDeleted)
!3201 = !DISubroutineType(types: !3202)
!3202 = !{null, !3198, !3203}
!3203 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3204, size: 64)
!3204 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3067)
!3205 = !DISubprogram(name: "operator=", linkageName: "_ZNSt6atomicImEaSERKS0_", scope: !3067, file: !3068, line: 899, type: !3206, scopeLine: 899, flags: DIFlagPrototyped, spFlags: DISPFlagDeleted)
!3206 = !DISubroutineType(types: !3207)
!3207 = !{!3208, !3198, !3203}
!3208 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3067, size: 64)
!3209 = !DISubprogram(name: "operator=", linkageName: "_ZNVSt6atomicImEaSERKS0_", scope: !3067, file: !3068, line: 900, type: !3210, scopeLine: 900, flags: DIFlagPrototyped, spFlags: DISPFlagDeleted)
!3210 = !DISubroutineType(types: !3211)
!3211 = !{!3208, !3212, !3203}
!3212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3213, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3213 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !3067)
!3214 = !DISubprogram(name: "atomic", scope: !3067, file: !3068, line: 902, type: !3215, scopeLine: 902, flags: DIFlagPrototyped, spFlags: 0)
!3215 = !DISubroutineType(types: !3216)
!3216 = !{null, !3198, !3217}
!3217 = !DIDerivedType(tag: DW_TAG_typedef, name: "__integral_type", scope: !3067, file: !3068, line: 893, baseType: !21)
!3218 = !{!3219}
!3219 = !DITemplateTypeParameter(name: "_Tp", type: !21)
!3220 = !DISubprogram(name: "RefCounted", scope: !3061, file: !3062, line: 13, type: !3221, scopeLine: 13, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!3221 = !DISubroutineType(types: !3222)
!3222 = !{null, !3223}
!3223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3061, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3224 = !DISubprogram(name: "~RefCounted", scope: !3061, file: !3062, line: 14, type: !3221, scopeLine: 14, containingType: !3061, virtualIndex: 0, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!3225 = !DISubprogram(name: "Ref", linkageName: "_ZNK10tensorflow4core10RefCounted3RefEv", scope: !3061, file: !3062, line: 17, type: !3226, scopeLine: 17, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!3226 = !DISubroutineType(types: !3227)
!3227 = !{null, !3228}
!3228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3229, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3229 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3061)
!3230 = !DISubprogram(name: "Unref", linkageName: "_ZNK10tensorflow4core10RefCounted5UnrefEv", scope: !3061, file: !3062, line: 23, type: !3231, scopeLine: 23, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!3231 = !DISubroutineType(types: !3232)
!3232 = !{!53, !3228}
!3233 = !DISubprogram(name: "RefCount", linkageName: "_ZNK10tensorflow4core10RefCounted8RefCountEv", scope: !3061, file: !3062, line: 33, type: !3234, scopeLine: 33, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!3234 = !DISubroutineType(types: !3235)
!3235 = !{!16, !3228}
!3236 = !DILocation(line: 101, column: 21, scope: !3006)
!3237 = !DILocation(line: 102, column: 7, scope: !3006)
!3238 = !DILocation(line: 102, column: 28, scope: !3006)
!3239 = !DILocation(line: 102, column: 34, scope: !3006)
!3240 = !DILocation(line: 103, column: 28, scope: !3006)
!3241 = !DILocation(line: 102, column: 11, scope: !3006)
!3242 = !DILocation(line: 104, column: 23, scope: !3006)
!3243 = !DILocation(line: 104, column: 28, scope: !3006)
!3244 = !DILocation(line: 104, column: 35, scope: !3006)
!3245 = !DILocation(line: 104, column: 41, scope: !3006)
!3246 = !DILocation(line: 104, column: 51, scope: !3006)
!3247 = !DILocation(line: 104, column: 10, scope: !3006)
!3248 = !DILocation(line: 104, column: 3, scope: !3006)
!3249 = !DILocation(line: 105, column: 1, scope: !3006)
!3250 = distinct !DISubprogram(name: "TF_ManagedBuffer", linkageName: "_ZN16TF_ManagedBufferC2EPvmPFvS0_mS0_ES0_b", scope: !3028, file: !2405, line: 47, type: !3039, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !3038, retainedNodes: !212)
!3251 = !DILocalVariable(name: "this", arg: 1, scope: !3250, type: !3027, flags: DIFlagArtificial | DIFlagObjectPointer)
!3252 = !DILocation(line: 0, scope: !3250)
!3253 = !DILocalVariable(name: "data", arg: 2, scope: !3250, file: !2405, line: 47, type: !38)
!3254 = !DILocation(line: 47, column: 26, scope: !3250)
!3255 = !DILocalVariable(name: "len", arg: 3, scope: !3250, file: !2405, line: 47, type: !19)
!3256 = !DILocation(line: 47, column: 39, scope: !3250)
!3257 = !DILocalVariable(name: "deallocator", arg: 4, scope: !3250, file: !2405, line: 48, type: !3034)
!3258 = !DILocation(line: 48, column: 27, scope: !3250)
!3259 = !DILocalVariable(name: "deallocator_arg", arg: 5, scope: !3250, file: !2405, line: 49, type: !38)
!3260 = !DILocation(line: 49, column: 26, scope: !3250)
!3261 = !DILocalVariable(name: "owns_memory", arg: 6, scope: !3250, file: !2405, line: 49, type: !53)
!3262 = !DILocation(line: 49, column: 48, scope: !3250)
!3263 = !DILocation(line: 54, column: 35, scope: !3250)
!3264 = !DILocation(line: 50, column: 22, scope: !3250)
!3265 = !DILocation(line: 50, column: 9, scope: !3250)
!3266 = !DILocation(line: 51, column: 9, scope: !3250)
!3267 = !DILocation(line: 51, column: 14, scope: !3250)
!3268 = !DILocation(line: 52, column: 9, scope: !3250)
!3269 = !DILocation(line: 52, column: 22, scope: !3250)
!3270 = !DILocation(line: 53, column: 9, scope: !3250)
!3271 = !DILocation(line: 53, column: 26, scope: !3250)
!3272 = !DILocation(line: 54, column: 9, scope: !3250)
!3273 = !DILocation(line: 54, column: 22, scope: !3250)
!3274 = !DILocation(line: 54, column: 36, scope: !3250)
!3275 = distinct !DISubprogram(name: "CreateTensor", linkageName: "_ZN12_GLOBAL__N_112CreateTensorEP16TF_ManagedBuffer11TF_DataTypePKlim", scope: !3276, file: !2180, line: 79, type: !3277, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !89, retainedNodes: !212)
!3276 = !DINamespace(scope: null)
!3277 = !DISubroutineType(types: !3278)
!3278 = !{!3009, !3027, !225, !3011, !16, !19}
!3279 = !DILocalVariable(name: "buf", arg: 1, scope: !3275, file: !2180, line: 79, type: !3027)
!3280 = !DILocation(line: 79, column: 43, scope: !3275)
!3281 = !DILocalVariable(name: "dtype", arg: 2, scope: !3275, file: !2180, line: 79, type: !225)
!3282 = !DILocation(line: 79, column: 60, scope: !3275)
!3283 = !DILocalVariable(name: "dims", arg: 3, scope: !3275, file: !2180, line: 80, type: !3011)
!3284 = !DILocation(line: 80, column: 40, scope: !3275)
!3285 = !DILocalVariable(name: "num_dims", arg: 4, scope: !3275, file: !2180, line: 80, type: !16)
!3286 = !DILocation(line: 80, column: 50, scope: !3275)
!3287 = !DILocalVariable(name: "len", arg: 5, scope: !3275, file: !2180, line: 80, type: !19)
!3288 = !DILocation(line: 80, column: 67, scope: !3275)
!3289 = !DILocalVariable(name: "dimvec", scope: !3275, file: !2180, line: 81, type: !287)
!3290 = !DILocation(line: 81, column: 24, scope: !3275)
!3291 = !DILocation(line: 81, column: 31, scope: !3275)
!3292 = !DILocalVariable(name: "i", scope: !3293, file: !2180, line: 82, type: !16)
!3293 = distinct !DILexicalBlock(scope: !3275, file: !2180, line: 82, column: 3)
!3294 = !DILocation(line: 82, column: 12, scope: !3293)
!3295 = !DILocation(line: 82, column: 8, scope: !3293)
!3296 = !DILocation(line: 82, column: 19, scope: !3297)
!3297 = distinct !DILexicalBlock(scope: !3293, file: !2180, line: 82, column: 3)
!3298 = !DILocation(line: 82, column: 23, scope: !3297)
!3299 = !DILocation(line: 82, column: 21, scope: !3297)
!3300 = !DILocation(line: 82, column: 3, scope: !3293)
!3301 = !DILocation(line: 83, column: 38, scope: !3302)
!3302 = distinct !DILexicalBlock(scope: !3297, file: !2180, line: 82, column: 38)
!3303 = !DILocation(line: 83, column: 43, scope: !3302)
!3304 = !DILocation(line: 83, column: 12, scope: !3302)
!3305 = !DILocation(line: 83, column: 5, scope: !3302)
!3306 = !DILocation(line: 83, column: 15, scope: !3302)
!3307 = !DILocation(line: 84, column: 3, scope: !3302)
!3308 = !DILocation(line: 82, column: 33, scope: !3297)
!3309 = !DILocation(line: 82, column: 3, scope: !3297)
!3310 = distinct !{!3310, !3300, !3311}
!3311 = !DILocation(line: 84, column: 3, scope: !3293)
!3312 = !DILocation(line: 94, column: 1, scope: !3275)
!3313 = !DILocalVariable(name: "ret", scope: !3275, file: !2180, line: 86, type: !1906)
!3314 = !DILocation(line: 86, column: 10, scope: !3275)
!3315 = !DILocation(line: 86, column: 48, scope: !3275)
!3316 = !DILocation(line: 87, column: 14, scope: !3275)
!3317 = !DILocation(line: 87, column: 47, scope: !3275)
!3318 = !DILocation(line: 88, column: 3, scope: !3275)
!3319 = !DILocation(line: 88, column: 8, scope: !3275)
!3320 = !DILocalVariable(name: "elem_size", scope: !3275, file: !2180, line: 89, type: !19)
!3321 = !DILocation(line: 89, column: 10, scope: !3275)
!3322 = !DILocation(line: 89, column: 38, scope: !3275)
!3323 = !DILocation(line: 89, column: 22, scope: !3275)
!3324 = !DILocation(line: 90, column: 7, scope: !3325)
!3325 = distinct !DILexicalBlock(scope: !3275, file: !2180, line: 90, column: 7)
!3326 = !DILocation(line: 90, column: 17, scope: !3325)
!3327 = !DILocation(line: 90, column: 21, scope: !3325)
!3328 = !DILocation(line: 90, column: 24, scope: !3325)
!3329 = !DILocation(line: 90, column: 31, scope: !3325)
!3330 = !DILocation(line: 90, column: 47, scope: !3325)
!3331 = !DILocation(line: 90, column: 41, scope: !3325)
!3332 = !DILocation(line: 90, column: 28, scope: !3325)
!3333 = !DILocation(line: 90, column: 7, scope: !3275)
!3334 = !DILocation(line: 91, column: 5, scope: !3335)
!3335 = distinct !DILexicalBlock(scope: !3325, file: !2180, line: 90, column: 63)
!3336 = !DILocation(line: 93, column: 10, scope: !3275)
!3337 = !DILocation(line: 93, column: 23, scope: !3275)
!3338 = !DILocation(line: 93, column: 24, scope: !3275)
!3339 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "TensorInterface", scope: !4, file: !2405, line: 98, size: 384, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !3340, vtableHolder: !2409, identifier: "_ZTSN10tensorflow15TensorInterfaceE")
!3340 = !{!3341, !3342, !3343, !3347, !3350, !3351, !3352, !3357, !3360, !3363, !3366, !3369, !3372, !3375, !3376, !3379, !3382, !3385, !3389, !3394}
!3341 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !3339, baseType: !2409, flags: DIFlagPublic, extraData: i32 0)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "tensor_", scope: !3339, file: !2405, line: 125, baseType: !1906, size: 320, offset: 64)
!3343 = !DISubprogram(name: "TensorInterface", scope: !3339, file: !2405, line: 100, type: !3344, scopeLine: 100, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!3344 = !DISubroutineType(types: !3345)
!3345 = !{null, !3346}
!3346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3339, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3347 = !DISubprogram(name: "TensorInterface", scope: !3339, file: !2405, line: 101, type: !3348, scopeLine: 101, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!3348 = !DISubroutineType(types: !3349)
!3349 = !{null, !3346, !1906}
!3350 = !DISubprogram(name: "~TensorInterface", scope: !3339, file: !2405, line: 102, type: !3344, scopeLine: 102, containingType: !3339, virtualIndex: 0, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!3351 = !DISubprogram(name: "Release", linkageName: "_ZN10tensorflow15TensorInterface7ReleaseEv", scope: !3339, file: !2405, line: 104, type: !3344, scopeLine: 104, containingType: !3339, virtualIndex: 0, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!3352 = !DISubprogram(name: "Type", linkageName: "_ZNK10tensorflow15TensorInterface4TypeEv", scope: !3339, file: !2405, line: 106, type: !3353, scopeLine: 106, containingType: !3339, virtualIndex: 1, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!3353 = !DISubroutineType(types: !3354)
!3354 = !{!100, !3355}
!3355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3356, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3356 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3339)
!3357 = !DISubprogram(name: "NumDims", linkageName: "_ZNK10tensorflow15TensorInterface7NumDimsEv", scope: !3339, file: !2405, line: 107, type: !3358, scopeLine: 107, containingType: !3339, virtualIndex: 2, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!3358 = !DISubroutineType(types: !3359)
!3359 = !{!16, !3355}
!3360 = !DISubprogram(name: "Dim", linkageName: "_ZNK10tensorflow15TensorInterface3DimEi", scope: !3339, file: !2405, line: 108, type: !3361, scopeLine: 108, containingType: !3339, virtualIndex: 3, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!3361 = !DISubroutineType(types: !3362)
!3362 = !{!64, !3355, !16}
!3363 = !DISubprogram(name: "NumElements", linkageName: "_ZNK10tensorflow15TensorInterface11NumElementsEv", scope: !3339, file: !2405, line: 109, type: !3364, scopeLine: 109, containingType: !3339, virtualIndex: 4, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!3364 = !DISubroutineType(types: !3365)
!3365 = !{!64, !3355}
!3366 = !DISubprogram(name: "ByteSize", linkageName: "_ZNK10tensorflow15TensorInterface8ByteSizeEv", scope: !3339, file: !2405, line: 110, type: !3367, scopeLine: 110, containingType: !3339, virtualIndex: 5, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!3367 = !DISubroutineType(types: !3368)
!3368 = !{!19, !3355}
!3369 = !DISubprogram(name: "Data", linkageName: "_ZNK10tensorflow15TensorInterface4DataEv", scope: !3339, file: !2405, line: 111, type: !3370, scopeLine: 111, containingType: !3339, virtualIndex: 6, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!3370 = !DISubroutineType(types: !3371)
!3371 = !{!38, !3355}
!3372 = !DISubprogram(name: "IsAligned", linkageName: "_ZNK10tensorflow15TensorInterface9IsAlignedEv", scope: !3339, file: !2405, line: 112, type: !3373, scopeLine: 112, containingType: !3339, virtualIndex: 7, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!3373 = !DISubroutineType(types: !3374)
!3374 = !{!53, !3355}
!3375 = !DISubprogram(name: "CanMove", linkageName: "_ZNK10tensorflow15TensorInterface7CanMoveEv", scope: !3339, file: !2405, line: 113, type: !3373, scopeLine: 113, containingType: !3339, virtualIndex: 8, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!3376 = !DISubprogram(name: "SummarizeValue", linkageName: "_ZNK10tensorflow15TensorInterface14SummarizeValueB5cxx11Ev", scope: !3339, file: !2405, line: 114, type: !3377, scopeLine: 114, containingType: !3339, virtualIndex: 9, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!3377 = !DISubroutineType(types: !3378)
!3378 = !{!29, !3355}
!3379 = !DISubprogram(name: "SetShape", linkageName: "_ZN10tensorflow15TensorInterface8SetShapeEPKli", scope: !3339, file: !2405, line: 116, type: !3380, scopeLine: 116, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!3380 = !DISubroutineType(types: !3381)
!3381 = !{null, !3346, !3011, !16}
!3382 = !DISubprogram(name: "ToTensor", linkageName: "_ZNK10tensorflow15TensorInterface8ToTensorEPNS_6TensorE", scope: !3339, file: !2405, line: 117, type: !3383, scopeLine: 117, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!3383 = !DISubroutineType(types: !3384)
!3384 = !{!919, !3355, !1938}
!3385 = !DISubprogram(name: "BitcastFrom", linkageName: "_ZN10tensorflow15TensorInterface11BitcastFromERKS0_8DataTypePKli", scope: !3339, file: !2405, line: 118, type: !3386, scopeLine: 118, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!3386 = !DISubroutineType(types: !3387)
!3387 = !{!919, !3346, !3388, !100, !3011, !16}
!3388 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3356, size: 64)
!3389 = !DISubprogram(name: "FromProto", linkageName: "_ZN10tensorflow15TensorInterface9FromProtoERKNS_11TensorProtoE", scope: !3339, file: !2405, line: 120, type: !3390, scopeLine: 120, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!3390 = !DISubroutineType(types: !3391)
!3391 = !{!919, !3346, !3392}
!3392 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3393, size: 64)
!3393 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2134)
!3394 = !DISubprogram(name: "Tensor", linkageName: "_ZN10tensorflow15TensorInterface6TensorEv", scope: !3339, file: !2405, line: 122, type: !3395, scopeLine: 122, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!3395 = !DISubroutineType(types: !3396)
!3396 = !{!2120, !3346}
!3397 = !DILocation(line: 93, column: 56, scope: !3275)
!3398 = !DILocation(line: 93, column: 28, scope: !3275)
!3399 = !DILocation(line: 93, column: 3, scope: !3275)
!3400 = distinct !DISubprogram(name: "allocator", linkageName: "_ZNSaIlEC2Ev", scope: !312, file: !246, line: 156, type: !359, scopeLine: 156, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !358, retainedNodes: !212)
!3401 = !DILocalVariable(name: "this", arg: 1, scope: !3400, type: !3402, flags: DIFlagArtificial | DIFlagObjectPointer)
!3402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!3403 = !DILocation(line: 0, scope: !3400)
!3404 = !DILocation(line: 156, column: 36, scope: !3400)
!3405 = !DILocation(line: 156, column: 7, scope: !3400)
!3406 = !DILocation(line: 156, column: 38, scope: !3400)
!3407 = distinct !DISubprogram(name: "vector", linkageName: "_ZNSt6vectorIlSaIlEEC2EmRKS0_", scope: !287, file: !288, line: 510, type: !557, scopeLine: 512, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !556, retainedNodes: !212)
!3408 = !DILocalVariable(name: "this", arg: 1, scope: !3407, type: !3409, flags: DIFlagArtificial | DIFlagObjectPointer)
!3409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!3410 = !DILocation(line: 0, scope: !3407)
!3411 = !DILocalVariable(name: "__n", arg: 2, scope: !3407, file: !288, line: 510, type: !559)
!3412 = !DILocation(line: 510, column: 24, scope: !3407)
!3413 = !DILocalVariable(name: "__a", arg: 3, scope: !3407, file: !288, line: 510, type: !553)
!3414 = !DILocation(line: 510, column: 51, scope: !3407)
!3415 = !DILocation(line: 512, column: 7, scope: !3407)
!3416 = !DILocation(line: 511, column: 33, scope: !3407)
!3417 = !DILocation(line: 511, column: 38, scope: !3407)
!3418 = !DILocation(line: 511, column: 15, scope: !3407)
!3419 = !DILocation(line: 511, column: 44, scope: !3407)
!3420 = !DILocation(line: 511, column: 9, scope: !3407)
!3421 = !DILocation(line: 512, column: 31, scope: !3422)
!3422 = distinct !DILexicalBlock(scope: !3407, file: !288, line: 512, column: 7)
!3423 = !DILocation(line: 512, column: 9, scope: !3422)
!3424 = !DILocation(line: 512, column: 37, scope: !3407)
!3425 = !DILocation(line: 512, column: 37, scope: !3422)
!3426 = distinct !DISubprogram(name: "~allocator", linkageName: "_ZNSaIlED2Ev", scope: !312, file: !246, line: 174, type: !359, scopeLine: 174, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !371, retainedNodes: !212)
!3427 = !DILocalVariable(name: "this", arg: 1, scope: !3426, type: !3402, flags: DIFlagArtificial | DIFlagObjectPointer)
!3428 = !DILocation(line: 0, scope: !3426)
!3429 = !DILocation(line: 174, column: 39, scope: !3430)
!3430 = distinct !DILexicalBlock(scope: !3426, file: !246, line: 174, column: 37)
!3431 = !DILocation(line: 174, column: 39, scope: !3426)
!3432 = distinct !DISubprogram(name: "operator[]", linkageName: "_ZNSt6vectorIlSaIlEEixEm", scope: !287, file: !288, line: 1043, type: !785, scopeLine: 1044, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !784, retainedNodes: !212)
!3433 = !DILocalVariable(name: "this", arg: 1, scope: !3432, type: !3409, flags: DIFlagArtificial | DIFlagObjectPointer)
!3434 = !DILocation(line: 0, scope: !3432)
!3435 = !DILocalVariable(name: "__n", arg: 2, scope: !3432, file: !288, line: 1043, type: !559)
!3436 = !DILocation(line: 1043, column: 28, scope: !3432)
!3437 = !DILocation(line: 1046, column: 17, scope: !3432)
!3438 = !DILocation(line: 1046, column: 11, scope: !3432)
!3439 = !DILocation(line: 1046, column: 25, scope: !3432)
!3440 = !DILocation(line: 1046, column: 36, scope: !3432)
!3441 = !DILocation(line: 1046, column: 34, scope: !3432)
!3442 = !DILocation(line: 1046, column: 2, scope: !3432)
!3443 = distinct !DISubprogram(name: "TensorShape", linkageName: "_ZN10tensorflow11TensorShapeC2ERKSt6vectorIlSaIlEE", scope: !284, file: !101, line: 151, type: !903, scopeLine: 151, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !902, retainedNodes: !212)
!3444 = !DILocalVariable(name: "this", arg: 1, scope: !3443, type: !962, flags: DIFlagArtificial | DIFlagObjectPointer)
!3445 = !DILocation(line: 0, scope: !3443)
!3446 = !DILocalVariable(name: "dims", arg: 2, scope: !3443, file: !101, line: 151, type: !569)
!3447 = !DILocation(line: 151, column: 52, scope: !3443)
!3448 = !DILocation(line: 151, column: 60, scope: !3443)
!3449 = !DILocation(line: 151, column: 66, scope: !3443)
!3450 = !DILocation(line: 254, column: 12, scope: !3443)
!3451 = !DILocation(line: 151, column: 12, scope: !3443)
!3452 = !DILocation(line: 151, column: 73, scope: !3443)
!3453 = distinct !DISubprogram(name: "~TensorShape", linkageName: "_ZN10tensorflow11TensorShapeD2Ev", scope: !284, file: !101, line: 147, type: !896, scopeLine: 147, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !3454, retainedNodes: !212)
!3454 = !DISubprogram(name: "~TensorShape", scope: !284, type: !896, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!3455 = !DILocalVariable(name: "this", arg: 1, scope: !3453, type: !962, flags: DIFlagArtificial | DIFlagObjectPointer)
!3456 = !DILocation(line: 0, scope: !3453)
!3457 = !DILocation(line: 147, column: 7, scope: !3458)
!3458 = distinct !DILexicalBlock(scope: !3453, file: !101, line: 147, column: 7)
!3459 = !DILocation(line: 147, column: 7, scope: !3453)
!3460 = distinct !DISubprogram(name: "Unref", linkageName: "_ZNK10tensorflow4core10RefCounted5UnrefEv", scope: !3061, file: !3062, line: 23, type: !3231, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !3230, retainedNodes: !212)
!3461 = !DILocalVariable(name: "this", arg: 1, scope: !3460, type: !3462, flags: DIFlagArtificial | DIFlagObjectPointer)
!3462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3229, size: 64)
!3463 = !DILocation(line: 0, scope: !3460)
!3464 = !DILocation(line: 25, column: 9, scope: !3465)
!3465 = distinct !DILexicalBlock(scope: !3460, file: !3062, line: 25, column: 9)
!3466 = !DILocalVariable(name: "this", arg: 1, scope: !3467, type: !3468, flags: DIFlagArtificial | DIFlagObjectPointer)
!3467 = distinct !DISubprogram(name: "fetch_sub", linkageName: "_ZNSt13__atomic_baseImE9fetch_subEmSt12memory_order", scope: !3071, file: !214, line: 626, type: !3160, scopeLine: 628, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !3184, retainedNodes: !212)
!3468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3071, size: 64)
!3469 = !DILocation(line: 0, scope: !3467, inlinedAt: !3470)
!3470 = distinct !DILocation(line: 25, column: 20, scope: !3465)
!3471 = !DILocalVariable(name: "__i", arg: 2, scope: !3467, file: !214, line: 626, type: !3076)
!3472 = !DILocation(line: 626, column: 28, scope: !3467, inlinedAt: !3470)
!3473 = !DILocalVariable(name: "__m", arg: 3, scope: !3467, file: !214, line: 627, type: !3149)
!3474 = !DILocation(line: 627, column: 16, scope: !3467, inlinedAt: !3470)
!3475 = !DILocation(line: 628, column: 36, scope: !3467, inlinedAt: !3470)
!3476 = !DILocation(line: 628, column: 51, scope: !3467, inlinedAt: !3470)
!3477 = !DILocation(line: 628, column: 42, scope: !3467, inlinedAt: !3470)
!3478 = !DILocation(line: 628, column: 16, scope: !3467, inlinedAt: !3470)
!3479 = !DILocation(line: 25, column: 60, scope: !3465)
!3480 = !DILocation(line: 25, column: 9, scope: !3460)
!3481 = !DILocation(line: 26, column: 7, scope: !3482)
!3482 = distinct !DILexicalBlock(scope: !3465, file: !3062, line: 25, column: 66)
!3483 = !DILocation(line: 27, column: 7, scope: !3482)
!3484 = !DILocation(line: 29, column: 5, scope: !3460)
!3485 = !DILocation(line: 30, column: 3, scope: !3460)
!3486 = distinct !DISubprogram(name: "TF_DataTypeSize", linkageName: "_ZL15TF_DataTypeSize11TF_DataType", scope: !169, file: !169, line: 79, type: !3487, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !89, retainedNodes: !212)
!3487 = !DISubroutineType(types: !3488)
!3488 = !{!19, !225}
!3489 = !DILocalVariable(name: "dt", arg: 1, scope: !3486, file: !169, line: 79, type: !225)
!3490 = !DILocation(line: 79, column: 50, scope: !3486)
!3491 = !DILocation(line: 80, column: 11, scope: !3486)
!3492 = !DILocation(line: 80, column: 3, scope: !3486)
!3493 = !DILocation(line: 81, column: 27, scope: !3494)
!3494 = distinct !DILexicalBlock(scope: !3486, file: !169, line: 80, column: 15)
!3495 = !DILocation(line: 82, column: 27, scope: !3494)
!3496 = !DILocation(line: 83, column: 27, scope: !3494)
!3497 = !DILocation(line: 84, column: 27, scope: !3494)
!3498 = !DILocation(line: 85, column: 27, scope: !3494)
!3499 = !DILocation(line: 86, column: 27, scope: !3494)
!3500 = !DILocation(line: 87, column: 27, scope: !3494)
!3501 = !DILocation(line: 88, column: 27, scope: !3494)
!3502 = !DILocation(line: 89, column: 27, scope: !3494)
!3503 = !DILocation(line: 90, column: 27, scope: !3494)
!3504 = !DILocation(line: 91, column: 27, scope: !3494)
!3505 = !DILocation(line: 92, column: 27, scope: !3494)
!3506 = !DILocation(line: 93, column: 27, scope: !3494)
!3507 = !DILocation(line: 96, column: 27, scope: !3494)
!3508 = !DILocation(line: 97, column: 27, scope: !3494)
!3509 = !DILocation(line: 98, column: 27, scope: !3494)
!3510 = !DILocation(line: 99, column: 27, scope: !3494)
!3511 = !DILocation(line: 100, column: 27, scope: !3494)
!3512 = !DILocation(line: 103, column: 27, scope: !3494)
!3513 = !DILocation(line: 104, column: 27, scope: !3494)
!3514 = !DILocation(line: 110, column: 7, scope: !3494)
!3515 = !DILocation(line: 118, column: 7, scope: !3494)
!3516 = !DILocation(line: 125, column: 7, scope: !3494)
!3517 = !DILocation(line: 128, column: 7, scope: !3494)
!3518 = !DILocation(line: 130, column: 1, scope: !3486)
!3519 = distinct !DISubprogram(name: "NumElements", linkageName: "_ZNK10tensorflow6Tensor11NumElementsEv", scope: !1906, file: !1907, line: 305, type: !2102, scopeLine: 305, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !2101, retainedNodes: !212)
!3520 = !DILocalVariable(name: "this", arg: 1, scope: !3519, type: !3521, flags: DIFlagArtificial | DIFlagObjectPointer)
!3521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2082, size: 64)
!3522 = !DILocation(line: 0, scope: !3519)
!3523 = !DILocation(line: 305, column: 40, scope: !3519)
!3524 = !DILocation(line: 305, column: 48, scope: !3519)
!3525 = !DILocation(line: 305, column: 33, scope: !3519)
!3526 = distinct !DISubprogram(name: "move<tensorflow::Tensor &>", linkageName: "_ZSt4moveIRN10tensorflow6TensorEEONSt16remove_referenceIT_E4typeEOS4_", scope: !31, file: !3527, line: 104, type: !3528, scopeLine: 105, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, templateParams: !3533, retainedNodes: !212)
!3527 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/move.h", directory: "")
!3528 = !DISubroutineType(types: !3529)
!3529 = !{!3530, !2120}
!3530 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !3531, size: 64)
!3531 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !3532, file: !502, line: 1602, baseType: !1906)
!3532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "remove_reference<tensorflow::Tensor &>", scope: !31, file: !502, line: 1601, size: 8, flags: DIFlagTypePassByValue, elements: !212, templateParams: !3533, identifier: "_ZTSSt16remove_referenceIRN10tensorflow6TensorEE")
!3533 = !{!3534}
!3534 = !DITemplateTypeParameter(name: "_Tp", type: !2120)
!3535 = !DILocalVariable(name: "__t", arg: 1, scope: !3526, file: !3527, line: 104, type: !2120)
!3536 = !DILocation(line: 104, column: 16, scope: !3526)
!3537 = !DILocation(line: 105, column: 71, scope: !3526)
!3538 = !DILocation(line: 105, column: 7, scope: !3526)
!3539 = distinct !DISubprogram(name: "TensorInterface", linkageName: "_ZN10tensorflow15TensorInterfaceC2ENS_6TensorE", scope: !3339, file: !2405, line: 101, type: !3348, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !3347, retainedNodes: !212)
!3540 = !DILocalVariable(name: "this", arg: 1, scope: !3539, type: !3541, flags: DIFlagArtificial | DIFlagObjectPointer)
!3541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3339, size: 64)
!3542 = !DILocation(line: 0, scope: !3539)
!3543 = !DILocalVariable(name: "t", arg: 2, scope: !3539, file: !2405, line: 101, type: !1906)
!3544 = !DILocation(line: 101, column: 47, scope: !3539)
!3545 = !DILocation(line: 101, column: 74, scope: !3539)
!3546 = !DILocation(line: 101, column: 12, scope: !3539)
!3547 = !DILocation(line: 101, column: 52, scope: !3539)
!3548 = !DILocation(line: 101, column: 60, scope: !3539)
!3549 = !DILocation(line: 101, column: 75, scope: !3539)
!3550 = !DILocation(line: 101, column: 75, scope: !3551)
!3551 = distinct !DILexicalBlock(scope: !3539, file: !2405, line: 101, column: 74)
!3552 = distinct !DISubprogram(name: "~vector", linkageName: "_ZNSt6vectorIlSaIlEED2Ev", scope: !287, file: !288, line: 678, type: !547, scopeLine: 679, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !616, retainedNodes: !212)
!3553 = !DILocalVariable(name: "this", arg: 1, scope: !3552, type: !3409, flags: DIFlagArtificial | DIFlagObjectPointer)
!3554 = !DILocation(line: 0, scope: !3552)
!3555 = !DILocation(line: 680, column: 22, scope: !3556)
!3556 = distinct !DILexicalBlock(scope: !3552, file: !288, line: 679, column: 7)
!3557 = !DILocation(line: 680, column: 16, scope: !3556)
!3558 = !DILocation(line: 680, column: 30, scope: !3556)
!3559 = !DILocation(line: 680, column: 46, scope: !3556)
!3560 = !DILocation(line: 680, column: 40, scope: !3556)
!3561 = !DILocation(line: 680, column: 54, scope: !3556)
!3562 = !DILocation(line: 681, column: 9, scope: !3556)
!3563 = !DILocation(line: 680, column: 2, scope: !3556)
!3564 = !DILocation(line: 683, column: 7, scope: !3556)
!3565 = !DILocation(line: 683, column: 7, scope: !3552)
!3566 = distinct !DISubprogram(name: "_M_get_Tp_allocator", linkageName: "_ZNSt12_Vector_baseIlSaIlEE19_M_get_Tp_allocatorEv", scope: !291, file: !288, line: 276, type: !449, scopeLine: 277, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !448, retainedNodes: !212)
!3567 = !DILocalVariable(name: "this", arg: 1, scope: !3566, type: !3568, flags: DIFlagArtificial | DIFlagObjectPointer)
!3568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!3569 = !DILocation(line: 0, scope: !3566)
!3570 = !DILocation(line: 277, column: 22, scope: !3566)
!3571 = !DILocation(line: 277, column: 16, scope: !3566)
!3572 = !DILocation(line: 277, column: 9, scope: !3566)
!3573 = distinct !DISubprogram(name: "_Destroy<long *, long>", linkageName: "_ZSt8_DestroyIPllEvT_S1_RSaIT0_E", scope: !31, file: !236, line: 845, type: !3574, scopeLine: 847, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, templateParams: !3576, retainedNodes: !212)
!3574 = !DISubroutineType(types: !3575)
!3575 = !{null, !309, !309, !370}
!3576 = !{!3577, !357}
!3577 = !DITemplateTypeParameter(name: "_ForwardIterator", type: !309)
!3578 = !DILocalVariable(name: "__first", arg: 1, scope: !3573, file: !236, line: 845, type: !309)
!3579 = !DILocation(line: 845, column: 31, scope: !3573)
!3580 = !DILocalVariable(name: "__last", arg: 2, scope: !3573, file: !236, line: 845, type: !309)
!3581 = !DILocation(line: 845, column: 57, scope: !3573)
!3582 = !DILocalVariable(arg: 3, scope: !3573, file: !236, line: 846, type: !370)
!3583 = !DILocation(line: 846, column: 22, scope: !3573)
!3584 = !DILocation(line: 848, column: 16, scope: !3573)
!3585 = !DILocation(line: 848, column: 25, scope: !3573)
!3586 = !DILocation(line: 848, column: 7, scope: !3573)
!3587 = !DILocation(line: 849, column: 5, scope: !3573)
!3588 = distinct !DISubprogram(name: "~_Vector_base", linkageName: "_ZNSt12_Vector_baseIlSaIlEED2Ev", scope: !291, file: !288, line: 333, type: !463, scopeLine: 334, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !489, retainedNodes: !212)
!3589 = !DILocalVariable(name: "this", arg: 1, scope: !3588, type: !3568, flags: DIFlagArtificial | DIFlagObjectPointer)
!3590 = !DILocation(line: 0, scope: !3588)
!3591 = !DILocation(line: 335, column: 16, scope: !3592)
!3592 = distinct !DILexicalBlock(scope: !3588, file: !288, line: 334, column: 7)
!3593 = !DILocation(line: 335, column: 24, scope: !3592)
!3594 = !DILocation(line: 336, column: 9, scope: !3592)
!3595 = !DILocation(line: 336, column: 17, scope: !3592)
!3596 = !DILocation(line: 336, column: 37, scope: !3592)
!3597 = !DILocation(line: 336, column: 45, scope: !3592)
!3598 = !DILocation(line: 336, column: 35, scope: !3592)
!3599 = !DILocation(line: 335, column: 2, scope: !3592)
!3600 = !DILocation(line: 337, column: 7, scope: !3592)
!3601 = !DILocation(line: 337, column: 7, scope: !3588)
!3602 = distinct !DISubprogram(name: "_M_deallocate", linkageName: "_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm", scope: !291, file: !288, line: 350, type: !494, scopeLine: 351, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !493, retainedNodes: !212)
!3603 = !DILocalVariable(name: "this", arg: 1, scope: !3602, type: !3568, flags: DIFlagArtificial | DIFlagObjectPointer)
!3604 = !DILocation(line: 0, scope: !3602)
!3605 = !DILocalVariable(name: "__p", arg: 2, scope: !3602, file: !288, line: 350, type: !407)
!3606 = !DILocation(line: 350, column: 29, scope: !3602)
!3607 = !DILocalVariable(name: "__n", arg: 3, scope: !3602, file: !288, line: 350, type: !210)
!3608 = !DILocation(line: 350, column: 41, scope: !3602)
!3609 = !DILocation(line: 353, column: 6, scope: !3610)
!3610 = distinct !DILexicalBlock(scope: !3602, file: !288, line: 353, column: 6)
!3611 = !DILocation(line: 353, column: 6, scope: !3602)
!3612 = !DILocation(line: 354, column: 20, scope: !3610)
!3613 = !DILocation(line: 354, column: 29, scope: !3610)
!3614 = !DILocation(line: 354, column: 34, scope: !3610)
!3615 = !DILocation(line: 354, column: 4, scope: !3610)
!3616 = !DILocation(line: 355, column: 7, scope: !3602)
!3617 = distinct !DISubprogram(name: "~_Vector_impl", linkageName: "_ZNSt12_Vector_baseIlSaIlEE12_Vector_implD2Ev", scope: !294, file: !288, line: 128, type: !429, scopeLine: 128, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !3618, retainedNodes: !212)
!3618 = !DISubprogram(name: "~_Vector_impl", scope: !294, type: !429, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!3619 = !DILocalVariable(name: "this", arg: 1, scope: !3617, type: !3620, flags: DIFlagArtificial | DIFlagObjectPointer)
!3620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!3621 = !DILocation(line: 0, scope: !3617)
!3622 = !DILocation(line: 128, column: 14, scope: !3623)
!3623 = distinct !DILexicalBlock(scope: !3617, file: !288, line: 128, column: 14)
!3624 = !DILocation(line: 128, column: 14, scope: !3617)
!3625 = distinct !DISubprogram(name: "deallocate", linkageName: "_ZNSt16allocator_traitsISaIlEE10deallocateERS0_Plm", scope: !303, file: !236, line: 495, type: !376, scopeLine: 496, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !375, retainedNodes: !212)
!3626 = !DILocalVariable(name: "__a", arg: 1, scope: !3625, file: !236, line: 495, type: !310)
!3627 = !DILocation(line: 495, column: 34, scope: !3625)
!3628 = !DILocalVariable(name: "__p", arg: 2, scope: !3625, file: !236, line: 495, type: !308)
!3629 = !DILocation(line: 495, column: 47, scope: !3625)
!3630 = !DILocalVariable(name: "__n", arg: 3, scope: !3625, file: !236, line: 495, type: !247)
!3631 = !DILocation(line: 495, column: 62, scope: !3625)
!3632 = !DILocation(line: 496, column: 9, scope: !3625)
!3633 = !DILocation(line: 496, column: 24, scope: !3625)
!3634 = !DILocation(line: 496, column: 29, scope: !3625)
!3635 = !DILocation(line: 496, column: 13, scope: !3625)
!3636 = !DILocation(line: 496, column: 35, scope: !3625)
!3637 = distinct !DISubprogram(name: "deallocate", linkageName: "_ZN9__gnu_cxx13new_allocatorIlE10deallocateEPlm", scope: !317, file: !318, line: 132, type: !350, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !349, retainedNodes: !212)
!3638 = !DILocalVariable(name: "this", arg: 1, scope: !3637, type: !3639, flags: DIFlagArtificial | DIFlagObjectPointer)
!3639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!3640 = !DILocation(line: 0, scope: !3637)
!3641 = !DILocalVariable(name: "__p", arg: 2, scope: !3637, file: !318, line: 132, type: !309)
!3642 = !DILocation(line: 132, column: 23, scope: !3637)
!3643 = !DILocalVariable(name: "__t", arg: 3, scope: !3637, file: !318, line: 132, type: !348)
!3644 = !DILocation(line: 132, column: 38, scope: !3637)
!3645 = !DILocation(line: 145, column: 20, scope: !3637)
!3646 = !DILocation(line: 145, column: 2, scope: !3637)
!3647 = !DILocation(line: 150, column: 7, scope: !3637)
!3648 = distinct !DISubprogram(name: "_Destroy<long *>", linkageName: "_ZSt8_DestroyIPlEvT_S1_", scope: !31, file: !3649, line: 182, type: !3650, scopeLine: 183, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, templateParams: !3652, retainedNodes: !212)
!3649 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/stl_construct.h", directory: "")
!3650 = !DISubroutineType(types: !3651)
!3651 = !{null, !309, !309}
!3652 = !{!3577}
!3653 = !DILocalVariable(name: "__first", arg: 1, scope: !3648, file: !3649, line: 182, type: !309)
!3654 = !DILocation(line: 182, column: 31, scope: !3648)
!3655 = !DILocalVariable(name: "__last", arg: 2, scope: !3648, file: !3649, line: 182, type: !309)
!3656 = !DILocation(line: 182, column: 57, scope: !3648)
!3657 = !DILocation(line: 196, column: 12, scope: !3648)
!3658 = !DILocation(line: 196, column: 21, scope: !3648)
!3659 = !DILocation(line: 195, column: 7, scope: !3648)
!3660 = !DILocation(line: 197, column: 5, scope: !3648)
!3661 = distinct !DISubprogram(name: "__destroy<long *>", linkageName: "_ZNSt12_Destroy_auxILb1EE9__destroyIPlEEvT_S3_", scope: !3662, file: !3649, line: 172, type: !3650, scopeLine: 172, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, templateParams: !3652, declaration: !3665, retainedNodes: !212)
!3662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Destroy_aux<true>", scope: !31, file: !3649, line: 168, size: 8, flags: DIFlagTypePassByValue, elements: !212, templateParams: !3663, identifier: "_ZTSSt12_Destroy_auxILb1EE")
!3663 = !{!3664}
!3664 = !DITemplateValueParameter(type: !53, value: i1 true)
!3665 = !DISubprogram(name: "__destroy<long *>", linkageName: "_ZNSt12_Destroy_auxILb1EE9__destroyIPlEEvT_S3_", scope: !3662, file: !3649, line: 172, type: !3650, scopeLine: 172, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0, templateParams: !3652)
!3666 = !DILocalVariable(arg: 1, scope: !3661, file: !3649, line: 172, type: !309)
!3667 = !DILocation(line: 172, column: 35, scope: !3661)
!3668 = !DILocalVariable(arg: 2, scope: !3661, file: !3649, line: 172, type: !309)
!3669 = !DILocation(line: 172, column: 53, scope: !3661)
!3670 = !DILocation(line: 172, column: 57, scope: !3661)
!3671 = distinct !DISubprogram(name: "AbstractTensorInterface", linkageName: "_ZN10tensorflow23AbstractTensorInterfaceC2Ev", scope: !2409, file: !2410, line: 31, type: !2414, scopeLine: 31, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !3672, retainedNodes: !212)
!3672 = !DISubprogram(name: "AbstractTensorInterface", scope: !2409, type: !2414, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!3673 = !DILocalVariable(name: "this", arg: 1, scope: !3671, type: !2408, flags: DIFlagArtificial | DIFlagObjectPointer)
!3674 = !DILocation(line: 0, scope: !3671)
!3675 = !DILocation(line: 31, column: 7, scope: !3671)
!3676 = distinct !DISubprogram(name: "~AbstractTensorInterface", linkageName: "_ZN10tensorflow23AbstractTensorInterfaceD2Ev", scope: !2409, file: !2410, line: 57, type: !2414, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !2444, retainedNodes: !212)
!3677 = !DILocalVariable(name: "this", arg: 1, scope: !3676, type: !2408, flags: DIFlagArtificial | DIFlagObjectPointer)
!3678 = !DILocation(line: 0, scope: !3676)
!3679 = !DILocation(line: 57, column: 39, scope: !3676)
!3680 = distinct !DISubprogram(name: "Release", linkageName: "_ZN10tensorflow15TensorInterface7ReleaseEv", scope: !3339, file: !2405, line: 128, type: !3344, scopeLine: 128, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !3351, retainedNodes: !212)
!3681 = !DILocalVariable(name: "this", arg: 1, scope: !3680, type: !3541, flags: DIFlagArtificial | DIFlagObjectPointer)
!3682 = !DILocation(line: 0, scope: !3680)
!3683 = !DILocation(line: 128, column: 42, scope: !3680)
!3684 = !DILocation(line: 128, column: 55, scope: !3680)
!3685 = distinct !DISubprogram(name: "Type", linkageName: "_ZNK10tensorflow15TensorInterface4TypeEv", scope: !3339, file: !2405, line: 129, type: !3353, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !3352, retainedNodes: !212)
!3686 = !DILocalVariable(name: "this", arg: 1, scope: !3685, type: !3687, flags: DIFlagArtificial | DIFlagObjectPointer)
!3687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3356, size: 64)
!3688 = !DILocation(line: 0, scope: !3685)
!3689 = !DILocation(line: 131, column: 3, scope: !3685)
!3690 = distinct !DISubprogram(name: "NumDims", linkageName: "_ZNK10tensorflow15TensorInterface7NumDimsEv", scope: !3339, file: !2405, line: 133, type: !3358, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !3357, retainedNodes: !212)
!3691 = !DILocalVariable(name: "this", arg: 1, scope: !3690, type: !3687, flags: DIFlagArtificial | DIFlagObjectPointer)
!3692 = !DILocation(line: 0, scope: !3690)
!3693 = !DILocation(line: 133, column: 47, scope: !3690)
!3694 = distinct !DISubprogram(name: "Dim", linkageName: "_ZNK10tensorflow15TensorInterface3DimEi", scope: !3339, file: !2405, line: 134, type: !3361, scopeLine: 134, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !3360, retainedNodes: !212)
!3695 = !DILocalVariable(name: "this", arg: 1, scope: !3694, type: !3687, flags: DIFlagArtificial | DIFlagObjectPointer)
!3696 = !DILocation(line: 0, scope: !3694)
!3697 = !DILocalVariable(arg: 2, scope: !3694, file: !2405, line: 134, type: !16)
!3698 = !DILocation(line: 134, column: 40, scope: !3694)
!3699 = !DILocation(line: 134, column: 50, scope: !3694)
!3700 = distinct !DISubprogram(name: "NumElements", linkageName: "_ZNK10tensorflow15TensorInterface11NumElementsEv", scope: !3339, file: !2405, line: 135, type: !3364, scopeLine: 135, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !3363, retainedNodes: !212)
!3701 = !DILocalVariable(name: "this", arg: 1, scope: !3700, type: !3687, flags: DIFlagArtificial | DIFlagObjectPointer)
!3702 = !DILocation(line: 0, scope: !3700)
!3703 = !DILocation(line: 135, column: 55, scope: !3700)
!3704 = distinct !DISubprogram(name: "ByteSize", linkageName: "_ZNK10tensorflow15TensorInterface8ByteSizeEv", scope: !3339, file: !2405, line: 136, type: !3367, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !3366, retainedNodes: !212)
!3705 = !DILocalVariable(name: "this", arg: 1, scope: !3704, type: !3687, flags: DIFlagArtificial | DIFlagObjectPointer)
!3706 = !DILocation(line: 0, scope: !3704)
!3707 = !DILocation(line: 136, column: 51, scope: !3704)
!3708 = distinct !DISubprogram(name: "Data", linkageName: "_ZNK10tensorflow15TensorInterface4DataEv", scope: !3339, file: !2405, line: 137, type: !3370, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !3369, retainedNodes: !212)
!3709 = !DILocalVariable(name: "this", arg: 1, scope: !3708, type: !3687, flags: DIFlagArtificial | DIFlagObjectPointer)
!3710 = !DILocation(line: 0, scope: !3708)
!3711 = !DILocation(line: 137, column: 46, scope: !3708)
!3712 = distinct !DISubprogram(name: "IsAligned", linkageName: "_ZNK10tensorflow15TensorInterface9IsAlignedEv", scope: !3339, file: !2405, line: 138, type: !3373, scopeLine: 138, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !3372, retainedNodes: !212)
!3713 = !DILocalVariable(name: "this", arg: 1, scope: !3712, type: !3687, flags: DIFlagArtificial | DIFlagObjectPointer)
!3714 = !DILocation(line: 0, scope: !3712)
!3715 = !DILocation(line: 138, column: 50, scope: !3712)
!3716 = distinct !DISubprogram(name: "CanMove", linkageName: "_ZNK10tensorflow15TensorInterface7CanMoveEv", scope: !3339, file: !2405, line: 139, type: !3373, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !3375, retainedNodes: !212)
!3717 = !DILocalVariable(name: "this", arg: 1, scope: !3716, type: !3687, flags: DIFlagArtificial | DIFlagObjectPointer)
!3718 = !DILocation(line: 0, scope: !3716)
!3719 = !DILocation(line: 139, column: 48, scope: !3716)
!3720 = distinct !DISubprogram(name: "SummarizeValue", linkageName: "_ZNK10tensorflow15TensorInterface14SummarizeValueB5cxx11Ev", scope: !3339, file: !2405, line: 140, type: !3377, scopeLine: 140, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !3376, retainedNodes: !212)
!3721 = !DILocalVariable(name: "this", arg: 1, scope: !3720, type: !3687, flags: DIFlagArtificial | DIFlagObjectPointer)
!3722 = !DILocation(line: 0, scope: !3720)
!3723 = !DILocation(line: 140, column: 69, scope: !3720)
!3724 = !DILocation(line: 140, column: 62, scope: !3720)
!3725 = distinct !DISubprogram(name: "~TensorInterface", linkageName: "_ZN10tensorflow15TensorInterfaceD2Ev", scope: !3339, file: !2405, line: 102, type: !3344, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !3350, retainedNodes: !212)
!3726 = !DILocalVariable(name: "this", arg: 1, scope: !3725, type: !3541, flags: DIFlagArtificial | DIFlagObjectPointer)
!3727 = !DILocation(line: 0, scope: !3725)
!3728 = !DILocation(line: 102, column: 31, scope: !3725)
!3729 = !DILocation(line: 102, column: 32, scope: !3730)
!3730 = distinct !DILexicalBlock(scope: !3725, file: !2405, line: 102, column: 31)
!3731 = !DILocation(line: 102, column: 32, scope: !3725)
!3732 = distinct !DISubprogram(name: "~TensorInterface", linkageName: "_ZN10tensorflow15TensorInterfaceD0Ev", scope: !3339, file: !2405, line: 102, type: !3344, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !3350, retainedNodes: !212)
!3733 = !DILocalVariable(name: "this", arg: 1, scope: !3732, type: !3541, flags: DIFlagArtificial | DIFlagObjectPointer)
!3734 = !DILocation(line: 0, scope: !3732)
!3735 = !DILocation(line: 102, column: 31, scope: !3732)
!3736 = !DILocation(line: 102, column: 32, scope: !3732)
!3737 = distinct !DISubprogram(name: "~AbstractTensorInterface", linkageName: "_ZN10tensorflow23AbstractTensorInterfaceD0Ev", scope: !2409, file: !2410, line: 57, type: !2414, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !2444, retainedNodes: !212)
!3738 = !DILocalVariable(name: "this", arg: 1, scope: !3737, type: !2408, flags: DIFlagArtificial | DIFlagObjectPointer)
!3739 = !DILocation(line: 0, scope: !3737)
!3740 = !DILocation(line: 57, column: 38, scope: !3737)
!3741 = distinct !DISubprogram(name: "shape", linkageName: "_ZNK10tensorflow6Tensor5shapeEv", scope: !1906, file: !1907, line: 293, type: !2093, scopeLine: 293, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !2092, retainedNodes: !212)
!3742 = !DILocalVariable(name: "this", arg: 1, scope: !3741, type: !3521, flags: DIFlagArtificial | DIFlagObjectPointer)
!3743 = !DILocation(line: 0, scope: !3741)
!3744 = !DILocation(line: 293, column: 45, scope: !3741)
!3745 = !DILocation(line: 293, column: 38, scope: !3741)
!3746 = distinct !DISubprogram(name: "num_elements", linkageName: "_ZNK10tensorflow11TensorShape12num_elementsEv", scope: !284, file: !101, line: 158, type: !914, scopeLine: 158, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !913, retainedNodes: !212)
!3747 = !DILocalVariable(name: "this", arg: 1, scope: !3746, type: !995, flags: DIFlagArtificial | DIFlagObjectPointer)
!3748 = !DILocation(line: 0, scope: !3746)
!3749 = !DILocation(line: 159, column: 9, scope: !3750)
!3750 = distinct !DILexicalBlock(scope: !3746, file: !101, line: 159, column: 9)
!3751 = !DILocation(line: 159, column: 15, scope: !3750)
!3752 = !DILocation(line: 159, column: 9, scope: !3746)
!3753 = !DILocation(line: 159, column: 24, scope: !3750)
!3754 = !DILocalVariable(name: "prod", scope: !3746, file: !101, line: 160, type: !64)
!3755 = !DILocation(line: 160, column: 13, scope: !3746)
!3756 = !DILocalVariable(name: "__range2", scope: !3757, type: !569, flags: DIFlagArtificial)
!3757 = distinct !DILexicalBlock(scope: !3746, file: !101, line: 161, column: 5)
!3758 = !DILocation(line: 0, scope: !3757)
!3759 = !DILocation(line: 161, column: 22, scope: !3757)
!3760 = !DILocalVariable(name: "__begin2", scope: !3757, type: !698, flags: DIFlagArtificial)
!3761 = !DILocation(line: 161, column: 20, scope: !3757)
!3762 = !DILocalVariable(name: "__end2", scope: !3757, type: !698, flags: DIFlagArtificial)
!3763 = !DILocalVariable(name: "d", scope: !3764, file: !101, line: 161, type: !64)
!3764 = distinct !DILexicalBlock(scope: !3757, file: !101, line: 161, column: 5)
!3765 = !DILocation(line: 161, column: 18, scope: !3764)
!3766 = !DILocation(line: 161, column: 20, scope: !3764)
!3767 = !DILocation(line: 162, column: 11, scope: !3768)
!3768 = distinct !DILexicalBlock(scope: !3769, file: !101, line: 162, column: 11)
!3769 = distinct !DILexicalBlock(scope: !3764, file: !101, line: 161, column: 29)
!3770 = !DILocation(line: 162, column: 13, scope: !3768)
!3771 = !DILocation(line: 162, column: 11, scope: !3769)
!3772 = !DILocation(line: 162, column: 19, scope: !3768)
!3773 = !DILocation(line: 163, column: 15, scope: !3769)
!3774 = !DILocation(line: 163, column: 12, scope: !3769)
!3775 = !DILocation(line: 161, column: 5, scope: !3757)
!3776 = distinct !{!3776, !3775, !3777}
!3777 = !DILocation(line: 164, column: 5, scope: !3757)
!3778 = !DILocation(line: 165, column: 12, scope: !3746)
!3779 = !DILocation(line: 165, column: 5, scope: !3746)
!3780 = !DILocation(line: 166, column: 3, scope: !3746)
!3781 = distinct !DISubprogram(name: "empty", linkageName: "_ZNKSt6vectorIlSaIlEE5emptyEv", scope: !287, file: !288, line: 1007, type: !781, scopeLine: 1008, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !780, retainedNodes: !212)
!3782 = !DILocalVariable(name: "this", arg: 1, scope: !3781, type: !3783, flags: DIFlagArtificial | DIFlagObjectPointer)
!3783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64)
!3784 = !DILocation(line: 0, scope: !3781)
!3785 = !DILocation(line: 1008, column: 16, scope: !3781)
!3786 = !DILocation(line: 1008, column: 27, scope: !3781)
!3787 = !DILocation(line: 1008, column: 24, scope: !3781)
!3788 = !DILocation(line: 1008, column: 9, scope: !3781)
!3789 = distinct !DISubprogram(name: "begin", linkageName: "_ZNKSt6vectorIlSaIlEE5beginEv", scope: !287, file: !288, line: 820, type: !695, scopeLine: 821, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !694, retainedNodes: !212)
!3790 = !DILocalVariable(name: "this", arg: 1, scope: !3789, type: !3783, flags: DIFlagArtificial | DIFlagObjectPointer)
!3791 = !DILocation(line: 0, scope: !3789)
!3792 = !DILocation(line: 821, column: 37, scope: !3789)
!3793 = !DILocation(line: 821, column: 31, scope: !3789)
!3794 = !DILocation(line: 821, column: 45, scope: !3789)
!3795 = !DILocation(line: 821, column: 16, scope: !3789)
!3796 = !DILocation(line: 821, column: 9, scope: !3789)
!3797 = distinct !DISubprogram(name: "end", linkageName: "_ZNKSt6vectorIlSaIlEE3endEv", scope: !287, file: !288, line: 838, type: !695, scopeLine: 839, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !753, retainedNodes: !212)
!3798 = !DILocalVariable(name: "this", arg: 1, scope: !3797, type: !3783, flags: DIFlagArtificial | DIFlagObjectPointer)
!3799 = !DILocation(line: 0, scope: !3797)
!3800 = !DILocation(line: 839, column: 37, scope: !3797)
!3801 = !DILocation(line: 839, column: 31, scope: !3797)
!3802 = !DILocation(line: 839, column: 45, scope: !3797)
!3803 = !DILocation(line: 839, column: 16, scope: !3797)
!3804 = !DILocation(line: 839, column: 9, scope: !3797)
!3805 = distinct !DISubprogram(name: "operator!=<const long *, std::vector<long, std::allocator<long> > >", linkageName: "_ZN9__gnu_cxxneIPKlSt6vectorIlSaIlEEEEbRKNS_17__normal_iteratorIT_T0_EESB_", scope: !94, file: !638, line: 1179, type: !3806, scopeLine: 1182, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, templateParams: !750, retainedNodes: !212)
!3806 = !DISubroutineType(types: !3807)
!3807 = !{!53, !3808, !3808}
!3808 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !719, size: 64)
!3809 = !DILocalVariable(name: "__lhs", arg: 1, scope: !3805, file: !638, line: 1179, type: !3808)
!3810 = !DILocation(line: 1179, column: 64, scope: !3805)
!3811 = !DILocalVariable(name: "__rhs", arg: 2, scope: !3805, file: !638, line: 1180, type: !3808)
!3812 = !DILocation(line: 1180, column: 57, scope: !3805)
!3813 = !DILocation(line: 1182, column: 14, scope: !3805)
!3814 = !DILocation(line: 1182, column: 20, scope: !3805)
!3815 = !DILocation(line: 1182, column: 30, scope: !3805)
!3816 = !DILocation(line: 1182, column: 36, scope: !3805)
!3817 = !DILocation(line: 1182, column: 27, scope: !3805)
!3818 = !DILocation(line: 1182, column: 7, scope: !3805)
!3819 = distinct !DISubprogram(name: "operator*", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEdeEv", scope: !698, file: !638, line: 1042, type: !711, scopeLine: 1043, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !710, retainedNodes: !212)
!3820 = !DILocalVariable(name: "this", arg: 1, scope: !3819, type: !3821, flags: DIFlagArtificial | DIFlagObjectPointer)
!3821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!3822 = !DILocation(line: 0, scope: !3819)
!3823 = !DILocation(line: 1043, column: 17, scope: !3819)
!3824 = !DILocation(line: 1043, column: 9, scope: !3819)
!3825 = distinct !DISubprogram(name: "operator++", linkageName: "_ZN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEppEv", scope: !698, file: !638, line: 1052, type: !726, scopeLine: 1053, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !725, retainedNodes: !212)
!3826 = !DILocalVariable(name: "this", arg: 1, scope: !3825, type: !3827, flags: DIFlagArtificial | DIFlagObjectPointer)
!3827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64)
!3828 = !DILocation(line: 0, scope: !3825)
!3829 = !DILocation(line: 1054, column: 4, scope: !3825)
!3830 = !DILocation(line: 1054, column: 2, scope: !3825)
!3831 = !DILocation(line: 1055, column: 2, scope: !3825)
!3832 = distinct !DISubprogram(name: "base", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEE4baseEv", scope: !698, file: !638, line: 1105, type: !748, scopeLine: 1106, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !747, retainedNodes: !212)
!3833 = !DILocalVariable(name: "this", arg: 1, scope: !3832, type: !3821, flags: DIFlagArtificial | DIFlagObjectPointer)
!3834 = !DILocation(line: 0, scope: !3832)
!3835 = !DILocation(line: 1106, column: 16, scope: !3832)
!3836 = !DILocation(line: 1106, column: 9, scope: !3832)
!3837 = distinct !DISubprogram(name: "__normal_iterator", linkageName: "_ZN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEC2ERKS2_", scope: !698, file: !638, line: 1027, type: !706, scopeLine: 1028, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !705, retainedNodes: !212)
!3838 = !DILocalVariable(name: "this", arg: 1, scope: !3837, type: !3827, flags: DIFlagArtificial | DIFlagObjectPointer)
!3839 = !DILocation(line: 0, scope: !3837)
!3840 = !DILocalVariable(name: "__i", arg: 2, scope: !3837, file: !638, line: 1027, type: !708)
!3841 = !DILocation(line: 1027, column: 42, scope: !3837)
!3842 = !DILocation(line: 1028, column: 9, scope: !3837)
!3843 = !DILocation(line: 1028, column: 20, scope: !3837)
!3844 = !DILocation(line: 1028, column: 27, scope: !3837)
!3845 = distinct !DISubprogram(name: "operator==<const long *, std::vector<long, std::allocator<long> > >", linkageName: "_ZN9__gnu_cxxeqIPKlSt6vectorIlSaIlEEEEbRKNS_17__normal_iteratorIT_T0_EESB_", scope: !94, file: !638, line: 1163, type: !3806, scopeLine: 1166, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, templateParams: !750, retainedNodes: !212)
!3846 = !DILocalVariable(name: "__lhs", arg: 1, scope: !3845, file: !638, line: 1163, type: !3808)
!3847 = !DILocation(line: 1163, column: 64, scope: !3845)
!3848 = !DILocalVariable(name: "__rhs", arg: 2, scope: !3845, file: !638, line: 1164, type: !3808)
!3849 = !DILocation(line: 1164, column: 57, scope: !3845)
!3850 = !DILocation(line: 1166, column: 14, scope: !3845)
!3851 = !DILocation(line: 1166, column: 20, scope: !3845)
!3852 = !DILocation(line: 1166, column: 30, scope: !3845)
!3853 = !DILocation(line: 1166, column: 36, scope: !3845)
!3854 = !DILocation(line: 1166, column: 27, scope: !3845)
!3855 = !DILocation(line: 1166, column: 7, scope: !3845)
!3856 = distinct !DISubprogram(name: "vector", linkageName: "_ZNSt6vectorIlSaIlEEC2ERKS1_", scope: !287, file: !288, line: 553, type: !567, scopeLine: 556, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !566, retainedNodes: !212)
!3857 = !DILocalVariable(name: "this", arg: 1, scope: !3856, type: !3409, flags: DIFlagArtificial | DIFlagObjectPointer)
!3858 = !DILocation(line: 0, scope: !3856)
!3859 = !DILocalVariable(name: "__x", arg: 2, scope: !3856, file: !288, line: 553, type: !569)
!3860 = !DILocation(line: 553, column: 28, scope: !3856)
!3861 = !DILocation(line: 556, column: 7, scope: !3856)
!3862 = !DILocation(line: 554, column: 15, scope: !3856)
!3863 = !DILocation(line: 554, column: 19, scope: !3856)
!3864 = !DILocation(line: 555, column: 35, scope: !3856)
!3865 = !DILocation(line: 555, column: 39, scope: !3856)
!3866 = !DILocation(line: 555, column: 2, scope: !3856)
!3867 = !DILocation(line: 554, column: 9, scope: !3856)
!3868 = !DILocation(line: 558, column: 32, scope: !3869)
!3869 = distinct !DILexicalBlock(scope: !3856, file: !288, line: 556, column: 7)
!3870 = !DILocation(line: 558, column: 36, scope: !3869)
!3871 = !DILocation(line: 558, column: 45, scope: !3869)
!3872 = !DILocation(line: 558, column: 49, scope: !3869)
!3873 = !DILocation(line: 559, column: 17, scope: !3869)
!3874 = !DILocation(line: 559, column: 11, scope: !3869)
!3875 = !DILocation(line: 559, column: 25, scope: !3869)
!3876 = !DILocation(line: 560, column: 11, scope: !3869)
!3877 = !DILocation(line: 558, column: 4, scope: !3869)
!3878 = !DILocation(line: 557, column: 8, scope: !3869)
!3879 = !DILocation(line: 557, column: 2, scope: !3869)
!3880 = !DILocation(line: 557, column: 16, scope: !3869)
!3881 = !DILocation(line: 557, column: 26, scope: !3869)
!3882 = !DILocation(line: 561, column: 7, scope: !3856)
!3883 = !DILocation(line: 561, column: 7, scope: !3869)
!3884 = distinct !DISubprogram(name: "size", linkageName: "_ZNKSt6vectorIlSaIlEE4sizeEv", scope: !287, file: !288, line: 918, type: !771, scopeLine: 919, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !770, retainedNodes: !212)
!3885 = !DILocalVariable(name: "this", arg: 1, scope: !3884, type: !3783, flags: DIFlagArtificial | DIFlagObjectPointer)
!3886 = !DILocation(line: 0, scope: !3884)
!3887 = !DILocation(line: 919, column: 32, scope: !3884)
!3888 = !DILocation(line: 919, column: 26, scope: !3884)
!3889 = !DILocation(line: 919, column: 40, scope: !3884)
!3890 = !DILocation(line: 919, column: 58, scope: !3884)
!3891 = !DILocation(line: 919, column: 52, scope: !3884)
!3892 = !DILocation(line: 919, column: 66, scope: !3884)
!3893 = !DILocation(line: 919, column: 50, scope: !3884)
!3894 = !DILocation(line: 919, column: 9, scope: !3884)
!3895 = distinct !DISubprogram(name: "_M_get_Tp_allocator", linkageName: "_ZNKSt12_Vector_baseIlSaIlEE19_M_get_Tp_allocatorEv", scope: !291, file: !288, line: 280, type: !454, scopeLine: 281, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !453, retainedNodes: !212)
!3896 = !DILocalVariable(name: "this", arg: 1, scope: !3895, type: !3897, flags: DIFlagArtificial | DIFlagObjectPointer)
!3897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!3898 = !DILocation(line: 0, scope: !3895)
!3899 = !DILocation(line: 281, column: 22, scope: !3895)
!3900 = !DILocation(line: 281, column: 16, scope: !3895)
!3901 = !DILocation(line: 281, column: 9, scope: !3895)
!3902 = distinct !DISubprogram(name: "_S_select_on_copy", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaIlElE17_S_select_on_copyERKS1_", scope: !300, file: !231, line: 97, type: !390, scopeLine: 98, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !389, retainedNodes: !212)
!3903 = !DILocalVariable(name: "__a", arg: 1, scope: !3902, file: !231, line: 97, type: !365)
!3904 = !DILocation(line: 97, column: 61, scope: !3902)
!3905 = !DILocation(line: 98, column: 64, scope: !3902)
!3906 = !DILocation(line: 98, column: 14, scope: !3902)
!3907 = !DILocation(line: 98, column: 7, scope: !3902)
!3908 = distinct !DISubprogram(name: "_Vector_base", linkageName: "_ZNSt12_Vector_baseIlSaIlEEC2EmRKS0_", scope: !291, file: !288, line: 303, type: !474, scopeLine: 305, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !473, retainedNodes: !212)
!3909 = !DILocalVariable(name: "this", arg: 1, scope: !3908, type: !3568, flags: DIFlagArtificial | DIFlagObjectPointer)
!3910 = !DILocation(line: 0, scope: !3908)
!3911 = !DILocalVariable(name: "__n", arg: 2, scope: !3908, file: !288, line: 303, type: !210)
!3912 = !DILocation(line: 303, column: 27, scope: !3908)
!3913 = !DILocalVariable(name: "__a", arg: 3, scope: !3908, file: !288, line: 303, type: !468)
!3914 = !DILocation(line: 303, column: 54, scope: !3908)
!3915 = !DILocation(line: 304, column: 9, scope: !3908)
!3916 = !DILocation(line: 304, column: 17, scope: !3908)
!3917 = !DILocation(line: 305, column: 27, scope: !3918)
!3918 = distinct !DILexicalBlock(scope: !3908, file: !288, line: 305, column: 7)
!3919 = !DILocation(line: 305, column: 9, scope: !3918)
!3920 = !DILocation(line: 305, column: 33, scope: !3908)
!3921 = !DILocation(line: 305, column: 33, scope: !3918)
!3922 = distinct !DISubprogram(name: "__uninitialized_copy_a<__gnu_cxx::__normal_iterator<const long *, std::vector<long, std::allocator<long> > >, long *, long>", linkageName: "_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEEPllET0_T_SA_S9_RSaIT1_E", scope: !31, file: !3923, line: 331, type: !3924, scopeLine: 333, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, templateParams: !3926, retainedNodes: !212)
!3923 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/stl_uninitialized.h", directory: "")
!3924 = !DISubroutineType(types: !3925)
!3925 = !{!309, !698, !698, !309, !370}
!3926 = !{!3927, !3577, !357}
!3927 = !DITemplateTypeParameter(name: "_InputIterator", type: !698)
!3928 = !DILocalVariable(name: "__first", arg: 1, scope: !3922, file: !3923, line: 331, type: !698)
!3929 = !DILocation(line: 331, column: 43, scope: !3922)
!3930 = !DILocalVariable(name: "__last", arg: 2, scope: !3922, file: !3923, line: 331, type: !698)
!3931 = !DILocation(line: 331, column: 67, scope: !3922)
!3932 = !DILocalVariable(name: "__result", arg: 3, scope: !3922, file: !3923, line: 332, type: !309)
!3933 = !DILocation(line: 332, column: 24, scope: !3922)
!3934 = !DILocalVariable(arg: 4, scope: !3922, file: !3923, line: 332, type: !370)
!3935 = !DILocation(line: 332, column: 49, scope: !3922)
!3936 = !DILocation(line: 333, column: 38, scope: !3922)
!3937 = !DILocation(line: 333, column: 47, scope: !3922)
!3938 = !DILocation(line: 333, column: 55, scope: !3922)
!3939 = !DILocation(line: 333, column: 14, scope: !3922)
!3940 = !DILocation(line: 333, column: 7, scope: !3922)
!3941 = distinct !DISubprogram(name: "uninitialized_copy<__gnu_cxx::__normal_iterator<const long *, std::vector<long, std::allocator<long> > >, long *>", linkageName: "_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEEPlET0_T_SA_S9_", scope: !31, file: !3923, line: 126, type: !3942, scopeLine: 128, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, templateParams: !3944, retainedNodes: !212)
!3942 = !DISubroutineType(types: !3943)
!3943 = !{!309, !698, !698, !309}
!3944 = !{!3927, !3577}
!3945 = !DILocalVariable(name: "__first", arg: 1, scope: !3941, file: !3923, line: 126, type: !698)
!3946 = !DILocation(line: 126, column: 39, scope: !3941)
!3947 = !DILocalVariable(name: "__last", arg: 2, scope: !3941, file: !3923, line: 126, type: !698)
!3948 = !DILocation(line: 126, column: 63, scope: !3941)
!3949 = !DILocalVariable(name: "__result", arg: 3, scope: !3941, file: !3923, line: 127, type: !309)
!3950 = !DILocation(line: 127, column: 27, scope: !3941)
!3951 = !DILocalVariable(name: "__assignable", scope: !3941, file: !3923, line: 145, type: !506)
!3952 = !DILocation(line: 145, column: 18, scope: !3941)
!3953 = !DILocation(line: 151, column: 16, scope: !3941)
!3954 = !DILocation(line: 151, column: 25, scope: !3941)
!3955 = !DILocation(line: 151, column: 33, scope: !3941)
!3956 = !DILocation(line: 148, column: 14, scope: !3941)
!3957 = !DILocation(line: 148, column: 7, scope: !3941)
!3958 = distinct !DISubprogram(name: "__uninit_copy<__gnu_cxx::__normal_iterator<const long *, std::vector<long, std::allocator<long> > >, long *>", linkageName: "_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEEPlEET0_T_SC_SB_", scope: !3959, file: !3923, line: 108, type: !3942, scopeLine: 110, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, templateParams: !3944, declaration: !3962, retainedNodes: !212)
!3959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__uninitialized_copy<true>", scope: !31, file: !3923, line: 104, size: 8, flags: DIFlagTypePassByValue, elements: !212, templateParams: !3960, identifier: "_ZTSSt20__uninitialized_copyILb1EE")
!3960 = !{!3961}
!3961 = !DITemplateValueParameter(name: "_TrivialValueTypes", type: !53, value: i1 true)
!3962 = !DISubprogram(name: "__uninit_copy<__gnu_cxx::__normal_iterator<const long *, std::vector<long, std::allocator<long> > >, long *>", linkageName: "_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEEPlEET0_T_SC_SB_", scope: !3959, file: !3923, line: 108, type: !3942, scopeLine: 108, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0, templateParams: !3944)
!3963 = !DILocalVariable(name: "__first", arg: 1, scope: !3958, file: !3923, line: 108, type: !698)
!3964 = !DILocation(line: 108, column: 38, scope: !3958)
!3965 = !DILocalVariable(name: "__last", arg: 2, scope: !3958, file: !3923, line: 108, type: !698)
!3966 = !DILocation(line: 108, column: 62, scope: !3958)
!3967 = !DILocalVariable(name: "__result", arg: 3, scope: !3958, file: !3923, line: 109, type: !309)
!3968 = !DILocation(line: 109, column: 26, scope: !3958)
!3969 = !DILocation(line: 110, column: 28, scope: !3958)
!3970 = !DILocation(line: 110, column: 37, scope: !3958)
!3971 = !DILocation(line: 110, column: 45, scope: !3958)
!3972 = !DILocation(line: 110, column: 18, scope: !3958)
!3973 = !DILocation(line: 110, column: 11, scope: !3958)
!3974 = distinct !DISubprogram(name: "copy<__gnu_cxx::__normal_iterator<const long *, std::vector<long, std::allocator<long> > >, long *>", linkageName: "_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEEPlET0_T_SA_S9_", scope: !31, file: !3975, line: 611, type: !3942, scopeLine: 612, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, templateParams: !3976, retainedNodes: !212)
!3975 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/stl_algobase.h", directory: "")
!3976 = !{!3977, !3978}
!3977 = !DITemplateTypeParameter(name: "_II", type: !698)
!3978 = !DITemplateTypeParameter(name: "_OI", type: !309)
!3979 = !DILocalVariable(name: "__first", arg: 1, scope: !3974, file: !3975, line: 611, type: !698)
!3980 = !DILocation(line: 611, column: 14, scope: !3974)
!3981 = !DILocalVariable(name: "__last", arg: 2, scope: !3974, file: !3975, line: 611, type: !698)
!3982 = !DILocation(line: 611, column: 27, scope: !3974)
!3983 = !DILocalVariable(name: "__result", arg: 3, scope: !3974, file: !3975, line: 611, type: !309)
!3984 = !DILocation(line: 611, column: 39, scope: !3974)
!3985 = !DILocation(line: 620, column: 26, scope: !3974)
!3986 = !DILocation(line: 620, column: 8, scope: !3974)
!3987 = !DILocation(line: 620, column: 54, scope: !3974)
!3988 = !DILocation(line: 620, column: 36, scope: !3974)
!3989 = !DILocation(line: 620, column: 63, scope: !3974)
!3990 = !DILocation(line: 619, column: 14, scope: !3974)
!3991 = !DILocation(line: 619, column: 7, scope: !3974)
!3992 = distinct !DISubprogram(name: "__miter_base<__gnu_cxx::__normal_iterator<const long *, std::vector<long, std::allocator<long> > > >", linkageName: "_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEEET_S8_", scope: !31, file: !3993, line: 560, type: !3994, scopeLine: 561, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, templateParams: !3996, retainedNodes: !212)
!3993 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/cpp_type_traits.h", directory: "")
!3994 = !DISubroutineType(types: !3995)
!3995 = !{!698, !698}
!3996 = !{!3997}
!3997 = !DITemplateTypeParameter(name: "_Iterator", type: !698)
!3998 = !DILocalVariable(name: "__it", arg: 1, scope: !3992, file: !3993, line: 560, type: !698)
!3999 = !DILocation(line: 560, column: 28, scope: !3992)
!4000 = !DILocation(line: 561, column: 14, scope: !3992)
!4001 = !DILocation(line: 561, column: 7, scope: !3992)
!4002 = distinct !DISubprogram(name: "__copy_move_a<false, __gnu_cxx::__normal_iterator<const long *, std::vector<long, std::allocator<long> > >, long *>", linkageName: "_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEEPlET1_T0_SA_S9_", scope: !31, file: !3975, line: 527, type: !3942, scopeLine: 528, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, templateParams: !4003, retainedNodes: !212)
!4003 = !{!4004, !3977, !3978}
!4004 = !DITemplateValueParameter(name: "_IsMove", type: !53, value: i1 false)
!4005 = !DILocalVariable(name: "__first", arg: 1, scope: !4002, file: !3975, line: 527, type: !698)
!4006 = !DILocation(line: 527, column: 23, scope: !4002)
!4007 = !DILocalVariable(name: "__last", arg: 2, scope: !4002, file: !3975, line: 527, type: !698)
!4008 = !DILocation(line: 527, column: 36, scope: !4002)
!4009 = !DILocalVariable(name: "__result", arg: 3, scope: !4002, file: !3975, line: 527, type: !309)
!4010 = !DILocation(line: 527, column: 48, scope: !4002)
!4011 = !DILocation(line: 530, column: 50, scope: !4002)
!4012 = !DILocation(line: 530, column: 32, scope: !4002)
!4013 = !DILocation(line: 531, column: 29, scope: !4002)
!4014 = !DILocation(line: 531, column: 11, scope: !4002)
!4015 = !DILocation(line: 532, column: 29, scope: !4002)
!4016 = !DILocation(line: 532, column: 11, scope: !4002)
!4017 = !DILocation(line: 530, column: 3, scope: !4002)
!4018 = !DILocation(line: 529, column: 14, scope: !4002)
!4019 = !DILocation(line: 529, column: 7, scope: !4002)
!4020 = distinct !DISubprogram(name: "__niter_base<const long *, std::vector<long, std::allocator<long> > >", linkageName: "_ZSt12__niter_baseIPKlSt6vectorIlSaIlEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE", scope: !31, file: !638, line: 1291, type: !4021, scopeLine: 1293, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, templateParams: !750, retainedNodes: !212)
!4021 = !DISubroutineType(types: !4022)
!4022 = !{!341, !698}
!4023 = !DILocalVariable(name: "__it", arg: 1, scope: !4020, file: !638, line: 1291, type: !698)
!4024 = !DILocation(line: 1291, column: 70, scope: !4020)
!4025 = !DILocation(line: 1293, column: 19, scope: !4020)
!4026 = !DILocation(line: 1293, column: 7, scope: !4020)
!4027 = distinct !DISubprogram(name: "__niter_base<long *>", linkageName: "_ZSt12__niter_baseIPlET_S1_", scope: !31, file: !3975, line: 313, type: !4028, scopeLine: 315, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, templateParams: !657, retainedNodes: !212)
!4028 = !DISubroutineType(types: !4029)
!4029 = !{!309, !309}
!4030 = !DILocalVariable(name: "__it", arg: 1, scope: !4027, file: !3975, line: 313, type: !309)
!4031 = !DILocation(line: 313, column: 28, scope: !4027)
!4032 = !DILocation(line: 315, column: 14, scope: !4027)
!4033 = !DILocation(line: 315, column: 7, scope: !4027)
!4034 = distinct !DISubprogram(name: "__copy_move_a1<false, const long *, long *>", linkageName: "_ZSt14__copy_move_a1ILb0EPKlPlET1_T0_S4_S3_", scope: !31, file: !3975, line: 521, type: !4035, scopeLine: 522, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, templateParams: !4037, retainedNodes: !212)
!4035 = !DISubroutineType(types: !4036)
!4036 = !{!309, !341, !341, !309}
!4037 = !{!4004, !4038, !3978}
!4038 = !DITemplateTypeParameter(name: "_II", type: !341)
!4039 = !DILocalVariable(name: "__first", arg: 1, scope: !4034, file: !3975, line: 521, type: !341)
!4040 = !DILocation(line: 521, column: 24, scope: !4034)
!4041 = !DILocalVariable(name: "__last", arg: 2, scope: !4034, file: !3975, line: 521, type: !341)
!4042 = !DILocation(line: 521, column: 37, scope: !4034)
!4043 = !DILocalVariable(name: "__result", arg: 3, scope: !4034, file: !3975, line: 521, type: !309)
!4044 = !DILocation(line: 521, column: 49, scope: !4034)
!4045 = !DILocation(line: 522, column: 43, scope: !4034)
!4046 = !DILocation(line: 522, column: 52, scope: !4034)
!4047 = !DILocation(line: 522, column: 60, scope: !4034)
!4048 = !DILocation(line: 522, column: 14, scope: !4034)
!4049 = !DILocation(line: 522, column: 7, scope: !4034)
!4050 = distinct !DISubprogram(name: "__niter_wrap<long *>", linkageName: "_ZSt12__niter_wrapIPlET_RKS1_S1_", scope: !31, file: !3975, line: 335, type: !4051, scopeLine: 336, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, templateParams: !657, retainedNodes: !212)
!4051 = !DISubroutineType(types: !4052)
!4052 = !{!309, !648, !309}
!4053 = !DILocalVariable(arg: 1, scope: !4050, file: !3975, line: 335, type: !648)
!4054 = !DILocation(line: 335, column: 34, scope: !4050)
!4055 = !DILocalVariable(name: "__res", arg: 2, scope: !4050, file: !3975, line: 335, type: !309)
!4056 = !DILocation(line: 335, column: 46, scope: !4050)
!4057 = !DILocation(line: 336, column: 14, scope: !4050)
!4058 = !DILocation(line: 336, column: 7, scope: !4050)
!4059 = distinct !DISubprogram(name: "__copy_move_a2<false, const long *, long *>", linkageName: "_ZSt14__copy_move_a2ILb0EPKlPlET1_T0_S4_S3_", scope: !31, file: !3975, line: 486, type: !4035, scopeLine: 487, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, templateParams: !4037, retainedNodes: !212)
!4060 = !DILocalVariable(name: "__first", arg: 1, scope: !4059, file: !3975, line: 486, type: !341)
!4061 = !DILocation(line: 486, column: 24, scope: !4059)
!4062 = !DILocalVariable(name: "__last", arg: 2, scope: !4059, file: !3975, line: 486, type: !341)
!4063 = !DILocation(line: 486, column: 37, scope: !4059)
!4064 = !DILocalVariable(name: "__result", arg: 3, scope: !4059, file: !3975, line: 486, type: !309)
!4065 = !DILocation(line: 486, column: 49, scope: !4059)
!4066 = !DILocation(line: 495, column: 31, scope: !4059)
!4067 = !DILocation(line: 495, column: 40, scope: !4059)
!4068 = !DILocation(line: 495, column: 48, scope: !4059)
!4069 = !DILocation(line: 494, column: 14, scope: !4059)
!4070 = !DILocation(line: 494, column: 7, scope: !4059)
!4071 = distinct !DISubprogram(name: "__copy_m<long>", linkageName: "_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIlEEPT_PKS3_S6_S4_", scope: !4072, file: !3975, line: 420, type: !4035, scopeLine: 421, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, templateParams: !356, declaration: !4076, retainedNodes: !212)
!4072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__copy_move<false, true, std::random_access_iterator_tag>", scope: !31, file: !3975, line: 415, size: 8, flags: DIFlagTypePassByValue, elements: !212, templateParams: !4073, identifier: "_ZTSSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE")
!4073 = !{!4004, !4074, !4075}
!4074 = !DITemplateValueParameter(name: "_IsSimple", type: !53, value: i1 true)
!4075 = !DITemplateTypeParameter(name: "_Category", type: !2862)
!4076 = !DISubprogram(name: "__copy_m<long>", linkageName: "_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIlEEPT_PKS3_S6_S4_", scope: !4072, file: !3975, line: 420, type: !4035, scopeLine: 420, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0, templateParams: !356)
!4077 = !DILocalVariable(name: "__first", arg: 1, scope: !4071, file: !3975, line: 420, type: !341)
!4078 = !DILocation(line: 420, column: 22, scope: !4071)
!4079 = !DILocalVariable(name: "__last", arg: 2, scope: !4071, file: !3975, line: 420, type: !341)
!4080 = !DILocation(line: 420, column: 42, scope: !4071)
!4081 = !DILocalVariable(name: "__result", arg: 3, scope: !4071, file: !3975, line: 420, type: !309)
!4082 = !DILocation(line: 420, column: 55, scope: !4071)
!4083 = !DILocalVariable(name: "_Num", scope: !4071, file: !3975, line: 429, type: !4084)
!4084 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !680)
!4085 = !DILocation(line: 429, column: 20, scope: !4071)
!4086 = !DILocation(line: 429, column: 27, scope: !4071)
!4087 = !DILocation(line: 429, column: 36, scope: !4071)
!4088 = !DILocation(line: 429, column: 34, scope: !4071)
!4089 = !DILocation(line: 430, column: 8, scope: !4090)
!4090 = distinct !DILexicalBlock(scope: !4071, file: !3975, line: 430, column: 8)
!4091 = !DILocation(line: 430, column: 8, scope: !4071)
!4092 = !DILocation(line: 431, column: 24, scope: !4090)
!4093 = !DILocation(line: 431, column: 6, scope: !4090)
!4094 = !DILocation(line: 431, column: 34, scope: !4090)
!4095 = !DILocation(line: 431, column: 57, scope: !4090)
!4096 = !DILocation(line: 431, column: 55, scope: !4090)
!4097 = !DILocation(line: 432, column: 11, scope: !4071)
!4098 = !DILocation(line: 432, column: 22, scope: !4071)
!4099 = !DILocation(line: 432, column: 20, scope: !4071)
!4100 = !DILocation(line: 432, column: 4, scope: !4071)
!4101 = distinct !DISubprogram(name: "_Vector_impl", linkageName: "_ZNSt12_Vector_baseIlSaIlEE12_Vector_implC2ERKS0_", scope: !294, file: !288, line: 136, type: !433, scopeLine: 138, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !432, retainedNodes: !212)
!4102 = !DILocalVariable(name: "this", arg: 1, scope: !4101, type: !3620, flags: DIFlagArtificial | DIFlagObjectPointer)
!4103 = !DILocation(line: 0, scope: !4101)
!4104 = !DILocalVariable(name: "__a", arg: 2, scope: !4101, file: !288, line: 136, type: !435)
!4105 = !DILocation(line: 136, column: 37, scope: !4101)
!4106 = !DILocation(line: 138, column: 2, scope: !4101)
!4107 = !DILocation(line: 137, column: 19, scope: !4101)
!4108 = !DILocation(line: 137, column: 4, scope: !4101)
!4109 = !DILocation(line: 136, column: 2, scope: !4101)
!4110 = !DILocation(line: 138, column: 4, scope: !4101)
!4111 = distinct !DISubprogram(name: "_M_create_storage", linkageName: "_ZNSt12_Vector_baseIlSaIlEE17_M_create_storageEm", scope: !291, file: !288, line: 359, type: !471, scopeLine: 360, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !496, retainedNodes: !212)
!4112 = !DILocalVariable(name: "this", arg: 1, scope: !4111, type: !3568, flags: DIFlagArtificial | DIFlagObjectPointer)
!4113 = !DILocation(line: 0, scope: !4111)
!4114 = !DILocalVariable(name: "__n", arg: 2, scope: !4111, file: !288, line: 359, type: !210)
!4115 = !DILocation(line: 359, column: 32, scope: !4111)
!4116 = !DILocation(line: 361, column: 45, scope: !4111)
!4117 = !DILocation(line: 361, column: 33, scope: !4111)
!4118 = !DILocation(line: 361, column: 8, scope: !4111)
!4119 = !DILocation(line: 361, column: 2, scope: !4111)
!4120 = !DILocation(line: 361, column: 16, scope: !4111)
!4121 = !DILocation(line: 361, column: 25, scope: !4111)
!4122 = !DILocation(line: 362, column: 34, scope: !4111)
!4123 = !DILocation(line: 362, column: 28, scope: !4111)
!4124 = !DILocation(line: 362, column: 42, scope: !4111)
!4125 = !DILocation(line: 362, column: 8, scope: !4111)
!4126 = !DILocation(line: 362, column: 2, scope: !4111)
!4127 = !DILocation(line: 362, column: 16, scope: !4111)
!4128 = !DILocation(line: 362, column: 26, scope: !4111)
!4129 = !DILocation(line: 363, column: 42, scope: !4111)
!4130 = !DILocation(line: 363, column: 36, scope: !4111)
!4131 = !DILocation(line: 363, column: 50, scope: !4111)
!4132 = !DILocation(line: 363, column: 61, scope: !4111)
!4133 = !DILocation(line: 363, column: 59, scope: !4111)
!4134 = !DILocation(line: 363, column: 8, scope: !4111)
!4135 = !DILocation(line: 363, column: 2, scope: !4111)
!4136 = !DILocation(line: 363, column: 16, scope: !4111)
!4137 = !DILocation(line: 363, column: 34, scope: !4111)
!4138 = !DILocation(line: 364, column: 7, scope: !4111)
!4139 = distinct !DISubprogram(name: "_M_allocate", linkageName: "_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm", scope: !291, file: !288, line: 343, type: !491, scopeLine: 344, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !490, retainedNodes: !212)
!4140 = !DILocalVariable(name: "this", arg: 1, scope: !4139, type: !3568, flags: DIFlagArtificial | DIFlagObjectPointer)
!4141 = !DILocation(line: 0, scope: !4139)
!4142 = !DILocalVariable(name: "__n", arg: 2, scope: !4139, file: !288, line: 343, type: !210)
!4143 = !DILocation(line: 343, column: 26, scope: !4139)
!4144 = !DILocation(line: 346, column: 9, scope: !4139)
!4145 = !DILocation(line: 346, column: 13, scope: !4139)
!4146 = !DILocation(line: 346, column: 34, scope: !4139)
!4147 = !DILocation(line: 346, column: 43, scope: !4139)
!4148 = !DILocation(line: 346, column: 20, scope: !4139)
!4149 = !DILocation(line: 346, column: 2, scope: !4139)
!4150 = distinct !DISubprogram(name: "allocate", linkageName: "_ZNSt16allocator_traitsISaIlEE8allocateERS0_m", scope: !303, file: !236, line: 463, type: !306, scopeLine: 464, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !305, retainedNodes: !212)
!4151 = !DILocalVariable(name: "__a", arg: 1, scope: !4150, file: !236, line: 463, type: !310)
!4152 = !DILocation(line: 463, column: 32, scope: !4150)
!4153 = !DILocalVariable(name: "__n", arg: 2, scope: !4150, file: !236, line: 463, type: !247)
!4154 = !DILocation(line: 463, column: 47, scope: !4150)
!4155 = !DILocation(line: 464, column: 16, scope: !4150)
!4156 = !DILocation(line: 464, column: 29, scope: !4150)
!4157 = !DILocation(line: 464, column: 20, scope: !4150)
!4158 = !DILocation(line: 464, column: 9, scope: !4150)
!4159 = distinct !DISubprogram(name: "allocate", linkageName: "_ZN9__gnu_cxx13new_allocatorIlE8allocateEmPKv", scope: !317, file: !318, line: 103, type: !346, scopeLine: 104, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !345, retainedNodes: !212)
!4160 = !DILocalVariable(name: "this", arg: 1, scope: !4159, type: !3639, flags: DIFlagArtificial | DIFlagObjectPointer)
!4161 = !DILocation(line: 0, scope: !4159)
!4162 = !DILocalVariable(name: "__n", arg: 2, scope: !4159, file: !318, line: 103, type: !348)
!4163 = !DILocation(line: 103, column: 26, scope: !4159)
!4164 = !DILocalVariable(arg: 3, scope: !4159, file: !318, line: 103, type: !45)
!4165 = !DILocation(line: 103, column: 43, scope: !4159)
!4166 = !DILocation(line: 111, column: 23, scope: !4167)
!4167 = distinct !DILexicalBlock(scope: !4159, file: !318, line: 111, column: 6)
!4168 = !DILocation(line: 111, column: 35, scope: !4167)
!4169 = !DILocation(line: 111, column: 27, scope: !4167)
!4170 = !DILocation(line: 111, column: 6, scope: !4159)
!4171 = !DILocation(line: 115, column: 10, scope: !4172)
!4172 = distinct !DILexicalBlock(scope: !4173, file: !318, line: 115, column: 10)
!4173 = distinct !DILexicalBlock(scope: !4167, file: !318, line: 112, column: 4)
!4174 = !DILocation(line: 115, column: 14, scope: !4172)
!4175 = !DILocation(line: 115, column: 10, scope: !4173)
!4176 = !DILocation(line: 116, column: 8, scope: !4172)
!4177 = !DILocation(line: 117, column: 6, scope: !4173)
!4178 = !DILocation(line: 127, column: 42, scope: !4159)
!4179 = !DILocation(line: 127, column: 46, scope: !4159)
!4180 = !DILocation(line: 127, column: 27, scope: !4159)
!4181 = !DILocation(line: 127, column: 9, scope: !4159)
!4182 = !DILocation(line: 127, column: 2, scope: !4159)
!4183 = distinct !DISubprogram(name: "_M_max_size", linkageName: "_ZNK9__gnu_cxx13new_allocatorIlE11_M_max_sizeEv", scope: !317, file: !318, line: 197, type: !353, scopeLine: 198, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !355, retainedNodes: !212)
!4184 = !DILocalVariable(name: "this", arg: 1, scope: !4183, type: !4185, flags: DIFlagArtificial | DIFlagObjectPointer)
!4185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!4186 = !DILocation(line: 0, scope: !4183)
!4187 = !DILocation(line: 200, column: 2, scope: !4183)
!4188 = distinct !DISubprogram(name: "allocator", linkageName: "_ZNSaIlEC2ERKS_", scope: !312, file: !246, line: 159, type: !363, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !362, retainedNodes: !212)
!4189 = !DILocalVariable(name: "this", arg: 1, scope: !4188, type: !3402, flags: DIFlagArtificial | DIFlagObjectPointer)
!4190 = !DILocation(line: 0, scope: !4188)
!4191 = !DILocalVariable(name: "__a", arg: 2, scope: !4188, file: !246, line: 159, type: !365)
!4192 = !DILocation(line: 159, column: 34, scope: !4188)
!4193 = !DILocation(line: 160, column: 36, scope: !4188)
!4194 = !DILocation(line: 160, column: 31, scope: !4188)
!4195 = !DILocation(line: 160, column: 9, scope: !4188)
!4196 = !DILocation(line: 160, column: 38, scope: !4188)
!4197 = distinct !DISubprogram(name: "_Vector_impl_data", linkageName: "_ZNSt12_Vector_baseIlSaIlEE17_Vector_impl_dataC2Ev", scope: !404, file: !288, line: 97, type: !412, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !411, retainedNodes: !212)
!4198 = !DILocalVariable(name: "this", arg: 1, scope: !4197, type: !4199, flags: DIFlagArtificial | DIFlagObjectPointer)
!4199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!4200 = !DILocation(line: 0, scope: !4197)
!4201 = !DILocation(line: 98, column: 4, scope: !4197)
!4202 = !DILocation(line: 98, column: 16, scope: !4197)
!4203 = !DILocation(line: 98, column: 29, scope: !4197)
!4204 = !DILocation(line: 99, column: 4, scope: !4197)
!4205 = distinct !DISubprogram(name: "new_allocator", linkageName: "_ZN9__gnu_cxx13new_allocatorIlEC2ERKS1_", scope: !317, file: !318, line: 82, type: !325, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !324, retainedNodes: !212)
!4206 = !DILocalVariable(name: "this", arg: 1, scope: !4205, type: !3639, flags: DIFlagArtificial | DIFlagObjectPointer)
!4207 = !DILocation(line: 0, scope: !4205)
!4208 = !DILocalVariable(arg: 2, scope: !4205, file: !318, line: 82, type: !327)
!4209 = !DILocation(line: 82, column: 41, scope: !4205)
!4210 = !DILocation(line: 82, column: 67, scope: !4205)
!4211 = distinct !DISubprogram(name: "select_on_container_copy_construction", linkageName: "_ZNSt16allocator_traitsISaIlEE37select_on_container_copy_constructionERKS0_", scope: !303, file: !236, line: 562, type: !385, scopeLine: 563, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !384, retainedNodes: !212)
!4212 = !DILocalVariable(name: "__rhs", arg: 1, scope: !4211, file: !236, line: 562, type: !382)
!4213 = !DILocation(line: 562, column: 67, scope: !4211)
!4214 = !DILocation(line: 563, column: 16, scope: !4211)
!4215 = !DILocation(line: 563, column: 9, scope: !4211)
!4216 = distinct !DISubprogram(name: "~new_allocator", linkageName: "_ZN9__gnu_cxx13new_allocatorIlED2Ev", scope: !317, file: !318, line: 89, type: !321, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !329, retainedNodes: !212)
!4217 = !DILocalVariable(name: "this", arg: 1, scope: !4216, type: !3639, flags: DIFlagArtificial | DIFlagObjectPointer)
!4218 = !DILocation(line: 0, scope: !4216)
!4219 = !DILocation(line: 89, column: 48, scope: !4216)
!4220 = distinct !DISubprogram(name: "_S_check_init_len", linkageName: "_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_", scope: !287, file: !288, line: 1767, type: !865, scopeLine: 1768, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !864, retainedNodes: !212)
!4221 = !DILocalVariable(name: "__n", arg: 1, scope: !4220, file: !288, line: 1767, type: !559)
!4222 = !DILocation(line: 1767, column: 35, scope: !4220)
!4223 = !DILocalVariable(name: "__a", arg: 2, scope: !4220, file: !288, line: 1767, type: !553)
!4224 = !DILocation(line: 1767, column: 62, scope: !4220)
!4225 = !DILocation(line: 1769, column: 6, scope: !4226)
!4226 = distinct !DILexicalBlock(scope: !4220, file: !288, line: 1769, column: 6)
!4227 = !DILocation(line: 1769, column: 39, scope: !4226)
!4228 = !DILocation(line: 1769, column: 24, scope: !4226)
!4229 = !DILocation(line: 1769, column: 12, scope: !4226)
!4230 = !DILocation(line: 1769, column: 10, scope: !4226)
!4231 = !DILocation(line: 1769, column: 6, scope: !4220)
!4232 = !DILocation(line: 1770, column: 4, scope: !4226)
!4233 = !DILocation(line: 1772, column: 9, scope: !4220)
!4234 = !DILocation(line: 1772, column: 2, scope: !4220)
!4235 = distinct !DISubprogram(name: "_M_default_initialize", linkageName: "_ZNSt6vectorIlSaIlEE21_M_default_initializeEm", scope: !287, file: !288, line: 1603, type: !775, scopeLine: 1604, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !849, retainedNodes: !212)
!4236 = !DILocalVariable(name: "this", arg: 1, scope: !4235, type: !3409, flags: DIFlagArtificial | DIFlagObjectPointer)
!4237 = !DILocation(line: 0, scope: !4235)
!4238 = !DILocalVariable(name: "__n", arg: 2, scope: !4235, file: !288, line: 1603, type: !559)
!4239 = !DILocation(line: 1603, column: 39, scope: !4235)
!4240 = !DILocation(line: 1606, column: 43, scope: !4235)
!4241 = !DILocation(line: 1606, column: 37, scope: !4235)
!4242 = !DILocation(line: 1606, column: 51, scope: !4235)
!4243 = !DILocation(line: 1606, column: 61, scope: !4235)
!4244 = !DILocation(line: 1607, column: 9, scope: !4235)
!4245 = !DILocation(line: 1606, column: 4, scope: !4235)
!4246 = !DILocation(line: 1605, column: 8, scope: !4235)
!4247 = !DILocation(line: 1605, column: 2, scope: !4235)
!4248 = !DILocation(line: 1605, column: 16, scope: !4235)
!4249 = !DILocation(line: 1605, column: 26, scope: !4235)
!4250 = !DILocation(line: 1608, column: 7, scope: !4235)
!4251 = distinct !DISubprogram(name: "__uninitialized_default_n_a<long *, unsigned long, long>", linkageName: "_ZSt27__uninitialized_default_n_aIPlmlET_S1_T0_RSaIT1_E", scope: !31, file: !3923, line: 702, type: !4252, scopeLine: 704, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, templateParams: !4254, retainedNodes: !212)
!4252 = !DISubroutineType(types: !4253)
!4253 = !{!309, !309, !21, !370}
!4254 = !{!3577, !4255, !357}
!4255 = !DITemplateTypeParameter(name: "_Size", type: !21)
!4256 = !DILocalVariable(name: "__first", arg: 1, scope: !4251, file: !3923, line: 702, type: !309)
!4257 = !DILocation(line: 702, column: 50, scope: !4251)
!4258 = !DILocalVariable(name: "__n", arg: 2, scope: !4251, file: !3923, line: 702, type: !21)
!4259 = !DILocation(line: 702, column: 65, scope: !4251)
!4260 = !DILocalVariable(arg: 3, scope: !4251, file: !3923, line: 703, type: !370)
!4261 = !DILocation(line: 703, column: 20, scope: !4251)
!4262 = !DILocation(line: 704, column: 45, scope: !4251)
!4263 = !DILocation(line: 704, column: 54, scope: !4251)
!4264 = !DILocation(line: 704, column: 14, scope: !4251)
!4265 = !DILocation(line: 704, column: 7, scope: !4251)
!4266 = distinct !DISubprogram(name: "__uninitialized_default_n<long *, unsigned long>", linkageName: "_ZSt25__uninitialized_default_nIPlmET_S1_T0_", scope: !31, file: !3923, line: 630, type: !4267, scopeLine: 631, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, templateParams: !4269, retainedNodes: !212)
!4267 = !DISubroutineType(types: !4268)
!4268 = !{!309, !309, !21}
!4269 = !{!3577, !4255}
!4270 = !DILocalVariable(name: "__first", arg: 1, scope: !4266, file: !3923, line: 630, type: !309)
!4271 = !DILocation(line: 630, column: 48, scope: !4266)
!4272 = !DILocalVariable(name: "__n", arg: 2, scope: !4266, file: !3923, line: 630, type: !21)
!4273 = !DILocation(line: 630, column: 63, scope: !4266)
!4274 = !DILocalVariable(name: "__can_fill", scope: !4266, file: !3923, line: 635, type: !506)
!4275 = !DILocation(line: 635, column: 22, scope: !4266)
!4276 = !DILocation(line: 640, column: 21, scope: !4266)
!4277 = !DILocation(line: 640, column: 30, scope: !4266)
!4278 = !DILocation(line: 638, column: 14, scope: !4266)
!4279 = !DILocation(line: 638, column: 7, scope: !4266)
!4280 = distinct !DISubprogram(name: "__uninit_default_n<long *, unsigned long>", linkageName: "_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPlmEET_S3_T0_", scope: !4281, file: !3923, line: 595, type: !4267, scopeLine: 596, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, templateParams: !4269, declaration: !4284, retainedNodes: !212)
!4281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__uninitialized_default_n_1<true>", scope: !31, file: !3923, line: 591, size: 8, flags: DIFlagTypePassByValue, elements: !212, templateParams: !4282, identifier: "_ZTSSt27__uninitialized_default_n_1ILb1EE")
!4282 = !{!4283}
!4283 = !DITemplateValueParameter(name: "_TrivialValueType", type: !53, value: i1 true)
!4284 = !DISubprogram(name: "__uninit_default_n<long *, unsigned long>", linkageName: "_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPlmEET_S3_T0_", scope: !4281, file: !3923, line: 595, type: !4267, scopeLine: 595, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0, templateParams: !4269)
!4285 = !DILocalVariable(name: "__first", arg: 1, scope: !4280, file: !3923, line: 595, type: !309)
!4286 = !DILocation(line: 595, column: 45, scope: !4280)
!4287 = !DILocalVariable(name: "__n", arg: 2, scope: !4280, file: !3923, line: 595, type: !21)
!4288 = !DILocation(line: 595, column: 60, scope: !4280)
!4289 = !DILocation(line: 597, column: 8, scope: !4290)
!4290 = distinct !DILexicalBlock(scope: !4280, file: !3923, line: 597, column: 8)
!4291 = !DILocation(line: 597, column: 12, scope: !4290)
!4292 = !DILocation(line: 597, column: 8, scope: !4280)
!4293 = !DILocalVariable(name: "__val", scope: !4294, file: !3923, line: 599, type: !4295)
!4294 = distinct !DILexicalBlock(scope: !4290, file: !3923, line: 598, column: 6)
!4295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4296, size: 64)
!4296 = !DIDerivedType(tag: DW_TAG_typedef, name: "value_type", scope: !656, file: !655, line: 213, baseType: !68)
!4297 = !DILocation(line: 599, column: 64, scope: !4294)
!4298 = !DILocation(line: 600, column: 23, scope: !4294)
!4299 = !DILocation(line: 600, column: 5, scope: !4294)
!4300 = !DILocation(line: 601, column: 24, scope: !4294)
!4301 = !DILocation(line: 601, column: 8, scope: !4294)
!4302 = !DILocation(line: 602, column: 8, scope: !4294)
!4303 = !DILocation(line: 603, column: 30, scope: !4294)
!4304 = !DILocation(line: 603, column: 39, scope: !4294)
!4305 = !DILocation(line: 603, column: 43, scope: !4294)
!4306 = !DILocation(line: 603, column: 49, scope: !4294)
!4307 = !DILocation(line: 603, column: 18, scope: !4294)
!4308 = !DILocation(line: 603, column: 16, scope: !4294)
!4309 = !DILocation(line: 604, column: 6, scope: !4294)
!4310 = !DILocation(line: 605, column: 11, scope: !4280)
!4311 = !DILocation(line: 605, column: 4, scope: !4280)
!4312 = distinct !DISubprogram(name: "__addressof<long>", linkageName: "_ZSt11__addressofIlEPT_RS0_", scope: !31, file: !3527, line: 49, type: !4313, scopeLine: 50, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, templateParams: !356, retainedNodes: !212)
!4313 = !DISubroutineType(types: !4314)
!4314 = !{!309, !336}
!4315 = !DILocalVariable(name: "__r", arg: 1, scope: !4312, file: !3527, line: 49, type: !336)
!4316 = !DILocation(line: 49, column: 22, scope: !4312)
!4317 = !DILocation(line: 50, column: 34, scope: !4312)
!4318 = !DILocation(line: 50, column: 7, scope: !4312)
!4319 = distinct !DISubprogram(name: "_Construct<long>", linkageName: "_ZSt10_ConstructIlJEEvPT_DpOT0_", scope: !31, file: !3649, line: 109, type: !4320, scopeLine: 110, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, templateParams: !4322, retainedNodes: !212)
!4320 = !DISubroutineType(types: !4321)
!4321 = !{null, !309}
!4322 = !{!357, !4323}
!4323 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Args", value: !212)
!4324 = !DILocalVariable(name: "__p", arg: 1, scope: !4319, file: !3649, line: 109, type: !309)
!4325 = !DILocation(line: 109, column: 21, scope: !4319)
!4326 = !DILocation(line: 119, column: 20, scope: !4319)
!4327 = !DILocation(line: 119, column: 7, scope: !4319)
!4328 = !DILocation(line: 120, column: 5, scope: !4319)
!4329 = distinct !DISubprogram(name: "fill_n<long *, unsigned long, long>", linkageName: "_ZSt6fill_nIPlmlET_S1_T0_RKT1_", scope: !31, file: !3975, line: 1144, type: !4330, scopeLine: 1145, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, templateParams: !4332, retainedNodes: !212)
!4330 = !DISubroutineType(types: !4331)
!4331 = !{!309, !309, !21, !344}
!4332 = !{!3978, !4255, !357}
!4333 = !DILocalVariable(name: "__first", arg: 1, scope: !4329, file: !3975, line: 1144, type: !309)
!4334 = !DILocation(line: 1144, column: 16, scope: !4329)
!4335 = !DILocalVariable(name: "__n", arg: 2, scope: !4329, file: !3975, line: 1144, type: !21)
!4336 = !DILocation(line: 1144, column: 31, scope: !4329)
!4337 = !DILocalVariable(name: "__value", arg: 3, scope: !4329, file: !3975, line: 1144, type: !344)
!4338 = !DILocation(line: 1144, column: 47, scope: !4329)
!4339 = !DILocation(line: 1149, column: 30, scope: !4329)
!4340 = !DILocation(line: 1149, column: 62, scope: !4329)
!4341 = !DILocation(line: 1149, column: 39, scope: !4329)
!4342 = !DILocation(line: 1149, column: 68, scope: !4329)
!4343 = !DILocation(line: 1150, column: 11, scope: !4329)
!4344 = !DILocation(line: 1149, column: 14, scope: !4329)
!4345 = !DILocation(line: 1149, column: 7, scope: !4329)
!4346 = distinct !DISubprogram(name: "__size_to_integer", linkageName: "_ZSt17__size_to_integerm", scope: !31, file: !3975, line: 1010, type: !4347, scopeLine: 1010, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, retainedNodes: !212)
!4347 = !DISubroutineType(types: !4348)
!4348 = !{!21, !21}
!4349 = !DILocalVariable(name: "__n", arg: 1, scope: !4346, file: !3975, line: 1010, type: !21)
!4350 = !DILocation(line: 1010, column: 35, scope: !4346)
!4351 = !DILocation(line: 1010, column: 49, scope: !4346)
!4352 = !DILocation(line: 1010, column: 42, scope: !4346)
!4353 = distinct !DISubprogram(name: "__iterator_category<long *>", linkageName: "_ZSt19__iterator_categoryIPlENSt15iterator_traitsIT_E17iterator_categoryERKS2_", scope: !31, file: !655, line: 238, type: !4354, scopeLine: 239, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, templateParams: !4357, retainedNodes: !212)
!4354 = !DISubroutineType(types: !4355)
!4355 = !{!4356, !648}
!4356 = !DIDerivedType(tag: DW_TAG_typedef, name: "iterator_category", scope: !656, file: !655, line: 212, baseType: !2862)
!4357 = !{!4358}
!4358 = !DITemplateTypeParameter(name: "_Iter", type: !309)
!4359 = !DILocalVariable(arg: 1, scope: !4353, file: !655, line: 238, type: !648)
!4360 = !DILocation(line: 238, column: 37, scope: !4353)
!4361 = !DILocation(line: 239, column: 7, scope: !4353)
!4362 = distinct !DISubprogram(name: "__fill_n_a<long *, unsigned long, long>", linkageName: "_ZSt10__fill_n_aIPlmlET_S1_T0_RKT1_St26random_access_iterator_tag", scope: !31, file: !3975, line: 1109, type: !4363, scopeLine: 1111, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, templateParams: !4365, retainedNodes: !212)
!4363 = !DISubroutineType(types: !4364)
!4364 = !{!309, !309, !21, !344, !2862}
!4365 = !{!4366, !4255, !357}
!4366 = !DITemplateTypeParameter(name: "_OutputIterator", type: !309)
!4367 = !DILocalVariable(name: "__first", arg: 1, scope: !4362, file: !3975, line: 1109, type: !309)
!4368 = !DILocation(line: 1109, column: 32, scope: !4362)
!4369 = !DILocalVariable(name: "__n", arg: 2, scope: !4362, file: !3975, line: 1109, type: !21)
!4370 = !DILocation(line: 1109, column: 47, scope: !4362)
!4371 = !DILocalVariable(name: "__value", arg: 3, scope: !4362, file: !3975, line: 1109, type: !344)
!4372 = !DILocation(line: 1109, column: 63, scope: !4362)
!4373 = !DILocalVariable(arg: 4, scope: !4362, file: !3975, line: 1110, type: !2862)
!4374 = !DILocation(line: 1110, column: 40, scope: !4362)
!4375 = !DILocation(line: 1115, column: 11, scope: !4376)
!4376 = distinct !DILexicalBlock(scope: !4362, file: !3975, line: 1115, column: 11)
!4377 = !DILocation(line: 1115, column: 15, scope: !4376)
!4378 = !DILocation(line: 1115, column: 11, scope: !4362)
!4379 = !DILocation(line: 1116, column: 9, scope: !4376)
!4380 = !DILocation(line: 1116, column: 2, scope: !4376)
!4381 = !DILocation(line: 1120, column: 21, scope: !4362)
!4382 = !DILocation(line: 1120, column: 30, scope: !4362)
!4383 = !DILocation(line: 1120, column: 40, scope: !4362)
!4384 = !DILocation(line: 1120, column: 38, scope: !4362)
!4385 = !DILocation(line: 1120, column: 45, scope: !4362)
!4386 = !DILocation(line: 1120, column: 7, scope: !4362)
!4387 = !DILocation(line: 1121, column: 14, scope: !4362)
!4388 = !DILocation(line: 1121, column: 24, scope: !4362)
!4389 = !DILocation(line: 1121, column: 22, scope: !4362)
!4390 = !DILocation(line: 1121, column: 7, scope: !4362)
!4391 = !DILocation(line: 1122, column: 5, scope: !4362)
!4392 = distinct !DISubprogram(name: "__fill_a<long *, long>", linkageName: "_ZSt8__fill_aIPllEvT_S1_RKT0_", scope: !31, file: !3975, line: 968, type: !4393, scopeLine: 969, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, templateParams: !4395, retainedNodes: !212)
!4393 = !DISubroutineType(types: !4394)
!4394 = !{null, !309, !309, !344}
!4395 = !{!4396, !357}
!4396 = !DITemplateTypeParameter(name: "_FIte", type: !309)
!4397 = !DILocalVariable(name: "__first", arg: 1, scope: !4392, file: !3975, line: 968, type: !309)
!4398 = !DILocation(line: 968, column: 20, scope: !4392)
!4399 = !DILocalVariable(name: "__last", arg: 2, scope: !4392, file: !3975, line: 968, type: !309)
!4400 = !DILocation(line: 968, column: 35, scope: !4392)
!4401 = !DILocalVariable(name: "__value", arg: 3, scope: !4392, file: !3975, line: 968, type: !344)
!4402 = !DILocation(line: 968, column: 54, scope: !4392)
!4403 = !DILocation(line: 969, column: 22, scope: !4392)
!4404 = !DILocation(line: 969, column: 31, scope: !4392)
!4405 = !DILocation(line: 969, column: 39, scope: !4392)
!4406 = !DILocation(line: 969, column: 7, scope: !4392)
!4407 = !DILocation(line: 969, column: 49, scope: !4392)
!4408 = distinct !DISubprogram(name: "__fill_a1<long *, long>", linkageName: "_ZSt9__fill_a1IPllEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_", scope: !31, file: !3975, line: 919, type: !4409, scopeLine: 921, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, templateParams: !3576, retainedNodes: !212)
!4409 = !DISubroutineType(types: !4410)
!4410 = !{!4411, !309, !309, !344}
!4411 = !DIDerivedType(tag: DW_TAG_typedef, name: "__type", scope: !4412, file: !2831, line: 50, baseType: null)
!4412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__enable_if<true, void>", scope: !94, file: !2831, line: 49, size: 8, flags: DIFlagTypePassByValue, elements: !212, templateParams: !4413, identifier: "_ZTSN9__gnu_cxx11__enable_ifILb1EvEE")
!4413 = !{!3664, !4414}
!4414 = !DITemplateTypeParameter(type: null)
!4415 = !DILocalVariable(name: "__first", arg: 1, scope: !4408, file: !3975, line: 919, type: !309)
!4416 = !DILocation(line: 919, column: 32, scope: !4408)
!4417 = !DILocalVariable(name: "__last", arg: 2, scope: !4408, file: !3975, line: 919, type: !309)
!4418 = !DILocation(line: 919, column: 58, scope: !4408)
!4419 = !DILocalVariable(name: "__value", arg: 3, scope: !4408, file: !3975, line: 920, type: !344)
!4420 = !DILocation(line: 920, column: 19, scope: !4408)
!4421 = !DILocalVariable(name: "__tmp", scope: !4408, file: !3975, line: 922, type: !342)
!4422 = !DILocation(line: 922, column: 17, scope: !4408)
!4423 = !DILocation(line: 922, column: 25, scope: !4408)
!4424 = !DILocation(line: 923, column: 7, scope: !4408)
!4425 = !DILocation(line: 923, column: 14, scope: !4426)
!4426 = distinct !DILexicalBlock(scope: !4427, file: !3975, line: 923, column: 7)
!4427 = distinct !DILexicalBlock(scope: !4408, file: !3975, line: 923, column: 7)
!4428 = !DILocation(line: 923, column: 25, scope: !4426)
!4429 = !DILocation(line: 923, column: 22, scope: !4426)
!4430 = !DILocation(line: 923, column: 7, scope: !4427)
!4431 = !DILocation(line: 924, column: 13, scope: !4426)
!4432 = !DILocation(line: 924, column: 3, scope: !4426)
!4433 = !DILocation(line: 924, column: 11, scope: !4426)
!4434 = !DILocation(line: 924, column: 2, scope: !4426)
!4435 = !DILocation(line: 923, column: 33, scope: !4426)
!4436 = !DILocation(line: 923, column: 7, scope: !4426)
!4437 = distinct !{!4437, !4430, !4438}
!4438 = !DILocation(line: 924, column: 13, scope: !4427)
!4439 = !DILocation(line: 925, column: 5, scope: !4408)
!4440 = distinct !DISubprogram(name: "_S_max_size", linkageName: "_ZNSt6vectorIlSaIlEE11_S_max_sizeERKS0_", scope: !287, file: !288, line: 1776, type: !868, scopeLine: 1777, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !867, retainedNodes: !212)
!4441 = !DILocalVariable(name: "__a", arg: 1, scope: !4440, file: !288, line: 1776, type: !870)
!4442 = !DILocation(line: 1776, column: 41, scope: !4440)
!4443 = !DILocalVariable(name: "__diffmax", scope: !4440, file: !288, line: 1781, type: !4444)
!4444 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !210)
!4445 = !DILocation(line: 1781, column: 15, scope: !4440)
!4446 = !DILocalVariable(name: "__allocmax", scope: !4440, file: !288, line: 1783, type: !4444)
!4447 = !DILocation(line: 1783, column: 15, scope: !4440)
!4448 = !DILocation(line: 1783, column: 52, scope: !4440)
!4449 = !DILocation(line: 1783, column: 28, scope: !4440)
!4450 = !DILocation(line: 1784, column: 9, scope: !4440)
!4451 = !DILocation(line: 1784, column: 2, scope: !4440)
!4452 = distinct !DISubprogram(name: "max_size", linkageName: "_ZNSt16allocator_traitsISaIlEE8max_sizeERKS0_", scope: !303, file: !236, line: 547, type: !379, scopeLine: 548, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !378, retainedNodes: !212)
!4453 = !DILocalVariable(name: "__a", arg: 1, scope: !4452, file: !236, line: 547, type: !382)
!4454 = !DILocation(line: 547, column: 38, scope: !4452)
!4455 = !DILocation(line: 550, column: 9, scope: !4452)
!4456 = !DILocation(line: 550, column: 13, scope: !4452)
!4457 = !DILocation(line: 550, column: 2, scope: !4452)
!4458 = distinct !DISubprogram(name: "min<unsigned long>", linkageName: "_ZSt3minImERKT_S2_S2_", scope: !31, file: !3975, line: 230, type: !4459, scopeLine: 231, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, templateParams: !3218, retainedNodes: !212)
!4459 = !DISubroutineType(types: !4460)
!4460 = !{!4461, !4461, !4461}
!4461 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !4462, size: 64)
!4462 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!4463 = !DILocalVariable(name: "__a", arg: 1, scope: !4458, file: !3975, line: 230, type: !4461)
!4464 = !DILocation(line: 230, column: 20, scope: !4458)
!4465 = !DILocalVariable(name: "__b", arg: 2, scope: !4458, file: !3975, line: 230, type: !4461)
!4466 = !DILocation(line: 230, column: 36, scope: !4458)
!4467 = !DILocation(line: 235, column: 11, scope: !4468)
!4468 = distinct !DILexicalBlock(scope: !4458, file: !3975, line: 235, column: 11)
!4469 = !DILocation(line: 235, column: 17, scope: !4468)
!4470 = !DILocation(line: 235, column: 15, scope: !4468)
!4471 = !DILocation(line: 235, column: 11, scope: !4458)
!4472 = !DILocation(line: 236, column: 9, scope: !4468)
!4473 = !DILocation(line: 236, column: 2, scope: !4468)
!4474 = !DILocation(line: 237, column: 14, scope: !4458)
!4475 = !DILocation(line: 237, column: 7, scope: !4458)
!4476 = !DILocation(line: 238, column: 5, scope: !4458)
!4477 = distinct !DISubprogram(name: "max_size", linkageName: "_ZNK9__gnu_cxx13new_allocatorIlE8max_sizeEv", scope: !317, file: !318, line: 154, type: !353, scopeLine: 155, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !352, retainedNodes: !212)
!4478 = !DILocalVariable(name: "this", arg: 1, scope: !4477, type: !4185, flags: DIFlagArtificial | DIFlagObjectPointer)
!4479 = !DILocation(line: 0, scope: !4477)
!4480 = !DILocation(line: 155, column: 16, scope: !4477)
!4481 = !DILocation(line: 155, column: 9, scope: !4477)
!4482 = distinct !DISubprogram(name: "new_allocator", linkageName: "_ZN9__gnu_cxx13new_allocatorIlEC2Ev", scope: !317, file: !318, line: 79, type: !321, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !320, retainedNodes: !212)
!4483 = !DILocalVariable(name: "this", arg: 1, scope: !4482, type: !3639, flags: DIFlagArtificial | DIFlagObjectPointer)
!4484 = !DILocation(line: 0, scope: !4482)
!4485 = !DILocation(line: 79, column: 47, scope: !4482)
!4486 = distinct !DISubprogram(name: "TensorBuffer", linkageName: "_ZN10tensorflow12TensorBufferC2EPv", scope: !1912, file: !1907, line: 78, type: !4487, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !4490, retainedNodes: !212)
!4487 = !DISubroutineType(types: !4488)
!4488 = !{null, !4489, !38}
!4489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1912, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!4490 = !DISubprogram(name: "TensorBuffer", scope: !1912, file: !1907, line: 78, type: !4487, scopeLine: 78, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!4491 = !DILocalVariable(name: "this", arg: 1, scope: !4486, type: !1911, flags: DIFlagArtificial | DIFlagObjectPointer)
!4492 = !DILocation(line: 0, scope: !4486)
!4493 = !DILocalVariable(name: "data_ptr", arg: 2, scope: !4486, file: !1907, line: 78, type: !38)
!4494 = !DILocation(line: 78, column: 31, scope: !4486)
!4495 = !DILocation(line: 78, column: 59, scope: !4486)
!4496 = !DILocation(line: 78, column: 12, scope: !4486)
!4497 = !DILocation(line: 78, column: 43, scope: !4486)
!4498 = !DILocation(line: 78, column: 49, scope: !4486)
!4499 = !DILocation(line: 78, column: 60, scope: !4486)
!4500 = distinct !DISubprogram(name: "~TF_ManagedBuffer", linkageName: "_ZN16TF_ManagedBufferD2Ev", scope: !3028, file: !2405, line: 56, type: !3043, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !3042, retainedNodes: !212)
!4501 = !DILocalVariable(name: "this", arg: 1, scope: !4500, type: !3027, flags: DIFlagArtificial | DIFlagObjectPointer)
!4502 = !DILocation(line: 0, scope: !4500)
!4503 = !DILocation(line: 56, column: 32, scope: !4500)
!4504 = !DILocation(line: 57, column: 7, scope: !4505)
!4505 = distinct !DILexicalBlock(scope: !4500, file: !2405, line: 56, column: 32)
!4506 = !DILocation(line: 57, column: 21, scope: !4505)
!4507 = !DILocation(line: 57, column: 29, scope: !4505)
!4508 = !DILocation(line: 57, column: 35, scope: !4505)
!4509 = !DILocation(line: 57, column: 5, scope: !4505)
!4510 = !DILocation(line: 58, column: 3, scope: !4505)
!4511 = !DILocation(line: 58, column: 3, scope: !4500)
!4512 = distinct !DISubprogram(name: "~TF_ManagedBuffer", linkageName: "_ZN16TF_ManagedBufferD0Ev", scope: !3028, file: !2405, line: 56, type: !3043, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !3042, retainedNodes: !212)
!4513 = !DILocalVariable(name: "this", arg: 1, scope: !4512, type: !3027, flags: DIFlagArtificial | DIFlagObjectPointer)
!4514 = !DILocation(line: 0, scope: !4512)
!4515 = !DILocation(line: 56, column: 32, scope: !4512)
!4516 = !DILocation(line: 58, column: 3, scope: !4512)
!4517 = distinct !DISubprogram(name: "size", linkageName: "_ZNK16TF_ManagedBuffer4sizeEv", scope: !3028, file: !2405, line: 60, type: !3046, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !3045, retainedNodes: !212)
!4518 = !DILocalVariable(name: "this", arg: 1, scope: !4517, type: !4519, flags: DIFlagArtificial | DIFlagObjectPointer)
!4519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3049, size: 64)
!4520 = !DILocation(line: 0, scope: !4517)
!4521 = !DILocation(line: 60, column: 41, scope: !4517)
!4522 = !DILocation(line: 60, column: 34, scope: !4517)
!4523 = distinct !DISubprogram(name: "root_buffer", linkageName: "_ZN16TF_ManagedBuffer11root_bufferEv", scope: !3028, file: !2405, line: 61, type: !3051, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !3050, retainedNodes: !212)
!4524 = !DILocalVariable(name: "this", arg: 1, scope: !4523, type: !3027, flags: DIFlagArtificial | DIFlagObjectPointer)
!4525 = !DILocation(line: 0, scope: !4523)
!4526 = !DILocation(line: 61, column: 49, scope: !4523)
!4527 = !DILocation(line: 61, column: 42, scope: !4523)
!4528 = distinct !DISubprogram(name: "FillAllocationDescription", linkageName: "_ZNK16TF_ManagedBuffer25FillAllocationDescriptionEPN10tensorflow21AllocationDescriptionE", scope: !3028, file: !2405, line: 62, type: !3054, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !3053, retainedNodes: !212)
!4529 = !DILocalVariable(name: "this", arg: 1, scope: !4528, type: !4519, flags: DIFlagArtificial | DIFlagObjectPointer)
!4530 = !DILocation(line: 0, scope: !4528)
!4531 = !DILocalVariable(arg: 2, scope: !4528, file: !2405, line: 63, type: !3056)
!4532 = !DILocation(line: 63, column: 52, scope: !4528)
!4533 = !DILocation(line: 67, column: 3, scope: !4528)
!4534 = distinct !DISubprogram(name: "OwnsMemory", linkageName: "_ZNK16TF_ManagedBuffer10OwnsMemoryEv", scope: !3028, file: !2405, line: 69, type: !3059, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !3058, retainedNodes: !212)
!4535 = !DILocalVariable(name: "this", arg: 1, scope: !4534, type: !4519, flags: DIFlagArtificial | DIFlagObjectPointer)
!4536 = !DILocation(line: 0, scope: !4534)
!4537 = !DILocation(line: 69, column: 45, scope: !4534)
!4538 = !DILocation(line: 69, column: 38, scope: !4534)
!4539 = distinct !DISubprogram(name: "GetMemoryType", linkageName: "_ZNK10tensorflow12TensorBuffer13GetMemoryTypeEv", scope: !1912, file: !1907, line: 111, type: !4540, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !4544, retainedNodes: !212)
!4540 = !DISubroutineType(types: !4541)
!4541 = !{!83, !4542}
!4542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4543, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!4543 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1912)
!4544 = !DISubprogram(name: "GetMemoryType", linkageName: "_ZNK10tensorflow12TensorBuffer13GetMemoryTypeEv", scope: !1912, file: !1907, line: 111, type: !4540, scopeLine: 111, containingType: !1912, virtualIndex: 7, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!4545 = !DILocalVariable(name: "this", arg: 1, scope: !4539, type: !4546, flags: DIFlagArtificial | DIFlagObjectPointer)
!4546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4543, size: 64)
!4547 = !DILocation(line: 0, scope: !4539)
!4548 = !DILocation(line: 112, column: 5, scope: !4539)
!4549 = distinct !DISubprogram(name: "data", linkageName: "_ZNK10tensorflow12TensorBuffer4dataEv", scope: !1912, file: !1907, line: 86, type: !4550, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !4552, retainedNodes: !212)
!4550 = !DISubroutineType(types: !4551)
!4551 = !{!38, !4542}
!4552 = !DISubprogram(name: "data", linkageName: "_ZNK10tensorflow12TensorBuffer4dataEv", scope: !1912, file: !1907, line: 86, type: !4550, scopeLine: 86, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!4553 = !DILocalVariable(name: "this", arg: 1, scope: !4549, type: !4546, flags: DIFlagArtificial | DIFlagObjectPointer)
!4554 = !DILocation(line: 0, scope: !4549)
!4555 = !DILocation(line: 86, column: 31, scope: !4549)
!4556 = !DILocation(line: 86, column: 24, scope: !4549)
!4557 = distinct !DISubprogram(name: "~TensorBuffer", linkageName: "_ZN10tensorflow12TensorBufferD2Ev", scope: !1912, file: !1907, line: 79, type: !4558, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !4560, retainedNodes: !212)
!4558 = !DISubroutineType(types: !4559)
!4559 = !{null, !4489}
!4560 = !DISubprogram(name: "~TensorBuffer", scope: !1912, file: !1907, line: 79, type: !4558, scopeLine: 79, containingType: !1912, virtualIndex: 0, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!4561 = !DILocalVariable(name: "this", arg: 1, scope: !4557, type: !1911, flags: DIFlagArtificial | DIFlagObjectPointer)
!4562 = !DILocation(line: 0, scope: !4557)
!4563 = !DILocation(line: 79, column: 29, scope: !4564)
!4564 = distinct !DILexicalBlock(scope: !4557, file: !1907, line: 79, column: 28)
!4565 = !DILocation(line: 79, column: 29, scope: !4557)
!4566 = distinct !DISubprogram(name: "~RefCounted", linkageName: "_ZN10tensorflow4core10RefCountedD2Ev", scope: !3061, file: !3062, line: 14, type: !3221, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !3224, retainedNodes: !212)
!4567 = !DILocalVariable(name: "this", arg: 1, scope: !4566, type: !4568, flags: DIFlagArtificial | DIFlagObjectPointer)
!4568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3061, size: 64)
!4569 = !DILocation(line: 0, scope: !4566)
!4570 = !DILocation(line: 14, column: 33, scope: !4566)
!4571 = distinct !DISubprogram(name: "RefCounted", linkageName: "_ZN10tensorflow4core10RefCountedC2Ev", scope: !3061, file: !3062, line: 13, type: !3221, scopeLine: 13, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !3220, retainedNodes: !212)
!4572 = !DILocalVariable(name: "this", arg: 1, scope: !4571, type: !4568, flags: DIFlagArtificial | DIFlagObjectPointer)
!4573 = !DILocation(line: 0, scope: !4571)
!4574 = !DILocation(line: 13, column: 32, scope: !4571)
!4575 = !DILocation(line: 13, column: 18, scope: !4571)
!4576 = !DILocation(line: 13, column: 33, scope: !4571)
!4577 = distinct !DISubprogram(name: "atomic", linkageName: "_ZNSt6atomicImEC2Em", scope: !3067, file: !3068, line: 902, type: !3215, scopeLine: 902, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !3214, retainedNodes: !212)
!4578 = !DILocalVariable(name: "this", arg: 1, scope: !4577, type: !4579, flags: DIFlagArtificial | DIFlagObjectPointer)
!4579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3067, size: 64)
!4580 = !DILocation(line: 0, scope: !4577)
!4581 = !DILocalVariable(name: "__i", arg: 2, scope: !4577, file: !3068, line: 902, type: !3217)
!4582 = !DILocation(line: 902, column: 40, scope: !4577)
!4583 = !DILocation(line: 902, column: 73, scope: !4577)
!4584 = !DILocation(line: 902, column: 68, scope: !4577)
!4585 = !DILocation(line: 902, column: 56, scope: !4577)
!4586 = !DILocation(line: 902, column: 75, scope: !4577)
!4587 = distinct !DISubprogram(name: "__atomic_base", linkageName: "_ZNSt13__atomic_baseImEC2Em", scope: !3071, file: !214, line: 345, type: !3097, scopeLine: 345, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !3096, retainedNodes: !212)
!4588 = !DILocalVariable(name: "this", arg: 1, scope: !4587, type: !3468, flags: DIFlagArtificial | DIFlagObjectPointer)
!4589 = !DILocation(line: 0, scope: !4587)
!4590 = !DILocalVariable(name: "__i", arg: 2, scope: !4587, file: !214, line: 345, type: !3076)
!4591 = !DILocation(line: 345, column: 42, scope: !4587)
!4592 = !DILocation(line: 345, column: 58, scope: !4587)
!4593 = !DILocation(line: 345, column: 64, scope: !4587)
!4594 = !DILocation(line: 345, column: 71, scope: !4587)
!4595 = distinct !DISubprogram(name: "~RefCounted", linkageName: "_ZN10tensorflow4core10RefCountedD0Ev", scope: !3061, file: !3062, line: 14, type: !3221, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !3224, retainedNodes: !212)
!4596 = !DILocalVariable(name: "this", arg: 1, scope: !4595, type: !4568, flags: DIFlagArtificial | DIFlagObjectPointer)
!4597 = !DILocation(line: 0, scope: !4595)
!4598 = !DILocation(line: 14, column: 33, scope: !4595)
!4599 = distinct !DISubprogram(name: "TF_NewTensor", scope: !2180, file: !2180, line: 107, type: !4600, scopeLine: 110, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, retainedNodes: !212)
!4600 = !DISubroutineType(types: !4601)
!4601 = !{!3009, !225, !3011, !16, !38, !19, !3034, !38}
!4602 = !DILocalVariable(name: "dtype", arg: 1, scope: !4599, file: !2180, line: 107, type: !225)
!4603 = !DILocation(line: 107, column: 37, scope: !4599)
!4604 = !DILocalVariable(name: "dims", arg: 2, scope: !4599, file: !2180, line: 107, type: !3011)
!4605 = !DILocation(line: 107, column: 59, scope: !4599)
!4606 = !DILocalVariable(name: "num_dims", arg: 3, scope: !4599, file: !2180, line: 107, type: !16)
!4607 = !DILocation(line: 107, column: 69, scope: !4599)
!4608 = !DILocalVariable(name: "data", arg: 4, scope: !4599, file: !2180, line: 108, type: !38)
!4609 = !DILocation(line: 108, column: 31, scope: !4599)
!4610 = !DILocalVariable(name: "len", arg: 5, scope: !4599, file: !2180, line: 108, type: !19)
!4611 = !DILocation(line: 108, column: 44, scope: !4599)
!4612 = !DILocalVariable(name: "deallocator", arg: 6, scope: !4599, file: !2180, line: 109, type: !3034)
!4613 = !DILocation(line: 109, column: 32, scope: !4599)
!4614 = !DILocalVariable(name: "deallocator_arg", arg: 7, scope: !4599, file: !2180, line: 110, type: !38)
!4615 = !DILocation(line: 110, column: 31, scope: !4599)
!4616 = !DILocalVariable(name: "buf", scope: !4599, file: !2180, line: 111, type: !3027)
!4617 = !DILocation(line: 111, column: 21, scope: !4599)
!4618 = !DILocation(line: 112, column: 7, scope: !4619)
!4619 = distinct !DILexicalBlock(scope: !4599, file: !2180, line: 112, column: 7)
!4620 = !DILocation(line: 112, column: 13, scope: !4619)
!4621 = !DILocation(line: 112, column: 26, scope: !4619)
!4622 = !DILocation(line: 112, column: 29, scope: !4619)
!4623 = !DILocation(line: 112, column: 35, scope: !4619)
!4624 = !DILocation(line: 112, column: 50, scope: !4619)
!4625 = !DILocation(line: 114, column: 45, scope: !4619)
!4626 = !DILocation(line: 113, column: 7, scope: !4619)
!4627 = !DILocation(line: 114, column: 53, scope: !4619)
!4628 = !DILocation(line: 115, column: 34, scope: !4619)
!4629 = !DILocation(line: 115, column: 7, scope: !4619)
!4630 = !DILocation(line: 115, column: 51, scope: !4619)
!4631 = !DILocation(line: 115, column: 54, scope: !4619)
!4632 = !DILocation(line: 115, column: 42, scope: !4619)
!4633 = !DILocation(line: 115, column: 40, scope: !4619)
!4634 = !{!"True"}
!4635 = !DILocation(line: 115, column: 77, scope: !4619)
!4636 = !DILocation(line: 0, scope: !4619)
!4637 = !DILocation(line: 112, column: 7, scope: !4599)
!4638 = !DILocation(line: 124, column: 11, scope: !4639)
!4639 = distinct !DILexicalBlock(scope: !4619, file: !2180, line: 116, column: 14)
!4640 = !DILocation(line: 124, column: 76, scope: !4639)
!4641 = !DILocation(line: 124, column: 32, scope: !4639)
!4642 = !DILocation(line: 125, column: 32, scope: !4639)
!4643 = !DILocation(line: 124, column: 15, scope: !4639)
!4644 = !DILocation(line: 124, column: 9, scope: !4639)
!4645 = !DILocation(line: 127, column: 17, scope: !4639)
!4646 = !DILocation(line: 127, column: 22, scope: !4639)
!4647 = !DILocation(line: 127, column: 30, scope: !4639)
!4648 = !DILocation(line: 127, column: 36, scope: !4639)
!4649 = !DILocation(line: 127, column: 5, scope: !4639)
!4650 = !DILocation(line: 129, column: 5, scope: !4639)
!4651 = !DILocation(line: 129, column: 17, scope: !4639)
!4652 = !DILocation(line: 129, column: 23, scope: !4639)
!4653 = !DILocation(line: 129, column: 28, scope: !4639)
!4654 = !DILocation(line: 130, column: 3, scope: !4639)
!4655 = !DILocation(line: 136, column: 1, scope: !4639)
!4656 = !DILocation(line: 131, column: 11, scope: !4657)
!4657 = distinct !DILexicalBlock(scope: !4619, file: !2180, line: 130, column: 10)
!4658 = !DILocation(line: 131, column: 32, scope: !4657)
!4659 = !DILocation(line: 131, column: 38, scope: !4657)
!4660 = !DILocation(line: 131, column: 43, scope: !4657)
!4661 = !DILocation(line: 131, column: 56, scope: !4657)
!4662 = !DILocation(line: 131, column: 15, scope: !4657)
!4663 = !DILocation(line: 131, column: 9, scope: !4657)
!4664 = !DILocation(line: 136, column: 1, scope: !4657)
!4665 = !DILocation(line: 135, column: 23, scope: !4599)
!4666 = !DILocation(line: 135, column: 28, scope: !4599)
!4667 = !DILocation(line: 135, column: 35, scope: !4599)
!4668 = !DILocation(line: 135, column: 41, scope: !4599)
!4669 = !DILocation(line: 135, column: 51, scope: !4599)
!4670 = !DILocation(line: 135, column: 10, scope: !4599)
!4671 = !DILocation(line: 135, column: 3, scope: !4599)
!4672 = distinct !DISubprogram(name: "DataTypeCanUseMemcpy", linkageName: "_ZN10tensorflow20DataTypeCanUseMemcpyE8DataType", scope: !4, file: !1904, line: 15, type: !4673, scopeLine: 15, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, retainedNodes: !212)
!4673 = !DISubroutineType(types: !4674)
!4674 = !{!53, !100}
!4675 = !DILocalVariable(name: "dt", arg: 1, scope: !4672, file: !1904, line: 15, type: !100)
!4676 = !DILocation(line: 15, column: 43, scope: !4672)
!4677 = !DILocation(line: 16, column: 11, scope: !4672)
!4678 = !DILocation(line: 16, column: 3, scope: !4672)
!4679 = !DILocation(line: 46, column: 7, scope: !4680)
!4680 = distinct !DILexicalBlock(scope: !4672, file: !1904, line: 16, column: 15)
!4681 = !DILocation(line: 49, column: 7, scope: !4680)
!4682 = !DILocation(line: 51, column: 1, scope: !4672)
!4683 = distinct !DISubprogram(name: "max<int>", linkageName: "_ZSt3maxIiERKT_S2_S2_", scope: !31, file: !3975, line: 254, type: !4684, scopeLine: 255, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, templateParams: !4687, retainedNodes: !212)
!4684 = !DISubroutineType(types: !4685)
!4685 = !{!4686, !4686, !4686}
!4686 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3074, size: 64)
!4687 = !{!4688}
!4688 = !DITemplateTypeParameter(name: "_Tp", type: !16)
!4689 = !DILocalVariable(name: "__a", arg: 1, scope: !4683, file: !3975, line: 254, type: !4686)
!4690 = !DILocation(line: 254, column: 20, scope: !4683)
!4691 = !DILocalVariable(name: "__b", arg: 2, scope: !4683, file: !3975, line: 254, type: !4686)
!4692 = !DILocation(line: 254, column: 36, scope: !4683)
!4693 = !DILocation(line: 259, column: 11, scope: !4694)
!4694 = distinct !DILexicalBlock(scope: !4683, file: !3975, line: 259, column: 11)
!4695 = !DILocation(line: 259, column: 17, scope: !4694)
!4696 = !DILocation(line: 259, column: 15, scope: !4694)
!4697 = !DILocation(line: 259, column: 11, scope: !4683)
!4698 = !DILocation(line: 260, column: 9, scope: !4694)
!4699 = !DILocation(line: 260, column: 2, scope: !4694)
!4700 = !DILocation(line: 261, column: 14, scope: !4683)
!4701 = !DILocation(line: 261, column: 7, scope: !4683)
!4702 = !DILocation(line: 262, column: 5, scope: !4683)
!4703 = distinct !DISubprogram(name: "TF_TensorMaybeMove", scope: !2180, file: !2180, line: 140, type: !4704, scopeLine: 140, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, retainedNodes: !212)
!4704 = !DISubroutineType(types: !4705)
!4705 = !{!3009, !3009}
!4706 = !DILocalVariable(name: "t", arg: 1, scope: !4703, file: !2180, line: 140, type: !3009)
!4707 = !DILocation(line: 140, column: 42, scope: !4703)
!4708 = !DILocation(line: 141, column: 10, scope: !4703)
!4709 = !DILocation(line: 141, column: 13, scope: !4703)
!4710 = !DILocation(line: 141, column: 21, scope: !4703)
!4711 = !DILocation(line: 141, column: 33, scope: !4703)
!4712 = !DILocation(line: 141, column: 3, scope: !4703)
!4713 = distinct !DISubprogram(name: "TF_DeleteTensor", scope: !2180, file: !2180, line: 144, type: !4714, scopeLine: 144, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, retainedNodes: !212)
!4714 = !DISubroutineType(types: !4715)
!4715 = !{null, !3009}
!4716 = !DILocalVariable(name: "t", arg: 1, scope: !4713, file: !2180, line: 144, type: !3009)
!4717 = !DILocation(line: 144, column: 33, scope: !4713)
!4718 = !DILocation(line: 145, column: 7, scope: !4719)
!4719 = distinct !DILexicalBlock(scope: !4713, file: !2180, line: 145, column: 7)
!4720 = !DILocation(line: 145, column: 9, scope: !4719)
!4721 = !DILocation(line: 145, column: 7, scope: !4713)
!4722 = !DILocation(line: 146, column: 5, scope: !4723)
!4723 = distinct !DILexicalBlock(scope: !4719, file: !2180, line: 145, column: 21)
!4724 = !DILocation(line: 149, column: 7, scope: !4725)
!4725 = distinct !DILexicalBlock(scope: !4713, file: !2180, line: 149, column: 7)
!4726 = !DILocation(line: 149, column: 10, scope: !4725)
!4727 = !DILocation(line: 149, column: 7, scope: !4713)
!4728 = !DILocation(line: 150, column: 5, scope: !4729)
!4729 = distinct !DILexicalBlock(scope: !4725, file: !2180, line: 149, column: 18)
!4730 = !DILocation(line: 150, column: 8, scope: !4729)
!4731 = !DILocation(line: 150, column: 16, scope: !4729)
!4732 = !DILocation(line: 151, column: 3, scope: !4729)
!4733 = !DILocation(line: 153, column: 10, scope: !4713)
!4734 = !DILocation(line: 153, column: 3, scope: !4713)
!4735 = !DILocation(line: 154, column: 1, scope: !4713)
!4736 = distinct !DISubprogram(name: "TF_TensorType", scope: !2180, file: !2180, line: 156, type: !4737, scopeLine: 156, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, retainedNodes: !212)
!4737 = !DISubroutineType(types: !4738)
!4738 = !{!225, !4739}
!4739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4740, size: 64)
!4740 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3010)
!4741 = !DILocalVariable(name: "t", arg: 1, scope: !4736, file: !2180, line: 156, type: !4739)
!4742 = !DILocation(line: 156, column: 44, scope: !4736)
!4743 = !DILocation(line: 157, column: 35, scope: !4736)
!4744 = !DILocation(line: 157, column: 38, scope: !4736)
!4745 = !DILocation(line: 157, column: 46, scope: !4736)
!4746 = !DILocation(line: 157, column: 3, scope: !4736)
!4747 = distinct !DISubprogram(name: "TF_NumDims", scope: !2180, file: !2180, line: 165, type: !4748, scopeLine: 165, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, retainedNodes: !212)
!4748 = !DISubroutineType(types: !4749)
!4749 = !{!16, !4739}
!4750 = !DILocalVariable(name: "t", arg: 1, scope: !4747, file: !2180, line: 165, type: !4739)
!4751 = !DILocation(line: 165, column: 33, scope: !4747)
!4752 = !DILocation(line: 165, column: 45, scope: !4747)
!4753 = !DILocation(line: 165, column: 48, scope: !4747)
!4754 = !DILocation(line: 165, column: 56, scope: !4747)
!4755 = !DILocation(line: 165, column: 38, scope: !4747)
!4756 = distinct !DISubprogram(name: "TF_Dim", scope: !2180, file: !2180, line: 167, type: !4757, scopeLine: 167, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, retainedNodes: !212)
!4757 = !DISubroutineType(types: !4758)
!4758 = !{!64, !4739, !16}
!4759 = !DILocalVariable(name: "t", arg: 1, scope: !4756, file: !2180, line: 167, type: !4739)
!4760 = !DILocation(line: 167, column: 33, scope: !4756)
!4761 = !DILocalVariable(name: "dim_index", arg: 2, scope: !4756, file: !2180, line: 167, type: !16)
!4762 = !DILocation(line: 167, column: 40, scope: !4756)
!4763 = !DILocation(line: 168, column: 10, scope: !4756)
!4764 = !DILocation(line: 168, column: 13, scope: !4756)
!4765 = !DILocation(line: 168, column: 25, scope: !4756)
!4766 = !DILocation(line: 168, column: 21, scope: !4756)
!4767 = !DILocation(line: 168, column: 3, scope: !4756)
!4768 = distinct !DISubprogram(name: "TF_TensorByteSize", scope: !2180, file: !2180, line: 171, type: !4769, scopeLine: 171, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, retainedNodes: !212)
!4769 = !DISubroutineType(types: !4770)
!4770 = !{!19, !4739}
!4771 = !DILocalVariable(name: "t", arg: 1, scope: !4768, file: !2180, line: 171, type: !4739)
!4772 = !DILocation(line: 171, column: 43, scope: !4768)
!4773 = !DILocation(line: 171, column: 55, scope: !4768)
!4774 = !DILocation(line: 171, column: 58, scope: !4768)
!4775 = !DILocation(line: 171, column: 66, scope: !4768)
!4776 = !DILocation(line: 171, column: 48, scope: !4768)
!4777 = distinct !DISubprogram(name: "TF_TensorData", scope: !2180, file: !2180, line: 173, type: !4778, scopeLine: 173, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, retainedNodes: !212)
!4778 = !DISubroutineType(types: !4779)
!4779 = !{!38, !4739}
!4780 = !DILocalVariable(name: "t", arg: 1, scope: !4777, file: !2180, line: 173, type: !4739)
!4781 = !DILocation(line: 173, column: 38, scope: !4777)
!4782 = !DILocation(line: 173, column: 50, scope: !4777)
!4783 = !DILocation(line: 173, column: 53, scope: !4777)
!4784 = !DILocation(line: 173, column: 61, scope: !4777)
!4785 = !DILocation(line: 173, column: 43, scope: !4777)
!4786 = distinct !DISubprogram(name: "TF_TensorElementCount", scope: !2180, file: !2180, line: 175, type: !4787, scopeLine: 175, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, retainedNodes: !212)
!4787 = !DISubroutineType(types: !4788)
!4788 = !{!64, !4739}
!4789 = !DILocalVariable(name: "t", arg: 1, scope: !4786, file: !2180, line: 175, type: !4739)
!4790 = !DILocation(line: 175, column: 48, scope: !4786)
!4791 = !DILocalVariable(name: "result", scope: !4786, file: !2180, line: 176, type: !64)
!4792 = !DILocation(line: 176, column: 11, scope: !4786)
!4793 = !DILocalVariable(name: "rank", scope: !4786, file: !2180, line: 177, type: !16)
!4794 = !DILocation(line: 177, column: 7, scope: !4786)
!4795 = !DILocation(line: 177, column: 25, scope: !4786)
!4796 = !DILocation(line: 177, column: 14, scope: !4786)
!4797 = !DILocalVariable(name: "dim", scope: !4798, file: !2180, line: 178, type: !16)
!4798 = distinct !DILexicalBlock(scope: !4786, file: !2180, line: 178, column: 3)
!4799 = !DILocation(line: 178, column: 12, scope: !4798)
!4800 = !DILocation(line: 178, column: 8, scope: !4798)
!4801 = !DILocation(line: 178, column: 21, scope: !4802)
!4802 = distinct !DILexicalBlock(scope: !4798, file: !2180, line: 178, column: 3)
!4803 = !DILocation(line: 178, column: 27, scope: !4802)
!4804 = !DILocation(line: 178, column: 25, scope: !4802)
!4805 = !DILocation(line: 178, column: 3, scope: !4798)
!4806 = !DILocation(line: 179, column: 22, scope: !4807)
!4807 = distinct !DILexicalBlock(scope: !4802, file: !2180, line: 178, column: 40)
!4808 = !DILocation(line: 179, column: 25, scope: !4807)
!4809 = !DILocation(line: 179, column: 15, scope: !4807)
!4810 = !DILocation(line: 179, column: 12, scope: !4807)
!4811 = !DILocation(line: 180, column: 3, scope: !4807)
!4812 = !DILocation(line: 178, column: 33, scope: !4802)
!4813 = !DILocation(line: 178, column: 3, scope: !4802)
!4814 = distinct !{!4814, !4805, !4815}
!4815 = !DILocation(line: 180, column: 3, scope: !4798)
!4816 = !DILocation(line: 181, column: 10, scope: !4786)
!4817 = !DILocation(line: 181, column: 3, scope: !4786)
!4818 = distinct !DISubprogram(name: "~TensorBuffer", linkageName: "_ZN10tensorflow12TensorBufferD0Ev", scope: !4819, file: !1907, line: 79, type: !4828, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2235, declaration: !4827, retainedNodes: !212)
!4819 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "TensorBuffer", scope: !4, file: !1907, line: 76, size: 192, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !4820, vtableHolder: !3061)
!4820 = !{!4821, !4822, !4823, !4827, !4830, !4835, !4838, !4842, !4845, !4849, !4852}
!4821 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !4819, baseType: !3061, flags: DIFlagPublic, extraData: i32 0)
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "data_", scope: !4819, file: !1907, line: 116, baseType: !3036, size: 64, offset: 128)
!4823 = !DISubprogram(name: "TensorBuffer", scope: !4819, file: !1907, line: 78, type: !4824, scopeLine: 78, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!4824 = !DISubroutineType(types: !4825)
!4825 = !{null, !4826, !38}
!4826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4819, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!4827 = !DISubprogram(name: "~TensorBuffer", scope: !4819, file: !1907, line: 79, type: !4828, scopeLine: 79, containingType: !4819, virtualIndex: 0, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!4828 = !DISubroutineType(types: !4829)
!4829 = !{null, !4826}
!4830 = !DISubprogram(name: "data", linkageName: "_ZNK10tensorflow12TensorBuffer4dataEv", scope: !4819, file: !1907, line: 86, type: !4831, scopeLine: 86, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!4831 = !DISubroutineType(types: !4832)
!4832 = !{!38, !4833}
!4833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4834, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!4834 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4819)
!4835 = !DISubprogram(name: "size", linkageName: "_ZNK10tensorflow12TensorBuffer4sizeEv", scope: !4819, file: !1907, line: 89, type: !4836, scopeLine: 89, containingType: !4819, virtualIndex: 2, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual)
!4836 = !DISubroutineType(types: !4837)
!4837 = !{!19, !4833}
!4838 = !DISubprogram(name: "root_buffer", linkageName: "_ZN10tensorflow12TensorBuffer11root_bufferEv", scope: !4819, file: !1907, line: 93, type: !4839, scopeLine: 93, containingType: !4819, virtualIndex: 3, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual)
!4839 = !DISubroutineType(types: !4840)
!4840 = !{!4841, !4826}
!4841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4819, size: 64)
!4842 = !DISubprogram(name: "FillAllocationDescription", linkageName: "_ZNK10tensorflow12TensorBuffer25FillAllocationDescriptionEPNS_21AllocationDescriptionE", scope: !4819, file: !1907, line: 96, type: !4843, scopeLine: 96, containingType: !4819, virtualIndex: 4, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual)
!4843 = !DISubroutineType(types: !4844)
!4844 = !{null, !4833, !3056}
!4845 = !DISubprogram(name: "GetAllocatedBytes", linkageName: "_ZNK10tensorflow12TensorBuffer17GetAllocatedBytesEPm", scope: !4819, file: !1907, line: 99, type: !4846, scopeLine: 99, containingType: !4819, virtualIndex: 5, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!4846 = !DISubroutineType(types: !4847)
!4847 = !{!53, !4833, !4848}
!4848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!4849 = !DISubprogram(name: "OwnsMemory", linkageName: "_ZNK10tensorflow12TensorBuffer10OwnsMemoryEv", scope: !4819, file: !1907, line: 108, type: !4850, scopeLine: 108, containingType: !4819, virtualIndex: 6, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!4850 = !DISubroutineType(types: !4851)
!4851 = !{!53, !4833}
!4852 = !DISubprogram(name: "GetMemoryType", linkageName: "_ZNK10tensorflow12TensorBuffer13GetMemoryTypeEv", scope: !4819, file: !1907, line: 111, type: !4853, scopeLine: 111, containingType: !4819, virtualIndex: 7, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!4853 = !DISubroutineType(types: !4854)
!4854 = !{!83, !4833}
!4855 = !DILocalVariable(name: "this", arg: 1, scope: !4818, type: !4841, flags: DIFlagArtificial | DIFlagObjectPointer)
!4856 = !DILocation(line: 0, scope: !4818)
!4857 = !DILocation(line: 79, column: 28, scope: !4818)
!4858 = distinct !DISubprogram(name: "GetAllocatedBytes", linkageName: "_ZNK10tensorflow12TensorBuffer17GetAllocatedBytesEPm", scope: !4819, file: !4859, line: 84, type: !4846, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2235, declaration: !4845, retainedNodes: !212)
!4859 = !DIFile(filename: "tensorflow/core/framework/tensor.cc", directory: "/home/mushfiqur/Desktop/Github/tensorflow")
!4860 = !DILocalVariable(name: "this", arg: 1, scope: !4858, type: !4861, flags: DIFlagArtificial | DIFlagObjectPointer)
!4861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4834, size: 64)
!4862 = !DILocation(line: 0, scope: !4858)
!4863 = !DILocalVariable(name: "out_bytes", arg: 2, scope: !4858, file: !4859, line: 84, type: !4848)
!4864 = !DILocation(line: 84, column: 46, scope: !4858)
!4865 = !DILocation(line: 93, column: 2, scope: !4858)
!4866 = distinct !DISubprogram(name: "OwnsMemory", linkageName: "_ZNK10tensorflow12TensorBuffer10OwnsMemoryEv", scope: !4819, file: !1907, line: 108, type: !4850, scopeLine: 108, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2235, declaration: !4849, retainedNodes: !212)
!4867 = !DILocalVariable(name: "this", arg: 1, scope: !4866, type: !4861, flags: DIFlagArtificial | DIFlagObjectPointer)
!4868 = !DILocation(line: 0, scope: !4866)
!4869 = !DILocation(line: 108, column: 37, scope: !4866)
!4870 = distinct !DISubprogram(name: "Tensor", linkageName: "_ZN10tensorflow6TensorC2E8DataTypeRKNS_11TensorShapeEPNS_12TensorBufferE", scope: !1906, file: !4859, line: 844, type: !4871, scopeLine: 845, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2235, declaration: !4873, retainedNodes: !212)
!4871 = !DISubroutineType(types: !4872)
!4872 = !{null, !1916, !100, !982, !4841}
!4873 = !DISubprogram(name: "Tensor", scope: !1906, file: !1907, line: 176, type: !4871, scopeLine: 176, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!4874 = !DILocalVariable(name: "this", arg: 1, scope: !4870, type: !1938, flags: DIFlagArtificial | DIFlagObjectPointer)
!4875 = !DILocation(line: 0, scope: !4870)
!4876 = !DILocalVariable(name: "type", arg: 2, scope: !4870, file: !4859, line: 844, type: !100)
!4877 = !DILocation(line: 844, column: 25, scope: !4870)
!4878 = !DILocalVariable(name: "shape", arg: 3, scope: !4870, file: !4859, line: 844, type: !982)
!4879 = !DILocation(line: 844, column: 50, scope: !4870)
!4880 = !DILocalVariable(name: "buf", arg: 4, scope: !4870, file: !4859, line: 844, type: !4841)
!4881 = !DILocation(line: 844, column: 71, scope: !4870)
!4882 = !DILocation(line: 845, column: 7, scope: !4870)
!4883 = !DILocation(line: 845, column: 14, scope: !4870)
!4884 = !DILocation(line: 845, column: 22, scope: !4870)
!4885 = !DILocation(line: 845, column: 27, scope: !4870)
!4886 = !DILocation(line: 846, column: 13, scope: !4887)
!4887 = distinct !DILexicalBlock(scope: !4870, file: !4859, line: 845, column: 32)
!4888 = !DILocation(line: 846, column: 3, scope: !4887)
!4889 = !DILocation(line: 847, column: 16, scope: !4887)
!4890 = !DILocation(line: 847, column: 3, scope: !4887)
!4891 = !DILocation(line: 848, column: 1, scope: !4870)
!4892 = !DILocation(line: 848, column: 1, scope: !4887)
!4893 = distinct !DISubprogram(name: "TensorShape", linkageName: "_ZN10tensorflow11TensorShapeC2ERKS0_", scope: !284, file: !101, line: 147, type: !4894, scopeLine: 147, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2235, declaration: !4896, retainedNodes: !212)
!4894 = !DISubroutineType(types: !4895)
!4895 = !{null, !898, !982}
!4896 = !DISubprogram(name: "TensorShape", scope: !284, type: !4894, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!4897 = !DILocalVariable(name: "this", arg: 1, scope: !4893, type: !962, flags: DIFlagArtificial | DIFlagObjectPointer)
!4898 = !DILocation(line: 0, scope: !4893)
!4899 = !DILocalVariable(arg: 2, scope: !4893, type: !982)
!4900 = !DILocation(line: 147, column: 7, scope: !4893)
!4901 = distinct !DISubprogram(name: "set_dtype", linkageName: "_ZN10tensorflow6Tensor9set_dtypeE8DataType", scope: !1906, file: !1907, line: 700, type: !1933, scopeLine: 700, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2235, declaration: !2172, retainedNodes: !212)
!4902 = !DILocalVariable(name: "this", arg: 1, scope: !4901, type: !1938, flags: DIFlagArtificial | DIFlagObjectPointer)
!4903 = !DILocation(line: 0, scope: !4901)
!4904 = !DILocalVariable(name: "t", arg: 2, scope: !4901, file: !1907, line: 700, type: !100)
!4905 = !DILocation(line: 700, column: 27, scope: !4901)
!4906 = !DILocation(line: 700, column: 32, scope: !4901)
!4907 = !DILocation(line: 700, column: 53, scope: !4901)
!4908 = !DILocation(line: 700, column: 39, scope: !4901)
!4909 = !DILocation(line: 700, column: 57, scope: !4901)
!4910 = distinct !DISubprogram(name: "RefIfNonNull", linkageName: "_ZN10tensorflow12_GLOBAL__N_112RefIfNonNullEPNS_4core10RefCountedE", scope: !4911, file: !4859, line: 829, type: !4912, scopeLine: 829, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2235, retainedNodes: !212)
!4911 = !DINamespace(scope: !4)
!4912 = !DISubroutineType(types: !4913)
!4913 = !{null, !4568}
!4914 = !DILocalVariable(name: "buf", arg: 1, scope: !4910, file: !4859, line: 829, type: !4568)
!4915 = !DILocation(line: 829, column: 37, scope: !4910)
!4916 = !DILocation(line: 830, column: 7, scope: !4917)
!4917 = distinct !DILexicalBlock(scope: !4910, file: !4859, line: 830, column: 7)
!4918 = !DILocation(line: 830, column: 7, scope: !4910)
!4919 = !DILocation(line: 830, column: 12, scope: !4917)
!4920 = !DILocation(line: 830, column: 17, scope: !4917)
!4921 = !DILocation(line: 831, column: 1, scope: !4910)
!4922 = distinct !DISubprogram(name: "Ref", linkageName: "_ZNK10tensorflow4core10RefCounted3RefEv", scope: !3061, file: !3062, line: 17, type: !3226, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2235, declaration: !3225, retainedNodes: !212)
!4923 = !DILocalVariable(name: "this", arg: 1, scope: !4922, type: !3462, flags: DIFlagArtificial | DIFlagObjectPointer)
!4924 = !DILocation(line: 0, scope: !4922)
!4925 = !DILocation(line: 18, column: 5, scope: !4922)
!4926 = !DILocalVariable(name: "this", arg: 1, scope: !4927, type: !3468, flags: DIFlagArtificial | DIFlagObjectPointer)
!4927 = distinct !DISubprogram(name: "fetch_add", linkageName: "_ZNSt13__atomic_baseImE9fetch_addEmSt12memory_order", scope: !3071, file: !214, line: 616, type: !3160, scopeLine: 618, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2235, declaration: !3182, retainedNodes: !212)
!4928 = !DILocation(line: 0, scope: !4927, inlinedAt: !4929)
!4929 = distinct !DILocation(line: 18, column: 16, scope: !4922)
!4930 = !DILocalVariable(name: "__i", arg: 2, scope: !4927, file: !214, line: 616, type: !3076)
!4931 = !DILocation(line: 616, column: 28, scope: !4927, inlinedAt: !4929)
!4932 = !DILocalVariable(name: "__m", arg: 3, scope: !4927, file: !214, line: 617, type: !3149)
!4933 = !DILocation(line: 617, column: 16, scope: !4927, inlinedAt: !4929)
!4934 = !DILocation(line: 618, column: 36, scope: !4927, inlinedAt: !4929)
!4935 = !DILocation(line: 618, column: 51, scope: !4927, inlinedAt: !4929)
!4936 = !DILocation(line: 618, column: 42, scope: !4927, inlinedAt: !4929)
!4937 = !DILocation(line: 618, column: 16, scope: !4927, inlinedAt: !4929)
!4938 = !DILocation(line: 19, column: 3, scope: !4922)
!4939 = distinct !DISubprogram(name: "set_data_type", linkageName: "_ZN10tensorflow11TensorShape13set_data_typeE8DataType", scope: !284, file: !101, line: 154, type: !906, scopeLine: 154, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2235, declaration: !905, retainedNodes: !212)
!4940 = !DILocalVariable(name: "this", arg: 1, scope: !4939, type: !962, flags: DIFlagArtificial | DIFlagObjectPointer)
!4941 = !DILocation(line: 0, scope: !4939)
!4942 = !DILocalVariable(name: "t", arg: 2, scope: !4939, file: !101, line: 154, type: !100)
!4943 = !DILocation(line: 154, column: 31, scope: !4939)
!4944 = !DILocation(line: 154, column: 45, scope: !4939)
!4945 = !DILocation(line: 154, column: 36, scope: !4939)
!4946 = !DILocation(line: 154, column: 43, scope: !4939)
!4947 = !DILocation(line: 154, column: 48, scope: !4939)
!4948 = distinct !DISubprogram(name: "~Tensor", linkageName: "_ZN10tensorflow6TensorD2Ev", scope: !1906, file: !4859, line: 879, type: !1914, scopeLine: 879, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2235, declaration: !2087, retainedNodes: !212)
!4949 = !DILocalVariable(name: "this", arg: 1, scope: !4948, type: !1938, flags: DIFlagArtificial | DIFlagObjectPointer)
!4950 = !DILocation(line: 0, scope: !4948)
!4951 = !DILocation(line: 879, column: 36, scope: !4952)
!4952 = distinct !DILexicalBlock(scope: !4948, file: !4859, line: 879, column: 19)
!4953 = !DILocation(line: 879, column: 21, scope: !4952)
!4954 = !DILocation(line: 879, column: 43, scope: !4952)
!4955 = !DILocation(line: 879, column: 43, scope: !4948)
!4956 = distinct !DISubprogram(name: "UnrefIfNonNull", linkageName: "_ZN10tensorflow12_GLOBAL__N_114UnrefIfNonNullEPNS_4core10RefCountedE", scope: !4911, file: !4859, line: 833, type: !4912, scopeLine: 833, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2235, retainedNodes: !212)
!4957 = !DILocalVariable(name: "buf", arg: 1, scope: !4956, file: !4859, line: 833, type: !4568)
!4958 = !DILocation(line: 833, column: 39, scope: !4956)
!4959 = !DILocation(line: 834, column: 7, scope: !4960)
!4960 = distinct !DILexicalBlock(scope: !4956, file: !4859, line: 834, column: 7)
!4961 = !DILocation(line: 834, column: 7, scope: !4956)
!4962 = !DILocation(line: 834, column: 12, scope: !4960)
!4963 = !DILocation(line: 834, column: 17, scope: !4960)
!4964 = !DILocation(line: 835, column: 1, scope: !4956)
!4965 = distinct !DISubprogram(name: "Tensor", linkageName: "_ZN10tensorflow6TensorC2EOS0_", scope: !1906, file: !4859, line: 881, type: !2084, scopeLine: 883, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2235, declaration: !2083, retainedNodes: !212)
!4966 = !DILocalVariable(name: "this", arg: 1, scope: !4965, type: !1938, flags: DIFlagArtificial | DIFlagObjectPointer)
!4967 = !DILocation(line: 0, scope: !4965)
!4968 = !DILocalVariable(name: "other", arg: 2, scope: !4965, file: !4859, line: 881, type: !2086)
!4969 = !DILocation(line: 881, column: 25, scope: !4965)
!4970 = !DILocation(line: 882, column: 7, scope: !4965)
!4971 = !DILocation(line: 882, column: 24, scope: !4965)
!4972 = !DILocation(line: 882, column: 30, scope: !4965)
!4973 = !DILocation(line: 882, column: 14, scope: !4965)
!4974 = !DILocation(line: 883, column: 7, scope: !4965)
!4975 = !DILocation(line: 883, column: 12, scope: !4965)
!4976 = !DILocation(line: 883, column: 18, scope: !4965)
!4977 = !DILocation(line: 884, column: 13, scope: !4978)
!4978 = distinct !DILexicalBlock(scope: !4965, file: !4859, line: 883, column: 24)
!4979 = !DILocation(line: 884, column: 19, scope: !4978)
!4980 = !DILocation(line: 884, column: 3, scope: !4978)
!4981 = !DILocation(line: 885, column: 3, scope: !4978)
!4982 = !DILocation(line: 885, column: 9, scope: !4978)
!4983 = !DILocation(line: 885, column: 14, scope: !4978)
!4984 = !DILocation(line: 886, column: 1, scope: !4965)
!4985 = !DILocation(line: 886, column: 1, scope: !4978)
!4986 = distinct !DISubprogram(name: "move<tensorflow::TensorShape &>", linkageName: "_ZSt4moveIRN10tensorflow11TensorShapeEEONSt16remove_referenceIT_E4typeEOS4_", scope: !31, file: !3527, line: 104, type: !4987, scopeLine: 105, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2235, templateParams: !4992, retainedNodes: !212)
!4987 = !DISubroutineType(types: !4988)
!4988 = !{!4989, !4994}
!4989 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !4990, size: 64)
!4990 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !4991, file: !502, line: 1602, baseType: !284)
!4991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "remove_reference<tensorflow::TensorShape &>", scope: !31, file: !502, line: 1601, size: 8, flags: DIFlagTypePassByValue, elements: !212, templateParams: !4992, identifier: "_ZTSSt16remove_referenceIRN10tensorflow11TensorShapeEE")
!4992 = !{!4993}
!4993 = !DITemplateTypeParameter(name: "_Tp", type: !4994)
!4994 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !284, size: 64)
!4995 = !DILocalVariable(name: "__t", arg: 1, scope: !4986, file: !3527, line: 104, type: !4994)
!4996 = !DILocation(line: 104, column: 16, scope: !4986)
!4997 = !DILocation(line: 105, column: 71, scope: !4986)
!4998 = !DILocation(line: 105, column: 7, scope: !4986)
!4999 = distinct !DISubprogram(name: "TensorShape", linkageName: "_ZN10tensorflow11TensorShapeC2EOS0_", scope: !284, file: !101, line: 147, type: !5000, scopeLine: 147, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2235, declaration: !5003, retainedNodes: !212)
!5000 = !DISubroutineType(types: !5001)
!5001 = !{null, !898, !5002}
!5002 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !284, size: 64)
!5003 = !DISubprogram(name: "TensorShape", scope: !284, type: !5000, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!5004 = !DILocalVariable(name: "this", arg: 1, scope: !4999, type: !962, flags: DIFlagArtificial | DIFlagObjectPointer)
!5005 = !DILocation(line: 0, scope: !4999)
!5006 = !DILocalVariable(arg: 2, scope: !4999, type: !5002)
!5007 = !DILocation(line: 147, column: 7, scope: !4999)
!5008 = distinct !DISubprogram(name: "dtype", linkageName: "_ZNK10tensorflow6Tensor5dtypeEv", scope: !1906, file: !1907, line: 290, type: !2089, scopeLine: 290, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2235, declaration: !2088, retainedNodes: !212)
!5009 = !DILocalVariable(name: "this", arg: 1, scope: !5008, type: !3521, flags: DIFlagArtificial | DIFlagObjectPointer)
!5010 = !DILocation(line: 0, scope: !5008)
!5011 = !DILocation(line: 290, column: 35, scope: !5008)
!5012 = !DILocation(line: 290, column: 42, scope: !5008)
!5013 = !DILocation(line: 290, column: 28, scope: !5008)
!5014 = distinct !DISubprogram(name: "data_type", linkageName: "_ZNK10tensorflow11TensorShape9data_typeEv", scope: !284, file: !101, line: 155, type: !909, scopeLine: 155, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2235, declaration: !908, retainedNodes: !212)
!5015 = !DILocalVariable(name: "this", arg: 1, scope: !5014, type: !995, flags: DIFlagArtificial | DIFlagObjectPointer)
!5016 = !DILocation(line: 0, scope: !5014)
!5017 = !DILocation(line: 155, column: 39, scope: !5014)
!5018 = !DILocation(line: 155, column: 32, scope: !5014)
!5019 = distinct !DISubprogram(name: "vector", linkageName: "_ZNSt6vectorIlSaIlEEC2EOS1_", scope: !287, file: !288, line: 572, type: !572, scopeLine: 572, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2235, declaration: !571, retainedNodes: !212)
!5020 = !DILocalVariable(name: "this", arg: 1, scope: !5019, type: !3409, flags: DIFlagArtificial | DIFlagObjectPointer)
!5021 = !DILocation(line: 0, scope: !5019)
!5022 = !DILocalVariable(arg: 2, scope: !5019, file: !288, line: 572, type: !574)
!5023 = !DILocation(line: 572, column: 22, scope: !5019)
!5024 = !DILocation(line: 572, column: 41, scope: !5019)
!5025 = !DILocation(line: 572, column: 7, scope: !5019)
!5026 = distinct !DISubprogram(name: "_Vector_base", linkageName: "_ZNSt12_Vector_baseIlSaIlEEC2EOS1_", scope: !291, file: !288, line: 308, type: !477, scopeLine: 308, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2235, declaration: !476, retainedNodes: !212)
!5027 = !DILocalVariable(name: "this", arg: 1, scope: !5026, type: !3568, flags: DIFlagArtificial | DIFlagObjectPointer)
!5028 = !DILocation(line: 0, scope: !5026)
!5029 = !DILocalVariable(arg: 2, scope: !5026, file: !288, line: 308, type: !479)
!5030 = !DILocation(line: 308, column: 34, scope: !5026)
!5031 = !DILocation(line: 308, column: 7, scope: !5026)
!5032 = !DILocation(line: 308, column: 44, scope: !5026)
!5033 = distinct !DISubprogram(name: "_Vector_impl", linkageName: "_ZNSt12_Vector_baseIlSaIlEE12_Vector_implC2EOS2_", scope: !294, file: !288, line: 143, type: !438, scopeLine: 145, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2235, declaration: !437, retainedNodes: !212)
!5034 = !DILocalVariable(name: "this", arg: 1, scope: !5033, type: !3620, flags: DIFlagArtificial | DIFlagObjectPointer)
!5035 = !DILocation(line: 0, scope: !5033)
!5036 = !DILocalVariable(name: "__x", arg: 2, scope: !5033, file: !288, line: 143, type: !440)
!5037 = !DILocation(line: 143, column: 30, scope: !5033)
!5038 = !DILocation(line: 145, column: 2, scope: !5033)
!5039 = !DILocation(line: 144, column: 29, scope: !5033)
!5040 = !DILocation(line: 144, column: 19, scope: !5033)
!5041 = !DILocation(line: 144, column: 4, scope: !5033)
!5042 = !DILocation(line: 144, column: 64, scope: !5033)
!5043 = !DILocation(line: 144, column: 54, scope: !5033)
!5044 = !DILocation(line: 144, column: 36, scope: !5033)
!5045 = !DILocation(line: 145, column: 4, scope: !5033)
!5046 = distinct !DISubprogram(name: "move<std::_Vector_base<long, std::allocator<long> >::_Vector_impl &>", linkageName: "_ZSt4moveIRNSt12_Vector_baseIlSaIlEE12_Vector_implEEONSt16remove_referenceIT_E4typeEOS6_", scope: !31, file: !3527, line: 104, type: !5047, scopeLine: 105, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2235, templateParams: !5052, retainedNodes: !212)
!5047 = !DISubroutineType(types: !5048)
!5048 = !{!5049, !5054}
!5049 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !5050, size: 64)
!5050 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !5051, file: !502, line: 1602, baseType: !294)
!5051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "remove_reference<std::_Vector_base<long, std::allocator<long> >::_Vector_impl &>", scope: !31, file: !502, line: 1601, size: 8, flags: DIFlagTypePassByValue, elements: !212, templateParams: !5052, identifier: "_ZTSSt16remove_referenceIRNSt12_Vector_baseIlSaIlEE12_Vector_implEE")
!5052 = !{!5053}
!5053 = !DITemplateTypeParameter(name: "_Tp", type: !5054)
!5054 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !294, size: 64)
!5055 = !DILocalVariable(name: "__t", arg: 1, scope: !5046, file: !3527, line: 104, type: !5054)
!5056 = !DILocation(line: 104, column: 16, scope: !5046)
!5057 = !DILocation(line: 105, column: 71, scope: !5046)
!5058 = !DILocation(line: 105, column: 7, scope: !5046)
!5059 = distinct !DISubprogram(name: "_Vector_impl_data", linkageName: "_ZNSt12_Vector_baseIlSaIlEE17_Vector_impl_dataC2EOS2_", scope: !404, file: !288, line: 102, type: !416, scopeLine: 105, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2235, declaration: !415, retainedNodes: !212)
!5060 = !DILocalVariable(name: "this", arg: 1, scope: !5059, type: !4199, flags: DIFlagArtificial | DIFlagObjectPointer)
!5061 = !DILocation(line: 0, scope: !5059)
!5062 = !DILocalVariable(name: "__x", arg: 2, scope: !5059, file: !288, line: 102, type: !418)
!5063 = !DILocation(line: 102, column: 40, scope: !5059)
!5064 = !DILocation(line: 103, column: 4, scope: !5059)
!5065 = !DILocation(line: 103, column: 13, scope: !5059)
!5066 = !DILocation(line: 103, column: 17, scope: !5059)
!5067 = !DILocation(line: 103, column: 28, scope: !5059)
!5068 = !DILocation(line: 103, column: 38, scope: !5059)
!5069 = !DILocation(line: 103, column: 42, scope: !5059)
!5070 = !DILocation(line: 104, column: 4, scope: !5059)
!5071 = !DILocation(line: 104, column: 22, scope: !5059)
!5072 = !DILocation(line: 104, column: 26, scope: !5059)
!5073 = !DILocation(line: 105, column: 35, scope: !5074)
!5074 = distinct !DILexicalBlock(scope: !5059, file: !288, line: 105, column: 2)
!5075 = !DILocation(line: 105, column: 39, scope: !5074)
!5076 = !DILocation(line: 105, column: 57, scope: !5074)
!5077 = !DILocation(line: 105, column: 19, scope: !5074)
!5078 = !DILocation(line: 105, column: 23, scope: !5074)
!5079 = !DILocation(line: 105, column: 33, scope: !5074)
!5080 = !DILocation(line: 105, column: 4, scope: !5074)
!5081 = !DILocation(line: 105, column: 8, scope: !5074)
!5082 = !DILocation(line: 105, column: 17, scope: !5074)
!5083 = !DILocation(line: 105, column: 70, scope: !5059)
!5084 = distinct !DISubprogram(name: "memcpy", scope: !5085, file: !5085, line: 12, type: !5086, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2296, retainedNodes: !212)
!5085 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/mushfiqur/tools/klee")
!5086 = !DISubroutineType(types: !5087)
!5087 = !{!38, !38, !45, !5088}
!5088 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !5089, line: 46, baseType: !21)
!5089 = !DIFile(filename: "llvm-11/lib/clang/11.1.0/include/stddef.h", directory: "/home/mushfiqur")
!5090 = !DILocalVariable(name: "destaddr", arg: 1, scope: !5084, file: !5085, line: 12, type: !38)
!5091 = !DILocation(line: 12, column: 20, scope: !5084)
!5092 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !5084, file: !5085, line: 12, type: !45)
!5093 = !DILocation(line: 12, column: 42, scope: !5084)
!5094 = !DILocalVariable(name: "len", arg: 3, scope: !5084, file: !5085, line: 12, type: !5088)
!5095 = !DILocation(line: 12, column: 58, scope: !5084)
!5096 = !DILocalVariable(name: "dest", scope: !5084, file: !5085, line: 13, type: !242)
!5097 = !DILocation(line: 13, column: 9, scope: !5084)
!5098 = !DILocation(line: 13, column: 16, scope: !5084)
!5099 = !DILocalVariable(name: "src", scope: !5084, file: !5085, line: 14, type: !226)
!5100 = !DILocation(line: 14, column: 15, scope: !5084)
!5101 = !DILocation(line: 14, column: 21, scope: !5084)
!5102 = !DILocation(line: 16, column: 3, scope: !5084)
!5103 = !DILocation(line: 16, column: 13, scope: !5084)
!5104 = !DILocation(line: 16, column: 16, scope: !5084)
!5105 = !DILocation(line: 17, column: 19, scope: !5084)
!5106 = !DILocation(line: 17, column: 15, scope: !5084)
!5107 = !DILocation(line: 17, column: 10, scope: !5084)
!5108 = !DILocation(line: 17, column: 13, scope: !5084)
!5109 = distinct !{!5109, !5102, !5105}
!5110 = !DILocation(line: 18, column: 10, scope: !5084)
!5111 = !DILocation(line: 18, column: 3, scope: !5084)
!5112 = distinct !DISubprogram(name: "memmove", scope: !5113, file: !5113, line: 12, type: !5086, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2298, retainedNodes: !212)
!5113 = !DIFile(filename: "runtime/Freestanding/memmove.c", directory: "/home/mushfiqur/tools/klee")
!5114 = !DILocalVariable(name: "dst", arg: 1, scope: !5112, file: !5113, line: 12, type: !38)
!5115 = !DILocation(line: 12, column: 21, scope: !5112)
!5116 = !DILocalVariable(name: "src", arg: 2, scope: !5112, file: !5113, line: 12, type: !45)
!5117 = !DILocation(line: 12, column: 38, scope: !5112)
!5118 = !DILocalVariable(name: "count", arg: 3, scope: !5112, file: !5113, line: 12, type: !5088)
!5119 = !DILocation(line: 12, column: 50, scope: !5112)
!5120 = !DILocalVariable(name: "a", scope: !5112, file: !5113, line: 13, type: !242)
!5121 = !DILocation(line: 13, column: 9, scope: !5112)
!5122 = !DILocation(line: 13, column: 13, scope: !5112)
!5123 = !DILocalVariable(name: "b", scope: !5112, file: !5113, line: 14, type: !226)
!5124 = !DILocation(line: 14, column: 15, scope: !5112)
!5125 = !DILocation(line: 14, column: 19, scope: !5112)
!5126 = !DILocation(line: 16, column: 7, scope: !5127)
!5127 = distinct !DILexicalBlock(scope: !5112, file: !5113, line: 16, column: 7)
!5128 = !DILocation(line: 16, column: 14, scope: !5127)
!5129 = !DILocation(line: 16, column: 11, scope: !5127)
!5130 = !DILocation(line: 16, column: 7, scope: !5112)
!5131 = !DILocation(line: 17, column: 12, scope: !5127)
!5132 = !DILocation(line: 17, column: 5, scope: !5127)
!5133 = !DILocation(line: 19, column: 7, scope: !5134)
!5134 = distinct !DILexicalBlock(scope: !5112, file: !5113, line: 19, column: 7)
!5135 = !DILocation(line: 19, column: 13, scope: !5134)
!5136 = !DILocation(line: 19, column: 11, scope: !5134)
!5137 = !DILocation(line: 19, column: 7, scope: !5112)
!5138 = !DILocation(line: 20, column: 17, scope: !5139)
!5139 = distinct !DILexicalBlock(scope: !5134, file: !5113, line: 19, column: 18)
!5140 = !DILocation(line: 20, column: 5, scope: !5139)
!5141 = !DILocation(line: 21, column: 16, scope: !5139)
!5142 = !DILocation(line: 21, column: 14, scope: !5139)
!5143 = !DILocation(line: 21, column: 9, scope: !5139)
!5144 = !DILocation(line: 21, column: 12, scope: !5139)
!5145 = distinct !{!5145, !5140, !5141}
!5146 = !DILocation(line: 23, column: 10, scope: !5147)
!5147 = distinct !DILexicalBlock(scope: !5134, file: !5113, line: 22, column: 10)
!5148 = !DILocation(line: 23, column: 16, scope: !5147)
!5149 = !DILocation(line: 23, column: 7, scope: !5147)
!5150 = !DILocation(line: 24, column: 10, scope: !5147)
!5151 = !DILocation(line: 24, column: 16, scope: !5147)
!5152 = !DILocation(line: 24, column: 7, scope: !5147)
!5153 = !DILocation(line: 25, column: 5, scope: !5147)
!5154 = !DILocation(line: 25, column: 17, scope: !5147)
!5155 = !DILocation(line: 26, column: 16, scope: !5147)
!5156 = !DILocation(line: 26, column: 14, scope: !5147)
!5157 = !DILocation(line: 26, column: 9, scope: !5147)
!5158 = !DILocation(line: 26, column: 12, scope: !5147)
!5159 = distinct !{!5159, !5153, !5155}
!5160 = !DILocation(line: 29, column: 10, scope: !5112)
!5161 = !DILocation(line: 29, column: 3, scope: !5112)
!5162 = !DILocation(line: 30, column: 1, scope: !5112)
!5163 = distinct !DISubprogram(name: "memset", scope: !5164, file: !5164, line: 12, type: !5165, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2300, retainedNodes: !212)
!5164 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/mushfiqur/tools/klee")
!5165 = !DISubroutineType(types: !5166)
!5166 = !{!38, !38, !16, !5088}
!5167 = !DILocalVariable(name: "dst", arg: 1, scope: !5163, file: !5164, line: 12, type: !38)
!5168 = !DILocation(line: 12, column: 20, scope: !5163)
!5169 = !DILocalVariable(name: "s", arg: 2, scope: !5163, file: !5164, line: 12, type: !16)
!5170 = !DILocation(line: 12, column: 29, scope: !5163)
!5171 = !DILocalVariable(name: "count", arg: 3, scope: !5163, file: !5164, line: 12, type: !5088)
!5172 = !DILocation(line: 12, column: 39, scope: !5163)
!5173 = !DILocalVariable(name: "a", scope: !5163, file: !5164, line: 13, type: !242)
!5174 = !DILocation(line: 13, column: 9, scope: !5163)
!5175 = !DILocation(line: 13, column: 13, scope: !5163)
!5176 = !DILocation(line: 14, column: 3, scope: !5163)
!5177 = !DILocation(line: 14, column: 15, scope: !5163)
!5178 = !DILocation(line: 14, column: 18, scope: !5163)
!5179 = !DILocation(line: 15, column: 12, scope: !5163)
!5180 = !DILocation(line: 15, column: 7, scope: !5163)
!5181 = !DILocation(line: 15, column: 10, scope: !5163)
!5182 = distinct !{!5182, !5176, !5179}
!5183 = !DILocation(line: 16, column: 10, scope: !5163)
!5184 = !DILocation(line: 16, column: 3, scope: !5163)
!5185 = distinct !DISubprogram(name: "klee_div_zero_check", scope: !5186, file: !5186, line: 12, type: !5187, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2302, retainedNodes: !212)
!5186 = !DIFile(filename: "runtime/Intrinsic/klee_div_zero_check.c", directory: "/home/mushfiqur/tools/klee")
!5187 = !DISubroutineType(types: !5188)
!5188 = !{null, !1284}
!5189 = !DILocalVariable(name: "z", arg: 1, scope: !5185, file: !5186, line: 12, type: !1284)
!5190 = !DILocation(line: 12, column: 36, scope: !5185)
!5191 = !DILocation(line: 13, column: 7, scope: !5192)
!5192 = distinct !DILexicalBlock(scope: !5185, file: !5186, line: 13, column: 7)
!5193 = !DILocation(line: 13, column: 9, scope: !5192)
!5194 = !DILocation(line: 13, column: 7, scope: !5185)
!5195 = !DILocation(line: 14, column: 5, scope: !5192)
!5196 = !DILocation(line: 15, column: 1, scope: !5185)
