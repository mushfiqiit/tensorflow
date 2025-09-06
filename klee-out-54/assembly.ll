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
  call void @llvm.dbg.declare(metadata i8** %base, metadata !2362, metadata !DIExpression()), !dbg !2363
  %call = call noalias i8* @malloc(i64 192) #6, !dbg !2364
  store i8* %call, i8** %base, align 8, !dbg !2363
  %18 = load i8*, i8** %base, align 8, !dbg !2365
  %cmp24 = icmp ne i8* %18, null, !dbg !2366
  %conv25 = zext i1 %cmp24 to i64, !dbg !2365
  call void @klee_assume(i64 %conv25), !dbg !2367
  call void @llvm.dbg.declare(metadata i32* %offset, metadata !2368, metadata !DIExpression()), !dbg !2369
  %19 = bitcast i32* %offset to i8*, !dbg !2370
  call void @klee_make_symbolic(i8* %19, i64 4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0)), !dbg !2371
  %20 = load i32, i32* %offset, align 4, !dbg !2372
  %cmp26 = icmp ult i32 %20, 32, !dbg !2373
  %conv27 = zext i1 %cmp26 to i64, !dbg !2372
  call void @klee_assume(i64 %conv27), !dbg !2374
  call void @llvm.dbg.declare(metadata i8** %data, metadata !2375, metadata !DIExpression()), !dbg !2376
  %21 = load i8*, i8** %base, align 8, !dbg !2377
  %22 = load i32, i32* %offset, align 4, !dbg !2378
  %idx.ext = zext i32 %22 to i64, !dbg !2379
  %add.ptr = getelementptr inbounds i8, i8* %21, i64 %idx.ext, !dbg !2379
  store i8* %add.ptr, i8** %data, align 8, !dbg !2376
  %23 = load i64, i64* %len, align 8, !dbg !2380
  %cmp28 = icmp ugt i64 %23, 0, !dbg !2382
  br i1 %cmp28, label %if.then, label %if.end, !dbg !2383

if.then:                                          ; preds = %lor.end
  call void @llvm.dbg.declare(metadata i64* %sym, metadata !2384, metadata !DIExpression()), !dbg !2386
  %24 = load i64, i64* %len, align 8, !dbg !2387
  %cmp29 = icmp ult i64 %24, 16, !dbg !2388
  br i1 %cmp29, label %cond.true, label %cond.false, !dbg !2387

cond.true:                                        ; preds = %if.then
  %25 = load i64, i64* %len, align 8, !dbg !2389
  br label %cond.end, !dbg !2387

cond.false:                                       ; preds = %if.then
  br label %cond.end, !dbg !2387

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %25, %cond.true ], [ 16, %cond.false ], !dbg !2387
  store i64 %cond, i64* %sym, align 8, !dbg !2386
  %26 = load i8*, i8** %data, align 8, !dbg !2390
  %27 = load i64, i64* %sym, align 8, !dbg !2391
  call void @klee_make_symbolic(i8* %26, i64 %27, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0)), !dbg !2392
  br label %if.end, !dbg !2393

if.end:                                           ; preds = %cond.end, %lor.end
  call void @llvm.dbg.declare(metadata %struct.TF_Tensor** %t, metadata !2394, metadata !DIExpression()), !dbg !2439
  %28 = load i32, i32* %dtype, align 4, !dbg !2440
  %arraydecay30 = getelementptr inbounds [3 x i64], [3 x i64]* %dims, i64 0, i64 0, !dbg !2441
  %29 = load i8*, i8** %data, align 8, !dbg !2442
  %30 = load i64, i64* %len, align 8, !dbg !2443
  %call31 = call %struct.TF_Tensor* @TF_NewTensor(i32 %28, i64* %arraydecay30, i32 2, i8* %29, i64 %30, void (i8*, i64, i8*)* @_ZL17dummy_deallocatorPvmS_, i8* null), !dbg !2444
  store %struct.TF_Tensor* %call31, %struct.TF_Tensor** %t, align 8, !dbg !2439
  %31 = load %struct.TF_Tensor*, %struct.TF_Tensor** %t, align 8, !dbg !2445
  %cmp32 = icmp eq %struct.TF_Tensor* %31, null, !dbg !2447
  br i1 %cmp32, label %if.then33, label %if.end41, !dbg !2448

if.then33:                                        ; preds = %if.end
  %arrayidx34 = getelementptr inbounds [3 x i64], [3 x i64]* %dims, i64 0, i64 0, !dbg !2449
  %32 = load i64, i64* %arrayidx34, align 16, !dbg !2449
  %cmp35 = icmp eq i64 %32, 0, !dbg !2452
  br i1 %cmp35, label %if.then39, label %lor.lhs.false36, !dbg !2453

lor.lhs.false36:                                  ; preds = %if.then33
  %arrayidx37 = getelementptr inbounds [3 x i64], [3 x i64]* %dims, i64 0, i64 1, !dbg !2454
  %33 = load i64, i64* %arrayidx37, align 8, !dbg !2454
  %cmp38 = icmp eq i64 %33, 0, !dbg !2455
  br i1 %cmp38, label %if.then39, label %if.else, !dbg !2456

if.then39:                                        ; preds = %lor.lhs.false36, %if.then33
  br label %if.end40, !dbg !2457

if.else:                                          ; preds = %lor.lhs.false36
  br label %if.end40

if.end40:                                         ; preds = %if.else, %if.then39
  store i32 0, i32* %retval, align 4, !dbg !2459
  br label %return, !dbg !2459

if.end41:                                         ; preds = %if.end
  %34 = load %struct.TF_Tensor*, %struct.TF_Tensor** %t, align 8, !dbg !2460
  call void @TF_DeleteTensor(%struct.TF_Tensor* %34), !dbg !2461
  %35 = load i8*, i8** %base, align 8, !dbg !2462
  call void @free(i8* %35) #6, !dbg !2463
  store i32 0, i32* %retval, align 4, !dbg !2464
  br label %return, !dbg !2464

return:                                           ; preds = %if.end41, %if.end40
  %36 = load i32, i32* %retval, align 4, !dbg !2465
  ret i32 %36, !dbg !2465
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local void @klee_make_symbolic(i8*, i64, i8*) #2

declare dso_local void @klee_assume(i64) #2

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_ZL17dummy_deallocatorPvmS_(i8* %data, i64 %len, i8* %arg) #4 !dbg !2466 {
entry:
  %data.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %arg.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !2469, metadata !DIExpression()), !dbg !2470
  store i64 %len, i64* %len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !2471, metadata !DIExpression()), !dbg !2472
  store i8* %arg, i8** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %arg.addr, metadata !2473, metadata !DIExpression()), !dbg !2474
  ret void, !dbg !2475
}

; Function Attrs: nounwind
declare dso_local void @free(i8*) #3

; Function Attrs: noinline optnone uwtable
define dso_local i8* @_ZN10tensorflow15allocate_tensorEPKcmPNS_9AllocatorE(i8* %operation, i64 %len, %"class.tensorflow::AbstractTensorInterface"* %allocator) #5 !dbg !2476 {
entry:
  %operation.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %allocator.addr = alloca %"class.tensorflow::AbstractTensorInterface"*, align 8
  %data = alloca i8*, align 8
  store i8* %operation, i8** %operation.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %operation.addr, metadata !2479, metadata !DIExpression()), !dbg !2480
  store i64 %len, i64* %len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !2481, metadata !DIExpression()), !dbg !2482
  store %"class.tensorflow::AbstractTensorInterface"* %allocator, %"class.tensorflow::AbstractTensorInterface"** %allocator.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::AbstractTensorInterface"** %allocator.addr, metadata !2483, metadata !DIExpression()), !dbg !2484
  call void @llvm.dbg.declare(metadata i8** %data, metadata !2485, metadata !DIExpression()), !dbg !2486
  %0 = load %"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"** %allocator.addr, align 8, !dbg !2487
  %1 = load i64, i64* %len.addr, align 8, !dbg !2488
  %2 = bitcast %"class.tensorflow::AbstractTensorInterface"* %0 to i8* (%"class.tensorflow::AbstractTensorInterface"*, i64, i64)***, !dbg !2489
  %vtable = load i8* (%"class.tensorflow::AbstractTensorInterface"*, i64, i64)**, i8* (%"class.tensorflow::AbstractTensorInterface"*, i64, i64)*** %2, align 8, !dbg !2489
  %vfn = getelementptr inbounds i8* (%"class.tensorflow::AbstractTensorInterface"*, i64, i64)*, i8* (%"class.tensorflow::AbstractTensorInterface"*, i64, i64)** %vtable, i64 3, !dbg !2489
  %3 = load i8* (%"class.tensorflow::AbstractTensorInterface"*, i64, i64)*, i8* (%"class.tensorflow::AbstractTensorInterface"*, i64, i64)** %vfn, align 8, !dbg !2489
  %call = call i8* %3(%"class.tensorflow::AbstractTensorInterface"* %0, i64 64, i64 %1), !dbg !2489
  store i8* %call, i8** %data, align 8, !dbg !2486
  %4 = load i8*, i8** %data, align 8, !dbg !2490
  ret i8* %4, !dbg !2491
}

; Function Attrs: noinline optnone uwtable
define dso_local i8* @_ZN10tensorflow15allocate_tensorEPKcm(i8* %operation, i64 %len) #5 !dbg !2492 {
entry:
  %operation.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  store i8* %operation, i8** %operation.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %operation.addr, metadata !2495, metadata !DIExpression()), !dbg !2496
  store i64 %len, i64* %len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !2497, metadata !DIExpression()), !dbg !2498
  %0 = load i8*, i8** %operation.addr, align 8, !dbg !2499
  %1 = load i64, i64* %len.addr, align 8, !dbg !2500
  %call = call %"class.tensorflow::AbstractTensorInterface"* @_ZN10tensorflow13cpu_allocatorEv(), !dbg !2501
  %call1 = call i8* @_ZN10tensorflow15allocate_tensorEPKcmPNS_9AllocatorE(i8* %0, i64 %1, %"class.tensorflow::AbstractTensorInterface"* %call), !dbg !2502
  ret i8* %call1, !dbg !2503
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %"class.tensorflow::AbstractTensorInterface"* @_ZN10tensorflow13cpu_allocatorEv() #5 comdat personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !2 {
entry:
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  %0 = load i8, i8* bitcast (i64* @_ZGVZN10tensorflow13cpu_allocatorEvE4inst to i8*), align 8, !dbg !2504
  %guard.uninitialized = icmp eq i8 %0, 0, !dbg !2504
  br i1 %guard.uninitialized, label %init.check, label %init.end, !dbg !2504, !prof !2505

init.check:                                       ; preds = %entry
  %1 = call i32 @__cxa_guard_acquire(i64* @_ZGVZN10tensorflow13cpu_allocatorEvE4inst) #6, !dbg !2504
  %tobool = icmp ne i32 %1, 0, !dbg !2504
  br i1 %tobool, label %init, label %init.end, !dbg !2504

init:                                             ; preds = %init.check
  %call = invoke noalias nonnull i8* @_Znwm(i64 8) #16
          to label %invoke.cont unwind label %lpad, !dbg !2506, !heapallocsite !2183

invoke.cont:                                      ; preds = %init
  %2 = bitcast i8* %call to %"class.tensorflow::StubCPUAllocator"*, !dbg !2506
  %3 = bitcast %"class.tensorflow::StubCPUAllocator"* %2 to i8*, !dbg !2507
  %4 = call i8* @memset(i8* %3, i32 0, i64 8), !dbg !2507
  call void @_ZN10tensorflow16StubCPUAllocatorC2Ev(%"class.tensorflow::StubCPUAllocator"* %2) #6, !dbg !2507
  store %"class.tensorflow::StubCPUAllocator"* %2, %"class.tensorflow::StubCPUAllocator"** @_ZZN10tensorflow13cpu_allocatorEvE4inst, align 8, !dbg !2504
  call void @__cxa_guard_release(i64* @_ZGVZN10tensorflow13cpu_allocatorEvE4inst) #6, !dbg !2504
  br label %init.end, !dbg !2504

init.end:                                         ; preds = %invoke.cont, %init.check, %entry
  %5 = load %"class.tensorflow::StubCPUAllocator"*, %"class.tensorflow::StubCPUAllocator"** @_ZZN10tensorflow13cpu_allocatorEvE4inst, align 8, !dbg !2508
  %6 = bitcast %"class.tensorflow::StubCPUAllocator"* %5 to %"class.tensorflow::AbstractTensorInterface"*, !dbg !2508
  ret %"class.tensorflow::AbstractTensorInterface"* %6, !dbg !2509

lpad:                                             ; preds = %init
  %7 = landingpad { i8*, i32 }
          cleanup, !dbg !2510
  %8 = extractvalue { i8*, i32 } %7, 0, !dbg !2510
  store i8* %8, i8** %exn.slot, align 8, !dbg !2510
  %9 = extractvalue { i8*, i32 } %7, 1, !dbg !2510
  store i32 %9, i32* %ehselector.slot, align 4, !dbg !2510
  call void @__cxa_guard_abort(i64* @_ZGVZN10tensorflow13cpu_allocatorEvE4inst) #6, !dbg !2504
  br label %eh.resume, !dbg !2504

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8, !dbg !2504
  %sel = load i32, i32* %ehselector.slot, align 4, !dbg !2504
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0, !dbg !2504
  %lpad.val1 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1, !dbg !2504
  resume { i8*, i32 } %lpad.val1, !dbg !2504
}

declare dso_local i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare dso_local i32 @__cxa_guard_acquire(i64*) #6

; Function Attrs: nobuiltin allocsize(0)
declare dso_local nonnull i8* @_Znwm(i64) #7

; Function Attrs: argmemonly nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow16StubCPUAllocatorC2Ev(%"class.tensorflow::StubCPUAllocator"* %this) unnamed_addr #4 comdat align 2 !dbg !2511 {
entry:
  %this.addr = alloca %"class.tensorflow::StubCPUAllocator"*, align 8
  store %"class.tensorflow::StubCPUAllocator"* %this, %"class.tensorflow::StubCPUAllocator"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::StubCPUAllocator"** %this.addr, metadata !2513, metadata !DIExpression()), !dbg !2514
  %this1 = load %"class.tensorflow::StubCPUAllocator"*, %"class.tensorflow::StubCPUAllocator"** %this.addr, align 8
  %0 = bitcast %"class.tensorflow::StubCPUAllocator"* %this1 to %"class.tensorflow::AbstractTensorInterface"*, !dbg !2515
  call void @_ZN10tensorflow9AllocatorC2Ev(%"class.tensorflow::AbstractTensorInterface"* %0) #6, !dbg !2515
  %1 = bitcast %"class.tensorflow::StubCPUAllocator"* %this1 to i32 (...)***, !dbg !2515
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [19 x i8*] }, { [19 x i8*] }* @_ZTVN10tensorflow16StubCPUAllocatorE, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %1, align 8, !dbg !2515
  ret void, !dbg !2515
}

; Function Attrs: nounwind
declare dso_local void @__cxa_guard_release(i64*) #6

; Function Attrs: nounwind
declare dso_local void @__cxa_guard_abort(i64*) #6

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow9AllocatorC2Ev(%"class.tensorflow::AbstractTensorInterface"* %this) unnamed_addr #4 comdat align 2 !dbg !2516 {
entry:
  %this.addr = alloca %"class.tensorflow::AbstractTensorInterface"*, align 8
  store %"class.tensorflow::AbstractTensorInterface"* %this, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::AbstractTensorInterface"** %this.addr, metadata !2518, metadata !DIExpression()), !dbg !2519
  %this1 = load %"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  %0 = bitcast %"class.tensorflow::AbstractTensorInterface"* %this1 to i32 (...)***, !dbg !2520
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [19 x i8*] }, { [19 x i8*] }* @_ZTVN10tensorflow9AllocatorE, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %0, align 8, !dbg !2520
  ret void, !dbg !2520
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow16StubCPUAllocatorD2Ev(%"class.tensorflow::StubCPUAllocator"* %this) unnamed_addr #4 comdat align 2 !dbg !2521 {
entry:
  %this.addr = alloca %"class.tensorflow::StubCPUAllocator"*, align 8
  store %"class.tensorflow::StubCPUAllocator"* %this, %"class.tensorflow::StubCPUAllocator"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::StubCPUAllocator"** %this.addr, metadata !2522, metadata !DIExpression()), !dbg !2523
  %this1 = load %"class.tensorflow::StubCPUAllocator"*, %"class.tensorflow::StubCPUAllocator"** %this.addr, align 8
  %0 = bitcast %"class.tensorflow::StubCPUAllocator"* %this1 to %"class.tensorflow::AbstractTensorInterface"*, !dbg !2524
  call void @_ZN10tensorflow9AllocatorD2Ev(%"class.tensorflow::AbstractTensorInterface"* %0) #6, !dbg !2524
  ret void, !dbg !2526
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow16StubCPUAllocatorD0Ev(%"class.tensorflow::StubCPUAllocator"* %this) unnamed_addr #4 comdat align 2 !dbg !2527 {
entry:
  %this.addr = alloca %"class.tensorflow::StubCPUAllocator"*, align 8
  store %"class.tensorflow::StubCPUAllocator"* %this, %"class.tensorflow::StubCPUAllocator"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::StubCPUAllocator"** %this.addr, metadata !2528, metadata !DIExpression()), !dbg !2529
  %this1 = load %"class.tensorflow::StubCPUAllocator"*, %"class.tensorflow::StubCPUAllocator"** %this.addr, align 8
  call void @_ZN10tensorflow16StubCPUAllocatorD2Ev(%"class.tensorflow::StubCPUAllocator"* %this1) #6, !dbg !2530
  %0 = bitcast %"class.tensorflow::StubCPUAllocator"* %this1 to i8*, !dbg !2530
  call void @_ZdlPv(i8* %0) #17, !dbg !2530
  ret void, !dbg !2530
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow16StubCPUAllocator4NameB5cxx11Ev(%"class.std::__cxx11::basic_string"* noalias sret align 8 %agg.result, %"class.tensorflow::StubCPUAllocator"* %this) unnamed_addr #5 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !2531 {
entry:
  %result.ptr = alloca i8*, align 8
  %this.addr = alloca %"class.tensorflow::StubCPUAllocator"*, align 8
  %ref.tmp = alloca %"class.std::allocator.0", align 1
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  %0 = bitcast %"class.std::__cxx11::basic_string"* %agg.result to i8*
  store i8* %0, i8** %result.ptr, align 8
  store %"class.tensorflow::StubCPUAllocator"* %this, %"class.tensorflow::StubCPUAllocator"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::StubCPUAllocator"** %this.addr, metadata !2532, metadata !DIExpression()), !dbg !2533
  %this1 = load %"class.tensorflow::StubCPUAllocator"*, %"class.tensorflow::StubCPUAllocator"** %this.addr, align 8
  call void @_ZNSaIcEC1Ev(%"class.std::allocator.0"* %ref.tmp) #6, !dbg !2534
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(%"class.std::__cxx11::basic_string"* %agg.result, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4.1, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %ref.tmp)
          to label %invoke.cont unwind label %lpad, !dbg !2534

invoke.cont:                                      ; preds = %entry
  call void @_ZNSaIcED1Ev(%"class.std::allocator.0"* %ref.tmp) #6, !dbg !2535
  ret void, !dbg !2535

lpad:                                             ; preds = %entry
  %1 = landingpad { i8*, i32 }
          cleanup, !dbg !2536
  %2 = extractvalue { i8*, i32 } %1, 0, !dbg !2536
  store i8* %2, i8** %exn.slot, align 8, !dbg !2536
  %3 = extractvalue { i8*, i32 } %1, 1, !dbg !2536
  store i32 %3, i32* %ehselector.slot, align 4, !dbg !2536
  call void @_ZNSaIcED1Ev(%"class.std::allocator.0"* %ref.tmp) #6, !dbg !2535
  br label %eh.resume, !dbg !2535

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8, !dbg !2535
  %sel = load i32, i32* %ehselector.slot, align 4, !dbg !2535
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0, !dbg !2535
  %lpad.val2 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1, !dbg !2535
  resume { i8*, i32 } %lpad.val2, !dbg !2535
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i8* @_ZN10tensorflow9Allocator11AllocateRawEmm(%"class.tensorflow::AbstractTensorInterface"* %this, i64 %alignment, i64 %num_bytes) unnamed_addr #5 comdat align 2 !dbg !2537 {
entry:
  %this.addr = alloca %"class.tensorflow::AbstractTensorInterface"*, align 8
  %alignment.addr = alloca i64, align 8
  %num_bytes.addr = alloca i64, align 8
  store %"class.tensorflow::AbstractTensorInterface"* %this, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::AbstractTensorInterface"** %this.addr, metadata !2538, metadata !DIExpression()), !dbg !2539
  store i64 %alignment, i64* %alignment.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %alignment.addr, metadata !2540, metadata !DIExpression()), !dbg !2541
  store i64 %num_bytes, i64* %num_bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %num_bytes.addr, metadata !2542, metadata !DIExpression()), !dbg !2543
  %this1 = load %"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  %0 = load i64, i64* %num_bytes.addr, align 8, !dbg !2544
  %1 = load i64, i64* %alignment.addr, align 8, !dbg !2545
  %call = call noalias nonnull i8* @_ZnwmSt11align_val_t(i64 %0, i64 %1) #18, !dbg !2546
  %mask = sub i64 %1, 1, !dbg !2546
  %ptrint = ptrtoint i8* %call to i64, !dbg !2546
  %maskedptr = and i64 %ptrint, %mask, !dbg !2546
  %maskcond = icmp eq i64 %maskedptr, 0, !dbg !2546
  ret i8* %call, !dbg !2547
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow9Allocator13DeallocateRawEPv(%"class.tensorflow::AbstractTensorInterface"* %this, i8* %ptr) unnamed_addr #4 comdat align 2 !dbg !2548 {
entry:
  %this.addr = alloca %"class.tensorflow::AbstractTensorInterface"*, align 8
  %ptr.addr = alloca i8*, align 8
  store %"class.tensorflow::AbstractTensorInterface"* %this, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::AbstractTensorInterface"** %this.addr, metadata !2549, metadata !DIExpression()), !dbg !2550
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !2551, metadata !DIExpression()), !dbg !2552
  %this1 = load %"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !2553
  call void @_ZdlPv(i8* %0) #6, !dbg !2554
  ret void, !dbg !2555
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i8* @_ZN10tensorflow9Allocator11AllocateRawEmmPKv(%"class.tensorflow::AbstractTensorInterface"* %this, i64 %alignment, i64 %num_bytes, i8* %0) unnamed_addr #5 comdat align 2 !dbg !2556 {
entry:
  %this.addr = alloca %"class.tensorflow::AbstractTensorInterface"*, align 8
  %alignment.addr = alloca i64, align 8
  %num_bytes.addr = alloca i64, align 8
  %.addr = alloca i8*, align 8
  store %"class.tensorflow::AbstractTensorInterface"* %this, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::AbstractTensorInterface"** %this.addr, metadata !2557, metadata !DIExpression()), !dbg !2558
  store i64 %alignment, i64* %alignment.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %alignment.addr, metadata !2559, metadata !DIExpression()), !dbg !2560
  store i64 %num_bytes, i64* %num_bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %num_bytes.addr, metadata !2561, metadata !DIExpression()), !dbg !2562
  store i8* %0, i8** %.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %.addr, metadata !2563, metadata !DIExpression()), !dbg !2564
  %this1 = load %"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  %1 = load i64, i64* %alignment.addr, align 8, !dbg !2565
  %2 = load i64, i64* %num_bytes.addr, align 8, !dbg !2566
  %3 = bitcast %"class.tensorflow::AbstractTensorInterface"* %this1 to i8* (%"class.tensorflow::AbstractTensorInterface"*, i64, i64)***, !dbg !2567
  %vtable = load i8* (%"class.tensorflow::AbstractTensorInterface"*, i64, i64)**, i8* (%"class.tensorflow::AbstractTensorInterface"*, i64, i64)*** %3, align 8, !dbg !2567
  %vfn = getelementptr inbounds i8* (%"class.tensorflow::AbstractTensorInterface"*, i64, i64)*, i8* (%"class.tensorflow::AbstractTensorInterface"*, i64, i64)** %vtable, i64 3, !dbg !2567
  %4 = load i8* (%"class.tensorflow::AbstractTensorInterface"*, i64, i64)*, i8* (%"class.tensorflow::AbstractTensorInterface"*, i64, i64)** %vfn, align 8, !dbg !2567
  %call = call i8* %4(%"class.tensorflow::AbstractTensorInterface"* %this1, i64 %1, i64 %2), !dbg !2567
  ret i8* %call, !dbg !2568
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow9Allocator13DeallocateRawEPvmm(%"class.tensorflow::AbstractTensorInterface"* %this, i8* %ptr, i64 %0, i64 %1) unnamed_addr #5 comdat align 2 !dbg !2569 {
entry:
  %this.addr = alloca %"class.tensorflow::AbstractTensorInterface"*, align 8
  %ptr.addr = alloca i8*, align 8
  %.addr = alloca i64, align 8
  %.addr1 = alloca i64, align 8
  store %"class.tensorflow::AbstractTensorInterface"* %this, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::AbstractTensorInterface"** %this.addr, metadata !2570, metadata !DIExpression()), !dbg !2571
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !2572, metadata !DIExpression()), !dbg !2573
  store i64 %0, i64* %.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %.addr, metadata !2574, metadata !DIExpression()), !dbg !2575
  store i64 %1, i64* %.addr1, align 8
  call void @llvm.dbg.declare(metadata i64* %.addr1, metadata !2576, metadata !DIExpression()), !dbg !2577
  %this2 = load %"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  %2 = load i8*, i8** %ptr.addr, align 8, !dbg !2578
  %3 = bitcast %"class.tensorflow::AbstractTensorInterface"* %this2 to void (%"class.tensorflow::AbstractTensorInterface"*, i8*)***, !dbg !2579
  %vtable = load void (%"class.tensorflow::AbstractTensorInterface"*, i8*)**, void (%"class.tensorflow::AbstractTensorInterface"*, i8*)*** %3, align 8, !dbg !2579
  %vfn = getelementptr inbounds void (%"class.tensorflow::AbstractTensorInterface"*, i8*)*, void (%"class.tensorflow::AbstractTensorInterface"*, i8*)** %vtable, i64 4, !dbg !2579
  %4 = load void (%"class.tensorflow::AbstractTensorInterface"*, i8*)*, void (%"class.tensorflow::AbstractTensorInterface"*, i8*)** %vfn, align 8, !dbg !2579
  call void %4(%"class.tensorflow::AbstractTensorInterface"* %this2, i8* %2), !dbg !2579
  ret void, !dbg !2580
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local zeroext i1 @_ZNK10tensorflow9Allocator21TracksAllocationSizesEv(%"class.tensorflow::AbstractTensorInterface"* %this) unnamed_addr #4 comdat align 2 !dbg !2581 {
entry:
  %this.addr = alloca %"class.tensorflow::AbstractTensorInterface"*, align 8
  store %"class.tensorflow::AbstractTensorInterface"* %this, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::AbstractTensorInterface"** %this.addr, metadata !2582, metadata !DIExpression()), !dbg !2584
  %this1 = load %"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  ret i1 false, !dbg !2585
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local zeroext i1 @_ZNK10tensorflow9Allocator21AllocatesOpaqueHandleEv(%"class.tensorflow::AbstractTensorInterface"* %this) unnamed_addr #4 comdat align 2 !dbg !2586 {
entry:
  %this.addr = alloca %"class.tensorflow::AbstractTensorInterface"*, align 8
  store %"class.tensorflow::AbstractTensorInterface"* %this, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::AbstractTensorInterface"** %this.addr, metadata !2587, metadata !DIExpression()), !dbg !2588
  %this1 = load %"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  ret i1 false, !dbg !2589
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @_ZNK10tensorflow9Allocator13RequestedSizeEPKv(%"class.tensorflow::AbstractTensorInterface"* %this, i8* %0) unnamed_addr #4 comdat align 2 !dbg !2590 {
entry:
  %this.addr = alloca %"class.tensorflow::AbstractTensorInterface"*, align 8
  %.addr = alloca i8*, align 8
  store %"class.tensorflow::AbstractTensorInterface"* %this, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::AbstractTensorInterface"** %this.addr, metadata !2591, metadata !DIExpression()), !dbg !2592
  store i8* %0, i8** %.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %.addr, metadata !2593, metadata !DIExpression()), !dbg !2594
  %this1 = load %"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  ret i64 0, !dbg !2595
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @_ZNK10tensorflow9Allocator13AllocatedSizeEPKv(%"class.tensorflow::AbstractTensorInterface"* %this, i8* %0) unnamed_addr #4 comdat align 2 !dbg !2596 {
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
define linkonce_odr dso_local i64 @_ZNK10tensorflow9Allocator12AllocationIdEPKv(%"class.tensorflow::AbstractTensorInterface"* %this, i8* %0) unnamed_addr #4 comdat align 2 !dbg !2602 {
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
define linkonce_odr dso_local i64 @_ZNK10tensorflow9Allocator17AllocatedSizeSlowEPKv(%"class.tensorflow::AbstractTensorInterface"* %this, i8* %0) unnamed_addr #4 comdat align 2 !dbg !2608 {
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
define linkonce_odr dso_local zeroext i1 @_ZN10tensorflow9Allocator10ClearStatsEv(%"class.tensorflow::AbstractTensorInterface"* %this) unnamed_addr #4 comdat align 2 !dbg !2614 {
entry:
  %this.addr = alloca %"class.tensorflow::AbstractTensorInterface"*, align 8
  store %"class.tensorflow::AbstractTensorInterface"* %this, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::AbstractTensorInterface"** %this.addr, metadata !2615, metadata !DIExpression()), !dbg !2616
  %this1 = load %"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  ret i1 false, !dbg !2617
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow9Allocator15SetSafeFrontierEm(%"class.tensorflow::AbstractTensorInterface"* %this, i64 %0) unnamed_addr #4 comdat align 2 !dbg !2618 {
entry:
  %this.addr = alloca %"class.tensorflow::AbstractTensorInterface"*, align 8
  %.addr = alloca i64, align 8
  store %"class.tensorflow::AbstractTensorInterface"* %this, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::AbstractTensorInterface"** %this.addr, metadata !2619, metadata !DIExpression()), !dbg !2620
  store i64 %0, i64* %.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %.addr, metadata !2621, metadata !DIExpression()), !dbg !2622
  %this1 = load %"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  ret void, !dbg !2623
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow9Allocator29SetStreamAndPreallocateMemoryEPv(%"class.tensorflow::AbstractTensorInterface"* %this, i8* %0) unnamed_addr #4 comdat align 2 !dbg !2624 {
entry:
  %this.addr = alloca %"class.tensorflow::AbstractTensorInterface"*, align 8
  %.addr = alloca i8*, align 8
  store %"class.tensorflow::AbstractTensorInterface"* %this, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::AbstractTensorInterface"** %this.addr, metadata !2625, metadata !DIExpression()), !dbg !2626
  store i8* %0, i8** %.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %.addr, metadata !2627, metadata !DIExpression()), !dbg !2628
  %this1 = load %"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  ret void, !dbg !2629
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i32 @_ZNK10tensorflow9Allocator13GetMemoryTypeEv(%"class.tensorflow::AbstractTensorInterface"* %this) unnamed_addr #4 comdat align 2 !dbg !2630 {
entry:
  %this.addr = alloca %"class.tensorflow::AbstractTensorInterface"*, align 8
  store %"class.tensorflow::AbstractTensorInterface"* %this, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::AbstractTensorInterface"** %this.addr, metadata !2631, metadata !DIExpression()), !dbg !2632
  %this1 = load %"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  ret i32 0, !dbg !2633
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
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(%"class.std::__cxx11::basic_string"* %this, i8* %__s, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %__a) unnamed_addr #5 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !2634 {
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
  call void @llvm.dbg.declare(metadata %"class.std::__cxx11::basic_string"** %this.addr, metadata !2641, metadata !DIExpression()), !dbg !2643
  store i8* %__s, i8** %__s.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %__s.addr, metadata !2644, metadata !DIExpression()), !dbg !2645
  store %"class.std::allocator.0"* %__a, %"class.std::allocator.0"** %__a.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::allocator.0"** %__a.addr, metadata !2646, metadata !DIExpression()), !dbg !2647
  %this1 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %this.addr, align 8
  %_M_dataplus = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %this1, i32 0, i32 0, !dbg !2648
  %call = call i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv(%"class.std::__cxx11::basic_string"* %this1), !dbg !2649
  %0 = load %"class.std::allocator.0"*, %"class.std::allocator.0"** %__a.addr, align 8, !dbg !2650
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC1EPcRKS3_(%"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char>>::_Alloc_hider"* %_M_dataplus, i8* %call, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %0), !dbg !2648
  call void @llvm.dbg.declare(metadata i8** %__end, metadata !2651, metadata !DIExpression()), !dbg !2653
  %1 = load i8*, i8** %__s.addr, align 8, !dbg !2654
  %tobool = icmp ne i8* %1, null, !dbg !2654
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !2654

cond.true:                                        ; preds = %entry
  %2 = load i8*, i8** %__s.addr, align 8, !dbg !2655
  %3 = load i8*, i8** %__s.addr, align 8, !dbg !2656
  %call2 = invoke i64 @_ZNSt11char_traitsIcE6lengthEPKc(i8* %3)
          to label %invoke.cont unwind label %lpad, !dbg !2657

invoke.cont:                                      ; preds = %cond.true
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 %call2, !dbg !2658
  br label %cond.end, !dbg !2654

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !2654

cond.end:                                         ; preds = %cond.false, %invoke.cont
  %cond = phi i8* [ %add.ptr, %invoke.cont ], [ inttoptr (i64 1 to i8*), %cond.false ], !dbg !2654
  store i8* %cond, i8** %__end, align 8, !dbg !2653
  %4 = load i8*, i8** %__s.addr, align 8, !dbg !2659
  %5 = load i8*, i8** %__end, align 8, !dbg !2660
  %6 = bitcast %"class.std::allocator.0"* %ref.tmp to %"class.std::allocator.0"*, !dbg !2661
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag(%"class.std::__cxx11::basic_string"* %this1, i8* %4, i8* %5)
          to label %invoke.cont3 unwind label %lpad, !dbg !2662

invoke.cont3:                                     ; preds = %cond.end
  ret void, !dbg !2663

lpad:                                             ; preds = %cond.end, %cond.true
  %7 = landingpad { i8*, i32 }
          cleanup, !dbg !2664
  %8 = extractvalue { i8*, i32 } %7, 0, !dbg !2664
  store i8* %8, i8** %exn.slot, align 8, !dbg !2664
  %9 = extractvalue { i8*, i32 } %7, 1, !dbg !2664
  store i32 %9, i32* %ehselector.slot, align 4, !dbg !2664
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev(%"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char>>::_Alloc_hider"* %_M_dataplus) #6, !dbg !2664
  br label %eh.resume, !dbg !2664

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8, !dbg !2664
  %sel = load i32, i32* %ehselector.slot, align 4, !dbg !2664
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0, !dbg !2664
  %lpad.val4 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1, !dbg !2664
  resume { i8*, i32 } %lpad.val4, !dbg !2664
}

; Function Attrs: nounwind
declare dso_local void @_ZNSaIcED1Ev(%"class.std::allocator.0"*) unnamed_addr #3

declare dso_local i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv(%"class.std::__cxx11::basic_string"*) #2

declare dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC1EPcRKS3_(%"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char>>::_Alloc_hider"*, i8*, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1)) unnamed_addr #2

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i64 @_ZNSt11char_traitsIcE6lengthEPKc(i8* %__s) #5 comdat align 2 !dbg !2665 {
entry:
  %__s.addr.i = alloca i8*, align 8
  %retval = alloca i64, align 8
  %__s.addr = alloca i8*, align 8
  store i8* %__s, i8** %__s.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %__s.addr, metadata !2718, metadata !DIExpression()), !dbg !2719
  %0 = load i8*, i8** %__s.addr, align 8, !dbg !2720
  store i8* %0, i8** %__s.addr.i, align 8
  call void @llvm.dbg.declare(metadata i8** %__s.addr.i, metadata !2722, metadata !DIExpression()), !dbg !2726
  br i1 false, label %if.then, label %if.end, !dbg !2728

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %__s.addr, align 8, !dbg !2729
  %call1 = call i64 @_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc(i8* %1), !dbg !2730
  store i64 %call1, i64* %retval, align 8, !dbg !2731
  br label %return, !dbg !2731

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %__s.addr, align 8, !dbg !2732
  %call2 = call i64 @strlen(i8* %2) #6, !dbg !2733
  store i64 %call2, i64* %retval, align 8, !dbg !2734
  br label %return, !dbg !2734

return:                                           ; preds = %if.end, %if.then
  %3 = load i64, i64* %retval, align 8, !dbg !2735
  ret i64 %3, !dbg !2735
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag(%"class.std::__cxx11::basic_string"* %this, i8* %__beg, i8* %__end) #5 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !2736 {
entry:
  %0 = alloca %"class.std::allocator.0", align 1
  %this.addr = alloca %"class.std::__cxx11::basic_string"*, align 8
  %__beg.addr = alloca i8*, align 8
  %__end.addr = alloca i8*, align 8
  %__dnew = alloca i64, align 8
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  store %"class.std::__cxx11::basic_string"* %this, %"class.std::__cxx11::basic_string"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__cxx11::basic_string"** %this.addr, metadata !2746, metadata !DIExpression()), !dbg !2747
  store i8* %__beg, i8** %__beg.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %__beg.addr, metadata !2748, metadata !DIExpression()), !dbg !2749
  store i8* %__end, i8** %__end.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %__end.addr, metadata !2750, metadata !DIExpression()), !dbg !2751
  call void @llvm.dbg.declare(metadata %"class.std::allocator.0"* %0, metadata !2752, metadata !DIExpression()), !dbg !2753
  %this1 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %this.addr, align 8
  %1 = load i8*, i8** %__beg.addr, align 8, !dbg !2754
  %call = call zeroext i1 @_ZN9__gnu_cxx17__is_null_pointerIKcEEbPT_(i8* %1), !dbg !2756
  br i1 %call, label %land.lhs.true, label %if.end, !dbg !2757

land.lhs.true:                                    ; preds = %entry
  %2 = load i8*, i8** %__beg.addr, align 8, !dbg !2758
  %3 = load i8*, i8** %__end.addr, align 8, !dbg !2759
  %cmp = icmp ne i8* %2, %3, !dbg !2760
  br i1 %cmp, label %if.then, label %if.end, !dbg !2761

if.then:                                          ; preds = %land.lhs.true
  call void @_ZSt19__throw_logic_errorPKc(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3.2, i64 0, i64 0)) #19, !dbg !2762
  unreachable, !dbg !2762

if.end:                                           ; preds = %land.lhs.true, %entry
  call void @llvm.dbg.declare(metadata i64* %__dnew, metadata !2763, metadata !DIExpression()), !dbg !2764
  %4 = load i8*, i8** %__beg.addr, align 8, !dbg !2765
  %5 = load i8*, i8** %__end.addr, align 8, !dbg !2766
  %call2 = call i64 @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_(i8* %4, i8* %5), !dbg !2767
  store i64 %call2, i64* %__dnew, align 8, !dbg !2764
  %6 = load i64, i64* %__dnew, align 8, !dbg !2768
  %cmp3 = icmp ugt i64 %6, 15, !dbg !2770
  br i1 %cmp3, label %if.then4, label %if.end6, !dbg !2771

if.then4:                                         ; preds = %if.end
  %call5 = call i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* %this1, i64* nonnull align 8 dereferenceable(8) %__dnew, i64 0), !dbg !2772
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc(%"class.std::__cxx11::basic_string"* %this1, i8* %call5), !dbg !2774
  %7 = load i64, i64* %__dnew, align 8, !dbg !2775
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm(%"class.std::__cxx11::basic_string"* %this1, i64 %7), !dbg !2776
  br label %if.end6, !dbg !2777

if.end6:                                          ; preds = %if.then4, %if.end
  %call7 = invoke i8* @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv(%"class.std::__cxx11::basic_string"* %this1)
          to label %invoke.cont unwind label %lpad, !dbg !2778

invoke.cont:                                      ; preds = %if.end6
  %8 = load i8*, i8** %__beg.addr, align 8, !dbg !2780
  %9 = load i8*, i8** %__end.addr, align 8, !dbg !2781
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_(i8* %call7, i8* %8, i8* %9) #6, !dbg !2782
  br label %try.cont, !dbg !2783

lpad:                                             ; preds = %if.end6
  %10 = landingpad { i8*, i32 }
          catch i8* null, !dbg !2784
  %11 = extractvalue { i8*, i32 } %10, 0, !dbg !2784
  store i8* %11, i8** %exn.slot, align 8, !dbg !2784
  %12 = extractvalue { i8*, i32 } %10, 1, !dbg !2784
  store i32 %12, i32* %ehselector.slot, align 4, !dbg !2784
  br label %catch, !dbg !2784

catch:                                            ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8, !dbg !2783
  %13 = call i8* @__cxa_begin_catch(i8* %exn) #6, !dbg !2783
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv(%"class.std::__cxx11::basic_string"* %this1)
          to label %invoke.cont9 unwind label %lpad8, !dbg !2785

invoke.cont9:                                     ; preds = %catch
  invoke void @__cxa_rethrow() #19
          to label %unreachable unwind label %lpad8, !dbg !2787

lpad8:                                            ; preds = %invoke.cont9, %catch
  %14 = landingpad { i8*, i32 }
          cleanup, !dbg !2788
  %15 = extractvalue { i8*, i32 } %14, 0, !dbg !2788
  store i8* %15, i8** %exn.slot, align 8, !dbg !2788
  %16 = extractvalue { i8*, i32 } %14, 1, !dbg !2788
  store i32 %16, i32* %ehselector.slot, align 4, !dbg !2788
  invoke void @__cxa_end_catch()
          to label %invoke.cont10 unwind label %terminate.lpad, !dbg !2789

invoke.cont10:                                    ; preds = %lpad8
  br label %eh.resume, !dbg !2789

try.cont:                                         ; preds = %invoke.cont
  %17 = load i64, i64* %__dnew, align 8, !dbg !2790
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm(%"class.std::__cxx11::basic_string"* %this1, i64 %17), !dbg !2791
  ret void, !dbg !2792

eh.resume:                                        ; preds = %invoke.cont10
  %exn11 = load i8*, i8** %exn.slot, align 8, !dbg !2789
  %sel = load i32, i32* %ehselector.slot, align 4, !dbg !2789
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn11, 0, !dbg !2789
  %lpad.val12 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1, !dbg !2789
  resume { i8*, i32 } %lpad.val12, !dbg !2789

terminate.lpad:                                   ; preds = %lpad8
  %18 = landingpad { i8*, i32 }
          catch i8* null, !dbg !2789
  %19 = extractvalue { i8*, i32 } %18, 0, !dbg !2789
  call void @__clang_call_terminate(i8* %19) #14, !dbg !2789
  unreachable, !dbg !2789

unreachable:                                      ; preds = %invoke.cont9
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev(%"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char>>::_Alloc_hider"* %this) unnamed_addr #4 comdat align 2 !dbg !2793 {
entry:
  %this.addr = alloca %"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char>>::_Alloc_hider"*, align 8
  store %"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char>>::_Alloc_hider"* %this, %"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char>>::_Alloc_hider"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char>>::_Alloc_hider"** %this.addr, metadata !2818, metadata !DIExpression()), !dbg !2820
  %this1 = load %"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char>>::_Alloc_hider"*, %"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char>>::_Alloc_hider"** %this.addr, align 8
  %0 = bitcast %"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char>>::_Alloc_hider"* %this1 to %"class.std::allocator.0"*, !dbg !2821
  call void @_ZNSaIcED2Ev(%"class.std::allocator.0"* %0) #6, !dbg !2821
  ret void, !dbg !2823
}

; Function Attrs: nounwind
declare dso_local void @_ZNSaIcED2Ev(%"class.std::allocator.0"*) unnamed_addr #3

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local zeroext i1 @_ZN9__gnu_cxx17__is_null_pointerIKcEEbPT_(i8* %__ptr) #4 comdat !dbg !2824 {
entry:
  %__ptr.addr = alloca i8*, align 8
  store i8* %__ptr, i8** %__ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %__ptr.addr, metadata !2828, metadata !DIExpression()), !dbg !2829
  %0 = load i8*, i8** %__ptr.addr, align 8, !dbg !2830
  %cmp = icmp eq i8* %0, null, !dbg !2831
  ret i1 %cmp, !dbg !2832
}

; Function Attrs: noreturn
declare dso_local void @_ZSt19__throw_logic_errorPKc(i8*) #11

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i64 @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_(i8* %__first, i8* %__last) #5 comdat !dbg !2833 {
entry:
  %__first.addr = alloca i8*, align 8
  %__last.addr = alloca i8*, align 8
  %agg.tmp = alloca %"class.std::allocator.0", align 1
  %undef.agg.tmp = alloca %"class.std::allocator.0", align 1
  store i8* %__first, i8** %__first.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %__first.addr, metadata !2843, metadata !DIExpression()), !dbg !2844
  store i8* %__last, i8** %__last.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %__last.addr, metadata !2845, metadata !DIExpression()), !dbg !2846
  %0 = load i8*, i8** %__first.addr, align 8, !dbg !2847
  %1 = load i8*, i8** %__last.addr, align 8, !dbg !2848
  call void @_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_(i8** nonnull align 8 dereferenceable(8) %__first.addr), !dbg !2849
  %call = call i64 @_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag(i8* %0, i8* %1), !dbg !2850
  ret i64 %call, !dbg !2851
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
define linkonce_odr dso_local void @_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_(i8** nonnull align 8 dereferenceable(8) %0) #4 comdat !dbg !2852 {
entry:
  %.addr = alloca i8**, align 8
  store i8** %0, i8*** %.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %.addr, metadata !2866, metadata !DIExpression()), !dbg !2867
  ret void, !dbg !2868
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag(i8* %__first, i8* %__last) #4 comdat !dbg !2869 {
entry:
  %0 = alloca %"class.std::allocator.0", align 1
  %__first.addr = alloca i8*, align 8
  %__last.addr = alloca i8*, align 8
  store i8* %__first, i8** %__first.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %__first.addr, metadata !2874, metadata !DIExpression()), !dbg !2875
  store i8* %__last, i8** %__last.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %__last.addr, metadata !2876, metadata !DIExpression()), !dbg !2877
  call void @llvm.dbg.declare(metadata %"class.std::allocator.0"* %0, metadata !2878, metadata !DIExpression()), !dbg !2879
  %1 = load i8*, i8** %__last.addr, align 8, !dbg !2880
  %2 = load i8*, i8** %__first.addr, align 8, !dbg !2881
  %sub.ptr.lhs.cast = ptrtoint i8* %1 to i64, !dbg !2882
  %sub.ptr.rhs.cast = ptrtoint i8* %2 to i64, !dbg !2882
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !2882
  ret i64 %sub.ptr.sub, !dbg !2883
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i64 @_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc(i8* %__p) #5 comdat align 2 !dbg !2884 {
entry:
  %__p.addr = alloca i8*, align 8
  %__i = alloca i64, align 8
  %ref.tmp = alloca i8, align 1
  store i8* %__p, i8** %__p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %__p.addr, metadata !2936, metadata !DIExpression()), !dbg !2937
  call void @llvm.dbg.declare(metadata i64* %__i, metadata !2938, metadata !DIExpression()), !dbg !2939
  store i64 0, i64* %__i, align 8, !dbg !2939
  br label %while.cond, !dbg !2940

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i8*, i8** %__p.addr, align 8, !dbg !2941
  %1 = load i64, i64* %__i, align 8, !dbg !2942
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 %1, !dbg !2941
  store i8 0, i8* %ref.tmp, align 1, !dbg !2943
  %call = call zeroext i1 @_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_(i8* nonnull align 1 dereferenceable(1) %arrayidx, i8* nonnull align 1 dereferenceable(1) %ref.tmp), !dbg !2944
  %lnot = xor i1 %call, true, !dbg !2945
  br i1 %lnot, label %while.body, label %while.end, !dbg !2940

while.body:                                       ; preds = %while.cond
  %2 = load i64, i64* %__i, align 8, !dbg !2946
  %inc = add i64 %2, 1, !dbg !2946
  store i64 %inc, i64* %__i, align 8, !dbg !2946
  br label %while.cond, !dbg !2940, !llvm.loop !2947

while.end:                                        ; preds = %while.cond
  %3 = load i64, i64* %__i, align 8, !dbg !2949
  ret i64 %3, !dbg !2950
}

; Function Attrs: nounwind
declare dso_local i64 @strlen(i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local zeroext i1 @_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_(i8* nonnull align 1 dereferenceable(1) %__c1, i8* nonnull align 1 dereferenceable(1) %__c2) #4 comdat align 2 !dbg !2951 {
entry:
  %__c1.addr = alloca i8*, align 8
  %__c2.addr = alloca i8*, align 8
  store i8* %__c1, i8** %__c1.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %__c1.addr, metadata !2952, metadata !DIExpression()), !dbg !2953
  store i8* %__c2, i8** %__c2.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %__c2.addr, metadata !2954, metadata !DIExpression()), !dbg !2955
  %0 = load i8*, i8** %__c1.addr, align 8, !dbg !2956
  %1 = load i8, i8* %0, align 1, !dbg !2956
  %conv = sext i8 %1 to i32, !dbg !2956
  %2 = load i8*, i8** %__c2.addr, align 8, !dbg !2957
  %3 = load i8, i8* %2, align 1, !dbg !2957
  %conv1 = sext i8 %3 to i32, !dbg !2957
  %cmp = icmp eq i32 %conv, %conv1, !dbg !2958
  ret i1 %cmp, !dbg !2959
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow9AllocatorD2Ev(%"class.tensorflow::AbstractTensorInterface"* %this) unnamed_addr #4 comdat align 2 !dbg !2960 {
entry:
  %this.addr = alloca %"class.tensorflow::AbstractTensorInterface"*, align 8
  store %"class.tensorflow::AbstractTensorInterface"* %this, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::AbstractTensorInterface"** %this.addr, metadata !2961, metadata !DIExpression()), !dbg !2962
  %this1 = load %"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  ret void, !dbg !2963
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow9AllocatorD0Ev(%"class.tensorflow::AbstractTensorInterface"* %this) unnamed_addr #4 comdat align 2 !dbg !2964 {
entry:
  %this.addr = alloca %"class.tensorflow::AbstractTensorInterface"*, align 8
  store %"class.tensorflow::AbstractTensorInterface"* %this, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::AbstractTensorInterface"** %this.addr, metadata !2965, metadata !DIExpression()), !dbg !2966
  %this1 = load %"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  call void @_ZN10tensorflow9AllocatorD2Ev(%"class.tensorflow::AbstractTensorInterface"* %this1) #6, !dbg !2967
  %0 = bitcast %"class.tensorflow::AbstractTensorInterface"* %this1 to i8*, !dbg !2967
  call void @_ZdlPv(i8* %0) #17, !dbg !2967
  ret void, !dbg !2968
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow9Allocator4NameB5cxx11Ev(%"class.std::__cxx11::basic_string"* noalias sret align 8 %agg.result, %"class.tensorflow::AbstractTensorInterface"* %this) unnamed_addr #5 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !2969 {
entry:
  %result.ptr = alloca i8*, align 8
  %this.addr = alloca %"class.tensorflow::AbstractTensorInterface"*, align 8
  %ref.tmp = alloca %"class.std::allocator.0", align 1
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  %0 = bitcast %"class.std::__cxx11::basic_string"* %agg.result to i8*
  store i8* %0, i8** %result.ptr, align 8
  store %"class.tensorflow::AbstractTensorInterface"* %this, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::AbstractTensorInterface"** %this.addr, metadata !2970, metadata !DIExpression()), !dbg !2971
  %this1 = load %"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  call void @_ZNSaIcEC1Ev(%"class.std::allocator.0"* %ref.tmp) #6, !dbg !2972
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(%"class.std::__cxx11::basic_string"* %agg.result, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.3, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %ref.tmp)
          to label %invoke.cont unwind label %lpad, !dbg !2972

invoke.cont:                                      ; preds = %entry
  call void @_ZNSaIcED1Ev(%"class.std::allocator.0"* %ref.tmp) #6, !dbg !2973
  ret void, !dbg !2973

lpad:                                             ; preds = %entry
  %1 = landingpad { i8*, i32 }
          cleanup, !dbg !2974
  %2 = extractvalue { i8*, i32 } %1, 0, !dbg !2974
  store i8* %2, i8** %exn.slot, align 8, !dbg !2974
  %3 = extractvalue { i8*, i32 } %1, 1, !dbg !2974
  store i32 %3, i32* %ehselector.slot, align 4, !dbg !2974
  call void @_ZNSaIcED1Ev(%"class.std::allocator.0"* %ref.tmp) #6, !dbg !2973
  br label %eh.resume, !dbg !2973

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8, !dbg !2973
  %sel = load i32, i32* %ehselector.slot, align 4, !dbg !2973
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0, !dbg !2973
  %lpad.val2 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1, !dbg !2973
  resume { i8*, i32 } %lpad.val2, !dbg !2973
}

; Function Attrs: noinline optnone uwtable
define dso_local void @_ZN10tensorflow17deallocate_bufferEPvmS0_(i8* %data, i64 %len, i8* %arg) #5 !dbg !2975 {
entry:
  %data.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %arg.addr = alloca i8*, align 8
  %allocator = alloca %"class.tensorflow::AbstractTensorInterface"*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !2976, metadata !DIExpression()), !dbg !2977
  store i64 %len, i64* %len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !2978, metadata !DIExpression()), !dbg !2979
  store i8* %arg, i8** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %arg.addr, metadata !2980, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.declare(metadata %"class.tensorflow::AbstractTensorInterface"** %allocator, metadata !2982, metadata !DIExpression()), !dbg !2983
  store %"class.tensorflow::AbstractTensorInterface"* null, %"class.tensorflow::AbstractTensorInterface"** %allocator, align 8, !dbg !2983
  %0 = load i8*, i8** %arg.addr, align 8, !dbg !2984
  %cmp = icmp eq i8* %0, null, !dbg !2986
  br i1 %cmp, label %if.then, label %if.else, !dbg !2987

if.then:                                          ; preds = %entry
  %call = call %"class.tensorflow::AbstractTensorInterface"* @_ZN10tensorflow13cpu_allocatorEv(), !dbg !2988
  store %"class.tensorflow::AbstractTensorInterface"* %call, %"class.tensorflow::AbstractTensorInterface"** %allocator, align 8, !dbg !2990
  br label %if.end, !dbg !2991

if.else:                                          ; preds = %entry
  %1 = load i8*, i8** %arg.addr, align 8, !dbg !2992
  %2 = bitcast i8* %1 to %"class.tensorflow::AbstractTensorInterface"*, !dbg !2994
  store %"class.tensorflow::AbstractTensorInterface"* %2, %"class.tensorflow::AbstractTensorInterface"** %allocator, align 8, !dbg !2995
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load %"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"** %allocator, align 8, !dbg !2996
  %4 = load i8*, i8** %data.addr, align 8, !dbg !2997
  %5 = bitcast %"class.tensorflow::AbstractTensorInterface"* %3 to void (%"class.tensorflow::AbstractTensorInterface"*, i8*)***, !dbg !2998
  %vtable = load void (%"class.tensorflow::AbstractTensorInterface"*, i8*)**, void (%"class.tensorflow::AbstractTensorInterface"*, i8*)*** %5, align 8, !dbg !2998
  %vfn = getelementptr inbounds void (%"class.tensorflow::AbstractTensorInterface"*, i8*)*, void (%"class.tensorflow::AbstractTensorInterface"*, i8*)** %vtable, i64 4, !dbg !2998
  %6 = load void (%"class.tensorflow::AbstractTensorInterface"*, i8*)*, void (%"class.tensorflow::AbstractTensorInterface"*, i8*)** %vfn, align 8, !dbg !2998
  call void %6(%"class.tensorflow::AbstractTensorInterface"* %3, i8* %4), !dbg !2998
  ret void, !dbg !2999
}

; Function Attrs: noinline optnone uwtable
define dso_local %struct.TF_Tensor* @TF_AllocateTensor(i32 %dtype, i64* %dims, i32 %num_dims, i64 %len) #5 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !3000 {
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
  call void @llvm.dbg.declare(metadata i32* %dtype.addr, metadata !3007, metadata !DIExpression()), !dbg !3008
  store i64* %dims, i64** %dims.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %dims.addr, metadata !3009, metadata !DIExpression()), !dbg !3010
  store i32 %num_dims, i32* %num_dims.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %num_dims.addr, metadata !3011, metadata !DIExpression()), !dbg !3012
  store i64 %len, i64* %len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !3013, metadata !DIExpression()), !dbg !3014
  call void @llvm.dbg.declare(metadata i8** %data, metadata !3015, metadata !DIExpression()), !dbg !3016
  %0 = load i64, i64* %len.addr, align 8, !dbg !3017
  %call = call %"class.tensorflow::AbstractTensorInterface"* @_ZN10tensorflow13cpu_allocatorEv(), !dbg !3018
  %call1 = call i8* @_ZN10tensorflow15allocate_tensorEPKcmPNS_9AllocatorE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i64 %0, %"class.tensorflow::AbstractTensorInterface"* %call), !dbg !3019
  store i8* %call1, i8** %data, align 8, !dbg !3016
  call void @llvm.dbg.declare(metadata %class.TF_ManagedBuffer** %buf, metadata !3020, metadata !DIExpression()), !dbg !3230
  %call2 = call noalias nonnull i8* @_Znwm(i64 56) #16, !dbg !3231, !heapallocsite !3022
  %1 = bitcast i8* %call2 to %class.TF_ManagedBuffer*, !dbg !3231
  %2 = load i8*, i8** %data, align 8, !dbg !3232
  %3 = load i64, i64* %len.addr, align 8, !dbg !3233
  %call3 = invoke %"class.tensorflow::AbstractTensorInterface"* @_ZN10tensorflow13cpu_allocatorEv()
          to label %invoke.cont unwind label %lpad, !dbg !3234

invoke.cont:                                      ; preds = %entry
  %4 = bitcast %"class.tensorflow::AbstractTensorInterface"* %call3 to i8*, !dbg !3234
  invoke void @_ZN16TF_ManagedBufferC2EPvmPFvS0_mS0_ES0_b(%class.TF_ManagedBuffer* %1, i8* %2, i64 %3, void (i8*, i64, i8*)* @_ZN10tensorflow17deallocate_bufferEPvmS0_, i8* %4, i1 zeroext true)
          to label %invoke.cont4 unwind label %lpad, !dbg !3235

invoke.cont4:                                     ; preds = %invoke.cont
  store %class.TF_ManagedBuffer* %1, %class.TF_ManagedBuffer** %buf, align 8, !dbg !3230
  %5 = load %class.TF_ManagedBuffer*, %class.TF_ManagedBuffer** %buf, align 8, !dbg !3236
  %6 = load i32, i32* %dtype.addr, align 4, !dbg !3237
  %7 = load i64*, i64** %dims.addr, align 8, !dbg !3238
  %8 = load i32, i32* %num_dims.addr, align 4, !dbg !3239
  %9 = load i64, i64* %len.addr, align 8, !dbg !3240
  %call5 = call %struct.TF_Tensor* @_ZN12_GLOBAL__N_112CreateTensorEP16TF_ManagedBuffer11TF_DataTypePKlim(%class.TF_ManagedBuffer* %5, i32 %6, i64* %7, i32 %8, i64 %9), !dbg !3241
  ret %struct.TF_Tensor* %call5, !dbg !3242

lpad:                                             ; preds = %invoke.cont, %entry
  %10 = landingpad { i8*, i32 }
          cleanup, !dbg !3243
  %11 = extractvalue { i8*, i32 } %10, 0, !dbg !3243
  store i8* %11, i8** %exn.slot, align 8, !dbg !3243
  %12 = extractvalue { i8*, i32 } %10, 1, !dbg !3243
  store i32 %12, i32* %ehselector.slot, align 4, !dbg !3243
  call void @_ZdlPv(i8* %call2) #17, !dbg !3231
  br label %eh.resume, !dbg !3231

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8, !dbg !3231
  %sel = load i32, i32* %ehselector.slot, align 4, !dbg !3231
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0, !dbg !3231
  %lpad.val6 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1, !dbg !3231
  resume { i8*, i32 } %lpad.val6, !dbg !3231
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN16TF_ManagedBufferC2EPvmPFvS0_mS0_ES0_b(%class.TF_ManagedBuffer* %this, i8* %data, i64 %len, void (i8*, i64, i8*)* %deallocator, i8* %deallocator_arg, i1 zeroext %owns_memory) unnamed_addr #5 comdat align 2 !dbg !3244 {
entry:
  %this.addr = alloca %class.TF_ManagedBuffer*, align 8
  %data.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %deallocator.addr = alloca void (i8*, i64, i8*)*, align 8
  %deallocator_arg.addr = alloca i8*, align 8
  %owns_memory.addr = alloca i8, align 1
  store %class.TF_ManagedBuffer* %this, %class.TF_ManagedBuffer** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %class.TF_ManagedBuffer** %this.addr, metadata !3245, metadata !DIExpression()), !dbg !3246
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !3247, metadata !DIExpression()), !dbg !3248
  store i64 %len, i64* %len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !3249, metadata !DIExpression()), !dbg !3250
  store void (i8*, i64, i8*)* %deallocator, void (i8*, i64, i8*)** %deallocator.addr, align 8
  call void @llvm.dbg.declare(metadata void (i8*, i64, i8*)** %deallocator.addr, metadata !3251, metadata !DIExpression()), !dbg !3252
  store i8* %deallocator_arg, i8** %deallocator_arg.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %deallocator_arg.addr, metadata !3253, metadata !DIExpression()), !dbg !3254
  %frombool = zext i1 %owns_memory to i8
  store i8 %frombool, i8* %owns_memory.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %owns_memory.addr, metadata !3255, metadata !DIExpression()), !dbg !3256
  %this1 = load %class.TF_ManagedBuffer*, %class.TF_ManagedBuffer** %this.addr, align 8
  %0 = bitcast %class.TF_ManagedBuffer* %this1 to %"class.tensorflow::TensorBuffer"*, !dbg !3257
  %1 = load i8*, i8** %data.addr, align 8, !dbg !3258
  call void @_ZN10tensorflow12TensorBufferC2EPv(%"class.tensorflow::TensorBuffer"* %0, i8* %1), !dbg !3259
  %2 = bitcast %class.TF_ManagedBuffer* %this1 to i32 (...)***, !dbg !3257
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [10 x i8*] }, { [10 x i8*] }* @_ZTV16TF_ManagedBuffer, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %2, align 8, !dbg !3257
  %len_ = getelementptr inbounds %class.TF_ManagedBuffer, %class.TF_ManagedBuffer* %this1, i32 0, i32 1, !dbg !3260
  %3 = load i64, i64* %len.addr, align 8, !dbg !3261
  store i64 %3, i64* %len_, align 8, !dbg !3260
  %deallocator_ = getelementptr inbounds %class.TF_ManagedBuffer, %class.TF_ManagedBuffer* %this1, i32 0, i32 2, !dbg !3262
  %4 = load void (i8*, i64, i8*)*, void (i8*, i64, i8*)** %deallocator.addr, align 8, !dbg !3263
  store void (i8*, i64, i8*)* %4, void (i8*, i64, i8*)** %deallocator_, align 8, !dbg !3262
  %deallocator_arg_ = getelementptr inbounds %class.TF_ManagedBuffer, %class.TF_ManagedBuffer* %this1, i32 0, i32 3, !dbg !3264
  %5 = load i8*, i8** %deallocator_arg.addr, align 8, !dbg !3265
  store i8* %5, i8** %deallocator_arg_, align 8, !dbg !3264
  %owns_memory_ = getelementptr inbounds %class.TF_ManagedBuffer, %class.TF_ManagedBuffer* %this1, i32 0, i32 4, !dbg !3266
  %6 = load i8, i8* %owns_memory.addr, align 1, !dbg !3267
  %tobool = trunc i8 %6 to i1, !dbg !3267
  %frombool2 = zext i1 %tobool to i8, !dbg !3266
  store i8 %frombool2, i8* %owns_memory_, align 8, !dbg !3266
  ret void, !dbg !3268
}

; Function Attrs: noinline optnone uwtable
define internal %struct.TF_Tensor* @_ZN12_GLOBAL__N_112CreateTensorEP16TF_ManagedBuffer11TF_DataTypePKlim(%class.TF_ManagedBuffer* %buf, i32 %dtype, i64* %dims, i32 %num_dims, i64 %len) #5 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !3269 {
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
  call void @llvm.dbg.declare(metadata %class.TF_ManagedBuffer** %buf.addr, metadata !3273, metadata !DIExpression()), !dbg !3274
  store i32 %dtype, i32* %dtype.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %dtype.addr, metadata !3275, metadata !DIExpression()), !dbg !3276
  store i64* %dims, i64** %dims.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %dims.addr, metadata !3277, metadata !DIExpression()), !dbg !3278
  store i32 %num_dims, i32* %num_dims.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %num_dims.addr, metadata !3279, metadata !DIExpression()), !dbg !3280
  store i64 %len, i64* %len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !3281, metadata !DIExpression()), !dbg !3282
  call void @llvm.dbg.declare(metadata %"class.std::vector"* %dimvec, metadata !3283, metadata !DIExpression()), !dbg !3284
  %0 = load i32, i32* %num_dims.addr, align 4, !dbg !3285
  %conv = sext i32 %0 to i64, !dbg !3285
  call void @_ZNSaIlEC2Ev(%"class.std::allocator.0"* %ref.tmp) #6, !dbg !3284
  invoke void @_ZNSt6vectorIlSaIlEEC2EmRKS0_(%"class.std::vector"* %dimvec, i64 %conv, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %ref.tmp)
          to label %invoke.cont unwind label %lpad, !dbg !3284

invoke.cont:                                      ; preds = %entry
  call void @_ZNSaIlED2Ev(%"class.std::allocator.0"* %ref.tmp) #6, !dbg !3284
  call void @llvm.dbg.declare(metadata i32* %i, metadata !3286, metadata !DIExpression()), !dbg !3288
  store i32 0, i32* %i, align 4, !dbg !3288
  br label %for.cond, !dbg !3289

for.cond:                                         ; preds = %for.inc, %invoke.cont
  %1 = load i32, i32* %i, align 4, !dbg !3290
  %2 = load i32, i32* %num_dims.addr, align 4, !dbg !3292
  %cmp = icmp slt i32 %1, %2, !dbg !3293
  br i1 %cmp, label %for.body, label %for.end, !dbg !3294

for.body:                                         ; preds = %for.cond
  %3 = load i64*, i64** %dims.addr, align 8, !dbg !3295
  %4 = load i32, i32* %i, align 4, !dbg !3297
  %idxprom = sext i32 %4 to i64, !dbg !3295
  %arrayidx = getelementptr inbounds i64, i64* %3, i64 %idxprom, !dbg !3295
  %5 = load i64, i64* %arrayidx, align 8, !dbg !3295
  %6 = load i32, i32* %i, align 4, !dbg !3298
  %conv1 = sext i32 %6 to i64, !dbg !3298
  %call = call nonnull align 8 dereferenceable(8) i64* @_ZNSt6vectorIlSaIlEEixEm(%"class.std::vector"* %dimvec, i64 %conv1) #6, !dbg !3299
  store i64 %5, i64* %call, align 8, !dbg !3300
  br label %for.inc, !dbg !3301

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !dbg !3302
  %inc = add nsw i32 %7, 1, !dbg !3302
  store i32 %inc, i32* %i, align 4, !dbg !3302
  br label %for.cond, !dbg !3303, !llvm.loop !3304

lpad:                                             ; preds = %entry
  %8 = landingpad { i8*, i32 }
          cleanup, !dbg !3306
  %9 = extractvalue { i8*, i32 } %8, 0, !dbg !3306
  store i8* %9, i8** %exn.slot, align 8, !dbg !3306
  %10 = extractvalue { i8*, i32 } %8, 1, !dbg !3306
  store i32 %10, i32* %ehselector.slot, align 4, !dbg !3306
  call void @_ZNSaIlED2Ev(%"class.std::allocator.0"* %ref.tmp) #6, !dbg !3284
  br label %eh.resume, !dbg !3284

for.end:                                          ; preds = %for.cond
  call void @llvm.dbg.declare(metadata %"class.tensorflow::Tensor"* %ret, metadata !3307, metadata !DIExpression()), !dbg !3308
  %11 = load i32, i32* %dtype.addr, align 4, !dbg !3309
  invoke void @_ZN10tensorflow11TensorShapeC2ERKSt6vectorIlSaIlEE(%"class.tensorflow::TensorShape"* %ref.tmp2, %"class.std::vector"* nonnull align 8 dereferenceable(24) %dimvec)
          to label %invoke.cont4 unwind label %lpad3, !dbg !3310

invoke.cont4:                                     ; preds = %for.end
  %12 = load %class.TF_ManagedBuffer*, %class.TF_ManagedBuffer** %buf.addr, align 8, !dbg !3311
  %13 = bitcast %class.TF_ManagedBuffer* %12 to %"class.tensorflow::TensorBuffer"*, !dbg !3311
  invoke void @_ZN10tensorflow6TensorC1E8DataTypeRKNS_11TensorShapeEPNS_12TensorBufferE(%"class.tensorflow::Tensor"* %ret, i32 %11, %"class.tensorflow::TensorShape"* nonnull align 8 dereferenceable(29) %ref.tmp2, %"class.tensorflow::TensorBuffer"* %13)
          to label %invoke.cont6 unwind label %lpad5, !dbg !3308

invoke.cont6:                                     ; preds = %invoke.cont4
  call void @_ZN10tensorflow11TensorShapeD2Ev(%"class.tensorflow::TensorShape"* %ref.tmp2) #6, !dbg !3308
  %14 = load %class.TF_ManagedBuffer*, %class.TF_ManagedBuffer** %buf.addr, align 8, !dbg !3312
  %15 = bitcast %class.TF_ManagedBuffer* %14 to %"class.tensorflow::core::RefCounted"*, !dbg !3313
  %call9 = invoke zeroext i1 @_ZNK10tensorflow4core10RefCounted5UnrefEv(%"class.tensorflow::core::RefCounted"* %15)
          to label %invoke.cont8 unwind label %lpad7, !dbg !3313

invoke.cont8:                                     ; preds = %invoke.cont6
  call void @llvm.dbg.declare(metadata i64* %elem_size, metadata !3314, metadata !DIExpression()), !dbg !3315
  %16 = load i32, i32* %dtype.addr, align 4, !dbg !3316
  %call11 = invoke i64 @_ZL15TF_DataTypeSize11TF_DataType(i32 %16)
          to label %invoke.cont10 unwind label %lpad7, !dbg !3317

invoke.cont10:                                    ; preds = %invoke.cont8
  store i64 %call11, i64* %elem_size, align 8, !dbg !3315
  %17 = load i64, i64* %elem_size, align 8, !dbg !3318
  %cmp12 = icmp ugt i64 %17, 0, !dbg !3320
  br i1 %cmp12, label %land.lhs.true, label %if.end, !dbg !3321

land.lhs.true:                                    ; preds = %invoke.cont10
  %18 = load i64, i64* %len.addr, align 8, !dbg !3322
  %19 = load i64, i64* %elem_size, align 8, !dbg !3323
  %call14 = invoke i64 @_ZNK10tensorflow6Tensor11NumElementsEv(%"class.tensorflow::Tensor"* %ret)
          to label %invoke.cont13 unwind label %lpad7, !dbg !3324

invoke.cont13:                                    ; preds = %land.lhs.true
  %mul = mul i64 %19, %call14, !dbg !3325
  %cmp15 = icmp ult i64 %18, %mul, !dbg !3326
  br i1 %cmp15, label %if.then, label %if.end, !dbg !3327

if.then:                                          ; preds = %invoke.cont13
  store %struct.TF_Tensor* null, %struct.TF_Tensor** %retval, align 8, !dbg !3328
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3328

lpad3:                                            ; preds = %for.end
  %20 = landingpad { i8*, i32 }
          cleanup, !dbg !3306
  %21 = extractvalue { i8*, i32 } %20, 0, !dbg !3306
  store i8* %21, i8** %exn.slot, align 8, !dbg !3306
  %22 = extractvalue { i8*, i32 } %20, 1, !dbg !3306
  store i32 %22, i32* %ehselector.slot, align 4, !dbg !3306
  br label %ehcleanup33, !dbg !3306

lpad5:                                            ; preds = %invoke.cont4
  %23 = landingpad { i8*, i32 }
          cleanup, !dbg !3306
  %24 = extractvalue { i8*, i32 } %23, 0, !dbg !3306
  store i8* %24, i8** %exn.slot, align 8, !dbg !3306
  %25 = extractvalue { i8*, i32 } %23, 1, !dbg !3306
  store i32 %25, i32* %ehselector.slot, align 4, !dbg !3306
  call void @_ZN10tensorflow11TensorShapeD2Ev(%"class.tensorflow::TensorShape"* %ref.tmp2) #6, !dbg !3308
  br label %ehcleanup33, !dbg !3308

lpad7:                                            ; preds = %if.end, %land.lhs.true, %invoke.cont8, %invoke.cont6
  %26 = landingpad { i8*, i32 }
          cleanup, !dbg !3306
  %27 = extractvalue { i8*, i32 } %26, 0, !dbg !3306
  store i8* %27, i8** %exn.slot, align 8, !dbg !3306
  %28 = extractvalue { i8*, i32 } %26, 1, !dbg !3306
  store i32 %28, i32* %ehselector.slot, align 4, !dbg !3306
  br label %ehcleanup31, !dbg !3306

if.end:                                           ; preds = %invoke.cont13, %invoke.cont10
  %call17 = invoke noalias nonnull i8* @_Znwm(i64 8) #16
          to label %invoke.cont16 unwind label %lpad7, !dbg !3330, !heapallocsite !3004

invoke.cont16:                                    ; preds = %if.end
  store i1 true, i1* %cleanup.isactive26, align 1
  %29 = bitcast i8* %call17 to %struct.TF_Tensor*, !dbg !3330
  %tensor = getelementptr inbounds %struct.TF_Tensor, %struct.TF_Tensor* %29, i32 0, i32 0, !dbg !3331
  %call20 = invoke noalias nonnull i8* @_Znwm(i64 48) #16
          to label %invoke.cont19 unwind label %lpad18, !dbg !3332, !heapallocsite !3333

invoke.cont19:                                    ; preds = %invoke.cont16
  store i1 true, i1* %cleanup.isactive, align 1
  %30 = bitcast i8* %call20 to %"class.tensorflow::TensorInterface"*, !dbg !3332
  %call21 = call nonnull align 8 dereferenceable(40) %"class.tensorflow::Tensor"* @_ZSt4moveIRN10tensorflow6TensorEEONSt16remove_referenceIT_E4typeEOS4_(%"class.tensorflow::Tensor"* nonnull align 8 dereferenceable(40) %ret) #6, !dbg !3391
  invoke void @_ZN10tensorflow6TensorC1EOS0_(%"class.tensorflow::Tensor"* %agg.tmp, %"class.tensorflow::Tensor"* nonnull align 8 dereferenceable(40) %call21)
          to label %invoke.cont23 unwind label %lpad22, !dbg !3391

invoke.cont23:                                    ; preds = %invoke.cont19
  invoke void @_ZN10tensorflow15TensorInterfaceC2ENS_6TensorE(%"class.tensorflow::TensorInterface"* %30, %"class.tensorflow::Tensor"* %agg.tmp)
          to label %invoke.cont25 unwind label %lpad24, !dbg !3392

invoke.cont25:                                    ; preds = %invoke.cont23
  store i1 false, i1* %cleanup.isactive, align 1, !dbg !3332
  %31 = bitcast %"class.tensorflow::TensorInterface"* %30 to %"class.tensorflow::AbstractTensorInterface"*, !dbg !3332
  store %"class.tensorflow::AbstractTensorInterface"* %31, %"class.tensorflow::AbstractTensorInterface"** %tensor, align 8, !dbg !3331
  store i1 false, i1* %cleanup.isactive26, align 1, !dbg !3330
  store %struct.TF_Tensor* %29, %struct.TF_Tensor** %retval, align 8, !dbg !3393
  call void @_ZN10tensorflow6TensorD1Ev(%"class.tensorflow::Tensor"* %agg.tmp) #6, !dbg !3393
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3393

lpad18:                                           ; preds = %invoke.cont16
  %32 = landingpad { i8*, i32 }
          cleanup, !dbg !3306
  %33 = extractvalue { i8*, i32 } %32, 0, !dbg !3306
  store i8* %33, i8** %exn.slot, align 8, !dbg !3306
  %34 = extractvalue { i8*, i32 } %32, 1, !dbg !3306
  store i32 %34, i32* %ehselector.slot, align 4, !dbg !3306
  br label %ehcleanup27, !dbg !3306

lpad22:                                           ; preds = %invoke.cont19
  %35 = landingpad { i8*, i32 }
          cleanup, !dbg !3306
  %36 = extractvalue { i8*, i32 } %35, 0, !dbg !3306
  store i8* %36, i8** %exn.slot, align 8, !dbg !3306
  %37 = extractvalue { i8*, i32 } %35, 1, !dbg !3306
  store i32 %37, i32* %ehselector.slot, align 4, !dbg !3306
  br label %ehcleanup, !dbg !3306

lpad24:                                           ; preds = %invoke.cont23
  %38 = landingpad { i8*, i32 }
          cleanup, !dbg !3306
  %39 = extractvalue { i8*, i32 } %38, 0, !dbg !3306
  store i8* %39, i8** %exn.slot, align 8, !dbg !3306
  %40 = extractvalue { i8*, i32 } %38, 1, !dbg !3306
  store i32 %40, i32* %ehselector.slot, align 4, !dbg !3306
  call void @_ZN10tensorflow6TensorD1Ev(%"class.tensorflow::Tensor"* %agg.tmp) #6, !dbg !3393
  br label %ehcleanup, !dbg !3393

ehcleanup:                                        ; preds = %lpad24, %lpad22
  %cleanup.is_active = load i1, i1* %cleanup.isactive, align 1, !dbg !3393
  br i1 %cleanup.is_active, label %cleanup.action, label %cleanup.done, !dbg !3393

cleanup.action:                                   ; preds = %ehcleanup
  call void @_ZdlPv(i8* %call20) #17, !dbg !3393
  br label %cleanup.done, !dbg !3393

cleanup.done:                                     ; preds = %cleanup.action, %ehcleanup
  br label %ehcleanup27, !dbg !3393

ehcleanup27:                                      ; preds = %cleanup.done, %lpad18
  %cleanup.is_active28 = load i1, i1* %cleanup.isactive26, align 1, !dbg !3393
  br i1 %cleanup.is_active28, label %cleanup.action29, label %cleanup.done30, !dbg !3393

cleanup.action29:                                 ; preds = %ehcleanup27
  call void @_ZdlPv(i8* %call17) #17, !dbg !3393
  br label %cleanup.done30, !dbg !3393

cleanup.done30:                                   ; preds = %cleanup.action29, %ehcleanup27
  br label %ehcleanup31, !dbg !3393

cleanup:                                          ; preds = %invoke.cont25, %if.then
  call void @_ZN10tensorflow6TensorD1Ev(%"class.tensorflow::Tensor"* %ret) #6, !dbg !3306
  call void @_ZNSt6vectorIlSaIlEED2Ev(%"class.std::vector"* %dimvec) #6, !dbg !3306
  %41 = load %struct.TF_Tensor*, %struct.TF_Tensor** %retval, align 8, !dbg !3306
  ret %struct.TF_Tensor* %41, !dbg !3306

ehcleanup31:                                      ; preds = %cleanup.done30, %lpad7
  call void @_ZN10tensorflow6TensorD1Ev(%"class.tensorflow::Tensor"* %ret) #6, !dbg !3306
  br label %ehcleanup33, !dbg !3306

ehcleanup33:                                      ; preds = %ehcleanup31, %lpad5, %lpad3
  call void @_ZNSt6vectorIlSaIlEED2Ev(%"class.std::vector"* %dimvec) #6, !dbg !3306
  br label %eh.resume, !dbg !3306

eh.resume:                                        ; preds = %ehcleanup33, %lpad
  %exn = load i8*, i8** %exn.slot, align 8, !dbg !3284
  %sel = load i32, i32* %ehselector.slot, align 4, !dbg !3284
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0, !dbg !3284
  %lpad.val34 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1, !dbg !3284
  resume { i8*, i32 } %lpad.val34, !dbg !3284
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSaIlEC2Ev(%"class.std::allocator.0"* %this) unnamed_addr #4 comdat align 2 !dbg !3394 {
entry:
  %this.addr = alloca %"class.std::allocator.0"*, align 8
  store %"class.std::allocator.0"* %this, %"class.std::allocator.0"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::allocator.0"** %this.addr, metadata !3395, metadata !DIExpression()), !dbg !3397
  %this1 = load %"class.std::allocator.0"*, %"class.std::allocator.0"** %this.addr, align 8
  %0 = bitcast %"class.std::allocator.0"* %this1 to %"class.std::allocator.0"*, !dbg !3398
  call void @_ZN9__gnu_cxx13new_allocatorIlEC2Ev(%"class.std::allocator.0"* %0) #6, !dbg !3399
  ret void, !dbg !3400
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIlSaIlEEC2EmRKS0_(%"class.std::vector"* %this, i64 %__n, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %__a) unnamed_addr #5 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !3401 {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  %__n.addr = alloca i64, align 8
  %__a.addr = alloca %"class.std::allocator.0"*, align 8
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::vector"** %this.addr, metadata !3402, metadata !DIExpression()), !dbg !3404
  store i64 %__n, i64* %__n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %__n.addr, metadata !3405, metadata !DIExpression()), !dbg !3406
  store %"class.std::allocator.0"* %__a, %"class.std::allocator.0"** %__a.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::allocator.0"** %__a.addr, metadata !3407, metadata !DIExpression()), !dbg !3408
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*, !dbg !3409
  %1 = load i64, i64* %__n.addr, align 8, !dbg !3410
  %2 = load %"class.std::allocator.0"*, %"class.std::allocator.0"** %__a.addr, align 8, !dbg !3411
  %call = call i64 @_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_(i64 %1, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %2), !dbg !3412
  %3 = load %"class.std::allocator.0"*, %"class.std::allocator.0"** %__a.addr, align 8, !dbg !3413
  call void @_ZNSt12_Vector_baseIlSaIlEEC2EmRKS0_(%"struct.std::_Vector_base"* %0, i64 %call, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %3), !dbg !3414
  %4 = load i64, i64* %__n.addr, align 8, !dbg !3415
  invoke void @_ZNSt6vectorIlSaIlEE21_M_default_initializeEm(%"class.std::vector"* %this1, i64 %4)
          to label %invoke.cont unwind label %lpad, !dbg !3417

invoke.cont:                                      ; preds = %entry
  ret void, !dbg !3418

lpad:                                             ; preds = %entry
  %5 = landingpad { i8*, i32 }
          cleanup, !dbg !3419
  %6 = extractvalue { i8*, i32 } %5, 0, !dbg !3419
  store i8* %6, i8** %exn.slot, align 8, !dbg !3419
  %7 = extractvalue { i8*, i32 } %5, 1, !dbg !3419
  store i32 %7, i32* %ehselector.slot, align 4, !dbg !3419
  %8 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*, !dbg !3419
  call void @_ZNSt12_Vector_baseIlSaIlEED2Ev(%"struct.std::_Vector_base"* %8) #6, !dbg !3419
  br label %eh.resume, !dbg !3419

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8, !dbg !3419
  %sel = load i32, i32* %ehselector.slot, align 4, !dbg !3419
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0, !dbg !3419
  %lpad.val2 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1, !dbg !3419
  resume { i8*, i32 } %lpad.val2, !dbg !3419
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSaIlED2Ev(%"class.std::allocator.0"* %this) unnamed_addr #4 comdat align 2 !dbg !3420 {
entry:
  %this.addr = alloca %"class.std::allocator.0"*, align 8
  store %"class.std::allocator.0"* %this, %"class.std::allocator.0"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::allocator.0"** %this.addr, metadata !3421, metadata !DIExpression()), !dbg !3422
  %this1 = load %"class.std::allocator.0"*, %"class.std::allocator.0"** %this.addr, align 8
  %0 = bitcast %"class.std::allocator.0"* %this1 to %"class.std::allocator.0"*, !dbg !3423
  call void @_ZN9__gnu_cxx13new_allocatorIlED2Ev(%"class.std::allocator.0"* %0) #6, !dbg !3423
  ret void, !dbg !3425
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) i64* @_ZNSt6vectorIlSaIlEEixEm(%"class.std::vector"* %this, i64 %__n) #4 comdat align 2 !dbg !3426 {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  %__n.addr = alloca i64, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::vector"** %this.addr, metadata !3427, metadata !DIExpression()), !dbg !3428
  store i64 %__n, i64* %__n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %__n.addr, metadata !3429, metadata !DIExpression()), !dbg !3430
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*, !dbg !3431
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %0, i32 0, i32 0, !dbg !3431
  %1 = bitcast %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %_M_impl to %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"*, !dbg !3432
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data", %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* %1, i32 0, i32 0, !dbg !3433
  %2 = load i64*, i64** %_M_start, align 8, !dbg !3433
  %3 = load i64, i64* %__n.addr, align 8, !dbg !3434
  %add.ptr = getelementptr inbounds i64, i64* %2, i64 %3, !dbg !3435
  ret i64* %add.ptr, !dbg !3436
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow11TensorShapeC2ERKSt6vectorIlSaIlEE(%"class.tensorflow::TensorShape"* %this, %"class.std::vector"* nonnull align 8 dereferenceable(24) %dims) unnamed_addr #5 comdat align 2 !dbg !3437 {
entry:
  %this.addr = alloca %"class.tensorflow::TensorShape"*, align 8
  %dims.addr = alloca %"class.std::vector"*, align 8
  store %"class.tensorflow::TensorShape"* %this, %"class.tensorflow::TensorShape"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::TensorShape"** %this.addr, metadata !3438, metadata !DIExpression()), !dbg !3439
  store %"class.std::vector"* %dims, %"class.std::vector"** %dims.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::vector"** %dims.addr, metadata !3440, metadata !DIExpression()), !dbg !3441
  %this1 = load %"class.tensorflow::TensorShape"*, %"class.tensorflow::TensorShape"** %this.addr, align 8
  %dims_ = getelementptr inbounds %"class.tensorflow::TensorShape", %"class.tensorflow::TensorShape"* %this1, i32 0, i32 0, !dbg !3442
  %0 = load %"class.std::vector"*, %"class.std::vector"** %dims.addr, align 8, !dbg !3443
  call void @_ZNSt6vectorIlSaIlEEC2ERKS1_(%"class.std::vector"* %dims_, %"class.std::vector"* nonnull align 8 dereferenceable(24) %0), !dbg !3442
  %dtype_ = getelementptr inbounds %"class.tensorflow::TensorShape", %"class.tensorflow::TensorShape"* %this1, i32 0, i32 1, !dbg !3444
  store i32 0, i32* %dtype_, align 8, !dbg !3444
  %partial_ = getelementptr inbounds %"class.tensorflow::TensorShape", %"class.tensorflow::TensorShape"* %this1, i32 0, i32 2, !dbg !3445
  ret void, !dbg !3446
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow11TensorShapeD2Ev(%"class.tensorflow::TensorShape"* %this) unnamed_addr #4 comdat align 2 !dbg !3447 {
entry:
  %this.addr = alloca %"class.tensorflow::TensorShape"*, align 8
  store %"class.tensorflow::TensorShape"* %this, %"class.tensorflow::TensorShape"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::TensorShape"** %this.addr, metadata !3449, metadata !DIExpression()), !dbg !3450
  %this1 = load %"class.tensorflow::TensorShape"*, %"class.tensorflow::TensorShape"** %this.addr, align 8
  %dims_ = getelementptr inbounds %"class.tensorflow::TensorShape", %"class.tensorflow::TensorShape"* %this1, i32 0, i32 0, !dbg !3451
  call void @_ZNSt6vectorIlSaIlEED2Ev(%"class.std::vector"* %dims_) #6, !dbg !3451
  ret void, !dbg !3453
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local zeroext i1 @_ZNK10tensorflow4core10RefCounted5UnrefEv(%"class.tensorflow::core::RefCounted"* %this) #4 comdat align 2 !dbg !3454 {
entry:
  %this.addr.i = alloca %"struct.std::__atomic_base"*, align 8
  %__i.addr.i = alloca i64, align 8
  %__m.addr.i = alloca i32, align 4
  %.atomictmp.i = alloca i64, align 8
  %atomic-temp.i = alloca i64, align 8
  %retval = alloca i1, align 1
  %this.addr = alloca %"class.tensorflow::core::RefCounted"*, align 8
  store %"class.tensorflow::core::RefCounted"* %this, %"class.tensorflow::core::RefCounted"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::core::RefCounted"** %this.addr, metadata !3455, metadata !DIExpression()), !dbg !3457
  %this1 = load %"class.tensorflow::core::RefCounted"*, %"class.tensorflow::core::RefCounted"** %this.addr, align 8
  %ref_count_ = getelementptr inbounds %"class.tensorflow::core::RefCounted", %"class.tensorflow::core::RefCounted"* %this1, i32 0, i32 1, !dbg !3458
  %0 = bitcast %"struct.std::atomic"* %ref_count_ to %"struct.std::__atomic_base"*, !dbg !3458
  store %"struct.std::__atomic_base"* %0, %"struct.std::__atomic_base"** %this.addr.i, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::__atomic_base"** %this.addr.i, metadata !3460, metadata !DIExpression()), !dbg !3463
  store i64 1, i64* %__i.addr.i, align 8
  call void @llvm.dbg.declare(metadata i64* %__i.addr.i, metadata !3465, metadata !DIExpression()), !dbg !3466
  store i32 4, i32* %__m.addr.i, align 4
  call void @llvm.dbg.declare(metadata i32* %__m.addr.i, metadata !3467, metadata !DIExpression()), !dbg !3468
  %this1.i = load %"struct.std::__atomic_base"*, %"struct.std::__atomic_base"** %this.addr.i, align 8
  %_M_i.i = getelementptr inbounds %"struct.std::__atomic_base", %"struct.std::__atomic_base"* %this1.i, i32 0, i32 0, !dbg !3469
  %1 = load i32, i32* %__m.addr.i, align 4, !dbg !3470
  %2 = load i64, i64* %__i.addr.i, align 8, !dbg !3471
  store i64 %2, i64* %.atomictmp.i, align 8, !dbg !3472
  switch i32 %1, label %monotonic.i [
    i32 1, label %acquire.i
    i32 2, label %acquire.i
    i32 3, label %release.i
    i32 4, label %acqrel.i
    i32 5, label %seqcst.i
  ], !dbg !3472

monotonic.i:                                      ; preds = %entry
  %3 = load i64, i64* %.atomictmp.i, align 8, !dbg !3472
  %4 = load i64, i64* %_M_i.i, align 8, !dbg !3472
  %5 = sub i64 %4, %3, !dbg !3472
  store i64 %5, i64* %_M_i.i, align 8, !dbg !3472
  store i64 %4, i64* %atomic-temp.i, align 8, !dbg !3472
  br label %_ZNSt13__atomic_baseImE9fetch_subEmSt12memory_order.exit, !dbg !3472

acquire.i:                                        ; preds = %entry, %entry
  %6 = load i64, i64* %.atomictmp.i, align 8, !dbg !3472
  %7 = load i64, i64* %_M_i.i, align 8, !dbg !3472
  %8 = sub i64 %7, %6, !dbg !3472
  store i64 %8, i64* %_M_i.i, align 8, !dbg !3472
  store i64 %7, i64* %atomic-temp.i, align 8, !dbg !3472
  br label %_ZNSt13__atomic_baseImE9fetch_subEmSt12memory_order.exit, !dbg !3472

release.i:                                        ; preds = %entry
  %9 = load i64, i64* %.atomictmp.i, align 8, !dbg !3472
  %10 = load i64, i64* %_M_i.i, align 8, !dbg !3472
  %11 = sub i64 %10, %9, !dbg !3472
  store i64 %11, i64* %_M_i.i, align 8, !dbg !3472
  store i64 %10, i64* %atomic-temp.i, align 8, !dbg !3472
  br label %_ZNSt13__atomic_baseImE9fetch_subEmSt12memory_order.exit, !dbg !3472

acqrel.i:                                         ; preds = %entry
  %12 = load i64, i64* %.atomictmp.i, align 8, !dbg !3472
  %13 = load i64, i64* %_M_i.i, align 8, !dbg !3472
  %14 = sub i64 %13, %12, !dbg !3472
  store i64 %14, i64* %_M_i.i, align 8, !dbg !3472
  store i64 %13, i64* %atomic-temp.i, align 8, !dbg !3472
  br label %_ZNSt13__atomic_baseImE9fetch_subEmSt12memory_order.exit, !dbg !3472

seqcst.i:                                         ; preds = %entry
  %15 = load i64, i64* %.atomictmp.i, align 8, !dbg !3472
  %16 = load i64, i64* %_M_i.i, align 8, !dbg !3472
  %17 = sub i64 %16, %15, !dbg !3472
  store i64 %17, i64* %_M_i.i, align 8, !dbg !3472
  store i64 %16, i64* %atomic-temp.i, align 8, !dbg !3472
  br label %_ZNSt13__atomic_baseImE9fetch_subEmSt12memory_order.exit, !dbg !3472

_ZNSt13__atomic_baseImE9fetch_subEmSt12memory_order.exit: ; preds = %monotonic.i, %acquire.i, %release.i, %acqrel.i, %seqcst.i
  %18 = load i64, i64* %atomic-temp.i, align 8, !dbg !3472
  %cmp = icmp eq i64 %18, 1, !dbg !3473
  br i1 %cmp, label %if.then, label %if.end, !dbg !3474

if.then:                                          ; preds = %_ZNSt13__atomic_baseImE9fetch_subEmSt12memory_order.exit
  %isnull = icmp eq %"class.tensorflow::core::RefCounted"* %this1, null, !dbg !3475
  br i1 %isnull, label %delete.end, label %delete.notnull, !dbg !3475

delete.notnull:                                   ; preds = %if.then
  %19 = bitcast %"class.tensorflow::core::RefCounted"* %this1 to void (%"class.tensorflow::core::RefCounted"*)***, !dbg !3475
  %vtable = load void (%"class.tensorflow::core::RefCounted"*)**, void (%"class.tensorflow::core::RefCounted"*)*** %19, align 8, !dbg !3475
  %vfn = getelementptr inbounds void (%"class.tensorflow::core::RefCounted"*)*, void (%"class.tensorflow::core::RefCounted"*)** %vtable, i64 1, !dbg !3475
  %20 = load void (%"class.tensorflow::core::RefCounted"*)*, void (%"class.tensorflow::core::RefCounted"*)** %vfn, align 8, !dbg !3475
  call void %20(%"class.tensorflow::core::RefCounted"* %this1) #6, !dbg !3475
  br label %delete.end, !dbg !3475

delete.end:                                       ; preds = %delete.notnull, %if.then
  store i1 true, i1* %retval, align 1, !dbg !3477
  br label %return, !dbg !3477

if.end:                                           ; preds = %_ZNSt13__atomic_baseImE9fetch_subEmSt12memory_order.exit
  store i1 false, i1* %retval, align 1, !dbg !3478
  br label %return, !dbg !3478

return:                                           ; preds = %if.end, %delete.end
  %21 = load i1, i1* %retval, align 1, !dbg !3479
  ret i1 %21, !dbg !3479
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @_ZL15TF_DataTypeSize11TF_DataType(i32 %dt) #4 !dbg !3480 {
entry:
  %retval = alloca i64, align 8
  %dt.addr = alloca i32, align 4
  store i32 %dt, i32* %dt.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %dt.addr, metadata !3483, metadata !DIExpression()), !dbg !3484
  %0 = load i32, i32* %dt.addr, align 4, !dbg !3485
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
  ], !dbg !3486

sw.bb:                                            ; preds = %entry
  store i64 4, i64* %retval, align 8, !dbg !3487
  br label %return, !dbg !3487

sw.bb1:                                           ; preds = %entry
  store i64 8, i64* %retval, align 8, !dbg !3489
  br label %return, !dbg !3489

sw.bb2:                                           ; preds = %entry
  store i64 4, i64* %retval, align 8, !dbg !3490
  br label %return, !dbg !3490

sw.bb3:                                           ; preds = %entry
  store i64 4, i64* %retval, align 8, !dbg !3491
  br label %return, !dbg !3491

sw.bb4:                                           ; preds = %entry
  store i64 1, i64* %retval, align 8, !dbg !3492
  br label %return, !dbg !3492

sw.bb5:                                           ; preds = %entry
  store i64 2, i64* %retval, align 8, !dbg !3493
  br label %return, !dbg !3493

sw.bb6:                                           ; preds = %entry
  store i64 2, i64* %retval, align 8, !dbg !3494
  br label %return, !dbg !3494

sw.bb7:                                           ; preds = %entry
  store i64 1, i64* %retval, align 8, !dbg !3495
  br label %return, !dbg !3495

sw.bb8:                                           ; preds = %entry
  store i64 8, i64* %retval, align 8, !dbg !3496
  br label %return, !dbg !3496

sw.bb9:                                           ; preds = %entry
  store i64 16, i64* %retval, align 8, !dbg !3497
  br label %return, !dbg !3497

sw.bb10:                                          ; preds = %entry
  store i64 8, i64* %retval, align 8, !dbg !3498
  br label %return, !dbg !3498

sw.bb11:                                          ; preds = %entry
  store i64 8, i64* %retval, align 8, !dbg !3499
  br label %return, !dbg !3499

sw.bb12:                                          ; preds = %entry
  store i64 1, i64* %retval, align 8, !dbg !3500
  br label %return, !dbg !3500

sw.bb13:                                          ; preds = %entry
  store i64 1, i64* %retval, align 8, !dbg !3501
  br label %return, !dbg !3501

sw.bb14:                                          ; preds = %entry
  store i64 1, i64* %retval, align 8, !dbg !3502
  br label %return, !dbg !3502

sw.bb15:                                          ; preds = %entry
  store i64 2, i64* %retval, align 8, !dbg !3503
  br label %return, !dbg !3503

sw.bb16:                                          ; preds = %entry
  store i64 2, i64* %retval, align 8, !dbg !3504
  br label %return, !dbg !3504

sw.bb17:                                          ; preds = %entry
  store i64 4, i64* %retval, align 8, !dbg !3505
  br label %return, !dbg !3505

sw.bb18:                                          ; preds = %entry
  store i64 2, i64* %retval, align 8, !dbg !3506
  br label %return, !dbg !3506

sw.bb19:                                          ; preds = %entry
  store i64 2, i64* %retval, align 8, !dbg !3507
  br label %return, !dbg !3507

sw.bb20:                                          ; preds = %entry, %entry, %entry
  store i64 0, i64* %retval, align 8, !dbg !3508
  br label %return, !dbg !3508

sw.bb21:                                          ; preds = %entry, %entry, %entry, %entry, %entry
  store i64 1, i64* %retval, align 8, !dbg !3509
  br label %return, !dbg !3509

sw.bb22:                                          ; preds = %entry, %entry, %entry, %entry
  store i64 0, i64* %retval, align 8, !dbg !3510
  br label %return, !dbg !3510

sw.default:                                       ; preds = %entry
  store i64 0, i64* %retval, align 8, !dbg !3511
  br label %return, !dbg !3511

return:                                           ; preds = %sw.default, %sw.bb22, %sw.bb21, %sw.bb20, %sw.bb19, %sw.bb18, %sw.bb17, %sw.bb16, %sw.bb15, %sw.bb14, %sw.bb13, %sw.bb12, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %1 = load i64, i64* %retval, align 8, !dbg !3512
  ret i64 %1, !dbg !3512
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i64 @_ZNK10tensorflow6Tensor11NumElementsEv(%"class.tensorflow::Tensor"* %this) #5 comdat align 2 !dbg !3513 {
entry:
  %this.addr = alloca %"class.tensorflow::Tensor"*, align 8
  store %"class.tensorflow::Tensor"* %this, %"class.tensorflow::Tensor"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::Tensor"** %this.addr, metadata !3514, metadata !DIExpression()), !dbg !3516
  %this1 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %this.addr, align 8
  %call = call nonnull align 8 dereferenceable(29) %"class.tensorflow::TensorShape"* @_ZNK10tensorflow6Tensor5shapeEv(%"class.tensorflow::Tensor"* %this1), !dbg !3517
  %call2 = call i64 @_ZNK10tensorflow11TensorShape12num_elementsEv(%"class.tensorflow::TensorShape"* %call), !dbg !3518
  ret i64 %call2, !dbg !3519
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(40) %"class.tensorflow::Tensor"* @_ZSt4moveIRN10tensorflow6TensorEEONSt16remove_referenceIT_E4typeEOS4_(%"class.tensorflow::Tensor"* nonnull align 8 dereferenceable(40) %__t) #4 comdat !dbg !3520 {
entry:
  %__t.addr = alloca %"class.tensorflow::Tensor"*, align 8
  store %"class.tensorflow::Tensor"* %__t, %"class.tensorflow::Tensor"** %__t.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::Tensor"** %__t.addr, metadata !3529, metadata !DIExpression()), !dbg !3530
  %0 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %__t.addr, align 8, !dbg !3531
  ret %"class.tensorflow::Tensor"* %0, !dbg !3532
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow15TensorInterfaceC2ENS_6TensorE(%"class.tensorflow::TensorInterface"* %this, %"class.tensorflow::Tensor"* %t) unnamed_addr #5 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !3533 {
entry:
  %this.addr = alloca %"class.tensorflow::TensorInterface"*, align 8
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  store %"class.tensorflow::TensorInterface"* %this, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::TensorInterface"** %this.addr, metadata !3534, metadata !DIExpression()), !dbg !3536
  call void @llvm.dbg.declare(metadata %"class.tensorflow::Tensor"* %t, metadata !3537, metadata !DIExpression()), !dbg !3538
  %this1 = load %"class.tensorflow::TensorInterface"*, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  %0 = bitcast %"class.tensorflow::TensorInterface"* %this1 to %"class.tensorflow::AbstractTensorInterface"*, !dbg !3539
  call void @_ZN10tensorflow23AbstractTensorInterfaceC2Ev(%"class.tensorflow::AbstractTensorInterface"* %0) #6, !dbg !3540
  %1 = bitcast %"class.tensorflow::TensorInterface"* %this1 to i32 (...)***, !dbg !3539
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [14 x i8*] }, { [14 x i8*] }* @_ZTVN10tensorflow15TensorInterfaceE, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %1, align 8, !dbg !3539
  %tensor_ = getelementptr inbounds %"class.tensorflow::TensorInterface", %"class.tensorflow::TensorInterface"* %this1, i32 0, i32 1, !dbg !3541
  %call = call nonnull align 8 dereferenceable(40) %"class.tensorflow::Tensor"* @_ZSt4moveIRN10tensorflow6TensorEEONSt16remove_referenceIT_E4typeEOS4_(%"class.tensorflow::Tensor"* nonnull align 8 dereferenceable(40) %t) #6, !dbg !3542
  invoke void @_ZN10tensorflow6TensorC1EOS0_(%"class.tensorflow::Tensor"* %tensor_, %"class.tensorflow::Tensor"* nonnull align 8 dereferenceable(40) %call)
          to label %invoke.cont unwind label %lpad, !dbg !3541

invoke.cont:                                      ; preds = %entry
  ret void, !dbg !3543

lpad:                                             ; preds = %entry
  %2 = landingpad { i8*, i32 }
          cleanup, !dbg !3543
  %3 = extractvalue { i8*, i32 } %2, 0, !dbg !3543
  store i8* %3, i8** %exn.slot, align 8, !dbg !3543
  %4 = extractvalue { i8*, i32 } %2, 1, !dbg !3543
  store i32 %4, i32* %ehselector.slot, align 4, !dbg !3543
  %5 = bitcast %"class.tensorflow::TensorInterface"* %this1 to %"class.tensorflow::AbstractTensorInterface"*, !dbg !3544
  call void @_ZN10tensorflow23AbstractTensorInterfaceD2Ev(%"class.tensorflow::AbstractTensorInterface"* %5) #6, !dbg !3544
  br label %eh.resume, !dbg !3544

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8, !dbg !3544
  %sel = load i32, i32* %ehselector.slot, align 4, !dbg !3544
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0, !dbg !3544
  %lpad.val2 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1, !dbg !3544
  resume { i8*, i32 } %lpad.val2, !dbg !3544
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIlSaIlEED2Ev(%"class.std::vector"* %this) unnamed_addr #4 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !3546 {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::vector"** %this.addr, metadata !3547, metadata !DIExpression()), !dbg !3548
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*, !dbg !3549
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %0, i32 0, i32 0, !dbg !3549
  %1 = bitcast %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %_M_impl to %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"*, !dbg !3551
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data", %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* %1, i32 0, i32 0, !dbg !3552
  %2 = load i64*, i64** %_M_start, align 8, !dbg !3552
  %3 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*, !dbg !3553
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %3, i32 0, i32 0, !dbg !3553
  %4 = bitcast %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %_M_impl2 to %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"*, !dbg !3554
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data", %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* %4, i32 0, i32 1, !dbg !3555
  %5 = load i64*, i64** %_M_finish, align 8, !dbg !3555
  %6 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*, !dbg !3556
  %call = call nonnull align 1 dereferenceable(1) %"class.std::allocator.0"* @_ZNSt12_Vector_baseIlSaIlEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %6) #6, !dbg !3556
  invoke void @_ZSt8_DestroyIPllEvT_S1_RSaIT0_E(i64* %2, i64* %5, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %call)
          to label %invoke.cont unwind label %lpad, !dbg !3557

invoke.cont:                                      ; preds = %entry
  %7 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*, !dbg !3558
  call void @_ZNSt12_Vector_baseIlSaIlEED2Ev(%"struct.std::_Vector_base"* %7) #6, !dbg !3558
  ret void, !dbg !3559

lpad:                                             ; preds = %entry
  %8 = landingpad { i8*, i32 }
          catch i8* null, !dbg !3558
  %9 = extractvalue { i8*, i32 } %8, 0, !dbg !3558
  store i8* %9, i8** %exn.slot, align 8, !dbg !3558
  %10 = extractvalue { i8*, i32 } %8, 1, !dbg !3558
  store i32 %10, i32* %ehselector.slot, align 4, !dbg !3558
  %11 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*, !dbg !3558
  call void @_ZNSt12_Vector_baseIlSaIlEED2Ev(%"struct.std::_Vector_base"* %11) #6, !dbg !3558
  br label %terminate.handler, !dbg !3558

terminate.handler:                                ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8, !dbg !3558
  call void @__clang_call_terminate(i8* %exn) #14, !dbg !3558
  unreachable, !dbg !3558
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 1 dereferenceable(1) %"class.std::allocator.0"* @_ZNSt12_Vector_baseIlSaIlEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %this) #4 comdat align 2 !dbg !3560 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base"*, align 8
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::_Vector_base"** %this.addr, metadata !3561, metadata !DIExpression()), !dbg !3563
  %this1 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0, !dbg !3564
  %0 = bitcast %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %_M_impl to %"class.std::allocator.0"*, !dbg !3565
  ret %"class.std::allocator.0"* %0, !dbg !3566
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPllEvT_S1_RSaIT0_E(i64* %__first, i64* %__last, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %0) #5 comdat !dbg !3567 {
entry:
  %__first.addr = alloca i64*, align 8
  %__last.addr = alloca i64*, align 8
  %.addr = alloca %"class.std::allocator.0"*, align 8
  store i64* %__first, i64** %__first.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %__first.addr, metadata !3572, metadata !DIExpression()), !dbg !3573
  store i64* %__last, i64** %__last.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %__last.addr, metadata !3574, metadata !DIExpression()), !dbg !3575
  store %"class.std::allocator.0"* %0, %"class.std::allocator.0"** %.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::allocator.0"** %.addr, metadata !3576, metadata !DIExpression()), !dbg !3577
  %1 = load i64*, i64** %__first.addr, align 8, !dbg !3578
  %2 = load i64*, i64** %__last.addr, align 8, !dbg !3579
  call void @_ZSt8_DestroyIPlEvT_S1_(i64* %1, i64* %2), !dbg !3580
  ret void, !dbg !3581
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIlSaIlEED2Ev(%"struct.std::_Vector_base"* %this) unnamed_addr #4 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !3582 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base"*, align 8
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::_Vector_base"** %this.addr, metadata !3583, metadata !DIExpression()), !dbg !3584
  %this1 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0, !dbg !3585
  %0 = bitcast %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %_M_impl to %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"*, !dbg !3585
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data", %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* %0, i32 0, i32 0, !dbg !3587
  %1 = load i64*, i64** %_M_start, align 8, !dbg !3587
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0, !dbg !3588
  %2 = bitcast %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %_M_impl2 to %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"*, !dbg !3588
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data", %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* %2, i32 0, i32 2, !dbg !3589
  %3 = load i64*, i64** %_M_end_of_storage, align 8, !dbg !3589
  %_M_impl3 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0, !dbg !3590
  %4 = bitcast %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %_M_impl3 to %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"*, !dbg !3590
  %_M_start4 = getelementptr inbounds %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data", %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* %4, i32 0, i32 0, !dbg !3591
  %5 = load i64*, i64** %_M_start4, align 8, !dbg !3591
  %sub.ptr.lhs.cast = ptrtoint i64* %3 to i64, !dbg !3592
  %sub.ptr.rhs.cast = ptrtoint i64* %5 to i64, !dbg !3592
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !3592
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8, !dbg !3592
  invoke void @_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm(%"struct.std::_Vector_base"* %this1, i64* %1, i64 %sub.ptr.div)
          to label %invoke.cont unwind label %lpad, !dbg !3593

invoke.cont:                                      ; preds = %entry
  %_M_impl5 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0, !dbg !3594
  call void @_ZNSt12_Vector_baseIlSaIlEE12_Vector_implD2Ev(%"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %_M_impl5) #6, !dbg !3594
  ret void, !dbg !3595

lpad:                                             ; preds = %entry
  %6 = landingpad { i8*, i32 }
          catch i8* null, !dbg !3594
  %7 = extractvalue { i8*, i32 } %6, 0, !dbg !3594
  store i8* %7, i8** %exn.slot, align 8, !dbg !3594
  %8 = extractvalue { i8*, i32 } %6, 1, !dbg !3594
  store i32 %8, i32* %ehselector.slot, align 4, !dbg !3594
  %_M_impl6 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0, !dbg !3594
  call void @_ZNSt12_Vector_baseIlSaIlEE12_Vector_implD2Ev(%"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %_M_impl6) #6, !dbg !3594
  br label %terminate.handler, !dbg !3594

terminate.handler:                                ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8, !dbg !3594
  call void @__clang_call_terminate(i8* %exn) #14, !dbg !3594
  unreachable, !dbg !3594
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm(%"struct.std::_Vector_base"* %this, i64* %__p, i64 %__n) #5 comdat align 2 !dbg !3596 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base"*, align 8
  %__p.addr = alloca i64*, align 8
  %__n.addr = alloca i64, align 8
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::_Vector_base"** %this.addr, metadata !3597, metadata !DIExpression()), !dbg !3598
  store i64* %__p, i64** %__p.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %__p.addr, metadata !3599, metadata !DIExpression()), !dbg !3600
  store i64 %__n, i64* %__n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %__n.addr, metadata !3601, metadata !DIExpression()), !dbg !3602
  %this1 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %this.addr, align 8
  %0 = load i64*, i64** %__p.addr, align 8, !dbg !3603
  %tobool = icmp ne i64* %0, null, !dbg !3603
  br i1 %tobool, label %if.then, label %if.end, !dbg !3605

if.then:                                          ; preds = %entry
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0, !dbg !3606
  %1 = bitcast %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %_M_impl to %"class.std::allocator.0"*, !dbg !3606
  %2 = load i64*, i64** %__p.addr, align 8, !dbg !3607
  %3 = load i64, i64* %__n.addr, align 8, !dbg !3608
  call void @_ZNSt16allocator_traitsISaIlEE10deallocateERS0_Plm(%"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %1, i64* %2, i64 %3), !dbg !3609
  br label %if.end, !dbg !3609

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !3610
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIlSaIlEE12_Vector_implD2Ev(%"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %this) unnamed_addr #4 comdat align 2 !dbg !3611 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"*, align 8
  store %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %this, %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"** %this.addr, metadata !3613, metadata !DIExpression()), !dbg !3615
  %this1 = load %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"*, %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"** %this.addr, align 8
  %0 = bitcast %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %this1 to %"class.std::allocator.0"*, !dbg !3616
  call void @_ZNSaIlED2Ev(%"class.std::allocator.0"* %0) #6, !dbg !3616
  ret void, !dbg !3618
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIlEE10deallocateERS0_Plm(%"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %__a, i64* %__p, i64 %__n) #5 comdat align 2 !dbg !3619 {
entry:
  %__a.addr = alloca %"class.std::allocator.0"*, align 8
  %__p.addr = alloca i64*, align 8
  %__n.addr = alloca i64, align 8
  store %"class.std::allocator.0"* %__a, %"class.std::allocator.0"** %__a.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::allocator.0"** %__a.addr, metadata !3620, metadata !DIExpression()), !dbg !3621
  store i64* %__p, i64** %__p.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %__p.addr, metadata !3622, metadata !DIExpression()), !dbg !3623
  store i64 %__n, i64* %__n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %__n.addr, metadata !3624, metadata !DIExpression()), !dbg !3625
  %0 = load %"class.std::allocator.0"*, %"class.std::allocator.0"** %__a.addr, align 8, !dbg !3626
  %1 = bitcast %"class.std::allocator.0"* %0 to %"class.std::allocator.0"*, !dbg !3626
  %2 = load i64*, i64** %__p.addr, align 8, !dbg !3627
  %3 = load i64, i64* %__n.addr, align 8, !dbg !3628
  call void @_ZN9__gnu_cxx13new_allocatorIlE10deallocateEPlm(%"class.std::allocator.0"* %1, i64* %2, i64 %3), !dbg !3629
  ret void, !dbg !3630
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorIlE10deallocateEPlm(%"class.std::allocator.0"* %this, i64* %__p, i64 %__t) #4 comdat align 2 !dbg !3631 {
entry:
  %this.addr = alloca %"class.std::allocator.0"*, align 8
  %__p.addr = alloca i64*, align 8
  %__t.addr = alloca i64, align 8
  store %"class.std::allocator.0"* %this, %"class.std::allocator.0"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::allocator.0"** %this.addr, metadata !3632, metadata !DIExpression()), !dbg !3634
  store i64* %__p, i64** %__p.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %__p.addr, metadata !3635, metadata !DIExpression()), !dbg !3636
  store i64 %__t, i64* %__t.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %__t.addr, metadata !3637, metadata !DIExpression()), !dbg !3638
  %this1 = load %"class.std::allocator.0"*, %"class.std::allocator.0"** %this.addr, align 8
  %0 = load i64*, i64** %__p.addr, align 8, !dbg !3639
  %1 = bitcast i64* %0 to i8*, !dbg !3639
  call void @_ZdlPv(i8* %1) #6, !dbg !3640
  ret void, !dbg !3641
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPlEvT_S1_(i64* %__first, i64* %__last) #5 comdat !dbg !3642 {
entry:
  %__first.addr = alloca i64*, align 8
  %__last.addr = alloca i64*, align 8
  store i64* %__first, i64** %__first.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %__first.addr, metadata !3647, metadata !DIExpression()), !dbg !3648
  store i64* %__last, i64** %__last.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %__last.addr, metadata !3649, metadata !DIExpression()), !dbg !3650
  %0 = load i64*, i64** %__first.addr, align 8, !dbg !3651
  %1 = load i64*, i64** %__last.addr, align 8, !dbg !3652
  call void @_ZNSt12_Destroy_auxILb1EE9__destroyIPlEEvT_S3_(i64* %0, i64* %1), !dbg !3653
  ret void, !dbg !3654
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb1EE9__destroyIPlEEvT_S3_(i64* %0, i64* %1) #4 comdat align 2 !dbg !3655 {
entry:
  %.addr = alloca i64*, align 8
  %.addr1 = alloca i64*, align 8
  store i64* %0, i64** %.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %.addr, metadata !3660, metadata !DIExpression()), !dbg !3661
  store i64* %1, i64** %.addr1, align 8
  call void @llvm.dbg.declare(metadata i64** %.addr1, metadata !3662, metadata !DIExpression()), !dbg !3663
  ret void, !dbg !3664
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow23AbstractTensorInterfaceC2Ev(%"class.tensorflow::AbstractTensorInterface"* %this) unnamed_addr #4 comdat align 2 !dbg !3665 {
entry:
  %this.addr = alloca %"class.tensorflow::AbstractTensorInterface"*, align 8
  store %"class.tensorflow::AbstractTensorInterface"* %this, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::AbstractTensorInterface"** %this.addr, metadata !3667, metadata !DIExpression()), !dbg !3668
  %this1 = load %"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  %0 = bitcast %"class.tensorflow::AbstractTensorInterface"* %this1 to i32 (...)***, !dbg !3669
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [14 x i8*] }, { [14 x i8*] }* @_ZTVN10tensorflow23AbstractTensorInterfaceE, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %0, align 8, !dbg !3669
  ret void, !dbg !3669
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow23AbstractTensorInterfaceD2Ev(%"class.tensorflow::AbstractTensorInterface"* %this) unnamed_addr #4 comdat align 2 !dbg !3670 {
entry:
  %this.addr = alloca %"class.tensorflow::AbstractTensorInterface"*, align 8
  store %"class.tensorflow::AbstractTensorInterface"* %this, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::AbstractTensorInterface"** %this.addr, metadata !3671, metadata !DIExpression()), !dbg !3672
  %this1 = load %"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  ret void, !dbg !3673
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow15TensorInterface7ReleaseEv(%"class.tensorflow::TensorInterface"* %this) unnamed_addr #4 comdat align 2 !dbg !3674 {
entry:
  %this.addr = alloca %"class.tensorflow::TensorInterface"*, align 8
  store %"class.tensorflow::TensorInterface"* %this, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::TensorInterface"** %this.addr, metadata !3675, metadata !DIExpression()), !dbg !3676
  %this1 = load %"class.tensorflow::TensorInterface"*, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  %isnull = icmp eq %"class.tensorflow::TensorInterface"* %this1, null, !dbg !3677
  br i1 %isnull, label %delete.end, label %delete.notnull, !dbg !3677

delete.notnull:                                   ; preds = %entry
  %0 = bitcast %"class.tensorflow::TensorInterface"* %this1 to void (%"class.tensorflow::TensorInterface"*)***, !dbg !3677
  %vtable = load void (%"class.tensorflow::TensorInterface"*)**, void (%"class.tensorflow::TensorInterface"*)*** %0, align 8, !dbg !3677
  %vfn = getelementptr inbounds void (%"class.tensorflow::TensorInterface"*)*, void (%"class.tensorflow::TensorInterface"*)** %vtable, i64 11, !dbg !3677
  %1 = load void (%"class.tensorflow::TensorInterface"*)*, void (%"class.tensorflow::TensorInterface"*)** %vfn, align 8, !dbg !3677
  call void %1(%"class.tensorflow::TensorInterface"* %this1) #6, !dbg !3677
  br label %delete.end, !dbg !3677

delete.end:                                       ; preds = %delete.notnull, %entry
  ret void, !dbg !3678
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i32 @_ZNK10tensorflow15TensorInterface4TypeEv(%"class.tensorflow::TensorInterface"* %this) unnamed_addr #4 comdat align 2 !dbg !3679 {
entry:
  %this.addr = alloca %"class.tensorflow::TensorInterface"*, align 8
  store %"class.tensorflow::TensorInterface"* %this, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::TensorInterface"** %this.addr, metadata !3680, metadata !DIExpression()), !dbg !3682
  %this1 = load %"class.tensorflow::TensorInterface"*, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  ret i32 0, !dbg !3683
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i32 @_ZNK10tensorflow15TensorInterface7NumDimsEv(%"class.tensorflow::TensorInterface"* %this) unnamed_addr #4 comdat align 2 !dbg !3684 {
entry:
  %this.addr = alloca %"class.tensorflow::TensorInterface"*, align 8
  store %"class.tensorflow::TensorInterface"* %this, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::TensorInterface"** %this.addr, metadata !3685, metadata !DIExpression()), !dbg !3686
  %this1 = load %"class.tensorflow::TensorInterface"*, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  ret i32 0, !dbg !3687
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @_ZNK10tensorflow15TensorInterface3DimEi(%"class.tensorflow::TensorInterface"* %this, i32 %0) unnamed_addr #4 comdat align 2 !dbg !3688 {
entry:
  %this.addr = alloca %"class.tensorflow::TensorInterface"*, align 8
  %.addr = alloca i32, align 4
  store %"class.tensorflow::TensorInterface"* %this, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::TensorInterface"** %this.addr, metadata !3689, metadata !DIExpression()), !dbg !3690
  store i32 %0, i32* %.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %.addr, metadata !3691, metadata !DIExpression()), !dbg !3692
  %this1 = load %"class.tensorflow::TensorInterface"*, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  ret i64 0, !dbg !3693
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @_ZNK10tensorflow15TensorInterface11NumElementsEv(%"class.tensorflow::TensorInterface"* %this) unnamed_addr #4 comdat align 2 !dbg !3694 {
entry:
  %this.addr = alloca %"class.tensorflow::TensorInterface"*, align 8
  store %"class.tensorflow::TensorInterface"* %this, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::TensorInterface"** %this.addr, metadata !3695, metadata !DIExpression()), !dbg !3696
  %this1 = load %"class.tensorflow::TensorInterface"*, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  ret i64 0, !dbg !3697
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @_ZNK10tensorflow15TensorInterface8ByteSizeEv(%"class.tensorflow::TensorInterface"* %this) unnamed_addr #4 comdat align 2 !dbg !3698 {
entry:
  %this.addr = alloca %"class.tensorflow::TensorInterface"*, align 8
  store %"class.tensorflow::TensorInterface"* %this, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::TensorInterface"** %this.addr, metadata !3699, metadata !DIExpression()), !dbg !3700
  %this1 = load %"class.tensorflow::TensorInterface"*, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  ret i64 0, !dbg !3701
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i8* @_ZNK10tensorflow15TensorInterface4DataEv(%"class.tensorflow::TensorInterface"* %this) unnamed_addr #4 comdat align 2 !dbg !3702 {
entry:
  %this.addr = alloca %"class.tensorflow::TensorInterface"*, align 8
  store %"class.tensorflow::TensorInterface"* %this, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::TensorInterface"** %this.addr, metadata !3703, metadata !DIExpression()), !dbg !3704
  %this1 = load %"class.tensorflow::TensorInterface"*, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  ret i8* null, !dbg !3705
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local zeroext i1 @_ZNK10tensorflow15TensorInterface9IsAlignedEv(%"class.tensorflow::TensorInterface"* %this) unnamed_addr #4 comdat align 2 !dbg !3706 {
entry:
  %this.addr = alloca %"class.tensorflow::TensorInterface"*, align 8
  store %"class.tensorflow::TensorInterface"* %this, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::TensorInterface"** %this.addr, metadata !3707, metadata !DIExpression()), !dbg !3708
  %this1 = load %"class.tensorflow::TensorInterface"*, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  ret i1 true, !dbg !3709
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local zeroext i1 @_ZNK10tensorflow15TensorInterface7CanMoveEv(%"class.tensorflow::TensorInterface"* %this) unnamed_addr #4 comdat align 2 !dbg !3710 {
entry:
  %this.addr = alloca %"class.tensorflow::TensorInterface"*, align 8
  store %"class.tensorflow::TensorInterface"* %this, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::TensorInterface"** %this.addr, metadata !3711, metadata !DIExpression()), !dbg !3712
  %this1 = load %"class.tensorflow::TensorInterface"*, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  ret i1 true, !dbg !3713
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNK10tensorflow15TensorInterface14SummarizeValueB5cxx11Ev(%"class.std::__cxx11::basic_string"* noalias sret align 8 %agg.result, %"class.tensorflow::TensorInterface"* %this) unnamed_addr #4 comdat align 2 !dbg !3714 {
entry:
  %result.ptr = alloca i8*, align 8
  %this.addr = alloca %"class.tensorflow::TensorInterface"*, align 8
  %0 = bitcast %"class.std::__cxx11::basic_string"* %agg.result to i8*
  store i8* %0, i8** %result.ptr, align 8
  store %"class.tensorflow::TensorInterface"* %this, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::TensorInterface"** %this.addr, metadata !3715, metadata !DIExpression()), !dbg !3716
  %this1 = load %"class.tensorflow::TensorInterface"*, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev(%"class.std::__cxx11::basic_string"* %agg.result) #6, !dbg !3717
  ret void, !dbg !3718
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow15TensorInterfaceD2Ev(%"class.tensorflow::TensorInterface"* %this) unnamed_addr #4 comdat align 2 !dbg !3719 {
entry:
  %this.addr = alloca %"class.tensorflow::TensorInterface"*, align 8
  store %"class.tensorflow::TensorInterface"* %this, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::TensorInterface"** %this.addr, metadata !3720, metadata !DIExpression()), !dbg !3721
  %this1 = load %"class.tensorflow::TensorInterface"*, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  %0 = bitcast %"class.tensorflow::TensorInterface"* %this1 to i32 (...)***, !dbg !3722
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [14 x i8*] }, { [14 x i8*] }* @_ZTVN10tensorflow15TensorInterfaceE, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %0, align 8, !dbg !3722
  %tensor_ = getelementptr inbounds %"class.tensorflow::TensorInterface", %"class.tensorflow::TensorInterface"* %this1, i32 0, i32 1, !dbg !3723
  call void @_ZN10tensorflow6TensorD1Ev(%"class.tensorflow::Tensor"* %tensor_) #6, !dbg !3723
  %1 = bitcast %"class.tensorflow::TensorInterface"* %this1 to %"class.tensorflow::AbstractTensorInterface"*, !dbg !3723
  call void @_ZN10tensorflow23AbstractTensorInterfaceD2Ev(%"class.tensorflow::AbstractTensorInterface"* %1) #6, !dbg !3723
  ret void, !dbg !3725
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow15TensorInterfaceD0Ev(%"class.tensorflow::TensorInterface"* %this) unnamed_addr #4 comdat align 2 !dbg !3726 {
entry:
  %this.addr = alloca %"class.tensorflow::TensorInterface"*, align 8
  store %"class.tensorflow::TensorInterface"* %this, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::TensorInterface"** %this.addr, metadata !3727, metadata !DIExpression()), !dbg !3728
  %this1 = load %"class.tensorflow::TensorInterface"*, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  call void @_ZN10tensorflow15TensorInterfaceD2Ev(%"class.tensorflow::TensorInterface"* %this1) #6, !dbg !3729
  %0 = bitcast %"class.tensorflow::TensorInterface"* %this1 to i8*, !dbg !3729
  call void @_ZdlPv(i8* %0) #17, !dbg !3729
  ret void, !dbg !3730
}

; Function Attrs: nounwind
declare dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev(%"class.std::__cxx11::basic_string"*) unnamed_addr #3

declare dso_local void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow23AbstractTensorInterfaceD0Ev(%"class.tensorflow::AbstractTensorInterface"* %this) unnamed_addr #4 comdat align 2 !dbg !3731 {
entry:
  %this.addr = alloca %"class.tensorflow::AbstractTensorInterface"*, align 8
  store %"class.tensorflow::AbstractTensorInterface"* %this, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::AbstractTensorInterface"** %this.addr, metadata !3732, metadata !DIExpression()), !dbg !3733
  %this1 = load %"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  call void @abort(), !dbg !3734
  unreachable, !dbg !3734
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(29) %"class.tensorflow::TensorShape"* @_ZNK10tensorflow6Tensor5shapeEv(%"class.tensorflow::Tensor"* %this) #4 comdat align 2 !dbg !3735 {
entry:
  %this.addr = alloca %"class.tensorflow::Tensor"*, align 8
  store %"class.tensorflow::Tensor"* %this, %"class.tensorflow::Tensor"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::Tensor"** %this.addr, metadata !3736, metadata !DIExpression()), !dbg !3737
  %this1 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %this.addr, align 8
  %shape_ = getelementptr inbounds %"class.tensorflow::Tensor", %"class.tensorflow::Tensor"* %this1, i32 0, i32 0, !dbg !3738
  ret %"class.tensorflow::TensorShape"* %shape_, !dbg !3739
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @_ZNK10tensorflow11TensorShape12num_elementsEv(%"class.tensorflow::TensorShape"* %this) #4 comdat align 2 !dbg !3740 {
entry:
  %retval = alloca i64, align 8
  %this.addr = alloca %"class.tensorflow::TensorShape"*, align 8
  %prod = alloca i64, align 8
  %__range2 = alloca %"class.std::vector"*, align 8
  %__begin2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__end2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %d = alloca i64, align 8
  store %"class.tensorflow::TensorShape"* %this, %"class.tensorflow::TensorShape"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::TensorShape"** %this.addr, metadata !3741, metadata !DIExpression()), !dbg !3742
  %this1 = load %"class.tensorflow::TensorShape"*, %"class.tensorflow::TensorShape"** %this.addr, align 8
  %dims_ = getelementptr inbounds %"class.tensorflow::TensorShape", %"class.tensorflow::TensorShape"* %this1, i32 0, i32 0, !dbg !3743
  %call = call zeroext i1 @_ZNKSt6vectorIlSaIlEE5emptyEv(%"class.std::vector"* %dims_) #6, !dbg !3745
  br i1 %call, label %if.then, label %if.end, !dbg !3746

if.then:                                          ; preds = %entry
  store i64 1, i64* %retval, align 8, !dbg !3747
  br label %return, !dbg !3747

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %prod, metadata !3748, metadata !DIExpression()), !dbg !3749
  store i64 1, i64* %prod, align 8, !dbg !3749
  call void @llvm.dbg.declare(metadata %"class.std::vector"** %__range2, metadata !3750, metadata !DIExpression()), !dbg !3752
  %dims_2 = getelementptr inbounds %"class.tensorflow::TensorShape", %"class.tensorflow::TensorShape"* %this1, i32 0, i32 0, !dbg !3753
  store %"class.std::vector"* %dims_2, %"class.std::vector"** %__range2, align 8, !dbg !3753
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator"* %__begin2, metadata !3754, metadata !DIExpression()), !dbg !3752
  %0 = load %"class.std::vector"*, %"class.std::vector"** %__range2, align 8, !dbg !3755
  %call3 = call i64* @_ZNKSt6vectorIlSaIlEE5beginEv(%"class.std::vector"* %0) #6, !dbg !3755
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__begin2, i32 0, i32 0, !dbg !3755
  store i64* %call3, i64** %coerce.dive, align 8, !dbg !3755
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator"* %__end2, metadata !3756, metadata !DIExpression()), !dbg !3752
  %1 = load %"class.std::vector"*, %"class.std::vector"** %__range2, align 8, !dbg !3755
  %call4 = call i64* @_ZNKSt6vectorIlSaIlEE3endEv(%"class.std::vector"* %1) #6, !dbg !3755
  %coerce.dive5 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__end2, i32 0, i32 0, !dbg !3755
  store i64* %call4, i64** %coerce.dive5, align 8, !dbg !3755
  br label %for.cond, !dbg !3755

for.cond:                                         ; preds = %for.inc, %if.end
  %call6 = call zeroext i1 @_ZN9__gnu_cxxneIPKlSt6vectorIlSaIlEEEEbRKNS_17__normal_iteratorIT_T0_EESB_(%"class.__gnu_cxx::__normal_iterator"* nonnull align 8 dereferenceable(8) %__begin2, %"class.__gnu_cxx::__normal_iterator"* nonnull align 8 dereferenceable(8) %__end2) #6, !dbg !3755
  br i1 %call6, label %for.body, label %for.end, !dbg !3755

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i64* %d, metadata !3757, metadata !DIExpression()), !dbg !3759
  %call7 = call nonnull align 8 dereferenceable(8) i64* @_ZNK9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEdeEv(%"class.__gnu_cxx::__normal_iterator"* %__begin2) #6, !dbg !3760
  %2 = load i64, i64* %call7, align 8, !dbg !3760
  store i64 %2, i64* %d, align 8, !dbg !3759
  %3 = load i64, i64* %d, align 8, !dbg !3761
  %cmp = icmp sle i64 %3, 0, !dbg !3764
  br i1 %cmp, label %if.then8, label %if.end9, !dbg !3765

if.then8:                                         ; preds = %for.body
  store i64 0, i64* %retval, align 8, !dbg !3766
  br label %return, !dbg !3766

if.end9:                                          ; preds = %for.body
  %4 = load i64, i64* %d, align 8, !dbg !3767
  %5 = load i64, i64* %prod, align 8, !dbg !3768
  %mul = mul nsw i64 %5, %4, !dbg !3768
  store i64 %mul, i64* %prod, align 8, !dbg !3768
  br label %for.inc, !dbg !3769

for.inc:                                          ; preds = %if.end9
  %call10 = call nonnull align 8 dereferenceable(8) %"class.__gnu_cxx::__normal_iterator"* @_ZN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEppEv(%"class.__gnu_cxx::__normal_iterator"* %__begin2) #6, !dbg !3755
  br label %for.cond, !dbg !3755, !llvm.loop !3770

for.end:                                          ; preds = %for.cond
  %6 = load i64, i64* %prod, align 8, !dbg !3772
  store i64 %6, i64* %retval, align 8, !dbg !3773
  br label %return, !dbg !3773

return:                                           ; preds = %for.end, %if.then8, %if.then
  %7 = load i64, i64* %retval, align 8, !dbg !3774
  ret i64 %7, !dbg !3774
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local zeroext i1 @_ZNKSt6vectorIlSaIlEE5emptyEv(%"class.std::vector"* %this) #4 comdat align 2 !dbg !3775 {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  %ref.tmp = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %ref.tmp2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::vector"** %this.addr, metadata !3776, metadata !DIExpression()), !dbg !3778
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %call = call i64* @_ZNKSt6vectorIlSaIlEE5beginEv(%"class.std::vector"* %this1) #6, !dbg !3779
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %ref.tmp, i32 0, i32 0, !dbg !3779
  store i64* %call, i64** %coerce.dive, align 8, !dbg !3779
  %call3 = call i64* @_ZNKSt6vectorIlSaIlEE3endEv(%"class.std::vector"* %this1) #6, !dbg !3780
  %coerce.dive4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %ref.tmp2, i32 0, i32 0, !dbg !3780
  store i64* %call3, i64** %coerce.dive4, align 8, !dbg !3780
  %call5 = call zeroext i1 @_ZN9__gnu_cxxeqIPKlSt6vectorIlSaIlEEEEbRKNS_17__normal_iteratorIT_T0_EESB_(%"class.__gnu_cxx::__normal_iterator"* nonnull align 8 dereferenceable(8) %ref.tmp, %"class.__gnu_cxx::__normal_iterator"* nonnull align 8 dereferenceable(8) %ref.tmp2) #6, !dbg !3781
  ret i1 %call5, !dbg !3782
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64* @_ZNKSt6vectorIlSaIlEE5beginEv(%"class.std::vector"* %this) #4 comdat align 2 !dbg !3783 {
entry:
  %retval = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %this.addr = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::vector"** %this.addr, metadata !3784, metadata !DIExpression()), !dbg !3785
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*, !dbg !3786
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %0, i32 0, i32 0, !dbg !3786
  %1 = bitcast %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %_M_impl to %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"*, !dbg !3787
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data", %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* %1, i32 0, i32 0, !dbg !3788
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEC2ERKS2_(%"class.__gnu_cxx::__normal_iterator"* %retval, i64** nonnull align 8 dereferenceable(8) %_M_start) #6, !dbg !3789
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %retval, i32 0, i32 0, !dbg !3790
  %2 = load i64*, i64** %coerce.dive, align 8, !dbg !3790
  ret i64* %2, !dbg !3790
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64* @_ZNKSt6vectorIlSaIlEE3endEv(%"class.std::vector"* %this) #4 comdat align 2 !dbg !3791 {
entry:
  %retval = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %this.addr = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::vector"** %this.addr, metadata !3792, metadata !DIExpression()), !dbg !3793
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*, !dbg !3794
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %0, i32 0, i32 0, !dbg !3794
  %1 = bitcast %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %_M_impl to %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"*, !dbg !3795
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data", %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* %1, i32 0, i32 1, !dbg !3796
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEC2ERKS2_(%"class.__gnu_cxx::__normal_iterator"* %retval, i64** nonnull align 8 dereferenceable(8) %_M_finish) #6, !dbg !3797
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %retval, i32 0, i32 0, !dbg !3798
  %2 = load i64*, i64** %coerce.dive, align 8, !dbg !3798
  ret i64* %2, !dbg !3798
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local zeroext i1 @_ZN9__gnu_cxxneIPKlSt6vectorIlSaIlEEEEbRKNS_17__normal_iteratorIT_T0_EESB_(%"class.__gnu_cxx::__normal_iterator"* nonnull align 8 dereferenceable(8) %__lhs, %"class.__gnu_cxx::__normal_iterator"* nonnull align 8 dereferenceable(8) %__rhs) #4 comdat !dbg !3799 {
entry:
  %__lhs.addr = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  %__rhs.addr = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %__lhs, %"class.__gnu_cxx::__normal_iterator"** %__lhs.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator"** %__lhs.addr, metadata !3803, metadata !DIExpression()), !dbg !3804
  store %"class.__gnu_cxx::__normal_iterator"* %__rhs, %"class.__gnu_cxx::__normal_iterator"** %__rhs.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator"** %__rhs.addr, metadata !3805, metadata !DIExpression()), !dbg !3806
  %0 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %__lhs.addr, align 8, !dbg !3807
  %call = call nonnull align 8 dereferenceable(8) i64** @_ZNK9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %0) #6, !dbg !3808
  %1 = load i64*, i64** %call, align 8, !dbg !3808
  %2 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %__rhs.addr, align 8, !dbg !3809
  %call1 = call nonnull align 8 dereferenceable(8) i64** @_ZNK9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %2) #6, !dbg !3810
  %3 = load i64*, i64** %call1, align 8, !dbg !3810
  %cmp = icmp ne i64* %1, %3, !dbg !3811
  ret i1 %cmp, !dbg !3812
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) i64* @_ZNK9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEdeEv(%"class.__gnu_cxx::__normal_iterator"* %this) #4 comdat align 2 !dbg !3813 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %this, %"class.__gnu_cxx::__normal_iterator"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator"** %this.addr, metadata !3814, metadata !DIExpression()), !dbg !3816
  %this1 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %this.addr, align 8
  %_M_current = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %this1, i32 0, i32 0, !dbg !3817
  %0 = load i64*, i64** %_M_current, align 8, !dbg !3817
  ret i64* %0, !dbg !3818
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) %"class.__gnu_cxx::__normal_iterator"* @_ZN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEppEv(%"class.__gnu_cxx::__normal_iterator"* %this) #4 comdat align 2 !dbg !3819 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %this, %"class.__gnu_cxx::__normal_iterator"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator"** %this.addr, metadata !3820, metadata !DIExpression()), !dbg !3822
  %this1 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %this.addr, align 8
  %_M_current = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %this1, i32 0, i32 0, !dbg !3823
  %0 = load i64*, i64** %_M_current, align 8, !dbg !3824
  %incdec.ptr = getelementptr inbounds i64, i64* %0, i32 1, !dbg !3824
  store i64* %incdec.ptr, i64** %_M_current, align 8, !dbg !3824
  ret %"class.__gnu_cxx::__normal_iterator"* %this1, !dbg !3825
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) i64** @_ZNK9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %this) #4 comdat align 2 !dbg !3826 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %this, %"class.__gnu_cxx::__normal_iterator"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator"** %this.addr, metadata !3827, metadata !DIExpression()), !dbg !3828
  %this1 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %this.addr, align 8
  %_M_current = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %this1, i32 0, i32 0, !dbg !3829
  ret i64** %_M_current, !dbg !3830
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEC2ERKS2_(%"class.__gnu_cxx::__normal_iterator"* %this, i64** nonnull align 8 dereferenceable(8) %__i) unnamed_addr #4 comdat align 2 !dbg !3831 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  %__i.addr = alloca i64**, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %this, %"class.__gnu_cxx::__normal_iterator"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator"** %this.addr, metadata !3832, metadata !DIExpression()), !dbg !3833
  store i64** %__i, i64*** %__i.addr, align 8
  call void @llvm.dbg.declare(metadata i64*** %__i.addr, metadata !3834, metadata !DIExpression()), !dbg !3835
  %this1 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %this.addr, align 8
  %_M_current = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %this1, i32 0, i32 0, !dbg !3836
  %0 = load i64**, i64*** %__i.addr, align 8, !dbg !3837
  %1 = load i64*, i64** %0, align 8, !dbg !3837
  store i64* %1, i64** %_M_current, align 8, !dbg !3836
  ret void, !dbg !3838
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local zeroext i1 @_ZN9__gnu_cxxeqIPKlSt6vectorIlSaIlEEEEbRKNS_17__normal_iteratorIT_T0_EESB_(%"class.__gnu_cxx::__normal_iterator"* nonnull align 8 dereferenceable(8) %__lhs, %"class.__gnu_cxx::__normal_iterator"* nonnull align 8 dereferenceable(8) %__rhs) #4 comdat !dbg !3839 {
entry:
  %__lhs.addr = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  %__rhs.addr = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %__lhs, %"class.__gnu_cxx::__normal_iterator"** %__lhs.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator"** %__lhs.addr, metadata !3840, metadata !DIExpression()), !dbg !3841
  store %"class.__gnu_cxx::__normal_iterator"* %__rhs, %"class.__gnu_cxx::__normal_iterator"** %__rhs.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator"** %__rhs.addr, metadata !3842, metadata !DIExpression()), !dbg !3843
  %0 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %__lhs.addr, align 8, !dbg !3844
  %call = call nonnull align 8 dereferenceable(8) i64** @_ZNK9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %0) #6, !dbg !3845
  %1 = load i64*, i64** %call, align 8, !dbg !3845
  %2 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %__rhs.addr, align 8, !dbg !3846
  %call1 = call nonnull align 8 dereferenceable(8) i64** @_ZNK9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %2) #6, !dbg !3847
  %3 = load i64*, i64** %call1, align 8, !dbg !3847
  %cmp = icmp eq i64* %1, %3, !dbg !3848
  ret i1 %cmp, !dbg !3849
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIlSaIlEEC2ERKS1_(%"class.std::vector"* %this, %"class.std::vector"* nonnull align 8 dereferenceable(24) %__x) unnamed_addr #5 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !3850 {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  %__x.addr = alloca %"class.std::vector"*, align 8
  %ref.tmp = alloca %"class.std::allocator.0", align 1
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  %agg.tmp = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp4 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::vector"** %this.addr, metadata !3851, metadata !DIExpression()), !dbg !3852
  store %"class.std::vector"* %__x, %"class.std::vector"** %__x.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::vector"** %__x.addr, metadata !3853, metadata !DIExpression()), !dbg !3854
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*, !dbg !3855
  %1 = load %"class.std::vector"*, %"class.std::vector"** %__x.addr, align 8, !dbg !3856
  %call = call i64 @_ZNKSt6vectorIlSaIlEE4sizeEv(%"class.std::vector"* %1) #6, !dbg !3857
  %2 = load %"class.std::vector"*, %"class.std::vector"** %__x.addr, align 8, !dbg !3858
  %3 = bitcast %"class.std::vector"* %2 to %"struct.std::_Vector_base"*, !dbg !3858
  %call2 = call nonnull align 1 dereferenceable(1) %"class.std::allocator.0"* @_ZNKSt12_Vector_baseIlSaIlEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %3) #6, !dbg !3859
  call void @_ZN9__gnu_cxx14__alloc_traitsISaIlElE17_S_select_on_copyERKS1_(%"class.std::allocator.0"* sret align 1 %ref.tmp, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %call2), !dbg !3860
  invoke void @_ZNSt12_Vector_baseIlSaIlEEC2EmRKS0_(%"struct.std::_Vector_base"* %0, i64 %call, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %ref.tmp)
          to label %invoke.cont unwind label %lpad, !dbg !3861

invoke.cont:                                      ; preds = %entry
  call void @_ZNSaIlED2Ev(%"class.std::allocator.0"* %ref.tmp) #6, !dbg !3861
  %4 = load %"class.std::vector"*, %"class.std::vector"** %__x.addr, align 8, !dbg !3862
  %call3 = call i64* @_ZNKSt6vectorIlSaIlEE5beginEv(%"class.std::vector"* %4) #6, !dbg !3864
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp, i32 0, i32 0, !dbg !3864
  store i64* %call3, i64** %coerce.dive, align 8, !dbg !3864
  %5 = load %"class.std::vector"*, %"class.std::vector"** %__x.addr, align 8, !dbg !3865
  %call5 = call i64* @_ZNKSt6vectorIlSaIlEE3endEv(%"class.std::vector"* %5) #6, !dbg !3866
  %coerce.dive6 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp4, i32 0, i32 0, !dbg !3866
  store i64* %call5, i64** %coerce.dive6, align 8, !dbg !3866
  %6 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*, !dbg !3867
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %6, i32 0, i32 0, !dbg !3867
  %7 = bitcast %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %_M_impl to %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"*, !dbg !3868
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data", %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* %7, i32 0, i32 0, !dbg !3869
  %8 = load i64*, i64** %_M_start, align 8, !dbg !3869
  %9 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*, !dbg !3870
  %call7 = call nonnull align 1 dereferenceable(1) %"class.std::allocator.0"* @_ZNSt12_Vector_baseIlSaIlEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %9) #6, !dbg !3870
  %coerce.dive8 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp, i32 0, i32 0, !dbg !3871
  %10 = load i64*, i64** %coerce.dive8, align 8, !dbg !3871
  %coerce.dive9 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp4, i32 0, i32 0, !dbg !3871
  %11 = load i64*, i64** %coerce.dive9, align 8, !dbg !3871
  %call12 = invoke i64* @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEEPllET0_T_SA_S9_RSaIT1_E(i64* %10, i64* %11, i64* %8, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %call7)
          to label %invoke.cont11 unwind label %lpad10, !dbg !3871

invoke.cont11:                                    ; preds = %invoke.cont
  %12 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*, !dbg !3872
  %_M_impl13 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %12, i32 0, i32 0, !dbg !3872
  %13 = bitcast %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %_M_impl13 to %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"*, !dbg !3873
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data", %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* %13, i32 0, i32 1, !dbg !3874
  store i64* %call12, i64** %_M_finish, align 8, !dbg !3875
  ret void, !dbg !3876

lpad:                                             ; preds = %entry
  %14 = landingpad { i8*, i32 }
          cleanup, !dbg !3876
  %15 = extractvalue { i8*, i32 } %14, 0, !dbg !3876
  store i8* %15, i8** %exn.slot, align 8, !dbg !3876
  %16 = extractvalue { i8*, i32 } %14, 1, !dbg !3876
  store i32 %16, i32* %ehselector.slot, align 4, !dbg !3876
  call void @_ZNSaIlED2Ev(%"class.std::allocator.0"* %ref.tmp) #6, !dbg !3861
  br label %eh.resume, !dbg !3861

lpad10:                                           ; preds = %invoke.cont
  %17 = landingpad { i8*, i32 }
          cleanup, !dbg !3877
  %18 = extractvalue { i8*, i32 } %17, 0, !dbg !3877
  store i8* %18, i8** %exn.slot, align 8, !dbg !3877
  %19 = extractvalue { i8*, i32 } %17, 1, !dbg !3877
  store i32 %19, i32* %ehselector.slot, align 4, !dbg !3877
  %20 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*, !dbg !3877
  call void @_ZNSt12_Vector_baseIlSaIlEED2Ev(%"struct.std::_Vector_base"* %20) #6, !dbg !3877
  br label %eh.resume, !dbg !3877

eh.resume:                                        ; preds = %lpad10, %lpad
  %exn = load i8*, i8** %exn.slot, align 8, !dbg !3861
  %sel = load i32, i32* %ehselector.slot, align 4, !dbg !3861
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0, !dbg !3861
  %lpad.val14 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1, !dbg !3861
  resume { i8*, i32 } %lpad.val14, !dbg !3861
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @_ZNKSt6vectorIlSaIlEE4sizeEv(%"class.std::vector"* %this) #4 comdat align 2 !dbg !3878 {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::vector"** %this.addr, metadata !3879, metadata !DIExpression()), !dbg !3880
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*, !dbg !3881
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %0, i32 0, i32 0, !dbg !3881
  %1 = bitcast %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %_M_impl to %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"*, !dbg !3882
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data", %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* %1, i32 0, i32 1, !dbg !3883
  %2 = load i64*, i64** %_M_finish, align 8, !dbg !3883
  %3 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*, !dbg !3884
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %3, i32 0, i32 0, !dbg !3884
  %4 = bitcast %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %_M_impl2 to %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"*, !dbg !3885
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data", %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* %4, i32 0, i32 0, !dbg !3886
  %5 = load i64*, i64** %_M_start, align 8, !dbg !3886
  %sub.ptr.lhs.cast = ptrtoint i64* %2 to i64, !dbg !3887
  %sub.ptr.rhs.cast = ptrtoint i64* %5 to i64, !dbg !3887
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !3887
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8, !dbg !3887
  ret i64 %sub.ptr.div, !dbg !3888
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 1 dereferenceable(1) %"class.std::allocator.0"* @_ZNKSt12_Vector_baseIlSaIlEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %this) #4 comdat align 2 !dbg !3889 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base"*, align 8
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::_Vector_base"** %this.addr, metadata !3890, metadata !DIExpression()), !dbg !3892
  %this1 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0, !dbg !3893
  %0 = bitcast %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %_M_impl to %"class.std::allocator.0"*, !dbg !3894
  ret %"class.std::allocator.0"* %0, !dbg !3895
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx14__alloc_traitsISaIlElE17_S_select_on_copyERKS1_(%"class.std::allocator.0"* noalias sret align 1 %agg.result, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %__a) #5 comdat align 2 !dbg !3896 {
entry:
  %result.ptr = alloca i8*, align 8
  %__a.addr = alloca %"class.std::allocator.0"*, align 8
  %0 = bitcast %"class.std::allocator.0"* %agg.result to i8*
  store i8* %0, i8** %result.ptr, align 8
  store %"class.std::allocator.0"* %__a, %"class.std::allocator.0"** %__a.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::allocator.0"** %__a.addr, metadata !3897, metadata !DIExpression()), !dbg !3898
  %1 = load %"class.std::allocator.0"*, %"class.std::allocator.0"** %__a.addr, align 8, !dbg !3899
  call void @_ZNSt16allocator_traitsISaIlEE37select_on_container_copy_constructionERKS0_(%"class.std::allocator.0"* sret align 1 %agg.result, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %1), !dbg !3900
  ret void, !dbg !3901
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIlSaIlEEC2EmRKS0_(%"struct.std::_Vector_base"* %this, i64 %__n, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %__a) unnamed_addr #5 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !3902 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base"*, align 8
  %__n.addr = alloca i64, align 8
  %__a.addr = alloca %"class.std::allocator.0"*, align 8
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::_Vector_base"** %this.addr, metadata !3903, metadata !DIExpression()), !dbg !3904
  store i64 %__n, i64* %__n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %__n.addr, metadata !3905, metadata !DIExpression()), !dbg !3906
  store %"class.std::allocator.0"* %__a, %"class.std::allocator.0"** %__a.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::allocator.0"** %__a.addr, metadata !3907, metadata !DIExpression()), !dbg !3908
  %this1 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0, !dbg !3909
  %0 = load %"class.std::allocator.0"*, %"class.std::allocator.0"** %__a.addr, align 8, !dbg !3910
  call void @_ZNSt12_Vector_baseIlSaIlEE12_Vector_implC2ERKS0_(%"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %_M_impl, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %0) #6, !dbg !3909
  %1 = load i64, i64* %__n.addr, align 8, !dbg !3911
  invoke void @_ZNSt12_Vector_baseIlSaIlEE17_M_create_storageEm(%"struct.std::_Vector_base"* %this1, i64 %1)
          to label %invoke.cont unwind label %lpad, !dbg !3913

invoke.cont:                                      ; preds = %entry
  ret void, !dbg !3914

lpad:                                             ; preds = %entry
  %2 = landingpad { i8*, i32 }
          cleanup, !dbg !3915
  %3 = extractvalue { i8*, i32 } %2, 0, !dbg !3915
  store i8* %3, i8** %exn.slot, align 8, !dbg !3915
  %4 = extractvalue { i8*, i32 } %2, 1, !dbg !3915
  store i32 %4, i32* %ehselector.slot, align 4, !dbg !3915
  call void @_ZNSt12_Vector_baseIlSaIlEE12_Vector_implD2Ev(%"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %_M_impl) #6, !dbg !3915
  br label %eh.resume, !dbg !3915

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8, !dbg !3915
  %sel = load i32, i32* %ehselector.slot, align 4, !dbg !3915
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0, !dbg !3915
  %lpad.val2 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1, !dbg !3915
  resume { i8*, i32 } %lpad.val2, !dbg !3915
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i64* @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEEPllET0_T_SA_S9_RSaIT1_E(i64* %__first.coerce, i64* %__last.coerce, i64* %__result, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %0) #5 comdat !dbg !3916 {
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
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator"* %__first, metadata !3922, metadata !DIExpression()), !dbg !3923
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator"* %__last, metadata !3924, metadata !DIExpression()), !dbg !3925
  store i64* %__result, i64** %__result.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %__result.addr, metadata !3926, metadata !DIExpression()), !dbg !3927
  store %"class.std::allocator.0"* %0, %"class.std::allocator.0"** %.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::allocator.0"** %.addr, metadata !3928, metadata !DIExpression()), !dbg !3929
  %1 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp to i8*, !dbg !3930
  %2 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__first to i8*, !dbg !3930
  %3 = call i8* @memcpy(i8* %1, i8* %2, i64 8), !dbg !3930
  %4 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp2 to i8*, !dbg !3931
  %5 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__last to i8*, !dbg !3931
  %6 = call i8* @memcpy(i8* %4, i8* %5, i64 8), !dbg !3931
  %7 = load i64*, i64** %__result.addr, align 8, !dbg !3932
  %coerce.dive3 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp, i32 0, i32 0, !dbg !3933
  %8 = load i64*, i64** %coerce.dive3, align 8, !dbg !3933
  %coerce.dive4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp2, i32 0, i32 0, !dbg !3933
  %9 = load i64*, i64** %coerce.dive4, align 8, !dbg !3933
  %call = call i64* @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEEPlET0_T_SA_S9_(i64* %8, i64* %9, i64* %7), !dbg !3933
  ret i64* %call, !dbg !3934
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #13

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i64* @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEEPlET0_T_SA_S9_(i64* %__first.coerce, i64* %__last.coerce, i64* %__result) #5 comdat !dbg !3935 {
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
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator"* %__first, metadata !3939, metadata !DIExpression()), !dbg !3940
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator"* %__last, metadata !3941, metadata !DIExpression()), !dbg !3942
  store i64* %__result, i64** %__result.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %__result.addr, metadata !3943, metadata !DIExpression()), !dbg !3944
  call void @llvm.dbg.declare(metadata i8* %__assignable, metadata !3945, metadata !DIExpression()), !dbg !3946
  store i8 1, i8* %__assignable, align 1, !dbg !3946
  %0 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp to i8*, !dbg !3947
  %1 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__first to i8*, !dbg !3947
  %2 = call i8* @memcpy(i8* %0, i8* %1, i64 8), !dbg !3947
  %3 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp2 to i8*, !dbg !3948
  %4 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__last to i8*, !dbg !3948
  %5 = call i8* @memcpy(i8* %3, i8* %4, i64 8), !dbg !3948
  %6 = load i64*, i64** %__result.addr, align 8, !dbg !3949
  %coerce.dive3 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp, i32 0, i32 0, !dbg !3950
  %7 = load i64*, i64** %coerce.dive3, align 8, !dbg !3950
  %coerce.dive4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp2, i32 0, i32 0, !dbg !3950
  %8 = load i64*, i64** %coerce.dive4, align 8, !dbg !3950
  %call = call i64* @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEEPlEET0_T_SC_SB_(i64* %7, i64* %8, i64* %6), !dbg !3950
  ret i64* %call, !dbg !3951
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i64* @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEEPlEET0_T_SC_SB_(i64* %__first.coerce, i64* %__last.coerce, i64* %__result) #5 comdat align 2 !dbg !3952 {
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
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator"* %__first, metadata !3957, metadata !DIExpression()), !dbg !3958
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator"* %__last, metadata !3959, metadata !DIExpression()), !dbg !3960
  store i64* %__result, i64** %__result.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %__result.addr, metadata !3961, metadata !DIExpression()), !dbg !3962
  %0 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp to i8*, !dbg !3963
  %1 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__first to i8*, !dbg !3963
  %2 = call i8* @memcpy(i8* %0, i8* %1, i64 8), !dbg !3963
  %3 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp2 to i8*, !dbg !3964
  %4 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__last to i8*, !dbg !3964
  %5 = call i8* @memcpy(i8* %3, i8* %4, i64 8), !dbg !3964
  %6 = load i64*, i64** %__result.addr, align 8, !dbg !3965
  %coerce.dive3 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp, i32 0, i32 0, !dbg !3966
  %7 = load i64*, i64** %coerce.dive3, align 8, !dbg !3966
  %coerce.dive4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp2, i32 0, i32 0, !dbg !3966
  %8 = load i64*, i64** %coerce.dive4, align 8, !dbg !3966
  %call = call i64* @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEEPlET0_T_SA_S9_(i64* %7, i64* %8, i64* %6), !dbg !3966
  ret i64* %call, !dbg !3967
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i64* @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEEPlET0_T_SA_S9_(i64* %__first.coerce, i64* %__last.coerce, i64* %__result) #5 comdat !dbg !3968 {
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
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator"* %__first, metadata !3973, metadata !DIExpression()), !dbg !3974
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator"* %__last, metadata !3975, metadata !DIExpression()), !dbg !3976
  store i64* %__result, i64** %__result.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %__result.addr, metadata !3977, metadata !DIExpression()), !dbg !3978
  %0 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp2 to i8*, !dbg !3979
  %1 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__first to i8*, !dbg !3979
  %2 = call i8* @memcpy(i8* %0, i8* %1, i64 8), !dbg !3979
  %coerce.dive3 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp2, i32 0, i32 0, !dbg !3980
  %3 = load i64*, i64** %coerce.dive3, align 8, !dbg !3980
  %call = call i64* @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEEET_S8_(i64* %3), !dbg !3980
  %coerce.dive4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp, i32 0, i32 0, !dbg !3980
  store i64* %call, i64** %coerce.dive4, align 8, !dbg !3980
  %4 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp6 to i8*, !dbg !3981
  %5 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__last to i8*, !dbg !3981
  %6 = call i8* @memcpy(i8* %4, i8* %5, i64 8), !dbg !3981
  %coerce.dive7 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp6, i32 0, i32 0, !dbg !3982
  %7 = load i64*, i64** %coerce.dive7, align 8, !dbg !3982
  %call8 = call i64* @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEEET_S8_(i64* %7), !dbg !3982
  %coerce.dive9 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp5, i32 0, i32 0, !dbg !3982
  store i64* %call8, i64** %coerce.dive9, align 8, !dbg !3982
  %8 = load i64*, i64** %__result.addr, align 8, !dbg !3983
  %coerce.dive10 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp, i32 0, i32 0, !dbg !3984
  %9 = load i64*, i64** %coerce.dive10, align 8, !dbg !3984
  %coerce.dive11 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp5, i32 0, i32 0, !dbg !3984
  %10 = load i64*, i64** %coerce.dive11, align 8, !dbg !3984
  %call12 = call i64* @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEEPlET1_T0_SA_S9_(i64* %9, i64* %10, i64* %8), !dbg !3984
  ret i64* %call12, !dbg !3985
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64* @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEEET_S8_(i64* %__it.coerce) #4 comdat !dbg !3986 {
entry:
  %retval = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__it = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__it, i32 0, i32 0
  store i64* %__it.coerce, i64** %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator"* %__it, metadata !3992, metadata !DIExpression()), !dbg !3993
  %0 = bitcast %"class.__gnu_cxx::__normal_iterator"* %retval to i8*, !dbg !3994
  %1 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__it to i8*, !dbg !3994
  %2 = call i8* @memcpy(i8* %0, i8* %1, i64 8), !dbg !3994
  %coerce.dive1 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %retval, i32 0, i32 0, !dbg !3995
  %3 = load i64*, i64** %coerce.dive1, align 8, !dbg !3995
  ret i64* %3, !dbg !3995
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i64* @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEEPlET1_T0_SA_S9_(i64* %__first.coerce, i64* %__last.coerce, i64* %__result) #5 comdat !dbg !3996 {
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
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator"* %__first, metadata !3999, metadata !DIExpression()), !dbg !4000
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator"* %__last, metadata !4001, metadata !DIExpression()), !dbg !4002
  store i64* %__result, i64** %__result.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %__result.addr, metadata !4003, metadata !DIExpression()), !dbg !4004
  %0 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp to i8*, !dbg !4005
  %1 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__first to i8*, !dbg !4005
  %2 = call i8* @memcpy(i8* %0, i8* %1, i64 8), !dbg !4005
  %coerce.dive2 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp, i32 0, i32 0, !dbg !4006
  %3 = load i64*, i64** %coerce.dive2, align 8, !dbg !4006
  %call = call i64* @_ZSt12__niter_baseIPKlSt6vectorIlSaIlEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE(i64* %3) #6, !dbg !4006
  %4 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp3 to i8*, !dbg !4007
  %5 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__last to i8*, !dbg !4007
  %6 = call i8* @memcpy(i8* %4, i8* %5, i64 8), !dbg !4007
  %coerce.dive4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp3, i32 0, i32 0, !dbg !4008
  %7 = load i64*, i64** %coerce.dive4, align 8, !dbg !4008
  %call5 = call i64* @_ZSt12__niter_baseIPKlSt6vectorIlSaIlEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE(i64* %7) #6, !dbg !4008
  %8 = load i64*, i64** %__result.addr, align 8, !dbg !4009
  %call6 = call i64* @_ZSt12__niter_baseIPlET_S1_(i64* %8) #6, !dbg !4010
  %call7 = call i64* @_ZSt14__copy_move_a1ILb0EPKlPlET1_T0_S4_S3_(i64* %call, i64* %call5, i64* %call6), !dbg !4011
  %call8 = call i64* @_ZSt12__niter_wrapIPlET_RKS1_S1_(i64** nonnull align 8 dereferenceable(8) %__result.addr, i64* %call7), !dbg !4012
  ret i64* %call8, !dbg !4013
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64* @_ZSt12__niter_baseIPKlSt6vectorIlSaIlEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE(i64* %__it.coerce) #4 comdat !dbg !4014 {
entry:
  %__it = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__it, i32 0, i32 0
  store i64* %__it.coerce, i64** %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator"* %__it, metadata !4017, metadata !DIExpression()), !dbg !4018
  %call = call nonnull align 8 dereferenceable(8) i64** @_ZNK9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %__it) #6, !dbg !4019
  %0 = load i64*, i64** %call, align 8, !dbg !4019
  ret i64* %0, !dbg !4020
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64* @_ZSt12__niter_baseIPlET_S1_(i64* %__it) #4 comdat !dbg !4021 {
entry:
  %__it.addr = alloca i64*, align 8
  store i64* %__it, i64** %__it.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %__it.addr, metadata !4024, metadata !DIExpression()), !dbg !4025
  %0 = load i64*, i64** %__it.addr, align 8, !dbg !4026
  ret i64* %0, !dbg !4027
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i64* @_ZSt14__copy_move_a1ILb0EPKlPlET1_T0_S4_S3_(i64* %__first, i64* %__last, i64* %__result) #5 comdat !dbg !4028 {
entry:
  %__first.addr = alloca i64*, align 8
  %__last.addr = alloca i64*, align 8
  %__result.addr = alloca i64*, align 8
  store i64* %__first, i64** %__first.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %__first.addr, metadata !4033, metadata !DIExpression()), !dbg !4034
  store i64* %__last, i64** %__last.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %__last.addr, metadata !4035, metadata !DIExpression()), !dbg !4036
  store i64* %__result, i64** %__result.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %__result.addr, metadata !4037, metadata !DIExpression()), !dbg !4038
  %0 = load i64*, i64** %__first.addr, align 8, !dbg !4039
  %1 = load i64*, i64** %__last.addr, align 8, !dbg !4040
  %2 = load i64*, i64** %__result.addr, align 8, !dbg !4041
  %call = call i64* @_ZSt14__copy_move_a2ILb0EPKlPlET1_T0_S4_S3_(i64* %0, i64* %1, i64* %2), !dbg !4042
  ret i64* %call, !dbg !4043
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64* @_ZSt12__niter_wrapIPlET_RKS1_S1_(i64** nonnull align 8 dereferenceable(8) %0, i64* %__res) #4 comdat !dbg !4044 {
entry:
  %.addr = alloca i64**, align 8
  %__res.addr = alloca i64*, align 8
  store i64** %0, i64*** %.addr, align 8
  call void @llvm.dbg.declare(metadata i64*** %.addr, metadata !4047, metadata !DIExpression()), !dbg !4048
  store i64* %__res, i64** %__res.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %__res.addr, metadata !4049, metadata !DIExpression()), !dbg !4050
  %1 = load i64*, i64** %__res.addr, align 8, !dbg !4051
  ret i64* %1, !dbg !4052
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i64* @_ZSt14__copy_move_a2ILb0EPKlPlET1_T0_S4_S3_(i64* %__first, i64* %__last, i64* %__result) #5 comdat !dbg !4053 {
entry:
  %__first.addr = alloca i64*, align 8
  %__last.addr = alloca i64*, align 8
  %__result.addr = alloca i64*, align 8
  store i64* %__first, i64** %__first.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %__first.addr, metadata !4054, metadata !DIExpression()), !dbg !4055
  store i64* %__last, i64** %__last.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %__last.addr, metadata !4056, metadata !DIExpression()), !dbg !4057
  store i64* %__result, i64** %__result.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %__result.addr, metadata !4058, metadata !DIExpression()), !dbg !4059
  %0 = load i64*, i64** %__first.addr, align 8, !dbg !4060
  %1 = load i64*, i64** %__last.addr, align 8, !dbg !4061
  %2 = load i64*, i64** %__result.addr, align 8, !dbg !4062
  %call = call i64* @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIlEEPT_PKS3_S6_S4_(i64* %0, i64* %1, i64* %2), !dbg !4063
  ret i64* %call, !dbg !4064
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64* @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIlEEPT_PKS3_S6_S4_(i64* %__first, i64* %__last, i64* %__result) #4 comdat align 2 !dbg !4065 {
entry:
  %__first.addr = alloca i64*, align 8
  %__last.addr = alloca i64*, align 8
  %__result.addr = alloca i64*, align 8
  %_Num = alloca i64, align 8
  store i64* %__first, i64** %__first.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %__first.addr, metadata !4071, metadata !DIExpression()), !dbg !4072
  store i64* %__last, i64** %__last.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %__last.addr, metadata !4073, metadata !DIExpression()), !dbg !4074
  store i64* %__result, i64** %__result.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %__result.addr, metadata !4075, metadata !DIExpression()), !dbg !4076
  call void @llvm.dbg.declare(metadata i64* %_Num, metadata !4077, metadata !DIExpression()), !dbg !4079
  %0 = load i64*, i64** %__last.addr, align 8, !dbg !4080
  %1 = load i64*, i64** %__first.addr, align 8, !dbg !4081
  %sub.ptr.lhs.cast = ptrtoint i64* %0 to i64, !dbg !4082
  %sub.ptr.rhs.cast = ptrtoint i64* %1 to i64, !dbg !4082
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !4082
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8, !dbg !4082
  store i64 %sub.ptr.div, i64* %_Num, align 8, !dbg !4079
  %2 = load i64, i64* %_Num, align 8, !dbg !4083
  %tobool = icmp ne i64 %2, 0, !dbg !4083
  br i1 %tobool, label %if.then, label %if.end, !dbg !4085

if.then:                                          ; preds = %entry
  %3 = load i64*, i64** %__result.addr, align 8, !dbg !4086
  %4 = bitcast i64* %3 to i8*, !dbg !4087
  %5 = load i64*, i64** %__first.addr, align 8, !dbg !4088
  %6 = bitcast i64* %5 to i8*, !dbg !4087
  %7 = load i64, i64* %_Num, align 8, !dbg !4089
  %mul = mul i64 8, %7, !dbg !4090
  %8 = call i8* @memmove(i8* %4, i8* %6, i64 %mul), !dbg !4087
  br label %if.end, !dbg !4087

if.end:                                           ; preds = %if.then, %entry
  %9 = load i64*, i64** %__result.addr, align 8, !dbg !4091
  %10 = load i64, i64* %_Num, align 8, !dbg !4092
  %add.ptr = getelementptr inbounds i64, i64* %9, i64 %10, !dbg !4093
  ret i64* %add.ptr, !dbg !4094
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i1 immarg) #13

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIlSaIlEE12_Vector_implC2ERKS0_(%"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %this, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %__a) unnamed_addr #4 comdat align 2 !dbg !4095 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"*, align 8
  %__a.addr = alloca %"class.std::allocator.0"*, align 8
  store %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %this, %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"** %this.addr, metadata !4096, metadata !DIExpression()), !dbg !4097
  store %"class.std::allocator.0"* %__a, %"class.std::allocator.0"** %__a.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::allocator.0"** %__a.addr, metadata !4098, metadata !DIExpression()), !dbg !4099
  %this1 = load %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"*, %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"** %this.addr, align 8
  %0 = bitcast %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %this1 to %"class.std::allocator.0"*, !dbg !4100
  %1 = load %"class.std::allocator.0"*, %"class.std::allocator.0"** %__a.addr, align 8, !dbg !4101
  call void @_ZNSaIlEC2ERKS_(%"class.std::allocator.0"* %0, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %1) #6, !dbg !4102
  %2 = bitcast %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %this1 to %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"*, !dbg !4100
  call void @_ZNSt12_Vector_baseIlSaIlEE17_Vector_impl_dataC2Ev(%"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* %2) #6, !dbg !4103
  ret void, !dbg !4104
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIlSaIlEE17_M_create_storageEm(%"struct.std::_Vector_base"* %this, i64 %__n) #5 comdat align 2 !dbg !4105 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base"*, align 8
  %__n.addr = alloca i64, align 8
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::_Vector_base"** %this.addr, metadata !4106, metadata !DIExpression()), !dbg !4107
  store i64 %__n, i64* %__n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %__n.addr, metadata !4108, metadata !DIExpression()), !dbg !4109
  %this1 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %this.addr, align 8
  %0 = load i64, i64* %__n.addr, align 8, !dbg !4110
  %call = call i64* @_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm(%"struct.std::_Vector_base"* %this1, i64 %0), !dbg !4111
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0, !dbg !4112
  %1 = bitcast %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %_M_impl to %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"*, !dbg !4113
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data", %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* %1, i32 0, i32 0, !dbg !4114
  store i64* %call, i64** %_M_start, align 8, !dbg !4115
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0, !dbg !4116
  %2 = bitcast %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %_M_impl2 to %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"*, !dbg !4117
  %_M_start3 = getelementptr inbounds %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data", %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* %2, i32 0, i32 0, !dbg !4118
  %3 = load i64*, i64** %_M_start3, align 8, !dbg !4118
  %_M_impl4 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0, !dbg !4119
  %4 = bitcast %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %_M_impl4 to %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"*, !dbg !4120
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data", %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* %4, i32 0, i32 1, !dbg !4121
  store i64* %3, i64** %_M_finish, align 8, !dbg !4122
  %_M_impl5 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0, !dbg !4123
  %5 = bitcast %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %_M_impl5 to %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"*, !dbg !4124
  %_M_start6 = getelementptr inbounds %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data", %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* %5, i32 0, i32 0, !dbg !4125
  %6 = load i64*, i64** %_M_start6, align 8, !dbg !4125
  %7 = load i64, i64* %__n.addr, align 8, !dbg !4126
  %add.ptr = getelementptr inbounds i64, i64* %6, i64 %7, !dbg !4127
  %_M_impl7 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0, !dbg !4128
  %8 = bitcast %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %_M_impl7 to %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"*, !dbg !4129
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data", %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* %8, i32 0, i32 2, !dbg !4130
  store i64* %add.ptr, i64** %_M_end_of_storage, align 8, !dbg !4131
  ret void, !dbg !4132
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i64* @_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm(%"struct.std::_Vector_base"* %this, i64 %__n) #5 comdat align 2 !dbg !4133 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base"*, align 8
  %__n.addr = alloca i64, align 8
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::_Vector_base"** %this.addr, metadata !4134, metadata !DIExpression()), !dbg !4135
  store i64 %__n, i64* %__n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %__n.addr, metadata !4136, metadata !DIExpression()), !dbg !4137
  %this1 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %this.addr, align 8
  %0 = load i64, i64* %__n.addr, align 8, !dbg !4138
  %cmp = icmp ne i64 %0, 0, !dbg !4139
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !4138

cond.true:                                        ; preds = %entry
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0, !dbg !4140
  %1 = bitcast %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %_M_impl to %"class.std::allocator.0"*, !dbg !4140
  %2 = load i64, i64* %__n.addr, align 8, !dbg !4141
  %call = call i64* @_ZNSt16allocator_traitsISaIlEE8allocateERS0_m(%"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %1, i64 %2), !dbg !4142
  br label %cond.end, !dbg !4138

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !4138

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64* [ %call, %cond.true ], [ null, %cond.false ], !dbg !4138
  ret i64* %cond, !dbg !4143
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i64* @_ZNSt16allocator_traitsISaIlEE8allocateERS0_m(%"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %__a, i64 %__n) #5 comdat align 2 !dbg !4144 {
entry:
  %__a.addr = alloca %"class.std::allocator.0"*, align 8
  %__n.addr = alloca i64, align 8
  store %"class.std::allocator.0"* %__a, %"class.std::allocator.0"** %__a.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::allocator.0"** %__a.addr, metadata !4145, metadata !DIExpression()), !dbg !4146
  store i64 %__n, i64* %__n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %__n.addr, metadata !4147, metadata !DIExpression()), !dbg !4148
  %0 = load %"class.std::allocator.0"*, %"class.std::allocator.0"** %__a.addr, align 8, !dbg !4149
  %1 = bitcast %"class.std::allocator.0"* %0 to %"class.std::allocator.0"*, !dbg !4149
  %2 = load i64, i64* %__n.addr, align 8, !dbg !4150
  %call = call i64* @_ZN9__gnu_cxx13new_allocatorIlE8allocateEmPKv(%"class.std::allocator.0"* %1, i64 %2, i8* null), !dbg !4151
  ret i64* %call, !dbg !4152
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i64* @_ZN9__gnu_cxx13new_allocatorIlE8allocateEmPKv(%"class.std::allocator.0"* %this, i64 %__n, i8* %0) #5 comdat align 2 !dbg !4153 {
entry:
  %this.addr = alloca %"class.std::allocator.0"*, align 8
  %__n.addr = alloca i64, align 8
  %.addr = alloca i8*, align 8
  store %"class.std::allocator.0"* %this, %"class.std::allocator.0"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::allocator.0"** %this.addr, metadata !4154, metadata !DIExpression()), !dbg !4155
  store i64 %__n, i64* %__n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %__n.addr, metadata !4156, metadata !DIExpression()), !dbg !4157
  store i8* %0, i8** %.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %.addr, metadata !4158, metadata !DIExpression()), !dbg !4159
  %this1 = load %"class.std::allocator.0"*, %"class.std::allocator.0"** %this.addr, align 8
  %1 = load i64, i64* %__n.addr, align 8, !dbg !4160
  %call = call i64 @_ZNK9__gnu_cxx13new_allocatorIlE11_M_max_sizeEv(%"class.std::allocator.0"* %this1) #6, !dbg !4162
  %cmp = icmp ugt i64 %1, %call, !dbg !4163
  br i1 %cmp, label %if.then, label %if.end4, !dbg !4164

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %__n.addr, align 8, !dbg !4165
  %cmp2 = icmp ugt i64 %2, 2305843009213693951, !dbg !4168
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !4169

if.then3:                                         ; preds = %if.then
  call void @_ZSt28__throw_bad_array_new_lengthv() #19, !dbg !4170
  unreachable, !dbg !4170

if.end:                                           ; preds = %if.then
  call void @_ZSt17__throw_bad_allocv() #19, !dbg !4171
  unreachable, !dbg !4171

if.end4:                                          ; preds = %entry
  %3 = load i64, i64* %__n.addr, align 8, !dbg !4172
  %mul = mul i64 %3, 8, !dbg !4173
  %call5 = call noalias nonnull i8* @_Znwm(i64 %mul) #18, !dbg !4174
  %4 = bitcast i8* %call5 to i64*, !dbg !4175
  ret i64* %4, !dbg !4176
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @_ZNK9__gnu_cxx13new_allocatorIlE11_M_max_sizeEv(%"class.std::allocator.0"* %this) #4 comdat align 2 !dbg !4177 {
entry:
  %this.addr = alloca %"class.std::allocator.0"*, align 8
  store %"class.std::allocator.0"* %this, %"class.std::allocator.0"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::allocator.0"** %this.addr, metadata !4178, metadata !DIExpression()), !dbg !4180
  %this1 = load %"class.std::allocator.0"*, %"class.std::allocator.0"** %this.addr, align 8
  ret i64 1152921504606846975, !dbg !4181
}

; Function Attrs: noreturn
declare dso_local void @_ZSt28__throw_bad_array_new_lengthv() #11

; Function Attrs: noreturn
declare dso_local void @_ZSt17__throw_bad_allocv() #11

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSaIlEC2ERKS_(%"class.std::allocator.0"* %this, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %__a) unnamed_addr #4 comdat align 2 !dbg !4182 {
entry:
  %this.addr = alloca %"class.std::allocator.0"*, align 8
  %__a.addr = alloca %"class.std::allocator.0"*, align 8
  store %"class.std::allocator.0"* %this, %"class.std::allocator.0"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::allocator.0"** %this.addr, metadata !4183, metadata !DIExpression()), !dbg !4184
  store %"class.std::allocator.0"* %__a, %"class.std::allocator.0"** %__a.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::allocator.0"** %__a.addr, metadata !4185, metadata !DIExpression()), !dbg !4186
  %this1 = load %"class.std::allocator.0"*, %"class.std::allocator.0"** %this.addr, align 8
  %0 = bitcast %"class.std::allocator.0"* %this1 to %"class.std::allocator.0"*, !dbg !4187
  %1 = load %"class.std::allocator.0"*, %"class.std::allocator.0"** %__a.addr, align 8, !dbg !4188
  %2 = bitcast %"class.std::allocator.0"* %1 to %"class.std::allocator.0"*, !dbg !4188
  call void @_ZN9__gnu_cxx13new_allocatorIlEC2ERKS1_(%"class.std::allocator.0"* %0, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %2) #6, !dbg !4189
  ret void, !dbg !4190
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIlSaIlEE17_Vector_impl_dataC2Ev(%"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* %this) unnamed_addr #4 comdat align 2 !dbg !4191 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"*, align 8
  store %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* %this, %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"** %this.addr, metadata !4192, metadata !DIExpression()), !dbg !4194
  %this1 = load %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"*, %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"** %this.addr, align 8
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data", %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* %this1, i32 0, i32 0, !dbg !4195
  store i64* null, i64** %_M_start, align 8, !dbg !4195
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data", %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* %this1, i32 0, i32 1, !dbg !4196
  store i64* null, i64** %_M_finish, align 8, !dbg !4196
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data", %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* %this1, i32 0, i32 2, !dbg !4197
  store i64* null, i64** %_M_end_of_storage, align 8, !dbg !4197
  ret void, !dbg !4198
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorIlEC2ERKS1_(%"class.std::allocator.0"* %this, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %0) unnamed_addr #4 comdat align 2 !dbg !4199 {
entry:
  %this.addr = alloca %"class.std::allocator.0"*, align 8
  %.addr = alloca %"class.std::allocator.0"*, align 8
  store %"class.std::allocator.0"* %this, %"class.std::allocator.0"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::allocator.0"** %this.addr, metadata !4200, metadata !DIExpression()), !dbg !4201
  store %"class.std::allocator.0"* %0, %"class.std::allocator.0"** %.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::allocator.0"** %.addr, metadata !4202, metadata !DIExpression()), !dbg !4203
  %this1 = load %"class.std::allocator.0"*, %"class.std::allocator.0"** %this.addr, align 8
  ret void, !dbg !4204
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIlEE37select_on_container_copy_constructionERKS0_(%"class.std::allocator.0"* noalias sret align 1 %agg.result, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %__rhs) #4 comdat align 2 !dbg !4205 {
entry:
  %result.ptr = alloca i8*, align 8
  %__rhs.addr = alloca %"class.std::allocator.0"*, align 8
  %0 = bitcast %"class.std::allocator.0"* %agg.result to i8*
  store i8* %0, i8** %result.ptr, align 8
  store %"class.std::allocator.0"* %__rhs, %"class.std::allocator.0"** %__rhs.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::allocator.0"** %__rhs.addr, metadata !4206, metadata !DIExpression()), !dbg !4207
  %1 = load %"class.std::allocator.0"*, %"class.std::allocator.0"** %__rhs.addr, align 8, !dbg !4208
  call void @_ZNSaIlEC2ERKS_(%"class.std::allocator.0"* %agg.result, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %1) #6, !dbg !4208
  ret void, !dbg !4209
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorIlED2Ev(%"class.std::allocator.0"* %this) unnamed_addr #4 comdat align 2 !dbg !4210 {
entry:
  %this.addr = alloca %"class.std::allocator.0"*, align 8
  store %"class.std::allocator.0"* %this, %"class.std::allocator.0"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::allocator.0"** %this.addr, metadata !4211, metadata !DIExpression()), !dbg !4212
  %this1 = load %"class.std::allocator.0"*, %"class.std::allocator.0"** %this.addr, align 8
  ret void, !dbg !4213
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i64 @_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_(i64 %__n, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %__a) #5 comdat align 2 !dbg !4214 {
entry:
  %__n.addr = alloca i64, align 8
  %__a.addr = alloca %"class.std::allocator.0"*, align 8
  %ref.tmp = alloca %"class.std::allocator.0", align 1
  store i64 %__n, i64* %__n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %__n.addr, metadata !4215, metadata !DIExpression()), !dbg !4216
  store %"class.std::allocator.0"* %__a, %"class.std::allocator.0"** %__a.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::allocator.0"** %__a.addr, metadata !4217, metadata !DIExpression()), !dbg !4218
  %0 = load i64, i64* %__n.addr, align 8, !dbg !4219
  %1 = load %"class.std::allocator.0"*, %"class.std::allocator.0"** %__a.addr, align 8, !dbg !4221
  call void @_ZNSaIlEC2ERKS_(%"class.std::allocator.0"* %ref.tmp, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %1) #6, !dbg !4222
  %call = call i64 @_ZNSt6vectorIlSaIlEE11_S_max_sizeERKS0_(%"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %ref.tmp) #6, !dbg !4223
  %cmp = icmp ugt i64 %0, %call, !dbg !4224
  call void @_ZNSaIlED2Ev(%"class.std::allocator.0"* %ref.tmp) #6, !dbg !4219
  br i1 %cmp, label %if.then, label %if.end, !dbg !4225

if.then:                                          ; preds = %entry
  call void @_ZSt20__throw_length_errorPKc(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5.6, i64 0, i64 0)) #19, !dbg !4226
  unreachable, !dbg !4226

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %__n.addr, align 8, !dbg !4227
  ret i64 %2, !dbg !4228
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIlSaIlEE21_M_default_initializeEm(%"class.std::vector"* %this, i64 %__n) #5 comdat align 2 !dbg !4229 {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  %__n.addr = alloca i64, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::vector"** %this.addr, metadata !4230, metadata !DIExpression()), !dbg !4231
  store i64 %__n, i64* %__n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %__n.addr, metadata !4232, metadata !DIExpression()), !dbg !4233
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*, !dbg !4234
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %0, i32 0, i32 0, !dbg !4234
  %1 = bitcast %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %_M_impl to %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"*, !dbg !4235
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data", %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* %1, i32 0, i32 0, !dbg !4236
  %2 = load i64*, i64** %_M_start, align 8, !dbg !4236
  %3 = load i64, i64* %__n.addr, align 8, !dbg !4237
  %4 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*, !dbg !4238
  %call = call nonnull align 1 dereferenceable(1) %"class.std::allocator.0"* @_ZNSt12_Vector_baseIlSaIlEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %4) #6, !dbg !4238
  %call2 = call i64* @_ZSt27__uninitialized_default_n_aIPlmlET_S1_T0_RSaIT1_E(i64* %2, i64 %3, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %call), !dbg !4239
  %5 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*, !dbg !4240
  %_M_impl3 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %5, i32 0, i32 0, !dbg !4240
  %6 = bitcast %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %_M_impl3 to %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"*, !dbg !4241
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data", %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* %6, i32 0, i32 1, !dbg !4242
  store i64* %call2, i64** %_M_finish, align 8, !dbg !4243
  ret void, !dbg !4244
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i64* @_ZSt27__uninitialized_default_n_aIPlmlET_S1_T0_RSaIT1_E(i64* %__first, i64 %__n, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %0) #5 comdat !dbg !4245 {
entry:
  %__first.addr = alloca i64*, align 8
  %__n.addr = alloca i64, align 8
  %.addr = alloca %"class.std::allocator.0"*, align 8
  store i64* %__first, i64** %__first.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %__first.addr, metadata !4250, metadata !DIExpression()), !dbg !4251
  store i64 %__n, i64* %__n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %__n.addr, metadata !4252, metadata !DIExpression()), !dbg !4253
  store %"class.std::allocator.0"* %0, %"class.std::allocator.0"** %.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::allocator.0"** %.addr, metadata !4254, metadata !DIExpression()), !dbg !4255
  %1 = load i64*, i64** %__first.addr, align 8, !dbg !4256
  %2 = load i64, i64* %__n.addr, align 8, !dbg !4257
  %call = call i64* @_ZSt25__uninitialized_default_nIPlmET_S1_T0_(i64* %1, i64 %2), !dbg !4258
  ret i64* %call, !dbg !4259
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i64* @_ZSt25__uninitialized_default_nIPlmET_S1_T0_(i64* %__first, i64 %__n) #5 comdat !dbg !4260 {
entry:
  %__first.addr = alloca i64*, align 8
  %__n.addr = alloca i64, align 8
  %__can_fill = alloca i8, align 1
  store i64* %__first, i64** %__first.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %__first.addr, metadata !4264, metadata !DIExpression()), !dbg !4265
  store i64 %__n, i64* %__n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %__n.addr, metadata !4266, metadata !DIExpression()), !dbg !4267
  call void @llvm.dbg.declare(metadata i8* %__can_fill, metadata !4268, metadata !DIExpression()), !dbg !4269
  store i8 1, i8* %__can_fill, align 1, !dbg !4269
  %0 = load i64*, i64** %__first.addr, align 8, !dbg !4270
  %1 = load i64, i64* %__n.addr, align 8, !dbg !4271
  %call = call i64* @_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPlmEET_S3_T0_(i64* %0, i64 %1), !dbg !4272
  ret i64* %call, !dbg !4273
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i64* @_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPlmEET_S3_T0_(i64* %__first, i64 %__n) #5 comdat align 2 !dbg !4274 {
entry:
  %__first.addr = alloca i64*, align 8
  %__n.addr = alloca i64, align 8
  %__val = alloca i64*, align 8
  store i64* %__first, i64** %__first.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %__first.addr, metadata !4279, metadata !DIExpression()), !dbg !4280
  store i64 %__n, i64* %__n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %__n.addr, metadata !4281, metadata !DIExpression()), !dbg !4282
  %0 = load i64, i64* %__n.addr, align 8, !dbg !4283
  %cmp = icmp ugt i64 %0, 0, !dbg !4285
  br i1 %cmp, label %if.then, label %if.end, !dbg !4286

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64** %__val, metadata !4287, metadata !DIExpression()), !dbg !4291
  %1 = load i64*, i64** %__first.addr, align 8, !dbg !4292
  %call = call i64* @_ZSt11__addressofIlEPT_RS0_(i64* nonnull align 8 dereferenceable(8) %1) #6, !dbg !4293
  store i64* %call, i64** %__val, align 8, !dbg !4291
  %2 = load i64*, i64** %__val, align 8, !dbg !4294
  call void @_ZSt10_ConstructIlJEEvPT_DpOT0_(i64* %2), !dbg !4295
  %3 = load i64*, i64** %__first.addr, align 8, !dbg !4296
  %incdec.ptr = getelementptr inbounds i64, i64* %3, i32 1, !dbg !4296
  store i64* %incdec.ptr, i64** %__first.addr, align 8, !dbg !4296
  %4 = load i64*, i64** %__first.addr, align 8, !dbg !4297
  %5 = load i64, i64* %__n.addr, align 8, !dbg !4298
  %sub = sub i64 %5, 1, !dbg !4299
  %6 = load i64*, i64** %__val, align 8, !dbg !4300
  %call1 = call i64* @_ZSt6fill_nIPlmlET_S1_T0_RKT1_(i64* %4, i64 %sub, i64* nonnull align 8 dereferenceable(8) %6), !dbg !4301
  store i64* %call1, i64** %__first.addr, align 8, !dbg !4302
  br label %if.end, !dbg !4303

if.end:                                           ; preds = %if.then, %entry
  %7 = load i64*, i64** %__first.addr, align 8, !dbg !4304
  ret i64* %7, !dbg !4305
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64* @_ZSt11__addressofIlEPT_RS0_(i64* nonnull align 8 dereferenceable(8) %__r) #4 comdat !dbg !4306 {
entry:
  %__r.addr = alloca i64*, align 8
  store i64* %__r, i64** %__r.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %__r.addr, metadata !4309, metadata !DIExpression()), !dbg !4310
  %0 = load i64*, i64** %__r.addr, align 8, !dbg !4311
  ret i64* %0, !dbg !4312
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZSt10_ConstructIlJEEvPT_DpOT0_(i64* %__p) #4 comdat !dbg !4313 {
entry:
  %__p.addr = alloca i64*, align 8
  store i64* %__p, i64** %__p.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %__p.addr, metadata !4318, metadata !DIExpression()), !dbg !4319
  %0 = load i64*, i64** %__p.addr, align 8, !dbg !4320
  %1 = bitcast i64* %0 to i8*, !dbg !4320
  %2 = bitcast i8* %1 to i64*, !dbg !4321
  store i64 0, i64* %2, align 8, !dbg !4321
  ret void, !dbg !4322
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i64* @_ZSt6fill_nIPlmlET_S1_T0_RKT1_(i64* %__first, i64 %__n, i64* nonnull align 8 dereferenceable(8) %__value) #5 comdat !dbg !4323 {
entry:
  %__first.addr = alloca i64*, align 8
  %__n.addr = alloca i64, align 8
  %__value.addr = alloca i64*, align 8
  %agg.tmp = alloca %"class.std::allocator.0", align 1
  %undef.agg.tmp = alloca %"class.std::allocator.0", align 1
  store i64* %__first, i64** %__first.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %__first.addr, metadata !4327, metadata !DIExpression()), !dbg !4328
  store i64 %__n, i64* %__n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %__n.addr, metadata !4329, metadata !DIExpression()), !dbg !4330
  store i64* %__value, i64** %__value.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %__value.addr, metadata !4331, metadata !DIExpression()), !dbg !4332
  %0 = load i64*, i64** %__first.addr, align 8, !dbg !4333
  %1 = load i64, i64* %__n.addr, align 8, !dbg !4334
  %call = call i64 @_ZSt17__size_to_integerm(i64 %1), !dbg !4335
  %2 = load i64*, i64** %__value.addr, align 8, !dbg !4336
  call void @_ZSt19__iterator_categoryIPlENSt15iterator_traitsIT_E17iterator_categoryERKS2_(i64** nonnull align 8 dereferenceable(8) %__first.addr), !dbg !4337
  %call1 = call i64* @_ZSt10__fill_n_aIPlmlET_S1_T0_RKT1_St26random_access_iterator_tag(i64* %0, i64 %call, i64* nonnull align 8 dereferenceable(8) %2), !dbg !4338
  ret i64* %call1, !dbg !4339
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @_ZSt17__size_to_integerm(i64 %__n) #4 comdat !dbg !4340 {
entry:
  %__n.addr = alloca i64, align 8
  store i64 %__n, i64* %__n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %__n.addr, metadata !4343, metadata !DIExpression()), !dbg !4344
  %0 = load i64, i64* %__n.addr, align 8, !dbg !4345
  ret i64 %0, !dbg !4346
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZSt19__iterator_categoryIPlENSt15iterator_traitsIT_E17iterator_categoryERKS2_(i64** nonnull align 8 dereferenceable(8) %0) #4 comdat !dbg !4347 {
entry:
  %.addr = alloca i64**, align 8
  store i64** %0, i64*** %.addr, align 8
  call void @llvm.dbg.declare(metadata i64*** %.addr, metadata !4353, metadata !DIExpression()), !dbg !4354
  ret void, !dbg !4355
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i64* @_ZSt10__fill_n_aIPlmlET_S1_T0_RKT1_St26random_access_iterator_tag(i64* %__first, i64 %__n, i64* nonnull align 8 dereferenceable(8) %__value) #5 comdat !dbg !4356 {
entry:
  %retval = alloca i64*, align 8
  %0 = alloca %"class.std::allocator.0", align 1
  %__first.addr = alloca i64*, align 8
  %__n.addr = alloca i64, align 8
  %__value.addr = alloca i64*, align 8
  store i64* %__first, i64** %__first.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %__first.addr, metadata !4361, metadata !DIExpression()), !dbg !4362
  store i64 %__n, i64* %__n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %__n.addr, metadata !4363, metadata !DIExpression()), !dbg !4364
  store i64* %__value, i64** %__value.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %__value.addr, metadata !4365, metadata !DIExpression()), !dbg !4366
  call void @llvm.dbg.declare(metadata %"class.std::allocator.0"* %0, metadata !4367, metadata !DIExpression()), !dbg !4368
  %1 = load i64, i64* %__n.addr, align 8, !dbg !4369
  %cmp = icmp ule i64 %1, 0, !dbg !4371
  br i1 %cmp, label %if.then, label %if.end, !dbg !4372

if.then:                                          ; preds = %entry
  %2 = load i64*, i64** %__first.addr, align 8, !dbg !4373
  store i64* %2, i64** %retval, align 8, !dbg !4374
  br label %return, !dbg !4374

if.end:                                           ; preds = %entry
  %3 = load i64*, i64** %__first.addr, align 8, !dbg !4375
  %4 = load i64*, i64** %__first.addr, align 8, !dbg !4376
  %5 = load i64, i64* %__n.addr, align 8, !dbg !4377
  %add.ptr = getelementptr inbounds i64, i64* %4, i64 %5, !dbg !4378
  %6 = load i64*, i64** %__value.addr, align 8, !dbg !4379
  call void @_ZSt8__fill_aIPllEvT_S1_RKT0_(i64* %3, i64* %add.ptr, i64* nonnull align 8 dereferenceable(8) %6), !dbg !4380
  %7 = load i64*, i64** %__first.addr, align 8, !dbg !4381
  %8 = load i64, i64* %__n.addr, align 8, !dbg !4382
  %add.ptr1 = getelementptr inbounds i64, i64* %7, i64 %8, !dbg !4383
  store i64* %add.ptr1, i64** %retval, align 8, !dbg !4384
  br label %return, !dbg !4384

return:                                           ; preds = %if.end, %if.then
  %9 = load i64*, i64** %retval, align 8, !dbg !4385
  ret i64* %9, !dbg !4385
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZSt8__fill_aIPllEvT_S1_RKT0_(i64* %__first, i64* %__last, i64* nonnull align 8 dereferenceable(8) %__value) #5 comdat !dbg !4386 {
entry:
  %__first.addr = alloca i64*, align 8
  %__last.addr = alloca i64*, align 8
  %__value.addr = alloca i64*, align 8
  store i64* %__first, i64** %__first.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %__first.addr, metadata !4391, metadata !DIExpression()), !dbg !4392
  store i64* %__last, i64** %__last.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %__last.addr, metadata !4393, metadata !DIExpression()), !dbg !4394
  store i64* %__value, i64** %__value.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %__value.addr, metadata !4395, metadata !DIExpression()), !dbg !4396
  %0 = load i64*, i64** %__first.addr, align 8, !dbg !4397
  %1 = load i64*, i64** %__last.addr, align 8, !dbg !4398
  %2 = load i64*, i64** %__value.addr, align 8, !dbg !4399
  call void @_ZSt9__fill_a1IPllEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_(i64* %0, i64* %1, i64* nonnull align 8 dereferenceable(8) %2), !dbg !4400
  ret void, !dbg !4401
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZSt9__fill_a1IPllEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_(i64* %__first, i64* %__last, i64* nonnull align 8 dereferenceable(8) %__value) #4 comdat !dbg !4402 {
entry:
  %__first.addr = alloca i64*, align 8
  %__last.addr = alloca i64*, align 8
  %__value.addr = alloca i64*, align 8
  %__tmp = alloca i64, align 8
  store i64* %__first, i64** %__first.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %__first.addr, metadata !4409, metadata !DIExpression()), !dbg !4410
  store i64* %__last, i64** %__last.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %__last.addr, metadata !4411, metadata !DIExpression()), !dbg !4412
  store i64* %__value, i64** %__value.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %__value.addr, metadata !4413, metadata !DIExpression()), !dbg !4414
  call void @llvm.dbg.declare(metadata i64* %__tmp, metadata !4415, metadata !DIExpression()), !dbg !4416
  %0 = load i64*, i64** %__value.addr, align 8, !dbg !4417
  %1 = load i64, i64* %0, align 8, !dbg !4417
  store i64 %1, i64* %__tmp, align 8, !dbg !4416
  br label %for.cond, !dbg !4418

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i64*, i64** %__first.addr, align 8, !dbg !4419
  %3 = load i64*, i64** %__last.addr, align 8, !dbg !4422
  %cmp = icmp ne i64* %2, %3, !dbg !4423
  br i1 %cmp, label %for.body, label %for.end, !dbg !4424

for.body:                                         ; preds = %for.cond
  %4 = load i64, i64* %__tmp, align 8, !dbg !4425
  %5 = load i64*, i64** %__first.addr, align 8, !dbg !4426
  store i64 %4, i64* %5, align 8, !dbg !4427
  br label %for.inc, !dbg !4428

for.inc:                                          ; preds = %for.body
  %6 = load i64*, i64** %__first.addr, align 8, !dbg !4429
  %incdec.ptr = getelementptr inbounds i64, i64* %6, i32 1, !dbg !4429
  store i64* %incdec.ptr, i64** %__first.addr, align 8, !dbg !4429
  br label %for.cond, !dbg !4430, !llvm.loop !4431

for.end:                                          ; preds = %for.cond
  ret void, !dbg !4433
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @_ZNSt6vectorIlSaIlEE11_S_max_sizeERKS0_(%"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %__a) #4 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !4434 {
entry:
  %__a.addr = alloca %"class.std::allocator.0"*, align 8
  %__diffmax = alloca i64, align 8
  %__allocmax = alloca i64, align 8
  store %"class.std::allocator.0"* %__a, %"class.std::allocator.0"** %__a.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::allocator.0"** %__a.addr, metadata !4435, metadata !DIExpression()), !dbg !4436
  call void @llvm.dbg.declare(metadata i64* %__diffmax, metadata !4437, metadata !DIExpression()), !dbg !4439
  store i64 1152921504606846975, i64* %__diffmax, align 8, !dbg !4439
  call void @llvm.dbg.declare(metadata i64* %__allocmax, metadata !4440, metadata !DIExpression()), !dbg !4441
  %0 = load %"class.std::allocator.0"*, %"class.std::allocator.0"** %__a.addr, align 8, !dbg !4442
  %call = call i64 @_ZNSt16allocator_traitsISaIlEE8max_sizeERKS0_(%"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %0) #6, !dbg !4443
  store i64 %call, i64* %__allocmax, align 8, !dbg !4441
  %call1 = invoke nonnull align 8 dereferenceable(8) i64* @_ZSt3minImERKT_S2_S2_(i64* nonnull align 8 dereferenceable(8) %__diffmax, i64* nonnull align 8 dereferenceable(8) %__allocmax)
          to label %invoke.cont unwind label %terminate.lpad, !dbg !4444

invoke.cont:                                      ; preds = %entry
  %1 = load i64, i64* %call1, align 8, !dbg !4444
  ret i64 %1, !dbg !4445

terminate.lpad:                                   ; preds = %entry
  %2 = landingpad { i8*, i32 }
          catch i8* null, !dbg !4444
  %3 = extractvalue { i8*, i32 } %2, 0, !dbg !4444
  call void @__clang_call_terminate(i8* %3) #14, !dbg !4444
  unreachable, !dbg !4444
}

; Function Attrs: noreturn
declare dso_local void @_ZSt20__throw_length_errorPKc(i8*) #11

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @_ZNSt16allocator_traitsISaIlEE8max_sizeERKS0_(%"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %__a) #4 comdat align 2 !dbg !4446 {
entry:
  %__a.addr = alloca %"class.std::allocator.0"*, align 8
  store %"class.std::allocator.0"* %__a, %"class.std::allocator.0"** %__a.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::allocator.0"** %__a.addr, metadata !4447, metadata !DIExpression()), !dbg !4448
  %0 = load %"class.std::allocator.0"*, %"class.std::allocator.0"** %__a.addr, align 8, !dbg !4449
  %1 = bitcast %"class.std::allocator.0"* %0 to %"class.std::allocator.0"*, !dbg !4449
  %call = call i64 @_ZNK9__gnu_cxx13new_allocatorIlE8max_sizeEv(%"class.std::allocator.0"* %1) #6, !dbg !4450
  ret i64 %call, !dbg !4451
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) i64* @_ZSt3minImERKT_S2_S2_(i64* nonnull align 8 dereferenceable(8) %__a, i64* nonnull align 8 dereferenceable(8) %__b) #4 comdat !dbg !4452 {
entry:
  %retval = alloca i64*, align 8
  %__a.addr = alloca i64*, align 8
  %__b.addr = alloca i64*, align 8
  store i64* %__a, i64** %__a.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %__a.addr, metadata !4457, metadata !DIExpression()), !dbg !4458
  store i64* %__b, i64** %__b.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %__b.addr, metadata !4459, metadata !DIExpression()), !dbg !4460
  %0 = load i64*, i64** %__b.addr, align 8, !dbg !4461
  %1 = load i64, i64* %0, align 8, !dbg !4461
  %2 = load i64*, i64** %__a.addr, align 8, !dbg !4463
  %3 = load i64, i64* %2, align 8, !dbg !4463
  %cmp = icmp ult i64 %1, %3, !dbg !4464
  br i1 %cmp, label %if.then, label %if.end, !dbg !4465

if.then:                                          ; preds = %entry
  %4 = load i64*, i64** %__b.addr, align 8, !dbg !4466
  store i64* %4, i64** %retval, align 8, !dbg !4467
  br label %return, !dbg !4467

if.end:                                           ; preds = %entry
  %5 = load i64*, i64** %__a.addr, align 8, !dbg !4468
  store i64* %5, i64** %retval, align 8, !dbg !4469
  br label %return, !dbg !4469

return:                                           ; preds = %if.end, %if.then
  %6 = load i64*, i64** %retval, align 8, !dbg !4470
  ret i64* %6, !dbg !4470
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @_ZNK9__gnu_cxx13new_allocatorIlE8max_sizeEv(%"class.std::allocator.0"* %this) #4 comdat align 2 !dbg !4471 {
entry:
  %this.addr = alloca %"class.std::allocator.0"*, align 8
  store %"class.std::allocator.0"* %this, %"class.std::allocator.0"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::allocator.0"** %this.addr, metadata !4472, metadata !DIExpression()), !dbg !4473
  %this1 = load %"class.std::allocator.0"*, %"class.std::allocator.0"** %this.addr, align 8
  %call = call i64 @_ZNK9__gnu_cxx13new_allocatorIlE11_M_max_sizeEv(%"class.std::allocator.0"* %this1) #6, !dbg !4474
  ret i64 %call, !dbg !4475
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorIlEC2Ev(%"class.std::allocator.0"* %this) unnamed_addr #4 comdat align 2 !dbg !4476 {
entry:
  %this.addr = alloca %"class.std::allocator.0"*, align 8
  store %"class.std::allocator.0"* %this, %"class.std::allocator.0"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::allocator.0"** %this.addr, metadata !4477, metadata !DIExpression()), !dbg !4478
  %this1 = load %"class.std::allocator.0"*, %"class.std::allocator.0"** %this.addr, align 8
  ret void, !dbg !4479
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow12TensorBufferC2EPv(%"class.tensorflow::TensorBuffer"* %this, i8* %data_ptr) unnamed_addr #5 comdat align 2 !dbg !4480 {
entry:
  %this.addr = alloca %"class.tensorflow::TensorBuffer"*, align 8
  %data_ptr.addr = alloca i8*, align 8
  store %"class.tensorflow::TensorBuffer"* %this, %"class.tensorflow::TensorBuffer"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::TensorBuffer"** %this.addr, metadata !4485, metadata !DIExpression()), !dbg !4486
  store i8* %data_ptr, i8** %data_ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data_ptr.addr, metadata !4487, metadata !DIExpression()), !dbg !4488
  %this1 = load %"class.tensorflow::TensorBuffer"*, %"class.tensorflow::TensorBuffer"** %this.addr, align 8
  %0 = bitcast %"class.tensorflow::TensorBuffer"* %this1 to %"class.tensorflow::core::RefCounted"*, !dbg !4489
  call void @_ZN10tensorflow4core10RefCountedC2Ev(%"class.tensorflow::core::RefCounted"* %0), !dbg !4490
  %1 = bitcast %"class.tensorflow::TensorBuffer"* %this1 to i32 (...)***, !dbg !4489
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [10 x i8*] }, { [10 x i8*] }* @_ZTVN10tensorflow12TensorBufferE, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %1, align 8, !dbg !4489
  %data_ = getelementptr inbounds %"class.tensorflow::TensorBuffer", %"class.tensorflow::TensorBuffer"* %this1, i32 0, i32 1, !dbg !4491
  %2 = load i8*, i8** %data_ptr.addr, align 8, !dbg !4492
  store i8* %2, i8** %data_, align 8, !dbg !4491
  ret void, !dbg !4493
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN16TF_ManagedBufferD2Ev(%class.TF_ManagedBuffer* %this) unnamed_addr #4 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !4494 {
entry:
  %this.addr = alloca %class.TF_ManagedBuffer*, align 8
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  store %class.TF_ManagedBuffer* %this, %class.TF_ManagedBuffer** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %class.TF_ManagedBuffer** %this.addr, metadata !4495, metadata !DIExpression()), !dbg !4496
  %this1 = load %class.TF_ManagedBuffer*, %class.TF_ManagedBuffer** %this.addr, align 8
  %0 = bitcast %class.TF_ManagedBuffer* %this1 to i32 (...)***, !dbg !4497
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [10 x i8*] }, { [10 x i8*] }* @_ZTV16TF_ManagedBuffer, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %0, align 8, !dbg !4497
  %deallocator_ = getelementptr inbounds %class.TF_ManagedBuffer, %class.TF_ManagedBuffer* %this1, i32 0, i32 2, !dbg !4498
  %1 = load void (i8*, i64, i8*)*, void (i8*, i64, i8*)** %deallocator_, align 8, !dbg !4498
  %2 = bitcast %class.TF_ManagedBuffer* %this1 to %"class.tensorflow::TensorBuffer"*, !dbg !4500
  %call = invoke i8* @_ZNK10tensorflow12TensorBuffer4dataEv(%"class.tensorflow::TensorBuffer"* %2)
          to label %invoke.cont unwind label %lpad, !dbg !4500

invoke.cont:                                      ; preds = %entry
  %len_ = getelementptr inbounds %class.TF_ManagedBuffer, %class.TF_ManagedBuffer* %this1, i32 0, i32 1, !dbg !4501
  %3 = load i64, i64* %len_, align 8, !dbg !4501
  %deallocator_arg_ = getelementptr inbounds %class.TF_ManagedBuffer, %class.TF_ManagedBuffer* %this1, i32 0, i32 3, !dbg !4502
  %4 = load i8*, i8** %deallocator_arg_, align 8, !dbg !4502
  invoke void %1(i8* %call, i64 %3, i8* %4)
          to label %invoke.cont2 unwind label %lpad, !dbg !4503

invoke.cont2:                                     ; preds = %invoke.cont
  %5 = bitcast %class.TF_ManagedBuffer* %this1 to %"class.tensorflow::TensorBuffer"*, !dbg !4504
  call void @_ZN10tensorflow12TensorBufferD2Ev(%"class.tensorflow::TensorBuffer"* %5) #6, !dbg !4504
  ret void, !dbg !4505

lpad:                                             ; preds = %invoke.cont, %entry
  %6 = landingpad { i8*, i32 }
          catch i8* null, !dbg !4504
  %7 = extractvalue { i8*, i32 } %6, 0, !dbg !4504
  store i8* %7, i8** %exn.slot, align 8, !dbg !4504
  %8 = extractvalue { i8*, i32 } %6, 1, !dbg !4504
  store i32 %8, i32* %ehselector.slot, align 4, !dbg !4504
  %9 = bitcast %class.TF_ManagedBuffer* %this1 to %"class.tensorflow::TensorBuffer"*, !dbg !4504
  call void @_ZN10tensorflow12TensorBufferD2Ev(%"class.tensorflow::TensorBuffer"* %9) #6, !dbg !4504
  br label %terminate.handler, !dbg !4504

terminate.handler:                                ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8, !dbg !4504
  call void @__clang_call_terminate(i8* %exn) #14, !dbg !4504
  unreachable, !dbg !4504
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN16TF_ManagedBufferD0Ev(%class.TF_ManagedBuffer* %this) unnamed_addr #4 comdat align 2 !dbg !4506 {
entry:
  %this.addr = alloca %class.TF_ManagedBuffer*, align 8
  store %class.TF_ManagedBuffer* %this, %class.TF_ManagedBuffer** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %class.TF_ManagedBuffer** %this.addr, metadata !4507, metadata !DIExpression()), !dbg !4508
  %this1 = load %class.TF_ManagedBuffer*, %class.TF_ManagedBuffer** %this.addr, align 8
  call void @_ZN16TF_ManagedBufferD2Ev(%class.TF_ManagedBuffer* %this1) #6, !dbg !4509
  %0 = bitcast %class.TF_ManagedBuffer* %this1 to i8*, !dbg !4509
  call void @_ZdlPv(i8* %0) #17, !dbg !4509
  ret void, !dbg !4510
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @_ZNK16TF_ManagedBuffer4sizeEv(%class.TF_ManagedBuffer* %this) unnamed_addr #4 comdat align 2 !dbg !4511 {
entry:
  %this.addr = alloca %class.TF_ManagedBuffer*, align 8
  store %class.TF_ManagedBuffer* %this, %class.TF_ManagedBuffer** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %class.TF_ManagedBuffer** %this.addr, metadata !4512, metadata !DIExpression()), !dbg !4514
  %this1 = load %class.TF_ManagedBuffer*, %class.TF_ManagedBuffer** %this.addr, align 8
  %len_ = getelementptr inbounds %class.TF_ManagedBuffer, %class.TF_ManagedBuffer* %this1, i32 0, i32 1, !dbg !4515
  %0 = load i64, i64* %len_, align 8, !dbg !4515
  ret i64 %0, !dbg !4516
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %"class.tensorflow::TensorBuffer"* @_ZN16TF_ManagedBuffer11root_bufferEv(%class.TF_ManagedBuffer* %this) unnamed_addr #4 comdat align 2 !dbg !4517 {
entry:
  %this.addr = alloca %class.TF_ManagedBuffer*, align 8
  store %class.TF_ManagedBuffer* %this, %class.TF_ManagedBuffer** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %class.TF_ManagedBuffer** %this.addr, metadata !4518, metadata !DIExpression()), !dbg !4519
  %this1 = load %class.TF_ManagedBuffer*, %class.TF_ManagedBuffer** %this.addr, align 8
  %0 = bitcast %class.TF_ManagedBuffer* %this1 to %"class.tensorflow::TensorBuffer"*, !dbg !4520
  ret %"class.tensorflow::TensorBuffer"* %0, !dbg !4521
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNK16TF_ManagedBuffer25FillAllocationDescriptionEPN10tensorflow21AllocationDescriptionE(%class.TF_ManagedBuffer* %this, %"class.tensorflow::AllocationDescription"* %0) unnamed_addr #4 comdat align 2 !dbg !4522 {
entry:
  %this.addr = alloca %class.TF_ManagedBuffer*, align 8
  %.addr = alloca %"class.tensorflow::AllocationDescription"*, align 8
  store %class.TF_ManagedBuffer* %this, %class.TF_ManagedBuffer** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %class.TF_ManagedBuffer** %this.addr, metadata !4523, metadata !DIExpression()), !dbg !4524
  store %"class.tensorflow::AllocationDescription"* %0, %"class.tensorflow::AllocationDescription"** %.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::AllocationDescription"** %.addr, metadata !4525, metadata !DIExpression()), !dbg !4526
  %this1 = load %class.TF_ManagedBuffer*, %class.TF_ManagedBuffer** %this.addr, align 8
  ret void, !dbg !4527
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local zeroext i1 @_ZNK16TF_ManagedBuffer10OwnsMemoryEv(%class.TF_ManagedBuffer* %this) unnamed_addr #4 comdat align 2 !dbg !4528 {
entry:
  %this.addr = alloca %class.TF_ManagedBuffer*, align 8
  store %class.TF_ManagedBuffer* %this, %class.TF_ManagedBuffer** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %class.TF_ManagedBuffer** %this.addr, metadata !4529, metadata !DIExpression()), !dbg !4530
  %this1 = load %class.TF_ManagedBuffer*, %class.TF_ManagedBuffer** %this.addr, align 8
  %owns_memory_ = getelementptr inbounds %class.TF_ManagedBuffer, %class.TF_ManagedBuffer* %this1, i32 0, i32 4, !dbg !4531
  %0 = load i8, i8* %owns_memory_, align 8, !dbg !4531
  %tobool = trunc i8 %0 to i1, !dbg !4531
  ret i1 %tobool, !dbg !4532
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i32 @_ZNK10tensorflow12TensorBuffer13GetMemoryTypeEv(%"class.tensorflow::TensorBuffer"* %this) unnamed_addr #4 comdat align 2 !dbg !4533 {
entry:
  %this.addr = alloca %"class.tensorflow::TensorBuffer"*, align 8
  store %"class.tensorflow::TensorBuffer"* %this, %"class.tensorflow::TensorBuffer"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::TensorBuffer"** %this.addr, metadata !4539, metadata !DIExpression()), !dbg !4541
  %this1 = load %"class.tensorflow::TensorBuffer"*, %"class.tensorflow::TensorBuffer"** %this.addr, align 8
  ret i32 0, !dbg !4542
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i8* @_ZNK10tensorflow12TensorBuffer4dataEv(%"class.tensorflow::TensorBuffer"* %this) #4 comdat align 2 !dbg !4543 {
entry:
  %this.addr = alloca %"class.tensorflow::TensorBuffer"*, align 8
  store %"class.tensorflow::TensorBuffer"* %this, %"class.tensorflow::TensorBuffer"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::TensorBuffer"** %this.addr, metadata !4547, metadata !DIExpression()), !dbg !4548
  %this1 = load %"class.tensorflow::TensorBuffer"*, %"class.tensorflow::TensorBuffer"** %this.addr, align 8
  %data_ = getelementptr inbounds %"class.tensorflow::TensorBuffer", %"class.tensorflow::TensorBuffer"* %this1, i32 0, i32 1, !dbg !4549
  %0 = load i8*, i8** %data_, align 8, !dbg !4549
  ret i8* %0, !dbg !4550
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow12TensorBufferD2Ev(%"class.tensorflow::TensorBuffer"* %this) unnamed_addr #4 comdat align 2 !dbg !4551 {
entry:
  %this.addr = alloca %"class.tensorflow::TensorBuffer"*, align 8
  store %"class.tensorflow::TensorBuffer"* %this, %"class.tensorflow::TensorBuffer"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::TensorBuffer"** %this.addr, metadata !4555, metadata !DIExpression()), !dbg !4556
  %this1 = load %"class.tensorflow::TensorBuffer"*, %"class.tensorflow::TensorBuffer"** %this.addr, align 8
  %0 = bitcast %"class.tensorflow::TensorBuffer"* %this1 to %"class.tensorflow::core::RefCounted"*, !dbg !4557
  call void @_ZN10tensorflow4core10RefCountedD2Ev(%"class.tensorflow::core::RefCounted"* %0) #6, !dbg !4557
  ret void, !dbg !4559
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow4core10RefCountedD2Ev(%"class.tensorflow::core::RefCounted"* %this) unnamed_addr #4 comdat align 2 !dbg !4560 {
entry:
  %this.addr = alloca %"class.tensorflow::core::RefCounted"*, align 8
  store %"class.tensorflow::core::RefCounted"* %this, %"class.tensorflow::core::RefCounted"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::core::RefCounted"** %this.addr, metadata !4561, metadata !DIExpression()), !dbg !4563
  %this1 = load %"class.tensorflow::core::RefCounted"*, %"class.tensorflow::core::RefCounted"** %this.addr, align 8
  ret void, !dbg !4564
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow4core10RefCountedC2Ev(%"class.tensorflow::core::RefCounted"* %this) unnamed_addr #4 comdat align 2 !dbg !4565 {
entry:
  %this.addr = alloca %"class.tensorflow::core::RefCounted"*, align 8
  store %"class.tensorflow::core::RefCounted"* %this, %"class.tensorflow::core::RefCounted"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::core::RefCounted"** %this.addr, metadata !4566, metadata !DIExpression()), !dbg !4567
  %this1 = load %"class.tensorflow::core::RefCounted"*, %"class.tensorflow::core::RefCounted"** %this.addr, align 8
  %0 = bitcast %"class.tensorflow::core::RefCounted"* %this1 to i32 (...)***, !dbg !4568
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [4 x i8*] }, { [4 x i8*] }* @_ZTVN10tensorflow4core10RefCountedE, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %0, align 8, !dbg !4568
  %ref_count_ = getelementptr inbounds %"class.tensorflow::core::RefCounted", %"class.tensorflow::core::RefCounted"* %this1, i32 0, i32 1, !dbg !4569
  call void @_ZNSt6atomicImEC2Em(%"struct.std::atomic"* %ref_count_, i64 1) #6, !dbg !4569
  ret void, !dbg !4570
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt6atomicImEC2Em(%"struct.std::atomic"* %this, i64 %__i) unnamed_addr #4 comdat align 2 !dbg !4571 {
entry:
  %this.addr = alloca %"struct.std::atomic"*, align 8
  %__i.addr = alloca i64, align 8
  store %"struct.std::atomic"* %this, %"struct.std::atomic"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::atomic"** %this.addr, metadata !4572, metadata !DIExpression()), !dbg !4574
  store i64 %__i, i64* %__i.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %__i.addr, metadata !4575, metadata !DIExpression()), !dbg !4576
  %this1 = load %"struct.std::atomic"*, %"struct.std::atomic"** %this.addr, align 8
  %0 = bitcast %"struct.std::atomic"* %this1 to %"struct.std::__atomic_base"*, !dbg !4577
  %1 = load i64, i64* %__i.addr, align 8, !dbg !4578
  call void @_ZNSt13__atomic_baseImEC2Em(%"struct.std::__atomic_base"* %0, i64 %1) #6, !dbg !4579
  ret void, !dbg !4580
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt13__atomic_baseImEC2Em(%"struct.std::__atomic_base"* %this, i64 %__i) unnamed_addr #4 comdat align 2 !dbg !4581 {
entry:
  %this.addr = alloca %"struct.std::__atomic_base"*, align 8
  %__i.addr = alloca i64, align 8
  store %"struct.std::__atomic_base"* %this, %"struct.std::__atomic_base"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::__atomic_base"** %this.addr, metadata !4582, metadata !DIExpression()), !dbg !4583
  store i64 %__i, i64* %__i.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %__i.addr, metadata !4584, metadata !DIExpression()), !dbg !4585
  %this1 = load %"struct.std::__atomic_base"*, %"struct.std::__atomic_base"** %this.addr, align 8
  %_M_i = getelementptr inbounds %"struct.std::__atomic_base", %"struct.std::__atomic_base"* %this1, i32 0, i32 0, !dbg !4586
  %0 = load i64, i64* %__i.addr, align 8, !dbg !4587
  store i64 %0, i64* %_M_i, align 8, !dbg !4586
  ret void, !dbg !4588
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow4core10RefCountedD0Ev(%"class.tensorflow::core::RefCounted"* %this) unnamed_addr #4 comdat align 2 !dbg !4589 {
entry:
  %this.addr = alloca %"class.tensorflow::core::RefCounted"*, align 8
  store %"class.tensorflow::core::RefCounted"* %this, %"class.tensorflow::core::RefCounted"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::core::RefCounted"** %this.addr, metadata !4590, metadata !DIExpression()), !dbg !4591
  %this1 = load %"class.tensorflow::core::RefCounted"*, %"class.tensorflow::core::RefCounted"** %this.addr, align 8
  call void @_ZN10tensorflow4core10RefCountedD2Ev(%"class.tensorflow::core::RefCounted"* %this1) #6, !dbg !4592
  %0 = bitcast %"class.tensorflow::core::RefCounted"* %this1 to i8*, !dbg !4592
  call void @_ZdlPv(i8* %0) #17, !dbg !4592
  ret void, !dbg !4592
}

; Function Attrs: noinline optnone uwtable
define dso_local %struct.TF_Tensor* @TF_NewTensor(i32 %dtype, i64* %dims, i32 %num_dims, i8* %data, i64 %len, void (i8*, i64, i8*)* %deallocator, i8* %deallocator_arg) #5 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !4593 {
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
  call void @llvm.dbg.declare(metadata i32* %dtype.addr, metadata !4596, metadata !DIExpression()), !dbg !4597
  store i64* %dims, i64** %dims.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %dims.addr, metadata !4598, metadata !DIExpression()), !dbg !4599
  store i32 %num_dims, i32* %num_dims.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %num_dims.addr, metadata !4600, metadata !DIExpression()), !dbg !4601
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !4602, metadata !DIExpression()), !dbg !4603
  store i64 %len, i64* %len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !4604, metadata !DIExpression()), !dbg !4605
  store void (i8*, i64, i8*)* %deallocator, void (i8*, i64, i8*)** %deallocator.addr, align 8
  call void @llvm.dbg.declare(metadata void (i8*, i64, i8*)** %deallocator.addr, metadata !4606, metadata !DIExpression()), !dbg !4607
  store i8* %deallocator_arg, i8** %deallocator_arg.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %deallocator_arg.addr, metadata !4608, metadata !DIExpression()), !dbg !4609
  call void @llvm.dbg.declare(metadata %class.TF_ManagedBuffer** %buf, metadata !4610, metadata !DIExpression()), !dbg !4611
  store %class.TF_ManagedBuffer* null, %class.TF_ManagedBuffer** %buf, align 8, !dbg !4611
  %0 = load i32, i32* %dtype.addr, align 4, !dbg !4612
  %cmp = icmp ne i32 %0, 7, !dbg !4614
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !4615

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %dtype.addr, align 4, !dbg !4616
  %cmp1 = icmp ne i32 %1, 20, !dbg !4617
  br i1 %cmp1, label %land.lhs.true2, label %land.end, !dbg !4618

land.lhs.true2:                                   ; preds = %land.lhs.true
  %2 = load i32, i32* %dtype.addr, align 4, !dbg !4619
  %call = call zeroext i1 @_ZN10tensorflow20DataTypeCanUseMemcpyE8DataType(i32 %2), !dbg !4620
  br i1 %call, label %land.rhs, label %land.end, !dbg !4621

land.rhs:                                         ; preds = %land.lhs.true2
  %3 = load i8*, i8** %data.addr, align 8, !dbg !4622
  %4 = ptrtoint i8* %3 to i64, !dbg !4623
  store i32 1, i32* %ref.tmp, align 4, !dbg !4624
  store i32 64, i32* %ref.tmp3, align 4, !dbg !4625
  %call4 = call nonnull align 4 dereferenceable(4) i32* @_ZSt3maxIiERKT_S2_S2_(i32* nonnull align 4 dereferenceable(4) %ref.tmp, i32* nonnull align 4 dereferenceable(4) %ref.tmp3), !dbg !4626
  %5 = load i32, i32* %call4, align 4, !dbg !4626
  %conv = sext i32 %5 to i64, !dbg !4626
  call void @klee_div_zero_check(i64 %conv), !dbg !4627
  %rem = srem i64 %4, %conv, !dbg !4627, !klee.check.div !4628
  %cmp5 = icmp ne i64 %rem, 0, !dbg !4629
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true2, %land.lhs.true, %entry
  %6 = phi i1 [ false, %land.lhs.true2 ], [ false, %land.lhs.true ], [ false, %entry ], [ %cmp5, %land.rhs ], !dbg !4630
  br i1 %6, label %if.then, label %if.else, !dbg !4631

if.then:                                          ; preds = %land.end
  %call6 = call noalias nonnull i8* @_Znwm(i64 56) #16, !dbg !4632, !heapallocsite !3022
  %7 = bitcast i8* %call6 to %class.TF_ManagedBuffer*, !dbg !4632
  %8 = load i64, i64* %len.addr, align 8, !dbg !4634
  %call7 = invoke i8* @_ZN10tensorflow15allocate_tensorEPKcm(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1.9, i64 0, i64 0), i64 %8)
          to label %invoke.cont unwind label %lpad, !dbg !4635

invoke.cont:                                      ; preds = %if.then
  %9 = load i64, i64* %len.addr, align 8, !dbg !4636
  invoke void @_ZN16TF_ManagedBufferC2EPvmPFvS0_mS0_ES0_b(%class.TF_ManagedBuffer* %7, i8* %call7, i64 %9, void (i8*, i64, i8*)* @_ZN10tensorflow17deallocate_bufferEPvmS0_, i8* null, i1 zeroext true)
          to label %invoke.cont8 unwind label %lpad, !dbg !4637

invoke.cont8:                                     ; preds = %invoke.cont
  store %class.TF_ManagedBuffer* %7, %class.TF_ManagedBuffer** %buf, align 8, !dbg !4638
  %10 = load %class.TF_ManagedBuffer*, %class.TF_ManagedBuffer** %buf, align 8, !dbg !4639
  %11 = bitcast %class.TF_ManagedBuffer* %10 to %"class.tensorflow::TensorBuffer"*, !dbg !4640
  %call9 = call i8* @_ZNK10tensorflow12TensorBuffer4dataEv(%"class.tensorflow::TensorBuffer"* %11), !dbg !4640
  %12 = load i8*, i8** %data.addr, align 8, !dbg !4641
  %13 = load i64, i64* %len.addr, align 8, !dbg !4642
  %14 = call i8* @memcpy(i8* %call9, i8* %12, i64 %13), !dbg !4643
  %15 = load void (i8*, i64, i8*)*, void (i8*, i64, i8*)** %deallocator.addr, align 8, !dbg !4644
  %16 = load i8*, i8** %data.addr, align 8, !dbg !4645
  %17 = load i64, i64* %len.addr, align 8, !dbg !4646
  %18 = load i8*, i8** %deallocator_arg.addr, align 8, !dbg !4647
  call void %15(i8* %16, i64 %17, i8* %18), !dbg !4644
  br label %if.end, !dbg !4648

lpad:                                             ; preds = %invoke.cont, %if.then
  %19 = landingpad { i8*, i32 }
          cleanup, !dbg !4649
  %20 = extractvalue { i8*, i32 } %19, 0, !dbg !4649
  store i8* %20, i8** %exn.slot, align 8, !dbg !4649
  %21 = extractvalue { i8*, i32 } %19, 1, !dbg !4649
  store i32 %21, i32* %ehselector.slot, align 4, !dbg !4649
  call void @_ZdlPv(i8* %call6) #17, !dbg !4632
  br label %eh.resume, !dbg !4632

if.else:                                          ; preds = %land.end
  %call10 = call noalias nonnull i8* @_Znwm(i64 56) #16, !dbg !4650, !heapallocsite !3022
  %22 = bitcast i8* %call10 to %class.TF_ManagedBuffer*, !dbg !4650
  %23 = load i8*, i8** %data.addr, align 8, !dbg !4652
  %24 = load i64, i64* %len.addr, align 8, !dbg !4653
  %25 = load void (i8*, i64, i8*)*, void (i8*, i64, i8*)** %deallocator.addr, align 8, !dbg !4654
  %26 = load i8*, i8** %deallocator_arg.addr, align 8, !dbg !4655
  invoke void @_ZN16TF_ManagedBufferC2EPvmPFvS0_mS0_ES0_b(%class.TF_ManagedBuffer* %22, i8* %23, i64 %24, void (i8*, i64, i8*)* %25, i8* %26, i1 zeroext false)
          to label %invoke.cont12 unwind label %lpad11, !dbg !4656

invoke.cont12:                                    ; preds = %if.else
  store %class.TF_ManagedBuffer* %22, %class.TF_ManagedBuffer** %buf, align 8, !dbg !4657
  br label %if.end

lpad11:                                           ; preds = %if.else
  %27 = landingpad { i8*, i32 }
          cleanup, !dbg !4658
  %28 = extractvalue { i8*, i32 } %27, 0, !dbg !4658
  store i8* %28, i8** %exn.slot, align 8, !dbg !4658
  %29 = extractvalue { i8*, i32 } %27, 1, !dbg !4658
  store i32 %29, i32* %ehselector.slot, align 4, !dbg !4658
  call void @_ZdlPv(i8* %call10) #17, !dbg !4650
  br label %eh.resume, !dbg !4650

if.end:                                           ; preds = %invoke.cont12, %invoke.cont8
  %30 = load %class.TF_ManagedBuffer*, %class.TF_ManagedBuffer** %buf, align 8, !dbg !4659
  %31 = load i32, i32* %dtype.addr, align 4, !dbg !4660
  %32 = load i64*, i64** %dims.addr, align 8, !dbg !4661
  %33 = load i32, i32* %num_dims.addr, align 4, !dbg !4662
  %34 = load i64, i64* %len.addr, align 8, !dbg !4663
  %call13 = call %struct.TF_Tensor* @_ZN12_GLOBAL__N_112CreateTensorEP16TF_ManagedBuffer11TF_DataTypePKlim(%class.TF_ManagedBuffer* %30, i32 %31, i64* %32, i32 %33, i64 %34), !dbg !4664
  ret %struct.TF_Tensor* %call13, !dbg !4665

eh.resume:                                        ; preds = %lpad11, %lpad
  %exn = load i8*, i8** %exn.slot, align 8, !dbg !4632
  %sel = load i32, i32* %ehselector.slot, align 4, !dbg !4632
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0, !dbg !4632
  %lpad.val14 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1, !dbg !4632
  resume { i8*, i32 } %lpad.val14, !dbg !4632
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local zeroext i1 @_ZN10tensorflow20DataTypeCanUseMemcpyE8DataType(i32 %dt) #4 comdat !dbg !4666 {
entry:
  %retval = alloca i1, align 1
  %dt.addr = alloca i32, align 4
  store i32 %dt, i32* %dt.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %dt.addr, metadata !4669, metadata !DIExpression()), !dbg !4670
  %0 = load i32, i32* %dt.addr, align 4, !dbg !4671
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
  ], !dbg !4672

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry
  store i1 true, i1* %retval, align 1, !dbg !4673
  br label %return, !dbg !4673

sw.default:                                       ; preds = %entry
  store i1 false, i1* %retval, align 1, !dbg !4675
  br label %return, !dbg !4675

return:                                           ; preds = %sw.default, %sw.bb
  %1 = load i1, i1* %retval, align 1, !dbg !4676
  ret i1 %1, !dbg !4676
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 4 dereferenceable(4) i32* @_ZSt3maxIiERKT_S2_S2_(i32* nonnull align 4 dereferenceable(4) %__a, i32* nonnull align 4 dereferenceable(4) %__b) #4 comdat !dbg !4677 {
entry:
  %retval = alloca i32*, align 8
  %__a.addr = alloca i32*, align 8
  %__b.addr = alloca i32*, align 8
  store i32* %__a, i32** %__a.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %__a.addr, metadata !4683, metadata !DIExpression()), !dbg !4684
  store i32* %__b, i32** %__b.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %__b.addr, metadata !4685, metadata !DIExpression()), !dbg !4686
  %0 = load i32*, i32** %__a.addr, align 8, !dbg !4687
  %1 = load i32, i32* %0, align 4, !dbg !4687
  %2 = load i32*, i32** %__b.addr, align 8, !dbg !4689
  %3 = load i32, i32* %2, align 4, !dbg !4689
  %cmp = icmp slt i32 %1, %3, !dbg !4690
  br i1 %cmp, label %if.then, label %if.end, !dbg !4691

if.then:                                          ; preds = %entry
  %4 = load i32*, i32** %__b.addr, align 8, !dbg !4692
  store i32* %4, i32** %retval, align 8, !dbg !4693
  br label %return, !dbg !4693

if.end:                                           ; preds = %entry
  %5 = load i32*, i32** %__a.addr, align 8, !dbg !4694
  store i32* %5, i32** %retval, align 8, !dbg !4695
  br label %return, !dbg !4695

return:                                           ; preds = %if.end, %if.then
  %6 = load i32*, i32** %retval, align 8, !dbg !4696
  ret i32* %6, !dbg !4696
}

; Function Attrs: noinline optnone uwtable
define dso_local %struct.TF_Tensor* @TF_TensorMaybeMove(%struct.TF_Tensor* %t) #5 !dbg !4697 {
entry:
  %t.addr = alloca %struct.TF_Tensor*, align 8
  store %struct.TF_Tensor* %t, %struct.TF_Tensor** %t.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.TF_Tensor** %t.addr, metadata !4700, metadata !DIExpression()), !dbg !4701
  %0 = load %struct.TF_Tensor*, %struct.TF_Tensor** %t.addr, align 8, !dbg !4702
  %tensor = getelementptr inbounds %struct.TF_Tensor, %struct.TF_Tensor* %0, i32 0, i32 0, !dbg !4703
  %1 = load %"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"** %tensor, align 8, !dbg !4703
  %2 = bitcast %"class.tensorflow::AbstractTensorInterface"* %1 to i1 (%"class.tensorflow::AbstractTensorInterface"*)***, !dbg !4704
  %vtable = load i1 (%"class.tensorflow::AbstractTensorInterface"*)**, i1 (%"class.tensorflow::AbstractTensorInterface"*)*** %2, align 8, !dbg !4704
  %vfn = getelementptr inbounds i1 (%"class.tensorflow::AbstractTensorInterface"*)*, i1 (%"class.tensorflow::AbstractTensorInterface"*)** %vtable, i64 8, !dbg !4704
  %3 = load i1 (%"class.tensorflow::AbstractTensorInterface"*)*, i1 (%"class.tensorflow::AbstractTensorInterface"*)** %vfn, align 8, !dbg !4704
  %call = call zeroext i1 %3(%"class.tensorflow::AbstractTensorInterface"* %1), !dbg !4704
  br i1 %call, label %cond.true, label %cond.false, !dbg !4702

cond.true:                                        ; preds = %entry
  %4 = load %struct.TF_Tensor*, %struct.TF_Tensor** %t.addr, align 8, !dbg !4705
  br label %cond.end, !dbg !4702

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !4702

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.TF_Tensor* [ %4, %cond.true ], [ null, %cond.false ], !dbg !4702
  ret %struct.TF_Tensor* %cond, !dbg !4706
}

; Function Attrs: noinline optnone uwtable
define dso_local void @TF_DeleteTensor(%struct.TF_Tensor* %t) #5 !dbg !4707 {
entry:
  %t.addr = alloca %struct.TF_Tensor*, align 8
  store %struct.TF_Tensor* %t, %struct.TF_Tensor** %t.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.TF_Tensor** %t.addr, metadata !4710, metadata !DIExpression()), !dbg !4711
  %0 = load %struct.TF_Tensor*, %struct.TF_Tensor** %t.addr, align 8, !dbg !4712
  %cmp = icmp eq %struct.TF_Tensor* %0, null, !dbg !4714
  br i1 %cmp, label %if.then, label %if.end, !dbg !4715

if.then:                                          ; preds = %entry
  br label %delete.end, !dbg !4716

if.end:                                           ; preds = %entry
  %1 = load %struct.TF_Tensor*, %struct.TF_Tensor** %t.addr, align 8, !dbg !4718
  %tensor = getelementptr inbounds %struct.TF_Tensor, %struct.TF_Tensor* %1, i32 0, i32 0, !dbg !4720
  %2 = load %"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"** %tensor, align 8, !dbg !4720
  %tobool = icmp ne %"class.tensorflow::AbstractTensorInterface"* %2, null, !dbg !4718
  br i1 %tobool, label %if.then1, label %if.end3, !dbg !4721

if.then1:                                         ; preds = %if.end
  %3 = load %struct.TF_Tensor*, %struct.TF_Tensor** %t.addr, align 8, !dbg !4722
  %tensor2 = getelementptr inbounds %struct.TF_Tensor, %struct.TF_Tensor* %3, i32 0, i32 0, !dbg !4724
  %4 = load %"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"** %tensor2, align 8, !dbg !4724
  %5 = bitcast %"class.tensorflow::AbstractTensorInterface"* %4 to void (%"class.tensorflow::AbstractTensorInterface"*)***, !dbg !4725
  %vtable = load void (%"class.tensorflow::AbstractTensorInterface"*)**, void (%"class.tensorflow::AbstractTensorInterface"*)*** %5, align 8, !dbg !4725
  %vfn = getelementptr inbounds void (%"class.tensorflow::AbstractTensorInterface"*)*, void (%"class.tensorflow::AbstractTensorInterface"*)** %vtable, i64 0, !dbg !4725
  %6 = load void (%"class.tensorflow::AbstractTensorInterface"*)*, void (%"class.tensorflow::AbstractTensorInterface"*)** %vfn, align 8, !dbg !4725
  call void %6(%"class.tensorflow::AbstractTensorInterface"* %4), !dbg !4725
  br label %if.end3, !dbg !4726

if.end3:                                          ; preds = %if.then1, %if.end
  %7 = load %struct.TF_Tensor*, %struct.TF_Tensor** %t.addr, align 8, !dbg !4727
  %isnull = icmp eq %struct.TF_Tensor* %7, null, !dbg !4728
  br i1 %isnull, label %delete.end, label %delete.notnull, !dbg !4728

delete.notnull:                                   ; preds = %if.end3
  %8 = bitcast %struct.TF_Tensor* %7 to i8*, !dbg !4728
  call void @_ZdlPv(i8* %8) #17, !dbg !4728
  br label %delete.end, !dbg !4728

delete.end:                                       ; preds = %if.then, %delete.notnull, %if.end3
  ret void, !dbg !4729
}

; Function Attrs: noinline optnone uwtable
define dso_local i32 @TF_TensorType(%struct.TF_Tensor* %t) #5 !dbg !4730 {
entry:
  %t.addr = alloca %struct.TF_Tensor*, align 8
  store %struct.TF_Tensor* %t, %struct.TF_Tensor** %t.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.TF_Tensor** %t.addr, metadata !4735, metadata !DIExpression()), !dbg !4736
  %0 = load %struct.TF_Tensor*, %struct.TF_Tensor** %t.addr, align 8, !dbg !4737
  %tensor = getelementptr inbounds %struct.TF_Tensor, %struct.TF_Tensor* %0, i32 0, i32 0, !dbg !4738
  %1 = load %"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"** %tensor, align 8, !dbg !4738
  %2 = bitcast %"class.tensorflow::AbstractTensorInterface"* %1 to i32 (%"class.tensorflow::AbstractTensorInterface"*)***, !dbg !4739
  %vtable = load i32 (%"class.tensorflow::AbstractTensorInterface"*)**, i32 (%"class.tensorflow::AbstractTensorInterface"*)*** %2, align 8, !dbg !4739
  %vfn = getelementptr inbounds i32 (%"class.tensorflow::AbstractTensorInterface"*)*, i32 (%"class.tensorflow::AbstractTensorInterface"*)** %vtable, i64 1, !dbg !4739
  %3 = load i32 (%"class.tensorflow::AbstractTensorInterface"*)*, i32 (%"class.tensorflow::AbstractTensorInterface"*)** %vfn, align 8, !dbg !4739
  %call = call i32 %3(%"class.tensorflow::AbstractTensorInterface"* %1), !dbg !4739
  ret i32 %call, !dbg !4740
}

; Function Attrs: noinline optnone uwtable
define dso_local i32 @TF_NumDims(%struct.TF_Tensor* %t) #5 !dbg !4741 {
entry:
  %t.addr = alloca %struct.TF_Tensor*, align 8
  store %struct.TF_Tensor* %t, %struct.TF_Tensor** %t.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.TF_Tensor** %t.addr, metadata !4744, metadata !DIExpression()), !dbg !4745
  %0 = load %struct.TF_Tensor*, %struct.TF_Tensor** %t.addr, align 8, !dbg !4746
  %tensor = getelementptr inbounds %struct.TF_Tensor, %struct.TF_Tensor* %0, i32 0, i32 0, !dbg !4747
  %1 = load %"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"** %tensor, align 8, !dbg !4747
  %2 = bitcast %"class.tensorflow::AbstractTensorInterface"* %1 to i32 (%"class.tensorflow::AbstractTensorInterface"*)***, !dbg !4748
  %vtable = load i32 (%"class.tensorflow::AbstractTensorInterface"*)**, i32 (%"class.tensorflow::AbstractTensorInterface"*)*** %2, align 8, !dbg !4748
  %vfn = getelementptr inbounds i32 (%"class.tensorflow::AbstractTensorInterface"*)*, i32 (%"class.tensorflow::AbstractTensorInterface"*)** %vtable, i64 2, !dbg !4748
  %3 = load i32 (%"class.tensorflow::AbstractTensorInterface"*)*, i32 (%"class.tensorflow::AbstractTensorInterface"*)** %vfn, align 8, !dbg !4748
  %call = call i32 %3(%"class.tensorflow::AbstractTensorInterface"* %1), !dbg !4748
  ret i32 %call, !dbg !4749
}

; Function Attrs: noinline optnone uwtable
define dso_local i64 @TF_Dim(%struct.TF_Tensor* %t, i32 %dim_index) #5 !dbg !4750 {
entry:
  %t.addr = alloca %struct.TF_Tensor*, align 8
  %dim_index.addr = alloca i32, align 4
  store %struct.TF_Tensor* %t, %struct.TF_Tensor** %t.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.TF_Tensor** %t.addr, metadata !4753, metadata !DIExpression()), !dbg !4754
  store i32 %dim_index, i32* %dim_index.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %dim_index.addr, metadata !4755, metadata !DIExpression()), !dbg !4756
  %0 = load %struct.TF_Tensor*, %struct.TF_Tensor** %t.addr, align 8, !dbg !4757
  %tensor = getelementptr inbounds %struct.TF_Tensor, %struct.TF_Tensor* %0, i32 0, i32 0, !dbg !4758
  %1 = load %"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"** %tensor, align 8, !dbg !4758
  %2 = load i32, i32* %dim_index.addr, align 4, !dbg !4759
  %3 = bitcast %"class.tensorflow::AbstractTensorInterface"* %1 to i64 (%"class.tensorflow::AbstractTensorInterface"*, i32)***, !dbg !4760
  %vtable = load i64 (%"class.tensorflow::AbstractTensorInterface"*, i32)**, i64 (%"class.tensorflow::AbstractTensorInterface"*, i32)*** %3, align 8, !dbg !4760
  %vfn = getelementptr inbounds i64 (%"class.tensorflow::AbstractTensorInterface"*, i32)*, i64 (%"class.tensorflow::AbstractTensorInterface"*, i32)** %vtable, i64 3, !dbg !4760
  %4 = load i64 (%"class.tensorflow::AbstractTensorInterface"*, i32)*, i64 (%"class.tensorflow::AbstractTensorInterface"*, i32)** %vfn, align 8, !dbg !4760
  %call = call i64 %4(%"class.tensorflow::AbstractTensorInterface"* %1, i32 %2), !dbg !4760
  ret i64 %call, !dbg !4761
}

; Function Attrs: noinline optnone uwtable
define dso_local i64 @TF_TensorByteSize(%struct.TF_Tensor* %t) #5 !dbg !4762 {
entry:
  %t.addr = alloca %struct.TF_Tensor*, align 8
  store %struct.TF_Tensor* %t, %struct.TF_Tensor** %t.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.TF_Tensor** %t.addr, metadata !4765, metadata !DIExpression()), !dbg !4766
  %0 = load %struct.TF_Tensor*, %struct.TF_Tensor** %t.addr, align 8, !dbg !4767
  %tensor = getelementptr inbounds %struct.TF_Tensor, %struct.TF_Tensor* %0, i32 0, i32 0, !dbg !4768
  %1 = load %"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"** %tensor, align 8, !dbg !4768
  %2 = bitcast %"class.tensorflow::AbstractTensorInterface"* %1 to i64 (%"class.tensorflow::AbstractTensorInterface"*)***, !dbg !4769
  %vtable = load i64 (%"class.tensorflow::AbstractTensorInterface"*)**, i64 (%"class.tensorflow::AbstractTensorInterface"*)*** %2, align 8, !dbg !4769
  %vfn = getelementptr inbounds i64 (%"class.tensorflow::AbstractTensorInterface"*)*, i64 (%"class.tensorflow::AbstractTensorInterface"*)** %vtable, i64 5, !dbg !4769
  %3 = load i64 (%"class.tensorflow::AbstractTensorInterface"*)*, i64 (%"class.tensorflow::AbstractTensorInterface"*)** %vfn, align 8, !dbg !4769
  %call = call i64 %3(%"class.tensorflow::AbstractTensorInterface"* %1), !dbg !4769
  ret i64 %call, !dbg !4770
}

; Function Attrs: noinline optnone uwtable
define dso_local i8* @TF_TensorData(%struct.TF_Tensor* %t) #5 !dbg !4771 {
entry:
  %t.addr = alloca %struct.TF_Tensor*, align 8
  store %struct.TF_Tensor* %t, %struct.TF_Tensor** %t.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.TF_Tensor** %t.addr, metadata !4774, metadata !DIExpression()), !dbg !4775
  %0 = load %struct.TF_Tensor*, %struct.TF_Tensor** %t.addr, align 8, !dbg !4776
  %tensor = getelementptr inbounds %struct.TF_Tensor, %struct.TF_Tensor* %0, i32 0, i32 0, !dbg !4777
  %1 = load %"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"** %tensor, align 8, !dbg !4777
  %2 = bitcast %"class.tensorflow::AbstractTensorInterface"* %1 to i8* (%"class.tensorflow::AbstractTensorInterface"*)***, !dbg !4778
  %vtable = load i8* (%"class.tensorflow::AbstractTensorInterface"*)**, i8* (%"class.tensorflow::AbstractTensorInterface"*)*** %2, align 8, !dbg !4778
  %vfn = getelementptr inbounds i8* (%"class.tensorflow::AbstractTensorInterface"*)*, i8* (%"class.tensorflow::AbstractTensorInterface"*)** %vtable, i64 6, !dbg !4778
  %3 = load i8* (%"class.tensorflow::AbstractTensorInterface"*)*, i8* (%"class.tensorflow::AbstractTensorInterface"*)** %vfn, align 8, !dbg !4778
  %call = call i8* %3(%"class.tensorflow::AbstractTensorInterface"* %1), !dbg !4778
  ret i8* %call, !dbg !4779
}

; Function Attrs: noinline optnone uwtable
define dso_local i64 @TF_TensorElementCount(%struct.TF_Tensor* %t) #5 !dbg !4780 {
entry:
  %t.addr = alloca %struct.TF_Tensor*, align 8
  %result = alloca i64, align 8
  %rank = alloca i32, align 4
  %dim = alloca i32, align 4
  store %struct.TF_Tensor* %t, %struct.TF_Tensor** %t.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.TF_Tensor** %t.addr, metadata !4783, metadata !DIExpression()), !dbg !4784
  call void @llvm.dbg.declare(metadata i64* %result, metadata !4785, metadata !DIExpression()), !dbg !4786
  store i64 1, i64* %result, align 8, !dbg !4786
  call void @llvm.dbg.declare(metadata i32* %rank, metadata !4787, metadata !DIExpression()), !dbg !4788
  %0 = load %struct.TF_Tensor*, %struct.TF_Tensor** %t.addr, align 8, !dbg !4789
  %call = call i32 @TF_NumDims(%struct.TF_Tensor* %0), !dbg !4790
  store i32 %call, i32* %rank, align 4, !dbg !4788
  call void @llvm.dbg.declare(metadata i32* %dim, metadata !4791, metadata !DIExpression()), !dbg !4793
  store i32 0, i32* %dim, align 4, !dbg !4793
  br label %for.cond, !dbg !4794

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %dim, align 4, !dbg !4795
  %2 = load i32, i32* %rank, align 4, !dbg !4797
  %cmp = icmp slt i32 %1, %2, !dbg !4798
  br i1 %cmp, label %for.body, label %for.end, !dbg !4799

for.body:                                         ; preds = %for.cond
  %3 = load %struct.TF_Tensor*, %struct.TF_Tensor** %t.addr, align 8, !dbg !4800
  %4 = load i32, i32* %dim, align 4, !dbg !4802
  %call1 = call i64 @TF_Dim(%struct.TF_Tensor* %3, i32 %4), !dbg !4803
  %5 = load i64, i64* %result, align 8, !dbg !4804
  %mul = mul nsw i64 %5, %call1, !dbg !4804
  store i64 %mul, i64* %result, align 8, !dbg !4804
  br label %for.inc, !dbg !4805

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %dim, align 4, !dbg !4806
  %inc = add nsw i32 %6, 1, !dbg !4806
  store i32 %inc, i32* %dim, align 4, !dbg !4806
  br label %for.cond, !dbg !4807, !llvm.loop !4808

for.end:                                          ; preds = %for.cond
  %7 = load i64, i64* %result, align 8, !dbg !4810
  ret i64 %7, !dbg !4811
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow12TensorBufferD0Ev(%"class.tensorflow::TensorBuffer"* %this) unnamed_addr #4 comdat align 2 !dbg !4812 {
entry:
  %this.addr = alloca %"class.tensorflow::TensorBuffer"*, align 8
  store %"class.tensorflow::TensorBuffer"* %this, %"class.tensorflow::TensorBuffer"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::TensorBuffer"** %this.addr, metadata !4849, metadata !DIExpression()), !dbg !4850
  %this1 = load %"class.tensorflow::TensorBuffer"*, %"class.tensorflow::TensorBuffer"** %this.addr, align 8
  call void @abort(), !dbg !4851
  unreachable, !dbg !4851
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @_ZNK10tensorflow12TensorBuffer17GetAllocatedBytesEPm(%"class.tensorflow::TensorBuffer"* %this, i64* %out_bytes) unnamed_addr #4 align 2 !dbg !4852 {
entry:
  %this.addr = alloca %"class.tensorflow::TensorBuffer"*, align 8
  %out_bytes.addr = alloca i64*, align 8
  store %"class.tensorflow::TensorBuffer"* %this, %"class.tensorflow::TensorBuffer"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::TensorBuffer"** %this.addr, metadata !4854, metadata !DIExpression()), !dbg !4856
  store i64* %out_bytes, i64** %out_bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %out_bytes.addr, metadata !4857, metadata !DIExpression()), !dbg !4858
  %this1 = load %"class.tensorflow::TensorBuffer"*, %"class.tensorflow::TensorBuffer"** %this.addr, align 8
  ret i1 true, !dbg !4859
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local zeroext i1 @_ZNK10tensorflow12TensorBuffer10OwnsMemoryEv(%"class.tensorflow::TensorBuffer"* %this) unnamed_addr #4 comdat align 2 !dbg !4860 {
entry:
  %this.addr = alloca %"class.tensorflow::TensorBuffer"*, align 8
  store %"class.tensorflow::TensorBuffer"* %this, %"class.tensorflow::TensorBuffer"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::TensorBuffer"** %this.addr, metadata !4861, metadata !DIExpression()), !dbg !4862
  %this1 = load %"class.tensorflow::TensorBuffer"*, %"class.tensorflow::TensorBuffer"** %this.addr, align 8
  ret i1 true, !dbg !4863
}

; Function Attrs: noinline optnone uwtable
define dso_local void @_ZN10tensorflow6TensorC2E8DataTypeRKNS_11TensorShapeEPNS_12TensorBufferE(%"class.tensorflow::Tensor"* %this, i32 %type, %"class.tensorflow::TensorShape"* nonnull align 8 dereferenceable(29) %shape, %"class.tensorflow::TensorBuffer"* %buf) unnamed_addr #5 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !4864 {
entry:
  %this.addr = alloca %"class.tensorflow::Tensor"*, align 8
  %type.addr = alloca i32, align 4
  %shape.addr = alloca %"class.tensorflow::TensorShape"*, align 8
  %buf.addr = alloca %"class.tensorflow::TensorBuffer"*, align 8
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  store %"class.tensorflow::Tensor"* %this, %"class.tensorflow::Tensor"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::Tensor"** %this.addr, metadata !4868, metadata !DIExpression()), !dbg !4869
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !4870, metadata !DIExpression()), !dbg !4871
  store %"class.tensorflow::TensorShape"* %shape, %"class.tensorflow::TensorShape"** %shape.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::TensorShape"** %shape.addr, metadata !4872, metadata !DIExpression()), !dbg !4873
  store %"class.tensorflow::TensorBuffer"* %buf, %"class.tensorflow::TensorBuffer"** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::TensorBuffer"** %buf.addr, metadata !4874, metadata !DIExpression()), !dbg !4875
  %this1 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %this.addr, align 8
  %shape_ = getelementptr inbounds %"class.tensorflow::Tensor", %"class.tensorflow::Tensor"* %this1, i32 0, i32 0, !dbg !4876
  %0 = load %"class.tensorflow::TensorShape"*, %"class.tensorflow::TensorShape"** %shape.addr, align 8, !dbg !4877
  call void @_ZN10tensorflow11TensorShapeC2ERKS0_(%"class.tensorflow::TensorShape"* %shape_, %"class.tensorflow::TensorShape"* nonnull align 8 dereferenceable(29) %0), !dbg !4876
  %buf_ = getelementptr inbounds %"class.tensorflow::Tensor", %"class.tensorflow::Tensor"* %this1, i32 0, i32 1, !dbg !4878
  %1 = load %"class.tensorflow::TensorBuffer"*, %"class.tensorflow::TensorBuffer"** %buf.addr, align 8, !dbg !4879
  store %"class.tensorflow::TensorBuffer"* %1, %"class.tensorflow::TensorBuffer"** %buf_, align 8, !dbg !4878
  %2 = load i32, i32* %type.addr, align 4, !dbg !4880
  invoke void @_ZN10tensorflow6Tensor9set_dtypeE8DataType(%"class.tensorflow::Tensor"* %this1, i32 %2)
          to label %invoke.cont unwind label %lpad, !dbg !4882

invoke.cont:                                      ; preds = %entry
  %3 = load %"class.tensorflow::TensorBuffer"*, %"class.tensorflow::TensorBuffer"** %buf.addr, align 8, !dbg !4883
  %4 = bitcast %"class.tensorflow::TensorBuffer"* %3 to %"class.tensorflow::core::RefCounted"*, !dbg !4883
  invoke void @_ZN10tensorflow12_GLOBAL__N_112RefIfNonNullEPNS_4core10RefCountedE(%"class.tensorflow::core::RefCounted"* %4)
          to label %invoke.cont2 unwind label %lpad, !dbg !4884

invoke.cont2:                                     ; preds = %invoke.cont
  ret void, !dbg !4885

lpad:                                             ; preds = %invoke.cont, %entry
  %5 = landingpad { i8*, i32 }
          cleanup, !dbg !4886
  %6 = extractvalue { i8*, i32 } %5, 0, !dbg !4886
  store i8* %6, i8** %exn.slot, align 8, !dbg !4886
  %7 = extractvalue { i8*, i32 } %5, 1, !dbg !4886
  store i32 %7, i32* %ehselector.slot, align 4, !dbg !4886
  call void @_ZN10tensorflow11TensorShapeD2Ev(%"class.tensorflow::TensorShape"* %shape_) #6, !dbg !4886
  br label %eh.resume, !dbg !4886

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8, !dbg !4886
  %sel = load i32, i32* %ehselector.slot, align 4, !dbg !4886
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0, !dbg !4886
  %lpad.val3 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1, !dbg !4886
  resume { i8*, i32 } %lpad.val3, !dbg !4886
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow11TensorShapeC2ERKS0_(%"class.tensorflow::TensorShape"* %this, %"class.tensorflow::TensorShape"* nonnull align 8 dereferenceable(29) %0) unnamed_addr #5 comdat align 2 !dbg !4887 {
entry:
  %this.addr = alloca %"class.tensorflow::TensorShape"*, align 8
  %.addr = alloca %"class.tensorflow::TensorShape"*, align 8
  store %"class.tensorflow::TensorShape"* %this, %"class.tensorflow::TensorShape"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::TensorShape"** %this.addr, metadata !4891, metadata !DIExpression()), !dbg !4892
  store %"class.tensorflow::TensorShape"* %0, %"class.tensorflow::TensorShape"** %.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::TensorShape"** %.addr, metadata !4893, metadata !DIExpression()), !dbg !4892
  %this1 = load %"class.tensorflow::TensorShape"*, %"class.tensorflow::TensorShape"** %this.addr, align 8
  %dims_ = getelementptr inbounds %"class.tensorflow::TensorShape", %"class.tensorflow::TensorShape"* %this1, i32 0, i32 0, !dbg !4894
  %1 = load %"class.tensorflow::TensorShape"*, %"class.tensorflow::TensorShape"** %.addr, align 8, !dbg !4894
  %dims_2 = getelementptr inbounds %"class.tensorflow::TensorShape", %"class.tensorflow::TensorShape"* %1, i32 0, i32 0, !dbg !4894
  call void @_ZNSt6vectorIlSaIlEEC2ERKS1_(%"class.std::vector"* %dims_, %"class.std::vector"* nonnull align 8 dereferenceable(24) %dims_2), !dbg !4894
  %dtype_ = getelementptr inbounds %"class.tensorflow::TensorShape", %"class.tensorflow::TensorShape"* %this1, i32 0, i32 1, !dbg !4894
  %2 = load %"class.tensorflow::TensorShape"*, %"class.tensorflow::TensorShape"** %.addr, align 8, !dbg !4894
  %dtype_3 = getelementptr inbounds %"class.tensorflow::TensorShape", %"class.tensorflow::TensorShape"* %2, i32 0, i32 1, !dbg !4894
  %3 = bitcast i32* %dtype_ to i8*, !dbg !4894
  %4 = bitcast i32* %dtype_3 to i8*, !dbg !4894
  %5 = call i8* @memcpy(i8* %3, i8* %4, i64 4), !dbg !4894
  ret void, !dbg !4894
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow6Tensor9set_dtypeE8DataType(%"class.tensorflow::Tensor"* %this, i32 %t) #5 comdat align 2 !dbg !4895 {
entry:
  %this.addr = alloca %"class.tensorflow::Tensor"*, align 8
  %t.addr = alloca i32, align 4
  store %"class.tensorflow::Tensor"* %this, %"class.tensorflow::Tensor"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::Tensor"** %this.addr, metadata !4896, metadata !DIExpression()), !dbg !4897
  store i32 %t, i32* %t.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %t.addr, metadata !4898, metadata !DIExpression()), !dbg !4899
  %this1 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %this.addr, align 8
  %shape_ = getelementptr inbounds %"class.tensorflow::Tensor", %"class.tensorflow::Tensor"* %this1, i32 0, i32 0, !dbg !4900
  %0 = load i32, i32* %t.addr, align 4, !dbg !4901
  call void @_ZN10tensorflow11TensorShape13set_data_typeE8DataType(%"class.tensorflow::TensorShape"* %shape_, i32 %0), !dbg !4902
  ret void, !dbg !4903
}

; Function Attrs: noinline optnone uwtable
define internal void @_ZN10tensorflow12_GLOBAL__N_112RefIfNonNullEPNS_4core10RefCountedE(%"class.tensorflow::core::RefCounted"* %buf) #5 !dbg !4904 {
entry:
  %buf.addr = alloca %"class.tensorflow::core::RefCounted"*, align 8
  store %"class.tensorflow::core::RefCounted"* %buf, %"class.tensorflow::core::RefCounted"** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::core::RefCounted"** %buf.addr, metadata !4908, metadata !DIExpression()), !dbg !4909
  %0 = load %"class.tensorflow::core::RefCounted"*, %"class.tensorflow::core::RefCounted"** %buf.addr, align 8, !dbg !4910
  %tobool = icmp ne %"class.tensorflow::core::RefCounted"* %0, null, !dbg !4910
  br i1 %tobool, label %if.then, label %if.end, !dbg !4912

if.then:                                          ; preds = %entry
  %1 = load %"class.tensorflow::core::RefCounted"*, %"class.tensorflow::core::RefCounted"** %buf.addr, align 8, !dbg !4913
  call void @_ZNK10tensorflow4core10RefCounted3RefEv(%"class.tensorflow::core::RefCounted"* %1), !dbg !4914
  br label %if.end, !dbg !4913

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !4915
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNK10tensorflow4core10RefCounted3RefEv(%"class.tensorflow::core::RefCounted"* %this) #4 comdat align 2 !dbg !4916 {
entry:
  %this.addr.i = alloca %"struct.std::__atomic_base"*, align 8
  %__i.addr.i = alloca i64, align 8
  %__m.addr.i = alloca i32, align 4
  %.atomictmp.i = alloca i64, align 8
  %atomic-temp.i = alloca i64, align 8
  %this.addr = alloca %"class.tensorflow::core::RefCounted"*, align 8
  store %"class.tensorflow::core::RefCounted"* %this, %"class.tensorflow::core::RefCounted"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::core::RefCounted"** %this.addr, metadata !4917, metadata !DIExpression()), !dbg !4918
  %this1 = load %"class.tensorflow::core::RefCounted"*, %"class.tensorflow::core::RefCounted"** %this.addr, align 8
  %ref_count_ = getelementptr inbounds %"class.tensorflow::core::RefCounted", %"class.tensorflow::core::RefCounted"* %this1, i32 0, i32 1, !dbg !4919
  %0 = bitcast %"struct.std::atomic"* %ref_count_ to %"struct.std::__atomic_base"*, !dbg !4919
  store %"struct.std::__atomic_base"* %0, %"struct.std::__atomic_base"** %this.addr.i, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::__atomic_base"** %this.addr.i, metadata !4920, metadata !DIExpression()), !dbg !4922
  store i64 1, i64* %__i.addr.i, align 8
  call void @llvm.dbg.declare(metadata i64* %__i.addr.i, metadata !4924, metadata !DIExpression()), !dbg !4925
  store i32 0, i32* %__m.addr.i, align 4
  call void @llvm.dbg.declare(metadata i32* %__m.addr.i, metadata !4926, metadata !DIExpression()), !dbg !4927
  %this1.i = load %"struct.std::__atomic_base"*, %"struct.std::__atomic_base"** %this.addr.i, align 8
  %_M_i.i = getelementptr inbounds %"struct.std::__atomic_base", %"struct.std::__atomic_base"* %this1.i, i32 0, i32 0, !dbg !4928
  %1 = load i32, i32* %__m.addr.i, align 4, !dbg !4929
  %2 = load i64, i64* %__i.addr.i, align 8, !dbg !4930
  store i64 %2, i64* %.atomictmp.i, align 8, !dbg !4931
  switch i32 %1, label %monotonic.i [
    i32 1, label %acquire.i
    i32 2, label %acquire.i
    i32 3, label %release.i
    i32 4, label %acqrel.i
    i32 5, label %seqcst.i
  ], !dbg !4931

monotonic.i:                                      ; preds = %entry
  %3 = load i64, i64* %.atomictmp.i, align 8, !dbg !4931
  %4 = load i64, i64* %_M_i.i, align 8, !dbg !4931
  %5 = add i64 %4, %3, !dbg !4931
  store i64 %5, i64* %_M_i.i, align 8, !dbg !4931
  store i64 %4, i64* %atomic-temp.i, align 8, !dbg !4931
  br label %_ZNSt13__atomic_baseImE9fetch_addEmSt12memory_order.exit, !dbg !4931

acquire.i:                                        ; preds = %entry, %entry
  %6 = load i64, i64* %.atomictmp.i, align 8, !dbg !4931
  %7 = load i64, i64* %_M_i.i, align 8, !dbg !4931
  %8 = add i64 %7, %6, !dbg !4931
  store i64 %8, i64* %_M_i.i, align 8, !dbg !4931
  store i64 %7, i64* %atomic-temp.i, align 8, !dbg !4931
  br label %_ZNSt13__atomic_baseImE9fetch_addEmSt12memory_order.exit, !dbg !4931

release.i:                                        ; preds = %entry
  %9 = load i64, i64* %.atomictmp.i, align 8, !dbg !4931
  %10 = load i64, i64* %_M_i.i, align 8, !dbg !4931
  %11 = add i64 %10, %9, !dbg !4931
  store i64 %11, i64* %_M_i.i, align 8, !dbg !4931
  store i64 %10, i64* %atomic-temp.i, align 8, !dbg !4931
  br label %_ZNSt13__atomic_baseImE9fetch_addEmSt12memory_order.exit, !dbg !4931

acqrel.i:                                         ; preds = %entry
  %12 = load i64, i64* %.atomictmp.i, align 8, !dbg !4931
  %13 = load i64, i64* %_M_i.i, align 8, !dbg !4931
  %14 = add i64 %13, %12, !dbg !4931
  store i64 %14, i64* %_M_i.i, align 8, !dbg !4931
  store i64 %13, i64* %atomic-temp.i, align 8, !dbg !4931
  br label %_ZNSt13__atomic_baseImE9fetch_addEmSt12memory_order.exit, !dbg !4931

seqcst.i:                                         ; preds = %entry
  %15 = load i64, i64* %.atomictmp.i, align 8, !dbg !4931
  %16 = load i64, i64* %_M_i.i, align 8, !dbg !4931
  %17 = add i64 %16, %15, !dbg !4931
  store i64 %17, i64* %_M_i.i, align 8, !dbg !4931
  store i64 %16, i64* %atomic-temp.i, align 8, !dbg !4931
  br label %_ZNSt13__atomic_baseImE9fetch_addEmSt12memory_order.exit, !dbg !4931

_ZNSt13__atomic_baseImE9fetch_addEmSt12memory_order.exit: ; preds = %monotonic.i, %acquire.i, %release.i, %acqrel.i, %seqcst.i
  %18 = load i64, i64* %atomic-temp.i, align 8, !dbg !4931
  ret void, !dbg !4932
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow11TensorShape13set_data_typeE8DataType(%"class.tensorflow::TensorShape"* %this, i32 %t) #4 comdat align 2 !dbg !4933 {
entry:
  %this.addr = alloca %"class.tensorflow::TensorShape"*, align 8
  %t.addr = alloca i32, align 4
  store %"class.tensorflow::TensorShape"* %this, %"class.tensorflow::TensorShape"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::TensorShape"** %this.addr, metadata !4934, metadata !DIExpression()), !dbg !4935
  store i32 %t, i32* %t.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %t.addr, metadata !4936, metadata !DIExpression()), !dbg !4937
  %this1 = load %"class.tensorflow::TensorShape"*, %"class.tensorflow::TensorShape"** %this.addr, align 8
  %0 = load i32, i32* %t.addr, align 4, !dbg !4938
  %dtype_ = getelementptr inbounds %"class.tensorflow::TensorShape", %"class.tensorflow::TensorShape"* %this1, i32 0, i32 1, !dbg !4939
  store i32 %0, i32* %dtype_, align 8, !dbg !4940
  ret void, !dbg !4941
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_ZN10tensorflow6TensorD2Ev(%"class.tensorflow::Tensor"* %this) unnamed_addr #4 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !4942 {
entry:
  %this.addr = alloca %"class.tensorflow::Tensor"*, align 8
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  store %"class.tensorflow::Tensor"* %this, %"class.tensorflow::Tensor"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::Tensor"** %this.addr, metadata !4943, metadata !DIExpression()), !dbg !4944
  %this1 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %this.addr, align 8
  %buf_ = getelementptr inbounds %"class.tensorflow::Tensor", %"class.tensorflow::Tensor"* %this1, i32 0, i32 1, !dbg !4945
  %0 = load %"class.tensorflow::TensorBuffer"*, %"class.tensorflow::TensorBuffer"** %buf_, align 8, !dbg !4945
  %1 = bitcast %"class.tensorflow::TensorBuffer"* %0 to %"class.tensorflow::core::RefCounted"*, !dbg !4945
  invoke void @_ZN10tensorflow12_GLOBAL__N_114UnrefIfNonNullEPNS_4core10RefCountedE(%"class.tensorflow::core::RefCounted"* %1)
          to label %invoke.cont unwind label %lpad, !dbg !4947

invoke.cont:                                      ; preds = %entry
  %shape_ = getelementptr inbounds %"class.tensorflow::Tensor", %"class.tensorflow::Tensor"* %this1, i32 0, i32 0, !dbg !4948
  call void @_ZN10tensorflow11TensorShapeD2Ev(%"class.tensorflow::TensorShape"* %shape_) #6, !dbg !4948
  ret void, !dbg !4949

lpad:                                             ; preds = %entry
  %2 = landingpad { i8*, i32 }
          catch i8* null, !dbg !4948
  %3 = extractvalue { i8*, i32 } %2, 0, !dbg !4948
  store i8* %3, i8** %exn.slot, align 8, !dbg !4948
  %4 = extractvalue { i8*, i32 } %2, 1, !dbg !4948
  store i32 %4, i32* %ehselector.slot, align 4, !dbg !4948
  %shape_2 = getelementptr inbounds %"class.tensorflow::Tensor", %"class.tensorflow::Tensor"* %this1, i32 0, i32 0, !dbg !4948
  call void @_ZN10tensorflow11TensorShapeD2Ev(%"class.tensorflow::TensorShape"* %shape_2) #6, !dbg !4948
  br label %terminate.handler, !dbg !4948

terminate.handler:                                ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8, !dbg !4948
  call void @__clang_call_terminate(i8* %exn) #14, !dbg !4948
  unreachable, !dbg !4948
}

; Function Attrs: noinline optnone uwtable
define internal void @_ZN10tensorflow12_GLOBAL__N_114UnrefIfNonNullEPNS_4core10RefCountedE(%"class.tensorflow::core::RefCounted"* %buf) #5 !dbg !4950 {
entry:
  %buf.addr = alloca %"class.tensorflow::core::RefCounted"*, align 8
  store %"class.tensorflow::core::RefCounted"* %buf, %"class.tensorflow::core::RefCounted"** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::core::RefCounted"** %buf.addr, metadata !4951, metadata !DIExpression()), !dbg !4952
  %0 = load %"class.tensorflow::core::RefCounted"*, %"class.tensorflow::core::RefCounted"** %buf.addr, align 8, !dbg !4953
  %tobool = icmp ne %"class.tensorflow::core::RefCounted"* %0, null, !dbg !4953
  br i1 %tobool, label %if.then, label %if.end, !dbg !4955

if.then:                                          ; preds = %entry
  %1 = load %"class.tensorflow::core::RefCounted"*, %"class.tensorflow::core::RefCounted"** %buf.addr, align 8, !dbg !4956
  %call = call zeroext i1 @_ZNK10tensorflow4core10RefCounted5UnrefEv(%"class.tensorflow::core::RefCounted"* %1), !dbg !4957
  br label %if.end, !dbg !4956

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !4958
}

; Function Attrs: noinline optnone uwtable
define dso_local void @_ZN10tensorflow6TensorC2EOS0_(%"class.tensorflow::Tensor"* %this, %"class.tensorflow::Tensor"* nonnull align 8 dereferenceable(40) %other) unnamed_addr #5 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !4959 {
entry:
  %this.addr = alloca %"class.tensorflow::Tensor"*, align 8
  %other.addr = alloca %"class.tensorflow::Tensor"*, align 8
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  store %"class.tensorflow::Tensor"* %this, %"class.tensorflow::Tensor"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::Tensor"** %this.addr, metadata !4960, metadata !DIExpression()), !dbg !4961
  store %"class.tensorflow::Tensor"* %other, %"class.tensorflow::Tensor"** %other.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::Tensor"** %other.addr, metadata !4962, metadata !DIExpression()), !dbg !4963
  %this1 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %this.addr, align 8
  %shape_ = getelementptr inbounds %"class.tensorflow::Tensor", %"class.tensorflow::Tensor"* %this1, i32 0, i32 0, !dbg !4964
  %0 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %other.addr, align 8, !dbg !4965
  %shape_2 = getelementptr inbounds %"class.tensorflow::Tensor", %"class.tensorflow::Tensor"* %0, i32 0, i32 0, !dbg !4966
  %call = call nonnull align 8 dereferenceable(29) %"class.tensorflow::TensorShape"* @_ZSt4moveIRN10tensorflow11TensorShapeEEONSt16remove_referenceIT_E4typeEOS4_(%"class.tensorflow::TensorShape"* nonnull align 8 dereferenceable(29) %shape_2) #6, !dbg !4967
  call void @_ZN10tensorflow11TensorShapeC2EOS0_(%"class.tensorflow::TensorShape"* %shape_, %"class.tensorflow::TensorShape"* nonnull align 8 dereferenceable(29) %call) #6, !dbg !4964
  %buf_ = getelementptr inbounds %"class.tensorflow::Tensor", %"class.tensorflow::Tensor"* %this1, i32 0, i32 1, !dbg !4968
  %1 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %other.addr, align 8, !dbg !4969
  %buf_3 = getelementptr inbounds %"class.tensorflow::Tensor", %"class.tensorflow::Tensor"* %1, i32 0, i32 1, !dbg !4970
  %2 = load %"class.tensorflow::TensorBuffer"*, %"class.tensorflow::TensorBuffer"** %buf_3, align 8, !dbg !4970
  store %"class.tensorflow::TensorBuffer"* %2, %"class.tensorflow::TensorBuffer"** %buf_, align 8, !dbg !4968
  %3 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %other.addr, align 8, !dbg !4971
  %call4 = invoke i32 @_ZNK10tensorflow6Tensor5dtypeEv(%"class.tensorflow::Tensor"* %3)
          to label %invoke.cont unwind label %lpad, !dbg !4973

invoke.cont:                                      ; preds = %entry
  invoke void @_ZN10tensorflow6Tensor9set_dtypeE8DataType(%"class.tensorflow::Tensor"* %this1, i32 %call4)
          to label %invoke.cont5 unwind label %lpad, !dbg !4974

invoke.cont5:                                     ; preds = %invoke.cont
  %4 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %other.addr, align 8, !dbg !4975
  %buf_6 = getelementptr inbounds %"class.tensorflow::Tensor", %"class.tensorflow::Tensor"* %4, i32 0, i32 1, !dbg !4976
  store %"class.tensorflow::TensorBuffer"* null, %"class.tensorflow::TensorBuffer"** %buf_6, align 8, !dbg !4977
  ret void, !dbg !4978

lpad:                                             ; preds = %invoke.cont, %entry
  %5 = landingpad { i8*, i32 }
          cleanup, !dbg !4979
  %6 = extractvalue { i8*, i32 } %5, 0, !dbg !4979
  store i8* %6, i8** %exn.slot, align 8, !dbg !4979
  %7 = extractvalue { i8*, i32 } %5, 1, !dbg !4979
  store i32 %7, i32* %ehselector.slot, align 4, !dbg !4979
  call void @_ZN10tensorflow11TensorShapeD2Ev(%"class.tensorflow::TensorShape"* %shape_) #6, !dbg !4979
  br label %eh.resume, !dbg !4979

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8, !dbg !4979
  %sel = load i32, i32* %ehselector.slot, align 4, !dbg !4979
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0, !dbg !4979
  %lpad.val7 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1, !dbg !4979
  resume { i8*, i32 } %lpad.val7, !dbg !4979
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(29) %"class.tensorflow::TensorShape"* @_ZSt4moveIRN10tensorflow11TensorShapeEEONSt16remove_referenceIT_E4typeEOS4_(%"class.tensorflow::TensorShape"* nonnull align 8 dereferenceable(29) %__t) #4 comdat !dbg !4980 {
entry:
  %__t.addr = alloca %"class.tensorflow::TensorShape"*, align 8
  store %"class.tensorflow::TensorShape"* %__t, %"class.tensorflow::TensorShape"** %__t.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::TensorShape"** %__t.addr, metadata !4989, metadata !DIExpression()), !dbg !4990
  %0 = load %"class.tensorflow::TensorShape"*, %"class.tensorflow::TensorShape"** %__t.addr, align 8, !dbg !4991
  ret %"class.tensorflow::TensorShape"* %0, !dbg !4992
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow11TensorShapeC2EOS0_(%"class.tensorflow::TensorShape"* %this, %"class.tensorflow::TensorShape"* nonnull align 8 dereferenceable(29) %0) unnamed_addr #4 comdat align 2 !dbg !4993 {
entry:
  %this.addr = alloca %"class.tensorflow::TensorShape"*, align 8
  %.addr = alloca %"class.tensorflow::TensorShape"*, align 8
  store %"class.tensorflow::TensorShape"* %this, %"class.tensorflow::TensorShape"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::TensorShape"** %this.addr, metadata !4998, metadata !DIExpression()), !dbg !4999
  store %"class.tensorflow::TensorShape"* %0, %"class.tensorflow::TensorShape"** %.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::TensorShape"** %.addr, metadata !5000, metadata !DIExpression()), !dbg !4999
  %this1 = load %"class.tensorflow::TensorShape"*, %"class.tensorflow::TensorShape"** %this.addr, align 8
  %dims_ = getelementptr inbounds %"class.tensorflow::TensorShape", %"class.tensorflow::TensorShape"* %this1, i32 0, i32 0, !dbg !5001
  %1 = load %"class.tensorflow::TensorShape"*, %"class.tensorflow::TensorShape"** %.addr, align 8, !dbg !5001
  %dims_2 = getelementptr inbounds %"class.tensorflow::TensorShape", %"class.tensorflow::TensorShape"* %1, i32 0, i32 0, !dbg !5001
  call void @_ZNSt6vectorIlSaIlEEC2EOS1_(%"class.std::vector"* %dims_, %"class.std::vector"* nonnull align 8 dereferenceable(24) %dims_2) #6, !dbg !5001
  %dtype_ = getelementptr inbounds %"class.tensorflow::TensorShape", %"class.tensorflow::TensorShape"* %this1, i32 0, i32 1, !dbg !5001
  %2 = load %"class.tensorflow::TensorShape"*, %"class.tensorflow::TensorShape"** %.addr, align 8, !dbg !5001
  %dtype_3 = getelementptr inbounds %"class.tensorflow::TensorShape", %"class.tensorflow::TensorShape"* %2, i32 0, i32 1, !dbg !5001
  %3 = bitcast i32* %dtype_ to i8*, !dbg !5001
  %4 = bitcast i32* %dtype_3 to i8*, !dbg !5001
  %5 = call i8* @memcpy(i8* %3, i8* %4, i64 4), !dbg !5001
  ret void, !dbg !5001
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i32 @_ZNK10tensorflow6Tensor5dtypeEv(%"class.tensorflow::Tensor"* %this) #5 comdat align 2 !dbg !5002 {
entry:
  %this.addr = alloca %"class.tensorflow::Tensor"*, align 8
  store %"class.tensorflow::Tensor"* %this, %"class.tensorflow::Tensor"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::Tensor"** %this.addr, metadata !5003, metadata !DIExpression()), !dbg !5004
  %this1 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %this.addr, align 8
  %shape_ = getelementptr inbounds %"class.tensorflow::Tensor", %"class.tensorflow::Tensor"* %this1, i32 0, i32 0, !dbg !5005
  %call = call i32 @_ZNK10tensorflow11TensorShape9data_typeEv(%"class.tensorflow::TensorShape"* %shape_), !dbg !5006
  ret i32 %call, !dbg !5007
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i32 @_ZNK10tensorflow11TensorShape9data_typeEv(%"class.tensorflow::TensorShape"* %this) #4 comdat align 2 !dbg !5008 {
entry:
  %this.addr = alloca %"class.tensorflow::TensorShape"*, align 8
  store %"class.tensorflow::TensorShape"* %this, %"class.tensorflow::TensorShape"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::TensorShape"** %this.addr, metadata !5009, metadata !DIExpression()), !dbg !5010
  %this1 = load %"class.tensorflow::TensorShape"*, %"class.tensorflow::TensorShape"** %this.addr, align 8
  %dtype_ = getelementptr inbounds %"class.tensorflow::TensorShape", %"class.tensorflow::TensorShape"* %this1, i32 0, i32 1, !dbg !5011
  %0 = load i32, i32* %dtype_, align 8, !dbg !5011
  ret i32 %0, !dbg !5012
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIlSaIlEEC2EOS1_(%"class.std::vector"* %this, %"class.std::vector"* nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 comdat align 2 !dbg !5013 {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  %.addr = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::vector"** %this.addr, metadata !5014, metadata !DIExpression()), !dbg !5015
  store %"class.std::vector"* %0, %"class.std::vector"** %.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::vector"** %.addr, metadata !5016, metadata !DIExpression()), !dbg !5017
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %1 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*, !dbg !5018
  %2 = load %"class.std::vector"*, %"class.std::vector"** %.addr, align 8, !dbg !5019
  %3 = bitcast %"class.std::vector"* %2 to %"struct.std::_Vector_base"*, !dbg !5019
  call void @_ZNSt12_Vector_baseIlSaIlEEC2EOS1_(%"struct.std::_Vector_base"* %1, %"struct.std::_Vector_base"* nonnull align 8 dereferenceable(24) %3) #6, !dbg !5019
  ret void, !dbg !5018
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIlSaIlEEC2EOS1_(%"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"* nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 comdat align 2 !dbg !5020 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base"*, align 8
  %.addr = alloca %"struct.std::_Vector_base"*, align 8
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::_Vector_base"** %this.addr, metadata !5021, metadata !DIExpression()), !dbg !5022
  store %"struct.std::_Vector_base"* %0, %"struct.std::_Vector_base"** %.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::_Vector_base"** %.addr, metadata !5023, metadata !DIExpression()), !dbg !5024
  %this1 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0, !dbg !5025
  %1 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %.addr, align 8, !dbg !5025
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %1, i32 0, i32 0, !dbg !5025
  call void @_ZNSt12_Vector_baseIlSaIlEE12_Vector_implC2EOS2_(%"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %_M_impl, %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* nonnull align 8 dereferenceable(24) %_M_impl2) #6, !dbg !5025
  ret void, !dbg !5026
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIlSaIlEE12_Vector_implC2EOS2_(%"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %this, %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* nonnull align 8 dereferenceable(24) %__x) unnamed_addr #4 comdat align 2 !dbg !5027 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"*, align 8
  %__x.addr = alloca %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"*, align 8
  store %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %this, %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"** %this.addr, metadata !5028, metadata !DIExpression()), !dbg !5029
  store %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %__x, %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"** %__x.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"** %__x.addr, metadata !5030, metadata !DIExpression()), !dbg !5031
  %this1 = load %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"*, %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"** %this.addr, align 8
  %0 = bitcast %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %this1 to %"class.std::allocator.0"*, !dbg !5032
  %1 = load %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"*, %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"** %__x.addr, align 8, !dbg !5033
  %call = call nonnull align 8 dereferenceable(24) %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* @_ZSt4moveIRNSt12_Vector_baseIlSaIlEE12_Vector_implEEONSt16remove_referenceIT_E4typeEOS6_(%"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* nonnull align 8 dereferenceable(24) %1) #6, !dbg !5034
  %2 = bitcast %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %call to %"class.std::allocator.0"*, !dbg !5034
  call void @_ZNSaIlEC2ERKS_(%"class.std::allocator.0"* %0, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %2) #6, !dbg !5035
  %3 = bitcast %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %this1 to %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"*, !dbg !5032
  %4 = load %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"*, %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"** %__x.addr, align 8, !dbg !5036
  %call2 = call nonnull align 8 dereferenceable(24) %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* @_ZSt4moveIRNSt12_Vector_baseIlSaIlEE12_Vector_implEEONSt16remove_referenceIT_E4typeEOS6_(%"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* nonnull align 8 dereferenceable(24) %4) #6, !dbg !5037
  %5 = bitcast %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %call2 to %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"*, !dbg !5037
  call void @_ZNSt12_Vector_baseIlSaIlEE17_Vector_impl_dataC2EOS2_(%"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* %3, %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* nonnull align 8 dereferenceable(24) %5) #6, !dbg !5038
  ret void, !dbg !5039
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(24) %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* @_ZSt4moveIRNSt12_Vector_baseIlSaIlEE12_Vector_implEEONSt16remove_referenceIT_E4typeEOS6_(%"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* nonnull align 8 dereferenceable(24) %__t) #4 comdat !dbg !5040 {
entry:
  %__t.addr = alloca %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"*, align 8
  store %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %__t, %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"** %__t.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"** %__t.addr, metadata !5049, metadata !DIExpression()), !dbg !5050
  %0 = load %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"*, %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"** %__t.addr, align 8, !dbg !5051
  ret %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %0, !dbg !5052
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIlSaIlEE17_Vector_impl_dataC2EOS2_(%"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* %this, %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* nonnull align 8 dereferenceable(24) %__x) unnamed_addr #4 comdat align 2 !dbg !5053 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"*, align 8
  %__x.addr = alloca %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"*, align 8
  store %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* %this, %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"** %this.addr, metadata !5054, metadata !DIExpression()), !dbg !5055
  store %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* %__x, %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"** %__x.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"** %__x.addr, metadata !5056, metadata !DIExpression()), !dbg !5057
  %this1 = load %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"*, %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"** %this.addr, align 8
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data", %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* %this1, i32 0, i32 0, !dbg !5058
  %0 = load %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"*, %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"** %__x.addr, align 8, !dbg !5059
  %_M_start2 = getelementptr inbounds %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data", %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* %0, i32 0, i32 0, !dbg !5060
  %1 = load i64*, i64** %_M_start2, align 8, !dbg !5060
  store i64* %1, i64** %_M_start, align 8, !dbg !5058
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data", %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* %this1, i32 0, i32 1, !dbg !5061
  %2 = load %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"*, %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"** %__x.addr, align 8, !dbg !5062
  %_M_finish3 = getelementptr inbounds %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data", %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* %2, i32 0, i32 1, !dbg !5063
  %3 = load i64*, i64** %_M_finish3, align 8, !dbg !5063
  store i64* %3, i64** %_M_finish, align 8, !dbg !5061
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data", %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* %this1, i32 0, i32 2, !dbg !5064
  %4 = load %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"*, %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"** %__x.addr, align 8, !dbg !5065
  %_M_end_of_storage4 = getelementptr inbounds %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data", %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* %4, i32 0, i32 2, !dbg !5066
  %5 = load i64*, i64** %_M_end_of_storage4, align 8, !dbg !5066
  store i64* %5, i64** %_M_end_of_storage, align 8, !dbg !5064
  %6 = load %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"*, %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"** %__x.addr, align 8, !dbg !5067
  %_M_end_of_storage5 = getelementptr inbounds %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data", %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* %6, i32 0, i32 2, !dbg !5069
  store i64* null, i64** %_M_end_of_storage5, align 8, !dbg !5070
  %7 = load %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"*, %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"** %__x.addr, align 8, !dbg !5071
  %_M_finish6 = getelementptr inbounds %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data", %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* %7, i32 0, i32 1, !dbg !5072
  store i64* null, i64** %_M_finish6, align 8, !dbg !5073
  %8 = load %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"*, %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"** %__x.addr, align 8, !dbg !5074
  %_M_start7 = getelementptr inbounds %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data", %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* %8, i32 0, i32 0, !dbg !5075
  store i64* null, i64** %_M_start7, align 8, !dbg !5076
  ret void, !dbg !5077
}

; Function Attrs: noreturn nounwind
declare void @abort() #14

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* %destaddr, i8* %srcaddr, i64 %len) #15 !dbg !5078 {
entry:
  %destaddr.addr = alloca i8*, align 8
  %srcaddr.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %dest = alloca i8*, align 8
  %src = alloca i8*, align 8
  store i8* %destaddr, i8** %destaddr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %destaddr.addr, metadata !5084, metadata !DIExpression()), !dbg !5085
  store i8* %srcaddr, i8** %srcaddr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %srcaddr.addr, metadata !5086, metadata !DIExpression()), !dbg !5087
  store i64 %len, i64* %len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !5088, metadata !DIExpression()), !dbg !5089
  call void @llvm.dbg.declare(metadata i8** %dest, metadata !5090, metadata !DIExpression()), !dbg !5091
  %0 = load i8*, i8** %destaddr.addr, align 8, !dbg !5092
  store i8* %0, i8** %dest, align 8, !dbg !5091
  call void @llvm.dbg.declare(metadata i8** %src, metadata !5093, metadata !DIExpression()), !dbg !5094
  %1 = load i8*, i8** %srcaddr.addr, align 8, !dbg !5095
  store i8* %1, i8** %src, align 8, !dbg !5094
  br label %while.cond, !dbg !5096

while.cond:                                       ; preds = %while.body, %entry
  %2 = load i64, i64* %len.addr, align 8, !dbg !5097
  %dec = add i64 %2, -1, !dbg !5097
  store i64 %dec, i64* %len.addr, align 8, !dbg !5097
  %cmp = icmp ugt i64 %2, 0, !dbg !5098
  br i1 %cmp, label %while.body, label %while.end, !dbg !5096

while.body:                                       ; preds = %while.cond
  %3 = load i8*, i8** %src, align 8, !dbg !5099
  %incdec.ptr = getelementptr inbounds i8, i8* %3, i32 1, !dbg !5099
  store i8* %incdec.ptr, i8** %src, align 8, !dbg !5099
  %4 = load i8, i8* %3, align 1, !dbg !5100
  %5 = load i8*, i8** %dest, align 8, !dbg !5101
  %incdec.ptr1 = getelementptr inbounds i8, i8* %5, i32 1, !dbg !5101
  store i8* %incdec.ptr1, i8** %dest, align 8, !dbg !5101
  store i8 %4, i8* %5, align 1, !dbg !5102
  br label %while.cond, !dbg !5096, !llvm.loop !5103

while.end:                                        ; preds = %while.cond
  %6 = load i8*, i8** %destaddr.addr, align 8, !dbg !5104
  ret i8* %6, !dbg !5105
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memmove(i8* %dst, i8* %src, i64 %count) #15 !dbg !5106 {
entry:
  %retval = alloca i8*, align 8
  %dst.addr = alloca i8*, align 8
  %src.addr = alloca i8*, align 8
  %count.addr = alloca i64, align 8
  %a = alloca i8*, align 8
  %b = alloca i8*, align 8
  store i8* %dst, i8** %dst.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dst.addr, metadata !5108, metadata !DIExpression()), !dbg !5109
  store i8* %src, i8** %src.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %src.addr, metadata !5110, metadata !DIExpression()), !dbg !5111
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !5112, metadata !DIExpression()), !dbg !5113
  call void @llvm.dbg.declare(metadata i8** %a, metadata !5114, metadata !DIExpression()), !dbg !5115
  %0 = load i8*, i8** %dst.addr, align 8, !dbg !5116
  store i8* %0, i8** %a, align 8, !dbg !5115
  call void @llvm.dbg.declare(metadata i8** %b, metadata !5117, metadata !DIExpression()), !dbg !5118
  %1 = load i8*, i8** %src.addr, align 8, !dbg !5119
  store i8* %1, i8** %b, align 8, !dbg !5118
  %2 = load i8*, i8** %src.addr, align 8, !dbg !5120
  %3 = load i8*, i8** %dst.addr, align 8, !dbg !5122
  %cmp = icmp eq i8* %2, %3, !dbg !5123
  br i1 %cmp, label %if.then, label %if.end, !dbg !5124

if.then:                                          ; preds = %entry
  %4 = load i8*, i8** %dst.addr, align 8, !dbg !5125
  store i8* %4, i8** %retval, align 8, !dbg !5126
  br label %return, !dbg !5126

if.end:                                           ; preds = %entry
  %5 = load i8*, i8** %src.addr, align 8, !dbg !5127
  %6 = load i8*, i8** %dst.addr, align 8, !dbg !5129
  %cmp1 = icmp ugt i8* %5, %6, !dbg !5130
  br i1 %cmp1, label %while.cond, label %if.else, !dbg !5131

while.cond:                                       ; preds = %if.end, %while.body
  %7 = load i64, i64* %count.addr, align 8, !dbg !5132
  %dec = add i64 %7, -1, !dbg !5132
  store i64 %dec, i64* %count.addr, align 8, !dbg !5132
  %tobool = icmp ne i64 %7, 0, !dbg !5134
  br i1 %tobool, label %while.body, label %if.end13, !dbg !5134

while.body:                                       ; preds = %while.cond
  %8 = load i8*, i8** %b, align 8, !dbg !5135
  %incdec.ptr = getelementptr inbounds i8, i8* %8, i32 1, !dbg !5135
  store i8* %incdec.ptr, i8** %b, align 8, !dbg !5135
  %9 = load i8, i8* %8, align 1, !dbg !5136
  %10 = load i8*, i8** %a, align 8, !dbg !5137
  %incdec.ptr3 = getelementptr inbounds i8, i8* %10, i32 1, !dbg !5137
  store i8* %incdec.ptr3, i8** %a, align 8, !dbg !5137
  store i8 %9, i8* %10, align 1, !dbg !5138
  br label %while.cond, !dbg !5134, !llvm.loop !5139

if.else:                                          ; preds = %if.end
  %11 = load i64, i64* %count.addr, align 8, !dbg !5140
  %sub = sub i64 %11, 1, !dbg !5142
  %12 = load i8*, i8** %a, align 8, !dbg !5143
  %add.ptr = getelementptr inbounds i8, i8* %12, i64 %sub, !dbg !5143
  store i8* %add.ptr, i8** %a, align 8, !dbg !5143
  %13 = load i64, i64* %count.addr, align 8, !dbg !5144
  %sub4 = sub i64 %13, 1, !dbg !5145
  %14 = load i8*, i8** %b, align 8, !dbg !5146
  %add.ptr5 = getelementptr inbounds i8, i8* %14, i64 %sub4, !dbg !5146
  store i8* %add.ptr5, i8** %b, align 8, !dbg !5146
  br label %while.cond6, !dbg !5147

while.cond6:                                      ; preds = %while.body9, %if.else
  %15 = load i64, i64* %count.addr, align 8, !dbg !5148
  %dec7 = add i64 %15, -1, !dbg !5148
  store i64 %dec7, i64* %count.addr, align 8, !dbg !5148
  %tobool8 = icmp ne i64 %15, 0, !dbg !5147
  br i1 %tobool8, label %while.body9, label %if.end13, !dbg !5147

while.body9:                                      ; preds = %while.cond6
  %16 = load i8*, i8** %b, align 8, !dbg !5149
  %incdec.ptr10 = getelementptr inbounds i8, i8* %16, i32 -1, !dbg !5149
  store i8* %incdec.ptr10, i8** %b, align 8, !dbg !5149
  %17 = load i8, i8* %16, align 1, !dbg !5150
  %18 = load i8*, i8** %a, align 8, !dbg !5151
  %incdec.ptr11 = getelementptr inbounds i8, i8* %18, i32 -1, !dbg !5151
  store i8* %incdec.ptr11, i8** %a, align 8, !dbg !5151
  store i8 %17, i8* %18, align 1, !dbg !5152
  br label %while.cond6, !dbg !5147, !llvm.loop !5153

if.end13:                                         ; preds = %while.cond6, %while.cond
  %19 = load i8*, i8** %dst.addr, align 8, !dbg !5154
  store i8* %19, i8** %retval, align 8, !dbg !5155
  br label %return, !dbg !5155

return:                                           ; preds = %if.end13, %if.then
  %20 = load i8*, i8** %retval, align 8, !dbg !5156
  ret i8* %20, !dbg !5156
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* %dst, i32 %s, i64 %count) #15 !dbg !5157 {
entry:
  %dst.addr = alloca i8*, align 8
  %s.addr = alloca i32, align 4
  %count.addr = alloca i64, align 8
  %a = alloca i8*, align 8
  store i8* %dst, i8** %dst.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dst.addr, metadata !5161, metadata !DIExpression()), !dbg !5162
  store i32 %s, i32* %s.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %s.addr, metadata !5163, metadata !DIExpression()), !dbg !5164
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !5165, metadata !DIExpression()), !dbg !5166
  call void @llvm.dbg.declare(metadata i8** %a, metadata !5167, metadata !DIExpression()), !dbg !5168
  %0 = load i8*, i8** %dst.addr, align 8, !dbg !5169
  store i8* %0, i8** %a, align 8, !dbg !5168
  br label %while.cond, !dbg !5170

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i64, i64* %count.addr, align 8, !dbg !5171
  %dec = add i64 %1, -1, !dbg !5171
  store i64 %dec, i64* %count.addr, align 8, !dbg !5171
  %cmp = icmp ugt i64 %1, 0, !dbg !5172
  br i1 %cmp, label %while.body, label %while.end, !dbg !5170

while.body:                                       ; preds = %while.cond
  %2 = load i32, i32* %s.addr, align 4, !dbg !5173
  %conv = trunc i32 %2 to i8, !dbg !5173
  %3 = load i8*, i8** %a, align 8, !dbg !5174
  %incdec.ptr = getelementptr inbounds i8, i8* %3, i32 1, !dbg !5174
  store i8* %incdec.ptr, i8** %a, align 8, !dbg !5174
  store i8 %conv, i8* %3, align 1, !dbg !5175
  br label %while.cond, !dbg !5170, !llvm.loop !5176

while.end:                                        ; preds = %while.cond
  %4 = load i8*, i8** %dst.addr, align 8, !dbg !5177
  ret i8* %4, !dbg !5178
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @klee_div_zero_check(i64 %z) #15 !dbg !5179 {
entry:
  %z.addr = alloca i64, align 8
  store i64 %z, i64* %z.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %z.addr, metadata !5183, metadata !DIExpression()), !dbg !5184
  %0 = load i64, i64* %z.addr, align 8, !dbg !5185
  %cmp = icmp eq i64 %0, 0, !dbg !5187
  br i1 %cmp, label %if.then, label %if.end, !dbg !5188

if.then:                                          ; preds = %entry
  call void @klee_report_error(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.9, i64 0, i64 0), i32 14, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1.10, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.11, i64 0, i64 0)) #19, !dbg !5189
  unreachable, !dbg !5189

if.end:                                           ; preds = %entry
  ret void, !dbg !5190
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
!2362 = !DILocalVariable(name: "base", scope: !2308, file: !2309, line: 48, type: !2197)
!2363 = !DILocation(line: 48, column: 18, scope: !2308)
!2364 = !DILocation(line: 48, column: 41, scope: !2308)
!2365 = !DILocation(line: 49, column: 15, scope: !2308)
!2366 = !DILocation(line: 49, column: 20, scope: !2308)
!2367 = !DILocation(line: 49, column: 3, scope: !2308)
!2368 = !DILocalVariable(name: "offset", scope: !2308, file: !2309, line: 50, type: !95)
!2369 = !DILocation(line: 50, column: 12, scope: !2308)
!2370 = !DILocation(line: 51, column: 22, scope: !2308)
!2371 = !DILocation(line: 51, column: 3, scope: !2308)
!2372 = !DILocation(line: 53, column: 15, scope: !2308)
!2373 = !DILocation(line: 53, column: 22, scope: !2308)
!2374 = !DILocation(line: 53, column: 3, scope: !2308)
!2375 = !DILocalVariable(name: "data", scope: !2308, file: !2309, line: 54, type: !38)
!2376 = !DILocation(line: 54, column: 9, scope: !2308)
!2377 = !DILocation(line: 54, column: 16, scope: !2308)
!2378 = !DILocation(line: 54, column: 23, scope: !2308)
!2379 = !DILocation(line: 54, column: 21, scope: !2308)
!2380 = !DILocation(line: 56, column: 7, scope: !2381)
!2381 = distinct !DILexicalBlock(scope: !2308, file: !2309, line: 56, column: 7)
!2382 = !DILocation(line: 56, column: 11, scope: !2381)
!2383 = !DILocation(line: 56, column: 7, scope: !2308)
!2384 = !DILocalVariable(name: "sym", scope: !2385, file: !2309, line: 57, type: !19)
!2385 = distinct !DILexicalBlock(scope: !2381, file: !2309, line: 56, column: 16)
!2386 = !DILocation(line: 57, column: 12, scope: !2385)
!2387 = !DILocation(line: 57, column: 18, scope: !2385)
!2388 = !DILocation(line: 57, column: 22, scope: !2385)
!2389 = !DILocation(line: 57, column: 29, scope: !2385)
!2390 = !DILocation(line: 58, column: 24, scope: !2385)
!2391 = !DILocation(line: 58, column: 30, scope: !2385)
!2392 = !DILocation(line: 58, column: 5, scope: !2385)
!2393 = !DILocation(line: 59, column: 3, scope: !2385)
!2394 = !DILocalVariable(name: "t", scope: !2308, file: !2309, line: 62, type: !2395)
!2395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2396, size: 64)
!2396 = !DIDerivedType(tag: DW_TAG_typedef, name: "TF_Tensor", file: !2397, line: 57, baseType: !2398)
!2397 = !DIFile(filename: "tensorflow/c/tf_tensor.h", directory: "/home/mushfiqur/Desktop/Github/tensorflow")
!2398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "TF_Tensor", file: !2399, line: 41, size: 64, flags: DIFlagTypePassByValue, elements: !2400, identifier: "_ZTS9TF_Tensor")
!2399 = !DIFile(filename: "tensorflow/c/tf_tensor_internal.h", directory: "/home/mushfiqur/Desktop/Github/tensorflow")
!2400 = !{!2401}
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "tensor", scope: !2398, file: !2399, line: 42, baseType: !2402, size: 64)
!2402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2403, size: 64)
!2403 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "AbstractTensorInterface", scope: !4, file: !2404, line: 31, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !2405, vtableHolder: !2403, identifier: "_ZTSN10tensorflow23AbstractTensorInterfaceE")
!2404 = !DIFile(filename: "tensorflow/c/tensor_interface.h", directory: "/home/mushfiqur/Desktop/Github/tensorflow")
!2405 = !{!2406, !2407, !2411, !2416, !2419, !2422, !2425, !2428, !2431, !2434, !2435, !2438}
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "_vptr$AbstractTensorInterface", scope: !2404, file: !2404, baseType: !12, size: 64, flags: DIFlagArtificial)
!2407 = !DISubprogram(name: "Release", linkageName: "_ZN10tensorflow23AbstractTensorInterface7ReleaseEv", scope: !2403, file: !2404, line: 34, type: !2408, scopeLine: 34, containingType: !2403, virtualIndex: 0, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual)
!2408 = !DISubroutineType(types: !2409)
!2409 = !{null, !2410}
!2410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2403, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2411 = !DISubprogram(name: "Type", linkageName: "_ZNK10tensorflow23AbstractTensorInterface4TypeEv", scope: !2403, file: !2404, line: 37, type: !2412, scopeLine: 37, containingType: !2403, virtualIndex: 1, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual)
!2412 = !DISubroutineType(types: !2413)
!2413 = !{!100, !2414}
!2414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2415, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2415 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2403)
!2416 = !DISubprogram(name: "NumDims", linkageName: "_ZNK10tensorflow23AbstractTensorInterface7NumDimsEv", scope: !2403, file: !2404, line: 39, type: !2417, scopeLine: 39, containingType: !2403, virtualIndex: 2, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual)
!2417 = !DISubroutineType(types: !2418)
!2418 = !{!16, !2414}
!2419 = !DISubprogram(name: "Dim", linkageName: "_ZNK10tensorflow23AbstractTensorInterface3DimEi", scope: !2403, file: !2404, line: 41, type: !2420, scopeLine: 41, containingType: !2403, virtualIndex: 3, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual)
!2420 = !DISubroutineType(types: !2421)
!2421 = !{!64, !2414, !16}
!2422 = !DISubprogram(name: "NumElements", linkageName: "_ZNK10tensorflow23AbstractTensorInterface11NumElementsEv", scope: !2403, file: !2404, line: 43, type: !2423, scopeLine: 43, containingType: !2403, virtualIndex: 4, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual)
!2423 = !DISubroutineType(types: !2424)
!2424 = !{!64, !2414}
!2425 = !DISubprogram(name: "ByteSize", linkageName: "_ZNK10tensorflow23AbstractTensorInterface8ByteSizeEv", scope: !2403, file: !2404, line: 45, type: !2426, scopeLine: 45, containingType: !2403, virtualIndex: 5, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual)
!2426 = !DISubroutineType(types: !2427)
!2427 = !{!19, !2414}
!2428 = !DISubprogram(name: "Data", linkageName: "_ZNK10tensorflow23AbstractTensorInterface4DataEv", scope: !2403, file: !2404, line: 47, type: !2429, scopeLine: 47, containingType: !2403, virtualIndex: 6, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual)
!2429 = !DISubroutineType(types: !2430)
!2430 = !{!38, !2414}
!2431 = !DISubprogram(name: "IsAligned", linkageName: "_ZNK10tensorflow23AbstractTensorInterface9IsAlignedEv", scope: !2403, file: !2404, line: 50, type: !2432, scopeLine: 50, containingType: !2403, virtualIndex: 7, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual)
!2432 = !DISubroutineType(types: !2433)
!2433 = !{!53, !2414}
!2434 = !DISubprogram(name: "CanMove", linkageName: "_ZNK10tensorflow23AbstractTensorInterface7CanMoveEv", scope: !2403, file: !2404, line: 52, type: !2432, scopeLine: 52, containingType: !2403, virtualIndex: 8, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual)
!2435 = !DISubprogram(name: "SummarizeValue", linkageName: "_ZNK10tensorflow23AbstractTensorInterface14SummarizeValueB5cxx11Ev", scope: !2403, file: !2404, line: 54, type: !2436, scopeLine: 54, containingType: !2403, virtualIndex: 9, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual)
!2436 = !DISubroutineType(types: !2437)
!2437 = !{!29, !2414}
!2438 = !DISubprogram(name: "~AbstractTensorInterface", scope: !2403, file: !2404, line: 57, type: !2408, scopeLine: 57, containingType: !2403, virtualIndex: 0, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!2439 = !DILocation(line: 62, column: 14, scope: !2308)
!2440 = !DILocation(line: 62, column: 31, scope: !2308)
!2441 = !DILocation(line: 62, column: 38, scope: !2308)
!2442 = !DILocation(line: 62, column: 60, scope: !2308)
!2443 = !DILocation(line: 62, column: 66, scope: !2308)
!2444 = !DILocation(line: 62, column: 18, scope: !2308)
!2445 = !DILocation(line: 66, column: 7, scope: !2446)
!2446 = distinct !DILexicalBlock(scope: !2308, file: !2309, line: 66, column: 7)
!2447 = !DILocation(line: 66, column: 9, scope: !2446)
!2448 = !DILocation(line: 66, column: 7, scope: !2308)
!2449 = !DILocation(line: 69, column: 10, scope: !2450)
!2450 = distinct !DILexicalBlock(scope: !2451, file: !2309, line: 69, column: 9)
!2451 = distinct !DILexicalBlock(scope: !2446, file: !2309, line: 66, column: 18)
!2452 = !DILocation(line: 69, column: 18, scope: !2450)
!2453 = !DILocation(line: 69, column: 24, scope: !2450)
!2454 = !DILocation(line: 69, column: 28, scope: !2450)
!2455 = !DILocation(line: 69, column: 36, scope: !2450)
!2456 = !DILocation(line: 69, column: 9, scope: !2451)
!2457 = !DILocation(line: 71, column: 5, scope: !2458)
!2458 = distinct !DILexicalBlock(scope: !2450, file: !2309, line: 69, column: 43)
!2459 = !DILocation(line: 75, column: 5, scope: !2451)
!2460 = !DILocation(line: 81, column: 19, scope: !2308)
!2461 = !DILocation(line: 81, column: 3, scope: !2308)
!2462 = !DILocation(line: 82, column: 8, scope: !2308)
!2463 = !DILocation(line: 82, column: 3, scope: !2308)
!2464 = !DILocation(line: 83, column: 3, scope: !2308)
!2465 = !DILocation(line: 84, column: 1, scope: !2308)
!2466 = distinct !DISubprogram(name: "dummy_deallocator", linkageName: "_ZL17dummy_deallocatorPvmS_", scope: !2309, file: !2309, line: 14, type: !2467, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2193, retainedNodes: !212)
!2467 = !DISubroutineType(types: !2468)
!2468 = !{null, !38, !19, !38}
!2469 = !DILocalVariable(name: "data", arg: 1, scope: !2466, file: !2309, line: 14, type: !38)
!2470 = !DILocation(line: 14, column: 37, scope: !2466)
!2471 = !DILocalVariable(name: "len", arg: 2, scope: !2466, file: !2309, line: 14, type: !19)
!2472 = !DILocation(line: 14, column: 50, scope: !2466)
!2473 = !DILocalVariable(name: "arg", arg: 3, scope: !2466, file: !2309, line: 14, type: !38)
!2474 = !DILocation(line: 14, column: 61, scope: !2466)
!2475 = !DILocation(line: 14, column: 102, scope: !2466)
!2476 = distinct !DISubprogram(name: "allocate_tensor", linkageName: "_ZN10tensorflow15allocate_tensorEPKcmPNS_9AllocatorE", scope: !4, file: !2180, line: 48, type: !2477, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, retainedNodes: !212)
!2477 = !DISubroutineType(types: !2478)
!2478 = !{!38, !226, !19, !7}
!2479 = !DILocalVariable(name: "operation", arg: 1, scope: !2476, file: !2180, line: 48, type: !226)
!2480 = !DILocation(line: 48, column: 35, scope: !2476)
!2481 = !DILocalVariable(name: "len", arg: 2, scope: !2476, file: !2180, line: 48, type: !19)
!2482 = !DILocation(line: 48, column: 53, scope: !2476)
!2483 = !DILocalVariable(name: "allocator", arg: 3, scope: !2476, file: !2180, line: 48, type: !7)
!2484 = !DILocation(line: 48, column: 69, scope: !2476)
!2485 = !DILocalVariable(name: "data", scope: !2476, file: !2180, line: 49, type: !38)
!2486 = !DILocation(line: 49, column: 9, scope: !2476)
!2487 = !DILocation(line: 49, column: 16, scope: !2476)
!2488 = !DILocation(line: 49, column: 62, scope: !2476)
!2489 = !DILocation(line: 49, column: 27, scope: !2476)
!2490 = !DILocation(line: 55, column: 10, scope: !2476)
!2491 = !DILocation(line: 55, column: 3, scope: !2476)
!2492 = distinct !DISubprogram(name: "allocate_tensor", linkageName: "_ZN10tensorflow15allocate_tensorEPKcm", scope: !4, file: !2180, line: 58, type: !2493, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, retainedNodes: !212)
!2493 = !DISubroutineType(types: !2494)
!2494 = !{!38, !226, !19}
!2495 = !DILocalVariable(name: "operation", arg: 1, scope: !2492, file: !2180, line: 58, type: !226)
!2496 = !DILocation(line: 58, column: 35, scope: !2492)
!2497 = !DILocalVariable(name: "len", arg: 2, scope: !2492, file: !2180, line: 58, type: !19)
!2498 = !DILocation(line: 58, column: 53, scope: !2492)
!2499 = !DILocation(line: 59, column: 26, scope: !2492)
!2500 = !DILocation(line: 59, column: 37, scope: !2492)
!2501 = !DILocation(line: 59, column: 42, scope: !2492)
!2502 = !DILocation(line: 59, column: 10, scope: !2492)
!2503 = !DILocation(line: 59, column: 3, scope: !2492)
!2504 = !DILocation(line: 22, column: 3, scope: !2)
!2505 = !{!"branch_weights", i32 1, i32 1048575}
!2506 = !DILocation(line: 22, column: 35, scope: !2)
!2507 = !DILocation(line: 22, column: 39, scope: !2)
!2508 = !DILocation(line: 23, column: 10, scope: !2)
!2509 = !DILocation(line: 23, column: 3, scope: !2)
!2510 = !DILocation(line: 24, column: 1, scope: !2)
!2511 = distinct !DISubprogram(name: "StubCPUAllocator", linkageName: "_ZN10tensorflow16StubCPUAllocatorC2Ev", scope: !2183, file: !3, line: 13, type: !2187, scopeLine: 13, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !2512, retainedNodes: !212)
!2512 = !DISubprogram(name: "StubCPUAllocator", scope: !2183, type: !2187, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!2513 = !DILocalVariable(name: "this", arg: 1, scope: !2511, type: !2182, flags: DIFlagArtificial | DIFlagObjectPointer)
!2514 = !DILocation(line: 0, scope: !2511)
!2515 = !DILocation(line: 13, column: 7, scope: !2511)
!2516 = distinct !DISubprogram(name: "Allocator", linkageName: "_ZN10tensorflow9AllocatorC2Ev", scope: !8, file: !9, line: 76, type: !23, scopeLine: 76, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !2517, retainedNodes: !212)
!2517 = !DISubprogram(name: "Allocator", scope: !8, type: !23, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!2518 = !DILocalVariable(name: "this", arg: 1, scope: !2516, type: !7, flags: DIFlagArtificial | DIFlagObjectPointer)
!2519 = !DILocation(line: 0, scope: !2516)
!2520 = !DILocation(line: 76, column: 7, scope: !2516)
!2521 = distinct !DISubprogram(name: "~StubCPUAllocator", linkageName: "_ZN10tensorflow16StubCPUAllocatorD2Ev", scope: !2183, file: !3, line: 15, type: !2187, scopeLine: 15, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !2186, retainedNodes: !212)
!2522 = !DILocalVariable(name: "this", arg: 1, scope: !2521, type: !2182, flags: DIFlagArtificial | DIFlagObjectPointer)
!2523 = !DILocation(line: 0, scope: !2521)
!2524 = !DILocation(line: 15, column: 40, scope: !2525)
!2525 = distinct !DILexicalBlock(scope: !2521, file: !3, line: 15, column: 40)
!2526 = !DILocation(line: 15, column: 40, scope: !2521)
!2527 = distinct !DISubprogram(name: "~StubCPUAllocator", linkageName: "_ZN10tensorflow16StubCPUAllocatorD0Ev", scope: !2183, file: !3, line: 15, type: !2187, scopeLine: 15, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !2186, retainedNodes: !212)
!2528 = !DILocalVariable(name: "this", arg: 1, scope: !2527, type: !2182, flags: DIFlagArtificial | DIFlagObjectPointer)
!2529 = !DILocation(line: 0, scope: !2527)
!2530 = !DILocation(line: 15, column: 40, scope: !2527)
!2531 = distinct !DISubprogram(name: "Name", linkageName: "_ZN10tensorflow16StubCPUAllocator4NameB5cxx11Ev", scope: !2183, file: !3, line: 16, type: !2191, scopeLine: 16, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !2190, retainedNodes: !212)
!2532 = !DILocalVariable(name: "this", arg: 1, scope: !2531, type: !2182, flags: DIFlagArtificial | DIFlagObjectPointer)
!2533 = !DILocation(line: 0, scope: !2531)
!2534 = !DILocation(line: 16, column: 40, scope: !2531)
!2535 = !DILocation(line: 16, column: 33, scope: !2531)
!2536 = !DILocation(line: 16, column: 60, scope: !2531)
!2537 = distinct !DISubprogram(name: "AllocateRaw", linkageName: "_ZN10tensorflow9Allocator11AllocateRawEmm", scope: !8, file: !9, line: 84, type: !36, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !35, retainedNodes: !212)
!2538 = !DILocalVariable(name: "this", arg: 1, scope: !2537, type: !7, flags: DIFlagArtificial | DIFlagObjectPointer)
!2539 = !DILocation(line: 0, scope: !2537)
!2540 = !DILocalVariable(name: "alignment", arg: 2, scope: !2537, file: !9, line: 84, type: !19)
!2541 = !DILocation(line: 84, column: 36, scope: !2537)
!2542 = !DILocalVariable(name: "num_bytes", arg: 3, scope: !2537, file: !9, line: 84, type: !19)
!2543 = !DILocation(line: 84, column: 54, scope: !2537)
!2544 = !DILocation(line: 85, column: 27, scope: !2537)
!2545 = !DILocation(line: 85, column: 55, scope: !2537)
!2546 = !DILocation(line: 85, column: 12, scope: !2537)
!2547 = !DILocation(line: 85, column: 5, scope: !2537)
!2548 = distinct !DISubprogram(name: "DeallocateRaw", linkageName: "_ZN10tensorflow9Allocator13DeallocateRawEPv", scope: !8, file: !9, line: 88, type: !40, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !39, retainedNodes: !212)
!2549 = !DILocalVariable(name: "this", arg: 1, scope: !2548, type: !7, flags: DIFlagArtificial | DIFlagObjectPointer)
!2550 = !DILocation(line: 0, scope: !2548)
!2551 = !DILocalVariable(name: "ptr", arg: 2, scope: !2548, file: !9, line: 88, type: !38)
!2552 = !DILocation(line: 88, column: 36, scope: !2548)
!2553 = !DILocation(line: 88, column: 61, scope: !2548)
!2554 = !DILocation(line: 88, column: 43, scope: !2548)
!2555 = !DILocation(line: 88, column: 67, scope: !2548)
!2556 = distinct !DISubprogram(name: "AllocateRaw", linkageName: "_ZN10tensorflow9Allocator11AllocateRawEmmPKv", scope: !8, file: !9, line: 91, type: !43, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !42, retainedNodes: !212)
!2557 = !DILocalVariable(name: "this", arg: 1, scope: !2556, type: !7, flags: DIFlagArtificial | DIFlagObjectPointer)
!2558 = !DILocation(line: 0, scope: !2556)
!2559 = !DILocalVariable(name: "alignment", arg: 2, scope: !2556, file: !9, line: 91, type: !19)
!2560 = !DILocation(line: 91, column: 36, scope: !2556)
!2561 = !DILocalVariable(name: "num_bytes", arg: 3, scope: !2556, file: !9, line: 91, type: !19)
!2562 = !DILocation(line: 91, column: 54, scope: !2556)
!2563 = !DILocalVariable(arg: 4, scope: !2556, file: !9, line: 92, type: !45)
!2564 = !DILocation(line: 92, column: 60, scope: !2556)
!2565 = !DILocation(line: 93, column: 24, scope: !2556)
!2566 = !DILocation(line: 93, column: 35, scope: !2556)
!2567 = !DILocation(line: 93, column: 12, scope: !2556)
!2568 = !DILocation(line: 93, column: 5, scope: !2556)
!2569 = distinct !DISubprogram(name: "DeallocateRaw", linkageName: "_ZN10tensorflow9Allocator13DeallocateRawEPvmm", scope: !8, file: !9, line: 95, type: !48, scopeLine: 95, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !47, retainedNodes: !212)
!2570 = !DILocalVariable(name: "this", arg: 1, scope: !2569, type: !7, flags: DIFlagArtificial | DIFlagObjectPointer)
!2571 = !DILocation(line: 0, scope: !2569)
!2572 = !DILocalVariable(name: "ptr", arg: 2, scope: !2569, file: !9, line: 95, type: !38)
!2573 = !DILocation(line: 95, column: 36, scope: !2569)
!2574 = !DILocalVariable(arg: 3, scope: !2569, file: !9, line: 95, type: !19)
!2575 = !DILocation(line: 95, column: 47, scope: !2569)
!2576 = !DILocalVariable(arg: 4, scope: !2569, file: !9, line: 95, type: !19)
!2577 = !DILocation(line: 95, column: 55, scope: !2569)
!2578 = !DILocation(line: 96, column: 19, scope: !2569)
!2579 = !DILocation(line: 96, column: 5, scope: !2569)
!2580 = !DILocation(line: 97, column: 3, scope: !2569)
!2581 = distinct !DISubprogram(name: "TracksAllocationSizes", linkageName: "_ZNK10tensorflow9Allocator21TracksAllocationSizesEv", scope: !8, file: !9, line: 99, type: !51, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !50, retainedNodes: !212)
!2582 = !DILocalVariable(name: "this", arg: 1, scope: !2581, type: !2583, flags: DIFlagArtificial | DIFlagObjectPointer)
!2583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!2584 = !DILocation(line: 0, scope: !2581)
!2585 = !DILocation(line: 99, column: 48, scope: !2581)
!2586 = distinct !DISubprogram(name: "AllocatesOpaqueHandle", linkageName: "_ZNK10tensorflow9Allocator21AllocatesOpaqueHandleEv", scope: !8, file: !9, line: 100, type: !51, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !56, retainedNodes: !212)
!2587 = !DILocalVariable(name: "this", arg: 1, scope: !2586, type: !2583, flags: DIFlagArtificial | DIFlagObjectPointer)
!2588 = !DILocation(line: 0, scope: !2586)
!2589 = !DILocation(line: 100, column: 48, scope: !2586)
!2590 = distinct !DISubprogram(name: "RequestedSize", linkageName: "_ZNK10tensorflow9Allocator13RequestedSizeEPKv", scope: !8, file: !9, line: 102, type: !58, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !57, retainedNodes: !212)
!2591 = !DILocalVariable(name: "this", arg: 1, scope: !2590, type: !2583, flags: DIFlagArtificial | DIFlagObjectPointer)
!2592 = !DILocation(line: 0, scope: !2590)
!2593 = !DILocalVariable(arg: 2, scope: !2590, file: !9, line: 102, type: !45)
!2594 = !DILocation(line: 102, column: 51, scope: !2590)
!2595 = !DILocation(line: 102, column: 61, scope: !2590)
!2596 = distinct !DISubprogram(name: "AllocatedSize", linkageName: "_ZNK10tensorflow9Allocator13AllocatedSizeEPKv", scope: !8, file: !9, line: 103, type: !58, scopeLine: 103, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !60, retainedNodes: !212)
!2597 = !DILocalVariable(name: "this", arg: 1, scope: !2596, type: !2583, flags: DIFlagArtificial | DIFlagObjectPointer)
!2598 = !DILocation(line: 0, scope: !2596)
!2599 = !DILocalVariable(arg: 2, scope: !2596, file: !9, line: 103, type: !45)
!2600 = !DILocation(line: 103, column: 51, scope: !2596)
!2601 = !DILocation(line: 103, column: 61, scope: !2596)
!2602 = distinct !DISubprogram(name: "AllocationId", linkageName: "_ZNK10tensorflow9Allocator12AllocationIdEPKv", scope: !8, file: !9, line: 104, type: !62, scopeLine: 104, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !61, retainedNodes: !212)
!2603 = !DILocalVariable(name: "this", arg: 1, scope: !2602, type: !2583, flags: DIFlagArtificial | DIFlagObjectPointer)
!2604 = !DILocation(line: 0, scope: !2602)
!2605 = !DILocalVariable(arg: 2, scope: !2602, file: !9, line: 104, type: !45)
!2606 = !DILocation(line: 104, column: 51, scope: !2602)
!2607 = !DILocation(line: 104, column: 61, scope: !2602)
!2608 = distinct !DISubprogram(name: "AllocatedSizeSlow", linkageName: "_ZNK10tensorflow9Allocator17AllocatedSizeSlowEPKv", scope: !8, file: !9, line: 105, type: !58, scopeLine: 105, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !69, retainedNodes: !212)
!2609 = !DILocalVariable(name: "this", arg: 1, scope: !2608, type: !2583, flags: DIFlagArtificial | DIFlagObjectPointer)
!2610 = !DILocation(line: 0, scope: !2608)
!2611 = !DILocalVariable(arg: 2, scope: !2608, file: !9, line: 105, type: !45)
!2612 = !DILocation(line: 105, column: 55, scope: !2608)
!2613 = !DILocation(line: 105, column: 65, scope: !2608)
!2614 = distinct !DISubprogram(name: "ClearStats", linkageName: "_ZN10tensorflow9Allocator10ClearStatsEv", scope: !8, file: !9, line: 108, type: !71, scopeLine: 108, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !70, retainedNodes: !212)
!2615 = !DILocalVariable(name: "this", arg: 1, scope: !2614, type: !7, flags: DIFlagArtificial | DIFlagObjectPointer)
!2616 = !DILocation(line: 0, scope: !2614)
!2617 = !DILocation(line: 108, column: 31, scope: !2614)
!2618 = distinct !DISubprogram(name: "SetSafeFrontier", linkageName: "_ZN10tensorflow9Allocator15SetSafeFrontierEm", scope: !8, file: !9, line: 110, type: !74, scopeLine: 110, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !73, retainedNodes: !212)
!2619 = !DILocalVariable(name: "this", arg: 1, scope: !2618, type: !7, flags: DIFlagArtificial | DIFlagObjectPointer)
!2620 = !DILocation(line: 0, scope: !2618)
!2621 = !DILocalVariable(arg: 2, scope: !2618, file: !9, line: 110, type: !76)
!2622 = !DILocation(line: 110, column: 40, scope: !2618)
!2623 = !DILocation(line: 110, column: 43, scope: !2618)
!2624 = distinct !DISubprogram(name: "SetStreamAndPreallocateMemory", linkageName: "_ZN10tensorflow9Allocator29SetStreamAndPreallocateMemoryEPv", scope: !8, file: !9, line: 111, type: !40, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !79, retainedNodes: !212)
!2625 = !DILocalVariable(name: "this", arg: 1, scope: !2624, type: !7, flags: DIFlagArtificial | DIFlagObjectPointer)
!2626 = !DILocation(line: 0, scope: !2624)
!2627 = !DILocalVariable(arg: 2, scope: !2624, file: !9, line: 111, type: !38)
!2628 = !DILocation(line: 111, column: 62, scope: !2624)
!2629 = !DILocation(line: 111, column: 65, scope: !2624)
!2630 = distinct !DISubprogram(name: "GetMemoryType", linkageName: "_ZNK10tensorflow9Allocator13GetMemoryTypeEv", scope: !8, file: !9, line: 113, type: !81, scopeLine: 113, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !80, retainedNodes: !212)
!2631 = !DILocalVariable(name: "this", arg: 1, scope: !2630, type: !2583, flags: DIFlagArtificial | DIFlagObjectPointer)
!2632 = !DILocation(line: 0, scope: !2630)
!2633 = !DILocation(line: 114, column: 5, scope: !2630)
!2634 = distinct !DISubprogram(name: "basic_string<std::allocator<char> >", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_", scope: !32, file: !205, line: 533, type: !2635, scopeLine: 535, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, templateParams: !2639, declaration: !2638, retainedNodes: !212)
!2635 = !DISubroutineType(types: !2636)
!2636 = !{null, !2637, !226, !269}
!2637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2638 = !DISubprogram(name: "basic_string<std::allocator<char> >", scope: !32, file: !205, line: 533, type: !2635, scopeLine: 533, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0, templateParams: !2639)
!2639 = !{!2640}
!2640 = !DITemplateTypeParameter(type: !245)
!2641 = !DILocalVariable(name: "this", arg: 1, scope: !2634, type: !2642, flags: DIFlagArtificial | DIFlagObjectPointer)
!2642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!2643 = !DILocation(line: 0, scope: !2634)
!2644 = !DILocalVariable(name: "__s", arg: 2, scope: !2634, file: !205, line: 533, type: !226)
!2645 = !DILocation(line: 533, column: 34, scope: !2634)
!2646 = !DILocalVariable(name: "__a", arg: 3, scope: !2634, file: !205, line: 533, type: !269)
!2647 = !DILocation(line: 533, column: 53, scope: !2634)
!2648 = !DILocation(line: 534, column: 9, scope: !2634)
!2649 = !DILocation(line: 534, column: 21, scope: !2634)
!2650 = !DILocation(line: 534, column: 38, scope: !2634)
!2651 = !DILocalVariable(name: "__end", scope: !2652, file: !205, line: 536, type: !226)
!2652 = distinct !DILexicalBlock(scope: !2634, file: !205, line: 535, column: 7)
!2653 = !DILocation(line: 536, column: 16, scope: !2652)
!2654 = !DILocation(line: 536, column: 24, scope: !2652)
!2655 = !DILocation(line: 536, column: 30, scope: !2652)
!2656 = !DILocation(line: 536, column: 56, scope: !2652)
!2657 = !DILocation(line: 536, column: 36, scope: !2652)
!2658 = !DILocation(line: 536, column: 34, scope: !2652)
!2659 = !DILocation(line: 539, column: 15, scope: !2652)
!2660 = !DILocation(line: 539, column: 20, scope: !2652)
!2661 = !DILocation(line: 539, column: 27, scope: !2652)
!2662 = !DILocation(line: 539, column: 2, scope: !2652)
!2663 = !DILocation(line: 540, column: 7, scope: !2634)
!2664 = !DILocation(line: 540, column: 7, scope: !2652)
!2665 = distinct !DISubprogram(name: "length", linkageName: "_ZNSt11char_traitsIcE6lengthEPKc", scope: !2667, file: !2666, line: 393, type: !2685, scopeLine: 394, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !2684, retainedNodes: !212)
!2666 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/char_traits.h", directory: "")
!2667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "char_traits<char>", scope: !31, file: !2666, line: 344, size: 8, flags: DIFlagTypePassByValue, elements: !2668, templateParams: !2716, identifier: "_ZTSSt11char_traitsIcE")
!2668 = !{!2669, !2676, !2679, !2680, !2684, !2687, !2690, !2694, !2695, !2698, !2704, !2707, !2710, !2713}
!2669 = !DISubprogram(name: "assign", linkageName: "_ZNSt11char_traitsIcE6assignERcRKc", scope: !2667, file: !2666, line: 356, type: !2670, scopeLine: 356, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2670 = !DISubroutineType(types: !2671)
!2671 = !{null, !2672, !2674}
!2672 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2673, size: 64)
!2673 = !DIDerivedType(tag: DW_TAG_typedef, name: "char_type", scope: !2667, file: !2666, line: 346, baseType: !228)
!2674 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2675, size: 64)
!2675 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2673)
!2676 = !DISubprogram(name: "eq", linkageName: "_ZNSt11char_traitsIcE2eqERKcS2_", scope: !2667, file: !2666, line: 360, type: !2677, scopeLine: 360, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2677 = !DISubroutineType(types: !2678)
!2678 = !{!53, !2674, !2674}
!2679 = !DISubprogram(name: "lt", linkageName: "_ZNSt11char_traitsIcE2ltERKcS2_", scope: !2667, file: !2666, line: 364, type: !2677, scopeLine: 364, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2680 = !DISubprogram(name: "compare", linkageName: "_ZNSt11char_traitsIcE7compareEPKcS2_m", scope: !2667, file: !2666, line: 372, type: !2681, scopeLine: 372, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2681 = !DISubroutineType(types: !2682)
!2682 = !{!16, !2683, !2683, !210}
!2683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2675, size: 64)
!2684 = !DISubprogram(name: "length", linkageName: "_ZNSt11char_traitsIcE6lengthEPKc", scope: !2667, file: !2666, line: 393, type: !2685, scopeLine: 393, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2685 = !DISubroutineType(types: !2686)
!2686 = !{!210, !2683}
!2687 = !DISubprogram(name: "find", linkageName: "_ZNSt11char_traitsIcE4findEPKcmRS1_", scope: !2667, file: !2666, line: 403, type: !2688, scopeLine: 403, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2688 = !DISubroutineType(types: !2689)
!2689 = !{!2683, !2683, !210, !2674}
!2690 = !DISubprogram(name: "move", linkageName: "_ZNSt11char_traitsIcE4moveEPcPKcm", scope: !2667, file: !2666, line: 417, type: !2691, scopeLine: 417, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2691 = !DISubroutineType(types: !2692)
!2692 = !{!2693, !2693, !2683, !210}
!2693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2673, size: 64)
!2694 = !DISubprogram(name: "copy", linkageName: "_ZNSt11char_traitsIcE4copyEPcPKcm", scope: !2667, file: !2666, line: 429, type: !2691, scopeLine: 429, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2695 = !DISubprogram(name: "assign", linkageName: "_ZNSt11char_traitsIcE6assignEPcmc", scope: !2667, file: !2666, line: 441, type: !2696, scopeLine: 441, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2696 = !DISubroutineType(types: !2697)
!2697 = !{!2693, !2693, !210, !2673}
!2698 = !DISubprogram(name: "to_char_type", linkageName: "_ZNSt11char_traitsIcE12to_char_typeERKi", scope: !2667, file: !2666, line: 453, type: !2699, scopeLine: 453, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2699 = !DISubroutineType(types: !2700)
!2700 = !{!2673, !2701}
!2701 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2702, size: 64)
!2702 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2703)
!2703 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_type", scope: !2667, file: !2666, line: 347, baseType: !16)
!2704 = !DISubprogram(name: "to_int_type", linkageName: "_ZNSt11char_traitsIcE11to_int_typeERKc", scope: !2667, file: !2666, line: 459, type: !2705, scopeLine: 459, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2705 = !DISubroutineType(types: !2706)
!2706 = !{!2703, !2674}
!2707 = !DISubprogram(name: "eq_int_type", linkageName: "_ZNSt11char_traitsIcE11eq_int_typeERKiS2_", scope: !2667, file: !2666, line: 463, type: !2708, scopeLine: 463, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2708 = !DISubroutineType(types: !2709)
!2709 = !{!53, !2701, !2701}
!2710 = !DISubprogram(name: "eof", linkageName: "_ZNSt11char_traitsIcE3eofEv", scope: !2667, file: !2666, line: 467, type: !2711, scopeLine: 467, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2711 = !DISubroutineType(types: !2712)
!2712 = !{!2703}
!2713 = !DISubprogram(name: "not_eof", linkageName: "_ZNSt11char_traitsIcE7not_eofERKi", scope: !2667, file: !2666, line: 471, type: !2714, scopeLine: 471, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2714 = !DISubroutineType(types: !2715)
!2715 = !{!2703, !2701}
!2716 = !{!2717}
!2717 = !DITemplateTypeParameter(name: "_CharT", type: !228)
!2718 = !DILocalVariable(name: "__s", arg: 1, scope: !2665, file: !2666, line: 393, type: !2683)
!2719 = !DILocation(line: 393, column: 31, scope: !2665)
!2720 = !DILocation(line: 396, column: 26, scope: !2721)
!2721 = distinct !DILexicalBlock(scope: !2665, file: !2666, line: 396, column: 6)
!2722 = !DILocalVariable(name: "__s", arg: 1, scope: !2723, file: !2666, line: 285, type: !226)
!2723 = distinct !DISubprogram(name: "__constant_string_p<char>", linkageName: "_ZSt19__constant_string_pIcEbPKT_", scope: !31, file: !2666, line: 285, type: !2724, scopeLine: 286, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, templateParams: !2716, retainedNodes: !212)
!2724 = !DISubroutineType(types: !2725)
!2725 = !{!53, !226}
!2726 = !DILocation(line: 285, column: 39, scope: !2723, inlinedAt: !2727)
!2727 = distinct !DILocation(line: 396, column: 6, scope: !2721)
!2728 = !DILocation(line: 396, column: 6, scope: !2665)
!2729 = !DILocation(line: 397, column: 53, scope: !2721)
!2730 = !DILocation(line: 397, column: 11, scope: !2721)
!2731 = !DILocation(line: 397, column: 4, scope: !2721)
!2732 = !DILocation(line: 399, column: 26, scope: !2665)
!2733 = !DILocation(line: 399, column: 9, scope: !2665)
!2734 = !DILocation(line: 399, column: 2, scope: !2665)
!2735 = !DILocation(line: 400, column: 7, scope: !2665)
!2736 = distinct !DISubprogram(name: "_M_construct<const char *>", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag", scope: !32, file: !33, line: 207, type: !2737, scopeLine: 209, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, templateParams: !2744, declaration: !2743, retainedNodes: !212)
!2737 = !DISubroutineType(types: !2738)
!2738 = !{null, !2637, !226, !226, !2739}
!2739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "forward_iterator_tag", scope: !31, file: !655, line: 99, size: 8, flags: DIFlagTypePassByValue, elements: !2740, identifier: "_ZTSSt20forward_iterator_tag")
!2740 = !{!2741}
!2741 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !2739, baseType: !2742, extraData: i32 0)
!2742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_iterator_tag", scope: !31, file: !655, line: 93, size: 8, flags: DIFlagTypePassByValue, elements: !212, identifier: "_ZTSSt18input_iterator_tag")
!2743 = !DISubprogram(name: "_M_construct<const char *>", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag", scope: !32, file: !205, line: 287, type: !2737, scopeLine: 287, flags: DIFlagPrototyped, spFlags: 0, templateParams: !2744)
!2744 = !{!2745}
!2745 = !DITemplateTypeParameter(name: "_FwdIterator", type: !226)
!2746 = !DILocalVariable(name: "this", arg: 1, scope: !2736, type: !2642, flags: DIFlagArtificial | DIFlagObjectPointer)
!2747 = !DILocation(line: 0, scope: !2736)
!2748 = !DILocalVariable(name: "__beg", arg: 2, scope: !2736, file: !205, line: 287, type: !226)
!2749 = !DILocation(line: 287, column: 35, scope: !2736)
!2750 = !DILocalVariable(name: "__end", arg: 3, scope: !2736, file: !205, line: 287, type: !226)
!2751 = !DILocation(line: 287, column: 55, scope: !2736)
!2752 = !DILocalVariable(arg: 4, scope: !2736, file: !205, line: 288, type: !2739)
!2753 = !DILocation(line: 288, column: 33, scope: !2736)
!2754 = !DILocation(line: 211, column: 35, scope: !2755)
!2755 = distinct !DILexicalBlock(scope: !2736, file: !33, line: 211, column: 6)
!2756 = !DILocation(line: 211, column: 6, scope: !2755)
!2757 = !DILocation(line: 211, column: 42, scope: !2755)
!2758 = !DILocation(line: 211, column: 45, scope: !2755)
!2759 = !DILocation(line: 211, column: 54, scope: !2755)
!2760 = !DILocation(line: 211, column: 51, scope: !2755)
!2761 = !DILocation(line: 211, column: 6, scope: !2736)
!2762 = !DILocation(line: 212, column: 4, scope: !2755)
!2763 = !DILocalVariable(name: "__dnew", scope: !2736, file: !33, line: 215, type: !229)
!2764 = !DILocation(line: 215, column: 12, scope: !2736)
!2765 = !DILocation(line: 215, column: 58, scope: !2736)
!2766 = !DILocation(line: 215, column: 65, scope: !2736)
!2767 = !DILocation(line: 215, column: 44, scope: !2736)
!2768 = !DILocation(line: 217, column: 6, scope: !2769)
!2769 = distinct !DILexicalBlock(scope: !2736, file: !33, line: 217, column: 6)
!2770 = !DILocation(line: 217, column: 13, scope: !2769)
!2771 = !DILocation(line: 217, column: 6, scope: !2736)
!2772 = !DILocation(line: 219, column: 14, scope: !2773)
!2773 = distinct !DILexicalBlock(scope: !2769, file: !33, line: 218, column: 4)
!2774 = !DILocation(line: 219, column: 6, scope: !2773)
!2775 = !DILocation(line: 220, column: 18, scope: !2773)
!2776 = !DILocation(line: 220, column: 6, scope: !2773)
!2777 = !DILocation(line: 221, column: 4, scope: !2773)
!2778 = !DILocation(line: 225, column: 26, scope: !2779)
!2779 = distinct !DILexicalBlock(scope: !2736, file: !33, line: 225, column: 4)
!2780 = !DILocation(line: 225, column: 37, scope: !2779)
!2781 = !DILocation(line: 225, column: 44, scope: !2779)
!2782 = !DILocation(line: 225, column: 6, scope: !2779)
!2783 = !DILocation(line: 225, column: 52, scope: !2779)
!2784 = !DILocation(line: 233, column: 7, scope: !2779)
!2785 = !DILocation(line: 228, column: 6, scope: !2786)
!2786 = distinct !DILexicalBlock(scope: !2736, file: !33, line: 227, column: 4)
!2787 = !DILocation(line: 229, column: 6, scope: !2786)
!2788 = !DILocation(line: 233, column: 7, scope: !2786)
!2789 = !DILocation(line: 230, column: 4, scope: !2786)
!2790 = !DILocation(line: 232, column: 16, scope: !2736)
!2791 = !DILocation(line: 232, column: 2, scope: !2736)
!2792 = !DILocation(line: 233, column: 7, scope: !2736)
!2793 = distinct !DISubprogram(name: "~_Alloc_hider", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev", scope: !2794, file: !205, line: 158, type: !2815, scopeLine: 158, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !2817, retainedNodes: !212)
!2794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Alloc_hider", scope: !32, file: !205, line: 158, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !2795, identifier: "_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE")
!2795 = !{!2796, !2804, !2807, !2811}
!2796 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !2794, baseType: !2797, extraData: i32 0)
!2797 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocator_type", scope: !32, file: !205, line: 95, baseType: !2798)
!2798 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Char_alloc_type", scope: !32, file: !205, line: 88, baseType: !2799)
!2799 = !DIDerivedType(tag: DW_TAG_typedef, name: "other", scope: !2800, file: !231, line: 120, baseType: !2803)
!2800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rebind<char>", scope: !232, file: !231, line: 119, size: 8, flags: DIFlagTypePassByValue, elements: !212, templateParams: !2801, identifier: "_ZTSN9__gnu_cxx14__alloc_traitsISaIcEcE6rebindIcEE")
!2801 = !{!2802}
!2802 = !DITemplateTypeParameter(name: "_Tp", type: !228)
!2803 = !DIDerivedType(tag: DW_TAG_typedef, name: "rebind_alloc<char>", scope: !235, file: !236, line: 450, baseType: !245)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "_M_p", scope: !2794, file: !205, line: 171, baseType: !2805, size: 64)
!2805 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !32, file: !205, line: 100, baseType: !2806)
!2806 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !232, file: !231, line: 57, baseType: !241)
!2807 = !DISubprogram(name: "_Alloc_hider", scope: !2794, file: !205, line: 164, type: !2808, scopeLine: 164, flags: DIFlagPrototyped, spFlags: 0)
!2808 = !DISubroutineType(types: !2809)
!2809 = !{null, !2810, !2805, !269}
!2810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2794, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2811 = !DISubprogram(name: "_Alloc_hider", scope: !2794, file: !205, line: 167, type: !2812, scopeLine: 167, flags: DIFlagPrototyped, spFlags: 0)
!2812 = !DISubroutineType(types: !2813)
!2813 = !{null, !2810, !2805, !2814}
!2814 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !245, size: 64)
!2815 = !DISubroutineType(types: !2816)
!2816 = !{null, !2810}
!2817 = !DISubprogram(name: "~_Alloc_hider", scope: !2794, type: !2815, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!2818 = !DILocalVariable(name: "this", arg: 1, scope: !2793, type: !2819, flags: DIFlagArtificial | DIFlagObjectPointer)
!2819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2794, size: 64)
!2820 = !DILocation(line: 0, scope: !2793)
!2821 = !DILocation(line: 158, column: 14, scope: !2822)
!2822 = distinct !DILexicalBlock(scope: !2793, file: !205, line: 158, column: 14)
!2823 = !DILocation(line: 158, column: 14, scope: !2793)
!2824 = distinct !DISubprogram(name: "__is_null_pointer<const char>", linkageName: "_ZN9__gnu_cxx17__is_null_pointerIKcEEbPT_", scope: !94, file: !2825, line: 152, type: !2724, scopeLine: 153, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, templateParams: !2826, retainedNodes: !212)
!2825 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/ext/type_traits.h", directory: "")
!2826 = !{!2827}
!2827 = !DITemplateTypeParameter(name: "_Type", type: !227)
!2828 = !DILocalVariable(name: "__ptr", arg: 1, scope: !2824, file: !2825, line: 152, type: !226)
!2829 = !DILocation(line: 152, column: 30, scope: !2824)
!2830 = !DILocation(line: 153, column: 14, scope: !2824)
!2831 = !DILocation(line: 153, column: 20, scope: !2824)
!2832 = !DILocation(line: 153, column: 7, scope: !2824)
!2833 = distinct !DISubprogram(name: "distance<const char *>", linkageName: "_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_", scope: !31, file: !2834, line: 138, type: !2835, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, templateParams: !2841, retainedNodes: !212)
!2834 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/stl_iterator_base_funcs.h", directory: "")
!2835 = !DISubroutineType(types: !2836)
!2836 = !{!2837, !226, !226}
!2837 = !DIDerivedType(tag: DW_TAG_typedef, name: "difference_type", scope: !2838, file: !655, line: 225, baseType: !680)
!2838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iterator_traits<const char *>", scope: !31, file: !655, line: 221, size: 8, flags: DIFlagTypePassByValue, elements: !212, templateParams: !2839, identifier: "_ZTSSt15iterator_traitsIPKcE")
!2839 = !{!2840}
!2840 = !DITemplateTypeParameter(name: "_Iterator", type: !226)
!2841 = !{!2842}
!2842 = !DITemplateTypeParameter(name: "_InputIterator", type: !226)
!2843 = !DILocalVariable(name: "__first", arg: 1, scope: !2833, file: !2834, line: 138, type: !226)
!2844 = !DILocation(line: 138, column: 29, scope: !2833)
!2845 = !DILocalVariable(name: "__last", arg: 2, scope: !2833, file: !2834, line: 138, type: !226)
!2846 = !DILocation(line: 138, column: 53, scope: !2833)
!2847 = !DILocation(line: 141, column: 30, scope: !2833)
!2848 = !DILocation(line: 141, column: 39, scope: !2833)
!2849 = !DILocation(line: 142, column: 9, scope: !2833)
!2850 = !DILocation(line: 141, column: 14, scope: !2833)
!2851 = !DILocation(line: 141, column: 7, scope: !2833)
!2852 = distinct !DISubprogram(name: "__iterator_category<const char *>", linkageName: "_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_", scope: !31, file: !655, line: 238, type: !2853, scopeLine: 239, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, templateParams: !2864, retainedNodes: !212)
!2853 = !DISubroutineType(types: !2854)
!2854 = !{!2855, !2862}
!2855 = !DIDerivedType(tag: DW_TAG_typedef, name: "iterator_category", scope: !2838, file: !655, line: 223, baseType: !2856)
!2856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "random_access_iterator_tag", scope: !31, file: !655, line: 107, size: 8, flags: DIFlagTypePassByValue, elements: !2857, identifier: "_ZTSSt26random_access_iterator_tag")
!2857 = !{!2858}
!2858 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !2856, baseType: !2859, extraData: i32 0)
!2859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bidirectional_iterator_tag", scope: !31, file: !655, line: 103, size: 8, flags: DIFlagTypePassByValue, elements: !2860, identifier: "_ZTSSt26bidirectional_iterator_tag")
!2860 = !{!2861}
!2861 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !2859, baseType: !2739, extraData: i32 0)
!2862 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2863, size: 64)
!2863 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !226)
!2864 = !{!2865}
!2865 = !DITemplateTypeParameter(name: "_Iter", type: !226)
!2866 = !DILocalVariable(arg: 1, scope: !2852, file: !655, line: 238, type: !2862)
!2867 = !DILocation(line: 238, column: 37, scope: !2852)
!2868 = !DILocation(line: 239, column: 7, scope: !2852)
!2869 = distinct !DISubprogram(name: "__distance<const char *>", linkageName: "_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag", scope: !31, file: !2834, line: 98, type: !2870, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, templateParams: !2872, retainedNodes: !212)
!2870 = !DISubroutineType(types: !2871)
!2871 = !{!2837, !226, !226, !2856}
!2872 = !{!2873}
!2873 = !DITemplateTypeParameter(name: "_RandomAccessIterator", type: !226)
!2874 = !DILocalVariable(name: "__first", arg: 1, scope: !2869, file: !2834, line: 98, type: !226)
!2875 = !DILocation(line: 98, column: 38, scope: !2869)
!2876 = !DILocalVariable(name: "__last", arg: 2, scope: !2869, file: !2834, line: 98, type: !226)
!2877 = !DILocation(line: 98, column: 69, scope: !2869)
!2878 = !DILocalVariable(arg: 3, scope: !2869, file: !2834, line: 99, type: !2856)
!2879 = !DILocation(line: 99, column: 42, scope: !2869)
!2880 = !DILocation(line: 104, column: 14, scope: !2869)
!2881 = !DILocation(line: 104, column: 23, scope: !2869)
!2882 = !DILocation(line: 104, column: 21, scope: !2869)
!2883 = !DILocation(line: 104, column: 7, scope: !2869)
!2884 = distinct !DISubprogram(name: "length", linkageName: "_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc", scope: !2885, file: !2666, line: 168, type: !2903, scopeLine: 169, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !2902, retainedNodes: !212)
!2885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "char_traits<char>", scope: !94, file: !2666, line: 90, size: 8, flags: DIFlagTypePassByValue, elements: !2886, templateParams: !2716, identifier: "_ZTSN9__gnu_cxx11char_traitsIcEE")
!2886 = !{!2887, !2894, !2897, !2898, !2902, !2905, !2908, !2912, !2913, !2916, !2924, !2927, !2930, !2933}
!2887 = !DISubprogram(name: "assign", linkageName: "_ZN9__gnu_cxx11char_traitsIcE6assignERcRKc", scope: !2885, file: !2666, line: 102, type: !2888, scopeLine: 102, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2888 = !DISubroutineType(types: !2889)
!2889 = !{null, !2890, !2892}
!2890 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2891, size: 64)
!2891 = !DIDerivedType(tag: DW_TAG_typedef, name: "char_type", scope: !2885, file: !2666, line: 92, baseType: !228)
!2892 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2893, size: 64)
!2893 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2891)
!2894 = !DISubprogram(name: "eq", linkageName: "_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_", scope: !2885, file: !2666, line: 106, type: !2895, scopeLine: 106, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2895 = !DISubroutineType(types: !2896)
!2896 = !{!53, !2892, !2892}
!2897 = !DISubprogram(name: "lt", linkageName: "_ZN9__gnu_cxx11char_traitsIcE2ltERKcS3_", scope: !2885, file: !2666, line: 110, type: !2895, scopeLine: 110, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2898 = !DISubprogram(name: "compare", linkageName: "_ZN9__gnu_cxx11char_traitsIcE7compareEPKcS3_m", scope: !2885, file: !2666, line: 114, type: !2899, scopeLine: 114, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2899 = !DISubroutineType(types: !2900)
!2900 = !{!16, !2901, !2901, !210}
!2901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2893, size: 64)
!2902 = !DISubprogram(name: "length", linkageName: "_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc", scope: !2885, file: !2666, line: 117, type: !2903, scopeLine: 117, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2903 = !DISubroutineType(types: !2904)
!2904 = !{!210, !2901}
!2905 = !DISubprogram(name: "find", linkageName: "_ZN9__gnu_cxx11char_traitsIcE4findEPKcmRS2_", scope: !2885, file: !2666, line: 120, type: !2906, scopeLine: 120, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2906 = !DISubroutineType(types: !2907)
!2907 = !{!2901, !2901, !210, !2892}
!2908 = !DISubprogram(name: "move", linkageName: "_ZN9__gnu_cxx11char_traitsIcE4moveEPcPKcm", scope: !2885, file: !2666, line: 123, type: !2909, scopeLine: 123, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2909 = !DISubroutineType(types: !2910)
!2910 = !{!2911, !2911, !2901, !210}
!2911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2891, size: 64)
!2912 = !DISubprogram(name: "copy", linkageName: "_ZN9__gnu_cxx11char_traitsIcE4copyEPcPKcm", scope: !2885, file: !2666, line: 126, type: !2909, scopeLine: 126, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2913 = !DISubprogram(name: "assign", linkageName: "_ZN9__gnu_cxx11char_traitsIcE6assignEPcmc", scope: !2885, file: !2666, line: 129, type: !2914, scopeLine: 129, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2914 = !DISubroutineType(types: !2915)
!2915 = !{!2911, !2911, !210, !2891}
!2916 = !DISubprogram(name: "to_char_type", linkageName: "_ZN9__gnu_cxx11char_traitsIcE12to_char_typeERKm", scope: !2885, file: !2666, line: 132, type: !2917, scopeLine: 132, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2917 = !DISubroutineType(types: !2918)
!2918 = !{!2891, !2919}
!2919 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2920, size: 64)
!2920 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2921)
!2921 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_type", scope: !2885, file: !2666, line: 93, baseType: !2922)
!2922 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_type", scope: !2923, file: !2666, line: 67, baseType: !21)
!2923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Char_types<char>", scope: !94, file: !2666, line: 65, size: 8, flags: DIFlagTypePassByValue, elements: !212, templateParams: !2716, identifier: "_ZTSN9__gnu_cxx11_Char_typesIcEE")
!2924 = !DISubprogram(name: "to_int_type", linkageName: "_ZN9__gnu_cxx11char_traitsIcE11to_int_typeERKc", scope: !2885, file: !2666, line: 136, type: !2925, scopeLine: 136, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2925 = !DISubroutineType(types: !2926)
!2926 = !{!2921, !2892}
!2927 = !DISubprogram(name: "eq_int_type", linkageName: "_ZN9__gnu_cxx11char_traitsIcE11eq_int_typeERKmS3_", scope: !2885, file: !2666, line: 140, type: !2928, scopeLine: 140, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2928 = !DISubroutineType(types: !2929)
!2929 = !{!53, !2919, !2919}
!2930 = !DISubprogram(name: "eof", linkageName: "_ZN9__gnu_cxx11char_traitsIcE3eofEv", scope: !2885, file: !2666, line: 144, type: !2931, scopeLine: 144, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2931 = !DISubroutineType(types: !2932)
!2932 = !{!2921}
!2933 = !DISubprogram(name: "not_eof", linkageName: "_ZN9__gnu_cxx11char_traitsIcE7not_eofERKm", scope: !2885, file: !2666, line: 148, type: !2934, scopeLine: 148, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2934 = !DISubroutineType(types: !2935)
!2935 = !{!2921, !2919}
!2936 = !DILocalVariable(name: "__p", arg: 1, scope: !2884, file: !2666, line: 117, type: !2901)
!2937 = !DILocation(line: 117, column: 31, scope: !2884)
!2938 = !DILocalVariable(name: "__i", scope: !2884, file: !2666, line: 170, type: !210)
!2939 = !DILocation(line: 170, column: 19, scope: !2884)
!2940 = !DILocation(line: 171, column: 7, scope: !2884)
!2941 = !DILocation(line: 171, column: 18, scope: !2884)
!2942 = !DILocation(line: 171, column: 22, scope: !2884)
!2943 = !DILocation(line: 171, column: 28, scope: !2884)
!2944 = !DILocation(line: 171, column: 15, scope: !2884)
!2945 = !DILocation(line: 171, column: 14, scope: !2884)
!2946 = !DILocation(line: 172, column: 9, scope: !2884)
!2947 = distinct !{!2947, !2940, !2948}
!2948 = !DILocation(line: 172, column: 11, scope: !2884)
!2949 = !DILocation(line: 173, column: 14, scope: !2884)
!2950 = !DILocation(line: 173, column: 7, scope: !2884)
!2951 = distinct !DISubprogram(name: "eq", linkageName: "_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_", scope: !2885, file: !2666, line: 106, type: !2895, scopeLine: 107, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !2894, retainedNodes: !212)
!2952 = !DILocalVariable(name: "__c1", arg: 1, scope: !2951, file: !2666, line: 106, type: !2892)
!2953 = !DILocation(line: 106, column: 27, scope: !2951)
!2954 = !DILocalVariable(name: "__c2", arg: 2, scope: !2951, file: !2666, line: 106, type: !2892)
!2955 = !DILocation(line: 106, column: 50, scope: !2951)
!2956 = !DILocation(line: 107, column: 16, scope: !2951)
!2957 = !DILocation(line: 107, column: 24, scope: !2951)
!2958 = !DILocation(line: 107, column: 21, scope: !2951)
!2959 = !DILocation(line: 107, column: 9, scope: !2951)
!2960 = distinct !DISubprogram(name: "~Allocator", linkageName: "_ZN10tensorflow9AllocatorD2Ev", scope: !8, file: !9, line: 79, type: !23, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !22, retainedNodes: !212)
!2961 = !DILocalVariable(name: "this", arg: 1, scope: !2960, type: !7, flags: DIFlagArtificial | DIFlagObjectPointer)
!2962 = !DILocation(line: 0, scope: !2960)
!2963 = !DILocation(line: 79, column: 25, scope: !2960)
!2964 = distinct !DISubprogram(name: "~Allocator", linkageName: "_ZN10tensorflow9AllocatorD0Ev", scope: !8, file: !9, line: 79, type: !23, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !22, retainedNodes: !212)
!2965 = !DILocalVariable(name: "this", arg: 1, scope: !2964, type: !7, flags: DIFlagArtificial | DIFlagObjectPointer)
!2966 = !DILocation(line: 0, scope: !2964)
!2967 = !DILocation(line: 79, column: 24, scope: !2964)
!2968 = !DILocation(line: 79, column: 25, scope: !2964)
!2969 = distinct !DISubprogram(name: "Name", linkageName: "_ZN10tensorflow9Allocator4NameB5cxx11Ev", scope: !8, file: !9, line: 82, type: !27, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !26, retainedNodes: !212)
!2970 = !DILocalVariable(name: "this", arg: 1, scope: !2969, type: !7, flags: DIFlagArtificial | DIFlagObjectPointer)
!2971 = !DILocation(line: 0, scope: !2969)
!2972 = !DILocation(line: 82, column: 39, scope: !2969)
!2973 = !DILocation(line: 82, column: 32, scope: !2969)
!2974 = !DILocation(line: 82, column: 56, scope: !2969)
!2975 = distinct !DISubprogram(name: "deallocate_buffer", linkageName: "_ZN10tensorflow17deallocate_bufferEPvmS0_", scope: !4, file: !2180, line: 62, type: !2467, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, retainedNodes: !212)
!2976 = !DILocalVariable(name: "data", arg: 1, scope: !2975, file: !2180, line: 62, type: !38)
!2977 = !DILocation(line: 62, column: 30, scope: !2975)
!2978 = !DILocalVariable(name: "len", arg: 2, scope: !2975, file: !2180, line: 62, type: !19)
!2979 = !DILocation(line: 62, column: 43, scope: !2975)
!2980 = !DILocalVariable(name: "arg", arg: 3, scope: !2975, file: !2180, line: 62, type: !38)
!2981 = !DILocation(line: 62, column: 54, scope: !2975)
!2982 = !DILocalVariable(name: "allocator", scope: !2975, file: !2180, line: 63, type: !7)
!2983 = !DILocation(line: 63, column: 14, scope: !2975)
!2984 = !DILocation(line: 64, column: 7, scope: !2985)
!2985 = distinct !DILexicalBlock(scope: !2975, file: !2180, line: 64, column: 7)
!2986 = !DILocation(line: 64, column: 11, scope: !2985)
!2987 = !DILocation(line: 64, column: 7, scope: !2975)
!2988 = !DILocation(line: 65, column: 17, scope: !2989)
!2989 = distinct !DILexicalBlock(scope: !2985, file: !2180, line: 64, column: 23)
!2990 = !DILocation(line: 65, column: 15, scope: !2989)
!2991 = !DILocation(line: 66, column: 3, scope: !2989)
!2992 = !DILocation(line: 67, column: 46, scope: !2993)
!2993 = distinct !DILexicalBlock(scope: !2985, file: !2180, line: 66, column: 10)
!2994 = !DILocation(line: 67, column: 17, scope: !2993)
!2995 = !DILocation(line: 67, column: 15, scope: !2993)
!2996 = !DILocation(line: 74, column: 3, scope: !2975)
!2997 = !DILocation(line: 74, column: 28, scope: !2975)
!2998 = !DILocation(line: 74, column: 14, scope: !2975)
!2999 = !DILocation(line: 75, column: 1, scope: !2975)
!3000 = distinct !DISubprogram(name: "TF_AllocateTensor", scope: !2180, file: !2180, line: 97, type: !3001, scopeLine: 98, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, retainedNodes: !212)
!3001 = !DISubroutineType(types: !3002)
!3002 = !{!3003, !225, !3005, !16, !19}
!3003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3004, size: 64)
!3004 = !DIDerivedType(tag: DW_TAG_typedef, name: "TF_Tensor", file: !2399, line: 43, baseType: !2398)
!3005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3006, size: 64)
!3006 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !64)
!3007 = !DILocalVariable(name: "dtype", arg: 1, scope: !3000, file: !2180, line: 97, type: !225)
!3008 = !DILocation(line: 97, column: 42, scope: !3000)
!3009 = !DILocalVariable(name: "dims", arg: 2, scope: !3000, file: !2180, line: 97, type: !3005)
!3010 = !DILocation(line: 97, column: 64, scope: !3000)
!3011 = !DILocalVariable(name: "num_dims", arg: 3, scope: !3000, file: !2180, line: 98, type: !16)
!3012 = !DILocation(line: 98, column: 34, scope: !3000)
!3013 = !DILocalVariable(name: "len", arg: 4, scope: !3000, file: !2180, line: 98, type: !19)
!3014 = !DILocation(line: 98, column: 51, scope: !3000)
!3015 = !DILocalVariable(name: "data", scope: !3000, file: !2180, line: 99, type: !38)
!3016 = !DILocation(line: 99, column: 9, scope: !3000)
!3017 = !DILocation(line: 99, column: 65, scope: !3000)
!3018 = !DILocation(line: 100, column: 44, scope: !3000)
!3019 = !DILocation(line: 99, column: 16, scope: !3000)
!3020 = !DILocalVariable(name: "buf", scope: !3000, file: !2180, line: 101, type: !3021)
!3021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3022, size: 64)
!3022 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "TF_ManagedBuffer", file: !2399, line: 45, size: 448, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !3023, vtableHolder: !3055, identifier: "_ZTS16TF_ManagedBuffer")
!3023 = !{!3024, !3025, !3026, !3029, !3031, !3032, !3036, !3039, !3044, !3047, !3052}
!3024 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !3022, baseType: !1912, flags: DIFlagPublic, extraData: i32 0)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "len_", scope: !3022, file: !2399, line: 72, baseType: !18, size: 64, offset: 192)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "deallocator_", scope: !3022, file: !2399, line: 73, baseType: !3027, size: 64, offset: 256)
!3027 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3028)
!3028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2467, size: 64)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "deallocator_arg_", scope: !3022, file: !2399, line: 74, baseType: !3030, size: 64, offset: 320)
!3030 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "owns_memory_", scope: !3022, file: !2399, line: 75, baseType: !53, size: 8, offset: 384)
!3032 = !DISubprogram(name: "TF_ManagedBuffer", scope: !3022, file: !2399, line: 47, type: !3033, scopeLine: 47, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!3033 = !DISubroutineType(types: !3034)
!3034 = !{null, !3035, !38, !19, !3028, !38, !53}
!3035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3022, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3036 = !DISubprogram(name: "~TF_ManagedBuffer", scope: !3022, file: !2399, line: 56, type: !3037, scopeLine: 56, containingType: !3022, virtualIndex: 0, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!3037 = !DISubroutineType(types: !3038)
!3038 = !{null, !3035}
!3039 = !DISubprogram(name: "size", linkageName: "_ZNK16TF_ManagedBuffer4sizeEv", scope: !3022, file: !2399, line: 60, type: !3040, scopeLine: 60, containingType: !3022, virtualIndex: 2, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!3040 = !DISubroutineType(types: !3041)
!3041 = !{!19, !3042}
!3042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3043, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3043 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3022)
!3044 = !DISubprogram(name: "root_buffer", linkageName: "_ZN16TF_ManagedBuffer11root_bufferEv", scope: !3022, file: !2399, line: 61, type: !3045, scopeLine: 61, containingType: !3022, virtualIndex: 3, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!3045 = !DISubroutineType(types: !3046)
!3046 = !{!1911, !3035}
!3047 = !DISubprogram(name: "FillAllocationDescription", linkageName: "_ZNK16TF_ManagedBuffer25FillAllocationDescriptionEPN10tensorflow21AllocationDescriptionE", scope: !3022, file: !2399, line: 62, type: !3048, scopeLine: 62, containingType: !3022, virtualIndex: 4, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!3048 = !DISubroutineType(types: !3049)
!3049 = !{null, !3042, !3050}
!3050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3051, size: 64)
!3051 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "AllocationDescription", scope: !4, file: !1907, line: 48, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN10tensorflow21AllocationDescriptionE")
!3052 = !DISubprogram(name: "OwnsMemory", linkageName: "_ZNK16TF_ManagedBuffer10OwnsMemoryEv", scope: !3022, file: !2399, line: 69, type: !3053, scopeLine: 69, containingType: !3022, virtualIndex: 6, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!3053 = !DISubroutineType(types: !3054)
!3054 = !{!53, !3042}
!3055 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "RefCounted", scope: !3057, file: !3056, line: 11, size: 128, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !3058, vtableHolder: !3055, identifier: "_ZTSN10tensorflow4core10RefCountedE")
!3056 = !DIFile(filename: "tensorflow/core/framework/refcountstub.h", directory: "/home/mushfiqur/Desktop/Github/tensorflow")
!3057 = !DINamespace(name: "core", scope: !4)
!3058 = !{!3059, !3060, !3214, !3218, !3219, !3224, !3227}
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "_vptr$RefCounted", scope: !3056, file: !3056, baseType: !12, size: 64, flags: DIFlagArtificial)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count_", scope: !3055, file: !3056, line: 39, baseType: !3061, size: 64, offset: 64)
!3061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "atomic<unsigned long>", scope: !31, file: !3062, line: 891, size: 64, flags: DIFlagTypePassByReference, elements: !3063, templateParams: !3212, identifier: "_ZTSSt6atomicImE")
!3062 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/atomic", directory: "")
!3063 = !{!3064, !3188, !3189, !3193, !3194, !3199, !3203, !3208}
!3064 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !3061, baseType: !3065, extraData: i32 0)
!3065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__atomic_base<unsigned long>", scope: !31, file: !214, line: 324, size: 64, flags: DIFlagTypePassByReference, elements: !3066, templateParams: !3186, identifier: "_ZTSSt13__atomic_baseImE")
!3066 = !{!3067, !3069, !3071, !3075, !3076, !3081, !3085, !3090, !3093, !3097, !3102, !3105, !3108, !3111, !3114, !3115, !3116, !3119, !3122, !3123, !3124, !3125, !3126, !3127, !3128, !3129, !3130, !3131, !3132, !3133, !3134, !3137, !3140, !3144, !3147, !3150, !3153, !3156, !3159, !3163, !3166, !3169, !3172, !3173, !3174, !3175, !3176, !3177, !3178, !3179, !3180, !3181, !3182, !3183, !3184, !3185}
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "_S_alignment", scope: !3065, file: !214, line: 332, baseType: !3068, flags: DIFlagPrivate | DIFlagStaticMember, extraData: i32 8)
!3068 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "_M_i", scope: !3065, file: !214, line: 335, baseType: !3070, size: 64, align: 64, flags: DIFlagPrivate)
!3070 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_type", scope: !3065, file: !214, line: 330, baseType: !21)
!3071 = !DISubprogram(name: "__atomic_base", scope: !3065, file: !214, line: 338, type: !3072, scopeLine: 338, flags: DIFlagPrototyped, spFlags: 0)
!3072 = !DISubroutineType(types: !3073)
!3073 = !{null, !3074}
!3074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3065, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3075 = !DISubprogram(name: "~__atomic_base", scope: !3065, file: !214, line: 339, type: !3072, scopeLine: 339, flags: DIFlagPrototyped, spFlags: 0)
!3076 = !DISubprogram(name: "__atomic_base", scope: !3065, file: !214, line: 340, type: !3077, scopeLine: 340, flags: DIFlagPrototyped, spFlags: DISPFlagDeleted)
!3077 = !DISubroutineType(types: !3078)
!3078 = !{null, !3074, !3079}
!3079 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3080, size: 64)
!3080 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3065)
!3081 = !DISubprogram(name: "operator=", linkageName: "_ZNSt13__atomic_baseImEaSERKS0_", scope: !3065, file: !214, line: 341, type: !3082, scopeLine: 341, flags: DIFlagPrototyped, spFlags: DISPFlagDeleted)
!3082 = !DISubroutineType(types: !3083)
!3083 = !{!3084, !3074, !3079}
!3084 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3065, size: 64)
!3085 = !DISubprogram(name: "operator=", linkageName: "_ZNVSt13__atomic_baseImEaSERKS0_", scope: !3065, file: !214, line: 342, type: !3086, scopeLine: 342, flags: DIFlagPrototyped, spFlags: DISPFlagDeleted)
!3086 = !DISubroutineType(types: !3087)
!3087 = !{!3084, !3088, !3079}
!3088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3089, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3089 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !3065)
!3090 = !DISubprogram(name: "__atomic_base", scope: !3065, file: !214, line: 345, type: !3091, scopeLine: 345, flags: DIFlagPrototyped, spFlags: 0)
!3091 = !DISubroutineType(types: !3092)
!3092 = !{null, !3074, !3070}
!3093 = !DISubprogram(name: "operator unsigned long", linkageName: "_ZNKSt13__atomic_baseImEcvmEv", scope: !3065, file: !214, line: 347, type: !3094, scopeLine: 347, flags: DIFlagPrototyped, spFlags: 0)
!3094 = !DISubroutineType(types: !3095)
!3095 = !{!3070, !3096}
!3096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3080, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3097 = !DISubprogram(name: "operator unsigned long", linkageName: "_ZNVKSt13__atomic_baseImEcvmEv", scope: !3065, file: !214, line: 350, type: !3098, scopeLine: 350, flags: DIFlagPrototyped, spFlags: 0)
!3098 = !DISubroutineType(types: !3099)
!3099 = !{!3070, !3100}
!3100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3101, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3101 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3089)
!3102 = !DISubprogram(name: "operator=", linkageName: "_ZNSt13__atomic_baseImEaSEm", scope: !3065, file: !214, line: 354, type: !3103, scopeLine: 354, flags: DIFlagPrototyped, spFlags: 0)
!3103 = !DISubroutineType(types: !3104)
!3104 = !{!3070, !3074, !3070}
!3105 = !DISubprogram(name: "operator=", linkageName: "_ZNVSt13__atomic_baseImEaSEm", scope: !3065, file: !214, line: 361, type: !3106, scopeLine: 361, flags: DIFlagPrototyped, spFlags: 0)
!3106 = !DISubroutineType(types: !3107)
!3107 = !{!3070, !3088, !3070}
!3108 = !DISubprogram(name: "operator++", linkageName: "_ZNSt13__atomic_baseImEppEi", scope: !3065, file: !214, line: 368, type: !3109, scopeLine: 368, flags: DIFlagPrototyped, spFlags: 0)
!3109 = !DISubroutineType(types: !3110)
!3110 = !{!3070, !3074, !16}
!3111 = !DISubprogram(name: "operator++", linkageName: "_ZNVSt13__atomic_baseImEppEi", scope: !3065, file: !214, line: 372, type: !3112, scopeLine: 372, flags: DIFlagPrototyped, spFlags: 0)
!3112 = !DISubroutineType(types: !3113)
!3113 = !{!3070, !3088, !16}
!3114 = !DISubprogram(name: "operator--", linkageName: "_ZNSt13__atomic_baseImEmmEi", scope: !3065, file: !214, line: 376, type: !3109, scopeLine: 376, flags: DIFlagPrototyped, spFlags: 0)
!3115 = !DISubprogram(name: "operator--", linkageName: "_ZNVSt13__atomic_baseImEmmEi", scope: !3065, file: !214, line: 380, type: !3112, scopeLine: 380, flags: DIFlagPrototyped, spFlags: 0)
!3116 = !DISubprogram(name: "operator++", linkageName: "_ZNSt13__atomic_baseImEppEv", scope: !3065, file: !214, line: 384, type: !3117, scopeLine: 384, flags: DIFlagPrototyped, spFlags: 0)
!3117 = !DISubroutineType(types: !3118)
!3118 = !{!3070, !3074}
!3119 = !DISubprogram(name: "operator++", linkageName: "_ZNVSt13__atomic_baseImEppEv", scope: !3065, file: !214, line: 388, type: !3120, scopeLine: 388, flags: DIFlagPrototyped, spFlags: 0)
!3120 = !DISubroutineType(types: !3121)
!3121 = !{!3070, !3088}
!3122 = !DISubprogram(name: "operator--", linkageName: "_ZNSt13__atomic_baseImEmmEv", scope: !3065, file: !214, line: 392, type: !3117, scopeLine: 392, flags: DIFlagPrototyped, spFlags: 0)
!3123 = !DISubprogram(name: "operator--", linkageName: "_ZNVSt13__atomic_baseImEmmEv", scope: !3065, file: !214, line: 396, type: !3120, scopeLine: 396, flags: DIFlagPrototyped, spFlags: 0)
!3124 = !DISubprogram(name: "operator+=", linkageName: "_ZNSt13__atomic_baseImEpLEm", scope: !3065, file: !214, line: 400, type: !3103, scopeLine: 400, flags: DIFlagPrototyped, spFlags: 0)
!3125 = !DISubprogram(name: "operator+=", linkageName: "_ZNVSt13__atomic_baseImEpLEm", scope: !3065, file: !214, line: 404, type: !3106, scopeLine: 404, flags: DIFlagPrototyped, spFlags: 0)
!3126 = !DISubprogram(name: "operator-=", linkageName: "_ZNSt13__atomic_baseImEmIEm", scope: !3065, file: !214, line: 408, type: !3103, scopeLine: 408, flags: DIFlagPrototyped, spFlags: 0)
!3127 = !DISubprogram(name: "operator-=", linkageName: "_ZNVSt13__atomic_baseImEmIEm", scope: !3065, file: !214, line: 412, type: !3106, scopeLine: 412, flags: DIFlagPrototyped, spFlags: 0)
!3128 = !DISubprogram(name: "operator&=", linkageName: "_ZNSt13__atomic_baseImEaNEm", scope: !3065, file: !214, line: 416, type: !3103, scopeLine: 416, flags: DIFlagPrototyped, spFlags: 0)
!3129 = !DISubprogram(name: "operator&=", linkageName: "_ZNVSt13__atomic_baseImEaNEm", scope: !3065, file: !214, line: 420, type: !3106, scopeLine: 420, flags: DIFlagPrototyped, spFlags: 0)
!3130 = !DISubprogram(name: "operator|=", linkageName: "_ZNSt13__atomic_baseImEoREm", scope: !3065, file: !214, line: 424, type: !3103, scopeLine: 424, flags: DIFlagPrototyped, spFlags: 0)
!3131 = !DISubprogram(name: "operator|=", linkageName: "_ZNVSt13__atomic_baseImEoREm", scope: !3065, file: !214, line: 428, type: !3106, scopeLine: 428, flags: DIFlagPrototyped, spFlags: 0)
!3132 = !DISubprogram(name: "operator^=", linkageName: "_ZNSt13__atomic_baseImEeOEm", scope: !3065, file: !214, line: 432, type: !3103, scopeLine: 432, flags: DIFlagPrototyped, spFlags: 0)
!3133 = !DISubprogram(name: "operator^=", linkageName: "_ZNVSt13__atomic_baseImEeOEm", scope: !3065, file: !214, line: 436, type: !3106, scopeLine: 436, flags: DIFlagPrototyped, spFlags: 0)
!3134 = !DISubprogram(name: "is_lock_free", linkageName: "_ZNKSt13__atomic_baseImE12is_lock_freeEv", scope: !3065, file: !214, line: 440, type: !3135, scopeLine: 440, flags: DIFlagPrototyped, spFlags: 0)
!3135 = !DISubroutineType(types: !3136)
!3136 = !{!53, !3096}
!3137 = !DISubprogram(name: "is_lock_free", linkageName: "_ZNVKSt13__atomic_baseImE12is_lock_freeEv", scope: !3065, file: !214, line: 448, type: !3138, scopeLine: 448, flags: DIFlagPrototyped, spFlags: 0)
!3138 = !DISubroutineType(types: !3139)
!3139 = !{!53, !3100}
!3140 = !DISubprogram(name: "store", linkageName: "_ZNSt13__atomic_baseImE5storeEmSt12memory_order", scope: !3065, file: !214, line: 456, type: !3141, scopeLine: 456, flags: DIFlagPrototyped, spFlags: 0)
!3141 = !DISubroutineType(types: !3142)
!3142 = !{null, !3074, !3070, !3143}
!3143 = !DIDerivedType(tag: DW_TAG_typedef, name: "memory_order", scope: !31, file: !214, line: 86, baseType: !213)
!3144 = !DISubprogram(name: "store", linkageName: "_ZNVSt13__atomic_baseImE5storeEmSt12memory_order", scope: !3065, file: !214, line: 468, type: !3145, scopeLine: 468, flags: DIFlagPrototyped, spFlags: 0)
!3145 = !DISubroutineType(types: !3146)
!3146 = !{null, !3088, !3070, !3143}
!3147 = !DISubprogram(name: "load", linkageName: "_ZNKSt13__atomic_baseImE4loadESt12memory_order", scope: !3065, file: !214, line: 481, type: !3148, scopeLine: 481, flags: DIFlagPrototyped, spFlags: 0)
!3148 = !DISubroutineType(types: !3149)
!3149 = !{!3070, !3096, !3143}
!3150 = !DISubprogram(name: "load", linkageName: "_ZNVKSt13__atomic_baseImE4loadESt12memory_order", scope: !3065, file: !214, line: 492, type: !3151, scopeLine: 492, flags: DIFlagPrototyped, spFlags: 0)
!3151 = !DISubroutineType(types: !3152)
!3152 = !{!3070, !3100, !3143}
!3153 = !DISubprogram(name: "exchange", linkageName: "_ZNSt13__atomic_baseImE8exchangeEmSt12memory_order", scope: !3065, file: !214, line: 503, type: !3154, scopeLine: 503, flags: DIFlagPrototyped, spFlags: 0)
!3154 = !DISubroutineType(types: !3155)
!3155 = !{!3070, !3074, !3070, !3143}
!3156 = !DISubprogram(name: "exchange", linkageName: "_ZNVSt13__atomic_baseImE8exchangeEmSt12memory_order", scope: !3065, file: !214, line: 511, type: !3157, scopeLine: 511, flags: DIFlagPrototyped, spFlags: 0)
!3157 = !DISubroutineType(types: !3158)
!3158 = !{!3070, !3088, !3070, !3143}
!3159 = !DISubprogram(name: "compare_exchange_weak", linkageName: "_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_", scope: !3065, file: !214, line: 518, type: !3160, scopeLine: 518, flags: DIFlagPrototyped, spFlags: 0)
!3160 = !DISubroutineType(types: !3161)
!3161 = !{!53, !3074, !3162, !3070, !3143, !3143}
!3162 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3070, size: 64)
!3163 = !DISubprogram(name: "compare_exchange_weak", linkageName: "_ZNVSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_", scope: !3065, file: !214, line: 528, type: !3164, scopeLine: 528, flags: DIFlagPrototyped, spFlags: 0)
!3164 = !DISubroutineType(types: !3165)
!3165 = !{!53, !3088, !3162, !3070, !3143, !3143}
!3166 = !DISubprogram(name: "compare_exchange_weak", linkageName: "_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_order", scope: !3065, file: !214, line: 539, type: !3167, scopeLine: 539, flags: DIFlagPrototyped, spFlags: 0)
!3167 = !DISubroutineType(types: !3168)
!3168 = !{!53, !3074, !3162, !3070, !3143}
!3169 = !DISubprogram(name: "compare_exchange_weak", linkageName: "_ZNVSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_order", scope: !3065, file: !214, line: 547, type: !3170, scopeLine: 547, flags: DIFlagPrototyped, spFlags: 0)
!3170 = !DISubroutineType(types: !3171)
!3171 = !{!53, !3088, !3162, !3070, !3143}
!3172 = !DISubprogram(name: "compare_exchange_strong", linkageName: "_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_", scope: !3065, file: !214, line: 555, type: !3160, scopeLine: 555, flags: DIFlagPrototyped, spFlags: 0)
!3173 = !DISubprogram(name: "compare_exchange_strong", linkageName: "_ZNVSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_", scope: !3065, file: !214, line: 565, type: !3164, scopeLine: 565, flags: DIFlagPrototyped, spFlags: 0)
!3174 = !DISubprogram(name: "compare_exchange_strong", linkageName: "_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_order", scope: !3065, file: !214, line: 576, type: !3167, scopeLine: 576, flags: DIFlagPrototyped, spFlags: 0)
!3175 = !DISubprogram(name: "compare_exchange_strong", linkageName: "_ZNVSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_order", scope: !3065, file: !214, line: 584, type: !3170, scopeLine: 584, flags: DIFlagPrototyped, spFlags: 0)
!3176 = !DISubprogram(name: "fetch_add", linkageName: "_ZNSt13__atomic_baseImE9fetch_addEmSt12memory_order", scope: !3065, file: !214, line: 616, type: !3154, scopeLine: 616, flags: DIFlagPrototyped, spFlags: 0)
!3177 = !DISubprogram(name: "fetch_add", linkageName: "_ZNVSt13__atomic_baseImE9fetch_addEmSt12memory_order", scope: !3065, file: !214, line: 621, type: !3157, scopeLine: 621, flags: DIFlagPrototyped, spFlags: 0)
!3178 = !DISubprogram(name: "fetch_sub", linkageName: "_ZNSt13__atomic_baseImE9fetch_subEmSt12memory_order", scope: !3065, file: !214, line: 626, type: !3154, scopeLine: 626, flags: DIFlagPrototyped, spFlags: 0)
!3179 = !DISubprogram(name: "fetch_sub", linkageName: "_ZNVSt13__atomic_baseImE9fetch_subEmSt12memory_order", scope: !3065, file: !214, line: 631, type: !3157, scopeLine: 631, flags: DIFlagPrototyped, spFlags: 0)
!3180 = !DISubprogram(name: "fetch_and", linkageName: "_ZNSt13__atomic_baseImE9fetch_andEmSt12memory_order", scope: !3065, file: !214, line: 636, type: !3154, scopeLine: 636, flags: DIFlagPrototyped, spFlags: 0)
!3181 = !DISubprogram(name: "fetch_and", linkageName: "_ZNVSt13__atomic_baseImE9fetch_andEmSt12memory_order", scope: !3065, file: !214, line: 641, type: !3157, scopeLine: 641, flags: DIFlagPrototyped, spFlags: 0)
!3182 = !DISubprogram(name: "fetch_or", linkageName: "_ZNSt13__atomic_baseImE8fetch_orEmSt12memory_order", scope: !3065, file: !214, line: 646, type: !3154, scopeLine: 646, flags: DIFlagPrototyped, spFlags: 0)
!3183 = !DISubprogram(name: "fetch_or", linkageName: "_ZNVSt13__atomic_baseImE8fetch_orEmSt12memory_order", scope: !3065, file: !214, line: 651, type: !3157, scopeLine: 651, flags: DIFlagPrototyped, spFlags: 0)
!3184 = !DISubprogram(name: "fetch_xor", linkageName: "_ZNSt13__atomic_baseImE9fetch_xorEmSt12memory_order", scope: !3065, file: !214, line: 656, type: !3154, scopeLine: 656, flags: DIFlagPrototyped, spFlags: 0)
!3185 = !DISubprogram(name: "fetch_xor", linkageName: "_ZNVSt13__atomic_baseImE9fetch_xorEmSt12memory_order", scope: !3065, file: !214, line: 661, type: !3157, scopeLine: 661, flags: DIFlagPrototyped, spFlags: 0)
!3186 = !{!3187}
!3187 = !DITemplateTypeParameter(name: "_ITp", type: !21)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "is_always_lock_free", scope: !3061, file: !3062, line: 908, baseType: !506, flags: DIFlagStaticMember, extraData: i1 true)
!3189 = !DISubprogram(name: "atomic", scope: !3061, file: !3062, line: 896, type: !3190, scopeLine: 896, flags: DIFlagPrototyped, spFlags: 0)
!3190 = !DISubroutineType(types: !3191)
!3191 = !{null, !3192}
!3192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3061, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3193 = !DISubprogram(name: "~atomic", scope: !3061, file: !3062, line: 897, type: !3190, scopeLine: 897, flags: DIFlagPrototyped, spFlags: 0)
!3194 = !DISubprogram(name: "atomic", scope: !3061, file: !3062, line: 898, type: !3195, scopeLine: 898, flags: DIFlagPrototyped, spFlags: DISPFlagDeleted)
!3195 = !DISubroutineType(types: !3196)
!3196 = !{null, !3192, !3197}
!3197 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3198, size: 64)
!3198 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3061)
!3199 = !DISubprogram(name: "operator=", linkageName: "_ZNSt6atomicImEaSERKS0_", scope: !3061, file: !3062, line: 899, type: !3200, scopeLine: 899, flags: DIFlagPrototyped, spFlags: DISPFlagDeleted)
!3200 = !DISubroutineType(types: !3201)
!3201 = !{!3202, !3192, !3197}
!3202 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3061, size: 64)
!3203 = !DISubprogram(name: "operator=", linkageName: "_ZNVSt6atomicImEaSERKS0_", scope: !3061, file: !3062, line: 900, type: !3204, scopeLine: 900, flags: DIFlagPrototyped, spFlags: DISPFlagDeleted)
!3204 = !DISubroutineType(types: !3205)
!3205 = !{!3202, !3206, !3197}
!3206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3207, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3207 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !3061)
!3208 = !DISubprogram(name: "atomic", scope: !3061, file: !3062, line: 902, type: !3209, scopeLine: 902, flags: DIFlagPrototyped, spFlags: 0)
!3209 = !DISubroutineType(types: !3210)
!3210 = !{null, !3192, !3211}
!3211 = !DIDerivedType(tag: DW_TAG_typedef, name: "__integral_type", scope: !3061, file: !3062, line: 893, baseType: !21)
!3212 = !{!3213}
!3213 = !DITemplateTypeParameter(name: "_Tp", type: !21)
!3214 = !DISubprogram(name: "RefCounted", scope: !3055, file: !3056, line: 13, type: !3215, scopeLine: 13, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!3215 = !DISubroutineType(types: !3216)
!3216 = !{null, !3217}
!3217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3055, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3218 = !DISubprogram(name: "~RefCounted", scope: !3055, file: !3056, line: 14, type: !3215, scopeLine: 14, containingType: !3055, virtualIndex: 0, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!3219 = !DISubprogram(name: "Ref", linkageName: "_ZNK10tensorflow4core10RefCounted3RefEv", scope: !3055, file: !3056, line: 17, type: !3220, scopeLine: 17, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!3220 = !DISubroutineType(types: !3221)
!3221 = !{null, !3222}
!3222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3223, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3223 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3055)
!3224 = !DISubprogram(name: "Unref", linkageName: "_ZNK10tensorflow4core10RefCounted5UnrefEv", scope: !3055, file: !3056, line: 23, type: !3225, scopeLine: 23, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!3225 = !DISubroutineType(types: !3226)
!3226 = !{!53, !3222}
!3227 = !DISubprogram(name: "RefCount", linkageName: "_ZNK10tensorflow4core10RefCounted8RefCountEv", scope: !3055, file: !3056, line: 33, type: !3228, scopeLine: 33, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!3228 = !DISubroutineType(types: !3229)
!3229 = !{!16, !3222}
!3230 = !DILocation(line: 101, column: 21, scope: !3000)
!3231 = !DILocation(line: 102, column: 7, scope: !3000)
!3232 = !DILocation(line: 102, column: 28, scope: !3000)
!3233 = !DILocation(line: 102, column: 34, scope: !3000)
!3234 = !DILocation(line: 103, column: 28, scope: !3000)
!3235 = !DILocation(line: 102, column: 11, scope: !3000)
!3236 = !DILocation(line: 104, column: 23, scope: !3000)
!3237 = !DILocation(line: 104, column: 28, scope: !3000)
!3238 = !DILocation(line: 104, column: 35, scope: !3000)
!3239 = !DILocation(line: 104, column: 41, scope: !3000)
!3240 = !DILocation(line: 104, column: 51, scope: !3000)
!3241 = !DILocation(line: 104, column: 10, scope: !3000)
!3242 = !DILocation(line: 104, column: 3, scope: !3000)
!3243 = !DILocation(line: 105, column: 1, scope: !3000)
!3244 = distinct !DISubprogram(name: "TF_ManagedBuffer", linkageName: "_ZN16TF_ManagedBufferC2EPvmPFvS0_mS0_ES0_b", scope: !3022, file: !2399, line: 47, type: !3033, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !3032, retainedNodes: !212)
!3245 = !DILocalVariable(name: "this", arg: 1, scope: !3244, type: !3021, flags: DIFlagArtificial | DIFlagObjectPointer)
!3246 = !DILocation(line: 0, scope: !3244)
!3247 = !DILocalVariable(name: "data", arg: 2, scope: !3244, file: !2399, line: 47, type: !38)
!3248 = !DILocation(line: 47, column: 26, scope: !3244)
!3249 = !DILocalVariable(name: "len", arg: 3, scope: !3244, file: !2399, line: 47, type: !19)
!3250 = !DILocation(line: 47, column: 39, scope: !3244)
!3251 = !DILocalVariable(name: "deallocator", arg: 4, scope: !3244, file: !2399, line: 48, type: !3028)
!3252 = !DILocation(line: 48, column: 27, scope: !3244)
!3253 = !DILocalVariable(name: "deallocator_arg", arg: 5, scope: !3244, file: !2399, line: 49, type: !38)
!3254 = !DILocation(line: 49, column: 26, scope: !3244)
!3255 = !DILocalVariable(name: "owns_memory", arg: 6, scope: !3244, file: !2399, line: 49, type: !53)
!3256 = !DILocation(line: 49, column: 48, scope: !3244)
!3257 = !DILocation(line: 54, column: 35, scope: !3244)
!3258 = !DILocation(line: 50, column: 22, scope: !3244)
!3259 = !DILocation(line: 50, column: 9, scope: !3244)
!3260 = !DILocation(line: 51, column: 9, scope: !3244)
!3261 = !DILocation(line: 51, column: 14, scope: !3244)
!3262 = !DILocation(line: 52, column: 9, scope: !3244)
!3263 = !DILocation(line: 52, column: 22, scope: !3244)
!3264 = !DILocation(line: 53, column: 9, scope: !3244)
!3265 = !DILocation(line: 53, column: 26, scope: !3244)
!3266 = !DILocation(line: 54, column: 9, scope: !3244)
!3267 = !DILocation(line: 54, column: 22, scope: !3244)
!3268 = !DILocation(line: 54, column: 36, scope: !3244)
!3269 = distinct !DISubprogram(name: "CreateTensor", linkageName: "_ZN12_GLOBAL__N_112CreateTensorEP16TF_ManagedBuffer11TF_DataTypePKlim", scope: !3270, file: !2180, line: 79, type: !3271, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !89, retainedNodes: !212)
!3270 = !DINamespace(scope: null)
!3271 = !DISubroutineType(types: !3272)
!3272 = !{!3003, !3021, !225, !3005, !16, !19}
!3273 = !DILocalVariable(name: "buf", arg: 1, scope: !3269, file: !2180, line: 79, type: !3021)
!3274 = !DILocation(line: 79, column: 43, scope: !3269)
!3275 = !DILocalVariable(name: "dtype", arg: 2, scope: !3269, file: !2180, line: 79, type: !225)
!3276 = !DILocation(line: 79, column: 60, scope: !3269)
!3277 = !DILocalVariable(name: "dims", arg: 3, scope: !3269, file: !2180, line: 80, type: !3005)
!3278 = !DILocation(line: 80, column: 40, scope: !3269)
!3279 = !DILocalVariable(name: "num_dims", arg: 4, scope: !3269, file: !2180, line: 80, type: !16)
!3280 = !DILocation(line: 80, column: 50, scope: !3269)
!3281 = !DILocalVariable(name: "len", arg: 5, scope: !3269, file: !2180, line: 80, type: !19)
!3282 = !DILocation(line: 80, column: 67, scope: !3269)
!3283 = !DILocalVariable(name: "dimvec", scope: !3269, file: !2180, line: 81, type: !287)
!3284 = !DILocation(line: 81, column: 24, scope: !3269)
!3285 = !DILocation(line: 81, column: 31, scope: !3269)
!3286 = !DILocalVariable(name: "i", scope: !3287, file: !2180, line: 82, type: !16)
!3287 = distinct !DILexicalBlock(scope: !3269, file: !2180, line: 82, column: 3)
!3288 = !DILocation(line: 82, column: 12, scope: !3287)
!3289 = !DILocation(line: 82, column: 8, scope: !3287)
!3290 = !DILocation(line: 82, column: 19, scope: !3291)
!3291 = distinct !DILexicalBlock(scope: !3287, file: !2180, line: 82, column: 3)
!3292 = !DILocation(line: 82, column: 23, scope: !3291)
!3293 = !DILocation(line: 82, column: 21, scope: !3291)
!3294 = !DILocation(line: 82, column: 3, scope: !3287)
!3295 = !DILocation(line: 83, column: 38, scope: !3296)
!3296 = distinct !DILexicalBlock(scope: !3291, file: !2180, line: 82, column: 38)
!3297 = !DILocation(line: 83, column: 43, scope: !3296)
!3298 = !DILocation(line: 83, column: 12, scope: !3296)
!3299 = !DILocation(line: 83, column: 5, scope: !3296)
!3300 = !DILocation(line: 83, column: 15, scope: !3296)
!3301 = !DILocation(line: 84, column: 3, scope: !3296)
!3302 = !DILocation(line: 82, column: 33, scope: !3291)
!3303 = !DILocation(line: 82, column: 3, scope: !3291)
!3304 = distinct !{!3304, !3294, !3305}
!3305 = !DILocation(line: 84, column: 3, scope: !3287)
!3306 = !DILocation(line: 94, column: 1, scope: !3269)
!3307 = !DILocalVariable(name: "ret", scope: !3269, file: !2180, line: 86, type: !1906)
!3308 = !DILocation(line: 86, column: 10, scope: !3269)
!3309 = !DILocation(line: 86, column: 48, scope: !3269)
!3310 = !DILocation(line: 87, column: 14, scope: !3269)
!3311 = !DILocation(line: 87, column: 47, scope: !3269)
!3312 = !DILocation(line: 88, column: 3, scope: !3269)
!3313 = !DILocation(line: 88, column: 8, scope: !3269)
!3314 = !DILocalVariable(name: "elem_size", scope: !3269, file: !2180, line: 89, type: !19)
!3315 = !DILocation(line: 89, column: 10, scope: !3269)
!3316 = !DILocation(line: 89, column: 38, scope: !3269)
!3317 = !DILocation(line: 89, column: 22, scope: !3269)
!3318 = !DILocation(line: 90, column: 7, scope: !3319)
!3319 = distinct !DILexicalBlock(scope: !3269, file: !2180, line: 90, column: 7)
!3320 = !DILocation(line: 90, column: 17, scope: !3319)
!3321 = !DILocation(line: 90, column: 21, scope: !3319)
!3322 = !DILocation(line: 90, column: 24, scope: !3319)
!3323 = !DILocation(line: 90, column: 31, scope: !3319)
!3324 = !DILocation(line: 90, column: 47, scope: !3319)
!3325 = !DILocation(line: 90, column: 41, scope: !3319)
!3326 = !DILocation(line: 90, column: 28, scope: !3319)
!3327 = !DILocation(line: 90, column: 7, scope: !3269)
!3328 = !DILocation(line: 91, column: 5, scope: !3329)
!3329 = distinct !DILexicalBlock(scope: !3319, file: !2180, line: 90, column: 63)
!3330 = !DILocation(line: 93, column: 10, scope: !3269)
!3331 = !DILocation(line: 93, column: 23, scope: !3269)
!3332 = !DILocation(line: 93, column: 24, scope: !3269)
!3333 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "TensorInterface", scope: !4, file: !2399, line: 98, size: 384, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !3334, vtableHolder: !2403, identifier: "_ZTSN10tensorflow15TensorInterfaceE")
!3334 = !{!3335, !3336, !3337, !3341, !3344, !3345, !3346, !3351, !3354, !3357, !3360, !3363, !3366, !3369, !3370, !3373, !3376, !3379, !3383, !3388}
!3335 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !3333, baseType: !2403, flags: DIFlagPublic, extraData: i32 0)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "tensor_", scope: !3333, file: !2399, line: 125, baseType: !1906, size: 320, offset: 64)
!3337 = !DISubprogram(name: "TensorInterface", scope: !3333, file: !2399, line: 100, type: !3338, scopeLine: 100, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!3338 = !DISubroutineType(types: !3339)
!3339 = !{null, !3340}
!3340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3333, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3341 = !DISubprogram(name: "TensorInterface", scope: !3333, file: !2399, line: 101, type: !3342, scopeLine: 101, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!3342 = !DISubroutineType(types: !3343)
!3343 = !{null, !3340, !1906}
!3344 = !DISubprogram(name: "~TensorInterface", scope: !3333, file: !2399, line: 102, type: !3338, scopeLine: 102, containingType: !3333, virtualIndex: 0, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!3345 = !DISubprogram(name: "Release", linkageName: "_ZN10tensorflow15TensorInterface7ReleaseEv", scope: !3333, file: !2399, line: 104, type: !3338, scopeLine: 104, containingType: !3333, virtualIndex: 0, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!3346 = !DISubprogram(name: "Type", linkageName: "_ZNK10tensorflow15TensorInterface4TypeEv", scope: !3333, file: !2399, line: 106, type: !3347, scopeLine: 106, containingType: !3333, virtualIndex: 1, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!3347 = !DISubroutineType(types: !3348)
!3348 = !{!100, !3349}
!3349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3350, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3350 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3333)
!3351 = !DISubprogram(name: "NumDims", linkageName: "_ZNK10tensorflow15TensorInterface7NumDimsEv", scope: !3333, file: !2399, line: 107, type: !3352, scopeLine: 107, containingType: !3333, virtualIndex: 2, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!3352 = !DISubroutineType(types: !3353)
!3353 = !{!16, !3349}
!3354 = !DISubprogram(name: "Dim", linkageName: "_ZNK10tensorflow15TensorInterface3DimEi", scope: !3333, file: !2399, line: 108, type: !3355, scopeLine: 108, containingType: !3333, virtualIndex: 3, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!3355 = !DISubroutineType(types: !3356)
!3356 = !{!64, !3349, !16}
!3357 = !DISubprogram(name: "NumElements", linkageName: "_ZNK10tensorflow15TensorInterface11NumElementsEv", scope: !3333, file: !2399, line: 109, type: !3358, scopeLine: 109, containingType: !3333, virtualIndex: 4, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!3358 = !DISubroutineType(types: !3359)
!3359 = !{!64, !3349}
!3360 = !DISubprogram(name: "ByteSize", linkageName: "_ZNK10tensorflow15TensorInterface8ByteSizeEv", scope: !3333, file: !2399, line: 110, type: !3361, scopeLine: 110, containingType: !3333, virtualIndex: 5, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!3361 = !DISubroutineType(types: !3362)
!3362 = !{!19, !3349}
!3363 = !DISubprogram(name: "Data", linkageName: "_ZNK10tensorflow15TensorInterface4DataEv", scope: !3333, file: !2399, line: 111, type: !3364, scopeLine: 111, containingType: !3333, virtualIndex: 6, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!3364 = !DISubroutineType(types: !3365)
!3365 = !{!38, !3349}
!3366 = !DISubprogram(name: "IsAligned", linkageName: "_ZNK10tensorflow15TensorInterface9IsAlignedEv", scope: !3333, file: !2399, line: 112, type: !3367, scopeLine: 112, containingType: !3333, virtualIndex: 7, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!3367 = !DISubroutineType(types: !3368)
!3368 = !{!53, !3349}
!3369 = !DISubprogram(name: "CanMove", linkageName: "_ZNK10tensorflow15TensorInterface7CanMoveEv", scope: !3333, file: !2399, line: 113, type: !3367, scopeLine: 113, containingType: !3333, virtualIndex: 8, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!3370 = !DISubprogram(name: "SummarizeValue", linkageName: "_ZNK10tensorflow15TensorInterface14SummarizeValueB5cxx11Ev", scope: !3333, file: !2399, line: 114, type: !3371, scopeLine: 114, containingType: !3333, virtualIndex: 9, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!3371 = !DISubroutineType(types: !3372)
!3372 = !{!29, !3349}
!3373 = !DISubprogram(name: "SetShape", linkageName: "_ZN10tensorflow15TensorInterface8SetShapeEPKli", scope: !3333, file: !2399, line: 116, type: !3374, scopeLine: 116, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!3374 = !DISubroutineType(types: !3375)
!3375 = !{null, !3340, !3005, !16}
!3376 = !DISubprogram(name: "ToTensor", linkageName: "_ZNK10tensorflow15TensorInterface8ToTensorEPNS_6TensorE", scope: !3333, file: !2399, line: 117, type: !3377, scopeLine: 117, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!3377 = !DISubroutineType(types: !3378)
!3378 = !{!919, !3349, !1938}
!3379 = !DISubprogram(name: "BitcastFrom", linkageName: "_ZN10tensorflow15TensorInterface11BitcastFromERKS0_8DataTypePKli", scope: !3333, file: !2399, line: 118, type: !3380, scopeLine: 118, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!3380 = !DISubroutineType(types: !3381)
!3381 = !{!919, !3340, !3382, !100, !3005, !16}
!3382 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3350, size: 64)
!3383 = !DISubprogram(name: "FromProto", linkageName: "_ZN10tensorflow15TensorInterface9FromProtoERKNS_11TensorProtoE", scope: !3333, file: !2399, line: 120, type: !3384, scopeLine: 120, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!3384 = !DISubroutineType(types: !3385)
!3385 = !{!919, !3340, !3386}
!3386 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3387, size: 64)
!3387 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2134)
!3388 = !DISubprogram(name: "Tensor", linkageName: "_ZN10tensorflow15TensorInterface6TensorEv", scope: !3333, file: !2399, line: 122, type: !3389, scopeLine: 122, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!3389 = !DISubroutineType(types: !3390)
!3390 = !{!2120, !3340}
!3391 = !DILocation(line: 93, column: 56, scope: !3269)
!3392 = !DILocation(line: 93, column: 28, scope: !3269)
!3393 = !DILocation(line: 93, column: 3, scope: !3269)
!3394 = distinct !DISubprogram(name: "allocator", linkageName: "_ZNSaIlEC2Ev", scope: !312, file: !246, line: 156, type: !359, scopeLine: 156, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !358, retainedNodes: !212)
!3395 = !DILocalVariable(name: "this", arg: 1, scope: !3394, type: !3396, flags: DIFlagArtificial | DIFlagObjectPointer)
!3396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!3397 = !DILocation(line: 0, scope: !3394)
!3398 = !DILocation(line: 156, column: 36, scope: !3394)
!3399 = !DILocation(line: 156, column: 7, scope: !3394)
!3400 = !DILocation(line: 156, column: 38, scope: !3394)
!3401 = distinct !DISubprogram(name: "vector", linkageName: "_ZNSt6vectorIlSaIlEEC2EmRKS0_", scope: !287, file: !288, line: 510, type: !557, scopeLine: 512, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !556, retainedNodes: !212)
!3402 = !DILocalVariable(name: "this", arg: 1, scope: !3401, type: !3403, flags: DIFlagArtificial | DIFlagObjectPointer)
!3403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!3404 = !DILocation(line: 0, scope: !3401)
!3405 = !DILocalVariable(name: "__n", arg: 2, scope: !3401, file: !288, line: 510, type: !559)
!3406 = !DILocation(line: 510, column: 24, scope: !3401)
!3407 = !DILocalVariable(name: "__a", arg: 3, scope: !3401, file: !288, line: 510, type: !553)
!3408 = !DILocation(line: 510, column: 51, scope: !3401)
!3409 = !DILocation(line: 512, column: 7, scope: !3401)
!3410 = !DILocation(line: 511, column: 33, scope: !3401)
!3411 = !DILocation(line: 511, column: 38, scope: !3401)
!3412 = !DILocation(line: 511, column: 15, scope: !3401)
!3413 = !DILocation(line: 511, column: 44, scope: !3401)
!3414 = !DILocation(line: 511, column: 9, scope: !3401)
!3415 = !DILocation(line: 512, column: 31, scope: !3416)
!3416 = distinct !DILexicalBlock(scope: !3401, file: !288, line: 512, column: 7)
!3417 = !DILocation(line: 512, column: 9, scope: !3416)
!3418 = !DILocation(line: 512, column: 37, scope: !3401)
!3419 = !DILocation(line: 512, column: 37, scope: !3416)
!3420 = distinct !DISubprogram(name: "~allocator", linkageName: "_ZNSaIlED2Ev", scope: !312, file: !246, line: 174, type: !359, scopeLine: 174, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !371, retainedNodes: !212)
!3421 = !DILocalVariable(name: "this", arg: 1, scope: !3420, type: !3396, flags: DIFlagArtificial | DIFlagObjectPointer)
!3422 = !DILocation(line: 0, scope: !3420)
!3423 = !DILocation(line: 174, column: 39, scope: !3424)
!3424 = distinct !DILexicalBlock(scope: !3420, file: !246, line: 174, column: 37)
!3425 = !DILocation(line: 174, column: 39, scope: !3420)
!3426 = distinct !DISubprogram(name: "operator[]", linkageName: "_ZNSt6vectorIlSaIlEEixEm", scope: !287, file: !288, line: 1043, type: !785, scopeLine: 1044, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !784, retainedNodes: !212)
!3427 = !DILocalVariable(name: "this", arg: 1, scope: !3426, type: !3403, flags: DIFlagArtificial | DIFlagObjectPointer)
!3428 = !DILocation(line: 0, scope: !3426)
!3429 = !DILocalVariable(name: "__n", arg: 2, scope: !3426, file: !288, line: 1043, type: !559)
!3430 = !DILocation(line: 1043, column: 28, scope: !3426)
!3431 = !DILocation(line: 1046, column: 17, scope: !3426)
!3432 = !DILocation(line: 1046, column: 11, scope: !3426)
!3433 = !DILocation(line: 1046, column: 25, scope: !3426)
!3434 = !DILocation(line: 1046, column: 36, scope: !3426)
!3435 = !DILocation(line: 1046, column: 34, scope: !3426)
!3436 = !DILocation(line: 1046, column: 2, scope: !3426)
!3437 = distinct !DISubprogram(name: "TensorShape", linkageName: "_ZN10tensorflow11TensorShapeC2ERKSt6vectorIlSaIlEE", scope: !284, file: !101, line: 151, type: !903, scopeLine: 151, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !902, retainedNodes: !212)
!3438 = !DILocalVariable(name: "this", arg: 1, scope: !3437, type: !962, flags: DIFlagArtificial | DIFlagObjectPointer)
!3439 = !DILocation(line: 0, scope: !3437)
!3440 = !DILocalVariable(name: "dims", arg: 2, scope: !3437, file: !101, line: 151, type: !569)
!3441 = !DILocation(line: 151, column: 52, scope: !3437)
!3442 = !DILocation(line: 151, column: 60, scope: !3437)
!3443 = !DILocation(line: 151, column: 66, scope: !3437)
!3444 = !DILocation(line: 254, column: 12, scope: !3437)
!3445 = !DILocation(line: 151, column: 12, scope: !3437)
!3446 = !DILocation(line: 151, column: 73, scope: !3437)
!3447 = distinct !DISubprogram(name: "~TensorShape", linkageName: "_ZN10tensorflow11TensorShapeD2Ev", scope: !284, file: !101, line: 147, type: !896, scopeLine: 147, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !3448, retainedNodes: !212)
!3448 = !DISubprogram(name: "~TensorShape", scope: !284, type: !896, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!3449 = !DILocalVariable(name: "this", arg: 1, scope: !3447, type: !962, flags: DIFlagArtificial | DIFlagObjectPointer)
!3450 = !DILocation(line: 0, scope: !3447)
!3451 = !DILocation(line: 147, column: 7, scope: !3452)
!3452 = distinct !DILexicalBlock(scope: !3447, file: !101, line: 147, column: 7)
!3453 = !DILocation(line: 147, column: 7, scope: !3447)
!3454 = distinct !DISubprogram(name: "Unref", linkageName: "_ZNK10tensorflow4core10RefCounted5UnrefEv", scope: !3055, file: !3056, line: 23, type: !3225, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !3224, retainedNodes: !212)
!3455 = !DILocalVariable(name: "this", arg: 1, scope: !3454, type: !3456, flags: DIFlagArtificial | DIFlagObjectPointer)
!3456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3223, size: 64)
!3457 = !DILocation(line: 0, scope: !3454)
!3458 = !DILocation(line: 25, column: 9, scope: !3459)
!3459 = distinct !DILexicalBlock(scope: !3454, file: !3056, line: 25, column: 9)
!3460 = !DILocalVariable(name: "this", arg: 1, scope: !3461, type: !3462, flags: DIFlagArtificial | DIFlagObjectPointer)
!3461 = distinct !DISubprogram(name: "fetch_sub", linkageName: "_ZNSt13__atomic_baseImE9fetch_subEmSt12memory_order", scope: !3065, file: !214, line: 626, type: !3154, scopeLine: 628, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !3178, retainedNodes: !212)
!3462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3065, size: 64)
!3463 = !DILocation(line: 0, scope: !3461, inlinedAt: !3464)
!3464 = distinct !DILocation(line: 25, column: 20, scope: !3459)
!3465 = !DILocalVariable(name: "__i", arg: 2, scope: !3461, file: !214, line: 626, type: !3070)
!3466 = !DILocation(line: 626, column: 28, scope: !3461, inlinedAt: !3464)
!3467 = !DILocalVariable(name: "__m", arg: 3, scope: !3461, file: !214, line: 627, type: !3143)
!3468 = !DILocation(line: 627, column: 16, scope: !3461, inlinedAt: !3464)
!3469 = !DILocation(line: 628, column: 36, scope: !3461, inlinedAt: !3464)
!3470 = !DILocation(line: 628, column: 51, scope: !3461, inlinedAt: !3464)
!3471 = !DILocation(line: 628, column: 42, scope: !3461, inlinedAt: !3464)
!3472 = !DILocation(line: 628, column: 16, scope: !3461, inlinedAt: !3464)
!3473 = !DILocation(line: 25, column: 60, scope: !3459)
!3474 = !DILocation(line: 25, column: 9, scope: !3454)
!3475 = !DILocation(line: 26, column: 7, scope: !3476)
!3476 = distinct !DILexicalBlock(scope: !3459, file: !3056, line: 25, column: 66)
!3477 = !DILocation(line: 27, column: 7, scope: !3476)
!3478 = !DILocation(line: 29, column: 5, scope: !3454)
!3479 = !DILocation(line: 30, column: 3, scope: !3454)
!3480 = distinct !DISubprogram(name: "TF_DataTypeSize", linkageName: "_ZL15TF_DataTypeSize11TF_DataType", scope: !169, file: !169, line: 79, type: !3481, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !89, retainedNodes: !212)
!3481 = !DISubroutineType(types: !3482)
!3482 = !{!19, !225}
!3483 = !DILocalVariable(name: "dt", arg: 1, scope: !3480, file: !169, line: 79, type: !225)
!3484 = !DILocation(line: 79, column: 50, scope: !3480)
!3485 = !DILocation(line: 80, column: 11, scope: !3480)
!3486 = !DILocation(line: 80, column: 3, scope: !3480)
!3487 = !DILocation(line: 81, column: 27, scope: !3488)
!3488 = distinct !DILexicalBlock(scope: !3480, file: !169, line: 80, column: 15)
!3489 = !DILocation(line: 82, column: 27, scope: !3488)
!3490 = !DILocation(line: 83, column: 27, scope: !3488)
!3491 = !DILocation(line: 84, column: 27, scope: !3488)
!3492 = !DILocation(line: 85, column: 27, scope: !3488)
!3493 = !DILocation(line: 86, column: 27, scope: !3488)
!3494 = !DILocation(line: 87, column: 27, scope: !3488)
!3495 = !DILocation(line: 88, column: 27, scope: !3488)
!3496 = !DILocation(line: 89, column: 27, scope: !3488)
!3497 = !DILocation(line: 90, column: 27, scope: !3488)
!3498 = !DILocation(line: 91, column: 27, scope: !3488)
!3499 = !DILocation(line: 92, column: 27, scope: !3488)
!3500 = !DILocation(line: 93, column: 27, scope: !3488)
!3501 = !DILocation(line: 96, column: 27, scope: !3488)
!3502 = !DILocation(line: 97, column: 27, scope: !3488)
!3503 = !DILocation(line: 98, column: 27, scope: !3488)
!3504 = !DILocation(line: 99, column: 27, scope: !3488)
!3505 = !DILocation(line: 100, column: 27, scope: !3488)
!3506 = !DILocation(line: 103, column: 27, scope: !3488)
!3507 = !DILocation(line: 104, column: 27, scope: !3488)
!3508 = !DILocation(line: 110, column: 7, scope: !3488)
!3509 = !DILocation(line: 118, column: 7, scope: !3488)
!3510 = !DILocation(line: 125, column: 7, scope: !3488)
!3511 = !DILocation(line: 128, column: 7, scope: !3488)
!3512 = !DILocation(line: 130, column: 1, scope: !3480)
!3513 = distinct !DISubprogram(name: "NumElements", linkageName: "_ZNK10tensorflow6Tensor11NumElementsEv", scope: !1906, file: !1907, line: 305, type: !2102, scopeLine: 305, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !2101, retainedNodes: !212)
!3514 = !DILocalVariable(name: "this", arg: 1, scope: !3513, type: !3515, flags: DIFlagArtificial | DIFlagObjectPointer)
!3515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2082, size: 64)
!3516 = !DILocation(line: 0, scope: !3513)
!3517 = !DILocation(line: 305, column: 40, scope: !3513)
!3518 = !DILocation(line: 305, column: 48, scope: !3513)
!3519 = !DILocation(line: 305, column: 33, scope: !3513)
!3520 = distinct !DISubprogram(name: "move<tensorflow::Tensor &>", linkageName: "_ZSt4moveIRN10tensorflow6TensorEEONSt16remove_referenceIT_E4typeEOS4_", scope: !31, file: !3521, line: 104, type: !3522, scopeLine: 105, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, templateParams: !3527, retainedNodes: !212)
!3521 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/move.h", directory: "")
!3522 = !DISubroutineType(types: !3523)
!3523 = !{!3524, !2120}
!3524 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !3525, size: 64)
!3525 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !3526, file: !502, line: 1602, baseType: !1906)
!3526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "remove_reference<tensorflow::Tensor &>", scope: !31, file: !502, line: 1601, size: 8, flags: DIFlagTypePassByValue, elements: !212, templateParams: !3527, identifier: "_ZTSSt16remove_referenceIRN10tensorflow6TensorEE")
!3527 = !{!3528}
!3528 = !DITemplateTypeParameter(name: "_Tp", type: !2120)
!3529 = !DILocalVariable(name: "__t", arg: 1, scope: !3520, file: !3521, line: 104, type: !2120)
!3530 = !DILocation(line: 104, column: 16, scope: !3520)
!3531 = !DILocation(line: 105, column: 71, scope: !3520)
!3532 = !DILocation(line: 105, column: 7, scope: !3520)
!3533 = distinct !DISubprogram(name: "TensorInterface", linkageName: "_ZN10tensorflow15TensorInterfaceC2ENS_6TensorE", scope: !3333, file: !2399, line: 101, type: !3342, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !3341, retainedNodes: !212)
!3534 = !DILocalVariable(name: "this", arg: 1, scope: !3533, type: !3535, flags: DIFlagArtificial | DIFlagObjectPointer)
!3535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3333, size: 64)
!3536 = !DILocation(line: 0, scope: !3533)
!3537 = !DILocalVariable(name: "t", arg: 2, scope: !3533, file: !2399, line: 101, type: !1906)
!3538 = !DILocation(line: 101, column: 47, scope: !3533)
!3539 = !DILocation(line: 101, column: 74, scope: !3533)
!3540 = !DILocation(line: 101, column: 12, scope: !3533)
!3541 = !DILocation(line: 101, column: 52, scope: !3533)
!3542 = !DILocation(line: 101, column: 60, scope: !3533)
!3543 = !DILocation(line: 101, column: 75, scope: !3533)
!3544 = !DILocation(line: 101, column: 75, scope: !3545)
!3545 = distinct !DILexicalBlock(scope: !3533, file: !2399, line: 101, column: 74)
!3546 = distinct !DISubprogram(name: "~vector", linkageName: "_ZNSt6vectorIlSaIlEED2Ev", scope: !287, file: !288, line: 678, type: !547, scopeLine: 679, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !616, retainedNodes: !212)
!3547 = !DILocalVariable(name: "this", arg: 1, scope: !3546, type: !3403, flags: DIFlagArtificial | DIFlagObjectPointer)
!3548 = !DILocation(line: 0, scope: !3546)
!3549 = !DILocation(line: 680, column: 22, scope: !3550)
!3550 = distinct !DILexicalBlock(scope: !3546, file: !288, line: 679, column: 7)
!3551 = !DILocation(line: 680, column: 16, scope: !3550)
!3552 = !DILocation(line: 680, column: 30, scope: !3550)
!3553 = !DILocation(line: 680, column: 46, scope: !3550)
!3554 = !DILocation(line: 680, column: 40, scope: !3550)
!3555 = !DILocation(line: 680, column: 54, scope: !3550)
!3556 = !DILocation(line: 681, column: 9, scope: !3550)
!3557 = !DILocation(line: 680, column: 2, scope: !3550)
!3558 = !DILocation(line: 683, column: 7, scope: !3550)
!3559 = !DILocation(line: 683, column: 7, scope: !3546)
!3560 = distinct !DISubprogram(name: "_M_get_Tp_allocator", linkageName: "_ZNSt12_Vector_baseIlSaIlEE19_M_get_Tp_allocatorEv", scope: !291, file: !288, line: 276, type: !449, scopeLine: 277, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !448, retainedNodes: !212)
!3561 = !DILocalVariable(name: "this", arg: 1, scope: !3560, type: !3562, flags: DIFlagArtificial | DIFlagObjectPointer)
!3562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!3563 = !DILocation(line: 0, scope: !3560)
!3564 = !DILocation(line: 277, column: 22, scope: !3560)
!3565 = !DILocation(line: 277, column: 16, scope: !3560)
!3566 = !DILocation(line: 277, column: 9, scope: !3560)
!3567 = distinct !DISubprogram(name: "_Destroy<long *, long>", linkageName: "_ZSt8_DestroyIPllEvT_S1_RSaIT0_E", scope: !31, file: !236, line: 845, type: !3568, scopeLine: 847, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, templateParams: !3570, retainedNodes: !212)
!3568 = !DISubroutineType(types: !3569)
!3569 = !{null, !309, !309, !370}
!3570 = !{!3571, !357}
!3571 = !DITemplateTypeParameter(name: "_ForwardIterator", type: !309)
!3572 = !DILocalVariable(name: "__first", arg: 1, scope: !3567, file: !236, line: 845, type: !309)
!3573 = !DILocation(line: 845, column: 31, scope: !3567)
!3574 = !DILocalVariable(name: "__last", arg: 2, scope: !3567, file: !236, line: 845, type: !309)
!3575 = !DILocation(line: 845, column: 57, scope: !3567)
!3576 = !DILocalVariable(arg: 3, scope: !3567, file: !236, line: 846, type: !370)
!3577 = !DILocation(line: 846, column: 22, scope: !3567)
!3578 = !DILocation(line: 848, column: 16, scope: !3567)
!3579 = !DILocation(line: 848, column: 25, scope: !3567)
!3580 = !DILocation(line: 848, column: 7, scope: !3567)
!3581 = !DILocation(line: 849, column: 5, scope: !3567)
!3582 = distinct !DISubprogram(name: "~_Vector_base", linkageName: "_ZNSt12_Vector_baseIlSaIlEED2Ev", scope: !291, file: !288, line: 333, type: !463, scopeLine: 334, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !489, retainedNodes: !212)
!3583 = !DILocalVariable(name: "this", arg: 1, scope: !3582, type: !3562, flags: DIFlagArtificial | DIFlagObjectPointer)
!3584 = !DILocation(line: 0, scope: !3582)
!3585 = !DILocation(line: 335, column: 16, scope: !3586)
!3586 = distinct !DILexicalBlock(scope: !3582, file: !288, line: 334, column: 7)
!3587 = !DILocation(line: 335, column: 24, scope: !3586)
!3588 = !DILocation(line: 336, column: 9, scope: !3586)
!3589 = !DILocation(line: 336, column: 17, scope: !3586)
!3590 = !DILocation(line: 336, column: 37, scope: !3586)
!3591 = !DILocation(line: 336, column: 45, scope: !3586)
!3592 = !DILocation(line: 336, column: 35, scope: !3586)
!3593 = !DILocation(line: 335, column: 2, scope: !3586)
!3594 = !DILocation(line: 337, column: 7, scope: !3586)
!3595 = !DILocation(line: 337, column: 7, scope: !3582)
!3596 = distinct !DISubprogram(name: "_M_deallocate", linkageName: "_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm", scope: !291, file: !288, line: 350, type: !494, scopeLine: 351, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !493, retainedNodes: !212)
!3597 = !DILocalVariable(name: "this", arg: 1, scope: !3596, type: !3562, flags: DIFlagArtificial | DIFlagObjectPointer)
!3598 = !DILocation(line: 0, scope: !3596)
!3599 = !DILocalVariable(name: "__p", arg: 2, scope: !3596, file: !288, line: 350, type: !407)
!3600 = !DILocation(line: 350, column: 29, scope: !3596)
!3601 = !DILocalVariable(name: "__n", arg: 3, scope: !3596, file: !288, line: 350, type: !210)
!3602 = !DILocation(line: 350, column: 41, scope: !3596)
!3603 = !DILocation(line: 353, column: 6, scope: !3604)
!3604 = distinct !DILexicalBlock(scope: !3596, file: !288, line: 353, column: 6)
!3605 = !DILocation(line: 353, column: 6, scope: !3596)
!3606 = !DILocation(line: 354, column: 20, scope: !3604)
!3607 = !DILocation(line: 354, column: 29, scope: !3604)
!3608 = !DILocation(line: 354, column: 34, scope: !3604)
!3609 = !DILocation(line: 354, column: 4, scope: !3604)
!3610 = !DILocation(line: 355, column: 7, scope: !3596)
!3611 = distinct !DISubprogram(name: "~_Vector_impl", linkageName: "_ZNSt12_Vector_baseIlSaIlEE12_Vector_implD2Ev", scope: !294, file: !288, line: 128, type: !429, scopeLine: 128, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !3612, retainedNodes: !212)
!3612 = !DISubprogram(name: "~_Vector_impl", scope: !294, type: !429, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!3613 = !DILocalVariable(name: "this", arg: 1, scope: !3611, type: !3614, flags: DIFlagArtificial | DIFlagObjectPointer)
!3614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!3615 = !DILocation(line: 0, scope: !3611)
!3616 = !DILocation(line: 128, column: 14, scope: !3617)
!3617 = distinct !DILexicalBlock(scope: !3611, file: !288, line: 128, column: 14)
!3618 = !DILocation(line: 128, column: 14, scope: !3611)
!3619 = distinct !DISubprogram(name: "deallocate", linkageName: "_ZNSt16allocator_traitsISaIlEE10deallocateERS0_Plm", scope: !303, file: !236, line: 495, type: !376, scopeLine: 496, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !375, retainedNodes: !212)
!3620 = !DILocalVariable(name: "__a", arg: 1, scope: !3619, file: !236, line: 495, type: !310)
!3621 = !DILocation(line: 495, column: 34, scope: !3619)
!3622 = !DILocalVariable(name: "__p", arg: 2, scope: !3619, file: !236, line: 495, type: !308)
!3623 = !DILocation(line: 495, column: 47, scope: !3619)
!3624 = !DILocalVariable(name: "__n", arg: 3, scope: !3619, file: !236, line: 495, type: !247)
!3625 = !DILocation(line: 495, column: 62, scope: !3619)
!3626 = !DILocation(line: 496, column: 9, scope: !3619)
!3627 = !DILocation(line: 496, column: 24, scope: !3619)
!3628 = !DILocation(line: 496, column: 29, scope: !3619)
!3629 = !DILocation(line: 496, column: 13, scope: !3619)
!3630 = !DILocation(line: 496, column: 35, scope: !3619)
!3631 = distinct !DISubprogram(name: "deallocate", linkageName: "_ZN9__gnu_cxx13new_allocatorIlE10deallocateEPlm", scope: !317, file: !318, line: 132, type: !350, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !349, retainedNodes: !212)
!3632 = !DILocalVariable(name: "this", arg: 1, scope: !3631, type: !3633, flags: DIFlagArtificial | DIFlagObjectPointer)
!3633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!3634 = !DILocation(line: 0, scope: !3631)
!3635 = !DILocalVariable(name: "__p", arg: 2, scope: !3631, file: !318, line: 132, type: !309)
!3636 = !DILocation(line: 132, column: 23, scope: !3631)
!3637 = !DILocalVariable(name: "__t", arg: 3, scope: !3631, file: !318, line: 132, type: !348)
!3638 = !DILocation(line: 132, column: 38, scope: !3631)
!3639 = !DILocation(line: 145, column: 20, scope: !3631)
!3640 = !DILocation(line: 145, column: 2, scope: !3631)
!3641 = !DILocation(line: 150, column: 7, scope: !3631)
!3642 = distinct !DISubprogram(name: "_Destroy<long *>", linkageName: "_ZSt8_DestroyIPlEvT_S1_", scope: !31, file: !3643, line: 182, type: !3644, scopeLine: 183, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, templateParams: !3646, retainedNodes: !212)
!3643 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/stl_construct.h", directory: "")
!3644 = !DISubroutineType(types: !3645)
!3645 = !{null, !309, !309}
!3646 = !{!3571}
!3647 = !DILocalVariable(name: "__first", arg: 1, scope: !3642, file: !3643, line: 182, type: !309)
!3648 = !DILocation(line: 182, column: 31, scope: !3642)
!3649 = !DILocalVariable(name: "__last", arg: 2, scope: !3642, file: !3643, line: 182, type: !309)
!3650 = !DILocation(line: 182, column: 57, scope: !3642)
!3651 = !DILocation(line: 196, column: 12, scope: !3642)
!3652 = !DILocation(line: 196, column: 21, scope: !3642)
!3653 = !DILocation(line: 195, column: 7, scope: !3642)
!3654 = !DILocation(line: 197, column: 5, scope: !3642)
!3655 = distinct !DISubprogram(name: "__destroy<long *>", linkageName: "_ZNSt12_Destroy_auxILb1EE9__destroyIPlEEvT_S3_", scope: !3656, file: !3643, line: 172, type: !3644, scopeLine: 172, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, templateParams: !3646, declaration: !3659, retainedNodes: !212)
!3656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Destroy_aux<true>", scope: !31, file: !3643, line: 168, size: 8, flags: DIFlagTypePassByValue, elements: !212, templateParams: !3657, identifier: "_ZTSSt12_Destroy_auxILb1EE")
!3657 = !{!3658}
!3658 = !DITemplateValueParameter(type: !53, value: i1 true)
!3659 = !DISubprogram(name: "__destroy<long *>", linkageName: "_ZNSt12_Destroy_auxILb1EE9__destroyIPlEEvT_S3_", scope: !3656, file: !3643, line: 172, type: !3644, scopeLine: 172, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0, templateParams: !3646)
!3660 = !DILocalVariable(arg: 1, scope: !3655, file: !3643, line: 172, type: !309)
!3661 = !DILocation(line: 172, column: 35, scope: !3655)
!3662 = !DILocalVariable(arg: 2, scope: !3655, file: !3643, line: 172, type: !309)
!3663 = !DILocation(line: 172, column: 53, scope: !3655)
!3664 = !DILocation(line: 172, column: 57, scope: !3655)
!3665 = distinct !DISubprogram(name: "AbstractTensorInterface", linkageName: "_ZN10tensorflow23AbstractTensorInterfaceC2Ev", scope: !2403, file: !2404, line: 31, type: !2408, scopeLine: 31, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !3666, retainedNodes: !212)
!3666 = !DISubprogram(name: "AbstractTensorInterface", scope: !2403, type: !2408, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!3667 = !DILocalVariable(name: "this", arg: 1, scope: !3665, type: !2402, flags: DIFlagArtificial | DIFlagObjectPointer)
!3668 = !DILocation(line: 0, scope: !3665)
!3669 = !DILocation(line: 31, column: 7, scope: !3665)
!3670 = distinct !DISubprogram(name: "~AbstractTensorInterface", linkageName: "_ZN10tensorflow23AbstractTensorInterfaceD2Ev", scope: !2403, file: !2404, line: 57, type: !2408, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !2438, retainedNodes: !212)
!3671 = !DILocalVariable(name: "this", arg: 1, scope: !3670, type: !2402, flags: DIFlagArtificial | DIFlagObjectPointer)
!3672 = !DILocation(line: 0, scope: !3670)
!3673 = !DILocation(line: 57, column: 39, scope: !3670)
!3674 = distinct !DISubprogram(name: "Release", linkageName: "_ZN10tensorflow15TensorInterface7ReleaseEv", scope: !3333, file: !2399, line: 128, type: !3338, scopeLine: 128, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !3345, retainedNodes: !212)
!3675 = !DILocalVariable(name: "this", arg: 1, scope: !3674, type: !3535, flags: DIFlagArtificial | DIFlagObjectPointer)
!3676 = !DILocation(line: 0, scope: !3674)
!3677 = !DILocation(line: 128, column: 42, scope: !3674)
!3678 = !DILocation(line: 128, column: 55, scope: !3674)
!3679 = distinct !DISubprogram(name: "Type", linkageName: "_ZNK10tensorflow15TensorInterface4TypeEv", scope: !3333, file: !2399, line: 129, type: !3347, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !3346, retainedNodes: !212)
!3680 = !DILocalVariable(name: "this", arg: 1, scope: !3679, type: !3681, flags: DIFlagArtificial | DIFlagObjectPointer)
!3681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3350, size: 64)
!3682 = !DILocation(line: 0, scope: !3679)
!3683 = !DILocation(line: 131, column: 3, scope: !3679)
!3684 = distinct !DISubprogram(name: "NumDims", linkageName: "_ZNK10tensorflow15TensorInterface7NumDimsEv", scope: !3333, file: !2399, line: 133, type: !3352, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !3351, retainedNodes: !212)
!3685 = !DILocalVariable(name: "this", arg: 1, scope: !3684, type: !3681, flags: DIFlagArtificial | DIFlagObjectPointer)
!3686 = !DILocation(line: 0, scope: !3684)
!3687 = !DILocation(line: 133, column: 47, scope: !3684)
!3688 = distinct !DISubprogram(name: "Dim", linkageName: "_ZNK10tensorflow15TensorInterface3DimEi", scope: !3333, file: !2399, line: 134, type: !3355, scopeLine: 134, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !3354, retainedNodes: !212)
!3689 = !DILocalVariable(name: "this", arg: 1, scope: !3688, type: !3681, flags: DIFlagArtificial | DIFlagObjectPointer)
!3690 = !DILocation(line: 0, scope: !3688)
!3691 = !DILocalVariable(arg: 2, scope: !3688, file: !2399, line: 134, type: !16)
!3692 = !DILocation(line: 134, column: 40, scope: !3688)
!3693 = !DILocation(line: 134, column: 50, scope: !3688)
!3694 = distinct !DISubprogram(name: "NumElements", linkageName: "_ZNK10tensorflow15TensorInterface11NumElementsEv", scope: !3333, file: !2399, line: 135, type: !3358, scopeLine: 135, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !3357, retainedNodes: !212)
!3695 = !DILocalVariable(name: "this", arg: 1, scope: !3694, type: !3681, flags: DIFlagArtificial | DIFlagObjectPointer)
!3696 = !DILocation(line: 0, scope: !3694)
!3697 = !DILocation(line: 135, column: 55, scope: !3694)
!3698 = distinct !DISubprogram(name: "ByteSize", linkageName: "_ZNK10tensorflow15TensorInterface8ByteSizeEv", scope: !3333, file: !2399, line: 136, type: !3361, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !3360, retainedNodes: !212)
!3699 = !DILocalVariable(name: "this", arg: 1, scope: !3698, type: !3681, flags: DIFlagArtificial | DIFlagObjectPointer)
!3700 = !DILocation(line: 0, scope: !3698)
!3701 = !DILocation(line: 136, column: 51, scope: !3698)
!3702 = distinct !DISubprogram(name: "Data", linkageName: "_ZNK10tensorflow15TensorInterface4DataEv", scope: !3333, file: !2399, line: 137, type: !3364, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !3363, retainedNodes: !212)
!3703 = !DILocalVariable(name: "this", arg: 1, scope: !3702, type: !3681, flags: DIFlagArtificial | DIFlagObjectPointer)
!3704 = !DILocation(line: 0, scope: !3702)
!3705 = !DILocation(line: 137, column: 46, scope: !3702)
!3706 = distinct !DISubprogram(name: "IsAligned", linkageName: "_ZNK10tensorflow15TensorInterface9IsAlignedEv", scope: !3333, file: !2399, line: 138, type: !3367, scopeLine: 138, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !3366, retainedNodes: !212)
!3707 = !DILocalVariable(name: "this", arg: 1, scope: !3706, type: !3681, flags: DIFlagArtificial | DIFlagObjectPointer)
!3708 = !DILocation(line: 0, scope: !3706)
!3709 = !DILocation(line: 138, column: 50, scope: !3706)
!3710 = distinct !DISubprogram(name: "CanMove", linkageName: "_ZNK10tensorflow15TensorInterface7CanMoveEv", scope: !3333, file: !2399, line: 139, type: !3367, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !3369, retainedNodes: !212)
!3711 = !DILocalVariable(name: "this", arg: 1, scope: !3710, type: !3681, flags: DIFlagArtificial | DIFlagObjectPointer)
!3712 = !DILocation(line: 0, scope: !3710)
!3713 = !DILocation(line: 139, column: 48, scope: !3710)
!3714 = distinct !DISubprogram(name: "SummarizeValue", linkageName: "_ZNK10tensorflow15TensorInterface14SummarizeValueB5cxx11Ev", scope: !3333, file: !2399, line: 140, type: !3371, scopeLine: 140, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !3370, retainedNodes: !212)
!3715 = !DILocalVariable(name: "this", arg: 1, scope: !3714, type: !3681, flags: DIFlagArtificial | DIFlagObjectPointer)
!3716 = !DILocation(line: 0, scope: !3714)
!3717 = !DILocation(line: 140, column: 69, scope: !3714)
!3718 = !DILocation(line: 140, column: 62, scope: !3714)
!3719 = distinct !DISubprogram(name: "~TensorInterface", linkageName: "_ZN10tensorflow15TensorInterfaceD2Ev", scope: !3333, file: !2399, line: 102, type: !3338, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !3344, retainedNodes: !212)
!3720 = !DILocalVariable(name: "this", arg: 1, scope: !3719, type: !3535, flags: DIFlagArtificial | DIFlagObjectPointer)
!3721 = !DILocation(line: 0, scope: !3719)
!3722 = !DILocation(line: 102, column: 31, scope: !3719)
!3723 = !DILocation(line: 102, column: 32, scope: !3724)
!3724 = distinct !DILexicalBlock(scope: !3719, file: !2399, line: 102, column: 31)
!3725 = !DILocation(line: 102, column: 32, scope: !3719)
!3726 = distinct !DISubprogram(name: "~TensorInterface", linkageName: "_ZN10tensorflow15TensorInterfaceD0Ev", scope: !3333, file: !2399, line: 102, type: !3338, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !3344, retainedNodes: !212)
!3727 = !DILocalVariable(name: "this", arg: 1, scope: !3726, type: !3535, flags: DIFlagArtificial | DIFlagObjectPointer)
!3728 = !DILocation(line: 0, scope: !3726)
!3729 = !DILocation(line: 102, column: 31, scope: !3726)
!3730 = !DILocation(line: 102, column: 32, scope: !3726)
!3731 = distinct !DISubprogram(name: "~AbstractTensorInterface", linkageName: "_ZN10tensorflow23AbstractTensorInterfaceD0Ev", scope: !2403, file: !2404, line: 57, type: !2408, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !2438, retainedNodes: !212)
!3732 = !DILocalVariable(name: "this", arg: 1, scope: !3731, type: !2402, flags: DIFlagArtificial | DIFlagObjectPointer)
!3733 = !DILocation(line: 0, scope: !3731)
!3734 = !DILocation(line: 57, column: 38, scope: !3731)
!3735 = distinct !DISubprogram(name: "shape", linkageName: "_ZNK10tensorflow6Tensor5shapeEv", scope: !1906, file: !1907, line: 293, type: !2093, scopeLine: 293, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !2092, retainedNodes: !212)
!3736 = !DILocalVariable(name: "this", arg: 1, scope: !3735, type: !3515, flags: DIFlagArtificial | DIFlagObjectPointer)
!3737 = !DILocation(line: 0, scope: !3735)
!3738 = !DILocation(line: 293, column: 45, scope: !3735)
!3739 = !DILocation(line: 293, column: 38, scope: !3735)
!3740 = distinct !DISubprogram(name: "num_elements", linkageName: "_ZNK10tensorflow11TensorShape12num_elementsEv", scope: !284, file: !101, line: 158, type: !914, scopeLine: 158, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !913, retainedNodes: !212)
!3741 = !DILocalVariable(name: "this", arg: 1, scope: !3740, type: !995, flags: DIFlagArtificial | DIFlagObjectPointer)
!3742 = !DILocation(line: 0, scope: !3740)
!3743 = !DILocation(line: 159, column: 9, scope: !3744)
!3744 = distinct !DILexicalBlock(scope: !3740, file: !101, line: 159, column: 9)
!3745 = !DILocation(line: 159, column: 15, scope: !3744)
!3746 = !DILocation(line: 159, column: 9, scope: !3740)
!3747 = !DILocation(line: 159, column: 24, scope: !3744)
!3748 = !DILocalVariable(name: "prod", scope: !3740, file: !101, line: 160, type: !64)
!3749 = !DILocation(line: 160, column: 13, scope: !3740)
!3750 = !DILocalVariable(name: "__range2", scope: !3751, type: !569, flags: DIFlagArtificial)
!3751 = distinct !DILexicalBlock(scope: !3740, file: !101, line: 161, column: 5)
!3752 = !DILocation(line: 0, scope: !3751)
!3753 = !DILocation(line: 161, column: 22, scope: !3751)
!3754 = !DILocalVariable(name: "__begin2", scope: !3751, type: !698, flags: DIFlagArtificial)
!3755 = !DILocation(line: 161, column: 20, scope: !3751)
!3756 = !DILocalVariable(name: "__end2", scope: !3751, type: !698, flags: DIFlagArtificial)
!3757 = !DILocalVariable(name: "d", scope: !3758, file: !101, line: 161, type: !64)
!3758 = distinct !DILexicalBlock(scope: !3751, file: !101, line: 161, column: 5)
!3759 = !DILocation(line: 161, column: 18, scope: !3758)
!3760 = !DILocation(line: 161, column: 20, scope: !3758)
!3761 = !DILocation(line: 162, column: 11, scope: !3762)
!3762 = distinct !DILexicalBlock(scope: !3763, file: !101, line: 162, column: 11)
!3763 = distinct !DILexicalBlock(scope: !3758, file: !101, line: 161, column: 29)
!3764 = !DILocation(line: 162, column: 13, scope: !3762)
!3765 = !DILocation(line: 162, column: 11, scope: !3763)
!3766 = !DILocation(line: 162, column: 19, scope: !3762)
!3767 = !DILocation(line: 163, column: 15, scope: !3763)
!3768 = !DILocation(line: 163, column: 12, scope: !3763)
!3769 = !DILocation(line: 161, column: 5, scope: !3751)
!3770 = distinct !{!3770, !3769, !3771}
!3771 = !DILocation(line: 164, column: 5, scope: !3751)
!3772 = !DILocation(line: 165, column: 12, scope: !3740)
!3773 = !DILocation(line: 165, column: 5, scope: !3740)
!3774 = !DILocation(line: 166, column: 3, scope: !3740)
!3775 = distinct !DISubprogram(name: "empty", linkageName: "_ZNKSt6vectorIlSaIlEE5emptyEv", scope: !287, file: !288, line: 1007, type: !781, scopeLine: 1008, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !780, retainedNodes: !212)
!3776 = !DILocalVariable(name: "this", arg: 1, scope: !3775, type: !3777, flags: DIFlagArtificial | DIFlagObjectPointer)
!3777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64)
!3778 = !DILocation(line: 0, scope: !3775)
!3779 = !DILocation(line: 1008, column: 16, scope: !3775)
!3780 = !DILocation(line: 1008, column: 27, scope: !3775)
!3781 = !DILocation(line: 1008, column: 24, scope: !3775)
!3782 = !DILocation(line: 1008, column: 9, scope: !3775)
!3783 = distinct !DISubprogram(name: "begin", linkageName: "_ZNKSt6vectorIlSaIlEE5beginEv", scope: !287, file: !288, line: 820, type: !695, scopeLine: 821, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !694, retainedNodes: !212)
!3784 = !DILocalVariable(name: "this", arg: 1, scope: !3783, type: !3777, flags: DIFlagArtificial | DIFlagObjectPointer)
!3785 = !DILocation(line: 0, scope: !3783)
!3786 = !DILocation(line: 821, column: 37, scope: !3783)
!3787 = !DILocation(line: 821, column: 31, scope: !3783)
!3788 = !DILocation(line: 821, column: 45, scope: !3783)
!3789 = !DILocation(line: 821, column: 16, scope: !3783)
!3790 = !DILocation(line: 821, column: 9, scope: !3783)
!3791 = distinct !DISubprogram(name: "end", linkageName: "_ZNKSt6vectorIlSaIlEE3endEv", scope: !287, file: !288, line: 838, type: !695, scopeLine: 839, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !753, retainedNodes: !212)
!3792 = !DILocalVariable(name: "this", arg: 1, scope: !3791, type: !3777, flags: DIFlagArtificial | DIFlagObjectPointer)
!3793 = !DILocation(line: 0, scope: !3791)
!3794 = !DILocation(line: 839, column: 37, scope: !3791)
!3795 = !DILocation(line: 839, column: 31, scope: !3791)
!3796 = !DILocation(line: 839, column: 45, scope: !3791)
!3797 = !DILocation(line: 839, column: 16, scope: !3791)
!3798 = !DILocation(line: 839, column: 9, scope: !3791)
!3799 = distinct !DISubprogram(name: "operator!=<const long *, std::vector<long, std::allocator<long> > >", linkageName: "_ZN9__gnu_cxxneIPKlSt6vectorIlSaIlEEEEbRKNS_17__normal_iteratorIT_T0_EESB_", scope: !94, file: !638, line: 1179, type: !3800, scopeLine: 1182, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, templateParams: !750, retainedNodes: !212)
!3800 = !DISubroutineType(types: !3801)
!3801 = !{!53, !3802, !3802}
!3802 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !719, size: 64)
!3803 = !DILocalVariable(name: "__lhs", arg: 1, scope: !3799, file: !638, line: 1179, type: !3802)
!3804 = !DILocation(line: 1179, column: 64, scope: !3799)
!3805 = !DILocalVariable(name: "__rhs", arg: 2, scope: !3799, file: !638, line: 1180, type: !3802)
!3806 = !DILocation(line: 1180, column: 57, scope: !3799)
!3807 = !DILocation(line: 1182, column: 14, scope: !3799)
!3808 = !DILocation(line: 1182, column: 20, scope: !3799)
!3809 = !DILocation(line: 1182, column: 30, scope: !3799)
!3810 = !DILocation(line: 1182, column: 36, scope: !3799)
!3811 = !DILocation(line: 1182, column: 27, scope: !3799)
!3812 = !DILocation(line: 1182, column: 7, scope: !3799)
!3813 = distinct !DISubprogram(name: "operator*", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEdeEv", scope: !698, file: !638, line: 1042, type: !711, scopeLine: 1043, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !710, retainedNodes: !212)
!3814 = !DILocalVariable(name: "this", arg: 1, scope: !3813, type: !3815, flags: DIFlagArtificial | DIFlagObjectPointer)
!3815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!3816 = !DILocation(line: 0, scope: !3813)
!3817 = !DILocation(line: 1043, column: 17, scope: !3813)
!3818 = !DILocation(line: 1043, column: 9, scope: !3813)
!3819 = distinct !DISubprogram(name: "operator++", linkageName: "_ZN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEppEv", scope: !698, file: !638, line: 1052, type: !726, scopeLine: 1053, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !725, retainedNodes: !212)
!3820 = !DILocalVariable(name: "this", arg: 1, scope: !3819, type: !3821, flags: DIFlagArtificial | DIFlagObjectPointer)
!3821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64)
!3822 = !DILocation(line: 0, scope: !3819)
!3823 = !DILocation(line: 1054, column: 4, scope: !3819)
!3824 = !DILocation(line: 1054, column: 2, scope: !3819)
!3825 = !DILocation(line: 1055, column: 2, scope: !3819)
!3826 = distinct !DISubprogram(name: "base", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEE4baseEv", scope: !698, file: !638, line: 1105, type: !748, scopeLine: 1106, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !747, retainedNodes: !212)
!3827 = !DILocalVariable(name: "this", arg: 1, scope: !3826, type: !3815, flags: DIFlagArtificial | DIFlagObjectPointer)
!3828 = !DILocation(line: 0, scope: !3826)
!3829 = !DILocation(line: 1106, column: 16, scope: !3826)
!3830 = !DILocation(line: 1106, column: 9, scope: !3826)
!3831 = distinct !DISubprogram(name: "__normal_iterator", linkageName: "_ZN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEC2ERKS2_", scope: !698, file: !638, line: 1027, type: !706, scopeLine: 1028, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !705, retainedNodes: !212)
!3832 = !DILocalVariable(name: "this", arg: 1, scope: !3831, type: !3821, flags: DIFlagArtificial | DIFlagObjectPointer)
!3833 = !DILocation(line: 0, scope: !3831)
!3834 = !DILocalVariable(name: "__i", arg: 2, scope: !3831, file: !638, line: 1027, type: !708)
!3835 = !DILocation(line: 1027, column: 42, scope: !3831)
!3836 = !DILocation(line: 1028, column: 9, scope: !3831)
!3837 = !DILocation(line: 1028, column: 20, scope: !3831)
!3838 = !DILocation(line: 1028, column: 27, scope: !3831)
!3839 = distinct !DISubprogram(name: "operator==<const long *, std::vector<long, std::allocator<long> > >", linkageName: "_ZN9__gnu_cxxeqIPKlSt6vectorIlSaIlEEEEbRKNS_17__normal_iteratorIT_T0_EESB_", scope: !94, file: !638, line: 1163, type: !3800, scopeLine: 1166, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, templateParams: !750, retainedNodes: !212)
!3840 = !DILocalVariable(name: "__lhs", arg: 1, scope: !3839, file: !638, line: 1163, type: !3802)
!3841 = !DILocation(line: 1163, column: 64, scope: !3839)
!3842 = !DILocalVariable(name: "__rhs", arg: 2, scope: !3839, file: !638, line: 1164, type: !3802)
!3843 = !DILocation(line: 1164, column: 57, scope: !3839)
!3844 = !DILocation(line: 1166, column: 14, scope: !3839)
!3845 = !DILocation(line: 1166, column: 20, scope: !3839)
!3846 = !DILocation(line: 1166, column: 30, scope: !3839)
!3847 = !DILocation(line: 1166, column: 36, scope: !3839)
!3848 = !DILocation(line: 1166, column: 27, scope: !3839)
!3849 = !DILocation(line: 1166, column: 7, scope: !3839)
!3850 = distinct !DISubprogram(name: "vector", linkageName: "_ZNSt6vectorIlSaIlEEC2ERKS1_", scope: !287, file: !288, line: 553, type: !567, scopeLine: 556, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !566, retainedNodes: !212)
!3851 = !DILocalVariable(name: "this", arg: 1, scope: !3850, type: !3403, flags: DIFlagArtificial | DIFlagObjectPointer)
!3852 = !DILocation(line: 0, scope: !3850)
!3853 = !DILocalVariable(name: "__x", arg: 2, scope: !3850, file: !288, line: 553, type: !569)
!3854 = !DILocation(line: 553, column: 28, scope: !3850)
!3855 = !DILocation(line: 556, column: 7, scope: !3850)
!3856 = !DILocation(line: 554, column: 15, scope: !3850)
!3857 = !DILocation(line: 554, column: 19, scope: !3850)
!3858 = !DILocation(line: 555, column: 35, scope: !3850)
!3859 = !DILocation(line: 555, column: 39, scope: !3850)
!3860 = !DILocation(line: 555, column: 2, scope: !3850)
!3861 = !DILocation(line: 554, column: 9, scope: !3850)
!3862 = !DILocation(line: 558, column: 32, scope: !3863)
!3863 = distinct !DILexicalBlock(scope: !3850, file: !288, line: 556, column: 7)
!3864 = !DILocation(line: 558, column: 36, scope: !3863)
!3865 = !DILocation(line: 558, column: 45, scope: !3863)
!3866 = !DILocation(line: 558, column: 49, scope: !3863)
!3867 = !DILocation(line: 559, column: 17, scope: !3863)
!3868 = !DILocation(line: 559, column: 11, scope: !3863)
!3869 = !DILocation(line: 559, column: 25, scope: !3863)
!3870 = !DILocation(line: 560, column: 11, scope: !3863)
!3871 = !DILocation(line: 558, column: 4, scope: !3863)
!3872 = !DILocation(line: 557, column: 8, scope: !3863)
!3873 = !DILocation(line: 557, column: 2, scope: !3863)
!3874 = !DILocation(line: 557, column: 16, scope: !3863)
!3875 = !DILocation(line: 557, column: 26, scope: !3863)
!3876 = !DILocation(line: 561, column: 7, scope: !3850)
!3877 = !DILocation(line: 561, column: 7, scope: !3863)
!3878 = distinct !DISubprogram(name: "size", linkageName: "_ZNKSt6vectorIlSaIlEE4sizeEv", scope: !287, file: !288, line: 918, type: !771, scopeLine: 919, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !770, retainedNodes: !212)
!3879 = !DILocalVariable(name: "this", arg: 1, scope: !3878, type: !3777, flags: DIFlagArtificial | DIFlagObjectPointer)
!3880 = !DILocation(line: 0, scope: !3878)
!3881 = !DILocation(line: 919, column: 32, scope: !3878)
!3882 = !DILocation(line: 919, column: 26, scope: !3878)
!3883 = !DILocation(line: 919, column: 40, scope: !3878)
!3884 = !DILocation(line: 919, column: 58, scope: !3878)
!3885 = !DILocation(line: 919, column: 52, scope: !3878)
!3886 = !DILocation(line: 919, column: 66, scope: !3878)
!3887 = !DILocation(line: 919, column: 50, scope: !3878)
!3888 = !DILocation(line: 919, column: 9, scope: !3878)
!3889 = distinct !DISubprogram(name: "_M_get_Tp_allocator", linkageName: "_ZNKSt12_Vector_baseIlSaIlEE19_M_get_Tp_allocatorEv", scope: !291, file: !288, line: 280, type: !454, scopeLine: 281, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !453, retainedNodes: !212)
!3890 = !DILocalVariable(name: "this", arg: 1, scope: !3889, type: !3891, flags: DIFlagArtificial | DIFlagObjectPointer)
!3891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!3892 = !DILocation(line: 0, scope: !3889)
!3893 = !DILocation(line: 281, column: 22, scope: !3889)
!3894 = !DILocation(line: 281, column: 16, scope: !3889)
!3895 = !DILocation(line: 281, column: 9, scope: !3889)
!3896 = distinct !DISubprogram(name: "_S_select_on_copy", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaIlElE17_S_select_on_copyERKS1_", scope: !300, file: !231, line: 97, type: !390, scopeLine: 98, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !389, retainedNodes: !212)
!3897 = !DILocalVariable(name: "__a", arg: 1, scope: !3896, file: !231, line: 97, type: !365)
!3898 = !DILocation(line: 97, column: 61, scope: !3896)
!3899 = !DILocation(line: 98, column: 64, scope: !3896)
!3900 = !DILocation(line: 98, column: 14, scope: !3896)
!3901 = !DILocation(line: 98, column: 7, scope: !3896)
!3902 = distinct !DISubprogram(name: "_Vector_base", linkageName: "_ZNSt12_Vector_baseIlSaIlEEC2EmRKS0_", scope: !291, file: !288, line: 303, type: !474, scopeLine: 305, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !473, retainedNodes: !212)
!3903 = !DILocalVariable(name: "this", arg: 1, scope: !3902, type: !3562, flags: DIFlagArtificial | DIFlagObjectPointer)
!3904 = !DILocation(line: 0, scope: !3902)
!3905 = !DILocalVariable(name: "__n", arg: 2, scope: !3902, file: !288, line: 303, type: !210)
!3906 = !DILocation(line: 303, column: 27, scope: !3902)
!3907 = !DILocalVariable(name: "__a", arg: 3, scope: !3902, file: !288, line: 303, type: !468)
!3908 = !DILocation(line: 303, column: 54, scope: !3902)
!3909 = !DILocation(line: 304, column: 9, scope: !3902)
!3910 = !DILocation(line: 304, column: 17, scope: !3902)
!3911 = !DILocation(line: 305, column: 27, scope: !3912)
!3912 = distinct !DILexicalBlock(scope: !3902, file: !288, line: 305, column: 7)
!3913 = !DILocation(line: 305, column: 9, scope: !3912)
!3914 = !DILocation(line: 305, column: 33, scope: !3902)
!3915 = !DILocation(line: 305, column: 33, scope: !3912)
!3916 = distinct !DISubprogram(name: "__uninitialized_copy_a<__gnu_cxx::__normal_iterator<const long *, std::vector<long, std::allocator<long> > >, long *, long>", linkageName: "_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEEPllET0_T_SA_S9_RSaIT1_E", scope: !31, file: !3917, line: 331, type: !3918, scopeLine: 333, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, templateParams: !3920, retainedNodes: !212)
!3917 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/stl_uninitialized.h", directory: "")
!3918 = !DISubroutineType(types: !3919)
!3919 = !{!309, !698, !698, !309, !370}
!3920 = !{!3921, !3571, !357}
!3921 = !DITemplateTypeParameter(name: "_InputIterator", type: !698)
!3922 = !DILocalVariable(name: "__first", arg: 1, scope: !3916, file: !3917, line: 331, type: !698)
!3923 = !DILocation(line: 331, column: 43, scope: !3916)
!3924 = !DILocalVariable(name: "__last", arg: 2, scope: !3916, file: !3917, line: 331, type: !698)
!3925 = !DILocation(line: 331, column: 67, scope: !3916)
!3926 = !DILocalVariable(name: "__result", arg: 3, scope: !3916, file: !3917, line: 332, type: !309)
!3927 = !DILocation(line: 332, column: 24, scope: !3916)
!3928 = !DILocalVariable(arg: 4, scope: !3916, file: !3917, line: 332, type: !370)
!3929 = !DILocation(line: 332, column: 49, scope: !3916)
!3930 = !DILocation(line: 333, column: 38, scope: !3916)
!3931 = !DILocation(line: 333, column: 47, scope: !3916)
!3932 = !DILocation(line: 333, column: 55, scope: !3916)
!3933 = !DILocation(line: 333, column: 14, scope: !3916)
!3934 = !DILocation(line: 333, column: 7, scope: !3916)
!3935 = distinct !DISubprogram(name: "uninitialized_copy<__gnu_cxx::__normal_iterator<const long *, std::vector<long, std::allocator<long> > >, long *>", linkageName: "_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEEPlET0_T_SA_S9_", scope: !31, file: !3917, line: 126, type: !3936, scopeLine: 128, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, templateParams: !3938, retainedNodes: !212)
!3936 = !DISubroutineType(types: !3937)
!3937 = !{!309, !698, !698, !309}
!3938 = !{!3921, !3571}
!3939 = !DILocalVariable(name: "__first", arg: 1, scope: !3935, file: !3917, line: 126, type: !698)
!3940 = !DILocation(line: 126, column: 39, scope: !3935)
!3941 = !DILocalVariable(name: "__last", arg: 2, scope: !3935, file: !3917, line: 126, type: !698)
!3942 = !DILocation(line: 126, column: 63, scope: !3935)
!3943 = !DILocalVariable(name: "__result", arg: 3, scope: !3935, file: !3917, line: 127, type: !309)
!3944 = !DILocation(line: 127, column: 27, scope: !3935)
!3945 = !DILocalVariable(name: "__assignable", scope: !3935, file: !3917, line: 145, type: !506)
!3946 = !DILocation(line: 145, column: 18, scope: !3935)
!3947 = !DILocation(line: 151, column: 16, scope: !3935)
!3948 = !DILocation(line: 151, column: 25, scope: !3935)
!3949 = !DILocation(line: 151, column: 33, scope: !3935)
!3950 = !DILocation(line: 148, column: 14, scope: !3935)
!3951 = !DILocation(line: 148, column: 7, scope: !3935)
!3952 = distinct !DISubprogram(name: "__uninit_copy<__gnu_cxx::__normal_iterator<const long *, std::vector<long, std::allocator<long> > >, long *>", linkageName: "_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEEPlEET0_T_SC_SB_", scope: !3953, file: !3917, line: 108, type: !3936, scopeLine: 110, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, templateParams: !3938, declaration: !3956, retainedNodes: !212)
!3953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__uninitialized_copy<true>", scope: !31, file: !3917, line: 104, size: 8, flags: DIFlagTypePassByValue, elements: !212, templateParams: !3954, identifier: "_ZTSSt20__uninitialized_copyILb1EE")
!3954 = !{!3955}
!3955 = !DITemplateValueParameter(name: "_TrivialValueTypes", type: !53, value: i1 true)
!3956 = !DISubprogram(name: "__uninit_copy<__gnu_cxx::__normal_iterator<const long *, std::vector<long, std::allocator<long> > >, long *>", linkageName: "_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEEPlEET0_T_SC_SB_", scope: !3953, file: !3917, line: 108, type: !3936, scopeLine: 108, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0, templateParams: !3938)
!3957 = !DILocalVariable(name: "__first", arg: 1, scope: !3952, file: !3917, line: 108, type: !698)
!3958 = !DILocation(line: 108, column: 38, scope: !3952)
!3959 = !DILocalVariable(name: "__last", arg: 2, scope: !3952, file: !3917, line: 108, type: !698)
!3960 = !DILocation(line: 108, column: 62, scope: !3952)
!3961 = !DILocalVariable(name: "__result", arg: 3, scope: !3952, file: !3917, line: 109, type: !309)
!3962 = !DILocation(line: 109, column: 26, scope: !3952)
!3963 = !DILocation(line: 110, column: 28, scope: !3952)
!3964 = !DILocation(line: 110, column: 37, scope: !3952)
!3965 = !DILocation(line: 110, column: 45, scope: !3952)
!3966 = !DILocation(line: 110, column: 18, scope: !3952)
!3967 = !DILocation(line: 110, column: 11, scope: !3952)
!3968 = distinct !DISubprogram(name: "copy<__gnu_cxx::__normal_iterator<const long *, std::vector<long, std::allocator<long> > >, long *>", linkageName: "_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEEPlET0_T_SA_S9_", scope: !31, file: !3969, line: 611, type: !3936, scopeLine: 612, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, templateParams: !3970, retainedNodes: !212)
!3969 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/stl_algobase.h", directory: "")
!3970 = !{!3971, !3972}
!3971 = !DITemplateTypeParameter(name: "_II", type: !698)
!3972 = !DITemplateTypeParameter(name: "_OI", type: !309)
!3973 = !DILocalVariable(name: "__first", arg: 1, scope: !3968, file: !3969, line: 611, type: !698)
!3974 = !DILocation(line: 611, column: 14, scope: !3968)
!3975 = !DILocalVariable(name: "__last", arg: 2, scope: !3968, file: !3969, line: 611, type: !698)
!3976 = !DILocation(line: 611, column: 27, scope: !3968)
!3977 = !DILocalVariable(name: "__result", arg: 3, scope: !3968, file: !3969, line: 611, type: !309)
!3978 = !DILocation(line: 611, column: 39, scope: !3968)
!3979 = !DILocation(line: 620, column: 26, scope: !3968)
!3980 = !DILocation(line: 620, column: 8, scope: !3968)
!3981 = !DILocation(line: 620, column: 54, scope: !3968)
!3982 = !DILocation(line: 620, column: 36, scope: !3968)
!3983 = !DILocation(line: 620, column: 63, scope: !3968)
!3984 = !DILocation(line: 619, column: 14, scope: !3968)
!3985 = !DILocation(line: 619, column: 7, scope: !3968)
!3986 = distinct !DISubprogram(name: "__miter_base<__gnu_cxx::__normal_iterator<const long *, std::vector<long, std::allocator<long> > > >", linkageName: "_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEEET_S8_", scope: !31, file: !3987, line: 560, type: !3988, scopeLine: 561, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, templateParams: !3990, retainedNodes: !212)
!3987 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/cpp_type_traits.h", directory: "")
!3988 = !DISubroutineType(types: !3989)
!3989 = !{!698, !698}
!3990 = !{!3991}
!3991 = !DITemplateTypeParameter(name: "_Iterator", type: !698)
!3992 = !DILocalVariable(name: "__it", arg: 1, scope: !3986, file: !3987, line: 560, type: !698)
!3993 = !DILocation(line: 560, column: 28, scope: !3986)
!3994 = !DILocation(line: 561, column: 14, scope: !3986)
!3995 = !DILocation(line: 561, column: 7, scope: !3986)
!3996 = distinct !DISubprogram(name: "__copy_move_a<false, __gnu_cxx::__normal_iterator<const long *, std::vector<long, std::allocator<long> > >, long *>", linkageName: "_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEEPlET1_T0_SA_S9_", scope: !31, file: !3969, line: 527, type: !3936, scopeLine: 528, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, templateParams: !3997, retainedNodes: !212)
!3997 = !{!3998, !3971, !3972}
!3998 = !DITemplateValueParameter(name: "_IsMove", type: !53, value: i1 false)
!3999 = !DILocalVariable(name: "__first", arg: 1, scope: !3996, file: !3969, line: 527, type: !698)
!4000 = !DILocation(line: 527, column: 23, scope: !3996)
!4001 = !DILocalVariable(name: "__last", arg: 2, scope: !3996, file: !3969, line: 527, type: !698)
!4002 = !DILocation(line: 527, column: 36, scope: !3996)
!4003 = !DILocalVariable(name: "__result", arg: 3, scope: !3996, file: !3969, line: 527, type: !309)
!4004 = !DILocation(line: 527, column: 48, scope: !3996)
!4005 = !DILocation(line: 530, column: 50, scope: !3996)
!4006 = !DILocation(line: 530, column: 32, scope: !3996)
!4007 = !DILocation(line: 531, column: 29, scope: !3996)
!4008 = !DILocation(line: 531, column: 11, scope: !3996)
!4009 = !DILocation(line: 532, column: 29, scope: !3996)
!4010 = !DILocation(line: 532, column: 11, scope: !3996)
!4011 = !DILocation(line: 530, column: 3, scope: !3996)
!4012 = !DILocation(line: 529, column: 14, scope: !3996)
!4013 = !DILocation(line: 529, column: 7, scope: !3996)
!4014 = distinct !DISubprogram(name: "__niter_base<const long *, std::vector<long, std::allocator<long> > >", linkageName: "_ZSt12__niter_baseIPKlSt6vectorIlSaIlEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE", scope: !31, file: !638, line: 1291, type: !4015, scopeLine: 1293, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, templateParams: !750, retainedNodes: !212)
!4015 = !DISubroutineType(types: !4016)
!4016 = !{!341, !698}
!4017 = !DILocalVariable(name: "__it", arg: 1, scope: !4014, file: !638, line: 1291, type: !698)
!4018 = !DILocation(line: 1291, column: 70, scope: !4014)
!4019 = !DILocation(line: 1293, column: 19, scope: !4014)
!4020 = !DILocation(line: 1293, column: 7, scope: !4014)
!4021 = distinct !DISubprogram(name: "__niter_base<long *>", linkageName: "_ZSt12__niter_baseIPlET_S1_", scope: !31, file: !3969, line: 313, type: !4022, scopeLine: 315, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, templateParams: !657, retainedNodes: !212)
!4022 = !DISubroutineType(types: !4023)
!4023 = !{!309, !309}
!4024 = !DILocalVariable(name: "__it", arg: 1, scope: !4021, file: !3969, line: 313, type: !309)
!4025 = !DILocation(line: 313, column: 28, scope: !4021)
!4026 = !DILocation(line: 315, column: 14, scope: !4021)
!4027 = !DILocation(line: 315, column: 7, scope: !4021)
!4028 = distinct !DISubprogram(name: "__copy_move_a1<false, const long *, long *>", linkageName: "_ZSt14__copy_move_a1ILb0EPKlPlET1_T0_S4_S3_", scope: !31, file: !3969, line: 521, type: !4029, scopeLine: 522, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, templateParams: !4031, retainedNodes: !212)
!4029 = !DISubroutineType(types: !4030)
!4030 = !{!309, !341, !341, !309}
!4031 = !{!3998, !4032, !3972}
!4032 = !DITemplateTypeParameter(name: "_II", type: !341)
!4033 = !DILocalVariable(name: "__first", arg: 1, scope: !4028, file: !3969, line: 521, type: !341)
!4034 = !DILocation(line: 521, column: 24, scope: !4028)
!4035 = !DILocalVariable(name: "__last", arg: 2, scope: !4028, file: !3969, line: 521, type: !341)
!4036 = !DILocation(line: 521, column: 37, scope: !4028)
!4037 = !DILocalVariable(name: "__result", arg: 3, scope: !4028, file: !3969, line: 521, type: !309)
!4038 = !DILocation(line: 521, column: 49, scope: !4028)
!4039 = !DILocation(line: 522, column: 43, scope: !4028)
!4040 = !DILocation(line: 522, column: 52, scope: !4028)
!4041 = !DILocation(line: 522, column: 60, scope: !4028)
!4042 = !DILocation(line: 522, column: 14, scope: !4028)
!4043 = !DILocation(line: 522, column: 7, scope: !4028)
!4044 = distinct !DISubprogram(name: "__niter_wrap<long *>", linkageName: "_ZSt12__niter_wrapIPlET_RKS1_S1_", scope: !31, file: !3969, line: 335, type: !4045, scopeLine: 336, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, templateParams: !657, retainedNodes: !212)
!4045 = !DISubroutineType(types: !4046)
!4046 = !{!309, !648, !309}
!4047 = !DILocalVariable(arg: 1, scope: !4044, file: !3969, line: 335, type: !648)
!4048 = !DILocation(line: 335, column: 34, scope: !4044)
!4049 = !DILocalVariable(name: "__res", arg: 2, scope: !4044, file: !3969, line: 335, type: !309)
!4050 = !DILocation(line: 335, column: 46, scope: !4044)
!4051 = !DILocation(line: 336, column: 14, scope: !4044)
!4052 = !DILocation(line: 336, column: 7, scope: !4044)
!4053 = distinct !DISubprogram(name: "__copy_move_a2<false, const long *, long *>", linkageName: "_ZSt14__copy_move_a2ILb0EPKlPlET1_T0_S4_S3_", scope: !31, file: !3969, line: 486, type: !4029, scopeLine: 487, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, templateParams: !4031, retainedNodes: !212)
!4054 = !DILocalVariable(name: "__first", arg: 1, scope: !4053, file: !3969, line: 486, type: !341)
!4055 = !DILocation(line: 486, column: 24, scope: !4053)
!4056 = !DILocalVariable(name: "__last", arg: 2, scope: !4053, file: !3969, line: 486, type: !341)
!4057 = !DILocation(line: 486, column: 37, scope: !4053)
!4058 = !DILocalVariable(name: "__result", arg: 3, scope: !4053, file: !3969, line: 486, type: !309)
!4059 = !DILocation(line: 486, column: 49, scope: !4053)
!4060 = !DILocation(line: 495, column: 31, scope: !4053)
!4061 = !DILocation(line: 495, column: 40, scope: !4053)
!4062 = !DILocation(line: 495, column: 48, scope: !4053)
!4063 = !DILocation(line: 494, column: 14, scope: !4053)
!4064 = !DILocation(line: 494, column: 7, scope: !4053)
!4065 = distinct !DISubprogram(name: "__copy_m<long>", linkageName: "_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIlEEPT_PKS3_S6_S4_", scope: !4066, file: !3969, line: 420, type: !4029, scopeLine: 421, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, templateParams: !356, declaration: !4070, retainedNodes: !212)
!4066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__copy_move<false, true, std::random_access_iterator_tag>", scope: !31, file: !3969, line: 415, size: 8, flags: DIFlagTypePassByValue, elements: !212, templateParams: !4067, identifier: "_ZTSSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE")
!4067 = !{!3998, !4068, !4069}
!4068 = !DITemplateValueParameter(name: "_IsSimple", type: !53, value: i1 true)
!4069 = !DITemplateTypeParameter(name: "_Category", type: !2856)
!4070 = !DISubprogram(name: "__copy_m<long>", linkageName: "_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIlEEPT_PKS3_S6_S4_", scope: !4066, file: !3969, line: 420, type: !4029, scopeLine: 420, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0, templateParams: !356)
!4071 = !DILocalVariable(name: "__first", arg: 1, scope: !4065, file: !3969, line: 420, type: !341)
!4072 = !DILocation(line: 420, column: 22, scope: !4065)
!4073 = !DILocalVariable(name: "__last", arg: 2, scope: !4065, file: !3969, line: 420, type: !341)
!4074 = !DILocation(line: 420, column: 42, scope: !4065)
!4075 = !DILocalVariable(name: "__result", arg: 3, scope: !4065, file: !3969, line: 420, type: !309)
!4076 = !DILocation(line: 420, column: 55, scope: !4065)
!4077 = !DILocalVariable(name: "_Num", scope: !4065, file: !3969, line: 429, type: !4078)
!4078 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !680)
!4079 = !DILocation(line: 429, column: 20, scope: !4065)
!4080 = !DILocation(line: 429, column: 27, scope: !4065)
!4081 = !DILocation(line: 429, column: 36, scope: !4065)
!4082 = !DILocation(line: 429, column: 34, scope: !4065)
!4083 = !DILocation(line: 430, column: 8, scope: !4084)
!4084 = distinct !DILexicalBlock(scope: !4065, file: !3969, line: 430, column: 8)
!4085 = !DILocation(line: 430, column: 8, scope: !4065)
!4086 = !DILocation(line: 431, column: 24, scope: !4084)
!4087 = !DILocation(line: 431, column: 6, scope: !4084)
!4088 = !DILocation(line: 431, column: 34, scope: !4084)
!4089 = !DILocation(line: 431, column: 57, scope: !4084)
!4090 = !DILocation(line: 431, column: 55, scope: !4084)
!4091 = !DILocation(line: 432, column: 11, scope: !4065)
!4092 = !DILocation(line: 432, column: 22, scope: !4065)
!4093 = !DILocation(line: 432, column: 20, scope: !4065)
!4094 = !DILocation(line: 432, column: 4, scope: !4065)
!4095 = distinct !DISubprogram(name: "_Vector_impl", linkageName: "_ZNSt12_Vector_baseIlSaIlEE12_Vector_implC2ERKS0_", scope: !294, file: !288, line: 136, type: !433, scopeLine: 138, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !432, retainedNodes: !212)
!4096 = !DILocalVariable(name: "this", arg: 1, scope: !4095, type: !3614, flags: DIFlagArtificial | DIFlagObjectPointer)
!4097 = !DILocation(line: 0, scope: !4095)
!4098 = !DILocalVariable(name: "__a", arg: 2, scope: !4095, file: !288, line: 136, type: !435)
!4099 = !DILocation(line: 136, column: 37, scope: !4095)
!4100 = !DILocation(line: 138, column: 2, scope: !4095)
!4101 = !DILocation(line: 137, column: 19, scope: !4095)
!4102 = !DILocation(line: 137, column: 4, scope: !4095)
!4103 = !DILocation(line: 136, column: 2, scope: !4095)
!4104 = !DILocation(line: 138, column: 4, scope: !4095)
!4105 = distinct !DISubprogram(name: "_M_create_storage", linkageName: "_ZNSt12_Vector_baseIlSaIlEE17_M_create_storageEm", scope: !291, file: !288, line: 359, type: !471, scopeLine: 360, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !496, retainedNodes: !212)
!4106 = !DILocalVariable(name: "this", arg: 1, scope: !4105, type: !3562, flags: DIFlagArtificial | DIFlagObjectPointer)
!4107 = !DILocation(line: 0, scope: !4105)
!4108 = !DILocalVariable(name: "__n", arg: 2, scope: !4105, file: !288, line: 359, type: !210)
!4109 = !DILocation(line: 359, column: 32, scope: !4105)
!4110 = !DILocation(line: 361, column: 45, scope: !4105)
!4111 = !DILocation(line: 361, column: 33, scope: !4105)
!4112 = !DILocation(line: 361, column: 8, scope: !4105)
!4113 = !DILocation(line: 361, column: 2, scope: !4105)
!4114 = !DILocation(line: 361, column: 16, scope: !4105)
!4115 = !DILocation(line: 361, column: 25, scope: !4105)
!4116 = !DILocation(line: 362, column: 34, scope: !4105)
!4117 = !DILocation(line: 362, column: 28, scope: !4105)
!4118 = !DILocation(line: 362, column: 42, scope: !4105)
!4119 = !DILocation(line: 362, column: 8, scope: !4105)
!4120 = !DILocation(line: 362, column: 2, scope: !4105)
!4121 = !DILocation(line: 362, column: 16, scope: !4105)
!4122 = !DILocation(line: 362, column: 26, scope: !4105)
!4123 = !DILocation(line: 363, column: 42, scope: !4105)
!4124 = !DILocation(line: 363, column: 36, scope: !4105)
!4125 = !DILocation(line: 363, column: 50, scope: !4105)
!4126 = !DILocation(line: 363, column: 61, scope: !4105)
!4127 = !DILocation(line: 363, column: 59, scope: !4105)
!4128 = !DILocation(line: 363, column: 8, scope: !4105)
!4129 = !DILocation(line: 363, column: 2, scope: !4105)
!4130 = !DILocation(line: 363, column: 16, scope: !4105)
!4131 = !DILocation(line: 363, column: 34, scope: !4105)
!4132 = !DILocation(line: 364, column: 7, scope: !4105)
!4133 = distinct !DISubprogram(name: "_M_allocate", linkageName: "_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm", scope: !291, file: !288, line: 343, type: !491, scopeLine: 344, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !490, retainedNodes: !212)
!4134 = !DILocalVariable(name: "this", arg: 1, scope: !4133, type: !3562, flags: DIFlagArtificial | DIFlagObjectPointer)
!4135 = !DILocation(line: 0, scope: !4133)
!4136 = !DILocalVariable(name: "__n", arg: 2, scope: !4133, file: !288, line: 343, type: !210)
!4137 = !DILocation(line: 343, column: 26, scope: !4133)
!4138 = !DILocation(line: 346, column: 9, scope: !4133)
!4139 = !DILocation(line: 346, column: 13, scope: !4133)
!4140 = !DILocation(line: 346, column: 34, scope: !4133)
!4141 = !DILocation(line: 346, column: 43, scope: !4133)
!4142 = !DILocation(line: 346, column: 20, scope: !4133)
!4143 = !DILocation(line: 346, column: 2, scope: !4133)
!4144 = distinct !DISubprogram(name: "allocate", linkageName: "_ZNSt16allocator_traitsISaIlEE8allocateERS0_m", scope: !303, file: !236, line: 463, type: !306, scopeLine: 464, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !305, retainedNodes: !212)
!4145 = !DILocalVariable(name: "__a", arg: 1, scope: !4144, file: !236, line: 463, type: !310)
!4146 = !DILocation(line: 463, column: 32, scope: !4144)
!4147 = !DILocalVariable(name: "__n", arg: 2, scope: !4144, file: !236, line: 463, type: !247)
!4148 = !DILocation(line: 463, column: 47, scope: !4144)
!4149 = !DILocation(line: 464, column: 16, scope: !4144)
!4150 = !DILocation(line: 464, column: 29, scope: !4144)
!4151 = !DILocation(line: 464, column: 20, scope: !4144)
!4152 = !DILocation(line: 464, column: 9, scope: !4144)
!4153 = distinct !DISubprogram(name: "allocate", linkageName: "_ZN9__gnu_cxx13new_allocatorIlE8allocateEmPKv", scope: !317, file: !318, line: 103, type: !346, scopeLine: 104, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !345, retainedNodes: !212)
!4154 = !DILocalVariable(name: "this", arg: 1, scope: !4153, type: !3633, flags: DIFlagArtificial | DIFlagObjectPointer)
!4155 = !DILocation(line: 0, scope: !4153)
!4156 = !DILocalVariable(name: "__n", arg: 2, scope: !4153, file: !318, line: 103, type: !348)
!4157 = !DILocation(line: 103, column: 26, scope: !4153)
!4158 = !DILocalVariable(arg: 3, scope: !4153, file: !318, line: 103, type: !45)
!4159 = !DILocation(line: 103, column: 43, scope: !4153)
!4160 = !DILocation(line: 111, column: 23, scope: !4161)
!4161 = distinct !DILexicalBlock(scope: !4153, file: !318, line: 111, column: 6)
!4162 = !DILocation(line: 111, column: 35, scope: !4161)
!4163 = !DILocation(line: 111, column: 27, scope: !4161)
!4164 = !DILocation(line: 111, column: 6, scope: !4153)
!4165 = !DILocation(line: 115, column: 10, scope: !4166)
!4166 = distinct !DILexicalBlock(scope: !4167, file: !318, line: 115, column: 10)
!4167 = distinct !DILexicalBlock(scope: !4161, file: !318, line: 112, column: 4)
!4168 = !DILocation(line: 115, column: 14, scope: !4166)
!4169 = !DILocation(line: 115, column: 10, scope: !4167)
!4170 = !DILocation(line: 116, column: 8, scope: !4166)
!4171 = !DILocation(line: 117, column: 6, scope: !4167)
!4172 = !DILocation(line: 127, column: 42, scope: !4153)
!4173 = !DILocation(line: 127, column: 46, scope: !4153)
!4174 = !DILocation(line: 127, column: 27, scope: !4153)
!4175 = !DILocation(line: 127, column: 9, scope: !4153)
!4176 = !DILocation(line: 127, column: 2, scope: !4153)
!4177 = distinct !DISubprogram(name: "_M_max_size", linkageName: "_ZNK9__gnu_cxx13new_allocatorIlE11_M_max_sizeEv", scope: !317, file: !318, line: 197, type: !353, scopeLine: 198, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !355, retainedNodes: !212)
!4178 = !DILocalVariable(name: "this", arg: 1, scope: !4177, type: !4179, flags: DIFlagArtificial | DIFlagObjectPointer)
!4179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!4180 = !DILocation(line: 0, scope: !4177)
!4181 = !DILocation(line: 200, column: 2, scope: !4177)
!4182 = distinct !DISubprogram(name: "allocator", linkageName: "_ZNSaIlEC2ERKS_", scope: !312, file: !246, line: 159, type: !363, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !362, retainedNodes: !212)
!4183 = !DILocalVariable(name: "this", arg: 1, scope: !4182, type: !3396, flags: DIFlagArtificial | DIFlagObjectPointer)
!4184 = !DILocation(line: 0, scope: !4182)
!4185 = !DILocalVariable(name: "__a", arg: 2, scope: !4182, file: !246, line: 159, type: !365)
!4186 = !DILocation(line: 159, column: 34, scope: !4182)
!4187 = !DILocation(line: 160, column: 36, scope: !4182)
!4188 = !DILocation(line: 160, column: 31, scope: !4182)
!4189 = !DILocation(line: 160, column: 9, scope: !4182)
!4190 = !DILocation(line: 160, column: 38, scope: !4182)
!4191 = distinct !DISubprogram(name: "_Vector_impl_data", linkageName: "_ZNSt12_Vector_baseIlSaIlEE17_Vector_impl_dataC2Ev", scope: !404, file: !288, line: 97, type: !412, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !411, retainedNodes: !212)
!4192 = !DILocalVariable(name: "this", arg: 1, scope: !4191, type: !4193, flags: DIFlagArtificial | DIFlagObjectPointer)
!4193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!4194 = !DILocation(line: 0, scope: !4191)
!4195 = !DILocation(line: 98, column: 4, scope: !4191)
!4196 = !DILocation(line: 98, column: 16, scope: !4191)
!4197 = !DILocation(line: 98, column: 29, scope: !4191)
!4198 = !DILocation(line: 99, column: 4, scope: !4191)
!4199 = distinct !DISubprogram(name: "new_allocator", linkageName: "_ZN9__gnu_cxx13new_allocatorIlEC2ERKS1_", scope: !317, file: !318, line: 82, type: !325, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !324, retainedNodes: !212)
!4200 = !DILocalVariable(name: "this", arg: 1, scope: !4199, type: !3633, flags: DIFlagArtificial | DIFlagObjectPointer)
!4201 = !DILocation(line: 0, scope: !4199)
!4202 = !DILocalVariable(arg: 2, scope: !4199, file: !318, line: 82, type: !327)
!4203 = !DILocation(line: 82, column: 41, scope: !4199)
!4204 = !DILocation(line: 82, column: 67, scope: !4199)
!4205 = distinct !DISubprogram(name: "select_on_container_copy_construction", linkageName: "_ZNSt16allocator_traitsISaIlEE37select_on_container_copy_constructionERKS0_", scope: !303, file: !236, line: 562, type: !385, scopeLine: 563, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !384, retainedNodes: !212)
!4206 = !DILocalVariable(name: "__rhs", arg: 1, scope: !4205, file: !236, line: 562, type: !382)
!4207 = !DILocation(line: 562, column: 67, scope: !4205)
!4208 = !DILocation(line: 563, column: 16, scope: !4205)
!4209 = !DILocation(line: 563, column: 9, scope: !4205)
!4210 = distinct !DISubprogram(name: "~new_allocator", linkageName: "_ZN9__gnu_cxx13new_allocatorIlED2Ev", scope: !317, file: !318, line: 89, type: !321, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !329, retainedNodes: !212)
!4211 = !DILocalVariable(name: "this", arg: 1, scope: !4210, type: !3633, flags: DIFlagArtificial | DIFlagObjectPointer)
!4212 = !DILocation(line: 0, scope: !4210)
!4213 = !DILocation(line: 89, column: 48, scope: !4210)
!4214 = distinct !DISubprogram(name: "_S_check_init_len", linkageName: "_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_", scope: !287, file: !288, line: 1767, type: !865, scopeLine: 1768, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !864, retainedNodes: !212)
!4215 = !DILocalVariable(name: "__n", arg: 1, scope: !4214, file: !288, line: 1767, type: !559)
!4216 = !DILocation(line: 1767, column: 35, scope: !4214)
!4217 = !DILocalVariable(name: "__a", arg: 2, scope: !4214, file: !288, line: 1767, type: !553)
!4218 = !DILocation(line: 1767, column: 62, scope: !4214)
!4219 = !DILocation(line: 1769, column: 6, scope: !4220)
!4220 = distinct !DILexicalBlock(scope: !4214, file: !288, line: 1769, column: 6)
!4221 = !DILocation(line: 1769, column: 39, scope: !4220)
!4222 = !DILocation(line: 1769, column: 24, scope: !4220)
!4223 = !DILocation(line: 1769, column: 12, scope: !4220)
!4224 = !DILocation(line: 1769, column: 10, scope: !4220)
!4225 = !DILocation(line: 1769, column: 6, scope: !4214)
!4226 = !DILocation(line: 1770, column: 4, scope: !4220)
!4227 = !DILocation(line: 1772, column: 9, scope: !4214)
!4228 = !DILocation(line: 1772, column: 2, scope: !4214)
!4229 = distinct !DISubprogram(name: "_M_default_initialize", linkageName: "_ZNSt6vectorIlSaIlEE21_M_default_initializeEm", scope: !287, file: !288, line: 1603, type: !775, scopeLine: 1604, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !849, retainedNodes: !212)
!4230 = !DILocalVariable(name: "this", arg: 1, scope: !4229, type: !3403, flags: DIFlagArtificial | DIFlagObjectPointer)
!4231 = !DILocation(line: 0, scope: !4229)
!4232 = !DILocalVariable(name: "__n", arg: 2, scope: !4229, file: !288, line: 1603, type: !559)
!4233 = !DILocation(line: 1603, column: 39, scope: !4229)
!4234 = !DILocation(line: 1606, column: 43, scope: !4229)
!4235 = !DILocation(line: 1606, column: 37, scope: !4229)
!4236 = !DILocation(line: 1606, column: 51, scope: !4229)
!4237 = !DILocation(line: 1606, column: 61, scope: !4229)
!4238 = !DILocation(line: 1607, column: 9, scope: !4229)
!4239 = !DILocation(line: 1606, column: 4, scope: !4229)
!4240 = !DILocation(line: 1605, column: 8, scope: !4229)
!4241 = !DILocation(line: 1605, column: 2, scope: !4229)
!4242 = !DILocation(line: 1605, column: 16, scope: !4229)
!4243 = !DILocation(line: 1605, column: 26, scope: !4229)
!4244 = !DILocation(line: 1608, column: 7, scope: !4229)
!4245 = distinct !DISubprogram(name: "__uninitialized_default_n_a<long *, unsigned long, long>", linkageName: "_ZSt27__uninitialized_default_n_aIPlmlET_S1_T0_RSaIT1_E", scope: !31, file: !3917, line: 702, type: !4246, scopeLine: 704, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, templateParams: !4248, retainedNodes: !212)
!4246 = !DISubroutineType(types: !4247)
!4247 = !{!309, !309, !21, !370}
!4248 = !{!3571, !4249, !357}
!4249 = !DITemplateTypeParameter(name: "_Size", type: !21)
!4250 = !DILocalVariable(name: "__first", arg: 1, scope: !4245, file: !3917, line: 702, type: !309)
!4251 = !DILocation(line: 702, column: 50, scope: !4245)
!4252 = !DILocalVariable(name: "__n", arg: 2, scope: !4245, file: !3917, line: 702, type: !21)
!4253 = !DILocation(line: 702, column: 65, scope: !4245)
!4254 = !DILocalVariable(arg: 3, scope: !4245, file: !3917, line: 703, type: !370)
!4255 = !DILocation(line: 703, column: 20, scope: !4245)
!4256 = !DILocation(line: 704, column: 45, scope: !4245)
!4257 = !DILocation(line: 704, column: 54, scope: !4245)
!4258 = !DILocation(line: 704, column: 14, scope: !4245)
!4259 = !DILocation(line: 704, column: 7, scope: !4245)
!4260 = distinct !DISubprogram(name: "__uninitialized_default_n<long *, unsigned long>", linkageName: "_ZSt25__uninitialized_default_nIPlmET_S1_T0_", scope: !31, file: !3917, line: 630, type: !4261, scopeLine: 631, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, templateParams: !4263, retainedNodes: !212)
!4261 = !DISubroutineType(types: !4262)
!4262 = !{!309, !309, !21}
!4263 = !{!3571, !4249}
!4264 = !DILocalVariable(name: "__first", arg: 1, scope: !4260, file: !3917, line: 630, type: !309)
!4265 = !DILocation(line: 630, column: 48, scope: !4260)
!4266 = !DILocalVariable(name: "__n", arg: 2, scope: !4260, file: !3917, line: 630, type: !21)
!4267 = !DILocation(line: 630, column: 63, scope: !4260)
!4268 = !DILocalVariable(name: "__can_fill", scope: !4260, file: !3917, line: 635, type: !506)
!4269 = !DILocation(line: 635, column: 22, scope: !4260)
!4270 = !DILocation(line: 640, column: 21, scope: !4260)
!4271 = !DILocation(line: 640, column: 30, scope: !4260)
!4272 = !DILocation(line: 638, column: 14, scope: !4260)
!4273 = !DILocation(line: 638, column: 7, scope: !4260)
!4274 = distinct !DISubprogram(name: "__uninit_default_n<long *, unsigned long>", linkageName: "_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPlmEET_S3_T0_", scope: !4275, file: !3917, line: 595, type: !4261, scopeLine: 596, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, templateParams: !4263, declaration: !4278, retainedNodes: !212)
!4275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__uninitialized_default_n_1<true>", scope: !31, file: !3917, line: 591, size: 8, flags: DIFlagTypePassByValue, elements: !212, templateParams: !4276, identifier: "_ZTSSt27__uninitialized_default_n_1ILb1EE")
!4276 = !{!4277}
!4277 = !DITemplateValueParameter(name: "_TrivialValueType", type: !53, value: i1 true)
!4278 = !DISubprogram(name: "__uninit_default_n<long *, unsigned long>", linkageName: "_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPlmEET_S3_T0_", scope: !4275, file: !3917, line: 595, type: !4261, scopeLine: 595, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0, templateParams: !4263)
!4279 = !DILocalVariable(name: "__first", arg: 1, scope: !4274, file: !3917, line: 595, type: !309)
!4280 = !DILocation(line: 595, column: 45, scope: !4274)
!4281 = !DILocalVariable(name: "__n", arg: 2, scope: !4274, file: !3917, line: 595, type: !21)
!4282 = !DILocation(line: 595, column: 60, scope: !4274)
!4283 = !DILocation(line: 597, column: 8, scope: !4284)
!4284 = distinct !DILexicalBlock(scope: !4274, file: !3917, line: 597, column: 8)
!4285 = !DILocation(line: 597, column: 12, scope: !4284)
!4286 = !DILocation(line: 597, column: 8, scope: !4274)
!4287 = !DILocalVariable(name: "__val", scope: !4288, file: !3917, line: 599, type: !4289)
!4288 = distinct !DILexicalBlock(scope: !4284, file: !3917, line: 598, column: 6)
!4289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4290, size: 64)
!4290 = !DIDerivedType(tag: DW_TAG_typedef, name: "value_type", scope: !656, file: !655, line: 213, baseType: !68)
!4291 = !DILocation(line: 599, column: 64, scope: !4288)
!4292 = !DILocation(line: 600, column: 23, scope: !4288)
!4293 = !DILocation(line: 600, column: 5, scope: !4288)
!4294 = !DILocation(line: 601, column: 24, scope: !4288)
!4295 = !DILocation(line: 601, column: 8, scope: !4288)
!4296 = !DILocation(line: 602, column: 8, scope: !4288)
!4297 = !DILocation(line: 603, column: 30, scope: !4288)
!4298 = !DILocation(line: 603, column: 39, scope: !4288)
!4299 = !DILocation(line: 603, column: 43, scope: !4288)
!4300 = !DILocation(line: 603, column: 49, scope: !4288)
!4301 = !DILocation(line: 603, column: 18, scope: !4288)
!4302 = !DILocation(line: 603, column: 16, scope: !4288)
!4303 = !DILocation(line: 604, column: 6, scope: !4288)
!4304 = !DILocation(line: 605, column: 11, scope: !4274)
!4305 = !DILocation(line: 605, column: 4, scope: !4274)
!4306 = distinct !DISubprogram(name: "__addressof<long>", linkageName: "_ZSt11__addressofIlEPT_RS0_", scope: !31, file: !3521, line: 49, type: !4307, scopeLine: 50, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, templateParams: !356, retainedNodes: !212)
!4307 = !DISubroutineType(types: !4308)
!4308 = !{!309, !336}
!4309 = !DILocalVariable(name: "__r", arg: 1, scope: !4306, file: !3521, line: 49, type: !336)
!4310 = !DILocation(line: 49, column: 22, scope: !4306)
!4311 = !DILocation(line: 50, column: 34, scope: !4306)
!4312 = !DILocation(line: 50, column: 7, scope: !4306)
!4313 = distinct !DISubprogram(name: "_Construct<long>", linkageName: "_ZSt10_ConstructIlJEEvPT_DpOT0_", scope: !31, file: !3643, line: 109, type: !4314, scopeLine: 110, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, templateParams: !4316, retainedNodes: !212)
!4314 = !DISubroutineType(types: !4315)
!4315 = !{null, !309}
!4316 = !{!357, !4317}
!4317 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Args", value: !212)
!4318 = !DILocalVariable(name: "__p", arg: 1, scope: !4313, file: !3643, line: 109, type: !309)
!4319 = !DILocation(line: 109, column: 21, scope: !4313)
!4320 = !DILocation(line: 119, column: 20, scope: !4313)
!4321 = !DILocation(line: 119, column: 7, scope: !4313)
!4322 = !DILocation(line: 120, column: 5, scope: !4313)
!4323 = distinct !DISubprogram(name: "fill_n<long *, unsigned long, long>", linkageName: "_ZSt6fill_nIPlmlET_S1_T0_RKT1_", scope: !31, file: !3969, line: 1144, type: !4324, scopeLine: 1145, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, templateParams: !4326, retainedNodes: !212)
!4324 = !DISubroutineType(types: !4325)
!4325 = !{!309, !309, !21, !344}
!4326 = !{!3972, !4249, !357}
!4327 = !DILocalVariable(name: "__first", arg: 1, scope: !4323, file: !3969, line: 1144, type: !309)
!4328 = !DILocation(line: 1144, column: 16, scope: !4323)
!4329 = !DILocalVariable(name: "__n", arg: 2, scope: !4323, file: !3969, line: 1144, type: !21)
!4330 = !DILocation(line: 1144, column: 31, scope: !4323)
!4331 = !DILocalVariable(name: "__value", arg: 3, scope: !4323, file: !3969, line: 1144, type: !344)
!4332 = !DILocation(line: 1144, column: 47, scope: !4323)
!4333 = !DILocation(line: 1149, column: 30, scope: !4323)
!4334 = !DILocation(line: 1149, column: 62, scope: !4323)
!4335 = !DILocation(line: 1149, column: 39, scope: !4323)
!4336 = !DILocation(line: 1149, column: 68, scope: !4323)
!4337 = !DILocation(line: 1150, column: 11, scope: !4323)
!4338 = !DILocation(line: 1149, column: 14, scope: !4323)
!4339 = !DILocation(line: 1149, column: 7, scope: !4323)
!4340 = distinct !DISubprogram(name: "__size_to_integer", linkageName: "_ZSt17__size_to_integerm", scope: !31, file: !3969, line: 1010, type: !4341, scopeLine: 1010, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, retainedNodes: !212)
!4341 = !DISubroutineType(types: !4342)
!4342 = !{!21, !21}
!4343 = !DILocalVariable(name: "__n", arg: 1, scope: !4340, file: !3969, line: 1010, type: !21)
!4344 = !DILocation(line: 1010, column: 35, scope: !4340)
!4345 = !DILocation(line: 1010, column: 49, scope: !4340)
!4346 = !DILocation(line: 1010, column: 42, scope: !4340)
!4347 = distinct !DISubprogram(name: "__iterator_category<long *>", linkageName: "_ZSt19__iterator_categoryIPlENSt15iterator_traitsIT_E17iterator_categoryERKS2_", scope: !31, file: !655, line: 238, type: !4348, scopeLine: 239, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, templateParams: !4351, retainedNodes: !212)
!4348 = !DISubroutineType(types: !4349)
!4349 = !{!4350, !648}
!4350 = !DIDerivedType(tag: DW_TAG_typedef, name: "iterator_category", scope: !656, file: !655, line: 212, baseType: !2856)
!4351 = !{!4352}
!4352 = !DITemplateTypeParameter(name: "_Iter", type: !309)
!4353 = !DILocalVariable(arg: 1, scope: !4347, file: !655, line: 238, type: !648)
!4354 = !DILocation(line: 238, column: 37, scope: !4347)
!4355 = !DILocation(line: 239, column: 7, scope: !4347)
!4356 = distinct !DISubprogram(name: "__fill_n_a<long *, unsigned long, long>", linkageName: "_ZSt10__fill_n_aIPlmlET_S1_T0_RKT1_St26random_access_iterator_tag", scope: !31, file: !3969, line: 1109, type: !4357, scopeLine: 1111, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, templateParams: !4359, retainedNodes: !212)
!4357 = !DISubroutineType(types: !4358)
!4358 = !{!309, !309, !21, !344, !2856}
!4359 = !{!4360, !4249, !357}
!4360 = !DITemplateTypeParameter(name: "_OutputIterator", type: !309)
!4361 = !DILocalVariable(name: "__first", arg: 1, scope: !4356, file: !3969, line: 1109, type: !309)
!4362 = !DILocation(line: 1109, column: 32, scope: !4356)
!4363 = !DILocalVariable(name: "__n", arg: 2, scope: !4356, file: !3969, line: 1109, type: !21)
!4364 = !DILocation(line: 1109, column: 47, scope: !4356)
!4365 = !DILocalVariable(name: "__value", arg: 3, scope: !4356, file: !3969, line: 1109, type: !344)
!4366 = !DILocation(line: 1109, column: 63, scope: !4356)
!4367 = !DILocalVariable(arg: 4, scope: !4356, file: !3969, line: 1110, type: !2856)
!4368 = !DILocation(line: 1110, column: 40, scope: !4356)
!4369 = !DILocation(line: 1115, column: 11, scope: !4370)
!4370 = distinct !DILexicalBlock(scope: !4356, file: !3969, line: 1115, column: 11)
!4371 = !DILocation(line: 1115, column: 15, scope: !4370)
!4372 = !DILocation(line: 1115, column: 11, scope: !4356)
!4373 = !DILocation(line: 1116, column: 9, scope: !4370)
!4374 = !DILocation(line: 1116, column: 2, scope: !4370)
!4375 = !DILocation(line: 1120, column: 21, scope: !4356)
!4376 = !DILocation(line: 1120, column: 30, scope: !4356)
!4377 = !DILocation(line: 1120, column: 40, scope: !4356)
!4378 = !DILocation(line: 1120, column: 38, scope: !4356)
!4379 = !DILocation(line: 1120, column: 45, scope: !4356)
!4380 = !DILocation(line: 1120, column: 7, scope: !4356)
!4381 = !DILocation(line: 1121, column: 14, scope: !4356)
!4382 = !DILocation(line: 1121, column: 24, scope: !4356)
!4383 = !DILocation(line: 1121, column: 22, scope: !4356)
!4384 = !DILocation(line: 1121, column: 7, scope: !4356)
!4385 = !DILocation(line: 1122, column: 5, scope: !4356)
!4386 = distinct !DISubprogram(name: "__fill_a<long *, long>", linkageName: "_ZSt8__fill_aIPllEvT_S1_RKT0_", scope: !31, file: !3969, line: 968, type: !4387, scopeLine: 969, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, templateParams: !4389, retainedNodes: !212)
!4387 = !DISubroutineType(types: !4388)
!4388 = !{null, !309, !309, !344}
!4389 = !{!4390, !357}
!4390 = !DITemplateTypeParameter(name: "_FIte", type: !309)
!4391 = !DILocalVariable(name: "__first", arg: 1, scope: !4386, file: !3969, line: 968, type: !309)
!4392 = !DILocation(line: 968, column: 20, scope: !4386)
!4393 = !DILocalVariable(name: "__last", arg: 2, scope: !4386, file: !3969, line: 968, type: !309)
!4394 = !DILocation(line: 968, column: 35, scope: !4386)
!4395 = !DILocalVariable(name: "__value", arg: 3, scope: !4386, file: !3969, line: 968, type: !344)
!4396 = !DILocation(line: 968, column: 54, scope: !4386)
!4397 = !DILocation(line: 969, column: 22, scope: !4386)
!4398 = !DILocation(line: 969, column: 31, scope: !4386)
!4399 = !DILocation(line: 969, column: 39, scope: !4386)
!4400 = !DILocation(line: 969, column: 7, scope: !4386)
!4401 = !DILocation(line: 969, column: 49, scope: !4386)
!4402 = distinct !DISubprogram(name: "__fill_a1<long *, long>", linkageName: "_ZSt9__fill_a1IPllEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_", scope: !31, file: !3969, line: 919, type: !4403, scopeLine: 921, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, templateParams: !3570, retainedNodes: !212)
!4403 = !DISubroutineType(types: !4404)
!4404 = !{!4405, !309, !309, !344}
!4405 = !DIDerivedType(tag: DW_TAG_typedef, name: "__type", scope: !4406, file: !2825, line: 50, baseType: null)
!4406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__enable_if<true, void>", scope: !94, file: !2825, line: 49, size: 8, flags: DIFlagTypePassByValue, elements: !212, templateParams: !4407, identifier: "_ZTSN9__gnu_cxx11__enable_ifILb1EvEE")
!4407 = !{!3658, !4408}
!4408 = !DITemplateTypeParameter(type: null)
!4409 = !DILocalVariable(name: "__first", arg: 1, scope: !4402, file: !3969, line: 919, type: !309)
!4410 = !DILocation(line: 919, column: 32, scope: !4402)
!4411 = !DILocalVariable(name: "__last", arg: 2, scope: !4402, file: !3969, line: 919, type: !309)
!4412 = !DILocation(line: 919, column: 58, scope: !4402)
!4413 = !DILocalVariable(name: "__value", arg: 3, scope: !4402, file: !3969, line: 920, type: !344)
!4414 = !DILocation(line: 920, column: 19, scope: !4402)
!4415 = !DILocalVariable(name: "__tmp", scope: !4402, file: !3969, line: 922, type: !342)
!4416 = !DILocation(line: 922, column: 17, scope: !4402)
!4417 = !DILocation(line: 922, column: 25, scope: !4402)
!4418 = !DILocation(line: 923, column: 7, scope: !4402)
!4419 = !DILocation(line: 923, column: 14, scope: !4420)
!4420 = distinct !DILexicalBlock(scope: !4421, file: !3969, line: 923, column: 7)
!4421 = distinct !DILexicalBlock(scope: !4402, file: !3969, line: 923, column: 7)
!4422 = !DILocation(line: 923, column: 25, scope: !4420)
!4423 = !DILocation(line: 923, column: 22, scope: !4420)
!4424 = !DILocation(line: 923, column: 7, scope: !4421)
!4425 = !DILocation(line: 924, column: 13, scope: !4420)
!4426 = !DILocation(line: 924, column: 3, scope: !4420)
!4427 = !DILocation(line: 924, column: 11, scope: !4420)
!4428 = !DILocation(line: 924, column: 2, scope: !4420)
!4429 = !DILocation(line: 923, column: 33, scope: !4420)
!4430 = !DILocation(line: 923, column: 7, scope: !4420)
!4431 = distinct !{!4431, !4424, !4432}
!4432 = !DILocation(line: 924, column: 13, scope: !4421)
!4433 = !DILocation(line: 925, column: 5, scope: !4402)
!4434 = distinct !DISubprogram(name: "_S_max_size", linkageName: "_ZNSt6vectorIlSaIlEE11_S_max_sizeERKS0_", scope: !287, file: !288, line: 1776, type: !868, scopeLine: 1777, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !867, retainedNodes: !212)
!4435 = !DILocalVariable(name: "__a", arg: 1, scope: !4434, file: !288, line: 1776, type: !870)
!4436 = !DILocation(line: 1776, column: 41, scope: !4434)
!4437 = !DILocalVariable(name: "__diffmax", scope: !4434, file: !288, line: 1781, type: !4438)
!4438 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !210)
!4439 = !DILocation(line: 1781, column: 15, scope: !4434)
!4440 = !DILocalVariable(name: "__allocmax", scope: !4434, file: !288, line: 1783, type: !4438)
!4441 = !DILocation(line: 1783, column: 15, scope: !4434)
!4442 = !DILocation(line: 1783, column: 52, scope: !4434)
!4443 = !DILocation(line: 1783, column: 28, scope: !4434)
!4444 = !DILocation(line: 1784, column: 9, scope: !4434)
!4445 = !DILocation(line: 1784, column: 2, scope: !4434)
!4446 = distinct !DISubprogram(name: "max_size", linkageName: "_ZNSt16allocator_traitsISaIlEE8max_sizeERKS0_", scope: !303, file: !236, line: 547, type: !379, scopeLine: 548, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !378, retainedNodes: !212)
!4447 = !DILocalVariable(name: "__a", arg: 1, scope: !4446, file: !236, line: 547, type: !382)
!4448 = !DILocation(line: 547, column: 38, scope: !4446)
!4449 = !DILocation(line: 550, column: 9, scope: !4446)
!4450 = !DILocation(line: 550, column: 13, scope: !4446)
!4451 = !DILocation(line: 550, column: 2, scope: !4446)
!4452 = distinct !DISubprogram(name: "min<unsigned long>", linkageName: "_ZSt3minImERKT_S2_S2_", scope: !31, file: !3969, line: 230, type: !4453, scopeLine: 231, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, templateParams: !3212, retainedNodes: !212)
!4453 = !DISubroutineType(types: !4454)
!4454 = !{!4455, !4455, !4455}
!4455 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !4456, size: 64)
!4456 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!4457 = !DILocalVariable(name: "__a", arg: 1, scope: !4452, file: !3969, line: 230, type: !4455)
!4458 = !DILocation(line: 230, column: 20, scope: !4452)
!4459 = !DILocalVariable(name: "__b", arg: 2, scope: !4452, file: !3969, line: 230, type: !4455)
!4460 = !DILocation(line: 230, column: 36, scope: !4452)
!4461 = !DILocation(line: 235, column: 11, scope: !4462)
!4462 = distinct !DILexicalBlock(scope: !4452, file: !3969, line: 235, column: 11)
!4463 = !DILocation(line: 235, column: 17, scope: !4462)
!4464 = !DILocation(line: 235, column: 15, scope: !4462)
!4465 = !DILocation(line: 235, column: 11, scope: !4452)
!4466 = !DILocation(line: 236, column: 9, scope: !4462)
!4467 = !DILocation(line: 236, column: 2, scope: !4462)
!4468 = !DILocation(line: 237, column: 14, scope: !4452)
!4469 = !DILocation(line: 237, column: 7, scope: !4452)
!4470 = !DILocation(line: 238, column: 5, scope: !4452)
!4471 = distinct !DISubprogram(name: "max_size", linkageName: "_ZNK9__gnu_cxx13new_allocatorIlE8max_sizeEv", scope: !317, file: !318, line: 154, type: !353, scopeLine: 155, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !352, retainedNodes: !212)
!4472 = !DILocalVariable(name: "this", arg: 1, scope: !4471, type: !4179, flags: DIFlagArtificial | DIFlagObjectPointer)
!4473 = !DILocation(line: 0, scope: !4471)
!4474 = !DILocation(line: 155, column: 16, scope: !4471)
!4475 = !DILocation(line: 155, column: 9, scope: !4471)
!4476 = distinct !DISubprogram(name: "new_allocator", linkageName: "_ZN9__gnu_cxx13new_allocatorIlEC2Ev", scope: !317, file: !318, line: 79, type: !321, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !320, retainedNodes: !212)
!4477 = !DILocalVariable(name: "this", arg: 1, scope: !4476, type: !3633, flags: DIFlagArtificial | DIFlagObjectPointer)
!4478 = !DILocation(line: 0, scope: !4476)
!4479 = !DILocation(line: 79, column: 47, scope: !4476)
!4480 = distinct !DISubprogram(name: "TensorBuffer", linkageName: "_ZN10tensorflow12TensorBufferC2EPv", scope: !1912, file: !1907, line: 78, type: !4481, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !4484, retainedNodes: !212)
!4481 = !DISubroutineType(types: !4482)
!4482 = !{null, !4483, !38}
!4483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1912, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!4484 = !DISubprogram(name: "TensorBuffer", scope: !1912, file: !1907, line: 78, type: !4481, scopeLine: 78, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!4485 = !DILocalVariable(name: "this", arg: 1, scope: !4480, type: !1911, flags: DIFlagArtificial | DIFlagObjectPointer)
!4486 = !DILocation(line: 0, scope: !4480)
!4487 = !DILocalVariable(name: "data_ptr", arg: 2, scope: !4480, file: !1907, line: 78, type: !38)
!4488 = !DILocation(line: 78, column: 31, scope: !4480)
!4489 = !DILocation(line: 78, column: 59, scope: !4480)
!4490 = !DILocation(line: 78, column: 12, scope: !4480)
!4491 = !DILocation(line: 78, column: 43, scope: !4480)
!4492 = !DILocation(line: 78, column: 49, scope: !4480)
!4493 = !DILocation(line: 78, column: 60, scope: !4480)
!4494 = distinct !DISubprogram(name: "~TF_ManagedBuffer", linkageName: "_ZN16TF_ManagedBufferD2Ev", scope: !3022, file: !2399, line: 56, type: !3037, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !3036, retainedNodes: !212)
!4495 = !DILocalVariable(name: "this", arg: 1, scope: !4494, type: !3021, flags: DIFlagArtificial | DIFlagObjectPointer)
!4496 = !DILocation(line: 0, scope: !4494)
!4497 = !DILocation(line: 56, column: 32, scope: !4494)
!4498 = !DILocation(line: 57, column: 7, scope: !4499)
!4499 = distinct !DILexicalBlock(scope: !4494, file: !2399, line: 56, column: 32)
!4500 = !DILocation(line: 57, column: 21, scope: !4499)
!4501 = !DILocation(line: 57, column: 29, scope: !4499)
!4502 = !DILocation(line: 57, column: 35, scope: !4499)
!4503 = !DILocation(line: 57, column: 5, scope: !4499)
!4504 = !DILocation(line: 58, column: 3, scope: !4499)
!4505 = !DILocation(line: 58, column: 3, scope: !4494)
!4506 = distinct !DISubprogram(name: "~TF_ManagedBuffer", linkageName: "_ZN16TF_ManagedBufferD0Ev", scope: !3022, file: !2399, line: 56, type: !3037, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !3036, retainedNodes: !212)
!4507 = !DILocalVariable(name: "this", arg: 1, scope: !4506, type: !3021, flags: DIFlagArtificial | DIFlagObjectPointer)
!4508 = !DILocation(line: 0, scope: !4506)
!4509 = !DILocation(line: 56, column: 32, scope: !4506)
!4510 = !DILocation(line: 58, column: 3, scope: !4506)
!4511 = distinct !DISubprogram(name: "size", linkageName: "_ZNK16TF_ManagedBuffer4sizeEv", scope: !3022, file: !2399, line: 60, type: !3040, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !3039, retainedNodes: !212)
!4512 = !DILocalVariable(name: "this", arg: 1, scope: !4511, type: !4513, flags: DIFlagArtificial | DIFlagObjectPointer)
!4513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3043, size: 64)
!4514 = !DILocation(line: 0, scope: !4511)
!4515 = !DILocation(line: 60, column: 41, scope: !4511)
!4516 = !DILocation(line: 60, column: 34, scope: !4511)
!4517 = distinct !DISubprogram(name: "root_buffer", linkageName: "_ZN16TF_ManagedBuffer11root_bufferEv", scope: !3022, file: !2399, line: 61, type: !3045, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !3044, retainedNodes: !212)
!4518 = !DILocalVariable(name: "this", arg: 1, scope: !4517, type: !3021, flags: DIFlagArtificial | DIFlagObjectPointer)
!4519 = !DILocation(line: 0, scope: !4517)
!4520 = !DILocation(line: 61, column: 49, scope: !4517)
!4521 = !DILocation(line: 61, column: 42, scope: !4517)
!4522 = distinct !DISubprogram(name: "FillAllocationDescription", linkageName: "_ZNK16TF_ManagedBuffer25FillAllocationDescriptionEPN10tensorflow21AllocationDescriptionE", scope: !3022, file: !2399, line: 62, type: !3048, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !3047, retainedNodes: !212)
!4523 = !DILocalVariable(name: "this", arg: 1, scope: !4522, type: !4513, flags: DIFlagArtificial | DIFlagObjectPointer)
!4524 = !DILocation(line: 0, scope: !4522)
!4525 = !DILocalVariable(arg: 2, scope: !4522, file: !2399, line: 63, type: !3050)
!4526 = !DILocation(line: 63, column: 52, scope: !4522)
!4527 = !DILocation(line: 67, column: 3, scope: !4522)
!4528 = distinct !DISubprogram(name: "OwnsMemory", linkageName: "_ZNK16TF_ManagedBuffer10OwnsMemoryEv", scope: !3022, file: !2399, line: 69, type: !3053, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !3052, retainedNodes: !212)
!4529 = !DILocalVariable(name: "this", arg: 1, scope: !4528, type: !4513, flags: DIFlagArtificial | DIFlagObjectPointer)
!4530 = !DILocation(line: 0, scope: !4528)
!4531 = !DILocation(line: 69, column: 45, scope: !4528)
!4532 = !DILocation(line: 69, column: 38, scope: !4528)
!4533 = distinct !DISubprogram(name: "GetMemoryType", linkageName: "_ZNK10tensorflow12TensorBuffer13GetMemoryTypeEv", scope: !1912, file: !1907, line: 111, type: !4534, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !4538, retainedNodes: !212)
!4534 = !DISubroutineType(types: !4535)
!4535 = !{!83, !4536}
!4536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4537, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!4537 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1912)
!4538 = !DISubprogram(name: "GetMemoryType", linkageName: "_ZNK10tensorflow12TensorBuffer13GetMemoryTypeEv", scope: !1912, file: !1907, line: 111, type: !4534, scopeLine: 111, containingType: !1912, virtualIndex: 7, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!4539 = !DILocalVariable(name: "this", arg: 1, scope: !4533, type: !4540, flags: DIFlagArtificial | DIFlagObjectPointer)
!4540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4537, size: 64)
!4541 = !DILocation(line: 0, scope: !4533)
!4542 = !DILocation(line: 112, column: 5, scope: !4533)
!4543 = distinct !DISubprogram(name: "data", linkageName: "_ZNK10tensorflow12TensorBuffer4dataEv", scope: !1912, file: !1907, line: 86, type: !4544, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !4546, retainedNodes: !212)
!4544 = !DISubroutineType(types: !4545)
!4545 = !{!38, !4536}
!4546 = !DISubprogram(name: "data", linkageName: "_ZNK10tensorflow12TensorBuffer4dataEv", scope: !1912, file: !1907, line: 86, type: !4544, scopeLine: 86, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!4547 = !DILocalVariable(name: "this", arg: 1, scope: !4543, type: !4540, flags: DIFlagArtificial | DIFlagObjectPointer)
!4548 = !DILocation(line: 0, scope: !4543)
!4549 = !DILocation(line: 86, column: 31, scope: !4543)
!4550 = !DILocation(line: 86, column: 24, scope: !4543)
!4551 = distinct !DISubprogram(name: "~TensorBuffer", linkageName: "_ZN10tensorflow12TensorBufferD2Ev", scope: !1912, file: !1907, line: 79, type: !4552, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !4554, retainedNodes: !212)
!4552 = !DISubroutineType(types: !4553)
!4553 = !{null, !4483}
!4554 = !DISubprogram(name: "~TensorBuffer", scope: !1912, file: !1907, line: 79, type: !4552, scopeLine: 79, containingType: !1912, virtualIndex: 0, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!4555 = !DILocalVariable(name: "this", arg: 1, scope: !4551, type: !1911, flags: DIFlagArtificial | DIFlagObjectPointer)
!4556 = !DILocation(line: 0, scope: !4551)
!4557 = !DILocation(line: 79, column: 29, scope: !4558)
!4558 = distinct !DILexicalBlock(scope: !4551, file: !1907, line: 79, column: 28)
!4559 = !DILocation(line: 79, column: 29, scope: !4551)
!4560 = distinct !DISubprogram(name: "~RefCounted", linkageName: "_ZN10tensorflow4core10RefCountedD2Ev", scope: !3055, file: !3056, line: 14, type: !3215, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !3218, retainedNodes: !212)
!4561 = !DILocalVariable(name: "this", arg: 1, scope: !4560, type: !4562, flags: DIFlagArtificial | DIFlagObjectPointer)
!4562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3055, size: 64)
!4563 = !DILocation(line: 0, scope: !4560)
!4564 = !DILocation(line: 14, column: 33, scope: !4560)
!4565 = distinct !DISubprogram(name: "RefCounted", linkageName: "_ZN10tensorflow4core10RefCountedC2Ev", scope: !3055, file: !3056, line: 13, type: !3215, scopeLine: 13, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !3214, retainedNodes: !212)
!4566 = !DILocalVariable(name: "this", arg: 1, scope: !4565, type: !4562, flags: DIFlagArtificial | DIFlagObjectPointer)
!4567 = !DILocation(line: 0, scope: !4565)
!4568 = !DILocation(line: 13, column: 32, scope: !4565)
!4569 = !DILocation(line: 13, column: 18, scope: !4565)
!4570 = !DILocation(line: 13, column: 33, scope: !4565)
!4571 = distinct !DISubprogram(name: "atomic", linkageName: "_ZNSt6atomicImEC2Em", scope: !3061, file: !3062, line: 902, type: !3209, scopeLine: 902, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !3208, retainedNodes: !212)
!4572 = !DILocalVariable(name: "this", arg: 1, scope: !4571, type: !4573, flags: DIFlagArtificial | DIFlagObjectPointer)
!4573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3061, size: 64)
!4574 = !DILocation(line: 0, scope: !4571)
!4575 = !DILocalVariable(name: "__i", arg: 2, scope: !4571, file: !3062, line: 902, type: !3211)
!4576 = !DILocation(line: 902, column: 40, scope: !4571)
!4577 = !DILocation(line: 902, column: 73, scope: !4571)
!4578 = !DILocation(line: 902, column: 68, scope: !4571)
!4579 = !DILocation(line: 902, column: 56, scope: !4571)
!4580 = !DILocation(line: 902, column: 75, scope: !4571)
!4581 = distinct !DISubprogram(name: "__atomic_base", linkageName: "_ZNSt13__atomic_baseImEC2Em", scope: !3065, file: !214, line: 345, type: !3091, scopeLine: 345, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !3090, retainedNodes: !212)
!4582 = !DILocalVariable(name: "this", arg: 1, scope: !4581, type: !3462, flags: DIFlagArtificial | DIFlagObjectPointer)
!4583 = !DILocation(line: 0, scope: !4581)
!4584 = !DILocalVariable(name: "__i", arg: 2, scope: !4581, file: !214, line: 345, type: !3070)
!4585 = !DILocation(line: 345, column: 42, scope: !4581)
!4586 = !DILocation(line: 345, column: 58, scope: !4581)
!4587 = !DILocation(line: 345, column: 64, scope: !4581)
!4588 = !DILocation(line: 345, column: 71, scope: !4581)
!4589 = distinct !DISubprogram(name: "~RefCounted", linkageName: "_ZN10tensorflow4core10RefCountedD0Ev", scope: !3055, file: !3056, line: 14, type: !3215, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !3218, retainedNodes: !212)
!4590 = !DILocalVariable(name: "this", arg: 1, scope: !4589, type: !4562, flags: DIFlagArtificial | DIFlagObjectPointer)
!4591 = !DILocation(line: 0, scope: !4589)
!4592 = !DILocation(line: 14, column: 33, scope: !4589)
!4593 = distinct !DISubprogram(name: "TF_NewTensor", scope: !2180, file: !2180, line: 107, type: !4594, scopeLine: 110, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, retainedNodes: !212)
!4594 = !DISubroutineType(types: !4595)
!4595 = !{!3003, !225, !3005, !16, !38, !19, !3028, !38}
!4596 = !DILocalVariable(name: "dtype", arg: 1, scope: !4593, file: !2180, line: 107, type: !225)
!4597 = !DILocation(line: 107, column: 37, scope: !4593)
!4598 = !DILocalVariable(name: "dims", arg: 2, scope: !4593, file: !2180, line: 107, type: !3005)
!4599 = !DILocation(line: 107, column: 59, scope: !4593)
!4600 = !DILocalVariable(name: "num_dims", arg: 3, scope: !4593, file: !2180, line: 107, type: !16)
!4601 = !DILocation(line: 107, column: 69, scope: !4593)
!4602 = !DILocalVariable(name: "data", arg: 4, scope: !4593, file: !2180, line: 108, type: !38)
!4603 = !DILocation(line: 108, column: 31, scope: !4593)
!4604 = !DILocalVariable(name: "len", arg: 5, scope: !4593, file: !2180, line: 108, type: !19)
!4605 = !DILocation(line: 108, column: 44, scope: !4593)
!4606 = !DILocalVariable(name: "deallocator", arg: 6, scope: !4593, file: !2180, line: 109, type: !3028)
!4607 = !DILocation(line: 109, column: 32, scope: !4593)
!4608 = !DILocalVariable(name: "deallocator_arg", arg: 7, scope: !4593, file: !2180, line: 110, type: !38)
!4609 = !DILocation(line: 110, column: 31, scope: !4593)
!4610 = !DILocalVariable(name: "buf", scope: !4593, file: !2180, line: 111, type: !3021)
!4611 = !DILocation(line: 111, column: 21, scope: !4593)
!4612 = !DILocation(line: 112, column: 7, scope: !4613)
!4613 = distinct !DILexicalBlock(scope: !4593, file: !2180, line: 112, column: 7)
!4614 = !DILocation(line: 112, column: 13, scope: !4613)
!4615 = !DILocation(line: 112, column: 26, scope: !4613)
!4616 = !DILocation(line: 112, column: 29, scope: !4613)
!4617 = !DILocation(line: 112, column: 35, scope: !4613)
!4618 = !DILocation(line: 112, column: 50, scope: !4613)
!4619 = !DILocation(line: 114, column: 45, scope: !4613)
!4620 = !DILocation(line: 113, column: 7, scope: !4613)
!4621 = !DILocation(line: 114, column: 53, scope: !4613)
!4622 = !DILocation(line: 115, column: 34, scope: !4613)
!4623 = !DILocation(line: 115, column: 7, scope: !4613)
!4624 = !DILocation(line: 115, column: 51, scope: !4613)
!4625 = !DILocation(line: 115, column: 54, scope: !4613)
!4626 = !DILocation(line: 115, column: 42, scope: !4613)
!4627 = !DILocation(line: 115, column: 40, scope: !4613)
!4628 = !{!"True"}
!4629 = !DILocation(line: 115, column: 77, scope: !4613)
!4630 = !DILocation(line: 0, scope: !4613)
!4631 = !DILocation(line: 112, column: 7, scope: !4593)
!4632 = !DILocation(line: 124, column: 11, scope: !4633)
!4633 = distinct !DILexicalBlock(scope: !4613, file: !2180, line: 116, column: 14)
!4634 = !DILocation(line: 124, column: 76, scope: !4633)
!4635 = !DILocation(line: 124, column: 32, scope: !4633)
!4636 = !DILocation(line: 125, column: 32, scope: !4633)
!4637 = !DILocation(line: 124, column: 15, scope: !4633)
!4638 = !DILocation(line: 124, column: 9, scope: !4633)
!4639 = !DILocation(line: 127, column: 17, scope: !4633)
!4640 = !DILocation(line: 127, column: 22, scope: !4633)
!4641 = !DILocation(line: 127, column: 30, scope: !4633)
!4642 = !DILocation(line: 127, column: 36, scope: !4633)
!4643 = !DILocation(line: 127, column: 5, scope: !4633)
!4644 = !DILocation(line: 129, column: 5, scope: !4633)
!4645 = !DILocation(line: 129, column: 17, scope: !4633)
!4646 = !DILocation(line: 129, column: 23, scope: !4633)
!4647 = !DILocation(line: 129, column: 28, scope: !4633)
!4648 = !DILocation(line: 130, column: 3, scope: !4633)
!4649 = !DILocation(line: 136, column: 1, scope: !4633)
!4650 = !DILocation(line: 131, column: 11, scope: !4651)
!4651 = distinct !DILexicalBlock(scope: !4613, file: !2180, line: 130, column: 10)
!4652 = !DILocation(line: 131, column: 32, scope: !4651)
!4653 = !DILocation(line: 131, column: 38, scope: !4651)
!4654 = !DILocation(line: 131, column: 43, scope: !4651)
!4655 = !DILocation(line: 131, column: 56, scope: !4651)
!4656 = !DILocation(line: 131, column: 15, scope: !4651)
!4657 = !DILocation(line: 131, column: 9, scope: !4651)
!4658 = !DILocation(line: 136, column: 1, scope: !4651)
!4659 = !DILocation(line: 135, column: 23, scope: !4593)
!4660 = !DILocation(line: 135, column: 28, scope: !4593)
!4661 = !DILocation(line: 135, column: 35, scope: !4593)
!4662 = !DILocation(line: 135, column: 41, scope: !4593)
!4663 = !DILocation(line: 135, column: 51, scope: !4593)
!4664 = !DILocation(line: 135, column: 10, scope: !4593)
!4665 = !DILocation(line: 135, column: 3, scope: !4593)
!4666 = distinct !DISubprogram(name: "DataTypeCanUseMemcpy", linkageName: "_ZN10tensorflow20DataTypeCanUseMemcpyE8DataType", scope: !4, file: !1904, line: 15, type: !4667, scopeLine: 15, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, retainedNodes: !212)
!4667 = !DISubroutineType(types: !4668)
!4668 = !{!53, !100}
!4669 = !DILocalVariable(name: "dt", arg: 1, scope: !4666, file: !1904, line: 15, type: !100)
!4670 = !DILocation(line: 15, column: 43, scope: !4666)
!4671 = !DILocation(line: 16, column: 11, scope: !4666)
!4672 = !DILocation(line: 16, column: 3, scope: !4666)
!4673 = !DILocation(line: 46, column: 7, scope: !4674)
!4674 = distinct !DILexicalBlock(scope: !4666, file: !1904, line: 16, column: 15)
!4675 = !DILocation(line: 49, column: 7, scope: !4674)
!4676 = !DILocation(line: 51, column: 1, scope: !4666)
!4677 = distinct !DISubprogram(name: "max<int>", linkageName: "_ZSt3maxIiERKT_S2_S2_", scope: !31, file: !3969, line: 254, type: !4678, scopeLine: 255, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, templateParams: !4681, retainedNodes: !212)
!4678 = !DISubroutineType(types: !4679)
!4679 = !{!4680, !4680, !4680}
!4680 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3068, size: 64)
!4681 = !{!4682}
!4682 = !DITemplateTypeParameter(name: "_Tp", type: !16)
!4683 = !DILocalVariable(name: "__a", arg: 1, scope: !4677, file: !3969, line: 254, type: !4680)
!4684 = !DILocation(line: 254, column: 20, scope: !4677)
!4685 = !DILocalVariable(name: "__b", arg: 2, scope: !4677, file: !3969, line: 254, type: !4680)
!4686 = !DILocation(line: 254, column: 36, scope: !4677)
!4687 = !DILocation(line: 259, column: 11, scope: !4688)
!4688 = distinct !DILexicalBlock(scope: !4677, file: !3969, line: 259, column: 11)
!4689 = !DILocation(line: 259, column: 17, scope: !4688)
!4690 = !DILocation(line: 259, column: 15, scope: !4688)
!4691 = !DILocation(line: 259, column: 11, scope: !4677)
!4692 = !DILocation(line: 260, column: 9, scope: !4688)
!4693 = !DILocation(line: 260, column: 2, scope: !4688)
!4694 = !DILocation(line: 261, column: 14, scope: !4677)
!4695 = !DILocation(line: 261, column: 7, scope: !4677)
!4696 = !DILocation(line: 262, column: 5, scope: !4677)
!4697 = distinct !DISubprogram(name: "TF_TensorMaybeMove", scope: !2180, file: !2180, line: 140, type: !4698, scopeLine: 140, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, retainedNodes: !212)
!4698 = !DISubroutineType(types: !4699)
!4699 = !{!3003, !3003}
!4700 = !DILocalVariable(name: "t", arg: 1, scope: !4697, file: !2180, line: 140, type: !3003)
!4701 = !DILocation(line: 140, column: 42, scope: !4697)
!4702 = !DILocation(line: 141, column: 10, scope: !4697)
!4703 = !DILocation(line: 141, column: 13, scope: !4697)
!4704 = !DILocation(line: 141, column: 21, scope: !4697)
!4705 = !DILocation(line: 141, column: 33, scope: !4697)
!4706 = !DILocation(line: 141, column: 3, scope: !4697)
!4707 = distinct !DISubprogram(name: "TF_DeleteTensor", scope: !2180, file: !2180, line: 144, type: !4708, scopeLine: 144, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, retainedNodes: !212)
!4708 = !DISubroutineType(types: !4709)
!4709 = !{null, !3003}
!4710 = !DILocalVariable(name: "t", arg: 1, scope: !4707, file: !2180, line: 144, type: !3003)
!4711 = !DILocation(line: 144, column: 33, scope: !4707)
!4712 = !DILocation(line: 145, column: 7, scope: !4713)
!4713 = distinct !DILexicalBlock(scope: !4707, file: !2180, line: 145, column: 7)
!4714 = !DILocation(line: 145, column: 9, scope: !4713)
!4715 = !DILocation(line: 145, column: 7, scope: !4707)
!4716 = !DILocation(line: 146, column: 5, scope: !4717)
!4717 = distinct !DILexicalBlock(scope: !4713, file: !2180, line: 145, column: 21)
!4718 = !DILocation(line: 149, column: 7, scope: !4719)
!4719 = distinct !DILexicalBlock(scope: !4707, file: !2180, line: 149, column: 7)
!4720 = !DILocation(line: 149, column: 10, scope: !4719)
!4721 = !DILocation(line: 149, column: 7, scope: !4707)
!4722 = !DILocation(line: 150, column: 5, scope: !4723)
!4723 = distinct !DILexicalBlock(scope: !4719, file: !2180, line: 149, column: 18)
!4724 = !DILocation(line: 150, column: 8, scope: !4723)
!4725 = !DILocation(line: 150, column: 16, scope: !4723)
!4726 = !DILocation(line: 151, column: 3, scope: !4723)
!4727 = !DILocation(line: 153, column: 10, scope: !4707)
!4728 = !DILocation(line: 153, column: 3, scope: !4707)
!4729 = !DILocation(line: 154, column: 1, scope: !4707)
!4730 = distinct !DISubprogram(name: "TF_TensorType", scope: !2180, file: !2180, line: 156, type: !4731, scopeLine: 156, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, retainedNodes: !212)
!4731 = !DISubroutineType(types: !4732)
!4732 = !{!225, !4733}
!4733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4734, size: 64)
!4734 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3004)
!4735 = !DILocalVariable(name: "t", arg: 1, scope: !4730, file: !2180, line: 156, type: !4733)
!4736 = !DILocation(line: 156, column: 44, scope: !4730)
!4737 = !DILocation(line: 157, column: 35, scope: !4730)
!4738 = !DILocation(line: 157, column: 38, scope: !4730)
!4739 = !DILocation(line: 157, column: 46, scope: !4730)
!4740 = !DILocation(line: 157, column: 3, scope: !4730)
!4741 = distinct !DISubprogram(name: "TF_NumDims", scope: !2180, file: !2180, line: 165, type: !4742, scopeLine: 165, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, retainedNodes: !212)
!4742 = !DISubroutineType(types: !4743)
!4743 = !{!16, !4733}
!4744 = !DILocalVariable(name: "t", arg: 1, scope: !4741, file: !2180, line: 165, type: !4733)
!4745 = !DILocation(line: 165, column: 33, scope: !4741)
!4746 = !DILocation(line: 165, column: 45, scope: !4741)
!4747 = !DILocation(line: 165, column: 48, scope: !4741)
!4748 = !DILocation(line: 165, column: 56, scope: !4741)
!4749 = !DILocation(line: 165, column: 38, scope: !4741)
!4750 = distinct !DISubprogram(name: "TF_Dim", scope: !2180, file: !2180, line: 167, type: !4751, scopeLine: 167, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, retainedNodes: !212)
!4751 = !DISubroutineType(types: !4752)
!4752 = !{!64, !4733, !16}
!4753 = !DILocalVariable(name: "t", arg: 1, scope: !4750, file: !2180, line: 167, type: !4733)
!4754 = !DILocation(line: 167, column: 33, scope: !4750)
!4755 = !DILocalVariable(name: "dim_index", arg: 2, scope: !4750, file: !2180, line: 167, type: !16)
!4756 = !DILocation(line: 167, column: 40, scope: !4750)
!4757 = !DILocation(line: 168, column: 10, scope: !4750)
!4758 = !DILocation(line: 168, column: 13, scope: !4750)
!4759 = !DILocation(line: 168, column: 25, scope: !4750)
!4760 = !DILocation(line: 168, column: 21, scope: !4750)
!4761 = !DILocation(line: 168, column: 3, scope: !4750)
!4762 = distinct !DISubprogram(name: "TF_TensorByteSize", scope: !2180, file: !2180, line: 171, type: !4763, scopeLine: 171, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, retainedNodes: !212)
!4763 = !DISubroutineType(types: !4764)
!4764 = !{!19, !4733}
!4765 = !DILocalVariable(name: "t", arg: 1, scope: !4762, file: !2180, line: 171, type: !4733)
!4766 = !DILocation(line: 171, column: 43, scope: !4762)
!4767 = !DILocation(line: 171, column: 55, scope: !4762)
!4768 = !DILocation(line: 171, column: 58, scope: !4762)
!4769 = !DILocation(line: 171, column: 66, scope: !4762)
!4770 = !DILocation(line: 171, column: 48, scope: !4762)
!4771 = distinct !DISubprogram(name: "TF_TensorData", scope: !2180, file: !2180, line: 173, type: !4772, scopeLine: 173, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, retainedNodes: !212)
!4772 = !DISubroutineType(types: !4773)
!4773 = !{!38, !4733}
!4774 = !DILocalVariable(name: "t", arg: 1, scope: !4771, file: !2180, line: 173, type: !4733)
!4775 = !DILocation(line: 173, column: 38, scope: !4771)
!4776 = !DILocation(line: 173, column: 50, scope: !4771)
!4777 = !DILocation(line: 173, column: 53, scope: !4771)
!4778 = !DILocation(line: 173, column: 61, scope: !4771)
!4779 = !DILocation(line: 173, column: 43, scope: !4771)
!4780 = distinct !DISubprogram(name: "TF_TensorElementCount", scope: !2180, file: !2180, line: 175, type: !4781, scopeLine: 175, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, retainedNodes: !212)
!4781 = !DISubroutineType(types: !4782)
!4782 = !{!64, !4733}
!4783 = !DILocalVariable(name: "t", arg: 1, scope: !4780, file: !2180, line: 175, type: !4733)
!4784 = !DILocation(line: 175, column: 48, scope: !4780)
!4785 = !DILocalVariable(name: "result", scope: !4780, file: !2180, line: 176, type: !64)
!4786 = !DILocation(line: 176, column: 11, scope: !4780)
!4787 = !DILocalVariable(name: "rank", scope: !4780, file: !2180, line: 177, type: !16)
!4788 = !DILocation(line: 177, column: 7, scope: !4780)
!4789 = !DILocation(line: 177, column: 25, scope: !4780)
!4790 = !DILocation(line: 177, column: 14, scope: !4780)
!4791 = !DILocalVariable(name: "dim", scope: !4792, file: !2180, line: 178, type: !16)
!4792 = distinct !DILexicalBlock(scope: !4780, file: !2180, line: 178, column: 3)
!4793 = !DILocation(line: 178, column: 12, scope: !4792)
!4794 = !DILocation(line: 178, column: 8, scope: !4792)
!4795 = !DILocation(line: 178, column: 21, scope: !4796)
!4796 = distinct !DILexicalBlock(scope: !4792, file: !2180, line: 178, column: 3)
!4797 = !DILocation(line: 178, column: 27, scope: !4796)
!4798 = !DILocation(line: 178, column: 25, scope: !4796)
!4799 = !DILocation(line: 178, column: 3, scope: !4792)
!4800 = !DILocation(line: 179, column: 22, scope: !4801)
!4801 = distinct !DILexicalBlock(scope: !4796, file: !2180, line: 178, column: 40)
!4802 = !DILocation(line: 179, column: 25, scope: !4801)
!4803 = !DILocation(line: 179, column: 15, scope: !4801)
!4804 = !DILocation(line: 179, column: 12, scope: !4801)
!4805 = !DILocation(line: 180, column: 3, scope: !4801)
!4806 = !DILocation(line: 178, column: 33, scope: !4796)
!4807 = !DILocation(line: 178, column: 3, scope: !4796)
!4808 = distinct !{!4808, !4799, !4809}
!4809 = !DILocation(line: 180, column: 3, scope: !4792)
!4810 = !DILocation(line: 181, column: 10, scope: !4780)
!4811 = !DILocation(line: 181, column: 3, scope: !4780)
!4812 = distinct !DISubprogram(name: "~TensorBuffer", linkageName: "_ZN10tensorflow12TensorBufferD0Ev", scope: !4813, file: !1907, line: 79, type: !4822, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2235, declaration: !4821, retainedNodes: !212)
!4813 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "TensorBuffer", scope: !4, file: !1907, line: 76, size: 192, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !4814, vtableHolder: !3055)
!4814 = !{!4815, !4816, !4817, !4821, !4824, !4829, !4832, !4836, !4839, !4843, !4846}
!4815 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !4813, baseType: !3055, flags: DIFlagPublic, extraData: i32 0)
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "data_", scope: !4813, file: !1907, line: 116, baseType: !3030, size: 64, offset: 128)
!4817 = !DISubprogram(name: "TensorBuffer", scope: !4813, file: !1907, line: 78, type: !4818, scopeLine: 78, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!4818 = !DISubroutineType(types: !4819)
!4819 = !{null, !4820, !38}
!4820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4813, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!4821 = !DISubprogram(name: "~TensorBuffer", scope: !4813, file: !1907, line: 79, type: !4822, scopeLine: 79, containingType: !4813, virtualIndex: 0, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!4822 = !DISubroutineType(types: !4823)
!4823 = !{null, !4820}
!4824 = !DISubprogram(name: "data", linkageName: "_ZNK10tensorflow12TensorBuffer4dataEv", scope: !4813, file: !1907, line: 86, type: !4825, scopeLine: 86, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!4825 = !DISubroutineType(types: !4826)
!4826 = !{!38, !4827}
!4827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4828, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!4828 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4813)
!4829 = !DISubprogram(name: "size", linkageName: "_ZNK10tensorflow12TensorBuffer4sizeEv", scope: !4813, file: !1907, line: 89, type: !4830, scopeLine: 89, containingType: !4813, virtualIndex: 2, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual)
!4830 = !DISubroutineType(types: !4831)
!4831 = !{!19, !4827}
!4832 = !DISubprogram(name: "root_buffer", linkageName: "_ZN10tensorflow12TensorBuffer11root_bufferEv", scope: !4813, file: !1907, line: 93, type: !4833, scopeLine: 93, containingType: !4813, virtualIndex: 3, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual)
!4833 = !DISubroutineType(types: !4834)
!4834 = !{!4835, !4820}
!4835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4813, size: 64)
!4836 = !DISubprogram(name: "FillAllocationDescription", linkageName: "_ZNK10tensorflow12TensorBuffer25FillAllocationDescriptionEPNS_21AllocationDescriptionE", scope: !4813, file: !1907, line: 96, type: !4837, scopeLine: 96, containingType: !4813, virtualIndex: 4, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual)
!4837 = !DISubroutineType(types: !4838)
!4838 = !{null, !4827, !3050}
!4839 = !DISubprogram(name: "GetAllocatedBytes", linkageName: "_ZNK10tensorflow12TensorBuffer17GetAllocatedBytesEPm", scope: !4813, file: !1907, line: 99, type: !4840, scopeLine: 99, containingType: !4813, virtualIndex: 5, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!4840 = !DISubroutineType(types: !4841)
!4841 = !{!53, !4827, !4842}
!4842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!4843 = !DISubprogram(name: "OwnsMemory", linkageName: "_ZNK10tensorflow12TensorBuffer10OwnsMemoryEv", scope: !4813, file: !1907, line: 108, type: !4844, scopeLine: 108, containingType: !4813, virtualIndex: 6, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!4844 = !DISubroutineType(types: !4845)
!4845 = !{!53, !4827}
!4846 = !DISubprogram(name: "GetMemoryType", linkageName: "_ZNK10tensorflow12TensorBuffer13GetMemoryTypeEv", scope: !4813, file: !1907, line: 111, type: !4847, scopeLine: 111, containingType: !4813, virtualIndex: 7, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!4847 = !DISubroutineType(types: !4848)
!4848 = !{!83, !4827}
!4849 = !DILocalVariable(name: "this", arg: 1, scope: !4812, type: !4835, flags: DIFlagArtificial | DIFlagObjectPointer)
!4850 = !DILocation(line: 0, scope: !4812)
!4851 = !DILocation(line: 79, column: 28, scope: !4812)
!4852 = distinct !DISubprogram(name: "GetAllocatedBytes", linkageName: "_ZNK10tensorflow12TensorBuffer17GetAllocatedBytesEPm", scope: !4813, file: !4853, line: 84, type: !4840, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2235, declaration: !4839, retainedNodes: !212)
!4853 = !DIFile(filename: "tensorflow/core/framework/tensor.cc", directory: "/home/mushfiqur/Desktop/Github/tensorflow")
!4854 = !DILocalVariable(name: "this", arg: 1, scope: !4852, type: !4855, flags: DIFlagArtificial | DIFlagObjectPointer)
!4855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4828, size: 64)
!4856 = !DILocation(line: 0, scope: !4852)
!4857 = !DILocalVariable(name: "out_bytes", arg: 2, scope: !4852, file: !4853, line: 84, type: !4842)
!4858 = !DILocation(line: 84, column: 46, scope: !4852)
!4859 = !DILocation(line: 93, column: 2, scope: !4852)
!4860 = distinct !DISubprogram(name: "OwnsMemory", linkageName: "_ZNK10tensorflow12TensorBuffer10OwnsMemoryEv", scope: !4813, file: !1907, line: 108, type: !4844, scopeLine: 108, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2235, declaration: !4843, retainedNodes: !212)
!4861 = !DILocalVariable(name: "this", arg: 1, scope: !4860, type: !4855, flags: DIFlagArtificial | DIFlagObjectPointer)
!4862 = !DILocation(line: 0, scope: !4860)
!4863 = !DILocation(line: 108, column: 37, scope: !4860)
!4864 = distinct !DISubprogram(name: "Tensor", linkageName: "_ZN10tensorflow6TensorC2E8DataTypeRKNS_11TensorShapeEPNS_12TensorBufferE", scope: !1906, file: !4853, line: 844, type: !4865, scopeLine: 845, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2235, declaration: !4867, retainedNodes: !212)
!4865 = !DISubroutineType(types: !4866)
!4866 = !{null, !1916, !100, !982, !4835}
!4867 = !DISubprogram(name: "Tensor", scope: !1906, file: !1907, line: 176, type: !4865, scopeLine: 176, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!4868 = !DILocalVariable(name: "this", arg: 1, scope: !4864, type: !1938, flags: DIFlagArtificial | DIFlagObjectPointer)
!4869 = !DILocation(line: 0, scope: !4864)
!4870 = !DILocalVariable(name: "type", arg: 2, scope: !4864, file: !4853, line: 844, type: !100)
!4871 = !DILocation(line: 844, column: 25, scope: !4864)
!4872 = !DILocalVariable(name: "shape", arg: 3, scope: !4864, file: !4853, line: 844, type: !982)
!4873 = !DILocation(line: 844, column: 50, scope: !4864)
!4874 = !DILocalVariable(name: "buf", arg: 4, scope: !4864, file: !4853, line: 844, type: !4835)
!4875 = !DILocation(line: 844, column: 71, scope: !4864)
!4876 = !DILocation(line: 845, column: 7, scope: !4864)
!4877 = !DILocation(line: 845, column: 14, scope: !4864)
!4878 = !DILocation(line: 845, column: 22, scope: !4864)
!4879 = !DILocation(line: 845, column: 27, scope: !4864)
!4880 = !DILocation(line: 846, column: 13, scope: !4881)
!4881 = distinct !DILexicalBlock(scope: !4864, file: !4853, line: 845, column: 32)
!4882 = !DILocation(line: 846, column: 3, scope: !4881)
!4883 = !DILocation(line: 847, column: 16, scope: !4881)
!4884 = !DILocation(line: 847, column: 3, scope: !4881)
!4885 = !DILocation(line: 848, column: 1, scope: !4864)
!4886 = !DILocation(line: 848, column: 1, scope: !4881)
!4887 = distinct !DISubprogram(name: "TensorShape", linkageName: "_ZN10tensorflow11TensorShapeC2ERKS0_", scope: !284, file: !101, line: 147, type: !4888, scopeLine: 147, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2235, declaration: !4890, retainedNodes: !212)
!4888 = !DISubroutineType(types: !4889)
!4889 = !{null, !898, !982}
!4890 = !DISubprogram(name: "TensorShape", scope: !284, type: !4888, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!4891 = !DILocalVariable(name: "this", arg: 1, scope: !4887, type: !962, flags: DIFlagArtificial | DIFlagObjectPointer)
!4892 = !DILocation(line: 0, scope: !4887)
!4893 = !DILocalVariable(arg: 2, scope: !4887, type: !982)
!4894 = !DILocation(line: 147, column: 7, scope: !4887)
!4895 = distinct !DISubprogram(name: "set_dtype", linkageName: "_ZN10tensorflow6Tensor9set_dtypeE8DataType", scope: !1906, file: !1907, line: 700, type: !1933, scopeLine: 700, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2235, declaration: !2172, retainedNodes: !212)
!4896 = !DILocalVariable(name: "this", arg: 1, scope: !4895, type: !1938, flags: DIFlagArtificial | DIFlagObjectPointer)
!4897 = !DILocation(line: 0, scope: !4895)
!4898 = !DILocalVariable(name: "t", arg: 2, scope: !4895, file: !1907, line: 700, type: !100)
!4899 = !DILocation(line: 700, column: 27, scope: !4895)
!4900 = !DILocation(line: 700, column: 32, scope: !4895)
!4901 = !DILocation(line: 700, column: 53, scope: !4895)
!4902 = !DILocation(line: 700, column: 39, scope: !4895)
!4903 = !DILocation(line: 700, column: 57, scope: !4895)
!4904 = distinct !DISubprogram(name: "RefIfNonNull", linkageName: "_ZN10tensorflow12_GLOBAL__N_112RefIfNonNullEPNS_4core10RefCountedE", scope: !4905, file: !4853, line: 829, type: !4906, scopeLine: 829, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2235, retainedNodes: !212)
!4905 = !DINamespace(scope: !4)
!4906 = !DISubroutineType(types: !4907)
!4907 = !{null, !4562}
!4908 = !DILocalVariable(name: "buf", arg: 1, scope: !4904, file: !4853, line: 829, type: !4562)
!4909 = !DILocation(line: 829, column: 37, scope: !4904)
!4910 = !DILocation(line: 830, column: 7, scope: !4911)
!4911 = distinct !DILexicalBlock(scope: !4904, file: !4853, line: 830, column: 7)
!4912 = !DILocation(line: 830, column: 7, scope: !4904)
!4913 = !DILocation(line: 830, column: 12, scope: !4911)
!4914 = !DILocation(line: 830, column: 17, scope: !4911)
!4915 = !DILocation(line: 831, column: 1, scope: !4904)
!4916 = distinct !DISubprogram(name: "Ref", linkageName: "_ZNK10tensorflow4core10RefCounted3RefEv", scope: !3055, file: !3056, line: 17, type: !3220, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2235, declaration: !3219, retainedNodes: !212)
!4917 = !DILocalVariable(name: "this", arg: 1, scope: !4916, type: !3456, flags: DIFlagArtificial | DIFlagObjectPointer)
!4918 = !DILocation(line: 0, scope: !4916)
!4919 = !DILocation(line: 18, column: 5, scope: !4916)
!4920 = !DILocalVariable(name: "this", arg: 1, scope: !4921, type: !3462, flags: DIFlagArtificial | DIFlagObjectPointer)
!4921 = distinct !DISubprogram(name: "fetch_add", linkageName: "_ZNSt13__atomic_baseImE9fetch_addEmSt12memory_order", scope: !3065, file: !214, line: 616, type: !3154, scopeLine: 618, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2235, declaration: !3176, retainedNodes: !212)
!4922 = !DILocation(line: 0, scope: !4921, inlinedAt: !4923)
!4923 = distinct !DILocation(line: 18, column: 16, scope: !4916)
!4924 = !DILocalVariable(name: "__i", arg: 2, scope: !4921, file: !214, line: 616, type: !3070)
!4925 = !DILocation(line: 616, column: 28, scope: !4921, inlinedAt: !4923)
!4926 = !DILocalVariable(name: "__m", arg: 3, scope: !4921, file: !214, line: 617, type: !3143)
!4927 = !DILocation(line: 617, column: 16, scope: !4921, inlinedAt: !4923)
!4928 = !DILocation(line: 618, column: 36, scope: !4921, inlinedAt: !4923)
!4929 = !DILocation(line: 618, column: 51, scope: !4921, inlinedAt: !4923)
!4930 = !DILocation(line: 618, column: 42, scope: !4921, inlinedAt: !4923)
!4931 = !DILocation(line: 618, column: 16, scope: !4921, inlinedAt: !4923)
!4932 = !DILocation(line: 19, column: 3, scope: !4916)
!4933 = distinct !DISubprogram(name: "set_data_type", linkageName: "_ZN10tensorflow11TensorShape13set_data_typeE8DataType", scope: !284, file: !101, line: 154, type: !906, scopeLine: 154, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2235, declaration: !905, retainedNodes: !212)
!4934 = !DILocalVariable(name: "this", arg: 1, scope: !4933, type: !962, flags: DIFlagArtificial | DIFlagObjectPointer)
!4935 = !DILocation(line: 0, scope: !4933)
!4936 = !DILocalVariable(name: "t", arg: 2, scope: !4933, file: !101, line: 154, type: !100)
!4937 = !DILocation(line: 154, column: 31, scope: !4933)
!4938 = !DILocation(line: 154, column: 45, scope: !4933)
!4939 = !DILocation(line: 154, column: 36, scope: !4933)
!4940 = !DILocation(line: 154, column: 43, scope: !4933)
!4941 = !DILocation(line: 154, column: 48, scope: !4933)
!4942 = distinct !DISubprogram(name: "~Tensor", linkageName: "_ZN10tensorflow6TensorD2Ev", scope: !1906, file: !4853, line: 879, type: !1914, scopeLine: 879, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2235, declaration: !2087, retainedNodes: !212)
!4943 = !DILocalVariable(name: "this", arg: 1, scope: !4942, type: !1938, flags: DIFlagArtificial | DIFlagObjectPointer)
!4944 = !DILocation(line: 0, scope: !4942)
!4945 = !DILocation(line: 879, column: 36, scope: !4946)
!4946 = distinct !DILexicalBlock(scope: !4942, file: !4853, line: 879, column: 19)
!4947 = !DILocation(line: 879, column: 21, scope: !4946)
!4948 = !DILocation(line: 879, column: 43, scope: !4946)
!4949 = !DILocation(line: 879, column: 43, scope: !4942)
!4950 = distinct !DISubprogram(name: "UnrefIfNonNull", linkageName: "_ZN10tensorflow12_GLOBAL__N_114UnrefIfNonNullEPNS_4core10RefCountedE", scope: !4905, file: !4853, line: 833, type: !4906, scopeLine: 833, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2235, retainedNodes: !212)
!4951 = !DILocalVariable(name: "buf", arg: 1, scope: !4950, file: !4853, line: 833, type: !4562)
!4952 = !DILocation(line: 833, column: 39, scope: !4950)
!4953 = !DILocation(line: 834, column: 7, scope: !4954)
!4954 = distinct !DILexicalBlock(scope: !4950, file: !4853, line: 834, column: 7)
!4955 = !DILocation(line: 834, column: 7, scope: !4950)
!4956 = !DILocation(line: 834, column: 12, scope: !4954)
!4957 = !DILocation(line: 834, column: 17, scope: !4954)
!4958 = !DILocation(line: 835, column: 1, scope: !4950)
!4959 = distinct !DISubprogram(name: "Tensor", linkageName: "_ZN10tensorflow6TensorC2EOS0_", scope: !1906, file: !4853, line: 881, type: !2084, scopeLine: 883, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2235, declaration: !2083, retainedNodes: !212)
!4960 = !DILocalVariable(name: "this", arg: 1, scope: !4959, type: !1938, flags: DIFlagArtificial | DIFlagObjectPointer)
!4961 = !DILocation(line: 0, scope: !4959)
!4962 = !DILocalVariable(name: "other", arg: 2, scope: !4959, file: !4853, line: 881, type: !2086)
!4963 = !DILocation(line: 881, column: 25, scope: !4959)
!4964 = !DILocation(line: 882, column: 7, scope: !4959)
!4965 = !DILocation(line: 882, column: 24, scope: !4959)
!4966 = !DILocation(line: 882, column: 30, scope: !4959)
!4967 = !DILocation(line: 882, column: 14, scope: !4959)
!4968 = !DILocation(line: 883, column: 7, scope: !4959)
!4969 = !DILocation(line: 883, column: 12, scope: !4959)
!4970 = !DILocation(line: 883, column: 18, scope: !4959)
!4971 = !DILocation(line: 884, column: 13, scope: !4972)
!4972 = distinct !DILexicalBlock(scope: !4959, file: !4853, line: 883, column: 24)
!4973 = !DILocation(line: 884, column: 19, scope: !4972)
!4974 = !DILocation(line: 884, column: 3, scope: !4972)
!4975 = !DILocation(line: 885, column: 3, scope: !4972)
!4976 = !DILocation(line: 885, column: 9, scope: !4972)
!4977 = !DILocation(line: 885, column: 14, scope: !4972)
!4978 = !DILocation(line: 886, column: 1, scope: !4959)
!4979 = !DILocation(line: 886, column: 1, scope: !4972)
!4980 = distinct !DISubprogram(name: "move<tensorflow::TensorShape &>", linkageName: "_ZSt4moveIRN10tensorflow11TensorShapeEEONSt16remove_referenceIT_E4typeEOS4_", scope: !31, file: !3521, line: 104, type: !4981, scopeLine: 105, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2235, templateParams: !4986, retainedNodes: !212)
!4981 = !DISubroutineType(types: !4982)
!4982 = !{!4983, !4988}
!4983 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !4984, size: 64)
!4984 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !4985, file: !502, line: 1602, baseType: !284)
!4985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "remove_reference<tensorflow::TensorShape &>", scope: !31, file: !502, line: 1601, size: 8, flags: DIFlagTypePassByValue, elements: !212, templateParams: !4986, identifier: "_ZTSSt16remove_referenceIRN10tensorflow11TensorShapeEE")
!4986 = !{!4987}
!4987 = !DITemplateTypeParameter(name: "_Tp", type: !4988)
!4988 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !284, size: 64)
!4989 = !DILocalVariable(name: "__t", arg: 1, scope: !4980, file: !3521, line: 104, type: !4988)
!4990 = !DILocation(line: 104, column: 16, scope: !4980)
!4991 = !DILocation(line: 105, column: 71, scope: !4980)
!4992 = !DILocation(line: 105, column: 7, scope: !4980)
!4993 = distinct !DISubprogram(name: "TensorShape", linkageName: "_ZN10tensorflow11TensorShapeC2EOS0_", scope: !284, file: !101, line: 147, type: !4994, scopeLine: 147, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2235, declaration: !4997, retainedNodes: !212)
!4994 = !DISubroutineType(types: !4995)
!4995 = !{null, !898, !4996}
!4996 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !284, size: 64)
!4997 = !DISubprogram(name: "TensorShape", scope: !284, type: !4994, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!4998 = !DILocalVariable(name: "this", arg: 1, scope: !4993, type: !962, flags: DIFlagArtificial | DIFlagObjectPointer)
!4999 = !DILocation(line: 0, scope: !4993)
!5000 = !DILocalVariable(arg: 2, scope: !4993, type: !4996)
!5001 = !DILocation(line: 147, column: 7, scope: !4993)
!5002 = distinct !DISubprogram(name: "dtype", linkageName: "_ZNK10tensorflow6Tensor5dtypeEv", scope: !1906, file: !1907, line: 290, type: !2089, scopeLine: 290, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2235, declaration: !2088, retainedNodes: !212)
!5003 = !DILocalVariable(name: "this", arg: 1, scope: !5002, type: !3515, flags: DIFlagArtificial | DIFlagObjectPointer)
!5004 = !DILocation(line: 0, scope: !5002)
!5005 = !DILocation(line: 290, column: 35, scope: !5002)
!5006 = !DILocation(line: 290, column: 42, scope: !5002)
!5007 = !DILocation(line: 290, column: 28, scope: !5002)
!5008 = distinct !DISubprogram(name: "data_type", linkageName: "_ZNK10tensorflow11TensorShape9data_typeEv", scope: !284, file: !101, line: 155, type: !909, scopeLine: 155, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2235, declaration: !908, retainedNodes: !212)
!5009 = !DILocalVariable(name: "this", arg: 1, scope: !5008, type: !995, flags: DIFlagArtificial | DIFlagObjectPointer)
!5010 = !DILocation(line: 0, scope: !5008)
!5011 = !DILocation(line: 155, column: 39, scope: !5008)
!5012 = !DILocation(line: 155, column: 32, scope: !5008)
!5013 = distinct !DISubprogram(name: "vector", linkageName: "_ZNSt6vectorIlSaIlEEC2EOS1_", scope: !287, file: !288, line: 572, type: !572, scopeLine: 572, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2235, declaration: !571, retainedNodes: !212)
!5014 = !DILocalVariable(name: "this", arg: 1, scope: !5013, type: !3403, flags: DIFlagArtificial | DIFlagObjectPointer)
!5015 = !DILocation(line: 0, scope: !5013)
!5016 = !DILocalVariable(arg: 2, scope: !5013, file: !288, line: 572, type: !574)
!5017 = !DILocation(line: 572, column: 22, scope: !5013)
!5018 = !DILocation(line: 572, column: 41, scope: !5013)
!5019 = !DILocation(line: 572, column: 7, scope: !5013)
!5020 = distinct !DISubprogram(name: "_Vector_base", linkageName: "_ZNSt12_Vector_baseIlSaIlEEC2EOS1_", scope: !291, file: !288, line: 308, type: !477, scopeLine: 308, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2235, declaration: !476, retainedNodes: !212)
!5021 = !DILocalVariable(name: "this", arg: 1, scope: !5020, type: !3562, flags: DIFlagArtificial | DIFlagObjectPointer)
!5022 = !DILocation(line: 0, scope: !5020)
!5023 = !DILocalVariable(arg: 2, scope: !5020, file: !288, line: 308, type: !479)
!5024 = !DILocation(line: 308, column: 34, scope: !5020)
!5025 = !DILocation(line: 308, column: 7, scope: !5020)
!5026 = !DILocation(line: 308, column: 44, scope: !5020)
!5027 = distinct !DISubprogram(name: "_Vector_impl", linkageName: "_ZNSt12_Vector_baseIlSaIlEE12_Vector_implC2EOS2_", scope: !294, file: !288, line: 143, type: !438, scopeLine: 145, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2235, declaration: !437, retainedNodes: !212)
!5028 = !DILocalVariable(name: "this", arg: 1, scope: !5027, type: !3614, flags: DIFlagArtificial | DIFlagObjectPointer)
!5029 = !DILocation(line: 0, scope: !5027)
!5030 = !DILocalVariable(name: "__x", arg: 2, scope: !5027, file: !288, line: 143, type: !440)
!5031 = !DILocation(line: 143, column: 30, scope: !5027)
!5032 = !DILocation(line: 145, column: 2, scope: !5027)
!5033 = !DILocation(line: 144, column: 29, scope: !5027)
!5034 = !DILocation(line: 144, column: 19, scope: !5027)
!5035 = !DILocation(line: 144, column: 4, scope: !5027)
!5036 = !DILocation(line: 144, column: 64, scope: !5027)
!5037 = !DILocation(line: 144, column: 54, scope: !5027)
!5038 = !DILocation(line: 144, column: 36, scope: !5027)
!5039 = !DILocation(line: 145, column: 4, scope: !5027)
!5040 = distinct !DISubprogram(name: "move<std::_Vector_base<long, std::allocator<long> >::_Vector_impl &>", linkageName: "_ZSt4moveIRNSt12_Vector_baseIlSaIlEE12_Vector_implEEONSt16remove_referenceIT_E4typeEOS6_", scope: !31, file: !3521, line: 104, type: !5041, scopeLine: 105, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2235, templateParams: !5046, retainedNodes: !212)
!5041 = !DISubroutineType(types: !5042)
!5042 = !{!5043, !5048}
!5043 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !5044, size: 64)
!5044 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !5045, file: !502, line: 1602, baseType: !294)
!5045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "remove_reference<std::_Vector_base<long, std::allocator<long> >::_Vector_impl &>", scope: !31, file: !502, line: 1601, size: 8, flags: DIFlagTypePassByValue, elements: !212, templateParams: !5046, identifier: "_ZTSSt16remove_referenceIRNSt12_Vector_baseIlSaIlEE12_Vector_implEE")
!5046 = !{!5047}
!5047 = !DITemplateTypeParameter(name: "_Tp", type: !5048)
!5048 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !294, size: 64)
!5049 = !DILocalVariable(name: "__t", arg: 1, scope: !5040, file: !3521, line: 104, type: !5048)
!5050 = !DILocation(line: 104, column: 16, scope: !5040)
!5051 = !DILocation(line: 105, column: 71, scope: !5040)
!5052 = !DILocation(line: 105, column: 7, scope: !5040)
!5053 = distinct !DISubprogram(name: "_Vector_impl_data", linkageName: "_ZNSt12_Vector_baseIlSaIlEE17_Vector_impl_dataC2EOS2_", scope: !404, file: !288, line: 102, type: !416, scopeLine: 105, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2235, declaration: !415, retainedNodes: !212)
!5054 = !DILocalVariable(name: "this", arg: 1, scope: !5053, type: !4193, flags: DIFlagArtificial | DIFlagObjectPointer)
!5055 = !DILocation(line: 0, scope: !5053)
!5056 = !DILocalVariable(name: "__x", arg: 2, scope: !5053, file: !288, line: 102, type: !418)
!5057 = !DILocation(line: 102, column: 40, scope: !5053)
!5058 = !DILocation(line: 103, column: 4, scope: !5053)
!5059 = !DILocation(line: 103, column: 13, scope: !5053)
!5060 = !DILocation(line: 103, column: 17, scope: !5053)
!5061 = !DILocation(line: 103, column: 28, scope: !5053)
!5062 = !DILocation(line: 103, column: 38, scope: !5053)
!5063 = !DILocation(line: 103, column: 42, scope: !5053)
!5064 = !DILocation(line: 104, column: 4, scope: !5053)
!5065 = !DILocation(line: 104, column: 22, scope: !5053)
!5066 = !DILocation(line: 104, column: 26, scope: !5053)
!5067 = !DILocation(line: 105, column: 35, scope: !5068)
!5068 = distinct !DILexicalBlock(scope: !5053, file: !288, line: 105, column: 2)
!5069 = !DILocation(line: 105, column: 39, scope: !5068)
!5070 = !DILocation(line: 105, column: 57, scope: !5068)
!5071 = !DILocation(line: 105, column: 19, scope: !5068)
!5072 = !DILocation(line: 105, column: 23, scope: !5068)
!5073 = !DILocation(line: 105, column: 33, scope: !5068)
!5074 = !DILocation(line: 105, column: 4, scope: !5068)
!5075 = !DILocation(line: 105, column: 8, scope: !5068)
!5076 = !DILocation(line: 105, column: 17, scope: !5068)
!5077 = !DILocation(line: 105, column: 70, scope: !5053)
!5078 = distinct !DISubprogram(name: "memcpy", scope: !5079, file: !5079, line: 12, type: !5080, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2296, retainedNodes: !212)
!5079 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/mushfiqur/tools/klee")
!5080 = !DISubroutineType(types: !5081)
!5081 = !{!38, !38, !45, !5082}
!5082 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !5083, line: 46, baseType: !21)
!5083 = !DIFile(filename: "llvm-11/lib/clang/11.1.0/include/stddef.h", directory: "/home/mushfiqur")
!5084 = !DILocalVariable(name: "destaddr", arg: 1, scope: !5078, file: !5079, line: 12, type: !38)
!5085 = !DILocation(line: 12, column: 20, scope: !5078)
!5086 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !5078, file: !5079, line: 12, type: !45)
!5087 = !DILocation(line: 12, column: 42, scope: !5078)
!5088 = !DILocalVariable(name: "len", arg: 3, scope: !5078, file: !5079, line: 12, type: !5082)
!5089 = !DILocation(line: 12, column: 58, scope: !5078)
!5090 = !DILocalVariable(name: "dest", scope: !5078, file: !5079, line: 13, type: !242)
!5091 = !DILocation(line: 13, column: 9, scope: !5078)
!5092 = !DILocation(line: 13, column: 16, scope: !5078)
!5093 = !DILocalVariable(name: "src", scope: !5078, file: !5079, line: 14, type: !226)
!5094 = !DILocation(line: 14, column: 15, scope: !5078)
!5095 = !DILocation(line: 14, column: 21, scope: !5078)
!5096 = !DILocation(line: 16, column: 3, scope: !5078)
!5097 = !DILocation(line: 16, column: 13, scope: !5078)
!5098 = !DILocation(line: 16, column: 16, scope: !5078)
!5099 = !DILocation(line: 17, column: 19, scope: !5078)
!5100 = !DILocation(line: 17, column: 15, scope: !5078)
!5101 = !DILocation(line: 17, column: 10, scope: !5078)
!5102 = !DILocation(line: 17, column: 13, scope: !5078)
!5103 = distinct !{!5103, !5096, !5099}
!5104 = !DILocation(line: 18, column: 10, scope: !5078)
!5105 = !DILocation(line: 18, column: 3, scope: !5078)
!5106 = distinct !DISubprogram(name: "memmove", scope: !5107, file: !5107, line: 12, type: !5080, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2298, retainedNodes: !212)
!5107 = !DIFile(filename: "runtime/Freestanding/memmove.c", directory: "/home/mushfiqur/tools/klee")
!5108 = !DILocalVariable(name: "dst", arg: 1, scope: !5106, file: !5107, line: 12, type: !38)
!5109 = !DILocation(line: 12, column: 21, scope: !5106)
!5110 = !DILocalVariable(name: "src", arg: 2, scope: !5106, file: !5107, line: 12, type: !45)
!5111 = !DILocation(line: 12, column: 38, scope: !5106)
!5112 = !DILocalVariable(name: "count", arg: 3, scope: !5106, file: !5107, line: 12, type: !5082)
!5113 = !DILocation(line: 12, column: 50, scope: !5106)
!5114 = !DILocalVariable(name: "a", scope: !5106, file: !5107, line: 13, type: !242)
!5115 = !DILocation(line: 13, column: 9, scope: !5106)
!5116 = !DILocation(line: 13, column: 13, scope: !5106)
!5117 = !DILocalVariable(name: "b", scope: !5106, file: !5107, line: 14, type: !226)
!5118 = !DILocation(line: 14, column: 15, scope: !5106)
!5119 = !DILocation(line: 14, column: 19, scope: !5106)
!5120 = !DILocation(line: 16, column: 7, scope: !5121)
!5121 = distinct !DILexicalBlock(scope: !5106, file: !5107, line: 16, column: 7)
!5122 = !DILocation(line: 16, column: 14, scope: !5121)
!5123 = !DILocation(line: 16, column: 11, scope: !5121)
!5124 = !DILocation(line: 16, column: 7, scope: !5106)
!5125 = !DILocation(line: 17, column: 12, scope: !5121)
!5126 = !DILocation(line: 17, column: 5, scope: !5121)
!5127 = !DILocation(line: 19, column: 7, scope: !5128)
!5128 = distinct !DILexicalBlock(scope: !5106, file: !5107, line: 19, column: 7)
!5129 = !DILocation(line: 19, column: 13, scope: !5128)
!5130 = !DILocation(line: 19, column: 11, scope: !5128)
!5131 = !DILocation(line: 19, column: 7, scope: !5106)
!5132 = !DILocation(line: 20, column: 17, scope: !5133)
!5133 = distinct !DILexicalBlock(scope: !5128, file: !5107, line: 19, column: 18)
!5134 = !DILocation(line: 20, column: 5, scope: !5133)
!5135 = !DILocation(line: 21, column: 16, scope: !5133)
!5136 = !DILocation(line: 21, column: 14, scope: !5133)
!5137 = !DILocation(line: 21, column: 9, scope: !5133)
!5138 = !DILocation(line: 21, column: 12, scope: !5133)
!5139 = distinct !{!5139, !5134, !5135}
!5140 = !DILocation(line: 23, column: 10, scope: !5141)
!5141 = distinct !DILexicalBlock(scope: !5128, file: !5107, line: 22, column: 10)
!5142 = !DILocation(line: 23, column: 16, scope: !5141)
!5143 = !DILocation(line: 23, column: 7, scope: !5141)
!5144 = !DILocation(line: 24, column: 10, scope: !5141)
!5145 = !DILocation(line: 24, column: 16, scope: !5141)
!5146 = !DILocation(line: 24, column: 7, scope: !5141)
!5147 = !DILocation(line: 25, column: 5, scope: !5141)
!5148 = !DILocation(line: 25, column: 17, scope: !5141)
!5149 = !DILocation(line: 26, column: 16, scope: !5141)
!5150 = !DILocation(line: 26, column: 14, scope: !5141)
!5151 = !DILocation(line: 26, column: 9, scope: !5141)
!5152 = !DILocation(line: 26, column: 12, scope: !5141)
!5153 = distinct !{!5153, !5147, !5149}
!5154 = !DILocation(line: 29, column: 10, scope: !5106)
!5155 = !DILocation(line: 29, column: 3, scope: !5106)
!5156 = !DILocation(line: 30, column: 1, scope: !5106)
!5157 = distinct !DISubprogram(name: "memset", scope: !5158, file: !5158, line: 12, type: !5159, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2300, retainedNodes: !212)
!5158 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/mushfiqur/tools/klee")
!5159 = !DISubroutineType(types: !5160)
!5160 = !{!38, !38, !16, !5082}
!5161 = !DILocalVariable(name: "dst", arg: 1, scope: !5157, file: !5158, line: 12, type: !38)
!5162 = !DILocation(line: 12, column: 20, scope: !5157)
!5163 = !DILocalVariable(name: "s", arg: 2, scope: !5157, file: !5158, line: 12, type: !16)
!5164 = !DILocation(line: 12, column: 29, scope: !5157)
!5165 = !DILocalVariable(name: "count", arg: 3, scope: !5157, file: !5158, line: 12, type: !5082)
!5166 = !DILocation(line: 12, column: 39, scope: !5157)
!5167 = !DILocalVariable(name: "a", scope: !5157, file: !5158, line: 13, type: !242)
!5168 = !DILocation(line: 13, column: 9, scope: !5157)
!5169 = !DILocation(line: 13, column: 13, scope: !5157)
!5170 = !DILocation(line: 14, column: 3, scope: !5157)
!5171 = !DILocation(line: 14, column: 15, scope: !5157)
!5172 = !DILocation(line: 14, column: 18, scope: !5157)
!5173 = !DILocation(line: 15, column: 12, scope: !5157)
!5174 = !DILocation(line: 15, column: 7, scope: !5157)
!5175 = !DILocation(line: 15, column: 10, scope: !5157)
!5176 = distinct !{!5176, !5170, !5173}
!5177 = !DILocation(line: 16, column: 10, scope: !5157)
!5178 = !DILocation(line: 16, column: 3, scope: !5157)
!5179 = distinct !DISubprogram(name: "klee_div_zero_check", scope: !5180, file: !5180, line: 12, type: !5181, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2302, retainedNodes: !212)
!5180 = !DIFile(filename: "runtime/Intrinsic/klee_div_zero_check.c", directory: "/home/mushfiqur/tools/klee")
!5181 = !DISubroutineType(types: !5182)
!5182 = !{null, !1284}
!5183 = !DILocalVariable(name: "z", arg: 1, scope: !5179, file: !5180, line: 12, type: !1284)
!5184 = !DILocation(line: 12, column: 36, scope: !5179)
!5185 = !DILocation(line: 13, column: 7, scope: !5186)
!5186 = distinct !DILexicalBlock(scope: !5179, file: !5180, line: 13, column: 7)
!5187 = !DILocation(line: 13, column: 9, scope: !5186)
!5188 = !DILocation(line: 13, column: 7, scope: !5179)
!5189 = !DILocation(line: 14, column: 5, scope: !5186)
!5190 = !DILocation(line: 15, column: 1, scope: !5179)
