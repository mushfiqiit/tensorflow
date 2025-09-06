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
  call void @llvm.dbg.declare(metadata i32* %dtype, metadata !2317, metadata !DIExpression()), !dbg !2318
  %1 = bitcast i32* %dtype to i8*, !dbg !2319
  call void @klee_make_symbolic(i8* %1, i64 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0)), !dbg !2320
  %2 = load i32, i32* %dtype, align 4, !dbg !2321
  %cmp = icmp eq i32 %2, 1, !dbg !2322
  br i1 %cmp, label %lor.end, label %lor.lhs.false, !dbg !2323

lor.lhs.false:                                    ; preds = %entry
  %3 = load i32, i32* %dtype, align 4, !dbg !2324
  %cmp1 = icmp eq i32 %3, 2, !dbg !2325
  br i1 %cmp1, label %lor.end, label %lor.lhs.false2, !dbg !2326

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %4 = load i32, i32* %dtype, align 4, !dbg !2327
  %cmp3 = icmp eq i32 %4, 3, !dbg !2328
  br i1 %cmp3, label %lor.end, label %lor.lhs.false4, !dbg !2329

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %5 = load i32, i32* %dtype, align 4, !dbg !2330
  %cmp5 = icmp eq i32 %5, 4, !dbg !2331
  br i1 %cmp5, label %lor.end, label %lor.lhs.false6, !dbg !2332

lor.lhs.false6:                                   ; preds = %lor.lhs.false4
  %6 = load i32, i32* %dtype, align 4, !dbg !2333
  %cmp7 = icmp eq i32 %6, 5, !dbg !2334
  br i1 %cmp7, label %lor.end, label %lor.lhs.false8, !dbg !2335

lor.lhs.false8:                                   ; preds = %lor.lhs.false6
  %7 = load i32, i32* %dtype, align 4, !dbg !2336
  %cmp9 = icmp eq i32 %7, 6, !dbg !2337
  br i1 %cmp9, label %lor.end, label %lor.lhs.false10, !dbg !2338

lor.lhs.false10:                                  ; preds = %lor.lhs.false8
  %8 = load i32, i32* %dtype, align 4, !dbg !2339
  %cmp11 = icmp eq i32 %8, 9, !dbg !2340
  br i1 %cmp11, label %lor.end, label %lor.rhs, !dbg !2341

lor.rhs:                                          ; preds = %lor.lhs.false10
  %9 = load i32, i32* %dtype, align 4, !dbg !2342
  %cmp12 = icmp eq i32 %9, 10, !dbg !2343
  br label %lor.end, !dbg !2341

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false10, %lor.lhs.false8, %lor.lhs.false6, %lor.lhs.false4, %lor.lhs.false2, %lor.lhs.false, %entry
  %10 = phi i1 [ true, %lor.lhs.false10 ], [ true, %lor.lhs.false8 ], [ true, %lor.lhs.false6 ], [ true, %lor.lhs.false4 ], [ true, %lor.lhs.false2 ], [ true, %lor.lhs.false ], [ true, %entry ], [ %cmp12, %lor.rhs ]
  %conv = zext i1 %10 to i64, !dbg !2321
  call void @klee_assume(i64 %conv), !dbg !2344
  call void @llvm.dbg.declare(metadata i64* %len, metadata !2345, metadata !DIExpression()), !dbg !2346
  %11 = bitcast i64* %len to i8*, !dbg !2347
  call void @klee_make_symbolic(i8* %11, i64 8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)), !dbg !2348
  call void @llvm.dbg.declare(metadata i8** %base, metadata !2349, metadata !DIExpression()), !dbg !2350
  %call = call noalias i8* @malloc(i64 192) #6, !dbg !2351
  store i8* %call, i8** %base, align 8, !dbg !2350
  %12 = load i8*, i8** %base, align 8, !dbg !2352
  %cmp13 = icmp ne i8* %12, null, !dbg !2353
  %conv14 = zext i1 %cmp13 to i64, !dbg !2352
  call void @klee_assume(i64 %conv14), !dbg !2354
  call void @llvm.dbg.declare(metadata i32* %offset, metadata !2355, metadata !DIExpression()), !dbg !2356
  %13 = bitcast i32* %offset to i8*, !dbg !2357
  call void @klee_make_symbolic(i8* %13, i64 4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0)), !dbg !2358
  %14 = load i32, i32* %offset, align 4, !dbg !2359
  %cmp15 = icmp ult i32 %14, 32, !dbg !2360
  %conv16 = zext i1 %cmp15 to i64, !dbg !2359
  call void @klee_assume(i64 %conv16), !dbg !2361
  call void @llvm.dbg.declare(metadata i8** %data, metadata !2362, metadata !DIExpression()), !dbg !2363
  %15 = load i8*, i8** %base, align 8, !dbg !2364
  %16 = load i32, i32* %offset, align 4, !dbg !2365
  %idx.ext = zext i32 %16 to i64, !dbg !2366
  %add.ptr = getelementptr inbounds i8, i8* %15, i64 %idx.ext, !dbg !2366
  store i8* %add.ptr, i8** %data, align 8, !dbg !2363
  %17 = load i64, i64* %len, align 8, !dbg !2367
  %cmp17 = icmp ugt i64 %17, 0, !dbg !2369
  br i1 %cmp17, label %if.then, label %if.end, !dbg !2370

if.then:                                          ; preds = %lor.end
  call void @llvm.dbg.declare(metadata i64* %sym, metadata !2371, metadata !DIExpression()), !dbg !2373
  %18 = load i64, i64* %len, align 8, !dbg !2374
  %cmp18 = icmp ult i64 %18, 16, !dbg !2375
  br i1 %cmp18, label %cond.true, label %cond.false, !dbg !2374

cond.true:                                        ; preds = %if.then
  %19 = load i64, i64* %len, align 8, !dbg !2376
  br label %cond.end, !dbg !2374

cond.false:                                       ; preds = %if.then
  br label %cond.end, !dbg !2374

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %19, %cond.true ], [ 16, %cond.false ], !dbg !2374
  store i64 %cond, i64* %sym, align 8, !dbg !2373
  %20 = load i8*, i8** %data, align 8, !dbg !2377
  %21 = load i64, i64* %sym, align 8, !dbg !2378
  call void @klee_make_symbolic(i8* %20, i64 %21, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0)), !dbg !2379
  br label %if.end, !dbg !2380

if.end:                                           ; preds = %cond.end, %lor.end
  call void @llvm.dbg.declare(metadata %struct.TF_Tensor** %t, metadata !2381, metadata !DIExpression()), !dbg !2426
  %22 = load i32, i32* %dtype, align 4, !dbg !2427
  %arraydecay19 = getelementptr inbounds [3 x i64], [3 x i64]* %dims, i64 0, i64 0, !dbg !2428
  %23 = load i8*, i8** %data, align 8, !dbg !2429
  %24 = load i64, i64* %len, align 8, !dbg !2430
  %call20 = call %struct.TF_Tensor* @TF_NewTensor(i32 %22, i64* %arraydecay19, i32 2, i8* %23, i64 %24, void (i8*, i64, i8*)* @_ZL17dummy_deallocatorPvmS_, i8* null), !dbg !2431
  store %struct.TF_Tensor* %call20, %struct.TF_Tensor** %t, align 8, !dbg !2426
  %25 = load %struct.TF_Tensor*, %struct.TF_Tensor** %t, align 8, !dbg !2432
  %cmp21 = icmp eq %struct.TF_Tensor* %25, null, !dbg !2434
  br i1 %cmp21, label %if.then22, label %if.end29, !dbg !2435

if.then22:                                        ; preds = %if.end
  %arrayidx = getelementptr inbounds [3 x i64], [3 x i64]* %dims, i64 0, i64 0, !dbg !2436
  %26 = load i64, i64* %arrayidx, align 16, !dbg !2436
  %cmp23 = icmp eq i64 %26, 0, !dbg !2439
  br i1 %cmp23, label %if.then27, label %lor.lhs.false24, !dbg !2440

lor.lhs.false24:                                  ; preds = %if.then22
  %arrayidx25 = getelementptr inbounds [3 x i64], [3 x i64]* %dims, i64 0, i64 1, !dbg !2441
  %27 = load i64, i64* %arrayidx25, align 8, !dbg !2441
  %cmp26 = icmp eq i64 %27, 0, !dbg !2442
  br i1 %cmp26, label %if.then27, label %if.else, !dbg !2443

if.then27:                                        ; preds = %lor.lhs.false24, %if.then22
  br label %if.end28, !dbg !2444

if.else:                                          ; preds = %lor.lhs.false24
  br label %if.end28

if.end28:                                         ; preds = %if.else, %if.then27
  store i32 0, i32* %retval, align 4, !dbg !2446
  br label %return, !dbg !2446

if.end29:                                         ; preds = %if.end
  %28 = load %struct.TF_Tensor*, %struct.TF_Tensor** %t, align 8, !dbg !2447
  call void @TF_DeleteTensor(%struct.TF_Tensor* %28), !dbg !2448
  %29 = load i8*, i8** %base, align 8, !dbg !2449
  call void @free(i8* %29) #6, !dbg !2450
  store i32 0, i32* %retval, align 4, !dbg !2451
  br label %return, !dbg !2451

return:                                           ; preds = %if.end29, %if.end28
  %30 = load i32, i32* %retval, align 4, !dbg !2452
  ret i32 %30, !dbg !2452
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local void @klee_make_symbolic(i8*, i64, i8*) #2

declare dso_local void @klee_assume(i64) #2

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_ZL17dummy_deallocatorPvmS_(i8* %data, i64 %len, i8* %arg) #4 !dbg !2453 {
entry:
  %data.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %arg.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !2456, metadata !DIExpression()), !dbg !2457
  store i64 %len, i64* %len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !2458, metadata !DIExpression()), !dbg !2459
  store i8* %arg, i8** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %arg.addr, metadata !2460, metadata !DIExpression()), !dbg !2461
  ret void, !dbg !2462
}

; Function Attrs: nounwind
declare dso_local void @free(i8*) #3

; Function Attrs: noinline optnone uwtable
define dso_local i8* @_ZN10tensorflow15allocate_tensorEPKcmPNS_9AllocatorE(i8* %operation, i64 %len, %"class.tensorflow::AbstractTensorInterface"* %allocator) #5 !dbg !2463 {
entry:
  %operation.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %allocator.addr = alloca %"class.tensorflow::AbstractTensorInterface"*, align 8
  %data = alloca i8*, align 8
  store i8* %operation, i8** %operation.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %operation.addr, metadata !2466, metadata !DIExpression()), !dbg !2467
  store i64 %len, i64* %len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !2468, metadata !DIExpression()), !dbg !2469
  store %"class.tensorflow::AbstractTensorInterface"* %allocator, %"class.tensorflow::AbstractTensorInterface"** %allocator.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::AbstractTensorInterface"** %allocator.addr, metadata !2470, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.declare(metadata i8** %data, metadata !2472, metadata !DIExpression()), !dbg !2473
  %0 = load %"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"** %allocator.addr, align 8, !dbg !2474
  %1 = load i64, i64* %len.addr, align 8, !dbg !2475
  %2 = bitcast %"class.tensorflow::AbstractTensorInterface"* %0 to i8* (%"class.tensorflow::AbstractTensorInterface"*, i64, i64)***, !dbg !2476
  %vtable = load i8* (%"class.tensorflow::AbstractTensorInterface"*, i64, i64)**, i8* (%"class.tensorflow::AbstractTensorInterface"*, i64, i64)*** %2, align 8, !dbg !2476
  %vfn = getelementptr inbounds i8* (%"class.tensorflow::AbstractTensorInterface"*, i64, i64)*, i8* (%"class.tensorflow::AbstractTensorInterface"*, i64, i64)** %vtable, i64 3, !dbg !2476
  %3 = load i8* (%"class.tensorflow::AbstractTensorInterface"*, i64, i64)*, i8* (%"class.tensorflow::AbstractTensorInterface"*, i64, i64)** %vfn, align 8, !dbg !2476
  %call = call i8* %3(%"class.tensorflow::AbstractTensorInterface"* %0, i64 64, i64 %1), !dbg !2476
  store i8* %call, i8** %data, align 8, !dbg !2473
  %4 = load i8*, i8** %data, align 8, !dbg !2477
  ret i8* %4, !dbg !2478
}

; Function Attrs: noinline optnone uwtable
define dso_local i8* @_ZN10tensorflow15allocate_tensorEPKcm(i8* %operation, i64 %len) #5 !dbg !2479 {
entry:
  %operation.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  store i8* %operation, i8** %operation.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %operation.addr, metadata !2482, metadata !DIExpression()), !dbg !2483
  store i64 %len, i64* %len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !2484, metadata !DIExpression()), !dbg !2485
  %0 = load i8*, i8** %operation.addr, align 8, !dbg !2486
  %1 = load i64, i64* %len.addr, align 8, !dbg !2487
  %call = call %"class.tensorflow::AbstractTensorInterface"* @_ZN10tensorflow13cpu_allocatorEv(), !dbg !2488
  %call1 = call i8* @_ZN10tensorflow15allocate_tensorEPKcmPNS_9AllocatorE(i8* %0, i64 %1, %"class.tensorflow::AbstractTensorInterface"* %call), !dbg !2489
  ret i8* %call1, !dbg !2490
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %"class.tensorflow::AbstractTensorInterface"* @_ZN10tensorflow13cpu_allocatorEv() #5 comdat personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !2 {
entry:
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  %0 = load i8, i8* bitcast (i64* @_ZGVZN10tensorflow13cpu_allocatorEvE4inst to i8*), align 8, !dbg !2491
  %guard.uninitialized = icmp eq i8 %0, 0, !dbg !2491
  br i1 %guard.uninitialized, label %init.check, label %init.end, !dbg !2491, !prof !2492

init.check:                                       ; preds = %entry
  %1 = call i32 @__cxa_guard_acquire(i64* @_ZGVZN10tensorflow13cpu_allocatorEvE4inst) #6, !dbg !2491
  %tobool = icmp ne i32 %1, 0, !dbg !2491
  br i1 %tobool, label %init, label %init.end, !dbg !2491

init:                                             ; preds = %init.check
  %call = invoke noalias nonnull i8* @_Znwm(i64 8) #16
          to label %invoke.cont unwind label %lpad, !dbg !2493, !heapallocsite !2183

invoke.cont:                                      ; preds = %init
  %2 = bitcast i8* %call to %"class.tensorflow::StubCPUAllocator"*, !dbg !2493
  %3 = bitcast %"class.tensorflow::StubCPUAllocator"* %2 to i8*, !dbg !2494
  %4 = call i8* @memset(i8* %3, i32 0, i64 8), !dbg !2494
  call void @_ZN10tensorflow16StubCPUAllocatorC2Ev(%"class.tensorflow::StubCPUAllocator"* %2) #6, !dbg !2494
  store %"class.tensorflow::StubCPUAllocator"* %2, %"class.tensorflow::StubCPUAllocator"** @_ZZN10tensorflow13cpu_allocatorEvE4inst, align 8, !dbg !2491
  call void @__cxa_guard_release(i64* @_ZGVZN10tensorflow13cpu_allocatorEvE4inst) #6, !dbg !2491
  br label %init.end, !dbg !2491

init.end:                                         ; preds = %invoke.cont, %init.check, %entry
  %5 = load %"class.tensorflow::StubCPUAllocator"*, %"class.tensorflow::StubCPUAllocator"** @_ZZN10tensorflow13cpu_allocatorEvE4inst, align 8, !dbg !2495
  %6 = bitcast %"class.tensorflow::StubCPUAllocator"* %5 to %"class.tensorflow::AbstractTensorInterface"*, !dbg !2495
  ret %"class.tensorflow::AbstractTensorInterface"* %6, !dbg !2496

lpad:                                             ; preds = %init
  %7 = landingpad { i8*, i32 }
          cleanup, !dbg !2497
  %8 = extractvalue { i8*, i32 } %7, 0, !dbg !2497
  store i8* %8, i8** %exn.slot, align 8, !dbg !2497
  %9 = extractvalue { i8*, i32 } %7, 1, !dbg !2497
  store i32 %9, i32* %ehselector.slot, align 4, !dbg !2497
  call void @__cxa_guard_abort(i64* @_ZGVZN10tensorflow13cpu_allocatorEvE4inst) #6, !dbg !2491
  br label %eh.resume, !dbg !2491

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8, !dbg !2491
  %sel = load i32, i32* %ehselector.slot, align 4, !dbg !2491
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0, !dbg !2491
  %lpad.val1 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1, !dbg !2491
  resume { i8*, i32 } %lpad.val1, !dbg !2491
}

declare dso_local i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare dso_local i32 @__cxa_guard_acquire(i64*) #6

; Function Attrs: nobuiltin allocsize(0)
declare dso_local nonnull i8* @_Znwm(i64) #7

; Function Attrs: argmemonly nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow16StubCPUAllocatorC2Ev(%"class.tensorflow::StubCPUAllocator"* %this) unnamed_addr #4 comdat align 2 !dbg !2498 {
entry:
  %this.addr = alloca %"class.tensorflow::StubCPUAllocator"*, align 8
  store %"class.tensorflow::StubCPUAllocator"* %this, %"class.tensorflow::StubCPUAllocator"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::StubCPUAllocator"** %this.addr, metadata !2500, metadata !DIExpression()), !dbg !2501
  %this1 = load %"class.tensorflow::StubCPUAllocator"*, %"class.tensorflow::StubCPUAllocator"** %this.addr, align 8
  %0 = bitcast %"class.tensorflow::StubCPUAllocator"* %this1 to %"class.tensorflow::AbstractTensorInterface"*, !dbg !2502
  call void @_ZN10tensorflow9AllocatorC2Ev(%"class.tensorflow::AbstractTensorInterface"* %0) #6, !dbg !2502
  %1 = bitcast %"class.tensorflow::StubCPUAllocator"* %this1 to i32 (...)***, !dbg !2502
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [19 x i8*] }, { [19 x i8*] }* @_ZTVN10tensorflow16StubCPUAllocatorE, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %1, align 8, !dbg !2502
  ret void, !dbg !2502
}

; Function Attrs: nounwind
declare dso_local void @__cxa_guard_release(i64*) #6

; Function Attrs: nounwind
declare dso_local void @__cxa_guard_abort(i64*) #6

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow9AllocatorC2Ev(%"class.tensorflow::AbstractTensorInterface"* %this) unnamed_addr #4 comdat align 2 !dbg !2503 {
entry:
  %this.addr = alloca %"class.tensorflow::AbstractTensorInterface"*, align 8
  store %"class.tensorflow::AbstractTensorInterface"* %this, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::AbstractTensorInterface"** %this.addr, metadata !2505, metadata !DIExpression()), !dbg !2506
  %this1 = load %"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  %0 = bitcast %"class.tensorflow::AbstractTensorInterface"* %this1 to i32 (...)***, !dbg !2507
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [19 x i8*] }, { [19 x i8*] }* @_ZTVN10tensorflow9AllocatorE, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %0, align 8, !dbg !2507
  ret void, !dbg !2507
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow16StubCPUAllocatorD2Ev(%"class.tensorflow::StubCPUAllocator"* %this) unnamed_addr #4 comdat align 2 !dbg !2508 {
entry:
  %this.addr = alloca %"class.tensorflow::StubCPUAllocator"*, align 8
  store %"class.tensorflow::StubCPUAllocator"* %this, %"class.tensorflow::StubCPUAllocator"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::StubCPUAllocator"** %this.addr, metadata !2509, metadata !DIExpression()), !dbg !2510
  %this1 = load %"class.tensorflow::StubCPUAllocator"*, %"class.tensorflow::StubCPUAllocator"** %this.addr, align 8
  %0 = bitcast %"class.tensorflow::StubCPUAllocator"* %this1 to %"class.tensorflow::AbstractTensorInterface"*, !dbg !2511
  call void @_ZN10tensorflow9AllocatorD2Ev(%"class.tensorflow::AbstractTensorInterface"* %0) #6, !dbg !2511
  ret void, !dbg !2513
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow16StubCPUAllocatorD0Ev(%"class.tensorflow::StubCPUAllocator"* %this) unnamed_addr #4 comdat align 2 !dbg !2514 {
entry:
  %this.addr = alloca %"class.tensorflow::StubCPUAllocator"*, align 8
  store %"class.tensorflow::StubCPUAllocator"* %this, %"class.tensorflow::StubCPUAllocator"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::StubCPUAllocator"** %this.addr, metadata !2515, metadata !DIExpression()), !dbg !2516
  %this1 = load %"class.tensorflow::StubCPUAllocator"*, %"class.tensorflow::StubCPUAllocator"** %this.addr, align 8
  call void @_ZN10tensorflow16StubCPUAllocatorD2Ev(%"class.tensorflow::StubCPUAllocator"* %this1) #6, !dbg !2517
  %0 = bitcast %"class.tensorflow::StubCPUAllocator"* %this1 to i8*, !dbg !2517
  call void @_ZdlPv(i8* %0) #17, !dbg !2517
  ret void, !dbg !2517
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow16StubCPUAllocator4NameB5cxx11Ev(%"class.std::__cxx11::basic_string"* noalias sret align 8 %agg.result, %"class.tensorflow::StubCPUAllocator"* %this) unnamed_addr #5 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !2518 {
entry:
  %result.ptr = alloca i8*, align 8
  %this.addr = alloca %"class.tensorflow::StubCPUAllocator"*, align 8
  %ref.tmp = alloca %"class.std::allocator.0", align 1
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  %0 = bitcast %"class.std::__cxx11::basic_string"* %agg.result to i8*
  store i8* %0, i8** %result.ptr, align 8
  store %"class.tensorflow::StubCPUAllocator"* %this, %"class.tensorflow::StubCPUAllocator"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::StubCPUAllocator"** %this.addr, metadata !2519, metadata !DIExpression()), !dbg !2520
  %this1 = load %"class.tensorflow::StubCPUAllocator"*, %"class.tensorflow::StubCPUAllocator"** %this.addr, align 8
  call void @_ZNSaIcEC1Ev(%"class.std::allocator.0"* %ref.tmp) #6, !dbg !2521
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(%"class.std::__cxx11::basic_string"* %agg.result, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4.1, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %ref.tmp)
          to label %invoke.cont unwind label %lpad, !dbg !2521

invoke.cont:                                      ; preds = %entry
  call void @_ZNSaIcED1Ev(%"class.std::allocator.0"* %ref.tmp) #6, !dbg !2522
  ret void, !dbg !2522

lpad:                                             ; preds = %entry
  %1 = landingpad { i8*, i32 }
          cleanup, !dbg !2523
  %2 = extractvalue { i8*, i32 } %1, 0, !dbg !2523
  store i8* %2, i8** %exn.slot, align 8, !dbg !2523
  %3 = extractvalue { i8*, i32 } %1, 1, !dbg !2523
  store i32 %3, i32* %ehselector.slot, align 4, !dbg !2523
  call void @_ZNSaIcED1Ev(%"class.std::allocator.0"* %ref.tmp) #6, !dbg !2522
  br label %eh.resume, !dbg !2522

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8, !dbg !2522
  %sel = load i32, i32* %ehselector.slot, align 4, !dbg !2522
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0, !dbg !2522
  %lpad.val2 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1, !dbg !2522
  resume { i8*, i32 } %lpad.val2, !dbg !2522
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i8* @_ZN10tensorflow9Allocator11AllocateRawEmm(%"class.tensorflow::AbstractTensorInterface"* %this, i64 %alignment, i64 %num_bytes) unnamed_addr #5 comdat align 2 !dbg !2524 {
entry:
  %this.addr = alloca %"class.tensorflow::AbstractTensorInterface"*, align 8
  %alignment.addr = alloca i64, align 8
  %num_bytes.addr = alloca i64, align 8
  store %"class.tensorflow::AbstractTensorInterface"* %this, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::AbstractTensorInterface"** %this.addr, metadata !2525, metadata !DIExpression()), !dbg !2526
  store i64 %alignment, i64* %alignment.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %alignment.addr, metadata !2527, metadata !DIExpression()), !dbg !2528
  store i64 %num_bytes, i64* %num_bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %num_bytes.addr, metadata !2529, metadata !DIExpression()), !dbg !2530
  %this1 = load %"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  %0 = load i64, i64* %num_bytes.addr, align 8, !dbg !2531
  %1 = load i64, i64* %alignment.addr, align 8, !dbg !2532
  %call = call noalias nonnull i8* @_ZnwmSt11align_val_t(i64 %0, i64 %1) #18, !dbg !2533
  %mask = sub i64 %1, 1, !dbg !2533
  %ptrint = ptrtoint i8* %call to i64, !dbg !2533
  %maskedptr = and i64 %ptrint, %mask, !dbg !2533
  %maskcond = icmp eq i64 %maskedptr, 0, !dbg !2533
  ret i8* %call, !dbg !2534
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow9Allocator13DeallocateRawEPv(%"class.tensorflow::AbstractTensorInterface"* %this, i8* %ptr) unnamed_addr #4 comdat align 2 !dbg !2535 {
entry:
  %this.addr = alloca %"class.tensorflow::AbstractTensorInterface"*, align 8
  %ptr.addr = alloca i8*, align 8
  store %"class.tensorflow::AbstractTensorInterface"* %this, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::AbstractTensorInterface"** %this.addr, metadata !2536, metadata !DIExpression()), !dbg !2537
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !2538, metadata !DIExpression()), !dbg !2539
  %this1 = load %"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !2540
  call void @_ZdlPv(i8* %0) #6, !dbg !2541
  ret void, !dbg !2542
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i8* @_ZN10tensorflow9Allocator11AllocateRawEmmPKv(%"class.tensorflow::AbstractTensorInterface"* %this, i64 %alignment, i64 %num_bytes, i8* %0) unnamed_addr #5 comdat align 2 !dbg !2543 {
entry:
  %this.addr = alloca %"class.tensorflow::AbstractTensorInterface"*, align 8
  %alignment.addr = alloca i64, align 8
  %num_bytes.addr = alloca i64, align 8
  %.addr = alloca i8*, align 8
  store %"class.tensorflow::AbstractTensorInterface"* %this, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::AbstractTensorInterface"** %this.addr, metadata !2544, metadata !DIExpression()), !dbg !2545
  store i64 %alignment, i64* %alignment.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %alignment.addr, metadata !2546, metadata !DIExpression()), !dbg !2547
  store i64 %num_bytes, i64* %num_bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %num_bytes.addr, metadata !2548, metadata !DIExpression()), !dbg !2549
  store i8* %0, i8** %.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %.addr, metadata !2550, metadata !DIExpression()), !dbg !2551
  %this1 = load %"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  %1 = load i64, i64* %alignment.addr, align 8, !dbg !2552
  %2 = load i64, i64* %num_bytes.addr, align 8, !dbg !2553
  %3 = bitcast %"class.tensorflow::AbstractTensorInterface"* %this1 to i8* (%"class.tensorflow::AbstractTensorInterface"*, i64, i64)***, !dbg !2554
  %vtable = load i8* (%"class.tensorflow::AbstractTensorInterface"*, i64, i64)**, i8* (%"class.tensorflow::AbstractTensorInterface"*, i64, i64)*** %3, align 8, !dbg !2554
  %vfn = getelementptr inbounds i8* (%"class.tensorflow::AbstractTensorInterface"*, i64, i64)*, i8* (%"class.tensorflow::AbstractTensorInterface"*, i64, i64)** %vtable, i64 3, !dbg !2554
  %4 = load i8* (%"class.tensorflow::AbstractTensorInterface"*, i64, i64)*, i8* (%"class.tensorflow::AbstractTensorInterface"*, i64, i64)** %vfn, align 8, !dbg !2554
  %call = call i8* %4(%"class.tensorflow::AbstractTensorInterface"* %this1, i64 %1, i64 %2), !dbg !2554
  ret i8* %call, !dbg !2555
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow9Allocator13DeallocateRawEPvmm(%"class.tensorflow::AbstractTensorInterface"* %this, i8* %ptr, i64 %0, i64 %1) unnamed_addr #5 comdat align 2 !dbg !2556 {
entry:
  %this.addr = alloca %"class.tensorflow::AbstractTensorInterface"*, align 8
  %ptr.addr = alloca i8*, align 8
  %.addr = alloca i64, align 8
  %.addr1 = alloca i64, align 8
  store %"class.tensorflow::AbstractTensorInterface"* %this, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::AbstractTensorInterface"** %this.addr, metadata !2557, metadata !DIExpression()), !dbg !2558
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !2559, metadata !DIExpression()), !dbg !2560
  store i64 %0, i64* %.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %.addr, metadata !2561, metadata !DIExpression()), !dbg !2562
  store i64 %1, i64* %.addr1, align 8
  call void @llvm.dbg.declare(metadata i64* %.addr1, metadata !2563, metadata !DIExpression()), !dbg !2564
  %this2 = load %"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  %2 = load i8*, i8** %ptr.addr, align 8, !dbg !2565
  %3 = bitcast %"class.tensorflow::AbstractTensorInterface"* %this2 to void (%"class.tensorflow::AbstractTensorInterface"*, i8*)***, !dbg !2566
  %vtable = load void (%"class.tensorflow::AbstractTensorInterface"*, i8*)**, void (%"class.tensorflow::AbstractTensorInterface"*, i8*)*** %3, align 8, !dbg !2566
  %vfn = getelementptr inbounds void (%"class.tensorflow::AbstractTensorInterface"*, i8*)*, void (%"class.tensorflow::AbstractTensorInterface"*, i8*)** %vtable, i64 4, !dbg !2566
  %4 = load void (%"class.tensorflow::AbstractTensorInterface"*, i8*)*, void (%"class.tensorflow::AbstractTensorInterface"*, i8*)** %vfn, align 8, !dbg !2566
  call void %4(%"class.tensorflow::AbstractTensorInterface"* %this2, i8* %2), !dbg !2566
  ret void, !dbg !2567
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local zeroext i1 @_ZNK10tensorflow9Allocator21TracksAllocationSizesEv(%"class.tensorflow::AbstractTensorInterface"* %this) unnamed_addr #4 comdat align 2 !dbg !2568 {
entry:
  %this.addr = alloca %"class.tensorflow::AbstractTensorInterface"*, align 8
  store %"class.tensorflow::AbstractTensorInterface"* %this, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::AbstractTensorInterface"** %this.addr, metadata !2569, metadata !DIExpression()), !dbg !2571
  %this1 = load %"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  ret i1 false, !dbg !2572
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local zeroext i1 @_ZNK10tensorflow9Allocator21AllocatesOpaqueHandleEv(%"class.tensorflow::AbstractTensorInterface"* %this) unnamed_addr #4 comdat align 2 !dbg !2573 {
entry:
  %this.addr = alloca %"class.tensorflow::AbstractTensorInterface"*, align 8
  store %"class.tensorflow::AbstractTensorInterface"* %this, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::AbstractTensorInterface"** %this.addr, metadata !2574, metadata !DIExpression()), !dbg !2575
  %this1 = load %"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  ret i1 false, !dbg !2576
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @_ZNK10tensorflow9Allocator13RequestedSizeEPKv(%"class.tensorflow::AbstractTensorInterface"* %this, i8* %0) unnamed_addr #4 comdat align 2 !dbg !2577 {
entry:
  %this.addr = alloca %"class.tensorflow::AbstractTensorInterface"*, align 8
  %.addr = alloca i8*, align 8
  store %"class.tensorflow::AbstractTensorInterface"* %this, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::AbstractTensorInterface"** %this.addr, metadata !2578, metadata !DIExpression()), !dbg !2579
  store i8* %0, i8** %.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %.addr, metadata !2580, metadata !DIExpression()), !dbg !2581
  %this1 = load %"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  ret i64 0, !dbg !2582
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @_ZNK10tensorflow9Allocator13AllocatedSizeEPKv(%"class.tensorflow::AbstractTensorInterface"* %this, i8* %0) unnamed_addr #4 comdat align 2 !dbg !2583 {
entry:
  %this.addr = alloca %"class.tensorflow::AbstractTensorInterface"*, align 8
  %.addr = alloca i8*, align 8
  store %"class.tensorflow::AbstractTensorInterface"* %this, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::AbstractTensorInterface"** %this.addr, metadata !2584, metadata !DIExpression()), !dbg !2585
  store i8* %0, i8** %.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %.addr, metadata !2586, metadata !DIExpression()), !dbg !2587
  %this1 = load %"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  ret i64 0, !dbg !2588
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @_ZNK10tensorflow9Allocator12AllocationIdEPKv(%"class.tensorflow::AbstractTensorInterface"* %this, i8* %0) unnamed_addr #4 comdat align 2 !dbg !2589 {
entry:
  %this.addr = alloca %"class.tensorflow::AbstractTensorInterface"*, align 8
  %.addr = alloca i8*, align 8
  store %"class.tensorflow::AbstractTensorInterface"* %this, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::AbstractTensorInterface"** %this.addr, metadata !2590, metadata !DIExpression()), !dbg !2591
  store i8* %0, i8** %.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %.addr, metadata !2592, metadata !DIExpression()), !dbg !2593
  %this1 = load %"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  ret i64 0, !dbg !2594
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @_ZNK10tensorflow9Allocator17AllocatedSizeSlowEPKv(%"class.tensorflow::AbstractTensorInterface"* %this, i8* %0) unnamed_addr #4 comdat align 2 !dbg !2595 {
entry:
  %this.addr = alloca %"class.tensorflow::AbstractTensorInterface"*, align 8
  %.addr = alloca i8*, align 8
  store %"class.tensorflow::AbstractTensorInterface"* %this, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::AbstractTensorInterface"** %this.addr, metadata !2596, metadata !DIExpression()), !dbg !2597
  store i8* %0, i8** %.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %.addr, metadata !2598, metadata !DIExpression()), !dbg !2599
  %this1 = load %"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  ret i64 0, !dbg !2600
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local zeroext i1 @_ZN10tensorflow9Allocator10ClearStatsEv(%"class.tensorflow::AbstractTensorInterface"* %this) unnamed_addr #4 comdat align 2 !dbg !2601 {
entry:
  %this.addr = alloca %"class.tensorflow::AbstractTensorInterface"*, align 8
  store %"class.tensorflow::AbstractTensorInterface"* %this, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::AbstractTensorInterface"** %this.addr, metadata !2602, metadata !DIExpression()), !dbg !2603
  %this1 = load %"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  ret i1 false, !dbg !2604
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow9Allocator15SetSafeFrontierEm(%"class.tensorflow::AbstractTensorInterface"* %this, i64 %0) unnamed_addr #4 comdat align 2 !dbg !2605 {
entry:
  %this.addr = alloca %"class.tensorflow::AbstractTensorInterface"*, align 8
  %.addr = alloca i64, align 8
  store %"class.tensorflow::AbstractTensorInterface"* %this, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::AbstractTensorInterface"** %this.addr, metadata !2606, metadata !DIExpression()), !dbg !2607
  store i64 %0, i64* %.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %.addr, metadata !2608, metadata !DIExpression()), !dbg !2609
  %this1 = load %"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  ret void, !dbg !2610
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow9Allocator29SetStreamAndPreallocateMemoryEPv(%"class.tensorflow::AbstractTensorInterface"* %this, i8* %0) unnamed_addr #4 comdat align 2 !dbg !2611 {
entry:
  %this.addr = alloca %"class.tensorflow::AbstractTensorInterface"*, align 8
  %.addr = alloca i8*, align 8
  store %"class.tensorflow::AbstractTensorInterface"* %this, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::AbstractTensorInterface"** %this.addr, metadata !2612, metadata !DIExpression()), !dbg !2613
  store i8* %0, i8** %.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %.addr, metadata !2614, metadata !DIExpression()), !dbg !2615
  %this1 = load %"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  ret void, !dbg !2616
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i32 @_ZNK10tensorflow9Allocator13GetMemoryTypeEv(%"class.tensorflow::AbstractTensorInterface"* %this) unnamed_addr #4 comdat align 2 !dbg !2617 {
entry:
  %this.addr = alloca %"class.tensorflow::AbstractTensorInterface"*, align 8
  store %"class.tensorflow::AbstractTensorInterface"* %this, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::AbstractTensorInterface"** %this.addr, metadata !2618, metadata !DIExpression()), !dbg !2619
  %this1 = load %"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  ret i32 0, !dbg !2620
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
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(%"class.std::__cxx11::basic_string"* %this, i8* %__s, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %__a) unnamed_addr #5 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !2621 {
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
  call void @llvm.dbg.declare(metadata %"class.std::__cxx11::basic_string"** %this.addr, metadata !2628, metadata !DIExpression()), !dbg !2630
  store i8* %__s, i8** %__s.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %__s.addr, metadata !2631, metadata !DIExpression()), !dbg !2632
  store %"class.std::allocator.0"* %__a, %"class.std::allocator.0"** %__a.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::allocator.0"** %__a.addr, metadata !2633, metadata !DIExpression()), !dbg !2634
  %this1 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %this.addr, align 8
  %_M_dataplus = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %this1, i32 0, i32 0, !dbg !2635
  %call = call i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv(%"class.std::__cxx11::basic_string"* %this1), !dbg !2636
  %0 = load %"class.std::allocator.0"*, %"class.std::allocator.0"** %__a.addr, align 8, !dbg !2637
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC1EPcRKS3_(%"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char>>::_Alloc_hider"* %_M_dataplus, i8* %call, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %0), !dbg !2635
  call void @llvm.dbg.declare(metadata i8** %__end, metadata !2638, metadata !DIExpression()), !dbg !2640
  %1 = load i8*, i8** %__s.addr, align 8, !dbg !2641
  %tobool = icmp ne i8* %1, null, !dbg !2641
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !2641

cond.true:                                        ; preds = %entry
  %2 = load i8*, i8** %__s.addr, align 8, !dbg !2642
  %3 = load i8*, i8** %__s.addr, align 8, !dbg !2643
  %call2 = invoke i64 @_ZNSt11char_traitsIcE6lengthEPKc(i8* %3)
          to label %invoke.cont unwind label %lpad, !dbg !2644

invoke.cont:                                      ; preds = %cond.true
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 %call2, !dbg !2645
  br label %cond.end, !dbg !2641

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !2641

cond.end:                                         ; preds = %cond.false, %invoke.cont
  %cond = phi i8* [ %add.ptr, %invoke.cont ], [ inttoptr (i64 1 to i8*), %cond.false ], !dbg !2641
  store i8* %cond, i8** %__end, align 8, !dbg !2640
  %4 = load i8*, i8** %__s.addr, align 8, !dbg !2646
  %5 = load i8*, i8** %__end, align 8, !dbg !2647
  %6 = bitcast %"class.std::allocator.0"* %ref.tmp to %"class.std::allocator.0"*, !dbg !2648
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag(%"class.std::__cxx11::basic_string"* %this1, i8* %4, i8* %5)
          to label %invoke.cont3 unwind label %lpad, !dbg !2649

invoke.cont3:                                     ; preds = %cond.end
  ret void, !dbg !2650

lpad:                                             ; preds = %cond.end, %cond.true
  %7 = landingpad { i8*, i32 }
          cleanup, !dbg !2651
  %8 = extractvalue { i8*, i32 } %7, 0, !dbg !2651
  store i8* %8, i8** %exn.slot, align 8, !dbg !2651
  %9 = extractvalue { i8*, i32 } %7, 1, !dbg !2651
  store i32 %9, i32* %ehselector.slot, align 4, !dbg !2651
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev(%"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char>>::_Alloc_hider"* %_M_dataplus) #6, !dbg !2651
  br label %eh.resume, !dbg !2651

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8, !dbg !2651
  %sel = load i32, i32* %ehselector.slot, align 4, !dbg !2651
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0, !dbg !2651
  %lpad.val4 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1, !dbg !2651
  resume { i8*, i32 } %lpad.val4, !dbg !2651
}

; Function Attrs: nounwind
declare dso_local void @_ZNSaIcED1Ev(%"class.std::allocator.0"*) unnamed_addr #3

declare dso_local i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv(%"class.std::__cxx11::basic_string"*) #2

declare dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC1EPcRKS3_(%"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char>>::_Alloc_hider"*, i8*, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1)) unnamed_addr #2

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i64 @_ZNSt11char_traitsIcE6lengthEPKc(i8* %__s) #5 comdat align 2 !dbg !2652 {
entry:
  %__s.addr.i = alloca i8*, align 8
  %retval = alloca i64, align 8
  %__s.addr = alloca i8*, align 8
  store i8* %__s, i8** %__s.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %__s.addr, metadata !2705, metadata !DIExpression()), !dbg !2706
  %0 = load i8*, i8** %__s.addr, align 8, !dbg !2707
  store i8* %0, i8** %__s.addr.i, align 8
  call void @llvm.dbg.declare(metadata i8** %__s.addr.i, metadata !2709, metadata !DIExpression()), !dbg !2713
  br i1 false, label %if.then, label %if.end, !dbg !2715

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %__s.addr, align 8, !dbg !2716
  %call1 = call i64 @_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc(i8* %1), !dbg !2717
  store i64 %call1, i64* %retval, align 8, !dbg !2718
  br label %return, !dbg !2718

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %__s.addr, align 8, !dbg !2719
  %call2 = call i64 @strlen(i8* %2) #6, !dbg !2720
  store i64 %call2, i64* %retval, align 8, !dbg !2721
  br label %return, !dbg !2721

return:                                           ; preds = %if.end, %if.then
  %3 = load i64, i64* %retval, align 8, !dbg !2722
  ret i64 %3, !dbg !2722
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag(%"class.std::__cxx11::basic_string"* %this, i8* %__beg, i8* %__end) #5 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !2723 {
entry:
  %0 = alloca %"class.std::allocator.0", align 1
  %this.addr = alloca %"class.std::__cxx11::basic_string"*, align 8
  %__beg.addr = alloca i8*, align 8
  %__end.addr = alloca i8*, align 8
  %__dnew = alloca i64, align 8
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  store %"class.std::__cxx11::basic_string"* %this, %"class.std::__cxx11::basic_string"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__cxx11::basic_string"** %this.addr, metadata !2733, metadata !DIExpression()), !dbg !2734
  store i8* %__beg, i8** %__beg.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %__beg.addr, metadata !2735, metadata !DIExpression()), !dbg !2736
  store i8* %__end, i8** %__end.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %__end.addr, metadata !2737, metadata !DIExpression()), !dbg !2738
  call void @llvm.dbg.declare(metadata %"class.std::allocator.0"* %0, metadata !2739, metadata !DIExpression()), !dbg !2740
  %this1 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %this.addr, align 8
  %1 = load i8*, i8** %__beg.addr, align 8, !dbg !2741
  %call = call zeroext i1 @_ZN9__gnu_cxx17__is_null_pointerIKcEEbPT_(i8* %1), !dbg !2743
  br i1 %call, label %land.lhs.true, label %if.end, !dbg !2744

land.lhs.true:                                    ; preds = %entry
  %2 = load i8*, i8** %__beg.addr, align 8, !dbg !2745
  %3 = load i8*, i8** %__end.addr, align 8, !dbg !2746
  %cmp = icmp ne i8* %2, %3, !dbg !2747
  br i1 %cmp, label %if.then, label %if.end, !dbg !2748

if.then:                                          ; preds = %land.lhs.true
  call void @_ZSt19__throw_logic_errorPKc(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3.2, i64 0, i64 0)) #19, !dbg !2749
  unreachable, !dbg !2749

if.end:                                           ; preds = %land.lhs.true, %entry
  call void @llvm.dbg.declare(metadata i64* %__dnew, metadata !2750, metadata !DIExpression()), !dbg !2751
  %4 = load i8*, i8** %__beg.addr, align 8, !dbg !2752
  %5 = load i8*, i8** %__end.addr, align 8, !dbg !2753
  %call2 = call i64 @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_(i8* %4, i8* %5), !dbg !2754
  store i64 %call2, i64* %__dnew, align 8, !dbg !2751
  %6 = load i64, i64* %__dnew, align 8, !dbg !2755
  %cmp3 = icmp ugt i64 %6, 15, !dbg !2757
  br i1 %cmp3, label %if.then4, label %if.end6, !dbg !2758

if.then4:                                         ; preds = %if.end
  %call5 = call i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* %this1, i64* nonnull align 8 dereferenceable(8) %__dnew, i64 0), !dbg !2759
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc(%"class.std::__cxx11::basic_string"* %this1, i8* %call5), !dbg !2761
  %7 = load i64, i64* %__dnew, align 8, !dbg !2762
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm(%"class.std::__cxx11::basic_string"* %this1, i64 %7), !dbg !2763
  br label %if.end6, !dbg !2764

if.end6:                                          ; preds = %if.then4, %if.end
  %call7 = invoke i8* @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv(%"class.std::__cxx11::basic_string"* %this1)
          to label %invoke.cont unwind label %lpad, !dbg !2765

invoke.cont:                                      ; preds = %if.end6
  %8 = load i8*, i8** %__beg.addr, align 8, !dbg !2767
  %9 = load i8*, i8** %__end.addr, align 8, !dbg !2768
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_(i8* %call7, i8* %8, i8* %9) #6, !dbg !2769
  br label %try.cont, !dbg !2770

lpad:                                             ; preds = %if.end6
  %10 = landingpad { i8*, i32 }
          catch i8* null, !dbg !2771
  %11 = extractvalue { i8*, i32 } %10, 0, !dbg !2771
  store i8* %11, i8** %exn.slot, align 8, !dbg !2771
  %12 = extractvalue { i8*, i32 } %10, 1, !dbg !2771
  store i32 %12, i32* %ehselector.slot, align 4, !dbg !2771
  br label %catch, !dbg !2771

catch:                                            ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8, !dbg !2770
  %13 = call i8* @__cxa_begin_catch(i8* %exn) #6, !dbg !2770
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv(%"class.std::__cxx11::basic_string"* %this1)
          to label %invoke.cont9 unwind label %lpad8, !dbg !2772

invoke.cont9:                                     ; preds = %catch
  invoke void @__cxa_rethrow() #19
          to label %unreachable unwind label %lpad8, !dbg !2774

lpad8:                                            ; preds = %invoke.cont9, %catch
  %14 = landingpad { i8*, i32 }
          cleanup, !dbg !2775
  %15 = extractvalue { i8*, i32 } %14, 0, !dbg !2775
  store i8* %15, i8** %exn.slot, align 8, !dbg !2775
  %16 = extractvalue { i8*, i32 } %14, 1, !dbg !2775
  store i32 %16, i32* %ehselector.slot, align 4, !dbg !2775
  invoke void @__cxa_end_catch()
          to label %invoke.cont10 unwind label %terminate.lpad, !dbg !2776

invoke.cont10:                                    ; preds = %lpad8
  br label %eh.resume, !dbg !2776

try.cont:                                         ; preds = %invoke.cont
  %17 = load i64, i64* %__dnew, align 8, !dbg !2777
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm(%"class.std::__cxx11::basic_string"* %this1, i64 %17), !dbg !2778
  ret void, !dbg !2779

eh.resume:                                        ; preds = %invoke.cont10
  %exn11 = load i8*, i8** %exn.slot, align 8, !dbg !2776
  %sel = load i32, i32* %ehselector.slot, align 4, !dbg !2776
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn11, 0, !dbg !2776
  %lpad.val12 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1, !dbg !2776
  resume { i8*, i32 } %lpad.val12, !dbg !2776

terminate.lpad:                                   ; preds = %lpad8
  %18 = landingpad { i8*, i32 }
          catch i8* null, !dbg !2776
  %19 = extractvalue { i8*, i32 } %18, 0, !dbg !2776
  call void @__clang_call_terminate(i8* %19) #14, !dbg !2776
  unreachable, !dbg !2776

unreachable:                                      ; preds = %invoke.cont9
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev(%"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char>>::_Alloc_hider"* %this) unnamed_addr #4 comdat align 2 !dbg !2780 {
entry:
  %this.addr = alloca %"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char>>::_Alloc_hider"*, align 8
  store %"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char>>::_Alloc_hider"* %this, %"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char>>::_Alloc_hider"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char>>::_Alloc_hider"** %this.addr, metadata !2805, metadata !DIExpression()), !dbg !2807
  %this1 = load %"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char>>::_Alloc_hider"*, %"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char>>::_Alloc_hider"** %this.addr, align 8
  %0 = bitcast %"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char>>::_Alloc_hider"* %this1 to %"class.std::allocator.0"*, !dbg !2808
  call void @_ZNSaIcED2Ev(%"class.std::allocator.0"* %0) #6, !dbg !2808
  ret void, !dbg !2810
}

; Function Attrs: nounwind
declare dso_local void @_ZNSaIcED2Ev(%"class.std::allocator.0"*) unnamed_addr #3

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local zeroext i1 @_ZN9__gnu_cxx17__is_null_pointerIKcEEbPT_(i8* %__ptr) #4 comdat !dbg !2811 {
entry:
  %__ptr.addr = alloca i8*, align 8
  store i8* %__ptr, i8** %__ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %__ptr.addr, metadata !2815, metadata !DIExpression()), !dbg !2816
  %0 = load i8*, i8** %__ptr.addr, align 8, !dbg !2817
  %cmp = icmp eq i8* %0, null, !dbg !2818
  ret i1 %cmp, !dbg !2819
}

; Function Attrs: noreturn
declare dso_local void @_ZSt19__throw_logic_errorPKc(i8*) #11

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i64 @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_(i8* %__first, i8* %__last) #5 comdat !dbg !2820 {
entry:
  %__first.addr = alloca i8*, align 8
  %__last.addr = alloca i8*, align 8
  %agg.tmp = alloca %"class.std::allocator.0", align 1
  %undef.agg.tmp = alloca %"class.std::allocator.0", align 1
  store i8* %__first, i8** %__first.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %__first.addr, metadata !2830, metadata !DIExpression()), !dbg !2831
  store i8* %__last, i8** %__last.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %__last.addr, metadata !2832, metadata !DIExpression()), !dbg !2833
  %0 = load i8*, i8** %__first.addr, align 8, !dbg !2834
  %1 = load i8*, i8** %__last.addr, align 8, !dbg !2835
  call void @_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_(i8** nonnull align 8 dereferenceable(8) %__first.addr), !dbg !2836
  %call = call i64 @_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag(i8* %0, i8* %1), !dbg !2837
  ret i64 %call, !dbg !2838
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
define linkonce_odr dso_local void @_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_(i8** nonnull align 8 dereferenceable(8) %0) #4 comdat !dbg !2839 {
entry:
  %.addr = alloca i8**, align 8
  store i8** %0, i8*** %.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %.addr, metadata !2853, metadata !DIExpression()), !dbg !2854
  ret void, !dbg !2855
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag(i8* %__first, i8* %__last) #4 comdat !dbg !2856 {
entry:
  %0 = alloca %"class.std::allocator.0", align 1
  %__first.addr = alloca i8*, align 8
  %__last.addr = alloca i8*, align 8
  store i8* %__first, i8** %__first.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %__first.addr, metadata !2861, metadata !DIExpression()), !dbg !2862
  store i8* %__last, i8** %__last.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %__last.addr, metadata !2863, metadata !DIExpression()), !dbg !2864
  call void @llvm.dbg.declare(metadata %"class.std::allocator.0"* %0, metadata !2865, metadata !DIExpression()), !dbg !2866
  %1 = load i8*, i8** %__last.addr, align 8, !dbg !2867
  %2 = load i8*, i8** %__first.addr, align 8, !dbg !2868
  %sub.ptr.lhs.cast = ptrtoint i8* %1 to i64, !dbg !2869
  %sub.ptr.rhs.cast = ptrtoint i8* %2 to i64, !dbg !2869
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !2869
  ret i64 %sub.ptr.sub, !dbg !2870
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i64 @_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc(i8* %__p) #5 comdat align 2 !dbg !2871 {
entry:
  %__p.addr = alloca i8*, align 8
  %__i = alloca i64, align 8
  %ref.tmp = alloca i8, align 1
  store i8* %__p, i8** %__p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %__p.addr, metadata !2923, metadata !DIExpression()), !dbg !2924
  call void @llvm.dbg.declare(metadata i64* %__i, metadata !2925, metadata !DIExpression()), !dbg !2926
  store i64 0, i64* %__i, align 8, !dbg !2926
  br label %while.cond, !dbg !2927

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i8*, i8** %__p.addr, align 8, !dbg !2928
  %1 = load i64, i64* %__i, align 8, !dbg !2929
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 %1, !dbg !2928
  store i8 0, i8* %ref.tmp, align 1, !dbg !2930
  %call = call zeroext i1 @_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_(i8* nonnull align 1 dereferenceable(1) %arrayidx, i8* nonnull align 1 dereferenceable(1) %ref.tmp), !dbg !2931
  %lnot = xor i1 %call, true, !dbg !2932
  br i1 %lnot, label %while.body, label %while.end, !dbg !2927

while.body:                                       ; preds = %while.cond
  %2 = load i64, i64* %__i, align 8, !dbg !2933
  %inc = add i64 %2, 1, !dbg !2933
  store i64 %inc, i64* %__i, align 8, !dbg !2933
  br label %while.cond, !dbg !2927, !llvm.loop !2934

while.end:                                        ; preds = %while.cond
  %3 = load i64, i64* %__i, align 8, !dbg !2936
  ret i64 %3, !dbg !2937
}

; Function Attrs: nounwind
declare dso_local i64 @strlen(i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local zeroext i1 @_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_(i8* nonnull align 1 dereferenceable(1) %__c1, i8* nonnull align 1 dereferenceable(1) %__c2) #4 comdat align 2 !dbg !2938 {
entry:
  %__c1.addr = alloca i8*, align 8
  %__c2.addr = alloca i8*, align 8
  store i8* %__c1, i8** %__c1.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %__c1.addr, metadata !2939, metadata !DIExpression()), !dbg !2940
  store i8* %__c2, i8** %__c2.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %__c2.addr, metadata !2941, metadata !DIExpression()), !dbg !2942
  %0 = load i8*, i8** %__c1.addr, align 8, !dbg !2943
  %1 = load i8, i8* %0, align 1, !dbg !2943
  %conv = sext i8 %1 to i32, !dbg !2943
  %2 = load i8*, i8** %__c2.addr, align 8, !dbg !2944
  %3 = load i8, i8* %2, align 1, !dbg !2944
  %conv1 = sext i8 %3 to i32, !dbg !2944
  %cmp = icmp eq i32 %conv, %conv1, !dbg !2945
  ret i1 %cmp, !dbg !2946
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow9AllocatorD2Ev(%"class.tensorflow::AbstractTensorInterface"* %this) unnamed_addr #4 comdat align 2 !dbg !2947 {
entry:
  %this.addr = alloca %"class.tensorflow::AbstractTensorInterface"*, align 8
  store %"class.tensorflow::AbstractTensorInterface"* %this, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::AbstractTensorInterface"** %this.addr, metadata !2948, metadata !DIExpression()), !dbg !2949
  %this1 = load %"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  ret void, !dbg !2950
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow9AllocatorD0Ev(%"class.tensorflow::AbstractTensorInterface"* %this) unnamed_addr #4 comdat align 2 !dbg !2951 {
entry:
  %this.addr = alloca %"class.tensorflow::AbstractTensorInterface"*, align 8
  store %"class.tensorflow::AbstractTensorInterface"* %this, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::AbstractTensorInterface"** %this.addr, metadata !2952, metadata !DIExpression()), !dbg !2953
  %this1 = load %"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  call void @_ZN10tensorflow9AllocatorD2Ev(%"class.tensorflow::AbstractTensorInterface"* %this1) #6, !dbg !2954
  %0 = bitcast %"class.tensorflow::AbstractTensorInterface"* %this1 to i8*, !dbg !2954
  call void @_ZdlPv(i8* %0) #17, !dbg !2954
  ret void, !dbg !2955
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow9Allocator4NameB5cxx11Ev(%"class.std::__cxx11::basic_string"* noalias sret align 8 %agg.result, %"class.tensorflow::AbstractTensorInterface"* %this) unnamed_addr #5 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !2956 {
entry:
  %result.ptr = alloca i8*, align 8
  %this.addr = alloca %"class.tensorflow::AbstractTensorInterface"*, align 8
  %ref.tmp = alloca %"class.std::allocator.0", align 1
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  %0 = bitcast %"class.std::__cxx11::basic_string"* %agg.result to i8*
  store i8* %0, i8** %result.ptr, align 8
  store %"class.tensorflow::AbstractTensorInterface"* %this, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::AbstractTensorInterface"** %this.addr, metadata !2957, metadata !DIExpression()), !dbg !2958
  %this1 = load %"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  call void @_ZNSaIcEC1Ev(%"class.std::allocator.0"* %ref.tmp) #6, !dbg !2959
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(%"class.std::__cxx11::basic_string"* %agg.result, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.3, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %ref.tmp)
          to label %invoke.cont unwind label %lpad, !dbg !2959

invoke.cont:                                      ; preds = %entry
  call void @_ZNSaIcED1Ev(%"class.std::allocator.0"* %ref.tmp) #6, !dbg !2960
  ret void, !dbg !2960

lpad:                                             ; preds = %entry
  %1 = landingpad { i8*, i32 }
          cleanup, !dbg !2961
  %2 = extractvalue { i8*, i32 } %1, 0, !dbg !2961
  store i8* %2, i8** %exn.slot, align 8, !dbg !2961
  %3 = extractvalue { i8*, i32 } %1, 1, !dbg !2961
  store i32 %3, i32* %ehselector.slot, align 4, !dbg !2961
  call void @_ZNSaIcED1Ev(%"class.std::allocator.0"* %ref.tmp) #6, !dbg !2960
  br label %eh.resume, !dbg !2960

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8, !dbg !2960
  %sel = load i32, i32* %ehselector.slot, align 4, !dbg !2960
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0, !dbg !2960
  %lpad.val2 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1, !dbg !2960
  resume { i8*, i32 } %lpad.val2, !dbg !2960
}

; Function Attrs: noinline optnone uwtable
define dso_local void @_ZN10tensorflow17deallocate_bufferEPvmS0_(i8* %data, i64 %len, i8* %arg) #5 !dbg !2962 {
entry:
  %data.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %arg.addr = alloca i8*, align 8
  %allocator = alloca %"class.tensorflow::AbstractTensorInterface"*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !2963, metadata !DIExpression()), !dbg !2964
  store i64 %len, i64* %len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !2965, metadata !DIExpression()), !dbg !2966
  store i8* %arg, i8** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %arg.addr, metadata !2967, metadata !DIExpression()), !dbg !2968
  call void @llvm.dbg.declare(metadata %"class.tensorflow::AbstractTensorInterface"** %allocator, metadata !2969, metadata !DIExpression()), !dbg !2970
  store %"class.tensorflow::AbstractTensorInterface"* null, %"class.tensorflow::AbstractTensorInterface"** %allocator, align 8, !dbg !2970
  %0 = load i8*, i8** %arg.addr, align 8, !dbg !2971
  %cmp = icmp eq i8* %0, null, !dbg !2973
  br i1 %cmp, label %if.then, label %if.else, !dbg !2974

if.then:                                          ; preds = %entry
  %call = call %"class.tensorflow::AbstractTensorInterface"* @_ZN10tensorflow13cpu_allocatorEv(), !dbg !2975
  store %"class.tensorflow::AbstractTensorInterface"* %call, %"class.tensorflow::AbstractTensorInterface"** %allocator, align 8, !dbg !2977
  br label %if.end, !dbg !2978

if.else:                                          ; preds = %entry
  %1 = load i8*, i8** %arg.addr, align 8, !dbg !2979
  %2 = bitcast i8* %1 to %"class.tensorflow::AbstractTensorInterface"*, !dbg !2981
  store %"class.tensorflow::AbstractTensorInterface"* %2, %"class.tensorflow::AbstractTensorInterface"** %allocator, align 8, !dbg !2982
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load %"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"** %allocator, align 8, !dbg !2983
  %4 = load i8*, i8** %data.addr, align 8, !dbg !2984
  %5 = bitcast %"class.tensorflow::AbstractTensorInterface"* %3 to void (%"class.tensorflow::AbstractTensorInterface"*, i8*)***, !dbg !2985
  %vtable = load void (%"class.tensorflow::AbstractTensorInterface"*, i8*)**, void (%"class.tensorflow::AbstractTensorInterface"*, i8*)*** %5, align 8, !dbg !2985
  %vfn = getelementptr inbounds void (%"class.tensorflow::AbstractTensorInterface"*, i8*)*, void (%"class.tensorflow::AbstractTensorInterface"*, i8*)** %vtable, i64 4, !dbg !2985
  %6 = load void (%"class.tensorflow::AbstractTensorInterface"*, i8*)*, void (%"class.tensorflow::AbstractTensorInterface"*, i8*)** %vfn, align 8, !dbg !2985
  call void %6(%"class.tensorflow::AbstractTensorInterface"* %3, i8* %4), !dbg !2985
  ret void, !dbg !2986
}

; Function Attrs: noinline optnone uwtable
define dso_local %struct.TF_Tensor* @TF_AllocateTensor(i32 %dtype, i64* %dims, i32 %num_dims, i64 %len) #5 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !2987 {
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
  call void @llvm.dbg.declare(metadata i32* %dtype.addr, metadata !2994, metadata !DIExpression()), !dbg !2995
  store i64* %dims, i64** %dims.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %dims.addr, metadata !2996, metadata !DIExpression()), !dbg !2997
  store i32 %num_dims, i32* %num_dims.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %num_dims.addr, metadata !2998, metadata !DIExpression()), !dbg !2999
  store i64 %len, i64* %len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !3000, metadata !DIExpression()), !dbg !3001
  call void @llvm.dbg.declare(metadata i8** %data, metadata !3002, metadata !DIExpression()), !dbg !3003
  %0 = load i64, i64* %len.addr, align 8, !dbg !3004
  %call = call %"class.tensorflow::AbstractTensorInterface"* @_ZN10tensorflow13cpu_allocatorEv(), !dbg !3005
  %call1 = call i8* @_ZN10tensorflow15allocate_tensorEPKcmPNS_9AllocatorE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i64 %0, %"class.tensorflow::AbstractTensorInterface"* %call), !dbg !3006
  store i8* %call1, i8** %data, align 8, !dbg !3003
  call void @llvm.dbg.declare(metadata %class.TF_ManagedBuffer** %buf, metadata !3007, metadata !DIExpression()), !dbg !3217
  %call2 = call noalias nonnull i8* @_Znwm(i64 56) #16, !dbg !3218, !heapallocsite !3009
  %1 = bitcast i8* %call2 to %class.TF_ManagedBuffer*, !dbg !3218
  %2 = load i8*, i8** %data, align 8, !dbg !3219
  %3 = load i64, i64* %len.addr, align 8, !dbg !3220
  %call3 = invoke %"class.tensorflow::AbstractTensorInterface"* @_ZN10tensorflow13cpu_allocatorEv()
          to label %invoke.cont unwind label %lpad, !dbg !3221

invoke.cont:                                      ; preds = %entry
  %4 = bitcast %"class.tensorflow::AbstractTensorInterface"* %call3 to i8*, !dbg !3221
  invoke void @_ZN16TF_ManagedBufferC2EPvmPFvS0_mS0_ES0_b(%class.TF_ManagedBuffer* %1, i8* %2, i64 %3, void (i8*, i64, i8*)* @_ZN10tensorflow17deallocate_bufferEPvmS0_, i8* %4, i1 zeroext true)
          to label %invoke.cont4 unwind label %lpad, !dbg !3222

invoke.cont4:                                     ; preds = %invoke.cont
  store %class.TF_ManagedBuffer* %1, %class.TF_ManagedBuffer** %buf, align 8, !dbg !3217
  %5 = load %class.TF_ManagedBuffer*, %class.TF_ManagedBuffer** %buf, align 8, !dbg !3223
  %6 = load i32, i32* %dtype.addr, align 4, !dbg !3224
  %7 = load i64*, i64** %dims.addr, align 8, !dbg !3225
  %8 = load i32, i32* %num_dims.addr, align 4, !dbg !3226
  %9 = load i64, i64* %len.addr, align 8, !dbg !3227
  %call5 = call %struct.TF_Tensor* @_ZN12_GLOBAL__N_112CreateTensorEP16TF_ManagedBuffer11TF_DataTypePKlim(%class.TF_ManagedBuffer* %5, i32 %6, i64* %7, i32 %8, i64 %9), !dbg !3228
  ret %struct.TF_Tensor* %call5, !dbg !3229

lpad:                                             ; preds = %invoke.cont, %entry
  %10 = landingpad { i8*, i32 }
          cleanup, !dbg !3230
  %11 = extractvalue { i8*, i32 } %10, 0, !dbg !3230
  store i8* %11, i8** %exn.slot, align 8, !dbg !3230
  %12 = extractvalue { i8*, i32 } %10, 1, !dbg !3230
  store i32 %12, i32* %ehselector.slot, align 4, !dbg !3230
  call void @_ZdlPv(i8* %call2) #17, !dbg !3218
  br label %eh.resume, !dbg !3218

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8, !dbg !3218
  %sel = load i32, i32* %ehselector.slot, align 4, !dbg !3218
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0, !dbg !3218
  %lpad.val6 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1, !dbg !3218
  resume { i8*, i32 } %lpad.val6, !dbg !3218
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN16TF_ManagedBufferC2EPvmPFvS0_mS0_ES0_b(%class.TF_ManagedBuffer* %this, i8* %data, i64 %len, void (i8*, i64, i8*)* %deallocator, i8* %deallocator_arg, i1 zeroext %owns_memory) unnamed_addr #5 comdat align 2 !dbg !3231 {
entry:
  %this.addr = alloca %class.TF_ManagedBuffer*, align 8
  %data.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %deallocator.addr = alloca void (i8*, i64, i8*)*, align 8
  %deallocator_arg.addr = alloca i8*, align 8
  %owns_memory.addr = alloca i8, align 1
  store %class.TF_ManagedBuffer* %this, %class.TF_ManagedBuffer** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %class.TF_ManagedBuffer** %this.addr, metadata !3232, metadata !DIExpression()), !dbg !3233
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !3234, metadata !DIExpression()), !dbg !3235
  store i64 %len, i64* %len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !3236, metadata !DIExpression()), !dbg !3237
  store void (i8*, i64, i8*)* %deallocator, void (i8*, i64, i8*)** %deallocator.addr, align 8
  call void @llvm.dbg.declare(metadata void (i8*, i64, i8*)** %deallocator.addr, metadata !3238, metadata !DIExpression()), !dbg !3239
  store i8* %deallocator_arg, i8** %deallocator_arg.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %deallocator_arg.addr, metadata !3240, metadata !DIExpression()), !dbg !3241
  %frombool = zext i1 %owns_memory to i8
  store i8 %frombool, i8* %owns_memory.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %owns_memory.addr, metadata !3242, metadata !DIExpression()), !dbg !3243
  %this1 = load %class.TF_ManagedBuffer*, %class.TF_ManagedBuffer** %this.addr, align 8
  %0 = bitcast %class.TF_ManagedBuffer* %this1 to %"class.tensorflow::TensorBuffer"*, !dbg !3244
  %1 = load i8*, i8** %data.addr, align 8, !dbg !3245
  call void @_ZN10tensorflow12TensorBufferC2EPv(%"class.tensorflow::TensorBuffer"* %0, i8* %1), !dbg !3246
  %2 = bitcast %class.TF_ManagedBuffer* %this1 to i32 (...)***, !dbg !3244
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [10 x i8*] }, { [10 x i8*] }* @_ZTV16TF_ManagedBuffer, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %2, align 8, !dbg !3244
  %len_ = getelementptr inbounds %class.TF_ManagedBuffer, %class.TF_ManagedBuffer* %this1, i32 0, i32 1, !dbg !3247
  %3 = load i64, i64* %len.addr, align 8, !dbg !3248
  store i64 %3, i64* %len_, align 8, !dbg !3247
  %deallocator_ = getelementptr inbounds %class.TF_ManagedBuffer, %class.TF_ManagedBuffer* %this1, i32 0, i32 2, !dbg !3249
  %4 = load void (i8*, i64, i8*)*, void (i8*, i64, i8*)** %deallocator.addr, align 8, !dbg !3250
  store void (i8*, i64, i8*)* %4, void (i8*, i64, i8*)** %deallocator_, align 8, !dbg !3249
  %deallocator_arg_ = getelementptr inbounds %class.TF_ManagedBuffer, %class.TF_ManagedBuffer* %this1, i32 0, i32 3, !dbg !3251
  %5 = load i8*, i8** %deallocator_arg.addr, align 8, !dbg !3252
  store i8* %5, i8** %deallocator_arg_, align 8, !dbg !3251
  %owns_memory_ = getelementptr inbounds %class.TF_ManagedBuffer, %class.TF_ManagedBuffer* %this1, i32 0, i32 4, !dbg !3253
  %6 = load i8, i8* %owns_memory.addr, align 1, !dbg !3254
  %tobool = trunc i8 %6 to i1, !dbg !3254
  %frombool2 = zext i1 %tobool to i8, !dbg !3253
  store i8 %frombool2, i8* %owns_memory_, align 8, !dbg !3253
  ret void, !dbg !3255
}

; Function Attrs: noinline optnone uwtable
define internal %struct.TF_Tensor* @_ZN12_GLOBAL__N_112CreateTensorEP16TF_ManagedBuffer11TF_DataTypePKlim(%class.TF_ManagedBuffer* %buf, i32 %dtype, i64* %dims, i32 %num_dims, i64 %len) #5 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !3256 {
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
  call void @llvm.dbg.declare(metadata %class.TF_ManagedBuffer** %buf.addr, metadata !3260, metadata !DIExpression()), !dbg !3261
  store i32 %dtype, i32* %dtype.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %dtype.addr, metadata !3262, metadata !DIExpression()), !dbg !3263
  store i64* %dims, i64** %dims.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %dims.addr, metadata !3264, metadata !DIExpression()), !dbg !3265
  store i32 %num_dims, i32* %num_dims.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %num_dims.addr, metadata !3266, metadata !DIExpression()), !dbg !3267
  store i64 %len, i64* %len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !3268, metadata !DIExpression()), !dbg !3269
  call void @llvm.dbg.declare(metadata %"class.std::vector"* %dimvec, metadata !3270, metadata !DIExpression()), !dbg !3271
  %0 = load i32, i32* %num_dims.addr, align 4, !dbg !3272
  %conv = sext i32 %0 to i64, !dbg !3272
  call void @_ZNSaIlEC2Ev(%"class.std::allocator.0"* %ref.tmp) #6, !dbg !3271
  invoke void @_ZNSt6vectorIlSaIlEEC2EmRKS0_(%"class.std::vector"* %dimvec, i64 %conv, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %ref.tmp)
          to label %invoke.cont unwind label %lpad, !dbg !3271

invoke.cont:                                      ; preds = %entry
  call void @_ZNSaIlED2Ev(%"class.std::allocator.0"* %ref.tmp) #6, !dbg !3271
  call void @llvm.dbg.declare(metadata i32* %i, metadata !3273, metadata !DIExpression()), !dbg !3275
  store i32 0, i32* %i, align 4, !dbg !3275
  br label %for.cond, !dbg !3276

for.cond:                                         ; preds = %for.inc, %invoke.cont
  %1 = load i32, i32* %i, align 4, !dbg !3277
  %2 = load i32, i32* %num_dims.addr, align 4, !dbg !3279
  %cmp = icmp slt i32 %1, %2, !dbg !3280
  br i1 %cmp, label %for.body, label %for.end, !dbg !3281

for.body:                                         ; preds = %for.cond
  %3 = load i64*, i64** %dims.addr, align 8, !dbg !3282
  %4 = load i32, i32* %i, align 4, !dbg !3284
  %idxprom = sext i32 %4 to i64, !dbg !3282
  %arrayidx = getelementptr inbounds i64, i64* %3, i64 %idxprom, !dbg !3282
  %5 = load i64, i64* %arrayidx, align 8, !dbg !3282
  %6 = load i32, i32* %i, align 4, !dbg !3285
  %conv1 = sext i32 %6 to i64, !dbg !3285
  %call = call nonnull align 8 dereferenceable(8) i64* @_ZNSt6vectorIlSaIlEEixEm(%"class.std::vector"* %dimvec, i64 %conv1) #6, !dbg !3286
  store i64 %5, i64* %call, align 8, !dbg !3287
  br label %for.inc, !dbg !3288

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !dbg !3289
  %inc = add nsw i32 %7, 1, !dbg !3289
  store i32 %inc, i32* %i, align 4, !dbg !3289
  br label %for.cond, !dbg !3290, !llvm.loop !3291

lpad:                                             ; preds = %entry
  %8 = landingpad { i8*, i32 }
          cleanup, !dbg !3293
  %9 = extractvalue { i8*, i32 } %8, 0, !dbg !3293
  store i8* %9, i8** %exn.slot, align 8, !dbg !3293
  %10 = extractvalue { i8*, i32 } %8, 1, !dbg !3293
  store i32 %10, i32* %ehselector.slot, align 4, !dbg !3293
  call void @_ZNSaIlED2Ev(%"class.std::allocator.0"* %ref.tmp) #6, !dbg !3271
  br label %eh.resume, !dbg !3271

for.end:                                          ; preds = %for.cond
  call void @llvm.dbg.declare(metadata %"class.tensorflow::Tensor"* %ret, metadata !3294, metadata !DIExpression()), !dbg !3295
  %11 = load i32, i32* %dtype.addr, align 4, !dbg !3296
  invoke void @_ZN10tensorflow11TensorShapeC2ERKSt6vectorIlSaIlEE(%"class.tensorflow::TensorShape"* %ref.tmp2, %"class.std::vector"* nonnull align 8 dereferenceable(24) %dimvec)
          to label %invoke.cont4 unwind label %lpad3, !dbg !3297

invoke.cont4:                                     ; preds = %for.end
  %12 = load %class.TF_ManagedBuffer*, %class.TF_ManagedBuffer** %buf.addr, align 8, !dbg !3298
  %13 = bitcast %class.TF_ManagedBuffer* %12 to %"class.tensorflow::TensorBuffer"*, !dbg !3298
  invoke void @_ZN10tensorflow6TensorC1E8DataTypeRKNS_11TensorShapeEPNS_12TensorBufferE(%"class.tensorflow::Tensor"* %ret, i32 %11, %"class.tensorflow::TensorShape"* nonnull align 8 dereferenceable(29) %ref.tmp2, %"class.tensorflow::TensorBuffer"* %13)
          to label %invoke.cont6 unwind label %lpad5, !dbg !3295

invoke.cont6:                                     ; preds = %invoke.cont4
  call void @_ZN10tensorflow11TensorShapeD2Ev(%"class.tensorflow::TensorShape"* %ref.tmp2) #6, !dbg !3295
  %14 = load %class.TF_ManagedBuffer*, %class.TF_ManagedBuffer** %buf.addr, align 8, !dbg !3299
  %15 = bitcast %class.TF_ManagedBuffer* %14 to %"class.tensorflow::core::RefCounted"*, !dbg !3300
  %call9 = invoke zeroext i1 @_ZNK10tensorflow4core10RefCounted5UnrefEv(%"class.tensorflow::core::RefCounted"* %15)
          to label %invoke.cont8 unwind label %lpad7, !dbg !3300

invoke.cont8:                                     ; preds = %invoke.cont6
  call void @llvm.dbg.declare(metadata i64* %elem_size, metadata !3301, metadata !DIExpression()), !dbg !3302
  %16 = load i32, i32* %dtype.addr, align 4, !dbg !3303
  %call11 = invoke i64 @_ZL15TF_DataTypeSize11TF_DataType(i32 %16)
          to label %invoke.cont10 unwind label %lpad7, !dbg !3304

invoke.cont10:                                    ; preds = %invoke.cont8
  store i64 %call11, i64* %elem_size, align 8, !dbg !3302
  %17 = load i64, i64* %elem_size, align 8, !dbg !3305
  %cmp12 = icmp ugt i64 %17, 0, !dbg !3307
  br i1 %cmp12, label %land.lhs.true, label %if.end, !dbg !3308

land.lhs.true:                                    ; preds = %invoke.cont10
  %18 = load i64, i64* %len.addr, align 8, !dbg !3309
  %19 = load i64, i64* %elem_size, align 8, !dbg !3310
  %call14 = invoke i64 @_ZNK10tensorflow6Tensor11NumElementsEv(%"class.tensorflow::Tensor"* %ret)
          to label %invoke.cont13 unwind label %lpad7, !dbg !3311

invoke.cont13:                                    ; preds = %land.lhs.true
  %mul = mul i64 %19, %call14, !dbg !3312
  %cmp15 = icmp ult i64 %18, %mul, !dbg !3313
  br i1 %cmp15, label %if.then, label %if.end, !dbg !3314

if.then:                                          ; preds = %invoke.cont13
  store %struct.TF_Tensor* null, %struct.TF_Tensor** %retval, align 8, !dbg !3315
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3315

lpad3:                                            ; preds = %for.end
  %20 = landingpad { i8*, i32 }
          cleanup, !dbg !3293
  %21 = extractvalue { i8*, i32 } %20, 0, !dbg !3293
  store i8* %21, i8** %exn.slot, align 8, !dbg !3293
  %22 = extractvalue { i8*, i32 } %20, 1, !dbg !3293
  store i32 %22, i32* %ehselector.slot, align 4, !dbg !3293
  br label %ehcleanup33, !dbg !3293

lpad5:                                            ; preds = %invoke.cont4
  %23 = landingpad { i8*, i32 }
          cleanup, !dbg !3293
  %24 = extractvalue { i8*, i32 } %23, 0, !dbg !3293
  store i8* %24, i8** %exn.slot, align 8, !dbg !3293
  %25 = extractvalue { i8*, i32 } %23, 1, !dbg !3293
  store i32 %25, i32* %ehselector.slot, align 4, !dbg !3293
  call void @_ZN10tensorflow11TensorShapeD2Ev(%"class.tensorflow::TensorShape"* %ref.tmp2) #6, !dbg !3295
  br label %ehcleanup33, !dbg !3295

lpad7:                                            ; preds = %if.end, %land.lhs.true, %invoke.cont8, %invoke.cont6
  %26 = landingpad { i8*, i32 }
          cleanup, !dbg !3293
  %27 = extractvalue { i8*, i32 } %26, 0, !dbg !3293
  store i8* %27, i8** %exn.slot, align 8, !dbg !3293
  %28 = extractvalue { i8*, i32 } %26, 1, !dbg !3293
  store i32 %28, i32* %ehselector.slot, align 4, !dbg !3293
  br label %ehcleanup31, !dbg !3293

if.end:                                           ; preds = %invoke.cont13, %invoke.cont10
  %call17 = invoke noalias nonnull i8* @_Znwm(i64 8) #16
          to label %invoke.cont16 unwind label %lpad7, !dbg !3317, !heapallocsite !2991

invoke.cont16:                                    ; preds = %if.end
  store i1 true, i1* %cleanup.isactive26, align 1
  %29 = bitcast i8* %call17 to %struct.TF_Tensor*, !dbg !3317
  %tensor = getelementptr inbounds %struct.TF_Tensor, %struct.TF_Tensor* %29, i32 0, i32 0, !dbg !3318
  %call20 = invoke noalias nonnull i8* @_Znwm(i64 48) #16
          to label %invoke.cont19 unwind label %lpad18, !dbg !3319, !heapallocsite !3320

invoke.cont19:                                    ; preds = %invoke.cont16
  store i1 true, i1* %cleanup.isactive, align 1
  %30 = bitcast i8* %call20 to %"class.tensorflow::TensorInterface"*, !dbg !3319
  %call21 = call nonnull align 8 dereferenceable(40) %"class.tensorflow::Tensor"* @_ZSt4moveIRN10tensorflow6TensorEEONSt16remove_referenceIT_E4typeEOS4_(%"class.tensorflow::Tensor"* nonnull align 8 dereferenceable(40) %ret) #6, !dbg !3378
  invoke void @_ZN10tensorflow6TensorC1EOS0_(%"class.tensorflow::Tensor"* %agg.tmp, %"class.tensorflow::Tensor"* nonnull align 8 dereferenceable(40) %call21)
          to label %invoke.cont23 unwind label %lpad22, !dbg !3378

invoke.cont23:                                    ; preds = %invoke.cont19
  invoke void @_ZN10tensorflow15TensorInterfaceC2ENS_6TensorE(%"class.tensorflow::TensorInterface"* %30, %"class.tensorflow::Tensor"* %agg.tmp)
          to label %invoke.cont25 unwind label %lpad24, !dbg !3379

invoke.cont25:                                    ; preds = %invoke.cont23
  store i1 false, i1* %cleanup.isactive, align 1, !dbg !3319
  %31 = bitcast %"class.tensorflow::TensorInterface"* %30 to %"class.tensorflow::AbstractTensorInterface"*, !dbg !3319
  store %"class.tensorflow::AbstractTensorInterface"* %31, %"class.tensorflow::AbstractTensorInterface"** %tensor, align 8, !dbg !3318
  store i1 false, i1* %cleanup.isactive26, align 1, !dbg !3317
  store %struct.TF_Tensor* %29, %struct.TF_Tensor** %retval, align 8, !dbg !3380
  call void @_ZN10tensorflow6TensorD1Ev(%"class.tensorflow::Tensor"* %agg.tmp) #6, !dbg !3380
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3380

lpad18:                                           ; preds = %invoke.cont16
  %32 = landingpad { i8*, i32 }
          cleanup, !dbg !3293
  %33 = extractvalue { i8*, i32 } %32, 0, !dbg !3293
  store i8* %33, i8** %exn.slot, align 8, !dbg !3293
  %34 = extractvalue { i8*, i32 } %32, 1, !dbg !3293
  store i32 %34, i32* %ehselector.slot, align 4, !dbg !3293
  br label %ehcleanup27, !dbg !3293

lpad22:                                           ; preds = %invoke.cont19
  %35 = landingpad { i8*, i32 }
          cleanup, !dbg !3293
  %36 = extractvalue { i8*, i32 } %35, 0, !dbg !3293
  store i8* %36, i8** %exn.slot, align 8, !dbg !3293
  %37 = extractvalue { i8*, i32 } %35, 1, !dbg !3293
  store i32 %37, i32* %ehselector.slot, align 4, !dbg !3293
  br label %ehcleanup, !dbg !3293

lpad24:                                           ; preds = %invoke.cont23
  %38 = landingpad { i8*, i32 }
          cleanup, !dbg !3293
  %39 = extractvalue { i8*, i32 } %38, 0, !dbg !3293
  store i8* %39, i8** %exn.slot, align 8, !dbg !3293
  %40 = extractvalue { i8*, i32 } %38, 1, !dbg !3293
  store i32 %40, i32* %ehselector.slot, align 4, !dbg !3293
  call void @_ZN10tensorflow6TensorD1Ev(%"class.tensorflow::Tensor"* %agg.tmp) #6, !dbg !3380
  br label %ehcleanup, !dbg !3380

ehcleanup:                                        ; preds = %lpad24, %lpad22
  %cleanup.is_active = load i1, i1* %cleanup.isactive, align 1, !dbg !3380
  br i1 %cleanup.is_active, label %cleanup.action, label %cleanup.done, !dbg !3380

cleanup.action:                                   ; preds = %ehcleanup
  call void @_ZdlPv(i8* %call20) #17, !dbg !3380
  br label %cleanup.done, !dbg !3380

cleanup.done:                                     ; preds = %cleanup.action, %ehcleanup
  br label %ehcleanup27, !dbg !3380

ehcleanup27:                                      ; preds = %cleanup.done, %lpad18
  %cleanup.is_active28 = load i1, i1* %cleanup.isactive26, align 1, !dbg !3380
  br i1 %cleanup.is_active28, label %cleanup.action29, label %cleanup.done30, !dbg !3380

cleanup.action29:                                 ; preds = %ehcleanup27
  call void @_ZdlPv(i8* %call17) #17, !dbg !3380
  br label %cleanup.done30, !dbg !3380

cleanup.done30:                                   ; preds = %cleanup.action29, %ehcleanup27
  br label %ehcleanup31, !dbg !3380

cleanup:                                          ; preds = %invoke.cont25, %if.then
  call void @_ZN10tensorflow6TensorD1Ev(%"class.tensorflow::Tensor"* %ret) #6, !dbg !3293
  call void @_ZNSt6vectorIlSaIlEED2Ev(%"class.std::vector"* %dimvec) #6, !dbg !3293
  %41 = load %struct.TF_Tensor*, %struct.TF_Tensor** %retval, align 8, !dbg !3293
  ret %struct.TF_Tensor* %41, !dbg !3293

ehcleanup31:                                      ; preds = %cleanup.done30, %lpad7
  call void @_ZN10tensorflow6TensorD1Ev(%"class.tensorflow::Tensor"* %ret) #6, !dbg !3293
  br label %ehcleanup33, !dbg !3293

ehcleanup33:                                      ; preds = %ehcleanup31, %lpad5, %lpad3
  call void @_ZNSt6vectorIlSaIlEED2Ev(%"class.std::vector"* %dimvec) #6, !dbg !3293
  br label %eh.resume, !dbg !3293

eh.resume:                                        ; preds = %ehcleanup33, %lpad
  %exn = load i8*, i8** %exn.slot, align 8, !dbg !3271
  %sel = load i32, i32* %ehselector.slot, align 4, !dbg !3271
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0, !dbg !3271
  %lpad.val34 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1, !dbg !3271
  resume { i8*, i32 } %lpad.val34, !dbg !3271
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSaIlEC2Ev(%"class.std::allocator.0"* %this) unnamed_addr #4 comdat align 2 !dbg !3381 {
entry:
  %this.addr = alloca %"class.std::allocator.0"*, align 8
  store %"class.std::allocator.0"* %this, %"class.std::allocator.0"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::allocator.0"** %this.addr, metadata !3382, metadata !DIExpression()), !dbg !3384
  %this1 = load %"class.std::allocator.0"*, %"class.std::allocator.0"** %this.addr, align 8
  %0 = bitcast %"class.std::allocator.0"* %this1 to %"class.std::allocator.0"*, !dbg !3385
  call void @_ZN9__gnu_cxx13new_allocatorIlEC2Ev(%"class.std::allocator.0"* %0) #6, !dbg !3386
  ret void, !dbg !3387
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIlSaIlEEC2EmRKS0_(%"class.std::vector"* %this, i64 %__n, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %__a) unnamed_addr #5 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !3388 {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  %__n.addr = alloca i64, align 8
  %__a.addr = alloca %"class.std::allocator.0"*, align 8
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::vector"** %this.addr, metadata !3389, metadata !DIExpression()), !dbg !3391
  store i64 %__n, i64* %__n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %__n.addr, metadata !3392, metadata !DIExpression()), !dbg !3393
  store %"class.std::allocator.0"* %__a, %"class.std::allocator.0"** %__a.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::allocator.0"** %__a.addr, metadata !3394, metadata !DIExpression()), !dbg !3395
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*, !dbg !3396
  %1 = load i64, i64* %__n.addr, align 8, !dbg !3397
  %2 = load %"class.std::allocator.0"*, %"class.std::allocator.0"** %__a.addr, align 8, !dbg !3398
  %call = call i64 @_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_(i64 %1, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %2), !dbg !3399
  %3 = load %"class.std::allocator.0"*, %"class.std::allocator.0"** %__a.addr, align 8, !dbg !3400
  call void @_ZNSt12_Vector_baseIlSaIlEEC2EmRKS0_(%"struct.std::_Vector_base"* %0, i64 %call, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %3), !dbg !3401
  %4 = load i64, i64* %__n.addr, align 8, !dbg !3402
  invoke void @_ZNSt6vectorIlSaIlEE21_M_default_initializeEm(%"class.std::vector"* %this1, i64 %4)
          to label %invoke.cont unwind label %lpad, !dbg !3404

invoke.cont:                                      ; preds = %entry
  ret void, !dbg !3405

lpad:                                             ; preds = %entry
  %5 = landingpad { i8*, i32 }
          cleanup, !dbg !3406
  %6 = extractvalue { i8*, i32 } %5, 0, !dbg !3406
  store i8* %6, i8** %exn.slot, align 8, !dbg !3406
  %7 = extractvalue { i8*, i32 } %5, 1, !dbg !3406
  store i32 %7, i32* %ehselector.slot, align 4, !dbg !3406
  %8 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*, !dbg !3406
  call void @_ZNSt12_Vector_baseIlSaIlEED2Ev(%"struct.std::_Vector_base"* %8) #6, !dbg !3406
  br label %eh.resume, !dbg !3406

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8, !dbg !3406
  %sel = load i32, i32* %ehselector.slot, align 4, !dbg !3406
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0, !dbg !3406
  %lpad.val2 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1, !dbg !3406
  resume { i8*, i32 } %lpad.val2, !dbg !3406
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSaIlED2Ev(%"class.std::allocator.0"* %this) unnamed_addr #4 comdat align 2 !dbg !3407 {
entry:
  %this.addr = alloca %"class.std::allocator.0"*, align 8
  store %"class.std::allocator.0"* %this, %"class.std::allocator.0"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::allocator.0"** %this.addr, metadata !3408, metadata !DIExpression()), !dbg !3409
  %this1 = load %"class.std::allocator.0"*, %"class.std::allocator.0"** %this.addr, align 8
  %0 = bitcast %"class.std::allocator.0"* %this1 to %"class.std::allocator.0"*, !dbg !3410
  call void @_ZN9__gnu_cxx13new_allocatorIlED2Ev(%"class.std::allocator.0"* %0) #6, !dbg !3410
  ret void, !dbg !3412
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) i64* @_ZNSt6vectorIlSaIlEEixEm(%"class.std::vector"* %this, i64 %__n) #4 comdat align 2 !dbg !3413 {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  %__n.addr = alloca i64, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::vector"** %this.addr, metadata !3414, metadata !DIExpression()), !dbg !3415
  store i64 %__n, i64* %__n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %__n.addr, metadata !3416, metadata !DIExpression()), !dbg !3417
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*, !dbg !3418
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %0, i32 0, i32 0, !dbg !3418
  %1 = bitcast %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %_M_impl to %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"*, !dbg !3419
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data", %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* %1, i32 0, i32 0, !dbg !3420
  %2 = load i64*, i64** %_M_start, align 8, !dbg !3420
  %3 = load i64, i64* %__n.addr, align 8, !dbg !3421
  %add.ptr = getelementptr inbounds i64, i64* %2, i64 %3, !dbg !3422
  ret i64* %add.ptr, !dbg !3423
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow11TensorShapeC2ERKSt6vectorIlSaIlEE(%"class.tensorflow::TensorShape"* %this, %"class.std::vector"* nonnull align 8 dereferenceable(24) %dims) unnamed_addr #5 comdat align 2 !dbg !3424 {
entry:
  %this.addr = alloca %"class.tensorflow::TensorShape"*, align 8
  %dims.addr = alloca %"class.std::vector"*, align 8
  store %"class.tensorflow::TensorShape"* %this, %"class.tensorflow::TensorShape"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::TensorShape"** %this.addr, metadata !3425, metadata !DIExpression()), !dbg !3426
  store %"class.std::vector"* %dims, %"class.std::vector"** %dims.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::vector"** %dims.addr, metadata !3427, metadata !DIExpression()), !dbg !3428
  %this1 = load %"class.tensorflow::TensorShape"*, %"class.tensorflow::TensorShape"** %this.addr, align 8
  %dims_ = getelementptr inbounds %"class.tensorflow::TensorShape", %"class.tensorflow::TensorShape"* %this1, i32 0, i32 0, !dbg !3429
  %0 = load %"class.std::vector"*, %"class.std::vector"** %dims.addr, align 8, !dbg !3430
  call void @_ZNSt6vectorIlSaIlEEC2ERKS1_(%"class.std::vector"* %dims_, %"class.std::vector"* nonnull align 8 dereferenceable(24) %0), !dbg !3429
  %dtype_ = getelementptr inbounds %"class.tensorflow::TensorShape", %"class.tensorflow::TensorShape"* %this1, i32 0, i32 1, !dbg !3431
  store i32 0, i32* %dtype_, align 8, !dbg !3431
  %partial_ = getelementptr inbounds %"class.tensorflow::TensorShape", %"class.tensorflow::TensorShape"* %this1, i32 0, i32 2, !dbg !3432
  ret void, !dbg !3433
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow11TensorShapeD2Ev(%"class.tensorflow::TensorShape"* %this) unnamed_addr #4 comdat align 2 !dbg !3434 {
entry:
  %this.addr = alloca %"class.tensorflow::TensorShape"*, align 8
  store %"class.tensorflow::TensorShape"* %this, %"class.tensorflow::TensorShape"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::TensorShape"** %this.addr, metadata !3436, metadata !DIExpression()), !dbg !3437
  %this1 = load %"class.tensorflow::TensorShape"*, %"class.tensorflow::TensorShape"** %this.addr, align 8
  %dims_ = getelementptr inbounds %"class.tensorflow::TensorShape", %"class.tensorflow::TensorShape"* %this1, i32 0, i32 0, !dbg !3438
  call void @_ZNSt6vectorIlSaIlEED2Ev(%"class.std::vector"* %dims_) #6, !dbg !3438
  ret void, !dbg !3440
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local zeroext i1 @_ZNK10tensorflow4core10RefCounted5UnrefEv(%"class.tensorflow::core::RefCounted"* %this) #4 comdat align 2 !dbg !3441 {
entry:
  %this.addr.i = alloca %"struct.std::__atomic_base"*, align 8
  %__i.addr.i = alloca i64, align 8
  %__m.addr.i = alloca i32, align 4
  %.atomictmp.i = alloca i64, align 8
  %atomic-temp.i = alloca i64, align 8
  %retval = alloca i1, align 1
  %this.addr = alloca %"class.tensorflow::core::RefCounted"*, align 8
  store %"class.tensorflow::core::RefCounted"* %this, %"class.tensorflow::core::RefCounted"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::core::RefCounted"** %this.addr, metadata !3442, metadata !DIExpression()), !dbg !3444
  %this1 = load %"class.tensorflow::core::RefCounted"*, %"class.tensorflow::core::RefCounted"** %this.addr, align 8
  %ref_count_ = getelementptr inbounds %"class.tensorflow::core::RefCounted", %"class.tensorflow::core::RefCounted"* %this1, i32 0, i32 1, !dbg !3445
  %0 = bitcast %"struct.std::atomic"* %ref_count_ to %"struct.std::__atomic_base"*, !dbg !3445
  store %"struct.std::__atomic_base"* %0, %"struct.std::__atomic_base"** %this.addr.i, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::__atomic_base"** %this.addr.i, metadata !3447, metadata !DIExpression()), !dbg !3450
  store i64 1, i64* %__i.addr.i, align 8
  call void @llvm.dbg.declare(metadata i64* %__i.addr.i, metadata !3452, metadata !DIExpression()), !dbg !3453
  store i32 4, i32* %__m.addr.i, align 4
  call void @llvm.dbg.declare(metadata i32* %__m.addr.i, metadata !3454, metadata !DIExpression()), !dbg !3455
  %this1.i = load %"struct.std::__atomic_base"*, %"struct.std::__atomic_base"** %this.addr.i, align 8
  %_M_i.i = getelementptr inbounds %"struct.std::__atomic_base", %"struct.std::__atomic_base"* %this1.i, i32 0, i32 0, !dbg !3456
  %1 = load i32, i32* %__m.addr.i, align 4, !dbg !3457
  %2 = load i64, i64* %__i.addr.i, align 8, !dbg !3458
  store i64 %2, i64* %.atomictmp.i, align 8, !dbg !3459
  switch i32 %1, label %monotonic.i [
    i32 1, label %acquire.i
    i32 2, label %acquire.i
    i32 3, label %release.i
    i32 4, label %acqrel.i
    i32 5, label %seqcst.i
  ], !dbg !3459

monotonic.i:                                      ; preds = %entry
  %3 = load i64, i64* %.atomictmp.i, align 8, !dbg !3459
  %4 = load i64, i64* %_M_i.i, align 8, !dbg !3459
  %5 = sub i64 %4, %3, !dbg !3459
  store i64 %5, i64* %_M_i.i, align 8, !dbg !3459
  store i64 %4, i64* %atomic-temp.i, align 8, !dbg !3459
  br label %_ZNSt13__atomic_baseImE9fetch_subEmSt12memory_order.exit, !dbg !3459

acquire.i:                                        ; preds = %entry, %entry
  %6 = load i64, i64* %.atomictmp.i, align 8, !dbg !3459
  %7 = load i64, i64* %_M_i.i, align 8, !dbg !3459
  %8 = sub i64 %7, %6, !dbg !3459
  store i64 %8, i64* %_M_i.i, align 8, !dbg !3459
  store i64 %7, i64* %atomic-temp.i, align 8, !dbg !3459
  br label %_ZNSt13__atomic_baseImE9fetch_subEmSt12memory_order.exit, !dbg !3459

release.i:                                        ; preds = %entry
  %9 = load i64, i64* %.atomictmp.i, align 8, !dbg !3459
  %10 = load i64, i64* %_M_i.i, align 8, !dbg !3459
  %11 = sub i64 %10, %9, !dbg !3459
  store i64 %11, i64* %_M_i.i, align 8, !dbg !3459
  store i64 %10, i64* %atomic-temp.i, align 8, !dbg !3459
  br label %_ZNSt13__atomic_baseImE9fetch_subEmSt12memory_order.exit, !dbg !3459

acqrel.i:                                         ; preds = %entry
  %12 = load i64, i64* %.atomictmp.i, align 8, !dbg !3459
  %13 = load i64, i64* %_M_i.i, align 8, !dbg !3459
  %14 = sub i64 %13, %12, !dbg !3459
  store i64 %14, i64* %_M_i.i, align 8, !dbg !3459
  store i64 %13, i64* %atomic-temp.i, align 8, !dbg !3459
  br label %_ZNSt13__atomic_baseImE9fetch_subEmSt12memory_order.exit, !dbg !3459

seqcst.i:                                         ; preds = %entry
  %15 = load i64, i64* %.atomictmp.i, align 8, !dbg !3459
  %16 = load i64, i64* %_M_i.i, align 8, !dbg !3459
  %17 = sub i64 %16, %15, !dbg !3459
  store i64 %17, i64* %_M_i.i, align 8, !dbg !3459
  store i64 %16, i64* %atomic-temp.i, align 8, !dbg !3459
  br label %_ZNSt13__atomic_baseImE9fetch_subEmSt12memory_order.exit, !dbg !3459

_ZNSt13__atomic_baseImE9fetch_subEmSt12memory_order.exit: ; preds = %monotonic.i, %acquire.i, %release.i, %acqrel.i, %seqcst.i
  %18 = load i64, i64* %atomic-temp.i, align 8, !dbg !3459
  %cmp = icmp eq i64 %18, 1, !dbg !3460
  br i1 %cmp, label %if.then, label %if.end, !dbg !3461

if.then:                                          ; preds = %_ZNSt13__atomic_baseImE9fetch_subEmSt12memory_order.exit
  %isnull = icmp eq %"class.tensorflow::core::RefCounted"* %this1, null, !dbg !3462
  br i1 %isnull, label %delete.end, label %delete.notnull, !dbg !3462

delete.notnull:                                   ; preds = %if.then
  %19 = bitcast %"class.tensorflow::core::RefCounted"* %this1 to void (%"class.tensorflow::core::RefCounted"*)***, !dbg !3462
  %vtable = load void (%"class.tensorflow::core::RefCounted"*)**, void (%"class.tensorflow::core::RefCounted"*)*** %19, align 8, !dbg !3462
  %vfn = getelementptr inbounds void (%"class.tensorflow::core::RefCounted"*)*, void (%"class.tensorflow::core::RefCounted"*)** %vtable, i64 1, !dbg !3462
  %20 = load void (%"class.tensorflow::core::RefCounted"*)*, void (%"class.tensorflow::core::RefCounted"*)** %vfn, align 8, !dbg !3462
  call void %20(%"class.tensorflow::core::RefCounted"* %this1) #6, !dbg !3462
  br label %delete.end, !dbg !3462

delete.end:                                       ; preds = %delete.notnull, %if.then
  store i1 true, i1* %retval, align 1, !dbg !3464
  br label %return, !dbg !3464

if.end:                                           ; preds = %_ZNSt13__atomic_baseImE9fetch_subEmSt12memory_order.exit
  store i1 false, i1* %retval, align 1, !dbg !3465
  br label %return, !dbg !3465

return:                                           ; preds = %if.end, %delete.end
  %21 = load i1, i1* %retval, align 1, !dbg !3466
  ret i1 %21, !dbg !3466
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @_ZL15TF_DataTypeSize11TF_DataType(i32 %dt) #4 !dbg !3467 {
entry:
  %retval = alloca i64, align 8
  %dt.addr = alloca i32, align 4
  store i32 %dt, i32* %dt.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %dt.addr, metadata !3470, metadata !DIExpression()), !dbg !3471
  %0 = load i32, i32* %dt.addr, align 4, !dbg !3472
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
  ], !dbg !3473

sw.bb:                                            ; preds = %entry
  store i64 4, i64* %retval, align 8, !dbg !3474
  br label %return, !dbg !3474

sw.bb1:                                           ; preds = %entry
  store i64 8, i64* %retval, align 8, !dbg !3476
  br label %return, !dbg !3476

sw.bb2:                                           ; preds = %entry
  store i64 4, i64* %retval, align 8, !dbg !3477
  br label %return, !dbg !3477

sw.bb3:                                           ; preds = %entry
  store i64 4, i64* %retval, align 8, !dbg !3478
  br label %return, !dbg !3478

sw.bb4:                                           ; preds = %entry
  store i64 1, i64* %retval, align 8, !dbg !3479
  br label %return, !dbg !3479

sw.bb5:                                           ; preds = %entry
  store i64 2, i64* %retval, align 8, !dbg !3480
  br label %return, !dbg !3480

sw.bb6:                                           ; preds = %entry
  store i64 2, i64* %retval, align 8, !dbg !3481
  br label %return, !dbg !3481

sw.bb7:                                           ; preds = %entry
  store i64 1, i64* %retval, align 8, !dbg !3482
  br label %return, !dbg !3482

sw.bb8:                                           ; preds = %entry
  store i64 8, i64* %retval, align 8, !dbg !3483
  br label %return, !dbg !3483

sw.bb9:                                           ; preds = %entry
  store i64 16, i64* %retval, align 8, !dbg !3484
  br label %return, !dbg !3484

sw.bb10:                                          ; preds = %entry
  store i64 8, i64* %retval, align 8, !dbg !3485
  br label %return, !dbg !3485

sw.bb11:                                          ; preds = %entry
  store i64 8, i64* %retval, align 8, !dbg !3486
  br label %return, !dbg !3486

sw.bb12:                                          ; preds = %entry
  store i64 1, i64* %retval, align 8, !dbg !3487
  br label %return, !dbg !3487

sw.bb13:                                          ; preds = %entry
  store i64 1, i64* %retval, align 8, !dbg !3488
  br label %return, !dbg !3488

sw.bb14:                                          ; preds = %entry
  store i64 1, i64* %retval, align 8, !dbg !3489
  br label %return, !dbg !3489

sw.bb15:                                          ; preds = %entry
  store i64 2, i64* %retval, align 8, !dbg !3490
  br label %return, !dbg !3490

sw.bb16:                                          ; preds = %entry
  store i64 2, i64* %retval, align 8, !dbg !3491
  br label %return, !dbg !3491

sw.bb17:                                          ; preds = %entry
  store i64 4, i64* %retval, align 8, !dbg !3492
  br label %return, !dbg !3492

sw.bb18:                                          ; preds = %entry
  store i64 2, i64* %retval, align 8, !dbg !3493
  br label %return, !dbg !3493

sw.bb19:                                          ; preds = %entry
  store i64 2, i64* %retval, align 8, !dbg !3494
  br label %return, !dbg !3494

sw.bb20:                                          ; preds = %entry, %entry, %entry
  store i64 0, i64* %retval, align 8, !dbg !3495
  br label %return, !dbg !3495

sw.bb21:                                          ; preds = %entry, %entry, %entry, %entry, %entry
  store i64 1, i64* %retval, align 8, !dbg !3496
  br label %return, !dbg !3496

sw.bb22:                                          ; preds = %entry, %entry, %entry, %entry
  store i64 0, i64* %retval, align 8, !dbg !3497
  br label %return, !dbg !3497

sw.default:                                       ; preds = %entry
  store i64 0, i64* %retval, align 8, !dbg !3498
  br label %return, !dbg !3498

return:                                           ; preds = %sw.default, %sw.bb22, %sw.bb21, %sw.bb20, %sw.bb19, %sw.bb18, %sw.bb17, %sw.bb16, %sw.bb15, %sw.bb14, %sw.bb13, %sw.bb12, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %1 = load i64, i64* %retval, align 8, !dbg !3499
  ret i64 %1, !dbg !3499
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i64 @_ZNK10tensorflow6Tensor11NumElementsEv(%"class.tensorflow::Tensor"* %this) #5 comdat align 2 !dbg !3500 {
entry:
  %this.addr = alloca %"class.tensorflow::Tensor"*, align 8
  store %"class.tensorflow::Tensor"* %this, %"class.tensorflow::Tensor"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::Tensor"** %this.addr, metadata !3501, metadata !DIExpression()), !dbg !3503
  %this1 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %this.addr, align 8
  %call = call nonnull align 8 dereferenceable(29) %"class.tensorflow::TensorShape"* @_ZNK10tensorflow6Tensor5shapeEv(%"class.tensorflow::Tensor"* %this1), !dbg !3504
  %call2 = call i64 @_ZNK10tensorflow11TensorShape12num_elementsEv(%"class.tensorflow::TensorShape"* %call), !dbg !3505
  ret i64 %call2, !dbg !3506
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(40) %"class.tensorflow::Tensor"* @_ZSt4moveIRN10tensorflow6TensorEEONSt16remove_referenceIT_E4typeEOS4_(%"class.tensorflow::Tensor"* nonnull align 8 dereferenceable(40) %__t) #4 comdat !dbg !3507 {
entry:
  %__t.addr = alloca %"class.tensorflow::Tensor"*, align 8
  store %"class.tensorflow::Tensor"* %__t, %"class.tensorflow::Tensor"** %__t.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::Tensor"** %__t.addr, metadata !3516, metadata !DIExpression()), !dbg !3517
  %0 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %__t.addr, align 8, !dbg !3518
  ret %"class.tensorflow::Tensor"* %0, !dbg !3519
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow15TensorInterfaceC2ENS_6TensorE(%"class.tensorflow::TensorInterface"* %this, %"class.tensorflow::Tensor"* %t) unnamed_addr #5 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !3520 {
entry:
  %this.addr = alloca %"class.tensorflow::TensorInterface"*, align 8
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  store %"class.tensorflow::TensorInterface"* %this, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::TensorInterface"** %this.addr, metadata !3521, metadata !DIExpression()), !dbg !3523
  call void @llvm.dbg.declare(metadata %"class.tensorflow::Tensor"* %t, metadata !3524, metadata !DIExpression()), !dbg !3525
  %this1 = load %"class.tensorflow::TensorInterface"*, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  %0 = bitcast %"class.tensorflow::TensorInterface"* %this1 to %"class.tensorflow::AbstractTensorInterface"*, !dbg !3526
  call void @_ZN10tensorflow23AbstractTensorInterfaceC2Ev(%"class.tensorflow::AbstractTensorInterface"* %0) #6, !dbg !3527
  %1 = bitcast %"class.tensorflow::TensorInterface"* %this1 to i32 (...)***, !dbg !3526
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [14 x i8*] }, { [14 x i8*] }* @_ZTVN10tensorflow15TensorInterfaceE, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %1, align 8, !dbg !3526
  %tensor_ = getelementptr inbounds %"class.tensorflow::TensorInterface", %"class.tensorflow::TensorInterface"* %this1, i32 0, i32 1, !dbg !3528
  %call = call nonnull align 8 dereferenceable(40) %"class.tensorflow::Tensor"* @_ZSt4moveIRN10tensorflow6TensorEEONSt16remove_referenceIT_E4typeEOS4_(%"class.tensorflow::Tensor"* nonnull align 8 dereferenceable(40) %t) #6, !dbg !3529
  invoke void @_ZN10tensorflow6TensorC1EOS0_(%"class.tensorflow::Tensor"* %tensor_, %"class.tensorflow::Tensor"* nonnull align 8 dereferenceable(40) %call)
          to label %invoke.cont unwind label %lpad, !dbg !3528

invoke.cont:                                      ; preds = %entry
  ret void, !dbg !3530

lpad:                                             ; preds = %entry
  %2 = landingpad { i8*, i32 }
          cleanup, !dbg !3530
  %3 = extractvalue { i8*, i32 } %2, 0, !dbg !3530
  store i8* %3, i8** %exn.slot, align 8, !dbg !3530
  %4 = extractvalue { i8*, i32 } %2, 1, !dbg !3530
  store i32 %4, i32* %ehselector.slot, align 4, !dbg !3530
  %5 = bitcast %"class.tensorflow::TensorInterface"* %this1 to %"class.tensorflow::AbstractTensorInterface"*, !dbg !3531
  call void @_ZN10tensorflow23AbstractTensorInterfaceD2Ev(%"class.tensorflow::AbstractTensorInterface"* %5) #6, !dbg !3531
  br label %eh.resume, !dbg !3531

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8, !dbg !3531
  %sel = load i32, i32* %ehselector.slot, align 4, !dbg !3531
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0, !dbg !3531
  %lpad.val2 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1, !dbg !3531
  resume { i8*, i32 } %lpad.val2, !dbg !3531
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIlSaIlEED2Ev(%"class.std::vector"* %this) unnamed_addr #4 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !3533 {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::vector"** %this.addr, metadata !3534, metadata !DIExpression()), !dbg !3535
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*, !dbg !3536
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %0, i32 0, i32 0, !dbg !3536
  %1 = bitcast %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %_M_impl to %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"*, !dbg !3538
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data", %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* %1, i32 0, i32 0, !dbg !3539
  %2 = load i64*, i64** %_M_start, align 8, !dbg !3539
  %3 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*, !dbg !3540
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %3, i32 0, i32 0, !dbg !3540
  %4 = bitcast %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %_M_impl2 to %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"*, !dbg !3541
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data", %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* %4, i32 0, i32 1, !dbg !3542
  %5 = load i64*, i64** %_M_finish, align 8, !dbg !3542
  %6 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*, !dbg !3543
  %call = call nonnull align 1 dereferenceable(1) %"class.std::allocator.0"* @_ZNSt12_Vector_baseIlSaIlEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %6) #6, !dbg !3543
  invoke void @_ZSt8_DestroyIPllEvT_S1_RSaIT0_E(i64* %2, i64* %5, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %call)
          to label %invoke.cont unwind label %lpad, !dbg !3544

invoke.cont:                                      ; preds = %entry
  %7 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*, !dbg !3545
  call void @_ZNSt12_Vector_baseIlSaIlEED2Ev(%"struct.std::_Vector_base"* %7) #6, !dbg !3545
  ret void, !dbg !3546

lpad:                                             ; preds = %entry
  %8 = landingpad { i8*, i32 }
          catch i8* null, !dbg !3545
  %9 = extractvalue { i8*, i32 } %8, 0, !dbg !3545
  store i8* %9, i8** %exn.slot, align 8, !dbg !3545
  %10 = extractvalue { i8*, i32 } %8, 1, !dbg !3545
  store i32 %10, i32* %ehselector.slot, align 4, !dbg !3545
  %11 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*, !dbg !3545
  call void @_ZNSt12_Vector_baseIlSaIlEED2Ev(%"struct.std::_Vector_base"* %11) #6, !dbg !3545
  br label %terminate.handler, !dbg !3545

terminate.handler:                                ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8, !dbg !3545
  call void @__clang_call_terminate(i8* %exn) #14, !dbg !3545
  unreachable, !dbg !3545
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 1 dereferenceable(1) %"class.std::allocator.0"* @_ZNSt12_Vector_baseIlSaIlEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %this) #4 comdat align 2 !dbg !3547 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base"*, align 8
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::_Vector_base"** %this.addr, metadata !3548, metadata !DIExpression()), !dbg !3550
  %this1 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0, !dbg !3551
  %0 = bitcast %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %_M_impl to %"class.std::allocator.0"*, !dbg !3552
  ret %"class.std::allocator.0"* %0, !dbg !3553
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPllEvT_S1_RSaIT0_E(i64* %__first, i64* %__last, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %0) #5 comdat !dbg !3554 {
entry:
  %__first.addr = alloca i64*, align 8
  %__last.addr = alloca i64*, align 8
  %.addr = alloca %"class.std::allocator.0"*, align 8
  store i64* %__first, i64** %__first.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %__first.addr, metadata !3559, metadata !DIExpression()), !dbg !3560
  store i64* %__last, i64** %__last.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %__last.addr, metadata !3561, metadata !DIExpression()), !dbg !3562
  store %"class.std::allocator.0"* %0, %"class.std::allocator.0"** %.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::allocator.0"** %.addr, metadata !3563, metadata !DIExpression()), !dbg !3564
  %1 = load i64*, i64** %__first.addr, align 8, !dbg !3565
  %2 = load i64*, i64** %__last.addr, align 8, !dbg !3566
  call void @_ZSt8_DestroyIPlEvT_S1_(i64* %1, i64* %2), !dbg !3567
  ret void, !dbg !3568
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIlSaIlEED2Ev(%"struct.std::_Vector_base"* %this) unnamed_addr #4 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !3569 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base"*, align 8
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::_Vector_base"** %this.addr, metadata !3570, metadata !DIExpression()), !dbg !3571
  %this1 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0, !dbg !3572
  %0 = bitcast %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %_M_impl to %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"*, !dbg !3572
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data", %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* %0, i32 0, i32 0, !dbg !3574
  %1 = load i64*, i64** %_M_start, align 8, !dbg !3574
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0, !dbg !3575
  %2 = bitcast %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %_M_impl2 to %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"*, !dbg !3575
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data", %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* %2, i32 0, i32 2, !dbg !3576
  %3 = load i64*, i64** %_M_end_of_storage, align 8, !dbg !3576
  %_M_impl3 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0, !dbg !3577
  %4 = bitcast %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %_M_impl3 to %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"*, !dbg !3577
  %_M_start4 = getelementptr inbounds %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data", %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* %4, i32 0, i32 0, !dbg !3578
  %5 = load i64*, i64** %_M_start4, align 8, !dbg !3578
  %sub.ptr.lhs.cast = ptrtoint i64* %3 to i64, !dbg !3579
  %sub.ptr.rhs.cast = ptrtoint i64* %5 to i64, !dbg !3579
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !3579
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8, !dbg !3579
  invoke void @_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm(%"struct.std::_Vector_base"* %this1, i64* %1, i64 %sub.ptr.div)
          to label %invoke.cont unwind label %lpad, !dbg !3580

invoke.cont:                                      ; preds = %entry
  %_M_impl5 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0, !dbg !3581
  call void @_ZNSt12_Vector_baseIlSaIlEE12_Vector_implD2Ev(%"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %_M_impl5) #6, !dbg !3581
  ret void, !dbg !3582

lpad:                                             ; preds = %entry
  %6 = landingpad { i8*, i32 }
          catch i8* null, !dbg !3581
  %7 = extractvalue { i8*, i32 } %6, 0, !dbg !3581
  store i8* %7, i8** %exn.slot, align 8, !dbg !3581
  %8 = extractvalue { i8*, i32 } %6, 1, !dbg !3581
  store i32 %8, i32* %ehselector.slot, align 4, !dbg !3581
  %_M_impl6 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0, !dbg !3581
  call void @_ZNSt12_Vector_baseIlSaIlEE12_Vector_implD2Ev(%"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %_M_impl6) #6, !dbg !3581
  br label %terminate.handler, !dbg !3581

terminate.handler:                                ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8, !dbg !3581
  call void @__clang_call_terminate(i8* %exn) #14, !dbg !3581
  unreachable, !dbg !3581
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm(%"struct.std::_Vector_base"* %this, i64* %__p, i64 %__n) #5 comdat align 2 !dbg !3583 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base"*, align 8
  %__p.addr = alloca i64*, align 8
  %__n.addr = alloca i64, align 8
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::_Vector_base"** %this.addr, metadata !3584, metadata !DIExpression()), !dbg !3585
  store i64* %__p, i64** %__p.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %__p.addr, metadata !3586, metadata !DIExpression()), !dbg !3587
  store i64 %__n, i64* %__n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %__n.addr, metadata !3588, metadata !DIExpression()), !dbg !3589
  %this1 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %this.addr, align 8
  %0 = load i64*, i64** %__p.addr, align 8, !dbg !3590
  %tobool = icmp ne i64* %0, null, !dbg !3590
  br i1 %tobool, label %if.then, label %if.end, !dbg !3592

if.then:                                          ; preds = %entry
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0, !dbg !3593
  %1 = bitcast %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %_M_impl to %"class.std::allocator.0"*, !dbg !3593
  %2 = load i64*, i64** %__p.addr, align 8, !dbg !3594
  %3 = load i64, i64* %__n.addr, align 8, !dbg !3595
  call void @_ZNSt16allocator_traitsISaIlEE10deallocateERS0_Plm(%"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %1, i64* %2, i64 %3), !dbg !3596
  br label %if.end, !dbg !3596

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !3597
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIlSaIlEE12_Vector_implD2Ev(%"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %this) unnamed_addr #4 comdat align 2 !dbg !3598 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"*, align 8
  store %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %this, %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"** %this.addr, metadata !3600, metadata !DIExpression()), !dbg !3602
  %this1 = load %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"*, %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"** %this.addr, align 8
  %0 = bitcast %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %this1 to %"class.std::allocator.0"*, !dbg !3603
  call void @_ZNSaIlED2Ev(%"class.std::allocator.0"* %0) #6, !dbg !3603
  ret void, !dbg !3605
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIlEE10deallocateERS0_Plm(%"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %__a, i64* %__p, i64 %__n) #5 comdat align 2 !dbg !3606 {
entry:
  %__a.addr = alloca %"class.std::allocator.0"*, align 8
  %__p.addr = alloca i64*, align 8
  %__n.addr = alloca i64, align 8
  store %"class.std::allocator.0"* %__a, %"class.std::allocator.0"** %__a.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::allocator.0"** %__a.addr, metadata !3607, metadata !DIExpression()), !dbg !3608
  store i64* %__p, i64** %__p.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %__p.addr, metadata !3609, metadata !DIExpression()), !dbg !3610
  store i64 %__n, i64* %__n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %__n.addr, metadata !3611, metadata !DIExpression()), !dbg !3612
  %0 = load %"class.std::allocator.0"*, %"class.std::allocator.0"** %__a.addr, align 8, !dbg !3613
  %1 = bitcast %"class.std::allocator.0"* %0 to %"class.std::allocator.0"*, !dbg !3613
  %2 = load i64*, i64** %__p.addr, align 8, !dbg !3614
  %3 = load i64, i64* %__n.addr, align 8, !dbg !3615
  call void @_ZN9__gnu_cxx13new_allocatorIlE10deallocateEPlm(%"class.std::allocator.0"* %1, i64* %2, i64 %3), !dbg !3616
  ret void, !dbg !3617
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorIlE10deallocateEPlm(%"class.std::allocator.0"* %this, i64* %__p, i64 %__t) #4 comdat align 2 !dbg !3618 {
entry:
  %this.addr = alloca %"class.std::allocator.0"*, align 8
  %__p.addr = alloca i64*, align 8
  %__t.addr = alloca i64, align 8
  store %"class.std::allocator.0"* %this, %"class.std::allocator.0"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::allocator.0"** %this.addr, metadata !3619, metadata !DIExpression()), !dbg !3621
  store i64* %__p, i64** %__p.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %__p.addr, metadata !3622, metadata !DIExpression()), !dbg !3623
  store i64 %__t, i64* %__t.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %__t.addr, metadata !3624, metadata !DIExpression()), !dbg !3625
  %this1 = load %"class.std::allocator.0"*, %"class.std::allocator.0"** %this.addr, align 8
  %0 = load i64*, i64** %__p.addr, align 8, !dbg !3626
  %1 = bitcast i64* %0 to i8*, !dbg !3626
  call void @_ZdlPv(i8* %1) #6, !dbg !3627
  ret void, !dbg !3628
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPlEvT_S1_(i64* %__first, i64* %__last) #5 comdat !dbg !3629 {
entry:
  %__first.addr = alloca i64*, align 8
  %__last.addr = alloca i64*, align 8
  store i64* %__first, i64** %__first.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %__first.addr, metadata !3634, metadata !DIExpression()), !dbg !3635
  store i64* %__last, i64** %__last.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %__last.addr, metadata !3636, metadata !DIExpression()), !dbg !3637
  %0 = load i64*, i64** %__first.addr, align 8, !dbg !3638
  %1 = load i64*, i64** %__last.addr, align 8, !dbg !3639
  call void @_ZNSt12_Destroy_auxILb1EE9__destroyIPlEEvT_S3_(i64* %0, i64* %1), !dbg !3640
  ret void, !dbg !3641
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb1EE9__destroyIPlEEvT_S3_(i64* %0, i64* %1) #4 comdat align 2 !dbg !3642 {
entry:
  %.addr = alloca i64*, align 8
  %.addr1 = alloca i64*, align 8
  store i64* %0, i64** %.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %.addr, metadata !3647, metadata !DIExpression()), !dbg !3648
  store i64* %1, i64** %.addr1, align 8
  call void @llvm.dbg.declare(metadata i64** %.addr1, metadata !3649, metadata !DIExpression()), !dbg !3650
  ret void, !dbg !3651
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow23AbstractTensorInterfaceC2Ev(%"class.tensorflow::AbstractTensorInterface"* %this) unnamed_addr #4 comdat align 2 !dbg !3652 {
entry:
  %this.addr = alloca %"class.tensorflow::AbstractTensorInterface"*, align 8
  store %"class.tensorflow::AbstractTensorInterface"* %this, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::AbstractTensorInterface"** %this.addr, metadata !3654, metadata !DIExpression()), !dbg !3655
  %this1 = load %"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  %0 = bitcast %"class.tensorflow::AbstractTensorInterface"* %this1 to i32 (...)***, !dbg !3656
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [14 x i8*] }, { [14 x i8*] }* @_ZTVN10tensorflow23AbstractTensorInterfaceE, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %0, align 8, !dbg !3656
  ret void, !dbg !3656
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow23AbstractTensorInterfaceD2Ev(%"class.tensorflow::AbstractTensorInterface"* %this) unnamed_addr #4 comdat align 2 !dbg !3657 {
entry:
  %this.addr = alloca %"class.tensorflow::AbstractTensorInterface"*, align 8
  store %"class.tensorflow::AbstractTensorInterface"* %this, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::AbstractTensorInterface"** %this.addr, metadata !3658, metadata !DIExpression()), !dbg !3659
  %this1 = load %"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  ret void, !dbg !3660
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow15TensorInterface7ReleaseEv(%"class.tensorflow::TensorInterface"* %this) unnamed_addr #4 comdat align 2 !dbg !3661 {
entry:
  %this.addr = alloca %"class.tensorflow::TensorInterface"*, align 8
  store %"class.tensorflow::TensorInterface"* %this, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::TensorInterface"** %this.addr, metadata !3662, metadata !DIExpression()), !dbg !3663
  %this1 = load %"class.tensorflow::TensorInterface"*, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  %isnull = icmp eq %"class.tensorflow::TensorInterface"* %this1, null, !dbg !3664
  br i1 %isnull, label %delete.end, label %delete.notnull, !dbg !3664

delete.notnull:                                   ; preds = %entry
  %0 = bitcast %"class.tensorflow::TensorInterface"* %this1 to void (%"class.tensorflow::TensorInterface"*)***, !dbg !3664
  %vtable = load void (%"class.tensorflow::TensorInterface"*)**, void (%"class.tensorflow::TensorInterface"*)*** %0, align 8, !dbg !3664
  %vfn = getelementptr inbounds void (%"class.tensorflow::TensorInterface"*)*, void (%"class.tensorflow::TensorInterface"*)** %vtable, i64 11, !dbg !3664
  %1 = load void (%"class.tensorflow::TensorInterface"*)*, void (%"class.tensorflow::TensorInterface"*)** %vfn, align 8, !dbg !3664
  call void %1(%"class.tensorflow::TensorInterface"* %this1) #6, !dbg !3664
  br label %delete.end, !dbg !3664

delete.end:                                       ; preds = %delete.notnull, %entry
  ret void, !dbg !3665
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i32 @_ZNK10tensorflow15TensorInterface4TypeEv(%"class.tensorflow::TensorInterface"* %this) unnamed_addr #4 comdat align 2 !dbg !3666 {
entry:
  %this.addr = alloca %"class.tensorflow::TensorInterface"*, align 8
  store %"class.tensorflow::TensorInterface"* %this, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::TensorInterface"** %this.addr, metadata !3667, metadata !DIExpression()), !dbg !3669
  %this1 = load %"class.tensorflow::TensorInterface"*, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  ret i32 0, !dbg !3670
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i32 @_ZNK10tensorflow15TensorInterface7NumDimsEv(%"class.tensorflow::TensorInterface"* %this) unnamed_addr #4 comdat align 2 !dbg !3671 {
entry:
  %this.addr = alloca %"class.tensorflow::TensorInterface"*, align 8
  store %"class.tensorflow::TensorInterface"* %this, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::TensorInterface"** %this.addr, metadata !3672, metadata !DIExpression()), !dbg !3673
  %this1 = load %"class.tensorflow::TensorInterface"*, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  ret i32 0, !dbg !3674
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @_ZNK10tensorflow15TensorInterface3DimEi(%"class.tensorflow::TensorInterface"* %this, i32 %0) unnamed_addr #4 comdat align 2 !dbg !3675 {
entry:
  %this.addr = alloca %"class.tensorflow::TensorInterface"*, align 8
  %.addr = alloca i32, align 4
  store %"class.tensorflow::TensorInterface"* %this, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::TensorInterface"** %this.addr, metadata !3676, metadata !DIExpression()), !dbg !3677
  store i32 %0, i32* %.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %.addr, metadata !3678, metadata !DIExpression()), !dbg !3679
  %this1 = load %"class.tensorflow::TensorInterface"*, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  ret i64 0, !dbg !3680
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @_ZNK10tensorflow15TensorInterface11NumElementsEv(%"class.tensorflow::TensorInterface"* %this) unnamed_addr #4 comdat align 2 !dbg !3681 {
entry:
  %this.addr = alloca %"class.tensorflow::TensorInterface"*, align 8
  store %"class.tensorflow::TensorInterface"* %this, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::TensorInterface"** %this.addr, metadata !3682, metadata !DIExpression()), !dbg !3683
  %this1 = load %"class.tensorflow::TensorInterface"*, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  ret i64 0, !dbg !3684
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @_ZNK10tensorflow15TensorInterface8ByteSizeEv(%"class.tensorflow::TensorInterface"* %this) unnamed_addr #4 comdat align 2 !dbg !3685 {
entry:
  %this.addr = alloca %"class.tensorflow::TensorInterface"*, align 8
  store %"class.tensorflow::TensorInterface"* %this, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::TensorInterface"** %this.addr, metadata !3686, metadata !DIExpression()), !dbg !3687
  %this1 = load %"class.tensorflow::TensorInterface"*, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  ret i64 0, !dbg !3688
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i8* @_ZNK10tensorflow15TensorInterface4DataEv(%"class.tensorflow::TensorInterface"* %this) unnamed_addr #4 comdat align 2 !dbg !3689 {
entry:
  %this.addr = alloca %"class.tensorflow::TensorInterface"*, align 8
  store %"class.tensorflow::TensorInterface"* %this, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::TensorInterface"** %this.addr, metadata !3690, metadata !DIExpression()), !dbg !3691
  %this1 = load %"class.tensorflow::TensorInterface"*, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  ret i8* null, !dbg !3692
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local zeroext i1 @_ZNK10tensorflow15TensorInterface9IsAlignedEv(%"class.tensorflow::TensorInterface"* %this) unnamed_addr #4 comdat align 2 !dbg !3693 {
entry:
  %this.addr = alloca %"class.tensorflow::TensorInterface"*, align 8
  store %"class.tensorflow::TensorInterface"* %this, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::TensorInterface"** %this.addr, metadata !3694, metadata !DIExpression()), !dbg !3695
  %this1 = load %"class.tensorflow::TensorInterface"*, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  ret i1 true, !dbg !3696
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local zeroext i1 @_ZNK10tensorflow15TensorInterface7CanMoveEv(%"class.tensorflow::TensorInterface"* %this) unnamed_addr #4 comdat align 2 !dbg !3697 {
entry:
  %this.addr = alloca %"class.tensorflow::TensorInterface"*, align 8
  store %"class.tensorflow::TensorInterface"* %this, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::TensorInterface"** %this.addr, metadata !3698, metadata !DIExpression()), !dbg !3699
  %this1 = load %"class.tensorflow::TensorInterface"*, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  ret i1 true, !dbg !3700
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNK10tensorflow15TensorInterface14SummarizeValueB5cxx11Ev(%"class.std::__cxx11::basic_string"* noalias sret align 8 %agg.result, %"class.tensorflow::TensorInterface"* %this) unnamed_addr #4 comdat align 2 !dbg !3701 {
entry:
  %result.ptr = alloca i8*, align 8
  %this.addr = alloca %"class.tensorflow::TensorInterface"*, align 8
  %0 = bitcast %"class.std::__cxx11::basic_string"* %agg.result to i8*
  store i8* %0, i8** %result.ptr, align 8
  store %"class.tensorflow::TensorInterface"* %this, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::TensorInterface"** %this.addr, metadata !3702, metadata !DIExpression()), !dbg !3703
  %this1 = load %"class.tensorflow::TensorInterface"*, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev(%"class.std::__cxx11::basic_string"* %agg.result) #6, !dbg !3704
  ret void, !dbg !3705
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow15TensorInterfaceD2Ev(%"class.tensorflow::TensorInterface"* %this) unnamed_addr #4 comdat align 2 !dbg !3706 {
entry:
  %this.addr = alloca %"class.tensorflow::TensorInterface"*, align 8
  store %"class.tensorflow::TensorInterface"* %this, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::TensorInterface"** %this.addr, metadata !3707, metadata !DIExpression()), !dbg !3708
  %this1 = load %"class.tensorflow::TensorInterface"*, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  %0 = bitcast %"class.tensorflow::TensorInterface"* %this1 to i32 (...)***, !dbg !3709
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [14 x i8*] }, { [14 x i8*] }* @_ZTVN10tensorflow15TensorInterfaceE, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %0, align 8, !dbg !3709
  %tensor_ = getelementptr inbounds %"class.tensorflow::TensorInterface", %"class.tensorflow::TensorInterface"* %this1, i32 0, i32 1, !dbg !3710
  call void @_ZN10tensorflow6TensorD1Ev(%"class.tensorflow::Tensor"* %tensor_) #6, !dbg !3710
  %1 = bitcast %"class.tensorflow::TensorInterface"* %this1 to %"class.tensorflow::AbstractTensorInterface"*, !dbg !3710
  call void @_ZN10tensorflow23AbstractTensorInterfaceD2Ev(%"class.tensorflow::AbstractTensorInterface"* %1) #6, !dbg !3710
  ret void, !dbg !3712
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow15TensorInterfaceD0Ev(%"class.tensorflow::TensorInterface"* %this) unnamed_addr #4 comdat align 2 !dbg !3713 {
entry:
  %this.addr = alloca %"class.tensorflow::TensorInterface"*, align 8
  store %"class.tensorflow::TensorInterface"* %this, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::TensorInterface"** %this.addr, metadata !3714, metadata !DIExpression()), !dbg !3715
  %this1 = load %"class.tensorflow::TensorInterface"*, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  call void @_ZN10tensorflow15TensorInterfaceD2Ev(%"class.tensorflow::TensorInterface"* %this1) #6, !dbg !3716
  %0 = bitcast %"class.tensorflow::TensorInterface"* %this1 to i8*, !dbg !3716
  call void @_ZdlPv(i8* %0) #17, !dbg !3716
  ret void, !dbg !3717
}

; Function Attrs: nounwind
declare dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev(%"class.std::__cxx11::basic_string"*) unnamed_addr #3

declare dso_local void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow23AbstractTensorInterfaceD0Ev(%"class.tensorflow::AbstractTensorInterface"* %this) unnamed_addr #4 comdat align 2 !dbg !3718 {
entry:
  %this.addr = alloca %"class.tensorflow::AbstractTensorInterface"*, align 8
  store %"class.tensorflow::AbstractTensorInterface"* %this, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::AbstractTensorInterface"** %this.addr, metadata !3719, metadata !DIExpression()), !dbg !3720
  %this1 = load %"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  call void @abort(), !dbg !3721
  unreachable, !dbg !3721
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(29) %"class.tensorflow::TensorShape"* @_ZNK10tensorflow6Tensor5shapeEv(%"class.tensorflow::Tensor"* %this) #4 comdat align 2 !dbg !3722 {
entry:
  %this.addr = alloca %"class.tensorflow::Tensor"*, align 8
  store %"class.tensorflow::Tensor"* %this, %"class.tensorflow::Tensor"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::Tensor"** %this.addr, metadata !3723, metadata !DIExpression()), !dbg !3724
  %this1 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %this.addr, align 8
  %shape_ = getelementptr inbounds %"class.tensorflow::Tensor", %"class.tensorflow::Tensor"* %this1, i32 0, i32 0, !dbg !3725
  ret %"class.tensorflow::TensorShape"* %shape_, !dbg !3726
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @_ZNK10tensorflow11TensorShape12num_elementsEv(%"class.tensorflow::TensorShape"* %this) #4 comdat align 2 !dbg !3727 {
entry:
  %retval = alloca i64, align 8
  %this.addr = alloca %"class.tensorflow::TensorShape"*, align 8
  %prod = alloca i64, align 8
  %__range2 = alloca %"class.std::vector"*, align 8
  %__begin2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__end2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %d = alloca i64, align 8
  store %"class.tensorflow::TensorShape"* %this, %"class.tensorflow::TensorShape"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::TensorShape"** %this.addr, metadata !3728, metadata !DIExpression()), !dbg !3729
  %this1 = load %"class.tensorflow::TensorShape"*, %"class.tensorflow::TensorShape"** %this.addr, align 8
  %dims_ = getelementptr inbounds %"class.tensorflow::TensorShape", %"class.tensorflow::TensorShape"* %this1, i32 0, i32 0, !dbg !3730
  %call = call zeroext i1 @_ZNKSt6vectorIlSaIlEE5emptyEv(%"class.std::vector"* %dims_) #6, !dbg !3732
  br i1 %call, label %if.then, label %if.end, !dbg !3733

if.then:                                          ; preds = %entry
  store i64 1, i64* %retval, align 8, !dbg !3734
  br label %return, !dbg !3734

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %prod, metadata !3735, metadata !DIExpression()), !dbg !3736
  store i64 1, i64* %prod, align 8, !dbg !3736
  call void @llvm.dbg.declare(metadata %"class.std::vector"** %__range2, metadata !3737, metadata !DIExpression()), !dbg !3739
  %dims_2 = getelementptr inbounds %"class.tensorflow::TensorShape", %"class.tensorflow::TensorShape"* %this1, i32 0, i32 0, !dbg !3740
  store %"class.std::vector"* %dims_2, %"class.std::vector"** %__range2, align 8, !dbg !3740
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator"* %__begin2, metadata !3741, metadata !DIExpression()), !dbg !3739
  %0 = load %"class.std::vector"*, %"class.std::vector"** %__range2, align 8, !dbg !3742
  %call3 = call i64* @_ZNKSt6vectorIlSaIlEE5beginEv(%"class.std::vector"* %0) #6, !dbg !3742
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__begin2, i32 0, i32 0, !dbg !3742
  store i64* %call3, i64** %coerce.dive, align 8, !dbg !3742
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator"* %__end2, metadata !3743, metadata !DIExpression()), !dbg !3739
  %1 = load %"class.std::vector"*, %"class.std::vector"** %__range2, align 8, !dbg !3742
  %call4 = call i64* @_ZNKSt6vectorIlSaIlEE3endEv(%"class.std::vector"* %1) #6, !dbg !3742
  %coerce.dive5 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__end2, i32 0, i32 0, !dbg !3742
  store i64* %call4, i64** %coerce.dive5, align 8, !dbg !3742
  br label %for.cond, !dbg !3742

for.cond:                                         ; preds = %for.inc, %if.end
  %call6 = call zeroext i1 @_ZN9__gnu_cxxneIPKlSt6vectorIlSaIlEEEEbRKNS_17__normal_iteratorIT_T0_EESB_(%"class.__gnu_cxx::__normal_iterator"* nonnull align 8 dereferenceable(8) %__begin2, %"class.__gnu_cxx::__normal_iterator"* nonnull align 8 dereferenceable(8) %__end2) #6, !dbg !3742
  br i1 %call6, label %for.body, label %for.end, !dbg !3742

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i64* %d, metadata !3744, metadata !DIExpression()), !dbg !3746
  %call7 = call nonnull align 8 dereferenceable(8) i64* @_ZNK9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEdeEv(%"class.__gnu_cxx::__normal_iterator"* %__begin2) #6, !dbg !3747
  %2 = load i64, i64* %call7, align 8, !dbg !3747
  store i64 %2, i64* %d, align 8, !dbg !3746
  %3 = load i64, i64* %d, align 8, !dbg !3748
  %cmp = icmp sle i64 %3, 0, !dbg !3751
  br i1 %cmp, label %if.then8, label %if.end9, !dbg !3752

if.then8:                                         ; preds = %for.body
  store i64 0, i64* %retval, align 8, !dbg !3753
  br label %return, !dbg !3753

if.end9:                                          ; preds = %for.body
  %4 = load i64, i64* %d, align 8, !dbg !3754
  %5 = load i64, i64* %prod, align 8, !dbg !3755
  %mul = mul nsw i64 %5, %4, !dbg !3755
  store i64 %mul, i64* %prod, align 8, !dbg !3755
  br label %for.inc, !dbg !3756

for.inc:                                          ; preds = %if.end9
  %call10 = call nonnull align 8 dereferenceable(8) %"class.__gnu_cxx::__normal_iterator"* @_ZN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEppEv(%"class.__gnu_cxx::__normal_iterator"* %__begin2) #6, !dbg !3742
  br label %for.cond, !dbg !3742, !llvm.loop !3757

for.end:                                          ; preds = %for.cond
  %6 = load i64, i64* %prod, align 8, !dbg !3759
  store i64 %6, i64* %retval, align 8, !dbg !3760
  br label %return, !dbg !3760

return:                                           ; preds = %for.end, %if.then8, %if.then
  %7 = load i64, i64* %retval, align 8, !dbg !3761
  ret i64 %7, !dbg !3761
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local zeroext i1 @_ZNKSt6vectorIlSaIlEE5emptyEv(%"class.std::vector"* %this) #4 comdat align 2 !dbg !3762 {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  %ref.tmp = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %ref.tmp2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::vector"** %this.addr, metadata !3763, metadata !DIExpression()), !dbg !3765
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %call = call i64* @_ZNKSt6vectorIlSaIlEE5beginEv(%"class.std::vector"* %this1) #6, !dbg !3766
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %ref.tmp, i32 0, i32 0, !dbg !3766
  store i64* %call, i64** %coerce.dive, align 8, !dbg !3766
  %call3 = call i64* @_ZNKSt6vectorIlSaIlEE3endEv(%"class.std::vector"* %this1) #6, !dbg !3767
  %coerce.dive4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %ref.tmp2, i32 0, i32 0, !dbg !3767
  store i64* %call3, i64** %coerce.dive4, align 8, !dbg !3767
  %call5 = call zeroext i1 @_ZN9__gnu_cxxeqIPKlSt6vectorIlSaIlEEEEbRKNS_17__normal_iteratorIT_T0_EESB_(%"class.__gnu_cxx::__normal_iterator"* nonnull align 8 dereferenceable(8) %ref.tmp, %"class.__gnu_cxx::__normal_iterator"* nonnull align 8 dereferenceable(8) %ref.tmp2) #6, !dbg !3768
  ret i1 %call5, !dbg !3769
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64* @_ZNKSt6vectorIlSaIlEE5beginEv(%"class.std::vector"* %this) #4 comdat align 2 !dbg !3770 {
entry:
  %retval = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %this.addr = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::vector"** %this.addr, metadata !3771, metadata !DIExpression()), !dbg !3772
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*, !dbg !3773
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %0, i32 0, i32 0, !dbg !3773
  %1 = bitcast %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %_M_impl to %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"*, !dbg !3774
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data", %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* %1, i32 0, i32 0, !dbg !3775
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEC2ERKS2_(%"class.__gnu_cxx::__normal_iterator"* %retval, i64** nonnull align 8 dereferenceable(8) %_M_start) #6, !dbg !3776
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %retval, i32 0, i32 0, !dbg !3777
  %2 = load i64*, i64** %coerce.dive, align 8, !dbg !3777
  ret i64* %2, !dbg !3777
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64* @_ZNKSt6vectorIlSaIlEE3endEv(%"class.std::vector"* %this) #4 comdat align 2 !dbg !3778 {
entry:
  %retval = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %this.addr = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::vector"** %this.addr, metadata !3779, metadata !DIExpression()), !dbg !3780
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*, !dbg !3781
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %0, i32 0, i32 0, !dbg !3781
  %1 = bitcast %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %_M_impl to %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"*, !dbg !3782
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data", %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* %1, i32 0, i32 1, !dbg !3783
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEC2ERKS2_(%"class.__gnu_cxx::__normal_iterator"* %retval, i64** nonnull align 8 dereferenceable(8) %_M_finish) #6, !dbg !3784
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %retval, i32 0, i32 0, !dbg !3785
  %2 = load i64*, i64** %coerce.dive, align 8, !dbg !3785
  ret i64* %2, !dbg !3785
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local zeroext i1 @_ZN9__gnu_cxxneIPKlSt6vectorIlSaIlEEEEbRKNS_17__normal_iteratorIT_T0_EESB_(%"class.__gnu_cxx::__normal_iterator"* nonnull align 8 dereferenceable(8) %__lhs, %"class.__gnu_cxx::__normal_iterator"* nonnull align 8 dereferenceable(8) %__rhs) #4 comdat !dbg !3786 {
entry:
  %__lhs.addr = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  %__rhs.addr = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %__lhs, %"class.__gnu_cxx::__normal_iterator"** %__lhs.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator"** %__lhs.addr, metadata !3790, metadata !DIExpression()), !dbg !3791
  store %"class.__gnu_cxx::__normal_iterator"* %__rhs, %"class.__gnu_cxx::__normal_iterator"** %__rhs.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator"** %__rhs.addr, metadata !3792, metadata !DIExpression()), !dbg !3793
  %0 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %__lhs.addr, align 8, !dbg !3794
  %call = call nonnull align 8 dereferenceable(8) i64** @_ZNK9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %0) #6, !dbg !3795
  %1 = load i64*, i64** %call, align 8, !dbg !3795
  %2 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %__rhs.addr, align 8, !dbg !3796
  %call1 = call nonnull align 8 dereferenceable(8) i64** @_ZNK9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %2) #6, !dbg !3797
  %3 = load i64*, i64** %call1, align 8, !dbg !3797
  %cmp = icmp ne i64* %1, %3, !dbg !3798
  ret i1 %cmp, !dbg !3799
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) i64* @_ZNK9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEdeEv(%"class.__gnu_cxx::__normal_iterator"* %this) #4 comdat align 2 !dbg !3800 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %this, %"class.__gnu_cxx::__normal_iterator"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator"** %this.addr, metadata !3801, metadata !DIExpression()), !dbg !3803
  %this1 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %this.addr, align 8
  %_M_current = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %this1, i32 0, i32 0, !dbg !3804
  %0 = load i64*, i64** %_M_current, align 8, !dbg !3804
  ret i64* %0, !dbg !3805
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) %"class.__gnu_cxx::__normal_iterator"* @_ZN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEppEv(%"class.__gnu_cxx::__normal_iterator"* %this) #4 comdat align 2 !dbg !3806 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %this, %"class.__gnu_cxx::__normal_iterator"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator"** %this.addr, metadata !3807, metadata !DIExpression()), !dbg !3809
  %this1 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %this.addr, align 8
  %_M_current = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %this1, i32 0, i32 0, !dbg !3810
  %0 = load i64*, i64** %_M_current, align 8, !dbg !3811
  %incdec.ptr = getelementptr inbounds i64, i64* %0, i32 1, !dbg !3811
  store i64* %incdec.ptr, i64** %_M_current, align 8, !dbg !3811
  ret %"class.__gnu_cxx::__normal_iterator"* %this1, !dbg !3812
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) i64** @_ZNK9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %this) #4 comdat align 2 !dbg !3813 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %this, %"class.__gnu_cxx::__normal_iterator"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator"** %this.addr, metadata !3814, metadata !DIExpression()), !dbg !3815
  %this1 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %this.addr, align 8
  %_M_current = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %this1, i32 0, i32 0, !dbg !3816
  ret i64** %_M_current, !dbg !3817
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEC2ERKS2_(%"class.__gnu_cxx::__normal_iterator"* %this, i64** nonnull align 8 dereferenceable(8) %__i) unnamed_addr #4 comdat align 2 !dbg !3818 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  %__i.addr = alloca i64**, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %this, %"class.__gnu_cxx::__normal_iterator"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator"** %this.addr, metadata !3819, metadata !DIExpression()), !dbg !3820
  store i64** %__i, i64*** %__i.addr, align 8
  call void @llvm.dbg.declare(metadata i64*** %__i.addr, metadata !3821, metadata !DIExpression()), !dbg !3822
  %this1 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %this.addr, align 8
  %_M_current = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %this1, i32 0, i32 0, !dbg !3823
  %0 = load i64**, i64*** %__i.addr, align 8, !dbg !3824
  %1 = load i64*, i64** %0, align 8, !dbg !3824
  store i64* %1, i64** %_M_current, align 8, !dbg !3823
  ret void, !dbg !3825
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local zeroext i1 @_ZN9__gnu_cxxeqIPKlSt6vectorIlSaIlEEEEbRKNS_17__normal_iteratorIT_T0_EESB_(%"class.__gnu_cxx::__normal_iterator"* nonnull align 8 dereferenceable(8) %__lhs, %"class.__gnu_cxx::__normal_iterator"* nonnull align 8 dereferenceable(8) %__rhs) #4 comdat !dbg !3826 {
entry:
  %__lhs.addr = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  %__rhs.addr = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %__lhs, %"class.__gnu_cxx::__normal_iterator"** %__lhs.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator"** %__lhs.addr, metadata !3827, metadata !DIExpression()), !dbg !3828
  store %"class.__gnu_cxx::__normal_iterator"* %__rhs, %"class.__gnu_cxx::__normal_iterator"** %__rhs.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator"** %__rhs.addr, metadata !3829, metadata !DIExpression()), !dbg !3830
  %0 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %__lhs.addr, align 8, !dbg !3831
  %call = call nonnull align 8 dereferenceable(8) i64** @_ZNK9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %0) #6, !dbg !3832
  %1 = load i64*, i64** %call, align 8, !dbg !3832
  %2 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %__rhs.addr, align 8, !dbg !3833
  %call1 = call nonnull align 8 dereferenceable(8) i64** @_ZNK9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %2) #6, !dbg !3834
  %3 = load i64*, i64** %call1, align 8, !dbg !3834
  %cmp = icmp eq i64* %1, %3, !dbg !3835
  ret i1 %cmp, !dbg !3836
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIlSaIlEEC2ERKS1_(%"class.std::vector"* %this, %"class.std::vector"* nonnull align 8 dereferenceable(24) %__x) unnamed_addr #5 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !3837 {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  %__x.addr = alloca %"class.std::vector"*, align 8
  %ref.tmp = alloca %"class.std::allocator.0", align 1
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  %agg.tmp = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp4 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::vector"** %this.addr, metadata !3838, metadata !DIExpression()), !dbg !3839
  store %"class.std::vector"* %__x, %"class.std::vector"** %__x.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::vector"** %__x.addr, metadata !3840, metadata !DIExpression()), !dbg !3841
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*, !dbg !3842
  %1 = load %"class.std::vector"*, %"class.std::vector"** %__x.addr, align 8, !dbg !3843
  %call = call i64 @_ZNKSt6vectorIlSaIlEE4sizeEv(%"class.std::vector"* %1) #6, !dbg !3844
  %2 = load %"class.std::vector"*, %"class.std::vector"** %__x.addr, align 8, !dbg !3845
  %3 = bitcast %"class.std::vector"* %2 to %"struct.std::_Vector_base"*, !dbg !3845
  %call2 = call nonnull align 1 dereferenceable(1) %"class.std::allocator.0"* @_ZNKSt12_Vector_baseIlSaIlEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %3) #6, !dbg !3846
  call void @_ZN9__gnu_cxx14__alloc_traitsISaIlElE17_S_select_on_copyERKS1_(%"class.std::allocator.0"* sret align 1 %ref.tmp, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %call2), !dbg !3847
  invoke void @_ZNSt12_Vector_baseIlSaIlEEC2EmRKS0_(%"struct.std::_Vector_base"* %0, i64 %call, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %ref.tmp)
          to label %invoke.cont unwind label %lpad, !dbg !3848

invoke.cont:                                      ; preds = %entry
  call void @_ZNSaIlED2Ev(%"class.std::allocator.0"* %ref.tmp) #6, !dbg !3848
  %4 = load %"class.std::vector"*, %"class.std::vector"** %__x.addr, align 8, !dbg !3849
  %call3 = call i64* @_ZNKSt6vectorIlSaIlEE5beginEv(%"class.std::vector"* %4) #6, !dbg !3851
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp, i32 0, i32 0, !dbg !3851
  store i64* %call3, i64** %coerce.dive, align 8, !dbg !3851
  %5 = load %"class.std::vector"*, %"class.std::vector"** %__x.addr, align 8, !dbg !3852
  %call5 = call i64* @_ZNKSt6vectorIlSaIlEE3endEv(%"class.std::vector"* %5) #6, !dbg !3853
  %coerce.dive6 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp4, i32 0, i32 0, !dbg !3853
  store i64* %call5, i64** %coerce.dive6, align 8, !dbg !3853
  %6 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*, !dbg !3854
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %6, i32 0, i32 0, !dbg !3854
  %7 = bitcast %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %_M_impl to %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"*, !dbg !3855
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data", %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* %7, i32 0, i32 0, !dbg !3856
  %8 = load i64*, i64** %_M_start, align 8, !dbg !3856
  %9 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*, !dbg !3857
  %call7 = call nonnull align 1 dereferenceable(1) %"class.std::allocator.0"* @_ZNSt12_Vector_baseIlSaIlEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %9) #6, !dbg !3857
  %coerce.dive8 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp, i32 0, i32 0, !dbg !3858
  %10 = load i64*, i64** %coerce.dive8, align 8, !dbg !3858
  %coerce.dive9 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp4, i32 0, i32 0, !dbg !3858
  %11 = load i64*, i64** %coerce.dive9, align 8, !dbg !3858
  %call12 = invoke i64* @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEEPllET0_T_SA_S9_RSaIT1_E(i64* %10, i64* %11, i64* %8, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %call7)
          to label %invoke.cont11 unwind label %lpad10, !dbg !3858

invoke.cont11:                                    ; preds = %invoke.cont
  %12 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*, !dbg !3859
  %_M_impl13 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %12, i32 0, i32 0, !dbg !3859
  %13 = bitcast %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %_M_impl13 to %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"*, !dbg !3860
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data", %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* %13, i32 0, i32 1, !dbg !3861
  store i64* %call12, i64** %_M_finish, align 8, !dbg !3862
  ret void, !dbg !3863

lpad:                                             ; preds = %entry
  %14 = landingpad { i8*, i32 }
          cleanup, !dbg !3863
  %15 = extractvalue { i8*, i32 } %14, 0, !dbg !3863
  store i8* %15, i8** %exn.slot, align 8, !dbg !3863
  %16 = extractvalue { i8*, i32 } %14, 1, !dbg !3863
  store i32 %16, i32* %ehselector.slot, align 4, !dbg !3863
  call void @_ZNSaIlED2Ev(%"class.std::allocator.0"* %ref.tmp) #6, !dbg !3848
  br label %eh.resume, !dbg !3848

lpad10:                                           ; preds = %invoke.cont
  %17 = landingpad { i8*, i32 }
          cleanup, !dbg !3864
  %18 = extractvalue { i8*, i32 } %17, 0, !dbg !3864
  store i8* %18, i8** %exn.slot, align 8, !dbg !3864
  %19 = extractvalue { i8*, i32 } %17, 1, !dbg !3864
  store i32 %19, i32* %ehselector.slot, align 4, !dbg !3864
  %20 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*, !dbg !3864
  call void @_ZNSt12_Vector_baseIlSaIlEED2Ev(%"struct.std::_Vector_base"* %20) #6, !dbg !3864
  br label %eh.resume, !dbg !3864

eh.resume:                                        ; preds = %lpad10, %lpad
  %exn = load i8*, i8** %exn.slot, align 8, !dbg !3848
  %sel = load i32, i32* %ehselector.slot, align 4, !dbg !3848
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0, !dbg !3848
  %lpad.val14 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1, !dbg !3848
  resume { i8*, i32 } %lpad.val14, !dbg !3848
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @_ZNKSt6vectorIlSaIlEE4sizeEv(%"class.std::vector"* %this) #4 comdat align 2 !dbg !3865 {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::vector"** %this.addr, metadata !3866, metadata !DIExpression()), !dbg !3867
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*, !dbg !3868
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %0, i32 0, i32 0, !dbg !3868
  %1 = bitcast %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %_M_impl to %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"*, !dbg !3869
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data", %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* %1, i32 0, i32 1, !dbg !3870
  %2 = load i64*, i64** %_M_finish, align 8, !dbg !3870
  %3 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*, !dbg !3871
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %3, i32 0, i32 0, !dbg !3871
  %4 = bitcast %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %_M_impl2 to %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"*, !dbg !3872
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data", %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* %4, i32 0, i32 0, !dbg !3873
  %5 = load i64*, i64** %_M_start, align 8, !dbg !3873
  %sub.ptr.lhs.cast = ptrtoint i64* %2 to i64, !dbg !3874
  %sub.ptr.rhs.cast = ptrtoint i64* %5 to i64, !dbg !3874
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !3874
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8, !dbg !3874
  ret i64 %sub.ptr.div, !dbg !3875
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 1 dereferenceable(1) %"class.std::allocator.0"* @_ZNKSt12_Vector_baseIlSaIlEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %this) #4 comdat align 2 !dbg !3876 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base"*, align 8
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::_Vector_base"** %this.addr, metadata !3877, metadata !DIExpression()), !dbg !3879
  %this1 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0, !dbg !3880
  %0 = bitcast %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %_M_impl to %"class.std::allocator.0"*, !dbg !3881
  ret %"class.std::allocator.0"* %0, !dbg !3882
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx14__alloc_traitsISaIlElE17_S_select_on_copyERKS1_(%"class.std::allocator.0"* noalias sret align 1 %agg.result, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %__a) #5 comdat align 2 !dbg !3883 {
entry:
  %result.ptr = alloca i8*, align 8
  %__a.addr = alloca %"class.std::allocator.0"*, align 8
  %0 = bitcast %"class.std::allocator.0"* %agg.result to i8*
  store i8* %0, i8** %result.ptr, align 8
  store %"class.std::allocator.0"* %__a, %"class.std::allocator.0"** %__a.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::allocator.0"** %__a.addr, metadata !3884, metadata !DIExpression()), !dbg !3885
  %1 = load %"class.std::allocator.0"*, %"class.std::allocator.0"** %__a.addr, align 8, !dbg !3886
  call void @_ZNSt16allocator_traitsISaIlEE37select_on_container_copy_constructionERKS0_(%"class.std::allocator.0"* sret align 1 %agg.result, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %1), !dbg !3887
  ret void, !dbg !3888
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIlSaIlEEC2EmRKS0_(%"struct.std::_Vector_base"* %this, i64 %__n, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %__a) unnamed_addr #5 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !3889 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base"*, align 8
  %__n.addr = alloca i64, align 8
  %__a.addr = alloca %"class.std::allocator.0"*, align 8
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::_Vector_base"** %this.addr, metadata !3890, metadata !DIExpression()), !dbg !3891
  store i64 %__n, i64* %__n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %__n.addr, metadata !3892, metadata !DIExpression()), !dbg !3893
  store %"class.std::allocator.0"* %__a, %"class.std::allocator.0"** %__a.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::allocator.0"** %__a.addr, metadata !3894, metadata !DIExpression()), !dbg !3895
  %this1 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0, !dbg !3896
  %0 = load %"class.std::allocator.0"*, %"class.std::allocator.0"** %__a.addr, align 8, !dbg !3897
  call void @_ZNSt12_Vector_baseIlSaIlEE12_Vector_implC2ERKS0_(%"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %_M_impl, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %0) #6, !dbg !3896
  %1 = load i64, i64* %__n.addr, align 8, !dbg !3898
  invoke void @_ZNSt12_Vector_baseIlSaIlEE17_M_create_storageEm(%"struct.std::_Vector_base"* %this1, i64 %1)
          to label %invoke.cont unwind label %lpad, !dbg !3900

invoke.cont:                                      ; preds = %entry
  ret void, !dbg !3901

lpad:                                             ; preds = %entry
  %2 = landingpad { i8*, i32 }
          cleanup, !dbg !3902
  %3 = extractvalue { i8*, i32 } %2, 0, !dbg !3902
  store i8* %3, i8** %exn.slot, align 8, !dbg !3902
  %4 = extractvalue { i8*, i32 } %2, 1, !dbg !3902
  store i32 %4, i32* %ehselector.slot, align 4, !dbg !3902
  call void @_ZNSt12_Vector_baseIlSaIlEE12_Vector_implD2Ev(%"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %_M_impl) #6, !dbg !3902
  br label %eh.resume, !dbg !3902

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8, !dbg !3902
  %sel = load i32, i32* %ehselector.slot, align 4, !dbg !3902
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0, !dbg !3902
  %lpad.val2 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1, !dbg !3902
  resume { i8*, i32 } %lpad.val2, !dbg !3902
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i64* @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEEPllET0_T_SA_S9_RSaIT1_E(i64* %__first.coerce, i64* %__last.coerce, i64* %__result, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %0) #5 comdat !dbg !3903 {
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
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator"* %__first, metadata !3909, metadata !DIExpression()), !dbg !3910
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator"* %__last, metadata !3911, metadata !DIExpression()), !dbg !3912
  store i64* %__result, i64** %__result.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %__result.addr, metadata !3913, metadata !DIExpression()), !dbg !3914
  store %"class.std::allocator.0"* %0, %"class.std::allocator.0"** %.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::allocator.0"** %.addr, metadata !3915, metadata !DIExpression()), !dbg !3916
  %1 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp to i8*, !dbg !3917
  %2 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__first to i8*, !dbg !3917
  %3 = call i8* @memcpy(i8* %1, i8* %2, i64 8), !dbg !3917
  %4 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp2 to i8*, !dbg !3918
  %5 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__last to i8*, !dbg !3918
  %6 = call i8* @memcpy(i8* %4, i8* %5, i64 8), !dbg !3918
  %7 = load i64*, i64** %__result.addr, align 8, !dbg !3919
  %coerce.dive3 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp, i32 0, i32 0, !dbg !3920
  %8 = load i64*, i64** %coerce.dive3, align 8, !dbg !3920
  %coerce.dive4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp2, i32 0, i32 0, !dbg !3920
  %9 = load i64*, i64** %coerce.dive4, align 8, !dbg !3920
  %call = call i64* @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEEPlET0_T_SA_S9_(i64* %8, i64* %9, i64* %7), !dbg !3920
  ret i64* %call, !dbg !3921
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #13

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i64* @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEEPlET0_T_SA_S9_(i64* %__first.coerce, i64* %__last.coerce, i64* %__result) #5 comdat !dbg !3922 {
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
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator"* %__first, metadata !3926, metadata !DIExpression()), !dbg !3927
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator"* %__last, metadata !3928, metadata !DIExpression()), !dbg !3929
  store i64* %__result, i64** %__result.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %__result.addr, metadata !3930, metadata !DIExpression()), !dbg !3931
  call void @llvm.dbg.declare(metadata i8* %__assignable, metadata !3932, metadata !DIExpression()), !dbg !3933
  store i8 1, i8* %__assignable, align 1, !dbg !3933
  %0 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp to i8*, !dbg !3934
  %1 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__first to i8*, !dbg !3934
  %2 = call i8* @memcpy(i8* %0, i8* %1, i64 8), !dbg !3934
  %3 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp2 to i8*, !dbg !3935
  %4 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__last to i8*, !dbg !3935
  %5 = call i8* @memcpy(i8* %3, i8* %4, i64 8), !dbg !3935
  %6 = load i64*, i64** %__result.addr, align 8, !dbg !3936
  %coerce.dive3 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp, i32 0, i32 0, !dbg !3937
  %7 = load i64*, i64** %coerce.dive3, align 8, !dbg !3937
  %coerce.dive4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp2, i32 0, i32 0, !dbg !3937
  %8 = load i64*, i64** %coerce.dive4, align 8, !dbg !3937
  %call = call i64* @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEEPlEET0_T_SC_SB_(i64* %7, i64* %8, i64* %6), !dbg !3937
  ret i64* %call, !dbg !3938
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i64* @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEEPlEET0_T_SC_SB_(i64* %__first.coerce, i64* %__last.coerce, i64* %__result) #5 comdat align 2 !dbg !3939 {
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
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator"* %__first, metadata !3944, metadata !DIExpression()), !dbg !3945
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator"* %__last, metadata !3946, metadata !DIExpression()), !dbg !3947
  store i64* %__result, i64** %__result.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %__result.addr, metadata !3948, metadata !DIExpression()), !dbg !3949
  %0 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp to i8*, !dbg !3950
  %1 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__first to i8*, !dbg !3950
  %2 = call i8* @memcpy(i8* %0, i8* %1, i64 8), !dbg !3950
  %3 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp2 to i8*, !dbg !3951
  %4 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__last to i8*, !dbg !3951
  %5 = call i8* @memcpy(i8* %3, i8* %4, i64 8), !dbg !3951
  %6 = load i64*, i64** %__result.addr, align 8, !dbg !3952
  %coerce.dive3 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp, i32 0, i32 0, !dbg !3953
  %7 = load i64*, i64** %coerce.dive3, align 8, !dbg !3953
  %coerce.dive4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp2, i32 0, i32 0, !dbg !3953
  %8 = load i64*, i64** %coerce.dive4, align 8, !dbg !3953
  %call = call i64* @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEEPlET0_T_SA_S9_(i64* %7, i64* %8, i64* %6), !dbg !3953
  ret i64* %call, !dbg !3954
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i64* @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEEPlET0_T_SA_S9_(i64* %__first.coerce, i64* %__last.coerce, i64* %__result) #5 comdat !dbg !3955 {
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
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator"* %__first, metadata !3960, metadata !DIExpression()), !dbg !3961
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator"* %__last, metadata !3962, metadata !DIExpression()), !dbg !3963
  store i64* %__result, i64** %__result.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %__result.addr, metadata !3964, metadata !DIExpression()), !dbg !3965
  %0 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp2 to i8*, !dbg !3966
  %1 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__first to i8*, !dbg !3966
  %2 = call i8* @memcpy(i8* %0, i8* %1, i64 8), !dbg !3966
  %coerce.dive3 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp2, i32 0, i32 0, !dbg !3967
  %3 = load i64*, i64** %coerce.dive3, align 8, !dbg !3967
  %call = call i64* @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEEET_S8_(i64* %3), !dbg !3967
  %coerce.dive4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp, i32 0, i32 0, !dbg !3967
  store i64* %call, i64** %coerce.dive4, align 8, !dbg !3967
  %4 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp6 to i8*, !dbg !3968
  %5 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__last to i8*, !dbg !3968
  %6 = call i8* @memcpy(i8* %4, i8* %5, i64 8), !dbg !3968
  %coerce.dive7 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp6, i32 0, i32 0, !dbg !3969
  %7 = load i64*, i64** %coerce.dive7, align 8, !dbg !3969
  %call8 = call i64* @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEEET_S8_(i64* %7), !dbg !3969
  %coerce.dive9 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp5, i32 0, i32 0, !dbg !3969
  store i64* %call8, i64** %coerce.dive9, align 8, !dbg !3969
  %8 = load i64*, i64** %__result.addr, align 8, !dbg !3970
  %coerce.dive10 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp, i32 0, i32 0, !dbg !3971
  %9 = load i64*, i64** %coerce.dive10, align 8, !dbg !3971
  %coerce.dive11 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp5, i32 0, i32 0, !dbg !3971
  %10 = load i64*, i64** %coerce.dive11, align 8, !dbg !3971
  %call12 = call i64* @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEEPlET1_T0_SA_S9_(i64* %9, i64* %10, i64* %8), !dbg !3971
  ret i64* %call12, !dbg !3972
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64* @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEEET_S8_(i64* %__it.coerce) #4 comdat !dbg !3973 {
entry:
  %retval = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__it = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__it, i32 0, i32 0
  store i64* %__it.coerce, i64** %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator"* %__it, metadata !3979, metadata !DIExpression()), !dbg !3980
  %0 = bitcast %"class.__gnu_cxx::__normal_iterator"* %retval to i8*, !dbg !3981
  %1 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__it to i8*, !dbg !3981
  %2 = call i8* @memcpy(i8* %0, i8* %1, i64 8), !dbg !3981
  %coerce.dive1 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %retval, i32 0, i32 0, !dbg !3982
  %3 = load i64*, i64** %coerce.dive1, align 8, !dbg !3982
  ret i64* %3, !dbg !3982
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i64* @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEEPlET1_T0_SA_S9_(i64* %__first.coerce, i64* %__last.coerce, i64* %__result) #5 comdat !dbg !3983 {
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
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator"* %__first, metadata !3986, metadata !DIExpression()), !dbg !3987
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator"* %__last, metadata !3988, metadata !DIExpression()), !dbg !3989
  store i64* %__result, i64** %__result.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %__result.addr, metadata !3990, metadata !DIExpression()), !dbg !3991
  %0 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp to i8*, !dbg !3992
  %1 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__first to i8*, !dbg !3992
  %2 = call i8* @memcpy(i8* %0, i8* %1, i64 8), !dbg !3992
  %coerce.dive2 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp, i32 0, i32 0, !dbg !3993
  %3 = load i64*, i64** %coerce.dive2, align 8, !dbg !3993
  %call = call i64* @_ZSt12__niter_baseIPKlSt6vectorIlSaIlEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE(i64* %3) #6, !dbg !3993
  %4 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp3 to i8*, !dbg !3994
  %5 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__last to i8*, !dbg !3994
  %6 = call i8* @memcpy(i8* %4, i8* %5, i64 8), !dbg !3994
  %coerce.dive4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp3, i32 0, i32 0, !dbg !3995
  %7 = load i64*, i64** %coerce.dive4, align 8, !dbg !3995
  %call5 = call i64* @_ZSt12__niter_baseIPKlSt6vectorIlSaIlEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE(i64* %7) #6, !dbg !3995
  %8 = load i64*, i64** %__result.addr, align 8, !dbg !3996
  %call6 = call i64* @_ZSt12__niter_baseIPlET_S1_(i64* %8) #6, !dbg !3997
  %call7 = call i64* @_ZSt14__copy_move_a1ILb0EPKlPlET1_T0_S4_S3_(i64* %call, i64* %call5, i64* %call6), !dbg !3998
  %call8 = call i64* @_ZSt12__niter_wrapIPlET_RKS1_S1_(i64** nonnull align 8 dereferenceable(8) %__result.addr, i64* %call7), !dbg !3999
  ret i64* %call8, !dbg !4000
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64* @_ZSt12__niter_baseIPKlSt6vectorIlSaIlEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE(i64* %__it.coerce) #4 comdat !dbg !4001 {
entry:
  %__it = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__it, i32 0, i32 0
  store i64* %__it.coerce, i64** %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator"* %__it, metadata !4004, metadata !DIExpression()), !dbg !4005
  %call = call nonnull align 8 dereferenceable(8) i64** @_ZNK9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %__it) #6, !dbg !4006
  %0 = load i64*, i64** %call, align 8, !dbg !4006
  ret i64* %0, !dbg !4007
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64* @_ZSt12__niter_baseIPlET_S1_(i64* %__it) #4 comdat !dbg !4008 {
entry:
  %__it.addr = alloca i64*, align 8
  store i64* %__it, i64** %__it.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %__it.addr, metadata !4011, metadata !DIExpression()), !dbg !4012
  %0 = load i64*, i64** %__it.addr, align 8, !dbg !4013
  ret i64* %0, !dbg !4014
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i64* @_ZSt14__copy_move_a1ILb0EPKlPlET1_T0_S4_S3_(i64* %__first, i64* %__last, i64* %__result) #5 comdat !dbg !4015 {
entry:
  %__first.addr = alloca i64*, align 8
  %__last.addr = alloca i64*, align 8
  %__result.addr = alloca i64*, align 8
  store i64* %__first, i64** %__first.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %__first.addr, metadata !4020, metadata !DIExpression()), !dbg !4021
  store i64* %__last, i64** %__last.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %__last.addr, metadata !4022, metadata !DIExpression()), !dbg !4023
  store i64* %__result, i64** %__result.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %__result.addr, metadata !4024, metadata !DIExpression()), !dbg !4025
  %0 = load i64*, i64** %__first.addr, align 8, !dbg !4026
  %1 = load i64*, i64** %__last.addr, align 8, !dbg !4027
  %2 = load i64*, i64** %__result.addr, align 8, !dbg !4028
  %call = call i64* @_ZSt14__copy_move_a2ILb0EPKlPlET1_T0_S4_S3_(i64* %0, i64* %1, i64* %2), !dbg !4029
  ret i64* %call, !dbg !4030
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64* @_ZSt12__niter_wrapIPlET_RKS1_S1_(i64** nonnull align 8 dereferenceable(8) %0, i64* %__res) #4 comdat !dbg !4031 {
entry:
  %.addr = alloca i64**, align 8
  %__res.addr = alloca i64*, align 8
  store i64** %0, i64*** %.addr, align 8
  call void @llvm.dbg.declare(metadata i64*** %.addr, metadata !4034, metadata !DIExpression()), !dbg !4035
  store i64* %__res, i64** %__res.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %__res.addr, metadata !4036, metadata !DIExpression()), !dbg !4037
  %1 = load i64*, i64** %__res.addr, align 8, !dbg !4038
  ret i64* %1, !dbg !4039
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i64* @_ZSt14__copy_move_a2ILb0EPKlPlET1_T0_S4_S3_(i64* %__first, i64* %__last, i64* %__result) #5 comdat !dbg !4040 {
entry:
  %__first.addr = alloca i64*, align 8
  %__last.addr = alloca i64*, align 8
  %__result.addr = alloca i64*, align 8
  store i64* %__first, i64** %__first.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %__first.addr, metadata !4041, metadata !DIExpression()), !dbg !4042
  store i64* %__last, i64** %__last.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %__last.addr, metadata !4043, metadata !DIExpression()), !dbg !4044
  store i64* %__result, i64** %__result.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %__result.addr, metadata !4045, metadata !DIExpression()), !dbg !4046
  %0 = load i64*, i64** %__first.addr, align 8, !dbg !4047
  %1 = load i64*, i64** %__last.addr, align 8, !dbg !4048
  %2 = load i64*, i64** %__result.addr, align 8, !dbg !4049
  %call = call i64* @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIlEEPT_PKS3_S6_S4_(i64* %0, i64* %1, i64* %2), !dbg !4050
  ret i64* %call, !dbg !4051
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64* @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIlEEPT_PKS3_S6_S4_(i64* %__first, i64* %__last, i64* %__result) #4 comdat align 2 !dbg !4052 {
entry:
  %__first.addr = alloca i64*, align 8
  %__last.addr = alloca i64*, align 8
  %__result.addr = alloca i64*, align 8
  %_Num = alloca i64, align 8
  store i64* %__first, i64** %__first.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %__first.addr, metadata !4058, metadata !DIExpression()), !dbg !4059
  store i64* %__last, i64** %__last.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %__last.addr, metadata !4060, metadata !DIExpression()), !dbg !4061
  store i64* %__result, i64** %__result.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %__result.addr, metadata !4062, metadata !DIExpression()), !dbg !4063
  call void @llvm.dbg.declare(metadata i64* %_Num, metadata !4064, metadata !DIExpression()), !dbg !4066
  %0 = load i64*, i64** %__last.addr, align 8, !dbg !4067
  %1 = load i64*, i64** %__first.addr, align 8, !dbg !4068
  %sub.ptr.lhs.cast = ptrtoint i64* %0 to i64, !dbg !4069
  %sub.ptr.rhs.cast = ptrtoint i64* %1 to i64, !dbg !4069
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !4069
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8, !dbg !4069
  store i64 %sub.ptr.div, i64* %_Num, align 8, !dbg !4066
  %2 = load i64, i64* %_Num, align 8, !dbg !4070
  %tobool = icmp ne i64 %2, 0, !dbg !4070
  br i1 %tobool, label %if.then, label %if.end, !dbg !4072

if.then:                                          ; preds = %entry
  %3 = load i64*, i64** %__result.addr, align 8, !dbg !4073
  %4 = bitcast i64* %3 to i8*, !dbg !4074
  %5 = load i64*, i64** %__first.addr, align 8, !dbg !4075
  %6 = bitcast i64* %5 to i8*, !dbg !4074
  %7 = load i64, i64* %_Num, align 8, !dbg !4076
  %mul = mul i64 8, %7, !dbg !4077
  %8 = call i8* @memmove(i8* %4, i8* %6, i64 %mul), !dbg !4074
  br label %if.end, !dbg !4074

if.end:                                           ; preds = %if.then, %entry
  %9 = load i64*, i64** %__result.addr, align 8, !dbg !4078
  %10 = load i64, i64* %_Num, align 8, !dbg !4079
  %add.ptr = getelementptr inbounds i64, i64* %9, i64 %10, !dbg !4080
  ret i64* %add.ptr, !dbg !4081
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i1 immarg) #13

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIlSaIlEE12_Vector_implC2ERKS0_(%"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %this, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %__a) unnamed_addr #4 comdat align 2 !dbg !4082 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"*, align 8
  %__a.addr = alloca %"class.std::allocator.0"*, align 8
  store %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %this, %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"** %this.addr, metadata !4083, metadata !DIExpression()), !dbg !4084
  store %"class.std::allocator.0"* %__a, %"class.std::allocator.0"** %__a.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::allocator.0"** %__a.addr, metadata !4085, metadata !DIExpression()), !dbg !4086
  %this1 = load %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"*, %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"** %this.addr, align 8
  %0 = bitcast %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %this1 to %"class.std::allocator.0"*, !dbg !4087
  %1 = load %"class.std::allocator.0"*, %"class.std::allocator.0"** %__a.addr, align 8, !dbg !4088
  call void @_ZNSaIlEC2ERKS_(%"class.std::allocator.0"* %0, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %1) #6, !dbg !4089
  %2 = bitcast %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %this1 to %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"*, !dbg !4087
  call void @_ZNSt12_Vector_baseIlSaIlEE17_Vector_impl_dataC2Ev(%"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* %2) #6, !dbg !4090
  ret void, !dbg !4091
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIlSaIlEE17_M_create_storageEm(%"struct.std::_Vector_base"* %this, i64 %__n) #5 comdat align 2 !dbg !4092 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base"*, align 8
  %__n.addr = alloca i64, align 8
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::_Vector_base"** %this.addr, metadata !4093, metadata !DIExpression()), !dbg !4094
  store i64 %__n, i64* %__n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %__n.addr, metadata !4095, metadata !DIExpression()), !dbg !4096
  %this1 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %this.addr, align 8
  %0 = load i64, i64* %__n.addr, align 8, !dbg !4097
  %call = call i64* @_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm(%"struct.std::_Vector_base"* %this1, i64 %0), !dbg !4098
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0, !dbg !4099
  %1 = bitcast %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %_M_impl to %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"*, !dbg !4100
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data", %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* %1, i32 0, i32 0, !dbg !4101
  store i64* %call, i64** %_M_start, align 8, !dbg !4102
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0, !dbg !4103
  %2 = bitcast %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %_M_impl2 to %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"*, !dbg !4104
  %_M_start3 = getelementptr inbounds %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data", %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* %2, i32 0, i32 0, !dbg !4105
  %3 = load i64*, i64** %_M_start3, align 8, !dbg !4105
  %_M_impl4 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0, !dbg !4106
  %4 = bitcast %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %_M_impl4 to %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"*, !dbg !4107
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data", %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* %4, i32 0, i32 1, !dbg !4108
  store i64* %3, i64** %_M_finish, align 8, !dbg !4109
  %_M_impl5 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0, !dbg !4110
  %5 = bitcast %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %_M_impl5 to %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"*, !dbg !4111
  %_M_start6 = getelementptr inbounds %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data", %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* %5, i32 0, i32 0, !dbg !4112
  %6 = load i64*, i64** %_M_start6, align 8, !dbg !4112
  %7 = load i64, i64* %__n.addr, align 8, !dbg !4113
  %add.ptr = getelementptr inbounds i64, i64* %6, i64 %7, !dbg !4114
  %_M_impl7 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0, !dbg !4115
  %8 = bitcast %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %_M_impl7 to %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"*, !dbg !4116
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data", %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* %8, i32 0, i32 2, !dbg !4117
  store i64* %add.ptr, i64** %_M_end_of_storage, align 8, !dbg !4118
  ret void, !dbg !4119
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i64* @_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm(%"struct.std::_Vector_base"* %this, i64 %__n) #5 comdat align 2 !dbg !4120 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base"*, align 8
  %__n.addr = alloca i64, align 8
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::_Vector_base"** %this.addr, metadata !4121, metadata !DIExpression()), !dbg !4122
  store i64 %__n, i64* %__n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %__n.addr, metadata !4123, metadata !DIExpression()), !dbg !4124
  %this1 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %this.addr, align 8
  %0 = load i64, i64* %__n.addr, align 8, !dbg !4125
  %cmp = icmp ne i64 %0, 0, !dbg !4126
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !4125

cond.true:                                        ; preds = %entry
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0, !dbg !4127
  %1 = bitcast %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %_M_impl to %"class.std::allocator.0"*, !dbg !4127
  %2 = load i64, i64* %__n.addr, align 8, !dbg !4128
  %call = call i64* @_ZNSt16allocator_traitsISaIlEE8allocateERS0_m(%"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %1, i64 %2), !dbg !4129
  br label %cond.end, !dbg !4125

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !4125

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64* [ %call, %cond.true ], [ null, %cond.false ], !dbg !4125
  ret i64* %cond, !dbg !4130
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i64* @_ZNSt16allocator_traitsISaIlEE8allocateERS0_m(%"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %__a, i64 %__n) #5 comdat align 2 !dbg !4131 {
entry:
  %__a.addr = alloca %"class.std::allocator.0"*, align 8
  %__n.addr = alloca i64, align 8
  store %"class.std::allocator.0"* %__a, %"class.std::allocator.0"** %__a.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::allocator.0"** %__a.addr, metadata !4132, metadata !DIExpression()), !dbg !4133
  store i64 %__n, i64* %__n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %__n.addr, metadata !4134, metadata !DIExpression()), !dbg !4135
  %0 = load %"class.std::allocator.0"*, %"class.std::allocator.0"** %__a.addr, align 8, !dbg !4136
  %1 = bitcast %"class.std::allocator.0"* %0 to %"class.std::allocator.0"*, !dbg !4136
  %2 = load i64, i64* %__n.addr, align 8, !dbg !4137
  %call = call i64* @_ZN9__gnu_cxx13new_allocatorIlE8allocateEmPKv(%"class.std::allocator.0"* %1, i64 %2, i8* null), !dbg !4138
  ret i64* %call, !dbg !4139
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i64* @_ZN9__gnu_cxx13new_allocatorIlE8allocateEmPKv(%"class.std::allocator.0"* %this, i64 %__n, i8* %0) #5 comdat align 2 !dbg !4140 {
entry:
  %this.addr = alloca %"class.std::allocator.0"*, align 8
  %__n.addr = alloca i64, align 8
  %.addr = alloca i8*, align 8
  store %"class.std::allocator.0"* %this, %"class.std::allocator.0"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::allocator.0"** %this.addr, metadata !4141, metadata !DIExpression()), !dbg !4142
  store i64 %__n, i64* %__n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %__n.addr, metadata !4143, metadata !DIExpression()), !dbg !4144
  store i8* %0, i8** %.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %.addr, metadata !4145, metadata !DIExpression()), !dbg !4146
  %this1 = load %"class.std::allocator.0"*, %"class.std::allocator.0"** %this.addr, align 8
  %1 = load i64, i64* %__n.addr, align 8, !dbg !4147
  %call = call i64 @_ZNK9__gnu_cxx13new_allocatorIlE11_M_max_sizeEv(%"class.std::allocator.0"* %this1) #6, !dbg !4149
  %cmp = icmp ugt i64 %1, %call, !dbg !4150
  br i1 %cmp, label %if.then, label %if.end4, !dbg !4151

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %__n.addr, align 8, !dbg !4152
  %cmp2 = icmp ugt i64 %2, 2305843009213693951, !dbg !4155
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !4156

if.then3:                                         ; preds = %if.then
  call void @_ZSt28__throw_bad_array_new_lengthv() #19, !dbg !4157
  unreachable, !dbg !4157

if.end:                                           ; preds = %if.then
  call void @_ZSt17__throw_bad_allocv() #19, !dbg !4158
  unreachable, !dbg !4158

if.end4:                                          ; preds = %entry
  %3 = load i64, i64* %__n.addr, align 8, !dbg !4159
  %mul = mul i64 %3, 8, !dbg !4160
  %call5 = call noalias nonnull i8* @_Znwm(i64 %mul) #18, !dbg !4161
  %4 = bitcast i8* %call5 to i64*, !dbg !4162
  ret i64* %4, !dbg !4163
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @_ZNK9__gnu_cxx13new_allocatorIlE11_M_max_sizeEv(%"class.std::allocator.0"* %this) #4 comdat align 2 !dbg !4164 {
entry:
  %this.addr = alloca %"class.std::allocator.0"*, align 8
  store %"class.std::allocator.0"* %this, %"class.std::allocator.0"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::allocator.0"** %this.addr, metadata !4165, metadata !DIExpression()), !dbg !4167
  %this1 = load %"class.std::allocator.0"*, %"class.std::allocator.0"** %this.addr, align 8
  ret i64 1152921504606846975, !dbg !4168
}

; Function Attrs: noreturn
declare dso_local void @_ZSt28__throw_bad_array_new_lengthv() #11

; Function Attrs: noreturn
declare dso_local void @_ZSt17__throw_bad_allocv() #11

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSaIlEC2ERKS_(%"class.std::allocator.0"* %this, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %__a) unnamed_addr #4 comdat align 2 !dbg !4169 {
entry:
  %this.addr = alloca %"class.std::allocator.0"*, align 8
  %__a.addr = alloca %"class.std::allocator.0"*, align 8
  store %"class.std::allocator.0"* %this, %"class.std::allocator.0"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::allocator.0"** %this.addr, metadata !4170, metadata !DIExpression()), !dbg !4171
  store %"class.std::allocator.0"* %__a, %"class.std::allocator.0"** %__a.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::allocator.0"** %__a.addr, metadata !4172, metadata !DIExpression()), !dbg !4173
  %this1 = load %"class.std::allocator.0"*, %"class.std::allocator.0"** %this.addr, align 8
  %0 = bitcast %"class.std::allocator.0"* %this1 to %"class.std::allocator.0"*, !dbg !4174
  %1 = load %"class.std::allocator.0"*, %"class.std::allocator.0"** %__a.addr, align 8, !dbg !4175
  %2 = bitcast %"class.std::allocator.0"* %1 to %"class.std::allocator.0"*, !dbg !4175
  call void @_ZN9__gnu_cxx13new_allocatorIlEC2ERKS1_(%"class.std::allocator.0"* %0, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %2) #6, !dbg !4176
  ret void, !dbg !4177
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIlSaIlEE17_Vector_impl_dataC2Ev(%"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* %this) unnamed_addr #4 comdat align 2 !dbg !4178 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"*, align 8
  store %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* %this, %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"** %this.addr, metadata !4179, metadata !DIExpression()), !dbg !4181
  %this1 = load %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"*, %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"** %this.addr, align 8
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data", %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* %this1, i32 0, i32 0, !dbg !4182
  store i64* null, i64** %_M_start, align 8, !dbg !4182
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data", %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* %this1, i32 0, i32 1, !dbg !4183
  store i64* null, i64** %_M_finish, align 8, !dbg !4183
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data", %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* %this1, i32 0, i32 2, !dbg !4184
  store i64* null, i64** %_M_end_of_storage, align 8, !dbg !4184
  ret void, !dbg !4185
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorIlEC2ERKS1_(%"class.std::allocator.0"* %this, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %0) unnamed_addr #4 comdat align 2 !dbg !4186 {
entry:
  %this.addr = alloca %"class.std::allocator.0"*, align 8
  %.addr = alloca %"class.std::allocator.0"*, align 8
  store %"class.std::allocator.0"* %this, %"class.std::allocator.0"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::allocator.0"** %this.addr, metadata !4187, metadata !DIExpression()), !dbg !4188
  store %"class.std::allocator.0"* %0, %"class.std::allocator.0"** %.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::allocator.0"** %.addr, metadata !4189, metadata !DIExpression()), !dbg !4190
  %this1 = load %"class.std::allocator.0"*, %"class.std::allocator.0"** %this.addr, align 8
  ret void, !dbg !4191
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIlEE37select_on_container_copy_constructionERKS0_(%"class.std::allocator.0"* noalias sret align 1 %agg.result, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %__rhs) #4 comdat align 2 !dbg !4192 {
entry:
  %result.ptr = alloca i8*, align 8
  %__rhs.addr = alloca %"class.std::allocator.0"*, align 8
  %0 = bitcast %"class.std::allocator.0"* %agg.result to i8*
  store i8* %0, i8** %result.ptr, align 8
  store %"class.std::allocator.0"* %__rhs, %"class.std::allocator.0"** %__rhs.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::allocator.0"** %__rhs.addr, metadata !4193, metadata !DIExpression()), !dbg !4194
  %1 = load %"class.std::allocator.0"*, %"class.std::allocator.0"** %__rhs.addr, align 8, !dbg !4195
  call void @_ZNSaIlEC2ERKS_(%"class.std::allocator.0"* %agg.result, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %1) #6, !dbg !4195
  ret void, !dbg !4196
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorIlED2Ev(%"class.std::allocator.0"* %this) unnamed_addr #4 comdat align 2 !dbg !4197 {
entry:
  %this.addr = alloca %"class.std::allocator.0"*, align 8
  store %"class.std::allocator.0"* %this, %"class.std::allocator.0"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::allocator.0"** %this.addr, metadata !4198, metadata !DIExpression()), !dbg !4199
  %this1 = load %"class.std::allocator.0"*, %"class.std::allocator.0"** %this.addr, align 8
  ret void, !dbg !4200
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i64 @_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_(i64 %__n, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %__a) #5 comdat align 2 !dbg !4201 {
entry:
  %__n.addr = alloca i64, align 8
  %__a.addr = alloca %"class.std::allocator.0"*, align 8
  %ref.tmp = alloca %"class.std::allocator.0", align 1
  store i64 %__n, i64* %__n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %__n.addr, metadata !4202, metadata !DIExpression()), !dbg !4203
  store %"class.std::allocator.0"* %__a, %"class.std::allocator.0"** %__a.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::allocator.0"** %__a.addr, metadata !4204, metadata !DIExpression()), !dbg !4205
  %0 = load i64, i64* %__n.addr, align 8, !dbg !4206
  %1 = load %"class.std::allocator.0"*, %"class.std::allocator.0"** %__a.addr, align 8, !dbg !4208
  call void @_ZNSaIlEC2ERKS_(%"class.std::allocator.0"* %ref.tmp, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %1) #6, !dbg !4209
  %call = call i64 @_ZNSt6vectorIlSaIlEE11_S_max_sizeERKS0_(%"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %ref.tmp) #6, !dbg !4210
  %cmp = icmp ugt i64 %0, %call, !dbg !4211
  call void @_ZNSaIlED2Ev(%"class.std::allocator.0"* %ref.tmp) #6, !dbg !4206
  br i1 %cmp, label %if.then, label %if.end, !dbg !4212

if.then:                                          ; preds = %entry
  call void @_ZSt20__throw_length_errorPKc(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5.6, i64 0, i64 0)) #19, !dbg !4213
  unreachable, !dbg !4213

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %__n.addr, align 8, !dbg !4214
  ret i64 %2, !dbg !4215
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIlSaIlEE21_M_default_initializeEm(%"class.std::vector"* %this, i64 %__n) #5 comdat align 2 !dbg !4216 {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  %__n.addr = alloca i64, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::vector"** %this.addr, metadata !4217, metadata !DIExpression()), !dbg !4218
  store i64 %__n, i64* %__n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %__n.addr, metadata !4219, metadata !DIExpression()), !dbg !4220
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*, !dbg !4221
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %0, i32 0, i32 0, !dbg !4221
  %1 = bitcast %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %_M_impl to %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"*, !dbg !4222
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data", %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* %1, i32 0, i32 0, !dbg !4223
  %2 = load i64*, i64** %_M_start, align 8, !dbg !4223
  %3 = load i64, i64* %__n.addr, align 8, !dbg !4224
  %4 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*, !dbg !4225
  %call = call nonnull align 1 dereferenceable(1) %"class.std::allocator.0"* @_ZNSt12_Vector_baseIlSaIlEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %4) #6, !dbg !4225
  %call2 = call i64* @_ZSt27__uninitialized_default_n_aIPlmlET_S1_T0_RSaIT1_E(i64* %2, i64 %3, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %call), !dbg !4226
  %5 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*, !dbg !4227
  %_M_impl3 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %5, i32 0, i32 0, !dbg !4227
  %6 = bitcast %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %_M_impl3 to %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"*, !dbg !4228
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data", %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* %6, i32 0, i32 1, !dbg !4229
  store i64* %call2, i64** %_M_finish, align 8, !dbg !4230
  ret void, !dbg !4231
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i64* @_ZSt27__uninitialized_default_n_aIPlmlET_S1_T0_RSaIT1_E(i64* %__first, i64 %__n, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %0) #5 comdat !dbg !4232 {
entry:
  %__first.addr = alloca i64*, align 8
  %__n.addr = alloca i64, align 8
  %.addr = alloca %"class.std::allocator.0"*, align 8
  store i64* %__first, i64** %__first.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %__first.addr, metadata !4237, metadata !DIExpression()), !dbg !4238
  store i64 %__n, i64* %__n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %__n.addr, metadata !4239, metadata !DIExpression()), !dbg !4240
  store %"class.std::allocator.0"* %0, %"class.std::allocator.0"** %.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::allocator.0"** %.addr, metadata !4241, metadata !DIExpression()), !dbg !4242
  %1 = load i64*, i64** %__first.addr, align 8, !dbg !4243
  %2 = load i64, i64* %__n.addr, align 8, !dbg !4244
  %call = call i64* @_ZSt25__uninitialized_default_nIPlmET_S1_T0_(i64* %1, i64 %2), !dbg !4245
  ret i64* %call, !dbg !4246
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i64* @_ZSt25__uninitialized_default_nIPlmET_S1_T0_(i64* %__first, i64 %__n) #5 comdat !dbg !4247 {
entry:
  %__first.addr = alloca i64*, align 8
  %__n.addr = alloca i64, align 8
  %__can_fill = alloca i8, align 1
  store i64* %__first, i64** %__first.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %__first.addr, metadata !4251, metadata !DIExpression()), !dbg !4252
  store i64 %__n, i64* %__n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %__n.addr, metadata !4253, metadata !DIExpression()), !dbg !4254
  call void @llvm.dbg.declare(metadata i8* %__can_fill, metadata !4255, metadata !DIExpression()), !dbg !4256
  store i8 1, i8* %__can_fill, align 1, !dbg !4256
  %0 = load i64*, i64** %__first.addr, align 8, !dbg !4257
  %1 = load i64, i64* %__n.addr, align 8, !dbg !4258
  %call = call i64* @_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPlmEET_S3_T0_(i64* %0, i64 %1), !dbg !4259
  ret i64* %call, !dbg !4260
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i64* @_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPlmEET_S3_T0_(i64* %__first, i64 %__n) #5 comdat align 2 !dbg !4261 {
entry:
  %__first.addr = alloca i64*, align 8
  %__n.addr = alloca i64, align 8
  %__val = alloca i64*, align 8
  store i64* %__first, i64** %__first.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %__first.addr, metadata !4266, metadata !DIExpression()), !dbg !4267
  store i64 %__n, i64* %__n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %__n.addr, metadata !4268, metadata !DIExpression()), !dbg !4269
  %0 = load i64, i64* %__n.addr, align 8, !dbg !4270
  %cmp = icmp ugt i64 %0, 0, !dbg !4272
  br i1 %cmp, label %if.then, label %if.end, !dbg !4273

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64** %__val, metadata !4274, metadata !DIExpression()), !dbg !4278
  %1 = load i64*, i64** %__first.addr, align 8, !dbg !4279
  %call = call i64* @_ZSt11__addressofIlEPT_RS0_(i64* nonnull align 8 dereferenceable(8) %1) #6, !dbg !4280
  store i64* %call, i64** %__val, align 8, !dbg !4278
  %2 = load i64*, i64** %__val, align 8, !dbg !4281
  call void @_ZSt10_ConstructIlJEEvPT_DpOT0_(i64* %2), !dbg !4282
  %3 = load i64*, i64** %__first.addr, align 8, !dbg !4283
  %incdec.ptr = getelementptr inbounds i64, i64* %3, i32 1, !dbg !4283
  store i64* %incdec.ptr, i64** %__first.addr, align 8, !dbg !4283
  %4 = load i64*, i64** %__first.addr, align 8, !dbg !4284
  %5 = load i64, i64* %__n.addr, align 8, !dbg !4285
  %sub = sub i64 %5, 1, !dbg !4286
  %6 = load i64*, i64** %__val, align 8, !dbg !4287
  %call1 = call i64* @_ZSt6fill_nIPlmlET_S1_T0_RKT1_(i64* %4, i64 %sub, i64* nonnull align 8 dereferenceable(8) %6), !dbg !4288
  store i64* %call1, i64** %__first.addr, align 8, !dbg !4289
  br label %if.end, !dbg !4290

if.end:                                           ; preds = %if.then, %entry
  %7 = load i64*, i64** %__first.addr, align 8, !dbg !4291
  ret i64* %7, !dbg !4292
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64* @_ZSt11__addressofIlEPT_RS0_(i64* nonnull align 8 dereferenceable(8) %__r) #4 comdat !dbg !4293 {
entry:
  %__r.addr = alloca i64*, align 8
  store i64* %__r, i64** %__r.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %__r.addr, metadata !4296, metadata !DIExpression()), !dbg !4297
  %0 = load i64*, i64** %__r.addr, align 8, !dbg !4298
  ret i64* %0, !dbg !4299
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZSt10_ConstructIlJEEvPT_DpOT0_(i64* %__p) #4 comdat !dbg !4300 {
entry:
  %__p.addr = alloca i64*, align 8
  store i64* %__p, i64** %__p.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %__p.addr, metadata !4305, metadata !DIExpression()), !dbg !4306
  %0 = load i64*, i64** %__p.addr, align 8, !dbg !4307
  %1 = bitcast i64* %0 to i8*, !dbg !4307
  %2 = bitcast i8* %1 to i64*, !dbg !4308
  store i64 0, i64* %2, align 8, !dbg !4308
  ret void, !dbg !4309
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i64* @_ZSt6fill_nIPlmlET_S1_T0_RKT1_(i64* %__first, i64 %__n, i64* nonnull align 8 dereferenceable(8) %__value) #5 comdat !dbg !4310 {
entry:
  %__first.addr = alloca i64*, align 8
  %__n.addr = alloca i64, align 8
  %__value.addr = alloca i64*, align 8
  %agg.tmp = alloca %"class.std::allocator.0", align 1
  %undef.agg.tmp = alloca %"class.std::allocator.0", align 1
  store i64* %__first, i64** %__first.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %__first.addr, metadata !4314, metadata !DIExpression()), !dbg !4315
  store i64 %__n, i64* %__n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %__n.addr, metadata !4316, metadata !DIExpression()), !dbg !4317
  store i64* %__value, i64** %__value.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %__value.addr, metadata !4318, metadata !DIExpression()), !dbg !4319
  %0 = load i64*, i64** %__first.addr, align 8, !dbg !4320
  %1 = load i64, i64* %__n.addr, align 8, !dbg !4321
  %call = call i64 @_ZSt17__size_to_integerm(i64 %1), !dbg !4322
  %2 = load i64*, i64** %__value.addr, align 8, !dbg !4323
  call void @_ZSt19__iterator_categoryIPlENSt15iterator_traitsIT_E17iterator_categoryERKS2_(i64** nonnull align 8 dereferenceable(8) %__first.addr), !dbg !4324
  %call1 = call i64* @_ZSt10__fill_n_aIPlmlET_S1_T0_RKT1_St26random_access_iterator_tag(i64* %0, i64 %call, i64* nonnull align 8 dereferenceable(8) %2), !dbg !4325
  ret i64* %call1, !dbg !4326
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @_ZSt17__size_to_integerm(i64 %__n) #4 comdat !dbg !4327 {
entry:
  %__n.addr = alloca i64, align 8
  store i64 %__n, i64* %__n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %__n.addr, metadata !4330, metadata !DIExpression()), !dbg !4331
  %0 = load i64, i64* %__n.addr, align 8, !dbg !4332
  ret i64 %0, !dbg !4333
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZSt19__iterator_categoryIPlENSt15iterator_traitsIT_E17iterator_categoryERKS2_(i64** nonnull align 8 dereferenceable(8) %0) #4 comdat !dbg !4334 {
entry:
  %.addr = alloca i64**, align 8
  store i64** %0, i64*** %.addr, align 8
  call void @llvm.dbg.declare(metadata i64*** %.addr, metadata !4340, metadata !DIExpression()), !dbg !4341
  ret void, !dbg !4342
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i64* @_ZSt10__fill_n_aIPlmlET_S1_T0_RKT1_St26random_access_iterator_tag(i64* %__first, i64 %__n, i64* nonnull align 8 dereferenceable(8) %__value) #5 comdat !dbg !4343 {
entry:
  %retval = alloca i64*, align 8
  %0 = alloca %"class.std::allocator.0", align 1
  %__first.addr = alloca i64*, align 8
  %__n.addr = alloca i64, align 8
  %__value.addr = alloca i64*, align 8
  store i64* %__first, i64** %__first.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %__first.addr, metadata !4348, metadata !DIExpression()), !dbg !4349
  store i64 %__n, i64* %__n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %__n.addr, metadata !4350, metadata !DIExpression()), !dbg !4351
  store i64* %__value, i64** %__value.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %__value.addr, metadata !4352, metadata !DIExpression()), !dbg !4353
  call void @llvm.dbg.declare(metadata %"class.std::allocator.0"* %0, metadata !4354, metadata !DIExpression()), !dbg !4355
  %1 = load i64, i64* %__n.addr, align 8, !dbg !4356
  %cmp = icmp ule i64 %1, 0, !dbg !4358
  br i1 %cmp, label %if.then, label %if.end, !dbg !4359

if.then:                                          ; preds = %entry
  %2 = load i64*, i64** %__first.addr, align 8, !dbg !4360
  store i64* %2, i64** %retval, align 8, !dbg !4361
  br label %return, !dbg !4361

if.end:                                           ; preds = %entry
  %3 = load i64*, i64** %__first.addr, align 8, !dbg !4362
  %4 = load i64*, i64** %__first.addr, align 8, !dbg !4363
  %5 = load i64, i64* %__n.addr, align 8, !dbg !4364
  %add.ptr = getelementptr inbounds i64, i64* %4, i64 %5, !dbg !4365
  %6 = load i64*, i64** %__value.addr, align 8, !dbg !4366
  call void @_ZSt8__fill_aIPllEvT_S1_RKT0_(i64* %3, i64* %add.ptr, i64* nonnull align 8 dereferenceable(8) %6), !dbg !4367
  %7 = load i64*, i64** %__first.addr, align 8, !dbg !4368
  %8 = load i64, i64* %__n.addr, align 8, !dbg !4369
  %add.ptr1 = getelementptr inbounds i64, i64* %7, i64 %8, !dbg !4370
  store i64* %add.ptr1, i64** %retval, align 8, !dbg !4371
  br label %return, !dbg !4371

return:                                           ; preds = %if.end, %if.then
  %9 = load i64*, i64** %retval, align 8, !dbg !4372
  ret i64* %9, !dbg !4372
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZSt8__fill_aIPllEvT_S1_RKT0_(i64* %__first, i64* %__last, i64* nonnull align 8 dereferenceable(8) %__value) #5 comdat !dbg !4373 {
entry:
  %__first.addr = alloca i64*, align 8
  %__last.addr = alloca i64*, align 8
  %__value.addr = alloca i64*, align 8
  store i64* %__first, i64** %__first.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %__first.addr, metadata !4378, metadata !DIExpression()), !dbg !4379
  store i64* %__last, i64** %__last.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %__last.addr, metadata !4380, metadata !DIExpression()), !dbg !4381
  store i64* %__value, i64** %__value.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %__value.addr, metadata !4382, metadata !DIExpression()), !dbg !4383
  %0 = load i64*, i64** %__first.addr, align 8, !dbg !4384
  %1 = load i64*, i64** %__last.addr, align 8, !dbg !4385
  %2 = load i64*, i64** %__value.addr, align 8, !dbg !4386
  call void @_ZSt9__fill_a1IPllEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_(i64* %0, i64* %1, i64* nonnull align 8 dereferenceable(8) %2), !dbg !4387
  ret void, !dbg !4388
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZSt9__fill_a1IPllEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_(i64* %__first, i64* %__last, i64* nonnull align 8 dereferenceable(8) %__value) #4 comdat !dbg !4389 {
entry:
  %__first.addr = alloca i64*, align 8
  %__last.addr = alloca i64*, align 8
  %__value.addr = alloca i64*, align 8
  %__tmp = alloca i64, align 8
  store i64* %__first, i64** %__first.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %__first.addr, metadata !4396, metadata !DIExpression()), !dbg !4397
  store i64* %__last, i64** %__last.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %__last.addr, metadata !4398, metadata !DIExpression()), !dbg !4399
  store i64* %__value, i64** %__value.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %__value.addr, metadata !4400, metadata !DIExpression()), !dbg !4401
  call void @llvm.dbg.declare(metadata i64* %__tmp, metadata !4402, metadata !DIExpression()), !dbg !4403
  %0 = load i64*, i64** %__value.addr, align 8, !dbg !4404
  %1 = load i64, i64* %0, align 8, !dbg !4404
  store i64 %1, i64* %__tmp, align 8, !dbg !4403
  br label %for.cond, !dbg !4405

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i64*, i64** %__first.addr, align 8, !dbg !4406
  %3 = load i64*, i64** %__last.addr, align 8, !dbg !4409
  %cmp = icmp ne i64* %2, %3, !dbg !4410
  br i1 %cmp, label %for.body, label %for.end, !dbg !4411

for.body:                                         ; preds = %for.cond
  %4 = load i64, i64* %__tmp, align 8, !dbg !4412
  %5 = load i64*, i64** %__first.addr, align 8, !dbg !4413
  store i64 %4, i64* %5, align 8, !dbg !4414
  br label %for.inc, !dbg !4415

for.inc:                                          ; preds = %for.body
  %6 = load i64*, i64** %__first.addr, align 8, !dbg !4416
  %incdec.ptr = getelementptr inbounds i64, i64* %6, i32 1, !dbg !4416
  store i64* %incdec.ptr, i64** %__first.addr, align 8, !dbg !4416
  br label %for.cond, !dbg !4417, !llvm.loop !4418

for.end:                                          ; preds = %for.cond
  ret void, !dbg !4420
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @_ZNSt6vectorIlSaIlEE11_S_max_sizeERKS0_(%"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %__a) #4 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !4421 {
entry:
  %__a.addr = alloca %"class.std::allocator.0"*, align 8
  %__diffmax = alloca i64, align 8
  %__allocmax = alloca i64, align 8
  store %"class.std::allocator.0"* %__a, %"class.std::allocator.0"** %__a.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::allocator.0"** %__a.addr, metadata !4422, metadata !DIExpression()), !dbg !4423
  call void @llvm.dbg.declare(metadata i64* %__diffmax, metadata !4424, metadata !DIExpression()), !dbg !4426
  store i64 1152921504606846975, i64* %__diffmax, align 8, !dbg !4426
  call void @llvm.dbg.declare(metadata i64* %__allocmax, metadata !4427, metadata !DIExpression()), !dbg !4428
  %0 = load %"class.std::allocator.0"*, %"class.std::allocator.0"** %__a.addr, align 8, !dbg !4429
  %call = call i64 @_ZNSt16allocator_traitsISaIlEE8max_sizeERKS0_(%"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %0) #6, !dbg !4430
  store i64 %call, i64* %__allocmax, align 8, !dbg !4428
  %call1 = invoke nonnull align 8 dereferenceable(8) i64* @_ZSt3minImERKT_S2_S2_(i64* nonnull align 8 dereferenceable(8) %__diffmax, i64* nonnull align 8 dereferenceable(8) %__allocmax)
          to label %invoke.cont unwind label %terminate.lpad, !dbg !4431

invoke.cont:                                      ; preds = %entry
  %1 = load i64, i64* %call1, align 8, !dbg !4431
  ret i64 %1, !dbg !4432

terminate.lpad:                                   ; preds = %entry
  %2 = landingpad { i8*, i32 }
          catch i8* null, !dbg !4431
  %3 = extractvalue { i8*, i32 } %2, 0, !dbg !4431
  call void @__clang_call_terminate(i8* %3) #14, !dbg !4431
  unreachable, !dbg !4431
}

; Function Attrs: noreturn
declare dso_local void @_ZSt20__throw_length_errorPKc(i8*) #11

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @_ZNSt16allocator_traitsISaIlEE8max_sizeERKS0_(%"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %__a) #4 comdat align 2 !dbg !4433 {
entry:
  %__a.addr = alloca %"class.std::allocator.0"*, align 8
  store %"class.std::allocator.0"* %__a, %"class.std::allocator.0"** %__a.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::allocator.0"** %__a.addr, metadata !4434, metadata !DIExpression()), !dbg !4435
  %0 = load %"class.std::allocator.0"*, %"class.std::allocator.0"** %__a.addr, align 8, !dbg !4436
  %1 = bitcast %"class.std::allocator.0"* %0 to %"class.std::allocator.0"*, !dbg !4436
  %call = call i64 @_ZNK9__gnu_cxx13new_allocatorIlE8max_sizeEv(%"class.std::allocator.0"* %1) #6, !dbg !4437
  ret i64 %call, !dbg !4438
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) i64* @_ZSt3minImERKT_S2_S2_(i64* nonnull align 8 dereferenceable(8) %__a, i64* nonnull align 8 dereferenceable(8) %__b) #4 comdat !dbg !4439 {
entry:
  %retval = alloca i64*, align 8
  %__a.addr = alloca i64*, align 8
  %__b.addr = alloca i64*, align 8
  store i64* %__a, i64** %__a.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %__a.addr, metadata !4444, metadata !DIExpression()), !dbg !4445
  store i64* %__b, i64** %__b.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %__b.addr, metadata !4446, metadata !DIExpression()), !dbg !4447
  %0 = load i64*, i64** %__b.addr, align 8, !dbg !4448
  %1 = load i64, i64* %0, align 8, !dbg !4448
  %2 = load i64*, i64** %__a.addr, align 8, !dbg !4450
  %3 = load i64, i64* %2, align 8, !dbg !4450
  %cmp = icmp ult i64 %1, %3, !dbg !4451
  br i1 %cmp, label %if.then, label %if.end, !dbg !4452

if.then:                                          ; preds = %entry
  %4 = load i64*, i64** %__b.addr, align 8, !dbg !4453
  store i64* %4, i64** %retval, align 8, !dbg !4454
  br label %return, !dbg !4454

if.end:                                           ; preds = %entry
  %5 = load i64*, i64** %__a.addr, align 8, !dbg !4455
  store i64* %5, i64** %retval, align 8, !dbg !4456
  br label %return, !dbg !4456

return:                                           ; preds = %if.end, %if.then
  %6 = load i64*, i64** %retval, align 8, !dbg !4457
  ret i64* %6, !dbg !4457
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @_ZNK9__gnu_cxx13new_allocatorIlE8max_sizeEv(%"class.std::allocator.0"* %this) #4 comdat align 2 !dbg !4458 {
entry:
  %this.addr = alloca %"class.std::allocator.0"*, align 8
  store %"class.std::allocator.0"* %this, %"class.std::allocator.0"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::allocator.0"** %this.addr, metadata !4459, metadata !DIExpression()), !dbg !4460
  %this1 = load %"class.std::allocator.0"*, %"class.std::allocator.0"** %this.addr, align 8
  %call = call i64 @_ZNK9__gnu_cxx13new_allocatorIlE11_M_max_sizeEv(%"class.std::allocator.0"* %this1) #6, !dbg !4461
  ret i64 %call, !dbg !4462
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorIlEC2Ev(%"class.std::allocator.0"* %this) unnamed_addr #4 comdat align 2 !dbg !4463 {
entry:
  %this.addr = alloca %"class.std::allocator.0"*, align 8
  store %"class.std::allocator.0"* %this, %"class.std::allocator.0"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::allocator.0"** %this.addr, metadata !4464, metadata !DIExpression()), !dbg !4465
  %this1 = load %"class.std::allocator.0"*, %"class.std::allocator.0"** %this.addr, align 8
  ret void, !dbg !4466
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow12TensorBufferC2EPv(%"class.tensorflow::TensorBuffer"* %this, i8* %data_ptr) unnamed_addr #5 comdat align 2 !dbg !4467 {
entry:
  %this.addr = alloca %"class.tensorflow::TensorBuffer"*, align 8
  %data_ptr.addr = alloca i8*, align 8
  store %"class.tensorflow::TensorBuffer"* %this, %"class.tensorflow::TensorBuffer"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::TensorBuffer"** %this.addr, metadata !4472, metadata !DIExpression()), !dbg !4473
  store i8* %data_ptr, i8** %data_ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data_ptr.addr, metadata !4474, metadata !DIExpression()), !dbg !4475
  %this1 = load %"class.tensorflow::TensorBuffer"*, %"class.tensorflow::TensorBuffer"** %this.addr, align 8
  %0 = bitcast %"class.tensorflow::TensorBuffer"* %this1 to %"class.tensorflow::core::RefCounted"*, !dbg !4476
  call void @_ZN10tensorflow4core10RefCountedC2Ev(%"class.tensorflow::core::RefCounted"* %0), !dbg !4477
  %1 = bitcast %"class.tensorflow::TensorBuffer"* %this1 to i32 (...)***, !dbg !4476
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [10 x i8*] }, { [10 x i8*] }* @_ZTVN10tensorflow12TensorBufferE, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %1, align 8, !dbg !4476
  %data_ = getelementptr inbounds %"class.tensorflow::TensorBuffer", %"class.tensorflow::TensorBuffer"* %this1, i32 0, i32 1, !dbg !4478
  %2 = load i8*, i8** %data_ptr.addr, align 8, !dbg !4479
  store i8* %2, i8** %data_, align 8, !dbg !4478
  ret void, !dbg !4480
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN16TF_ManagedBufferD2Ev(%class.TF_ManagedBuffer* %this) unnamed_addr #4 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !4481 {
entry:
  %this.addr = alloca %class.TF_ManagedBuffer*, align 8
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  store %class.TF_ManagedBuffer* %this, %class.TF_ManagedBuffer** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %class.TF_ManagedBuffer** %this.addr, metadata !4482, metadata !DIExpression()), !dbg !4483
  %this1 = load %class.TF_ManagedBuffer*, %class.TF_ManagedBuffer** %this.addr, align 8
  %0 = bitcast %class.TF_ManagedBuffer* %this1 to i32 (...)***, !dbg !4484
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [10 x i8*] }, { [10 x i8*] }* @_ZTV16TF_ManagedBuffer, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %0, align 8, !dbg !4484
  %deallocator_ = getelementptr inbounds %class.TF_ManagedBuffer, %class.TF_ManagedBuffer* %this1, i32 0, i32 2, !dbg !4485
  %1 = load void (i8*, i64, i8*)*, void (i8*, i64, i8*)** %deallocator_, align 8, !dbg !4485
  %2 = bitcast %class.TF_ManagedBuffer* %this1 to %"class.tensorflow::TensorBuffer"*, !dbg !4487
  %call = invoke i8* @_ZNK10tensorflow12TensorBuffer4dataEv(%"class.tensorflow::TensorBuffer"* %2)
          to label %invoke.cont unwind label %lpad, !dbg !4487

invoke.cont:                                      ; preds = %entry
  %len_ = getelementptr inbounds %class.TF_ManagedBuffer, %class.TF_ManagedBuffer* %this1, i32 0, i32 1, !dbg !4488
  %3 = load i64, i64* %len_, align 8, !dbg !4488
  %deallocator_arg_ = getelementptr inbounds %class.TF_ManagedBuffer, %class.TF_ManagedBuffer* %this1, i32 0, i32 3, !dbg !4489
  %4 = load i8*, i8** %deallocator_arg_, align 8, !dbg !4489
  invoke void %1(i8* %call, i64 %3, i8* %4)
          to label %invoke.cont2 unwind label %lpad, !dbg !4490

invoke.cont2:                                     ; preds = %invoke.cont
  %5 = bitcast %class.TF_ManagedBuffer* %this1 to %"class.tensorflow::TensorBuffer"*, !dbg !4491
  call void @_ZN10tensorflow12TensorBufferD2Ev(%"class.tensorflow::TensorBuffer"* %5) #6, !dbg !4491
  ret void, !dbg !4492

lpad:                                             ; preds = %invoke.cont, %entry
  %6 = landingpad { i8*, i32 }
          catch i8* null, !dbg !4491
  %7 = extractvalue { i8*, i32 } %6, 0, !dbg !4491
  store i8* %7, i8** %exn.slot, align 8, !dbg !4491
  %8 = extractvalue { i8*, i32 } %6, 1, !dbg !4491
  store i32 %8, i32* %ehselector.slot, align 4, !dbg !4491
  %9 = bitcast %class.TF_ManagedBuffer* %this1 to %"class.tensorflow::TensorBuffer"*, !dbg !4491
  call void @_ZN10tensorflow12TensorBufferD2Ev(%"class.tensorflow::TensorBuffer"* %9) #6, !dbg !4491
  br label %terminate.handler, !dbg !4491

terminate.handler:                                ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8, !dbg !4491
  call void @__clang_call_terminate(i8* %exn) #14, !dbg !4491
  unreachable, !dbg !4491
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN16TF_ManagedBufferD0Ev(%class.TF_ManagedBuffer* %this) unnamed_addr #4 comdat align 2 !dbg !4493 {
entry:
  %this.addr = alloca %class.TF_ManagedBuffer*, align 8
  store %class.TF_ManagedBuffer* %this, %class.TF_ManagedBuffer** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %class.TF_ManagedBuffer** %this.addr, metadata !4494, metadata !DIExpression()), !dbg !4495
  %this1 = load %class.TF_ManagedBuffer*, %class.TF_ManagedBuffer** %this.addr, align 8
  call void @_ZN16TF_ManagedBufferD2Ev(%class.TF_ManagedBuffer* %this1) #6, !dbg !4496
  %0 = bitcast %class.TF_ManagedBuffer* %this1 to i8*, !dbg !4496
  call void @_ZdlPv(i8* %0) #17, !dbg !4496
  ret void, !dbg !4497
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @_ZNK16TF_ManagedBuffer4sizeEv(%class.TF_ManagedBuffer* %this) unnamed_addr #4 comdat align 2 !dbg !4498 {
entry:
  %this.addr = alloca %class.TF_ManagedBuffer*, align 8
  store %class.TF_ManagedBuffer* %this, %class.TF_ManagedBuffer** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %class.TF_ManagedBuffer** %this.addr, metadata !4499, metadata !DIExpression()), !dbg !4501
  %this1 = load %class.TF_ManagedBuffer*, %class.TF_ManagedBuffer** %this.addr, align 8
  %len_ = getelementptr inbounds %class.TF_ManagedBuffer, %class.TF_ManagedBuffer* %this1, i32 0, i32 1, !dbg !4502
  %0 = load i64, i64* %len_, align 8, !dbg !4502
  ret i64 %0, !dbg !4503
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %"class.tensorflow::TensorBuffer"* @_ZN16TF_ManagedBuffer11root_bufferEv(%class.TF_ManagedBuffer* %this) unnamed_addr #4 comdat align 2 !dbg !4504 {
entry:
  %this.addr = alloca %class.TF_ManagedBuffer*, align 8
  store %class.TF_ManagedBuffer* %this, %class.TF_ManagedBuffer** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %class.TF_ManagedBuffer** %this.addr, metadata !4505, metadata !DIExpression()), !dbg !4506
  %this1 = load %class.TF_ManagedBuffer*, %class.TF_ManagedBuffer** %this.addr, align 8
  %0 = bitcast %class.TF_ManagedBuffer* %this1 to %"class.tensorflow::TensorBuffer"*, !dbg !4507
  ret %"class.tensorflow::TensorBuffer"* %0, !dbg !4508
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNK16TF_ManagedBuffer25FillAllocationDescriptionEPN10tensorflow21AllocationDescriptionE(%class.TF_ManagedBuffer* %this, %"class.tensorflow::AllocationDescription"* %0) unnamed_addr #4 comdat align 2 !dbg !4509 {
entry:
  %this.addr = alloca %class.TF_ManagedBuffer*, align 8
  %.addr = alloca %"class.tensorflow::AllocationDescription"*, align 8
  store %class.TF_ManagedBuffer* %this, %class.TF_ManagedBuffer** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %class.TF_ManagedBuffer** %this.addr, metadata !4510, metadata !DIExpression()), !dbg !4511
  store %"class.tensorflow::AllocationDescription"* %0, %"class.tensorflow::AllocationDescription"** %.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::AllocationDescription"** %.addr, metadata !4512, metadata !DIExpression()), !dbg !4513
  %this1 = load %class.TF_ManagedBuffer*, %class.TF_ManagedBuffer** %this.addr, align 8
  ret void, !dbg !4514
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local zeroext i1 @_ZNK16TF_ManagedBuffer10OwnsMemoryEv(%class.TF_ManagedBuffer* %this) unnamed_addr #4 comdat align 2 !dbg !4515 {
entry:
  %this.addr = alloca %class.TF_ManagedBuffer*, align 8
  store %class.TF_ManagedBuffer* %this, %class.TF_ManagedBuffer** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %class.TF_ManagedBuffer** %this.addr, metadata !4516, metadata !DIExpression()), !dbg !4517
  %this1 = load %class.TF_ManagedBuffer*, %class.TF_ManagedBuffer** %this.addr, align 8
  %owns_memory_ = getelementptr inbounds %class.TF_ManagedBuffer, %class.TF_ManagedBuffer* %this1, i32 0, i32 4, !dbg !4518
  %0 = load i8, i8* %owns_memory_, align 8, !dbg !4518
  %tobool = trunc i8 %0 to i1, !dbg !4518
  ret i1 %tobool, !dbg !4519
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i32 @_ZNK10tensorflow12TensorBuffer13GetMemoryTypeEv(%"class.tensorflow::TensorBuffer"* %this) unnamed_addr #4 comdat align 2 !dbg !4520 {
entry:
  %this.addr = alloca %"class.tensorflow::TensorBuffer"*, align 8
  store %"class.tensorflow::TensorBuffer"* %this, %"class.tensorflow::TensorBuffer"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::TensorBuffer"** %this.addr, metadata !4526, metadata !DIExpression()), !dbg !4528
  %this1 = load %"class.tensorflow::TensorBuffer"*, %"class.tensorflow::TensorBuffer"** %this.addr, align 8
  ret i32 0, !dbg !4529
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i8* @_ZNK10tensorflow12TensorBuffer4dataEv(%"class.tensorflow::TensorBuffer"* %this) #4 comdat align 2 !dbg !4530 {
entry:
  %this.addr = alloca %"class.tensorflow::TensorBuffer"*, align 8
  store %"class.tensorflow::TensorBuffer"* %this, %"class.tensorflow::TensorBuffer"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::TensorBuffer"** %this.addr, metadata !4534, metadata !DIExpression()), !dbg !4535
  %this1 = load %"class.tensorflow::TensorBuffer"*, %"class.tensorflow::TensorBuffer"** %this.addr, align 8
  %data_ = getelementptr inbounds %"class.tensorflow::TensorBuffer", %"class.tensorflow::TensorBuffer"* %this1, i32 0, i32 1, !dbg !4536
  %0 = load i8*, i8** %data_, align 8, !dbg !4536
  ret i8* %0, !dbg !4537
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow12TensorBufferD2Ev(%"class.tensorflow::TensorBuffer"* %this) unnamed_addr #4 comdat align 2 !dbg !4538 {
entry:
  %this.addr = alloca %"class.tensorflow::TensorBuffer"*, align 8
  store %"class.tensorflow::TensorBuffer"* %this, %"class.tensorflow::TensorBuffer"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::TensorBuffer"** %this.addr, metadata !4542, metadata !DIExpression()), !dbg !4543
  %this1 = load %"class.tensorflow::TensorBuffer"*, %"class.tensorflow::TensorBuffer"** %this.addr, align 8
  %0 = bitcast %"class.tensorflow::TensorBuffer"* %this1 to %"class.tensorflow::core::RefCounted"*, !dbg !4544
  call void @_ZN10tensorflow4core10RefCountedD2Ev(%"class.tensorflow::core::RefCounted"* %0) #6, !dbg !4544
  ret void, !dbg !4546
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow4core10RefCountedD2Ev(%"class.tensorflow::core::RefCounted"* %this) unnamed_addr #4 comdat align 2 !dbg !4547 {
entry:
  %this.addr = alloca %"class.tensorflow::core::RefCounted"*, align 8
  store %"class.tensorflow::core::RefCounted"* %this, %"class.tensorflow::core::RefCounted"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::core::RefCounted"** %this.addr, metadata !4548, metadata !DIExpression()), !dbg !4550
  %this1 = load %"class.tensorflow::core::RefCounted"*, %"class.tensorflow::core::RefCounted"** %this.addr, align 8
  ret void, !dbg !4551
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow4core10RefCountedC2Ev(%"class.tensorflow::core::RefCounted"* %this) unnamed_addr #4 comdat align 2 !dbg !4552 {
entry:
  %this.addr = alloca %"class.tensorflow::core::RefCounted"*, align 8
  store %"class.tensorflow::core::RefCounted"* %this, %"class.tensorflow::core::RefCounted"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::core::RefCounted"** %this.addr, metadata !4553, metadata !DIExpression()), !dbg !4554
  %this1 = load %"class.tensorflow::core::RefCounted"*, %"class.tensorflow::core::RefCounted"** %this.addr, align 8
  %0 = bitcast %"class.tensorflow::core::RefCounted"* %this1 to i32 (...)***, !dbg !4555
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [4 x i8*] }, { [4 x i8*] }* @_ZTVN10tensorflow4core10RefCountedE, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %0, align 8, !dbg !4555
  %ref_count_ = getelementptr inbounds %"class.tensorflow::core::RefCounted", %"class.tensorflow::core::RefCounted"* %this1, i32 0, i32 1, !dbg !4556
  call void @_ZNSt6atomicImEC2Em(%"struct.std::atomic"* %ref_count_, i64 1) #6, !dbg !4556
  ret void, !dbg !4557
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt6atomicImEC2Em(%"struct.std::atomic"* %this, i64 %__i) unnamed_addr #4 comdat align 2 !dbg !4558 {
entry:
  %this.addr = alloca %"struct.std::atomic"*, align 8
  %__i.addr = alloca i64, align 8
  store %"struct.std::atomic"* %this, %"struct.std::atomic"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::atomic"** %this.addr, metadata !4559, metadata !DIExpression()), !dbg !4561
  store i64 %__i, i64* %__i.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %__i.addr, metadata !4562, metadata !DIExpression()), !dbg !4563
  %this1 = load %"struct.std::atomic"*, %"struct.std::atomic"** %this.addr, align 8
  %0 = bitcast %"struct.std::atomic"* %this1 to %"struct.std::__atomic_base"*, !dbg !4564
  %1 = load i64, i64* %__i.addr, align 8, !dbg !4565
  call void @_ZNSt13__atomic_baseImEC2Em(%"struct.std::__atomic_base"* %0, i64 %1) #6, !dbg !4566
  ret void, !dbg !4567
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt13__atomic_baseImEC2Em(%"struct.std::__atomic_base"* %this, i64 %__i) unnamed_addr #4 comdat align 2 !dbg !4568 {
entry:
  %this.addr = alloca %"struct.std::__atomic_base"*, align 8
  %__i.addr = alloca i64, align 8
  store %"struct.std::__atomic_base"* %this, %"struct.std::__atomic_base"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::__atomic_base"** %this.addr, metadata !4569, metadata !DIExpression()), !dbg !4570
  store i64 %__i, i64* %__i.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %__i.addr, metadata !4571, metadata !DIExpression()), !dbg !4572
  %this1 = load %"struct.std::__atomic_base"*, %"struct.std::__atomic_base"** %this.addr, align 8
  %_M_i = getelementptr inbounds %"struct.std::__atomic_base", %"struct.std::__atomic_base"* %this1, i32 0, i32 0, !dbg !4573
  %0 = load i64, i64* %__i.addr, align 8, !dbg !4574
  store i64 %0, i64* %_M_i, align 8, !dbg !4573
  ret void, !dbg !4575
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow4core10RefCountedD0Ev(%"class.tensorflow::core::RefCounted"* %this) unnamed_addr #4 comdat align 2 !dbg !4576 {
entry:
  %this.addr = alloca %"class.tensorflow::core::RefCounted"*, align 8
  store %"class.tensorflow::core::RefCounted"* %this, %"class.tensorflow::core::RefCounted"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::core::RefCounted"** %this.addr, metadata !4577, metadata !DIExpression()), !dbg !4578
  %this1 = load %"class.tensorflow::core::RefCounted"*, %"class.tensorflow::core::RefCounted"** %this.addr, align 8
  call void @_ZN10tensorflow4core10RefCountedD2Ev(%"class.tensorflow::core::RefCounted"* %this1) #6, !dbg !4579
  %0 = bitcast %"class.tensorflow::core::RefCounted"* %this1 to i8*, !dbg !4579
  call void @_ZdlPv(i8* %0) #17, !dbg !4579
  ret void, !dbg !4579
}

; Function Attrs: noinline optnone uwtable
define dso_local %struct.TF_Tensor* @TF_NewTensor(i32 %dtype, i64* %dims, i32 %num_dims, i8* %data, i64 %len, void (i8*, i64, i8*)* %deallocator, i8* %deallocator_arg) #5 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !4580 {
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
  call void @llvm.dbg.declare(metadata i32* %dtype.addr, metadata !4583, metadata !DIExpression()), !dbg !4584
  store i64* %dims, i64** %dims.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %dims.addr, metadata !4585, metadata !DIExpression()), !dbg !4586
  store i32 %num_dims, i32* %num_dims.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %num_dims.addr, metadata !4587, metadata !DIExpression()), !dbg !4588
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !4589, metadata !DIExpression()), !dbg !4590
  store i64 %len, i64* %len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !4591, metadata !DIExpression()), !dbg !4592
  store void (i8*, i64, i8*)* %deallocator, void (i8*, i64, i8*)** %deallocator.addr, align 8
  call void @llvm.dbg.declare(metadata void (i8*, i64, i8*)** %deallocator.addr, metadata !4593, metadata !DIExpression()), !dbg !4594
  store i8* %deallocator_arg, i8** %deallocator_arg.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %deallocator_arg.addr, metadata !4595, metadata !DIExpression()), !dbg !4596
  call void @llvm.dbg.declare(metadata %class.TF_ManagedBuffer** %buf, metadata !4597, metadata !DIExpression()), !dbg !4598
  store %class.TF_ManagedBuffer* null, %class.TF_ManagedBuffer** %buf, align 8, !dbg !4598
  %0 = load i32, i32* %dtype.addr, align 4, !dbg !4599
  %cmp = icmp ne i32 %0, 7, !dbg !4601
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !4602

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %dtype.addr, align 4, !dbg !4603
  %cmp1 = icmp ne i32 %1, 20, !dbg !4604
  br i1 %cmp1, label %land.lhs.true2, label %land.end, !dbg !4605

land.lhs.true2:                                   ; preds = %land.lhs.true
  %2 = load i32, i32* %dtype.addr, align 4, !dbg !4606
  %call = call zeroext i1 @_ZN10tensorflow20DataTypeCanUseMemcpyE8DataType(i32 %2), !dbg !4607
  br i1 %call, label %land.rhs, label %land.end, !dbg !4608

land.rhs:                                         ; preds = %land.lhs.true2
  %3 = load i8*, i8** %data.addr, align 8, !dbg !4609
  %4 = ptrtoint i8* %3 to i64, !dbg !4610
  store i32 1, i32* %ref.tmp, align 4, !dbg !4611
  store i32 64, i32* %ref.tmp3, align 4, !dbg !4612
  %call4 = call nonnull align 4 dereferenceable(4) i32* @_ZSt3maxIiERKT_S2_S2_(i32* nonnull align 4 dereferenceable(4) %ref.tmp, i32* nonnull align 4 dereferenceable(4) %ref.tmp3), !dbg !4613
  %5 = load i32, i32* %call4, align 4, !dbg !4613
  %conv = sext i32 %5 to i64, !dbg !4613
  call void @klee_div_zero_check(i64 %conv), !dbg !4614
  %rem = srem i64 %4, %conv, !dbg !4614, !klee.check.div !4615
  %cmp5 = icmp ne i64 %rem, 0, !dbg !4616
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true2, %land.lhs.true, %entry
  %6 = phi i1 [ false, %land.lhs.true2 ], [ false, %land.lhs.true ], [ false, %entry ], [ %cmp5, %land.rhs ], !dbg !4617
  br i1 %6, label %if.then, label %if.else, !dbg !4618

if.then:                                          ; preds = %land.end
  %call6 = call noalias nonnull i8* @_Znwm(i64 56) #16, !dbg !4619, !heapallocsite !3009
  %7 = bitcast i8* %call6 to %class.TF_ManagedBuffer*, !dbg !4619
  %8 = load i64, i64* %len.addr, align 8, !dbg !4621
  %call7 = invoke i8* @_ZN10tensorflow15allocate_tensorEPKcm(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1.9, i64 0, i64 0), i64 %8)
          to label %invoke.cont unwind label %lpad, !dbg !4622

invoke.cont:                                      ; preds = %if.then
  %9 = load i64, i64* %len.addr, align 8, !dbg !4623
  invoke void @_ZN16TF_ManagedBufferC2EPvmPFvS0_mS0_ES0_b(%class.TF_ManagedBuffer* %7, i8* %call7, i64 %9, void (i8*, i64, i8*)* @_ZN10tensorflow17deallocate_bufferEPvmS0_, i8* null, i1 zeroext true)
          to label %invoke.cont8 unwind label %lpad, !dbg !4624

invoke.cont8:                                     ; preds = %invoke.cont
  store %class.TF_ManagedBuffer* %7, %class.TF_ManagedBuffer** %buf, align 8, !dbg !4625
  %10 = load %class.TF_ManagedBuffer*, %class.TF_ManagedBuffer** %buf, align 8, !dbg !4626
  %11 = bitcast %class.TF_ManagedBuffer* %10 to %"class.tensorflow::TensorBuffer"*, !dbg !4627
  %call9 = call i8* @_ZNK10tensorflow12TensorBuffer4dataEv(%"class.tensorflow::TensorBuffer"* %11), !dbg !4627
  %12 = load i8*, i8** %data.addr, align 8, !dbg !4628
  %13 = load i64, i64* %len.addr, align 8, !dbg !4629
  %14 = call i8* @memcpy(i8* %call9, i8* %12, i64 %13), !dbg !4630
  %15 = load void (i8*, i64, i8*)*, void (i8*, i64, i8*)** %deallocator.addr, align 8, !dbg !4631
  %16 = load i8*, i8** %data.addr, align 8, !dbg !4632
  %17 = load i64, i64* %len.addr, align 8, !dbg !4633
  %18 = load i8*, i8** %deallocator_arg.addr, align 8, !dbg !4634
  call void %15(i8* %16, i64 %17, i8* %18), !dbg !4631
  br label %if.end, !dbg !4635

lpad:                                             ; preds = %invoke.cont, %if.then
  %19 = landingpad { i8*, i32 }
          cleanup, !dbg !4636
  %20 = extractvalue { i8*, i32 } %19, 0, !dbg !4636
  store i8* %20, i8** %exn.slot, align 8, !dbg !4636
  %21 = extractvalue { i8*, i32 } %19, 1, !dbg !4636
  store i32 %21, i32* %ehselector.slot, align 4, !dbg !4636
  call void @_ZdlPv(i8* %call6) #17, !dbg !4619
  br label %eh.resume, !dbg !4619

if.else:                                          ; preds = %land.end
  %call10 = call noalias nonnull i8* @_Znwm(i64 56) #16, !dbg !4637, !heapallocsite !3009
  %22 = bitcast i8* %call10 to %class.TF_ManagedBuffer*, !dbg !4637
  %23 = load i8*, i8** %data.addr, align 8, !dbg !4639
  %24 = load i64, i64* %len.addr, align 8, !dbg !4640
  %25 = load void (i8*, i64, i8*)*, void (i8*, i64, i8*)** %deallocator.addr, align 8, !dbg !4641
  %26 = load i8*, i8** %deallocator_arg.addr, align 8, !dbg !4642
  invoke void @_ZN16TF_ManagedBufferC2EPvmPFvS0_mS0_ES0_b(%class.TF_ManagedBuffer* %22, i8* %23, i64 %24, void (i8*, i64, i8*)* %25, i8* %26, i1 zeroext false)
          to label %invoke.cont12 unwind label %lpad11, !dbg !4643

invoke.cont12:                                    ; preds = %if.else
  store %class.TF_ManagedBuffer* %22, %class.TF_ManagedBuffer** %buf, align 8, !dbg !4644
  br label %if.end

lpad11:                                           ; preds = %if.else
  %27 = landingpad { i8*, i32 }
          cleanup, !dbg !4645
  %28 = extractvalue { i8*, i32 } %27, 0, !dbg !4645
  store i8* %28, i8** %exn.slot, align 8, !dbg !4645
  %29 = extractvalue { i8*, i32 } %27, 1, !dbg !4645
  store i32 %29, i32* %ehselector.slot, align 4, !dbg !4645
  call void @_ZdlPv(i8* %call10) #17, !dbg !4637
  br label %eh.resume, !dbg !4637

if.end:                                           ; preds = %invoke.cont12, %invoke.cont8
  %30 = load %class.TF_ManagedBuffer*, %class.TF_ManagedBuffer** %buf, align 8, !dbg !4646
  %31 = load i32, i32* %dtype.addr, align 4, !dbg !4647
  %32 = load i64*, i64** %dims.addr, align 8, !dbg !4648
  %33 = load i32, i32* %num_dims.addr, align 4, !dbg !4649
  %34 = load i64, i64* %len.addr, align 8, !dbg !4650
  %call13 = call %struct.TF_Tensor* @_ZN12_GLOBAL__N_112CreateTensorEP16TF_ManagedBuffer11TF_DataTypePKlim(%class.TF_ManagedBuffer* %30, i32 %31, i64* %32, i32 %33, i64 %34), !dbg !4651
  ret %struct.TF_Tensor* %call13, !dbg !4652

eh.resume:                                        ; preds = %lpad11, %lpad
  %exn = load i8*, i8** %exn.slot, align 8, !dbg !4619
  %sel = load i32, i32* %ehselector.slot, align 4, !dbg !4619
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0, !dbg !4619
  %lpad.val14 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1, !dbg !4619
  resume { i8*, i32 } %lpad.val14, !dbg !4619
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local zeroext i1 @_ZN10tensorflow20DataTypeCanUseMemcpyE8DataType(i32 %dt) #4 comdat !dbg !4653 {
entry:
  %retval = alloca i1, align 1
  %dt.addr = alloca i32, align 4
  store i32 %dt, i32* %dt.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %dt.addr, metadata !4656, metadata !DIExpression()), !dbg !4657
  %0 = load i32, i32* %dt.addr, align 4, !dbg !4658
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
  ], !dbg !4659

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry
  store i1 true, i1* %retval, align 1, !dbg !4660
  br label %return, !dbg !4660

sw.default:                                       ; preds = %entry
  store i1 false, i1* %retval, align 1, !dbg !4662
  br label %return, !dbg !4662

return:                                           ; preds = %sw.default, %sw.bb
  %1 = load i1, i1* %retval, align 1, !dbg !4663
  ret i1 %1, !dbg !4663
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 4 dereferenceable(4) i32* @_ZSt3maxIiERKT_S2_S2_(i32* nonnull align 4 dereferenceable(4) %__a, i32* nonnull align 4 dereferenceable(4) %__b) #4 comdat !dbg !4664 {
entry:
  %retval = alloca i32*, align 8
  %__a.addr = alloca i32*, align 8
  %__b.addr = alloca i32*, align 8
  store i32* %__a, i32** %__a.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %__a.addr, metadata !4670, metadata !DIExpression()), !dbg !4671
  store i32* %__b, i32** %__b.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %__b.addr, metadata !4672, metadata !DIExpression()), !dbg !4673
  %0 = load i32*, i32** %__a.addr, align 8, !dbg !4674
  %1 = load i32, i32* %0, align 4, !dbg !4674
  %2 = load i32*, i32** %__b.addr, align 8, !dbg !4676
  %3 = load i32, i32* %2, align 4, !dbg !4676
  %cmp = icmp slt i32 %1, %3, !dbg !4677
  br i1 %cmp, label %if.then, label %if.end, !dbg !4678

if.then:                                          ; preds = %entry
  %4 = load i32*, i32** %__b.addr, align 8, !dbg !4679
  store i32* %4, i32** %retval, align 8, !dbg !4680
  br label %return, !dbg !4680

if.end:                                           ; preds = %entry
  %5 = load i32*, i32** %__a.addr, align 8, !dbg !4681
  store i32* %5, i32** %retval, align 8, !dbg !4682
  br label %return, !dbg !4682

return:                                           ; preds = %if.end, %if.then
  %6 = load i32*, i32** %retval, align 8, !dbg !4683
  ret i32* %6, !dbg !4683
}

; Function Attrs: noinline optnone uwtable
define dso_local %struct.TF_Tensor* @TF_TensorMaybeMove(%struct.TF_Tensor* %t) #5 !dbg !4684 {
entry:
  %t.addr = alloca %struct.TF_Tensor*, align 8
  store %struct.TF_Tensor* %t, %struct.TF_Tensor** %t.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.TF_Tensor** %t.addr, metadata !4687, metadata !DIExpression()), !dbg !4688
  %0 = load %struct.TF_Tensor*, %struct.TF_Tensor** %t.addr, align 8, !dbg !4689
  %tensor = getelementptr inbounds %struct.TF_Tensor, %struct.TF_Tensor* %0, i32 0, i32 0, !dbg !4690
  %1 = load %"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"** %tensor, align 8, !dbg !4690
  %2 = bitcast %"class.tensorflow::AbstractTensorInterface"* %1 to i1 (%"class.tensorflow::AbstractTensorInterface"*)***, !dbg !4691
  %vtable = load i1 (%"class.tensorflow::AbstractTensorInterface"*)**, i1 (%"class.tensorflow::AbstractTensorInterface"*)*** %2, align 8, !dbg !4691
  %vfn = getelementptr inbounds i1 (%"class.tensorflow::AbstractTensorInterface"*)*, i1 (%"class.tensorflow::AbstractTensorInterface"*)** %vtable, i64 8, !dbg !4691
  %3 = load i1 (%"class.tensorflow::AbstractTensorInterface"*)*, i1 (%"class.tensorflow::AbstractTensorInterface"*)** %vfn, align 8, !dbg !4691
  %call = call zeroext i1 %3(%"class.tensorflow::AbstractTensorInterface"* %1), !dbg !4691
  br i1 %call, label %cond.true, label %cond.false, !dbg !4689

cond.true:                                        ; preds = %entry
  %4 = load %struct.TF_Tensor*, %struct.TF_Tensor** %t.addr, align 8, !dbg !4692
  br label %cond.end, !dbg !4689

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !4689

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.TF_Tensor* [ %4, %cond.true ], [ null, %cond.false ], !dbg !4689
  ret %struct.TF_Tensor* %cond, !dbg !4693
}

; Function Attrs: noinline optnone uwtable
define dso_local void @TF_DeleteTensor(%struct.TF_Tensor* %t) #5 !dbg !4694 {
entry:
  %t.addr = alloca %struct.TF_Tensor*, align 8
  store %struct.TF_Tensor* %t, %struct.TF_Tensor** %t.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.TF_Tensor** %t.addr, metadata !4697, metadata !DIExpression()), !dbg !4698
  %0 = load %struct.TF_Tensor*, %struct.TF_Tensor** %t.addr, align 8, !dbg !4699
  %cmp = icmp eq %struct.TF_Tensor* %0, null, !dbg !4701
  br i1 %cmp, label %if.then, label %if.end, !dbg !4702

if.then:                                          ; preds = %entry
  br label %delete.end, !dbg !4703

if.end:                                           ; preds = %entry
  %1 = load %struct.TF_Tensor*, %struct.TF_Tensor** %t.addr, align 8, !dbg !4705
  %tensor = getelementptr inbounds %struct.TF_Tensor, %struct.TF_Tensor* %1, i32 0, i32 0, !dbg !4707
  %2 = load %"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"** %tensor, align 8, !dbg !4707
  %tobool = icmp ne %"class.tensorflow::AbstractTensorInterface"* %2, null, !dbg !4705
  br i1 %tobool, label %if.then1, label %if.end3, !dbg !4708

if.then1:                                         ; preds = %if.end
  %3 = load %struct.TF_Tensor*, %struct.TF_Tensor** %t.addr, align 8, !dbg !4709
  %tensor2 = getelementptr inbounds %struct.TF_Tensor, %struct.TF_Tensor* %3, i32 0, i32 0, !dbg !4711
  %4 = load %"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"** %tensor2, align 8, !dbg !4711
  %5 = bitcast %"class.tensorflow::AbstractTensorInterface"* %4 to void (%"class.tensorflow::AbstractTensorInterface"*)***, !dbg !4712
  %vtable = load void (%"class.tensorflow::AbstractTensorInterface"*)**, void (%"class.tensorflow::AbstractTensorInterface"*)*** %5, align 8, !dbg !4712
  %vfn = getelementptr inbounds void (%"class.tensorflow::AbstractTensorInterface"*)*, void (%"class.tensorflow::AbstractTensorInterface"*)** %vtable, i64 0, !dbg !4712
  %6 = load void (%"class.tensorflow::AbstractTensorInterface"*)*, void (%"class.tensorflow::AbstractTensorInterface"*)** %vfn, align 8, !dbg !4712
  call void %6(%"class.tensorflow::AbstractTensorInterface"* %4), !dbg !4712
  br label %if.end3, !dbg !4713

if.end3:                                          ; preds = %if.then1, %if.end
  %7 = load %struct.TF_Tensor*, %struct.TF_Tensor** %t.addr, align 8, !dbg !4714
  %isnull = icmp eq %struct.TF_Tensor* %7, null, !dbg !4715
  br i1 %isnull, label %delete.end, label %delete.notnull, !dbg !4715

delete.notnull:                                   ; preds = %if.end3
  %8 = bitcast %struct.TF_Tensor* %7 to i8*, !dbg !4715
  call void @_ZdlPv(i8* %8) #17, !dbg !4715
  br label %delete.end, !dbg !4715

delete.end:                                       ; preds = %if.then, %delete.notnull, %if.end3
  ret void, !dbg !4716
}

; Function Attrs: noinline optnone uwtable
define dso_local i32 @TF_TensorType(%struct.TF_Tensor* %t) #5 !dbg !4717 {
entry:
  %t.addr = alloca %struct.TF_Tensor*, align 8
  store %struct.TF_Tensor* %t, %struct.TF_Tensor** %t.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.TF_Tensor** %t.addr, metadata !4722, metadata !DIExpression()), !dbg !4723
  %0 = load %struct.TF_Tensor*, %struct.TF_Tensor** %t.addr, align 8, !dbg !4724
  %tensor = getelementptr inbounds %struct.TF_Tensor, %struct.TF_Tensor* %0, i32 0, i32 0, !dbg !4725
  %1 = load %"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"** %tensor, align 8, !dbg !4725
  %2 = bitcast %"class.tensorflow::AbstractTensorInterface"* %1 to i32 (%"class.tensorflow::AbstractTensorInterface"*)***, !dbg !4726
  %vtable = load i32 (%"class.tensorflow::AbstractTensorInterface"*)**, i32 (%"class.tensorflow::AbstractTensorInterface"*)*** %2, align 8, !dbg !4726
  %vfn = getelementptr inbounds i32 (%"class.tensorflow::AbstractTensorInterface"*)*, i32 (%"class.tensorflow::AbstractTensorInterface"*)** %vtable, i64 1, !dbg !4726
  %3 = load i32 (%"class.tensorflow::AbstractTensorInterface"*)*, i32 (%"class.tensorflow::AbstractTensorInterface"*)** %vfn, align 8, !dbg !4726
  %call = call i32 %3(%"class.tensorflow::AbstractTensorInterface"* %1), !dbg !4726
  ret i32 %call, !dbg !4727
}

; Function Attrs: noinline optnone uwtable
define dso_local i32 @TF_NumDims(%struct.TF_Tensor* %t) #5 !dbg !4728 {
entry:
  %t.addr = alloca %struct.TF_Tensor*, align 8
  store %struct.TF_Tensor* %t, %struct.TF_Tensor** %t.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.TF_Tensor** %t.addr, metadata !4731, metadata !DIExpression()), !dbg !4732
  %0 = load %struct.TF_Tensor*, %struct.TF_Tensor** %t.addr, align 8, !dbg !4733
  %tensor = getelementptr inbounds %struct.TF_Tensor, %struct.TF_Tensor* %0, i32 0, i32 0, !dbg !4734
  %1 = load %"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"** %tensor, align 8, !dbg !4734
  %2 = bitcast %"class.tensorflow::AbstractTensorInterface"* %1 to i32 (%"class.tensorflow::AbstractTensorInterface"*)***, !dbg !4735
  %vtable = load i32 (%"class.tensorflow::AbstractTensorInterface"*)**, i32 (%"class.tensorflow::AbstractTensorInterface"*)*** %2, align 8, !dbg !4735
  %vfn = getelementptr inbounds i32 (%"class.tensorflow::AbstractTensorInterface"*)*, i32 (%"class.tensorflow::AbstractTensorInterface"*)** %vtable, i64 2, !dbg !4735
  %3 = load i32 (%"class.tensorflow::AbstractTensorInterface"*)*, i32 (%"class.tensorflow::AbstractTensorInterface"*)** %vfn, align 8, !dbg !4735
  %call = call i32 %3(%"class.tensorflow::AbstractTensorInterface"* %1), !dbg !4735
  ret i32 %call, !dbg !4736
}

; Function Attrs: noinline optnone uwtable
define dso_local i64 @TF_Dim(%struct.TF_Tensor* %t, i32 %dim_index) #5 !dbg !4737 {
entry:
  %t.addr = alloca %struct.TF_Tensor*, align 8
  %dim_index.addr = alloca i32, align 4
  store %struct.TF_Tensor* %t, %struct.TF_Tensor** %t.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.TF_Tensor** %t.addr, metadata !4740, metadata !DIExpression()), !dbg !4741
  store i32 %dim_index, i32* %dim_index.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %dim_index.addr, metadata !4742, metadata !DIExpression()), !dbg !4743
  %0 = load %struct.TF_Tensor*, %struct.TF_Tensor** %t.addr, align 8, !dbg !4744
  %tensor = getelementptr inbounds %struct.TF_Tensor, %struct.TF_Tensor* %0, i32 0, i32 0, !dbg !4745
  %1 = load %"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"** %tensor, align 8, !dbg !4745
  %2 = load i32, i32* %dim_index.addr, align 4, !dbg !4746
  %3 = bitcast %"class.tensorflow::AbstractTensorInterface"* %1 to i64 (%"class.tensorflow::AbstractTensorInterface"*, i32)***, !dbg !4747
  %vtable = load i64 (%"class.tensorflow::AbstractTensorInterface"*, i32)**, i64 (%"class.tensorflow::AbstractTensorInterface"*, i32)*** %3, align 8, !dbg !4747
  %vfn = getelementptr inbounds i64 (%"class.tensorflow::AbstractTensorInterface"*, i32)*, i64 (%"class.tensorflow::AbstractTensorInterface"*, i32)** %vtable, i64 3, !dbg !4747
  %4 = load i64 (%"class.tensorflow::AbstractTensorInterface"*, i32)*, i64 (%"class.tensorflow::AbstractTensorInterface"*, i32)** %vfn, align 8, !dbg !4747
  %call = call i64 %4(%"class.tensorflow::AbstractTensorInterface"* %1, i32 %2), !dbg !4747
  ret i64 %call, !dbg !4748
}

; Function Attrs: noinline optnone uwtable
define dso_local i64 @TF_TensorByteSize(%struct.TF_Tensor* %t) #5 !dbg !4749 {
entry:
  %t.addr = alloca %struct.TF_Tensor*, align 8
  store %struct.TF_Tensor* %t, %struct.TF_Tensor** %t.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.TF_Tensor** %t.addr, metadata !4752, metadata !DIExpression()), !dbg !4753
  %0 = load %struct.TF_Tensor*, %struct.TF_Tensor** %t.addr, align 8, !dbg !4754
  %tensor = getelementptr inbounds %struct.TF_Tensor, %struct.TF_Tensor* %0, i32 0, i32 0, !dbg !4755
  %1 = load %"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"** %tensor, align 8, !dbg !4755
  %2 = bitcast %"class.tensorflow::AbstractTensorInterface"* %1 to i64 (%"class.tensorflow::AbstractTensorInterface"*)***, !dbg !4756
  %vtable = load i64 (%"class.tensorflow::AbstractTensorInterface"*)**, i64 (%"class.tensorflow::AbstractTensorInterface"*)*** %2, align 8, !dbg !4756
  %vfn = getelementptr inbounds i64 (%"class.tensorflow::AbstractTensorInterface"*)*, i64 (%"class.tensorflow::AbstractTensorInterface"*)** %vtable, i64 5, !dbg !4756
  %3 = load i64 (%"class.tensorflow::AbstractTensorInterface"*)*, i64 (%"class.tensorflow::AbstractTensorInterface"*)** %vfn, align 8, !dbg !4756
  %call = call i64 %3(%"class.tensorflow::AbstractTensorInterface"* %1), !dbg !4756
  ret i64 %call, !dbg !4757
}

; Function Attrs: noinline optnone uwtable
define dso_local i8* @TF_TensorData(%struct.TF_Tensor* %t) #5 !dbg !4758 {
entry:
  %t.addr = alloca %struct.TF_Tensor*, align 8
  store %struct.TF_Tensor* %t, %struct.TF_Tensor** %t.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.TF_Tensor** %t.addr, metadata !4761, metadata !DIExpression()), !dbg !4762
  %0 = load %struct.TF_Tensor*, %struct.TF_Tensor** %t.addr, align 8, !dbg !4763
  %tensor = getelementptr inbounds %struct.TF_Tensor, %struct.TF_Tensor* %0, i32 0, i32 0, !dbg !4764
  %1 = load %"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"** %tensor, align 8, !dbg !4764
  %2 = bitcast %"class.tensorflow::AbstractTensorInterface"* %1 to i8* (%"class.tensorflow::AbstractTensorInterface"*)***, !dbg !4765
  %vtable = load i8* (%"class.tensorflow::AbstractTensorInterface"*)**, i8* (%"class.tensorflow::AbstractTensorInterface"*)*** %2, align 8, !dbg !4765
  %vfn = getelementptr inbounds i8* (%"class.tensorflow::AbstractTensorInterface"*)*, i8* (%"class.tensorflow::AbstractTensorInterface"*)** %vtable, i64 6, !dbg !4765
  %3 = load i8* (%"class.tensorflow::AbstractTensorInterface"*)*, i8* (%"class.tensorflow::AbstractTensorInterface"*)** %vfn, align 8, !dbg !4765
  %call = call i8* %3(%"class.tensorflow::AbstractTensorInterface"* %1), !dbg !4765
  ret i8* %call, !dbg !4766
}

; Function Attrs: noinline optnone uwtable
define dso_local i64 @TF_TensorElementCount(%struct.TF_Tensor* %t) #5 !dbg !4767 {
entry:
  %t.addr = alloca %struct.TF_Tensor*, align 8
  %result = alloca i64, align 8
  %rank = alloca i32, align 4
  %dim = alloca i32, align 4
  store %struct.TF_Tensor* %t, %struct.TF_Tensor** %t.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.TF_Tensor** %t.addr, metadata !4770, metadata !DIExpression()), !dbg !4771
  call void @llvm.dbg.declare(metadata i64* %result, metadata !4772, metadata !DIExpression()), !dbg !4773
  store i64 1, i64* %result, align 8, !dbg !4773
  call void @llvm.dbg.declare(metadata i32* %rank, metadata !4774, metadata !DIExpression()), !dbg !4775
  %0 = load %struct.TF_Tensor*, %struct.TF_Tensor** %t.addr, align 8, !dbg !4776
  %call = call i32 @TF_NumDims(%struct.TF_Tensor* %0), !dbg !4777
  store i32 %call, i32* %rank, align 4, !dbg !4775
  call void @llvm.dbg.declare(metadata i32* %dim, metadata !4778, metadata !DIExpression()), !dbg !4780
  store i32 0, i32* %dim, align 4, !dbg !4780
  br label %for.cond, !dbg !4781

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %dim, align 4, !dbg !4782
  %2 = load i32, i32* %rank, align 4, !dbg !4784
  %cmp = icmp slt i32 %1, %2, !dbg !4785
  br i1 %cmp, label %for.body, label %for.end, !dbg !4786

for.body:                                         ; preds = %for.cond
  %3 = load %struct.TF_Tensor*, %struct.TF_Tensor** %t.addr, align 8, !dbg !4787
  %4 = load i32, i32* %dim, align 4, !dbg !4789
  %call1 = call i64 @TF_Dim(%struct.TF_Tensor* %3, i32 %4), !dbg !4790
  %5 = load i64, i64* %result, align 8, !dbg !4791
  %mul = mul nsw i64 %5, %call1, !dbg !4791
  store i64 %mul, i64* %result, align 8, !dbg !4791
  br label %for.inc, !dbg !4792

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %dim, align 4, !dbg !4793
  %inc = add nsw i32 %6, 1, !dbg !4793
  store i32 %inc, i32* %dim, align 4, !dbg !4793
  br label %for.cond, !dbg !4794, !llvm.loop !4795

for.end:                                          ; preds = %for.cond
  %7 = load i64, i64* %result, align 8, !dbg !4797
  ret i64 %7, !dbg !4798
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow12TensorBufferD0Ev(%"class.tensorflow::TensorBuffer"* %this) unnamed_addr #4 comdat align 2 !dbg !4799 {
entry:
  %this.addr = alloca %"class.tensorflow::TensorBuffer"*, align 8
  store %"class.tensorflow::TensorBuffer"* %this, %"class.tensorflow::TensorBuffer"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::TensorBuffer"** %this.addr, metadata !4836, metadata !DIExpression()), !dbg !4837
  %this1 = load %"class.tensorflow::TensorBuffer"*, %"class.tensorflow::TensorBuffer"** %this.addr, align 8
  call void @abort(), !dbg !4838
  unreachable, !dbg !4838
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @_ZNK10tensorflow12TensorBuffer17GetAllocatedBytesEPm(%"class.tensorflow::TensorBuffer"* %this, i64* %out_bytes) unnamed_addr #4 align 2 !dbg !4839 {
entry:
  %this.addr = alloca %"class.tensorflow::TensorBuffer"*, align 8
  %out_bytes.addr = alloca i64*, align 8
  store %"class.tensorflow::TensorBuffer"* %this, %"class.tensorflow::TensorBuffer"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::TensorBuffer"** %this.addr, metadata !4841, metadata !DIExpression()), !dbg !4843
  store i64* %out_bytes, i64** %out_bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %out_bytes.addr, metadata !4844, metadata !DIExpression()), !dbg !4845
  %this1 = load %"class.tensorflow::TensorBuffer"*, %"class.tensorflow::TensorBuffer"** %this.addr, align 8
  ret i1 true, !dbg !4846
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local zeroext i1 @_ZNK10tensorflow12TensorBuffer10OwnsMemoryEv(%"class.tensorflow::TensorBuffer"* %this) unnamed_addr #4 comdat align 2 !dbg !4847 {
entry:
  %this.addr = alloca %"class.tensorflow::TensorBuffer"*, align 8
  store %"class.tensorflow::TensorBuffer"* %this, %"class.tensorflow::TensorBuffer"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::TensorBuffer"** %this.addr, metadata !4848, metadata !DIExpression()), !dbg !4849
  %this1 = load %"class.tensorflow::TensorBuffer"*, %"class.tensorflow::TensorBuffer"** %this.addr, align 8
  ret i1 true, !dbg !4850
}

; Function Attrs: noinline optnone uwtable
define dso_local void @_ZN10tensorflow6TensorC2E8DataTypeRKNS_11TensorShapeEPNS_12TensorBufferE(%"class.tensorflow::Tensor"* %this, i32 %type, %"class.tensorflow::TensorShape"* nonnull align 8 dereferenceable(29) %shape, %"class.tensorflow::TensorBuffer"* %buf) unnamed_addr #5 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !4851 {
entry:
  %this.addr = alloca %"class.tensorflow::Tensor"*, align 8
  %type.addr = alloca i32, align 4
  %shape.addr = alloca %"class.tensorflow::TensorShape"*, align 8
  %buf.addr = alloca %"class.tensorflow::TensorBuffer"*, align 8
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  store %"class.tensorflow::Tensor"* %this, %"class.tensorflow::Tensor"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::Tensor"** %this.addr, metadata !4855, metadata !DIExpression()), !dbg !4856
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !4857, metadata !DIExpression()), !dbg !4858
  store %"class.tensorflow::TensorShape"* %shape, %"class.tensorflow::TensorShape"** %shape.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::TensorShape"** %shape.addr, metadata !4859, metadata !DIExpression()), !dbg !4860
  store %"class.tensorflow::TensorBuffer"* %buf, %"class.tensorflow::TensorBuffer"** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::TensorBuffer"** %buf.addr, metadata !4861, metadata !DIExpression()), !dbg !4862
  %this1 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %this.addr, align 8
  %shape_ = getelementptr inbounds %"class.tensorflow::Tensor", %"class.tensorflow::Tensor"* %this1, i32 0, i32 0, !dbg !4863
  %0 = load %"class.tensorflow::TensorShape"*, %"class.tensorflow::TensorShape"** %shape.addr, align 8, !dbg !4864
  call void @_ZN10tensorflow11TensorShapeC2ERKS0_(%"class.tensorflow::TensorShape"* %shape_, %"class.tensorflow::TensorShape"* nonnull align 8 dereferenceable(29) %0), !dbg !4863
  %buf_ = getelementptr inbounds %"class.tensorflow::Tensor", %"class.tensorflow::Tensor"* %this1, i32 0, i32 1, !dbg !4865
  %1 = load %"class.tensorflow::TensorBuffer"*, %"class.tensorflow::TensorBuffer"** %buf.addr, align 8, !dbg !4866
  store %"class.tensorflow::TensorBuffer"* %1, %"class.tensorflow::TensorBuffer"** %buf_, align 8, !dbg !4865
  %2 = load i32, i32* %type.addr, align 4, !dbg !4867
  invoke void @_ZN10tensorflow6Tensor9set_dtypeE8DataType(%"class.tensorflow::Tensor"* %this1, i32 %2)
          to label %invoke.cont unwind label %lpad, !dbg !4869

invoke.cont:                                      ; preds = %entry
  %3 = load %"class.tensorflow::TensorBuffer"*, %"class.tensorflow::TensorBuffer"** %buf.addr, align 8, !dbg !4870
  %4 = bitcast %"class.tensorflow::TensorBuffer"* %3 to %"class.tensorflow::core::RefCounted"*, !dbg !4870
  invoke void @_ZN10tensorflow12_GLOBAL__N_112RefIfNonNullEPNS_4core10RefCountedE(%"class.tensorflow::core::RefCounted"* %4)
          to label %invoke.cont2 unwind label %lpad, !dbg !4871

invoke.cont2:                                     ; preds = %invoke.cont
  ret void, !dbg !4872

lpad:                                             ; preds = %invoke.cont, %entry
  %5 = landingpad { i8*, i32 }
          cleanup, !dbg !4873
  %6 = extractvalue { i8*, i32 } %5, 0, !dbg !4873
  store i8* %6, i8** %exn.slot, align 8, !dbg !4873
  %7 = extractvalue { i8*, i32 } %5, 1, !dbg !4873
  store i32 %7, i32* %ehselector.slot, align 4, !dbg !4873
  call void @_ZN10tensorflow11TensorShapeD2Ev(%"class.tensorflow::TensorShape"* %shape_) #6, !dbg !4873
  br label %eh.resume, !dbg !4873

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8, !dbg !4873
  %sel = load i32, i32* %ehselector.slot, align 4, !dbg !4873
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0, !dbg !4873
  %lpad.val3 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1, !dbg !4873
  resume { i8*, i32 } %lpad.val3, !dbg !4873
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow11TensorShapeC2ERKS0_(%"class.tensorflow::TensorShape"* %this, %"class.tensorflow::TensorShape"* nonnull align 8 dereferenceable(29) %0) unnamed_addr #5 comdat align 2 !dbg !4874 {
entry:
  %this.addr = alloca %"class.tensorflow::TensorShape"*, align 8
  %.addr = alloca %"class.tensorflow::TensorShape"*, align 8
  store %"class.tensorflow::TensorShape"* %this, %"class.tensorflow::TensorShape"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::TensorShape"** %this.addr, metadata !4878, metadata !DIExpression()), !dbg !4879
  store %"class.tensorflow::TensorShape"* %0, %"class.tensorflow::TensorShape"** %.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::TensorShape"** %.addr, metadata !4880, metadata !DIExpression()), !dbg !4879
  %this1 = load %"class.tensorflow::TensorShape"*, %"class.tensorflow::TensorShape"** %this.addr, align 8
  %dims_ = getelementptr inbounds %"class.tensorflow::TensorShape", %"class.tensorflow::TensorShape"* %this1, i32 0, i32 0, !dbg !4881
  %1 = load %"class.tensorflow::TensorShape"*, %"class.tensorflow::TensorShape"** %.addr, align 8, !dbg !4881
  %dims_2 = getelementptr inbounds %"class.tensorflow::TensorShape", %"class.tensorflow::TensorShape"* %1, i32 0, i32 0, !dbg !4881
  call void @_ZNSt6vectorIlSaIlEEC2ERKS1_(%"class.std::vector"* %dims_, %"class.std::vector"* nonnull align 8 dereferenceable(24) %dims_2), !dbg !4881
  %dtype_ = getelementptr inbounds %"class.tensorflow::TensorShape", %"class.tensorflow::TensorShape"* %this1, i32 0, i32 1, !dbg !4881
  %2 = load %"class.tensorflow::TensorShape"*, %"class.tensorflow::TensorShape"** %.addr, align 8, !dbg !4881
  %dtype_3 = getelementptr inbounds %"class.tensorflow::TensorShape", %"class.tensorflow::TensorShape"* %2, i32 0, i32 1, !dbg !4881
  %3 = bitcast i32* %dtype_ to i8*, !dbg !4881
  %4 = bitcast i32* %dtype_3 to i8*, !dbg !4881
  %5 = call i8* @memcpy(i8* %3, i8* %4, i64 4), !dbg !4881
  ret void, !dbg !4881
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow6Tensor9set_dtypeE8DataType(%"class.tensorflow::Tensor"* %this, i32 %t) #5 comdat align 2 !dbg !4882 {
entry:
  %this.addr = alloca %"class.tensorflow::Tensor"*, align 8
  %t.addr = alloca i32, align 4
  store %"class.tensorflow::Tensor"* %this, %"class.tensorflow::Tensor"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::Tensor"** %this.addr, metadata !4883, metadata !DIExpression()), !dbg !4884
  store i32 %t, i32* %t.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %t.addr, metadata !4885, metadata !DIExpression()), !dbg !4886
  %this1 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %this.addr, align 8
  %shape_ = getelementptr inbounds %"class.tensorflow::Tensor", %"class.tensorflow::Tensor"* %this1, i32 0, i32 0, !dbg !4887
  %0 = load i32, i32* %t.addr, align 4, !dbg !4888
  call void @_ZN10tensorflow11TensorShape13set_data_typeE8DataType(%"class.tensorflow::TensorShape"* %shape_, i32 %0), !dbg !4889
  ret void, !dbg !4890
}

; Function Attrs: noinline optnone uwtable
define internal void @_ZN10tensorflow12_GLOBAL__N_112RefIfNonNullEPNS_4core10RefCountedE(%"class.tensorflow::core::RefCounted"* %buf) #5 !dbg !4891 {
entry:
  %buf.addr = alloca %"class.tensorflow::core::RefCounted"*, align 8
  store %"class.tensorflow::core::RefCounted"* %buf, %"class.tensorflow::core::RefCounted"** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::core::RefCounted"** %buf.addr, metadata !4895, metadata !DIExpression()), !dbg !4896
  %0 = load %"class.tensorflow::core::RefCounted"*, %"class.tensorflow::core::RefCounted"** %buf.addr, align 8, !dbg !4897
  %tobool = icmp ne %"class.tensorflow::core::RefCounted"* %0, null, !dbg !4897
  br i1 %tobool, label %if.then, label %if.end, !dbg !4899

if.then:                                          ; preds = %entry
  %1 = load %"class.tensorflow::core::RefCounted"*, %"class.tensorflow::core::RefCounted"** %buf.addr, align 8, !dbg !4900
  call void @_ZNK10tensorflow4core10RefCounted3RefEv(%"class.tensorflow::core::RefCounted"* %1), !dbg !4901
  br label %if.end, !dbg !4900

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !4902
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNK10tensorflow4core10RefCounted3RefEv(%"class.tensorflow::core::RefCounted"* %this) #4 comdat align 2 !dbg !4903 {
entry:
  %this.addr.i = alloca %"struct.std::__atomic_base"*, align 8
  %__i.addr.i = alloca i64, align 8
  %__m.addr.i = alloca i32, align 4
  %.atomictmp.i = alloca i64, align 8
  %atomic-temp.i = alloca i64, align 8
  %this.addr = alloca %"class.tensorflow::core::RefCounted"*, align 8
  store %"class.tensorflow::core::RefCounted"* %this, %"class.tensorflow::core::RefCounted"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::core::RefCounted"** %this.addr, metadata !4904, metadata !DIExpression()), !dbg !4905
  %this1 = load %"class.tensorflow::core::RefCounted"*, %"class.tensorflow::core::RefCounted"** %this.addr, align 8
  %ref_count_ = getelementptr inbounds %"class.tensorflow::core::RefCounted", %"class.tensorflow::core::RefCounted"* %this1, i32 0, i32 1, !dbg !4906
  %0 = bitcast %"struct.std::atomic"* %ref_count_ to %"struct.std::__atomic_base"*, !dbg !4906
  store %"struct.std::__atomic_base"* %0, %"struct.std::__atomic_base"** %this.addr.i, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::__atomic_base"** %this.addr.i, metadata !4907, metadata !DIExpression()), !dbg !4909
  store i64 1, i64* %__i.addr.i, align 8
  call void @llvm.dbg.declare(metadata i64* %__i.addr.i, metadata !4911, metadata !DIExpression()), !dbg !4912
  store i32 0, i32* %__m.addr.i, align 4
  call void @llvm.dbg.declare(metadata i32* %__m.addr.i, metadata !4913, metadata !DIExpression()), !dbg !4914
  %this1.i = load %"struct.std::__atomic_base"*, %"struct.std::__atomic_base"** %this.addr.i, align 8
  %_M_i.i = getelementptr inbounds %"struct.std::__atomic_base", %"struct.std::__atomic_base"* %this1.i, i32 0, i32 0, !dbg !4915
  %1 = load i32, i32* %__m.addr.i, align 4, !dbg !4916
  %2 = load i64, i64* %__i.addr.i, align 8, !dbg !4917
  store i64 %2, i64* %.atomictmp.i, align 8, !dbg !4918
  switch i32 %1, label %monotonic.i [
    i32 1, label %acquire.i
    i32 2, label %acquire.i
    i32 3, label %release.i
    i32 4, label %acqrel.i
    i32 5, label %seqcst.i
  ], !dbg !4918

monotonic.i:                                      ; preds = %entry
  %3 = load i64, i64* %.atomictmp.i, align 8, !dbg !4918
  %4 = load i64, i64* %_M_i.i, align 8, !dbg !4918
  %5 = add i64 %4, %3, !dbg !4918
  store i64 %5, i64* %_M_i.i, align 8, !dbg !4918
  store i64 %4, i64* %atomic-temp.i, align 8, !dbg !4918
  br label %_ZNSt13__atomic_baseImE9fetch_addEmSt12memory_order.exit, !dbg !4918

acquire.i:                                        ; preds = %entry, %entry
  %6 = load i64, i64* %.atomictmp.i, align 8, !dbg !4918
  %7 = load i64, i64* %_M_i.i, align 8, !dbg !4918
  %8 = add i64 %7, %6, !dbg !4918
  store i64 %8, i64* %_M_i.i, align 8, !dbg !4918
  store i64 %7, i64* %atomic-temp.i, align 8, !dbg !4918
  br label %_ZNSt13__atomic_baseImE9fetch_addEmSt12memory_order.exit, !dbg !4918

release.i:                                        ; preds = %entry
  %9 = load i64, i64* %.atomictmp.i, align 8, !dbg !4918
  %10 = load i64, i64* %_M_i.i, align 8, !dbg !4918
  %11 = add i64 %10, %9, !dbg !4918
  store i64 %11, i64* %_M_i.i, align 8, !dbg !4918
  store i64 %10, i64* %atomic-temp.i, align 8, !dbg !4918
  br label %_ZNSt13__atomic_baseImE9fetch_addEmSt12memory_order.exit, !dbg !4918

acqrel.i:                                         ; preds = %entry
  %12 = load i64, i64* %.atomictmp.i, align 8, !dbg !4918
  %13 = load i64, i64* %_M_i.i, align 8, !dbg !4918
  %14 = add i64 %13, %12, !dbg !4918
  store i64 %14, i64* %_M_i.i, align 8, !dbg !4918
  store i64 %13, i64* %atomic-temp.i, align 8, !dbg !4918
  br label %_ZNSt13__atomic_baseImE9fetch_addEmSt12memory_order.exit, !dbg !4918

seqcst.i:                                         ; preds = %entry
  %15 = load i64, i64* %.atomictmp.i, align 8, !dbg !4918
  %16 = load i64, i64* %_M_i.i, align 8, !dbg !4918
  %17 = add i64 %16, %15, !dbg !4918
  store i64 %17, i64* %_M_i.i, align 8, !dbg !4918
  store i64 %16, i64* %atomic-temp.i, align 8, !dbg !4918
  br label %_ZNSt13__atomic_baseImE9fetch_addEmSt12memory_order.exit, !dbg !4918

_ZNSt13__atomic_baseImE9fetch_addEmSt12memory_order.exit: ; preds = %monotonic.i, %acquire.i, %release.i, %acqrel.i, %seqcst.i
  %18 = load i64, i64* %atomic-temp.i, align 8, !dbg !4918
  ret void, !dbg !4919
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow11TensorShape13set_data_typeE8DataType(%"class.tensorflow::TensorShape"* %this, i32 %t) #4 comdat align 2 !dbg !4920 {
entry:
  %this.addr = alloca %"class.tensorflow::TensorShape"*, align 8
  %t.addr = alloca i32, align 4
  store %"class.tensorflow::TensorShape"* %this, %"class.tensorflow::TensorShape"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::TensorShape"** %this.addr, metadata !4921, metadata !DIExpression()), !dbg !4922
  store i32 %t, i32* %t.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %t.addr, metadata !4923, metadata !DIExpression()), !dbg !4924
  %this1 = load %"class.tensorflow::TensorShape"*, %"class.tensorflow::TensorShape"** %this.addr, align 8
  %0 = load i32, i32* %t.addr, align 4, !dbg !4925
  %dtype_ = getelementptr inbounds %"class.tensorflow::TensorShape", %"class.tensorflow::TensorShape"* %this1, i32 0, i32 1, !dbg !4926
  store i32 %0, i32* %dtype_, align 8, !dbg !4927
  ret void, !dbg !4928
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_ZN10tensorflow6TensorD2Ev(%"class.tensorflow::Tensor"* %this) unnamed_addr #4 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !4929 {
entry:
  %this.addr = alloca %"class.tensorflow::Tensor"*, align 8
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  store %"class.tensorflow::Tensor"* %this, %"class.tensorflow::Tensor"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::Tensor"** %this.addr, metadata !4930, metadata !DIExpression()), !dbg !4931
  %this1 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %this.addr, align 8
  %buf_ = getelementptr inbounds %"class.tensorflow::Tensor", %"class.tensorflow::Tensor"* %this1, i32 0, i32 1, !dbg !4932
  %0 = load %"class.tensorflow::TensorBuffer"*, %"class.tensorflow::TensorBuffer"** %buf_, align 8, !dbg !4932
  %1 = bitcast %"class.tensorflow::TensorBuffer"* %0 to %"class.tensorflow::core::RefCounted"*, !dbg !4932
  invoke void @_ZN10tensorflow12_GLOBAL__N_114UnrefIfNonNullEPNS_4core10RefCountedE(%"class.tensorflow::core::RefCounted"* %1)
          to label %invoke.cont unwind label %lpad, !dbg !4934

invoke.cont:                                      ; preds = %entry
  %shape_ = getelementptr inbounds %"class.tensorflow::Tensor", %"class.tensorflow::Tensor"* %this1, i32 0, i32 0, !dbg !4935
  call void @_ZN10tensorflow11TensorShapeD2Ev(%"class.tensorflow::TensorShape"* %shape_) #6, !dbg !4935
  ret void, !dbg !4936

lpad:                                             ; preds = %entry
  %2 = landingpad { i8*, i32 }
          catch i8* null, !dbg !4935
  %3 = extractvalue { i8*, i32 } %2, 0, !dbg !4935
  store i8* %3, i8** %exn.slot, align 8, !dbg !4935
  %4 = extractvalue { i8*, i32 } %2, 1, !dbg !4935
  store i32 %4, i32* %ehselector.slot, align 4, !dbg !4935
  %shape_2 = getelementptr inbounds %"class.tensorflow::Tensor", %"class.tensorflow::Tensor"* %this1, i32 0, i32 0, !dbg !4935
  call void @_ZN10tensorflow11TensorShapeD2Ev(%"class.tensorflow::TensorShape"* %shape_2) #6, !dbg !4935
  br label %terminate.handler, !dbg !4935

terminate.handler:                                ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8, !dbg !4935
  call void @__clang_call_terminate(i8* %exn) #14, !dbg !4935
  unreachable, !dbg !4935
}

; Function Attrs: noinline optnone uwtable
define internal void @_ZN10tensorflow12_GLOBAL__N_114UnrefIfNonNullEPNS_4core10RefCountedE(%"class.tensorflow::core::RefCounted"* %buf) #5 !dbg !4937 {
entry:
  %buf.addr = alloca %"class.tensorflow::core::RefCounted"*, align 8
  store %"class.tensorflow::core::RefCounted"* %buf, %"class.tensorflow::core::RefCounted"** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::core::RefCounted"** %buf.addr, metadata !4938, metadata !DIExpression()), !dbg !4939
  %0 = load %"class.tensorflow::core::RefCounted"*, %"class.tensorflow::core::RefCounted"** %buf.addr, align 8, !dbg !4940
  %tobool = icmp ne %"class.tensorflow::core::RefCounted"* %0, null, !dbg !4940
  br i1 %tobool, label %if.then, label %if.end, !dbg !4942

if.then:                                          ; preds = %entry
  %1 = load %"class.tensorflow::core::RefCounted"*, %"class.tensorflow::core::RefCounted"** %buf.addr, align 8, !dbg !4943
  %call = call zeroext i1 @_ZNK10tensorflow4core10RefCounted5UnrefEv(%"class.tensorflow::core::RefCounted"* %1), !dbg !4944
  br label %if.end, !dbg !4943

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !4945
}

; Function Attrs: noinline optnone uwtable
define dso_local void @_ZN10tensorflow6TensorC2EOS0_(%"class.tensorflow::Tensor"* %this, %"class.tensorflow::Tensor"* nonnull align 8 dereferenceable(40) %other) unnamed_addr #5 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !4946 {
entry:
  %this.addr = alloca %"class.tensorflow::Tensor"*, align 8
  %other.addr = alloca %"class.tensorflow::Tensor"*, align 8
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  store %"class.tensorflow::Tensor"* %this, %"class.tensorflow::Tensor"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::Tensor"** %this.addr, metadata !4947, metadata !DIExpression()), !dbg !4948
  store %"class.tensorflow::Tensor"* %other, %"class.tensorflow::Tensor"** %other.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::Tensor"** %other.addr, metadata !4949, metadata !DIExpression()), !dbg !4950
  %this1 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %this.addr, align 8
  %shape_ = getelementptr inbounds %"class.tensorflow::Tensor", %"class.tensorflow::Tensor"* %this1, i32 0, i32 0, !dbg !4951
  %0 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %other.addr, align 8, !dbg !4952
  %shape_2 = getelementptr inbounds %"class.tensorflow::Tensor", %"class.tensorflow::Tensor"* %0, i32 0, i32 0, !dbg !4953
  %call = call nonnull align 8 dereferenceable(29) %"class.tensorflow::TensorShape"* @_ZSt4moveIRN10tensorflow11TensorShapeEEONSt16remove_referenceIT_E4typeEOS4_(%"class.tensorflow::TensorShape"* nonnull align 8 dereferenceable(29) %shape_2) #6, !dbg !4954
  call void @_ZN10tensorflow11TensorShapeC2EOS0_(%"class.tensorflow::TensorShape"* %shape_, %"class.tensorflow::TensorShape"* nonnull align 8 dereferenceable(29) %call) #6, !dbg !4951
  %buf_ = getelementptr inbounds %"class.tensorflow::Tensor", %"class.tensorflow::Tensor"* %this1, i32 0, i32 1, !dbg !4955
  %1 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %other.addr, align 8, !dbg !4956
  %buf_3 = getelementptr inbounds %"class.tensorflow::Tensor", %"class.tensorflow::Tensor"* %1, i32 0, i32 1, !dbg !4957
  %2 = load %"class.tensorflow::TensorBuffer"*, %"class.tensorflow::TensorBuffer"** %buf_3, align 8, !dbg !4957
  store %"class.tensorflow::TensorBuffer"* %2, %"class.tensorflow::TensorBuffer"** %buf_, align 8, !dbg !4955
  %3 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %other.addr, align 8, !dbg !4958
  %call4 = invoke i32 @_ZNK10tensorflow6Tensor5dtypeEv(%"class.tensorflow::Tensor"* %3)
          to label %invoke.cont unwind label %lpad, !dbg !4960

invoke.cont:                                      ; preds = %entry
  invoke void @_ZN10tensorflow6Tensor9set_dtypeE8DataType(%"class.tensorflow::Tensor"* %this1, i32 %call4)
          to label %invoke.cont5 unwind label %lpad, !dbg !4961

invoke.cont5:                                     ; preds = %invoke.cont
  %4 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %other.addr, align 8, !dbg !4962
  %buf_6 = getelementptr inbounds %"class.tensorflow::Tensor", %"class.tensorflow::Tensor"* %4, i32 0, i32 1, !dbg !4963
  store %"class.tensorflow::TensorBuffer"* null, %"class.tensorflow::TensorBuffer"** %buf_6, align 8, !dbg !4964
  ret void, !dbg !4965

lpad:                                             ; preds = %invoke.cont, %entry
  %5 = landingpad { i8*, i32 }
          cleanup, !dbg !4966
  %6 = extractvalue { i8*, i32 } %5, 0, !dbg !4966
  store i8* %6, i8** %exn.slot, align 8, !dbg !4966
  %7 = extractvalue { i8*, i32 } %5, 1, !dbg !4966
  store i32 %7, i32* %ehselector.slot, align 4, !dbg !4966
  call void @_ZN10tensorflow11TensorShapeD2Ev(%"class.tensorflow::TensorShape"* %shape_) #6, !dbg !4966
  br label %eh.resume, !dbg !4966

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8, !dbg !4966
  %sel = load i32, i32* %ehselector.slot, align 4, !dbg !4966
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0, !dbg !4966
  %lpad.val7 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1, !dbg !4966
  resume { i8*, i32 } %lpad.val7, !dbg !4966
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(29) %"class.tensorflow::TensorShape"* @_ZSt4moveIRN10tensorflow11TensorShapeEEONSt16remove_referenceIT_E4typeEOS4_(%"class.tensorflow::TensorShape"* nonnull align 8 dereferenceable(29) %__t) #4 comdat !dbg !4967 {
entry:
  %__t.addr = alloca %"class.tensorflow::TensorShape"*, align 8
  store %"class.tensorflow::TensorShape"* %__t, %"class.tensorflow::TensorShape"** %__t.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::TensorShape"** %__t.addr, metadata !4976, metadata !DIExpression()), !dbg !4977
  %0 = load %"class.tensorflow::TensorShape"*, %"class.tensorflow::TensorShape"** %__t.addr, align 8, !dbg !4978
  ret %"class.tensorflow::TensorShape"* %0, !dbg !4979
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow11TensorShapeC2EOS0_(%"class.tensorflow::TensorShape"* %this, %"class.tensorflow::TensorShape"* nonnull align 8 dereferenceable(29) %0) unnamed_addr #4 comdat align 2 !dbg !4980 {
entry:
  %this.addr = alloca %"class.tensorflow::TensorShape"*, align 8
  %.addr = alloca %"class.tensorflow::TensorShape"*, align 8
  store %"class.tensorflow::TensorShape"* %this, %"class.tensorflow::TensorShape"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::TensorShape"** %this.addr, metadata !4985, metadata !DIExpression()), !dbg !4986
  store %"class.tensorflow::TensorShape"* %0, %"class.tensorflow::TensorShape"** %.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::TensorShape"** %.addr, metadata !4987, metadata !DIExpression()), !dbg !4986
  %this1 = load %"class.tensorflow::TensorShape"*, %"class.tensorflow::TensorShape"** %this.addr, align 8
  %dims_ = getelementptr inbounds %"class.tensorflow::TensorShape", %"class.tensorflow::TensorShape"* %this1, i32 0, i32 0, !dbg !4988
  %1 = load %"class.tensorflow::TensorShape"*, %"class.tensorflow::TensorShape"** %.addr, align 8, !dbg !4988
  %dims_2 = getelementptr inbounds %"class.tensorflow::TensorShape", %"class.tensorflow::TensorShape"* %1, i32 0, i32 0, !dbg !4988
  call void @_ZNSt6vectorIlSaIlEEC2EOS1_(%"class.std::vector"* %dims_, %"class.std::vector"* nonnull align 8 dereferenceable(24) %dims_2) #6, !dbg !4988
  %dtype_ = getelementptr inbounds %"class.tensorflow::TensorShape", %"class.tensorflow::TensorShape"* %this1, i32 0, i32 1, !dbg !4988
  %2 = load %"class.tensorflow::TensorShape"*, %"class.tensorflow::TensorShape"** %.addr, align 8, !dbg !4988
  %dtype_3 = getelementptr inbounds %"class.tensorflow::TensorShape", %"class.tensorflow::TensorShape"* %2, i32 0, i32 1, !dbg !4988
  %3 = bitcast i32* %dtype_ to i8*, !dbg !4988
  %4 = bitcast i32* %dtype_3 to i8*, !dbg !4988
  %5 = call i8* @memcpy(i8* %3, i8* %4, i64 4), !dbg !4988
  ret void, !dbg !4988
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i32 @_ZNK10tensorflow6Tensor5dtypeEv(%"class.tensorflow::Tensor"* %this) #5 comdat align 2 !dbg !4989 {
entry:
  %this.addr = alloca %"class.tensorflow::Tensor"*, align 8
  store %"class.tensorflow::Tensor"* %this, %"class.tensorflow::Tensor"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::Tensor"** %this.addr, metadata !4990, metadata !DIExpression()), !dbg !4991
  %this1 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %this.addr, align 8
  %shape_ = getelementptr inbounds %"class.tensorflow::Tensor", %"class.tensorflow::Tensor"* %this1, i32 0, i32 0, !dbg !4992
  %call = call i32 @_ZNK10tensorflow11TensorShape9data_typeEv(%"class.tensorflow::TensorShape"* %shape_), !dbg !4993
  ret i32 %call, !dbg !4994
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i32 @_ZNK10tensorflow11TensorShape9data_typeEv(%"class.tensorflow::TensorShape"* %this) #4 comdat align 2 !dbg !4995 {
entry:
  %this.addr = alloca %"class.tensorflow::TensorShape"*, align 8
  store %"class.tensorflow::TensorShape"* %this, %"class.tensorflow::TensorShape"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.tensorflow::TensorShape"** %this.addr, metadata !4996, metadata !DIExpression()), !dbg !4997
  %this1 = load %"class.tensorflow::TensorShape"*, %"class.tensorflow::TensorShape"** %this.addr, align 8
  %dtype_ = getelementptr inbounds %"class.tensorflow::TensorShape", %"class.tensorflow::TensorShape"* %this1, i32 0, i32 1, !dbg !4998
  %0 = load i32, i32* %dtype_, align 8, !dbg !4998
  ret i32 %0, !dbg !4999
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIlSaIlEEC2EOS1_(%"class.std::vector"* %this, %"class.std::vector"* nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 comdat align 2 !dbg !5000 {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  %.addr = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::vector"** %this.addr, metadata !5001, metadata !DIExpression()), !dbg !5002
  store %"class.std::vector"* %0, %"class.std::vector"** %.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::vector"** %.addr, metadata !5003, metadata !DIExpression()), !dbg !5004
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %1 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*, !dbg !5005
  %2 = load %"class.std::vector"*, %"class.std::vector"** %.addr, align 8, !dbg !5006
  %3 = bitcast %"class.std::vector"* %2 to %"struct.std::_Vector_base"*, !dbg !5006
  call void @_ZNSt12_Vector_baseIlSaIlEEC2EOS1_(%"struct.std::_Vector_base"* %1, %"struct.std::_Vector_base"* nonnull align 8 dereferenceable(24) %3) #6, !dbg !5006
  ret void, !dbg !5005
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIlSaIlEEC2EOS1_(%"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"* nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 comdat align 2 !dbg !5007 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base"*, align 8
  %.addr = alloca %"struct.std::_Vector_base"*, align 8
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::_Vector_base"** %this.addr, metadata !5008, metadata !DIExpression()), !dbg !5009
  store %"struct.std::_Vector_base"* %0, %"struct.std::_Vector_base"** %.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::_Vector_base"** %.addr, metadata !5010, metadata !DIExpression()), !dbg !5011
  %this1 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0, !dbg !5012
  %1 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %.addr, align 8, !dbg !5012
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %1, i32 0, i32 0, !dbg !5012
  call void @_ZNSt12_Vector_baseIlSaIlEE12_Vector_implC2EOS2_(%"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %_M_impl, %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* nonnull align 8 dereferenceable(24) %_M_impl2) #6, !dbg !5012
  ret void, !dbg !5013
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIlSaIlEE12_Vector_implC2EOS2_(%"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %this, %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* nonnull align 8 dereferenceable(24) %__x) unnamed_addr #4 comdat align 2 !dbg !5014 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"*, align 8
  %__x.addr = alloca %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"*, align 8
  store %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %this, %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"** %this.addr, metadata !5015, metadata !DIExpression()), !dbg !5016
  store %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %__x, %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"** %__x.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"** %__x.addr, metadata !5017, metadata !DIExpression()), !dbg !5018
  %this1 = load %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"*, %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"** %this.addr, align 8
  %0 = bitcast %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %this1 to %"class.std::allocator.0"*, !dbg !5019
  %1 = load %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"*, %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"** %__x.addr, align 8, !dbg !5020
  %call = call nonnull align 8 dereferenceable(24) %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* @_ZSt4moveIRNSt12_Vector_baseIlSaIlEE12_Vector_implEEONSt16remove_referenceIT_E4typeEOS6_(%"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* nonnull align 8 dereferenceable(24) %1) #6, !dbg !5021
  %2 = bitcast %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %call to %"class.std::allocator.0"*, !dbg !5021
  call void @_ZNSaIlEC2ERKS_(%"class.std::allocator.0"* %0, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %2) #6, !dbg !5022
  %3 = bitcast %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %this1 to %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"*, !dbg !5019
  %4 = load %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"*, %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"** %__x.addr, align 8, !dbg !5023
  %call2 = call nonnull align 8 dereferenceable(24) %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* @_ZSt4moveIRNSt12_Vector_baseIlSaIlEE12_Vector_implEEONSt16remove_referenceIT_E4typeEOS6_(%"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* nonnull align 8 dereferenceable(24) %4) #6, !dbg !5024
  %5 = bitcast %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %call2 to %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"*, !dbg !5024
  call void @_ZNSt12_Vector_baseIlSaIlEE17_Vector_impl_dataC2EOS2_(%"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* %3, %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* nonnull align 8 dereferenceable(24) %5) #6, !dbg !5025
  ret void, !dbg !5026
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(24) %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* @_ZSt4moveIRNSt12_Vector_baseIlSaIlEE12_Vector_implEEONSt16remove_referenceIT_E4typeEOS6_(%"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* nonnull align 8 dereferenceable(24) %__t) #4 comdat !dbg !5027 {
entry:
  %__t.addr = alloca %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"*, align 8
  store %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %__t, %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"** %__t.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"** %__t.addr, metadata !5036, metadata !DIExpression()), !dbg !5037
  %0 = load %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"*, %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"** %__t.addr, align 8, !dbg !5038
  ret %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %0, !dbg !5039
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIlSaIlEE17_Vector_impl_dataC2EOS2_(%"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* %this, %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* nonnull align 8 dereferenceable(24) %__x) unnamed_addr #4 comdat align 2 !dbg !5040 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"*, align 8
  %__x.addr = alloca %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"*, align 8
  store %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* %this, %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"** %this.addr, metadata !5041, metadata !DIExpression()), !dbg !5042
  store %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* %__x, %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"** %__x.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"** %__x.addr, metadata !5043, metadata !DIExpression()), !dbg !5044
  %this1 = load %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"*, %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"** %this.addr, align 8
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data", %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* %this1, i32 0, i32 0, !dbg !5045
  %0 = load %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"*, %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"** %__x.addr, align 8, !dbg !5046
  %_M_start2 = getelementptr inbounds %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data", %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* %0, i32 0, i32 0, !dbg !5047
  %1 = load i64*, i64** %_M_start2, align 8, !dbg !5047
  store i64* %1, i64** %_M_start, align 8, !dbg !5045
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data", %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* %this1, i32 0, i32 1, !dbg !5048
  %2 = load %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"*, %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"** %__x.addr, align 8, !dbg !5049
  %_M_finish3 = getelementptr inbounds %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data", %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* %2, i32 0, i32 1, !dbg !5050
  %3 = load i64*, i64** %_M_finish3, align 8, !dbg !5050
  store i64* %3, i64** %_M_finish, align 8, !dbg !5048
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data", %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* %this1, i32 0, i32 2, !dbg !5051
  %4 = load %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"*, %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"** %__x.addr, align 8, !dbg !5052
  %_M_end_of_storage4 = getelementptr inbounds %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data", %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* %4, i32 0, i32 2, !dbg !5053
  %5 = load i64*, i64** %_M_end_of_storage4, align 8, !dbg !5053
  store i64* %5, i64** %_M_end_of_storage, align 8, !dbg !5051
  %6 = load %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"*, %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"** %__x.addr, align 8, !dbg !5054
  %_M_end_of_storage5 = getelementptr inbounds %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data", %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* %6, i32 0, i32 2, !dbg !5056
  store i64* null, i64** %_M_end_of_storage5, align 8, !dbg !5057
  %7 = load %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"*, %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"** %__x.addr, align 8, !dbg !5058
  %_M_finish6 = getelementptr inbounds %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data", %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* %7, i32 0, i32 1, !dbg !5059
  store i64* null, i64** %_M_finish6, align 8, !dbg !5060
  %8 = load %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"*, %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"** %__x.addr, align 8, !dbg !5061
  %_M_start7 = getelementptr inbounds %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data", %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* %8, i32 0, i32 0, !dbg !5062
  store i64* null, i64** %_M_start7, align 8, !dbg !5063
  ret void, !dbg !5064
}

; Function Attrs: noreturn nounwind
declare void @abort() #14

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* %destaddr, i8* %srcaddr, i64 %len) #15 !dbg !5065 {
entry:
  %destaddr.addr = alloca i8*, align 8
  %srcaddr.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %dest = alloca i8*, align 8
  %src = alloca i8*, align 8
  store i8* %destaddr, i8** %destaddr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %destaddr.addr, metadata !5071, metadata !DIExpression()), !dbg !5072
  store i8* %srcaddr, i8** %srcaddr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %srcaddr.addr, metadata !5073, metadata !DIExpression()), !dbg !5074
  store i64 %len, i64* %len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !5075, metadata !DIExpression()), !dbg !5076
  call void @llvm.dbg.declare(metadata i8** %dest, metadata !5077, metadata !DIExpression()), !dbg !5078
  %0 = load i8*, i8** %destaddr.addr, align 8, !dbg !5079
  store i8* %0, i8** %dest, align 8, !dbg !5078
  call void @llvm.dbg.declare(metadata i8** %src, metadata !5080, metadata !DIExpression()), !dbg !5081
  %1 = load i8*, i8** %srcaddr.addr, align 8, !dbg !5082
  store i8* %1, i8** %src, align 8, !dbg !5081
  br label %while.cond, !dbg !5083

while.cond:                                       ; preds = %while.body, %entry
  %2 = load i64, i64* %len.addr, align 8, !dbg !5084
  %dec = add i64 %2, -1, !dbg !5084
  store i64 %dec, i64* %len.addr, align 8, !dbg !5084
  %cmp = icmp ugt i64 %2, 0, !dbg !5085
  br i1 %cmp, label %while.body, label %while.end, !dbg !5083

while.body:                                       ; preds = %while.cond
  %3 = load i8*, i8** %src, align 8, !dbg !5086
  %incdec.ptr = getelementptr inbounds i8, i8* %3, i32 1, !dbg !5086
  store i8* %incdec.ptr, i8** %src, align 8, !dbg !5086
  %4 = load i8, i8* %3, align 1, !dbg !5087
  %5 = load i8*, i8** %dest, align 8, !dbg !5088
  %incdec.ptr1 = getelementptr inbounds i8, i8* %5, i32 1, !dbg !5088
  store i8* %incdec.ptr1, i8** %dest, align 8, !dbg !5088
  store i8 %4, i8* %5, align 1, !dbg !5089
  br label %while.cond, !dbg !5083, !llvm.loop !5090

while.end:                                        ; preds = %while.cond
  %6 = load i8*, i8** %destaddr.addr, align 8, !dbg !5091
  ret i8* %6, !dbg !5092
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memmove(i8* %dst, i8* %src, i64 %count) #15 !dbg !5093 {
entry:
  %retval = alloca i8*, align 8
  %dst.addr = alloca i8*, align 8
  %src.addr = alloca i8*, align 8
  %count.addr = alloca i64, align 8
  %a = alloca i8*, align 8
  %b = alloca i8*, align 8
  store i8* %dst, i8** %dst.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dst.addr, metadata !5095, metadata !DIExpression()), !dbg !5096
  store i8* %src, i8** %src.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %src.addr, metadata !5097, metadata !DIExpression()), !dbg !5098
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !5099, metadata !DIExpression()), !dbg !5100
  call void @llvm.dbg.declare(metadata i8** %a, metadata !5101, metadata !DIExpression()), !dbg !5102
  %0 = load i8*, i8** %dst.addr, align 8, !dbg !5103
  store i8* %0, i8** %a, align 8, !dbg !5102
  call void @llvm.dbg.declare(metadata i8** %b, metadata !5104, metadata !DIExpression()), !dbg !5105
  %1 = load i8*, i8** %src.addr, align 8, !dbg !5106
  store i8* %1, i8** %b, align 8, !dbg !5105
  %2 = load i8*, i8** %src.addr, align 8, !dbg !5107
  %3 = load i8*, i8** %dst.addr, align 8, !dbg !5109
  %cmp = icmp eq i8* %2, %3, !dbg !5110
  br i1 %cmp, label %if.then, label %if.end, !dbg !5111

if.then:                                          ; preds = %entry
  %4 = load i8*, i8** %dst.addr, align 8, !dbg !5112
  store i8* %4, i8** %retval, align 8, !dbg !5113
  br label %return, !dbg !5113

if.end:                                           ; preds = %entry
  %5 = load i8*, i8** %src.addr, align 8, !dbg !5114
  %6 = load i8*, i8** %dst.addr, align 8, !dbg !5116
  %cmp1 = icmp ugt i8* %5, %6, !dbg !5117
  br i1 %cmp1, label %while.cond, label %if.else, !dbg !5118

while.cond:                                       ; preds = %if.end, %while.body
  %7 = load i64, i64* %count.addr, align 8, !dbg !5119
  %dec = add i64 %7, -1, !dbg !5119
  store i64 %dec, i64* %count.addr, align 8, !dbg !5119
  %tobool = icmp ne i64 %7, 0, !dbg !5121
  br i1 %tobool, label %while.body, label %if.end13, !dbg !5121

while.body:                                       ; preds = %while.cond
  %8 = load i8*, i8** %b, align 8, !dbg !5122
  %incdec.ptr = getelementptr inbounds i8, i8* %8, i32 1, !dbg !5122
  store i8* %incdec.ptr, i8** %b, align 8, !dbg !5122
  %9 = load i8, i8* %8, align 1, !dbg !5123
  %10 = load i8*, i8** %a, align 8, !dbg !5124
  %incdec.ptr3 = getelementptr inbounds i8, i8* %10, i32 1, !dbg !5124
  store i8* %incdec.ptr3, i8** %a, align 8, !dbg !5124
  store i8 %9, i8* %10, align 1, !dbg !5125
  br label %while.cond, !dbg !5121, !llvm.loop !5126

if.else:                                          ; preds = %if.end
  %11 = load i64, i64* %count.addr, align 8, !dbg !5127
  %sub = sub i64 %11, 1, !dbg !5129
  %12 = load i8*, i8** %a, align 8, !dbg !5130
  %add.ptr = getelementptr inbounds i8, i8* %12, i64 %sub, !dbg !5130
  store i8* %add.ptr, i8** %a, align 8, !dbg !5130
  %13 = load i64, i64* %count.addr, align 8, !dbg !5131
  %sub4 = sub i64 %13, 1, !dbg !5132
  %14 = load i8*, i8** %b, align 8, !dbg !5133
  %add.ptr5 = getelementptr inbounds i8, i8* %14, i64 %sub4, !dbg !5133
  store i8* %add.ptr5, i8** %b, align 8, !dbg !5133
  br label %while.cond6, !dbg !5134

while.cond6:                                      ; preds = %while.body9, %if.else
  %15 = load i64, i64* %count.addr, align 8, !dbg !5135
  %dec7 = add i64 %15, -1, !dbg !5135
  store i64 %dec7, i64* %count.addr, align 8, !dbg !5135
  %tobool8 = icmp ne i64 %15, 0, !dbg !5134
  br i1 %tobool8, label %while.body9, label %if.end13, !dbg !5134

while.body9:                                      ; preds = %while.cond6
  %16 = load i8*, i8** %b, align 8, !dbg !5136
  %incdec.ptr10 = getelementptr inbounds i8, i8* %16, i32 -1, !dbg !5136
  store i8* %incdec.ptr10, i8** %b, align 8, !dbg !5136
  %17 = load i8, i8* %16, align 1, !dbg !5137
  %18 = load i8*, i8** %a, align 8, !dbg !5138
  %incdec.ptr11 = getelementptr inbounds i8, i8* %18, i32 -1, !dbg !5138
  store i8* %incdec.ptr11, i8** %a, align 8, !dbg !5138
  store i8 %17, i8* %18, align 1, !dbg !5139
  br label %while.cond6, !dbg !5134, !llvm.loop !5140

if.end13:                                         ; preds = %while.cond6, %while.cond
  %19 = load i8*, i8** %dst.addr, align 8, !dbg !5141
  store i8* %19, i8** %retval, align 8, !dbg !5142
  br label %return, !dbg !5142

return:                                           ; preds = %if.end13, %if.then
  %20 = load i8*, i8** %retval, align 8, !dbg !5143
  ret i8* %20, !dbg !5143
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* %dst, i32 %s, i64 %count) #15 !dbg !5144 {
entry:
  %dst.addr = alloca i8*, align 8
  %s.addr = alloca i32, align 4
  %count.addr = alloca i64, align 8
  %a = alloca i8*, align 8
  store i8* %dst, i8** %dst.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dst.addr, metadata !5148, metadata !DIExpression()), !dbg !5149
  store i32 %s, i32* %s.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %s.addr, metadata !5150, metadata !DIExpression()), !dbg !5151
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !5152, metadata !DIExpression()), !dbg !5153
  call void @llvm.dbg.declare(metadata i8** %a, metadata !5154, metadata !DIExpression()), !dbg !5155
  %0 = load i8*, i8** %dst.addr, align 8, !dbg !5156
  store i8* %0, i8** %a, align 8, !dbg !5155
  br label %while.cond, !dbg !5157

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i64, i64* %count.addr, align 8, !dbg !5158
  %dec = add i64 %1, -1, !dbg !5158
  store i64 %dec, i64* %count.addr, align 8, !dbg !5158
  %cmp = icmp ugt i64 %1, 0, !dbg !5159
  br i1 %cmp, label %while.body, label %while.end, !dbg !5157

while.body:                                       ; preds = %while.cond
  %2 = load i32, i32* %s.addr, align 4, !dbg !5160
  %conv = trunc i32 %2 to i8, !dbg !5160
  %3 = load i8*, i8** %a, align 8, !dbg !5161
  %incdec.ptr = getelementptr inbounds i8, i8* %3, i32 1, !dbg !5161
  store i8* %incdec.ptr, i8** %a, align 8, !dbg !5161
  store i8 %conv, i8* %3, align 1, !dbg !5162
  br label %while.cond, !dbg !5157, !llvm.loop !5163

while.end:                                        ; preds = %while.cond
  %4 = load i8*, i8** %dst.addr, align 8, !dbg !5164
  ret i8* %4, !dbg !5165
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @klee_div_zero_check(i64 %z) #15 !dbg !5166 {
entry:
  %z.addr = alloca i64, align 8
  store i64 %z, i64* %z.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %z.addr, metadata !5170, metadata !DIExpression()), !dbg !5171
  %0 = load i64, i64* %z.addr, align 8, !dbg !5172
  %cmp = icmp eq i64 %0, 0, !dbg !5174
  br i1 %cmp, label %if.then, label %if.end, !dbg !5175

if.then:                                          ; preds = %entry
  call void @klee_report_error(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.9, i64 0, i64 0), i32 14, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1.10, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.11, i64 0, i64 0)) #19, !dbg !5176
  unreachable, !dbg !5176

if.end:                                           ; preds = %entry
  ret void, !dbg !5177
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
!2317 = !DILocalVariable(name: "dtype", scope: !2308, file: !2309, line: 26, type: !225)
!2318 = !DILocation(line: 26, column: 15, scope: !2308)
!2319 = !DILocation(line: 27, column: 22, scope: !2308)
!2320 = !DILocation(line: 27, column: 3, scope: !2308)
!2321 = !DILocation(line: 29, column: 15, scope: !2308)
!2322 = !DILocation(line: 29, column: 21, scope: !2308)
!2323 = !DILocation(line: 29, column: 35, scope: !2308)
!2324 = !DILocation(line: 30, column: 15, scope: !2308)
!2325 = !DILocation(line: 30, column: 21, scope: !2308)
!2326 = !DILocation(line: 30, column: 35, scope: !2308)
!2327 = !DILocation(line: 31, column: 15, scope: !2308)
!2328 = !DILocation(line: 31, column: 21, scope: !2308)
!2329 = !DILocation(line: 31, column: 35, scope: !2308)
!2330 = !DILocation(line: 32, column: 15, scope: !2308)
!2331 = !DILocation(line: 32, column: 21, scope: !2308)
!2332 = !DILocation(line: 32, column: 35, scope: !2308)
!2333 = !DILocation(line: 33, column: 15, scope: !2308)
!2334 = !DILocation(line: 33, column: 21, scope: !2308)
!2335 = !DILocation(line: 33, column: 35, scope: !2308)
!2336 = !DILocation(line: 34, column: 15, scope: !2308)
!2337 = !DILocation(line: 34, column: 21, scope: !2308)
!2338 = !DILocation(line: 34, column: 35, scope: !2308)
!2339 = !DILocation(line: 35, column: 15, scope: !2308)
!2340 = !DILocation(line: 35, column: 21, scope: !2308)
!2341 = !DILocation(line: 35, column: 35, scope: !2308)
!2342 = !DILocation(line: 36, column: 15, scope: !2308)
!2343 = !DILocation(line: 36, column: 21, scope: !2308)
!2344 = !DILocation(line: 29, column: 3, scope: !2308)
!2345 = !DILocalVariable(name: "len", scope: !2308, file: !2309, line: 39, type: !19)
!2346 = !DILocation(line: 39, column: 10, scope: !2308)
!2347 = !DILocation(line: 40, column: 22, scope: !2308)
!2348 = !DILocation(line: 40, column: 3, scope: !2308)
!2349 = !DILocalVariable(name: "base", scope: !2308, file: !2309, line: 48, type: !2197)
!2350 = !DILocation(line: 48, column: 18, scope: !2308)
!2351 = !DILocation(line: 48, column: 41, scope: !2308)
!2352 = !DILocation(line: 49, column: 15, scope: !2308)
!2353 = !DILocation(line: 49, column: 20, scope: !2308)
!2354 = !DILocation(line: 49, column: 3, scope: !2308)
!2355 = !DILocalVariable(name: "offset", scope: !2308, file: !2309, line: 50, type: !95)
!2356 = !DILocation(line: 50, column: 12, scope: !2308)
!2357 = !DILocation(line: 51, column: 22, scope: !2308)
!2358 = !DILocation(line: 51, column: 3, scope: !2308)
!2359 = !DILocation(line: 53, column: 15, scope: !2308)
!2360 = !DILocation(line: 53, column: 22, scope: !2308)
!2361 = !DILocation(line: 53, column: 3, scope: !2308)
!2362 = !DILocalVariable(name: "data", scope: !2308, file: !2309, line: 54, type: !38)
!2363 = !DILocation(line: 54, column: 9, scope: !2308)
!2364 = !DILocation(line: 54, column: 16, scope: !2308)
!2365 = !DILocation(line: 54, column: 23, scope: !2308)
!2366 = !DILocation(line: 54, column: 21, scope: !2308)
!2367 = !DILocation(line: 56, column: 7, scope: !2368)
!2368 = distinct !DILexicalBlock(scope: !2308, file: !2309, line: 56, column: 7)
!2369 = !DILocation(line: 56, column: 11, scope: !2368)
!2370 = !DILocation(line: 56, column: 7, scope: !2308)
!2371 = !DILocalVariable(name: "sym", scope: !2372, file: !2309, line: 57, type: !19)
!2372 = distinct !DILexicalBlock(scope: !2368, file: !2309, line: 56, column: 16)
!2373 = !DILocation(line: 57, column: 12, scope: !2372)
!2374 = !DILocation(line: 57, column: 18, scope: !2372)
!2375 = !DILocation(line: 57, column: 22, scope: !2372)
!2376 = !DILocation(line: 57, column: 29, scope: !2372)
!2377 = !DILocation(line: 58, column: 24, scope: !2372)
!2378 = !DILocation(line: 58, column: 30, scope: !2372)
!2379 = !DILocation(line: 58, column: 5, scope: !2372)
!2380 = !DILocation(line: 59, column: 3, scope: !2372)
!2381 = !DILocalVariable(name: "t", scope: !2308, file: !2309, line: 62, type: !2382)
!2382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2383, size: 64)
!2383 = !DIDerivedType(tag: DW_TAG_typedef, name: "TF_Tensor", file: !2384, line: 57, baseType: !2385)
!2384 = !DIFile(filename: "tensorflow/c/tf_tensor.h", directory: "/home/mushfiqur/Desktop/Github/tensorflow")
!2385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "TF_Tensor", file: !2386, line: 41, size: 64, flags: DIFlagTypePassByValue, elements: !2387, identifier: "_ZTS9TF_Tensor")
!2386 = !DIFile(filename: "tensorflow/c/tf_tensor_internal.h", directory: "/home/mushfiqur/Desktop/Github/tensorflow")
!2387 = !{!2388}
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "tensor", scope: !2385, file: !2386, line: 42, baseType: !2389, size: 64)
!2389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2390, size: 64)
!2390 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "AbstractTensorInterface", scope: !4, file: !2391, line: 31, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !2392, vtableHolder: !2390, identifier: "_ZTSN10tensorflow23AbstractTensorInterfaceE")
!2391 = !DIFile(filename: "tensorflow/c/tensor_interface.h", directory: "/home/mushfiqur/Desktop/Github/tensorflow")
!2392 = !{!2393, !2394, !2398, !2403, !2406, !2409, !2412, !2415, !2418, !2421, !2422, !2425}
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "_vptr$AbstractTensorInterface", scope: !2391, file: !2391, baseType: !12, size: 64, flags: DIFlagArtificial)
!2394 = !DISubprogram(name: "Release", linkageName: "_ZN10tensorflow23AbstractTensorInterface7ReleaseEv", scope: !2390, file: !2391, line: 34, type: !2395, scopeLine: 34, containingType: !2390, virtualIndex: 0, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual)
!2395 = !DISubroutineType(types: !2396)
!2396 = !{null, !2397}
!2397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2390, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2398 = !DISubprogram(name: "Type", linkageName: "_ZNK10tensorflow23AbstractTensorInterface4TypeEv", scope: !2390, file: !2391, line: 37, type: !2399, scopeLine: 37, containingType: !2390, virtualIndex: 1, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual)
!2399 = !DISubroutineType(types: !2400)
!2400 = !{!100, !2401}
!2401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2402, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2402 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2390)
!2403 = !DISubprogram(name: "NumDims", linkageName: "_ZNK10tensorflow23AbstractTensorInterface7NumDimsEv", scope: !2390, file: !2391, line: 39, type: !2404, scopeLine: 39, containingType: !2390, virtualIndex: 2, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual)
!2404 = !DISubroutineType(types: !2405)
!2405 = !{!16, !2401}
!2406 = !DISubprogram(name: "Dim", linkageName: "_ZNK10tensorflow23AbstractTensorInterface3DimEi", scope: !2390, file: !2391, line: 41, type: !2407, scopeLine: 41, containingType: !2390, virtualIndex: 3, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual)
!2407 = !DISubroutineType(types: !2408)
!2408 = !{!64, !2401, !16}
!2409 = !DISubprogram(name: "NumElements", linkageName: "_ZNK10tensorflow23AbstractTensorInterface11NumElementsEv", scope: !2390, file: !2391, line: 43, type: !2410, scopeLine: 43, containingType: !2390, virtualIndex: 4, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual)
!2410 = !DISubroutineType(types: !2411)
!2411 = !{!64, !2401}
!2412 = !DISubprogram(name: "ByteSize", linkageName: "_ZNK10tensorflow23AbstractTensorInterface8ByteSizeEv", scope: !2390, file: !2391, line: 45, type: !2413, scopeLine: 45, containingType: !2390, virtualIndex: 5, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual)
!2413 = !DISubroutineType(types: !2414)
!2414 = !{!19, !2401}
!2415 = !DISubprogram(name: "Data", linkageName: "_ZNK10tensorflow23AbstractTensorInterface4DataEv", scope: !2390, file: !2391, line: 47, type: !2416, scopeLine: 47, containingType: !2390, virtualIndex: 6, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual)
!2416 = !DISubroutineType(types: !2417)
!2417 = !{!38, !2401}
!2418 = !DISubprogram(name: "IsAligned", linkageName: "_ZNK10tensorflow23AbstractTensorInterface9IsAlignedEv", scope: !2390, file: !2391, line: 50, type: !2419, scopeLine: 50, containingType: !2390, virtualIndex: 7, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual)
!2419 = !DISubroutineType(types: !2420)
!2420 = !{!53, !2401}
!2421 = !DISubprogram(name: "CanMove", linkageName: "_ZNK10tensorflow23AbstractTensorInterface7CanMoveEv", scope: !2390, file: !2391, line: 52, type: !2419, scopeLine: 52, containingType: !2390, virtualIndex: 8, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual)
!2422 = !DISubprogram(name: "SummarizeValue", linkageName: "_ZNK10tensorflow23AbstractTensorInterface14SummarizeValueB5cxx11Ev", scope: !2390, file: !2391, line: 54, type: !2423, scopeLine: 54, containingType: !2390, virtualIndex: 9, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual)
!2423 = !DISubroutineType(types: !2424)
!2424 = !{!29, !2401}
!2425 = !DISubprogram(name: "~AbstractTensorInterface", scope: !2390, file: !2391, line: 57, type: !2395, scopeLine: 57, containingType: !2390, virtualIndex: 0, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!2426 = !DILocation(line: 62, column: 14, scope: !2308)
!2427 = !DILocation(line: 62, column: 31, scope: !2308)
!2428 = !DILocation(line: 62, column: 38, scope: !2308)
!2429 = !DILocation(line: 62, column: 60, scope: !2308)
!2430 = !DILocation(line: 62, column: 66, scope: !2308)
!2431 = !DILocation(line: 62, column: 18, scope: !2308)
!2432 = !DILocation(line: 66, column: 7, scope: !2433)
!2433 = distinct !DILexicalBlock(scope: !2308, file: !2309, line: 66, column: 7)
!2434 = !DILocation(line: 66, column: 9, scope: !2433)
!2435 = !DILocation(line: 66, column: 7, scope: !2308)
!2436 = !DILocation(line: 69, column: 10, scope: !2437)
!2437 = distinct !DILexicalBlock(scope: !2438, file: !2309, line: 69, column: 9)
!2438 = distinct !DILexicalBlock(scope: !2433, file: !2309, line: 66, column: 18)
!2439 = !DILocation(line: 69, column: 18, scope: !2437)
!2440 = !DILocation(line: 69, column: 24, scope: !2437)
!2441 = !DILocation(line: 69, column: 28, scope: !2437)
!2442 = !DILocation(line: 69, column: 36, scope: !2437)
!2443 = !DILocation(line: 69, column: 9, scope: !2438)
!2444 = !DILocation(line: 71, column: 5, scope: !2445)
!2445 = distinct !DILexicalBlock(scope: !2437, file: !2309, line: 69, column: 43)
!2446 = !DILocation(line: 75, column: 5, scope: !2438)
!2447 = !DILocation(line: 81, column: 19, scope: !2308)
!2448 = !DILocation(line: 81, column: 3, scope: !2308)
!2449 = !DILocation(line: 82, column: 8, scope: !2308)
!2450 = !DILocation(line: 82, column: 3, scope: !2308)
!2451 = !DILocation(line: 83, column: 3, scope: !2308)
!2452 = !DILocation(line: 84, column: 1, scope: !2308)
!2453 = distinct !DISubprogram(name: "dummy_deallocator", linkageName: "_ZL17dummy_deallocatorPvmS_", scope: !2309, file: !2309, line: 14, type: !2454, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2193, retainedNodes: !212)
!2454 = !DISubroutineType(types: !2455)
!2455 = !{null, !38, !19, !38}
!2456 = !DILocalVariable(name: "data", arg: 1, scope: !2453, file: !2309, line: 14, type: !38)
!2457 = !DILocation(line: 14, column: 37, scope: !2453)
!2458 = !DILocalVariable(name: "len", arg: 2, scope: !2453, file: !2309, line: 14, type: !19)
!2459 = !DILocation(line: 14, column: 50, scope: !2453)
!2460 = !DILocalVariable(name: "arg", arg: 3, scope: !2453, file: !2309, line: 14, type: !38)
!2461 = !DILocation(line: 14, column: 61, scope: !2453)
!2462 = !DILocation(line: 14, column: 102, scope: !2453)
!2463 = distinct !DISubprogram(name: "allocate_tensor", linkageName: "_ZN10tensorflow15allocate_tensorEPKcmPNS_9AllocatorE", scope: !4, file: !2180, line: 48, type: !2464, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, retainedNodes: !212)
!2464 = !DISubroutineType(types: !2465)
!2465 = !{!38, !226, !19, !7}
!2466 = !DILocalVariable(name: "operation", arg: 1, scope: !2463, file: !2180, line: 48, type: !226)
!2467 = !DILocation(line: 48, column: 35, scope: !2463)
!2468 = !DILocalVariable(name: "len", arg: 2, scope: !2463, file: !2180, line: 48, type: !19)
!2469 = !DILocation(line: 48, column: 53, scope: !2463)
!2470 = !DILocalVariable(name: "allocator", arg: 3, scope: !2463, file: !2180, line: 48, type: !7)
!2471 = !DILocation(line: 48, column: 69, scope: !2463)
!2472 = !DILocalVariable(name: "data", scope: !2463, file: !2180, line: 49, type: !38)
!2473 = !DILocation(line: 49, column: 9, scope: !2463)
!2474 = !DILocation(line: 49, column: 16, scope: !2463)
!2475 = !DILocation(line: 49, column: 62, scope: !2463)
!2476 = !DILocation(line: 49, column: 27, scope: !2463)
!2477 = !DILocation(line: 55, column: 10, scope: !2463)
!2478 = !DILocation(line: 55, column: 3, scope: !2463)
!2479 = distinct !DISubprogram(name: "allocate_tensor", linkageName: "_ZN10tensorflow15allocate_tensorEPKcm", scope: !4, file: !2180, line: 58, type: !2480, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, retainedNodes: !212)
!2480 = !DISubroutineType(types: !2481)
!2481 = !{!38, !226, !19}
!2482 = !DILocalVariable(name: "operation", arg: 1, scope: !2479, file: !2180, line: 58, type: !226)
!2483 = !DILocation(line: 58, column: 35, scope: !2479)
!2484 = !DILocalVariable(name: "len", arg: 2, scope: !2479, file: !2180, line: 58, type: !19)
!2485 = !DILocation(line: 58, column: 53, scope: !2479)
!2486 = !DILocation(line: 59, column: 26, scope: !2479)
!2487 = !DILocation(line: 59, column: 37, scope: !2479)
!2488 = !DILocation(line: 59, column: 42, scope: !2479)
!2489 = !DILocation(line: 59, column: 10, scope: !2479)
!2490 = !DILocation(line: 59, column: 3, scope: !2479)
!2491 = !DILocation(line: 22, column: 3, scope: !2)
!2492 = !{!"branch_weights", i32 1, i32 1048575}
!2493 = !DILocation(line: 22, column: 35, scope: !2)
!2494 = !DILocation(line: 22, column: 39, scope: !2)
!2495 = !DILocation(line: 23, column: 10, scope: !2)
!2496 = !DILocation(line: 23, column: 3, scope: !2)
!2497 = !DILocation(line: 24, column: 1, scope: !2)
!2498 = distinct !DISubprogram(name: "StubCPUAllocator", linkageName: "_ZN10tensorflow16StubCPUAllocatorC2Ev", scope: !2183, file: !3, line: 13, type: !2187, scopeLine: 13, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !2499, retainedNodes: !212)
!2499 = !DISubprogram(name: "StubCPUAllocator", scope: !2183, type: !2187, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!2500 = !DILocalVariable(name: "this", arg: 1, scope: !2498, type: !2182, flags: DIFlagArtificial | DIFlagObjectPointer)
!2501 = !DILocation(line: 0, scope: !2498)
!2502 = !DILocation(line: 13, column: 7, scope: !2498)
!2503 = distinct !DISubprogram(name: "Allocator", linkageName: "_ZN10tensorflow9AllocatorC2Ev", scope: !8, file: !9, line: 76, type: !23, scopeLine: 76, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !2504, retainedNodes: !212)
!2504 = !DISubprogram(name: "Allocator", scope: !8, type: !23, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!2505 = !DILocalVariable(name: "this", arg: 1, scope: !2503, type: !7, flags: DIFlagArtificial | DIFlagObjectPointer)
!2506 = !DILocation(line: 0, scope: !2503)
!2507 = !DILocation(line: 76, column: 7, scope: !2503)
!2508 = distinct !DISubprogram(name: "~StubCPUAllocator", linkageName: "_ZN10tensorflow16StubCPUAllocatorD2Ev", scope: !2183, file: !3, line: 15, type: !2187, scopeLine: 15, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !2186, retainedNodes: !212)
!2509 = !DILocalVariable(name: "this", arg: 1, scope: !2508, type: !2182, flags: DIFlagArtificial | DIFlagObjectPointer)
!2510 = !DILocation(line: 0, scope: !2508)
!2511 = !DILocation(line: 15, column: 40, scope: !2512)
!2512 = distinct !DILexicalBlock(scope: !2508, file: !3, line: 15, column: 40)
!2513 = !DILocation(line: 15, column: 40, scope: !2508)
!2514 = distinct !DISubprogram(name: "~StubCPUAllocator", linkageName: "_ZN10tensorflow16StubCPUAllocatorD0Ev", scope: !2183, file: !3, line: 15, type: !2187, scopeLine: 15, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !2186, retainedNodes: !212)
!2515 = !DILocalVariable(name: "this", arg: 1, scope: !2514, type: !2182, flags: DIFlagArtificial | DIFlagObjectPointer)
!2516 = !DILocation(line: 0, scope: !2514)
!2517 = !DILocation(line: 15, column: 40, scope: !2514)
!2518 = distinct !DISubprogram(name: "Name", linkageName: "_ZN10tensorflow16StubCPUAllocator4NameB5cxx11Ev", scope: !2183, file: !3, line: 16, type: !2191, scopeLine: 16, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !2190, retainedNodes: !212)
!2519 = !DILocalVariable(name: "this", arg: 1, scope: !2518, type: !2182, flags: DIFlagArtificial | DIFlagObjectPointer)
!2520 = !DILocation(line: 0, scope: !2518)
!2521 = !DILocation(line: 16, column: 40, scope: !2518)
!2522 = !DILocation(line: 16, column: 33, scope: !2518)
!2523 = !DILocation(line: 16, column: 60, scope: !2518)
!2524 = distinct !DISubprogram(name: "AllocateRaw", linkageName: "_ZN10tensorflow9Allocator11AllocateRawEmm", scope: !8, file: !9, line: 84, type: !36, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !35, retainedNodes: !212)
!2525 = !DILocalVariable(name: "this", arg: 1, scope: !2524, type: !7, flags: DIFlagArtificial | DIFlagObjectPointer)
!2526 = !DILocation(line: 0, scope: !2524)
!2527 = !DILocalVariable(name: "alignment", arg: 2, scope: !2524, file: !9, line: 84, type: !19)
!2528 = !DILocation(line: 84, column: 36, scope: !2524)
!2529 = !DILocalVariable(name: "num_bytes", arg: 3, scope: !2524, file: !9, line: 84, type: !19)
!2530 = !DILocation(line: 84, column: 54, scope: !2524)
!2531 = !DILocation(line: 85, column: 27, scope: !2524)
!2532 = !DILocation(line: 85, column: 55, scope: !2524)
!2533 = !DILocation(line: 85, column: 12, scope: !2524)
!2534 = !DILocation(line: 85, column: 5, scope: !2524)
!2535 = distinct !DISubprogram(name: "DeallocateRaw", linkageName: "_ZN10tensorflow9Allocator13DeallocateRawEPv", scope: !8, file: !9, line: 88, type: !40, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !39, retainedNodes: !212)
!2536 = !DILocalVariable(name: "this", arg: 1, scope: !2535, type: !7, flags: DIFlagArtificial | DIFlagObjectPointer)
!2537 = !DILocation(line: 0, scope: !2535)
!2538 = !DILocalVariable(name: "ptr", arg: 2, scope: !2535, file: !9, line: 88, type: !38)
!2539 = !DILocation(line: 88, column: 36, scope: !2535)
!2540 = !DILocation(line: 88, column: 61, scope: !2535)
!2541 = !DILocation(line: 88, column: 43, scope: !2535)
!2542 = !DILocation(line: 88, column: 67, scope: !2535)
!2543 = distinct !DISubprogram(name: "AllocateRaw", linkageName: "_ZN10tensorflow9Allocator11AllocateRawEmmPKv", scope: !8, file: !9, line: 91, type: !43, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !42, retainedNodes: !212)
!2544 = !DILocalVariable(name: "this", arg: 1, scope: !2543, type: !7, flags: DIFlagArtificial | DIFlagObjectPointer)
!2545 = !DILocation(line: 0, scope: !2543)
!2546 = !DILocalVariable(name: "alignment", arg: 2, scope: !2543, file: !9, line: 91, type: !19)
!2547 = !DILocation(line: 91, column: 36, scope: !2543)
!2548 = !DILocalVariable(name: "num_bytes", arg: 3, scope: !2543, file: !9, line: 91, type: !19)
!2549 = !DILocation(line: 91, column: 54, scope: !2543)
!2550 = !DILocalVariable(arg: 4, scope: !2543, file: !9, line: 92, type: !45)
!2551 = !DILocation(line: 92, column: 60, scope: !2543)
!2552 = !DILocation(line: 93, column: 24, scope: !2543)
!2553 = !DILocation(line: 93, column: 35, scope: !2543)
!2554 = !DILocation(line: 93, column: 12, scope: !2543)
!2555 = !DILocation(line: 93, column: 5, scope: !2543)
!2556 = distinct !DISubprogram(name: "DeallocateRaw", linkageName: "_ZN10tensorflow9Allocator13DeallocateRawEPvmm", scope: !8, file: !9, line: 95, type: !48, scopeLine: 95, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !47, retainedNodes: !212)
!2557 = !DILocalVariable(name: "this", arg: 1, scope: !2556, type: !7, flags: DIFlagArtificial | DIFlagObjectPointer)
!2558 = !DILocation(line: 0, scope: !2556)
!2559 = !DILocalVariable(name: "ptr", arg: 2, scope: !2556, file: !9, line: 95, type: !38)
!2560 = !DILocation(line: 95, column: 36, scope: !2556)
!2561 = !DILocalVariable(arg: 3, scope: !2556, file: !9, line: 95, type: !19)
!2562 = !DILocation(line: 95, column: 47, scope: !2556)
!2563 = !DILocalVariable(arg: 4, scope: !2556, file: !9, line: 95, type: !19)
!2564 = !DILocation(line: 95, column: 55, scope: !2556)
!2565 = !DILocation(line: 96, column: 19, scope: !2556)
!2566 = !DILocation(line: 96, column: 5, scope: !2556)
!2567 = !DILocation(line: 97, column: 3, scope: !2556)
!2568 = distinct !DISubprogram(name: "TracksAllocationSizes", linkageName: "_ZNK10tensorflow9Allocator21TracksAllocationSizesEv", scope: !8, file: !9, line: 99, type: !51, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !50, retainedNodes: !212)
!2569 = !DILocalVariable(name: "this", arg: 1, scope: !2568, type: !2570, flags: DIFlagArtificial | DIFlagObjectPointer)
!2570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!2571 = !DILocation(line: 0, scope: !2568)
!2572 = !DILocation(line: 99, column: 48, scope: !2568)
!2573 = distinct !DISubprogram(name: "AllocatesOpaqueHandle", linkageName: "_ZNK10tensorflow9Allocator21AllocatesOpaqueHandleEv", scope: !8, file: !9, line: 100, type: !51, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !56, retainedNodes: !212)
!2574 = !DILocalVariable(name: "this", arg: 1, scope: !2573, type: !2570, flags: DIFlagArtificial | DIFlagObjectPointer)
!2575 = !DILocation(line: 0, scope: !2573)
!2576 = !DILocation(line: 100, column: 48, scope: !2573)
!2577 = distinct !DISubprogram(name: "RequestedSize", linkageName: "_ZNK10tensorflow9Allocator13RequestedSizeEPKv", scope: !8, file: !9, line: 102, type: !58, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !57, retainedNodes: !212)
!2578 = !DILocalVariable(name: "this", arg: 1, scope: !2577, type: !2570, flags: DIFlagArtificial | DIFlagObjectPointer)
!2579 = !DILocation(line: 0, scope: !2577)
!2580 = !DILocalVariable(arg: 2, scope: !2577, file: !9, line: 102, type: !45)
!2581 = !DILocation(line: 102, column: 51, scope: !2577)
!2582 = !DILocation(line: 102, column: 61, scope: !2577)
!2583 = distinct !DISubprogram(name: "AllocatedSize", linkageName: "_ZNK10tensorflow9Allocator13AllocatedSizeEPKv", scope: !8, file: !9, line: 103, type: !58, scopeLine: 103, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !60, retainedNodes: !212)
!2584 = !DILocalVariable(name: "this", arg: 1, scope: !2583, type: !2570, flags: DIFlagArtificial | DIFlagObjectPointer)
!2585 = !DILocation(line: 0, scope: !2583)
!2586 = !DILocalVariable(arg: 2, scope: !2583, file: !9, line: 103, type: !45)
!2587 = !DILocation(line: 103, column: 51, scope: !2583)
!2588 = !DILocation(line: 103, column: 61, scope: !2583)
!2589 = distinct !DISubprogram(name: "AllocationId", linkageName: "_ZNK10tensorflow9Allocator12AllocationIdEPKv", scope: !8, file: !9, line: 104, type: !62, scopeLine: 104, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !61, retainedNodes: !212)
!2590 = !DILocalVariable(name: "this", arg: 1, scope: !2589, type: !2570, flags: DIFlagArtificial | DIFlagObjectPointer)
!2591 = !DILocation(line: 0, scope: !2589)
!2592 = !DILocalVariable(arg: 2, scope: !2589, file: !9, line: 104, type: !45)
!2593 = !DILocation(line: 104, column: 51, scope: !2589)
!2594 = !DILocation(line: 104, column: 61, scope: !2589)
!2595 = distinct !DISubprogram(name: "AllocatedSizeSlow", linkageName: "_ZNK10tensorflow9Allocator17AllocatedSizeSlowEPKv", scope: !8, file: !9, line: 105, type: !58, scopeLine: 105, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !69, retainedNodes: !212)
!2596 = !DILocalVariable(name: "this", arg: 1, scope: !2595, type: !2570, flags: DIFlagArtificial | DIFlagObjectPointer)
!2597 = !DILocation(line: 0, scope: !2595)
!2598 = !DILocalVariable(arg: 2, scope: !2595, file: !9, line: 105, type: !45)
!2599 = !DILocation(line: 105, column: 55, scope: !2595)
!2600 = !DILocation(line: 105, column: 65, scope: !2595)
!2601 = distinct !DISubprogram(name: "ClearStats", linkageName: "_ZN10tensorflow9Allocator10ClearStatsEv", scope: !8, file: !9, line: 108, type: !71, scopeLine: 108, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !70, retainedNodes: !212)
!2602 = !DILocalVariable(name: "this", arg: 1, scope: !2601, type: !7, flags: DIFlagArtificial | DIFlagObjectPointer)
!2603 = !DILocation(line: 0, scope: !2601)
!2604 = !DILocation(line: 108, column: 31, scope: !2601)
!2605 = distinct !DISubprogram(name: "SetSafeFrontier", linkageName: "_ZN10tensorflow9Allocator15SetSafeFrontierEm", scope: !8, file: !9, line: 110, type: !74, scopeLine: 110, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !73, retainedNodes: !212)
!2606 = !DILocalVariable(name: "this", arg: 1, scope: !2605, type: !7, flags: DIFlagArtificial | DIFlagObjectPointer)
!2607 = !DILocation(line: 0, scope: !2605)
!2608 = !DILocalVariable(arg: 2, scope: !2605, file: !9, line: 110, type: !76)
!2609 = !DILocation(line: 110, column: 40, scope: !2605)
!2610 = !DILocation(line: 110, column: 43, scope: !2605)
!2611 = distinct !DISubprogram(name: "SetStreamAndPreallocateMemory", linkageName: "_ZN10tensorflow9Allocator29SetStreamAndPreallocateMemoryEPv", scope: !8, file: !9, line: 111, type: !40, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !79, retainedNodes: !212)
!2612 = !DILocalVariable(name: "this", arg: 1, scope: !2611, type: !7, flags: DIFlagArtificial | DIFlagObjectPointer)
!2613 = !DILocation(line: 0, scope: !2611)
!2614 = !DILocalVariable(arg: 2, scope: !2611, file: !9, line: 111, type: !38)
!2615 = !DILocation(line: 111, column: 62, scope: !2611)
!2616 = !DILocation(line: 111, column: 65, scope: !2611)
!2617 = distinct !DISubprogram(name: "GetMemoryType", linkageName: "_ZNK10tensorflow9Allocator13GetMemoryTypeEv", scope: !8, file: !9, line: 113, type: !81, scopeLine: 113, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !80, retainedNodes: !212)
!2618 = !DILocalVariable(name: "this", arg: 1, scope: !2617, type: !2570, flags: DIFlagArtificial | DIFlagObjectPointer)
!2619 = !DILocation(line: 0, scope: !2617)
!2620 = !DILocation(line: 114, column: 5, scope: !2617)
!2621 = distinct !DISubprogram(name: "basic_string<std::allocator<char> >", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_", scope: !32, file: !205, line: 533, type: !2622, scopeLine: 535, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, templateParams: !2626, declaration: !2625, retainedNodes: !212)
!2622 = !DISubroutineType(types: !2623)
!2623 = !{null, !2624, !226, !269}
!2624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2625 = !DISubprogram(name: "basic_string<std::allocator<char> >", scope: !32, file: !205, line: 533, type: !2622, scopeLine: 533, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0, templateParams: !2626)
!2626 = !{!2627}
!2627 = !DITemplateTypeParameter(type: !245)
!2628 = !DILocalVariable(name: "this", arg: 1, scope: !2621, type: !2629, flags: DIFlagArtificial | DIFlagObjectPointer)
!2629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!2630 = !DILocation(line: 0, scope: !2621)
!2631 = !DILocalVariable(name: "__s", arg: 2, scope: !2621, file: !205, line: 533, type: !226)
!2632 = !DILocation(line: 533, column: 34, scope: !2621)
!2633 = !DILocalVariable(name: "__a", arg: 3, scope: !2621, file: !205, line: 533, type: !269)
!2634 = !DILocation(line: 533, column: 53, scope: !2621)
!2635 = !DILocation(line: 534, column: 9, scope: !2621)
!2636 = !DILocation(line: 534, column: 21, scope: !2621)
!2637 = !DILocation(line: 534, column: 38, scope: !2621)
!2638 = !DILocalVariable(name: "__end", scope: !2639, file: !205, line: 536, type: !226)
!2639 = distinct !DILexicalBlock(scope: !2621, file: !205, line: 535, column: 7)
!2640 = !DILocation(line: 536, column: 16, scope: !2639)
!2641 = !DILocation(line: 536, column: 24, scope: !2639)
!2642 = !DILocation(line: 536, column: 30, scope: !2639)
!2643 = !DILocation(line: 536, column: 56, scope: !2639)
!2644 = !DILocation(line: 536, column: 36, scope: !2639)
!2645 = !DILocation(line: 536, column: 34, scope: !2639)
!2646 = !DILocation(line: 539, column: 15, scope: !2639)
!2647 = !DILocation(line: 539, column: 20, scope: !2639)
!2648 = !DILocation(line: 539, column: 27, scope: !2639)
!2649 = !DILocation(line: 539, column: 2, scope: !2639)
!2650 = !DILocation(line: 540, column: 7, scope: !2621)
!2651 = !DILocation(line: 540, column: 7, scope: !2639)
!2652 = distinct !DISubprogram(name: "length", linkageName: "_ZNSt11char_traitsIcE6lengthEPKc", scope: !2654, file: !2653, line: 393, type: !2672, scopeLine: 394, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !2671, retainedNodes: !212)
!2653 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/char_traits.h", directory: "")
!2654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "char_traits<char>", scope: !31, file: !2653, line: 344, size: 8, flags: DIFlagTypePassByValue, elements: !2655, templateParams: !2703, identifier: "_ZTSSt11char_traitsIcE")
!2655 = !{!2656, !2663, !2666, !2667, !2671, !2674, !2677, !2681, !2682, !2685, !2691, !2694, !2697, !2700}
!2656 = !DISubprogram(name: "assign", linkageName: "_ZNSt11char_traitsIcE6assignERcRKc", scope: !2654, file: !2653, line: 356, type: !2657, scopeLine: 356, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2657 = !DISubroutineType(types: !2658)
!2658 = !{null, !2659, !2661}
!2659 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2660, size: 64)
!2660 = !DIDerivedType(tag: DW_TAG_typedef, name: "char_type", scope: !2654, file: !2653, line: 346, baseType: !228)
!2661 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2662, size: 64)
!2662 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2660)
!2663 = !DISubprogram(name: "eq", linkageName: "_ZNSt11char_traitsIcE2eqERKcS2_", scope: !2654, file: !2653, line: 360, type: !2664, scopeLine: 360, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2664 = !DISubroutineType(types: !2665)
!2665 = !{!53, !2661, !2661}
!2666 = !DISubprogram(name: "lt", linkageName: "_ZNSt11char_traitsIcE2ltERKcS2_", scope: !2654, file: !2653, line: 364, type: !2664, scopeLine: 364, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2667 = !DISubprogram(name: "compare", linkageName: "_ZNSt11char_traitsIcE7compareEPKcS2_m", scope: !2654, file: !2653, line: 372, type: !2668, scopeLine: 372, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2668 = !DISubroutineType(types: !2669)
!2669 = !{!16, !2670, !2670, !210}
!2670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2662, size: 64)
!2671 = !DISubprogram(name: "length", linkageName: "_ZNSt11char_traitsIcE6lengthEPKc", scope: !2654, file: !2653, line: 393, type: !2672, scopeLine: 393, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2672 = !DISubroutineType(types: !2673)
!2673 = !{!210, !2670}
!2674 = !DISubprogram(name: "find", linkageName: "_ZNSt11char_traitsIcE4findEPKcmRS1_", scope: !2654, file: !2653, line: 403, type: !2675, scopeLine: 403, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2675 = !DISubroutineType(types: !2676)
!2676 = !{!2670, !2670, !210, !2661}
!2677 = !DISubprogram(name: "move", linkageName: "_ZNSt11char_traitsIcE4moveEPcPKcm", scope: !2654, file: !2653, line: 417, type: !2678, scopeLine: 417, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2678 = !DISubroutineType(types: !2679)
!2679 = !{!2680, !2680, !2670, !210}
!2680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2660, size: 64)
!2681 = !DISubprogram(name: "copy", linkageName: "_ZNSt11char_traitsIcE4copyEPcPKcm", scope: !2654, file: !2653, line: 429, type: !2678, scopeLine: 429, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2682 = !DISubprogram(name: "assign", linkageName: "_ZNSt11char_traitsIcE6assignEPcmc", scope: !2654, file: !2653, line: 441, type: !2683, scopeLine: 441, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2683 = !DISubroutineType(types: !2684)
!2684 = !{!2680, !2680, !210, !2660}
!2685 = !DISubprogram(name: "to_char_type", linkageName: "_ZNSt11char_traitsIcE12to_char_typeERKi", scope: !2654, file: !2653, line: 453, type: !2686, scopeLine: 453, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2686 = !DISubroutineType(types: !2687)
!2687 = !{!2660, !2688}
!2688 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2689, size: 64)
!2689 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2690)
!2690 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_type", scope: !2654, file: !2653, line: 347, baseType: !16)
!2691 = !DISubprogram(name: "to_int_type", linkageName: "_ZNSt11char_traitsIcE11to_int_typeERKc", scope: !2654, file: !2653, line: 459, type: !2692, scopeLine: 459, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2692 = !DISubroutineType(types: !2693)
!2693 = !{!2690, !2661}
!2694 = !DISubprogram(name: "eq_int_type", linkageName: "_ZNSt11char_traitsIcE11eq_int_typeERKiS2_", scope: !2654, file: !2653, line: 463, type: !2695, scopeLine: 463, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2695 = !DISubroutineType(types: !2696)
!2696 = !{!53, !2688, !2688}
!2697 = !DISubprogram(name: "eof", linkageName: "_ZNSt11char_traitsIcE3eofEv", scope: !2654, file: !2653, line: 467, type: !2698, scopeLine: 467, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2698 = !DISubroutineType(types: !2699)
!2699 = !{!2690}
!2700 = !DISubprogram(name: "not_eof", linkageName: "_ZNSt11char_traitsIcE7not_eofERKi", scope: !2654, file: !2653, line: 471, type: !2701, scopeLine: 471, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2701 = !DISubroutineType(types: !2702)
!2702 = !{!2690, !2688}
!2703 = !{!2704}
!2704 = !DITemplateTypeParameter(name: "_CharT", type: !228)
!2705 = !DILocalVariable(name: "__s", arg: 1, scope: !2652, file: !2653, line: 393, type: !2670)
!2706 = !DILocation(line: 393, column: 31, scope: !2652)
!2707 = !DILocation(line: 396, column: 26, scope: !2708)
!2708 = distinct !DILexicalBlock(scope: !2652, file: !2653, line: 396, column: 6)
!2709 = !DILocalVariable(name: "__s", arg: 1, scope: !2710, file: !2653, line: 285, type: !226)
!2710 = distinct !DISubprogram(name: "__constant_string_p<char>", linkageName: "_ZSt19__constant_string_pIcEbPKT_", scope: !31, file: !2653, line: 285, type: !2711, scopeLine: 286, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, templateParams: !2703, retainedNodes: !212)
!2711 = !DISubroutineType(types: !2712)
!2712 = !{!53, !226}
!2713 = !DILocation(line: 285, column: 39, scope: !2710, inlinedAt: !2714)
!2714 = distinct !DILocation(line: 396, column: 6, scope: !2708)
!2715 = !DILocation(line: 396, column: 6, scope: !2652)
!2716 = !DILocation(line: 397, column: 53, scope: !2708)
!2717 = !DILocation(line: 397, column: 11, scope: !2708)
!2718 = !DILocation(line: 397, column: 4, scope: !2708)
!2719 = !DILocation(line: 399, column: 26, scope: !2652)
!2720 = !DILocation(line: 399, column: 9, scope: !2652)
!2721 = !DILocation(line: 399, column: 2, scope: !2652)
!2722 = !DILocation(line: 400, column: 7, scope: !2652)
!2723 = distinct !DISubprogram(name: "_M_construct<const char *>", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag", scope: !32, file: !33, line: 207, type: !2724, scopeLine: 209, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, templateParams: !2731, declaration: !2730, retainedNodes: !212)
!2724 = !DISubroutineType(types: !2725)
!2725 = !{null, !2624, !226, !226, !2726}
!2726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "forward_iterator_tag", scope: !31, file: !655, line: 99, size: 8, flags: DIFlagTypePassByValue, elements: !2727, identifier: "_ZTSSt20forward_iterator_tag")
!2727 = !{!2728}
!2728 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !2726, baseType: !2729, extraData: i32 0)
!2729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_iterator_tag", scope: !31, file: !655, line: 93, size: 8, flags: DIFlagTypePassByValue, elements: !212, identifier: "_ZTSSt18input_iterator_tag")
!2730 = !DISubprogram(name: "_M_construct<const char *>", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag", scope: !32, file: !205, line: 287, type: !2724, scopeLine: 287, flags: DIFlagPrototyped, spFlags: 0, templateParams: !2731)
!2731 = !{!2732}
!2732 = !DITemplateTypeParameter(name: "_FwdIterator", type: !226)
!2733 = !DILocalVariable(name: "this", arg: 1, scope: !2723, type: !2629, flags: DIFlagArtificial | DIFlagObjectPointer)
!2734 = !DILocation(line: 0, scope: !2723)
!2735 = !DILocalVariable(name: "__beg", arg: 2, scope: !2723, file: !205, line: 287, type: !226)
!2736 = !DILocation(line: 287, column: 35, scope: !2723)
!2737 = !DILocalVariable(name: "__end", arg: 3, scope: !2723, file: !205, line: 287, type: !226)
!2738 = !DILocation(line: 287, column: 55, scope: !2723)
!2739 = !DILocalVariable(arg: 4, scope: !2723, file: !205, line: 288, type: !2726)
!2740 = !DILocation(line: 288, column: 33, scope: !2723)
!2741 = !DILocation(line: 211, column: 35, scope: !2742)
!2742 = distinct !DILexicalBlock(scope: !2723, file: !33, line: 211, column: 6)
!2743 = !DILocation(line: 211, column: 6, scope: !2742)
!2744 = !DILocation(line: 211, column: 42, scope: !2742)
!2745 = !DILocation(line: 211, column: 45, scope: !2742)
!2746 = !DILocation(line: 211, column: 54, scope: !2742)
!2747 = !DILocation(line: 211, column: 51, scope: !2742)
!2748 = !DILocation(line: 211, column: 6, scope: !2723)
!2749 = !DILocation(line: 212, column: 4, scope: !2742)
!2750 = !DILocalVariable(name: "__dnew", scope: !2723, file: !33, line: 215, type: !229)
!2751 = !DILocation(line: 215, column: 12, scope: !2723)
!2752 = !DILocation(line: 215, column: 58, scope: !2723)
!2753 = !DILocation(line: 215, column: 65, scope: !2723)
!2754 = !DILocation(line: 215, column: 44, scope: !2723)
!2755 = !DILocation(line: 217, column: 6, scope: !2756)
!2756 = distinct !DILexicalBlock(scope: !2723, file: !33, line: 217, column: 6)
!2757 = !DILocation(line: 217, column: 13, scope: !2756)
!2758 = !DILocation(line: 217, column: 6, scope: !2723)
!2759 = !DILocation(line: 219, column: 14, scope: !2760)
!2760 = distinct !DILexicalBlock(scope: !2756, file: !33, line: 218, column: 4)
!2761 = !DILocation(line: 219, column: 6, scope: !2760)
!2762 = !DILocation(line: 220, column: 18, scope: !2760)
!2763 = !DILocation(line: 220, column: 6, scope: !2760)
!2764 = !DILocation(line: 221, column: 4, scope: !2760)
!2765 = !DILocation(line: 225, column: 26, scope: !2766)
!2766 = distinct !DILexicalBlock(scope: !2723, file: !33, line: 225, column: 4)
!2767 = !DILocation(line: 225, column: 37, scope: !2766)
!2768 = !DILocation(line: 225, column: 44, scope: !2766)
!2769 = !DILocation(line: 225, column: 6, scope: !2766)
!2770 = !DILocation(line: 225, column: 52, scope: !2766)
!2771 = !DILocation(line: 233, column: 7, scope: !2766)
!2772 = !DILocation(line: 228, column: 6, scope: !2773)
!2773 = distinct !DILexicalBlock(scope: !2723, file: !33, line: 227, column: 4)
!2774 = !DILocation(line: 229, column: 6, scope: !2773)
!2775 = !DILocation(line: 233, column: 7, scope: !2773)
!2776 = !DILocation(line: 230, column: 4, scope: !2773)
!2777 = !DILocation(line: 232, column: 16, scope: !2723)
!2778 = !DILocation(line: 232, column: 2, scope: !2723)
!2779 = !DILocation(line: 233, column: 7, scope: !2723)
!2780 = distinct !DISubprogram(name: "~_Alloc_hider", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev", scope: !2781, file: !205, line: 158, type: !2802, scopeLine: 158, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !2804, retainedNodes: !212)
!2781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Alloc_hider", scope: !32, file: !205, line: 158, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !2782, identifier: "_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE")
!2782 = !{!2783, !2791, !2794, !2798}
!2783 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !2781, baseType: !2784, extraData: i32 0)
!2784 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocator_type", scope: !32, file: !205, line: 95, baseType: !2785)
!2785 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Char_alloc_type", scope: !32, file: !205, line: 88, baseType: !2786)
!2786 = !DIDerivedType(tag: DW_TAG_typedef, name: "other", scope: !2787, file: !231, line: 120, baseType: !2790)
!2787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rebind<char>", scope: !232, file: !231, line: 119, size: 8, flags: DIFlagTypePassByValue, elements: !212, templateParams: !2788, identifier: "_ZTSN9__gnu_cxx14__alloc_traitsISaIcEcE6rebindIcEE")
!2788 = !{!2789}
!2789 = !DITemplateTypeParameter(name: "_Tp", type: !228)
!2790 = !DIDerivedType(tag: DW_TAG_typedef, name: "rebind_alloc<char>", scope: !235, file: !236, line: 450, baseType: !245)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "_M_p", scope: !2781, file: !205, line: 171, baseType: !2792, size: 64)
!2792 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !32, file: !205, line: 100, baseType: !2793)
!2793 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !232, file: !231, line: 57, baseType: !241)
!2794 = !DISubprogram(name: "_Alloc_hider", scope: !2781, file: !205, line: 164, type: !2795, scopeLine: 164, flags: DIFlagPrototyped, spFlags: 0)
!2795 = !DISubroutineType(types: !2796)
!2796 = !{null, !2797, !2792, !269}
!2797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2781, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2798 = !DISubprogram(name: "_Alloc_hider", scope: !2781, file: !205, line: 167, type: !2799, scopeLine: 167, flags: DIFlagPrototyped, spFlags: 0)
!2799 = !DISubroutineType(types: !2800)
!2800 = !{null, !2797, !2792, !2801}
!2801 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !245, size: 64)
!2802 = !DISubroutineType(types: !2803)
!2803 = !{null, !2797}
!2804 = !DISubprogram(name: "~_Alloc_hider", scope: !2781, type: !2802, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!2805 = !DILocalVariable(name: "this", arg: 1, scope: !2780, type: !2806, flags: DIFlagArtificial | DIFlagObjectPointer)
!2806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2781, size: 64)
!2807 = !DILocation(line: 0, scope: !2780)
!2808 = !DILocation(line: 158, column: 14, scope: !2809)
!2809 = distinct !DILexicalBlock(scope: !2780, file: !205, line: 158, column: 14)
!2810 = !DILocation(line: 158, column: 14, scope: !2780)
!2811 = distinct !DISubprogram(name: "__is_null_pointer<const char>", linkageName: "_ZN9__gnu_cxx17__is_null_pointerIKcEEbPT_", scope: !94, file: !2812, line: 152, type: !2711, scopeLine: 153, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, templateParams: !2813, retainedNodes: !212)
!2812 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/ext/type_traits.h", directory: "")
!2813 = !{!2814}
!2814 = !DITemplateTypeParameter(name: "_Type", type: !227)
!2815 = !DILocalVariable(name: "__ptr", arg: 1, scope: !2811, file: !2812, line: 152, type: !226)
!2816 = !DILocation(line: 152, column: 30, scope: !2811)
!2817 = !DILocation(line: 153, column: 14, scope: !2811)
!2818 = !DILocation(line: 153, column: 20, scope: !2811)
!2819 = !DILocation(line: 153, column: 7, scope: !2811)
!2820 = distinct !DISubprogram(name: "distance<const char *>", linkageName: "_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_", scope: !31, file: !2821, line: 138, type: !2822, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, templateParams: !2828, retainedNodes: !212)
!2821 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/stl_iterator_base_funcs.h", directory: "")
!2822 = !DISubroutineType(types: !2823)
!2823 = !{!2824, !226, !226}
!2824 = !DIDerivedType(tag: DW_TAG_typedef, name: "difference_type", scope: !2825, file: !655, line: 225, baseType: !680)
!2825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iterator_traits<const char *>", scope: !31, file: !655, line: 221, size: 8, flags: DIFlagTypePassByValue, elements: !212, templateParams: !2826, identifier: "_ZTSSt15iterator_traitsIPKcE")
!2826 = !{!2827}
!2827 = !DITemplateTypeParameter(name: "_Iterator", type: !226)
!2828 = !{!2829}
!2829 = !DITemplateTypeParameter(name: "_InputIterator", type: !226)
!2830 = !DILocalVariable(name: "__first", arg: 1, scope: !2820, file: !2821, line: 138, type: !226)
!2831 = !DILocation(line: 138, column: 29, scope: !2820)
!2832 = !DILocalVariable(name: "__last", arg: 2, scope: !2820, file: !2821, line: 138, type: !226)
!2833 = !DILocation(line: 138, column: 53, scope: !2820)
!2834 = !DILocation(line: 141, column: 30, scope: !2820)
!2835 = !DILocation(line: 141, column: 39, scope: !2820)
!2836 = !DILocation(line: 142, column: 9, scope: !2820)
!2837 = !DILocation(line: 141, column: 14, scope: !2820)
!2838 = !DILocation(line: 141, column: 7, scope: !2820)
!2839 = distinct !DISubprogram(name: "__iterator_category<const char *>", linkageName: "_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_", scope: !31, file: !655, line: 238, type: !2840, scopeLine: 239, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, templateParams: !2851, retainedNodes: !212)
!2840 = !DISubroutineType(types: !2841)
!2841 = !{!2842, !2849}
!2842 = !DIDerivedType(tag: DW_TAG_typedef, name: "iterator_category", scope: !2825, file: !655, line: 223, baseType: !2843)
!2843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "random_access_iterator_tag", scope: !31, file: !655, line: 107, size: 8, flags: DIFlagTypePassByValue, elements: !2844, identifier: "_ZTSSt26random_access_iterator_tag")
!2844 = !{!2845}
!2845 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !2843, baseType: !2846, extraData: i32 0)
!2846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bidirectional_iterator_tag", scope: !31, file: !655, line: 103, size: 8, flags: DIFlagTypePassByValue, elements: !2847, identifier: "_ZTSSt26bidirectional_iterator_tag")
!2847 = !{!2848}
!2848 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !2846, baseType: !2726, extraData: i32 0)
!2849 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2850, size: 64)
!2850 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !226)
!2851 = !{!2852}
!2852 = !DITemplateTypeParameter(name: "_Iter", type: !226)
!2853 = !DILocalVariable(arg: 1, scope: !2839, file: !655, line: 238, type: !2849)
!2854 = !DILocation(line: 238, column: 37, scope: !2839)
!2855 = !DILocation(line: 239, column: 7, scope: !2839)
!2856 = distinct !DISubprogram(name: "__distance<const char *>", linkageName: "_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag", scope: !31, file: !2821, line: 98, type: !2857, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, templateParams: !2859, retainedNodes: !212)
!2857 = !DISubroutineType(types: !2858)
!2858 = !{!2824, !226, !226, !2843}
!2859 = !{!2860}
!2860 = !DITemplateTypeParameter(name: "_RandomAccessIterator", type: !226)
!2861 = !DILocalVariable(name: "__first", arg: 1, scope: !2856, file: !2821, line: 98, type: !226)
!2862 = !DILocation(line: 98, column: 38, scope: !2856)
!2863 = !DILocalVariable(name: "__last", arg: 2, scope: !2856, file: !2821, line: 98, type: !226)
!2864 = !DILocation(line: 98, column: 69, scope: !2856)
!2865 = !DILocalVariable(arg: 3, scope: !2856, file: !2821, line: 99, type: !2843)
!2866 = !DILocation(line: 99, column: 42, scope: !2856)
!2867 = !DILocation(line: 104, column: 14, scope: !2856)
!2868 = !DILocation(line: 104, column: 23, scope: !2856)
!2869 = !DILocation(line: 104, column: 21, scope: !2856)
!2870 = !DILocation(line: 104, column: 7, scope: !2856)
!2871 = distinct !DISubprogram(name: "length", linkageName: "_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc", scope: !2872, file: !2653, line: 168, type: !2890, scopeLine: 169, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !2889, retainedNodes: !212)
!2872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "char_traits<char>", scope: !94, file: !2653, line: 90, size: 8, flags: DIFlagTypePassByValue, elements: !2873, templateParams: !2703, identifier: "_ZTSN9__gnu_cxx11char_traitsIcEE")
!2873 = !{!2874, !2881, !2884, !2885, !2889, !2892, !2895, !2899, !2900, !2903, !2911, !2914, !2917, !2920}
!2874 = !DISubprogram(name: "assign", linkageName: "_ZN9__gnu_cxx11char_traitsIcE6assignERcRKc", scope: !2872, file: !2653, line: 102, type: !2875, scopeLine: 102, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2875 = !DISubroutineType(types: !2876)
!2876 = !{null, !2877, !2879}
!2877 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2878, size: 64)
!2878 = !DIDerivedType(tag: DW_TAG_typedef, name: "char_type", scope: !2872, file: !2653, line: 92, baseType: !228)
!2879 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2880, size: 64)
!2880 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2878)
!2881 = !DISubprogram(name: "eq", linkageName: "_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_", scope: !2872, file: !2653, line: 106, type: !2882, scopeLine: 106, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2882 = !DISubroutineType(types: !2883)
!2883 = !{!53, !2879, !2879}
!2884 = !DISubprogram(name: "lt", linkageName: "_ZN9__gnu_cxx11char_traitsIcE2ltERKcS3_", scope: !2872, file: !2653, line: 110, type: !2882, scopeLine: 110, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2885 = !DISubprogram(name: "compare", linkageName: "_ZN9__gnu_cxx11char_traitsIcE7compareEPKcS3_m", scope: !2872, file: !2653, line: 114, type: !2886, scopeLine: 114, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2886 = !DISubroutineType(types: !2887)
!2887 = !{!16, !2888, !2888, !210}
!2888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2880, size: 64)
!2889 = !DISubprogram(name: "length", linkageName: "_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc", scope: !2872, file: !2653, line: 117, type: !2890, scopeLine: 117, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2890 = !DISubroutineType(types: !2891)
!2891 = !{!210, !2888}
!2892 = !DISubprogram(name: "find", linkageName: "_ZN9__gnu_cxx11char_traitsIcE4findEPKcmRS2_", scope: !2872, file: !2653, line: 120, type: !2893, scopeLine: 120, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2893 = !DISubroutineType(types: !2894)
!2894 = !{!2888, !2888, !210, !2879}
!2895 = !DISubprogram(name: "move", linkageName: "_ZN9__gnu_cxx11char_traitsIcE4moveEPcPKcm", scope: !2872, file: !2653, line: 123, type: !2896, scopeLine: 123, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2896 = !DISubroutineType(types: !2897)
!2897 = !{!2898, !2898, !2888, !210}
!2898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2878, size: 64)
!2899 = !DISubprogram(name: "copy", linkageName: "_ZN9__gnu_cxx11char_traitsIcE4copyEPcPKcm", scope: !2872, file: !2653, line: 126, type: !2896, scopeLine: 126, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2900 = !DISubprogram(name: "assign", linkageName: "_ZN9__gnu_cxx11char_traitsIcE6assignEPcmc", scope: !2872, file: !2653, line: 129, type: !2901, scopeLine: 129, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2901 = !DISubroutineType(types: !2902)
!2902 = !{!2898, !2898, !210, !2878}
!2903 = !DISubprogram(name: "to_char_type", linkageName: "_ZN9__gnu_cxx11char_traitsIcE12to_char_typeERKm", scope: !2872, file: !2653, line: 132, type: !2904, scopeLine: 132, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2904 = !DISubroutineType(types: !2905)
!2905 = !{!2878, !2906}
!2906 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2907, size: 64)
!2907 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2908)
!2908 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_type", scope: !2872, file: !2653, line: 93, baseType: !2909)
!2909 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_type", scope: !2910, file: !2653, line: 67, baseType: !21)
!2910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Char_types<char>", scope: !94, file: !2653, line: 65, size: 8, flags: DIFlagTypePassByValue, elements: !212, templateParams: !2703, identifier: "_ZTSN9__gnu_cxx11_Char_typesIcEE")
!2911 = !DISubprogram(name: "to_int_type", linkageName: "_ZN9__gnu_cxx11char_traitsIcE11to_int_typeERKc", scope: !2872, file: !2653, line: 136, type: !2912, scopeLine: 136, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2912 = !DISubroutineType(types: !2913)
!2913 = !{!2908, !2879}
!2914 = !DISubprogram(name: "eq_int_type", linkageName: "_ZN9__gnu_cxx11char_traitsIcE11eq_int_typeERKmS3_", scope: !2872, file: !2653, line: 140, type: !2915, scopeLine: 140, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2915 = !DISubroutineType(types: !2916)
!2916 = !{!53, !2906, !2906}
!2917 = !DISubprogram(name: "eof", linkageName: "_ZN9__gnu_cxx11char_traitsIcE3eofEv", scope: !2872, file: !2653, line: 144, type: !2918, scopeLine: 144, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2918 = !DISubroutineType(types: !2919)
!2919 = !{!2908}
!2920 = !DISubprogram(name: "not_eof", linkageName: "_ZN9__gnu_cxx11char_traitsIcE7not_eofERKm", scope: !2872, file: !2653, line: 148, type: !2921, scopeLine: 148, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2921 = !DISubroutineType(types: !2922)
!2922 = !{!2908, !2906}
!2923 = !DILocalVariable(name: "__p", arg: 1, scope: !2871, file: !2653, line: 117, type: !2888)
!2924 = !DILocation(line: 117, column: 31, scope: !2871)
!2925 = !DILocalVariable(name: "__i", scope: !2871, file: !2653, line: 170, type: !210)
!2926 = !DILocation(line: 170, column: 19, scope: !2871)
!2927 = !DILocation(line: 171, column: 7, scope: !2871)
!2928 = !DILocation(line: 171, column: 18, scope: !2871)
!2929 = !DILocation(line: 171, column: 22, scope: !2871)
!2930 = !DILocation(line: 171, column: 28, scope: !2871)
!2931 = !DILocation(line: 171, column: 15, scope: !2871)
!2932 = !DILocation(line: 171, column: 14, scope: !2871)
!2933 = !DILocation(line: 172, column: 9, scope: !2871)
!2934 = distinct !{!2934, !2927, !2935}
!2935 = !DILocation(line: 172, column: 11, scope: !2871)
!2936 = !DILocation(line: 173, column: 14, scope: !2871)
!2937 = !DILocation(line: 173, column: 7, scope: !2871)
!2938 = distinct !DISubprogram(name: "eq", linkageName: "_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_", scope: !2872, file: !2653, line: 106, type: !2882, scopeLine: 107, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !2881, retainedNodes: !212)
!2939 = !DILocalVariable(name: "__c1", arg: 1, scope: !2938, file: !2653, line: 106, type: !2879)
!2940 = !DILocation(line: 106, column: 27, scope: !2938)
!2941 = !DILocalVariable(name: "__c2", arg: 2, scope: !2938, file: !2653, line: 106, type: !2879)
!2942 = !DILocation(line: 106, column: 50, scope: !2938)
!2943 = !DILocation(line: 107, column: 16, scope: !2938)
!2944 = !DILocation(line: 107, column: 24, scope: !2938)
!2945 = !DILocation(line: 107, column: 21, scope: !2938)
!2946 = !DILocation(line: 107, column: 9, scope: !2938)
!2947 = distinct !DISubprogram(name: "~Allocator", linkageName: "_ZN10tensorflow9AllocatorD2Ev", scope: !8, file: !9, line: 79, type: !23, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !22, retainedNodes: !212)
!2948 = !DILocalVariable(name: "this", arg: 1, scope: !2947, type: !7, flags: DIFlagArtificial | DIFlagObjectPointer)
!2949 = !DILocation(line: 0, scope: !2947)
!2950 = !DILocation(line: 79, column: 25, scope: !2947)
!2951 = distinct !DISubprogram(name: "~Allocator", linkageName: "_ZN10tensorflow9AllocatorD0Ev", scope: !8, file: !9, line: 79, type: !23, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !22, retainedNodes: !212)
!2952 = !DILocalVariable(name: "this", arg: 1, scope: !2951, type: !7, flags: DIFlagArtificial | DIFlagObjectPointer)
!2953 = !DILocation(line: 0, scope: !2951)
!2954 = !DILocation(line: 79, column: 24, scope: !2951)
!2955 = !DILocation(line: 79, column: 25, scope: !2951)
!2956 = distinct !DISubprogram(name: "Name", linkageName: "_ZN10tensorflow9Allocator4NameB5cxx11Ev", scope: !8, file: !9, line: 82, type: !27, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !26, retainedNodes: !212)
!2957 = !DILocalVariable(name: "this", arg: 1, scope: !2956, type: !7, flags: DIFlagArtificial | DIFlagObjectPointer)
!2958 = !DILocation(line: 0, scope: !2956)
!2959 = !DILocation(line: 82, column: 39, scope: !2956)
!2960 = !DILocation(line: 82, column: 32, scope: !2956)
!2961 = !DILocation(line: 82, column: 56, scope: !2956)
!2962 = distinct !DISubprogram(name: "deallocate_buffer", linkageName: "_ZN10tensorflow17deallocate_bufferEPvmS0_", scope: !4, file: !2180, line: 62, type: !2454, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, retainedNodes: !212)
!2963 = !DILocalVariable(name: "data", arg: 1, scope: !2962, file: !2180, line: 62, type: !38)
!2964 = !DILocation(line: 62, column: 30, scope: !2962)
!2965 = !DILocalVariable(name: "len", arg: 2, scope: !2962, file: !2180, line: 62, type: !19)
!2966 = !DILocation(line: 62, column: 43, scope: !2962)
!2967 = !DILocalVariable(name: "arg", arg: 3, scope: !2962, file: !2180, line: 62, type: !38)
!2968 = !DILocation(line: 62, column: 54, scope: !2962)
!2969 = !DILocalVariable(name: "allocator", scope: !2962, file: !2180, line: 63, type: !7)
!2970 = !DILocation(line: 63, column: 14, scope: !2962)
!2971 = !DILocation(line: 64, column: 7, scope: !2972)
!2972 = distinct !DILexicalBlock(scope: !2962, file: !2180, line: 64, column: 7)
!2973 = !DILocation(line: 64, column: 11, scope: !2972)
!2974 = !DILocation(line: 64, column: 7, scope: !2962)
!2975 = !DILocation(line: 65, column: 17, scope: !2976)
!2976 = distinct !DILexicalBlock(scope: !2972, file: !2180, line: 64, column: 23)
!2977 = !DILocation(line: 65, column: 15, scope: !2976)
!2978 = !DILocation(line: 66, column: 3, scope: !2976)
!2979 = !DILocation(line: 67, column: 46, scope: !2980)
!2980 = distinct !DILexicalBlock(scope: !2972, file: !2180, line: 66, column: 10)
!2981 = !DILocation(line: 67, column: 17, scope: !2980)
!2982 = !DILocation(line: 67, column: 15, scope: !2980)
!2983 = !DILocation(line: 74, column: 3, scope: !2962)
!2984 = !DILocation(line: 74, column: 28, scope: !2962)
!2985 = !DILocation(line: 74, column: 14, scope: !2962)
!2986 = !DILocation(line: 75, column: 1, scope: !2962)
!2987 = distinct !DISubprogram(name: "TF_AllocateTensor", scope: !2180, file: !2180, line: 97, type: !2988, scopeLine: 98, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, retainedNodes: !212)
!2988 = !DISubroutineType(types: !2989)
!2989 = !{!2990, !225, !2992, !16, !19}
!2990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2991, size: 64)
!2991 = !DIDerivedType(tag: DW_TAG_typedef, name: "TF_Tensor", file: !2386, line: 43, baseType: !2385)
!2992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2993, size: 64)
!2993 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !64)
!2994 = !DILocalVariable(name: "dtype", arg: 1, scope: !2987, file: !2180, line: 97, type: !225)
!2995 = !DILocation(line: 97, column: 42, scope: !2987)
!2996 = !DILocalVariable(name: "dims", arg: 2, scope: !2987, file: !2180, line: 97, type: !2992)
!2997 = !DILocation(line: 97, column: 64, scope: !2987)
!2998 = !DILocalVariable(name: "num_dims", arg: 3, scope: !2987, file: !2180, line: 98, type: !16)
!2999 = !DILocation(line: 98, column: 34, scope: !2987)
!3000 = !DILocalVariable(name: "len", arg: 4, scope: !2987, file: !2180, line: 98, type: !19)
!3001 = !DILocation(line: 98, column: 51, scope: !2987)
!3002 = !DILocalVariable(name: "data", scope: !2987, file: !2180, line: 99, type: !38)
!3003 = !DILocation(line: 99, column: 9, scope: !2987)
!3004 = !DILocation(line: 99, column: 65, scope: !2987)
!3005 = !DILocation(line: 100, column: 44, scope: !2987)
!3006 = !DILocation(line: 99, column: 16, scope: !2987)
!3007 = !DILocalVariable(name: "buf", scope: !2987, file: !2180, line: 101, type: !3008)
!3008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3009, size: 64)
!3009 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "TF_ManagedBuffer", file: !2386, line: 45, size: 448, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !3010, vtableHolder: !3042, identifier: "_ZTS16TF_ManagedBuffer")
!3010 = !{!3011, !3012, !3013, !3016, !3018, !3019, !3023, !3026, !3031, !3034, !3039}
!3011 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !3009, baseType: !1912, flags: DIFlagPublic, extraData: i32 0)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "len_", scope: !3009, file: !2386, line: 72, baseType: !18, size: 64, offset: 192)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "deallocator_", scope: !3009, file: !2386, line: 73, baseType: !3014, size: 64, offset: 256)
!3014 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3015)
!3015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2454, size: 64)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "deallocator_arg_", scope: !3009, file: !2386, line: 74, baseType: !3017, size: 64, offset: 320)
!3017 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "owns_memory_", scope: !3009, file: !2386, line: 75, baseType: !53, size: 8, offset: 384)
!3019 = !DISubprogram(name: "TF_ManagedBuffer", scope: !3009, file: !2386, line: 47, type: !3020, scopeLine: 47, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!3020 = !DISubroutineType(types: !3021)
!3021 = !{null, !3022, !38, !19, !3015, !38, !53}
!3022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3009, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3023 = !DISubprogram(name: "~TF_ManagedBuffer", scope: !3009, file: !2386, line: 56, type: !3024, scopeLine: 56, containingType: !3009, virtualIndex: 0, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!3024 = !DISubroutineType(types: !3025)
!3025 = !{null, !3022}
!3026 = !DISubprogram(name: "size", linkageName: "_ZNK16TF_ManagedBuffer4sizeEv", scope: !3009, file: !2386, line: 60, type: !3027, scopeLine: 60, containingType: !3009, virtualIndex: 2, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!3027 = !DISubroutineType(types: !3028)
!3028 = !{!19, !3029}
!3029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3030, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3030 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3009)
!3031 = !DISubprogram(name: "root_buffer", linkageName: "_ZN16TF_ManagedBuffer11root_bufferEv", scope: !3009, file: !2386, line: 61, type: !3032, scopeLine: 61, containingType: !3009, virtualIndex: 3, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!3032 = !DISubroutineType(types: !3033)
!3033 = !{!1911, !3022}
!3034 = !DISubprogram(name: "FillAllocationDescription", linkageName: "_ZNK16TF_ManagedBuffer25FillAllocationDescriptionEPN10tensorflow21AllocationDescriptionE", scope: !3009, file: !2386, line: 62, type: !3035, scopeLine: 62, containingType: !3009, virtualIndex: 4, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!3035 = !DISubroutineType(types: !3036)
!3036 = !{null, !3029, !3037}
!3037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3038, size: 64)
!3038 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "AllocationDescription", scope: !4, file: !1907, line: 48, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN10tensorflow21AllocationDescriptionE")
!3039 = !DISubprogram(name: "OwnsMemory", linkageName: "_ZNK16TF_ManagedBuffer10OwnsMemoryEv", scope: !3009, file: !2386, line: 69, type: !3040, scopeLine: 69, containingType: !3009, virtualIndex: 6, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!3040 = !DISubroutineType(types: !3041)
!3041 = !{!53, !3029}
!3042 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "RefCounted", scope: !3044, file: !3043, line: 11, size: 128, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !3045, vtableHolder: !3042, identifier: "_ZTSN10tensorflow4core10RefCountedE")
!3043 = !DIFile(filename: "tensorflow/core/framework/refcountstub.h", directory: "/home/mushfiqur/Desktop/Github/tensorflow")
!3044 = !DINamespace(name: "core", scope: !4)
!3045 = !{!3046, !3047, !3201, !3205, !3206, !3211, !3214}
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "_vptr$RefCounted", scope: !3043, file: !3043, baseType: !12, size: 64, flags: DIFlagArtificial)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count_", scope: !3042, file: !3043, line: 39, baseType: !3048, size: 64, offset: 64)
!3048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "atomic<unsigned long>", scope: !31, file: !3049, line: 891, size: 64, flags: DIFlagTypePassByReference, elements: !3050, templateParams: !3199, identifier: "_ZTSSt6atomicImE")
!3049 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/atomic", directory: "")
!3050 = !{!3051, !3175, !3176, !3180, !3181, !3186, !3190, !3195}
!3051 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !3048, baseType: !3052, extraData: i32 0)
!3052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__atomic_base<unsigned long>", scope: !31, file: !214, line: 324, size: 64, flags: DIFlagTypePassByReference, elements: !3053, templateParams: !3173, identifier: "_ZTSSt13__atomic_baseImE")
!3053 = !{!3054, !3056, !3058, !3062, !3063, !3068, !3072, !3077, !3080, !3084, !3089, !3092, !3095, !3098, !3101, !3102, !3103, !3106, !3109, !3110, !3111, !3112, !3113, !3114, !3115, !3116, !3117, !3118, !3119, !3120, !3121, !3124, !3127, !3131, !3134, !3137, !3140, !3143, !3146, !3150, !3153, !3156, !3159, !3160, !3161, !3162, !3163, !3164, !3165, !3166, !3167, !3168, !3169, !3170, !3171, !3172}
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "_S_alignment", scope: !3052, file: !214, line: 332, baseType: !3055, flags: DIFlagPrivate | DIFlagStaticMember, extraData: i32 8)
!3055 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "_M_i", scope: !3052, file: !214, line: 335, baseType: !3057, size: 64, align: 64, flags: DIFlagPrivate)
!3057 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_type", scope: !3052, file: !214, line: 330, baseType: !21)
!3058 = !DISubprogram(name: "__atomic_base", scope: !3052, file: !214, line: 338, type: !3059, scopeLine: 338, flags: DIFlagPrototyped, spFlags: 0)
!3059 = !DISubroutineType(types: !3060)
!3060 = !{null, !3061}
!3061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3052, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3062 = !DISubprogram(name: "~__atomic_base", scope: !3052, file: !214, line: 339, type: !3059, scopeLine: 339, flags: DIFlagPrototyped, spFlags: 0)
!3063 = !DISubprogram(name: "__atomic_base", scope: !3052, file: !214, line: 340, type: !3064, scopeLine: 340, flags: DIFlagPrototyped, spFlags: DISPFlagDeleted)
!3064 = !DISubroutineType(types: !3065)
!3065 = !{null, !3061, !3066}
!3066 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3067, size: 64)
!3067 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3052)
!3068 = !DISubprogram(name: "operator=", linkageName: "_ZNSt13__atomic_baseImEaSERKS0_", scope: !3052, file: !214, line: 341, type: !3069, scopeLine: 341, flags: DIFlagPrototyped, spFlags: DISPFlagDeleted)
!3069 = !DISubroutineType(types: !3070)
!3070 = !{!3071, !3061, !3066}
!3071 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3052, size: 64)
!3072 = !DISubprogram(name: "operator=", linkageName: "_ZNVSt13__atomic_baseImEaSERKS0_", scope: !3052, file: !214, line: 342, type: !3073, scopeLine: 342, flags: DIFlagPrototyped, spFlags: DISPFlagDeleted)
!3073 = !DISubroutineType(types: !3074)
!3074 = !{!3071, !3075, !3066}
!3075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3076, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3076 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !3052)
!3077 = !DISubprogram(name: "__atomic_base", scope: !3052, file: !214, line: 345, type: !3078, scopeLine: 345, flags: DIFlagPrototyped, spFlags: 0)
!3078 = !DISubroutineType(types: !3079)
!3079 = !{null, !3061, !3057}
!3080 = !DISubprogram(name: "operator unsigned long", linkageName: "_ZNKSt13__atomic_baseImEcvmEv", scope: !3052, file: !214, line: 347, type: !3081, scopeLine: 347, flags: DIFlagPrototyped, spFlags: 0)
!3081 = !DISubroutineType(types: !3082)
!3082 = !{!3057, !3083}
!3083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3067, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3084 = !DISubprogram(name: "operator unsigned long", linkageName: "_ZNVKSt13__atomic_baseImEcvmEv", scope: !3052, file: !214, line: 350, type: !3085, scopeLine: 350, flags: DIFlagPrototyped, spFlags: 0)
!3085 = !DISubroutineType(types: !3086)
!3086 = !{!3057, !3087}
!3087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3088, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3088 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3076)
!3089 = !DISubprogram(name: "operator=", linkageName: "_ZNSt13__atomic_baseImEaSEm", scope: !3052, file: !214, line: 354, type: !3090, scopeLine: 354, flags: DIFlagPrototyped, spFlags: 0)
!3090 = !DISubroutineType(types: !3091)
!3091 = !{!3057, !3061, !3057}
!3092 = !DISubprogram(name: "operator=", linkageName: "_ZNVSt13__atomic_baseImEaSEm", scope: !3052, file: !214, line: 361, type: !3093, scopeLine: 361, flags: DIFlagPrototyped, spFlags: 0)
!3093 = !DISubroutineType(types: !3094)
!3094 = !{!3057, !3075, !3057}
!3095 = !DISubprogram(name: "operator++", linkageName: "_ZNSt13__atomic_baseImEppEi", scope: !3052, file: !214, line: 368, type: !3096, scopeLine: 368, flags: DIFlagPrototyped, spFlags: 0)
!3096 = !DISubroutineType(types: !3097)
!3097 = !{!3057, !3061, !16}
!3098 = !DISubprogram(name: "operator++", linkageName: "_ZNVSt13__atomic_baseImEppEi", scope: !3052, file: !214, line: 372, type: !3099, scopeLine: 372, flags: DIFlagPrototyped, spFlags: 0)
!3099 = !DISubroutineType(types: !3100)
!3100 = !{!3057, !3075, !16}
!3101 = !DISubprogram(name: "operator--", linkageName: "_ZNSt13__atomic_baseImEmmEi", scope: !3052, file: !214, line: 376, type: !3096, scopeLine: 376, flags: DIFlagPrototyped, spFlags: 0)
!3102 = !DISubprogram(name: "operator--", linkageName: "_ZNVSt13__atomic_baseImEmmEi", scope: !3052, file: !214, line: 380, type: !3099, scopeLine: 380, flags: DIFlagPrototyped, spFlags: 0)
!3103 = !DISubprogram(name: "operator++", linkageName: "_ZNSt13__atomic_baseImEppEv", scope: !3052, file: !214, line: 384, type: !3104, scopeLine: 384, flags: DIFlagPrototyped, spFlags: 0)
!3104 = !DISubroutineType(types: !3105)
!3105 = !{!3057, !3061}
!3106 = !DISubprogram(name: "operator++", linkageName: "_ZNVSt13__atomic_baseImEppEv", scope: !3052, file: !214, line: 388, type: !3107, scopeLine: 388, flags: DIFlagPrototyped, spFlags: 0)
!3107 = !DISubroutineType(types: !3108)
!3108 = !{!3057, !3075}
!3109 = !DISubprogram(name: "operator--", linkageName: "_ZNSt13__atomic_baseImEmmEv", scope: !3052, file: !214, line: 392, type: !3104, scopeLine: 392, flags: DIFlagPrototyped, spFlags: 0)
!3110 = !DISubprogram(name: "operator--", linkageName: "_ZNVSt13__atomic_baseImEmmEv", scope: !3052, file: !214, line: 396, type: !3107, scopeLine: 396, flags: DIFlagPrototyped, spFlags: 0)
!3111 = !DISubprogram(name: "operator+=", linkageName: "_ZNSt13__atomic_baseImEpLEm", scope: !3052, file: !214, line: 400, type: !3090, scopeLine: 400, flags: DIFlagPrototyped, spFlags: 0)
!3112 = !DISubprogram(name: "operator+=", linkageName: "_ZNVSt13__atomic_baseImEpLEm", scope: !3052, file: !214, line: 404, type: !3093, scopeLine: 404, flags: DIFlagPrototyped, spFlags: 0)
!3113 = !DISubprogram(name: "operator-=", linkageName: "_ZNSt13__atomic_baseImEmIEm", scope: !3052, file: !214, line: 408, type: !3090, scopeLine: 408, flags: DIFlagPrototyped, spFlags: 0)
!3114 = !DISubprogram(name: "operator-=", linkageName: "_ZNVSt13__atomic_baseImEmIEm", scope: !3052, file: !214, line: 412, type: !3093, scopeLine: 412, flags: DIFlagPrototyped, spFlags: 0)
!3115 = !DISubprogram(name: "operator&=", linkageName: "_ZNSt13__atomic_baseImEaNEm", scope: !3052, file: !214, line: 416, type: !3090, scopeLine: 416, flags: DIFlagPrototyped, spFlags: 0)
!3116 = !DISubprogram(name: "operator&=", linkageName: "_ZNVSt13__atomic_baseImEaNEm", scope: !3052, file: !214, line: 420, type: !3093, scopeLine: 420, flags: DIFlagPrototyped, spFlags: 0)
!3117 = !DISubprogram(name: "operator|=", linkageName: "_ZNSt13__atomic_baseImEoREm", scope: !3052, file: !214, line: 424, type: !3090, scopeLine: 424, flags: DIFlagPrototyped, spFlags: 0)
!3118 = !DISubprogram(name: "operator|=", linkageName: "_ZNVSt13__atomic_baseImEoREm", scope: !3052, file: !214, line: 428, type: !3093, scopeLine: 428, flags: DIFlagPrototyped, spFlags: 0)
!3119 = !DISubprogram(name: "operator^=", linkageName: "_ZNSt13__atomic_baseImEeOEm", scope: !3052, file: !214, line: 432, type: !3090, scopeLine: 432, flags: DIFlagPrototyped, spFlags: 0)
!3120 = !DISubprogram(name: "operator^=", linkageName: "_ZNVSt13__atomic_baseImEeOEm", scope: !3052, file: !214, line: 436, type: !3093, scopeLine: 436, flags: DIFlagPrototyped, spFlags: 0)
!3121 = !DISubprogram(name: "is_lock_free", linkageName: "_ZNKSt13__atomic_baseImE12is_lock_freeEv", scope: !3052, file: !214, line: 440, type: !3122, scopeLine: 440, flags: DIFlagPrototyped, spFlags: 0)
!3122 = !DISubroutineType(types: !3123)
!3123 = !{!53, !3083}
!3124 = !DISubprogram(name: "is_lock_free", linkageName: "_ZNVKSt13__atomic_baseImE12is_lock_freeEv", scope: !3052, file: !214, line: 448, type: !3125, scopeLine: 448, flags: DIFlagPrototyped, spFlags: 0)
!3125 = !DISubroutineType(types: !3126)
!3126 = !{!53, !3087}
!3127 = !DISubprogram(name: "store", linkageName: "_ZNSt13__atomic_baseImE5storeEmSt12memory_order", scope: !3052, file: !214, line: 456, type: !3128, scopeLine: 456, flags: DIFlagPrototyped, spFlags: 0)
!3128 = !DISubroutineType(types: !3129)
!3129 = !{null, !3061, !3057, !3130}
!3130 = !DIDerivedType(tag: DW_TAG_typedef, name: "memory_order", scope: !31, file: !214, line: 86, baseType: !213)
!3131 = !DISubprogram(name: "store", linkageName: "_ZNVSt13__atomic_baseImE5storeEmSt12memory_order", scope: !3052, file: !214, line: 468, type: !3132, scopeLine: 468, flags: DIFlagPrototyped, spFlags: 0)
!3132 = !DISubroutineType(types: !3133)
!3133 = !{null, !3075, !3057, !3130}
!3134 = !DISubprogram(name: "load", linkageName: "_ZNKSt13__atomic_baseImE4loadESt12memory_order", scope: !3052, file: !214, line: 481, type: !3135, scopeLine: 481, flags: DIFlagPrototyped, spFlags: 0)
!3135 = !DISubroutineType(types: !3136)
!3136 = !{!3057, !3083, !3130}
!3137 = !DISubprogram(name: "load", linkageName: "_ZNVKSt13__atomic_baseImE4loadESt12memory_order", scope: !3052, file: !214, line: 492, type: !3138, scopeLine: 492, flags: DIFlagPrototyped, spFlags: 0)
!3138 = !DISubroutineType(types: !3139)
!3139 = !{!3057, !3087, !3130}
!3140 = !DISubprogram(name: "exchange", linkageName: "_ZNSt13__atomic_baseImE8exchangeEmSt12memory_order", scope: !3052, file: !214, line: 503, type: !3141, scopeLine: 503, flags: DIFlagPrototyped, spFlags: 0)
!3141 = !DISubroutineType(types: !3142)
!3142 = !{!3057, !3061, !3057, !3130}
!3143 = !DISubprogram(name: "exchange", linkageName: "_ZNVSt13__atomic_baseImE8exchangeEmSt12memory_order", scope: !3052, file: !214, line: 511, type: !3144, scopeLine: 511, flags: DIFlagPrototyped, spFlags: 0)
!3144 = !DISubroutineType(types: !3145)
!3145 = !{!3057, !3075, !3057, !3130}
!3146 = !DISubprogram(name: "compare_exchange_weak", linkageName: "_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_", scope: !3052, file: !214, line: 518, type: !3147, scopeLine: 518, flags: DIFlagPrototyped, spFlags: 0)
!3147 = !DISubroutineType(types: !3148)
!3148 = !{!53, !3061, !3149, !3057, !3130, !3130}
!3149 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3057, size: 64)
!3150 = !DISubprogram(name: "compare_exchange_weak", linkageName: "_ZNVSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_", scope: !3052, file: !214, line: 528, type: !3151, scopeLine: 528, flags: DIFlagPrototyped, spFlags: 0)
!3151 = !DISubroutineType(types: !3152)
!3152 = !{!53, !3075, !3149, !3057, !3130, !3130}
!3153 = !DISubprogram(name: "compare_exchange_weak", linkageName: "_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_order", scope: !3052, file: !214, line: 539, type: !3154, scopeLine: 539, flags: DIFlagPrototyped, spFlags: 0)
!3154 = !DISubroutineType(types: !3155)
!3155 = !{!53, !3061, !3149, !3057, !3130}
!3156 = !DISubprogram(name: "compare_exchange_weak", linkageName: "_ZNVSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_order", scope: !3052, file: !214, line: 547, type: !3157, scopeLine: 547, flags: DIFlagPrototyped, spFlags: 0)
!3157 = !DISubroutineType(types: !3158)
!3158 = !{!53, !3075, !3149, !3057, !3130}
!3159 = !DISubprogram(name: "compare_exchange_strong", linkageName: "_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_", scope: !3052, file: !214, line: 555, type: !3147, scopeLine: 555, flags: DIFlagPrototyped, spFlags: 0)
!3160 = !DISubprogram(name: "compare_exchange_strong", linkageName: "_ZNVSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_", scope: !3052, file: !214, line: 565, type: !3151, scopeLine: 565, flags: DIFlagPrototyped, spFlags: 0)
!3161 = !DISubprogram(name: "compare_exchange_strong", linkageName: "_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_order", scope: !3052, file: !214, line: 576, type: !3154, scopeLine: 576, flags: DIFlagPrototyped, spFlags: 0)
!3162 = !DISubprogram(name: "compare_exchange_strong", linkageName: "_ZNVSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_order", scope: !3052, file: !214, line: 584, type: !3157, scopeLine: 584, flags: DIFlagPrototyped, spFlags: 0)
!3163 = !DISubprogram(name: "fetch_add", linkageName: "_ZNSt13__atomic_baseImE9fetch_addEmSt12memory_order", scope: !3052, file: !214, line: 616, type: !3141, scopeLine: 616, flags: DIFlagPrototyped, spFlags: 0)
!3164 = !DISubprogram(name: "fetch_add", linkageName: "_ZNVSt13__atomic_baseImE9fetch_addEmSt12memory_order", scope: !3052, file: !214, line: 621, type: !3144, scopeLine: 621, flags: DIFlagPrototyped, spFlags: 0)
!3165 = !DISubprogram(name: "fetch_sub", linkageName: "_ZNSt13__atomic_baseImE9fetch_subEmSt12memory_order", scope: !3052, file: !214, line: 626, type: !3141, scopeLine: 626, flags: DIFlagPrototyped, spFlags: 0)
!3166 = !DISubprogram(name: "fetch_sub", linkageName: "_ZNVSt13__atomic_baseImE9fetch_subEmSt12memory_order", scope: !3052, file: !214, line: 631, type: !3144, scopeLine: 631, flags: DIFlagPrototyped, spFlags: 0)
!3167 = !DISubprogram(name: "fetch_and", linkageName: "_ZNSt13__atomic_baseImE9fetch_andEmSt12memory_order", scope: !3052, file: !214, line: 636, type: !3141, scopeLine: 636, flags: DIFlagPrototyped, spFlags: 0)
!3168 = !DISubprogram(name: "fetch_and", linkageName: "_ZNVSt13__atomic_baseImE9fetch_andEmSt12memory_order", scope: !3052, file: !214, line: 641, type: !3144, scopeLine: 641, flags: DIFlagPrototyped, spFlags: 0)
!3169 = !DISubprogram(name: "fetch_or", linkageName: "_ZNSt13__atomic_baseImE8fetch_orEmSt12memory_order", scope: !3052, file: !214, line: 646, type: !3141, scopeLine: 646, flags: DIFlagPrototyped, spFlags: 0)
!3170 = !DISubprogram(name: "fetch_or", linkageName: "_ZNVSt13__atomic_baseImE8fetch_orEmSt12memory_order", scope: !3052, file: !214, line: 651, type: !3144, scopeLine: 651, flags: DIFlagPrototyped, spFlags: 0)
!3171 = !DISubprogram(name: "fetch_xor", linkageName: "_ZNSt13__atomic_baseImE9fetch_xorEmSt12memory_order", scope: !3052, file: !214, line: 656, type: !3141, scopeLine: 656, flags: DIFlagPrototyped, spFlags: 0)
!3172 = !DISubprogram(name: "fetch_xor", linkageName: "_ZNVSt13__atomic_baseImE9fetch_xorEmSt12memory_order", scope: !3052, file: !214, line: 661, type: !3144, scopeLine: 661, flags: DIFlagPrototyped, spFlags: 0)
!3173 = !{!3174}
!3174 = !DITemplateTypeParameter(name: "_ITp", type: !21)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "is_always_lock_free", scope: !3048, file: !3049, line: 908, baseType: !506, flags: DIFlagStaticMember, extraData: i1 true)
!3176 = !DISubprogram(name: "atomic", scope: !3048, file: !3049, line: 896, type: !3177, scopeLine: 896, flags: DIFlagPrototyped, spFlags: 0)
!3177 = !DISubroutineType(types: !3178)
!3178 = !{null, !3179}
!3179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3048, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3180 = !DISubprogram(name: "~atomic", scope: !3048, file: !3049, line: 897, type: !3177, scopeLine: 897, flags: DIFlagPrototyped, spFlags: 0)
!3181 = !DISubprogram(name: "atomic", scope: !3048, file: !3049, line: 898, type: !3182, scopeLine: 898, flags: DIFlagPrototyped, spFlags: DISPFlagDeleted)
!3182 = !DISubroutineType(types: !3183)
!3183 = !{null, !3179, !3184}
!3184 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3185, size: 64)
!3185 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3048)
!3186 = !DISubprogram(name: "operator=", linkageName: "_ZNSt6atomicImEaSERKS0_", scope: !3048, file: !3049, line: 899, type: !3187, scopeLine: 899, flags: DIFlagPrototyped, spFlags: DISPFlagDeleted)
!3187 = !DISubroutineType(types: !3188)
!3188 = !{!3189, !3179, !3184}
!3189 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3048, size: 64)
!3190 = !DISubprogram(name: "operator=", linkageName: "_ZNVSt6atomicImEaSERKS0_", scope: !3048, file: !3049, line: 900, type: !3191, scopeLine: 900, flags: DIFlagPrototyped, spFlags: DISPFlagDeleted)
!3191 = !DISubroutineType(types: !3192)
!3192 = !{!3189, !3193, !3184}
!3193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3194, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3194 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !3048)
!3195 = !DISubprogram(name: "atomic", scope: !3048, file: !3049, line: 902, type: !3196, scopeLine: 902, flags: DIFlagPrototyped, spFlags: 0)
!3196 = !DISubroutineType(types: !3197)
!3197 = !{null, !3179, !3198}
!3198 = !DIDerivedType(tag: DW_TAG_typedef, name: "__integral_type", scope: !3048, file: !3049, line: 893, baseType: !21)
!3199 = !{!3200}
!3200 = !DITemplateTypeParameter(name: "_Tp", type: !21)
!3201 = !DISubprogram(name: "RefCounted", scope: !3042, file: !3043, line: 13, type: !3202, scopeLine: 13, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!3202 = !DISubroutineType(types: !3203)
!3203 = !{null, !3204}
!3204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3042, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3205 = !DISubprogram(name: "~RefCounted", scope: !3042, file: !3043, line: 14, type: !3202, scopeLine: 14, containingType: !3042, virtualIndex: 0, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!3206 = !DISubprogram(name: "Ref", linkageName: "_ZNK10tensorflow4core10RefCounted3RefEv", scope: !3042, file: !3043, line: 17, type: !3207, scopeLine: 17, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!3207 = !DISubroutineType(types: !3208)
!3208 = !{null, !3209}
!3209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3210, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3210 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3042)
!3211 = !DISubprogram(name: "Unref", linkageName: "_ZNK10tensorflow4core10RefCounted5UnrefEv", scope: !3042, file: !3043, line: 23, type: !3212, scopeLine: 23, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!3212 = !DISubroutineType(types: !3213)
!3213 = !{!53, !3209}
!3214 = !DISubprogram(name: "RefCount", linkageName: "_ZNK10tensorflow4core10RefCounted8RefCountEv", scope: !3042, file: !3043, line: 33, type: !3215, scopeLine: 33, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!3215 = !DISubroutineType(types: !3216)
!3216 = !{!16, !3209}
!3217 = !DILocation(line: 101, column: 21, scope: !2987)
!3218 = !DILocation(line: 102, column: 7, scope: !2987)
!3219 = !DILocation(line: 102, column: 28, scope: !2987)
!3220 = !DILocation(line: 102, column: 34, scope: !2987)
!3221 = !DILocation(line: 103, column: 28, scope: !2987)
!3222 = !DILocation(line: 102, column: 11, scope: !2987)
!3223 = !DILocation(line: 104, column: 23, scope: !2987)
!3224 = !DILocation(line: 104, column: 28, scope: !2987)
!3225 = !DILocation(line: 104, column: 35, scope: !2987)
!3226 = !DILocation(line: 104, column: 41, scope: !2987)
!3227 = !DILocation(line: 104, column: 51, scope: !2987)
!3228 = !DILocation(line: 104, column: 10, scope: !2987)
!3229 = !DILocation(line: 104, column: 3, scope: !2987)
!3230 = !DILocation(line: 105, column: 1, scope: !2987)
!3231 = distinct !DISubprogram(name: "TF_ManagedBuffer", linkageName: "_ZN16TF_ManagedBufferC2EPvmPFvS0_mS0_ES0_b", scope: !3009, file: !2386, line: 47, type: !3020, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !3019, retainedNodes: !212)
!3232 = !DILocalVariable(name: "this", arg: 1, scope: !3231, type: !3008, flags: DIFlagArtificial | DIFlagObjectPointer)
!3233 = !DILocation(line: 0, scope: !3231)
!3234 = !DILocalVariable(name: "data", arg: 2, scope: !3231, file: !2386, line: 47, type: !38)
!3235 = !DILocation(line: 47, column: 26, scope: !3231)
!3236 = !DILocalVariable(name: "len", arg: 3, scope: !3231, file: !2386, line: 47, type: !19)
!3237 = !DILocation(line: 47, column: 39, scope: !3231)
!3238 = !DILocalVariable(name: "deallocator", arg: 4, scope: !3231, file: !2386, line: 48, type: !3015)
!3239 = !DILocation(line: 48, column: 27, scope: !3231)
!3240 = !DILocalVariable(name: "deallocator_arg", arg: 5, scope: !3231, file: !2386, line: 49, type: !38)
!3241 = !DILocation(line: 49, column: 26, scope: !3231)
!3242 = !DILocalVariable(name: "owns_memory", arg: 6, scope: !3231, file: !2386, line: 49, type: !53)
!3243 = !DILocation(line: 49, column: 48, scope: !3231)
!3244 = !DILocation(line: 54, column: 35, scope: !3231)
!3245 = !DILocation(line: 50, column: 22, scope: !3231)
!3246 = !DILocation(line: 50, column: 9, scope: !3231)
!3247 = !DILocation(line: 51, column: 9, scope: !3231)
!3248 = !DILocation(line: 51, column: 14, scope: !3231)
!3249 = !DILocation(line: 52, column: 9, scope: !3231)
!3250 = !DILocation(line: 52, column: 22, scope: !3231)
!3251 = !DILocation(line: 53, column: 9, scope: !3231)
!3252 = !DILocation(line: 53, column: 26, scope: !3231)
!3253 = !DILocation(line: 54, column: 9, scope: !3231)
!3254 = !DILocation(line: 54, column: 22, scope: !3231)
!3255 = !DILocation(line: 54, column: 36, scope: !3231)
!3256 = distinct !DISubprogram(name: "CreateTensor", linkageName: "_ZN12_GLOBAL__N_112CreateTensorEP16TF_ManagedBuffer11TF_DataTypePKlim", scope: !3257, file: !2180, line: 79, type: !3258, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !89, retainedNodes: !212)
!3257 = !DINamespace(scope: null)
!3258 = !DISubroutineType(types: !3259)
!3259 = !{!2990, !3008, !225, !2992, !16, !19}
!3260 = !DILocalVariable(name: "buf", arg: 1, scope: !3256, file: !2180, line: 79, type: !3008)
!3261 = !DILocation(line: 79, column: 43, scope: !3256)
!3262 = !DILocalVariable(name: "dtype", arg: 2, scope: !3256, file: !2180, line: 79, type: !225)
!3263 = !DILocation(line: 79, column: 60, scope: !3256)
!3264 = !DILocalVariable(name: "dims", arg: 3, scope: !3256, file: !2180, line: 80, type: !2992)
!3265 = !DILocation(line: 80, column: 40, scope: !3256)
!3266 = !DILocalVariable(name: "num_dims", arg: 4, scope: !3256, file: !2180, line: 80, type: !16)
!3267 = !DILocation(line: 80, column: 50, scope: !3256)
!3268 = !DILocalVariable(name: "len", arg: 5, scope: !3256, file: !2180, line: 80, type: !19)
!3269 = !DILocation(line: 80, column: 67, scope: !3256)
!3270 = !DILocalVariable(name: "dimvec", scope: !3256, file: !2180, line: 81, type: !287)
!3271 = !DILocation(line: 81, column: 24, scope: !3256)
!3272 = !DILocation(line: 81, column: 31, scope: !3256)
!3273 = !DILocalVariable(name: "i", scope: !3274, file: !2180, line: 82, type: !16)
!3274 = distinct !DILexicalBlock(scope: !3256, file: !2180, line: 82, column: 3)
!3275 = !DILocation(line: 82, column: 12, scope: !3274)
!3276 = !DILocation(line: 82, column: 8, scope: !3274)
!3277 = !DILocation(line: 82, column: 19, scope: !3278)
!3278 = distinct !DILexicalBlock(scope: !3274, file: !2180, line: 82, column: 3)
!3279 = !DILocation(line: 82, column: 23, scope: !3278)
!3280 = !DILocation(line: 82, column: 21, scope: !3278)
!3281 = !DILocation(line: 82, column: 3, scope: !3274)
!3282 = !DILocation(line: 83, column: 38, scope: !3283)
!3283 = distinct !DILexicalBlock(scope: !3278, file: !2180, line: 82, column: 38)
!3284 = !DILocation(line: 83, column: 43, scope: !3283)
!3285 = !DILocation(line: 83, column: 12, scope: !3283)
!3286 = !DILocation(line: 83, column: 5, scope: !3283)
!3287 = !DILocation(line: 83, column: 15, scope: !3283)
!3288 = !DILocation(line: 84, column: 3, scope: !3283)
!3289 = !DILocation(line: 82, column: 33, scope: !3278)
!3290 = !DILocation(line: 82, column: 3, scope: !3278)
!3291 = distinct !{!3291, !3281, !3292}
!3292 = !DILocation(line: 84, column: 3, scope: !3274)
!3293 = !DILocation(line: 94, column: 1, scope: !3256)
!3294 = !DILocalVariable(name: "ret", scope: !3256, file: !2180, line: 86, type: !1906)
!3295 = !DILocation(line: 86, column: 10, scope: !3256)
!3296 = !DILocation(line: 86, column: 48, scope: !3256)
!3297 = !DILocation(line: 87, column: 14, scope: !3256)
!3298 = !DILocation(line: 87, column: 47, scope: !3256)
!3299 = !DILocation(line: 88, column: 3, scope: !3256)
!3300 = !DILocation(line: 88, column: 8, scope: !3256)
!3301 = !DILocalVariable(name: "elem_size", scope: !3256, file: !2180, line: 89, type: !19)
!3302 = !DILocation(line: 89, column: 10, scope: !3256)
!3303 = !DILocation(line: 89, column: 38, scope: !3256)
!3304 = !DILocation(line: 89, column: 22, scope: !3256)
!3305 = !DILocation(line: 90, column: 7, scope: !3306)
!3306 = distinct !DILexicalBlock(scope: !3256, file: !2180, line: 90, column: 7)
!3307 = !DILocation(line: 90, column: 17, scope: !3306)
!3308 = !DILocation(line: 90, column: 21, scope: !3306)
!3309 = !DILocation(line: 90, column: 24, scope: !3306)
!3310 = !DILocation(line: 90, column: 31, scope: !3306)
!3311 = !DILocation(line: 90, column: 47, scope: !3306)
!3312 = !DILocation(line: 90, column: 41, scope: !3306)
!3313 = !DILocation(line: 90, column: 28, scope: !3306)
!3314 = !DILocation(line: 90, column: 7, scope: !3256)
!3315 = !DILocation(line: 91, column: 5, scope: !3316)
!3316 = distinct !DILexicalBlock(scope: !3306, file: !2180, line: 90, column: 63)
!3317 = !DILocation(line: 93, column: 10, scope: !3256)
!3318 = !DILocation(line: 93, column: 23, scope: !3256)
!3319 = !DILocation(line: 93, column: 24, scope: !3256)
!3320 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "TensorInterface", scope: !4, file: !2386, line: 98, size: 384, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !3321, vtableHolder: !2390, identifier: "_ZTSN10tensorflow15TensorInterfaceE")
!3321 = !{!3322, !3323, !3324, !3328, !3331, !3332, !3333, !3338, !3341, !3344, !3347, !3350, !3353, !3356, !3357, !3360, !3363, !3366, !3370, !3375}
!3322 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !3320, baseType: !2390, flags: DIFlagPublic, extraData: i32 0)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "tensor_", scope: !3320, file: !2386, line: 125, baseType: !1906, size: 320, offset: 64)
!3324 = !DISubprogram(name: "TensorInterface", scope: !3320, file: !2386, line: 100, type: !3325, scopeLine: 100, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!3325 = !DISubroutineType(types: !3326)
!3326 = !{null, !3327}
!3327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3320, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3328 = !DISubprogram(name: "TensorInterface", scope: !3320, file: !2386, line: 101, type: !3329, scopeLine: 101, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!3329 = !DISubroutineType(types: !3330)
!3330 = !{null, !3327, !1906}
!3331 = !DISubprogram(name: "~TensorInterface", scope: !3320, file: !2386, line: 102, type: !3325, scopeLine: 102, containingType: !3320, virtualIndex: 0, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!3332 = !DISubprogram(name: "Release", linkageName: "_ZN10tensorflow15TensorInterface7ReleaseEv", scope: !3320, file: !2386, line: 104, type: !3325, scopeLine: 104, containingType: !3320, virtualIndex: 0, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!3333 = !DISubprogram(name: "Type", linkageName: "_ZNK10tensorflow15TensorInterface4TypeEv", scope: !3320, file: !2386, line: 106, type: !3334, scopeLine: 106, containingType: !3320, virtualIndex: 1, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!3334 = !DISubroutineType(types: !3335)
!3335 = !{!100, !3336}
!3336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3337, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3337 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3320)
!3338 = !DISubprogram(name: "NumDims", linkageName: "_ZNK10tensorflow15TensorInterface7NumDimsEv", scope: !3320, file: !2386, line: 107, type: !3339, scopeLine: 107, containingType: !3320, virtualIndex: 2, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!3339 = !DISubroutineType(types: !3340)
!3340 = !{!16, !3336}
!3341 = !DISubprogram(name: "Dim", linkageName: "_ZNK10tensorflow15TensorInterface3DimEi", scope: !3320, file: !2386, line: 108, type: !3342, scopeLine: 108, containingType: !3320, virtualIndex: 3, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!3342 = !DISubroutineType(types: !3343)
!3343 = !{!64, !3336, !16}
!3344 = !DISubprogram(name: "NumElements", linkageName: "_ZNK10tensorflow15TensorInterface11NumElementsEv", scope: !3320, file: !2386, line: 109, type: !3345, scopeLine: 109, containingType: !3320, virtualIndex: 4, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!3345 = !DISubroutineType(types: !3346)
!3346 = !{!64, !3336}
!3347 = !DISubprogram(name: "ByteSize", linkageName: "_ZNK10tensorflow15TensorInterface8ByteSizeEv", scope: !3320, file: !2386, line: 110, type: !3348, scopeLine: 110, containingType: !3320, virtualIndex: 5, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!3348 = !DISubroutineType(types: !3349)
!3349 = !{!19, !3336}
!3350 = !DISubprogram(name: "Data", linkageName: "_ZNK10tensorflow15TensorInterface4DataEv", scope: !3320, file: !2386, line: 111, type: !3351, scopeLine: 111, containingType: !3320, virtualIndex: 6, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!3351 = !DISubroutineType(types: !3352)
!3352 = !{!38, !3336}
!3353 = !DISubprogram(name: "IsAligned", linkageName: "_ZNK10tensorflow15TensorInterface9IsAlignedEv", scope: !3320, file: !2386, line: 112, type: !3354, scopeLine: 112, containingType: !3320, virtualIndex: 7, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!3354 = !DISubroutineType(types: !3355)
!3355 = !{!53, !3336}
!3356 = !DISubprogram(name: "CanMove", linkageName: "_ZNK10tensorflow15TensorInterface7CanMoveEv", scope: !3320, file: !2386, line: 113, type: !3354, scopeLine: 113, containingType: !3320, virtualIndex: 8, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!3357 = !DISubprogram(name: "SummarizeValue", linkageName: "_ZNK10tensorflow15TensorInterface14SummarizeValueB5cxx11Ev", scope: !3320, file: !2386, line: 114, type: !3358, scopeLine: 114, containingType: !3320, virtualIndex: 9, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!3358 = !DISubroutineType(types: !3359)
!3359 = !{!29, !3336}
!3360 = !DISubprogram(name: "SetShape", linkageName: "_ZN10tensorflow15TensorInterface8SetShapeEPKli", scope: !3320, file: !2386, line: 116, type: !3361, scopeLine: 116, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!3361 = !DISubroutineType(types: !3362)
!3362 = !{null, !3327, !2992, !16}
!3363 = !DISubprogram(name: "ToTensor", linkageName: "_ZNK10tensorflow15TensorInterface8ToTensorEPNS_6TensorE", scope: !3320, file: !2386, line: 117, type: !3364, scopeLine: 117, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!3364 = !DISubroutineType(types: !3365)
!3365 = !{!919, !3336, !1938}
!3366 = !DISubprogram(name: "BitcastFrom", linkageName: "_ZN10tensorflow15TensorInterface11BitcastFromERKS0_8DataTypePKli", scope: !3320, file: !2386, line: 118, type: !3367, scopeLine: 118, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!3367 = !DISubroutineType(types: !3368)
!3368 = !{!919, !3327, !3369, !100, !2992, !16}
!3369 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3337, size: 64)
!3370 = !DISubprogram(name: "FromProto", linkageName: "_ZN10tensorflow15TensorInterface9FromProtoERKNS_11TensorProtoE", scope: !3320, file: !2386, line: 120, type: !3371, scopeLine: 120, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!3371 = !DISubroutineType(types: !3372)
!3372 = !{!919, !3327, !3373}
!3373 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3374, size: 64)
!3374 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2134)
!3375 = !DISubprogram(name: "Tensor", linkageName: "_ZN10tensorflow15TensorInterface6TensorEv", scope: !3320, file: !2386, line: 122, type: !3376, scopeLine: 122, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!3376 = !DISubroutineType(types: !3377)
!3377 = !{!2120, !3327}
!3378 = !DILocation(line: 93, column: 56, scope: !3256)
!3379 = !DILocation(line: 93, column: 28, scope: !3256)
!3380 = !DILocation(line: 93, column: 3, scope: !3256)
!3381 = distinct !DISubprogram(name: "allocator", linkageName: "_ZNSaIlEC2Ev", scope: !312, file: !246, line: 156, type: !359, scopeLine: 156, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !358, retainedNodes: !212)
!3382 = !DILocalVariable(name: "this", arg: 1, scope: !3381, type: !3383, flags: DIFlagArtificial | DIFlagObjectPointer)
!3383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!3384 = !DILocation(line: 0, scope: !3381)
!3385 = !DILocation(line: 156, column: 36, scope: !3381)
!3386 = !DILocation(line: 156, column: 7, scope: !3381)
!3387 = !DILocation(line: 156, column: 38, scope: !3381)
!3388 = distinct !DISubprogram(name: "vector", linkageName: "_ZNSt6vectorIlSaIlEEC2EmRKS0_", scope: !287, file: !288, line: 510, type: !557, scopeLine: 512, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !556, retainedNodes: !212)
!3389 = !DILocalVariable(name: "this", arg: 1, scope: !3388, type: !3390, flags: DIFlagArtificial | DIFlagObjectPointer)
!3390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!3391 = !DILocation(line: 0, scope: !3388)
!3392 = !DILocalVariable(name: "__n", arg: 2, scope: !3388, file: !288, line: 510, type: !559)
!3393 = !DILocation(line: 510, column: 24, scope: !3388)
!3394 = !DILocalVariable(name: "__a", arg: 3, scope: !3388, file: !288, line: 510, type: !553)
!3395 = !DILocation(line: 510, column: 51, scope: !3388)
!3396 = !DILocation(line: 512, column: 7, scope: !3388)
!3397 = !DILocation(line: 511, column: 33, scope: !3388)
!3398 = !DILocation(line: 511, column: 38, scope: !3388)
!3399 = !DILocation(line: 511, column: 15, scope: !3388)
!3400 = !DILocation(line: 511, column: 44, scope: !3388)
!3401 = !DILocation(line: 511, column: 9, scope: !3388)
!3402 = !DILocation(line: 512, column: 31, scope: !3403)
!3403 = distinct !DILexicalBlock(scope: !3388, file: !288, line: 512, column: 7)
!3404 = !DILocation(line: 512, column: 9, scope: !3403)
!3405 = !DILocation(line: 512, column: 37, scope: !3388)
!3406 = !DILocation(line: 512, column: 37, scope: !3403)
!3407 = distinct !DISubprogram(name: "~allocator", linkageName: "_ZNSaIlED2Ev", scope: !312, file: !246, line: 174, type: !359, scopeLine: 174, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !371, retainedNodes: !212)
!3408 = !DILocalVariable(name: "this", arg: 1, scope: !3407, type: !3383, flags: DIFlagArtificial | DIFlagObjectPointer)
!3409 = !DILocation(line: 0, scope: !3407)
!3410 = !DILocation(line: 174, column: 39, scope: !3411)
!3411 = distinct !DILexicalBlock(scope: !3407, file: !246, line: 174, column: 37)
!3412 = !DILocation(line: 174, column: 39, scope: !3407)
!3413 = distinct !DISubprogram(name: "operator[]", linkageName: "_ZNSt6vectorIlSaIlEEixEm", scope: !287, file: !288, line: 1043, type: !785, scopeLine: 1044, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !784, retainedNodes: !212)
!3414 = !DILocalVariable(name: "this", arg: 1, scope: !3413, type: !3390, flags: DIFlagArtificial | DIFlagObjectPointer)
!3415 = !DILocation(line: 0, scope: !3413)
!3416 = !DILocalVariable(name: "__n", arg: 2, scope: !3413, file: !288, line: 1043, type: !559)
!3417 = !DILocation(line: 1043, column: 28, scope: !3413)
!3418 = !DILocation(line: 1046, column: 17, scope: !3413)
!3419 = !DILocation(line: 1046, column: 11, scope: !3413)
!3420 = !DILocation(line: 1046, column: 25, scope: !3413)
!3421 = !DILocation(line: 1046, column: 36, scope: !3413)
!3422 = !DILocation(line: 1046, column: 34, scope: !3413)
!3423 = !DILocation(line: 1046, column: 2, scope: !3413)
!3424 = distinct !DISubprogram(name: "TensorShape", linkageName: "_ZN10tensorflow11TensorShapeC2ERKSt6vectorIlSaIlEE", scope: !284, file: !101, line: 151, type: !903, scopeLine: 151, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !902, retainedNodes: !212)
!3425 = !DILocalVariable(name: "this", arg: 1, scope: !3424, type: !962, flags: DIFlagArtificial | DIFlagObjectPointer)
!3426 = !DILocation(line: 0, scope: !3424)
!3427 = !DILocalVariable(name: "dims", arg: 2, scope: !3424, file: !101, line: 151, type: !569)
!3428 = !DILocation(line: 151, column: 52, scope: !3424)
!3429 = !DILocation(line: 151, column: 60, scope: !3424)
!3430 = !DILocation(line: 151, column: 66, scope: !3424)
!3431 = !DILocation(line: 254, column: 12, scope: !3424)
!3432 = !DILocation(line: 151, column: 12, scope: !3424)
!3433 = !DILocation(line: 151, column: 73, scope: !3424)
!3434 = distinct !DISubprogram(name: "~TensorShape", linkageName: "_ZN10tensorflow11TensorShapeD2Ev", scope: !284, file: !101, line: 147, type: !896, scopeLine: 147, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !3435, retainedNodes: !212)
!3435 = !DISubprogram(name: "~TensorShape", scope: !284, type: !896, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!3436 = !DILocalVariable(name: "this", arg: 1, scope: !3434, type: !962, flags: DIFlagArtificial | DIFlagObjectPointer)
!3437 = !DILocation(line: 0, scope: !3434)
!3438 = !DILocation(line: 147, column: 7, scope: !3439)
!3439 = distinct !DILexicalBlock(scope: !3434, file: !101, line: 147, column: 7)
!3440 = !DILocation(line: 147, column: 7, scope: !3434)
!3441 = distinct !DISubprogram(name: "Unref", linkageName: "_ZNK10tensorflow4core10RefCounted5UnrefEv", scope: !3042, file: !3043, line: 23, type: !3212, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !3211, retainedNodes: !212)
!3442 = !DILocalVariable(name: "this", arg: 1, scope: !3441, type: !3443, flags: DIFlagArtificial | DIFlagObjectPointer)
!3443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3210, size: 64)
!3444 = !DILocation(line: 0, scope: !3441)
!3445 = !DILocation(line: 25, column: 9, scope: !3446)
!3446 = distinct !DILexicalBlock(scope: !3441, file: !3043, line: 25, column: 9)
!3447 = !DILocalVariable(name: "this", arg: 1, scope: !3448, type: !3449, flags: DIFlagArtificial | DIFlagObjectPointer)
!3448 = distinct !DISubprogram(name: "fetch_sub", linkageName: "_ZNSt13__atomic_baseImE9fetch_subEmSt12memory_order", scope: !3052, file: !214, line: 626, type: !3141, scopeLine: 628, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !3165, retainedNodes: !212)
!3449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3052, size: 64)
!3450 = !DILocation(line: 0, scope: !3448, inlinedAt: !3451)
!3451 = distinct !DILocation(line: 25, column: 20, scope: !3446)
!3452 = !DILocalVariable(name: "__i", arg: 2, scope: !3448, file: !214, line: 626, type: !3057)
!3453 = !DILocation(line: 626, column: 28, scope: !3448, inlinedAt: !3451)
!3454 = !DILocalVariable(name: "__m", arg: 3, scope: !3448, file: !214, line: 627, type: !3130)
!3455 = !DILocation(line: 627, column: 16, scope: !3448, inlinedAt: !3451)
!3456 = !DILocation(line: 628, column: 36, scope: !3448, inlinedAt: !3451)
!3457 = !DILocation(line: 628, column: 51, scope: !3448, inlinedAt: !3451)
!3458 = !DILocation(line: 628, column: 42, scope: !3448, inlinedAt: !3451)
!3459 = !DILocation(line: 628, column: 16, scope: !3448, inlinedAt: !3451)
!3460 = !DILocation(line: 25, column: 60, scope: !3446)
!3461 = !DILocation(line: 25, column: 9, scope: !3441)
!3462 = !DILocation(line: 26, column: 7, scope: !3463)
!3463 = distinct !DILexicalBlock(scope: !3446, file: !3043, line: 25, column: 66)
!3464 = !DILocation(line: 27, column: 7, scope: !3463)
!3465 = !DILocation(line: 29, column: 5, scope: !3441)
!3466 = !DILocation(line: 30, column: 3, scope: !3441)
!3467 = distinct !DISubprogram(name: "TF_DataTypeSize", linkageName: "_ZL15TF_DataTypeSize11TF_DataType", scope: !169, file: !169, line: 79, type: !3468, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !89, retainedNodes: !212)
!3468 = !DISubroutineType(types: !3469)
!3469 = !{!19, !225}
!3470 = !DILocalVariable(name: "dt", arg: 1, scope: !3467, file: !169, line: 79, type: !225)
!3471 = !DILocation(line: 79, column: 50, scope: !3467)
!3472 = !DILocation(line: 80, column: 11, scope: !3467)
!3473 = !DILocation(line: 80, column: 3, scope: !3467)
!3474 = !DILocation(line: 81, column: 27, scope: !3475)
!3475 = distinct !DILexicalBlock(scope: !3467, file: !169, line: 80, column: 15)
!3476 = !DILocation(line: 82, column: 27, scope: !3475)
!3477 = !DILocation(line: 83, column: 27, scope: !3475)
!3478 = !DILocation(line: 84, column: 27, scope: !3475)
!3479 = !DILocation(line: 85, column: 27, scope: !3475)
!3480 = !DILocation(line: 86, column: 27, scope: !3475)
!3481 = !DILocation(line: 87, column: 27, scope: !3475)
!3482 = !DILocation(line: 88, column: 27, scope: !3475)
!3483 = !DILocation(line: 89, column: 27, scope: !3475)
!3484 = !DILocation(line: 90, column: 27, scope: !3475)
!3485 = !DILocation(line: 91, column: 27, scope: !3475)
!3486 = !DILocation(line: 92, column: 27, scope: !3475)
!3487 = !DILocation(line: 93, column: 27, scope: !3475)
!3488 = !DILocation(line: 96, column: 27, scope: !3475)
!3489 = !DILocation(line: 97, column: 27, scope: !3475)
!3490 = !DILocation(line: 98, column: 27, scope: !3475)
!3491 = !DILocation(line: 99, column: 27, scope: !3475)
!3492 = !DILocation(line: 100, column: 27, scope: !3475)
!3493 = !DILocation(line: 103, column: 27, scope: !3475)
!3494 = !DILocation(line: 104, column: 27, scope: !3475)
!3495 = !DILocation(line: 110, column: 7, scope: !3475)
!3496 = !DILocation(line: 118, column: 7, scope: !3475)
!3497 = !DILocation(line: 125, column: 7, scope: !3475)
!3498 = !DILocation(line: 128, column: 7, scope: !3475)
!3499 = !DILocation(line: 130, column: 1, scope: !3467)
!3500 = distinct !DISubprogram(name: "NumElements", linkageName: "_ZNK10tensorflow6Tensor11NumElementsEv", scope: !1906, file: !1907, line: 305, type: !2102, scopeLine: 305, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !2101, retainedNodes: !212)
!3501 = !DILocalVariable(name: "this", arg: 1, scope: !3500, type: !3502, flags: DIFlagArtificial | DIFlagObjectPointer)
!3502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2082, size: 64)
!3503 = !DILocation(line: 0, scope: !3500)
!3504 = !DILocation(line: 305, column: 40, scope: !3500)
!3505 = !DILocation(line: 305, column: 48, scope: !3500)
!3506 = !DILocation(line: 305, column: 33, scope: !3500)
!3507 = distinct !DISubprogram(name: "move<tensorflow::Tensor &>", linkageName: "_ZSt4moveIRN10tensorflow6TensorEEONSt16remove_referenceIT_E4typeEOS4_", scope: !31, file: !3508, line: 104, type: !3509, scopeLine: 105, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, templateParams: !3514, retainedNodes: !212)
!3508 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/move.h", directory: "")
!3509 = !DISubroutineType(types: !3510)
!3510 = !{!3511, !2120}
!3511 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !3512, size: 64)
!3512 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !3513, file: !502, line: 1602, baseType: !1906)
!3513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "remove_reference<tensorflow::Tensor &>", scope: !31, file: !502, line: 1601, size: 8, flags: DIFlagTypePassByValue, elements: !212, templateParams: !3514, identifier: "_ZTSSt16remove_referenceIRN10tensorflow6TensorEE")
!3514 = !{!3515}
!3515 = !DITemplateTypeParameter(name: "_Tp", type: !2120)
!3516 = !DILocalVariable(name: "__t", arg: 1, scope: !3507, file: !3508, line: 104, type: !2120)
!3517 = !DILocation(line: 104, column: 16, scope: !3507)
!3518 = !DILocation(line: 105, column: 71, scope: !3507)
!3519 = !DILocation(line: 105, column: 7, scope: !3507)
!3520 = distinct !DISubprogram(name: "TensorInterface", linkageName: "_ZN10tensorflow15TensorInterfaceC2ENS_6TensorE", scope: !3320, file: !2386, line: 101, type: !3329, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !3328, retainedNodes: !212)
!3521 = !DILocalVariable(name: "this", arg: 1, scope: !3520, type: !3522, flags: DIFlagArtificial | DIFlagObjectPointer)
!3522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3320, size: 64)
!3523 = !DILocation(line: 0, scope: !3520)
!3524 = !DILocalVariable(name: "t", arg: 2, scope: !3520, file: !2386, line: 101, type: !1906)
!3525 = !DILocation(line: 101, column: 47, scope: !3520)
!3526 = !DILocation(line: 101, column: 74, scope: !3520)
!3527 = !DILocation(line: 101, column: 12, scope: !3520)
!3528 = !DILocation(line: 101, column: 52, scope: !3520)
!3529 = !DILocation(line: 101, column: 60, scope: !3520)
!3530 = !DILocation(line: 101, column: 75, scope: !3520)
!3531 = !DILocation(line: 101, column: 75, scope: !3532)
!3532 = distinct !DILexicalBlock(scope: !3520, file: !2386, line: 101, column: 74)
!3533 = distinct !DISubprogram(name: "~vector", linkageName: "_ZNSt6vectorIlSaIlEED2Ev", scope: !287, file: !288, line: 678, type: !547, scopeLine: 679, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !616, retainedNodes: !212)
!3534 = !DILocalVariable(name: "this", arg: 1, scope: !3533, type: !3390, flags: DIFlagArtificial | DIFlagObjectPointer)
!3535 = !DILocation(line: 0, scope: !3533)
!3536 = !DILocation(line: 680, column: 22, scope: !3537)
!3537 = distinct !DILexicalBlock(scope: !3533, file: !288, line: 679, column: 7)
!3538 = !DILocation(line: 680, column: 16, scope: !3537)
!3539 = !DILocation(line: 680, column: 30, scope: !3537)
!3540 = !DILocation(line: 680, column: 46, scope: !3537)
!3541 = !DILocation(line: 680, column: 40, scope: !3537)
!3542 = !DILocation(line: 680, column: 54, scope: !3537)
!3543 = !DILocation(line: 681, column: 9, scope: !3537)
!3544 = !DILocation(line: 680, column: 2, scope: !3537)
!3545 = !DILocation(line: 683, column: 7, scope: !3537)
!3546 = !DILocation(line: 683, column: 7, scope: !3533)
!3547 = distinct !DISubprogram(name: "_M_get_Tp_allocator", linkageName: "_ZNSt12_Vector_baseIlSaIlEE19_M_get_Tp_allocatorEv", scope: !291, file: !288, line: 276, type: !449, scopeLine: 277, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !448, retainedNodes: !212)
!3548 = !DILocalVariable(name: "this", arg: 1, scope: !3547, type: !3549, flags: DIFlagArtificial | DIFlagObjectPointer)
!3549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!3550 = !DILocation(line: 0, scope: !3547)
!3551 = !DILocation(line: 277, column: 22, scope: !3547)
!3552 = !DILocation(line: 277, column: 16, scope: !3547)
!3553 = !DILocation(line: 277, column: 9, scope: !3547)
!3554 = distinct !DISubprogram(name: "_Destroy<long *, long>", linkageName: "_ZSt8_DestroyIPllEvT_S1_RSaIT0_E", scope: !31, file: !236, line: 845, type: !3555, scopeLine: 847, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, templateParams: !3557, retainedNodes: !212)
!3555 = !DISubroutineType(types: !3556)
!3556 = !{null, !309, !309, !370}
!3557 = !{!3558, !357}
!3558 = !DITemplateTypeParameter(name: "_ForwardIterator", type: !309)
!3559 = !DILocalVariable(name: "__first", arg: 1, scope: !3554, file: !236, line: 845, type: !309)
!3560 = !DILocation(line: 845, column: 31, scope: !3554)
!3561 = !DILocalVariable(name: "__last", arg: 2, scope: !3554, file: !236, line: 845, type: !309)
!3562 = !DILocation(line: 845, column: 57, scope: !3554)
!3563 = !DILocalVariable(arg: 3, scope: !3554, file: !236, line: 846, type: !370)
!3564 = !DILocation(line: 846, column: 22, scope: !3554)
!3565 = !DILocation(line: 848, column: 16, scope: !3554)
!3566 = !DILocation(line: 848, column: 25, scope: !3554)
!3567 = !DILocation(line: 848, column: 7, scope: !3554)
!3568 = !DILocation(line: 849, column: 5, scope: !3554)
!3569 = distinct !DISubprogram(name: "~_Vector_base", linkageName: "_ZNSt12_Vector_baseIlSaIlEED2Ev", scope: !291, file: !288, line: 333, type: !463, scopeLine: 334, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !489, retainedNodes: !212)
!3570 = !DILocalVariable(name: "this", arg: 1, scope: !3569, type: !3549, flags: DIFlagArtificial | DIFlagObjectPointer)
!3571 = !DILocation(line: 0, scope: !3569)
!3572 = !DILocation(line: 335, column: 16, scope: !3573)
!3573 = distinct !DILexicalBlock(scope: !3569, file: !288, line: 334, column: 7)
!3574 = !DILocation(line: 335, column: 24, scope: !3573)
!3575 = !DILocation(line: 336, column: 9, scope: !3573)
!3576 = !DILocation(line: 336, column: 17, scope: !3573)
!3577 = !DILocation(line: 336, column: 37, scope: !3573)
!3578 = !DILocation(line: 336, column: 45, scope: !3573)
!3579 = !DILocation(line: 336, column: 35, scope: !3573)
!3580 = !DILocation(line: 335, column: 2, scope: !3573)
!3581 = !DILocation(line: 337, column: 7, scope: !3573)
!3582 = !DILocation(line: 337, column: 7, scope: !3569)
!3583 = distinct !DISubprogram(name: "_M_deallocate", linkageName: "_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm", scope: !291, file: !288, line: 350, type: !494, scopeLine: 351, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !493, retainedNodes: !212)
!3584 = !DILocalVariable(name: "this", arg: 1, scope: !3583, type: !3549, flags: DIFlagArtificial | DIFlagObjectPointer)
!3585 = !DILocation(line: 0, scope: !3583)
!3586 = !DILocalVariable(name: "__p", arg: 2, scope: !3583, file: !288, line: 350, type: !407)
!3587 = !DILocation(line: 350, column: 29, scope: !3583)
!3588 = !DILocalVariable(name: "__n", arg: 3, scope: !3583, file: !288, line: 350, type: !210)
!3589 = !DILocation(line: 350, column: 41, scope: !3583)
!3590 = !DILocation(line: 353, column: 6, scope: !3591)
!3591 = distinct !DILexicalBlock(scope: !3583, file: !288, line: 353, column: 6)
!3592 = !DILocation(line: 353, column: 6, scope: !3583)
!3593 = !DILocation(line: 354, column: 20, scope: !3591)
!3594 = !DILocation(line: 354, column: 29, scope: !3591)
!3595 = !DILocation(line: 354, column: 34, scope: !3591)
!3596 = !DILocation(line: 354, column: 4, scope: !3591)
!3597 = !DILocation(line: 355, column: 7, scope: !3583)
!3598 = distinct !DISubprogram(name: "~_Vector_impl", linkageName: "_ZNSt12_Vector_baseIlSaIlEE12_Vector_implD2Ev", scope: !294, file: !288, line: 128, type: !429, scopeLine: 128, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !3599, retainedNodes: !212)
!3599 = !DISubprogram(name: "~_Vector_impl", scope: !294, type: !429, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!3600 = !DILocalVariable(name: "this", arg: 1, scope: !3598, type: !3601, flags: DIFlagArtificial | DIFlagObjectPointer)
!3601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!3602 = !DILocation(line: 0, scope: !3598)
!3603 = !DILocation(line: 128, column: 14, scope: !3604)
!3604 = distinct !DILexicalBlock(scope: !3598, file: !288, line: 128, column: 14)
!3605 = !DILocation(line: 128, column: 14, scope: !3598)
!3606 = distinct !DISubprogram(name: "deallocate", linkageName: "_ZNSt16allocator_traitsISaIlEE10deallocateERS0_Plm", scope: !303, file: !236, line: 495, type: !376, scopeLine: 496, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !375, retainedNodes: !212)
!3607 = !DILocalVariable(name: "__a", arg: 1, scope: !3606, file: !236, line: 495, type: !310)
!3608 = !DILocation(line: 495, column: 34, scope: !3606)
!3609 = !DILocalVariable(name: "__p", arg: 2, scope: !3606, file: !236, line: 495, type: !308)
!3610 = !DILocation(line: 495, column: 47, scope: !3606)
!3611 = !DILocalVariable(name: "__n", arg: 3, scope: !3606, file: !236, line: 495, type: !247)
!3612 = !DILocation(line: 495, column: 62, scope: !3606)
!3613 = !DILocation(line: 496, column: 9, scope: !3606)
!3614 = !DILocation(line: 496, column: 24, scope: !3606)
!3615 = !DILocation(line: 496, column: 29, scope: !3606)
!3616 = !DILocation(line: 496, column: 13, scope: !3606)
!3617 = !DILocation(line: 496, column: 35, scope: !3606)
!3618 = distinct !DISubprogram(name: "deallocate", linkageName: "_ZN9__gnu_cxx13new_allocatorIlE10deallocateEPlm", scope: !317, file: !318, line: 132, type: !350, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !349, retainedNodes: !212)
!3619 = !DILocalVariable(name: "this", arg: 1, scope: !3618, type: !3620, flags: DIFlagArtificial | DIFlagObjectPointer)
!3620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!3621 = !DILocation(line: 0, scope: !3618)
!3622 = !DILocalVariable(name: "__p", arg: 2, scope: !3618, file: !318, line: 132, type: !309)
!3623 = !DILocation(line: 132, column: 23, scope: !3618)
!3624 = !DILocalVariable(name: "__t", arg: 3, scope: !3618, file: !318, line: 132, type: !348)
!3625 = !DILocation(line: 132, column: 38, scope: !3618)
!3626 = !DILocation(line: 145, column: 20, scope: !3618)
!3627 = !DILocation(line: 145, column: 2, scope: !3618)
!3628 = !DILocation(line: 150, column: 7, scope: !3618)
!3629 = distinct !DISubprogram(name: "_Destroy<long *>", linkageName: "_ZSt8_DestroyIPlEvT_S1_", scope: !31, file: !3630, line: 182, type: !3631, scopeLine: 183, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, templateParams: !3633, retainedNodes: !212)
!3630 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/stl_construct.h", directory: "")
!3631 = !DISubroutineType(types: !3632)
!3632 = !{null, !309, !309}
!3633 = !{!3558}
!3634 = !DILocalVariable(name: "__first", arg: 1, scope: !3629, file: !3630, line: 182, type: !309)
!3635 = !DILocation(line: 182, column: 31, scope: !3629)
!3636 = !DILocalVariable(name: "__last", arg: 2, scope: !3629, file: !3630, line: 182, type: !309)
!3637 = !DILocation(line: 182, column: 57, scope: !3629)
!3638 = !DILocation(line: 196, column: 12, scope: !3629)
!3639 = !DILocation(line: 196, column: 21, scope: !3629)
!3640 = !DILocation(line: 195, column: 7, scope: !3629)
!3641 = !DILocation(line: 197, column: 5, scope: !3629)
!3642 = distinct !DISubprogram(name: "__destroy<long *>", linkageName: "_ZNSt12_Destroy_auxILb1EE9__destroyIPlEEvT_S3_", scope: !3643, file: !3630, line: 172, type: !3631, scopeLine: 172, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, templateParams: !3633, declaration: !3646, retainedNodes: !212)
!3643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Destroy_aux<true>", scope: !31, file: !3630, line: 168, size: 8, flags: DIFlagTypePassByValue, elements: !212, templateParams: !3644, identifier: "_ZTSSt12_Destroy_auxILb1EE")
!3644 = !{!3645}
!3645 = !DITemplateValueParameter(type: !53, value: i1 true)
!3646 = !DISubprogram(name: "__destroy<long *>", linkageName: "_ZNSt12_Destroy_auxILb1EE9__destroyIPlEEvT_S3_", scope: !3643, file: !3630, line: 172, type: !3631, scopeLine: 172, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0, templateParams: !3633)
!3647 = !DILocalVariable(arg: 1, scope: !3642, file: !3630, line: 172, type: !309)
!3648 = !DILocation(line: 172, column: 35, scope: !3642)
!3649 = !DILocalVariable(arg: 2, scope: !3642, file: !3630, line: 172, type: !309)
!3650 = !DILocation(line: 172, column: 53, scope: !3642)
!3651 = !DILocation(line: 172, column: 57, scope: !3642)
!3652 = distinct !DISubprogram(name: "AbstractTensorInterface", linkageName: "_ZN10tensorflow23AbstractTensorInterfaceC2Ev", scope: !2390, file: !2391, line: 31, type: !2395, scopeLine: 31, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !3653, retainedNodes: !212)
!3653 = !DISubprogram(name: "AbstractTensorInterface", scope: !2390, type: !2395, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!3654 = !DILocalVariable(name: "this", arg: 1, scope: !3652, type: !2389, flags: DIFlagArtificial | DIFlagObjectPointer)
!3655 = !DILocation(line: 0, scope: !3652)
!3656 = !DILocation(line: 31, column: 7, scope: !3652)
!3657 = distinct !DISubprogram(name: "~AbstractTensorInterface", linkageName: "_ZN10tensorflow23AbstractTensorInterfaceD2Ev", scope: !2390, file: !2391, line: 57, type: !2395, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !2425, retainedNodes: !212)
!3658 = !DILocalVariable(name: "this", arg: 1, scope: !3657, type: !2389, flags: DIFlagArtificial | DIFlagObjectPointer)
!3659 = !DILocation(line: 0, scope: !3657)
!3660 = !DILocation(line: 57, column: 39, scope: !3657)
!3661 = distinct !DISubprogram(name: "Release", linkageName: "_ZN10tensorflow15TensorInterface7ReleaseEv", scope: !3320, file: !2386, line: 128, type: !3325, scopeLine: 128, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !3332, retainedNodes: !212)
!3662 = !DILocalVariable(name: "this", arg: 1, scope: !3661, type: !3522, flags: DIFlagArtificial | DIFlagObjectPointer)
!3663 = !DILocation(line: 0, scope: !3661)
!3664 = !DILocation(line: 128, column: 42, scope: !3661)
!3665 = !DILocation(line: 128, column: 55, scope: !3661)
!3666 = distinct !DISubprogram(name: "Type", linkageName: "_ZNK10tensorflow15TensorInterface4TypeEv", scope: !3320, file: !2386, line: 129, type: !3334, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !3333, retainedNodes: !212)
!3667 = !DILocalVariable(name: "this", arg: 1, scope: !3666, type: !3668, flags: DIFlagArtificial | DIFlagObjectPointer)
!3668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3337, size: 64)
!3669 = !DILocation(line: 0, scope: !3666)
!3670 = !DILocation(line: 131, column: 3, scope: !3666)
!3671 = distinct !DISubprogram(name: "NumDims", linkageName: "_ZNK10tensorflow15TensorInterface7NumDimsEv", scope: !3320, file: !2386, line: 133, type: !3339, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !3338, retainedNodes: !212)
!3672 = !DILocalVariable(name: "this", arg: 1, scope: !3671, type: !3668, flags: DIFlagArtificial | DIFlagObjectPointer)
!3673 = !DILocation(line: 0, scope: !3671)
!3674 = !DILocation(line: 133, column: 47, scope: !3671)
!3675 = distinct !DISubprogram(name: "Dim", linkageName: "_ZNK10tensorflow15TensorInterface3DimEi", scope: !3320, file: !2386, line: 134, type: !3342, scopeLine: 134, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !3341, retainedNodes: !212)
!3676 = !DILocalVariable(name: "this", arg: 1, scope: !3675, type: !3668, flags: DIFlagArtificial | DIFlagObjectPointer)
!3677 = !DILocation(line: 0, scope: !3675)
!3678 = !DILocalVariable(arg: 2, scope: !3675, file: !2386, line: 134, type: !16)
!3679 = !DILocation(line: 134, column: 40, scope: !3675)
!3680 = !DILocation(line: 134, column: 50, scope: !3675)
!3681 = distinct !DISubprogram(name: "NumElements", linkageName: "_ZNK10tensorflow15TensorInterface11NumElementsEv", scope: !3320, file: !2386, line: 135, type: !3345, scopeLine: 135, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !3344, retainedNodes: !212)
!3682 = !DILocalVariable(name: "this", arg: 1, scope: !3681, type: !3668, flags: DIFlagArtificial | DIFlagObjectPointer)
!3683 = !DILocation(line: 0, scope: !3681)
!3684 = !DILocation(line: 135, column: 55, scope: !3681)
!3685 = distinct !DISubprogram(name: "ByteSize", linkageName: "_ZNK10tensorflow15TensorInterface8ByteSizeEv", scope: !3320, file: !2386, line: 136, type: !3348, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !3347, retainedNodes: !212)
!3686 = !DILocalVariable(name: "this", arg: 1, scope: !3685, type: !3668, flags: DIFlagArtificial | DIFlagObjectPointer)
!3687 = !DILocation(line: 0, scope: !3685)
!3688 = !DILocation(line: 136, column: 51, scope: !3685)
!3689 = distinct !DISubprogram(name: "Data", linkageName: "_ZNK10tensorflow15TensorInterface4DataEv", scope: !3320, file: !2386, line: 137, type: !3351, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !3350, retainedNodes: !212)
!3690 = !DILocalVariable(name: "this", arg: 1, scope: !3689, type: !3668, flags: DIFlagArtificial | DIFlagObjectPointer)
!3691 = !DILocation(line: 0, scope: !3689)
!3692 = !DILocation(line: 137, column: 46, scope: !3689)
!3693 = distinct !DISubprogram(name: "IsAligned", linkageName: "_ZNK10tensorflow15TensorInterface9IsAlignedEv", scope: !3320, file: !2386, line: 138, type: !3354, scopeLine: 138, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !3353, retainedNodes: !212)
!3694 = !DILocalVariable(name: "this", arg: 1, scope: !3693, type: !3668, flags: DIFlagArtificial | DIFlagObjectPointer)
!3695 = !DILocation(line: 0, scope: !3693)
!3696 = !DILocation(line: 138, column: 50, scope: !3693)
!3697 = distinct !DISubprogram(name: "CanMove", linkageName: "_ZNK10tensorflow15TensorInterface7CanMoveEv", scope: !3320, file: !2386, line: 139, type: !3354, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !3356, retainedNodes: !212)
!3698 = !DILocalVariable(name: "this", arg: 1, scope: !3697, type: !3668, flags: DIFlagArtificial | DIFlagObjectPointer)
!3699 = !DILocation(line: 0, scope: !3697)
!3700 = !DILocation(line: 139, column: 48, scope: !3697)
!3701 = distinct !DISubprogram(name: "SummarizeValue", linkageName: "_ZNK10tensorflow15TensorInterface14SummarizeValueB5cxx11Ev", scope: !3320, file: !2386, line: 140, type: !3358, scopeLine: 140, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !3357, retainedNodes: !212)
!3702 = !DILocalVariable(name: "this", arg: 1, scope: !3701, type: !3668, flags: DIFlagArtificial | DIFlagObjectPointer)
!3703 = !DILocation(line: 0, scope: !3701)
!3704 = !DILocation(line: 140, column: 69, scope: !3701)
!3705 = !DILocation(line: 140, column: 62, scope: !3701)
!3706 = distinct !DISubprogram(name: "~TensorInterface", linkageName: "_ZN10tensorflow15TensorInterfaceD2Ev", scope: !3320, file: !2386, line: 102, type: !3325, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !3331, retainedNodes: !212)
!3707 = !DILocalVariable(name: "this", arg: 1, scope: !3706, type: !3522, flags: DIFlagArtificial | DIFlagObjectPointer)
!3708 = !DILocation(line: 0, scope: !3706)
!3709 = !DILocation(line: 102, column: 31, scope: !3706)
!3710 = !DILocation(line: 102, column: 32, scope: !3711)
!3711 = distinct !DILexicalBlock(scope: !3706, file: !2386, line: 102, column: 31)
!3712 = !DILocation(line: 102, column: 32, scope: !3706)
!3713 = distinct !DISubprogram(name: "~TensorInterface", linkageName: "_ZN10tensorflow15TensorInterfaceD0Ev", scope: !3320, file: !2386, line: 102, type: !3325, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !3331, retainedNodes: !212)
!3714 = !DILocalVariable(name: "this", arg: 1, scope: !3713, type: !3522, flags: DIFlagArtificial | DIFlagObjectPointer)
!3715 = !DILocation(line: 0, scope: !3713)
!3716 = !DILocation(line: 102, column: 31, scope: !3713)
!3717 = !DILocation(line: 102, column: 32, scope: !3713)
!3718 = distinct !DISubprogram(name: "~AbstractTensorInterface", linkageName: "_ZN10tensorflow23AbstractTensorInterfaceD0Ev", scope: !2390, file: !2391, line: 57, type: !2395, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !2425, retainedNodes: !212)
!3719 = !DILocalVariable(name: "this", arg: 1, scope: !3718, type: !2389, flags: DIFlagArtificial | DIFlagObjectPointer)
!3720 = !DILocation(line: 0, scope: !3718)
!3721 = !DILocation(line: 57, column: 38, scope: !3718)
!3722 = distinct !DISubprogram(name: "shape", linkageName: "_ZNK10tensorflow6Tensor5shapeEv", scope: !1906, file: !1907, line: 293, type: !2093, scopeLine: 293, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !2092, retainedNodes: !212)
!3723 = !DILocalVariable(name: "this", arg: 1, scope: !3722, type: !3502, flags: DIFlagArtificial | DIFlagObjectPointer)
!3724 = !DILocation(line: 0, scope: !3722)
!3725 = !DILocation(line: 293, column: 45, scope: !3722)
!3726 = !DILocation(line: 293, column: 38, scope: !3722)
!3727 = distinct !DISubprogram(name: "num_elements", linkageName: "_ZNK10tensorflow11TensorShape12num_elementsEv", scope: !284, file: !101, line: 158, type: !914, scopeLine: 158, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !913, retainedNodes: !212)
!3728 = !DILocalVariable(name: "this", arg: 1, scope: !3727, type: !995, flags: DIFlagArtificial | DIFlagObjectPointer)
!3729 = !DILocation(line: 0, scope: !3727)
!3730 = !DILocation(line: 159, column: 9, scope: !3731)
!3731 = distinct !DILexicalBlock(scope: !3727, file: !101, line: 159, column: 9)
!3732 = !DILocation(line: 159, column: 15, scope: !3731)
!3733 = !DILocation(line: 159, column: 9, scope: !3727)
!3734 = !DILocation(line: 159, column: 24, scope: !3731)
!3735 = !DILocalVariable(name: "prod", scope: !3727, file: !101, line: 160, type: !64)
!3736 = !DILocation(line: 160, column: 13, scope: !3727)
!3737 = !DILocalVariable(name: "__range2", scope: !3738, type: !569, flags: DIFlagArtificial)
!3738 = distinct !DILexicalBlock(scope: !3727, file: !101, line: 161, column: 5)
!3739 = !DILocation(line: 0, scope: !3738)
!3740 = !DILocation(line: 161, column: 22, scope: !3738)
!3741 = !DILocalVariable(name: "__begin2", scope: !3738, type: !698, flags: DIFlagArtificial)
!3742 = !DILocation(line: 161, column: 20, scope: !3738)
!3743 = !DILocalVariable(name: "__end2", scope: !3738, type: !698, flags: DIFlagArtificial)
!3744 = !DILocalVariable(name: "d", scope: !3745, file: !101, line: 161, type: !64)
!3745 = distinct !DILexicalBlock(scope: !3738, file: !101, line: 161, column: 5)
!3746 = !DILocation(line: 161, column: 18, scope: !3745)
!3747 = !DILocation(line: 161, column: 20, scope: !3745)
!3748 = !DILocation(line: 162, column: 11, scope: !3749)
!3749 = distinct !DILexicalBlock(scope: !3750, file: !101, line: 162, column: 11)
!3750 = distinct !DILexicalBlock(scope: !3745, file: !101, line: 161, column: 29)
!3751 = !DILocation(line: 162, column: 13, scope: !3749)
!3752 = !DILocation(line: 162, column: 11, scope: !3750)
!3753 = !DILocation(line: 162, column: 19, scope: !3749)
!3754 = !DILocation(line: 163, column: 15, scope: !3750)
!3755 = !DILocation(line: 163, column: 12, scope: !3750)
!3756 = !DILocation(line: 161, column: 5, scope: !3738)
!3757 = distinct !{!3757, !3756, !3758}
!3758 = !DILocation(line: 164, column: 5, scope: !3738)
!3759 = !DILocation(line: 165, column: 12, scope: !3727)
!3760 = !DILocation(line: 165, column: 5, scope: !3727)
!3761 = !DILocation(line: 166, column: 3, scope: !3727)
!3762 = distinct !DISubprogram(name: "empty", linkageName: "_ZNKSt6vectorIlSaIlEE5emptyEv", scope: !287, file: !288, line: 1007, type: !781, scopeLine: 1008, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !780, retainedNodes: !212)
!3763 = !DILocalVariable(name: "this", arg: 1, scope: !3762, type: !3764, flags: DIFlagArtificial | DIFlagObjectPointer)
!3764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64)
!3765 = !DILocation(line: 0, scope: !3762)
!3766 = !DILocation(line: 1008, column: 16, scope: !3762)
!3767 = !DILocation(line: 1008, column: 27, scope: !3762)
!3768 = !DILocation(line: 1008, column: 24, scope: !3762)
!3769 = !DILocation(line: 1008, column: 9, scope: !3762)
!3770 = distinct !DISubprogram(name: "begin", linkageName: "_ZNKSt6vectorIlSaIlEE5beginEv", scope: !287, file: !288, line: 820, type: !695, scopeLine: 821, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !694, retainedNodes: !212)
!3771 = !DILocalVariable(name: "this", arg: 1, scope: !3770, type: !3764, flags: DIFlagArtificial | DIFlagObjectPointer)
!3772 = !DILocation(line: 0, scope: !3770)
!3773 = !DILocation(line: 821, column: 37, scope: !3770)
!3774 = !DILocation(line: 821, column: 31, scope: !3770)
!3775 = !DILocation(line: 821, column: 45, scope: !3770)
!3776 = !DILocation(line: 821, column: 16, scope: !3770)
!3777 = !DILocation(line: 821, column: 9, scope: !3770)
!3778 = distinct !DISubprogram(name: "end", linkageName: "_ZNKSt6vectorIlSaIlEE3endEv", scope: !287, file: !288, line: 838, type: !695, scopeLine: 839, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !753, retainedNodes: !212)
!3779 = !DILocalVariable(name: "this", arg: 1, scope: !3778, type: !3764, flags: DIFlagArtificial | DIFlagObjectPointer)
!3780 = !DILocation(line: 0, scope: !3778)
!3781 = !DILocation(line: 839, column: 37, scope: !3778)
!3782 = !DILocation(line: 839, column: 31, scope: !3778)
!3783 = !DILocation(line: 839, column: 45, scope: !3778)
!3784 = !DILocation(line: 839, column: 16, scope: !3778)
!3785 = !DILocation(line: 839, column: 9, scope: !3778)
!3786 = distinct !DISubprogram(name: "operator!=<const long *, std::vector<long, std::allocator<long> > >", linkageName: "_ZN9__gnu_cxxneIPKlSt6vectorIlSaIlEEEEbRKNS_17__normal_iteratorIT_T0_EESB_", scope: !94, file: !638, line: 1179, type: !3787, scopeLine: 1182, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, templateParams: !750, retainedNodes: !212)
!3787 = !DISubroutineType(types: !3788)
!3788 = !{!53, !3789, !3789}
!3789 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !719, size: 64)
!3790 = !DILocalVariable(name: "__lhs", arg: 1, scope: !3786, file: !638, line: 1179, type: !3789)
!3791 = !DILocation(line: 1179, column: 64, scope: !3786)
!3792 = !DILocalVariable(name: "__rhs", arg: 2, scope: !3786, file: !638, line: 1180, type: !3789)
!3793 = !DILocation(line: 1180, column: 57, scope: !3786)
!3794 = !DILocation(line: 1182, column: 14, scope: !3786)
!3795 = !DILocation(line: 1182, column: 20, scope: !3786)
!3796 = !DILocation(line: 1182, column: 30, scope: !3786)
!3797 = !DILocation(line: 1182, column: 36, scope: !3786)
!3798 = !DILocation(line: 1182, column: 27, scope: !3786)
!3799 = !DILocation(line: 1182, column: 7, scope: !3786)
!3800 = distinct !DISubprogram(name: "operator*", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEdeEv", scope: !698, file: !638, line: 1042, type: !711, scopeLine: 1043, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !710, retainedNodes: !212)
!3801 = !DILocalVariable(name: "this", arg: 1, scope: !3800, type: !3802, flags: DIFlagArtificial | DIFlagObjectPointer)
!3802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!3803 = !DILocation(line: 0, scope: !3800)
!3804 = !DILocation(line: 1043, column: 17, scope: !3800)
!3805 = !DILocation(line: 1043, column: 9, scope: !3800)
!3806 = distinct !DISubprogram(name: "operator++", linkageName: "_ZN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEppEv", scope: !698, file: !638, line: 1052, type: !726, scopeLine: 1053, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !725, retainedNodes: !212)
!3807 = !DILocalVariable(name: "this", arg: 1, scope: !3806, type: !3808, flags: DIFlagArtificial | DIFlagObjectPointer)
!3808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64)
!3809 = !DILocation(line: 0, scope: !3806)
!3810 = !DILocation(line: 1054, column: 4, scope: !3806)
!3811 = !DILocation(line: 1054, column: 2, scope: !3806)
!3812 = !DILocation(line: 1055, column: 2, scope: !3806)
!3813 = distinct !DISubprogram(name: "base", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEE4baseEv", scope: !698, file: !638, line: 1105, type: !748, scopeLine: 1106, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !747, retainedNodes: !212)
!3814 = !DILocalVariable(name: "this", arg: 1, scope: !3813, type: !3802, flags: DIFlagArtificial | DIFlagObjectPointer)
!3815 = !DILocation(line: 0, scope: !3813)
!3816 = !DILocation(line: 1106, column: 16, scope: !3813)
!3817 = !DILocation(line: 1106, column: 9, scope: !3813)
!3818 = distinct !DISubprogram(name: "__normal_iterator", linkageName: "_ZN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEC2ERKS2_", scope: !698, file: !638, line: 1027, type: !706, scopeLine: 1028, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !705, retainedNodes: !212)
!3819 = !DILocalVariable(name: "this", arg: 1, scope: !3818, type: !3808, flags: DIFlagArtificial | DIFlagObjectPointer)
!3820 = !DILocation(line: 0, scope: !3818)
!3821 = !DILocalVariable(name: "__i", arg: 2, scope: !3818, file: !638, line: 1027, type: !708)
!3822 = !DILocation(line: 1027, column: 42, scope: !3818)
!3823 = !DILocation(line: 1028, column: 9, scope: !3818)
!3824 = !DILocation(line: 1028, column: 20, scope: !3818)
!3825 = !DILocation(line: 1028, column: 27, scope: !3818)
!3826 = distinct !DISubprogram(name: "operator==<const long *, std::vector<long, std::allocator<long> > >", linkageName: "_ZN9__gnu_cxxeqIPKlSt6vectorIlSaIlEEEEbRKNS_17__normal_iteratorIT_T0_EESB_", scope: !94, file: !638, line: 1163, type: !3787, scopeLine: 1166, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, templateParams: !750, retainedNodes: !212)
!3827 = !DILocalVariable(name: "__lhs", arg: 1, scope: !3826, file: !638, line: 1163, type: !3789)
!3828 = !DILocation(line: 1163, column: 64, scope: !3826)
!3829 = !DILocalVariable(name: "__rhs", arg: 2, scope: !3826, file: !638, line: 1164, type: !3789)
!3830 = !DILocation(line: 1164, column: 57, scope: !3826)
!3831 = !DILocation(line: 1166, column: 14, scope: !3826)
!3832 = !DILocation(line: 1166, column: 20, scope: !3826)
!3833 = !DILocation(line: 1166, column: 30, scope: !3826)
!3834 = !DILocation(line: 1166, column: 36, scope: !3826)
!3835 = !DILocation(line: 1166, column: 27, scope: !3826)
!3836 = !DILocation(line: 1166, column: 7, scope: !3826)
!3837 = distinct !DISubprogram(name: "vector", linkageName: "_ZNSt6vectorIlSaIlEEC2ERKS1_", scope: !287, file: !288, line: 553, type: !567, scopeLine: 556, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !566, retainedNodes: !212)
!3838 = !DILocalVariable(name: "this", arg: 1, scope: !3837, type: !3390, flags: DIFlagArtificial | DIFlagObjectPointer)
!3839 = !DILocation(line: 0, scope: !3837)
!3840 = !DILocalVariable(name: "__x", arg: 2, scope: !3837, file: !288, line: 553, type: !569)
!3841 = !DILocation(line: 553, column: 28, scope: !3837)
!3842 = !DILocation(line: 556, column: 7, scope: !3837)
!3843 = !DILocation(line: 554, column: 15, scope: !3837)
!3844 = !DILocation(line: 554, column: 19, scope: !3837)
!3845 = !DILocation(line: 555, column: 35, scope: !3837)
!3846 = !DILocation(line: 555, column: 39, scope: !3837)
!3847 = !DILocation(line: 555, column: 2, scope: !3837)
!3848 = !DILocation(line: 554, column: 9, scope: !3837)
!3849 = !DILocation(line: 558, column: 32, scope: !3850)
!3850 = distinct !DILexicalBlock(scope: !3837, file: !288, line: 556, column: 7)
!3851 = !DILocation(line: 558, column: 36, scope: !3850)
!3852 = !DILocation(line: 558, column: 45, scope: !3850)
!3853 = !DILocation(line: 558, column: 49, scope: !3850)
!3854 = !DILocation(line: 559, column: 17, scope: !3850)
!3855 = !DILocation(line: 559, column: 11, scope: !3850)
!3856 = !DILocation(line: 559, column: 25, scope: !3850)
!3857 = !DILocation(line: 560, column: 11, scope: !3850)
!3858 = !DILocation(line: 558, column: 4, scope: !3850)
!3859 = !DILocation(line: 557, column: 8, scope: !3850)
!3860 = !DILocation(line: 557, column: 2, scope: !3850)
!3861 = !DILocation(line: 557, column: 16, scope: !3850)
!3862 = !DILocation(line: 557, column: 26, scope: !3850)
!3863 = !DILocation(line: 561, column: 7, scope: !3837)
!3864 = !DILocation(line: 561, column: 7, scope: !3850)
!3865 = distinct !DISubprogram(name: "size", linkageName: "_ZNKSt6vectorIlSaIlEE4sizeEv", scope: !287, file: !288, line: 918, type: !771, scopeLine: 919, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !770, retainedNodes: !212)
!3866 = !DILocalVariable(name: "this", arg: 1, scope: !3865, type: !3764, flags: DIFlagArtificial | DIFlagObjectPointer)
!3867 = !DILocation(line: 0, scope: !3865)
!3868 = !DILocation(line: 919, column: 32, scope: !3865)
!3869 = !DILocation(line: 919, column: 26, scope: !3865)
!3870 = !DILocation(line: 919, column: 40, scope: !3865)
!3871 = !DILocation(line: 919, column: 58, scope: !3865)
!3872 = !DILocation(line: 919, column: 52, scope: !3865)
!3873 = !DILocation(line: 919, column: 66, scope: !3865)
!3874 = !DILocation(line: 919, column: 50, scope: !3865)
!3875 = !DILocation(line: 919, column: 9, scope: !3865)
!3876 = distinct !DISubprogram(name: "_M_get_Tp_allocator", linkageName: "_ZNKSt12_Vector_baseIlSaIlEE19_M_get_Tp_allocatorEv", scope: !291, file: !288, line: 280, type: !454, scopeLine: 281, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !453, retainedNodes: !212)
!3877 = !DILocalVariable(name: "this", arg: 1, scope: !3876, type: !3878, flags: DIFlagArtificial | DIFlagObjectPointer)
!3878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!3879 = !DILocation(line: 0, scope: !3876)
!3880 = !DILocation(line: 281, column: 22, scope: !3876)
!3881 = !DILocation(line: 281, column: 16, scope: !3876)
!3882 = !DILocation(line: 281, column: 9, scope: !3876)
!3883 = distinct !DISubprogram(name: "_S_select_on_copy", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaIlElE17_S_select_on_copyERKS1_", scope: !300, file: !231, line: 97, type: !390, scopeLine: 98, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !389, retainedNodes: !212)
!3884 = !DILocalVariable(name: "__a", arg: 1, scope: !3883, file: !231, line: 97, type: !365)
!3885 = !DILocation(line: 97, column: 61, scope: !3883)
!3886 = !DILocation(line: 98, column: 64, scope: !3883)
!3887 = !DILocation(line: 98, column: 14, scope: !3883)
!3888 = !DILocation(line: 98, column: 7, scope: !3883)
!3889 = distinct !DISubprogram(name: "_Vector_base", linkageName: "_ZNSt12_Vector_baseIlSaIlEEC2EmRKS0_", scope: !291, file: !288, line: 303, type: !474, scopeLine: 305, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !473, retainedNodes: !212)
!3890 = !DILocalVariable(name: "this", arg: 1, scope: !3889, type: !3549, flags: DIFlagArtificial | DIFlagObjectPointer)
!3891 = !DILocation(line: 0, scope: !3889)
!3892 = !DILocalVariable(name: "__n", arg: 2, scope: !3889, file: !288, line: 303, type: !210)
!3893 = !DILocation(line: 303, column: 27, scope: !3889)
!3894 = !DILocalVariable(name: "__a", arg: 3, scope: !3889, file: !288, line: 303, type: !468)
!3895 = !DILocation(line: 303, column: 54, scope: !3889)
!3896 = !DILocation(line: 304, column: 9, scope: !3889)
!3897 = !DILocation(line: 304, column: 17, scope: !3889)
!3898 = !DILocation(line: 305, column: 27, scope: !3899)
!3899 = distinct !DILexicalBlock(scope: !3889, file: !288, line: 305, column: 7)
!3900 = !DILocation(line: 305, column: 9, scope: !3899)
!3901 = !DILocation(line: 305, column: 33, scope: !3889)
!3902 = !DILocation(line: 305, column: 33, scope: !3899)
!3903 = distinct !DISubprogram(name: "__uninitialized_copy_a<__gnu_cxx::__normal_iterator<const long *, std::vector<long, std::allocator<long> > >, long *, long>", linkageName: "_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEEPllET0_T_SA_S9_RSaIT1_E", scope: !31, file: !3904, line: 331, type: !3905, scopeLine: 333, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, templateParams: !3907, retainedNodes: !212)
!3904 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/stl_uninitialized.h", directory: "")
!3905 = !DISubroutineType(types: !3906)
!3906 = !{!309, !698, !698, !309, !370}
!3907 = !{!3908, !3558, !357}
!3908 = !DITemplateTypeParameter(name: "_InputIterator", type: !698)
!3909 = !DILocalVariable(name: "__first", arg: 1, scope: !3903, file: !3904, line: 331, type: !698)
!3910 = !DILocation(line: 331, column: 43, scope: !3903)
!3911 = !DILocalVariable(name: "__last", arg: 2, scope: !3903, file: !3904, line: 331, type: !698)
!3912 = !DILocation(line: 331, column: 67, scope: !3903)
!3913 = !DILocalVariable(name: "__result", arg: 3, scope: !3903, file: !3904, line: 332, type: !309)
!3914 = !DILocation(line: 332, column: 24, scope: !3903)
!3915 = !DILocalVariable(arg: 4, scope: !3903, file: !3904, line: 332, type: !370)
!3916 = !DILocation(line: 332, column: 49, scope: !3903)
!3917 = !DILocation(line: 333, column: 38, scope: !3903)
!3918 = !DILocation(line: 333, column: 47, scope: !3903)
!3919 = !DILocation(line: 333, column: 55, scope: !3903)
!3920 = !DILocation(line: 333, column: 14, scope: !3903)
!3921 = !DILocation(line: 333, column: 7, scope: !3903)
!3922 = distinct !DISubprogram(name: "uninitialized_copy<__gnu_cxx::__normal_iterator<const long *, std::vector<long, std::allocator<long> > >, long *>", linkageName: "_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEEPlET0_T_SA_S9_", scope: !31, file: !3904, line: 126, type: !3923, scopeLine: 128, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, templateParams: !3925, retainedNodes: !212)
!3923 = !DISubroutineType(types: !3924)
!3924 = !{!309, !698, !698, !309}
!3925 = !{!3908, !3558}
!3926 = !DILocalVariable(name: "__first", arg: 1, scope: !3922, file: !3904, line: 126, type: !698)
!3927 = !DILocation(line: 126, column: 39, scope: !3922)
!3928 = !DILocalVariable(name: "__last", arg: 2, scope: !3922, file: !3904, line: 126, type: !698)
!3929 = !DILocation(line: 126, column: 63, scope: !3922)
!3930 = !DILocalVariable(name: "__result", arg: 3, scope: !3922, file: !3904, line: 127, type: !309)
!3931 = !DILocation(line: 127, column: 27, scope: !3922)
!3932 = !DILocalVariable(name: "__assignable", scope: !3922, file: !3904, line: 145, type: !506)
!3933 = !DILocation(line: 145, column: 18, scope: !3922)
!3934 = !DILocation(line: 151, column: 16, scope: !3922)
!3935 = !DILocation(line: 151, column: 25, scope: !3922)
!3936 = !DILocation(line: 151, column: 33, scope: !3922)
!3937 = !DILocation(line: 148, column: 14, scope: !3922)
!3938 = !DILocation(line: 148, column: 7, scope: !3922)
!3939 = distinct !DISubprogram(name: "__uninit_copy<__gnu_cxx::__normal_iterator<const long *, std::vector<long, std::allocator<long> > >, long *>", linkageName: "_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEEPlEET0_T_SC_SB_", scope: !3940, file: !3904, line: 108, type: !3923, scopeLine: 110, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, templateParams: !3925, declaration: !3943, retainedNodes: !212)
!3940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__uninitialized_copy<true>", scope: !31, file: !3904, line: 104, size: 8, flags: DIFlagTypePassByValue, elements: !212, templateParams: !3941, identifier: "_ZTSSt20__uninitialized_copyILb1EE")
!3941 = !{!3942}
!3942 = !DITemplateValueParameter(name: "_TrivialValueTypes", type: !53, value: i1 true)
!3943 = !DISubprogram(name: "__uninit_copy<__gnu_cxx::__normal_iterator<const long *, std::vector<long, std::allocator<long> > >, long *>", linkageName: "_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEEPlEET0_T_SC_SB_", scope: !3940, file: !3904, line: 108, type: !3923, scopeLine: 108, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0, templateParams: !3925)
!3944 = !DILocalVariable(name: "__first", arg: 1, scope: !3939, file: !3904, line: 108, type: !698)
!3945 = !DILocation(line: 108, column: 38, scope: !3939)
!3946 = !DILocalVariable(name: "__last", arg: 2, scope: !3939, file: !3904, line: 108, type: !698)
!3947 = !DILocation(line: 108, column: 62, scope: !3939)
!3948 = !DILocalVariable(name: "__result", arg: 3, scope: !3939, file: !3904, line: 109, type: !309)
!3949 = !DILocation(line: 109, column: 26, scope: !3939)
!3950 = !DILocation(line: 110, column: 28, scope: !3939)
!3951 = !DILocation(line: 110, column: 37, scope: !3939)
!3952 = !DILocation(line: 110, column: 45, scope: !3939)
!3953 = !DILocation(line: 110, column: 18, scope: !3939)
!3954 = !DILocation(line: 110, column: 11, scope: !3939)
!3955 = distinct !DISubprogram(name: "copy<__gnu_cxx::__normal_iterator<const long *, std::vector<long, std::allocator<long> > >, long *>", linkageName: "_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEEPlET0_T_SA_S9_", scope: !31, file: !3956, line: 611, type: !3923, scopeLine: 612, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, templateParams: !3957, retainedNodes: !212)
!3956 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/stl_algobase.h", directory: "")
!3957 = !{!3958, !3959}
!3958 = !DITemplateTypeParameter(name: "_II", type: !698)
!3959 = !DITemplateTypeParameter(name: "_OI", type: !309)
!3960 = !DILocalVariable(name: "__first", arg: 1, scope: !3955, file: !3956, line: 611, type: !698)
!3961 = !DILocation(line: 611, column: 14, scope: !3955)
!3962 = !DILocalVariable(name: "__last", arg: 2, scope: !3955, file: !3956, line: 611, type: !698)
!3963 = !DILocation(line: 611, column: 27, scope: !3955)
!3964 = !DILocalVariable(name: "__result", arg: 3, scope: !3955, file: !3956, line: 611, type: !309)
!3965 = !DILocation(line: 611, column: 39, scope: !3955)
!3966 = !DILocation(line: 620, column: 26, scope: !3955)
!3967 = !DILocation(line: 620, column: 8, scope: !3955)
!3968 = !DILocation(line: 620, column: 54, scope: !3955)
!3969 = !DILocation(line: 620, column: 36, scope: !3955)
!3970 = !DILocation(line: 620, column: 63, scope: !3955)
!3971 = !DILocation(line: 619, column: 14, scope: !3955)
!3972 = !DILocation(line: 619, column: 7, scope: !3955)
!3973 = distinct !DISubprogram(name: "__miter_base<__gnu_cxx::__normal_iterator<const long *, std::vector<long, std::allocator<long> > > >", linkageName: "_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEEET_S8_", scope: !31, file: !3974, line: 560, type: !3975, scopeLine: 561, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, templateParams: !3977, retainedNodes: !212)
!3974 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/cpp_type_traits.h", directory: "")
!3975 = !DISubroutineType(types: !3976)
!3976 = !{!698, !698}
!3977 = !{!3978}
!3978 = !DITemplateTypeParameter(name: "_Iterator", type: !698)
!3979 = !DILocalVariable(name: "__it", arg: 1, scope: !3973, file: !3974, line: 560, type: !698)
!3980 = !DILocation(line: 560, column: 28, scope: !3973)
!3981 = !DILocation(line: 561, column: 14, scope: !3973)
!3982 = !DILocation(line: 561, column: 7, scope: !3973)
!3983 = distinct !DISubprogram(name: "__copy_move_a<false, __gnu_cxx::__normal_iterator<const long *, std::vector<long, std::allocator<long> > >, long *>", linkageName: "_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEEPlET1_T0_SA_S9_", scope: !31, file: !3956, line: 527, type: !3923, scopeLine: 528, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, templateParams: !3984, retainedNodes: !212)
!3984 = !{!3985, !3958, !3959}
!3985 = !DITemplateValueParameter(name: "_IsMove", type: !53, value: i1 false)
!3986 = !DILocalVariable(name: "__first", arg: 1, scope: !3983, file: !3956, line: 527, type: !698)
!3987 = !DILocation(line: 527, column: 23, scope: !3983)
!3988 = !DILocalVariable(name: "__last", arg: 2, scope: !3983, file: !3956, line: 527, type: !698)
!3989 = !DILocation(line: 527, column: 36, scope: !3983)
!3990 = !DILocalVariable(name: "__result", arg: 3, scope: !3983, file: !3956, line: 527, type: !309)
!3991 = !DILocation(line: 527, column: 48, scope: !3983)
!3992 = !DILocation(line: 530, column: 50, scope: !3983)
!3993 = !DILocation(line: 530, column: 32, scope: !3983)
!3994 = !DILocation(line: 531, column: 29, scope: !3983)
!3995 = !DILocation(line: 531, column: 11, scope: !3983)
!3996 = !DILocation(line: 532, column: 29, scope: !3983)
!3997 = !DILocation(line: 532, column: 11, scope: !3983)
!3998 = !DILocation(line: 530, column: 3, scope: !3983)
!3999 = !DILocation(line: 529, column: 14, scope: !3983)
!4000 = !DILocation(line: 529, column: 7, scope: !3983)
!4001 = distinct !DISubprogram(name: "__niter_base<const long *, std::vector<long, std::allocator<long> > >", linkageName: "_ZSt12__niter_baseIPKlSt6vectorIlSaIlEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE", scope: !31, file: !638, line: 1291, type: !4002, scopeLine: 1293, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, templateParams: !750, retainedNodes: !212)
!4002 = !DISubroutineType(types: !4003)
!4003 = !{!341, !698}
!4004 = !DILocalVariable(name: "__it", arg: 1, scope: !4001, file: !638, line: 1291, type: !698)
!4005 = !DILocation(line: 1291, column: 70, scope: !4001)
!4006 = !DILocation(line: 1293, column: 19, scope: !4001)
!4007 = !DILocation(line: 1293, column: 7, scope: !4001)
!4008 = distinct !DISubprogram(name: "__niter_base<long *>", linkageName: "_ZSt12__niter_baseIPlET_S1_", scope: !31, file: !3956, line: 313, type: !4009, scopeLine: 315, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, templateParams: !657, retainedNodes: !212)
!4009 = !DISubroutineType(types: !4010)
!4010 = !{!309, !309}
!4011 = !DILocalVariable(name: "__it", arg: 1, scope: !4008, file: !3956, line: 313, type: !309)
!4012 = !DILocation(line: 313, column: 28, scope: !4008)
!4013 = !DILocation(line: 315, column: 14, scope: !4008)
!4014 = !DILocation(line: 315, column: 7, scope: !4008)
!4015 = distinct !DISubprogram(name: "__copy_move_a1<false, const long *, long *>", linkageName: "_ZSt14__copy_move_a1ILb0EPKlPlET1_T0_S4_S3_", scope: !31, file: !3956, line: 521, type: !4016, scopeLine: 522, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, templateParams: !4018, retainedNodes: !212)
!4016 = !DISubroutineType(types: !4017)
!4017 = !{!309, !341, !341, !309}
!4018 = !{!3985, !4019, !3959}
!4019 = !DITemplateTypeParameter(name: "_II", type: !341)
!4020 = !DILocalVariable(name: "__first", arg: 1, scope: !4015, file: !3956, line: 521, type: !341)
!4021 = !DILocation(line: 521, column: 24, scope: !4015)
!4022 = !DILocalVariable(name: "__last", arg: 2, scope: !4015, file: !3956, line: 521, type: !341)
!4023 = !DILocation(line: 521, column: 37, scope: !4015)
!4024 = !DILocalVariable(name: "__result", arg: 3, scope: !4015, file: !3956, line: 521, type: !309)
!4025 = !DILocation(line: 521, column: 49, scope: !4015)
!4026 = !DILocation(line: 522, column: 43, scope: !4015)
!4027 = !DILocation(line: 522, column: 52, scope: !4015)
!4028 = !DILocation(line: 522, column: 60, scope: !4015)
!4029 = !DILocation(line: 522, column: 14, scope: !4015)
!4030 = !DILocation(line: 522, column: 7, scope: !4015)
!4031 = distinct !DISubprogram(name: "__niter_wrap<long *>", linkageName: "_ZSt12__niter_wrapIPlET_RKS1_S1_", scope: !31, file: !3956, line: 335, type: !4032, scopeLine: 336, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, templateParams: !657, retainedNodes: !212)
!4032 = !DISubroutineType(types: !4033)
!4033 = !{!309, !648, !309}
!4034 = !DILocalVariable(arg: 1, scope: !4031, file: !3956, line: 335, type: !648)
!4035 = !DILocation(line: 335, column: 34, scope: !4031)
!4036 = !DILocalVariable(name: "__res", arg: 2, scope: !4031, file: !3956, line: 335, type: !309)
!4037 = !DILocation(line: 335, column: 46, scope: !4031)
!4038 = !DILocation(line: 336, column: 14, scope: !4031)
!4039 = !DILocation(line: 336, column: 7, scope: !4031)
!4040 = distinct !DISubprogram(name: "__copy_move_a2<false, const long *, long *>", linkageName: "_ZSt14__copy_move_a2ILb0EPKlPlET1_T0_S4_S3_", scope: !31, file: !3956, line: 486, type: !4016, scopeLine: 487, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, templateParams: !4018, retainedNodes: !212)
!4041 = !DILocalVariable(name: "__first", arg: 1, scope: !4040, file: !3956, line: 486, type: !341)
!4042 = !DILocation(line: 486, column: 24, scope: !4040)
!4043 = !DILocalVariable(name: "__last", arg: 2, scope: !4040, file: !3956, line: 486, type: !341)
!4044 = !DILocation(line: 486, column: 37, scope: !4040)
!4045 = !DILocalVariable(name: "__result", arg: 3, scope: !4040, file: !3956, line: 486, type: !309)
!4046 = !DILocation(line: 486, column: 49, scope: !4040)
!4047 = !DILocation(line: 495, column: 31, scope: !4040)
!4048 = !DILocation(line: 495, column: 40, scope: !4040)
!4049 = !DILocation(line: 495, column: 48, scope: !4040)
!4050 = !DILocation(line: 494, column: 14, scope: !4040)
!4051 = !DILocation(line: 494, column: 7, scope: !4040)
!4052 = distinct !DISubprogram(name: "__copy_m<long>", linkageName: "_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIlEEPT_PKS3_S6_S4_", scope: !4053, file: !3956, line: 420, type: !4016, scopeLine: 421, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, templateParams: !356, declaration: !4057, retainedNodes: !212)
!4053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__copy_move<false, true, std::random_access_iterator_tag>", scope: !31, file: !3956, line: 415, size: 8, flags: DIFlagTypePassByValue, elements: !212, templateParams: !4054, identifier: "_ZTSSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE")
!4054 = !{!3985, !4055, !4056}
!4055 = !DITemplateValueParameter(name: "_IsSimple", type: !53, value: i1 true)
!4056 = !DITemplateTypeParameter(name: "_Category", type: !2843)
!4057 = !DISubprogram(name: "__copy_m<long>", linkageName: "_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIlEEPT_PKS3_S6_S4_", scope: !4053, file: !3956, line: 420, type: !4016, scopeLine: 420, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0, templateParams: !356)
!4058 = !DILocalVariable(name: "__first", arg: 1, scope: !4052, file: !3956, line: 420, type: !341)
!4059 = !DILocation(line: 420, column: 22, scope: !4052)
!4060 = !DILocalVariable(name: "__last", arg: 2, scope: !4052, file: !3956, line: 420, type: !341)
!4061 = !DILocation(line: 420, column: 42, scope: !4052)
!4062 = !DILocalVariable(name: "__result", arg: 3, scope: !4052, file: !3956, line: 420, type: !309)
!4063 = !DILocation(line: 420, column: 55, scope: !4052)
!4064 = !DILocalVariable(name: "_Num", scope: !4052, file: !3956, line: 429, type: !4065)
!4065 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !680)
!4066 = !DILocation(line: 429, column: 20, scope: !4052)
!4067 = !DILocation(line: 429, column: 27, scope: !4052)
!4068 = !DILocation(line: 429, column: 36, scope: !4052)
!4069 = !DILocation(line: 429, column: 34, scope: !4052)
!4070 = !DILocation(line: 430, column: 8, scope: !4071)
!4071 = distinct !DILexicalBlock(scope: !4052, file: !3956, line: 430, column: 8)
!4072 = !DILocation(line: 430, column: 8, scope: !4052)
!4073 = !DILocation(line: 431, column: 24, scope: !4071)
!4074 = !DILocation(line: 431, column: 6, scope: !4071)
!4075 = !DILocation(line: 431, column: 34, scope: !4071)
!4076 = !DILocation(line: 431, column: 57, scope: !4071)
!4077 = !DILocation(line: 431, column: 55, scope: !4071)
!4078 = !DILocation(line: 432, column: 11, scope: !4052)
!4079 = !DILocation(line: 432, column: 22, scope: !4052)
!4080 = !DILocation(line: 432, column: 20, scope: !4052)
!4081 = !DILocation(line: 432, column: 4, scope: !4052)
!4082 = distinct !DISubprogram(name: "_Vector_impl", linkageName: "_ZNSt12_Vector_baseIlSaIlEE12_Vector_implC2ERKS0_", scope: !294, file: !288, line: 136, type: !433, scopeLine: 138, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !432, retainedNodes: !212)
!4083 = !DILocalVariable(name: "this", arg: 1, scope: !4082, type: !3601, flags: DIFlagArtificial | DIFlagObjectPointer)
!4084 = !DILocation(line: 0, scope: !4082)
!4085 = !DILocalVariable(name: "__a", arg: 2, scope: !4082, file: !288, line: 136, type: !435)
!4086 = !DILocation(line: 136, column: 37, scope: !4082)
!4087 = !DILocation(line: 138, column: 2, scope: !4082)
!4088 = !DILocation(line: 137, column: 19, scope: !4082)
!4089 = !DILocation(line: 137, column: 4, scope: !4082)
!4090 = !DILocation(line: 136, column: 2, scope: !4082)
!4091 = !DILocation(line: 138, column: 4, scope: !4082)
!4092 = distinct !DISubprogram(name: "_M_create_storage", linkageName: "_ZNSt12_Vector_baseIlSaIlEE17_M_create_storageEm", scope: !291, file: !288, line: 359, type: !471, scopeLine: 360, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !496, retainedNodes: !212)
!4093 = !DILocalVariable(name: "this", arg: 1, scope: !4092, type: !3549, flags: DIFlagArtificial | DIFlagObjectPointer)
!4094 = !DILocation(line: 0, scope: !4092)
!4095 = !DILocalVariable(name: "__n", arg: 2, scope: !4092, file: !288, line: 359, type: !210)
!4096 = !DILocation(line: 359, column: 32, scope: !4092)
!4097 = !DILocation(line: 361, column: 45, scope: !4092)
!4098 = !DILocation(line: 361, column: 33, scope: !4092)
!4099 = !DILocation(line: 361, column: 8, scope: !4092)
!4100 = !DILocation(line: 361, column: 2, scope: !4092)
!4101 = !DILocation(line: 361, column: 16, scope: !4092)
!4102 = !DILocation(line: 361, column: 25, scope: !4092)
!4103 = !DILocation(line: 362, column: 34, scope: !4092)
!4104 = !DILocation(line: 362, column: 28, scope: !4092)
!4105 = !DILocation(line: 362, column: 42, scope: !4092)
!4106 = !DILocation(line: 362, column: 8, scope: !4092)
!4107 = !DILocation(line: 362, column: 2, scope: !4092)
!4108 = !DILocation(line: 362, column: 16, scope: !4092)
!4109 = !DILocation(line: 362, column: 26, scope: !4092)
!4110 = !DILocation(line: 363, column: 42, scope: !4092)
!4111 = !DILocation(line: 363, column: 36, scope: !4092)
!4112 = !DILocation(line: 363, column: 50, scope: !4092)
!4113 = !DILocation(line: 363, column: 61, scope: !4092)
!4114 = !DILocation(line: 363, column: 59, scope: !4092)
!4115 = !DILocation(line: 363, column: 8, scope: !4092)
!4116 = !DILocation(line: 363, column: 2, scope: !4092)
!4117 = !DILocation(line: 363, column: 16, scope: !4092)
!4118 = !DILocation(line: 363, column: 34, scope: !4092)
!4119 = !DILocation(line: 364, column: 7, scope: !4092)
!4120 = distinct !DISubprogram(name: "_M_allocate", linkageName: "_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm", scope: !291, file: !288, line: 343, type: !491, scopeLine: 344, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !490, retainedNodes: !212)
!4121 = !DILocalVariable(name: "this", arg: 1, scope: !4120, type: !3549, flags: DIFlagArtificial | DIFlagObjectPointer)
!4122 = !DILocation(line: 0, scope: !4120)
!4123 = !DILocalVariable(name: "__n", arg: 2, scope: !4120, file: !288, line: 343, type: !210)
!4124 = !DILocation(line: 343, column: 26, scope: !4120)
!4125 = !DILocation(line: 346, column: 9, scope: !4120)
!4126 = !DILocation(line: 346, column: 13, scope: !4120)
!4127 = !DILocation(line: 346, column: 34, scope: !4120)
!4128 = !DILocation(line: 346, column: 43, scope: !4120)
!4129 = !DILocation(line: 346, column: 20, scope: !4120)
!4130 = !DILocation(line: 346, column: 2, scope: !4120)
!4131 = distinct !DISubprogram(name: "allocate", linkageName: "_ZNSt16allocator_traitsISaIlEE8allocateERS0_m", scope: !303, file: !236, line: 463, type: !306, scopeLine: 464, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !305, retainedNodes: !212)
!4132 = !DILocalVariable(name: "__a", arg: 1, scope: !4131, file: !236, line: 463, type: !310)
!4133 = !DILocation(line: 463, column: 32, scope: !4131)
!4134 = !DILocalVariable(name: "__n", arg: 2, scope: !4131, file: !236, line: 463, type: !247)
!4135 = !DILocation(line: 463, column: 47, scope: !4131)
!4136 = !DILocation(line: 464, column: 16, scope: !4131)
!4137 = !DILocation(line: 464, column: 29, scope: !4131)
!4138 = !DILocation(line: 464, column: 20, scope: !4131)
!4139 = !DILocation(line: 464, column: 9, scope: !4131)
!4140 = distinct !DISubprogram(name: "allocate", linkageName: "_ZN9__gnu_cxx13new_allocatorIlE8allocateEmPKv", scope: !317, file: !318, line: 103, type: !346, scopeLine: 104, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !345, retainedNodes: !212)
!4141 = !DILocalVariable(name: "this", arg: 1, scope: !4140, type: !3620, flags: DIFlagArtificial | DIFlagObjectPointer)
!4142 = !DILocation(line: 0, scope: !4140)
!4143 = !DILocalVariable(name: "__n", arg: 2, scope: !4140, file: !318, line: 103, type: !348)
!4144 = !DILocation(line: 103, column: 26, scope: !4140)
!4145 = !DILocalVariable(arg: 3, scope: !4140, file: !318, line: 103, type: !45)
!4146 = !DILocation(line: 103, column: 43, scope: !4140)
!4147 = !DILocation(line: 111, column: 23, scope: !4148)
!4148 = distinct !DILexicalBlock(scope: !4140, file: !318, line: 111, column: 6)
!4149 = !DILocation(line: 111, column: 35, scope: !4148)
!4150 = !DILocation(line: 111, column: 27, scope: !4148)
!4151 = !DILocation(line: 111, column: 6, scope: !4140)
!4152 = !DILocation(line: 115, column: 10, scope: !4153)
!4153 = distinct !DILexicalBlock(scope: !4154, file: !318, line: 115, column: 10)
!4154 = distinct !DILexicalBlock(scope: !4148, file: !318, line: 112, column: 4)
!4155 = !DILocation(line: 115, column: 14, scope: !4153)
!4156 = !DILocation(line: 115, column: 10, scope: !4154)
!4157 = !DILocation(line: 116, column: 8, scope: !4153)
!4158 = !DILocation(line: 117, column: 6, scope: !4154)
!4159 = !DILocation(line: 127, column: 42, scope: !4140)
!4160 = !DILocation(line: 127, column: 46, scope: !4140)
!4161 = !DILocation(line: 127, column: 27, scope: !4140)
!4162 = !DILocation(line: 127, column: 9, scope: !4140)
!4163 = !DILocation(line: 127, column: 2, scope: !4140)
!4164 = distinct !DISubprogram(name: "_M_max_size", linkageName: "_ZNK9__gnu_cxx13new_allocatorIlE11_M_max_sizeEv", scope: !317, file: !318, line: 197, type: !353, scopeLine: 198, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !355, retainedNodes: !212)
!4165 = !DILocalVariable(name: "this", arg: 1, scope: !4164, type: !4166, flags: DIFlagArtificial | DIFlagObjectPointer)
!4166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!4167 = !DILocation(line: 0, scope: !4164)
!4168 = !DILocation(line: 200, column: 2, scope: !4164)
!4169 = distinct !DISubprogram(name: "allocator", linkageName: "_ZNSaIlEC2ERKS_", scope: !312, file: !246, line: 159, type: !363, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !362, retainedNodes: !212)
!4170 = !DILocalVariable(name: "this", arg: 1, scope: !4169, type: !3383, flags: DIFlagArtificial | DIFlagObjectPointer)
!4171 = !DILocation(line: 0, scope: !4169)
!4172 = !DILocalVariable(name: "__a", arg: 2, scope: !4169, file: !246, line: 159, type: !365)
!4173 = !DILocation(line: 159, column: 34, scope: !4169)
!4174 = !DILocation(line: 160, column: 36, scope: !4169)
!4175 = !DILocation(line: 160, column: 31, scope: !4169)
!4176 = !DILocation(line: 160, column: 9, scope: !4169)
!4177 = !DILocation(line: 160, column: 38, scope: !4169)
!4178 = distinct !DISubprogram(name: "_Vector_impl_data", linkageName: "_ZNSt12_Vector_baseIlSaIlEE17_Vector_impl_dataC2Ev", scope: !404, file: !288, line: 97, type: !412, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !411, retainedNodes: !212)
!4179 = !DILocalVariable(name: "this", arg: 1, scope: !4178, type: !4180, flags: DIFlagArtificial | DIFlagObjectPointer)
!4180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!4181 = !DILocation(line: 0, scope: !4178)
!4182 = !DILocation(line: 98, column: 4, scope: !4178)
!4183 = !DILocation(line: 98, column: 16, scope: !4178)
!4184 = !DILocation(line: 98, column: 29, scope: !4178)
!4185 = !DILocation(line: 99, column: 4, scope: !4178)
!4186 = distinct !DISubprogram(name: "new_allocator", linkageName: "_ZN9__gnu_cxx13new_allocatorIlEC2ERKS1_", scope: !317, file: !318, line: 82, type: !325, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !324, retainedNodes: !212)
!4187 = !DILocalVariable(name: "this", arg: 1, scope: !4186, type: !3620, flags: DIFlagArtificial | DIFlagObjectPointer)
!4188 = !DILocation(line: 0, scope: !4186)
!4189 = !DILocalVariable(arg: 2, scope: !4186, file: !318, line: 82, type: !327)
!4190 = !DILocation(line: 82, column: 41, scope: !4186)
!4191 = !DILocation(line: 82, column: 67, scope: !4186)
!4192 = distinct !DISubprogram(name: "select_on_container_copy_construction", linkageName: "_ZNSt16allocator_traitsISaIlEE37select_on_container_copy_constructionERKS0_", scope: !303, file: !236, line: 562, type: !385, scopeLine: 563, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !384, retainedNodes: !212)
!4193 = !DILocalVariable(name: "__rhs", arg: 1, scope: !4192, file: !236, line: 562, type: !382)
!4194 = !DILocation(line: 562, column: 67, scope: !4192)
!4195 = !DILocation(line: 563, column: 16, scope: !4192)
!4196 = !DILocation(line: 563, column: 9, scope: !4192)
!4197 = distinct !DISubprogram(name: "~new_allocator", linkageName: "_ZN9__gnu_cxx13new_allocatorIlED2Ev", scope: !317, file: !318, line: 89, type: !321, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !329, retainedNodes: !212)
!4198 = !DILocalVariable(name: "this", arg: 1, scope: !4197, type: !3620, flags: DIFlagArtificial | DIFlagObjectPointer)
!4199 = !DILocation(line: 0, scope: !4197)
!4200 = !DILocation(line: 89, column: 48, scope: !4197)
!4201 = distinct !DISubprogram(name: "_S_check_init_len", linkageName: "_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_", scope: !287, file: !288, line: 1767, type: !865, scopeLine: 1768, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !864, retainedNodes: !212)
!4202 = !DILocalVariable(name: "__n", arg: 1, scope: !4201, file: !288, line: 1767, type: !559)
!4203 = !DILocation(line: 1767, column: 35, scope: !4201)
!4204 = !DILocalVariable(name: "__a", arg: 2, scope: !4201, file: !288, line: 1767, type: !553)
!4205 = !DILocation(line: 1767, column: 62, scope: !4201)
!4206 = !DILocation(line: 1769, column: 6, scope: !4207)
!4207 = distinct !DILexicalBlock(scope: !4201, file: !288, line: 1769, column: 6)
!4208 = !DILocation(line: 1769, column: 39, scope: !4207)
!4209 = !DILocation(line: 1769, column: 24, scope: !4207)
!4210 = !DILocation(line: 1769, column: 12, scope: !4207)
!4211 = !DILocation(line: 1769, column: 10, scope: !4207)
!4212 = !DILocation(line: 1769, column: 6, scope: !4201)
!4213 = !DILocation(line: 1770, column: 4, scope: !4207)
!4214 = !DILocation(line: 1772, column: 9, scope: !4201)
!4215 = !DILocation(line: 1772, column: 2, scope: !4201)
!4216 = distinct !DISubprogram(name: "_M_default_initialize", linkageName: "_ZNSt6vectorIlSaIlEE21_M_default_initializeEm", scope: !287, file: !288, line: 1603, type: !775, scopeLine: 1604, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !849, retainedNodes: !212)
!4217 = !DILocalVariable(name: "this", arg: 1, scope: !4216, type: !3390, flags: DIFlagArtificial | DIFlagObjectPointer)
!4218 = !DILocation(line: 0, scope: !4216)
!4219 = !DILocalVariable(name: "__n", arg: 2, scope: !4216, file: !288, line: 1603, type: !559)
!4220 = !DILocation(line: 1603, column: 39, scope: !4216)
!4221 = !DILocation(line: 1606, column: 43, scope: !4216)
!4222 = !DILocation(line: 1606, column: 37, scope: !4216)
!4223 = !DILocation(line: 1606, column: 51, scope: !4216)
!4224 = !DILocation(line: 1606, column: 61, scope: !4216)
!4225 = !DILocation(line: 1607, column: 9, scope: !4216)
!4226 = !DILocation(line: 1606, column: 4, scope: !4216)
!4227 = !DILocation(line: 1605, column: 8, scope: !4216)
!4228 = !DILocation(line: 1605, column: 2, scope: !4216)
!4229 = !DILocation(line: 1605, column: 16, scope: !4216)
!4230 = !DILocation(line: 1605, column: 26, scope: !4216)
!4231 = !DILocation(line: 1608, column: 7, scope: !4216)
!4232 = distinct !DISubprogram(name: "__uninitialized_default_n_a<long *, unsigned long, long>", linkageName: "_ZSt27__uninitialized_default_n_aIPlmlET_S1_T0_RSaIT1_E", scope: !31, file: !3904, line: 702, type: !4233, scopeLine: 704, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, templateParams: !4235, retainedNodes: !212)
!4233 = !DISubroutineType(types: !4234)
!4234 = !{!309, !309, !21, !370}
!4235 = !{!3558, !4236, !357}
!4236 = !DITemplateTypeParameter(name: "_Size", type: !21)
!4237 = !DILocalVariable(name: "__first", arg: 1, scope: !4232, file: !3904, line: 702, type: !309)
!4238 = !DILocation(line: 702, column: 50, scope: !4232)
!4239 = !DILocalVariable(name: "__n", arg: 2, scope: !4232, file: !3904, line: 702, type: !21)
!4240 = !DILocation(line: 702, column: 65, scope: !4232)
!4241 = !DILocalVariable(arg: 3, scope: !4232, file: !3904, line: 703, type: !370)
!4242 = !DILocation(line: 703, column: 20, scope: !4232)
!4243 = !DILocation(line: 704, column: 45, scope: !4232)
!4244 = !DILocation(line: 704, column: 54, scope: !4232)
!4245 = !DILocation(line: 704, column: 14, scope: !4232)
!4246 = !DILocation(line: 704, column: 7, scope: !4232)
!4247 = distinct !DISubprogram(name: "__uninitialized_default_n<long *, unsigned long>", linkageName: "_ZSt25__uninitialized_default_nIPlmET_S1_T0_", scope: !31, file: !3904, line: 630, type: !4248, scopeLine: 631, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, templateParams: !4250, retainedNodes: !212)
!4248 = !DISubroutineType(types: !4249)
!4249 = !{!309, !309, !21}
!4250 = !{!3558, !4236}
!4251 = !DILocalVariable(name: "__first", arg: 1, scope: !4247, file: !3904, line: 630, type: !309)
!4252 = !DILocation(line: 630, column: 48, scope: !4247)
!4253 = !DILocalVariable(name: "__n", arg: 2, scope: !4247, file: !3904, line: 630, type: !21)
!4254 = !DILocation(line: 630, column: 63, scope: !4247)
!4255 = !DILocalVariable(name: "__can_fill", scope: !4247, file: !3904, line: 635, type: !506)
!4256 = !DILocation(line: 635, column: 22, scope: !4247)
!4257 = !DILocation(line: 640, column: 21, scope: !4247)
!4258 = !DILocation(line: 640, column: 30, scope: !4247)
!4259 = !DILocation(line: 638, column: 14, scope: !4247)
!4260 = !DILocation(line: 638, column: 7, scope: !4247)
!4261 = distinct !DISubprogram(name: "__uninit_default_n<long *, unsigned long>", linkageName: "_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPlmEET_S3_T0_", scope: !4262, file: !3904, line: 595, type: !4248, scopeLine: 596, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, templateParams: !4250, declaration: !4265, retainedNodes: !212)
!4262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__uninitialized_default_n_1<true>", scope: !31, file: !3904, line: 591, size: 8, flags: DIFlagTypePassByValue, elements: !212, templateParams: !4263, identifier: "_ZTSSt27__uninitialized_default_n_1ILb1EE")
!4263 = !{!4264}
!4264 = !DITemplateValueParameter(name: "_TrivialValueType", type: !53, value: i1 true)
!4265 = !DISubprogram(name: "__uninit_default_n<long *, unsigned long>", linkageName: "_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPlmEET_S3_T0_", scope: !4262, file: !3904, line: 595, type: !4248, scopeLine: 595, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0, templateParams: !4250)
!4266 = !DILocalVariable(name: "__first", arg: 1, scope: !4261, file: !3904, line: 595, type: !309)
!4267 = !DILocation(line: 595, column: 45, scope: !4261)
!4268 = !DILocalVariable(name: "__n", arg: 2, scope: !4261, file: !3904, line: 595, type: !21)
!4269 = !DILocation(line: 595, column: 60, scope: !4261)
!4270 = !DILocation(line: 597, column: 8, scope: !4271)
!4271 = distinct !DILexicalBlock(scope: !4261, file: !3904, line: 597, column: 8)
!4272 = !DILocation(line: 597, column: 12, scope: !4271)
!4273 = !DILocation(line: 597, column: 8, scope: !4261)
!4274 = !DILocalVariable(name: "__val", scope: !4275, file: !3904, line: 599, type: !4276)
!4275 = distinct !DILexicalBlock(scope: !4271, file: !3904, line: 598, column: 6)
!4276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4277, size: 64)
!4277 = !DIDerivedType(tag: DW_TAG_typedef, name: "value_type", scope: !656, file: !655, line: 213, baseType: !68)
!4278 = !DILocation(line: 599, column: 64, scope: !4275)
!4279 = !DILocation(line: 600, column: 23, scope: !4275)
!4280 = !DILocation(line: 600, column: 5, scope: !4275)
!4281 = !DILocation(line: 601, column: 24, scope: !4275)
!4282 = !DILocation(line: 601, column: 8, scope: !4275)
!4283 = !DILocation(line: 602, column: 8, scope: !4275)
!4284 = !DILocation(line: 603, column: 30, scope: !4275)
!4285 = !DILocation(line: 603, column: 39, scope: !4275)
!4286 = !DILocation(line: 603, column: 43, scope: !4275)
!4287 = !DILocation(line: 603, column: 49, scope: !4275)
!4288 = !DILocation(line: 603, column: 18, scope: !4275)
!4289 = !DILocation(line: 603, column: 16, scope: !4275)
!4290 = !DILocation(line: 604, column: 6, scope: !4275)
!4291 = !DILocation(line: 605, column: 11, scope: !4261)
!4292 = !DILocation(line: 605, column: 4, scope: !4261)
!4293 = distinct !DISubprogram(name: "__addressof<long>", linkageName: "_ZSt11__addressofIlEPT_RS0_", scope: !31, file: !3508, line: 49, type: !4294, scopeLine: 50, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, templateParams: !356, retainedNodes: !212)
!4294 = !DISubroutineType(types: !4295)
!4295 = !{!309, !336}
!4296 = !DILocalVariable(name: "__r", arg: 1, scope: !4293, file: !3508, line: 49, type: !336)
!4297 = !DILocation(line: 49, column: 22, scope: !4293)
!4298 = !DILocation(line: 50, column: 34, scope: !4293)
!4299 = !DILocation(line: 50, column: 7, scope: !4293)
!4300 = distinct !DISubprogram(name: "_Construct<long>", linkageName: "_ZSt10_ConstructIlJEEvPT_DpOT0_", scope: !31, file: !3630, line: 109, type: !4301, scopeLine: 110, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, templateParams: !4303, retainedNodes: !212)
!4301 = !DISubroutineType(types: !4302)
!4302 = !{null, !309}
!4303 = !{!357, !4304}
!4304 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Args", value: !212)
!4305 = !DILocalVariable(name: "__p", arg: 1, scope: !4300, file: !3630, line: 109, type: !309)
!4306 = !DILocation(line: 109, column: 21, scope: !4300)
!4307 = !DILocation(line: 119, column: 20, scope: !4300)
!4308 = !DILocation(line: 119, column: 7, scope: !4300)
!4309 = !DILocation(line: 120, column: 5, scope: !4300)
!4310 = distinct !DISubprogram(name: "fill_n<long *, unsigned long, long>", linkageName: "_ZSt6fill_nIPlmlET_S1_T0_RKT1_", scope: !31, file: !3956, line: 1144, type: !4311, scopeLine: 1145, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, templateParams: !4313, retainedNodes: !212)
!4311 = !DISubroutineType(types: !4312)
!4312 = !{!309, !309, !21, !344}
!4313 = !{!3959, !4236, !357}
!4314 = !DILocalVariable(name: "__first", arg: 1, scope: !4310, file: !3956, line: 1144, type: !309)
!4315 = !DILocation(line: 1144, column: 16, scope: !4310)
!4316 = !DILocalVariable(name: "__n", arg: 2, scope: !4310, file: !3956, line: 1144, type: !21)
!4317 = !DILocation(line: 1144, column: 31, scope: !4310)
!4318 = !DILocalVariable(name: "__value", arg: 3, scope: !4310, file: !3956, line: 1144, type: !344)
!4319 = !DILocation(line: 1144, column: 47, scope: !4310)
!4320 = !DILocation(line: 1149, column: 30, scope: !4310)
!4321 = !DILocation(line: 1149, column: 62, scope: !4310)
!4322 = !DILocation(line: 1149, column: 39, scope: !4310)
!4323 = !DILocation(line: 1149, column: 68, scope: !4310)
!4324 = !DILocation(line: 1150, column: 11, scope: !4310)
!4325 = !DILocation(line: 1149, column: 14, scope: !4310)
!4326 = !DILocation(line: 1149, column: 7, scope: !4310)
!4327 = distinct !DISubprogram(name: "__size_to_integer", linkageName: "_ZSt17__size_to_integerm", scope: !31, file: !3956, line: 1010, type: !4328, scopeLine: 1010, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, retainedNodes: !212)
!4328 = !DISubroutineType(types: !4329)
!4329 = !{!21, !21}
!4330 = !DILocalVariable(name: "__n", arg: 1, scope: !4327, file: !3956, line: 1010, type: !21)
!4331 = !DILocation(line: 1010, column: 35, scope: !4327)
!4332 = !DILocation(line: 1010, column: 49, scope: !4327)
!4333 = !DILocation(line: 1010, column: 42, scope: !4327)
!4334 = distinct !DISubprogram(name: "__iterator_category<long *>", linkageName: "_ZSt19__iterator_categoryIPlENSt15iterator_traitsIT_E17iterator_categoryERKS2_", scope: !31, file: !655, line: 238, type: !4335, scopeLine: 239, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, templateParams: !4338, retainedNodes: !212)
!4335 = !DISubroutineType(types: !4336)
!4336 = !{!4337, !648}
!4337 = !DIDerivedType(tag: DW_TAG_typedef, name: "iterator_category", scope: !656, file: !655, line: 212, baseType: !2843)
!4338 = !{!4339}
!4339 = !DITemplateTypeParameter(name: "_Iter", type: !309)
!4340 = !DILocalVariable(arg: 1, scope: !4334, file: !655, line: 238, type: !648)
!4341 = !DILocation(line: 238, column: 37, scope: !4334)
!4342 = !DILocation(line: 239, column: 7, scope: !4334)
!4343 = distinct !DISubprogram(name: "__fill_n_a<long *, unsigned long, long>", linkageName: "_ZSt10__fill_n_aIPlmlET_S1_T0_RKT1_St26random_access_iterator_tag", scope: !31, file: !3956, line: 1109, type: !4344, scopeLine: 1111, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, templateParams: !4346, retainedNodes: !212)
!4344 = !DISubroutineType(types: !4345)
!4345 = !{!309, !309, !21, !344, !2843}
!4346 = !{!4347, !4236, !357}
!4347 = !DITemplateTypeParameter(name: "_OutputIterator", type: !309)
!4348 = !DILocalVariable(name: "__first", arg: 1, scope: !4343, file: !3956, line: 1109, type: !309)
!4349 = !DILocation(line: 1109, column: 32, scope: !4343)
!4350 = !DILocalVariable(name: "__n", arg: 2, scope: !4343, file: !3956, line: 1109, type: !21)
!4351 = !DILocation(line: 1109, column: 47, scope: !4343)
!4352 = !DILocalVariable(name: "__value", arg: 3, scope: !4343, file: !3956, line: 1109, type: !344)
!4353 = !DILocation(line: 1109, column: 63, scope: !4343)
!4354 = !DILocalVariable(arg: 4, scope: !4343, file: !3956, line: 1110, type: !2843)
!4355 = !DILocation(line: 1110, column: 40, scope: !4343)
!4356 = !DILocation(line: 1115, column: 11, scope: !4357)
!4357 = distinct !DILexicalBlock(scope: !4343, file: !3956, line: 1115, column: 11)
!4358 = !DILocation(line: 1115, column: 15, scope: !4357)
!4359 = !DILocation(line: 1115, column: 11, scope: !4343)
!4360 = !DILocation(line: 1116, column: 9, scope: !4357)
!4361 = !DILocation(line: 1116, column: 2, scope: !4357)
!4362 = !DILocation(line: 1120, column: 21, scope: !4343)
!4363 = !DILocation(line: 1120, column: 30, scope: !4343)
!4364 = !DILocation(line: 1120, column: 40, scope: !4343)
!4365 = !DILocation(line: 1120, column: 38, scope: !4343)
!4366 = !DILocation(line: 1120, column: 45, scope: !4343)
!4367 = !DILocation(line: 1120, column: 7, scope: !4343)
!4368 = !DILocation(line: 1121, column: 14, scope: !4343)
!4369 = !DILocation(line: 1121, column: 24, scope: !4343)
!4370 = !DILocation(line: 1121, column: 22, scope: !4343)
!4371 = !DILocation(line: 1121, column: 7, scope: !4343)
!4372 = !DILocation(line: 1122, column: 5, scope: !4343)
!4373 = distinct !DISubprogram(name: "__fill_a<long *, long>", linkageName: "_ZSt8__fill_aIPllEvT_S1_RKT0_", scope: !31, file: !3956, line: 968, type: !4374, scopeLine: 969, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, templateParams: !4376, retainedNodes: !212)
!4374 = !DISubroutineType(types: !4375)
!4375 = !{null, !309, !309, !344}
!4376 = !{!4377, !357}
!4377 = !DITemplateTypeParameter(name: "_FIte", type: !309)
!4378 = !DILocalVariable(name: "__first", arg: 1, scope: !4373, file: !3956, line: 968, type: !309)
!4379 = !DILocation(line: 968, column: 20, scope: !4373)
!4380 = !DILocalVariable(name: "__last", arg: 2, scope: !4373, file: !3956, line: 968, type: !309)
!4381 = !DILocation(line: 968, column: 35, scope: !4373)
!4382 = !DILocalVariable(name: "__value", arg: 3, scope: !4373, file: !3956, line: 968, type: !344)
!4383 = !DILocation(line: 968, column: 54, scope: !4373)
!4384 = !DILocation(line: 969, column: 22, scope: !4373)
!4385 = !DILocation(line: 969, column: 31, scope: !4373)
!4386 = !DILocation(line: 969, column: 39, scope: !4373)
!4387 = !DILocation(line: 969, column: 7, scope: !4373)
!4388 = !DILocation(line: 969, column: 49, scope: !4373)
!4389 = distinct !DISubprogram(name: "__fill_a1<long *, long>", linkageName: "_ZSt9__fill_a1IPllEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_", scope: !31, file: !3956, line: 919, type: !4390, scopeLine: 921, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, templateParams: !3557, retainedNodes: !212)
!4390 = !DISubroutineType(types: !4391)
!4391 = !{!4392, !309, !309, !344}
!4392 = !DIDerivedType(tag: DW_TAG_typedef, name: "__type", scope: !4393, file: !2812, line: 50, baseType: null)
!4393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__enable_if<true, void>", scope: !94, file: !2812, line: 49, size: 8, flags: DIFlagTypePassByValue, elements: !212, templateParams: !4394, identifier: "_ZTSN9__gnu_cxx11__enable_ifILb1EvEE")
!4394 = !{!3645, !4395}
!4395 = !DITemplateTypeParameter(type: null)
!4396 = !DILocalVariable(name: "__first", arg: 1, scope: !4389, file: !3956, line: 919, type: !309)
!4397 = !DILocation(line: 919, column: 32, scope: !4389)
!4398 = !DILocalVariable(name: "__last", arg: 2, scope: !4389, file: !3956, line: 919, type: !309)
!4399 = !DILocation(line: 919, column: 58, scope: !4389)
!4400 = !DILocalVariable(name: "__value", arg: 3, scope: !4389, file: !3956, line: 920, type: !344)
!4401 = !DILocation(line: 920, column: 19, scope: !4389)
!4402 = !DILocalVariable(name: "__tmp", scope: !4389, file: !3956, line: 922, type: !342)
!4403 = !DILocation(line: 922, column: 17, scope: !4389)
!4404 = !DILocation(line: 922, column: 25, scope: !4389)
!4405 = !DILocation(line: 923, column: 7, scope: !4389)
!4406 = !DILocation(line: 923, column: 14, scope: !4407)
!4407 = distinct !DILexicalBlock(scope: !4408, file: !3956, line: 923, column: 7)
!4408 = distinct !DILexicalBlock(scope: !4389, file: !3956, line: 923, column: 7)
!4409 = !DILocation(line: 923, column: 25, scope: !4407)
!4410 = !DILocation(line: 923, column: 22, scope: !4407)
!4411 = !DILocation(line: 923, column: 7, scope: !4408)
!4412 = !DILocation(line: 924, column: 13, scope: !4407)
!4413 = !DILocation(line: 924, column: 3, scope: !4407)
!4414 = !DILocation(line: 924, column: 11, scope: !4407)
!4415 = !DILocation(line: 924, column: 2, scope: !4407)
!4416 = !DILocation(line: 923, column: 33, scope: !4407)
!4417 = !DILocation(line: 923, column: 7, scope: !4407)
!4418 = distinct !{!4418, !4411, !4419}
!4419 = !DILocation(line: 924, column: 13, scope: !4408)
!4420 = !DILocation(line: 925, column: 5, scope: !4389)
!4421 = distinct !DISubprogram(name: "_S_max_size", linkageName: "_ZNSt6vectorIlSaIlEE11_S_max_sizeERKS0_", scope: !287, file: !288, line: 1776, type: !868, scopeLine: 1777, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !867, retainedNodes: !212)
!4422 = !DILocalVariable(name: "__a", arg: 1, scope: !4421, file: !288, line: 1776, type: !870)
!4423 = !DILocation(line: 1776, column: 41, scope: !4421)
!4424 = !DILocalVariable(name: "__diffmax", scope: !4421, file: !288, line: 1781, type: !4425)
!4425 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !210)
!4426 = !DILocation(line: 1781, column: 15, scope: !4421)
!4427 = !DILocalVariable(name: "__allocmax", scope: !4421, file: !288, line: 1783, type: !4425)
!4428 = !DILocation(line: 1783, column: 15, scope: !4421)
!4429 = !DILocation(line: 1783, column: 52, scope: !4421)
!4430 = !DILocation(line: 1783, column: 28, scope: !4421)
!4431 = !DILocation(line: 1784, column: 9, scope: !4421)
!4432 = !DILocation(line: 1784, column: 2, scope: !4421)
!4433 = distinct !DISubprogram(name: "max_size", linkageName: "_ZNSt16allocator_traitsISaIlEE8max_sizeERKS0_", scope: !303, file: !236, line: 547, type: !379, scopeLine: 548, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !378, retainedNodes: !212)
!4434 = !DILocalVariable(name: "__a", arg: 1, scope: !4433, file: !236, line: 547, type: !382)
!4435 = !DILocation(line: 547, column: 38, scope: !4433)
!4436 = !DILocation(line: 550, column: 9, scope: !4433)
!4437 = !DILocation(line: 550, column: 13, scope: !4433)
!4438 = !DILocation(line: 550, column: 2, scope: !4433)
!4439 = distinct !DISubprogram(name: "min<unsigned long>", linkageName: "_ZSt3minImERKT_S2_S2_", scope: !31, file: !3956, line: 230, type: !4440, scopeLine: 231, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, templateParams: !3199, retainedNodes: !212)
!4440 = !DISubroutineType(types: !4441)
!4441 = !{!4442, !4442, !4442}
!4442 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !4443, size: 64)
!4443 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!4444 = !DILocalVariable(name: "__a", arg: 1, scope: !4439, file: !3956, line: 230, type: !4442)
!4445 = !DILocation(line: 230, column: 20, scope: !4439)
!4446 = !DILocalVariable(name: "__b", arg: 2, scope: !4439, file: !3956, line: 230, type: !4442)
!4447 = !DILocation(line: 230, column: 36, scope: !4439)
!4448 = !DILocation(line: 235, column: 11, scope: !4449)
!4449 = distinct !DILexicalBlock(scope: !4439, file: !3956, line: 235, column: 11)
!4450 = !DILocation(line: 235, column: 17, scope: !4449)
!4451 = !DILocation(line: 235, column: 15, scope: !4449)
!4452 = !DILocation(line: 235, column: 11, scope: !4439)
!4453 = !DILocation(line: 236, column: 9, scope: !4449)
!4454 = !DILocation(line: 236, column: 2, scope: !4449)
!4455 = !DILocation(line: 237, column: 14, scope: !4439)
!4456 = !DILocation(line: 237, column: 7, scope: !4439)
!4457 = !DILocation(line: 238, column: 5, scope: !4439)
!4458 = distinct !DISubprogram(name: "max_size", linkageName: "_ZNK9__gnu_cxx13new_allocatorIlE8max_sizeEv", scope: !317, file: !318, line: 154, type: !353, scopeLine: 155, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !352, retainedNodes: !212)
!4459 = !DILocalVariable(name: "this", arg: 1, scope: !4458, type: !4166, flags: DIFlagArtificial | DIFlagObjectPointer)
!4460 = !DILocation(line: 0, scope: !4458)
!4461 = !DILocation(line: 155, column: 16, scope: !4458)
!4462 = !DILocation(line: 155, column: 9, scope: !4458)
!4463 = distinct !DISubprogram(name: "new_allocator", linkageName: "_ZN9__gnu_cxx13new_allocatorIlEC2Ev", scope: !317, file: !318, line: 79, type: !321, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !320, retainedNodes: !212)
!4464 = !DILocalVariable(name: "this", arg: 1, scope: !4463, type: !3620, flags: DIFlagArtificial | DIFlagObjectPointer)
!4465 = !DILocation(line: 0, scope: !4463)
!4466 = !DILocation(line: 79, column: 47, scope: !4463)
!4467 = distinct !DISubprogram(name: "TensorBuffer", linkageName: "_ZN10tensorflow12TensorBufferC2EPv", scope: !1912, file: !1907, line: 78, type: !4468, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !4471, retainedNodes: !212)
!4468 = !DISubroutineType(types: !4469)
!4469 = !{null, !4470, !38}
!4470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1912, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!4471 = !DISubprogram(name: "TensorBuffer", scope: !1912, file: !1907, line: 78, type: !4468, scopeLine: 78, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!4472 = !DILocalVariable(name: "this", arg: 1, scope: !4467, type: !1911, flags: DIFlagArtificial | DIFlagObjectPointer)
!4473 = !DILocation(line: 0, scope: !4467)
!4474 = !DILocalVariable(name: "data_ptr", arg: 2, scope: !4467, file: !1907, line: 78, type: !38)
!4475 = !DILocation(line: 78, column: 31, scope: !4467)
!4476 = !DILocation(line: 78, column: 59, scope: !4467)
!4477 = !DILocation(line: 78, column: 12, scope: !4467)
!4478 = !DILocation(line: 78, column: 43, scope: !4467)
!4479 = !DILocation(line: 78, column: 49, scope: !4467)
!4480 = !DILocation(line: 78, column: 60, scope: !4467)
!4481 = distinct !DISubprogram(name: "~TF_ManagedBuffer", linkageName: "_ZN16TF_ManagedBufferD2Ev", scope: !3009, file: !2386, line: 56, type: !3024, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !3023, retainedNodes: !212)
!4482 = !DILocalVariable(name: "this", arg: 1, scope: !4481, type: !3008, flags: DIFlagArtificial | DIFlagObjectPointer)
!4483 = !DILocation(line: 0, scope: !4481)
!4484 = !DILocation(line: 56, column: 32, scope: !4481)
!4485 = !DILocation(line: 57, column: 7, scope: !4486)
!4486 = distinct !DILexicalBlock(scope: !4481, file: !2386, line: 56, column: 32)
!4487 = !DILocation(line: 57, column: 21, scope: !4486)
!4488 = !DILocation(line: 57, column: 29, scope: !4486)
!4489 = !DILocation(line: 57, column: 35, scope: !4486)
!4490 = !DILocation(line: 57, column: 5, scope: !4486)
!4491 = !DILocation(line: 58, column: 3, scope: !4486)
!4492 = !DILocation(line: 58, column: 3, scope: !4481)
!4493 = distinct !DISubprogram(name: "~TF_ManagedBuffer", linkageName: "_ZN16TF_ManagedBufferD0Ev", scope: !3009, file: !2386, line: 56, type: !3024, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !3023, retainedNodes: !212)
!4494 = !DILocalVariable(name: "this", arg: 1, scope: !4493, type: !3008, flags: DIFlagArtificial | DIFlagObjectPointer)
!4495 = !DILocation(line: 0, scope: !4493)
!4496 = !DILocation(line: 56, column: 32, scope: !4493)
!4497 = !DILocation(line: 58, column: 3, scope: !4493)
!4498 = distinct !DISubprogram(name: "size", linkageName: "_ZNK16TF_ManagedBuffer4sizeEv", scope: !3009, file: !2386, line: 60, type: !3027, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !3026, retainedNodes: !212)
!4499 = !DILocalVariable(name: "this", arg: 1, scope: !4498, type: !4500, flags: DIFlagArtificial | DIFlagObjectPointer)
!4500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3030, size: 64)
!4501 = !DILocation(line: 0, scope: !4498)
!4502 = !DILocation(line: 60, column: 41, scope: !4498)
!4503 = !DILocation(line: 60, column: 34, scope: !4498)
!4504 = distinct !DISubprogram(name: "root_buffer", linkageName: "_ZN16TF_ManagedBuffer11root_bufferEv", scope: !3009, file: !2386, line: 61, type: !3032, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !3031, retainedNodes: !212)
!4505 = !DILocalVariable(name: "this", arg: 1, scope: !4504, type: !3008, flags: DIFlagArtificial | DIFlagObjectPointer)
!4506 = !DILocation(line: 0, scope: !4504)
!4507 = !DILocation(line: 61, column: 49, scope: !4504)
!4508 = !DILocation(line: 61, column: 42, scope: !4504)
!4509 = distinct !DISubprogram(name: "FillAllocationDescription", linkageName: "_ZNK16TF_ManagedBuffer25FillAllocationDescriptionEPN10tensorflow21AllocationDescriptionE", scope: !3009, file: !2386, line: 62, type: !3035, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !3034, retainedNodes: !212)
!4510 = !DILocalVariable(name: "this", arg: 1, scope: !4509, type: !4500, flags: DIFlagArtificial | DIFlagObjectPointer)
!4511 = !DILocation(line: 0, scope: !4509)
!4512 = !DILocalVariable(arg: 2, scope: !4509, file: !2386, line: 63, type: !3037)
!4513 = !DILocation(line: 63, column: 52, scope: !4509)
!4514 = !DILocation(line: 67, column: 3, scope: !4509)
!4515 = distinct !DISubprogram(name: "OwnsMemory", linkageName: "_ZNK16TF_ManagedBuffer10OwnsMemoryEv", scope: !3009, file: !2386, line: 69, type: !3040, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !3039, retainedNodes: !212)
!4516 = !DILocalVariable(name: "this", arg: 1, scope: !4515, type: !4500, flags: DIFlagArtificial | DIFlagObjectPointer)
!4517 = !DILocation(line: 0, scope: !4515)
!4518 = !DILocation(line: 69, column: 45, scope: !4515)
!4519 = !DILocation(line: 69, column: 38, scope: !4515)
!4520 = distinct !DISubprogram(name: "GetMemoryType", linkageName: "_ZNK10tensorflow12TensorBuffer13GetMemoryTypeEv", scope: !1912, file: !1907, line: 111, type: !4521, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !4525, retainedNodes: !212)
!4521 = !DISubroutineType(types: !4522)
!4522 = !{!83, !4523}
!4523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4524, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!4524 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1912)
!4525 = !DISubprogram(name: "GetMemoryType", linkageName: "_ZNK10tensorflow12TensorBuffer13GetMemoryTypeEv", scope: !1912, file: !1907, line: 111, type: !4521, scopeLine: 111, containingType: !1912, virtualIndex: 7, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!4526 = !DILocalVariable(name: "this", arg: 1, scope: !4520, type: !4527, flags: DIFlagArtificial | DIFlagObjectPointer)
!4527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4524, size: 64)
!4528 = !DILocation(line: 0, scope: !4520)
!4529 = !DILocation(line: 112, column: 5, scope: !4520)
!4530 = distinct !DISubprogram(name: "data", linkageName: "_ZNK10tensorflow12TensorBuffer4dataEv", scope: !1912, file: !1907, line: 86, type: !4531, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !4533, retainedNodes: !212)
!4531 = !DISubroutineType(types: !4532)
!4532 = !{!38, !4523}
!4533 = !DISubprogram(name: "data", linkageName: "_ZNK10tensorflow12TensorBuffer4dataEv", scope: !1912, file: !1907, line: 86, type: !4531, scopeLine: 86, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!4534 = !DILocalVariable(name: "this", arg: 1, scope: !4530, type: !4527, flags: DIFlagArtificial | DIFlagObjectPointer)
!4535 = !DILocation(line: 0, scope: !4530)
!4536 = !DILocation(line: 86, column: 31, scope: !4530)
!4537 = !DILocation(line: 86, column: 24, scope: !4530)
!4538 = distinct !DISubprogram(name: "~TensorBuffer", linkageName: "_ZN10tensorflow12TensorBufferD2Ev", scope: !1912, file: !1907, line: 79, type: !4539, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !4541, retainedNodes: !212)
!4539 = !DISubroutineType(types: !4540)
!4540 = !{null, !4470}
!4541 = !DISubprogram(name: "~TensorBuffer", scope: !1912, file: !1907, line: 79, type: !4539, scopeLine: 79, containingType: !1912, virtualIndex: 0, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!4542 = !DILocalVariable(name: "this", arg: 1, scope: !4538, type: !1911, flags: DIFlagArtificial | DIFlagObjectPointer)
!4543 = !DILocation(line: 0, scope: !4538)
!4544 = !DILocation(line: 79, column: 29, scope: !4545)
!4545 = distinct !DILexicalBlock(scope: !4538, file: !1907, line: 79, column: 28)
!4546 = !DILocation(line: 79, column: 29, scope: !4538)
!4547 = distinct !DISubprogram(name: "~RefCounted", linkageName: "_ZN10tensorflow4core10RefCountedD2Ev", scope: !3042, file: !3043, line: 14, type: !3202, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !3205, retainedNodes: !212)
!4548 = !DILocalVariable(name: "this", arg: 1, scope: !4547, type: !4549, flags: DIFlagArtificial | DIFlagObjectPointer)
!4549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3042, size: 64)
!4550 = !DILocation(line: 0, scope: !4547)
!4551 = !DILocation(line: 14, column: 33, scope: !4547)
!4552 = distinct !DISubprogram(name: "RefCounted", linkageName: "_ZN10tensorflow4core10RefCountedC2Ev", scope: !3042, file: !3043, line: 13, type: !3202, scopeLine: 13, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !3201, retainedNodes: !212)
!4553 = !DILocalVariable(name: "this", arg: 1, scope: !4552, type: !4549, flags: DIFlagArtificial | DIFlagObjectPointer)
!4554 = !DILocation(line: 0, scope: !4552)
!4555 = !DILocation(line: 13, column: 32, scope: !4552)
!4556 = !DILocation(line: 13, column: 18, scope: !4552)
!4557 = !DILocation(line: 13, column: 33, scope: !4552)
!4558 = distinct !DISubprogram(name: "atomic", linkageName: "_ZNSt6atomicImEC2Em", scope: !3048, file: !3049, line: 902, type: !3196, scopeLine: 902, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !3195, retainedNodes: !212)
!4559 = !DILocalVariable(name: "this", arg: 1, scope: !4558, type: !4560, flags: DIFlagArtificial | DIFlagObjectPointer)
!4560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3048, size: 64)
!4561 = !DILocation(line: 0, scope: !4558)
!4562 = !DILocalVariable(name: "__i", arg: 2, scope: !4558, file: !3049, line: 902, type: !3198)
!4563 = !DILocation(line: 902, column: 40, scope: !4558)
!4564 = !DILocation(line: 902, column: 73, scope: !4558)
!4565 = !DILocation(line: 902, column: 68, scope: !4558)
!4566 = !DILocation(line: 902, column: 56, scope: !4558)
!4567 = !DILocation(line: 902, column: 75, scope: !4558)
!4568 = distinct !DISubprogram(name: "__atomic_base", linkageName: "_ZNSt13__atomic_baseImEC2Em", scope: !3052, file: !214, line: 345, type: !3078, scopeLine: 345, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !3077, retainedNodes: !212)
!4569 = !DILocalVariable(name: "this", arg: 1, scope: !4568, type: !3449, flags: DIFlagArtificial | DIFlagObjectPointer)
!4570 = !DILocation(line: 0, scope: !4568)
!4571 = !DILocalVariable(name: "__i", arg: 2, scope: !4568, file: !214, line: 345, type: !3057)
!4572 = !DILocation(line: 345, column: 42, scope: !4568)
!4573 = !DILocation(line: 345, column: 58, scope: !4568)
!4574 = !DILocation(line: 345, column: 64, scope: !4568)
!4575 = !DILocation(line: 345, column: 71, scope: !4568)
!4576 = distinct !DISubprogram(name: "~RefCounted", linkageName: "_ZN10tensorflow4core10RefCountedD0Ev", scope: !3042, file: !3043, line: 14, type: !3202, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, declaration: !3205, retainedNodes: !212)
!4577 = !DILocalVariable(name: "this", arg: 1, scope: !4576, type: !4549, flags: DIFlagArtificial | DIFlagObjectPointer)
!4578 = !DILocation(line: 0, scope: !4576)
!4579 = !DILocation(line: 14, column: 33, scope: !4576)
!4580 = distinct !DISubprogram(name: "TF_NewTensor", scope: !2180, file: !2180, line: 107, type: !4581, scopeLine: 110, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, retainedNodes: !212)
!4581 = !DISubroutineType(types: !4582)
!4582 = !{!2990, !225, !2992, !16, !38, !19, !3015, !38}
!4583 = !DILocalVariable(name: "dtype", arg: 1, scope: !4580, file: !2180, line: 107, type: !225)
!4584 = !DILocation(line: 107, column: 37, scope: !4580)
!4585 = !DILocalVariable(name: "dims", arg: 2, scope: !4580, file: !2180, line: 107, type: !2992)
!4586 = !DILocation(line: 107, column: 59, scope: !4580)
!4587 = !DILocalVariable(name: "num_dims", arg: 3, scope: !4580, file: !2180, line: 107, type: !16)
!4588 = !DILocation(line: 107, column: 69, scope: !4580)
!4589 = !DILocalVariable(name: "data", arg: 4, scope: !4580, file: !2180, line: 108, type: !38)
!4590 = !DILocation(line: 108, column: 31, scope: !4580)
!4591 = !DILocalVariable(name: "len", arg: 5, scope: !4580, file: !2180, line: 108, type: !19)
!4592 = !DILocation(line: 108, column: 44, scope: !4580)
!4593 = !DILocalVariable(name: "deallocator", arg: 6, scope: !4580, file: !2180, line: 109, type: !3015)
!4594 = !DILocation(line: 109, column: 32, scope: !4580)
!4595 = !DILocalVariable(name: "deallocator_arg", arg: 7, scope: !4580, file: !2180, line: 110, type: !38)
!4596 = !DILocation(line: 110, column: 31, scope: !4580)
!4597 = !DILocalVariable(name: "buf", scope: !4580, file: !2180, line: 111, type: !3008)
!4598 = !DILocation(line: 111, column: 21, scope: !4580)
!4599 = !DILocation(line: 112, column: 7, scope: !4600)
!4600 = distinct !DILexicalBlock(scope: !4580, file: !2180, line: 112, column: 7)
!4601 = !DILocation(line: 112, column: 13, scope: !4600)
!4602 = !DILocation(line: 112, column: 26, scope: !4600)
!4603 = !DILocation(line: 112, column: 29, scope: !4600)
!4604 = !DILocation(line: 112, column: 35, scope: !4600)
!4605 = !DILocation(line: 112, column: 50, scope: !4600)
!4606 = !DILocation(line: 114, column: 45, scope: !4600)
!4607 = !DILocation(line: 113, column: 7, scope: !4600)
!4608 = !DILocation(line: 114, column: 53, scope: !4600)
!4609 = !DILocation(line: 115, column: 34, scope: !4600)
!4610 = !DILocation(line: 115, column: 7, scope: !4600)
!4611 = !DILocation(line: 115, column: 51, scope: !4600)
!4612 = !DILocation(line: 115, column: 54, scope: !4600)
!4613 = !DILocation(line: 115, column: 42, scope: !4600)
!4614 = !DILocation(line: 115, column: 40, scope: !4600)
!4615 = !{!"True"}
!4616 = !DILocation(line: 115, column: 77, scope: !4600)
!4617 = !DILocation(line: 0, scope: !4600)
!4618 = !DILocation(line: 112, column: 7, scope: !4580)
!4619 = !DILocation(line: 124, column: 11, scope: !4620)
!4620 = distinct !DILexicalBlock(scope: !4600, file: !2180, line: 116, column: 14)
!4621 = !DILocation(line: 124, column: 76, scope: !4620)
!4622 = !DILocation(line: 124, column: 32, scope: !4620)
!4623 = !DILocation(line: 125, column: 32, scope: !4620)
!4624 = !DILocation(line: 124, column: 15, scope: !4620)
!4625 = !DILocation(line: 124, column: 9, scope: !4620)
!4626 = !DILocation(line: 127, column: 17, scope: !4620)
!4627 = !DILocation(line: 127, column: 22, scope: !4620)
!4628 = !DILocation(line: 127, column: 30, scope: !4620)
!4629 = !DILocation(line: 127, column: 36, scope: !4620)
!4630 = !DILocation(line: 127, column: 5, scope: !4620)
!4631 = !DILocation(line: 129, column: 5, scope: !4620)
!4632 = !DILocation(line: 129, column: 17, scope: !4620)
!4633 = !DILocation(line: 129, column: 23, scope: !4620)
!4634 = !DILocation(line: 129, column: 28, scope: !4620)
!4635 = !DILocation(line: 130, column: 3, scope: !4620)
!4636 = !DILocation(line: 136, column: 1, scope: !4620)
!4637 = !DILocation(line: 131, column: 11, scope: !4638)
!4638 = distinct !DILexicalBlock(scope: !4600, file: !2180, line: 130, column: 10)
!4639 = !DILocation(line: 131, column: 32, scope: !4638)
!4640 = !DILocation(line: 131, column: 38, scope: !4638)
!4641 = !DILocation(line: 131, column: 43, scope: !4638)
!4642 = !DILocation(line: 131, column: 56, scope: !4638)
!4643 = !DILocation(line: 131, column: 15, scope: !4638)
!4644 = !DILocation(line: 131, column: 9, scope: !4638)
!4645 = !DILocation(line: 136, column: 1, scope: !4638)
!4646 = !DILocation(line: 135, column: 23, scope: !4580)
!4647 = !DILocation(line: 135, column: 28, scope: !4580)
!4648 = !DILocation(line: 135, column: 35, scope: !4580)
!4649 = !DILocation(line: 135, column: 41, scope: !4580)
!4650 = !DILocation(line: 135, column: 51, scope: !4580)
!4651 = !DILocation(line: 135, column: 10, scope: !4580)
!4652 = !DILocation(line: 135, column: 3, scope: !4580)
!4653 = distinct !DISubprogram(name: "DataTypeCanUseMemcpy", linkageName: "_ZN10tensorflow20DataTypeCanUseMemcpyE8DataType", scope: !4, file: !1904, line: 15, type: !4654, scopeLine: 15, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, retainedNodes: !212)
!4654 = !DISubroutineType(types: !4655)
!4655 = !{!53, !100}
!4656 = !DILocalVariable(name: "dt", arg: 1, scope: !4653, file: !1904, line: 15, type: !100)
!4657 = !DILocation(line: 15, column: 43, scope: !4653)
!4658 = !DILocation(line: 16, column: 11, scope: !4653)
!4659 = !DILocation(line: 16, column: 3, scope: !4653)
!4660 = !DILocation(line: 46, column: 7, scope: !4661)
!4661 = distinct !DILexicalBlock(scope: !4653, file: !1904, line: 16, column: 15)
!4662 = !DILocation(line: 49, column: 7, scope: !4661)
!4663 = !DILocation(line: 51, column: 1, scope: !4653)
!4664 = distinct !DISubprogram(name: "max<int>", linkageName: "_ZSt3maxIiERKT_S2_S2_", scope: !31, file: !3956, line: 254, type: !4665, scopeLine: 255, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, templateParams: !4668, retainedNodes: !212)
!4665 = !DISubroutineType(types: !4666)
!4666 = !{!4667, !4667, !4667}
!4667 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3055, size: 64)
!4668 = !{!4669}
!4669 = !DITemplateTypeParameter(name: "_Tp", type: !16)
!4670 = !DILocalVariable(name: "__a", arg: 1, scope: !4664, file: !3956, line: 254, type: !4667)
!4671 = !DILocation(line: 254, column: 20, scope: !4664)
!4672 = !DILocalVariable(name: "__b", arg: 2, scope: !4664, file: !3956, line: 254, type: !4667)
!4673 = !DILocation(line: 254, column: 36, scope: !4664)
!4674 = !DILocation(line: 259, column: 11, scope: !4675)
!4675 = distinct !DILexicalBlock(scope: !4664, file: !3956, line: 259, column: 11)
!4676 = !DILocation(line: 259, column: 17, scope: !4675)
!4677 = !DILocation(line: 259, column: 15, scope: !4675)
!4678 = !DILocation(line: 259, column: 11, scope: !4664)
!4679 = !DILocation(line: 260, column: 9, scope: !4675)
!4680 = !DILocation(line: 260, column: 2, scope: !4675)
!4681 = !DILocation(line: 261, column: 14, scope: !4664)
!4682 = !DILocation(line: 261, column: 7, scope: !4664)
!4683 = !DILocation(line: 262, column: 5, scope: !4664)
!4684 = distinct !DISubprogram(name: "TF_TensorMaybeMove", scope: !2180, file: !2180, line: 140, type: !4685, scopeLine: 140, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, retainedNodes: !212)
!4685 = !DISubroutineType(types: !4686)
!4686 = !{!2990, !2990}
!4687 = !DILocalVariable(name: "t", arg: 1, scope: !4684, file: !2180, line: 140, type: !2990)
!4688 = !DILocation(line: 140, column: 42, scope: !4684)
!4689 = !DILocation(line: 141, column: 10, scope: !4684)
!4690 = !DILocation(line: 141, column: 13, scope: !4684)
!4691 = !DILocation(line: 141, column: 21, scope: !4684)
!4692 = !DILocation(line: 141, column: 33, scope: !4684)
!4693 = !DILocation(line: 141, column: 3, scope: !4684)
!4694 = distinct !DISubprogram(name: "TF_DeleteTensor", scope: !2180, file: !2180, line: 144, type: !4695, scopeLine: 144, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, retainedNodes: !212)
!4695 = !DISubroutineType(types: !4696)
!4696 = !{null, !2990}
!4697 = !DILocalVariable(name: "t", arg: 1, scope: !4694, file: !2180, line: 144, type: !2990)
!4698 = !DILocation(line: 144, column: 33, scope: !4694)
!4699 = !DILocation(line: 145, column: 7, scope: !4700)
!4700 = distinct !DILexicalBlock(scope: !4694, file: !2180, line: 145, column: 7)
!4701 = !DILocation(line: 145, column: 9, scope: !4700)
!4702 = !DILocation(line: 145, column: 7, scope: !4694)
!4703 = !DILocation(line: 146, column: 5, scope: !4704)
!4704 = distinct !DILexicalBlock(scope: !4700, file: !2180, line: 145, column: 21)
!4705 = !DILocation(line: 149, column: 7, scope: !4706)
!4706 = distinct !DILexicalBlock(scope: !4694, file: !2180, line: 149, column: 7)
!4707 = !DILocation(line: 149, column: 10, scope: !4706)
!4708 = !DILocation(line: 149, column: 7, scope: !4694)
!4709 = !DILocation(line: 150, column: 5, scope: !4710)
!4710 = distinct !DILexicalBlock(scope: !4706, file: !2180, line: 149, column: 18)
!4711 = !DILocation(line: 150, column: 8, scope: !4710)
!4712 = !DILocation(line: 150, column: 16, scope: !4710)
!4713 = !DILocation(line: 151, column: 3, scope: !4710)
!4714 = !DILocation(line: 153, column: 10, scope: !4694)
!4715 = !DILocation(line: 153, column: 3, scope: !4694)
!4716 = !DILocation(line: 154, column: 1, scope: !4694)
!4717 = distinct !DISubprogram(name: "TF_TensorType", scope: !2180, file: !2180, line: 156, type: !4718, scopeLine: 156, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, retainedNodes: !212)
!4718 = !DISubroutineType(types: !4719)
!4719 = !{!225, !4720}
!4720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4721, size: 64)
!4721 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2991)
!4722 = !DILocalVariable(name: "t", arg: 1, scope: !4717, file: !2180, line: 156, type: !4720)
!4723 = !DILocation(line: 156, column: 44, scope: !4717)
!4724 = !DILocation(line: 157, column: 35, scope: !4717)
!4725 = !DILocation(line: 157, column: 38, scope: !4717)
!4726 = !DILocation(line: 157, column: 46, scope: !4717)
!4727 = !DILocation(line: 157, column: 3, scope: !4717)
!4728 = distinct !DISubprogram(name: "TF_NumDims", scope: !2180, file: !2180, line: 165, type: !4729, scopeLine: 165, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, retainedNodes: !212)
!4729 = !DISubroutineType(types: !4730)
!4730 = !{!16, !4720}
!4731 = !DILocalVariable(name: "t", arg: 1, scope: !4728, file: !2180, line: 165, type: !4720)
!4732 = !DILocation(line: 165, column: 33, scope: !4728)
!4733 = !DILocation(line: 165, column: 45, scope: !4728)
!4734 = !DILocation(line: 165, column: 48, scope: !4728)
!4735 = !DILocation(line: 165, column: 56, scope: !4728)
!4736 = !DILocation(line: 165, column: 38, scope: !4728)
!4737 = distinct !DISubprogram(name: "TF_Dim", scope: !2180, file: !2180, line: 167, type: !4738, scopeLine: 167, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, retainedNodes: !212)
!4738 = !DISubroutineType(types: !4739)
!4739 = !{!64, !4720, !16}
!4740 = !DILocalVariable(name: "t", arg: 1, scope: !4737, file: !2180, line: 167, type: !4720)
!4741 = !DILocation(line: 167, column: 33, scope: !4737)
!4742 = !DILocalVariable(name: "dim_index", arg: 2, scope: !4737, file: !2180, line: 167, type: !16)
!4743 = !DILocation(line: 167, column: 40, scope: !4737)
!4744 = !DILocation(line: 168, column: 10, scope: !4737)
!4745 = !DILocation(line: 168, column: 13, scope: !4737)
!4746 = !DILocation(line: 168, column: 25, scope: !4737)
!4747 = !DILocation(line: 168, column: 21, scope: !4737)
!4748 = !DILocation(line: 168, column: 3, scope: !4737)
!4749 = distinct !DISubprogram(name: "TF_TensorByteSize", scope: !2180, file: !2180, line: 171, type: !4750, scopeLine: 171, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, retainedNodes: !212)
!4750 = !DISubroutineType(types: !4751)
!4751 = !{!19, !4720}
!4752 = !DILocalVariable(name: "t", arg: 1, scope: !4749, file: !2180, line: 171, type: !4720)
!4753 = !DILocation(line: 171, column: 43, scope: !4749)
!4754 = !DILocation(line: 171, column: 55, scope: !4749)
!4755 = !DILocation(line: 171, column: 58, scope: !4749)
!4756 = !DILocation(line: 171, column: 66, scope: !4749)
!4757 = !DILocation(line: 171, column: 48, scope: !4749)
!4758 = distinct !DISubprogram(name: "TF_TensorData", scope: !2180, file: !2180, line: 173, type: !4759, scopeLine: 173, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, retainedNodes: !212)
!4759 = !DISubroutineType(types: !4760)
!4760 = !{!38, !4720}
!4761 = !DILocalVariable(name: "t", arg: 1, scope: !4758, file: !2180, line: 173, type: !4720)
!4762 = !DILocation(line: 173, column: 38, scope: !4758)
!4763 = !DILocation(line: 173, column: 50, scope: !4758)
!4764 = !DILocation(line: 173, column: 53, scope: !4758)
!4765 = !DILocation(line: 173, column: 61, scope: !4758)
!4766 = !DILocation(line: 173, column: 43, scope: !4758)
!4767 = distinct !DISubprogram(name: "TF_TensorElementCount", scope: !2180, file: !2180, line: 175, type: !4768, scopeLine: 175, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, retainedNodes: !212)
!4768 = !DISubroutineType(types: !4769)
!4769 = !{!64, !4720}
!4770 = !DILocalVariable(name: "t", arg: 1, scope: !4767, file: !2180, line: 175, type: !4720)
!4771 = !DILocation(line: 175, column: 48, scope: !4767)
!4772 = !DILocalVariable(name: "result", scope: !4767, file: !2180, line: 176, type: !64)
!4773 = !DILocation(line: 176, column: 11, scope: !4767)
!4774 = !DILocalVariable(name: "rank", scope: !4767, file: !2180, line: 177, type: !16)
!4775 = !DILocation(line: 177, column: 7, scope: !4767)
!4776 = !DILocation(line: 177, column: 25, scope: !4767)
!4777 = !DILocation(line: 177, column: 14, scope: !4767)
!4778 = !DILocalVariable(name: "dim", scope: !4779, file: !2180, line: 178, type: !16)
!4779 = distinct !DILexicalBlock(scope: !4767, file: !2180, line: 178, column: 3)
!4780 = !DILocation(line: 178, column: 12, scope: !4779)
!4781 = !DILocation(line: 178, column: 8, scope: !4779)
!4782 = !DILocation(line: 178, column: 21, scope: !4783)
!4783 = distinct !DILexicalBlock(scope: !4779, file: !2180, line: 178, column: 3)
!4784 = !DILocation(line: 178, column: 27, scope: !4783)
!4785 = !DILocation(line: 178, column: 25, scope: !4783)
!4786 = !DILocation(line: 178, column: 3, scope: !4779)
!4787 = !DILocation(line: 179, column: 22, scope: !4788)
!4788 = distinct !DILexicalBlock(scope: !4783, file: !2180, line: 178, column: 40)
!4789 = !DILocation(line: 179, column: 25, scope: !4788)
!4790 = !DILocation(line: 179, column: 15, scope: !4788)
!4791 = !DILocation(line: 179, column: 12, scope: !4788)
!4792 = !DILocation(line: 180, column: 3, scope: !4788)
!4793 = !DILocation(line: 178, column: 33, scope: !4783)
!4794 = !DILocation(line: 178, column: 3, scope: !4783)
!4795 = distinct !{!4795, !4786, !4796}
!4796 = !DILocation(line: 180, column: 3, scope: !4779)
!4797 = !DILocation(line: 181, column: 10, scope: !4767)
!4798 = !DILocation(line: 181, column: 3, scope: !4767)
!4799 = distinct !DISubprogram(name: "~TensorBuffer", linkageName: "_ZN10tensorflow12TensorBufferD0Ev", scope: !4800, file: !1907, line: 79, type: !4809, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2235, declaration: !4808, retainedNodes: !212)
!4800 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "TensorBuffer", scope: !4, file: !1907, line: 76, size: 192, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !4801, vtableHolder: !3042)
!4801 = !{!4802, !4803, !4804, !4808, !4811, !4816, !4819, !4823, !4826, !4830, !4833}
!4802 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !4800, baseType: !3042, flags: DIFlagPublic, extraData: i32 0)
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "data_", scope: !4800, file: !1907, line: 116, baseType: !3017, size: 64, offset: 128)
!4804 = !DISubprogram(name: "TensorBuffer", scope: !4800, file: !1907, line: 78, type: !4805, scopeLine: 78, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!4805 = !DISubroutineType(types: !4806)
!4806 = !{null, !4807, !38}
!4807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4800, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!4808 = !DISubprogram(name: "~TensorBuffer", scope: !4800, file: !1907, line: 79, type: !4809, scopeLine: 79, containingType: !4800, virtualIndex: 0, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!4809 = !DISubroutineType(types: !4810)
!4810 = !{null, !4807}
!4811 = !DISubprogram(name: "data", linkageName: "_ZNK10tensorflow12TensorBuffer4dataEv", scope: !4800, file: !1907, line: 86, type: !4812, scopeLine: 86, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!4812 = !DISubroutineType(types: !4813)
!4813 = !{!38, !4814}
!4814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4815, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!4815 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4800)
!4816 = !DISubprogram(name: "size", linkageName: "_ZNK10tensorflow12TensorBuffer4sizeEv", scope: !4800, file: !1907, line: 89, type: !4817, scopeLine: 89, containingType: !4800, virtualIndex: 2, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual)
!4817 = !DISubroutineType(types: !4818)
!4818 = !{!19, !4814}
!4819 = !DISubprogram(name: "root_buffer", linkageName: "_ZN10tensorflow12TensorBuffer11root_bufferEv", scope: !4800, file: !1907, line: 93, type: !4820, scopeLine: 93, containingType: !4800, virtualIndex: 3, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual)
!4820 = !DISubroutineType(types: !4821)
!4821 = !{!4822, !4807}
!4822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4800, size: 64)
!4823 = !DISubprogram(name: "FillAllocationDescription", linkageName: "_ZNK10tensorflow12TensorBuffer25FillAllocationDescriptionEPNS_21AllocationDescriptionE", scope: !4800, file: !1907, line: 96, type: !4824, scopeLine: 96, containingType: !4800, virtualIndex: 4, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual)
!4824 = !DISubroutineType(types: !4825)
!4825 = !{null, !4814, !3037}
!4826 = !DISubprogram(name: "GetAllocatedBytes", linkageName: "_ZNK10tensorflow12TensorBuffer17GetAllocatedBytesEPm", scope: !4800, file: !1907, line: 99, type: !4827, scopeLine: 99, containingType: !4800, virtualIndex: 5, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!4827 = !DISubroutineType(types: !4828)
!4828 = !{!53, !4814, !4829}
!4829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!4830 = !DISubprogram(name: "OwnsMemory", linkageName: "_ZNK10tensorflow12TensorBuffer10OwnsMemoryEv", scope: !4800, file: !1907, line: 108, type: !4831, scopeLine: 108, containingType: !4800, virtualIndex: 6, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!4831 = !DISubroutineType(types: !4832)
!4832 = !{!53, !4814}
!4833 = !DISubprogram(name: "GetMemoryType", linkageName: "_ZNK10tensorflow12TensorBuffer13GetMemoryTypeEv", scope: !4800, file: !1907, line: 111, type: !4834, scopeLine: 111, containingType: !4800, virtualIndex: 7, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!4834 = !DISubroutineType(types: !4835)
!4835 = !{!83, !4814}
!4836 = !DILocalVariable(name: "this", arg: 1, scope: !4799, type: !4822, flags: DIFlagArtificial | DIFlagObjectPointer)
!4837 = !DILocation(line: 0, scope: !4799)
!4838 = !DILocation(line: 79, column: 28, scope: !4799)
!4839 = distinct !DISubprogram(name: "GetAllocatedBytes", linkageName: "_ZNK10tensorflow12TensorBuffer17GetAllocatedBytesEPm", scope: !4800, file: !4840, line: 84, type: !4827, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2235, declaration: !4826, retainedNodes: !212)
!4840 = !DIFile(filename: "tensorflow/core/framework/tensor.cc", directory: "/home/mushfiqur/Desktop/Github/tensorflow")
!4841 = !DILocalVariable(name: "this", arg: 1, scope: !4839, type: !4842, flags: DIFlagArtificial | DIFlagObjectPointer)
!4842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4815, size: 64)
!4843 = !DILocation(line: 0, scope: !4839)
!4844 = !DILocalVariable(name: "out_bytes", arg: 2, scope: !4839, file: !4840, line: 84, type: !4829)
!4845 = !DILocation(line: 84, column: 46, scope: !4839)
!4846 = !DILocation(line: 93, column: 2, scope: !4839)
!4847 = distinct !DISubprogram(name: "OwnsMemory", linkageName: "_ZNK10tensorflow12TensorBuffer10OwnsMemoryEv", scope: !4800, file: !1907, line: 108, type: !4831, scopeLine: 108, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2235, declaration: !4830, retainedNodes: !212)
!4848 = !DILocalVariable(name: "this", arg: 1, scope: !4847, type: !4842, flags: DIFlagArtificial | DIFlagObjectPointer)
!4849 = !DILocation(line: 0, scope: !4847)
!4850 = !DILocation(line: 108, column: 37, scope: !4847)
!4851 = distinct !DISubprogram(name: "Tensor", linkageName: "_ZN10tensorflow6TensorC2E8DataTypeRKNS_11TensorShapeEPNS_12TensorBufferE", scope: !1906, file: !4840, line: 844, type: !4852, scopeLine: 845, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2235, declaration: !4854, retainedNodes: !212)
!4852 = !DISubroutineType(types: !4853)
!4853 = !{null, !1916, !100, !982, !4822}
!4854 = !DISubprogram(name: "Tensor", scope: !1906, file: !1907, line: 176, type: !4852, scopeLine: 176, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!4855 = !DILocalVariable(name: "this", arg: 1, scope: !4851, type: !1938, flags: DIFlagArtificial | DIFlagObjectPointer)
!4856 = !DILocation(line: 0, scope: !4851)
!4857 = !DILocalVariable(name: "type", arg: 2, scope: !4851, file: !4840, line: 844, type: !100)
!4858 = !DILocation(line: 844, column: 25, scope: !4851)
!4859 = !DILocalVariable(name: "shape", arg: 3, scope: !4851, file: !4840, line: 844, type: !982)
!4860 = !DILocation(line: 844, column: 50, scope: !4851)
!4861 = !DILocalVariable(name: "buf", arg: 4, scope: !4851, file: !4840, line: 844, type: !4822)
!4862 = !DILocation(line: 844, column: 71, scope: !4851)
!4863 = !DILocation(line: 845, column: 7, scope: !4851)
!4864 = !DILocation(line: 845, column: 14, scope: !4851)
!4865 = !DILocation(line: 845, column: 22, scope: !4851)
!4866 = !DILocation(line: 845, column: 27, scope: !4851)
!4867 = !DILocation(line: 846, column: 13, scope: !4868)
!4868 = distinct !DILexicalBlock(scope: !4851, file: !4840, line: 845, column: 32)
!4869 = !DILocation(line: 846, column: 3, scope: !4868)
!4870 = !DILocation(line: 847, column: 16, scope: !4868)
!4871 = !DILocation(line: 847, column: 3, scope: !4868)
!4872 = !DILocation(line: 848, column: 1, scope: !4851)
!4873 = !DILocation(line: 848, column: 1, scope: !4868)
!4874 = distinct !DISubprogram(name: "TensorShape", linkageName: "_ZN10tensorflow11TensorShapeC2ERKS0_", scope: !284, file: !101, line: 147, type: !4875, scopeLine: 147, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2235, declaration: !4877, retainedNodes: !212)
!4875 = !DISubroutineType(types: !4876)
!4876 = !{null, !898, !982}
!4877 = !DISubprogram(name: "TensorShape", scope: !284, type: !4875, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!4878 = !DILocalVariable(name: "this", arg: 1, scope: !4874, type: !962, flags: DIFlagArtificial | DIFlagObjectPointer)
!4879 = !DILocation(line: 0, scope: !4874)
!4880 = !DILocalVariable(arg: 2, scope: !4874, type: !982)
!4881 = !DILocation(line: 147, column: 7, scope: !4874)
!4882 = distinct !DISubprogram(name: "set_dtype", linkageName: "_ZN10tensorflow6Tensor9set_dtypeE8DataType", scope: !1906, file: !1907, line: 700, type: !1933, scopeLine: 700, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2235, declaration: !2172, retainedNodes: !212)
!4883 = !DILocalVariable(name: "this", arg: 1, scope: !4882, type: !1938, flags: DIFlagArtificial | DIFlagObjectPointer)
!4884 = !DILocation(line: 0, scope: !4882)
!4885 = !DILocalVariable(name: "t", arg: 2, scope: !4882, file: !1907, line: 700, type: !100)
!4886 = !DILocation(line: 700, column: 27, scope: !4882)
!4887 = !DILocation(line: 700, column: 32, scope: !4882)
!4888 = !DILocation(line: 700, column: 53, scope: !4882)
!4889 = !DILocation(line: 700, column: 39, scope: !4882)
!4890 = !DILocation(line: 700, column: 57, scope: !4882)
!4891 = distinct !DISubprogram(name: "RefIfNonNull", linkageName: "_ZN10tensorflow12_GLOBAL__N_112RefIfNonNullEPNS_4core10RefCountedE", scope: !4892, file: !4840, line: 829, type: !4893, scopeLine: 829, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2235, retainedNodes: !212)
!4892 = !DINamespace(scope: !4)
!4893 = !DISubroutineType(types: !4894)
!4894 = !{null, !4549}
!4895 = !DILocalVariable(name: "buf", arg: 1, scope: !4891, file: !4840, line: 829, type: !4549)
!4896 = !DILocation(line: 829, column: 37, scope: !4891)
!4897 = !DILocation(line: 830, column: 7, scope: !4898)
!4898 = distinct !DILexicalBlock(scope: !4891, file: !4840, line: 830, column: 7)
!4899 = !DILocation(line: 830, column: 7, scope: !4891)
!4900 = !DILocation(line: 830, column: 12, scope: !4898)
!4901 = !DILocation(line: 830, column: 17, scope: !4898)
!4902 = !DILocation(line: 831, column: 1, scope: !4891)
!4903 = distinct !DISubprogram(name: "Ref", linkageName: "_ZNK10tensorflow4core10RefCounted3RefEv", scope: !3042, file: !3043, line: 17, type: !3207, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2235, declaration: !3206, retainedNodes: !212)
!4904 = !DILocalVariable(name: "this", arg: 1, scope: !4903, type: !3443, flags: DIFlagArtificial | DIFlagObjectPointer)
!4905 = !DILocation(line: 0, scope: !4903)
!4906 = !DILocation(line: 18, column: 5, scope: !4903)
!4907 = !DILocalVariable(name: "this", arg: 1, scope: !4908, type: !3449, flags: DIFlagArtificial | DIFlagObjectPointer)
!4908 = distinct !DISubprogram(name: "fetch_add", linkageName: "_ZNSt13__atomic_baseImE9fetch_addEmSt12memory_order", scope: !3052, file: !214, line: 616, type: !3141, scopeLine: 618, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2235, declaration: !3163, retainedNodes: !212)
!4909 = !DILocation(line: 0, scope: !4908, inlinedAt: !4910)
!4910 = distinct !DILocation(line: 18, column: 16, scope: !4903)
!4911 = !DILocalVariable(name: "__i", arg: 2, scope: !4908, file: !214, line: 616, type: !3057)
!4912 = !DILocation(line: 616, column: 28, scope: !4908, inlinedAt: !4910)
!4913 = !DILocalVariable(name: "__m", arg: 3, scope: !4908, file: !214, line: 617, type: !3130)
!4914 = !DILocation(line: 617, column: 16, scope: !4908, inlinedAt: !4910)
!4915 = !DILocation(line: 618, column: 36, scope: !4908, inlinedAt: !4910)
!4916 = !DILocation(line: 618, column: 51, scope: !4908, inlinedAt: !4910)
!4917 = !DILocation(line: 618, column: 42, scope: !4908, inlinedAt: !4910)
!4918 = !DILocation(line: 618, column: 16, scope: !4908, inlinedAt: !4910)
!4919 = !DILocation(line: 19, column: 3, scope: !4903)
!4920 = distinct !DISubprogram(name: "set_data_type", linkageName: "_ZN10tensorflow11TensorShape13set_data_typeE8DataType", scope: !284, file: !101, line: 154, type: !906, scopeLine: 154, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2235, declaration: !905, retainedNodes: !212)
!4921 = !DILocalVariable(name: "this", arg: 1, scope: !4920, type: !962, flags: DIFlagArtificial | DIFlagObjectPointer)
!4922 = !DILocation(line: 0, scope: !4920)
!4923 = !DILocalVariable(name: "t", arg: 2, scope: !4920, file: !101, line: 154, type: !100)
!4924 = !DILocation(line: 154, column: 31, scope: !4920)
!4925 = !DILocation(line: 154, column: 45, scope: !4920)
!4926 = !DILocation(line: 154, column: 36, scope: !4920)
!4927 = !DILocation(line: 154, column: 43, scope: !4920)
!4928 = !DILocation(line: 154, column: 48, scope: !4920)
!4929 = distinct !DISubprogram(name: "~Tensor", linkageName: "_ZN10tensorflow6TensorD2Ev", scope: !1906, file: !4840, line: 879, type: !1914, scopeLine: 879, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2235, declaration: !2087, retainedNodes: !212)
!4930 = !DILocalVariable(name: "this", arg: 1, scope: !4929, type: !1938, flags: DIFlagArtificial | DIFlagObjectPointer)
!4931 = !DILocation(line: 0, scope: !4929)
!4932 = !DILocation(line: 879, column: 36, scope: !4933)
!4933 = distinct !DILexicalBlock(scope: !4929, file: !4840, line: 879, column: 19)
!4934 = !DILocation(line: 879, column: 21, scope: !4933)
!4935 = !DILocation(line: 879, column: 43, scope: !4933)
!4936 = !DILocation(line: 879, column: 43, scope: !4929)
!4937 = distinct !DISubprogram(name: "UnrefIfNonNull", linkageName: "_ZN10tensorflow12_GLOBAL__N_114UnrefIfNonNullEPNS_4core10RefCountedE", scope: !4892, file: !4840, line: 833, type: !4893, scopeLine: 833, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2235, retainedNodes: !212)
!4938 = !DILocalVariable(name: "buf", arg: 1, scope: !4937, file: !4840, line: 833, type: !4549)
!4939 = !DILocation(line: 833, column: 39, scope: !4937)
!4940 = !DILocation(line: 834, column: 7, scope: !4941)
!4941 = distinct !DILexicalBlock(scope: !4937, file: !4840, line: 834, column: 7)
!4942 = !DILocation(line: 834, column: 7, scope: !4937)
!4943 = !DILocation(line: 834, column: 12, scope: !4941)
!4944 = !DILocation(line: 834, column: 17, scope: !4941)
!4945 = !DILocation(line: 835, column: 1, scope: !4937)
!4946 = distinct !DISubprogram(name: "Tensor", linkageName: "_ZN10tensorflow6TensorC2EOS0_", scope: !1906, file: !4840, line: 881, type: !2084, scopeLine: 883, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2235, declaration: !2083, retainedNodes: !212)
!4947 = !DILocalVariable(name: "this", arg: 1, scope: !4946, type: !1938, flags: DIFlagArtificial | DIFlagObjectPointer)
!4948 = !DILocation(line: 0, scope: !4946)
!4949 = !DILocalVariable(name: "other", arg: 2, scope: !4946, file: !4840, line: 881, type: !2086)
!4950 = !DILocation(line: 881, column: 25, scope: !4946)
!4951 = !DILocation(line: 882, column: 7, scope: !4946)
!4952 = !DILocation(line: 882, column: 24, scope: !4946)
!4953 = !DILocation(line: 882, column: 30, scope: !4946)
!4954 = !DILocation(line: 882, column: 14, scope: !4946)
!4955 = !DILocation(line: 883, column: 7, scope: !4946)
!4956 = !DILocation(line: 883, column: 12, scope: !4946)
!4957 = !DILocation(line: 883, column: 18, scope: !4946)
!4958 = !DILocation(line: 884, column: 13, scope: !4959)
!4959 = distinct !DILexicalBlock(scope: !4946, file: !4840, line: 883, column: 24)
!4960 = !DILocation(line: 884, column: 19, scope: !4959)
!4961 = !DILocation(line: 884, column: 3, scope: !4959)
!4962 = !DILocation(line: 885, column: 3, scope: !4959)
!4963 = !DILocation(line: 885, column: 9, scope: !4959)
!4964 = !DILocation(line: 885, column: 14, scope: !4959)
!4965 = !DILocation(line: 886, column: 1, scope: !4946)
!4966 = !DILocation(line: 886, column: 1, scope: !4959)
!4967 = distinct !DISubprogram(name: "move<tensorflow::TensorShape &>", linkageName: "_ZSt4moveIRN10tensorflow11TensorShapeEEONSt16remove_referenceIT_E4typeEOS4_", scope: !31, file: !3508, line: 104, type: !4968, scopeLine: 105, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2235, templateParams: !4973, retainedNodes: !212)
!4968 = !DISubroutineType(types: !4969)
!4969 = !{!4970, !4975}
!4970 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !4971, size: 64)
!4971 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !4972, file: !502, line: 1602, baseType: !284)
!4972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "remove_reference<tensorflow::TensorShape &>", scope: !31, file: !502, line: 1601, size: 8, flags: DIFlagTypePassByValue, elements: !212, templateParams: !4973, identifier: "_ZTSSt16remove_referenceIRN10tensorflow11TensorShapeEE")
!4973 = !{!4974}
!4974 = !DITemplateTypeParameter(name: "_Tp", type: !4975)
!4975 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !284, size: 64)
!4976 = !DILocalVariable(name: "__t", arg: 1, scope: !4967, file: !3508, line: 104, type: !4975)
!4977 = !DILocation(line: 104, column: 16, scope: !4967)
!4978 = !DILocation(line: 105, column: 71, scope: !4967)
!4979 = !DILocation(line: 105, column: 7, scope: !4967)
!4980 = distinct !DISubprogram(name: "TensorShape", linkageName: "_ZN10tensorflow11TensorShapeC2EOS0_", scope: !284, file: !101, line: 147, type: !4981, scopeLine: 147, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2235, declaration: !4984, retainedNodes: !212)
!4981 = !DISubroutineType(types: !4982)
!4982 = !{null, !898, !4983}
!4983 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !284, size: 64)
!4984 = !DISubprogram(name: "TensorShape", scope: !284, type: !4981, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!4985 = !DILocalVariable(name: "this", arg: 1, scope: !4980, type: !962, flags: DIFlagArtificial | DIFlagObjectPointer)
!4986 = !DILocation(line: 0, scope: !4980)
!4987 = !DILocalVariable(arg: 2, scope: !4980, type: !4983)
!4988 = !DILocation(line: 147, column: 7, scope: !4980)
!4989 = distinct !DISubprogram(name: "dtype", linkageName: "_ZNK10tensorflow6Tensor5dtypeEv", scope: !1906, file: !1907, line: 290, type: !2089, scopeLine: 290, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2235, declaration: !2088, retainedNodes: !212)
!4990 = !DILocalVariable(name: "this", arg: 1, scope: !4989, type: !3502, flags: DIFlagArtificial | DIFlagObjectPointer)
!4991 = !DILocation(line: 0, scope: !4989)
!4992 = !DILocation(line: 290, column: 35, scope: !4989)
!4993 = !DILocation(line: 290, column: 42, scope: !4989)
!4994 = !DILocation(line: 290, column: 28, scope: !4989)
!4995 = distinct !DISubprogram(name: "data_type", linkageName: "_ZNK10tensorflow11TensorShape9data_typeEv", scope: !284, file: !101, line: 155, type: !909, scopeLine: 155, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2235, declaration: !908, retainedNodes: !212)
!4996 = !DILocalVariable(name: "this", arg: 1, scope: !4995, type: !995, flags: DIFlagArtificial | DIFlagObjectPointer)
!4997 = !DILocation(line: 0, scope: !4995)
!4998 = !DILocation(line: 155, column: 39, scope: !4995)
!4999 = !DILocation(line: 155, column: 32, scope: !4995)
!5000 = distinct !DISubprogram(name: "vector", linkageName: "_ZNSt6vectorIlSaIlEEC2EOS1_", scope: !287, file: !288, line: 572, type: !572, scopeLine: 572, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2235, declaration: !571, retainedNodes: !212)
!5001 = !DILocalVariable(name: "this", arg: 1, scope: !5000, type: !3390, flags: DIFlagArtificial | DIFlagObjectPointer)
!5002 = !DILocation(line: 0, scope: !5000)
!5003 = !DILocalVariable(arg: 2, scope: !5000, file: !288, line: 572, type: !574)
!5004 = !DILocation(line: 572, column: 22, scope: !5000)
!5005 = !DILocation(line: 572, column: 41, scope: !5000)
!5006 = !DILocation(line: 572, column: 7, scope: !5000)
!5007 = distinct !DISubprogram(name: "_Vector_base", linkageName: "_ZNSt12_Vector_baseIlSaIlEEC2EOS1_", scope: !291, file: !288, line: 308, type: !477, scopeLine: 308, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2235, declaration: !476, retainedNodes: !212)
!5008 = !DILocalVariable(name: "this", arg: 1, scope: !5007, type: !3549, flags: DIFlagArtificial | DIFlagObjectPointer)
!5009 = !DILocation(line: 0, scope: !5007)
!5010 = !DILocalVariable(arg: 2, scope: !5007, file: !288, line: 308, type: !479)
!5011 = !DILocation(line: 308, column: 34, scope: !5007)
!5012 = !DILocation(line: 308, column: 7, scope: !5007)
!5013 = !DILocation(line: 308, column: 44, scope: !5007)
!5014 = distinct !DISubprogram(name: "_Vector_impl", linkageName: "_ZNSt12_Vector_baseIlSaIlEE12_Vector_implC2EOS2_", scope: !294, file: !288, line: 143, type: !438, scopeLine: 145, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2235, declaration: !437, retainedNodes: !212)
!5015 = !DILocalVariable(name: "this", arg: 1, scope: !5014, type: !3601, flags: DIFlagArtificial | DIFlagObjectPointer)
!5016 = !DILocation(line: 0, scope: !5014)
!5017 = !DILocalVariable(name: "__x", arg: 2, scope: !5014, file: !288, line: 143, type: !440)
!5018 = !DILocation(line: 143, column: 30, scope: !5014)
!5019 = !DILocation(line: 145, column: 2, scope: !5014)
!5020 = !DILocation(line: 144, column: 29, scope: !5014)
!5021 = !DILocation(line: 144, column: 19, scope: !5014)
!5022 = !DILocation(line: 144, column: 4, scope: !5014)
!5023 = !DILocation(line: 144, column: 64, scope: !5014)
!5024 = !DILocation(line: 144, column: 54, scope: !5014)
!5025 = !DILocation(line: 144, column: 36, scope: !5014)
!5026 = !DILocation(line: 145, column: 4, scope: !5014)
!5027 = distinct !DISubprogram(name: "move<std::_Vector_base<long, std::allocator<long> >::_Vector_impl &>", linkageName: "_ZSt4moveIRNSt12_Vector_baseIlSaIlEE12_Vector_implEEONSt16remove_referenceIT_E4typeEOS6_", scope: !31, file: !3508, line: 104, type: !5028, scopeLine: 105, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2235, templateParams: !5033, retainedNodes: !212)
!5028 = !DISubroutineType(types: !5029)
!5029 = !{!5030, !5035}
!5030 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !5031, size: 64)
!5031 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !5032, file: !502, line: 1602, baseType: !294)
!5032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "remove_reference<std::_Vector_base<long, std::allocator<long> >::_Vector_impl &>", scope: !31, file: !502, line: 1601, size: 8, flags: DIFlagTypePassByValue, elements: !212, templateParams: !5033, identifier: "_ZTSSt16remove_referenceIRNSt12_Vector_baseIlSaIlEE12_Vector_implEE")
!5033 = !{!5034}
!5034 = !DITemplateTypeParameter(name: "_Tp", type: !5035)
!5035 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !294, size: 64)
!5036 = !DILocalVariable(name: "__t", arg: 1, scope: !5027, file: !3508, line: 104, type: !5035)
!5037 = !DILocation(line: 104, column: 16, scope: !5027)
!5038 = !DILocation(line: 105, column: 71, scope: !5027)
!5039 = !DILocation(line: 105, column: 7, scope: !5027)
!5040 = distinct !DISubprogram(name: "_Vector_impl_data", linkageName: "_ZNSt12_Vector_baseIlSaIlEE17_Vector_impl_dataC2EOS2_", scope: !404, file: !288, line: 102, type: !416, scopeLine: 105, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2235, declaration: !415, retainedNodes: !212)
!5041 = !DILocalVariable(name: "this", arg: 1, scope: !5040, type: !4180, flags: DIFlagArtificial | DIFlagObjectPointer)
!5042 = !DILocation(line: 0, scope: !5040)
!5043 = !DILocalVariable(name: "__x", arg: 2, scope: !5040, file: !288, line: 102, type: !418)
!5044 = !DILocation(line: 102, column: 40, scope: !5040)
!5045 = !DILocation(line: 103, column: 4, scope: !5040)
!5046 = !DILocation(line: 103, column: 13, scope: !5040)
!5047 = !DILocation(line: 103, column: 17, scope: !5040)
!5048 = !DILocation(line: 103, column: 28, scope: !5040)
!5049 = !DILocation(line: 103, column: 38, scope: !5040)
!5050 = !DILocation(line: 103, column: 42, scope: !5040)
!5051 = !DILocation(line: 104, column: 4, scope: !5040)
!5052 = !DILocation(line: 104, column: 22, scope: !5040)
!5053 = !DILocation(line: 104, column: 26, scope: !5040)
!5054 = !DILocation(line: 105, column: 35, scope: !5055)
!5055 = distinct !DILexicalBlock(scope: !5040, file: !288, line: 105, column: 2)
!5056 = !DILocation(line: 105, column: 39, scope: !5055)
!5057 = !DILocation(line: 105, column: 57, scope: !5055)
!5058 = !DILocation(line: 105, column: 19, scope: !5055)
!5059 = !DILocation(line: 105, column: 23, scope: !5055)
!5060 = !DILocation(line: 105, column: 33, scope: !5055)
!5061 = !DILocation(line: 105, column: 4, scope: !5055)
!5062 = !DILocation(line: 105, column: 8, scope: !5055)
!5063 = !DILocation(line: 105, column: 17, scope: !5055)
!5064 = !DILocation(line: 105, column: 70, scope: !5040)
!5065 = distinct !DISubprogram(name: "memcpy", scope: !5066, file: !5066, line: 12, type: !5067, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2296, retainedNodes: !212)
!5066 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/mushfiqur/tools/klee")
!5067 = !DISubroutineType(types: !5068)
!5068 = !{!38, !38, !45, !5069}
!5069 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !5070, line: 46, baseType: !21)
!5070 = !DIFile(filename: "llvm-11/lib/clang/11.1.0/include/stddef.h", directory: "/home/mushfiqur")
!5071 = !DILocalVariable(name: "destaddr", arg: 1, scope: !5065, file: !5066, line: 12, type: !38)
!5072 = !DILocation(line: 12, column: 20, scope: !5065)
!5073 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !5065, file: !5066, line: 12, type: !45)
!5074 = !DILocation(line: 12, column: 42, scope: !5065)
!5075 = !DILocalVariable(name: "len", arg: 3, scope: !5065, file: !5066, line: 12, type: !5069)
!5076 = !DILocation(line: 12, column: 58, scope: !5065)
!5077 = !DILocalVariable(name: "dest", scope: !5065, file: !5066, line: 13, type: !242)
!5078 = !DILocation(line: 13, column: 9, scope: !5065)
!5079 = !DILocation(line: 13, column: 16, scope: !5065)
!5080 = !DILocalVariable(name: "src", scope: !5065, file: !5066, line: 14, type: !226)
!5081 = !DILocation(line: 14, column: 15, scope: !5065)
!5082 = !DILocation(line: 14, column: 21, scope: !5065)
!5083 = !DILocation(line: 16, column: 3, scope: !5065)
!5084 = !DILocation(line: 16, column: 13, scope: !5065)
!5085 = !DILocation(line: 16, column: 16, scope: !5065)
!5086 = !DILocation(line: 17, column: 19, scope: !5065)
!5087 = !DILocation(line: 17, column: 15, scope: !5065)
!5088 = !DILocation(line: 17, column: 10, scope: !5065)
!5089 = !DILocation(line: 17, column: 13, scope: !5065)
!5090 = distinct !{!5090, !5083, !5086}
!5091 = !DILocation(line: 18, column: 10, scope: !5065)
!5092 = !DILocation(line: 18, column: 3, scope: !5065)
!5093 = distinct !DISubprogram(name: "memmove", scope: !5094, file: !5094, line: 12, type: !5067, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2298, retainedNodes: !212)
!5094 = !DIFile(filename: "runtime/Freestanding/memmove.c", directory: "/home/mushfiqur/tools/klee")
!5095 = !DILocalVariable(name: "dst", arg: 1, scope: !5093, file: !5094, line: 12, type: !38)
!5096 = !DILocation(line: 12, column: 21, scope: !5093)
!5097 = !DILocalVariable(name: "src", arg: 2, scope: !5093, file: !5094, line: 12, type: !45)
!5098 = !DILocation(line: 12, column: 38, scope: !5093)
!5099 = !DILocalVariable(name: "count", arg: 3, scope: !5093, file: !5094, line: 12, type: !5069)
!5100 = !DILocation(line: 12, column: 50, scope: !5093)
!5101 = !DILocalVariable(name: "a", scope: !5093, file: !5094, line: 13, type: !242)
!5102 = !DILocation(line: 13, column: 9, scope: !5093)
!5103 = !DILocation(line: 13, column: 13, scope: !5093)
!5104 = !DILocalVariable(name: "b", scope: !5093, file: !5094, line: 14, type: !226)
!5105 = !DILocation(line: 14, column: 15, scope: !5093)
!5106 = !DILocation(line: 14, column: 19, scope: !5093)
!5107 = !DILocation(line: 16, column: 7, scope: !5108)
!5108 = distinct !DILexicalBlock(scope: !5093, file: !5094, line: 16, column: 7)
!5109 = !DILocation(line: 16, column: 14, scope: !5108)
!5110 = !DILocation(line: 16, column: 11, scope: !5108)
!5111 = !DILocation(line: 16, column: 7, scope: !5093)
!5112 = !DILocation(line: 17, column: 12, scope: !5108)
!5113 = !DILocation(line: 17, column: 5, scope: !5108)
!5114 = !DILocation(line: 19, column: 7, scope: !5115)
!5115 = distinct !DILexicalBlock(scope: !5093, file: !5094, line: 19, column: 7)
!5116 = !DILocation(line: 19, column: 13, scope: !5115)
!5117 = !DILocation(line: 19, column: 11, scope: !5115)
!5118 = !DILocation(line: 19, column: 7, scope: !5093)
!5119 = !DILocation(line: 20, column: 17, scope: !5120)
!5120 = distinct !DILexicalBlock(scope: !5115, file: !5094, line: 19, column: 18)
!5121 = !DILocation(line: 20, column: 5, scope: !5120)
!5122 = !DILocation(line: 21, column: 16, scope: !5120)
!5123 = !DILocation(line: 21, column: 14, scope: !5120)
!5124 = !DILocation(line: 21, column: 9, scope: !5120)
!5125 = !DILocation(line: 21, column: 12, scope: !5120)
!5126 = distinct !{!5126, !5121, !5122}
!5127 = !DILocation(line: 23, column: 10, scope: !5128)
!5128 = distinct !DILexicalBlock(scope: !5115, file: !5094, line: 22, column: 10)
!5129 = !DILocation(line: 23, column: 16, scope: !5128)
!5130 = !DILocation(line: 23, column: 7, scope: !5128)
!5131 = !DILocation(line: 24, column: 10, scope: !5128)
!5132 = !DILocation(line: 24, column: 16, scope: !5128)
!5133 = !DILocation(line: 24, column: 7, scope: !5128)
!5134 = !DILocation(line: 25, column: 5, scope: !5128)
!5135 = !DILocation(line: 25, column: 17, scope: !5128)
!5136 = !DILocation(line: 26, column: 16, scope: !5128)
!5137 = !DILocation(line: 26, column: 14, scope: !5128)
!5138 = !DILocation(line: 26, column: 9, scope: !5128)
!5139 = !DILocation(line: 26, column: 12, scope: !5128)
!5140 = distinct !{!5140, !5134, !5136}
!5141 = !DILocation(line: 29, column: 10, scope: !5093)
!5142 = !DILocation(line: 29, column: 3, scope: !5093)
!5143 = !DILocation(line: 30, column: 1, scope: !5093)
!5144 = distinct !DISubprogram(name: "memset", scope: !5145, file: !5145, line: 12, type: !5146, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2300, retainedNodes: !212)
!5145 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/mushfiqur/tools/klee")
!5146 = !DISubroutineType(types: !5147)
!5147 = !{!38, !38, !16, !5069}
!5148 = !DILocalVariable(name: "dst", arg: 1, scope: !5144, file: !5145, line: 12, type: !38)
!5149 = !DILocation(line: 12, column: 20, scope: !5144)
!5150 = !DILocalVariable(name: "s", arg: 2, scope: !5144, file: !5145, line: 12, type: !16)
!5151 = !DILocation(line: 12, column: 29, scope: !5144)
!5152 = !DILocalVariable(name: "count", arg: 3, scope: !5144, file: !5145, line: 12, type: !5069)
!5153 = !DILocation(line: 12, column: 39, scope: !5144)
!5154 = !DILocalVariable(name: "a", scope: !5144, file: !5145, line: 13, type: !242)
!5155 = !DILocation(line: 13, column: 9, scope: !5144)
!5156 = !DILocation(line: 13, column: 13, scope: !5144)
!5157 = !DILocation(line: 14, column: 3, scope: !5144)
!5158 = !DILocation(line: 14, column: 15, scope: !5144)
!5159 = !DILocation(line: 14, column: 18, scope: !5144)
!5160 = !DILocation(line: 15, column: 12, scope: !5144)
!5161 = !DILocation(line: 15, column: 7, scope: !5144)
!5162 = !DILocation(line: 15, column: 10, scope: !5144)
!5163 = distinct !{!5163, !5157, !5160}
!5164 = !DILocation(line: 16, column: 10, scope: !5144)
!5165 = !DILocation(line: 16, column: 3, scope: !5144)
!5166 = distinct !DISubprogram(name: "klee_div_zero_check", scope: !5167, file: !5167, line: 12, type: !5168, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2302, retainedNodes: !212)
!5167 = !DIFile(filename: "runtime/Intrinsic/klee_div_zero_check.c", directory: "/home/mushfiqur/tools/klee")
!5168 = !DISubroutineType(types: !5169)
!5169 = !{null, !1284}
!5170 = !DILocalVariable(name: "z", arg: 1, scope: !5166, file: !5167, line: 12, type: !1284)
!5171 = !DILocation(line: 12, column: 36, scope: !5166)
!5172 = !DILocation(line: 13, column: 7, scope: !5173)
!5173 = distinct !DILexicalBlock(scope: !5166, file: !5167, line: 13, column: 7)
!5174 = !DILocation(line: 13, column: 9, scope: !5173)
!5175 = !DILocation(line: 13, column: 7, scope: !5166)
!5176 = !DILocation(line: 14, column: 5, scope: !5173)
!5177 = !DILocation(line: 15, column: 1, scope: !5166)
