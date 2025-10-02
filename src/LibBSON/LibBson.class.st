"
Bindings for [libbson](https://github.com/mongodb/mongo-c-driver/tree/master/src/libbson).

Generated with: ```smalltalk
CigCLibraryGenerator new
	packageName: 'LibBSON';
	prefix: 'BSON';
	libraryName: 'bson';
	unixLibraryName: 'libbson-1.0.so';
	cExcludePath: '/usr/include';
	cIncludePath: '/usr/include/libbson-1.0';
	importUnit: '
#include <bson/bson.h>';
	withNameGenerator: [ :gen | gen withoutPrefixInFunctionName ];
	withElementGenerator: [ :gen | 
		""strings returned are required to be freed by the user""
		gen makeAllFunctionsReturningStringReturnPointer.
		""this is deprecated anyway""
		gen removeElement: #bson_memory_order ];
	""as this will exchange with mongoc, we need to use the same thread (otherwise, 
	 it will crash as they do not share same memory pages)""
	useWorkerThreadNamed: 'mongoc';
	generate.
```
"
Class {
	#name : 'LibBson',
	#superclass : 'FFILibrary',
	#instVars : [
		'runner'
	],
	#pools : [
		'BSONConstants',
		'BSONTypedef'
	],
	#category : 'LibBSON-Library',
	#package : 'LibBSON',
	#tag : 'Library'
}

{ #category : 'public - bson-endian' }
LibBson >> __bson_double_swap_slow: v [

	^ self ffiCall: #(double __bson_double_swap_slow(double v))
]

{ #category : 'public - bson-endian' }
LibBson >> __bson_uint16_swap_slow: v [

	^ self ffiCall: #(uint16_t __bson_uint16_swap_slow(uint16_t v))
]

{ #category : 'public - bson-endian' }
LibBson >> __bson_uint32_swap_slow: v [

	^ self ffiCall: #(uint32_t __bson_uint32_swap_slow(uint32_t v))
]

{ #category : 'public - bson-endian' }
LibBson >> __bson_uint64_swap_slow: v [

	^ self ffiCall: #(uint64_t __bson_uint64_swap_slow(uint64_t v))
]

{ #category : 'public - bson-macros' }
LibBson >> _bson_assert_failed_on_lineFile: file line: line func: func test: test [

	self ffiCall: #(void _bson_assert_failed_on_line(const char* file, int line, const char* func, const char* test))
]

{ #category : 'public - bson-macros' }
LibBson >> _bson_assert_failed_on_param: param func: func [

	self ffiCall: #(void _bson_assert_failed_on_param(const char* param, const char* func))
]

{ #category : 'public - bson-atomic' }
LibBson >> _bson_emul_atomic_int32_compare_exchange_strongVal: val expect_value: expect_value new_value: new_value arg4: arg4 [

	^ self ffiCall: #(int32_t _bson_emul_atomic_int32_compare_exchange_strong(int32_t* val, int32_t expect_value, int32_t new_value, enum bson_memory_order arg4))
]

{ #category : 'public - bson-atomic' }
LibBson >> _bson_emul_atomic_int32_compare_exchange_weakVal: val expect_value: expect_value new_value: new_value arg4: arg4 [

	^ self ffiCall: #(int32_t _bson_emul_atomic_int32_compare_exchange_weak(int32_t* val, int32_t expect_value, int32_t new_value, enum bson_memory_order arg4))
]

{ #category : 'public - bson-atomic' }
LibBson >> _bson_emul_atomic_int32_exchangeVal: val v: v arg3: arg3 [

	^ self ffiCall: #(int32_t _bson_emul_atomic_int32_exchange(int32_t* val, int32_t v, enum bson_memory_order arg3))
]

{ #category : 'public - bson-atomic' }
LibBson >> _bson_emul_atomic_int32_fetch_addVal: val v: v arg3: arg3 [

	^ self ffiCall: #(int32_t _bson_emul_atomic_int32_fetch_add(int32_t* val, int32_t v, enum bson_memory_order arg3))
]

{ #category : 'public - bson-atomic' }
LibBson >> _bson_emul_atomic_int64_compare_exchange_strongVal: val expect_value: expect_value new_value: new_value arg4: arg4 [

	^ self ffiCall: #(int64_t _bson_emul_atomic_int64_compare_exchange_strong(int64_t* val, int64_t expect_value, int64_t new_value, enum bson_memory_order arg4))
]

{ #category : 'public - bson-atomic' }
LibBson >> _bson_emul_atomic_int64_compare_exchange_weakVal: val expect_value: expect_value new_value: new_value arg4: arg4 [

	^ self ffiCall: #(int64_t _bson_emul_atomic_int64_compare_exchange_weak(int64_t* val, int64_t expect_value, int64_t new_value, enum bson_memory_order arg4))
]

{ #category : 'public - bson-atomic' }
LibBson >> _bson_emul_atomic_int64_exchangeVal: val v: v arg3: arg3 [

	^ self ffiCall: #(int64_t _bson_emul_atomic_int64_exchange(int64_t* val, int64_t v, enum bson_memory_order arg3))
]

{ #category : 'public - bson-atomic' }
LibBson >> _bson_emul_atomic_int64_fetch_addVal: val v: v arg3: arg3 [

	^ self ffiCall: #(int64_t _bson_emul_atomic_int64_fetch_add(int64_t* val, int64_t v, enum bson_memory_order arg3))
]

{ #category : 'public - bson-atomic' }
LibBson >> _bson_emul_atomic_int_compare_exchange_strongVal: val expect_value: expect_value new_value: new_value arg4: arg4 [

	^ self ffiCall: #(int _bson_emul_atomic_int_compare_exchange_strong(int* val, int expect_value, int new_value, enum bson_memory_order arg4))
]

{ #category : 'public - bson-atomic' }
LibBson >> _bson_emul_atomic_int_compare_exchange_weakVal: val expect_value: expect_value new_value: new_value arg4: arg4 [

	^ self ffiCall: #(int _bson_emul_atomic_int_compare_exchange_weak(int* val, int expect_value, int new_value, enum bson_memory_order arg4))
]

{ #category : 'public - bson-atomic' }
LibBson >> _bson_emul_atomic_int_exchangeVal: val v: v arg3: arg3 [

	^ self ffiCall: #(int _bson_emul_atomic_int_exchange(int* val, int v, enum bson_memory_order arg3))
]

{ #category : 'public - bson-atomic' }
LibBson >> _bson_emul_atomic_int_fetch_addVal: val v: v arg3: arg3 [

	^ self ffiCall: #(int _bson_emul_atomic_int_fetch_add(int* val, int v, enum bson_memory_order arg3))
]

{ #category : 'public - bson-atomic' }
LibBson >> _bson_emul_atomic_ptr_exchangeVal: val v: v arg3: arg3 [

	^ self ffiCall: #(void* _bson_emul_atomic_ptr_exchange(void* val, void* v, enum bson_memory_order arg3))
]

{ #category : 'public - bson-memory' }
LibBson >> aligned_alloc0Alignment: alignment num_bytes: num_bytes [

	^ self ffiCall: #(void* bson_aligned_alloc0(size_t alignment, size_t num_bytes))
]

{ #category : 'public - bson-memory' }
LibBson >> aligned_allocAlignment: alignment num_bytes: num_bytes [

	^ self ffiCall: #(void* bson_aligned_alloc(size_t alignment, size_t num_bytes))
]

{ #category : 'public - bson' }
LibBson >> append_arrayBson: bson key: key key_length: key_length array: array [
	"/**
	 * bson_append_array:
	 * @bson: A bson_t.
	 * @key: The key for the field.
	 * @array: A bson_t containing the array.
	 *
	 * Appends a BSON array to @bson. BSON arrays are like documents where the
	 * key is the string version of the index. For example, the first item of the
	 * array would have the key ""0"". The second item would have the index ""1"".
	 *
	 * Returns: true if successful; false if append would overflow max size.
	 */"

	^ self ffiCall: #(int bson_append_array(bson_t* bson, const char* key, int key_length, const bson_t* array))
]

{ #category : 'public - bson' }
LibBson >> append_array_beginBson: bson key: key key_length: key_length child: child [
	"/**
	 * bson_append_array_begin:
	 * @bson: A bson_t.
	 * @key: The key for the field.
	 * @key_length: The length of @key in bytes not including NUL or -1
	 *    if @key_length is NUL terminated.
	 * @child: A location to an uninitialized bson_t.
	 *
	 * Appends a new field named @key to @bson. The field is, however,
	 * incomplete. @child will be initialized so that you may add fields to the
	 * child array. Child will use a memory buffer owned by @bson and
	 * therefore grow the parent buffer as additional space is used. This allows
	 * a single malloc'd buffer to be used when building arrays which can help
	 * reduce memory fragmentation.
	 *
	 * The type of @child will be BSON_TYPE_ARRAY and therefore the keys inside
	 * of it MUST be ""0"", ""1"", etc.
	 *
	 * Returns: true if successful; false if append would overflow max size.
	 */"

	^ self ffiCall: #(int bson_append_array_begin(bson_t* bson, const char* key, int key_length, bson_t* child))
]

{ #category : 'public - bson' }
LibBson >> append_array_builder_beginBson: bson key: key key_length: key_length child: child [

	^ self ffiCall: #(int bson_append_array_builder_begin(bson_t* bson, const char* key, int key_length, bson_array_builder_t** child))
]

{ #category : 'public - bson' }
LibBson >> append_array_builder_endBson: bson child: child [

	^ self ffiCall: #(int bson_append_array_builder_end(bson_t* bson, bson_array_builder_t* child))
]

{ #category : 'public - bson' }
LibBson >> append_array_endBson: bson child: child [
	"/**
	 * bson_append_array_end:
	 * @bson: A bson_t.
	 * @child: A bson_t supplied to bson_append_array_begin().
	 *
	 * Finishes the appending of a array to a @bson. @child is considered
	 * disposed after this call and should not be used any further.
	 *
	 * Returns: true if successful; false if append would overflow max size.
	 */"

	^ self ffiCall: #(int bson_append_array_end(bson_t* bson, bson_t* child))
]

{ #category : 'public - bson' }
LibBson >> append_binaryBson: bson key: key key_length: key_length subtype: subtype binary: binary length: length [
	"/**
	 * bson_append_binary:
	 * @bson: A bson_t to append.
	 * @key: The key for the field.
	 * @subtype: The bson_subtype_t of the binary.
	 * @binary: The binary buffer to append.
	 * @length: The length of @binary.
	 *
	 * Appends a binary buffer to the BSON document.
	 *
	 * Returns: true if successful; false if append would overflow max size.
	 */"

	^ self ffiCall: #(int bson_append_binary(bson_t* bson, const char* key, int key_length, bson_subtype_t subtype, const uint8_t* binary, uint32_t length))
]

{ #category : 'public - bson' }
LibBson >> append_boolBson: bson key: key key_length: key_length value: value [
	"/**
	 * bson_append_bool:
	 * @bson: A bson_t.
	 * @key: The key for the field.
	 * @value: The boolean value.
	 *
	 * Appends a new field to @bson of type BSON_TYPE_BOOL.
	 *
	 * Returns: true if successful; false if append would overflow max size.
	 */"

	^ self ffiCall: #(int bson_append_bool(bson_t* bson, const char* key, int key_length, int value))
]

{ #category : 'public - bson' }
LibBson >> append_codeBson: bson key: key key_length: key_length javascript: javascript [
	"/**
	 * bson_append_code:
	 * @bson: A bson_t.
	 * @key: The key for the document.
	 * @javascript: JavaScript code to be executed.
	 *
	 * Appends a field of type BSON_TYPE_CODE to the BSON document. @javascript
	 * should contain a script in javascript to be executed.
	 *
	 * Returns: true if successful; false if append would overflow max size.
	 */"

	^ self ffiCall: #(int bson_append_code(bson_t* bson, const char* key, int key_length, const char* javascript))
]

{ #category : 'public - bson' }
LibBson >> append_code_with_scopeBson: bson key: key key_length: key_length javascript: javascript scope: scope [
	"/**
	 * bson_append_code_with_scope:
	 * @bson: A bson_t.
	 * @key: The key for the document.
	 * @javascript: JavaScript code to be executed.
	 * @scope: A bson_t containing the scope for @javascript.
	 *
	 * Appends a field of type BSON_TYPE_CODEWSCOPE to the BSON document.
	 * @javascript should contain a script in javascript to be executed.
	 *
	 * Returns: true if successful; false if append would overflow max size.
	 */"

	^ self ffiCall: #(int bson_append_code_with_scope(bson_t* bson, const char* key, int key_length, const char* javascript, const bson_t* scope))
]

{ #category : 'public - bson' }
LibBson >> append_date_timeBson: bson key: key key_length: key_length value: value [
	"/**
	 * bson_append_date_time:
	 * @bson: A bson_t.
	 * @key: The key for the field.
	 * @key_length: The length of @key in bytes or -1 if \0 terminated.
	 * @value: The number of milliseconds elapsed since UNIX epoch.
	 *
	 * Appends a new field to @bson of type BSON_TYPE_DATE_TIME.
	 *
	 * Returns: true if successful; otherwise false.
	 */"

	^ self ffiCall: #(int bson_append_date_time(bson_t* bson, const char* key, int key_length, int64_t value))
]

{ #category : 'public - bson' }
LibBson >> append_dbpointerBson: bson key: key key_length: key_length collection: collection oid: oid [
	"/**
	 * bson_append_dbpointer:
	 * @bson: A bson_t.
	 * @key: The key for the field.
	 * @collection: The collection name.
	 * @oid: The oid to the reference.
	 *
	 * Appends a new field of type BSON_TYPE_DBPOINTER. This datum type is
	 * deprecated in the BSON spec and should not be used in new code.
	 *
	 * Returns: true if successful; false if append would overflow max size.
	 */"

	^ self ffiCall: #(int bson_append_dbpointer(bson_t* bson, const char* key, int key_length, const char* collection, bson_oid_t* oid))
]

{ #category : 'public - bson' }
LibBson >> append_decimal128Bson: bson key: key key_length: key_length value: value [
	"/**
	 * bson_append_decimal128:
	 * @bson: A bson_t.
	 * @key: The key for the field.
	 * @value: The bson_decimal128_t decimal128 value.
	 *
	 * Appends a new field of type BSON_TYPE_DECIMAL128 to @bson.
	 *
	 * Returns: true if successful; false if append would overflow max size.
	 */"

	^ self ffiCall: #(int bson_append_decimal128(bson_t* bson, const char* key, int key_length, bson_decimal128_t* value))
]

{ #category : 'public - bson' }
LibBson >> append_documentBson: bson key: key key_length: key_length value: value [
	"/**
	 * bson_append_document:
	 * @bson: A bson_t.
	 * @key: The key for the field.
	 * @value: A bson_t containing the subdocument.
	 *
	 * Appends a new field to @bson of the type BSON_TYPE_DOCUMENT.
	 * The documents contents will be copied into @bson.
	 *
	 * Returns: true if successful; false if append would overflow max size.
	 */"

	^ self ffiCall: #(int bson_append_document(bson_t* bson, const char* key, int key_length, const bson_t* value))
]

{ #category : 'public - bson' }
LibBson >> append_document_beginBson: bson key: key key_length: key_length child: child [
	"/**
	 * bson_append_document_begin:
	 * @bson: A bson_t.
	 * @key: The key for the field.
	 * @key_length: The length of @key in bytes not including NUL or -1
	 *    if @key_length is NUL terminated.
	 * @child: A location to an uninitialized bson_t.
	 *
	 * Appends a new field named @key to @bson. The field is, however,
	 * incomplete.  @child will be initialized so that you may add fields to the
	 * child document.  Child will use a memory buffer owned by @bson and
	 * therefore grow the parent buffer as additional space is used. This allows
	 * a single malloc'd buffer to be used when building documents which can help
	 * reduce memory fragmentation.
	 *
	 * Returns: true if successful; false if append would overflow max size.
	 */"

	^ self ffiCall: #(int bson_append_document_begin(bson_t* bson, const char* key, int key_length, bson_t* child))
]

{ #category : 'public - bson' }
LibBson >> append_document_endBson: bson child: child [
	"/**
	 * bson_append_document_end:
	 * @bson: A bson_t.
	 * @child: A bson_t supplied to bson_append_document_begin().
	 *
	 * Finishes the appending of a document to a @bson. @child is considered
	 * disposed after this call and should not be used any further.
	 *
	 * Returns: true if successful; false if append would overflow max size.
	 */"

	^ self ffiCall: #(int bson_append_document_end(bson_t* bson, bson_t* child))
]

{ #category : 'public - bson' }
LibBson >> append_doubleBson: bson key: key key_length: key_length value: value [
	"/**
	 * bson_append_double:
	 * @bson: A bson_t.
	 * @key: The key for the field.
	 *
	 * Appends a new field to @bson of the type BSON_TYPE_DOUBLE.
	 *
	 * Returns: true if successful; false if append would overflow max size.
	 */"

	^ self ffiCall: #(int bson_append_double(bson_t* bson, const char* key, int key_length, double value))
]

{ #category : 'public - bson' }
LibBson >> append_int32Bson: bson key: key key_length: key_length value: value [
	"/**
	 * bson_append_int32:
	 * @bson: A bson_t.
	 * @key: The key for the field.
	 * @value: The int32_t 32-bit integer value.
	 *
	 * Appends a new field of type BSON_TYPE_INT32 to @bson.
	 *
	 * Returns: true if successful; false if append would overflow max size.
	 */"

	^ self ffiCall: #(int bson_append_int32(bson_t* bson, const char* key, int key_length, int32_t value))
]

{ #category : 'public - bson' }
LibBson >> append_int64Bson: bson key: key key_length: key_length value: value [
	"/**
	 * bson_append_int64:
	 * @bson: A bson_t.
	 * @key: The key for the field.
	 * @value: The int64_t 64-bit integer value.
	 *
	 * Appends a new field of type BSON_TYPE_INT64 to @bson.
	 *
	 * Returns: true if successful; false if append would overflow max size.
	 */"

	^ self ffiCall: #(int bson_append_int64(bson_t* bson, const char* key, int key_length, int64_t value))
]

{ #category : 'public - bson' }
LibBson >> append_iterBson: bson key: key key_length: key_length iter: iter [
	"/**
	 * bson_append_iter:
	 * @bson: A bson_t to append to.
	 * @key: The key name or %NULL to take current key from @iter.
	 * @key_length: The key length or -1 to use strlen().
	 * @iter: The iter located on the position of the element to append.
	 *
	 * Appends a new field to @bson that is equivalent to the field currently
	 * pointed to by @iter.
	 *
	 * Returns: true if successful; false if append would overflow max size.
	 */"

	^ self ffiCall: #(int bson_append_iter(bson_t* bson, const char* key, int key_length, const bson_iter_t* iter))
]

{ #category : 'public - bson' }
LibBson >> append_maxkeyBson: bson key: key key_length: key_length [
	"/**
	 * bson_append_maxkey:
	 * @bson: A bson_t.
	 * @key: The key for the field.
	 *
	 * Appends a new field of type BSON_TYPE_MAXKEY to @bson. This is a special
	 * type that compares higher than all other possible BSON element values.
	 *
	 * See http://bsonspec.org for more information on this type.
	 *
	 * Returns: true if successful; false if append would overflow max size.
	 */"

	^ self ffiCall: #(int bson_append_maxkey(bson_t* bson, const char* key, int key_length))
]

{ #category : 'public - bson' }
LibBson >> append_minkeyBson: bson key: key key_length: key_length [
	"/**
	 * bson_append_minkey:
	 * @bson: A bson_t.
	 * @key: The key for the field.
	 *
	 * Appends a new field of type BSON_TYPE_MINKEY to @bson. This is a special
	 * type that compares lower than all other possible BSON element values.
	 *
	 * See http://bsonspec.org for more information on this type.
	 *
	 * Returns: true if successful; false if append would overflow max size.
	 */"

	^ self ffiCall: #(int bson_append_minkey(bson_t* bson, const char* key, int key_length))
]

{ #category : 'public - bson' }
LibBson >> append_now_utcBson: bson key: key key_length: key_length [
	"/**
	 * bson_append_now_utc:
	 * @bson: A bson_t.
	 * @key: The key for the field.
	 * @key_length: The length of @key or -1 if it is NULL terminated.
	 *
	 * Appends a BSON_TYPE_DATE_TIME field to @bson using the current time in UTC
	 * as the field value.
	 *
	 * Returns: true if successful; false if append would overflow max size.
	 */"

	^ self ffiCall: #(int bson_append_now_utc(bson_t* bson, const char* key, int key_length))
]

{ #category : 'public - bson' }
LibBson >> append_nullBson: bson key: key key_length: key_length [
	"/**
	 * bson_append_null:
	 * @bson: A bson_t.
	 * @key: The key for the field.
	 *
	 * Appends a new field to @bson with NULL for the value.
	 *
	 * Returns: true if successful; false if append would overflow max size.
	 */"

	^ self ffiCall: #(int bson_append_null(bson_t* bson, const char* key, int key_length))
]

{ #category : 'public - bson' }
LibBson >> append_oidBson: bson key: key key_length: key_length oid: oid [
	"/**
	 * bson_append_oid:
	 * @bson: A bson_t.
	 * @key: The key for the field.
	 * @oid: bson_oid_t.
	 *
	 * Appends a new field to the @bson of type BSON_TYPE_OID using the contents of
	 * @oid.
	 *
	 * Returns: true if successful; false if append would overflow max size.
	 */"

	^ self ffiCall: #(int bson_append_oid(bson_t* bson, const char* key, int key_length, bson_oid_t* oid))
]

{ #category : 'public - bson' }
LibBson >> append_regexBson: bson key: key key_length: key_length regex: regex options: options [
	"/**
	 * bson_append_regex:
	 * @bson: A bson_t.
	 * @key: The key of the field.
	 * @regex: The regex to append to the bson.
	 * @options: Options for @regex.
	 *
	 * Appends a new field to @bson of type BSON_TYPE_REGEX. @regex should
	 * be the regex string. @options should contain the options for the regex.
	 *
	 * Valid options for @options are:
	 *
	 *   'i' for case-insensitive.
	 *   'm' for multiple matching.
	 *   'x' for verbose mode.
	 *   'l' to make \w and \W locale dependent.
	 *   's' for dotall mode ('.' matches everything)
	 *   'u' to make \w and \W match unicode.
	 *
	 * For more detailed information about BSON regex elements, see bsonspec.org.
	 *
	 * Returns: true if successful; false if append would overflow max size.
	 */"

	^ self ffiCall: #(int bson_append_regex(bson_t* bson, const char* key, int key_length, const char* regex, const char* options))
]

{ #category : 'public - bson' }
LibBson >> append_regex_w_lenBson: bson key: key key_length: key_length regex: regex regex_length: regex_length options: options [
	"/**
	 * bson_append_regex:
	 * @bson: A bson_t.
	 * @key: The key of the field.
	 * @key_length: The length of the key string.
	 * @regex: The regex to append to the bson.
	 * @regex_length: The length of the regex string.
	 * @options: Options for @regex.
	 *
	 * Appends a new field to @bson of type BSON_TYPE_REGEX. @regex should
	 * be the regex string. @options should contain the options for the regex.
	 *
	 * Valid options for @options are:
	 *
	 *   'i' for case-insensitive.
	 *   'm' for multiple matching.
	 *   'x' for verbose mode.
	 *   'l' to make \w and \W locale dependent.
	 *   's' for dotall mode ('.' matches everything)
	 *   'u' to make \w and \W match unicode.
	 *
	 * For more detailed information about BSON regex elements, see bsonspec.org.
	 *
	 * Returns: true if successful; false if append would overflow max size.
	 */"

	^ self ffiCall: #(int bson_append_regex_w_len(bson_t* bson, const char* key, int key_length, const char* regex, int regex_length, const char* options))
]

{ #category : 'public - bson' }
LibBson >> append_symbolBson: bson key: key key_length: key_length value: value length: length [
	"/**
	 * bson_append_symbol:
	 * @bson: A bson_t.
	 * @key: The key for the field.
	 * @value: The symbol as a string.
	 * @length: The length of @value or -1 if NUL-terminated.
	 *
	 * Appends a new field to @bson of type BSON_TYPE_SYMBOL. This BSON type is
	 * deprecated and should not be used in new code.
	 *
	 * See http://bsonspec.org for more information on this type.
	 *
	 * Returns: true if successful; false if append would overflow max size.
	 */"

	^ self ffiCall: #(int bson_append_symbol(bson_t* bson, const char* key, int key_length, const char* value, int length))
]

{ #category : 'public - bson' }
LibBson >> append_time_tBson: bson key: key key_length: key_length value: value [
	"/**
	 * bson_append_time_t:
	 * @bson: A bson_t.
	 * @key: The key for the field.
	 * @value: A time_t.
	 *
	 * Appends a BSON_TYPE_DATE_TIME field to @bson using the time_t @value for the
	 * number of seconds since UNIX epoch in UTC.
	 *
	 * Returns: true if successful; false if append would overflow max size.
	 */"

	^ self ffiCall: #(int bson_append_time_t(bson_t* bson, const char* key, int key_length, time_t value))
]

{ #category : 'public - bson' }
LibBson >> append_timestampBson: bson key: key key_length: key_length timestamp: timestamp increment: increment [
	"/**
	 * bson_append_timestamp:
	 * @bson: A bson_t.
	 * @key: The key for the field.
	 * @timestamp: 4 byte timestamp.
	 * @increment: 4 byte increment for timestamp.
	 *
	 * Appends a field of type BSON_TYPE_TIMESTAMP to @bson. This is a special type
	 * used by MongoDB replication and sharding. If you need generic time and date
	 * fields use bson_append_time_t() or bson_append_timeval().
	 *
	 * Setting @increment and @timestamp to zero has special semantics. See
	 * http://bsonspec.org for more information on this field type.
	 *
	 * Returns: true if successful; false if append would overflow max size.
	 */"

	^ self ffiCall: #(int bson_append_timestamp(bson_t* bson, const char* key, int key_length, uint32_t timestamp, uint32_t increment))
]

{ #category : 'public - bson' }
LibBson >> append_timevalBson: bson key: key key_length: key_length value: value [
	"/**
	 * bson_append_timeval:
	 * @bson: A bson_t.
	 * @key: The key for the field.
	 * @value: A struct timeval containing the date and time.
	 *
	 * Appends a BSON_TYPE_DATE_TIME field to @bson using the struct timeval
	 * provided. The time is persisted in milliseconds since the UNIX epoch in UTC.
	 *
	 * Returns: true if successful; false if append would overflow max size.
	 */"

	^ self ffiCall: #(int bson_append_timeval(bson_t* bson, const char* key, int key_length, struct timeval* value))
]

{ #category : 'public - bson' }
LibBson >> append_undefinedBson: bson key: key key_length: key_length [
	"/**
	 * bson_append_undefined:
	 * @bson: A bson_t.
	 * @key: The key for the field.
	 *
	 * Appends a field of type BSON_TYPE_UNDEFINED. This type is deprecated in the
	 * spec and should not be used for new code. However, it is provided for those
	 * needing to interact with legacy systems.
	 *
	 * Returns: true if successful; false if append would overflow max size.
	 */"

	^ self ffiCall: #(int bson_append_undefined(bson_t* bson, const char* key, int key_length))
]

{ #category : 'public - bson' }
LibBson >> append_utf8Bson: bson key: key key_length: key_length value: value length: length [
	"/**
	 * bson_append_utf8:
	 * @bson: A bson_t.
	 * @key: The key for the field.
	 * @value: A UTF-8 encoded string.
	 * @length: The length of @value or -1 if it is NUL terminated.
	 *
	 * Appends a new field to @bson using @key as the key and @value as the UTF-8
	 * encoded value.
	 *
	 * It is the callers responsibility to ensure @value is valid UTF-8. You can
	 * use bson_utf8_validate() to perform this check.
	 *
	 * Returns: true if successful; false if append would overflow max size.
	 */"

	^ self ffiCall: #(int bson_append_utf8(bson_t* bson, const char* key, int key_length, const char* value, int length))
]

{ #category : 'public - bson' }
LibBson >> append_valueBson: bson key: key key_length: key_length value: value [

	^ self ffiCall: #(int bson_append_value(bson_t* bson, const char* key, int key_length, const bson_value_t* value))
]

{ #category : 'public - bson' }
LibBson >> array_as_canonical_extended_jsonBson: bson length: length [

	^ self ffiCall: #(void* bson_array_as_canonical_extended_json(const bson_t* bson, size_t* length))
]

{ #category : 'public - bson' }
LibBson >> array_as_jsonBson: bson length: length [

	^ self ffiCall: #(void* bson_array_as_json(const bson_t* bson, size_t* length))
]

{ #category : 'public - bson' }
LibBson >> array_as_legacy_extended_jsonBson: bson length: length [

	^ self ffiCall: #(void* bson_array_as_legacy_extended_json(const bson_t* bson, size_t* length))
]

{ #category : 'public - bson' }
LibBson >> array_as_relaxed_extended_jsonBson: bson length: length [

	^ self ffiCall: #(void* bson_array_as_relaxed_extended_json(const bson_t* bson, size_t* length))
]

{ #category : 'public - bson' }
LibBson >> array_builder_append_arrayBab: bab array: array [

	^ self ffiCall: #(int bson_array_builder_append_array(bson_array_builder_t* bab, const bson_t* array))
]

{ #category : 'public - bson' }
LibBson >> array_builder_append_array_builder_beginBab: bab child: child [

	^ self ffiCall: #(int bson_array_builder_append_array_builder_begin(bson_array_builder_t* bab, bson_array_builder_t** child))
]

{ #category : 'public - bson' }
LibBson >> array_builder_append_array_builder_endBab: bab child: child [

	^ self ffiCall: #(int bson_array_builder_append_array_builder_end(bson_array_builder_t* bab, bson_array_builder_t* child))
]

{ #category : 'public - bson' }
LibBson >> array_builder_append_binaryBab: bab subtype: subtype binary: binary length: length [

	^ self ffiCall: #(int bson_array_builder_append_binary(bson_array_builder_t* bab, bson_subtype_t subtype, const uint8_t* binary, uint32_t length))
]

{ #category : 'public - bson' }
LibBson >> array_builder_append_boolBab: bab value: value [

	^ self ffiCall: #(int bson_array_builder_append_bool(bson_array_builder_t* bab, int value))
]

{ #category : 'public - bson' }
LibBson >> array_builder_append_codeBab: bab javascript: javascript [

	^ self ffiCall: #(int bson_array_builder_append_code(bson_array_builder_t* bab, const char* javascript))
]

{ #category : 'public - bson' }
LibBson >> array_builder_append_code_with_scopeBab: bab javascript: javascript scope: scope [

	^ self ffiCall: #(int bson_array_builder_append_code_with_scope(bson_array_builder_t* bab, const char* javascript, const bson_t* scope))
]

{ #category : 'public - bson' }
LibBson >> array_builder_append_date_timeBab: bab value: value [

	^ self ffiCall: #(int bson_array_builder_append_date_time(bson_array_builder_t* bab, int64_t value))
]

{ #category : 'public - bson' }
LibBson >> array_builder_append_dbpointerBab: bab collection: collection oid: oid [

	^ self ffiCall: #(int bson_array_builder_append_dbpointer(bson_array_builder_t* bab, const char* collection, bson_oid_t* oid))
]

{ #category : 'public - bson' }
LibBson >> array_builder_append_decimal128Bab: bab value: value [

	^ self ffiCall: #(int bson_array_builder_append_decimal128(bson_array_builder_t* bab, bson_decimal128_t* value))
]

{ #category : 'public - bson' }
LibBson >> array_builder_append_documentBab: bab value: value [

	^ self ffiCall: #(int bson_array_builder_append_document(bson_array_builder_t* bab, const bson_t* value))
]

{ #category : 'public - bson' }
LibBson >> array_builder_append_document_beginBab: bab child: child [

	^ self ffiCall: #(int bson_array_builder_append_document_begin(bson_array_builder_t* bab, bson_t* child))
]

{ #category : 'public - bson' }
LibBson >> array_builder_append_document_endBab: bab child: child [

	^ self ffiCall: #(int bson_array_builder_append_document_end(bson_array_builder_t* bab, bson_t* child))
]

{ #category : 'public - bson' }
LibBson >> array_builder_append_doubleBab: bab value: value [

	^ self ffiCall: #(int bson_array_builder_append_double(bson_array_builder_t* bab, double value))
]

{ #category : 'public - bson' }
LibBson >> array_builder_append_int32Bab: bab value: value [

	^ self ffiCall: #(int bson_array_builder_append_int32(bson_array_builder_t* bab, int32_t value))
]

{ #category : 'public - bson' }
LibBson >> array_builder_append_int64Bab: bab value: value [

	^ self ffiCall: #(int bson_array_builder_append_int64(bson_array_builder_t* bab, int64_t value))
]

{ #category : 'public - bson' }
LibBson >> array_builder_append_iterBab: bab iter: iter [

	^ self ffiCall: #(int bson_array_builder_append_iter(bson_array_builder_t* bab, const bson_iter_t* iter))
]

{ #category : 'public - bson' }
LibBson >> array_builder_append_maxkey: bab [

	^ self ffiCall: #(int bson_array_builder_append_maxkey(bson_array_builder_t* bab))
]

{ #category : 'public - bson' }
LibBson >> array_builder_append_minkey: bab [

	^ self ffiCall: #(int bson_array_builder_append_minkey(bson_array_builder_t* bab))
]

{ #category : 'public - bson' }
LibBson >> array_builder_append_now_utc: bab [

	^ self ffiCall: #(int bson_array_builder_append_now_utc(bson_array_builder_t* bab))
]

{ #category : 'public - bson' }
LibBson >> array_builder_append_null: bab [

	^ self ffiCall: #(int bson_array_builder_append_null(bson_array_builder_t* bab))
]

{ #category : 'public - bson' }
LibBson >> array_builder_append_oidBab: bab oid: oid [

	^ self ffiCall: #(int bson_array_builder_append_oid(bson_array_builder_t* bab, bson_oid_t* oid))
]

{ #category : 'public - bson' }
LibBson >> array_builder_append_regexBab: bab regex: regex options: options [

	^ self ffiCall: #(int bson_array_builder_append_regex(bson_array_builder_t* bab, const char* regex, const char* options))
]

{ #category : 'public - bson' }
LibBson >> array_builder_append_regex_w_lenBab: bab regex: regex regex_length: regex_length options: options [

	^ self ffiCall: #(int bson_array_builder_append_regex_w_len(bson_array_builder_t* bab, const char* regex, int regex_length, const char* options))
]

{ #category : 'public - bson' }
LibBson >> array_builder_append_symbolBab: bab value: value length: length [

	^ self ffiCall: #(int bson_array_builder_append_symbol(bson_array_builder_t* bab, const char* value, int length))
]

{ #category : 'public - bson' }
LibBson >> array_builder_append_time_tBab: bab value: value [

	^ self ffiCall: #(int bson_array_builder_append_time_t(bson_array_builder_t* bab, time_t value))
]

{ #category : 'public - bson' }
LibBson >> array_builder_append_timestampBab: bab timestamp: timestamp increment: increment [

	^ self ffiCall: #(int bson_array_builder_append_timestamp(bson_array_builder_t* bab, uint32_t timestamp, uint32_t increment))
]

{ #category : 'public - bson' }
LibBson >> array_builder_append_timevalBab: bab value: value [

	^ self ffiCall: #(int bson_array_builder_append_timeval(bson_array_builder_t* bab, struct timeval* value))
]

{ #category : 'public - bson' }
LibBson >> array_builder_append_undefined: bab [

	^ self ffiCall: #(int bson_array_builder_append_undefined(bson_array_builder_t* bab))
]

{ #category : 'public - bson' }
LibBson >> array_builder_append_utf8Bab: bab value: value length: length [

	^ self ffiCall: #(int bson_array_builder_append_utf8(bson_array_builder_t* bab, const char* value, int length))
]

{ #category : 'public - bson' }
LibBson >> array_builder_append_valueBab: bab value: value [

	^ self ffiCall: #(int bson_array_builder_append_value(bson_array_builder_t* bab, const bson_value_t* value))
]

{ #category : 'public - bson' }
LibBson >> array_builder_buildBab: bab out: out [

	^ self ffiCall: #(int bson_array_builder_build(bson_array_builder_t* bab, bson_t* out))
]

{ #category : 'public - bson' }
LibBson >> array_builder_destroy: bab [

	self ffiCall: #(void bson_array_builder_destroy(bson_array_builder_t* bab))
]

{ #category : 'public - bson' }
LibBson >> array_builder_new [

	^ self ffiCall: #(bson_array_builder_t* bson_array_builder_new())
]

{ #category : 'public - bson' }
LibBson >> as_canonical_extended_jsonBson: bson length: length [
	"/**
	 * bson_as_canonical_extended_json:
	 * @bson: A bson_t.
	 * @length: A location for the string length, or NULL.
	 *
	 * Creates a new string containing @bson in canonical extended JSON format,
	 * conforming to the MongoDB Extended JSON Spec:
	 *
	 * github.com/mongodb/specifications/blob/master/source/extended-json.rst
	 *
	 * The caller is responsible for freeing the resulting string. If @length is
	 * non-NULL, then the length of the resulting string will be placed in @length.
	 *
	 * See https://www.mongodb.com/docs/manual/reference/mongodb-extended-json/ for
	 * more information on extended JSON.
	 *
	 * Returns: A newly allocated string that should be freed with bson_free().
	 */"

	^ self ffiCall: #(void* bson_as_canonical_extended_json(const bson_t* bson, size_t* length))
]

{ #category : 'public - bson' }
LibBson >> as_jsonBson: bson length: length [
	"/**
	 * bson_as_json:
	 * @bson: A bson_t.
	 * @length: A location for the string length, or NULL.
	 *
	 * Creates a new string containing @bson in libbson's legacy JSON format.
	 * Superseded by bson_as_canonical_extended_json and
	 * bson_as_relaxed_extended_json. The caller is
	 * responsible for freeing the resulting string. If @length is non-NULL, then
	 * the length of the resulting string will be placed in @length.
	 *
	 * Returns: A newly allocated string that should be freed with bson_free().
	 */"

	^ self ffiCall: #(void* bson_as_json(const bson_t* bson, size_t* length))
]

{ #category : 'public - bson' }
LibBson >> as_json_with_optsBson: bson length: length opts: opts [
	"/**
	 * bson_as_json_with_opts:
	 * @bson: A bson_t.
	 * @length: A location for the string length, or NULL.
	 * @opts: A bson_t_json_opts_t defining options for the conversion
	 *
	 * Creates a new string containing @bson in the selected JSON format,
	 * conforming to the MongoDB Extended JSON Spec:
	 *
	 * github.com/mongodb/specifications/blob/master/source/extended-json.rst
	 *
	 * The caller is responsible for freeing the resulting string. If @length is
	 * non-NULL, then the length of the resulting string will be placed in @length.
	 *
	 * See https://www.mongodb.com/docs/manual/reference/mongodb-extended-json/ for
	 * more information on extended JSON.
	 *
	 * Returns: A newly allocated string that should be freed with bson_free().
	 */"

	^ self ffiCall: #(void* bson_as_json_with_opts(const bson_t* bson, size_t* length, const bson_json_opts_t* opts))
]

{ #category : 'public - bson' }
LibBson >> as_legacy_extended_jsonBson: bson length: length [

	^ self ffiCall: #(void* bson_as_legacy_extended_json(const bson_t* bson, size_t* length))
]

{ #category : 'public - bson' }
LibBson >> as_relaxed_extended_jsonBson: bson length: length [
	"/**
	 * bson_as_relaxed_extended_json:
	 * @bson: A bson_t.
	 * @length: A location for the string length, or NULL.
	 *
	 * Creates a new string containing @bson in relaxed extended JSON format,
	 * conforming to the MongoDB Extended JSON Spec:
	 *
	 * github.com/mongodb/specifications/blob/master/source/extended-json.rst
	 *
	 * The caller is responsible for freeing the resulting string. If @length is
	 * non-NULL, then the length of the resulting string will be placed in @length.
	 *
	 * See https://www.mongodb.com/docs/manual/reference/mongodb-extended-json/ for
	 * more information on extended JSON.
	 *
	 * Returns: A newly allocated string that should be freed with bson_free().
	 */"

	^ self ffiCall: #(void* bson_as_relaxed_extended_json(const bson_t* bson, size_t* length))
]

{ #category : 'public - bson-string' }
LibBson >> ascii_strtollStr: str endptr: endptr base: base [

	^ self ffiCall: #(int64_t bson_ascii_strtoll(const char* str, char** endptr, int base))
]

{ #category : 'public - bson-atomic' }
LibBson >> atomic_int64_addP: p n: n [

	^ self ffiCall: #(int64_t bson_atomic_int64_add(int64_t* p, int64_t n))
]

{ #category : 'public - bson-atomic' }
LibBson >> atomic_int_addP: p n: n [

	^ self ffiCall: #(int32_t bson_atomic_int_add(int32_t* p, int32_t n))
]

{ #category : 'public - bson-atomic' }
LibBson >> atomic_ptr_compare_exchange_strongPtr: ptr expect: expect new_value: new_value ord: ord [

	^ self ffiCall: #(void* bson_atomic_ptr_compare_exchange_strong(void* ptr, void* expect, void* new_value, enum bson_memory_order ord))
]

{ #category : 'public - bson-atomic' }
LibBson >> atomic_ptr_compare_exchange_weakPtr: ptr expect: expect new_value: new_value ord: ord [

	^ self ffiCall: #(void* bson_atomic_ptr_compare_exchange_weak(void* ptr, void* expect, void* new_value, enum bson_memory_order ord))
]

{ #category : 'public - bson-atomic' }
LibBson >> atomic_ptr_exchangePtr: ptr new_value: new_value ord: ord [

	^ self ffiCall: #(void* bson_atomic_ptr_exchange(void* ptr, void* new_value, enum bson_memory_order ord))
]

{ #category : 'public - bson-atomic' }
LibBson >> atomic_ptr_fetchPtr: ptr ord: ord [

	^ self ffiCall: #(void* bson_atomic_ptr_fetch(void* ptr, enum bson_memory_order ord))
]

{ #category : 'public - bson-atomic' }
LibBson >> atomic_thread_fence [
	"/**
	 * @brief Generate a full-fence memory barrier at the call site.
	 */"

	self ffiCall: #(void bson_atomic_thread_fence())
]

{ #category : 'public - bcon' }
LibBson >> bcon_append_ctx_init: ctx [

	self ffiCall: #(void bcon_append_ctx_init(bcon_append_ctx_t* ctx))
]

{ #category : 'public - bcon' }
LibBson >> bcon_append_ctx_vaBson: bson ctx: ctx va: va [

	self ffiCall: #(void bcon_append_ctx_va(bson_t* bson, bcon_append_ctx_t* ctx, va_list* va))
]

{ #category : 'public - bcon' }
LibBson >> bcon_extract_ctx_init: ctx [

	self ffiCall: #(void bcon_extract_ctx_init(bcon_extract_ctx_t* ctx))
]

{ #category : 'public - bcon' }
LibBson >> bcon_extract_ctx_vaBson: bson ctx: ctx ap: ap [

	^ self ffiCall: #(int bcon_extract_ctx_va(bson_t* bson, bcon_extract_ctx_t* ctx, va_list* ap))
]

{ #category : 'public - bcon' }
LibBson >> bcon_magic [

	^ self ffiCall: #(const char* bson_bcon_magic())
]

{ #category : 'public - bcon' }
LibBson >> bcone_magic [

	^ self ffiCall: #(const char* bson_bcone_magic())
]

{ #category : 'public - bson-version-functions' }
LibBson >> check_versionRequired_major: required_major required_minor: required_minor required_micro: required_micro [

	^ self ffiCall: #(int bson_check_version(int required_major, int required_minor, int required_micro))
]

{ #category : 'public - bson' }
LibBson >> compareBson: bson other: other [
	"/**
	 * bson_compare:
	 * @bson: A bson_t.
	 * @other: A bson_t.
	 *
	 * Compares @bson to @other in a qsort() style comparison.
	 * See qsort() for information on how this function works.
	 *
	 * Returns: Less than zero, zero, or greater than zero.
	 */"

	^ self ffiCall: #(int bson_compare(const bson_t* bson, const bson_t* other))
]

{ #category : 'public - bson' }
LibBson >> concatDst: dst src: src [

	^ self ffiCall: #(int bson_concat(bson_t* dst, const bson_t* src))
]

{ #category : 'public - bson-context' }
LibBson >> context_destroy: context [
	"/**
	 * @brief Destroy and free a bson_context_t created by bson_context_new()
	 */"

	self ffiCall: #(void bson_context_destroy(bson_context_t* context))
]

{ #category : 'public - bson-context' }
LibBson >> context_get_default [
	"/**
	 * @brief Obtain a pointer to the application-default bson_context_t
	 *
	 * @note This context_t MUST NOT be passed to bson_context_destroy()
	 */"

	^ self ffiCall: #(bson_context_t* bson_context_get_default())
]

{ #category : 'public - bson-context' }
LibBson >> context_new: flags [
	"/**
	 * @brief Initialize a new context with the given flags
	 *
	 * @param flags Flags used to configure the behavior of the context. For most
	 * cases, this should be BSON_CONTEXT_NONE.
	 *
	 * @return A newly allocated context. Must be freed with bson_context_destroy()
	 *
	 * @note If you expect your pid to change without notice, such as from an
	 * unexpected call to fork(), then specify BSON_CONTEXT_DISABLE_PID_CACHE in
	 * `flags`.
	 */"

	^ self ffiCall: #(bson_context_t* bson_context_new(bson_context_flags_t flags))
]

{ #category : 'public - bson' }
LibBson >> copy: bson [
	"/**
	 * bson_copy:
	 * @bson: A bson_t.
	 *
	 * Copies @bson into a newly allocated bson_t. You must call bson_destroy()
	 * when you are done with the resulting value to free its resources.
	 *
	 * Returns: A newly allocated bson_t that should be free'd with bson_destroy()
	 */"

	^ self ffiCall: #(bson_t* bson_copy(const bson_t* bson))
]

{ #category : 'public - bson' }
LibBson >> copy_toSrc: src dst: dst [
	"/**
	 * bson_copy_to:
	 * @src: The source bson_t.
	 * @dst: The destination bson_t.
	 *
	 * Initializes @dst and copies the content from @src into @dst.
	 */"

	self ffiCall: #(void bson_copy_to(const bson_t* src, bson_t* dst))
]

{ #category : 'public - bson' }
LibBson >> count_keys: bson [
	"/**
	 * bson_count_keys:
	 * @bson: A bson_t.
	 *
	 * Counts the number of elements found in @bson.
	 */"

	^ self ffiCall: #(uint32_t bson_count_keys(const bson_t* bson))
]

{ #category : 'public - bson-decimal128' }
LibBson >> decimal128_from_string: string dec: dec [

	^ self ffiCall: #(int bson_decimal128_from_string(const char* string, bson_decimal128_t* dec))
]

{ #category : 'public - bson-decimal128' }
LibBson >> decimal128_from_string_w_lenString: string len: len dec: dec [

	^ self ffiCall: #(int bson_decimal128_from_string_w_len(const char* string, int len, bson_decimal128_t* dec))
]

{ #category : 'public - bson-decimal128' }
LibBson >> decimal128_to_stringDec: dec str: str [

	self ffiCall: #(void bson_decimal128_to_string(bson_decimal128_t* dec, char* str))
]

{ #category : 'public - bson' }
LibBson >> destroy: bson [
	"/**
	 * bson_destroy:
	 * @bson: A bson_t.
	 *
	 * Frees the resources associated with @bson.
	 */"

	self ffiCall: #(void bson_destroy(bson_t* bson))
]

{ #category : 'public - bson' }
LibBson >> destroy_with_stealBson: bson steal: steal length: length [
	"/**
	 * bson_destroy_with_steal:
	 * @bson: A #bson_t.
	 * @steal: If ownership of the data buffer should be transferred to caller.
	 * @length: (out): location for the length of the buffer.
	 *
	 * Destroys @bson similar to calling bson_destroy() except that the underlying
	 * buffer will be returned and ownership transferred to the caller if @steal
	 * is non-zero.
	 *
	 * If length is non-NULL, the length of @bson will be stored in @length.
	 *
	 * It is a programming error to call this function with any bson that has
	 * been initialized static, or is being used to create a subdocument with
	 * functions such as bson_append_document_begin() or bson_append_array_begin().
	 *
	 * Returns: a buffer owned by the caller if @steal is true. Otherwise NULL.
	 *    If there was an error, NULL is returned.
	 */"

	^ self ffiCall: #(uint8_t* bson_destroy_with_steal(bson_t* bson, int steal, uint32_t* length))
]

{ #category : 'public - bson' }
LibBson >> equalBson: bson other: other [

	^ self ffiCall: #(int bson_equal(const bson_t* bson, const bson_t* other))
]

{ #category : 'public - bson-memory' }
LibBson >> free: mem [

	self ffiCall: #(void bson_free(void* mem))
]

{ #category : 'public - bson' }
LibBson >> get_data: bson [
	"/**
	 * bson_get_data:
	 * @bson: A bson_t.
	 *
	 * Fetched the data buffer for @bson of @bson->len bytes in length.
	 *
	 * Returns: A buffer that should not be modified or freed.
	 */"

	^ self ffiCall: #(const uint8_t* bson_get_data(const bson_t* bson))
]

{ #category : 'public - bson-version-functions' }
LibBson >> get_major_version [

	^ self ffiCall: #(int bson_get_major_version())
]

{ #category : 'public - bson-version-functions' }
LibBson >> get_micro_version [

	^ self ffiCall: #(int bson_get_micro_version())
]

{ #category : 'public - bson-version-functions' }
LibBson >> get_minor_version [

	^ self ffiCall: #(int bson_get_minor_version())
]

{ #category : 'public - bson-clock' }
LibBson >> get_monotonic_time [

	^ self ffiCall: #(int64_t bson_get_monotonic_time())
]

{ #category : 'public - bson-version-functions' }
LibBson >> get_version [

	^ self ffiCall: #(const char* bson_get_version())
]

{ #category : 'public - bson-clock' }
LibBson >> gettimeofday: tv [

	^ self ffiCall: #(int bson_gettimeofday(struct timeval* tv))
]

{ #category : 'public - bson' }
LibBson >> has_fieldBson: bson key: key [
	"/**
	 * bson_has_field:
	 * @bson: A bson_t.
	 * @key: The key to lookup.
	 *
	 * Checks to see if @bson contains a field named @key.
	 *
	 * This function is case-sensitive.
	 *
	 * Returns: true if @key exists in @bson; otherwise false.
	 */"

	^ self ffiCall: #(int bson_has_field(const bson_t* bson, const char* key))
]

{ #category : 'public - bson' }
LibBson >> init: b [
	"/**
	 * bson_init:
	 * @b: A pointer to a bson_t.
	 *
	 * Initializes a bson_t for use. This function is useful to those that want a
	 * stack allocated bson_t. The usefulness of a stack allocated bson_t is
	 * marginal as the target buffer for content will still require heap
	 * allocations. It can help reduce heap fragmentation on allocators that do
	 * not employ SLAB/magazine semantics.
	 *
	 * You must call bson_destroy() with @b to release resources when you are done
	 * using @b.
	 */"

	self ffiCall: #(void bson_init(bson_t* b))
]

{ #category : 'public - bson' }
LibBson >> init_from_jsonBson: bson data: data len: len error: error [

	^ self ffiCall: #(int bson_init_from_json(bson_t* bson, const char* data, ssize_t len, bson_error_t* error))
]

{ #category : 'public - bson' }
LibBson >> init_staticB: b data: data length: length [
	"/**
	 * bson_init_static:
	 * @b: A pointer to a bson_t.
	 * @data: The data buffer to use.
	 * @length: The length of @data.
	 *
	 * Initializes a bson_t using @data and @length. This is ideal if you would
	 * like to use a stack allocation for your bson and do not need to grow the
	 * buffer. @data must be valid for the life of @b.
	 *
	 * Returns: true if initialized successfully; otherwise false.
	 */"

	^ self ffiCall: #(int bson_init_static(bson_t* b, const uint8_t* data, size_t length))
]

{ #category : 'public - bson-types' }
LibBson >> is_power_of_two: v [

	^ self ffiCall: #(int bson_is_power_of_two(uint32_t v))
]

{ #category : 'public - bson-string' }
LibBson >> isspace: c [

	^ self ffiCall: #(int bson_isspace(int c))
]

{ #category : 'public - bson-iter' }
LibBson >> iter_arrayIter: iter array_len: array_len array: array [

	self ffiCall: #(void bson_iter_array(const bson_iter_t* iter, uint32_t* array_len, const uint8_t** array))
]

{ #category : 'public - bson-iter' }
LibBson >> iter_as_bool: iter [

	^ self ffiCall: #(int bson_iter_as_bool(const bson_iter_t* iter))
]

{ #category : 'public - bson-iter' }
LibBson >> iter_as_double: iter [

	^ self ffiCall: #(double bson_iter_as_double(const bson_iter_t* iter))
]

{ #category : 'public - bson-iter' }
LibBson >> iter_as_int64: iter [

	^ self ffiCall: #(int64_t bson_iter_as_int64(const bson_iter_t* iter))
]

{ #category : 'public - bson-iter' }
LibBson >> iter_binaryIter: iter subtype: subtype binary_len: binary_len binary: binary [

	self ffiCall: #(void bson_iter_binary(const bson_iter_t* iter, bson_subtype_t subtype, uint32_t* binary_len, const uint8_t** binary))
]

{ #category : 'public - bson-iter' }
LibBson >> iter_bool: iter [

	^ self ffiCall: #(int bson_iter_bool(const bson_iter_t* iter))
]

{ #category : 'public - bson-iter' }
LibBson >> iter_bool_unsafe: iter [
	"/**
	 * bson_iter_bool_unsafe:
	 * @iter: A bson_iter_t.
	 *
	 * Similar to bson_iter_bool() but performs no integrity checking.
	 *
	 * Returns: true or false.
	 */"

	^ self ffiCall: #(int bson_iter_bool_unsafe(const bson_iter_t* iter))
]

{ #category : 'public - bson-iter' }
LibBson >> iter_codeIter: iter length: length [

	^ self ffiCall: #(const char* bson_iter_code(const bson_iter_t* iter, uint32_t* length))
]

{ #category : 'public - bson-iter' }
LibBson >> iter_code_unsafeIter: iter length: length [
	"/**
	 * bson_iter_code_unsafe:
	 * @iter: A bson_iter_t.
	 * @length: A location for the length of the resulting string.
	 *
	 * Like bson_iter_code() but performs no integrity checks.
	 *
	 * Returns: A string that should not be modified or freed.
	 */"

	^ self ffiCall: #(const char* bson_iter_code_unsafe(const bson_iter_t* iter, uint32_t* length))
]

{ #category : 'public - bson-iter' }
LibBson >> iter_codewscopeIter: iter length: length scope_len: scope_len scope: scope [

	^ self ffiCall: #(const char* bson_iter_codewscope(const bson_iter_t* iter, uint32_t* length, uint32_t* scope_len, const uint8_t** scope))
]

{ #category : 'public - bson-iter' }
LibBson >> iter_date_time: iter [

	^ self ffiCall: #(int64_t bson_iter_date_time(const bson_iter_t* iter))
]

{ #category : 'public - bson-iter' }
LibBson >> iter_dbpointerIter: iter collection_len: collection_len collection: collection oid: oid [

	self ffiCall: #(void bson_iter_dbpointer(const bson_iter_t* iter, uint32_t* collection_len, const char** collection, bson_oid_t** oid))
]

{ #category : 'public - bson-iter' }
LibBson >> iter_decimal128Iter: iter dec: dec [

	^ self ffiCall: #(int bson_iter_decimal128(const bson_iter_t* iter, bson_decimal128_t* dec))
]

{ #category : 'public - bson-iter' }
LibBson >> iter_decimal128_unsafeIter: iter dec: dec [
	"/**
	 * bson_iter_decimal128_unsafe:
	 * @iter: A #bson_iter_t.
	 *
	 * Similar to bson_iter_decimal128() but performs no integrity checks.
	 *
	 * Returns: A #bson_decimal128_t.
	 */"

	self ffiCall: #(void bson_iter_decimal128_unsafe(const bson_iter_t* iter, bson_decimal128_t* dec))
]

{ #category : 'public - bson-iter' }
LibBson >> iter_documentIter: iter document_len: document_len document: document [

	self ffiCall: #(void bson_iter_document(const bson_iter_t* iter, uint32_t* document_len, const uint8_t** document))
]

{ #category : 'public - bson-iter' }
LibBson >> iter_double: iter [

	^ self ffiCall: #(double bson_iter_double(const bson_iter_t* iter))
]

{ #category : 'public - bson-iter' }
LibBson >> iter_double_unsafe: iter [
	"/**
	 * bson_iter_double_unsafe:
	 * @iter: A bson_iter_t.
	 *
	 * Similar to bson_iter_double() but does not perform an integrity checking.
	 *
	 * Returns: A double.
	 */"

	^ self ffiCall: #(double bson_iter_double_unsafe(const bson_iter_t* iter))
]

{ #category : 'public - bson-iter' }
LibBson >> iter_dup_utf8Iter: iter length: length [

	^ self ffiCall: #(void* bson_iter_dup_utf8(const bson_iter_t* iter, uint32_t* length))
]

{ #category : 'public - bson-iter' }
LibBson >> iter_findIter: iter key: key [

	^ self ffiCall: #(int bson_iter_find(bson_iter_t* iter, const char* key))
]

{ #category : 'public - bson-iter' }
LibBson >> iter_find_caseIter: iter key: key [

	^ self ffiCall: #(int bson_iter_find_case(bson_iter_t* iter, const char* key))
]

{ #category : 'public - bson-iter' }
LibBson >> iter_find_descendantIter: iter dotkey: dotkey descendant: descendant [

	^ self ffiCall: #(int bson_iter_find_descendant(bson_iter_t* iter, const char* dotkey, bson_iter_t* descendant))
]

{ #category : 'public - bson-iter' }
LibBson >> iter_find_w_lenIter: iter key: key keylen: keylen [

	^ self ffiCall: #(int bson_iter_find_w_len(bson_iter_t* iter, const char* key, int keylen))
]

{ #category : 'public - bson-iter' }
LibBson >> iter_initIter: iter bson: bson [

	^ self ffiCall: #(int bson_iter_init(bson_iter_t* iter, const bson_t* bson))
]

{ #category : 'public - bson-iter' }
LibBson >> iter_init_findIter: iter bson: bson key: key [

	^ self ffiCall: #(int bson_iter_init_find(bson_iter_t* iter, const bson_t* bson, const char* key))
]

{ #category : 'public - bson-iter' }
LibBson >> iter_init_find_caseIter: iter bson: bson key: key [

	^ self ffiCall: #(int bson_iter_init_find_case(bson_iter_t* iter, const bson_t* bson, const char* key))
]

{ #category : 'public - bson-iter' }
LibBson >> iter_init_find_w_lenIter: iter bson: bson key: key keylen: keylen [

	^ self ffiCall: #(int bson_iter_init_find_w_len(bson_iter_t* iter, const bson_t* bson, const char* key, int keylen))
]

{ #category : 'public - bson-iter' }
LibBson >> iter_init_from_dataIter: iter data: data length: length [

	^ self ffiCall: #(int bson_iter_init_from_data(bson_iter_t* iter, const uint8_t* data, size_t length))
]

{ #category : 'public - bson-iter' }
LibBson >> iter_init_from_data_at_offsetIter: iter data: data length: length offset: offset keylen: keylen [

	^ self ffiCall: #(int bson_iter_init_from_data_at_offset(bson_iter_t* iter, const uint8_t* data, size_t length, uint32_t offset, uint32_t keylen))
]

{ #category : 'public - bson-iter' }
LibBson >> iter_int32: iter [

	^ self ffiCall: #(int32_t bson_iter_int32(const bson_iter_t* iter))
]

{ #category : 'public - bson-iter' }
LibBson >> iter_int32_unsafe: iter [
	"/**
	 * bson_iter_int32_unsafe:
	 * @iter: A bson_iter_t.
	 *
	 * Similar to bson_iter_int32() but with no integrity checking.
	 *
	 * Returns: A 32-bit signed integer.
	 */"

	^ self ffiCall: #(int32_t bson_iter_int32_unsafe(const bson_iter_t* iter))
]

{ #category : 'public - bson-iter' }
LibBson >> iter_int64: iter [

	^ self ffiCall: #(int64_t bson_iter_int64(const bson_iter_t* iter))
]

{ #category : 'public - bson-iter' }
LibBson >> iter_int64_unsafe: iter [
	"/**
	 * bson_iter_int64_unsafe:
	 * @iter: a bson_iter_t.
	 *
	 * Similar to bson_iter_int64() but without integrity checking.
	 *
	 * Returns: A 64-bit signed integer.
	 */"

	^ self ffiCall: #(int64_t bson_iter_int64_unsafe(const bson_iter_t* iter))
]

{ #category : 'public - bson-iter' }
LibBson >> iter_key: iter [

	^ self ffiCall: #(const char* bson_iter_key(const bson_iter_t* iter))
]

{ #category : 'public - bson-iter' }
LibBson >> iter_key_len: iter [

	^ self ffiCall: #(uint32_t bson_iter_key_len(const bson_iter_t* iter))
]

{ #category : 'public - bson-iter' }
LibBson >> iter_key_unsafe: iter [
	"/**
	 * bson_iter_key_unsafe:
	 * @iter: A bson_iter_t.
	 *
	 * Similar to bson_iter_key() but performs no integrity checking.
	 *
	 * Returns: A string that should not be modified or freed.
	 */"

	^ self ffiCall: #(const char* bson_iter_key_unsafe(const bson_iter_t* iter))
]

{ #category : 'public - bson-iter' }
LibBson >> iter_next: iter [

	^ self ffiCall: #(int bson_iter_next(bson_iter_t* iter))
]

{ #category : 'public - bson-iter' }
LibBson >> iter_offset: iter [

	^ self ffiCall: #(uint32_t bson_iter_offset(bson_iter_t* iter))
]

{ #category : 'public - bson-iter' }
LibBson >> iter_oid: iter [

	^ self ffiCall: #(bson_oid_t* bson_iter_oid(const bson_iter_t* iter))
]

{ #category : 'public - bson-iter' }
LibBson >> iter_oid_unsafe: iter [
	"/**
	 * bson_iter_oid_unsafe:
	 * @iter: A #bson_iter_t.
	 *
	 * Similar to bson_iter_oid() but performs no integrity checks.
	 *
	 * Returns: A #bson_oid_t that should not be modified or freed.
	 */"

	^ self ffiCall: #(bson_oid_t* bson_iter_oid_unsafe(const bson_iter_t* iter))
]

{ #category : 'public - bson-iter' }
LibBson >> iter_overwrite_boolIter: iter value: value [

	self ffiCall: #(void bson_iter_overwrite_bool(bson_iter_t* iter, int value))
]

{ #category : 'public - bson-iter' }
LibBson >> iter_overwrite_date_timeIter: iter value: value [

	self ffiCall: #(void bson_iter_overwrite_date_time(bson_iter_t* iter, int64_t value))
]

{ #category : 'public - bson-iter' }
LibBson >> iter_overwrite_decimal128Iter: iter value: value [

	self ffiCall: #(void bson_iter_overwrite_decimal128(bson_iter_t* iter, bson_decimal128_t* value))
]

{ #category : 'public - bson-iter' }
LibBson >> iter_overwrite_doubleIter: iter value: value [

	self ffiCall: #(void bson_iter_overwrite_double(bson_iter_t* iter, double value))
]

{ #category : 'public - bson-iter' }
LibBson >> iter_overwrite_int32Iter: iter value: value [

	self ffiCall: #(void bson_iter_overwrite_int32(bson_iter_t* iter, int32_t value))
]

{ #category : 'public - bson-iter' }
LibBson >> iter_overwrite_int64Iter: iter value: value [

	self ffiCall: #(void bson_iter_overwrite_int64(bson_iter_t* iter, int64_t value))
]

{ #category : 'public - bson-iter' }
LibBson >> iter_overwrite_oidIter: iter value: value [

	self ffiCall: #(void bson_iter_overwrite_oid(bson_iter_t* iter, bson_oid_t* value))
]

{ #category : 'public - bson-iter' }
LibBson >> iter_overwrite_timestampIter: iter timestamp: timestamp increment: increment [

	self ffiCall: #(void bson_iter_overwrite_timestamp(bson_iter_t* iter, uint32_t timestamp, uint32_t increment))
]

{ #category : 'public - bson-iter' }
LibBson >> iter_recurseIter: iter child: child [

	^ self ffiCall: #(int bson_iter_recurse(const bson_iter_t* iter, bson_iter_t* child))
]

{ #category : 'public - bson-iter' }
LibBson >> iter_regexIter: iter options: options [

	^ self ffiCall: #(const char* bson_iter_regex(const bson_iter_t* iter, const char** options))
]

{ #category : 'public - bson-iter' }
LibBson >> iter_symbolIter: iter length: length [

	^ self ffiCall: #(const char* bson_iter_symbol(const bson_iter_t* iter, uint32_t* length))
]

{ #category : 'public - bson-iter' }
LibBson >> iter_time_t: iter [

	^ self ffiCall: #(time_t bson_iter_time_t(const bson_iter_t* iter))
]

{ #category : 'public - bson-iter' }
LibBson >> iter_time_t_unsafe: iter [
	"/**
	 * bson_iter_time_t_unsafe:
	 * @iter: A bson_iter_t.
	 *
	 * Similar to bson_iter_time_t() but performs no integrity checking.
	 *
	 * Returns: A time_t containing the number of seconds since UNIX epoch
	 *          in UTC.
	 */"

	^ self ffiCall: #(time_t bson_iter_time_t_unsafe(const bson_iter_t* iter))
]

{ #category : 'public - bson-iter' }
LibBson >> iter_timestampIter: iter timestamp: timestamp increment: increment [

	self ffiCall: #(void bson_iter_timestamp(const bson_iter_t* iter, uint32_t* timestamp, uint32_t* increment))
]

{ #category : 'public - bson-iter' }
LibBson >> iter_timevalIter: iter tv: tv [

	self ffiCall: #(void bson_iter_timeval(const bson_iter_t* iter, struct timeval* tv))
]

{ #category : 'public - bson-iter' }
LibBson >> iter_timeval_unsafeIter: iter tv: tv [
	"/**
	 * bson_iter_timeval_unsafe:
	 * @iter: A bson_iter_t.
	 * @tv: A struct timeval.
	 *
	 * Similar to bson_iter_timeval() but performs no integrity checking.
	 */"

	self ffiCall: #(void bson_iter_timeval_unsafe(const bson_iter_t* iter, struct timeval* tv))
]

{ #category : 'public - bson-iter' }
LibBson >> iter_type: iter [

	^ self ffiCall: #(bson_type_t bson_iter_type(const bson_iter_t* iter))
]

{ #category : 'public - bson-iter' }
LibBson >> iter_type_unsafe: iter [
	"/**
	 * bson_iter_type_unsafe:
	 * @iter: A bson_iter_t.
	 *
	 * Similar to bson_iter_type() but performs no integrity checking.
	 *
	 * Returns: A bson_type_t.
	 */"

	^ self ffiCall: #(bson_type_t bson_iter_type_unsafe(const bson_iter_t* iter))
]

{ #category : 'public - bson-iter' }
LibBson >> iter_utf8Iter: iter length: length [

	^ self ffiCall: #(const char* bson_iter_utf8(const bson_iter_t* iter, uint32_t* length))
]

{ #category : 'public - bson-iter' }
LibBson >> iter_utf8_len_unsafe: iter [
	"/**
	 * bson_iter_utf8_len_unsafe:
	 * @iter: a bson_iter_t.
	 *
	 * Returns the length of a string currently pointed to by @iter. This performs
	 * no validation so the is responsible for knowing the BSON is valid. Calling
	 * bson_validate() is one way to do this ahead of time.
	 */"

	^ self ffiCall: #(uint32_t bson_iter_utf8_len_unsafe(const bson_iter_t* iter))
]

{ #category : 'public - bson-iter' }
LibBson >> iter_utf8_unsafeIter: iter length: length [
	"/**
	 * bson_iter_utf8_unsafe:
	 *
	 * Similar to bson_iter_utf8() but performs no integrity checking.
	 *
	 * Returns: A string that should not be modified or freed.
	 */"

	^ self ffiCall: #(const char* bson_iter_utf8_unsafe(const bson_iter_t* iter, size_t* length))
]

{ #category : 'public - bson-iter' }
LibBson >> iter_value: iter [

	^ self ffiCall: #(const bson_value_t* bson_iter_value(bson_iter_t* iter))
]

{ #category : 'public - bson-iter' }
LibBson >> iter_visit_allIter: iter visitor: visitor data: data [

	^ self ffiCall: #(int bson_iter_visit_all(bson_iter_t* iter, const bson_visitor_t* visitor, void* data))
]

{ #category : 'public - bson-json' }
LibBson >> json_data_reader_ingestReader: reader data: data len: len [

	self ffiCall: #(void bson_json_data_reader_ingest(bson_json_reader_t* reader, const uint8_t* data, size_t len))
]

{ #category : 'public - bson-json' }
LibBson >> json_data_reader_newAllow_multiple: allow_multiple size: size [

	^ self ffiCall: #(bson_json_reader_t* bson_json_data_reader_new(int allow_multiple, size_t size))
]

{ #category : 'public - bson-json' }
LibBson >> json_opts_destroy: opts [

	self ffiCall: #(void bson_json_opts_destroy(bson_json_opts_t* opts))
]

{ #category : 'public - bson-json' }
LibBson >> json_opts_newMode: mode max_len: max_len [

	^ self ffiCall: #(bson_json_opts_t* bson_json_opts_new(bson_json_mode_t mode, int32_t max_len))
]

{ #category : 'public - bson-json' }
LibBson >> json_opts_set_outermost_arrayOpts: opts is_outermost_array: is_outermost_array [

	self ffiCall: #(void bson_json_opts_set_outermost_array(bson_json_opts_t* opts, int is_outermost_array))
]

{ #category : 'public - bson-json' }
LibBson >> json_reader_destroy: reader [

	self ffiCall: #(void bson_json_reader_destroy(bson_json_reader_t* reader))
]

{ #category : 'public - bson-json' }
LibBson >> json_reader_newData: data cb: cb dcb: dcb allow_multiple: allow_multiple buf_size: buf_size [

	^ self ffiCall: #(bson_json_reader_t* bson_json_reader_new(void* data, bson_json_reader_cb cb, bson_json_destroy_cb dcb, int allow_multiple, size_t buf_size))
]

{ #category : 'public - bson-json' }
LibBson >> json_reader_new_from_fd: fd close_on_destroy: close_on_destroy [

	^ self ffiCall: #(bson_json_reader_t* bson_json_reader_new_from_fd(int fd, int close_on_destroy))
]

{ #category : 'public - bson-json' }
LibBson >> json_reader_new_from_fileFilename: filename error: error [

	^ self ffiCall: #(bson_json_reader_t* bson_json_reader_new_from_file(const char* filename, bson_error_t* error))
]

{ #category : 'public - bson-json' }
LibBson >> json_reader_readReader: reader bson: bson error: error [

	^ self ffiCall: #(int bson_json_reader_read(bson_json_reader_t* reader, bson_t* bson, bson_error_t* error))
]

{ #category : 'accessing - platform' }
LibBson >> macLibraryName [

	^ FFIMacLibraryFinder new
		userPaths: #('./CIG/lib');
		findLibrary: 'libbson.dylib'
]

{ #category : 'public - bson-memory' }
LibBson >> malloc0: num_bytes [

	^ self ffiCall: #(void* bson_malloc0(size_t num_bytes))
]

{ #category : 'public - bson-memory' }
LibBson >> malloc: num_bytes [

	^ self ffiCall: #(void* bson_malloc(size_t num_bytes))
]

{ #category : 'public - bson-md5' }
LibBson >> md5_appendPms: pms data: data nbytes: nbytes [

	self ffiCall: #(void bson_md5_append(bson_md5_t* pms, const uint8_t* data, uint32_t nbytes))
]

{ #category : 'public - bson-md5' }
LibBson >> md5_finishPms: pms digest: digest [

	self ffiCall: #(void bson_md5_finish(bson_md5_t* pms, uint8_t_16 digest))
]

{ #category : 'public - bson-md5' }
LibBson >> md5_init: pms [

	self ffiCall: #(void bson_md5_init(bson_md5_t* pms))
]

{ #category : 'public - bson-memory' }
LibBson >> mem_restore_vtable [

	self ffiCall: #(void bson_mem_restore_vtable())
]

{ #category : 'public - bson-memory' }
LibBson >> mem_set_vtable: vtable [

	self ffiCall: #(void bson_mem_set_vtable(const bson_mem_vtable_t* vtable))
]

{ #category : 'public - bson-atomic' }
LibBson >> memory_barrier [

	self ffiCall: #(void bson_memory_barrier())
]

{ #category : 'public - bson' }
LibBson >> new [
	"/**
	 * bson_new:
	 *
	 * Allocates a new bson_t structure. Call the various bson_append_*()
	 * functions to add fields to the bson. You can iterate the bson_t at any
	 * time using a bson_iter_t and bson_iter_init().
	 *
	 * Returns: A newly allocated bson_t that should be freed with bson_destroy().
	 */"

	^ self ffiCall: #(bson_t* bson_new())
]

{ #category : 'public - bson' }
LibBson >> new_from_bufferBuf: buf buf_len: buf_len realloc_func: realloc_func realloc_func_ctx: realloc_func_ctx [
	"/**
	 * bson_new_from_buffer:
	 * @buf: A pointer to a buffer containing a serialized bson document.
	 * @buf_len: The length of the buffer in bytes.
	 * @realloc_fun: a realloc like function
	 * @realloc_fun_ctx: a context for the realloc function
	 *
	 * Creates a new bson_t structure using the data provided. @buf should contain
	 * a bson document, or null pointer should be passed for new allocations.
	 *
	 * Returns: A newly allocated bson_t that should be freed with bson_destroy().
	 *          The underlying buffer will be used and not be freed in destroy.
	 */"

	^ self ffiCall: #(bson_t* bson_new_from_buffer(uint8_t** buf, size_t* buf_len, bson_realloc_func realloc_func, void* realloc_func_ctx))
]

{ #category : 'public - bson' }
LibBson >> new_from_data: data length: length [
	"/**
	 * bson_new_from_data:
	 * @data: A buffer containing a serialized bson document.
	 * @length: The length of the document in bytes.
	 *
	 * Creates a new bson_t structure using the data provided. @data should contain
	 * at least @length bytes that can be copied into the new bson_t structure.
	 *
	 * Returns: A newly allocated bson_t that should be freed with bson_destroy().
	 *   If the first four bytes (little-endian) of data do not match @length,
	 *   then NULL will be returned.
	 */"

	^ self ffiCall: #(bson_t* bson_new_from_data(const uint8_t* data, size_t length))
]

{ #category : 'public - bson' }
LibBson >> new_from_jsonData: data len: len error: error [

	^ self ffiCall: #(bson_t* bson_new_from_json(const uint8_t* data, ssize_t len, bson_error_t* error))
]

{ #category : 'public - bson-types' }
LibBson >> next_power_of_two: v [
	"/**
	 * bson_next_power_of_two:
	 * @v: A 32-bit unsigned integer of required bytes.
	 *
	 * Determines the next larger power of two for the value of @v
	 * in a constant number of operations.
	 *
	 * It is up to the caller to guarantee this will not overflow.
	 *
	 * Returns: The next power of 2 from @v.
	 */"

	^ self ffiCall: #(int bson_next_power_of_two(size_t v))
]

{ #category : 'public - bson-oid' }
LibBson >> oid_compareOid1: oid1 oid2: oid2 [

	^ self ffiCall: #(int bson_oid_compare(bson_oid_t* oid1, bson_oid_t* oid2))
]

{ #category : 'public - bson-oid' }
LibBson >> oid_compare_unsafeOid1: oid1 oid2: oid2 [
	"/**
	 * bson_oid_compare_unsafe:
	 * @oid1: A bson_oid_t.
	 * @oid2: A bson_oid_t.
	 *
	 * Performs a qsort() style comparison between @oid1 and @oid2.
	 *
	 * This function is meant to be as fast as possible and therefore performs
	 * no argument validation. That is the callers responsibility.
	 *
	 * Returns: An integer < 0 if @oid1 is less than @oid2. Zero if they are equal.
	 *          An integer > 0 if @oid1 is greater than @oid2.
	 */"

	^ self ffiCall: #(int bson_oid_compare_unsafe(bson_oid_t* oid1, bson_oid_t* oid2))
]

{ #category : 'public - bson-oid' }
LibBson >> oid_copySrc: src dst: dst [

	self ffiCall: #(void bson_oid_copy(bson_oid_t* src, bson_oid_t* dst))
]

{ #category : 'public - bson-oid' }
LibBson >> oid_copy_unsafeSrc: src dst: dst [
	"/**
	 * bson_oid_copy_unsafe:
	 * @src: A bson_oid_t to copy from.
	 * @dst: A bson_oid_t to copy into.
	 *
	 * Copies the contents of @src into @dst. This function is meant to be as
	 * fast as possible and therefore performs no argument checking. It is the
	 * callers responsibility to ensure they are passing valid data into the
	 * function.
	 */"

	self ffiCall: #(void bson_oid_copy_unsafe(bson_oid_t* src, bson_oid_t* dst))
]

{ #category : 'public - bson-oid' }
LibBson >> oid_equalOid1: oid1 oid2: oid2 [

	^ self ffiCall: #(int bson_oid_equal(bson_oid_t* oid1, bson_oid_t* oid2))
]

{ #category : 'public - bson-oid' }
LibBson >> oid_equal_unsafeOid1: oid1 oid2: oid2 [
	"/**
	 * bson_oid_equal_unsafe:
	 * @oid1: A bson_oid_t.
	 * @oid2: A bson_oid_t.
	 *
	 * Checks the equality of @oid1 and @oid2.
	 *
	 * This function is meant to be as fast as possible and therefore performs
	 * no checks for argument validity. That is the callers responsibility.
	 *
	 * Returns: true if @oid1 and @oid2 are equal; otherwise false.
	 */"

	^ self ffiCall: #(int bson_oid_equal_unsafe(bson_oid_t* oid1, bson_oid_t* oid2))
]

{ #category : 'public - bson-oid' }
LibBson >> oid_get_time_t: oid [

	^ self ffiCall: #(time_t bson_oid_get_time_t(bson_oid_t* oid))
]

{ #category : 'public - bson-oid' }
LibBson >> oid_get_time_t_unsafe: oid [
	"/**
	 * bson_oid_get_time_t_unsafe:
	 * @oid: A bson_oid_t.
	 *
	 * Fetches the time @oid was generated.
	 *
	 * Returns: A time_t containing the UNIX timestamp of generation.
	 */"

	^ self ffiCall: #(time_t bson_oid_get_time_t_unsafe(bson_oid_t* oid))
]

{ #category : 'public - bson-oid' }
LibBson >> oid_hash: oid [

	^ self ffiCall: #(uint32_t bson_oid_hash(bson_oid_t* oid))
]

{ #category : 'public - bson-oid' }
LibBson >> oid_hash_unsafe: oid [
	"/**
	 * bson_oid_hash_unsafe:
	 * @oid: A bson_oid_t.
	 *
	 * This function performs a DJB style hash upon the bytes contained in @oid.
	 * The result is a hash key suitable for use in a hashtable.
	 *
	 * This function is meant to be as fast as possible and therefore performs no
	 * validation of arguments. The caller is responsible to ensure they are
	 * passing valid arguments.
	 *
	 * Returns: A uint32_t containing a hash code.
	 */"

	^ self ffiCall: #(uint32_t bson_oid_hash_unsafe(bson_oid_t* oid))
]

{ #category : 'public - bson-oid' }
LibBson >> oid_initOid: oid context: context [

	self ffiCall: #(void bson_oid_init(bson_oid_t* oid, bson_context_t* context))
]

{ #category : 'public - bson-oid' }
LibBson >> oid_init_from_dataOid: oid data: data [

	self ffiCall: #(void bson_oid_init_from_data(bson_oid_t* oid, const uint8_t* data))
]

{ #category : 'public - bson-oid' }
LibBson >> oid_init_from_stringOid: oid str: str [

	self ffiCall: #(void bson_oid_init_from_string(bson_oid_t* oid, const char* str))
]

{ #category : 'public - bson-oid' }
LibBson >> oid_init_from_string_unsafeOid: oid str: str [
	"/**
	 * bson_oid_init_from_string_unsafe:
	 * @oid: A bson_oid_t to store the result.
	 * @str: A 24-character hexadecimal encoded string.
	 *
	 * Parses a string containing 24 hexadecimal encoded bytes into a bson_oid_t.
	 * This function is meant to be as fast as possible and inlined into your
	 * code. For that purpose, the function does not perform any sort of bounds
	 * checking and it is the callers responsibility to ensure they are passing
	 * valid input to the function.
	 */"

	self ffiCall: #(void bson_oid_init_from_string_unsafe(bson_oid_t* oid, const char* str))
]

{ #category : 'public - bson-oid' }
LibBson >> oid_init_sequenceOid: oid context: context [

	self ffiCall: #(void bson_oid_init_sequence(bson_oid_t* oid, bson_context_t* context))
]

{ #category : 'public - bson-oid' }
LibBson >> oid_is_validStr: str length: length [

	^ self ffiCall: #(int bson_oid_is_valid(const char* str, size_t length))
]

{ #category : 'public - bson-oid' }
LibBson >> oid_parse_hex_char: hex [
	"/**
	 * bson_oid_parse_hex_char:
	 * @hex: A character to parse to its integer value.
	 *
	 * This function contains a jump table to return the integer value for a
	 * character containing a hexadecimal value (0-9, a-f, A-F). If the character
	 * is not a hexadecimal character then zero is returned.
	 *
	 * Returns: An integer between 0 and 15.
	 */"

	^ self ffiCall: #(uint8_t bson_oid_parse_hex_char(char hex))
]

{ #category : 'public - bson-oid' }
LibBson >> oid_to_stringOid: oid str: str [

	self ffiCall: #(void bson_oid_to_string(bson_oid_t* oid, char_25 str))
]

{ #category : 'public - bson-reader' }
LibBson >> reader_destroy: reader [

	self ffiCall: #(void bson_reader_destroy(bson_reader_t* reader))
]

{ #category : 'public - bson-reader' }
LibBson >> reader_new_from_data: data length: length [

	^ self ffiCall: #(bson_reader_t* bson_reader_new_from_data(const uint8_t* data, size_t length))
]

{ #category : 'public - bson-reader' }
LibBson >> reader_new_from_fd: fd close_on_destroy: close_on_destroy [

	^ self ffiCall: #(bson_reader_t* bson_reader_new_from_fd(int fd, int close_on_destroy))
]

{ #category : 'public - bson-reader' }
LibBson >> reader_new_from_filePath: path error: error [

	^ self ffiCall: #(bson_reader_t* bson_reader_new_from_file(const char* path, bson_error_t* error))
]

{ #category : 'public - bson-reader' }
LibBson >> reader_new_from_handle: handle rf: rf df: df [

	^ self ffiCall: #(bson_reader_t* bson_reader_new_from_handle(void* handle, bson_reader_read_func_t rf, bson_reader_destroy_func_t df))
]

{ #category : 'public - bson-reader' }
LibBson >> reader_readReader: reader reached_eof: reached_eof [

	^ self ffiCall: #(const bson_t* bson_reader_read(bson_reader_t* reader, int* reached_eof))
]

{ #category : 'public - bson-reader' }
LibBson >> reader_reset: reader [

	self ffiCall: #(void bson_reader_reset(bson_reader_t* reader))
]

{ #category : 'public - bson-reader' }
LibBson >> reader_set_destroy_funcReader: reader func: func [

	self ffiCall: #(void bson_reader_set_destroy_func(bson_reader_t* reader, bson_reader_destroy_func_t func))
]

{ #category : 'public - bson-reader' }
LibBson >> reader_set_read_funcReader: reader func: func [

	self ffiCall: #(void bson_reader_set_read_func(bson_reader_t* reader, bson_reader_read_func_t func))
]

{ #category : 'public - bson-reader' }
LibBson >> reader_tell: reader [

	^ self ffiCall: #(UNKNOWN_off_t bson_reader_tell(bson_reader_t* reader))
]

{ #category : 'public - bson-memory' }
LibBson >> reallocMem: mem num_bytes: num_bytes [

	^ self ffiCall: #(void* bson_realloc(void* mem, size_t num_bytes))
]

{ #category : 'public - bson-memory' }
LibBson >> realloc_ctxMem: mem num_bytes: num_bytes ctx: ctx [

	^ self ffiCall: #(void* bson_realloc_ctx(void* mem, size_t num_bytes, void* ctx))
]

{ #category : 'public - bson' }
LibBson >> reinit: b [
	"/**
	 * bson_reinit:
	 * @b: (inout): A bson_t.
	 *
	 * This is equivalent to calling bson_destroy() and bson_init() on a #bson_t.
	 * However, it will try to persist the existing malloc'd buffer if one exists.
	 * This is useful in cases where you want to reduce malloc overhead while
	 * building many documents.
	 */"

	self ffiCall: #(void bson_reinit(bson_t* b))
]

{ #category : 'public - bson' }
LibBson >> reserve_bufferBson: bson total_size: total_size [

	^ self ffiCall: #(uint8_t* bson_reserve_buffer(bson_t* bson, uint32_t total_size))
]

{ #category : 'accessing' }
LibBson >> runner [
	
	^ TFProcessLocalWorker new 
		defaultWorker: (runner ifNil: [ runner := TFWorker named: 'mongoc' ]);
		yourself
]

{ #category : 'public - bson' }
LibBson >> sized_new: size [
	"/**
	 * bson_sized_new:
	 * @size: A size_t containing the number of bytes to allocate.
	 *
	 * This will allocate a new bson_t with enough bytes to hold a buffer
	 * sized @size. @size must be smaller than INT_MAX bytes.
	 *
	 * Returns: A newly allocated bson_t that should be freed with bson_destroy().
	 */"

	^ self ffiCall: #(bson_t* bson_sized_new(size_t size))
]

{ #category : 'public - bson' }
LibBson >> stealDst: dst src: src [

	^ self ffiCall: #(int bson_steal(bson_t* dst, bson_t* src))
]

{ #category : 'public - bson-string' }
LibBson >> strcasecmpS1: s1 s2: s2 [

	^ self ffiCall: #(int bson_strcasecmp(const char* s1, const char* s2))
]

{ #category : 'public - bson-string' }
LibBson >> strdup: str [

	^ self ffiCall: #(void* bson_strdup(const char* str))
]

{ #category : 'public - bson-error' }
LibBson >> strerror_rErr_code: err_code buf: buf buflen: buflen [

	^ self ffiCall: #(void* bson_strerror_r(int err_code, char* buf, size_t buflen))
]

{ #category : 'public - bson-string' }
LibBson >> strfreev: strv [

	self ffiCall: #(void bson_strfreev(char** strv))
]

{ #category : 'public - bson-string' }
LibBson >> string_appendString: string str: str [

	self ffiCall: #(void bson_string_append(bson_string_t* string, const char* str))
]

{ #category : 'public - bson-string' }
LibBson >> string_append_cString: string str: str [

	self ffiCall: #(void bson_string_append_c(bson_string_t* string, char str))
]

{ #category : 'public - bson-string' }
LibBson >> string_append_unicharString: string unichar: unichar [

	self ffiCall: #(void bson_string_append_unichar(bson_string_t* string, bson_unichar_t unichar))
]

{ #category : 'public - bson-string' }
LibBson >> string_freeString: string free_segment: free_segment [

	^ self ffiCall: #(void* bson_string_free(bson_string_t* string, int free_segment))
]

{ #category : 'public - bson-string' }
LibBson >> string_new: str [

	^ self ffiCall: #(bson_string_t* bson_string_new(const char* str))
]

{ #category : 'public - bson-string' }
LibBson >> string_truncateString: string len: len [

	self ffiCall: #(void bson_string_truncate(bson_string_t* string, uint32_t len))
]

{ #category : 'public - bson-string' }
LibBson >> strncpyDst: dst src: src size: size [

	self ffiCall: #(void bson_strncpy(char* dst, const char* src, size_t size))
]

{ #category : 'public - bson-string' }
LibBson >> strndupStr: str n_bytes: n_bytes [

	^ self ffiCall: #(void* bson_strndup(const char* str, size_t n_bytes))
]

{ #category : 'public - bson-string' }
LibBson >> strnlenS: s maxlen: maxlen [

	^ self ffiCall: #(size_t bson_strnlen(const char* s, size_t maxlen))
]

{ #category : 'public - bson-atomic' }
LibBson >> sync_synchronize [

	self ffiCall: #(void bson_sync_synchronize())
]

{ #category : 'public - bson-atomic' }
LibBson >> thrd_yield [

	self ffiCall: #(void bson_thrd_yield())
]

{ #category : 'public - bson-keys' }
LibBson >> uint32_to_stringValue: value strptr: strptr str: str size: size [

	^ self ffiCall: #(size_t bson_uint32_to_string(uint32_t value, const char** strptr, char* str, size_t size))
]

{ #category : 'accessing - platform' }
LibBson >> unix64LibraryName [

	^ FFIUnix64LibraryFinder new
		userPaths: #('./CIG/lib');
		findLibrary: 'libbson-1.0.so'
]

{ #category : 'public - bson-utf8' }
LibBson >> utf8_escape_for_jsonUtf8: utf8 utf8_len: utf8_len [

	^ self ffiCall: #(void* bson_utf8_escape_for_json(const char* utf8, ssize_t utf8_len))
]

{ #category : 'public - bson-utf8' }
LibBson >> utf8_from_unichar: unichar utf8: utf8 len: len [

	self ffiCall: #(void bson_utf8_from_unichar(bson_unichar_t unichar, char_6 utf8, uint32_t* len))
]

{ #category : 'public - bson-utf8' }
LibBson >> utf8_get_char: utf8 [

	^ self ffiCall: #(bson_unichar_t bson_utf8_get_char(const char* utf8))
]

{ #category : 'public - bson-utf8' }
LibBson >> utf8_next_char: utf8 [

	^ self ffiCall: #(const char* bson_utf8_next_char(const char* utf8))
]

{ #category : 'public - bson-utf8' }
LibBson >> utf8_validateUtf8: utf8 utf8_len: utf8_len allow_null: allow_null [

	^ self ffiCall: #(int bson_utf8_validate(const char* utf8, size_t utf8_len, int allow_null))
]

{ #category : 'public - bson' }
LibBson >> validateBson: bson flags: flags offset: offset [
	"/**
	 * bson_validate:
	 * @bson: A bson_t.
	 * @offset: A location for the error offset.
	 *
	 * Validates a BSON document by walking through the document and inspecting
	 * the fields for valid content.
	 *
	 * Returns: true if @bson is valid; otherwise false and @offset is set.
	 */"

	^ self ffiCall: #(int bson_validate(const bson_t* bson, bson_validate_flags_t flags, size_t* offset))
]

{ #category : 'public - bson' }
LibBson >> validate_with_errorBson: bson flags: flags error: error [
	"/**
	 * bson_validate_with_error:
	 * @bson: A bson_t.
	 * @error: A location for the error info.
	 *
	 * Validates a BSON document by walking through the document and inspecting
	 * the fields for valid content.
	 *
	 * Returns: true if @bson is valid; otherwise false and @error is filled out.
	 */"

	^ self ffiCall: #(int bson_validate_with_error(const bson_t* bson, bson_validate_flags_t flags, bson_error_t* error))
]

{ #category : 'public - bson' }
LibBson >> validate_with_error_and_offsetBson: bson flags: flags offset: offset error: error [
	"/**
	 * bson_validate_with_error_and_offset:
	 * @bson: A bson_t.
	 * @offset: A location for the error offset.
	 * @error: A location for the error info.
	 *
	 * Validates a BSON document by walking through the document and inspecting
	 * the fields for valid content.
	 *
	 * Returns: true if @bson is valid; otherwise false, @offset is set
	 * and @error is filled out.
	 */"

	^ self ffiCall: #(int bson_validate_with_error_and_offset(const bson_t* bson, bson_validate_flags_t flags, size_t* offset, bson_error_t* error))
]

{ #category : 'public - bson-value' }
LibBson >> value_copySrc: src dst: dst [

	self ffiCall: #(void bson_value_copy(const bson_value_t* src, bson_value_t* dst))
]

{ #category : 'public - bson-value' }
LibBson >> value_destroy: value [

	self ffiCall: #(void bson_value_destroy(bson_value_t* value))
]

{ #category : 'accessing - platform' }
LibBson >> win32LibraryName [

	^ FFIWindowsLibraryFinder new
		userPaths: #('./CIG/lib');
		findLibrary: 'bson.dll'
]

{ #category : 'public - bson-writer' }
LibBson >> writer_beginWriter: writer bson: bson [

	^ self ffiCall: #(int bson_writer_begin(bson_writer_t* writer, bson_t** bson))
]

{ #category : 'public - bson-writer' }
LibBson >> writer_destroy: writer [

	self ffiCall: #(void bson_writer_destroy(bson_writer_t* writer))
]

{ #category : 'public - bson-writer' }
LibBson >> writer_end: writer [

	self ffiCall: #(void bson_writer_end(bson_writer_t* writer))
]

{ #category : 'public - bson-writer' }
LibBson >> writer_get_length: writer [

	^ self ffiCall: #(size_t bson_writer_get_length(bson_writer_t* writer))
]

{ #category : 'public - bson-writer' }
LibBson >> writer_newBuf: buf buflen: buflen offset: offset realloc_func: realloc_func realloc_func_ctx: realloc_func_ctx [

	^ self ffiCall: #(bson_writer_t* bson_writer_new(uint8_t** buf, size_t* buflen, size_t offset, bson_realloc_func realloc_func, void* realloc_func_ctx))
]

{ #category : 'public - bson-writer' }
LibBson >> writer_rollback: writer [

	self ffiCall: #(void bson_writer_rollback(bson_writer_t* writer))
]

{ #category : 'public - bson-memory' }
LibBson >> zero_freeMem: mem size: size [

	self ffiCall: #(void bson_zero_free(void* mem, size_t size))
]
