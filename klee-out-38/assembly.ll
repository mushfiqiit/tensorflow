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
@.str.5 = private unnamed_addr constant [14 x i8] c"t is not Null\00", align 1
@_ZGVZN10tensorflow13cpu_allocatorEvE4inst = linkonce_odr dso_local global i64 0, comdat, align 8
@_ZZN10tensorflow13cpu_allocatorEvE4inst = linkonce_odr dso_local global %"class.tensorflow::StubCPUAllocator"* null, comdat, align 8
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
@.str.6 = private unnamed_addr constant [18 x i8] c"TF_AllocateTensor\00", align 1
@_ZTVN10tensorflow15TensorInterfaceE = linkonce_odr dso_local unnamed_addr constant { [14 x i8*] } { [14 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN10tensorflow15TensorInterfaceE to i8*), i8* bitcast (void (%"class.tensorflow::TensorInterface"*)* @_ZN10tensorflow15TensorInterface7ReleaseEv to i8*), i8* bitcast (i32 (%"class.tensorflow::TensorInterface"*)* @_ZNK10tensorflow15TensorInterface4TypeEv to i8*), i8* bitcast (i32 (%"class.tensorflow::TensorInterface"*)* @_ZNK10tensorflow15TensorInterface7NumDimsEv to i8*), i8* bitcast (i64 (%"class.tensorflow::TensorInterface"*, i32)* @_ZNK10tensorflow15TensorInterface3DimEi to i8*), i8* bitcast (i64 (%"class.tensorflow::TensorInterface"*)* @_ZNK10tensorflow15TensorInterface11NumElementsEv to i8*), i8* bitcast (i64 (%"class.tensorflow::TensorInterface"*)* @_ZNK10tensorflow15TensorInterface8ByteSizeEv to i8*), i8* bitcast (i8* (%"class.tensorflow::TensorInterface"*)* @_ZNK10tensorflow15TensorInterface4DataEv to i8*), i8* bitcast (i1 (%"class.tensorflow::TensorInterface"*)* @_ZNK10tensorflow15TensorInterface9IsAlignedEv to i8*), i8* bitcast (i1 (%"class.tensorflow::TensorInterface"*)* @_ZNK10tensorflow15TensorInterface7CanMoveEv to i8*), i8* bitcast (void (%"class.std::__cxx11::basic_string"*, %"class.tensorflow::TensorInterface"*)* @_ZNK10tensorflow15TensorInterface14SummarizeValueB5cxx11Ev to i8*), i8* bitcast (void (%"class.tensorflow::TensorInterface"*)* @_ZN10tensorflow15TensorInterfaceD2Ev to i8*), i8* bitcast (void (%"class.tensorflow::TensorInterface"*)* @_ZN10tensorflow15TensorInterfaceD0Ev to i8*)] }, comdat, align 8
@_ZTIN10tensorflow15TensorInterfaceE = linkonce_odr dso_local constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @_ZTSN10tensorflow15TensorInterfaceE, i32 0, i32 0), i8* bitcast ({ i8*, i8* }* @_ZTIN10tensorflow23AbstractTensorInterfaceE to i8*) }, comdat, align 8
@_ZTSN10tensorflow15TensorInterfaceE = linkonce_odr dso_local constant [32 x i8] c"N10tensorflow15TensorInterfaceE\00", comdat, align 1
@_ZTIN10tensorflow23AbstractTensorInterfaceE = linkonce_odr dso_local constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv117__class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @_ZTSN10tensorflow23AbstractTensorInterfaceE, i32 0, i32 0) }, comdat, align 8
@_ZTSN10tensorflow23AbstractTensorInterfaceE = linkonce_odr dso_local constant [40 x i8] c"N10tensorflow23AbstractTensorInterfaceE\00", comdat, align 1
@_ZTVN10tensorflow23AbstractTensorInterfaceE = linkonce_odr dso_local unnamed_addr constant { [14 x i8*] } { [14 x i8*] [i8* null, i8* bitcast ({ i8*, i8* }* @_ZTIN10tensorflow23AbstractTensorInterfaceE to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void (%"class.tensorflow::AbstractTensorInterface"*)* @_ZN10tensorflow23AbstractTensorInterfaceD2Ev to i8*), i8* bitcast (void (%"class.tensorflow::AbstractTensorInterface"*)* @_ZN10tensorflow23AbstractTensorInterfaceD0Ev to i8*)] }, comdat, align 8
@.str.5.7 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@_ZTV16TF_ManagedBuffer = linkonce_odr dso_local unnamed_addr constant { [10 x i8*] } { [10 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTI16TF_ManagedBuffer to i8*), i8* bitcast (void (%class.TF_ManagedBuffer*)* @_ZN16TF_ManagedBufferD2Ev to i8*), i8* bitcast (void (%class.TF_ManagedBuffer*)* @_ZN16TF_ManagedBufferD0Ev to i8*), i8* bitcast (i64 (%class.TF_ManagedBuffer*)* @_ZNK16TF_ManagedBuffer4sizeEv to i8*), i8* bitcast (%"class.tensorflow::TensorBuffer"* (%class.TF_ManagedBuffer*)* @_ZN16TF_ManagedBuffer11root_bufferEv to i8*), i8* bitcast (void (%class.TF_ManagedBuffer*, %"class.tensorflow::AllocationDescription"*)* @_ZNK16TF_ManagedBuffer25FillAllocationDescriptionEPN10tensorflow21AllocationDescriptionE to i8*), i8* bitcast (i1 (%"class.tensorflow::TensorBuffer"*, i64*)* @_ZNK10tensorflow12TensorBuffer17GetAllocatedBytesEPm to i8*), i8* bitcast (i1 (%class.TF_ManagedBuffer*)* @_ZNK16TF_ManagedBuffer10OwnsMemoryEv to i8*), i8* bitcast (i32 (%"class.tensorflow::TensorBuffer"*)* @_ZNK10tensorflow12TensorBuffer13GetMemoryTypeEv to i8*)] }, comdat, align 8
@_ZTI16TF_ManagedBuffer = linkonce_odr dso_local constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @_ZTS16TF_ManagedBuffer, i32 0, i32 0), i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN10tensorflow12TensorBufferE to i8*) }, comdat, align 8
@_ZTS16TF_ManagedBuffer = linkonce_odr dso_local constant [19 x i8] c"16TF_ManagedBuffer\00", comdat, align 1
@_ZTVN10tensorflow4core10RefCountedE = linkonce_odr dso_local unnamed_addr constant { [4 x i8*] } { [4 x i8*] [i8* null, i8* bitcast ({ i8*, i8* }* @_ZTIN10tensorflow4core10RefCountedE to i8*), i8* bitcast (void (%"class.tensorflow::core::RefCounted"*)* @_ZN10tensorflow4core10RefCountedD2Ev to i8*), i8* bitcast (void (%"class.tensorflow::core::RefCounted"*)* @_ZN10tensorflow4core10RefCountedD0Ev to i8*)] }, comdat, align 8
@_ZTIN10tensorflow4core10RefCountedE = linkonce_odr dso_local constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv117__class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @_ZTSN10tensorflow4core10RefCountedE, i32 0, i32 0) }, comdat, align 8
@_ZTSN10tensorflow4core10RefCountedE = linkonce_odr dso_local constant [32 x i8] c"N10tensorflow4core10RefCountedE\00", comdat, align 1
@.str.1.10 = private unnamed_addr constant [13 x i8] c"TF_NewTensor\00", align 1
@_ZTVN10tensorflow12TensorBufferE = dso_local unnamed_addr constant { [10 x i8*] } { [10 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN10tensorflow12TensorBufferE to i8*), i8* bitcast (void (%"class.tensorflow::TensorBuffer"*)* @_ZN10tensorflow12TensorBufferD2Ev to i8*), i8* bitcast (void (%"class.tensorflow::TensorBuffer"*)* @_ZN10tensorflow12TensorBufferD0Ev to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (i1 (%"class.tensorflow::TensorBuffer"*, i64*)* @_ZNK10tensorflow12TensorBuffer17GetAllocatedBytesEPm to i8*), i8* bitcast (i1 (%"class.tensorflow::TensorBuffer"*)* @_ZNK10tensorflow12TensorBuffer10OwnsMemoryEv to i8*), i8* bitcast (i32 (%"class.tensorflow::TensorBuffer"*)* @_ZNK10tensorflow12TensorBuffer13GetMemoryTypeEv to i8*)] }, align 8
@_ZTIN10tensorflow12TensorBufferE = dso_local constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @_ZTSN10tensorflow12TensorBufferE, i32 0, i32 0), i8* bitcast ({ i8*, i8* }* @_ZTIN10tensorflow4core10RefCountedE to i8*) }, align 8
@_ZTSN10tensorflow12TensorBufferE = dso_local constant [29 x i8] c"N10tensorflow12TensorBufferE\00", align 1
@.str.9 = private unnamed_addr constant [67 x i8] c"/home/mushfiqur/tools/klee/runtime/Intrinsic/klee_div_zero_check.c\00", align 1
@.str.1.11 = private unnamed_addr constant [15 x i8] c"divide by zero\00", align 1
@.str.2.12 = private unnamed_addr constant [8 x i8] c"div.err\00", align 1

@_ZN10tensorflow6TensorC1E8DataTypeRKNS_11TensorShapeEPNS_12TensorBufferE = dso_local unnamed_addr alias void (%"class.tensorflow::Tensor"*, i32, %"class.tensorflow::TensorShape"*, %"class.tensorflow::TensorBuffer"*), void (%"class.tensorflow::Tensor"*, i32, %"class.tensorflow::TensorShape"*, %"class.tensorflow::TensorBuffer"*)* @_ZN10tensorflow6TensorC2E8DataTypeRKNS_11TensorShapeEPNS_12TensorBufferE
@_ZN10tensorflow6TensorD1Ev = dso_local unnamed_addr alias void (%"class.tensorflow::Tensor"*), void (%"class.tensorflow::Tensor"*)* @_ZN10tensorflow6TensorD2Ev
@_ZN10tensorflow6TensorC1EOS0_ = dso_local unnamed_addr alias void (%"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"*), void (%"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"*)* @_ZN10tensorflow6TensorC2EOS0_

; Function Attrs: noinline norecurse optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %dims = alloca [2 x i64], align 16
  %dtype = alloca i32, align 4
  %len = alloca i64, align 8
  %base = alloca i8*, align 8
  %offset = alloca i32, align 4
  %data = alloca i8*, align 8
  %sym = alloca i64, align 8
  %t = alloca %struct.TF_Tensor*, align 8
  store i32 0, i32* %retval, align 4
  %arraydecay = getelementptr inbounds [2 x i64], [2 x i64]* %dims, i64 0, i64 0
  %0 = bitcast i64* %arraydecay to i8*
  call void @klee_make_symbolic(i8* %0, i64 16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %arrayidx = getelementptr inbounds [2 x i64], [2 x i64]* %dims, i64 0, i64 0
  %1 = load i64, i64* %arrayidx, align 16
  %cmp = icmp sge i64 %1, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %arrayidx1 = getelementptr inbounds [2 x i64], [2 x i64]* %dims, i64 0, i64 0
  %2 = load i64, i64* %arrayidx1, align 16
  %cmp2 = icmp sle i64 %2, 3
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i1 [ false, %entry ], [ %cmp2, %land.rhs ]
  %conv = zext i1 %3 to i64
  call void @klee_assume(i64 %conv)
  %arrayidx3 = getelementptr inbounds [2 x i64], [2 x i64]* %dims, i64 0, i64 1
  %4 = load i64, i64* %arrayidx3, align 8
  %cmp4 = icmp sge i64 %4, 0
  br i1 %cmp4, label %land.rhs5, label %land.end8

land.rhs5:                                        ; preds = %land.end
  %arrayidx6 = getelementptr inbounds [2 x i64], [2 x i64]* %dims, i64 0, i64 1
  %5 = load i64, i64* %arrayidx6, align 8
  %cmp7 = icmp sle i64 %5, 3
  br label %land.end8

land.end8:                                        ; preds = %land.rhs5, %land.end
  %6 = phi i1 [ false, %land.end ], [ %cmp7, %land.rhs5 ]
  %conv9 = zext i1 %6 to i64
  call void @klee_assume(i64 %conv9)
  %7 = bitcast i32* %dtype to i8*
  call void @klee_make_symbolic(i8* %7, i64 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %8 = load i32, i32* %dtype, align 4
  %cmp10 = icmp eq i32 %8, 1
  br i1 %cmp10, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.end8
  %9 = load i32, i32* %dtype, align 4
  %cmp11 = icmp eq i32 %9, 2
  br i1 %cmp11, label %lor.end, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %lor.lhs.false
  %10 = load i32, i32* %dtype, align 4
  %cmp13 = icmp eq i32 %10, 3
  br i1 %cmp13, label %lor.end, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %lor.lhs.false12
  %11 = load i32, i32* %dtype, align 4
  %cmp15 = icmp eq i32 %11, 4
  br i1 %cmp15, label %lor.end, label %lor.lhs.false16

lor.lhs.false16:                                  ; preds = %lor.lhs.false14
  %12 = load i32, i32* %dtype, align 4
  %cmp17 = icmp eq i32 %12, 5
  br i1 %cmp17, label %lor.end, label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %lor.lhs.false16
  %13 = load i32, i32* %dtype, align 4
  %cmp19 = icmp eq i32 %13, 6
  br i1 %cmp19, label %lor.end, label %lor.lhs.false20

lor.lhs.false20:                                  ; preds = %lor.lhs.false18
  %14 = load i32, i32* %dtype, align 4
  %cmp21 = icmp eq i32 %14, 9
  br i1 %cmp21, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false20
  %15 = load i32, i32* %dtype, align 4
  %cmp22 = icmp eq i32 %15, 10
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false20, %lor.lhs.false18, %lor.lhs.false16, %lor.lhs.false14, %lor.lhs.false12, %lor.lhs.false, %land.end8
  %16 = phi i1 [ true, %lor.lhs.false20 ], [ true, %lor.lhs.false18 ], [ true, %lor.lhs.false16 ], [ true, %lor.lhs.false14 ], [ true, %lor.lhs.false12 ], [ true, %lor.lhs.false ], [ true, %land.end8 ], [ %cmp22, %lor.rhs ]
  %conv23 = zext i1 %16 to i64
  call void @klee_assume(i64 %conv23)
  %17 = bitcast i64* %len to i8*
  call void @klee_make_symbolic(i8* %17, i64 8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %18 = load i64, i64* %len, align 8
  %cmp24 = icmp ule i64 %18, 128
  %conv25 = zext i1 %cmp24 to i64
  call void @klee_assume(i64 %conv25)
  %call = call noalias i8* @malloc(i64 192) #5
  store i8* %call, i8** %base, align 8
  %19 = load i8*, i8** %base, align 8
  %cmp26 = icmp ne i8* %19, null
  %conv27 = zext i1 %cmp26 to i64
  call void @klee_assume(i64 %conv27)
  %20 = bitcast i32* %offset to i8*
  call void @klee_make_symbolic(i8* %20, i64 4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %21 = load i32, i32* %offset, align 4
  %cmp28 = icmp ult i32 %21, 32
  %conv29 = zext i1 %cmp28 to i64
  call void @klee_assume(i64 %conv29)
  %22 = load i8*, i8** %base, align 8
  %23 = load i32, i32* %offset, align 4
  %idx.ext = zext i32 %23 to i64
  %add.ptr = getelementptr inbounds i8, i8* %22, i64 %idx.ext
  store i8* %add.ptr, i8** %data, align 8
  %24 = load i64, i64* %len, align 8
  %cmp30 = icmp ugt i64 %24, 0
  br i1 %cmp30, label %if.then, label %if.end

if.then:                                          ; preds = %lor.end
  %25 = load i64, i64* %len, align 8
  %cmp31 = icmp ult i64 %25, 32
  br i1 %cmp31, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %26 = load i64, i64* %len, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %26, %cond.true ], [ 32, %cond.false ]
  store i64 %cond, i64* %sym, align 8
  %27 = load i8*, i8** %data, align 8
  %28 = load i64, i64* %sym, align 8
  call void @klee_make_symbolic(i8* %27, i64 %28, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %cond.end, %lor.end
  %29 = load i32, i32* %dtype, align 4
  %arraydecay32 = getelementptr inbounds [2 x i64], [2 x i64]* %dims, i64 0, i64 0
  %30 = load i8*, i8** %data, align 8
  %31 = load i64, i64* %len, align 8
  %call33 = call %struct.TF_Tensor* @TF_NewTensor(i32 %29, i64* %arraydecay32, i32 2, i8* %30, i64 %31, void (i8*, i64, i8*)* @_ZL17dummy_deallocatorPvmS_, i8* null)
  store %struct.TF_Tensor* %call33, %struct.TF_Tensor** %t, align 8
  %32 = load %struct.TF_Tensor*, %struct.TF_Tensor** %t, align 8
  %cmp34 = icmp eq %struct.TF_Tensor* %32, null
  br i1 %cmp34, label %if.then35, label %if.end43

if.then35:                                        ; preds = %if.end
  %arrayidx36 = getelementptr inbounds [2 x i64], [2 x i64]* %dims, i64 0, i64 0
  %33 = load i64, i64* %arrayidx36, align 16
  %cmp37 = icmp eq i64 %33, 0
  br i1 %cmp37, label %if.then41, label %lor.lhs.false38

lor.lhs.false38:                                  ; preds = %if.then35
  %arrayidx39 = getelementptr inbounds [2 x i64], [2 x i64]* %dims, i64 0, i64 1
  %34 = load i64, i64* %arrayidx39, align 8
  %cmp40 = icmp eq i64 %34, 0
  br i1 %cmp40, label %if.then41, label %if.else

if.then41:                                        ; preds = %lor.lhs.false38, %if.then35
  br label %if.end42

if.else:                                          ; preds = %lor.lhs.false38
  br label %if.end42

if.end42:                                         ; preds = %if.else, %if.then41
  store i32 0, i32* %retval, align 4
  br label %return

if.end43:                                         ; preds = %if.end
  %call44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  %35 = load %struct.TF_Tensor*, %struct.TF_Tensor** %t, align 8
  call void @TF_DeleteTensor(%struct.TF_Tensor* %35)
  %36 = load i8*, i8** %base, align 8
  call void @free(i8* %36) #5
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end43, %if.end42
  %37 = load i32, i32* %retval, align 4
  ret i32 %37
}

declare dso_local void @klee_make_symbolic(i8*, i64, i8*) #1

declare dso_local void @klee_assume(i64) #1

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_ZL17dummy_deallocatorPvmS_(i8* %data, i64 %len, i8* %arg) #3 {
entry:
  %data.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %arg.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: nounwind
declare dso_local void @free(i8*) #2

; Function Attrs: noinline optnone uwtable
define dso_local i8* @_ZN10tensorflow15allocate_tensorEPKcmPNS_9AllocatorE(i8* %operation, i64 %len, %"class.tensorflow::AbstractTensorInterface"* %allocator) #4 {
entry:
  %operation.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %allocator.addr = alloca %"class.tensorflow::AbstractTensorInterface"*, align 8
  %data = alloca i8*, align 8
  store i8* %operation, i8** %operation.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store %"class.tensorflow::AbstractTensorInterface"* %allocator, %"class.tensorflow::AbstractTensorInterface"** %allocator.addr, align 8
  %0 = load %"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"** %allocator.addr, align 8
  %1 = load i64, i64* %len.addr, align 8
  %2 = bitcast %"class.tensorflow::AbstractTensorInterface"* %0 to i8* (%"class.tensorflow::AbstractTensorInterface"*, i64, i64)***
  %vtable = load i8* (%"class.tensorflow::AbstractTensorInterface"*, i64, i64)**, i8* (%"class.tensorflow::AbstractTensorInterface"*, i64, i64)*** %2, align 8
  %vfn = getelementptr inbounds i8* (%"class.tensorflow::AbstractTensorInterface"*, i64, i64)*, i8* (%"class.tensorflow::AbstractTensorInterface"*, i64, i64)** %vtable, i64 3
  %3 = load i8* (%"class.tensorflow::AbstractTensorInterface"*, i64, i64)*, i8* (%"class.tensorflow::AbstractTensorInterface"*, i64, i64)** %vfn, align 8
  %call = call i8* %3(%"class.tensorflow::AbstractTensorInterface"* %0, i64 64, i64 %1)
  store i8* %call, i8** %data, align 8
  %4 = load i8*, i8** %data, align 8
  ret i8* %4
}

; Function Attrs: noinline optnone uwtable
define dso_local i8* @_ZN10tensorflow15allocate_tensorEPKcm(i8* %operation, i64 %len) #4 {
entry:
  %operation.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  store i8* %operation, i8** %operation.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  %0 = load i8*, i8** %operation.addr, align 8
  %1 = load i64, i64* %len.addr, align 8
  %call = call %"class.tensorflow::AbstractTensorInterface"* @_ZN10tensorflow13cpu_allocatorEv()
  %call1 = call i8* @_ZN10tensorflow15allocate_tensorEPKcmPNS_9AllocatorE(i8* %0, i64 %1, %"class.tensorflow::AbstractTensorInterface"* %call)
  ret i8* %call1
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %"class.tensorflow::AbstractTensorInterface"* @_ZN10tensorflow13cpu_allocatorEv() #4 comdat personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  %0 = load i8, i8* bitcast (i64* @_ZGVZN10tensorflow13cpu_allocatorEvE4inst to i8*), align 8
  %guard.uninitialized = icmp eq i8 %0, 0
  br i1 %guard.uninitialized, label %init.check, label %init.end, !prof !13

init.check:                                       ; preds = %entry
  %1 = call i32 @__cxa_guard_acquire(i64* @_ZGVZN10tensorflow13cpu_allocatorEvE4inst) #5
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %init, label %init.end

init:                                             ; preds = %init.check
  %call = invoke noalias nonnull i8* @_Znwm(i64 8) #16
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %init
  %2 = bitcast i8* %call to %"class.tensorflow::StubCPUAllocator"*
  %3 = bitcast %"class.tensorflow::StubCPUAllocator"* %2 to i8*
  %4 = call i8* @memset(i8* %3, i32 0, i64 8)
  call void @_ZN10tensorflow16StubCPUAllocatorC2Ev(%"class.tensorflow::StubCPUAllocator"* %2) #5
  store %"class.tensorflow::StubCPUAllocator"* %2, %"class.tensorflow::StubCPUAllocator"** @_ZZN10tensorflow13cpu_allocatorEvE4inst, align 8
  call void @__cxa_guard_release(i64* @_ZGVZN10tensorflow13cpu_allocatorEvE4inst) #5
  br label %init.end

init.end:                                         ; preds = %invoke.cont, %init.check, %entry
  %5 = load %"class.tensorflow::StubCPUAllocator"*, %"class.tensorflow::StubCPUAllocator"** @_ZZN10tensorflow13cpu_allocatorEvE4inst, align 8
  %6 = bitcast %"class.tensorflow::StubCPUAllocator"* %5 to %"class.tensorflow::AbstractTensorInterface"*
  ret %"class.tensorflow::AbstractTensorInterface"* %6

lpad:                                             ; preds = %init
  %7 = landingpad { i8*, i32 }
          cleanup
  %8 = extractvalue { i8*, i32 } %7, 0
  store i8* %8, i8** %exn.slot, align 8
  %9 = extractvalue { i8*, i32 } %7, 1
  store i32 %9, i32* %ehselector.slot, align 4
  call void @__cxa_guard_abort(i64* @_ZGVZN10tensorflow13cpu_allocatorEvE4inst) #5
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val1 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val1
}

declare dso_local i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare dso_local i32 @__cxa_guard_acquire(i64*) #5

; Function Attrs: nobuiltin allocsize(0)
declare dso_local nonnull i8* @_Znwm(i64) #6

; Function Attrs: argmemonly nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow16StubCPUAllocatorC2Ev(%"class.tensorflow::StubCPUAllocator"* %this) unnamed_addr #3 comdat align 2 {
entry:
  %this.addr = alloca %"class.tensorflow::StubCPUAllocator"*, align 8
  store %"class.tensorflow::StubCPUAllocator"* %this, %"class.tensorflow::StubCPUAllocator"** %this.addr, align 8
  %this1 = load %"class.tensorflow::StubCPUAllocator"*, %"class.tensorflow::StubCPUAllocator"** %this.addr, align 8
  %0 = bitcast %"class.tensorflow::StubCPUAllocator"* %this1 to %"class.tensorflow::AbstractTensorInterface"*
  call void @_ZN10tensorflow9AllocatorC2Ev(%"class.tensorflow::AbstractTensorInterface"* %0) #5
  %1 = bitcast %"class.tensorflow::StubCPUAllocator"* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [19 x i8*] }, { [19 x i8*] }* @_ZTVN10tensorflow16StubCPUAllocatorE, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %1, align 8
  ret void
}

; Function Attrs: nounwind
declare dso_local void @__cxa_guard_release(i64*) #5

; Function Attrs: nounwind
declare dso_local void @__cxa_guard_abort(i64*) #5

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow9AllocatorC2Ev(%"class.tensorflow::AbstractTensorInterface"* %this) unnamed_addr #3 comdat align 2 {
entry:
  %this.addr = alloca %"class.tensorflow::AbstractTensorInterface"*, align 8
  store %"class.tensorflow::AbstractTensorInterface"* %this, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  %this1 = load %"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  %0 = bitcast %"class.tensorflow::AbstractTensorInterface"* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [19 x i8*] }, { [19 x i8*] }* @_ZTVN10tensorflow9AllocatorE, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %0, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow16StubCPUAllocatorD2Ev(%"class.tensorflow::StubCPUAllocator"* %this) unnamed_addr #3 comdat align 2 {
entry:
  %this.addr = alloca %"class.tensorflow::StubCPUAllocator"*, align 8
  store %"class.tensorflow::StubCPUAllocator"* %this, %"class.tensorflow::StubCPUAllocator"** %this.addr, align 8
  %this1 = load %"class.tensorflow::StubCPUAllocator"*, %"class.tensorflow::StubCPUAllocator"** %this.addr, align 8
  %0 = bitcast %"class.tensorflow::StubCPUAllocator"* %this1 to %"class.tensorflow::AbstractTensorInterface"*
  call void @_ZN10tensorflow9AllocatorD2Ev(%"class.tensorflow::AbstractTensorInterface"* %0) #5
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow16StubCPUAllocatorD0Ev(%"class.tensorflow::StubCPUAllocator"* %this) unnamed_addr #3 comdat align 2 {
entry:
  %this.addr = alloca %"class.tensorflow::StubCPUAllocator"*, align 8
  store %"class.tensorflow::StubCPUAllocator"* %this, %"class.tensorflow::StubCPUAllocator"** %this.addr, align 8
  %this1 = load %"class.tensorflow::StubCPUAllocator"*, %"class.tensorflow::StubCPUAllocator"** %this.addr, align 8
  call void @_ZN10tensorflow16StubCPUAllocatorD2Ev(%"class.tensorflow::StubCPUAllocator"* %this1) #5
  %0 = bitcast %"class.tensorflow::StubCPUAllocator"* %this1 to i8*
  call void @_ZdlPv(i8* %0) #17
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow16StubCPUAllocator4NameB5cxx11Ev(%"class.std::__cxx11::basic_string"* noalias sret align 8 %agg.result, %"class.tensorflow::StubCPUAllocator"* %this) unnamed_addr #4 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %result.ptr = alloca i8*, align 8
  %this.addr = alloca %"class.tensorflow::StubCPUAllocator"*, align 8
  %ref.tmp = alloca %"class.std::allocator.0", align 1
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  %0 = bitcast %"class.std::__cxx11::basic_string"* %agg.result to i8*
  store i8* %0, i8** %result.ptr, align 8
  store %"class.tensorflow::StubCPUAllocator"* %this, %"class.tensorflow::StubCPUAllocator"** %this.addr, align 8
  %this1 = load %"class.tensorflow::StubCPUAllocator"*, %"class.tensorflow::StubCPUAllocator"** %this.addr, align 8
  call void @_ZNSaIcEC1Ev(%"class.std::allocator.0"* %ref.tmp) #5
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(%"class.std::__cxx11::basic_string"* %agg.result, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4.1, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %ref.tmp)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  call void @_ZNSaIcED1Ev(%"class.std::allocator.0"* %ref.tmp) #5
  ret void

lpad:                                             ; preds = %entry
  %1 = landingpad { i8*, i32 }
          cleanup
  %2 = extractvalue { i8*, i32 } %1, 0
  store i8* %2, i8** %exn.slot, align 8
  %3 = extractvalue { i8*, i32 } %1, 1
  store i32 %3, i32* %ehselector.slot, align 4
  call void @_ZNSaIcED1Ev(%"class.std::allocator.0"* %ref.tmp) #5
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val2 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val2
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i8* @_ZN10tensorflow9Allocator11AllocateRawEmm(%"class.tensorflow::AbstractTensorInterface"* %this, i64 %alignment, i64 %num_bytes) unnamed_addr #4 comdat align 2 {
entry:
  %this.addr = alloca %"class.tensorflow::AbstractTensorInterface"*, align 8
  %alignment.addr = alloca i64, align 8
  %num_bytes.addr = alloca i64, align 8
  store %"class.tensorflow::AbstractTensorInterface"* %this, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  store i64 %alignment, i64* %alignment.addr, align 8
  store i64 %num_bytes, i64* %num_bytes.addr, align 8
  %this1 = load %"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  %0 = load i64, i64* %num_bytes.addr, align 8
  %1 = load i64, i64* %alignment.addr, align 8
  %call = call noalias nonnull i8* @_ZnwmSt11align_val_t(i64 %0, i64 %1) #18
  %mask = sub i64 %1, 1
  %ptrint = ptrtoint i8* %call to i64
  %maskedptr = and i64 %ptrint, %mask
  %maskcond = icmp eq i64 %maskedptr, 0
  ret i8* %call
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow9Allocator13DeallocateRawEPv(%"class.tensorflow::AbstractTensorInterface"* %this, i8* %ptr) unnamed_addr #3 comdat align 2 {
entry:
  %this.addr = alloca %"class.tensorflow::AbstractTensorInterface"*, align 8
  %ptr.addr = alloca i8*, align 8
  store %"class.tensorflow::AbstractTensorInterface"* %this, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  %this1 = load %"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  %0 = load i8*, i8** %ptr.addr, align 8
  call void @_ZdlPv(i8* %0) #5
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i8* @_ZN10tensorflow9Allocator11AllocateRawEmmPKv(%"class.tensorflow::AbstractTensorInterface"* %this, i64 %alignment, i64 %num_bytes, i8* %0) unnamed_addr #4 comdat align 2 {
entry:
  %this.addr = alloca %"class.tensorflow::AbstractTensorInterface"*, align 8
  %alignment.addr = alloca i64, align 8
  %num_bytes.addr = alloca i64, align 8
  %.addr = alloca i8*, align 8
  store %"class.tensorflow::AbstractTensorInterface"* %this, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  store i64 %alignment, i64* %alignment.addr, align 8
  store i64 %num_bytes, i64* %num_bytes.addr, align 8
  store i8* %0, i8** %.addr, align 8
  %this1 = load %"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  %1 = load i64, i64* %alignment.addr, align 8
  %2 = load i64, i64* %num_bytes.addr, align 8
  %3 = bitcast %"class.tensorflow::AbstractTensorInterface"* %this1 to i8* (%"class.tensorflow::AbstractTensorInterface"*, i64, i64)***
  %vtable = load i8* (%"class.tensorflow::AbstractTensorInterface"*, i64, i64)**, i8* (%"class.tensorflow::AbstractTensorInterface"*, i64, i64)*** %3, align 8
  %vfn = getelementptr inbounds i8* (%"class.tensorflow::AbstractTensorInterface"*, i64, i64)*, i8* (%"class.tensorflow::AbstractTensorInterface"*, i64, i64)** %vtable, i64 3
  %4 = load i8* (%"class.tensorflow::AbstractTensorInterface"*, i64, i64)*, i8* (%"class.tensorflow::AbstractTensorInterface"*, i64, i64)** %vfn, align 8
  %call = call i8* %4(%"class.tensorflow::AbstractTensorInterface"* %this1, i64 %1, i64 %2)
  ret i8* %call
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow9Allocator13DeallocateRawEPvmm(%"class.tensorflow::AbstractTensorInterface"* %this, i8* %ptr, i64 %0, i64 %1) unnamed_addr #4 comdat align 2 {
entry:
  %this.addr = alloca %"class.tensorflow::AbstractTensorInterface"*, align 8
  %ptr.addr = alloca i8*, align 8
  %.addr = alloca i64, align 8
  %.addr1 = alloca i64, align 8
  store %"class.tensorflow::AbstractTensorInterface"* %this, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  store i64 %0, i64* %.addr, align 8
  store i64 %1, i64* %.addr1, align 8
  %this2 = load %"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  %2 = load i8*, i8** %ptr.addr, align 8
  %3 = bitcast %"class.tensorflow::AbstractTensorInterface"* %this2 to void (%"class.tensorflow::AbstractTensorInterface"*, i8*)***
  %vtable = load void (%"class.tensorflow::AbstractTensorInterface"*, i8*)**, void (%"class.tensorflow::AbstractTensorInterface"*, i8*)*** %3, align 8
  %vfn = getelementptr inbounds void (%"class.tensorflow::AbstractTensorInterface"*, i8*)*, void (%"class.tensorflow::AbstractTensorInterface"*, i8*)** %vtable, i64 4
  %4 = load void (%"class.tensorflow::AbstractTensorInterface"*, i8*)*, void (%"class.tensorflow::AbstractTensorInterface"*, i8*)** %vfn, align 8
  call void %4(%"class.tensorflow::AbstractTensorInterface"* %this2, i8* %2)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local zeroext i1 @_ZNK10tensorflow9Allocator21TracksAllocationSizesEv(%"class.tensorflow::AbstractTensorInterface"* %this) unnamed_addr #3 comdat align 2 {
entry:
  %this.addr = alloca %"class.tensorflow::AbstractTensorInterface"*, align 8
  store %"class.tensorflow::AbstractTensorInterface"* %this, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  %this1 = load %"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  ret i1 false
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local zeroext i1 @_ZNK10tensorflow9Allocator21AllocatesOpaqueHandleEv(%"class.tensorflow::AbstractTensorInterface"* %this) unnamed_addr #3 comdat align 2 {
entry:
  %this.addr = alloca %"class.tensorflow::AbstractTensorInterface"*, align 8
  store %"class.tensorflow::AbstractTensorInterface"* %this, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  %this1 = load %"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  ret i1 false
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @_ZNK10tensorflow9Allocator13RequestedSizeEPKv(%"class.tensorflow::AbstractTensorInterface"* %this, i8* %0) unnamed_addr #3 comdat align 2 {
entry:
  %this.addr = alloca %"class.tensorflow::AbstractTensorInterface"*, align 8
  %.addr = alloca i8*, align 8
  store %"class.tensorflow::AbstractTensorInterface"* %this, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  store i8* %0, i8** %.addr, align 8
  %this1 = load %"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  ret i64 0
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @_ZNK10tensorflow9Allocator13AllocatedSizeEPKv(%"class.tensorflow::AbstractTensorInterface"* %this, i8* %0) unnamed_addr #3 comdat align 2 {
entry:
  %this.addr = alloca %"class.tensorflow::AbstractTensorInterface"*, align 8
  %.addr = alloca i8*, align 8
  store %"class.tensorflow::AbstractTensorInterface"* %this, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  store i8* %0, i8** %.addr, align 8
  %this1 = load %"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  ret i64 0
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @_ZNK10tensorflow9Allocator12AllocationIdEPKv(%"class.tensorflow::AbstractTensorInterface"* %this, i8* %0) unnamed_addr #3 comdat align 2 {
entry:
  %this.addr = alloca %"class.tensorflow::AbstractTensorInterface"*, align 8
  %.addr = alloca i8*, align 8
  store %"class.tensorflow::AbstractTensorInterface"* %this, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  store i8* %0, i8** %.addr, align 8
  %this1 = load %"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  ret i64 0
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @_ZNK10tensorflow9Allocator17AllocatedSizeSlowEPKv(%"class.tensorflow::AbstractTensorInterface"* %this, i8* %0) unnamed_addr #3 comdat align 2 {
entry:
  %this.addr = alloca %"class.tensorflow::AbstractTensorInterface"*, align 8
  %.addr = alloca i8*, align 8
  store %"class.tensorflow::AbstractTensorInterface"* %this, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  store i8* %0, i8** %.addr, align 8
  %this1 = load %"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  ret i64 0
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local zeroext i1 @_ZN10tensorflow9Allocator10ClearStatsEv(%"class.tensorflow::AbstractTensorInterface"* %this) unnamed_addr #3 comdat align 2 {
entry:
  %this.addr = alloca %"class.tensorflow::AbstractTensorInterface"*, align 8
  store %"class.tensorflow::AbstractTensorInterface"* %this, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  %this1 = load %"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  ret i1 false
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow9Allocator15SetSafeFrontierEm(%"class.tensorflow::AbstractTensorInterface"* %this, i64 %0) unnamed_addr #3 comdat align 2 {
entry:
  %this.addr = alloca %"class.tensorflow::AbstractTensorInterface"*, align 8
  %.addr = alloca i64, align 8
  store %"class.tensorflow::AbstractTensorInterface"* %this, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  store i64 %0, i64* %.addr, align 8
  %this1 = load %"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow9Allocator29SetStreamAndPreallocateMemoryEPv(%"class.tensorflow::AbstractTensorInterface"* %this, i8* %0) unnamed_addr #3 comdat align 2 {
entry:
  %this.addr = alloca %"class.tensorflow::AbstractTensorInterface"*, align 8
  %.addr = alloca i8*, align 8
  store %"class.tensorflow::AbstractTensorInterface"* %this, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  store i8* %0, i8** %.addr, align 8
  %this1 = load %"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i32 @_ZNK10tensorflow9Allocator13GetMemoryTypeEv(%"class.tensorflow::AbstractTensorInterface"* %this) unnamed_addr #3 comdat align 2 {
entry:
  %this.addr = alloca %"class.tensorflow::AbstractTensorInterface"*, align 8
  store %"class.tensorflow::AbstractTensorInterface"* %this, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  %this1 = load %"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  ret i32 0
}

; Function Attrs: nobuiltin nounwind
declare dso_local void @_ZdlPv(i8*) #8

; Function Attrs: nobuiltin allocsize(0)
declare dso_local noalias nonnull i8* @_ZnwmSt11align_val_t(i64, i64) #6

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #9

; Function Attrs: nounwind
declare dso_local void @_ZNSaIcEC1Ev(%"class.std::allocator.0"*) unnamed_addr #2

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(%"class.std::__cxx11::basic_string"* %this, i8* %__s, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %__a) unnamed_addr #4 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
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
  store i8* %__s, i8** %__s.addr, align 8
  store %"class.std::allocator.0"* %__a, %"class.std::allocator.0"** %__a.addr, align 8
  %this1 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %this.addr, align 8
  %_M_dataplus = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %this1, i32 0, i32 0
  %call = call i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv(%"class.std::__cxx11::basic_string"* %this1)
  %0 = load %"class.std::allocator.0"*, %"class.std::allocator.0"** %__a.addr, align 8
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC1EPcRKS3_(%"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char>>::_Alloc_hider"* %_M_dataplus, i8* %call, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %0)
  %1 = load i8*, i8** %__s.addr, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i8*, i8** %__s.addr, align 8
  %3 = load i8*, i8** %__s.addr, align 8
  %call2 = invoke i64 @_ZNSt11char_traitsIcE6lengthEPKc(i8* %3)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %cond.true
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 %call2
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %invoke.cont
  %cond = phi i8* [ %add.ptr, %invoke.cont ], [ inttoptr (i64 1 to i8*), %cond.false ]
  store i8* %cond, i8** %__end, align 8
  %4 = load i8*, i8** %__s.addr, align 8
  %5 = load i8*, i8** %__end, align 8
  %6 = bitcast %"class.std::allocator.0"* %ref.tmp to %"class.std::allocator.0"*
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag(%"class.std::__cxx11::basic_string"* %this1, i8* %4, i8* %5)
          to label %invoke.cont3 unwind label %lpad

invoke.cont3:                                     ; preds = %cond.end
  ret void

lpad:                                             ; preds = %cond.end, %cond.true
  %7 = landingpad { i8*, i32 }
          cleanup
  %8 = extractvalue { i8*, i32 } %7, 0
  store i8* %8, i8** %exn.slot, align 8
  %9 = extractvalue { i8*, i32 } %7, 1
  store i32 %9, i32* %ehselector.slot, align 4
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev(%"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char>>::_Alloc_hider"* %_M_dataplus) #5
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val4 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val4
}

; Function Attrs: nounwind
declare dso_local void @_ZNSaIcED1Ev(%"class.std::allocator.0"*) unnamed_addr #2

declare dso_local i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv(%"class.std::__cxx11::basic_string"*) #1

declare dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC1EPcRKS3_(%"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char>>::_Alloc_hider"*, i8*, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i64 @_ZNSt11char_traitsIcE6lengthEPKc(i8* %__s) #4 comdat align 2 {
entry:
  %__s.addr.i = alloca i8*, align 8
  %retval = alloca i64, align 8
  %__s.addr = alloca i8*, align 8
  store i8* %__s, i8** %__s.addr, align 8
  %0 = load i8*, i8** %__s.addr, align 8
  store i8* %0, i8** %__s.addr.i, align 8
  br i1 false, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %__s.addr, align 8
  %call1 = call i64 @_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc(i8* %1)
  store i64 %call1, i64* %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %__s.addr, align 8
  %call2 = call i64 @strlen(i8* %2) #5
  store i64 %call2, i64* %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i64, i64* %retval, align 8
  ret i64 %3
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag(%"class.std::__cxx11::basic_string"* %this, i8* %__beg, i8* %__end) #4 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %0 = alloca %"class.std::allocator.0", align 1
  %this.addr = alloca %"class.std::__cxx11::basic_string"*, align 8
  %__beg.addr = alloca i8*, align 8
  %__end.addr = alloca i8*, align 8
  %__dnew = alloca i64, align 8
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  store %"class.std::__cxx11::basic_string"* %this, %"class.std::__cxx11::basic_string"** %this.addr, align 8
  store i8* %__beg, i8** %__beg.addr, align 8
  store i8* %__end, i8** %__end.addr, align 8
  %this1 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %this.addr, align 8
  %1 = load i8*, i8** %__beg.addr, align 8
  %call = call zeroext i1 @_ZN9__gnu_cxx17__is_null_pointerIKcEEbPT_(i8* %1)
  br i1 %call, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load i8*, i8** %__beg.addr, align 8
  %3 = load i8*, i8** %__end.addr, align 8
  %cmp = icmp ne i8* %2, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @_ZSt19__throw_logic_errorPKc(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3.2, i64 0, i64 0)) #19
  unreachable

if.end:                                           ; preds = %land.lhs.true, %entry
  %4 = load i8*, i8** %__beg.addr, align 8
  %5 = load i8*, i8** %__end.addr, align 8
  %call2 = call i64 @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_(i8* %4, i8* %5)
  store i64 %call2, i64* %__dnew, align 8
  %6 = load i64, i64* %__dnew, align 8
  %cmp3 = icmp ugt i64 %6, 15
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %call5 = call i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* %this1, i64* nonnull align 8 dereferenceable(8) %__dnew, i64 0)
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc(%"class.std::__cxx11::basic_string"* %this1, i8* %call5)
  %7 = load i64, i64* %__dnew, align 8
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm(%"class.std::__cxx11::basic_string"* %this1, i64 %7)
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end
  %call7 = invoke i8* @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv(%"class.std::__cxx11::basic_string"* %this1)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %if.end6
  %8 = load i8*, i8** %__beg.addr, align 8
  %9 = load i8*, i8** %__end.addr, align 8
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_(i8* %call7, i8* %8, i8* %9) #5
  br label %try.cont

lpad:                                             ; preds = %if.end6
  %10 = landingpad { i8*, i32 }
          catch i8* null
  %11 = extractvalue { i8*, i32 } %10, 0
  store i8* %11, i8** %exn.slot, align 8
  %12 = extractvalue { i8*, i32 } %10, 1
  store i32 %12, i32* %ehselector.slot, align 4
  br label %catch

catch:                                            ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %13 = call i8* @__cxa_begin_catch(i8* %exn) #5
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv(%"class.std::__cxx11::basic_string"* %this1)
          to label %invoke.cont9 unwind label %lpad8

invoke.cont9:                                     ; preds = %catch
  invoke void @__cxa_rethrow() #19
          to label %unreachable unwind label %lpad8

lpad8:                                            ; preds = %invoke.cont9, %catch
  %14 = landingpad { i8*, i32 }
          cleanup
  %15 = extractvalue { i8*, i32 } %14, 0
  store i8* %15, i8** %exn.slot, align 8
  %16 = extractvalue { i8*, i32 } %14, 1
  store i32 %16, i32* %ehselector.slot, align 4
  invoke void @__cxa_end_catch()
          to label %invoke.cont10 unwind label %terminate.lpad

invoke.cont10:                                    ; preds = %lpad8
  br label %eh.resume

try.cont:                                         ; preds = %invoke.cont
  %17 = load i64, i64* %__dnew, align 8
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm(%"class.std::__cxx11::basic_string"* %this1, i64 %17)
  ret void

eh.resume:                                        ; preds = %invoke.cont10
  %exn11 = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn11, 0
  %lpad.val12 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val12

terminate.lpad:                                   ; preds = %lpad8
  %18 = landingpad { i8*, i32 }
          catch i8* null
  %19 = extractvalue { i8*, i32 } %18, 0
  call void @__clang_call_terminate(i8* %19) #13
  unreachable

unreachable:                                      ; preds = %invoke.cont9
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev(%"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char>>::_Alloc_hider"* %this) unnamed_addr #3 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char>>::_Alloc_hider"*, align 8
  store %"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char>>::_Alloc_hider"* %this, %"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char>>::_Alloc_hider"** %this.addr, align 8
  %this1 = load %"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char>>::_Alloc_hider"*, %"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char>>::_Alloc_hider"** %this.addr, align 8
  %0 = bitcast %"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char>>::_Alloc_hider"* %this1 to %"class.std::allocator.0"*
  call void @_ZNSaIcED2Ev(%"class.std::allocator.0"* %0) #5
  ret void
}

; Function Attrs: nounwind
declare dso_local void @_ZNSaIcED2Ev(%"class.std::allocator.0"*) unnamed_addr #2

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local zeroext i1 @_ZN9__gnu_cxx17__is_null_pointerIKcEEbPT_(i8* %__ptr) #3 comdat {
entry:
  %__ptr.addr = alloca i8*, align 8
  store i8* %__ptr, i8** %__ptr.addr, align 8
  %0 = load i8*, i8** %__ptr.addr, align 8
  %cmp = icmp eq i8* %0, null
  ret i1 %cmp
}

; Function Attrs: noreturn
declare dso_local void @_ZSt19__throw_logic_errorPKc(i8*) #10

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i64 @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_(i8* %__first, i8* %__last) #4 comdat {
entry:
  %__first.addr = alloca i8*, align 8
  %__last.addr = alloca i8*, align 8
  %agg.tmp = alloca %"class.std::allocator.0", align 1
  %undef.agg.tmp = alloca %"class.std::allocator.0", align 1
  store i8* %__first, i8** %__first.addr, align 8
  store i8* %__last, i8** %__last.addr, align 8
  %0 = load i8*, i8** %__first.addr, align 8
  %1 = load i8*, i8** %__last.addr, align 8
  call void @_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_(i8** nonnull align 8 dereferenceable(8) %__first.addr)
  %call = call i64 @_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag(i8* %0, i8* %1)
  ret i64 %call
}

declare dso_local i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"*, i64* nonnull align 8 dereferenceable(8), i64) #1

declare dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc(%"class.std::__cxx11::basic_string"*, i8*) #1

declare dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm(%"class.std::__cxx11::basic_string"*, i64) #1

declare dso_local i8* @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv(%"class.std::__cxx11::basic_string"*) #1

; Function Attrs: nounwind
declare dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_(i8*, i8*, i8*) #2

declare dso_local i8* @__cxa_begin_catch(i8*)

declare dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv(%"class.std::__cxx11::basic_string"*) #1

declare dso_local void @__cxa_rethrow()

declare dso_local void @__cxa_end_catch()

declare dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm(%"class.std::__cxx11::basic_string"*, i64) #1

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8* %0) #11 comdat {
  %2 = call i8* @__cxa_begin_catch(i8* %0) #5
  call void @_ZSt9terminatev() #13
  unreachable
}

declare dso_local void @_ZSt9terminatev()

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_(i8** nonnull align 8 dereferenceable(8) %0) #3 comdat {
entry:
  %.addr = alloca i8**, align 8
  store i8** %0, i8*** %.addr, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag(i8* %__first, i8* %__last) #3 comdat {
entry:
  %0 = alloca %"class.std::allocator.0", align 1
  %__first.addr = alloca i8*, align 8
  %__last.addr = alloca i8*, align 8
  store i8* %__first, i8** %__first.addr, align 8
  store i8* %__last, i8** %__last.addr, align 8
  %1 = load i8*, i8** %__last.addr, align 8
  %2 = load i8*, i8** %__first.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %1 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %2 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  ret i64 %sub.ptr.sub
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i64 @_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc(i8* %__p) #4 comdat align 2 {
entry:
  %__p.addr = alloca i8*, align 8
  %__i = alloca i64, align 8
  %ref.tmp = alloca i8, align 1
  store i8* %__p, i8** %__p.addr, align 8
  store i64 0, i64* %__i, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i8*, i8** %__p.addr, align 8
  %1 = load i64, i64* %__i, align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 %1
  store i8 0, i8* %ref.tmp, align 1
  %call = call zeroext i1 @_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_(i8* nonnull align 1 dereferenceable(1) %arrayidx, i8* nonnull align 1 dereferenceable(1) %ref.tmp)
  %lnot = xor i1 %call, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i64, i64* %__i, align 8
  %inc = add i64 %2, 1
  store i64 %inc, i64* %__i, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %3 = load i64, i64* %__i, align 8
  ret i64 %3
}

; Function Attrs: nounwind
declare dso_local i64 @strlen(i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local zeroext i1 @_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_(i8* nonnull align 1 dereferenceable(1) %__c1, i8* nonnull align 1 dereferenceable(1) %__c2) #3 comdat align 2 {
entry:
  %__c1.addr = alloca i8*, align 8
  %__c2.addr = alloca i8*, align 8
  store i8* %__c1, i8** %__c1.addr, align 8
  store i8* %__c2, i8** %__c2.addr, align 8
  %0 = load i8*, i8** %__c1.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  %2 = load i8*, i8** %__c2.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv1 = sext i8 %3 to i32
  %cmp = icmp eq i32 %conv, %conv1
  ret i1 %cmp
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow9AllocatorD2Ev(%"class.tensorflow::AbstractTensorInterface"* %this) unnamed_addr #3 comdat align 2 {
entry:
  %this.addr = alloca %"class.tensorflow::AbstractTensorInterface"*, align 8
  store %"class.tensorflow::AbstractTensorInterface"* %this, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  %this1 = load %"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow9AllocatorD0Ev(%"class.tensorflow::AbstractTensorInterface"* %this) unnamed_addr #3 comdat align 2 {
entry:
  %this.addr = alloca %"class.tensorflow::AbstractTensorInterface"*, align 8
  store %"class.tensorflow::AbstractTensorInterface"* %this, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  %this1 = load %"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  call void @_ZN10tensorflow9AllocatorD2Ev(%"class.tensorflow::AbstractTensorInterface"* %this1) #5
  %0 = bitcast %"class.tensorflow::AbstractTensorInterface"* %this1 to i8*
  call void @_ZdlPv(i8* %0) #17
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow9Allocator4NameB5cxx11Ev(%"class.std::__cxx11::basic_string"* noalias sret align 8 %agg.result, %"class.tensorflow::AbstractTensorInterface"* %this) unnamed_addr #4 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %result.ptr = alloca i8*, align 8
  %this.addr = alloca %"class.tensorflow::AbstractTensorInterface"*, align 8
  %ref.tmp = alloca %"class.std::allocator.0", align 1
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  %0 = bitcast %"class.std::__cxx11::basic_string"* %agg.result to i8*
  store i8* %0, i8** %result.ptr, align 8
  store %"class.tensorflow::AbstractTensorInterface"* %this, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  %this1 = load %"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  call void @_ZNSaIcEC1Ev(%"class.std::allocator.0"* %ref.tmp) #5
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(%"class.std::__cxx11::basic_string"* %agg.result, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.3, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %ref.tmp)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  call void @_ZNSaIcED1Ev(%"class.std::allocator.0"* %ref.tmp) #5
  ret void

lpad:                                             ; preds = %entry
  %1 = landingpad { i8*, i32 }
          cleanup
  %2 = extractvalue { i8*, i32 } %1, 0
  store i8* %2, i8** %exn.slot, align 8
  %3 = extractvalue { i8*, i32 } %1, 1
  store i32 %3, i32* %ehselector.slot, align 4
  call void @_ZNSaIcED1Ev(%"class.std::allocator.0"* %ref.tmp) #5
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val2 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val2
}

; Function Attrs: noinline optnone uwtable
define dso_local void @_ZN10tensorflow17deallocate_bufferEPvmS0_(i8* %data, i64 %len, i8* %arg) #4 {
entry:
  %data.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %arg.addr = alloca i8*, align 8
  %allocator = alloca %"class.tensorflow::AbstractTensorInterface"*, align 8
  store i8* %data, i8** %data.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  store %"class.tensorflow::AbstractTensorInterface"* null, %"class.tensorflow::AbstractTensorInterface"** %allocator, align 8
  %0 = load i8*, i8** %arg.addr, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call %"class.tensorflow::AbstractTensorInterface"* @_ZN10tensorflow13cpu_allocatorEv()
  store %"class.tensorflow::AbstractTensorInterface"* %call, %"class.tensorflow::AbstractTensorInterface"** %allocator, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %1 = load i8*, i8** %arg.addr, align 8
  %2 = bitcast i8* %1 to %"class.tensorflow::AbstractTensorInterface"*
  store %"class.tensorflow::AbstractTensorInterface"* %2, %"class.tensorflow::AbstractTensorInterface"** %allocator, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load %"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"** %allocator, align 8
  %4 = load i8*, i8** %data.addr, align 8
  %5 = bitcast %"class.tensorflow::AbstractTensorInterface"* %3 to void (%"class.tensorflow::AbstractTensorInterface"*, i8*)***
  %vtable = load void (%"class.tensorflow::AbstractTensorInterface"*, i8*)**, void (%"class.tensorflow::AbstractTensorInterface"*, i8*)*** %5, align 8
  %vfn = getelementptr inbounds void (%"class.tensorflow::AbstractTensorInterface"*, i8*)*, void (%"class.tensorflow::AbstractTensorInterface"*, i8*)** %vtable, i64 4
  %6 = load void (%"class.tensorflow::AbstractTensorInterface"*, i8*)*, void (%"class.tensorflow::AbstractTensorInterface"*, i8*)** %vfn, align 8
  call void %6(%"class.tensorflow::AbstractTensorInterface"* %3, i8* %4)
  ret void
}

; Function Attrs: noinline optnone uwtable
define dso_local %struct.TF_Tensor* @TF_AllocateTensor(i32 %dtype, i64* %dims, i32 %num_dims, i64 %len) #4 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
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
  store i64* %dims, i64** %dims.addr, align 8
  store i32 %num_dims, i32* %num_dims.addr, align 4
  store i64 %len, i64* %len.addr, align 8
  %0 = load i64, i64* %len.addr, align 8
  %call = call %"class.tensorflow::AbstractTensorInterface"* @_ZN10tensorflow13cpu_allocatorEv()
  %call1 = call i8* @_ZN10tensorflow15allocate_tensorEPKcmPNS_9AllocatorE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i64 %0, %"class.tensorflow::AbstractTensorInterface"* %call)
  store i8* %call1, i8** %data, align 8
  %call2 = call noalias nonnull i8* @_Znwm(i64 56) #16
  %1 = bitcast i8* %call2 to %class.TF_ManagedBuffer*
  %2 = load i8*, i8** %data, align 8
  %3 = load i64, i64* %len.addr, align 8
  %call3 = invoke %"class.tensorflow::AbstractTensorInterface"* @_ZN10tensorflow13cpu_allocatorEv()
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %4 = bitcast %"class.tensorflow::AbstractTensorInterface"* %call3 to i8*
  invoke void @_ZN16TF_ManagedBufferC2EPvmPFvS0_mS0_ES0_b(%class.TF_ManagedBuffer* %1, i8* %2, i64 %3, void (i8*, i64, i8*)* @_ZN10tensorflow17deallocate_bufferEPvmS0_, i8* %4, i1 zeroext true)
          to label %invoke.cont4 unwind label %lpad

invoke.cont4:                                     ; preds = %invoke.cont
  store %class.TF_ManagedBuffer* %1, %class.TF_ManagedBuffer** %buf, align 8
  %5 = load %class.TF_ManagedBuffer*, %class.TF_ManagedBuffer** %buf, align 8
  %6 = load i32, i32* %dtype.addr, align 4
  %7 = load i64*, i64** %dims.addr, align 8
  %8 = load i32, i32* %num_dims.addr, align 4
  %9 = load i64, i64* %len.addr, align 8
  %call5 = call %struct.TF_Tensor* @_ZN12_GLOBAL__N_112CreateTensorEP16TF_ManagedBuffer11TF_DataTypePKlim(%class.TF_ManagedBuffer* %5, i32 %6, i64* %7, i32 %8, i64 %9)
  ret %struct.TF_Tensor* %call5

lpad:                                             ; preds = %invoke.cont, %entry
  %10 = landingpad { i8*, i32 }
          cleanup
  %11 = extractvalue { i8*, i32 } %10, 0
  store i8* %11, i8** %exn.slot, align 8
  %12 = extractvalue { i8*, i32 } %10, 1
  store i32 %12, i32* %ehselector.slot, align 4
  call void @_ZdlPv(i8* %call2) #17
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val6 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val6
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN16TF_ManagedBufferC2EPvmPFvS0_mS0_ES0_b(%class.TF_ManagedBuffer* %this, i8* %data, i64 %len, void (i8*, i64, i8*)* %deallocator, i8* %deallocator_arg, i1 zeroext %owns_memory) unnamed_addr #4 comdat align 2 {
entry:
  %this.addr = alloca %class.TF_ManagedBuffer*, align 8
  %data.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %deallocator.addr = alloca void (i8*, i64, i8*)*, align 8
  %deallocator_arg.addr = alloca i8*, align 8
  %owns_memory.addr = alloca i8, align 1
  store %class.TF_ManagedBuffer* %this, %class.TF_ManagedBuffer** %this.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store void (i8*, i64, i8*)* %deallocator, void (i8*, i64, i8*)** %deallocator.addr, align 8
  store i8* %deallocator_arg, i8** %deallocator_arg.addr, align 8
  %frombool = zext i1 %owns_memory to i8
  store i8 %frombool, i8* %owns_memory.addr, align 1
  %this1 = load %class.TF_ManagedBuffer*, %class.TF_ManagedBuffer** %this.addr, align 8
  %0 = bitcast %class.TF_ManagedBuffer* %this1 to %"class.tensorflow::TensorBuffer"*
  %1 = load i8*, i8** %data.addr, align 8
  call void @_ZN10tensorflow12TensorBufferC2EPv(%"class.tensorflow::TensorBuffer"* %0, i8* %1)
  %2 = bitcast %class.TF_ManagedBuffer* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [10 x i8*] }, { [10 x i8*] }* @_ZTV16TF_ManagedBuffer, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %2, align 8
  %len_ = getelementptr inbounds %class.TF_ManagedBuffer, %class.TF_ManagedBuffer* %this1, i32 0, i32 1
  %3 = load i64, i64* %len.addr, align 8
  store i64 %3, i64* %len_, align 8
  %deallocator_ = getelementptr inbounds %class.TF_ManagedBuffer, %class.TF_ManagedBuffer* %this1, i32 0, i32 2
  %4 = load void (i8*, i64, i8*)*, void (i8*, i64, i8*)** %deallocator.addr, align 8
  store void (i8*, i64, i8*)* %4, void (i8*, i64, i8*)** %deallocator_, align 8
  %deallocator_arg_ = getelementptr inbounds %class.TF_ManagedBuffer, %class.TF_ManagedBuffer* %this1, i32 0, i32 3
  %5 = load i8*, i8** %deallocator_arg.addr, align 8
  store i8* %5, i8** %deallocator_arg_, align 8
  %owns_memory_ = getelementptr inbounds %class.TF_ManagedBuffer, %class.TF_ManagedBuffer* %this1, i32 0, i32 4
  %6 = load i8, i8* %owns_memory.addr, align 1
  %tobool = trunc i8 %6 to i1
  %frombool2 = zext i1 %tobool to i8
  store i8 %frombool2, i8* %owns_memory_, align 8
  ret void
}

; Function Attrs: noinline optnone uwtable
define internal %struct.TF_Tensor* @_ZN12_GLOBAL__N_112CreateTensorEP16TF_ManagedBuffer11TF_DataTypePKlim(%class.TF_ManagedBuffer* %buf, i32 %dtype, i64* %dims, i32 %num_dims, i64 %len) #4 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
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
  store i32 %dtype, i32* %dtype.addr, align 4
  store i64* %dims, i64** %dims.addr, align 8
  store i32 %num_dims, i32* %num_dims.addr, align 4
  store i64 %len, i64* %len.addr, align 8
  %0 = load i32, i32* %num_dims.addr, align 4
  %conv = sext i32 %0 to i64
  call void @_ZNSaIlEC2Ev(%"class.std::allocator.0"* %ref.tmp) #5
  invoke void @_ZNSt6vectorIlSaIlEEC2EmRKS0_(%"class.std::vector"* %dimvec, i64 %conv, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %ref.tmp)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  call void @_ZNSaIlED2Ev(%"class.std::allocator.0"* %ref.tmp) #5
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %invoke.cont
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %num_dims.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i64*, i64** %dims.addr, align 8
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds i64, i64* %3, i64 %idxprom
  %5 = load i64, i64* %arrayidx, align 8
  %6 = load i32, i32* %i, align 4
  %conv1 = sext i32 %6 to i64
  %call = call nonnull align 8 dereferenceable(8) i64* @_ZNSt6vectorIlSaIlEEixEm(%"class.std::vector"* %dimvec, i64 %conv1) #5
  store i64 %5, i64* %call, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

lpad:                                             ; preds = %entry
  %8 = landingpad { i8*, i32 }
          cleanup
  %9 = extractvalue { i8*, i32 } %8, 0
  store i8* %9, i8** %exn.slot, align 8
  %10 = extractvalue { i8*, i32 } %8, 1
  store i32 %10, i32* %ehselector.slot, align 4
  call void @_ZNSaIlED2Ev(%"class.std::allocator.0"* %ref.tmp) #5
  br label %eh.resume

for.end:                                          ; preds = %for.cond
  %11 = load i32, i32* %dtype.addr, align 4
  invoke void @_ZN10tensorflow11TensorShapeC2ERKSt6vectorIlSaIlEE(%"class.tensorflow::TensorShape"* %ref.tmp2, %"class.std::vector"* nonnull align 8 dereferenceable(24) %dimvec)
          to label %invoke.cont4 unwind label %lpad3

invoke.cont4:                                     ; preds = %for.end
  %12 = load %class.TF_ManagedBuffer*, %class.TF_ManagedBuffer** %buf.addr, align 8
  %13 = bitcast %class.TF_ManagedBuffer* %12 to %"class.tensorflow::TensorBuffer"*
  invoke void @_ZN10tensorflow6TensorC1E8DataTypeRKNS_11TensorShapeEPNS_12TensorBufferE(%"class.tensorflow::Tensor"* %ret, i32 %11, %"class.tensorflow::TensorShape"* nonnull align 8 dereferenceable(29) %ref.tmp2, %"class.tensorflow::TensorBuffer"* %13)
          to label %invoke.cont6 unwind label %lpad5

invoke.cont6:                                     ; preds = %invoke.cont4
  call void @_ZN10tensorflow11TensorShapeD2Ev(%"class.tensorflow::TensorShape"* %ref.tmp2) #5
  %14 = load %class.TF_ManagedBuffer*, %class.TF_ManagedBuffer** %buf.addr, align 8
  %15 = bitcast %class.TF_ManagedBuffer* %14 to %"class.tensorflow::core::RefCounted"*
  %call9 = invoke zeroext i1 @_ZNK10tensorflow4core10RefCounted5UnrefEv(%"class.tensorflow::core::RefCounted"* %15)
          to label %invoke.cont8 unwind label %lpad7

invoke.cont8:                                     ; preds = %invoke.cont6
  %16 = load i32, i32* %dtype.addr, align 4
  %call11 = invoke i64 @_ZL15TF_DataTypeSize11TF_DataType(i32 %16)
          to label %invoke.cont10 unwind label %lpad7

invoke.cont10:                                    ; preds = %invoke.cont8
  store i64 %call11, i64* %elem_size, align 8
  %17 = load i64, i64* %elem_size, align 8
  %cmp12 = icmp ugt i64 %17, 0
  br i1 %cmp12, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %invoke.cont10
  %18 = load i64, i64* %len.addr, align 8
  %19 = load i64, i64* %elem_size, align 8
  %call14 = invoke i64 @_ZNK10tensorflow6Tensor11NumElementsEv(%"class.tensorflow::Tensor"* %ret)
          to label %invoke.cont13 unwind label %lpad7

invoke.cont13:                                    ; preds = %land.lhs.true
  %mul = mul i64 %19, %call14
  %cmp15 = icmp ult i64 %18, %mul
  br i1 %cmp15, label %if.then, label %if.end

if.then:                                          ; preds = %invoke.cont13
  store %struct.TF_Tensor* null, %struct.TF_Tensor** %retval, align 8
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

lpad3:                                            ; preds = %for.end
  %20 = landingpad { i8*, i32 }
          cleanup
  %21 = extractvalue { i8*, i32 } %20, 0
  store i8* %21, i8** %exn.slot, align 8
  %22 = extractvalue { i8*, i32 } %20, 1
  store i32 %22, i32* %ehselector.slot, align 4
  br label %ehcleanup33

lpad5:                                            ; preds = %invoke.cont4
  %23 = landingpad { i8*, i32 }
          cleanup
  %24 = extractvalue { i8*, i32 } %23, 0
  store i8* %24, i8** %exn.slot, align 8
  %25 = extractvalue { i8*, i32 } %23, 1
  store i32 %25, i32* %ehselector.slot, align 4
  call void @_ZN10tensorflow11TensorShapeD2Ev(%"class.tensorflow::TensorShape"* %ref.tmp2) #5
  br label %ehcleanup33

lpad7:                                            ; preds = %if.end, %land.lhs.true, %invoke.cont8, %invoke.cont6
  %26 = landingpad { i8*, i32 }
          cleanup
  %27 = extractvalue { i8*, i32 } %26, 0
  store i8* %27, i8** %exn.slot, align 8
  %28 = extractvalue { i8*, i32 } %26, 1
  store i32 %28, i32* %ehselector.slot, align 4
  br label %ehcleanup31

if.end:                                           ; preds = %invoke.cont13, %invoke.cont10
  %call17 = invoke noalias nonnull i8* @_Znwm(i64 8) #16
          to label %invoke.cont16 unwind label %lpad7

invoke.cont16:                                    ; preds = %if.end
  store i1 true, i1* %cleanup.isactive26, align 1
  %29 = bitcast i8* %call17 to %struct.TF_Tensor*
  %tensor = getelementptr inbounds %struct.TF_Tensor, %struct.TF_Tensor* %29, i32 0, i32 0
  %call20 = invoke noalias nonnull i8* @_Znwm(i64 48) #16
          to label %invoke.cont19 unwind label %lpad18

invoke.cont19:                                    ; preds = %invoke.cont16
  store i1 true, i1* %cleanup.isactive, align 1
  %30 = bitcast i8* %call20 to %"class.tensorflow::TensorInterface"*
  %call21 = call nonnull align 8 dereferenceable(40) %"class.tensorflow::Tensor"* @_ZSt4moveIRN10tensorflow6TensorEEONSt16remove_referenceIT_E4typeEOS4_(%"class.tensorflow::Tensor"* nonnull align 8 dereferenceable(40) %ret) #5
  invoke void @_ZN10tensorflow6TensorC1EOS0_(%"class.tensorflow::Tensor"* %agg.tmp, %"class.tensorflow::Tensor"* nonnull align 8 dereferenceable(40) %call21)
          to label %invoke.cont23 unwind label %lpad22

invoke.cont23:                                    ; preds = %invoke.cont19
  invoke void @_ZN10tensorflow15TensorInterfaceC2ENS_6TensorE(%"class.tensorflow::TensorInterface"* %30, %"class.tensorflow::Tensor"* %agg.tmp)
          to label %invoke.cont25 unwind label %lpad24

invoke.cont25:                                    ; preds = %invoke.cont23
  store i1 false, i1* %cleanup.isactive, align 1
  %31 = bitcast %"class.tensorflow::TensorInterface"* %30 to %"class.tensorflow::AbstractTensorInterface"*
  store %"class.tensorflow::AbstractTensorInterface"* %31, %"class.tensorflow::AbstractTensorInterface"** %tensor, align 8
  store i1 false, i1* %cleanup.isactive26, align 1
  store %struct.TF_Tensor* %29, %struct.TF_Tensor** %retval, align 8
  call void @_ZN10tensorflow6TensorD1Ev(%"class.tensorflow::Tensor"* %agg.tmp) #5
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

lpad18:                                           ; preds = %invoke.cont16
  %32 = landingpad { i8*, i32 }
          cleanup
  %33 = extractvalue { i8*, i32 } %32, 0
  store i8* %33, i8** %exn.slot, align 8
  %34 = extractvalue { i8*, i32 } %32, 1
  store i32 %34, i32* %ehselector.slot, align 4
  br label %ehcleanup27

lpad22:                                           ; preds = %invoke.cont19
  %35 = landingpad { i8*, i32 }
          cleanup
  %36 = extractvalue { i8*, i32 } %35, 0
  store i8* %36, i8** %exn.slot, align 8
  %37 = extractvalue { i8*, i32 } %35, 1
  store i32 %37, i32* %ehselector.slot, align 4
  br label %ehcleanup

lpad24:                                           ; preds = %invoke.cont23
  %38 = landingpad { i8*, i32 }
          cleanup
  %39 = extractvalue { i8*, i32 } %38, 0
  store i8* %39, i8** %exn.slot, align 8
  %40 = extractvalue { i8*, i32 } %38, 1
  store i32 %40, i32* %ehselector.slot, align 4
  call void @_ZN10tensorflow6TensorD1Ev(%"class.tensorflow::Tensor"* %agg.tmp) #5
  br label %ehcleanup

ehcleanup:                                        ; preds = %lpad24, %lpad22
  %cleanup.is_active = load i1, i1* %cleanup.isactive, align 1
  br i1 %cleanup.is_active, label %cleanup.action, label %cleanup.done

cleanup.action:                                   ; preds = %ehcleanup
  call void @_ZdlPv(i8* %call20) #17
  br label %cleanup.done

cleanup.done:                                     ; preds = %cleanup.action, %ehcleanup
  br label %ehcleanup27

ehcleanup27:                                      ; preds = %cleanup.done, %lpad18
  %cleanup.is_active28 = load i1, i1* %cleanup.isactive26, align 1
  br i1 %cleanup.is_active28, label %cleanup.action29, label %cleanup.done30

cleanup.action29:                                 ; preds = %ehcleanup27
  call void @_ZdlPv(i8* %call17) #17
  br label %cleanup.done30

cleanup.done30:                                   ; preds = %cleanup.action29, %ehcleanup27
  br label %ehcleanup31

cleanup:                                          ; preds = %invoke.cont25, %if.then
  call void @_ZN10tensorflow6TensorD1Ev(%"class.tensorflow::Tensor"* %ret) #5
  call void @_ZNSt6vectorIlSaIlEED2Ev(%"class.std::vector"* %dimvec) #5
  %41 = load %struct.TF_Tensor*, %struct.TF_Tensor** %retval, align 8
  ret %struct.TF_Tensor* %41

ehcleanup31:                                      ; preds = %cleanup.done30, %lpad7
  call void @_ZN10tensorflow6TensorD1Ev(%"class.tensorflow::Tensor"* %ret) #5
  br label %ehcleanup33

ehcleanup33:                                      ; preds = %ehcleanup31, %lpad5, %lpad3
  call void @_ZNSt6vectorIlSaIlEED2Ev(%"class.std::vector"* %dimvec) #5
  br label %eh.resume

eh.resume:                                        ; preds = %ehcleanup33, %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val34 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val34
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSaIlEC2Ev(%"class.std::allocator.0"* %this) unnamed_addr #3 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::allocator.0"*, align 8
  store %"class.std::allocator.0"* %this, %"class.std::allocator.0"** %this.addr, align 8
  %this1 = load %"class.std::allocator.0"*, %"class.std::allocator.0"** %this.addr, align 8
  %0 = bitcast %"class.std::allocator.0"* %this1 to %"class.std::allocator.0"*
  call void @_ZN9__gnu_cxx13new_allocatorIlEC2Ev(%"class.std::allocator.0"* %0) #5
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIlSaIlEEC2EmRKS0_(%"class.std::vector"* %this, i64 %__n, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %__a) unnamed_addr #4 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  %__n.addr = alloca i64, align 8
  %__a.addr = alloca %"class.std::allocator.0"*, align 8
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  store %"class.std::allocator.0"* %__a, %"class.std::allocator.0"** %__a.addr, align 8
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %1 = load i64, i64* %__n.addr, align 8
  %2 = load %"class.std::allocator.0"*, %"class.std::allocator.0"** %__a.addr, align 8
  %call = call i64 @_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_(i64 %1, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %2)
  %3 = load %"class.std::allocator.0"*, %"class.std::allocator.0"** %__a.addr, align 8
  call void @_ZNSt12_Vector_baseIlSaIlEEC2EmRKS0_(%"struct.std::_Vector_base"* %0, i64 %call, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %3)
  %4 = load i64, i64* %__n.addr, align 8
  invoke void @_ZNSt6vectorIlSaIlEE21_M_default_initializeEm(%"class.std::vector"* %this1, i64 %4)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  ret void

lpad:                                             ; preds = %entry
  %5 = landingpad { i8*, i32 }
          cleanup
  %6 = extractvalue { i8*, i32 } %5, 0
  store i8* %6, i8** %exn.slot, align 8
  %7 = extractvalue { i8*, i32 } %5, 1
  store i32 %7, i32* %ehselector.slot, align 4
  %8 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  call void @_ZNSt12_Vector_baseIlSaIlEED2Ev(%"struct.std::_Vector_base"* %8) #5
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val2 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val2
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSaIlED2Ev(%"class.std::allocator.0"* %this) unnamed_addr #3 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::allocator.0"*, align 8
  store %"class.std::allocator.0"* %this, %"class.std::allocator.0"** %this.addr, align 8
  %this1 = load %"class.std::allocator.0"*, %"class.std::allocator.0"** %this.addr, align 8
  %0 = bitcast %"class.std::allocator.0"* %this1 to %"class.std::allocator.0"*
  call void @_ZN9__gnu_cxx13new_allocatorIlED2Ev(%"class.std::allocator.0"* %0) #5
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) i64* @_ZNSt6vectorIlSaIlEEixEm(%"class.std::vector"* %this, i64 %__n) #3 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  %__n.addr = alloca i64, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %0, i32 0, i32 0
  %1 = bitcast %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %_M_impl to %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"*
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data", %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* %1, i32 0, i32 0
  %2 = load i64*, i64** %_M_start, align 8
  %3 = load i64, i64* %__n.addr, align 8
  %add.ptr = getelementptr inbounds i64, i64* %2, i64 %3
  ret i64* %add.ptr
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow11TensorShapeC2ERKSt6vectorIlSaIlEE(%"class.tensorflow::TensorShape"* %this, %"class.std::vector"* nonnull align 8 dereferenceable(24) %dims) unnamed_addr #4 comdat align 2 {
entry:
  %this.addr = alloca %"class.tensorflow::TensorShape"*, align 8
  %dims.addr = alloca %"class.std::vector"*, align 8
  store %"class.tensorflow::TensorShape"* %this, %"class.tensorflow::TensorShape"** %this.addr, align 8
  store %"class.std::vector"* %dims, %"class.std::vector"** %dims.addr, align 8
  %this1 = load %"class.tensorflow::TensorShape"*, %"class.tensorflow::TensorShape"** %this.addr, align 8
  %dims_ = getelementptr inbounds %"class.tensorflow::TensorShape", %"class.tensorflow::TensorShape"* %this1, i32 0, i32 0
  %0 = load %"class.std::vector"*, %"class.std::vector"** %dims.addr, align 8
  call void @_ZNSt6vectorIlSaIlEEC2ERKS1_(%"class.std::vector"* %dims_, %"class.std::vector"* nonnull align 8 dereferenceable(24) %0)
  %dtype_ = getelementptr inbounds %"class.tensorflow::TensorShape", %"class.tensorflow::TensorShape"* %this1, i32 0, i32 1
  store i32 0, i32* %dtype_, align 8
  %partial_ = getelementptr inbounds %"class.tensorflow::TensorShape", %"class.tensorflow::TensorShape"* %this1, i32 0, i32 2
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow11TensorShapeD2Ev(%"class.tensorflow::TensorShape"* %this) unnamed_addr #3 comdat align 2 {
entry:
  %this.addr = alloca %"class.tensorflow::TensorShape"*, align 8
  store %"class.tensorflow::TensorShape"* %this, %"class.tensorflow::TensorShape"** %this.addr, align 8
  %this1 = load %"class.tensorflow::TensorShape"*, %"class.tensorflow::TensorShape"** %this.addr, align 8
  %dims_ = getelementptr inbounds %"class.tensorflow::TensorShape", %"class.tensorflow::TensorShape"* %this1, i32 0, i32 0
  call void @_ZNSt6vectorIlSaIlEED2Ev(%"class.std::vector"* %dims_) #5
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local zeroext i1 @_ZNK10tensorflow4core10RefCounted5UnrefEv(%"class.tensorflow::core::RefCounted"* %this) #3 comdat align 2 {
entry:
  %this.addr.i = alloca %"struct.std::__atomic_base"*, align 8
  %__i.addr.i = alloca i64, align 8
  %__m.addr.i = alloca i32, align 4
  %.atomictmp.i = alloca i64, align 8
  %atomic-temp.i = alloca i64, align 8
  %retval = alloca i1, align 1
  %this.addr = alloca %"class.tensorflow::core::RefCounted"*, align 8
  store %"class.tensorflow::core::RefCounted"* %this, %"class.tensorflow::core::RefCounted"** %this.addr, align 8
  %this1 = load %"class.tensorflow::core::RefCounted"*, %"class.tensorflow::core::RefCounted"** %this.addr, align 8
  %ref_count_ = getelementptr inbounds %"class.tensorflow::core::RefCounted", %"class.tensorflow::core::RefCounted"* %this1, i32 0, i32 1
  %0 = bitcast %"struct.std::atomic"* %ref_count_ to %"struct.std::__atomic_base"*
  store %"struct.std::__atomic_base"* %0, %"struct.std::__atomic_base"** %this.addr.i, align 8
  store i64 1, i64* %__i.addr.i, align 8
  store i32 4, i32* %__m.addr.i, align 4
  %this1.i = load %"struct.std::__atomic_base"*, %"struct.std::__atomic_base"** %this.addr.i, align 8
  %_M_i.i = getelementptr inbounds %"struct.std::__atomic_base", %"struct.std::__atomic_base"* %this1.i, i32 0, i32 0
  %1 = load i32, i32* %__m.addr.i, align 4
  %2 = load i64, i64* %__i.addr.i, align 8
  store i64 %2, i64* %.atomictmp.i, align 8
  switch i32 %1, label %monotonic.i [
    i32 1, label %acquire.i
    i32 2, label %acquire.i
    i32 3, label %release.i
    i32 4, label %acqrel.i
    i32 5, label %seqcst.i
  ]

monotonic.i:                                      ; preds = %entry
  %3 = load i64, i64* %.atomictmp.i, align 8
  %4 = load i64, i64* %_M_i.i, align 8
  %5 = sub i64 %4, %3
  store i64 %5, i64* %_M_i.i, align 8
  store i64 %4, i64* %atomic-temp.i, align 8
  br label %_ZNSt13__atomic_baseImE9fetch_subEmSt12memory_order.exit

acquire.i:                                        ; preds = %entry, %entry
  %6 = load i64, i64* %.atomictmp.i, align 8
  %7 = load i64, i64* %_M_i.i, align 8
  %8 = sub i64 %7, %6
  store i64 %8, i64* %_M_i.i, align 8
  store i64 %7, i64* %atomic-temp.i, align 8
  br label %_ZNSt13__atomic_baseImE9fetch_subEmSt12memory_order.exit

release.i:                                        ; preds = %entry
  %9 = load i64, i64* %.atomictmp.i, align 8
  %10 = load i64, i64* %_M_i.i, align 8
  %11 = sub i64 %10, %9
  store i64 %11, i64* %_M_i.i, align 8
  store i64 %10, i64* %atomic-temp.i, align 8
  br label %_ZNSt13__atomic_baseImE9fetch_subEmSt12memory_order.exit

acqrel.i:                                         ; preds = %entry
  %12 = load i64, i64* %.atomictmp.i, align 8
  %13 = load i64, i64* %_M_i.i, align 8
  %14 = sub i64 %13, %12
  store i64 %14, i64* %_M_i.i, align 8
  store i64 %13, i64* %atomic-temp.i, align 8
  br label %_ZNSt13__atomic_baseImE9fetch_subEmSt12memory_order.exit

seqcst.i:                                         ; preds = %entry
  %15 = load i64, i64* %.atomictmp.i, align 8
  %16 = load i64, i64* %_M_i.i, align 8
  %17 = sub i64 %16, %15
  store i64 %17, i64* %_M_i.i, align 8
  store i64 %16, i64* %atomic-temp.i, align 8
  br label %_ZNSt13__atomic_baseImE9fetch_subEmSt12memory_order.exit

_ZNSt13__atomic_baseImE9fetch_subEmSt12memory_order.exit: ; preds = %monotonic.i, %acquire.i, %release.i, %acqrel.i, %seqcst.i
  %18 = load i64, i64* %atomic-temp.i, align 8
  %cmp = icmp eq i64 %18, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %_ZNSt13__atomic_baseImE9fetch_subEmSt12memory_order.exit
  %isnull = icmp eq %"class.tensorflow::core::RefCounted"* %this1, null
  br i1 %isnull, label %delete.end, label %delete.notnull

delete.notnull:                                   ; preds = %if.then
  %19 = bitcast %"class.tensorflow::core::RefCounted"* %this1 to void (%"class.tensorflow::core::RefCounted"*)***
  %vtable = load void (%"class.tensorflow::core::RefCounted"*)**, void (%"class.tensorflow::core::RefCounted"*)*** %19, align 8
  %vfn = getelementptr inbounds void (%"class.tensorflow::core::RefCounted"*)*, void (%"class.tensorflow::core::RefCounted"*)** %vtable, i64 1
  %20 = load void (%"class.tensorflow::core::RefCounted"*)*, void (%"class.tensorflow::core::RefCounted"*)** %vfn, align 8
  call void %20(%"class.tensorflow::core::RefCounted"* %this1) #5
  br label %delete.end

delete.end:                                       ; preds = %delete.notnull, %if.then
  store i1 true, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %_ZNSt13__atomic_baseImE9fetch_subEmSt12memory_order.exit
  store i1 false, i1* %retval, align 1
  br label %return

return:                                           ; preds = %if.end, %delete.end
  %21 = load i1, i1* %retval, align 1
  ret i1 %21
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @_ZL15TF_DataTypeSize11TF_DataType(i32 %dt) #3 {
entry:
  %retval = alloca i64, align 8
  %dt.addr = alloca i32, align 4
  store i32 %dt, i32* %dt.addr, align 4
  %0 = load i32, i32* %dt.addr, align 4
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
  ]

sw.bb:                                            ; preds = %entry
  store i64 4, i64* %retval, align 8
  br label %return

sw.bb1:                                           ; preds = %entry
  store i64 8, i64* %retval, align 8
  br label %return

sw.bb2:                                           ; preds = %entry
  store i64 4, i64* %retval, align 8
  br label %return

sw.bb3:                                           ; preds = %entry
  store i64 4, i64* %retval, align 8
  br label %return

sw.bb4:                                           ; preds = %entry
  store i64 1, i64* %retval, align 8
  br label %return

sw.bb5:                                           ; preds = %entry
  store i64 2, i64* %retval, align 8
  br label %return

sw.bb6:                                           ; preds = %entry
  store i64 2, i64* %retval, align 8
  br label %return

sw.bb7:                                           ; preds = %entry
  store i64 1, i64* %retval, align 8
  br label %return

sw.bb8:                                           ; preds = %entry
  store i64 8, i64* %retval, align 8
  br label %return

sw.bb9:                                           ; preds = %entry
  store i64 16, i64* %retval, align 8
  br label %return

sw.bb10:                                          ; preds = %entry
  store i64 8, i64* %retval, align 8
  br label %return

sw.bb11:                                          ; preds = %entry
  store i64 8, i64* %retval, align 8
  br label %return

sw.bb12:                                          ; preds = %entry
  store i64 1, i64* %retval, align 8
  br label %return

sw.bb13:                                          ; preds = %entry
  store i64 1, i64* %retval, align 8
  br label %return

sw.bb14:                                          ; preds = %entry
  store i64 1, i64* %retval, align 8
  br label %return

sw.bb15:                                          ; preds = %entry
  store i64 2, i64* %retval, align 8
  br label %return

sw.bb16:                                          ; preds = %entry
  store i64 2, i64* %retval, align 8
  br label %return

sw.bb17:                                          ; preds = %entry
  store i64 4, i64* %retval, align 8
  br label %return

sw.bb18:                                          ; preds = %entry
  store i64 2, i64* %retval, align 8
  br label %return

sw.bb19:                                          ; preds = %entry
  store i64 2, i64* %retval, align 8
  br label %return

sw.bb20:                                          ; preds = %entry, %entry, %entry
  store i64 0, i64* %retval, align 8
  br label %return

sw.bb21:                                          ; preds = %entry, %entry, %entry, %entry, %entry
  store i64 1, i64* %retval, align 8
  br label %return

sw.bb22:                                          ; preds = %entry, %entry, %entry, %entry
  store i64 0, i64* %retval, align 8
  br label %return

sw.default:                                       ; preds = %entry
  store i64 0, i64* %retval, align 8
  br label %return

return:                                           ; preds = %sw.default, %sw.bb22, %sw.bb21, %sw.bb20, %sw.bb19, %sw.bb18, %sw.bb17, %sw.bb16, %sw.bb15, %sw.bb14, %sw.bb13, %sw.bb12, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %1 = load i64, i64* %retval, align 8
  ret i64 %1
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i64 @_ZNK10tensorflow6Tensor11NumElementsEv(%"class.tensorflow::Tensor"* %this) #4 comdat align 2 {
entry:
  %this.addr = alloca %"class.tensorflow::Tensor"*, align 8
  store %"class.tensorflow::Tensor"* %this, %"class.tensorflow::Tensor"** %this.addr, align 8
  %this1 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %this.addr, align 8
  %call = call nonnull align 8 dereferenceable(29) %"class.tensorflow::TensorShape"* @_ZNK10tensorflow6Tensor5shapeEv(%"class.tensorflow::Tensor"* %this1)
  %call2 = call i64 @_ZNK10tensorflow11TensorShape12num_elementsEv(%"class.tensorflow::TensorShape"* %call)
  ret i64 %call2
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(40) %"class.tensorflow::Tensor"* @_ZSt4moveIRN10tensorflow6TensorEEONSt16remove_referenceIT_E4typeEOS4_(%"class.tensorflow::Tensor"* nonnull align 8 dereferenceable(40) %__t) #3 comdat {
entry:
  %__t.addr = alloca %"class.tensorflow::Tensor"*, align 8
  store %"class.tensorflow::Tensor"* %__t, %"class.tensorflow::Tensor"** %__t.addr, align 8
  %0 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %__t.addr, align 8
  ret %"class.tensorflow::Tensor"* %0
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow15TensorInterfaceC2ENS_6TensorE(%"class.tensorflow::TensorInterface"* %this, %"class.tensorflow::Tensor"* %t) unnamed_addr #4 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.tensorflow::TensorInterface"*, align 8
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  store %"class.tensorflow::TensorInterface"* %this, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  %this1 = load %"class.tensorflow::TensorInterface"*, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  %0 = bitcast %"class.tensorflow::TensorInterface"* %this1 to %"class.tensorflow::AbstractTensorInterface"*
  call void @_ZN10tensorflow23AbstractTensorInterfaceC2Ev(%"class.tensorflow::AbstractTensorInterface"* %0) #5
  %1 = bitcast %"class.tensorflow::TensorInterface"* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [14 x i8*] }, { [14 x i8*] }* @_ZTVN10tensorflow15TensorInterfaceE, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %1, align 8
  %tensor_ = getelementptr inbounds %"class.tensorflow::TensorInterface", %"class.tensorflow::TensorInterface"* %this1, i32 0, i32 1
  %call = call nonnull align 8 dereferenceable(40) %"class.tensorflow::Tensor"* @_ZSt4moveIRN10tensorflow6TensorEEONSt16remove_referenceIT_E4typeEOS4_(%"class.tensorflow::Tensor"* nonnull align 8 dereferenceable(40) %t) #5
  invoke void @_ZN10tensorflow6TensorC1EOS0_(%"class.tensorflow::Tensor"* %tensor_, %"class.tensorflow::Tensor"* nonnull align 8 dereferenceable(40) %call)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  ret void

lpad:                                             ; preds = %entry
  %2 = landingpad { i8*, i32 }
          cleanup
  %3 = extractvalue { i8*, i32 } %2, 0
  store i8* %3, i8** %exn.slot, align 8
  %4 = extractvalue { i8*, i32 } %2, 1
  store i32 %4, i32* %ehselector.slot, align 4
  %5 = bitcast %"class.tensorflow::TensorInterface"* %this1 to %"class.tensorflow::AbstractTensorInterface"*
  call void @_ZN10tensorflow23AbstractTensorInterfaceD2Ev(%"class.tensorflow::AbstractTensorInterface"* %5) #5
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val2 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val2
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIlSaIlEED2Ev(%"class.std::vector"* %this) unnamed_addr #3 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %0, i32 0, i32 0
  %1 = bitcast %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %_M_impl to %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"*
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data", %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* %1, i32 0, i32 0
  %2 = load i64*, i64** %_M_start, align 8
  %3 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %3, i32 0, i32 0
  %4 = bitcast %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %_M_impl2 to %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"*
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data", %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* %4, i32 0, i32 1
  %5 = load i64*, i64** %_M_finish, align 8
  %6 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %call = call nonnull align 1 dereferenceable(1) %"class.std::allocator.0"* @_ZNSt12_Vector_baseIlSaIlEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %6) #5
  invoke void @_ZSt8_DestroyIPllEvT_S1_RSaIT0_E(i64* %2, i64* %5, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %call)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %7 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  call void @_ZNSt12_Vector_baseIlSaIlEED2Ev(%"struct.std::_Vector_base"* %7) #5
  ret void

lpad:                                             ; preds = %entry
  %8 = landingpad { i8*, i32 }
          catch i8* null
  %9 = extractvalue { i8*, i32 } %8, 0
  store i8* %9, i8** %exn.slot, align 8
  %10 = extractvalue { i8*, i32 } %8, 1
  store i32 %10, i32* %ehselector.slot, align 4
  %11 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  call void @_ZNSt12_Vector_baseIlSaIlEED2Ev(%"struct.std::_Vector_base"* %11) #5
  br label %terminate.handler

terminate.handler:                                ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  call void @__clang_call_terminate(i8* %exn) #13
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 1 dereferenceable(1) %"class.std::allocator.0"* @_ZNSt12_Vector_baseIlSaIlEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %this) #3 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base"*, align 8
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %this.addr, align 8
  %this1 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  %0 = bitcast %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %_M_impl to %"class.std::allocator.0"*
  ret %"class.std::allocator.0"* %0
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPllEvT_S1_RSaIT0_E(i64* %__first, i64* %__last, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %0) #4 comdat {
entry:
  %__first.addr = alloca i64*, align 8
  %__last.addr = alloca i64*, align 8
  %.addr = alloca %"class.std::allocator.0"*, align 8
  store i64* %__first, i64** %__first.addr, align 8
  store i64* %__last, i64** %__last.addr, align 8
  store %"class.std::allocator.0"* %0, %"class.std::allocator.0"** %.addr, align 8
  %1 = load i64*, i64** %__first.addr, align 8
  %2 = load i64*, i64** %__last.addr, align 8
  call void @_ZSt8_DestroyIPlEvT_S1_(i64* %1, i64* %2)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIlSaIlEED2Ev(%"struct.std::_Vector_base"* %this) unnamed_addr #3 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"struct.std::_Vector_base"*, align 8
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %this.addr, align 8
  %this1 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  %0 = bitcast %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %_M_impl to %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"*
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data", %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* %0, i32 0, i32 0
  %1 = load i64*, i64** %_M_start, align 8
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  %2 = bitcast %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %_M_impl2 to %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"*
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data", %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* %2, i32 0, i32 2
  %3 = load i64*, i64** %_M_end_of_storage, align 8
  %_M_impl3 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  %4 = bitcast %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %_M_impl3 to %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"*
  %_M_start4 = getelementptr inbounds %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data", %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* %4, i32 0, i32 0
  %5 = load i64*, i64** %_M_start4, align 8
  %sub.ptr.lhs.cast = ptrtoint i64* %3 to i64
  %sub.ptr.rhs.cast = ptrtoint i64* %5 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  invoke void @_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm(%"struct.std::_Vector_base"* %this1, i64* %1, i64 %sub.ptr.div)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %_M_impl5 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  call void @_ZNSt12_Vector_baseIlSaIlEE12_Vector_implD2Ev(%"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %_M_impl5) #5
  ret void

lpad:                                             ; preds = %entry
  %6 = landingpad { i8*, i32 }
          catch i8* null
  %7 = extractvalue { i8*, i32 } %6, 0
  store i8* %7, i8** %exn.slot, align 8
  %8 = extractvalue { i8*, i32 } %6, 1
  store i32 %8, i32* %ehselector.slot, align 4
  %_M_impl6 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  call void @_ZNSt12_Vector_baseIlSaIlEE12_Vector_implD2Ev(%"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %_M_impl6) #5
  br label %terminate.handler

terminate.handler:                                ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  call void @__clang_call_terminate(i8* %exn) #13
  unreachable
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm(%"struct.std::_Vector_base"* %this, i64* %__p, i64 %__n) #4 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base"*, align 8
  %__p.addr = alloca i64*, align 8
  %__n.addr = alloca i64, align 8
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %this.addr, align 8
  store i64* %__p, i64** %__p.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %this1 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %this.addr, align 8
  %0 = load i64*, i64** %__p.addr, align 8
  %tobool = icmp ne i64* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  %1 = bitcast %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %_M_impl to %"class.std::allocator.0"*
  %2 = load i64*, i64** %__p.addr, align 8
  %3 = load i64, i64* %__n.addr, align 8
  call void @_ZNSt16allocator_traitsISaIlEE10deallocateERS0_Plm(%"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %1, i64* %2, i64 %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIlSaIlEE12_Vector_implD2Ev(%"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %this) unnamed_addr #3 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"*, align 8
  store %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %this, %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"** %this.addr, align 8
  %this1 = load %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"*, %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"** %this.addr, align 8
  %0 = bitcast %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %this1 to %"class.std::allocator.0"*
  call void @_ZNSaIlED2Ev(%"class.std::allocator.0"* %0) #5
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIlEE10deallocateERS0_Plm(%"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %__a, i64* %__p, i64 %__n) #4 comdat align 2 {
entry:
  %__a.addr = alloca %"class.std::allocator.0"*, align 8
  %__p.addr = alloca i64*, align 8
  %__n.addr = alloca i64, align 8
  store %"class.std::allocator.0"* %__a, %"class.std::allocator.0"** %__a.addr, align 8
  store i64* %__p, i64** %__p.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %0 = load %"class.std::allocator.0"*, %"class.std::allocator.0"** %__a.addr, align 8
  %1 = bitcast %"class.std::allocator.0"* %0 to %"class.std::allocator.0"*
  %2 = load i64*, i64** %__p.addr, align 8
  %3 = load i64, i64* %__n.addr, align 8
  call void @_ZN9__gnu_cxx13new_allocatorIlE10deallocateEPlm(%"class.std::allocator.0"* %1, i64* %2, i64 %3)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorIlE10deallocateEPlm(%"class.std::allocator.0"* %this, i64* %__p, i64 %__t) #3 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::allocator.0"*, align 8
  %__p.addr = alloca i64*, align 8
  %__t.addr = alloca i64, align 8
  store %"class.std::allocator.0"* %this, %"class.std::allocator.0"** %this.addr, align 8
  store i64* %__p, i64** %__p.addr, align 8
  store i64 %__t, i64* %__t.addr, align 8
  %this1 = load %"class.std::allocator.0"*, %"class.std::allocator.0"** %this.addr, align 8
  %0 = load i64*, i64** %__p.addr, align 8
  %1 = bitcast i64* %0 to i8*
  call void @_ZdlPv(i8* %1) #5
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPlEvT_S1_(i64* %__first, i64* %__last) #4 comdat {
entry:
  %__first.addr = alloca i64*, align 8
  %__last.addr = alloca i64*, align 8
  store i64* %__first, i64** %__first.addr, align 8
  store i64* %__last, i64** %__last.addr, align 8
  %0 = load i64*, i64** %__first.addr, align 8
  %1 = load i64*, i64** %__last.addr, align 8
  call void @_ZNSt12_Destroy_auxILb1EE9__destroyIPlEEvT_S3_(i64* %0, i64* %1)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb1EE9__destroyIPlEEvT_S3_(i64* %0, i64* %1) #3 comdat align 2 {
entry:
  %.addr = alloca i64*, align 8
  %.addr1 = alloca i64*, align 8
  store i64* %0, i64** %.addr, align 8
  store i64* %1, i64** %.addr1, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow23AbstractTensorInterfaceC2Ev(%"class.tensorflow::AbstractTensorInterface"* %this) unnamed_addr #3 comdat align 2 {
entry:
  %this.addr = alloca %"class.tensorflow::AbstractTensorInterface"*, align 8
  store %"class.tensorflow::AbstractTensorInterface"* %this, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  %this1 = load %"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  %0 = bitcast %"class.tensorflow::AbstractTensorInterface"* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [14 x i8*] }, { [14 x i8*] }* @_ZTVN10tensorflow23AbstractTensorInterfaceE, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %0, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow23AbstractTensorInterfaceD2Ev(%"class.tensorflow::AbstractTensorInterface"* %this) unnamed_addr #3 comdat align 2 {
entry:
  %this.addr = alloca %"class.tensorflow::AbstractTensorInterface"*, align 8
  store %"class.tensorflow::AbstractTensorInterface"* %this, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  %this1 = load %"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow15TensorInterface7ReleaseEv(%"class.tensorflow::TensorInterface"* %this) unnamed_addr #3 comdat align 2 {
entry:
  %this.addr = alloca %"class.tensorflow::TensorInterface"*, align 8
  store %"class.tensorflow::TensorInterface"* %this, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  %this1 = load %"class.tensorflow::TensorInterface"*, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  %isnull = icmp eq %"class.tensorflow::TensorInterface"* %this1, null
  br i1 %isnull, label %delete.end, label %delete.notnull

delete.notnull:                                   ; preds = %entry
  %0 = bitcast %"class.tensorflow::TensorInterface"* %this1 to void (%"class.tensorflow::TensorInterface"*)***
  %vtable = load void (%"class.tensorflow::TensorInterface"*)**, void (%"class.tensorflow::TensorInterface"*)*** %0, align 8
  %vfn = getelementptr inbounds void (%"class.tensorflow::TensorInterface"*)*, void (%"class.tensorflow::TensorInterface"*)** %vtable, i64 11
  %1 = load void (%"class.tensorflow::TensorInterface"*)*, void (%"class.tensorflow::TensorInterface"*)** %vfn, align 8
  call void %1(%"class.tensorflow::TensorInterface"* %this1) #5
  br label %delete.end

delete.end:                                       ; preds = %delete.notnull, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i32 @_ZNK10tensorflow15TensorInterface4TypeEv(%"class.tensorflow::TensorInterface"* %this) unnamed_addr #3 comdat align 2 {
entry:
  %this.addr = alloca %"class.tensorflow::TensorInterface"*, align 8
  store %"class.tensorflow::TensorInterface"* %this, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  %this1 = load %"class.tensorflow::TensorInterface"*, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i32 @_ZNK10tensorflow15TensorInterface7NumDimsEv(%"class.tensorflow::TensorInterface"* %this) unnamed_addr #3 comdat align 2 {
entry:
  %this.addr = alloca %"class.tensorflow::TensorInterface"*, align 8
  store %"class.tensorflow::TensorInterface"* %this, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  %this1 = load %"class.tensorflow::TensorInterface"*, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @_ZNK10tensorflow15TensorInterface3DimEi(%"class.tensorflow::TensorInterface"* %this, i32 %0) unnamed_addr #3 comdat align 2 {
entry:
  %this.addr = alloca %"class.tensorflow::TensorInterface"*, align 8
  %.addr = alloca i32, align 4
  store %"class.tensorflow::TensorInterface"* %this, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  store i32 %0, i32* %.addr, align 4
  %this1 = load %"class.tensorflow::TensorInterface"*, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  ret i64 0
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @_ZNK10tensorflow15TensorInterface11NumElementsEv(%"class.tensorflow::TensorInterface"* %this) unnamed_addr #3 comdat align 2 {
entry:
  %this.addr = alloca %"class.tensorflow::TensorInterface"*, align 8
  store %"class.tensorflow::TensorInterface"* %this, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  %this1 = load %"class.tensorflow::TensorInterface"*, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  ret i64 0
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @_ZNK10tensorflow15TensorInterface8ByteSizeEv(%"class.tensorflow::TensorInterface"* %this) unnamed_addr #3 comdat align 2 {
entry:
  %this.addr = alloca %"class.tensorflow::TensorInterface"*, align 8
  store %"class.tensorflow::TensorInterface"* %this, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  %this1 = load %"class.tensorflow::TensorInterface"*, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  ret i64 0
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i8* @_ZNK10tensorflow15TensorInterface4DataEv(%"class.tensorflow::TensorInterface"* %this) unnamed_addr #3 comdat align 2 {
entry:
  %this.addr = alloca %"class.tensorflow::TensorInterface"*, align 8
  store %"class.tensorflow::TensorInterface"* %this, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  %this1 = load %"class.tensorflow::TensorInterface"*, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  ret i8* null
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local zeroext i1 @_ZNK10tensorflow15TensorInterface9IsAlignedEv(%"class.tensorflow::TensorInterface"* %this) unnamed_addr #3 comdat align 2 {
entry:
  %this.addr = alloca %"class.tensorflow::TensorInterface"*, align 8
  store %"class.tensorflow::TensorInterface"* %this, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  %this1 = load %"class.tensorflow::TensorInterface"*, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  ret i1 true
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local zeroext i1 @_ZNK10tensorflow15TensorInterface7CanMoveEv(%"class.tensorflow::TensorInterface"* %this) unnamed_addr #3 comdat align 2 {
entry:
  %this.addr = alloca %"class.tensorflow::TensorInterface"*, align 8
  store %"class.tensorflow::TensorInterface"* %this, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  %this1 = load %"class.tensorflow::TensorInterface"*, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  ret i1 true
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNK10tensorflow15TensorInterface14SummarizeValueB5cxx11Ev(%"class.std::__cxx11::basic_string"* noalias sret align 8 %agg.result, %"class.tensorflow::TensorInterface"* %this) unnamed_addr #3 comdat align 2 {
entry:
  %result.ptr = alloca i8*, align 8
  %this.addr = alloca %"class.tensorflow::TensorInterface"*, align 8
  %0 = bitcast %"class.std::__cxx11::basic_string"* %agg.result to i8*
  store i8* %0, i8** %result.ptr, align 8
  store %"class.tensorflow::TensorInterface"* %this, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  %this1 = load %"class.tensorflow::TensorInterface"*, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev(%"class.std::__cxx11::basic_string"* %agg.result) #5
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow15TensorInterfaceD2Ev(%"class.tensorflow::TensorInterface"* %this) unnamed_addr #3 comdat align 2 {
entry:
  %this.addr = alloca %"class.tensorflow::TensorInterface"*, align 8
  store %"class.tensorflow::TensorInterface"* %this, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  %this1 = load %"class.tensorflow::TensorInterface"*, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  %0 = bitcast %"class.tensorflow::TensorInterface"* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [14 x i8*] }, { [14 x i8*] }* @_ZTVN10tensorflow15TensorInterfaceE, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %0, align 8
  %tensor_ = getelementptr inbounds %"class.tensorflow::TensorInterface", %"class.tensorflow::TensorInterface"* %this1, i32 0, i32 1
  call void @_ZN10tensorflow6TensorD1Ev(%"class.tensorflow::Tensor"* %tensor_) #5
  %1 = bitcast %"class.tensorflow::TensorInterface"* %this1 to %"class.tensorflow::AbstractTensorInterface"*
  call void @_ZN10tensorflow23AbstractTensorInterfaceD2Ev(%"class.tensorflow::AbstractTensorInterface"* %1) #5
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow15TensorInterfaceD0Ev(%"class.tensorflow::TensorInterface"* %this) unnamed_addr #3 comdat align 2 {
entry:
  %this.addr = alloca %"class.tensorflow::TensorInterface"*, align 8
  store %"class.tensorflow::TensorInterface"* %this, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  %this1 = load %"class.tensorflow::TensorInterface"*, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  call void @_ZN10tensorflow15TensorInterfaceD2Ev(%"class.tensorflow::TensorInterface"* %this1) #5
  %0 = bitcast %"class.tensorflow::TensorInterface"* %this1 to i8*
  call void @_ZdlPv(i8* %0) #17
  ret void
}

; Function Attrs: nounwind
declare dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev(%"class.std::__cxx11::basic_string"*) unnamed_addr #2

declare dso_local void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow23AbstractTensorInterfaceD0Ev(%"class.tensorflow::AbstractTensorInterface"* %this) unnamed_addr #3 comdat align 2 {
entry:
  %this.addr = alloca %"class.tensorflow::AbstractTensorInterface"*, align 8
  store %"class.tensorflow::AbstractTensorInterface"* %this, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  %this1 = load %"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  call void @abort()
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(29) %"class.tensorflow::TensorShape"* @_ZNK10tensorflow6Tensor5shapeEv(%"class.tensorflow::Tensor"* %this) #3 comdat align 2 {
entry:
  %this.addr = alloca %"class.tensorflow::Tensor"*, align 8
  store %"class.tensorflow::Tensor"* %this, %"class.tensorflow::Tensor"** %this.addr, align 8
  %this1 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %this.addr, align 8
  %shape_ = getelementptr inbounds %"class.tensorflow::Tensor", %"class.tensorflow::Tensor"* %this1, i32 0, i32 0
  ret %"class.tensorflow::TensorShape"* %shape_
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @_ZNK10tensorflow11TensorShape12num_elementsEv(%"class.tensorflow::TensorShape"* %this) #3 comdat align 2 {
entry:
  %retval = alloca i64, align 8
  %this.addr = alloca %"class.tensorflow::TensorShape"*, align 8
  %prod = alloca i64, align 8
  %__range2 = alloca %"class.std::vector"*, align 8
  %__begin2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__end2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %d = alloca i64, align 8
  store %"class.tensorflow::TensorShape"* %this, %"class.tensorflow::TensorShape"** %this.addr, align 8
  %this1 = load %"class.tensorflow::TensorShape"*, %"class.tensorflow::TensorShape"** %this.addr, align 8
  %dims_ = getelementptr inbounds %"class.tensorflow::TensorShape", %"class.tensorflow::TensorShape"* %this1, i32 0, i32 0
  %call = call zeroext i1 @_ZNKSt6vectorIlSaIlEE5emptyEv(%"class.std::vector"* %dims_) #5
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 1, i64* %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  store i64 1, i64* %prod, align 8
  %dims_2 = getelementptr inbounds %"class.tensorflow::TensorShape", %"class.tensorflow::TensorShape"* %this1, i32 0, i32 0
  store %"class.std::vector"* %dims_2, %"class.std::vector"** %__range2, align 8
  %0 = load %"class.std::vector"*, %"class.std::vector"** %__range2, align 8
  %call3 = call i64* @_ZNKSt6vectorIlSaIlEE5beginEv(%"class.std::vector"* %0) #5
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__begin2, i32 0, i32 0
  store i64* %call3, i64** %coerce.dive, align 8
  %1 = load %"class.std::vector"*, %"class.std::vector"** %__range2, align 8
  %call4 = call i64* @_ZNKSt6vectorIlSaIlEE3endEv(%"class.std::vector"* %1) #5
  %coerce.dive5 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__end2, i32 0, i32 0
  store i64* %call4, i64** %coerce.dive5, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %call6 = call zeroext i1 @_ZN9__gnu_cxxneIPKlSt6vectorIlSaIlEEEEbRKNS_17__normal_iteratorIT_T0_EESB_(%"class.__gnu_cxx::__normal_iterator"* nonnull align 8 dereferenceable(8) %__begin2, %"class.__gnu_cxx::__normal_iterator"* nonnull align 8 dereferenceable(8) %__end2) #5
  br i1 %call6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call7 = call nonnull align 8 dereferenceable(8) i64* @_ZNK9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEdeEv(%"class.__gnu_cxx::__normal_iterator"* %__begin2) #5
  %2 = load i64, i64* %call7, align 8
  store i64 %2, i64* %d, align 8
  %3 = load i64, i64* %d, align 8
  %cmp = icmp sle i64 %3, 0
  br i1 %cmp, label %if.then8, label %if.end9

if.then8:                                         ; preds = %for.body
  store i64 0, i64* %retval, align 8
  br label %return

if.end9:                                          ; preds = %for.body
  %4 = load i64, i64* %d, align 8
  %5 = load i64, i64* %prod, align 8
  %mul = mul nsw i64 %5, %4
  store i64 %mul, i64* %prod, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end9
  %call10 = call nonnull align 8 dereferenceable(8) %"class.__gnu_cxx::__normal_iterator"* @_ZN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEppEv(%"class.__gnu_cxx::__normal_iterator"* %__begin2) #5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %6 = load i64, i64* %prod, align 8
  store i64 %6, i64* %retval, align 8
  br label %return

return:                                           ; preds = %for.end, %if.then8, %if.then
  %7 = load i64, i64* %retval, align 8
  ret i64 %7
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local zeroext i1 @_ZNKSt6vectorIlSaIlEE5emptyEv(%"class.std::vector"* %this) #3 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  %ref.tmp = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %ref.tmp2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %call = call i64* @_ZNKSt6vectorIlSaIlEE5beginEv(%"class.std::vector"* %this1) #5
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %ref.tmp, i32 0, i32 0
  store i64* %call, i64** %coerce.dive, align 8
  %call3 = call i64* @_ZNKSt6vectorIlSaIlEE3endEv(%"class.std::vector"* %this1) #5
  %coerce.dive4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %ref.tmp2, i32 0, i32 0
  store i64* %call3, i64** %coerce.dive4, align 8
  %call5 = call zeroext i1 @_ZN9__gnu_cxxeqIPKlSt6vectorIlSaIlEEEEbRKNS_17__normal_iteratorIT_T0_EESB_(%"class.__gnu_cxx::__normal_iterator"* nonnull align 8 dereferenceable(8) %ref.tmp, %"class.__gnu_cxx::__normal_iterator"* nonnull align 8 dereferenceable(8) %ref.tmp2) #5
  ret i1 %call5
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64* @_ZNKSt6vectorIlSaIlEE5beginEv(%"class.std::vector"* %this) #3 comdat align 2 {
entry:
  %retval = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %this.addr = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %0, i32 0, i32 0
  %1 = bitcast %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %_M_impl to %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"*
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data", %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* %1, i32 0, i32 0
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEC2ERKS2_(%"class.__gnu_cxx::__normal_iterator"* %retval, i64** nonnull align 8 dereferenceable(8) %_M_start) #5
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %retval, i32 0, i32 0
  %2 = load i64*, i64** %coerce.dive, align 8
  ret i64* %2
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64* @_ZNKSt6vectorIlSaIlEE3endEv(%"class.std::vector"* %this) #3 comdat align 2 {
entry:
  %retval = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %this.addr = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %0, i32 0, i32 0
  %1 = bitcast %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %_M_impl to %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"*
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data", %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* %1, i32 0, i32 1
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEC2ERKS2_(%"class.__gnu_cxx::__normal_iterator"* %retval, i64** nonnull align 8 dereferenceable(8) %_M_finish) #5
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %retval, i32 0, i32 0
  %2 = load i64*, i64** %coerce.dive, align 8
  ret i64* %2
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local zeroext i1 @_ZN9__gnu_cxxneIPKlSt6vectorIlSaIlEEEEbRKNS_17__normal_iteratorIT_T0_EESB_(%"class.__gnu_cxx::__normal_iterator"* nonnull align 8 dereferenceable(8) %__lhs, %"class.__gnu_cxx::__normal_iterator"* nonnull align 8 dereferenceable(8) %__rhs) #3 comdat {
entry:
  %__lhs.addr = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  %__rhs.addr = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %__lhs, %"class.__gnu_cxx::__normal_iterator"** %__lhs.addr, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %__rhs, %"class.__gnu_cxx::__normal_iterator"** %__rhs.addr, align 8
  %0 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %__lhs.addr, align 8
  %call = call nonnull align 8 dereferenceable(8) i64** @_ZNK9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %0) #5
  %1 = load i64*, i64** %call, align 8
  %2 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %__rhs.addr, align 8
  %call1 = call nonnull align 8 dereferenceable(8) i64** @_ZNK9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %2) #5
  %3 = load i64*, i64** %call1, align 8
  %cmp = icmp ne i64* %1, %3
  ret i1 %cmp
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) i64* @_ZNK9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEdeEv(%"class.__gnu_cxx::__normal_iterator"* %this) #3 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %this, %"class.__gnu_cxx::__normal_iterator"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %this.addr, align 8
  %_M_current = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %this1, i32 0, i32 0
  %0 = load i64*, i64** %_M_current, align 8
  ret i64* %0
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) %"class.__gnu_cxx::__normal_iterator"* @_ZN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEppEv(%"class.__gnu_cxx::__normal_iterator"* %this) #3 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %this, %"class.__gnu_cxx::__normal_iterator"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %this.addr, align 8
  %_M_current = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %this1, i32 0, i32 0
  %0 = load i64*, i64** %_M_current, align 8
  %incdec.ptr = getelementptr inbounds i64, i64* %0, i32 1
  store i64* %incdec.ptr, i64** %_M_current, align 8
  ret %"class.__gnu_cxx::__normal_iterator"* %this1
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) i64** @_ZNK9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %this) #3 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %this, %"class.__gnu_cxx::__normal_iterator"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %this.addr, align 8
  %_M_current = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %this1, i32 0, i32 0
  ret i64** %_M_current
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEC2ERKS2_(%"class.__gnu_cxx::__normal_iterator"* %this, i64** nonnull align 8 dereferenceable(8) %__i) unnamed_addr #3 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  %__i.addr = alloca i64**, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %this, %"class.__gnu_cxx::__normal_iterator"** %this.addr, align 8
  store i64** %__i, i64*** %__i.addr, align 8
  %this1 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %this.addr, align 8
  %_M_current = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %this1, i32 0, i32 0
  %0 = load i64**, i64*** %__i.addr, align 8
  %1 = load i64*, i64** %0, align 8
  store i64* %1, i64** %_M_current, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local zeroext i1 @_ZN9__gnu_cxxeqIPKlSt6vectorIlSaIlEEEEbRKNS_17__normal_iteratorIT_T0_EESB_(%"class.__gnu_cxx::__normal_iterator"* nonnull align 8 dereferenceable(8) %__lhs, %"class.__gnu_cxx::__normal_iterator"* nonnull align 8 dereferenceable(8) %__rhs) #3 comdat {
entry:
  %__lhs.addr = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  %__rhs.addr = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %__lhs, %"class.__gnu_cxx::__normal_iterator"** %__lhs.addr, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %__rhs, %"class.__gnu_cxx::__normal_iterator"** %__rhs.addr, align 8
  %0 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %__lhs.addr, align 8
  %call = call nonnull align 8 dereferenceable(8) i64** @_ZNK9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %0) #5
  %1 = load i64*, i64** %call, align 8
  %2 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %__rhs.addr, align 8
  %call1 = call nonnull align 8 dereferenceable(8) i64** @_ZNK9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %2) #5
  %3 = load i64*, i64** %call1, align 8
  %cmp = icmp eq i64* %1, %3
  ret i1 %cmp
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIlSaIlEEC2ERKS1_(%"class.std::vector"* %this, %"class.std::vector"* nonnull align 8 dereferenceable(24) %__x) unnamed_addr #4 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  %__x.addr = alloca %"class.std::vector"*, align 8
  %ref.tmp = alloca %"class.std::allocator.0", align 1
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  %agg.tmp = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp4 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  store %"class.std::vector"* %__x, %"class.std::vector"** %__x.addr, align 8
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %1 = load %"class.std::vector"*, %"class.std::vector"** %__x.addr, align 8
  %call = call i64 @_ZNKSt6vectorIlSaIlEE4sizeEv(%"class.std::vector"* %1) #5
  %2 = load %"class.std::vector"*, %"class.std::vector"** %__x.addr, align 8
  %3 = bitcast %"class.std::vector"* %2 to %"struct.std::_Vector_base"*
  %call2 = call nonnull align 1 dereferenceable(1) %"class.std::allocator.0"* @_ZNKSt12_Vector_baseIlSaIlEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %3) #5
  call void @_ZN9__gnu_cxx14__alloc_traitsISaIlElE17_S_select_on_copyERKS1_(%"class.std::allocator.0"* sret align 1 %ref.tmp, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %call2)
  invoke void @_ZNSt12_Vector_baseIlSaIlEEC2EmRKS0_(%"struct.std::_Vector_base"* %0, i64 %call, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %ref.tmp)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  call void @_ZNSaIlED2Ev(%"class.std::allocator.0"* %ref.tmp) #5
  %4 = load %"class.std::vector"*, %"class.std::vector"** %__x.addr, align 8
  %call3 = call i64* @_ZNKSt6vectorIlSaIlEE5beginEv(%"class.std::vector"* %4) #5
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp, i32 0, i32 0
  store i64* %call3, i64** %coerce.dive, align 8
  %5 = load %"class.std::vector"*, %"class.std::vector"** %__x.addr, align 8
  %call5 = call i64* @_ZNKSt6vectorIlSaIlEE3endEv(%"class.std::vector"* %5) #5
  %coerce.dive6 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp4, i32 0, i32 0
  store i64* %call5, i64** %coerce.dive6, align 8
  %6 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %6, i32 0, i32 0
  %7 = bitcast %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %_M_impl to %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"*
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data", %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* %7, i32 0, i32 0
  %8 = load i64*, i64** %_M_start, align 8
  %9 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %call7 = call nonnull align 1 dereferenceable(1) %"class.std::allocator.0"* @_ZNSt12_Vector_baseIlSaIlEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %9) #5
  %coerce.dive8 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp, i32 0, i32 0
  %10 = load i64*, i64** %coerce.dive8, align 8
  %coerce.dive9 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp4, i32 0, i32 0
  %11 = load i64*, i64** %coerce.dive9, align 8
  %call12 = invoke i64* @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEEPllET0_T_SA_S9_RSaIT1_E(i64* %10, i64* %11, i64* %8, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %call7)
          to label %invoke.cont11 unwind label %lpad10

invoke.cont11:                                    ; preds = %invoke.cont
  %12 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl13 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %12, i32 0, i32 0
  %13 = bitcast %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %_M_impl13 to %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"*
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data", %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* %13, i32 0, i32 1
  store i64* %call12, i64** %_M_finish, align 8
  ret void

lpad:                                             ; preds = %entry
  %14 = landingpad { i8*, i32 }
          cleanup
  %15 = extractvalue { i8*, i32 } %14, 0
  store i8* %15, i8** %exn.slot, align 8
  %16 = extractvalue { i8*, i32 } %14, 1
  store i32 %16, i32* %ehselector.slot, align 4
  call void @_ZNSaIlED2Ev(%"class.std::allocator.0"* %ref.tmp) #5
  br label %eh.resume

lpad10:                                           ; preds = %invoke.cont
  %17 = landingpad { i8*, i32 }
          cleanup
  %18 = extractvalue { i8*, i32 } %17, 0
  store i8* %18, i8** %exn.slot, align 8
  %19 = extractvalue { i8*, i32 } %17, 1
  store i32 %19, i32* %ehselector.slot, align 4
  %20 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  call void @_ZNSt12_Vector_baseIlSaIlEED2Ev(%"struct.std::_Vector_base"* %20) #5
  br label %eh.resume

eh.resume:                                        ; preds = %lpad10, %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val14 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val14
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @_ZNKSt6vectorIlSaIlEE4sizeEv(%"class.std::vector"* %this) #3 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %0, i32 0, i32 0
  %1 = bitcast %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %_M_impl to %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"*
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data", %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* %1, i32 0, i32 1
  %2 = load i64*, i64** %_M_finish, align 8
  %3 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %3, i32 0, i32 0
  %4 = bitcast %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %_M_impl2 to %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"*
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data", %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* %4, i32 0, i32 0
  %5 = load i64*, i64** %_M_start, align 8
  %sub.ptr.lhs.cast = ptrtoint i64* %2 to i64
  %sub.ptr.rhs.cast = ptrtoint i64* %5 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  ret i64 %sub.ptr.div
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 1 dereferenceable(1) %"class.std::allocator.0"* @_ZNKSt12_Vector_baseIlSaIlEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %this) #3 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base"*, align 8
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %this.addr, align 8
  %this1 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  %0 = bitcast %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %_M_impl to %"class.std::allocator.0"*
  ret %"class.std::allocator.0"* %0
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx14__alloc_traitsISaIlElE17_S_select_on_copyERKS1_(%"class.std::allocator.0"* noalias sret align 1 %agg.result, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %__a) #4 comdat align 2 {
entry:
  %result.ptr = alloca i8*, align 8
  %__a.addr = alloca %"class.std::allocator.0"*, align 8
  %0 = bitcast %"class.std::allocator.0"* %agg.result to i8*
  store i8* %0, i8** %result.ptr, align 8
  store %"class.std::allocator.0"* %__a, %"class.std::allocator.0"** %__a.addr, align 8
  %1 = load %"class.std::allocator.0"*, %"class.std::allocator.0"** %__a.addr, align 8
  call void @_ZNSt16allocator_traitsISaIlEE37select_on_container_copy_constructionERKS0_(%"class.std::allocator.0"* sret align 1 %agg.result, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %1)
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIlSaIlEEC2EmRKS0_(%"struct.std::_Vector_base"* %this, i64 %__n, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %__a) unnamed_addr #4 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"struct.std::_Vector_base"*, align 8
  %__n.addr = alloca i64, align 8
  %__a.addr = alloca %"class.std::allocator.0"*, align 8
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  store %"class.std::allocator.0"* %__a, %"class.std::allocator.0"** %__a.addr, align 8
  %this1 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  %0 = load %"class.std::allocator.0"*, %"class.std::allocator.0"** %__a.addr, align 8
  call void @_ZNSt12_Vector_baseIlSaIlEE12_Vector_implC2ERKS0_(%"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %_M_impl, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %0) #5
  %1 = load i64, i64* %__n.addr, align 8
  invoke void @_ZNSt12_Vector_baseIlSaIlEE17_M_create_storageEm(%"struct.std::_Vector_base"* %this1, i64 %1)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  ret void

lpad:                                             ; preds = %entry
  %2 = landingpad { i8*, i32 }
          cleanup
  %3 = extractvalue { i8*, i32 } %2, 0
  store i8* %3, i8** %exn.slot, align 8
  %4 = extractvalue { i8*, i32 } %2, 1
  store i32 %4, i32* %ehselector.slot, align 4
  call void @_ZNSt12_Vector_baseIlSaIlEE12_Vector_implD2Ev(%"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %_M_impl) #5
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val2 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val2
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i64* @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEEPllET0_T_SA_S9_RSaIT1_E(i64* %__first.coerce, i64* %__last.coerce, i64* %__result, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %0) #4 comdat {
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
  store i64* %__result, i64** %__result.addr, align 8
  store %"class.std::allocator.0"* %0, %"class.std::allocator.0"** %.addr, align 8
  %1 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp to i8*
  %2 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__first to i8*
  %3 = call i8* @memcpy(i8* %1, i8* %2, i64 8)
  %4 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp2 to i8*
  %5 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__last to i8*
  %6 = call i8* @memcpy(i8* %4, i8* %5, i64 8)
  %7 = load i64*, i64** %__result.addr, align 8
  %coerce.dive3 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp, i32 0, i32 0
  %8 = load i64*, i64** %coerce.dive3, align 8
  %coerce.dive4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp2, i32 0, i32 0
  %9 = load i64*, i64** %coerce.dive4, align 8
  %call = call i64* @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEEPlET0_T_SA_S9_(i64* %8, i64* %9, i64* %7)
  ret i64* %call
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #12

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i64* @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEEPlET0_T_SA_S9_(i64* %__first.coerce, i64* %__last.coerce, i64* %__result) #4 comdat {
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
  store i64* %__result, i64** %__result.addr, align 8
  store i8 1, i8* %__assignable, align 1
  %0 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp to i8*
  %1 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__first to i8*
  %2 = call i8* @memcpy(i8* %0, i8* %1, i64 8)
  %3 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp2 to i8*
  %4 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__last to i8*
  %5 = call i8* @memcpy(i8* %3, i8* %4, i64 8)
  %6 = load i64*, i64** %__result.addr, align 8
  %coerce.dive3 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp, i32 0, i32 0
  %7 = load i64*, i64** %coerce.dive3, align 8
  %coerce.dive4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp2, i32 0, i32 0
  %8 = load i64*, i64** %coerce.dive4, align 8
  %call = call i64* @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEEPlEET0_T_SC_SB_(i64* %7, i64* %8, i64* %6)
  ret i64* %call
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i64* @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEEPlEET0_T_SC_SB_(i64* %__first.coerce, i64* %__last.coerce, i64* %__result) #4 comdat align 2 {
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
  store i64* %__result, i64** %__result.addr, align 8
  %0 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp to i8*
  %1 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__first to i8*
  %2 = call i8* @memcpy(i8* %0, i8* %1, i64 8)
  %3 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp2 to i8*
  %4 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__last to i8*
  %5 = call i8* @memcpy(i8* %3, i8* %4, i64 8)
  %6 = load i64*, i64** %__result.addr, align 8
  %coerce.dive3 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp, i32 0, i32 0
  %7 = load i64*, i64** %coerce.dive3, align 8
  %coerce.dive4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp2, i32 0, i32 0
  %8 = load i64*, i64** %coerce.dive4, align 8
  %call = call i64* @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEEPlET0_T_SA_S9_(i64* %7, i64* %8, i64* %6)
  ret i64* %call
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i64* @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEEPlET0_T_SA_S9_(i64* %__first.coerce, i64* %__last.coerce, i64* %__result) #4 comdat {
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
  store i64* %__result, i64** %__result.addr, align 8
  %0 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp2 to i8*
  %1 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__first to i8*
  %2 = call i8* @memcpy(i8* %0, i8* %1, i64 8)
  %coerce.dive3 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp2, i32 0, i32 0
  %3 = load i64*, i64** %coerce.dive3, align 8
  %call = call i64* @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEEET_S8_(i64* %3)
  %coerce.dive4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp, i32 0, i32 0
  store i64* %call, i64** %coerce.dive4, align 8
  %4 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp6 to i8*
  %5 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__last to i8*
  %6 = call i8* @memcpy(i8* %4, i8* %5, i64 8)
  %coerce.dive7 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp6, i32 0, i32 0
  %7 = load i64*, i64** %coerce.dive7, align 8
  %call8 = call i64* @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEEET_S8_(i64* %7)
  %coerce.dive9 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp5, i32 0, i32 0
  store i64* %call8, i64** %coerce.dive9, align 8
  %8 = load i64*, i64** %__result.addr, align 8
  %coerce.dive10 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp, i32 0, i32 0
  %9 = load i64*, i64** %coerce.dive10, align 8
  %coerce.dive11 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp5, i32 0, i32 0
  %10 = load i64*, i64** %coerce.dive11, align 8
  %call12 = call i64* @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEEPlET1_T0_SA_S9_(i64* %9, i64* %10, i64* %8)
  ret i64* %call12
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64* @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEEET_S8_(i64* %__it.coerce) #3 comdat {
entry:
  %retval = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__it = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__it, i32 0, i32 0
  store i64* %__it.coerce, i64** %coerce.dive, align 8
  %0 = bitcast %"class.__gnu_cxx::__normal_iterator"* %retval to i8*
  %1 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__it to i8*
  %2 = call i8* @memcpy(i8* %0, i8* %1, i64 8)
  %coerce.dive1 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %retval, i32 0, i32 0
  %3 = load i64*, i64** %coerce.dive1, align 8
  ret i64* %3
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i64* @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEEPlET1_T0_SA_S9_(i64* %__first.coerce, i64* %__last.coerce, i64* %__result) #4 comdat {
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
  store i64* %__result, i64** %__result.addr, align 8
  %0 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp to i8*
  %1 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__first to i8*
  %2 = call i8* @memcpy(i8* %0, i8* %1, i64 8)
  %coerce.dive2 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp, i32 0, i32 0
  %3 = load i64*, i64** %coerce.dive2, align 8
  %call = call i64* @_ZSt12__niter_baseIPKlSt6vectorIlSaIlEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE(i64* %3) #5
  %4 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp3 to i8*
  %5 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__last to i8*
  %6 = call i8* @memcpy(i8* %4, i8* %5, i64 8)
  %coerce.dive4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp3, i32 0, i32 0
  %7 = load i64*, i64** %coerce.dive4, align 8
  %call5 = call i64* @_ZSt12__niter_baseIPKlSt6vectorIlSaIlEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE(i64* %7) #5
  %8 = load i64*, i64** %__result.addr, align 8
  %call6 = call i64* @_ZSt12__niter_baseIPlET_S1_(i64* %8) #5
  %call7 = call i64* @_ZSt14__copy_move_a1ILb0EPKlPlET1_T0_S4_S3_(i64* %call, i64* %call5, i64* %call6)
  %call8 = call i64* @_ZSt12__niter_wrapIPlET_RKS1_S1_(i64** nonnull align 8 dereferenceable(8) %__result.addr, i64* %call7)
  ret i64* %call8
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64* @_ZSt12__niter_baseIPKlSt6vectorIlSaIlEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE(i64* %__it.coerce) #3 comdat {
entry:
  %__it = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__it, i32 0, i32 0
  store i64* %__it.coerce, i64** %coerce.dive, align 8
  %call = call nonnull align 8 dereferenceable(8) i64** @_ZNK9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %__it) #5
  %0 = load i64*, i64** %call, align 8
  ret i64* %0
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64* @_ZSt12__niter_baseIPlET_S1_(i64* %__it) #3 comdat {
entry:
  %__it.addr = alloca i64*, align 8
  store i64* %__it, i64** %__it.addr, align 8
  %0 = load i64*, i64** %__it.addr, align 8
  ret i64* %0
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i64* @_ZSt14__copy_move_a1ILb0EPKlPlET1_T0_S4_S3_(i64* %__first, i64* %__last, i64* %__result) #4 comdat {
entry:
  %__first.addr = alloca i64*, align 8
  %__last.addr = alloca i64*, align 8
  %__result.addr = alloca i64*, align 8
  store i64* %__first, i64** %__first.addr, align 8
  store i64* %__last, i64** %__last.addr, align 8
  store i64* %__result, i64** %__result.addr, align 8
  %0 = load i64*, i64** %__first.addr, align 8
  %1 = load i64*, i64** %__last.addr, align 8
  %2 = load i64*, i64** %__result.addr, align 8
  %call = call i64* @_ZSt14__copy_move_a2ILb0EPKlPlET1_T0_S4_S3_(i64* %0, i64* %1, i64* %2)
  ret i64* %call
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64* @_ZSt12__niter_wrapIPlET_RKS1_S1_(i64** nonnull align 8 dereferenceable(8) %0, i64* %__res) #3 comdat {
entry:
  %.addr = alloca i64**, align 8
  %__res.addr = alloca i64*, align 8
  store i64** %0, i64*** %.addr, align 8
  store i64* %__res, i64** %__res.addr, align 8
  %1 = load i64*, i64** %__res.addr, align 8
  ret i64* %1
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i64* @_ZSt14__copy_move_a2ILb0EPKlPlET1_T0_S4_S3_(i64* %__first, i64* %__last, i64* %__result) #4 comdat {
entry:
  %__first.addr = alloca i64*, align 8
  %__last.addr = alloca i64*, align 8
  %__result.addr = alloca i64*, align 8
  store i64* %__first, i64** %__first.addr, align 8
  store i64* %__last, i64** %__last.addr, align 8
  store i64* %__result, i64** %__result.addr, align 8
  %0 = load i64*, i64** %__first.addr, align 8
  %1 = load i64*, i64** %__last.addr, align 8
  %2 = load i64*, i64** %__result.addr, align 8
  %call = call i64* @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIlEEPT_PKS3_S6_S4_(i64* %0, i64* %1, i64* %2)
  ret i64* %call
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64* @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIlEEPT_PKS3_S6_S4_(i64* %__first, i64* %__last, i64* %__result) #3 comdat align 2 {
entry:
  %__first.addr = alloca i64*, align 8
  %__last.addr = alloca i64*, align 8
  %__result.addr = alloca i64*, align 8
  %_Num = alloca i64, align 8
  store i64* %__first, i64** %__first.addr, align 8
  store i64* %__last, i64** %__last.addr, align 8
  store i64* %__result, i64** %__result.addr, align 8
  %0 = load i64*, i64** %__last.addr, align 8
  %1 = load i64*, i64** %__first.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i64* %0 to i64
  %sub.ptr.rhs.cast = ptrtoint i64* %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  store i64 %sub.ptr.div, i64* %_Num, align 8
  %2 = load i64, i64* %_Num, align 8
  %tobool = icmp ne i64 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i64*, i64** %__result.addr, align 8
  %4 = bitcast i64* %3 to i8*
  %5 = load i64*, i64** %__first.addr, align 8
  %6 = bitcast i64* %5 to i8*
  %7 = load i64, i64* %_Num, align 8
  %mul = mul i64 8, %7
  %8 = call i8* @memmove(i8* %4, i8* %6, i64 %mul)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i64*, i64** %__result.addr, align 8
  %10 = load i64, i64* %_Num, align 8
  %add.ptr = getelementptr inbounds i64, i64* %9, i64 %10
  ret i64* %add.ptr
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i1 immarg) #12

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIlSaIlEE12_Vector_implC2ERKS0_(%"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %this, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %__a) unnamed_addr #3 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"*, align 8
  %__a.addr = alloca %"class.std::allocator.0"*, align 8
  store %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %this, %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"** %this.addr, align 8
  store %"class.std::allocator.0"* %__a, %"class.std::allocator.0"** %__a.addr, align 8
  %this1 = load %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"*, %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"** %this.addr, align 8
  %0 = bitcast %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %this1 to %"class.std::allocator.0"*
  %1 = load %"class.std::allocator.0"*, %"class.std::allocator.0"** %__a.addr, align 8
  call void @_ZNSaIlEC2ERKS_(%"class.std::allocator.0"* %0, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %1) #5
  %2 = bitcast %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %this1 to %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"*
  call void @_ZNSt12_Vector_baseIlSaIlEE17_Vector_impl_dataC2Ev(%"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* %2) #5
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIlSaIlEE17_M_create_storageEm(%"struct.std::_Vector_base"* %this, i64 %__n) #4 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base"*, align 8
  %__n.addr = alloca i64, align 8
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %this1 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %this.addr, align 8
  %0 = load i64, i64* %__n.addr, align 8
  %call = call i64* @_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm(%"struct.std::_Vector_base"* %this1, i64 %0)
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  %1 = bitcast %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %_M_impl to %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"*
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data", %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* %1, i32 0, i32 0
  store i64* %call, i64** %_M_start, align 8
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  %2 = bitcast %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %_M_impl2 to %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"*
  %_M_start3 = getelementptr inbounds %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data", %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* %2, i32 0, i32 0
  %3 = load i64*, i64** %_M_start3, align 8
  %_M_impl4 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  %4 = bitcast %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %_M_impl4 to %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"*
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data", %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* %4, i32 0, i32 1
  store i64* %3, i64** %_M_finish, align 8
  %_M_impl5 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  %5 = bitcast %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %_M_impl5 to %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"*
  %_M_start6 = getelementptr inbounds %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data", %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* %5, i32 0, i32 0
  %6 = load i64*, i64** %_M_start6, align 8
  %7 = load i64, i64* %__n.addr, align 8
  %add.ptr = getelementptr inbounds i64, i64* %6, i64 %7
  %_M_impl7 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  %8 = bitcast %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %_M_impl7 to %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"*
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data", %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* %8, i32 0, i32 2
  store i64* %add.ptr, i64** %_M_end_of_storage, align 8
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i64* @_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm(%"struct.std::_Vector_base"* %this, i64 %__n) #4 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base"*, align 8
  %__n.addr = alloca i64, align 8
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %this1 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %this.addr, align 8
  %0 = load i64, i64* %__n.addr, align 8
  %cmp = icmp ne i64 %0, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  %1 = bitcast %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %_M_impl to %"class.std::allocator.0"*
  %2 = load i64, i64* %__n.addr, align 8
  %call = call i64* @_ZNSt16allocator_traitsISaIlEE8allocateERS0_m(%"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %1, i64 %2)
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64* [ %call, %cond.true ], [ null, %cond.false ]
  ret i64* %cond
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i64* @_ZNSt16allocator_traitsISaIlEE8allocateERS0_m(%"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %__a, i64 %__n) #4 comdat align 2 {
entry:
  %__a.addr = alloca %"class.std::allocator.0"*, align 8
  %__n.addr = alloca i64, align 8
  store %"class.std::allocator.0"* %__a, %"class.std::allocator.0"** %__a.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %0 = load %"class.std::allocator.0"*, %"class.std::allocator.0"** %__a.addr, align 8
  %1 = bitcast %"class.std::allocator.0"* %0 to %"class.std::allocator.0"*
  %2 = load i64, i64* %__n.addr, align 8
  %call = call i64* @_ZN9__gnu_cxx13new_allocatorIlE8allocateEmPKv(%"class.std::allocator.0"* %1, i64 %2, i8* null)
  ret i64* %call
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i64* @_ZN9__gnu_cxx13new_allocatorIlE8allocateEmPKv(%"class.std::allocator.0"* %this, i64 %__n, i8* %0) #4 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::allocator.0"*, align 8
  %__n.addr = alloca i64, align 8
  %.addr = alloca i8*, align 8
  store %"class.std::allocator.0"* %this, %"class.std::allocator.0"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  store i8* %0, i8** %.addr, align 8
  %this1 = load %"class.std::allocator.0"*, %"class.std::allocator.0"** %this.addr, align 8
  %1 = load i64, i64* %__n.addr, align 8
  %call = call i64 @_ZNK9__gnu_cxx13new_allocatorIlE11_M_max_sizeEv(%"class.std::allocator.0"* %this1) #5
  %cmp = icmp ugt i64 %1, %call
  br i1 %cmp, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %__n.addr, align 8
  %cmp2 = icmp ugt i64 %2, 2305843009213693951
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  call void @_ZSt28__throw_bad_array_new_lengthv() #19
  unreachable

if.end:                                           ; preds = %if.then
  call void @_ZSt17__throw_bad_allocv() #19
  unreachable

if.end4:                                          ; preds = %entry
  %3 = load i64, i64* %__n.addr, align 8
  %mul = mul i64 %3, 8
  %call5 = call noalias nonnull i8* @_Znwm(i64 %mul) #18
  %4 = bitcast i8* %call5 to i64*
  ret i64* %4
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @_ZNK9__gnu_cxx13new_allocatorIlE11_M_max_sizeEv(%"class.std::allocator.0"* %this) #3 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::allocator.0"*, align 8
  store %"class.std::allocator.0"* %this, %"class.std::allocator.0"** %this.addr, align 8
  %this1 = load %"class.std::allocator.0"*, %"class.std::allocator.0"** %this.addr, align 8
  ret i64 1152921504606846975
}

; Function Attrs: noreturn
declare dso_local void @_ZSt28__throw_bad_array_new_lengthv() #10

; Function Attrs: noreturn
declare dso_local void @_ZSt17__throw_bad_allocv() #10

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSaIlEC2ERKS_(%"class.std::allocator.0"* %this, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %__a) unnamed_addr #3 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::allocator.0"*, align 8
  %__a.addr = alloca %"class.std::allocator.0"*, align 8
  store %"class.std::allocator.0"* %this, %"class.std::allocator.0"** %this.addr, align 8
  store %"class.std::allocator.0"* %__a, %"class.std::allocator.0"** %__a.addr, align 8
  %this1 = load %"class.std::allocator.0"*, %"class.std::allocator.0"** %this.addr, align 8
  %0 = bitcast %"class.std::allocator.0"* %this1 to %"class.std::allocator.0"*
  %1 = load %"class.std::allocator.0"*, %"class.std::allocator.0"** %__a.addr, align 8
  %2 = bitcast %"class.std::allocator.0"* %1 to %"class.std::allocator.0"*
  call void @_ZN9__gnu_cxx13new_allocatorIlEC2ERKS1_(%"class.std::allocator.0"* %0, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %2) #5
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIlSaIlEE17_Vector_impl_dataC2Ev(%"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* %this) unnamed_addr #3 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"*, align 8
  store %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* %this, %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"** %this.addr, align 8
  %this1 = load %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"*, %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"** %this.addr, align 8
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data", %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* %this1, i32 0, i32 0
  store i64* null, i64** %_M_start, align 8
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data", %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* %this1, i32 0, i32 1
  store i64* null, i64** %_M_finish, align 8
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data", %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* %this1, i32 0, i32 2
  store i64* null, i64** %_M_end_of_storage, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorIlEC2ERKS1_(%"class.std::allocator.0"* %this, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %0) unnamed_addr #3 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::allocator.0"*, align 8
  %.addr = alloca %"class.std::allocator.0"*, align 8
  store %"class.std::allocator.0"* %this, %"class.std::allocator.0"** %this.addr, align 8
  store %"class.std::allocator.0"* %0, %"class.std::allocator.0"** %.addr, align 8
  %this1 = load %"class.std::allocator.0"*, %"class.std::allocator.0"** %this.addr, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIlEE37select_on_container_copy_constructionERKS0_(%"class.std::allocator.0"* noalias sret align 1 %agg.result, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %__rhs) #3 comdat align 2 {
entry:
  %result.ptr = alloca i8*, align 8
  %__rhs.addr = alloca %"class.std::allocator.0"*, align 8
  %0 = bitcast %"class.std::allocator.0"* %agg.result to i8*
  store i8* %0, i8** %result.ptr, align 8
  store %"class.std::allocator.0"* %__rhs, %"class.std::allocator.0"** %__rhs.addr, align 8
  %1 = load %"class.std::allocator.0"*, %"class.std::allocator.0"** %__rhs.addr, align 8
  call void @_ZNSaIlEC2ERKS_(%"class.std::allocator.0"* %agg.result, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %1) #5
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorIlED2Ev(%"class.std::allocator.0"* %this) unnamed_addr #3 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::allocator.0"*, align 8
  store %"class.std::allocator.0"* %this, %"class.std::allocator.0"** %this.addr, align 8
  %this1 = load %"class.std::allocator.0"*, %"class.std::allocator.0"** %this.addr, align 8
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i64 @_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_(i64 %__n, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %__a) #4 comdat align 2 {
entry:
  %__n.addr = alloca i64, align 8
  %__a.addr = alloca %"class.std::allocator.0"*, align 8
  %ref.tmp = alloca %"class.std::allocator.0", align 1
  store i64 %__n, i64* %__n.addr, align 8
  store %"class.std::allocator.0"* %__a, %"class.std::allocator.0"** %__a.addr, align 8
  %0 = load i64, i64* %__n.addr, align 8
  %1 = load %"class.std::allocator.0"*, %"class.std::allocator.0"** %__a.addr, align 8
  call void @_ZNSaIlEC2ERKS_(%"class.std::allocator.0"* %ref.tmp, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %1) #5
  %call = call i64 @_ZNSt6vectorIlSaIlEE11_S_max_sizeERKS0_(%"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %ref.tmp) #5
  %cmp = icmp ugt i64 %0, %call
  call void @_ZNSaIlED2Ev(%"class.std::allocator.0"* %ref.tmp) #5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_ZSt20__throw_length_errorPKc(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5.7, i64 0, i64 0)) #19
  unreachable

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %__n.addr, align 8
  ret i64 %2
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIlSaIlEE21_M_default_initializeEm(%"class.std::vector"* %this, i64 %__n) #4 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  %__n.addr = alloca i64, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %0, i32 0, i32 0
  %1 = bitcast %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %_M_impl to %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"*
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data", %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* %1, i32 0, i32 0
  %2 = load i64*, i64** %_M_start, align 8
  %3 = load i64, i64* %__n.addr, align 8
  %4 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %call = call nonnull align 1 dereferenceable(1) %"class.std::allocator.0"* @_ZNSt12_Vector_baseIlSaIlEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %4) #5
  %call2 = call i64* @_ZSt27__uninitialized_default_n_aIPlmlET_S1_T0_RSaIT1_E(i64* %2, i64 %3, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %call)
  %5 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl3 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %5, i32 0, i32 0
  %6 = bitcast %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %_M_impl3 to %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"*
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data", %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* %6, i32 0, i32 1
  store i64* %call2, i64** %_M_finish, align 8
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i64* @_ZSt27__uninitialized_default_n_aIPlmlET_S1_T0_RSaIT1_E(i64* %__first, i64 %__n, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %0) #4 comdat {
entry:
  %__first.addr = alloca i64*, align 8
  %__n.addr = alloca i64, align 8
  %.addr = alloca %"class.std::allocator.0"*, align 8
  store i64* %__first, i64** %__first.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  store %"class.std::allocator.0"* %0, %"class.std::allocator.0"** %.addr, align 8
  %1 = load i64*, i64** %__first.addr, align 8
  %2 = load i64, i64* %__n.addr, align 8
  %call = call i64* @_ZSt25__uninitialized_default_nIPlmET_S1_T0_(i64* %1, i64 %2)
  ret i64* %call
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i64* @_ZSt25__uninitialized_default_nIPlmET_S1_T0_(i64* %__first, i64 %__n) #4 comdat {
entry:
  %__first.addr = alloca i64*, align 8
  %__n.addr = alloca i64, align 8
  %__can_fill = alloca i8, align 1
  store i64* %__first, i64** %__first.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  store i8 1, i8* %__can_fill, align 1
  %0 = load i64*, i64** %__first.addr, align 8
  %1 = load i64, i64* %__n.addr, align 8
  %call = call i64* @_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPlmEET_S3_T0_(i64* %0, i64 %1)
  ret i64* %call
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i64* @_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPlmEET_S3_T0_(i64* %__first, i64 %__n) #4 comdat align 2 {
entry:
  %__first.addr = alloca i64*, align 8
  %__n.addr = alloca i64, align 8
  %__val = alloca i64*, align 8
  store i64* %__first, i64** %__first.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %0 = load i64, i64* %__n.addr, align 8
  %cmp = icmp ugt i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i64*, i64** %__first.addr, align 8
  %call = call i64* @_ZSt11__addressofIlEPT_RS0_(i64* nonnull align 8 dereferenceable(8) %1) #5
  store i64* %call, i64** %__val, align 8
  %2 = load i64*, i64** %__val, align 8
  call void @_ZSt10_ConstructIlJEEvPT_DpOT0_(i64* %2)
  %3 = load i64*, i64** %__first.addr, align 8
  %incdec.ptr = getelementptr inbounds i64, i64* %3, i32 1
  store i64* %incdec.ptr, i64** %__first.addr, align 8
  %4 = load i64*, i64** %__first.addr, align 8
  %5 = load i64, i64* %__n.addr, align 8
  %sub = sub i64 %5, 1
  %6 = load i64*, i64** %__val, align 8
  %call1 = call i64* @_ZSt6fill_nIPlmlET_S1_T0_RKT1_(i64* %4, i64 %sub, i64* nonnull align 8 dereferenceable(8) %6)
  store i64* %call1, i64** %__first.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load i64*, i64** %__first.addr, align 8
  ret i64* %7
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64* @_ZSt11__addressofIlEPT_RS0_(i64* nonnull align 8 dereferenceable(8) %__r) #3 comdat {
entry:
  %__r.addr = alloca i64*, align 8
  store i64* %__r, i64** %__r.addr, align 8
  %0 = load i64*, i64** %__r.addr, align 8
  ret i64* %0
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZSt10_ConstructIlJEEvPT_DpOT0_(i64* %__p) #3 comdat {
entry:
  %__p.addr = alloca i64*, align 8
  store i64* %__p, i64** %__p.addr, align 8
  %0 = load i64*, i64** %__p.addr, align 8
  %1 = bitcast i64* %0 to i8*
  %2 = bitcast i8* %1 to i64*
  store i64 0, i64* %2, align 8
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i64* @_ZSt6fill_nIPlmlET_S1_T0_RKT1_(i64* %__first, i64 %__n, i64* nonnull align 8 dereferenceable(8) %__value) #4 comdat {
entry:
  %__first.addr = alloca i64*, align 8
  %__n.addr = alloca i64, align 8
  %__value.addr = alloca i64*, align 8
  %agg.tmp = alloca %"class.std::allocator.0", align 1
  %undef.agg.tmp = alloca %"class.std::allocator.0", align 1
  store i64* %__first, i64** %__first.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  store i64* %__value, i64** %__value.addr, align 8
  %0 = load i64*, i64** %__first.addr, align 8
  %1 = load i64, i64* %__n.addr, align 8
  %call = call i64 @_ZSt17__size_to_integerm(i64 %1)
  %2 = load i64*, i64** %__value.addr, align 8
  call void @_ZSt19__iterator_categoryIPlENSt15iterator_traitsIT_E17iterator_categoryERKS2_(i64** nonnull align 8 dereferenceable(8) %__first.addr)
  %call1 = call i64* @_ZSt10__fill_n_aIPlmlET_S1_T0_RKT1_St26random_access_iterator_tag(i64* %0, i64 %call, i64* nonnull align 8 dereferenceable(8) %2)
  ret i64* %call1
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @_ZSt17__size_to_integerm(i64 %__n) #3 comdat {
entry:
  %__n.addr = alloca i64, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %0 = load i64, i64* %__n.addr, align 8
  ret i64 %0
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZSt19__iterator_categoryIPlENSt15iterator_traitsIT_E17iterator_categoryERKS2_(i64** nonnull align 8 dereferenceable(8) %0) #3 comdat {
entry:
  %.addr = alloca i64**, align 8
  store i64** %0, i64*** %.addr, align 8
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i64* @_ZSt10__fill_n_aIPlmlET_S1_T0_RKT1_St26random_access_iterator_tag(i64* %__first, i64 %__n, i64* nonnull align 8 dereferenceable(8) %__value) #4 comdat {
entry:
  %retval = alloca i64*, align 8
  %0 = alloca %"class.std::allocator.0", align 1
  %__first.addr = alloca i64*, align 8
  %__n.addr = alloca i64, align 8
  %__value.addr = alloca i64*, align 8
  store i64* %__first, i64** %__first.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  store i64* %__value, i64** %__value.addr, align 8
  %1 = load i64, i64* %__n.addr, align 8
  %cmp = icmp ule i64 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i64*, i64** %__first.addr, align 8
  store i64* %2, i64** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i64*, i64** %__first.addr, align 8
  %4 = load i64*, i64** %__first.addr, align 8
  %5 = load i64, i64* %__n.addr, align 8
  %add.ptr = getelementptr inbounds i64, i64* %4, i64 %5
  %6 = load i64*, i64** %__value.addr, align 8
  call void @_ZSt8__fill_aIPllEvT_S1_RKT0_(i64* %3, i64* %add.ptr, i64* nonnull align 8 dereferenceable(8) %6)
  %7 = load i64*, i64** %__first.addr, align 8
  %8 = load i64, i64* %__n.addr, align 8
  %add.ptr1 = getelementptr inbounds i64, i64* %7, i64 %8
  store i64* %add.ptr1, i64** %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %9 = load i64*, i64** %retval, align 8
  ret i64* %9
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZSt8__fill_aIPllEvT_S1_RKT0_(i64* %__first, i64* %__last, i64* nonnull align 8 dereferenceable(8) %__value) #4 comdat {
entry:
  %__first.addr = alloca i64*, align 8
  %__last.addr = alloca i64*, align 8
  %__value.addr = alloca i64*, align 8
  store i64* %__first, i64** %__first.addr, align 8
  store i64* %__last, i64** %__last.addr, align 8
  store i64* %__value, i64** %__value.addr, align 8
  %0 = load i64*, i64** %__first.addr, align 8
  %1 = load i64*, i64** %__last.addr, align 8
  %2 = load i64*, i64** %__value.addr, align 8
  call void @_ZSt9__fill_a1IPllEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_(i64* %0, i64* %1, i64* nonnull align 8 dereferenceable(8) %2)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZSt9__fill_a1IPllEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_(i64* %__first, i64* %__last, i64* nonnull align 8 dereferenceable(8) %__value) #3 comdat {
entry:
  %__first.addr = alloca i64*, align 8
  %__last.addr = alloca i64*, align 8
  %__value.addr = alloca i64*, align 8
  %__tmp = alloca i64, align 8
  store i64* %__first, i64** %__first.addr, align 8
  store i64* %__last, i64** %__last.addr, align 8
  store i64* %__value, i64** %__value.addr, align 8
  %0 = load i64*, i64** %__value.addr, align 8
  %1 = load i64, i64* %0, align 8
  store i64 %1, i64* %__tmp, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i64*, i64** %__first.addr, align 8
  %3 = load i64*, i64** %__last.addr, align 8
  %cmp = icmp ne i64* %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i64, i64* %__tmp, align 8
  %5 = load i64*, i64** %__first.addr, align 8
  store i64 %4, i64* %5, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i64*, i64** %__first.addr, align 8
  %incdec.ptr = getelementptr inbounds i64, i64* %6, i32 1
  store i64* %incdec.ptr, i64** %__first.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @_ZNSt6vectorIlSaIlEE11_S_max_sizeERKS0_(%"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %__a) #3 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__a.addr = alloca %"class.std::allocator.0"*, align 8
  %__diffmax = alloca i64, align 8
  %__allocmax = alloca i64, align 8
  store %"class.std::allocator.0"* %__a, %"class.std::allocator.0"** %__a.addr, align 8
  store i64 1152921504606846975, i64* %__diffmax, align 8
  %0 = load %"class.std::allocator.0"*, %"class.std::allocator.0"** %__a.addr, align 8
  %call = call i64 @_ZNSt16allocator_traitsISaIlEE8max_sizeERKS0_(%"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %0) #5
  store i64 %call, i64* %__allocmax, align 8
  %call1 = invoke nonnull align 8 dereferenceable(8) i64* @_ZSt3minImERKT_S2_S2_(i64* nonnull align 8 dereferenceable(8) %__diffmax, i64* nonnull align 8 dereferenceable(8) %__allocmax)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  %1 = load i64, i64* %call1, align 8
  ret i64 %1

terminate.lpad:                                   ; preds = %entry
  %2 = landingpad { i8*, i32 }
          catch i8* null
  %3 = extractvalue { i8*, i32 } %2, 0
  call void @__clang_call_terminate(i8* %3) #13
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @_ZSt20__throw_length_errorPKc(i8*) #10

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @_ZNSt16allocator_traitsISaIlEE8max_sizeERKS0_(%"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %__a) #3 comdat align 2 {
entry:
  %__a.addr = alloca %"class.std::allocator.0"*, align 8
  store %"class.std::allocator.0"* %__a, %"class.std::allocator.0"** %__a.addr, align 8
  %0 = load %"class.std::allocator.0"*, %"class.std::allocator.0"** %__a.addr, align 8
  %1 = bitcast %"class.std::allocator.0"* %0 to %"class.std::allocator.0"*
  %call = call i64 @_ZNK9__gnu_cxx13new_allocatorIlE8max_sizeEv(%"class.std::allocator.0"* %1) #5
  ret i64 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) i64* @_ZSt3minImERKT_S2_S2_(i64* nonnull align 8 dereferenceable(8) %__a, i64* nonnull align 8 dereferenceable(8) %__b) #3 comdat {
entry:
  %retval = alloca i64*, align 8
  %__a.addr = alloca i64*, align 8
  %__b.addr = alloca i64*, align 8
  store i64* %__a, i64** %__a.addr, align 8
  store i64* %__b, i64** %__b.addr, align 8
  %0 = load i64*, i64** %__b.addr, align 8
  %1 = load i64, i64* %0, align 8
  %2 = load i64*, i64** %__a.addr, align 8
  %3 = load i64, i64* %2, align 8
  %cmp = icmp ult i64 %1, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i64*, i64** %__b.addr, align 8
  store i64* %4, i64** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i64*, i64** %__a.addr, align 8
  store i64* %5, i64** %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i64*, i64** %retval, align 8
  ret i64* %6
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @_ZNK9__gnu_cxx13new_allocatorIlE8max_sizeEv(%"class.std::allocator.0"* %this) #3 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::allocator.0"*, align 8
  store %"class.std::allocator.0"* %this, %"class.std::allocator.0"** %this.addr, align 8
  %this1 = load %"class.std::allocator.0"*, %"class.std::allocator.0"** %this.addr, align 8
  %call = call i64 @_ZNK9__gnu_cxx13new_allocatorIlE11_M_max_sizeEv(%"class.std::allocator.0"* %this1) #5
  ret i64 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorIlEC2Ev(%"class.std::allocator.0"* %this) unnamed_addr #3 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::allocator.0"*, align 8
  store %"class.std::allocator.0"* %this, %"class.std::allocator.0"** %this.addr, align 8
  %this1 = load %"class.std::allocator.0"*, %"class.std::allocator.0"** %this.addr, align 8
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow12TensorBufferC2EPv(%"class.tensorflow::TensorBuffer"* %this, i8* %data_ptr) unnamed_addr #4 comdat align 2 {
entry:
  %this.addr = alloca %"class.tensorflow::TensorBuffer"*, align 8
  %data_ptr.addr = alloca i8*, align 8
  store %"class.tensorflow::TensorBuffer"* %this, %"class.tensorflow::TensorBuffer"** %this.addr, align 8
  store i8* %data_ptr, i8** %data_ptr.addr, align 8
  %this1 = load %"class.tensorflow::TensorBuffer"*, %"class.tensorflow::TensorBuffer"** %this.addr, align 8
  %0 = bitcast %"class.tensorflow::TensorBuffer"* %this1 to %"class.tensorflow::core::RefCounted"*
  call void @_ZN10tensorflow4core10RefCountedC2Ev(%"class.tensorflow::core::RefCounted"* %0)
  %1 = bitcast %"class.tensorflow::TensorBuffer"* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [10 x i8*] }, { [10 x i8*] }* @_ZTVN10tensorflow12TensorBufferE, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %1, align 8
  %data_ = getelementptr inbounds %"class.tensorflow::TensorBuffer", %"class.tensorflow::TensorBuffer"* %this1, i32 0, i32 1
  %2 = load i8*, i8** %data_ptr.addr, align 8
  store i8* %2, i8** %data_, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN16TF_ManagedBufferD2Ev(%class.TF_ManagedBuffer* %this) unnamed_addr #3 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %class.TF_ManagedBuffer*, align 8
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  store %class.TF_ManagedBuffer* %this, %class.TF_ManagedBuffer** %this.addr, align 8
  %this1 = load %class.TF_ManagedBuffer*, %class.TF_ManagedBuffer** %this.addr, align 8
  %0 = bitcast %class.TF_ManagedBuffer* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [10 x i8*] }, { [10 x i8*] }* @_ZTV16TF_ManagedBuffer, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %0, align 8
  %deallocator_ = getelementptr inbounds %class.TF_ManagedBuffer, %class.TF_ManagedBuffer* %this1, i32 0, i32 2
  %1 = load void (i8*, i64, i8*)*, void (i8*, i64, i8*)** %deallocator_, align 8
  %2 = bitcast %class.TF_ManagedBuffer* %this1 to %"class.tensorflow::TensorBuffer"*
  %call = invoke i8* @_ZNK10tensorflow12TensorBuffer4dataEv(%"class.tensorflow::TensorBuffer"* %2)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %len_ = getelementptr inbounds %class.TF_ManagedBuffer, %class.TF_ManagedBuffer* %this1, i32 0, i32 1
  %3 = load i64, i64* %len_, align 8
  %deallocator_arg_ = getelementptr inbounds %class.TF_ManagedBuffer, %class.TF_ManagedBuffer* %this1, i32 0, i32 3
  %4 = load i8*, i8** %deallocator_arg_, align 8
  invoke void %1(i8* %call, i64 %3, i8* %4)
          to label %invoke.cont2 unwind label %lpad

invoke.cont2:                                     ; preds = %invoke.cont
  %5 = bitcast %class.TF_ManagedBuffer* %this1 to %"class.tensorflow::TensorBuffer"*
  call void @_ZN10tensorflow12TensorBufferD2Ev(%"class.tensorflow::TensorBuffer"* %5) #5
  ret void

lpad:                                             ; preds = %invoke.cont, %entry
  %6 = landingpad { i8*, i32 }
          catch i8* null
  %7 = extractvalue { i8*, i32 } %6, 0
  store i8* %7, i8** %exn.slot, align 8
  %8 = extractvalue { i8*, i32 } %6, 1
  store i32 %8, i32* %ehselector.slot, align 4
  %9 = bitcast %class.TF_ManagedBuffer* %this1 to %"class.tensorflow::TensorBuffer"*
  call void @_ZN10tensorflow12TensorBufferD2Ev(%"class.tensorflow::TensorBuffer"* %9) #5
  br label %terminate.handler

terminate.handler:                                ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  call void @__clang_call_terminate(i8* %exn) #13
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN16TF_ManagedBufferD0Ev(%class.TF_ManagedBuffer* %this) unnamed_addr #3 comdat align 2 {
entry:
  %this.addr = alloca %class.TF_ManagedBuffer*, align 8
  store %class.TF_ManagedBuffer* %this, %class.TF_ManagedBuffer** %this.addr, align 8
  %this1 = load %class.TF_ManagedBuffer*, %class.TF_ManagedBuffer** %this.addr, align 8
  call void @_ZN16TF_ManagedBufferD2Ev(%class.TF_ManagedBuffer* %this1) #5
  %0 = bitcast %class.TF_ManagedBuffer* %this1 to i8*
  call void @_ZdlPv(i8* %0) #17
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @_ZNK16TF_ManagedBuffer4sizeEv(%class.TF_ManagedBuffer* %this) unnamed_addr #3 comdat align 2 {
entry:
  %this.addr = alloca %class.TF_ManagedBuffer*, align 8
  store %class.TF_ManagedBuffer* %this, %class.TF_ManagedBuffer** %this.addr, align 8
  %this1 = load %class.TF_ManagedBuffer*, %class.TF_ManagedBuffer** %this.addr, align 8
  %len_ = getelementptr inbounds %class.TF_ManagedBuffer, %class.TF_ManagedBuffer* %this1, i32 0, i32 1
  %0 = load i64, i64* %len_, align 8
  ret i64 %0
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %"class.tensorflow::TensorBuffer"* @_ZN16TF_ManagedBuffer11root_bufferEv(%class.TF_ManagedBuffer* %this) unnamed_addr #3 comdat align 2 {
entry:
  %this.addr = alloca %class.TF_ManagedBuffer*, align 8
  store %class.TF_ManagedBuffer* %this, %class.TF_ManagedBuffer** %this.addr, align 8
  %this1 = load %class.TF_ManagedBuffer*, %class.TF_ManagedBuffer** %this.addr, align 8
  %0 = bitcast %class.TF_ManagedBuffer* %this1 to %"class.tensorflow::TensorBuffer"*
  ret %"class.tensorflow::TensorBuffer"* %0
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNK16TF_ManagedBuffer25FillAllocationDescriptionEPN10tensorflow21AllocationDescriptionE(%class.TF_ManagedBuffer* %this, %"class.tensorflow::AllocationDescription"* %0) unnamed_addr #3 comdat align 2 {
entry:
  %this.addr = alloca %class.TF_ManagedBuffer*, align 8
  %.addr = alloca %"class.tensorflow::AllocationDescription"*, align 8
  store %class.TF_ManagedBuffer* %this, %class.TF_ManagedBuffer** %this.addr, align 8
  store %"class.tensorflow::AllocationDescription"* %0, %"class.tensorflow::AllocationDescription"** %.addr, align 8
  %this1 = load %class.TF_ManagedBuffer*, %class.TF_ManagedBuffer** %this.addr, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local zeroext i1 @_ZNK16TF_ManagedBuffer10OwnsMemoryEv(%class.TF_ManagedBuffer* %this) unnamed_addr #3 comdat align 2 {
entry:
  %this.addr = alloca %class.TF_ManagedBuffer*, align 8
  store %class.TF_ManagedBuffer* %this, %class.TF_ManagedBuffer** %this.addr, align 8
  %this1 = load %class.TF_ManagedBuffer*, %class.TF_ManagedBuffer** %this.addr, align 8
  %owns_memory_ = getelementptr inbounds %class.TF_ManagedBuffer, %class.TF_ManagedBuffer* %this1, i32 0, i32 4
  %0 = load i8, i8* %owns_memory_, align 8
  %tobool = trunc i8 %0 to i1
  ret i1 %tobool
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i32 @_ZNK10tensorflow12TensorBuffer13GetMemoryTypeEv(%"class.tensorflow::TensorBuffer"* %this) unnamed_addr #3 comdat align 2 {
entry:
  %this.addr = alloca %"class.tensorflow::TensorBuffer"*, align 8
  store %"class.tensorflow::TensorBuffer"* %this, %"class.tensorflow::TensorBuffer"** %this.addr, align 8
  %this1 = load %"class.tensorflow::TensorBuffer"*, %"class.tensorflow::TensorBuffer"** %this.addr, align 8
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i8* @_ZNK10tensorflow12TensorBuffer4dataEv(%"class.tensorflow::TensorBuffer"* %this) #3 comdat align 2 {
entry:
  %this.addr = alloca %"class.tensorflow::TensorBuffer"*, align 8
  store %"class.tensorflow::TensorBuffer"* %this, %"class.tensorflow::TensorBuffer"** %this.addr, align 8
  %this1 = load %"class.tensorflow::TensorBuffer"*, %"class.tensorflow::TensorBuffer"** %this.addr, align 8
  %data_ = getelementptr inbounds %"class.tensorflow::TensorBuffer", %"class.tensorflow::TensorBuffer"* %this1, i32 0, i32 1
  %0 = load i8*, i8** %data_, align 8
  ret i8* %0
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow12TensorBufferD2Ev(%"class.tensorflow::TensorBuffer"* %this) unnamed_addr #3 comdat align 2 {
entry:
  %this.addr = alloca %"class.tensorflow::TensorBuffer"*, align 8
  store %"class.tensorflow::TensorBuffer"* %this, %"class.tensorflow::TensorBuffer"** %this.addr, align 8
  %this1 = load %"class.tensorflow::TensorBuffer"*, %"class.tensorflow::TensorBuffer"** %this.addr, align 8
  %0 = bitcast %"class.tensorflow::TensorBuffer"* %this1 to %"class.tensorflow::core::RefCounted"*
  call void @_ZN10tensorflow4core10RefCountedD2Ev(%"class.tensorflow::core::RefCounted"* %0) #5
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow4core10RefCountedD2Ev(%"class.tensorflow::core::RefCounted"* %this) unnamed_addr #3 comdat align 2 {
entry:
  %this.addr = alloca %"class.tensorflow::core::RefCounted"*, align 8
  store %"class.tensorflow::core::RefCounted"* %this, %"class.tensorflow::core::RefCounted"** %this.addr, align 8
  %this1 = load %"class.tensorflow::core::RefCounted"*, %"class.tensorflow::core::RefCounted"** %this.addr, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow4core10RefCountedC2Ev(%"class.tensorflow::core::RefCounted"* %this) unnamed_addr #3 comdat align 2 {
entry:
  %this.addr = alloca %"class.tensorflow::core::RefCounted"*, align 8
  store %"class.tensorflow::core::RefCounted"* %this, %"class.tensorflow::core::RefCounted"** %this.addr, align 8
  %this1 = load %"class.tensorflow::core::RefCounted"*, %"class.tensorflow::core::RefCounted"** %this.addr, align 8
  %0 = bitcast %"class.tensorflow::core::RefCounted"* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [4 x i8*] }, { [4 x i8*] }* @_ZTVN10tensorflow4core10RefCountedE, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %0, align 8
  %ref_count_ = getelementptr inbounds %"class.tensorflow::core::RefCounted", %"class.tensorflow::core::RefCounted"* %this1, i32 0, i32 1
  call void @_ZNSt6atomicImEC2Em(%"struct.std::atomic"* %ref_count_, i64 1) #5
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt6atomicImEC2Em(%"struct.std::atomic"* %this, i64 %__i) unnamed_addr #3 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::atomic"*, align 8
  %__i.addr = alloca i64, align 8
  store %"struct.std::atomic"* %this, %"struct.std::atomic"** %this.addr, align 8
  store i64 %__i, i64* %__i.addr, align 8
  %this1 = load %"struct.std::atomic"*, %"struct.std::atomic"** %this.addr, align 8
  %0 = bitcast %"struct.std::atomic"* %this1 to %"struct.std::__atomic_base"*
  %1 = load i64, i64* %__i.addr, align 8
  call void @_ZNSt13__atomic_baseImEC2Em(%"struct.std::__atomic_base"* %0, i64 %1) #5
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt13__atomic_baseImEC2Em(%"struct.std::__atomic_base"* %this, i64 %__i) unnamed_addr #3 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::__atomic_base"*, align 8
  %__i.addr = alloca i64, align 8
  store %"struct.std::__atomic_base"* %this, %"struct.std::__atomic_base"** %this.addr, align 8
  store i64 %__i, i64* %__i.addr, align 8
  %this1 = load %"struct.std::__atomic_base"*, %"struct.std::__atomic_base"** %this.addr, align 8
  %_M_i = getelementptr inbounds %"struct.std::__atomic_base", %"struct.std::__atomic_base"* %this1, i32 0, i32 0
  %0 = load i64, i64* %__i.addr, align 8
  store i64 %0, i64* %_M_i, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow4core10RefCountedD0Ev(%"class.tensorflow::core::RefCounted"* %this) unnamed_addr #3 comdat align 2 {
entry:
  %this.addr = alloca %"class.tensorflow::core::RefCounted"*, align 8
  store %"class.tensorflow::core::RefCounted"* %this, %"class.tensorflow::core::RefCounted"** %this.addr, align 8
  %this1 = load %"class.tensorflow::core::RefCounted"*, %"class.tensorflow::core::RefCounted"** %this.addr, align 8
  call void @_ZN10tensorflow4core10RefCountedD2Ev(%"class.tensorflow::core::RefCounted"* %this1) #5
  %0 = bitcast %"class.tensorflow::core::RefCounted"* %this1 to i8*
  call void @_ZdlPv(i8* %0) #17
  ret void
}

; Function Attrs: noinline optnone uwtable
define dso_local %struct.TF_Tensor* @TF_NewTensor(i32 %dtype, i64* %dims, i32 %num_dims, i8* %data, i64 %len, void (i8*, i64, i8*)* %deallocator, i8* %deallocator_arg) #4 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
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
  store i64* %dims, i64** %dims.addr, align 8
  store i32 %num_dims, i32* %num_dims.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store void (i8*, i64, i8*)* %deallocator, void (i8*, i64, i8*)** %deallocator.addr, align 8
  store i8* %deallocator_arg, i8** %deallocator_arg.addr, align 8
  store %class.TF_ManagedBuffer* null, %class.TF_ManagedBuffer** %buf, align 8
  %0 = load i32, i32* %dtype.addr, align 4
  %cmp = icmp ne i32 %0, 7
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %dtype.addr, align 4
  %cmp1 = icmp ne i32 %1, 20
  br i1 %cmp1, label %land.lhs.true2, label %land.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %2 = load i32, i32* %dtype.addr, align 4
  %call = call zeroext i1 @_ZN10tensorflow20DataTypeCanUseMemcpyE8DataType(i32 %2)
  br i1 %call, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true2
  %3 = load i8*, i8** %data.addr, align 8
  %4 = ptrtoint i8* %3 to i64
  store i32 1, i32* %ref.tmp, align 4
  store i32 64, i32* %ref.tmp3, align 4
  %call4 = call nonnull align 4 dereferenceable(4) i32* @_ZSt3maxIiERKT_S2_S2_(i32* nonnull align 4 dereferenceable(4) %ref.tmp, i32* nonnull align 4 dereferenceable(4) %ref.tmp3)
  %5 = load i32, i32* %call4, align 4
  %conv = sext i32 %5 to i64
  call void @klee_div_zero_check(i64 %conv)
  %rem = srem i64 %4, %conv, !klee.check.div !14
  %cmp5 = icmp ne i64 %rem, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true2, %land.lhs.true, %entry
  %6 = phi i1 [ false, %land.lhs.true2 ], [ false, %land.lhs.true ], [ false, %entry ], [ %cmp5, %land.rhs ]
  br i1 %6, label %if.then, label %if.else

if.then:                                          ; preds = %land.end
  %call6 = call noalias nonnull i8* @_Znwm(i64 56) #16
  %7 = bitcast i8* %call6 to %class.TF_ManagedBuffer*
  %8 = load i64, i64* %len.addr, align 8
  %call7 = invoke i8* @_ZN10tensorflow15allocate_tensorEPKcm(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1.10, i64 0, i64 0), i64 %8)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %if.then
  %9 = load i64, i64* %len.addr, align 8
  invoke void @_ZN16TF_ManagedBufferC2EPvmPFvS0_mS0_ES0_b(%class.TF_ManagedBuffer* %7, i8* %call7, i64 %9, void (i8*, i64, i8*)* @_ZN10tensorflow17deallocate_bufferEPvmS0_, i8* null, i1 zeroext true)
          to label %invoke.cont8 unwind label %lpad

invoke.cont8:                                     ; preds = %invoke.cont
  store %class.TF_ManagedBuffer* %7, %class.TF_ManagedBuffer** %buf, align 8
  %10 = load %class.TF_ManagedBuffer*, %class.TF_ManagedBuffer** %buf, align 8
  %11 = bitcast %class.TF_ManagedBuffer* %10 to %"class.tensorflow::TensorBuffer"*
  %call9 = call i8* @_ZNK10tensorflow12TensorBuffer4dataEv(%"class.tensorflow::TensorBuffer"* %11)
  %12 = load i8*, i8** %data.addr, align 8
  %13 = load i64, i64* %len.addr, align 8
  %14 = call i8* @memcpy(i8* %call9, i8* %12, i64 %13)
  %15 = load void (i8*, i64, i8*)*, void (i8*, i64, i8*)** %deallocator.addr, align 8
  %16 = load i8*, i8** %data.addr, align 8
  %17 = load i64, i64* %len.addr, align 8
  %18 = load i8*, i8** %deallocator_arg.addr, align 8
  call void %15(i8* %16, i64 %17, i8* %18)
  br label %if.end

lpad:                                             ; preds = %invoke.cont, %if.then
  %19 = landingpad { i8*, i32 }
          cleanup
  %20 = extractvalue { i8*, i32 } %19, 0
  store i8* %20, i8** %exn.slot, align 8
  %21 = extractvalue { i8*, i32 } %19, 1
  store i32 %21, i32* %ehselector.slot, align 4
  call void @_ZdlPv(i8* %call6) #17
  br label %eh.resume

if.else:                                          ; preds = %land.end
  %call10 = call noalias nonnull i8* @_Znwm(i64 56) #16
  %22 = bitcast i8* %call10 to %class.TF_ManagedBuffer*
  %23 = load i8*, i8** %data.addr, align 8
  %24 = load i64, i64* %len.addr, align 8
  %25 = load void (i8*, i64, i8*)*, void (i8*, i64, i8*)** %deallocator.addr, align 8
  %26 = load i8*, i8** %deallocator_arg.addr, align 8
  invoke void @_ZN16TF_ManagedBufferC2EPvmPFvS0_mS0_ES0_b(%class.TF_ManagedBuffer* %22, i8* %23, i64 %24, void (i8*, i64, i8*)* %25, i8* %26, i1 zeroext false)
          to label %invoke.cont12 unwind label %lpad11

invoke.cont12:                                    ; preds = %if.else
  store %class.TF_ManagedBuffer* %22, %class.TF_ManagedBuffer** %buf, align 8
  br label %if.end

lpad11:                                           ; preds = %if.else
  %27 = landingpad { i8*, i32 }
          cleanup
  %28 = extractvalue { i8*, i32 } %27, 0
  store i8* %28, i8** %exn.slot, align 8
  %29 = extractvalue { i8*, i32 } %27, 1
  store i32 %29, i32* %ehselector.slot, align 4
  call void @_ZdlPv(i8* %call10) #17
  br label %eh.resume

if.end:                                           ; preds = %invoke.cont12, %invoke.cont8
  %30 = load %class.TF_ManagedBuffer*, %class.TF_ManagedBuffer** %buf, align 8
  %31 = load i32, i32* %dtype.addr, align 4
  %32 = load i64*, i64** %dims.addr, align 8
  %33 = load i32, i32* %num_dims.addr, align 4
  %34 = load i64, i64* %len.addr, align 8
  %call13 = call %struct.TF_Tensor* @_ZN12_GLOBAL__N_112CreateTensorEP16TF_ManagedBuffer11TF_DataTypePKlim(%class.TF_ManagedBuffer* %30, i32 %31, i64* %32, i32 %33, i64 %34)
  ret %struct.TF_Tensor* %call13

eh.resume:                                        ; preds = %lpad11, %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val14 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val14
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local zeroext i1 @_ZN10tensorflow20DataTypeCanUseMemcpyE8DataType(i32 %dt) #3 comdat {
entry:
  %retval = alloca i1, align 1
  %dt.addr = alloca i32, align 4
  store i32 %dt, i32* %dt.addr, align 4
  %0 = load i32, i32* %dt.addr, align 4
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
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry
  store i1 true, i1* %retval, align 1
  br label %return

sw.default:                                       ; preds = %entry
  store i1 false, i1* %retval, align 1
  br label %return

return:                                           ; preds = %sw.default, %sw.bb
  %1 = load i1, i1* %retval, align 1
  ret i1 %1
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 4 dereferenceable(4) i32* @_ZSt3maxIiERKT_S2_S2_(i32* nonnull align 4 dereferenceable(4) %__a, i32* nonnull align 4 dereferenceable(4) %__b) #3 comdat {
entry:
  %retval = alloca i32*, align 8
  %__a.addr = alloca i32*, align 8
  %__b.addr = alloca i32*, align 8
  store i32* %__a, i32** %__a.addr, align 8
  store i32* %__b, i32** %__b.addr, align 8
  %0 = load i32*, i32** %__a.addr, align 8
  %1 = load i32, i32* %0, align 4
  %2 = load i32*, i32** %__b.addr, align 8
  %3 = load i32, i32* %2, align 4
  %cmp = icmp slt i32 %1, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i32*, i32** %__b.addr, align 8
  store i32* %4, i32** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i32*, i32** %__a.addr, align 8
  store i32* %5, i32** %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i32*, i32** %retval, align 8
  ret i32* %6
}

; Function Attrs: noinline optnone uwtable
define dso_local %struct.TF_Tensor* @TF_TensorMaybeMove(%struct.TF_Tensor* %t) #4 {
entry:
  %t.addr = alloca %struct.TF_Tensor*, align 8
  store %struct.TF_Tensor* %t, %struct.TF_Tensor** %t.addr, align 8
  %0 = load %struct.TF_Tensor*, %struct.TF_Tensor** %t.addr, align 8
  %tensor = getelementptr inbounds %struct.TF_Tensor, %struct.TF_Tensor* %0, i32 0, i32 0
  %1 = load %"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"** %tensor, align 8
  %2 = bitcast %"class.tensorflow::AbstractTensorInterface"* %1 to i1 (%"class.tensorflow::AbstractTensorInterface"*)***
  %vtable = load i1 (%"class.tensorflow::AbstractTensorInterface"*)**, i1 (%"class.tensorflow::AbstractTensorInterface"*)*** %2, align 8
  %vfn = getelementptr inbounds i1 (%"class.tensorflow::AbstractTensorInterface"*)*, i1 (%"class.tensorflow::AbstractTensorInterface"*)** %vtable, i64 8
  %3 = load i1 (%"class.tensorflow::AbstractTensorInterface"*)*, i1 (%"class.tensorflow::AbstractTensorInterface"*)** %vfn, align 8
  %call = call zeroext i1 %3(%"class.tensorflow::AbstractTensorInterface"* %1)
  br i1 %call, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %4 = load %struct.TF_Tensor*, %struct.TF_Tensor** %t.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.TF_Tensor* [ %4, %cond.true ], [ null, %cond.false ]
  ret %struct.TF_Tensor* %cond
}

; Function Attrs: noinline optnone uwtable
define dso_local void @TF_DeleteTensor(%struct.TF_Tensor* %t) #4 {
entry:
  %t.addr = alloca %struct.TF_Tensor*, align 8
  store %struct.TF_Tensor* %t, %struct.TF_Tensor** %t.addr, align 8
  %0 = load %struct.TF_Tensor*, %struct.TF_Tensor** %t.addr, align 8
  %cmp = icmp eq %struct.TF_Tensor* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %delete.end

if.end:                                           ; preds = %entry
  %1 = load %struct.TF_Tensor*, %struct.TF_Tensor** %t.addr, align 8
  %tensor = getelementptr inbounds %struct.TF_Tensor, %struct.TF_Tensor* %1, i32 0, i32 0
  %2 = load %"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"** %tensor, align 8
  %tobool = icmp ne %"class.tensorflow::AbstractTensorInterface"* %2, null
  br i1 %tobool, label %if.then1, label %if.end3

if.then1:                                         ; preds = %if.end
  %3 = load %struct.TF_Tensor*, %struct.TF_Tensor** %t.addr, align 8
  %tensor2 = getelementptr inbounds %struct.TF_Tensor, %struct.TF_Tensor* %3, i32 0, i32 0
  %4 = load %"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"** %tensor2, align 8
  %5 = bitcast %"class.tensorflow::AbstractTensorInterface"* %4 to void (%"class.tensorflow::AbstractTensorInterface"*)***
  %vtable = load void (%"class.tensorflow::AbstractTensorInterface"*)**, void (%"class.tensorflow::AbstractTensorInterface"*)*** %5, align 8
  %vfn = getelementptr inbounds void (%"class.tensorflow::AbstractTensorInterface"*)*, void (%"class.tensorflow::AbstractTensorInterface"*)** %vtable, i64 0
  %6 = load void (%"class.tensorflow::AbstractTensorInterface"*)*, void (%"class.tensorflow::AbstractTensorInterface"*)** %vfn, align 8
  call void %6(%"class.tensorflow::AbstractTensorInterface"* %4)
  br label %if.end3

if.end3:                                          ; preds = %if.then1, %if.end
  %7 = load %struct.TF_Tensor*, %struct.TF_Tensor** %t.addr, align 8
  %isnull = icmp eq %struct.TF_Tensor* %7, null
  br i1 %isnull, label %delete.end, label %delete.notnull

delete.notnull:                                   ; preds = %if.end3
  %8 = bitcast %struct.TF_Tensor* %7 to i8*
  call void @_ZdlPv(i8* %8) #17
  br label %delete.end

delete.end:                                       ; preds = %if.then, %delete.notnull, %if.end3
  ret void
}

; Function Attrs: noinline optnone uwtable
define dso_local i32 @TF_TensorType(%struct.TF_Tensor* %t) #4 {
entry:
  %t.addr = alloca %struct.TF_Tensor*, align 8
  store %struct.TF_Tensor* %t, %struct.TF_Tensor** %t.addr, align 8
  %0 = load %struct.TF_Tensor*, %struct.TF_Tensor** %t.addr, align 8
  %tensor = getelementptr inbounds %struct.TF_Tensor, %struct.TF_Tensor* %0, i32 0, i32 0
  %1 = load %"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"** %tensor, align 8
  %2 = bitcast %"class.tensorflow::AbstractTensorInterface"* %1 to i32 (%"class.tensorflow::AbstractTensorInterface"*)***
  %vtable = load i32 (%"class.tensorflow::AbstractTensorInterface"*)**, i32 (%"class.tensorflow::AbstractTensorInterface"*)*** %2, align 8
  %vfn = getelementptr inbounds i32 (%"class.tensorflow::AbstractTensorInterface"*)*, i32 (%"class.tensorflow::AbstractTensorInterface"*)** %vtable, i64 1
  %3 = load i32 (%"class.tensorflow::AbstractTensorInterface"*)*, i32 (%"class.tensorflow::AbstractTensorInterface"*)** %vfn, align 8
  %call = call i32 %3(%"class.tensorflow::AbstractTensorInterface"* %1)
  ret i32 %call
}

; Function Attrs: noinline optnone uwtable
define dso_local i32 @TF_NumDims(%struct.TF_Tensor* %t) #4 {
entry:
  %t.addr = alloca %struct.TF_Tensor*, align 8
  store %struct.TF_Tensor* %t, %struct.TF_Tensor** %t.addr, align 8
  %0 = load %struct.TF_Tensor*, %struct.TF_Tensor** %t.addr, align 8
  %tensor = getelementptr inbounds %struct.TF_Tensor, %struct.TF_Tensor* %0, i32 0, i32 0
  %1 = load %"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"** %tensor, align 8
  %2 = bitcast %"class.tensorflow::AbstractTensorInterface"* %1 to i32 (%"class.tensorflow::AbstractTensorInterface"*)***
  %vtable = load i32 (%"class.tensorflow::AbstractTensorInterface"*)**, i32 (%"class.tensorflow::AbstractTensorInterface"*)*** %2, align 8
  %vfn = getelementptr inbounds i32 (%"class.tensorflow::AbstractTensorInterface"*)*, i32 (%"class.tensorflow::AbstractTensorInterface"*)** %vtable, i64 2
  %3 = load i32 (%"class.tensorflow::AbstractTensorInterface"*)*, i32 (%"class.tensorflow::AbstractTensorInterface"*)** %vfn, align 8
  %call = call i32 %3(%"class.tensorflow::AbstractTensorInterface"* %1)
  ret i32 %call
}

; Function Attrs: noinline optnone uwtable
define dso_local i64 @TF_Dim(%struct.TF_Tensor* %t, i32 %dim_index) #4 {
entry:
  %t.addr = alloca %struct.TF_Tensor*, align 8
  %dim_index.addr = alloca i32, align 4
  store %struct.TF_Tensor* %t, %struct.TF_Tensor** %t.addr, align 8
  store i32 %dim_index, i32* %dim_index.addr, align 4
  %0 = load %struct.TF_Tensor*, %struct.TF_Tensor** %t.addr, align 8
  %tensor = getelementptr inbounds %struct.TF_Tensor, %struct.TF_Tensor* %0, i32 0, i32 0
  %1 = load %"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"** %tensor, align 8
  %2 = load i32, i32* %dim_index.addr, align 4
  %3 = bitcast %"class.tensorflow::AbstractTensorInterface"* %1 to i64 (%"class.tensorflow::AbstractTensorInterface"*, i32)***
  %vtable = load i64 (%"class.tensorflow::AbstractTensorInterface"*, i32)**, i64 (%"class.tensorflow::AbstractTensorInterface"*, i32)*** %3, align 8
  %vfn = getelementptr inbounds i64 (%"class.tensorflow::AbstractTensorInterface"*, i32)*, i64 (%"class.tensorflow::AbstractTensorInterface"*, i32)** %vtable, i64 3
  %4 = load i64 (%"class.tensorflow::AbstractTensorInterface"*, i32)*, i64 (%"class.tensorflow::AbstractTensorInterface"*, i32)** %vfn, align 8
  %call = call i64 %4(%"class.tensorflow::AbstractTensorInterface"* %1, i32 %2)
  ret i64 %call
}

; Function Attrs: noinline optnone uwtable
define dso_local i64 @TF_TensorByteSize(%struct.TF_Tensor* %t) #4 {
entry:
  %t.addr = alloca %struct.TF_Tensor*, align 8
  store %struct.TF_Tensor* %t, %struct.TF_Tensor** %t.addr, align 8
  %0 = load %struct.TF_Tensor*, %struct.TF_Tensor** %t.addr, align 8
  %tensor = getelementptr inbounds %struct.TF_Tensor, %struct.TF_Tensor* %0, i32 0, i32 0
  %1 = load %"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"** %tensor, align 8
  %2 = bitcast %"class.tensorflow::AbstractTensorInterface"* %1 to i64 (%"class.tensorflow::AbstractTensorInterface"*)***
  %vtable = load i64 (%"class.tensorflow::AbstractTensorInterface"*)**, i64 (%"class.tensorflow::AbstractTensorInterface"*)*** %2, align 8
  %vfn = getelementptr inbounds i64 (%"class.tensorflow::AbstractTensorInterface"*)*, i64 (%"class.tensorflow::AbstractTensorInterface"*)** %vtable, i64 5
  %3 = load i64 (%"class.tensorflow::AbstractTensorInterface"*)*, i64 (%"class.tensorflow::AbstractTensorInterface"*)** %vfn, align 8
  %call = call i64 %3(%"class.tensorflow::AbstractTensorInterface"* %1)
  ret i64 %call
}

; Function Attrs: noinline optnone uwtable
define dso_local i8* @TF_TensorData(%struct.TF_Tensor* %t) #4 {
entry:
  %t.addr = alloca %struct.TF_Tensor*, align 8
  store %struct.TF_Tensor* %t, %struct.TF_Tensor** %t.addr, align 8
  %0 = load %struct.TF_Tensor*, %struct.TF_Tensor** %t.addr, align 8
  %tensor = getelementptr inbounds %struct.TF_Tensor, %struct.TF_Tensor* %0, i32 0, i32 0
  %1 = load %"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"** %tensor, align 8
  %2 = bitcast %"class.tensorflow::AbstractTensorInterface"* %1 to i8* (%"class.tensorflow::AbstractTensorInterface"*)***
  %vtable = load i8* (%"class.tensorflow::AbstractTensorInterface"*)**, i8* (%"class.tensorflow::AbstractTensorInterface"*)*** %2, align 8
  %vfn = getelementptr inbounds i8* (%"class.tensorflow::AbstractTensorInterface"*)*, i8* (%"class.tensorflow::AbstractTensorInterface"*)** %vtable, i64 6
  %3 = load i8* (%"class.tensorflow::AbstractTensorInterface"*)*, i8* (%"class.tensorflow::AbstractTensorInterface"*)** %vfn, align 8
  %call = call i8* %3(%"class.tensorflow::AbstractTensorInterface"* %1)
  ret i8* %call
}

; Function Attrs: noinline optnone uwtable
define dso_local i64 @TF_TensorElementCount(%struct.TF_Tensor* %t) #4 {
entry:
  %t.addr = alloca %struct.TF_Tensor*, align 8
  %result = alloca i64, align 8
  %rank = alloca i32, align 4
  %dim = alloca i32, align 4
  store %struct.TF_Tensor* %t, %struct.TF_Tensor** %t.addr, align 8
  store i64 1, i64* %result, align 8
  %0 = load %struct.TF_Tensor*, %struct.TF_Tensor** %t.addr, align 8
  %call = call i32 @TF_NumDims(%struct.TF_Tensor* %0)
  store i32 %call, i32* %rank, align 4
  store i32 0, i32* %dim, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %dim, align 4
  %2 = load i32, i32* %rank, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.TF_Tensor*, %struct.TF_Tensor** %t.addr, align 8
  %4 = load i32, i32* %dim, align 4
  %call1 = call i64 @TF_Dim(%struct.TF_Tensor* %3, i32 %4)
  %5 = load i64, i64* %result, align 8
  %mul = mul nsw i64 %5, %call1
  store i64 %mul, i64* %result, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %dim, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %dim, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load i64, i64* %result, align 8
  ret i64 %7
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow12TensorBufferD0Ev(%"class.tensorflow::TensorBuffer"* %this) unnamed_addr #3 comdat align 2 {
entry:
  %this.addr = alloca %"class.tensorflow::TensorBuffer"*, align 8
  store %"class.tensorflow::TensorBuffer"* %this, %"class.tensorflow::TensorBuffer"** %this.addr, align 8
  %this1 = load %"class.tensorflow::TensorBuffer"*, %"class.tensorflow::TensorBuffer"** %this.addr, align 8
  call void @abort()
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @_ZNK10tensorflow12TensorBuffer17GetAllocatedBytesEPm(%"class.tensorflow::TensorBuffer"* %this, i64* %out_bytes) unnamed_addr #3 align 2 {
entry:
  %this.addr = alloca %"class.tensorflow::TensorBuffer"*, align 8
  %out_bytes.addr = alloca i64*, align 8
  store %"class.tensorflow::TensorBuffer"* %this, %"class.tensorflow::TensorBuffer"** %this.addr, align 8
  store i64* %out_bytes, i64** %out_bytes.addr, align 8
  %this1 = load %"class.tensorflow::TensorBuffer"*, %"class.tensorflow::TensorBuffer"** %this.addr, align 8
  ret i1 true
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local zeroext i1 @_ZNK10tensorflow12TensorBuffer10OwnsMemoryEv(%"class.tensorflow::TensorBuffer"* %this) unnamed_addr #3 comdat align 2 {
entry:
  %this.addr = alloca %"class.tensorflow::TensorBuffer"*, align 8
  store %"class.tensorflow::TensorBuffer"* %this, %"class.tensorflow::TensorBuffer"** %this.addr, align 8
  %this1 = load %"class.tensorflow::TensorBuffer"*, %"class.tensorflow::TensorBuffer"** %this.addr, align 8
  ret i1 true
}

; Function Attrs: noinline optnone uwtable
define dso_local void @_ZN10tensorflow6TensorC2E8DataTypeRKNS_11TensorShapeEPNS_12TensorBufferE(%"class.tensorflow::Tensor"* %this, i32 %type, %"class.tensorflow::TensorShape"* nonnull align 8 dereferenceable(29) %shape, %"class.tensorflow::TensorBuffer"* %buf) unnamed_addr #4 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.tensorflow::Tensor"*, align 8
  %type.addr = alloca i32, align 4
  %shape.addr = alloca %"class.tensorflow::TensorShape"*, align 8
  %buf.addr = alloca %"class.tensorflow::TensorBuffer"*, align 8
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  store %"class.tensorflow::Tensor"* %this, %"class.tensorflow::Tensor"** %this.addr, align 8
  store i32 %type, i32* %type.addr, align 4
  store %"class.tensorflow::TensorShape"* %shape, %"class.tensorflow::TensorShape"** %shape.addr, align 8
  store %"class.tensorflow::TensorBuffer"* %buf, %"class.tensorflow::TensorBuffer"** %buf.addr, align 8
  %this1 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %this.addr, align 8
  %shape_ = getelementptr inbounds %"class.tensorflow::Tensor", %"class.tensorflow::Tensor"* %this1, i32 0, i32 0
  %0 = load %"class.tensorflow::TensorShape"*, %"class.tensorflow::TensorShape"** %shape.addr, align 8
  call void @_ZN10tensorflow11TensorShapeC2ERKS0_(%"class.tensorflow::TensorShape"* %shape_, %"class.tensorflow::TensorShape"* nonnull align 8 dereferenceable(29) %0)
  %buf_ = getelementptr inbounds %"class.tensorflow::Tensor", %"class.tensorflow::Tensor"* %this1, i32 0, i32 1
  %1 = load %"class.tensorflow::TensorBuffer"*, %"class.tensorflow::TensorBuffer"** %buf.addr, align 8
  store %"class.tensorflow::TensorBuffer"* %1, %"class.tensorflow::TensorBuffer"** %buf_, align 8
  %2 = load i32, i32* %type.addr, align 4
  invoke void @_ZN10tensorflow6Tensor9set_dtypeE8DataType(%"class.tensorflow::Tensor"* %this1, i32 %2)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %3 = load %"class.tensorflow::TensorBuffer"*, %"class.tensorflow::TensorBuffer"** %buf.addr, align 8
  %4 = bitcast %"class.tensorflow::TensorBuffer"* %3 to %"class.tensorflow::core::RefCounted"*
  invoke void @_ZN10tensorflow12_GLOBAL__N_112RefIfNonNullEPNS_4core10RefCountedE(%"class.tensorflow::core::RefCounted"* %4)
          to label %invoke.cont2 unwind label %lpad

invoke.cont2:                                     ; preds = %invoke.cont
  ret void

lpad:                                             ; preds = %invoke.cont, %entry
  %5 = landingpad { i8*, i32 }
          cleanup
  %6 = extractvalue { i8*, i32 } %5, 0
  store i8* %6, i8** %exn.slot, align 8
  %7 = extractvalue { i8*, i32 } %5, 1
  store i32 %7, i32* %ehselector.slot, align 4
  call void @_ZN10tensorflow11TensorShapeD2Ev(%"class.tensorflow::TensorShape"* %shape_) #5
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val3 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val3
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow11TensorShapeC2ERKS0_(%"class.tensorflow::TensorShape"* %this, %"class.tensorflow::TensorShape"* nonnull align 8 dereferenceable(29) %0) unnamed_addr #4 comdat align 2 {
entry:
  %this.addr = alloca %"class.tensorflow::TensorShape"*, align 8
  %.addr = alloca %"class.tensorflow::TensorShape"*, align 8
  store %"class.tensorflow::TensorShape"* %this, %"class.tensorflow::TensorShape"** %this.addr, align 8
  store %"class.tensorflow::TensorShape"* %0, %"class.tensorflow::TensorShape"** %.addr, align 8
  %this1 = load %"class.tensorflow::TensorShape"*, %"class.tensorflow::TensorShape"** %this.addr, align 8
  %dims_ = getelementptr inbounds %"class.tensorflow::TensorShape", %"class.tensorflow::TensorShape"* %this1, i32 0, i32 0
  %1 = load %"class.tensorflow::TensorShape"*, %"class.tensorflow::TensorShape"** %.addr, align 8
  %dims_2 = getelementptr inbounds %"class.tensorflow::TensorShape", %"class.tensorflow::TensorShape"* %1, i32 0, i32 0
  call void @_ZNSt6vectorIlSaIlEEC2ERKS1_(%"class.std::vector"* %dims_, %"class.std::vector"* nonnull align 8 dereferenceable(24) %dims_2)
  %dtype_ = getelementptr inbounds %"class.tensorflow::TensorShape", %"class.tensorflow::TensorShape"* %this1, i32 0, i32 1
  %2 = load %"class.tensorflow::TensorShape"*, %"class.tensorflow::TensorShape"** %.addr, align 8
  %dtype_3 = getelementptr inbounds %"class.tensorflow::TensorShape", %"class.tensorflow::TensorShape"* %2, i32 0, i32 1
  %3 = bitcast i32* %dtype_ to i8*
  %4 = bitcast i32* %dtype_3 to i8*
  %5 = call i8* @memcpy(i8* %3, i8* %4, i64 4)
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow6Tensor9set_dtypeE8DataType(%"class.tensorflow::Tensor"* %this, i32 %t) #4 comdat align 2 {
entry:
  %this.addr = alloca %"class.tensorflow::Tensor"*, align 8
  %t.addr = alloca i32, align 4
  store %"class.tensorflow::Tensor"* %this, %"class.tensorflow::Tensor"** %this.addr, align 8
  store i32 %t, i32* %t.addr, align 4
  %this1 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %this.addr, align 8
  %shape_ = getelementptr inbounds %"class.tensorflow::Tensor", %"class.tensorflow::Tensor"* %this1, i32 0, i32 0
  %0 = load i32, i32* %t.addr, align 4
  call void @_ZN10tensorflow11TensorShape13set_data_typeE8DataType(%"class.tensorflow::TensorShape"* %shape_, i32 %0)
  ret void
}

; Function Attrs: noinline optnone uwtable
define internal void @_ZN10tensorflow12_GLOBAL__N_112RefIfNonNullEPNS_4core10RefCountedE(%"class.tensorflow::core::RefCounted"* %buf) #4 {
entry:
  %buf.addr = alloca %"class.tensorflow::core::RefCounted"*, align 8
  store %"class.tensorflow::core::RefCounted"* %buf, %"class.tensorflow::core::RefCounted"** %buf.addr, align 8
  %0 = load %"class.tensorflow::core::RefCounted"*, %"class.tensorflow::core::RefCounted"** %buf.addr, align 8
  %tobool = icmp ne %"class.tensorflow::core::RefCounted"* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %"class.tensorflow::core::RefCounted"*, %"class.tensorflow::core::RefCounted"** %buf.addr, align 8
  call void @_ZNK10tensorflow4core10RefCounted3RefEv(%"class.tensorflow::core::RefCounted"* %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNK10tensorflow4core10RefCounted3RefEv(%"class.tensorflow::core::RefCounted"* %this) #3 comdat align 2 {
entry:
  %this.addr.i = alloca %"struct.std::__atomic_base"*, align 8
  %__i.addr.i = alloca i64, align 8
  %__m.addr.i = alloca i32, align 4
  %.atomictmp.i = alloca i64, align 8
  %atomic-temp.i = alloca i64, align 8
  %this.addr = alloca %"class.tensorflow::core::RefCounted"*, align 8
  store %"class.tensorflow::core::RefCounted"* %this, %"class.tensorflow::core::RefCounted"** %this.addr, align 8
  %this1 = load %"class.tensorflow::core::RefCounted"*, %"class.tensorflow::core::RefCounted"** %this.addr, align 8
  %ref_count_ = getelementptr inbounds %"class.tensorflow::core::RefCounted", %"class.tensorflow::core::RefCounted"* %this1, i32 0, i32 1
  %0 = bitcast %"struct.std::atomic"* %ref_count_ to %"struct.std::__atomic_base"*
  store %"struct.std::__atomic_base"* %0, %"struct.std::__atomic_base"** %this.addr.i, align 8
  store i64 1, i64* %__i.addr.i, align 8
  store i32 0, i32* %__m.addr.i, align 4
  %this1.i = load %"struct.std::__atomic_base"*, %"struct.std::__atomic_base"** %this.addr.i, align 8
  %_M_i.i = getelementptr inbounds %"struct.std::__atomic_base", %"struct.std::__atomic_base"* %this1.i, i32 0, i32 0
  %1 = load i32, i32* %__m.addr.i, align 4
  %2 = load i64, i64* %__i.addr.i, align 8
  store i64 %2, i64* %.atomictmp.i, align 8
  switch i32 %1, label %monotonic.i [
    i32 1, label %acquire.i
    i32 2, label %acquire.i
    i32 3, label %release.i
    i32 4, label %acqrel.i
    i32 5, label %seqcst.i
  ]

monotonic.i:                                      ; preds = %entry
  %3 = load i64, i64* %.atomictmp.i, align 8
  %4 = load i64, i64* %_M_i.i, align 8
  %5 = add i64 %4, %3
  store i64 %5, i64* %_M_i.i, align 8
  store i64 %4, i64* %atomic-temp.i, align 8
  br label %_ZNSt13__atomic_baseImE9fetch_addEmSt12memory_order.exit

acquire.i:                                        ; preds = %entry, %entry
  %6 = load i64, i64* %.atomictmp.i, align 8
  %7 = load i64, i64* %_M_i.i, align 8
  %8 = add i64 %7, %6
  store i64 %8, i64* %_M_i.i, align 8
  store i64 %7, i64* %atomic-temp.i, align 8
  br label %_ZNSt13__atomic_baseImE9fetch_addEmSt12memory_order.exit

release.i:                                        ; preds = %entry
  %9 = load i64, i64* %.atomictmp.i, align 8
  %10 = load i64, i64* %_M_i.i, align 8
  %11 = add i64 %10, %9
  store i64 %11, i64* %_M_i.i, align 8
  store i64 %10, i64* %atomic-temp.i, align 8
  br label %_ZNSt13__atomic_baseImE9fetch_addEmSt12memory_order.exit

acqrel.i:                                         ; preds = %entry
  %12 = load i64, i64* %.atomictmp.i, align 8
  %13 = load i64, i64* %_M_i.i, align 8
  %14 = add i64 %13, %12
  store i64 %14, i64* %_M_i.i, align 8
  store i64 %13, i64* %atomic-temp.i, align 8
  br label %_ZNSt13__atomic_baseImE9fetch_addEmSt12memory_order.exit

seqcst.i:                                         ; preds = %entry
  %15 = load i64, i64* %.atomictmp.i, align 8
  %16 = load i64, i64* %_M_i.i, align 8
  %17 = add i64 %16, %15
  store i64 %17, i64* %_M_i.i, align 8
  store i64 %16, i64* %atomic-temp.i, align 8
  br label %_ZNSt13__atomic_baseImE9fetch_addEmSt12memory_order.exit

_ZNSt13__atomic_baseImE9fetch_addEmSt12memory_order.exit: ; preds = %monotonic.i, %acquire.i, %release.i, %acqrel.i, %seqcst.i
  %18 = load i64, i64* %atomic-temp.i, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow11TensorShape13set_data_typeE8DataType(%"class.tensorflow::TensorShape"* %this, i32 %t) #3 comdat align 2 {
entry:
  %this.addr = alloca %"class.tensorflow::TensorShape"*, align 8
  %t.addr = alloca i32, align 4
  store %"class.tensorflow::TensorShape"* %this, %"class.tensorflow::TensorShape"** %this.addr, align 8
  store i32 %t, i32* %t.addr, align 4
  %this1 = load %"class.tensorflow::TensorShape"*, %"class.tensorflow::TensorShape"** %this.addr, align 8
  %0 = load i32, i32* %t.addr, align 4
  %dtype_ = getelementptr inbounds %"class.tensorflow::TensorShape", %"class.tensorflow::TensorShape"* %this1, i32 0, i32 1
  store i32 %0, i32* %dtype_, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_ZN10tensorflow6TensorD2Ev(%"class.tensorflow::Tensor"* %this) unnamed_addr #3 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.tensorflow::Tensor"*, align 8
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  store %"class.tensorflow::Tensor"* %this, %"class.tensorflow::Tensor"** %this.addr, align 8
  %this1 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %this.addr, align 8
  %buf_ = getelementptr inbounds %"class.tensorflow::Tensor", %"class.tensorflow::Tensor"* %this1, i32 0, i32 1
  %0 = load %"class.tensorflow::TensorBuffer"*, %"class.tensorflow::TensorBuffer"** %buf_, align 8
  %1 = bitcast %"class.tensorflow::TensorBuffer"* %0 to %"class.tensorflow::core::RefCounted"*
  invoke void @_ZN10tensorflow12_GLOBAL__N_114UnrefIfNonNullEPNS_4core10RefCountedE(%"class.tensorflow::core::RefCounted"* %1)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %shape_ = getelementptr inbounds %"class.tensorflow::Tensor", %"class.tensorflow::Tensor"* %this1, i32 0, i32 0
  call void @_ZN10tensorflow11TensorShapeD2Ev(%"class.tensorflow::TensorShape"* %shape_) #5
  ret void

lpad:                                             ; preds = %entry
  %2 = landingpad { i8*, i32 }
          catch i8* null
  %3 = extractvalue { i8*, i32 } %2, 0
  store i8* %3, i8** %exn.slot, align 8
  %4 = extractvalue { i8*, i32 } %2, 1
  store i32 %4, i32* %ehselector.slot, align 4
  %shape_2 = getelementptr inbounds %"class.tensorflow::Tensor", %"class.tensorflow::Tensor"* %this1, i32 0, i32 0
  call void @_ZN10tensorflow11TensorShapeD2Ev(%"class.tensorflow::TensorShape"* %shape_2) #5
  br label %terminate.handler

terminate.handler:                                ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  call void @__clang_call_terminate(i8* %exn) #13
  unreachable
}

; Function Attrs: noinline optnone uwtable
define internal void @_ZN10tensorflow12_GLOBAL__N_114UnrefIfNonNullEPNS_4core10RefCountedE(%"class.tensorflow::core::RefCounted"* %buf) #4 {
entry:
  %buf.addr = alloca %"class.tensorflow::core::RefCounted"*, align 8
  store %"class.tensorflow::core::RefCounted"* %buf, %"class.tensorflow::core::RefCounted"** %buf.addr, align 8
  %0 = load %"class.tensorflow::core::RefCounted"*, %"class.tensorflow::core::RefCounted"** %buf.addr, align 8
  %tobool = icmp ne %"class.tensorflow::core::RefCounted"* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %"class.tensorflow::core::RefCounted"*, %"class.tensorflow::core::RefCounted"** %buf.addr, align 8
  %call = call zeroext i1 @_ZNK10tensorflow4core10RefCounted5UnrefEv(%"class.tensorflow::core::RefCounted"* %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline optnone uwtable
define dso_local void @_ZN10tensorflow6TensorC2EOS0_(%"class.tensorflow::Tensor"* %this, %"class.tensorflow::Tensor"* nonnull align 8 dereferenceable(40) %other) unnamed_addr #4 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.tensorflow::Tensor"*, align 8
  %other.addr = alloca %"class.tensorflow::Tensor"*, align 8
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  store %"class.tensorflow::Tensor"* %this, %"class.tensorflow::Tensor"** %this.addr, align 8
  store %"class.tensorflow::Tensor"* %other, %"class.tensorflow::Tensor"** %other.addr, align 8
  %this1 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %this.addr, align 8
  %shape_ = getelementptr inbounds %"class.tensorflow::Tensor", %"class.tensorflow::Tensor"* %this1, i32 0, i32 0
  %0 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %other.addr, align 8
  %shape_2 = getelementptr inbounds %"class.tensorflow::Tensor", %"class.tensorflow::Tensor"* %0, i32 0, i32 0
  %call = call nonnull align 8 dereferenceable(29) %"class.tensorflow::TensorShape"* @_ZSt4moveIRN10tensorflow11TensorShapeEEONSt16remove_referenceIT_E4typeEOS4_(%"class.tensorflow::TensorShape"* nonnull align 8 dereferenceable(29) %shape_2) #5
  call void @_ZN10tensorflow11TensorShapeC2EOS0_(%"class.tensorflow::TensorShape"* %shape_, %"class.tensorflow::TensorShape"* nonnull align 8 dereferenceable(29) %call) #5
  %buf_ = getelementptr inbounds %"class.tensorflow::Tensor", %"class.tensorflow::Tensor"* %this1, i32 0, i32 1
  %1 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %other.addr, align 8
  %buf_3 = getelementptr inbounds %"class.tensorflow::Tensor", %"class.tensorflow::Tensor"* %1, i32 0, i32 1
  %2 = load %"class.tensorflow::TensorBuffer"*, %"class.tensorflow::TensorBuffer"** %buf_3, align 8
  store %"class.tensorflow::TensorBuffer"* %2, %"class.tensorflow::TensorBuffer"** %buf_, align 8
  %3 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %other.addr, align 8
  %call4 = invoke i32 @_ZNK10tensorflow6Tensor5dtypeEv(%"class.tensorflow::Tensor"* %3)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  invoke void @_ZN10tensorflow6Tensor9set_dtypeE8DataType(%"class.tensorflow::Tensor"* %this1, i32 %call4)
          to label %invoke.cont5 unwind label %lpad

invoke.cont5:                                     ; preds = %invoke.cont
  %4 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %other.addr, align 8
  %buf_6 = getelementptr inbounds %"class.tensorflow::Tensor", %"class.tensorflow::Tensor"* %4, i32 0, i32 1
  store %"class.tensorflow::TensorBuffer"* null, %"class.tensorflow::TensorBuffer"** %buf_6, align 8
  ret void

lpad:                                             ; preds = %invoke.cont, %entry
  %5 = landingpad { i8*, i32 }
          cleanup
  %6 = extractvalue { i8*, i32 } %5, 0
  store i8* %6, i8** %exn.slot, align 8
  %7 = extractvalue { i8*, i32 } %5, 1
  store i32 %7, i32* %ehselector.slot, align 4
  call void @_ZN10tensorflow11TensorShapeD2Ev(%"class.tensorflow::TensorShape"* %shape_) #5
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val7 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val7
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(29) %"class.tensorflow::TensorShape"* @_ZSt4moveIRN10tensorflow11TensorShapeEEONSt16remove_referenceIT_E4typeEOS4_(%"class.tensorflow::TensorShape"* nonnull align 8 dereferenceable(29) %__t) #3 comdat {
entry:
  %__t.addr = alloca %"class.tensorflow::TensorShape"*, align 8
  store %"class.tensorflow::TensorShape"* %__t, %"class.tensorflow::TensorShape"** %__t.addr, align 8
  %0 = load %"class.tensorflow::TensorShape"*, %"class.tensorflow::TensorShape"** %__t.addr, align 8
  ret %"class.tensorflow::TensorShape"* %0
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow11TensorShapeC2EOS0_(%"class.tensorflow::TensorShape"* %this, %"class.tensorflow::TensorShape"* nonnull align 8 dereferenceable(29) %0) unnamed_addr #3 comdat align 2 {
entry:
  %this.addr = alloca %"class.tensorflow::TensorShape"*, align 8
  %.addr = alloca %"class.tensorflow::TensorShape"*, align 8
  store %"class.tensorflow::TensorShape"* %this, %"class.tensorflow::TensorShape"** %this.addr, align 8
  store %"class.tensorflow::TensorShape"* %0, %"class.tensorflow::TensorShape"** %.addr, align 8
  %this1 = load %"class.tensorflow::TensorShape"*, %"class.tensorflow::TensorShape"** %this.addr, align 8
  %dims_ = getelementptr inbounds %"class.tensorflow::TensorShape", %"class.tensorflow::TensorShape"* %this1, i32 0, i32 0
  %1 = load %"class.tensorflow::TensorShape"*, %"class.tensorflow::TensorShape"** %.addr, align 8
  %dims_2 = getelementptr inbounds %"class.tensorflow::TensorShape", %"class.tensorflow::TensorShape"* %1, i32 0, i32 0
  call void @_ZNSt6vectorIlSaIlEEC2EOS1_(%"class.std::vector"* %dims_, %"class.std::vector"* nonnull align 8 dereferenceable(24) %dims_2) #5
  %dtype_ = getelementptr inbounds %"class.tensorflow::TensorShape", %"class.tensorflow::TensorShape"* %this1, i32 0, i32 1
  %2 = load %"class.tensorflow::TensorShape"*, %"class.tensorflow::TensorShape"** %.addr, align 8
  %dtype_3 = getelementptr inbounds %"class.tensorflow::TensorShape", %"class.tensorflow::TensorShape"* %2, i32 0, i32 1
  %3 = bitcast i32* %dtype_ to i8*
  %4 = bitcast i32* %dtype_3 to i8*
  %5 = call i8* @memcpy(i8* %3, i8* %4, i64 4)
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i32 @_ZNK10tensorflow6Tensor5dtypeEv(%"class.tensorflow::Tensor"* %this) #4 comdat align 2 {
entry:
  %this.addr = alloca %"class.tensorflow::Tensor"*, align 8
  store %"class.tensorflow::Tensor"* %this, %"class.tensorflow::Tensor"** %this.addr, align 8
  %this1 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %this.addr, align 8
  %shape_ = getelementptr inbounds %"class.tensorflow::Tensor", %"class.tensorflow::Tensor"* %this1, i32 0, i32 0
  %call = call i32 @_ZNK10tensorflow11TensorShape9data_typeEv(%"class.tensorflow::TensorShape"* %shape_)
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i32 @_ZNK10tensorflow11TensorShape9data_typeEv(%"class.tensorflow::TensorShape"* %this) #3 comdat align 2 {
entry:
  %this.addr = alloca %"class.tensorflow::TensorShape"*, align 8
  store %"class.tensorflow::TensorShape"* %this, %"class.tensorflow::TensorShape"** %this.addr, align 8
  %this1 = load %"class.tensorflow::TensorShape"*, %"class.tensorflow::TensorShape"** %this.addr, align 8
  %dtype_ = getelementptr inbounds %"class.tensorflow::TensorShape", %"class.tensorflow::TensorShape"* %this1, i32 0, i32 1
  %0 = load i32, i32* %dtype_, align 8
  ret i32 %0
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIlSaIlEEC2EOS1_(%"class.std::vector"* %this, %"class.std::vector"* nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  %.addr = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  store %"class.std::vector"* %0, %"class.std::vector"** %.addr, align 8
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %1 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %2 = load %"class.std::vector"*, %"class.std::vector"** %.addr, align 8
  %3 = bitcast %"class.std::vector"* %2 to %"struct.std::_Vector_base"*
  call void @_ZNSt12_Vector_baseIlSaIlEEC2EOS1_(%"struct.std::_Vector_base"* %1, %"struct.std::_Vector_base"* nonnull align 8 dereferenceable(24) %3) #5
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIlSaIlEEC2EOS1_(%"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"* nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base"*, align 8
  %.addr = alloca %"struct.std::_Vector_base"*, align 8
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %this.addr, align 8
  store %"struct.std::_Vector_base"* %0, %"struct.std::_Vector_base"** %.addr, align 8
  %this1 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  %1 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %.addr, align 8
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %1, i32 0, i32 0
  call void @_ZNSt12_Vector_baseIlSaIlEE12_Vector_implC2EOS2_(%"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %_M_impl, %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* nonnull align 8 dereferenceable(24) %_M_impl2) #5
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIlSaIlEE12_Vector_implC2EOS2_(%"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %this, %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* nonnull align 8 dereferenceable(24) %__x) unnamed_addr #3 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"*, align 8
  %__x.addr = alloca %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"*, align 8
  store %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %this, %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"** %this.addr, align 8
  store %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %__x, %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"** %__x.addr, align 8
  %this1 = load %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"*, %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"** %this.addr, align 8
  %0 = bitcast %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %this1 to %"class.std::allocator.0"*
  %1 = load %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"*, %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"** %__x.addr, align 8
  %call = call nonnull align 8 dereferenceable(24) %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* @_ZSt4moveIRNSt12_Vector_baseIlSaIlEE12_Vector_implEEONSt16remove_referenceIT_E4typeEOS6_(%"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* nonnull align 8 dereferenceable(24) %1) #5
  %2 = bitcast %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %call to %"class.std::allocator.0"*
  call void @_ZNSaIlEC2ERKS_(%"class.std::allocator.0"* %0, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %2) #5
  %3 = bitcast %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %this1 to %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"*
  %4 = load %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"*, %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"** %__x.addr, align 8
  %call2 = call nonnull align 8 dereferenceable(24) %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* @_ZSt4moveIRNSt12_Vector_baseIlSaIlEE12_Vector_implEEONSt16remove_referenceIT_E4typeEOS6_(%"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* nonnull align 8 dereferenceable(24) %4) #5
  %5 = bitcast %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %call2 to %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"*
  call void @_ZNSt12_Vector_baseIlSaIlEE17_Vector_impl_dataC2EOS2_(%"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* %3, %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* nonnull align 8 dereferenceable(24) %5) #5
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(24) %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* @_ZSt4moveIRNSt12_Vector_baseIlSaIlEE12_Vector_implEEONSt16remove_referenceIT_E4typeEOS6_(%"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* nonnull align 8 dereferenceable(24) %__t) #3 comdat {
entry:
  %__t.addr = alloca %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"*, align 8
  store %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %__t, %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"** %__t.addr, align 8
  %0 = load %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"*, %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"** %__t.addr, align 8
  ret %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %0
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIlSaIlEE17_Vector_impl_dataC2EOS2_(%"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* %this, %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* nonnull align 8 dereferenceable(24) %__x) unnamed_addr #3 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"*, align 8
  %__x.addr = alloca %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"*, align 8
  store %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* %this, %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"** %this.addr, align 8
  store %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* %__x, %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"** %__x.addr, align 8
  %this1 = load %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"*, %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"** %this.addr, align 8
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data", %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* %this1, i32 0, i32 0
  %0 = load %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"*, %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"** %__x.addr, align 8
  %_M_start2 = getelementptr inbounds %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data", %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* %0, i32 0, i32 0
  %1 = load i64*, i64** %_M_start2, align 8
  store i64* %1, i64** %_M_start, align 8
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data", %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* %this1, i32 0, i32 1
  %2 = load %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"*, %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"** %__x.addr, align 8
  %_M_finish3 = getelementptr inbounds %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data", %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* %2, i32 0, i32 1
  %3 = load i64*, i64** %_M_finish3, align 8
  store i64* %3, i64** %_M_finish, align 8
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data", %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* %this1, i32 0, i32 2
  %4 = load %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"*, %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"** %__x.addr, align 8
  %_M_end_of_storage4 = getelementptr inbounds %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data", %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* %4, i32 0, i32 2
  %5 = load i64*, i64** %_M_end_of_storage4, align 8
  store i64* %5, i64** %_M_end_of_storage, align 8
  %6 = load %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"*, %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"** %__x.addr, align 8
  %_M_end_of_storage5 = getelementptr inbounds %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data", %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* %6, i32 0, i32 2
  store i64* null, i64** %_M_end_of_storage5, align 8
  %7 = load %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"*, %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"** %__x.addr, align 8
  %_M_finish6 = getelementptr inbounds %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data", %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* %7, i32 0, i32 1
  store i64* null, i64** %_M_finish6, align 8
  %8 = load %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"*, %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"** %__x.addr, align 8
  %_M_start7 = getelementptr inbounds %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data", %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* %8, i32 0, i32 0
  store i64* null, i64** %_M_start7, align 8
  ret void
}

; Function Attrs: noreturn nounwind
declare void @abort() #13

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* %destaddr, i8* %srcaddr, i64 %len) #14 !dbg !15 {
entry:
  %destaddr.addr = alloca i8*, align 8
  %srcaddr.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %dest = alloca i8*, align 8
  %src = alloca i8*, align 8
  store i8* %destaddr, i8** %destaddr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %destaddr.addr, metadata !25, metadata !DIExpression()), !dbg !26
  store i8* %srcaddr, i8** %srcaddr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %srcaddr.addr, metadata !27, metadata !DIExpression()), !dbg !28
  store i64 %len, i64* %len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !29, metadata !DIExpression()), !dbg !30
  call void @llvm.dbg.declare(metadata i8** %dest, metadata !31, metadata !DIExpression()), !dbg !34
  %0 = load i8*, i8** %destaddr.addr, align 8, !dbg !35
  store i8* %0, i8** %dest, align 8, !dbg !34
  call void @llvm.dbg.declare(metadata i8** %src, metadata !36, metadata !DIExpression()), !dbg !39
  %1 = load i8*, i8** %srcaddr.addr, align 8, !dbg !40
  store i8* %1, i8** %src, align 8, !dbg !39
  br label %while.cond, !dbg !41

while.cond:                                       ; preds = %while.body, %entry
  %2 = load i64, i64* %len.addr, align 8, !dbg !42
  %dec = add i64 %2, -1, !dbg !42
  store i64 %dec, i64* %len.addr, align 8, !dbg !42
  %cmp = icmp ugt i64 %2, 0, !dbg !43
  br i1 %cmp, label %while.body, label %while.end, !dbg !41

while.body:                                       ; preds = %while.cond
  %3 = load i8*, i8** %src, align 8, !dbg !44
  %incdec.ptr = getelementptr inbounds i8, i8* %3, i32 1, !dbg !44
  store i8* %incdec.ptr, i8** %src, align 8, !dbg !44
  %4 = load i8, i8* %3, align 1, !dbg !45
  %5 = load i8*, i8** %dest, align 8, !dbg !46
  %incdec.ptr1 = getelementptr inbounds i8, i8* %5, i32 1, !dbg !46
  store i8* %incdec.ptr1, i8** %dest, align 8, !dbg !46
  store i8 %4, i8* %5, align 1, !dbg !47
  br label %while.cond, !dbg !41, !llvm.loop !48

while.end:                                        ; preds = %while.cond
  %6 = load i8*, i8** %destaddr.addr, align 8, !dbg !49
  ret i8* %6, !dbg !50
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #15

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memmove(i8* %dst, i8* %src, i64 %count) #14 !dbg !51 {
entry:
  %retval = alloca i8*, align 8
  %dst.addr = alloca i8*, align 8
  %src.addr = alloca i8*, align 8
  %count.addr = alloca i64, align 8
  %a = alloca i8*, align 8
  %b = alloca i8*, align 8
  store i8* %dst, i8** %dst.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dst.addr, metadata !53, metadata !DIExpression()), !dbg !54
  store i8* %src, i8** %src.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %src.addr, metadata !55, metadata !DIExpression()), !dbg !56
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !57, metadata !DIExpression()), !dbg !58
  call void @llvm.dbg.declare(metadata i8** %a, metadata !59, metadata !DIExpression()), !dbg !60
  %0 = load i8*, i8** %dst.addr, align 8, !dbg !61
  store i8* %0, i8** %a, align 8, !dbg !60
  call void @llvm.dbg.declare(metadata i8** %b, metadata !62, metadata !DIExpression()), !dbg !63
  %1 = load i8*, i8** %src.addr, align 8, !dbg !64
  store i8* %1, i8** %b, align 8, !dbg !63
  %2 = load i8*, i8** %src.addr, align 8, !dbg !65
  %3 = load i8*, i8** %dst.addr, align 8, !dbg !67
  %cmp = icmp eq i8* %2, %3, !dbg !68
  br i1 %cmp, label %if.then, label %if.end, !dbg !69

if.then:                                          ; preds = %entry
  %4 = load i8*, i8** %dst.addr, align 8, !dbg !70
  store i8* %4, i8** %retval, align 8, !dbg !71
  br label %return, !dbg !71

if.end:                                           ; preds = %entry
  %5 = load i8*, i8** %src.addr, align 8, !dbg !72
  %6 = load i8*, i8** %dst.addr, align 8, !dbg !74
  %cmp1 = icmp ugt i8* %5, %6, !dbg !75
  br i1 %cmp1, label %while.cond, label %if.else, !dbg !76

while.cond:                                       ; preds = %if.end, %while.body
  %7 = load i64, i64* %count.addr, align 8, !dbg !77
  %dec = add i64 %7, -1, !dbg !77
  store i64 %dec, i64* %count.addr, align 8, !dbg !77
  %tobool = icmp ne i64 %7, 0, !dbg !79
  br i1 %tobool, label %while.body, label %if.end13, !dbg !79

while.body:                                       ; preds = %while.cond
  %8 = load i8*, i8** %b, align 8, !dbg !80
  %incdec.ptr = getelementptr inbounds i8, i8* %8, i32 1, !dbg !80
  store i8* %incdec.ptr, i8** %b, align 8, !dbg !80
  %9 = load i8, i8* %8, align 1, !dbg !81
  %10 = load i8*, i8** %a, align 8, !dbg !82
  %incdec.ptr3 = getelementptr inbounds i8, i8* %10, i32 1, !dbg !82
  store i8* %incdec.ptr3, i8** %a, align 8, !dbg !82
  store i8 %9, i8* %10, align 1, !dbg !83
  br label %while.cond, !dbg !79, !llvm.loop !84

if.else:                                          ; preds = %if.end
  %11 = load i64, i64* %count.addr, align 8, !dbg !85
  %sub = sub i64 %11, 1, !dbg !87
  %12 = load i8*, i8** %a, align 8, !dbg !88
  %add.ptr = getelementptr inbounds i8, i8* %12, i64 %sub, !dbg !88
  store i8* %add.ptr, i8** %a, align 8, !dbg !88
  %13 = load i64, i64* %count.addr, align 8, !dbg !89
  %sub4 = sub i64 %13, 1, !dbg !90
  %14 = load i8*, i8** %b, align 8, !dbg !91
  %add.ptr5 = getelementptr inbounds i8, i8* %14, i64 %sub4, !dbg !91
  store i8* %add.ptr5, i8** %b, align 8, !dbg !91
  br label %while.cond6, !dbg !92

while.cond6:                                      ; preds = %while.body9, %if.else
  %15 = load i64, i64* %count.addr, align 8, !dbg !93
  %dec7 = add i64 %15, -1, !dbg !93
  store i64 %dec7, i64* %count.addr, align 8, !dbg !93
  %tobool8 = icmp ne i64 %15, 0, !dbg !92
  br i1 %tobool8, label %while.body9, label %if.end13, !dbg !92

while.body9:                                      ; preds = %while.cond6
  %16 = load i8*, i8** %b, align 8, !dbg !94
  %incdec.ptr10 = getelementptr inbounds i8, i8* %16, i32 -1, !dbg !94
  store i8* %incdec.ptr10, i8** %b, align 8, !dbg !94
  %17 = load i8, i8* %16, align 1, !dbg !95
  %18 = load i8*, i8** %a, align 8, !dbg !96
  %incdec.ptr11 = getelementptr inbounds i8, i8* %18, i32 -1, !dbg !96
  store i8* %incdec.ptr11, i8** %a, align 8, !dbg !96
  store i8 %17, i8* %18, align 1, !dbg !97
  br label %while.cond6, !dbg !92, !llvm.loop !98

if.end13:                                         ; preds = %while.cond6, %while.cond
  %19 = load i8*, i8** %dst.addr, align 8, !dbg !99
  store i8* %19, i8** %retval, align 8, !dbg !100
  br label %return, !dbg !100

return:                                           ; preds = %if.end13, %if.then
  %20 = load i8*, i8** %retval, align 8, !dbg !101
  ret i8* %20, !dbg !101
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* %dst, i32 %s, i64 %count) #14 !dbg !102 {
entry:
  %dst.addr = alloca i8*, align 8
  %s.addr = alloca i32, align 4
  %count.addr = alloca i64, align 8
  %a = alloca i8*, align 8
  store i8* %dst, i8** %dst.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dst.addr, metadata !107, metadata !DIExpression()), !dbg !108
  store i32 %s, i32* %s.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %s.addr, metadata !109, metadata !DIExpression()), !dbg !110
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !111, metadata !DIExpression()), !dbg !112
  call void @llvm.dbg.declare(metadata i8** %a, metadata !113, metadata !DIExpression()), !dbg !114
  %0 = load i8*, i8** %dst.addr, align 8, !dbg !115
  store i8* %0, i8** %a, align 8, !dbg !114
  br label %while.cond, !dbg !116

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i64, i64* %count.addr, align 8, !dbg !117
  %dec = add i64 %1, -1, !dbg !117
  store i64 %dec, i64* %count.addr, align 8, !dbg !117
  %cmp = icmp ugt i64 %1, 0, !dbg !118
  br i1 %cmp, label %while.body, label %while.end, !dbg !116

while.body:                                       ; preds = %while.cond
  %2 = load i32, i32* %s.addr, align 4, !dbg !119
  %conv = trunc i32 %2 to i8, !dbg !119
  %3 = load i8*, i8** %a, align 8, !dbg !120
  %incdec.ptr = getelementptr inbounds i8, i8* %3, i32 1, !dbg !120
  store i8* %incdec.ptr, i8** %a, align 8, !dbg !120
  store i8 %conv, i8* %3, align 1, !dbg !121
  br label %while.cond, !dbg !116, !llvm.loop !122

while.end:                                        ; preds = %while.cond
  %4 = load i8*, i8** %dst.addr, align 8, !dbg !123
  ret i8* %4, !dbg !124
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @klee_div_zero_check(i64 %z) #14 !dbg !125 {
entry:
  %z.addr = alloca i64, align 8
  store i64 %z, i64* %z.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %z.addr, metadata !130, metadata !DIExpression()), !dbg !131
  %0 = load i64, i64* %z.addr, align 8, !dbg !132
  %cmp = icmp eq i64 %0, 0, !dbg !134
  br i1 %cmp, label %if.then, label %if.end, !dbg !135

if.then:                                          ; preds = %entry
  call void @klee_report_error(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.9, i64 0, i64 0), i32 14, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1.11, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.12, i64 0, i64 0)) #19, !dbg !136
  unreachable, !dbg !136

if.end:                                           ; preds = %entry
  ret void, !dbg !137
}

; Function Attrs: noreturn
declare dso_local void @klee_report_error(i8*, i32, i8*, i8*) #10

attributes #0 = { noinline norecurse optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noinline optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nobuiltin allocsize(0) "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { argmemonly nounwind willreturn writeonly }
attributes #8 = { nobuiltin nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind willreturn }
attributes #10 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { noinline noreturn nounwind }
attributes #12 = { argmemonly nounwind willreturn }
attributes #13 = { noreturn nounwind }
attributes #14 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #15 = { nounwind readnone speculatable willreturn }
attributes #16 = { builtin allocsize(0) }
attributes #17 = { builtin nounwind }
attributes #18 = { allocsize(0) }
attributes #19 = { noreturn }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!llvm.dbg.cu = !{!4, !7, !9, !11}

!0 = !{!"clang version 11.1.0 (https://github.com/llvm/llvm-project.git 1fdec59bffc11ae37eb51a1b9869f0696bfd5312)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"Dwarf Version", i32 4}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = distinct !DICompileUnit(language: DW_LANG_C99, file: !5, producer: "clang version 11.1.0 (https://github.com/llvm/llvm-project.git 1fdec59bffc11ae37eb51a1b9869f0696bfd5312)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !6, splitDebugInlining: false, nameTableKind: None)
!5 = !DIFile(filename: "/home/mushfiqur/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/mushfiqur/tools/klee/build/runtime/Freestanding")
!6 = !{}
!7 = distinct !DICompileUnit(language: DW_LANG_C99, file: !8, producer: "clang version 11.1.0 (https://github.com/llvm/llvm-project.git 1fdec59bffc11ae37eb51a1b9869f0696bfd5312)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !6, splitDebugInlining: false, nameTableKind: None)
!8 = !DIFile(filename: "/home/mushfiqur/tools/klee/runtime/Freestanding/memmove.c", directory: "/home/mushfiqur/tools/klee/build/runtime/Freestanding")
!9 = distinct !DICompileUnit(language: DW_LANG_C99, file: !10, producer: "clang version 11.1.0 (https://github.com/llvm/llvm-project.git 1fdec59bffc11ae37eb51a1b9869f0696bfd5312)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !6, splitDebugInlining: false, nameTableKind: None)
!10 = !DIFile(filename: "/home/mushfiqur/tools/klee/runtime/Freestanding/memset.c", directory: "/home/mushfiqur/tools/klee/build/runtime/Freestanding")
!11 = distinct !DICompileUnit(language: DW_LANG_C89, file: !12, producer: "clang version 11.1.0 (https://github.com/llvm/llvm-project.git 1fdec59bffc11ae37eb51a1b9869f0696bfd5312)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !6, splitDebugInlining: false, nameTableKind: None)
!12 = !DIFile(filename: "/home/mushfiqur/tools/klee/runtime/Intrinsic/klee_div_zero_check.c", directory: "/home/mushfiqur/tools/klee/build/runtime/Intrinsic")
!13 = !{!"branch_weights", i32 1, i32 1048575}
!14 = !{!"True"}
!15 = distinct !DISubprogram(name: "memcpy", scope: !16, file: !16, line: 12, type: !17, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4, retainedNodes: !6)
!16 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/mushfiqur/tools/klee")
!17 = !DISubroutineType(types: !18)
!18 = !{!19, !19, !20, !22}
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !23, line: 46, baseType: !24)
!23 = !DIFile(filename: "llvm-11/lib/clang/11.1.0/include/stddef.h", directory: "/home/mushfiqur")
!24 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!25 = !DILocalVariable(name: "destaddr", arg: 1, scope: !15, file: !16, line: 12, type: !19)
!26 = !DILocation(line: 12, column: 20, scope: !15)
!27 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !15, file: !16, line: 12, type: !20)
!28 = !DILocation(line: 12, column: 42, scope: !15)
!29 = !DILocalVariable(name: "len", arg: 3, scope: !15, file: !16, line: 12, type: !22)
!30 = !DILocation(line: 12, column: 58, scope: !15)
!31 = !DILocalVariable(name: "dest", scope: !15, file: !16, line: 13, type: !32)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!34 = !DILocation(line: 13, column: 9, scope: !15)
!35 = !DILocation(line: 13, column: 16, scope: !15)
!36 = !DILocalVariable(name: "src", scope: !15, file: !16, line: 14, type: !37)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !33)
!39 = !DILocation(line: 14, column: 15, scope: !15)
!40 = !DILocation(line: 14, column: 21, scope: !15)
!41 = !DILocation(line: 16, column: 3, scope: !15)
!42 = !DILocation(line: 16, column: 13, scope: !15)
!43 = !DILocation(line: 16, column: 16, scope: !15)
!44 = !DILocation(line: 17, column: 19, scope: !15)
!45 = !DILocation(line: 17, column: 15, scope: !15)
!46 = !DILocation(line: 17, column: 10, scope: !15)
!47 = !DILocation(line: 17, column: 13, scope: !15)
!48 = distinct !{!48, !41, !44}
!49 = !DILocation(line: 18, column: 10, scope: !15)
!50 = !DILocation(line: 18, column: 3, scope: !15)
!51 = distinct !DISubprogram(name: "memmove", scope: !52, file: !52, line: 12, type: !17, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !6)
!52 = !DIFile(filename: "runtime/Freestanding/memmove.c", directory: "/home/mushfiqur/tools/klee")
!53 = !DILocalVariable(name: "dst", arg: 1, scope: !51, file: !52, line: 12, type: !19)
!54 = !DILocation(line: 12, column: 21, scope: !51)
!55 = !DILocalVariable(name: "src", arg: 2, scope: !51, file: !52, line: 12, type: !20)
!56 = !DILocation(line: 12, column: 38, scope: !51)
!57 = !DILocalVariable(name: "count", arg: 3, scope: !51, file: !52, line: 12, type: !22)
!58 = !DILocation(line: 12, column: 50, scope: !51)
!59 = !DILocalVariable(name: "a", scope: !51, file: !52, line: 13, type: !32)
!60 = !DILocation(line: 13, column: 9, scope: !51)
!61 = !DILocation(line: 13, column: 13, scope: !51)
!62 = !DILocalVariable(name: "b", scope: !51, file: !52, line: 14, type: !37)
!63 = !DILocation(line: 14, column: 15, scope: !51)
!64 = !DILocation(line: 14, column: 19, scope: !51)
!65 = !DILocation(line: 16, column: 7, scope: !66)
!66 = distinct !DILexicalBlock(scope: !51, file: !52, line: 16, column: 7)
!67 = !DILocation(line: 16, column: 14, scope: !66)
!68 = !DILocation(line: 16, column: 11, scope: !66)
!69 = !DILocation(line: 16, column: 7, scope: !51)
!70 = !DILocation(line: 17, column: 12, scope: !66)
!71 = !DILocation(line: 17, column: 5, scope: !66)
!72 = !DILocation(line: 19, column: 7, scope: !73)
!73 = distinct !DILexicalBlock(scope: !51, file: !52, line: 19, column: 7)
!74 = !DILocation(line: 19, column: 13, scope: !73)
!75 = !DILocation(line: 19, column: 11, scope: !73)
!76 = !DILocation(line: 19, column: 7, scope: !51)
!77 = !DILocation(line: 20, column: 17, scope: !78)
!78 = distinct !DILexicalBlock(scope: !73, file: !52, line: 19, column: 18)
!79 = !DILocation(line: 20, column: 5, scope: !78)
!80 = !DILocation(line: 21, column: 16, scope: !78)
!81 = !DILocation(line: 21, column: 14, scope: !78)
!82 = !DILocation(line: 21, column: 9, scope: !78)
!83 = !DILocation(line: 21, column: 12, scope: !78)
!84 = distinct !{!84, !79, !80}
!85 = !DILocation(line: 23, column: 10, scope: !86)
!86 = distinct !DILexicalBlock(scope: !73, file: !52, line: 22, column: 10)
!87 = !DILocation(line: 23, column: 16, scope: !86)
!88 = !DILocation(line: 23, column: 7, scope: !86)
!89 = !DILocation(line: 24, column: 10, scope: !86)
!90 = !DILocation(line: 24, column: 16, scope: !86)
!91 = !DILocation(line: 24, column: 7, scope: !86)
!92 = !DILocation(line: 25, column: 5, scope: !86)
!93 = !DILocation(line: 25, column: 17, scope: !86)
!94 = !DILocation(line: 26, column: 16, scope: !86)
!95 = !DILocation(line: 26, column: 14, scope: !86)
!96 = !DILocation(line: 26, column: 9, scope: !86)
!97 = !DILocation(line: 26, column: 12, scope: !86)
!98 = distinct !{!98, !92, !94}
!99 = !DILocation(line: 29, column: 10, scope: !51)
!100 = !DILocation(line: 29, column: 3, scope: !51)
!101 = !DILocation(line: 30, column: 1, scope: !51)
!102 = distinct !DISubprogram(name: "memset", scope: !103, file: !103, line: 12, type: !104, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !6)
!103 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/mushfiqur/tools/klee")
!104 = !DISubroutineType(types: !105)
!105 = !{!19, !19, !106, !22}
!106 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!107 = !DILocalVariable(name: "dst", arg: 1, scope: !102, file: !103, line: 12, type: !19)
!108 = !DILocation(line: 12, column: 20, scope: !102)
!109 = !DILocalVariable(name: "s", arg: 2, scope: !102, file: !103, line: 12, type: !106)
!110 = !DILocation(line: 12, column: 29, scope: !102)
!111 = !DILocalVariable(name: "count", arg: 3, scope: !102, file: !103, line: 12, type: !22)
!112 = !DILocation(line: 12, column: 39, scope: !102)
!113 = !DILocalVariable(name: "a", scope: !102, file: !103, line: 13, type: !32)
!114 = !DILocation(line: 13, column: 9, scope: !102)
!115 = !DILocation(line: 13, column: 13, scope: !102)
!116 = !DILocation(line: 14, column: 3, scope: !102)
!117 = !DILocation(line: 14, column: 15, scope: !102)
!118 = !DILocation(line: 14, column: 18, scope: !102)
!119 = !DILocation(line: 15, column: 12, scope: !102)
!120 = !DILocation(line: 15, column: 7, scope: !102)
!121 = !DILocation(line: 15, column: 10, scope: !102)
!122 = distinct !{!122, !116, !119}
!123 = !DILocation(line: 16, column: 10, scope: !102)
!124 = !DILocation(line: 16, column: 3, scope: !102)
!125 = distinct !DISubprogram(name: "klee_div_zero_check", scope: !126, file: !126, line: 12, type: !127, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !6)
!126 = !DIFile(filename: "runtime/Intrinsic/klee_div_zero_check.c", directory: "/home/mushfiqur/tools/klee")
!127 = !DISubroutineType(types: !128)
!128 = !{null, !129}
!129 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!130 = !DILocalVariable(name: "z", arg: 1, scope: !125, file: !126, line: 12, type: !129)
!131 = !DILocation(line: 12, column: 36, scope: !125)
!132 = !DILocation(line: 13, column: 7, scope: !133)
!133 = distinct !DILexicalBlock(scope: !125, file: !126, line: 13, column: 7)
!134 = !DILocation(line: 13, column: 9, scope: !133)
!135 = !DILocation(line: 13, column: 7, scope: !125)
!136 = !DILocation(line: 14, column: 5, scope: !133)
!137 = !DILocation(line: 15, column: 1, scope: !125)
