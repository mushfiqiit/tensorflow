; ModuleID = 'klee_ready.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::Storage.4" = type { i64 }
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
%struct.TF_Tensor = type { %"class.tensorflow::AbstractTensorInterface"* }
%"class.tensorflow::AbstractTensorInterface" = type { i32 (...)** }
%"class.tensorflow::TensorInterface" = type { %"class.tensorflow::AbstractTensorInterface", %"class.tensorflow::Tensor" }
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
%"class.google::protobuf::Arena" = type { %"class.google::protobuf::internal::ThreadSafeArena" }
%"class.google::protobuf::internal::ThreadSafeArena" = type { i64, %"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::Storage.4", %"class.std::ios_base::Init", %"class.absl::lts_20250127::container_internal::CompressedTuple", %"struct.std::atomic.6", i8*, %"class.google::protobuf::internal::SerialArena" }
%"struct.std::atomic.6" = type { %"struct.std::__atomic_base.7" }
%"struct.std::__atomic_base.7" = type { %"class.google::protobuf::internal::ThreadSafeArena::SerialArenaChunk"* }
%"class.google::protobuf::internal::ThreadSafeArena::SerialArenaChunk" = type opaque
%"class.google::protobuf::internal::SerialArena" = type { %"struct.google::protobuf::internal::ArenaStringPtr", i8*, i8*, %"class.google::protobuf::internal::cleanup::ChunkList", %"struct.std::atomic.10", %"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::CompressedTupleImpl", %"struct.std::atomic.14", %"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::CompressedTupleImpl", %"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::CompressedTupleImpl", %"class.google::protobuf::internal::ThreadSafeArena"*, i8, %"struct.google::protobuf::internal::SerialArena::CachedBlock"** }
%"class.google::protobuf::internal::cleanup::ChunkList" = type { %"struct.google::protobuf::internal::cleanup::ChunkList::Chunk"*, %"struct.google::protobuf::internal::cleanup::CleanupNode"*, %"struct.google::protobuf::internal::cleanup::CleanupNode"*, i8* }
%"struct.google::protobuf::internal::cleanup::ChunkList::Chunk" = type opaque
%"struct.google::protobuf::internal::cleanup::CleanupNode" = type { i8*, void (i8*)* }
%"struct.std::atomic.10" = type { %"struct.std::__atomic_base.11" }
%"struct.std::__atomic_base.11" = type { %"class.google::protobuf::internal::StringBlock"* }
%"class.google::protobuf::internal::StringBlock" = type <{ %"class.google::protobuf::internal::StringBlock"*, i16, i16, i8, [3 x i8] }>
%"struct.std::atomic.14" = type { %"struct.std::__atomic_base.15" }
%"struct.std::__atomic_base.15" = type { %"struct.google::protobuf::internal::ArenaBlock"* }
%"struct.google::protobuf::internal::ArenaBlock" = type { %"struct.google::protobuf::internal::ArenaBlock"*, i64 }
%"struct.google::protobuf::internal::SerialArena::CachedBlock" = type { %"struct.google::protobuf::internal::SerialArena::CachedBlock"* }
%"class.std::function.41" = type { %"class.std::_Function_base", i1 (%"union.std::_Any_data"*, %"class.tensorflow::Variant"**)* }
%"class.std::_Function_base" = type { %"union.std::_Any_data", i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* }
%"union.std::_Any_data" = type { %"union.std::_Nocopy_types" }
%"union.std::_Nocopy_types" = type { { i64, i64 } }
%"class.tensorflow::Variant" = type <{ %union.anon.20, i8, [7 x i8] }>
%union.anon.20 = type { %"class.std::unique_ptr", [48 x i8] }
%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %struct.TF_Tensor }
%class.anon = type { %"class.std::__cxx11::basic_string" }
%"class.tensorflow::UnaryVariantOpRegistry" = type { %"class.tsl::gtl::FlatMap", %"class.tsl::gtl::FlatMap.16", %"class.tsl::gtl::FlatMap.26", %"class.tsl::gtl::FlatMap.33" }
%"class.tsl::gtl::FlatMap" = type { %"class.tsl::gtl::internal::FlatRep" }
%"class.tsl::gtl::internal::FlatRep" = type { %"class.std::ios_base::Init", %"class.std::ios_base::Init", i8, %"struct.tsl::gtl::FlatMap<std::basic_string_view<char, std::char_traits<char>>, std::function<bool (tensorflow::Variant *)>, tsl::hash<absl::string_view>, std::equal_to<std::basic_string_view<char, std::char_traits<char>>>>::Bucket"*, %"struct.tsl::gtl::FlatMap<std::basic_string_view<char, std::char_traits<char>>, std::function<bool (tensorflow::Variant *)>, tsl::hash<absl::string_view>, std::equal_to<std::basic_string_view<char, std::char_traits<char>>>>::Bucket"*, i64, i64, i64, i64, i64 }
%"struct.tsl::gtl::FlatMap<std::basic_string_view<char, std::char_traits<char>>, std::function<bool (tensorflow::Variant *)>, tsl::hash<absl::string_view>, std::equal_to<std::basic_string_view<char, std::char_traits<char>>>>::Bucket" = type opaque
%"class.tsl::gtl::FlatMap.16" = type { %"class.tsl::gtl::internal::FlatRep.17" }
%"class.tsl::gtl::internal::FlatRep.17" = type { %"class.std::ios_base::Init", %"class.std::ios_base::Init", i8, %"struct.tsl::gtl::FlatMap<std::pair<tensorflow::VariantDeviceCopyDirection, tensorflow::TypeIndex>, std::function<absl::lts_20250127::Status (const tensorflow::Variant &, tensorflow::Variant *, std::function<absl::lts_20250127::Status (const tensorflow::Tensor &, tensorflow::Tensor *)>)>, tensorflow::UnaryVariantOpRegistry::PairHash, std::equal_to<std::pair<tensorflow::VariantDeviceCopyDirection, tensorflow::TypeIndex>>>::Bucket"*, %"struct.tsl::gtl::FlatMap<std::pair<tensorflow::VariantDeviceCopyDirection, tensorflow::TypeIndex>, std::function<absl::lts_20250127::Status (const tensorflow::Variant &, tensorflow::Variant *, std::function<absl::lts_20250127::Status (const tensorflow::Tensor &, tensorflow::Tensor *)>)>, tensorflow::UnaryVariantOpRegistry::PairHash, std::equal_to<std::pair<tensorflow::VariantDeviceCopyDirection, tensorflow::TypeIndex>>>::Bucket"*, i64, i64, i64, i64, i64 }
%"struct.tsl::gtl::FlatMap<std::pair<tensorflow::VariantDeviceCopyDirection, tensorflow::TypeIndex>, std::function<absl::lts_20250127::Status (const tensorflow::Variant &, tensorflow::Variant *, std::function<absl::lts_20250127::Status (const tensorflow::Tensor &, tensorflow::Tensor *)>)>, tensorflow::UnaryVariantOpRegistry::PairHash, std::equal_to<std::pair<tensorflow::VariantDeviceCopyDirection, tensorflow::TypeIndex>>>::Bucket" = type { [8 x i8], %"union.tsl::gtl::FlatMap<std::pair<tensorflow::VariantDeviceCopyDirection, tensorflow::TypeIndex>, std::function<absl::lts_20250127::Status (const tensorflow::Variant &, tensorflow::Variant *, std::function<absl::lts_20250127::Status (const tensorflow::Tensor &, tensorflow::Tensor *)>)>, tensorflow::UnaryVariantOpRegistry::PairHash, std::equal_to<std::pair<tensorflow::VariantDeviceCopyDirection, tensorflow::TypeIndex>>>::Bucket::Storage" }
%"union.tsl::gtl::FlatMap<std::pair<tensorflow::VariantDeviceCopyDirection, tensorflow::TypeIndex>, std::function<absl::lts_20250127::Status (const tensorflow::Variant &, tensorflow::Variant *, std::function<absl::lts_20250127::Status (const tensorflow::Tensor &, tensorflow::Tensor *)>)>, tensorflow::UnaryVariantOpRegistry::PairHash, std::equal_to<std::pair<tensorflow::VariantDeviceCopyDirection, tensorflow::TypeIndex>>>::Bucket::Storage" = type { %struct.anon }
%struct.anon = type { [8 x %"struct.std::pair"], [8 x %"class.std::function"] }
%"struct.std::pair" = type { i32, %"class.std::basic_string_view" }
%"class.std::function" = type { %"class.std::_Function_base", void (%"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::Storage.4"*, %"union.std::_Any_data"*, %"class.tensorflow::Variant"*, %"class.tensorflow::Variant"**, %"class.std::function.23"*)* }
%"class.std::function.23" = type { %"class.std::_Function_base", void (%"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::Storage.4"*, %"union.std::_Any_data"*, %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"**)* }
%"class.tsl::gtl::FlatMap.26" = type { %"class.tsl::gtl::internal::FlatRep.27" }
%"class.tsl::gtl::internal::FlatRep.27" = type { %"struct.tensorflow::UnaryVariantOpRegistry::TupleHash", %"class.std::ios_base::Init", i8, %"struct.tsl::gtl::FlatMap<tensorflow::UnaryVariantOpRegistry::FuncTuple<tensorflow::VariantUnaryOp>, std::function<absl::lts_20250127::Status (tensorflow::OpKernelContext *, const tensorflow::Variant &, tensorflow::Variant *)>, tensorflow::UnaryVariantOpRegistry::TupleHash, std::equal_to<tensorflow::UnaryVariantOpRegistry::FuncTuple<tensorflow::VariantUnaryOp>>>::Bucket"*, %"struct.tsl::gtl::FlatMap<tensorflow::UnaryVariantOpRegistry::FuncTuple<tensorflow::VariantUnaryOp>, std::function<absl::lts_20250127::Status (tensorflow::OpKernelContext *, const tensorflow::Variant &, tensorflow::Variant *)>, tensorflow::UnaryVariantOpRegistry::TupleHash, std::equal_to<tensorflow::UnaryVariantOpRegistry::FuncTuple<tensorflow::VariantUnaryOp>>>::Bucket"*, i64, i64, i64, i64, i64 }
%"struct.tensorflow::UnaryVariantOpRegistry::TupleHash" = type { %"class.std::ios_base::Init" }
%"struct.tsl::gtl::FlatMap<tensorflow::UnaryVariantOpRegistry::FuncTuple<tensorflow::VariantUnaryOp>, std::function<absl::lts_20250127::Status (tensorflow::OpKernelContext *, const tensorflow::Variant &, tensorflow::Variant *)>, tensorflow::UnaryVariantOpRegistry::TupleHash, std::equal_to<tensorflow::UnaryVariantOpRegistry::FuncTuple<tensorflow::VariantUnaryOp>>>::Bucket" = type { [8 x i8], %"union.tsl::gtl::FlatMap<tensorflow::UnaryVariantOpRegistry::FuncTuple<tensorflow::VariantUnaryOp>, std::function<absl::lts_20250127::Status (tensorflow::OpKernelContext *, const tensorflow::Variant &, tensorflow::Variant *)>, tensorflow::UnaryVariantOpRegistry::TupleHash, std::equal_to<tensorflow::UnaryVariantOpRegistry::FuncTuple<tensorflow::VariantUnaryOp>>>::Bucket::Storage" }
%"union.tsl::gtl::FlatMap<tensorflow::UnaryVariantOpRegistry::FuncTuple<tensorflow::VariantUnaryOp>, std::function<absl::lts_20250127::Status (tensorflow::OpKernelContext *, const tensorflow::Variant &, tensorflow::Variant *)>, tensorflow::UnaryVariantOpRegistry::TupleHash, std::equal_to<tensorflow::UnaryVariantOpRegistry::FuncTuple<tensorflow::VariantUnaryOp>>>::Bucket::Storage" = type { %struct.anon.30 }
%struct.anon.30 = type { [8 x %"struct.tensorflow::UnaryVariantOpRegistry::FuncTuple"], [8 x %"class.std::function.31"] }
%"struct.tensorflow::UnaryVariantOpRegistry::FuncTuple" = type { i32, %"class.std::basic_string_view", %"class.std::basic_string_view" }
%"class.std::function.31" = type { %"class.std::_Function_base", void (%"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::Storage.4"*, %"union.std::_Any_data"*, %"class.tensorflow::OpKernelContext"**, %"class.tensorflow::Variant"*, %"class.tensorflow::Variant"**)* }
%"class.tensorflow::OpKernelContext" = type opaque
%"class.tsl::gtl::FlatMap.33" = type { %"class.tsl::gtl::internal::FlatRep.34" }
%"class.tsl::gtl::internal::FlatRep.34" = type { %"struct.tensorflow::UnaryVariantOpRegistry::TupleHash", %"class.std::ios_base::Init", i8, %"struct.tsl::gtl::FlatMap<tensorflow::UnaryVariantOpRegistry::FuncTuple<tensorflow::VariantBinaryOp>, std::function<absl::lts_20250127::Status (tensorflow::OpKernelContext *, const tensorflow::Variant &, const tensorflow::Variant &, tensorflow::Variant *)>, tensorflow::UnaryVariantOpRegistry::TupleHash, std::equal_to<tensorflow::UnaryVariantOpRegistry::FuncTuple<tensorflow::VariantBinaryOp>>>::Bucket"*, %"struct.tsl::gtl::FlatMap<tensorflow::UnaryVariantOpRegistry::FuncTuple<tensorflow::VariantBinaryOp>, std::function<absl::lts_20250127::Status (tensorflow::OpKernelContext *, const tensorflow::Variant &, const tensorflow::Variant &, tensorflow::Variant *)>, tensorflow::UnaryVariantOpRegistry::TupleHash, std::equal_to<tensorflow::UnaryVariantOpRegistry::FuncTuple<tensorflow::VariantBinaryOp>>>::Bucket"*, i64, i64, i64, i64, i64 }
%"struct.tsl::gtl::FlatMap<tensorflow::UnaryVariantOpRegistry::FuncTuple<tensorflow::VariantBinaryOp>, std::function<absl::lts_20250127::Status (tensorflow::OpKernelContext *, const tensorflow::Variant &, const tensorflow::Variant &, tensorflow::Variant *)>, tensorflow::UnaryVariantOpRegistry::TupleHash, std::equal_to<tensorflow::UnaryVariantOpRegistry::FuncTuple<tensorflow::VariantBinaryOp>>>::Bucket" = type { [8 x i8], %"union.tsl::gtl::FlatMap<tensorflow::UnaryVariantOpRegistry::FuncTuple<tensorflow::VariantBinaryOp>, std::function<absl::lts_20250127::Status (tensorflow::OpKernelContext *, const tensorflow::Variant &, const tensorflow::Variant &, tensorflow::Variant *)>, tensorflow::UnaryVariantOpRegistry::TupleHash, std::equal_to<tensorflow::UnaryVariantOpRegistry::FuncTuple<tensorflow::VariantBinaryOp>>>::Bucket::Storage" }
%"union.tsl::gtl::FlatMap<tensorflow::UnaryVariantOpRegistry::FuncTuple<tensorflow::VariantBinaryOp>, std::function<absl::lts_20250127::Status (tensorflow::OpKernelContext *, const tensorflow::Variant &, const tensorflow::Variant &, tensorflow::Variant *)>, tensorflow::UnaryVariantOpRegistry::TupleHash, std::equal_to<tensorflow::UnaryVariantOpRegistry::FuncTuple<tensorflow::VariantBinaryOp>>>::Bucket::Storage" = type { %struct.anon.37 }
%struct.anon.37 = type { [8 x %"struct.tensorflow::UnaryVariantOpRegistry::FuncTuple"], [8 x %"class.std::function.39"] }
%"class.std::function.39" = type { %"class.std::_Function_base", void (%"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::Storage.4"*, %"union.std::_Any_data"*, %"class.tensorflow::OpKernelContext"**, %"class.tensorflow::Variant"*, %"class.tensorflow::Variant"*, %"class.tensorflow::Variant"**)* }
%"class.std::type_info" = type { i32 (...)**, i8* }
%"class.tensorflow::VariantTensorDataProto" = type { %"class.google::protobuf::Message", %union.anon.43 }
%union.anon.43 = type { %"struct.tensorflow::VariantTensorDataProto::Impl_" }
%"struct.tensorflow::VariantTensorDataProto::Impl_" = type <{ %"class.google::protobuf::RepeatedPtrField", %"struct.google::protobuf::internal::ArenaStringPtr", %"struct.google::protobuf::internal::ArenaStringPtr", %"class.google::protobuf::internal::CachedSize", [4 x i8] }>
%"class.google::protobuf::RepeatedPtrField" = type { %"class.google::protobuf::internal::RepeatedPtrFieldBase" }
%"class.google::protobuf::internal::RepeatedPtrFieldBase" = type { i8*, i32, i32, %"class.google::protobuf::Arena"* }
%"class.tensorflow::VariantTensorData" = type { %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.std::vector.48" }
%"class.std::vector.48" = type { %"struct.std::_Vector_base.47" }
%"struct.std::_Vector_base.47" = type { %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl" }
%"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl" = type { %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl_data" }
%"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl_data" = type { %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"* }
%"struct.tensorflow::Variant::Value" = type { %"class.tensorflow::AbstractTensorInterface", %"class.tensorflow::VariantTensorDataProto" }
%"struct.tensorflow::Variant::InlineValue" = type { [56 x i8] }
%"struct.google::protobuf::internal::InternalMetadata::ContainerBase" = type { %"class.google::protobuf::Arena"* }
%"class.std::unique_ptr.47" = type { %"struct.std::__uniq_ptr_data.48" }
%"struct.std::__uniq_ptr_data.48" = type { %"class.std::__uniq_ptr_impl.49" }
%"class.std::__uniq_ptr_impl.49" = type { %"class.std::tuple.50" }
%"class.std::tuple.50" = type { %"struct.std::_Tuple_impl.51" }
%"struct.std::_Tuple_impl.51" = type { %"struct.std::_Head_base.54" }
%"struct.std::_Head_base.54" = type { %"class.tensorflow::TensorInterface"* }
%"class.__gnu_cxx::__normal_iterator" = type { %"class.tensorflow::Tensor"* }

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

$_ZN10tensorflow12TensorBufferD0Ev = comdat any

$_ZNK10tensorflow12TensorBuffer10OwnsMemoryEv = comdat any

$_ZN10tensorflow21AllocationDescriptionC2Ev = comdat any

$_ZNK10tensorflow21AllocationDescription15allocated_bytesEv = comdat any

$_ZNK10tensorflow21AllocationDescription25_internal_allocated_bytesEv = comdat any

$_ZN10tensorflow35variant_op_registry_fn_registration30UnaryVariantDecodeRegistrationINS_6TensorEEC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE = comdat any

$_ZN10tensorflow22UnaryVariantOpRegistry6GlobalEv = comdat any

$_ZNSt8functionIFbPN10tensorflow7VariantEEEC2IZNS0_35variant_op_registry_fn_registration30UnaryVariantDecodeRegistrationINS0_6TensorEEC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlS2_E_vEEOT_ = comdat any

$_ZNSt8functionIFbPN10tensorflow7VariantEEED2Ev = comdat any

$_ZZN10tensorflow35variant_op_registry_fn_registration30UnaryVariantDecodeRegistrationINS_6TensorEEC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENUlPNS_7VariantEE_D2Ev = comdat any

$_ZNSt14_Function_baseD2Ev = comdat any

$_ZNSt14_Function_baseC2Ev = comdat any

$_ZNSt14_Function_base13_Base_managerIZN10tensorflow35variant_op_registry_fn_registration30UnaryVariantDecodeRegistrationINS1_6TensorEEC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlPNS1_7VariantEE_E21_M_not_empty_functionISG_EEbRKT_ = comdat any

$_ZSt7forwardIZN10tensorflow35variant_op_registry_fn_registration30UnaryVariantDecodeRegistrationINS0_6TensorEEC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlPNS0_7VariantEE_EOT_RNSt16remove_referenceISG_E4typeE = comdat any

$_ZNSt14_Function_base13_Base_managerIZN10tensorflow35variant_op_registry_fn_registration30UnaryVariantDecodeRegistrationINS1_6TensorEEC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlPNS1_7VariantEE_E15_M_init_functorISG_EEvRSt9_Any_dataOT_ = comdat any

$_ZNSt17_Function_handlerIFbPN10tensorflow7VariantEEZNS0_35variant_op_registry_fn_registration30UnaryVariantDecodeRegistrationINS0_6TensorEEC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_ = comdat any

$_ZNSt17_Function_handlerIFbPN10tensorflow7VariantEEZNS0_35variant_op_registry_fn_registration30UnaryVariantDecodeRegistrationINS0_6TensorEEC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlS2_E_E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation = comdat any

$_ZNSt9_Any_data9_M_accessIPKSt9type_infoEERT_v = comdat any

$_ZNSt14_Function_base13_Base_managerIZN10tensorflow35variant_op_registry_fn_registration30UnaryVariantDecodeRegistrationINS1_6TensorEEC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlPNS1_7VariantEE_E14_M_get_pointerERKSt9_Any_data = comdat any

$_ZNSt9_Any_data9_M_accessIPZN10tensorflow35variant_op_registry_fn_registration30UnaryVariantDecodeRegistrationINS1_6TensorEEC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlPNS1_7VariantEE_EERT_v = comdat any

$_ZNSt14_Function_base13_Base_managerIZN10tensorflow35variant_op_registry_fn_registration30UnaryVariantDecodeRegistrationINS1_6TensorEEC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlPNS1_7VariantEE_E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation = comdat any

$_ZNSt14_Function_base13_Base_managerIZN10tensorflow35variant_op_registry_fn_registration30UnaryVariantDecodeRegistrationINS1_6TensorEEC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlPNS1_7VariantEE_E15_M_init_functorIRKSG_EEvRSt9_Any_dataOT_ = comdat any

$_ZNSt14_Function_base13_Base_managerIZN10tensorflow35variant_op_registry_fn_registration30UnaryVariantDecodeRegistrationINS1_6TensorEEC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlPNS1_7VariantEE_E10_M_destroyERSt9_Any_dataSt17integral_constantIbLb0EE = comdat any

$_ZSt7forwardIRKZN10tensorflow35variant_op_registry_fn_registration30UnaryVariantDecodeRegistrationINS0_6TensorEEC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlPNS0_7VariantEE_EOT_RNSt16remove_referenceISI_E4typeE = comdat any

$_ZNSt14_Function_base13_Base_managerIZN10tensorflow35variant_op_registry_fn_registration30UnaryVariantDecodeRegistrationINS1_6TensorEEC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlPNS1_7VariantEE_E9_M_createIRKSG_EEvRSt9_Any_dataOT_St17integral_constantIbLb0EE = comdat any

$_ZZN10tensorflow35variant_op_registry_fn_registration30UnaryVariantDecodeRegistrationINS_6TensorEEC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENUlPNS_7VariantEE_C2ERKSE_ = comdat any

$_ZNSt9_Any_data9_M_accessEv = comdat any

$_ZNKSt9_Any_data9_M_accessIPZN10tensorflow35variant_op_registry_fn_registration30UnaryVariantDecodeRegistrationINS1_6TensorEEC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlPNS1_7VariantEE_EERKT_v = comdat any

$_ZNKSt9_Any_data9_M_accessEv = comdat any

$_ZSt7forwardIPN10tensorflow7VariantEEOT_RNSt16remove_referenceIS3_E4typeE = comdat any

$_ZSt10__invoke_rIbRZN10tensorflow35variant_op_registry_fn_registration30UnaryVariantDecodeRegistrationINS0_6TensorEEC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlPNS0_7VariantEE_JSE_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESI_E4typeEOSJ_DpOSK_ = comdat any

$_ZSt7forwardIRZN10tensorflow35variant_op_registry_fn_registration30UnaryVariantDecodeRegistrationINS0_6TensorEEC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlPNS0_7VariantEE_EOT_RNSt16remove_referenceISH_E4typeE = comdat any

$_ZSt13__invoke_implIbRZN10tensorflow35variant_op_registry_fn_registration30UnaryVariantDecodeRegistrationINS0_6TensorEEC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlPNS0_7VariantEE_JSE_EET_St14__invoke_otherOT0_DpOT1_ = comdat any

$_ZZN10tensorflow35variant_op_registry_fn_registration30UnaryVariantDecodeRegistrationINS_6TensorEEC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENKUlPNS_7VariantEE_clESD_ = comdat any

$_ZN3tsl8internal21GetReferenceableValueIPN10tensorflow7VariantEEERKT_S7_ = comdat any

$_ZN3tsl8internal21GetReferenceableValueIDnEERKT_S4_ = comdat any

$_ZN3tsl8internal12Check_NEImplIPN10tensorflow7VariantEDnEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc = comdat any

$_ZN10tensorflow7Variant3getINS_22VariantTensorDataProtoEEEPT_v = comdat any

$_ZN10tensorflow7VariantC2INS_6TensorES2_LPv0EEEOT_ = comdat any

$_ZSt4moveIRN10tensorflow22VariantTensorDataProtoEEONSt16remove_referenceIT_E4typeEOS4_ = comdat any

$_ZN10tensorflow22VariantTensorDataProtoC2EOS0_ = comdat any

$_ZSt4moveIRN10tensorflow17VariantTensorDataEEONSt16remove_referenceIT_E4typeEOS4_ = comdat any

$_ZN10tensorflow17VariantTensorDataC2EOS0_ = comdat any

$_ZN10tensorflow17VariantTensorDataD2Ev = comdat any

$_ZSt4swapIN10tensorflow7VariantEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SE_ = comdat any

$_ZSt4moveIRN10tensorflow7VariantEEONSt16remove_referenceIT_E4typeEOS4_ = comdat any

$_ZN10tensorflow7VariantC2EOS0_ = comdat any

$_ZN10tensorflow7VariantaSEOS0_ = comdat any

$_ZN10tensorflow7Variant4swapERS0_ = comdat any

$_ZNK10tensorflow7Variant8is_emptyEv = comdat any

$_ZNK10tensorflow7Variant13IsInlineValueEv = comdat any

$_ZSt4moveIRN10tensorflow7Variant11InlineValueEEONSt16remove_referenceIT_E4typeEOS5_ = comdat any

$_ZN10tensorflow7Variant17ResetAndSetInlineIJNS0_11InlineValueEEEEvDpOT_ = comdat any

$_ZSt4moveIRSt10unique_ptrIN10tensorflow7Variant14ValueInterfaceESt14default_deleteIS3_EEEONSt16remove_referenceIT_E4typeEOS9_ = comdat any

$_ZN10tensorflow7Variant15ResetAndSetHeapIJSt10unique_ptrINS0_14ValueInterfaceESt14default_deleteIS3_EEEEEvDpOT_ = comdat any

$_ZN10tensorflow7Variant5clearEv = comdat any

$_ZSt4swapIN10tensorflow7Variant11InlineValueEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SF_ = comdat any

$_ZSt4swapIN10tensorflow7Variant14ValueInterfaceESt14default_deleteIS2_EENSt9enable_ifIXsr14__is_swappableIT0_EE5valueEvE4typeERSt10unique_ptrIT_S6_ESC_ = comdat any

$_ZNSt10unique_ptrIN10tensorflow7Variant14ValueInterfaceESt14default_deleteIS2_EEC2EOS5_ = comdat any

$_ZNSt10unique_ptrIN10tensorflow7Variant14ValueInterfaceESt14default_deleteIS2_EED2Ev = comdat any

$_ZNSt15__uniq_ptr_implIN10tensorflow7Variant14ValueInterfaceESt14default_deleteIS2_EE6_M_ptrEv = comdat any

$_ZNSt10unique_ptrIN10tensorflow7Variant14ValueInterfaceESt14default_deleteIS2_EE11get_deleterEv = comdat any

$_ZSt4moveIRPN10tensorflow7Variant14ValueInterfaceEEONSt16remove_referenceIT_E4typeEOS6_ = comdat any

$_ZNKSt14default_deleteIN10tensorflow7Variant14ValueInterfaceEEclEPS2_ = comdat any

$_ZNSt15__uniq_ptr_implIN10tensorflow7Variant14ValueInterfaceESt14default_deleteIS2_EE10_M_deleterEv = comdat any

$_ZSt3getILm1EJPN10tensorflow7Variant14ValueInterfaceESt14default_deleteIS2_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSA_ = comdat any

$_ZSt12__get_helperILm1ESt14default_deleteIN10tensorflow7Variant14ValueInterfaceEEJEERT0_RSt11_Tuple_implIXT_EJS5_DpT1_EE = comdat any

$_ZNSt11_Tuple_implILm1EJSt14default_deleteIN10tensorflow7Variant14ValueInterfaceEEEE7_M_headERS5_ = comdat any

$_ZNSt10_Head_baseILm1ESt14default_deleteIN10tensorflow7Variant14ValueInterfaceEELb1EE7_M_headERS5_ = comdat any

$_ZSt3getILm0EJPN10tensorflow7Variant14ValueInterfaceESt14default_deleteIS2_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSA_ = comdat any

$_ZSt12__get_helperILm0EPN10tensorflow7Variant14ValueInterfaceEJSt14default_deleteIS2_EEERT0_RSt11_Tuple_implIXT_EJS6_DpT1_EE = comdat any

$_ZNSt11_Tuple_implILm0EJPN10tensorflow7Variant14ValueInterfaceESt14default_deleteIS2_EEE7_M_headERS6_ = comdat any

$_ZNSt10_Head_baseILm0EPN10tensorflow7Variant14ValueInterfaceELb0EE7_M_headERS4_ = comdat any

$_ZNSt15__uniq_ptr_dataIN10tensorflow7Variant14ValueInterfaceESt14default_deleteIS2_ELb1ELb1EEC2EOS5_ = comdat any

$_ZNSt15__uniq_ptr_implIN10tensorflow7Variant14ValueInterfaceESt14default_deleteIS2_EEC2EOS5_ = comdat any

$_ZSt4moveIRSt5tupleIJPN10tensorflow7Variant14ValueInterfaceESt14default_deleteIS3_EEEEONSt16remove_referenceIT_E4typeEOSA_ = comdat any

$_ZNSt5tupleIJPN10tensorflow7Variant14ValueInterfaceESt14default_deleteIS2_EEEC2EOS6_ = comdat any

$_ZNSt11_Tuple_implILm0EJPN10tensorflow7Variant14ValueInterfaceESt14default_deleteIS2_EEEC2EOS6_ = comdat any

$_ZNSt11_Tuple_implILm1EJSt14default_deleteIN10tensorflow7Variant14ValueInterfaceEEEEC2EOS5_ = comdat any

$_ZNSt10unique_ptrIN10tensorflow7Variant14ValueInterfaceESt14default_deleteIS2_EE4swapERS5_ = comdat any

$_ZNSt15__uniq_ptr_implIN10tensorflow7Variant14ValueInterfaceESt14default_deleteIS2_EE4swapERS5_ = comdat any

$_ZSt4swapIPN10tensorflow7Variant14ValueInterfaceEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS7_ESt18is_move_assignableIS7_EEE5valueEvE4typeERS7_SG_ = comdat any

$_ZSt4swapISt14default_deleteIN10tensorflow7Variant14ValueInterfaceEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS8_ESt18is_move_assignableIS8_EEE5valueEvE4typeERS8_SH_ = comdat any

$_ZSt4moveIRSt14default_deleteIN10tensorflow7Variant14ValueInterfaceEEEONSt16remove_referenceIT_E4typeEOS7_ = comdat any

$_ZN10tensorflow7Variant11InlineValueC2EOS1_ = comdat any

$_ZN10tensorflow7Variant11InlineValueaSEOS1_ = comdat any

$_ZN10tensorflow7Variant11InlineValueD2Ev = comdat any

$_ZN10tensorflow7Variant11InlineValue11ResetMemoryEv = comdat any

$_ZN10tensorflow7Variant11InlineValue16AsValueInterfaceEv = comdat any

$_ZNK10tensorflow9TypeIndexeqERKS0_ = comdat any

$_ZN10tensorflow9TypeIndexD2Ev = comdat any

$_ZN10tensorflow7Variant15ResetAndSetHeapIJDnEEEvDpOT_ = comdat any

$_ZN10tensorflow7Variant11ResetMemoryEv = comdat any

$_ZSt7forwardIDnEOT_RNSt16remove_referenceIS0_E4typeE = comdat any

$_ZNSt10unique_ptrIN10tensorflow7Variant14ValueInterfaceESt14default_deleteIS2_EEC2IS4_vEEDn = comdat any

$_ZNSt15__uniq_ptr_dataIN10tensorflow7Variant14ValueInterfaceESt14default_deleteIS2_ELb1ELb1EECI2St15__uniq_ptr_implIS2_S4_EEv = comdat any

$_ZNSt15__uniq_ptr_implIN10tensorflow7Variant14ValueInterfaceESt14default_deleteIS2_EEC2Ev = comdat any

$_ZNSt5tupleIJPN10tensorflow7Variant14ValueInterfaceESt14default_deleteIS2_EEEC2ILb1ELb1EEEv = comdat any

$_ZNSt11_Tuple_implILm0EJPN10tensorflow7Variant14ValueInterfaceESt14default_deleteIS2_EEEC2Ev = comdat any

$_ZNSt11_Tuple_implILm1EJSt14default_deleteIN10tensorflow7Variant14ValueInterfaceEEEEC2Ev = comdat any

$_ZNSt10_Head_baseILm0EPN10tensorflow7Variant14ValueInterfaceELb0EEC2Ev = comdat any

$_ZNSt10_Head_baseILm1ESt14default_deleteIN10tensorflow7Variant14ValueInterfaceEELb1EEC2Ev = comdat any

$_ZSt7forwardISt10unique_ptrIN10tensorflow7Variant14ValueInterfaceESt14default_deleteIS3_EEEOT_RNSt16remove_referenceIS7_E4typeE = comdat any

$_ZSt7forwardIN10tensorflow7Variant11InlineValueEEOT_RNSt16remove_referenceIS3_E4typeE = comdat any

$_ZNK10tensorflow7Variant8GetValueEv = comdat any

$_ZNK10tensorflow7Variant11InlineValue16AsValueInterfaceEv = comdat any

$_ZNKSt10unique_ptrIN10tensorflow7Variant14ValueInterfaceESt14default_deleteIS2_EE3getEv = comdat any

$_ZNKSt15__uniq_ptr_implIN10tensorflow7Variant14ValueInterfaceESt14default_deleteIS2_EE6_M_ptrEv = comdat any

$_ZSt3getILm0EJPN10tensorflow7Variant14ValueInterfaceESt14default_deleteIS2_EEERKNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERKSA_ = comdat any

$_ZSt12__get_helperILm0EPN10tensorflow7Variant14ValueInterfaceEJSt14default_deleteIS2_EEERKT0_RKSt11_Tuple_implIXT_EJS6_DpT1_EE = comdat any

$_ZNSt11_Tuple_implILm0EJPN10tensorflow7Variant14ValueInterfaceESt14default_deleteIS2_EEE7_M_headERKS6_ = comdat any

$_ZNSt10_Head_baseILm0EPN10tensorflow7Variant14ValueInterfaceELb0EE7_M_headERKS4_ = comdat any

$_ZNSt6vectorIN10tensorflow6TensorESaIS1_EED2Ev = comdat any

$_ZNSt12_Vector_baseIN10tensorflow6TensorESaIS1_EE19_M_get_Tp_allocatorEv = comdat any

$_ZSt8_DestroyIPN10tensorflow6TensorES1_EvT_S3_RSaIT0_E = comdat any

$_ZNSt12_Vector_baseIN10tensorflow6TensorESaIS1_EED2Ev = comdat any

$_ZNSt12_Vector_baseIN10tensorflow6TensorESaIS1_EE13_M_deallocateEPS1_m = comdat any

$_ZNSt12_Vector_baseIN10tensorflow6TensorESaIS1_EE12_Vector_implD2Ev = comdat any

$_ZNSaIN10tensorflow6TensorEED2Ev = comdat any

$_ZN9__gnu_cxx13new_allocatorIN10tensorflow6TensorEED2Ev = comdat any

$_ZNSt16allocator_traitsISaIN10tensorflow6TensorEEE10deallocateERS2_PS1_m = comdat any

$_ZN9__gnu_cxx13new_allocatorIN10tensorflow6TensorEE10deallocateEPS2_m = comdat any

$_ZSt8_DestroyIPN10tensorflow6TensorEEvT_S3_ = comdat any

$_ZNSt12_Destroy_auxILb0EE9__destroyIPN10tensorflow6TensorEEEvT_S5_ = comdat any

$_ZSt11__addressofIN10tensorflow6TensorEEPT_RS2_ = comdat any

$_ZSt8_DestroyIN10tensorflow6TensorEEvPT_ = comdat any

$_ZNSt6vectorIN10tensorflow6TensorESaIS1_EEC2EOS3_ = comdat any

$_ZNSt12_Vector_baseIN10tensorflow6TensorESaIS1_EEC2EOS3_ = comdat any

$_ZNSt12_Vector_baseIN10tensorflow6TensorESaIS1_EE12_Vector_implC2EOS4_ = comdat any

$_ZSt4moveIRNSt12_Vector_baseIN10tensorflow6TensorESaIS2_EE12_Vector_implEEONSt16remove_referenceIT_E4typeEOS8_ = comdat any

$_ZNSaIN10tensorflow6TensorEEC2ERKS1_ = comdat any

$_ZNSt12_Vector_baseIN10tensorflow6TensorESaIS1_EE17_Vector_impl_dataC2EOS4_ = comdat any

$_ZN9__gnu_cxx13new_allocatorIN10tensorflow6TensorEEC2ERKS3_ = comdat any

$_ZN10tensorflow22VariantTensorDataProtoC2EPN6google8protobuf5ArenaEOS0_ = comdat any

$_ZN10tensorflow22VariantTensorDataProtoaSEOS0_ = comdat any

$_ZNK6google8protobuf11MessageLite8GetArenaEv = comdat any

$_ZNK6google8protobuf8internal16InternalMetadata5arenaEv = comdat any

$_ZNK6google8protobuf8internal16InternalMetadata19have_unknown_fieldsEv = comdat any

$_ZNK6google8protobuf8internal16InternalMetadata8PtrValueINS2_13ContainerBaseEEEPT_v = comdat any

$_ZNK6google8protobuf8internal16InternalMetadata8PtrValueINS0_5ArenaEEEPT_v = comdat any

$_ZN10tensorflow7Variant13CanInlineTypeINS_6TensorEEEbv = comdat any

$_ZSt7forwardIN10tensorflow6TensorEEOT_RNSt16remove_referenceIS2_E4typeE = comdat any

$_ZN10tensorflow7Variant11InsertValueINS_6TensorES2_EEvOT0_ = comdat any

$_ZN10tensorflow7Variant11InlineValueC2INS_6TensorEJS3_EEENS1_3TagIT_EEDpOT0_ = comdat any

$_ZN10tensorflow7Variant7InPlaceEv = comdat any

$_ZSt11make_uniqueIN10tensorflow7Variant5ValueINS0_6TensorEEEJNS1_10in_place_tES3_EENSt9_MakeUniqIT_E15__single_objectEDpOT0_ = comdat any

$_ZNSt10unique_ptrIN10tensorflow7Variant14ValueInterfaceESt14default_deleteIS2_EEC2INS1_5ValueINS0_6TensorEEES3_IS9_EvEEOS_IT_T0_E = comdat any

$_ZNSt10unique_ptrIN10tensorflow7Variant5ValueINS0_6TensorEEESt14default_deleteIS4_EED2Ev = comdat any

$_ZNSt15__uniq_ptr_implIN10tensorflow7Variant5ValueINS0_6TensorEEESt14default_deleteIS4_EE6_M_ptrEv = comdat any

$_ZNSt10unique_ptrIN10tensorflow7Variant5ValueINS0_6TensorEEESt14default_deleteIS4_EE11get_deleterEv = comdat any

$_ZSt4moveIRPN10tensorflow7Variant5ValueINS0_6TensorEEEEONSt16remove_referenceIT_E4typeEOS8_ = comdat any

$_ZNKSt14default_deleteIN10tensorflow7Variant5ValueINS0_6TensorEEEEclEPS4_ = comdat any

$_ZN10tensorflow7Variant5ValueINS_6TensorEED2Ev = comdat any

$_ZN10tensorflow7Variant14ValueInterfaceD2Ev = comdat any

$_ZN10tensorflow7Variant5ValueINS_6TensorEED0Ev = comdat any

$_ZNK10tensorflow7Variant5ValueINS_6TensorEE6TypeIdEv = comdat any

$_ZN10tensorflow7Variant5ValueINS_6TensorEE6RawPtrEv = comdat any

$_ZNK10tensorflow7Variant5ValueINS_6TensorEE6RawPtrEv = comdat any

$_ZNK10tensorflow7Variant5ValueINS_6TensorEE5CloneEv = comdat any

$_ZNK10tensorflow7Variant5ValueINS_6TensorEE9CloneIntoEPNS0_14ValueInterfaceE = comdat any

$_ZN10tensorflow7Variant5ValueINS_6TensorEE10MoveAssignEPNS0_14ValueInterfaceE = comdat any

$_ZN10tensorflow7Variant5ValueINS_6TensorEE8MoveIntoEPNS0_14ValueInterfaceE = comdat any

$_ZNK10tensorflow7Variant5ValueINS_6TensorEE8TypeNameB5cxx11Ev = comdat any

$_ZNK10tensorflow7Variant5ValueINS_6TensorEE11DebugStringB5cxx11Ev = comdat any

$_ZNK10tensorflow7Variant5ValueINS_6TensorEE6EncodeEPNS_17VariantTensorDataE = comdat any

$_ZN10tensorflow7Variant5ValueINS_6TensorEE6DecodeENS_17VariantTensorDataE = comdat any

$_ZNK10tensorflow7Variant5ValueINS_6TensorEE6EncodeEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE = comdat any

$_ZN10tensorflow7Variant5ValueINS_6TensorEE6DecodeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE = comdat any

$_ZN10tensorflow13DecodeVariantINS_6TensorEEEbPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPT_ = comdat any

$_ZN10tensorflow17VariantTensorDataC2Ev = comdat any

$_ZN10tensorflow17DecodeVariantImplINS_6TensorEEEbNS_17VariantTensorDataENS_12TypeResolverIT_Lb0ELb1ELb0EEEPS4_ = comdat any

$_ZN10tensorflow6TensoraSERKS0_ = comdat any

$_ZN10tensorflow6Tensor16CopyFromInternalERKS0_RKNS_11TensorShapeE = comdat any

$_ZN3tsl8internal12Check_EQImplIllEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc = comdat any

$_ZNK3tsl4core10RefCounted3RefEv = comdat any

$_ZN3tsl8internal17MakeCheckOpStringIllEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc = comdat any

$_ZNSt6vectorIN10tensorflow6TensorESaIS1_EEC2Ev = comdat any

$_ZNSt12_Vector_baseIN10tensorflow6TensorESaIS1_EEC2Ev = comdat any

$_ZNSt12_Vector_baseIN10tensorflow6TensorESaIS1_EE12_Vector_implC2Ev = comdat any

$_ZNSaIN10tensorflow6TensorEEC2Ev = comdat any

$_ZNSt12_Vector_baseIN10tensorflow6TensorESaIS1_EE17_Vector_impl_dataC2Ev = comdat any

$_ZN9__gnu_cxx13new_allocatorIN10tensorflow6TensorEEC2Ev = comdat any

$_ZN10tensorflow13EncodeVariantINS_6TensorEEEvRKT_PNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE = comdat any

$_ZN10tensorflow17EncodeVariantImplINS_6TensorEEEvRKT_NS_12TypeResolverIS2_Lb0ELb1EXsr3std10is_base_ofIN6google8protobuf11MessageLiteENSt5decayIS2_E4typeEEE5valueEEEPNS_17VariantTensorDataE = comdat any

$_ZN10tensorflow15TypeNameVariantINS_6TensorEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_ = comdat any

$_ZN10tensorflow17VariantTensorData13set_type_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE = comdat any

$_ZStlsIN3tsl8internal15LogMessageFatalEA30_cEOT_S5_RKT0_ = comdat any

$_ZN10tensorflow19TypeNameVariantImplINS_6TensorEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_NS_16TypeNameResolverIS8_Lb0ELb1EXsr3std10is_base_ofIN6google8protobuf11MessageLiteENSt5decayIS8_E4typeEEE5valueEEE = comdat any

$_ZNSt6vectorIN10tensorflow6TensorESaIS1_EE5clearEv = comdat any

$_ZNSt6vectorIN10tensorflow6TensorESaIS1_EE9push_backERKS1_ = comdat any

$_ZNSt16allocator_traitsISaIN10tensorflow6TensorEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_ = comdat any

$_ZNSt6vectorIN10tensorflow6TensorESaIS1_EE3endEv = comdat any

$_ZNSt6vectorIN10tensorflow6TensorESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_ = comdat any

$_ZNKSt6vectorIN10tensorflow6TensorESaIS1_EE12_M_check_lenEmPKc = comdat any

$_ZNSt6vectorIN10tensorflow6TensorESaIS1_EE5beginEv = comdat any

$_ZN9__gnu_cxxmiIPN10tensorflow6TensorESt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_ = comdat any

$_ZNSt12_Vector_baseIN10tensorflow6TensorESaIS1_EE11_M_allocateEm = comdat any

$_ZSt7forwardIRKN10tensorflow6TensorEEOT_RNSt16remove_referenceIS4_E4typeE = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPN10tensorflow6TensorESt6vectorIS2_SaIS2_EEE4baseEv = comdat any

$_ZSt34__uninitialized_move_if_noexcept_aIPN10tensorflow6TensorES2_SaIS1_EET0_T_S5_S4_RT1_ = comdat any

$_ZNSt16allocator_traitsISaIN10tensorflow6TensorEEE7destroyIS1_EEvRS2_PT_ = comdat any

$_ZN9__gnu_cxx13new_allocatorIN10tensorflow6TensorEE7destroyIS2_EEvPT_ = comdat any

$_ZSt32__make_move_if_noexcept_iteratorIN10tensorflow6TensorEPKS1_ET0_PT_ = comdat any

$_ZSt22__uninitialized_copy_aIPKN10tensorflow6TensorEPS1_S1_ET0_T_S6_S5_RSaIT1_E = comdat any

$_ZSt18uninitialized_copyIPKN10tensorflow6TensorEPS1_ET0_T_S6_S5_ = comdat any

$_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIPKN10tensorflow6TensorEPS3_EET0_T_S8_S7_ = comdat any

$_ZSt10_ConstructIN10tensorflow6TensorEJRKS1_EEvPT_DpOT0_ = comdat any

$_ZN10tensorflow6TensorC2ERKS0_ = comdat any

$_ZN10tensorflow11TensorShapeC2ERKS0_ = comdat any

$_ZN10tensorflow15TensorShapeBaseINS_11TensorShapeEEC2ERKS2_ = comdat any

$_ZN10tensorflow14TensorShapeRepC2ERKS0_ = comdat any

$_ZNSt16allocator_traitsISaIN10tensorflow6TensorEEE8allocateERS2_m = comdat any

$_ZN9__gnu_cxx13new_allocatorIN10tensorflow6TensorEE8allocateEmPKv = comdat any

$_ZNK9__gnu_cxx13new_allocatorIN10tensorflow6TensorEE11_M_max_sizeEv = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPN10tensorflow6TensorESt6vectorIS2_SaIS2_EEEC2ERKS3_ = comdat any

$_ZNKSt6vectorIN10tensorflow6TensorESaIS1_EE8max_sizeEv = comdat any

$_ZNKSt6vectorIN10tensorflow6TensorESaIS1_EE4sizeEv = comdat any

$_ZSt3maxImERKT_S2_S2_ = comdat any

$_ZNKSt12_Vector_baseIN10tensorflow6TensorESaIS1_EE19_M_get_Tp_allocatorEv = comdat any

$_ZNSt6vectorIN10tensorflow6TensorESaIS1_EE11_S_max_sizeERKS2_ = comdat any

$_ZNSt16allocator_traitsISaIN10tensorflow6TensorEEE8max_sizeERKS2_ = comdat any

$_ZNK9__gnu_cxx13new_allocatorIN10tensorflow6TensorEE8max_sizeEv = comdat any

$_ZN9__gnu_cxx13new_allocatorIN10tensorflow6TensorEE9constructIS2_JRKS2_EEEvPT_DpOT0_ = comdat any

$_ZNSt6vectorIN10tensorflow6TensorESaIS1_EE15_M_erase_at_endEPS1_ = comdat any

$_ZN10tensorflow13DecodeVariantINS_6TensorEEEbPNS_17VariantTensorDataEPT_ = comdat any

$_ZN10tensorflow13EncodeVariantINS_6TensorEEEvRKT_PNS_17VariantTensorDataE = comdat any

$_ZN10tensorflow18DebugStringVariantINS_6TensorEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_ = comdat any

$_ZN10tensorflow22DebugStringVariantImplINS_6TensorEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_NS_19DebugStringResolverIS8_Lb1EXsr10can_strcatINSt5decayIS8_E4typeEEE5valueEEE = comdat any

$_ZNK10tensorflow6Tensor11DebugStringB5cxx11Ev = comdat any

$_ZN10tensorflow7Variant5ValueINS_6TensorEEC2IJS2_EEENS0_10in_place_tEDpOT_ = comdat any

$_ZN10tensorflow7Variant14ValueInterfaceC2Ev = comdat any

$_ZN10tensorflow7Variant14ValueInterfaceD0Ev = comdat any

$_ZStlsIN3tsl8internal15LogMessageFatalEA44_cEOT_S5_RKT0_ = comdat any

$_ZNK10tensorflow9TypeIndex4nameEv = comdat any

$_ZStlsIN3tsl8internal15LogMessageFatalEPKcEOT_S6_RKT0_ = comdat any

$_ZStlsIN3tsl8internal15LogMessageFatalEA6_cEOT_S5_RKT0_ = comdat any

$_ZN10tensorflow6TensoraSEOS0_ = comdat any

$_ZN10tensorflow11TensorShapeaSEOS0_ = comdat any

$_ZN10tensorflow15TensorShapeBaseINS_11TensorShapeEEaSEOS2_ = comdat any

$_ZN10tensorflow14TensorShapeRepaSEOS0_ = comdat any

$_ZN10tensorflow7Variant5ValueINS_6TensorEEC2IJRKS2_EEENS0_10in_place_tEDpOT_ = comdat any

$_ZSt11make_uniqueIN10tensorflow7Variant5ValueINS0_6TensorEEEJNS1_10in_place_tERKS3_EENSt9_MakeUniqIT_E15__single_objectEDpOT0_ = comdat any

$_ZSt7forwardIN10tensorflow7Variant10in_place_tEEOT_RNSt16remove_referenceIS3_E4typeE = comdat any

$_ZNSt10unique_ptrIN10tensorflow7Variant5ValueINS0_6TensorEEESt14default_deleteIS4_EEC2IS6_vEEPS4_ = comdat any

$_ZNSt15__uniq_ptr_dataIN10tensorflow7Variant5ValueINS0_6TensorEEESt14default_deleteIS4_ELb1ELb1EECI2St15__uniq_ptr_implIS4_S6_EEPS4_ = comdat any

$_ZNSt15__uniq_ptr_implIN10tensorflow7Variant5ValueINS0_6TensorEEESt14default_deleteIS4_EEC2EPS4_ = comdat any

$_ZNSt5tupleIJPN10tensorflow7Variant5ValueINS0_6TensorEEESt14default_deleteIS4_EEEC2ILb1ELb1EEEv = comdat any

$_ZNSt11_Tuple_implILm0EJPN10tensorflow7Variant5ValueINS0_6TensorEEESt14default_deleteIS4_EEEC2Ev = comdat any

$_ZNSt11_Tuple_implILm1EJSt14default_deleteIN10tensorflow7Variant5ValueINS1_6TensorEEEEEEC2Ev = comdat any

$_ZNSt10_Head_baseILm0EPN10tensorflow7Variant5ValueINS0_6TensorEEELb0EEC2Ev = comdat any

$_ZNSt10_Head_baseILm1ESt14default_deleteIN10tensorflow7Variant5ValueINS1_6TensorEEEELb1EEC2Ev = comdat any

$_ZN10tensorflow9TypeIndex4MakeINS_6TensorEEES0_v = comdat any

$_ZNKSt9type_info4nameEv = comdat any

$_ZN3tsl6Hash64EPKc = comdat any

$_ZN10tensorflow9TypeIndexC2EmPKc = comdat any

$_ZN3tsl6Hash64EPKcm = comdat any

$_ZNSt15__uniq_ptr_implIN10tensorflow7Variant5ValueINS0_6TensorEEESt14default_deleteIS4_EE10_M_deleterEv = comdat any

$_ZSt3getILm1EJPN10tensorflow7Variant5ValueINS0_6TensorEEESt14default_deleteIS4_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSC_ = comdat any

$_ZSt12__get_helperILm1ESt14default_deleteIN10tensorflow7Variant5ValueINS1_6TensorEEEEJEERT0_RSt11_Tuple_implIXT_EJS7_DpT1_EE = comdat any

$_ZNSt11_Tuple_implILm1EJSt14default_deleteIN10tensorflow7Variant5ValueINS1_6TensorEEEEEE7_M_headERS7_ = comdat any

$_ZNSt10_Head_baseILm1ESt14default_deleteIN10tensorflow7Variant5ValueINS1_6TensorEEEELb1EE7_M_headERS7_ = comdat any

$_ZSt3getILm0EJPN10tensorflow7Variant5ValueINS0_6TensorEEESt14default_deleteIS4_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSC_ = comdat any

$_ZSt12__get_helperILm0EPN10tensorflow7Variant5ValueINS0_6TensorEEEJSt14default_deleteIS4_EEERT0_RSt11_Tuple_implIXT_EJS8_DpT1_EE = comdat any

$_ZNSt11_Tuple_implILm0EJPN10tensorflow7Variant5ValueINS0_6TensorEEESt14default_deleteIS4_EEE7_M_headERS8_ = comdat any

$_ZNSt10_Head_baseILm0EPN10tensorflow7Variant5ValueINS0_6TensorEEELb0EE7_M_headERS6_ = comdat any

$_ZNSt10unique_ptrIN10tensorflow7Variant5ValueINS0_6TensorEEESt14default_deleteIS4_EE7releaseEv = comdat any

$_ZSt7forwardISt14default_deleteIN10tensorflow7Variant5ValueINS1_6TensorEEEEEOT_RNSt16remove_referenceIS7_E4typeE = comdat any

$_ZNSt15__uniq_ptr_dataIN10tensorflow7Variant14ValueInterfaceESt14default_deleteIS2_ELb1ELb1EECI2St15__uniq_ptr_implIS2_S4_EIS3_INS1_5ValueINS0_6TensorEEEEEEPS2_OT_ = comdat any

$_ZNSt15__uniq_ptr_implIN10tensorflow7Variant14ValueInterfaceESt14default_deleteIS2_EEC2IS3_INS1_5ValueINS0_6TensorEEEEEEPS2_OT_ = comdat any

$_ZNSt5tupleIJPN10tensorflow7Variant14ValueInterfaceESt14default_deleteIS2_EEEC2IRS3_S4_INS1_5ValueINS0_6TensorEEEELb1EEEOT_OT0_ = comdat any

$_ZSt7forwardIRPN10tensorflow7Variant14ValueInterfaceEEOT_RNSt16remove_referenceIS5_E4typeE = comdat any

$_ZNSt11_Tuple_implILm0EJPN10tensorflow7Variant14ValueInterfaceESt14default_deleteIS2_EEEC2IRS3_JS4_INS1_5ValueINS0_6TensorEEEEEvEEOT_DpOT0_ = comdat any

$_ZNSt11_Tuple_implILm1EJSt14default_deleteIN10tensorflow7Variant14ValueInterfaceEEEEC2IS0_INS2_5ValueINS1_6TensorEEEEEEOT_ = comdat any

$_ZNSt10_Head_baseILm0EPN10tensorflow7Variant14ValueInterfaceELb0EEC2IRS3_EEOT_ = comdat any

$_ZNSt10_Head_baseILm1ESt14default_deleteIN10tensorflow7Variant14ValueInterfaceEELb1EEC2IS0_INS2_5ValueINS1_6TensorEEEEEEOT_ = comdat any

$_ZNSt14default_deleteIN10tensorflow7Variant14ValueInterfaceEEC2INS1_5ValueINS0_6TensorEEEvEERKS_IT_E = comdat any

$_ZNSt15__uniq_ptr_implIN10tensorflow7Variant5ValueINS0_6TensorEEESt14default_deleteIS4_EE7releaseEv = comdat any

$_ZN10tensorflow11TensorShapeCI2NS_15TensorShapeBaseIS0_EEENS_8DataTypeE = comdat any

$_ZN10tensorflow9TypeIndex4MakeINS_22VariantTensorDataProtoEEES0_v = comdat any

$_ZNK10tensorflow7Variant6TypeIdEv = comdat any

$_ZNK10tensorflow9TypeIndexneERKS0_ = comdat any

$_ZN10tensorflow7Variant8GetValueEv = comdat any

$_ZSt9addressofIN10tensorflow22VariantTensorDataProtoEEPT_RS2_ = comdat any

$_ZSt11__addressofIN10tensorflow22VariantTensorDataProtoEEPT_RS2_ = comdat any

$_ZN10tensorflow9TypeIndex4MakeIvEES0_v = comdat any

$_ZN10tensorflow9TypeIndexC2ERKS0_ = comdat any

$_ZN3tsl8internal17MakeCheckOpStringIPN10tensorflow7VariantEDnEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc = comdat any

$_ZN3tsl8internal22MakeCheckOpValueStringIPN10tensorflow7VariantEEEvPSoRKT_ = comdat any

$_ZNSt14_Function_base13_Base_managerIZN10tensorflow35variant_op_registry_fn_registration30UnaryVariantDecodeRegistrationINS1_6TensorEEC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlPNS1_7VariantEE_E9_M_createISG_EEvRSt9_Any_dataOT_St17integral_constantIbLb0EE = comdat any

$_ZZN10tensorflow35variant_op_registry_fn_registration30UnaryVariantDecodeRegistrationINS_6TensorEEC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENUlPNS_7VariantEE_C2EOSE_ = comdat any

$_ZN3tsl8internal21GetReferenceableValueIN10tensorflow8DataTypeEEERKT_S6_ = comdat any

$_ZN3tsl8internal12Check_EQImplIN10tensorflow8DataTypeES3_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc = comdat any

$_ZStlsIN3tsl8internal15LogMessageFatalEA2_cEOT_S5_RKT0_ = comdat any

$_ZStlsIN3tsl8internal15LogMessageFatalEA16_cEOT_S5_RKT0_ = comdat any

$_ZN3tsl8internal17MakeCheckOpStringIN10tensorflow8DataTypeES3_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc = comdat any

$_ZN3tsl8internal22MakeCheckOpValueStringIN10tensorflow8DataTypeEEEvPSoRKT_ = comdat any

$_ZStlsIN3tsl8internal15LogMessageFatalEA27_cEOT_S5_RKT0_ = comdat any

$_ZStlsIN3tsl8internal15LogMessageFatalEA7_cEOT_S5_RKT0_ = comdat any

$_ZStlsIN3tsl8internal15LogMessageFatalEPvEOT_S5_RKT0_ = comdat any

$_ZN3tsl8internal12Check_EQImplIilEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc = comdat any

$_ZStlsIN3tsl8internal15LogMessageFatalEA31_cEOT_S5_RKT0_ = comdat any

$_ZTIN10tensorflow23AbstractTensorInterfaceE = comdat any

$_ZTSN10tensorflow23AbstractTensorInterfaceE = comdat any

$_ZTVN10tensorflow23AbstractTensorInterfaceE = comdat any

$_ZTV16TF_ManagedBuffer = comdat any

$_ZTI16TF_ManagedBuffer = comdat any

$_ZTVN3tsl4core10RefCountedE = comdat any

$_ZTIN3tsl4core10RefCountedE = comdat any

$_ZTSN3tsl4core10RefCountedE = comdat any

$_ZTS16TF_ManagedBuffer = comdat any

$_ZTIZN10tensorflow35variant_op_registry_fn_registration30UnaryVariantDecodeRegistrationINS_6TensorEEC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlPNS_7VariantEE_ = comdat any

$_ZTSZN10tensorflow35variant_op_registry_fn_registration30UnaryVariantDecodeRegistrationINS_6TensorEEC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlPNS_7VariantEE_ = comdat any

$_ZTVN10tensorflow7Variant5ValueINS_6TensorEEE = comdat any

$_ZTIN10tensorflow7Variant5ValueINS_6TensorEEE = comdat any

$_ZTVN10tensorflow7Variant14ValueInterfaceE = comdat any

$_ZTIN10tensorflow7Variant14ValueInterfaceE = comdat any

$_ZTSN10tensorflow7Variant14ValueInterfaceE = comdat any

$_ZTIN10tensorflow6TensorE = comdat any

$_ZTSN10tensorflow6TensorE = comdat any

$_ZTSN10tensorflow7Variant5ValueINS_6TensorEEE = comdat any

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
@llvm.global_ctors = appending global [2 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_tf_tensor.cc, i8* null }, { i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_tensor.cc, i8* null }]
@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [42 x i8] c"basic_string::_M_construct null not valid\00", align 1
@.str.2.1 = private unnamed_addr constant [17 x i8] c"TensorFlow C Api\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"TF_AllocateTensor\00", align 1
@_ZTVN10tensorflow23AbstractTensorInterfaceE = linkonce_odr dso_local unnamed_addr constant { [14 x i8*] } { [14 x i8*] [i8* null, i8* bitcast ({ i8*, i8* }* @_ZTIN10tensorflow23AbstractTensorInterfaceE to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void (%"class.tensorflow::AbstractTensorInterface"*)* @_ZN10tensorflow23AbstractTensorInterfaceD2Ev to i8*), i8* bitcast (void (%"class.tensorflow::AbstractTensorInterface"*)* @_ZN10tensorflow23AbstractTensorInterfaceD0Ev to i8*)] }, comdat, align 8
@.str.6 = private unnamed_addr constant [16 x i8] c"ref_.load() > 0\00", align 1
@.str.1.2 = private unnamed_addr constant [98 x i8] c"/home/mushfiqur/Desktop/Github/tensorflow/third_party/xla/third_party/tsl/tsl/platform/refcount.h\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@_ZTV16TF_ManagedBuffer = linkonce_odr dso_local unnamed_addr constant { [11 x i8*] } { [11 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTI16TF_ManagedBuffer to i8*), i8* bitcast (void (%class.TF_ManagedBuffer*)* @_ZN16TF_ManagedBufferD2Ev to i8*), i8* bitcast (void (%class.TF_ManagedBuffer*)* @_ZN16TF_ManagedBufferD0Ev to i8*), i8* bitcast (void (%"class.tsl::core::RefCounted"*)* @_ZNK3tsl4core10RefCounted13NotifyDeletedEv to i8*), i8* bitcast (i64 (%class.TF_ManagedBuffer*)* @_ZNK16TF_ManagedBuffer4sizeEv to i8*), i8* bitcast (%"class.tensorflow::TensorBuffer"* (%class.TF_ManagedBuffer*)* @_ZN16TF_ManagedBuffer11root_bufferEv to i8*), i8* bitcast (void (%class.TF_ManagedBuffer*, %"class.tensorflow::AllocationDescription"*)* @_ZNK16TF_ManagedBuffer25FillAllocationDescriptionEPN10tensorflow21AllocationDescriptionE to i8*), i8* bitcast (i1 (%"class.tensorflow::TensorBuffer"*, i64*)* @_ZNK10tensorflow12TensorBuffer17GetAllocatedBytesEPm to i8*), i8* bitcast (i1 (%class.TF_ManagedBuffer*)* @_ZNK16TF_ManagedBuffer10OwnsMemoryEv to i8*), i8* bitcast (i32 (%"class.tensorflow::TensorBuffer"*)* @_ZNK10tensorflow12TensorBuffer13GetMemoryTypeEv to i8*)] }, comdat, align 8
@_ZTI16TF_ManagedBuffer = linkonce_odr dso_local constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @_ZTS16TF_ManagedBuffer, i32 0, i32 0), i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN10tensorflow12TensorBufferE to i8*) }, comdat, align 8
@_ZTVN3tsl4core10RefCountedE = linkonce_odr dso_local unnamed_addr constant { [5 x i8*] } { [5 x i8*] [i8* null, i8* bitcast ({ i8*, i8* }* @_ZTIN3tsl4core10RefCountedE to i8*), i8* bitcast (void (%"class.tsl::core::RefCounted"*)* @_ZN3tsl4core10RefCountedD2Ev to i8*), i8* bitcast (void (%"class.tsl::core::RefCounted"*)* @_ZN3tsl4core10RefCountedD0Ev to i8*), i8* bitcast (void (%"class.tsl::core::RefCounted"*)* @_ZNK3tsl4core10RefCounted13NotifyDeletedEv to i8*)] }, comdat, align 8
@.str.4 = private unnamed_addr constant [17 x i8] c"ref_.load() == 0\00", align 1
@_ZTIN3tsl4core10RefCountedE = linkonce_odr dso_local constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv117__class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @_ZTSN3tsl4core10RefCountedE, i32 0, i32 0) }, comdat, align 8
@_ZTSN3tsl4core10RefCountedE = linkonce_odr dso_local constant [24 x i8] c"N3tsl4core10RefCountedE\00", comdat, align 1
@_ZTS16TF_ManagedBuffer = linkonce_odr dso_local constant [19 x i8] c"16TF_ManagedBuffer\00", comdat, align 1
@.str.4.7 = private unnamed_addr constant [13 x i8] c"TF_NewTensor\00", align 1
@_ZN10tensorflowL22kDataTypesCanUseMemcpyE = internal constant %"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::Storage.4" { i64 8586788734 }, align 8
@.str.7 = private unnamed_addr constant [31 x i8] c"static_cast<uint32>(dt) < 256u\00", align 1
@.str.8 = private unnamed_addr constant [83 x i8] c"/home/mushfiqur/Desktop/Github/tensorflow/tensorflow/core/framework/tensor_shape.h\00", align 1
@.str.10 = private unnamed_addr constant [47 x i8] c"f == nullptr || dynamic_cast<To>(f) != nullptr\00", align 1
@.str.11 = private unnamed_addr constant [91 x i8] c"/home/mushfiqur/Desktop/Github/tensorflow/third_party/xla/xla/tsl/platform/default/casts.h\00", align 1
@__PRETTY_FUNCTION__._ZN10tensorflow9down_castIPNS_15TensorInterfaceENS_23AbstractTensorInterfaceEEET_PT0_ = private unnamed_addr constant [114 x i8] c"To tensorflow::down_cast(From *) [To = tensorflow::TensorInterface *, From = tensorflow::AbstractTensorInterface]\00", align 1
@_ZTVN10tensorflow12TensorBufferE = dso_local unnamed_addr constant { [11 x i8*] } { [11 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN10tensorflow12TensorBufferE to i8*), i8* bitcast (void (%"class.tensorflow::TensorBuffer"*)* @_ZN10tensorflow12TensorBufferD2Ev to i8*), i8* bitcast (void (%"class.tensorflow::TensorBuffer"*)* @_ZN10tensorflow12TensorBufferD0Ev to i8*), i8* bitcast (void (%"class.tsl::core::RefCounted"*)* @_ZNK3tsl4core10RefCounted13NotifyDeletedEv to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (i1 (%"class.tensorflow::TensorBuffer"*, i64*)* @_ZNK10tensorflow12TensorBuffer17GetAllocatedBytesEPm to i8*), i8* bitcast (i1 (%"class.tensorflow::TensorBuffer"*)* @_ZNK10tensorflow12TensorBuffer10OwnsMemoryEv to i8*), i8* bitcast (i32 (%"class.tensorflow::TensorBuffer"*)* @_ZNK10tensorflow12TensorBuffer13GetMemoryTypeEv to i8*)] }, align 8
@_ZTIN10tensorflow12TensorBufferE = dso_local constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @_ZTSN10tensorflow12TensorBufferE, i32 0, i32 0), i8* bitcast ({ i8*, i8* }* @_ZTIN3tsl4core10RefCountedE to i8*) }, align 8
@_ZTSN10tensorflow12TensorBufferE = dso_local constant [29 x i8] c"N10tensorflow12TensorBufferE\00", align 1
@.str.3.16 = private unnamed_addr constant [19 x i8] c"tensorflow::Tensor\00", align 1
@_ZN10tensorflowL38register_unary_variant_op_decoder_fn_0E = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@_ZTIZN10tensorflow35variant_op_registry_fn_registration30UnaryVariantDecodeRegistrationINS_6TensorEEC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlPNS_7VariantEE_ = linkonce_odr dso_local constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv117__class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([172 x i8], [172 x i8]* @_ZTSZN10tensorflow35variant_op_registry_fn_registration30UnaryVariantDecodeRegistrationINS_6TensorEEC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlPNS_7VariantEE_, i32 0, i32 0) }, comdat, align 8
@_ZTSZN10tensorflow35variant_op_registry_fn_registration30UnaryVariantDecodeRegistrationINS_6TensorEEC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlPNS_7VariantEE_ = linkonce_odr dso_local constant [172 x i8] c"ZN10tensorflow35variant_op_registry_fn_registration30UnaryVariantDecodeRegistrationINS_6TensorEEC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlPNS_7VariantEE_\00", comdat, align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"v != nullptr\00", align 1
@.str.17 = private unnamed_addr constant [90 x i8] c"/home/mushfiqur/Desktop/Github/tensorflow/tensorflow/core/framework/variant_op_registry.h\00", align 1
@_ZTVN10tensorflow7Variant5ValueINS_6TensorEEE = linkonce_odr dso_local unnamed_addr constant { [17 x i8*] } { [17 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN10tensorflow7Variant5ValueINS_6TensorEEE to i8*), i8* bitcast (void (%"class.tensorflow::TensorInterface"*)* @_ZN10tensorflow7Variant5ValueINS_6TensorEED2Ev to i8*), i8* bitcast (void (%"class.tensorflow::TensorInterface"*)* @_ZN10tensorflow7Variant5ValueINS_6TensorEED0Ev to i8*), i8* bitcast (void (%"class.std::basic_string_view"*, %"class.tensorflow::TensorInterface"*)* @_ZNK10tensorflow7Variant5ValueINS_6TensorEE6TypeIdEv to i8*), i8* bitcast (i8* (%"class.tensorflow::TensorInterface"*)* @_ZN10tensorflow7Variant5ValueINS_6TensorEE6RawPtrEv to i8*), i8* bitcast (i8* (%"class.tensorflow::TensorInterface"*)* @_ZNK10tensorflow7Variant5ValueINS_6TensorEE6RawPtrEv to i8*), i8* bitcast (void (%"class.std::unique_ptr"*, %"class.tensorflow::TensorInterface"*)* @_ZNK10tensorflow7Variant5ValueINS_6TensorEE5CloneEv to i8*), i8* bitcast (void (%"class.tensorflow::TensorInterface"*, %"class.tensorflow::AbstractTensorInterface"*)* @_ZNK10tensorflow7Variant5ValueINS_6TensorEE9CloneIntoEPNS0_14ValueInterfaceE to i8*), i8* bitcast (void (%"class.tensorflow::TensorInterface"*, %"class.tensorflow::AbstractTensorInterface"*)* @_ZN10tensorflow7Variant5ValueINS_6TensorEE10MoveAssignEPNS0_14ValueInterfaceE to i8*), i8* bitcast (void (%"class.tensorflow::TensorInterface"*, %"class.tensorflow::AbstractTensorInterface"*)* @_ZN10tensorflow7Variant5ValueINS_6TensorEE8MoveIntoEPNS0_14ValueInterfaceE to i8*), i8* bitcast (void (%"class.std::__cxx11::basic_string"*, %"class.tensorflow::TensorInterface"*)* @_ZNK10tensorflow7Variant5ValueINS_6TensorEE8TypeNameB5cxx11Ev to i8*), i8* bitcast (void (%"class.std::__cxx11::basic_string"*, %"class.tensorflow::TensorInterface"*)* @_ZNK10tensorflow7Variant5ValueINS_6TensorEE11DebugStringB5cxx11Ev to i8*), i8* bitcast (void (%"class.tensorflow::TensorInterface"*, %"class.tensorflow::VariantTensorData"*)* @_ZNK10tensorflow7Variant5ValueINS_6TensorEE6EncodeEPNS_17VariantTensorDataE to i8*), i8* bitcast (i1 (%"class.tensorflow::TensorInterface"*, %"class.tensorflow::VariantTensorData"*)* @_ZN10tensorflow7Variant5ValueINS_6TensorEE6DecodeENS_17VariantTensorDataE to i8*), i8* bitcast (void (%"class.tensorflow::TensorInterface"*, %"class.std::__cxx11::basic_string"*)* @_ZNK10tensorflow7Variant5ValueINS_6TensorEE6EncodeEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE to i8*), i8* bitcast (i1 (%"class.tensorflow::TensorInterface"*, %"class.std::__cxx11::basic_string"*)* @_ZN10tensorflow7Variant5ValueINS_6TensorEE6DecodeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE to i8*)] }, comdat, align 8
@_ZTIN10tensorflow7Variant5ValueINS_6TensorEEE = linkonce_odr dso_local constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @_ZTSN10tensorflow7Variant5ValueINS_6TensorEEE, i32 0, i32 0), i8* bitcast ({ i8*, i8* }* @_ZTIN10tensorflow7Variant14ValueInterfaceE to i8*) }, comdat, align 8
@.str.24 = private unnamed_addr constant [44 x i8] c"shape.num_elements() == other.NumElements()\00", align 1
@.str.25 = private unnamed_addr constant [77 x i8] c"/home/mushfiqur/Desktop/Github/tensorflow/tensorflow/core/framework/tensor.h\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"old_ref > 0\00", align 1
@.str.1.17 = private unnamed_addr constant [98 x i8] c"/home/mushfiqur/Desktop/Github/tensorflow/third_party/xla/third_party/tsl/tsl/platform/refcount.h\00", align 1
@.str.26 = private unnamed_addr constant [92 x i8] c"/home/mushfiqur/Desktop/Github/tensorflow/tensorflow/core/framework/variant_encode_decode.h\00", align 1
@.str.27 = private unnamed_addr constant [30 x i8] c"Check failed: buf != nullptr \00", align 1
@.str.23 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@_ZTVN10tensorflow7Variant14ValueInterfaceE = linkonce_odr dso_local unnamed_addr constant { [17 x i8*] } { [17 x i8*] [i8* null, i8* bitcast ({ i8*, i8* }* @_ZTIN10tensorflow7Variant14ValueInterfaceE to i8*), i8* bitcast (void (%"class.tensorflow::AbstractTensorInterface"*)* @_ZN10tensorflow7Variant14ValueInterfaceD2Ev to i8*), i8* bitcast (void (%"class.tensorflow::AbstractTensorInterface"*)* @_ZN10tensorflow7Variant14ValueInterfaceD0Ev to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*)] }, comdat, align 8
@_ZTIN10tensorflow7Variant14ValueInterfaceE = linkonce_odr dso_local constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv117__class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @_ZTSN10tensorflow7Variant14ValueInterfaceE, i32 0, i32 0) }, comdat, align 8
@_ZTSN10tensorflow7Variant14ValueInterfaceE = linkonce_odr dso_local constant [39 x i8] c"N10tensorflow7Variant14ValueInterfaceE\00", comdat, align 1
@.str.19 = private unnamed_addr constant [78 x i8] c"/home/mushfiqur/Desktop/Github/tensorflow/tensorflow/core/framework/variant.h\00", align 1
@.str.20 = private unnamed_addr constant [44 x i8] c"Check failed: TypeId() == memory->TypeId() \00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c" vs. \00", align 1
@_ZTIN10tensorflow6TensorE = linkonce_odr dso_local constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv117__class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @_ZTSN10tensorflow6TensorE, i32 0, i32 0) }, comdat, align 8
@_ZTSN10tensorflow6TensorE = linkonce_odr dso_local constant [22 x i8] c"N10tensorflow6TensorE\00", comdat, align 1
@_ZTSN10tensorflow7Variant5ValueINS_6TensorEEE = linkonce_odr dso_local constant [42 x i8] c"N10tensorflow7Variant5ValueINS_6TensorEEE\00", comdat, align 1
@_ZTIv = external dso_local constant i8*
@_ZTIN10tensorflow22VariantTensorDataProtoE = external dso_local constant i8*
@_ZStL8__ioinit.18 = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@.str.4.19 = private unnamed_addr constant [26 x i8] c"dtype() == expected_dtype\00", align 1
@.str.5.20 = private unnamed_addr constant [78 x i8] c"/home/mushfiqur/Desktop/Github/tensorflow/tensorflow/core/framework/tensor.cc\00", align 1
@.str.6.21 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.7.22 = private unnamed_addr constant [16 x i8] c" expected, got \00", align 1
@.str.8.23 = private unnamed_addr constant [27 x i8] c"Check failed: IsAligned() \00", align 1
@.str.9.24 = private unnamed_addr constant [7 x i8] c"ptr = \00", align 1
@.str.10.25 = private unnamed_addr constant [27 x i8] c"Aligned and single element\00", align 1
@.str.11.26 = private unnamed_addr constant [19 x i8] c"1 == NumElements()\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"Must have a one element tensor\00", align 1
@__dso_handle = hidden global i8* null, align 8, !dbg !0
@.str.13 = private unnamed_addr constant [67 x i8] c"/home/mushfiqur/tools/klee/runtime/Intrinsic/klee_div_zero_check.c\00", align 1
@.str.1.14 = private unnamed_addr constant [15 x i8] c"divide by zero\00", align 1
@.str.2.15 = private unnamed_addr constant [8 x i8] c"div.err\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"IGNORED\00", align 1
@.str.1.23 = private unnamed_addr constant [16 x i8] c"overshift error\00", align 1
@.str.2.24 = private unnamed_addr constant [14 x i8] c"overshift.err\00", align 1

@_ZN10tensorflow6TensorC1Ev = dso_local unnamed_addr alias void (%"class.tensorflow::Tensor"*), void (%"class.tensorflow::Tensor"*)* @_ZN10tensorflow6TensorC2Ev
@_ZN10tensorflow6TensorC1ENS_8DataTypeE = dso_local unnamed_addr alias void (%"class.tensorflow::Tensor"*, i32), void (%"class.tensorflow::Tensor"*, i32)* @_ZN10tensorflow6TensorC2ENS_8DataTypeE

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
  call void @_ZSt19__throw_logic_errorPKc(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.9, i64 0, i64 0)) #20
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
  call void @__assert_fail(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.11, i64 0, i64 0), i32 58, i8* getelementptr inbounds ([114 x i8], [114 x i8]* @__PRETTY_FUNCTION__._ZN10tensorflow9down_castIPNS_15TensorInterfaceENS_23AbstractTensorInterfaceEEET_PT0_, i64 0, i64 0)) #16
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

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow12TensorBufferD0Ev(%"class.tensorflow::TensorBuffer"* %this) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.tensorflow::TensorBuffer"*, align 8
  store %"class.tensorflow::TensorBuffer"* %this, %"class.tensorflow::TensorBuffer"** %this.addr, align 8
  %this1 = load %"class.tensorflow::TensorBuffer"*, %"class.tensorflow::TensorBuffer"** %this.addr, align 8
  call void @abort()
  unreachable
}

; Function Attrs: noinline optnone uwtable
define dso_local zeroext i1 @_ZNK10tensorflow12TensorBuffer17GetAllocatedBytesEPm(%"class.tensorflow::TensorBuffer"* %this, i64* %out_bytes) unnamed_addr #6 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %retval = alloca i1, align 1
  %this.addr = alloca %"class.tensorflow::TensorBuffer"*, align 8
  %out_bytes.addr = alloca i64*, align 8
  %allocation_description = alloca %"class.tensorflow::AllocationDescription", align 8
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store %"class.tensorflow::TensorBuffer"* %this, %"class.tensorflow::TensorBuffer"** %this.addr, align 8
  store i64* %out_bytes, i64** %out_bytes.addr, align 8
  %this1 = load %"class.tensorflow::TensorBuffer"*, %"class.tensorflow::TensorBuffer"** %this.addr, align 8
  call void @_ZN10tensorflow21AllocationDescriptionC2Ev(%"class.tensorflow::AllocationDescription"* %allocation_description)
  %0 = bitcast %"class.tensorflow::TensorBuffer"* %this1 to void (%"class.tensorflow::TensorBuffer"*, %"class.tensorflow::AllocationDescription"*)***
  %vtable = load void (%"class.tensorflow::TensorBuffer"*, %"class.tensorflow::AllocationDescription"*)**, void (%"class.tensorflow::TensorBuffer"*, %"class.tensorflow::AllocationDescription"*)*** %0, align 8
  %vfn = getelementptr inbounds void (%"class.tensorflow::TensorBuffer"*, %"class.tensorflow::AllocationDescription"*)*, void (%"class.tensorflow::TensorBuffer"*, %"class.tensorflow::AllocationDescription"*)** %vtable, i64 5
  %1 = load void (%"class.tensorflow::TensorBuffer"*, %"class.tensorflow::AllocationDescription"*)*, void (%"class.tensorflow::TensorBuffer"*, %"class.tensorflow::AllocationDescription"*)** %vfn, align 8
  invoke void %1(%"class.tensorflow::TensorBuffer"* %this1, %"class.tensorflow::AllocationDescription"* %allocation_description)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %call = invoke i64 @_ZNK10tensorflow21AllocationDescription15allocated_bytesEv(%"class.tensorflow::AllocationDescription"* %allocation_description)
          to label %invoke.cont2 unwind label %lpad

invoke.cont2:                                     ; preds = %invoke.cont
  %cmp = icmp sgt i64 %call, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %invoke.cont2
  %call4 = invoke i64 @_ZNK10tensorflow21AllocationDescription15allocated_bytesEv(%"class.tensorflow::AllocationDescription"* %allocation_description)
          to label %invoke.cont3 unwind label %lpad

invoke.cont3:                                     ; preds = %if.then
  %2 = load i64*, i64** %out_bytes.addr, align 8
  store i64 %call4, i64* %2, align 8
  store i1 true, i1* %retval, align 1
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

lpad:                                             ; preds = %if.then, %invoke.cont, %entry
  %3 = landingpad { i8*, i32 }
          cleanup
  %4 = extractvalue { i8*, i32 } %3, 0
  store i8* %4, i8** %exn.slot, align 8
  %5 = extractvalue { i8*, i32 } %3, 1
  store i32 %5, i32* %ehselector.slot, align 4
  call void @_ZN10tensorflow21AllocationDescriptionD1Ev(%"class.tensorflow::AllocationDescription"* %allocation_description) #11
  br label %eh.resume

if.else:                                          ; preds = %invoke.cont2
  store i1 false, i1* %retval, align 1
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %invoke.cont3
  call void @_ZN10tensorflow21AllocationDescriptionD1Ev(%"class.tensorflow::AllocationDescription"* %allocation_description) #11
  %6 = load i1, i1* %retval, align 1
  ret i1 %6

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val5 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val5
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local zeroext i1 @_ZNK10tensorflow12TensorBuffer10OwnsMemoryEv(%"class.tensorflow::TensorBuffer"* %this) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.tensorflow::TensorBuffer"*, align 8
  store %"class.tensorflow::TensorBuffer"* %this, %"class.tensorflow::TensorBuffer"** %this.addr, align 8
  %this1 = load %"class.tensorflow::TensorBuffer"*, %"class.tensorflow::TensorBuffer"** %this.addr, align 8
  ret i1 true
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow21AllocationDescriptionC2Ev(%"class.tensorflow::AllocationDescription"* %this) unnamed_addr #6 comdat align 2 {
entry:
  %this.addr = alloca %"class.tensorflow::AllocationDescription"*, align 8
  store %"class.tensorflow::AllocationDescription"* %this, %"class.tensorflow::AllocationDescription"** %this.addr, align 8
  %this1 = load %"class.tensorflow::AllocationDescription"*, %"class.tensorflow::AllocationDescription"** %this.addr, align 8
  call void @_ZN10tensorflow21AllocationDescriptionC2EPN6google8protobuf5ArenaE(%"class.tensorflow::AllocationDescription"* %this1, %"class.google::protobuf::Arena"* null)
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i64 @_ZNK10tensorflow21AllocationDescription15allocated_bytesEv(%"class.tensorflow::AllocationDescription"* %this) #6 comdat align 2 {
entry:
  %this.addr = alloca %"class.tensorflow::AllocationDescription"*, align 8
  store %"class.tensorflow::AllocationDescription"* %this, %"class.tensorflow::AllocationDescription"** %this.addr, align 8
  %this1 = load %"class.tensorflow::AllocationDescription"*, %"class.tensorflow::AllocationDescription"** %this.addr, align 8
  %call = call i64 @_ZNK10tensorflow21AllocationDescription25_internal_allocated_bytesEv(%"class.tensorflow::AllocationDescription"* %this1)
  ret i64 %call
}

; Function Attrs: nounwind
declare dso_local void @_ZN10tensorflow21AllocationDescriptionD1Ev(%"class.tensorflow::AllocationDescription"*) unnamed_addr #3

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i64 @_ZNK10tensorflow21AllocationDescription25_internal_allocated_bytesEv(%"class.tensorflow::AllocationDescription"* %this) #6 comdat align 2 {
entry:
  %.addr.i = alloca i8*, align 8
  %this.addr = alloca %"class.tensorflow::AllocationDescription"*, align 8
  store %"class.tensorflow::AllocationDescription"* %this, %"class.tensorflow::AllocationDescription"** %this.addr, align 8
  %this1 = load %"class.tensorflow::AllocationDescription"*, %"class.tensorflow::AllocationDescription"** %this.addr, align 8
  %0 = getelementptr inbounds %"class.tensorflow::AllocationDescription", %"class.tensorflow::AllocationDescription"* %this1, i32 0, i32 1
  %_impl_ = bitcast %union.anon.6* %0 to %"struct.tensorflow::AllocationDescription::Impl_"*
  %1 = bitcast %"struct.tensorflow::AllocationDescription::Impl_"* %_impl_ to i8*
  store i8* %1, i8** %.addr.i, align 8
  %2 = getelementptr inbounds %"class.tensorflow::AllocationDescription", %"class.tensorflow::AllocationDescription"* %this1, i32 0, i32 1
  %_impl_2 = bitcast %union.anon.6* %2 to %"struct.tensorflow::AllocationDescription::Impl_"*
  %allocated_bytes_ = getelementptr inbounds %"struct.tensorflow::AllocationDescription::Impl_", %"struct.tensorflow::AllocationDescription::Impl_"* %_impl_2, i32 0, i32 2
  %3 = load i64, i64* %allocated_bytes_, align 8
  ret i64 %3
}

declare dso_local void @_ZN10tensorflow21AllocationDescriptionC2EPN6google8protobuf5ArenaE(%"class.tensorflow::AllocationDescription"*, %"class.google::protobuf::Arena"*) unnamed_addr #4

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_tensor.cc() #10 section ".text.startup" {
entry:
  call void @__cxx_global_var_init.15()
  call void @__cxx_global_var_init.2()
  ret void
}

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init.15() #10 section ".text.startup" {
entry:
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* @_ZStL8__ioinit.18)
  %0 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit.18, i32 0, i32 0), i8* bitcast (i8** @__dso_handle to i8*)) #11
  ret void
}

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init.2() #10 section ".text.startup" personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %ref.tmp1 = alloca %"class.std::ios_base::Init", align 1
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  call void @_ZNSaIcEC1Ev(%"class.std::ios_base::Init"* %ref.tmp1) #11
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(%"class.std::__cxx11::basic_string"* %ref.tmp, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3.16, i64 0, i64 0), %"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1) %ref.tmp1)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  invoke void @_ZN10tensorflow35variant_op_registry_fn_registration30UnaryVariantDecodeRegistrationINS_6TensorEEC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.std::ios_base::Init"* @_ZN10tensorflowL38register_unary_variant_op_decoder_fn_0E, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont3 unwind label %lpad2

invoke.cont3:                                     ; preds = %invoke.cont
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %ref.tmp) #11
  call void @_ZNSaIcED1Ev(%"class.std::ios_base::Init"* %ref.tmp1) #11
  ret void

lpad:                                             ; preds = %entry
  %0 = landingpad { i8*, i32 }
          cleanup
  %1 = extractvalue { i8*, i32 } %0, 0
  store i8* %1, i8** %exn.slot, align 8
  %2 = extractvalue { i8*, i32 } %0, 1
  store i32 %2, i32* %ehselector.slot, align 4
  br label %ehcleanup

lpad2:                                            ; preds = %invoke.cont
  %3 = landingpad { i8*, i32 }
          cleanup
  %4 = extractvalue { i8*, i32 } %3, 0
  store i8* %4, i8** %exn.slot, align 8
  %5 = extractvalue { i8*, i32 } %3, 1
  store i32 %5, i32* %ehselector.slot, align 4
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %ref.tmp) #11
  br label %ehcleanup

ehcleanup:                                        ; preds = %lpad2, %lpad
  call void @_ZNSaIcED1Ev(%"class.std::ios_base::Init"* %ref.tmp1) #11
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val4 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val4
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow35variant_op_registry_fn_registration30UnaryVariantDecodeRegistrationINS_6TensorEEC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.std::ios_base::Init"* %this, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %type_name) unnamed_addr #6 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::ios_base::Init"*, align 8
  %type_name.addr = alloca %"class.std::__cxx11::basic_string"*, align 8
  %ref.tmp = alloca %"class.std::function.41", align 8
  %ref.tmp2 = alloca %class.anon, align 8
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  store %"class.std::ios_base::Init"* %this, %"class.std::ios_base::Init"** %this.addr, align 8
  store %"class.std::__cxx11::basic_string"* %type_name, %"class.std::__cxx11::basic_string"** %type_name.addr, align 8
  %this1 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %this.addr, align 8
  %call = call %"class.tensorflow::UnaryVariantOpRegistry"* @_ZN10tensorflow22UnaryVariantOpRegistry6GlobalEv()
  %0 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %type_name.addr, align 8
  %1 = getelementptr inbounds %class.anon, %class.anon* %ref.tmp2, i32 0, i32 0
  %2 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %type_name.addr, align 8
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_(%"class.std::__cxx11::basic_string"* %1, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %2)
  invoke void @_ZNSt8functionIFbPN10tensorflow7VariantEEEC2IZNS0_35variant_op_registry_fn_registration30UnaryVariantDecodeRegistrationINS0_6TensorEEC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlS2_E_vEEOT_(%"class.std::function.41"* %ref.tmp, %class.anon* nonnull align 8 dereferenceable(32) %ref.tmp2)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  invoke void @_ZN10tensorflow22UnaryVariantOpRegistry16RegisterDecodeFnERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt8functionIFbPNS_7VariantEEE(%"class.tensorflow::UnaryVariantOpRegistry"* %call, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %0, %"class.std::function.41"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont4 unwind label %lpad3

invoke.cont4:                                     ; preds = %invoke.cont
  call void @_ZNSt8functionIFbPN10tensorflow7VariantEEED2Ev(%"class.std::function.41"* %ref.tmp) #11
  call void @_ZZN10tensorflow35variant_op_registry_fn_registration30UnaryVariantDecodeRegistrationINS_6TensorEEC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENUlPNS_7VariantEE_D2Ev(%class.anon* %ref.tmp2) #11
  ret void

lpad:                                             ; preds = %entry
  %3 = landingpad { i8*, i32 }
          cleanup
  %4 = extractvalue { i8*, i32 } %3, 0
  store i8* %4, i8** %exn.slot, align 8
  %5 = extractvalue { i8*, i32 } %3, 1
  store i32 %5, i32* %ehselector.slot, align 4
  br label %ehcleanup

lpad3:                                            ; preds = %invoke.cont
  %6 = landingpad { i8*, i32 }
          cleanup
  %7 = extractvalue { i8*, i32 } %6, 0
  store i8* %7, i8** %exn.slot, align 8
  %8 = extractvalue { i8*, i32 } %6, 1
  store i32 %8, i32* %ehselector.slot, align 4
  call void @_ZNSt8functionIFbPN10tensorflow7VariantEEED2Ev(%"class.std::function.41"* %ref.tmp) #11
  br label %ehcleanup

ehcleanup:                                        ; preds = %lpad3, %lpad
  call void @_ZZN10tensorflow35variant_op_registry_fn_registration30UnaryVariantDecodeRegistrationINS_6TensorEEC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENUlPNS_7VariantEE_D2Ev(%class.anon* %ref.tmp2) #11
  br label %eh.resume

eh.resume:                                        ; preds = %ehcleanup
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val5 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val5
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %"class.tensorflow::UnaryVariantOpRegistry"* @_ZN10tensorflow22UnaryVariantOpRegistry6GlobalEv() #6 comdat align 2 {
entry:
  %call = call %"class.tensorflow::UnaryVariantOpRegistry"* @_ZN10tensorflow28UnaryVariantOpRegistryGlobalEv()
  ret %"class.tensorflow::UnaryVariantOpRegistry"* %call
}

declare dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_(%"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32)) unnamed_addr #4

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt8functionIFbPN10tensorflow7VariantEEEC2IZNS0_35variant_op_registry_fn_registration30UnaryVariantDecodeRegistrationINS0_6TensorEEC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlS2_E_vEEOT_(%"class.std::function.41"* %this, %class.anon* nonnull align 8 dereferenceable(32) %__f) unnamed_addr #6 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::function.41"*, align 8
  %__f.addr = alloca %class.anon*, align 8
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  store %"class.std::function.41"* %this, %"class.std::function.41"** %this.addr, align 8
  store %class.anon* %__f, %class.anon** %__f.addr, align 8
  %this1 = load %"class.std::function.41"*, %"class.std::function.41"** %this.addr, align 8
  %0 = bitcast %"class.std::function.41"* %this1 to %"class.std::ios_base::Init"*
  %1 = bitcast %"class.std::function.41"* %this1 to %"class.std::_Function_base"*
  %2 = bitcast %"class.std::_Function_base"* %1 to i8*
  %3 = getelementptr inbounds i8, i8* %2, i64 0
  %4 = call i8* @memset(i8* %3, i32 0, i64 24)
  call void @_ZNSt14_Function_baseC2Ev(%"class.std::_Function_base"* %1) #11
  %_M_invoker = getelementptr inbounds %"class.std::function.41", %"class.std::function.41"* %this1, i32 0, i32 1
  store i1 (%"union.std::_Any_data"*, %"class.tensorflow::Variant"**)* null, i1 (%"union.std::_Any_data"*, %"class.tensorflow::Variant"**)** %_M_invoker, align 8
  %5 = load %class.anon*, %class.anon** %__f.addr, align 8
  %call = invoke zeroext i1 @_ZNSt14_Function_base13_Base_managerIZN10tensorflow35variant_op_registry_fn_registration30UnaryVariantDecodeRegistrationINS1_6TensorEEC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlPNS1_7VariantEE_E21_M_not_empty_functionISG_EEbRKT_(%class.anon* nonnull align 8 dereferenceable(32) %5)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %invoke.cont
  %6 = bitcast %"class.std::function.41"* %this1 to %"class.std::_Function_base"*
  %_M_functor = getelementptr inbounds %"class.std::_Function_base", %"class.std::_Function_base"* %6, i32 0, i32 0
  %7 = load %class.anon*, %class.anon** %__f.addr, align 8
  %call2 = call nonnull align 8 dereferenceable(32) %class.anon* @_ZSt7forwardIZN10tensorflow35variant_op_registry_fn_registration30UnaryVariantDecodeRegistrationINS0_6TensorEEC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlPNS0_7VariantEE_EOT_RNSt16remove_referenceISG_E4typeE(%class.anon* nonnull align 8 dereferenceable(32) %7) #11
  invoke void @_ZNSt14_Function_base13_Base_managerIZN10tensorflow35variant_op_registry_fn_registration30UnaryVariantDecodeRegistrationINS1_6TensorEEC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlPNS1_7VariantEE_E15_M_init_functorISG_EEvRSt9_Any_dataOT_(%"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %_M_functor, %class.anon* nonnull align 8 dereferenceable(32) %call2)
          to label %invoke.cont3 unwind label %lpad

invoke.cont3:                                     ; preds = %if.then
  %_M_invoker4 = getelementptr inbounds %"class.std::function.41", %"class.std::function.41"* %this1, i32 0, i32 1
  store i1 (%"union.std::_Any_data"*, %"class.tensorflow::Variant"**)* @_ZNSt17_Function_handlerIFbPN10tensorflow7VariantEEZNS0_35variant_op_registry_fn_registration30UnaryVariantDecodeRegistrationINS0_6TensorEEC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_, i1 (%"union.std::_Any_data"*, %"class.tensorflow::Variant"**)** %_M_invoker4, align 8
  %8 = bitcast %"class.std::function.41"* %this1 to %"class.std::_Function_base"*
  %_M_manager = getelementptr inbounds %"class.std::_Function_base", %"class.std::_Function_base"* %8, i32 0, i32 1
  store i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* @_ZNSt17_Function_handlerIFbPN10tensorflow7VariantEEZNS0_35variant_op_registry_fn_registration30UnaryVariantDecodeRegistrationINS0_6TensorEEC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlS2_E_E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %_M_manager, align 8
  br label %if.end

lpad:                                             ; preds = %if.then, %entry
  %9 = landingpad { i8*, i32 }
          cleanup
  %10 = extractvalue { i8*, i32 } %9, 0
  store i8* %10, i8** %exn.slot, align 8
  %11 = extractvalue { i8*, i32 } %9, 1
  store i32 %11, i32* %ehselector.slot, align 4
  %12 = bitcast %"class.std::function.41"* %this1 to %"class.std::_Function_base"*
  call void @_ZNSt14_Function_baseD2Ev(%"class.std::_Function_base"* %12) #11
  br label %eh.resume

if.end:                                           ; preds = %invoke.cont3, %invoke.cont
  ret void

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val5 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val5
}

declare dso_local void @_ZN10tensorflow22UnaryVariantOpRegistry16RegisterDecodeFnERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt8functionIFbPNS_7VariantEEE(%"class.tensorflow::UnaryVariantOpRegistry"*, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32), %"class.std::function.41"* nonnull align 8 dereferenceable(32)) #4

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt8functionIFbPN10tensorflow7VariantEEED2Ev(%"class.std::function.41"* %this) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::function.41"*, align 8
  store %"class.std::function.41"* %this, %"class.std::function.41"** %this.addr, align 8
  %this1 = load %"class.std::function.41"*, %"class.std::function.41"** %this.addr, align 8
  %0 = bitcast %"class.std::function.41"* %this1 to %"class.std::_Function_base"*
  call void @_ZNSt14_Function_baseD2Ev(%"class.std::_Function_base"* %0) #11
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZZN10tensorflow35variant_op_registry_fn_registration30UnaryVariantDecodeRegistrationINS_6TensorEEC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENUlPNS_7VariantEE_D2Ev(%class.anon* %this) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %class.anon*, align 8
  store %class.anon* %this, %class.anon** %this.addr, align 8
  %this1 = load %class.anon*, %class.anon** %this.addr, align 8
  %0 = getelementptr inbounds %class.anon, %class.anon* %this1, i32 0, i32 0
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %0) #11
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt14_Function_baseD2Ev(%"class.std::_Function_base"* %this) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::_Function_base"*, align 8
  store %"class.std::_Function_base"* %this, %"class.std::_Function_base"** %this.addr, align 8
  %this1 = load %"class.std::_Function_base"*, %"class.std::_Function_base"** %this.addr, align 8
  %_M_manager = getelementptr inbounds %"class.std::_Function_base", %"class.std::_Function_base"* %this1, i32 0, i32 1
  %0 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %_M_manager, align 8
  %tobool = icmp ne i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %_M_manager2 = getelementptr inbounds %"class.std::_Function_base", %"class.std::_Function_base"* %this1, i32 0, i32 1
  %1 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %_M_manager2, align 8
  %_M_functor = getelementptr inbounds %"class.std::_Function_base", %"class.std::_Function_base"* %this1, i32 0, i32 0
  %_M_functor3 = getelementptr inbounds %"class.std::_Function_base", %"class.std::_Function_base"* %this1, i32 0, i32 0
  %call = invoke zeroext i1 %1(%"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %_M_functor, %"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %_M_functor3, i32 3)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %if.then
  br label %if.end

if.end:                                           ; preds = %invoke.cont, %entry
  ret void

terminate.lpad:                                   ; preds = %if.then
  %2 = landingpad { i8*, i32 }
          catch i8* null
  %3 = extractvalue { i8*, i32 } %2, 0
  call void @__clang_call_terminate(i8* %3) #16
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt14_Function_baseC2Ev(%"class.std::_Function_base"* %this) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::_Function_base"*, align 8
  store %"class.std::_Function_base"* %this, %"class.std::_Function_base"** %this.addr, align 8
  %this1 = load %"class.std::_Function_base"*, %"class.std::_Function_base"** %this.addr, align 8
  %_M_functor = getelementptr inbounds %"class.std::_Function_base", %"class.std::_Function_base"* %this1, i32 0, i32 0
  %_M_unused = bitcast %"union.std::_Any_data"* %_M_functor to %"union.std::_Nocopy_types"*
  %_M_object = bitcast %"union.std::_Nocopy_types"* %_M_unused to i8**
  store i8* null, i8** %_M_object, align 8
  %_M_manager = getelementptr inbounds %"class.std::_Function_base", %"class.std::_Function_base"* %this1, i32 0, i32 1
  store i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* null, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %_M_manager, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local zeroext i1 @_ZNSt14_Function_base13_Base_managerIZN10tensorflow35variant_op_registry_fn_registration30UnaryVariantDecodeRegistrationINS1_6TensorEEC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlPNS1_7VariantEE_E21_M_not_empty_functionISG_EEbRKT_(%class.anon* nonnull align 8 dereferenceable(32) %0) #0 comdat align 2 {
entry:
  %.addr = alloca %class.anon*, align 8
  store %class.anon* %0, %class.anon** %.addr, align 8
  ret i1 true
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(32) %class.anon* @_ZSt7forwardIZN10tensorflow35variant_op_registry_fn_registration30UnaryVariantDecodeRegistrationINS0_6TensorEEC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlPNS0_7VariantEE_EOT_RNSt16remove_referenceISG_E4typeE(%class.anon* nonnull align 8 dereferenceable(32) %__t) #0 comdat {
entry:
  %__t.addr = alloca %class.anon*, align 8
  store %class.anon* %__t, %class.anon** %__t.addr, align 8
  %0 = load %class.anon*, %class.anon** %__t.addr, align 8
  ret %class.anon* %0
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt14_Function_base13_Base_managerIZN10tensorflow35variant_op_registry_fn_registration30UnaryVariantDecodeRegistrationINS1_6TensorEEC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlPNS1_7VariantEE_E15_M_init_functorISG_EEvRSt9_Any_dataOT_(%"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %__functor, %class.anon* nonnull align 8 dereferenceable(32) %__f) #6 comdat align 2 {
entry:
  %__functor.addr = alloca %"union.std::_Any_data"*, align 8
  %__f.addr = alloca %class.anon*, align 8
  %agg.tmp = alloca %"class.std::ios_base::Init", align 1
  store %"union.std::_Any_data"* %__functor, %"union.std::_Any_data"** %__functor.addr, align 8
  store %class.anon* %__f, %class.anon** %__f.addr, align 8
  %0 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %__functor.addr, align 8
  %1 = load %class.anon*, %class.anon** %__f.addr, align 8
  %call = call nonnull align 8 dereferenceable(32) %class.anon* @_ZSt7forwardIZN10tensorflow35variant_op_registry_fn_registration30UnaryVariantDecodeRegistrationINS0_6TensorEEC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlPNS0_7VariantEE_EOT_RNSt16remove_referenceISG_E4typeE(%class.anon* nonnull align 8 dereferenceable(32) %1) #11
  call void @_ZNSt14_Function_base13_Base_managerIZN10tensorflow35variant_op_registry_fn_registration30UnaryVariantDecodeRegistrationINS1_6TensorEEC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlPNS1_7VariantEE_E9_M_createISG_EEvRSt9_Any_dataOT_St17integral_constantIbLb0EE(%"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %0, %class.anon* nonnull align 8 dereferenceable(32) %call)
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local zeroext i1 @_ZNSt17_Function_handlerIFbPN10tensorflow7VariantEEZNS0_35variant_op_registry_fn_registration30UnaryVariantDecodeRegistrationINS0_6TensorEEC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_(%"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %__functor, %"class.tensorflow::Variant"** nonnull align 8 dereferenceable(8) %__args) #6 comdat align 2 {
entry:
  %__functor.addr = alloca %"union.std::_Any_data"*, align 8
  %__args.addr = alloca %"class.tensorflow::Variant"**, align 8
  store %"union.std::_Any_data"* %__functor, %"union.std::_Any_data"** %__functor.addr, align 8
  store %"class.tensorflow::Variant"** %__args, %"class.tensorflow::Variant"*** %__args.addr, align 8
  %0 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %__functor.addr, align 8
  %call = call %class.anon* @_ZNSt14_Function_base13_Base_managerIZN10tensorflow35variant_op_registry_fn_registration30UnaryVariantDecodeRegistrationINS1_6TensorEEC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlPNS1_7VariantEE_E14_M_get_pointerERKSt9_Any_data(%"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %0)
  %1 = load %"class.tensorflow::Variant"**, %"class.tensorflow::Variant"*** %__args.addr, align 8
  %call1 = call nonnull align 8 dereferenceable(8) %"class.tensorflow::Variant"** @_ZSt7forwardIPN10tensorflow7VariantEEOT_RNSt16remove_referenceIS3_E4typeE(%"class.tensorflow::Variant"** nonnull align 8 dereferenceable(8) %1) #11
  %call2 = call zeroext i1 @_ZSt10__invoke_rIbRZN10tensorflow35variant_op_registry_fn_registration30UnaryVariantDecodeRegistrationINS0_6TensorEEC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlPNS0_7VariantEE_JSE_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESI_E4typeEOSJ_DpOSK_(%class.anon* nonnull align 8 dereferenceable(32) %call, %"class.tensorflow::Variant"** nonnull align 8 dereferenceable(8) %call1)
  ret i1 %call2
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local zeroext i1 @_ZNSt17_Function_handlerIFbPN10tensorflow7VariantEEZNS0_35variant_op_registry_fn_registration30UnaryVariantDecodeRegistrationINS0_6TensorEEC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlS2_E_E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation(%"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %__dest, %"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %__source, i32 %__op) #6 comdat align 2 {
entry:
  %__dest.addr = alloca %"union.std::_Any_data"*, align 8
  %__source.addr = alloca %"union.std::_Any_data"*, align 8
  %__op.addr = alloca i32, align 4
  store %"union.std::_Any_data"* %__dest, %"union.std::_Any_data"** %__dest.addr, align 8
  store %"union.std::_Any_data"* %__source, %"union.std::_Any_data"** %__source.addr, align 8
  store i32 %__op, i32* %__op.addr, align 4
  %0 = load i32, i32* %__op.addr, align 4
  switch i32 %0, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry
  %1 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %__dest.addr, align 8
  %call = call nonnull align 8 dereferenceable(8) %"class.std::type_info"** @_ZNSt9_Any_data9_M_accessIPKSt9type_infoEERT_v(%"union.std::_Any_data"* %1)
  store %"class.std::type_info"* bitcast ({ i8*, i8* }* @_ZTIZN10tensorflow35variant_op_registry_fn_registration30UnaryVariantDecodeRegistrationINS_6TensorEEC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlPNS_7VariantEE_ to %"class.std::type_info"*), %"class.std::type_info"** %call, align 8
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %2 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %__source.addr, align 8
  %call2 = call %class.anon* @_ZNSt14_Function_base13_Base_managerIZN10tensorflow35variant_op_registry_fn_registration30UnaryVariantDecodeRegistrationINS1_6TensorEEC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlPNS1_7VariantEE_E14_M_get_pointerERKSt9_Any_data(%"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %2)
  %3 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %__dest.addr, align 8
  %call3 = call nonnull align 8 dereferenceable(8) %class.anon** @_ZNSt9_Any_data9_M_accessIPZN10tensorflow35variant_op_registry_fn_registration30UnaryVariantDecodeRegistrationINS1_6TensorEEC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlPNS1_7VariantEE_EERT_v(%"union.std::_Any_data"* %3)
  store %class.anon* %call2, %class.anon** %call3, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %4 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %__dest.addr, align 8
  %5 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %__source.addr, align 8
  %6 = load i32, i32* %__op.addr, align 4
  %call4 = call zeroext i1 @_ZNSt14_Function_base13_Base_managerIZN10tensorflow35variant_op_registry_fn_registration30UnaryVariantDecodeRegistrationINS1_6TensorEEC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlPNS1_7VariantEE_E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation(%"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %4, %"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %5, i32 %6)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb1, %sw.bb
  ret i1 false
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) %"class.std::type_info"** @_ZNSt9_Any_data9_M_accessIPKSt9type_infoEERT_v(%"union.std::_Any_data"* %this) #0 comdat align 2 {
entry:
  %this.addr = alloca %"union.std::_Any_data"*, align 8
  store %"union.std::_Any_data"* %this, %"union.std::_Any_data"** %this.addr, align 8
  %this1 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %this.addr, align 8
  %call = call i8* @_ZNSt9_Any_data9_M_accessEv(%"union.std::_Any_data"* %this1)
  %0 = bitcast i8* %call to %"class.std::type_info"**
  ret %"class.std::type_info"** %0
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %class.anon* @_ZNSt14_Function_base13_Base_managerIZN10tensorflow35variant_op_registry_fn_registration30UnaryVariantDecodeRegistrationINS1_6TensorEEC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlPNS1_7VariantEE_E14_M_get_pointerERKSt9_Any_data(%"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %__source) #6 comdat align 2 {
entry:
  %__source.addr = alloca %"union.std::_Any_data"*, align 8
  store %"union.std::_Any_data"* %__source, %"union.std::_Any_data"** %__source.addr, align 8
  %0 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %__source.addr, align 8
  %call = call nonnull align 8 dereferenceable(8) %class.anon** @_ZNKSt9_Any_data9_M_accessIPZN10tensorflow35variant_op_registry_fn_registration30UnaryVariantDecodeRegistrationINS1_6TensorEEC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlPNS1_7VariantEE_EERKT_v(%"union.std::_Any_data"* %0)
  %1 = load %class.anon*, %class.anon** %call, align 8
  ret %class.anon* %1
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) %class.anon** @_ZNSt9_Any_data9_M_accessIPZN10tensorflow35variant_op_registry_fn_registration30UnaryVariantDecodeRegistrationINS1_6TensorEEC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlPNS1_7VariantEE_EERT_v(%"union.std::_Any_data"* %this) #6 comdat align 2 {
entry:
  %this.addr = alloca %"union.std::_Any_data"*, align 8
  store %"union.std::_Any_data"* %this, %"union.std::_Any_data"** %this.addr, align 8
  %this1 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %this.addr, align 8
  %call = call i8* @_ZNSt9_Any_data9_M_accessEv(%"union.std::_Any_data"* %this1)
  %0 = bitcast i8* %call to %class.anon**
  ret %class.anon** %0
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local zeroext i1 @_ZNSt14_Function_base13_Base_managerIZN10tensorflow35variant_op_registry_fn_registration30UnaryVariantDecodeRegistrationINS1_6TensorEEC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlPNS1_7VariantEE_E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation(%"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %__dest, %"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %__source, i32 %__op) #6 comdat align 2 {
entry:
  %__dest.addr = alloca %"union.std::_Any_data"*, align 8
  %__source.addr = alloca %"union.std::_Any_data"*, align 8
  %__op.addr = alloca i32, align 4
  %agg.tmp = alloca %"class.std::ios_base::Init", align 1
  store %"union.std::_Any_data"* %__dest, %"union.std::_Any_data"** %__dest.addr, align 8
  store %"union.std::_Any_data"* %__source, %"union.std::_Any_data"** %__source.addr, align 8
  store i32 %__op, i32* %__op.addr, align 4
  %0 = load i32, i32* %__op.addr, align 4
  switch i32 %0, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb4
    i32 3, label %sw.bb6
  ]

sw.bb:                                            ; preds = %entry
  %1 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %__dest.addr, align 8
  %call = call nonnull align 8 dereferenceable(8) %"class.std::type_info"** @_ZNSt9_Any_data9_M_accessIPKSt9type_infoEERT_v(%"union.std::_Any_data"* %1)
  store %"class.std::type_info"* bitcast ({ i8*, i8* }* @_ZTIZN10tensorflow35variant_op_registry_fn_registration30UnaryVariantDecodeRegistrationINS_6TensorEEC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlPNS_7VariantEE_ to %"class.std::type_info"*), %"class.std::type_info"** %call, align 8
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %2 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %__source.addr, align 8
  %call2 = call %class.anon* @_ZNSt14_Function_base13_Base_managerIZN10tensorflow35variant_op_registry_fn_registration30UnaryVariantDecodeRegistrationINS1_6TensorEEC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlPNS1_7VariantEE_E14_M_get_pointerERKSt9_Any_data(%"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %2)
  %3 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %__dest.addr, align 8
  %call3 = call nonnull align 8 dereferenceable(8) %class.anon** @_ZNSt9_Any_data9_M_accessIPZN10tensorflow35variant_op_registry_fn_registration30UnaryVariantDecodeRegistrationINS1_6TensorEEC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlPNS1_7VariantEE_EERT_v(%"union.std::_Any_data"* %3)
  store %class.anon* %call2, %class.anon** %call3, align 8
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %4 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %__dest.addr, align 8
  %5 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %__source.addr, align 8
  %call5 = call %class.anon* @_ZNSt14_Function_base13_Base_managerIZN10tensorflow35variant_op_registry_fn_registration30UnaryVariantDecodeRegistrationINS1_6TensorEEC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlPNS1_7VariantEE_E14_M_get_pointerERKSt9_Any_data(%"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %5)
  call void @_ZNSt14_Function_base13_Base_managerIZN10tensorflow35variant_op_registry_fn_registration30UnaryVariantDecodeRegistrationINS1_6TensorEEC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlPNS1_7VariantEE_E15_M_init_functorIRKSG_EEvRSt9_Any_dataOT_(%"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %4, %class.anon* nonnull align 8 dereferenceable(32) %call5)
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  %6 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %__dest.addr, align 8
  call void @_ZNSt14_Function_base13_Base_managerIZN10tensorflow35variant_op_registry_fn_registration30UnaryVariantDecodeRegistrationINS1_6TensorEEC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlPNS1_7VariantEE_E10_M_destroyERSt9_Any_dataSt17integral_constantIbLb0EE(%"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %6)
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb6, %sw.bb4, %sw.bb1, %sw.bb
  ret i1 false
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt14_Function_base13_Base_managerIZN10tensorflow35variant_op_registry_fn_registration30UnaryVariantDecodeRegistrationINS1_6TensorEEC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlPNS1_7VariantEE_E15_M_init_functorIRKSG_EEvRSt9_Any_dataOT_(%"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %__functor, %class.anon* nonnull align 8 dereferenceable(32) %__f) #6 comdat align 2 {
entry:
  %__functor.addr = alloca %"union.std::_Any_data"*, align 8
  %__f.addr = alloca %class.anon*, align 8
  %agg.tmp = alloca %"class.std::ios_base::Init", align 1
  store %"union.std::_Any_data"* %__functor, %"union.std::_Any_data"** %__functor.addr, align 8
  store %class.anon* %__f, %class.anon** %__f.addr, align 8
  %0 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %__functor.addr, align 8
  %1 = load %class.anon*, %class.anon** %__f.addr, align 8
  %call = call nonnull align 8 dereferenceable(32) %class.anon* @_ZSt7forwardIRKZN10tensorflow35variant_op_registry_fn_registration30UnaryVariantDecodeRegistrationINS0_6TensorEEC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlPNS0_7VariantEE_EOT_RNSt16remove_referenceISI_E4typeE(%class.anon* nonnull align 8 dereferenceable(32) %1) #11
  call void @_ZNSt14_Function_base13_Base_managerIZN10tensorflow35variant_op_registry_fn_registration30UnaryVariantDecodeRegistrationINS1_6TensorEEC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlPNS1_7VariantEE_E9_M_createIRKSG_EEvRSt9_Any_dataOT_St17integral_constantIbLb0EE(%"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %0, %class.anon* nonnull align 8 dereferenceable(32) %call)
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt14_Function_base13_Base_managerIZN10tensorflow35variant_op_registry_fn_registration30UnaryVariantDecodeRegistrationINS1_6TensorEEC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlPNS1_7VariantEE_E10_M_destroyERSt9_Any_dataSt17integral_constantIbLb0EE(%"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %__victim) #6 comdat align 2 {
entry:
  %0 = alloca %"class.std::ios_base::Init", align 1
  %__victim.addr = alloca %"union.std::_Any_data"*, align 8
  store %"union.std::_Any_data"* %__victim, %"union.std::_Any_data"** %__victim.addr, align 8
  %1 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %__victim.addr, align 8
  %call = call nonnull align 8 dereferenceable(8) %class.anon** @_ZNSt9_Any_data9_M_accessIPZN10tensorflow35variant_op_registry_fn_registration30UnaryVariantDecodeRegistrationINS1_6TensorEEC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlPNS1_7VariantEE_EERT_v(%"union.std::_Any_data"* %1)
  %2 = load %class.anon*, %class.anon** %call, align 8
  %isnull = icmp eq %class.anon* %2, null
  br i1 %isnull, label %delete.end, label %delete.notnull

delete.notnull:                                   ; preds = %entry
  call void @_ZZN10tensorflow35variant_op_registry_fn_registration30UnaryVariantDecodeRegistrationINS_6TensorEEC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENUlPNS_7VariantEE_D2Ev(%class.anon* %2) #11
  %3 = bitcast %class.anon* %2 to i8*
  call void @_ZdlPv(i8* %3) #19
  br label %delete.end

delete.end:                                       ; preds = %delete.notnull, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(32) %class.anon* @_ZSt7forwardIRKZN10tensorflow35variant_op_registry_fn_registration30UnaryVariantDecodeRegistrationINS0_6TensorEEC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlPNS0_7VariantEE_EOT_RNSt16remove_referenceISI_E4typeE(%class.anon* nonnull align 8 dereferenceable(32) %__t) #0 comdat {
entry:
  %__t.addr = alloca %class.anon*, align 8
  store %class.anon* %__t, %class.anon** %__t.addr, align 8
  %0 = load %class.anon*, %class.anon** %__t.addr, align 8
  ret %class.anon* %0
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt14_Function_base13_Base_managerIZN10tensorflow35variant_op_registry_fn_registration30UnaryVariantDecodeRegistrationINS1_6TensorEEC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlPNS1_7VariantEE_E9_M_createIRKSG_EEvRSt9_Any_dataOT_St17integral_constantIbLb0EE(%"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %__dest, %class.anon* nonnull align 8 dereferenceable(32) %__f) #6 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %0 = alloca %"class.std::ios_base::Init", align 1
  %__dest.addr = alloca %"union.std::_Any_data"*, align 8
  %__f.addr = alloca %class.anon*, align 8
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  store %"union.std::_Any_data"* %__dest, %"union.std::_Any_data"** %__dest.addr, align 8
  store %class.anon* %__f, %class.anon** %__f.addr, align 8
  %call = call noalias nonnull i8* @_Znwm(i64 32) #21
  %1 = bitcast i8* %call to %class.anon*
  %2 = load %class.anon*, %class.anon** %__f.addr, align 8
  %call1 = call nonnull align 8 dereferenceable(32) %class.anon* @_ZSt7forwardIRKZN10tensorflow35variant_op_registry_fn_registration30UnaryVariantDecodeRegistrationINS0_6TensorEEC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlPNS0_7VariantEE_EOT_RNSt16remove_referenceISI_E4typeE(%class.anon* nonnull align 8 dereferenceable(32) %2) #11
  invoke void @_ZZN10tensorflow35variant_op_registry_fn_registration30UnaryVariantDecodeRegistrationINS_6TensorEEC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENUlPNS_7VariantEE_C2ERKSE_(%class.anon* %1, %class.anon* nonnull align 8 dereferenceable(32) %call1)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %3 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %__dest.addr, align 8
  %call2 = call nonnull align 8 dereferenceable(8) %class.anon** @_ZNSt9_Any_data9_M_accessIPZN10tensorflow35variant_op_registry_fn_registration30UnaryVariantDecodeRegistrationINS1_6TensorEEC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlPNS1_7VariantEE_EERT_v(%"union.std::_Any_data"* %3)
  store %class.anon* %1, %class.anon** %call2, align 8
  ret void

lpad:                                             ; preds = %entry
  %4 = landingpad { i8*, i32 }
          cleanup
  %5 = extractvalue { i8*, i32 } %4, 0
  store i8* %5, i8** %exn.slot, align 8
  %6 = extractvalue { i8*, i32 } %4, 1
  store i32 %6, i32* %ehselector.slot, align 4
  call void @_ZdlPv(i8* %call) #19
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val3 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val3
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZZN10tensorflow35variant_op_registry_fn_registration30UnaryVariantDecodeRegistrationINS_6TensorEEC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENUlPNS_7VariantEE_C2ERKSE_(%class.anon* %this, %class.anon* nonnull align 8 dereferenceable(32) %0) unnamed_addr #6 comdat align 2 {
entry:
  %this.addr = alloca %class.anon*, align 8
  %.addr = alloca %class.anon*, align 8
  store %class.anon* %this, %class.anon** %this.addr, align 8
  store %class.anon* %0, %class.anon** %.addr, align 8
  %this1 = load %class.anon*, %class.anon** %this.addr, align 8
  %1 = getelementptr inbounds %class.anon, %class.anon* %this1, i32 0, i32 0
  %2 = load %class.anon*, %class.anon** %.addr, align 8
  %3 = getelementptr inbounds %class.anon, %class.anon* %2, i32 0, i32 0
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_(%"class.std::__cxx11::basic_string"* %1, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %3)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i8* @_ZNSt9_Any_data9_M_accessEv(%"union.std::_Any_data"* %this) #0 comdat align 2 {
entry:
  %this.addr = alloca %"union.std::_Any_data"*, align 8
  store %"union.std::_Any_data"* %this, %"union.std::_Any_data"** %this.addr, align 8
  %this1 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %this.addr, align 8
  %_M_pod_data = bitcast %"union.std::_Any_data"* %this1 to [16 x i8]*
  %arrayidx = getelementptr inbounds [16 x i8], [16 x i8]* %_M_pod_data, i64 0, i64 0
  ret i8* %arrayidx
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) %class.anon** @_ZNKSt9_Any_data9_M_accessIPZN10tensorflow35variant_op_registry_fn_registration30UnaryVariantDecodeRegistrationINS1_6TensorEEC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlPNS1_7VariantEE_EERKT_v(%"union.std::_Any_data"* %this) #6 comdat align 2 {
entry:
  %this.addr = alloca %"union.std::_Any_data"*, align 8
  store %"union.std::_Any_data"* %this, %"union.std::_Any_data"** %this.addr, align 8
  %this1 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %this.addr, align 8
  %call = call i8* @_ZNKSt9_Any_data9_M_accessEv(%"union.std::_Any_data"* %this1)
  %0 = bitcast i8* %call to %class.anon**
  ret %class.anon** %0
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i8* @_ZNKSt9_Any_data9_M_accessEv(%"union.std::_Any_data"* %this) #0 comdat align 2 {
entry:
  %this.addr = alloca %"union.std::_Any_data"*, align 8
  store %"union.std::_Any_data"* %this, %"union.std::_Any_data"** %this.addr, align 8
  %this1 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %this.addr, align 8
  %_M_pod_data = bitcast %"union.std::_Any_data"* %this1 to [16 x i8]*
  %arrayidx = getelementptr inbounds [16 x i8], [16 x i8]* %_M_pod_data, i64 0, i64 0
  ret i8* %arrayidx
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) %"class.tensorflow::Variant"** @_ZSt7forwardIPN10tensorflow7VariantEEOT_RNSt16remove_referenceIS3_E4typeE(%"class.tensorflow::Variant"** nonnull align 8 dereferenceable(8) %__t) #0 comdat {
entry:
  %__t.addr = alloca %"class.tensorflow::Variant"**, align 8
  store %"class.tensorflow::Variant"** %__t, %"class.tensorflow::Variant"*** %__t.addr, align 8
  %0 = load %"class.tensorflow::Variant"**, %"class.tensorflow::Variant"*** %__t.addr, align 8
  ret %"class.tensorflow::Variant"** %0
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local zeroext i1 @_ZSt10__invoke_rIbRZN10tensorflow35variant_op_registry_fn_registration30UnaryVariantDecodeRegistrationINS0_6TensorEEC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlPNS0_7VariantEE_JSE_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESI_E4typeEOSJ_DpOSK_(%class.anon* nonnull align 8 dereferenceable(32) %__fn, %"class.tensorflow::Variant"** nonnull align 8 dereferenceable(8) %__args) #6 comdat {
entry:
  %__fn.addr = alloca %class.anon*, align 8
  %__args.addr = alloca %"class.tensorflow::Variant"**, align 8
  %agg.tmp = alloca %"class.std::ios_base::Init", align 1
  store %class.anon* %__fn, %class.anon** %__fn.addr, align 8
  store %"class.tensorflow::Variant"** %__args, %"class.tensorflow::Variant"*** %__args.addr, align 8
  %0 = load %class.anon*, %class.anon** %__fn.addr, align 8
  %call = call nonnull align 8 dereferenceable(32) %class.anon* @_ZSt7forwardIRZN10tensorflow35variant_op_registry_fn_registration30UnaryVariantDecodeRegistrationINS0_6TensorEEC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlPNS0_7VariantEE_EOT_RNSt16remove_referenceISH_E4typeE(%class.anon* nonnull align 8 dereferenceable(32) %0) #11
  %1 = load %"class.tensorflow::Variant"**, %"class.tensorflow::Variant"*** %__args.addr, align 8
  %call1 = call nonnull align 8 dereferenceable(8) %"class.tensorflow::Variant"** @_ZSt7forwardIPN10tensorflow7VariantEEOT_RNSt16remove_referenceIS3_E4typeE(%"class.tensorflow::Variant"** nonnull align 8 dereferenceable(8) %1) #11
  %call2 = call zeroext i1 @_ZSt13__invoke_implIbRZN10tensorflow35variant_op_registry_fn_registration30UnaryVariantDecodeRegistrationINS0_6TensorEEC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlPNS0_7VariantEE_JSE_EET_St14__invoke_otherOT0_DpOT1_(%class.anon* nonnull align 8 dereferenceable(32) %call, %"class.tensorflow::Variant"** nonnull align 8 dereferenceable(8) %call1)
  ret i1 %call2
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(32) %class.anon* @_ZSt7forwardIRZN10tensorflow35variant_op_registry_fn_registration30UnaryVariantDecodeRegistrationINS0_6TensorEEC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlPNS0_7VariantEE_EOT_RNSt16remove_referenceISH_E4typeE(%class.anon* nonnull align 8 dereferenceable(32) %__t) #0 comdat {
entry:
  %__t.addr = alloca %class.anon*, align 8
  store %class.anon* %__t, %class.anon** %__t.addr, align 8
  %0 = load %class.anon*, %class.anon** %__t.addr, align 8
  ret %class.anon* %0
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local zeroext i1 @_ZSt13__invoke_implIbRZN10tensorflow35variant_op_registry_fn_registration30UnaryVariantDecodeRegistrationINS0_6TensorEEC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlPNS0_7VariantEE_JSE_EET_St14__invoke_otherOT0_DpOT1_(%class.anon* nonnull align 8 dereferenceable(32) %__f, %"class.tensorflow::Variant"** nonnull align 8 dereferenceable(8) %__args) #6 comdat {
entry:
  %0 = alloca %"class.std::ios_base::Init", align 1
  %__f.addr = alloca %class.anon*, align 8
  %__args.addr = alloca %"class.tensorflow::Variant"**, align 8
  store %class.anon* %__f, %class.anon** %__f.addr, align 8
  store %"class.tensorflow::Variant"** %__args, %"class.tensorflow::Variant"*** %__args.addr, align 8
  %1 = load %class.anon*, %class.anon** %__f.addr, align 8
  %call = call nonnull align 8 dereferenceable(32) %class.anon* @_ZSt7forwardIRZN10tensorflow35variant_op_registry_fn_registration30UnaryVariantDecodeRegistrationINS0_6TensorEEC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlPNS0_7VariantEE_EOT_RNSt16remove_referenceISH_E4typeE(%class.anon* nonnull align 8 dereferenceable(32) %1) #11
  %2 = load %"class.tensorflow::Variant"**, %"class.tensorflow::Variant"*** %__args.addr, align 8
  %call1 = call nonnull align 8 dereferenceable(8) %"class.tensorflow::Variant"** @_ZSt7forwardIPN10tensorflow7VariantEEOT_RNSt16remove_referenceIS3_E4typeE(%"class.tensorflow::Variant"** nonnull align 8 dereferenceable(8) %2) #11
  %3 = load %"class.tensorflow::Variant"*, %"class.tensorflow::Variant"** %call1, align 8
  %call2 = call zeroext i1 @_ZZN10tensorflow35variant_op_registry_fn_registration30UnaryVariantDecodeRegistrationINS_6TensorEEC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENKUlPNS_7VariantEE_clESD_(%class.anon* %call, %"class.tensorflow::Variant"* %3)
  ret i1 %call2
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local zeroext i1 @_ZZN10tensorflow35variant_op_registry_fn_registration30UnaryVariantDecodeRegistrationINS_6TensorEEC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENKUlPNS_7VariantEE_clESD_(%class.anon* %this, %"class.tensorflow::Variant"* %v) #6 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %retval = alloca i1, align 1
  %this.addr = alloca %class.anon*, align 8
  %v.addr = alloca %"class.tensorflow::Variant"*, align 8
  %_result = alloca %"struct.tsl::internal::CheckOpString", align 8
  %ref.tmp = alloca i8*, align 8
  %ref.tmp5 = alloca %"class.tsl::internal::LogMessageFatal", align 8
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  %t = alloca %"class.tensorflow::VariantTensorDataProto"*, align 8
  %decoded = alloca %"class.tensorflow::Variant", align 8
  %ref.tmp8 = alloca %"class.tensorflow::Tensor", align 8
  %data = alloca %"class.tensorflow::VariantTensorData", align 8
  %agg.tmp = alloca %"class.tensorflow::VariantTensorDataProto", align 8
  %agg.tmp14 = alloca %"class.tensorflow::VariantTensorData", align 8
  %cleanup.dest.slot = alloca i32, align 4
  store %class.anon* %this, %class.anon** %this.addr, align 8
  store %"class.tensorflow::Variant"* %v, %"class.tensorflow::Variant"** %v.addr, align 8
  %this1 = load %class.anon*, %class.anon** %this.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %entry
  %call = call nonnull align 8 dereferenceable(8) %"class.tensorflow::Variant"** @_ZN3tsl8internal21GetReferenceableValueIPN10tensorflow7VariantEEERKT_S7_(%"class.tensorflow::Variant"** nonnull align 8 dereferenceable(8) %v.addr)
  store i8* null, i8** %ref.tmp, align 8
  %call2 = call nonnull align 8 dereferenceable(8) i8** @_ZN3tsl8internal21GetReferenceableValueIDnEERKT_S4_(i8** nonnull align 8 dereferenceable(8) %ref.tmp)
  %call3 = call %"class.std::__cxx11::basic_string"* @_ZN3tsl8internal12Check_NEImplIPN10tensorflow7VariantEDnEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc(%"class.tensorflow::Variant"** nonnull align 8 dereferenceable(8) %call, i8** nonnull align 8 dereferenceable(8) %call2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0))
  call void @_ZN3tsl8internal13CheckOpStringC2EPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"struct.tsl::internal::CheckOpString"* %_result, %"class.std::__cxx11::basic_string"* %call3)
  %call4 = call zeroext i1 @_ZNK3tsl8internal13CheckOpStringcvbEv(%"struct.tsl::internal::CheckOpString"* %_result)
  br i1 %call4, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void @_ZN3tsl8internal15LogMessageFatalC1EPKci(%"class.tsl::internal::LogMessageFatal"* %ref.tmp5, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.17, i64 0, i64 0), i32 373) #22
  %str_ = getelementptr inbounds %"struct.tsl::internal::CheckOpString", %"struct.tsl::internal::CheckOpString"* %_result, i32 0, i32 0
  %0 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %str_, align 8
  %call6 = invoke nonnull align 8 dereferenceable(136) %"class.tsl::internal::LogMessageFatal"* @_ZStlsIN3tsl8internal15LogMessageFatalENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_SA_RKT0_(%"class.tsl::internal::LogMessageFatal"* nonnull align 8 dereferenceable(136) %ref.tmp5, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %0)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %while.body
  call void @_ZN3tsl8internal15LogMessageFatalD1Ev(%"class.tsl::internal::LogMessageFatal"* %ref.tmp5) #16
  unreachable

lpad:                                             ; preds = %while.body
  %1 = landingpad { i8*, i32 }
          cleanup
  %2 = extractvalue { i8*, i32 } %1, 0
  store i8* %2, i8** %exn.slot, align 8
  %3 = extractvalue { i8*, i32 } %1, 1
  store i32 %3, i32* %ehselector.slot, align 4
  call void @_ZN3tsl8internal15LogMessageFatalD1Ev(%"class.tsl::internal::LogMessageFatal"* %ref.tmp5) #16
  unreachable

4:                                                ; No predecessors!
  br label %eh.resume

while.end:                                        ; preds = %while.cond
  %5 = load %"class.tensorflow::Variant"*, %"class.tensorflow::Variant"** %v.addr, align 8
  %call7 = call %"class.tensorflow::VariantTensorDataProto"* @_ZN10tensorflow7Variant3getINS_22VariantTensorDataProtoEEEPT_v(%"class.tensorflow::Variant"* %5)
  store %"class.tensorflow::VariantTensorDataProto"* %call7, %"class.tensorflow::VariantTensorDataProto"** %t, align 8
  %6 = load %"class.tensorflow::VariantTensorDataProto"*, %"class.tensorflow::VariantTensorDataProto"** %t, align 8
  %cmp = icmp eq %"class.tensorflow::VariantTensorDataProto"* %6, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  store i1 false, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %while.end
  call void @_ZN10tensorflow6TensorC1Ev(%"class.tensorflow::Tensor"* %ref.tmp8)
  invoke void @_ZN10tensorflow7VariantC2INS_6TensorES2_LPv0EEEOT_(%"class.tensorflow::Variant"* %decoded, %"class.tensorflow::Tensor"* nonnull align 8 dereferenceable(32) %ref.tmp8)
          to label %invoke.cont10 unwind label %lpad9

invoke.cont10:                                    ; preds = %if.end
  call void @_ZN10tensorflow6TensorD1Ev(%"class.tensorflow::Tensor"* %ref.tmp8) #11
  %7 = load %"class.tensorflow::VariantTensorDataProto"*, %"class.tensorflow::VariantTensorDataProto"** %t, align 8
  %call11 = call nonnull align 8 dereferenceable(64) %"class.tensorflow::VariantTensorDataProto"* @_ZSt4moveIRN10tensorflow22VariantTensorDataProtoEEONSt16remove_referenceIT_E4typeEOS4_(%"class.tensorflow::VariantTensorDataProto"* nonnull align 8 dereferenceable(64) %7) #11
  call void @_ZN10tensorflow22VariantTensorDataProtoC2EOS0_(%"class.tensorflow::VariantTensorDataProto"* %agg.tmp, %"class.tensorflow::VariantTensorDataProto"* nonnull align 8 dereferenceable(64) %call11) #11
  invoke void @_ZN10tensorflow17VariantTensorDataC1ENS_22VariantTensorDataProtoE(%"class.tensorflow::VariantTensorData"* %data, %"class.tensorflow::VariantTensorDataProto"* %agg.tmp)
          to label %invoke.cont13 unwind label %lpad12

invoke.cont13:                                    ; preds = %invoke.cont10
  call void @_ZN10tensorflow22VariantTensorDataProtoD1Ev(%"class.tensorflow::VariantTensorDataProto"* %agg.tmp) #11
  %call15 = call nonnull align 8 dereferenceable(88) %"class.tensorflow::VariantTensorData"* @_ZSt4moveIRN10tensorflow17VariantTensorDataEEONSt16remove_referenceIT_E4typeEOS4_(%"class.tensorflow::VariantTensorData"* nonnull align 8 dereferenceable(88) %data) #11
  call void @_ZN10tensorflow17VariantTensorDataC2EOS0_(%"class.tensorflow::VariantTensorData"* %agg.tmp14, %"class.tensorflow::VariantTensorData"* nonnull align 8 dereferenceable(88) %call15) #11
  %call18 = invoke zeroext i1 @_ZN10tensorflow7Variant6DecodeENS_17VariantTensorDataE(%"class.tensorflow::Variant"* %decoded, %"class.tensorflow::VariantTensorData"* %agg.tmp14)
          to label %invoke.cont17 unwind label %lpad16

invoke.cont17:                                    ; preds = %invoke.cont13
  %lnot = xor i1 %call18, true
  call void @_ZN10tensorflow17VariantTensorDataD2Ev(%"class.tensorflow::VariantTensorData"* %agg.tmp14) #11
  br i1 %lnot, label %if.then19, label %if.end20

if.then19:                                        ; preds = %invoke.cont17
  store i1 false, i1* %retval, align 1
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

lpad9:                                            ; preds = %if.end
  %8 = landingpad { i8*, i32 }
          cleanup
  %9 = extractvalue { i8*, i32 } %8, 0
  store i8* %9, i8** %exn.slot, align 8
  %10 = extractvalue { i8*, i32 } %8, 1
  store i32 %10, i32* %ehselector.slot, align 4
  call void @_ZN10tensorflow6TensorD1Ev(%"class.tensorflow::Tensor"* %ref.tmp8) #11
  br label %eh.resume

lpad12:                                           ; preds = %invoke.cont10
  %11 = landingpad { i8*, i32 }
          cleanup
  %12 = extractvalue { i8*, i32 } %11, 0
  store i8* %12, i8** %exn.slot, align 8
  %13 = extractvalue { i8*, i32 } %11, 1
  store i32 %13, i32* %ehselector.slot, align 4
  call void @_ZN10tensorflow22VariantTensorDataProtoD1Ev(%"class.tensorflow::VariantTensorDataProto"* %agg.tmp) #11
  br label %ehcleanup

lpad16:                                           ; preds = %invoke.cont13
  %14 = landingpad { i8*, i32 }
          cleanup
  %15 = extractvalue { i8*, i32 } %14, 0
  store i8* %15, i8** %exn.slot, align 8
  %16 = extractvalue { i8*, i32 } %14, 1
  store i32 %16, i32* %ehselector.slot, align 4
  call void @_ZN10tensorflow17VariantTensorDataD2Ev(%"class.tensorflow::VariantTensorData"* %agg.tmp14) #11
  call void @_ZN10tensorflow17VariantTensorDataD2Ev(%"class.tensorflow::VariantTensorData"* %data) #11
  br label %ehcleanup

if.end20:                                         ; preds = %invoke.cont17
  %17 = load %"class.tensorflow::Variant"*, %"class.tensorflow::Variant"** %v.addr, align 8
  call void @_ZSt4swapIN10tensorflow7VariantEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SE_(%"class.tensorflow::Variant"* nonnull align 8 dereferenceable(57) %decoded, %"class.tensorflow::Variant"* nonnull align 8 dereferenceable(57) %17) #11
  store i1 true, i1* %retval, align 1
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.then19
  call void @_ZN10tensorflow17VariantTensorDataD2Ev(%"class.tensorflow::VariantTensorData"* %data) #11
  call void @_ZN10tensorflow7VariantD1Ev(%"class.tensorflow::Variant"* %decoded) #11
  br label %return

ehcleanup:                                        ; preds = %lpad16, %lpad12
  call void @_ZN10tensorflow7VariantD1Ev(%"class.tensorflow::Variant"* %decoded) #11
  br label %eh.resume

return:                                           ; preds = %cleanup, %if.then
  %18 = load i1, i1* %retval, align 1
  ret i1 %18

eh.resume:                                        ; preds = %ehcleanup, %lpad9, %4
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val22 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val22
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) %"class.tensorflow::Variant"** @_ZN3tsl8internal21GetReferenceableValueIPN10tensorflow7VariantEEERKT_S7_(%"class.tensorflow::Variant"** nonnull align 8 dereferenceable(8) %t) #0 comdat {
entry:
  %t.addr = alloca %"class.tensorflow::Variant"**, align 8
  store %"class.tensorflow::Variant"** %t, %"class.tensorflow::Variant"*** %t.addr, align 8
  %0 = load %"class.tensorflow::Variant"**, %"class.tensorflow::Variant"*** %t.addr, align 8
  ret %"class.tensorflow::Variant"** %0
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) i8** @_ZN3tsl8internal21GetReferenceableValueIDnEERKT_S4_(i8** nonnull align 8 dereferenceable(8) %t) #0 comdat {
entry:
  %t.addr = alloca i8**, align 8
  store i8** %t, i8*** %t.addr, align 8
  %0 = load i8**, i8*** %t.addr, align 8
  ret i8** %0
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %"class.std::__cxx11::basic_string"* @_ZN3tsl8internal12Check_NEImplIPN10tensorflow7VariantEDnEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc(%"class.tensorflow::Variant"** nonnull align 8 dereferenceable(8) %v1, i8** nonnull align 8 dereferenceable(8) %v2, i8* %exprtext) #6 comdat {
entry:
  %retval = alloca %"class.std::__cxx11::basic_string"*, align 8
  %v1.addr = alloca %"class.tensorflow::Variant"**, align 8
  %v2.addr = alloca i8**, align 8
  %exprtext.addr = alloca i8*, align 8
  store %"class.tensorflow::Variant"** %v1, %"class.tensorflow::Variant"*** %v1.addr, align 8
  store i8** %v2, i8*** %v2.addr, align 8
  store i8* %exprtext, i8** %exprtext.addr, align 8
  %0 = load %"class.tensorflow::Variant"**, %"class.tensorflow::Variant"*** %v1.addr, align 8
  %1 = load %"class.tensorflow::Variant"*, %"class.tensorflow::Variant"** %0, align 8
  %2 = load i8**, i8*** %v2.addr, align 8
  %cmp = icmp ne %"class.tensorflow::Variant"* %1, null
  %lnot = xor i1 %cmp, true
  %lnot1 = xor i1 %lnot, true
  br i1 %lnot1, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store %"class.std::__cxx11::basic_string"* null, %"class.std::__cxx11::basic_string"** %retval, align 8
  br label %return

if.else:                                          ; preds = %entry
  %3 = load %"class.tensorflow::Variant"**, %"class.tensorflow::Variant"*** %v1.addr, align 8
  %4 = load i8**, i8*** %v2.addr, align 8
  %5 = load i8*, i8** %exprtext.addr, align 8
  %call = call %"class.std::__cxx11::basic_string"* @_ZN3tsl8internal17MakeCheckOpStringIPN10tensorflow7VariantEDnEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc(%"class.tensorflow::Variant"** nonnull align 8 dereferenceable(8) %3, i8** nonnull align 8 dereferenceable(8) %4, i8* %5)
  store %"class.std::__cxx11::basic_string"* %call, %"class.std::__cxx11::basic_string"** %retval, align 8
  br label %return

return:                                           ; preds = %if.else, %if.then
  %6 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %retval, align 8
  ret %"class.std::__cxx11::basic_string"* %6
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %"class.tensorflow::VariantTensorDataProto"* @_ZN10tensorflow7Variant3getINS_22VariantTensorDataProtoEEEPT_v(%"class.tensorflow::Variant"* %this) #6 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %retval = alloca %"class.tensorflow::VariantTensorDataProto"*, align 8
  %this.addr = alloca %"class.tensorflow::Variant"*, align 8
  %TTypeIndex = alloca %"class.std::basic_string_view", align 8
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  %ref.tmp = alloca %"class.std::basic_string_view", align 8
  %cleanup.cond = alloca i1, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store %"class.tensorflow::Variant"* %this, %"class.tensorflow::Variant"** %this.addr, align 8
  %this1 = load %"class.tensorflow::Variant"*, %"class.tensorflow::Variant"** %this.addr, align 8
  call void @_ZN10tensorflow9TypeIndex4MakeINS_22VariantTensorDataProtoEEES0_v(%"class.std::basic_string_view"* sret align 8 %TTypeIndex)
  store i1 false, i1* %cleanup.cond, align 1
  %call = invoke zeroext i1 @_ZNK10tensorflow7Variant8is_emptyEv(%"class.tensorflow::Variant"* %this1)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  br i1 %call, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %invoke.cont
  invoke void @_ZNK10tensorflow7Variant6TypeIdEv(%"class.std::basic_string_view"* sret align 8 %ref.tmp, %"class.tensorflow::Variant"* %this1)
          to label %invoke.cont2 unwind label %lpad

invoke.cont2:                                     ; preds = %lor.rhs
  store i1 true, i1* %cleanup.cond, align 1
  %call5 = invoke zeroext i1 @_ZNK10tensorflow9TypeIndexneERKS0_(%"class.std::basic_string_view"* %TTypeIndex, %"class.std::basic_string_view"* nonnull align 8 dereferenceable(16) %ref.tmp)
          to label %invoke.cont4 unwind label %lpad3

invoke.cont4:                                     ; preds = %invoke.cont2
  br label %lor.end

lor.end:                                          ; preds = %invoke.cont4, %invoke.cont
  %0 = phi i1 [ true, %invoke.cont ], [ %call5, %invoke.cont4 ]
  %cleanup.is_active = load i1, i1* %cleanup.cond, align 1
  br i1 %cleanup.is_active, label %cleanup.action, label %cleanup.done

cleanup.action:                                   ; preds = %lor.end
  call void @_ZN10tensorflow9TypeIndexD2Ev(%"class.std::basic_string_view"* %ref.tmp) #11
  br label %cleanup.done

cleanup.done:                                     ; preds = %cleanup.action, %lor.end
  br i1 %0, label %if.then, label %if.end

if.then:                                          ; preds = %cleanup.done
  store %"class.tensorflow::VariantTensorDataProto"* null, %"class.tensorflow::VariantTensorDataProto"** %retval, align 8
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

lpad:                                             ; preds = %if.end, %lor.rhs, %entry
  %1 = landingpad { i8*, i32 }
          cleanup
  %2 = extractvalue { i8*, i32 } %1, 0
  store i8* %2, i8** %exn.slot, align 8
  %3 = extractvalue { i8*, i32 } %1, 1
  store i32 %3, i32* %ehselector.slot, align 4
  br label %ehcleanup

lpad3:                                            ; preds = %invoke.cont2
  %4 = landingpad { i8*, i32 }
          cleanup
  %5 = extractvalue { i8*, i32 } %4, 0
  store i8* %5, i8** %exn.slot, align 8
  %6 = extractvalue { i8*, i32 } %4, 1
  store i32 %6, i32* %ehselector.slot, align 4
  %cleanup.is_active6 = load i1, i1* %cleanup.cond, align 1
  br i1 %cleanup.is_active6, label %cleanup.action7, label %cleanup.done8

cleanup.action7:                                  ; preds = %lpad3
  call void @_ZN10tensorflow9TypeIndexD2Ev(%"class.std::basic_string_view"* %ref.tmp) #11
  br label %cleanup.done8

cleanup.done8:                                    ; preds = %cleanup.action7, %lpad3
  br label %ehcleanup

if.end:                                           ; preds = %cleanup.done
  %call10 = invoke %"class.tensorflow::AbstractTensorInterface"* @_ZN10tensorflow7Variant8GetValueEv(%"class.tensorflow::Variant"* %this1)
          to label %invoke.cont9 unwind label %lpad

invoke.cont9:                                     ; preds = %if.end
  %7 = bitcast %"class.tensorflow::AbstractTensorInterface"* %call10 to %"struct.tensorflow::Variant::Value"*
  %value = getelementptr inbounds %"struct.tensorflow::Variant::Value", %"struct.tensorflow::Variant::Value"* %7, i32 0, i32 1
  %call11 = call %"class.tensorflow::VariantTensorDataProto"* @_ZSt9addressofIN10tensorflow22VariantTensorDataProtoEEPT_RS2_(%"class.tensorflow::VariantTensorDataProto"* nonnull align 8 dereferenceable(64) %value) #11
  store %"class.tensorflow::VariantTensorDataProto"* %call11, %"class.tensorflow::VariantTensorDataProto"** %retval, align 8
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %invoke.cont9, %if.then
  call void @_ZN10tensorflow9TypeIndexD2Ev(%"class.std::basic_string_view"* %TTypeIndex) #11
  %8 = load %"class.tensorflow::VariantTensorDataProto"*, %"class.tensorflow::VariantTensorDataProto"** %retval, align 8
  ret %"class.tensorflow::VariantTensorDataProto"* %8

ehcleanup:                                        ; preds = %cleanup.done8, %lpad
  call void @_ZN10tensorflow9TypeIndexD2Ev(%"class.std::basic_string_view"* %TTypeIndex) #11
  br label %eh.resume

eh.resume:                                        ; preds = %ehcleanup
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val12 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val12
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow7VariantC2INS_6TensorES2_LPv0EEEOT_(%"class.tensorflow::Variant"* %this, %"class.tensorflow::Tensor"* nonnull align 8 dereferenceable(32) %value) unnamed_addr #6 comdat align 2 {
entry:
  %this.addr = alloca %"class.tensorflow::Variant"*, align 8
  %value.addr = alloca %"class.tensorflow::Tensor"*, align 8
  store %"class.tensorflow::Variant"* %this, %"class.tensorflow::Variant"** %this.addr, align 8
  store %"class.tensorflow::Tensor"* %value, %"class.tensorflow::Tensor"** %value.addr, align 8
  %this1 = load %"class.tensorflow::Variant"*, %"class.tensorflow::Variant"** %this.addr, align 8
  %is_inline_ = getelementptr inbounds %"class.tensorflow::Variant", %"class.tensorflow::Variant"* %this1, i32 0, i32 1
  %call = call zeroext i1 @_ZN10tensorflow7Variant13CanInlineTypeINS_6TensorEEEbv()
  %frombool = zext i1 %call to i8
  store i8 %frombool, i8* %is_inline_, align 8
  %0 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %value.addr, align 8
  %call2 = call nonnull align 8 dereferenceable(32) %"class.tensorflow::Tensor"* @_ZSt7forwardIN10tensorflow6TensorEEOT_RNSt16remove_referenceIS2_E4typeE(%"class.tensorflow::Tensor"* nonnull align 8 dereferenceable(32) %0) #11
  call void @_ZN10tensorflow7Variant11InsertValueINS_6TensorES2_EEvOT0_(%"class.tensorflow::Variant"* %this1, %"class.tensorflow::Tensor"* nonnull align 8 dereferenceable(32) %call2)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(64) %"class.tensorflow::VariantTensorDataProto"* @_ZSt4moveIRN10tensorflow22VariantTensorDataProtoEEONSt16remove_referenceIT_E4typeEOS4_(%"class.tensorflow::VariantTensorDataProto"* nonnull align 8 dereferenceable(64) %__t) #0 comdat {
entry:
  %__t.addr = alloca %"class.tensorflow::VariantTensorDataProto"*, align 8
  store %"class.tensorflow::VariantTensorDataProto"* %__t, %"class.tensorflow::VariantTensorDataProto"** %__t.addr, align 8
  %0 = load %"class.tensorflow::VariantTensorDataProto"*, %"class.tensorflow::VariantTensorDataProto"** %__t.addr, align 8
  ret %"class.tensorflow::VariantTensorDataProto"* %0
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow22VariantTensorDataProtoC2EOS0_(%"class.tensorflow::VariantTensorDataProto"* %this, %"class.tensorflow::VariantTensorDataProto"* nonnull align 8 dereferenceable(64) %from) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.tensorflow::VariantTensorDataProto"*, align 8
  %from.addr = alloca %"class.tensorflow::VariantTensorDataProto"*, align 8
  store %"class.tensorflow::VariantTensorDataProto"* %this, %"class.tensorflow::VariantTensorDataProto"** %this.addr, align 8
  store %"class.tensorflow::VariantTensorDataProto"* %from, %"class.tensorflow::VariantTensorDataProto"** %from.addr, align 8
  %this1 = load %"class.tensorflow::VariantTensorDataProto"*, %"class.tensorflow::VariantTensorDataProto"** %this.addr, align 8
  %0 = load %"class.tensorflow::VariantTensorDataProto"*, %"class.tensorflow::VariantTensorDataProto"** %from.addr, align 8
  %call = call nonnull align 8 dereferenceable(64) %"class.tensorflow::VariantTensorDataProto"* @_ZSt4moveIRN10tensorflow22VariantTensorDataProtoEEONSt16remove_referenceIT_E4typeEOS4_(%"class.tensorflow::VariantTensorDataProto"* nonnull align 8 dereferenceable(64) %0) #11
  call void @_ZN10tensorflow22VariantTensorDataProtoC2EPN6google8protobuf5ArenaEOS0_(%"class.tensorflow::VariantTensorDataProto"* %this1, %"class.google::protobuf::Arena"* null, %"class.tensorflow::VariantTensorDataProto"* nonnull align 8 dereferenceable(64) %call) #11
  ret void
}

declare dso_local void @_ZN10tensorflow17VariantTensorDataC1ENS_22VariantTensorDataProtoE(%"class.tensorflow::VariantTensorData"*, %"class.tensorflow::VariantTensorDataProto"*) unnamed_addr #4

; Function Attrs: nounwind
declare dso_local void @_ZN10tensorflow22VariantTensorDataProtoD1Ev(%"class.tensorflow::VariantTensorDataProto"*) unnamed_addr #3

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(88) %"class.tensorflow::VariantTensorData"* @_ZSt4moveIRN10tensorflow17VariantTensorDataEEONSt16remove_referenceIT_E4typeEOS4_(%"class.tensorflow::VariantTensorData"* nonnull align 8 dereferenceable(88) %__t) #0 comdat {
entry:
  %__t.addr = alloca %"class.tensorflow::VariantTensorData"*, align 8
  store %"class.tensorflow::VariantTensorData"* %__t, %"class.tensorflow::VariantTensorData"** %__t.addr, align 8
  %0 = load %"class.tensorflow::VariantTensorData"*, %"class.tensorflow::VariantTensorData"** %__t.addr, align 8
  ret %"class.tensorflow::VariantTensorData"* %0
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow17VariantTensorDataC2EOS0_(%"class.tensorflow::VariantTensorData"* %this, %"class.tensorflow::VariantTensorData"* nonnull align 8 dereferenceable(88) %0) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.tensorflow::VariantTensorData"*, align 8
  %.addr = alloca %"class.tensorflow::VariantTensorData"*, align 8
  store %"class.tensorflow::VariantTensorData"* %this, %"class.tensorflow::VariantTensorData"** %this.addr, align 8
  store %"class.tensorflow::VariantTensorData"* %0, %"class.tensorflow::VariantTensorData"** %.addr, align 8
  %this1 = load %"class.tensorflow::VariantTensorData"*, %"class.tensorflow::VariantTensorData"** %this.addr, align 8
  %type_name_ = getelementptr inbounds %"class.tensorflow::VariantTensorData", %"class.tensorflow::VariantTensorData"* %this1, i32 0, i32 0
  %1 = load %"class.tensorflow::VariantTensorData"*, %"class.tensorflow::VariantTensorData"** %.addr, align 8
  %type_name_2 = getelementptr inbounds %"class.tensorflow::VariantTensorData", %"class.tensorflow::VariantTensorData"* %1, i32 0, i32 0
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_(%"class.std::__cxx11::basic_string"* %type_name_, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %type_name_2) #11
  %metadata_ = getelementptr inbounds %"class.tensorflow::VariantTensorData", %"class.tensorflow::VariantTensorData"* %this1, i32 0, i32 1
  %2 = load %"class.tensorflow::VariantTensorData"*, %"class.tensorflow::VariantTensorData"** %.addr, align 8
  %metadata_3 = getelementptr inbounds %"class.tensorflow::VariantTensorData", %"class.tensorflow::VariantTensorData"* %2, i32 0, i32 1
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_(%"class.std::__cxx11::basic_string"* %metadata_, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %metadata_3) #11
  %tensors_ = getelementptr inbounds %"class.tensorflow::VariantTensorData", %"class.tensorflow::VariantTensorData"* %this1, i32 0, i32 2
  %3 = load %"class.tensorflow::VariantTensorData"*, %"class.tensorflow::VariantTensorData"** %.addr, align 8
  %tensors_4 = getelementptr inbounds %"class.tensorflow::VariantTensorData", %"class.tensorflow::VariantTensorData"* %3, i32 0, i32 2
  call void @_ZNSt6vectorIN10tensorflow6TensorESaIS1_EEC2EOS3_(%"class.std::vector.48"* %tensors_, %"class.std::vector.48"* nonnull align 8 dereferenceable(24) %tensors_4) #11
  ret void
}

declare dso_local zeroext i1 @_ZN10tensorflow7Variant6DecodeENS_17VariantTensorDataE(%"class.tensorflow::Variant"*, %"class.tensorflow::VariantTensorData"*) #4

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow17VariantTensorDataD2Ev(%"class.tensorflow::VariantTensorData"* %this) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.tensorflow::VariantTensorData"*, align 8
  store %"class.tensorflow::VariantTensorData"* %this, %"class.tensorflow::VariantTensorData"** %this.addr, align 8
  %this1 = load %"class.tensorflow::VariantTensorData"*, %"class.tensorflow::VariantTensorData"** %this.addr, align 8
  %tensors_ = getelementptr inbounds %"class.tensorflow::VariantTensorData", %"class.tensorflow::VariantTensorData"* %this1, i32 0, i32 2
  call void @_ZNSt6vectorIN10tensorflow6TensorESaIS1_EED2Ev(%"class.std::vector.48"* %tensors_) #11
  %metadata_ = getelementptr inbounds %"class.tensorflow::VariantTensorData", %"class.tensorflow::VariantTensorData"* %this1, i32 0, i32 1
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %metadata_) #11
  %type_name_ = getelementptr inbounds %"class.tensorflow::VariantTensorData", %"class.tensorflow::VariantTensorData"* %this1, i32 0, i32 0
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %type_name_) #11
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZSt4swapIN10tensorflow7VariantEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SE_(%"class.tensorflow::Variant"* nonnull align 8 dereferenceable(57) %__a, %"class.tensorflow::Variant"* nonnull align 8 dereferenceable(57) %__b) #0 comdat {
entry:
  %__a.addr = alloca %"class.tensorflow::Variant"*, align 8
  %__b.addr = alloca %"class.tensorflow::Variant"*, align 8
  %__tmp = alloca %"class.tensorflow::Variant", align 8
  store %"class.tensorflow::Variant"* %__a, %"class.tensorflow::Variant"** %__a.addr, align 8
  store %"class.tensorflow::Variant"* %__b, %"class.tensorflow::Variant"** %__b.addr, align 8
  %0 = load %"class.tensorflow::Variant"*, %"class.tensorflow::Variant"** %__a.addr, align 8
  %call = call nonnull align 8 dereferenceable(57) %"class.tensorflow::Variant"* @_ZSt4moveIRN10tensorflow7VariantEEONSt16remove_referenceIT_E4typeEOS4_(%"class.tensorflow::Variant"* nonnull align 8 dereferenceable(57) %0) #11
  call void @_ZN10tensorflow7VariantC2EOS0_(%"class.tensorflow::Variant"* %__tmp, %"class.tensorflow::Variant"* nonnull align 8 dereferenceable(57) %call) #11
  %1 = load %"class.tensorflow::Variant"*, %"class.tensorflow::Variant"** %__b.addr, align 8
  %call1 = call nonnull align 8 dereferenceable(57) %"class.tensorflow::Variant"* @_ZSt4moveIRN10tensorflow7VariantEEONSt16remove_referenceIT_E4typeEOS4_(%"class.tensorflow::Variant"* nonnull align 8 dereferenceable(57) %1) #11
  %2 = load %"class.tensorflow::Variant"*, %"class.tensorflow::Variant"** %__a.addr, align 8
  %call2 = call nonnull align 8 dereferenceable(57) %"class.tensorflow::Variant"* @_ZN10tensorflow7VariantaSEOS0_(%"class.tensorflow::Variant"* %2, %"class.tensorflow::Variant"* nonnull align 8 dereferenceable(57) %call1) #11
  %call3 = call nonnull align 8 dereferenceable(57) %"class.tensorflow::Variant"* @_ZSt4moveIRN10tensorflow7VariantEEONSt16remove_referenceIT_E4typeEOS4_(%"class.tensorflow::Variant"* nonnull align 8 dereferenceable(57) %__tmp) #11
  %3 = load %"class.tensorflow::Variant"*, %"class.tensorflow::Variant"** %__b.addr, align 8
  %call4 = call nonnull align 8 dereferenceable(57) %"class.tensorflow::Variant"* @_ZN10tensorflow7VariantaSEOS0_(%"class.tensorflow::Variant"* %3, %"class.tensorflow::Variant"* nonnull align 8 dereferenceable(57) %call3) #11
  call void @_ZN10tensorflow7VariantD1Ev(%"class.tensorflow::Variant"* %__tmp) #11
  ret void
}

; Function Attrs: nounwind
declare dso_local void @_ZN10tensorflow7VariantD1Ev(%"class.tensorflow::Variant"*) unnamed_addr #3

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(57) %"class.tensorflow::Variant"* @_ZSt4moveIRN10tensorflow7VariantEEONSt16remove_referenceIT_E4typeEOS4_(%"class.tensorflow::Variant"* nonnull align 8 dereferenceable(57) %__t) #0 comdat {
entry:
  %__t.addr = alloca %"class.tensorflow::Variant"*, align 8
  store %"class.tensorflow::Variant"* %__t, %"class.tensorflow::Variant"** %__t.addr, align 8
  %0 = load %"class.tensorflow::Variant"*, %"class.tensorflow::Variant"** %__t.addr, align 8
  ret %"class.tensorflow::Variant"* %0
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow7VariantC2EOS0_(%"class.tensorflow::Variant"* %this, %"class.tensorflow::Variant"* nonnull align 8 dereferenceable(57) %other) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.tensorflow::Variant"*, align 8
  %other.addr = alloca %"class.tensorflow::Variant"*, align 8
  store %"class.tensorflow::Variant"* %this, %"class.tensorflow::Variant"** %this.addr, align 8
  store %"class.tensorflow::Variant"* %other, %"class.tensorflow::Variant"** %other.addr, align 8
  %this1 = load %"class.tensorflow::Variant"*, %"class.tensorflow::Variant"** %this.addr, align 8
  %is_inline_ = getelementptr inbounds %"class.tensorflow::Variant", %"class.tensorflow::Variant"* %this1, i32 0, i32 1
  %0 = load %"class.tensorflow::Variant"*, %"class.tensorflow::Variant"** %other.addr, align 8
  %call = invoke zeroext i1 @_ZNK10tensorflow7Variant13IsInlineValueEv(%"class.tensorflow::Variant"* %0)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  %frombool = zext i1 %call to i8
  store i8 %frombool, i8* %is_inline_, align 8
  %call3 = invoke zeroext i1 @_ZNK10tensorflow7Variant13IsInlineValueEv(%"class.tensorflow::Variant"* %this1)
          to label %invoke.cont2 unwind label %terminate.lpad

invoke.cont2:                                     ; preds = %invoke.cont
  br i1 %call3, label %if.then, label %if.else

if.then:                                          ; preds = %invoke.cont2
  %1 = getelementptr inbounds %"class.tensorflow::Variant", %"class.tensorflow::Variant"* %this1, i32 0, i32 0
  %inline_value_ = bitcast %union.anon.20* %1 to %"struct.tensorflow::Variant::InlineValue"*
  %2 = bitcast %"struct.tensorflow::Variant::InlineValue"* %inline_value_ to i8*
  %3 = bitcast i8* %2 to %"struct.tensorflow::Variant::InlineValue"*
  %4 = load %"class.tensorflow::Variant"*, %"class.tensorflow::Variant"** %other.addr, align 8
  %5 = getelementptr inbounds %"class.tensorflow::Variant", %"class.tensorflow::Variant"* %4, i32 0, i32 0
  %inline_value_4 = bitcast %union.anon.20* %5 to %"struct.tensorflow::Variant::InlineValue"*
  %call5 = call nonnull align 8 dereferenceable(56) %"struct.tensorflow::Variant::InlineValue"* @_ZSt4moveIRN10tensorflow7Variant11InlineValueEEONSt16remove_referenceIT_E4typeEOS5_(%"struct.tensorflow::Variant::InlineValue"* nonnull align 8 dereferenceable(56) %inline_value_4) #11
  call void @_ZN10tensorflow7Variant11InlineValueC2EOS1_(%"struct.tensorflow::Variant::InlineValue"* %3, %"struct.tensorflow::Variant::InlineValue"* nonnull align 8 dereferenceable(56) %call5) #11
  br label %if.end

if.else:                                          ; preds = %invoke.cont2
  %6 = getelementptr inbounds %"class.tensorflow::Variant", %"class.tensorflow::Variant"* %this1, i32 0, i32 0
  %heap_value_ = bitcast %union.anon.20* %6 to %"class.std::unique_ptr"*
  %7 = bitcast %"class.std::unique_ptr"* %heap_value_ to i8*
  %8 = bitcast i8* %7 to %"class.std::unique_ptr"*
  %9 = load %"class.tensorflow::Variant"*, %"class.tensorflow::Variant"** %other.addr, align 8
  %10 = getelementptr inbounds %"class.tensorflow::Variant", %"class.tensorflow::Variant"* %9, i32 0, i32 0
  %heap_value_6 = bitcast %union.anon.20* %10 to %"class.std::unique_ptr"*
  %call7 = call nonnull align 8 dereferenceable(8) %"class.std::unique_ptr"* @_ZSt4moveIRSt10unique_ptrIN10tensorflow7Variant14ValueInterfaceESt14default_deleteIS3_EEEONSt16remove_referenceIT_E4typeEOS9_(%"class.std::unique_ptr"* nonnull align 8 dereferenceable(8) %heap_value_6) #11
  call void @_ZNSt10unique_ptrIN10tensorflow7Variant14ValueInterfaceESt14default_deleteIS2_EEC2EOS5_(%"class.std::unique_ptr"* %8, %"class.std::unique_ptr"* nonnull align 8 dereferenceable(8) %call7) #11
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void

terminate.lpad:                                   ; preds = %invoke.cont, %entry
  %11 = landingpad { i8*, i32 }
          catch i8* null
  %12 = extractvalue { i8*, i32 } %11, 0
  call void @__clang_call_terminate(i8* %12) #16
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(57) %"class.tensorflow::Variant"* @_ZN10tensorflow7VariantaSEOS0_(%"class.tensorflow::Variant"* %this, %"class.tensorflow::Variant"* nonnull align 8 dereferenceable(57) %rhs) #0 comdat align 2 {
entry:
  %retval = alloca %"class.tensorflow::Variant"*, align 8
  %this.addr = alloca %"class.tensorflow::Variant"*, align 8
  %rhs.addr = alloca %"class.tensorflow::Variant"*, align 8
  %ref.tmp = alloca %"class.tensorflow::Variant", align 8
  store %"class.tensorflow::Variant"* %this, %"class.tensorflow::Variant"** %this.addr, align 8
  store %"class.tensorflow::Variant"* %rhs, %"class.tensorflow::Variant"** %rhs.addr, align 8
  %this1 = load %"class.tensorflow::Variant"*, %"class.tensorflow::Variant"** %this.addr, align 8
  %0 = load %"class.tensorflow::Variant"*, %"class.tensorflow::Variant"** %rhs.addr, align 8
  %cmp = icmp eq %"class.tensorflow::Variant"* %0, %this1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %"class.tensorflow::Variant"* %this1, %"class.tensorflow::Variant"** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %"class.tensorflow::Variant"*, %"class.tensorflow::Variant"** %rhs.addr, align 8
  %call = call nonnull align 8 dereferenceable(57) %"class.tensorflow::Variant"* @_ZSt4moveIRN10tensorflow7VariantEEONSt16remove_referenceIT_E4typeEOS4_(%"class.tensorflow::Variant"* nonnull align 8 dereferenceable(57) %1) #11
  call void @_ZN10tensorflow7VariantC2EOS0_(%"class.tensorflow::Variant"* %ref.tmp, %"class.tensorflow::Variant"* nonnull align 8 dereferenceable(57) %call) #11
  call void @_ZN10tensorflow7Variant4swapERS0_(%"class.tensorflow::Variant"* %ref.tmp, %"class.tensorflow::Variant"* nonnull align 8 dereferenceable(57) %this1) #11
  call void @_ZN10tensorflow7VariantD1Ev(%"class.tensorflow::Variant"* %ref.tmp) #11
  store %"class.tensorflow::Variant"* %this1, %"class.tensorflow::Variant"** %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %2 = load %"class.tensorflow::Variant"*, %"class.tensorflow::Variant"** %retval, align 8
  ret %"class.tensorflow::Variant"* %2
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow7Variant4swapERS0_(%"class.tensorflow::Variant"* %this, %"class.tensorflow::Variant"* nonnull align 8 dereferenceable(57) %other) #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.tensorflow::Variant"*, align 8
  %other.addr = alloca %"class.tensorflow::Variant"*, align 8
  %v = alloca %"class.std::unique_ptr", align 8
  %v51 = alloca %"class.std::unique_ptr", align 8
  store %"class.tensorflow::Variant"* %this, %"class.tensorflow::Variant"** %this.addr, align 8
  store %"class.tensorflow::Variant"* %other, %"class.tensorflow::Variant"** %other.addr, align 8
  %this1 = load %"class.tensorflow::Variant"*, %"class.tensorflow::Variant"** %this.addr, align 8
  %call = invoke zeroext i1 @_ZNK10tensorflow7Variant8is_emptyEv(%"class.tensorflow::Variant"* %this1)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  br i1 %call, label %if.then, label %if.else7

if.then:                                          ; preds = %invoke.cont
  %0 = load %"class.tensorflow::Variant"*, %"class.tensorflow::Variant"** %other.addr, align 8
  %call3 = invoke zeroext i1 @_ZNK10tensorflow7Variant13IsInlineValueEv(%"class.tensorflow::Variant"* %0)
          to label %invoke.cont2 unwind label %terminate.lpad

invoke.cont2:                                     ; preds = %if.then
  br i1 %call3, label %if.then4, label %if.else

if.then4:                                         ; preds = %invoke.cont2
  %1 = load %"class.tensorflow::Variant"*, %"class.tensorflow::Variant"** %other.addr, align 8
  %2 = getelementptr inbounds %"class.tensorflow::Variant", %"class.tensorflow::Variant"* %1, i32 0, i32 0
  %inline_value_ = bitcast %union.anon.20* %2 to %"struct.tensorflow::Variant::InlineValue"*
  %call5 = call nonnull align 8 dereferenceable(56) %"struct.tensorflow::Variant::InlineValue"* @_ZSt4moveIRN10tensorflow7Variant11InlineValueEEONSt16remove_referenceIT_E4typeEOS5_(%"struct.tensorflow::Variant::InlineValue"* nonnull align 8 dereferenceable(56) %inline_value_) #11
  call void @_ZN10tensorflow7Variant17ResetAndSetInlineIJNS0_11InlineValueEEEEvDpOT_(%"class.tensorflow::Variant"* %this1, %"struct.tensorflow::Variant::InlineValue"* nonnull align 8 dereferenceable(56) %call5) #11
  br label %if.end

if.else:                                          ; preds = %invoke.cont2
  %3 = load %"class.tensorflow::Variant"*, %"class.tensorflow::Variant"** %other.addr, align 8
  %4 = getelementptr inbounds %"class.tensorflow::Variant", %"class.tensorflow::Variant"* %3, i32 0, i32 0
  %heap_value_ = bitcast %union.anon.20* %4 to %"class.std::unique_ptr"*
  %call6 = call nonnull align 8 dereferenceable(8) %"class.std::unique_ptr"* @_ZSt4moveIRSt10unique_ptrIN10tensorflow7Variant14ValueInterfaceESt14default_deleteIS3_EEEONSt16remove_referenceIT_E4typeEOS9_(%"class.std::unique_ptr"* nonnull align 8 dereferenceable(8) %heap_value_) #11
  call void @_ZN10tensorflow7Variant15ResetAndSetHeapIJSt10unique_ptrINS0_14ValueInterfaceESt14default_deleteIS3_EEEEEvDpOT_(%"class.tensorflow::Variant"* %this1, %"class.std::unique_ptr"* nonnull align 8 dereferenceable(8) %call6) #11
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then4
  %5 = load %"class.tensorflow::Variant"*, %"class.tensorflow::Variant"** %other.addr, align 8
  call void @_ZN10tensorflow7Variant5clearEv(%"class.tensorflow::Variant"* %5) #11
  br label %if.end61

if.else7:                                         ; preds = %invoke.cont
  %6 = load %"class.tensorflow::Variant"*, %"class.tensorflow::Variant"** %other.addr, align 8
  %call9 = invoke zeroext i1 @_ZNK10tensorflow7Variant8is_emptyEv(%"class.tensorflow::Variant"* %6)
          to label %invoke.cont8 unwind label %terminate.lpad

invoke.cont8:                                     ; preds = %if.else7
  br i1 %call9, label %if.then10, label %if.else20

if.then10:                                        ; preds = %invoke.cont8
  %call12 = invoke zeroext i1 @_ZNK10tensorflow7Variant13IsInlineValueEv(%"class.tensorflow::Variant"* %this1)
          to label %invoke.cont11 unwind label %terminate.lpad

invoke.cont11:                                    ; preds = %if.then10
  br i1 %call12, label %if.then13, label %if.else16

if.then13:                                        ; preds = %invoke.cont11
  %7 = load %"class.tensorflow::Variant"*, %"class.tensorflow::Variant"** %other.addr, align 8
  %8 = getelementptr inbounds %"class.tensorflow::Variant", %"class.tensorflow::Variant"* %this1, i32 0, i32 0
  %inline_value_14 = bitcast %union.anon.20* %8 to %"struct.tensorflow::Variant::InlineValue"*
  %call15 = call nonnull align 8 dereferenceable(56) %"struct.tensorflow::Variant::InlineValue"* @_ZSt4moveIRN10tensorflow7Variant11InlineValueEEONSt16remove_referenceIT_E4typeEOS5_(%"struct.tensorflow::Variant::InlineValue"* nonnull align 8 dereferenceable(56) %inline_value_14) #11
  call void @_ZN10tensorflow7Variant17ResetAndSetInlineIJNS0_11InlineValueEEEEvDpOT_(%"class.tensorflow::Variant"* %7, %"struct.tensorflow::Variant::InlineValue"* nonnull align 8 dereferenceable(56) %call15) #11
  br label %if.end19

if.else16:                                        ; preds = %invoke.cont11
  %9 = load %"class.tensorflow::Variant"*, %"class.tensorflow::Variant"** %other.addr, align 8
  %10 = getelementptr inbounds %"class.tensorflow::Variant", %"class.tensorflow::Variant"* %this1, i32 0, i32 0
  %heap_value_17 = bitcast %union.anon.20* %10 to %"class.std::unique_ptr"*
  %call18 = call nonnull align 8 dereferenceable(8) %"class.std::unique_ptr"* @_ZSt4moveIRSt10unique_ptrIN10tensorflow7Variant14ValueInterfaceESt14default_deleteIS3_EEEONSt16remove_referenceIT_E4typeEOS9_(%"class.std::unique_ptr"* nonnull align 8 dereferenceable(8) %heap_value_17) #11
  call void @_ZN10tensorflow7Variant15ResetAndSetHeapIJSt10unique_ptrINS0_14ValueInterfaceESt14default_deleteIS3_EEEEEvDpOT_(%"class.tensorflow::Variant"* %9, %"class.std::unique_ptr"* nonnull align 8 dereferenceable(8) %call18) #11
  br label %if.end19

if.end19:                                         ; preds = %if.else16, %if.then13
  call void @_ZN10tensorflow7Variant5clearEv(%"class.tensorflow::Variant"* %this1) #11
  br label %if.end60

if.else20:                                        ; preds = %invoke.cont8
  %11 = load %"class.tensorflow::Variant"*, %"class.tensorflow::Variant"** %other.addr, align 8
  %call22 = invoke zeroext i1 @_ZNK10tensorflow7Variant13IsInlineValueEv(%"class.tensorflow::Variant"* %11)
          to label %invoke.cont21 unwind label %terminate.lpad

invoke.cont21:                                    ; preds = %if.else20
  br i1 %call22, label %land.lhs.true, label %if.else29

land.lhs.true:                                    ; preds = %invoke.cont21
  %call24 = invoke zeroext i1 @_ZNK10tensorflow7Variant13IsInlineValueEv(%"class.tensorflow::Variant"* %this1)
          to label %invoke.cont23 unwind label %terminate.lpad

invoke.cont23:                                    ; preds = %land.lhs.true
  br i1 %call24, label %if.then25, label %if.else29

if.then25:                                        ; preds = %invoke.cont23
  %12 = getelementptr inbounds %"class.tensorflow::Variant", %"class.tensorflow::Variant"* %this1, i32 0, i32 0
  %inline_value_26 = bitcast %union.anon.20* %12 to %"struct.tensorflow::Variant::InlineValue"*
  %13 = load %"class.tensorflow::Variant"*, %"class.tensorflow::Variant"** %other.addr, align 8
  %14 = getelementptr inbounds %"class.tensorflow::Variant", %"class.tensorflow::Variant"* %13, i32 0, i32 0
  %inline_value_27 = bitcast %union.anon.20* %14 to %"struct.tensorflow::Variant::InlineValue"*
  invoke void @_ZSt4swapIN10tensorflow7Variant11InlineValueEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SF_(%"struct.tensorflow::Variant::InlineValue"* nonnull align 8 dereferenceable(56) %inline_value_26, %"struct.tensorflow::Variant::InlineValue"* nonnull align 8 dereferenceable(56) %inline_value_27)
          to label %invoke.cont28 unwind label %terminate.lpad

invoke.cont28:                                    ; preds = %if.then25
  br label %if.end59

if.else29:                                        ; preds = %invoke.cont23, %invoke.cont21
  %15 = load %"class.tensorflow::Variant"*, %"class.tensorflow::Variant"** %other.addr, align 8
  %call31 = invoke zeroext i1 @_ZNK10tensorflow7Variant13IsInlineValueEv(%"class.tensorflow::Variant"* %15)
          to label %invoke.cont30 unwind label %terminate.lpad

invoke.cont30:                                    ; preds = %if.else29
  br i1 %call31, label %if.else38, label %land.lhs.true32

land.lhs.true32:                                  ; preds = %invoke.cont30
  %call34 = invoke zeroext i1 @_ZNK10tensorflow7Variant13IsInlineValueEv(%"class.tensorflow::Variant"* %this1)
          to label %invoke.cont33 unwind label %terminate.lpad

invoke.cont33:                                    ; preds = %land.lhs.true32
  br i1 %call34, label %if.else38, label %if.then35

if.then35:                                        ; preds = %invoke.cont33
  %16 = getelementptr inbounds %"class.tensorflow::Variant", %"class.tensorflow::Variant"* %this1, i32 0, i32 0
  %heap_value_36 = bitcast %union.anon.20* %16 to %"class.std::unique_ptr"*
  %17 = load %"class.tensorflow::Variant"*, %"class.tensorflow::Variant"** %other.addr, align 8
  %18 = getelementptr inbounds %"class.tensorflow::Variant", %"class.tensorflow::Variant"* %17, i32 0, i32 0
  %heap_value_37 = bitcast %union.anon.20* %18 to %"class.std::unique_ptr"*
  call void @_ZSt4swapIN10tensorflow7Variant14ValueInterfaceESt14default_deleteIS2_EENSt9enable_ifIXsr14__is_swappableIT0_EE5valueEvE4typeERSt10unique_ptrIT_S6_ESC_(%"class.std::unique_ptr"* nonnull align 8 dereferenceable(8) %heap_value_36, %"class.std::unique_ptr"* nonnull align 8 dereferenceable(8) %heap_value_37) #11
  br label %if.end58

if.else38:                                        ; preds = %invoke.cont33, %invoke.cont30
  %19 = load %"class.tensorflow::Variant"*, %"class.tensorflow::Variant"** %other.addr, align 8
  %call40 = invoke zeroext i1 @_ZNK10tensorflow7Variant13IsInlineValueEv(%"class.tensorflow::Variant"* %19)
          to label %invoke.cont39 unwind label %terminate.lpad

invoke.cont39:                                    ; preds = %if.else38
  br i1 %call40, label %land.lhs.true41, label %if.else50

land.lhs.true41:                                  ; preds = %invoke.cont39
  %call43 = invoke zeroext i1 @_ZNK10tensorflow7Variant13IsInlineValueEv(%"class.tensorflow::Variant"* %this1)
          to label %invoke.cont42 unwind label %terminate.lpad

invoke.cont42:                                    ; preds = %land.lhs.true41
  br i1 %call43, label %if.else50, label %if.then44

if.then44:                                        ; preds = %invoke.cont42
  %20 = getelementptr inbounds %"class.tensorflow::Variant", %"class.tensorflow::Variant"* %this1, i32 0, i32 0
  %heap_value_45 = bitcast %union.anon.20* %20 to %"class.std::unique_ptr"*
  %call46 = call nonnull align 8 dereferenceable(8) %"class.std::unique_ptr"* @_ZSt4moveIRSt10unique_ptrIN10tensorflow7Variant14ValueInterfaceESt14default_deleteIS3_EEEONSt16remove_referenceIT_E4typeEOS9_(%"class.std::unique_ptr"* nonnull align 8 dereferenceable(8) %heap_value_45) #11
  call void @_ZNSt10unique_ptrIN10tensorflow7Variant14ValueInterfaceESt14default_deleteIS2_EEC2EOS5_(%"class.std::unique_ptr"* %v, %"class.std::unique_ptr"* nonnull align 8 dereferenceable(8) %call46) #11
  %21 = load %"class.tensorflow::Variant"*, %"class.tensorflow::Variant"** %other.addr, align 8
  %22 = getelementptr inbounds %"class.tensorflow::Variant", %"class.tensorflow::Variant"* %21, i32 0, i32 0
  %inline_value_47 = bitcast %union.anon.20* %22 to %"struct.tensorflow::Variant::InlineValue"*
  %call48 = call nonnull align 8 dereferenceable(56) %"struct.tensorflow::Variant::InlineValue"* @_ZSt4moveIRN10tensorflow7Variant11InlineValueEEONSt16remove_referenceIT_E4typeEOS5_(%"struct.tensorflow::Variant::InlineValue"* nonnull align 8 dereferenceable(56) %inline_value_47) #11
  call void @_ZN10tensorflow7Variant17ResetAndSetInlineIJNS0_11InlineValueEEEEvDpOT_(%"class.tensorflow::Variant"* %this1, %"struct.tensorflow::Variant::InlineValue"* nonnull align 8 dereferenceable(56) %call48) #11
  %23 = load %"class.tensorflow::Variant"*, %"class.tensorflow::Variant"** %other.addr, align 8
  %call49 = call nonnull align 8 dereferenceable(8) %"class.std::unique_ptr"* @_ZSt4moveIRSt10unique_ptrIN10tensorflow7Variant14ValueInterfaceESt14default_deleteIS3_EEEONSt16remove_referenceIT_E4typeEOS9_(%"class.std::unique_ptr"* nonnull align 8 dereferenceable(8) %v) #11
  call void @_ZN10tensorflow7Variant15ResetAndSetHeapIJSt10unique_ptrINS0_14ValueInterfaceESt14default_deleteIS3_EEEEEvDpOT_(%"class.tensorflow::Variant"* %23, %"class.std::unique_ptr"* nonnull align 8 dereferenceable(8) %call49) #11
  call void @_ZNSt10unique_ptrIN10tensorflow7Variant14ValueInterfaceESt14default_deleteIS2_EED2Ev(%"class.std::unique_ptr"* %v) #11
  br label %if.end57

if.else50:                                        ; preds = %invoke.cont42, %invoke.cont39
  %24 = load %"class.tensorflow::Variant"*, %"class.tensorflow::Variant"** %other.addr, align 8
  %25 = getelementptr inbounds %"class.tensorflow::Variant", %"class.tensorflow::Variant"* %24, i32 0, i32 0
  %heap_value_52 = bitcast %union.anon.20* %25 to %"class.std::unique_ptr"*
  %call53 = call nonnull align 8 dereferenceable(8) %"class.std::unique_ptr"* @_ZSt4moveIRSt10unique_ptrIN10tensorflow7Variant14ValueInterfaceESt14default_deleteIS3_EEEONSt16remove_referenceIT_E4typeEOS9_(%"class.std::unique_ptr"* nonnull align 8 dereferenceable(8) %heap_value_52) #11
  call void @_ZNSt10unique_ptrIN10tensorflow7Variant14ValueInterfaceESt14default_deleteIS2_EEC2EOS5_(%"class.std::unique_ptr"* %v51, %"class.std::unique_ptr"* nonnull align 8 dereferenceable(8) %call53) #11
  %26 = load %"class.tensorflow::Variant"*, %"class.tensorflow::Variant"** %other.addr, align 8
  %27 = getelementptr inbounds %"class.tensorflow::Variant", %"class.tensorflow::Variant"* %this1, i32 0, i32 0
  %inline_value_54 = bitcast %union.anon.20* %27 to %"struct.tensorflow::Variant::InlineValue"*
  %call55 = call nonnull align 8 dereferenceable(56) %"struct.tensorflow::Variant::InlineValue"* @_ZSt4moveIRN10tensorflow7Variant11InlineValueEEONSt16remove_referenceIT_E4typeEOS5_(%"struct.tensorflow::Variant::InlineValue"* nonnull align 8 dereferenceable(56) %inline_value_54) #11
  call void @_ZN10tensorflow7Variant17ResetAndSetInlineIJNS0_11InlineValueEEEEvDpOT_(%"class.tensorflow::Variant"* %26, %"struct.tensorflow::Variant::InlineValue"* nonnull align 8 dereferenceable(56) %call55) #11
  %call56 = call nonnull align 8 dereferenceable(8) %"class.std::unique_ptr"* @_ZSt4moveIRSt10unique_ptrIN10tensorflow7Variant14ValueInterfaceESt14default_deleteIS3_EEEONSt16remove_referenceIT_E4typeEOS9_(%"class.std::unique_ptr"* nonnull align 8 dereferenceable(8) %v51) #11
  call void @_ZN10tensorflow7Variant15ResetAndSetHeapIJSt10unique_ptrINS0_14ValueInterfaceESt14default_deleteIS3_EEEEEvDpOT_(%"class.tensorflow::Variant"* %this1, %"class.std::unique_ptr"* nonnull align 8 dereferenceable(8) %call56) #11
  call void @_ZNSt10unique_ptrIN10tensorflow7Variant14ValueInterfaceESt14default_deleteIS2_EED2Ev(%"class.std::unique_ptr"* %v51) #11
  br label %if.end57

if.end57:                                         ; preds = %if.else50, %if.then44
  br label %if.end58

if.end58:                                         ; preds = %if.end57, %if.then35
  br label %if.end59

if.end59:                                         ; preds = %if.end58, %invoke.cont28
  br label %if.end60

if.end60:                                         ; preds = %if.end59, %if.end19
  br label %if.end61

if.end61:                                         ; preds = %if.end60, %if.end
  ret void

terminate.lpad:                                   ; preds = %land.lhs.true41, %if.else38, %land.lhs.true32, %if.else29, %if.then25, %land.lhs.true, %if.else20, %if.then10, %if.else7, %if.then, %entry
  %28 = landingpad { i8*, i32 }
          catch i8* null
  %29 = extractvalue { i8*, i32 } %28, 0
  call void @__clang_call_terminate(i8* %29) #16
  unreachable
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local zeroext i1 @_ZNK10tensorflow7Variant8is_emptyEv(%"class.tensorflow::Variant"* %this) #6 comdat align 2 {
entry:
  %this.addr = alloca %"class.tensorflow::Variant"*, align 8
  store %"class.tensorflow::Variant"* %this, %"class.tensorflow::Variant"** %this.addr, align 8
  %this1 = load %"class.tensorflow::Variant"*, %"class.tensorflow::Variant"** %this.addr, align 8
  %call = call %"class.tensorflow::AbstractTensorInterface"* @_ZNK10tensorflow7Variant8GetValueEv(%"class.tensorflow::Variant"* %this1)
  %cmp = icmp eq %"class.tensorflow::AbstractTensorInterface"* %call, null
  ret i1 %cmp
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local zeroext i1 @_ZNK10tensorflow7Variant13IsInlineValueEv(%"class.tensorflow::Variant"* %this) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.tensorflow::Variant"*, align 8
  store %"class.tensorflow::Variant"* %this, %"class.tensorflow::Variant"** %this.addr, align 8
  %this1 = load %"class.tensorflow::Variant"*, %"class.tensorflow::Variant"** %this.addr, align 8
  %is_inline_ = getelementptr inbounds %"class.tensorflow::Variant", %"class.tensorflow::Variant"* %this1, i32 0, i32 1
  %0 = load i8, i8* %is_inline_, align 8
  %tobool = trunc i8 %0 to i1
  ret i1 %tobool
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(56) %"struct.tensorflow::Variant::InlineValue"* @_ZSt4moveIRN10tensorflow7Variant11InlineValueEEONSt16remove_referenceIT_E4typeEOS5_(%"struct.tensorflow::Variant::InlineValue"* nonnull align 8 dereferenceable(56) %__t) #0 comdat {
entry:
  %__t.addr = alloca %"struct.tensorflow::Variant::InlineValue"*, align 8
  store %"struct.tensorflow::Variant::InlineValue"* %__t, %"struct.tensorflow::Variant::InlineValue"** %__t.addr, align 8
  %0 = load %"struct.tensorflow::Variant::InlineValue"*, %"struct.tensorflow::Variant::InlineValue"** %__t.addr, align 8
  ret %"struct.tensorflow::Variant::InlineValue"* %0
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow7Variant17ResetAndSetInlineIJNS0_11InlineValueEEEEvDpOT_(%"class.tensorflow::Variant"* %this, %"struct.tensorflow::Variant::InlineValue"* nonnull align 8 dereferenceable(56) %args) #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.tensorflow::Variant"*, align 8
  %args.addr = alloca %"struct.tensorflow::Variant::InlineValue"*, align 8
  store %"class.tensorflow::Variant"* %this, %"class.tensorflow::Variant"** %this.addr, align 8
  store %"struct.tensorflow::Variant::InlineValue"* %args, %"struct.tensorflow::Variant::InlineValue"** %args.addr, align 8
  %this1 = load %"class.tensorflow::Variant"*, %"class.tensorflow::Variant"** %this.addr, align 8
  invoke void @_ZN10tensorflow7Variant11ResetMemoryEv(%"class.tensorflow::Variant"* %this1)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  %0 = getelementptr inbounds %"class.tensorflow::Variant", %"class.tensorflow::Variant"* %this1, i32 0, i32 0
  %inline_value_ = bitcast %union.anon.20* %0 to %"struct.tensorflow::Variant::InlineValue"*
  %1 = bitcast %"struct.tensorflow::Variant::InlineValue"* %inline_value_ to i8*
  %2 = bitcast i8* %1 to %"struct.tensorflow::Variant::InlineValue"*
  %3 = load %"struct.tensorflow::Variant::InlineValue"*, %"struct.tensorflow::Variant::InlineValue"** %args.addr, align 8
  %call = call nonnull align 8 dereferenceable(56) %"struct.tensorflow::Variant::InlineValue"* @_ZSt7forwardIN10tensorflow7Variant11InlineValueEEOT_RNSt16remove_referenceIS3_E4typeE(%"struct.tensorflow::Variant::InlineValue"* nonnull align 8 dereferenceable(56) %3) #11
  call void @_ZN10tensorflow7Variant11InlineValueC2EOS1_(%"struct.tensorflow::Variant::InlineValue"* %2, %"struct.tensorflow::Variant::InlineValue"* nonnull align 8 dereferenceable(56) %call) #11
  %is_inline_ = getelementptr inbounds %"class.tensorflow::Variant", %"class.tensorflow::Variant"* %this1, i32 0, i32 1
  store i8 1, i8* %is_inline_, align 8
  ret void

terminate.lpad:                                   ; preds = %entry
  %4 = landingpad { i8*, i32 }
          catch i8* null
  %5 = extractvalue { i8*, i32 } %4, 0
  call void @__clang_call_terminate(i8* %5) #16
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) %"class.std::unique_ptr"* @_ZSt4moveIRSt10unique_ptrIN10tensorflow7Variant14ValueInterfaceESt14default_deleteIS3_EEEONSt16remove_referenceIT_E4typeEOS9_(%"class.std::unique_ptr"* nonnull align 8 dereferenceable(8) %__t) #0 comdat {
entry:
  %__t.addr = alloca %"class.std::unique_ptr"*, align 8
  store %"class.std::unique_ptr"* %__t, %"class.std::unique_ptr"** %__t.addr, align 8
  %0 = load %"class.std::unique_ptr"*, %"class.std::unique_ptr"** %__t.addr, align 8
  ret %"class.std::unique_ptr"* %0
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow7Variant15ResetAndSetHeapIJSt10unique_ptrINS0_14ValueInterfaceESt14default_deleteIS3_EEEEEvDpOT_(%"class.tensorflow::Variant"* %this, %"class.std::unique_ptr"* nonnull align 8 dereferenceable(8) %args) #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.tensorflow::Variant"*, align 8
  %args.addr = alloca %"class.std::unique_ptr"*, align 8
  store %"class.tensorflow::Variant"* %this, %"class.tensorflow::Variant"** %this.addr, align 8
  store %"class.std::unique_ptr"* %args, %"class.std::unique_ptr"** %args.addr, align 8
  %this1 = load %"class.tensorflow::Variant"*, %"class.tensorflow::Variant"** %this.addr, align 8
  invoke void @_ZN10tensorflow7Variant11ResetMemoryEv(%"class.tensorflow::Variant"* %this1)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  %0 = getelementptr inbounds %"class.tensorflow::Variant", %"class.tensorflow::Variant"* %this1, i32 0, i32 0
  %heap_value_ = bitcast %union.anon.20* %0 to %"class.std::unique_ptr"*
  %1 = bitcast %"class.std::unique_ptr"* %heap_value_ to i8*
  %2 = bitcast i8* %1 to %"class.std::unique_ptr"*
  %3 = load %"class.std::unique_ptr"*, %"class.std::unique_ptr"** %args.addr, align 8
  %call = call nonnull align 8 dereferenceable(8) %"class.std::unique_ptr"* @_ZSt7forwardISt10unique_ptrIN10tensorflow7Variant14ValueInterfaceESt14default_deleteIS3_EEEOT_RNSt16remove_referenceIS7_E4typeE(%"class.std::unique_ptr"* nonnull align 8 dereferenceable(8) %3) #11
  call void @_ZNSt10unique_ptrIN10tensorflow7Variant14ValueInterfaceESt14default_deleteIS2_EEC2EOS5_(%"class.std::unique_ptr"* %2, %"class.std::unique_ptr"* nonnull align 8 dereferenceable(8) %call) #11
  %is_inline_ = getelementptr inbounds %"class.tensorflow::Variant", %"class.tensorflow::Variant"* %this1, i32 0, i32 1
  store i8 0, i8* %is_inline_, align 8
  ret void

terminate.lpad:                                   ; preds = %entry
  %4 = landingpad { i8*, i32 }
          catch i8* null
  %5 = extractvalue { i8*, i32 } %4, 0
  call void @__clang_call_terminate(i8* %5) #16
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow7Variant5clearEv(%"class.tensorflow::Variant"* %this) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.tensorflow::Variant"*, align 8
  %ref.tmp = alloca i8*, align 8
  store %"class.tensorflow::Variant"* %this, %"class.tensorflow::Variant"** %this.addr, align 8
  %this1 = load %"class.tensorflow::Variant"*, %"class.tensorflow::Variant"** %this.addr, align 8
  store i8* null, i8** %ref.tmp, align 8
  call void @_ZN10tensorflow7Variant15ResetAndSetHeapIJDnEEEvDpOT_(%"class.tensorflow::Variant"* %this1, i8** nonnull align 8 dereferenceable(8) %ref.tmp) #11
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZSt4swapIN10tensorflow7Variant11InlineValueEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SF_(%"struct.tensorflow::Variant::InlineValue"* nonnull align 8 dereferenceable(56) %__a, %"struct.tensorflow::Variant::InlineValue"* nonnull align 8 dereferenceable(56) %__b) #6 comdat personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__a.addr = alloca %"struct.tensorflow::Variant::InlineValue"*, align 8
  %__b.addr = alloca %"struct.tensorflow::Variant::InlineValue"*, align 8
  %__tmp = alloca %"struct.tensorflow::Variant::InlineValue", align 8
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  store %"struct.tensorflow::Variant::InlineValue"* %__a, %"struct.tensorflow::Variant::InlineValue"** %__a.addr, align 8
  store %"struct.tensorflow::Variant::InlineValue"* %__b, %"struct.tensorflow::Variant::InlineValue"** %__b.addr, align 8
  %0 = load %"struct.tensorflow::Variant::InlineValue"*, %"struct.tensorflow::Variant::InlineValue"** %__a.addr, align 8
  %call = call nonnull align 8 dereferenceable(56) %"struct.tensorflow::Variant::InlineValue"* @_ZSt4moveIRN10tensorflow7Variant11InlineValueEEONSt16remove_referenceIT_E4typeEOS5_(%"struct.tensorflow::Variant::InlineValue"* nonnull align 8 dereferenceable(56) %0) #11
  call void @_ZN10tensorflow7Variant11InlineValueC2EOS1_(%"struct.tensorflow::Variant::InlineValue"* %__tmp, %"struct.tensorflow::Variant::InlineValue"* nonnull align 8 dereferenceable(56) %call) #11
  %1 = load %"struct.tensorflow::Variant::InlineValue"*, %"struct.tensorflow::Variant::InlineValue"** %__b.addr, align 8
  %call1 = call nonnull align 8 dereferenceable(56) %"struct.tensorflow::Variant::InlineValue"* @_ZSt4moveIRN10tensorflow7Variant11InlineValueEEONSt16remove_referenceIT_E4typeEOS5_(%"struct.tensorflow::Variant::InlineValue"* nonnull align 8 dereferenceable(56) %1) #11
  %2 = load %"struct.tensorflow::Variant::InlineValue"*, %"struct.tensorflow::Variant::InlineValue"** %__a.addr, align 8
  %call2 = invoke nonnull align 8 dereferenceable(56) %"struct.tensorflow::Variant::InlineValue"* @_ZN10tensorflow7Variant11InlineValueaSEOS1_(%"struct.tensorflow::Variant::InlineValue"* %2, %"struct.tensorflow::Variant::InlineValue"* nonnull align 8 dereferenceable(56) %call1)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %call3 = call nonnull align 8 dereferenceable(56) %"struct.tensorflow::Variant::InlineValue"* @_ZSt4moveIRN10tensorflow7Variant11InlineValueEEONSt16remove_referenceIT_E4typeEOS5_(%"struct.tensorflow::Variant::InlineValue"* nonnull align 8 dereferenceable(56) %__tmp) #11
  %3 = load %"struct.tensorflow::Variant::InlineValue"*, %"struct.tensorflow::Variant::InlineValue"** %__b.addr, align 8
  %call5 = invoke nonnull align 8 dereferenceable(56) %"struct.tensorflow::Variant::InlineValue"* @_ZN10tensorflow7Variant11InlineValueaSEOS1_(%"struct.tensorflow::Variant::InlineValue"* %3, %"struct.tensorflow::Variant::InlineValue"* nonnull align 8 dereferenceable(56) %call3)
          to label %invoke.cont4 unwind label %lpad

invoke.cont4:                                     ; preds = %invoke.cont
  call void @_ZN10tensorflow7Variant11InlineValueD2Ev(%"struct.tensorflow::Variant::InlineValue"* %__tmp) #11
  ret void

lpad:                                             ; preds = %invoke.cont, %entry
  %4 = landingpad { i8*, i32 }
          cleanup
  %5 = extractvalue { i8*, i32 } %4, 0
  store i8* %5, i8** %exn.slot, align 8
  %6 = extractvalue { i8*, i32 } %4, 1
  store i32 %6, i32* %ehselector.slot, align 4
  call void @_ZN10tensorflow7Variant11InlineValueD2Ev(%"struct.tensorflow::Variant::InlineValue"* %__tmp) #11
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val6 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val6
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZSt4swapIN10tensorflow7Variant14ValueInterfaceESt14default_deleteIS2_EENSt9enable_ifIXsr14__is_swappableIT0_EE5valueEvE4typeERSt10unique_ptrIT_S6_ESC_(%"class.std::unique_ptr"* nonnull align 8 dereferenceable(8) %__x, %"class.std::unique_ptr"* nonnull align 8 dereferenceable(8) %__y) #0 comdat {
entry:
  %__x.addr = alloca %"class.std::unique_ptr"*, align 8
  %__y.addr = alloca %"class.std::unique_ptr"*, align 8
  store %"class.std::unique_ptr"* %__x, %"class.std::unique_ptr"** %__x.addr, align 8
  store %"class.std::unique_ptr"* %__y, %"class.std::unique_ptr"** %__y.addr, align 8
  %0 = load %"class.std::unique_ptr"*, %"class.std::unique_ptr"** %__x.addr, align 8
  %1 = load %"class.std::unique_ptr"*, %"class.std::unique_ptr"** %__y.addr, align 8
  call void @_ZNSt10unique_ptrIN10tensorflow7Variant14ValueInterfaceESt14default_deleteIS2_EE4swapERS5_(%"class.std::unique_ptr"* %0, %"class.std::unique_ptr"* nonnull align 8 dereferenceable(8) %1) #11
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt10unique_ptrIN10tensorflow7Variant14ValueInterfaceESt14default_deleteIS2_EEC2EOS5_(%"class.std::unique_ptr"* %this, %"class.std::unique_ptr"* nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::unique_ptr"*, align 8
  %.addr = alloca %"class.std::unique_ptr"*, align 8
  store %"class.std::unique_ptr"* %this, %"class.std::unique_ptr"** %this.addr, align 8
  store %"class.std::unique_ptr"* %0, %"class.std::unique_ptr"** %.addr, align 8
  %this1 = load %"class.std::unique_ptr"*, %"class.std::unique_ptr"** %this.addr, align 8
  %_M_t = getelementptr inbounds %"class.std::unique_ptr", %"class.std::unique_ptr"* %this1, i32 0, i32 0
  %1 = load %"class.std::unique_ptr"*, %"class.std::unique_ptr"** %.addr, align 8
  %_M_t2 = getelementptr inbounds %"class.std::unique_ptr", %"class.std::unique_ptr"* %1, i32 0, i32 0
  call void @_ZNSt15__uniq_ptr_dataIN10tensorflow7Variant14ValueInterfaceESt14default_deleteIS2_ELb1ELb1EEC2EOS5_(%"struct.std::__uniq_ptr_data"* %_M_t, %"struct.std::__uniq_ptr_data"* nonnull align 8 dereferenceable(8) %_M_t2) #11
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt10unique_ptrIN10tensorflow7Variant14ValueInterfaceESt14default_deleteIS2_EED2Ev(%"class.std::unique_ptr"* %this) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::unique_ptr"*, align 8
  %__ptr = alloca %"class.tensorflow::AbstractTensorInterface"**, align 8
  store %"class.std::unique_ptr"* %this, %"class.std::unique_ptr"** %this.addr, align 8
  %this1 = load %"class.std::unique_ptr"*, %"class.std::unique_ptr"** %this.addr, align 8
  %_M_t = getelementptr inbounds %"class.std::unique_ptr", %"class.std::unique_ptr"* %this1, i32 0, i32 0
  %0 = bitcast %"struct.std::__uniq_ptr_data"* %_M_t to %"class.std::__uniq_ptr_impl"*
  %call = invoke nonnull align 8 dereferenceable(8) %"class.tensorflow::AbstractTensorInterface"** @_ZNSt15__uniq_ptr_implIN10tensorflow7Variant14ValueInterfaceESt14default_deleteIS2_EE6_M_ptrEv(%"class.std::__uniq_ptr_impl"* %0)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  store %"class.tensorflow::AbstractTensorInterface"** %call, %"class.tensorflow::AbstractTensorInterface"*** %__ptr, align 8
  %1 = load %"class.tensorflow::AbstractTensorInterface"**, %"class.tensorflow::AbstractTensorInterface"*** %__ptr, align 8
  %2 = load %"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"** %1, align 8
  %cmp = icmp ne %"class.tensorflow::AbstractTensorInterface"* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %invoke.cont
  %call2 = call nonnull align 1 dereferenceable(1) %"class.std::ios_base::Init"* @_ZNSt10unique_ptrIN10tensorflow7Variant14ValueInterfaceESt14default_deleteIS2_EE11get_deleterEv(%"class.std::unique_ptr"* %this1) #11
  %3 = load %"class.tensorflow::AbstractTensorInterface"**, %"class.tensorflow::AbstractTensorInterface"*** %__ptr, align 8
  %call3 = call nonnull align 8 dereferenceable(8) %"class.tensorflow::AbstractTensorInterface"** @_ZSt4moveIRPN10tensorflow7Variant14ValueInterfaceEEONSt16remove_referenceIT_E4typeEOS6_(%"class.tensorflow::AbstractTensorInterface"** nonnull align 8 dereferenceable(8) %3) #11
  %4 = load %"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"** %call3, align 8
  invoke void @_ZNKSt14default_deleteIN10tensorflow7Variant14ValueInterfaceEEclEPS2_(%"class.std::ios_base::Init"* %call2, %"class.tensorflow::AbstractTensorInterface"* %4)
          to label %invoke.cont4 unwind label %terminate.lpad

invoke.cont4:                                     ; preds = %if.then
  br label %if.end

if.end:                                           ; preds = %invoke.cont4, %invoke.cont
  %5 = load %"class.tensorflow::AbstractTensorInterface"**, %"class.tensorflow::AbstractTensorInterface"*** %__ptr, align 8
  store %"class.tensorflow::AbstractTensorInterface"* null, %"class.tensorflow::AbstractTensorInterface"** %5, align 8
  ret void

terminate.lpad:                                   ; preds = %if.then, %entry
  %6 = landingpad { i8*, i32 }
          catch i8* null
  %7 = extractvalue { i8*, i32 } %6, 0
  call void @__clang_call_terminate(i8* %7) #16
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) %"class.tensorflow::AbstractTensorInterface"** @_ZNSt15__uniq_ptr_implIN10tensorflow7Variant14ValueInterfaceESt14default_deleteIS2_EE6_M_ptrEv(%"class.std::__uniq_ptr_impl"* %this) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::__uniq_ptr_impl"*, align 8
  store %"class.std::__uniq_ptr_impl"* %this, %"class.std::__uniq_ptr_impl"** %this.addr, align 8
  %this1 = load %"class.std::__uniq_ptr_impl"*, %"class.std::__uniq_ptr_impl"** %this.addr, align 8
  %_M_t = getelementptr inbounds %"class.std::__uniq_ptr_impl", %"class.std::__uniq_ptr_impl"* %this1, i32 0, i32 0
  %call = call nonnull align 8 dereferenceable(8) %"class.tensorflow::AbstractTensorInterface"** @_ZSt3getILm0EJPN10tensorflow7Variant14ValueInterfaceESt14default_deleteIS2_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSA_(%"class.std::tuple"* nonnull align 8 dereferenceable(8) %_M_t) #11
  ret %"class.tensorflow::AbstractTensorInterface"** %call
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 1 dereferenceable(1) %"class.std::ios_base::Init"* @_ZNSt10unique_ptrIN10tensorflow7Variant14ValueInterfaceESt14default_deleteIS2_EE11get_deleterEv(%"class.std::unique_ptr"* %this) #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::unique_ptr"*, align 8
  store %"class.std::unique_ptr"* %this, %"class.std::unique_ptr"** %this.addr, align 8
  %this1 = load %"class.std::unique_ptr"*, %"class.std::unique_ptr"** %this.addr, align 8
  %_M_t = getelementptr inbounds %"class.std::unique_ptr", %"class.std::unique_ptr"* %this1, i32 0, i32 0
  %0 = bitcast %"struct.std::__uniq_ptr_data"* %_M_t to %"class.std::__uniq_ptr_impl"*
  %call = invoke nonnull align 1 dereferenceable(1) %"class.std::ios_base::Init"* @_ZNSt15__uniq_ptr_implIN10tensorflow7Variant14ValueInterfaceESt14default_deleteIS2_EE10_M_deleterEv(%"class.std::__uniq_ptr_impl"* %0)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  ret %"class.std::ios_base::Init"* %call

terminate.lpad:                                   ; preds = %entry
  %1 = landingpad { i8*, i32 }
          catch i8* null
  %2 = extractvalue { i8*, i32 } %1, 0
  call void @__clang_call_terminate(i8* %2) #16
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) %"class.tensorflow::AbstractTensorInterface"** @_ZSt4moveIRPN10tensorflow7Variant14ValueInterfaceEEONSt16remove_referenceIT_E4typeEOS6_(%"class.tensorflow::AbstractTensorInterface"** nonnull align 8 dereferenceable(8) %__t) #0 comdat {
entry:
  %__t.addr = alloca %"class.tensorflow::AbstractTensorInterface"**, align 8
  store %"class.tensorflow::AbstractTensorInterface"** %__t, %"class.tensorflow::AbstractTensorInterface"*** %__t.addr, align 8
  %0 = load %"class.tensorflow::AbstractTensorInterface"**, %"class.tensorflow::AbstractTensorInterface"*** %__t.addr, align 8
  ret %"class.tensorflow::AbstractTensorInterface"** %0
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNKSt14default_deleteIN10tensorflow7Variant14ValueInterfaceEEclEPS2_(%"class.std::ios_base::Init"* %this, %"class.tensorflow::AbstractTensorInterface"* %__ptr) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::ios_base::Init"*, align 8
  %__ptr.addr = alloca %"class.tensorflow::AbstractTensorInterface"*, align 8
  store %"class.std::ios_base::Init"* %this, %"class.std::ios_base::Init"** %this.addr, align 8
  store %"class.tensorflow::AbstractTensorInterface"* %__ptr, %"class.tensorflow::AbstractTensorInterface"** %__ptr.addr, align 8
  %this1 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %this.addr, align 8
  %0 = load %"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"** %__ptr.addr, align 8
  %isnull = icmp eq %"class.tensorflow::AbstractTensorInterface"* %0, null
  br i1 %isnull, label %delete.end, label %delete.notnull

delete.notnull:                                   ; preds = %entry
  %1 = bitcast %"class.tensorflow::AbstractTensorInterface"* %0 to void (%"class.tensorflow::AbstractTensorInterface"*)***
  %vtable = load void (%"class.tensorflow::AbstractTensorInterface"*)**, void (%"class.tensorflow::AbstractTensorInterface"*)*** %1, align 8
  %vfn = getelementptr inbounds void (%"class.tensorflow::AbstractTensorInterface"*)*, void (%"class.tensorflow::AbstractTensorInterface"*)** %vtable, i64 1
  %2 = load void (%"class.tensorflow::AbstractTensorInterface"*)*, void (%"class.tensorflow::AbstractTensorInterface"*)** %vfn, align 8
  call void %2(%"class.tensorflow::AbstractTensorInterface"* %0) #11
  br label %delete.end

delete.end:                                       ; preds = %delete.notnull, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 1 dereferenceable(1) %"class.std::ios_base::Init"* @_ZNSt15__uniq_ptr_implIN10tensorflow7Variant14ValueInterfaceESt14default_deleteIS2_EE10_M_deleterEv(%"class.std::__uniq_ptr_impl"* %this) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::__uniq_ptr_impl"*, align 8
  store %"class.std::__uniq_ptr_impl"* %this, %"class.std::__uniq_ptr_impl"** %this.addr, align 8
  %this1 = load %"class.std::__uniq_ptr_impl"*, %"class.std::__uniq_ptr_impl"** %this.addr, align 8
  %_M_t = getelementptr inbounds %"class.std::__uniq_ptr_impl", %"class.std::__uniq_ptr_impl"* %this1, i32 0, i32 0
  %call = call nonnull align 1 dereferenceable(1) %"class.std::ios_base::Init"* @_ZSt3getILm1EJPN10tensorflow7Variant14ValueInterfaceESt14default_deleteIS2_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSA_(%"class.std::tuple"* nonnull align 8 dereferenceable(8) %_M_t) #11
  ret %"class.std::ios_base::Init"* %call
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 1 dereferenceable(1) %"class.std::ios_base::Init"* @_ZSt3getILm1EJPN10tensorflow7Variant14ValueInterfaceESt14default_deleteIS2_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSA_(%"class.std::tuple"* nonnull align 8 dereferenceable(8) %__t) #0 comdat {
entry:
  %__t.addr = alloca %"class.std::tuple"*, align 8
  store %"class.std::tuple"* %__t, %"class.std::tuple"** %__t.addr, align 8
  %0 = load %"class.std::tuple"*, %"class.std::tuple"** %__t.addr, align 8
  %1 = bitcast %"class.std::tuple"* %0 to %"class.std::ios_base::Init"*
  %call = call nonnull align 1 dereferenceable(1) %"class.std::ios_base::Init"* @_ZSt12__get_helperILm1ESt14default_deleteIN10tensorflow7Variant14ValueInterfaceEEJEERT0_RSt11_Tuple_implIXT_EJS5_DpT1_EE(%"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1) %1) #11
  ret %"class.std::ios_base::Init"* %call
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 1 dereferenceable(1) %"class.std::ios_base::Init"* @_ZSt12__get_helperILm1ESt14default_deleteIN10tensorflow7Variant14ValueInterfaceEEJEERT0_RSt11_Tuple_implIXT_EJS5_DpT1_EE(%"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1) %__t) #0 comdat {
entry:
  %__t.addr = alloca %"class.std::ios_base::Init"*, align 8
  store %"class.std::ios_base::Init"* %__t, %"class.std::ios_base::Init"** %__t.addr, align 8
  %0 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %__t.addr, align 8
  %call = call nonnull align 1 dereferenceable(1) %"class.std::ios_base::Init"* @_ZNSt11_Tuple_implILm1EJSt14default_deleteIN10tensorflow7Variant14ValueInterfaceEEEE7_M_headERS5_(%"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1) %0) #11
  ret %"class.std::ios_base::Init"* %call
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 1 dereferenceable(1) %"class.std::ios_base::Init"* @_ZNSt11_Tuple_implILm1EJSt14default_deleteIN10tensorflow7Variant14ValueInterfaceEEEE7_M_headERS5_(%"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1) %__t) #0 comdat align 2 {
entry:
  %__t.addr = alloca %"class.std::ios_base::Init"*, align 8
  store %"class.std::ios_base::Init"* %__t, %"class.std::ios_base::Init"** %__t.addr, align 8
  %0 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %__t.addr, align 8
  %1 = bitcast %"class.std::ios_base::Init"* %0 to %"class.std::ios_base::Init"*
  %call = call nonnull align 1 dereferenceable(1) %"class.std::ios_base::Init"* @_ZNSt10_Head_baseILm1ESt14default_deleteIN10tensorflow7Variant14ValueInterfaceEELb1EE7_M_headERS5_(%"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1) %1) #11
  ret %"class.std::ios_base::Init"* %call
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 1 dereferenceable(1) %"class.std::ios_base::Init"* @_ZNSt10_Head_baseILm1ESt14default_deleteIN10tensorflow7Variant14ValueInterfaceEELb1EE7_M_headERS5_(%"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1) %__b) #0 comdat align 2 {
entry:
  %__b.addr = alloca %"class.std::ios_base::Init"*, align 8
  store %"class.std::ios_base::Init"* %__b, %"class.std::ios_base::Init"** %__b.addr, align 8
  %0 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %__b.addr, align 8
  %_M_head_impl = bitcast %"class.std::ios_base::Init"* %0 to %"class.std::ios_base::Init"*
  ret %"class.std::ios_base::Init"* %_M_head_impl
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) %"class.tensorflow::AbstractTensorInterface"** @_ZSt3getILm0EJPN10tensorflow7Variant14ValueInterfaceESt14default_deleteIS2_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSA_(%"class.std::tuple"* nonnull align 8 dereferenceable(8) %__t) #0 comdat {
entry:
  %__t.addr = alloca %"class.std::tuple"*, align 8
  store %"class.std::tuple"* %__t, %"class.std::tuple"** %__t.addr, align 8
  %0 = load %"class.std::tuple"*, %"class.std::tuple"** %__t.addr, align 8
  %1 = bitcast %"class.std::tuple"* %0 to %"struct.std::_Tuple_impl"*
  %call = call nonnull align 8 dereferenceable(8) %"class.tensorflow::AbstractTensorInterface"** @_ZSt12__get_helperILm0EPN10tensorflow7Variant14ValueInterfaceEJSt14default_deleteIS2_EEERT0_RSt11_Tuple_implIXT_EJS6_DpT1_EE(%"struct.std::_Tuple_impl"* nonnull align 8 dereferenceable(8) %1) #11
  ret %"class.tensorflow::AbstractTensorInterface"** %call
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) %"class.tensorflow::AbstractTensorInterface"** @_ZSt12__get_helperILm0EPN10tensorflow7Variant14ValueInterfaceEJSt14default_deleteIS2_EEERT0_RSt11_Tuple_implIXT_EJS6_DpT1_EE(%"struct.std::_Tuple_impl"* nonnull align 8 dereferenceable(8) %__t) #0 comdat {
entry:
  %__t.addr = alloca %"struct.std::_Tuple_impl"*, align 8
  store %"struct.std::_Tuple_impl"* %__t, %"struct.std::_Tuple_impl"** %__t.addr, align 8
  %0 = load %"struct.std::_Tuple_impl"*, %"struct.std::_Tuple_impl"** %__t.addr, align 8
  %call = call nonnull align 8 dereferenceable(8) %"class.tensorflow::AbstractTensorInterface"** @_ZNSt11_Tuple_implILm0EJPN10tensorflow7Variant14ValueInterfaceESt14default_deleteIS2_EEE7_M_headERS6_(%"struct.std::_Tuple_impl"* nonnull align 8 dereferenceable(8) %0) #11
  ret %"class.tensorflow::AbstractTensorInterface"** %call
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) %"class.tensorflow::AbstractTensorInterface"** @_ZNSt11_Tuple_implILm0EJPN10tensorflow7Variant14ValueInterfaceESt14default_deleteIS2_EEE7_M_headERS6_(%"struct.std::_Tuple_impl"* nonnull align 8 dereferenceable(8) %__t) #0 comdat align 2 {
entry:
  %__t.addr = alloca %"struct.std::_Tuple_impl"*, align 8
  store %"struct.std::_Tuple_impl"* %__t, %"struct.std::_Tuple_impl"** %__t.addr, align 8
  %0 = load %"struct.std::_Tuple_impl"*, %"struct.std::_Tuple_impl"** %__t.addr, align 8
  %1 = bitcast %"struct.std::_Tuple_impl"* %0 to %struct.TF_Tensor*
  %call = call nonnull align 8 dereferenceable(8) %"class.tensorflow::AbstractTensorInterface"** @_ZNSt10_Head_baseILm0EPN10tensorflow7Variant14ValueInterfaceELb0EE7_M_headERS4_(%struct.TF_Tensor* nonnull align 8 dereferenceable(8) %1) #11
  ret %"class.tensorflow::AbstractTensorInterface"** %call
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) %"class.tensorflow::AbstractTensorInterface"** @_ZNSt10_Head_baseILm0EPN10tensorflow7Variant14ValueInterfaceELb0EE7_M_headERS4_(%struct.TF_Tensor* nonnull align 8 dereferenceable(8) %__b) #0 comdat align 2 {
entry:
  %__b.addr = alloca %struct.TF_Tensor*, align 8
  store %struct.TF_Tensor* %__b, %struct.TF_Tensor** %__b.addr, align 8
  %0 = load %struct.TF_Tensor*, %struct.TF_Tensor** %__b.addr, align 8
  %_M_head_impl = getelementptr inbounds %struct.TF_Tensor, %struct.TF_Tensor* %0, i32 0, i32 0
  ret %"class.tensorflow::AbstractTensorInterface"** %_M_head_impl
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt15__uniq_ptr_dataIN10tensorflow7Variant14ValueInterfaceESt14default_deleteIS2_ELb1ELb1EEC2EOS5_(%"struct.std::__uniq_ptr_data"* %this, %"struct.std::__uniq_ptr_data"* nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::__uniq_ptr_data"*, align 8
  %.addr = alloca %"struct.std::__uniq_ptr_data"*, align 8
  store %"struct.std::__uniq_ptr_data"* %this, %"struct.std::__uniq_ptr_data"** %this.addr, align 8
  store %"struct.std::__uniq_ptr_data"* %0, %"struct.std::__uniq_ptr_data"** %.addr, align 8
  %this1 = load %"struct.std::__uniq_ptr_data"*, %"struct.std::__uniq_ptr_data"** %this.addr, align 8
  %1 = bitcast %"struct.std::__uniq_ptr_data"* %this1 to %"class.std::__uniq_ptr_impl"*
  %2 = load %"struct.std::__uniq_ptr_data"*, %"struct.std::__uniq_ptr_data"** %.addr, align 8
  %3 = bitcast %"struct.std::__uniq_ptr_data"* %2 to %"class.std::__uniq_ptr_impl"*
  call void @_ZNSt15__uniq_ptr_implIN10tensorflow7Variant14ValueInterfaceESt14default_deleteIS2_EEC2EOS5_(%"class.std::__uniq_ptr_impl"* %1, %"class.std::__uniq_ptr_impl"* nonnull align 8 dereferenceable(8) %3) #11
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt15__uniq_ptr_implIN10tensorflow7Variant14ValueInterfaceESt14default_deleteIS2_EEC2EOS5_(%"class.std::__uniq_ptr_impl"* %this, %"class.std::__uniq_ptr_impl"* nonnull align 8 dereferenceable(8) %__u) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::__uniq_ptr_impl"*, align 8
  %__u.addr = alloca %"class.std::__uniq_ptr_impl"*, align 8
  store %"class.std::__uniq_ptr_impl"* %this, %"class.std::__uniq_ptr_impl"** %this.addr, align 8
  store %"class.std::__uniq_ptr_impl"* %__u, %"class.std::__uniq_ptr_impl"** %__u.addr, align 8
  %this1 = load %"class.std::__uniq_ptr_impl"*, %"class.std::__uniq_ptr_impl"** %this.addr, align 8
  %_M_t = getelementptr inbounds %"class.std::__uniq_ptr_impl", %"class.std::__uniq_ptr_impl"* %this1, i32 0, i32 0
  %0 = load %"class.std::__uniq_ptr_impl"*, %"class.std::__uniq_ptr_impl"** %__u.addr, align 8
  %_M_t2 = getelementptr inbounds %"class.std::__uniq_ptr_impl", %"class.std::__uniq_ptr_impl"* %0, i32 0, i32 0
  %call = call nonnull align 8 dereferenceable(8) %"class.std::tuple"* @_ZSt4moveIRSt5tupleIJPN10tensorflow7Variant14ValueInterfaceESt14default_deleteIS3_EEEEONSt16remove_referenceIT_E4typeEOSA_(%"class.std::tuple"* nonnull align 8 dereferenceable(8) %_M_t2) #11
  call void @_ZNSt5tupleIJPN10tensorflow7Variant14ValueInterfaceESt14default_deleteIS2_EEEC2EOS6_(%"class.std::tuple"* %_M_t, %"class.std::tuple"* nonnull align 8 dereferenceable(8) %call) #11
  %1 = load %"class.std::__uniq_ptr_impl"*, %"class.std::__uniq_ptr_impl"** %__u.addr, align 8
  %call3 = invoke nonnull align 8 dereferenceable(8) %"class.tensorflow::AbstractTensorInterface"** @_ZNSt15__uniq_ptr_implIN10tensorflow7Variant14ValueInterfaceESt14default_deleteIS2_EE6_M_ptrEv(%"class.std::__uniq_ptr_impl"* %1)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  store %"class.tensorflow::AbstractTensorInterface"* null, %"class.tensorflow::AbstractTensorInterface"** %call3, align 8
  ret void

terminate.lpad:                                   ; preds = %entry
  %2 = landingpad { i8*, i32 }
          catch i8* null
  %3 = extractvalue { i8*, i32 } %2, 0
  call void @__clang_call_terminate(i8* %3) #16
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) %"class.std::tuple"* @_ZSt4moveIRSt5tupleIJPN10tensorflow7Variant14ValueInterfaceESt14default_deleteIS3_EEEEONSt16remove_referenceIT_E4typeEOSA_(%"class.std::tuple"* nonnull align 8 dereferenceable(8) %__t) #0 comdat {
entry:
  %__t.addr = alloca %"class.std::tuple"*, align 8
  store %"class.std::tuple"* %__t, %"class.std::tuple"** %__t.addr, align 8
  %0 = load %"class.std::tuple"*, %"class.std::tuple"** %__t.addr, align 8
  ret %"class.std::tuple"* %0
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt5tupleIJPN10tensorflow7Variant14ValueInterfaceESt14default_deleteIS2_EEEC2EOS6_(%"class.std::tuple"* %this, %"class.std::tuple"* nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::tuple"*, align 8
  %.addr = alloca %"class.std::tuple"*, align 8
  store %"class.std::tuple"* %this, %"class.std::tuple"** %this.addr, align 8
  store %"class.std::tuple"* %0, %"class.std::tuple"** %.addr, align 8
  %this1 = load %"class.std::tuple"*, %"class.std::tuple"** %this.addr, align 8
  %1 = bitcast %"class.std::tuple"* %this1 to %"struct.std::_Tuple_impl"*
  %2 = load %"class.std::tuple"*, %"class.std::tuple"** %.addr, align 8
  %3 = bitcast %"class.std::tuple"* %2 to %"struct.std::_Tuple_impl"*
  call void @_ZNSt11_Tuple_implILm0EJPN10tensorflow7Variant14ValueInterfaceESt14default_deleteIS2_EEEC2EOS6_(%"struct.std::_Tuple_impl"* %1, %"struct.std::_Tuple_impl"* nonnull align 8 dereferenceable(8) %3) #11
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt11_Tuple_implILm0EJPN10tensorflow7Variant14ValueInterfaceESt14default_deleteIS2_EEEC2EOS6_(%"struct.std::_Tuple_impl"* %this, %"struct.std::_Tuple_impl"* nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Tuple_impl"*, align 8
  %.addr = alloca %"struct.std::_Tuple_impl"*, align 8
  store %"struct.std::_Tuple_impl"* %this, %"struct.std::_Tuple_impl"** %this.addr, align 8
  store %"struct.std::_Tuple_impl"* %0, %"struct.std::_Tuple_impl"** %.addr, align 8
  %this1 = load %"struct.std::_Tuple_impl"*, %"struct.std::_Tuple_impl"** %this.addr, align 8
  %1 = bitcast %"struct.std::_Tuple_impl"* %this1 to %"class.std::ios_base::Init"*
  %2 = load %"struct.std::_Tuple_impl"*, %"struct.std::_Tuple_impl"** %.addr, align 8
  %3 = bitcast %"struct.std::_Tuple_impl"* %2 to %"class.std::ios_base::Init"*
  call void @_ZNSt11_Tuple_implILm1EJSt14default_deleteIN10tensorflow7Variant14ValueInterfaceEEEEC2EOS5_(%"class.std::ios_base::Init"* %1, %"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1) %3) #11
  %4 = bitcast %"struct.std::_Tuple_impl"* %this1 to %struct.TF_Tensor*
  %5 = load %"struct.std::_Tuple_impl"*, %"struct.std::_Tuple_impl"** %.addr, align 8
  %6 = bitcast %"struct.std::_Tuple_impl"* %5 to %struct.TF_Tensor*
  %7 = bitcast %struct.TF_Tensor* %4 to i8*
  %8 = bitcast %struct.TF_Tensor* %6 to i8*
  %9 = call i8* @memcpy(i8* %7, i8* %8, i64 8)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt11_Tuple_implILm1EJSt14default_deleteIN10tensorflow7Variant14ValueInterfaceEEEEC2EOS5_(%"class.std::ios_base::Init"* %this, %"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1) %__in) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::ios_base::Init"*, align 8
  %__in.addr = alloca %"class.std::ios_base::Init"*, align 8
  store %"class.std::ios_base::Init"* %this, %"class.std::ios_base::Init"** %this.addr, align 8
  store %"class.std::ios_base::Init"* %__in, %"class.std::ios_base::Init"** %__in.addr, align 8
  %this1 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %this.addr, align 8
  %0 = bitcast %"class.std::ios_base::Init"* %this1 to %"class.std::ios_base::Init"*
  %1 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %__in.addr, align 8
  %2 = bitcast %"class.std::ios_base::Init"* %1 to %"class.std::ios_base::Init"*
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt10unique_ptrIN10tensorflow7Variant14ValueInterfaceESt14default_deleteIS2_EE4swapERS5_(%"class.std::unique_ptr"* %this, %"class.std::unique_ptr"* nonnull align 8 dereferenceable(8) %__u) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::unique_ptr"*, align 8
  %__u.addr = alloca %"class.std::unique_ptr"*, align 8
  store %"class.std::unique_ptr"* %this, %"class.std::unique_ptr"** %this.addr, align 8
  store %"class.std::unique_ptr"* %__u, %"class.std::unique_ptr"** %__u.addr, align 8
  %this1 = load %"class.std::unique_ptr"*, %"class.std::unique_ptr"** %this.addr, align 8
  %_M_t = getelementptr inbounds %"class.std::unique_ptr", %"class.std::unique_ptr"* %this1, i32 0, i32 0
  %0 = bitcast %"struct.std::__uniq_ptr_data"* %_M_t to %"class.std::__uniq_ptr_impl"*
  %1 = load %"class.std::unique_ptr"*, %"class.std::unique_ptr"** %__u.addr, align 8
  %_M_t2 = getelementptr inbounds %"class.std::unique_ptr", %"class.std::unique_ptr"* %1, i32 0, i32 0
  %2 = bitcast %"struct.std::__uniq_ptr_data"* %_M_t2 to %"class.std::__uniq_ptr_impl"*
  call void @_ZNSt15__uniq_ptr_implIN10tensorflow7Variant14ValueInterfaceESt14default_deleteIS2_EE4swapERS5_(%"class.std::__uniq_ptr_impl"* %0, %"class.std::__uniq_ptr_impl"* nonnull align 8 dereferenceable(8) %2) #11
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt15__uniq_ptr_implIN10tensorflow7Variant14ValueInterfaceESt14default_deleteIS2_EE4swapERS5_(%"class.std::__uniq_ptr_impl"* %this, %"class.std::__uniq_ptr_impl"* nonnull align 8 dereferenceable(8) %__rhs) #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::__uniq_ptr_impl"*, align 8
  %__rhs.addr = alloca %"class.std::__uniq_ptr_impl"*, align 8
  store %"class.std::__uniq_ptr_impl"* %this, %"class.std::__uniq_ptr_impl"** %this.addr, align 8
  store %"class.std::__uniq_ptr_impl"* %__rhs, %"class.std::__uniq_ptr_impl"** %__rhs.addr, align 8
  %this1 = load %"class.std::__uniq_ptr_impl"*, %"class.std::__uniq_ptr_impl"** %this.addr, align 8
  %call = invoke nonnull align 8 dereferenceable(8) %"class.tensorflow::AbstractTensorInterface"** @_ZNSt15__uniq_ptr_implIN10tensorflow7Variant14ValueInterfaceESt14default_deleteIS2_EE6_M_ptrEv(%"class.std::__uniq_ptr_impl"* %this1)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  %0 = load %"class.std::__uniq_ptr_impl"*, %"class.std::__uniq_ptr_impl"** %__rhs.addr, align 8
  %call3 = invoke nonnull align 8 dereferenceable(8) %"class.tensorflow::AbstractTensorInterface"** @_ZNSt15__uniq_ptr_implIN10tensorflow7Variant14ValueInterfaceESt14default_deleteIS2_EE6_M_ptrEv(%"class.std::__uniq_ptr_impl"* %0)
          to label %invoke.cont2 unwind label %terminate.lpad

invoke.cont2:                                     ; preds = %invoke.cont
  call void @_ZSt4swapIPN10tensorflow7Variant14ValueInterfaceEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS7_ESt18is_move_assignableIS7_EEE5valueEvE4typeERS7_SG_(%"class.tensorflow::AbstractTensorInterface"** nonnull align 8 dereferenceable(8) %call, %"class.tensorflow::AbstractTensorInterface"** nonnull align 8 dereferenceable(8) %call3) #11
  %call5 = invoke nonnull align 1 dereferenceable(1) %"class.std::ios_base::Init"* @_ZNSt15__uniq_ptr_implIN10tensorflow7Variant14ValueInterfaceESt14default_deleteIS2_EE10_M_deleterEv(%"class.std::__uniq_ptr_impl"* %this1)
          to label %invoke.cont4 unwind label %terminate.lpad

invoke.cont4:                                     ; preds = %invoke.cont2
  %1 = load %"class.std::__uniq_ptr_impl"*, %"class.std::__uniq_ptr_impl"** %__rhs.addr, align 8
  %call7 = invoke nonnull align 1 dereferenceable(1) %"class.std::ios_base::Init"* @_ZNSt15__uniq_ptr_implIN10tensorflow7Variant14ValueInterfaceESt14default_deleteIS2_EE10_M_deleterEv(%"class.std::__uniq_ptr_impl"* %1)
          to label %invoke.cont6 unwind label %terminate.lpad

invoke.cont6:                                     ; preds = %invoke.cont4
  call void @_ZSt4swapISt14default_deleteIN10tensorflow7Variant14ValueInterfaceEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS8_ESt18is_move_assignableIS8_EEE5valueEvE4typeERS8_SH_(%"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1) %call5, %"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1) %call7) #11
  ret void

terminate.lpad:                                   ; preds = %invoke.cont4, %invoke.cont2, %invoke.cont, %entry
  %2 = landingpad { i8*, i32 }
          catch i8* null
  %3 = extractvalue { i8*, i32 } %2, 0
  call void @__clang_call_terminate(i8* %3) #16
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZSt4swapIPN10tensorflow7Variant14ValueInterfaceEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS7_ESt18is_move_assignableIS7_EEE5valueEvE4typeERS7_SG_(%"class.tensorflow::AbstractTensorInterface"** nonnull align 8 dereferenceable(8) %__a, %"class.tensorflow::AbstractTensorInterface"** nonnull align 8 dereferenceable(8) %__b) #0 comdat {
entry:
  %__a.addr = alloca %"class.tensorflow::AbstractTensorInterface"**, align 8
  %__b.addr = alloca %"class.tensorflow::AbstractTensorInterface"**, align 8
  %__tmp = alloca %"class.tensorflow::AbstractTensorInterface"*, align 8
  store %"class.tensorflow::AbstractTensorInterface"** %__a, %"class.tensorflow::AbstractTensorInterface"*** %__a.addr, align 8
  store %"class.tensorflow::AbstractTensorInterface"** %__b, %"class.tensorflow::AbstractTensorInterface"*** %__b.addr, align 8
  %0 = load %"class.tensorflow::AbstractTensorInterface"**, %"class.tensorflow::AbstractTensorInterface"*** %__a.addr, align 8
  %call = call nonnull align 8 dereferenceable(8) %"class.tensorflow::AbstractTensorInterface"** @_ZSt4moveIRPN10tensorflow7Variant14ValueInterfaceEEONSt16remove_referenceIT_E4typeEOS6_(%"class.tensorflow::AbstractTensorInterface"** nonnull align 8 dereferenceable(8) %0) #11
  %1 = load %"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"** %call, align 8
  store %"class.tensorflow::AbstractTensorInterface"* %1, %"class.tensorflow::AbstractTensorInterface"** %__tmp, align 8
  %2 = load %"class.tensorflow::AbstractTensorInterface"**, %"class.tensorflow::AbstractTensorInterface"*** %__b.addr, align 8
  %call1 = call nonnull align 8 dereferenceable(8) %"class.tensorflow::AbstractTensorInterface"** @_ZSt4moveIRPN10tensorflow7Variant14ValueInterfaceEEONSt16remove_referenceIT_E4typeEOS6_(%"class.tensorflow::AbstractTensorInterface"** nonnull align 8 dereferenceable(8) %2) #11
  %3 = load %"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"** %call1, align 8
  %4 = load %"class.tensorflow::AbstractTensorInterface"**, %"class.tensorflow::AbstractTensorInterface"*** %__a.addr, align 8
  store %"class.tensorflow::AbstractTensorInterface"* %3, %"class.tensorflow::AbstractTensorInterface"** %4, align 8
  %call2 = call nonnull align 8 dereferenceable(8) %"class.tensorflow::AbstractTensorInterface"** @_ZSt4moveIRPN10tensorflow7Variant14ValueInterfaceEEONSt16remove_referenceIT_E4typeEOS6_(%"class.tensorflow::AbstractTensorInterface"** nonnull align 8 dereferenceable(8) %__tmp) #11
  %5 = load %"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"** %call2, align 8
  %6 = load %"class.tensorflow::AbstractTensorInterface"**, %"class.tensorflow::AbstractTensorInterface"*** %__b.addr, align 8
  store %"class.tensorflow::AbstractTensorInterface"* %5, %"class.tensorflow::AbstractTensorInterface"** %6, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZSt4swapISt14default_deleteIN10tensorflow7Variant14ValueInterfaceEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS8_ESt18is_move_assignableIS8_EEE5valueEvE4typeERS8_SH_(%"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1) %__a, %"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1) %__b) #0 comdat {
entry:
  %__a.addr = alloca %"class.std::ios_base::Init"*, align 8
  %__b.addr = alloca %"class.std::ios_base::Init"*, align 8
  %__tmp = alloca %"class.std::ios_base::Init", align 1
  store %"class.std::ios_base::Init"* %__a, %"class.std::ios_base::Init"** %__a.addr, align 8
  store %"class.std::ios_base::Init"* %__b, %"class.std::ios_base::Init"** %__b.addr, align 8
  %0 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %__a.addr, align 8
  %call = call nonnull align 1 dereferenceable(1) %"class.std::ios_base::Init"* @_ZSt4moveIRSt14default_deleteIN10tensorflow7Variant14ValueInterfaceEEEONSt16remove_referenceIT_E4typeEOS7_(%"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1) %0) #11
  %1 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %__b.addr, align 8
  %call1 = call nonnull align 1 dereferenceable(1) %"class.std::ios_base::Init"* @_ZSt4moveIRSt14default_deleteIN10tensorflow7Variant14ValueInterfaceEEEONSt16remove_referenceIT_E4typeEOS7_(%"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1) %1) #11
  %2 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %__a.addr, align 8
  %call2 = call nonnull align 1 dereferenceable(1) %"class.std::ios_base::Init"* @_ZSt4moveIRSt14default_deleteIN10tensorflow7Variant14ValueInterfaceEEEONSt16remove_referenceIT_E4typeEOS7_(%"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1) %__tmp) #11
  %3 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %__b.addr, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 1 dereferenceable(1) %"class.std::ios_base::Init"* @_ZSt4moveIRSt14default_deleteIN10tensorflow7Variant14ValueInterfaceEEEONSt16remove_referenceIT_E4typeEOS7_(%"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1) %__t) #0 comdat {
entry:
  %__t.addr = alloca %"class.std::ios_base::Init"*, align 8
  store %"class.std::ios_base::Init"* %__t, %"class.std::ios_base::Init"** %__t.addr, align 8
  %0 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %__t.addr, align 8
  ret %"class.std::ios_base::Init"* %0
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow7Variant11InlineValueC2EOS1_(%"struct.tensorflow::Variant::InlineValue"* %this, %"struct.tensorflow::Variant::InlineValue"* nonnull align 8 dereferenceable(56) %other) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"struct.tensorflow::Variant::InlineValue"*, align 8
  %other.addr = alloca %"struct.tensorflow::Variant::InlineValue"*, align 8
  store %"struct.tensorflow::Variant::InlineValue"* %this, %"struct.tensorflow::Variant::InlineValue"** %this.addr, align 8
  store %"struct.tensorflow::Variant::InlineValue"* %other, %"struct.tensorflow::Variant::InlineValue"** %other.addr, align 8
  %this1 = load %"struct.tensorflow::Variant::InlineValue"*, %"struct.tensorflow::Variant::InlineValue"** %this.addr, align 8
  %0 = load %"struct.tensorflow::Variant::InlineValue"*, %"struct.tensorflow::Variant::InlineValue"** %other.addr, align 8
  %call = invoke %"class.tensorflow::AbstractTensorInterface"* @_ZN10tensorflow7Variant11InlineValue16AsValueInterfaceEv(%"struct.tensorflow::Variant::InlineValue"* %0)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  %call3 = invoke %"class.tensorflow::AbstractTensorInterface"* @_ZN10tensorflow7Variant11InlineValue16AsValueInterfaceEv(%"struct.tensorflow::Variant::InlineValue"* %this1)
          to label %invoke.cont2 unwind label %terminate.lpad

invoke.cont2:                                     ; preds = %invoke.cont
  %1 = bitcast %"class.tensorflow::AbstractTensorInterface"* %call to void (%"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"*)***
  %vtable = load void (%"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"*)**, void (%"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"*)*** %1, align 8
  %vfn = getelementptr inbounds void (%"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"*)*, void (%"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"*)** %vtable, i64 8
  %2 = load void (%"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"*)*, void (%"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"*)** %vfn, align 8
  invoke void %2(%"class.tensorflow::AbstractTensorInterface"* %call, %"class.tensorflow::AbstractTensorInterface"* %call3)
          to label %invoke.cont4 unwind label %terminate.lpad

invoke.cont4:                                     ; preds = %invoke.cont2
  ret void

terminate.lpad:                                   ; preds = %invoke.cont2, %invoke.cont, %entry
  %3 = landingpad { i8*, i32 }
          catch i8* null
  %4 = extractvalue { i8*, i32 } %3, 0
  call void @__clang_call_terminate(i8* %4) #16
  unreachable
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(56) %"struct.tensorflow::Variant::InlineValue"* @_ZN10tensorflow7Variant11InlineValueaSEOS1_(%"struct.tensorflow::Variant::InlineValue"* %this, %"struct.tensorflow::Variant::InlineValue"* nonnull align 8 dereferenceable(56) %other) #6 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %retval = alloca %"struct.tensorflow::Variant::InlineValue"*, align 8
  %this.addr = alloca %"struct.tensorflow::Variant::InlineValue"*, align 8
  %other.addr = alloca %"struct.tensorflow::Variant::InlineValue"*, align 8
  %ref.tmp = alloca %"class.std::basic_string_view", align 8
  %ref.tmp2 = alloca %"class.std::basic_string_view", align 8
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  store %"struct.tensorflow::Variant::InlineValue"* %this, %"struct.tensorflow::Variant::InlineValue"** %this.addr, align 8
  store %"struct.tensorflow::Variant::InlineValue"* %other, %"struct.tensorflow::Variant::InlineValue"** %other.addr, align 8
  %this1 = load %"struct.tensorflow::Variant::InlineValue"*, %"struct.tensorflow::Variant::InlineValue"** %this.addr, align 8
  %0 = load %"struct.tensorflow::Variant::InlineValue"*, %"struct.tensorflow::Variant::InlineValue"** %other.addr, align 8
  %cmp = icmp eq %"struct.tensorflow::Variant::InlineValue"* %0, %this1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %"struct.tensorflow::Variant::InlineValue"* %this1, %"struct.tensorflow::Variant::InlineValue"** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %call = call %"class.tensorflow::AbstractTensorInterface"* @_ZN10tensorflow7Variant11InlineValue16AsValueInterfaceEv(%"struct.tensorflow::Variant::InlineValue"* %this1)
  %1 = bitcast %"class.tensorflow::AbstractTensorInterface"* %call to void (%"class.std::basic_string_view"*, %"class.tensorflow::AbstractTensorInterface"*)***
  %vtable = load void (%"class.std::basic_string_view"*, %"class.tensorflow::AbstractTensorInterface"*)**, void (%"class.std::basic_string_view"*, %"class.tensorflow::AbstractTensorInterface"*)*** %1, align 8
  %vfn = getelementptr inbounds void (%"class.std::basic_string_view"*, %"class.tensorflow::AbstractTensorInterface"*)*, void (%"class.std::basic_string_view"*, %"class.tensorflow::AbstractTensorInterface"*)** %vtable, i64 2
  %2 = load void (%"class.std::basic_string_view"*, %"class.tensorflow::AbstractTensorInterface"*)*, void (%"class.std::basic_string_view"*, %"class.tensorflow::AbstractTensorInterface"*)** %vfn, align 8
  call void %2(%"class.std::basic_string_view"* sret align 8 %ref.tmp, %"class.tensorflow::AbstractTensorInterface"* %call)
  %3 = load %"struct.tensorflow::Variant::InlineValue"*, %"struct.tensorflow::Variant::InlineValue"** %other.addr, align 8
  %call3 = invoke %"class.tensorflow::AbstractTensorInterface"* @_ZN10tensorflow7Variant11InlineValue16AsValueInterfaceEv(%"struct.tensorflow::Variant::InlineValue"* %3)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %if.end
  %4 = bitcast %"class.tensorflow::AbstractTensorInterface"* %call3 to void (%"class.std::basic_string_view"*, %"class.tensorflow::AbstractTensorInterface"*)***
  %vtable4 = load void (%"class.std::basic_string_view"*, %"class.tensorflow::AbstractTensorInterface"*)**, void (%"class.std::basic_string_view"*, %"class.tensorflow::AbstractTensorInterface"*)*** %4, align 8
  %vfn5 = getelementptr inbounds void (%"class.std::basic_string_view"*, %"class.tensorflow::AbstractTensorInterface"*)*, void (%"class.std::basic_string_view"*, %"class.tensorflow::AbstractTensorInterface"*)** %vtable4, i64 2
  %5 = load void (%"class.std::basic_string_view"*, %"class.tensorflow::AbstractTensorInterface"*)*, void (%"class.std::basic_string_view"*, %"class.tensorflow::AbstractTensorInterface"*)** %vfn5, align 8
  invoke void %5(%"class.std::basic_string_view"* sret align 8 %ref.tmp2, %"class.tensorflow::AbstractTensorInterface"* %call3)
          to label %invoke.cont6 unwind label %lpad

invoke.cont6:                                     ; preds = %invoke.cont
  %call9 = invoke zeroext i1 @_ZNK10tensorflow9TypeIndexeqERKS0_(%"class.std::basic_string_view"* %ref.tmp, %"class.std::basic_string_view"* nonnull align 8 dereferenceable(16) %ref.tmp2)
          to label %invoke.cont8 unwind label %lpad7

invoke.cont8:                                     ; preds = %invoke.cont6
  call void @_ZN10tensorflow9TypeIndexD2Ev(%"class.std::basic_string_view"* %ref.tmp2) #11
  call void @_ZN10tensorflow9TypeIndexD2Ev(%"class.std::basic_string_view"* %ref.tmp) #11
  br i1 %call9, label %if.then10, label %if.else

if.then10:                                        ; preds = %invoke.cont8
  %6 = load %"struct.tensorflow::Variant::InlineValue"*, %"struct.tensorflow::Variant::InlineValue"** %other.addr, align 8
  %call11 = call %"class.tensorflow::AbstractTensorInterface"* @_ZN10tensorflow7Variant11InlineValue16AsValueInterfaceEv(%"struct.tensorflow::Variant::InlineValue"* %6)
  %call12 = call %"class.tensorflow::AbstractTensorInterface"* @_ZN10tensorflow7Variant11InlineValue16AsValueInterfaceEv(%"struct.tensorflow::Variant::InlineValue"* %this1)
  %7 = bitcast %"class.tensorflow::AbstractTensorInterface"* %call11 to void (%"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"*)***
  %vtable13 = load void (%"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"*)**, void (%"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"*)*** %7, align 8
  %vfn14 = getelementptr inbounds void (%"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"*)*, void (%"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"*)** %vtable13, i64 7
  %8 = load void (%"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"*)*, void (%"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"*)** %vfn14, align 8
  call void %8(%"class.tensorflow::AbstractTensorInterface"* %call11, %"class.tensorflow::AbstractTensorInterface"* %call12)
  br label %if.end19

lpad:                                             ; preds = %invoke.cont, %if.end
  %9 = landingpad { i8*, i32 }
          cleanup
  %10 = extractvalue { i8*, i32 } %9, 0
  store i8* %10, i8** %exn.slot, align 8
  %11 = extractvalue { i8*, i32 } %9, 1
  store i32 %11, i32* %ehselector.slot, align 4
  br label %ehcleanup

lpad7:                                            ; preds = %invoke.cont6
  %12 = landingpad { i8*, i32 }
          cleanup
  %13 = extractvalue { i8*, i32 } %12, 0
  store i8* %13, i8** %exn.slot, align 8
  %14 = extractvalue { i8*, i32 } %12, 1
  store i32 %14, i32* %ehselector.slot, align 4
  call void @_ZN10tensorflow9TypeIndexD2Ev(%"class.std::basic_string_view"* %ref.tmp2) #11
  br label %ehcleanup

ehcleanup:                                        ; preds = %lpad7, %lpad
  call void @_ZN10tensorflow9TypeIndexD2Ev(%"class.std::basic_string_view"* %ref.tmp) #11
  br label %eh.resume

if.else:                                          ; preds = %invoke.cont8
  call void @_ZN10tensorflow7Variant11InlineValue11ResetMemoryEv(%"struct.tensorflow::Variant::InlineValue"* %this1)
  %15 = load %"struct.tensorflow::Variant::InlineValue"*, %"struct.tensorflow::Variant::InlineValue"** %other.addr, align 8
  %call15 = call %"class.tensorflow::AbstractTensorInterface"* @_ZN10tensorflow7Variant11InlineValue16AsValueInterfaceEv(%"struct.tensorflow::Variant::InlineValue"* %15)
  %call16 = call %"class.tensorflow::AbstractTensorInterface"* @_ZN10tensorflow7Variant11InlineValue16AsValueInterfaceEv(%"struct.tensorflow::Variant::InlineValue"* %this1)
  %16 = bitcast %"class.tensorflow::AbstractTensorInterface"* %call15 to void (%"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"*)***
  %vtable17 = load void (%"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"*)**, void (%"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"*)*** %16, align 8
  %vfn18 = getelementptr inbounds void (%"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"*)*, void (%"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"*)** %vtable17, i64 8
  %17 = load void (%"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"*)*, void (%"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"*)** %vfn18, align 8
  call void %17(%"class.tensorflow::AbstractTensorInterface"* %call15, %"class.tensorflow::AbstractTensorInterface"* %call16)
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.then10
  store %"struct.tensorflow::Variant::InlineValue"* %this1, %"struct.tensorflow::Variant::InlineValue"** %retval, align 8
  br label %return

return:                                           ; preds = %if.end19, %if.then
  %18 = load %"struct.tensorflow::Variant::InlineValue"*, %"struct.tensorflow::Variant::InlineValue"** %retval, align 8
  ret %"struct.tensorflow::Variant::InlineValue"* %18

eh.resume:                                        ; preds = %ehcleanup
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val20 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val20
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow7Variant11InlineValueD2Ev(%"struct.tensorflow::Variant::InlineValue"* %this) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"struct.tensorflow::Variant::InlineValue"*, align 8
  store %"struct.tensorflow::Variant::InlineValue"* %this, %"struct.tensorflow::Variant::InlineValue"** %this.addr, align 8
  %this1 = load %"struct.tensorflow::Variant::InlineValue"*, %"struct.tensorflow::Variant::InlineValue"** %this.addr, align 8
  invoke void @_ZN10tensorflow7Variant11InlineValue11ResetMemoryEv(%"struct.tensorflow::Variant::InlineValue"* %this1)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  ret void

terminate.lpad:                                   ; preds = %entry
  %0 = landingpad { i8*, i32 }
          catch i8* null
  %1 = extractvalue { i8*, i32 } %0, 0
  call void @__clang_call_terminate(i8* %1) #16
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow7Variant11InlineValue11ResetMemoryEv(%"struct.tensorflow::Variant::InlineValue"* %this) #0 comdat align 2 {
entry:
  %this.addr = alloca %"struct.tensorflow::Variant::InlineValue"*, align 8
  store %"struct.tensorflow::Variant::InlineValue"* %this, %"struct.tensorflow::Variant::InlineValue"** %this.addr, align 8
  %this1 = load %"struct.tensorflow::Variant::InlineValue"*, %"struct.tensorflow::Variant::InlineValue"** %this.addr, align 8
  %call = call %"class.tensorflow::AbstractTensorInterface"* @_ZN10tensorflow7Variant11InlineValue16AsValueInterfaceEv(%"struct.tensorflow::Variant::InlineValue"* %this1)
  %0 = bitcast %"class.tensorflow::AbstractTensorInterface"* %call to void (%"class.tensorflow::AbstractTensorInterface"*)***
  %vtable = load void (%"class.tensorflow::AbstractTensorInterface"*)**, void (%"class.tensorflow::AbstractTensorInterface"*)*** %0, align 8
  %vfn = getelementptr inbounds void (%"class.tensorflow::AbstractTensorInterface"*)*, void (%"class.tensorflow::AbstractTensorInterface"*)** %vtable, i64 0
  %1 = load void (%"class.tensorflow::AbstractTensorInterface"*)*, void (%"class.tensorflow::AbstractTensorInterface"*)** %vfn, align 8
  call void %1(%"class.tensorflow::AbstractTensorInterface"* %call) #11
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %"class.tensorflow::AbstractTensorInterface"* @_ZN10tensorflow7Variant11InlineValue16AsValueInterfaceEv(%"struct.tensorflow::Variant::InlineValue"* %this) #0 comdat align 2 {
entry:
  %this.addr = alloca %"struct.tensorflow::Variant::InlineValue"*, align 8
  store %"struct.tensorflow::Variant::InlineValue"* %this, %"struct.tensorflow::Variant::InlineValue"** %this.addr, align 8
  %this1 = load %"struct.tensorflow::Variant::InlineValue"*, %"struct.tensorflow::Variant::InlineValue"** %this.addr, align 8
  %value_data = getelementptr inbounds %"struct.tensorflow::Variant::InlineValue", %"struct.tensorflow::Variant::InlineValue"* %this1, i32 0, i32 0
  %arraydecay = getelementptr inbounds [56 x i8], [56 x i8]* %value_data, i64 0, i64 0
  %0 = bitcast i8* %arraydecay to %"class.tensorflow::AbstractTensorInterface"*
  ret %"class.tensorflow::AbstractTensorInterface"* %0
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local zeroext i1 @_ZNK10tensorflow9TypeIndexeqERKS0_(%"class.std::basic_string_view"* %this, %"class.std::basic_string_view"* nonnull align 8 dereferenceable(16) %rhs) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::basic_string_view"*, align 8
  %rhs.addr = alloca %"class.std::basic_string_view"*, align 8
  store %"class.std::basic_string_view"* %this, %"class.std::basic_string_view"** %this.addr, align 8
  store %"class.std::basic_string_view"* %rhs, %"class.std::basic_string_view"** %rhs.addr, align 8
  %this1 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %this.addr, align 8
  %hash_ = getelementptr inbounds %"class.std::basic_string_view", %"class.std::basic_string_view"* %this1, i32 0, i32 0
  %0 = load i64, i64* %hash_, align 8
  %1 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %rhs.addr, align 8
  %hash_2 = getelementptr inbounds %"class.std::basic_string_view", %"class.std::basic_string_view"* %1, i32 0, i32 0
  %2 = load i64, i64* %hash_2, align 8
  %cmp = icmp eq i64 %0, %2
  ret i1 %cmp
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow9TypeIndexD2Ev(%"class.std::basic_string_view"* %this) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::basic_string_view"*, align 8
  store %"class.std::basic_string_view"* %this, %"class.std::basic_string_view"** %this.addr, align 8
  %this1 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %this.addr, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow7Variant15ResetAndSetHeapIJDnEEEvDpOT_(%"class.tensorflow::Variant"* %this, i8** nonnull align 8 dereferenceable(8) %args) #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.tensorflow::Variant"*, align 8
  %args.addr = alloca i8**, align 8
  store %"class.tensorflow::Variant"* %this, %"class.tensorflow::Variant"** %this.addr, align 8
  store i8** %args, i8*** %args.addr, align 8
  %this1 = load %"class.tensorflow::Variant"*, %"class.tensorflow::Variant"** %this.addr, align 8
  invoke void @_ZN10tensorflow7Variant11ResetMemoryEv(%"class.tensorflow::Variant"* %this1)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  %0 = getelementptr inbounds %"class.tensorflow::Variant", %"class.tensorflow::Variant"* %this1, i32 0, i32 0
  %heap_value_ = bitcast %union.anon.20* %0 to %"class.std::unique_ptr"*
  %1 = bitcast %"class.std::unique_ptr"* %heap_value_ to i8*
  %2 = bitcast i8* %1 to %"class.std::unique_ptr"*
  %3 = load i8**, i8*** %args.addr, align 8
  %call = call nonnull align 8 dereferenceable(8) i8** @_ZSt7forwardIDnEOT_RNSt16remove_referenceIS0_E4typeE(i8** nonnull align 8 dereferenceable(8) %3) #11
  call void @_ZNSt10unique_ptrIN10tensorflow7Variant14ValueInterfaceESt14default_deleteIS2_EEC2IS4_vEEDn(%"class.std::unique_ptr"* %2, i8* null) #11
  %is_inline_ = getelementptr inbounds %"class.tensorflow::Variant", %"class.tensorflow::Variant"* %this1, i32 0, i32 1
  store i8 0, i8* %is_inline_, align 8
  ret void

terminate.lpad:                                   ; preds = %entry
  %4 = landingpad { i8*, i32 }
          catch i8* null
  %5 = extractvalue { i8*, i32 } %4, 0
  call void @__clang_call_terminate(i8* %5) #16
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow7Variant11ResetMemoryEv(%"class.tensorflow::Variant"* %this) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.tensorflow::Variant"*, align 8
  store %"class.tensorflow::Variant"* %this, %"class.tensorflow::Variant"** %this.addr, align 8
  %this1 = load %"class.tensorflow::Variant"*, %"class.tensorflow::Variant"** %this.addr, align 8
  %call = call zeroext i1 @_ZNK10tensorflow7Variant13IsInlineValueEv(%"class.tensorflow::Variant"* %this1)
  br i1 %call, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %0 = getelementptr inbounds %"class.tensorflow::Variant", %"class.tensorflow::Variant"* %this1, i32 0, i32 0
  %inline_value_ = bitcast %union.anon.20* %0 to %"struct.tensorflow::Variant::InlineValue"*
  call void @_ZN10tensorflow7Variant11InlineValueD2Ev(%"struct.tensorflow::Variant::InlineValue"* %inline_value_) #11
  br label %if.end

if.else:                                          ; preds = %entry
  %1 = getelementptr inbounds %"class.tensorflow::Variant", %"class.tensorflow::Variant"* %this1, i32 0, i32 0
  %heap_value_ = bitcast %union.anon.20* %1 to %"class.std::unique_ptr"*
  call void @_ZNSt10unique_ptrIN10tensorflow7Variant14ValueInterfaceESt14default_deleteIS2_EED2Ev(%"class.std::unique_ptr"* %heap_value_) #11
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) i8** @_ZSt7forwardIDnEOT_RNSt16remove_referenceIS0_E4typeE(i8** nonnull align 8 dereferenceable(8) %__t) #0 comdat {
entry:
  %__t.addr = alloca i8**, align 8
  store i8** %__t, i8*** %__t.addr, align 8
  %0 = load i8**, i8*** %__t.addr, align 8
  ret i8** %0
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt10unique_ptrIN10tensorflow7Variant14ValueInterfaceESt14default_deleteIS2_EEC2IS4_vEEDn(%"class.std::unique_ptr"* %this, i8* %0) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::unique_ptr"*, align 8
  %.addr = alloca i8*, align 8
  store %"class.std::unique_ptr"* %this, %"class.std::unique_ptr"** %this.addr, align 8
  store i8* %0, i8** %.addr, align 8
  %this1 = load %"class.std::unique_ptr"*, %"class.std::unique_ptr"** %this.addr, align 8
  %_M_t = getelementptr inbounds %"class.std::unique_ptr", %"class.std::unique_ptr"* %this1, i32 0, i32 0
  %1 = bitcast %"struct.std::__uniq_ptr_data"* %_M_t to i8*
  %2 = call i8* @memset(i8* %1, i32 0, i64 8)
  call void @_ZNSt15__uniq_ptr_dataIN10tensorflow7Variant14ValueInterfaceESt14default_deleteIS2_ELb1ELb1EECI2St15__uniq_ptr_implIS2_S4_EEv(%"struct.std::__uniq_ptr_data"* %_M_t) #11
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt15__uniq_ptr_dataIN10tensorflow7Variant14ValueInterfaceESt14default_deleteIS2_ELb1ELb1EECI2St15__uniq_ptr_implIS2_S4_EEv(%"struct.std::__uniq_ptr_data"* %this) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::__uniq_ptr_data"*, align 8
  store %"struct.std::__uniq_ptr_data"* %this, %"struct.std::__uniq_ptr_data"** %this.addr, align 8
  %this1 = load %"struct.std::__uniq_ptr_data"*, %"struct.std::__uniq_ptr_data"** %this.addr, align 8
  %0 = bitcast %"struct.std::__uniq_ptr_data"* %this1 to %"class.std::__uniq_ptr_impl"*
  call void @_ZNSt15__uniq_ptr_implIN10tensorflow7Variant14ValueInterfaceESt14default_deleteIS2_EEC2Ev(%"class.std::__uniq_ptr_impl"* %0) #11
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt15__uniq_ptr_implIN10tensorflow7Variant14ValueInterfaceESt14default_deleteIS2_EEC2Ev(%"class.std::__uniq_ptr_impl"* %this) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::__uniq_ptr_impl"*, align 8
  store %"class.std::__uniq_ptr_impl"* %this, %"class.std::__uniq_ptr_impl"** %this.addr, align 8
  %this1 = load %"class.std::__uniq_ptr_impl"*, %"class.std::__uniq_ptr_impl"** %this.addr, align 8
  %_M_t = getelementptr inbounds %"class.std::__uniq_ptr_impl", %"class.std::__uniq_ptr_impl"* %this1, i32 0, i32 0
  call void @_ZNSt5tupleIJPN10tensorflow7Variant14ValueInterfaceESt14default_deleteIS2_EEEC2ILb1ELb1EEEv(%"class.std::tuple"* %_M_t) #11
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt5tupleIJPN10tensorflow7Variant14ValueInterfaceESt14default_deleteIS2_EEEC2ILb1ELb1EEEv(%"class.std::tuple"* %this) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::tuple"*, align 8
  store %"class.std::tuple"* %this, %"class.std::tuple"** %this.addr, align 8
  %this1 = load %"class.std::tuple"*, %"class.std::tuple"** %this.addr, align 8
  %0 = bitcast %"class.std::tuple"* %this1 to %"struct.std::_Tuple_impl"*
  invoke void @_ZNSt11_Tuple_implILm0EJPN10tensorflow7Variant14ValueInterfaceESt14default_deleteIS2_EEEC2Ev(%"struct.std::_Tuple_impl"* %0)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  ret void

terminate.lpad:                                   ; preds = %entry
  %1 = landingpad { i8*, i32 }
          catch i8* null
  %2 = extractvalue { i8*, i32 } %1, 0
  call void @__clang_call_terminate(i8* %2) #16
  unreachable
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt11_Tuple_implILm0EJPN10tensorflow7Variant14ValueInterfaceESt14default_deleteIS2_EEEC2Ev(%"struct.std::_Tuple_impl"* %this) unnamed_addr #6 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Tuple_impl"*, align 8
  store %"struct.std::_Tuple_impl"* %this, %"struct.std::_Tuple_impl"** %this.addr, align 8
  %this1 = load %"struct.std::_Tuple_impl"*, %"struct.std::_Tuple_impl"** %this.addr, align 8
  %0 = bitcast %"struct.std::_Tuple_impl"* %this1 to %"class.std::ios_base::Init"*
  call void @_ZNSt11_Tuple_implILm1EJSt14default_deleteIN10tensorflow7Variant14ValueInterfaceEEEEC2Ev(%"class.std::ios_base::Init"* %0)
  %1 = bitcast %"struct.std::_Tuple_impl"* %this1 to %struct.TF_Tensor*
  call void @_ZNSt10_Head_baseILm0EPN10tensorflow7Variant14ValueInterfaceELb0EEC2Ev(%struct.TF_Tensor* %1)
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt11_Tuple_implILm1EJSt14default_deleteIN10tensorflow7Variant14ValueInterfaceEEEEC2Ev(%"class.std::ios_base::Init"* %this) unnamed_addr #6 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::ios_base::Init"*, align 8
  store %"class.std::ios_base::Init"* %this, %"class.std::ios_base::Init"** %this.addr, align 8
  %this1 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %this.addr, align 8
  %0 = bitcast %"class.std::ios_base::Init"* %this1 to %"class.std::ios_base::Init"*
  call void @_ZNSt10_Head_baseILm1ESt14default_deleteIN10tensorflow7Variant14ValueInterfaceEELb1EEC2Ev(%"class.std::ios_base::Init"* %0)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt10_Head_baseILm0EPN10tensorflow7Variant14ValueInterfaceELb0EEC2Ev(%struct.TF_Tensor* %this) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %struct.TF_Tensor*, align 8
  store %struct.TF_Tensor* %this, %struct.TF_Tensor** %this.addr, align 8
  %this1 = load %struct.TF_Tensor*, %struct.TF_Tensor** %this.addr, align 8
  %_M_head_impl = getelementptr inbounds %struct.TF_Tensor, %struct.TF_Tensor* %this1, i32 0, i32 0
  store %"class.tensorflow::AbstractTensorInterface"* null, %"class.tensorflow::AbstractTensorInterface"** %_M_head_impl, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt10_Head_baseILm1ESt14default_deleteIN10tensorflow7Variant14ValueInterfaceEELb1EEC2Ev(%"class.std::ios_base::Init"* %this) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::ios_base::Init"*, align 8
  store %"class.std::ios_base::Init"* %this, %"class.std::ios_base::Init"** %this.addr, align 8
  %this1 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %this.addr, align 8
  %_M_head_impl = bitcast %"class.std::ios_base::Init"* %this1 to %"class.std::ios_base::Init"*
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) %"class.std::unique_ptr"* @_ZSt7forwardISt10unique_ptrIN10tensorflow7Variant14ValueInterfaceESt14default_deleteIS3_EEEOT_RNSt16remove_referenceIS7_E4typeE(%"class.std::unique_ptr"* nonnull align 8 dereferenceable(8) %__t) #0 comdat {
entry:
  %__t.addr = alloca %"class.std::unique_ptr"*, align 8
  store %"class.std::unique_ptr"* %__t, %"class.std::unique_ptr"** %__t.addr, align 8
  %0 = load %"class.std::unique_ptr"*, %"class.std::unique_ptr"** %__t.addr, align 8
  ret %"class.std::unique_ptr"* %0
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(56) %"struct.tensorflow::Variant::InlineValue"* @_ZSt7forwardIN10tensorflow7Variant11InlineValueEEOT_RNSt16remove_referenceIS3_E4typeE(%"struct.tensorflow::Variant::InlineValue"* nonnull align 8 dereferenceable(56) %__t) #0 comdat {
entry:
  %__t.addr = alloca %"struct.tensorflow::Variant::InlineValue"*, align 8
  store %"struct.tensorflow::Variant::InlineValue"* %__t, %"struct.tensorflow::Variant::InlineValue"** %__t.addr, align 8
  %0 = load %"struct.tensorflow::Variant::InlineValue"*, %"struct.tensorflow::Variant::InlineValue"** %__t.addr, align 8
  ret %"struct.tensorflow::Variant::InlineValue"* %0
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %"class.tensorflow::AbstractTensorInterface"* @_ZNK10tensorflow7Variant8GetValueEv(%"class.tensorflow::Variant"* %this) #6 comdat align 2 {
entry:
  %retval = alloca %"class.tensorflow::AbstractTensorInterface"*, align 8
  %this.addr = alloca %"class.tensorflow::Variant"*, align 8
  store %"class.tensorflow::Variant"* %this, %"class.tensorflow::Variant"** %this.addr, align 8
  %this1 = load %"class.tensorflow::Variant"*, %"class.tensorflow::Variant"** %this.addr, align 8
  %call = call zeroext i1 @_ZNK10tensorflow7Variant13IsInlineValueEv(%"class.tensorflow::Variant"* %this1)
  br i1 %call, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %0 = getelementptr inbounds %"class.tensorflow::Variant", %"class.tensorflow::Variant"* %this1, i32 0, i32 0
  %inline_value_ = bitcast %union.anon.20* %0 to %"struct.tensorflow::Variant::InlineValue"*
  %call2 = call %"class.tensorflow::AbstractTensorInterface"* @_ZNK10tensorflow7Variant11InlineValue16AsValueInterfaceEv(%"struct.tensorflow::Variant::InlineValue"* %inline_value_)
  store %"class.tensorflow::AbstractTensorInterface"* %call2, %"class.tensorflow::AbstractTensorInterface"** %retval, align 8
  br label %return

if.else:                                          ; preds = %entry
  %1 = getelementptr inbounds %"class.tensorflow::Variant", %"class.tensorflow::Variant"* %this1, i32 0, i32 0
  %heap_value_ = bitcast %union.anon.20* %1 to %"class.std::unique_ptr"*
  %call3 = call %"class.tensorflow::AbstractTensorInterface"* @_ZNKSt10unique_ptrIN10tensorflow7Variant14ValueInterfaceESt14default_deleteIS2_EE3getEv(%"class.std::unique_ptr"* %heap_value_) #11
  store %"class.tensorflow::AbstractTensorInterface"* %call3, %"class.tensorflow::AbstractTensorInterface"** %retval, align 8
  br label %return

return:                                           ; preds = %if.else, %if.then
  %2 = load %"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"** %retval, align 8
  ret %"class.tensorflow::AbstractTensorInterface"* %2
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %"class.tensorflow::AbstractTensorInterface"* @_ZNK10tensorflow7Variant11InlineValue16AsValueInterfaceEv(%"struct.tensorflow::Variant::InlineValue"* %this) #0 comdat align 2 {
entry:
  %this.addr = alloca %"struct.tensorflow::Variant::InlineValue"*, align 8
  store %"struct.tensorflow::Variant::InlineValue"* %this, %"struct.tensorflow::Variant::InlineValue"** %this.addr, align 8
  %this1 = load %"struct.tensorflow::Variant::InlineValue"*, %"struct.tensorflow::Variant::InlineValue"** %this.addr, align 8
  %value_data = getelementptr inbounds %"struct.tensorflow::Variant::InlineValue", %"struct.tensorflow::Variant::InlineValue"* %this1, i32 0, i32 0
  %arraydecay = getelementptr inbounds [56 x i8], [56 x i8]* %value_data, i64 0, i64 0
  %0 = bitcast i8* %arraydecay to %"class.tensorflow::AbstractTensorInterface"*
  ret %"class.tensorflow::AbstractTensorInterface"* %0
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %"class.tensorflow::AbstractTensorInterface"* @_ZNKSt10unique_ptrIN10tensorflow7Variant14ValueInterfaceESt14default_deleteIS2_EE3getEv(%"class.std::unique_ptr"* %this) #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::unique_ptr"*, align 8
  store %"class.std::unique_ptr"* %this, %"class.std::unique_ptr"** %this.addr, align 8
  %this1 = load %"class.std::unique_ptr"*, %"class.std::unique_ptr"** %this.addr, align 8
  %_M_t = getelementptr inbounds %"class.std::unique_ptr", %"class.std::unique_ptr"* %this1, i32 0, i32 0
  %0 = bitcast %"struct.std::__uniq_ptr_data"* %_M_t to %"class.std::__uniq_ptr_impl"*
  %call = invoke %"class.tensorflow::AbstractTensorInterface"* @_ZNKSt15__uniq_ptr_implIN10tensorflow7Variant14ValueInterfaceESt14default_deleteIS2_EE6_M_ptrEv(%"class.std::__uniq_ptr_impl"* %0)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  ret %"class.tensorflow::AbstractTensorInterface"* %call

terminate.lpad:                                   ; preds = %entry
  %1 = landingpad { i8*, i32 }
          catch i8* null
  %2 = extractvalue { i8*, i32 } %1, 0
  call void @__clang_call_terminate(i8* %2) #16
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %"class.tensorflow::AbstractTensorInterface"* @_ZNKSt15__uniq_ptr_implIN10tensorflow7Variant14ValueInterfaceESt14default_deleteIS2_EE6_M_ptrEv(%"class.std::__uniq_ptr_impl"* %this) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::__uniq_ptr_impl"*, align 8
  store %"class.std::__uniq_ptr_impl"* %this, %"class.std::__uniq_ptr_impl"** %this.addr, align 8
  %this1 = load %"class.std::__uniq_ptr_impl"*, %"class.std::__uniq_ptr_impl"** %this.addr, align 8
  %_M_t = getelementptr inbounds %"class.std::__uniq_ptr_impl", %"class.std::__uniq_ptr_impl"* %this1, i32 0, i32 0
  %call = call nonnull align 8 dereferenceable(8) %"class.tensorflow::AbstractTensorInterface"** @_ZSt3getILm0EJPN10tensorflow7Variant14ValueInterfaceESt14default_deleteIS2_EEERKNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERKSA_(%"class.std::tuple"* nonnull align 8 dereferenceable(8) %_M_t) #11
  %0 = load %"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"** %call, align 8
  ret %"class.tensorflow::AbstractTensorInterface"* %0
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) %"class.tensorflow::AbstractTensorInterface"** @_ZSt3getILm0EJPN10tensorflow7Variant14ValueInterfaceESt14default_deleteIS2_EEERKNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERKSA_(%"class.std::tuple"* nonnull align 8 dereferenceable(8) %__t) #0 comdat {
entry:
  %__t.addr = alloca %"class.std::tuple"*, align 8
  store %"class.std::tuple"* %__t, %"class.std::tuple"** %__t.addr, align 8
  %0 = load %"class.std::tuple"*, %"class.std::tuple"** %__t.addr, align 8
  %1 = bitcast %"class.std::tuple"* %0 to %"struct.std::_Tuple_impl"*
  %call = call nonnull align 8 dereferenceable(8) %"class.tensorflow::AbstractTensorInterface"** @_ZSt12__get_helperILm0EPN10tensorflow7Variant14ValueInterfaceEJSt14default_deleteIS2_EEERKT0_RKSt11_Tuple_implIXT_EJS6_DpT1_EE(%"struct.std::_Tuple_impl"* nonnull align 8 dereferenceable(8) %1) #11
  ret %"class.tensorflow::AbstractTensorInterface"** %call
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) %"class.tensorflow::AbstractTensorInterface"** @_ZSt12__get_helperILm0EPN10tensorflow7Variant14ValueInterfaceEJSt14default_deleteIS2_EEERKT0_RKSt11_Tuple_implIXT_EJS6_DpT1_EE(%"struct.std::_Tuple_impl"* nonnull align 8 dereferenceable(8) %__t) #0 comdat {
entry:
  %__t.addr = alloca %"struct.std::_Tuple_impl"*, align 8
  store %"struct.std::_Tuple_impl"* %__t, %"struct.std::_Tuple_impl"** %__t.addr, align 8
  %0 = load %"struct.std::_Tuple_impl"*, %"struct.std::_Tuple_impl"** %__t.addr, align 8
  %call = call nonnull align 8 dereferenceable(8) %"class.tensorflow::AbstractTensorInterface"** @_ZNSt11_Tuple_implILm0EJPN10tensorflow7Variant14ValueInterfaceESt14default_deleteIS2_EEE7_M_headERKS6_(%"struct.std::_Tuple_impl"* nonnull align 8 dereferenceable(8) %0) #11
  ret %"class.tensorflow::AbstractTensorInterface"** %call
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) %"class.tensorflow::AbstractTensorInterface"** @_ZNSt11_Tuple_implILm0EJPN10tensorflow7Variant14ValueInterfaceESt14default_deleteIS2_EEE7_M_headERKS6_(%"struct.std::_Tuple_impl"* nonnull align 8 dereferenceable(8) %__t) #0 comdat align 2 {
entry:
  %__t.addr = alloca %"struct.std::_Tuple_impl"*, align 8
  store %"struct.std::_Tuple_impl"* %__t, %"struct.std::_Tuple_impl"** %__t.addr, align 8
  %0 = load %"struct.std::_Tuple_impl"*, %"struct.std::_Tuple_impl"** %__t.addr, align 8
  %1 = bitcast %"struct.std::_Tuple_impl"* %0 to %struct.TF_Tensor*
  %call = call nonnull align 8 dereferenceable(8) %"class.tensorflow::AbstractTensorInterface"** @_ZNSt10_Head_baseILm0EPN10tensorflow7Variant14ValueInterfaceELb0EE7_M_headERKS4_(%struct.TF_Tensor* nonnull align 8 dereferenceable(8) %1) #11
  ret %"class.tensorflow::AbstractTensorInterface"** %call
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) %"class.tensorflow::AbstractTensorInterface"** @_ZNSt10_Head_baseILm0EPN10tensorflow7Variant14ValueInterfaceELb0EE7_M_headERKS4_(%struct.TF_Tensor* nonnull align 8 dereferenceable(8) %__b) #0 comdat align 2 {
entry:
  %__b.addr = alloca %struct.TF_Tensor*, align 8
  store %struct.TF_Tensor* %__b, %struct.TF_Tensor** %__b.addr, align 8
  %0 = load %struct.TF_Tensor*, %struct.TF_Tensor** %__b.addr, align 8
  %_M_head_impl = getelementptr inbounds %struct.TF_Tensor, %struct.TF_Tensor* %0, i32 0, i32 0
  ret %"class.tensorflow::AbstractTensorInterface"** %_M_head_impl
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN10tensorflow6TensorESaIS1_EED2Ev(%"class.std::vector.48"* %this) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::vector.48"*, align 8
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  store %"class.std::vector.48"* %this, %"class.std::vector.48"** %this.addr, align 8
  %this1 = load %"class.std::vector.48"*, %"class.std::vector.48"** %this.addr, align 8
  %0 = bitcast %"class.std::vector.48"* %this1 to %"struct.std::_Vector_base.47"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.47", %"struct.std::_Vector_base.47"* %0, i32 0, i32 0
  %1 = bitcast %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl"* %_M_impl to %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl_data"*
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl_data", %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl_data"* %1, i32 0, i32 0
  %2 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %_M_start, align 8
  %3 = bitcast %"class.std::vector.48"* %this1 to %"struct.std::_Vector_base.47"*
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base.47", %"struct.std::_Vector_base.47"* %3, i32 0, i32 0
  %4 = bitcast %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl"* %_M_impl2 to %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl_data"*
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl_data", %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl_data"* %4, i32 0, i32 1
  %5 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %_M_finish, align 8
  %6 = bitcast %"class.std::vector.48"* %this1 to %"struct.std::_Vector_base.47"*
  %call = call nonnull align 1 dereferenceable(1) %"class.std::ios_base::Init"* @_ZNSt12_Vector_baseIN10tensorflow6TensorESaIS1_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.47"* %6) #11
  invoke void @_ZSt8_DestroyIPN10tensorflow6TensorES1_EvT_S3_RSaIT0_E(%"class.tensorflow::Tensor"* %2, %"class.tensorflow::Tensor"* %5, %"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1) %call)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %7 = bitcast %"class.std::vector.48"* %this1 to %"struct.std::_Vector_base.47"*
  call void @_ZNSt12_Vector_baseIN10tensorflow6TensorESaIS1_EED2Ev(%"struct.std::_Vector_base.47"* %7) #11
  ret void

lpad:                                             ; preds = %entry
  %8 = landingpad { i8*, i32 }
          catch i8* null
  %9 = extractvalue { i8*, i32 } %8, 0
  store i8* %9, i8** %exn.slot, align 8
  %10 = extractvalue { i8*, i32 } %8, 1
  store i32 %10, i32* %ehselector.slot, align 4
  %11 = bitcast %"class.std::vector.48"* %this1 to %"struct.std::_Vector_base.47"*
  call void @_ZNSt12_Vector_baseIN10tensorflow6TensorESaIS1_EED2Ev(%"struct.std::_Vector_base.47"* %11) #11
  br label %terminate.handler

terminate.handler:                                ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  call void @__clang_call_terminate(i8* %exn) #16
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 1 dereferenceable(1) %"class.std::ios_base::Init"* @_ZNSt12_Vector_baseIN10tensorflow6TensorESaIS1_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.47"* %this) #0 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base.47"*, align 8
  store %"struct.std::_Vector_base.47"* %this, %"struct.std::_Vector_base.47"** %this.addr, align 8
  %this1 = load %"struct.std::_Vector_base.47"*, %"struct.std::_Vector_base.47"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.47", %"struct.std::_Vector_base.47"* %this1, i32 0, i32 0
  %0 = bitcast %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl"* %_M_impl to %"class.std::ios_base::Init"*
  ret %"class.std::ios_base::Init"* %0
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPN10tensorflow6TensorES1_EvT_S3_RSaIT0_E(%"class.tensorflow::Tensor"* %__first, %"class.tensorflow::Tensor"* %__last, %"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1) %0) #6 comdat {
entry:
  %__first.addr = alloca %"class.tensorflow::Tensor"*, align 8
  %__last.addr = alloca %"class.tensorflow::Tensor"*, align 8
  %.addr = alloca %"class.std::ios_base::Init"*, align 8
  store %"class.tensorflow::Tensor"* %__first, %"class.tensorflow::Tensor"** %__first.addr, align 8
  store %"class.tensorflow::Tensor"* %__last, %"class.tensorflow::Tensor"** %__last.addr, align 8
  store %"class.std::ios_base::Init"* %0, %"class.std::ios_base::Init"** %.addr, align 8
  %1 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %__first.addr, align 8
  %2 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %__last.addr, align 8
  call void @_ZSt8_DestroyIPN10tensorflow6TensorEEvT_S3_(%"class.tensorflow::Tensor"* %1, %"class.tensorflow::Tensor"* %2)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN10tensorflow6TensorESaIS1_EED2Ev(%"struct.std::_Vector_base.47"* %this) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"struct.std::_Vector_base.47"*, align 8
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  store %"struct.std::_Vector_base.47"* %this, %"struct.std::_Vector_base.47"** %this.addr, align 8
  %this1 = load %"struct.std::_Vector_base.47"*, %"struct.std::_Vector_base.47"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.47", %"struct.std::_Vector_base.47"* %this1, i32 0, i32 0
  %0 = bitcast %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl"* %_M_impl to %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl_data"*
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl_data", %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl_data"* %0, i32 0, i32 0
  %1 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %_M_start, align 8
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base.47", %"struct.std::_Vector_base.47"* %this1, i32 0, i32 0
  %2 = bitcast %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl"* %_M_impl2 to %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl_data"*
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl_data", %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl_data"* %2, i32 0, i32 2
  %3 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %_M_end_of_storage, align 8
  %_M_impl3 = getelementptr inbounds %"struct.std::_Vector_base.47", %"struct.std::_Vector_base.47"* %this1, i32 0, i32 0
  %4 = bitcast %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl"* %_M_impl3 to %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl_data"*
  %_M_start4 = getelementptr inbounds %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl_data", %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl_data"* %4, i32 0, i32 0
  %5 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %_M_start4, align 8
  %sub.ptr.lhs.cast = ptrtoint %"class.tensorflow::Tensor"* %3 to i64
  %sub.ptr.rhs.cast = ptrtoint %"class.tensorflow::Tensor"* %5 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 32
  invoke void @_ZNSt12_Vector_baseIN10tensorflow6TensorESaIS1_EE13_M_deallocateEPS1_m(%"struct.std::_Vector_base.47"* %this1, %"class.tensorflow::Tensor"* %1, i64 %sub.ptr.div)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %_M_impl5 = getelementptr inbounds %"struct.std::_Vector_base.47", %"struct.std::_Vector_base.47"* %this1, i32 0, i32 0
  call void @_ZNSt12_Vector_baseIN10tensorflow6TensorESaIS1_EE12_Vector_implD2Ev(%"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl"* %_M_impl5) #11
  ret void

lpad:                                             ; preds = %entry
  %6 = landingpad { i8*, i32 }
          catch i8* null
  %7 = extractvalue { i8*, i32 } %6, 0
  store i8* %7, i8** %exn.slot, align 8
  %8 = extractvalue { i8*, i32 } %6, 1
  store i32 %8, i32* %ehselector.slot, align 4
  %_M_impl6 = getelementptr inbounds %"struct.std::_Vector_base.47", %"struct.std::_Vector_base.47"* %this1, i32 0, i32 0
  call void @_ZNSt12_Vector_baseIN10tensorflow6TensorESaIS1_EE12_Vector_implD2Ev(%"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl"* %_M_impl6) #11
  br label %terminate.handler

terminate.handler:                                ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  call void @__clang_call_terminate(i8* %exn) #16
  unreachable
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN10tensorflow6TensorESaIS1_EE13_M_deallocateEPS1_m(%"struct.std::_Vector_base.47"* %this, %"class.tensorflow::Tensor"* %__p, i64 %__n) #6 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base.47"*, align 8
  %__p.addr = alloca %"class.tensorflow::Tensor"*, align 8
  %__n.addr = alloca i64, align 8
  store %"struct.std::_Vector_base.47"* %this, %"struct.std::_Vector_base.47"** %this.addr, align 8
  store %"class.tensorflow::Tensor"* %__p, %"class.tensorflow::Tensor"** %__p.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %this1 = load %"struct.std::_Vector_base.47"*, %"struct.std::_Vector_base.47"** %this.addr, align 8
  %0 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %__p.addr, align 8
  %tobool = icmp ne %"class.tensorflow::Tensor"* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.47", %"struct.std::_Vector_base.47"* %this1, i32 0, i32 0
  %1 = bitcast %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl"* %_M_impl to %"class.std::ios_base::Init"*
  %2 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %__p.addr, align 8
  %3 = load i64, i64* %__n.addr, align 8
  call void @_ZNSt16allocator_traitsISaIN10tensorflow6TensorEEE10deallocateERS2_PS1_m(%"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1) %1, %"class.tensorflow::Tensor"* %2, i64 %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN10tensorflow6TensorESaIS1_EE12_Vector_implD2Ev(%"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl"* %this) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl"*, align 8
  store %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl"* %this, %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl"** %this.addr, align 8
  %this1 = load %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl"*, %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl"** %this.addr, align 8
  %0 = bitcast %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl"* %this1 to %"class.std::ios_base::Init"*
  call void @_ZNSaIN10tensorflow6TensorEED2Ev(%"class.std::ios_base::Init"* %0) #11
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSaIN10tensorflow6TensorEED2Ev(%"class.std::ios_base::Init"* %this) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::ios_base::Init"*, align 8
  store %"class.std::ios_base::Init"* %this, %"class.std::ios_base::Init"** %this.addr, align 8
  %this1 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %this.addr, align 8
  %0 = bitcast %"class.std::ios_base::Init"* %this1 to %"class.std::ios_base::Init"*
  call void @_ZN9__gnu_cxx13new_allocatorIN10tensorflow6TensorEED2Ev(%"class.std::ios_base::Init"* %0) #11
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorIN10tensorflow6TensorEED2Ev(%"class.std::ios_base::Init"* %this) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::ios_base::Init"*, align 8
  store %"class.std::ios_base::Init"* %this, %"class.std::ios_base::Init"** %this.addr, align 8
  %this1 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %this.addr, align 8
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIN10tensorflow6TensorEEE10deallocateERS2_PS1_m(%"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1) %__a, %"class.tensorflow::Tensor"* %__p, i64 %__n) #6 comdat align 2 {
entry:
  %__a.addr = alloca %"class.std::ios_base::Init"*, align 8
  %__p.addr = alloca %"class.tensorflow::Tensor"*, align 8
  %__n.addr = alloca i64, align 8
  store %"class.std::ios_base::Init"* %__a, %"class.std::ios_base::Init"** %__a.addr, align 8
  store %"class.tensorflow::Tensor"* %__p, %"class.tensorflow::Tensor"** %__p.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %0 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %__a.addr, align 8
  %1 = bitcast %"class.std::ios_base::Init"* %0 to %"class.std::ios_base::Init"*
  %2 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %__p.addr, align 8
  %3 = load i64, i64* %__n.addr, align 8
  call void @_ZN9__gnu_cxx13new_allocatorIN10tensorflow6TensorEE10deallocateEPS2_m(%"class.std::ios_base::Init"* %1, %"class.tensorflow::Tensor"* %2, i64 %3)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorIN10tensorflow6TensorEE10deallocateEPS2_m(%"class.std::ios_base::Init"* %this, %"class.tensorflow::Tensor"* %__p, i64 %__t) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::ios_base::Init"*, align 8
  %__p.addr = alloca %"class.tensorflow::Tensor"*, align 8
  %__t.addr = alloca i64, align 8
  store %"class.std::ios_base::Init"* %this, %"class.std::ios_base::Init"** %this.addr, align 8
  store %"class.tensorflow::Tensor"* %__p, %"class.tensorflow::Tensor"** %__p.addr, align 8
  store i64 %__t, i64* %__t.addr, align 8
  %this1 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %this.addr, align 8
  %0 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %__p.addr, align 8
  %1 = bitcast %"class.tensorflow::Tensor"* %0 to i8*
  call void @_ZdlPv(i8* %1) #11
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPN10tensorflow6TensorEEvT_S3_(%"class.tensorflow::Tensor"* %__first, %"class.tensorflow::Tensor"* %__last) #6 comdat {
entry:
  %__first.addr = alloca %"class.tensorflow::Tensor"*, align 8
  %__last.addr = alloca %"class.tensorflow::Tensor"*, align 8
  store %"class.tensorflow::Tensor"* %__first, %"class.tensorflow::Tensor"** %__first.addr, align 8
  store %"class.tensorflow::Tensor"* %__last, %"class.tensorflow::Tensor"** %__last.addr, align 8
  %0 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %__first.addr, align 8
  %1 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %__last.addr, align 8
  call void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN10tensorflow6TensorEEEvT_S5_(%"class.tensorflow::Tensor"* %0, %"class.tensorflow::Tensor"* %1)
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN10tensorflow6TensorEEEvT_S5_(%"class.tensorflow::Tensor"* %__first, %"class.tensorflow::Tensor"* %__last) #6 comdat align 2 {
entry:
  %__first.addr = alloca %"class.tensorflow::Tensor"*, align 8
  %__last.addr = alloca %"class.tensorflow::Tensor"*, align 8
  store %"class.tensorflow::Tensor"* %__first, %"class.tensorflow::Tensor"** %__first.addr, align 8
  store %"class.tensorflow::Tensor"* %__last, %"class.tensorflow::Tensor"** %__last.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %__first.addr, align 8
  %1 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %__last.addr, align 8
  %cmp = icmp ne %"class.tensorflow::Tensor"* %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %__first.addr, align 8
  %call = call %"class.tensorflow::Tensor"* @_ZSt11__addressofIN10tensorflow6TensorEEPT_RS2_(%"class.tensorflow::Tensor"* nonnull align 8 dereferenceable(32) %2) #11
  call void @_ZSt8_DestroyIN10tensorflow6TensorEEvPT_(%"class.tensorflow::Tensor"* %call)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %__first.addr, align 8
  %incdec.ptr = getelementptr inbounds %"class.tensorflow::Tensor", %"class.tensorflow::Tensor"* %3, i32 1
  store %"class.tensorflow::Tensor"* %incdec.ptr, %"class.tensorflow::Tensor"** %__first.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %"class.tensorflow::Tensor"* @_ZSt11__addressofIN10tensorflow6TensorEEPT_RS2_(%"class.tensorflow::Tensor"* nonnull align 8 dereferenceable(32) %__r) #0 comdat {
entry:
  %__r.addr = alloca %"class.tensorflow::Tensor"*, align 8
  store %"class.tensorflow::Tensor"* %__r, %"class.tensorflow::Tensor"** %__r.addr, align 8
  %0 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %__r.addr, align 8
  ret %"class.tensorflow::Tensor"* %0
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIN10tensorflow6TensorEEvPT_(%"class.tensorflow::Tensor"* %__pointer) #0 comdat {
entry:
  %__pointer.addr = alloca %"class.tensorflow::Tensor"*, align 8
  store %"class.tensorflow::Tensor"* %__pointer, %"class.tensorflow::Tensor"** %__pointer.addr, align 8
  %0 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %__pointer.addr, align 8
  call void @_ZN10tensorflow6TensorD1Ev(%"class.tensorflow::Tensor"* %0) #11
  ret void
}

; Function Attrs: nounwind
declare dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_(%"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32)) unnamed_addr #3

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN10tensorflow6TensorESaIS1_EEC2EOS3_(%"class.std::vector.48"* %this, %"class.std::vector.48"* nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::vector.48"*, align 8
  %.addr = alloca %"class.std::vector.48"*, align 8
  store %"class.std::vector.48"* %this, %"class.std::vector.48"** %this.addr, align 8
  store %"class.std::vector.48"* %0, %"class.std::vector.48"** %.addr, align 8
  %this1 = load %"class.std::vector.48"*, %"class.std::vector.48"** %this.addr, align 8
  %1 = bitcast %"class.std::vector.48"* %this1 to %"struct.std::_Vector_base.47"*
  %2 = load %"class.std::vector.48"*, %"class.std::vector.48"** %.addr, align 8
  %3 = bitcast %"class.std::vector.48"* %2 to %"struct.std::_Vector_base.47"*
  call void @_ZNSt12_Vector_baseIN10tensorflow6TensorESaIS1_EEC2EOS3_(%"struct.std::_Vector_base.47"* %1, %"struct.std::_Vector_base.47"* nonnull align 8 dereferenceable(24) %3) #11
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN10tensorflow6TensorESaIS1_EEC2EOS3_(%"struct.std::_Vector_base.47"* %this, %"struct.std::_Vector_base.47"* nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base.47"*, align 8
  %.addr = alloca %"struct.std::_Vector_base.47"*, align 8
  store %"struct.std::_Vector_base.47"* %this, %"struct.std::_Vector_base.47"** %this.addr, align 8
  store %"struct.std::_Vector_base.47"* %0, %"struct.std::_Vector_base.47"** %.addr, align 8
  %this1 = load %"struct.std::_Vector_base.47"*, %"struct.std::_Vector_base.47"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.47", %"struct.std::_Vector_base.47"* %this1, i32 0, i32 0
  %1 = load %"struct.std::_Vector_base.47"*, %"struct.std::_Vector_base.47"** %.addr, align 8
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base.47", %"struct.std::_Vector_base.47"* %1, i32 0, i32 0
  call void @_ZNSt12_Vector_baseIN10tensorflow6TensorESaIS1_EE12_Vector_implC2EOS4_(%"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl"* %_M_impl, %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl"* nonnull align 8 dereferenceable(24) %_M_impl2) #11
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN10tensorflow6TensorESaIS1_EE12_Vector_implC2EOS4_(%"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl"* %this, %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl"* nonnull align 8 dereferenceable(24) %__x) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl"*, align 8
  %__x.addr = alloca %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl"*, align 8
  store %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl"* %this, %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl"** %this.addr, align 8
  store %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl"* %__x, %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl"** %__x.addr, align 8
  %this1 = load %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl"*, %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl"** %this.addr, align 8
  %0 = bitcast %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl"* %this1 to %"class.std::ios_base::Init"*
  %1 = load %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl"*, %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl"** %__x.addr, align 8
  %call = call nonnull align 8 dereferenceable(24) %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl"* @_ZSt4moveIRNSt12_Vector_baseIN10tensorflow6TensorESaIS2_EE12_Vector_implEEONSt16remove_referenceIT_E4typeEOS8_(%"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl"* nonnull align 8 dereferenceable(24) %1) #11
  %2 = bitcast %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl"* %call to %"class.std::ios_base::Init"*
  call void @_ZNSaIN10tensorflow6TensorEEC2ERKS1_(%"class.std::ios_base::Init"* %0, %"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1) %2) #11
  %3 = bitcast %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl"* %this1 to %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl_data"*
  %4 = load %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl"*, %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl"** %__x.addr, align 8
  %call2 = call nonnull align 8 dereferenceable(24) %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl"* @_ZSt4moveIRNSt12_Vector_baseIN10tensorflow6TensorESaIS2_EE12_Vector_implEEONSt16remove_referenceIT_E4typeEOS8_(%"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl"* nonnull align 8 dereferenceable(24) %4) #11
  %5 = bitcast %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl"* %call2 to %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl_data"*
  call void @_ZNSt12_Vector_baseIN10tensorflow6TensorESaIS1_EE17_Vector_impl_dataC2EOS4_(%"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl_data"* %3, %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl_data"* nonnull align 8 dereferenceable(24) %5) #11
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(24) %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl"* @_ZSt4moveIRNSt12_Vector_baseIN10tensorflow6TensorESaIS2_EE12_Vector_implEEONSt16remove_referenceIT_E4typeEOS8_(%"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl"* nonnull align 8 dereferenceable(24) %__t) #0 comdat {
entry:
  %__t.addr = alloca %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl"*, align 8
  store %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl"* %__t, %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl"** %__t.addr, align 8
  %0 = load %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl"*, %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl"** %__t.addr, align 8
  ret %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl"* %0
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSaIN10tensorflow6TensorEEC2ERKS1_(%"class.std::ios_base::Init"* %this, %"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1) %__a) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::ios_base::Init"*, align 8
  %__a.addr = alloca %"class.std::ios_base::Init"*, align 8
  store %"class.std::ios_base::Init"* %this, %"class.std::ios_base::Init"** %this.addr, align 8
  store %"class.std::ios_base::Init"* %__a, %"class.std::ios_base::Init"** %__a.addr, align 8
  %this1 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %this.addr, align 8
  %0 = bitcast %"class.std::ios_base::Init"* %this1 to %"class.std::ios_base::Init"*
  %1 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %__a.addr, align 8
  %2 = bitcast %"class.std::ios_base::Init"* %1 to %"class.std::ios_base::Init"*
  call void @_ZN9__gnu_cxx13new_allocatorIN10tensorflow6TensorEEC2ERKS3_(%"class.std::ios_base::Init"* %0, %"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1) %2) #11
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN10tensorflow6TensorESaIS1_EE17_Vector_impl_dataC2EOS4_(%"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl_data"* %this, %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl_data"* nonnull align 8 dereferenceable(24) %__x) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl_data"*, align 8
  %__x.addr = alloca %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl_data"*, align 8
  store %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl_data"* %this, %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl_data"** %this.addr, align 8
  store %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl_data"* %__x, %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl_data"** %__x.addr, align 8
  %this1 = load %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl_data"*, %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl_data"** %this.addr, align 8
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl_data", %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl_data"* %this1, i32 0, i32 0
  %0 = load %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl_data"*, %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl_data"** %__x.addr, align 8
  %_M_start2 = getelementptr inbounds %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl_data", %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl_data"* %0, i32 0, i32 0
  %1 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %_M_start2, align 8
  store %"class.tensorflow::Tensor"* %1, %"class.tensorflow::Tensor"** %_M_start, align 8
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl_data", %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl_data"* %this1, i32 0, i32 1
  %2 = load %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl_data"*, %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl_data"** %__x.addr, align 8
  %_M_finish3 = getelementptr inbounds %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl_data", %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl_data"* %2, i32 0, i32 1
  %3 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %_M_finish3, align 8
  store %"class.tensorflow::Tensor"* %3, %"class.tensorflow::Tensor"** %_M_finish, align 8
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl_data", %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl_data"* %this1, i32 0, i32 2
  %4 = load %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl_data"*, %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl_data"** %__x.addr, align 8
  %_M_end_of_storage4 = getelementptr inbounds %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl_data", %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl_data"* %4, i32 0, i32 2
  %5 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %_M_end_of_storage4, align 8
  store %"class.tensorflow::Tensor"* %5, %"class.tensorflow::Tensor"** %_M_end_of_storage, align 8
  %6 = load %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl_data"*, %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl_data"** %__x.addr, align 8
  %_M_end_of_storage5 = getelementptr inbounds %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl_data", %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl_data"* %6, i32 0, i32 2
  store %"class.tensorflow::Tensor"* null, %"class.tensorflow::Tensor"** %_M_end_of_storage5, align 8
  %7 = load %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl_data"*, %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl_data"** %__x.addr, align 8
  %_M_finish6 = getelementptr inbounds %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl_data", %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl_data"* %7, i32 0, i32 1
  store %"class.tensorflow::Tensor"* null, %"class.tensorflow::Tensor"** %_M_finish6, align 8
  %8 = load %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl_data"*, %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl_data"** %__x.addr, align 8
  %_M_start7 = getelementptr inbounds %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl_data", %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl_data"* %8, i32 0, i32 0
  store %"class.tensorflow::Tensor"* null, %"class.tensorflow::Tensor"** %_M_start7, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorIN10tensorflow6TensorEEC2ERKS3_(%"class.std::ios_base::Init"* %this, %"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1) %0) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::ios_base::Init"*, align 8
  %.addr = alloca %"class.std::ios_base::Init"*, align 8
  store %"class.std::ios_base::Init"* %this, %"class.std::ios_base::Init"** %this.addr, align 8
  store %"class.std::ios_base::Init"* %0, %"class.std::ios_base::Init"** %.addr, align 8
  %this1 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %this.addr, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow22VariantTensorDataProtoC2EPN6google8protobuf5ArenaEOS0_(%"class.tensorflow::VariantTensorDataProto"* %this, %"class.google::protobuf::Arena"* %arena, %"class.tensorflow::VariantTensorDataProto"* nonnull align 8 dereferenceable(64) %from) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.tensorflow::VariantTensorDataProto"*, align 8
  %arena.addr = alloca %"class.google::protobuf::Arena"*, align 8
  %from.addr = alloca %"class.tensorflow::VariantTensorDataProto"*, align 8
  store %"class.tensorflow::VariantTensorDataProto"* %this, %"class.tensorflow::VariantTensorDataProto"** %this.addr, align 8
  store %"class.google::protobuf::Arena"* %arena, %"class.google::protobuf::Arena"** %arena.addr, align 8
  store %"class.tensorflow::VariantTensorDataProto"* %from, %"class.tensorflow::VariantTensorDataProto"** %from.addr, align 8
  %this1 = load %"class.tensorflow::VariantTensorDataProto"*, %"class.tensorflow::VariantTensorDataProto"** %this.addr, align 8
  %0 = load %"class.google::protobuf::Arena"*, %"class.google::protobuf::Arena"** %arena.addr, align 8
  invoke void @_ZN10tensorflow22VariantTensorDataProtoC2EPN6google8protobuf5ArenaE(%"class.tensorflow::VariantTensorDataProto"* %this1, %"class.google::protobuf::Arena"* %0)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  %1 = load %"class.tensorflow::VariantTensorDataProto"*, %"class.tensorflow::VariantTensorDataProto"** %from.addr, align 8
  %call = call nonnull align 8 dereferenceable(64) %"class.tensorflow::VariantTensorDataProto"* @_ZSt4moveIRN10tensorflow22VariantTensorDataProtoEEONSt16remove_referenceIT_E4typeEOS4_(%"class.tensorflow::VariantTensorDataProto"* nonnull align 8 dereferenceable(64) %1) #11
  %call2 = call nonnull align 8 dereferenceable(64) %"class.tensorflow::VariantTensorDataProto"* @_ZN10tensorflow22VariantTensorDataProtoaSEOS0_(%"class.tensorflow::VariantTensorDataProto"* %this1, %"class.tensorflow::VariantTensorDataProto"* nonnull align 8 dereferenceable(64) %call) #11
  ret void

terminate.lpad:                                   ; preds = %entry
  %2 = landingpad { i8*, i32 }
          catch i8* null
  %3 = extractvalue { i8*, i32 } %2, 0
  call void @__clang_call_terminate(i8* %3) #16
  unreachable
}

declare dso_local void @_ZN10tensorflow22VariantTensorDataProtoC2EPN6google8protobuf5ArenaE(%"class.tensorflow::VariantTensorDataProto"*, %"class.google::protobuf::Arena"*) unnamed_addr #4

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(64) %"class.tensorflow::VariantTensorDataProto"* @_ZN10tensorflow22VariantTensorDataProtoaSEOS0_(%"class.tensorflow::VariantTensorDataProto"* %this, %"class.tensorflow::VariantTensorDataProto"* nonnull align 8 dereferenceable(64) %from) #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %retval = alloca %"class.tensorflow::VariantTensorDataProto"*, align 8
  %this.addr = alloca %"class.tensorflow::VariantTensorDataProto"*, align 8
  %from.addr = alloca %"class.tensorflow::VariantTensorDataProto"*, align 8
  store %"class.tensorflow::VariantTensorDataProto"* %this, %"class.tensorflow::VariantTensorDataProto"** %this.addr, align 8
  store %"class.tensorflow::VariantTensorDataProto"* %from, %"class.tensorflow::VariantTensorDataProto"** %from.addr, align 8
  %this1 = load %"class.tensorflow::VariantTensorDataProto"*, %"class.tensorflow::VariantTensorDataProto"** %this.addr, align 8
  %0 = load %"class.tensorflow::VariantTensorDataProto"*, %"class.tensorflow::VariantTensorDataProto"** %from.addr, align 8
  %cmp = icmp eq %"class.tensorflow::VariantTensorDataProto"* %this1, %0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %"class.tensorflow::VariantTensorDataProto"* %this1, %"class.tensorflow::VariantTensorDataProto"** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = bitcast %"class.tensorflow::VariantTensorDataProto"* %this1 to %"class.google::protobuf::MessageLite"*
  %call = invoke %"class.google::protobuf::Arena"* @_ZNK6google8protobuf11MessageLite8GetArenaEv(%"class.google::protobuf::MessageLite"* %1)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %if.end
  %2 = load %"class.tensorflow::VariantTensorDataProto"*, %"class.tensorflow::VariantTensorDataProto"** %from.addr, align 8
  %3 = bitcast %"class.tensorflow::VariantTensorDataProto"* %2 to %"class.google::protobuf::MessageLite"*
  %call3 = invoke %"class.google::protobuf::Arena"* @_ZNK6google8protobuf11MessageLite8GetArenaEv(%"class.google::protobuf::MessageLite"* %3)
          to label %invoke.cont2 unwind label %terminate.lpad

invoke.cont2:                                     ; preds = %invoke.cont
  %cmp4 = icmp eq %"class.google::protobuf::Arena"* %call, %call3
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %invoke.cont2
  %4 = load %"class.tensorflow::VariantTensorDataProto"*, %"class.tensorflow::VariantTensorDataProto"** %from.addr, align 8
  invoke void @_ZN10tensorflow22VariantTensorDataProto12InternalSwapEPS0_(%"class.tensorflow::VariantTensorDataProto"* %this1, %"class.tensorflow::VariantTensorDataProto"* %4)
          to label %invoke.cont6 unwind label %terminate.lpad

invoke.cont6:                                     ; preds = %if.then5
  br label %if.end8

if.else:                                          ; preds = %invoke.cont2
  %5 = load %"class.tensorflow::VariantTensorDataProto"*, %"class.tensorflow::VariantTensorDataProto"** %from.addr, align 8
  invoke void @_ZN10tensorflow22VariantTensorDataProto8CopyFromERKS0_(%"class.tensorflow::VariantTensorDataProto"* %this1, %"class.tensorflow::VariantTensorDataProto"* nonnull align 8 dereferenceable(64) %5)
          to label %invoke.cont7 unwind label %terminate.lpad

invoke.cont7:                                     ; preds = %if.else
  br label %if.end8

if.end8:                                          ; preds = %invoke.cont7, %invoke.cont6
  store %"class.tensorflow::VariantTensorDataProto"* %this1, %"class.tensorflow::VariantTensorDataProto"** %retval, align 8
  br label %return

return:                                           ; preds = %if.end8, %if.then
  %6 = load %"class.tensorflow::VariantTensorDataProto"*, %"class.tensorflow::VariantTensorDataProto"** %retval, align 8
  ret %"class.tensorflow::VariantTensorDataProto"* %6

terminate.lpad:                                   ; preds = %if.else, %if.then5, %invoke.cont, %if.end
  %7 = landingpad { i8*, i32 }
          catch i8* null
  %8 = extractvalue { i8*, i32 } %7, 0
  call void @__clang_call_terminate(i8* %8) #16
  unreachable
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %"class.google::protobuf::Arena"* @_ZNK6google8protobuf11MessageLite8GetArenaEv(%"class.google::protobuf::MessageLite"* %this) #6 comdat align 2 {
entry:
  %this.addr = alloca %"class.google::protobuf::MessageLite"*, align 8
  store %"class.google::protobuf::MessageLite"* %this, %"class.google::protobuf::MessageLite"** %this.addr, align 8
  %this1 = load %"class.google::protobuf::MessageLite"*, %"class.google::protobuf::MessageLite"** %this.addr, align 8
  %_internal_metadata_ = getelementptr inbounds %"class.google::protobuf::MessageLite", %"class.google::protobuf::MessageLite"* %this1, i32 0, i32 1
  %call = call %"class.google::protobuf::Arena"* @_ZNK6google8protobuf8internal16InternalMetadata5arenaEv(%"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::Storage.4"* %_internal_metadata_)
  ret %"class.google::protobuf::Arena"* %call
}

declare dso_local void @_ZN10tensorflow22VariantTensorDataProto12InternalSwapEPS0_(%"class.tensorflow::VariantTensorDataProto"*, %"class.tensorflow::VariantTensorDataProto"*) #4

declare dso_local void @_ZN10tensorflow22VariantTensorDataProto8CopyFromERKS0_(%"class.tensorflow::VariantTensorDataProto"*, %"class.tensorflow::VariantTensorDataProto"* nonnull align 8 dereferenceable(64)) #4

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %"class.google::protobuf::Arena"* @_ZNK6google8protobuf8internal16InternalMetadata5arenaEv(%"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::Storage.4"* %this) #6 comdat align 2 {
entry:
  %retval = alloca %"class.google::protobuf::Arena"*, align 8
  %this.addr = alloca %"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::Storage.4"*, align 8
  store %"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::Storage.4"* %this, %"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::Storage.4"** %this.addr, align 8
  %this1 = load %"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::Storage.4"*, %"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::Storage.4"** %this.addr, align 8
  %call = call zeroext i1 @_ZNK6google8protobuf8internal16InternalMetadata19have_unknown_fieldsEv(%"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::Storage.4"* %this1)
  br i1 %call, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call2 = call %"struct.google::protobuf::internal::InternalMetadata::ContainerBase"* @_ZNK6google8protobuf8internal16InternalMetadata8PtrValueINS2_13ContainerBaseEEEPT_v(%"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::Storage.4"* %this1)
  %arena = getelementptr inbounds %"struct.google::protobuf::internal::InternalMetadata::ContainerBase", %"struct.google::protobuf::internal::InternalMetadata::ContainerBase"* %call2, i32 0, i32 0
  %0 = load %"class.google::protobuf::Arena"*, %"class.google::protobuf::Arena"** %arena, align 8
  store %"class.google::protobuf::Arena"* %0, %"class.google::protobuf::Arena"** %retval, align 8
  br label %return

if.else:                                          ; preds = %entry
  %call3 = call %"class.google::protobuf::Arena"* @_ZNK6google8protobuf8internal16InternalMetadata8PtrValueINS0_5ArenaEEEPT_v(%"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::Storage.4"* %this1)
  store %"class.google::protobuf::Arena"* %call3, %"class.google::protobuf::Arena"** %retval, align 8
  br label %return

return:                                           ; preds = %if.else, %if.then
  %1 = load %"class.google::protobuf::Arena"*, %"class.google::protobuf::Arena"** %retval, align 8
  ret %"class.google::protobuf::Arena"* %1
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local zeroext i1 @_ZNK6google8protobuf8internal16InternalMetadata19have_unknown_fieldsEv(%"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::Storage.4"* %this) #6 comdat align 2 {
entry:
  %this.addr.i = alloca %"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::Storage.4"*, align 8
  %this.addr = alloca %"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::Storage.4"*, align 8
  store %"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::Storage.4"* %this, %"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::Storage.4"** %this.addr, align 8
  %this1 = load %"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::Storage.4"*, %"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::Storage.4"** %this.addr, align 8
  store %"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::Storage.4"* %this1, %"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::Storage.4"** %this.addr.i, align 8
  %this1.i = load %"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::Storage.4"*, %"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::Storage.4"** %this.addr.i, align 8
  %ptr_.i = getelementptr inbounds %"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::Storage.4", %"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::Storage.4"* %this1.i, i32 0, i32 0
  %0 = load i64, i64* %ptr_.i, align 8
  %and.i = and i64 %0, 1
  %tobool.i = icmp ne i64 %and.i, 0
  ret i1 %tobool.i
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %"struct.google::protobuf::internal::InternalMetadata::ContainerBase"* @_ZNK6google8protobuf8internal16InternalMetadata8PtrValueINS2_13ContainerBaseEEEPT_v(%"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::Storage.4"* %this) #0 comdat align 2 {
entry:
  %this.addr = alloca %"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::Storage.4"*, align 8
  store %"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::Storage.4"* %this, %"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::Storage.4"** %this.addr, align 8
  %this1 = load %"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::Storage.4"*, %"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::Storage.4"** %this.addr, align 8
  %ptr_ = getelementptr inbounds %"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::Storage.4", %"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::Storage.4"* %this1, i32 0, i32 0
  %0 = load i64, i64* %ptr_, align 8
  %and = and i64 %0, -2
  %1 = inttoptr i64 %and to %"struct.google::protobuf::internal::InternalMetadata::ContainerBase"*
  ret %"struct.google::protobuf::internal::InternalMetadata::ContainerBase"* %1
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %"class.google::protobuf::Arena"* @_ZNK6google8protobuf8internal16InternalMetadata8PtrValueINS0_5ArenaEEEPT_v(%"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::Storage.4"* %this) #0 comdat align 2 {
entry:
  %this.addr = alloca %"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::Storage.4"*, align 8
  store %"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::Storage.4"* %this, %"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::Storage.4"** %this.addr, align 8
  %this1 = load %"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::Storage.4"*, %"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::Storage.4"** %this.addr, align 8
  %ptr_ = getelementptr inbounds %"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::Storage.4", %"struct.absl::lts_20250127::container_internal::internal_compressed_tuple::Storage.4"* %this1, i32 0, i32 0
  %0 = load i64, i64* %ptr_, align 8
  %and = and i64 %0, -2
  %1 = inttoptr i64 %and to %"class.google::protobuf::Arena"*
  ret %"class.google::protobuf::Arena"* %1
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local zeroext i1 @_ZN10tensorflow7Variant13CanInlineTypeINS_6TensorEEEbv() #0 comdat align 2 {
entry:
  ret i1 true
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(32) %"class.tensorflow::Tensor"* @_ZSt7forwardIN10tensorflow6TensorEEOT_RNSt16remove_referenceIS2_E4typeE(%"class.tensorflow::Tensor"* nonnull align 8 dereferenceable(32) %__t) #0 comdat {
entry:
  %__t.addr = alloca %"class.tensorflow::Tensor"*, align 8
  store %"class.tensorflow::Tensor"* %__t, %"class.tensorflow::Tensor"** %__t.addr, align 8
  %0 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %__t.addr, align 8
  ret %"class.tensorflow::Tensor"* %0
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow7Variant11InsertValueINS_6TensorES2_EEvOT0_(%"class.tensorflow::Variant"* %this, %"class.tensorflow::Tensor"* nonnull align 8 dereferenceable(32) %value) #6 comdat align 2 {
entry:
  %this.addr = alloca %"class.tensorflow::Variant"*, align 8
  %value.addr = alloca %"class.tensorflow::Tensor"*, align 8
  %agg.tmp = alloca %"class.std::ios_base::Init", align 1
  %ref.tmp = alloca %"class.std::unique_ptr.47", align 8
  %ref.tmp3 = alloca %"class.std::ios_base::Init", align 1
  %undef.agg.tmp = alloca %"class.std::ios_base::Init", align 1
  store %"class.tensorflow::Variant"* %this, %"class.tensorflow::Variant"** %this.addr, align 8
  store %"class.tensorflow::Tensor"* %value, %"class.tensorflow::Tensor"** %value.addr, align 8
  %this1 = load %"class.tensorflow::Variant"*, %"class.tensorflow::Variant"** %this.addr, align 8
  %call = call zeroext i1 @_ZNK10tensorflow7Variant13IsInlineValueEv(%"class.tensorflow::Variant"* %this1)
  br i1 %call, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %0 = getelementptr inbounds %"class.tensorflow::Variant", %"class.tensorflow::Variant"* %this1, i32 0, i32 0
  %inline_value_ = bitcast %union.anon.20* %0 to %"struct.tensorflow::Variant::InlineValue"*
  %1 = bitcast %"struct.tensorflow::Variant::InlineValue"* %inline_value_ to i8*
  %2 = bitcast i8* %1 to %"struct.tensorflow::Variant::InlineValue"*
  %3 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %value.addr, align 8
  %call2 = call nonnull align 8 dereferenceable(32) %"class.tensorflow::Tensor"* @_ZSt7forwardIN10tensorflow6TensorEEOT_RNSt16remove_referenceIS2_E4typeE(%"class.tensorflow::Tensor"* nonnull align 8 dereferenceable(32) %3) #11
  call void @_ZN10tensorflow7Variant11InlineValueC2INS_6TensorEJS3_EEENS1_3TagIT_EEDpOT0_(%"struct.tensorflow::Variant::InlineValue"* %2, %"class.tensorflow::Tensor"* nonnull align 8 dereferenceable(32) %call2) #11
  br label %if.end

if.else:                                          ; preds = %entry
  %4 = getelementptr inbounds %"class.tensorflow::Variant", %"class.tensorflow::Variant"* %this1, i32 0, i32 0
  %heap_value_ = bitcast %union.anon.20* %4 to %"class.std::unique_ptr"*
  %5 = bitcast %"class.std::unique_ptr"* %heap_value_ to i8*
  %6 = bitcast i8* %5 to %"class.std::unique_ptr"*
  call void @_ZN10tensorflow7Variant7InPlaceEv()
  %7 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %value.addr, align 8
  %call4 = call nonnull align 8 dereferenceable(32) %"class.tensorflow::Tensor"* @_ZSt7forwardIN10tensorflow6TensorEEOT_RNSt16remove_referenceIS2_E4typeE(%"class.tensorflow::Tensor"* nonnull align 8 dereferenceable(32) %7) #11
  call void @_ZSt11make_uniqueIN10tensorflow7Variant5ValueINS0_6TensorEEEJNS1_10in_place_tES3_EENSt9_MakeUniqIT_E15__single_objectEDpOT0_(%"class.std::unique_ptr.47"* sret align 8 %ref.tmp, %"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1) %ref.tmp3, %"class.tensorflow::Tensor"* nonnull align 8 dereferenceable(32) %call4)
  call void @_ZNSt10unique_ptrIN10tensorflow7Variant14ValueInterfaceESt14default_deleteIS2_EEC2INS1_5ValueINS0_6TensorEEES3_IS9_EvEEOS_IT_T0_E(%"class.std::unique_ptr"* %6, %"class.std::unique_ptr.47"* nonnull align 8 dereferenceable(8) %ref.tmp) #11
  call void @_ZNSt10unique_ptrIN10tensorflow7Variant5ValueINS0_6TensorEEESt14default_deleteIS4_EED2Ev(%"class.std::unique_ptr.47"* %ref.tmp) #11
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow7Variant11InlineValueC2INS_6TensorEJS3_EEENS1_3TagIT_EEDpOT0_(%"struct.tensorflow::Variant::InlineValue"* %this, %"class.tensorflow::Tensor"* nonnull align 8 dereferenceable(32) %args) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %0 = alloca %"class.std::ios_base::Init", align 1
  %this.addr = alloca %"struct.tensorflow::Variant::InlineValue"*, align 8
  %args.addr = alloca %"class.tensorflow::Tensor"*, align 8
  %inline_value_data = alloca %"class.tensorflow::TensorInterface"*, align 8
  %agg.tmp = alloca %"class.std::ios_base::Init", align 1
  %undef.agg.tmp = alloca %"class.std::ios_base::Init", align 1
  store %"struct.tensorflow::Variant::InlineValue"* %this, %"struct.tensorflow::Variant::InlineValue"** %this.addr, align 8
  store %"class.tensorflow::Tensor"* %args, %"class.tensorflow::Tensor"** %args.addr, align 8
  %this1 = load %"struct.tensorflow::Variant::InlineValue"*, %"struct.tensorflow::Variant::InlineValue"** %this.addr, align 8
  %value_data = getelementptr inbounds %"struct.tensorflow::Variant::InlineValue", %"struct.tensorflow::Variant::InlineValue"* %this1, i32 0, i32 0
  %arraydecay = getelementptr inbounds [56 x i8], [56 x i8]* %value_data, i64 0, i64 0
  %1 = bitcast i8* %arraydecay to %"class.tensorflow::TensorInterface"*
  store %"class.tensorflow::TensorInterface"* %1, %"class.tensorflow::TensorInterface"** %inline_value_data, align 8
  %2 = load %"class.tensorflow::TensorInterface"*, %"class.tensorflow::TensorInterface"** %inline_value_data, align 8
  %3 = bitcast %"class.tensorflow::TensorInterface"* %2 to i8*
  %4 = bitcast i8* %3 to %"class.tensorflow::TensorInterface"*
  invoke void @_ZN10tensorflow7Variant7InPlaceEv()
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  %5 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %args.addr, align 8
  %call = call nonnull align 8 dereferenceable(32) %"class.tensorflow::Tensor"* @_ZSt7forwardIN10tensorflow6TensorEEOT_RNSt16remove_referenceIS2_E4typeE(%"class.tensorflow::Tensor"* nonnull align 8 dereferenceable(32) %5) #11
  invoke void @_ZN10tensorflow7Variant5ValueINS_6TensorEEC2IJS2_EEENS0_10in_place_tEDpOT_(%"class.tensorflow::TensorInterface"* %4, %"class.tensorflow::Tensor"* nonnull align 8 dereferenceable(32) %call)
          to label %invoke.cont2 unwind label %terminate.lpad

invoke.cont2:                                     ; preds = %invoke.cont
  ret void

terminate.lpad:                                   ; preds = %invoke.cont, %entry
  %6 = landingpad { i8*, i32 }
          catch i8* null
  %7 = extractvalue { i8*, i32 } %6, 0
  call void @__clang_call_terminate(i8* %7) #16
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow7Variant7InPlaceEv() #0 comdat align 2 {
entry:
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZSt11make_uniqueIN10tensorflow7Variant5ValueINS0_6TensorEEEJNS1_10in_place_tES3_EENSt9_MakeUniqIT_E15__single_objectEDpOT0_(%"class.std::unique_ptr.47"* noalias sret align 8 %agg.result, %"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1) %__args, %"class.tensorflow::Tensor"* nonnull align 8 dereferenceable(32) %__args1) #6 comdat personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %result.ptr = alloca i8*, align 8
  %__args.addr = alloca %"class.std::ios_base::Init"*, align 8
  %__args.addr2 = alloca %"class.tensorflow::Tensor"*, align 8
  %agg.tmp = alloca %"class.std::ios_base::Init", align 1
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  %0 = bitcast %"class.std::unique_ptr.47"* %agg.result to i8*
  store i8* %0, i8** %result.ptr, align 8
  store %"class.std::ios_base::Init"* %__args, %"class.std::ios_base::Init"** %__args.addr, align 8
  store %"class.tensorflow::Tensor"* %__args1, %"class.tensorflow::Tensor"** %__args.addr2, align 8
  %call = call noalias nonnull i8* @_Znwm(i64 40) #21
  %1 = bitcast i8* %call to %"class.tensorflow::TensorInterface"*
  %2 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %__args.addr, align 8
  %call3 = call nonnull align 1 dereferenceable(1) %"class.std::ios_base::Init"* @_ZSt7forwardIN10tensorflow7Variant10in_place_tEEOT_RNSt16remove_referenceIS3_E4typeE(%"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1) %2) #11
  %3 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %__args.addr2, align 8
  %call4 = call nonnull align 8 dereferenceable(32) %"class.tensorflow::Tensor"* @_ZSt7forwardIN10tensorflow6TensorEEOT_RNSt16remove_referenceIS2_E4typeE(%"class.tensorflow::Tensor"* nonnull align 8 dereferenceable(32) %3) #11
  invoke void @_ZN10tensorflow7Variant5ValueINS_6TensorEEC2IJS2_EEENS0_10in_place_tEDpOT_(%"class.tensorflow::TensorInterface"* %1, %"class.tensorflow::Tensor"* nonnull align 8 dereferenceable(32) %call4)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  call void @_ZNSt10unique_ptrIN10tensorflow7Variant5ValueINS0_6TensorEEESt14default_deleteIS4_EEC2IS6_vEEPS4_(%"class.std::unique_ptr.47"* %agg.result, %"class.tensorflow::TensorInterface"* %1) #11
  ret void

lpad:                                             ; preds = %entry
  %4 = landingpad { i8*, i32 }
          cleanup
  %5 = extractvalue { i8*, i32 } %4, 0
  store i8* %5, i8** %exn.slot, align 8
  %6 = extractvalue { i8*, i32 } %4, 1
  store i32 %6, i32* %ehselector.slot, align 4
  call void @_ZdlPv(i8* %call) #19
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val5 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val5
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt10unique_ptrIN10tensorflow7Variant14ValueInterfaceESt14default_deleteIS2_EEC2INS1_5ValueINS0_6TensorEEES3_IS9_EvEEOS_IT_T0_E(%"class.std::unique_ptr"* %this, %"class.std::unique_ptr.47"* nonnull align 8 dereferenceable(8) %__u) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::unique_ptr"*, align 8
  %__u.addr = alloca %"class.std::unique_ptr.47"*, align 8
  store %"class.std::unique_ptr"* %this, %"class.std::unique_ptr"** %this.addr, align 8
  store %"class.std::unique_ptr.47"* %__u, %"class.std::unique_ptr.47"** %__u.addr, align 8
  %this1 = load %"class.std::unique_ptr"*, %"class.std::unique_ptr"** %this.addr, align 8
  %_M_t = getelementptr inbounds %"class.std::unique_ptr", %"class.std::unique_ptr"* %this1, i32 0, i32 0
  %0 = load %"class.std::unique_ptr.47"*, %"class.std::unique_ptr.47"** %__u.addr, align 8
  %call = call %"class.tensorflow::TensorInterface"* @_ZNSt10unique_ptrIN10tensorflow7Variant5ValueINS0_6TensorEEESt14default_deleteIS4_EE7releaseEv(%"class.std::unique_ptr.47"* %0) #11
  %1 = bitcast %"class.tensorflow::TensorInterface"* %call to %"class.tensorflow::AbstractTensorInterface"*
  %2 = load %"class.std::unique_ptr.47"*, %"class.std::unique_ptr.47"** %__u.addr, align 8
  %call2 = call nonnull align 1 dereferenceable(1) %"class.std::ios_base::Init"* @_ZNSt10unique_ptrIN10tensorflow7Variant5ValueINS0_6TensorEEESt14default_deleteIS4_EE11get_deleterEv(%"class.std::unique_ptr.47"* %2) #11
  %call3 = call nonnull align 1 dereferenceable(1) %"class.std::ios_base::Init"* @_ZSt7forwardISt14default_deleteIN10tensorflow7Variant5ValueINS1_6TensorEEEEEOT_RNSt16remove_referenceIS7_E4typeE(%"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1) %call2) #11
  invoke void @_ZNSt15__uniq_ptr_dataIN10tensorflow7Variant14ValueInterfaceESt14default_deleteIS2_ELb1ELb1EECI2St15__uniq_ptr_implIS2_S4_EIS3_INS1_5ValueINS0_6TensorEEEEEEPS2_OT_(%"struct.std::__uniq_ptr_data"* %_M_t, %"class.tensorflow::AbstractTensorInterface"* %1, %"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1) %call3)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  ret void

terminate.lpad:                                   ; preds = %entry
  %3 = landingpad { i8*, i32 }
          catch i8* null
  %4 = extractvalue { i8*, i32 } %3, 0
  call void @__clang_call_terminate(i8* %4) #16
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt10unique_ptrIN10tensorflow7Variant5ValueINS0_6TensorEEESt14default_deleteIS4_EED2Ev(%"class.std::unique_ptr.47"* %this) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::unique_ptr.47"*, align 8
  %__ptr = alloca %"class.tensorflow::TensorInterface"**, align 8
  store %"class.std::unique_ptr.47"* %this, %"class.std::unique_ptr.47"** %this.addr, align 8
  %this1 = load %"class.std::unique_ptr.47"*, %"class.std::unique_ptr.47"** %this.addr, align 8
  %_M_t = getelementptr inbounds %"class.std::unique_ptr.47", %"class.std::unique_ptr.47"* %this1, i32 0, i32 0
  %0 = bitcast %"struct.std::__uniq_ptr_data.48"* %_M_t to %"class.std::__uniq_ptr_impl.49"*
  %call = invoke nonnull align 8 dereferenceable(8) %"class.tensorflow::TensorInterface"** @_ZNSt15__uniq_ptr_implIN10tensorflow7Variant5ValueINS0_6TensorEEESt14default_deleteIS4_EE6_M_ptrEv(%"class.std::__uniq_ptr_impl.49"* %0)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  store %"class.tensorflow::TensorInterface"** %call, %"class.tensorflow::TensorInterface"*** %__ptr, align 8
  %1 = load %"class.tensorflow::TensorInterface"**, %"class.tensorflow::TensorInterface"*** %__ptr, align 8
  %2 = load %"class.tensorflow::TensorInterface"*, %"class.tensorflow::TensorInterface"** %1, align 8
  %cmp = icmp ne %"class.tensorflow::TensorInterface"* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %invoke.cont
  %call2 = call nonnull align 1 dereferenceable(1) %"class.std::ios_base::Init"* @_ZNSt10unique_ptrIN10tensorflow7Variant5ValueINS0_6TensorEEESt14default_deleteIS4_EE11get_deleterEv(%"class.std::unique_ptr.47"* %this1) #11
  %3 = load %"class.tensorflow::TensorInterface"**, %"class.tensorflow::TensorInterface"*** %__ptr, align 8
  %call3 = call nonnull align 8 dereferenceable(8) %"class.tensorflow::TensorInterface"** @_ZSt4moveIRPN10tensorflow7Variant5ValueINS0_6TensorEEEEONSt16remove_referenceIT_E4typeEOS8_(%"class.tensorflow::TensorInterface"** nonnull align 8 dereferenceable(8) %3) #11
  %4 = load %"class.tensorflow::TensorInterface"*, %"class.tensorflow::TensorInterface"** %call3, align 8
  invoke void @_ZNKSt14default_deleteIN10tensorflow7Variant5ValueINS0_6TensorEEEEclEPS4_(%"class.std::ios_base::Init"* %call2, %"class.tensorflow::TensorInterface"* %4)
          to label %invoke.cont4 unwind label %terminate.lpad

invoke.cont4:                                     ; preds = %if.then
  br label %if.end

if.end:                                           ; preds = %invoke.cont4, %invoke.cont
  %5 = load %"class.tensorflow::TensorInterface"**, %"class.tensorflow::TensorInterface"*** %__ptr, align 8
  store %"class.tensorflow::TensorInterface"* null, %"class.tensorflow::TensorInterface"** %5, align 8
  ret void

terminate.lpad:                                   ; preds = %if.then, %entry
  %6 = landingpad { i8*, i32 }
          catch i8* null
  %7 = extractvalue { i8*, i32 } %6, 0
  call void @__clang_call_terminate(i8* %7) #16
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) %"class.tensorflow::TensorInterface"** @_ZNSt15__uniq_ptr_implIN10tensorflow7Variant5ValueINS0_6TensorEEESt14default_deleteIS4_EE6_M_ptrEv(%"class.std::__uniq_ptr_impl.49"* %this) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::__uniq_ptr_impl.49"*, align 8
  store %"class.std::__uniq_ptr_impl.49"* %this, %"class.std::__uniq_ptr_impl.49"** %this.addr, align 8
  %this1 = load %"class.std::__uniq_ptr_impl.49"*, %"class.std::__uniq_ptr_impl.49"** %this.addr, align 8
  %_M_t = getelementptr inbounds %"class.std::__uniq_ptr_impl.49", %"class.std::__uniq_ptr_impl.49"* %this1, i32 0, i32 0
  %call = call nonnull align 8 dereferenceable(8) %"class.tensorflow::TensorInterface"** @_ZSt3getILm0EJPN10tensorflow7Variant5ValueINS0_6TensorEEESt14default_deleteIS4_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSC_(%"class.std::tuple.50"* nonnull align 8 dereferenceable(8) %_M_t) #11
  ret %"class.tensorflow::TensorInterface"** %call
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 1 dereferenceable(1) %"class.std::ios_base::Init"* @_ZNSt10unique_ptrIN10tensorflow7Variant5ValueINS0_6TensorEEESt14default_deleteIS4_EE11get_deleterEv(%"class.std::unique_ptr.47"* %this) #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::unique_ptr.47"*, align 8
  store %"class.std::unique_ptr.47"* %this, %"class.std::unique_ptr.47"** %this.addr, align 8
  %this1 = load %"class.std::unique_ptr.47"*, %"class.std::unique_ptr.47"** %this.addr, align 8
  %_M_t = getelementptr inbounds %"class.std::unique_ptr.47", %"class.std::unique_ptr.47"* %this1, i32 0, i32 0
  %0 = bitcast %"struct.std::__uniq_ptr_data.48"* %_M_t to %"class.std::__uniq_ptr_impl.49"*
  %call = invoke nonnull align 1 dereferenceable(1) %"class.std::ios_base::Init"* @_ZNSt15__uniq_ptr_implIN10tensorflow7Variant5ValueINS0_6TensorEEESt14default_deleteIS4_EE10_M_deleterEv(%"class.std::__uniq_ptr_impl.49"* %0)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  ret %"class.std::ios_base::Init"* %call

terminate.lpad:                                   ; preds = %entry
  %1 = landingpad { i8*, i32 }
          catch i8* null
  %2 = extractvalue { i8*, i32 } %1, 0
  call void @__clang_call_terminate(i8* %2) #16
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) %"class.tensorflow::TensorInterface"** @_ZSt4moveIRPN10tensorflow7Variant5ValueINS0_6TensorEEEEONSt16remove_referenceIT_E4typeEOS8_(%"class.tensorflow::TensorInterface"** nonnull align 8 dereferenceable(8) %__t) #0 comdat {
entry:
  %__t.addr = alloca %"class.tensorflow::TensorInterface"**, align 8
  store %"class.tensorflow::TensorInterface"** %__t, %"class.tensorflow::TensorInterface"*** %__t.addr, align 8
  %0 = load %"class.tensorflow::TensorInterface"**, %"class.tensorflow::TensorInterface"*** %__t.addr, align 8
  ret %"class.tensorflow::TensorInterface"** %0
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNKSt14default_deleteIN10tensorflow7Variant5ValueINS0_6TensorEEEEclEPS4_(%"class.std::ios_base::Init"* %this, %"class.tensorflow::TensorInterface"* %__ptr) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::ios_base::Init"*, align 8
  %__ptr.addr = alloca %"class.tensorflow::TensorInterface"*, align 8
  store %"class.std::ios_base::Init"* %this, %"class.std::ios_base::Init"** %this.addr, align 8
  store %"class.tensorflow::TensorInterface"* %__ptr, %"class.tensorflow::TensorInterface"** %__ptr.addr, align 8
  %this1 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %this.addr, align 8
  %0 = load %"class.tensorflow::TensorInterface"*, %"class.tensorflow::TensorInterface"** %__ptr.addr, align 8
  %isnull = icmp eq %"class.tensorflow::TensorInterface"* %0, null
  br i1 %isnull, label %delete.end, label %delete.notnull

delete.notnull:                                   ; preds = %entry
  call void @_ZN10tensorflow7Variant5ValueINS_6TensorEED2Ev(%"class.tensorflow::TensorInterface"* %0) #11
  %1 = bitcast %"class.tensorflow::TensorInterface"* %0 to i8*
  call void @_ZdlPv(i8* %1) #19
  br label %delete.end

delete.end:                                       ; preds = %delete.notnull, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow7Variant5ValueINS_6TensorEED2Ev(%"class.tensorflow::TensorInterface"* %this) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.tensorflow::TensorInterface"*, align 8
  store %"class.tensorflow::TensorInterface"* %this, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  %this1 = load %"class.tensorflow::TensorInterface"*, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  %0 = bitcast %"class.tensorflow::TensorInterface"* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [17 x i8*] }, { [17 x i8*] }* @_ZTVN10tensorflow7Variant5ValueINS_6TensorEEE, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %0, align 8
  %value = getelementptr inbounds %"class.tensorflow::TensorInterface", %"class.tensorflow::TensorInterface"* %this1, i32 0, i32 1
  call void @_ZN10tensorflow6TensorD1Ev(%"class.tensorflow::Tensor"* %value) #11
  %1 = bitcast %"class.tensorflow::TensorInterface"* %this1 to %"class.tensorflow::AbstractTensorInterface"*
  call void @_ZN10tensorflow7Variant14ValueInterfaceD2Ev(%"class.tensorflow::AbstractTensorInterface"* %1) #11
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow7Variant14ValueInterfaceD2Ev(%"class.tensorflow::AbstractTensorInterface"* %this) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.tensorflow::AbstractTensorInterface"*, align 8
  store %"class.tensorflow::AbstractTensorInterface"* %this, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  %this1 = load %"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow7Variant5ValueINS_6TensorEED0Ev(%"class.tensorflow::TensorInterface"* %this) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.tensorflow::TensorInterface"*, align 8
  store %"class.tensorflow::TensorInterface"* %this, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  %this1 = load %"class.tensorflow::TensorInterface"*, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  call void @_ZN10tensorflow7Variant5ValueINS_6TensorEED2Ev(%"class.tensorflow::TensorInterface"* %this1) #11
  %0 = bitcast %"class.tensorflow::TensorInterface"* %this1 to i8*
  call void @_ZdlPv(i8* %0) #19
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNK10tensorflow7Variant5ValueINS_6TensorEE6TypeIdEv(%"class.std::basic_string_view"* noalias sret align 8 %agg.result, %"class.tensorflow::TensorInterface"* %this) unnamed_addr #6 comdat align 2 {
entry:
  %result.ptr = alloca i8*, align 8
  %this.addr = alloca %"class.tensorflow::TensorInterface"*, align 8
  %nrvo = alloca i1, align 1
  %0 = bitcast %"class.std::basic_string_view"* %agg.result to i8*
  store i8* %0, i8** %result.ptr, align 8
  store %"class.tensorflow::TensorInterface"* %this, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  %this1 = load %"class.tensorflow::TensorInterface"*, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  store i1 false, i1* %nrvo, align 1
  call void @_ZN10tensorflow9TypeIndex4MakeINS_6TensorEEES0_v(%"class.std::basic_string_view"* sret align 8 %agg.result)
  store i1 true, i1* %nrvo, align 1
  %nrvo.val = load i1, i1* %nrvo, align 1
  br i1 %nrvo.val, label %nrvo.skipdtor, label %nrvo.unused

nrvo.unused:                                      ; preds = %entry
  call void @_ZN10tensorflow9TypeIndexD2Ev(%"class.std::basic_string_view"* %agg.result) #11
  br label %nrvo.skipdtor

nrvo.skipdtor:                                    ; preds = %nrvo.unused, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i8* @_ZN10tensorflow7Variant5ValueINS_6TensorEE6RawPtrEv(%"class.tensorflow::TensorInterface"* %this) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.tensorflow::TensorInterface"*, align 8
  store %"class.tensorflow::TensorInterface"* %this, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  %this1 = load %"class.tensorflow::TensorInterface"*, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  %value = getelementptr inbounds %"class.tensorflow::TensorInterface", %"class.tensorflow::TensorInterface"* %this1, i32 0, i32 1
  %0 = bitcast %"class.tensorflow::Tensor"* %value to i8*
  ret i8* %0
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i8* @_ZNK10tensorflow7Variant5ValueINS_6TensorEE6RawPtrEv(%"class.tensorflow::TensorInterface"* %this) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.tensorflow::TensorInterface"*, align 8
  store %"class.tensorflow::TensorInterface"* %this, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  %this1 = load %"class.tensorflow::TensorInterface"*, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  %value = getelementptr inbounds %"class.tensorflow::TensorInterface", %"class.tensorflow::TensorInterface"* %this1, i32 0, i32 1
  %0 = bitcast %"class.tensorflow::Tensor"* %value to i8*
  ret i8* %0
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNK10tensorflow7Variant5ValueINS_6TensorEE5CloneEv(%"class.std::unique_ptr"* noalias sret align 8 %agg.result, %"class.tensorflow::TensorInterface"* %this) unnamed_addr #6 comdat align 2 {
entry:
  %result.ptr = alloca i8*, align 8
  %this.addr = alloca %"class.tensorflow::TensorInterface"*, align 8
  %ref.tmp = alloca %"class.std::unique_ptr.47", align 8
  %ref.tmp2 = alloca %"class.std::ios_base::Init", align 1
  %undef.agg.tmp = alloca %"class.std::ios_base::Init", align 1
  %0 = bitcast %"class.std::unique_ptr"* %agg.result to i8*
  store i8* %0, i8** %result.ptr, align 8
  store %"class.tensorflow::TensorInterface"* %this, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  %this1 = load %"class.tensorflow::TensorInterface"*, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  call void @_ZN10tensorflow7Variant7InPlaceEv()
  %value = getelementptr inbounds %"class.tensorflow::TensorInterface", %"class.tensorflow::TensorInterface"* %this1, i32 0, i32 1
  call void @_ZSt11make_uniqueIN10tensorflow7Variant5ValueINS0_6TensorEEEJNS1_10in_place_tERKS3_EENSt9_MakeUniqIT_E15__single_objectEDpOT0_(%"class.std::unique_ptr.47"* sret align 8 %ref.tmp, %"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1) %ref.tmp2, %"class.tensorflow::Tensor"* nonnull align 8 dereferenceable(32) %value)
  call void @_ZNSt10unique_ptrIN10tensorflow7Variant14ValueInterfaceESt14default_deleteIS2_EEC2INS1_5ValueINS0_6TensorEEES3_IS9_EvEEOS_IT_T0_E(%"class.std::unique_ptr"* %agg.result, %"class.std::unique_ptr.47"* nonnull align 8 dereferenceable(8) %ref.tmp) #11
  call void @_ZNSt10unique_ptrIN10tensorflow7Variant5ValueINS0_6TensorEEESt14default_deleteIS4_EED2Ev(%"class.std::unique_ptr.47"* %ref.tmp) #11
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNK10tensorflow7Variant5ValueINS_6TensorEE9CloneIntoEPNS0_14ValueInterfaceE(%"class.tensorflow::TensorInterface"* %this, %"class.tensorflow::AbstractTensorInterface"* %memory) unnamed_addr #6 comdat align 2 {
entry:
  %this.addr = alloca %"class.tensorflow::TensorInterface"*, align 8
  %memory.addr = alloca %"class.tensorflow::AbstractTensorInterface"*, align 8
  %agg.tmp = alloca %"class.std::ios_base::Init", align 1
  %undef.agg.tmp = alloca %"class.std::ios_base::Init", align 1
  store %"class.tensorflow::TensorInterface"* %this, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  store %"class.tensorflow::AbstractTensorInterface"* %memory, %"class.tensorflow::AbstractTensorInterface"** %memory.addr, align 8
  %this1 = load %"class.tensorflow::TensorInterface"*, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  %0 = load %"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"** %memory.addr, align 8
  %1 = bitcast %"class.tensorflow::AbstractTensorInterface"* %0 to i8*
  %2 = bitcast i8* %1 to %"class.tensorflow::TensorInterface"*
  call void @_ZN10tensorflow7Variant7InPlaceEv()
  %value = getelementptr inbounds %"class.tensorflow::TensorInterface", %"class.tensorflow::TensorInterface"* %this1, i32 0, i32 1
  call void @_ZN10tensorflow7Variant5ValueINS_6TensorEEC2IJRKS2_EEENS0_10in_place_tEDpOT_(%"class.tensorflow::TensorInterface"* %2, %"class.tensorflow::Tensor"* nonnull align 8 dereferenceable(32) %value)
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow7Variant5ValueINS_6TensorEE10MoveAssignEPNS0_14ValueInterfaceE(%"class.tensorflow::TensorInterface"* %this, %"class.tensorflow::AbstractTensorInterface"* %memory) unnamed_addr #6 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.tensorflow::TensorInterface"*, align 8
  %memory.addr = alloca %"class.tensorflow::AbstractTensorInterface"*, align 8
  %ref.tmp = alloca %"class.std::basic_string_view", align 8
  %ref.tmp2 = alloca %"class.std::basic_string_view", align 8
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  %ref.tmp5 = alloca %"class.tsl::internal::LogMessageFatal", align 8
  %ref.tmp9 = alloca i8*, align 8
  %ref.tmp10 = alloca %"class.std::basic_string_view", align 8
  %ref.tmp19 = alloca i8*, align 8
  %ref.tmp20 = alloca %"class.std::basic_string_view", align 8
  store %"class.tensorflow::TensorInterface"* %this, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  store %"class.tensorflow::AbstractTensorInterface"* %memory, %"class.tensorflow::AbstractTensorInterface"** %memory.addr, align 8
  %this1 = load %"class.tensorflow::TensorInterface"*, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  call void @_ZNK10tensorflow7Variant5ValueINS_6TensorEE6TypeIdEv(%"class.std::basic_string_view"* sret align 8 %ref.tmp, %"class.tensorflow::TensorInterface"* %this1)
  %0 = load %"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"** %memory.addr, align 8
  %1 = bitcast %"class.tensorflow::AbstractTensorInterface"* %0 to void (%"class.std::basic_string_view"*, %"class.tensorflow::AbstractTensorInterface"*)***
  %vtable = load void (%"class.std::basic_string_view"*, %"class.tensorflow::AbstractTensorInterface"*)**, void (%"class.std::basic_string_view"*, %"class.tensorflow::AbstractTensorInterface"*)*** %1, align 8
  %vfn = getelementptr inbounds void (%"class.std::basic_string_view"*, %"class.tensorflow::AbstractTensorInterface"*)*, void (%"class.std::basic_string_view"*, %"class.tensorflow::AbstractTensorInterface"*)** %vtable, i64 2
  %2 = load void (%"class.std::basic_string_view"*, %"class.tensorflow::AbstractTensorInterface"*)*, void (%"class.std::basic_string_view"*, %"class.tensorflow::AbstractTensorInterface"*)** %vfn, align 8
  invoke void %2(%"class.std::basic_string_view"* sret align 8 %ref.tmp2, %"class.tensorflow::AbstractTensorInterface"* %0)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %call = invoke zeroext i1 @_ZNK10tensorflow9TypeIndexeqERKS0_(%"class.std::basic_string_view"* %ref.tmp, %"class.std::basic_string_view"* nonnull align 8 dereferenceable(16) %ref.tmp2)
          to label %invoke.cont4 unwind label %lpad3

invoke.cont4:                                     ; preds = %invoke.cont
  %lnot = xor i1 %call, true
  call void @_ZN10tensorflow9TypeIndexD2Ev(%"class.std::basic_string_view"* %ref.tmp2) #11
  call void @_ZN10tensorflow9TypeIndexD2Ev(%"class.std::basic_string_view"* %ref.tmp) #11
  br i1 %lnot, label %if.then, label %if.end

if.then:                                          ; preds = %invoke.cont4
  call void @_ZN3tsl8internal15LogMessageFatalC1EPKci(%"class.tsl::internal::LogMessageFatal"* %ref.tmp5, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.19, i64 0, i64 0), i32 353) #22
  %call8 = invoke nonnull align 8 dereferenceable(136) %"class.tsl::internal::LogMessageFatal"* @_ZStlsIN3tsl8internal15LogMessageFatalEA44_cEOT_S5_RKT0_(%"class.tsl::internal::LogMessageFatal"* nonnull align 8 dereferenceable(136) %ref.tmp5, [44 x i8]* nonnull align 1 dereferenceable(44) @.str.20)
          to label %invoke.cont7 unwind label %lpad6

invoke.cont7:                                     ; preds = %if.then
  invoke void @_ZNK10tensorflow7Variant5ValueINS_6TensorEE6TypeIdEv(%"class.std::basic_string_view"* sret align 8 %ref.tmp10, %"class.tensorflow::TensorInterface"* %this1)
          to label %invoke.cont11 unwind label %lpad6

invoke.cont11:                                    ; preds = %invoke.cont7
  %call14 = invoke i8* @_ZNK10tensorflow9TypeIndex4nameEv(%"class.std::basic_string_view"* %ref.tmp10)
          to label %invoke.cont13 unwind label %lpad12

invoke.cont13:                                    ; preds = %invoke.cont11
  store i8* %call14, i8** %ref.tmp9, align 8
  %call16 = invoke nonnull align 8 dereferenceable(136) %"class.tsl::internal::LogMessageFatal"* @_ZStlsIN3tsl8internal15LogMessageFatalEPKcEOT_S6_RKT0_(%"class.tsl::internal::LogMessageFatal"* nonnull align 8 dereferenceable(136) %call8, i8** nonnull align 8 dereferenceable(8) %ref.tmp9)
          to label %invoke.cont15 unwind label %lpad12

invoke.cont15:                                    ; preds = %invoke.cont13
  %call18 = invoke nonnull align 8 dereferenceable(136) %"class.tsl::internal::LogMessageFatal"* @_ZStlsIN3tsl8internal15LogMessageFatalEA6_cEOT_S5_RKT0_(%"class.tsl::internal::LogMessageFatal"* nonnull align 8 dereferenceable(136) %call16, [6 x i8]* nonnull align 1 dereferenceable(6) @.str.21)
          to label %invoke.cont17 unwind label %lpad12

invoke.cont17:                                    ; preds = %invoke.cont15
  %3 = load %"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"** %memory.addr, align 8
  %4 = bitcast %"class.tensorflow::AbstractTensorInterface"* %3 to void (%"class.std::basic_string_view"*, %"class.tensorflow::AbstractTensorInterface"*)***
  %vtable21 = load void (%"class.std::basic_string_view"*, %"class.tensorflow::AbstractTensorInterface"*)**, void (%"class.std::basic_string_view"*, %"class.tensorflow::AbstractTensorInterface"*)*** %4, align 8
  %vfn22 = getelementptr inbounds void (%"class.std::basic_string_view"*, %"class.tensorflow::AbstractTensorInterface"*)*, void (%"class.std::basic_string_view"*, %"class.tensorflow::AbstractTensorInterface"*)** %vtable21, i64 2
  %5 = load void (%"class.std::basic_string_view"*, %"class.tensorflow::AbstractTensorInterface"*)*, void (%"class.std::basic_string_view"*, %"class.tensorflow::AbstractTensorInterface"*)** %vfn22, align 8
  invoke void %5(%"class.std::basic_string_view"* sret align 8 %ref.tmp20, %"class.tensorflow::AbstractTensorInterface"* %3)
          to label %invoke.cont23 unwind label %lpad12

invoke.cont23:                                    ; preds = %invoke.cont17
  %call26 = invoke i8* @_ZNK10tensorflow9TypeIndex4nameEv(%"class.std::basic_string_view"* %ref.tmp20)
          to label %invoke.cont25 unwind label %lpad24

invoke.cont25:                                    ; preds = %invoke.cont23
  store i8* %call26, i8** %ref.tmp19, align 8
  %call28 = invoke nonnull align 8 dereferenceable(136) %"class.tsl::internal::LogMessageFatal"* @_ZStlsIN3tsl8internal15LogMessageFatalEPKcEOT_S6_RKT0_(%"class.tsl::internal::LogMessageFatal"* nonnull align 8 dereferenceable(136) %call18, i8** nonnull align 8 dereferenceable(8) %ref.tmp19)
          to label %invoke.cont27 unwind label %lpad24

invoke.cont27:                                    ; preds = %invoke.cont25
  call void @_ZN10tensorflow9TypeIndexD2Ev(%"class.std::basic_string_view"* %ref.tmp20) #11
  call void @_ZN10tensorflow9TypeIndexD2Ev(%"class.std::basic_string_view"* %ref.tmp10) #11
  call void @_ZN3tsl8internal15LogMessageFatalD1Ev(%"class.tsl::internal::LogMessageFatal"* %ref.tmp5) #16
  unreachable

lpad:                                             ; preds = %entry
  %6 = landingpad { i8*, i32 }
          cleanup
  %7 = extractvalue { i8*, i32 } %6, 0
  store i8* %7, i8** %exn.slot, align 8
  %8 = extractvalue { i8*, i32 } %6, 1
  store i32 %8, i32* %ehselector.slot, align 4
  br label %ehcleanup

lpad3:                                            ; preds = %invoke.cont
  %9 = landingpad { i8*, i32 }
          cleanup
  %10 = extractvalue { i8*, i32 } %9, 0
  store i8* %10, i8** %exn.slot, align 8
  %11 = extractvalue { i8*, i32 } %9, 1
  store i32 %11, i32* %ehselector.slot, align 4
  call void @_ZN10tensorflow9TypeIndexD2Ev(%"class.std::basic_string_view"* %ref.tmp2) #11
  br label %ehcleanup

ehcleanup:                                        ; preds = %lpad3, %lpad
  call void @_ZN10tensorflow9TypeIndexD2Ev(%"class.std::basic_string_view"* %ref.tmp) #11
  br label %eh.resume

lpad6:                                            ; preds = %invoke.cont7, %if.then
  %12 = landingpad { i8*, i32 }
          cleanup
  %13 = extractvalue { i8*, i32 } %12, 0
  store i8* %13, i8** %exn.slot, align 8
  %14 = extractvalue { i8*, i32 } %12, 1
  store i32 %14, i32* %ehselector.slot, align 4
  br label %ehcleanup31

lpad12:                                           ; preds = %invoke.cont17, %invoke.cont15, %invoke.cont13, %invoke.cont11
  %15 = landingpad { i8*, i32 }
          cleanup
  %16 = extractvalue { i8*, i32 } %15, 0
  store i8* %16, i8** %exn.slot, align 8
  %17 = extractvalue { i8*, i32 } %15, 1
  store i32 %17, i32* %ehselector.slot, align 4
  br label %ehcleanup30

lpad24:                                           ; preds = %invoke.cont25, %invoke.cont23
  %18 = landingpad { i8*, i32 }
          cleanup
  %19 = extractvalue { i8*, i32 } %18, 0
  store i8* %19, i8** %exn.slot, align 8
  %20 = extractvalue { i8*, i32 } %18, 1
  store i32 %20, i32* %ehselector.slot, align 4
  call void @_ZN10tensorflow9TypeIndexD2Ev(%"class.std::basic_string_view"* %ref.tmp20) #11
  br label %ehcleanup30

ehcleanup30:                                      ; preds = %lpad24, %lpad12
  call void @_ZN10tensorflow9TypeIndexD2Ev(%"class.std::basic_string_view"* %ref.tmp10) #11
  br label %ehcleanup31

ehcleanup31:                                      ; preds = %ehcleanup30, %lpad6
  call void @_ZN3tsl8internal15LogMessageFatalD1Ev(%"class.tsl::internal::LogMessageFatal"* %ref.tmp5) #16
  unreachable

21:                                               ; No predecessors!
  br label %eh.resume

if.end:                                           ; preds = %invoke.cont4
  %value = getelementptr inbounds %"class.tensorflow::TensorInterface", %"class.tensorflow::TensorInterface"* %this1, i32 0, i32 1
  %call32 = call nonnull align 8 dereferenceable(32) %"class.tensorflow::Tensor"* @_ZSt4moveIRN10tensorflow6TensorEEONSt16remove_referenceIT_E4typeEOS4_(%"class.tensorflow::Tensor"* nonnull align 8 dereferenceable(32) %value) #11
  %22 = load %"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"** %memory.addr, align 8
  %23 = bitcast %"class.tensorflow::AbstractTensorInterface"* %22 to %"class.tensorflow::TensorInterface"*
  %value33 = getelementptr inbounds %"class.tensorflow::TensorInterface", %"class.tensorflow::TensorInterface"* %23, i32 0, i32 1
  %call34 = call nonnull align 8 dereferenceable(32) %"class.tensorflow::Tensor"* @_ZN10tensorflow6TensoraSEOS0_(%"class.tensorflow::Tensor"* %value33, %"class.tensorflow::Tensor"* nonnull align 8 dereferenceable(32) %call32)
  ret void

eh.resume:                                        ; preds = %21, %ehcleanup
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val35 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val35
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow7Variant5ValueINS_6TensorEE8MoveIntoEPNS0_14ValueInterfaceE(%"class.tensorflow::TensorInterface"* %this, %"class.tensorflow::AbstractTensorInterface"* %memory) unnamed_addr #6 comdat align 2 {
entry:
  %this.addr = alloca %"class.tensorflow::TensorInterface"*, align 8
  %memory.addr = alloca %"class.tensorflow::AbstractTensorInterface"*, align 8
  %agg.tmp = alloca %"class.std::ios_base::Init", align 1
  %undef.agg.tmp = alloca %"class.std::ios_base::Init", align 1
  store %"class.tensorflow::TensorInterface"* %this, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  store %"class.tensorflow::AbstractTensorInterface"* %memory, %"class.tensorflow::AbstractTensorInterface"** %memory.addr, align 8
  %this1 = load %"class.tensorflow::TensorInterface"*, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  %0 = load %"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"** %memory.addr, align 8
  %1 = bitcast %"class.tensorflow::AbstractTensorInterface"* %0 to i8*
  %2 = bitcast i8* %1 to %"class.tensorflow::TensorInterface"*
  call void @_ZN10tensorflow7Variant7InPlaceEv()
  %value = getelementptr inbounds %"class.tensorflow::TensorInterface", %"class.tensorflow::TensorInterface"* %this1, i32 0, i32 1
  %call = call nonnull align 8 dereferenceable(32) %"class.tensorflow::Tensor"* @_ZSt4moveIRN10tensorflow6TensorEEONSt16remove_referenceIT_E4typeEOS4_(%"class.tensorflow::Tensor"* nonnull align 8 dereferenceable(32) %value) #11
  call void @_ZN10tensorflow7Variant5ValueINS_6TensorEEC2IJS2_EEENS0_10in_place_tEDpOT_(%"class.tensorflow::TensorInterface"* %2, %"class.tensorflow::Tensor"* nonnull align 8 dereferenceable(32) %call)
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNK10tensorflow7Variant5ValueINS_6TensorEE8TypeNameB5cxx11Ev(%"class.std::__cxx11::basic_string"* noalias sret align 8 %agg.result, %"class.tensorflow::TensorInterface"* %this) unnamed_addr #6 comdat align 2 {
entry:
  %result.ptr = alloca i8*, align 8
  %this.addr = alloca %"class.tensorflow::TensorInterface"*, align 8
  %0 = bitcast %"class.std::__cxx11::basic_string"* %agg.result to i8*
  store i8* %0, i8** %result.ptr, align 8
  store %"class.tensorflow::TensorInterface"* %this, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  %this1 = load %"class.tensorflow::TensorInterface"*, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  %value = getelementptr inbounds %"class.tensorflow::TensorInterface", %"class.tensorflow::TensorInterface"* %this1, i32 0, i32 1
  call void @_ZN10tensorflow15TypeNameVariantINS_6TensorEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(%"class.std::__cxx11::basic_string"* sret align 8 %agg.result, %"class.tensorflow::Tensor"* nonnull align 8 dereferenceable(32) %value)
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNK10tensorflow7Variant5ValueINS_6TensorEE11DebugStringB5cxx11Ev(%"class.std::__cxx11::basic_string"* noalias sret align 8 %agg.result, %"class.tensorflow::TensorInterface"* %this) unnamed_addr #6 comdat align 2 {
entry:
  %result.ptr = alloca i8*, align 8
  %this.addr = alloca %"class.tensorflow::TensorInterface"*, align 8
  %0 = bitcast %"class.std::__cxx11::basic_string"* %agg.result to i8*
  store i8* %0, i8** %result.ptr, align 8
  store %"class.tensorflow::TensorInterface"* %this, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  %this1 = load %"class.tensorflow::TensorInterface"*, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  %value = getelementptr inbounds %"class.tensorflow::TensorInterface", %"class.tensorflow::TensorInterface"* %this1, i32 0, i32 1
  call void @_ZN10tensorflow18DebugStringVariantINS_6TensorEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(%"class.std::__cxx11::basic_string"* sret align 8 %agg.result, %"class.tensorflow::Tensor"* nonnull align 8 dereferenceable(32) %value)
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNK10tensorflow7Variant5ValueINS_6TensorEE6EncodeEPNS_17VariantTensorDataE(%"class.tensorflow::TensorInterface"* %this, %"class.tensorflow::VariantTensorData"* %data) unnamed_addr #6 comdat align 2 {
entry:
  %this.addr = alloca %"class.tensorflow::TensorInterface"*, align 8
  %data.addr = alloca %"class.tensorflow::VariantTensorData"*, align 8
  store %"class.tensorflow::TensorInterface"* %this, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  store %"class.tensorflow::VariantTensorData"* %data, %"class.tensorflow::VariantTensorData"** %data.addr, align 8
  %this1 = load %"class.tensorflow::TensorInterface"*, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  %value = getelementptr inbounds %"class.tensorflow::TensorInterface", %"class.tensorflow::TensorInterface"* %this1, i32 0, i32 1
  %0 = load %"class.tensorflow::VariantTensorData"*, %"class.tensorflow::VariantTensorData"** %data.addr, align 8
  call void @_ZN10tensorflow13EncodeVariantINS_6TensorEEEvRKT_PNS_17VariantTensorDataE(%"class.tensorflow::Tensor"* nonnull align 8 dereferenceable(32) %value, %"class.tensorflow::VariantTensorData"* %0)
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local zeroext i1 @_ZN10tensorflow7Variant5ValueINS_6TensorEE6DecodeENS_17VariantTensorDataE(%"class.tensorflow::TensorInterface"* %this, %"class.tensorflow::VariantTensorData"* %data) unnamed_addr #6 comdat align 2 {
entry:
  %this.addr = alloca %"class.tensorflow::TensorInterface"*, align 8
  store %"class.tensorflow::TensorInterface"* %this, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  %this1 = load %"class.tensorflow::TensorInterface"*, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  %value = getelementptr inbounds %"class.tensorflow::TensorInterface", %"class.tensorflow::TensorInterface"* %this1, i32 0, i32 1
  %call = call zeroext i1 @_ZN10tensorflow13DecodeVariantINS_6TensorEEEbPNS_17VariantTensorDataEPT_(%"class.tensorflow::VariantTensorData"* %data, %"class.tensorflow::Tensor"* %value)
  ret i1 %call
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNK10tensorflow7Variant5ValueINS_6TensorEE6EncodeEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.tensorflow::TensorInterface"* %this, %"class.std::__cxx11::basic_string"* %buf) unnamed_addr #6 comdat align 2 {
entry:
  %this.addr = alloca %"class.tensorflow::TensorInterface"*, align 8
  %buf.addr = alloca %"class.std::__cxx11::basic_string"*, align 8
  store %"class.tensorflow::TensorInterface"* %this, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  store %"class.std::__cxx11::basic_string"* %buf, %"class.std::__cxx11::basic_string"** %buf.addr, align 8
  %this1 = load %"class.tensorflow::TensorInterface"*, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  %value = getelementptr inbounds %"class.tensorflow::TensorInterface", %"class.tensorflow::TensorInterface"* %this1, i32 0, i32 1
  %0 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %buf.addr, align 8
  call void @_ZN10tensorflow13EncodeVariantINS_6TensorEEEvRKT_PNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.tensorflow::Tensor"* nonnull align 8 dereferenceable(32) %value, %"class.std::__cxx11::basic_string"* %0)
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local zeroext i1 @_ZN10tensorflow7Variant5ValueINS_6TensorEE6DecodeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.tensorflow::TensorInterface"* %this, %"class.std::__cxx11::basic_string"* %buf) unnamed_addr #6 comdat align 2 {
entry:
  %this.addr = alloca %"class.tensorflow::TensorInterface"*, align 8
  store %"class.tensorflow::TensorInterface"* %this, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  %this1 = load %"class.tensorflow::TensorInterface"*, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  %value = getelementptr inbounds %"class.tensorflow::TensorInterface", %"class.tensorflow::TensorInterface"* %this1, i32 0, i32 1
  %call = call zeroext i1 @_ZN10tensorflow13DecodeVariantINS_6TensorEEEbPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPT_(%"class.std::__cxx11::basic_string"* %buf, %"class.tensorflow::Tensor"* %value)
  ret i1 %call
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local zeroext i1 @_ZN10tensorflow13DecodeVariantINS_6TensorEEEbPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPT_(%"class.std::__cxx11::basic_string"* %buf, %"class.tensorflow::Tensor"* %value) #6 comdat personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %retval = alloca i1, align 1
  %buf.addr = alloca %"class.std::__cxx11::basic_string"*, align 8
  %value.addr = alloca %"class.tensorflow::Tensor"*, align 8
  %data = alloca %"class.tensorflow::VariantTensorData", align 8
  %agg.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %agg.tmp3 = alloca %"class.tensorflow::VariantTensorData", align 8
  %agg.tmp5 = alloca %"class.std::ios_base::Init", align 1
  store %"class.std::__cxx11::basic_string"* %buf, %"class.std::__cxx11::basic_string"** %buf.addr, align 8
  store %"class.tensorflow::Tensor"* %value, %"class.tensorflow::Tensor"** %value.addr, align 8
  call void @_ZN10tensorflow17VariantTensorDataC2Ev(%"class.tensorflow::VariantTensorData"* %data) #11
  %0 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %buf.addr, align 8
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_(%"class.std::__cxx11::basic_string"* %agg.tmp, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %0)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %call = invoke zeroext i1 @_ZN10tensorflow17VariantTensorData15ParseFromStringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.tensorflow::VariantTensorData"* %data, %"class.std::__cxx11::basic_string"* %agg.tmp)
          to label %invoke.cont2 unwind label %lpad1

invoke.cont2:                                     ; preds = %invoke.cont
  %lnot = xor i1 %call, true
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp) #11
  br i1 %lnot, label %if.then, label %if.end

if.then:                                          ; preds = %invoke.cont2
  store i1 false, i1* %retval, align 1
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

lpad:                                             ; preds = %entry
  %1 = landingpad { i8*, i32 }
          cleanup
  %2 = extractvalue { i8*, i32 } %1, 0
  store i8* %2, i8** %exn.slot, align 8
  %3 = extractvalue { i8*, i32 } %1, 1
  store i32 %3, i32* %ehselector.slot, align 4
  br label %ehcleanup

lpad1:                                            ; preds = %invoke.cont
  %4 = landingpad { i8*, i32 }
          cleanup
  %5 = extractvalue { i8*, i32 } %4, 0
  store i8* %5, i8** %exn.slot, align 8
  %6 = extractvalue { i8*, i32 } %4, 1
  store i32 %6, i32* %ehselector.slot, align 4
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp) #11
  br label %ehcleanup

if.end:                                           ; preds = %invoke.cont2
  %call4 = call nonnull align 8 dereferenceable(88) %"class.tensorflow::VariantTensorData"* @_ZSt4moveIRN10tensorflow17VariantTensorDataEEONSt16remove_referenceIT_E4typeEOS4_(%"class.tensorflow::VariantTensorData"* nonnull align 8 dereferenceable(88) %data) #11
  call void @_ZN10tensorflow17VariantTensorDataC2EOS0_(%"class.tensorflow::VariantTensorData"* %agg.tmp3, %"class.tensorflow::VariantTensorData"* nonnull align 8 dereferenceable(88) %call4) #11
  %7 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %value.addr, align 8
  %call8 = invoke zeroext i1 @_ZN10tensorflow17DecodeVariantImplINS_6TensorEEEbNS_17VariantTensorDataENS_12TypeResolverIT_Lb0ELb1ELb0EEEPS4_(%"class.tensorflow::VariantTensorData"* %agg.tmp3, %"class.tensorflow::Tensor"* %7)
          to label %invoke.cont7 unwind label %lpad6

invoke.cont7:                                     ; preds = %if.end
  %lnot9 = xor i1 %call8, true
  call void @_ZN10tensorflow17VariantTensorDataD2Ev(%"class.tensorflow::VariantTensorData"* %agg.tmp3) #11
  br i1 %lnot9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %invoke.cont7
  store i1 false, i1* %retval, align 1
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

lpad6:                                            ; preds = %if.end
  %8 = landingpad { i8*, i32 }
          cleanup
  %9 = extractvalue { i8*, i32 } %8, 0
  store i8* %9, i8** %exn.slot, align 8
  %10 = extractvalue { i8*, i32 } %8, 1
  store i32 %10, i32* %ehselector.slot, align 4
  call void @_ZN10tensorflow17VariantTensorDataD2Ev(%"class.tensorflow::VariantTensorData"* %agg.tmp3) #11
  br label %ehcleanup

if.end11:                                         ; preds = %invoke.cont7
  store i1 true, i1* %retval, align 1
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then10, %if.then
  call void @_ZN10tensorflow17VariantTensorDataD2Ev(%"class.tensorflow::VariantTensorData"* %data) #11
  %11 = load i1, i1* %retval, align 1
  ret i1 %11

ehcleanup:                                        ; preds = %lpad6, %lpad1, %lpad
  call void @_ZN10tensorflow17VariantTensorDataD2Ev(%"class.tensorflow::VariantTensorData"* %data) #11
  br label %eh.resume

eh.resume:                                        ; preds = %ehcleanup
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val12 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val12
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow17VariantTensorDataC2Ev(%"class.tensorflow::VariantTensorData"* %this) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.tensorflow::VariantTensorData"*, align 8
  store %"class.tensorflow::VariantTensorData"* %this, %"class.tensorflow::VariantTensorData"** %this.addr, align 8
  %this1 = load %"class.tensorflow::VariantTensorData"*, %"class.tensorflow::VariantTensorData"** %this.addr, align 8
  %type_name_ = getelementptr inbounds %"class.tensorflow::VariantTensorData", %"class.tensorflow::VariantTensorData"* %this1, i32 0, i32 0
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev(%"class.std::__cxx11::basic_string"* %type_name_) #11
  %metadata_ = getelementptr inbounds %"class.tensorflow::VariantTensorData", %"class.tensorflow::VariantTensorData"* %this1, i32 0, i32 1
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev(%"class.std::__cxx11::basic_string"* %metadata_) #11
  %tensors_ = getelementptr inbounds %"class.tensorflow::VariantTensorData", %"class.tensorflow::VariantTensorData"* %this1, i32 0, i32 2
  call void @_ZNSt6vectorIN10tensorflow6TensorESaIS1_EEC2Ev(%"class.std::vector.48"* %tensors_) #11
  ret void
}

declare dso_local zeroext i1 @_ZN10tensorflow17VariantTensorData15ParseFromStringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.tensorflow::VariantTensorData"*, %"class.std::__cxx11::basic_string"*) #4

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local zeroext i1 @_ZN10tensorflow17DecodeVariantImplINS_6TensorEEEbNS_17VariantTensorDataENS_12TypeResolverIT_Lb0ELb1ELb0EEEPS4_(%"class.tensorflow::VariantTensorData"* %data, %"class.tensorflow::Tensor"* %value) #6 comdat {
entry:
  %0 = alloca %"class.std::ios_base::Init", align 1
  %value.addr = alloca %"class.tensorflow::Tensor"*, align 8
  store %"class.tensorflow::Tensor"* %value, %"class.tensorflow::Tensor"** %value.addr, align 8
  %call = call nonnull align 8 dereferenceable(32) %"class.tensorflow::Tensor"* @_ZNK10tensorflow17VariantTensorData7tensorsEi(%"class.tensorflow::VariantTensorData"* %data, i32 0)
  %1 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %value.addr, align 8
  %call1 = call nonnull align 8 dereferenceable(32) %"class.tensorflow::Tensor"* @_ZN10tensorflow6TensoraSERKS0_(%"class.tensorflow::Tensor"* %1, %"class.tensorflow::Tensor"* nonnull align 8 dereferenceable(32) %call)
  ret i1 true
}

declare dso_local nonnull align 8 dereferenceable(32) %"class.tensorflow::Tensor"* @_ZNK10tensorflow17VariantTensorData7tensorsEi(%"class.tensorflow::VariantTensorData"*, i32) #4

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
  %call6 = call %"class.std::__cxx11::basic_string"* @_ZN3tsl8internal12Check_EQImplIllEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc(i64* nonnull align 8 dereferenceable(8) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %ref.tmp3, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.24, i64 0, i64 0))
  call void @_ZN3tsl8internal13CheckOpStringC2EPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"struct.tsl::internal::CheckOpString"* %_result, %"class.std::__cxx11::basic_string"* %call6)
  %call7 = call zeroext i1 @_ZNK3tsl8internal13CheckOpStringcvbEv(%"struct.tsl::internal::CheckOpString"* %_result)
  br i1 %call7, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void @_ZN3tsl8internal15LogMessageFatalC1EPKci(%"class.tsl::internal::LogMessageFatal"* %ref.tmp8, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.25, i64 0, i64 0), i32 748) #22
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
  %call5 = call %"class.std::__cxx11::basic_string"* @_ZN3tsl8internal12Check_GTImplIliEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc(i64* nonnull align 8 dereferenceable(8) %ref.tmp, i32* nonnull align 4 dereferenceable(4) %ref.tmp3, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i64 0, i64 0))
  call void @_ZN3tsl8internal13CheckOpStringC2EPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"struct.tsl::internal::CheckOpString"* %_result, %"class.std::__cxx11::basic_string"* %call5)
  %call6 = call zeroext i1 @_ZNK3tsl8internal13CheckOpStringcvbEv(%"struct.tsl::internal::CheckOpString"* %_result)
  br i1 %call6, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void @_ZN3tsl8internal15LogMessageFatalC1EPKci(%"class.tsl::internal::LogMessageFatal"* %ref.tmp7, i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.1.17, i64 0, i64 0), i32 310) #22
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

; Function Attrs: nounwind
declare dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev(%"class.std::__cxx11::basic_string"*) unnamed_addr #3

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN10tensorflow6TensorESaIS1_EEC2Ev(%"class.std::vector.48"* %this) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::vector.48"*, align 8
  store %"class.std::vector.48"* %this, %"class.std::vector.48"** %this.addr, align 8
  %this1 = load %"class.std::vector.48"*, %"class.std::vector.48"** %this.addr, align 8
  %0 = bitcast %"class.std::vector.48"* %this1 to %"struct.std::_Vector_base.47"*
  call void @_ZNSt12_Vector_baseIN10tensorflow6TensorESaIS1_EEC2Ev(%"struct.std::_Vector_base.47"* %0) #11
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN10tensorflow6TensorESaIS1_EEC2Ev(%"struct.std::_Vector_base.47"* %this) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base.47"*, align 8
  store %"struct.std::_Vector_base.47"* %this, %"struct.std::_Vector_base.47"** %this.addr, align 8
  %this1 = load %"struct.std::_Vector_base.47"*, %"struct.std::_Vector_base.47"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.47", %"struct.std::_Vector_base.47"* %this1, i32 0, i32 0
  call void @_ZNSt12_Vector_baseIN10tensorflow6TensorESaIS1_EE12_Vector_implC2Ev(%"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl"* %_M_impl) #11
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN10tensorflow6TensorESaIS1_EE12_Vector_implC2Ev(%"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl"* %this) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl"*, align 8
  store %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl"* %this, %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl"** %this.addr, align 8
  %this1 = load %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl"*, %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl"** %this.addr, align 8
  %0 = bitcast %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl"* %this1 to %"class.std::ios_base::Init"*
  call void @_ZNSaIN10tensorflow6TensorEEC2Ev(%"class.std::ios_base::Init"* %0) #11
  %1 = bitcast %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl"* %this1 to %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl_data"*
  call void @_ZNSt12_Vector_baseIN10tensorflow6TensorESaIS1_EE17_Vector_impl_dataC2Ev(%"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl_data"* %1) #11
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSaIN10tensorflow6TensorEEC2Ev(%"class.std::ios_base::Init"* %this) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::ios_base::Init"*, align 8
  store %"class.std::ios_base::Init"* %this, %"class.std::ios_base::Init"** %this.addr, align 8
  %this1 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %this.addr, align 8
  %0 = bitcast %"class.std::ios_base::Init"* %this1 to %"class.std::ios_base::Init"*
  call void @_ZN9__gnu_cxx13new_allocatorIN10tensorflow6TensorEEC2Ev(%"class.std::ios_base::Init"* %0) #11
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN10tensorflow6TensorESaIS1_EE17_Vector_impl_dataC2Ev(%"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl_data"* %this) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl_data"*, align 8
  store %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl_data"* %this, %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl_data"** %this.addr, align 8
  %this1 = load %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl_data"*, %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl_data"** %this.addr, align 8
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl_data", %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl_data"* %this1, i32 0, i32 0
  store %"class.tensorflow::Tensor"* null, %"class.tensorflow::Tensor"** %_M_start, align 8
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl_data", %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl_data"* %this1, i32 0, i32 1
  store %"class.tensorflow::Tensor"* null, %"class.tensorflow::Tensor"** %_M_finish, align 8
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl_data", %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl_data"* %this1, i32 0, i32 2
  store %"class.tensorflow::Tensor"* null, %"class.tensorflow::Tensor"** %_M_end_of_storage, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorIN10tensorflow6TensorEEC2Ev(%"class.std::ios_base::Init"* %this) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::ios_base::Init"*, align 8
  store %"class.std::ios_base::Init"* %this, %"class.std::ios_base::Init"** %this.addr, align 8
  %this1 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %this.addr, align 8
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow13EncodeVariantINS_6TensorEEEvRKT_PNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.tensorflow::Tensor"* nonnull align 8 dereferenceable(32) %value, %"class.std::__cxx11::basic_string"* %buf) #6 comdat personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %value.addr = alloca %"class.tensorflow::Tensor"*, align 8
  %buf.addr = alloca %"class.std::__cxx11::basic_string"*, align 8
  %data = alloca %"class.tensorflow::VariantTensorData", align 8
  %agg.tmp = alloca %"class.std::ios_base::Init", align 1
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %ref.tmp4 = alloca %"class.tsl::internal::LogMessageFatal", align 8
  store %"class.tensorflow::Tensor"* %value, %"class.tensorflow::Tensor"** %value.addr, align 8
  store %"class.std::__cxx11::basic_string"* %buf, %"class.std::__cxx11::basic_string"** %buf.addr, align 8
  call void @_ZN10tensorflow17VariantTensorDataC2Ev(%"class.tensorflow::VariantTensorData"* %data) #11
  %0 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %value.addr, align 8
  invoke void @_ZN10tensorflow17EncodeVariantImplINS_6TensorEEEvRKT_NS_12TypeResolverIS2_Lb0ELb1EXsr3std10is_base_ofIN6google8protobuf11MessageLiteENSt5decayIS2_E4typeEEE5valueEEEPNS_17VariantTensorDataE(%"class.tensorflow::Tensor"* nonnull align 8 dereferenceable(32) %0, %"class.tensorflow::VariantTensorData"* %data)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %1 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %value.addr, align 8
  invoke void @_ZN10tensorflow15TypeNameVariantINS_6TensorEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(%"class.std::__cxx11::basic_string"* sret align 8 %ref.tmp, %"class.tensorflow::Tensor"* nonnull align 8 dereferenceable(32) %1)
          to label %invoke.cont1 unwind label %lpad

invoke.cont1:                                     ; preds = %invoke.cont
  invoke void @_ZN10tensorflow17VariantTensorData13set_type_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.tensorflow::VariantTensorData"* %data, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont3 unwind label %lpad2

invoke.cont3:                                     ; preds = %invoke.cont1
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %ref.tmp) #11
  %2 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %buf.addr, align 8
  %cmp = icmp ne %"class.std::__cxx11::basic_string"* %2, null
  %lnot = xor i1 %cmp, true
  br i1 %lnot, label %if.then, label %if.end

if.then:                                          ; preds = %invoke.cont3
  invoke void @_ZN3tsl8internal15LogMessageFatalC1EPKci(%"class.tsl::internal::LogMessageFatal"* %ref.tmp4, i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.26, i64 0, i64 0), i32 243) #22
          to label %invoke.cont5 unwind label %lpad

invoke.cont5:                                     ; preds = %if.then
  %call = invoke nonnull align 8 dereferenceable(136) %"class.tsl::internal::LogMessageFatal"* @_ZStlsIN3tsl8internal15LogMessageFatalEA30_cEOT_S5_RKT0_(%"class.tsl::internal::LogMessageFatal"* nonnull align 8 dereferenceable(136) %ref.tmp4, [30 x i8]* nonnull align 1 dereferenceable(30) @.str.27)
          to label %invoke.cont7 unwind label %lpad6

invoke.cont7:                                     ; preds = %invoke.cont5
  call void @_ZN3tsl8internal15LogMessageFatalD1Ev(%"class.tsl::internal::LogMessageFatal"* %ref.tmp4) #16
  unreachable

lpad:                                             ; preds = %if.end, %if.then, %invoke.cont, %entry
  %3 = landingpad { i8*, i32 }
          cleanup
  %4 = extractvalue { i8*, i32 } %3, 0
  store i8* %4, i8** %exn.slot, align 8
  %5 = extractvalue { i8*, i32 } %3, 1
  store i32 %5, i32* %ehselector.slot, align 4
  br label %ehcleanup

lpad2:                                            ; preds = %invoke.cont1
  %6 = landingpad { i8*, i32 }
          cleanup
  %7 = extractvalue { i8*, i32 } %6, 0
  store i8* %7, i8** %exn.slot, align 8
  %8 = extractvalue { i8*, i32 } %6, 1
  store i32 %8, i32* %ehselector.slot, align 4
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %ref.tmp) #11
  br label %ehcleanup

lpad6:                                            ; preds = %invoke.cont5
  %9 = landingpad { i8*, i32 }
          cleanup
  %10 = extractvalue { i8*, i32 } %9, 0
  store i8* %10, i8** %exn.slot, align 8
  %11 = extractvalue { i8*, i32 } %9, 1
  store i32 %11, i32* %ehselector.slot, align 4
  call void @_ZN3tsl8internal15LogMessageFatalD1Ev(%"class.tsl::internal::LogMessageFatal"* %ref.tmp4) #16
  unreachable

12:                                               ; No predecessors!
  br label %ehcleanup

if.end:                                           ; preds = %invoke.cont3
  %13 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %buf.addr, align 8
  %call9 = invoke zeroext i1 @_ZN10tensorflow17VariantTensorData17SerializeToStringEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.tensorflow::VariantTensorData"* %data, %"class.std::__cxx11::basic_string"* %13)
          to label %invoke.cont8 unwind label %lpad

invoke.cont8:                                     ; preds = %if.end
  call void @_ZN10tensorflow17VariantTensorDataD2Ev(%"class.tensorflow::VariantTensorData"* %data) #11
  ret void

ehcleanup:                                        ; preds = %12, %lpad2, %lpad
  call void @_ZN10tensorflow17VariantTensorDataD2Ev(%"class.tensorflow::VariantTensorData"* %data) #11
  br label %eh.resume

eh.resume:                                        ; preds = %ehcleanup
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val10 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val10
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow17EncodeVariantImplINS_6TensorEEEvRKT_NS_12TypeResolverIS2_Lb0ELb1EXsr3std10is_base_ofIN6google8protobuf11MessageLiteENSt5decayIS2_E4typeEEE5valueEEEPNS_17VariantTensorDataE(%"class.tensorflow::Tensor"* nonnull align 8 dereferenceable(32) %value, %"class.tensorflow::VariantTensorData"* %data) #6 comdat {
entry:
  %0 = alloca %"class.std::ios_base::Init", align 1
  %value.addr = alloca %"class.tensorflow::Tensor"*, align 8
  %data.addr = alloca %"class.tensorflow::VariantTensorData"*, align 8
  store %"class.tensorflow::Tensor"* %value, %"class.tensorflow::Tensor"** %value.addr, align 8
  store %"class.tensorflow::VariantTensorData"* %data, %"class.tensorflow::VariantTensorData"** %data.addr, align 8
  %1 = load %"class.tensorflow::VariantTensorData"*, %"class.tensorflow::VariantTensorData"** %data.addr, align 8
  %tensors_ = getelementptr inbounds %"class.tensorflow::VariantTensorData", %"class.tensorflow::VariantTensorData"* %1, i32 0, i32 2
  call void @_ZNSt6vectorIN10tensorflow6TensorESaIS1_EE5clearEv(%"class.std::vector.48"* %tensors_) #11
  %2 = load %"class.tensorflow::VariantTensorData"*, %"class.tensorflow::VariantTensorData"** %data.addr, align 8
  %tensors_1 = getelementptr inbounds %"class.tensorflow::VariantTensorData", %"class.tensorflow::VariantTensorData"* %2, i32 0, i32 2
  %3 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %value.addr, align 8
  call void @_ZNSt6vectorIN10tensorflow6TensorESaIS1_EE9push_backERKS1_(%"class.std::vector.48"* %tensors_1, %"class.tensorflow::Tensor"* nonnull align 8 dereferenceable(32) %3)
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow15TypeNameVariantINS_6TensorEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(%"class.std::__cxx11::basic_string"* noalias sret align 8 %agg.result, %"class.tensorflow::Tensor"* nonnull align 8 dereferenceable(32) %value) #6 comdat {
entry:
  %result.ptr = alloca i8*, align 8
  %value.addr = alloca %"class.tensorflow::Tensor"*, align 8
  %agg.tmp = alloca %"class.std::ios_base::Init", align 1
  %0 = bitcast %"class.std::__cxx11::basic_string"* %agg.result to i8*
  store i8* %0, i8** %result.ptr, align 8
  store %"class.tensorflow::Tensor"* %value, %"class.tensorflow::Tensor"** %value.addr, align 8
  %1 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %value.addr, align 8
  call void @_ZN10tensorflow19TypeNameVariantImplINS_6TensorEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_NS_16TypeNameResolverIS8_Lb0ELb1EXsr3std10is_base_ofIN6google8protobuf11MessageLiteENSt5decayIS8_E4typeEEE5valueEEE(%"class.std::__cxx11::basic_string"* sret align 8 %agg.result, %"class.tensorflow::Tensor"* nonnull align 8 dereferenceable(32) %1)
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow17VariantTensorData13set_type_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.tensorflow::VariantTensorData"* %this, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %type_name) #6 comdat align 2 {
entry:
  %this.addr = alloca %"class.tensorflow::VariantTensorData"*, align 8
  %type_name.addr = alloca %"class.std::__cxx11::basic_string"*, align 8
  store %"class.tensorflow::VariantTensorData"* %this, %"class.tensorflow::VariantTensorData"** %this.addr, align 8
  store %"class.std::__cxx11::basic_string"* %type_name, %"class.std::__cxx11::basic_string"** %type_name.addr, align 8
  %this1 = load %"class.tensorflow::VariantTensorData"*, %"class.tensorflow::VariantTensorData"** %this.addr, align 8
  %0 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %type_name.addr, align 8
  %type_name_ = getelementptr inbounds %"class.tensorflow::VariantTensorData", %"class.tensorflow::VariantTensorData"* %this1, i32 0, i32 0
  %call = call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_(%"class.std::__cxx11::basic_string"* %type_name_, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %0)
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(136) %"class.tsl::internal::LogMessageFatal"* @_ZStlsIN3tsl8internal15LogMessageFatalEA30_cEOT_S5_RKT0_(%"class.tsl::internal::LogMessageFatal"* nonnull align 8 dereferenceable(136) %__os, [30 x i8]* nonnull align 1 dereferenceable(30) %__x) #6 comdat {
entry:
  %__os.addr = alloca %"class.tsl::internal::LogMessageFatal"*, align 8
  %__x.addr = alloca [30 x i8]*, align 8
  store %"class.tsl::internal::LogMessageFatal"* %__os, %"class.tsl::internal::LogMessageFatal"** %__os.addr, align 8
  store [30 x i8]* %__x, [30 x i8]** %__x.addr, align 8
  %0 = load %"class.tsl::internal::LogMessageFatal"*, %"class.tsl::internal::LogMessageFatal"** %__os.addr, align 8
  %1 = bitcast %"class.tsl::internal::LogMessageFatal"* %0 to %"class.std::basic_ostream"*
  %2 = load [30 x i8]*, [30 x i8]** %__x.addr, align 8
  %arraydecay = getelementptr inbounds [30 x i8], [30 x i8]* %2, i64 0, i64 0
  %call = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %1, i8* %arraydecay)
  %3 = load %"class.tsl::internal::LogMessageFatal"*, %"class.tsl::internal::LogMessageFatal"** %__os.addr, align 8
  %call1 = call nonnull align 8 dereferenceable(136) %"class.tsl::internal::LogMessageFatal"* @_ZSt4moveIRN3tsl8internal15LogMessageFatalEEONSt16remove_referenceIT_E4typeEOS5_(%"class.tsl::internal::LogMessageFatal"* nonnull align 8 dereferenceable(136) %3) #11
  ret %"class.tsl::internal::LogMessageFatal"* %call1
}

declare dso_local zeroext i1 @_ZN10tensorflow17VariantTensorData17SerializeToStringEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.tensorflow::VariantTensorData"*, %"class.std::__cxx11::basic_string"*) #4

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8), i8*) #4

declare dso_local nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_(%"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32)) #4

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow19TypeNameVariantImplINS_6TensorEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_NS_16TypeNameResolverIS8_Lb0ELb1EXsr3std10is_base_ofIN6google8protobuf11MessageLiteENSt5decayIS8_E4typeEEE5valueEEE(%"class.std::__cxx11::basic_string"* noalias sret align 8 %agg.result, %"class.tensorflow::Tensor"* nonnull align 8 dereferenceable(32) %value) #6 comdat personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %result.ptr = alloca i8*, align 8
  %0 = alloca %"class.std::ios_base::Init", align 1
  %value.addr = alloca %"class.tensorflow::Tensor"*, align 8
  %ref.tmp = alloca %"class.std::ios_base::Init", align 1
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  %1 = bitcast %"class.std::__cxx11::basic_string"* %agg.result to i8*
  store i8* %1, i8** %result.ptr, align 8
  store %"class.tensorflow::Tensor"* %value, %"class.tensorflow::Tensor"** %value.addr, align 8
  call void @_ZNSaIcEC1Ev(%"class.std::ios_base::Init"* %ref.tmp) #11
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(%"class.std::__cxx11::basic_string"* %agg.result, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3.16, i64 0, i64 0), %"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1) %ref.tmp)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  call void @_ZNSaIcED1Ev(%"class.std::ios_base::Init"* %ref.tmp) #11
  ret void

lpad:                                             ; preds = %entry
  %2 = landingpad { i8*, i32 }
          cleanup
  %3 = extractvalue { i8*, i32 } %2, 0
  store i8* %3, i8** %exn.slot, align 8
  %4 = extractvalue { i8*, i32 } %2, 1
  store i32 %4, i32* %ehselector.slot, align 4
  call void @_ZNSaIcED1Ev(%"class.std::ios_base::Init"* %ref.tmp) #11
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val1 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val1
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN10tensorflow6TensorESaIS1_EE5clearEv(%"class.std::vector.48"* %this) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::vector.48"*, align 8
  store %"class.std::vector.48"* %this, %"class.std::vector.48"** %this.addr, align 8
  %this1 = load %"class.std::vector.48"*, %"class.std::vector.48"** %this.addr, align 8
  %0 = bitcast %"class.std::vector.48"* %this1 to %"struct.std::_Vector_base.47"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.47", %"struct.std::_Vector_base.47"* %0, i32 0, i32 0
  %1 = bitcast %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl"* %_M_impl to %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl_data"*
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl_data", %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl_data"* %1, i32 0, i32 0
  %2 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %_M_start, align 8
  call void @_ZNSt6vectorIN10tensorflow6TensorESaIS1_EE15_M_erase_at_endEPS1_(%"class.std::vector.48"* %this1, %"class.tensorflow::Tensor"* %2) #11
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN10tensorflow6TensorESaIS1_EE9push_backERKS1_(%"class.std::vector.48"* %this, %"class.tensorflow::Tensor"* nonnull align 8 dereferenceable(32) %__x) #6 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::vector.48"*, align 8
  %__x.addr = alloca %"class.tensorflow::Tensor"*, align 8
  %agg.tmp = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  store %"class.std::vector.48"* %this, %"class.std::vector.48"** %this.addr, align 8
  store %"class.tensorflow::Tensor"* %__x, %"class.tensorflow::Tensor"** %__x.addr, align 8
  %this1 = load %"class.std::vector.48"*, %"class.std::vector.48"** %this.addr, align 8
  %0 = bitcast %"class.std::vector.48"* %this1 to %"struct.std::_Vector_base.47"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.47", %"struct.std::_Vector_base.47"* %0, i32 0, i32 0
  %1 = bitcast %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl"* %_M_impl to %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl_data"*
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl_data", %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl_data"* %1, i32 0, i32 1
  %2 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %_M_finish, align 8
  %3 = bitcast %"class.std::vector.48"* %this1 to %"struct.std::_Vector_base.47"*
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base.47", %"struct.std::_Vector_base.47"* %3, i32 0, i32 0
  %4 = bitcast %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl"* %_M_impl2 to %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl_data"*
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl_data", %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl_data"* %4, i32 0, i32 2
  %5 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %_M_end_of_storage, align 8
  %cmp = icmp ne %"class.tensorflow::Tensor"* %2, %5
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = bitcast %"class.std::vector.48"* %this1 to %"struct.std::_Vector_base.47"*
  %_M_impl3 = getelementptr inbounds %"struct.std::_Vector_base.47", %"struct.std::_Vector_base.47"* %6, i32 0, i32 0
  %7 = bitcast %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl"* %_M_impl3 to %"class.std::ios_base::Init"*
  %8 = bitcast %"class.std::vector.48"* %this1 to %"struct.std::_Vector_base.47"*
  %_M_impl4 = getelementptr inbounds %"struct.std::_Vector_base.47", %"struct.std::_Vector_base.47"* %8, i32 0, i32 0
  %9 = bitcast %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl"* %_M_impl4 to %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl_data"*
  %_M_finish5 = getelementptr inbounds %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl_data", %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl_data"* %9, i32 0, i32 1
  %10 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %_M_finish5, align 8
  %11 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %__x.addr, align 8
  call void @_ZNSt16allocator_traitsISaIN10tensorflow6TensorEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_(%"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1) %7, %"class.tensorflow::Tensor"* %10, %"class.tensorflow::Tensor"* nonnull align 8 dereferenceable(32) %11)
  %12 = bitcast %"class.std::vector.48"* %this1 to %"struct.std::_Vector_base.47"*
  %_M_impl6 = getelementptr inbounds %"struct.std::_Vector_base.47", %"struct.std::_Vector_base.47"* %12, i32 0, i32 0
  %13 = bitcast %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl"* %_M_impl6 to %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl_data"*
  %_M_finish7 = getelementptr inbounds %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl_data", %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl_data"* %13, i32 0, i32 1
  %14 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %_M_finish7, align 8
  %incdec.ptr = getelementptr inbounds %"class.tensorflow::Tensor", %"class.tensorflow::Tensor"* %14, i32 1
  store %"class.tensorflow::Tensor"* %incdec.ptr, %"class.tensorflow::Tensor"** %_M_finish7, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %call = call %"class.tensorflow::Tensor"* @_ZNSt6vectorIN10tensorflow6TensorESaIS1_EE3endEv(%"class.std::vector.48"* %this1) #11
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp, i32 0, i32 0
  store %"class.tensorflow::Tensor"* %call, %"class.tensorflow::Tensor"** %coerce.dive, align 8
  %15 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %__x.addr, align 8
  %coerce.dive8 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp, i32 0, i32 0
  %16 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %coerce.dive8, align 8
  call void @_ZNSt6vectorIN10tensorflow6TensorESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(%"class.std::vector.48"* %this1, %"class.tensorflow::Tensor"* %16, %"class.tensorflow::Tensor"* nonnull align 8 dereferenceable(32) %15)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIN10tensorflow6TensorEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_(%"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1) %__a, %"class.tensorflow::Tensor"* %__p, %"class.tensorflow::Tensor"* nonnull align 8 dereferenceable(32) %__args) #6 comdat align 2 {
entry:
  %__a.addr = alloca %"class.std::ios_base::Init"*, align 8
  %__p.addr = alloca %"class.tensorflow::Tensor"*, align 8
  %__args.addr = alloca %"class.tensorflow::Tensor"*, align 8
  store %"class.std::ios_base::Init"* %__a, %"class.std::ios_base::Init"** %__a.addr, align 8
  store %"class.tensorflow::Tensor"* %__p, %"class.tensorflow::Tensor"** %__p.addr, align 8
  store %"class.tensorflow::Tensor"* %__args, %"class.tensorflow::Tensor"** %__args.addr, align 8
  %0 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %__a.addr, align 8
  %1 = bitcast %"class.std::ios_base::Init"* %0 to %"class.std::ios_base::Init"*
  %2 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %__p.addr, align 8
  %3 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %__args.addr, align 8
  %call = call nonnull align 8 dereferenceable(32) %"class.tensorflow::Tensor"* @_ZSt7forwardIRKN10tensorflow6TensorEEOT_RNSt16remove_referenceIS4_E4typeE(%"class.tensorflow::Tensor"* nonnull align 8 dereferenceable(32) %3) #11
  call void @_ZN9__gnu_cxx13new_allocatorIN10tensorflow6TensorEE9constructIS2_JRKS2_EEEvPT_DpOT0_(%"class.std::ios_base::Init"* %1, %"class.tensorflow::Tensor"* %2, %"class.tensorflow::Tensor"* nonnull align 8 dereferenceable(32) %call)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %"class.tensorflow::Tensor"* @_ZNSt6vectorIN10tensorflow6TensorESaIS1_EE3endEv(%"class.std::vector.48"* %this) #0 comdat align 2 {
entry:
  %retval = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %this.addr = alloca %"class.std::vector.48"*, align 8
  store %"class.std::vector.48"* %this, %"class.std::vector.48"** %this.addr, align 8
  %this1 = load %"class.std::vector.48"*, %"class.std::vector.48"** %this.addr, align 8
  %0 = bitcast %"class.std::vector.48"* %this1 to %"struct.std::_Vector_base.47"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.47", %"struct.std::_Vector_base.47"* %0, i32 0, i32 0
  %1 = bitcast %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl"* %_M_impl to %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl_data"*
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl_data", %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl_data"* %1, i32 0, i32 1
  call void @_ZN9__gnu_cxx17__normal_iteratorIPN10tensorflow6TensorESt6vectorIS2_SaIS2_EEEC2ERKS3_(%"class.__gnu_cxx::__normal_iterator"* %retval, %"class.tensorflow::Tensor"** nonnull align 8 dereferenceable(8) %_M_finish) #11
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %retval, i32 0, i32 0
  %2 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %coerce.dive, align 8
  ret %"class.tensorflow::Tensor"* %2
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN10tensorflow6TensorESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(%"class.std::vector.48"* %this, %"class.tensorflow::Tensor"* %__position.coerce, %"class.tensorflow::Tensor"* nonnull align 8 dereferenceable(32) %__args) #6 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__position = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %this.addr = alloca %"class.std::vector.48"*, align 8
  %__args.addr = alloca %"class.tensorflow::Tensor"*, align 8
  %__len = alloca i64, align 8
  %__old_start = alloca %"class.tensorflow::Tensor"*, align 8
  %__old_finish = alloca %"class.tensorflow::Tensor"*, align 8
  %__elems_before = alloca i64, align 8
  %ref.tmp = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__new_start = alloca %"class.tensorflow::Tensor"*, align 8
  %__new_finish = alloca %"class.tensorflow::Tensor"*, align 8
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__position, i32 0, i32 0
  store %"class.tensorflow::Tensor"* %__position.coerce, %"class.tensorflow::Tensor"** %coerce.dive, align 8
  store %"class.std::vector.48"* %this, %"class.std::vector.48"** %this.addr, align 8
  store %"class.tensorflow::Tensor"* %__args, %"class.tensorflow::Tensor"** %__args.addr, align 8
  %this1 = load %"class.std::vector.48"*, %"class.std::vector.48"** %this.addr, align 8
  %call = call i64 @_ZNKSt6vectorIN10tensorflow6TensorESaIS1_EE12_M_check_lenEmPKc(%"class.std::vector.48"* %this1, i64 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.23, i64 0, i64 0))
  store i64 %call, i64* %__len, align 8
  %0 = bitcast %"class.std::vector.48"* %this1 to %"struct.std::_Vector_base.47"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.47", %"struct.std::_Vector_base.47"* %0, i32 0, i32 0
  %1 = bitcast %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl"* %_M_impl to %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl_data"*
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl_data", %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl_data"* %1, i32 0, i32 0
  %2 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %_M_start, align 8
  store %"class.tensorflow::Tensor"* %2, %"class.tensorflow::Tensor"** %__old_start, align 8
  %3 = bitcast %"class.std::vector.48"* %this1 to %"struct.std::_Vector_base.47"*
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base.47", %"struct.std::_Vector_base.47"* %3, i32 0, i32 0
  %4 = bitcast %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl"* %_M_impl2 to %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl_data"*
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl_data", %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl_data"* %4, i32 0, i32 1
  %5 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %_M_finish, align 8
  store %"class.tensorflow::Tensor"* %5, %"class.tensorflow::Tensor"** %__old_finish, align 8
  %call3 = call %"class.tensorflow::Tensor"* @_ZNSt6vectorIN10tensorflow6TensorESaIS1_EE5beginEv(%"class.std::vector.48"* %this1) #11
  %coerce.dive4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %ref.tmp, i32 0, i32 0
  store %"class.tensorflow::Tensor"* %call3, %"class.tensorflow::Tensor"** %coerce.dive4, align 8
  %call5 = call i64 @_ZN9__gnu_cxxmiIPN10tensorflow6TensorESt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_(%"class.__gnu_cxx::__normal_iterator"* nonnull align 8 dereferenceable(8) %__position, %"class.__gnu_cxx::__normal_iterator"* nonnull align 8 dereferenceable(8) %ref.tmp) #11
  store i64 %call5, i64* %__elems_before, align 8
  %6 = bitcast %"class.std::vector.48"* %this1 to %"struct.std::_Vector_base.47"*
  %7 = load i64, i64* %__len, align 8
  %call6 = call %"class.tensorflow::Tensor"* @_ZNSt12_Vector_baseIN10tensorflow6TensorESaIS1_EE11_M_allocateEm(%"struct.std::_Vector_base.47"* %6, i64 %7)
  store %"class.tensorflow::Tensor"* %call6, %"class.tensorflow::Tensor"** %__new_start, align 8
  %8 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %__new_start, align 8
  store %"class.tensorflow::Tensor"* %8, %"class.tensorflow::Tensor"** %__new_finish, align 8
  %9 = bitcast %"class.std::vector.48"* %this1 to %"struct.std::_Vector_base.47"*
  %_M_impl7 = getelementptr inbounds %"struct.std::_Vector_base.47", %"struct.std::_Vector_base.47"* %9, i32 0, i32 0
  %10 = bitcast %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl"* %_M_impl7 to %"class.std::ios_base::Init"*
  %11 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %__new_start, align 8
  %12 = load i64, i64* %__elems_before, align 8
  %add.ptr = getelementptr inbounds %"class.tensorflow::Tensor", %"class.tensorflow::Tensor"* %11, i64 %12
  %13 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %__args.addr, align 8
  %call8 = call nonnull align 8 dereferenceable(32) %"class.tensorflow::Tensor"* @_ZSt7forwardIRKN10tensorflow6TensorEEOT_RNSt16remove_referenceIS4_E4typeE(%"class.tensorflow::Tensor"* nonnull align 8 dereferenceable(32) %13) #11
  invoke void @_ZNSt16allocator_traitsISaIN10tensorflow6TensorEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_(%"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1) %10, %"class.tensorflow::Tensor"* %add.ptr, %"class.tensorflow::Tensor"* nonnull align 8 dereferenceable(32) %call8)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  store %"class.tensorflow::Tensor"* null, %"class.tensorflow::Tensor"** %__new_finish, align 8
  %14 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %__old_start, align 8
  %call9 = call nonnull align 8 dereferenceable(8) %"class.tensorflow::Tensor"** @_ZNK9__gnu_cxx17__normal_iteratorIPN10tensorflow6TensorESt6vectorIS2_SaIS2_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %__position) #11
  %15 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %call9, align 8
  %16 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %__new_start, align 8
  %17 = bitcast %"class.std::vector.48"* %this1 to %"struct.std::_Vector_base.47"*
  %call10 = call nonnull align 1 dereferenceable(1) %"class.std::ios_base::Init"* @_ZNSt12_Vector_baseIN10tensorflow6TensorESaIS1_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.47"* %17) #11
  %call12 = invoke %"class.tensorflow::Tensor"* @_ZSt34__uninitialized_move_if_noexcept_aIPN10tensorflow6TensorES2_SaIS1_EET0_T_S5_S4_RT1_(%"class.tensorflow::Tensor"* %14, %"class.tensorflow::Tensor"* %15, %"class.tensorflow::Tensor"* %16, %"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1) %call10)
          to label %invoke.cont11 unwind label %lpad

invoke.cont11:                                    ; preds = %invoke.cont
  store %"class.tensorflow::Tensor"* %call12, %"class.tensorflow::Tensor"** %__new_finish, align 8
  %18 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %__new_finish, align 8
  %incdec.ptr = getelementptr inbounds %"class.tensorflow::Tensor", %"class.tensorflow::Tensor"* %18, i32 1
  store %"class.tensorflow::Tensor"* %incdec.ptr, %"class.tensorflow::Tensor"** %__new_finish, align 8
  %call13 = call nonnull align 8 dereferenceable(8) %"class.tensorflow::Tensor"** @_ZNK9__gnu_cxx17__normal_iteratorIPN10tensorflow6TensorESt6vectorIS2_SaIS2_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %__position) #11
  %19 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %call13, align 8
  %20 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %__old_finish, align 8
  %21 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %__new_finish, align 8
  %22 = bitcast %"class.std::vector.48"* %this1 to %"struct.std::_Vector_base.47"*
  %call14 = call nonnull align 1 dereferenceable(1) %"class.std::ios_base::Init"* @_ZNSt12_Vector_baseIN10tensorflow6TensorESaIS1_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.47"* %22) #11
  %call16 = invoke %"class.tensorflow::Tensor"* @_ZSt34__uninitialized_move_if_noexcept_aIPN10tensorflow6TensorES2_SaIS1_EET0_T_S5_S4_RT1_(%"class.tensorflow::Tensor"* %19, %"class.tensorflow::Tensor"* %20, %"class.tensorflow::Tensor"* %21, %"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1) %call14)
          to label %invoke.cont15 unwind label %lpad

invoke.cont15:                                    ; preds = %invoke.cont11
  store %"class.tensorflow::Tensor"* %call16, %"class.tensorflow::Tensor"** %__new_finish, align 8
  br label %try.cont

lpad:                                             ; preds = %invoke.cont11, %invoke.cont, %entry
  %23 = landingpad { i8*, i32 }
          catch i8* null
  %24 = extractvalue { i8*, i32 } %23, 0
  store i8* %24, i8** %exn.slot, align 8
  %25 = extractvalue { i8*, i32 } %23, 1
  store i32 %25, i32* %ehselector.slot, align 4
  br label %catch

catch:                                            ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %26 = call i8* @__cxa_begin_catch(i8* %exn) #11
  %27 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %__new_finish, align 8
  %tobool = icmp ne %"class.tensorflow::Tensor"* %27, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %catch
  %28 = bitcast %"class.std::vector.48"* %this1 to %"struct.std::_Vector_base.47"*
  %_M_impl17 = getelementptr inbounds %"struct.std::_Vector_base.47", %"struct.std::_Vector_base.47"* %28, i32 0, i32 0
  %29 = bitcast %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl"* %_M_impl17 to %"class.std::ios_base::Init"*
  %30 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %__new_start, align 8
  %31 = load i64, i64* %__elems_before, align 8
  %add.ptr18 = getelementptr inbounds %"class.tensorflow::Tensor", %"class.tensorflow::Tensor"* %30, i64 %31
  call void @_ZNSt16allocator_traitsISaIN10tensorflow6TensorEEE7destroyIS1_EEvRS2_PT_(%"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1) %29, %"class.tensorflow::Tensor"* %add.ptr18) #11
  br label %if.end

if.else:                                          ; preds = %catch
  %32 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %__new_start, align 8
  %33 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %__new_finish, align 8
  %34 = bitcast %"class.std::vector.48"* %this1 to %"struct.std::_Vector_base.47"*
  %call19 = call nonnull align 1 dereferenceable(1) %"class.std::ios_base::Init"* @_ZNSt12_Vector_baseIN10tensorflow6TensorESaIS1_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.47"* %34) #11
  invoke void @_ZSt8_DestroyIPN10tensorflow6TensorES1_EvT_S3_RSaIT0_E(%"class.tensorflow::Tensor"* %32, %"class.tensorflow::Tensor"* %33, %"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1) %call19)
          to label %invoke.cont21 unwind label %lpad20

invoke.cont21:                                    ; preds = %if.else
  br label %if.end

lpad20:                                           ; preds = %invoke.cont22, %if.end, %if.else
  %35 = landingpad { i8*, i32 }
          cleanup
  %36 = extractvalue { i8*, i32 } %35, 0
  store i8* %36, i8** %exn.slot, align 8
  %37 = extractvalue { i8*, i32 } %35, 1
  store i32 %37, i32* %ehselector.slot, align 4
  invoke void @__cxa_end_catch()
          to label %invoke.cont23 unwind label %terminate.lpad

if.end:                                           ; preds = %invoke.cont21, %if.then
  %38 = bitcast %"class.std::vector.48"* %this1 to %"struct.std::_Vector_base.47"*
  %39 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %__new_start, align 8
  %40 = load i64, i64* %__len, align 8
  invoke void @_ZNSt12_Vector_baseIN10tensorflow6TensorESaIS1_EE13_M_deallocateEPS1_m(%"struct.std::_Vector_base.47"* %38, %"class.tensorflow::Tensor"* %39, i64 %40)
          to label %invoke.cont22 unwind label %lpad20

invoke.cont22:                                    ; preds = %if.end
  invoke void @__cxa_rethrow() #20
          to label %unreachable unwind label %lpad20

invoke.cont23:                                    ; preds = %lpad20
  br label %eh.resume

try.cont:                                         ; preds = %invoke.cont15
  %41 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %__old_start, align 8
  %42 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %__old_finish, align 8
  %43 = bitcast %"class.std::vector.48"* %this1 to %"struct.std::_Vector_base.47"*
  %call24 = call nonnull align 1 dereferenceable(1) %"class.std::ios_base::Init"* @_ZNSt12_Vector_baseIN10tensorflow6TensorESaIS1_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.47"* %43) #11
  call void @_ZSt8_DestroyIPN10tensorflow6TensorES1_EvT_S3_RSaIT0_E(%"class.tensorflow::Tensor"* %41, %"class.tensorflow::Tensor"* %42, %"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1) %call24)
  %44 = bitcast %"class.std::vector.48"* %this1 to %"struct.std::_Vector_base.47"*
  %45 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %__old_start, align 8
  %46 = bitcast %"class.std::vector.48"* %this1 to %"struct.std::_Vector_base.47"*
  %_M_impl25 = getelementptr inbounds %"struct.std::_Vector_base.47", %"struct.std::_Vector_base.47"* %46, i32 0, i32 0
  %47 = bitcast %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl"* %_M_impl25 to %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl_data"*
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl_data", %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl_data"* %47, i32 0, i32 2
  %48 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %_M_end_of_storage, align 8
  %49 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %__old_start, align 8
  %sub.ptr.lhs.cast = ptrtoint %"class.tensorflow::Tensor"* %48 to i64
  %sub.ptr.rhs.cast = ptrtoint %"class.tensorflow::Tensor"* %49 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 32
  call void @_ZNSt12_Vector_baseIN10tensorflow6TensorESaIS1_EE13_M_deallocateEPS1_m(%"struct.std::_Vector_base.47"* %44, %"class.tensorflow::Tensor"* %45, i64 %sub.ptr.div)
  %50 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %__new_start, align 8
  %51 = bitcast %"class.std::vector.48"* %this1 to %"struct.std::_Vector_base.47"*
  %_M_impl26 = getelementptr inbounds %"struct.std::_Vector_base.47", %"struct.std::_Vector_base.47"* %51, i32 0, i32 0
  %52 = bitcast %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl"* %_M_impl26 to %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl_data"*
  %_M_start27 = getelementptr inbounds %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl_data", %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl_data"* %52, i32 0, i32 0
  store %"class.tensorflow::Tensor"* %50, %"class.tensorflow::Tensor"** %_M_start27, align 8
  %53 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %__new_finish, align 8
  %54 = bitcast %"class.std::vector.48"* %this1 to %"struct.std::_Vector_base.47"*
  %_M_impl28 = getelementptr inbounds %"struct.std::_Vector_base.47", %"struct.std::_Vector_base.47"* %54, i32 0, i32 0
  %55 = bitcast %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl"* %_M_impl28 to %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl_data"*
  %_M_finish29 = getelementptr inbounds %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl_data", %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl_data"* %55, i32 0, i32 1
  store %"class.tensorflow::Tensor"* %53, %"class.tensorflow::Tensor"** %_M_finish29, align 8
  %56 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %__new_start, align 8
  %57 = load i64, i64* %__len, align 8
  %add.ptr30 = getelementptr inbounds %"class.tensorflow::Tensor", %"class.tensorflow::Tensor"* %56, i64 %57
  %58 = bitcast %"class.std::vector.48"* %this1 to %"struct.std::_Vector_base.47"*
  %_M_impl31 = getelementptr inbounds %"struct.std::_Vector_base.47", %"struct.std::_Vector_base.47"* %58, i32 0, i32 0
  %59 = bitcast %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl"* %_M_impl31 to %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl_data"*
  %_M_end_of_storage32 = getelementptr inbounds %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl_data", %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl_data"* %59, i32 0, i32 2
  store %"class.tensorflow::Tensor"* %add.ptr30, %"class.tensorflow::Tensor"** %_M_end_of_storage32, align 8
  ret void

eh.resume:                                        ; preds = %invoke.cont23
  %exn33 = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn33, 0
  %lpad.val34 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val34

terminate.lpad:                                   ; preds = %lpad20
  %60 = landingpad { i8*, i32 }
          catch i8* null
  %61 = extractvalue { i8*, i32 } %60, 0
  call void @__clang_call_terminate(i8* %61) #16
  unreachable

unreachable:                                      ; preds = %invoke.cont22
  unreachable
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i64 @_ZNKSt6vectorIN10tensorflow6TensorESaIS1_EE12_M_check_lenEmPKc(%"class.std::vector.48"* %this, i64 %__n, i8* %__s) #6 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::vector.48"*, align 8
  %__n.addr = alloca i64, align 8
  %__s.addr = alloca i8*, align 8
  %__len = alloca i64, align 8
  %ref.tmp = alloca i64, align 8
  store %"class.std::vector.48"* %this, %"class.std::vector.48"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  store i8* %__s, i8** %__s.addr, align 8
  %this1 = load %"class.std::vector.48"*, %"class.std::vector.48"** %this.addr, align 8
  %call = call i64 @_ZNKSt6vectorIN10tensorflow6TensorESaIS1_EE8max_sizeEv(%"class.std::vector.48"* %this1) #11
  %call2 = call i64 @_ZNKSt6vectorIN10tensorflow6TensorESaIS1_EE4sizeEv(%"class.std::vector.48"* %this1) #11
  %sub = sub i64 %call, %call2
  %0 = load i64, i64* %__n.addr, align 8
  %cmp = icmp ult i64 %sub, %0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %__s.addr, align 8
  call void @_ZSt20__throw_length_errorPKc(i8* %1) #20
  unreachable

if.end:                                           ; preds = %entry
  %call3 = call i64 @_ZNKSt6vectorIN10tensorflow6TensorESaIS1_EE4sizeEv(%"class.std::vector.48"* %this1) #11
  %call4 = call i64 @_ZNKSt6vectorIN10tensorflow6TensorESaIS1_EE4sizeEv(%"class.std::vector.48"* %this1) #11
  store i64 %call4, i64* %ref.tmp, align 8
  %call5 = call nonnull align 8 dereferenceable(8) i64* @_ZSt3maxImERKT_S2_S2_(i64* nonnull align 8 dereferenceable(8) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__n.addr)
  %2 = load i64, i64* %call5, align 8
  %add = add i64 %call3, %2
  store i64 %add, i64* %__len, align 8
  %3 = load i64, i64* %__len, align 8
  %call6 = call i64 @_ZNKSt6vectorIN10tensorflow6TensorESaIS1_EE4sizeEv(%"class.std::vector.48"* %this1) #11
  %cmp7 = icmp ult i64 %3, %call6
  br i1 %cmp7, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %4 = load i64, i64* %__len, align 8
  %call8 = call i64 @_ZNKSt6vectorIN10tensorflow6TensorESaIS1_EE8max_sizeEv(%"class.std::vector.48"* %this1) #11
  %cmp9 = icmp ugt i64 %4, %call8
  br i1 %cmp9, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false, %if.end
  %call10 = call i64 @_ZNKSt6vectorIN10tensorflow6TensorESaIS1_EE8max_sizeEv(%"class.std::vector.48"* %this1) #11
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  %5 = load i64, i64* %__len, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call10, %cond.true ], [ %5, %cond.false ]
  ret i64 %cond
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %"class.tensorflow::Tensor"* @_ZNSt6vectorIN10tensorflow6TensorESaIS1_EE5beginEv(%"class.std::vector.48"* %this) #0 comdat align 2 {
entry:
  %retval = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %this.addr = alloca %"class.std::vector.48"*, align 8
  store %"class.std::vector.48"* %this, %"class.std::vector.48"** %this.addr, align 8
  %this1 = load %"class.std::vector.48"*, %"class.std::vector.48"** %this.addr, align 8
  %0 = bitcast %"class.std::vector.48"* %this1 to %"struct.std::_Vector_base.47"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.47", %"struct.std::_Vector_base.47"* %0, i32 0, i32 0
  %1 = bitcast %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl"* %_M_impl to %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl_data"*
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl_data", %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl_data"* %1, i32 0, i32 0
  call void @_ZN9__gnu_cxx17__normal_iteratorIPN10tensorflow6TensorESt6vectorIS2_SaIS2_EEEC2ERKS3_(%"class.__gnu_cxx::__normal_iterator"* %retval, %"class.tensorflow::Tensor"** nonnull align 8 dereferenceable(8) %_M_start) #11
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %retval, i32 0, i32 0
  %2 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %coerce.dive, align 8
  ret %"class.tensorflow::Tensor"* %2
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @_ZN9__gnu_cxxmiIPN10tensorflow6TensorESt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_(%"class.__gnu_cxx::__normal_iterator"* nonnull align 8 dereferenceable(8) %__lhs, %"class.__gnu_cxx::__normal_iterator"* nonnull align 8 dereferenceable(8) %__rhs) #0 comdat {
entry:
  %__lhs.addr = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  %__rhs.addr = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %__lhs, %"class.__gnu_cxx::__normal_iterator"** %__lhs.addr, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %__rhs, %"class.__gnu_cxx::__normal_iterator"** %__rhs.addr, align 8
  %0 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %__lhs.addr, align 8
  %call = call nonnull align 8 dereferenceable(8) %"class.tensorflow::Tensor"** @_ZNK9__gnu_cxx17__normal_iteratorIPN10tensorflow6TensorESt6vectorIS2_SaIS2_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %0) #11
  %1 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %call, align 8
  %2 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %__rhs.addr, align 8
  %call1 = call nonnull align 8 dereferenceable(8) %"class.tensorflow::Tensor"** @_ZNK9__gnu_cxx17__normal_iteratorIPN10tensorflow6TensorESt6vectorIS2_SaIS2_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %2) #11
  %3 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %call1, align 8
  %sub.ptr.lhs.cast = ptrtoint %"class.tensorflow::Tensor"* %1 to i64
  %sub.ptr.rhs.cast = ptrtoint %"class.tensorflow::Tensor"* %3 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 32
  ret i64 %sub.ptr.div
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %"class.tensorflow::Tensor"* @_ZNSt12_Vector_baseIN10tensorflow6TensorESaIS1_EE11_M_allocateEm(%"struct.std::_Vector_base.47"* %this, i64 %__n) #6 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base.47"*, align 8
  %__n.addr = alloca i64, align 8
  store %"struct.std::_Vector_base.47"* %this, %"struct.std::_Vector_base.47"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %this1 = load %"struct.std::_Vector_base.47"*, %"struct.std::_Vector_base.47"** %this.addr, align 8
  %0 = load i64, i64* %__n.addr, align 8
  %cmp = icmp ne i64 %0, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.47", %"struct.std::_Vector_base.47"* %this1, i32 0, i32 0
  %1 = bitcast %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl"* %_M_impl to %"class.std::ios_base::Init"*
  %2 = load i64, i64* %__n.addr, align 8
  %call = call %"class.tensorflow::Tensor"* @_ZNSt16allocator_traitsISaIN10tensorflow6TensorEEE8allocateERS2_m(%"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1) %1, i64 %2)
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %"class.tensorflow::Tensor"* [ %call, %cond.true ], [ null, %cond.false ]
  ret %"class.tensorflow::Tensor"* %cond
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(32) %"class.tensorflow::Tensor"* @_ZSt7forwardIRKN10tensorflow6TensorEEOT_RNSt16remove_referenceIS4_E4typeE(%"class.tensorflow::Tensor"* nonnull align 8 dereferenceable(32) %__t) #0 comdat {
entry:
  %__t.addr = alloca %"class.tensorflow::Tensor"*, align 8
  store %"class.tensorflow::Tensor"* %__t, %"class.tensorflow::Tensor"** %__t.addr, align 8
  %0 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %__t.addr, align 8
  ret %"class.tensorflow::Tensor"* %0
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) %"class.tensorflow::Tensor"** @_ZNK9__gnu_cxx17__normal_iteratorIPN10tensorflow6TensorESt6vectorIS2_SaIS2_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %this) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %this, %"class.__gnu_cxx::__normal_iterator"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %this.addr, align 8
  %_M_current = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %this1, i32 0, i32 0
  ret %"class.tensorflow::Tensor"** %_M_current
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %"class.tensorflow::Tensor"* @_ZSt34__uninitialized_move_if_noexcept_aIPN10tensorflow6TensorES2_SaIS1_EET0_T_S5_S4_RT1_(%"class.tensorflow::Tensor"* %__first, %"class.tensorflow::Tensor"* %__last, %"class.tensorflow::Tensor"* %__result, %"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1) %__alloc) #6 comdat {
entry:
  %__first.addr = alloca %"class.tensorflow::Tensor"*, align 8
  %__last.addr = alloca %"class.tensorflow::Tensor"*, align 8
  %__result.addr = alloca %"class.tensorflow::Tensor"*, align 8
  %__alloc.addr = alloca %"class.std::ios_base::Init"*, align 8
  store %"class.tensorflow::Tensor"* %__first, %"class.tensorflow::Tensor"** %__first.addr, align 8
  store %"class.tensorflow::Tensor"* %__last, %"class.tensorflow::Tensor"** %__last.addr, align 8
  store %"class.tensorflow::Tensor"* %__result, %"class.tensorflow::Tensor"** %__result.addr, align 8
  store %"class.std::ios_base::Init"* %__alloc, %"class.std::ios_base::Init"** %__alloc.addr, align 8
  %0 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %__first.addr, align 8
  %call = call %"class.tensorflow::Tensor"* @_ZSt32__make_move_if_noexcept_iteratorIN10tensorflow6TensorEPKS1_ET0_PT_(%"class.tensorflow::Tensor"* %0)
  %1 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %__last.addr, align 8
  %call1 = call %"class.tensorflow::Tensor"* @_ZSt32__make_move_if_noexcept_iteratorIN10tensorflow6TensorEPKS1_ET0_PT_(%"class.tensorflow::Tensor"* %1)
  %2 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %__result.addr, align 8
  %3 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %__alloc.addr, align 8
  %call2 = call %"class.tensorflow::Tensor"* @_ZSt22__uninitialized_copy_aIPKN10tensorflow6TensorEPS1_S1_ET0_T_S6_S5_RSaIT1_E(%"class.tensorflow::Tensor"* %call, %"class.tensorflow::Tensor"* %call1, %"class.tensorflow::Tensor"* %2, %"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1) %3)
  ret %"class.tensorflow::Tensor"* %call2
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIN10tensorflow6TensorEEE7destroyIS1_EEvRS2_PT_(%"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1) %__a, %"class.tensorflow::Tensor"* %__p) #0 comdat align 2 {
entry:
  %__a.addr = alloca %"class.std::ios_base::Init"*, align 8
  %__p.addr = alloca %"class.tensorflow::Tensor"*, align 8
  store %"class.std::ios_base::Init"* %__a, %"class.std::ios_base::Init"** %__a.addr, align 8
  store %"class.tensorflow::Tensor"* %__p, %"class.tensorflow::Tensor"** %__p.addr, align 8
  %0 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %__a.addr, align 8
  %1 = bitcast %"class.std::ios_base::Init"* %0 to %"class.std::ios_base::Init"*
  %2 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %__p.addr, align 8
  call void @_ZN9__gnu_cxx13new_allocatorIN10tensorflow6TensorEE7destroyIS2_EEvPT_(%"class.std::ios_base::Init"* %1, %"class.tensorflow::Tensor"* %2) #11
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorIN10tensorflow6TensorEE7destroyIS2_EEvPT_(%"class.std::ios_base::Init"* %this, %"class.tensorflow::Tensor"* %__p) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::ios_base::Init"*, align 8
  %__p.addr = alloca %"class.tensorflow::Tensor"*, align 8
  store %"class.std::ios_base::Init"* %this, %"class.std::ios_base::Init"** %this.addr, align 8
  store %"class.tensorflow::Tensor"* %__p, %"class.tensorflow::Tensor"** %__p.addr, align 8
  %this1 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %this.addr, align 8
  %0 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %__p.addr, align 8
  call void @_ZN10tensorflow6TensorD1Ev(%"class.tensorflow::Tensor"* %0) #11
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %"class.tensorflow::Tensor"* @_ZSt32__make_move_if_noexcept_iteratorIN10tensorflow6TensorEPKS1_ET0_PT_(%"class.tensorflow::Tensor"* %__i) #0 comdat {
entry:
  %__i.addr = alloca %"class.tensorflow::Tensor"*, align 8
  store %"class.tensorflow::Tensor"* %__i, %"class.tensorflow::Tensor"** %__i.addr, align 8
  %0 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %__i.addr, align 8
  ret %"class.tensorflow::Tensor"* %0
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %"class.tensorflow::Tensor"* @_ZSt22__uninitialized_copy_aIPKN10tensorflow6TensorEPS1_S1_ET0_T_S6_S5_RSaIT1_E(%"class.tensorflow::Tensor"* %__first, %"class.tensorflow::Tensor"* %__last, %"class.tensorflow::Tensor"* %__result, %"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1) %0) #6 comdat {
entry:
  %__first.addr = alloca %"class.tensorflow::Tensor"*, align 8
  %__last.addr = alloca %"class.tensorflow::Tensor"*, align 8
  %__result.addr = alloca %"class.tensorflow::Tensor"*, align 8
  %.addr = alloca %"class.std::ios_base::Init"*, align 8
  store %"class.tensorflow::Tensor"* %__first, %"class.tensorflow::Tensor"** %__first.addr, align 8
  store %"class.tensorflow::Tensor"* %__last, %"class.tensorflow::Tensor"** %__last.addr, align 8
  store %"class.tensorflow::Tensor"* %__result, %"class.tensorflow::Tensor"** %__result.addr, align 8
  store %"class.std::ios_base::Init"* %0, %"class.std::ios_base::Init"** %.addr, align 8
  %1 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %__first.addr, align 8
  %2 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %__last.addr, align 8
  %3 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %__result.addr, align 8
  %call = call %"class.tensorflow::Tensor"* @_ZSt18uninitialized_copyIPKN10tensorflow6TensorEPS1_ET0_T_S6_S5_(%"class.tensorflow::Tensor"* %1, %"class.tensorflow::Tensor"* %2, %"class.tensorflow::Tensor"* %3)
  ret %"class.tensorflow::Tensor"* %call
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %"class.tensorflow::Tensor"* @_ZSt18uninitialized_copyIPKN10tensorflow6TensorEPS1_ET0_T_S6_S5_(%"class.tensorflow::Tensor"* %__first, %"class.tensorflow::Tensor"* %__last, %"class.tensorflow::Tensor"* %__result) #6 comdat {
entry:
  %__first.addr = alloca %"class.tensorflow::Tensor"*, align 8
  %__last.addr = alloca %"class.tensorflow::Tensor"*, align 8
  %__result.addr = alloca %"class.tensorflow::Tensor"*, align 8
  %__assignable = alloca i8, align 1
  store %"class.tensorflow::Tensor"* %__first, %"class.tensorflow::Tensor"** %__first.addr, align 8
  store %"class.tensorflow::Tensor"* %__last, %"class.tensorflow::Tensor"** %__last.addr, align 8
  store %"class.tensorflow::Tensor"* %__result, %"class.tensorflow::Tensor"** %__result.addr, align 8
  store i8 1, i8* %__assignable, align 1
  %0 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %__first.addr, align 8
  %1 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %__last.addr, align 8
  %2 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %__result.addr, align 8
  %call = call %"class.tensorflow::Tensor"* @_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIPKN10tensorflow6TensorEPS3_EET0_T_S8_S7_(%"class.tensorflow::Tensor"* %0, %"class.tensorflow::Tensor"* %1, %"class.tensorflow::Tensor"* %2)
  ret %"class.tensorflow::Tensor"* %call
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %"class.tensorflow::Tensor"* @_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIPKN10tensorflow6TensorEPS3_EET0_T_S8_S7_(%"class.tensorflow::Tensor"* %__first, %"class.tensorflow::Tensor"* %__last, %"class.tensorflow::Tensor"* %__result) #6 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__first.addr = alloca %"class.tensorflow::Tensor"*, align 8
  %__last.addr = alloca %"class.tensorflow::Tensor"*, align 8
  %__result.addr = alloca %"class.tensorflow::Tensor"*, align 8
  %__cur = alloca %"class.tensorflow::Tensor"*, align 8
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  store %"class.tensorflow::Tensor"* %__first, %"class.tensorflow::Tensor"** %__first.addr, align 8
  store %"class.tensorflow::Tensor"* %__last, %"class.tensorflow::Tensor"** %__last.addr, align 8
  store %"class.tensorflow::Tensor"* %__result, %"class.tensorflow::Tensor"** %__result.addr, align 8
  %0 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %__result.addr, align 8
  store %"class.tensorflow::Tensor"* %0, %"class.tensorflow::Tensor"** %__cur, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %__first.addr, align 8
  %2 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %__last.addr, align 8
  %cmp = icmp ne %"class.tensorflow::Tensor"* %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %__cur, align 8
  %call = call %"class.tensorflow::Tensor"* @_ZSt11__addressofIN10tensorflow6TensorEEPT_RS2_(%"class.tensorflow::Tensor"* nonnull align 8 dereferenceable(32) %3) #11
  %4 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %__first.addr, align 8
  invoke void @_ZSt10_ConstructIN10tensorflow6TensorEJRKS1_EEvPT_DpOT0_(%"class.tensorflow::Tensor"* %call, %"class.tensorflow::Tensor"* nonnull align 8 dereferenceable(32) %4)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %invoke.cont
  %5 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %__first.addr, align 8
  %incdec.ptr = getelementptr inbounds %"class.tensorflow::Tensor", %"class.tensorflow::Tensor"* %5, i32 1
  store %"class.tensorflow::Tensor"* %incdec.ptr, %"class.tensorflow::Tensor"** %__first.addr, align 8
  %6 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %__cur, align 8
  %incdec.ptr1 = getelementptr inbounds %"class.tensorflow::Tensor", %"class.tensorflow::Tensor"* %6, i32 1
  store %"class.tensorflow::Tensor"* %incdec.ptr1, %"class.tensorflow::Tensor"** %__cur, align 8
  br label %for.cond

lpad:                                             ; preds = %for.body
  %7 = landingpad { i8*, i32 }
          catch i8* null
  %8 = extractvalue { i8*, i32 } %7, 0
  store i8* %8, i8** %exn.slot, align 8
  %9 = extractvalue { i8*, i32 } %7, 1
  store i32 %9, i32* %ehselector.slot, align 4
  br label %catch

catch:                                            ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %10 = call i8* @__cxa_begin_catch(i8* %exn) #11
  %11 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %__result.addr, align 8
  %12 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %__cur, align 8
  invoke void @_ZSt8_DestroyIPN10tensorflow6TensorEEvT_S3_(%"class.tensorflow::Tensor"* %11, %"class.tensorflow::Tensor"* %12)
          to label %invoke.cont3 unwind label %lpad2

invoke.cont3:                                     ; preds = %catch
  invoke void @__cxa_rethrow() #20
          to label %unreachable unwind label %lpad2

for.end:                                          ; preds = %for.cond
  %13 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %__cur, align 8
  ret %"class.tensorflow::Tensor"* %13

lpad2:                                            ; preds = %invoke.cont3, %catch
  %14 = landingpad { i8*, i32 }
          cleanup
  %15 = extractvalue { i8*, i32 } %14, 0
  store i8* %15, i8** %exn.slot, align 8
  %16 = extractvalue { i8*, i32 } %14, 1
  store i32 %16, i32* %ehselector.slot, align 4
  invoke void @__cxa_end_catch()
          to label %invoke.cont4 unwind label %terminate.lpad

invoke.cont4:                                     ; preds = %lpad2
  br label %eh.resume

try.cont:                                         ; No predecessors!
  call void @abort()
  unreachable

eh.resume:                                        ; preds = %invoke.cont4
  %exn5 = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn5, 0
  %lpad.val6 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val6

terminate.lpad:                                   ; preds = %lpad2
  %17 = landingpad { i8*, i32 }
          catch i8* null
  %18 = extractvalue { i8*, i32 } %17, 0
  call void @__clang_call_terminate(i8* %18) #16
  unreachable

unreachable:                                      ; preds = %invoke.cont3
  unreachable
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZSt10_ConstructIN10tensorflow6TensorEJRKS1_EEvPT_DpOT0_(%"class.tensorflow::Tensor"* %__p, %"class.tensorflow::Tensor"* nonnull align 8 dereferenceable(32) %__args) #6 comdat {
entry:
  %__p.addr = alloca %"class.tensorflow::Tensor"*, align 8
  %__args.addr = alloca %"class.tensorflow::Tensor"*, align 8
  store %"class.tensorflow::Tensor"* %__p, %"class.tensorflow::Tensor"** %__p.addr, align 8
  store %"class.tensorflow::Tensor"* %__args, %"class.tensorflow::Tensor"** %__args.addr, align 8
  %0 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %__p.addr, align 8
  %1 = bitcast %"class.tensorflow::Tensor"* %0 to i8*
  %2 = bitcast i8* %1 to %"class.tensorflow::Tensor"*
  %3 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %__args.addr, align 8
  %call = call nonnull align 8 dereferenceable(32) %"class.tensorflow::Tensor"* @_ZSt7forwardIRKN10tensorflow6TensorEEOT_RNSt16remove_referenceIS4_E4typeE(%"class.tensorflow::Tensor"* nonnull align 8 dereferenceable(32) %3) #11
  call void @_ZN10tensorflow6TensorC2ERKS0_(%"class.tensorflow::Tensor"* %2, %"class.tensorflow::Tensor"* nonnull align 8 dereferenceable(32) %call)
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow6TensorC2ERKS0_(%"class.tensorflow::Tensor"* %this, %"class.tensorflow::Tensor"* nonnull align 8 dereferenceable(32) %other) unnamed_addr #6 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
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
  %call = call nonnull align 8 dereferenceable(24) %"class.tensorflow::TensorShape"* @_ZNK10tensorflow6Tensor5shapeEv(%"class.tensorflow::Tensor"* %0)
  call void @_ZN10tensorflow11TensorShapeC2ERKS0_(%"class.tensorflow::TensorShape"* %shape_, %"class.tensorflow::TensorShape"* nonnull align 8 dereferenceable(24) %call)
  %buf_ = getelementptr inbounds %"class.tensorflow::Tensor", %"class.tensorflow::Tensor"* %this1, i32 0, i32 1
  %1 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %other.addr, align 8
  %buf_2 = getelementptr inbounds %"class.tensorflow::Tensor", %"class.tensorflow::Tensor"* %1, i32 0, i32 1
  %2 = load %"class.tensorflow::TensorBuffer"*, %"class.tensorflow::TensorBuffer"** %buf_2, align 8
  store %"class.tensorflow::TensorBuffer"* %2, %"class.tensorflow::TensorBuffer"** %buf_, align 8
  %buf_3 = getelementptr inbounds %"class.tensorflow::Tensor", %"class.tensorflow::Tensor"* %this1, i32 0, i32 1
  %3 = load %"class.tensorflow::TensorBuffer"*, %"class.tensorflow::TensorBuffer"** %buf_3, align 8
  %tobool = icmp ne %"class.tensorflow::TensorBuffer"* %3, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %buf_4 = getelementptr inbounds %"class.tensorflow::Tensor", %"class.tensorflow::Tensor"* %this1, i32 0, i32 1
  %4 = load %"class.tensorflow::TensorBuffer"*, %"class.tensorflow::TensorBuffer"** %buf_4, align 8
  %5 = bitcast %"class.tensorflow::TensorBuffer"* %4 to %"class.tsl::core::RefCounted"*
  invoke void @_ZNK3tsl4core10RefCounted3RefEv(%"class.tsl::core::RefCounted"* %5)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %if.then
  br label %if.end

lpad:                                             ; preds = %if.then
  %6 = landingpad { i8*, i32 }
          cleanup
  %7 = extractvalue { i8*, i32 } %6, 0
  store i8* %7, i8** %exn.slot, align 8
  %8 = extractvalue { i8*, i32 } %6, 1
  store i32 %8, i32* %ehselector.slot, align 4
  call void @_ZN10tensorflow11TensorShapeD2Ev(%"class.tensorflow::TensorShape"* %shape_) #11
  br label %eh.resume

if.end:                                           ; preds = %invoke.cont, %entry
  ret void

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val5 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val5
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow11TensorShapeC2ERKS0_(%"class.tensorflow::TensorShape"* %this, %"class.tensorflow::TensorShape"* nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 comdat align 2 {
entry:
  %this.addr = alloca %"class.tensorflow::TensorShape"*, align 8
  %.addr = alloca %"class.tensorflow::TensorShape"*, align 8
  store %"class.tensorflow::TensorShape"* %this, %"class.tensorflow::TensorShape"** %this.addr, align 8
  store %"class.tensorflow::TensorShape"* %0, %"class.tensorflow::TensorShape"** %.addr, align 8
  %this1 = load %"class.tensorflow::TensorShape"*, %"class.tensorflow::TensorShape"** %this.addr, align 8
  %1 = bitcast %"class.tensorflow::TensorShape"* %this1 to %"class.tensorflow::TensorShapeBase"*
  %2 = load %"class.tensorflow::TensorShape"*, %"class.tensorflow::TensorShape"** %.addr, align 8
  %3 = bitcast %"class.tensorflow::TensorShape"* %2 to %"class.tensorflow::TensorShapeBase"*
  call void @_ZN10tensorflow15TensorShapeBaseINS_11TensorShapeEEC2ERKS2_(%"class.tensorflow::TensorShapeBase"* %1, %"class.tensorflow::TensorShapeBase"* nonnull align 8 dereferenceable(24) %3)
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow15TensorShapeBaseINS_11TensorShapeEEC2ERKS2_(%"class.tensorflow::TensorShapeBase"* %this, %"class.tensorflow::TensorShapeBase"* nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 comdat align 2 {
entry:
  %this.addr = alloca %"class.tensorflow::TensorShapeBase"*, align 8
  %.addr = alloca %"class.tensorflow::TensorShapeBase"*, align 8
  store %"class.tensorflow::TensorShapeBase"* %this, %"class.tensorflow::TensorShapeBase"** %this.addr, align 8
  store %"class.tensorflow::TensorShapeBase"* %0, %"class.tensorflow::TensorShapeBase"** %.addr, align 8
  %this1 = load %"class.tensorflow::TensorShapeBase"*, %"class.tensorflow::TensorShapeBase"** %this.addr, align 8
  %1 = bitcast %"class.tensorflow::TensorShapeBase"* %this1 to %"class.tensorflow::TensorShapeRep"*
  %2 = load %"class.tensorflow::TensorShapeBase"*, %"class.tensorflow::TensorShapeBase"** %.addr, align 8
  %3 = bitcast %"class.tensorflow::TensorShapeBase"* %2 to %"class.tensorflow::TensorShapeRep"*
  call void @_ZN10tensorflow14TensorShapeRepC2ERKS0_(%"class.tensorflow::TensorShapeRep"* %1, %"class.tensorflow::TensorShapeRep"* nonnull align 8 dereferenceable(24) %3)
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow14TensorShapeRepC2ERKS0_(%"class.tensorflow::TensorShapeRep"* %this, %"class.tensorflow::TensorShapeRep"* nonnull align 8 dereferenceable(24) %b) unnamed_addr #6 comdat align 2 {
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
  %2 = load %"class.tensorflow::TensorShapeRep"*, %"class.tensorflow::TensorShapeRep"** %b.addr, align 8
  %call = call i32 @_ZNK10tensorflow14TensorShapeRep3tagEv(%"class.tensorflow::TensorShapeRep"* %2)
  %cmp = icmp ne i32 %call, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call3 = call i8* @_ZN10tensorflow14TensorShapeRep3bufEv(%"class.tensorflow::TensorShapeRep"* %this1)
  %3 = load %"class.tensorflow::TensorShapeRep"*, %"class.tensorflow::TensorShapeRep"** %b.addr, align 8
  %call4 = call i8* @_ZNK10tensorflow14TensorShapeRep3bufEv(%"class.tensorflow::TensorShapeRep"* %3)
  %4 = call i8* @memcpy(i8* %call3, i8* %call4, i64 16)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @_ZN10tensorflow14TensorShapeRep7set_tagENS0_6RepTagE(%"class.tensorflow::TensorShapeRep"* %this1, i32 0)
  %5 = load %"class.tensorflow::TensorShapeRep"*, %"class.tensorflow::TensorShapeRep"** %b.addr, align 8
  call void @_ZN10tensorflow14TensorShapeRep12SlowCopyFromERKS0_(%"class.tensorflow::TensorShapeRep"* %this1, %"class.tensorflow::TensorShapeRep"* nonnull align 8 dereferenceable(24) %5)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %"class.tensorflow::Tensor"* @_ZNSt16allocator_traitsISaIN10tensorflow6TensorEEE8allocateERS2_m(%"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1) %__a, i64 %__n) #6 comdat align 2 {
entry:
  %__a.addr = alloca %"class.std::ios_base::Init"*, align 8
  %__n.addr = alloca i64, align 8
  store %"class.std::ios_base::Init"* %__a, %"class.std::ios_base::Init"** %__a.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %0 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %__a.addr, align 8
  %1 = bitcast %"class.std::ios_base::Init"* %0 to %"class.std::ios_base::Init"*
  %2 = load i64, i64* %__n.addr, align 8
  %call = call %"class.tensorflow::Tensor"* @_ZN9__gnu_cxx13new_allocatorIN10tensorflow6TensorEE8allocateEmPKv(%"class.std::ios_base::Init"* %1, i64 %2, i8* null)
  ret %"class.tensorflow::Tensor"* %call
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %"class.tensorflow::Tensor"* @_ZN9__gnu_cxx13new_allocatorIN10tensorflow6TensorEE8allocateEmPKv(%"class.std::ios_base::Init"* %this, i64 %__n, i8* %0) #6 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::ios_base::Init"*, align 8
  %__n.addr = alloca i64, align 8
  %.addr = alloca i8*, align 8
  store %"class.std::ios_base::Init"* %this, %"class.std::ios_base::Init"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  store i8* %0, i8** %.addr, align 8
  %this1 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %this.addr, align 8
  %1 = load i64, i64* %__n.addr, align 8
  %call = call i64 @_ZNK9__gnu_cxx13new_allocatorIN10tensorflow6TensorEE11_M_max_sizeEv(%"class.std::ios_base::Init"* %this1) #11
  %cmp = icmp ugt i64 %1, %call
  br i1 %cmp, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %__n.addr, align 8
  %cmp2 = icmp ugt i64 %2, 576460752303423487
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  call void @_ZSt28__throw_bad_array_new_lengthv() #20
  unreachable

if.end:                                           ; preds = %if.then
  call void @_ZSt17__throw_bad_allocv() #20
  unreachable

if.end4:                                          ; preds = %entry
  %3 = load i64, i64* %__n.addr, align 8
  %mul = mul i64 %3, 32
  %call5 = call noalias nonnull i8* @_Znwm(i64 %mul) #23
  %4 = bitcast i8* %call5 to %"class.tensorflow::Tensor"*
  ret %"class.tensorflow::Tensor"* %4
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @_ZNK9__gnu_cxx13new_allocatorIN10tensorflow6TensorEE11_M_max_sizeEv(%"class.std::ios_base::Init"* %this) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::ios_base::Init"*, align 8
  store %"class.std::ios_base::Init"* %this, %"class.std::ios_base::Init"** %this.addr, align 8
  %this1 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %this.addr, align 8
  ret i64 288230376151711743
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx17__normal_iteratorIPN10tensorflow6TensorESt6vectorIS2_SaIS2_EEEC2ERKS3_(%"class.__gnu_cxx::__normal_iterator"* %this, %"class.tensorflow::Tensor"** nonnull align 8 dereferenceable(8) %__i) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  %__i.addr = alloca %"class.tensorflow::Tensor"**, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %this, %"class.__gnu_cxx::__normal_iterator"** %this.addr, align 8
  store %"class.tensorflow::Tensor"** %__i, %"class.tensorflow::Tensor"*** %__i.addr, align 8
  %this1 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %this.addr, align 8
  %_M_current = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %this1, i32 0, i32 0
  %0 = load %"class.tensorflow::Tensor"**, %"class.tensorflow::Tensor"*** %__i.addr, align 8
  %1 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %0, align 8
  store %"class.tensorflow::Tensor"* %1, %"class.tensorflow::Tensor"** %_M_current, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @_ZNKSt6vectorIN10tensorflow6TensorESaIS1_EE8max_sizeEv(%"class.std::vector.48"* %this) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::vector.48"*, align 8
  store %"class.std::vector.48"* %this, %"class.std::vector.48"** %this.addr, align 8
  %this1 = load %"class.std::vector.48"*, %"class.std::vector.48"** %this.addr, align 8
  %0 = bitcast %"class.std::vector.48"* %this1 to %"struct.std::_Vector_base.47"*
  %call = call nonnull align 1 dereferenceable(1) %"class.std::ios_base::Init"* @_ZNKSt12_Vector_baseIN10tensorflow6TensorESaIS1_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.47"* %0) #11
  %call2 = call i64 @_ZNSt6vectorIN10tensorflow6TensorESaIS1_EE11_S_max_sizeERKS2_(%"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1) %call) #11
  ret i64 %call2
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @_ZNKSt6vectorIN10tensorflow6TensorESaIS1_EE4sizeEv(%"class.std::vector.48"* %this) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::vector.48"*, align 8
  store %"class.std::vector.48"* %this, %"class.std::vector.48"** %this.addr, align 8
  %this1 = load %"class.std::vector.48"*, %"class.std::vector.48"** %this.addr, align 8
  %0 = bitcast %"class.std::vector.48"* %this1 to %"struct.std::_Vector_base.47"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.47", %"struct.std::_Vector_base.47"* %0, i32 0, i32 0
  %1 = bitcast %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl"* %_M_impl to %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl_data"*
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl_data", %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl_data"* %1, i32 0, i32 1
  %2 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %_M_finish, align 8
  %3 = bitcast %"class.std::vector.48"* %this1 to %"struct.std::_Vector_base.47"*
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base.47", %"struct.std::_Vector_base.47"* %3, i32 0, i32 0
  %4 = bitcast %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl"* %_M_impl2 to %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl_data"*
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl_data", %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl_data"* %4, i32 0, i32 0
  %5 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %_M_start, align 8
  %sub.ptr.lhs.cast = ptrtoint %"class.tensorflow::Tensor"* %2 to i64
  %sub.ptr.rhs.cast = ptrtoint %"class.tensorflow::Tensor"* %5 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 32
  ret i64 %sub.ptr.div
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) i64* @_ZSt3maxImERKT_S2_S2_(i64* nonnull align 8 dereferenceable(8) %__a, i64* nonnull align 8 dereferenceable(8) %__b) #0 comdat {
entry:
  %retval = alloca i64*, align 8
  %__a.addr = alloca i64*, align 8
  %__b.addr = alloca i64*, align 8
  store i64* %__a, i64** %__a.addr, align 8
  store i64* %__b, i64** %__b.addr, align 8
  %0 = load i64*, i64** %__a.addr, align 8
  %1 = load i64, i64* %0, align 8
  %2 = load i64*, i64** %__b.addr, align 8
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
define linkonce_odr dso_local nonnull align 1 dereferenceable(1) %"class.std::ios_base::Init"* @_ZNKSt12_Vector_baseIN10tensorflow6TensorESaIS1_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.47"* %this) #0 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base.47"*, align 8
  store %"struct.std::_Vector_base.47"* %this, %"struct.std::_Vector_base.47"** %this.addr, align 8
  %this1 = load %"struct.std::_Vector_base.47"*, %"struct.std::_Vector_base.47"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.47", %"struct.std::_Vector_base.47"* %this1, i32 0, i32 0
  %0 = bitcast %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl"* %_M_impl to %"class.std::ios_base::Init"*
  ret %"class.std::ios_base::Init"* %0
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @_ZNSt6vectorIN10tensorflow6TensorESaIS1_EE11_S_max_sizeERKS2_(%"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1) %__a) #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__a.addr = alloca %"class.std::ios_base::Init"*, align 8
  %__diffmax = alloca i64, align 8
  %__allocmax = alloca i64, align 8
  store %"class.std::ios_base::Init"* %__a, %"class.std::ios_base::Init"** %__a.addr, align 8
  store i64 288230376151711743, i64* %__diffmax, align 8
  %0 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %__a.addr, align 8
  %call = call i64 @_ZNSt16allocator_traitsISaIN10tensorflow6TensorEEE8max_sizeERKS2_(%"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1) %0) #11
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

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @_ZNSt16allocator_traitsISaIN10tensorflow6TensorEEE8max_sizeERKS2_(%"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1) %__a) #0 comdat align 2 {
entry:
  %__a.addr = alloca %"class.std::ios_base::Init"*, align 8
  store %"class.std::ios_base::Init"* %__a, %"class.std::ios_base::Init"** %__a.addr, align 8
  %0 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %__a.addr, align 8
  %1 = bitcast %"class.std::ios_base::Init"* %0 to %"class.std::ios_base::Init"*
  %call = call i64 @_ZNK9__gnu_cxx13new_allocatorIN10tensorflow6TensorEE8max_sizeEv(%"class.std::ios_base::Init"* %1) #11
  ret i64 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @_ZNK9__gnu_cxx13new_allocatorIN10tensorflow6TensorEE8max_sizeEv(%"class.std::ios_base::Init"* %this) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::ios_base::Init"*, align 8
  store %"class.std::ios_base::Init"* %this, %"class.std::ios_base::Init"** %this.addr, align 8
  %this1 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %this.addr, align 8
  %call = call i64 @_ZNK9__gnu_cxx13new_allocatorIN10tensorflow6TensorEE11_M_max_sizeEv(%"class.std::ios_base::Init"* %this1) #11
  ret i64 %call
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorIN10tensorflow6TensorEE9constructIS2_JRKS2_EEEvPT_DpOT0_(%"class.std::ios_base::Init"* %this, %"class.tensorflow::Tensor"* %__p, %"class.tensorflow::Tensor"* nonnull align 8 dereferenceable(32) %__args) #6 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::ios_base::Init"*, align 8
  %__p.addr = alloca %"class.tensorflow::Tensor"*, align 8
  %__args.addr = alloca %"class.tensorflow::Tensor"*, align 8
  store %"class.std::ios_base::Init"* %this, %"class.std::ios_base::Init"** %this.addr, align 8
  store %"class.tensorflow::Tensor"* %__p, %"class.tensorflow::Tensor"** %__p.addr, align 8
  store %"class.tensorflow::Tensor"* %__args, %"class.tensorflow::Tensor"** %__args.addr, align 8
  %this1 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %this.addr, align 8
  %0 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %__p.addr, align 8
  %1 = bitcast %"class.tensorflow::Tensor"* %0 to i8*
  %2 = bitcast i8* %1 to %"class.tensorflow::Tensor"*
  %3 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %__args.addr, align 8
  %call = call nonnull align 8 dereferenceable(32) %"class.tensorflow::Tensor"* @_ZSt7forwardIRKN10tensorflow6TensorEEOT_RNSt16remove_referenceIS4_E4typeE(%"class.tensorflow::Tensor"* nonnull align 8 dereferenceable(32) %3) #11
  call void @_ZN10tensorflow6TensorC2ERKS0_(%"class.tensorflow::Tensor"* %2, %"class.tensorflow::Tensor"* nonnull align 8 dereferenceable(32) %call)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN10tensorflow6TensorESaIS1_EE15_M_erase_at_endEPS1_(%"class.std::vector.48"* %this, %"class.tensorflow::Tensor"* %__pos) #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::vector.48"*, align 8
  %__pos.addr = alloca %"class.tensorflow::Tensor"*, align 8
  %__n = alloca i64, align 8
  store %"class.std::vector.48"* %this, %"class.std::vector.48"** %this.addr, align 8
  store %"class.tensorflow::Tensor"* %__pos, %"class.tensorflow::Tensor"** %__pos.addr, align 8
  %this1 = load %"class.std::vector.48"*, %"class.std::vector.48"** %this.addr, align 8
  %0 = bitcast %"class.std::vector.48"* %this1 to %"struct.std::_Vector_base.47"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.47", %"struct.std::_Vector_base.47"* %0, i32 0, i32 0
  %1 = bitcast %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl"* %_M_impl to %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl_data"*
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl_data", %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl_data"* %1, i32 0, i32 1
  %2 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %_M_finish, align 8
  %3 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %__pos.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint %"class.tensorflow::Tensor"* %2 to i64
  %sub.ptr.rhs.cast = ptrtoint %"class.tensorflow::Tensor"* %3 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 32
  store i64 %sub.ptr.div, i64* %__n, align 8
  %4 = load i64, i64* %__n, align 8
  %tobool = icmp ne i64 %4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %__pos.addr, align 8
  %6 = bitcast %"class.std::vector.48"* %this1 to %"struct.std::_Vector_base.47"*
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base.47", %"struct.std::_Vector_base.47"* %6, i32 0, i32 0
  %7 = bitcast %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl"* %_M_impl2 to %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl_data"*
  %_M_finish3 = getelementptr inbounds %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl_data", %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl_data"* %7, i32 0, i32 1
  %8 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %_M_finish3, align 8
  %9 = bitcast %"class.std::vector.48"* %this1 to %"struct.std::_Vector_base.47"*
  %call = call nonnull align 1 dereferenceable(1) %"class.std::ios_base::Init"* @_ZNSt12_Vector_baseIN10tensorflow6TensorESaIS1_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.47"* %9) #11
  invoke void @_ZSt8_DestroyIPN10tensorflow6TensorES1_EvT_S3_RSaIT0_E(%"class.tensorflow::Tensor"* %5, %"class.tensorflow::Tensor"* %8, %"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1) %call)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %if.then
  %10 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %__pos.addr, align 8
  %11 = bitcast %"class.std::vector.48"* %this1 to %"struct.std::_Vector_base.47"*
  %_M_impl4 = getelementptr inbounds %"struct.std::_Vector_base.47", %"struct.std::_Vector_base.47"* %11, i32 0, i32 0
  %12 = bitcast %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl"* %_M_impl4 to %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl_data"*
  %_M_finish5 = getelementptr inbounds %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl_data", %"struct.std::_Vector_base<tensorflow::Tensor, std::allocator<tensorflow::Tensor>>::_Vector_impl_data"* %12, i32 0, i32 1
  store %"class.tensorflow::Tensor"* %10, %"class.tensorflow::Tensor"** %_M_finish5, align 8
  br label %if.end

if.end:                                           ; preds = %invoke.cont, %entry
  ret void

terminate.lpad:                                   ; preds = %if.then
  %13 = landingpad { i8*, i32 }
          catch i8* null
  %14 = extractvalue { i8*, i32 } %13, 0
  call void @__clang_call_terminate(i8* %14) #16
  unreachable
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local zeroext i1 @_ZN10tensorflow13DecodeVariantINS_6TensorEEEbPNS_17VariantTensorDataEPT_(%"class.tensorflow::VariantTensorData"* %data, %"class.tensorflow::Tensor"* %value) #6 comdat personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %data.addr = alloca %"class.tensorflow::VariantTensorData"*, align 8
  %value.addr = alloca %"class.tensorflow::Tensor"*, align 8
  %agg.tmp = alloca %"class.tensorflow::VariantTensorData", align 8
  %agg.tmp1 = alloca %"class.std::ios_base::Init", align 1
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  store %"class.tensorflow::VariantTensorData"* %data, %"class.tensorflow::VariantTensorData"** %data.addr, align 8
  store %"class.tensorflow::Tensor"* %value, %"class.tensorflow::Tensor"** %value.addr, align 8
  %0 = load %"class.tensorflow::VariantTensorData"*, %"class.tensorflow::VariantTensorData"** %data.addr, align 8
  %call = call nonnull align 8 dereferenceable(88) %"class.tensorflow::VariantTensorData"* @_ZSt4moveIRN10tensorflow17VariantTensorDataEEONSt16remove_referenceIT_E4typeEOS4_(%"class.tensorflow::VariantTensorData"* nonnull align 8 dereferenceable(88) %0) #11
  call void @_ZN10tensorflow17VariantTensorDataC2EOS0_(%"class.tensorflow::VariantTensorData"* %agg.tmp, %"class.tensorflow::VariantTensorData"* nonnull align 8 dereferenceable(88) %call) #11
  %1 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %value.addr, align 8
  %call2 = invoke zeroext i1 @_ZN10tensorflow17DecodeVariantImplINS_6TensorEEEbNS_17VariantTensorDataENS_12TypeResolverIT_Lb0ELb1ELb0EEEPS4_(%"class.tensorflow::VariantTensorData"* %agg.tmp, %"class.tensorflow::Tensor"* %1)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  call void @_ZN10tensorflow17VariantTensorDataD2Ev(%"class.tensorflow::VariantTensorData"* %agg.tmp) #11
  ret i1 %call2

lpad:                                             ; preds = %entry
  %2 = landingpad { i8*, i32 }
          cleanup
  %3 = extractvalue { i8*, i32 } %2, 0
  store i8* %3, i8** %exn.slot, align 8
  %4 = extractvalue { i8*, i32 } %2, 1
  store i32 %4, i32* %ehselector.slot, align 4
  call void @_ZN10tensorflow17VariantTensorDataD2Ev(%"class.tensorflow::VariantTensorData"* %agg.tmp) #11
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val3 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val3
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow13EncodeVariantINS_6TensorEEEvRKT_PNS_17VariantTensorDataE(%"class.tensorflow::Tensor"* nonnull align 8 dereferenceable(32) %value, %"class.tensorflow::VariantTensorData"* %data) #6 comdat personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %value.addr = alloca %"class.tensorflow::Tensor"*, align 8
  %data.addr = alloca %"class.tensorflow::VariantTensorData"*, align 8
  %agg.tmp = alloca %"class.std::ios_base::Init", align 1
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  store %"class.tensorflow::Tensor"* %value, %"class.tensorflow::Tensor"** %value.addr, align 8
  store %"class.tensorflow::VariantTensorData"* %data, %"class.tensorflow::VariantTensorData"** %data.addr, align 8
  %0 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %value.addr, align 8
  %1 = load %"class.tensorflow::VariantTensorData"*, %"class.tensorflow::VariantTensorData"** %data.addr, align 8
  call void @_ZN10tensorflow17EncodeVariantImplINS_6TensorEEEvRKT_NS_12TypeResolverIS2_Lb0ELb1EXsr3std10is_base_ofIN6google8protobuf11MessageLiteENSt5decayIS2_E4typeEEE5valueEEEPNS_17VariantTensorDataE(%"class.tensorflow::Tensor"* nonnull align 8 dereferenceable(32) %0, %"class.tensorflow::VariantTensorData"* %1)
  %2 = load %"class.tensorflow::VariantTensorData"*, %"class.tensorflow::VariantTensorData"** %data.addr, align 8
  %3 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %value.addr, align 8
  call void @_ZN10tensorflow15TypeNameVariantINS_6TensorEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(%"class.std::__cxx11::basic_string"* sret align 8 %ref.tmp, %"class.tensorflow::Tensor"* nonnull align 8 dereferenceable(32) %3)
  invoke void @_ZN10tensorflow17VariantTensorData13set_type_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.tensorflow::VariantTensorData"* %2, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %ref.tmp) #11
  ret void

lpad:                                             ; preds = %entry
  %4 = landingpad { i8*, i32 }
          cleanup
  %5 = extractvalue { i8*, i32 } %4, 0
  store i8* %5, i8** %exn.slot, align 8
  %6 = extractvalue { i8*, i32 } %4, 1
  store i32 %6, i32* %ehselector.slot, align 4
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %ref.tmp) #11
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val1 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val1
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow18DebugStringVariantINS_6TensorEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(%"class.std::__cxx11::basic_string"* noalias sret align 8 %agg.result, %"class.tensorflow::Tensor"* nonnull align 8 dereferenceable(32) %value) #6 comdat {
entry:
  %result.ptr = alloca i8*, align 8
  %value.addr = alloca %"class.tensorflow::Tensor"*, align 8
  %agg.tmp = alloca %"class.std::ios_base::Init", align 1
  %0 = bitcast %"class.std::__cxx11::basic_string"* %agg.result to i8*
  store i8* %0, i8** %result.ptr, align 8
  store %"class.tensorflow::Tensor"* %value, %"class.tensorflow::Tensor"** %value.addr, align 8
  %1 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %value.addr, align 8
  call void @_ZN10tensorflow22DebugStringVariantImplINS_6TensorEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_NS_19DebugStringResolverIS8_Lb1EXsr10can_strcatINSt5decayIS8_E4typeEEE5valueEEE(%"class.std::__cxx11::basic_string"* sret align 8 %agg.result, %"class.tensorflow::Tensor"* nonnull align 8 dereferenceable(32) %1)
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow22DebugStringVariantImplINS_6TensorEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_NS_19DebugStringResolverIS8_Lb1EXsr10can_strcatINSt5decayIS8_E4typeEEE5valueEEE(%"class.std::__cxx11::basic_string"* noalias sret align 8 %agg.result, %"class.tensorflow::Tensor"* nonnull align 8 dereferenceable(32) %value) #6 comdat {
entry:
  %result.ptr = alloca i8*, align 8
  %0 = alloca %"class.std::ios_base::Init", align 1
  %value.addr = alloca %"class.tensorflow::Tensor"*, align 8
  %1 = bitcast %"class.std::__cxx11::basic_string"* %agg.result to i8*
  store i8* %1, i8** %result.ptr, align 8
  store %"class.tensorflow::Tensor"* %value, %"class.tensorflow::Tensor"** %value.addr, align 8
  %2 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %value.addr, align 8
  call void @_ZNK10tensorflow6Tensor11DebugStringB5cxx11Ev(%"class.std::__cxx11::basic_string"* sret align 8 %agg.result, %"class.tensorflow::Tensor"* %2)
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNK10tensorflow6Tensor11DebugStringB5cxx11Ev(%"class.std::__cxx11::basic_string"* noalias sret align 8 %agg.result, %"class.tensorflow::Tensor"* %this) #6 comdat align 2 {
entry:
  %result.ptr = alloca i8*, align 8
  %this.addr = alloca %"class.tensorflow::Tensor"*, align 8
  %0 = bitcast %"class.std::__cxx11::basic_string"* %agg.result to i8*
  store i8* %0, i8** %result.ptr, align 8
  store %"class.tensorflow::Tensor"* %this, %"class.tensorflow::Tensor"** %this.addr, align 8
  %this1 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %this.addr, align 8
  call void @_ZNK10tensorflow6Tensor11DebugStringB5cxx11Ei(%"class.std::__cxx11::basic_string"* sret align 8 %agg.result, %"class.tensorflow::Tensor"* %this1, i32 3)
  ret void
}

declare dso_local void @_ZNK10tensorflow6Tensor11DebugStringB5cxx11Ei(%"class.std::__cxx11::basic_string"* sret align 8, %"class.tensorflow::Tensor"*, i32) #4

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow7Variant5ValueINS_6TensorEEC2IJS2_EEENS0_10in_place_tEDpOT_(%"class.tensorflow::TensorInterface"* %this, %"class.tensorflow::Tensor"* nonnull align 8 dereferenceable(32) %args) unnamed_addr #6 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %0 = alloca %"class.std::ios_base::Init", align 1
  %this.addr = alloca %"class.tensorflow::TensorInterface"*, align 8
  %args.addr = alloca %"class.tensorflow::Tensor"*, align 8
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  store %"class.tensorflow::TensorInterface"* %this, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  store %"class.tensorflow::Tensor"* %args, %"class.tensorflow::Tensor"** %args.addr, align 8
  %this1 = load %"class.tensorflow::TensorInterface"*, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  %1 = bitcast %"class.tensorflow::TensorInterface"* %this1 to %"class.tensorflow::AbstractTensorInterface"*
  call void @_ZN10tensorflow7Variant14ValueInterfaceC2Ev(%"class.tensorflow::AbstractTensorInterface"* %1) #11
  %2 = bitcast %"class.tensorflow::TensorInterface"* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [17 x i8*] }, { [17 x i8*] }* @_ZTVN10tensorflow7Variant5ValueINS_6TensorEEE, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %2, align 8
  %value = getelementptr inbounds %"class.tensorflow::TensorInterface", %"class.tensorflow::TensorInterface"* %this1, i32 0, i32 1
  %3 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %args.addr, align 8
  %call = call nonnull align 8 dereferenceable(32) %"class.tensorflow::Tensor"* @_ZSt7forwardIN10tensorflow6TensorEEOT_RNSt16remove_referenceIS2_E4typeE(%"class.tensorflow::Tensor"* nonnull align 8 dereferenceable(32) %3) #11
  invoke void @_ZN10tensorflow6TensorC2EOS0_(%"class.tensorflow::Tensor"* %value, %"class.tensorflow::Tensor"* nonnull align 8 dereferenceable(32) %call)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  ret void

lpad:                                             ; preds = %entry
  %4 = landingpad { i8*, i32 }
          cleanup
  %5 = extractvalue { i8*, i32 } %4, 0
  store i8* %5, i8** %exn.slot, align 8
  %6 = extractvalue { i8*, i32 } %4, 1
  store i32 %6, i32* %ehselector.slot, align 4
  %7 = bitcast %"class.tensorflow::TensorInterface"* %this1 to %"class.tensorflow::AbstractTensorInterface"*
  call void @_ZN10tensorflow7Variant14ValueInterfaceD2Ev(%"class.tensorflow::AbstractTensorInterface"* %7) #11
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val2 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val2
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow7Variant14ValueInterfaceC2Ev(%"class.tensorflow::AbstractTensorInterface"* %this) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.tensorflow::AbstractTensorInterface"*, align 8
  store %"class.tensorflow::AbstractTensorInterface"* %this, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  %this1 = load %"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  %0 = bitcast %"class.tensorflow::AbstractTensorInterface"* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [17 x i8*] }, { [17 x i8*] }* @_ZTVN10tensorflow7Variant14ValueInterfaceE, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %0, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow7Variant14ValueInterfaceD0Ev(%"class.tensorflow::AbstractTensorInterface"* %this) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.tensorflow::AbstractTensorInterface"*, align 8
  store %"class.tensorflow::AbstractTensorInterface"* %this, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  %this1 = load %"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"** %this.addr, align 8
  call void @abort()
  unreachable
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(136) %"class.tsl::internal::LogMessageFatal"* @_ZStlsIN3tsl8internal15LogMessageFatalEA44_cEOT_S5_RKT0_(%"class.tsl::internal::LogMessageFatal"* nonnull align 8 dereferenceable(136) %__os, [44 x i8]* nonnull align 1 dereferenceable(44) %__x) #6 comdat {
entry:
  %__os.addr = alloca %"class.tsl::internal::LogMessageFatal"*, align 8
  %__x.addr = alloca [44 x i8]*, align 8
  store %"class.tsl::internal::LogMessageFatal"* %__os, %"class.tsl::internal::LogMessageFatal"** %__os.addr, align 8
  store [44 x i8]* %__x, [44 x i8]** %__x.addr, align 8
  %0 = load %"class.tsl::internal::LogMessageFatal"*, %"class.tsl::internal::LogMessageFatal"** %__os.addr, align 8
  %1 = bitcast %"class.tsl::internal::LogMessageFatal"* %0 to %"class.std::basic_ostream"*
  %2 = load [44 x i8]*, [44 x i8]** %__x.addr, align 8
  %arraydecay = getelementptr inbounds [44 x i8], [44 x i8]* %2, i64 0, i64 0
  %call = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %1, i8* %arraydecay)
  %3 = load %"class.tsl::internal::LogMessageFatal"*, %"class.tsl::internal::LogMessageFatal"** %__os.addr, align 8
  %call1 = call nonnull align 8 dereferenceable(136) %"class.tsl::internal::LogMessageFatal"* @_ZSt4moveIRN3tsl8internal15LogMessageFatalEEONSt16remove_referenceIT_E4typeEOS5_(%"class.tsl::internal::LogMessageFatal"* nonnull align 8 dereferenceable(136) %3) #11
  ret %"class.tsl::internal::LogMessageFatal"* %call1
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i8* @_ZNK10tensorflow9TypeIndex4nameEv(%"class.std::basic_string_view"* %this) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::basic_string_view"*, align 8
  store %"class.std::basic_string_view"* %this, %"class.std::basic_string_view"** %this.addr, align 8
  %this1 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %this.addr, align 8
  %name_ = getelementptr inbounds %"class.std::basic_string_view", %"class.std::basic_string_view"* %this1, i32 0, i32 1
  %0 = load i8*, i8** %name_, align 8
  ret i8* %0
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(136) %"class.tsl::internal::LogMessageFatal"* @_ZStlsIN3tsl8internal15LogMessageFatalEPKcEOT_S6_RKT0_(%"class.tsl::internal::LogMessageFatal"* nonnull align 8 dereferenceable(136) %__os, i8** nonnull align 8 dereferenceable(8) %__x) #6 comdat {
entry:
  %__os.addr = alloca %"class.tsl::internal::LogMessageFatal"*, align 8
  %__x.addr = alloca i8**, align 8
  store %"class.tsl::internal::LogMessageFatal"* %__os, %"class.tsl::internal::LogMessageFatal"** %__os.addr, align 8
  store i8** %__x, i8*** %__x.addr, align 8
  %0 = load %"class.tsl::internal::LogMessageFatal"*, %"class.tsl::internal::LogMessageFatal"** %__os.addr, align 8
  %1 = bitcast %"class.tsl::internal::LogMessageFatal"* %0 to %"class.std::basic_ostream"*
  %2 = load i8**, i8*** %__x.addr, align 8
  %3 = load i8*, i8** %2, align 8
  %call = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %1, i8* %3)
  %4 = load %"class.tsl::internal::LogMessageFatal"*, %"class.tsl::internal::LogMessageFatal"** %__os.addr, align 8
  %call1 = call nonnull align 8 dereferenceable(136) %"class.tsl::internal::LogMessageFatal"* @_ZSt4moveIRN3tsl8internal15LogMessageFatalEEONSt16remove_referenceIT_E4typeEOS5_(%"class.tsl::internal::LogMessageFatal"* nonnull align 8 dereferenceable(136) %4) #11
  ret %"class.tsl::internal::LogMessageFatal"* %call1
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(136) %"class.tsl::internal::LogMessageFatal"* @_ZStlsIN3tsl8internal15LogMessageFatalEA6_cEOT_S5_RKT0_(%"class.tsl::internal::LogMessageFatal"* nonnull align 8 dereferenceable(136) %__os, [6 x i8]* nonnull align 1 dereferenceable(6) %__x) #6 comdat {
entry:
  %__os.addr = alloca %"class.tsl::internal::LogMessageFatal"*, align 8
  %__x.addr = alloca [6 x i8]*, align 8
  store %"class.tsl::internal::LogMessageFatal"* %__os, %"class.tsl::internal::LogMessageFatal"** %__os.addr, align 8
  store [6 x i8]* %__x, [6 x i8]** %__x.addr, align 8
  %0 = load %"class.tsl::internal::LogMessageFatal"*, %"class.tsl::internal::LogMessageFatal"** %__os.addr, align 8
  %1 = bitcast %"class.tsl::internal::LogMessageFatal"* %0 to %"class.std::basic_ostream"*
  %2 = load [6 x i8]*, [6 x i8]** %__x.addr, align 8
  %arraydecay = getelementptr inbounds [6 x i8], [6 x i8]* %2, i64 0, i64 0
  %call = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %1, i8* %arraydecay)
  %3 = load %"class.tsl::internal::LogMessageFatal"*, %"class.tsl::internal::LogMessageFatal"** %__os.addr, align 8
  %call1 = call nonnull align 8 dereferenceable(136) %"class.tsl::internal::LogMessageFatal"* @_ZSt4moveIRN3tsl8internal15LogMessageFatalEEONSt16remove_referenceIT_E4typeEOS5_(%"class.tsl::internal::LogMessageFatal"* nonnull align 8 dereferenceable(136) %3) #11
  ret %"class.tsl::internal::LogMessageFatal"* %call1
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(32) %"class.tensorflow::Tensor"* @_ZN10tensorflow6TensoraSEOS0_(%"class.tensorflow::Tensor"* %this, %"class.tensorflow::Tensor"* nonnull align 8 dereferenceable(32) %other) #6 comdat align 2 {
entry:
  %this.addr = alloca %"class.tensorflow::Tensor"*, align 8
  %other.addr = alloca %"class.tensorflow::Tensor"*, align 8
  store %"class.tensorflow::Tensor"* %this, %"class.tensorflow::Tensor"** %this.addr, align 8
  store %"class.tensorflow::Tensor"* %other, %"class.tensorflow::Tensor"** %other.addr, align 8
  %this1 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %this.addr, align 8
  %0 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %other.addr, align 8
  %cmp = icmp ne %"class.tensorflow::Tensor"* %0, %this1
  br i1 %cmp, label %if.then, label %if.end10

if.then:                                          ; preds = %entry
  %1 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %other.addr, align 8
  %shape_ = getelementptr inbounds %"class.tensorflow::Tensor", %"class.tensorflow::Tensor"* %1, i32 0, i32 0
  %call = call nonnull align 8 dereferenceable(24) %"class.tensorflow::TensorShape"* @_ZSt4moveIRN10tensorflow11TensorShapeEEONSt16remove_referenceIT_E4typeEOS4_(%"class.tensorflow::TensorShape"* nonnull align 8 dereferenceable(24) %shape_) #11
  %shape_2 = getelementptr inbounds %"class.tensorflow::Tensor", %"class.tensorflow::Tensor"* %this1, i32 0, i32 0
  %call3 = call nonnull align 8 dereferenceable(24) %"class.tensorflow::TensorShape"* @_ZN10tensorflow11TensorShapeaSEOS0_(%"class.tensorflow::TensorShape"* %shape_2, %"class.tensorflow::TensorShape"* nonnull align 8 dereferenceable(24) %call)
  %buf_ = getelementptr inbounds %"class.tensorflow::Tensor", %"class.tensorflow::Tensor"* %this1, i32 0, i32 1
  %2 = load %"class.tensorflow::TensorBuffer"*, %"class.tensorflow::TensorBuffer"** %buf_, align 8
  %tobool = icmp ne %"class.tensorflow::TensorBuffer"* %2, null
  br i1 %tobool, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.then
  %buf_5 = getelementptr inbounds %"class.tensorflow::Tensor", %"class.tensorflow::Tensor"* %this1, i32 0, i32 1
  %3 = load %"class.tensorflow::TensorBuffer"*, %"class.tensorflow::TensorBuffer"** %buf_5, align 8
  %4 = bitcast %"class.tensorflow::TensorBuffer"* %3 to %"class.tsl::core::RefCounted"*
  %call6 = call zeroext i1 @_ZNK3tsl4core10RefCounted5UnrefEv(%"class.tsl::core::RefCounted"* %4)
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then
  %5 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %other.addr, align 8
  %buf_7 = getelementptr inbounds %"class.tensorflow::Tensor", %"class.tensorflow::Tensor"* %5, i32 0, i32 1
  %6 = load %"class.tensorflow::TensorBuffer"*, %"class.tensorflow::TensorBuffer"** %buf_7, align 8
  %buf_8 = getelementptr inbounds %"class.tensorflow::Tensor", %"class.tensorflow::Tensor"* %this1, i32 0, i32 1
  store %"class.tensorflow::TensorBuffer"* %6, %"class.tensorflow::TensorBuffer"** %buf_8, align 8
  %7 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %other.addr, align 8
  %buf_9 = getelementptr inbounds %"class.tensorflow::Tensor", %"class.tensorflow::Tensor"* %7, i32 0, i32 1
  store %"class.tensorflow::TensorBuffer"* null, %"class.tensorflow::TensorBuffer"** %buf_9, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.end, %entry
  ret %"class.tensorflow::Tensor"* %this1
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(24) %"class.tensorflow::TensorShape"* @_ZN10tensorflow11TensorShapeaSEOS0_(%"class.tensorflow::TensorShape"* %this, %"class.tensorflow::TensorShape"* nonnull align 8 dereferenceable(24) %0) #6 comdat align 2 {
entry:
  %this.addr = alloca %"class.tensorflow::TensorShape"*, align 8
  %.addr = alloca %"class.tensorflow::TensorShape"*, align 8
  store %"class.tensorflow::TensorShape"* %this, %"class.tensorflow::TensorShape"** %this.addr, align 8
  store %"class.tensorflow::TensorShape"* %0, %"class.tensorflow::TensorShape"** %.addr, align 8
  %this1 = load %"class.tensorflow::TensorShape"*, %"class.tensorflow::TensorShape"** %this.addr, align 8
  %1 = bitcast %"class.tensorflow::TensorShape"* %this1 to %"class.tensorflow::TensorShapeBase"*
  %2 = load %"class.tensorflow::TensorShape"*, %"class.tensorflow::TensorShape"** %.addr, align 8
  %3 = bitcast %"class.tensorflow::TensorShape"* %2 to %"class.tensorflow::TensorShapeBase"*
  %call = call nonnull align 8 dereferenceable(24) %"class.tensorflow::TensorShapeBase"* @_ZN10tensorflow15TensorShapeBaseINS_11TensorShapeEEaSEOS2_(%"class.tensorflow::TensorShapeBase"* %1, %"class.tensorflow::TensorShapeBase"* nonnull align 8 dereferenceable(24) %3)
  ret %"class.tensorflow::TensorShape"* %this1
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(24) %"class.tensorflow::TensorShapeBase"* @_ZN10tensorflow15TensorShapeBaseINS_11TensorShapeEEaSEOS2_(%"class.tensorflow::TensorShapeBase"* %this, %"class.tensorflow::TensorShapeBase"* nonnull align 8 dereferenceable(24) %0) #6 comdat align 2 {
entry:
  %this.addr = alloca %"class.tensorflow::TensorShapeBase"*, align 8
  %.addr = alloca %"class.tensorflow::TensorShapeBase"*, align 8
  store %"class.tensorflow::TensorShapeBase"* %this, %"class.tensorflow::TensorShapeBase"** %this.addr, align 8
  store %"class.tensorflow::TensorShapeBase"* %0, %"class.tensorflow::TensorShapeBase"** %.addr, align 8
  %this1 = load %"class.tensorflow::TensorShapeBase"*, %"class.tensorflow::TensorShapeBase"** %this.addr, align 8
  %1 = bitcast %"class.tensorflow::TensorShapeBase"* %this1 to %"class.tensorflow::TensorShapeRep"*
  %2 = load %"class.tensorflow::TensorShapeBase"*, %"class.tensorflow::TensorShapeBase"** %.addr, align 8
  %3 = bitcast %"class.tensorflow::TensorShapeBase"* %2 to %"class.tensorflow::TensorShapeRep"*
  call void @_ZN10tensorflow14TensorShapeRepaSEOS0_(%"class.tensorflow::TensorShapeRep"* %1, %"class.tensorflow::TensorShapeRep"* nonnull align 8 dereferenceable(24) %3)
  ret %"class.tensorflow::TensorShapeBase"* %this1
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow14TensorShapeRepaSEOS0_(%"class.tensorflow::TensorShapeRep"* %this, %"class.tensorflow::TensorShapeRep"* nonnull align 8 dereferenceable(24) %b) #6 comdat align 2 {
entry:
  %this.addr = alloca %"class.tensorflow::TensorShapeRep"*, align 8
  %b.addr = alloca %"class.tensorflow::TensorShapeRep"*, align 8
  store %"class.tensorflow::TensorShapeRep"* %this, %"class.tensorflow::TensorShapeRep"** %this.addr, align 8
  store %"class.tensorflow::TensorShapeRep"* %b, %"class.tensorflow::TensorShapeRep"** %b.addr, align 8
  %this1 = load %"class.tensorflow::TensorShapeRep"*, %"class.tensorflow::TensorShapeRep"** %this.addr, align 8
  %call = call i32 @_ZNK10tensorflow14TensorShapeRep3tagEv(%"class.tensorflow::TensorShapeRep"* %this1)
  %cmp = icmp eq i32 %call, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_ZN10tensorflow14TensorShapeRep19DestructorOutOfLineEv(%"class.tensorflow::TensorShapeRep"* %this1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %0 = load %"class.tensorflow::TensorShapeRep"*, %"class.tensorflow::TensorShapeRep"** %b.addr, align 8
  %num_elements_ = getelementptr inbounds %"class.tensorflow::TensorShapeRep", %"class.tensorflow::TensorShapeRep"* %0, i32 0, i32 1
  %1 = load i64, i64* %num_elements_, align 8
  %num_elements_2 = getelementptr inbounds %"class.tensorflow::TensorShapeRep", %"class.tensorflow::TensorShapeRep"* %this1, i32 0, i32 1
  store i64 %1, i64* %num_elements_2, align 8
  %call3 = call i8* @_ZN10tensorflow14TensorShapeRep3bufEv(%"class.tensorflow::TensorShapeRep"* %this1)
  %2 = load %"class.tensorflow::TensorShapeRep"*, %"class.tensorflow::TensorShapeRep"** %b.addr, align 8
  %call4 = call i8* @_ZN10tensorflow14TensorShapeRep3bufEv(%"class.tensorflow::TensorShapeRep"* %2)
  %3 = call i8* @memcpy(i8* %call3, i8* %call4, i64 16)
  %4 = load %"class.tensorflow::TensorShapeRep"*, %"class.tensorflow::TensorShapeRep"** %b.addr, align 8
  call void @_ZN10tensorflow14TensorShapeRep7set_tagENS0_6RepTagE(%"class.tensorflow::TensorShapeRep"* %4, i32 0)
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow7Variant5ValueINS_6TensorEEC2IJRKS2_EEENS0_10in_place_tEDpOT_(%"class.tensorflow::TensorInterface"* %this, %"class.tensorflow::Tensor"* nonnull align 8 dereferenceable(32) %args) unnamed_addr #6 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %0 = alloca %"class.std::ios_base::Init", align 1
  %this.addr = alloca %"class.tensorflow::TensorInterface"*, align 8
  %args.addr = alloca %"class.tensorflow::Tensor"*, align 8
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  store %"class.tensorflow::TensorInterface"* %this, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  store %"class.tensorflow::Tensor"* %args, %"class.tensorflow::Tensor"** %args.addr, align 8
  %this1 = load %"class.tensorflow::TensorInterface"*, %"class.tensorflow::TensorInterface"** %this.addr, align 8
  %1 = bitcast %"class.tensorflow::TensorInterface"* %this1 to %"class.tensorflow::AbstractTensorInterface"*
  call void @_ZN10tensorflow7Variant14ValueInterfaceC2Ev(%"class.tensorflow::AbstractTensorInterface"* %1) #11
  %2 = bitcast %"class.tensorflow::TensorInterface"* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [17 x i8*] }, { [17 x i8*] }* @_ZTVN10tensorflow7Variant5ValueINS_6TensorEEE, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %2, align 8
  %value = getelementptr inbounds %"class.tensorflow::TensorInterface", %"class.tensorflow::TensorInterface"* %this1, i32 0, i32 1
  %3 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %args.addr, align 8
  %call = call nonnull align 8 dereferenceable(32) %"class.tensorflow::Tensor"* @_ZSt7forwardIRKN10tensorflow6TensorEEOT_RNSt16remove_referenceIS4_E4typeE(%"class.tensorflow::Tensor"* nonnull align 8 dereferenceable(32) %3) #11
  invoke void @_ZN10tensorflow6TensorC2ERKS0_(%"class.tensorflow::Tensor"* %value, %"class.tensorflow::Tensor"* nonnull align 8 dereferenceable(32) %call)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  ret void

lpad:                                             ; preds = %entry
  %4 = landingpad { i8*, i32 }
          cleanup
  %5 = extractvalue { i8*, i32 } %4, 0
  store i8* %5, i8** %exn.slot, align 8
  %6 = extractvalue { i8*, i32 } %4, 1
  store i32 %6, i32* %ehselector.slot, align 4
  %7 = bitcast %"class.tensorflow::TensorInterface"* %this1 to %"class.tensorflow::AbstractTensorInterface"*
  call void @_ZN10tensorflow7Variant14ValueInterfaceD2Ev(%"class.tensorflow::AbstractTensorInterface"* %7) #11
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val2 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val2
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZSt11make_uniqueIN10tensorflow7Variant5ValueINS0_6TensorEEEJNS1_10in_place_tERKS3_EENSt9_MakeUniqIT_E15__single_objectEDpOT0_(%"class.std::unique_ptr.47"* noalias sret align 8 %agg.result, %"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1) %__args, %"class.tensorflow::Tensor"* nonnull align 8 dereferenceable(32) %__args1) #6 comdat personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %result.ptr = alloca i8*, align 8
  %__args.addr = alloca %"class.std::ios_base::Init"*, align 8
  %__args.addr2 = alloca %"class.tensorflow::Tensor"*, align 8
  %agg.tmp = alloca %"class.std::ios_base::Init", align 1
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  %0 = bitcast %"class.std::unique_ptr.47"* %agg.result to i8*
  store i8* %0, i8** %result.ptr, align 8
  store %"class.std::ios_base::Init"* %__args, %"class.std::ios_base::Init"** %__args.addr, align 8
  store %"class.tensorflow::Tensor"* %__args1, %"class.tensorflow::Tensor"** %__args.addr2, align 8
  %call = call noalias nonnull i8* @_Znwm(i64 40) #21
  %1 = bitcast i8* %call to %"class.tensorflow::TensorInterface"*
  %2 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %__args.addr, align 8
  %call3 = call nonnull align 1 dereferenceable(1) %"class.std::ios_base::Init"* @_ZSt7forwardIN10tensorflow7Variant10in_place_tEEOT_RNSt16remove_referenceIS3_E4typeE(%"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1) %2) #11
  %3 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %__args.addr2, align 8
  %call4 = call nonnull align 8 dereferenceable(32) %"class.tensorflow::Tensor"* @_ZSt7forwardIRKN10tensorflow6TensorEEOT_RNSt16remove_referenceIS4_E4typeE(%"class.tensorflow::Tensor"* nonnull align 8 dereferenceable(32) %3) #11
  invoke void @_ZN10tensorflow7Variant5ValueINS_6TensorEEC2IJRKS2_EEENS0_10in_place_tEDpOT_(%"class.tensorflow::TensorInterface"* %1, %"class.tensorflow::Tensor"* nonnull align 8 dereferenceable(32) %call4)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  call void @_ZNSt10unique_ptrIN10tensorflow7Variant5ValueINS0_6TensorEEESt14default_deleteIS4_EEC2IS6_vEEPS4_(%"class.std::unique_ptr.47"* %agg.result, %"class.tensorflow::TensorInterface"* %1) #11
  ret void

lpad:                                             ; preds = %entry
  %4 = landingpad { i8*, i32 }
          cleanup
  %5 = extractvalue { i8*, i32 } %4, 0
  store i8* %5, i8** %exn.slot, align 8
  %6 = extractvalue { i8*, i32 } %4, 1
  store i32 %6, i32* %ehselector.slot, align 4
  call void @_ZdlPv(i8* %call) #19
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val5 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val5
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 1 dereferenceable(1) %"class.std::ios_base::Init"* @_ZSt7forwardIN10tensorflow7Variant10in_place_tEEOT_RNSt16remove_referenceIS3_E4typeE(%"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1) %__t) #0 comdat {
entry:
  %__t.addr = alloca %"class.std::ios_base::Init"*, align 8
  store %"class.std::ios_base::Init"* %__t, %"class.std::ios_base::Init"** %__t.addr, align 8
  %0 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %__t.addr, align 8
  ret %"class.std::ios_base::Init"* %0
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt10unique_ptrIN10tensorflow7Variant5ValueINS0_6TensorEEESt14default_deleteIS4_EEC2IS6_vEEPS4_(%"class.std::unique_ptr.47"* %this, %"class.tensorflow::TensorInterface"* %__p) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::unique_ptr.47"*, align 8
  %__p.addr = alloca %"class.tensorflow::TensorInterface"*, align 8
  store %"class.std::unique_ptr.47"* %this, %"class.std::unique_ptr.47"** %this.addr, align 8
  store %"class.tensorflow::TensorInterface"* %__p, %"class.tensorflow::TensorInterface"** %__p.addr, align 8
  %this1 = load %"class.std::unique_ptr.47"*, %"class.std::unique_ptr.47"** %this.addr, align 8
  %_M_t = getelementptr inbounds %"class.std::unique_ptr.47", %"class.std::unique_ptr.47"* %this1, i32 0, i32 0
  %0 = load %"class.tensorflow::TensorInterface"*, %"class.tensorflow::TensorInterface"** %__p.addr, align 8
  invoke void @_ZNSt15__uniq_ptr_dataIN10tensorflow7Variant5ValueINS0_6TensorEEESt14default_deleteIS4_ELb1ELb1EECI2St15__uniq_ptr_implIS4_S6_EEPS4_(%"struct.std::__uniq_ptr_data.48"* %_M_t, %"class.tensorflow::TensorInterface"* %0)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  ret void

terminate.lpad:                                   ; preds = %entry
  %1 = landingpad { i8*, i32 }
          catch i8* null
  %2 = extractvalue { i8*, i32 } %1, 0
  call void @__clang_call_terminate(i8* %2) #16
  unreachable
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt15__uniq_ptr_dataIN10tensorflow7Variant5ValueINS0_6TensorEEESt14default_deleteIS4_ELb1ELb1EECI2St15__uniq_ptr_implIS4_S6_EEPS4_(%"struct.std::__uniq_ptr_data.48"* %this, %"class.tensorflow::TensorInterface"* %0) unnamed_addr #6 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::__uniq_ptr_data.48"*, align 8
  %.addr = alloca %"class.tensorflow::TensorInterface"*, align 8
  store %"struct.std::__uniq_ptr_data.48"* %this, %"struct.std::__uniq_ptr_data.48"** %this.addr, align 8
  store %"class.tensorflow::TensorInterface"* %0, %"class.tensorflow::TensorInterface"** %.addr, align 8
  %this1 = load %"struct.std::__uniq_ptr_data.48"*, %"struct.std::__uniq_ptr_data.48"** %this.addr, align 8
  %1 = bitcast %"struct.std::__uniq_ptr_data.48"* %this1 to %"class.std::__uniq_ptr_impl.49"*
  %2 = load %"class.tensorflow::TensorInterface"*, %"class.tensorflow::TensorInterface"** %.addr, align 8
  call void @_ZNSt15__uniq_ptr_implIN10tensorflow7Variant5ValueINS0_6TensorEEESt14default_deleteIS4_EEC2EPS4_(%"class.std::__uniq_ptr_impl.49"* %1, %"class.tensorflow::TensorInterface"* %2)
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt15__uniq_ptr_implIN10tensorflow7Variant5ValueINS0_6TensorEEESt14default_deleteIS4_EEC2EPS4_(%"class.std::__uniq_ptr_impl.49"* %this, %"class.tensorflow::TensorInterface"* %__p) unnamed_addr #6 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::__uniq_ptr_impl.49"*, align 8
  %__p.addr = alloca %"class.tensorflow::TensorInterface"*, align 8
  store %"class.std::__uniq_ptr_impl.49"* %this, %"class.std::__uniq_ptr_impl.49"** %this.addr, align 8
  store %"class.tensorflow::TensorInterface"* %__p, %"class.tensorflow::TensorInterface"** %__p.addr, align 8
  %this1 = load %"class.std::__uniq_ptr_impl.49"*, %"class.std::__uniq_ptr_impl.49"** %this.addr, align 8
  %_M_t = getelementptr inbounds %"class.std::__uniq_ptr_impl.49", %"class.std::__uniq_ptr_impl.49"* %this1, i32 0, i32 0
  call void @_ZNSt5tupleIJPN10tensorflow7Variant5ValueINS0_6TensorEEESt14default_deleteIS4_EEEC2ILb1ELb1EEEv(%"class.std::tuple.50"* %_M_t) #11
  %0 = load %"class.tensorflow::TensorInterface"*, %"class.tensorflow::TensorInterface"** %__p.addr, align 8
  %call = call nonnull align 8 dereferenceable(8) %"class.tensorflow::TensorInterface"** @_ZNSt15__uniq_ptr_implIN10tensorflow7Variant5ValueINS0_6TensorEEESt14default_deleteIS4_EE6_M_ptrEv(%"class.std::__uniq_ptr_impl.49"* %this1)
  store %"class.tensorflow::TensorInterface"* %0, %"class.tensorflow::TensorInterface"** %call, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt5tupleIJPN10tensorflow7Variant5ValueINS0_6TensorEEESt14default_deleteIS4_EEEC2ILb1ELb1EEEv(%"class.std::tuple.50"* %this) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::tuple.50"*, align 8
  store %"class.std::tuple.50"* %this, %"class.std::tuple.50"** %this.addr, align 8
  %this1 = load %"class.std::tuple.50"*, %"class.std::tuple.50"** %this.addr, align 8
  %0 = bitcast %"class.std::tuple.50"* %this1 to %"struct.std::_Tuple_impl.51"*
  invoke void @_ZNSt11_Tuple_implILm0EJPN10tensorflow7Variant5ValueINS0_6TensorEEESt14default_deleteIS4_EEEC2Ev(%"struct.std::_Tuple_impl.51"* %0)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  ret void

terminate.lpad:                                   ; preds = %entry
  %1 = landingpad { i8*, i32 }
          catch i8* null
  %2 = extractvalue { i8*, i32 } %1, 0
  call void @__clang_call_terminate(i8* %2) #16
  unreachable
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt11_Tuple_implILm0EJPN10tensorflow7Variant5ValueINS0_6TensorEEESt14default_deleteIS4_EEEC2Ev(%"struct.std::_Tuple_impl.51"* %this) unnamed_addr #6 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Tuple_impl.51"*, align 8
  store %"struct.std::_Tuple_impl.51"* %this, %"struct.std::_Tuple_impl.51"** %this.addr, align 8
  %this1 = load %"struct.std::_Tuple_impl.51"*, %"struct.std::_Tuple_impl.51"** %this.addr, align 8
  %0 = bitcast %"struct.std::_Tuple_impl.51"* %this1 to %"class.std::ios_base::Init"*
  call void @_ZNSt11_Tuple_implILm1EJSt14default_deleteIN10tensorflow7Variant5ValueINS1_6TensorEEEEEEC2Ev(%"class.std::ios_base::Init"* %0)
  %1 = bitcast %"struct.std::_Tuple_impl.51"* %this1 to %"struct.std::_Head_base.54"*
  call void @_ZNSt10_Head_baseILm0EPN10tensorflow7Variant5ValueINS0_6TensorEEELb0EEC2Ev(%"struct.std::_Head_base.54"* %1)
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt11_Tuple_implILm1EJSt14default_deleteIN10tensorflow7Variant5ValueINS1_6TensorEEEEEEC2Ev(%"class.std::ios_base::Init"* %this) unnamed_addr #6 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::ios_base::Init"*, align 8
  store %"class.std::ios_base::Init"* %this, %"class.std::ios_base::Init"** %this.addr, align 8
  %this1 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %this.addr, align 8
  %0 = bitcast %"class.std::ios_base::Init"* %this1 to %"class.std::ios_base::Init"*
  call void @_ZNSt10_Head_baseILm1ESt14default_deleteIN10tensorflow7Variant5ValueINS1_6TensorEEEELb1EEC2Ev(%"class.std::ios_base::Init"* %0)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt10_Head_baseILm0EPN10tensorflow7Variant5ValueINS0_6TensorEEELb0EEC2Ev(%"struct.std::_Head_base.54"* %this) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Head_base.54"*, align 8
  store %"struct.std::_Head_base.54"* %this, %"struct.std::_Head_base.54"** %this.addr, align 8
  %this1 = load %"struct.std::_Head_base.54"*, %"struct.std::_Head_base.54"** %this.addr, align 8
  %_M_head_impl = getelementptr inbounds %"struct.std::_Head_base.54", %"struct.std::_Head_base.54"* %this1, i32 0, i32 0
  store %"class.tensorflow::TensorInterface"* null, %"class.tensorflow::TensorInterface"** %_M_head_impl, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt10_Head_baseILm1ESt14default_deleteIN10tensorflow7Variant5ValueINS1_6TensorEEEELb1EEC2Ev(%"class.std::ios_base::Init"* %this) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::ios_base::Init"*, align 8
  store %"class.std::ios_base::Init"* %this, %"class.std::ios_base::Init"** %this.addr, align 8
  %this1 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %this.addr, align 8
  %_M_head_impl = bitcast %"class.std::ios_base::Init"* %this1 to %"class.std::ios_base::Init"*
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow9TypeIndex4MakeINS_6TensorEEES0_v(%"class.std::basic_string_view"* noalias sret align 8 %agg.result) #6 comdat align 2 {
entry:
  %result.ptr = alloca i8*, align 8
  %0 = bitcast %"class.std::basic_string_view"* %agg.result to i8*
  store i8* %0, i8** %result.ptr, align 8
  %call = call i8* @_ZNKSt9type_info4nameEv(%"class.std::type_info"* bitcast ({ i8*, i8* }* @_ZTIN10tensorflow6TensorE to %"class.std::type_info"*)) #11
  %call1 = call i64 @_ZN3tsl6Hash64EPKc(i8* %call)
  %call2 = call i8* @_ZNKSt9type_info4nameEv(%"class.std::type_info"* bitcast ({ i8*, i8* }* @_ZTIN10tensorflow6TensorE to %"class.std::type_info"*)) #11
  call void @_ZN10tensorflow9TypeIndexC2EmPKc(%"class.std::basic_string_view"* %agg.result, i64 %call1, i8* %call2)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i8* @_ZNKSt9type_info4nameEv(%"class.std::type_info"* %this) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::type_info"*, align 8
  store %"class.std::type_info"* %this, %"class.std::type_info"** %this.addr, align 8
  %this1 = load %"class.std::type_info"*, %"class.std::type_info"** %this.addr, align 8
  %__name = getelementptr inbounds %"class.std::type_info", %"class.std::type_info"* %this1, i32 0, i32 1
  %0 = load i8*, i8** %__name, align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0
  %1 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 42
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %__name2 = getelementptr inbounds %"class.std::type_info", %"class.std::type_info"* %this1, i32 0, i32 1
  %2 = load i8*, i8** %__name2, align 8
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 1
  br label %cond.end

cond.false:                                       ; preds = %entry
  %__name3 = getelementptr inbounds %"class.std::type_info", %"class.std::type_info"* %this1, i32 0, i32 1
  %3 = load i8*, i8** %__name3, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %add.ptr, %cond.true ], [ %3, %cond.false ]
  ret i8* %cond
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i64 @_ZN3tsl6Hash64EPKc(i8* %data) #6 comdat {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = load i8*, i8** %data.addr, align 8
  %call = call i64 @strlen(i8* %1) #15
  %call1 = call i64 @_ZN3tsl6Hash64EPKcm(i8* %0, i64 %call)
  ret i64 %call1
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow9TypeIndexC2EmPKc(%"class.std::basic_string_view"* %this, i64 %hash, i8* %name) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::basic_string_view"*, align 8
  %hash.addr = alloca i64, align 8
  %name.addr = alloca i8*, align 8
  store %"class.std::basic_string_view"* %this, %"class.std::basic_string_view"** %this.addr, align 8
  store i64 %hash, i64* %hash.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  %this1 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %this.addr, align 8
  %hash_ = getelementptr inbounds %"class.std::basic_string_view", %"class.std::basic_string_view"* %this1, i32 0, i32 0
  %0 = load i64, i64* %hash.addr, align 8
  store i64 %0, i64* %hash_, align 8
  %name_ = getelementptr inbounds %"class.std::basic_string_view", %"class.std::basic_string_view"* %this1, i32 0, i32 1
  %1 = load i8*, i8** %name.addr, align 8
  store i8* %1, i8** %name_, align 8
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i64 @_ZN3tsl6Hash64EPKcm(i8* %data, i64 %n) #6 comdat {
entry:
  %data.addr = alloca i8*, align 8
  %n.addr = alloca i64, align 8
  store i8* %data, i8** %data.addr, align 8
  store i64 %n, i64* %n.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = load i64, i64* %n.addr, align 8
  %call = call i64 @_ZN3tsl6Hash64EPKcmm(i8* %0, i64 %1, i64 956888297470)
  ret i64 %call
}

declare dso_local i64 @_ZN3tsl6Hash64EPKcmm(i8*, i64, i64) #4

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 1 dereferenceable(1) %"class.std::ios_base::Init"* @_ZNSt15__uniq_ptr_implIN10tensorflow7Variant5ValueINS0_6TensorEEESt14default_deleteIS4_EE10_M_deleterEv(%"class.std::__uniq_ptr_impl.49"* %this) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::__uniq_ptr_impl.49"*, align 8
  store %"class.std::__uniq_ptr_impl.49"* %this, %"class.std::__uniq_ptr_impl.49"** %this.addr, align 8
  %this1 = load %"class.std::__uniq_ptr_impl.49"*, %"class.std::__uniq_ptr_impl.49"** %this.addr, align 8
  %_M_t = getelementptr inbounds %"class.std::__uniq_ptr_impl.49", %"class.std::__uniq_ptr_impl.49"* %this1, i32 0, i32 0
  %call = call nonnull align 1 dereferenceable(1) %"class.std::ios_base::Init"* @_ZSt3getILm1EJPN10tensorflow7Variant5ValueINS0_6TensorEEESt14default_deleteIS4_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSC_(%"class.std::tuple.50"* nonnull align 8 dereferenceable(8) %_M_t) #11
  ret %"class.std::ios_base::Init"* %call
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 1 dereferenceable(1) %"class.std::ios_base::Init"* @_ZSt3getILm1EJPN10tensorflow7Variant5ValueINS0_6TensorEEESt14default_deleteIS4_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSC_(%"class.std::tuple.50"* nonnull align 8 dereferenceable(8) %__t) #0 comdat {
entry:
  %__t.addr = alloca %"class.std::tuple.50"*, align 8
  store %"class.std::tuple.50"* %__t, %"class.std::tuple.50"** %__t.addr, align 8
  %0 = load %"class.std::tuple.50"*, %"class.std::tuple.50"** %__t.addr, align 8
  %1 = bitcast %"class.std::tuple.50"* %0 to %"class.std::ios_base::Init"*
  %call = call nonnull align 1 dereferenceable(1) %"class.std::ios_base::Init"* @_ZSt12__get_helperILm1ESt14default_deleteIN10tensorflow7Variant5ValueINS1_6TensorEEEEJEERT0_RSt11_Tuple_implIXT_EJS7_DpT1_EE(%"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1) %1) #11
  ret %"class.std::ios_base::Init"* %call
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 1 dereferenceable(1) %"class.std::ios_base::Init"* @_ZSt12__get_helperILm1ESt14default_deleteIN10tensorflow7Variant5ValueINS1_6TensorEEEEJEERT0_RSt11_Tuple_implIXT_EJS7_DpT1_EE(%"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1) %__t) #0 comdat {
entry:
  %__t.addr = alloca %"class.std::ios_base::Init"*, align 8
  store %"class.std::ios_base::Init"* %__t, %"class.std::ios_base::Init"** %__t.addr, align 8
  %0 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %__t.addr, align 8
  %call = call nonnull align 1 dereferenceable(1) %"class.std::ios_base::Init"* @_ZNSt11_Tuple_implILm1EJSt14default_deleteIN10tensorflow7Variant5ValueINS1_6TensorEEEEEE7_M_headERS7_(%"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1) %0) #11
  ret %"class.std::ios_base::Init"* %call
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 1 dereferenceable(1) %"class.std::ios_base::Init"* @_ZNSt11_Tuple_implILm1EJSt14default_deleteIN10tensorflow7Variant5ValueINS1_6TensorEEEEEE7_M_headERS7_(%"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1) %__t) #0 comdat align 2 {
entry:
  %__t.addr = alloca %"class.std::ios_base::Init"*, align 8
  store %"class.std::ios_base::Init"* %__t, %"class.std::ios_base::Init"** %__t.addr, align 8
  %0 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %__t.addr, align 8
  %1 = bitcast %"class.std::ios_base::Init"* %0 to %"class.std::ios_base::Init"*
  %call = call nonnull align 1 dereferenceable(1) %"class.std::ios_base::Init"* @_ZNSt10_Head_baseILm1ESt14default_deleteIN10tensorflow7Variant5ValueINS1_6TensorEEEELb1EE7_M_headERS7_(%"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1) %1) #11
  ret %"class.std::ios_base::Init"* %call
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 1 dereferenceable(1) %"class.std::ios_base::Init"* @_ZNSt10_Head_baseILm1ESt14default_deleteIN10tensorflow7Variant5ValueINS1_6TensorEEEELb1EE7_M_headERS7_(%"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1) %__b) #0 comdat align 2 {
entry:
  %__b.addr = alloca %"class.std::ios_base::Init"*, align 8
  store %"class.std::ios_base::Init"* %__b, %"class.std::ios_base::Init"** %__b.addr, align 8
  %0 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %__b.addr, align 8
  %_M_head_impl = bitcast %"class.std::ios_base::Init"* %0 to %"class.std::ios_base::Init"*
  ret %"class.std::ios_base::Init"* %_M_head_impl
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) %"class.tensorflow::TensorInterface"** @_ZSt3getILm0EJPN10tensorflow7Variant5ValueINS0_6TensorEEESt14default_deleteIS4_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSC_(%"class.std::tuple.50"* nonnull align 8 dereferenceable(8) %__t) #0 comdat {
entry:
  %__t.addr = alloca %"class.std::tuple.50"*, align 8
  store %"class.std::tuple.50"* %__t, %"class.std::tuple.50"** %__t.addr, align 8
  %0 = load %"class.std::tuple.50"*, %"class.std::tuple.50"** %__t.addr, align 8
  %1 = bitcast %"class.std::tuple.50"* %0 to %"struct.std::_Tuple_impl.51"*
  %call = call nonnull align 8 dereferenceable(8) %"class.tensorflow::TensorInterface"** @_ZSt12__get_helperILm0EPN10tensorflow7Variant5ValueINS0_6TensorEEEJSt14default_deleteIS4_EEERT0_RSt11_Tuple_implIXT_EJS8_DpT1_EE(%"struct.std::_Tuple_impl.51"* nonnull align 8 dereferenceable(8) %1) #11
  ret %"class.tensorflow::TensorInterface"** %call
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) %"class.tensorflow::TensorInterface"** @_ZSt12__get_helperILm0EPN10tensorflow7Variant5ValueINS0_6TensorEEEJSt14default_deleteIS4_EEERT0_RSt11_Tuple_implIXT_EJS8_DpT1_EE(%"struct.std::_Tuple_impl.51"* nonnull align 8 dereferenceable(8) %__t) #0 comdat {
entry:
  %__t.addr = alloca %"struct.std::_Tuple_impl.51"*, align 8
  store %"struct.std::_Tuple_impl.51"* %__t, %"struct.std::_Tuple_impl.51"** %__t.addr, align 8
  %0 = load %"struct.std::_Tuple_impl.51"*, %"struct.std::_Tuple_impl.51"** %__t.addr, align 8
  %call = call nonnull align 8 dereferenceable(8) %"class.tensorflow::TensorInterface"** @_ZNSt11_Tuple_implILm0EJPN10tensorflow7Variant5ValueINS0_6TensorEEESt14default_deleteIS4_EEE7_M_headERS8_(%"struct.std::_Tuple_impl.51"* nonnull align 8 dereferenceable(8) %0) #11
  ret %"class.tensorflow::TensorInterface"** %call
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) %"class.tensorflow::TensorInterface"** @_ZNSt11_Tuple_implILm0EJPN10tensorflow7Variant5ValueINS0_6TensorEEESt14default_deleteIS4_EEE7_M_headERS8_(%"struct.std::_Tuple_impl.51"* nonnull align 8 dereferenceable(8) %__t) #0 comdat align 2 {
entry:
  %__t.addr = alloca %"struct.std::_Tuple_impl.51"*, align 8
  store %"struct.std::_Tuple_impl.51"* %__t, %"struct.std::_Tuple_impl.51"** %__t.addr, align 8
  %0 = load %"struct.std::_Tuple_impl.51"*, %"struct.std::_Tuple_impl.51"** %__t.addr, align 8
  %1 = bitcast %"struct.std::_Tuple_impl.51"* %0 to %"struct.std::_Head_base.54"*
  %call = call nonnull align 8 dereferenceable(8) %"class.tensorflow::TensorInterface"** @_ZNSt10_Head_baseILm0EPN10tensorflow7Variant5ValueINS0_6TensorEEELb0EE7_M_headERS6_(%"struct.std::_Head_base.54"* nonnull align 8 dereferenceable(8) %1) #11
  ret %"class.tensorflow::TensorInterface"** %call
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) %"class.tensorflow::TensorInterface"** @_ZNSt10_Head_baseILm0EPN10tensorflow7Variant5ValueINS0_6TensorEEELb0EE7_M_headERS6_(%"struct.std::_Head_base.54"* nonnull align 8 dereferenceable(8) %__b) #0 comdat align 2 {
entry:
  %__b.addr = alloca %"struct.std::_Head_base.54"*, align 8
  store %"struct.std::_Head_base.54"* %__b, %"struct.std::_Head_base.54"** %__b.addr, align 8
  %0 = load %"struct.std::_Head_base.54"*, %"struct.std::_Head_base.54"** %__b.addr, align 8
  %_M_head_impl = getelementptr inbounds %"struct.std::_Head_base.54", %"struct.std::_Head_base.54"* %0, i32 0, i32 0
  ret %"class.tensorflow::TensorInterface"** %_M_head_impl
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %"class.tensorflow::TensorInterface"* @_ZNSt10unique_ptrIN10tensorflow7Variant5ValueINS0_6TensorEEESt14default_deleteIS4_EE7releaseEv(%"class.std::unique_ptr.47"* %this) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::unique_ptr.47"*, align 8
  store %"class.std::unique_ptr.47"* %this, %"class.std::unique_ptr.47"** %this.addr, align 8
  %this1 = load %"class.std::unique_ptr.47"*, %"class.std::unique_ptr.47"** %this.addr, align 8
  %_M_t = getelementptr inbounds %"class.std::unique_ptr.47", %"class.std::unique_ptr.47"* %this1, i32 0, i32 0
  %0 = bitcast %"struct.std::__uniq_ptr_data.48"* %_M_t to %"class.std::__uniq_ptr_impl.49"*
  %call = call %"class.tensorflow::TensorInterface"* @_ZNSt15__uniq_ptr_implIN10tensorflow7Variant5ValueINS0_6TensorEEESt14default_deleteIS4_EE7releaseEv(%"class.std::__uniq_ptr_impl.49"* %0) #11
  ret %"class.tensorflow::TensorInterface"* %call
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 1 dereferenceable(1) %"class.std::ios_base::Init"* @_ZSt7forwardISt14default_deleteIN10tensorflow7Variant5ValueINS1_6TensorEEEEEOT_RNSt16remove_referenceIS7_E4typeE(%"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1) %__t) #0 comdat {
entry:
  %__t.addr = alloca %"class.std::ios_base::Init"*, align 8
  store %"class.std::ios_base::Init"* %__t, %"class.std::ios_base::Init"** %__t.addr, align 8
  %0 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %__t.addr, align 8
  ret %"class.std::ios_base::Init"* %0
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt15__uniq_ptr_dataIN10tensorflow7Variant14ValueInterfaceESt14default_deleteIS2_ELb1ELb1EECI2St15__uniq_ptr_implIS2_S4_EIS3_INS1_5ValueINS0_6TensorEEEEEEPS2_OT_(%"struct.std::__uniq_ptr_data"* %this, %"class.tensorflow::AbstractTensorInterface"* %0, %"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1) %1) unnamed_addr #6 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::__uniq_ptr_data"*, align 8
  %.addr = alloca %"class.tensorflow::AbstractTensorInterface"*, align 8
  %.addr1 = alloca %"class.std::ios_base::Init"*, align 8
  store %"struct.std::__uniq_ptr_data"* %this, %"struct.std::__uniq_ptr_data"** %this.addr, align 8
  store %"class.tensorflow::AbstractTensorInterface"* %0, %"class.tensorflow::AbstractTensorInterface"** %.addr, align 8
  store %"class.std::ios_base::Init"* %1, %"class.std::ios_base::Init"** %.addr1, align 8
  %this2 = load %"struct.std::__uniq_ptr_data"*, %"struct.std::__uniq_ptr_data"** %this.addr, align 8
  %2 = bitcast %"struct.std::__uniq_ptr_data"* %this2 to %"class.std::__uniq_ptr_impl"*
  %3 = load %"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"** %.addr, align 8
  %4 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %.addr1, align 8
  call void @_ZNSt15__uniq_ptr_implIN10tensorflow7Variant14ValueInterfaceESt14default_deleteIS2_EEC2IS3_INS1_5ValueINS0_6TensorEEEEEEPS2_OT_(%"class.std::__uniq_ptr_impl"* %2, %"class.tensorflow::AbstractTensorInterface"* %3, %"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1) %4)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt15__uniq_ptr_implIN10tensorflow7Variant14ValueInterfaceESt14default_deleteIS2_EEC2IS3_INS1_5ValueINS0_6TensorEEEEEEPS2_OT_(%"class.std::__uniq_ptr_impl"* %this, %"class.tensorflow::AbstractTensorInterface"* %__p, %"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1) %__d) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::__uniq_ptr_impl"*, align 8
  %__p.addr = alloca %"class.tensorflow::AbstractTensorInterface"*, align 8
  %__d.addr = alloca %"class.std::ios_base::Init"*, align 8
  store %"class.std::__uniq_ptr_impl"* %this, %"class.std::__uniq_ptr_impl"** %this.addr, align 8
  store %"class.tensorflow::AbstractTensorInterface"* %__p, %"class.tensorflow::AbstractTensorInterface"** %__p.addr, align 8
  store %"class.std::ios_base::Init"* %__d, %"class.std::ios_base::Init"** %__d.addr, align 8
  %this1 = load %"class.std::__uniq_ptr_impl"*, %"class.std::__uniq_ptr_impl"** %this.addr, align 8
  %_M_t = getelementptr inbounds %"class.std::__uniq_ptr_impl", %"class.std::__uniq_ptr_impl"* %this1, i32 0, i32 0
  %0 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %__d.addr, align 8
  %call = call nonnull align 1 dereferenceable(1) %"class.std::ios_base::Init"* @_ZSt7forwardISt14default_deleteIN10tensorflow7Variant5ValueINS1_6TensorEEEEEOT_RNSt16remove_referenceIS7_E4typeE(%"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1) %0) #11
  call void @_ZNSt5tupleIJPN10tensorflow7Variant14ValueInterfaceESt14default_deleteIS2_EEEC2IRS3_S4_INS1_5ValueINS0_6TensorEEEELb1EEEOT_OT0_(%"class.std::tuple"* %_M_t, %"class.tensorflow::AbstractTensorInterface"** nonnull align 8 dereferenceable(8) %__p.addr, %"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1) %call) #11
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt5tupleIJPN10tensorflow7Variant14ValueInterfaceESt14default_deleteIS2_EEEC2IRS3_S4_INS1_5ValueINS0_6TensorEEEELb1EEEOT_OT0_(%"class.std::tuple"* %this, %"class.tensorflow::AbstractTensorInterface"** nonnull align 8 dereferenceable(8) %__a1, %"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1) %__a2) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::tuple"*, align 8
  %__a1.addr = alloca %"class.tensorflow::AbstractTensorInterface"**, align 8
  %__a2.addr = alloca %"class.std::ios_base::Init"*, align 8
  store %"class.std::tuple"* %this, %"class.std::tuple"** %this.addr, align 8
  store %"class.tensorflow::AbstractTensorInterface"** %__a1, %"class.tensorflow::AbstractTensorInterface"*** %__a1.addr, align 8
  store %"class.std::ios_base::Init"* %__a2, %"class.std::ios_base::Init"** %__a2.addr, align 8
  %this1 = load %"class.std::tuple"*, %"class.std::tuple"** %this.addr, align 8
  %0 = bitcast %"class.std::tuple"* %this1 to %"struct.std::_Tuple_impl"*
  %1 = load %"class.tensorflow::AbstractTensorInterface"**, %"class.tensorflow::AbstractTensorInterface"*** %__a1.addr, align 8
  %call = call nonnull align 8 dereferenceable(8) %"class.tensorflow::AbstractTensorInterface"** @_ZSt7forwardIRPN10tensorflow7Variant14ValueInterfaceEEOT_RNSt16remove_referenceIS5_E4typeE(%"class.tensorflow::AbstractTensorInterface"** nonnull align 8 dereferenceable(8) %1) #11
  %2 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %__a2.addr, align 8
  %call2 = call nonnull align 1 dereferenceable(1) %"class.std::ios_base::Init"* @_ZSt7forwardISt14default_deleteIN10tensorflow7Variant5ValueINS1_6TensorEEEEEOT_RNSt16remove_referenceIS7_E4typeE(%"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1) %2) #11
  invoke void @_ZNSt11_Tuple_implILm0EJPN10tensorflow7Variant14ValueInterfaceESt14default_deleteIS2_EEEC2IRS3_JS4_INS1_5ValueINS0_6TensorEEEEEvEEOT_DpOT0_(%"struct.std::_Tuple_impl"* %0, %"class.tensorflow::AbstractTensorInterface"** nonnull align 8 dereferenceable(8) %call, %"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1) %call2)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  ret void

terminate.lpad:                                   ; preds = %entry
  %3 = landingpad { i8*, i32 }
          catch i8* null
  %4 = extractvalue { i8*, i32 } %3, 0
  call void @__clang_call_terminate(i8* %4) #16
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) %"class.tensorflow::AbstractTensorInterface"** @_ZSt7forwardIRPN10tensorflow7Variant14ValueInterfaceEEOT_RNSt16remove_referenceIS5_E4typeE(%"class.tensorflow::AbstractTensorInterface"** nonnull align 8 dereferenceable(8) %__t) #0 comdat {
entry:
  %__t.addr = alloca %"class.tensorflow::AbstractTensorInterface"**, align 8
  store %"class.tensorflow::AbstractTensorInterface"** %__t, %"class.tensorflow::AbstractTensorInterface"*** %__t.addr, align 8
  %0 = load %"class.tensorflow::AbstractTensorInterface"**, %"class.tensorflow::AbstractTensorInterface"*** %__t.addr, align 8
  ret %"class.tensorflow::AbstractTensorInterface"** %0
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt11_Tuple_implILm0EJPN10tensorflow7Variant14ValueInterfaceESt14default_deleteIS2_EEEC2IRS3_JS4_INS1_5ValueINS0_6TensorEEEEEvEEOT_DpOT0_(%"struct.std::_Tuple_impl"* %this, %"class.tensorflow::AbstractTensorInterface"** nonnull align 8 dereferenceable(8) %__head, %"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1) %__tail) unnamed_addr #6 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Tuple_impl"*, align 8
  %__head.addr = alloca %"class.tensorflow::AbstractTensorInterface"**, align 8
  %__tail.addr = alloca %"class.std::ios_base::Init"*, align 8
  store %"struct.std::_Tuple_impl"* %this, %"struct.std::_Tuple_impl"** %this.addr, align 8
  store %"class.tensorflow::AbstractTensorInterface"** %__head, %"class.tensorflow::AbstractTensorInterface"*** %__head.addr, align 8
  store %"class.std::ios_base::Init"* %__tail, %"class.std::ios_base::Init"** %__tail.addr, align 8
  %this1 = load %"struct.std::_Tuple_impl"*, %"struct.std::_Tuple_impl"** %this.addr, align 8
  %0 = bitcast %"struct.std::_Tuple_impl"* %this1 to %"class.std::ios_base::Init"*
  %1 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %__tail.addr, align 8
  %call = call nonnull align 1 dereferenceable(1) %"class.std::ios_base::Init"* @_ZSt7forwardISt14default_deleteIN10tensorflow7Variant5ValueINS1_6TensorEEEEEOT_RNSt16remove_referenceIS7_E4typeE(%"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1) %1) #11
  call void @_ZNSt11_Tuple_implILm1EJSt14default_deleteIN10tensorflow7Variant14ValueInterfaceEEEEC2IS0_INS2_5ValueINS1_6TensorEEEEEEOT_(%"class.std::ios_base::Init"* %0, %"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1) %call)
  %2 = bitcast %"struct.std::_Tuple_impl"* %this1 to %struct.TF_Tensor*
  %3 = load %"class.tensorflow::AbstractTensorInterface"**, %"class.tensorflow::AbstractTensorInterface"*** %__head.addr, align 8
  %call2 = call nonnull align 8 dereferenceable(8) %"class.tensorflow::AbstractTensorInterface"** @_ZSt7forwardIRPN10tensorflow7Variant14ValueInterfaceEEOT_RNSt16remove_referenceIS5_E4typeE(%"class.tensorflow::AbstractTensorInterface"** nonnull align 8 dereferenceable(8) %3) #11
  call void @_ZNSt10_Head_baseILm0EPN10tensorflow7Variant14ValueInterfaceELb0EEC2IRS3_EEOT_(%struct.TF_Tensor* %2, %"class.tensorflow::AbstractTensorInterface"** nonnull align 8 dereferenceable(8) %call2)
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt11_Tuple_implILm1EJSt14default_deleteIN10tensorflow7Variant14ValueInterfaceEEEEC2IS0_INS2_5ValueINS1_6TensorEEEEEEOT_(%"class.std::ios_base::Init"* %this, %"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1) %__head) unnamed_addr #6 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::ios_base::Init"*, align 8
  %__head.addr = alloca %"class.std::ios_base::Init"*, align 8
  store %"class.std::ios_base::Init"* %this, %"class.std::ios_base::Init"** %this.addr, align 8
  store %"class.std::ios_base::Init"* %__head, %"class.std::ios_base::Init"** %__head.addr, align 8
  %this1 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %this.addr, align 8
  %0 = bitcast %"class.std::ios_base::Init"* %this1 to %"class.std::ios_base::Init"*
  %1 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %__head.addr, align 8
  %call = call nonnull align 1 dereferenceable(1) %"class.std::ios_base::Init"* @_ZSt7forwardISt14default_deleteIN10tensorflow7Variant5ValueINS1_6TensorEEEEEOT_RNSt16remove_referenceIS7_E4typeE(%"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1) %1) #11
  call void @_ZNSt10_Head_baseILm1ESt14default_deleteIN10tensorflow7Variant14ValueInterfaceEELb1EEC2IS0_INS2_5ValueINS1_6TensorEEEEEEOT_(%"class.std::ios_base::Init"* %0, %"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1) %call)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt10_Head_baseILm0EPN10tensorflow7Variant14ValueInterfaceELb0EEC2IRS3_EEOT_(%struct.TF_Tensor* %this, %"class.tensorflow::AbstractTensorInterface"** nonnull align 8 dereferenceable(8) %__h) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %struct.TF_Tensor*, align 8
  %__h.addr = alloca %"class.tensorflow::AbstractTensorInterface"**, align 8
  store %struct.TF_Tensor* %this, %struct.TF_Tensor** %this.addr, align 8
  store %"class.tensorflow::AbstractTensorInterface"** %__h, %"class.tensorflow::AbstractTensorInterface"*** %__h.addr, align 8
  %this1 = load %struct.TF_Tensor*, %struct.TF_Tensor** %this.addr, align 8
  %_M_head_impl = getelementptr inbounds %struct.TF_Tensor, %struct.TF_Tensor* %this1, i32 0, i32 0
  %0 = load %"class.tensorflow::AbstractTensorInterface"**, %"class.tensorflow::AbstractTensorInterface"*** %__h.addr, align 8
  %call = call nonnull align 8 dereferenceable(8) %"class.tensorflow::AbstractTensorInterface"** @_ZSt7forwardIRPN10tensorflow7Variant14ValueInterfaceEEOT_RNSt16remove_referenceIS5_E4typeE(%"class.tensorflow::AbstractTensorInterface"** nonnull align 8 dereferenceable(8) %0) #11
  %1 = load %"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"** %call, align 8
  store %"class.tensorflow::AbstractTensorInterface"* %1, %"class.tensorflow::AbstractTensorInterface"** %_M_head_impl, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt10_Head_baseILm1ESt14default_deleteIN10tensorflow7Variant14ValueInterfaceEELb1EEC2IS0_INS2_5ValueINS1_6TensorEEEEEEOT_(%"class.std::ios_base::Init"* %this, %"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1) %__h) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::ios_base::Init"*, align 8
  %__h.addr = alloca %"class.std::ios_base::Init"*, align 8
  store %"class.std::ios_base::Init"* %this, %"class.std::ios_base::Init"** %this.addr, align 8
  store %"class.std::ios_base::Init"* %__h, %"class.std::ios_base::Init"** %__h.addr, align 8
  %this1 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %this.addr, align 8
  %_M_head_impl = bitcast %"class.std::ios_base::Init"* %this1 to %"class.std::ios_base::Init"*
  %0 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %__h.addr, align 8
  %call = call nonnull align 1 dereferenceable(1) %"class.std::ios_base::Init"* @_ZSt7forwardISt14default_deleteIN10tensorflow7Variant5ValueINS1_6TensorEEEEEOT_RNSt16remove_referenceIS7_E4typeE(%"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1) %0) #11
  call void @_ZNSt14default_deleteIN10tensorflow7Variant14ValueInterfaceEEC2INS1_5ValueINS0_6TensorEEEvEERKS_IT_E(%"class.std::ios_base::Init"* %_M_head_impl, %"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1) %call) #11
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt14default_deleteIN10tensorflow7Variant14ValueInterfaceEEC2INS1_5ValueINS0_6TensorEEEvEERKS_IT_E(%"class.std::ios_base::Init"* %this, %"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1) %0) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::ios_base::Init"*, align 8
  %.addr = alloca %"class.std::ios_base::Init"*, align 8
  store %"class.std::ios_base::Init"* %this, %"class.std::ios_base::Init"** %this.addr, align 8
  store %"class.std::ios_base::Init"* %0, %"class.std::ios_base::Init"** %.addr, align 8
  %this1 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %this.addr, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %"class.tensorflow::TensorInterface"* @_ZNSt15__uniq_ptr_implIN10tensorflow7Variant5ValueINS0_6TensorEEESt14default_deleteIS4_EE7releaseEv(%"class.std::__uniq_ptr_impl.49"* %this) #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::__uniq_ptr_impl.49"*, align 8
  %__p = alloca %"class.tensorflow::TensorInterface"*, align 8
  store %"class.std::__uniq_ptr_impl.49"* %this, %"class.std::__uniq_ptr_impl.49"** %this.addr, align 8
  %this1 = load %"class.std::__uniq_ptr_impl.49"*, %"class.std::__uniq_ptr_impl.49"** %this.addr, align 8
  %call = invoke nonnull align 8 dereferenceable(8) %"class.tensorflow::TensorInterface"** @_ZNSt15__uniq_ptr_implIN10tensorflow7Variant5ValueINS0_6TensorEEESt14default_deleteIS4_EE6_M_ptrEv(%"class.std::__uniq_ptr_impl.49"* %this1)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  %0 = load %"class.tensorflow::TensorInterface"*, %"class.tensorflow::TensorInterface"** %call, align 8
  store %"class.tensorflow::TensorInterface"* %0, %"class.tensorflow::TensorInterface"** %__p, align 8
  %call3 = invoke nonnull align 8 dereferenceable(8) %"class.tensorflow::TensorInterface"** @_ZNSt15__uniq_ptr_implIN10tensorflow7Variant5ValueINS0_6TensorEEESt14default_deleteIS4_EE6_M_ptrEv(%"class.std::__uniq_ptr_impl.49"* %this1)
          to label %invoke.cont2 unwind label %terminate.lpad

invoke.cont2:                                     ; preds = %invoke.cont
  store %"class.tensorflow::TensorInterface"* null, %"class.tensorflow::TensorInterface"** %call3, align 8
  %1 = load %"class.tensorflow::TensorInterface"*, %"class.tensorflow::TensorInterface"** %__p, align 8
  ret %"class.tensorflow::TensorInterface"* %1

terminate.lpad:                                   ; preds = %invoke.cont, %entry
  %2 = landingpad { i8*, i32 }
          catch i8* null
  %3 = extractvalue { i8*, i32 } %2, 0
  call void @__clang_call_terminate(i8* %3) #16
  unreachable
}

; Function Attrs: noinline optnone uwtable
define dso_local void @_ZN10tensorflow6TensorC2Ev(%"class.tensorflow::Tensor"* %this) unnamed_addr #6 align 2 {
entry:
  %this.addr = alloca %"class.tensorflow::Tensor"*, align 8
  store %"class.tensorflow::Tensor"* %this, %"class.tensorflow::Tensor"** %this.addr, align 8
  %this1 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %this.addr, align 8
  call void @_ZN10tensorflow6TensorC2ENS_8DataTypeE(%"class.tensorflow::Tensor"* %this1, i32 1)
  ret void
}

; Function Attrs: noinline optnone uwtable
define dso_local void @_ZN10tensorflow6TensorC2ENS_8DataTypeE(%"class.tensorflow::Tensor"* %this, i32 %type) unnamed_addr #6 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.tensorflow::Tensor"*, align 8
  %type.addr = alloca i32, align 4
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  store %"class.tensorflow::Tensor"* %this, %"class.tensorflow::Tensor"** %this.addr, align 8
  store i32 %type, i32* %type.addr, align 4
  %this1 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %this.addr, align 8
  %shape_ = getelementptr inbounds %"class.tensorflow::Tensor", %"class.tensorflow::Tensor"* %this1, i32 0, i32 0
  %0 = load i32, i32* %type.addr, align 4
  call void @_ZN10tensorflow11TensorShapeCI2NS_15TensorShapeBaseIS0_EEENS_8DataTypeE(%"class.tensorflow::TensorShape"* %shape_, i32 %0)
  %buf_ = getelementptr inbounds %"class.tensorflow::Tensor", %"class.tensorflow::Tensor"* %this1, i32 0, i32 1
  store %"class.tensorflow::TensorBuffer"* null, %"class.tensorflow::TensorBuffer"** %buf_, align 8
  %1 = load i32, i32* %type.addr, align 4
  invoke void @_ZN10tensorflow6Tensor9set_dtypeENS_8DataTypeE(%"class.tensorflow::Tensor"* %this1, i32 %1)
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
  call void @_ZN10tensorflow11TensorShapeD2Ev(%"class.tensorflow::TensorShape"* %shape_) #11
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val2 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val2
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow11TensorShapeCI2NS_15TensorShapeBaseIS0_EEENS_8DataTypeE(%"class.tensorflow::TensorShape"* %this, i32 %0) unnamed_addr #6 comdat align 2 {
entry:
  %this.addr = alloca %"class.tensorflow::TensorShape"*, align 8
  %.addr = alloca i32, align 4
  store %"class.tensorflow::TensorShape"* %this, %"class.tensorflow::TensorShape"** %this.addr, align 8
  store i32 %0, i32* %.addr, align 4
  %this1 = load %"class.tensorflow::TensorShape"*, %"class.tensorflow::TensorShape"** %this.addr, align 8
  %1 = bitcast %"class.tensorflow::TensorShape"* %this1 to %"class.tensorflow::TensorShapeBase"*
  %2 = load i32, i32* %.addr, align 4
  call void @_ZN10tensorflow15TensorShapeBaseINS_11TensorShapeEEC2ENS_8DataTypeE(%"class.tensorflow::TensorShapeBase"* %1, i32 %2)
  ret void
}

declare dso_local void @_ZN10tensorflow15TensorShapeBaseINS_11TensorShapeEEC2ENS_8DataTypeE(%"class.tensorflow::TensorShapeBase"*, i32) unnamed_addr #4

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow9TypeIndex4MakeINS_22VariantTensorDataProtoEEES0_v(%"class.std::basic_string_view"* noalias sret align 8 %agg.result) #6 comdat align 2 {
entry:
  %result.ptr = alloca i8*, align 8
  %0 = bitcast %"class.std::basic_string_view"* %agg.result to i8*
  store i8* %0, i8** %result.ptr, align 8
  %call = call i8* @_ZNKSt9type_info4nameEv(%"class.std::type_info"* bitcast (i8** @_ZTIN10tensorflow22VariantTensorDataProtoE to %"class.std::type_info"*)) #11
  %call1 = call i64 @_ZN3tsl6Hash64EPKc(i8* %call)
  %call2 = call i8* @_ZNKSt9type_info4nameEv(%"class.std::type_info"* bitcast (i8** @_ZTIN10tensorflow22VariantTensorDataProtoE to %"class.std::type_info"*)) #11
  call void @_ZN10tensorflow9TypeIndexC2EmPKc(%"class.std::basic_string_view"* %agg.result, i64 %call1, i8* %call2)
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNK10tensorflow7Variant6TypeIdEv(%"class.std::basic_string_view"* noalias sret align 8 %agg.result, %"class.tensorflow::Variant"* %this) #6 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %result.ptr = alloca i8*, align 8
  %this.addr = alloca %"class.tensorflow::Variant"*, align 8
  %VoidTypeIndex = alloca %"class.std::basic_string_view", align 8
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %0 = bitcast %"class.std::basic_string_view"* %agg.result to i8*
  store i8* %0, i8** %result.ptr, align 8
  store %"class.tensorflow::Variant"* %this, %"class.tensorflow::Variant"** %this.addr, align 8
  %this1 = load %"class.tensorflow::Variant"*, %"class.tensorflow::Variant"** %this.addr, align 8
  call void @_ZN10tensorflow9TypeIndex4MakeIvEES0_v(%"class.std::basic_string_view"* sret align 8 %VoidTypeIndex)
  %call = invoke zeroext i1 @_ZNK10tensorflow7Variant8is_emptyEv(%"class.tensorflow::Variant"* %this1)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %invoke.cont
  invoke void @_ZN10tensorflow9TypeIndexC2ERKS0_(%"class.std::basic_string_view"* %agg.result, %"class.std::basic_string_view"* nonnull align 8 dereferenceable(16) %VoidTypeIndex)
          to label %invoke.cont2 unwind label %lpad

invoke.cont2:                                     ; preds = %if.then
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

lpad:                                             ; preds = %invoke.cont3, %if.end, %if.then, %entry
  %1 = landingpad { i8*, i32 }
          cleanup
  %2 = extractvalue { i8*, i32 } %1, 0
  store i8* %2, i8** %exn.slot, align 8
  %3 = extractvalue { i8*, i32 } %1, 1
  store i32 %3, i32* %ehselector.slot, align 4
  call void @_ZN10tensorflow9TypeIndexD2Ev(%"class.std::basic_string_view"* %VoidTypeIndex) #11
  br label %eh.resume

if.end:                                           ; preds = %invoke.cont
  %call4 = invoke %"class.tensorflow::AbstractTensorInterface"* @_ZNK10tensorflow7Variant8GetValueEv(%"class.tensorflow::Variant"* %this1)
          to label %invoke.cont3 unwind label %lpad

invoke.cont3:                                     ; preds = %if.end
  %4 = bitcast %"class.tensorflow::AbstractTensorInterface"* %call4 to void (%"class.std::basic_string_view"*, %"class.tensorflow::AbstractTensorInterface"*)***
  %vtable = load void (%"class.std::basic_string_view"*, %"class.tensorflow::AbstractTensorInterface"*)**, void (%"class.std::basic_string_view"*, %"class.tensorflow::AbstractTensorInterface"*)*** %4, align 8
  %vfn = getelementptr inbounds void (%"class.std::basic_string_view"*, %"class.tensorflow::AbstractTensorInterface"*)*, void (%"class.std::basic_string_view"*, %"class.tensorflow::AbstractTensorInterface"*)** %vtable, i64 2
  %5 = load void (%"class.std::basic_string_view"*, %"class.tensorflow::AbstractTensorInterface"*)*, void (%"class.std::basic_string_view"*, %"class.tensorflow::AbstractTensorInterface"*)** %vfn, align 8
  invoke void %5(%"class.std::basic_string_view"* sret align 8 %agg.result, %"class.tensorflow::AbstractTensorInterface"* %call4)
          to label %invoke.cont5 unwind label %lpad

invoke.cont5:                                     ; preds = %invoke.cont3
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %invoke.cont5, %invoke.cont2
  call void @_ZN10tensorflow9TypeIndexD2Ev(%"class.std::basic_string_view"* %VoidTypeIndex) #11
  ret void

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val6 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val6
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local zeroext i1 @_ZNK10tensorflow9TypeIndexneERKS0_(%"class.std::basic_string_view"* %this, %"class.std::basic_string_view"* nonnull align 8 dereferenceable(16) %rhs) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::basic_string_view"*, align 8
  %rhs.addr = alloca %"class.std::basic_string_view"*, align 8
  store %"class.std::basic_string_view"* %this, %"class.std::basic_string_view"** %this.addr, align 8
  store %"class.std::basic_string_view"* %rhs, %"class.std::basic_string_view"** %rhs.addr, align 8
  %this1 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %this.addr, align 8
  %hash_ = getelementptr inbounds %"class.std::basic_string_view", %"class.std::basic_string_view"* %this1, i32 0, i32 0
  %0 = load i64, i64* %hash_, align 8
  %1 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %rhs.addr, align 8
  %hash_2 = getelementptr inbounds %"class.std::basic_string_view", %"class.std::basic_string_view"* %1, i32 0, i32 0
  %2 = load i64, i64* %hash_2, align 8
  %cmp = icmp ne i64 %0, %2
  ret i1 %cmp
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %"class.tensorflow::AbstractTensorInterface"* @_ZN10tensorflow7Variant8GetValueEv(%"class.tensorflow::Variant"* %this) #6 comdat align 2 {
entry:
  %retval = alloca %"class.tensorflow::AbstractTensorInterface"*, align 8
  %this.addr = alloca %"class.tensorflow::Variant"*, align 8
  store %"class.tensorflow::Variant"* %this, %"class.tensorflow::Variant"** %this.addr, align 8
  %this1 = load %"class.tensorflow::Variant"*, %"class.tensorflow::Variant"** %this.addr, align 8
  %call = call zeroext i1 @_ZNK10tensorflow7Variant13IsInlineValueEv(%"class.tensorflow::Variant"* %this1)
  br i1 %call, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %0 = getelementptr inbounds %"class.tensorflow::Variant", %"class.tensorflow::Variant"* %this1, i32 0, i32 0
  %inline_value_ = bitcast %union.anon.20* %0 to %"struct.tensorflow::Variant::InlineValue"*
  %call2 = call %"class.tensorflow::AbstractTensorInterface"* @_ZN10tensorflow7Variant11InlineValue16AsValueInterfaceEv(%"struct.tensorflow::Variant::InlineValue"* %inline_value_)
  store %"class.tensorflow::AbstractTensorInterface"* %call2, %"class.tensorflow::AbstractTensorInterface"** %retval, align 8
  br label %return

if.else:                                          ; preds = %entry
  %1 = getelementptr inbounds %"class.tensorflow::Variant", %"class.tensorflow::Variant"* %this1, i32 0, i32 0
  %heap_value_ = bitcast %union.anon.20* %1 to %"class.std::unique_ptr"*
  %call3 = call %"class.tensorflow::AbstractTensorInterface"* @_ZNKSt10unique_ptrIN10tensorflow7Variant14ValueInterfaceESt14default_deleteIS2_EE3getEv(%"class.std::unique_ptr"* %heap_value_) #11
  store %"class.tensorflow::AbstractTensorInterface"* %call3, %"class.tensorflow::AbstractTensorInterface"** %retval, align 8
  br label %return

return:                                           ; preds = %if.else, %if.then
  %2 = load %"class.tensorflow::AbstractTensorInterface"*, %"class.tensorflow::AbstractTensorInterface"** %retval, align 8
  ret %"class.tensorflow::AbstractTensorInterface"* %2
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %"class.tensorflow::VariantTensorDataProto"* @_ZSt9addressofIN10tensorflow22VariantTensorDataProtoEEPT_RS2_(%"class.tensorflow::VariantTensorDataProto"* nonnull align 8 dereferenceable(64) %__r) #0 comdat {
entry:
  %__r.addr = alloca %"class.tensorflow::VariantTensorDataProto"*, align 8
  store %"class.tensorflow::VariantTensorDataProto"* %__r, %"class.tensorflow::VariantTensorDataProto"** %__r.addr, align 8
  %0 = load %"class.tensorflow::VariantTensorDataProto"*, %"class.tensorflow::VariantTensorDataProto"** %__r.addr, align 8
  %call = call %"class.tensorflow::VariantTensorDataProto"* @_ZSt11__addressofIN10tensorflow22VariantTensorDataProtoEEPT_RS2_(%"class.tensorflow::VariantTensorDataProto"* nonnull align 8 dereferenceable(64) %0) #11
  ret %"class.tensorflow::VariantTensorDataProto"* %call
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %"class.tensorflow::VariantTensorDataProto"* @_ZSt11__addressofIN10tensorflow22VariantTensorDataProtoEEPT_RS2_(%"class.tensorflow::VariantTensorDataProto"* nonnull align 8 dereferenceable(64) %__r) #0 comdat {
entry:
  %__r.addr = alloca %"class.tensorflow::VariantTensorDataProto"*, align 8
  store %"class.tensorflow::VariantTensorDataProto"* %__r, %"class.tensorflow::VariantTensorDataProto"** %__r.addr, align 8
  %0 = load %"class.tensorflow::VariantTensorDataProto"*, %"class.tensorflow::VariantTensorDataProto"** %__r.addr, align 8
  ret %"class.tensorflow::VariantTensorDataProto"* %0
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow9TypeIndex4MakeIvEES0_v(%"class.std::basic_string_view"* noalias sret align 8 %agg.result) #6 comdat align 2 {
entry:
  %result.ptr = alloca i8*, align 8
  %0 = bitcast %"class.std::basic_string_view"* %agg.result to i8*
  store i8* %0, i8** %result.ptr, align 8
  %call = call i8* @_ZNKSt9type_info4nameEv(%"class.std::type_info"* bitcast (i8** @_ZTIv to %"class.std::type_info"*)) #11
  %call1 = call i64 @_ZN3tsl6Hash64EPKc(i8* %call)
  %call2 = call i8* @_ZNKSt9type_info4nameEv(%"class.std::type_info"* bitcast (i8** @_ZTIv to %"class.std::type_info"*)) #11
  call void @_ZN10tensorflow9TypeIndexC2EmPKc(%"class.std::basic_string_view"* %agg.result, i64 %call1, i8* %call2)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN10tensorflow9TypeIndexC2ERKS0_(%"class.std::basic_string_view"* %this, %"class.std::basic_string_view"* nonnull align 8 dereferenceable(16) %src) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::basic_string_view"*, align 8
  %src.addr = alloca %"class.std::basic_string_view"*, align 8
  store %"class.std::basic_string_view"* %this, %"class.std::basic_string_view"** %this.addr, align 8
  store %"class.std::basic_string_view"* %src, %"class.std::basic_string_view"** %src.addr, align 8
  %this1 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %this.addr, align 8
  %hash_ = getelementptr inbounds %"class.std::basic_string_view", %"class.std::basic_string_view"* %this1, i32 0, i32 0
  %0 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %src.addr, align 8
  %hash_2 = getelementptr inbounds %"class.std::basic_string_view", %"class.std::basic_string_view"* %0, i32 0, i32 0
  %1 = load i64, i64* %hash_2, align 8
  store i64 %1, i64* %hash_, align 8
  %name_ = getelementptr inbounds %"class.std::basic_string_view", %"class.std::basic_string_view"* %this1, i32 0, i32 1
  %2 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %src.addr, align 8
  %name_3 = getelementptr inbounds %"class.std::basic_string_view", %"class.std::basic_string_view"* %2, i32 0, i32 1
  %3 = load i8*, i8** %name_3, align 8
  store i8* %3, i8** %name_, align 8
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %"class.std::__cxx11::basic_string"* @_ZN3tsl8internal17MakeCheckOpStringIPN10tensorflow7VariantEDnEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc(%"class.tensorflow::Variant"** nonnull align 8 dereferenceable(8) %v1, i8** nonnull align 8 dereferenceable(8) %v2, i8* %exprtext) #6 comdat personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %v1.addr = alloca %"class.tensorflow::Variant"**, align 8
  %v2.addr = alloca i8**, align 8
  %exprtext.addr = alloca i8*, align 8
  %comb = alloca %"class.tsl::internal::CheckOpMessageBuilder", align 8
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  store %"class.tensorflow::Variant"** %v1, %"class.tensorflow::Variant"*** %v1.addr, align 8
  store i8** %v2, i8*** %v2.addr, align 8
  store i8* %exprtext, i8** %exprtext.addr, align 8
  %0 = load i8*, i8** %exprtext.addr, align 8
  call void @_ZN3tsl8internal21CheckOpMessageBuilderC1EPKc(%"class.tsl::internal::CheckOpMessageBuilder"* %comb, i8* %0)
  %call = invoke %"class.std::basic_ostream"* @_ZN3tsl8internal21CheckOpMessageBuilder7ForVar1Ev(%"class.tsl::internal::CheckOpMessageBuilder"* %comb)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %1 = load %"class.tensorflow::Variant"**, %"class.tensorflow::Variant"*** %v1.addr, align 8
  invoke void @_ZN3tsl8internal22MakeCheckOpValueStringIPN10tensorflow7VariantEEEvPSoRKT_(%"class.std::basic_ostream"* %call, %"class.tensorflow::Variant"** nonnull align 8 dereferenceable(8) %1)
          to label %invoke.cont1 unwind label %lpad

invoke.cont1:                                     ; preds = %invoke.cont
  %call3 = invoke %"class.std::basic_ostream"* @_ZN3tsl8internal21CheckOpMessageBuilder7ForVar2Ev(%"class.tsl::internal::CheckOpMessageBuilder"* %comb)
          to label %invoke.cont2 unwind label %lpad

invoke.cont2:                                     ; preds = %invoke.cont1
  %2 = load i8**, i8*** %v2.addr, align 8
  invoke void @_ZN3tsl8internal22MakeCheckOpValueStringIDnEEvPSoRKT_(%"class.std::basic_ostream"* %call3, i8** nonnull align 8 dereferenceable(8) %2)
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
define linkonce_odr dso_local void @_ZN3tsl8internal22MakeCheckOpValueStringIPN10tensorflow7VariantEEEvPSoRKT_(%"class.std::basic_ostream"* %os, %"class.tensorflow::Variant"** nonnull align 8 dereferenceable(8) %v) #6 comdat {
entry:
  %os.addr = alloca %"class.std::basic_ostream"*, align 8
  %v.addr = alloca %"class.tensorflow::Variant"**, align 8
  store %"class.std::basic_ostream"* %os, %"class.std::basic_ostream"** %os.addr, align 8
  store %"class.tensorflow::Variant"** %v, %"class.tensorflow::Variant"*** %v.addr, align 8
  %0 = load %"class.std::basic_ostream"*, %"class.std::basic_ostream"** %os.addr, align 8
  %1 = load %"class.tensorflow::Variant"**, %"class.tensorflow::Variant"*** %v.addr, align 8
  %2 = load %"class.tensorflow::Variant"*, %"class.tensorflow::Variant"** %1, align 8
  %3 = bitcast %"class.tensorflow::Variant"* %2 to i8*
  %call = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEPKv(%"class.std::basic_ostream"* %0, i8* %3)
  ret void
}

declare dso_local void @_ZN3tsl8internal22MakeCheckOpValueStringIDnEEvPSoRKT_(%"class.std::basic_ostream"*, i8** nonnull align 8 dereferenceable(8)) #4

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEPKv(%"class.std::basic_ostream"*, i8*) #4

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt14_Function_base13_Base_managerIZN10tensorflow35variant_op_registry_fn_registration30UnaryVariantDecodeRegistrationINS1_6TensorEEC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlPNS1_7VariantEE_E9_M_createISG_EEvRSt9_Any_dataOT_St17integral_constantIbLb0EE(%"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %__dest, %class.anon* nonnull align 8 dereferenceable(32) %__f) #6 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %0 = alloca %"class.std::ios_base::Init", align 1
  %__dest.addr = alloca %"union.std::_Any_data"*, align 8
  %__f.addr = alloca %class.anon*, align 8
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  store %"union.std::_Any_data"* %__dest, %"union.std::_Any_data"** %__dest.addr, align 8
  store %class.anon* %__f, %class.anon** %__f.addr, align 8
  %call = call noalias nonnull i8* @_Znwm(i64 32) #21
  %1 = bitcast i8* %call to %class.anon*
  %2 = load %class.anon*, %class.anon** %__f.addr, align 8
  %call1 = call nonnull align 8 dereferenceable(32) %class.anon* @_ZSt7forwardIZN10tensorflow35variant_op_registry_fn_registration30UnaryVariantDecodeRegistrationINS0_6TensorEEC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlPNS0_7VariantEE_EOT_RNSt16remove_referenceISG_E4typeE(%class.anon* nonnull align 8 dereferenceable(32) %2) #11
  invoke void @_ZZN10tensorflow35variant_op_registry_fn_registration30UnaryVariantDecodeRegistrationINS_6TensorEEC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENUlPNS_7VariantEE_C2EOSE_(%class.anon* %1, %class.anon* nonnull align 8 dereferenceable(32) %call1)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %3 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %__dest.addr, align 8
  %call2 = call nonnull align 8 dereferenceable(8) %class.anon** @_ZNSt9_Any_data9_M_accessIPZN10tensorflow35variant_op_registry_fn_registration30UnaryVariantDecodeRegistrationINS1_6TensorEEC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlPNS1_7VariantEE_EERT_v(%"union.std::_Any_data"* %3)
  store %class.anon* %1, %class.anon** %call2, align 8
  ret void

lpad:                                             ; preds = %entry
  %4 = landingpad { i8*, i32 }
          cleanup
  %5 = extractvalue { i8*, i32 } %4, 0
  store i8* %5, i8** %exn.slot, align 8
  %6 = extractvalue { i8*, i32 } %4, 1
  store i32 %6, i32* %ehselector.slot, align 4
  call void @_ZdlPv(i8* %call) #19
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val3 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val3
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZZN10tensorflow35variant_op_registry_fn_registration30UnaryVariantDecodeRegistrationINS_6TensorEEC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENUlPNS_7VariantEE_C2EOSE_(%class.anon* %this, %class.anon* nonnull align 8 dereferenceable(32) %0) unnamed_addr #6 comdat align 2 {
entry:
  %this.addr = alloca %class.anon*, align 8
  %.addr = alloca %class.anon*, align 8
  store %class.anon* %this, %class.anon** %this.addr, align 8
  store %class.anon* %0, %class.anon** %.addr, align 8
  %this1 = load %class.anon*, %class.anon** %this.addr, align 8
  %1 = getelementptr inbounds %class.anon, %class.anon* %this1, i32 0, i32 0
  %2 = load %class.anon*, %class.anon** %.addr, align 8
  %3 = getelementptr inbounds %class.anon, %class.anon* %2, i32 0, i32 0
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_(%"class.std::__cxx11::basic_string"* %1, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %3)
  ret void
}

declare dso_local %"class.tensorflow::UnaryVariantOpRegistry"* @_ZN10tensorflow28UnaryVariantOpRegistryGlobalEv() #4

; Function Attrs: noinline optnone uwtable
define dso_local zeroext i1 @_ZNK10tensorflow6Tensor13IsInitializedEv(%"class.tensorflow::Tensor"* %this) #6 align 2 {
entry:
  %this.addr = alloca %"class.tensorflow::Tensor"*, align 8
  store %"class.tensorflow::Tensor"* %this, %"class.tensorflow::Tensor"** %this.addr, align 8
  %this1 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %this.addr, align 8
  %buf_ = getelementptr inbounds %"class.tensorflow::Tensor", %"class.tensorflow::Tensor"* %this1, i32 0, i32 1
  %0 = load %"class.tensorflow::TensorBuffer"*, %"class.tensorflow::TensorBuffer"** %buf_, align 8
  %cmp = icmp ne %"class.tensorflow::TensorBuffer"* %0, null
  br i1 %cmp, label %land.lhs.true, label %lor.rhs

land.lhs.true:                                    ; preds = %entry
  %buf_2 = getelementptr inbounds %"class.tensorflow::Tensor", %"class.tensorflow::Tensor"* %this1, i32 0, i32 1
  %1 = load %"class.tensorflow::TensorBuffer"*, %"class.tensorflow::TensorBuffer"** %buf_2, align 8
  %call = call i8* @_ZNK10tensorflow12TensorBuffer4dataEv(%"class.tensorflow::TensorBuffer"* %1)
  %cmp3 = icmp ne i8* %call, null
  br i1 %cmp3, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.lhs.true, %entry
  %shape_ = getelementptr inbounds %"class.tensorflow::Tensor", %"class.tensorflow::Tensor"* %this1, i32 0, i32 0
  %2 = bitcast %"class.tensorflow::TensorShape"* %shape_ to %"class.tensorflow::TensorShapeRep"*
  %call4 = call i64 @_ZNK10tensorflow14TensorShapeRep12num_elementsEv(%"class.tensorflow::TensorShapeRep"* %2)
  %cmp5 = icmp eq i64 %call4, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.lhs.true
  %3 = phi i1 [ true, %land.lhs.true ], [ %cmp5, %lor.rhs ]
  ret i1 %3
}

; Function Attrs: noinline optnone uwtable
define dso_local void @_ZNK10tensorflow6Tensor9CheckTypeENS_8DataTypeE(%"class.tensorflow::Tensor"* %this, i32 %expected_dtype) #6 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.tensorflow::Tensor"*, align 8
  %expected_dtype.addr = alloca i32, align 4
  %_result = alloca %"struct.tsl::internal::CheckOpString", align 8
  %ref.tmp = alloca i32, align 4
  %ref.tmp6 = alloca %"class.tsl::internal::LogMessageFatal", align 8
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  %ref.tmp10 = alloca %"class.std::__cxx11::basic_string", align 8
  %ref.tmp17 = alloca %"class.std::__cxx11::basic_string", align 8
  store %"class.tensorflow::Tensor"* %this, %"class.tensorflow::Tensor"** %this.addr, align 8
  store i32 %expected_dtype, i32* %expected_dtype.addr, align 4
  %this1 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %this.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %entry
  %call = call i32 @_ZNK10tensorflow6Tensor5dtypeEv(%"class.tensorflow::Tensor"* %this1)
  store i32 %call, i32* %ref.tmp, align 4
  %call2 = call nonnull align 4 dereferenceable(4) i32* @_ZN3tsl8internal21GetReferenceableValueIN10tensorflow8DataTypeEEERKT_S6_(i32* nonnull align 4 dereferenceable(4) %ref.tmp)
  %call3 = call nonnull align 4 dereferenceable(4) i32* @_ZN3tsl8internal21GetReferenceableValueIN10tensorflow8DataTypeEEERKT_S6_(i32* nonnull align 4 dereferenceable(4) %expected_dtype.addr)
  %call4 = call %"class.std::__cxx11::basic_string"* @_ZN3tsl8internal12Check_EQImplIN10tensorflow8DataTypeES3_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc(i32* nonnull align 4 dereferenceable(4) %call2, i32* nonnull align 4 dereferenceable(4) %call3, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4.19, i64 0, i64 0))
  call void @_ZN3tsl8internal13CheckOpStringC2EPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"struct.tsl::internal::CheckOpString"* %_result, %"class.std::__cxx11::basic_string"* %call4)
  %call5 = call zeroext i1 @_ZNK3tsl8internal13CheckOpStringcvbEv(%"struct.tsl::internal::CheckOpString"* %_result)
  br i1 %call5, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void @_ZN3tsl8internal15LogMessageFatalC1EPKci(%"class.tsl::internal::LogMessageFatal"* %ref.tmp6, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.5.20, i64 0, i64 0), i32 861) #22
  %str_ = getelementptr inbounds %"struct.tsl::internal::CheckOpString", %"struct.tsl::internal::CheckOpString"* %_result, i32 0, i32 0
  %0 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %str_, align 8
  %call7 = invoke nonnull align 8 dereferenceable(136) %"class.tsl::internal::LogMessageFatal"* @_ZStlsIN3tsl8internal15LogMessageFatalENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_SA_RKT0_(%"class.tsl::internal::LogMessageFatal"* nonnull align 8 dereferenceable(136) %ref.tmp6, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %0)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %while.body
  %call9 = invoke nonnull align 8 dereferenceable(136) %"class.tsl::internal::LogMessageFatal"* @_ZStlsIN3tsl8internal15LogMessageFatalEA2_cEOT_S5_RKT0_(%"class.tsl::internal::LogMessageFatal"* nonnull align 8 dereferenceable(136) %call7, [2 x i8]* nonnull align 1 dereferenceable(2) @.str.6.21)
          to label %invoke.cont8 unwind label %lpad

invoke.cont8:                                     ; preds = %invoke.cont
  %1 = load i32, i32* %expected_dtype.addr, align 4
  invoke void @_ZN10tensorflow14DataTypeStringB5cxx11ENS_8DataTypeE(%"class.std::__cxx11::basic_string"* sret align 8 %ref.tmp10, i32 %1)
          to label %invoke.cont11 unwind label %lpad

invoke.cont11:                                    ; preds = %invoke.cont8
  %call14 = invoke nonnull align 8 dereferenceable(136) %"class.tsl::internal::LogMessageFatal"* @_ZStlsIN3tsl8internal15LogMessageFatalENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_SA_RKT0_(%"class.tsl::internal::LogMessageFatal"* nonnull align 8 dereferenceable(136) %call9, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp10)
          to label %invoke.cont13 unwind label %lpad12

invoke.cont13:                                    ; preds = %invoke.cont11
  %call16 = invoke nonnull align 8 dereferenceable(136) %"class.tsl::internal::LogMessageFatal"* @_ZStlsIN3tsl8internal15LogMessageFatalEA16_cEOT_S5_RKT0_(%"class.tsl::internal::LogMessageFatal"* nonnull align 8 dereferenceable(136) %call14, [16 x i8]* nonnull align 1 dereferenceable(16) @.str.7.22)
          to label %invoke.cont15 unwind label %lpad12

invoke.cont15:                                    ; preds = %invoke.cont13
  %call19 = invoke i32 @_ZNK10tensorflow6Tensor5dtypeEv(%"class.tensorflow::Tensor"* %this1)
          to label %invoke.cont18 unwind label %lpad12

invoke.cont18:                                    ; preds = %invoke.cont15
  invoke void @_ZN10tensorflow14DataTypeStringB5cxx11ENS_8DataTypeE(%"class.std::__cxx11::basic_string"* sret align 8 %ref.tmp17, i32 %call19)
          to label %invoke.cont20 unwind label %lpad12

invoke.cont20:                                    ; preds = %invoke.cont18
  %call23 = invoke nonnull align 8 dereferenceable(136) %"class.tsl::internal::LogMessageFatal"* @_ZStlsIN3tsl8internal15LogMessageFatalENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_SA_RKT0_(%"class.tsl::internal::LogMessageFatal"* nonnull align 8 dereferenceable(136) %call16, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp17)
          to label %invoke.cont22 unwind label %lpad21

invoke.cont22:                                    ; preds = %invoke.cont20
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %ref.tmp17) #11
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %ref.tmp10) #11
  call void @_ZN3tsl8internal15LogMessageFatalD1Ev(%"class.tsl::internal::LogMessageFatal"* %ref.tmp6) #16
  unreachable

lpad:                                             ; preds = %invoke.cont8, %invoke.cont, %while.body
  %2 = landingpad { i8*, i32 }
          cleanup
  %3 = extractvalue { i8*, i32 } %2, 0
  store i8* %3, i8** %exn.slot, align 8
  %4 = extractvalue { i8*, i32 } %2, 1
  store i32 %4, i32* %ehselector.slot, align 4
  br label %ehcleanup24

lpad12:                                           ; preds = %invoke.cont18, %invoke.cont15, %invoke.cont13, %invoke.cont11
  %5 = landingpad { i8*, i32 }
          cleanup
  %6 = extractvalue { i8*, i32 } %5, 0
  store i8* %6, i8** %exn.slot, align 8
  %7 = extractvalue { i8*, i32 } %5, 1
  store i32 %7, i32* %ehselector.slot, align 4
  br label %ehcleanup

lpad21:                                           ; preds = %invoke.cont20
  %8 = landingpad { i8*, i32 }
          cleanup
  %9 = extractvalue { i8*, i32 } %8, 0
  store i8* %9, i8** %exn.slot, align 8
  %10 = extractvalue { i8*, i32 } %8, 1
  store i32 %10, i32* %ehselector.slot, align 4
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %ref.tmp17) #11
  br label %ehcleanup

ehcleanup:                                        ; preds = %lpad21, %lpad12
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %ref.tmp10) #11
  br label %ehcleanup24

ehcleanup24:                                      ; preds = %ehcleanup, %lpad
  call void @_ZN3tsl8internal15LogMessageFatalD1Ev(%"class.tsl::internal::LogMessageFatal"* %ref.tmp6) #16
  unreachable

11:                                               ; No predecessors!
  br label %eh.resume

while.end:                                        ; preds = %while.cond
  ret void

eh.resume:                                        ; preds = %11
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val25 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val25
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 4 dereferenceable(4) i32* @_ZN3tsl8internal21GetReferenceableValueIN10tensorflow8DataTypeEEERKT_S6_(i32* nonnull align 4 dereferenceable(4) %t) #0 comdat {
entry:
  %t.addr = alloca i32*, align 8
  store i32* %t, i32** %t.addr, align 8
  %0 = load i32*, i32** %t.addr, align 8
  ret i32* %0
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %"class.std::__cxx11::basic_string"* @_ZN3tsl8internal12Check_EQImplIN10tensorflow8DataTypeES3_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc(i32* nonnull align 4 dereferenceable(4) %v1, i32* nonnull align 4 dereferenceable(4) %v2, i8* %exprtext) #6 comdat {
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
  %cmp = icmp eq i32 %1, %3
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
  %call = call %"class.std::__cxx11::basic_string"* @_ZN3tsl8internal17MakeCheckOpStringIN10tensorflow8DataTypeES3_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc(i32* nonnull align 4 dereferenceable(4) %4, i32* nonnull align 4 dereferenceable(4) %5, i8* %6)
  store %"class.std::__cxx11::basic_string"* %call, %"class.std::__cxx11::basic_string"** %retval, align 8
  br label %return

return:                                           ; preds = %if.else, %if.then
  %7 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %retval, align 8
  ret %"class.std::__cxx11::basic_string"* %7
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(136) %"class.tsl::internal::LogMessageFatal"* @_ZStlsIN3tsl8internal15LogMessageFatalEA2_cEOT_S5_RKT0_(%"class.tsl::internal::LogMessageFatal"* nonnull align 8 dereferenceable(136) %__os, [2 x i8]* nonnull align 1 dereferenceable(2) %__x) #6 comdat {
entry:
  %__os.addr = alloca %"class.tsl::internal::LogMessageFatal"*, align 8
  %__x.addr = alloca [2 x i8]*, align 8
  store %"class.tsl::internal::LogMessageFatal"* %__os, %"class.tsl::internal::LogMessageFatal"** %__os.addr, align 8
  store [2 x i8]* %__x, [2 x i8]** %__x.addr, align 8
  %0 = load %"class.tsl::internal::LogMessageFatal"*, %"class.tsl::internal::LogMessageFatal"** %__os.addr, align 8
  %1 = bitcast %"class.tsl::internal::LogMessageFatal"* %0 to %"class.std::basic_ostream"*
  %2 = load [2 x i8]*, [2 x i8]** %__x.addr, align 8
  %arraydecay = getelementptr inbounds [2 x i8], [2 x i8]* %2, i64 0, i64 0
  %call = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %1, i8* %arraydecay)
  %3 = load %"class.tsl::internal::LogMessageFatal"*, %"class.tsl::internal::LogMessageFatal"** %__os.addr, align 8
  %call1 = call nonnull align 8 dereferenceable(136) %"class.tsl::internal::LogMessageFatal"* @_ZSt4moveIRN3tsl8internal15LogMessageFatalEEONSt16remove_referenceIT_E4typeEOS5_(%"class.tsl::internal::LogMessageFatal"* nonnull align 8 dereferenceable(136) %3) #11
  ret %"class.tsl::internal::LogMessageFatal"* %call1
}

declare dso_local void @_ZN10tensorflow14DataTypeStringB5cxx11ENS_8DataTypeE(%"class.std::__cxx11::basic_string"* sret align 8, i32) #4

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(136) %"class.tsl::internal::LogMessageFatal"* @_ZStlsIN3tsl8internal15LogMessageFatalEA16_cEOT_S5_RKT0_(%"class.tsl::internal::LogMessageFatal"* nonnull align 8 dereferenceable(136) %__os, [16 x i8]* nonnull align 1 dereferenceable(16) %__x) #6 comdat {
entry:
  %__os.addr = alloca %"class.tsl::internal::LogMessageFatal"*, align 8
  %__x.addr = alloca [16 x i8]*, align 8
  store %"class.tsl::internal::LogMessageFatal"* %__os, %"class.tsl::internal::LogMessageFatal"** %__os.addr, align 8
  store [16 x i8]* %__x, [16 x i8]** %__x.addr, align 8
  %0 = load %"class.tsl::internal::LogMessageFatal"*, %"class.tsl::internal::LogMessageFatal"** %__os.addr, align 8
  %1 = bitcast %"class.tsl::internal::LogMessageFatal"* %0 to %"class.std::basic_ostream"*
  %2 = load [16 x i8]*, [16 x i8]** %__x.addr, align 8
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %2, i64 0, i64 0
  %call = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %1, i8* %arraydecay)
  %3 = load %"class.tsl::internal::LogMessageFatal"*, %"class.tsl::internal::LogMessageFatal"** %__os.addr, align 8
  %call1 = call nonnull align 8 dereferenceable(136) %"class.tsl::internal::LogMessageFatal"* @_ZSt4moveIRN3tsl8internal15LogMessageFatalEEONSt16remove_referenceIT_E4typeEOS5_(%"class.tsl::internal::LogMessageFatal"* nonnull align 8 dereferenceable(136) %3) #11
  ret %"class.tsl::internal::LogMessageFatal"* %call1
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %"class.std::__cxx11::basic_string"* @_ZN3tsl8internal17MakeCheckOpStringIN10tensorflow8DataTypeES3_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc(i32* nonnull align 4 dereferenceable(4) %v1, i32* nonnull align 4 dereferenceable(4) %v2, i8* %exprtext) #6 comdat personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
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
  invoke void @_ZN3tsl8internal22MakeCheckOpValueStringIN10tensorflow8DataTypeEEEvPSoRKT_(%"class.std::basic_ostream"* %call, i32* nonnull align 4 dereferenceable(4) %1)
          to label %invoke.cont1 unwind label %lpad

invoke.cont1:                                     ; preds = %invoke.cont
  %call3 = invoke %"class.std::basic_ostream"* @_ZN3tsl8internal21CheckOpMessageBuilder7ForVar2Ev(%"class.tsl::internal::CheckOpMessageBuilder"* %comb)
          to label %invoke.cont2 unwind label %lpad

invoke.cont2:                                     ; preds = %invoke.cont1
  %2 = load i32*, i32** %v2.addr, align 8
  invoke void @_ZN3tsl8internal22MakeCheckOpValueStringIN10tensorflow8DataTypeEEEvPSoRKT_(%"class.std::basic_ostream"* %call3, i32* nonnull align 4 dereferenceable(4) %2)
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
define linkonce_odr dso_local void @_ZN3tsl8internal22MakeCheckOpValueStringIN10tensorflow8DataTypeEEEvPSoRKT_(%"class.std::basic_ostream"* %os, i32* nonnull align 4 dereferenceable(4) %v) #6 comdat {
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

; Function Attrs: noinline optnone uwtable
define dso_local void @_ZNK10tensorflow6Tensor21CheckTypeAndIsAlignedENS_8DataTypeE(%"class.tensorflow::Tensor"* %this, i32 %expected_dtype) #6 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.tensorflow::Tensor"*, align 8
  %expected_dtype.addr = alloca i32, align 4
  %_result = alloca %"struct.tsl::internal::CheckOpString", align 8
  %ref.tmp = alloca i32, align 4
  %ref.tmp6 = alloca %"class.tsl::internal::LogMessageFatal", align 8
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  %ref.tmp10 = alloca %"class.std::__cxx11::basic_string", align 8
  %ref.tmp17 = alloca %"class.std::__cxx11::basic_string", align 8
  %ref.tmp26 = alloca %"class.tsl::internal::LogMessageFatal", align 8
  %ref.tmp32 = alloca i8*, align 8
  store %"class.tensorflow::Tensor"* %this, %"class.tensorflow::Tensor"** %this.addr, align 8
  store i32 %expected_dtype, i32* %expected_dtype.addr, align 4
  %this1 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %this.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %entry
  %call = call i32 @_ZNK10tensorflow6Tensor5dtypeEv(%"class.tensorflow::Tensor"* %this1)
  store i32 %call, i32* %ref.tmp, align 4
  %call2 = call nonnull align 4 dereferenceable(4) i32* @_ZN3tsl8internal21GetReferenceableValueIN10tensorflow8DataTypeEEERKT_S6_(i32* nonnull align 4 dereferenceable(4) %ref.tmp)
  %call3 = call nonnull align 4 dereferenceable(4) i32* @_ZN3tsl8internal21GetReferenceableValueIN10tensorflow8DataTypeEEERKT_S6_(i32* nonnull align 4 dereferenceable(4) %expected_dtype.addr)
  %call4 = call %"class.std::__cxx11::basic_string"* @_ZN3tsl8internal12Check_EQImplIN10tensorflow8DataTypeES3_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc(i32* nonnull align 4 dereferenceable(4) %call2, i32* nonnull align 4 dereferenceable(4) %call3, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4.19, i64 0, i64 0))
  call void @_ZN3tsl8internal13CheckOpStringC2EPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"struct.tsl::internal::CheckOpString"* %_result, %"class.std::__cxx11::basic_string"* %call4)
  %call5 = call zeroext i1 @_ZNK3tsl8internal13CheckOpStringcvbEv(%"struct.tsl::internal::CheckOpString"* %_result)
  br i1 %call5, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void @_ZN3tsl8internal15LogMessageFatalC1EPKci(%"class.tsl::internal::LogMessageFatal"* %ref.tmp6, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.5.20, i64 0, i64 0), i32 867) #22
  %str_ = getelementptr inbounds %"struct.tsl::internal::CheckOpString", %"struct.tsl::internal::CheckOpString"* %_result, i32 0, i32 0
  %0 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %str_, align 8
  %call7 = invoke nonnull align 8 dereferenceable(136) %"class.tsl::internal::LogMessageFatal"* @_ZStlsIN3tsl8internal15LogMessageFatalENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_SA_RKT0_(%"class.tsl::internal::LogMessageFatal"* nonnull align 8 dereferenceable(136) %ref.tmp6, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %0)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %while.body
  %call9 = invoke nonnull align 8 dereferenceable(136) %"class.tsl::internal::LogMessageFatal"* @_ZStlsIN3tsl8internal15LogMessageFatalEA2_cEOT_S5_RKT0_(%"class.tsl::internal::LogMessageFatal"* nonnull align 8 dereferenceable(136) %call7, [2 x i8]* nonnull align 1 dereferenceable(2) @.str.6.21)
          to label %invoke.cont8 unwind label %lpad

invoke.cont8:                                     ; preds = %invoke.cont
  %1 = load i32, i32* %expected_dtype.addr, align 4
  invoke void @_ZN10tensorflow14DataTypeStringB5cxx11ENS_8DataTypeE(%"class.std::__cxx11::basic_string"* sret align 8 %ref.tmp10, i32 %1)
          to label %invoke.cont11 unwind label %lpad

invoke.cont11:                                    ; preds = %invoke.cont8
  %call14 = invoke nonnull align 8 dereferenceable(136) %"class.tsl::internal::LogMessageFatal"* @_ZStlsIN3tsl8internal15LogMessageFatalENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_SA_RKT0_(%"class.tsl::internal::LogMessageFatal"* nonnull align 8 dereferenceable(136) %call9, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp10)
          to label %invoke.cont13 unwind label %lpad12

invoke.cont13:                                    ; preds = %invoke.cont11
  %call16 = invoke nonnull align 8 dereferenceable(136) %"class.tsl::internal::LogMessageFatal"* @_ZStlsIN3tsl8internal15LogMessageFatalEA16_cEOT_S5_RKT0_(%"class.tsl::internal::LogMessageFatal"* nonnull align 8 dereferenceable(136) %call14, [16 x i8]* nonnull align 1 dereferenceable(16) @.str.7.22)
          to label %invoke.cont15 unwind label %lpad12

invoke.cont15:                                    ; preds = %invoke.cont13
  %call19 = invoke i32 @_ZNK10tensorflow6Tensor5dtypeEv(%"class.tensorflow::Tensor"* %this1)
          to label %invoke.cont18 unwind label %lpad12

invoke.cont18:                                    ; preds = %invoke.cont15
  invoke void @_ZN10tensorflow14DataTypeStringB5cxx11ENS_8DataTypeE(%"class.std::__cxx11::basic_string"* sret align 8 %ref.tmp17, i32 %call19)
          to label %invoke.cont20 unwind label %lpad12

invoke.cont20:                                    ; preds = %invoke.cont18
  %call23 = invoke nonnull align 8 dereferenceable(136) %"class.tsl::internal::LogMessageFatal"* @_ZStlsIN3tsl8internal15LogMessageFatalENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_SA_RKT0_(%"class.tsl::internal::LogMessageFatal"* nonnull align 8 dereferenceable(136) %call16, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp17)
          to label %invoke.cont22 unwind label %lpad21

invoke.cont22:                                    ; preds = %invoke.cont20
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %ref.tmp17) #11
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %ref.tmp10) #11
  call void @_ZN3tsl8internal15LogMessageFatalD1Ev(%"class.tsl::internal::LogMessageFatal"* %ref.tmp6) #16
  unreachable

lpad:                                             ; preds = %invoke.cont8, %invoke.cont, %while.body
  %2 = landingpad { i8*, i32 }
          cleanup
  %3 = extractvalue { i8*, i32 } %2, 0
  store i8* %3, i8** %exn.slot, align 8
  %4 = extractvalue { i8*, i32 } %2, 1
  store i32 %4, i32* %ehselector.slot, align 4
  br label %ehcleanup24

lpad12:                                           ; preds = %invoke.cont18, %invoke.cont15, %invoke.cont13, %invoke.cont11
  %5 = landingpad { i8*, i32 }
          cleanup
  %6 = extractvalue { i8*, i32 } %5, 0
  store i8* %6, i8** %exn.slot, align 8
  %7 = extractvalue { i8*, i32 } %5, 1
  store i32 %7, i32* %ehselector.slot, align 4
  br label %ehcleanup

lpad21:                                           ; preds = %invoke.cont20
  %8 = landingpad { i8*, i32 }
          cleanup
  %9 = extractvalue { i8*, i32 } %8, 0
  store i8* %9, i8** %exn.slot, align 8
  %10 = extractvalue { i8*, i32 } %8, 1
  store i32 %10, i32* %ehselector.slot, align 4
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %ref.tmp17) #11
  br label %ehcleanup

ehcleanup:                                        ; preds = %lpad21, %lpad12
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %ref.tmp10) #11
  br label %ehcleanup24

ehcleanup24:                                      ; preds = %ehcleanup, %lpad
  call void @_ZN3tsl8internal15LogMessageFatalD1Ev(%"class.tsl::internal::LogMessageFatal"* %ref.tmp6) #16
  unreachable

11:                                               ; No predecessors!
  br label %eh.resume

while.end:                                        ; preds = %while.cond
  %call25 = call zeroext i1 @_ZNK10tensorflow6Tensor9IsAlignedEv(%"class.tensorflow::Tensor"* %this1)
  %lnot = xor i1 %call25, true
  br i1 %lnot, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  call void @_ZN3tsl8internal15LogMessageFatalC1EPKci(%"class.tsl::internal::LogMessageFatal"* %ref.tmp26, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.5.20, i64 0, i64 0), i32 870) #22
  %call29 = invoke nonnull align 8 dereferenceable(136) %"class.tsl::internal::LogMessageFatal"* @_ZStlsIN3tsl8internal15LogMessageFatalEA27_cEOT_S5_RKT0_(%"class.tsl::internal::LogMessageFatal"* nonnull align 8 dereferenceable(136) %ref.tmp26, [27 x i8]* nonnull align 1 dereferenceable(27) @.str.8.23)
          to label %invoke.cont28 unwind label %lpad27

invoke.cont28:                                    ; preds = %if.then
  %call31 = invoke nonnull align 8 dereferenceable(136) %"class.tsl::internal::LogMessageFatal"* @_ZStlsIN3tsl8internal15LogMessageFatalEA7_cEOT_S5_RKT0_(%"class.tsl::internal::LogMessageFatal"* nonnull align 8 dereferenceable(136) %call29, [7 x i8]* nonnull align 1 dereferenceable(7) @.str.9.24)
          to label %invoke.cont30 unwind label %lpad27

invoke.cont30:                                    ; preds = %invoke.cont28
  %call34 = invoke i8* @_ZNK10tensorflow6Tensor4baseIvEEPT_v(%"class.tensorflow::Tensor"* %this1)
          to label %invoke.cont33 unwind label %lpad27

invoke.cont33:                                    ; preds = %invoke.cont30
  store i8* %call34, i8** %ref.tmp32, align 8
  %call36 = invoke nonnull align 8 dereferenceable(136) %"class.tsl::internal::LogMessageFatal"* @_ZStlsIN3tsl8internal15LogMessageFatalEPvEOT_S5_RKT0_(%"class.tsl::internal::LogMessageFatal"* nonnull align 8 dereferenceable(136) %call31, i8** nonnull align 8 dereferenceable(8) %ref.tmp32)
          to label %invoke.cont35 unwind label %lpad27

invoke.cont35:                                    ; preds = %invoke.cont33
  call void @_ZN3tsl8internal15LogMessageFatalD1Ev(%"class.tsl::internal::LogMessageFatal"* %ref.tmp26) #16
  unreachable

lpad27:                                           ; preds = %invoke.cont33, %invoke.cont30, %invoke.cont28, %if.then
  %12 = landingpad { i8*, i32 }
          cleanup
  %13 = extractvalue { i8*, i32 } %12, 0
  store i8* %13, i8** %exn.slot, align 8
  %14 = extractvalue { i8*, i32 } %12, 1
  store i32 %14, i32* %ehselector.slot, align 4
  call void @_ZN3tsl8internal15LogMessageFatalD1Ev(%"class.tsl::internal::LogMessageFatal"* %ref.tmp26) #16
  unreachable

15:                                               ; No predecessors!
  br label %eh.resume

if.end:                                           ; preds = %while.end
  ret void

eh.resume:                                        ; preds = %15, %11
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val38 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val38
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(136) %"class.tsl::internal::LogMessageFatal"* @_ZStlsIN3tsl8internal15LogMessageFatalEA27_cEOT_S5_RKT0_(%"class.tsl::internal::LogMessageFatal"* nonnull align 8 dereferenceable(136) %__os, [27 x i8]* nonnull align 1 dereferenceable(27) %__x) #6 comdat {
entry:
  %__os.addr = alloca %"class.tsl::internal::LogMessageFatal"*, align 8
  %__x.addr = alloca [27 x i8]*, align 8
  store %"class.tsl::internal::LogMessageFatal"* %__os, %"class.tsl::internal::LogMessageFatal"** %__os.addr, align 8
  store [27 x i8]* %__x, [27 x i8]** %__x.addr, align 8
  %0 = load %"class.tsl::internal::LogMessageFatal"*, %"class.tsl::internal::LogMessageFatal"** %__os.addr, align 8
  %1 = bitcast %"class.tsl::internal::LogMessageFatal"* %0 to %"class.std::basic_ostream"*
  %2 = load [27 x i8]*, [27 x i8]** %__x.addr, align 8
  %arraydecay = getelementptr inbounds [27 x i8], [27 x i8]* %2, i64 0, i64 0
  %call = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %1, i8* %arraydecay)
  %3 = load %"class.tsl::internal::LogMessageFatal"*, %"class.tsl::internal::LogMessageFatal"** %__os.addr, align 8
  %call1 = call nonnull align 8 dereferenceable(136) %"class.tsl::internal::LogMessageFatal"* @_ZSt4moveIRN3tsl8internal15LogMessageFatalEEONSt16remove_referenceIT_E4typeEOS5_(%"class.tsl::internal::LogMessageFatal"* nonnull align 8 dereferenceable(136) %3) #11
  ret %"class.tsl::internal::LogMessageFatal"* %call1
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(136) %"class.tsl::internal::LogMessageFatal"* @_ZStlsIN3tsl8internal15LogMessageFatalEA7_cEOT_S5_RKT0_(%"class.tsl::internal::LogMessageFatal"* nonnull align 8 dereferenceable(136) %__os, [7 x i8]* nonnull align 1 dereferenceable(7) %__x) #6 comdat {
entry:
  %__os.addr = alloca %"class.tsl::internal::LogMessageFatal"*, align 8
  %__x.addr = alloca [7 x i8]*, align 8
  store %"class.tsl::internal::LogMessageFatal"* %__os, %"class.tsl::internal::LogMessageFatal"** %__os.addr, align 8
  store [7 x i8]* %__x, [7 x i8]** %__x.addr, align 8
  %0 = load %"class.tsl::internal::LogMessageFatal"*, %"class.tsl::internal::LogMessageFatal"** %__os.addr, align 8
  %1 = bitcast %"class.tsl::internal::LogMessageFatal"* %0 to %"class.std::basic_ostream"*
  %2 = load [7 x i8]*, [7 x i8]** %__x.addr, align 8
  %arraydecay = getelementptr inbounds [7 x i8], [7 x i8]* %2, i64 0, i64 0
  %call = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %1, i8* %arraydecay)
  %3 = load %"class.tsl::internal::LogMessageFatal"*, %"class.tsl::internal::LogMessageFatal"** %__os.addr, align 8
  %call1 = call nonnull align 8 dereferenceable(136) %"class.tsl::internal::LogMessageFatal"* @_ZSt4moveIRN3tsl8internal15LogMessageFatalEEONSt16remove_referenceIT_E4typeEOS5_(%"class.tsl::internal::LogMessageFatal"* nonnull align 8 dereferenceable(136) %3) #11
  ret %"class.tsl::internal::LogMessageFatal"* %call1
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(136) %"class.tsl::internal::LogMessageFatal"* @_ZStlsIN3tsl8internal15LogMessageFatalEPvEOT_S5_RKT0_(%"class.tsl::internal::LogMessageFatal"* nonnull align 8 dereferenceable(136) %__os, i8** nonnull align 8 dereferenceable(8) %__x) #6 comdat {
entry:
  %__os.addr = alloca %"class.tsl::internal::LogMessageFatal"*, align 8
  %__x.addr = alloca i8**, align 8
  store %"class.tsl::internal::LogMessageFatal"* %__os, %"class.tsl::internal::LogMessageFatal"** %__os.addr, align 8
  store i8** %__x, i8*** %__x.addr, align 8
  %0 = load %"class.tsl::internal::LogMessageFatal"*, %"class.tsl::internal::LogMessageFatal"** %__os.addr, align 8
  %1 = bitcast %"class.tsl::internal::LogMessageFatal"* %0 to %"class.std::basic_ostream"*
  %2 = load i8**, i8*** %__x.addr, align 8
  %3 = load i8*, i8** %2, align 8
  %call = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEPKv(%"class.std::basic_ostream"* %1, i8* %3)
  %4 = load %"class.tsl::internal::LogMessageFatal"*, %"class.tsl::internal::LogMessageFatal"** %__os.addr, align 8
  %call1 = call nonnull align 8 dereferenceable(136) %"class.tsl::internal::LogMessageFatal"* @_ZSt4moveIRN3tsl8internal15LogMessageFatalEEONSt16remove_referenceIT_E4typeEOS5_(%"class.tsl::internal::LogMessageFatal"* nonnull align 8 dereferenceable(136) %4) #11
  ret %"class.tsl::internal::LogMessageFatal"* %call1
}

; Function Attrs: noinline optnone uwtable
define dso_local void @_ZNK10tensorflow6Tensor30CheckIsAlignedAndSingleElementEv(%"class.tensorflow::Tensor"* %this) #6 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.tensorflow::Tensor"*, align 8
  %ref.tmp = alloca %"class.tsl::internal::LogMessageFatal", align 8
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  %_result = alloca %"struct.tsl::internal::CheckOpString", align 8
  %ref.tmp5 = alloca i32, align 4
  %ref.tmp7 = alloca i64, align 8
  %ref.tmp12 = alloca %"class.tsl::internal::LogMessageFatal", align 8
  store %"class.tensorflow::Tensor"* %this, %"class.tensorflow::Tensor"** %this.addr, align 8
  %this1 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %this.addr, align 8
  %call = call zeroext i1 @_ZNK10tensorflow6Tensor9IsAlignedEv(%"class.tensorflow::Tensor"* %this1)
  %lnot = xor i1 %call, true
  br i1 %lnot, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_ZN3tsl8internal15LogMessageFatalC1EPKci(%"class.tsl::internal::LogMessageFatal"* %ref.tmp, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.5.20, i64 0, i64 0), i32 874) #22
  %call2 = invoke nonnull align 8 dereferenceable(136) %"class.tsl::internal::LogMessageFatal"* @_ZStlsIN3tsl8internal15LogMessageFatalEA27_cEOT_S5_RKT0_(%"class.tsl::internal::LogMessageFatal"* nonnull align 8 dereferenceable(136) %ref.tmp, [27 x i8]* nonnull align 1 dereferenceable(27) @.str.8.23)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %if.then
  %call4 = invoke nonnull align 8 dereferenceable(136) %"class.tsl::internal::LogMessageFatal"* @_ZStlsIN3tsl8internal15LogMessageFatalEA27_cEOT_S5_RKT0_(%"class.tsl::internal::LogMessageFatal"* nonnull align 8 dereferenceable(136) %call2, [27 x i8]* nonnull align 1 dereferenceable(27) @.str.10.25)
          to label %invoke.cont3 unwind label %lpad

invoke.cont3:                                     ; preds = %invoke.cont
  call void @_ZN3tsl8internal15LogMessageFatalD1Ev(%"class.tsl::internal::LogMessageFatal"* %ref.tmp) #16
  unreachable

lpad:                                             ; preds = %invoke.cont, %if.then
  %0 = landingpad { i8*, i32 }
          cleanup
  %1 = extractvalue { i8*, i32 } %0, 0
  store i8* %1, i8** %exn.slot, align 8
  %2 = extractvalue { i8*, i32 } %0, 1
  store i32 %2, i32* %ehselector.slot, align 4
  call void @_ZN3tsl8internal15LogMessageFatalD1Ev(%"class.tsl::internal::LogMessageFatal"* %ref.tmp) #16
  unreachable

3:                                                ; No predecessors!
  br label %eh.resume

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end
  %call6 = call i32 @_ZN3tsl8internal21GetReferenceableValueEi(i32 1)
  store i32 %call6, i32* %ref.tmp5, align 4
  %call8 = call i64 @_ZNK10tensorflow6Tensor11NumElementsEv(%"class.tensorflow::Tensor"* %this1)
  %call9 = call i64 @_ZN3tsl8internal21GetReferenceableValueEl(i64 %call8)
  store i64 %call9, i64* %ref.tmp7, align 8
  %call10 = call %"class.std::__cxx11::basic_string"* @_ZN3tsl8internal12Check_EQImplIilEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc(i32* nonnull align 4 dereferenceable(4) %ref.tmp5, i64* nonnull align 8 dereferenceable(8) %ref.tmp7, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11.26, i64 0, i64 0))
  call void @_ZN3tsl8internal13CheckOpStringC2EPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"struct.tsl::internal::CheckOpString"* %_result, %"class.std::__cxx11::basic_string"* %call10)
  %call11 = call zeroext i1 @_ZNK3tsl8internal13CheckOpStringcvbEv(%"struct.tsl::internal::CheckOpString"* %_result)
  br i1 %call11, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void @_ZN3tsl8internal15LogMessageFatalC1EPKci(%"class.tsl::internal::LogMessageFatal"* %ref.tmp12, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.5.20, i64 0, i64 0), i32 875) #22
  %str_ = getelementptr inbounds %"struct.tsl::internal::CheckOpString", %"struct.tsl::internal::CheckOpString"* %_result, i32 0, i32 0
  %4 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %str_, align 8
  %call15 = invoke nonnull align 8 dereferenceable(136) %"class.tsl::internal::LogMessageFatal"* @_ZStlsIN3tsl8internal15LogMessageFatalENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_SA_RKT0_(%"class.tsl::internal::LogMessageFatal"* nonnull align 8 dereferenceable(136) %ref.tmp12, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %4)
          to label %invoke.cont14 unwind label %lpad13

invoke.cont14:                                    ; preds = %while.body
  %call17 = invoke nonnull align 8 dereferenceable(136) %"class.tsl::internal::LogMessageFatal"* @_ZStlsIN3tsl8internal15LogMessageFatalEA31_cEOT_S5_RKT0_(%"class.tsl::internal::LogMessageFatal"* nonnull align 8 dereferenceable(136) %call15, [31 x i8]* nonnull align 1 dereferenceable(31) @.str.12)
          to label %invoke.cont16 unwind label %lpad13

invoke.cont16:                                    ; preds = %invoke.cont14
  call void @_ZN3tsl8internal15LogMessageFatalD1Ev(%"class.tsl::internal::LogMessageFatal"* %ref.tmp12) #16
  unreachable

lpad13:                                           ; preds = %invoke.cont14, %while.body
  %5 = landingpad { i8*, i32 }
          cleanup
  %6 = extractvalue { i8*, i32 } %5, 0
  store i8* %6, i8** %exn.slot, align 8
  %7 = extractvalue { i8*, i32 } %5, 1
  store i32 %7, i32* %ehselector.slot, align 4
  call void @_ZN3tsl8internal15LogMessageFatalD1Ev(%"class.tsl::internal::LogMessageFatal"* %ref.tmp12) #16
  unreachable

8:                                                ; No predecessors!
  br label %eh.resume

while.end:                                        ; preds = %while.cond
  ret void

eh.resume:                                        ; preds = %8, %3
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val18 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val18
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %"class.std::__cxx11::basic_string"* @_ZN3tsl8internal12Check_EQImplIilEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc(i32* nonnull align 4 dereferenceable(4) %v1, i64* nonnull align 8 dereferenceable(8) %v2, i8* %exprtext) #6 comdat {
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
  %cmp = icmp eq i64 %conv, %3
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
define linkonce_odr dso_local nonnull align 8 dereferenceable(136) %"class.tsl::internal::LogMessageFatal"* @_ZStlsIN3tsl8internal15LogMessageFatalEA31_cEOT_S5_RKT0_(%"class.tsl::internal::LogMessageFatal"* nonnull align 8 dereferenceable(136) %__os, [31 x i8]* nonnull align 1 dereferenceable(31) %__x) #6 comdat {
entry:
  %__os.addr = alloca %"class.tsl::internal::LogMessageFatal"*, align 8
  %__x.addr = alloca [31 x i8]*, align 8
  store %"class.tsl::internal::LogMessageFatal"* %__os, %"class.tsl::internal::LogMessageFatal"** %__os.addr, align 8
  store [31 x i8]* %__x, [31 x i8]** %__x.addr, align 8
  %0 = load %"class.tsl::internal::LogMessageFatal"*, %"class.tsl::internal::LogMessageFatal"** %__os.addr, align 8
  %1 = bitcast %"class.tsl::internal::LogMessageFatal"* %0 to %"class.std::basic_ostream"*
  %2 = load [31 x i8]*, [31 x i8]** %__x.addr, align 8
  %arraydecay = getelementptr inbounds [31 x i8], [31 x i8]* %2, i64 0, i64 0
  %call = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %1, i8* %arraydecay)
  %3 = load %"class.tsl::internal::LogMessageFatal"*, %"class.tsl::internal::LogMessageFatal"** %__os.addr, align 8
  %call1 = call nonnull align 8 dereferenceable(136) %"class.tsl::internal::LogMessageFatal"* @_ZSt4moveIRN3tsl8internal15LogMessageFatalEEONSt16remove_referenceIT_E4typeEOS5_(%"class.tsl::internal::LogMessageFatal"* nonnull align 8 dereferenceable(136) %3) #11
  ret %"class.tsl::internal::LogMessageFatal"* %call1
}

; Function Attrs: noinline optnone uwtable
define dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZN10tensorflowlsERSoRKNS_6TensorE(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %out, %"class.tensorflow::Tensor"* nonnull align 8 dereferenceable(32) %tensor) #6 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %out.addr = alloca %"class.std::basic_ostream"*, align 8
  %tensor.addr = alloca %"class.tensorflow::Tensor"*, align 8
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  store %"class.std::basic_ostream"* %out, %"class.std::basic_ostream"** %out.addr, align 8
  store %"class.tensorflow::Tensor"* %tensor, %"class.tensorflow::Tensor"** %tensor.addr, align 8
  %0 = load %"class.std::basic_ostream"*, %"class.std::basic_ostream"** %out.addr, align 8
  %1 = load %"class.tensorflow::Tensor"*, %"class.tensorflow::Tensor"** %tensor.addr, align 8
  call void @_ZNK10tensorflow6Tensor11DebugStringB5cxx11Ei(%"class.std::__cxx11::basic_string"* sret align 8 %ref.tmp, %"class.tensorflow::Tensor"* %1, i32 100)
  %call = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %0, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %ref.tmp) #11
  %2 = load %"class.std::basic_ostream"*, %"class.std::basic_ostream"** %out.addr, align 8
  ret %"class.std::basic_ostream"* %2

lpad:                                             ; preds = %entry
  %3 = landingpad { i8*, i32 }
          cleanup
  %4 = extractvalue { i8*, i32 } %3, 0
  store i8* %4, i8** %exn.slot, align 8
  %5 = extractvalue { i8*, i32 } %3, 1
  store i32 %5, i32* %ehselector.slot, align 4
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %ref.tmp) #11
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val1 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val1
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
  call void @klee_report_error(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.13, i64 0, i64 0), i32 14, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1.14, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.15, i64 0, i64 0)) #20, !dbg !90
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
  call void @klee_report_error(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.23, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.24, i64 0, i64 0)) #20, !dbg !106
  unreachable, !dbg !106

if.end:                                           ; preds = %entry
  ret void, !dbg !108
}

define internal void @klee.ctor_stub() {
entry:
  call void @_GLOBAL__sub_I_tf_tensor.cc()
  call void @_GLOBAL__sub_I_tensor.cc()
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

!llvm.ident = !{!8, !8, !8, !8, !8, !8, !8, !8}
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
