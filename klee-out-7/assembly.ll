; ModuleID = 'klee_ready.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::Storage.4" = type { i64 }
%struct.TF_Tensor = type { %"class.tensorflow::AbstractTensorInterface"* }
%"class.tensorflow::AbstractTensorInterface" = type { i32 (...)** }
%"class.tensorflow::TensorInterface" = type { %"class.tensorflow::AbstractTensorInterface", %"class.tensorflow::Tensor" }
%"class.tensorflow::Tensor" = type { %"class.tensorflow::TensorShape", %"class.tensorflow::TensorBuffer"* }
%"class.tensorflow::TensorShape" = type { %"class.tensorflow::TensorShapeBase" }
%"class.tensorflow::TensorShapeBase" = type { %"class.tensorflow::TensorShapeRep" }
%"class.tensorflow::TensorShapeRep" = type { %union.anon.0, i64 }
%union.anon.0 = type { %"struct.tensorflow::TensorShapeRep::Rep64"*, [8 x i8] }
%"struct.tensorflow::TensorShapeRep::Rep64" = type { %"class.absl::lts_20250127::InlinedVector"* }
%"class.absl::lts_20250127::InlinedVector" = type { %"class.absl::lts_20250127::inlined_vector_internal::Storage" }
%"class.absl::lts_20250127::inlined_vector_internal::Storage" = type { %"class.absl::lts_20250127::container_internal::CompressedTuple", %"union.absl::lts_20250127::inlined_vector_internal::Storage<long, 4, std::allocator<long>>::Data" }
%"class.absl::lts_20250127::container_internal::CompressedTuple" = type { %"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::CompressedTupleImpl" }
%"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::CompressedTupleImpl" = type { %"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::Storage.4" }
%"union.absl::lts_20250127::inlined_vector_internal::Storage<long, 4, std::allocator<long>>::Data" = type { %"struct.absl::lts_20250127::inlined_vector_internal::Storage<long, 4, std::allocator<long>>::Allocated", [16 x i8] }
%"struct.absl::lts_20250127::inlined_vector_internal::Storage<long, 4, std::allocator<long>>::Allocated" = type { i64*, i64 }
%"class.tensorflow::TensorBuffer" = type { %"class.tsl::core::RefCounted", i8* }
%"class.tsl::core::RefCounted" = type { i32 (...)**, %"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::CompressedTupleImpl" }
%struct.TF_TString = type { %union.anon.5 }
%union.anon.5 = type { %struct.TF_TString_Large }
%struct.TF_TString_Large = type { i64, i64, i8* }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char>>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char>>::_Alloc_hider" = type { i8* }
%union.anon = type { i64, [8 x i8] }
%struct.TF_TString_Raw = type { [24 x i8] }
%class.TF_ManagedBuffer = type <{ %"class.tensorflow::TensorBuffer", i64, void (i8*, i64, i8*)*, i8*, i8, [7 x i8] }>
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl" }
%"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl" = type { %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data" }
%"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data" = type { i64*, i64*, i64* }
%"struct.tsl::internal::CheckOpString" = type { %"class.std::__cxx11::basic_string"* }
%"class.tsl::internal::LogMessageFatal" = type { %"class.tsl::internal::LogMessage.base", %"class.std::basic_ios" }
%"class.tsl::internal::LogMessage.base" = type { %"class.std::__cxx11::basic_ostringstream.base", %"class.std::basic_string_view", i32, i32 }
%"class.std::__cxx11::basic_ostringstream.base" = type { %"class.tensorflow::AbstractTensorInterface", %"class.std::__cxx11::basic_stringbuf" }
%"class.std::__cxx11::basic_stringbuf" = type { %"class.std::basic_streambuf", i32, %"class.std::__cxx11::basic_string" }
%"class.std::basic_streambuf" = type { i32 (...)**, i8*, i8*, i8*, i8*, i8*, i8*, %"class.std::locale" }
%"class.std::locale" = type { %"class.std::locale::_Impl"* }
%"class.std::locale::_Impl" = type { i32, %"class.std::locale::facet"**, i64, %"class.std::locale::facet"**, i8** }
%"class.std::locale::facet" = type <{ i32 (...)**, i32, [4 x i8] }>
%"class.std::basic_string_view" = type { i64, i8* }
%"class.std::basic_ios" = type { %"class.std::ios_base", %"class.std::basic_ostream"*, i8, i8, %"class.std::basic_streambuf"*, %"class.std::ctype"*, %"class.std::num_put"*, %"class.std::num_put"* }
%"class.std::ios_base" = type { i32 (...)**, i64, i64, i32, i32, i32, %"struct.std::ios_base::_Callback_list"*, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, %"struct.std::ios_base::_Words"*, %"class.std::locale" }
%"struct.std::ios_base::_Callback_list" = type { %"struct.std::ios_base::_Callback_list"*, void (i32, %"class.std::ios_base"*, i32)*, i32, i32 }
%"struct.std::ios_base::_Words" = type { i8*, i64 }
%"class.std::basic_ostream" = type { i32 (...)**, %"class.std::basic_ios" }
%"class.std::ctype" = type <{ %"class.std::locale::facet.base", [4 x i8], %struct.__locale_struct*, i8, [7 x i8], i32*, i32*, i16*, i8, [256 x i8], [256 x i8], i8, [6 x i8] }>
%"class.std::locale::facet.base" = type <{ i32 (...)**, i32 }>
%struct.__locale_struct = type { [13 x %struct.__locale_data*], i16*, i32*, i32*, [13 x i8*] }
%struct.__locale_data = type opaque
%"class.std::num_put" = type { %"class.std::locale::facet.base", [4 x i8] }
%"class.tsl::internal::CheckOpMessageBuilder" = type { %"class.std::__cxx11::basic_ostringstream"* }
%"class.std::__cxx11::basic_ostringstream" = type { %"class.tensorflow::AbstractTensorInterface", %"class.std::__cxx11::basic_stringbuf", %"class.std::basic_ios" }
%"class.tensorflow::AllocationDescription" = type { %"class.google::protobuf::Message", %union.anon.6 }
%"class.google::protobuf::Message" = type { %"class.google::protobuf::MessageLite" }
%"class.google::protobuf::MessageLite" = type { i32 (...)**, %"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::Storage.4" }
%union.anon.6 = type { %"struct.tensorflow::AllocationDescription::Impl_" }
%"struct.tensorflow::AllocationDescription::Impl_" = type { %"struct.google::protobuf::internal::ArenaStringPtr", i64, i64, i64, i64, i8, %"class.google::protobuf::internal::CachedSize" }
%"struct.google::protobuf::internal::ArenaStringPtr" = type { %"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char>>::_Alloc_hider" }
%"class.google::protobuf::internal::CachedSize" = type { i32 }

$_ZN10tensorflow15TensorInterfaceD2Ev = comdat any

$_ZN10tensorflow15TensorInterfaceD0Ev = comdat any

$_ZN10tensorflow23AbstractTensorInterfaceD2Ev = comdat any

$_ZN10tensorflow10TensorCApi6BufferERKNS_6TensorE = comdat any

$_ZNK3tsl4core10RefCounted13RefCountIsOneEv = comdat any

$_ZStanSt12memory_orderSt23__memory_order_modifier = comdat any

$__clang_call_terminate = comdat any

$_ZNK10tensorflow6Tensor9IsAlignedEv = comdat any

$_ZNK10tensorflow6Tensor4baseIvEEPT_v = comdat any

$_ZNK10tensorflow6Tensor5dtypeEv = comdat any

$_ZNK10tensorflow6Tensor11NumElementsEv = comdat any

$_ZNK10tensorflow6Tensor5shapeEv = comdat any

$_ZNK10tensorflow14TensorShapeRep12num_elementsEv = comdat any

$_ZNK10tensorflow14TensorShapeRep9data_typeEv = comdat any

$_ZNK10tensorflow14TensorShapeRep3bufEv = comdat any

$_ZNK10tensorflow12TensorBuffer4baseIvEEPT_v = comdat any

$_ZNK10tensorflow12TensorBuffer4dataEv = comdat any

$_ZNK10tensorflow6Tensor8dim_sizeEi = comdat any

$_ZNK10tensorflow6Tensor4dimsEv = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_ = comdat any

$_ZNSt11char_traitsIcE6lengthEPKc = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev = comdat any

$_ZN9__gnu_cxx17__is_null_pointerIKcEEbPT_ = comdat any

$_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_ = comdat any

$_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_ = comdat any

$_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag = comdat any

$_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc = comdat any

$_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_ = comdat any

$_ZN16TF_ManagedBufferC2EPvmPFvS0_mS0_ES0_b = comdat any

$_ZNSaIlEC2Ev = comdat any

$_ZNSt6vectorIlSaIlEEC2EmRKS0_ = comdat any

$_ZNSaIlED2Ev = comdat any

$_ZNSt6vectorIlSaIlEEixEm = comdat any

$_ZN4absl12lts_202501274SpanIKlEC2ISt6vectorIlSaIlEEvS7_iEERKT_ = comdat any

$_ZN10tensorflow11TensorShapeCI2NS_15TensorShapeBaseIS0_EEEN4absl12lts_202501274SpanIKlEE = comdat any

$_ZN10tensorflow11TensorShapeD2Ev = comdat any

$_ZNK3tsl4core10RefCounted5UnrefEv = comdat any

$_ZSt4moveIRN10tensorflow6TensorEEONSt16remove_referenceIT_E4typeEOS4_ = comdat any

$_ZN10tensorflow6TensorC2EOS0_ = comdat any

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

$_ZN10tensorflow23AbstractTensorInterfaceD0Ev = comdat any

$_ZSt4moveIRN10tensorflow11TensorShapeEEONSt16remove_referenceIT_E4typeEOS4_ = comdat any

$_ZN10tensorflow11TensorShapeC2EOS0_ = comdat any

$_ZN10tensorflow15TensorShapeBaseINS_11TensorShapeEEC2EOS2_ = comdat any

$_ZN10tensorflow14TensorShapeRepC2EOS0_ = comdat any

$_ZN10tensorflow14TensorShapeRep3bufEv = comdat any

$_ZN10tensorflow14TensorShapeRep7set_tagENS0_6RepTagE = comdat any

$_ZN3tsl8internal21GetReferenceableValueEl = comdat any

$_ZN3tsl8internal21GetReferenceableValueEi = comdat any

$_ZN3tsl8internal12Check_GTImplIliEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc = comdat any

$_ZN3tsl8internal13CheckOpStringC2EPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE = comdat any

$_ZNK3tsl8internal13CheckOpStringcvbEv = comdat any

$_ZStlsIN3tsl8internal15LogMessageFatalENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_SA_RKT0_ = comdat any

$_ZSt4moveIRN3tsl8internal15LogMessageFatalEEONSt16remove_referenceIT_E4typeEOS5_ = comdat any

$_ZN3tsl8internal12Check_LTImplIilEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc = comdat any

$_ZN3tsl8internal17MakeCheckOpStringIilEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc = comdat any

$_ZN3tsl8internal21CheckOpMessageBuilder7ForVar1Ev = comdat any

$_ZN3tsl8internal22MakeCheckOpValueStringIiEEvPSoRKT_ = comdat any

$_ZN3tsl8internal22MakeCheckOpValueStringIlEEvPSoRKT_ = comdat any

$_ZN10tensorflow15TensorShapeBaseINS_11TensorShapeEED2Ev = comdat any

$_ZN10tensorflow14TensorShapeRepD2Ev = comdat any

$_ZNK10tensorflow14TensorShapeRep3tagEv = comdat any

$_ZN4absl12lts_2025012713span_internal7GetDataIKSt6vectorIlSaIlEEEEDTcl11GetDataImplfp_Li0EEERT_ = comdat any

$_ZNKSt6vectorIlSaIlEE4sizeEv = comdat any

$_ZN4absl12lts_202501274SpanIKlEC2EPS2_m = comdat any

$_ZN4absl12lts_2025012713span_internal11GetDataImplIKSt6vectorIlSaIlEEEEDTcldtfp_4dataEERT_c = comdat any

$_ZNKSt6vectorIlSaIlEE4dataEv = comdat any

$_ZNKSt6vectorIlSaIlEE11_M_data_ptrIlEEPT_S4_ = comdat any

$_ZN9__gnu_cxx13new_allocatorIlED2Ev = comdat any

$_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_ = comdat any

$_ZNSt12_Vector_baseIlSaIlEEC2EmRKS0_ = comdat any

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

$_ZNSt12_Vector_baseIlSaIlEE12_Vector_implC2ERKS0_ = comdat any

$_ZNSt12_Vector_baseIlSaIlEE17_M_create_storageEm = comdat any

$_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm = comdat any

$_ZNSt16allocator_traitsISaIlEE8allocateERS0_m = comdat any

$_ZN9__gnu_cxx13new_allocatorIlE8allocateEmPKv = comdat any

$_ZNK9__gnu_cxx13new_allocatorIlE11_M_max_sizeEv = comdat any

$_ZNSaIlEC2ERKS_ = comdat any

$_ZNSt12_Vector_baseIlSaIlEE17_Vector_impl_dataC2Ev = comdat any

$_ZN9__gnu_cxx13new_allocatorIlEC2ERKS1_ = comdat any

$_ZNSt6vectorIlSaIlEE11_S_max_sizeERKS0_ = comdat any

$_ZNSt16allocator_traitsISaIlEE8max_sizeERKS0_ = comdat any

$_ZSt3minImERKT_S2_S2_ = comdat any

$_ZNK9__gnu_cxx13new_allocatorIlE8max_sizeEv = comdat any

$_ZN9__gnu_cxx13new_allocatorIlEC2Ev = comdat any

$_ZN10tensorflow12TensorBufferC2EPv = comdat any

$_ZN16TF_ManagedBufferD2Ev = comdat any

$_ZN16TF_ManagedBufferD0Ev = comdat any

$_ZNK3tsl4core10RefCounted13NotifyDeletedEv = comdat any

$_ZNK16TF_ManagedBuffer4sizeEv = comdat any

$_ZN16TF_ManagedBuffer11root_bufferEv = comdat any

$_ZNK16TF_ManagedBuffer25FillAllocationDescriptionEPN10tensorflow21AllocationDescriptionE = comdat any

$_ZNK16TF_ManagedBuffer10OwnsMemoryEv = comdat any

$_ZNK10tensorflow12TensorBuffer13GetMemoryTypeEv = comdat any

$_ZN10tensorflow12TensorBufferD2Ev = comdat any

$_ZN3tsl4core10RefCountedD2Ev = comdat any

$_ZN3tsl8internal12Check_EQImplIliEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc = comdat any

$_ZN3tsl8internal17MakeCheckOpStringIliEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc = comdat any

$_ZN3tsl4core10RefCountedD0Ev = comdat any

$_ZN3tsl4core10RefCountedC2Ev = comdat any

$_ZNSt6atomicIlEC2El = comdat any

$_ZNSt13__atomic_baseIlEC2El = comdat any

$_ZN10tensorflow20DataTypeCanUseMemcpyENS_8DataTypeE = comdat any

$_ZSt3maxIiERKT_S2_S2_ = comdat any

$_ZNK10tensorflow11DataTypeSet8ContainsENS_8DataTypeE = comdat any

$_ZN10tensorflow9down_castIPNS_15TensorInterfaceENS_23AbstractTensorInterfaceEEET_PT0_ = comdat any

$_ZN10tensorflow11TensorShapeC2Ev = comdat any

$_ZN10tensorflow6Tensor9set_shapeERKNS_11TensorShapeE = comdat any

$_ZN10tensorflow11TensorShapeaSERKS0_ = comdat any

$_ZN10tensorflow6Tensor9set_dtypeENS_8DataTypeE = comdat any

$_ZN10tensorflow14TensorShapeRep13set_data_typeENS_8DataTypeE = comdat any

$_ZN3tsl8internal21GetReferenceableValueEj = comdat any

$_ZN3tsl8internal12Check_LTImplIjjEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc = comdat any

$_ZN3tsl8internal17MakeCheckOpStringIjjEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc = comdat any

$_ZN3tsl8internal22MakeCheckOpValueStringIjEEvPSoRKT_ = comdat any

$_ZN10tensorflow15TensorShapeBaseINS_11TensorShapeEEaSERKS2_ = comdat any

$_ZN10tensorflow14TensorShapeRepaSERKS0_ = comdat any

$_ZN10tensorflow9down_castIPKNS_15TensorInterfaceENS_23AbstractTensorInterfaceEEET_PT0_ = comdat any

$_ZN10tensorflow6TensoraSERKS0_ = comdat any

$_ZN4absl12lts_202501278OkStatusEv = comdat any

$_ZN4absl12lts_202501276StatusC2Ev = comdat any

$_ZN4absl12lts_202501276StatusC2ENS0_10StatusCodeE = comdat any

$_ZN4absl12lts_202501276Status16CodeToInlinedRepENS0_10StatusCodeE = comdat any

$_ZN4absl12lts_202501276StatusC2Em = comdat any

$_ZN10tensorflow6Tensor16CopyFromInternalERKS0_RKNS_11TensorShapeE = comdat any

$_ZN3tsl8internal12Check_EQImplIllEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc = comdat any

$_ZNK3tsl4core10RefCounted3RefEv = comdat any

$_ZN3tsl8internal17MakeCheckOpStringIllEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc = comdat any

$_ZTIN10tensorflow23AbstractTensorInterfaceE = comdat any

$_ZTSN10tensorflow23AbstractTensorInterfaceE = comdat any

$_ZTVN10tensorflow23AbstractTensorInterfaceE = comdat any

$_ZTV16TF_ManagedBuffer = comdat any

$_ZTI16TF_ManagedBuffer = comdat any

$_ZTVN3tsl4core10RefCountedE = comdat any

$_ZTIN3tsl4core10RefCountedE = comdat any

$_ZTSN3tsl4core10RefCountedE = comdat any

$_ZTS16TF_ManagedBuffer = comdat any

@__const.main.dims = private unnamed_addr constant [2 x i64] [i64 2, i64 2], align 16
@.str = private unnamed_addr constant [12 x i8] c"tensor_data\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"t != NULL\00", align 1
@.str.2 = private unnamed_addr constant [76 x i8] c"/home/mushfiqur/Desktop/Github/tensorflow/tensorflow/c/tf_tensor_harness.cc\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [11 x i8] c"int main()\00", align 1
@_ZTVN10tensorflow15TensorInterfaceE = dso_local unnamed_addr constant { [14 x i8*] } { [14 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN10tensorflow15TensorInterfaceE to i8*), i8* bitcast (void (%"class.tensorflow::TensorInterface"*)* @_ZN10tensorflow15TensorInterface7ReleaseEv to i8*), i8* bitcast (i32 (%"class.tensorflow::TensorInterface"*)* @_ZNK10tensorflow15TensorInterface4TypeEv to i8*), i8* bitcast (i32 (%"class.tensorflow::TensorInterface"*)* @_ZNK10tensorflow15TensorInterface7NumDimsEv to i8*), i8* bitcast (i64 (%"class.tensorflow::TensorInterface"*, i32)* @_ZNK10tensorflow15TensorInterface3DimEi to i8*), i8* bitcast (i64 (%"class.tensorflow::TensorInterface"*)* @_ZNK10tensorflow15TensorInterface11NumElementsEv to i8*), i8* bitcast (i64 (%"class.tensorflow::TensorInterface"*)* @_ZNK10tensorflow15TensorInterface8ByteSizeEv to i8*), i8* bitcast (i8* (%"class.tensorflow::TensorInterface"*)* @_ZNK10tensorflow15TensorInterface4DataEv to i8*), i8* bitcast (i1 (%"class.tensorflow::TensorInterface"*)* @_ZNK10tensorflow15TensorInterface9IsAlignedEv to i8*), i8* bitcast (i1 (%"class.tensorflow::TensorInterface"*)* @_ZNK10tensorflow15TensorInterface7CanMoveEv to i8*), i8* bitcast (void (%"class.std::__cxx11::basic_string"*, %"class.tensorflow::TensorInterface"*)* @_ZNK10tensorflow15TensorInterface14SummarizeValueB5cxx11Ev to i8*), i8* bitcast (void (%"class.tensorflow::TensorInterface"*)* @_ZN10tensorflow15TensorInterfaceD2Ev to i8*), i8* bitcast (void (%"class.tensorflow::TensorInterface"*)* @_ZN10tensorflow15TensorInterfaceD0Ev to i8*)] }, align 8
@_ZTIN10tensorflow15TensorInterfaceE = dso_local constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @_ZTSN10tensorflow15TensorInterfaceE, i32 0, i32 0), i8* bitcast ({ i8*, i8* }* @_ZTIN10tensorflow23AbstractTensorInterfaceE to i8*) }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external dso_local global i8*
@_ZTSN10tensorflow15TensorInterfaceE = dso_local constant [32 x i8] c"N10tensorflow15TensorInterfaceE\00", align 1
@_ZTIN10tensorflow23AbstractTensorInterfaceE = linkonce_odr dso_local constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv117__class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @_ZTSN10tensorflow23AbstractTensorInterfaceE, i32 0, i32 0) }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external dso_local global i8*
@_ZTSN10tensorflow23AbstractTensorInterfaceE = linkonce_odr dso_local constant [40 x i8] c"N10tensorflow23AbstractTensorInterfaceE\00", comdat, align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_tf_tensor.cc, i8* null }]
@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@.str.12 = private unnamed_addr constant [42 x i8] c"basic_string::_M_construct null not valid\00", align 1
@.str.2.1 = private unnamed_addr constant [17 x i8] c"TensorFlow C Api\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"TF_AllocateTensor\00", align 1
@_ZTVN10tensorflow23AbstractTensorInterfaceE = linkonce_odr dso_local unnamed_addr constant { [14 x i8*] } { [14 x i8*] [i8* null, i8* bitcast ({ i8*, i8* }* @_ZTIN10tensorflow23AbstractTensorInterfaceE to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void (%"class.tensorflow::AbstractTensorInterface"*)* @_ZN10tensorflow23AbstractTensorInterfaceD2Ev to i8*), i8* bitcast (void (%"class.tensorflow::AbstractTensorInterface"*)* @_ZN10tensorflow23AbstractTensorInterfaceD0Ev to i8*)] }, comdat, align 8
@.str.6 = private unnamed_addr constant [16 x i8] c"ref_.load() > 0\00", align 1
@.str.1.2 = private unnamed_addr constant [98 x i8] c"/home/mushfiqur/Desktop/Github/tensorflow/third_party/xla/third_party/tsl/tsl/platform/refcount.h\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@_ZTV16TF_ManagedBuffer = linkonce_odr dso_local unnamed_addr constant { [11 x i8*] } { [11 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTI16TF_ManagedBuffer to i8*), i8* bitcast (void (%class.TF_ManagedBuffer*)* @_ZN16TF_ManagedBufferD2Ev to i8*), i8* bitcast (void (%class.TF_ManagedBuffer*)* @_ZN16TF_ManagedBufferD0Ev to i8*), i8* bitcast (void (%"class.tsl::core::RefCounted"*)* @_ZNK3tsl4core10RefCounted13NotifyDeletedEv to i8*), i8* bitcast (i64 (%class.TF_ManagedBuffer*)* @_ZNK16TF_ManagedBuffer4sizeEv to i8*), i8* bitcast (%"class.tensorflow::TensorBuffer"* (%class.TF_ManagedBuffer*)* @_ZN16TF_ManagedBuffer11root_bufferEv to i8*), i8* bitcast (void (%class.TF_ManagedBuffer*, %"class.tensorflow::AllocationDescription"*)* @_ZNK16TF_ManagedBuffer25FillAllocationDescriptionEPN10tensorflow21AllocationDescriptionE to i8*), i8* bitcast (i1 (%"class.tensorflow::TensorBuffer"*, i64*)* @_ZNK10tensorflow12TensorBuffer17GetAllocatedBytesEPm to i8*), i8* bitcast (i1 (%class.TF_ManagedBuffer*)* @_ZNK16TF_ManagedBuffer10OwnsMemoryEv to i8*), i8* bitcast (i32 (%"class.tensorflow::TensorBuffer"*)* @_ZNK10tensorflow12TensorBuffer13GetMemoryTypeEv to i8*)] }, comdat, align 8
@_ZTI16TF_ManagedBuffer = linkonce_odr dso_local constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @_ZTS16TF_ManagedBuffer, i32 0, i32 0), i8* bitcast (i8** @_ZTIN10tensorflow12TensorBufferE to i8*) }, comdat, align 8
@_ZTVN3tsl4core10RefCountedE = linkonce_odr dso_local unnamed_addr constant { [5 x i8*] } { [5 x i8*] [i8* null, i8* bitcast ({ i8*, i8* }* @_ZTIN3tsl4core10RefCountedE to i8*), i8* bitcast (void (%"class.tsl::core::RefCounted"*)* @_ZN3tsl4core10RefCountedD2Ev to i8*), i8* bitcast (void (%"class.tsl::core::RefCounted"*)* @_ZN3tsl4core10RefCountedD0Ev to i8*), i8* bitcast (void (%"class.tsl::core::RefCounted"*)* @_ZNK3tsl4core10RefCounted13NotifyDeletedEv to i8*)] }, comdat, align 8
@.str.4 = private unnamed_addr constant [17 x i8] c"ref_.load() == 0\00", align 1
@_ZTIN3tsl4core10RefCountedE = linkonce_odr dso_local constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv117__class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @_ZTSN3tsl4core10RefCountedE, i32 0, i32 0) }, comdat, align 8
@_ZTSN3tsl4core10RefCountedE = linkonce_odr dso_local constant [24 x i8] c"N3tsl4core10RefCountedE\00", comdat, align 1
@_ZTS16TF_ManagedBuffer = linkonce_odr dso_local constant [19 x i8] c"16TF_ManagedBuffer\00", comdat, align 1
@_ZTIN10tensorflow12TensorBufferE = external dso_local constant i8*
@_ZTVN10tensorflow12TensorBufferE = external dso_local unnamed_addr constant { [11 x i8*] }, align 8
@.str.4.7 = private unnamed_addr constant [13 x i8] c"TF_NewTensor\00", align 1
@_ZN10tensorflowL22kDataTypesCanUseMemcpyE = internal constant %"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::Storage.4" { i64 8586788734 }, align 8
@.str.7 = private unnamed_addr constant [31 x i8] c"static_cast<uint32>(dt) < 256u\00", align 1
@.str.8 = private unnamed_addr constant [83 x i8] c"/home/mushfiqur/Desktop/Github/tensorflow/tensorflow/core/framework/tensor_shape.h\00", align 1
@.str.13 = private unnamed_addr constant [47 x i8] c"f == nullptr || dynamic_cast<To>(f) != nullptr\00", align 1
@.str.14 = private unnamed_addr constant [91 x i8] c"/home/mushfiqur/Desktop/Github/tensorflow/third_party/xla/xla/tsl/platform/default/casts.h\00", align 1
@__PRETTY_FUNCTION__._ZN10tensorflow9down_castIPNS_15TensorInterfaceENS_23AbstractTensorInterfaceEEET_PT0_ = private unnamed_addr constant [114 x i8] c"To tensorflow::down_cast(From *) [To = tensorflow::TensorInterface *, From = tensorflow::AbstractTensorInterface]\00", align 1
@.str.9 = private unnamed_addr constant [44 x i8] c"shape.num_elements() == other.NumElements()\00", align 1
@.str.10 = private unnamed_addr constant [77 x i8] c"/home/mushfiqur/Desktop/Github/tensorflow/tensorflow/core/framework/tensor.h\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"old_ref > 0\00", align 1
@__PRETTY_FUNCTION__._ZN10tensorflow9down_castIPKNS_15TensorInterfaceENS_23AbstractTensorInterfaceEEET_PT0_ = private unnamed_addr constant [120 x i8] c"To tensorflow::down_cast(From *) [To = const tensorflow::TensorInterface *, From = tensorflow::AbstractTensorInterface]\00", align 1
@__dso_handle = hidden global i8* null, align 8, !dbg !0
@.str.15 = private unnamed_addr constant [67 x i8] c"/home/mushfiqur/tools/klee/runtime/Intrinsic/klee_div_zero_check.c\00", align 1
@.str.1.16 = private unnamed_addr constant [15 x i8] c"divide by zero\00", align 1
@.str.2.17 = private unnamed_addr constant [8 x i8] c"div.err\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"IGNORED\00", align 1
@.str.1.21 = private unnamed_addr constant [16 x i8] c"overshift error\00", align 1
@.str.2.22 = private unnamed_addr constant [14 x i8] c"overshift.err\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_Z17dummy_deallocatorPvmS_(i8* %data, i64 %len, i8* %arg) #0 {
entry:
  %data.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %arg.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  ret void
}

; Function Attrs: noinline norecurse optnone uwtable
define dso_local i32 @main() #1 {
entry:
  call void @klee.ctor_stub()
  %retval = alloca i32, align 4
  %dims = alloca [2 x i64], align 16
  %num_dims = alloca i32, align 4
  %len = alloca i64, align 8
  %data = alloca float*, align 8
  %t = alloca %struct.TF_Tensor*, align 8
  store i32 0, i32* %retval, align 4
  %0 = bitcast [2 x i64]* %dims to i8*
  %1 = call i8* @memcpy(i8* %0, i8* bitcast ([2 x i64]* @__const.main.dims to i8*), i64 16)
  store i32 2, i32* %num_dims, align 4
  store i64 16, i64* %len, align 8
  %2 = load i64, i64* %len, align 8
  %call = call noalias i8* @malloc(i64 %2) #11
  %3 = bitcast i8* %call to float*
  store float* %3, float** %data, align 8
  %4 = load float*, float** %data, align 8
  %5 = bitcast float* %4 to i8*
  %6 = load i64, i64* %len, align 8
  call void @klee_make_symbolic(i8* %5, i64 %6, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %arraydecay = getelementptr inbounds [2 x i64], [2 x i64]* %dims, i64 0, i64 0
  %7 = load i32, i32* %num_dims, align 4
  %8 = load float*, float** %data, align 8
  %9 = bitcast float* %8 to i8*
  %10 = load i64, i64* %len, align 8
  %call1 = call %struct.TF_Tensor* @TF_NewTensor(i32 1, i64* %arraydecay, i32 %7, i8* %9, i64 %10, void (i8*, i64, i8*)* @_Z17dummy_deallocatorPvmS_, i8* null)
  store %struct.TF_Tensor* %call1, %struct.TF_Tensor** %t, align 8
  %11 = load %struct.TF_Tensor*, %struct.TF_Tensor** %t, align 8
  %cmp = icmp ne %struct.TF_Tensor* %11, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.2, i64 0, i64 0), i32 28, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #16
  unreachable

12:                                               ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %12, %cond.true
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #3

declare dso_local void @klee_make_symbolic(i8*, i64, i8*) #4

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8*, i8*, i32, i8*) #5

; Function Attrs: noinline optnone uwtable
define dso_local void @_ZN10tensorflow15TensorInterface7ReleaseEv(%"class.tensorflow::TensorInterface"* %this) unnamed_addr #6 align 2 {
entry:
  %this.addr = alloca %"class.tensorflow::TensorInterface"*, align 8
  %data = alloca %struct.TF_TString*, align 8
  %i = alloca i64, align 8
  store %"class.tensorflow::TensorInterface"* %this, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  %this1 = load %"class.tensorflow::TensorInterface"*, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  %0 = bitcast %"class.tensorflow::TensorInterface"* %this1 to i32 (%"class.tensorflow::TensorInterface"*)***
  %vtable = load i32 (%"class.tensorflow::TensorInterface"*)**, i32 (%"class.tensorflow::TensorInterface"*)*** %0, align 8
  %vfn = getelementptr inbounds i32 (%"class.tensorflow::TensorInterface"*)*, i32 (%"class.tensorflow::TensorInterface"*)** %vtable, i64 1
  %1 = load i32 (%"class.tensorflow::TensorInterface"*)*, i32 (%"class.tensorflow::TensorInterface"*)** %vfn, align 8
  %call = call i32 %1(%"class.tensorflow::TensorInterface"* %this1)
  %cmp = icmp eq i32 %call, 7
  br i1 %cmp, label %land.lhs.true, label %if.end19

land.lhs.true:                                    ; preds = %entry
  %2 = bitcast %"class.tensorflow::TensorInterface"* %this1 to i64 (%"class.tensorflow::TensorInterface"*)***
  %vtable2 = load i64 (%"class.tensorflow::TensorInterface"*)**, i64 (%"class.tensorflow::TensorInterface"*)*** %2, align 8
  %vfn3 = getelementptr inbounds i64 (%"class.tensorflow::TensorInterface"*)*, i64 (%"class.tensorflow::TensorInterface"*)** %vtable2, i64 4
  %3 = load i64 (%"class.tensorflow::TensorInterface"*)*, i64 (%"class.tensorflow::TensorInterface"*)** %vfn3, align 8
  %call4 = call i64 %3(%"class.tensorflow::TensorInterface"* %this1)
  %cmp5 = icmp sgt i64 %call4, 0
  br i1 %cmp5, label %if.then, label %if.end19

if.then:                                          ; preds = %land.lhs.true
  %4 = bitcast %"class.tensorflow::TensorInterface"* %this1 to i8* (%"class.tensorflow::TensorInterface"*)***
  %vtable6 = load i8* (%"class.tensorflow::TensorInterface"*)**, i8* (%"class.tensorflow::TensorInterface"*)*** %4, align 8
  %vfn7 = getelementptr inbounds i8* (%"class.tensorflow::TensorInterface"*)*, i8* (%"class.tensorflow::TensorInterface"*)** %vtable6, i64 6
  %5 = load i8* (%"class.tensorflow::TensorInterface"*)*, i8* (%"class.tensorflow::TensorInterface"*)** %vfn7, align 8
  %call8 = call i8* %5(%"class.tensorflow::TensorInterface"* %this1)
  %6 = bitcast i8* %call8 to %struct.TF_TString*
  store %struct.TF_TString* %6, %struct.TF_TString** %data, align 8
  %7 = bitcast %"class.tensorflow::TensorInterface"* %this1 to i1 (%"class.tensorflow::TensorInterface"*)***
  %vtable9 = load i1 (%"class.tensorflow::TensorInterface"*)**, i1 (%"class.tensorflow::TensorInterface"*)*** %7, align 8
  %vfn10 = getelementptr inbounds i1 (%"class.tensorflow::TensorInterface"*)*, i1 (%"class.tensorflow::TensorInterface"*)** %vtable9, i64 8
  %8 = load i1 (%"class.tensorflow::TensorInterface"*)*, i1 (%"class.tensorflow::TensorInterface"*)** %vfn10, align 8
  %call11 = call zeroext i1 %8(%"class.tensorflow::TensorInterface"* %this1)
  br i1 %call11, label %land.lhs.true12, label %if.end

land.lhs.true12:                                  ; preds = %if.then
  %9 = load %struct.TF_TString*, %struct.TF_TString** %data, align 8
  %cmp13 = icmp ne %struct.TF_TString* %9, null
  br i1 %cmp13, label %if.then14, label %if.end

if.then14:                                        ; preds = %land.lhs.true12
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then14
  %10 = load i64, i64* %i, align 8
  %11 = bitcast %"class.tensorflow::TensorInterface"* %this1 to i64 (%"class.tensorflow::TensorInterface"*)***
  %vtable15 = load i64 (%"class.tensorflow::TensorInterface"*)**, i64 (%"class.tensorflow::TensorInterface"*)*** %11, align 8
  %vfn16 = getelementptr inbounds i64 (%"class.tensorflow::TensorInterface"*)*, i64 (%"class.tensorflow::TensorInterface"*)** %vtable15, i64 4
  %12 = load i64 (%"class.tensorflow::TensorInterface"*)*, i64 (%"class.tensorflow::TensorInterface"*)** %vfn16, align 8
  %call17 = call i64 %12(%"class.tensorflow::TensorInterface"* %this1)
  %cmp18 = icmp slt i64 %10, %call17
  br i1 %cmp18, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load %struct.TF_TString*, %struct.TF_TString** %data, align 8
  %14 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds %struct.TF_TString, %struct.TF_TString* %13, i64 %14
  call void @_ZL18TF_TString_DeallocP10TF_TString(%struct.TF_TString* %arrayidx)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i64, i64* %i, align 8
  %inc = add nsw i64 %15, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %land.lhs.true12, %if.then
  br label %if.end19

if.end19:                                         ; preds = %if.end, %land.lhs.true, %entry
  %isnull = icmp eq %"class.tensorflow::TensorInterface"* %this1, null
  br i1 %isnull, label %delete.end, label %delete.notnull

delete.notnull:                                   ; preds = %if.end19
  %16 = bitcast %"class.tensorflow::TensorInterface"* %this1 to void (%"class.tensorflow::TensorInterface"*)***
  %vtable20 = load void (%"class.tensorflow::TensorInterface"*)**, void (%"class.tensorflow::TensorInterface"*)*** %16, align 8
  %vfn21 = getelementptr inbounds void (%"class.tensorflow::TensorInterface"*)*, void (%"class.tensorflow::TensorInterface"*)** %vtable20, i64 11
  %17 = load void (%"class.tensorflow::TensorInterface"*)*, void (%"class.tensorflow::TensorInterface"*)** %vfn21, align 8
  call void %17(%"class.tensorflow::TensorInterface"* %this1) #11
  br label %delete.end

delete.end:                                       ; preds = %delete.notnull, %if.end19
  ret void
}

; Function Attrs: noinline optnone uwtable
define dso_local i32 @_ZNK10tensorflow15TensorInterface4TypeEv(%"class.tensorflow::TensorInterface"* %this) unnamed_addr #6 align 2 {
entry:
  %this.addr = alloca %"class.tensorflow::TensorInterface"*, align 8
  store %"class.tensorflow::TensorInterface"* %this, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  %this1 = load %"class.tensorflow::TensorInterface"*, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  %tensor_ = getelementptr inbounds %"class.tensorflow::TensorInterface", %"class.tensorflow::TensorInterface"* %this1, i32 0, i32 1
  %call = call i32 @_ZNK10tensorflow6Tensor5dtypeEv(%"class.tensorflow::Tensor"* %tensor_)
  ret i32 %call
}

; Function Attrs: noinline optnone uwtable
define dso_local i32 @_ZNK10tensorflow15TensorInterface7NumDimsEv(%"class.tensorflow::TensorInterface"* %this) unnamed_addr #6 align 2 {
entry:
  %this.addr = alloca %"class.tensorflow::TensorInterface"*, align 8
  store %"class.tensorflow::TensorInterface"* %this, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  %this1 = load %"class.tensorflow::TensorInterface"*, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  %tensor_ = getelementptr inbounds %"class.tensorflow::TensorInterface", %"class.tensorflow::TensorInterface"* %this1, i32 0, i32 1
  %call = call i32 @_ZNK10tensorflow6Tensor4dimsEv(%"class.tensorflow::Tensor"* %tensor_)
  ret i32 %call
}

; Function Attrs: noinline optnone uwtable
define dso_local i64 @_ZNK10tensorflow15TensorInterface3DimEi(%"class.tensorflow::TensorInterface"* %this, i32 %dim_index) unnamed_addr #6 align 2 {
entry:
  %this.addr = alloca %"class.tensorflow::TensorInterface"*, align 8
  %dim_index.addr = alloca i32, align 4
  store %"class.tensorflow::TensorInterface"* %this, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  store i32 %dim_index, i32* %dim_index.addr, align 4
  %this1 = load %"class.tensorflow::TensorInterface"*, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  %tensor_ = getelementptr inbounds %"class.tensorflow::TensorInterface", %"class.tensorflow::TensorInterface"* %this1, i32 0, i32 1
  %0 = load i32, i32* %dim_index.addr, align 4
  %call = call i64 @_ZNK10tensorflow6Tensor8dim_sizeEi(%"class.tensorflow::Tensor"* %tensor_, i32 %0)
  ret i64 %call
}

; Function Attrs: noinline optnone uwtable
define dso_local i64 @_ZNK10tensorflow15TensorInterface11NumElementsEv(%"class.tensorflow::TensorInterface"* %this) unnamed_addr #6 align 2 {
entry:
  %this.addr = alloca %"class.tensorflow::TensorInterface"*, align 8
  store %"class.tensorflow::TensorInterface"* %this, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  %this1 = load %"class.tensorflow::TensorInterface"*, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  %tensor_ = getelementptr inbounds %"class.tensorflow::TensorInterface", %"class.tensorflow::TensorInterface"* %this1, i32 0, i32 1
  %call = call i64 @_ZNK10tensorflow6Tensor11NumElementsEv(%"class.tensorflow::Tensor"* %tensor_)
  ret i64 %call
}

; Function Attrs: noinline optnone uwtable
define dso_local i64 @_ZNK10tensorflow15TensorInterface8ByteSizeEv(%"class.tensorflow::TensorInterface"* %this) unnamed_addr #6 align 2 {
entry:
  %this.addr = alloca %"class.tensorflow::TensorInterface"*, align 8
  store %"class.tensorflow::TensorInterface"* %this, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  %this1 = load %"class.tensorflow::TensorInterface"*, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  %tensor_ = getelementptr inbounds %"class.tensorflow::TensorInterface", %"class.tensorflow::TensorInterface"* %this1, i32 0, i32 1
  %call = call %"class.tensorflow::TensorBuffer"* @_ZN10tensorflow10TensorCApi6BufferERKNS_6TensorE(%"class.tensorflow::Tensor"* nonnull align 8 dereferenceable(32) %tensor_)
  %0 = bitcast %"class.tensorflow::TensorBuffer"* %call to i64 (%"class.tensorflow::TensorBuffer"*)***
  %vtable = load i64 (%"class.tensorflow::TensorBuffer"*)**, i64 (%"class.tensorflow::TensorBuffer"*)*** %0, align 8
  %vfn = getelementptr inbounds i64 (%"class.tensorflow::TensorBuffer"*)*, i64 (%"class.tensorflow::TensorBuffer"*)** %vtable, i64 3
  %1 = load i64 (%"class.tensorflow::TensorBuffer"*)*, i64 (%"class.tensorflow::TensorBuffer"*)** %vfn, align 8
  %call2 = call i64 %1(%"class.tensorflow::TensorBuffer"* %call)
  ret i64 %call2
}

; Function Attrs: noinline optnone uwtable
define dso_local i8* @_ZNK10tensorflow15TensorInterface4DataEv(%"class.tensorflow::TensorInterface"* %this) unnamed_addr #6 align 2 {
entry:
  %this.addr = alloca %"class.tensorflow::TensorInterface"*, align 8
  store %"class.tensorflow::TensorInterface"* %this, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  %this1 = load %"class.tensorflow::TensorInterface"*, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  %tensor_ = getelementptr inbounds %"class.tensorflow::TensorInterface", %"class.tensorflow::TensorInterface"* %this1, i32 0, i32 1
  %call = call %"class.tensorflow::TensorBuffer"* @_ZN10tensorflow10TensorCApi6BufferERKNS_6TensorE(%"class.tensorflow::Tensor"* nonnull align 8 dereferenceable(32) %tensor_)
  %call2 = call i8* @_ZNK10tensorflow12TensorBuffer4dataEv(%"class.tensorflow::TensorBuffer"* %call)
  ret i8* %call2
}

; Function Attrs: noinline optnone uwtable
define dso_local zeroext i1 @_ZNK10tensorflow15TensorInterface9IsAlignedEv(%"class.tensorflow::TensorInterface"* %this) unnamed_addr #6 align 2 {
entry:
  %this.addr = alloca %"class.tensorflow::TensorInterface"*, align 8
  store %"class.tensorflow::TensorInterface"* %this, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  %this1 = load %"class.tensorflow::TensorInterface"*, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  %tensor_ = getelementptr inbounds %"class.tensorflow::TensorInterface", %"class.tensorflow::TensorInterface"* %this1, i32 0, i32 1
  %call = call zeroext i1 @_ZNK10tensorflow6Tensor9IsAlignedEv(%"class.tensorflow::Tensor"* %tensor_)
  ret i1 %call
}

; Function Attrs: noinline optnone uwtable
define dso_local zeroext i1 @_ZNK10tensorflow15TensorInterface7CanMoveEv(%"class.tensorflow::TensorInterface"* %this) unnamed_addr #6 align 2 {
entry:
  %retval = alloca i1, align 1
  %this.addr = alloca %"class.tensorflow::TensorInterface"*, align 8
  %buf = alloca %"class.tensorflow::TensorBuffer"*, align 8
  store %"class.tensorflow::TensorInterface"* %this, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  %this1 = load %"class.tensorflow::TensorInterface"*, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  %tensor_ = getelementptr inbounds %"class.tensorflow::TensorInterface", %"class.tensorflow::TensorInterface"* %this1, i32 0, i32 1
  %call = call %"class.tensorflow::TensorBuffer"* @_ZN10tensorflow10TensorCApi6BufferERKNS_6TensorE(%"class.tensorflow::Tensor"* nonnull align 8 dereferenceable(32) %tensor_)
  store %"class.tensorflow::TensorBuffer"* %call, %"class.tensorflow::TensorBuffer"** %buf, align 8
  %0 = load %"class.tensorflow::TensorBuffer"*, %"class.tensorflow::TensorBuffer"** %buf, align 8
  %1 = bitcast %"class.tensorflow::TensorBuffer"* %0 to %"class.tsl::core::RefCounted"*
  %call2 = call zeroext i1 @_ZNK3tsl4core10RefCounted13RefCountIsOneEv(%"class.tsl::core::RefCounted"* %1)
  br i1 %call2, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load %"class.tensorflow::TensorBuffer"*, %"class.tensorflow::TensorBuffer"** %buf, align 8
  %3 = bitcast %"class.tensorflow::TensorBuffer"* %2 to %"class.tensorflow::TensorBuffer"* (%"class.tensorflow::TensorBuffer"*)***
  %vtable = load %"class.tensorflow::TensorBuffer"* (%"class.tensorflow::TensorBuffer"*)**, %"class.tensorflow::TensorBuffer"* (%"class.tensorflow::TensorBuffer"*)*** %3, align 8
  %vfn = getelementptr inbounds %"class.tensorflow::TensorBuffer"* (%"class.tensorflow::TensorBuffer"*)*, %"class.tensorflow::TensorBuffer"* (%"class.tensorflow::TensorBuffer"*)** %vtable, i64 4
  %4 = load %"class.tensorflow::TensorBuffer"* (%"class.tensorflow::TensorBuffer"*)*, %"class.tensorflow::TensorBuffer"* (%"class.tensorflow::TensorBuffer"*)** %vfn, align 8
  %call3 = call %"class.tensorflow::TensorBuffer"* %4(%"class.tensorflow::TensorBuffer"* %2)
  %5 = bitcast %"class.tensorflow::TensorBuffer"* %call3 to %"class.tsl::core::RefCounted"*
  %call4 = call zeroext i1 @_ZNK3tsl4core10RefCounted13RefCountIsOneEv(%"class.tsl::core::RefCounted"* %5)
  br i1 %call4, label %land.lhs.true5, label %if.end

land.lhs.true5:                                   ; preds = %land.lhs.true
  %6 = load %"class.tensorflow::TensorBuffer"*, %"class.tensorflow::TensorBuffer"** %buf, align 8
  %7 = bitcast %"class.tensorflow::TensorBuffer"* %6 to i1 (%"class.tensorflow::TensorBuffer"*)***
  %vtable6 = load i1 (%"class.tensorflow::TensorBuffer"*)**, i1 (%"class.tensorflow::TensorBuffer"*)*** %7, align 8
  %vfn7 = getelementptr inbounds i1 (%"class.tensorflow::TensorBuffer"*)*, i1 (%"class.tensorflow::TensorBuffer"*)** %vtable6, i64 7
  %8 = load i1 (%"class.tensorflow::TensorBuffer"*)*, i1 (%"class.tensorflow::TensorBuffer"*)** %vfn7, align 8
  %call8 = call zeroext i1 %8(%"class.tensorflow::TensorBuffer"* %6)
  br i1 %call8, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true5
  store i1 true, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %land.lhs.true5, %land.lhs.true, %entry
  store i1 false, i1* %retval, align 1
  br label %return

return:                                           ; preds = %if.end, %if.then
  %9 = load i1, i1* %retval, align 1
  ret i1 %9
}

; Function Attrs: noinline optnone uwtable
define dso_local void @_ZNK10tensorflow15TensorInterface14SummarizeValueB5cxx11Ev(%"class.std::__cxx11::basic_string"* noalias sret align 8 %agg.result, %"class.tensorflow::TensorInterface"* %this) unnamed_addr #6 align 2 {
entry:
  %result.ptr = alloca i8*, align 8
  %this.addr = alloca %"class.tensorflow::TensorInterface"*, align 8
  %0 = bitcast %"class.std::__cxx11::basic_string"* %agg.result to i8*
  store i8* %0, i8** %result.ptr, align 8
  store %"class.tensorflow::TensorInterface"* %this, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  %this1 = load %"class.tensorflow::TensorInterface"*, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  %tensor_ = getelementptr inbounds %"class.tensorflow::TensorInterface", %"class.tensorflow::TensorInterface"* %this1, i32 0, i32 1
  call void @_ZNK10tensorflow6Tensor14SummarizeValueB5cxx11Elb(%"class.std::__cxx11::basic_string"* sret align 8 %agg.result, %"class.tensorflow::Tensor"* %tensor_, i64 3, i1 zeroext true)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow15TensorInterfaceD2Ev(%"class.tensorflow::TensorInterface"* %this) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.tensorflow::TensorInterface"*, align 8
  store %"class.tensorflow::TensorInterface"* %this, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  %this1 = load %"class.tensorflow::TensorInterface"*, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  %0 = bitcast %"class.tensorflow::TensorInterface"* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [14 x i8*] }, { [14 x i8*] }* @_ZTVN10tensorflow15TensorInterfaceE, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %0, align 8
  %tensor_ = getelementptr inbounds %"class.tensorflow::TensorInterface", %"class.tensorflow::TensorInterface"* %this1, i32 0, i32 1
  call void @_ZN10tensorflow6TensorD1Ev(%"class.tensorflow::Tensor"* %tensor_) #11
  %1 = bitcast %"class.tensorflow::TensorInterface"* %this1 to %"class.tensorflow::AbstractTensorInterface"*
  call void @_ZN10tensorflow23AbstractTensorInterfaceD2Ev(%"class.tensorflow::AbstractTensorInterface"* %1) #11
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow15TensorInterfaceD0Ev(%"class.tensorflow::TensorInterface"* %this) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.tensorflow::TensorInterface"*, align 8
  store %"class.tensorflow::TensorInterface"* %this, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  %this1 = load %"class.tensorflow::TensorInterface"*, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  call void @_ZN10tensorflow15TensorInterfaceD2Ev(%"class.tensorflow::TensorInterface"* %this1) #11
  %0 = bitcast %"class.tensorflow::TensorInterface"* %this1 to i8*
  call void @_ZdlPv(i8* %0) #19
  ret void
}

; Function Attrs: nobuiltin nounwind
declare dso_local void @_ZdlPv(i8*) #7

; Function Attrs: nounwind
declare dso_local void @_ZN10tensorflow6TensorD1Ev(%"class.tensorflow::Tensor"*) unnamed_addr #3

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow23AbstractTensorInterfaceD2Ev(%"class.tensorflow::AbstractTensorInterface"* %this) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.tensorflow::AbstractTensorInterface"*, align 8
  store %"class.tensorflow::AbstractTensorInterface"* %this, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  %this1 = load %"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  ret void
}

declare dso_local void @_ZNK10tensorflow6Tensor14SummarizeValueB5cxx11Elb(%"class.std::__cxx11::basic_string"* sret align 8, %"class.tensorflow::Tensor"*, i64, i1 zeroext) #4

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %"class.tensorflow::TensorBuffer"* @_ZN10tensorflow10TensorCApi6BufferERKNS_6TensorE(%"class.tensorflow::Tensor"* nonnull align 8 dereferenceable(32) %tensor) #0 comdat align 2 {
entry:
  %tensor.addr = alloca %"class.tensorflow::Tensor"*, align 8
  store %"class.tensorflow::Tensor"* %tensor, %"class.tensorflow::Tensor"** %tensor.addr, align 8
  %0 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %tensor.addr, align 8
  %buf_ = getelementptr inbounds %"class.tensorflow::Tensor", %"class.tensorflow::Tensor"* %0, i32 0, i32 1
  %1 = load %"class.tensorflow::TensorBuffer"*, %"class.tensorflow::TensorBuffer"** %buf_, align 8
  ret %"class.tensorflow::TensorBuffer"* %1
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local zeroext i1 @_ZNK3tsl4core10RefCounted13RefCountIsOneEv(%"class.tsl::core::RefCounted"* %this) #0 comdat align 2 personality i32 (...)* @__gxx_personality_v0 {
entry:
  %this.addr.i = alloca %"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::Storage.4"*, align 8
  %__m.addr.i = alloca i32, align 4
  %__b.i = alloca i32, align 4
  %atomic-temp.i = alloca i64, align 8
  %this.addr = alloca %"class.tsl::core::RefCounted"*, align 8
  store %"class.tsl::core::RefCounted"* %this, %"class.tsl::core::RefCounted"** %this.addr, align 8
  %this1 = load %"class.tsl::core::RefCounted"*, %"class.tsl::core::RefCounted"** %this.addr, align 8
  %ref_ = getelementptr inbounds %"class.tsl::core::RefCounted", %"class.tsl::core::RefCounted"* %this1, i32 0, i32 1
  %0 = bitcast %"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::CompressedTupleImpl"* %ref_ to %"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::Storage.4"*
  store %"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::Storage.4"* %0, %"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::Storage.4"** %this.addr.i, align 8
  store i32 2, i32* %__m.addr.i, align 4
  %this1.i = load %"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::Storage.4"*, %"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::Storage.4"** %this.addr.i, align 8
  %1 = load i32, i32* %__m.addr.i, align 4
  %call.i = invoke i32 @_ZStanSt12memory_orderSt23__memory_order_modifier(i32 %1, i32 65535)
          to label %invoke.cont.i unwind label %terminate.lpad.i

invoke.cont.i:                                    ; preds = %entry
  store i32 %call.i, i32* %__b.i, align 4
  %_M_i.i = getelementptr inbounds %"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::Storage.4", %"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::Storage.4"* %this1.i, i32 0, i32 0
  %2 = load i32, i32* %__m.addr.i, align 4
  switch i32 %2, label %monotonic.i [
    i32 1, label %acquire.i
    i32 2, label %acquire.i
    i32 5, label %seqcst.i
  ]

monotonic.i:                                      ; preds = %invoke.cont.i
  %3 = load i64, i64* %_M_i.i, align 8
  store i64 %3, i64* %atomic-temp.i, align 8
  br label %_ZNKSt13__atomic_baseIlE4loadESt12memory_order.exit

acquire.i:                                        ; preds = %invoke.cont.i, %invoke.cont.i
  %4 = load i64, i64* %_M_i.i, align 8
  store i64 %4, i64* %atomic-temp.i, align 8
  br label %_ZNKSt13__atomic_baseIlE4loadESt12memory_order.exit

seqcst.i:                                         ; preds = %invoke.cont.i
  %5 = load i64, i64* %_M_i.i, align 8
  store i64 %5, i64* %atomic-temp.i, align 8
  br label %_ZNKSt13__atomic_baseIlE4loadESt12memory_order.exit

terminate.lpad.i:                                 ; preds = %entry
  %6 = landingpad { i8*, i32 }
          catch i8* null
  %7 = extractvalue { i8*, i32 } %6, 0
  call void @__clang_call_terminate(i8* %7) #16
  unreachable

_ZNKSt13__atomic_baseIlE4loadESt12memory_order.exit: ; preds = %monotonic.i, %acquire.i, %seqcst.i
  %8 = load i64, i64* %atomic-temp.i, align 8
  %cmp = icmp eq i64 %8, 1
  ret i1 %cmp
}

declare dso_local i32 @__gxx_personality_v0(...)

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i32 @_ZStanSt12memory_orderSt23__memory_order_modifier(i32 %__m, i32 %__mod) #0 comdat {
entry:
  %__m.addr = alloca i32, align 4
  %__mod.addr = alloca i32, align 4
  store i32 %__m, i32* %__m.addr, align 4
  store i32 %__mod, i32* %__mod.addr, align 4
  %0 = load i32, i32* %__m.addr, align 4
  %1 = load i32, i32* %__mod.addr, align 4
  %and = and i32 %0, %1
  ret i32 %and
}

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8* %0) #8 comdat {
  %2 = call i8* @__cxa_begin_catch(i8* %0) #11
  call void @_ZSt9terminatev() #16
  unreachable
}

declare dso_local i8* @__cxa_begin_catch(i8*)

declare dso_local void @_ZSt9terminatev()

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local zeroext i1 @_ZNK10tensorflow6Tensor9IsAlignedEv(%"class.tensorflow::Tensor"* %this) #6 comdat align 2 {
entry:
  %this.addr = alloca %"class.tensorflow::Tensor"*, align 8
  %ptr = alloca i8*, align 8
  store %"class.tensorflow::Tensor"* %this, %"class.tensorflow::Tensor"** %this.addr, align 8
  %this1 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %this.addr, align 8
  %call = call i8* @_ZNK10tensorflow6Tensor4baseIvEEPT_v(%"class.tensorflow::Tensor"* %this1)
  store i8* %call, i8** %ptr, align 8
  %call2 = call i32 @_ZNK10tensorflow6Tensor5dtypeEv(%"class.tensorflow::Tensor"* %this1)
  %cmp = icmp eq i32 %call2, 7
  br i1 %cmp, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call3 = call i64 @_ZNK10tensorflow6Tensor11NumElementsEv(%"class.tensorflow::Tensor"* %this1)
  %cmp4 = icmp eq i64 %call3, 0
  br i1 %cmp4, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false
  %0 = load i8*, i8** %ptr, align 8
  %1 = ptrtoint i8* %0 to i64
  %rem = srem i64 %1, 16
  %cmp5 = icmp eq i64 %rem, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %entry
  %2 = phi i1 [ true, %lor.lhs.false ], [ true, %entry ], [ %cmp5, %lor.rhs ]
  ret i1 %2
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i8* @_ZNK10tensorflow6Tensor4baseIvEEPT_v(%"class.tensorflow::Tensor"* %this) #6 comdat align 2 {
entry:
  %this.addr = alloca %"class.tensorflow::Tensor"*, align 8
  store %"class.tensorflow::Tensor"* %this, %"class.tensorflow::Tensor"** %this.addr, align 8
  %this1 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %this.addr, align 8
  %buf_ = getelementptr inbounds %"class.tensorflow::Tensor", %"class.tensorflow::Tensor"* %this1, i32 0, i32 1
  %0 = load %"class.tensorflow::TensorBuffer"*, %"class.tensorflow::TensorBuffer"** %buf_, align 8
  %cmp = icmp eq %"class.tensorflow::TensorBuffer"* %0, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %buf_2 = getelementptr inbounds %"class.tensorflow::Tensor", %"class.tensorflow::Tensor"* %this1, i32 0, i32 1
  %1 = load %"class.tensorflow::TensorBuffer"*, %"class.tensorflow::TensorBuffer"** %buf_2, align 8
  %call = call i8* @_ZNK10tensorflow12TensorBuffer4baseIvEEPT_v(%"class.tensorflow::TensorBuffer"* %1)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ null, %cond.true ], [ %call, %cond.false ]
  ret i8* %cond
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i32 @_ZNK10tensorflow6Tensor5dtypeEv(%"class.tensorflow::Tensor"* %this) #6 comdat align 2 {
entry:
  %this.addr = alloca %"class.tensorflow::Tensor"*, align 8
  store %"class.tensorflow::Tensor"* %this, %"class.tensorflow::Tensor"** %this.addr, align 8
  %this1 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %this.addr, align 8
  %shape_ = getelementptr inbounds %"class.tensorflow::Tensor", %"class.tensorflow::Tensor"* %this1, i32 0, i32 0
  %0 = bitcast %"class.tensorflow::TensorShape"* %shape_ to %"class.tensorflow::TensorShapeRep"*
  %call = call i32 @_ZNK10tensorflow14TensorShapeRep9data_typeEv(%"class.tensorflow::TensorShapeRep"* %0)
  ret i32 %call
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i64 @_ZNK10tensorflow6Tensor11NumElementsEv(%"class.tensorflow::Tensor"* %this) #6 comdat align 2 {
entry:
  %this.addr = alloca %"class.tensorflow::Tensor"*, align 8
  store %"class.tensorflow::Tensor"* %this, %"class.tensorflow::Tensor"** %this.addr, align 8
  %this1 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %this.addr, align 8
  %call = call nonnull align 8 dereferenceable(24) %"class.tensorflow::TensorShape"* @_ZNK10tensorflow6Tensor5shapeEv(%"class.tensorflow::Tensor"* %this1)
  %0 = bitcast %"class.tensorflow::TensorShape"* %call to %"class.tensorflow::TensorShapeRep"*
  %call2 = call i64 @_ZNK10tensorflow14TensorShapeRep12num_elementsEv(%"class.tensorflow::TensorShapeRep"* %0)
  ret i64 %call2
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(24) %"class.tensorflow::TensorShape"* @_ZNK10tensorflow6Tensor5shapeEv(%"class.tensorflow::Tensor"* %this) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.tensorflow::Tensor"*, align 8
  store %"class.tensorflow::Tensor"* %this, %"class.tensorflow::Tensor"** %this.addr, align 8
  %this1 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %this.addr, align 8
  %shape_ = getelementptr inbounds %"class.tensorflow::Tensor", %"class.tensorflow::Tensor"* %this1, i32 0, i32 0
  ret %"class.tensorflow::TensorShape"* %shape_
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @_ZNK10tensorflow14TensorShapeRep12num_elementsEv(%"class.tensorflow::TensorShapeRep"* %this) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.tensorflow::TensorShapeRep"*, align 8
  store %"class.tensorflow::TensorShapeRep"* %this, %"class.tensorflow::TensorShapeRep"** %this.addr, align 8
  %this1 = load %"class.tensorflow::TensorShapeRep"*, %"class.tensorflow::TensorShapeRep"** %this.addr, align 8
  %num_elements_ = getelementptr inbounds %"class.tensorflow::TensorShapeRep", %"class.tensorflow::TensorShapeRep"* %this1, i32 0, i32 1
  %0 = load i64, i64* %num_elements_, align 8
  ret i64 %0
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i32 @_ZNK10tensorflow14TensorShapeRep9data_typeEv(%"class.tensorflow::TensorShapeRep"* %this) #6 comdat align 2 {
entry:
  %this.addr = alloca %"class.tensorflow::TensorShapeRep"*, align 8
  store %"class.tensorflow::TensorShapeRep"* %this, %"class.tensorflow::TensorShapeRep"** %this.addr, align 8
  %this1 = load %"class.tensorflow::TensorShapeRep"*, %"class.tensorflow::TensorShapeRep"** %this.addr, align 8
  %call = call i8* @_ZNK10tensorflow14TensorShapeRep3bufEv(%"class.tensorflow::TensorShapeRep"* %this1)
  %arrayidx = getelementptr inbounds i8, i8* %call, i64 13
  %0 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %0 to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i8* @_ZNK10tensorflow14TensorShapeRep3bufEv(%"class.tensorflow::TensorShapeRep"* %this) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.tensorflow::TensorShapeRep"*, align 8
  store %"class.tensorflow::TensorShapeRep"* %this, %"class.tensorflow::TensorShapeRep"** %this.addr, align 8
  %this1 = load %"class.tensorflow::TensorShapeRep"*, %"class.tensorflow::TensorShapeRep"** %this.addr, align 8
  %u_ = getelementptr inbounds %"class.tensorflow::TensorShapeRep", %"class.tensorflow::TensorShapeRep"* %this1, i32 0, i32 0
  %buf = bitcast %union.anon.0* %u_ to [16 x i8]*
  %arrayidx = getelementptr inbounds [16 x i8], [16 x i8]* %buf, i64 0, i64 0
  ret i8* %arrayidx
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i8* @_ZNK10tensorflow12TensorBuffer4baseIvEEPT_v(%"class.tensorflow::TensorBuffer"* %this) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.tensorflow::TensorBuffer"*, align 8
  store %"class.tensorflow::TensorBuffer"* %this, %"class.tensorflow::TensorBuffer"** %this.addr, align 8
  %this1 = load %"class.tensorflow::TensorBuffer"*, %"class.tensorflow::TensorBuffer"** %this.addr, align 8
  %call = call i8* @_ZNK10tensorflow12TensorBuffer4dataEv(%"class.tensorflow::TensorBuffer"* %this1)
  ret i8* %call
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i8* @_ZNK10tensorflow12TensorBuffer4dataEv(%"class.tensorflow::TensorBuffer"* %this) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.tensorflow::TensorBuffer"*, align 8
  store %"class.tensorflow::TensorBuffer"* %this, %"class.tensorflow::TensorBuffer"** %this.addr, align 8
  %this1 = load %"class.tensorflow::TensorBuffer"*, %"class.tensorflow::TensorBuffer"** %this.addr, align 8
  %data_ = getelementptr inbounds %"class.tensorflow::TensorBuffer", %"class.tensorflow::TensorBuffer"* %this1, i32 0, i32 1
  %0 = load i8*, i8** %data_, align 8
  ret i8* %0
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i64 @_ZNK10tensorflow6Tensor8dim_sizeEi(%"class.tensorflow::Tensor"* %this, i32 %d) #6 comdat align 2 {
entry:
  %this.addr = alloca %"class.tensorflow::Tensor"*, align 8
  %d.addr = alloca i32, align 4
  store %"class.tensorflow::Tensor"* %this, %"class.tensorflow::Tensor"** %this.addr, align 8
  store i32 %d, i32* %d.addr, align 4
  %this1 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %this.addr, align 8
  %call = call nonnull align 8 dereferenceable(24) %"class.tensorflow::TensorShape"* @_ZNK10tensorflow6Tensor5shapeEv(%"class.tensorflow::Tensor"* %this1)
  %0 = bitcast %"class.tensorflow::TensorShape"* %call to %"class.tensorflow::TensorShapeBase"*
  %1 = load i32, i32* %d.addr, align 4
  %call2 = call i64 @_ZNK10tensorflow15TensorShapeBaseINS_11TensorShapeEE8dim_sizeEi(%"class.tensorflow::TensorShapeBase"* %0, i32 %1)
  ret i64 %call2
}

declare dso_local i64 @_ZNK10tensorflow15TensorShapeBaseINS_11TensorShapeEE8dim_sizeEi(%"class.tensorflow::TensorShapeBase"*, i32) #4

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i32 @_ZNK10tensorflow6Tensor4dimsEv(%"class.tensorflow::Tensor"* %this) #6 comdat align 2 {
entry:
  %this.addr = alloca %"class.tensorflow::Tensor"*, align 8
  store %"class.tensorflow::Tensor"* %this, %"class.tensorflow::Tensor"** %this.addr, align 8
  %this1 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %this.addr, align 8
  %call = call nonnull align 8 dereferenceable(24) %"class.tensorflow::TensorShape"* @_ZNK10tensorflow6Tensor5shapeEv(%"class.tensorflow::Tensor"* %this1)
  %0 = bitcast %"class.tensorflow::TensorShape"* %call to %"class.tensorflow::TensorShapeBase"*
  %call2 = call i32 @_ZNK10tensorflow15TensorShapeBaseINS_11TensorShapeEE4dimsEv(%"class.tensorflow::TensorShapeBase"* %0)
  ret i32 %call2
}

declare dso_local i32 @_ZNK10tensorflow15TensorShapeBaseINS_11TensorShapeEE4dimsEv(%"class.tensorflow::TensorShapeBase"*) #4

; Function Attrs: noinline optnone uwtable
define internal void @_ZL18TF_TString_DeallocP10TF_TString(%struct.TF_TString* %str) #6 {
entry:
  %str.addr = alloca %struct.TF_TString*, align 8
  store %struct.TF_TString* %str, %struct.TF_TString** %str.addr, align 8
  %0 = load %struct.TF_TString*, %struct.TF_TString** %str.addr, align 8
  %call = call i32 @_ZL18TF_TString_GetTypePK10TF_TString(%struct.TF_TString* %0)
  %cmp = icmp eq i32 %call, 1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.TF_TString*, %struct.TF_TString** %str.addr, align 8
  %u = getelementptr inbounds %struct.TF_TString, %struct.TF_TString* %1, i32 0, i32 0
  %large = bitcast %union.anon.5* %u to %struct.TF_TString_Large*
  %ptr = getelementptr inbounds %struct.TF_TString_Large, %struct.TF_TString_Large* %large, i32 0, i32 2
  %2 = load i8*, i8** %ptr, align 8
  %cmp1 = icmp ne i8* %2, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %3 = load %struct.TF_TString*, %struct.TF_TString** %str.addr, align 8
  %u2 = getelementptr inbounds %struct.TF_TString, %struct.TF_TString* %3, i32 0, i32 0
  %large3 = bitcast %union.anon.5* %u2 to %struct.TF_TString_Large*
  %ptr4 = getelementptr inbounds %struct.TF_TString_Large, %struct.TF_TString_Large* %large3, i32 0, i32 2
  %4 = load i8*, i8** %ptr4, align 8
  call void @free(i8* %4) #11
  %5 = load %struct.TF_TString*, %struct.TF_TString** %str.addr, align 8
  call void @_ZL15TF_TString_InitP10TF_TString(%struct.TF_TString* %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_ZL18TF_TString_GetTypePK10TF_TString(%struct.TF_TString* %str) #0 {
entry:
  %str.addr = alloca %struct.TF_TString*, align 8
  store %struct.TF_TString* %str, %struct.TF_TString** %str.addr, align 8
  %0 = load %struct.TF_TString*, %struct.TF_TString** %str.addr, align 8
  %u = getelementptr inbounds %struct.TF_TString, %struct.TF_TString* %0, i32 0, i32 0
  %raw = bitcast %union.anon.5* %u to %struct.TF_TString_Raw*
  %raw1 = getelementptr inbounds %struct.TF_TString_Raw, %struct.TF_TString_Raw* %raw, i32 0, i32 0
  %arrayidx = getelementptr inbounds [24 x i8], [24 x i8]* %raw1, i64 0, i64 0
  %1 = load i8, i8* %arrayidx, align 8
  %conv = zext i8 %1 to i32
  %and = and i32 %conv, 3
  ret i32 %and
}

; Function Attrs: nounwind
declare dso_local void @free(i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_ZL15TF_TString_InitP10TF_TString(%struct.TF_TString* %str) #0 {
entry:
  %str.addr = alloca %struct.TF_TString*, align 8
  store %struct.TF_TString* %str, %struct.TF_TString** %str.addr, align 8
  %0 = load %struct.TF_TString*, %struct.TF_TString** %str.addr, align 8
  %u = getelementptr inbounds %struct.TF_TString, %struct.TF_TString* %0, i32 0, i32 0
  %raw = bitcast %union.anon.5* %u to %struct.TF_TString_Raw*
  %raw1 = getelementptr inbounds %struct.TF_TString_Raw, %struct.TF_TString_Raw* %raw, i32 0, i32 0
  %arraydecay = getelementptr inbounds [24 x i8], [24 x i8]* %raw1, i64 0, i64 0
  %1 = call i8* @memset(i8* %arraydecay, i32 0, i64 24)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_tf_tensor.cc() #10 section ".text.startup" {
entry:
  call void @__cxx_global_var_init()
  ret void
}

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init() #10 section ".text.startup" {
entry:
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* @_ZStL8__ioinit)
  %0 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i32 0, i32 0), i8* bitcast (i8** @__dso_handle to i8*)) #11
  ret void
}

declare dso_local void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"*) unnamed_addr #4

; Function Attrs: nounwind
declare dso_local void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"*) unnamed_addr #3

; Function Attrs: nounwind
declare dso_local i32 @__cxa_atexit(void (i8*)*, i8*, i8*) #11

; Function Attrs: noinline optnone uwtable
define dso_local i8* @_ZN10tensorflow15allocate_tensorEPKcmPN3tsl9AllocatorE(i8* %operation, i64 %len, %"class.tensorflow::AbstractTensorInterface"* %allocator) #6 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %operation.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %allocator.addr = alloca %"class.tensorflow::AbstractTensorInterface"*, align 8
  %data = alloca i8*, align 8
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %ref.tmp2 = alloca %"class.std::ios_base::Init", align 1
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  store i8* %operation, i8** %operation.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store %"class.tensorflow::AbstractTensorInterface"* %allocator, %"class.tensorflow::AbstractTensorInterface"** %allocator.addr, align 8
  %0 = load %"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"** %allocator.addr, align 8
  %1 = load i64, i64* %len.addr, align 8
  %2 = bitcast %"class.tensorflow::AbstractTensorInterface"* %0 to i8* (%"class.tensorflow::AbstractTensorInterface"*, i64, i64)***
  %vtable = load i8* (%"class.tensorflow::AbstractTensorInterface"*, i64, i64)**, i8* (%"class.tensorflow::AbstractTensorInterface"*, i64, i64)*** %2, align 8
  %vfn = getelementptr inbounds i8* (%"class.tensorflow::AbstractTensorInterface"*, i64, i64)*, i8* (%"class.tensorflow::AbstractTensorInterface"*, i64, i64)** %vtable, i64 3
  %3 = load i8* (%"class.tensorflow::AbstractTensorInterface"*, i64, i64)*, i8* (%"class.tensorflow::AbstractTensorInterface"*, i64, i64)** %vfn, align 8
  %call = call i8* %3(%"class.tensorflow::AbstractTensorInterface"* %0, i64 16, i64 %1)
  store i8* %call, i8** %data, align 8
  %call1 = call zeroext i1 @_ZN10tensorflow9LogMemory9IsEnabledEv()
  br i1 %call1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = load i8*, i8** %data, align 8
  %cmp = icmp ne i8* %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %5 = load i8*, i8** %operation.addr, align 8
  call void @_ZNSaIcEC1Ev(%"class.std::ios_base::Init"* %ref.tmp2) #11
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(%"class.std::__cxx11::basic_string"* %ref.tmp, i8* %5, %"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1) %ref.tmp2)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %if.then
  %6 = load i64, i64* %len.addr, align 8
  %7 = load i8*, i8** %data, align 8
  %8 = load %"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"** %allocator.addr, align 8
  invoke void @_ZN10tensorflow9LogMemory19RecordRawAllocationERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElmPvPN3tsl9AllocatorE(%"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp, i64 -3, i64 %6, i8* %7, %"class.tensorflow::AbstractTensorInterface"* %8)
          to label %invoke.cont4 unwind label %lpad3

invoke.cont4:                                     ; preds = %invoke.cont
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %ref.tmp) #11
  call void @_ZNSaIcED1Ev(%"class.std::ios_base::Init"* %ref.tmp2) #11
  br label %if.end

lpad:                                             ; preds = %if.then
  %9 = landingpad { i8*, i32 }
          cleanup
  %10 = extractvalue { i8*, i32 } %9, 0
  store i8* %10, i8** %exn.slot, align 8
  %11 = extractvalue { i8*, i32 } %9, 1
  store i32 %11, i32* %ehselector.slot, align 4
  br label %ehcleanup

lpad3:                                            ; preds = %invoke.cont
  %12 = landingpad { i8*, i32 }
          cleanup
  %13 = extractvalue { i8*, i32 } %12, 0
  store i8* %13, i8** %exn.slot, align 8
  %14 = extractvalue { i8*, i32 } %12, 1
  store i32 %14, i32* %ehselector.slot, align 4
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %ref.tmp) #11
  br label %ehcleanup

ehcleanup:                                        ; preds = %lpad3, %lpad
  call void @_ZNSaIcED1Ev(%"class.std::ios_base::Init"* %ref.tmp2) #11
  br label %eh.resume

if.end:                                           ; preds = %invoke.cont4, %land.lhs.true, %entry
  %15 = load i8*, i8** %data, align 8
  ret i8* %15

eh.resume:                                        ; preds = %ehcleanup
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val5 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val5
}

declare dso_local zeroext i1 @_ZN10tensorflow9LogMemory9IsEnabledEv() #4

; Function Attrs: nounwind
declare dso_local void @_ZNSaIcEC1Ev(%"class.std::ios_base::Init"*) unnamed_addr #3

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(%"class.std::__cxx11::basic_string"* %this, i8* %__s, %"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1) %__a) unnamed_addr #6 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::__cxx11::basic_string"*, align 8
  %__s.addr = alloca i8*, align 8
  %__a.addr = alloca %"class.std::ios_base::Init"*, align 8
  %__end = alloca i8*, align 8
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  %agg.tmp = alloca %"class.std::ios_base::Init", align 1
  %ref.tmp = alloca %"class.std::ios_base::Init", align 1
  store %"class.std::__cxx11::basic_string"* %this, %"class.std::__cxx11::basic_string"** %this.addr, align 8
  store i8* %__s, i8** %__s.addr, align 8
  store %"class.std::ios_base::Init"* %__a, %"class.std::ios_base::Init"** %__a.addr, align 8
  %this1 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %this.addr, align 8
  %_M_dataplus = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %this1, i32 0, i32 0
  %call = call i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv(%"class.std::__cxx11::basic_string"* %this1)
  %0 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %__a.addr, align 8
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC1EPcRKS3_(%"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char>>::_Alloc_hider"* %_M_dataplus, i8* %call, %"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1) %0)
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
  %6 = bitcast %"class.std::ios_base::Init"* %ref.tmp to %"class.std::ios_base::Init"*
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
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev(%"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char>>::_Alloc_hider"* %_M_dataplus) #11
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val4 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val4
}

declare dso_local void @_ZN10tensorflow9LogMemory19RecordRawAllocationERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElmPvPN3tsl9AllocatorE(%"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32), i64, i64, i8*, %"class.tensorflow::AbstractTensorInterface"*) #4

; Function Attrs: nounwind
declare dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"*) unnamed_addr #3

; Function Attrs: nounwind
declare dso_local void @_ZNSaIcED1Ev(%"class.std::ios_base::Init"*) unnamed_addr #3

declare dso_local i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv(%"class.std::__cxx11::basic_string"*) #4

declare dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC1EPcRKS3_(%"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char>>::_Alloc_hider"*, i8*, %"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1)) unnamed_addr #4

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i64 @_ZNSt11char_traitsIcE6lengthEPKc(i8* %__s) #6 comdat align 2 {
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
  %call2 = call i64 @strlen(i8* %2) #11
  store i64 %call2, i64* %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i64, i64* %retval, align 8
  ret i64 %3
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag(%"class.std::__cxx11::basic_string"* %this, i8* %__beg, i8* %__end) #6 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %0 = alloca %"class.std::ios_base::Init", align 1
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
  call void @_ZSt19__throw_logic_errorPKc(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.12, i64 0, i64 0)) #20
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
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_(i8* %call7, i8* %8, i8* %9) #11
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
  %13 = call i8* @__cxa_begin_catch(i8* %exn) #11
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv(%"class.std::__cxx11::basic_string"* %this1)
          to label %invoke.cont9 unwind label %lpad8

invoke.cont9:                                     ; preds = %catch
  invoke void @__cxa_rethrow() #20
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
  call void @__clang_call_terminate(i8* %19) #16
  unreachable

unreachable:                                      ; preds = %invoke.cont9
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev(%"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char>>::_Alloc_hider"* %this) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char>>::_Alloc_hider"*, align 8
  store %"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char>>::_Alloc_hider"* %this, %"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char>>::_Alloc_hider"** %this.addr, align 8
  %this1 = load %"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char>>::_Alloc_hider"*, %"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char>>::_Alloc_hider"** %this.addr, align 8
  %0 = bitcast %"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char>>::_Alloc_hider"* %this1 to %"class.std::ios_base::Init"*
  call void @_ZNSaIcED2Ev(%"class.std::ios_base::Init"* %0) #11
  ret void
}

; Function Attrs: nounwind
declare dso_local void @_ZNSaIcED2Ev(%"class.std::ios_base::Init"*) unnamed_addr #3

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local zeroext i1 @_ZN9__gnu_cxx17__is_null_pointerIKcEEbPT_(i8* %__ptr) #0 comdat {
entry:
  %__ptr.addr = alloca i8*, align 8
  store i8* %__ptr, i8** %__ptr.addr, align 8
  %0 = load i8*, i8** %__ptr.addr, align 8
  %cmp = icmp eq i8* %0, null
  ret i1 %cmp
}

; Function Attrs: noreturn
declare dso_local void @_ZSt19__throw_logic_errorPKc(i8*) #12

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i64 @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_(i8* %__first, i8* %__last) #6 comdat {
entry:
  %__first.addr = alloca i8*, align 8
  %__last.addr = alloca i8*, align 8
  %agg.tmp = alloca %"class.std::ios_base::Init", align 1
  %undef.agg.tmp = alloca %"class.std::ios_base::Init", align 1
  store i8* %__first, i8** %__first.addr, align 8
  store i8* %__last, i8** %__last.addr, align 8
  %0 = load i8*, i8** %__first.addr, align 8
  %1 = load i8*, i8** %__last.addr, align 8
  call void @_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_(i8** nonnull align 8 dereferenceable(8) %__first.addr)
  %call = call i64 @_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag(i8* %0, i8* %1)
  ret i64 %call
}

declare dso_local i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"*, i64* nonnull align 8 dereferenceable(8), i64) #4

declare dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc(%"class.std::__cxx11::basic_string"*, i8*) #4

declare dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm(%"class.std::__cxx11::basic_string"*, i64) #4

declare dso_local i8* @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv(%"class.std::__cxx11::basic_string"*) #4

; Function Attrs: nounwind
declare dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_(i8*, i8*, i8*) #3

declare dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv(%"class.std::__cxx11::basic_string"*) #4

declare dso_local void @__cxa_rethrow()

declare dso_local void @__cxa_end_catch()

declare dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm(%"class.std::__cxx11::basic_string"*, i64) #4

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_(i8** nonnull align 8 dereferenceable(8) %0) #0 comdat {
entry:
  %.addr = alloca i8**, align 8
  store i8** %0, i8*** %.addr, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag(i8* %__first, i8* %__last) #0 comdat {
entry:
  %0 = alloca %"class.std::ios_base::Init", align 1
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
define linkonce_odr dso_local i64 @_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc(i8* %__p) #6 comdat align 2 {
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
declare dso_local i64 @strlen(i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local zeroext i1 @_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_(i8* nonnull align 1 dereferenceable(1) %__c1, i8* nonnull align 1 dereferenceable(1) %__c2) #0 comdat align 2 {
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

; Function Attrs: noinline optnone uwtable
define dso_local i8* @_ZN10tensorflow15allocate_tensorEPKcm(i8* %operation, i64 %len) #6 {
entry:
  %operation.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  store i8* %operation, i8** %operation.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  %0 = load i8*, i8** %operation.addr, align 8
  %1 = load i64, i64* %len.addr, align 8
  %call = call %"class.tensorflow::AbstractTensorInterface"* @_ZN3tsl13cpu_allocatorEi(i32 -1)
  %call1 = call i8* @_ZN10tensorflow15allocate_tensorEPKcmPN3tsl9AllocatorE(i8* %0, i64 %1, %"class.tensorflow::AbstractTensorInterface"* %call)
  ret i8* %call1
}

declare dso_local %"class.tensorflow::AbstractTensorInterface"* @_ZN3tsl13cpu_allocatorEi(i32) #4

; Function Attrs: noinline optnone uwtable
define dso_local void @_ZN10tensorflow17deallocate_bufferEPvmS0_(i8* %data, i64 %len, i8* %arg) #6 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %data.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %arg.addr = alloca i8*, align 8
  %allocator = alloca %"class.tensorflow::AbstractTensorInterface"*, align 8
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %ref.tmp4 = alloca %"class.std::ios_base::Init", align 1
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  store %"class.tensorflow::AbstractTensorInterface"* null, %"class.tensorflow::AbstractTensorInterface"** %allocator, align 8
  %0 = load i8*, i8** %arg.addr, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call %"class.tensorflow::AbstractTensorInterface"* @_ZN3tsl13cpu_allocatorEi(i32 -1)
  store %"class.tensorflow::AbstractTensorInterface"* %call, %"class.tensorflow::AbstractTensorInterface"** %allocator, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %1 = load i8*, i8** %arg.addr, align 8
  %2 = bitcast i8* %1 to %"class.tensorflow::AbstractTensorInterface"*
  store %"class.tensorflow::AbstractTensorInterface"* %2, %"class.tensorflow::AbstractTensorInterface"** %allocator, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call1 = call zeroext i1 @_ZN10tensorflow9LogMemory9IsEnabledEv()
  br i1 %call1, label %land.lhs.true, label %if.end7

land.lhs.true:                                    ; preds = %if.end
  %3 = load i8*, i8** %data.addr, align 8
  %cmp2 = icmp ne i8* %3, null
  br i1 %cmp2, label %if.then3, label %if.end7

if.then3:                                         ; preds = %land.lhs.true
  call void @_ZNSaIcEC1Ev(%"class.std::ios_base::Init"* %ref.tmp4) #11
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(%"class.std::__cxx11::basic_string"* %ref.tmp, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2.1, i64 0, i64 0), %"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1) %ref.tmp4)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %if.then3
  %4 = load i8*, i8** %data.addr, align 8
  %5 = load %"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"** %allocator, align 8
  invoke void @_ZN10tensorflow9LogMemory21RecordRawDeallocationERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElPvPN3tsl9AllocatorEb(%"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp, i64 -3, i8* %4, %"class.tensorflow::AbstractTensorInterface"* %5, i1 zeroext false)
          to label %invoke.cont6 unwind label %lpad5

invoke.cont6:                                     ; preds = %invoke.cont
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %ref.tmp) #11
  call void @_ZNSaIcED1Ev(%"class.std::ios_base::Init"* %ref.tmp4) #11
  br label %if.end7

lpad:                                             ; preds = %if.then3
  %6 = landingpad { i8*, i32 }
          cleanup
  %7 = extractvalue { i8*, i32 } %6, 0
  store i8* %7, i8** %exn.slot, align 8
  %8 = extractvalue { i8*, i32 } %6, 1
  store i32 %8, i32* %ehselector.slot, align 4
  br label %ehcleanup

lpad5:                                            ; preds = %invoke.cont
  %9 = landingpad { i8*, i32 }
          cleanup
  %10 = extractvalue { i8*, i32 } %9, 0
  store i8* %10, i8** %exn.slot, align 8
  %11 = extractvalue { i8*, i32 } %9, 1
  store i32 %11, i32* %ehselector.slot, align 4
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %ref.tmp) #11
  br label %ehcleanup

ehcleanup:                                        ; preds = %lpad5, %lpad
  call void @_ZNSaIcED1Ev(%"class.std::ios_base::Init"* %ref.tmp4) #11
  br label %eh.resume

if.end7:                                          ; preds = %invoke.cont6, %land.lhs.true, %if.end
  %12 = load %"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"** %allocator, align 8
  %13 = load i8*, i8** %data.addr, align 8
  %14 = bitcast %"class.tensorflow::AbstractTensorInterface"* %12 to void (%"class.tensorflow::AbstractTensorInterface"*, i8*)***
  %vtable = load void (%"class.tensorflow::AbstractTensorInterface"*, i8*)**, void (%"class.tensorflow::AbstractTensorInterface"*, i8*)*** %14, align 8
  %vfn = getelementptr inbounds void (%"class.tensorflow::AbstractTensorInterface"*, i8*)*, void (%"class.tensorflow::AbstractTensorInterface"*, i8*)** %vtable, i64 5
  %15 = load void (%"class.tensorflow::AbstractTensorInterface"*, i8*)*, void (%"class.tensorflow::AbstractTensorInterface"*, i8*)** %vfn, align 8
  call void %15(%"class.tensorflow::AbstractTensorInterface"* %12, i8* %13)
  ret void

eh.resume:                                        ; preds = %ehcleanup
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val8 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val8
}

declare dso_local void @_ZN10tensorflow9LogMemory21RecordRawDeallocationERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElPvPN3tsl9AllocatorEb(%"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32), i64, i8*, %"class.tensorflow::AbstractTensorInterface"*, i1 zeroext) #4

; Function Attrs: noinline optnone uwtable
define dso_local %struct.TF_Tensor* @TF_AllocateTensor(i32 %dtype, i64* %dims, i32 %num_dims, i64 %len) #6 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
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
  %call = call %"class.tensorflow::AbstractTensorInterface"* @_ZN3tsl13cpu_allocatorEi(i32 -1)
  %call1 = call i8* @_ZN10tensorflow15allocate_tensorEPKcmPN3tsl9AllocatorE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i64 %0, %"class.tensorflow::AbstractTensorInterface"* %call)
  store i8* %call1, i8** %data, align 8
  %call2 = call noalias nonnull i8* @_Znwm(i64 56) #21
  %1 = bitcast i8* %call2 to %class.TF_ManagedBuffer*
  %2 = load i8*, i8** %data, align 8
  %3 = load i64, i64* %len.addr, align 8
  %call3 = invoke %"class.tensorflow::AbstractTensorInterface"* @_ZN3tsl13cpu_allocatorEi(i32 -1)
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
  call void @_ZdlPv(i8* %call2) #19
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val6 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val6
}

; Function Attrs: nobuiltin allocsize(0)
declare dso_local nonnull i8* @_Znwm(i64) #13

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN16TF_ManagedBufferC2EPvmPFvS0_mS0_ES0_b(%class.TF_ManagedBuffer* %this, i8* %data, i64 %len, void (i8*, i64, i8*)* %deallocator, i8* %deallocator_arg, i1 zeroext %owns_memory) unnamed_addr #6 comdat align 2 {
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
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [11 x i8*] }, { [11 x i8*] }* @_ZTV16TF_ManagedBuffer, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %2, align 8
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
define internal %struct.TF_Tensor* @_ZN12_GLOBAL__N_112CreateTensorEP16TF_ManagedBuffer11TF_DataTypePKlim(%class.TF_ManagedBuffer* %buf, i32 %dtype, i64* %dims, i32 %num_dims, i64 %len) #6 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %retval = alloca %struct.TF_Tensor*, align 8
  %buf.addr = alloca %class.TF_ManagedBuffer*, align 8
  %dtype.addr = alloca i32, align 4
  %dims.addr = alloca i64*, align 8
  %num_dims.addr = alloca i32, align 4
  %len.addr = alloca i64, align 8
  %dimvec = alloca %"class.std::vector", align 8
  %ref.tmp = alloca %"class.std::ios_base::Init", align 1
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  %i = alloca i32, align 4
  %ret = alloca %"class.tensorflow::Tensor", align 8
  %ref.tmp2 = alloca %"class.tensorflow::TensorShape", align 8
  %agg.tmp = alloca %"struct.absl::lts_20250127::inlined_vector_internal::Storage<long, 4, std::allocator<long>>::Allocated", align 8
  %elem_size = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %agg.tmp21 = alloca %"class.tensorflow::Tensor", align 8
  %cleanup.isactive = alloca i1, align 1
  %cleanup.isactive27 = alloca i1, align 1
  store %class.TF_ManagedBuffer* %buf, %class.TF_ManagedBuffer** %buf.addr, align 8
  store i32 %dtype, i32* %dtype.addr, align 4
  store i64* %dims, i64** %dims.addr, align 8
  store i32 %num_dims, i32* %num_dims.addr, align 4
  store i64 %len, i64* %len.addr, align 8
  %0 = load i32, i32* %num_dims.addr, align 4
  %conv = sext i32 %0 to i64
  call void @_ZNSaIlEC2Ev(%"class.std::ios_base::Init"* %ref.tmp) #11
  invoke void @_ZNSt6vectorIlSaIlEEC2EmRKS0_(%"class.std::vector"* %dimvec, i64 %conv, %"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1) %ref.tmp)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  call void @_ZNSaIlED2Ev(%"class.std::ios_base::Init"* %ref.tmp) #11
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
  %call = call nonnull align 8 dereferenceable(8) i64* @_ZNSt6vectorIlSaIlEEixEm(%"class.std::vector"* %dimvec, i64 %conv1) #11
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
  call void @_ZNSaIlED2Ev(%"class.std::ios_base::Init"* %ref.tmp) #11
  br label %eh.resume

for.end:                                          ; preds = %for.cond
  %11 = load i32, i32* %dtype.addr, align 4
  call void @_ZN4absl12lts_202501274SpanIKlEC2ISt6vectorIlSaIlEEvS7_iEERKT_(%"struct.absl::lts_20250127::inlined_vector_internal::Storage<long, 4, std::allocator<long>>::Allocated"* %agg.tmp, %"class.std::vector"* nonnull align 8 dereferenceable(24) %dimvec) #11
  %12 = bitcast %"struct.absl::lts_20250127::inlined_vector_internal::Storage<long, 4, std::allocator<long>>::Allocated"* %agg.tmp to { i64*, i64 }*
  %13 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %12, i32 0, i32 0
  %14 = load i64*, i64** %13, align 8
  %15 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %12, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  invoke void @_ZN10tensorflow11TensorShapeCI2NS_15TensorShapeBaseIS0_EEEN4absl12lts_202501274SpanIKlEE(%"class.tensorflow::TensorShape"* %ref.tmp2, i64* %14, i64 %16)
          to label %invoke.cont4 unwind label %lpad3

invoke.cont4:                                     ; preds = %for.end
  %17 = load %class.TF_ManagedBuffer*, %class.TF_ManagedBuffer** %buf.addr, align 8
  %18 = bitcast %class.TF_ManagedBuffer* %17 to %"class.tensorflow::TensorBuffer"*
  invoke void @_ZN10tensorflow6TensorC1ENS_8DataTypeERKNS_11TensorShapeEPNS_12TensorBufferE(%"class.tensorflow::Tensor"* %ret, i32 %11, %"class.tensorflow::TensorShape"* nonnull align 8 dereferenceable(24) %ref.tmp2, %"class.tensorflow::TensorBuffer"* %18)
          to label %invoke.cont6 unwind label %lpad5

invoke.cont6:                                     ; preds = %invoke.cont4
  call void @_ZN10tensorflow11TensorShapeD2Ev(%"class.tensorflow::TensorShape"* %ref.tmp2) #11
  %19 = load %class.TF_ManagedBuffer*, %class.TF_ManagedBuffer** %buf.addr, align 8
  %20 = bitcast %class.TF_ManagedBuffer* %19 to %"class.tsl::core::RefCounted"*
  %call9 = invoke zeroext i1 @_ZNK3tsl4core10RefCounted5UnrefEv(%"class.tsl::core::RefCounted"* %20)
          to label %invoke.cont8 unwind label %lpad7

invoke.cont8:                                     ; preds = %invoke.cont6
  %21 = load i32, i32* %dtype.addr, align 4
  %call11 = invoke i64 @TF_DataTypeSize(i32 %21)
          to label %invoke.cont10 unwind label %lpad7

invoke.cont10:                                    ; preds = %invoke.cont8
  store i64 %call11, i64* %elem_size, align 8
  %22 = load i64, i64* %elem_size, align 8
  %cmp12 = icmp ugt i64 %22, 0
  br i1 %cmp12, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %invoke.cont10
  %23 = load i64, i64* %len.addr, align 8
  %24 = load i64, i64* %elem_size, align 8
  %call14 = invoke i64 @_ZNK10tensorflow6Tensor11NumElementsEv(%"class.tensorflow::Tensor"* %ret)
          to label %invoke.cont13 unwind label %lpad7

invoke.cont13:                                    ; preds = %land.lhs.true
  %mul = mul i64 %24, %call14
  %cmp15 = icmp ult i64 %23, %mul
  br i1 %cmp15, label %if.then, label %if.end

if.then:                                          ; preds = %invoke.cont13
  store %struct.TF_Tensor* null, %struct.TF_Tensor** %retval, align 8
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

lpad3:                                            ; preds = %for.end
  %25 = landingpad { i8*, i32 }
          cleanup
  %26 = extractvalue { i8*, i32 } %25, 0
  store i8* %26, i8** %exn.slot, align 8
  %27 = extractvalue { i8*, i32 } %25, 1
  store i32 %27, i32* %ehselector.slot, align 4
  br label %ehcleanup34

lpad5:                                            ; preds = %invoke.cont4
  %28 = landingpad { i8*, i32 }
          cleanup
  %29 = extractvalue { i8*, i32 } %28, 0
  store i8* %29, i8** %exn.slot, align 8
  %30 = extractvalue { i8*, i32 } %28, 1
  store i32 %30, i32* %ehselector.slot, align 4
  call void @_ZN10tensorflow11TensorShapeD2Ev(%"class.tensorflow::TensorShape"* %ref.tmp2) #11
  br label %ehcleanup34

lpad7:                                            ; preds = %if.end, %land.lhs.true, %invoke.cont8, %invoke.cont6
  %31 = landingpad { i8*, i32 }
          cleanup
  %32 = extractvalue { i8*, i32 } %31, 0
  store i8* %32, i8** %exn.slot, align 8
  %33 = extractvalue { i8*, i32 } %31, 1
  store i32 %33, i32* %ehselector.slot, align 4
  br label %ehcleanup32

if.end:                                           ; preds = %invoke.cont13, %invoke.cont10
  %call17 = invoke noalias nonnull i8* @_Znwm(i64 8) #21
          to label %invoke.cont16 unwind label %lpad7

invoke.cont16:                                    ; preds = %if.end
  store i1 true, i1* %cleanup.isactive27, align 1
  %34 = bitcast i8* %call17 to %struct.TF_Tensor*
  %tensor = getelementptr inbounds %struct.TF_Tensor, %struct.TF_Tensor* %34, i32 0, i32 0
  %call20 = invoke noalias nonnull i8* @_Znwm(i64 40) #21
          to label %invoke.cont19 unwind label %lpad18

invoke.cont19:                                    ; preds = %invoke.cont16
  store i1 true, i1* %cleanup.isactive, align 1
  %35 = bitcast i8* %call20 to %"class.tensorflow::TensorInterface"*
  %call22 = call nonnull align 8 dereferenceable(32) %"class.tensorflow::Tensor"* @_ZSt4moveIRN10tensorflow6TensorEEONSt16remove_referenceIT_E4typeEOS4_(%"class.tensorflow::Tensor"* nonnull align 8 dereferenceable(32) %ret) #11
  invoke void @_ZN10tensorflow6TensorC2EOS0_(%"class.tensorflow::Tensor"* %agg.tmp21, %"class.tensorflow::Tensor"* nonnull align 8 dereferenceable(32) %call22)
          to label %invoke.cont24 unwind label %lpad23

invoke.cont24:                                    ; preds = %invoke.cont19
  invoke void @_ZN10tensorflow15TensorInterfaceC2ENS_6TensorE(%"class.tensorflow::TensorInterface"* %35, %"class.tensorflow::Tensor"* %agg.tmp21)
          to label %invoke.cont26 unwind label %lpad25

invoke.cont26:                                    ; preds = %invoke.cont24
  store i1 false, i1* %cleanup.isactive, align 1
  %36 = bitcast %"class.tensorflow::TensorInterface"* %35 to %"class.tensorflow::AbstractTensorInterface"*
  store %"class.tensorflow::AbstractTensorInterface"* %36, %"class.tensorflow::AbstractTensorInterface"** %tensor, align 8
  store i1 false, i1* %cleanup.isactive27, align 1
  store %struct.TF_Tensor* %34, %struct.TF_Tensor** %retval, align 8
  call void @_ZN10tensorflow6TensorD1Ev(%"class.tensorflow::Tensor"* %agg.tmp21) #11
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

lpad18:                                           ; preds = %invoke.cont16
  %37 = landingpad { i8*, i32 }
          cleanup
  %38 = extractvalue { i8*, i32 } %37, 0
  store i8* %38, i8** %exn.slot, align 8
  %39 = extractvalue { i8*, i32 } %37, 1
  store i32 %39, i32* %ehselector.slot, align 4
  br label %ehcleanup28

lpad23:                                           ; preds = %invoke.cont19
  %40 = landingpad { i8*, i32 }
          cleanup
  %41 = extractvalue { i8*, i32 } %40, 0
  store i8* %41, i8** %exn.slot, align 8
  %42 = extractvalue { i8*, i32 } %40, 1
  store i32 %42, i32* %ehselector.slot, align 4
  br label %ehcleanup

lpad25:                                           ; preds = %invoke.cont24
  %43 = landingpad { i8*, i32 }
          cleanup
  %44 = extractvalue { i8*, i32 } %43, 0
  store i8* %44, i8** %exn.slot, align 8
  %45 = extractvalue { i8*, i32 } %43, 1
  store i32 %45, i32* %ehselector.slot, align 4
  call void @_ZN10tensorflow6TensorD1Ev(%"class.tensorflow::Tensor"* %agg.tmp21) #11
  br label %ehcleanup

ehcleanup:                                        ; preds = %lpad25, %lpad23
  %cleanup.is_active = load i1, i1* %cleanup.isactive, align 1
  br i1 %cleanup.is_active, label %cleanup.action, label %cleanup.done

cleanup.action:                                   ; preds = %ehcleanup
  call void @_ZdlPv(i8* %call20) #19
  br label %cleanup.done

cleanup.done:                                     ; preds = %cleanup.action, %ehcleanup
  br label %ehcleanup28

ehcleanup28:                                      ; preds = %cleanup.done, %lpad18
  %cleanup.is_active29 = load i1, i1* %cleanup.isactive27, align 1
  br i1 %cleanup.is_active29, label %cleanup.action30, label %cleanup.done31

cleanup.action30:                                 ; preds = %ehcleanup28
  call void @_ZdlPv(i8* %call17) #19
  br label %cleanup.done31

cleanup.done31:                                   ; preds = %cleanup.action30, %ehcleanup28
  br label %ehcleanup32

cleanup:                                          ; preds = %invoke.cont26, %if.then
  call void @_ZN10tensorflow6TensorD1Ev(%"class.tensorflow::Tensor"* %ret) #11
  call void @_ZNSt6vectorIlSaIlEED2Ev(%"class.std::vector"* %dimvec) #11
  %46 = load %struct.TF_Tensor*, %struct.TF_Tensor** %retval, align 8
  ret %struct.TF_Tensor* %46

ehcleanup32:                                      ; preds = %cleanup.done31, %lpad7
  call void @_ZN10tensorflow6TensorD1Ev(%"class.tensorflow::Tensor"* %ret) #11
  br label %ehcleanup34

ehcleanup34:                                      ; preds = %ehcleanup32, %lpad5, %lpad3
  call void @_ZNSt6vectorIlSaIlEED2Ev(%"class.std::vector"* %dimvec) #11
  br label %eh.resume

eh.resume:                                        ; preds = %ehcleanup34, %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val35 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val35
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSaIlEC2Ev(%"class.std::ios_base::Init"* %this) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::ios_base::Init"*, align 8
  store %"class.std::ios_base::Init"* %this, %"class.std::ios_base::Init"** %this.addr, align 8
  %this1 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %this.addr, align 8
  %0 = bitcast %"class.std::ios_base::Init"* %this1 to %"class.std::ios_base::Init"*
  call void @_ZN9__gnu_cxx13new_allocatorIlEC2Ev(%"class.std::ios_base::Init"* %0) #11
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIlSaIlEEC2EmRKS0_(%"class.std::vector"* %this, i64 %__n, %"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1) %__a) unnamed_addr #6 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  %__n.addr = alloca i64, align 8
  %__a.addr = alloca %"class.std::ios_base::Init"*, align 8
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  store %"class.std::ios_base::Init"* %__a, %"class.std::ios_base::Init"** %__a.addr, align 8
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %1 = load i64, i64* %__n.addr, align 8
  %2 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %__a.addr, align 8
  %call = call i64 @_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_(i64 %1, %"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1) %2)
  %3 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %__a.addr, align 8
  call void @_ZNSt12_Vector_baseIlSaIlEEC2EmRKS0_(%"struct.std::_Vector_base"* %0, i64 %call, %"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1) %3)
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
  call void @_ZNSt12_Vector_baseIlSaIlEED2Ev(%"struct.std::_Vector_base"* %8) #11
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val2 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val2
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSaIlED2Ev(%"class.std::ios_base::Init"* %this) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::ios_base::Init"*, align 8
  store %"class.std::ios_base::Init"* %this, %"class.std::ios_base::Init"** %this.addr, align 8
  %this1 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %this.addr, align 8
  %0 = bitcast %"class.std::ios_base::Init"* %this1 to %"class.std::ios_base::Init"*
  call void @_ZN9__gnu_cxx13new_allocatorIlED2Ev(%"class.std::ios_base::Init"* %0) #11
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) i64* @_ZNSt6vectorIlSaIlEEixEm(%"class.std::vector"* %this, i64 %__n) #0 comdat align 2 {
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

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_202501274SpanIKlEC2ISt6vectorIlSaIlEEvS7_iEERKT_(%"struct.absl::lts_20250127::inlined_vector_internal::Storage<long, 4, std::allocator<long>>::Allocated"* %this, %"class.std::vector"* nonnull align 8 dereferenceable(24) %v) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %"struct.absl::lts_20250127::inlined_vector_internal::Storage<long, 4, std::allocator<long>>::Allocated"*, align 8
  %v.addr = alloca %"class.std::vector"*, align 8
  store %"struct.absl::lts_20250127::inlined_vector_internal::Storage<long, 4, std::allocator<long>>::Allocated"* %this, %"struct.absl::lts_20250127::inlined_vector_internal::Storage<long, 4, std::allocator<long>>::Allocated"** %this.addr, align 8
  store %"class.std::vector"* %v, %"class.std::vector"** %v.addr, align 8
  %this1 = load %"struct.absl::lts_20250127::inlined_vector_internal::Storage<long, 4, std::allocator<long>>::Allocated"*, %"struct.absl::lts_20250127::inlined_vector_internal::Storage<long, 4, std::allocator<long>>::Allocated"** %this.addr, align 8
  %0 = load %"class.std::vector"*, %"class.std::vector"** %v.addr, align 8
  %call = call i64* @_ZN4absl12lts_2025012713span_internal7GetDataIKSt6vectorIlSaIlEEEEDTcl11GetDataImplfp_Li0EEERT_(%"class.std::vector"* nonnull align 8 dereferenceable(24) %0) #11
  %1 = load %"class.std::vector"*, %"class.std::vector"** %v.addr, align 8
  %call2 = call i64 @_ZNKSt6vectorIlSaIlEE4sizeEv(%"class.std::vector"* %1) #11
  call void @_ZN4absl12lts_202501274SpanIKlEC2EPS2_m(%"struct.absl::lts_20250127::inlined_vector_internal::Storage<long, 4, std::allocator<long>>::Allocated"* %this1, i64* %call, i64 %call2) #11
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow11TensorShapeCI2NS_15TensorShapeBaseIS0_EEEN4absl12lts_202501274SpanIKlEE(%"class.tensorflow::TensorShape"* %this, i64* %.coerce0, i64 %.coerce1) unnamed_addr #6 comdat align 2 {
entry:
  %0 = alloca %"struct.absl::lts_20250127::inlined_vector_internal::Storage<long, 4, std::allocator<long>>::Allocated", align 8
  %this.addr = alloca %"class.tensorflow::TensorShape"*, align 8
  %1 = bitcast %"struct.absl::lts_20250127::inlined_vector_internal::Storage<long, 4, std::allocator<long>>::Allocated"* %0 to { i64*, i64 }*
  %2 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %1, i32 0, i32 0
  store i64* %.coerce0, i64** %2, align 8
  %3 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %1, i32 0, i32 1
  store i64 %.coerce1, i64* %3, align 8
  store %"class.tensorflow::TensorShape"* %this, %"class.tensorflow::TensorShape"** %this.addr, align 8
  %this1 = load %"class.tensorflow::TensorShape"*, %"class.tensorflow::TensorShape"** %this.addr, align 8
  %4 = bitcast %"class.tensorflow::TensorShape"* %this1 to %"class.tensorflow::TensorShapeBase"*
  %5 = bitcast %"struct.absl::lts_20250127::inlined_vector_internal::Storage<long, 4, std::allocator<long>>::Allocated"* %0 to { i64*, i64 }*
  %6 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %5, i32 0, i32 0
  %7 = load i64*, i64** %6, align 8
  %8 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %5, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  call void @_ZN10tensorflow15TensorShapeBaseINS_11TensorShapeEEC2EN4absl12lts_202501274SpanIKlEE(%"class.tensorflow::TensorShapeBase"* %4, i64* %7, i64 %9)
  ret void
}

declare dso_local void @_ZN10tensorflow6TensorC1ENS_8DataTypeERKNS_11TensorShapeEPNS_12TensorBufferE(%"class.tensorflow::Tensor"*, i32, %"class.tensorflow::TensorShape"* nonnull align 8 dereferenceable(24), %"class.tensorflow::TensorBuffer"*) unnamed_addr #4

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow11TensorShapeD2Ev(%"class.tensorflow::TensorShape"* %this) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.tensorflow::TensorShape"*, align 8
  store %"class.tensorflow::TensorShape"* %this, %"class.tensorflow::TensorShape"** %this.addr, align 8
  %this1 = load %"class.tensorflow::TensorShape"*, %"class.tensorflow::TensorShape"** %this.addr, align 8
  %0 = bitcast %"class.tensorflow::TensorShape"* %this1 to %"class.tensorflow::TensorShapeBase"*
  call void @_ZN10tensorflow15TensorShapeBaseINS_11TensorShapeEED2Ev(%"class.tensorflow::TensorShapeBase"* %0) #11
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local zeroext i1 @_ZNK3tsl4core10RefCounted5UnrefEv(%"class.tsl::core::RefCounted"* %this) #6 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr.i14 = alloca %"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::Storage.4"*, align 8
  %__i.addr.i = alloca i64, align 8
  %__m.addr.i15 = alloca i32, align 4
  %.atomictmp.i = alloca i64, align 8
  %atomic-temp.i16 = alloca i64, align 8
  %this.addr.i = alloca %"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::Storage.4"*, align 8
  %__m.addr.i = alloca i32, align 4
  %__b.i = alloca i32, align 4
  %atomic-temp.i = alloca i64, align 8
  %retval = alloca i1, align 1
  %this.addr = alloca %"class.tsl::core::RefCounted"*, align 8
  %_result = alloca %"struct.tsl::internal::CheckOpString", align 8
  %ref.tmp = alloca i64, align 8
  %ref.tmp3 = alloca i32, align 4
  %ref.tmp7 = alloca %"class.tsl::internal::LogMessageFatal", align 8
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  store %"class.tsl::core::RefCounted"* %this, %"class.tsl::core::RefCounted"** %this.addr, align 8
  %this1 = load %"class.tsl::core::RefCounted"*, %"class.tsl::core::RefCounted"** %this.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %entry
  %ref_ = getelementptr inbounds %"class.tsl::core::RefCounted", %"class.tsl::core::RefCounted"* %this1, i32 0, i32 1
  %0 = bitcast %"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::CompressedTupleImpl"* %ref_ to %"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::Storage.4"*
  store %"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::Storage.4"* %0, %"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::Storage.4"** %this.addr.i, align 8
  store i32 5, i32* %__m.addr.i, align 4
  %this1.i = load %"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::Storage.4"*, %"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::Storage.4"** %this.addr.i, align 8
  %1 = load i32, i32* %__m.addr.i, align 4
  %call.i = invoke i32 @_ZStanSt12memory_orderSt23__memory_order_modifier(i32 %1, i32 65535)
          to label %invoke.cont.i unwind label %terminate.lpad.i

invoke.cont.i:                                    ; preds = %while.cond
  store i32 %call.i, i32* %__b.i, align 4
  %_M_i.i = getelementptr inbounds %"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::Storage.4", %"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::Storage.4"* %this1.i, i32 0, i32 0
  %2 = load i32, i32* %__m.addr.i, align 4
  switch i32 %2, label %monotonic.i [
    i32 1, label %acquire.i
    i32 2, label %acquire.i
    i32 5, label %seqcst.i
  ]

monotonic.i:                                      ; preds = %invoke.cont.i
  %3 = load i64, i64* %_M_i.i, align 8
  store i64 %3, i64* %atomic-temp.i, align 8
  br label %_ZNKSt13__atomic_baseIlE4loadESt12memory_order.exit

acquire.i:                                        ; preds = %invoke.cont.i, %invoke.cont.i
  %4 = load i64, i64* %_M_i.i, align 8
  store i64 %4, i64* %atomic-temp.i, align 8
  br label %_ZNKSt13__atomic_baseIlE4loadESt12memory_order.exit

seqcst.i:                                         ; preds = %invoke.cont.i
  %5 = load i64, i64* %_M_i.i, align 8
  store i64 %5, i64* %atomic-temp.i, align 8
  br label %_ZNKSt13__atomic_baseIlE4loadESt12memory_order.exit

terminate.lpad.i:                                 ; preds = %while.cond
  %6 = landingpad { i8*, i32 }
          catch i8* null
  %7 = extractvalue { i8*, i32 } %6, 0
  call void @__clang_call_terminate(i8* %7) #16
  unreachable

_ZNKSt13__atomic_baseIlE4loadESt12memory_order.exit: ; preds = %monotonic.i, %acquire.i, %seqcst.i
  %8 = load i64, i64* %atomic-temp.i, align 8
  %call2 = call i64 @_ZN3tsl8internal21GetReferenceableValueEl(i64 %8)
  store i64 %call2, i64* %ref.tmp, align 8
  %call4 = call i32 @_ZN3tsl8internal21GetReferenceableValueEi(i32 0)
  store i32 %call4, i32* %ref.tmp3, align 4
  %call5 = call %"class.std::__cxx11::basic_string"* @_ZN3tsl8internal12Check_GTImplIliEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc(i64* nonnull align 8 dereferenceable(8) %ref.tmp, i32* nonnull align 4 dereferenceable(4) %ref.tmp3, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  call void @_ZN3tsl8internal13CheckOpStringC2EPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"struct.tsl::internal::CheckOpString"* %_result, %"class.std::__cxx11::basic_string"* %call5)
  %call6 = call zeroext i1 @_ZNK3tsl8internal13CheckOpStringcvbEv(%"struct.tsl::internal::CheckOpString"* %_result)
  br i1 %call6, label %while.body, label %while.end

while.body:                                       ; preds = %_ZNKSt13__atomic_baseIlE4loadESt12memory_order.exit
  call void @_ZN3tsl8internal15LogMessageFatalC1EPKci(%"class.tsl::internal::LogMessageFatal"* %ref.tmp7, i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.1.2, i64 0, i64 0), i32 328) #22
  %str_ = getelementptr inbounds %"struct.tsl::internal::CheckOpString", %"struct.tsl::internal::CheckOpString"* %_result, i32 0, i32 0
  %9 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %str_, align 8
  %call8 = invoke nonnull align 8 dereferenceable(136) %"class.tsl::internal::LogMessageFatal"* @_ZStlsIN3tsl8internal15LogMessageFatalENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_SA_RKT0_(%"class.tsl::internal::LogMessageFatal"* nonnull align 8 dereferenceable(136) %ref.tmp7, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %9)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %while.body
  call void @_ZN3tsl8internal15LogMessageFatalD1Ev(%"class.tsl::internal::LogMessageFatal"* %ref.tmp7) #16
  unreachable

lpad:                                             ; preds = %while.body
  %10 = landingpad { i8*, i32 }
          cleanup
  %11 = extractvalue { i8*, i32 } %10, 0
  store i8* %11, i8** %exn.slot, align 8
  %12 = extractvalue { i8*, i32 } %10, 1
  store i32 %12, i32* %ehselector.slot, align 4
  call void @_ZN3tsl8internal15LogMessageFatalD1Ev(%"class.tsl::internal::LogMessageFatal"* %ref.tmp7) #16
  unreachable

13:                                               ; No predecessors!
  br label %eh.resume

while.end:                                        ; preds = %_ZNKSt13__atomic_baseIlE4loadESt12memory_order.exit
  %ref_9 = getelementptr inbounds %"class.tsl::core::RefCounted", %"class.tsl::core::RefCounted"* %this1, i32 0, i32 1
  %14 = bitcast %"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::CompressedTupleImpl"* %ref_9 to %"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::Storage.4"*
  store %"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::Storage.4"* %14, %"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::Storage.4"** %this.addr.i14, align 8
  store i64 1, i64* %__i.addr.i, align 8
  store i32 4, i32* %__m.addr.i15, align 4
  %this1.i17 = load %"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::Storage.4"*, %"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::Storage.4"** %this.addr.i14, align 8
  %_M_i.i18 = getelementptr inbounds %"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::Storage.4", %"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::Storage.4"* %this1.i17, i32 0, i32 0
  %15 = load i32, i32* %__m.addr.i15, align 4
  %16 = load i64, i64* %__i.addr.i, align 8
  store i64 %16, i64* %.atomictmp.i, align 8
  switch i32 %15, label %monotonic.i19 [
    i32 1, label %acquire.i20
    i32 2, label %acquire.i20
    i32 3, label %release.i
    i32 4, label %acqrel.i
    i32 5, label %seqcst.i21
  ]

monotonic.i19:                                    ; preds = %while.end
  %17 = load i64, i64* %.atomictmp.i, align 8
  %18 = load i64, i64* %_M_i.i18, align 8
  %19 = sub i64 %18, %17
  store i64 %19, i64* %_M_i.i18, align 8
  store i64 %18, i64* %atomic-temp.i16, align 8
  br label %_ZNSt13__atomic_baseIlE9fetch_subElSt12memory_order.exit

acquire.i20:                                      ; preds = %while.end, %while.end
  %20 = load i64, i64* %.atomictmp.i, align 8
  %21 = load i64, i64* %_M_i.i18, align 8
  %22 = sub i64 %21, %20
  store i64 %22, i64* %_M_i.i18, align 8
  store i64 %21, i64* %atomic-temp.i16, align 8
  br label %_ZNSt13__atomic_baseIlE9fetch_subElSt12memory_order.exit

release.i:                                        ; preds = %while.end
  %23 = load i64, i64* %.atomictmp.i, align 8
  %24 = load i64, i64* %_M_i.i18, align 8
  %25 = sub i64 %24, %23
  store i64 %25, i64* %_M_i.i18, align 8
  store i64 %24, i64* %atomic-temp.i16, align 8
  br label %_ZNSt13__atomic_baseIlE9fetch_subElSt12memory_order.exit

acqrel.i:                                         ; preds = %while.end
  %26 = load i64, i64* %.atomictmp.i, align 8
  %27 = load i64, i64* %_M_i.i18, align 8
  %28 = sub i64 %27, %26
  store i64 %28, i64* %_M_i.i18, align 8
  store i64 %27, i64* %atomic-temp.i16, align 8
  br label %_ZNSt13__atomic_baseIlE9fetch_subElSt12memory_order.exit

seqcst.i21:                                       ; preds = %while.end
  %29 = load i64, i64* %.atomictmp.i, align 8
  %30 = load i64, i64* %_M_i.i18, align 8
  %31 = sub i64 %30, %29
  store i64 %31, i64* %_M_i.i18, align 8
  store i64 %30, i64* %atomic-temp.i16, align 8
  br label %_ZNSt13__atomic_baseIlE9fetch_subElSt12memory_order.exit

_ZNSt13__atomic_baseIlE9fetch_subElSt12memory_order.exit: ; preds = %monotonic.i19, %acquire.i20, %release.i, %acqrel.i, %seqcst.i21
  %32 = load i64, i64* %atomic-temp.i16, align 8
  %cmp = icmp eq i64 %32, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %_ZNSt13__atomic_baseIlE9fetch_subElSt12memory_order.exit
  %33 = bitcast %"class.tsl::core::RefCounted"* %this1 to void (%"class.tsl::core::RefCounted"*)***
  %vtable = load void (%"class.tsl::core::RefCounted"*)**, void (%"class.tsl::core::RefCounted"*)*** %33, align 8
  %vfn = getelementptr inbounds void (%"class.tsl::core::RefCounted"*)*, void (%"class.tsl::core::RefCounted"*)** %vtable, i64 2
  %34 = load void (%"class.tsl::core::RefCounted"*)*, void (%"class.tsl::core::RefCounted"*)** %vfn, align 8
  call void %34(%"class.tsl::core::RefCounted"* %this1)
  %isnull = icmp eq %"class.tsl::core::RefCounted"* %this1, null
  br i1 %isnull, label %delete.end, label %delete.notnull

delete.notnull:                                   ; preds = %if.then
  %35 = bitcast %"class.tsl::core::RefCounted"* %this1 to void (%"class.tsl::core::RefCounted"*)***
  %vtable11 = load void (%"class.tsl::core::RefCounted"*)**, void (%"class.tsl::core::RefCounted"*)*** %35, align 8
  %vfn12 = getelementptr inbounds void (%"class.tsl::core::RefCounted"*)*, void (%"class.tsl::core::RefCounted"*)** %vtable11, i64 1
  %36 = load void (%"class.tsl::core::RefCounted"*)*, void (%"class.tsl::core::RefCounted"*)** %vfn12, align 8
  call void %36(%"class.tsl::core::RefCounted"* %this1) #11
  br label %delete.end

delete.end:                                       ; preds = %delete.notnull, %if.then
  store i1 true, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %_ZNSt13__atomic_baseIlE9fetch_subElSt12memory_order.exit
  store i1 false, i1* %retval, align 1
  br label %return

return:                                           ; preds = %if.end, %delete.end
  %37 = load i1, i1* %retval, align 1
  ret i1 %37

eh.resume:                                        ; preds = %13
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val13 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val13
}

declare dso_local i64 @TF_DataTypeSize(i32) #4

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(32) %"class.tensorflow::Tensor"* @_ZSt4moveIRN10tensorflow6TensorEEONSt16remove_referenceIT_E4typeEOS4_(%"class.tensorflow::Tensor"* nonnull align 8 dereferenceable(32) %__t) #0 comdat {
entry:
  %__t.addr = alloca %"class.tensorflow::Tensor"*, align 8
  store %"class.tensorflow::Tensor"* %__t, %"class.tensorflow::Tensor"** %__t.addr, align 8
  %0 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %__t.addr, align 8
  ret %"class.tensorflow::Tensor"* %0
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow6TensorC2EOS0_(%"class.tensorflow::Tensor"* %this, %"class.tensorflow::Tensor"* nonnull align 8 dereferenceable(32) %other) unnamed_addr #6 comdat align 2 {
entry:
  %this.addr = alloca %"class.tensorflow::Tensor"*, align 8
  %other.addr = alloca %"class.tensorflow::Tensor"*, align 8
  store %"class.tensorflow::Tensor"* %this, %"class.tensorflow::Tensor"** %this.addr, align 8
  store %"class.tensorflow::Tensor"* %other, %"class.tensorflow::Tensor"** %other.addr, align 8
  %this1 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %this.addr, align 8
  %shape_ = getelementptr inbounds %"class.tensorflow::Tensor", %"class.tensorflow::Tensor"* %this1, i32 0, i32 0
  %0 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %other.addr, align 8
  %shape_2 = getelementptr inbounds %"class.tensorflow::Tensor", %"class.tensorflow::Tensor"* %0, i32 0, i32 0
  %call = call nonnull align 8 dereferenceable(24) %"class.tensorflow::TensorShape"* @_ZSt4moveIRN10tensorflow11TensorShapeEEONSt16remove_referenceIT_E4typeEOS4_(%"class.tensorflow::TensorShape"* nonnull align 8 dereferenceable(24) %shape_2) #11
  call void @_ZN10tensorflow11TensorShapeC2EOS0_(%"class.tensorflow::TensorShape"* %shape_, %"class.tensorflow::TensorShape"* nonnull align 8 dereferenceable(24) %call)
  %buf_ = getelementptr inbounds %"class.tensorflow::Tensor", %"class.tensorflow::Tensor"* %this1, i32 0, i32 1
  %1 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %other.addr, align 8
  %buf_3 = getelementptr inbounds %"class.tensorflow::Tensor", %"class.tensorflow::Tensor"* %1, i32 0, i32 1
  %2 = load %"class.tensorflow::TensorBuffer"*, %"class.tensorflow::TensorBuffer"** %buf_3, align 8
  store %"class.tensorflow::TensorBuffer"* %2, %"class.tensorflow::TensorBuffer"** %buf_, align 8
  %3 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %other.addr, align 8
  %buf_4 = getelementptr inbounds %"class.tensorflow::Tensor", %"class.tensorflow::Tensor"* %3, i32 0, i32 1
  store %"class.tensorflow::TensorBuffer"* null, %"class.tensorflow::TensorBuffer"** %buf_4, align 8
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow15TensorInterfaceC2ENS_6TensorE(%"class.tensorflow::TensorInterface"* %this, %"class.tensorflow::Tensor"* %t) unnamed_addr #6 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.tensorflow::TensorInterface"*, align 8
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  store %"class.tensorflow::TensorInterface"* %this, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  %this1 = load %"class.tensorflow::TensorInterface"*, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  %0 = bitcast %"class.tensorflow::TensorInterface"* %this1 to %"class.tensorflow::AbstractTensorInterface"*
  call void @_ZN10tensorflow23AbstractTensorInterfaceC2Ev(%"class.tensorflow::AbstractTensorInterface"* %0) #11
  %1 = bitcast %"class.tensorflow::TensorInterface"* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [14 x i8*] }, { [14 x i8*] }* @_ZTVN10tensorflow15TensorInterfaceE, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %1, align 8
  %tensor_ = getelementptr inbounds %"class.tensorflow::TensorInterface", %"class.tensorflow::TensorInterface"* %this1, i32 0, i32 1
  %call = call nonnull align 8 dereferenceable(32) %"class.tensorflow::Tensor"* @_ZSt4moveIRN10tensorflow6TensorEEONSt16remove_referenceIT_E4typeEOS4_(%"class.tensorflow::Tensor"* nonnull align 8 dereferenceable(32) %t) #11
  invoke void @_ZN10tensorflow6TensorC2EOS0_(%"class.tensorflow::Tensor"* %tensor_, %"class.tensorflow::Tensor"* nonnull align 8 dereferenceable(32) %call)
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
  call void @_ZN10tensorflow23AbstractTensorInterfaceD2Ev(%"class.tensorflow::AbstractTensorInterface"* %5) #11
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val2 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val2
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIlSaIlEED2Ev(%"class.std::vector"* %this) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
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
  %call = call nonnull align 1 dereferenceable(1) %"class.std::ios_base::Init"* @_ZNSt12_Vector_baseIlSaIlEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %6) #11
  invoke void @_ZSt8_DestroyIPllEvT_S1_RSaIT0_E(i64* %2, i64* %5, %"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1) %call)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %7 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  call void @_ZNSt12_Vector_baseIlSaIlEED2Ev(%"struct.std::_Vector_base"* %7) #11
  ret void

lpad:                                             ; preds = %entry
  %8 = landingpad { i8*, i32 }
          catch i8* null
  %9 = extractvalue { i8*, i32 } %8, 0
  store i8* %9, i8** %exn.slot, align 8
  %10 = extractvalue { i8*, i32 } %8, 1
  store i32 %10, i32* %ehselector.slot, align 4
  %11 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  call void @_ZNSt12_Vector_baseIlSaIlEED2Ev(%"struct.std::_Vector_base"* %11) #11
  br label %terminate.handler

terminate.handler:                                ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  call void @__clang_call_terminate(i8* %exn) #16
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 1 dereferenceable(1) %"class.std::ios_base::Init"* @_ZNSt12_Vector_baseIlSaIlEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %this) #0 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base"*, align 8
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %this.addr, align 8
  %this1 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  %0 = bitcast %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %_M_impl to %"class.std::ios_base::Init"*
  ret %"class.std::ios_base::Init"* %0
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPllEvT_S1_RSaIT0_E(i64* %__first, i64* %__last, %"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1) %0) #6 comdat {
entry:
  %__first.addr = alloca i64*, align 8
  %__last.addr = alloca i64*, align 8
  %.addr = alloca %"class.std::ios_base::Init"*, align 8
  store i64* %__first, i64** %__first.addr, align 8
  store i64* %__last, i64** %__last.addr, align 8
  store %"class.std::ios_base::Init"* %0, %"class.std::ios_base::Init"** %.addr, align 8
  %1 = load i64*, i64** %__first.addr, align 8
  %2 = load i64*, i64** %__last.addr, align 8
  call void @_ZSt8_DestroyIPlEvT_S1_(i64* %1, i64* %2)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIlSaIlEED2Ev(%"struct.std::_Vector_base"* %this) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
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
  call void @_ZNSt12_Vector_baseIlSaIlEE12_Vector_implD2Ev(%"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %_M_impl5) #11
  ret void

lpad:                                             ; preds = %entry
  %6 = landingpad { i8*, i32 }
          catch i8* null
  %7 = extractvalue { i8*, i32 } %6, 0
  store i8* %7, i8** %exn.slot, align 8
  %8 = extractvalue { i8*, i32 } %6, 1
  store i32 %8, i32* %ehselector.slot, align 4
  %_M_impl6 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  call void @_ZNSt12_Vector_baseIlSaIlEE12_Vector_implD2Ev(%"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %_M_impl6) #11
  br label %terminate.handler

terminate.handler:                                ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  call void @__clang_call_terminate(i8* %exn) #16
  unreachable
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm(%"struct.std::_Vector_base"* %this, i64* %__p, i64 %__n) #6 comdat align 2 {
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
  %1 = bitcast %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %_M_impl to %"class.std::ios_base::Init"*
  %2 = load i64*, i64** %__p.addr, align 8
  %3 = load i64, i64* %__n.addr, align 8
  call void @_ZNSt16allocator_traitsISaIlEE10deallocateERS0_Plm(%"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1) %1, i64* %2, i64 %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIlSaIlEE12_Vector_implD2Ev(%"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %this) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"*, align 8
  store %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %this, %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"** %this.addr, align 8
  %this1 = load %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"*, %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"** %this.addr, align 8
  %0 = bitcast %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %this1 to %"class.std::ios_base::Init"*
  call void @_ZNSaIlED2Ev(%"class.std::ios_base::Init"* %0) #11
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIlEE10deallocateERS0_Plm(%"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1) %__a, i64* %__p, i64 %__n) #6 comdat align 2 {
entry:
  %__a.addr = alloca %"class.std::ios_base::Init"*, align 8
  %__p.addr = alloca i64*, align 8
  %__n.addr = alloca i64, align 8
  store %"class.std::ios_base::Init"* %__a, %"class.std::ios_base::Init"** %__a.addr, align 8
  store i64* %__p, i64** %__p.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %0 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %__a.addr, align 8
  %1 = bitcast %"class.std::ios_base::Init"* %0 to %"class.std::ios_base::Init"*
  %2 = load i64*, i64** %__p.addr, align 8
  %3 = load i64, i64* %__n.addr, align 8
  call void @_ZN9__gnu_cxx13new_allocatorIlE10deallocateEPlm(%"class.std::ios_base::Init"* %1, i64* %2, i64 %3)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorIlE10deallocateEPlm(%"class.std::ios_base::Init"* %this, i64* %__p, i64 %__t) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::ios_base::Init"*, align 8
  %__p.addr = alloca i64*, align 8
  %__t.addr = alloca i64, align 8
  store %"class.std::ios_base::Init"* %this, %"class.std::ios_base::Init"** %this.addr, align 8
  store i64* %__p, i64** %__p.addr, align 8
  store i64 %__t, i64* %__t.addr, align 8
  %this1 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %this.addr, align 8
  %0 = load i64*, i64** %__p.addr, align 8
  %1 = bitcast i64* %0 to i8*
  call void @_ZdlPv(i8* %1) #11
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPlEvT_S1_(i64* %__first, i64* %__last) #6 comdat {
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
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb1EE9__destroyIPlEEvT_S3_(i64* %0, i64* %1) #0 comdat align 2 {
entry:
  %.addr = alloca i64*, align 8
  %.addr1 = alloca i64*, align 8
  store i64* %0, i64** %.addr, align 8
  store i64* %1, i64** %.addr1, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow23AbstractTensorInterfaceC2Ev(%"class.tensorflow::AbstractTensorInterface"* %this) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.tensorflow::AbstractTensorInterface"*, align 8
  store %"class.tensorflow::AbstractTensorInterface"* %this, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  %this1 = load %"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  %0 = bitcast %"class.tensorflow::AbstractTensorInterface"* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [14 x i8*] }, { [14 x i8*] }* @_ZTVN10tensorflow23AbstractTensorInterfaceE, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %0, align 8
  ret void
}

declare dso_local void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow23AbstractTensorInterfaceD0Ev(%"class.tensorflow::AbstractTensorInterface"* %this) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.tensorflow::AbstractTensorInterface"*, align 8
  store %"class.tensorflow::AbstractTensorInterface"* %this, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  %this1 = load %"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  call void @abort()
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(24) %"class.tensorflow::TensorShape"* @_ZSt4moveIRN10tensorflow11TensorShapeEEONSt16remove_referenceIT_E4typeEOS4_(%"class.tensorflow::TensorShape"* nonnull align 8 dereferenceable(24) %__t) #0 comdat {
entry:
  %__t.addr = alloca %"class.tensorflow::TensorShape"*, align 8
  store %"class.tensorflow::TensorShape"* %__t, %"class.tensorflow::TensorShape"** %__t.addr, align 8
  %0 = load %"class.tensorflow::TensorShape"*, %"class.tensorflow::TensorShape"** %__t.addr, align 8
  ret %"class.tensorflow::TensorShape"* %0
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow11TensorShapeC2EOS0_(%"class.tensorflow::TensorShape"* %this, %"class.tensorflow::TensorShape"* nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 comdat align 2 {
entry:
  %this.addr = alloca %"class.tensorflow::TensorShape"*, align 8
  %.addr = alloca %"class.tensorflow::TensorShape"*, align 8
  store %"class.tensorflow::TensorShape"* %this, %"class.tensorflow::TensorShape"** %this.addr, align 8
  store %"class.tensorflow::TensorShape"* %0, %"class.tensorflow::TensorShape"** %.addr, align 8
  %this1 = load %"class.tensorflow::TensorShape"*, %"class.tensorflow::TensorShape"** %this.addr, align 8
  %1 = bitcast %"class.tensorflow::TensorShape"* %this1 to %"class.tensorflow::TensorShapeBase"*
  %2 = load %"class.tensorflow::TensorShape"*, %"class.tensorflow::TensorShape"** %.addr, align 8
  %3 = bitcast %"class.tensorflow::TensorShape"* %2 to %"class.tensorflow::TensorShapeBase"*
  call void @_ZN10tensorflow15TensorShapeBaseINS_11TensorShapeEEC2EOS2_(%"class.tensorflow::TensorShapeBase"* %1, %"class.tensorflow::TensorShapeBase"* nonnull align 8 dereferenceable(24) %3)
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow15TensorShapeBaseINS_11TensorShapeEEC2EOS2_(%"class.tensorflow::TensorShapeBase"* %this, %"class.tensorflow::TensorShapeBase"* nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 comdat align 2 {
entry:
  %this.addr = alloca %"class.tensorflow::TensorShapeBase"*, align 8
  %.addr = alloca %"class.tensorflow::TensorShapeBase"*, align 8
  store %"class.tensorflow::TensorShapeBase"* %this, %"class.tensorflow::TensorShapeBase"** %this.addr, align 8
  store %"class.tensorflow::TensorShapeBase"* %0, %"class.tensorflow::TensorShapeBase"** %.addr, align 8
  %this1 = load %"class.tensorflow::TensorShapeBase"*, %"class.tensorflow::TensorShapeBase"** %this.addr, align 8
  %1 = bitcast %"class.tensorflow::TensorShapeBase"* %this1 to %"class.tensorflow::TensorShapeRep"*
  %2 = load %"class.tensorflow::TensorShapeBase"*, %"class.tensorflow::TensorShapeBase"** %.addr, align 8
  %3 = bitcast %"class.tensorflow::TensorShapeBase"* %2 to %"class.tensorflow::TensorShapeRep"*
  call void @_ZN10tensorflow14TensorShapeRepC2EOS0_(%"class.tensorflow::TensorShapeRep"* %1, %"class.tensorflow::TensorShapeRep"* nonnull align 8 dereferenceable(24) %3)
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow14TensorShapeRepC2EOS0_(%"class.tensorflow::TensorShapeRep"* %this, %"class.tensorflow::TensorShapeRep"* nonnull align 8 dereferenceable(24) %b) unnamed_addr #6 comdat align 2 {
entry:
  %this.addr = alloca %"class.tensorflow::TensorShapeRep"*, align 8
  %b.addr = alloca %"class.tensorflow::TensorShapeRep"*, align 8
  store %"class.tensorflow::TensorShapeRep"* %this, %"class.tensorflow::TensorShapeRep"** %this.addr, align 8
  store %"class.tensorflow::TensorShapeRep"* %b, %"class.tensorflow::TensorShapeRep"** %b.addr, align 8
  %this1 = load %"class.tensorflow::TensorShapeRep"*, %"class.tensorflow::TensorShapeRep"** %this.addr, align 8
  %u_ = getelementptr inbounds %"class.tensorflow::TensorShapeRep", %"class.tensorflow::TensorShapeRep"* %this1, i32 0, i32 0
  %0 = load %"class.tensorflow::TensorShapeRep"*, %"class.tensorflow::TensorShapeRep"** %b.addr, align 8
  %num_elements_ = getelementptr inbounds %"class.tensorflow::TensorShapeRep", %"class.tensorflow::TensorShapeRep"* %0, i32 0, i32 1
  %1 = load i64, i64* %num_elements_, align 8
  %num_elements_2 = getelementptr inbounds %"class.tensorflow::TensorShapeRep", %"class.tensorflow::TensorShapeRep"* %this1, i32 0, i32 1
  store i64 %1, i64* %num_elements_2, align 8
  %call = call i8* @_ZN10tensorflow14TensorShapeRep3bufEv(%"class.tensorflow::TensorShapeRep"* %this1)
  %2 = load %"class.tensorflow::TensorShapeRep"*, %"class.tensorflow::TensorShapeRep"** %b.addr, align 8
  %call3 = call i8* @_ZN10tensorflow14TensorShapeRep3bufEv(%"class.tensorflow::TensorShapeRep"* %2)
  %3 = call i8* @memcpy(i8* %call, i8* %call3, i64 16)
  %4 = load %"class.tensorflow::TensorShapeRep"*, %"class.tensorflow::TensorShapeRep"** %b.addr, align 8
  call void @_ZN10tensorflow14TensorShapeRep7set_tagENS0_6RepTagE(%"class.tensorflow::TensorShapeRep"* %4, i32 0)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i8* @_ZN10tensorflow14TensorShapeRep3bufEv(%"class.tensorflow::TensorShapeRep"* %this) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.tensorflow::TensorShapeRep"*, align 8
  store %"class.tensorflow::TensorShapeRep"* %this, %"class.tensorflow::TensorShapeRep"** %this.addr, align 8
  %this1 = load %"class.tensorflow::TensorShapeRep"*, %"class.tensorflow::TensorShapeRep"** %this.addr, align 8
  %u_ = getelementptr inbounds %"class.tensorflow::TensorShapeRep", %"class.tensorflow::TensorShapeRep"* %this1, i32 0, i32 0
  %buf = bitcast %union.anon.0* %u_ to [16 x i8]*
  %arrayidx = getelementptr inbounds [16 x i8], [16 x i8]* %buf, i64 0, i64 0
  ret i8* %arrayidx
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow14TensorShapeRep7set_tagENS0_6RepTagE(%"class.tensorflow::TensorShapeRep"* %this, i32 %tag) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.tensorflow::TensorShapeRep"*, align 8
  %tag.addr = alloca i32, align 4
  store %"class.tensorflow::TensorShapeRep"* %this, %"class.tensorflow::TensorShapeRep"** %this.addr, align 8
  store i32 %tag, i32* %tag.addr, align 4
  %this1 = load %"class.tensorflow::TensorShapeRep"*, %"class.tensorflow::TensorShapeRep"** %this.addr, align 8
  %0 = load i32, i32* %tag.addr, align 4
  %conv = trunc i32 %0 to i8
  %call = call i8* @_ZN10tensorflow14TensorShapeRep3bufEv(%"class.tensorflow::TensorShapeRep"* %this1)
  %arrayidx = getelementptr inbounds i8, i8* %call, i64 15
  store i8 %conv, i8* %arrayidx, align 1
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @_ZN3tsl8internal21GetReferenceableValueEl(i64 %t) #0 comdat {
entry:
  %t.addr = alloca i64, align 8
  store i64 %t, i64* %t.addr, align 8
  %0 = load i64, i64* %t.addr, align 8
  ret i64 %0
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i32 @_ZN3tsl8internal21GetReferenceableValueEi(i32 %t) #0 comdat {
entry:
  %t.addr = alloca i32, align 4
  store i32 %t, i32* %t.addr, align 4
  %0 = load i32, i32* %t.addr, align 4
  ret i32 %0
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %"class.std::__cxx11::basic_string"* @_ZN3tsl8internal12Check_GTImplIliEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc(i64* nonnull align 8 dereferenceable(8) %v1, i32* nonnull align 4 dereferenceable(4) %v2, i8* %exprtext) #6 comdat {
entry:
  %v1.addr = alloca i64*, align 8
  %v2.addr = alloca i32*, align 8
  %exprtext.addr = alloca i8*, align 8
  store i64* %v1, i64** %v1.addr, align 8
  store i32* %v2, i32** %v2.addr, align 8
  store i8* %exprtext, i8** %exprtext.addr, align 8
  %0 = load i32*, i32** %v2.addr, align 8
  %1 = load i64*, i64** %v1.addr, align 8
  %2 = load i8*, i8** %exprtext.addr, align 8
  %call = call %"class.std::__cxx11::basic_string"* @_ZN3tsl8internal12Check_LTImplIilEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc(i32* nonnull align 4 dereferenceable(4) %0, i64* nonnull align 8 dereferenceable(8) %1, i8* %2)
  ret %"class.std::__cxx11::basic_string"* %call
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN3tsl8internal13CheckOpStringC2EPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"struct.tsl::internal::CheckOpString"* %this, %"class.std::__cxx11::basic_string"* %str) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %"struct.tsl::internal::CheckOpString"*, align 8
  %str.addr = alloca %"class.std::__cxx11::basic_string"*, align 8
  store %"struct.tsl::internal::CheckOpString"* %this, %"struct.tsl::internal::CheckOpString"** %this.addr, align 8
  store %"class.std::__cxx11::basic_string"* %str, %"class.std::__cxx11::basic_string"** %str.addr, align 8
  %this1 = load %"struct.tsl::internal::CheckOpString"*, %"struct.tsl::internal::CheckOpString"** %this.addr, align 8
  %str_ = getelementptr inbounds %"struct.tsl::internal::CheckOpString", %"struct.tsl::internal::CheckOpString"* %this1, i32 0, i32 0
  %0 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %str.addr, align 8
  store %"class.std::__cxx11::basic_string"* %0, %"class.std::__cxx11::basic_string"** %str_, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local zeroext i1 @_ZNK3tsl8internal13CheckOpStringcvbEv(%"struct.tsl::internal::CheckOpString"* %this) #0 comdat align 2 {
entry:
  %this.addr = alloca %"struct.tsl::internal::CheckOpString"*, align 8
  store %"struct.tsl::internal::CheckOpString"* %this, %"struct.tsl::internal::CheckOpString"** %this.addr, align 8
  %this1 = load %"struct.tsl::internal::CheckOpString"*, %"struct.tsl::internal::CheckOpString"** %this.addr, align 8
  %str_ = getelementptr inbounds %"struct.tsl::internal::CheckOpString", %"struct.tsl::internal::CheckOpString"* %this1, i32 0, i32 0
  %0 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %str_, align 8
  %cmp = icmp ne %"class.std::__cxx11::basic_string"* %0, null
  ret i1 %cmp
}

; Function Attrs: cold
declare dso_local void @_ZN3tsl8internal15LogMessageFatalC1EPKci(%"class.tsl::internal::LogMessageFatal"*, i8*, i32) unnamed_addr #14

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(136) %"class.tsl::internal::LogMessageFatal"* @_ZStlsIN3tsl8internal15LogMessageFatalENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_SA_RKT0_(%"class.tsl::internal::LogMessageFatal"* nonnull align 8 dereferenceable(136) %__os, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %__x) #6 comdat {
entry:
  %__os.addr = alloca %"class.tsl::internal::LogMessageFatal"*, align 8
  %__x.addr = alloca %"class.std::__cxx11::basic_string"*, align 8
  store %"class.tsl::internal::LogMessageFatal"* %__os, %"class.tsl::internal::LogMessageFatal"** %__os.addr, align 8
  store %"class.std::__cxx11::basic_string"* %__x, %"class.std::__cxx11::basic_string"** %__x.addr, align 8
  %0 = load %"class.tsl::internal::LogMessageFatal"*, %"class.tsl::internal::LogMessageFatal"** %__os.addr, align 8
  %1 = bitcast %"class.tsl::internal::LogMessageFatal"* %0 to %"class.std::basic_ostream"*
  %2 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %__x.addr, align 8
  %call = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %1, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %2)
  %3 = load %"class.tsl::internal::LogMessageFatal"*, %"class.tsl::internal::LogMessageFatal"** %__os.addr, align 8
  %call1 = call nonnull align 8 dereferenceable(136) %"class.tsl::internal::LogMessageFatal"* @_ZSt4moveIRN3tsl8internal15LogMessageFatalEEONSt16remove_referenceIT_E4typeEOS5_(%"class.tsl::internal::LogMessageFatal"* nonnull align 8 dereferenceable(136) %3) #11
  ret %"class.tsl::internal::LogMessageFatal"* %call1
}

; Function Attrs: noreturn nounwind
declare dso_local void @_ZN3tsl8internal15LogMessageFatalD1Ev(%"class.tsl::internal::LogMessageFatal"*) unnamed_addr #5

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8), %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32)) #4

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(136) %"class.tsl::internal::LogMessageFatal"* @_ZSt4moveIRN3tsl8internal15LogMessageFatalEEONSt16remove_referenceIT_E4typeEOS5_(%"class.tsl::internal::LogMessageFatal"* nonnull align 8 dereferenceable(136) %__t) #0 comdat {
entry:
  %__t.addr = alloca %"class.tsl::internal::LogMessageFatal"*, align 8
  store %"class.tsl::internal::LogMessageFatal"* %__t, %"class.tsl::internal::LogMessageFatal"** %__t.addr, align 8
  %0 = load %"class.tsl::internal::LogMessageFatal"*, %"class.tsl::internal::LogMessageFatal"** %__t.addr, align 8
  ret %"class.tsl::internal::LogMessageFatal"* %0
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %"class.std::__cxx11::basic_string"* @_ZN3tsl8internal12Check_LTImplIilEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc(i32* nonnull align 4 dereferenceable(4) %v1, i64* nonnull align 8 dereferenceable(8) %v2, i8* %exprtext) #6 comdat {
entry:
  %retval = alloca %"class.std::__cxx11::basic_string"*, align 8
  %v1.addr = alloca i32*, align 8
  %v2.addr = alloca i64*, align 8
  %exprtext.addr = alloca i8*, align 8
  store i32* %v1, i32** %v1.addr, align 8
  store i64* %v2, i64** %v2.addr, align 8
  store i8* %exprtext, i8** %exprtext.addr, align 8
  %0 = load i32*, i32** %v1.addr, align 8
  %1 = load i32, i32* %0, align 4
  %conv = sext i32 %1 to i64
  %2 = load i64*, i64** %v2.addr, align 8
  %3 = load i64, i64* %2, align 8
  %cmp = icmp slt i64 %conv, %3
  %lnot = xor i1 %cmp, true
  %lnot1 = xor i1 %lnot, true
  br i1 %lnot1, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store %"class.std::__cxx11::basic_string"* null, %"class.std::__cxx11::basic_string"** %retval, align 8
  br label %return

if.else:                                          ; preds = %entry
  %4 = load i32*, i32** %v1.addr, align 8
  %5 = load i64*, i64** %v2.addr, align 8
  %6 = load i8*, i8** %exprtext.addr, align 8
  %call = call %"class.std::__cxx11::basic_string"* @_ZN3tsl8internal17MakeCheckOpStringIilEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc(i32* nonnull align 4 dereferenceable(4) %4, i64* nonnull align 8 dereferenceable(8) %5, i8* %6)
  store %"class.std::__cxx11::basic_string"* %call, %"class.std::__cxx11::basic_string"** %retval, align 8
  br label %return

return:                                           ; preds = %if.else, %if.then
  %7 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %retval, align 8
  ret %"class.std::__cxx11::basic_string"* %7
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %"class.std::__cxx11::basic_string"* @_ZN3tsl8internal17MakeCheckOpStringIilEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc(i32* nonnull align 4 dereferenceable(4) %v1, i64* nonnull align 8 dereferenceable(8) %v2, i8* %exprtext) #6 comdat personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %v1.addr = alloca i32*, align 8
  %v2.addr = alloca i64*, align 8
  %exprtext.addr = alloca i8*, align 8
  %comb = alloca %"class.tsl::internal::CheckOpMessageBuilder", align 8
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  store i32* %v1, i32** %v1.addr, align 8
  store i64* %v2, i64** %v2.addr, align 8
  store i8* %exprtext, i8** %exprtext.addr, align 8
  %0 = load i8*, i8** %exprtext.addr, align 8
  call void @_ZN3tsl8internal21CheckOpMessageBuilderC1EPKc(%"class.tsl::internal::CheckOpMessageBuilder"* %comb, i8* %0)
  %call = invoke %"class.std::basic_ostream"* @_ZN3tsl8internal21CheckOpMessageBuilder7ForVar1Ev(%"class.tsl::internal::CheckOpMessageBuilder"* %comb)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %1 = load i32*, i32** %v1.addr, align 8
  invoke void @_ZN3tsl8internal22MakeCheckOpValueStringIiEEvPSoRKT_(%"class.std::basic_ostream"* %call, i32* nonnull align 4 dereferenceable(4) %1)
          to label %invoke.cont1 unwind label %lpad

invoke.cont1:                                     ; preds = %invoke.cont
  %call3 = invoke %"class.std::basic_ostream"* @_ZN3tsl8internal21CheckOpMessageBuilder7ForVar2Ev(%"class.tsl::internal::CheckOpMessageBuilder"* %comb)
          to label %invoke.cont2 unwind label %lpad

invoke.cont2:                                     ; preds = %invoke.cont1
  %2 = load i64*, i64** %v2.addr, align 8
  invoke void @_ZN3tsl8internal22MakeCheckOpValueStringIlEEvPSoRKT_(%"class.std::basic_ostream"* %call3, i64* nonnull align 8 dereferenceable(8) %2)
          to label %invoke.cont4 unwind label %lpad

invoke.cont4:                                     ; preds = %invoke.cont2
  %call6 = invoke %"class.std::__cxx11::basic_string"* @_ZN3tsl8internal21CheckOpMessageBuilder9NewStringB5cxx11Ev(%"class.tsl::internal::CheckOpMessageBuilder"* %comb)
          to label %invoke.cont5 unwind label %lpad

invoke.cont5:                                     ; preds = %invoke.cont4
  call void @_ZN3tsl8internal21CheckOpMessageBuilderD1Ev(%"class.tsl::internal::CheckOpMessageBuilder"* %comb) #11
  ret %"class.std::__cxx11::basic_string"* %call6

lpad:                                             ; preds = %invoke.cont4, %invoke.cont2, %invoke.cont1, %invoke.cont, %entry
  %3 = landingpad { i8*, i32 }
          cleanup
  %4 = extractvalue { i8*, i32 } %3, 0
  store i8* %4, i8** %exn.slot, align 8
  %5 = extractvalue { i8*, i32 } %3, 1
  store i32 %5, i32* %ehselector.slot, align 4
  call void @_ZN3tsl8internal21CheckOpMessageBuilderD1Ev(%"class.tsl::internal::CheckOpMessageBuilder"* %comb) #11
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val7 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val7
}

declare dso_local void @_ZN3tsl8internal21CheckOpMessageBuilderC1EPKc(%"class.tsl::internal::CheckOpMessageBuilder"*, i8*) unnamed_addr #4

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %"class.std::basic_ostream"* @_ZN3tsl8internal21CheckOpMessageBuilder7ForVar1Ev(%"class.tsl::internal::CheckOpMessageBuilder"* %this) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.tsl::internal::CheckOpMessageBuilder"*, align 8
  store %"class.tsl::internal::CheckOpMessageBuilder"* %this, %"class.tsl::internal::CheckOpMessageBuilder"** %this.addr, align 8
  %this1 = load %"class.tsl::internal::CheckOpMessageBuilder"*, %"class.tsl::internal::CheckOpMessageBuilder"** %this.addr, align 8
  %stream_ = getelementptr inbounds %"class.tsl::internal::CheckOpMessageBuilder", %"class.tsl::internal::CheckOpMessageBuilder"* %this1, i32 0, i32 0
  %0 = load %"class.std::__cxx11::basic_ostringstream"*, %"class.std::__cxx11::basic_ostringstream"** %stream_, align 8
  %1 = bitcast %"class.std::__cxx11::basic_ostringstream"* %0 to %"class.std::basic_ostream"*
  ret %"class.std::basic_ostream"* %1
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN3tsl8internal22MakeCheckOpValueStringIiEEvPSoRKT_(%"class.std::basic_ostream"* %os, i32* nonnull align 4 dereferenceable(4) %v) #6 comdat {
entry:
  %os.addr = alloca %"class.std::basic_ostream"*, align 8
  %v.addr = alloca i32*, align 8
  store %"class.std::basic_ostream"* %os, %"class.std::basic_ostream"** %os.addr, align 8
  store i32* %v, i32** %v.addr, align 8
  %0 = load %"class.std::basic_ostream"*, %"class.std::basic_ostream"** %os.addr, align 8
  %1 = load i32*, i32** %v.addr, align 8
  %2 = load i32, i32* %1, align 4
  %call = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* %0, i32 %2)
  ret void
}

declare dso_local %"class.std::basic_ostream"* @_ZN3tsl8internal21CheckOpMessageBuilder7ForVar2Ev(%"class.tsl::internal::CheckOpMessageBuilder"*) #4

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN3tsl8internal22MakeCheckOpValueStringIlEEvPSoRKT_(%"class.std::basic_ostream"* %os, i64* nonnull align 8 dereferenceable(8) %v) #6 comdat {
entry:
  %os.addr = alloca %"class.std::basic_ostream"*, align 8
  %v.addr = alloca i64*, align 8
  store %"class.std::basic_ostream"* %os, %"class.std::basic_ostream"** %os.addr, align 8
  store i64* %v, i64** %v.addr, align 8
  %0 = load %"class.std::basic_ostream"*, %"class.std::basic_ostream"** %os.addr, align 8
  %1 = load i64*, i64** %v.addr, align 8
  %2 = load i64, i64* %1, align 8
  %call = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEl(%"class.std::basic_ostream"* %0, i64 %2)
  ret void
}

declare dso_local %"class.std::__cxx11::basic_string"* @_ZN3tsl8internal21CheckOpMessageBuilder9NewStringB5cxx11Ev(%"class.tsl::internal::CheckOpMessageBuilder"*) #4

; Function Attrs: nounwind
declare dso_local void @_ZN3tsl8internal21CheckOpMessageBuilderD1Ev(%"class.tsl::internal::CheckOpMessageBuilder"*) unnamed_addr #3

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEl(%"class.std::basic_ostream"*, i64) #4

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"*, i32) #4

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow15TensorShapeBaseINS_11TensorShapeEED2Ev(%"class.tensorflow::TensorShapeBase"* %this) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.tensorflow::TensorShapeBase"*, align 8
  store %"class.tensorflow::TensorShapeBase"* %this, %"class.tensorflow::TensorShapeBase"** %this.addr, align 8
  %this1 = load %"class.tensorflow::TensorShapeBase"*, %"class.tensorflow::TensorShapeBase"** %this.addr, align 8
  %0 = bitcast %"class.tensorflow::TensorShapeBase"* %this1 to %"class.tensorflow::TensorShapeRep"*
  call void @_ZN10tensorflow14TensorShapeRepD2Ev(%"class.tensorflow::TensorShapeRep"* %0) #11
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow14TensorShapeRepD2Ev(%"class.tensorflow::TensorShapeRep"* %this) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.tensorflow::TensorShapeRep"*, align 8
  store %"class.tensorflow::TensorShapeRep"* %this, %"class.tensorflow::TensorShapeRep"** %this.addr, align 8
  %this1 = load %"class.tensorflow::TensorShapeRep"*, %"class.tensorflow::TensorShapeRep"** %this.addr, align 8
  %call = invoke i32 @_ZNK10tensorflow14TensorShapeRep3tagEv(%"class.tensorflow::TensorShapeRep"* %this1)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  %cmp = icmp eq i32 %call, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %invoke.cont
  invoke void @_ZN10tensorflow14TensorShapeRep19DestructorOutOfLineEv(%"class.tensorflow::TensorShapeRep"* %this1)
          to label %invoke.cont2 unwind label %terminate.lpad

invoke.cont2:                                     ; preds = %if.then
  br label %if.end

if.end:                                           ; preds = %invoke.cont2, %invoke.cont
  ret void

terminate.lpad:                                   ; preds = %if.then, %entry
  %0 = landingpad { i8*, i32 }
          catch i8* null
  %1 = extractvalue { i8*, i32 } %0, 0
  call void @__clang_call_terminate(i8* %1) #16
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i32 @_ZNK10tensorflow14TensorShapeRep3tagEv(%"class.tensorflow::TensorShapeRep"* %this) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.tensorflow::TensorShapeRep"*, align 8
  store %"class.tensorflow::TensorShapeRep"* %this, %"class.tensorflow::TensorShapeRep"** %this.addr, align 8
  %this1 = load %"class.tensorflow::TensorShapeRep"*, %"class.tensorflow::TensorShapeRep"** %this.addr, align 8
  %call = call i8* @_ZNK10tensorflow14TensorShapeRep3bufEv(%"class.tensorflow::TensorShapeRep"* %this1)
  %arrayidx = getelementptr inbounds i8, i8* %call, i64 15
  %0 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %0 to i32
  ret i32 %conv
}

declare dso_local void @_ZN10tensorflow14TensorShapeRep19DestructorOutOfLineEv(%"class.tensorflow::TensorShapeRep"*) #4

declare dso_local void @_ZN10tensorflow15TensorShapeBaseINS_11TensorShapeEEC2EN4absl12lts_202501274SpanIKlEE(%"class.tensorflow::TensorShapeBase"*, i64*, i64) unnamed_addr #4

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64* @_ZN4absl12lts_2025012713span_internal7GetDataIKSt6vectorIlSaIlEEEEDTcl11GetDataImplfp_Li0EEERT_(%"class.std::vector"* nonnull align 8 dereferenceable(24) %c) #0 comdat {
entry:
  %c.addr = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %c, %"class.std::vector"** %c.addr, align 8
  %0 = load %"class.std::vector"*, %"class.std::vector"** %c.addr, align 8
  %call = call i64* @_ZN4absl12lts_2025012713span_internal11GetDataImplIKSt6vectorIlSaIlEEEEDTcldtfp_4dataEERT_c(%"class.std::vector"* nonnull align 8 dereferenceable(24) %0, i8 signext 0) #11
  ret i64* %call
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @_ZNKSt6vectorIlSaIlEE4sizeEv(%"class.std::vector"* %this) #0 comdat align 2 {
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
define linkonce_odr dso_local void @_ZN4absl12lts_202501274SpanIKlEC2EPS2_m(%"struct.absl::lts_20250127::inlined_vector_internal::Storage<long, 4, std::allocator<long>>::Allocated"* %this, i64* %array, i64 %length) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %"struct.absl::lts_20250127::inlined_vector_internal::Storage<long, 4, std::allocator<long>>::Allocated"*, align 8
  %array.addr = alloca i64*, align 8
  %length.addr = alloca i64, align 8
  store %"struct.absl::lts_20250127::inlined_vector_internal::Storage<long, 4, std::allocator<long>>::Allocated"* %this, %"struct.absl::lts_20250127::inlined_vector_internal::Storage<long, 4, std::allocator<long>>::Allocated"** %this.addr, align 8
  store i64* %array, i64** %array.addr, align 8
  store i64 %length, i64* %length.addr, align 8
  %this1 = load %"struct.absl::lts_20250127::inlined_vector_internal::Storage<long, 4, std::allocator<long>>::Allocated"*, %"struct.absl::lts_20250127::inlined_vector_internal::Storage<long, 4, std::allocator<long>>::Allocated"** %this.addr, align 8
  %ptr_ = getelementptr inbounds %"struct.absl::lts_20250127::inlined_vector_internal::Storage<long, 4, std::allocator<long>>::Allocated", %"struct.absl::lts_20250127::inlined_vector_internal::Storage<long, 4, std::allocator<long>>::Allocated"* %this1, i32 0, i32 0
  %0 = load i64*, i64** %array.addr, align 8
  store i64* %0, i64** %ptr_, align 8
  %len_ = getelementptr inbounds %"struct.absl::lts_20250127::inlined_vector_internal::Storage<long, 4, std::allocator<long>>::Allocated", %"struct.absl::lts_20250127::inlined_vector_internal::Storage<long, 4, std::allocator<long>>::Allocated"* %this1, i32 0, i32 1
  %1 = load i64, i64* %length.addr, align 8
  store i64 %1, i64* %len_, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64* @_ZN4absl12lts_2025012713span_internal11GetDataImplIKSt6vectorIlSaIlEEEEDTcldtfp_4dataEERT_c(%"class.std::vector"* nonnull align 8 dereferenceable(24) %c, i8 signext %0) #0 comdat {
entry:
  %c.addr = alloca %"class.std::vector"*, align 8
  %.addr = alloca i8, align 1
  store %"class.std::vector"* %c, %"class.std::vector"** %c.addr, align 8
  store i8 %0, i8* %.addr, align 1
  %1 = load %"class.std::vector"*, %"class.std::vector"** %c.addr, align 8
  %call = call i64* @_ZNKSt6vectorIlSaIlEE4dataEv(%"class.std::vector"* %1) #11
  ret i64* %call
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64* @_ZNKSt6vectorIlSaIlEE4dataEv(%"class.std::vector"* %this) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %0, i32 0, i32 0
  %1 = bitcast %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %_M_impl to %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"*
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data", %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* %1, i32 0, i32 0
  %2 = load i64*, i64** %_M_start, align 8
  %call = call i64* @_ZNKSt6vectorIlSaIlEE11_M_data_ptrIlEEPT_S4_(%"class.std::vector"* %this1, i64* %2) #11
  ret i64* %call
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64* @_ZNKSt6vectorIlSaIlEE11_M_data_ptrIlEEPT_S4_(%"class.std::vector"* %this, i64* %__ptr) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  %__ptr.addr = alloca i64*, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  store i64* %__ptr, i64** %__ptr.addr, align 8
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = load i64*, i64** %__ptr.addr, align 8
  ret i64* %0
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorIlED2Ev(%"class.std::ios_base::Init"* %this) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::ios_base::Init"*, align 8
  store %"class.std::ios_base::Init"* %this, %"class.std::ios_base::Init"** %this.addr, align 8
  %this1 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %this.addr, align 8
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i64 @_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_(i64 %__n, %"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1) %__a) #6 comdat align 2 {
entry:
  %__n.addr = alloca i64, align 8
  %__a.addr = alloca %"class.std::ios_base::Init"*, align 8
  %ref.tmp = alloca %"class.std::ios_base::Init", align 1
  store i64 %__n, i64* %__n.addr, align 8
  store %"class.std::ios_base::Init"* %__a, %"class.std::ios_base::Init"** %__a.addr, align 8
  %0 = load i64, i64* %__n.addr, align 8
  %1 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %__a.addr, align 8
  call void @_ZNSaIlEC2ERKS_(%"class.std::ios_base::Init"* %ref.tmp, %"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1) %1) #11
  %call = call i64 @_ZNSt6vectorIlSaIlEE11_S_max_sizeERKS0_(%"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1) %ref.tmp) #11
  %cmp = icmp ugt i64 %0, %call
  call void @_ZNSaIlED2Ev(%"class.std::ios_base::Init"* %ref.tmp) #11
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_ZSt20__throw_length_errorPKc(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0)) #20
  unreachable

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %__n.addr, align 8
  ret i64 %2
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIlSaIlEEC2EmRKS0_(%"struct.std::_Vector_base"* %this, i64 %__n, %"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1) %__a) unnamed_addr #6 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"struct.std::_Vector_base"*, align 8
  %__n.addr = alloca i64, align 8
  %__a.addr = alloca %"class.std::ios_base::Init"*, align 8
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  store %"class.std::ios_base::Init"* %__a, %"class.std::ios_base::Init"** %__a.addr, align 8
  %this1 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  %0 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %__a.addr, align 8
  call void @_ZNSt12_Vector_baseIlSaIlEE12_Vector_implC2ERKS0_(%"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %_M_impl, %"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1) %0) #11
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
  call void @_ZNSt12_Vector_baseIlSaIlEE12_Vector_implD2Ev(%"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %_M_impl) #11
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val2 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val2
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIlSaIlEE21_M_default_initializeEm(%"class.std::vector"* %this, i64 %__n) #6 comdat align 2 {
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
  %call = call nonnull align 1 dereferenceable(1) %"class.std::ios_base::Init"* @_ZNSt12_Vector_baseIlSaIlEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %4) #11
  %call2 = call i64* @_ZSt27__uninitialized_default_n_aIPlmlET_S1_T0_RSaIT1_E(i64* %2, i64 %3, %"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1) %call)
  %5 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl3 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %5, i32 0, i32 0
  %6 = bitcast %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %_M_impl3 to %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"*
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data", %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* %6, i32 0, i32 1
  store i64* %call2, i64** %_M_finish, align 8
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i64* @_ZSt27__uninitialized_default_n_aIPlmlET_S1_T0_RSaIT1_E(i64* %__first, i64 %__n, %"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1) %0) #6 comdat {
entry:
  %__first.addr = alloca i64*, align 8
  %__n.addr = alloca i64, align 8
  %.addr = alloca %"class.std::ios_base::Init"*, align 8
  store i64* %__first, i64** %__first.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  store %"class.std::ios_base::Init"* %0, %"class.std::ios_base::Init"** %.addr, align 8
  %1 = load i64*, i64** %__first.addr, align 8
  %2 = load i64, i64* %__n.addr, align 8
  %call = call i64* @_ZSt25__uninitialized_default_nIPlmET_S1_T0_(i64* %1, i64 %2)
  ret i64* %call
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i64* @_ZSt25__uninitialized_default_nIPlmET_S1_T0_(i64* %__first, i64 %__n) #6 comdat {
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
define linkonce_odr dso_local i64* @_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPlmEET_S3_T0_(i64* %__first, i64 %__n) #6 comdat align 2 {
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
  %call = call i64* @_ZSt11__addressofIlEPT_RS0_(i64* nonnull align 8 dereferenceable(8) %1) #11
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
define linkonce_odr dso_local i64* @_ZSt11__addressofIlEPT_RS0_(i64* nonnull align 8 dereferenceable(8) %__r) #0 comdat {
entry:
  %__r.addr = alloca i64*, align 8
  store i64* %__r, i64** %__r.addr, align 8
  %0 = load i64*, i64** %__r.addr, align 8
  ret i64* %0
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZSt10_ConstructIlJEEvPT_DpOT0_(i64* %__p) #0 comdat {
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
define linkonce_odr dso_local i64* @_ZSt6fill_nIPlmlET_S1_T0_RKT1_(i64* %__first, i64 %__n, i64* nonnull align 8 dereferenceable(8) %__value) #6 comdat {
entry:
  %__first.addr = alloca i64*, align 8
  %__n.addr = alloca i64, align 8
  %__value.addr = alloca i64*, align 8
  %agg.tmp = alloca %"class.std::ios_base::Init", align 1
  %undef.agg.tmp = alloca %"class.std::ios_base::Init", align 1
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
define linkonce_odr dso_local i64 @_ZSt17__size_to_integerm(i64 %__n) #0 comdat {
entry:
  %__n.addr = alloca i64, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %0 = load i64, i64* %__n.addr, align 8
  ret i64 %0
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZSt19__iterator_categoryIPlENSt15iterator_traitsIT_E17iterator_categoryERKS2_(i64** nonnull align 8 dereferenceable(8) %0) #0 comdat {
entry:
  %.addr = alloca i64**, align 8
  store i64** %0, i64*** %.addr, align 8
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i64* @_ZSt10__fill_n_aIPlmlET_S1_T0_RKT1_St26random_access_iterator_tag(i64* %__first, i64 %__n, i64* nonnull align 8 dereferenceable(8) %__value) #6 comdat {
entry:
  %retval = alloca i64*, align 8
  %0 = alloca %"class.std::ios_base::Init", align 1
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
define linkonce_odr dso_local void @_ZSt8__fill_aIPllEvT_S1_RKT0_(i64* %__first, i64* %__last, i64* nonnull align 8 dereferenceable(8) %__value) #6 comdat {
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
define linkonce_odr dso_local void @_ZSt9__fill_a1IPllEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_(i64* %__first, i64* %__last, i64* nonnull align 8 dereferenceable(8) %__value) #0 comdat {
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
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIlSaIlEE12_Vector_implC2ERKS0_(%"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %this, %"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1) %__a) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"*, align 8
  %__a.addr = alloca %"class.std::ios_base::Init"*, align 8
  store %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %this, %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"** %this.addr, align 8
  store %"class.std::ios_base::Init"* %__a, %"class.std::ios_base::Init"** %__a.addr, align 8
  %this1 = load %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"*, %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"** %this.addr, align 8
  %0 = bitcast %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %this1 to %"class.std::ios_base::Init"*
  %1 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %__a.addr, align 8
  call void @_ZNSaIlEC2ERKS_(%"class.std::ios_base::Init"* %0, %"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1) %1) #11
  %2 = bitcast %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %this1 to %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"*
  call void @_ZNSt12_Vector_baseIlSaIlEE17_Vector_impl_dataC2Ev(%"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* %2) #11
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIlSaIlEE17_M_create_storageEm(%"struct.std::_Vector_base"* %this, i64 %__n) #6 comdat align 2 {
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
define linkonce_odr dso_local i64* @_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm(%"struct.std::_Vector_base"* %this, i64 %__n) #6 comdat align 2 {
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
  %1 = bitcast %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl"* %_M_impl to %"class.std::ios_base::Init"*
  %2 = load i64, i64* %__n.addr, align 8
  %call = call i64* @_ZNSt16allocator_traitsISaIlEE8allocateERS0_m(%"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1) %1, i64 %2)
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64* [ %call, %cond.true ], [ null, %cond.false ]
  ret i64* %cond
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i64* @_ZNSt16allocator_traitsISaIlEE8allocateERS0_m(%"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1) %__a, i64 %__n) #6 comdat align 2 {
entry:
  %__a.addr = alloca %"class.std::ios_base::Init"*, align 8
  %__n.addr = alloca i64, align 8
  store %"class.std::ios_base::Init"* %__a, %"class.std::ios_base::Init"** %__a.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %0 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %__a.addr, align 8
  %1 = bitcast %"class.std::ios_base::Init"* %0 to %"class.std::ios_base::Init"*
  %2 = load i64, i64* %__n.addr, align 8
  %call = call i64* @_ZN9__gnu_cxx13new_allocatorIlE8allocateEmPKv(%"class.std::ios_base::Init"* %1, i64 %2, i8* null)
  ret i64* %call
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i64* @_ZN9__gnu_cxx13new_allocatorIlE8allocateEmPKv(%"class.std::ios_base::Init"* %this, i64 %__n, i8* %0) #6 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::ios_base::Init"*, align 8
  %__n.addr = alloca i64, align 8
  %.addr = alloca i8*, align 8
  store %"class.std::ios_base::Init"* %this, %"class.std::ios_base::Init"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  store i8* %0, i8** %.addr, align 8
  %this1 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %this.addr, align 8
  %1 = load i64, i64* %__n.addr, align 8
  %call = call i64 @_ZNK9__gnu_cxx13new_allocatorIlE11_M_max_sizeEv(%"class.std::ios_base::Init"* %this1) #11
  %cmp = icmp ugt i64 %1, %call
  br i1 %cmp, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %__n.addr, align 8
  %cmp2 = icmp ugt i64 %2, 2305843009213693951
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  call void @_ZSt28__throw_bad_array_new_lengthv() #20
  unreachable

if.end:                                           ; preds = %if.then
  call void @_ZSt17__throw_bad_allocv() #20
  unreachable

if.end4:                                          ; preds = %entry
  %3 = load i64, i64* %__n.addr, align 8
  %mul = mul i64 %3, 8
  %call5 = call noalias nonnull i8* @_Znwm(i64 %mul) #23
  %4 = bitcast i8* %call5 to i64*
  ret i64* %4
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @_ZNK9__gnu_cxx13new_allocatorIlE11_M_max_sizeEv(%"class.std::ios_base::Init"* %this) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::ios_base::Init"*, align 8
  store %"class.std::ios_base::Init"* %this, %"class.std::ios_base::Init"** %this.addr, align 8
  %this1 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %this.addr, align 8
  ret i64 1152921504606846975
}

; Function Attrs: noreturn
declare dso_local void @_ZSt28__throw_bad_array_new_lengthv() #12

; Function Attrs: noreturn
declare dso_local void @_ZSt17__throw_bad_allocv() #12

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSaIlEC2ERKS_(%"class.std::ios_base::Init"* %this, %"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1) %__a) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::ios_base::Init"*, align 8
  %__a.addr = alloca %"class.std::ios_base::Init"*, align 8
  store %"class.std::ios_base::Init"* %this, %"class.std::ios_base::Init"** %this.addr, align 8
  store %"class.std::ios_base::Init"* %__a, %"class.std::ios_base::Init"** %__a.addr, align 8
  %this1 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %this.addr, align 8
  %0 = bitcast %"class.std::ios_base::Init"* %this1 to %"class.std::ios_base::Init"*
  %1 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %__a.addr, align 8
  %2 = bitcast %"class.std::ios_base::Init"* %1 to %"class.std::ios_base::Init"*
  call void @_ZN9__gnu_cxx13new_allocatorIlEC2ERKS1_(%"class.std::ios_base::Init"* %0, %"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1) %2) #11
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIlSaIlEE17_Vector_impl_dataC2Ev(%"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data"* %this) unnamed_addr #0 comdat align 2 {
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
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorIlEC2ERKS1_(%"class.std::ios_base::Init"* %this, %"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1) %0) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::ios_base::Init"*, align 8
  %.addr = alloca %"class.std::ios_base::Init"*, align 8
  store %"class.std::ios_base::Init"* %this, %"class.std::ios_base::Init"** %this.addr, align 8
  store %"class.std::ios_base::Init"* %0, %"class.std::ios_base::Init"** %.addr, align 8
  %this1 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %this.addr, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @_ZNSt6vectorIlSaIlEE11_S_max_sizeERKS0_(%"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1) %__a) #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__a.addr = alloca %"class.std::ios_base::Init"*, align 8
  %__diffmax = alloca i64, align 8
  %__allocmax = alloca i64, align 8
  store %"class.std::ios_base::Init"* %__a, %"class.std::ios_base::Init"** %__a.addr, align 8
  store i64 1152921504606846975, i64* %__diffmax, align 8
  %0 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %__a.addr, align 8
  %call = call i64 @_ZNSt16allocator_traitsISaIlEE8max_sizeERKS0_(%"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1) %0) #11
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
  call void @__clang_call_terminate(i8* %3) #16
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @_ZSt20__throw_length_errorPKc(i8*) #12

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @_ZNSt16allocator_traitsISaIlEE8max_sizeERKS0_(%"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1) %__a) #0 comdat align 2 {
entry:
  %__a.addr = alloca %"class.std::ios_base::Init"*, align 8
  store %"class.std::ios_base::Init"* %__a, %"class.std::ios_base::Init"** %__a.addr, align 8
  %0 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %__a.addr, align 8
  %1 = bitcast %"class.std::ios_base::Init"* %0 to %"class.std::ios_base::Init"*
  %call = call i64 @_ZNK9__gnu_cxx13new_allocatorIlE8max_sizeEv(%"class.std::ios_base::Init"* %1) #11
  ret i64 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) i64* @_ZSt3minImERKT_S2_S2_(i64* nonnull align 8 dereferenceable(8) %__a, i64* nonnull align 8 dereferenceable(8) %__b) #0 comdat {
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
define linkonce_odr dso_local i64 @_ZNK9__gnu_cxx13new_allocatorIlE8max_sizeEv(%"class.std::ios_base::Init"* %this) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::ios_base::Init"*, align 8
  store %"class.std::ios_base::Init"* %this, %"class.std::ios_base::Init"** %this.addr, align 8
  %this1 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %this.addr, align 8
  %call = call i64 @_ZNK9__gnu_cxx13new_allocatorIlE11_M_max_sizeEv(%"class.std::ios_base::Init"* %this1) #11
  ret i64 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorIlEC2Ev(%"class.std::ios_base::Init"* %this) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::ios_base::Init"*, align 8
  store %"class.std::ios_base::Init"* %this, %"class.std::ios_base::Init"** %this.addr, align 8
  %this1 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %this.addr, align 8
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow12TensorBufferC2EPv(%"class.tensorflow::TensorBuffer"* %this, i8* %data_ptr) unnamed_addr #6 comdat align 2 {
entry:
  %this.addr = alloca %"class.tensorflow::TensorBuffer"*, align 8
  %data_ptr.addr = alloca i8*, align 8
  store %"class.tensorflow::TensorBuffer"* %this, %"class.tensorflow::TensorBuffer"** %this.addr, align 8
  store i8* %data_ptr, i8** %data_ptr.addr, align 8
  %this1 = load %"class.tensorflow::TensorBuffer"*, %"class.tensorflow::TensorBuffer"** %this.addr, align 8
  %0 = bitcast %"class.tensorflow::TensorBuffer"* %this1 to %"class.tsl::core::RefCounted"*
  call void @_ZN3tsl4core10RefCountedC2Ev(%"class.tsl::core::RefCounted"* %0)
  %1 = bitcast %"class.tensorflow::TensorBuffer"* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [11 x i8*] }, { [11 x i8*] }* @_ZTVN10tensorflow12TensorBufferE, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %1, align 8
  %data_ = getelementptr inbounds %"class.tensorflow::TensorBuffer", %"class.tensorflow::TensorBuffer"* %this1, i32 0, i32 1
  %2 = load i8*, i8** %data_ptr.addr, align 8
  store i8* %2, i8** %data_, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN16TF_ManagedBufferD2Ev(%class.TF_ManagedBuffer* %this) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %class.TF_ManagedBuffer*, align 8
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  store %class.TF_ManagedBuffer* %this, %class.TF_ManagedBuffer** %this.addr, align 8
  %this1 = load %class.TF_ManagedBuffer*, %class.TF_ManagedBuffer** %this.addr, align 8
  %0 = bitcast %class.TF_ManagedBuffer* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [11 x i8*] }, { [11 x i8*] }* @_ZTV16TF_ManagedBuffer, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %0, align 8
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
  call void @_ZN10tensorflow12TensorBufferD2Ev(%"class.tensorflow::TensorBuffer"* %5) #11
  ret void

lpad:                                             ; preds = %invoke.cont, %entry
  %6 = landingpad { i8*, i32 }
          catch i8* null
  %7 = extractvalue { i8*, i32 } %6, 0
  store i8* %7, i8** %exn.slot, align 8
  %8 = extractvalue { i8*, i32 } %6, 1
  store i32 %8, i32* %ehselector.slot, align 4
  %9 = bitcast %class.TF_ManagedBuffer* %this1 to %"class.tensorflow::TensorBuffer"*
  call void @_ZN10tensorflow12TensorBufferD2Ev(%"class.tensorflow::TensorBuffer"* %9) #11
  br label %terminate.handler

terminate.handler:                                ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  call void @__clang_call_terminate(i8* %exn) #16
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN16TF_ManagedBufferD0Ev(%class.TF_ManagedBuffer* %this) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %class.TF_ManagedBuffer*, align 8
  store %class.TF_ManagedBuffer* %this, %class.TF_ManagedBuffer** %this.addr, align 8
  %this1 = load %class.TF_ManagedBuffer*, %class.TF_ManagedBuffer** %this.addr, align 8
  call void @_ZN16TF_ManagedBufferD2Ev(%class.TF_ManagedBuffer* %this1) #11
  %0 = bitcast %class.TF_ManagedBuffer* %this1 to i8*
  call void @_ZdlPv(i8* %0) #19
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNK3tsl4core10RefCounted13NotifyDeletedEv(%"class.tsl::core::RefCounted"* %this) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.tsl::core::RefCounted"*, align 8
  store %"class.tsl::core::RefCounted"* %this, %"class.tsl::core::RefCounted"** %this.addr, align 8
  %this1 = load %"class.tsl::core::RefCounted"*, %"class.tsl::core::RefCounted"** %this.addr, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @_ZNK16TF_ManagedBuffer4sizeEv(%class.TF_ManagedBuffer* %this) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %class.TF_ManagedBuffer*, align 8
  store %class.TF_ManagedBuffer* %this, %class.TF_ManagedBuffer** %this.addr, align 8
  %this1 = load %class.TF_ManagedBuffer*, %class.TF_ManagedBuffer** %this.addr, align 8
  %len_ = getelementptr inbounds %class.TF_ManagedBuffer, %class.TF_ManagedBuffer* %this1, i32 0, i32 1
  %0 = load i64, i64* %len_, align 8
  ret i64 %0
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %"class.tensorflow::TensorBuffer"* @_ZN16TF_ManagedBuffer11root_bufferEv(%class.TF_ManagedBuffer* %this) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %class.TF_ManagedBuffer*, align 8
  store %class.TF_ManagedBuffer* %this, %class.TF_ManagedBuffer** %this.addr, align 8
  %this1 = load %class.TF_ManagedBuffer*, %class.TF_ManagedBuffer** %this.addr, align 8
  %0 = bitcast %class.TF_ManagedBuffer* %this1 to %"class.tensorflow::TensorBuffer"*
  ret %"class.tensorflow::TensorBuffer"* %0
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNK16TF_ManagedBuffer25FillAllocationDescriptionEPN10tensorflow21AllocationDescriptionE(%class.TF_ManagedBuffer* %this, %"class.tensorflow::AllocationDescription"* %0) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %class.TF_ManagedBuffer*, align 8
  %.addr = alloca %"class.tensorflow::AllocationDescription"*, align 8
  store %class.TF_ManagedBuffer* %this, %class.TF_ManagedBuffer** %this.addr, align 8
  store %"class.tensorflow::AllocationDescription"* %0, %"class.tensorflow::AllocationDescription"** %.addr, align 8
  %this1 = load %class.TF_ManagedBuffer*, %class.TF_ManagedBuffer** %this.addr, align 8
  ret void
}

declare dso_local zeroext i1 @_ZNK10tensorflow12TensorBuffer17GetAllocatedBytesEPm(%"class.tensorflow::TensorBuffer"*, i64*) unnamed_addr #4

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local zeroext i1 @_ZNK16TF_ManagedBuffer10OwnsMemoryEv(%class.TF_ManagedBuffer* %this) unnamed_addr #0 comdat align 2 {
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
define linkonce_odr dso_local i32 @_ZNK10tensorflow12TensorBuffer13GetMemoryTypeEv(%"class.tensorflow::TensorBuffer"* %this) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.tensorflow::TensorBuffer"*, align 8
  store %"class.tensorflow::TensorBuffer"* %this, %"class.tensorflow::TensorBuffer"** %this.addr, align 8
  %this1 = load %"class.tensorflow::TensorBuffer"*, %"class.tensorflow::TensorBuffer"** %this.addr, align 8
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow12TensorBufferD2Ev(%"class.tensorflow::TensorBuffer"* %this) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.tensorflow::TensorBuffer"*, align 8
  store %"class.tensorflow::TensorBuffer"* %this, %"class.tensorflow::TensorBuffer"** %this.addr, align 8
  %this1 = load %"class.tensorflow::TensorBuffer"*, %"class.tensorflow::TensorBuffer"** %this.addr, align 8
  %0 = bitcast %"class.tensorflow::TensorBuffer"* %this1 to %"class.tsl::core::RefCounted"*
  call void @_ZN3tsl4core10RefCountedD2Ev(%"class.tsl::core::RefCounted"* %0) #11
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN3tsl4core10RefCountedD2Ev(%"class.tsl::core::RefCounted"* %this) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr.i = alloca %"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::Storage.4"*, align 8
  %__m.addr.i = alloca i32, align 4
  %__b.i = alloca i32, align 4
  %atomic-temp.i = alloca i64, align 8
  %this.addr = alloca %"class.tsl::core::RefCounted"*, align 8
  %_result = alloca %"struct.tsl::internal::CheckOpString", align 8
  %ref.tmp = alloca i64, align 8
  %ref.tmp3 = alloca i32, align 4
  %ref.tmp11 = alloca %"class.tsl::internal::LogMessageFatal", align 8
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  store %"class.tsl::core::RefCounted"* %this, %"class.tsl::core::RefCounted"** %this.addr, align 8
  %this1 = load %"class.tsl::core::RefCounted"*, %"class.tsl::core::RefCounted"** %this.addr, align 8
  %0 = bitcast %"class.tsl::core::RefCounted"* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN3tsl4core10RefCountedE, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %0, align 8
  br label %while.cond

while.cond:                                       ; preds = %entry
  %ref_ = getelementptr inbounds %"class.tsl::core::RefCounted", %"class.tsl::core::RefCounted"* %this1, i32 0, i32 1
  %1 = bitcast %"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::CompressedTupleImpl"* %ref_ to %"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::Storage.4"*
  store %"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::Storage.4"* %1, %"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::Storage.4"** %this.addr.i, align 8
  store i32 5, i32* %__m.addr.i, align 4
  %this1.i = load %"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::Storage.4"*, %"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::Storage.4"** %this.addr.i, align 8
  %2 = load i32, i32* %__m.addr.i, align 4
  %call.i = invoke i32 @_ZStanSt12memory_orderSt23__memory_order_modifier(i32 %2, i32 65535)
          to label %invoke.cont.i unwind label %terminate.lpad.i

invoke.cont.i:                                    ; preds = %while.cond
  store i32 %call.i, i32* %__b.i, align 4
  %_M_i.i = getelementptr inbounds %"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::Storage.4", %"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::Storage.4"* %this1.i, i32 0, i32 0
  %3 = load i32, i32* %__m.addr.i, align 4
  switch i32 %3, label %monotonic.i [
    i32 1, label %acquire.i
    i32 2, label %acquire.i
    i32 5, label %seqcst.i
  ]

monotonic.i:                                      ; preds = %invoke.cont.i
  %4 = load i64, i64* %_M_i.i, align 8
  store i64 %4, i64* %atomic-temp.i, align 8
  br label %_ZNKSt13__atomic_baseIlE4loadESt12memory_order.exit

acquire.i:                                        ; preds = %invoke.cont.i, %invoke.cont.i
  %5 = load i64, i64* %_M_i.i, align 8
  store i64 %5, i64* %atomic-temp.i, align 8
  br label %_ZNKSt13__atomic_baseIlE4loadESt12memory_order.exit

seqcst.i:                                         ; preds = %invoke.cont.i
  %6 = load i64, i64* %_M_i.i, align 8
  store i64 %6, i64* %atomic-temp.i, align 8
  br label %_ZNKSt13__atomic_baseIlE4loadESt12memory_order.exit

terminate.lpad.i:                                 ; preds = %while.cond
  %7 = landingpad { i8*, i32 }
          catch i8* null
  %8 = extractvalue { i8*, i32 } %7, 0
  call void @__clang_call_terminate(i8* %8) #16
  unreachable

_ZNKSt13__atomic_baseIlE4loadESt12memory_order.exit: ; preds = %monotonic.i, %acquire.i, %seqcst.i
  %9 = load i64, i64* %atomic-temp.i, align 8
  %call2 = invoke i64 @_ZN3tsl8internal21GetReferenceableValueEl(i64 %9)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %_ZNKSt13__atomic_baseIlE4loadESt12memory_order.exit
  store i64 %call2, i64* %ref.tmp, align 8
  %call5 = invoke i32 @_ZN3tsl8internal21GetReferenceableValueEi(i32 0)
          to label %invoke.cont4 unwind label %terminate.lpad

invoke.cont4:                                     ; preds = %invoke.cont
  store i32 %call5, i32* %ref.tmp3, align 4
  %call7 = invoke %"class.std::__cxx11::basic_string"* @_ZN3tsl8internal12Check_EQImplIliEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc(i64* nonnull align 8 dereferenceable(8) %ref.tmp, i32* nonnull align 4 dereferenceable(4) %ref.tmp3, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
          to label %invoke.cont6 unwind label %terminate.lpad

invoke.cont6:                                     ; preds = %invoke.cont4
  invoke void @_ZN3tsl8internal13CheckOpStringC2EPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"struct.tsl::internal::CheckOpString"* %_result, %"class.std::__cxx11::basic_string"* %call7)
          to label %invoke.cont8 unwind label %terminate.lpad

invoke.cont8:                                     ; preds = %invoke.cont6
  %call10 = invoke zeroext i1 @_ZNK3tsl8internal13CheckOpStringcvbEv(%"struct.tsl::internal::CheckOpString"* %_result)
          to label %invoke.cont9 unwind label %terminate.lpad

invoke.cont9:                                     ; preds = %invoke.cont8
  br i1 %call10, label %while.body, label %while.end

while.body:                                       ; preds = %invoke.cont9
  invoke void @_ZN3tsl8internal15LogMessageFatalC1EPKci(%"class.tsl::internal::LogMessageFatal"* %ref.tmp11, i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.1.2, i64 0, i64 0), i32 303) #22
          to label %invoke.cont12 unwind label %terminate.lpad

invoke.cont12:                                    ; preds = %while.body
  %str_ = getelementptr inbounds %"struct.tsl::internal::CheckOpString", %"struct.tsl::internal::CheckOpString"* %_result, i32 0, i32 0
  %10 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %str_, align 8
  %call14 = invoke nonnull align 8 dereferenceable(136) %"class.tsl::internal::LogMessageFatal"* @_ZStlsIN3tsl8internal15LogMessageFatalENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_SA_RKT0_(%"class.tsl::internal::LogMessageFatal"* nonnull align 8 dereferenceable(136) %ref.tmp11, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %10)
          to label %invoke.cont13 unwind label %lpad

invoke.cont13:                                    ; preds = %invoke.cont12
  call void @_ZN3tsl8internal15LogMessageFatalD1Ev(%"class.tsl::internal::LogMessageFatal"* %ref.tmp11) #16
  unreachable

lpad:                                             ; preds = %invoke.cont12
  %11 = landingpad { i8*, i32 }
          catch i8* null
  %12 = extractvalue { i8*, i32 } %11, 0
  store i8* %12, i8** %exn.slot, align 8
  %13 = extractvalue { i8*, i32 } %11, 1
  store i32 %13, i32* %ehselector.slot, align 4
  call void @_ZN3tsl8internal15LogMessageFatalD1Ev(%"class.tsl::internal::LogMessageFatal"* %ref.tmp11) #16
  unreachable

14:                                               ; No predecessors!
  br label %terminate.handler

while.end:                                        ; preds = %invoke.cont9
  ret void

terminate.lpad:                                   ; preds = %while.body, %invoke.cont8, %invoke.cont6, %invoke.cont4, %invoke.cont, %_ZNKSt13__atomic_baseIlE4loadESt12memory_order.exit
  %15 = landingpad { i8*, i32 }
          catch i8* null
  %16 = extractvalue { i8*, i32 } %15, 0
  call void @__clang_call_terminate(i8* %16) #16
  unreachable

terminate.handler:                                ; preds = %14
  %exn = load i8*, i8** %exn.slot, align 8
  call void @__clang_call_terminate(i8* %exn) #16
  unreachable
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %"class.std::__cxx11::basic_string"* @_ZN3tsl8internal12Check_EQImplIliEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc(i64* nonnull align 8 dereferenceable(8) %v1, i32* nonnull align 4 dereferenceable(4) %v2, i8* %exprtext) #6 comdat {
entry:
  %retval = alloca %"class.std::__cxx11::basic_string"*, align 8
  %v1.addr = alloca i64*, align 8
  %v2.addr = alloca i32*, align 8
  %exprtext.addr = alloca i8*, align 8
  store i64* %v1, i64** %v1.addr, align 8
  store i32* %v2, i32** %v2.addr, align 8
  store i8* %exprtext, i8** %exprtext.addr, align 8
  %0 = load i64*, i64** %v1.addr, align 8
  %1 = load i64, i64* %0, align 8
  %2 = load i32*, i32** %v2.addr, align 8
  %3 = load i32, i32* %2, align 4
  %conv = sext i32 %3 to i64
  %cmp = icmp eq i64 %1, %conv
  %lnot = xor i1 %cmp, true
  %lnot1 = xor i1 %lnot, true
  br i1 %lnot1, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store %"class.std::__cxx11::basic_string"* null, %"class.std::__cxx11::basic_string"** %retval, align 8
  br label %return

if.else:                                          ; preds = %entry
  %4 = load i64*, i64** %v1.addr, align 8
  %5 = load i32*, i32** %v2.addr, align 8
  %6 = load i8*, i8** %exprtext.addr, align 8
  %call = call %"class.std::__cxx11::basic_string"* @_ZN3tsl8internal17MakeCheckOpStringIliEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc(i64* nonnull align 8 dereferenceable(8) %4, i32* nonnull align 4 dereferenceable(4) %5, i8* %6)
  store %"class.std::__cxx11::basic_string"* %call, %"class.std::__cxx11::basic_string"** %retval, align 8
  br label %return

return:                                           ; preds = %if.else, %if.then
  %7 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %retval, align 8
  ret %"class.std::__cxx11::basic_string"* %7
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %"class.std::__cxx11::basic_string"* @_ZN3tsl8internal17MakeCheckOpStringIliEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc(i64* nonnull align 8 dereferenceable(8) %v1, i32* nonnull align 4 dereferenceable(4) %v2, i8* %exprtext) #6 comdat personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %v1.addr = alloca i64*, align 8
  %v2.addr = alloca i32*, align 8
  %exprtext.addr = alloca i8*, align 8
  %comb = alloca %"class.tsl::internal::CheckOpMessageBuilder", align 8
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  store i64* %v1, i64** %v1.addr, align 8
  store i32* %v2, i32** %v2.addr, align 8
  store i8* %exprtext, i8** %exprtext.addr, align 8
  %0 = load i8*, i8** %exprtext.addr, align 8
  call void @_ZN3tsl8internal21CheckOpMessageBuilderC1EPKc(%"class.tsl::internal::CheckOpMessageBuilder"* %comb, i8* %0)
  %call = invoke %"class.std::basic_ostream"* @_ZN3tsl8internal21CheckOpMessageBuilder7ForVar1Ev(%"class.tsl::internal::CheckOpMessageBuilder"* %comb)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %1 = load i64*, i64** %v1.addr, align 8
  invoke void @_ZN3tsl8internal22MakeCheckOpValueStringIlEEvPSoRKT_(%"class.std::basic_ostream"* %call, i64* nonnull align 8 dereferenceable(8) %1)
          to label %invoke.cont1 unwind label %lpad

invoke.cont1:                                     ; preds = %invoke.cont
  %call3 = invoke %"class.std::basic_ostream"* @_ZN3tsl8internal21CheckOpMessageBuilder7ForVar2Ev(%"class.tsl::internal::CheckOpMessageBuilder"* %comb)
          to label %invoke.cont2 unwind label %lpad

invoke.cont2:                                     ; preds = %invoke.cont1
  %2 = load i32*, i32** %v2.addr, align 8
  invoke void @_ZN3tsl8internal22MakeCheckOpValueStringIiEEvPSoRKT_(%"class.std::basic_ostream"* %call3, i32* nonnull align 4 dereferenceable(4) %2)
          to label %invoke.cont4 unwind label %lpad

invoke.cont4:                                     ; preds = %invoke.cont2
  %call6 = invoke %"class.std::__cxx11::basic_string"* @_ZN3tsl8internal21CheckOpMessageBuilder9NewStringB5cxx11Ev(%"class.tsl::internal::CheckOpMessageBuilder"* %comb)
          to label %invoke.cont5 unwind label %lpad

invoke.cont5:                                     ; preds = %invoke.cont4
  call void @_ZN3tsl8internal21CheckOpMessageBuilderD1Ev(%"class.tsl::internal::CheckOpMessageBuilder"* %comb) #11
  ret %"class.std::__cxx11::basic_string"* %call6

lpad:                                             ; preds = %invoke.cont4, %invoke.cont2, %invoke.cont1, %invoke.cont, %entry
  %3 = landingpad { i8*, i32 }
          cleanup
  %4 = extractvalue { i8*, i32 } %3, 0
  store i8* %4, i8** %exn.slot, align 8
  %5 = extractvalue { i8*, i32 } %3, 1
  store i32 %5, i32* %ehselector.slot, align 4
  call void @_ZN3tsl8internal21CheckOpMessageBuilderD1Ev(%"class.tsl::internal::CheckOpMessageBuilder"* %comb) #11
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val7 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val7
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN3tsl4core10RefCountedD0Ev(%"class.tsl::core::RefCounted"* %this) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.tsl::core::RefCounted"*, align 8
  store %"class.tsl::core::RefCounted"* %this, %"class.tsl::core::RefCounted"** %this.addr, align 8
  %this1 = load %"class.tsl::core::RefCounted"*, %"class.tsl::core::RefCounted"** %this.addr, align 8
  call void @_ZN3tsl4core10RefCountedD2Ev(%"class.tsl::core::RefCounted"* %this1) #11
  %0 = bitcast %"class.tsl::core::RefCounted"* %this1 to i8*
  call void @_ZdlPv(i8* %0) #19
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN3tsl4core10RefCountedC2Ev(%"class.tsl::core::RefCounted"* %this) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.tsl::core::RefCounted"*, align 8
  store %"class.tsl::core::RefCounted"* %this, %"class.tsl::core::RefCounted"** %this.addr, align 8
  %this1 = load %"class.tsl::core::RefCounted"*, %"class.tsl::core::RefCounted"** %this.addr, align 8
  %0 = bitcast %"class.tsl::core::RefCounted"* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN3tsl4core10RefCountedE, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %0, align 8
  %ref_ = getelementptr inbounds %"class.tsl::core::RefCounted", %"class.tsl::core::RefCounted"* %this1, i32 0, i32 1
  call void @_ZNSt6atomicIlEC2El(%"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::CompressedTupleImpl"* %ref_, i64 1) #11
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt6atomicIlEC2El(%"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::CompressedTupleImpl"* %this, i64 %__i) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::CompressedTupleImpl"*, align 8
  %__i.addr = alloca i64, align 8
  store %"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::CompressedTupleImpl"* %this, %"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::CompressedTupleImpl"** %this.addr, align 8
  store i64 %__i, i64* %__i.addr, align 8
  %this1 = load %"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::CompressedTupleImpl"*, %"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::CompressedTupleImpl"** %this.addr, align 8
  %0 = bitcast %"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::CompressedTupleImpl"* %this1 to %"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::Storage.4"*
  %1 = load i64, i64* %__i.addr, align 8
  call void @_ZNSt13__atomic_baseIlEC2El(%"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::Storage.4"* %0, i64 %1) #11
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt13__atomic_baseIlEC2El(%"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::Storage.4"* %this, i64 %__i) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::Storage.4"*, align 8
  %__i.addr = alloca i64, align 8
  store %"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::Storage.4"* %this, %"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::Storage.4"** %this.addr, align 8
  store i64 %__i, i64* %__i.addr, align 8
  %this1 = load %"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::Storage.4"*, %"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::Storage.4"** %this.addr, align 8
  %_M_i = getelementptr inbounds %"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::Storage.4", %"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::Storage.4"* %this1, i32 0, i32 0
  %0 = load i64, i64* %__i.addr, align 8
  store i64 %0, i64* %_M_i, align 8
  ret void
}

; Function Attrs: noinline optnone uwtable
define dso_local %struct.TF_Tensor* @TF_NewTensor(i32 %dtype, i64* %dims, i32 %num_dims, i8* %data, i64 %len, void (i8*, i64, i8*)* %deallocator, i8* %deallocator_arg) #6 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
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
  %call = call zeroext i1 @_ZN10tensorflow20DataTypeCanUseMemcpyENS_8DataTypeE(i32 %2)
  br i1 %call, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true2
  %3 = load i8*, i8** %data.addr, align 8
  %4 = ptrtoint i8* %3 to i64
  store i32 1, i32* %ref.tmp, align 4
  store i32 16, i32* %ref.tmp3, align 4
  %call4 = call nonnull align 4 dereferenceable(4) i32* @_ZSt3maxIiERKT_S2_S2_(i32* nonnull align 4 dereferenceable(4) %ref.tmp, i32* nonnull align 4 dereferenceable(4) %ref.tmp3)
  %5 = load i32, i32* %call4, align 4
  %conv = sext i32 %5 to i64
  call void @klee_div_zero_check(i64 %conv)
  %rem = srem i64 %4, %conv, !klee.check.div !20
  %cmp5 = icmp ne i64 %rem, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true2, %land.lhs.true, %entry
  %6 = phi i1 [ false, %land.lhs.true2 ], [ false, %land.lhs.true ], [ false, %entry ], [ %cmp5, %land.rhs ]
  br i1 %6, label %if.then, label %if.else

if.then:                                          ; preds = %land.end
  %call6 = call noalias nonnull i8* @_Znwm(i64 56) #21
  %7 = bitcast i8* %call6 to %class.TF_ManagedBuffer*
  %8 = load i64, i64* %len.addr, align 8
  %call7 = invoke i8* @_ZN10tensorflow15allocate_tensorEPKcm(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4.7, i64 0, i64 0), i64 %8)
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
  call void @_ZdlPv(i8* %call6) #19
  br label %eh.resume

if.else:                                          ; preds = %land.end
  %call10 = call noalias nonnull i8* @_Znwm(i64 56) #21
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
  call void @_ZdlPv(i8* %call10) #19
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

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local zeroext i1 @_ZN10tensorflow20DataTypeCanUseMemcpyENS_8DataTypeE(i32 %dt) #6 comdat {
entry:
  %dt.addr = alloca i32, align 4
  store i32 %dt, i32* %dt.addr, align 4
  %0 = load i32, i32* %dt.addr, align 4
  %call = call zeroext i1 @_ZNK10tensorflow11DataTypeSet8ContainsENS_8DataTypeE(%"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::Storage.4"* @_ZN10tensorflowL22kDataTypesCanUseMemcpyE, i32 %0)
  ret i1 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 4 dereferenceable(4) i32* @_ZSt3maxIiERKT_S2_S2_(i32* nonnull align 4 dereferenceable(4) %__a, i32* nonnull align 4 dereferenceable(4) %__b) #0 comdat {
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

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local zeroext i1 @_ZNK10tensorflow11DataTypeSet8ContainsENS_8DataTypeE(%"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::Storage.4"* %this, i32 %dt) #0 comdat align 2 {
entry:
  %this.addr = alloca %"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::Storage.4"*, align 8
  %dt.addr = alloca i32, align 4
  store %"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::Storage.4"* %this, %"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::Storage.4"** %this.addr, align 8
  store i32 %dt, i32* %dt.addr, align 4
  %this1 = load %"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::Storage.4"*, %"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::Storage.4"** %this.addr, align 8
  %0 = load i32, i32* %dt.addr, align 4
  %conv = sext i32 %0 to i64
  %cmp = icmp ult i64 %conv, 64
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %mask_ = getelementptr inbounds %"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::Storage.4", %"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::Storage.4"* %this1, i32 0, i32 0
  %1 = load i64, i64* %mask_, align 8
  %2 = load i32, i32* %dt.addr, align 4
  %conv2 = sext i32 %2 to i64
  call void @klee_overshift_check(i64 64, i64 %conv2)
  %shr = lshr i64 %1, %conv2, !klee.check.shift !20
  %and = and i64 %shr, 1
  %cmp3 = icmp ne i64 %and, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i1 [ false, %entry ], [ %cmp3, %land.rhs ]
  ret i1 %3
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @TF_TensorDefaultAlignment() #0 {
entry:
  ret i64 16
}

; Function Attrs: noinline optnone uwtable
define dso_local %struct.TF_Tensor* @TF_TensorMaybeMove(%struct.TF_Tensor* %t) #6 {
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
define dso_local void @TF_DeleteTensor(%struct.TF_Tensor* %t) #6 {
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
  call void @_ZdlPv(i8* %8) #19
  br label %delete.end

delete.end:                                       ; preds = %if.then, %delete.notnull, %if.end3
  ret void
}

; Function Attrs: noinline optnone uwtable
define dso_local i32 @TF_TensorType(%struct.TF_Tensor* %t) #6 {
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
define dso_local void @TF_SetShape(%struct.TF_Tensor* %t, i64* %dims, i32 %num_dims) #6 {
entry:
  %t.addr = alloca %struct.TF_Tensor*, align 8
  %dims.addr = alloca i64*, align 8
  %num_dims.addr = alloca i32, align 4
  store %struct.TF_Tensor* %t, %struct.TF_Tensor** %t.addr, align 8
  store i64* %dims, i64** %dims.addr, align 8
  store i32 %num_dims, i32* %num_dims.addr, align 4
  %0 = load %struct.TF_Tensor*, %struct.TF_Tensor** %t.addr, align 8
  %tensor = getelementptr inbounds %struct.TF_Tensor, %struct.TF_Tensor* %0, i32 0, i32 0
  %1 = load %"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"** %tensor, align 8
  %call = call %"class.tensorflow::TensorInterface"* @_ZN10tensorflow9down_castIPNS_15TensorInterfaceENS_23AbstractTensorInterfaceEEET_PT0_(%"class.tensorflow::AbstractTensorInterface"* %1)
  %2 = load i64*, i64** %dims.addr, align 8
  %3 = load i32, i32* %num_dims.addr, align 4
  call void @_ZN10tensorflow15TensorInterface8SetShapeEPKli(%"class.tensorflow::TensorInterface"* %call, i64* %2, i32 %3)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %"class.tensorflow::TensorInterface"* @_ZN10tensorflow9down_castIPNS_15TensorInterfaceENS_23AbstractTensorInterfaceEEET_PT0_(%"class.tensorflow::AbstractTensorInterface"* %f) #0 comdat {
entry:
  %f.addr = alloca %"class.tensorflow::AbstractTensorInterface"*, align 8
  store %"class.tensorflow::AbstractTensorInterface"* %f, %"class.tensorflow::AbstractTensorInterface"** %f.addr, align 8
  %0 = load %"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"** %f.addr, align 8
  %cmp = icmp eq %"class.tensorflow::AbstractTensorInterface"* %0, null
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %1 = load %"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"** %f.addr, align 8
  %2 = icmp eq %"class.tensorflow::AbstractTensorInterface"* %1, null
  br i1 %2, label %dynamic_cast.null, label %dynamic_cast.notnull

dynamic_cast.notnull:                             ; preds = %lor.rhs
  %3 = bitcast %"class.tensorflow::AbstractTensorInterface"* %1 to i8*
  %4 = call i8* @__dynamic_cast(i8* %3, i8* bitcast ({ i8*, i8* }* @_ZTIN10tensorflow23AbstractTensorInterfaceE to i8*), i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN10tensorflow15TensorInterfaceE to i8*), i64 0) #11
  %5 = bitcast i8* %4 to %"class.tensorflow::TensorInterface"*
  br label %dynamic_cast.end

dynamic_cast.null:                                ; preds = %lor.rhs
  br label %dynamic_cast.end

dynamic_cast.end:                                 ; preds = %dynamic_cast.null, %dynamic_cast.notnull
  %6 = phi %"class.tensorflow::TensorInterface"* [ %5, %dynamic_cast.notnull ], [ null, %dynamic_cast.null ]
  %cmp1 = icmp ne %"class.tensorflow::TensorInterface"* %6, null
  br label %lor.end

lor.end:                                          ; preds = %dynamic_cast.end, %entry
  %7 = phi i1 [ true, %entry ], [ %cmp1, %dynamic_cast.end ]
  br i1 %7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.end
  br label %cond.end

cond.false:                                       ; preds = %lor.end
  call void @__assert_fail(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.14, i64 0, i64 0), i32 58, i8* getelementptr inbounds ([114 x i8], [114 x i8]* @__PRETTY_FUNCTION__._ZN10tensorflow9down_castIPNS_15TensorInterfaceENS_23AbstractTensorInterfaceEEET_PT0_, i64 0, i64 0)) #16
  unreachable

8:                                                ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %8, %cond.true
  %9 = load %"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"** %f.addr, align 8
  %10 = bitcast %"class.tensorflow::AbstractTensorInterface"* %9 to %"class.tensorflow::TensorInterface"*
  ret %"class.tensorflow::TensorInterface"* %10
}

; Function Attrs: noinline optnone uwtable
define dso_local void @_ZN10tensorflow15TensorInterface8SetShapeEPKli(%"class.tensorflow::TensorInterface"* %this, i64* %dims, i32 %num_dims) #6 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.tensorflow::TensorInterface"*, align 8
  %dims.addr = alloca i64*, align 8
  %num_dims.addr = alloca i32, align 4
  %s = alloca %"class.tensorflow::TensorShape", align 8
  %i = alloca i32, align 4
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  store %"class.tensorflow::TensorInterface"* %this, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  store i64* %dims, i64** %dims.addr, align 8
  store i32 %num_dims, i32* %num_dims.addr, align 4
  %this1 = load %"class.tensorflow::TensorInterface"*, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  call void @_ZN10tensorflow11TensorShapeC2Ev(%"class.tensorflow::TensorShape"* %s)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %num_dims.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = bitcast %"class.tensorflow::TensorShape"* %s to %"class.tensorflow::TensorShapeBase"*
  %3 = load i64*, i64** %dims.addr, align 8
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds i64, i64* %3, i64 %idxprom
  %5 = load i64, i64* %arrayidx, align 8
  invoke void @_ZN10tensorflow15TensorShapeBaseINS_11TensorShapeEE6AddDimEl(%"class.tensorflow::TensorShapeBase"* %2, i64 %5)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %invoke.cont
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

lpad:                                             ; preds = %for.end, %for.body
  %7 = landingpad { i8*, i32 }
          cleanup
  %8 = extractvalue { i8*, i32 } %7, 0
  store i8* %8, i8** %exn.slot, align 8
  %9 = extractvalue { i8*, i32 } %7, 1
  store i32 %9, i32* %ehselector.slot, align 4
  call void @_ZN10tensorflow11TensorShapeD2Ev(%"class.tensorflow::TensorShape"* %s) #11
  br label %eh.resume

for.end:                                          ; preds = %for.cond
  %tensor_ = getelementptr inbounds %"class.tensorflow::TensorInterface", %"class.tensorflow::TensorInterface"* %this1, i32 0, i32 1
  invoke void @_ZN10tensorflow6Tensor9set_shapeERKNS_11TensorShapeE(%"class.tensorflow::Tensor"* %tensor_, %"class.tensorflow::TensorShape"* nonnull align 8 dereferenceable(24) %s)
          to label %invoke.cont2 unwind label %lpad

invoke.cont2:                                     ; preds = %for.end
  call void @_ZN10tensorflow11TensorShapeD2Ev(%"class.tensorflow::TensorShape"* %s) #11
  ret void

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val3 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val3
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow11TensorShapeC2Ev(%"class.tensorflow::TensorShape"* %this) unnamed_addr #6 comdat align 2 {
entry:
  %this.addr = alloca %"class.tensorflow::TensorShape"*, align 8
  store %"class.tensorflow::TensorShape"* %this, %"class.tensorflow::TensorShape"** %this.addr, align 8
  %this1 = load %"class.tensorflow::TensorShape"*, %"class.tensorflow::TensorShape"** %this.addr, align 8
  %0 = bitcast %"class.tensorflow::TensorShape"* %this1 to %"class.tensorflow::TensorShapeBase"*
  call void @_ZN10tensorflow15TensorShapeBaseINS_11TensorShapeEEC2Ev(%"class.tensorflow::TensorShapeBase"* %0)
  ret void
}

declare dso_local void @_ZN10tensorflow15TensorShapeBaseINS_11TensorShapeEE6AddDimEl(%"class.tensorflow::TensorShapeBase"*, i64) #4

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow6Tensor9set_shapeERKNS_11TensorShapeE(%"class.tensorflow::Tensor"* %this, %"class.tensorflow::TensorShape"* nonnull align 8 dereferenceable(24) %shape) #6 comdat align 2 {
entry:
  %this.addr = alloca %"class.tensorflow::Tensor"*, align 8
  %shape.addr = alloca %"class.tensorflow::TensorShape"*, align 8
  %dt = alloca i32, align 4
  store %"class.tensorflow::Tensor"* %this, %"class.tensorflow::Tensor"** %this.addr, align 8
  store %"class.tensorflow::TensorShape"* %shape, %"class.tensorflow::TensorShape"** %shape.addr, align 8
  %this1 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %this.addr, align 8
  %call = call i32 @_ZNK10tensorflow6Tensor5dtypeEv(%"class.tensorflow::Tensor"* %this1)
  store i32 %call, i32* %dt, align 4
  %0 = load %"class.tensorflow::TensorShape"*, %"class.tensorflow::TensorShape"** %shape.addr, align 8
  %shape_ = getelementptr inbounds %"class.tensorflow::Tensor", %"class.tensorflow::Tensor"* %this1, i32 0, i32 0
  %call2 = call nonnull align 8 dereferenceable(24) %"class.tensorflow::TensorShape"* @_ZN10tensorflow11TensorShapeaSERKS0_(%"class.tensorflow::TensorShape"* %shape_, %"class.tensorflow::TensorShape"* nonnull align 8 dereferenceable(24) %0)
  %1 = load i32, i32* %dt, align 4
  call void @_ZN10tensorflow6Tensor9set_dtypeENS_8DataTypeE(%"class.tensorflow::Tensor"* %this1, i32 %1)
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(24) %"class.tensorflow::TensorShape"* @_ZN10tensorflow11TensorShapeaSERKS0_(%"class.tensorflow::TensorShape"* %this, %"class.tensorflow::TensorShape"* nonnull align 8 dereferenceable(24) %0) #6 comdat align 2 {
entry:
  %this.addr = alloca %"class.tensorflow::TensorShape"*, align 8
  %.addr = alloca %"class.tensorflow::TensorShape"*, align 8
  store %"class.tensorflow::TensorShape"* %this, %"class.tensorflow::TensorShape"** %this.addr, align 8
  store %"class.tensorflow::TensorShape"* %0, %"class.tensorflow::TensorShape"** %.addr, align 8
  %this1 = load %"class.tensorflow::TensorShape"*, %"class.tensorflow::TensorShape"** %this.addr, align 8
  %1 = bitcast %"class.tensorflow::TensorShape"* %this1 to %"class.tensorflow::TensorShapeBase"*
  %2 = load %"class.tensorflow::TensorShape"*, %"class.tensorflow::TensorShape"** %.addr, align 8
  %3 = bitcast %"class.tensorflow::TensorShape"* %2 to %"class.tensorflow::TensorShapeBase"*
  %call = call nonnull align 8 dereferenceable(24) %"class.tensorflow::TensorShapeBase"* @_ZN10tensorflow15TensorShapeBaseINS_11TensorShapeEEaSERKS2_(%"class.tensorflow::TensorShapeBase"* %1, %"class.tensorflow::TensorShapeBase"* nonnull align 8 dereferenceable(24) %3)
  ret %"class.tensorflow::TensorShape"* %this1
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow6Tensor9set_dtypeENS_8DataTypeE(%"class.tensorflow::Tensor"* %this, i32 %t) #6 comdat align 2 {
entry:
  %this.addr = alloca %"class.tensorflow::Tensor"*, align 8
  %t.addr = alloca i32, align 4
  store %"class.tensorflow::Tensor"* %this, %"class.tensorflow::Tensor"** %this.addr, align 8
  store i32 %t, i32* %t.addr, align 4
  %this1 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %this.addr, align 8
  %shape_ = getelementptr inbounds %"class.tensorflow::Tensor", %"class.tensorflow::Tensor"* %this1, i32 0, i32 0
  %0 = bitcast %"class.tensorflow::TensorShape"* %shape_ to %"class.tensorflow::TensorShapeRep"*
  %1 = load i32, i32* %t.addr, align 4
  call void @_ZN10tensorflow14TensorShapeRep13set_data_typeENS_8DataTypeE(%"class.tensorflow::TensorShapeRep"* %0, i32 %1)
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow14TensorShapeRep13set_data_typeENS_8DataTypeE(%"class.tensorflow::TensorShapeRep"* %this, i32 %dt) #6 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.tensorflow::TensorShapeRep"*, align 8
  %dt.addr = alloca i32, align 4
  %_result = alloca %"struct.tsl::internal::CheckOpString", align 8
  %ref.tmp = alloca i32, align 4
  %ref.tmp2 = alloca i32, align 4
  %ref.tmp6 = alloca %"class.tsl::internal::LogMessageFatal", align 8
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  store %"class.tensorflow::TensorShapeRep"* %this, %"class.tensorflow::TensorShapeRep"** %this.addr, align 8
  store i32 %dt, i32* %dt.addr, align 4
  %this1 = load %"class.tensorflow::TensorShapeRep"*, %"class.tensorflow::TensorShapeRep"** %this.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %entry
  %0 = load i32, i32* %dt.addr, align 4
  %call = call i32 @_ZN3tsl8internal21GetReferenceableValueEj(i32 %0)
  store i32 %call, i32* %ref.tmp, align 4
  %call3 = call i32 @_ZN3tsl8internal21GetReferenceableValueEj(i32 256)
  store i32 %call3, i32* %ref.tmp2, align 4
  %call4 = call %"class.std::__cxx11::basic_string"* @_ZN3tsl8internal12Check_LTImplIjjEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc(i32* nonnull align 4 dereferenceable(4) %ref.tmp, i32* nonnull align 4 dereferenceable(4) %ref.tmp2, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0))
  call void @_ZN3tsl8internal13CheckOpStringC2EPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"struct.tsl::internal::CheckOpString"* %_result, %"class.std::__cxx11::basic_string"* %call4)
  %call5 = call zeroext i1 @_ZNK3tsl8internal13CheckOpStringcvbEv(%"struct.tsl::internal::CheckOpString"* %_result)
  br i1 %call5, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void @_ZN3tsl8internal15LogMessageFatalC1EPKci(%"class.tsl::internal::LogMessageFatal"* %ref.tmp6, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.8, i64 0, i64 0), i32 129) #22
  %str_ = getelementptr inbounds %"struct.tsl::internal::CheckOpString", %"struct.tsl::internal::CheckOpString"* %_result, i32 0, i32 0
  %1 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %str_, align 8
  %call7 = invoke nonnull align 8 dereferenceable(136) %"class.tsl::internal::LogMessageFatal"* @_ZStlsIN3tsl8internal15LogMessageFatalENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_SA_RKT0_(%"class.tsl::internal::LogMessageFatal"* nonnull align 8 dereferenceable(136) %ref.tmp6, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %1)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %while.body
  call void @_ZN3tsl8internal15LogMessageFatalD1Ev(%"class.tsl::internal::LogMessageFatal"* %ref.tmp6) #16
  unreachable

lpad:                                             ; preds = %while.body
  %2 = landingpad { i8*, i32 }
          cleanup
  %3 = extractvalue { i8*, i32 } %2, 0
  store i8* %3, i8** %exn.slot, align 8
  %4 = extractvalue { i8*, i32 } %2, 1
  store i32 %4, i32* %ehselector.slot, align 4
  call void @_ZN3tsl8internal15LogMessageFatalD1Ev(%"class.tsl::internal::LogMessageFatal"* %ref.tmp6) #16
  unreachable

5:                                                ; No predecessors!
  br label %eh.resume

while.end:                                        ; preds = %while.cond
  %6 = load i32, i32* %dt.addr, align 4
  %conv = trunc i32 %6 to i8
  %call8 = call i8* @_ZN10tensorflow14TensorShapeRep3bufEv(%"class.tensorflow::TensorShapeRep"* %this1)
  %arrayidx = getelementptr inbounds i8, i8* %call8, i64 13
  store i8 %conv, i8* %arrayidx, align 1
  ret void

eh.resume:                                        ; preds = %5
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val9 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val9
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i32 @_ZN3tsl8internal21GetReferenceableValueEj(i32 %t) #0 comdat {
entry:
  %t.addr = alloca i32, align 4
  store i32 %t, i32* %t.addr, align 4
  %0 = load i32, i32* %t.addr, align 4
  ret i32 %0
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %"class.std::__cxx11::basic_string"* @_ZN3tsl8internal12Check_LTImplIjjEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc(i32* nonnull align 4 dereferenceable(4) %v1, i32* nonnull align 4 dereferenceable(4) %v2, i8* %exprtext) #6 comdat {
entry:
  %retval = alloca %"class.std::__cxx11::basic_string"*, align 8
  %v1.addr = alloca i32*, align 8
  %v2.addr = alloca i32*, align 8
  %exprtext.addr = alloca i8*, align 8
  store i32* %v1, i32** %v1.addr, align 8
  store i32* %v2, i32** %v2.addr, align 8
  store i8* %exprtext, i8** %exprtext.addr, align 8
  %0 = load i32*, i32** %v1.addr, align 8
  %1 = load i32, i32* %0, align 4
  %2 = load i32*, i32** %v2.addr, align 8
  %3 = load i32, i32* %2, align 4
  %cmp = icmp ult i32 %1, %3
  %lnot = xor i1 %cmp, true
  %lnot1 = xor i1 %lnot, true
  br i1 %lnot1, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store %"class.std::__cxx11::basic_string"* null, %"class.std::__cxx11::basic_string"** %retval, align 8
  br label %return

if.else:                                          ; preds = %entry
  %4 = load i32*, i32** %v1.addr, align 8
  %5 = load i32*, i32** %v2.addr, align 8
  %6 = load i8*, i8** %exprtext.addr, align 8
  %call = call %"class.std::__cxx11::basic_string"* @_ZN3tsl8internal17MakeCheckOpStringIjjEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc(i32* nonnull align 4 dereferenceable(4) %4, i32* nonnull align 4 dereferenceable(4) %5, i8* %6)
  store %"class.std::__cxx11::basic_string"* %call, %"class.std::__cxx11::basic_string"** %retval, align 8
  br label %return

return:                                           ; preds = %if.else, %if.then
  %7 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %retval, align 8
  ret %"class.std::__cxx11::basic_string"* %7
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %"class.std::__cxx11::basic_string"* @_ZN3tsl8internal17MakeCheckOpStringIjjEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc(i32* nonnull align 4 dereferenceable(4) %v1, i32* nonnull align 4 dereferenceable(4) %v2, i8* %exprtext) #6 comdat personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %v1.addr = alloca i32*, align 8
  %v2.addr = alloca i32*, align 8
  %exprtext.addr = alloca i8*, align 8
  %comb = alloca %"class.tsl::internal::CheckOpMessageBuilder", align 8
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  store i32* %v1, i32** %v1.addr, align 8
  store i32* %v2, i32** %v2.addr, align 8
  store i8* %exprtext, i8** %exprtext.addr, align 8
  %0 = load i8*, i8** %exprtext.addr, align 8
  call void @_ZN3tsl8internal21CheckOpMessageBuilderC1EPKc(%"class.tsl::internal::CheckOpMessageBuilder"* %comb, i8* %0)
  %call = invoke %"class.std::basic_ostream"* @_ZN3tsl8internal21CheckOpMessageBuilder7ForVar1Ev(%"class.tsl::internal::CheckOpMessageBuilder"* %comb)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %1 = load i32*, i32** %v1.addr, align 8
  invoke void @_ZN3tsl8internal22MakeCheckOpValueStringIjEEvPSoRKT_(%"class.std::basic_ostream"* %call, i32* nonnull align 4 dereferenceable(4) %1)
          to label %invoke.cont1 unwind label %lpad

invoke.cont1:                                     ; preds = %invoke.cont
  %call3 = invoke %"class.std::basic_ostream"* @_ZN3tsl8internal21CheckOpMessageBuilder7ForVar2Ev(%"class.tsl::internal::CheckOpMessageBuilder"* %comb)
          to label %invoke.cont2 unwind label %lpad

invoke.cont2:                                     ; preds = %invoke.cont1
  %2 = load i32*, i32** %v2.addr, align 8
  invoke void @_ZN3tsl8internal22MakeCheckOpValueStringIjEEvPSoRKT_(%"class.std::basic_ostream"* %call3, i32* nonnull align 4 dereferenceable(4) %2)
          to label %invoke.cont4 unwind label %lpad

invoke.cont4:                                     ; preds = %invoke.cont2
  %call6 = invoke %"class.std::__cxx11::basic_string"* @_ZN3tsl8internal21CheckOpMessageBuilder9NewStringB5cxx11Ev(%"class.tsl::internal::CheckOpMessageBuilder"* %comb)
          to label %invoke.cont5 unwind label %lpad

invoke.cont5:                                     ; preds = %invoke.cont4
  call void @_ZN3tsl8internal21CheckOpMessageBuilderD1Ev(%"class.tsl::internal::CheckOpMessageBuilder"* %comb) #11
  ret %"class.std::__cxx11::basic_string"* %call6

lpad:                                             ; preds = %invoke.cont4, %invoke.cont2, %invoke.cont1, %invoke.cont, %entry
  %3 = landingpad { i8*, i32 }
          cleanup
  %4 = extractvalue { i8*, i32 } %3, 0
  store i8* %4, i8** %exn.slot, align 8
  %5 = extractvalue { i8*, i32 } %3, 1
  store i32 %5, i32* %ehselector.slot, align 4
  call void @_ZN3tsl8internal21CheckOpMessageBuilderD1Ev(%"class.tsl::internal::CheckOpMessageBuilder"* %comb) #11
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val7 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val7
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN3tsl8internal22MakeCheckOpValueStringIjEEvPSoRKT_(%"class.std::basic_ostream"* %os, i32* nonnull align 4 dereferenceable(4) %v) #6 comdat {
entry:
  %os.addr = alloca %"class.std::basic_ostream"*, align 8
  %v.addr = alloca i32*, align 8
  store %"class.std::basic_ostream"* %os, %"class.std::basic_ostream"** %os.addr, align 8
  store i32* %v, i32** %v.addr, align 8
  %0 = load %"class.std::basic_ostream"*, %"class.std::basic_ostream"** %os.addr, align 8
  %1 = load i32*, i32** %v.addr, align 8
  %2 = load i32, i32* %1, align 4
  %call = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEj(%"class.std::basic_ostream"* %0, i32 %2)
  ret void
}

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEj(%"class.std::basic_ostream"*, i32) #4

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(24) %"class.tensorflow::TensorShapeBase"* @_ZN10tensorflow15TensorShapeBaseINS_11TensorShapeEEaSERKS2_(%"class.tensorflow::TensorShapeBase"* %this, %"class.tensorflow::TensorShapeBase"* nonnull align 8 dereferenceable(24) %0) #6 comdat align 2 {
entry:
  %this.addr = alloca %"class.tensorflow::TensorShapeBase"*, align 8
  %.addr = alloca %"class.tensorflow::TensorShapeBase"*, align 8
  store %"class.tensorflow::TensorShapeBase"* %this, %"class.tensorflow::TensorShapeBase"** %this.addr, align 8
  store %"class.tensorflow::TensorShapeBase"* %0, %"class.tensorflow::TensorShapeBase"** %.addr, align 8
  %this1 = load %"class.tensorflow::TensorShapeBase"*, %"class.tensorflow::TensorShapeBase"** %this.addr, align 8
  %1 = bitcast %"class.tensorflow::TensorShapeBase"* %this1 to %"class.tensorflow::TensorShapeRep"*
  %2 = load %"class.tensorflow::TensorShapeBase"*, %"class.tensorflow::TensorShapeBase"** %.addr, align 8
  %3 = bitcast %"class.tensorflow::TensorShapeBase"* %2 to %"class.tensorflow::TensorShapeRep"*
  call void @_ZN10tensorflow14TensorShapeRepaSERKS0_(%"class.tensorflow::TensorShapeRep"* %1, %"class.tensorflow::TensorShapeRep"* nonnull align 8 dereferenceable(24) %3)
  ret %"class.tensorflow::TensorShapeBase"* %this1
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow14TensorShapeRepaSERKS0_(%"class.tensorflow::TensorShapeRep"* %this, %"class.tensorflow::TensorShapeRep"* nonnull align 8 dereferenceable(24) %b) #6 comdat align 2 {
entry:
  %this.addr = alloca %"class.tensorflow::TensorShapeRep"*, align 8
  %b.addr = alloca %"class.tensorflow::TensorShapeRep"*, align 8
  store %"class.tensorflow::TensorShapeRep"* %this, %"class.tensorflow::TensorShapeRep"** %this.addr, align 8
  store %"class.tensorflow::TensorShapeRep"* %b, %"class.tensorflow::TensorShapeRep"** %b.addr, align 8
  %this1 = load %"class.tensorflow::TensorShapeRep"*, %"class.tensorflow::TensorShapeRep"** %this.addr, align 8
  %0 = load %"class.tensorflow::TensorShapeRep"*, %"class.tensorflow::TensorShapeRep"** %b.addr, align 8
  %num_elements_ = getelementptr inbounds %"class.tensorflow::TensorShapeRep", %"class.tensorflow::TensorShapeRep"* %0, i32 0, i32 1
  %1 = load i64, i64* %num_elements_, align 8
  %num_elements_2 = getelementptr inbounds %"class.tensorflow::TensorShapeRep", %"class.tensorflow::TensorShapeRep"* %this1, i32 0, i32 1
  store i64 %1, i64* %num_elements_2, align 8
  %call = call i32 @_ZNK10tensorflow14TensorShapeRep3tagEv(%"class.tensorflow::TensorShapeRep"* %this1)
  %cmp = icmp ne i32 %call, 2
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %2 = load %"class.tensorflow::TensorShapeRep"*, %"class.tensorflow::TensorShapeRep"** %b.addr, align 8
  %call3 = call i32 @_ZNK10tensorflow14TensorShapeRep3tagEv(%"class.tensorflow::TensorShapeRep"* %2)
  %cmp4 = icmp ne i32 %call3, 2
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %call5 = call i8* @_ZN10tensorflow14TensorShapeRep3bufEv(%"class.tensorflow::TensorShapeRep"* %this1)
  %3 = load %"class.tensorflow::TensorShapeRep"*, %"class.tensorflow::TensorShapeRep"** %b.addr, align 8
  %call6 = call i8* @_ZNK10tensorflow14TensorShapeRep3bufEv(%"class.tensorflow::TensorShapeRep"* %3)
  %4 = call i8* @memcpy(i8* %call5, i8* %call6, i64 16)
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %5 = load %"class.tensorflow::TensorShapeRep"*, %"class.tensorflow::TensorShapeRep"** %b.addr, align 8
  call void @_ZN10tensorflow14TensorShapeRep12SlowCopyFromERKS0_(%"class.tensorflow::TensorShapeRep"* %this1, %"class.tensorflow::TensorShapeRep"* nonnull align 8 dereferenceable(24) %5)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

declare dso_local void @_ZN10tensorflow14TensorShapeRep12SlowCopyFromERKS0_(%"class.tensorflow::TensorShapeRep"*, %"class.tensorflow::TensorShapeRep"* nonnull align 8 dereferenceable(24)) #4

declare dso_local void @_ZN10tensorflow15TensorShapeBaseINS_11TensorShapeEEC2Ev(%"class.tensorflow::TensorShapeBase"*) unnamed_addr #4

; Function Attrs: nounwind readonly
declare dso_local i8* @__dynamic_cast(i8*, i8*, i8*, i64) #15

; Function Attrs: noinline optnone uwtable
define dso_local i32 @TF_NumDims(%struct.TF_Tensor* %t) #6 {
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
define dso_local i64 @TF_Dim(%struct.TF_Tensor* %t, i32 %dim_index) #6 {
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
define dso_local i64 @TF_TensorByteSize(%struct.TF_Tensor* %t) #6 {
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
define dso_local i8* @TF_TensorData(%struct.TF_Tensor* %t) #6 {
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
define dso_local i64 @TF_TensorElementCount(%struct.TF_Tensor* %t) #6 {
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

; Function Attrs: noinline optnone uwtable
define dso_local %struct.TF_Tensor* @_ZN10tensorflow19TF_TensorFromTensorERKNS_6TensorEPN4absl12lts_202501276StatusE(%"class.tensorflow::Tensor"* nonnull align 8 dereferenceable(32) %src, %"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::Storage.4"* %status) #6 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %src.addr = alloca %"class.tensorflow::Tensor"*, align 8
  %status.addr = alloca %"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::Storage.4"*, align 8
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  store %"class.tensorflow::Tensor"* %src, %"class.tensorflow::Tensor"** %src.addr, align 8
  store %"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::Storage.4"* %status, %"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::Storage.4"** %status.addr, align 8
  %call = call noalias nonnull i8* @_Znwm(i64 8) #21
  %0 = bitcast i8* %call to %struct.TF_Tensor*
  %tensor = getelementptr inbounds %struct.TF_Tensor, %struct.TF_Tensor* %0, i32 0, i32 0
  %1 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %src.addr, align 8
  %2 = load %"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::Storage.4"*, %"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::Storage.4"** %status.addr, align 8
  %call1 = invoke %"class.tensorflow::AbstractTensorInterface"* @_ZN10tensorflow25TensorInterfaceFromTensorERKNS_6TensorEPN4absl12lts_202501276StatusE(%"class.tensorflow::Tensor"* nonnull align 8 dereferenceable(32) %1, %"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::Storage.4"* %2)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  store %"class.tensorflow::AbstractTensorInterface"* %call1, %"class.tensorflow::AbstractTensorInterface"** %tensor, align 8
  ret %struct.TF_Tensor* %0

lpad:                                             ; preds = %entry
  %3 = landingpad { i8*, i32 }
          cleanup
  %4 = extractvalue { i8*, i32 } %3, 0
  store i8* %4, i8** %exn.slot, align 8
  %5 = extractvalue { i8*, i32 } %3, 1
  store i32 %5, i32* %ehselector.slot, align 4
  call void @_ZdlPv(i8* %call) #19
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val2 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val2
}

declare dso_local %"class.tensorflow::AbstractTensorInterface"* @_ZN10tensorflow25TensorInterfaceFromTensorERKNS_6TensorEPN4absl12lts_202501276StatusE(%"class.tensorflow::Tensor"* nonnull align 8 dereferenceable(32), %"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::Storage.4"*) #4

; Function Attrs: noinline optnone uwtable
define dso_local void @_ZN10tensorflow17TF_TensorToTensorEPK9TF_TensorPNS_6TensorE(%"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::Storage.4"* noalias sret align 8 %agg.result, %struct.TF_Tensor* %src, %"class.tensorflow::Tensor"* %dst) #6 {
entry:
  %result.ptr = alloca i8*, align 8
  %src.addr = alloca %struct.TF_Tensor*, align 8
  %dst.addr = alloca %"class.tensorflow::Tensor"*, align 8
  %0 = bitcast %"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::Storage.4"* %agg.result to i8*
  store i8* %0, i8** %result.ptr, align 8
  store %struct.TF_Tensor* %src, %struct.TF_Tensor** %src.addr, align 8
  store %"class.tensorflow::Tensor"* %dst, %"class.tensorflow::Tensor"** %dst.addr, align 8
  %1 = load %struct.TF_Tensor*, %struct.TF_Tensor** %src.addr, align 8
  %tensor = getelementptr inbounds %struct.TF_Tensor, %struct.TF_Tensor* %1, i32 0, i32 0
  %2 = load %"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"** %tensor, align 8
  %call = call %"class.tensorflow::TensorInterface"* @_ZN10tensorflow9down_castIPKNS_15TensorInterfaceENS_23AbstractTensorInterfaceEEET_PT0_(%"class.tensorflow::AbstractTensorInterface"* %2)
  %3 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %dst.addr, align 8
  call void @_ZNK10tensorflow15TensorInterface8ToTensorEPNS_6TensorE(%"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::Storage.4"* sret align 8 %agg.result, %"class.tensorflow::TensorInterface"* %call, %"class.tensorflow::Tensor"* %3)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %"class.tensorflow::TensorInterface"* @_ZN10tensorflow9down_castIPKNS_15TensorInterfaceENS_23AbstractTensorInterfaceEEET_PT0_(%"class.tensorflow::AbstractTensorInterface"* %f) #0 comdat {
entry:
  %f.addr = alloca %"class.tensorflow::AbstractTensorInterface"*, align 8
  store %"class.tensorflow::AbstractTensorInterface"* %f, %"class.tensorflow::AbstractTensorInterface"** %f.addr, align 8
  %0 = load %"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"** %f.addr, align 8
  %cmp = icmp eq %"class.tensorflow::AbstractTensorInterface"* %0, null
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %1 = load %"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"** %f.addr, align 8
  %2 = icmp eq %"class.tensorflow::AbstractTensorInterface"* %1, null
  br i1 %2, label %dynamic_cast.null, label %dynamic_cast.notnull

dynamic_cast.notnull:                             ; preds = %lor.rhs
  %3 = bitcast %"class.tensorflow::AbstractTensorInterface"* %1 to i8*
  %4 = call i8* @__dynamic_cast(i8* %3, i8* bitcast ({ i8*, i8* }* @_ZTIN10tensorflow23AbstractTensorInterfaceE to i8*), i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN10tensorflow15TensorInterfaceE to i8*), i64 0) #11
  %5 = bitcast i8* %4 to %"class.tensorflow::TensorInterface"*
  br label %dynamic_cast.end

dynamic_cast.null:                                ; preds = %lor.rhs
  br label %dynamic_cast.end

dynamic_cast.end:                                 ; preds = %dynamic_cast.null, %dynamic_cast.notnull
  %6 = phi %"class.tensorflow::TensorInterface"* [ %5, %dynamic_cast.notnull ], [ null, %dynamic_cast.null ]
  %cmp1 = icmp ne %"class.tensorflow::TensorInterface"* %6, null
  br label %lor.end

lor.end:                                          ; preds = %dynamic_cast.end, %entry
  %7 = phi i1 [ true, %entry ], [ %cmp1, %dynamic_cast.end ]
  br i1 %7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.end
  br label %cond.end

cond.false:                                       ; preds = %lor.end
  call void @__assert_fail(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.14, i64 0, i64 0), i32 58, i8* getelementptr inbounds ([120 x i8], [120 x i8]* @__PRETTY_FUNCTION__._ZN10tensorflow9down_castIPKNS_15TensorInterfaceENS_23AbstractTensorInterfaceEEET_PT0_, i64 0, i64 0)) #16
  unreachable

8:                                                ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %8, %cond.true
  %9 = load %"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"** %f.addr, align 8
  %10 = bitcast %"class.tensorflow::AbstractTensorInterface"* %9 to %"class.tensorflow::TensorInterface"*
  ret %"class.tensorflow::TensorInterface"* %10
}

; Function Attrs: noinline optnone uwtable
define dso_local void @_ZNK10tensorflow15TensorInterface8ToTensorEPNS_6TensorE(%"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::Storage.4"* noalias sret align 8 %agg.result, %"class.tensorflow::TensorInterface"* %this, %"class.tensorflow::Tensor"* %dst) #6 align 2 {
entry:
  %result.ptr = alloca i8*, align 8
  %this.addr = alloca %"class.tensorflow::TensorInterface"*, align 8
  %dst.addr = alloca %"class.tensorflow::Tensor"*, align 8
  %0 = bitcast %"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::Storage.4"* %agg.result to i8*
  store i8* %0, i8** %result.ptr, align 8
  store %"class.tensorflow::TensorInterface"* %this, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  store %"class.tensorflow::Tensor"* %dst, %"class.tensorflow::Tensor"** %dst.addr, align 8
  %this1 = load %"class.tensorflow::TensorInterface"*, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  %tensor_ = getelementptr inbounds %"class.tensorflow::TensorInterface", %"class.tensorflow::TensorInterface"* %this1, i32 0, i32 1
  %1 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %dst.addr, align 8
  %call = call nonnull align 8 dereferenceable(32) %"class.tensorflow::Tensor"* @_ZN10tensorflow6TensoraSERKS0_(%"class.tensorflow::Tensor"* %1, %"class.tensorflow::Tensor"* nonnull align 8 dereferenceable(32) %tensor_)
  call void @_ZN4absl12lts_202501278OkStatusEv(%"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::Storage.4"* sret align 8 %agg.result)
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(32) %"class.tensorflow::Tensor"* @_ZN10tensorflow6TensoraSERKS0_(%"class.tensorflow::Tensor"* %this, %"class.tensorflow::Tensor"* nonnull align 8 dereferenceable(32) %other) #6 comdat align 2 {
entry:
  %this.addr = alloca %"class.tensorflow::Tensor"*, align 8
  %other.addr = alloca %"class.tensorflow::Tensor"*, align 8
  store %"class.tensorflow::Tensor"* %this, %"class.tensorflow::Tensor"** %this.addr, align 8
  store %"class.tensorflow::Tensor"* %other, %"class.tensorflow::Tensor"** %other.addr, align 8
  %this1 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %this.addr, align 8
  %0 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %other.addr, align 8
  %1 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %other.addr, align 8
  %call = call nonnull align 8 dereferenceable(24) %"class.tensorflow::TensorShape"* @_ZNK10tensorflow6Tensor5shapeEv(%"class.tensorflow::Tensor"* %1)
  call void @_ZN10tensorflow6Tensor16CopyFromInternalERKS0_RKNS_11TensorShapeE(%"class.tensorflow::Tensor"* %this1, %"class.tensorflow::Tensor"* nonnull align 8 dereferenceable(32) %0, %"class.tensorflow::TensorShape"* nonnull align 8 dereferenceable(24) %call)
  ret %"class.tensorflow::Tensor"* %this1
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_202501278OkStatusEv(%"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::Storage.4"* noalias sret align 8 %agg.result) #6 comdat {
entry:
  %result.ptr = alloca i8*, align 8
  %0 = bitcast %"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::Storage.4"* %agg.result to i8*
  store i8* %0, i8** %result.ptr, align 8
  call void @_ZN4absl12lts_202501276StatusC2Ev(%"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::Storage.4"* %agg.result)
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_202501276StatusC2Ev(%"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::Storage.4"* %this) unnamed_addr #6 comdat align 2 {
entry:
  %this.addr = alloca %"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::Storage.4"*, align 8
  store %"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::Storage.4"* %this, %"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::Storage.4"** %this.addr, align 8
  %this1 = load %"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::Storage.4"*, %"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::Storage.4"** %this.addr, align 8
  call void @_ZN4absl12lts_202501276StatusC2ENS0_10StatusCodeE(%"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::Storage.4"* %this1, i32 0)
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_202501276StatusC2ENS0_10StatusCodeE(%"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::Storage.4"* %this, i32 %code) unnamed_addr #6 comdat align 2 {
entry:
  %this.addr = alloca %"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::Storage.4"*, align 8
  %code.addr = alloca i32, align 4
  store %"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::Storage.4"* %this, %"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::Storage.4"** %this.addr, align 8
  store i32 %code, i32* %code.addr, align 4
  %this1 = load %"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::Storage.4"*, %"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::Storage.4"** %this.addr, align 8
  %0 = load i32, i32* %code.addr, align 4
  %call = call i64 @_ZN4absl12lts_202501276Status16CodeToInlinedRepENS0_10StatusCodeE(i32 %0)
  call void @_ZN4absl12lts_202501276StatusC2Em(%"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::Storage.4"* %this1, i64 %call)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @_ZN4absl12lts_202501276Status16CodeToInlinedRepENS0_10StatusCodeE(i32 %code) #0 comdat align 2 {
entry:
  %code.addr = alloca i32, align 4
  store i32 %code, i32* %code.addr, align 4
  %0 = load i32, i32* %code.addr, align 4
  %conv = sext i32 %0 to i64
  %shl = shl i64 %conv, 2
  %add = add i64 %shl, 1
  ret i64 %add
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_202501276StatusC2Em(%"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::Storage.4"* %this, i64 %rep) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::Storage.4"*, align 8
  %rep.addr = alloca i64, align 8
  store %"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::Storage.4"* %this, %"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::Storage.4"** %this.addr, align 8
  store i64 %rep, i64* %rep.addr, align 8
  %this1 = load %"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::Storage.4"*, %"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::Storage.4"** %this.addr, align 8
  %rep_ = getelementptr inbounds %"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::Storage.4", %"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::Storage.4"* %this1, i32 0, i32 0
  %0 = load i64, i64* %rep.addr, align 8
  store i64 %0, i64* %rep_, align 8
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow6Tensor16CopyFromInternalERKS0_RKNS_11TensorShapeE(%"class.tensorflow::Tensor"* %this, %"class.tensorflow::Tensor"* nonnull align 8 dereferenceable(32) %other, %"class.tensorflow::TensorShape"* nonnull align 8 dereferenceable(24) %shape) #6 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.tensorflow::Tensor"*, align 8
  %other.addr = alloca %"class.tensorflow::Tensor"*, align 8
  %shape.addr = alloca %"class.tensorflow::TensorShape"*, align 8
  %_result = alloca %"struct.tsl::internal::CheckOpString", align 8
  %ref.tmp = alloca i64, align 8
  %ref.tmp3 = alloca i64, align 8
  %ref.tmp8 = alloca %"class.tsl::internal::LogMessageFatal", align 8
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  %other_dtype = alloca i32, align 4
  store %"class.tensorflow::Tensor"* %this, %"class.tensorflow::Tensor"** %this.addr, align 8
  store %"class.tensorflow::Tensor"* %other, %"class.tensorflow::Tensor"** %other.addr, align 8
  store %"class.tensorflow::TensorShape"* %shape, %"class.tensorflow::TensorShape"** %shape.addr, align 8
  %this1 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %this.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %entry
  %0 = load %"class.tensorflow::TensorShape"*, %"class.tensorflow::TensorShape"** %shape.addr, align 8
  %1 = bitcast %"class.tensorflow::TensorShape"* %0 to %"class.tensorflow::TensorShapeRep"*
  %call = call i64 @_ZNK10tensorflow14TensorShapeRep12num_elementsEv(%"class.tensorflow::TensorShapeRep"* %1)
  %call2 = call i64 @_ZN3tsl8internal21GetReferenceableValueEl(i64 %call)
  store i64 %call2, i64* %ref.tmp, align 8
  %2 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %other.addr, align 8
  %call4 = call i64 @_ZNK10tensorflow6Tensor11NumElementsEv(%"class.tensorflow::Tensor"* %2)
  %call5 = call i64 @_ZN3tsl8internal21GetReferenceableValueEl(i64 %call4)
  store i64 %call5, i64* %ref.tmp3, align 8
  %call6 = call %"class.std::__cxx11::basic_string"* @_ZN3tsl8internal12Check_EQImplIllEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc(i64* nonnull align 8 dereferenceable(8) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %ref.tmp3, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.9, i64 0, i64 0))
  call void @_ZN3tsl8internal13CheckOpStringC2EPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"struct.tsl::internal::CheckOpString"* %_result, %"class.std::__cxx11::basic_string"* %call6)
  %call7 = call zeroext i1 @_ZNK3tsl8internal13CheckOpStringcvbEv(%"struct.tsl::internal::CheckOpString"* %_result)
  br i1 %call7, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void @_ZN3tsl8internal15LogMessageFatalC1EPKci(%"class.tsl::internal::LogMessageFatal"* %ref.tmp8, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.10, i64 0, i64 0), i32 748) #22
  %str_ = getelementptr inbounds %"struct.tsl::internal::CheckOpString", %"struct.tsl::internal::CheckOpString"* %_result, i32 0, i32 0
  %3 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %str_, align 8
  %call9 = invoke nonnull align 8 dereferenceable(136) %"class.tsl::internal::LogMessageFatal"* @_ZStlsIN3tsl8internal15LogMessageFatalENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_SA_RKT0_(%"class.tsl::internal::LogMessageFatal"* nonnull align 8 dereferenceable(136) %ref.tmp8, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %3)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %while.body
  call void @_ZN3tsl8internal15LogMessageFatalD1Ev(%"class.tsl::internal::LogMessageFatal"* %ref.tmp8) #16
  unreachable

lpad:                                             ; preds = %while.body
  %4 = landingpad { i8*, i32 }
          cleanup
  %5 = extractvalue { i8*, i32 } %4, 0
  store i8* %5, i8** %exn.slot, align 8
  %6 = extractvalue { i8*, i32 } %4, 1
  store i32 %6, i32* %ehselector.slot, align 4
  call void @_ZN3tsl8internal15LogMessageFatalD1Ev(%"class.tsl::internal::LogMessageFatal"* %ref.tmp8) #16
  unreachable

7:                                                ; No predecessors!
  br label %eh.resume

while.end:                                        ; preds = %while.cond
  %8 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %other.addr, align 8
  %call10 = call i32 @_ZNK10tensorflow6Tensor5dtypeEv(%"class.tensorflow::Tensor"* %8)
  store i32 %call10, i32* %other_dtype, align 4
  %9 = load %"class.tensorflow::TensorShape"*, %"class.tensorflow::TensorShape"** %shape.addr, align 8
  %shape_ = getelementptr inbounds %"class.tensorflow::Tensor", %"class.tensorflow::Tensor"* %this1, i32 0, i32 0
  %call11 = call nonnull align 8 dereferenceable(24) %"class.tensorflow::TensorShape"* @_ZN10tensorflow11TensorShapeaSERKS0_(%"class.tensorflow::TensorShape"* %shape_, %"class.tensorflow::TensorShape"* nonnull align 8 dereferenceable(24) %9)
  %10 = load i32, i32* %other_dtype, align 4
  call void @_ZN10tensorflow6Tensor9set_dtypeENS_8DataTypeE(%"class.tensorflow::Tensor"* %this1, i32 %10)
  %buf_ = getelementptr inbounds %"class.tensorflow::Tensor", %"class.tensorflow::Tensor"* %this1, i32 0, i32 1
  %11 = load %"class.tensorflow::TensorBuffer"*, %"class.tensorflow::TensorBuffer"** %buf_, align 8
  %12 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %other.addr, align 8
  %buf_12 = getelementptr inbounds %"class.tensorflow::Tensor", %"class.tensorflow::Tensor"* %12, i32 0, i32 1
  %13 = load %"class.tensorflow::TensorBuffer"*, %"class.tensorflow::TensorBuffer"** %buf_12, align 8
  %cmp = icmp ne %"class.tensorflow::TensorBuffer"* %11, %13
  br i1 %cmp, label %if.then, label %if.end24

if.then:                                          ; preds = %while.end
  %buf_13 = getelementptr inbounds %"class.tensorflow::Tensor", %"class.tensorflow::Tensor"* %this1, i32 0, i32 1
  %14 = load %"class.tensorflow::TensorBuffer"*, %"class.tensorflow::TensorBuffer"** %buf_13, align 8
  %tobool = icmp ne %"class.tensorflow::TensorBuffer"* %14, null
  br i1 %tobool, label %if.then14, label %if.end

if.then14:                                        ; preds = %if.then
  %buf_15 = getelementptr inbounds %"class.tensorflow::Tensor", %"class.tensorflow::Tensor"* %this1, i32 0, i32 1
  %15 = load %"class.tensorflow::TensorBuffer"*, %"class.tensorflow::TensorBuffer"** %buf_15, align 8
  %16 = bitcast %"class.tensorflow::TensorBuffer"* %15 to %"class.tsl::core::RefCounted"*
  %call16 = call zeroext i1 @_ZNK3tsl4core10RefCounted5UnrefEv(%"class.tsl::core::RefCounted"* %16)
  br label %if.end

if.end:                                           ; preds = %if.then14, %if.then
  %17 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %other.addr, align 8
  %buf_17 = getelementptr inbounds %"class.tensorflow::Tensor", %"class.tensorflow::Tensor"* %17, i32 0, i32 1
  %18 = load %"class.tensorflow::TensorBuffer"*, %"class.tensorflow::TensorBuffer"** %buf_17, align 8
  %buf_18 = getelementptr inbounds %"class.tensorflow::Tensor", %"class.tensorflow::Tensor"* %this1, i32 0, i32 1
  store %"class.tensorflow::TensorBuffer"* %18, %"class.tensorflow::TensorBuffer"** %buf_18, align 8
  %buf_19 = getelementptr inbounds %"class.tensorflow::Tensor", %"class.tensorflow::Tensor"* %this1, i32 0, i32 1
  %19 = load %"class.tensorflow::TensorBuffer"*, %"class.tensorflow::TensorBuffer"** %buf_19, align 8
  %tobool20 = icmp ne %"class.tensorflow::TensorBuffer"* %19, null
  br i1 %tobool20, label %if.then21, label %if.end23

if.then21:                                        ; preds = %if.end
  %buf_22 = getelementptr inbounds %"class.tensorflow::Tensor", %"class.tensorflow::Tensor"* %this1, i32 0, i32 1
  %20 = load %"class.tensorflow::TensorBuffer"*, %"class.tensorflow::TensorBuffer"** %buf_22, align 8
  %21 = bitcast %"class.tensorflow::TensorBuffer"* %20 to %"class.tsl::core::RefCounted"*
  call void @_ZNK3tsl4core10RefCounted3RefEv(%"class.tsl::core::RefCounted"* %21)
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %if.end
  br label %if.end24

if.end24:                                         ; preds = %if.end23, %while.end
  ret void

eh.resume:                                        ; preds = %7
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val25 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val25
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %"class.std::__cxx11::basic_string"* @_ZN3tsl8internal12Check_EQImplIllEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc(i64* nonnull align 8 dereferenceable(8) %v1, i64* nonnull align 8 dereferenceable(8) %v2, i8* %exprtext) #6 comdat {
entry:
  %retval = alloca %"class.std::__cxx11::basic_string"*, align 8
  %v1.addr = alloca i64*, align 8
  %v2.addr = alloca i64*, align 8
  %exprtext.addr = alloca i8*, align 8
  store i64* %v1, i64** %v1.addr, align 8
  store i64* %v2, i64** %v2.addr, align 8
  store i8* %exprtext, i8** %exprtext.addr, align 8
  %0 = load i64*, i64** %v1.addr, align 8
  %1 = load i64, i64* %0, align 8
  %2 = load i64*, i64** %v2.addr, align 8
  %3 = load i64, i64* %2, align 8
  %cmp = icmp eq i64 %1, %3
  %lnot = xor i1 %cmp, true
  %lnot1 = xor i1 %lnot, true
  br i1 %lnot1, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store %"class.std::__cxx11::basic_string"* null, %"class.std::__cxx11::basic_string"** %retval, align 8
  br label %return

if.else:                                          ; preds = %entry
  %4 = load i64*, i64** %v1.addr, align 8
  %5 = load i64*, i64** %v2.addr, align 8
  %6 = load i8*, i8** %exprtext.addr, align 8
  %call = call %"class.std::__cxx11::basic_string"* @_ZN3tsl8internal17MakeCheckOpStringIllEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc(i64* nonnull align 8 dereferenceable(8) %4, i64* nonnull align 8 dereferenceable(8) %5, i8* %6)
  store %"class.std::__cxx11::basic_string"* %call, %"class.std::__cxx11::basic_string"** %retval, align 8
  br label %return

return:                                           ; preds = %if.else, %if.then
  %7 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %retval, align 8
  ret %"class.std::__cxx11::basic_string"* %7
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNK3tsl4core10RefCounted3RefEv(%"class.tsl::core::RefCounted"* %this) #6 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr.i = alloca %"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::Storage.4"*, align 8
  %__i.addr.i = alloca i64, align 8
  %__m.addr.i = alloca i32, align 4
  %.atomictmp.i = alloca i64, align 8
  %atomic-temp.i = alloca i64, align 8
  %this.addr = alloca %"class.tsl::core::RefCounted"*, align 8
  %old_ref = alloca i64, align 8
  %_result = alloca %"struct.tsl::internal::CheckOpString", align 8
  %ref.tmp = alloca i64, align 8
  %ref.tmp3 = alloca i32, align 4
  %ref.tmp7 = alloca %"class.tsl::internal::LogMessageFatal", align 8
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  store %"class.tsl::core::RefCounted"* %this, %"class.tsl::core::RefCounted"** %this.addr, align 8
  %this1 = load %"class.tsl::core::RefCounted"*, %"class.tsl::core::RefCounted"** %this.addr, align 8
  %ref_ = getelementptr inbounds %"class.tsl::core::RefCounted", %"class.tsl::core::RefCounted"* %this1, i32 0, i32 1
  %0 = bitcast %"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::CompressedTupleImpl"* %ref_ to %"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::Storage.4"*
  store %"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::Storage.4"* %0, %"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::Storage.4"** %this.addr.i, align 8
  store i64 1, i64* %__i.addr.i, align 8
  store i32 0, i32* %__m.addr.i, align 4
  %this1.i = load %"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::Storage.4"*, %"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::Storage.4"** %this.addr.i, align 8
  %_M_i.i = getelementptr inbounds %"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::Storage.4", %"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::Storage.4"* %this1.i, i32 0, i32 0
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
  br label %_ZNSt13__atomic_baseIlE9fetch_addElSt12memory_order.exit

acquire.i:                                        ; preds = %entry, %entry
  %6 = load i64, i64* %.atomictmp.i, align 8
  %7 = load i64, i64* %_M_i.i, align 8
  %8 = add i64 %7, %6
  store i64 %8, i64* %_M_i.i, align 8
  store i64 %7, i64* %atomic-temp.i, align 8
  br label %_ZNSt13__atomic_baseIlE9fetch_addElSt12memory_order.exit

release.i:                                        ; preds = %entry
  %9 = load i64, i64* %.atomictmp.i, align 8
  %10 = load i64, i64* %_M_i.i, align 8
  %11 = add i64 %10, %9
  store i64 %11, i64* %_M_i.i, align 8
  store i64 %10, i64* %atomic-temp.i, align 8
  br label %_ZNSt13__atomic_baseIlE9fetch_addElSt12memory_order.exit

acqrel.i:                                         ; preds = %entry
  %12 = load i64, i64* %.atomictmp.i, align 8
  %13 = load i64, i64* %_M_i.i, align 8
  %14 = add i64 %13, %12
  store i64 %14, i64* %_M_i.i, align 8
  store i64 %13, i64* %atomic-temp.i, align 8
  br label %_ZNSt13__atomic_baseIlE9fetch_addElSt12memory_order.exit

seqcst.i:                                         ; preds = %entry
  %15 = load i64, i64* %.atomictmp.i, align 8
  %16 = load i64, i64* %_M_i.i, align 8
  %17 = add i64 %16, %15
  store i64 %17, i64* %_M_i.i, align 8
  store i64 %16, i64* %atomic-temp.i, align 8
  br label %_ZNSt13__atomic_baseIlE9fetch_addElSt12memory_order.exit

_ZNSt13__atomic_baseIlE9fetch_addElSt12memory_order.exit: ; preds = %monotonic.i, %acquire.i, %release.i, %acqrel.i, %seqcst.i
  %18 = load i64, i64* %atomic-temp.i, align 8
  store i64 %18, i64* %old_ref, align 8
  br label %while.cond

while.cond:                                       ; preds = %_ZNSt13__atomic_baseIlE9fetch_addElSt12memory_order.exit
  %19 = load i64, i64* %old_ref, align 8
  %call2 = call i64 @_ZN3tsl8internal21GetReferenceableValueEl(i64 %19)
  store i64 %call2, i64* %ref.tmp, align 8
  %call4 = call i32 @_ZN3tsl8internal21GetReferenceableValueEi(i32 0)
  store i32 %call4, i32* %ref.tmp3, align 4
  %call5 = call %"class.std::__cxx11::basic_string"* @_ZN3tsl8internal12Check_GTImplIliEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc(i64* nonnull align 8 dereferenceable(8) %ref.tmp, i32* nonnull align 4 dereferenceable(4) %ref.tmp3, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0))
  call void @_ZN3tsl8internal13CheckOpStringC2EPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"struct.tsl::internal::CheckOpString"* %_result, %"class.std::__cxx11::basic_string"* %call5)
  %call6 = call zeroext i1 @_ZNK3tsl8internal13CheckOpStringcvbEv(%"struct.tsl::internal::CheckOpString"* %_result)
  br i1 %call6, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void @_ZN3tsl8internal15LogMessageFatalC1EPKci(%"class.tsl::internal::LogMessageFatal"* %ref.tmp7, i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.1.2, i64 0, i64 0), i32 310) #22
  %str_ = getelementptr inbounds %"struct.tsl::internal::CheckOpString", %"struct.tsl::internal::CheckOpString"* %_result, i32 0, i32 0
  %20 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %str_, align 8
  %call8 = invoke nonnull align 8 dereferenceable(136) %"class.tsl::internal::LogMessageFatal"* @_ZStlsIN3tsl8internal15LogMessageFatalENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_SA_RKT0_(%"class.tsl::internal::LogMessageFatal"* nonnull align 8 dereferenceable(136) %ref.tmp7, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %20)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %while.body
  call void @_ZN3tsl8internal15LogMessageFatalD1Ev(%"class.tsl::internal::LogMessageFatal"* %ref.tmp7) #16
  unreachable

lpad:                                             ; preds = %while.body
  %21 = landingpad { i8*, i32 }
          cleanup
  %22 = extractvalue { i8*, i32 } %21, 0
  store i8* %22, i8** %exn.slot, align 8
  %23 = extractvalue { i8*, i32 } %21, 1
  store i32 %23, i32* %ehselector.slot, align 4
  call void @_ZN3tsl8internal15LogMessageFatalD1Ev(%"class.tsl::internal::LogMessageFatal"* %ref.tmp7) #16
  unreachable

24:                                               ; No predecessors!
  br label %eh.resume

while.end:                                        ; preds = %while.cond
  ret void

eh.resume:                                        ; preds = %24
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val9 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val9
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %"class.std::__cxx11::basic_string"* @_ZN3tsl8internal17MakeCheckOpStringIllEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc(i64* nonnull align 8 dereferenceable(8) %v1, i64* nonnull align 8 dereferenceable(8) %v2, i8* %exprtext) #6 comdat personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %v1.addr = alloca i64*, align 8
  %v2.addr = alloca i64*, align 8
  %exprtext.addr = alloca i8*, align 8
  %comb = alloca %"class.tsl::internal::CheckOpMessageBuilder", align 8
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  store i64* %v1, i64** %v1.addr, align 8
  store i64* %v2, i64** %v2.addr, align 8
  store i8* %exprtext, i8** %exprtext.addr, align 8
  %0 = load i8*, i8** %exprtext.addr, align 8
  call void @_ZN3tsl8internal21CheckOpMessageBuilderC1EPKc(%"class.tsl::internal::CheckOpMessageBuilder"* %comb, i8* %0)
  %call = invoke %"class.std::basic_ostream"* @_ZN3tsl8internal21CheckOpMessageBuilder7ForVar1Ev(%"class.tsl::internal::CheckOpMessageBuilder"* %comb)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %1 = load i64*, i64** %v1.addr, align 8
  invoke void @_ZN3tsl8internal22MakeCheckOpValueStringIlEEvPSoRKT_(%"class.std::basic_ostream"* %call, i64* nonnull align 8 dereferenceable(8) %1)
          to label %invoke.cont1 unwind label %lpad

invoke.cont1:                                     ; preds = %invoke.cont
  %call3 = invoke %"class.std::basic_ostream"* @_ZN3tsl8internal21CheckOpMessageBuilder7ForVar2Ev(%"class.tsl::internal::CheckOpMessageBuilder"* %comb)
          to label %invoke.cont2 unwind label %lpad

invoke.cont2:                                     ; preds = %invoke.cont1
  %2 = load i64*, i64** %v2.addr, align 8
  invoke void @_ZN3tsl8internal22MakeCheckOpValueStringIlEEvPSoRKT_(%"class.std::basic_ostream"* %call3, i64* nonnull align 8 dereferenceable(8) %2)
          to label %invoke.cont4 unwind label %lpad

invoke.cont4:                                     ; preds = %invoke.cont2
  %call6 = invoke %"class.std::__cxx11::basic_string"* @_ZN3tsl8internal21CheckOpMessageBuilder9NewStringB5cxx11Ev(%"class.tsl::internal::CheckOpMessageBuilder"* %comb)
          to label %invoke.cont5 unwind label %lpad

invoke.cont5:                                     ; preds = %invoke.cont4
  call void @_ZN3tsl8internal21CheckOpMessageBuilderD1Ev(%"class.tsl::internal::CheckOpMessageBuilder"* %comb) #11
  ret %"class.std::__cxx11::basic_string"* %call6

lpad:                                             ; preds = %invoke.cont4, %invoke.cont2, %invoke.cont1, %invoke.cont, %entry
  %3 = landingpad { i8*, i32 }
          cleanup
  %4 = extractvalue { i8*, i32 } %3, 0
  store i8* %4, i8** %exn.slot, align 8
  %5 = extractvalue { i8*, i32 } %3, 1
  store i32 %5, i32* %ehselector.slot, align 4
  call void @_ZN3tsl8internal21CheckOpMessageBuilderD1Ev(%"class.tsl::internal::CheckOpMessageBuilder"* %comb) #11
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val7 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val7
}

; Function Attrs: noinline optnone uwtable
define dso_local zeroext i1 @TF_TensorIsAligned(%struct.TF_Tensor* %t) #6 {
entry:
  %t.addr = alloca %struct.TF_Tensor*, align 8
  store %struct.TF_Tensor* %t, %struct.TF_Tensor** %t.addr, align 8
  %0 = load %struct.TF_Tensor*, %struct.TF_Tensor** %t.addr, align 8
  %tensor = getelementptr inbounds %struct.TF_Tensor, %struct.TF_Tensor* %0, i32 0, i32 0
  %1 = load %"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"** %tensor, align 8
  %2 = bitcast %"class.tensorflow::AbstractTensorInterface"* %1 to i1 (%"class.tensorflow::AbstractTensorInterface"*)***
  %vtable = load i1 (%"class.tensorflow::AbstractTensorInterface"*)**, i1 (%"class.tensorflow::AbstractTensorInterface"*)*** %2, align 8
  %vfn = getelementptr inbounds i1 (%"class.tensorflow::AbstractTensorInterface"*)*, i1 (%"class.tensorflow::AbstractTensorInterface"*)** %vtable, i64 7
  %3 = load i1 (%"class.tensorflow::AbstractTensorInterface"*)*, i1 (%"class.tensorflow::AbstractTensorInterface"*)** %vfn, align 8
  %call = call zeroext i1 %3(%"class.tensorflow::AbstractTensorInterface"* %1)
  ret i1 %call
}

; Function Attrs: noreturn nounwind
declare void @abort() #16

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* %destaddr, i8* %srcaddr, i64 %len) #17 !dbg !21 {
entry:
  %destaddr.addr = alloca i8*, align 8
  %srcaddr.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %dest = alloca i8*, align 8
  %src = alloca i8*, align 8
  store i8* %destaddr, i8** %destaddr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %destaddr.addr, metadata !30, metadata !DIExpression()), !dbg !31
  store i8* %srcaddr, i8** %srcaddr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %srcaddr.addr, metadata !32, metadata !DIExpression()), !dbg !33
  store i64 %len, i64* %len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !34, metadata !DIExpression()), !dbg !35
  call void @llvm.dbg.declare(metadata i8** %dest, metadata !36, metadata !DIExpression()), !dbg !39
  %0 = load i8*, i8** %destaddr.addr, align 8, !dbg !40
  store i8* %0, i8** %dest, align 8, !dbg !39
  call void @llvm.dbg.declare(metadata i8** %src, metadata !41, metadata !DIExpression()), !dbg !44
  %1 = load i8*, i8** %srcaddr.addr, align 8, !dbg !45
  store i8* %1, i8** %src, align 8, !dbg !44
  br label %while.cond, !dbg !46

while.cond:                                       ; preds = %while.body, %entry
  %2 = load i64, i64* %len.addr, align 8, !dbg !47
  %dec = add i64 %2, -1, !dbg !47
  store i64 %dec, i64* %len.addr, align 8, !dbg !47
  %cmp = icmp ugt i64 %2, 0, !dbg !48
  br i1 %cmp, label %while.body, label %while.end, !dbg !46

while.body:                                       ; preds = %while.cond
  %3 = load i8*, i8** %src, align 8, !dbg !49
  %incdec.ptr = getelementptr inbounds i8, i8* %3, i32 1, !dbg !49
  store i8* %incdec.ptr, i8** %src, align 8, !dbg !49
  %4 = load i8, i8* %3, align 1, !dbg !50
  %5 = load i8*, i8** %dest, align 8, !dbg !51
  %incdec.ptr1 = getelementptr inbounds i8, i8* %5, i32 1, !dbg !51
  store i8* %incdec.ptr1, i8** %dest, align 8, !dbg !51
  store i8 %4, i8* %5, align 1, !dbg !52
  br label %while.cond, !dbg !46, !llvm.loop !53

while.end:                                        ; preds = %while.cond
  %6 = load i8*, i8** %destaddr.addr, align 8, !dbg !54
  ret i8* %6, !dbg !55
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #18

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* %dst, i32 %s, i64 %count) #17 !dbg !56 {
entry:
  %dst.addr = alloca i8*, align 8
  %s.addr = alloca i32, align 4
  %count.addr = alloca i64, align 8
  %a = alloca i8*, align 8
  store i8* %dst, i8** %dst.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dst.addr, metadata !61, metadata !DIExpression()), !dbg !62
  store i32 %s, i32* %s.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %s.addr, metadata !63, metadata !DIExpression()), !dbg !64
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !65, metadata !DIExpression()), !dbg !66
  call void @llvm.dbg.declare(metadata i8** %a, metadata !67, metadata !DIExpression()), !dbg !68
  %0 = load i8*, i8** %dst.addr, align 8, !dbg !69
  store i8* %0, i8** %a, align 8, !dbg !68
  br label %while.cond, !dbg !70

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i64, i64* %count.addr, align 8, !dbg !71
  %dec = add i64 %1, -1, !dbg !71
  store i64 %dec, i64* %count.addr, align 8, !dbg !71
  %cmp = icmp ugt i64 %1, 0, !dbg !72
  br i1 %cmp, label %while.body, label %while.end, !dbg !70

while.body:                                       ; preds = %while.cond
  %2 = load i32, i32* %s.addr, align 4, !dbg !73
  %conv = trunc i32 %2 to i8, !dbg !73
  %3 = load i8*, i8** %a, align 8, !dbg !74
  %incdec.ptr = getelementptr inbounds i8, i8* %3, i32 1, !dbg !74
  store i8* %incdec.ptr, i8** %a, align 8, !dbg !74
  store i8 %conv, i8* %3, align 1, !dbg !75
  br label %while.cond, !dbg !70, !llvm.loop !76

while.end:                                        ; preds = %while.cond
  %4 = load i8*, i8** %dst.addr, align 8, !dbg !77
  ret i8* %4, !dbg !78
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @klee_div_zero_check(i64 %z) #17 !dbg !79 {
entry:
  %z.addr = alloca i64, align 8
  store i64 %z, i64* %z.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %z.addr, metadata !84, metadata !DIExpression()), !dbg !85
  %0 = load i64, i64* %z.addr, align 8, !dbg !86
  %cmp = icmp eq i64 %0, 0, !dbg !88
  br i1 %cmp, label %if.then, label %if.end, !dbg !89

if.then:                                          ; preds = %entry
  call void @klee_report_error(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.15, i64 0, i64 0), i32 14, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1.16, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.17, i64 0, i64 0)) #20, !dbg !90
  unreachable, !dbg !90

if.end:                                           ; preds = %entry
  ret void, !dbg !91
}

; Function Attrs: noreturn
declare dso_local void @klee_report_error(i8*, i32, i8*, i8*) #12

; Function Attrs: noinline nounwind uwtable
define dso_local void @klee_overshift_check(i64 %bitWidth, i64 %shift) #17 !dbg !92 {
entry:
  %bitWidth.addr = alloca i64, align 8
  %shift.addr = alloca i64, align 8
  store i64 %bitWidth, i64* %bitWidth.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %bitWidth.addr, metadata !97, metadata !DIExpression()), !dbg !98
  store i64 %shift, i64* %shift.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %shift.addr, metadata !99, metadata !DIExpression()), !dbg !100
  %0 = load i64, i64* %shift.addr, align 8, !dbg !101
  %1 = load i64, i64* %bitWidth.addr, align 8, !dbg !103
  %cmp = icmp uge i64 %0, %1, !dbg !104
  br i1 %cmp, label %if.then, label %if.end, !dbg !105

if.then:                                          ; preds = %entry
  call void @klee_report_error(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.21, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.22, i64 0, i64 0)) #20, !dbg !106
  unreachable, !dbg !106

if.end:                                           ; preds = %entry
  ret void, !dbg !108
}

define internal void @klee.ctor_stub() {
entry:
  call void @_GLOBAL__sub_I_tf_tensor.cc()
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noinline norecurse optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noinline optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nobuiltin nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noinline noreturn nounwind }
attributes #9 = { argmemonly nounwind willreturn writeonly }
attributes #10 = { noinline uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nounwind }
attributes #12 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { nobuiltin allocsize(0) "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { cold "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #15 = { nounwind readonly }
attributes #16 = { noreturn nounwind }
attributes #17 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #18 = { nounwind readnone speculatable willreturn }
attributes #19 = { builtin nounwind }
attributes #20 = { noreturn }
attributes #21 = { builtin allocsize(0) }
attributes #22 = { cold }
attributes #23 = { allocsize(0) }

!llvm.ident = !{!8, !8, !8, !8, !8, !8, !8}
!llvm.module.flags = !{!9, !10, !11}
!llvm.dbg.cu = !{!2, !12, !14, !16, !18}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__dso_handle", scope: !2, file: !6, line: 1, type: !7, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 11.1.0 (https://github.com/llvm/llvm-project.git 1fdec59bffc11ae37eb51a1b9869f0696bfd5312)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/mushfiqur/tools/klee/runtime/Intrinsic/dso_handle.c", directory: "/home/mushfiqur/tools/klee/build/runtime/Intrinsic")
!4 = !{}
!5 = !{!0}
!6 = !DIFile(filename: "runtime/Intrinsic/dso_handle.c", directory: "/home/mushfiqur/tools/klee")
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!8 = !{!"clang version 11.1.0 (https://github.com/llvm/llvm-project.git 1fdec59bffc11ae37eb51a1b9869f0696bfd5312)"}
!9 = !{i32 1, !"wchar_size", i32 4}
!10 = !{i32 7, !"Dwarf Version", i32 4}
!11 = !{i32 2, !"Debug Info Version", i32 3}
!12 = distinct !DICompileUnit(language: DW_LANG_C99, file: !13, producer: "clang version 11.1.0 (https://github.com/llvm/llvm-project.git 1fdec59bffc11ae37eb51a1b9869f0696bfd5312)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!13 = !DIFile(filename: "/home/mushfiqur/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/mushfiqur/tools/klee/build/runtime/Freestanding")
!14 = distinct !DICompileUnit(language: DW_LANG_C99, file: !15, producer: "clang version 11.1.0 (https://github.com/llvm/llvm-project.git 1fdec59bffc11ae37eb51a1b9869f0696bfd5312)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!15 = !DIFile(filename: "/home/mushfiqur/tools/klee/runtime/Freestanding/memset.c", directory: "/home/mushfiqur/tools/klee/build/runtime/Freestanding")
!16 = distinct !DICompileUnit(language: DW_LANG_C89, file: !17, producer: "clang version 11.1.0 (https://github.com/llvm/llvm-project.git 1fdec59bffc11ae37eb51a1b9869f0696bfd5312)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!17 = !DIFile(filename: "/home/mushfiqur/tools/klee/runtime/Intrinsic/klee_div_zero_check.c", directory: "/home/mushfiqur/tools/klee/build/runtime/Intrinsic")
!18 = distinct !DICompileUnit(language: DW_LANG_C89, file: !19, producer: "clang version 11.1.0 (https://github.com/llvm/llvm-project.git 1fdec59bffc11ae37eb51a1b9869f0696bfd5312)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!19 = !DIFile(filename: "/home/mushfiqur/tools/klee/runtime/Intrinsic/klee_overshift_check.c", directory: "/home/mushfiqur/tools/klee/build/runtime/Intrinsic")
!20 = !{!"True"}
!21 = distinct !DISubprogram(name: "memcpy", scope: !22, file: !22, line: 12, type: !23, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !12, retainedNodes: !4)
!22 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/mushfiqur/tools/klee")
!23 = !DISubroutineType(types: !24)
!24 = !{!7, !7, !25, !27}
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !28, line: 46, baseType: !29)
!28 = !DIFile(filename: "llvm-11/lib/clang/11.1.0/include/stddef.h", directory: "/home/mushfiqur")
!29 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!30 = !DILocalVariable(name: "destaddr", arg: 1, scope: !21, file: !22, line: 12, type: !7)
!31 = !DILocation(line: 12, column: 20, scope: !21)
!32 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !21, file: !22, line: 12, type: !25)
!33 = !DILocation(line: 12, column: 42, scope: !21)
!34 = !DILocalVariable(name: "len", arg: 3, scope: !21, file: !22, line: 12, type: !27)
!35 = !DILocation(line: 12, column: 58, scope: !21)
!36 = !DILocalVariable(name: "dest", scope: !21, file: !22, line: 13, type: !37)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!39 = !DILocation(line: 13, column: 9, scope: !21)
!40 = !DILocation(line: 13, column: 16, scope: !21)
!41 = !DILocalVariable(name: "src", scope: !21, file: !22, line: 14, type: !42)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!44 = !DILocation(line: 14, column: 15, scope: !21)
!45 = !DILocation(line: 14, column: 21, scope: !21)
!46 = !DILocation(line: 16, column: 3, scope: !21)
!47 = !DILocation(line: 16, column: 13, scope: !21)
!48 = !DILocation(line: 16, column: 16, scope: !21)
!49 = !DILocation(line: 17, column: 19, scope: !21)
!50 = !DILocation(line: 17, column: 15, scope: !21)
!51 = !DILocation(line: 17, column: 10, scope: !21)
!52 = !DILocation(line: 17, column: 13, scope: !21)
!53 = distinct !{!53, !46, !49}
!54 = !DILocation(line: 18, column: 10, scope: !21)
!55 = !DILocation(line: 18, column: 3, scope: !21)
!56 = distinct !DISubprogram(name: "memset", scope: !57, file: !57, line: 12, type: !58, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !14, retainedNodes: !4)
!57 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/mushfiqur/tools/klee")
!58 = !DISubroutineType(types: !59)
!59 = !{!7, !7, !60, !27}
!60 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!61 = !DILocalVariable(name: "dst", arg: 1, scope: !56, file: !57, line: 12, type: !7)
!62 = !DILocation(line: 12, column: 20, scope: !56)
!63 = !DILocalVariable(name: "s", arg: 2, scope: !56, file: !57, line: 12, type: !60)
!64 = !DILocation(line: 12, column: 29, scope: !56)
!65 = !DILocalVariable(name: "count", arg: 3, scope: !56, file: !57, line: 12, type: !27)
!66 = !DILocation(line: 12, column: 39, scope: !56)
!67 = !DILocalVariable(name: "a", scope: !56, file: !57, line: 13, type: !37)
!68 = !DILocation(line: 13, column: 9, scope: !56)
!69 = !DILocation(line: 13, column: 13, scope: !56)
!70 = !DILocation(line: 14, column: 3, scope: !56)
!71 = !DILocation(line: 14, column: 15, scope: !56)
!72 = !DILocation(line: 14, column: 18, scope: !56)
!73 = !DILocation(line: 15, column: 12, scope: !56)
!74 = !DILocation(line: 15, column: 7, scope: !56)
!75 = !DILocation(line: 15, column: 10, scope: !56)
!76 = distinct !{!76, !70, !73}
!77 = !DILocation(line: 16, column: 10, scope: !56)
!78 = !DILocation(line: 16, column: 3, scope: !56)
!79 = distinct !DISubprogram(name: "klee_div_zero_check", scope: !80, file: !80, line: 12, type: !81, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !4)
!80 = !DIFile(filename: "runtime/Intrinsic/klee_div_zero_check.c", directory: "/home/mushfiqur/tools/klee")
!81 = !DISubroutineType(types: !82)
!82 = !{null, !83}
!83 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!84 = !DILocalVariable(name: "z", arg: 1, scope: !79, file: !80, line: 12, type: !83)
!85 = !DILocation(line: 12, column: 36, scope: !79)
!86 = !DILocation(line: 13, column: 7, scope: !87)
!87 = distinct !DILexicalBlock(scope: !79, file: !80, line: 13, column: 7)
!88 = !DILocation(line: 13, column: 9, scope: !87)
!89 = !DILocation(line: 13, column: 7, scope: !79)
!90 = !DILocation(line: 14, column: 5, scope: !87)
!91 = !DILocation(line: 15, column: 1, scope: !79)
!92 = distinct !DISubprogram(name: "klee_overshift_check", scope: !93, file: !93, line: 20, type: !94, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !18, retainedNodes: !4)
!93 = !DIFile(filename: "runtime/Intrinsic/klee_overshift_check.c", directory: "/home/mushfiqur/tools/klee")
!94 = !DISubroutineType(types: !95)
!95 = !{null, !96, !96}
!96 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!97 = !DILocalVariable(name: "bitWidth", arg: 1, scope: !92, file: !93, line: 20, type: !96)
!98 = !DILocation(line: 20, column: 46, scope: !92)
!99 = !DILocalVariable(name: "shift", arg: 2, scope: !92, file: !93, line: 20, type: !96)
!100 = !DILocation(line: 20, column: 75, scope: !92)
!101 = !DILocation(line: 21, column: 7, scope: !102)
!102 = distinct !DILexicalBlock(scope: !92, file: !93, line: 21, column: 7)
!103 = !DILocation(line: 21, column: 16, scope: !102)
!104 = !DILocation(line: 21, column: 13, scope: !102)
!105 = !DILocation(line: 21, column: 7, scope: !92)
!106 = !DILocation(line: 27, column: 5, scope: !107)
!107 = distinct !DILexicalBlock(scope: !102, file: !93, line: 21, column: 26)
!108 = !DILocation(line: 29, column: 1, scope: !92)
