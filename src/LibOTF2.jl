module LibOTF2

using CEnum: CEnum, @cenum

const OTF2_IoParadigmRef = UInt8

const OTF2_StringRef = UInt32

const OTF2_AttributeRef = UInt32

const OTF2_SystemTreeNodeRef = UInt32

const OTF2_LocationGroupRef = UInt32

const OTF2_LocationRef = UInt64

const OTF2_RegionRef = UInt32

const OTF2_CallsiteRef = UInt32

const OTF2_CallpathRef = UInt32

const OTF2_GroupRef = UInt32

const OTF2_MetricMemberRef = UInt32

const OTF2_MetricRef = UInt32

const OTF2_CommRef = UInt32

const OTF2_ParameterRef = UInt32

const OTF2_RmaWinRef = UInt32

const OTF2_CartDimensionRef = UInt32

const OTF2_CartTopologyRef = UInt32

const OTF2_SourceCodeLocationRef = UInt32

const OTF2_CallingContextRef = UInt32

const OTF2_InterruptGeneratorRef = UInt32

const OTF2_IoFileRef = UInt32

const OTF2_IoHandleRef = UInt32

const OTF2_MarkerRef = UInt32

@cenum OTF2_ErrorCode::Int32 begin
    OTF2_DEPRECATED = -3
    OTF2_ABORT = -2
    OTF2_WARNING = -1
    OTF2_SUCCESS = 0
    OTF2_ERROR_INVALID = 1
    OTF2_ERROR_E2BIG = 2
    OTF2_ERROR_EACCES = 3
    OTF2_ERROR_EADDRNOTAVAIL = 4
    OTF2_ERROR_EAFNOSUPPORT = 5
    OTF2_ERROR_EAGAIN = 6
    OTF2_ERROR_EALREADY = 7
    OTF2_ERROR_EBADF = 8
    OTF2_ERROR_EBADMSG = 9
    OTF2_ERROR_EBUSY = 10
    OTF2_ERROR_ECANCELED = 11
    OTF2_ERROR_ECHILD = 12
    OTF2_ERROR_ECONNREFUSED = 13
    OTF2_ERROR_ECONNRESET = 14
    OTF2_ERROR_EDEADLK = 15
    OTF2_ERROR_EDESTADDRREQ = 16
    OTF2_ERROR_EDOM = 17
    OTF2_ERROR_EDQUOT = 18
    OTF2_ERROR_EEXIST = 19
    OTF2_ERROR_EFAULT = 20
    OTF2_ERROR_EFBIG = 21
    OTF2_ERROR_EINPROGRESS = 22
    OTF2_ERROR_EINTR = 23
    OTF2_ERROR_EINVAL = 24
    OTF2_ERROR_EIO = 25
    OTF2_ERROR_EISCONN = 26
    OTF2_ERROR_EISDIR = 27
    OTF2_ERROR_ELOOP = 28
    OTF2_ERROR_EMFILE = 29
    OTF2_ERROR_EMLINK = 30
    OTF2_ERROR_EMSGSIZE = 31
    OTF2_ERROR_EMULTIHOP = 32
    OTF2_ERROR_ENAMETOOLONG = 33
    OTF2_ERROR_ENETDOWN = 34
    OTF2_ERROR_ENETRESET = 35
    OTF2_ERROR_ENETUNREACH = 36
    OTF2_ERROR_ENFILE = 37
    OTF2_ERROR_ENOBUFS = 38
    OTF2_ERROR_ENODATA = 39
    OTF2_ERROR_ENODEV = 40
    OTF2_ERROR_ENOENT = 41
    OTF2_ERROR_ENOEXEC = 42
    OTF2_ERROR_ENOLCK = 43
    OTF2_ERROR_ENOLINK = 44
    OTF2_ERROR_ENOMEM = 45
    OTF2_ERROR_ENOMSG = 46
    OTF2_ERROR_ENOPROTOOPT = 47
    OTF2_ERROR_ENOSPC = 48
    OTF2_ERROR_ENOSR = 49
    OTF2_ERROR_ENOSTR = 50
    OTF2_ERROR_ENOSYS = 51
    OTF2_ERROR_ENOTCONN = 52
    OTF2_ERROR_ENOTDIR = 53
    OTF2_ERROR_ENOTEMPTY = 54
    OTF2_ERROR_ENOTSOCK = 55
    OTF2_ERROR_ENOTSUP = 56
    OTF2_ERROR_ENOTTY = 57
    OTF2_ERROR_ENXIO = 58
    OTF2_ERROR_EOPNOTSUPP = 59
    OTF2_ERROR_EOVERFLOW = 60
    OTF2_ERROR_EPERM = 61
    OTF2_ERROR_EPIPE = 62
    OTF2_ERROR_EPROTO = 63
    OTF2_ERROR_EPROTONOSUPPORT = 64
    OTF2_ERROR_EPROTOTYPE = 65
    OTF2_ERROR_ERANGE = 66
    OTF2_ERROR_EROFS = 67
    OTF2_ERROR_ESPIPE = 68
    OTF2_ERROR_ESRCH = 69
    OTF2_ERROR_ESTALE = 70
    OTF2_ERROR_ETIME = 71
    OTF2_ERROR_ETIMEDOUT = 72
    OTF2_ERROR_ETXTBSY = 73
    OTF2_ERROR_EWOULDBLOCK = 74
    OTF2_ERROR_EXDEV = 75
    OTF2_ERROR_END_OF_FUNCTION = 76
    OTF2_ERROR_INVALID_CALL = 77
    OTF2_ERROR_INVALID_ARGUMENT = 78
    OTF2_ERROR_INVALID_RECORD = 79
    OTF2_ERROR_INVALID_DATA = 80
    OTF2_ERROR_INVALID_SIZE_GIVEN = 81
    OTF2_ERROR_UNKNOWN_TYPE = 82
    OTF2_ERROR_INTEGRITY_FAULT = 83
    OTF2_ERROR_MEM_FAULT = 84
    OTF2_ERROR_MEM_ALLOC_FAILED = 85
    OTF2_ERROR_PROCESSED_WITH_FAULTS = 86
    OTF2_ERROR_INDEX_OUT_OF_BOUNDS = 87
    OTF2_ERROR_INVALID_LINENO = 88
    OTF2_ERROR_END_OF_BUFFER = 89
    OTF2_ERROR_FILE_INTERACTION = 90
    OTF2_ERROR_FILE_CAN_NOT_OPEN = 91
    OTF2_ERROR_INTERRUPTED_BY_CALLBACK = 92
    OTF2_ERROR_PROPERTY_NAME_INVALID = 93
    OTF2_ERROR_PROPERTY_EXISTS = 94
    OTF2_ERROR_PROPERTY_NOT_FOUND = 95
    OTF2_ERROR_PROPERTY_VALUE_INVALID = 96
    OTF2_ERROR_FILE_COMPRESSION_NOT_SUPPORTED = 97
    OTF2_ERROR_DUPLICATE_MAPPING_TABLE = 98
    OTF2_ERROR_INVALID_FILE_MODE_TRANSITION = 99
    OTF2_ERROR_COLLECTIVE_CALLBACK = 100
    OTF2_ERROR_FILE_SUBSTRATE_NOT_SUPPORTED = 101
    OTF2_ERROR_INVALID_ATTRIBUTE_TYPE = 102
    OTF2_ERROR_LOCKING_CALLBACK = 103
    OTF2_ERROR_HINT_INVALID = 104
    OTF2_ERROR_HINT_LOCKED = 105
    OTF2_ERROR_HINT_INVALID_VALUE = 106
end

function OTF2_Error_GetName(errorCode)
    ccall((:OTF2_Error_GetName, libotf2), Ptr{Cchar}, (OTF2_ErrorCode,), errorCode)
end

function OTF2_Error_GetDescription(errorCode)
    ccall((:OTF2_Error_GetDescription, libotf2), Ptr{Cchar}, (OTF2_ErrorCode,), errorCode)
end

# typedef OTF2_ErrorCode ( * OTF2_ErrorCallback ) ( void * userData , const char * file , uint64_t line , const char * function , OTF2_ErrorCode errorCode , const char * msgFormatString , va_list va )
const OTF2_ErrorCallback = Ptr{Cvoid}

function OTF2_Error_RegisterCallback(errorCallbackIn, userData)
    ccall((:OTF2_Error_RegisterCallback, libotf2), OTF2_ErrorCallback, (OTF2_ErrorCallback, Ptr{Cvoid}), errorCallbackIn, userData)
end

const OTF2_TimeStamp = UInt64

mutable struct OTF2_EvtReader_struct end

const OTF2_EvtReader = OTF2_EvtReader_struct

mutable struct OTF2_GlobalEvtReader_struct end

const OTF2_GlobalEvtReader = OTF2_GlobalEvtReader_struct

mutable struct OTF2_DefReader_struct end

const OTF2_DefReader = OTF2_DefReader_struct

mutable struct OTF2_GlobalDefReader_struct end

const OTF2_GlobalDefReader = OTF2_GlobalDefReader_struct

mutable struct OTF2_SnapReader_struct end

const OTF2_SnapReader = OTF2_SnapReader_struct

mutable struct OTF2_GlobalSnapReader_struct end

const OTF2_GlobalSnapReader = OTF2_GlobalSnapReader_struct

mutable struct OTF2_MarkerReader_struct end

const OTF2_MarkerReader = OTF2_MarkerReader_struct

const OTF2_FileMode = UInt8

@cenum OTF2_FileMode_enum::UInt32 begin
    OTF2_FILEMODE_WRITE = 0
    OTF2_FILEMODE_READ = 1
    OTF2_FILEMODE_MODIFY = 2
end

const OTF2_Compression = UInt8

@cenum OTF2_Compression_enum::UInt32 begin
    OTF2_COMPRESSION_UNDEFINED = 0
    OTF2_COMPRESSION_NONE = 1
    OTF2_COMPRESSION_ZLIB = 2
end

@cenum OTF2_CallbackCode_enum::UInt32 begin
    OTF2_CALLBACK_SUCCESS = 0
    OTF2_CALLBACK_INTERRUPT = 1
    OTF2_CALLBACK_ERROR = 1
end

const OTF2_CallbackCode = OTF2_CallbackCode_enum

const OTF2_FlushType = UInt8

@cenum OTF2_FlushType_enum::UInt32 begin
    OTF2_NO_FLUSH = 0
    OTF2_FLUSH = 1
end

const OTF2_Hint = UInt8

@cenum OTF2_Hint_enum::UInt32 begin
    OTF2_HINT_GLOBAL_READER = 0
end

const OTF2_Boolean = UInt8

@cenum OTF2_Boolean_enum::UInt32 begin
    OTF2_FALSE = 0
    OTF2_TRUE = 1
end

const OTF2_FileType = UInt8

@cenum OTF2_FileType_enum::UInt32 begin
    OTF2_FILETYPE_ANCHOR = 0
    OTF2_FILETYPE_GLOBAL_DEFS = 1
    OTF2_FILETYPE_LOCAL_DEFS = 2
    OTF2_FILETYPE_EVENTS = 3
    OTF2_FILETYPE_SNAPSHOTS = 4
    OTF2_FILETYPE_THUMBNAIL = 5
    OTF2_FILETYPE_MARKER = 6
    OTF2_FILETYPE_SIONRANKMAP = 7
end

const OTF2_FileSubstrate = UInt8

@cenum OTF2_FileSubstrate_enum::UInt32 begin
    OTF2_SUBSTRATE_UNDEFINED = 0
    OTF2_SUBSTRATE_POSIX = 1
    OTF2_SUBSTRATE_SION = 2
    OTF2_SUBSTRATE_NONE = 3
end

const OTF2_MappingType = UInt8

@cenum OTF2_MappingType_enum::UInt32 begin
    OTF2_MAPPING_STRING = 0
    OTF2_MAPPING_ATTRIBUTE = 1
    OTF2_MAPPING_LOCATION = 2
    OTF2_MAPPING_REGION = 3
    OTF2_MAPPING_GROUP = 4
    OTF2_MAPPING_METRIC = 5
    OTF2_MAPPING_COMM = 6
    OTF2_MAPPING_PARAMETER = 7
    OTF2_MAPPING_RMA_WIN = 8
    OTF2_MAPPING_SOURCE_CODE_LOCATION = 9
    OTF2_MAPPING_CALLING_CONTEXT = 10
    OTF2_MAPPING_INTERRUPT_GENERATOR = 11
    OTF2_MAPPING_IO_FILE = 12
    OTF2_MAPPING_IO_HANDLE = 13
    OTF2_MAPPING_LOCATION_GROUP = 14
    OTF2_MAPPING_MAX = 15
end

const OTF2_Type = UInt8

@cenum OTF2_Type_enum::UInt32 begin
    OTF2_TYPE_NONE = 0
    OTF2_TYPE_UINT8 = 1
    OTF2_TYPE_UINT16 = 2
    OTF2_TYPE_UINT32 = 3
    OTF2_TYPE_UINT64 = 4
    OTF2_TYPE_INT8 = 5
    OTF2_TYPE_INT16 = 6
    OTF2_TYPE_INT32 = 7
    OTF2_TYPE_INT64 = 8
    OTF2_TYPE_FLOAT = 9
    OTF2_TYPE_DOUBLE = 10
    OTF2_TYPE_STRING = 11
    OTF2_TYPE_ATTRIBUTE = 12
    OTF2_TYPE_LOCATION = 13
    OTF2_TYPE_REGION = 14
    OTF2_TYPE_GROUP = 15
    OTF2_TYPE_METRIC = 16
    OTF2_TYPE_COMM = 17
    OTF2_TYPE_PARAMETER = 18
    OTF2_TYPE_RMA_WIN = 19
    OTF2_TYPE_SOURCE_CODE_LOCATION = 20
    OTF2_TYPE_CALLING_CONTEXT = 21
    OTF2_TYPE_INTERRUPT_GENERATOR = 22
    OTF2_TYPE_IO_FILE = 23
    OTF2_TYPE_IO_HANDLE = 24
    OTF2_TYPE_LOCATION_GROUP = 25
end

const OTF2_Paradigm = UInt8

@cenum OTF2_Paradigm_enum::UInt32 begin
    OTF2_PARADIGM_UNKNOWN = 0
    OTF2_PARADIGM_USER = 1
    OTF2_PARADIGM_COMPILER = 2
    OTF2_PARADIGM_OPENMP = 3
    OTF2_PARADIGM_MPI = 4
    OTF2_PARADIGM_CUDA = 5
    OTF2_PARADIGM_MEASUREMENT_SYSTEM = 6
    OTF2_PARADIGM_PTHREAD = 7
    OTF2_PARADIGM_HMPP = 8
    OTF2_PARADIGM_OMPSS = 9
    OTF2_PARADIGM_HARDWARE = 10
    OTF2_PARADIGM_GASPI = 11
    OTF2_PARADIGM_UPC = 12
    OTF2_PARADIGM_SHMEM = 13
    OTF2_PARADIGM_WINTHREAD = 14
    OTF2_PARADIGM_QTTHREAD = 15
    OTF2_PARADIGM_ACETHREAD = 16
    OTF2_PARADIGM_TBBTHREAD = 17
    OTF2_PARADIGM_OPENACC = 18
    OTF2_PARADIGM_OPENCL = 19
    OTF2_PARADIGM_MTAPI = 20
    OTF2_PARADIGM_SAMPLING = 21
    OTF2_PARADIGM_NONE = 22
    OTF2_PARADIGM_HIP = 23
    OTF2_PARADIGM_KOKKOS = 24
end

const OTF2_ParadigmClass = UInt8

@cenum OTF2_ParadigmClass_enum::UInt32 begin
    OTF2_PARADIGM_CLASS_PROCESS = 0
    OTF2_PARADIGM_CLASS_THREAD_FORK_JOIN = 1
    OTF2_PARADIGM_CLASS_THREAD_CREATE_WAIT = 2
    OTF2_PARADIGM_CLASS_ACCELERATOR = 3
end

const OTF2_ParadigmProperty = UInt8

@cenum OTF2_ParadigmProperty_enum::UInt32 begin
    OTF2_PARADIGM_PROPERTY_COMM_NAME_TEMPLATE = 0
    OTF2_PARADIGM_PROPERTY_RMA_WIN_NAME_TEMPLATE = 1
    OTF2_PARADIGM_PROPERTY_RMA_ONLY = 2
end

const OTF2_ThumbnailType = UInt8

@cenum OTF2_ThumbnailType_enum::UInt32 begin
    OTF2_THUMBNAIL_TYPE_REGION = 0
    OTF2_THUMBNAIL_TYPE_METRIC = 1
    OTF2_THUMBNAIL_TYPE_ATTRIBUTES = 2
end

# typedef OTF2_FlushType ( * OTF2_PreFlushCallback ) ( void * userData , OTF2_FileType fileType , OTF2_LocationRef location , void * callerData , bool final )
const OTF2_PreFlushCallback = Ptr{Cvoid}

# typedef OTF2_TimeStamp ( * OTF2_PostFlushCallback ) ( void * userData , OTF2_FileType fileType , OTF2_LocationRef location )
const OTF2_PostFlushCallback = Ptr{Cvoid}

struct OTF2_FlushCallbacks
    otf2_pre_flush::OTF2_PreFlushCallback
    otf2_post_flush::OTF2_PostFlushCallback
end

# typedef void * ( * OTF2_MemoryAllocate ) ( void * userData , OTF2_FileType fileType , OTF2_LocationRef location , void * * perBufferData , uint64_t chunkSize )
const OTF2_MemoryAllocate = Ptr{Cvoid}

# typedef void ( * OTF2_MemoryFreeAll ) ( void * userData , OTF2_FileType fileType , OTF2_LocationRef location , void * * perBufferData , bool final )
const OTF2_MemoryFreeAll = Ptr{Cvoid}

struct OTF2_MemoryCallbacks
    otf2_allocate::OTF2_MemoryAllocate
    otf2_free_all::OTF2_MemoryFreeAll
end

mutable struct OTF2_CollectiveContext end

# typedef OTF2_CallbackCode ( * OTF2_Collectives_GetSize ) ( void * userData , OTF2_CollectiveContext * commContext , uint32_t * size )
const OTF2_Collectives_GetSize = Ptr{Cvoid}

# typedef OTF2_CallbackCode ( * OTF2_Collectives_GetRank ) ( void * userData , OTF2_CollectiveContext * commContext , uint32_t * rank )
const OTF2_Collectives_GetRank = Ptr{Cvoid}

# typedef OTF2_CallbackCode ( * OTF2_Collectives_CreateLocalComm ) ( void * userData , OTF2_CollectiveContext * * localCommContext , OTF2_CollectiveContext * globalCommContext , uint32_t globalRank , uint32_t globalSize , uint32_t localRank , uint32_t localSize , uint32_t fileNumber , uint32_t numberOfFiles )
const OTF2_Collectives_CreateLocalComm = Ptr{Cvoid}

# typedef OTF2_CallbackCode ( * OTF2_Collectives_FreeLocalComm ) ( void * userData , OTF2_CollectiveContext * localCommContext )
const OTF2_Collectives_FreeLocalComm = Ptr{Cvoid}

# typedef OTF2_CallbackCode ( * OTF2_Collectives_Barrier ) ( void * userData , OTF2_CollectiveContext * commContext )
const OTF2_Collectives_Barrier = Ptr{Cvoid}

# typedef OTF2_CallbackCode ( * OTF2_Collectives_Bcast ) ( void * userData , OTF2_CollectiveContext * commContext , void * data , uint32_t numberElements , OTF2_Type type , uint32_t root )
const OTF2_Collectives_Bcast = Ptr{Cvoid}

# typedef OTF2_CallbackCode ( * OTF2_Collectives_Gather ) ( void * userData , OTF2_CollectiveContext * commContext , const void * inData , void * outData , uint32_t numberElements , OTF2_Type type , uint32_t root )
const OTF2_Collectives_Gather = Ptr{Cvoid}

# typedef OTF2_CallbackCode ( * OTF2_Collectives_Gatherv ) ( void * userData , OTF2_CollectiveContext * commContext , const void * inData , uint32_t inElements , void * outData , const uint32_t * outElements , OTF2_Type type , uint32_t root )
const OTF2_Collectives_Gatherv = Ptr{Cvoid}

# typedef OTF2_CallbackCode ( * OTF2_Collectives_Scatter ) ( void * userData , OTF2_CollectiveContext * commContext , const void * inData , void * outData , uint32_t numberElements , OTF2_Type type , uint32_t root )
const OTF2_Collectives_Scatter = Ptr{Cvoid}

# typedef OTF2_CallbackCode ( * OTF2_Collectives_Scatterv ) ( void * userData , OTF2_CollectiveContext * commContext , const void * inData , const uint32_t * inElements , void * outData , uint32_t outElements , OTF2_Type type , uint32_t root )
const OTF2_Collectives_Scatterv = Ptr{Cvoid}

# typedef void ( * OTF2_Collectives_Release ) ( void * userData , OTF2_CollectiveContext * globalCommContext , OTF2_CollectiveContext * localCommContext )
const OTF2_Collectives_Release = Ptr{Cvoid}

struct OTF2_CollectiveCallbacks
    otf2_release::OTF2_Collectives_Release
    otf2_get_size::OTF2_Collectives_GetSize
    otf2_get_rank::OTF2_Collectives_GetRank
    otf2_create_local_comm::OTF2_Collectives_CreateLocalComm
    otf2_free_local_comm::OTF2_Collectives_FreeLocalComm
    otf2_barrier::OTF2_Collectives_Barrier
    otf2_bcast::OTF2_Collectives_Bcast
    otf2_gather::OTF2_Collectives_Gather
    otf2_gatherv::OTF2_Collectives_Gatherv
    otf2_scatter::OTF2_Collectives_Scatter
    otf2_scatterv::OTF2_Collectives_Scatterv
end

mutable struct OTF2_LockObject end

const OTF2_Lock = Ptr{OTF2_LockObject}

# typedef OTF2_CallbackCode ( * OTF2_Locking_Create ) ( void * userData , OTF2_Lock * lock )
const OTF2_Locking_Create = Ptr{Cvoid}

# typedef OTF2_CallbackCode ( * OTF2_Locking_Destroy ) ( void * userData , OTF2_Lock lock )
const OTF2_Locking_Destroy = Ptr{Cvoid}

# typedef OTF2_CallbackCode ( * OTF2_Locking_Lock ) ( void * userData , OTF2_Lock lock )
const OTF2_Locking_Lock = Ptr{Cvoid}

# typedef OTF2_CallbackCode ( * OTF2_Locking_Unlock ) ( void * userData , OTF2_Lock lock )
const OTF2_Locking_Unlock = Ptr{Cvoid}

# typedef void ( * OTF2_Locking_Release ) ( void * userData )
const OTF2_Locking_Release = Ptr{Cvoid}

struct OTF2_LockingCallbacks
    otf2_release::OTF2_Locking_Release
    otf2_create::OTF2_Locking_Create
    otf2_destroy::OTF2_Locking_Destroy
    otf2_lock::OTF2_Locking_Lock
    otf2_unlock::OTF2_Locking_Unlock
end

const OTF2_SystemTreeDomain = UInt8

@cenum OTF2_SystemTreeDomain_enum::UInt32 begin
    OTF2_SYSTEM_TREE_DOMAIN_MACHINE = 0
    OTF2_SYSTEM_TREE_DOMAIN_SHARED_MEMORY = 1
    OTF2_SYSTEM_TREE_DOMAIN_NUMA = 2
    OTF2_SYSTEM_TREE_DOMAIN_SOCKET = 3
    OTF2_SYSTEM_TREE_DOMAIN_CACHE = 4
    OTF2_SYSTEM_TREE_DOMAIN_CORE = 5
    OTF2_SYSTEM_TREE_DOMAIN_PU = 6
    OTF2_SYSTEM_TREE_DOMAIN_ACCELERATOR_DEVICE = 7
    OTF2_SYSTEM_TREE_DOMAIN_NETWORKING_DEVICE = 8
end

const OTF2_LocationGroupType = UInt8

@cenum OTF2_LocationGroupType_enum::UInt32 begin
    OTF2_LOCATION_GROUP_TYPE_UNKNOWN = 0
    OTF2_LOCATION_GROUP_TYPE_PROCESS = 1
    OTF2_LOCATION_GROUP_TYPE_ACCELERATOR = 2
end

const OTF2_LocationType = UInt8

@cenum OTF2_LocationType_enum::UInt32 begin
    OTF2_LOCATION_TYPE_UNKNOWN = 0
    OTF2_LOCATION_TYPE_CPU_THREAD = 1
    OTF2_LOCATION_TYPE_ACCELERATOR_STREAM = 2
    OTF2_LOCATION_TYPE_GPU = 2
    OTF2_LOCATION_TYPE_METRIC = 3
end

const OTF2_RegionRole = UInt8

@cenum OTF2_RegionRole_enum::UInt32 begin
    OTF2_REGION_ROLE_UNKNOWN = 0
    OTF2_REGION_ROLE_FUNCTION = 1
    OTF2_REGION_ROLE_WRAPPER = 2
    OTF2_REGION_ROLE_LOOP = 3
    OTF2_REGION_ROLE_CODE = 4
    OTF2_REGION_ROLE_PARALLEL = 5
    OTF2_REGION_ROLE_SECTIONS = 6
    OTF2_REGION_ROLE_SECTION = 7
    OTF2_REGION_ROLE_WORKSHARE = 8
    OTF2_REGION_ROLE_SINGLE = 9
    OTF2_REGION_ROLE_SINGLE_SBLOCK = 10
    OTF2_REGION_ROLE_MASTER = 11
    OTF2_REGION_ROLE_CRITICAL = 12
    OTF2_REGION_ROLE_CRITICAL_SBLOCK = 13
    OTF2_REGION_ROLE_ATOMIC = 14
    OTF2_REGION_ROLE_BARRIER = 15
    OTF2_REGION_ROLE_IMPLICIT_BARRIER = 16
    OTF2_REGION_ROLE_FLUSH = 17
    OTF2_REGION_ROLE_ORDERED = 18
    OTF2_REGION_ROLE_ORDERED_SBLOCK = 19
    OTF2_REGION_ROLE_TASK = 20
    OTF2_REGION_ROLE_TASK_CREATE = 21
    OTF2_REGION_ROLE_TASK_WAIT = 22
    OTF2_REGION_ROLE_COLL_ONE2ALL = 23
    OTF2_REGION_ROLE_COLL_ALL2ONE = 24
    OTF2_REGION_ROLE_COLL_ALL2ALL = 25
    OTF2_REGION_ROLE_COLL_OTHER = 26
    OTF2_REGION_ROLE_FILE_IO = 27
    OTF2_REGION_ROLE_POINT2POINT = 28
    OTF2_REGION_ROLE_RMA = 29
    OTF2_REGION_ROLE_DATA_TRANSFER = 30
    OTF2_REGION_ROLE_ARTIFICIAL = 31
    OTF2_REGION_ROLE_THREAD_CREATE = 32
    OTF2_REGION_ROLE_THREAD_WAIT = 33
    OTF2_REGION_ROLE_TASK_UNTIED = 34
    OTF2_REGION_ROLE_ALLOCATE = 35
    OTF2_REGION_ROLE_DEALLOCATE = 36
    OTF2_REGION_ROLE_REALLOCATE = 37
    OTF2_REGION_ROLE_FILE_IO_METADATA = 38
end

const OTF2_RegionFlag = UInt32

@cenum OTF2_RegionFlag_enum::UInt32 begin
    OTF2_REGION_FLAG_NONE = 0
    OTF2_REGION_FLAG_DYNAMIC = 1
    OTF2_REGION_FLAG_PHASE = 2
end

const OTF2_GroupType = UInt8

@cenum OTF2_GroupType_enum::UInt32 begin
    OTF2_GROUP_TYPE_UNKNOWN = 0
    OTF2_GROUP_TYPE_LOCATIONS = 1
    OTF2_GROUP_TYPE_REGIONS = 2
    OTF2_GROUP_TYPE_METRIC = 3
    OTF2_GROUP_TYPE_COMM_LOCATIONS = 4
    OTF2_GROUP_TYPE_COMM_GROUP = 5
    OTF2_GROUP_TYPE_COMM_SELF = 6
end

const OTF2_GroupFlag = UInt32

@cenum OTF2_GroupFlag_enum::UInt32 begin
    OTF2_GROUP_FLAG_NONE = 0
    OTF2_GROUP_FLAG_GLOBAL_MEMBERS = 1
end

const OTF2_Base = UInt8

@cenum OTF2_Base_enum::UInt32 begin
    OTF2_BASE_BINARY = 0
    OTF2_BASE_DECIMAL = 1
end

const OTF2_MetricOccurrence = UInt8

@cenum OTF2_MetricOccurrence_enum::UInt32 begin
    OTF2_METRIC_SYNCHRONOUS_STRICT = 0
    OTF2_METRIC_SYNCHRONOUS = 1
    OTF2_METRIC_ASYNCHRONOUS = 2
end

const OTF2_MetricType = UInt8

@cenum OTF2_MetricType_enum::UInt32 begin
    OTF2_METRIC_TYPE_OTHER = 0
    OTF2_METRIC_TYPE_PAPI = 1
    OTF2_METRIC_TYPE_RUSAGE = 2
    OTF2_METRIC_TYPE_USER = 3
end

const OTF2_MetricValueProperty = UInt8

@cenum OTF2_MetricValueProperty_enum::UInt32 begin
    OTF2_METRIC_VALUE_ACCUMULATED = 0
    OTF2_METRIC_VALUE_ABSOLUTE = 1
    OTF2_METRIC_VALUE_RELATIVE = 2
    OTF2_METRIC_VALUE_MASK = 15
end

const OTF2_MetricTiming = UInt8

@cenum OTF2_MetricTiming_enum::UInt32 begin
    OTF2_METRIC_TIMING_START = 0
    OTF2_METRIC_TIMING_POINT = 16
    OTF2_METRIC_TIMING_LAST = 32
    OTF2_METRIC_TIMING_NEXT = 48
    OTF2_METRIC_TIMING_MASK = 240
end

const OTF2_MetricMode = UInt8

@cenum OTF2_MetricMode_enum::UInt32 begin
    OTF2_METRIC_ACCUMULATED_START = 0
    OTF2_METRIC_ACCUMULATED_POINT = 16
    OTF2_METRIC_ACCUMULATED_LAST = 32
    OTF2_METRIC_ACCUMULATED_NEXT = 48
    OTF2_METRIC_ABSOLUTE_POINT = 17
    OTF2_METRIC_ABSOLUTE_LAST = 33
    OTF2_METRIC_ABSOLUTE_NEXT = 49
    OTF2_METRIC_RELATIVE_POINT = 18
    OTF2_METRIC_RELATIVE_LAST = 34
    OTF2_METRIC_RELATIVE_NEXT = 50
end

const OTF2_MetricScope = UInt8

@cenum OTF2_MetricScope_enum::UInt32 begin
    OTF2_SCOPE_LOCATION = 0
    OTF2_SCOPE_LOCATION_GROUP = 1
    OTF2_SCOPE_SYSTEM_TREE_NODE = 2
    OTF2_SCOPE_GROUP = 3
end

const OTF2_RecorderKind = UInt8

@cenum OTF2_RecorderKind_enum::UInt32 begin
    OTF2_RECORDER_KIND_UNKNOWN = 0
    OTF2_RECORDER_KIND_ABSTRACT = 1
    OTF2_RECORDER_KIND_CPU = 2
    OTF2_RECORDER_KIND_GPU = 3
end

const OTF2_ParameterType = UInt8

@cenum OTF2_ParameterType_enum::UInt32 begin
    OTF2_PARAMETER_TYPE_STRING = 0
    OTF2_PARAMETER_TYPE_INT64 = 1
    OTF2_PARAMETER_TYPE_UINT64 = 2
end

const OTF2_CartPeriodicity = UInt8

@cenum OTF2_CartPeriodicity_enum::UInt32 begin
    OTF2_CART_PERIODIC_FALSE = 0
    OTF2_CART_PERIODIC_TRUE = 1
end

const OTF2_InterruptGeneratorMode = UInt8

@cenum OTF2_InterruptGeneratorMode_enum::UInt32 begin
    OTF2_INTERRUPT_GENERATOR_MODE_TIME = 0
    OTF2_INTERRUPT_GENERATOR_MODE_COUNT = 1
end

const OTF2_IoParadigmClass = UInt8

@cenum OTF2_IoParadigmClass_enum::UInt32 begin
    OTF2_IO_PARADIGM_CLASS_SERIAL = 0
    OTF2_IO_PARADIGM_CLASS_PARALLEL = 1
end

const OTF2_IoParadigmFlag = UInt32

@cenum OTF2_IoParadigmFlag_enum::UInt32 begin
    OTF2_IO_PARADIGM_FLAG_NONE = 0
    OTF2_IO_PARADIGM_FLAG_OS = 1
end

const OTF2_IoParadigmProperty = UInt8

@cenum OTF2_IoParadigmProperty_enum::UInt32 begin
    OTF2_IO_PARADIGM_PROPERTY_VERSION = 0
end

const OTF2_IoHandleFlag = UInt32

@cenum OTF2_IoHandleFlag_enum::UInt32 begin
    OTF2_IO_HANDLE_FLAG_NONE = 0
    OTF2_IO_HANDLE_FLAG_PRE_CREATED = 1
    OTF2_IO_HANDLE_FLAG_ALL_PROXY = 2
end

const OTF2_IoAccessMode = UInt8

@cenum OTF2_IoAccessMode_enum::UInt32 begin
    OTF2_IO_ACCESS_MODE_READ_ONLY = 0
    OTF2_IO_ACCESS_MODE_WRITE_ONLY = 1
    OTF2_IO_ACCESS_MODE_READ_WRITE = 2
    OTF2_IO_ACCESS_MODE_EXECUTE_ONLY = 3
    OTF2_IO_ACCESS_MODE_SEARCH_ONLY = 4
end

const OTF2_IoStatusFlag = UInt32

@cenum OTF2_IoStatusFlag_enum::UInt32 begin
    OTF2_IO_STATUS_FLAG_NONE = 0
    OTF2_IO_STATUS_FLAG_CLOSE_ON_EXEC = 1
    OTF2_IO_STATUS_FLAG_APPEND = 2
    OTF2_IO_STATUS_FLAG_NON_BLOCKING = 4
    OTF2_IO_STATUS_FLAG_ASYNC = 8
    OTF2_IO_STATUS_FLAG_SYNC = 16
    OTF2_IO_STATUS_FLAG_DATA_SYNC = 32
    OTF2_IO_STATUS_FLAG_AVOID_CACHING = 64
    OTF2_IO_STATUS_FLAG_NO_ACCESS_TIME = 128
    OTF2_IO_STATUS_FLAG_DELETE_ON_CLOSE = 256
end

const OTF2_CommFlag = UInt32

@cenum OTF2_CommFlag_enum::UInt32 begin
    OTF2_COMM_FLAG_NONE = 0
    OTF2_COMM_FLAG_CREATE_DESTROY_EVENTS = 1
end

const OTF2_RmaWinFlag = UInt32

@cenum OTF2_RmaWinFlag_enum::UInt32 begin
    OTF2_RMA_WIN_FLAG_NONE = 0
    OTF2_RMA_WIN_FLAG_CREATE_DESTROY_EVENTS = 1
end

const OTF2_MeasurementMode = UInt8

@cenum OTF2_MeasurementMode_enum::UInt32 begin
    OTF2_MEASUREMENT_ON = 1
    OTF2_MEASUREMENT_OFF = 2
end

const OTF2_CollectiveOp = UInt8

@cenum OTF2_CollectiveOp_enum::UInt32 begin
    OTF2_COLLECTIVE_OP_BARRIER = 0
    OTF2_COLLECTIVE_OP_BCAST = 1
    OTF2_COLLECTIVE_OP_GATHER = 2
    OTF2_COLLECTIVE_OP_GATHERV = 3
    OTF2_COLLECTIVE_OP_SCATTER = 4
    OTF2_COLLECTIVE_OP_SCATTERV = 5
    OTF2_COLLECTIVE_OP_ALLGATHER = 6
    OTF2_COLLECTIVE_OP_ALLGATHERV = 7
    OTF2_COLLECTIVE_OP_ALLTOALL = 8
    OTF2_COLLECTIVE_OP_ALLTOALLV = 9
    OTF2_COLLECTIVE_OP_ALLTOALLW = 10
    OTF2_COLLECTIVE_OP_ALLREDUCE = 11
    OTF2_COLLECTIVE_OP_REDUCE = 12
    OTF2_COLLECTIVE_OP_REDUCE_SCATTER = 13
    OTF2_COLLECTIVE_OP_SCAN = 14
    OTF2_COLLECTIVE_OP_EXSCAN = 15
    OTF2_COLLECTIVE_OP_REDUCE_SCATTER_BLOCK = 16
    OTF2_COLLECTIVE_OP_CREATE_HANDLE = 17
    OTF2_COLLECTIVE_OP_DESTROY_HANDLE = 18
    OTF2_COLLECTIVE_OP_ALLOCATE = 19
    OTF2_COLLECTIVE_OP_DEALLOCATE = 20
    OTF2_COLLECTIVE_OP_CREATE_HANDLE_AND_ALLOCATE = 21
    OTF2_COLLECTIVE_OP_DESTROY_HANDLE_AND_DEALLOCATE = 22
end

const OTF2_RmaSyncType = UInt8

@cenum OTF2_RmaSyncType_enum::UInt32 begin
    OTF2_RMA_SYNC_TYPE_MEMORY = 0
    OTF2_RMA_SYNC_TYPE_NOTIFY_IN = 1
    OTF2_RMA_SYNC_TYPE_NOTIFY_OUT = 2
end

const OTF2_RmaSyncLevel = UInt32

@cenum OTF2_RmaSyncLevel_enum::UInt32 begin
    OTF2_RMA_SYNC_LEVEL_NONE = 0
    OTF2_RMA_SYNC_LEVEL_PROCESS = 1
    OTF2_RMA_SYNC_LEVEL_MEMORY = 2
end

const OTF2_LockType = UInt8

@cenum OTF2_LockType_enum::UInt32 begin
    OTF2_LOCK_EXCLUSIVE = 0
    OTF2_LOCK_SHARED = 1
end

const OTF2_RmaAtomicType = UInt8

@cenum OTF2_RmaAtomicType_enum::UInt32 begin
    OTF2_RMA_ATOMIC_TYPE_ACCUMULATE = 0
    OTF2_RMA_ATOMIC_TYPE_INCREMENT = 1
    OTF2_RMA_ATOMIC_TYPE_TEST_AND_SET = 2
    OTF2_RMA_ATOMIC_TYPE_COMPARE_AND_SWAP = 3
    OTF2_RMA_ATOMIC_TYPE_SWAP = 4
    OTF2_RMA_ATOMIC_TYPE_FETCH_AND_ADD = 5
    OTF2_RMA_ATOMIC_TYPE_FETCH_AND_INCREMENT = 6
    OTF2_RMA_ATOMIC_TYPE_FETCH_AND_ACCUMULATE = 7
end

const OTF2_IoCreationFlag = UInt32

@cenum OTF2_IoCreationFlag_enum::UInt32 begin
    OTF2_IO_CREATION_FLAG_NONE = 0
    OTF2_IO_CREATION_FLAG_CREATE = 1
    OTF2_IO_CREATION_FLAG_TRUNCATE = 2
    OTF2_IO_CREATION_FLAG_DIRECTORY = 4
    OTF2_IO_CREATION_FLAG_EXCLUSIVE = 8
    OTF2_IO_CREATION_FLAG_NO_CONTROLLING_TERMINAL = 16
    OTF2_IO_CREATION_FLAG_NO_FOLLOW = 32
    OTF2_IO_CREATION_FLAG_PATH = 64
    OTF2_IO_CREATION_FLAG_TEMPORARY_FILE = 128
    OTF2_IO_CREATION_FLAG_LARGEFILE = 256
    OTF2_IO_CREATION_FLAG_NO_SEEK = 512
    OTF2_IO_CREATION_FLAG_UNIQUE = 1024
end

const OTF2_IoSeekOption = UInt8

@cenum OTF2_IoSeekOption_enum::UInt32 begin
    OTF2_IO_SEEK_FROM_START = 0
    OTF2_IO_SEEK_FROM_CURRENT = 1
    OTF2_IO_SEEK_FROM_END = 2
    OTF2_IO_SEEK_DATA = 3
    OTF2_IO_SEEK_HOLE = 4
end

const OTF2_IoOperationMode = UInt8

@cenum OTF2_IoOperationMode_enum::UInt32 begin
    OTF2_IO_OPERATION_MODE_READ = 0
    OTF2_IO_OPERATION_MODE_WRITE = 1
    OTF2_IO_OPERATION_MODE_FLUSH = 2
end

const OTF2_IoOperationFlag = UInt32

@cenum OTF2_IoOperationFlag_enum::UInt32 begin
    OTF2_IO_OPERATION_FLAG_NONE = 0
    OTF2_IO_OPERATION_FLAG_NON_BLOCKING = 1
    OTF2_IO_OPERATION_FLAG_COLLECTIVE = 2
end

const OTF2_CollectiveRoot = UInt32

@cenum OTF2_CollectiveRoot_enum::UInt32 begin
    OTF2_COLLECTIVE_ROOT_NONE = 0x00000000ffffffff
    OTF2_COLLECTIVE_ROOT_SELF = 0x00000000fffffffe
    OTF2_COLLECTIVE_ROOT_THIS_GROUP = 0x00000000fffffffd
end

struct OTF2_MetricValue_union
    data::NTuple{8, UInt8}
end

function Base.getproperty(x::Ptr{OTF2_MetricValue_union}, f::Symbol)
    f === :signed_int && return Ptr{Int64}(x + 0)
    f === :unsigned_int && return Ptr{UInt64}(x + 0)
    f === :floating_point && return Ptr{Cdouble}(x + 0)
    return getfield(x, f)
end

function Base.getproperty(x::OTF2_MetricValue_union, f::Symbol)
    r = Ref{OTF2_MetricValue_union}(x)
    ptr = Base.unsafe_convert(Ptr{OTF2_MetricValue_union}, r)
    fptr = getproperty(ptr, f)
    GC.@preserve r unsafe_load(fptr)
end

function Base.setproperty!(x::Ptr{OTF2_MetricValue_union}, f::Symbol, v)
    unsafe_store!(getproperty(x, f), v)
end

const OTF2_MetricValue = OTF2_MetricValue_union

struct OTF2_AttributeValue_union
    data::NTuple{8, UInt8}
end

function Base.getproperty(x::Ptr{OTF2_AttributeValue_union}, f::Symbol)
    f === :uint8 && return Ptr{UInt8}(x + 0)
    f === :uint16 && return Ptr{UInt16}(x + 0)
    f === :uint32 && return Ptr{UInt32}(x + 0)
    f === :uint64 && return Ptr{UInt64}(x + 0)
    f === :int8 && return Ptr{Int8}(x + 0)
    f === :int16 && return Ptr{Int16}(x + 0)
    f === :int32 && return Ptr{Int32}(x + 0)
    f === :int64 && return Ptr{Int64}(x + 0)
    f === :float32 && return Ptr{Cfloat}(x + 0)
    f === :float64 && return Ptr{Cdouble}(x + 0)
    f === :stringRef && return Ptr{OTF2_StringRef}(x + 0)
    f === :attributeRef && return Ptr{OTF2_AttributeRef}(x + 0)
    f === :locationRef && return Ptr{OTF2_LocationRef}(x + 0)
    f === :regionRef && return Ptr{OTF2_RegionRef}(x + 0)
    f === :groupRef && return Ptr{OTF2_GroupRef}(x + 0)
    f === :metricRef && return Ptr{OTF2_MetricRef}(x + 0)
    f === :commRef && return Ptr{OTF2_CommRef}(x + 0)
    f === :parameterRef && return Ptr{OTF2_ParameterRef}(x + 0)
    f === :rmaWinRef && return Ptr{OTF2_RmaWinRef}(x + 0)
    f === :sourceCodeLocationRef && return Ptr{OTF2_SourceCodeLocationRef}(x + 0)
    f === :callingContextRef && return Ptr{OTF2_CallingContextRef}(x + 0)
    f === :interruptGeneratorRef && return Ptr{OTF2_InterruptGeneratorRef}(x + 0)
    f === :ioFileRef && return Ptr{OTF2_IoFileRef}(x + 0)
    f === :ioHandleRef && return Ptr{OTF2_IoHandleRef}(x + 0)
    f === :locationGroupRef && return Ptr{OTF2_LocationGroupRef}(x + 0)
    return getfield(x, f)
end

function Base.getproperty(x::OTF2_AttributeValue_union, f::Symbol)
    r = Ref{OTF2_AttributeValue_union}(x)
    ptr = Base.unsafe_convert(Ptr{OTF2_AttributeValue_union}, r)
    fptr = getproperty(ptr, f)
    GC.@preserve r unsafe_load(fptr)
end

function Base.setproperty!(x::Ptr{OTF2_AttributeValue_union}, f::Symbol, v)
    unsafe_store!(getproperty(x, f), v)
end

const OTF2_AttributeValue = OTF2_AttributeValue_union

function OTF2_AttributeValue_SetBoolean(enumValue, type, value)
    ccall((:OTF2_AttributeValue_SetBoolean, libotf2), OTF2_ErrorCode, (OTF2_Boolean, Ptr{OTF2_Type}, Ptr{OTF2_AttributeValue}), enumValue, type, value)
end

function OTF2_AttributeValue_SetFileType(enumValue, type, value)
    ccall((:OTF2_AttributeValue_SetFileType, libotf2), OTF2_ErrorCode, (OTF2_FileType, Ptr{OTF2_Type}, Ptr{OTF2_AttributeValue}), enumValue, type, value)
end

function OTF2_AttributeValue_SetFileSubstrate(enumValue, type, value)
    ccall((:OTF2_AttributeValue_SetFileSubstrate, libotf2), OTF2_ErrorCode, (OTF2_FileSubstrate, Ptr{OTF2_Type}, Ptr{OTF2_AttributeValue}), enumValue, type, value)
end

function OTF2_AttributeValue_SetMappingType(enumValue, type, value)
    ccall((:OTF2_AttributeValue_SetMappingType, libotf2), OTF2_ErrorCode, (OTF2_MappingType, Ptr{OTF2_Type}, Ptr{OTF2_AttributeValue}), enumValue, type, value)
end

function OTF2_AttributeValue_SetType(enumValue, type, value)
    ccall((:OTF2_AttributeValue_SetType, libotf2), OTF2_ErrorCode, (OTF2_Type, Ptr{OTF2_Type}, Ptr{OTF2_AttributeValue}), enumValue, type, value)
end

function OTF2_AttributeValue_SetParadigm(enumValue, type, value)
    ccall((:OTF2_AttributeValue_SetParadigm, libotf2), OTF2_ErrorCode, (OTF2_Paradigm, Ptr{OTF2_Type}, Ptr{OTF2_AttributeValue}), enumValue, type, value)
end

function OTF2_AttributeValue_SetParadigmClass(enumValue, type, value)
    ccall((:OTF2_AttributeValue_SetParadigmClass, libotf2), OTF2_ErrorCode, (OTF2_ParadigmClass, Ptr{OTF2_Type}, Ptr{OTF2_AttributeValue}), enumValue, type, value)
end

function OTF2_AttributeValue_SetParadigmProperty(enumValue, type, value)
    ccall((:OTF2_AttributeValue_SetParadigmProperty, libotf2), OTF2_ErrorCode, (OTF2_ParadigmProperty, Ptr{OTF2_Type}, Ptr{OTF2_AttributeValue}), enumValue, type, value)
end

function OTF2_AttributeValue_SetThumbnailType(enumValue, type, value)
    ccall((:OTF2_AttributeValue_SetThumbnailType, libotf2), OTF2_ErrorCode, (OTF2_ThumbnailType, Ptr{OTF2_Type}, Ptr{OTF2_AttributeValue}), enumValue, type, value)
end

function OTF2_AttributeValue_SetSystemTreeDomain(enumValue, type, value)
    ccall((:OTF2_AttributeValue_SetSystemTreeDomain, libotf2), OTF2_ErrorCode, (OTF2_SystemTreeDomain, Ptr{OTF2_Type}, Ptr{OTF2_AttributeValue}), enumValue, type, value)
end

function OTF2_AttributeValue_SetLocationGroupType(enumValue, type, value)
    ccall((:OTF2_AttributeValue_SetLocationGroupType, libotf2), OTF2_ErrorCode, (OTF2_LocationGroupType, Ptr{OTF2_Type}, Ptr{OTF2_AttributeValue}), enumValue, type, value)
end

function OTF2_AttributeValue_SetLocationType(enumValue, type, value)
    ccall((:OTF2_AttributeValue_SetLocationType, libotf2), OTF2_ErrorCode, (OTF2_LocationType, Ptr{OTF2_Type}, Ptr{OTF2_AttributeValue}), enumValue, type, value)
end

function OTF2_AttributeValue_SetRegionRole(enumValue, type, value)
    ccall((:OTF2_AttributeValue_SetRegionRole, libotf2), OTF2_ErrorCode, (OTF2_RegionRole, Ptr{OTF2_Type}, Ptr{OTF2_AttributeValue}), enumValue, type, value)
end

function OTF2_AttributeValue_SetRegionFlag(enumValue, type, value)
    ccall((:OTF2_AttributeValue_SetRegionFlag, libotf2), OTF2_ErrorCode, (OTF2_RegionFlag, Ptr{OTF2_Type}, Ptr{OTF2_AttributeValue}), enumValue, type, value)
end

function OTF2_AttributeValue_SetGroupType(enumValue, type, value)
    ccall((:OTF2_AttributeValue_SetGroupType, libotf2), OTF2_ErrorCode, (OTF2_GroupType, Ptr{OTF2_Type}, Ptr{OTF2_AttributeValue}), enumValue, type, value)
end

function OTF2_AttributeValue_SetGroupFlag(enumValue, type, value)
    ccall((:OTF2_AttributeValue_SetGroupFlag, libotf2), OTF2_ErrorCode, (OTF2_GroupFlag, Ptr{OTF2_Type}, Ptr{OTF2_AttributeValue}), enumValue, type, value)
end

function OTF2_AttributeValue_SetBase(enumValue, type, value)
    ccall((:OTF2_AttributeValue_SetBase, libotf2), OTF2_ErrorCode, (OTF2_Base, Ptr{OTF2_Type}, Ptr{OTF2_AttributeValue}), enumValue, type, value)
end

function OTF2_AttributeValue_SetMetricOccurrence(enumValue, type, value)
    ccall((:OTF2_AttributeValue_SetMetricOccurrence, libotf2), OTF2_ErrorCode, (OTF2_MetricOccurrence, Ptr{OTF2_Type}, Ptr{OTF2_AttributeValue}), enumValue, type, value)
end

function OTF2_AttributeValue_SetMetricType(enumValue, type, value)
    ccall((:OTF2_AttributeValue_SetMetricType, libotf2), OTF2_ErrorCode, (OTF2_MetricType, Ptr{OTF2_Type}, Ptr{OTF2_AttributeValue}), enumValue, type, value)
end

function OTF2_AttributeValue_SetMetricValueProperty(enumValue, type, value)
    ccall((:OTF2_AttributeValue_SetMetricValueProperty, libotf2), OTF2_ErrorCode, (OTF2_MetricValueProperty, Ptr{OTF2_Type}, Ptr{OTF2_AttributeValue}), enumValue, type, value)
end

function OTF2_AttributeValue_SetMetricTiming(enumValue, type, value)
    ccall((:OTF2_AttributeValue_SetMetricTiming, libotf2), OTF2_ErrorCode, (OTF2_MetricTiming, Ptr{OTF2_Type}, Ptr{OTF2_AttributeValue}), enumValue, type, value)
end

function OTF2_AttributeValue_SetMetricMode(enumValue, type, value)
    ccall((:OTF2_AttributeValue_SetMetricMode, libotf2), OTF2_ErrorCode, (OTF2_MetricMode, Ptr{OTF2_Type}, Ptr{OTF2_AttributeValue}), enumValue, type, value)
end

function OTF2_AttributeValue_SetMetricScope(enumValue, type, value)
    ccall((:OTF2_AttributeValue_SetMetricScope, libotf2), OTF2_ErrorCode, (OTF2_MetricScope, Ptr{OTF2_Type}, Ptr{OTF2_AttributeValue}), enumValue, type, value)
end

function OTF2_AttributeValue_SetRecorderKind(enumValue, type, value)
    ccall((:OTF2_AttributeValue_SetRecorderKind, libotf2), OTF2_ErrorCode, (OTF2_RecorderKind, Ptr{OTF2_Type}, Ptr{OTF2_AttributeValue}), enumValue, type, value)
end

function OTF2_AttributeValue_SetParameterType(enumValue, type, value)
    ccall((:OTF2_AttributeValue_SetParameterType, libotf2), OTF2_ErrorCode, (OTF2_ParameterType, Ptr{OTF2_Type}, Ptr{OTF2_AttributeValue}), enumValue, type, value)
end

function OTF2_AttributeValue_SetCartPeriodicity(enumValue, type, value)
    ccall((:OTF2_AttributeValue_SetCartPeriodicity, libotf2), OTF2_ErrorCode, (OTF2_CartPeriodicity, Ptr{OTF2_Type}, Ptr{OTF2_AttributeValue}), enumValue, type, value)
end

function OTF2_AttributeValue_SetInterruptGeneratorMode(enumValue, type, value)
    ccall((:OTF2_AttributeValue_SetInterruptGeneratorMode, libotf2), OTF2_ErrorCode, (OTF2_InterruptGeneratorMode, Ptr{OTF2_Type}, Ptr{OTF2_AttributeValue}), enumValue, type, value)
end

function OTF2_AttributeValue_SetMeasurementMode(enumValue, type, value)
    ccall((:OTF2_AttributeValue_SetMeasurementMode, libotf2), OTF2_ErrorCode, (OTF2_MeasurementMode, Ptr{OTF2_Type}, Ptr{OTF2_AttributeValue}), enumValue, type, value)
end

function OTF2_AttributeValue_SetCollectiveOp(enumValue, type, value)
    ccall((:OTF2_AttributeValue_SetCollectiveOp, libotf2), OTF2_ErrorCode, (OTF2_CollectiveOp, Ptr{OTF2_Type}, Ptr{OTF2_AttributeValue}), enumValue, type, value)
end

function OTF2_AttributeValue_SetRmaSyncType(enumValue, type, value)
    ccall((:OTF2_AttributeValue_SetRmaSyncType, libotf2), OTF2_ErrorCode, (OTF2_RmaSyncType, Ptr{OTF2_Type}, Ptr{OTF2_AttributeValue}), enumValue, type, value)
end

function OTF2_AttributeValue_SetRmaSyncLevel(enumValue, type, value)
    ccall((:OTF2_AttributeValue_SetRmaSyncLevel, libotf2), OTF2_ErrorCode, (OTF2_RmaSyncLevel, Ptr{OTF2_Type}, Ptr{OTF2_AttributeValue}), enumValue, type, value)
end

function OTF2_AttributeValue_SetLockType(enumValue, type, value)
    ccall((:OTF2_AttributeValue_SetLockType, libotf2), OTF2_ErrorCode, (OTF2_LockType, Ptr{OTF2_Type}, Ptr{OTF2_AttributeValue}), enumValue, type, value)
end

function OTF2_AttributeValue_SetRmaAtomicType(enumValue, type, value)
    ccall((:OTF2_AttributeValue_SetRmaAtomicType, libotf2), OTF2_ErrorCode, (OTF2_RmaAtomicType, Ptr{OTF2_Type}, Ptr{OTF2_AttributeValue}), enumValue, type, value)
end

function OTF2_AttributeValue_SetIoParadigmClass(enumValue, type, value)
    ccall((:OTF2_AttributeValue_SetIoParadigmClass, libotf2), OTF2_ErrorCode, (OTF2_IoParadigmClass, Ptr{OTF2_Type}, Ptr{OTF2_AttributeValue}), enumValue, type, value)
end

function OTF2_AttributeValue_SetIoParadigmFlag(enumValue, type, value)
    ccall((:OTF2_AttributeValue_SetIoParadigmFlag, libotf2), OTF2_ErrorCode, (OTF2_IoParadigmFlag, Ptr{OTF2_Type}, Ptr{OTF2_AttributeValue}), enumValue, type, value)
end

function OTF2_AttributeValue_SetIoParadigmProperty(enumValue, type, value)
    ccall((:OTF2_AttributeValue_SetIoParadigmProperty, libotf2), OTF2_ErrorCode, (OTF2_IoParadigmProperty, Ptr{OTF2_Type}, Ptr{OTF2_AttributeValue}), enumValue, type, value)
end

function OTF2_AttributeValue_SetIoHandleFlag(enumValue, type, value)
    ccall((:OTF2_AttributeValue_SetIoHandleFlag, libotf2), OTF2_ErrorCode, (OTF2_IoHandleFlag, Ptr{OTF2_Type}, Ptr{OTF2_AttributeValue}), enumValue, type, value)
end

function OTF2_AttributeValue_SetIoAccessMode(enumValue, type, value)
    ccall((:OTF2_AttributeValue_SetIoAccessMode, libotf2), OTF2_ErrorCode, (OTF2_IoAccessMode, Ptr{OTF2_Type}, Ptr{OTF2_AttributeValue}), enumValue, type, value)
end

function OTF2_AttributeValue_SetIoCreationFlag(enumValue, type, value)
    ccall((:OTF2_AttributeValue_SetIoCreationFlag, libotf2), OTF2_ErrorCode, (OTF2_IoCreationFlag, Ptr{OTF2_Type}, Ptr{OTF2_AttributeValue}), enumValue, type, value)
end

function OTF2_AttributeValue_SetIoStatusFlag(enumValue, type, value)
    ccall((:OTF2_AttributeValue_SetIoStatusFlag, libotf2), OTF2_ErrorCode, (OTF2_IoStatusFlag, Ptr{OTF2_Type}, Ptr{OTF2_AttributeValue}), enumValue, type, value)
end

function OTF2_AttributeValue_SetIoSeekOption(enumValue, type, value)
    ccall((:OTF2_AttributeValue_SetIoSeekOption, libotf2), OTF2_ErrorCode, (OTF2_IoSeekOption, Ptr{OTF2_Type}, Ptr{OTF2_AttributeValue}), enumValue, type, value)
end

function OTF2_AttributeValue_SetIoOperationMode(enumValue, type, value)
    ccall((:OTF2_AttributeValue_SetIoOperationMode, libotf2), OTF2_ErrorCode, (OTF2_IoOperationMode, Ptr{OTF2_Type}, Ptr{OTF2_AttributeValue}), enumValue, type, value)
end

function OTF2_AttributeValue_SetIoOperationFlag(enumValue, type, value)
    ccall((:OTF2_AttributeValue_SetIoOperationFlag, libotf2), OTF2_ErrorCode, (OTF2_IoOperationFlag, Ptr{OTF2_Type}, Ptr{OTF2_AttributeValue}), enumValue, type, value)
end

function OTF2_AttributeValue_SetCommFlag(enumValue, type, value)
    ccall((:OTF2_AttributeValue_SetCommFlag, libotf2), OTF2_ErrorCode, (OTF2_CommFlag, Ptr{OTF2_Type}, Ptr{OTF2_AttributeValue}), enumValue, type, value)
end

function OTF2_AttributeValue_SetRmaWinFlag(enumValue, type, value)
    ccall((:OTF2_AttributeValue_SetRmaWinFlag, libotf2), OTF2_ErrorCode, (OTF2_RmaWinFlag, Ptr{OTF2_Type}, Ptr{OTF2_AttributeValue}), enumValue, type, value)
end

function OTF2_AttributeValue_SetCollectiveRoot(enumValue, type, value)
    ccall((:OTF2_AttributeValue_SetCollectiveRoot, libotf2), OTF2_ErrorCode, (OTF2_CollectiveRoot, Ptr{OTF2_Type}, Ptr{OTF2_AttributeValue}), enumValue, type, value)
end

function OTF2_AttributeValue_GetBoolean(type, value, enumValue)
    ccall((:OTF2_AttributeValue_GetBoolean, libotf2), OTF2_ErrorCode, (OTF2_Type, OTF2_AttributeValue, Ptr{OTF2_Boolean}), type, value, enumValue)
end

function OTF2_AttributeValue_GetFileType(type, value, enumValue)
    ccall((:OTF2_AttributeValue_GetFileType, libotf2), OTF2_ErrorCode, (OTF2_Type, OTF2_AttributeValue, Ptr{OTF2_FileType}), type, value, enumValue)
end

function OTF2_AttributeValue_GetFileSubstrate(type, value, enumValue)
    ccall((:OTF2_AttributeValue_GetFileSubstrate, libotf2), OTF2_ErrorCode, (OTF2_Type, OTF2_AttributeValue, Ptr{OTF2_FileSubstrate}), type, value, enumValue)
end

function OTF2_AttributeValue_GetMappingType(type, value, enumValue)
    ccall((:OTF2_AttributeValue_GetMappingType, libotf2), OTF2_ErrorCode, (OTF2_Type, OTF2_AttributeValue, Ptr{OTF2_MappingType}), type, value, enumValue)
end

function OTF2_AttributeValue_GetType(type, value, enumValue)
    ccall((:OTF2_AttributeValue_GetType, libotf2), OTF2_ErrorCode, (OTF2_Type, OTF2_AttributeValue, Ptr{OTF2_Type}), type, value, enumValue)
end

function OTF2_AttributeValue_GetParadigm(type, value, enumValue)
    ccall((:OTF2_AttributeValue_GetParadigm, libotf2), OTF2_ErrorCode, (OTF2_Type, OTF2_AttributeValue, Ptr{OTF2_Paradigm}), type, value, enumValue)
end

function OTF2_AttributeValue_GetParadigmClass(type, value, enumValue)
    ccall((:OTF2_AttributeValue_GetParadigmClass, libotf2), OTF2_ErrorCode, (OTF2_Type, OTF2_AttributeValue, Ptr{OTF2_ParadigmClass}), type, value, enumValue)
end

function OTF2_AttributeValue_GetParadigmProperty(type, value, enumValue)
    ccall((:OTF2_AttributeValue_GetParadigmProperty, libotf2), OTF2_ErrorCode, (OTF2_Type, OTF2_AttributeValue, Ptr{OTF2_ParadigmProperty}), type, value, enumValue)
end

function OTF2_AttributeValue_GetThumbnailType(type, value, enumValue)
    ccall((:OTF2_AttributeValue_GetThumbnailType, libotf2), OTF2_ErrorCode, (OTF2_Type, OTF2_AttributeValue, Ptr{OTF2_ThumbnailType}), type, value, enumValue)
end

function OTF2_AttributeValue_GetSystemTreeDomain(type, value, enumValue)
    ccall((:OTF2_AttributeValue_GetSystemTreeDomain, libotf2), OTF2_ErrorCode, (OTF2_Type, OTF2_AttributeValue, Ptr{OTF2_SystemTreeDomain}), type, value, enumValue)
end

function OTF2_AttributeValue_GetLocationGroupType(type, value, enumValue)
    ccall((:OTF2_AttributeValue_GetLocationGroupType, libotf2), OTF2_ErrorCode, (OTF2_Type, OTF2_AttributeValue, Ptr{OTF2_LocationGroupType}), type, value, enumValue)
end

function OTF2_AttributeValue_GetLocationType(type, value, enumValue)
    ccall((:OTF2_AttributeValue_GetLocationType, libotf2), OTF2_ErrorCode, (OTF2_Type, OTF2_AttributeValue, Ptr{OTF2_LocationType}), type, value, enumValue)
end

function OTF2_AttributeValue_GetRegionRole(type, value, enumValue)
    ccall((:OTF2_AttributeValue_GetRegionRole, libotf2), OTF2_ErrorCode, (OTF2_Type, OTF2_AttributeValue, Ptr{OTF2_RegionRole}), type, value, enumValue)
end

function OTF2_AttributeValue_GetRegionFlag(type, value, enumValue)
    ccall((:OTF2_AttributeValue_GetRegionFlag, libotf2), OTF2_ErrorCode, (OTF2_Type, OTF2_AttributeValue, Ptr{OTF2_RegionFlag}), type, value, enumValue)
end

function OTF2_AttributeValue_GetGroupType(type, value, enumValue)
    ccall((:OTF2_AttributeValue_GetGroupType, libotf2), OTF2_ErrorCode, (OTF2_Type, OTF2_AttributeValue, Ptr{OTF2_GroupType}), type, value, enumValue)
end

function OTF2_AttributeValue_GetGroupFlag(type, value, enumValue)
    ccall((:OTF2_AttributeValue_GetGroupFlag, libotf2), OTF2_ErrorCode, (OTF2_Type, OTF2_AttributeValue, Ptr{OTF2_GroupFlag}), type, value, enumValue)
end

function OTF2_AttributeValue_GetBase(type, value, enumValue)
    ccall((:OTF2_AttributeValue_GetBase, libotf2), OTF2_ErrorCode, (OTF2_Type, OTF2_AttributeValue, Ptr{OTF2_Base}), type, value, enumValue)
end

function OTF2_AttributeValue_GetMetricOccurrence(type, value, enumValue)
    ccall((:OTF2_AttributeValue_GetMetricOccurrence, libotf2), OTF2_ErrorCode, (OTF2_Type, OTF2_AttributeValue, Ptr{OTF2_MetricOccurrence}), type, value, enumValue)
end

function OTF2_AttributeValue_GetMetricType(type, value, enumValue)
    ccall((:OTF2_AttributeValue_GetMetricType, libotf2), OTF2_ErrorCode, (OTF2_Type, OTF2_AttributeValue, Ptr{OTF2_MetricType}), type, value, enumValue)
end

function OTF2_AttributeValue_GetMetricValueProperty(type, value, enumValue)
    ccall((:OTF2_AttributeValue_GetMetricValueProperty, libotf2), OTF2_ErrorCode, (OTF2_Type, OTF2_AttributeValue, Ptr{OTF2_MetricValueProperty}), type, value, enumValue)
end

function OTF2_AttributeValue_GetMetricTiming(type, value, enumValue)
    ccall((:OTF2_AttributeValue_GetMetricTiming, libotf2), OTF2_ErrorCode, (OTF2_Type, OTF2_AttributeValue, Ptr{OTF2_MetricTiming}), type, value, enumValue)
end

function OTF2_AttributeValue_GetMetricMode(type, value, enumValue)
    ccall((:OTF2_AttributeValue_GetMetricMode, libotf2), OTF2_ErrorCode, (OTF2_Type, OTF2_AttributeValue, Ptr{OTF2_MetricMode}), type, value, enumValue)
end

function OTF2_AttributeValue_GetMetricScope(type, value, enumValue)
    ccall((:OTF2_AttributeValue_GetMetricScope, libotf2), OTF2_ErrorCode, (OTF2_Type, OTF2_AttributeValue, Ptr{OTF2_MetricScope}), type, value, enumValue)
end

function OTF2_AttributeValue_GetRecorderKind(type, value, enumValue)
    ccall((:OTF2_AttributeValue_GetRecorderKind, libotf2), OTF2_ErrorCode, (OTF2_Type, OTF2_AttributeValue, Ptr{OTF2_RecorderKind}), type, value, enumValue)
end

function OTF2_AttributeValue_GetParameterType(type, value, enumValue)
    ccall((:OTF2_AttributeValue_GetParameterType, libotf2), OTF2_ErrorCode, (OTF2_Type, OTF2_AttributeValue, Ptr{OTF2_ParameterType}), type, value, enumValue)
end

function OTF2_AttributeValue_GetCartPeriodicity(type, value, enumValue)
    ccall((:OTF2_AttributeValue_GetCartPeriodicity, libotf2), OTF2_ErrorCode, (OTF2_Type, OTF2_AttributeValue, Ptr{OTF2_CartPeriodicity}), type, value, enumValue)
end

function OTF2_AttributeValue_GetInterruptGeneratorMode(type, value, enumValue)
    ccall((:OTF2_AttributeValue_GetInterruptGeneratorMode, libotf2), OTF2_ErrorCode, (OTF2_Type, OTF2_AttributeValue, Ptr{OTF2_InterruptGeneratorMode}), type, value, enumValue)
end

function OTF2_AttributeValue_GetMeasurementMode(type, value, enumValue)
    ccall((:OTF2_AttributeValue_GetMeasurementMode, libotf2), OTF2_ErrorCode, (OTF2_Type, OTF2_AttributeValue, Ptr{OTF2_MeasurementMode}), type, value, enumValue)
end

function OTF2_AttributeValue_GetCollectiveOp(type, value, enumValue)
    ccall((:OTF2_AttributeValue_GetCollectiveOp, libotf2), OTF2_ErrorCode, (OTF2_Type, OTF2_AttributeValue, Ptr{OTF2_CollectiveOp}), type, value, enumValue)
end

function OTF2_AttributeValue_GetRmaSyncType(type, value, enumValue)
    ccall((:OTF2_AttributeValue_GetRmaSyncType, libotf2), OTF2_ErrorCode, (OTF2_Type, OTF2_AttributeValue, Ptr{OTF2_RmaSyncType}), type, value, enumValue)
end

function OTF2_AttributeValue_GetRmaSyncLevel(type, value, enumValue)
    ccall((:OTF2_AttributeValue_GetRmaSyncLevel, libotf2), OTF2_ErrorCode, (OTF2_Type, OTF2_AttributeValue, Ptr{OTF2_RmaSyncLevel}), type, value, enumValue)
end

function OTF2_AttributeValue_GetLockType(type, value, enumValue)
    ccall((:OTF2_AttributeValue_GetLockType, libotf2), OTF2_ErrorCode, (OTF2_Type, OTF2_AttributeValue, Ptr{OTF2_LockType}), type, value, enumValue)
end

function OTF2_AttributeValue_GetRmaAtomicType(type, value, enumValue)
    ccall((:OTF2_AttributeValue_GetRmaAtomicType, libotf2), OTF2_ErrorCode, (OTF2_Type, OTF2_AttributeValue, Ptr{OTF2_RmaAtomicType}), type, value, enumValue)
end

function OTF2_AttributeValue_GetIoParadigmClass(type, value, enumValue)
    ccall((:OTF2_AttributeValue_GetIoParadigmClass, libotf2), OTF2_ErrorCode, (OTF2_Type, OTF2_AttributeValue, Ptr{OTF2_IoParadigmClass}), type, value, enumValue)
end

function OTF2_AttributeValue_GetIoParadigmFlag(type, value, enumValue)
    ccall((:OTF2_AttributeValue_GetIoParadigmFlag, libotf2), OTF2_ErrorCode, (OTF2_Type, OTF2_AttributeValue, Ptr{OTF2_IoParadigmFlag}), type, value, enumValue)
end

function OTF2_AttributeValue_GetIoParadigmProperty(type, value, enumValue)
    ccall((:OTF2_AttributeValue_GetIoParadigmProperty, libotf2), OTF2_ErrorCode, (OTF2_Type, OTF2_AttributeValue, Ptr{OTF2_IoParadigmProperty}), type, value, enumValue)
end

function OTF2_AttributeValue_GetIoHandleFlag(type, value, enumValue)
    ccall((:OTF2_AttributeValue_GetIoHandleFlag, libotf2), OTF2_ErrorCode, (OTF2_Type, OTF2_AttributeValue, Ptr{OTF2_IoHandleFlag}), type, value, enumValue)
end

function OTF2_AttributeValue_GetIoAccessMode(type, value, enumValue)
    ccall((:OTF2_AttributeValue_GetIoAccessMode, libotf2), OTF2_ErrorCode, (OTF2_Type, OTF2_AttributeValue, Ptr{OTF2_IoAccessMode}), type, value, enumValue)
end

function OTF2_AttributeValue_GetIoCreationFlag(type, value, enumValue)
    ccall((:OTF2_AttributeValue_GetIoCreationFlag, libotf2), OTF2_ErrorCode, (OTF2_Type, OTF2_AttributeValue, Ptr{OTF2_IoCreationFlag}), type, value, enumValue)
end

function OTF2_AttributeValue_GetIoStatusFlag(type, value, enumValue)
    ccall((:OTF2_AttributeValue_GetIoStatusFlag, libotf2), OTF2_ErrorCode, (OTF2_Type, OTF2_AttributeValue, Ptr{OTF2_IoStatusFlag}), type, value, enumValue)
end

function OTF2_AttributeValue_GetIoSeekOption(type, value, enumValue)
    ccall((:OTF2_AttributeValue_GetIoSeekOption, libotf2), OTF2_ErrorCode, (OTF2_Type, OTF2_AttributeValue, Ptr{OTF2_IoSeekOption}), type, value, enumValue)
end

function OTF2_AttributeValue_GetIoOperationMode(type, value, enumValue)
    ccall((:OTF2_AttributeValue_GetIoOperationMode, libotf2), OTF2_ErrorCode, (OTF2_Type, OTF2_AttributeValue, Ptr{OTF2_IoOperationMode}), type, value, enumValue)
end

function OTF2_AttributeValue_GetIoOperationFlag(type, value, enumValue)
    ccall((:OTF2_AttributeValue_GetIoOperationFlag, libotf2), OTF2_ErrorCode, (OTF2_Type, OTF2_AttributeValue, Ptr{OTF2_IoOperationFlag}), type, value, enumValue)
end

function OTF2_AttributeValue_GetCommFlag(type, value, enumValue)
    ccall((:OTF2_AttributeValue_GetCommFlag, libotf2), OTF2_ErrorCode, (OTF2_Type, OTF2_AttributeValue, Ptr{OTF2_CommFlag}), type, value, enumValue)
end

function OTF2_AttributeValue_GetRmaWinFlag(type, value, enumValue)
    ccall((:OTF2_AttributeValue_GetRmaWinFlag, libotf2), OTF2_ErrorCode, (OTF2_Type, OTF2_AttributeValue, Ptr{OTF2_RmaWinFlag}), type, value, enumValue)
end

function OTF2_AttributeValue_GetCollectiveRoot(type, value, enumValue)
    ccall((:OTF2_AttributeValue_GetCollectiveRoot, libotf2), OTF2_ErrorCode, (OTF2_Type, OTF2_AttributeValue, Ptr{OTF2_CollectiveRoot}), type, value, enumValue)
end

mutable struct OTF2_IdMap_struct end

const OTF2_IdMap = OTF2_IdMap_struct

const OTF2_IdMapMode = UInt8

@cenum OTF2_IdMapMode_enum::UInt32 begin
    OTF2_ID_MAP_DENSE = 0
    OTF2_ID_MAP_SPARSE = 1
end

# typedef void ( * OTF2_IdMap_TraverseCallback ) ( uint64_t localId , uint64_t globalId , void * userData )
const OTF2_IdMap_TraverseCallback = Ptr{Cvoid}

function OTF2_IdMap_Create(mode, capacity)
    ccall((:OTF2_IdMap_Create, libotf2), Ptr{OTF2_IdMap}, (OTF2_IdMapMode, UInt64), mode, capacity)
end

function OTF2_IdMap_CreateFromUint64Array(length, mappings, optimizeSize)
    ccall((:OTF2_IdMap_CreateFromUint64Array, libotf2), Ptr{OTF2_IdMap}, (UInt64, Ptr{UInt64}, Bool), length, mappings, optimizeSize)
end

function OTF2_IdMap_CreateFromUint32Array(length, mappings, optimizeSize)
    ccall((:OTF2_IdMap_CreateFromUint32Array, libotf2), Ptr{OTF2_IdMap}, (UInt64, Ptr{UInt32}, Bool), length, mappings, optimizeSize)
end

function OTF2_IdMap_Free(instance)
    ccall((:OTF2_IdMap_Free, libotf2), Cvoid, (Ptr{OTF2_IdMap},), instance)
end

function OTF2_IdMap_GetSize(instance, size)
    ccall((:OTF2_IdMap_GetSize, libotf2), OTF2_ErrorCode, (Ptr{OTF2_IdMap}, Ptr{UInt64}), instance, size)
end

function OTF2_IdMap_GetMode(instance, mode)
    ccall((:OTF2_IdMap_GetMode, libotf2), OTF2_ErrorCode, (Ptr{OTF2_IdMap}, Ptr{OTF2_IdMapMode}), instance, mode)
end

function OTF2_IdMap_Clear(instance)
    ccall((:OTF2_IdMap_Clear, libotf2), OTF2_ErrorCode, (Ptr{OTF2_IdMap},), instance)
end

function OTF2_IdMap_AddIdPair(instance, localId, globalId)
    ccall((:OTF2_IdMap_AddIdPair, libotf2), OTF2_ErrorCode, (Ptr{OTF2_IdMap}, UInt64, UInt64), instance, localId, globalId)
end

function OTF2_IdMap_GetGlobalId(instance, localId, globalId)
    ccall((:OTF2_IdMap_GetGlobalId, libotf2), OTF2_ErrorCode, (Ptr{OTF2_IdMap}, UInt64, Ptr{UInt64}), instance, localId, globalId)
end

function OTF2_IdMap_GetGlobalIdSave(instance, localId, globalId)
    ccall((:OTF2_IdMap_GetGlobalIdSave, libotf2), OTF2_ErrorCode, (Ptr{OTF2_IdMap}, UInt64, Ptr{UInt64}), instance, localId, globalId)
end

function OTF2_IdMap_Traverse(instance, callback, userData)
    ccall((:OTF2_IdMap_Traverse, libotf2), OTF2_ErrorCode, (Ptr{OTF2_IdMap}, OTF2_IdMap_TraverseCallback, Ptr{Cvoid}), instance, callback, userData)
end

mutable struct OTF2_DefWriter_struct end

const OTF2_DefWriter = OTF2_DefWriter_struct

function OTF2_DefWriter_GetLocationID(writer, location)
    ccall((:OTF2_DefWriter_GetLocationID, libotf2), OTF2_ErrorCode, (Ptr{OTF2_DefWriter}, Ptr{OTF2_LocationRef}), writer, location)
end

function OTF2_DefWriter_WriteMappingTable(writer, mappingType, idMap)
    ccall((:OTF2_DefWriter_WriteMappingTable, libotf2), OTF2_ErrorCode, (Ptr{OTF2_DefWriter}, OTF2_MappingType, Ptr{OTF2_IdMap}), writer, mappingType, idMap)
end

function OTF2_DefWriter_WriteClockOffset(writer, time, offset, standardDeviation)
    ccall((:OTF2_DefWriter_WriteClockOffset, libotf2), OTF2_ErrorCode, (Ptr{OTF2_DefWriter}, OTF2_TimeStamp, Int64, Cdouble), writer, time, offset, standardDeviation)
end

function OTF2_DefWriter_WriteString(writer, self, string)
    ccall((:OTF2_DefWriter_WriteString, libotf2), OTF2_ErrorCode, (Ptr{OTF2_DefWriter}, OTF2_StringRef, Ptr{Cchar}), writer, self, string)
end

function OTF2_DefWriter_WriteAttribute(writer, self, name, description, type)
    ccall((:OTF2_DefWriter_WriteAttribute, libotf2), OTF2_ErrorCode, (Ptr{OTF2_DefWriter}, OTF2_AttributeRef, OTF2_StringRef, OTF2_StringRef, OTF2_Type), writer, self, name, description, type)
end

function OTF2_DefWriter_WriteSystemTreeNode(writer, self, name, className, parent)
    ccall((:OTF2_DefWriter_WriteSystemTreeNode, libotf2), OTF2_ErrorCode, (Ptr{OTF2_DefWriter}, OTF2_SystemTreeNodeRef, OTF2_StringRef, OTF2_StringRef, OTF2_SystemTreeNodeRef), writer, self, name, className, parent)
end

function OTF2_DefWriter_WriteLocationGroup(writer, self, name, locationGroupType, systemTreeParent, creatingLocationGroup)
    ccall((:OTF2_DefWriter_WriteLocationGroup, libotf2), OTF2_ErrorCode, (Ptr{OTF2_DefWriter}, OTF2_LocationGroupRef, OTF2_StringRef, OTF2_LocationGroupType, OTF2_SystemTreeNodeRef, OTF2_LocationGroupRef), writer, self, name, locationGroupType, systemTreeParent, creatingLocationGroup)
end

function OTF2_DefWriter_WriteLocation(writer, self, name, locationType, numberOfEvents, locationGroup)
    ccall((:OTF2_DefWriter_WriteLocation, libotf2), OTF2_ErrorCode, (Ptr{OTF2_DefWriter}, OTF2_LocationRef, OTF2_StringRef, OTF2_LocationType, UInt64, OTF2_LocationGroupRef), writer, self, name, locationType, numberOfEvents, locationGroup)
end

function OTF2_DefWriter_WriteRegion(writer, self, name, canonicalName, description, regionRole, paradigm, regionFlags, sourceFile, beginLineNumber, endLineNumber)
    ccall((:OTF2_DefWriter_WriteRegion, libotf2), OTF2_ErrorCode, (Ptr{OTF2_DefWriter}, OTF2_RegionRef, OTF2_StringRef, OTF2_StringRef, OTF2_StringRef, OTF2_RegionRole, OTF2_Paradigm, OTF2_RegionFlag, OTF2_StringRef, UInt32, UInt32), writer, self, name, canonicalName, description, regionRole, paradigm, regionFlags, sourceFile, beginLineNumber, endLineNumber)
end

function OTF2_DefWriter_WriteCallsite(writer, self, sourceFile, lineNumber, enteredRegion, leftRegion)
    ccall((:OTF2_DefWriter_WriteCallsite, libotf2), OTF2_ErrorCode, (Ptr{OTF2_DefWriter}, OTF2_CallsiteRef, OTF2_StringRef, UInt32, OTF2_RegionRef, OTF2_RegionRef), writer, self, sourceFile, lineNumber, enteredRegion, leftRegion)
end

function OTF2_DefWriter_WriteCallpath(writer, self, parent, region)
    ccall((:OTF2_DefWriter_WriteCallpath, libotf2), OTF2_ErrorCode, (Ptr{OTF2_DefWriter}, OTF2_CallpathRef, OTF2_CallpathRef, OTF2_RegionRef), writer, self, parent, region)
end

function OTF2_DefWriter_WriteGroup(writer, self, name, groupType, paradigm, groupFlags, numberOfMembers, members)
    ccall((:OTF2_DefWriter_WriteGroup, libotf2), OTF2_ErrorCode, (Ptr{OTF2_DefWriter}, OTF2_GroupRef, OTF2_StringRef, OTF2_GroupType, OTF2_Paradigm, OTF2_GroupFlag, UInt32, Ptr{UInt64}), writer, self, name, groupType, paradigm, groupFlags, numberOfMembers, members)
end

function OTF2_DefWriter_WriteMetricMember(writer, self, name, description, metricType, metricMode, valueType, base, exponent, unit)
    ccall((:OTF2_DefWriter_WriteMetricMember, libotf2), OTF2_ErrorCode, (Ptr{OTF2_DefWriter}, OTF2_MetricMemberRef, OTF2_StringRef, OTF2_StringRef, OTF2_MetricType, OTF2_MetricMode, OTF2_Type, OTF2_Base, Int64, OTF2_StringRef), writer, self, name, description, metricType, metricMode, valueType, base, exponent, unit)
end

function OTF2_DefWriter_WriteMetricClass(writer, self, numberOfMetrics, metricMembers, metricOccurrence, recorderKind)
    ccall((:OTF2_DefWriter_WriteMetricClass, libotf2), OTF2_ErrorCode, (Ptr{OTF2_DefWriter}, OTF2_MetricRef, UInt8, Ptr{OTF2_MetricMemberRef}, OTF2_MetricOccurrence, OTF2_RecorderKind), writer, self, numberOfMetrics, metricMembers, metricOccurrence, recorderKind)
end

function OTF2_DefWriter_WriteMetricInstance(writer, self, metricClass, recorder, metricScope, scope)
    ccall((:OTF2_DefWriter_WriteMetricInstance, libotf2), OTF2_ErrorCode, (Ptr{OTF2_DefWriter}, OTF2_MetricRef, OTF2_MetricRef, OTF2_LocationRef, OTF2_MetricScope, UInt64), writer, self, metricClass, recorder, metricScope, scope)
end

function OTF2_DefWriter_WriteComm(writer, self, name, group, parent, flags)
    ccall((:OTF2_DefWriter_WriteComm, libotf2), OTF2_ErrorCode, (Ptr{OTF2_DefWriter}, OTF2_CommRef, OTF2_StringRef, OTF2_GroupRef, OTF2_CommRef, OTF2_CommFlag), writer, self, name, group, parent, flags)
end

function OTF2_DefWriter_WriteParameter(writer, self, name, parameterType)
    ccall((:OTF2_DefWriter_WriteParameter, libotf2), OTF2_ErrorCode, (Ptr{OTF2_DefWriter}, OTF2_ParameterRef, OTF2_StringRef, OTF2_ParameterType), writer, self, name, parameterType)
end

function OTF2_DefWriter_WriteRmaWin(writer, self, name, comm, flags)
    ccall((:OTF2_DefWriter_WriteRmaWin, libotf2), OTF2_ErrorCode, (Ptr{OTF2_DefWriter}, OTF2_RmaWinRef, OTF2_StringRef, OTF2_CommRef, OTF2_RmaWinFlag), writer, self, name, comm, flags)
end

function OTF2_DefWriter_WriteMetricClassRecorder(writer, metric, recorder)
    ccall((:OTF2_DefWriter_WriteMetricClassRecorder, libotf2), OTF2_ErrorCode, (Ptr{OTF2_DefWriter}, OTF2_MetricRef, OTF2_LocationRef), writer, metric, recorder)
end

function OTF2_DefWriter_WriteSystemTreeNodeProperty(writer, systemTreeNode, name, type, value)
    ccall((:OTF2_DefWriter_WriteSystemTreeNodeProperty, libotf2), OTF2_ErrorCode, (Ptr{OTF2_DefWriter}, OTF2_SystemTreeNodeRef, OTF2_StringRef, OTF2_Type, OTF2_AttributeValue), writer, systemTreeNode, name, type, value)
end

function OTF2_DefWriter_WriteSystemTreeNodeDomain(writer, systemTreeNode, systemTreeDomain)
    ccall((:OTF2_DefWriter_WriteSystemTreeNodeDomain, libotf2), OTF2_ErrorCode, (Ptr{OTF2_DefWriter}, OTF2_SystemTreeNodeRef, OTF2_SystemTreeDomain), writer, systemTreeNode, systemTreeDomain)
end

function OTF2_DefWriter_WriteLocationGroupProperty(writer, locationGroup, name, type, value)
    ccall((:OTF2_DefWriter_WriteLocationGroupProperty, libotf2), OTF2_ErrorCode, (Ptr{OTF2_DefWriter}, OTF2_LocationGroupRef, OTF2_StringRef, OTF2_Type, OTF2_AttributeValue), writer, locationGroup, name, type, value)
end

function OTF2_DefWriter_WriteLocationProperty(writer, location, name, type, value)
    ccall((:OTF2_DefWriter_WriteLocationProperty, libotf2), OTF2_ErrorCode, (Ptr{OTF2_DefWriter}, OTF2_LocationRef, OTF2_StringRef, OTF2_Type, OTF2_AttributeValue), writer, location, name, type, value)
end

function OTF2_DefWriter_WriteCartDimension(writer, self, name, size, cartPeriodicity)
    ccall((:OTF2_DefWriter_WriteCartDimension, libotf2), OTF2_ErrorCode, (Ptr{OTF2_DefWriter}, OTF2_CartDimensionRef, OTF2_StringRef, UInt32, OTF2_CartPeriodicity), writer, self, name, size, cartPeriodicity)
end

function OTF2_DefWriter_WriteCartTopology(writer, self, name, communicator, numberOfDimensions, cartDimensions)
    ccall((:OTF2_DefWriter_WriteCartTopology, libotf2), OTF2_ErrorCode, (Ptr{OTF2_DefWriter}, OTF2_CartTopologyRef, OTF2_StringRef, OTF2_CommRef, UInt8, Ptr{OTF2_CartDimensionRef}), writer, self, name, communicator, numberOfDimensions, cartDimensions)
end

function OTF2_DefWriter_WriteCartCoordinate(writer, cartTopology, rank, numberOfDimensions, coordinates)
    ccall((:OTF2_DefWriter_WriteCartCoordinate, libotf2), OTF2_ErrorCode, (Ptr{OTF2_DefWriter}, OTF2_CartTopologyRef, UInt32, UInt8, Ptr{UInt32}), writer, cartTopology, rank, numberOfDimensions, coordinates)
end

function OTF2_DefWriter_WriteSourceCodeLocation(writer, self, file, lineNumber)
    ccall((:OTF2_DefWriter_WriteSourceCodeLocation, libotf2), OTF2_ErrorCode, (Ptr{OTF2_DefWriter}, OTF2_SourceCodeLocationRef, OTF2_StringRef, UInt32), writer, self, file, lineNumber)
end

function OTF2_DefWriter_WriteCallingContext(writer, self, region, sourceCodeLocation, parent)
    ccall((:OTF2_DefWriter_WriteCallingContext, libotf2), OTF2_ErrorCode, (Ptr{OTF2_DefWriter}, OTF2_CallingContextRef, OTF2_RegionRef, OTF2_SourceCodeLocationRef, OTF2_CallingContextRef), writer, self, region, sourceCodeLocation, parent)
end

function OTF2_DefWriter_WriteCallingContextProperty(writer, callingContext, name, type, value)
    ccall((:OTF2_DefWriter_WriteCallingContextProperty, libotf2), OTF2_ErrorCode, (Ptr{OTF2_DefWriter}, OTF2_CallingContextRef, OTF2_StringRef, OTF2_Type, OTF2_AttributeValue), writer, callingContext, name, type, value)
end

function OTF2_DefWriter_WriteInterruptGenerator(writer, self, name, interruptGeneratorMode, base, exponent, period)
    ccall((:OTF2_DefWriter_WriteInterruptGenerator, libotf2), OTF2_ErrorCode, (Ptr{OTF2_DefWriter}, OTF2_InterruptGeneratorRef, OTF2_StringRef, OTF2_InterruptGeneratorMode, OTF2_Base, Int64, UInt64), writer, self, name, interruptGeneratorMode, base, exponent, period)
end

function OTF2_DefWriter_WriteIoFileProperty(writer, ioFile, name, type, value)
    ccall((:OTF2_DefWriter_WriteIoFileProperty, libotf2), OTF2_ErrorCode, (Ptr{OTF2_DefWriter}, OTF2_IoFileRef, OTF2_StringRef, OTF2_Type, OTF2_AttributeValue), writer, ioFile, name, type, value)
end

function OTF2_DefWriter_WriteIoRegularFile(writer, self, name, scope)
    ccall((:OTF2_DefWriter_WriteIoRegularFile, libotf2), OTF2_ErrorCode, (Ptr{OTF2_DefWriter}, OTF2_IoFileRef, OTF2_StringRef, OTF2_SystemTreeNodeRef), writer, self, name, scope)
end

function OTF2_DefWriter_WriteIoDirectory(writer, self, name, scope)
    ccall((:OTF2_DefWriter_WriteIoDirectory, libotf2), OTF2_ErrorCode, (Ptr{OTF2_DefWriter}, OTF2_IoFileRef, OTF2_StringRef, OTF2_SystemTreeNodeRef), writer, self, name, scope)
end

function OTF2_DefWriter_WriteIoHandle(writer, self, name, file, ioParadigm, ioHandleFlags, comm, parent)
    ccall((:OTF2_DefWriter_WriteIoHandle, libotf2), OTF2_ErrorCode, (Ptr{OTF2_DefWriter}, OTF2_IoHandleRef, OTF2_StringRef, OTF2_IoFileRef, OTF2_IoParadigmRef, OTF2_IoHandleFlag, OTF2_CommRef, OTF2_IoHandleRef), writer, self, name, file, ioParadigm, ioHandleFlags, comm, parent)
end

function OTF2_DefWriter_WriteIoPreCreatedHandleState(writer, ioHandle, mode, statusFlags)
    ccall((:OTF2_DefWriter_WriteIoPreCreatedHandleState, libotf2), OTF2_ErrorCode, (Ptr{OTF2_DefWriter}, OTF2_IoHandleRef, OTF2_IoAccessMode, OTF2_IoStatusFlag), writer, ioHandle, mode, statusFlags)
end

function OTF2_DefWriter_WriteCallpathParameter(writer, callpath, parameter, type, value)
    ccall((:OTF2_DefWriter_WriteCallpathParameter, libotf2), OTF2_ErrorCode, (Ptr{OTF2_DefWriter}, OTF2_CallpathRef, OTF2_ParameterRef, OTF2_Type, OTF2_AttributeValue), writer, callpath, parameter, type, value)
end

function OTF2_DefWriter_WriteInterComm(writer, self, name, groupA, groupB, commonCommunicator, flags)
    ccall((:OTF2_DefWriter_WriteInterComm, libotf2), OTF2_ErrorCode, (Ptr{OTF2_DefWriter}, OTF2_CommRef, OTF2_StringRef, OTF2_GroupRef, OTF2_GroupRef, OTF2_CommRef, OTF2_CommFlag), writer, self, name, groupA, groupB, commonCommunicator, flags)
end

mutable struct OTF2_DefReaderCallbacks_struct end

const OTF2_DefReaderCallbacks = OTF2_DefReaderCallbacks_struct

function OTF2_DefReaderCallbacks_New()
    ccall((:OTF2_DefReaderCallbacks_New, libotf2), Ptr{OTF2_DefReaderCallbacks}, ())
end

function OTF2_DefReaderCallbacks_Delete(defReaderCallbacks)
    ccall((:OTF2_DefReaderCallbacks_Delete, libotf2), Cvoid, (Ptr{OTF2_DefReaderCallbacks},), defReaderCallbacks)
end

function OTF2_DefReaderCallbacks_Clear(defReaderCallbacks)
    ccall((:OTF2_DefReaderCallbacks_Clear, libotf2), Cvoid, (Ptr{OTF2_DefReaderCallbacks},), defReaderCallbacks)
end

# typedef OTF2_CallbackCode ( * OTF2_DefReaderCallback_Unknown ) ( void * userData )
const OTF2_DefReaderCallback_Unknown = Ptr{Cvoid}

function OTF2_DefReaderCallbacks_SetUnknownCallback(defReaderCallbacks, unknownCallback)
    ccall((:OTF2_DefReaderCallbacks_SetUnknownCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_DefReaderCallbacks}, OTF2_DefReaderCallback_Unknown), defReaderCallbacks, unknownCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_DefReaderCallback_MappingTable ) ( void * userData , OTF2_MappingType mappingType , const OTF2_IdMap * idMap )
const OTF2_DefReaderCallback_MappingTable = Ptr{Cvoid}

function OTF2_DefReaderCallbacks_SetMappingTableCallback(defReaderCallbacks, mappingTableCallback)
    ccall((:OTF2_DefReaderCallbacks_SetMappingTableCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_DefReaderCallbacks}, OTF2_DefReaderCallback_MappingTable), defReaderCallbacks, mappingTableCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_DefReaderCallback_ClockOffset ) ( void * userData , OTF2_TimeStamp time , int64_t offset , double standardDeviation )
const OTF2_DefReaderCallback_ClockOffset = Ptr{Cvoid}

function OTF2_DefReaderCallbacks_SetClockOffsetCallback(defReaderCallbacks, clockOffsetCallback)
    ccall((:OTF2_DefReaderCallbacks_SetClockOffsetCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_DefReaderCallbacks}, OTF2_DefReaderCallback_ClockOffset), defReaderCallbacks, clockOffsetCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_DefReaderCallback_String ) ( void * userData , OTF2_StringRef self , const char * string )
const OTF2_DefReaderCallback_String = Ptr{Cvoid}

function OTF2_DefReaderCallbacks_SetStringCallback(defReaderCallbacks, stringCallback)
    ccall((:OTF2_DefReaderCallbacks_SetStringCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_DefReaderCallbacks}, OTF2_DefReaderCallback_String), defReaderCallbacks, stringCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_DefReaderCallback_Attribute ) ( void * userData , OTF2_AttributeRef self , OTF2_StringRef name , OTF2_StringRef description , OTF2_Type type )
const OTF2_DefReaderCallback_Attribute = Ptr{Cvoid}

function OTF2_DefReaderCallbacks_SetAttributeCallback(defReaderCallbacks, attributeCallback)
    ccall((:OTF2_DefReaderCallbacks_SetAttributeCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_DefReaderCallbacks}, OTF2_DefReaderCallback_Attribute), defReaderCallbacks, attributeCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_DefReaderCallback_SystemTreeNode ) ( void * userData , OTF2_SystemTreeNodeRef self , OTF2_StringRef name , OTF2_StringRef className , OTF2_SystemTreeNodeRef parent )
const OTF2_DefReaderCallback_SystemTreeNode = Ptr{Cvoid}

function OTF2_DefReaderCallbacks_SetSystemTreeNodeCallback(defReaderCallbacks, systemTreeNodeCallback)
    ccall((:OTF2_DefReaderCallbacks_SetSystemTreeNodeCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_DefReaderCallbacks}, OTF2_DefReaderCallback_SystemTreeNode), defReaderCallbacks, systemTreeNodeCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_DefReaderCallback_LocationGroup ) ( void * userData , OTF2_LocationGroupRef self , OTF2_StringRef name , OTF2_LocationGroupType locationGroupType , OTF2_SystemTreeNodeRef systemTreeParent , OTF2_LocationGroupRef creatingLocationGroup )
const OTF2_DefReaderCallback_LocationGroup = Ptr{Cvoid}

function OTF2_DefReaderCallbacks_SetLocationGroupCallback(defReaderCallbacks, locationGroupCallback)
    ccall((:OTF2_DefReaderCallbacks_SetLocationGroupCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_DefReaderCallbacks}, OTF2_DefReaderCallback_LocationGroup), defReaderCallbacks, locationGroupCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_DefReaderCallback_Location ) ( void * userData , OTF2_LocationRef self , OTF2_StringRef name , OTF2_LocationType locationType , uint64_t numberOfEvents , OTF2_LocationGroupRef locationGroup )
const OTF2_DefReaderCallback_Location = Ptr{Cvoid}

function OTF2_DefReaderCallbacks_SetLocationCallback(defReaderCallbacks, locationCallback)
    ccall((:OTF2_DefReaderCallbacks_SetLocationCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_DefReaderCallbacks}, OTF2_DefReaderCallback_Location), defReaderCallbacks, locationCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_DefReaderCallback_Region ) ( void * userData , OTF2_RegionRef self , OTF2_StringRef name , OTF2_StringRef canonicalName , OTF2_StringRef description , OTF2_RegionRole regionRole , OTF2_Paradigm paradigm , OTF2_RegionFlag regionFlags , OTF2_StringRef sourceFile , uint32_t beginLineNumber , uint32_t endLineNumber )
const OTF2_DefReaderCallback_Region = Ptr{Cvoid}

function OTF2_DefReaderCallbacks_SetRegionCallback(defReaderCallbacks, regionCallback)
    ccall((:OTF2_DefReaderCallbacks_SetRegionCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_DefReaderCallbacks}, OTF2_DefReaderCallback_Region), defReaderCallbacks, regionCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_DefReaderCallback_Callsite ) ( void * userData , OTF2_CallsiteRef self , OTF2_StringRef sourceFile , uint32_t lineNumber , OTF2_RegionRef enteredRegion , OTF2_RegionRef leftRegion )
const OTF2_DefReaderCallback_Callsite = Ptr{Cvoid}

function OTF2_DefReaderCallbacks_SetCallsiteCallback(defReaderCallbacks, callsiteCallback)
    ccall((:OTF2_DefReaderCallbacks_SetCallsiteCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_DefReaderCallbacks}, OTF2_DefReaderCallback_Callsite), defReaderCallbacks, callsiteCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_DefReaderCallback_Callpath ) ( void * userData , OTF2_CallpathRef self , OTF2_CallpathRef parent , OTF2_RegionRef region )
const OTF2_DefReaderCallback_Callpath = Ptr{Cvoid}

function OTF2_DefReaderCallbacks_SetCallpathCallback(defReaderCallbacks, callpathCallback)
    ccall((:OTF2_DefReaderCallbacks_SetCallpathCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_DefReaderCallbacks}, OTF2_DefReaderCallback_Callpath), defReaderCallbacks, callpathCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_DefReaderCallback_Group ) ( void * userData , OTF2_GroupRef self , OTF2_StringRef name , OTF2_GroupType groupType , OTF2_Paradigm paradigm , OTF2_GroupFlag groupFlags , uint32_t numberOfMembers , const uint64_t * members )
const OTF2_DefReaderCallback_Group = Ptr{Cvoid}

function OTF2_DefReaderCallbacks_SetGroupCallback(defReaderCallbacks, groupCallback)
    ccall((:OTF2_DefReaderCallbacks_SetGroupCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_DefReaderCallbacks}, OTF2_DefReaderCallback_Group), defReaderCallbacks, groupCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_DefReaderCallback_MetricMember ) ( void * userData , OTF2_MetricMemberRef self , OTF2_StringRef name , OTF2_StringRef description , OTF2_MetricType metricType , OTF2_MetricMode metricMode , OTF2_Type valueType , OTF2_Base base , int64_t exponent , OTF2_StringRef unit )
const OTF2_DefReaderCallback_MetricMember = Ptr{Cvoid}

function OTF2_DefReaderCallbacks_SetMetricMemberCallback(defReaderCallbacks, metricMemberCallback)
    ccall((:OTF2_DefReaderCallbacks_SetMetricMemberCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_DefReaderCallbacks}, OTF2_DefReaderCallback_MetricMember), defReaderCallbacks, metricMemberCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_DefReaderCallback_MetricClass ) ( void * userData , OTF2_MetricRef self , uint8_t numberOfMetrics , const OTF2_MetricMemberRef * metricMembers , OTF2_MetricOccurrence metricOccurrence , OTF2_RecorderKind recorderKind )
const OTF2_DefReaderCallback_MetricClass = Ptr{Cvoid}

function OTF2_DefReaderCallbacks_SetMetricClassCallback(defReaderCallbacks, metricClassCallback)
    ccall((:OTF2_DefReaderCallbacks_SetMetricClassCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_DefReaderCallbacks}, OTF2_DefReaderCallback_MetricClass), defReaderCallbacks, metricClassCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_DefReaderCallback_MetricInstance ) ( void * userData , OTF2_MetricRef self , OTF2_MetricRef metricClass , OTF2_LocationRef recorder , OTF2_MetricScope metricScope , uint64_t scope )
const OTF2_DefReaderCallback_MetricInstance = Ptr{Cvoid}

function OTF2_DefReaderCallbacks_SetMetricInstanceCallback(defReaderCallbacks, metricInstanceCallback)
    ccall((:OTF2_DefReaderCallbacks_SetMetricInstanceCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_DefReaderCallbacks}, OTF2_DefReaderCallback_MetricInstance), defReaderCallbacks, metricInstanceCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_DefReaderCallback_Comm ) ( void * userData , OTF2_CommRef self , OTF2_StringRef name , OTF2_GroupRef group , OTF2_CommRef parent , OTF2_CommFlag flags )
const OTF2_DefReaderCallback_Comm = Ptr{Cvoid}

function OTF2_DefReaderCallbacks_SetCommCallback(defReaderCallbacks, commCallback)
    ccall((:OTF2_DefReaderCallbacks_SetCommCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_DefReaderCallbacks}, OTF2_DefReaderCallback_Comm), defReaderCallbacks, commCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_DefReaderCallback_Parameter ) ( void * userData , OTF2_ParameterRef self , OTF2_StringRef name , OTF2_ParameterType parameterType )
const OTF2_DefReaderCallback_Parameter = Ptr{Cvoid}

function OTF2_DefReaderCallbacks_SetParameterCallback(defReaderCallbacks, parameterCallback)
    ccall((:OTF2_DefReaderCallbacks_SetParameterCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_DefReaderCallbacks}, OTF2_DefReaderCallback_Parameter), defReaderCallbacks, parameterCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_DefReaderCallback_RmaWin ) ( void * userData , OTF2_RmaWinRef self , OTF2_StringRef name , OTF2_CommRef comm , OTF2_RmaWinFlag flags )
const OTF2_DefReaderCallback_RmaWin = Ptr{Cvoid}

function OTF2_DefReaderCallbacks_SetRmaWinCallback(defReaderCallbacks, rmaWinCallback)
    ccall((:OTF2_DefReaderCallbacks_SetRmaWinCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_DefReaderCallbacks}, OTF2_DefReaderCallback_RmaWin), defReaderCallbacks, rmaWinCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_DefReaderCallback_MetricClassRecorder ) ( void * userData , OTF2_MetricRef metric , OTF2_LocationRef recorder )
const OTF2_DefReaderCallback_MetricClassRecorder = Ptr{Cvoid}

function OTF2_DefReaderCallbacks_SetMetricClassRecorderCallback(defReaderCallbacks, metricClassRecorderCallback)
    ccall((:OTF2_DefReaderCallbacks_SetMetricClassRecorderCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_DefReaderCallbacks}, OTF2_DefReaderCallback_MetricClassRecorder), defReaderCallbacks, metricClassRecorderCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_DefReaderCallback_SystemTreeNodeProperty ) ( void * userData , OTF2_SystemTreeNodeRef systemTreeNode , OTF2_StringRef name , OTF2_Type type , OTF2_AttributeValue value )
const OTF2_DefReaderCallback_SystemTreeNodeProperty = Ptr{Cvoid}

function OTF2_DefReaderCallbacks_SetSystemTreeNodePropertyCallback(defReaderCallbacks, systemTreeNodePropertyCallback)
    ccall((:OTF2_DefReaderCallbacks_SetSystemTreeNodePropertyCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_DefReaderCallbacks}, OTF2_DefReaderCallback_SystemTreeNodeProperty), defReaderCallbacks, systemTreeNodePropertyCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_DefReaderCallback_SystemTreeNodeDomain ) ( void * userData , OTF2_SystemTreeNodeRef systemTreeNode , OTF2_SystemTreeDomain systemTreeDomain )
const OTF2_DefReaderCallback_SystemTreeNodeDomain = Ptr{Cvoid}

function OTF2_DefReaderCallbacks_SetSystemTreeNodeDomainCallback(defReaderCallbacks, systemTreeNodeDomainCallback)
    ccall((:OTF2_DefReaderCallbacks_SetSystemTreeNodeDomainCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_DefReaderCallbacks}, OTF2_DefReaderCallback_SystemTreeNodeDomain), defReaderCallbacks, systemTreeNodeDomainCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_DefReaderCallback_LocationGroupProperty ) ( void * userData , OTF2_LocationGroupRef locationGroup , OTF2_StringRef name , OTF2_Type type , OTF2_AttributeValue value )
const OTF2_DefReaderCallback_LocationGroupProperty = Ptr{Cvoid}

function OTF2_DefReaderCallbacks_SetLocationGroupPropertyCallback(defReaderCallbacks, locationGroupPropertyCallback)
    ccall((:OTF2_DefReaderCallbacks_SetLocationGroupPropertyCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_DefReaderCallbacks}, OTF2_DefReaderCallback_LocationGroupProperty), defReaderCallbacks, locationGroupPropertyCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_DefReaderCallback_LocationProperty ) ( void * userData , OTF2_LocationRef location , OTF2_StringRef name , OTF2_Type type , OTF2_AttributeValue value )
const OTF2_DefReaderCallback_LocationProperty = Ptr{Cvoid}

function OTF2_DefReaderCallbacks_SetLocationPropertyCallback(defReaderCallbacks, locationPropertyCallback)
    ccall((:OTF2_DefReaderCallbacks_SetLocationPropertyCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_DefReaderCallbacks}, OTF2_DefReaderCallback_LocationProperty), defReaderCallbacks, locationPropertyCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_DefReaderCallback_CartDimension ) ( void * userData , OTF2_CartDimensionRef self , OTF2_StringRef name , uint32_t size , OTF2_CartPeriodicity cartPeriodicity )
const OTF2_DefReaderCallback_CartDimension = Ptr{Cvoid}

function OTF2_DefReaderCallbacks_SetCartDimensionCallback(defReaderCallbacks, cartDimensionCallback)
    ccall((:OTF2_DefReaderCallbacks_SetCartDimensionCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_DefReaderCallbacks}, OTF2_DefReaderCallback_CartDimension), defReaderCallbacks, cartDimensionCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_DefReaderCallback_CartTopology ) ( void * userData , OTF2_CartTopologyRef self , OTF2_StringRef name , OTF2_CommRef communicator , uint8_t numberOfDimensions , const OTF2_CartDimensionRef * cartDimensions )
const OTF2_DefReaderCallback_CartTopology = Ptr{Cvoid}

function OTF2_DefReaderCallbacks_SetCartTopologyCallback(defReaderCallbacks, cartTopologyCallback)
    ccall((:OTF2_DefReaderCallbacks_SetCartTopologyCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_DefReaderCallbacks}, OTF2_DefReaderCallback_CartTopology), defReaderCallbacks, cartTopologyCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_DefReaderCallback_CartCoordinate ) ( void * userData , OTF2_CartTopologyRef cartTopology , uint32_t rank , uint8_t numberOfDimensions , const uint32_t * coordinates )
const OTF2_DefReaderCallback_CartCoordinate = Ptr{Cvoid}

function OTF2_DefReaderCallbacks_SetCartCoordinateCallback(defReaderCallbacks, cartCoordinateCallback)
    ccall((:OTF2_DefReaderCallbacks_SetCartCoordinateCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_DefReaderCallbacks}, OTF2_DefReaderCallback_CartCoordinate), defReaderCallbacks, cartCoordinateCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_DefReaderCallback_SourceCodeLocation ) ( void * userData , OTF2_SourceCodeLocationRef self , OTF2_StringRef file , uint32_t lineNumber )
const OTF2_DefReaderCallback_SourceCodeLocation = Ptr{Cvoid}

function OTF2_DefReaderCallbacks_SetSourceCodeLocationCallback(defReaderCallbacks, sourceCodeLocationCallback)
    ccall((:OTF2_DefReaderCallbacks_SetSourceCodeLocationCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_DefReaderCallbacks}, OTF2_DefReaderCallback_SourceCodeLocation), defReaderCallbacks, sourceCodeLocationCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_DefReaderCallback_CallingContext ) ( void * userData , OTF2_CallingContextRef self , OTF2_RegionRef region , OTF2_SourceCodeLocationRef sourceCodeLocation , OTF2_CallingContextRef parent )
const OTF2_DefReaderCallback_CallingContext = Ptr{Cvoid}

function OTF2_DefReaderCallbacks_SetCallingContextCallback(defReaderCallbacks, callingContextCallback)
    ccall((:OTF2_DefReaderCallbacks_SetCallingContextCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_DefReaderCallbacks}, OTF2_DefReaderCallback_CallingContext), defReaderCallbacks, callingContextCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_DefReaderCallback_CallingContextProperty ) ( void * userData , OTF2_CallingContextRef callingContext , OTF2_StringRef name , OTF2_Type type , OTF2_AttributeValue value )
const OTF2_DefReaderCallback_CallingContextProperty = Ptr{Cvoid}

function OTF2_DefReaderCallbacks_SetCallingContextPropertyCallback(defReaderCallbacks, callingContextPropertyCallback)
    ccall((:OTF2_DefReaderCallbacks_SetCallingContextPropertyCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_DefReaderCallbacks}, OTF2_DefReaderCallback_CallingContextProperty), defReaderCallbacks, callingContextPropertyCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_DefReaderCallback_InterruptGenerator ) ( void * userData , OTF2_InterruptGeneratorRef self , OTF2_StringRef name , OTF2_InterruptGeneratorMode interruptGeneratorMode , OTF2_Base base , int64_t exponent , uint64_t period )
const OTF2_DefReaderCallback_InterruptGenerator = Ptr{Cvoid}

function OTF2_DefReaderCallbacks_SetInterruptGeneratorCallback(defReaderCallbacks, interruptGeneratorCallback)
    ccall((:OTF2_DefReaderCallbacks_SetInterruptGeneratorCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_DefReaderCallbacks}, OTF2_DefReaderCallback_InterruptGenerator), defReaderCallbacks, interruptGeneratorCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_DefReaderCallback_IoFileProperty ) ( void * userData , OTF2_IoFileRef ioFile , OTF2_StringRef name , OTF2_Type type , OTF2_AttributeValue value )
const OTF2_DefReaderCallback_IoFileProperty = Ptr{Cvoid}

function OTF2_DefReaderCallbacks_SetIoFilePropertyCallback(defReaderCallbacks, ioFilePropertyCallback)
    ccall((:OTF2_DefReaderCallbacks_SetIoFilePropertyCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_DefReaderCallbacks}, OTF2_DefReaderCallback_IoFileProperty), defReaderCallbacks, ioFilePropertyCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_DefReaderCallback_IoRegularFile ) ( void * userData , OTF2_IoFileRef self , OTF2_StringRef name , OTF2_SystemTreeNodeRef scope )
const OTF2_DefReaderCallback_IoRegularFile = Ptr{Cvoid}

function OTF2_DefReaderCallbacks_SetIoRegularFileCallback(defReaderCallbacks, ioRegularFileCallback)
    ccall((:OTF2_DefReaderCallbacks_SetIoRegularFileCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_DefReaderCallbacks}, OTF2_DefReaderCallback_IoRegularFile), defReaderCallbacks, ioRegularFileCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_DefReaderCallback_IoDirectory ) ( void * userData , OTF2_IoFileRef self , OTF2_StringRef name , OTF2_SystemTreeNodeRef scope )
const OTF2_DefReaderCallback_IoDirectory = Ptr{Cvoid}

function OTF2_DefReaderCallbacks_SetIoDirectoryCallback(defReaderCallbacks, ioDirectoryCallback)
    ccall((:OTF2_DefReaderCallbacks_SetIoDirectoryCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_DefReaderCallbacks}, OTF2_DefReaderCallback_IoDirectory), defReaderCallbacks, ioDirectoryCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_DefReaderCallback_IoHandle ) ( void * userData , OTF2_IoHandleRef self , OTF2_StringRef name , OTF2_IoFileRef file , OTF2_IoParadigmRef ioParadigm , OTF2_IoHandleFlag ioHandleFlags , OTF2_CommRef comm , OTF2_IoHandleRef parent )
const OTF2_DefReaderCallback_IoHandle = Ptr{Cvoid}

function OTF2_DefReaderCallbacks_SetIoHandleCallback(defReaderCallbacks, ioHandleCallback)
    ccall((:OTF2_DefReaderCallbacks_SetIoHandleCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_DefReaderCallbacks}, OTF2_DefReaderCallback_IoHandle), defReaderCallbacks, ioHandleCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_DefReaderCallback_IoPreCreatedHandleState ) ( void * userData , OTF2_IoHandleRef ioHandle , OTF2_IoAccessMode mode , OTF2_IoStatusFlag statusFlags )
const OTF2_DefReaderCallback_IoPreCreatedHandleState = Ptr{Cvoid}

function OTF2_DefReaderCallbacks_SetIoPreCreatedHandleStateCallback(defReaderCallbacks, ioPreCreatedHandleStateCallback)
    ccall((:OTF2_DefReaderCallbacks_SetIoPreCreatedHandleStateCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_DefReaderCallbacks}, OTF2_DefReaderCallback_IoPreCreatedHandleState), defReaderCallbacks, ioPreCreatedHandleStateCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_DefReaderCallback_CallpathParameter ) ( void * userData , OTF2_CallpathRef callpath , OTF2_ParameterRef parameter , OTF2_Type type , OTF2_AttributeValue value )
const OTF2_DefReaderCallback_CallpathParameter = Ptr{Cvoid}

function OTF2_DefReaderCallbacks_SetCallpathParameterCallback(defReaderCallbacks, callpathParameterCallback)
    ccall((:OTF2_DefReaderCallbacks_SetCallpathParameterCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_DefReaderCallbacks}, OTF2_DefReaderCallback_CallpathParameter), defReaderCallbacks, callpathParameterCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_DefReaderCallback_InterComm ) ( void * userData , OTF2_CommRef self , OTF2_StringRef name , OTF2_GroupRef groupA , OTF2_GroupRef groupB , OTF2_CommRef commonCommunicator , OTF2_CommFlag flags )
const OTF2_DefReaderCallback_InterComm = Ptr{Cvoid}

function OTF2_DefReaderCallbacks_SetInterCommCallback(defReaderCallbacks, interCommCallback)
    ccall((:OTF2_DefReaderCallbacks_SetInterCommCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_DefReaderCallbacks}, OTF2_DefReaderCallback_InterComm), defReaderCallbacks, interCommCallback)
end

function OTF2_DefReader_GetLocationID(reader, location)
    ccall((:OTF2_DefReader_GetLocationID, libotf2), OTF2_ErrorCode, (Ptr{OTF2_DefReader}, Ptr{OTF2_LocationRef}), reader, location)
end

function OTF2_DefReader_SetCallbacks(reader, callbacks, userData)
    ccall((:OTF2_DefReader_SetCallbacks, libotf2), OTF2_ErrorCode, (Ptr{OTF2_DefReader}, Ptr{OTF2_DefReaderCallbacks}, Ptr{Cvoid}), reader, callbacks, userData)
end

function OTF2_DefReader_ReadDefinitions(reader, recordsToRead, recordsRead)
    ccall((:OTF2_DefReader_ReadDefinitions, libotf2), OTF2_ErrorCode, (Ptr{OTF2_DefReader}, UInt64, Ptr{UInt64}), reader, recordsToRead, recordsRead)
end

mutable struct OTF2_AttributeList_struct end

const OTF2_AttributeList = OTF2_AttributeList_struct

function OTF2_AttributeList_New()
    ccall((:OTF2_AttributeList_New, libotf2), Ptr{OTF2_AttributeList}, ())
end

function OTF2_AttributeList_Delete(attributeList)
    ccall((:OTF2_AttributeList_Delete, libotf2), OTF2_ErrorCode, (Ptr{OTF2_AttributeList},), attributeList)
end

function OTF2_AttributeList_AddAttribute(attributeList, attribute, type, attributeValue)
    ccall((:OTF2_AttributeList_AddAttribute, libotf2), OTF2_ErrorCode, (Ptr{OTF2_AttributeList}, OTF2_AttributeRef, OTF2_Type, OTF2_AttributeValue), attributeList, attribute, type, attributeValue)
end

function OTF2_AttributeList_AddUint8(attributeList, attribute, uint8Value)
    ccall((:OTF2_AttributeList_AddUint8, libotf2), OTF2_ErrorCode, (Ptr{OTF2_AttributeList}, OTF2_AttributeRef, UInt8), attributeList, attribute, uint8Value)
end

function OTF2_AttributeList_AddUint16(attributeList, attribute, uint16Value)
    ccall((:OTF2_AttributeList_AddUint16, libotf2), OTF2_ErrorCode, (Ptr{OTF2_AttributeList}, OTF2_AttributeRef, UInt16), attributeList, attribute, uint16Value)
end

function OTF2_AttributeList_AddUint32(attributeList, attribute, uint32Value)
    ccall((:OTF2_AttributeList_AddUint32, libotf2), OTF2_ErrorCode, (Ptr{OTF2_AttributeList}, OTF2_AttributeRef, UInt32), attributeList, attribute, uint32Value)
end

function OTF2_AttributeList_AddUint64(attributeList, attribute, uint64Value)
    ccall((:OTF2_AttributeList_AddUint64, libotf2), OTF2_ErrorCode, (Ptr{OTF2_AttributeList}, OTF2_AttributeRef, UInt64), attributeList, attribute, uint64Value)
end

function OTF2_AttributeList_AddInt8(attributeList, attribute, int8Value)
    ccall((:OTF2_AttributeList_AddInt8, libotf2), OTF2_ErrorCode, (Ptr{OTF2_AttributeList}, OTF2_AttributeRef, Int8), attributeList, attribute, int8Value)
end

function OTF2_AttributeList_AddInt16(attributeList, attribute, int16Value)
    ccall((:OTF2_AttributeList_AddInt16, libotf2), OTF2_ErrorCode, (Ptr{OTF2_AttributeList}, OTF2_AttributeRef, Int16), attributeList, attribute, int16Value)
end

function OTF2_AttributeList_AddInt32(attributeList, attribute, int32Value)
    ccall((:OTF2_AttributeList_AddInt32, libotf2), OTF2_ErrorCode, (Ptr{OTF2_AttributeList}, OTF2_AttributeRef, Int32), attributeList, attribute, int32Value)
end

function OTF2_AttributeList_AddInt64(attributeList, attribute, int64Value)
    ccall((:OTF2_AttributeList_AddInt64, libotf2), OTF2_ErrorCode, (Ptr{OTF2_AttributeList}, OTF2_AttributeRef, Int64), attributeList, attribute, int64Value)
end

function OTF2_AttributeList_AddFloat(attributeList, attribute, float32Value)
    ccall((:OTF2_AttributeList_AddFloat, libotf2), OTF2_ErrorCode, (Ptr{OTF2_AttributeList}, OTF2_AttributeRef, Cfloat), attributeList, attribute, float32Value)
end

function OTF2_AttributeList_AddDouble(attributeList, attribute, float64Value)
    ccall((:OTF2_AttributeList_AddDouble, libotf2), OTF2_ErrorCode, (Ptr{OTF2_AttributeList}, OTF2_AttributeRef, Cdouble), attributeList, attribute, float64Value)
end

function OTF2_AttributeList_AddStringRef(attributeList, attribute, stringRef)
    ccall((:OTF2_AttributeList_AddStringRef, libotf2), OTF2_ErrorCode, (Ptr{OTF2_AttributeList}, OTF2_AttributeRef, OTF2_StringRef), attributeList, attribute, stringRef)
end

function OTF2_AttributeList_AddAttributeRef(attributeList, attribute, attributeRef)
    ccall((:OTF2_AttributeList_AddAttributeRef, libotf2), OTF2_ErrorCode, (Ptr{OTF2_AttributeList}, OTF2_AttributeRef, OTF2_AttributeRef), attributeList, attribute, attributeRef)
end

function OTF2_AttributeList_AddLocationRef(attributeList, attribute, locationRef)
    ccall((:OTF2_AttributeList_AddLocationRef, libotf2), OTF2_ErrorCode, (Ptr{OTF2_AttributeList}, OTF2_AttributeRef, OTF2_LocationRef), attributeList, attribute, locationRef)
end

function OTF2_AttributeList_AddRegionRef(attributeList, attribute, regionRef)
    ccall((:OTF2_AttributeList_AddRegionRef, libotf2), OTF2_ErrorCode, (Ptr{OTF2_AttributeList}, OTF2_AttributeRef, OTF2_RegionRef), attributeList, attribute, regionRef)
end

function OTF2_AttributeList_AddGroupRef(attributeList, attribute, groupRef)
    ccall((:OTF2_AttributeList_AddGroupRef, libotf2), OTF2_ErrorCode, (Ptr{OTF2_AttributeList}, OTF2_AttributeRef, OTF2_GroupRef), attributeList, attribute, groupRef)
end

function OTF2_AttributeList_AddMetricRef(attributeList, attribute, metricRef)
    ccall((:OTF2_AttributeList_AddMetricRef, libotf2), OTF2_ErrorCode, (Ptr{OTF2_AttributeList}, OTF2_AttributeRef, OTF2_MetricRef), attributeList, attribute, metricRef)
end

function OTF2_AttributeList_AddCommRef(attributeList, attribute, commRef)
    ccall((:OTF2_AttributeList_AddCommRef, libotf2), OTF2_ErrorCode, (Ptr{OTF2_AttributeList}, OTF2_AttributeRef, OTF2_CommRef), attributeList, attribute, commRef)
end

function OTF2_AttributeList_AddParameterRef(attributeList, attribute, parameterRef)
    ccall((:OTF2_AttributeList_AddParameterRef, libotf2), OTF2_ErrorCode, (Ptr{OTF2_AttributeList}, OTF2_AttributeRef, OTF2_ParameterRef), attributeList, attribute, parameterRef)
end

function OTF2_AttributeList_AddRmaWinRef(attributeList, attribute, rmaWinRef)
    ccall((:OTF2_AttributeList_AddRmaWinRef, libotf2), OTF2_ErrorCode, (Ptr{OTF2_AttributeList}, OTF2_AttributeRef, OTF2_RmaWinRef), attributeList, attribute, rmaWinRef)
end

function OTF2_AttributeList_AddSourceCodeLocationRef(attributeList, attribute, sourceCodeLocationRef)
    ccall((:OTF2_AttributeList_AddSourceCodeLocationRef, libotf2), OTF2_ErrorCode, (Ptr{OTF2_AttributeList}, OTF2_AttributeRef, OTF2_SourceCodeLocationRef), attributeList, attribute, sourceCodeLocationRef)
end

function OTF2_AttributeList_AddCallingContextRef(attributeList, attribute, callingContextRef)
    ccall((:OTF2_AttributeList_AddCallingContextRef, libotf2), OTF2_ErrorCode, (Ptr{OTF2_AttributeList}, OTF2_AttributeRef, OTF2_CallingContextRef), attributeList, attribute, callingContextRef)
end

function OTF2_AttributeList_AddInterruptGeneratorRef(attributeList, attribute, interruptGeneratorRef)
    ccall((:OTF2_AttributeList_AddInterruptGeneratorRef, libotf2), OTF2_ErrorCode, (Ptr{OTF2_AttributeList}, OTF2_AttributeRef, OTF2_InterruptGeneratorRef), attributeList, attribute, interruptGeneratorRef)
end

function OTF2_AttributeList_AddIoFileRef(attributeList, attribute, ioFileRef)
    ccall((:OTF2_AttributeList_AddIoFileRef, libotf2), OTF2_ErrorCode, (Ptr{OTF2_AttributeList}, OTF2_AttributeRef, OTF2_IoFileRef), attributeList, attribute, ioFileRef)
end

function OTF2_AttributeList_AddIoHandleRef(attributeList, attribute, ioHandleRef)
    ccall((:OTF2_AttributeList_AddIoHandleRef, libotf2), OTF2_ErrorCode, (Ptr{OTF2_AttributeList}, OTF2_AttributeRef, OTF2_IoHandleRef), attributeList, attribute, ioHandleRef)
end

function OTF2_AttributeList_AddLocationGroupRef(attributeList, attribute, locationGroupRef)
    ccall((:OTF2_AttributeList_AddLocationGroupRef, libotf2), OTF2_ErrorCode, (Ptr{OTF2_AttributeList}, OTF2_AttributeRef, OTF2_LocationGroupRef), attributeList, attribute, locationGroupRef)
end

function OTF2_AttributeList_RemoveAttribute(attributeList, attribute)
    ccall((:OTF2_AttributeList_RemoveAttribute, libotf2), OTF2_ErrorCode, (Ptr{OTF2_AttributeList}, OTF2_AttributeRef), attributeList, attribute)
end

function OTF2_AttributeList_RemoveAllAttributes(attributeList)
    ccall((:OTF2_AttributeList_RemoveAllAttributes, libotf2), OTF2_ErrorCode, (Ptr{OTF2_AttributeList},), attributeList)
end

function OTF2_AttributeList_TestAttributeByID(attributeList, attribute)
    ccall((:OTF2_AttributeList_TestAttributeByID, libotf2), Bool, (Ptr{OTF2_AttributeList}, OTF2_AttributeRef), attributeList, attribute)
end

function OTF2_AttributeList_GetAttributeByID(attributeList, attribute, type, attributeValue)
    ccall((:OTF2_AttributeList_GetAttributeByID, libotf2), OTF2_ErrorCode, (Ptr{OTF2_AttributeList}, OTF2_AttributeRef, Ptr{OTF2_Type}, Ptr{OTF2_AttributeValue}), attributeList, attribute, type, attributeValue)
end

function OTF2_AttributeList_GetUint8(attributeList, attribute, uint8Value)
    ccall((:OTF2_AttributeList_GetUint8, libotf2), OTF2_ErrorCode, (Ptr{OTF2_AttributeList}, OTF2_AttributeRef, Ptr{UInt8}), attributeList, attribute, uint8Value)
end

function OTF2_AttributeList_GetUint16(attributeList, attribute, uint16Value)
    ccall((:OTF2_AttributeList_GetUint16, libotf2), OTF2_ErrorCode, (Ptr{OTF2_AttributeList}, OTF2_AttributeRef, Ptr{UInt16}), attributeList, attribute, uint16Value)
end

function OTF2_AttributeList_GetUint32(attributeList, attribute, uint32Value)
    ccall((:OTF2_AttributeList_GetUint32, libotf2), OTF2_ErrorCode, (Ptr{OTF2_AttributeList}, OTF2_AttributeRef, Ptr{UInt32}), attributeList, attribute, uint32Value)
end

function OTF2_AttributeList_GetUint64(attributeList, attribute, uint64Value)
    ccall((:OTF2_AttributeList_GetUint64, libotf2), OTF2_ErrorCode, (Ptr{OTF2_AttributeList}, OTF2_AttributeRef, Ptr{UInt64}), attributeList, attribute, uint64Value)
end

function OTF2_AttributeList_GetInt8(attributeList, attribute, int8Value)
    ccall((:OTF2_AttributeList_GetInt8, libotf2), OTF2_ErrorCode, (Ptr{OTF2_AttributeList}, OTF2_AttributeRef, Ptr{Int8}), attributeList, attribute, int8Value)
end

function OTF2_AttributeList_GetInt16(attributeList, attribute, int16Value)
    ccall((:OTF2_AttributeList_GetInt16, libotf2), OTF2_ErrorCode, (Ptr{OTF2_AttributeList}, OTF2_AttributeRef, Ptr{Int16}), attributeList, attribute, int16Value)
end

function OTF2_AttributeList_GetInt32(attributeList, attribute, int32Value)
    ccall((:OTF2_AttributeList_GetInt32, libotf2), OTF2_ErrorCode, (Ptr{OTF2_AttributeList}, OTF2_AttributeRef, Ptr{Int32}), attributeList, attribute, int32Value)
end

function OTF2_AttributeList_GetInt64(attributeList, attribute, int64Value)
    ccall((:OTF2_AttributeList_GetInt64, libotf2), OTF2_ErrorCode, (Ptr{OTF2_AttributeList}, OTF2_AttributeRef, Ptr{Int64}), attributeList, attribute, int64Value)
end

function OTF2_AttributeList_GetFloat(attributeList, attribute, float32Value)
    ccall((:OTF2_AttributeList_GetFloat, libotf2), OTF2_ErrorCode, (Ptr{OTF2_AttributeList}, OTF2_AttributeRef, Ptr{Cfloat}), attributeList, attribute, float32Value)
end

function OTF2_AttributeList_GetDouble(attributeList, attribute, float64Value)
    ccall((:OTF2_AttributeList_GetDouble, libotf2), OTF2_ErrorCode, (Ptr{OTF2_AttributeList}, OTF2_AttributeRef, Ptr{Cdouble}), attributeList, attribute, float64Value)
end

function OTF2_AttributeList_GetStringRef(attributeList, attribute, stringRef)
    ccall((:OTF2_AttributeList_GetStringRef, libotf2), OTF2_ErrorCode, (Ptr{OTF2_AttributeList}, OTF2_AttributeRef, Ptr{OTF2_StringRef}), attributeList, attribute, stringRef)
end

function OTF2_AttributeList_GetAttributeRef(attributeList, attribute, attributeRef)
    ccall((:OTF2_AttributeList_GetAttributeRef, libotf2), OTF2_ErrorCode, (Ptr{OTF2_AttributeList}, OTF2_AttributeRef, Ptr{OTF2_AttributeRef}), attributeList, attribute, attributeRef)
end

function OTF2_AttributeList_GetLocationRef(attributeList, attribute, locationRef)
    ccall((:OTF2_AttributeList_GetLocationRef, libotf2), OTF2_ErrorCode, (Ptr{OTF2_AttributeList}, OTF2_AttributeRef, Ptr{OTF2_LocationRef}), attributeList, attribute, locationRef)
end

function OTF2_AttributeList_GetRegionRef(attributeList, attribute, regionRef)
    ccall((:OTF2_AttributeList_GetRegionRef, libotf2), OTF2_ErrorCode, (Ptr{OTF2_AttributeList}, OTF2_AttributeRef, Ptr{OTF2_RegionRef}), attributeList, attribute, regionRef)
end

function OTF2_AttributeList_GetGroupRef(attributeList, attribute, groupRef)
    ccall((:OTF2_AttributeList_GetGroupRef, libotf2), OTF2_ErrorCode, (Ptr{OTF2_AttributeList}, OTF2_AttributeRef, Ptr{OTF2_GroupRef}), attributeList, attribute, groupRef)
end

function OTF2_AttributeList_GetMetricRef(attributeList, attribute, metricRef)
    ccall((:OTF2_AttributeList_GetMetricRef, libotf2), OTF2_ErrorCode, (Ptr{OTF2_AttributeList}, OTF2_AttributeRef, Ptr{OTF2_MetricRef}), attributeList, attribute, metricRef)
end

function OTF2_AttributeList_GetCommRef(attributeList, attribute, commRef)
    ccall((:OTF2_AttributeList_GetCommRef, libotf2), OTF2_ErrorCode, (Ptr{OTF2_AttributeList}, OTF2_AttributeRef, Ptr{OTF2_CommRef}), attributeList, attribute, commRef)
end

function OTF2_AttributeList_GetParameterRef(attributeList, attribute, parameterRef)
    ccall((:OTF2_AttributeList_GetParameterRef, libotf2), OTF2_ErrorCode, (Ptr{OTF2_AttributeList}, OTF2_AttributeRef, Ptr{OTF2_ParameterRef}), attributeList, attribute, parameterRef)
end

function OTF2_AttributeList_GetRmaWinRef(attributeList, attribute, rmaWinRef)
    ccall((:OTF2_AttributeList_GetRmaWinRef, libotf2), OTF2_ErrorCode, (Ptr{OTF2_AttributeList}, OTF2_AttributeRef, Ptr{OTF2_RmaWinRef}), attributeList, attribute, rmaWinRef)
end

function OTF2_AttributeList_GetSourceCodeLocationRef(attributeList, attribute, sourceCodeLocationRef)
    ccall((:OTF2_AttributeList_GetSourceCodeLocationRef, libotf2), OTF2_ErrorCode, (Ptr{OTF2_AttributeList}, OTF2_AttributeRef, Ptr{OTF2_SourceCodeLocationRef}), attributeList, attribute, sourceCodeLocationRef)
end

function OTF2_AttributeList_GetCallingContextRef(attributeList, attribute, callingContextRef)
    ccall((:OTF2_AttributeList_GetCallingContextRef, libotf2), OTF2_ErrorCode, (Ptr{OTF2_AttributeList}, OTF2_AttributeRef, Ptr{OTF2_CallingContextRef}), attributeList, attribute, callingContextRef)
end

function OTF2_AttributeList_GetInterruptGeneratorRef(attributeList, attribute, interruptGeneratorRef)
    ccall((:OTF2_AttributeList_GetInterruptGeneratorRef, libotf2), OTF2_ErrorCode, (Ptr{OTF2_AttributeList}, OTF2_AttributeRef, Ptr{OTF2_InterruptGeneratorRef}), attributeList, attribute, interruptGeneratorRef)
end

function OTF2_AttributeList_GetIoFileRef(attributeList, attribute, ioFileRef)
    ccall((:OTF2_AttributeList_GetIoFileRef, libotf2), OTF2_ErrorCode, (Ptr{OTF2_AttributeList}, OTF2_AttributeRef, Ptr{OTF2_IoFileRef}), attributeList, attribute, ioFileRef)
end

function OTF2_AttributeList_GetIoHandleRef(attributeList, attribute, ioHandleRef)
    ccall((:OTF2_AttributeList_GetIoHandleRef, libotf2), OTF2_ErrorCode, (Ptr{OTF2_AttributeList}, OTF2_AttributeRef, Ptr{OTF2_IoHandleRef}), attributeList, attribute, ioHandleRef)
end

function OTF2_AttributeList_GetLocationGroupRef(attributeList, attribute, locationGroupRef)
    ccall((:OTF2_AttributeList_GetLocationGroupRef, libotf2), OTF2_ErrorCode, (Ptr{OTF2_AttributeList}, OTF2_AttributeRef, Ptr{OTF2_LocationGroupRef}), attributeList, attribute, locationGroupRef)
end

function OTF2_AttributeList_GetAttributeByIndex(attributeList, index, attribute, type, attributeValue)
    ccall((:OTF2_AttributeList_GetAttributeByIndex, libotf2), OTF2_ErrorCode, (Ptr{OTF2_AttributeList}, UInt32, Ptr{OTF2_AttributeRef}, Ptr{OTF2_Type}, Ptr{OTF2_AttributeValue}), attributeList, index, attribute, type, attributeValue)
end

function OTF2_AttributeList_PopAttribute(attributeList, attribute, type, attributeValue)
    ccall((:OTF2_AttributeList_PopAttribute, libotf2), OTF2_ErrorCode, (Ptr{OTF2_AttributeList}, Ptr{OTF2_AttributeRef}, Ptr{OTF2_Type}, Ptr{OTF2_AttributeValue}), attributeList, attribute, type, attributeValue)
end

function OTF2_AttributeList_GetNumberOfElements(attributeList)
    ccall((:OTF2_AttributeList_GetNumberOfElements, libotf2), UInt32, (Ptr{OTF2_AttributeList},), attributeList)
end

mutable struct OTF2_EvtWriter_struct end

const OTF2_EvtWriter = OTF2_EvtWriter_struct

function OTF2_EvtWriter_GetLocationID(writer, locationID)
    ccall((:OTF2_EvtWriter_GetLocationID, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtWriter}, Ptr{OTF2_LocationRef}), writer, locationID)
end

function OTF2_EvtWriter_SetUserData(writer, userData)
    ccall((:OTF2_EvtWriter_SetUserData, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtWriter}, Ptr{Cvoid}), writer, userData)
end

function OTF2_EvtWriter_GetUserData(writer, userData)
    ccall((:OTF2_EvtWriter_GetUserData, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtWriter}, Ptr{Ptr{Cvoid}}), writer, userData)
end

function OTF2_EvtWriter_SetLocationID(writer, location)
    ccall((:OTF2_EvtWriter_SetLocationID, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtWriter}, OTF2_LocationRef), writer, location)
end

function OTF2_EvtWriter_GetNumberOfEvents(writer, numberOfEvents)
    ccall((:OTF2_EvtWriter_GetNumberOfEvents, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtWriter}, Ptr{UInt64}), writer, numberOfEvents)
end

function OTF2_EvtWriter_BufferFlush(writer, attributeList, time, stopTime)
    ccall((:OTF2_EvtWriter_BufferFlush, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtWriter}, Ptr{OTF2_AttributeList}, OTF2_TimeStamp, OTF2_TimeStamp), writer, attributeList, time, stopTime)
end

function OTF2_EvtWriter_MeasurementOnOff(writer, attributeList, time, measurementMode)
    ccall((:OTF2_EvtWriter_MeasurementOnOff, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtWriter}, Ptr{OTF2_AttributeList}, OTF2_TimeStamp, OTF2_MeasurementMode), writer, attributeList, time, measurementMode)
end

function OTF2_EvtWriter_Enter(writer, attributeList, time, region)
    ccall((:OTF2_EvtWriter_Enter, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtWriter}, Ptr{OTF2_AttributeList}, OTF2_TimeStamp, OTF2_RegionRef), writer, attributeList, time, region)
end

function OTF2_EvtWriter_Leave(writer, attributeList, time, region)
    ccall((:OTF2_EvtWriter_Leave, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtWriter}, Ptr{OTF2_AttributeList}, OTF2_TimeStamp, OTF2_RegionRef), writer, attributeList, time, region)
end

function OTF2_EvtWriter_MpiSend(writer, attributeList, time, receiver, communicator, msgTag, msgLength)
    ccall((:OTF2_EvtWriter_MpiSend, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtWriter}, Ptr{OTF2_AttributeList}, OTF2_TimeStamp, UInt32, OTF2_CommRef, UInt32, UInt64), writer, attributeList, time, receiver, communicator, msgTag, msgLength)
end

function OTF2_EvtWriter_MpiIsend(writer, attributeList, time, receiver, communicator, msgTag, msgLength, requestID)
    ccall((:OTF2_EvtWriter_MpiIsend, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtWriter}, Ptr{OTF2_AttributeList}, OTF2_TimeStamp, UInt32, OTF2_CommRef, UInt32, UInt64, UInt64), writer, attributeList, time, receiver, communicator, msgTag, msgLength, requestID)
end

function OTF2_EvtWriter_MpiIsendComplete(writer, attributeList, time, requestID)
    ccall((:OTF2_EvtWriter_MpiIsendComplete, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtWriter}, Ptr{OTF2_AttributeList}, OTF2_TimeStamp, UInt64), writer, attributeList, time, requestID)
end

function OTF2_EvtWriter_MpiIrecvRequest(writer, attributeList, time, requestID)
    ccall((:OTF2_EvtWriter_MpiIrecvRequest, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtWriter}, Ptr{OTF2_AttributeList}, OTF2_TimeStamp, UInt64), writer, attributeList, time, requestID)
end

function OTF2_EvtWriter_MpiRecv(writer, attributeList, time, sender, communicator, msgTag, msgLength)
    ccall((:OTF2_EvtWriter_MpiRecv, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtWriter}, Ptr{OTF2_AttributeList}, OTF2_TimeStamp, UInt32, OTF2_CommRef, UInt32, UInt64), writer, attributeList, time, sender, communicator, msgTag, msgLength)
end

function OTF2_EvtWriter_MpiIrecv(writer, attributeList, time, sender, communicator, msgTag, msgLength, requestID)
    ccall((:OTF2_EvtWriter_MpiIrecv, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtWriter}, Ptr{OTF2_AttributeList}, OTF2_TimeStamp, UInt32, OTF2_CommRef, UInt32, UInt64, UInt64), writer, attributeList, time, sender, communicator, msgTag, msgLength, requestID)
end

function OTF2_EvtWriter_MpiRequestTest(writer, attributeList, time, requestID)
    ccall((:OTF2_EvtWriter_MpiRequestTest, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtWriter}, Ptr{OTF2_AttributeList}, OTF2_TimeStamp, UInt64), writer, attributeList, time, requestID)
end

function OTF2_EvtWriter_MpiRequestCancelled(writer, attributeList, time, requestID)
    ccall((:OTF2_EvtWriter_MpiRequestCancelled, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtWriter}, Ptr{OTF2_AttributeList}, OTF2_TimeStamp, UInt64), writer, attributeList, time, requestID)
end

function OTF2_EvtWriter_MpiCollectiveBegin(writer, attributeList, time)
    ccall((:OTF2_EvtWriter_MpiCollectiveBegin, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtWriter}, Ptr{OTF2_AttributeList}, OTF2_TimeStamp), writer, attributeList, time)
end

function OTF2_EvtWriter_MpiCollectiveEnd(writer, attributeList, time, collectiveOp, communicator, root, sizeSent, sizeReceived)
    ccall((:OTF2_EvtWriter_MpiCollectiveEnd, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtWriter}, Ptr{OTF2_AttributeList}, OTF2_TimeStamp, OTF2_CollectiveOp, OTF2_CommRef, UInt32, UInt64, UInt64), writer, attributeList, time, collectiveOp, communicator, root, sizeSent, sizeReceived)
end

function OTF2_EvtWriter_OmpFork(writer, attributeList, time, numberOfRequestedThreads)
    ccall((:OTF2_EvtWriter_OmpFork, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtWriter}, Ptr{OTF2_AttributeList}, OTF2_TimeStamp, UInt32), writer, attributeList, time, numberOfRequestedThreads)
end

function OTF2_EvtWriter_OmpJoin(writer, attributeList, time)
    ccall((:OTF2_EvtWriter_OmpJoin, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtWriter}, Ptr{OTF2_AttributeList}, OTF2_TimeStamp), writer, attributeList, time)
end

function OTF2_EvtWriter_OmpAcquireLock(writer, attributeList, time, lockID, acquisitionOrder)
    ccall((:OTF2_EvtWriter_OmpAcquireLock, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtWriter}, Ptr{OTF2_AttributeList}, OTF2_TimeStamp, UInt32, UInt32), writer, attributeList, time, lockID, acquisitionOrder)
end

function OTF2_EvtWriter_OmpReleaseLock(writer, attributeList, time, lockID, acquisitionOrder)
    ccall((:OTF2_EvtWriter_OmpReleaseLock, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtWriter}, Ptr{OTF2_AttributeList}, OTF2_TimeStamp, UInt32, UInt32), writer, attributeList, time, lockID, acquisitionOrder)
end

function OTF2_EvtWriter_OmpTaskCreate(writer, attributeList, time, taskID)
    ccall((:OTF2_EvtWriter_OmpTaskCreate, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtWriter}, Ptr{OTF2_AttributeList}, OTF2_TimeStamp, UInt64), writer, attributeList, time, taskID)
end

function OTF2_EvtWriter_OmpTaskSwitch(writer, attributeList, time, taskID)
    ccall((:OTF2_EvtWriter_OmpTaskSwitch, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtWriter}, Ptr{OTF2_AttributeList}, OTF2_TimeStamp, UInt64), writer, attributeList, time, taskID)
end

function OTF2_EvtWriter_OmpTaskComplete(writer, attributeList, time, taskID)
    ccall((:OTF2_EvtWriter_OmpTaskComplete, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtWriter}, Ptr{OTF2_AttributeList}, OTF2_TimeStamp, UInt64), writer, attributeList, time, taskID)
end

function OTF2_EvtWriter_Metric(writer, attributeList, time, metric, numberOfMetrics, typeIDs, metricValues)
    ccall((:OTF2_EvtWriter_Metric, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtWriter}, Ptr{OTF2_AttributeList}, OTF2_TimeStamp, OTF2_MetricRef, UInt8, Ptr{OTF2_Type}, Ptr{OTF2_MetricValue}), writer, attributeList, time, metric, numberOfMetrics, typeIDs, metricValues)
end

function OTF2_EvtWriter_ParameterString(writer, attributeList, time, parameter, string)
    ccall((:OTF2_EvtWriter_ParameterString, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtWriter}, Ptr{OTF2_AttributeList}, OTF2_TimeStamp, OTF2_ParameterRef, OTF2_StringRef), writer, attributeList, time, parameter, string)
end

function OTF2_EvtWriter_ParameterInt(writer, attributeList, time, parameter, value)
    ccall((:OTF2_EvtWriter_ParameterInt, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtWriter}, Ptr{OTF2_AttributeList}, OTF2_TimeStamp, OTF2_ParameterRef, Int64), writer, attributeList, time, parameter, value)
end

function OTF2_EvtWriter_ParameterUnsignedInt(writer, attributeList, time, parameter, value)
    ccall((:OTF2_EvtWriter_ParameterUnsignedInt, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtWriter}, Ptr{OTF2_AttributeList}, OTF2_TimeStamp, OTF2_ParameterRef, UInt64), writer, attributeList, time, parameter, value)
end

function OTF2_EvtWriter_RmaWinCreate(writer, attributeList, time, win)
    ccall((:OTF2_EvtWriter_RmaWinCreate, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtWriter}, Ptr{OTF2_AttributeList}, OTF2_TimeStamp, OTF2_RmaWinRef), writer, attributeList, time, win)
end

function OTF2_EvtWriter_RmaWinDestroy(writer, attributeList, time, win)
    ccall((:OTF2_EvtWriter_RmaWinDestroy, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtWriter}, Ptr{OTF2_AttributeList}, OTF2_TimeStamp, OTF2_RmaWinRef), writer, attributeList, time, win)
end

function OTF2_EvtWriter_RmaCollectiveBegin(writer, attributeList, time)
    ccall((:OTF2_EvtWriter_RmaCollectiveBegin, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtWriter}, Ptr{OTF2_AttributeList}, OTF2_TimeStamp), writer, attributeList, time)
end

function OTF2_EvtWriter_RmaCollectiveEnd(writer, attributeList, time, collectiveOp, syncLevel, win, root, bytesSent, bytesReceived)
    ccall((:OTF2_EvtWriter_RmaCollectiveEnd, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtWriter}, Ptr{OTF2_AttributeList}, OTF2_TimeStamp, OTF2_CollectiveOp, OTF2_RmaSyncLevel, OTF2_RmaWinRef, UInt32, UInt64, UInt64), writer, attributeList, time, collectiveOp, syncLevel, win, root, bytesSent, bytesReceived)
end

function OTF2_EvtWriter_RmaGroupSync(writer, attributeList, time, syncLevel, win, group)
    ccall((:OTF2_EvtWriter_RmaGroupSync, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtWriter}, Ptr{OTF2_AttributeList}, OTF2_TimeStamp, OTF2_RmaSyncLevel, OTF2_RmaWinRef, OTF2_GroupRef), writer, attributeList, time, syncLevel, win, group)
end

function OTF2_EvtWriter_RmaRequestLock(writer, attributeList, time, win, remote, lockId, lockType)
    ccall((:OTF2_EvtWriter_RmaRequestLock, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtWriter}, Ptr{OTF2_AttributeList}, OTF2_TimeStamp, OTF2_RmaWinRef, UInt32, UInt64, OTF2_LockType), writer, attributeList, time, win, remote, lockId, lockType)
end

function OTF2_EvtWriter_RmaAcquireLock(writer, attributeList, time, win, remote, lockId, lockType)
    ccall((:OTF2_EvtWriter_RmaAcquireLock, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtWriter}, Ptr{OTF2_AttributeList}, OTF2_TimeStamp, OTF2_RmaWinRef, UInt32, UInt64, OTF2_LockType), writer, attributeList, time, win, remote, lockId, lockType)
end

function OTF2_EvtWriter_RmaTryLock(writer, attributeList, time, win, remote, lockId, lockType)
    ccall((:OTF2_EvtWriter_RmaTryLock, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtWriter}, Ptr{OTF2_AttributeList}, OTF2_TimeStamp, OTF2_RmaWinRef, UInt32, UInt64, OTF2_LockType), writer, attributeList, time, win, remote, lockId, lockType)
end

function OTF2_EvtWriter_RmaReleaseLock(writer, attributeList, time, win, remote, lockId)
    ccall((:OTF2_EvtWriter_RmaReleaseLock, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtWriter}, Ptr{OTF2_AttributeList}, OTF2_TimeStamp, OTF2_RmaWinRef, UInt32, UInt64), writer, attributeList, time, win, remote, lockId)
end

function OTF2_EvtWriter_RmaSync(writer, attributeList, time, win, remote, syncType)
    ccall((:OTF2_EvtWriter_RmaSync, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtWriter}, Ptr{OTF2_AttributeList}, OTF2_TimeStamp, OTF2_RmaWinRef, UInt32, OTF2_RmaSyncType), writer, attributeList, time, win, remote, syncType)
end

function OTF2_EvtWriter_RmaWaitChange(writer, attributeList, time, win)
    ccall((:OTF2_EvtWriter_RmaWaitChange, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtWriter}, Ptr{OTF2_AttributeList}, OTF2_TimeStamp, OTF2_RmaWinRef), writer, attributeList, time, win)
end

function OTF2_EvtWriter_RmaPut(writer, attributeList, time, win, remote, bytes, matchingId)
    ccall((:OTF2_EvtWriter_RmaPut, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtWriter}, Ptr{OTF2_AttributeList}, OTF2_TimeStamp, OTF2_RmaWinRef, UInt32, UInt64, UInt64), writer, attributeList, time, win, remote, bytes, matchingId)
end

function OTF2_EvtWriter_RmaGet(writer, attributeList, time, win, remote, bytes, matchingId)
    ccall((:OTF2_EvtWriter_RmaGet, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtWriter}, Ptr{OTF2_AttributeList}, OTF2_TimeStamp, OTF2_RmaWinRef, UInt32, UInt64, UInt64), writer, attributeList, time, win, remote, bytes, matchingId)
end

function OTF2_EvtWriter_RmaAtomic(writer, attributeList, time, win, remote, type, bytesSent, bytesReceived, matchingId)
    ccall((:OTF2_EvtWriter_RmaAtomic, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtWriter}, Ptr{OTF2_AttributeList}, OTF2_TimeStamp, OTF2_RmaWinRef, UInt32, OTF2_RmaAtomicType, UInt64, UInt64, UInt64), writer, attributeList, time, win, remote, type, bytesSent, bytesReceived, matchingId)
end

function OTF2_EvtWriter_RmaOpCompleteBlocking(writer, attributeList, time, win, matchingId)
    ccall((:OTF2_EvtWriter_RmaOpCompleteBlocking, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtWriter}, Ptr{OTF2_AttributeList}, OTF2_TimeStamp, OTF2_RmaWinRef, UInt64), writer, attributeList, time, win, matchingId)
end

function OTF2_EvtWriter_RmaOpCompleteNonBlocking(writer, attributeList, time, win, matchingId)
    ccall((:OTF2_EvtWriter_RmaOpCompleteNonBlocking, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtWriter}, Ptr{OTF2_AttributeList}, OTF2_TimeStamp, OTF2_RmaWinRef, UInt64), writer, attributeList, time, win, matchingId)
end

function OTF2_EvtWriter_RmaOpTest(writer, attributeList, time, win, matchingId)
    ccall((:OTF2_EvtWriter_RmaOpTest, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtWriter}, Ptr{OTF2_AttributeList}, OTF2_TimeStamp, OTF2_RmaWinRef, UInt64), writer, attributeList, time, win, matchingId)
end

function OTF2_EvtWriter_RmaOpCompleteRemote(writer, attributeList, time, win, matchingId)
    ccall((:OTF2_EvtWriter_RmaOpCompleteRemote, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtWriter}, Ptr{OTF2_AttributeList}, OTF2_TimeStamp, OTF2_RmaWinRef, UInt64), writer, attributeList, time, win, matchingId)
end

function OTF2_EvtWriter_ThreadFork(writer, attributeList, time, model, numberOfRequestedThreads)
    ccall((:OTF2_EvtWriter_ThreadFork, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtWriter}, Ptr{OTF2_AttributeList}, OTF2_TimeStamp, OTF2_Paradigm, UInt32), writer, attributeList, time, model, numberOfRequestedThreads)
end

function OTF2_EvtWriter_ThreadJoin(writer, attributeList, time, model)
    ccall((:OTF2_EvtWriter_ThreadJoin, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtWriter}, Ptr{OTF2_AttributeList}, OTF2_TimeStamp, OTF2_Paradigm), writer, attributeList, time, model)
end

function OTF2_EvtWriter_ThreadTeamBegin(writer, attributeList, time, threadTeam)
    ccall((:OTF2_EvtWriter_ThreadTeamBegin, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtWriter}, Ptr{OTF2_AttributeList}, OTF2_TimeStamp, OTF2_CommRef), writer, attributeList, time, threadTeam)
end

function OTF2_EvtWriter_ThreadTeamEnd(writer, attributeList, time, threadTeam)
    ccall((:OTF2_EvtWriter_ThreadTeamEnd, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtWriter}, Ptr{OTF2_AttributeList}, OTF2_TimeStamp, OTF2_CommRef), writer, attributeList, time, threadTeam)
end

function OTF2_EvtWriter_ThreadAcquireLock(writer, attributeList, time, model, lockID, acquisitionOrder)
    ccall((:OTF2_EvtWriter_ThreadAcquireLock, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtWriter}, Ptr{OTF2_AttributeList}, OTF2_TimeStamp, OTF2_Paradigm, UInt32, UInt32), writer, attributeList, time, model, lockID, acquisitionOrder)
end

function OTF2_EvtWriter_ThreadReleaseLock(writer, attributeList, time, model, lockID, acquisitionOrder)
    ccall((:OTF2_EvtWriter_ThreadReleaseLock, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtWriter}, Ptr{OTF2_AttributeList}, OTF2_TimeStamp, OTF2_Paradigm, UInt32, UInt32), writer, attributeList, time, model, lockID, acquisitionOrder)
end

function OTF2_EvtWriter_ThreadTaskCreate(writer, attributeList, time, threadTeam, creatingThread, generationNumber)
    ccall((:OTF2_EvtWriter_ThreadTaskCreate, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtWriter}, Ptr{OTF2_AttributeList}, OTF2_TimeStamp, OTF2_CommRef, UInt32, UInt32), writer, attributeList, time, threadTeam, creatingThread, generationNumber)
end

function OTF2_EvtWriter_ThreadTaskSwitch(writer, attributeList, time, threadTeam, creatingThread, generationNumber)
    ccall((:OTF2_EvtWriter_ThreadTaskSwitch, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtWriter}, Ptr{OTF2_AttributeList}, OTF2_TimeStamp, OTF2_CommRef, UInt32, UInt32), writer, attributeList, time, threadTeam, creatingThread, generationNumber)
end

function OTF2_EvtWriter_ThreadTaskComplete(writer, attributeList, time, threadTeam, creatingThread, generationNumber)
    ccall((:OTF2_EvtWriter_ThreadTaskComplete, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtWriter}, Ptr{OTF2_AttributeList}, OTF2_TimeStamp, OTF2_CommRef, UInt32, UInt32), writer, attributeList, time, threadTeam, creatingThread, generationNumber)
end

function OTF2_EvtWriter_ThreadCreate(writer, attributeList, time, threadContingent, sequenceCount)
    ccall((:OTF2_EvtWriter_ThreadCreate, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtWriter}, Ptr{OTF2_AttributeList}, OTF2_TimeStamp, OTF2_CommRef, UInt64), writer, attributeList, time, threadContingent, sequenceCount)
end

function OTF2_EvtWriter_ThreadBegin(writer, attributeList, time, threadContingent, sequenceCount)
    ccall((:OTF2_EvtWriter_ThreadBegin, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtWriter}, Ptr{OTF2_AttributeList}, OTF2_TimeStamp, OTF2_CommRef, UInt64), writer, attributeList, time, threadContingent, sequenceCount)
end

function OTF2_EvtWriter_ThreadWait(writer, attributeList, time, threadContingent, sequenceCount)
    ccall((:OTF2_EvtWriter_ThreadWait, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtWriter}, Ptr{OTF2_AttributeList}, OTF2_TimeStamp, OTF2_CommRef, UInt64), writer, attributeList, time, threadContingent, sequenceCount)
end

function OTF2_EvtWriter_ThreadEnd(writer, attributeList, time, threadContingent, sequenceCount)
    ccall((:OTF2_EvtWriter_ThreadEnd, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtWriter}, Ptr{OTF2_AttributeList}, OTF2_TimeStamp, OTF2_CommRef, UInt64), writer, attributeList, time, threadContingent, sequenceCount)
end

function OTF2_EvtWriter_CallingContextEnter(writer, attributeList, time, callingContext, unwindDistance)
    ccall((:OTF2_EvtWriter_CallingContextEnter, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtWriter}, Ptr{OTF2_AttributeList}, OTF2_TimeStamp, OTF2_CallingContextRef, UInt32), writer, attributeList, time, callingContext, unwindDistance)
end

function OTF2_EvtWriter_CallingContextLeave(writer, attributeList, time, callingContext)
    ccall((:OTF2_EvtWriter_CallingContextLeave, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtWriter}, Ptr{OTF2_AttributeList}, OTF2_TimeStamp, OTF2_CallingContextRef), writer, attributeList, time, callingContext)
end

function OTF2_EvtWriter_CallingContextSample(writer, attributeList, time, callingContext, unwindDistance, interruptGenerator)
    ccall((:OTF2_EvtWriter_CallingContextSample, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtWriter}, Ptr{OTF2_AttributeList}, OTF2_TimeStamp, OTF2_CallingContextRef, UInt32, OTF2_InterruptGeneratorRef), writer, attributeList, time, callingContext, unwindDistance, interruptGenerator)
end

function OTF2_EvtWriter_IoCreateHandle(writer, attributeList, time, handle, mode, creationFlags, statusFlags)
    ccall((:OTF2_EvtWriter_IoCreateHandle, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtWriter}, Ptr{OTF2_AttributeList}, OTF2_TimeStamp, OTF2_IoHandleRef, OTF2_IoAccessMode, OTF2_IoCreationFlag, OTF2_IoStatusFlag), writer, attributeList, time, handle, mode, creationFlags, statusFlags)
end

function OTF2_EvtWriter_IoDestroyHandle(writer, attributeList, time, handle)
    ccall((:OTF2_EvtWriter_IoDestroyHandle, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtWriter}, Ptr{OTF2_AttributeList}, OTF2_TimeStamp, OTF2_IoHandleRef), writer, attributeList, time, handle)
end

function OTF2_EvtWriter_IoDuplicateHandle(writer, attributeList, time, oldHandle, newHandle, statusFlags)
    ccall((:OTF2_EvtWriter_IoDuplicateHandle, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtWriter}, Ptr{OTF2_AttributeList}, OTF2_TimeStamp, OTF2_IoHandleRef, OTF2_IoHandleRef, OTF2_IoStatusFlag), writer, attributeList, time, oldHandle, newHandle, statusFlags)
end

function OTF2_EvtWriter_IoSeek(writer, attributeList, time, handle, offsetRequest, whence, offsetResult)
    ccall((:OTF2_EvtWriter_IoSeek, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtWriter}, Ptr{OTF2_AttributeList}, OTF2_TimeStamp, OTF2_IoHandleRef, Int64, OTF2_IoSeekOption, UInt64), writer, attributeList, time, handle, offsetRequest, whence, offsetResult)
end

function OTF2_EvtWriter_IoChangeStatusFlags(writer, attributeList, time, handle, statusFlags)
    ccall((:OTF2_EvtWriter_IoChangeStatusFlags, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtWriter}, Ptr{OTF2_AttributeList}, OTF2_TimeStamp, OTF2_IoHandleRef, OTF2_IoStatusFlag), writer, attributeList, time, handle, statusFlags)
end

function OTF2_EvtWriter_IoDeleteFile(writer, attributeList, time, ioParadigm, file)
    ccall((:OTF2_EvtWriter_IoDeleteFile, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtWriter}, Ptr{OTF2_AttributeList}, OTF2_TimeStamp, OTF2_IoParadigmRef, OTF2_IoFileRef), writer, attributeList, time, ioParadigm, file)
end

function OTF2_EvtWriter_IoOperationBegin(writer, attributeList, time, handle, mode, operationFlags, bytesRequest, matchingId)
    ccall((:OTF2_EvtWriter_IoOperationBegin, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtWriter}, Ptr{OTF2_AttributeList}, OTF2_TimeStamp, OTF2_IoHandleRef, OTF2_IoOperationMode, OTF2_IoOperationFlag, UInt64, UInt64), writer, attributeList, time, handle, mode, operationFlags, bytesRequest, matchingId)
end

function OTF2_EvtWriter_IoOperationTest(writer, attributeList, time, handle, matchingId)
    ccall((:OTF2_EvtWriter_IoOperationTest, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtWriter}, Ptr{OTF2_AttributeList}, OTF2_TimeStamp, OTF2_IoHandleRef, UInt64), writer, attributeList, time, handle, matchingId)
end

function OTF2_EvtWriter_IoOperationIssued(writer, attributeList, time, handle, matchingId)
    ccall((:OTF2_EvtWriter_IoOperationIssued, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtWriter}, Ptr{OTF2_AttributeList}, OTF2_TimeStamp, OTF2_IoHandleRef, UInt64), writer, attributeList, time, handle, matchingId)
end

function OTF2_EvtWriter_IoOperationComplete(writer, attributeList, time, handle, bytesResult, matchingId)
    ccall((:OTF2_EvtWriter_IoOperationComplete, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtWriter}, Ptr{OTF2_AttributeList}, OTF2_TimeStamp, OTF2_IoHandleRef, UInt64, UInt64), writer, attributeList, time, handle, bytesResult, matchingId)
end

function OTF2_EvtWriter_IoOperationCancelled(writer, attributeList, time, handle, matchingId)
    ccall((:OTF2_EvtWriter_IoOperationCancelled, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtWriter}, Ptr{OTF2_AttributeList}, OTF2_TimeStamp, OTF2_IoHandleRef, UInt64), writer, attributeList, time, handle, matchingId)
end

function OTF2_EvtWriter_IoAcquireLock(writer, attributeList, time, handle, lockType)
    ccall((:OTF2_EvtWriter_IoAcquireLock, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtWriter}, Ptr{OTF2_AttributeList}, OTF2_TimeStamp, OTF2_IoHandleRef, OTF2_LockType), writer, attributeList, time, handle, lockType)
end

function OTF2_EvtWriter_IoReleaseLock(writer, attributeList, time, handle, lockType)
    ccall((:OTF2_EvtWriter_IoReleaseLock, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtWriter}, Ptr{OTF2_AttributeList}, OTF2_TimeStamp, OTF2_IoHandleRef, OTF2_LockType), writer, attributeList, time, handle, lockType)
end

function OTF2_EvtWriter_IoTryLock(writer, attributeList, time, handle, lockType)
    ccall((:OTF2_EvtWriter_IoTryLock, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtWriter}, Ptr{OTF2_AttributeList}, OTF2_TimeStamp, OTF2_IoHandleRef, OTF2_LockType), writer, attributeList, time, handle, lockType)
end

function OTF2_EvtWriter_ProgramBegin(writer, attributeList, time, programName, numberOfArguments, programArguments)
    ccall((:OTF2_EvtWriter_ProgramBegin, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtWriter}, Ptr{OTF2_AttributeList}, OTF2_TimeStamp, OTF2_StringRef, UInt32, Ptr{OTF2_StringRef}), writer, attributeList, time, programName, numberOfArguments, programArguments)
end

function OTF2_EvtWriter_ProgramEnd(writer, attributeList, time, exitStatus)
    ccall((:OTF2_EvtWriter_ProgramEnd, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtWriter}, Ptr{OTF2_AttributeList}, OTF2_TimeStamp, Int64), writer, attributeList, time, exitStatus)
end

function OTF2_EvtWriter_NonBlockingCollectiveRequest(writer, attributeList, time, requestID)
    ccall((:OTF2_EvtWriter_NonBlockingCollectiveRequest, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtWriter}, Ptr{OTF2_AttributeList}, OTF2_TimeStamp, UInt64), writer, attributeList, time, requestID)
end

function OTF2_EvtWriter_NonBlockingCollectiveComplete(writer, attributeList, time, collectiveOp, communicator, root, sizeSent, sizeReceived, requestID)
    ccall((:OTF2_EvtWriter_NonBlockingCollectiveComplete, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtWriter}, Ptr{OTF2_AttributeList}, OTF2_TimeStamp, OTF2_CollectiveOp, OTF2_CommRef, UInt32, UInt64, UInt64, UInt64), writer, attributeList, time, collectiveOp, communicator, root, sizeSent, sizeReceived, requestID)
end

function OTF2_EvtWriter_CommCreate(writer, attributeList, time, communicator)
    ccall((:OTF2_EvtWriter_CommCreate, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtWriter}, Ptr{OTF2_AttributeList}, OTF2_TimeStamp, OTF2_CommRef), writer, attributeList, time, communicator)
end

function OTF2_EvtWriter_CommDestroy(writer, attributeList, time, communicator)
    ccall((:OTF2_EvtWriter_CommDestroy, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtWriter}, Ptr{OTF2_AttributeList}, OTF2_TimeStamp, OTF2_CommRef), writer, attributeList, time, communicator)
end

function OTF2_EvtWriter_StoreRewindPoint(writer, rewindId)
    ccall((:OTF2_EvtWriter_StoreRewindPoint, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtWriter}, UInt32), writer, rewindId)
end

function OTF2_EvtWriter_Rewind(writer, rewindId)
    ccall((:OTF2_EvtWriter_Rewind, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtWriter}, UInt32), writer, rewindId)
end

function OTF2_EvtWriter_ClearRewindPoint(writer, rewindId)
    ccall((:OTF2_EvtWriter_ClearRewindPoint, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtWriter}, UInt32), writer, rewindId)
end

mutable struct OTF2_EvtReaderCallbacks_struct end

const OTF2_EvtReaderCallbacks = OTF2_EvtReaderCallbacks_struct

function OTF2_EvtReaderCallbacks_New()
    ccall((:OTF2_EvtReaderCallbacks_New, libotf2), Ptr{OTF2_EvtReaderCallbacks}, ())
end

function OTF2_EvtReaderCallbacks_Delete(evtReaderCallbacks)
    ccall((:OTF2_EvtReaderCallbacks_Delete, libotf2), Cvoid, (Ptr{OTF2_EvtReaderCallbacks},), evtReaderCallbacks)
end

function OTF2_EvtReaderCallbacks_Clear(evtReaderCallbacks)
    ccall((:OTF2_EvtReaderCallbacks_Clear, libotf2), Cvoid, (Ptr{OTF2_EvtReaderCallbacks},), evtReaderCallbacks)
end

# typedef OTF2_CallbackCode ( * OTF2_EvtReaderCallback_Unknown ) ( OTF2_LocationRef location , OTF2_TimeStamp time , uint64_t eventPosition , void * userData , OTF2_AttributeList * attributeList )
const OTF2_EvtReaderCallback_Unknown = Ptr{Cvoid}

function OTF2_EvtReaderCallbacks_SetUnknownCallback(evtReaderCallbacks, unknownCallback)
    ccall((:OTF2_EvtReaderCallbacks_SetUnknownCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtReaderCallbacks}, OTF2_EvtReaderCallback_Unknown), evtReaderCallbacks, unknownCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_EvtReaderCallback_BufferFlush ) ( OTF2_LocationRef location , OTF2_TimeStamp time , uint64_t eventPosition , void * userData , OTF2_AttributeList * attributeList , OTF2_TimeStamp stopTime )
const OTF2_EvtReaderCallback_BufferFlush = Ptr{Cvoid}

function OTF2_EvtReaderCallbacks_SetBufferFlushCallback(evtReaderCallbacks, bufferFlushCallback)
    ccall((:OTF2_EvtReaderCallbacks_SetBufferFlushCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtReaderCallbacks}, OTF2_EvtReaderCallback_BufferFlush), evtReaderCallbacks, bufferFlushCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_EvtReaderCallback_MeasurementOnOff ) ( OTF2_LocationRef location , OTF2_TimeStamp time , uint64_t eventPosition , void * userData , OTF2_AttributeList * attributeList , OTF2_MeasurementMode measurementMode )
const OTF2_EvtReaderCallback_MeasurementOnOff = Ptr{Cvoid}

function OTF2_EvtReaderCallbacks_SetMeasurementOnOffCallback(evtReaderCallbacks, measurementOnOffCallback)
    ccall((:OTF2_EvtReaderCallbacks_SetMeasurementOnOffCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtReaderCallbacks}, OTF2_EvtReaderCallback_MeasurementOnOff), evtReaderCallbacks, measurementOnOffCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_EvtReaderCallback_Enter ) ( OTF2_LocationRef location , OTF2_TimeStamp time , uint64_t eventPosition , void * userData , OTF2_AttributeList * attributeList , OTF2_RegionRef region )
const OTF2_EvtReaderCallback_Enter = Ptr{Cvoid}

function OTF2_EvtReaderCallbacks_SetEnterCallback(evtReaderCallbacks, enterCallback)
    ccall((:OTF2_EvtReaderCallbacks_SetEnterCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtReaderCallbacks}, OTF2_EvtReaderCallback_Enter), evtReaderCallbacks, enterCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_EvtReaderCallback_Leave ) ( OTF2_LocationRef location , OTF2_TimeStamp time , uint64_t eventPosition , void * userData , OTF2_AttributeList * attributeList , OTF2_RegionRef region )
const OTF2_EvtReaderCallback_Leave = Ptr{Cvoid}

function OTF2_EvtReaderCallbacks_SetLeaveCallback(evtReaderCallbacks, leaveCallback)
    ccall((:OTF2_EvtReaderCallbacks_SetLeaveCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtReaderCallbacks}, OTF2_EvtReaderCallback_Leave), evtReaderCallbacks, leaveCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_EvtReaderCallback_MpiSend ) ( OTF2_LocationRef location , OTF2_TimeStamp time , uint64_t eventPosition , void * userData , OTF2_AttributeList * attributeList , uint32_t receiver , OTF2_CommRef communicator , uint32_t msgTag , uint64_t msgLength )
const OTF2_EvtReaderCallback_MpiSend = Ptr{Cvoid}

function OTF2_EvtReaderCallbacks_SetMpiSendCallback(evtReaderCallbacks, mpiSendCallback)
    ccall((:OTF2_EvtReaderCallbacks_SetMpiSendCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtReaderCallbacks}, OTF2_EvtReaderCallback_MpiSend), evtReaderCallbacks, mpiSendCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_EvtReaderCallback_MpiIsend ) ( OTF2_LocationRef location , OTF2_TimeStamp time , uint64_t eventPosition , void * userData , OTF2_AttributeList * attributeList , uint32_t receiver , OTF2_CommRef communicator , uint32_t msgTag , uint64_t msgLength , uint64_t requestID )
const OTF2_EvtReaderCallback_MpiIsend = Ptr{Cvoid}

function OTF2_EvtReaderCallbacks_SetMpiIsendCallback(evtReaderCallbacks, mpiIsendCallback)
    ccall((:OTF2_EvtReaderCallbacks_SetMpiIsendCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtReaderCallbacks}, OTF2_EvtReaderCallback_MpiIsend), evtReaderCallbacks, mpiIsendCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_EvtReaderCallback_MpiIsendComplete ) ( OTF2_LocationRef location , OTF2_TimeStamp time , uint64_t eventPosition , void * userData , OTF2_AttributeList * attributeList , uint64_t requestID )
const OTF2_EvtReaderCallback_MpiIsendComplete = Ptr{Cvoid}

function OTF2_EvtReaderCallbacks_SetMpiIsendCompleteCallback(evtReaderCallbacks, mpiIsendCompleteCallback)
    ccall((:OTF2_EvtReaderCallbacks_SetMpiIsendCompleteCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtReaderCallbacks}, OTF2_EvtReaderCallback_MpiIsendComplete), evtReaderCallbacks, mpiIsendCompleteCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_EvtReaderCallback_MpiIrecvRequest ) ( OTF2_LocationRef location , OTF2_TimeStamp time , uint64_t eventPosition , void * userData , OTF2_AttributeList * attributeList , uint64_t requestID )
const OTF2_EvtReaderCallback_MpiIrecvRequest = Ptr{Cvoid}

function OTF2_EvtReaderCallbacks_SetMpiIrecvRequestCallback(evtReaderCallbacks, mpiIrecvRequestCallback)
    ccall((:OTF2_EvtReaderCallbacks_SetMpiIrecvRequestCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtReaderCallbacks}, OTF2_EvtReaderCallback_MpiIrecvRequest), evtReaderCallbacks, mpiIrecvRequestCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_EvtReaderCallback_MpiRecv ) ( OTF2_LocationRef location , OTF2_TimeStamp time , uint64_t eventPosition , void * userData , OTF2_AttributeList * attributeList , uint32_t sender , OTF2_CommRef communicator , uint32_t msgTag , uint64_t msgLength )
const OTF2_EvtReaderCallback_MpiRecv = Ptr{Cvoid}

function OTF2_EvtReaderCallbacks_SetMpiRecvCallback(evtReaderCallbacks, mpiRecvCallback)
    ccall((:OTF2_EvtReaderCallbacks_SetMpiRecvCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtReaderCallbacks}, OTF2_EvtReaderCallback_MpiRecv), evtReaderCallbacks, mpiRecvCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_EvtReaderCallback_MpiIrecv ) ( OTF2_LocationRef location , OTF2_TimeStamp time , uint64_t eventPosition , void * userData , OTF2_AttributeList * attributeList , uint32_t sender , OTF2_CommRef communicator , uint32_t msgTag , uint64_t msgLength , uint64_t requestID )
const OTF2_EvtReaderCallback_MpiIrecv = Ptr{Cvoid}

function OTF2_EvtReaderCallbacks_SetMpiIrecvCallback(evtReaderCallbacks, mpiIrecvCallback)
    ccall((:OTF2_EvtReaderCallbacks_SetMpiIrecvCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtReaderCallbacks}, OTF2_EvtReaderCallback_MpiIrecv), evtReaderCallbacks, mpiIrecvCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_EvtReaderCallback_MpiRequestTest ) ( OTF2_LocationRef location , OTF2_TimeStamp time , uint64_t eventPosition , void * userData , OTF2_AttributeList * attributeList , uint64_t requestID )
const OTF2_EvtReaderCallback_MpiRequestTest = Ptr{Cvoid}

function OTF2_EvtReaderCallbacks_SetMpiRequestTestCallback(evtReaderCallbacks, mpiRequestTestCallback)
    ccall((:OTF2_EvtReaderCallbacks_SetMpiRequestTestCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtReaderCallbacks}, OTF2_EvtReaderCallback_MpiRequestTest), evtReaderCallbacks, mpiRequestTestCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_EvtReaderCallback_MpiRequestCancelled ) ( OTF2_LocationRef location , OTF2_TimeStamp time , uint64_t eventPosition , void * userData , OTF2_AttributeList * attributeList , uint64_t requestID )
const OTF2_EvtReaderCallback_MpiRequestCancelled = Ptr{Cvoid}

function OTF2_EvtReaderCallbacks_SetMpiRequestCancelledCallback(evtReaderCallbacks, mpiRequestCancelledCallback)
    ccall((:OTF2_EvtReaderCallbacks_SetMpiRequestCancelledCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtReaderCallbacks}, OTF2_EvtReaderCallback_MpiRequestCancelled), evtReaderCallbacks, mpiRequestCancelledCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_EvtReaderCallback_MpiCollectiveBegin ) ( OTF2_LocationRef location , OTF2_TimeStamp time , uint64_t eventPosition , void * userData , OTF2_AttributeList * attributeList )
const OTF2_EvtReaderCallback_MpiCollectiveBegin = Ptr{Cvoid}

function OTF2_EvtReaderCallbacks_SetMpiCollectiveBeginCallback(evtReaderCallbacks, mpiCollectiveBeginCallback)
    ccall((:OTF2_EvtReaderCallbacks_SetMpiCollectiveBeginCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtReaderCallbacks}, OTF2_EvtReaderCallback_MpiCollectiveBegin), evtReaderCallbacks, mpiCollectiveBeginCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_EvtReaderCallback_MpiCollectiveEnd ) ( OTF2_LocationRef location , OTF2_TimeStamp time , uint64_t eventPosition , void * userData , OTF2_AttributeList * attributeList , OTF2_CollectiveOp collectiveOp , OTF2_CommRef communicator , uint32_t root , uint64_t sizeSent , uint64_t sizeReceived )
const OTF2_EvtReaderCallback_MpiCollectiveEnd = Ptr{Cvoid}

function OTF2_EvtReaderCallbacks_SetMpiCollectiveEndCallback(evtReaderCallbacks, mpiCollectiveEndCallback)
    ccall((:OTF2_EvtReaderCallbacks_SetMpiCollectiveEndCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtReaderCallbacks}, OTF2_EvtReaderCallback_MpiCollectiveEnd), evtReaderCallbacks, mpiCollectiveEndCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_EvtReaderCallback_OmpFork ) ( OTF2_LocationRef location , OTF2_TimeStamp time , uint64_t eventPosition , void * userData , OTF2_AttributeList * attributeList , uint32_t numberOfRequestedThreads )
const OTF2_EvtReaderCallback_OmpFork = Ptr{Cvoid}

function OTF2_EvtReaderCallbacks_SetOmpForkCallback(evtReaderCallbacks, ompForkCallback)
    ccall((:OTF2_EvtReaderCallbacks_SetOmpForkCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtReaderCallbacks}, OTF2_EvtReaderCallback_OmpFork), evtReaderCallbacks, ompForkCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_EvtReaderCallback_OmpJoin ) ( OTF2_LocationRef location , OTF2_TimeStamp time , uint64_t eventPosition , void * userData , OTF2_AttributeList * attributeList )
const OTF2_EvtReaderCallback_OmpJoin = Ptr{Cvoid}

function OTF2_EvtReaderCallbacks_SetOmpJoinCallback(evtReaderCallbacks, ompJoinCallback)
    ccall((:OTF2_EvtReaderCallbacks_SetOmpJoinCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtReaderCallbacks}, OTF2_EvtReaderCallback_OmpJoin), evtReaderCallbacks, ompJoinCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_EvtReaderCallback_OmpAcquireLock ) ( OTF2_LocationRef location , OTF2_TimeStamp time , uint64_t eventPosition , void * userData , OTF2_AttributeList * attributeList , uint32_t lockID , uint32_t acquisitionOrder )
const OTF2_EvtReaderCallback_OmpAcquireLock = Ptr{Cvoid}

function OTF2_EvtReaderCallbacks_SetOmpAcquireLockCallback(evtReaderCallbacks, ompAcquireLockCallback)
    ccall((:OTF2_EvtReaderCallbacks_SetOmpAcquireLockCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtReaderCallbacks}, OTF2_EvtReaderCallback_OmpAcquireLock), evtReaderCallbacks, ompAcquireLockCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_EvtReaderCallback_OmpReleaseLock ) ( OTF2_LocationRef location , OTF2_TimeStamp time , uint64_t eventPosition , void * userData , OTF2_AttributeList * attributeList , uint32_t lockID , uint32_t acquisitionOrder )
const OTF2_EvtReaderCallback_OmpReleaseLock = Ptr{Cvoid}

function OTF2_EvtReaderCallbacks_SetOmpReleaseLockCallback(evtReaderCallbacks, ompReleaseLockCallback)
    ccall((:OTF2_EvtReaderCallbacks_SetOmpReleaseLockCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtReaderCallbacks}, OTF2_EvtReaderCallback_OmpReleaseLock), evtReaderCallbacks, ompReleaseLockCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_EvtReaderCallback_OmpTaskCreate ) ( OTF2_LocationRef location , OTF2_TimeStamp time , uint64_t eventPosition , void * userData , OTF2_AttributeList * attributeList , uint64_t taskID )
const OTF2_EvtReaderCallback_OmpTaskCreate = Ptr{Cvoid}

function OTF2_EvtReaderCallbacks_SetOmpTaskCreateCallback(evtReaderCallbacks, ompTaskCreateCallback)
    ccall((:OTF2_EvtReaderCallbacks_SetOmpTaskCreateCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtReaderCallbacks}, OTF2_EvtReaderCallback_OmpTaskCreate), evtReaderCallbacks, ompTaskCreateCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_EvtReaderCallback_OmpTaskSwitch ) ( OTF2_LocationRef location , OTF2_TimeStamp time , uint64_t eventPosition , void * userData , OTF2_AttributeList * attributeList , uint64_t taskID )
const OTF2_EvtReaderCallback_OmpTaskSwitch = Ptr{Cvoid}

function OTF2_EvtReaderCallbacks_SetOmpTaskSwitchCallback(evtReaderCallbacks, ompTaskSwitchCallback)
    ccall((:OTF2_EvtReaderCallbacks_SetOmpTaskSwitchCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtReaderCallbacks}, OTF2_EvtReaderCallback_OmpTaskSwitch), evtReaderCallbacks, ompTaskSwitchCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_EvtReaderCallback_OmpTaskComplete ) ( OTF2_LocationRef location , OTF2_TimeStamp time , uint64_t eventPosition , void * userData , OTF2_AttributeList * attributeList , uint64_t taskID )
const OTF2_EvtReaderCallback_OmpTaskComplete = Ptr{Cvoid}

function OTF2_EvtReaderCallbacks_SetOmpTaskCompleteCallback(evtReaderCallbacks, ompTaskCompleteCallback)
    ccall((:OTF2_EvtReaderCallbacks_SetOmpTaskCompleteCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtReaderCallbacks}, OTF2_EvtReaderCallback_OmpTaskComplete), evtReaderCallbacks, ompTaskCompleteCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_EvtReaderCallback_Metric ) ( OTF2_LocationRef location , OTF2_TimeStamp time , uint64_t eventPosition , void * userData , OTF2_AttributeList * attributeList , OTF2_MetricRef metric , uint8_t numberOfMetrics , const OTF2_Type * typeIDs , const OTF2_MetricValue * metricValues )
const OTF2_EvtReaderCallback_Metric = Ptr{Cvoid}

function OTF2_EvtReaderCallbacks_SetMetricCallback(evtReaderCallbacks, metricCallback)
    ccall((:OTF2_EvtReaderCallbacks_SetMetricCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtReaderCallbacks}, OTF2_EvtReaderCallback_Metric), evtReaderCallbacks, metricCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_EvtReaderCallback_ParameterString ) ( OTF2_LocationRef location , OTF2_TimeStamp time , uint64_t eventPosition , void * userData , OTF2_AttributeList * attributeList , OTF2_ParameterRef parameter , OTF2_StringRef string )
const OTF2_EvtReaderCallback_ParameterString = Ptr{Cvoid}

function OTF2_EvtReaderCallbacks_SetParameterStringCallback(evtReaderCallbacks, parameterStringCallback)
    ccall((:OTF2_EvtReaderCallbacks_SetParameterStringCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtReaderCallbacks}, OTF2_EvtReaderCallback_ParameterString), evtReaderCallbacks, parameterStringCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_EvtReaderCallback_ParameterInt ) ( OTF2_LocationRef location , OTF2_TimeStamp time , uint64_t eventPosition , void * userData , OTF2_AttributeList * attributeList , OTF2_ParameterRef parameter , int64_t value )
const OTF2_EvtReaderCallback_ParameterInt = Ptr{Cvoid}

function OTF2_EvtReaderCallbacks_SetParameterIntCallback(evtReaderCallbacks, parameterIntCallback)
    ccall((:OTF2_EvtReaderCallbacks_SetParameterIntCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtReaderCallbacks}, OTF2_EvtReaderCallback_ParameterInt), evtReaderCallbacks, parameterIntCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_EvtReaderCallback_ParameterUnsignedInt ) ( OTF2_LocationRef location , OTF2_TimeStamp time , uint64_t eventPosition , void * userData , OTF2_AttributeList * attributeList , OTF2_ParameterRef parameter , uint64_t value )
const OTF2_EvtReaderCallback_ParameterUnsignedInt = Ptr{Cvoid}

function OTF2_EvtReaderCallbacks_SetParameterUnsignedIntCallback(evtReaderCallbacks, parameterUnsignedIntCallback)
    ccall((:OTF2_EvtReaderCallbacks_SetParameterUnsignedIntCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtReaderCallbacks}, OTF2_EvtReaderCallback_ParameterUnsignedInt), evtReaderCallbacks, parameterUnsignedIntCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_EvtReaderCallback_RmaWinCreate ) ( OTF2_LocationRef location , OTF2_TimeStamp time , uint64_t eventPosition , void * userData , OTF2_AttributeList * attributeList , OTF2_RmaWinRef win )
const OTF2_EvtReaderCallback_RmaWinCreate = Ptr{Cvoid}

function OTF2_EvtReaderCallbacks_SetRmaWinCreateCallback(evtReaderCallbacks, rmaWinCreateCallback)
    ccall((:OTF2_EvtReaderCallbacks_SetRmaWinCreateCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtReaderCallbacks}, OTF2_EvtReaderCallback_RmaWinCreate), evtReaderCallbacks, rmaWinCreateCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_EvtReaderCallback_RmaWinDestroy ) ( OTF2_LocationRef location , OTF2_TimeStamp time , uint64_t eventPosition , void * userData , OTF2_AttributeList * attributeList , OTF2_RmaWinRef win )
const OTF2_EvtReaderCallback_RmaWinDestroy = Ptr{Cvoid}

function OTF2_EvtReaderCallbacks_SetRmaWinDestroyCallback(evtReaderCallbacks, rmaWinDestroyCallback)
    ccall((:OTF2_EvtReaderCallbacks_SetRmaWinDestroyCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtReaderCallbacks}, OTF2_EvtReaderCallback_RmaWinDestroy), evtReaderCallbacks, rmaWinDestroyCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_EvtReaderCallback_RmaCollectiveBegin ) ( OTF2_LocationRef location , OTF2_TimeStamp time , uint64_t eventPosition , void * userData , OTF2_AttributeList * attributeList )
const OTF2_EvtReaderCallback_RmaCollectiveBegin = Ptr{Cvoid}

function OTF2_EvtReaderCallbacks_SetRmaCollectiveBeginCallback(evtReaderCallbacks, rmaCollectiveBeginCallback)
    ccall((:OTF2_EvtReaderCallbacks_SetRmaCollectiveBeginCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtReaderCallbacks}, OTF2_EvtReaderCallback_RmaCollectiveBegin), evtReaderCallbacks, rmaCollectiveBeginCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_EvtReaderCallback_RmaCollectiveEnd ) ( OTF2_LocationRef location , OTF2_TimeStamp time , uint64_t eventPosition , void * userData , OTF2_AttributeList * attributeList , OTF2_CollectiveOp collectiveOp , OTF2_RmaSyncLevel syncLevel , OTF2_RmaWinRef win , uint32_t root , uint64_t bytesSent , uint64_t bytesReceived )
const OTF2_EvtReaderCallback_RmaCollectiveEnd = Ptr{Cvoid}

function OTF2_EvtReaderCallbacks_SetRmaCollectiveEndCallback(evtReaderCallbacks, rmaCollectiveEndCallback)
    ccall((:OTF2_EvtReaderCallbacks_SetRmaCollectiveEndCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtReaderCallbacks}, OTF2_EvtReaderCallback_RmaCollectiveEnd), evtReaderCallbacks, rmaCollectiveEndCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_EvtReaderCallback_RmaGroupSync ) ( OTF2_LocationRef location , OTF2_TimeStamp time , uint64_t eventPosition , void * userData , OTF2_AttributeList * attributeList , OTF2_RmaSyncLevel syncLevel , OTF2_RmaWinRef win , OTF2_GroupRef group )
const OTF2_EvtReaderCallback_RmaGroupSync = Ptr{Cvoid}

function OTF2_EvtReaderCallbacks_SetRmaGroupSyncCallback(evtReaderCallbacks, rmaGroupSyncCallback)
    ccall((:OTF2_EvtReaderCallbacks_SetRmaGroupSyncCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtReaderCallbacks}, OTF2_EvtReaderCallback_RmaGroupSync), evtReaderCallbacks, rmaGroupSyncCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_EvtReaderCallback_RmaRequestLock ) ( OTF2_LocationRef location , OTF2_TimeStamp time , uint64_t eventPosition , void * userData , OTF2_AttributeList * attributeList , OTF2_RmaWinRef win , uint32_t remote , uint64_t lockId , OTF2_LockType lockType )
const OTF2_EvtReaderCallback_RmaRequestLock = Ptr{Cvoid}

function OTF2_EvtReaderCallbacks_SetRmaRequestLockCallback(evtReaderCallbacks, rmaRequestLockCallback)
    ccall((:OTF2_EvtReaderCallbacks_SetRmaRequestLockCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtReaderCallbacks}, OTF2_EvtReaderCallback_RmaRequestLock), evtReaderCallbacks, rmaRequestLockCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_EvtReaderCallback_RmaAcquireLock ) ( OTF2_LocationRef location , OTF2_TimeStamp time , uint64_t eventPosition , void * userData , OTF2_AttributeList * attributeList , OTF2_RmaWinRef win , uint32_t remote , uint64_t lockId , OTF2_LockType lockType )
const OTF2_EvtReaderCallback_RmaAcquireLock = Ptr{Cvoid}

function OTF2_EvtReaderCallbacks_SetRmaAcquireLockCallback(evtReaderCallbacks, rmaAcquireLockCallback)
    ccall((:OTF2_EvtReaderCallbacks_SetRmaAcquireLockCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtReaderCallbacks}, OTF2_EvtReaderCallback_RmaAcquireLock), evtReaderCallbacks, rmaAcquireLockCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_EvtReaderCallback_RmaTryLock ) ( OTF2_LocationRef location , OTF2_TimeStamp time , uint64_t eventPosition , void * userData , OTF2_AttributeList * attributeList , OTF2_RmaWinRef win , uint32_t remote , uint64_t lockId , OTF2_LockType lockType )
const OTF2_EvtReaderCallback_RmaTryLock = Ptr{Cvoid}

function OTF2_EvtReaderCallbacks_SetRmaTryLockCallback(evtReaderCallbacks, rmaTryLockCallback)
    ccall((:OTF2_EvtReaderCallbacks_SetRmaTryLockCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtReaderCallbacks}, OTF2_EvtReaderCallback_RmaTryLock), evtReaderCallbacks, rmaTryLockCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_EvtReaderCallback_RmaReleaseLock ) ( OTF2_LocationRef location , OTF2_TimeStamp time , uint64_t eventPosition , void * userData , OTF2_AttributeList * attributeList , OTF2_RmaWinRef win , uint32_t remote , uint64_t lockId )
const OTF2_EvtReaderCallback_RmaReleaseLock = Ptr{Cvoid}

function OTF2_EvtReaderCallbacks_SetRmaReleaseLockCallback(evtReaderCallbacks, rmaReleaseLockCallback)
    ccall((:OTF2_EvtReaderCallbacks_SetRmaReleaseLockCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtReaderCallbacks}, OTF2_EvtReaderCallback_RmaReleaseLock), evtReaderCallbacks, rmaReleaseLockCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_EvtReaderCallback_RmaSync ) ( OTF2_LocationRef location , OTF2_TimeStamp time , uint64_t eventPosition , void * userData , OTF2_AttributeList * attributeList , OTF2_RmaWinRef win , uint32_t remote , OTF2_RmaSyncType syncType )
const OTF2_EvtReaderCallback_RmaSync = Ptr{Cvoid}

function OTF2_EvtReaderCallbacks_SetRmaSyncCallback(evtReaderCallbacks, rmaSyncCallback)
    ccall((:OTF2_EvtReaderCallbacks_SetRmaSyncCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtReaderCallbacks}, OTF2_EvtReaderCallback_RmaSync), evtReaderCallbacks, rmaSyncCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_EvtReaderCallback_RmaWaitChange ) ( OTF2_LocationRef location , OTF2_TimeStamp time , uint64_t eventPosition , void * userData , OTF2_AttributeList * attributeList , OTF2_RmaWinRef win )
const OTF2_EvtReaderCallback_RmaWaitChange = Ptr{Cvoid}

function OTF2_EvtReaderCallbacks_SetRmaWaitChangeCallback(evtReaderCallbacks, rmaWaitChangeCallback)
    ccall((:OTF2_EvtReaderCallbacks_SetRmaWaitChangeCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtReaderCallbacks}, OTF2_EvtReaderCallback_RmaWaitChange), evtReaderCallbacks, rmaWaitChangeCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_EvtReaderCallback_RmaPut ) ( OTF2_LocationRef location , OTF2_TimeStamp time , uint64_t eventPosition , void * userData , OTF2_AttributeList * attributeList , OTF2_RmaWinRef win , uint32_t remote , uint64_t bytes , uint64_t matchingId )
const OTF2_EvtReaderCallback_RmaPut = Ptr{Cvoid}

function OTF2_EvtReaderCallbacks_SetRmaPutCallback(evtReaderCallbacks, rmaPutCallback)
    ccall((:OTF2_EvtReaderCallbacks_SetRmaPutCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtReaderCallbacks}, OTF2_EvtReaderCallback_RmaPut), evtReaderCallbacks, rmaPutCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_EvtReaderCallback_RmaGet ) ( OTF2_LocationRef location , OTF2_TimeStamp time , uint64_t eventPosition , void * userData , OTF2_AttributeList * attributeList , OTF2_RmaWinRef win , uint32_t remote , uint64_t bytes , uint64_t matchingId )
const OTF2_EvtReaderCallback_RmaGet = Ptr{Cvoid}

function OTF2_EvtReaderCallbacks_SetRmaGetCallback(evtReaderCallbacks, rmaGetCallback)
    ccall((:OTF2_EvtReaderCallbacks_SetRmaGetCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtReaderCallbacks}, OTF2_EvtReaderCallback_RmaGet), evtReaderCallbacks, rmaGetCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_EvtReaderCallback_RmaAtomic ) ( OTF2_LocationRef location , OTF2_TimeStamp time , uint64_t eventPosition , void * userData , OTF2_AttributeList * attributeList , OTF2_RmaWinRef win , uint32_t remote , OTF2_RmaAtomicType type , uint64_t bytesSent , uint64_t bytesReceived , uint64_t matchingId )
const OTF2_EvtReaderCallback_RmaAtomic = Ptr{Cvoid}

function OTF2_EvtReaderCallbacks_SetRmaAtomicCallback(evtReaderCallbacks, rmaAtomicCallback)
    ccall((:OTF2_EvtReaderCallbacks_SetRmaAtomicCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtReaderCallbacks}, OTF2_EvtReaderCallback_RmaAtomic), evtReaderCallbacks, rmaAtomicCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_EvtReaderCallback_RmaOpCompleteBlocking ) ( OTF2_LocationRef location , OTF2_TimeStamp time , uint64_t eventPosition , void * userData , OTF2_AttributeList * attributeList , OTF2_RmaWinRef win , uint64_t matchingId )
const OTF2_EvtReaderCallback_RmaOpCompleteBlocking = Ptr{Cvoid}

function OTF2_EvtReaderCallbacks_SetRmaOpCompleteBlockingCallback(evtReaderCallbacks, rmaOpCompleteBlockingCallback)
    ccall((:OTF2_EvtReaderCallbacks_SetRmaOpCompleteBlockingCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtReaderCallbacks}, OTF2_EvtReaderCallback_RmaOpCompleteBlocking), evtReaderCallbacks, rmaOpCompleteBlockingCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_EvtReaderCallback_RmaOpCompleteNonBlocking ) ( OTF2_LocationRef location , OTF2_TimeStamp time , uint64_t eventPosition , void * userData , OTF2_AttributeList * attributeList , OTF2_RmaWinRef win , uint64_t matchingId )
const OTF2_EvtReaderCallback_RmaOpCompleteNonBlocking = Ptr{Cvoid}

function OTF2_EvtReaderCallbacks_SetRmaOpCompleteNonBlockingCallback(evtReaderCallbacks, rmaOpCompleteNonBlockingCallback)
    ccall((:OTF2_EvtReaderCallbacks_SetRmaOpCompleteNonBlockingCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtReaderCallbacks}, OTF2_EvtReaderCallback_RmaOpCompleteNonBlocking), evtReaderCallbacks, rmaOpCompleteNonBlockingCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_EvtReaderCallback_RmaOpTest ) ( OTF2_LocationRef location , OTF2_TimeStamp time , uint64_t eventPosition , void * userData , OTF2_AttributeList * attributeList , OTF2_RmaWinRef win , uint64_t matchingId )
const OTF2_EvtReaderCallback_RmaOpTest = Ptr{Cvoid}

function OTF2_EvtReaderCallbacks_SetRmaOpTestCallback(evtReaderCallbacks, rmaOpTestCallback)
    ccall((:OTF2_EvtReaderCallbacks_SetRmaOpTestCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtReaderCallbacks}, OTF2_EvtReaderCallback_RmaOpTest), evtReaderCallbacks, rmaOpTestCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_EvtReaderCallback_RmaOpCompleteRemote ) ( OTF2_LocationRef location , OTF2_TimeStamp time , uint64_t eventPosition , void * userData , OTF2_AttributeList * attributeList , OTF2_RmaWinRef win , uint64_t matchingId )
const OTF2_EvtReaderCallback_RmaOpCompleteRemote = Ptr{Cvoid}

function OTF2_EvtReaderCallbacks_SetRmaOpCompleteRemoteCallback(evtReaderCallbacks, rmaOpCompleteRemoteCallback)
    ccall((:OTF2_EvtReaderCallbacks_SetRmaOpCompleteRemoteCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtReaderCallbacks}, OTF2_EvtReaderCallback_RmaOpCompleteRemote), evtReaderCallbacks, rmaOpCompleteRemoteCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_EvtReaderCallback_ThreadFork ) ( OTF2_LocationRef location , OTF2_TimeStamp time , uint64_t eventPosition , void * userData , OTF2_AttributeList * attributeList , OTF2_Paradigm model , uint32_t numberOfRequestedThreads )
const OTF2_EvtReaderCallback_ThreadFork = Ptr{Cvoid}

function OTF2_EvtReaderCallbacks_SetThreadForkCallback(evtReaderCallbacks, threadForkCallback)
    ccall((:OTF2_EvtReaderCallbacks_SetThreadForkCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtReaderCallbacks}, OTF2_EvtReaderCallback_ThreadFork), evtReaderCallbacks, threadForkCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_EvtReaderCallback_ThreadJoin ) ( OTF2_LocationRef location , OTF2_TimeStamp time , uint64_t eventPosition , void * userData , OTF2_AttributeList * attributeList , OTF2_Paradigm model )
const OTF2_EvtReaderCallback_ThreadJoin = Ptr{Cvoid}

function OTF2_EvtReaderCallbacks_SetThreadJoinCallback(evtReaderCallbacks, threadJoinCallback)
    ccall((:OTF2_EvtReaderCallbacks_SetThreadJoinCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtReaderCallbacks}, OTF2_EvtReaderCallback_ThreadJoin), evtReaderCallbacks, threadJoinCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_EvtReaderCallback_ThreadTeamBegin ) ( OTF2_LocationRef location , OTF2_TimeStamp time , uint64_t eventPosition , void * userData , OTF2_AttributeList * attributeList , OTF2_CommRef threadTeam )
const OTF2_EvtReaderCallback_ThreadTeamBegin = Ptr{Cvoid}

function OTF2_EvtReaderCallbacks_SetThreadTeamBeginCallback(evtReaderCallbacks, threadTeamBeginCallback)
    ccall((:OTF2_EvtReaderCallbacks_SetThreadTeamBeginCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtReaderCallbacks}, OTF2_EvtReaderCallback_ThreadTeamBegin), evtReaderCallbacks, threadTeamBeginCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_EvtReaderCallback_ThreadTeamEnd ) ( OTF2_LocationRef location , OTF2_TimeStamp time , uint64_t eventPosition , void * userData , OTF2_AttributeList * attributeList , OTF2_CommRef threadTeam )
const OTF2_EvtReaderCallback_ThreadTeamEnd = Ptr{Cvoid}

function OTF2_EvtReaderCallbacks_SetThreadTeamEndCallback(evtReaderCallbacks, threadTeamEndCallback)
    ccall((:OTF2_EvtReaderCallbacks_SetThreadTeamEndCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtReaderCallbacks}, OTF2_EvtReaderCallback_ThreadTeamEnd), evtReaderCallbacks, threadTeamEndCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_EvtReaderCallback_ThreadAcquireLock ) ( OTF2_LocationRef location , OTF2_TimeStamp time , uint64_t eventPosition , void * userData , OTF2_AttributeList * attributeList , OTF2_Paradigm model , uint32_t lockID , uint32_t acquisitionOrder )
const OTF2_EvtReaderCallback_ThreadAcquireLock = Ptr{Cvoid}

function OTF2_EvtReaderCallbacks_SetThreadAcquireLockCallback(evtReaderCallbacks, threadAcquireLockCallback)
    ccall((:OTF2_EvtReaderCallbacks_SetThreadAcquireLockCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtReaderCallbacks}, OTF2_EvtReaderCallback_ThreadAcquireLock), evtReaderCallbacks, threadAcquireLockCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_EvtReaderCallback_ThreadReleaseLock ) ( OTF2_LocationRef location , OTF2_TimeStamp time , uint64_t eventPosition , void * userData , OTF2_AttributeList * attributeList , OTF2_Paradigm model , uint32_t lockID , uint32_t acquisitionOrder )
const OTF2_EvtReaderCallback_ThreadReleaseLock = Ptr{Cvoid}

function OTF2_EvtReaderCallbacks_SetThreadReleaseLockCallback(evtReaderCallbacks, threadReleaseLockCallback)
    ccall((:OTF2_EvtReaderCallbacks_SetThreadReleaseLockCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtReaderCallbacks}, OTF2_EvtReaderCallback_ThreadReleaseLock), evtReaderCallbacks, threadReleaseLockCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_EvtReaderCallback_ThreadTaskCreate ) ( OTF2_LocationRef location , OTF2_TimeStamp time , uint64_t eventPosition , void * userData , OTF2_AttributeList * attributeList , OTF2_CommRef threadTeam , uint32_t creatingThread , uint32_t generationNumber )
const OTF2_EvtReaderCallback_ThreadTaskCreate = Ptr{Cvoid}

function OTF2_EvtReaderCallbacks_SetThreadTaskCreateCallback(evtReaderCallbacks, threadTaskCreateCallback)
    ccall((:OTF2_EvtReaderCallbacks_SetThreadTaskCreateCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtReaderCallbacks}, OTF2_EvtReaderCallback_ThreadTaskCreate), evtReaderCallbacks, threadTaskCreateCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_EvtReaderCallback_ThreadTaskSwitch ) ( OTF2_LocationRef location , OTF2_TimeStamp time , uint64_t eventPosition , void * userData , OTF2_AttributeList * attributeList , OTF2_CommRef threadTeam , uint32_t creatingThread , uint32_t generationNumber )
const OTF2_EvtReaderCallback_ThreadTaskSwitch = Ptr{Cvoid}

function OTF2_EvtReaderCallbacks_SetThreadTaskSwitchCallback(evtReaderCallbacks, threadTaskSwitchCallback)
    ccall((:OTF2_EvtReaderCallbacks_SetThreadTaskSwitchCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtReaderCallbacks}, OTF2_EvtReaderCallback_ThreadTaskSwitch), evtReaderCallbacks, threadTaskSwitchCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_EvtReaderCallback_ThreadTaskComplete ) ( OTF2_LocationRef location , OTF2_TimeStamp time , uint64_t eventPosition , void * userData , OTF2_AttributeList * attributeList , OTF2_CommRef threadTeam , uint32_t creatingThread , uint32_t generationNumber )
const OTF2_EvtReaderCallback_ThreadTaskComplete = Ptr{Cvoid}

function OTF2_EvtReaderCallbacks_SetThreadTaskCompleteCallback(evtReaderCallbacks, threadTaskCompleteCallback)
    ccall((:OTF2_EvtReaderCallbacks_SetThreadTaskCompleteCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtReaderCallbacks}, OTF2_EvtReaderCallback_ThreadTaskComplete), evtReaderCallbacks, threadTaskCompleteCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_EvtReaderCallback_ThreadCreate ) ( OTF2_LocationRef location , OTF2_TimeStamp time , uint64_t eventPosition , void * userData , OTF2_AttributeList * attributeList , OTF2_CommRef threadContingent , uint64_t sequenceCount )
const OTF2_EvtReaderCallback_ThreadCreate = Ptr{Cvoid}

function OTF2_EvtReaderCallbacks_SetThreadCreateCallback(evtReaderCallbacks, threadCreateCallback)
    ccall((:OTF2_EvtReaderCallbacks_SetThreadCreateCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtReaderCallbacks}, OTF2_EvtReaderCallback_ThreadCreate), evtReaderCallbacks, threadCreateCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_EvtReaderCallback_ThreadBegin ) ( OTF2_LocationRef location , OTF2_TimeStamp time , uint64_t eventPosition , void * userData , OTF2_AttributeList * attributeList , OTF2_CommRef threadContingent , uint64_t sequenceCount )
const OTF2_EvtReaderCallback_ThreadBegin = Ptr{Cvoid}

function OTF2_EvtReaderCallbacks_SetThreadBeginCallback(evtReaderCallbacks, threadBeginCallback)
    ccall((:OTF2_EvtReaderCallbacks_SetThreadBeginCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtReaderCallbacks}, OTF2_EvtReaderCallback_ThreadBegin), evtReaderCallbacks, threadBeginCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_EvtReaderCallback_ThreadWait ) ( OTF2_LocationRef location , OTF2_TimeStamp time , uint64_t eventPosition , void * userData , OTF2_AttributeList * attributeList , OTF2_CommRef threadContingent , uint64_t sequenceCount )
const OTF2_EvtReaderCallback_ThreadWait = Ptr{Cvoid}

function OTF2_EvtReaderCallbacks_SetThreadWaitCallback(evtReaderCallbacks, threadWaitCallback)
    ccall((:OTF2_EvtReaderCallbacks_SetThreadWaitCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtReaderCallbacks}, OTF2_EvtReaderCallback_ThreadWait), evtReaderCallbacks, threadWaitCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_EvtReaderCallback_ThreadEnd ) ( OTF2_LocationRef location , OTF2_TimeStamp time , uint64_t eventPosition , void * userData , OTF2_AttributeList * attributeList , OTF2_CommRef threadContingent , uint64_t sequenceCount )
const OTF2_EvtReaderCallback_ThreadEnd = Ptr{Cvoid}

function OTF2_EvtReaderCallbacks_SetThreadEndCallback(evtReaderCallbacks, threadEndCallback)
    ccall((:OTF2_EvtReaderCallbacks_SetThreadEndCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtReaderCallbacks}, OTF2_EvtReaderCallback_ThreadEnd), evtReaderCallbacks, threadEndCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_EvtReaderCallback_CallingContextEnter ) ( OTF2_LocationRef location , OTF2_TimeStamp time , uint64_t eventPosition , void * userData , OTF2_AttributeList * attributeList , OTF2_CallingContextRef callingContext , uint32_t unwindDistance )
const OTF2_EvtReaderCallback_CallingContextEnter = Ptr{Cvoid}

function OTF2_EvtReaderCallbacks_SetCallingContextEnterCallback(evtReaderCallbacks, callingContextEnterCallback)
    ccall((:OTF2_EvtReaderCallbacks_SetCallingContextEnterCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtReaderCallbacks}, OTF2_EvtReaderCallback_CallingContextEnter), evtReaderCallbacks, callingContextEnterCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_EvtReaderCallback_CallingContextLeave ) ( OTF2_LocationRef location , OTF2_TimeStamp time , uint64_t eventPosition , void * userData , OTF2_AttributeList * attributeList , OTF2_CallingContextRef callingContext )
const OTF2_EvtReaderCallback_CallingContextLeave = Ptr{Cvoid}

function OTF2_EvtReaderCallbacks_SetCallingContextLeaveCallback(evtReaderCallbacks, callingContextLeaveCallback)
    ccall((:OTF2_EvtReaderCallbacks_SetCallingContextLeaveCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtReaderCallbacks}, OTF2_EvtReaderCallback_CallingContextLeave), evtReaderCallbacks, callingContextLeaveCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_EvtReaderCallback_CallingContextSample ) ( OTF2_LocationRef location , OTF2_TimeStamp time , uint64_t eventPosition , void * userData , OTF2_AttributeList * attributeList , OTF2_CallingContextRef callingContext , uint32_t unwindDistance , OTF2_InterruptGeneratorRef interruptGenerator )
const OTF2_EvtReaderCallback_CallingContextSample = Ptr{Cvoid}

function OTF2_EvtReaderCallbacks_SetCallingContextSampleCallback(evtReaderCallbacks, callingContextSampleCallback)
    ccall((:OTF2_EvtReaderCallbacks_SetCallingContextSampleCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtReaderCallbacks}, OTF2_EvtReaderCallback_CallingContextSample), evtReaderCallbacks, callingContextSampleCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_EvtReaderCallback_IoCreateHandle ) ( OTF2_LocationRef location , OTF2_TimeStamp time , uint64_t eventPosition , void * userData , OTF2_AttributeList * attributeList , OTF2_IoHandleRef handle , OTF2_IoAccessMode mode , OTF2_IoCreationFlag creationFlags , OTF2_IoStatusFlag statusFlags )
const OTF2_EvtReaderCallback_IoCreateHandle = Ptr{Cvoid}

function OTF2_EvtReaderCallbacks_SetIoCreateHandleCallback(evtReaderCallbacks, ioCreateHandleCallback)
    ccall((:OTF2_EvtReaderCallbacks_SetIoCreateHandleCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtReaderCallbacks}, OTF2_EvtReaderCallback_IoCreateHandle), evtReaderCallbacks, ioCreateHandleCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_EvtReaderCallback_IoDestroyHandle ) ( OTF2_LocationRef location , OTF2_TimeStamp time , uint64_t eventPosition , void * userData , OTF2_AttributeList * attributeList , OTF2_IoHandleRef handle )
const OTF2_EvtReaderCallback_IoDestroyHandle = Ptr{Cvoid}

function OTF2_EvtReaderCallbacks_SetIoDestroyHandleCallback(evtReaderCallbacks, ioDestroyHandleCallback)
    ccall((:OTF2_EvtReaderCallbacks_SetIoDestroyHandleCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtReaderCallbacks}, OTF2_EvtReaderCallback_IoDestroyHandle), evtReaderCallbacks, ioDestroyHandleCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_EvtReaderCallback_IoDuplicateHandle ) ( OTF2_LocationRef location , OTF2_TimeStamp time , uint64_t eventPosition , void * userData , OTF2_AttributeList * attributeList , OTF2_IoHandleRef oldHandle , OTF2_IoHandleRef newHandle , OTF2_IoStatusFlag statusFlags )
const OTF2_EvtReaderCallback_IoDuplicateHandle = Ptr{Cvoid}

function OTF2_EvtReaderCallbacks_SetIoDuplicateHandleCallback(evtReaderCallbacks, ioDuplicateHandleCallback)
    ccall((:OTF2_EvtReaderCallbacks_SetIoDuplicateHandleCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtReaderCallbacks}, OTF2_EvtReaderCallback_IoDuplicateHandle), evtReaderCallbacks, ioDuplicateHandleCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_EvtReaderCallback_IoSeek ) ( OTF2_LocationRef location , OTF2_TimeStamp time , uint64_t eventPosition , void * userData , OTF2_AttributeList * attributeList , OTF2_IoHandleRef handle , int64_t offsetRequest , OTF2_IoSeekOption whence , uint64_t offsetResult )
const OTF2_EvtReaderCallback_IoSeek = Ptr{Cvoid}

function OTF2_EvtReaderCallbacks_SetIoSeekCallback(evtReaderCallbacks, ioSeekCallback)
    ccall((:OTF2_EvtReaderCallbacks_SetIoSeekCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtReaderCallbacks}, OTF2_EvtReaderCallback_IoSeek), evtReaderCallbacks, ioSeekCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_EvtReaderCallback_IoChangeStatusFlags ) ( OTF2_LocationRef location , OTF2_TimeStamp time , uint64_t eventPosition , void * userData , OTF2_AttributeList * attributeList , OTF2_IoHandleRef handle , OTF2_IoStatusFlag statusFlags )
const OTF2_EvtReaderCallback_IoChangeStatusFlags = Ptr{Cvoid}

function OTF2_EvtReaderCallbacks_SetIoChangeStatusFlagsCallback(evtReaderCallbacks, ioChangeStatusFlagsCallback)
    ccall((:OTF2_EvtReaderCallbacks_SetIoChangeStatusFlagsCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtReaderCallbacks}, OTF2_EvtReaderCallback_IoChangeStatusFlags), evtReaderCallbacks, ioChangeStatusFlagsCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_EvtReaderCallback_IoDeleteFile ) ( OTF2_LocationRef location , OTF2_TimeStamp time , uint64_t eventPosition , void * userData , OTF2_AttributeList * attributeList , OTF2_IoParadigmRef ioParadigm , OTF2_IoFileRef file )
const OTF2_EvtReaderCallback_IoDeleteFile = Ptr{Cvoid}

function OTF2_EvtReaderCallbacks_SetIoDeleteFileCallback(evtReaderCallbacks, ioDeleteFileCallback)
    ccall((:OTF2_EvtReaderCallbacks_SetIoDeleteFileCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtReaderCallbacks}, OTF2_EvtReaderCallback_IoDeleteFile), evtReaderCallbacks, ioDeleteFileCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_EvtReaderCallback_IoOperationBegin ) ( OTF2_LocationRef location , OTF2_TimeStamp time , uint64_t eventPosition , void * userData , OTF2_AttributeList * attributeList , OTF2_IoHandleRef handle , OTF2_IoOperationMode mode , OTF2_IoOperationFlag operationFlags , uint64_t bytesRequest , uint64_t matchingId )
const OTF2_EvtReaderCallback_IoOperationBegin = Ptr{Cvoid}

function OTF2_EvtReaderCallbacks_SetIoOperationBeginCallback(evtReaderCallbacks, ioOperationBeginCallback)
    ccall((:OTF2_EvtReaderCallbacks_SetIoOperationBeginCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtReaderCallbacks}, OTF2_EvtReaderCallback_IoOperationBegin), evtReaderCallbacks, ioOperationBeginCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_EvtReaderCallback_IoOperationTest ) ( OTF2_LocationRef location , OTF2_TimeStamp time , uint64_t eventPosition , void * userData , OTF2_AttributeList * attributeList , OTF2_IoHandleRef handle , uint64_t matchingId )
const OTF2_EvtReaderCallback_IoOperationTest = Ptr{Cvoid}

function OTF2_EvtReaderCallbacks_SetIoOperationTestCallback(evtReaderCallbacks, ioOperationTestCallback)
    ccall((:OTF2_EvtReaderCallbacks_SetIoOperationTestCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtReaderCallbacks}, OTF2_EvtReaderCallback_IoOperationTest), evtReaderCallbacks, ioOperationTestCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_EvtReaderCallback_IoOperationIssued ) ( OTF2_LocationRef location , OTF2_TimeStamp time , uint64_t eventPosition , void * userData , OTF2_AttributeList * attributeList , OTF2_IoHandleRef handle , uint64_t matchingId )
const OTF2_EvtReaderCallback_IoOperationIssued = Ptr{Cvoid}

function OTF2_EvtReaderCallbacks_SetIoOperationIssuedCallback(evtReaderCallbacks, ioOperationIssuedCallback)
    ccall((:OTF2_EvtReaderCallbacks_SetIoOperationIssuedCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtReaderCallbacks}, OTF2_EvtReaderCallback_IoOperationIssued), evtReaderCallbacks, ioOperationIssuedCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_EvtReaderCallback_IoOperationComplete ) ( OTF2_LocationRef location , OTF2_TimeStamp time , uint64_t eventPosition , void * userData , OTF2_AttributeList * attributeList , OTF2_IoHandleRef handle , uint64_t bytesResult , uint64_t matchingId )
const OTF2_EvtReaderCallback_IoOperationComplete = Ptr{Cvoid}

function OTF2_EvtReaderCallbacks_SetIoOperationCompleteCallback(evtReaderCallbacks, ioOperationCompleteCallback)
    ccall((:OTF2_EvtReaderCallbacks_SetIoOperationCompleteCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtReaderCallbacks}, OTF2_EvtReaderCallback_IoOperationComplete), evtReaderCallbacks, ioOperationCompleteCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_EvtReaderCallback_IoOperationCancelled ) ( OTF2_LocationRef location , OTF2_TimeStamp time , uint64_t eventPosition , void * userData , OTF2_AttributeList * attributeList , OTF2_IoHandleRef handle , uint64_t matchingId )
const OTF2_EvtReaderCallback_IoOperationCancelled = Ptr{Cvoid}

function OTF2_EvtReaderCallbacks_SetIoOperationCancelledCallback(evtReaderCallbacks, ioOperationCancelledCallback)
    ccall((:OTF2_EvtReaderCallbacks_SetIoOperationCancelledCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtReaderCallbacks}, OTF2_EvtReaderCallback_IoOperationCancelled), evtReaderCallbacks, ioOperationCancelledCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_EvtReaderCallback_IoAcquireLock ) ( OTF2_LocationRef location , OTF2_TimeStamp time , uint64_t eventPosition , void * userData , OTF2_AttributeList * attributeList , OTF2_IoHandleRef handle , OTF2_LockType lockType )
const OTF2_EvtReaderCallback_IoAcquireLock = Ptr{Cvoid}

function OTF2_EvtReaderCallbacks_SetIoAcquireLockCallback(evtReaderCallbacks, ioAcquireLockCallback)
    ccall((:OTF2_EvtReaderCallbacks_SetIoAcquireLockCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtReaderCallbacks}, OTF2_EvtReaderCallback_IoAcquireLock), evtReaderCallbacks, ioAcquireLockCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_EvtReaderCallback_IoReleaseLock ) ( OTF2_LocationRef location , OTF2_TimeStamp time , uint64_t eventPosition , void * userData , OTF2_AttributeList * attributeList , OTF2_IoHandleRef handle , OTF2_LockType lockType )
const OTF2_EvtReaderCallback_IoReleaseLock = Ptr{Cvoid}

function OTF2_EvtReaderCallbacks_SetIoReleaseLockCallback(evtReaderCallbacks, ioReleaseLockCallback)
    ccall((:OTF2_EvtReaderCallbacks_SetIoReleaseLockCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtReaderCallbacks}, OTF2_EvtReaderCallback_IoReleaseLock), evtReaderCallbacks, ioReleaseLockCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_EvtReaderCallback_IoTryLock ) ( OTF2_LocationRef location , OTF2_TimeStamp time , uint64_t eventPosition , void * userData , OTF2_AttributeList * attributeList , OTF2_IoHandleRef handle , OTF2_LockType lockType )
const OTF2_EvtReaderCallback_IoTryLock = Ptr{Cvoid}

function OTF2_EvtReaderCallbacks_SetIoTryLockCallback(evtReaderCallbacks, ioTryLockCallback)
    ccall((:OTF2_EvtReaderCallbacks_SetIoTryLockCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtReaderCallbacks}, OTF2_EvtReaderCallback_IoTryLock), evtReaderCallbacks, ioTryLockCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_EvtReaderCallback_ProgramBegin ) ( OTF2_LocationRef location , OTF2_TimeStamp time , uint64_t eventPosition , void * userData , OTF2_AttributeList * attributeList , OTF2_StringRef programName , uint32_t numberOfArguments , const OTF2_StringRef * programArguments )
const OTF2_EvtReaderCallback_ProgramBegin = Ptr{Cvoid}

function OTF2_EvtReaderCallbacks_SetProgramBeginCallback(evtReaderCallbacks, programBeginCallback)
    ccall((:OTF2_EvtReaderCallbacks_SetProgramBeginCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtReaderCallbacks}, OTF2_EvtReaderCallback_ProgramBegin), evtReaderCallbacks, programBeginCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_EvtReaderCallback_ProgramEnd ) ( OTF2_LocationRef location , OTF2_TimeStamp time , uint64_t eventPosition , void * userData , OTF2_AttributeList * attributeList , int64_t exitStatus )
const OTF2_EvtReaderCallback_ProgramEnd = Ptr{Cvoid}

function OTF2_EvtReaderCallbacks_SetProgramEndCallback(evtReaderCallbacks, programEndCallback)
    ccall((:OTF2_EvtReaderCallbacks_SetProgramEndCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtReaderCallbacks}, OTF2_EvtReaderCallback_ProgramEnd), evtReaderCallbacks, programEndCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_EvtReaderCallback_NonBlockingCollectiveRequest ) ( OTF2_LocationRef location , OTF2_TimeStamp time , uint64_t eventPosition , void * userData , OTF2_AttributeList * attributeList , uint64_t requestID )
const OTF2_EvtReaderCallback_NonBlockingCollectiveRequest = Ptr{Cvoid}

function OTF2_EvtReaderCallbacks_SetNonBlockingCollectiveRequestCallback(evtReaderCallbacks, nonBlockingCollectiveRequestCallback)
    ccall((:OTF2_EvtReaderCallbacks_SetNonBlockingCollectiveRequestCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtReaderCallbacks}, OTF2_EvtReaderCallback_NonBlockingCollectiveRequest), evtReaderCallbacks, nonBlockingCollectiveRequestCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_EvtReaderCallback_NonBlockingCollectiveComplete ) ( OTF2_LocationRef location , OTF2_TimeStamp time , uint64_t eventPosition , void * userData , OTF2_AttributeList * attributeList , OTF2_CollectiveOp collectiveOp , OTF2_CommRef communicator , uint32_t root , uint64_t sizeSent , uint64_t sizeReceived , uint64_t requestID )
const OTF2_EvtReaderCallback_NonBlockingCollectiveComplete = Ptr{Cvoid}

function OTF2_EvtReaderCallbacks_SetNonBlockingCollectiveCompleteCallback(evtReaderCallbacks, nonBlockingCollectiveCompleteCallback)
    ccall((:OTF2_EvtReaderCallbacks_SetNonBlockingCollectiveCompleteCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtReaderCallbacks}, OTF2_EvtReaderCallback_NonBlockingCollectiveComplete), evtReaderCallbacks, nonBlockingCollectiveCompleteCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_EvtReaderCallback_CommCreate ) ( OTF2_LocationRef location , OTF2_TimeStamp time , uint64_t eventPosition , void * userData , OTF2_AttributeList * attributeList , OTF2_CommRef communicator )
const OTF2_EvtReaderCallback_CommCreate = Ptr{Cvoid}

function OTF2_EvtReaderCallbacks_SetCommCreateCallback(evtReaderCallbacks, commCreateCallback)
    ccall((:OTF2_EvtReaderCallbacks_SetCommCreateCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtReaderCallbacks}, OTF2_EvtReaderCallback_CommCreate), evtReaderCallbacks, commCreateCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_EvtReaderCallback_CommDestroy ) ( OTF2_LocationRef location , OTF2_TimeStamp time , uint64_t eventPosition , void * userData , OTF2_AttributeList * attributeList , OTF2_CommRef communicator )
const OTF2_EvtReaderCallback_CommDestroy = Ptr{Cvoid}

function OTF2_EvtReaderCallbacks_SetCommDestroyCallback(evtReaderCallbacks, commDestroyCallback)
    ccall((:OTF2_EvtReaderCallbacks_SetCommDestroyCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtReaderCallbacks}, OTF2_EvtReaderCallback_CommDestroy), evtReaderCallbacks, commDestroyCallback)
end

function OTF2_EvtReader_GetLocationID(reader, location)
    ccall((:OTF2_EvtReader_GetLocationID, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtReader}, Ptr{OTF2_LocationRef}), reader, location)
end

function OTF2_EvtReader_GetPos(reader, position)
    ccall((:OTF2_EvtReader_GetPos, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtReader}, Ptr{UInt64}), reader, position)
end

function OTF2_EvtReader_SetCallbacks(reader, callbacks, userData)
    ccall((:OTF2_EvtReader_SetCallbacks, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtReader}, Ptr{OTF2_EvtReaderCallbacks}, Ptr{Cvoid}), reader, callbacks, userData)
end

function OTF2_EvtReader_Seek(reader, position)
    ccall((:OTF2_EvtReader_Seek, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtReader}, UInt64), reader, position)
end

function OTF2_EvtReader_ReadEvents(reader, recordsToRead, recordsRead)
    ccall((:OTF2_EvtReader_ReadEvents, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtReader}, UInt64, Ptr{UInt64}), reader, recordsToRead, recordsRead)
end

function OTF2_EvtReader_TimeStampRewrite(reader, time)
    ccall((:OTF2_EvtReader_TimeStampRewrite, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtReader}, OTF2_TimeStamp), reader, time)
end

function OTF2_EvtReader_ReadEventsBackward(reader, recordsToRead, recordsRead)
    ccall((:OTF2_EvtReader_ReadEventsBackward, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtReader}, UInt64, Ptr{UInt64}), reader, recordsToRead, recordsRead)
end

function OTF2_EvtReader_ApplyMappingTables(reader, action)
    ccall((:OTF2_EvtReader_ApplyMappingTables, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtReader}, Bool), reader, action)
end

function OTF2_EvtReader_ApplyClockOffsets(reader, action)
    ccall((:OTF2_EvtReader_ApplyClockOffsets, libotf2), OTF2_ErrorCode, (Ptr{OTF2_EvtReader}, Bool), reader, action)
end

mutable struct OTF2_SnapWriter_struct end

const OTF2_SnapWriter = OTF2_SnapWriter_struct

function OTF2_SnapWriter_GetLocationID(writer, locationID)
    ccall((:OTF2_SnapWriter_GetLocationID, libotf2), OTF2_ErrorCode, (Ptr{OTF2_SnapWriter}, Ptr{OTF2_LocationRef}), writer, locationID)
end

function OTF2_SnapWriter_SnapshotStart(writer, attributeList, snapTime, numberOfRecords)
    ccall((:OTF2_SnapWriter_SnapshotStart, libotf2), OTF2_ErrorCode, (Ptr{OTF2_SnapWriter}, Ptr{OTF2_AttributeList}, OTF2_TimeStamp, UInt64), writer, attributeList, snapTime, numberOfRecords)
end

function OTF2_SnapWriter_SnapshotEnd(writer, attributeList, snapTime, contReadPos)
    ccall((:OTF2_SnapWriter_SnapshotEnd, libotf2), OTF2_ErrorCode, (Ptr{OTF2_SnapWriter}, Ptr{OTF2_AttributeList}, OTF2_TimeStamp, UInt64), writer, attributeList, snapTime, contReadPos)
end

function OTF2_SnapWriter_MeasurementOnOff(writer, attributeList, snapTime, origEventTime, measurementMode)
    ccall((:OTF2_SnapWriter_MeasurementOnOff, libotf2), OTF2_ErrorCode, (Ptr{OTF2_SnapWriter}, Ptr{OTF2_AttributeList}, OTF2_TimeStamp, OTF2_TimeStamp, OTF2_MeasurementMode), writer, attributeList, snapTime, origEventTime, measurementMode)
end

function OTF2_SnapWriter_Enter(writer, attributeList, snapTime, origEventTime, region)
    ccall((:OTF2_SnapWriter_Enter, libotf2), OTF2_ErrorCode, (Ptr{OTF2_SnapWriter}, Ptr{OTF2_AttributeList}, OTF2_TimeStamp, OTF2_TimeStamp, OTF2_RegionRef), writer, attributeList, snapTime, origEventTime, region)
end

function OTF2_SnapWriter_MpiSend(writer, attributeList, snapTime, origEventTime, receiver, communicator, msgTag, msgLength)
    ccall((:OTF2_SnapWriter_MpiSend, libotf2), OTF2_ErrorCode, (Ptr{OTF2_SnapWriter}, Ptr{OTF2_AttributeList}, OTF2_TimeStamp, OTF2_TimeStamp, UInt32, OTF2_CommRef, UInt32, UInt64), writer, attributeList, snapTime, origEventTime, receiver, communicator, msgTag, msgLength)
end

function OTF2_SnapWriter_MpiIsend(writer, attributeList, snapTime, origEventTime, receiver, communicator, msgTag, msgLength, requestID)
    ccall((:OTF2_SnapWriter_MpiIsend, libotf2), OTF2_ErrorCode, (Ptr{OTF2_SnapWriter}, Ptr{OTF2_AttributeList}, OTF2_TimeStamp, OTF2_TimeStamp, UInt32, OTF2_CommRef, UInt32, UInt64, UInt64), writer, attributeList, snapTime, origEventTime, receiver, communicator, msgTag, msgLength, requestID)
end

function OTF2_SnapWriter_MpiIsendComplete(writer, attributeList, snapTime, origEventTime, requestID)
    ccall((:OTF2_SnapWriter_MpiIsendComplete, libotf2), OTF2_ErrorCode, (Ptr{OTF2_SnapWriter}, Ptr{OTF2_AttributeList}, OTF2_TimeStamp, OTF2_TimeStamp, UInt64), writer, attributeList, snapTime, origEventTime, requestID)
end

function OTF2_SnapWriter_MpiRecv(writer, attributeList, snapTime, origEventTime, sender, communicator, msgTag, msgLength)
    ccall((:OTF2_SnapWriter_MpiRecv, libotf2), OTF2_ErrorCode, (Ptr{OTF2_SnapWriter}, Ptr{OTF2_AttributeList}, OTF2_TimeStamp, OTF2_TimeStamp, UInt32, OTF2_CommRef, UInt32, UInt64), writer, attributeList, snapTime, origEventTime, sender, communicator, msgTag, msgLength)
end

function OTF2_SnapWriter_MpiIrecvRequest(writer, attributeList, snapTime, origEventTime, requestID)
    ccall((:OTF2_SnapWriter_MpiIrecvRequest, libotf2), OTF2_ErrorCode, (Ptr{OTF2_SnapWriter}, Ptr{OTF2_AttributeList}, OTF2_TimeStamp, OTF2_TimeStamp, UInt64), writer, attributeList, snapTime, origEventTime, requestID)
end

function OTF2_SnapWriter_MpiIrecv(writer, attributeList, snapTime, origEventTime, sender, communicator, msgTag, msgLength, requestID)
    ccall((:OTF2_SnapWriter_MpiIrecv, libotf2), OTF2_ErrorCode, (Ptr{OTF2_SnapWriter}, Ptr{OTF2_AttributeList}, OTF2_TimeStamp, OTF2_TimeStamp, UInt32, OTF2_CommRef, UInt32, UInt64, UInt64), writer, attributeList, snapTime, origEventTime, sender, communicator, msgTag, msgLength, requestID)
end

function OTF2_SnapWriter_MpiCollectiveBegin(writer, attributeList, snapTime, origEventTime)
    ccall((:OTF2_SnapWriter_MpiCollectiveBegin, libotf2), OTF2_ErrorCode, (Ptr{OTF2_SnapWriter}, Ptr{OTF2_AttributeList}, OTF2_TimeStamp, OTF2_TimeStamp), writer, attributeList, snapTime, origEventTime)
end

function OTF2_SnapWriter_MpiCollectiveEnd(writer, attributeList, snapTime, origEventTime, collectiveOp, communicator, root, sizeSent, sizeReceived)
    ccall((:OTF2_SnapWriter_MpiCollectiveEnd, libotf2), OTF2_ErrorCode, (Ptr{OTF2_SnapWriter}, Ptr{OTF2_AttributeList}, OTF2_TimeStamp, OTF2_TimeStamp, OTF2_CollectiveOp, OTF2_CommRef, UInt32, UInt64, UInt64), writer, attributeList, snapTime, origEventTime, collectiveOp, communicator, root, sizeSent, sizeReceived)
end

function OTF2_SnapWriter_OmpFork(writer, attributeList, snapTime, origEventTime, numberOfRequestedThreads)
    ccall((:OTF2_SnapWriter_OmpFork, libotf2), OTF2_ErrorCode, (Ptr{OTF2_SnapWriter}, Ptr{OTF2_AttributeList}, OTF2_TimeStamp, OTF2_TimeStamp, UInt32), writer, attributeList, snapTime, origEventTime, numberOfRequestedThreads)
end

function OTF2_SnapWriter_OmpAcquireLock(writer, attributeList, snapTime, origEventTime, lockID, acquisitionOrder)
    ccall((:OTF2_SnapWriter_OmpAcquireLock, libotf2), OTF2_ErrorCode, (Ptr{OTF2_SnapWriter}, Ptr{OTF2_AttributeList}, OTF2_TimeStamp, OTF2_TimeStamp, UInt32, UInt32), writer, attributeList, snapTime, origEventTime, lockID, acquisitionOrder)
end

function OTF2_SnapWriter_OmpTaskCreate(writer, attributeList, snapTime, origEventTime, taskID)
    ccall((:OTF2_SnapWriter_OmpTaskCreate, libotf2), OTF2_ErrorCode, (Ptr{OTF2_SnapWriter}, Ptr{OTF2_AttributeList}, OTF2_TimeStamp, OTF2_TimeStamp, UInt64), writer, attributeList, snapTime, origEventTime, taskID)
end

function OTF2_SnapWriter_OmpTaskSwitch(writer, attributeList, snapTime, origEventTime, taskID)
    ccall((:OTF2_SnapWriter_OmpTaskSwitch, libotf2), OTF2_ErrorCode, (Ptr{OTF2_SnapWriter}, Ptr{OTF2_AttributeList}, OTF2_TimeStamp, OTF2_TimeStamp, UInt64), writer, attributeList, snapTime, origEventTime, taskID)
end

function OTF2_SnapWriter_Metric(writer, attributeList, snapTime, origEventTime, metric, numberOfMetrics, typeIDs, metricValues)
    ccall((:OTF2_SnapWriter_Metric, libotf2), OTF2_ErrorCode, (Ptr{OTF2_SnapWriter}, Ptr{OTF2_AttributeList}, OTF2_TimeStamp, OTF2_TimeStamp, OTF2_MetricRef, UInt8, Ptr{OTF2_Type}, Ptr{OTF2_MetricValue}), writer, attributeList, snapTime, origEventTime, metric, numberOfMetrics, typeIDs, metricValues)
end

function OTF2_SnapWriter_ParameterString(writer, attributeList, snapTime, origEventTime, parameter, string)
    ccall((:OTF2_SnapWriter_ParameterString, libotf2), OTF2_ErrorCode, (Ptr{OTF2_SnapWriter}, Ptr{OTF2_AttributeList}, OTF2_TimeStamp, OTF2_TimeStamp, OTF2_ParameterRef, OTF2_StringRef), writer, attributeList, snapTime, origEventTime, parameter, string)
end

function OTF2_SnapWriter_ParameterInt(writer, attributeList, snapTime, origEventTime, parameter, value)
    ccall((:OTF2_SnapWriter_ParameterInt, libotf2), OTF2_ErrorCode, (Ptr{OTF2_SnapWriter}, Ptr{OTF2_AttributeList}, OTF2_TimeStamp, OTF2_TimeStamp, OTF2_ParameterRef, Int64), writer, attributeList, snapTime, origEventTime, parameter, value)
end

function OTF2_SnapWriter_ParameterUnsignedInt(writer, attributeList, snapTime, origEventTime, parameter, value)
    ccall((:OTF2_SnapWriter_ParameterUnsignedInt, libotf2), OTF2_ErrorCode, (Ptr{OTF2_SnapWriter}, Ptr{OTF2_AttributeList}, OTF2_TimeStamp, OTF2_TimeStamp, OTF2_ParameterRef, UInt64), writer, attributeList, snapTime, origEventTime, parameter, value)
end

mutable struct OTF2_SnapReaderCallbacks_struct end

const OTF2_SnapReaderCallbacks = OTF2_SnapReaderCallbacks_struct

function OTF2_SnapReaderCallbacks_New()
    ccall((:OTF2_SnapReaderCallbacks_New, libotf2), Ptr{OTF2_SnapReaderCallbacks}, ())
end

function OTF2_SnapReaderCallbacks_Delete(snapReaderCallbacks)
    ccall((:OTF2_SnapReaderCallbacks_Delete, libotf2), Cvoid, (Ptr{OTF2_SnapReaderCallbacks},), snapReaderCallbacks)
end

function OTF2_SnapReaderCallbacks_Clear(snapReaderCallbacks)
    ccall((:OTF2_SnapReaderCallbacks_Clear, libotf2), Cvoid, (Ptr{OTF2_SnapReaderCallbacks},), snapReaderCallbacks)
end

# typedef OTF2_CallbackCode ( * OTF2_SnapReaderCallback_Unknown ) ( OTF2_LocationRef location , OTF2_TimeStamp snapTime , void * userData , OTF2_AttributeList * attributeList )
const OTF2_SnapReaderCallback_Unknown = Ptr{Cvoid}

function OTF2_SnapReaderCallbacks_SetUnknownCallback(snapReaderCallbacks, unknownCallback)
    ccall((:OTF2_SnapReaderCallbacks_SetUnknownCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_SnapReaderCallbacks}, OTF2_SnapReaderCallback_Unknown), snapReaderCallbacks, unknownCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_SnapReaderCallback_SnapshotStart ) ( OTF2_LocationRef location , OTF2_TimeStamp snapTime , void * userData , OTF2_AttributeList * attributeList , uint64_t numberOfRecords )
const OTF2_SnapReaderCallback_SnapshotStart = Ptr{Cvoid}

function OTF2_SnapReaderCallbacks_SetSnapshotStartCallback(snapReaderCallbacks, snapshotStartCallback)
    ccall((:OTF2_SnapReaderCallbacks_SetSnapshotStartCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_SnapReaderCallbacks}, OTF2_SnapReaderCallback_SnapshotStart), snapReaderCallbacks, snapshotStartCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_SnapReaderCallback_SnapshotEnd ) ( OTF2_LocationRef location , OTF2_TimeStamp snapTime , void * userData , OTF2_AttributeList * attributeList , uint64_t contReadPos )
const OTF2_SnapReaderCallback_SnapshotEnd = Ptr{Cvoid}

function OTF2_SnapReaderCallbacks_SetSnapshotEndCallback(snapReaderCallbacks, snapshotEndCallback)
    ccall((:OTF2_SnapReaderCallbacks_SetSnapshotEndCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_SnapReaderCallbacks}, OTF2_SnapReaderCallback_SnapshotEnd), snapReaderCallbacks, snapshotEndCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_SnapReaderCallback_MeasurementOnOff ) ( OTF2_LocationRef location , OTF2_TimeStamp snapTime , void * userData , OTF2_AttributeList * attributeList , OTF2_TimeStamp origEventTime , OTF2_MeasurementMode measurementMode )
const OTF2_SnapReaderCallback_MeasurementOnOff = Ptr{Cvoid}

function OTF2_SnapReaderCallbacks_SetMeasurementOnOffCallback(snapReaderCallbacks, measurementOnOffCallback)
    ccall((:OTF2_SnapReaderCallbacks_SetMeasurementOnOffCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_SnapReaderCallbacks}, OTF2_SnapReaderCallback_MeasurementOnOff), snapReaderCallbacks, measurementOnOffCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_SnapReaderCallback_Enter ) ( OTF2_LocationRef location , OTF2_TimeStamp snapTime , void * userData , OTF2_AttributeList * attributeList , OTF2_TimeStamp origEventTime , OTF2_RegionRef region )
const OTF2_SnapReaderCallback_Enter = Ptr{Cvoid}

function OTF2_SnapReaderCallbacks_SetEnterCallback(snapReaderCallbacks, enterCallback)
    ccall((:OTF2_SnapReaderCallbacks_SetEnterCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_SnapReaderCallbacks}, OTF2_SnapReaderCallback_Enter), snapReaderCallbacks, enterCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_SnapReaderCallback_MpiSend ) ( OTF2_LocationRef location , OTF2_TimeStamp snapTime , void * userData , OTF2_AttributeList * attributeList , OTF2_TimeStamp origEventTime , uint32_t receiver , OTF2_CommRef communicator , uint32_t msgTag , uint64_t msgLength )
const OTF2_SnapReaderCallback_MpiSend = Ptr{Cvoid}

function OTF2_SnapReaderCallbacks_SetMpiSendCallback(snapReaderCallbacks, mpiSendCallback)
    ccall((:OTF2_SnapReaderCallbacks_SetMpiSendCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_SnapReaderCallbacks}, OTF2_SnapReaderCallback_MpiSend), snapReaderCallbacks, mpiSendCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_SnapReaderCallback_MpiIsend ) ( OTF2_LocationRef location , OTF2_TimeStamp snapTime , void * userData , OTF2_AttributeList * attributeList , OTF2_TimeStamp origEventTime , uint32_t receiver , OTF2_CommRef communicator , uint32_t msgTag , uint64_t msgLength , uint64_t requestID )
const OTF2_SnapReaderCallback_MpiIsend = Ptr{Cvoid}

function OTF2_SnapReaderCallbacks_SetMpiIsendCallback(snapReaderCallbacks, mpiIsendCallback)
    ccall((:OTF2_SnapReaderCallbacks_SetMpiIsendCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_SnapReaderCallbacks}, OTF2_SnapReaderCallback_MpiIsend), snapReaderCallbacks, mpiIsendCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_SnapReaderCallback_MpiIsendComplete ) ( OTF2_LocationRef location , OTF2_TimeStamp snapTime , void * userData , OTF2_AttributeList * attributeList , OTF2_TimeStamp origEventTime , uint64_t requestID )
const OTF2_SnapReaderCallback_MpiIsendComplete = Ptr{Cvoid}

function OTF2_SnapReaderCallbacks_SetMpiIsendCompleteCallback(snapReaderCallbacks, mpiIsendCompleteCallback)
    ccall((:OTF2_SnapReaderCallbacks_SetMpiIsendCompleteCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_SnapReaderCallbacks}, OTF2_SnapReaderCallback_MpiIsendComplete), snapReaderCallbacks, mpiIsendCompleteCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_SnapReaderCallback_MpiRecv ) ( OTF2_LocationRef location , OTF2_TimeStamp snapTime , void * userData , OTF2_AttributeList * attributeList , OTF2_TimeStamp origEventTime , uint32_t sender , OTF2_CommRef communicator , uint32_t msgTag , uint64_t msgLength )
const OTF2_SnapReaderCallback_MpiRecv = Ptr{Cvoid}

function OTF2_SnapReaderCallbacks_SetMpiRecvCallback(snapReaderCallbacks, mpiRecvCallback)
    ccall((:OTF2_SnapReaderCallbacks_SetMpiRecvCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_SnapReaderCallbacks}, OTF2_SnapReaderCallback_MpiRecv), snapReaderCallbacks, mpiRecvCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_SnapReaderCallback_MpiIrecvRequest ) ( OTF2_LocationRef location , OTF2_TimeStamp snapTime , void * userData , OTF2_AttributeList * attributeList , OTF2_TimeStamp origEventTime , uint64_t requestID )
const OTF2_SnapReaderCallback_MpiIrecvRequest = Ptr{Cvoid}

function OTF2_SnapReaderCallbacks_SetMpiIrecvRequestCallback(snapReaderCallbacks, mpiIrecvRequestCallback)
    ccall((:OTF2_SnapReaderCallbacks_SetMpiIrecvRequestCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_SnapReaderCallbacks}, OTF2_SnapReaderCallback_MpiIrecvRequest), snapReaderCallbacks, mpiIrecvRequestCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_SnapReaderCallback_MpiIrecv ) ( OTF2_LocationRef location , OTF2_TimeStamp snapTime , void * userData , OTF2_AttributeList * attributeList , OTF2_TimeStamp origEventTime , uint32_t sender , OTF2_CommRef communicator , uint32_t msgTag , uint64_t msgLength , uint64_t requestID )
const OTF2_SnapReaderCallback_MpiIrecv = Ptr{Cvoid}

function OTF2_SnapReaderCallbacks_SetMpiIrecvCallback(snapReaderCallbacks, mpiIrecvCallback)
    ccall((:OTF2_SnapReaderCallbacks_SetMpiIrecvCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_SnapReaderCallbacks}, OTF2_SnapReaderCallback_MpiIrecv), snapReaderCallbacks, mpiIrecvCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_SnapReaderCallback_MpiCollectiveBegin ) ( OTF2_LocationRef location , OTF2_TimeStamp snapTime , void * userData , OTF2_AttributeList * attributeList , OTF2_TimeStamp origEventTime )
const OTF2_SnapReaderCallback_MpiCollectiveBegin = Ptr{Cvoid}

function OTF2_SnapReaderCallbacks_SetMpiCollectiveBeginCallback(snapReaderCallbacks, mpiCollectiveBeginCallback)
    ccall((:OTF2_SnapReaderCallbacks_SetMpiCollectiveBeginCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_SnapReaderCallbacks}, OTF2_SnapReaderCallback_MpiCollectiveBegin), snapReaderCallbacks, mpiCollectiveBeginCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_SnapReaderCallback_MpiCollectiveEnd ) ( OTF2_LocationRef location , OTF2_TimeStamp snapTime , void * userData , OTF2_AttributeList * attributeList , OTF2_TimeStamp origEventTime , OTF2_CollectiveOp collectiveOp , OTF2_CommRef communicator , uint32_t root , uint64_t sizeSent , uint64_t sizeReceived )
const OTF2_SnapReaderCallback_MpiCollectiveEnd = Ptr{Cvoid}

function OTF2_SnapReaderCallbacks_SetMpiCollectiveEndCallback(snapReaderCallbacks, mpiCollectiveEndCallback)
    ccall((:OTF2_SnapReaderCallbacks_SetMpiCollectiveEndCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_SnapReaderCallbacks}, OTF2_SnapReaderCallback_MpiCollectiveEnd), snapReaderCallbacks, mpiCollectiveEndCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_SnapReaderCallback_OmpFork ) ( OTF2_LocationRef location , OTF2_TimeStamp snapTime , void * userData , OTF2_AttributeList * attributeList , OTF2_TimeStamp origEventTime , uint32_t numberOfRequestedThreads )
const OTF2_SnapReaderCallback_OmpFork = Ptr{Cvoid}

function OTF2_SnapReaderCallbacks_SetOmpForkCallback(snapReaderCallbacks, ompForkCallback)
    ccall((:OTF2_SnapReaderCallbacks_SetOmpForkCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_SnapReaderCallbacks}, OTF2_SnapReaderCallback_OmpFork), snapReaderCallbacks, ompForkCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_SnapReaderCallback_OmpAcquireLock ) ( OTF2_LocationRef location , OTF2_TimeStamp snapTime , void * userData , OTF2_AttributeList * attributeList , OTF2_TimeStamp origEventTime , uint32_t lockID , uint32_t acquisitionOrder )
const OTF2_SnapReaderCallback_OmpAcquireLock = Ptr{Cvoid}

function OTF2_SnapReaderCallbacks_SetOmpAcquireLockCallback(snapReaderCallbacks, ompAcquireLockCallback)
    ccall((:OTF2_SnapReaderCallbacks_SetOmpAcquireLockCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_SnapReaderCallbacks}, OTF2_SnapReaderCallback_OmpAcquireLock), snapReaderCallbacks, ompAcquireLockCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_SnapReaderCallback_OmpTaskCreate ) ( OTF2_LocationRef location , OTF2_TimeStamp snapTime , void * userData , OTF2_AttributeList * attributeList , OTF2_TimeStamp origEventTime , uint64_t taskID )
const OTF2_SnapReaderCallback_OmpTaskCreate = Ptr{Cvoid}

function OTF2_SnapReaderCallbacks_SetOmpTaskCreateCallback(snapReaderCallbacks, ompTaskCreateCallback)
    ccall((:OTF2_SnapReaderCallbacks_SetOmpTaskCreateCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_SnapReaderCallbacks}, OTF2_SnapReaderCallback_OmpTaskCreate), snapReaderCallbacks, ompTaskCreateCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_SnapReaderCallback_OmpTaskSwitch ) ( OTF2_LocationRef location , OTF2_TimeStamp snapTime , void * userData , OTF2_AttributeList * attributeList , OTF2_TimeStamp origEventTime , uint64_t taskID )
const OTF2_SnapReaderCallback_OmpTaskSwitch = Ptr{Cvoid}

function OTF2_SnapReaderCallbacks_SetOmpTaskSwitchCallback(snapReaderCallbacks, ompTaskSwitchCallback)
    ccall((:OTF2_SnapReaderCallbacks_SetOmpTaskSwitchCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_SnapReaderCallbacks}, OTF2_SnapReaderCallback_OmpTaskSwitch), snapReaderCallbacks, ompTaskSwitchCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_SnapReaderCallback_Metric ) ( OTF2_LocationRef location , OTF2_TimeStamp snapTime , void * userData , OTF2_AttributeList * attributeList , OTF2_TimeStamp origEventTime , OTF2_MetricRef metric , uint8_t numberOfMetrics , const OTF2_Type * typeIDs , const OTF2_MetricValue * metricValues )
const OTF2_SnapReaderCallback_Metric = Ptr{Cvoid}

function OTF2_SnapReaderCallbacks_SetMetricCallback(snapReaderCallbacks, metricCallback)
    ccall((:OTF2_SnapReaderCallbacks_SetMetricCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_SnapReaderCallbacks}, OTF2_SnapReaderCallback_Metric), snapReaderCallbacks, metricCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_SnapReaderCallback_ParameterString ) ( OTF2_LocationRef location , OTF2_TimeStamp snapTime , void * userData , OTF2_AttributeList * attributeList , OTF2_TimeStamp origEventTime , OTF2_ParameterRef parameter , OTF2_StringRef string )
const OTF2_SnapReaderCallback_ParameterString = Ptr{Cvoid}

function OTF2_SnapReaderCallbacks_SetParameterStringCallback(snapReaderCallbacks, parameterStringCallback)
    ccall((:OTF2_SnapReaderCallbacks_SetParameterStringCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_SnapReaderCallbacks}, OTF2_SnapReaderCallback_ParameterString), snapReaderCallbacks, parameterStringCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_SnapReaderCallback_ParameterInt ) ( OTF2_LocationRef location , OTF2_TimeStamp snapTime , void * userData , OTF2_AttributeList * attributeList , OTF2_TimeStamp origEventTime , OTF2_ParameterRef parameter , int64_t value )
const OTF2_SnapReaderCallback_ParameterInt = Ptr{Cvoid}

function OTF2_SnapReaderCallbacks_SetParameterIntCallback(snapReaderCallbacks, parameterIntCallback)
    ccall((:OTF2_SnapReaderCallbacks_SetParameterIntCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_SnapReaderCallbacks}, OTF2_SnapReaderCallback_ParameterInt), snapReaderCallbacks, parameterIntCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_SnapReaderCallback_ParameterUnsignedInt ) ( OTF2_LocationRef location , OTF2_TimeStamp snapTime , void * userData , OTF2_AttributeList * attributeList , OTF2_TimeStamp origEventTime , OTF2_ParameterRef parameter , uint64_t value )
const OTF2_SnapReaderCallback_ParameterUnsignedInt = Ptr{Cvoid}

function OTF2_SnapReaderCallbacks_SetParameterUnsignedIntCallback(snapReaderCallbacks, parameterUnsignedIntCallback)
    ccall((:OTF2_SnapReaderCallbacks_SetParameterUnsignedIntCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_SnapReaderCallbacks}, OTF2_SnapReaderCallback_ParameterUnsignedInt), snapReaderCallbacks, parameterUnsignedIntCallback)
end

function OTF2_SnapReader_GetLocationID(reader, location)
    ccall((:OTF2_SnapReader_GetLocationID, libotf2), OTF2_ErrorCode, (Ptr{OTF2_SnapReader}, Ptr{OTF2_LocationRef}), reader, location)
end

function OTF2_SnapReader_SetCallbacks(reader, callbacks, userData)
    ccall((:OTF2_SnapReader_SetCallbacks, libotf2), OTF2_ErrorCode, (Ptr{OTF2_SnapReader}, Ptr{OTF2_SnapReaderCallbacks}, Ptr{Cvoid}), reader, callbacks, userData)
end

function OTF2_SnapReader_Seek(reader, req_time, found)
    ccall((:OTF2_SnapReader_Seek, libotf2), OTF2_ErrorCode, (Ptr{OTF2_SnapReader}, UInt64, Ptr{Bool}), reader, req_time, found)
end

function OTF2_SnapReader_ReadSnapshots(reader, recordsToRead, recordsRead)
    ccall((:OTF2_SnapReader_ReadSnapshots, libotf2), OTF2_ErrorCode, (Ptr{OTF2_SnapReader}, UInt64, Ptr{UInt64}), reader, recordsToRead, recordsRead)
end

mutable struct OTF2_GlobalDefWriter_struct end

const OTF2_GlobalDefWriter = OTF2_GlobalDefWriter_struct

function OTF2_GlobalDefWriter_GetNumberOfDefinitions(writerHandle, numberOfDefinitions)
    ccall((:OTF2_GlobalDefWriter_GetNumberOfDefinitions, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalDefWriter}, Ptr{UInt64}), writerHandle, numberOfDefinitions)
end

function OTF2_GlobalDefWriter_GetNumberOfLocations(writerHandle, numberOfLocations)
    ccall((:OTF2_GlobalDefWriter_GetNumberOfLocations, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalDefWriter}, Ptr{UInt64}), writerHandle, numberOfLocations)
end

function OTF2_GlobalDefWriter_WriteClockProperties(writerHandle, timerResolution, globalOffset, traceLength, realtimeTimestamp)
    ccall((:OTF2_GlobalDefWriter_WriteClockProperties, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalDefWriter}, UInt64, UInt64, UInt64, UInt64), writerHandle, timerResolution, globalOffset, traceLength, realtimeTimestamp)
end

function OTF2_GlobalDefWriter_WriteParadigm(writerHandle, paradigm, name, paradigmClass)
    ccall((:OTF2_GlobalDefWriter_WriteParadigm, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalDefWriter}, OTF2_Paradigm, OTF2_StringRef, OTF2_ParadigmClass), writerHandle, paradigm, name, paradigmClass)
end

function OTF2_GlobalDefWriter_WriteParadigmProperty(writerHandle, paradigm, property, type, value)
    ccall((:OTF2_GlobalDefWriter_WriteParadigmProperty, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalDefWriter}, OTF2_Paradigm, OTF2_ParadigmProperty, OTF2_Type, OTF2_AttributeValue), writerHandle, paradigm, property, type, value)
end

function OTF2_GlobalDefWriter_WriteIoParadigm(writerHandle, self, identification, name, ioParadigmClass, ioParadigmFlags, numberOfProperties, properties, types, values)
    ccall((:OTF2_GlobalDefWriter_WriteIoParadigm, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalDefWriter}, OTF2_IoParadigmRef, OTF2_StringRef, OTF2_StringRef, OTF2_IoParadigmClass, OTF2_IoParadigmFlag, UInt8, Ptr{OTF2_IoParadigmProperty}, Ptr{OTF2_Type}, Ptr{OTF2_AttributeValue}), writerHandle, self, identification, name, ioParadigmClass, ioParadigmFlags, numberOfProperties, properties, types, values)
end

function OTF2_GlobalDefWriter_WriteString(writerHandle, self, string)
    ccall((:OTF2_GlobalDefWriter_WriteString, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalDefWriter}, OTF2_StringRef, Ptr{Cchar}), writerHandle, self, string)
end

function OTF2_GlobalDefWriter_WriteAttribute(writerHandle, self, name, description, type)
    ccall((:OTF2_GlobalDefWriter_WriteAttribute, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalDefWriter}, OTF2_AttributeRef, OTF2_StringRef, OTF2_StringRef, OTF2_Type), writerHandle, self, name, description, type)
end

function OTF2_GlobalDefWriter_WriteSystemTreeNode(writerHandle, self, name, className, parent)
    ccall((:OTF2_GlobalDefWriter_WriteSystemTreeNode, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalDefWriter}, OTF2_SystemTreeNodeRef, OTF2_StringRef, OTF2_StringRef, OTF2_SystemTreeNodeRef), writerHandle, self, name, className, parent)
end

function OTF2_GlobalDefWriter_WriteLocationGroup(writerHandle, self, name, locationGroupType, systemTreeParent, creatingLocationGroup)
    ccall((:OTF2_GlobalDefWriter_WriteLocationGroup, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalDefWriter}, OTF2_LocationGroupRef, OTF2_StringRef, OTF2_LocationGroupType, OTF2_SystemTreeNodeRef, OTF2_LocationGroupRef), writerHandle, self, name, locationGroupType, systemTreeParent, creatingLocationGroup)
end

function OTF2_GlobalDefWriter_WriteLocation(writerHandle, self, name, locationType, numberOfEvents, locationGroup)
    ccall((:OTF2_GlobalDefWriter_WriteLocation, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalDefWriter}, OTF2_LocationRef, OTF2_StringRef, OTF2_LocationType, UInt64, OTF2_LocationGroupRef), writerHandle, self, name, locationType, numberOfEvents, locationGroup)
end

function OTF2_GlobalDefWriter_WriteRegion(writerHandle, self, name, canonicalName, description, regionRole, paradigm, regionFlags, sourceFile, beginLineNumber, endLineNumber)
    ccall((:OTF2_GlobalDefWriter_WriteRegion, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalDefWriter}, OTF2_RegionRef, OTF2_StringRef, OTF2_StringRef, OTF2_StringRef, OTF2_RegionRole, OTF2_Paradigm, OTF2_RegionFlag, OTF2_StringRef, UInt32, UInt32), writerHandle, self, name, canonicalName, description, regionRole, paradigm, regionFlags, sourceFile, beginLineNumber, endLineNumber)
end

function OTF2_GlobalDefWriter_WriteCallsite(writerHandle, self, sourceFile, lineNumber, enteredRegion, leftRegion)
    ccall((:OTF2_GlobalDefWriter_WriteCallsite, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalDefWriter}, OTF2_CallsiteRef, OTF2_StringRef, UInt32, OTF2_RegionRef, OTF2_RegionRef), writerHandle, self, sourceFile, lineNumber, enteredRegion, leftRegion)
end

function OTF2_GlobalDefWriter_WriteCallpath(writerHandle, self, parent, region)
    ccall((:OTF2_GlobalDefWriter_WriteCallpath, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalDefWriter}, OTF2_CallpathRef, OTF2_CallpathRef, OTF2_RegionRef), writerHandle, self, parent, region)
end

function OTF2_GlobalDefWriter_WriteGroup(writerHandle, self, name, groupType, paradigm, groupFlags, numberOfMembers, members)
    ccall((:OTF2_GlobalDefWriter_WriteGroup, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalDefWriter}, OTF2_GroupRef, OTF2_StringRef, OTF2_GroupType, OTF2_Paradigm, OTF2_GroupFlag, UInt32, Ptr{UInt64}), writerHandle, self, name, groupType, paradigm, groupFlags, numberOfMembers, members)
end

function OTF2_GlobalDefWriter_WriteMetricMember(writerHandle, self, name, description, metricType, metricMode, valueType, base, exponent, unit)
    ccall((:OTF2_GlobalDefWriter_WriteMetricMember, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalDefWriter}, OTF2_MetricMemberRef, OTF2_StringRef, OTF2_StringRef, OTF2_MetricType, OTF2_MetricMode, OTF2_Type, OTF2_Base, Int64, OTF2_StringRef), writerHandle, self, name, description, metricType, metricMode, valueType, base, exponent, unit)
end

function OTF2_GlobalDefWriter_WriteMetricClass(writerHandle, self, numberOfMetrics, metricMembers, metricOccurrence, recorderKind)
    ccall((:OTF2_GlobalDefWriter_WriteMetricClass, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalDefWriter}, OTF2_MetricRef, UInt8, Ptr{OTF2_MetricMemberRef}, OTF2_MetricOccurrence, OTF2_RecorderKind), writerHandle, self, numberOfMetrics, metricMembers, metricOccurrence, recorderKind)
end

function OTF2_GlobalDefWriter_WriteMetricInstance(writerHandle, self, metricClass, recorder, metricScope, scope)
    ccall((:OTF2_GlobalDefWriter_WriteMetricInstance, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalDefWriter}, OTF2_MetricRef, OTF2_MetricRef, OTF2_LocationRef, OTF2_MetricScope, UInt64), writerHandle, self, metricClass, recorder, metricScope, scope)
end

function OTF2_GlobalDefWriter_WriteComm(writerHandle, self, name, group, parent, flags)
    ccall((:OTF2_GlobalDefWriter_WriteComm, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalDefWriter}, OTF2_CommRef, OTF2_StringRef, OTF2_GroupRef, OTF2_CommRef, OTF2_CommFlag), writerHandle, self, name, group, parent, flags)
end

function OTF2_GlobalDefWriter_WriteParameter(writerHandle, self, name, parameterType)
    ccall((:OTF2_GlobalDefWriter_WriteParameter, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalDefWriter}, OTF2_ParameterRef, OTF2_StringRef, OTF2_ParameterType), writerHandle, self, name, parameterType)
end

function OTF2_GlobalDefWriter_WriteRmaWin(writerHandle, self, name, comm, flags)
    ccall((:OTF2_GlobalDefWriter_WriteRmaWin, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalDefWriter}, OTF2_RmaWinRef, OTF2_StringRef, OTF2_CommRef, OTF2_RmaWinFlag), writerHandle, self, name, comm, flags)
end

function OTF2_GlobalDefWriter_WriteMetricClassRecorder(writerHandle, metric, recorder)
    ccall((:OTF2_GlobalDefWriter_WriteMetricClassRecorder, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalDefWriter}, OTF2_MetricRef, OTF2_LocationRef), writerHandle, metric, recorder)
end

function OTF2_GlobalDefWriter_WriteSystemTreeNodeProperty(writerHandle, systemTreeNode, name, type, value)
    ccall((:OTF2_GlobalDefWriter_WriteSystemTreeNodeProperty, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalDefWriter}, OTF2_SystemTreeNodeRef, OTF2_StringRef, OTF2_Type, OTF2_AttributeValue), writerHandle, systemTreeNode, name, type, value)
end

function OTF2_GlobalDefWriter_WriteSystemTreeNodeDomain(writerHandle, systemTreeNode, systemTreeDomain)
    ccall((:OTF2_GlobalDefWriter_WriteSystemTreeNodeDomain, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalDefWriter}, OTF2_SystemTreeNodeRef, OTF2_SystemTreeDomain), writerHandle, systemTreeNode, systemTreeDomain)
end

function OTF2_GlobalDefWriter_WriteLocationGroupProperty(writerHandle, locationGroup, name, type, value)
    ccall((:OTF2_GlobalDefWriter_WriteLocationGroupProperty, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalDefWriter}, OTF2_LocationGroupRef, OTF2_StringRef, OTF2_Type, OTF2_AttributeValue), writerHandle, locationGroup, name, type, value)
end

function OTF2_GlobalDefWriter_WriteLocationProperty(writerHandle, location, name, type, value)
    ccall((:OTF2_GlobalDefWriter_WriteLocationProperty, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalDefWriter}, OTF2_LocationRef, OTF2_StringRef, OTF2_Type, OTF2_AttributeValue), writerHandle, location, name, type, value)
end

function OTF2_GlobalDefWriter_WriteCartDimension(writerHandle, self, name, size, cartPeriodicity)
    ccall((:OTF2_GlobalDefWriter_WriteCartDimension, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalDefWriter}, OTF2_CartDimensionRef, OTF2_StringRef, UInt32, OTF2_CartPeriodicity), writerHandle, self, name, size, cartPeriodicity)
end

function OTF2_GlobalDefWriter_WriteCartTopology(writerHandle, self, name, communicator, numberOfDimensions, cartDimensions)
    ccall((:OTF2_GlobalDefWriter_WriteCartTopology, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalDefWriter}, OTF2_CartTopologyRef, OTF2_StringRef, OTF2_CommRef, UInt8, Ptr{OTF2_CartDimensionRef}), writerHandle, self, name, communicator, numberOfDimensions, cartDimensions)
end

function OTF2_GlobalDefWriter_WriteCartCoordinate(writerHandle, cartTopology, rank, numberOfDimensions, coordinates)
    ccall((:OTF2_GlobalDefWriter_WriteCartCoordinate, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalDefWriter}, OTF2_CartTopologyRef, UInt32, UInt8, Ptr{UInt32}), writerHandle, cartTopology, rank, numberOfDimensions, coordinates)
end

function OTF2_GlobalDefWriter_WriteSourceCodeLocation(writerHandle, self, file, lineNumber)
    ccall((:OTF2_GlobalDefWriter_WriteSourceCodeLocation, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalDefWriter}, OTF2_SourceCodeLocationRef, OTF2_StringRef, UInt32), writerHandle, self, file, lineNumber)
end

function OTF2_GlobalDefWriter_WriteCallingContext(writerHandle, self, region, sourceCodeLocation, parent)
    ccall((:OTF2_GlobalDefWriter_WriteCallingContext, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalDefWriter}, OTF2_CallingContextRef, OTF2_RegionRef, OTF2_SourceCodeLocationRef, OTF2_CallingContextRef), writerHandle, self, region, sourceCodeLocation, parent)
end

function OTF2_GlobalDefWriter_WriteCallingContextProperty(writerHandle, callingContext, name, type, value)
    ccall((:OTF2_GlobalDefWriter_WriteCallingContextProperty, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalDefWriter}, OTF2_CallingContextRef, OTF2_StringRef, OTF2_Type, OTF2_AttributeValue), writerHandle, callingContext, name, type, value)
end

function OTF2_GlobalDefWriter_WriteInterruptGenerator(writerHandle, self, name, interruptGeneratorMode, base, exponent, period)
    ccall((:OTF2_GlobalDefWriter_WriteInterruptGenerator, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalDefWriter}, OTF2_InterruptGeneratorRef, OTF2_StringRef, OTF2_InterruptGeneratorMode, OTF2_Base, Int64, UInt64), writerHandle, self, name, interruptGeneratorMode, base, exponent, period)
end

function OTF2_GlobalDefWriter_WriteIoFileProperty(writerHandle, ioFile, name, type, value)
    ccall((:OTF2_GlobalDefWriter_WriteIoFileProperty, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalDefWriter}, OTF2_IoFileRef, OTF2_StringRef, OTF2_Type, OTF2_AttributeValue), writerHandle, ioFile, name, type, value)
end

function OTF2_GlobalDefWriter_WriteIoRegularFile(writerHandle, self, name, scope)
    ccall((:OTF2_GlobalDefWriter_WriteIoRegularFile, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalDefWriter}, OTF2_IoFileRef, OTF2_StringRef, OTF2_SystemTreeNodeRef), writerHandle, self, name, scope)
end

function OTF2_GlobalDefWriter_WriteIoDirectory(writerHandle, self, name, scope)
    ccall((:OTF2_GlobalDefWriter_WriteIoDirectory, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalDefWriter}, OTF2_IoFileRef, OTF2_StringRef, OTF2_SystemTreeNodeRef), writerHandle, self, name, scope)
end

function OTF2_GlobalDefWriter_WriteIoHandle(writerHandle, self, name, file, ioParadigm, ioHandleFlags, comm, parent)
    ccall((:OTF2_GlobalDefWriter_WriteIoHandle, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalDefWriter}, OTF2_IoHandleRef, OTF2_StringRef, OTF2_IoFileRef, OTF2_IoParadigmRef, OTF2_IoHandleFlag, OTF2_CommRef, OTF2_IoHandleRef), writerHandle, self, name, file, ioParadigm, ioHandleFlags, comm, parent)
end

function OTF2_GlobalDefWriter_WriteIoPreCreatedHandleState(writerHandle, ioHandle, mode, statusFlags)
    ccall((:OTF2_GlobalDefWriter_WriteIoPreCreatedHandleState, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalDefWriter}, OTF2_IoHandleRef, OTF2_IoAccessMode, OTF2_IoStatusFlag), writerHandle, ioHandle, mode, statusFlags)
end

function OTF2_GlobalDefWriter_WriteCallpathParameter(writerHandle, callpath, parameter, type, value)
    ccall((:OTF2_GlobalDefWriter_WriteCallpathParameter, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalDefWriter}, OTF2_CallpathRef, OTF2_ParameterRef, OTF2_Type, OTF2_AttributeValue), writerHandle, callpath, parameter, type, value)
end

function OTF2_GlobalDefWriter_WriteInterComm(writerHandle, self, name, groupA, groupB, commonCommunicator, flags)
    ccall((:OTF2_GlobalDefWriter_WriteInterComm, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalDefWriter}, OTF2_CommRef, OTF2_StringRef, OTF2_GroupRef, OTF2_GroupRef, OTF2_CommRef, OTF2_CommFlag), writerHandle, self, name, groupA, groupB, commonCommunicator, flags)
end

mutable struct OTF2_GlobalDefReaderCallbacks_struct end

const OTF2_GlobalDefReaderCallbacks = OTF2_GlobalDefReaderCallbacks_struct

function OTF2_GlobalDefReaderCallbacks_New()
    ccall((:OTF2_GlobalDefReaderCallbacks_New, libotf2), Ptr{OTF2_GlobalDefReaderCallbacks}, ())
end

function OTF2_GlobalDefReaderCallbacks_Delete(globalDefReaderCallbacks)
    ccall((:OTF2_GlobalDefReaderCallbacks_Delete, libotf2), Cvoid, (Ptr{OTF2_GlobalDefReaderCallbacks},), globalDefReaderCallbacks)
end

function OTF2_GlobalDefReaderCallbacks_Clear(globalDefReaderCallbacks)
    ccall((:OTF2_GlobalDefReaderCallbacks_Clear, libotf2), Cvoid, (Ptr{OTF2_GlobalDefReaderCallbacks},), globalDefReaderCallbacks)
end

# typedef OTF2_CallbackCode ( * OTF2_GlobalDefReaderCallback_Unknown ) ( void * userData )
const OTF2_GlobalDefReaderCallback_Unknown = Ptr{Cvoid}

function OTF2_GlobalDefReaderCallbacks_SetUnknownCallback(globalDefReaderCallbacks, unknownCallback)
    ccall((:OTF2_GlobalDefReaderCallbacks_SetUnknownCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalDefReaderCallbacks}, OTF2_GlobalDefReaderCallback_Unknown), globalDefReaderCallbacks, unknownCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_GlobalDefReaderCallback_ClockProperties ) ( void * userData , uint64_t timerResolution , uint64_t globalOffset , uint64_t traceLength , uint64_t realtimeTimestamp )
const OTF2_GlobalDefReaderCallback_ClockProperties = Ptr{Cvoid}

function OTF2_GlobalDefReaderCallbacks_SetClockPropertiesCallback(globalDefReaderCallbacks, clockPropertiesCallback)
    ccall((:OTF2_GlobalDefReaderCallbacks_SetClockPropertiesCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalDefReaderCallbacks}, OTF2_GlobalDefReaderCallback_ClockProperties), globalDefReaderCallbacks, clockPropertiesCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_GlobalDefReaderCallback_Paradigm ) ( void * userData , OTF2_Paradigm paradigm , OTF2_StringRef name , OTF2_ParadigmClass paradigmClass )
const OTF2_GlobalDefReaderCallback_Paradigm = Ptr{Cvoid}

function OTF2_GlobalDefReaderCallbacks_SetParadigmCallback(globalDefReaderCallbacks, paradigmCallback)
    ccall((:OTF2_GlobalDefReaderCallbacks_SetParadigmCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalDefReaderCallbacks}, OTF2_GlobalDefReaderCallback_Paradigm), globalDefReaderCallbacks, paradigmCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_GlobalDefReaderCallback_ParadigmProperty ) ( void * userData , OTF2_Paradigm paradigm , OTF2_ParadigmProperty property , OTF2_Type type , OTF2_AttributeValue value )
const OTF2_GlobalDefReaderCallback_ParadigmProperty = Ptr{Cvoid}

function OTF2_GlobalDefReaderCallbacks_SetParadigmPropertyCallback(globalDefReaderCallbacks, paradigmPropertyCallback)
    ccall((:OTF2_GlobalDefReaderCallbacks_SetParadigmPropertyCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalDefReaderCallbacks}, OTF2_GlobalDefReaderCallback_ParadigmProperty), globalDefReaderCallbacks, paradigmPropertyCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_GlobalDefReaderCallback_IoParadigm ) ( void * userData , OTF2_IoParadigmRef self , OTF2_StringRef identification , OTF2_StringRef name , OTF2_IoParadigmClass ioParadigmClass , OTF2_IoParadigmFlag ioParadigmFlags , uint8_t numberOfProperties , const OTF2_IoParadigmProperty * properties , const OTF2_Type * types , const OTF2_AttributeValue * values )
const OTF2_GlobalDefReaderCallback_IoParadigm = Ptr{Cvoid}

function OTF2_GlobalDefReaderCallbacks_SetIoParadigmCallback(globalDefReaderCallbacks, ioParadigmCallback)
    ccall((:OTF2_GlobalDefReaderCallbacks_SetIoParadigmCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalDefReaderCallbacks}, OTF2_GlobalDefReaderCallback_IoParadigm), globalDefReaderCallbacks, ioParadigmCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_GlobalDefReaderCallback_String ) ( void * userData , OTF2_StringRef self , const char * string )
const OTF2_GlobalDefReaderCallback_String = Ptr{Cvoid}

function OTF2_GlobalDefReaderCallbacks_SetStringCallback(globalDefReaderCallbacks, stringCallback)
    ccall((:OTF2_GlobalDefReaderCallbacks_SetStringCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalDefReaderCallbacks}, OTF2_GlobalDefReaderCallback_String), globalDefReaderCallbacks, stringCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_GlobalDefReaderCallback_Attribute ) ( void * userData , OTF2_AttributeRef self , OTF2_StringRef name , OTF2_StringRef description , OTF2_Type type )
const OTF2_GlobalDefReaderCallback_Attribute = Ptr{Cvoid}

function OTF2_GlobalDefReaderCallbacks_SetAttributeCallback(globalDefReaderCallbacks, attributeCallback)
    ccall((:OTF2_GlobalDefReaderCallbacks_SetAttributeCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalDefReaderCallbacks}, OTF2_GlobalDefReaderCallback_Attribute), globalDefReaderCallbacks, attributeCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_GlobalDefReaderCallback_SystemTreeNode ) ( void * userData , OTF2_SystemTreeNodeRef self , OTF2_StringRef name , OTF2_StringRef className , OTF2_SystemTreeNodeRef parent )
const OTF2_GlobalDefReaderCallback_SystemTreeNode = Ptr{Cvoid}

function OTF2_GlobalDefReaderCallbacks_SetSystemTreeNodeCallback(globalDefReaderCallbacks, systemTreeNodeCallback)
    ccall((:OTF2_GlobalDefReaderCallbacks_SetSystemTreeNodeCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalDefReaderCallbacks}, OTF2_GlobalDefReaderCallback_SystemTreeNode), globalDefReaderCallbacks, systemTreeNodeCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_GlobalDefReaderCallback_LocationGroup ) ( void * userData , OTF2_LocationGroupRef self , OTF2_StringRef name , OTF2_LocationGroupType locationGroupType , OTF2_SystemTreeNodeRef systemTreeParent , OTF2_LocationGroupRef creatingLocationGroup )
const OTF2_GlobalDefReaderCallback_LocationGroup = Ptr{Cvoid}

function OTF2_GlobalDefReaderCallbacks_SetLocationGroupCallback(globalDefReaderCallbacks, locationGroupCallback)
    ccall((:OTF2_GlobalDefReaderCallbacks_SetLocationGroupCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalDefReaderCallbacks}, OTF2_GlobalDefReaderCallback_LocationGroup), globalDefReaderCallbacks, locationGroupCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_GlobalDefReaderCallback_Location ) ( void * userData , OTF2_LocationRef self , OTF2_StringRef name , OTF2_LocationType locationType , uint64_t numberOfEvents , OTF2_LocationGroupRef locationGroup )
const OTF2_GlobalDefReaderCallback_Location = Ptr{Cvoid}

function OTF2_GlobalDefReaderCallbacks_SetLocationCallback(globalDefReaderCallbacks, locationCallback)
    ccall((:OTF2_GlobalDefReaderCallbacks_SetLocationCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalDefReaderCallbacks}, OTF2_GlobalDefReaderCallback_Location), globalDefReaderCallbacks, locationCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_GlobalDefReaderCallback_Region ) ( void * userData , OTF2_RegionRef self , OTF2_StringRef name , OTF2_StringRef canonicalName , OTF2_StringRef description , OTF2_RegionRole regionRole , OTF2_Paradigm paradigm , OTF2_RegionFlag regionFlags , OTF2_StringRef sourceFile , uint32_t beginLineNumber , uint32_t endLineNumber )
const OTF2_GlobalDefReaderCallback_Region = Ptr{Cvoid}

function OTF2_GlobalDefReaderCallbacks_SetRegionCallback(globalDefReaderCallbacks, regionCallback)
    ccall((:OTF2_GlobalDefReaderCallbacks_SetRegionCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalDefReaderCallbacks}, OTF2_GlobalDefReaderCallback_Region), globalDefReaderCallbacks, regionCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_GlobalDefReaderCallback_Callsite ) ( void * userData , OTF2_CallsiteRef self , OTF2_StringRef sourceFile , uint32_t lineNumber , OTF2_RegionRef enteredRegion , OTF2_RegionRef leftRegion )
const OTF2_GlobalDefReaderCallback_Callsite = Ptr{Cvoid}

function OTF2_GlobalDefReaderCallbacks_SetCallsiteCallback(globalDefReaderCallbacks, callsiteCallback)
    ccall((:OTF2_GlobalDefReaderCallbacks_SetCallsiteCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalDefReaderCallbacks}, OTF2_GlobalDefReaderCallback_Callsite), globalDefReaderCallbacks, callsiteCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_GlobalDefReaderCallback_Callpath ) ( void * userData , OTF2_CallpathRef self , OTF2_CallpathRef parent , OTF2_RegionRef region )
const OTF2_GlobalDefReaderCallback_Callpath = Ptr{Cvoid}

function OTF2_GlobalDefReaderCallbacks_SetCallpathCallback(globalDefReaderCallbacks, callpathCallback)
    ccall((:OTF2_GlobalDefReaderCallbacks_SetCallpathCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalDefReaderCallbacks}, OTF2_GlobalDefReaderCallback_Callpath), globalDefReaderCallbacks, callpathCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_GlobalDefReaderCallback_Group ) ( void * userData , OTF2_GroupRef self , OTF2_StringRef name , OTF2_GroupType groupType , OTF2_Paradigm paradigm , OTF2_GroupFlag groupFlags , uint32_t numberOfMembers , const uint64_t * members )
const OTF2_GlobalDefReaderCallback_Group = Ptr{Cvoid}

function OTF2_GlobalDefReaderCallbacks_SetGroupCallback(globalDefReaderCallbacks, groupCallback)
    ccall((:OTF2_GlobalDefReaderCallbacks_SetGroupCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalDefReaderCallbacks}, OTF2_GlobalDefReaderCallback_Group), globalDefReaderCallbacks, groupCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_GlobalDefReaderCallback_MetricMember ) ( void * userData , OTF2_MetricMemberRef self , OTF2_StringRef name , OTF2_StringRef description , OTF2_MetricType metricType , OTF2_MetricMode metricMode , OTF2_Type valueType , OTF2_Base base , int64_t exponent , OTF2_StringRef unit )
const OTF2_GlobalDefReaderCallback_MetricMember = Ptr{Cvoid}

function OTF2_GlobalDefReaderCallbacks_SetMetricMemberCallback(globalDefReaderCallbacks, metricMemberCallback)
    ccall((:OTF2_GlobalDefReaderCallbacks_SetMetricMemberCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalDefReaderCallbacks}, OTF2_GlobalDefReaderCallback_MetricMember), globalDefReaderCallbacks, metricMemberCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_GlobalDefReaderCallback_MetricClass ) ( void * userData , OTF2_MetricRef self , uint8_t numberOfMetrics , const OTF2_MetricMemberRef * metricMembers , OTF2_MetricOccurrence metricOccurrence , OTF2_RecorderKind recorderKind )
const OTF2_GlobalDefReaderCallback_MetricClass = Ptr{Cvoid}

function OTF2_GlobalDefReaderCallbacks_SetMetricClassCallback(globalDefReaderCallbacks, metricClassCallback)
    ccall((:OTF2_GlobalDefReaderCallbacks_SetMetricClassCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalDefReaderCallbacks}, OTF2_GlobalDefReaderCallback_MetricClass), globalDefReaderCallbacks, metricClassCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_GlobalDefReaderCallback_MetricInstance ) ( void * userData , OTF2_MetricRef self , OTF2_MetricRef metricClass , OTF2_LocationRef recorder , OTF2_MetricScope metricScope , uint64_t scope )
const OTF2_GlobalDefReaderCallback_MetricInstance = Ptr{Cvoid}

function OTF2_GlobalDefReaderCallbacks_SetMetricInstanceCallback(globalDefReaderCallbacks, metricInstanceCallback)
    ccall((:OTF2_GlobalDefReaderCallbacks_SetMetricInstanceCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalDefReaderCallbacks}, OTF2_GlobalDefReaderCallback_MetricInstance), globalDefReaderCallbacks, metricInstanceCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_GlobalDefReaderCallback_Comm ) ( void * userData , OTF2_CommRef self , OTF2_StringRef name , OTF2_GroupRef group , OTF2_CommRef parent , OTF2_CommFlag flags )
const OTF2_GlobalDefReaderCallback_Comm = Ptr{Cvoid}

function OTF2_GlobalDefReaderCallbacks_SetCommCallback(globalDefReaderCallbacks, commCallback)
    ccall((:OTF2_GlobalDefReaderCallbacks_SetCommCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalDefReaderCallbacks}, OTF2_GlobalDefReaderCallback_Comm), globalDefReaderCallbacks, commCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_GlobalDefReaderCallback_Parameter ) ( void * userData , OTF2_ParameterRef self , OTF2_StringRef name , OTF2_ParameterType parameterType )
const OTF2_GlobalDefReaderCallback_Parameter = Ptr{Cvoid}

function OTF2_GlobalDefReaderCallbacks_SetParameterCallback(globalDefReaderCallbacks, parameterCallback)
    ccall((:OTF2_GlobalDefReaderCallbacks_SetParameterCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalDefReaderCallbacks}, OTF2_GlobalDefReaderCallback_Parameter), globalDefReaderCallbacks, parameterCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_GlobalDefReaderCallback_RmaWin ) ( void * userData , OTF2_RmaWinRef self , OTF2_StringRef name , OTF2_CommRef comm , OTF2_RmaWinFlag flags )
const OTF2_GlobalDefReaderCallback_RmaWin = Ptr{Cvoid}

function OTF2_GlobalDefReaderCallbacks_SetRmaWinCallback(globalDefReaderCallbacks, rmaWinCallback)
    ccall((:OTF2_GlobalDefReaderCallbacks_SetRmaWinCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalDefReaderCallbacks}, OTF2_GlobalDefReaderCallback_RmaWin), globalDefReaderCallbacks, rmaWinCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_GlobalDefReaderCallback_MetricClassRecorder ) ( void * userData , OTF2_MetricRef metric , OTF2_LocationRef recorder )
const OTF2_GlobalDefReaderCallback_MetricClassRecorder = Ptr{Cvoid}

function OTF2_GlobalDefReaderCallbacks_SetMetricClassRecorderCallback(globalDefReaderCallbacks, metricClassRecorderCallback)
    ccall((:OTF2_GlobalDefReaderCallbacks_SetMetricClassRecorderCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalDefReaderCallbacks}, OTF2_GlobalDefReaderCallback_MetricClassRecorder), globalDefReaderCallbacks, metricClassRecorderCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_GlobalDefReaderCallback_SystemTreeNodeProperty ) ( void * userData , OTF2_SystemTreeNodeRef systemTreeNode , OTF2_StringRef name , OTF2_Type type , OTF2_AttributeValue value )
const OTF2_GlobalDefReaderCallback_SystemTreeNodeProperty = Ptr{Cvoid}

function OTF2_GlobalDefReaderCallbacks_SetSystemTreeNodePropertyCallback(globalDefReaderCallbacks, systemTreeNodePropertyCallback)
    ccall((:OTF2_GlobalDefReaderCallbacks_SetSystemTreeNodePropertyCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalDefReaderCallbacks}, OTF2_GlobalDefReaderCallback_SystemTreeNodeProperty), globalDefReaderCallbacks, systemTreeNodePropertyCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_GlobalDefReaderCallback_SystemTreeNodeDomain ) ( void * userData , OTF2_SystemTreeNodeRef systemTreeNode , OTF2_SystemTreeDomain systemTreeDomain )
const OTF2_GlobalDefReaderCallback_SystemTreeNodeDomain = Ptr{Cvoid}

function OTF2_GlobalDefReaderCallbacks_SetSystemTreeNodeDomainCallback(globalDefReaderCallbacks, systemTreeNodeDomainCallback)
    ccall((:OTF2_GlobalDefReaderCallbacks_SetSystemTreeNodeDomainCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalDefReaderCallbacks}, OTF2_GlobalDefReaderCallback_SystemTreeNodeDomain), globalDefReaderCallbacks, systemTreeNodeDomainCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_GlobalDefReaderCallback_LocationGroupProperty ) ( void * userData , OTF2_LocationGroupRef locationGroup , OTF2_StringRef name , OTF2_Type type , OTF2_AttributeValue value )
const OTF2_GlobalDefReaderCallback_LocationGroupProperty = Ptr{Cvoid}

function OTF2_GlobalDefReaderCallbacks_SetLocationGroupPropertyCallback(globalDefReaderCallbacks, locationGroupPropertyCallback)
    ccall((:OTF2_GlobalDefReaderCallbacks_SetLocationGroupPropertyCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalDefReaderCallbacks}, OTF2_GlobalDefReaderCallback_LocationGroupProperty), globalDefReaderCallbacks, locationGroupPropertyCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_GlobalDefReaderCallback_LocationProperty ) ( void * userData , OTF2_LocationRef location , OTF2_StringRef name , OTF2_Type type , OTF2_AttributeValue value )
const OTF2_GlobalDefReaderCallback_LocationProperty = Ptr{Cvoid}

function OTF2_GlobalDefReaderCallbacks_SetLocationPropertyCallback(globalDefReaderCallbacks, locationPropertyCallback)
    ccall((:OTF2_GlobalDefReaderCallbacks_SetLocationPropertyCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalDefReaderCallbacks}, OTF2_GlobalDefReaderCallback_LocationProperty), globalDefReaderCallbacks, locationPropertyCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_GlobalDefReaderCallback_CartDimension ) ( void * userData , OTF2_CartDimensionRef self , OTF2_StringRef name , uint32_t size , OTF2_CartPeriodicity cartPeriodicity )
const OTF2_GlobalDefReaderCallback_CartDimension = Ptr{Cvoid}

function OTF2_GlobalDefReaderCallbacks_SetCartDimensionCallback(globalDefReaderCallbacks, cartDimensionCallback)
    ccall((:OTF2_GlobalDefReaderCallbacks_SetCartDimensionCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalDefReaderCallbacks}, OTF2_GlobalDefReaderCallback_CartDimension), globalDefReaderCallbacks, cartDimensionCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_GlobalDefReaderCallback_CartTopology ) ( void * userData , OTF2_CartTopologyRef self , OTF2_StringRef name , OTF2_CommRef communicator , uint8_t numberOfDimensions , const OTF2_CartDimensionRef * cartDimensions )
const OTF2_GlobalDefReaderCallback_CartTopology = Ptr{Cvoid}

function OTF2_GlobalDefReaderCallbacks_SetCartTopologyCallback(globalDefReaderCallbacks, cartTopologyCallback)
    ccall((:OTF2_GlobalDefReaderCallbacks_SetCartTopologyCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalDefReaderCallbacks}, OTF2_GlobalDefReaderCallback_CartTopology), globalDefReaderCallbacks, cartTopologyCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_GlobalDefReaderCallback_CartCoordinate ) ( void * userData , OTF2_CartTopologyRef cartTopology , uint32_t rank , uint8_t numberOfDimensions , const uint32_t * coordinates )
const OTF2_GlobalDefReaderCallback_CartCoordinate = Ptr{Cvoid}

function OTF2_GlobalDefReaderCallbacks_SetCartCoordinateCallback(globalDefReaderCallbacks, cartCoordinateCallback)
    ccall((:OTF2_GlobalDefReaderCallbacks_SetCartCoordinateCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalDefReaderCallbacks}, OTF2_GlobalDefReaderCallback_CartCoordinate), globalDefReaderCallbacks, cartCoordinateCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_GlobalDefReaderCallback_SourceCodeLocation ) ( void * userData , OTF2_SourceCodeLocationRef self , OTF2_StringRef file , uint32_t lineNumber )
const OTF2_GlobalDefReaderCallback_SourceCodeLocation = Ptr{Cvoid}

function OTF2_GlobalDefReaderCallbacks_SetSourceCodeLocationCallback(globalDefReaderCallbacks, sourceCodeLocationCallback)
    ccall((:OTF2_GlobalDefReaderCallbacks_SetSourceCodeLocationCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalDefReaderCallbacks}, OTF2_GlobalDefReaderCallback_SourceCodeLocation), globalDefReaderCallbacks, sourceCodeLocationCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_GlobalDefReaderCallback_CallingContext ) ( void * userData , OTF2_CallingContextRef self , OTF2_RegionRef region , OTF2_SourceCodeLocationRef sourceCodeLocation , OTF2_CallingContextRef parent )
const OTF2_GlobalDefReaderCallback_CallingContext = Ptr{Cvoid}

function OTF2_GlobalDefReaderCallbacks_SetCallingContextCallback(globalDefReaderCallbacks, callingContextCallback)
    ccall((:OTF2_GlobalDefReaderCallbacks_SetCallingContextCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalDefReaderCallbacks}, OTF2_GlobalDefReaderCallback_CallingContext), globalDefReaderCallbacks, callingContextCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_GlobalDefReaderCallback_CallingContextProperty ) ( void * userData , OTF2_CallingContextRef callingContext , OTF2_StringRef name , OTF2_Type type , OTF2_AttributeValue value )
const OTF2_GlobalDefReaderCallback_CallingContextProperty = Ptr{Cvoid}

function OTF2_GlobalDefReaderCallbacks_SetCallingContextPropertyCallback(globalDefReaderCallbacks, callingContextPropertyCallback)
    ccall((:OTF2_GlobalDefReaderCallbacks_SetCallingContextPropertyCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalDefReaderCallbacks}, OTF2_GlobalDefReaderCallback_CallingContextProperty), globalDefReaderCallbacks, callingContextPropertyCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_GlobalDefReaderCallback_InterruptGenerator ) ( void * userData , OTF2_InterruptGeneratorRef self , OTF2_StringRef name , OTF2_InterruptGeneratorMode interruptGeneratorMode , OTF2_Base base , int64_t exponent , uint64_t period )
const OTF2_GlobalDefReaderCallback_InterruptGenerator = Ptr{Cvoid}

function OTF2_GlobalDefReaderCallbacks_SetInterruptGeneratorCallback(globalDefReaderCallbacks, interruptGeneratorCallback)
    ccall((:OTF2_GlobalDefReaderCallbacks_SetInterruptGeneratorCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalDefReaderCallbacks}, OTF2_GlobalDefReaderCallback_InterruptGenerator), globalDefReaderCallbacks, interruptGeneratorCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_GlobalDefReaderCallback_IoFileProperty ) ( void * userData , OTF2_IoFileRef ioFile , OTF2_StringRef name , OTF2_Type type , OTF2_AttributeValue value )
const OTF2_GlobalDefReaderCallback_IoFileProperty = Ptr{Cvoid}

function OTF2_GlobalDefReaderCallbacks_SetIoFilePropertyCallback(globalDefReaderCallbacks, ioFilePropertyCallback)
    ccall((:OTF2_GlobalDefReaderCallbacks_SetIoFilePropertyCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalDefReaderCallbacks}, OTF2_GlobalDefReaderCallback_IoFileProperty), globalDefReaderCallbacks, ioFilePropertyCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_GlobalDefReaderCallback_IoRegularFile ) ( void * userData , OTF2_IoFileRef self , OTF2_StringRef name , OTF2_SystemTreeNodeRef scope )
const OTF2_GlobalDefReaderCallback_IoRegularFile = Ptr{Cvoid}

function OTF2_GlobalDefReaderCallbacks_SetIoRegularFileCallback(globalDefReaderCallbacks, ioRegularFileCallback)
    ccall((:OTF2_GlobalDefReaderCallbacks_SetIoRegularFileCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalDefReaderCallbacks}, OTF2_GlobalDefReaderCallback_IoRegularFile), globalDefReaderCallbacks, ioRegularFileCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_GlobalDefReaderCallback_IoDirectory ) ( void * userData , OTF2_IoFileRef self , OTF2_StringRef name , OTF2_SystemTreeNodeRef scope )
const OTF2_GlobalDefReaderCallback_IoDirectory = Ptr{Cvoid}

function OTF2_GlobalDefReaderCallbacks_SetIoDirectoryCallback(globalDefReaderCallbacks, ioDirectoryCallback)
    ccall((:OTF2_GlobalDefReaderCallbacks_SetIoDirectoryCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalDefReaderCallbacks}, OTF2_GlobalDefReaderCallback_IoDirectory), globalDefReaderCallbacks, ioDirectoryCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_GlobalDefReaderCallback_IoHandle ) ( void * userData , OTF2_IoHandleRef self , OTF2_StringRef name , OTF2_IoFileRef file , OTF2_IoParadigmRef ioParadigm , OTF2_IoHandleFlag ioHandleFlags , OTF2_CommRef comm , OTF2_IoHandleRef parent )
const OTF2_GlobalDefReaderCallback_IoHandle = Ptr{Cvoid}

function OTF2_GlobalDefReaderCallbacks_SetIoHandleCallback(globalDefReaderCallbacks, ioHandleCallback)
    ccall((:OTF2_GlobalDefReaderCallbacks_SetIoHandleCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalDefReaderCallbacks}, OTF2_GlobalDefReaderCallback_IoHandle), globalDefReaderCallbacks, ioHandleCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_GlobalDefReaderCallback_IoPreCreatedHandleState ) ( void * userData , OTF2_IoHandleRef ioHandle , OTF2_IoAccessMode mode , OTF2_IoStatusFlag statusFlags )
const OTF2_GlobalDefReaderCallback_IoPreCreatedHandleState = Ptr{Cvoid}

function OTF2_GlobalDefReaderCallbacks_SetIoPreCreatedHandleStateCallback(globalDefReaderCallbacks, ioPreCreatedHandleStateCallback)
    ccall((:OTF2_GlobalDefReaderCallbacks_SetIoPreCreatedHandleStateCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalDefReaderCallbacks}, OTF2_GlobalDefReaderCallback_IoPreCreatedHandleState), globalDefReaderCallbacks, ioPreCreatedHandleStateCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_GlobalDefReaderCallback_CallpathParameter ) ( void * userData , OTF2_CallpathRef callpath , OTF2_ParameterRef parameter , OTF2_Type type , OTF2_AttributeValue value )
const OTF2_GlobalDefReaderCallback_CallpathParameter = Ptr{Cvoid}

function OTF2_GlobalDefReaderCallbacks_SetCallpathParameterCallback(globalDefReaderCallbacks, callpathParameterCallback)
    ccall((:OTF2_GlobalDefReaderCallbacks_SetCallpathParameterCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalDefReaderCallbacks}, OTF2_GlobalDefReaderCallback_CallpathParameter), globalDefReaderCallbacks, callpathParameterCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_GlobalDefReaderCallback_InterComm ) ( void * userData , OTF2_CommRef self , OTF2_StringRef name , OTF2_GroupRef groupA , OTF2_GroupRef groupB , OTF2_CommRef commonCommunicator , OTF2_CommFlag flags )
const OTF2_GlobalDefReaderCallback_InterComm = Ptr{Cvoid}

function OTF2_GlobalDefReaderCallbacks_SetInterCommCallback(globalDefReaderCallbacks, interCommCallback)
    ccall((:OTF2_GlobalDefReaderCallbacks_SetInterCommCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalDefReaderCallbacks}, OTF2_GlobalDefReaderCallback_InterComm), globalDefReaderCallbacks, interCommCallback)
end

function OTF2_GlobalDefReader_SetCallbacks(reader, callbacks, userData)
    ccall((:OTF2_GlobalDefReader_SetCallbacks, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalDefReader}, Ptr{OTF2_GlobalDefReaderCallbacks}, Ptr{Cvoid}), reader, callbacks, userData)
end

function OTF2_GlobalDefReader_ReadDefinitions(reader, recordsToRead, recordsRead)
    ccall((:OTF2_GlobalDefReader_ReadDefinitions, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalDefReader}, UInt64, Ptr{UInt64}), reader, recordsToRead, recordsRead)
end

mutable struct OTF2_GlobalEvtReaderCallbacks_struct end

const OTF2_GlobalEvtReaderCallbacks = OTF2_GlobalEvtReaderCallbacks_struct

function OTF2_GlobalEvtReaderCallbacks_New()
    ccall((:OTF2_GlobalEvtReaderCallbacks_New, libotf2), Ptr{OTF2_GlobalEvtReaderCallbacks}, ())
end

function OTF2_GlobalEvtReaderCallbacks_Delete(globalEvtReaderCallbacks)
    ccall((:OTF2_GlobalEvtReaderCallbacks_Delete, libotf2), Cvoid, (Ptr{OTF2_GlobalEvtReaderCallbacks},), globalEvtReaderCallbacks)
end

function OTF2_GlobalEvtReaderCallbacks_Clear(globalEvtReaderCallbacks)
    ccall((:OTF2_GlobalEvtReaderCallbacks_Clear, libotf2), Cvoid, (Ptr{OTF2_GlobalEvtReaderCallbacks},), globalEvtReaderCallbacks)
end

# typedef OTF2_CallbackCode ( * OTF2_GlobalEvtReaderCallback_Unknown ) ( OTF2_LocationRef locationID , OTF2_TimeStamp time , void * userData , OTF2_AttributeList * attributeList )
const OTF2_GlobalEvtReaderCallback_Unknown = Ptr{Cvoid}

function OTF2_GlobalEvtReaderCallbacks_SetUnknownCallback(globalEvtReaderCallbacks, unknownCallback)
    ccall((:OTF2_GlobalEvtReaderCallbacks_SetUnknownCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalEvtReaderCallbacks}, OTF2_GlobalEvtReaderCallback_Unknown), globalEvtReaderCallbacks, unknownCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_GlobalEvtReaderCallback_BufferFlush ) ( OTF2_LocationRef locationID , OTF2_TimeStamp time , void * userData , OTF2_AttributeList * attributeList , OTF2_TimeStamp stopTime )
const OTF2_GlobalEvtReaderCallback_BufferFlush = Ptr{Cvoid}

function OTF2_GlobalEvtReaderCallbacks_SetBufferFlushCallback(globalEvtReaderCallbacks, bufferFlushCallback)
    ccall((:OTF2_GlobalEvtReaderCallbacks_SetBufferFlushCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalEvtReaderCallbacks}, OTF2_GlobalEvtReaderCallback_BufferFlush), globalEvtReaderCallbacks, bufferFlushCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_GlobalEvtReaderCallback_MeasurementOnOff ) ( OTF2_LocationRef locationID , OTF2_TimeStamp time , void * userData , OTF2_AttributeList * attributeList , OTF2_MeasurementMode measurementMode )
const OTF2_GlobalEvtReaderCallback_MeasurementOnOff = Ptr{Cvoid}

function OTF2_GlobalEvtReaderCallbacks_SetMeasurementOnOffCallback(globalEvtReaderCallbacks, measurementOnOffCallback)
    ccall((:OTF2_GlobalEvtReaderCallbacks_SetMeasurementOnOffCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalEvtReaderCallbacks}, OTF2_GlobalEvtReaderCallback_MeasurementOnOff), globalEvtReaderCallbacks, measurementOnOffCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_GlobalEvtReaderCallback_Enter ) ( OTF2_LocationRef locationID , OTF2_TimeStamp time , void * userData , OTF2_AttributeList * attributeList , OTF2_RegionRef region )
const OTF2_GlobalEvtReaderCallback_Enter = Ptr{Cvoid}

function OTF2_GlobalEvtReaderCallbacks_SetEnterCallback(globalEvtReaderCallbacks, enterCallback)
    ccall((:OTF2_GlobalEvtReaderCallbacks_SetEnterCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalEvtReaderCallbacks}, OTF2_GlobalEvtReaderCallback_Enter), globalEvtReaderCallbacks, enterCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_GlobalEvtReaderCallback_Leave ) ( OTF2_LocationRef locationID , OTF2_TimeStamp time , void * userData , OTF2_AttributeList * attributeList , OTF2_RegionRef region )
const OTF2_GlobalEvtReaderCallback_Leave = Ptr{Cvoid}

function OTF2_GlobalEvtReaderCallbacks_SetLeaveCallback(globalEvtReaderCallbacks, leaveCallback)
    ccall((:OTF2_GlobalEvtReaderCallbacks_SetLeaveCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalEvtReaderCallbacks}, OTF2_GlobalEvtReaderCallback_Leave), globalEvtReaderCallbacks, leaveCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_GlobalEvtReaderCallback_MpiSend ) ( OTF2_LocationRef locationID , OTF2_TimeStamp time , void * userData , OTF2_AttributeList * attributeList , uint32_t receiver , OTF2_CommRef communicator , uint32_t msgTag , uint64_t msgLength )
const OTF2_GlobalEvtReaderCallback_MpiSend = Ptr{Cvoid}

function OTF2_GlobalEvtReaderCallbacks_SetMpiSendCallback(globalEvtReaderCallbacks, mpiSendCallback)
    ccall((:OTF2_GlobalEvtReaderCallbacks_SetMpiSendCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalEvtReaderCallbacks}, OTF2_GlobalEvtReaderCallback_MpiSend), globalEvtReaderCallbacks, mpiSendCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_GlobalEvtReaderCallback_MpiIsend ) ( OTF2_LocationRef locationID , OTF2_TimeStamp time , void * userData , OTF2_AttributeList * attributeList , uint32_t receiver , OTF2_CommRef communicator , uint32_t msgTag , uint64_t msgLength , uint64_t requestID )
const OTF2_GlobalEvtReaderCallback_MpiIsend = Ptr{Cvoid}

function OTF2_GlobalEvtReaderCallbacks_SetMpiIsendCallback(globalEvtReaderCallbacks, mpiIsendCallback)
    ccall((:OTF2_GlobalEvtReaderCallbacks_SetMpiIsendCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalEvtReaderCallbacks}, OTF2_GlobalEvtReaderCallback_MpiIsend), globalEvtReaderCallbacks, mpiIsendCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_GlobalEvtReaderCallback_MpiIsendComplete ) ( OTF2_LocationRef locationID , OTF2_TimeStamp time , void * userData , OTF2_AttributeList * attributeList , uint64_t requestID )
const OTF2_GlobalEvtReaderCallback_MpiIsendComplete = Ptr{Cvoid}

function OTF2_GlobalEvtReaderCallbacks_SetMpiIsendCompleteCallback(globalEvtReaderCallbacks, mpiIsendCompleteCallback)
    ccall((:OTF2_GlobalEvtReaderCallbacks_SetMpiIsendCompleteCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalEvtReaderCallbacks}, OTF2_GlobalEvtReaderCallback_MpiIsendComplete), globalEvtReaderCallbacks, mpiIsendCompleteCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_GlobalEvtReaderCallback_MpiIrecvRequest ) ( OTF2_LocationRef locationID , OTF2_TimeStamp time , void * userData , OTF2_AttributeList * attributeList , uint64_t requestID )
const OTF2_GlobalEvtReaderCallback_MpiIrecvRequest = Ptr{Cvoid}

function OTF2_GlobalEvtReaderCallbacks_SetMpiIrecvRequestCallback(globalEvtReaderCallbacks, mpiIrecvRequestCallback)
    ccall((:OTF2_GlobalEvtReaderCallbacks_SetMpiIrecvRequestCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalEvtReaderCallbacks}, OTF2_GlobalEvtReaderCallback_MpiIrecvRequest), globalEvtReaderCallbacks, mpiIrecvRequestCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_GlobalEvtReaderCallback_MpiRecv ) ( OTF2_LocationRef locationID , OTF2_TimeStamp time , void * userData , OTF2_AttributeList * attributeList , uint32_t sender , OTF2_CommRef communicator , uint32_t msgTag , uint64_t msgLength )
const OTF2_GlobalEvtReaderCallback_MpiRecv = Ptr{Cvoid}

function OTF2_GlobalEvtReaderCallbacks_SetMpiRecvCallback(globalEvtReaderCallbacks, mpiRecvCallback)
    ccall((:OTF2_GlobalEvtReaderCallbacks_SetMpiRecvCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalEvtReaderCallbacks}, OTF2_GlobalEvtReaderCallback_MpiRecv), globalEvtReaderCallbacks, mpiRecvCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_GlobalEvtReaderCallback_MpiIrecv ) ( OTF2_LocationRef locationID , OTF2_TimeStamp time , void * userData , OTF2_AttributeList * attributeList , uint32_t sender , OTF2_CommRef communicator , uint32_t msgTag , uint64_t msgLength , uint64_t requestID )
const OTF2_GlobalEvtReaderCallback_MpiIrecv = Ptr{Cvoid}

function OTF2_GlobalEvtReaderCallbacks_SetMpiIrecvCallback(globalEvtReaderCallbacks, mpiIrecvCallback)
    ccall((:OTF2_GlobalEvtReaderCallbacks_SetMpiIrecvCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalEvtReaderCallbacks}, OTF2_GlobalEvtReaderCallback_MpiIrecv), globalEvtReaderCallbacks, mpiIrecvCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_GlobalEvtReaderCallback_MpiRequestTest ) ( OTF2_LocationRef locationID , OTF2_TimeStamp time , void * userData , OTF2_AttributeList * attributeList , uint64_t requestID )
const OTF2_GlobalEvtReaderCallback_MpiRequestTest = Ptr{Cvoid}

function OTF2_GlobalEvtReaderCallbacks_SetMpiRequestTestCallback(globalEvtReaderCallbacks, mpiRequestTestCallback)
    ccall((:OTF2_GlobalEvtReaderCallbacks_SetMpiRequestTestCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalEvtReaderCallbacks}, OTF2_GlobalEvtReaderCallback_MpiRequestTest), globalEvtReaderCallbacks, mpiRequestTestCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_GlobalEvtReaderCallback_MpiRequestCancelled ) ( OTF2_LocationRef locationID , OTF2_TimeStamp time , void * userData , OTF2_AttributeList * attributeList , uint64_t requestID )
const OTF2_GlobalEvtReaderCallback_MpiRequestCancelled = Ptr{Cvoid}

function OTF2_GlobalEvtReaderCallbacks_SetMpiRequestCancelledCallback(globalEvtReaderCallbacks, mpiRequestCancelledCallback)
    ccall((:OTF2_GlobalEvtReaderCallbacks_SetMpiRequestCancelledCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalEvtReaderCallbacks}, OTF2_GlobalEvtReaderCallback_MpiRequestCancelled), globalEvtReaderCallbacks, mpiRequestCancelledCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_GlobalEvtReaderCallback_MpiCollectiveBegin ) ( OTF2_LocationRef locationID , OTF2_TimeStamp time , void * userData , OTF2_AttributeList * attributeList )
const OTF2_GlobalEvtReaderCallback_MpiCollectiveBegin = Ptr{Cvoid}

function OTF2_GlobalEvtReaderCallbacks_SetMpiCollectiveBeginCallback(globalEvtReaderCallbacks, mpiCollectiveBeginCallback)
    ccall((:OTF2_GlobalEvtReaderCallbacks_SetMpiCollectiveBeginCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalEvtReaderCallbacks}, OTF2_GlobalEvtReaderCallback_MpiCollectiveBegin), globalEvtReaderCallbacks, mpiCollectiveBeginCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_GlobalEvtReaderCallback_MpiCollectiveEnd ) ( OTF2_LocationRef locationID , OTF2_TimeStamp time , void * userData , OTF2_AttributeList * attributeList , OTF2_CollectiveOp collectiveOp , OTF2_CommRef communicator , uint32_t root , uint64_t sizeSent , uint64_t sizeReceived )
const OTF2_GlobalEvtReaderCallback_MpiCollectiveEnd = Ptr{Cvoid}

function OTF2_GlobalEvtReaderCallbacks_SetMpiCollectiveEndCallback(globalEvtReaderCallbacks, mpiCollectiveEndCallback)
    ccall((:OTF2_GlobalEvtReaderCallbacks_SetMpiCollectiveEndCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalEvtReaderCallbacks}, OTF2_GlobalEvtReaderCallback_MpiCollectiveEnd), globalEvtReaderCallbacks, mpiCollectiveEndCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_GlobalEvtReaderCallback_OmpFork ) ( OTF2_LocationRef locationID , OTF2_TimeStamp time , void * userData , OTF2_AttributeList * attributeList , uint32_t numberOfRequestedThreads )
const OTF2_GlobalEvtReaderCallback_OmpFork = Ptr{Cvoid}

function OTF2_GlobalEvtReaderCallbacks_SetOmpForkCallback(globalEvtReaderCallbacks, ompForkCallback)
    ccall((:OTF2_GlobalEvtReaderCallbacks_SetOmpForkCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalEvtReaderCallbacks}, OTF2_GlobalEvtReaderCallback_OmpFork), globalEvtReaderCallbacks, ompForkCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_GlobalEvtReaderCallback_OmpJoin ) ( OTF2_LocationRef locationID , OTF2_TimeStamp time , void * userData , OTF2_AttributeList * attributeList )
const OTF2_GlobalEvtReaderCallback_OmpJoin = Ptr{Cvoid}

function OTF2_GlobalEvtReaderCallbacks_SetOmpJoinCallback(globalEvtReaderCallbacks, ompJoinCallback)
    ccall((:OTF2_GlobalEvtReaderCallbacks_SetOmpJoinCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalEvtReaderCallbacks}, OTF2_GlobalEvtReaderCallback_OmpJoin), globalEvtReaderCallbacks, ompJoinCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_GlobalEvtReaderCallback_OmpAcquireLock ) ( OTF2_LocationRef locationID , OTF2_TimeStamp time , void * userData , OTF2_AttributeList * attributeList , uint32_t lockID , uint32_t acquisitionOrder )
const OTF2_GlobalEvtReaderCallback_OmpAcquireLock = Ptr{Cvoid}

function OTF2_GlobalEvtReaderCallbacks_SetOmpAcquireLockCallback(globalEvtReaderCallbacks, ompAcquireLockCallback)
    ccall((:OTF2_GlobalEvtReaderCallbacks_SetOmpAcquireLockCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalEvtReaderCallbacks}, OTF2_GlobalEvtReaderCallback_OmpAcquireLock), globalEvtReaderCallbacks, ompAcquireLockCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_GlobalEvtReaderCallback_OmpReleaseLock ) ( OTF2_LocationRef locationID , OTF2_TimeStamp time , void * userData , OTF2_AttributeList * attributeList , uint32_t lockID , uint32_t acquisitionOrder )
const OTF2_GlobalEvtReaderCallback_OmpReleaseLock = Ptr{Cvoid}

function OTF2_GlobalEvtReaderCallbacks_SetOmpReleaseLockCallback(globalEvtReaderCallbacks, ompReleaseLockCallback)
    ccall((:OTF2_GlobalEvtReaderCallbacks_SetOmpReleaseLockCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalEvtReaderCallbacks}, OTF2_GlobalEvtReaderCallback_OmpReleaseLock), globalEvtReaderCallbacks, ompReleaseLockCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_GlobalEvtReaderCallback_OmpTaskCreate ) ( OTF2_LocationRef locationID , OTF2_TimeStamp time , void * userData , OTF2_AttributeList * attributeList , uint64_t taskID )
const OTF2_GlobalEvtReaderCallback_OmpTaskCreate = Ptr{Cvoid}

function OTF2_GlobalEvtReaderCallbacks_SetOmpTaskCreateCallback(globalEvtReaderCallbacks, ompTaskCreateCallback)
    ccall((:OTF2_GlobalEvtReaderCallbacks_SetOmpTaskCreateCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalEvtReaderCallbacks}, OTF2_GlobalEvtReaderCallback_OmpTaskCreate), globalEvtReaderCallbacks, ompTaskCreateCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_GlobalEvtReaderCallback_OmpTaskSwitch ) ( OTF2_LocationRef locationID , OTF2_TimeStamp time , void * userData , OTF2_AttributeList * attributeList , uint64_t taskID )
const OTF2_GlobalEvtReaderCallback_OmpTaskSwitch = Ptr{Cvoid}

function OTF2_GlobalEvtReaderCallbacks_SetOmpTaskSwitchCallback(globalEvtReaderCallbacks, ompTaskSwitchCallback)
    ccall((:OTF2_GlobalEvtReaderCallbacks_SetOmpTaskSwitchCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalEvtReaderCallbacks}, OTF2_GlobalEvtReaderCallback_OmpTaskSwitch), globalEvtReaderCallbacks, ompTaskSwitchCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_GlobalEvtReaderCallback_OmpTaskComplete ) ( OTF2_LocationRef locationID , OTF2_TimeStamp time , void * userData , OTF2_AttributeList * attributeList , uint64_t taskID )
const OTF2_GlobalEvtReaderCallback_OmpTaskComplete = Ptr{Cvoid}

function OTF2_GlobalEvtReaderCallbacks_SetOmpTaskCompleteCallback(globalEvtReaderCallbacks, ompTaskCompleteCallback)
    ccall((:OTF2_GlobalEvtReaderCallbacks_SetOmpTaskCompleteCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalEvtReaderCallbacks}, OTF2_GlobalEvtReaderCallback_OmpTaskComplete), globalEvtReaderCallbacks, ompTaskCompleteCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_GlobalEvtReaderCallback_Metric ) ( OTF2_LocationRef locationID , OTF2_TimeStamp time , void * userData , OTF2_AttributeList * attributeList , OTF2_MetricRef metric , uint8_t numberOfMetrics , const OTF2_Type * typeIDs , const OTF2_MetricValue * metricValues )
const OTF2_GlobalEvtReaderCallback_Metric = Ptr{Cvoid}

function OTF2_GlobalEvtReaderCallbacks_SetMetricCallback(globalEvtReaderCallbacks, metricCallback)
    ccall((:OTF2_GlobalEvtReaderCallbacks_SetMetricCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalEvtReaderCallbacks}, OTF2_GlobalEvtReaderCallback_Metric), globalEvtReaderCallbacks, metricCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_GlobalEvtReaderCallback_ParameterString ) ( OTF2_LocationRef locationID , OTF2_TimeStamp time , void * userData , OTF2_AttributeList * attributeList , OTF2_ParameterRef parameter , OTF2_StringRef string )
const OTF2_GlobalEvtReaderCallback_ParameterString = Ptr{Cvoid}

function OTF2_GlobalEvtReaderCallbacks_SetParameterStringCallback(globalEvtReaderCallbacks, parameterStringCallback)
    ccall((:OTF2_GlobalEvtReaderCallbacks_SetParameterStringCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalEvtReaderCallbacks}, OTF2_GlobalEvtReaderCallback_ParameterString), globalEvtReaderCallbacks, parameterStringCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_GlobalEvtReaderCallback_ParameterInt ) ( OTF2_LocationRef locationID , OTF2_TimeStamp time , void * userData , OTF2_AttributeList * attributeList , OTF2_ParameterRef parameter , int64_t value )
const OTF2_GlobalEvtReaderCallback_ParameterInt = Ptr{Cvoid}

function OTF2_GlobalEvtReaderCallbacks_SetParameterIntCallback(globalEvtReaderCallbacks, parameterIntCallback)
    ccall((:OTF2_GlobalEvtReaderCallbacks_SetParameterIntCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalEvtReaderCallbacks}, OTF2_GlobalEvtReaderCallback_ParameterInt), globalEvtReaderCallbacks, parameterIntCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_GlobalEvtReaderCallback_ParameterUnsignedInt ) ( OTF2_LocationRef locationID , OTF2_TimeStamp time , void * userData , OTF2_AttributeList * attributeList , OTF2_ParameterRef parameter , uint64_t value )
const OTF2_GlobalEvtReaderCallback_ParameterUnsignedInt = Ptr{Cvoid}

function OTF2_GlobalEvtReaderCallbacks_SetParameterUnsignedIntCallback(globalEvtReaderCallbacks, parameterUnsignedIntCallback)
    ccall((:OTF2_GlobalEvtReaderCallbacks_SetParameterUnsignedIntCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalEvtReaderCallbacks}, OTF2_GlobalEvtReaderCallback_ParameterUnsignedInt), globalEvtReaderCallbacks, parameterUnsignedIntCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_GlobalEvtReaderCallback_RmaWinCreate ) ( OTF2_LocationRef locationID , OTF2_TimeStamp time , void * userData , OTF2_AttributeList * attributeList , OTF2_RmaWinRef win )
const OTF2_GlobalEvtReaderCallback_RmaWinCreate = Ptr{Cvoid}

function OTF2_GlobalEvtReaderCallbacks_SetRmaWinCreateCallback(globalEvtReaderCallbacks, rmaWinCreateCallback)
    ccall((:OTF2_GlobalEvtReaderCallbacks_SetRmaWinCreateCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalEvtReaderCallbacks}, OTF2_GlobalEvtReaderCallback_RmaWinCreate), globalEvtReaderCallbacks, rmaWinCreateCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_GlobalEvtReaderCallback_RmaWinDestroy ) ( OTF2_LocationRef locationID , OTF2_TimeStamp time , void * userData , OTF2_AttributeList * attributeList , OTF2_RmaWinRef win )
const OTF2_GlobalEvtReaderCallback_RmaWinDestroy = Ptr{Cvoid}

function OTF2_GlobalEvtReaderCallbacks_SetRmaWinDestroyCallback(globalEvtReaderCallbacks, rmaWinDestroyCallback)
    ccall((:OTF2_GlobalEvtReaderCallbacks_SetRmaWinDestroyCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalEvtReaderCallbacks}, OTF2_GlobalEvtReaderCallback_RmaWinDestroy), globalEvtReaderCallbacks, rmaWinDestroyCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_GlobalEvtReaderCallback_RmaCollectiveBegin ) ( OTF2_LocationRef locationID , OTF2_TimeStamp time , void * userData , OTF2_AttributeList * attributeList )
const OTF2_GlobalEvtReaderCallback_RmaCollectiveBegin = Ptr{Cvoid}

function OTF2_GlobalEvtReaderCallbacks_SetRmaCollectiveBeginCallback(globalEvtReaderCallbacks, rmaCollectiveBeginCallback)
    ccall((:OTF2_GlobalEvtReaderCallbacks_SetRmaCollectiveBeginCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalEvtReaderCallbacks}, OTF2_GlobalEvtReaderCallback_RmaCollectiveBegin), globalEvtReaderCallbacks, rmaCollectiveBeginCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_GlobalEvtReaderCallback_RmaCollectiveEnd ) ( OTF2_LocationRef locationID , OTF2_TimeStamp time , void * userData , OTF2_AttributeList * attributeList , OTF2_CollectiveOp collectiveOp , OTF2_RmaSyncLevel syncLevel , OTF2_RmaWinRef win , uint32_t root , uint64_t bytesSent , uint64_t bytesReceived )
const OTF2_GlobalEvtReaderCallback_RmaCollectiveEnd = Ptr{Cvoid}

function OTF2_GlobalEvtReaderCallbacks_SetRmaCollectiveEndCallback(globalEvtReaderCallbacks, rmaCollectiveEndCallback)
    ccall((:OTF2_GlobalEvtReaderCallbacks_SetRmaCollectiveEndCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalEvtReaderCallbacks}, OTF2_GlobalEvtReaderCallback_RmaCollectiveEnd), globalEvtReaderCallbacks, rmaCollectiveEndCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_GlobalEvtReaderCallback_RmaGroupSync ) ( OTF2_LocationRef locationID , OTF2_TimeStamp time , void * userData , OTF2_AttributeList * attributeList , OTF2_RmaSyncLevel syncLevel , OTF2_RmaWinRef win , OTF2_GroupRef group )
const OTF2_GlobalEvtReaderCallback_RmaGroupSync = Ptr{Cvoid}

function OTF2_GlobalEvtReaderCallbacks_SetRmaGroupSyncCallback(globalEvtReaderCallbacks, rmaGroupSyncCallback)
    ccall((:OTF2_GlobalEvtReaderCallbacks_SetRmaGroupSyncCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalEvtReaderCallbacks}, OTF2_GlobalEvtReaderCallback_RmaGroupSync), globalEvtReaderCallbacks, rmaGroupSyncCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_GlobalEvtReaderCallback_RmaRequestLock ) ( OTF2_LocationRef locationID , OTF2_TimeStamp time , void * userData , OTF2_AttributeList * attributeList , OTF2_RmaWinRef win , uint32_t remote , uint64_t lockId , OTF2_LockType lockType )
const OTF2_GlobalEvtReaderCallback_RmaRequestLock = Ptr{Cvoid}

function OTF2_GlobalEvtReaderCallbacks_SetRmaRequestLockCallback(globalEvtReaderCallbacks, rmaRequestLockCallback)
    ccall((:OTF2_GlobalEvtReaderCallbacks_SetRmaRequestLockCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalEvtReaderCallbacks}, OTF2_GlobalEvtReaderCallback_RmaRequestLock), globalEvtReaderCallbacks, rmaRequestLockCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_GlobalEvtReaderCallback_RmaAcquireLock ) ( OTF2_LocationRef locationID , OTF2_TimeStamp time , void * userData , OTF2_AttributeList * attributeList , OTF2_RmaWinRef win , uint32_t remote , uint64_t lockId , OTF2_LockType lockType )
const OTF2_GlobalEvtReaderCallback_RmaAcquireLock = Ptr{Cvoid}

function OTF2_GlobalEvtReaderCallbacks_SetRmaAcquireLockCallback(globalEvtReaderCallbacks, rmaAcquireLockCallback)
    ccall((:OTF2_GlobalEvtReaderCallbacks_SetRmaAcquireLockCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalEvtReaderCallbacks}, OTF2_GlobalEvtReaderCallback_RmaAcquireLock), globalEvtReaderCallbacks, rmaAcquireLockCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_GlobalEvtReaderCallback_RmaTryLock ) ( OTF2_LocationRef locationID , OTF2_TimeStamp time , void * userData , OTF2_AttributeList * attributeList , OTF2_RmaWinRef win , uint32_t remote , uint64_t lockId , OTF2_LockType lockType )
const OTF2_GlobalEvtReaderCallback_RmaTryLock = Ptr{Cvoid}

function OTF2_GlobalEvtReaderCallbacks_SetRmaTryLockCallback(globalEvtReaderCallbacks, rmaTryLockCallback)
    ccall((:OTF2_GlobalEvtReaderCallbacks_SetRmaTryLockCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalEvtReaderCallbacks}, OTF2_GlobalEvtReaderCallback_RmaTryLock), globalEvtReaderCallbacks, rmaTryLockCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_GlobalEvtReaderCallback_RmaReleaseLock ) ( OTF2_LocationRef locationID , OTF2_TimeStamp time , void * userData , OTF2_AttributeList * attributeList , OTF2_RmaWinRef win , uint32_t remote , uint64_t lockId )
const OTF2_GlobalEvtReaderCallback_RmaReleaseLock = Ptr{Cvoid}

function OTF2_GlobalEvtReaderCallbacks_SetRmaReleaseLockCallback(globalEvtReaderCallbacks, rmaReleaseLockCallback)
    ccall((:OTF2_GlobalEvtReaderCallbacks_SetRmaReleaseLockCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalEvtReaderCallbacks}, OTF2_GlobalEvtReaderCallback_RmaReleaseLock), globalEvtReaderCallbacks, rmaReleaseLockCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_GlobalEvtReaderCallback_RmaSync ) ( OTF2_LocationRef locationID , OTF2_TimeStamp time , void * userData , OTF2_AttributeList * attributeList , OTF2_RmaWinRef win , uint32_t remote , OTF2_RmaSyncType syncType )
const OTF2_GlobalEvtReaderCallback_RmaSync = Ptr{Cvoid}

function OTF2_GlobalEvtReaderCallbacks_SetRmaSyncCallback(globalEvtReaderCallbacks, rmaSyncCallback)
    ccall((:OTF2_GlobalEvtReaderCallbacks_SetRmaSyncCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalEvtReaderCallbacks}, OTF2_GlobalEvtReaderCallback_RmaSync), globalEvtReaderCallbacks, rmaSyncCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_GlobalEvtReaderCallback_RmaWaitChange ) ( OTF2_LocationRef locationID , OTF2_TimeStamp time , void * userData , OTF2_AttributeList * attributeList , OTF2_RmaWinRef win )
const OTF2_GlobalEvtReaderCallback_RmaWaitChange = Ptr{Cvoid}

function OTF2_GlobalEvtReaderCallbacks_SetRmaWaitChangeCallback(globalEvtReaderCallbacks, rmaWaitChangeCallback)
    ccall((:OTF2_GlobalEvtReaderCallbacks_SetRmaWaitChangeCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalEvtReaderCallbacks}, OTF2_GlobalEvtReaderCallback_RmaWaitChange), globalEvtReaderCallbacks, rmaWaitChangeCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_GlobalEvtReaderCallback_RmaPut ) ( OTF2_LocationRef locationID , OTF2_TimeStamp time , void * userData , OTF2_AttributeList * attributeList , OTF2_RmaWinRef win , uint32_t remote , uint64_t bytes , uint64_t matchingId )
const OTF2_GlobalEvtReaderCallback_RmaPut = Ptr{Cvoid}

function OTF2_GlobalEvtReaderCallbacks_SetRmaPutCallback(globalEvtReaderCallbacks, rmaPutCallback)
    ccall((:OTF2_GlobalEvtReaderCallbacks_SetRmaPutCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalEvtReaderCallbacks}, OTF2_GlobalEvtReaderCallback_RmaPut), globalEvtReaderCallbacks, rmaPutCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_GlobalEvtReaderCallback_RmaGet ) ( OTF2_LocationRef locationID , OTF2_TimeStamp time , void * userData , OTF2_AttributeList * attributeList , OTF2_RmaWinRef win , uint32_t remote , uint64_t bytes , uint64_t matchingId )
const OTF2_GlobalEvtReaderCallback_RmaGet = Ptr{Cvoid}

function OTF2_GlobalEvtReaderCallbacks_SetRmaGetCallback(globalEvtReaderCallbacks, rmaGetCallback)
    ccall((:OTF2_GlobalEvtReaderCallbacks_SetRmaGetCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalEvtReaderCallbacks}, OTF2_GlobalEvtReaderCallback_RmaGet), globalEvtReaderCallbacks, rmaGetCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_GlobalEvtReaderCallback_RmaAtomic ) ( OTF2_LocationRef locationID , OTF2_TimeStamp time , void * userData , OTF2_AttributeList * attributeList , OTF2_RmaWinRef win , uint32_t remote , OTF2_RmaAtomicType type , uint64_t bytesSent , uint64_t bytesReceived , uint64_t matchingId )
const OTF2_GlobalEvtReaderCallback_RmaAtomic = Ptr{Cvoid}

function OTF2_GlobalEvtReaderCallbacks_SetRmaAtomicCallback(globalEvtReaderCallbacks, rmaAtomicCallback)
    ccall((:OTF2_GlobalEvtReaderCallbacks_SetRmaAtomicCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalEvtReaderCallbacks}, OTF2_GlobalEvtReaderCallback_RmaAtomic), globalEvtReaderCallbacks, rmaAtomicCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_GlobalEvtReaderCallback_RmaOpCompleteBlocking ) ( OTF2_LocationRef locationID , OTF2_TimeStamp time , void * userData , OTF2_AttributeList * attributeList , OTF2_RmaWinRef win , uint64_t matchingId )
const OTF2_GlobalEvtReaderCallback_RmaOpCompleteBlocking = Ptr{Cvoid}

function OTF2_GlobalEvtReaderCallbacks_SetRmaOpCompleteBlockingCallback(globalEvtReaderCallbacks, rmaOpCompleteBlockingCallback)
    ccall((:OTF2_GlobalEvtReaderCallbacks_SetRmaOpCompleteBlockingCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalEvtReaderCallbacks}, OTF2_GlobalEvtReaderCallback_RmaOpCompleteBlocking), globalEvtReaderCallbacks, rmaOpCompleteBlockingCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_GlobalEvtReaderCallback_RmaOpCompleteNonBlocking ) ( OTF2_LocationRef locationID , OTF2_TimeStamp time , void * userData , OTF2_AttributeList * attributeList , OTF2_RmaWinRef win , uint64_t matchingId )
const OTF2_GlobalEvtReaderCallback_RmaOpCompleteNonBlocking = Ptr{Cvoid}

function OTF2_GlobalEvtReaderCallbacks_SetRmaOpCompleteNonBlockingCallback(globalEvtReaderCallbacks, rmaOpCompleteNonBlockingCallback)
    ccall((:OTF2_GlobalEvtReaderCallbacks_SetRmaOpCompleteNonBlockingCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalEvtReaderCallbacks}, OTF2_GlobalEvtReaderCallback_RmaOpCompleteNonBlocking), globalEvtReaderCallbacks, rmaOpCompleteNonBlockingCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_GlobalEvtReaderCallback_RmaOpTest ) ( OTF2_LocationRef locationID , OTF2_TimeStamp time , void * userData , OTF2_AttributeList * attributeList , OTF2_RmaWinRef win , uint64_t matchingId )
const OTF2_GlobalEvtReaderCallback_RmaOpTest = Ptr{Cvoid}

function OTF2_GlobalEvtReaderCallbacks_SetRmaOpTestCallback(globalEvtReaderCallbacks, rmaOpTestCallback)
    ccall((:OTF2_GlobalEvtReaderCallbacks_SetRmaOpTestCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalEvtReaderCallbacks}, OTF2_GlobalEvtReaderCallback_RmaOpTest), globalEvtReaderCallbacks, rmaOpTestCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_GlobalEvtReaderCallback_RmaOpCompleteRemote ) ( OTF2_LocationRef locationID , OTF2_TimeStamp time , void * userData , OTF2_AttributeList * attributeList , OTF2_RmaWinRef win , uint64_t matchingId )
const OTF2_GlobalEvtReaderCallback_RmaOpCompleteRemote = Ptr{Cvoid}

function OTF2_GlobalEvtReaderCallbacks_SetRmaOpCompleteRemoteCallback(globalEvtReaderCallbacks, rmaOpCompleteRemoteCallback)
    ccall((:OTF2_GlobalEvtReaderCallbacks_SetRmaOpCompleteRemoteCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalEvtReaderCallbacks}, OTF2_GlobalEvtReaderCallback_RmaOpCompleteRemote), globalEvtReaderCallbacks, rmaOpCompleteRemoteCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_GlobalEvtReaderCallback_ThreadFork ) ( OTF2_LocationRef locationID , OTF2_TimeStamp time , void * userData , OTF2_AttributeList * attributeList , OTF2_Paradigm model , uint32_t numberOfRequestedThreads )
const OTF2_GlobalEvtReaderCallback_ThreadFork = Ptr{Cvoid}

function OTF2_GlobalEvtReaderCallbacks_SetThreadForkCallback(globalEvtReaderCallbacks, threadForkCallback)
    ccall((:OTF2_GlobalEvtReaderCallbacks_SetThreadForkCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalEvtReaderCallbacks}, OTF2_GlobalEvtReaderCallback_ThreadFork), globalEvtReaderCallbacks, threadForkCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_GlobalEvtReaderCallback_ThreadJoin ) ( OTF2_LocationRef locationID , OTF2_TimeStamp time , void * userData , OTF2_AttributeList * attributeList , OTF2_Paradigm model )
const OTF2_GlobalEvtReaderCallback_ThreadJoin = Ptr{Cvoid}

function OTF2_GlobalEvtReaderCallbacks_SetThreadJoinCallback(globalEvtReaderCallbacks, threadJoinCallback)
    ccall((:OTF2_GlobalEvtReaderCallbacks_SetThreadJoinCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalEvtReaderCallbacks}, OTF2_GlobalEvtReaderCallback_ThreadJoin), globalEvtReaderCallbacks, threadJoinCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_GlobalEvtReaderCallback_ThreadTeamBegin ) ( OTF2_LocationRef locationID , OTF2_TimeStamp time , void * userData , OTF2_AttributeList * attributeList , OTF2_CommRef threadTeam )
const OTF2_GlobalEvtReaderCallback_ThreadTeamBegin = Ptr{Cvoid}

function OTF2_GlobalEvtReaderCallbacks_SetThreadTeamBeginCallback(globalEvtReaderCallbacks, threadTeamBeginCallback)
    ccall((:OTF2_GlobalEvtReaderCallbacks_SetThreadTeamBeginCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalEvtReaderCallbacks}, OTF2_GlobalEvtReaderCallback_ThreadTeamBegin), globalEvtReaderCallbacks, threadTeamBeginCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_GlobalEvtReaderCallback_ThreadTeamEnd ) ( OTF2_LocationRef locationID , OTF2_TimeStamp time , void * userData , OTF2_AttributeList * attributeList , OTF2_CommRef threadTeam )
const OTF2_GlobalEvtReaderCallback_ThreadTeamEnd = Ptr{Cvoid}

function OTF2_GlobalEvtReaderCallbacks_SetThreadTeamEndCallback(globalEvtReaderCallbacks, threadTeamEndCallback)
    ccall((:OTF2_GlobalEvtReaderCallbacks_SetThreadTeamEndCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalEvtReaderCallbacks}, OTF2_GlobalEvtReaderCallback_ThreadTeamEnd), globalEvtReaderCallbacks, threadTeamEndCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_GlobalEvtReaderCallback_ThreadAcquireLock ) ( OTF2_LocationRef locationID , OTF2_TimeStamp time , void * userData , OTF2_AttributeList * attributeList , OTF2_Paradigm model , uint32_t lockID , uint32_t acquisitionOrder )
const OTF2_GlobalEvtReaderCallback_ThreadAcquireLock = Ptr{Cvoid}

function OTF2_GlobalEvtReaderCallbacks_SetThreadAcquireLockCallback(globalEvtReaderCallbacks, threadAcquireLockCallback)
    ccall((:OTF2_GlobalEvtReaderCallbacks_SetThreadAcquireLockCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalEvtReaderCallbacks}, OTF2_GlobalEvtReaderCallback_ThreadAcquireLock), globalEvtReaderCallbacks, threadAcquireLockCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_GlobalEvtReaderCallback_ThreadReleaseLock ) ( OTF2_LocationRef locationID , OTF2_TimeStamp time , void * userData , OTF2_AttributeList * attributeList , OTF2_Paradigm model , uint32_t lockID , uint32_t acquisitionOrder )
const OTF2_GlobalEvtReaderCallback_ThreadReleaseLock = Ptr{Cvoid}

function OTF2_GlobalEvtReaderCallbacks_SetThreadReleaseLockCallback(globalEvtReaderCallbacks, threadReleaseLockCallback)
    ccall((:OTF2_GlobalEvtReaderCallbacks_SetThreadReleaseLockCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalEvtReaderCallbacks}, OTF2_GlobalEvtReaderCallback_ThreadReleaseLock), globalEvtReaderCallbacks, threadReleaseLockCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_GlobalEvtReaderCallback_ThreadTaskCreate ) ( OTF2_LocationRef locationID , OTF2_TimeStamp time , void * userData , OTF2_AttributeList * attributeList , OTF2_CommRef threadTeam , uint32_t creatingThread , uint32_t generationNumber )
const OTF2_GlobalEvtReaderCallback_ThreadTaskCreate = Ptr{Cvoid}

function OTF2_GlobalEvtReaderCallbacks_SetThreadTaskCreateCallback(globalEvtReaderCallbacks, threadTaskCreateCallback)
    ccall((:OTF2_GlobalEvtReaderCallbacks_SetThreadTaskCreateCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalEvtReaderCallbacks}, OTF2_GlobalEvtReaderCallback_ThreadTaskCreate), globalEvtReaderCallbacks, threadTaskCreateCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_GlobalEvtReaderCallback_ThreadTaskSwitch ) ( OTF2_LocationRef locationID , OTF2_TimeStamp time , void * userData , OTF2_AttributeList * attributeList , OTF2_CommRef threadTeam , uint32_t creatingThread , uint32_t generationNumber )
const OTF2_GlobalEvtReaderCallback_ThreadTaskSwitch = Ptr{Cvoid}

function OTF2_GlobalEvtReaderCallbacks_SetThreadTaskSwitchCallback(globalEvtReaderCallbacks, threadTaskSwitchCallback)
    ccall((:OTF2_GlobalEvtReaderCallbacks_SetThreadTaskSwitchCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalEvtReaderCallbacks}, OTF2_GlobalEvtReaderCallback_ThreadTaskSwitch), globalEvtReaderCallbacks, threadTaskSwitchCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_GlobalEvtReaderCallback_ThreadTaskComplete ) ( OTF2_LocationRef locationID , OTF2_TimeStamp time , void * userData , OTF2_AttributeList * attributeList , OTF2_CommRef threadTeam , uint32_t creatingThread , uint32_t generationNumber )
const OTF2_GlobalEvtReaderCallback_ThreadTaskComplete = Ptr{Cvoid}

function OTF2_GlobalEvtReaderCallbacks_SetThreadTaskCompleteCallback(globalEvtReaderCallbacks, threadTaskCompleteCallback)
    ccall((:OTF2_GlobalEvtReaderCallbacks_SetThreadTaskCompleteCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalEvtReaderCallbacks}, OTF2_GlobalEvtReaderCallback_ThreadTaskComplete), globalEvtReaderCallbacks, threadTaskCompleteCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_GlobalEvtReaderCallback_ThreadCreate ) ( OTF2_LocationRef locationID , OTF2_TimeStamp time , void * userData , OTF2_AttributeList * attributeList , OTF2_CommRef threadContingent , uint64_t sequenceCount )
const OTF2_GlobalEvtReaderCallback_ThreadCreate = Ptr{Cvoid}

function OTF2_GlobalEvtReaderCallbacks_SetThreadCreateCallback(globalEvtReaderCallbacks, threadCreateCallback)
    ccall((:OTF2_GlobalEvtReaderCallbacks_SetThreadCreateCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalEvtReaderCallbacks}, OTF2_GlobalEvtReaderCallback_ThreadCreate), globalEvtReaderCallbacks, threadCreateCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_GlobalEvtReaderCallback_ThreadBegin ) ( OTF2_LocationRef locationID , OTF2_TimeStamp time , void * userData , OTF2_AttributeList * attributeList , OTF2_CommRef threadContingent , uint64_t sequenceCount )
const OTF2_GlobalEvtReaderCallback_ThreadBegin = Ptr{Cvoid}

function OTF2_GlobalEvtReaderCallbacks_SetThreadBeginCallback(globalEvtReaderCallbacks, threadBeginCallback)
    ccall((:OTF2_GlobalEvtReaderCallbacks_SetThreadBeginCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalEvtReaderCallbacks}, OTF2_GlobalEvtReaderCallback_ThreadBegin), globalEvtReaderCallbacks, threadBeginCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_GlobalEvtReaderCallback_ThreadWait ) ( OTF2_LocationRef locationID , OTF2_TimeStamp time , void * userData , OTF2_AttributeList * attributeList , OTF2_CommRef threadContingent , uint64_t sequenceCount )
const OTF2_GlobalEvtReaderCallback_ThreadWait = Ptr{Cvoid}

function OTF2_GlobalEvtReaderCallbacks_SetThreadWaitCallback(globalEvtReaderCallbacks, threadWaitCallback)
    ccall((:OTF2_GlobalEvtReaderCallbacks_SetThreadWaitCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalEvtReaderCallbacks}, OTF2_GlobalEvtReaderCallback_ThreadWait), globalEvtReaderCallbacks, threadWaitCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_GlobalEvtReaderCallback_ThreadEnd ) ( OTF2_LocationRef locationID , OTF2_TimeStamp time , void * userData , OTF2_AttributeList * attributeList , OTF2_CommRef threadContingent , uint64_t sequenceCount )
const OTF2_GlobalEvtReaderCallback_ThreadEnd = Ptr{Cvoid}

function OTF2_GlobalEvtReaderCallbacks_SetThreadEndCallback(globalEvtReaderCallbacks, threadEndCallback)
    ccall((:OTF2_GlobalEvtReaderCallbacks_SetThreadEndCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalEvtReaderCallbacks}, OTF2_GlobalEvtReaderCallback_ThreadEnd), globalEvtReaderCallbacks, threadEndCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_GlobalEvtReaderCallback_CallingContextEnter ) ( OTF2_LocationRef locationID , OTF2_TimeStamp time , void * userData , OTF2_AttributeList * attributeList , OTF2_CallingContextRef callingContext , uint32_t unwindDistance )
const OTF2_GlobalEvtReaderCallback_CallingContextEnter = Ptr{Cvoid}

function OTF2_GlobalEvtReaderCallbacks_SetCallingContextEnterCallback(globalEvtReaderCallbacks, callingContextEnterCallback)
    ccall((:OTF2_GlobalEvtReaderCallbacks_SetCallingContextEnterCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalEvtReaderCallbacks}, OTF2_GlobalEvtReaderCallback_CallingContextEnter), globalEvtReaderCallbacks, callingContextEnterCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_GlobalEvtReaderCallback_CallingContextLeave ) ( OTF2_LocationRef locationID , OTF2_TimeStamp time , void * userData , OTF2_AttributeList * attributeList , OTF2_CallingContextRef callingContext )
const OTF2_GlobalEvtReaderCallback_CallingContextLeave = Ptr{Cvoid}

function OTF2_GlobalEvtReaderCallbacks_SetCallingContextLeaveCallback(globalEvtReaderCallbacks, callingContextLeaveCallback)
    ccall((:OTF2_GlobalEvtReaderCallbacks_SetCallingContextLeaveCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalEvtReaderCallbacks}, OTF2_GlobalEvtReaderCallback_CallingContextLeave), globalEvtReaderCallbacks, callingContextLeaveCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_GlobalEvtReaderCallback_CallingContextSample ) ( OTF2_LocationRef locationID , OTF2_TimeStamp time , void * userData , OTF2_AttributeList * attributeList , OTF2_CallingContextRef callingContext , uint32_t unwindDistance , OTF2_InterruptGeneratorRef interruptGenerator )
const OTF2_GlobalEvtReaderCallback_CallingContextSample = Ptr{Cvoid}

function OTF2_GlobalEvtReaderCallbacks_SetCallingContextSampleCallback(globalEvtReaderCallbacks, callingContextSampleCallback)
    ccall((:OTF2_GlobalEvtReaderCallbacks_SetCallingContextSampleCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalEvtReaderCallbacks}, OTF2_GlobalEvtReaderCallback_CallingContextSample), globalEvtReaderCallbacks, callingContextSampleCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_GlobalEvtReaderCallback_IoCreateHandle ) ( OTF2_LocationRef locationID , OTF2_TimeStamp time , void * userData , OTF2_AttributeList * attributeList , OTF2_IoHandleRef handle , OTF2_IoAccessMode mode , OTF2_IoCreationFlag creationFlags , OTF2_IoStatusFlag statusFlags )
const OTF2_GlobalEvtReaderCallback_IoCreateHandle = Ptr{Cvoid}

function OTF2_GlobalEvtReaderCallbacks_SetIoCreateHandleCallback(globalEvtReaderCallbacks, ioCreateHandleCallback)
    ccall((:OTF2_GlobalEvtReaderCallbacks_SetIoCreateHandleCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalEvtReaderCallbacks}, OTF2_GlobalEvtReaderCallback_IoCreateHandle), globalEvtReaderCallbacks, ioCreateHandleCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_GlobalEvtReaderCallback_IoDestroyHandle ) ( OTF2_LocationRef locationID , OTF2_TimeStamp time , void * userData , OTF2_AttributeList * attributeList , OTF2_IoHandleRef handle )
const OTF2_GlobalEvtReaderCallback_IoDestroyHandle = Ptr{Cvoid}

function OTF2_GlobalEvtReaderCallbacks_SetIoDestroyHandleCallback(globalEvtReaderCallbacks, ioDestroyHandleCallback)
    ccall((:OTF2_GlobalEvtReaderCallbacks_SetIoDestroyHandleCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalEvtReaderCallbacks}, OTF2_GlobalEvtReaderCallback_IoDestroyHandle), globalEvtReaderCallbacks, ioDestroyHandleCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_GlobalEvtReaderCallback_IoDuplicateHandle ) ( OTF2_LocationRef locationID , OTF2_TimeStamp time , void * userData , OTF2_AttributeList * attributeList , OTF2_IoHandleRef oldHandle , OTF2_IoHandleRef newHandle , OTF2_IoStatusFlag statusFlags )
const OTF2_GlobalEvtReaderCallback_IoDuplicateHandle = Ptr{Cvoid}

function OTF2_GlobalEvtReaderCallbacks_SetIoDuplicateHandleCallback(globalEvtReaderCallbacks, ioDuplicateHandleCallback)
    ccall((:OTF2_GlobalEvtReaderCallbacks_SetIoDuplicateHandleCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalEvtReaderCallbacks}, OTF2_GlobalEvtReaderCallback_IoDuplicateHandle), globalEvtReaderCallbacks, ioDuplicateHandleCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_GlobalEvtReaderCallback_IoSeek ) ( OTF2_LocationRef locationID , OTF2_TimeStamp time , void * userData , OTF2_AttributeList * attributeList , OTF2_IoHandleRef handle , int64_t offsetRequest , OTF2_IoSeekOption whence , uint64_t offsetResult )
const OTF2_GlobalEvtReaderCallback_IoSeek = Ptr{Cvoid}

function OTF2_GlobalEvtReaderCallbacks_SetIoSeekCallback(globalEvtReaderCallbacks, ioSeekCallback)
    ccall((:OTF2_GlobalEvtReaderCallbacks_SetIoSeekCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalEvtReaderCallbacks}, OTF2_GlobalEvtReaderCallback_IoSeek), globalEvtReaderCallbacks, ioSeekCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_GlobalEvtReaderCallback_IoChangeStatusFlags ) ( OTF2_LocationRef locationID , OTF2_TimeStamp time , void * userData , OTF2_AttributeList * attributeList , OTF2_IoHandleRef handle , OTF2_IoStatusFlag statusFlags )
const OTF2_GlobalEvtReaderCallback_IoChangeStatusFlags = Ptr{Cvoid}

function OTF2_GlobalEvtReaderCallbacks_SetIoChangeStatusFlagsCallback(globalEvtReaderCallbacks, ioChangeStatusFlagsCallback)
    ccall((:OTF2_GlobalEvtReaderCallbacks_SetIoChangeStatusFlagsCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalEvtReaderCallbacks}, OTF2_GlobalEvtReaderCallback_IoChangeStatusFlags), globalEvtReaderCallbacks, ioChangeStatusFlagsCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_GlobalEvtReaderCallback_IoDeleteFile ) ( OTF2_LocationRef locationID , OTF2_TimeStamp time , void * userData , OTF2_AttributeList * attributeList , OTF2_IoParadigmRef ioParadigm , OTF2_IoFileRef file )
const OTF2_GlobalEvtReaderCallback_IoDeleteFile = Ptr{Cvoid}

function OTF2_GlobalEvtReaderCallbacks_SetIoDeleteFileCallback(globalEvtReaderCallbacks, ioDeleteFileCallback)
    ccall((:OTF2_GlobalEvtReaderCallbacks_SetIoDeleteFileCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalEvtReaderCallbacks}, OTF2_GlobalEvtReaderCallback_IoDeleteFile), globalEvtReaderCallbacks, ioDeleteFileCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_GlobalEvtReaderCallback_IoOperationBegin ) ( OTF2_LocationRef locationID , OTF2_TimeStamp time , void * userData , OTF2_AttributeList * attributeList , OTF2_IoHandleRef handle , OTF2_IoOperationMode mode , OTF2_IoOperationFlag operationFlags , uint64_t bytesRequest , uint64_t matchingId )
const OTF2_GlobalEvtReaderCallback_IoOperationBegin = Ptr{Cvoid}

function OTF2_GlobalEvtReaderCallbacks_SetIoOperationBeginCallback(globalEvtReaderCallbacks, ioOperationBeginCallback)
    ccall((:OTF2_GlobalEvtReaderCallbacks_SetIoOperationBeginCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalEvtReaderCallbacks}, OTF2_GlobalEvtReaderCallback_IoOperationBegin), globalEvtReaderCallbacks, ioOperationBeginCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_GlobalEvtReaderCallback_IoOperationTest ) ( OTF2_LocationRef locationID , OTF2_TimeStamp time , void * userData , OTF2_AttributeList * attributeList , OTF2_IoHandleRef handle , uint64_t matchingId )
const OTF2_GlobalEvtReaderCallback_IoOperationTest = Ptr{Cvoid}

function OTF2_GlobalEvtReaderCallbacks_SetIoOperationTestCallback(globalEvtReaderCallbacks, ioOperationTestCallback)
    ccall((:OTF2_GlobalEvtReaderCallbacks_SetIoOperationTestCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalEvtReaderCallbacks}, OTF2_GlobalEvtReaderCallback_IoOperationTest), globalEvtReaderCallbacks, ioOperationTestCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_GlobalEvtReaderCallback_IoOperationIssued ) ( OTF2_LocationRef locationID , OTF2_TimeStamp time , void * userData , OTF2_AttributeList * attributeList , OTF2_IoHandleRef handle , uint64_t matchingId )
const OTF2_GlobalEvtReaderCallback_IoOperationIssued = Ptr{Cvoid}

function OTF2_GlobalEvtReaderCallbacks_SetIoOperationIssuedCallback(globalEvtReaderCallbacks, ioOperationIssuedCallback)
    ccall((:OTF2_GlobalEvtReaderCallbacks_SetIoOperationIssuedCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalEvtReaderCallbacks}, OTF2_GlobalEvtReaderCallback_IoOperationIssued), globalEvtReaderCallbacks, ioOperationIssuedCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_GlobalEvtReaderCallback_IoOperationComplete ) ( OTF2_LocationRef locationID , OTF2_TimeStamp time , void * userData , OTF2_AttributeList * attributeList , OTF2_IoHandleRef handle , uint64_t bytesResult , uint64_t matchingId )
const OTF2_GlobalEvtReaderCallback_IoOperationComplete = Ptr{Cvoid}

function OTF2_GlobalEvtReaderCallbacks_SetIoOperationCompleteCallback(globalEvtReaderCallbacks, ioOperationCompleteCallback)
    ccall((:OTF2_GlobalEvtReaderCallbacks_SetIoOperationCompleteCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalEvtReaderCallbacks}, OTF2_GlobalEvtReaderCallback_IoOperationComplete), globalEvtReaderCallbacks, ioOperationCompleteCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_GlobalEvtReaderCallback_IoOperationCancelled ) ( OTF2_LocationRef locationID , OTF2_TimeStamp time , void * userData , OTF2_AttributeList * attributeList , OTF2_IoHandleRef handle , uint64_t matchingId )
const OTF2_GlobalEvtReaderCallback_IoOperationCancelled = Ptr{Cvoid}

function OTF2_GlobalEvtReaderCallbacks_SetIoOperationCancelledCallback(globalEvtReaderCallbacks, ioOperationCancelledCallback)
    ccall((:OTF2_GlobalEvtReaderCallbacks_SetIoOperationCancelledCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalEvtReaderCallbacks}, OTF2_GlobalEvtReaderCallback_IoOperationCancelled), globalEvtReaderCallbacks, ioOperationCancelledCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_GlobalEvtReaderCallback_IoAcquireLock ) ( OTF2_LocationRef locationID , OTF2_TimeStamp time , void * userData , OTF2_AttributeList * attributeList , OTF2_IoHandleRef handle , OTF2_LockType lockType )
const OTF2_GlobalEvtReaderCallback_IoAcquireLock = Ptr{Cvoid}

function OTF2_GlobalEvtReaderCallbacks_SetIoAcquireLockCallback(globalEvtReaderCallbacks, ioAcquireLockCallback)
    ccall((:OTF2_GlobalEvtReaderCallbacks_SetIoAcquireLockCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalEvtReaderCallbacks}, OTF2_GlobalEvtReaderCallback_IoAcquireLock), globalEvtReaderCallbacks, ioAcquireLockCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_GlobalEvtReaderCallback_IoReleaseLock ) ( OTF2_LocationRef locationID , OTF2_TimeStamp time , void * userData , OTF2_AttributeList * attributeList , OTF2_IoHandleRef handle , OTF2_LockType lockType )
const OTF2_GlobalEvtReaderCallback_IoReleaseLock = Ptr{Cvoid}

function OTF2_GlobalEvtReaderCallbacks_SetIoReleaseLockCallback(globalEvtReaderCallbacks, ioReleaseLockCallback)
    ccall((:OTF2_GlobalEvtReaderCallbacks_SetIoReleaseLockCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalEvtReaderCallbacks}, OTF2_GlobalEvtReaderCallback_IoReleaseLock), globalEvtReaderCallbacks, ioReleaseLockCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_GlobalEvtReaderCallback_IoTryLock ) ( OTF2_LocationRef locationID , OTF2_TimeStamp time , void * userData , OTF2_AttributeList * attributeList , OTF2_IoHandleRef handle , OTF2_LockType lockType )
const OTF2_GlobalEvtReaderCallback_IoTryLock = Ptr{Cvoid}

function OTF2_GlobalEvtReaderCallbacks_SetIoTryLockCallback(globalEvtReaderCallbacks, ioTryLockCallback)
    ccall((:OTF2_GlobalEvtReaderCallbacks_SetIoTryLockCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalEvtReaderCallbacks}, OTF2_GlobalEvtReaderCallback_IoTryLock), globalEvtReaderCallbacks, ioTryLockCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_GlobalEvtReaderCallback_ProgramBegin ) ( OTF2_LocationRef locationID , OTF2_TimeStamp time , void * userData , OTF2_AttributeList * attributeList , OTF2_StringRef programName , uint32_t numberOfArguments , const OTF2_StringRef * programArguments )
const OTF2_GlobalEvtReaderCallback_ProgramBegin = Ptr{Cvoid}

function OTF2_GlobalEvtReaderCallbacks_SetProgramBeginCallback(globalEvtReaderCallbacks, programBeginCallback)
    ccall((:OTF2_GlobalEvtReaderCallbacks_SetProgramBeginCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalEvtReaderCallbacks}, OTF2_GlobalEvtReaderCallback_ProgramBegin), globalEvtReaderCallbacks, programBeginCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_GlobalEvtReaderCallback_ProgramEnd ) ( OTF2_LocationRef locationID , OTF2_TimeStamp time , void * userData , OTF2_AttributeList * attributeList , int64_t exitStatus )
const OTF2_GlobalEvtReaderCallback_ProgramEnd = Ptr{Cvoid}

function OTF2_GlobalEvtReaderCallbacks_SetProgramEndCallback(globalEvtReaderCallbacks, programEndCallback)
    ccall((:OTF2_GlobalEvtReaderCallbacks_SetProgramEndCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalEvtReaderCallbacks}, OTF2_GlobalEvtReaderCallback_ProgramEnd), globalEvtReaderCallbacks, programEndCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_GlobalEvtReaderCallback_NonBlockingCollectiveRequest ) ( OTF2_LocationRef locationID , OTF2_TimeStamp time , void * userData , OTF2_AttributeList * attributeList , uint64_t requestID )
const OTF2_GlobalEvtReaderCallback_NonBlockingCollectiveRequest = Ptr{Cvoid}

function OTF2_GlobalEvtReaderCallbacks_SetNonBlockingCollectiveRequestCallback(globalEvtReaderCallbacks, nonBlockingCollectiveRequestCallback)
    ccall((:OTF2_GlobalEvtReaderCallbacks_SetNonBlockingCollectiveRequestCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalEvtReaderCallbacks}, OTF2_GlobalEvtReaderCallback_NonBlockingCollectiveRequest), globalEvtReaderCallbacks, nonBlockingCollectiveRequestCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_GlobalEvtReaderCallback_NonBlockingCollectiveComplete ) ( OTF2_LocationRef locationID , OTF2_TimeStamp time , void * userData , OTF2_AttributeList * attributeList , OTF2_CollectiveOp collectiveOp , OTF2_CommRef communicator , uint32_t root , uint64_t sizeSent , uint64_t sizeReceived , uint64_t requestID )
const OTF2_GlobalEvtReaderCallback_NonBlockingCollectiveComplete = Ptr{Cvoid}

function OTF2_GlobalEvtReaderCallbacks_SetNonBlockingCollectiveCompleteCallback(globalEvtReaderCallbacks, nonBlockingCollectiveCompleteCallback)
    ccall((:OTF2_GlobalEvtReaderCallbacks_SetNonBlockingCollectiveCompleteCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalEvtReaderCallbacks}, OTF2_GlobalEvtReaderCallback_NonBlockingCollectiveComplete), globalEvtReaderCallbacks, nonBlockingCollectiveCompleteCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_GlobalEvtReaderCallback_CommCreate ) ( OTF2_LocationRef locationID , OTF2_TimeStamp time , void * userData , OTF2_AttributeList * attributeList , OTF2_CommRef communicator )
const OTF2_GlobalEvtReaderCallback_CommCreate = Ptr{Cvoid}

function OTF2_GlobalEvtReaderCallbacks_SetCommCreateCallback(globalEvtReaderCallbacks, commCreateCallback)
    ccall((:OTF2_GlobalEvtReaderCallbacks_SetCommCreateCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalEvtReaderCallbacks}, OTF2_GlobalEvtReaderCallback_CommCreate), globalEvtReaderCallbacks, commCreateCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_GlobalEvtReaderCallback_CommDestroy ) ( OTF2_LocationRef locationID , OTF2_TimeStamp time , void * userData , OTF2_AttributeList * attributeList , OTF2_CommRef communicator )
const OTF2_GlobalEvtReaderCallback_CommDestroy = Ptr{Cvoid}

function OTF2_GlobalEvtReaderCallbacks_SetCommDestroyCallback(globalEvtReaderCallbacks, commDestroyCallback)
    ccall((:OTF2_GlobalEvtReaderCallbacks_SetCommDestroyCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalEvtReaderCallbacks}, OTF2_GlobalEvtReaderCallback_CommDestroy), globalEvtReaderCallbacks, commDestroyCallback)
end

function OTF2_GlobalEvtReader_SetCallbacks(reader, callbacks, userData)
    ccall((:OTF2_GlobalEvtReader_SetCallbacks, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalEvtReader}, Ptr{OTF2_GlobalEvtReaderCallbacks}, Ptr{Cvoid}), reader, callbacks, userData)
end

function OTF2_GlobalEvtReader_ReadEvent(reader)
    ccall((:OTF2_GlobalEvtReader_ReadEvent, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalEvtReader},), reader)
end

function OTF2_GlobalEvtReader_HasEvent(reader, flag)
    ccall((:OTF2_GlobalEvtReader_HasEvent, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalEvtReader}, Ptr{Cint}), reader, flag)
end

function OTF2_GlobalEvtReader_ReadEvents(reader, recordsToRead, recordsRead)
    ccall((:OTF2_GlobalEvtReader_ReadEvents, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalEvtReader}, UInt64, Ptr{UInt64}), reader, recordsToRead, recordsRead)
end

mutable struct OTF2_GlobalSnapReaderCallbacks_struct end

const OTF2_GlobalSnapReaderCallbacks = OTF2_GlobalSnapReaderCallbacks_struct

function OTF2_GlobalSnapReaderCallbacks_New()
    ccall((:OTF2_GlobalSnapReaderCallbacks_New, libotf2), Ptr{OTF2_GlobalSnapReaderCallbacks}, ())
end

function OTF2_GlobalSnapReaderCallbacks_Delete(globalSnapReaderCallbacks)
    ccall((:OTF2_GlobalSnapReaderCallbacks_Delete, libotf2), Cvoid, (Ptr{OTF2_GlobalSnapReaderCallbacks},), globalSnapReaderCallbacks)
end

function OTF2_GlobalSnapReaderCallbacks_Clear(globalSnapReaderCallbacks)
    ccall((:OTF2_GlobalSnapReaderCallbacks_Clear, libotf2), Cvoid, (Ptr{OTF2_GlobalSnapReaderCallbacks},), globalSnapReaderCallbacks)
end

# typedef OTF2_CallbackCode ( * OTF2_GlobalSnapReaderCallback_Unknown ) ( OTF2_LocationRef locationID , OTF2_TimeStamp snapTime , void * userData , OTF2_AttributeList * attributeList )
const OTF2_GlobalSnapReaderCallback_Unknown = Ptr{Cvoid}

function OTF2_GlobalSnapReaderCallbacks_SetUnknownCallback(globalSnapReaderCallbacks, unknownCallback)
    ccall((:OTF2_GlobalSnapReaderCallbacks_SetUnknownCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalSnapReaderCallbacks}, OTF2_GlobalSnapReaderCallback_Unknown), globalSnapReaderCallbacks, unknownCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_GlobalSnapReaderCallback_SnapshotStart ) ( OTF2_LocationRef locationID , OTF2_TimeStamp snapTime , void * userData , OTF2_AttributeList * attributeList , uint64_t numberOfRecords )
const OTF2_GlobalSnapReaderCallback_SnapshotStart = Ptr{Cvoid}

function OTF2_GlobalSnapReaderCallbacks_SetSnapshotStartCallback(globalSnapReaderCallbacks, snapshotStartCallback)
    ccall((:OTF2_GlobalSnapReaderCallbacks_SetSnapshotStartCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalSnapReaderCallbacks}, OTF2_GlobalSnapReaderCallback_SnapshotStart), globalSnapReaderCallbacks, snapshotStartCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_GlobalSnapReaderCallback_SnapshotEnd ) ( OTF2_LocationRef locationID , OTF2_TimeStamp snapTime , void * userData , OTF2_AttributeList * attributeList , uint64_t contReadPos )
const OTF2_GlobalSnapReaderCallback_SnapshotEnd = Ptr{Cvoid}

function OTF2_GlobalSnapReaderCallbacks_SetSnapshotEndCallback(globalSnapReaderCallbacks, snapshotEndCallback)
    ccall((:OTF2_GlobalSnapReaderCallbacks_SetSnapshotEndCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalSnapReaderCallbacks}, OTF2_GlobalSnapReaderCallback_SnapshotEnd), globalSnapReaderCallbacks, snapshotEndCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_GlobalSnapReaderCallback_MeasurementOnOff ) ( OTF2_LocationRef locationID , OTF2_TimeStamp snapTime , void * userData , OTF2_AttributeList * attributeList , OTF2_TimeStamp origEventTime , OTF2_MeasurementMode measurementMode )
const OTF2_GlobalSnapReaderCallback_MeasurementOnOff = Ptr{Cvoid}

function OTF2_GlobalSnapReaderCallbacks_SetMeasurementOnOffCallback(globalSnapReaderCallbacks, measurementOnOffCallback)
    ccall((:OTF2_GlobalSnapReaderCallbacks_SetMeasurementOnOffCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalSnapReaderCallbacks}, OTF2_GlobalSnapReaderCallback_MeasurementOnOff), globalSnapReaderCallbacks, measurementOnOffCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_GlobalSnapReaderCallback_Enter ) ( OTF2_LocationRef locationID , OTF2_TimeStamp snapTime , void * userData , OTF2_AttributeList * attributeList , OTF2_TimeStamp origEventTime , OTF2_RegionRef region )
const OTF2_GlobalSnapReaderCallback_Enter = Ptr{Cvoid}

function OTF2_GlobalSnapReaderCallbacks_SetEnterCallback(globalSnapReaderCallbacks, enterCallback)
    ccall((:OTF2_GlobalSnapReaderCallbacks_SetEnterCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalSnapReaderCallbacks}, OTF2_GlobalSnapReaderCallback_Enter), globalSnapReaderCallbacks, enterCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_GlobalSnapReaderCallback_MpiSend ) ( OTF2_LocationRef locationID , OTF2_TimeStamp snapTime , void * userData , OTF2_AttributeList * attributeList , OTF2_TimeStamp origEventTime , uint32_t receiver , OTF2_CommRef communicator , uint32_t msgTag , uint64_t msgLength )
const OTF2_GlobalSnapReaderCallback_MpiSend = Ptr{Cvoid}

function OTF2_GlobalSnapReaderCallbacks_SetMpiSendCallback(globalSnapReaderCallbacks, mpiSendCallback)
    ccall((:OTF2_GlobalSnapReaderCallbacks_SetMpiSendCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalSnapReaderCallbacks}, OTF2_GlobalSnapReaderCallback_MpiSend), globalSnapReaderCallbacks, mpiSendCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_GlobalSnapReaderCallback_MpiIsend ) ( OTF2_LocationRef locationID , OTF2_TimeStamp snapTime , void * userData , OTF2_AttributeList * attributeList , OTF2_TimeStamp origEventTime , uint32_t receiver , OTF2_CommRef communicator , uint32_t msgTag , uint64_t msgLength , uint64_t requestID )
const OTF2_GlobalSnapReaderCallback_MpiIsend = Ptr{Cvoid}

function OTF2_GlobalSnapReaderCallbacks_SetMpiIsendCallback(globalSnapReaderCallbacks, mpiIsendCallback)
    ccall((:OTF2_GlobalSnapReaderCallbacks_SetMpiIsendCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalSnapReaderCallbacks}, OTF2_GlobalSnapReaderCallback_MpiIsend), globalSnapReaderCallbacks, mpiIsendCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_GlobalSnapReaderCallback_MpiIsendComplete ) ( OTF2_LocationRef locationID , OTF2_TimeStamp snapTime , void * userData , OTF2_AttributeList * attributeList , OTF2_TimeStamp origEventTime , uint64_t requestID )
const OTF2_GlobalSnapReaderCallback_MpiIsendComplete = Ptr{Cvoid}

function OTF2_GlobalSnapReaderCallbacks_SetMpiIsendCompleteCallback(globalSnapReaderCallbacks, mpiIsendCompleteCallback)
    ccall((:OTF2_GlobalSnapReaderCallbacks_SetMpiIsendCompleteCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalSnapReaderCallbacks}, OTF2_GlobalSnapReaderCallback_MpiIsendComplete), globalSnapReaderCallbacks, mpiIsendCompleteCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_GlobalSnapReaderCallback_MpiRecv ) ( OTF2_LocationRef locationID , OTF2_TimeStamp snapTime , void * userData , OTF2_AttributeList * attributeList , OTF2_TimeStamp origEventTime , uint32_t sender , OTF2_CommRef communicator , uint32_t msgTag , uint64_t msgLength )
const OTF2_GlobalSnapReaderCallback_MpiRecv = Ptr{Cvoid}

function OTF2_GlobalSnapReaderCallbacks_SetMpiRecvCallback(globalSnapReaderCallbacks, mpiRecvCallback)
    ccall((:OTF2_GlobalSnapReaderCallbacks_SetMpiRecvCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalSnapReaderCallbacks}, OTF2_GlobalSnapReaderCallback_MpiRecv), globalSnapReaderCallbacks, mpiRecvCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_GlobalSnapReaderCallback_MpiIrecvRequest ) ( OTF2_LocationRef locationID , OTF2_TimeStamp snapTime , void * userData , OTF2_AttributeList * attributeList , OTF2_TimeStamp origEventTime , uint64_t requestID )
const OTF2_GlobalSnapReaderCallback_MpiIrecvRequest = Ptr{Cvoid}

function OTF2_GlobalSnapReaderCallbacks_SetMpiIrecvRequestCallback(globalSnapReaderCallbacks, mpiIrecvRequestCallback)
    ccall((:OTF2_GlobalSnapReaderCallbacks_SetMpiIrecvRequestCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalSnapReaderCallbacks}, OTF2_GlobalSnapReaderCallback_MpiIrecvRequest), globalSnapReaderCallbacks, mpiIrecvRequestCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_GlobalSnapReaderCallback_MpiIrecv ) ( OTF2_LocationRef locationID , OTF2_TimeStamp snapTime , void * userData , OTF2_AttributeList * attributeList , OTF2_TimeStamp origEventTime , uint32_t sender , OTF2_CommRef communicator , uint32_t msgTag , uint64_t msgLength , uint64_t requestID )
const OTF2_GlobalSnapReaderCallback_MpiIrecv = Ptr{Cvoid}

function OTF2_GlobalSnapReaderCallbacks_SetMpiIrecvCallback(globalSnapReaderCallbacks, mpiIrecvCallback)
    ccall((:OTF2_GlobalSnapReaderCallbacks_SetMpiIrecvCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalSnapReaderCallbacks}, OTF2_GlobalSnapReaderCallback_MpiIrecv), globalSnapReaderCallbacks, mpiIrecvCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_GlobalSnapReaderCallback_MpiCollectiveBegin ) ( OTF2_LocationRef locationID , OTF2_TimeStamp snapTime , void * userData , OTF2_AttributeList * attributeList , OTF2_TimeStamp origEventTime )
const OTF2_GlobalSnapReaderCallback_MpiCollectiveBegin = Ptr{Cvoid}

function OTF2_GlobalSnapReaderCallbacks_SetMpiCollectiveBeginCallback(globalSnapReaderCallbacks, mpiCollectiveBeginCallback)
    ccall((:OTF2_GlobalSnapReaderCallbacks_SetMpiCollectiveBeginCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalSnapReaderCallbacks}, OTF2_GlobalSnapReaderCallback_MpiCollectiveBegin), globalSnapReaderCallbacks, mpiCollectiveBeginCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_GlobalSnapReaderCallback_MpiCollectiveEnd ) ( OTF2_LocationRef locationID , OTF2_TimeStamp snapTime , void * userData , OTF2_AttributeList * attributeList , OTF2_TimeStamp origEventTime , OTF2_CollectiveOp collectiveOp , OTF2_CommRef communicator , uint32_t root , uint64_t sizeSent , uint64_t sizeReceived )
const OTF2_GlobalSnapReaderCallback_MpiCollectiveEnd = Ptr{Cvoid}

function OTF2_GlobalSnapReaderCallbacks_SetMpiCollectiveEndCallback(globalSnapReaderCallbacks, mpiCollectiveEndCallback)
    ccall((:OTF2_GlobalSnapReaderCallbacks_SetMpiCollectiveEndCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalSnapReaderCallbacks}, OTF2_GlobalSnapReaderCallback_MpiCollectiveEnd), globalSnapReaderCallbacks, mpiCollectiveEndCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_GlobalSnapReaderCallback_OmpFork ) ( OTF2_LocationRef locationID , OTF2_TimeStamp snapTime , void * userData , OTF2_AttributeList * attributeList , OTF2_TimeStamp origEventTime , uint32_t numberOfRequestedThreads )
const OTF2_GlobalSnapReaderCallback_OmpFork = Ptr{Cvoid}

function OTF2_GlobalSnapReaderCallbacks_SetOmpForkCallback(globalSnapReaderCallbacks, ompForkCallback)
    ccall((:OTF2_GlobalSnapReaderCallbacks_SetOmpForkCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalSnapReaderCallbacks}, OTF2_GlobalSnapReaderCallback_OmpFork), globalSnapReaderCallbacks, ompForkCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_GlobalSnapReaderCallback_OmpAcquireLock ) ( OTF2_LocationRef locationID , OTF2_TimeStamp snapTime , void * userData , OTF2_AttributeList * attributeList , OTF2_TimeStamp origEventTime , uint32_t lockID , uint32_t acquisitionOrder )
const OTF2_GlobalSnapReaderCallback_OmpAcquireLock = Ptr{Cvoid}

function OTF2_GlobalSnapReaderCallbacks_SetOmpAcquireLockCallback(globalSnapReaderCallbacks, ompAcquireLockCallback)
    ccall((:OTF2_GlobalSnapReaderCallbacks_SetOmpAcquireLockCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalSnapReaderCallbacks}, OTF2_GlobalSnapReaderCallback_OmpAcquireLock), globalSnapReaderCallbacks, ompAcquireLockCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_GlobalSnapReaderCallback_OmpTaskCreate ) ( OTF2_LocationRef locationID , OTF2_TimeStamp snapTime , void * userData , OTF2_AttributeList * attributeList , OTF2_TimeStamp origEventTime , uint64_t taskID )
const OTF2_GlobalSnapReaderCallback_OmpTaskCreate = Ptr{Cvoid}

function OTF2_GlobalSnapReaderCallbacks_SetOmpTaskCreateCallback(globalSnapReaderCallbacks, ompTaskCreateCallback)
    ccall((:OTF2_GlobalSnapReaderCallbacks_SetOmpTaskCreateCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalSnapReaderCallbacks}, OTF2_GlobalSnapReaderCallback_OmpTaskCreate), globalSnapReaderCallbacks, ompTaskCreateCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_GlobalSnapReaderCallback_OmpTaskSwitch ) ( OTF2_LocationRef locationID , OTF2_TimeStamp snapTime , void * userData , OTF2_AttributeList * attributeList , OTF2_TimeStamp origEventTime , uint64_t taskID )
const OTF2_GlobalSnapReaderCallback_OmpTaskSwitch = Ptr{Cvoid}

function OTF2_GlobalSnapReaderCallbacks_SetOmpTaskSwitchCallback(globalSnapReaderCallbacks, ompTaskSwitchCallback)
    ccall((:OTF2_GlobalSnapReaderCallbacks_SetOmpTaskSwitchCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalSnapReaderCallbacks}, OTF2_GlobalSnapReaderCallback_OmpTaskSwitch), globalSnapReaderCallbacks, ompTaskSwitchCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_GlobalSnapReaderCallback_Metric ) ( OTF2_LocationRef locationID , OTF2_TimeStamp snapTime , void * userData , OTF2_AttributeList * attributeList , OTF2_TimeStamp origEventTime , OTF2_MetricRef metric , uint8_t numberOfMetrics , const OTF2_Type * typeIDs , const OTF2_MetricValue * metricValues )
const OTF2_GlobalSnapReaderCallback_Metric = Ptr{Cvoid}

function OTF2_GlobalSnapReaderCallbacks_SetMetricCallback(globalSnapReaderCallbacks, metricCallback)
    ccall((:OTF2_GlobalSnapReaderCallbacks_SetMetricCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalSnapReaderCallbacks}, OTF2_GlobalSnapReaderCallback_Metric), globalSnapReaderCallbacks, metricCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_GlobalSnapReaderCallback_ParameterString ) ( OTF2_LocationRef locationID , OTF2_TimeStamp snapTime , void * userData , OTF2_AttributeList * attributeList , OTF2_TimeStamp origEventTime , OTF2_ParameterRef parameter , OTF2_StringRef string )
const OTF2_GlobalSnapReaderCallback_ParameterString = Ptr{Cvoid}

function OTF2_GlobalSnapReaderCallbacks_SetParameterStringCallback(globalSnapReaderCallbacks, parameterStringCallback)
    ccall((:OTF2_GlobalSnapReaderCallbacks_SetParameterStringCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalSnapReaderCallbacks}, OTF2_GlobalSnapReaderCallback_ParameterString), globalSnapReaderCallbacks, parameterStringCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_GlobalSnapReaderCallback_ParameterInt ) ( OTF2_LocationRef locationID , OTF2_TimeStamp snapTime , void * userData , OTF2_AttributeList * attributeList , OTF2_TimeStamp origEventTime , OTF2_ParameterRef parameter , int64_t value )
const OTF2_GlobalSnapReaderCallback_ParameterInt = Ptr{Cvoid}

function OTF2_GlobalSnapReaderCallbacks_SetParameterIntCallback(globalSnapReaderCallbacks, parameterIntCallback)
    ccall((:OTF2_GlobalSnapReaderCallbacks_SetParameterIntCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalSnapReaderCallbacks}, OTF2_GlobalSnapReaderCallback_ParameterInt), globalSnapReaderCallbacks, parameterIntCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_GlobalSnapReaderCallback_ParameterUnsignedInt ) ( OTF2_LocationRef locationID , OTF2_TimeStamp snapTime , void * userData , OTF2_AttributeList * attributeList , OTF2_TimeStamp origEventTime , OTF2_ParameterRef parameter , uint64_t value )
const OTF2_GlobalSnapReaderCallback_ParameterUnsignedInt = Ptr{Cvoid}

function OTF2_GlobalSnapReaderCallbacks_SetParameterUnsignedIntCallback(globalSnapReaderCallbacks, parameterUnsignedIntCallback)
    ccall((:OTF2_GlobalSnapReaderCallbacks_SetParameterUnsignedIntCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalSnapReaderCallbacks}, OTF2_GlobalSnapReaderCallback_ParameterUnsignedInt), globalSnapReaderCallbacks, parameterUnsignedIntCallback)
end

function OTF2_GlobalSnapReader_SetCallbacks(reader, callbacks, userData)
    ccall((:OTF2_GlobalSnapReader_SetCallbacks, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalSnapReader}, Ptr{OTF2_GlobalSnapReaderCallbacks}, Ptr{Cvoid}), reader, callbacks, userData)
end

function OTF2_GlobalSnapReader_ReadSnapshots(reader, recordsToRead, recordsRead)
    ccall((:OTF2_GlobalSnapReader_ReadSnapshots, libotf2), OTF2_ErrorCode, (Ptr{OTF2_GlobalSnapReader}, UInt64, Ptr{UInt64}), reader, recordsToRead, recordsRead)
end

mutable struct OTF2_ThumbWriter_struct end

const OTF2_ThumbWriter = OTF2_ThumbWriter_struct

mutable struct OTF2_ThumbReader_struct end

const OTF2_ThumbReader = OTF2_ThumbReader_struct

function OTF2_ThumbReader_GetHeader(reader, name, description, type, numberOfSamples, numberOfMetrics, refsToDefs)
    ccall((:OTF2_ThumbReader_GetHeader, libotf2), OTF2_ErrorCode, (Ptr{OTF2_ThumbReader}, Ptr{Ptr{Cchar}}, Ptr{Ptr{Cchar}}, Ptr{OTF2_ThumbnailType}, Ptr{UInt32}, Ptr{UInt32}, Ptr{Ptr{UInt64}}), reader, name, description, type, numberOfSamples, numberOfMetrics, refsToDefs)
end

function OTF2_ThumbReader_ReadSample(reader, baseline, numberOfMetrics, metricSamples)
    ccall((:OTF2_ThumbReader_ReadSample, libotf2), OTF2_ErrorCode, (Ptr{OTF2_ThumbReader}, Ptr{UInt64}, UInt32, Ptr{UInt64}), reader, baseline, numberOfMetrics, metricSamples)
end

function OTF2_ThumbWriter_WriteSample(writer, baseline, numberOfMetrics, metricSamples)
    ccall((:OTF2_ThumbWriter_WriteSample, libotf2), OTF2_ErrorCode, (Ptr{OTF2_ThumbWriter}, UInt64, UInt32, Ptr{UInt64}), writer, baseline, numberOfMetrics, metricSamples)
end

const OTF2_MarkerSeverity = UInt8

@cenum OTF2_MarkerSeverity_enum::UInt32 begin
    OTF2_SEVERITY_NONE = 0
    OTF2_SEVERITY_LOW = 1
    OTF2_SEVERITY_MEDIUM = 2
    OTF2_SEVERITY_HIGH = 3
end

const OTF2_MarkerScope = UInt8

@cenum OTF2_MarkerScope_enum::UInt32 begin
    OTF2_MARKER_SCOPE_GLOBAL = 0
    OTF2_MARKER_SCOPE_LOCATION = 1
    OTF2_MARKER_SCOPE_LOCATION_GROUP = 2
    OTF2_MARKER_SCOPE_SYSTEM_TREE_NODE = 3
    OTF2_MARKER_SCOPE_GROUP = 4
    OTF2_MARKER_SCOPE_COMM = 5
end

mutable struct OTF2_MarkerWriter_struct end

const OTF2_MarkerWriter = OTF2_MarkerWriter_struct

function OTF2_MarkerWriter_WriteDefMarker(writerHandle, self, markerGroup, markerCategory, severity)
    ccall((:OTF2_MarkerWriter_WriteDefMarker, libotf2), OTF2_ErrorCode, (Ptr{OTF2_MarkerWriter}, OTF2_MarkerRef, Ptr{Cchar}, Ptr{Cchar}, OTF2_MarkerSeverity), writerHandle, self, markerGroup, markerCategory, severity)
end

function OTF2_MarkerWriter_WriteMarker(writerHandle, timestamp, duration, marker, scope, scopeRef, text)
    ccall((:OTF2_MarkerWriter_WriteMarker, libotf2), OTF2_ErrorCode, (Ptr{OTF2_MarkerWriter}, OTF2_TimeStamp, OTF2_TimeStamp, OTF2_MarkerRef, OTF2_MarkerScope, UInt64, Ptr{Cchar}), writerHandle, timestamp, duration, marker, scope, scopeRef, text)
end

mutable struct OTF2_MarkerReaderCallbacks_struct end

const OTF2_MarkerReaderCallbacks = OTF2_MarkerReaderCallbacks_struct

function OTF2_MarkerReaderCallbacks_New()
    ccall((:OTF2_MarkerReaderCallbacks_New, libotf2), Ptr{OTF2_MarkerReaderCallbacks}, ())
end

function OTF2_MarkerReaderCallbacks_Delete(markerReaderCallbacks)
    ccall((:OTF2_MarkerReaderCallbacks_Delete, libotf2), Cvoid, (Ptr{OTF2_MarkerReaderCallbacks},), markerReaderCallbacks)
end

function OTF2_MarkerReaderCallbacks_Clear(markerReaderCallbacks)
    ccall((:OTF2_MarkerReaderCallbacks_Clear, libotf2), Cvoid, (Ptr{OTF2_MarkerReaderCallbacks},), markerReaderCallbacks)
end

# typedef OTF2_CallbackCode ( * OTF2_MarkerReaderCallback_Unknown ) ( void * userData )
const OTF2_MarkerReaderCallback_Unknown = Ptr{Cvoid}

function OTF2_MarkerReaderCallbacks_SetUnknownCallback(markerReaderCallbacks, unknownCallback)
    ccall((:OTF2_MarkerReaderCallbacks_SetUnknownCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_MarkerReaderCallbacks}, OTF2_MarkerReaderCallback_Unknown), markerReaderCallbacks, unknownCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_MarkerReaderCallback_DefMarker ) ( void * userData , OTF2_MarkerRef self , const char * markerGroup , const char * markerCategory , OTF2_MarkerSeverity severity )
const OTF2_MarkerReaderCallback_DefMarker = Ptr{Cvoid}

function OTF2_MarkerReaderCallbacks_SetDefMarkerCallback(markerReaderCallbacks, defMarkerCallback)
    ccall((:OTF2_MarkerReaderCallbacks_SetDefMarkerCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_MarkerReaderCallbacks}, OTF2_MarkerReaderCallback_DefMarker), markerReaderCallbacks, defMarkerCallback)
end

# typedef OTF2_CallbackCode ( * OTF2_MarkerReaderCallback_Marker ) ( void * userData , OTF2_TimeStamp timestamp , OTF2_TimeStamp duration , OTF2_MarkerRef marker , OTF2_MarkerScope scope , uint64_t scopeRef , const char * text )
const OTF2_MarkerReaderCallback_Marker = Ptr{Cvoid}

function OTF2_MarkerReaderCallbacks_SetMarkerCallback(markerReaderCallbacks, markerCallback)
    ccall((:OTF2_MarkerReaderCallbacks_SetMarkerCallback, libotf2), OTF2_ErrorCode, (Ptr{OTF2_MarkerReaderCallbacks}, OTF2_MarkerReaderCallback_Marker), markerReaderCallbacks, markerCallback)
end

function OTF2_MarkerReader_ReadMarkers(reader, recordsToRead, recordsRead)
    ccall((:OTF2_MarkerReader_ReadMarkers, libotf2), OTF2_ErrorCode, (Ptr{OTF2_MarkerReader}, UInt64, Ptr{UInt64}), reader, recordsToRead, recordsRead)
end

function OTF2_MarkerReader_SetCallbacks(reader, callbacks, userData)
    ccall((:OTF2_MarkerReader_SetCallbacks, libotf2), OTF2_ErrorCode, (Ptr{OTF2_MarkerReader}, Ptr{OTF2_MarkerReaderCallbacks}, Ptr{Cvoid}), reader, callbacks, userData)
end

mutable struct OTF2_Archive_struct end

const OTF2_Archive = OTF2_Archive_struct

function OTF2_Archive_Open(archivePath, archiveName, fileMode, chunkSizeEvents, chunkSizeDefs, fileSubstrate, compression)
    ccall((:OTF2_Archive_Open, libotf2), Ptr{OTF2_Archive}, (Ptr{Cchar}, Ptr{Cchar}, OTF2_FileMode, UInt64, UInt64, OTF2_FileSubstrate, OTF2_Compression), archivePath, archiveName, fileMode, chunkSizeEvents, chunkSizeDefs, fileSubstrate, compression)
end

function OTF2_Archive_Close(archive)
    ccall((:OTF2_Archive_Close, libotf2), OTF2_ErrorCode, (Ptr{OTF2_Archive},), archive)
end

function OTF2_Archive_SwitchFileMode(archive, newFileMode)
    ccall((:OTF2_Archive_SwitchFileMode, libotf2), OTF2_ErrorCode, (Ptr{OTF2_Archive}, OTF2_FileMode), archive, newFileMode)
end

function OTF2_Archive_SetDefChunkSize(archive, chunkSize)
    ccall((:OTF2_Archive_SetDefChunkSize, libotf2), OTF2_ErrorCode, (Ptr{OTF2_Archive}, UInt64), archive, chunkSize)
end

function OTF2_Archive_SetMachineName(archive, machineName)
    ccall((:OTF2_Archive_SetMachineName, libotf2), OTF2_ErrorCode, (Ptr{OTF2_Archive}, Ptr{Cchar}), archive, machineName)
end

function OTF2_Archive_SetDescription(archive, description)
    ccall((:OTF2_Archive_SetDescription, libotf2), OTF2_ErrorCode, (Ptr{OTF2_Archive}, Ptr{Cchar}), archive, description)
end

function OTF2_Archive_SetCreator(archive, creator)
    ccall((:OTF2_Archive_SetCreator, libotf2), OTF2_ErrorCode, (Ptr{OTF2_Archive}, Ptr{Cchar}), archive, creator)
end

function OTF2_Archive_SetFlushCallbacks(archive, flushCallbacks, flushData)
    ccall((:OTF2_Archive_SetFlushCallbacks, libotf2), OTF2_ErrorCode, (Ptr{OTF2_Archive}, Ptr{OTF2_FlushCallbacks}, Ptr{Cvoid}), archive, flushCallbacks, flushData)
end

function OTF2_Archive_SetMemoryCallbacks(archive, memoryCallbacks, memoryData)
    ccall((:OTF2_Archive_SetMemoryCallbacks, libotf2), OTF2_ErrorCode, (Ptr{OTF2_Archive}, Ptr{OTF2_MemoryCallbacks}, Ptr{Cvoid}), archive, memoryCallbacks, memoryData)
end

function OTF2_Archive_SetCollectiveCallbacks(archive, collectiveCallbacks, collectiveData, globalCommContext, localCommContext)
    ccall((:OTF2_Archive_SetCollectiveCallbacks, libotf2), OTF2_ErrorCode, (Ptr{OTF2_Archive}, Ptr{OTF2_CollectiveCallbacks}, Ptr{Cvoid}, Ptr{OTF2_CollectiveContext}, Ptr{OTF2_CollectiveContext}), archive, collectiveCallbacks, collectiveData, globalCommContext, localCommContext)
end

function OTF2_Archive_SetSerialCollectiveCallbacks(archive)
    ccall((:OTF2_Archive_SetSerialCollectiveCallbacks, libotf2), OTF2_ErrorCode, (Ptr{OTF2_Archive},), archive)
end

function OTF2_Archive_IsPrimary(archive, result)
    ccall((:OTF2_Archive_IsPrimary, libotf2), OTF2_ErrorCode, (Ptr{OTF2_Archive}, Ptr{Bool}), archive, result)
end

function OTF2_Archive_IsMaster(archive, result)
    ccall((:OTF2_Archive_IsMaster, libotf2), OTF2_ErrorCode, (Ptr{OTF2_Archive}, Ptr{Bool}), archive, result)
end

function OTF2_Archive_SetLockingCallbacks(archive, lockingCallbacks, lockingData)
    ccall((:OTF2_Archive_SetLockingCallbacks, libotf2), OTF2_ErrorCode, (Ptr{OTF2_Archive}, Ptr{OTF2_LockingCallbacks}, Ptr{Cvoid}), archive, lockingCallbacks, lockingData)
end

function OTF2_Archive_SetHint(archive, hint, value)
    ccall((:OTF2_Archive_SetHint, libotf2), OTF2_ErrorCode, (Ptr{OTF2_Archive}, OTF2_Hint, Ptr{Cvoid}), archive, hint, value)
end

function OTF2_Archive_SetProperty(archive, name, value, overwrite)
    ccall((:OTF2_Archive_SetProperty, libotf2), OTF2_ErrorCode, (Ptr{OTF2_Archive}, Ptr{Cchar}, Ptr{Cchar}, Bool), archive, name, value, overwrite)
end

function OTF2_Archive_SetBoolProperty(archive, name, value, overwrite)
    ccall((:OTF2_Archive_SetBoolProperty, libotf2), OTF2_ErrorCode, (Ptr{OTF2_Archive}, Ptr{Cchar}, Bool, Bool), archive, name, value, overwrite)
end

function OTF2_Archive_GetPropertyNames(archive, numberOfProperties, names)
    ccall((:OTF2_Archive_GetPropertyNames, libotf2), OTF2_ErrorCode, (Ptr{OTF2_Archive}, Ptr{UInt32}, Ptr{Ptr{Ptr{Cchar}}}), archive, numberOfProperties, names)
end

function OTF2_Archive_GetProperty(archive, name, value)
    ccall((:OTF2_Archive_GetProperty, libotf2), OTF2_ErrorCode, (Ptr{OTF2_Archive}, Ptr{Cchar}, Ptr{Ptr{Cchar}}), archive, name, value)
end

function OTF2_Archive_GetTraceId(archive, id)
    ccall((:OTF2_Archive_GetTraceId, libotf2), OTF2_ErrorCode, (Ptr{OTF2_Archive}, Ptr{UInt64}), archive, id)
end

function OTF2_Archive_GetNumberOfLocations(archive, numberOfLocations)
    ccall((:OTF2_Archive_GetNumberOfLocations, libotf2), OTF2_ErrorCode, (Ptr{OTF2_Archive}, Ptr{UInt64}), archive, numberOfLocations)
end

function OTF2_Archive_GetNumberOfGlobalDefinitions(archive, numberOfDefinitions)
    ccall((:OTF2_Archive_GetNumberOfGlobalDefinitions, libotf2), OTF2_ErrorCode, (Ptr{OTF2_Archive}, Ptr{UInt64}), archive, numberOfDefinitions)
end

function OTF2_Archive_GetMachineName(archive, machineName)
    ccall((:OTF2_Archive_GetMachineName, libotf2), OTF2_ErrorCode, (Ptr{OTF2_Archive}, Ptr{Ptr{Cchar}}), archive, machineName)
end

function OTF2_Archive_GetDescription(archive, description)
    ccall((:OTF2_Archive_GetDescription, libotf2), OTF2_ErrorCode, (Ptr{OTF2_Archive}, Ptr{Ptr{Cchar}}), archive, description)
end

function OTF2_Archive_GetCreator(archive, creator)
    ccall((:OTF2_Archive_GetCreator, libotf2), OTF2_ErrorCode, (Ptr{OTF2_Archive}, Ptr{Ptr{Cchar}}), archive, creator)
end

function OTF2_Archive_GetVersion(archive, major, minor, bugfix)
    ccall((:OTF2_Archive_GetVersion, libotf2), OTF2_ErrorCode, (Ptr{OTF2_Archive}, Ptr{UInt8}, Ptr{UInt8}, Ptr{UInt8}), archive, major, minor, bugfix)
end

function OTF2_Archive_GetChunkSize(archive, chunkSizeEvents, chunkSizeDefs)
    ccall((:OTF2_Archive_GetChunkSize, libotf2), OTF2_ErrorCode, (Ptr{OTF2_Archive}, Ptr{UInt64}, Ptr{UInt64}), archive, chunkSizeEvents, chunkSizeDefs)
end

function OTF2_Archive_GetFileSubstrate(archive, substrate)
    ccall((:OTF2_Archive_GetFileSubstrate, libotf2), OTF2_ErrorCode, (Ptr{OTF2_Archive}, Ptr{OTF2_FileSubstrate}), archive, substrate)
end

function OTF2_Archive_GetCompression(archive, compression)
    ccall((:OTF2_Archive_GetCompression, libotf2), OTF2_ErrorCode, (Ptr{OTF2_Archive}, Ptr{OTF2_Compression}), archive, compression)
end

function OTF2_Archive_GetEvtWriter(archive, location)
    ccall((:OTF2_Archive_GetEvtWriter, libotf2), Ptr{OTF2_EvtWriter}, (Ptr{OTF2_Archive}, OTF2_LocationRef), archive, location)
end

function OTF2_Archive_GetDefWriter(archive, location)
    ccall((:OTF2_Archive_GetDefWriter, libotf2), Ptr{OTF2_DefWriter}, (Ptr{OTF2_Archive}, OTF2_LocationRef), archive, location)
end

function OTF2_Archive_GetGlobalDefWriter(archive)
    ccall((:OTF2_Archive_GetGlobalDefWriter, libotf2), Ptr{OTF2_GlobalDefWriter}, (Ptr{OTF2_Archive},), archive)
end

function OTF2_Archive_GetSnapWriter(archive, location)
    ccall((:OTF2_Archive_GetSnapWriter, libotf2), Ptr{OTF2_SnapWriter}, (Ptr{OTF2_Archive}, OTF2_LocationRef), archive, location)
end

function OTF2_Archive_GetThumbWriter(archive, name, description, type, numberOfSamples, numberOfMetrics, refsToDefs)
    ccall((:OTF2_Archive_GetThumbWriter, libotf2), Ptr{OTF2_ThumbWriter}, (Ptr{OTF2_Archive}, Ptr{Cchar}, Ptr{Cchar}, OTF2_ThumbnailType, UInt32, UInt32, Ptr{UInt64}), archive, name, description, type, numberOfSamples, numberOfMetrics, refsToDefs)
end

function OTF2_Archive_GetMarkerWriter(archive)
    ccall((:OTF2_Archive_GetMarkerWriter, libotf2), Ptr{OTF2_MarkerWriter}, (Ptr{OTF2_Archive},), archive)
end

function OTF2_Archive_GetEvtReader(archive, location)
    ccall((:OTF2_Archive_GetEvtReader, libotf2), Ptr{OTF2_EvtReader}, (Ptr{OTF2_Archive}, OTF2_LocationRef), archive, location)
end

function OTF2_Archive_GetGlobalEvtReader(archive)
    ccall((:OTF2_Archive_GetGlobalEvtReader, libotf2), Ptr{OTF2_GlobalEvtReader}, (Ptr{OTF2_Archive},), archive)
end

function OTF2_Archive_GetDefReader(archive, location)
    ccall((:OTF2_Archive_GetDefReader, libotf2), Ptr{OTF2_DefReader}, (Ptr{OTF2_Archive}, OTF2_LocationRef), archive, location)
end

function OTF2_Archive_GetGlobalDefReader(archive)
    ccall((:OTF2_Archive_GetGlobalDefReader, libotf2), Ptr{OTF2_GlobalDefReader}, (Ptr{OTF2_Archive},), archive)
end

function OTF2_Archive_GetSnapReader(archive, location)
    ccall((:OTF2_Archive_GetSnapReader, libotf2), Ptr{OTF2_SnapReader}, (Ptr{OTF2_Archive}, OTF2_LocationRef), archive, location)
end

function OTF2_Archive_GetGlobalSnapReader(archive)
    ccall((:OTF2_Archive_GetGlobalSnapReader, libotf2), Ptr{OTF2_GlobalSnapReader}, (Ptr{OTF2_Archive},), archive)
end

function OTF2_Archive_GetThumbReader(archive, number)
    ccall((:OTF2_Archive_GetThumbReader, libotf2), Ptr{OTF2_ThumbReader}, (Ptr{OTF2_Archive}, UInt32), archive, number)
end

function OTF2_Archive_GetMarkerReader(archive)
    ccall((:OTF2_Archive_GetMarkerReader, libotf2), Ptr{OTF2_MarkerReader}, (Ptr{OTF2_Archive},), archive)
end

function OTF2_Archive_CloseEvtWriter(archive, writer)
    ccall((:OTF2_Archive_CloseEvtWriter, libotf2), OTF2_ErrorCode, (Ptr{OTF2_Archive}, Ptr{OTF2_EvtWriter}), archive, writer)
end

function OTF2_Archive_CloseDefWriter(archive, writer)
    ccall((:OTF2_Archive_CloseDefWriter, libotf2), OTF2_ErrorCode, (Ptr{OTF2_Archive}, Ptr{OTF2_DefWriter}), archive, writer)
end

function OTF2_Archive_CloseMarkerWriter(archive, writer)
    ccall((:OTF2_Archive_CloseMarkerWriter, libotf2), OTF2_ErrorCode, (Ptr{OTF2_Archive}, Ptr{OTF2_MarkerWriter}), archive, writer)
end

function OTF2_Archive_CloseSnapWriter(archive, writer)
    ccall((:OTF2_Archive_CloseSnapWriter, libotf2), OTF2_ErrorCode, (Ptr{OTF2_Archive}, Ptr{OTF2_SnapWriter}), archive, writer)
end

function OTF2_Archive_CloseGlobalDefWriter(archive, writer)
    ccall((:OTF2_Archive_CloseGlobalDefWriter, libotf2), OTF2_ErrorCode, (Ptr{OTF2_Archive}, Ptr{OTF2_GlobalDefWriter}), archive, writer)
end

function OTF2_Archive_CloseEvtReader(archive, reader)
    ccall((:OTF2_Archive_CloseEvtReader, libotf2), OTF2_ErrorCode, (Ptr{OTF2_Archive}, Ptr{OTF2_EvtReader}), archive, reader)
end

function OTF2_Archive_CloseThumbReader(archive, reader)
    ccall((:OTF2_Archive_CloseThumbReader, libotf2), OTF2_ErrorCode, (Ptr{OTF2_Archive}, Ptr{OTF2_ThumbReader}), archive, reader)
end

function OTF2_Archive_CloseGlobalEvtReader(archive, globalEvtReader)
    ccall((:OTF2_Archive_CloseGlobalEvtReader, libotf2), OTF2_ErrorCode, (Ptr{OTF2_Archive}, Ptr{OTF2_GlobalEvtReader}), archive, globalEvtReader)
end

function OTF2_Archive_CloseDefReader(archive, reader)
    ccall((:OTF2_Archive_CloseDefReader, libotf2), OTF2_ErrorCode, (Ptr{OTF2_Archive}, Ptr{OTF2_DefReader}), archive, reader)
end

function OTF2_Archive_CloseGlobalDefReader(archive, globalDefReader)
    ccall((:OTF2_Archive_CloseGlobalDefReader, libotf2), OTF2_ErrorCode, (Ptr{OTF2_Archive}, Ptr{OTF2_GlobalDefReader}), archive, globalDefReader)
end

function OTF2_Archive_CloseSnapReader(archive, reader)
    ccall((:OTF2_Archive_CloseSnapReader, libotf2), OTF2_ErrorCode, (Ptr{OTF2_Archive}, Ptr{OTF2_SnapReader}), archive, reader)
end

function OTF2_Archive_CloseGlobalSnapReader(archive, globalSnapReader)
    ccall((:OTF2_Archive_CloseGlobalSnapReader, libotf2), OTF2_ErrorCode, (Ptr{OTF2_Archive}, Ptr{OTF2_GlobalSnapReader}), archive, globalSnapReader)
end

function OTF2_Archive_CloseMarkerReader(archive, markerReader)
    ccall((:OTF2_Archive_CloseMarkerReader, libotf2), OTF2_ErrorCode, (Ptr{OTF2_Archive}, Ptr{OTF2_MarkerReader}), archive, markerReader)
end

function OTF2_Archive_GetNumberOfThumbnails(archive, number)
    ccall((:OTF2_Archive_GetNumberOfThumbnails, libotf2), OTF2_ErrorCode, (Ptr{OTF2_Archive}, Ptr{UInt32}), archive, number)
end

function OTF2_Archive_SetNumberOfSnapshots(archive, number)
    ccall((:OTF2_Archive_SetNumberOfSnapshots, libotf2), OTF2_ErrorCode, (Ptr{OTF2_Archive}, UInt32), archive, number)
end

function OTF2_Archive_GetNumberOfSnapshots(archive, number)
    ccall((:OTF2_Archive_GetNumberOfSnapshots, libotf2), OTF2_ErrorCode, (Ptr{OTF2_Archive}, Ptr{UInt32}), archive, number)
end

function OTF2_Archive_OpenEvtFiles(archive)
    ccall((:OTF2_Archive_OpenEvtFiles, libotf2), OTF2_ErrorCode, (Ptr{OTF2_Archive},), archive)
end

function OTF2_Archive_CloseEvtFiles(archive)
    ccall((:OTF2_Archive_CloseEvtFiles, libotf2), OTF2_ErrorCode, (Ptr{OTF2_Archive},), archive)
end

function OTF2_Archive_OpenDefFiles(archive)
    ccall((:OTF2_Archive_OpenDefFiles, libotf2), OTF2_ErrorCode, (Ptr{OTF2_Archive},), archive)
end

function OTF2_Archive_CloseDefFiles(archive)
    ccall((:OTF2_Archive_CloseDefFiles, libotf2), OTF2_ErrorCode, (Ptr{OTF2_Archive},), archive)
end

function OTF2_Archive_OpenSnapFiles(archive)
    ccall((:OTF2_Archive_OpenSnapFiles, libotf2), OTF2_ErrorCode, (Ptr{OTF2_Archive},), archive)
end

function OTF2_Archive_CloseSnapFiles(archive)
    ccall((:OTF2_Archive_CloseSnapFiles, libotf2), OTF2_ErrorCode, (Ptr{OTF2_Archive},), archive)
end

function OTF2_Archive_SelectLocation(archive, location)
    ccall((:OTF2_Archive_SelectLocation, libotf2), OTF2_ErrorCode, (Ptr{OTF2_Archive}, OTF2_LocationRef), archive, location)
end

mutable struct OTF2_Reader_struct end

const OTF2_Reader = OTF2_Reader_struct

function OTF2_Reader_Open(anchorFilePath)
    ccall((:OTF2_Reader_Open, libotf2), Ptr{OTF2_Reader}, (Ptr{Cchar},), anchorFilePath)
end

function OTF2_Reader_Close(reader)
    ccall((:OTF2_Reader_Close, libotf2), OTF2_ErrorCode, (Ptr{OTF2_Reader},), reader)
end

function OTF2_Reader_SetHint(reader, hint, value)
    ccall((:OTF2_Reader_SetHint, libotf2), OTF2_ErrorCode, (Ptr{OTF2_Reader}, OTF2_Hint, Ptr{Cvoid}), reader, hint, value)
end

function OTF2_Reader_SetCollectiveCallbacks(reader, collectiveCallbacks, collectiveData, globalCommContext, localCommContext)
    ccall((:OTF2_Reader_SetCollectiveCallbacks, libotf2), OTF2_ErrorCode, (Ptr{OTF2_Reader}, Ptr{OTF2_CollectiveCallbacks}, Ptr{Cvoid}, Ptr{OTF2_CollectiveContext}, Ptr{OTF2_CollectiveContext}), reader, collectiveCallbacks, collectiveData, globalCommContext, localCommContext)
end

function OTF2_Reader_SetSerialCollectiveCallbacks(reader)
    ccall((:OTF2_Reader_SetSerialCollectiveCallbacks, libotf2), OTF2_ErrorCode, (Ptr{OTF2_Reader},), reader)
end

function OTF2_Reader_SetLockingCallbacks(reader, lockingCallbacks, lockingData)
    ccall((:OTF2_Reader_SetLockingCallbacks, libotf2), OTF2_ErrorCode, (Ptr{OTF2_Reader}, Ptr{OTF2_LockingCallbacks}, Ptr{Cvoid}), reader, lockingCallbacks, lockingData)
end

function OTF2_Reader_RegisterEvtCallbacks(reader, evtReader, callbacks, userData)
    ccall((:OTF2_Reader_RegisterEvtCallbacks, libotf2), OTF2_ErrorCode, (Ptr{OTF2_Reader}, Ptr{OTF2_EvtReader}, Ptr{OTF2_EvtReaderCallbacks}, Ptr{Cvoid}), reader, evtReader, callbacks, userData)
end

function OTF2_Reader_RegisterGlobalEvtCallbacks(reader, evtReader, callbacks, userData)
    ccall((:OTF2_Reader_RegisterGlobalEvtCallbacks, libotf2), OTF2_ErrorCode, (Ptr{OTF2_Reader}, Ptr{OTF2_GlobalEvtReader}, Ptr{OTF2_GlobalEvtReaderCallbacks}, Ptr{Cvoid}), reader, evtReader, callbacks, userData)
end

function OTF2_Reader_RegisterDefCallbacks(reader, defReader, callbacks, userData)
    ccall((:OTF2_Reader_RegisterDefCallbacks, libotf2), OTF2_ErrorCode, (Ptr{OTF2_Reader}, Ptr{OTF2_DefReader}, Ptr{OTF2_DefReaderCallbacks}, Ptr{Cvoid}), reader, defReader, callbacks, userData)
end

function OTF2_Reader_RegisterGlobalDefCallbacks(reader, defReader, callbacks, userData)
    ccall((:OTF2_Reader_RegisterGlobalDefCallbacks, libotf2), OTF2_ErrorCode, (Ptr{OTF2_Reader}, Ptr{OTF2_GlobalDefReader}, Ptr{OTF2_GlobalDefReaderCallbacks}, Ptr{Cvoid}), reader, defReader, callbacks, userData)
end

function OTF2_Reader_RegisterSnapCallbacks(reader, snapReader, callbacks, userData)
    ccall((:OTF2_Reader_RegisterSnapCallbacks, libotf2), OTF2_ErrorCode, (Ptr{OTF2_Reader}, Ptr{OTF2_SnapReader}, Ptr{OTF2_SnapReaderCallbacks}, Ptr{Cvoid}), reader, snapReader, callbacks, userData)
end

function OTF2_Reader_RegisterGlobalSnapCallbacks(reader, evtReader, callbacks, userData)
    ccall((:OTF2_Reader_RegisterGlobalSnapCallbacks, libotf2), OTF2_ErrorCode, (Ptr{OTF2_Reader}, Ptr{OTF2_GlobalSnapReader}, Ptr{OTF2_GlobalSnapReaderCallbacks}, Ptr{Cvoid}), reader, evtReader, callbacks, userData)
end

function OTF2_Reader_RegisterMarkerCallbacks(reader, markerReader, callbacks, userData)
    ccall((:OTF2_Reader_RegisterMarkerCallbacks, libotf2), OTF2_ErrorCode, (Ptr{OTF2_Reader}, Ptr{OTF2_MarkerReader}, Ptr{OTF2_MarkerReaderCallbacks}, Ptr{Cvoid}), reader, markerReader, callbacks, userData)
end

function OTF2_Reader_ReadLocalEvents(reader, evtReader, eventsToRead, eventsRead)
    ccall((:OTF2_Reader_ReadLocalEvents, libotf2), OTF2_ErrorCode, (Ptr{OTF2_Reader}, Ptr{OTF2_EvtReader}, UInt64, Ptr{UInt64}), reader, evtReader, eventsToRead, eventsRead)
end

function OTF2_Reader_ReadAllLocalEvents(reader, evtReader, eventsRead)
    ccall((:OTF2_Reader_ReadAllLocalEvents, libotf2), OTF2_ErrorCode, (Ptr{OTF2_Reader}, Ptr{OTF2_EvtReader}, Ptr{UInt64}), reader, evtReader, eventsRead)
end

function OTF2_Reader_ReadLocalEventsBackward(reader, evtReader, eventsToRead, eventsRead)
    ccall((:OTF2_Reader_ReadLocalEventsBackward, libotf2), OTF2_ErrorCode, (Ptr{OTF2_Reader}, Ptr{OTF2_EvtReader}, UInt64, Ptr{UInt64}), reader, evtReader, eventsToRead, eventsRead)
end

function OTF2_Reader_ReadGlobalEvent(reader, evtReader)
    ccall((:OTF2_Reader_ReadGlobalEvent, libotf2), OTF2_ErrorCode, (Ptr{OTF2_Reader}, Ptr{OTF2_GlobalEvtReader}), reader, evtReader)
end

function OTF2_Reader_HasGlobalEvent(reader, evtReader, flag)
    ccall((:OTF2_Reader_HasGlobalEvent, libotf2), OTF2_ErrorCode, (Ptr{OTF2_Reader}, Ptr{OTF2_GlobalEvtReader}, Ptr{Cint}), reader, evtReader, flag)
end

function OTF2_Reader_ReadGlobalEvents(reader, evtReader, eventsToRead, eventsRead)
    ccall((:OTF2_Reader_ReadGlobalEvents, libotf2), OTF2_ErrorCode, (Ptr{OTF2_Reader}, Ptr{OTF2_GlobalEvtReader}, UInt64, Ptr{UInt64}), reader, evtReader, eventsToRead, eventsRead)
end

function OTF2_Reader_ReadAllGlobalEvents(reader, evtReader, eventsRead)
    ccall((:OTF2_Reader_ReadAllGlobalEvents, libotf2), OTF2_ErrorCode, (Ptr{OTF2_Reader}, Ptr{OTF2_GlobalEvtReader}, Ptr{UInt64}), reader, evtReader, eventsRead)
end

function OTF2_Reader_ReadLocalDefinitions(reader, defReader, definitionsToRead, definitionsRead)
    ccall((:OTF2_Reader_ReadLocalDefinitions, libotf2), OTF2_ErrorCode, (Ptr{OTF2_Reader}, Ptr{OTF2_DefReader}, UInt64, Ptr{UInt64}), reader, defReader, definitionsToRead, definitionsRead)
end

function OTF2_Reader_ReadAllLocalDefinitions(reader, defReader, definitionsRead)
    ccall((:OTF2_Reader_ReadAllLocalDefinitions, libotf2), OTF2_ErrorCode, (Ptr{OTF2_Reader}, Ptr{OTF2_DefReader}, Ptr{UInt64}), reader, defReader, definitionsRead)
end

function OTF2_Reader_ReadGlobalDefinitions(reader, defReader, definitionsToRead, definitionsRead)
    ccall((:OTF2_Reader_ReadGlobalDefinitions, libotf2), OTF2_ErrorCode, (Ptr{OTF2_Reader}, Ptr{OTF2_GlobalDefReader}, UInt64, Ptr{UInt64}), reader, defReader, definitionsToRead, definitionsRead)
end

function OTF2_Reader_ReadAllGlobalDefinitions(reader, defReader, definitionsRead)
    ccall((:OTF2_Reader_ReadAllGlobalDefinitions, libotf2), OTF2_ErrorCode, (Ptr{OTF2_Reader}, Ptr{OTF2_GlobalDefReader}, Ptr{UInt64}), reader, defReader, definitionsRead)
end

function OTF2_Reader_ReadLocalSnapshots(reader, snapReader, recordsToRead, recordsRead)
    ccall((:OTF2_Reader_ReadLocalSnapshots, libotf2), OTF2_ErrorCode, (Ptr{OTF2_Reader}, Ptr{OTF2_SnapReader}, UInt64, Ptr{UInt64}), reader, snapReader, recordsToRead, recordsRead)
end

function OTF2_Reader_ReadAllLocalSnapshots(reader, snapReader, recordsRead)
    ccall((:OTF2_Reader_ReadAllLocalSnapshots, libotf2), OTF2_ErrorCode, (Ptr{OTF2_Reader}, Ptr{OTF2_SnapReader}, Ptr{UInt64}), reader, snapReader, recordsRead)
end

function OTF2_Reader_ReadGlobalSnapshots(reader, snapReader, recordsToRead, recordsRead)
    ccall((:OTF2_Reader_ReadGlobalSnapshots, libotf2), OTF2_ErrorCode, (Ptr{OTF2_Reader}, Ptr{OTF2_GlobalSnapReader}, UInt64, Ptr{UInt64}), reader, snapReader, recordsToRead, recordsRead)
end

function OTF2_Reader_ReadAllGlobalSnapshots(reader, snapReader, recordsRead)
    ccall((:OTF2_Reader_ReadAllGlobalSnapshots, libotf2), OTF2_ErrorCode, (Ptr{OTF2_Reader}, Ptr{OTF2_GlobalSnapReader}, Ptr{UInt64}), reader, snapReader, recordsRead)
end

function OTF2_Reader_ReadMarkers(reader, markerReader, markersToRead, markersRead)
    ccall((:OTF2_Reader_ReadMarkers, libotf2), OTF2_ErrorCode, (Ptr{OTF2_Reader}, Ptr{OTF2_MarkerReader}, UInt64, Ptr{UInt64}), reader, markerReader, markersToRead, markersRead)
end

function OTF2_Reader_ReadAllMarkers(reader, markerReader, markersRead)
    ccall((:OTF2_Reader_ReadAllMarkers, libotf2), OTF2_ErrorCode, (Ptr{OTF2_Reader}, Ptr{OTF2_MarkerReader}, Ptr{UInt64}), reader, markerReader, markersRead)
end

function OTF2_Reader_GetEvtReader(reader, location)
    ccall((:OTF2_Reader_GetEvtReader, libotf2), Ptr{OTF2_EvtReader}, (Ptr{OTF2_Reader}, OTF2_LocationRef), reader, location)
end

function OTF2_Reader_GetGlobalEvtReader(reader)
    ccall((:OTF2_Reader_GetGlobalEvtReader, libotf2), Ptr{OTF2_GlobalEvtReader}, (Ptr{OTF2_Reader},), reader)
end

function OTF2_Reader_GetDefReader(reader, location)
    ccall((:OTF2_Reader_GetDefReader, libotf2), Ptr{OTF2_DefReader}, (Ptr{OTF2_Reader}, OTF2_LocationRef), reader, location)
end

function OTF2_Reader_GetGlobalDefReader(reader)
    ccall((:OTF2_Reader_GetGlobalDefReader, libotf2), Ptr{OTF2_GlobalDefReader}, (Ptr{OTF2_Reader},), reader)
end

function OTF2_Reader_GetSnapReader(reader, location)
    ccall((:OTF2_Reader_GetSnapReader, libotf2), Ptr{OTF2_SnapReader}, (Ptr{OTF2_Reader}, OTF2_LocationRef), reader, location)
end

function OTF2_Reader_GetGlobalSnapReader(reader)
    ccall((:OTF2_Reader_GetGlobalSnapReader, libotf2), Ptr{OTF2_GlobalSnapReader}, (Ptr{OTF2_Reader},), reader)
end

function OTF2_Reader_GetThumbReader(reader, number)
    ccall((:OTF2_Reader_GetThumbReader, libotf2), Ptr{OTF2_ThumbReader}, (Ptr{OTF2_Reader}, UInt32), reader, number)
end

function OTF2_Reader_GetMarkerReader(reader)
    ccall((:OTF2_Reader_GetMarkerReader, libotf2), Ptr{OTF2_MarkerReader}, (Ptr{OTF2_Reader},), reader)
end

function OTF2_Reader_GetMarkerWriter(reader)
    ccall((:OTF2_Reader_GetMarkerWriter, libotf2), Ptr{OTF2_MarkerWriter}, (Ptr{OTF2_Reader},), reader)
end

function OTF2_Reader_CloseEvtReader(reader, evtReader)
    ccall((:OTF2_Reader_CloseEvtReader, libotf2), OTF2_ErrorCode, (Ptr{OTF2_Reader}, Ptr{OTF2_EvtReader}), reader, evtReader)
end

function OTF2_Reader_CloseGlobalEvtReader(reader, globalEvtReader)
    ccall((:OTF2_Reader_CloseGlobalEvtReader, libotf2), OTF2_ErrorCode, (Ptr{OTF2_Reader}, Ptr{OTF2_GlobalEvtReader}), reader, globalEvtReader)
end

function OTF2_Reader_CloseDefReader(reader, defReader)
    ccall((:OTF2_Reader_CloseDefReader, libotf2), OTF2_ErrorCode, (Ptr{OTF2_Reader}, Ptr{OTF2_DefReader}), reader, defReader)
end

function OTF2_Reader_CloseGlobalDefReader(reader, globalDefReader)
    ccall((:OTF2_Reader_CloseGlobalDefReader, libotf2), OTF2_ErrorCode, (Ptr{OTF2_Reader}, Ptr{OTF2_GlobalDefReader}), reader, globalDefReader)
end

function OTF2_Reader_CloseSnapReader(reader, snapReader)
    ccall((:OTF2_Reader_CloseSnapReader, libotf2), OTF2_ErrorCode, (Ptr{OTF2_Reader}, Ptr{OTF2_SnapReader}), reader, snapReader)
end

function OTF2_Reader_CloseGlobalSnapReader(reader, globalSnapReader)
    ccall((:OTF2_Reader_CloseGlobalSnapReader, libotf2), OTF2_ErrorCode, (Ptr{OTF2_Reader}, Ptr{OTF2_GlobalSnapReader}), reader, globalSnapReader)
end

function OTF2_Reader_CloseThumbReader(reader, thumbReader)
    ccall((:OTF2_Reader_CloseThumbReader, libotf2), OTF2_ErrorCode, (Ptr{OTF2_Reader}, Ptr{OTF2_ThumbReader}), reader, thumbReader)
end

function OTF2_Reader_CloseMarkerReader(reader, markerReader)
    ccall((:OTF2_Reader_CloseMarkerReader, libotf2), OTF2_ErrorCode, (Ptr{OTF2_Reader}, Ptr{OTF2_MarkerReader}), reader, markerReader)
end

function OTF2_Reader_CloseMarkerWriter(reader, markerWriter)
    ccall((:OTF2_Reader_CloseMarkerWriter, libotf2), OTF2_ErrorCode, (Ptr{OTF2_Reader}, Ptr{OTF2_MarkerWriter}), reader, markerWriter)
end

function OTF2_Reader_GetVersion(reader, major, minor, bugfix)
    ccall((:OTF2_Reader_GetVersion, libotf2), OTF2_ErrorCode, (Ptr{OTF2_Reader}, Ptr{UInt8}, Ptr{UInt8}, Ptr{UInt8}), reader, major, minor, bugfix)
end

function OTF2_Reader_GetChunkSize(reader, chunkSizeEvents, chunkSizeDefinitions)
    ccall((:OTF2_Reader_GetChunkSize, libotf2), OTF2_ErrorCode, (Ptr{OTF2_Reader}, Ptr{UInt64}, Ptr{UInt64}), reader, chunkSizeEvents, chunkSizeDefinitions)
end

function OTF2_Reader_GetFileSubstrate(reader, substrate)
    ccall((:OTF2_Reader_GetFileSubstrate, libotf2), OTF2_ErrorCode, (Ptr{OTF2_Reader}, Ptr{OTF2_FileSubstrate}), reader, substrate)
end

function OTF2_Reader_GetCompression(reader, compression)
    ccall((:OTF2_Reader_GetCompression, libotf2), OTF2_ErrorCode, (Ptr{OTF2_Reader}, Ptr{OTF2_Compression}), reader, compression)
end

function OTF2_Reader_GetNumberOfLocations(reader, numberOfLocations)
    ccall((:OTF2_Reader_GetNumberOfLocations, libotf2), OTF2_ErrorCode, (Ptr{OTF2_Reader}, Ptr{UInt64}), reader, numberOfLocations)
end

function OTF2_Reader_GetNumberOfGlobalDefinitions(reader, numberOfDefinitions)
    ccall((:OTF2_Reader_GetNumberOfGlobalDefinitions, libotf2), OTF2_ErrorCode, (Ptr{OTF2_Reader}, Ptr{UInt64}), reader, numberOfDefinitions)
end

function OTF2_Reader_GetMachineName(reader, machineName)
    ccall((:OTF2_Reader_GetMachineName, libotf2), OTF2_ErrorCode, (Ptr{OTF2_Reader}, Ptr{Ptr{Cchar}}), reader, machineName)
end

function OTF2_Reader_GetCreator(reader, creator)
    ccall((:OTF2_Reader_GetCreator, libotf2), OTF2_ErrorCode, (Ptr{OTF2_Reader}, Ptr{Ptr{Cchar}}), reader, creator)
end

function OTF2_Reader_GetDescription(reader, description)
    ccall((:OTF2_Reader_GetDescription, libotf2), OTF2_ErrorCode, (Ptr{OTF2_Reader}, Ptr{Ptr{Cchar}}), reader, description)
end

function OTF2_Reader_GetPropertyNames(reader, numberOfProperties, names)
    ccall((:OTF2_Reader_GetPropertyNames, libotf2), OTF2_ErrorCode, (Ptr{OTF2_Reader}, Ptr{UInt32}, Ptr{Ptr{Ptr{Cchar}}}), reader, numberOfProperties, names)
end

function OTF2_Reader_GetProperty(reader, name, value)
    ccall((:OTF2_Reader_GetProperty, libotf2), OTF2_ErrorCode, (Ptr{OTF2_Reader}, Ptr{Cchar}, Ptr{Ptr{Cchar}}), reader, name, value)
end

function OTF2_Reader_GetBoolProperty(reader, name, value)
    ccall((:OTF2_Reader_GetBoolProperty, libotf2), OTF2_ErrorCode, (Ptr{OTF2_Reader}, Ptr{Cchar}, Ptr{Bool}), reader, name, value)
end

function OTF2_Reader_GetTraceId(reader, id)
    ccall((:OTF2_Reader_GetTraceId, libotf2), OTF2_ErrorCode, (Ptr{OTF2_Reader}, Ptr{UInt64}), reader, id)
end

function OTF2_Reader_GetNumberOfSnapshots(reader, number)
    ccall((:OTF2_Reader_GetNumberOfSnapshots, libotf2), OTF2_ErrorCode, (Ptr{OTF2_Reader}, Ptr{UInt32}), reader, number)
end

function OTF2_Reader_GetNumberOfThumbnails(reader, number)
    ccall((:OTF2_Reader_GetNumberOfThumbnails, libotf2), OTF2_ErrorCode, (Ptr{OTF2_Reader}, Ptr{UInt32}), reader, number)
end

function OTF2_Reader_OpenEvtFiles(reader)
    ccall((:OTF2_Reader_OpenEvtFiles, libotf2), OTF2_ErrorCode, (Ptr{OTF2_Reader},), reader)
end

function OTF2_Reader_CloseEvtFiles(reader)
    ccall((:OTF2_Reader_CloseEvtFiles, libotf2), OTF2_ErrorCode, (Ptr{OTF2_Reader},), reader)
end

function OTF2_Reader_OpenDefFiles(reader)
    ccall((:OTF2_Reader_OpenDefFiles, libotf2), OTF2_ErrorCode, (Ptr{OTF2_Reader},), reader)
end

function OTF2_Reader_CloseDefFiles(reader)
    ccall((:OTF2_Reader_CloseDefFiles, libotf2), OTF2_ErrorCode, (Ptr{OTF2_Reader},), reader)
end

function OTF2_Reader_OpenSnapFiles(reader)
    ccall((:OTF2_Reader_OpenSnapFiles, libotf2), OTF2_ErrorCode, (Ptr{OTF2_Reader},), reader)
end

function OTF2_Reader_CloseSnapFiles(reader)
    ccall((:OTF2_Reader_CloseSnapFiles, libotf2), OTF2_ErrorCode, (Ptr{OTF2_Reader},), reader)
end

function OTF2_Reader_SelectLocation(reader, location)
    ccall((:OTF2_Reader_SelectLocation, libotf2), OTF2_ErrorCode, (Ptr{OTF2_Reader}, OTF2_LocationRef), reader, location)
end

function OTF2_Reader_IsPrimary(reader, result)
    ccall((:OTF2_Reader_IsPrimary, libotf2), OTF2_ErrorCode, (Ptr{OTF2_Reader}, Ptr{Bool}), reader, result)
end

function OTF2_Reader_IsMaster(reader, result)
    ccall((:OTF2_Reader_IsMaster, libotf2), OTF2_ErrorCode, (Ptr{OTF2_Reader}, Ptr{Bool}), reader, result)
end

const __otf2_has_attribute = (x(__has_attribute))(x)

const OTF2_VERSION_MAJOR = 3

const OTF2_VERSION_MINOR = 0

const OTF2_VERSION_BUGFIX = 3

const OTF2_VERSION_SUFFIX = ""

const OTF2_VERSION = "3.0.3"

const OTF2_UNDEFINED_UINT8 = uint8_t(~(uint8_t(Cuint(0))))

const OTF2_UNDEFINED_INT8 = int8_t(~(OTF2_UNDEFINED_UINT8 >> 1))

const OTF2_UNDEFINED_UINT16 = uint16_t(~(uint16_t(Cuint(0))))

const OTF2_UNDEFINED_INT16 = int16_t(~(OTF2_UNDEFINED_UINT16 >> 1))

const OTF2_UNDEFINED_UINT32 = uint32_t(~(uint32_t(Cuint(0))))

const OTF2_UNDEFINED_INT32 = int32_t(~(OTF2_UNDEFINED_UINT32 >> 1))

const OTF2_UNDEFINED_UINT64 = uint64_t(~(uint64_t(Cuint(0))))

const OTF2_UNDEFINED_INT64 = int64_t(~(OTF2_UNDEFINED_UINT64 >> 1))

const OTF2_UNDEFINED_TYPE = OTF2_UNDEFINED_UINT8

const OTF2_UNDEFINED_TIMESTAMP = OTF2_UNDEFINED_UINT64

const OTF2_UNDEFINED_IO_PARADIGM = OTF2_IoParadigmRef(OTF2_UNDEFINED_UINT8)

const OTF2_UNDEFINED_STRING = OTF2_StringRef(OTF2_UNDEFINED_UINT32)

const OTF2_UNDEFINED_ATTRIBUTE = OTF2_AttributeRef(OTF2_UNDEFINED_UINT32)

const OTF2_UNDEFINED_SYSTEM_TREE_NODE = OTF2_SystemTreeNodeRef(OTF2_UNDEFINED_UINT32)

const OTF2_UNDEFINED_LOCATION_GROUP = OTF2_LocationGroupRef(OTF2_UNDEFINED_UINT32)

const OTF2_UNDEFINED_LOCATION = OTF2_LocationRef(OTF2_UNDEFINED_UINT64)

const OTF2_UNDEFINED_REGION = OTF2_RegionRef(OTF2_UNDEFINED_UINT32)

const OTF2_UNDEFINED_CALLSITE = OTF2_CallsiteRef(OTF2_UNDEFINED_UINT32)

const OTF2_UNDEFINED_CALLPATH = OTF2_CallpathRef(OTF2_UNDEFINED_UINT32)

const OTF2_UNDEFINED_GROUP = OTF2_GroupRef(OTF2_UNDEFINED_UINT32)

const OTF2_UNDEFINED_METRIC_MEMBER = OTF2_MetricMemberRef(OTF2_UNDEFINED_UINT32)

const OTF2_UNDEFINED_METRIC = OTF2_MetricRef(OTF2_UNDEFINED_UINT32)

const OTF2_UNDEFINED_COMM = OTF2_CommRef(OTF2_UNDEFINED_UINT32)

const OTF2_UNDEFINED_PARAMETER = OTF2_ParameterRef(OTF2_UNDEFINED_UINT32)

const OTF2_UNDEFINED_RMA_WIN = OTF2_RmaWinRef(OTF2_UNDEFINED_UINT32)

const OTF2_UNDEFINED_CART_DIMENSION = OTF2_CartDimensionRef(OTF2_UNDEFINED_UINT32)

const OTF2_UNDEFINED_CART_TOPOLOGY = OTF2_CartTopologyRef(OTF2_UNDEFINED_UINT32)

const OTF2_UNDEFINED_SOURCE_CODE_LOCATION = OTF2_SourceCodeLocationRef(OTF2_UNDEFINED_UINT32)

const OTF2_UNDEFINED_CALLING_CONTEXT = OTF2_CallingContextRef(OTF2_UNDEFINED_UINT32)

const OTF2_UNDEFINED_INTERRUPT_GENERATOR = OTF2_InterruptGeneratorRef(OTF2_UNDEFINED_UINT32)

const OTF2_UNDEFINED_IO_FILE = OTF2_IoFileRef(OTF2_UNDEFINED_UINT32)

const OTF2_UNDEFINED_IO_HANDLE = OTF2_IoHandleRef(OTF2_UNDEFINED_UINT32)

const OTF2_CHUNK_SIZE_MIN = uint64_t(256 * 1024)

const OTF2_CHUNK_SIZE_MAX = uint64_t(1024 * 1024 * 16)

const OTF2_COLLECTIVES_ROOT = 0

const OTF2_UNDEFINED_MARKER = OTF2_MarkerRef(OTF2_UNDEFINED_UINT32)

const OTF2_CHUNK_SIZE_EVENTS_DEFAULT = 1024 * 1024

const OTF2_CHUNK_SIZE_DEFINITIONS_DEFAULT = 4 * 1024 * 1024

end # module
