Class {
	#name : 'BSONConstants',
	#superclass : 'SharedPool',
	#classVars : [
		'BCON_STACK_MAX',
		'BSON_ALIGN_OF_PTR',
		'BSON_BIG_ENDIAN',
		'BSON_BYTE_ORDER',
		'BSON_DECIMAL128_INF',
		'BSON_DECIMAL128_NAN',
		'BSON_DECIMAL128_STRING',
		'BSON_ERROR_BUFFER_SIZE',
		'BSON_ERROR_INVALID',
		'BSON_ERROR_JSON',
		'BSON_ERROR_READER',
		'BSON_ERROR_READER_BADFD',
		'BSON_EXTRA_ALIGN',
		'BSON_HAVE_ALIGNED_ALLOC',
		'BSON_HAVE_CLOCK_GETTIME',
		'BSON_HAVE_GMTIME_R',
		'BSON_HAVE_RAND_R',
		'BSON_HAVE_SNPRINTF',
		'BSON_HAVE_STDBOOL_H',
		'BSON_HAVE_STRINGS_H',
		'BSON_HAVE_STRLCPY',
		'BSON_HAVE_STRNLEN',
		'BSON_HAVE_TIMESPEC',
		'BSON_LITTLE_ENDIAN',
		'BSON_MAJOR_VERSION',
		'BSON_MAX_LEN_UNLIMITED',
		'BSON_MAX_SIZE',
		'BSON_MICRO_VERSION',
		'BSON_MINOR_VERSION',
		'BSON_OS',
		'BSON_VERSION_HEX',
		'BSON_VERSION_S',
		'BSON_WORD_SIZE',
		'SSIZE_MIN'
	],
	#category : 'LibBSON-Library',
	#package : 'LibBSON',
	#tag : 'Library'
}

{ #category : 'accessing - constants' }
BSONConstants class >> BCON_STACK_MAX [

	^ BCON_STACK_MAX
]

{ #category : 'accessing - constants' }
BSONConstants class >> BSON_ALIGN_OF_PTR [

	^ BSON_ALIGN_OF_PTR
]

{ #category : 'accessing - constants' }
BSONConstants class >> BSON_BIG_ENDIAN [

	^ BSON_BIG_ENDIAN
]

{ #category : 'accessing - constants' }
BSONConstants class >> BSON_BYTE_ORDER [

	^ BSON_BYTE_ORDER
]

{ #category : 'accessing - constants' }
BSONConstants class >> BSON_DECIMAL128_INF [

	^ BSON_DECIMAL128_INF
]

{ #category : 'accessing - constants' }
BSONConstants class >> BSON_DECIMAL128_NAN [

	^ BSON_DECIMAL128_NAN
]

{ #category : 'accessing - constants' }
BSONConstants class >> BSON_DECIMAL128_STRING [

	^ BSON_DECIMAL128_STRING
]

{ #category : 'accessing - constants' }
BSONConstants class >> BSON_ERROR_BUFFER_SIZE [

	^ BSON_ERROR_BUFFER_SIZE
]

{ #category : 'accessing - constants' }
BSONConstants class >> BSON_ERROR_INVALID [

	^ BSON_ERROR_INVALID
]

{ #category : 'accessing - constants' }
BSONConstants class >> BSON_ERROR_JSON [

	^ BSON_ERROR_JSON
]

{ #category : 'accessing - constants' }
BSONConstants class >> BSON_ERROR_READER [

	^ BSON_ERROR_READER
]

{ #category : 'accessing - constants' }
BSONConstants class >> BSON_ERROR_READER_BADFD [

	^ BSON_ERROR_READER_BADFD
]

{ #category : 'accessing - constants' }
BSONConstants class >> BSON_EXTRA_ALIGN [

	^ BSON_EXTRA_ALIGN
]

{ #category : 'accessing - constants' }
BSONConstants class >> BSON_HAVE_ALIGNED_ALLOC [

	^ BSON_HAVE_ALIGNED_ALLOC
]

{ #category : 'accessing - constants' }
BSONConstants class >> BSON_HAVE_CLOCK_GETTIME [

	^ BSON_HAVE_CLOCK_GETTIME
]

{ #category : 'accessing - constants' }
BSONConstants class >> BSON_HAVE_GMTIME_R [

	^ BSON_HAVE_GMTIME_R
]

{ #category : 'accessing - constants' }
BSONConstants class >> BSON_HAVE_RAND_R [

	^ BSON_HAVE_RAND_R
]

{ #category : 'accessing - constants' }
BSONConstants class >> BSON_HAVE_SNPRINTF [

	^ BSON_HAVE_SNPRINTF
]

{ #category : 'accessing - constants' }
BSONConstants class >> BSON_HAVE_STDBOOL_H [

	^ BSON_HAVE_STDBOOL_H
]

{ #category : 'accessing - constants' }
BSONConstants class >> BSON_HAVE_STRINGS_H [

	^ BSON_HAVE_STRINGS_H
]

{ #category : 'accessing - constants' }
BSONConstants class >> BSON_HAVE_STRLCPY [

	^ BSON_HAVE_STRLCPY
]

{ #category : 'accessing - constants' }
BSONConstants class >> BSON_HAVE_STRNLEN [

	^ BSON_HAVE_STRNLEN
]

{ #category : 'accessing - constants' }
BSONConstants class >> BSON_HAVE_TIMESPEC [

	^ BSON_HAVE_TIMESPEC
]

{ #category : 'accessing - constants' }
BSONConstants class >> BSON_LITTLE_ENDIAN [

	^ BSON_LITTLE_ENDIAN
]

{ #category : 'accessing - constants' }
BSONConstants class >> BSON_MAJOR_VERSION [

	^ BSON_MAJOR_VERSION
]

{ #category : 'accessing - constants' }
BSONConstants class >> BSON_MAX_LEN_UNLIMITED [

	^ BSON_MAX_LEN_UNLIMITED
]

{ #category : 'accessing - constants' }
BSONConstants class >> BSON_MAX_SIZE [

	^ BSON_MAX_SIZE
]

{ #category : 'accessing - constants' }
BSONConstants class >> BSON_MICRO_VERSION [

	^ BSON_MICRO_VERSION
]

{ #category : 'accessing - constants' }
BSONConstants class >> BSON_MINOR_VERSION [

	^ BSON_MINOR_VERSION
]

{ #category : 'accessing - constants' }
BSONConstants class >> BSON_OS [

	^ BSON_OS
]

{ #category : 'accessing - constants' }
BSONConstants class >> BSON_VERSION_HEX [

	^ BSON_VERSION_HEX
]

{ #category : 'accessing - constants' }
BSONConstants class >> BSON_VERSION_S [

	^ BSON_VERSION_S
]

{ #category : 'accessing - constants' }
BSONConstants class >> BSON_WORD_SIZE [

	^ BSON_WORD_SIZE
]

{ #category : 'accessing - constants' }
BSONConstants class >> SSIZE_MIN [

	^ SSIZE_MIN
]

{ #category : 'class initialization' }
BSONConstants class >> initialize [

	BSON_BYTE_ORDER := 16r4D2.
	BSON_HAVE_STDBOOL_H := 1.
	BSON_OS := 1.
	BSON_HAVE_CLOCK_GETTIME := 1.
	BSON_HAVE_STRINGS_H := 1.
	BSON_HAVE_STRNLEN := 1.
	BSON_HAVE_SNPRINTF := 1.
	BSON_HAVE_GMTIME_R := 1.
	BSON_HAVE_TIMESPEC := 1.
	BSON_EXTRA_ALIGN := 1.
	BSON_HAVE_RAND_R := 1.
	BSON_HAVE_STRLCPY := 1.
	BSON_HAVE_ALIGNED_ALLOC := 0.
	BSON_ALIGN_OF_PTR := 8	 "(BSON_ALIGNOF (void *))".
	BSON_WORD_SIZE := 16r40.
	SSIZE_MIN := -16r8000000000000000	 "BSON_NUMERIC_LIMITS_MIN_SIGNED (ssize_t, SSIZE_MAX)".
	BSON_BIG_ENDIAN := 16r10E1.
	BSON_LITTLE_ENDIAN := 16r4D2.
	BSON_ERROR_BUFFER_SIZE := 16r1F8.
	BSON_DECIMAL128_STRING := 16r2B.
	BSON_DECIMAL128_INF := 'Infinity'.
	BSON_DECIMAL128_NAN := 'NaN'.
	BSON_ERROR_JSON := 1.
	BSON_ERROR_READER := 2.
	BSON_ERROR_INVALID := 3.
	BSON_MAX_LEN_UNLIMITED := -1.
	BSON_ERROR_READER_BADFD := 1.
	BSON_MAJOR_VERSION := 1	 "(1)".
	BSON_MINOR_VERSION := 16r1E	 "(30)".
	BSON_MICRO_VERSION := 5	 "(5)".
	BSON_VERSION_S := '1.30.5'.
	BSON_VERSION_HEX := 16r11E0500	 "(BSON_MAJOR_VERSION << 24 | \
                          BSON_MINOR_VERSION << 16 | \
                          BSON_MICRO_VERSION << 8)".
	BCON_STACK_MAX := 16r64.
	BSON_MAX_SIZE := 16r7FFFFFFF	 "((size_t) ((1U << 31) - 1))"
]
