Class {
	#name : 'BSONTypedef',
	#superclass : 'SharedPool',
	#classVars : [
		'__float128',
		'_bcon_append_ctx_t',
		'_bcon_extract_ctx_t',
		'_bson_array_builder_t',
		'_bson_context_t',
		'_bson_error_t',
		'_bson_json_opts_t',
		'_bson_json_reader_t',
		'_bson_mem_vtable_t',
		'_bson_t',
		'_bson_value_t',
		'_bson_value_t_union1',
		'_bson_value_t_union1_struct1',
		'_bson_value_t_union1_struct2',
		'_bson_value_t_union1_struct3',
		'_bson_value_t_union1_struct4',
		'_bson_value_t_union1_struct5',
		'_bson_value_t_union1_struct6',
		'_bson_value_t_union1_struct7',
		'_bson_value_t_union1_struct8',
		'_bson_value_t_union1_struct9',
		'_bson_writer_t',
		'bcon_append_ctx_frame',
		'bcon_append_ctx_frame_t',
		'bcon_append_ctx_frame_t_100',
		'bcon_append_ctx_t',
		'bcon_extract_ctx_frame',
		'bcon_extract_ctx_frame_t',
		'bcon_extract_ctx_frame_t_100',
		'bcon_extract_ctx_t',
		'bcon_type_t',
		'bool',
		'bson_array_builder_t',
		'bson_context_flags_t',
		'bson_context_t',
		'bson_decimal128_t',
		'bson_error_t',
		'bson_iter_t',
		'bson_json_destroy_cb',
		'bson_json_error_code_t',
		'bson_json_mode_t',
		'bson_json_opts_t',
		'bson_json_reader_cb',
		'bson_json_reader_t',
		'bson_md5_t',
		'bson_mem_vtable_t',
		'bson_oid_t',
		'bson_reader_destroy_func_t',
		'bson_reader_read_func_t',
		'bson_reader_t',
		'bson_realloc_func',
		'bson_string_t',
		'bson_subtype_t',
		'bson_t',
		'bson_type_t',
		'bson_unichar_t',
		'bson_validate_flags_t',
		'bson_value_t',
		'bson_visitor_t',
		'bson_writer_t',
		'char_25',
		'char_504',
		'char_6',
		'int16_t',
		'int32_t',
		'int64_t',
		'int8_t',
		'pid_t',
		'struct7',
		'struct9',
		'time_t',
		'uint16_t',
		'uint32_t',
		'uint32_t_2',
		'uint32_t_4',
		'uint64_t',
		'uint8_t',
		'uint8_t_12',
		'uint8_t_120',
		'uint8_t_16',
		'uint8_t_64',
		'uintptr_t',
		'union1',
		'void_pointer_3',
		'void_pointer_7'
	],
	#category : 'LibBSON-Library',
	#package : 'LibBSON',
	#tag : 'Library'
}

{ #category : 'class initialization' }
BSONTypedef class >> initialize [

	uint16_t := #uint16.
	uint64_t := #uint64.
	uint8_t := #uint8.
	int32_t := #int32.
	uint32_t := #uint32.
	time_t := #int.
	pid_t := #int.
	__float128 := #float128.
	int8_t := #int8.
	int16_t := #int16.
	int64_t := #int64.
	bool := #Boolean.
	uintptr_t := #'void *'.
	union1 := BSONUnion1.
	bson_unichar_t := #uint32_t.
	bson_context_flags_t := BsonContextFlagsT.
	_bson_context_t := BsonContextT.
	bson_context_t := BsonContextT.
	_bson_json_opts_t := BsonJsonOptsT.
	bson_json_opts_t := BsonJsonOptsT.
	uint8_t_120 := FFIArray ofType: 'uint8_t' size: 120 requestor: self.
	_bson_t := BsonT.
	bson_t := BsonT.
	uint8_t_12 := FFIArray ofType: 'uint8_t' size: 12 requestor: self.
	bson_oid_t := BsonOidT.
	bson_decimal128_t := BsonDecimal128T.
	bson_validate_flags_t := BsonValidateFlagsT.
	bson_type_t := BsonTypeT.
	bson_subtype_t := BsonSubtypeT.
	_bson_value_t_union1_struct1 := BsonValueTUnion1Struct1.
	_bson_value_t_union1_struct2 := BsonValueTUnion1Struct2.
	_bson_value_t_union1_struct3 := BsonValueTUnion1Struct3.
	_bson_value_t_union1_struct4 := BsonValueTUnion1Struct4.
	_bson_value_t_union1_struct5 := BsonValueTUnion1Struct5.
	_bson_value_t_union1_struct6 := BsonValueTUnion1Struct6.
	_bson_value_t_union1_struct7 := BsonValueTUnion1Struct7.
	_bson_value_t_union1_struct8 := BsonValueTUnion1Struct8.
	_bson_value_t_union1_struct9 := BsonValueTUnion1Struct9.
	_bson_value_t_union1 := BsonValueTUnion1.
	_bson_value_t := BsonValueT.
	bson_value_t := BsonValueT.
	struct7 := BSONStruct7.
	bson_iter_t := BSONStruct7.
	bson_reader_t := BsonReaderT.
	void_pointer_7 := FFIArray ofType: 'void *' size: 7 requestor: self.
	struct9 := BSONStruct9.
	bson_visitor_t := BSONStruct9.
	char_504 := FFIArray ofType: 'char' size: 504 requestor: self.
	_bson_error_t := BsonErrorT.
	bson_error_t := BsonErrorT.
	_bson_json_reader_t := BsonJsonReaderT.
	bson_json_reader_t := BsonJsonReaderT.
	bson_json_error_code_t := BsonJsonErrorCodeT.
	bson_json_mode_t := BsonJsonModeT.
	bson_json_reader_cb := FFICallback.
	bson_json_destroy_cb := FFICallback.
	uint32_t_2 := FFIArray ofType: 'uint32_t' size: 2 requestor: self.
	uint32_t_4 := FFIArray ofType: 'uint32_t' size: 4 requestor: self.
	uint8_t_64 := FFIArray ofType: 'uint8_t' size: 64 requestor: self.
	bson_md5_t := BsonMd5T.
	uint8_t_16 := FFIArray ofType: 'uint8_t' size: 16 requestor: self.
	bson_realloc_func := FFICallback.
	void_pointer_3 := FFIArray ofType: 'void *' size: 3 requestor: self.
	_bson_mem_vtable_t := BsonMemVtableT.
	bson_mem_vtable_t := BsonMemVtableT.
	char_25 := FFIArray ofType: 'char' size: 25 requestor: self.
	bson_reader_read_func_t := FFICallback.
	bson_reader_destroy_func_t := FFICallback.
	bson_string_t := BsonStringT.
	char_6 := FFIArray ofType: 'char' size: 6 requestor: self.
	_bson_writer_t := BsonWriterT.
	bson_writer_t := BsonWriterT.
	bcon_type_t := BSONBconTypeT.
	bcon_append_ctx_frame := BSONBconAppendCtxFrame.
	bcon_append_ctx_frame_t := BSONBconAppendCtxFrame.
	bcon_extract_ctx_frame := BSONBconExtractCtxFrame.
	bcon_extract_ctx_frame_t := BSONBconExtractCtxFrame.
	bcon_append_ctx_frame_t_100 := FFIArray ofType: bcon_append_ctx_frame_t size: 100 requestor: self.
	_bcon_append_ctx_t := BSONBconAppendCtxT.
	bcon_append_ctx_t := BSONBconAppendCtxT.
	bcon_extract_ctx_frame_t_100 := FFIArray ofType: bcon_extract_ctx_frame_t size: 100 requestor: self.
	_bcon_extract_ctx_t := BSONBconExtractCtxT.
	bcon_extract_ctx_t := BSONBconExtractCtxT.
	_bson_array_builder_t := BsonArrayBuilderT.
	bson_array_builder_t := BsonArrayBuilderT
]
