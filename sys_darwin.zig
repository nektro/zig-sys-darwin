const std = @import("std");
const builtin = @import("builtin");

comptime {
    std.debug.assert(builtin.target.os.tag == .macos);
    std.debug.assert(@bitSizeOf(usize) == 64);
}

pub const errno = struct {
    pub const Error = error{
        Unexpected,
        EPERM,
        ENOENT,
        ESRCH,
        EINTR,
        EIO,
        ENXIO,
        E2BIG,
        ENOEXEC,
        EBADF,
        ECHILD,
        EDEADLK,
        ENOMEM,
        EACCES,
        EFAULT,
        ENOTBLK,
        EBUSY,
        EEXIST,
        EXDEV,
        ENODEV,
        ENOTDIR,
        EISDIR,
        EINVAL,
        ENFILE,
        EMFILE,
        ENOTTY,
        ETXTBSY,
        EFBIG,
        ENOSPC,
        ESPIPE,
        EROFS,
        EMLINK,
        EPIPE,
        EDOM,
        ERANGE,
        EAGAIN,
        EINPROGRESS,
        EALREADY,
        ENOTSOCK,
        EDESTADDRREQ,
        EMSGSIZE,
        EPROTOTYPE,
        ENOPROTOOPT,
        EPROTONOSUPPORT,
        ESOCKTNOSUPPORT,
        ENOTSUP,
        EPFNOSUPPORT,
        EAFNOSUPPORT,
        EADDRINUSE,
        EADDRNOTAVAIL,
        ENETDOWN,
        ENETUNREACH,
        ENETRESET,
        ECONNABORTED,
        ECONNRESET,
        ENOBUFS,
        EISCONN,
        ENOTCONN,
        ESHUTDOWN,
        ETOOMANYREFS,
        ETIMEDOUT,
        ECONNREFUSED,
        ELOOP,
        ENAMETOOLONG,
        EHOSTDOWN,
        EHOSTUNREACH,
        ENOTEMPTY,
        EPROCLIM,
        EUSERS,
        EDQUOT,
        ESTALE,
        EREMOTE,
        EBADRPC,
        ERPCMISMATCH,
        EPROGUNAVAIL,
        EPROGMISMATCH,
        EPROCUNAVAIL,
        ENOLCK,
        ENOSYS,
        EFTYPE,
        EAUTH,
        ENEEDAUTH,
        EPWROFF,
        EDEVERR,
        EOVERFLOW,
        EBADEXEC,
        EBADARCH,
        ESHLIBVERS,
        EBADMACHO,
        ECANCELED,
        EIDRM,
        ENOMSG,
        EILSEQ,
        ENOATTR,
        EBADMSG,
        EMULTIHOP,
        ENODATA,
        ENOLINK,
        ENOSR,
        ENOSTR,
        EPROTO,
        ETIME,
        EOPNOTSUPP,
        ENOPOLICY,
        ENOTRECOVERABLE,
        EOWNERDEAD,
        EQFULL,
        ENOTCAPABLE,
    };

    pub const Enum = enum(c_ushort) {
        EPERM = 1,
        ENOENT = 2,
        ESRCH = 3,
        EINTR = 4,
        EIO = 5,
        ENXIO = 6,
        E2BIG = 7,
        ENOEXEC = 8,
        EBADF = 9,
        ECHILD = 10,
        EDEADLK = 11,
        ENOMEM = 12,
        EACCES = 13,
        EFAULT = 14,
        ENOTBLK = 15,
        EBUSY = 16,
        EEXIST = 17,
        EXDEV = 18,
        ENODEV = 19,
        ENOTDIR = 20,
        EISDIR = 21,
        EINVAL = 22,
        ENFILE = 23,
        EMFILE = 24,
        ENOTTY = 25,
        ETXTBSY = 26,
        EFBIG = 27,
        ENOSPC = 28,
        ESPIPE = 29,
        EROFS = 30,
        EMLINK = 31,
        EPIPE = 32,
        EDOM = 33,
        ERANGE = 34,
        EAGAIN = 35,
        EINPROGRESS = 36,
        EALREADY = 37,
        ENOTSOCK = 38,
        EDESTADDRREQ = 39,
        EMSGSIZE = 40,
        EPROTOTYPE = 41,
        ENOPROTOOPT = 42,
        EPROTONOSUPPORT = 43,
        ESOCKTNOSUPPORT = 44,
        ENOTSUP = 45,
        EPFNOSUPPORT = 46,
        EAFNOSUPPORT = 47,
        EADDRINUSE = 48,
        EADDRNOTAVAIL = 49,
        ENETDOWN = 50,
        ENETUNREACH = 51,
        ENETRESET = 52,
        ECONNABORTED = 53,
        ECONNRESET = 54,
        ENOBUFS = 55,
        EISCONN = 56,
        ENOTCONN = 57,
        ESHUTDOWN = 58,
        ETOOMANYREFS = 59,
        ETIMEDOUT = 60,
        ECONNREFUSED = 61,
        ELOOP = 62,
        ENAMETOOLONG = 63,
        EHOSTDOWN = 64,
        EHOSTUNREACH = 65,
        ENOTEMPTY = 66,
        EPROCLIM = 67,
        EUSERS = 68,
        EDQUOT = 69,
        ESTALE = 70,
        EREMOTE = 71,
        EBADRPC = 72,
        ERPCMISMATCH = 73,
        EPROGUNAVAIL = 74,
        EPROGMISMATCH = 75,
        EPROCUNAVAIL = 76,
        ENOLCK = 77,
        ENOSYS = 78,
        EFTYPE = 79,
        EAUTH = 80,
        ENEEDAUTH = 81,
        EPWROFF = 82,
        EDEVERR = 83,
        EOVERFLOW = 84,
        EBADEXEC = 85,
        EBADARCH = 86,
        ESHLIBVERS = 87,
        EBADMACHO = 88,
        ECANCELED = 89,
        EIDRM = 90,
        ENOMSG = 91,
        EILSEQ = 92,
        ENOATTR = 93,
        EBADMSG = 94,
        EMULTIHOP = 95,
        ENODATA = 96,
        ENOLINK = 97,
        ENOSR = 98,
        ENOSTR = 99,
        EPROTO = 100,
        ETIME = 101,
        // 102 is only defined in the kernel
        ENOPOLICY = 103,
        ENOTRECOVERABLE = 104,
        EOWNERDEAD = 105,
        EQFULL = 106,
        ENOTCAPABLE = 107,

        pub const EWOULDBLOCK: Enum = .EAGAIN;
        pub const EOPNOTSUPP: Enum = .ENOTSUP;
    };

    comptime {
        // assert Enum is sequential
        var value: c_ushort = 0; // SUCCESS
        for (std.enums.values(Enum)) |val| {
            std.debug.assert(@intFromEnum(val) > value);
            value = @intFromEnum(val);
        }
    }
    comptime {
        // sanity test
        std.debug.assert(@intFromEnum(Enum.EPERM) == 1);
    }
    const list = blk: {
        const values = std.enums.values(Enum);
        const len = @intFromEnum(values[values.len - 1]) + 1;
        var errors: [len]Error = @splat(error.Unexpected);
        for (values) |f| errors[@intFromEnum(f)] = @field(Error, @tagName(f));
        const final = errors;
        break :blk final;
    };
    pub fn fromInt(code: c_int) Error {
        @setRuntimeSafety(false);
        if (code >= list.len) return error.Unexpected;
        if (code <= 0) return error.Unexpected;
        return list[@intCast(code)];
    }
    pub fn fromLibC() c_int {
        return libc.__error().*;
    }
};

pub const libc = struct {
    pub extern fn __error() *c_int;
    pub extern fn openat(fd: c_int, file: [*:0]const u8, oflag: c_int, ...) c_int;
    pub extern fn fstat(fd: c_int, buf: *struct_stat) c_int;
    pub extern fn close(fildes: c_int) c_int;
    pub extern fn read(fd: c_int, buf: [*]u8, count: usize) isize;
    pub extern fn clock_gettime(clock_id: clockid_t, tp: *struct_timespec) c_int;
};

pub const natural_t = c_uint;
pub const blkcnt_t = i64;
pub const blksize_t = i32;
pub const dev_t = i32;
pub const fsblkcnt_t = c_uint;
pub const fsfilcnt_t = c_uint;
pub const gid_t = u32;
pub const id_t = u32;
pub const ino_t = u64;
pub const mach_port_name_t = natural_t;
pub const mach_port_t = mach_port_name_t;
pub const mode_t = u16;
pub const off_t = i64;
pub const pid_t = i32;
pub const sigset_t = u32;
pub const suseconds_t = i32;
pub const uid_t = u32;
pub const useconds_t = u32;
pub const nlink_t = u16;
pub const clockid_t = c_int;

pub const time_t = c_ulong;

pub const struct_timespec = extern struct { sec: time_t, nsec: c_long };
pub const struct_stat = extern struct { dev: dev_t, mode: mode_t, nlink: nlink_t, ino: ino_t, uid: uid_t, gid: gid_t, rdev: dev_t, atimespec: struct_timespec, mtimespec: struct_timespec, ctimespec: struct_timespec, birthtimespec: struct_timespec, size: off_t, blocks: blkcnt_t, blksize: blksize_t, flags: u32, gen: u32, lspare: i32, qspare: [2]i64 };
pub const struct_iovec = extern struct { base: [*]u8, len: usize };

pub const O = struct {
    pub const RDONLY = 0x0000;
    pub const WRONLY = 0x0001;
    pub const RDWR = 0x0002;
    pub const ACCMODE = 0x0003;
    pub const NONBLOCK = 0x00000004;
    pub const APPEND = 0x00000008;
    pub const SYNC = 0x0080;
    pub const SHLOCK = 0x00000010;
    pub const EXLOCK = 0x00000020;
    pub const ASYNC = 0x00000040;
    pub const FSYNC = SYNC;
    pub const NOFOLLOW = 0x00000100;
    pub const CREAT = 0x00000200;
    pub const TRUNC = 0x00000400;
    pub const EXCL = 0x00000800;
    pub const RESOLVE_BENEATH = 0x00001000;
    pub const UNIQUE = 0x00002000;
    pub const EVTONLY = 0x00008000;
    pub const NOCTTY = 0x00020000;
    pub const DIRECTORY = 0x00100000;
    pub const SYMLINK = 0x00200000;
    pub const DSYNC = 0x00400000;
    pub const CLOEXEC = 0x01000000;
    pub const NOFOLLOW_ANY = 0x20000000;
    pub const EXEC = 0x40000000;
    pub const SEARCH = (EXEC | DIRECTORY);
};

pub const CLOCK = struct {
    pub const REALTIME = 0;
    pub const MONOTONIC = 6;
    pub const MONOTONIC_RAW = 4;
    pub const MONOTONIC_RAW_APPROX = 5;
    pub const UPTIME_RAW = 8;
    pub const UPTIME_RAW_APPROX = 9;
    pub const PROCESS_CPUTIME_ID = 12;
    pub const THREAD_CPUTIME_ID = 16;
};

pub fn openat(fd: c_int, file: [*:0]const u8, oflag: c_int) errno.Error!c_int {
    const rc = libc.openat(fd, file, oflag);
    if (rc == -1) return errno.fromInt(errno.fromLibC());
    std.debug.assert(rc >= 0);
    return rc;
}
pub fn fstat(fd: c_int) errno.Error!struct_stat {
    var buf: struct_stat = undefined;
    const rc = libc.fstat(fd, &buf);
    if (rc == -1) return errno.fromInt(errno.fromLibC());
    std.debug.assert(rc == 0);
    return buf;
}
pub fn close(fd: c_int) errno.Error!void {
    const rc = libc.close(fd);
    if (rc == -1) return errno.fromInt(errno.fromLibC());
    std.debug.assert(rc == 0);
}
pub fn read(fd: c_int, buf: []u8) errno.Error!usize {
    const rc = libc.read(fd, buf.ptr, buf.len);
    if (rc == -1) return errno.fromInt(errno.fromLibC());
    std.debug.assert(rc >= 0);
    return @intCast(rc);
}
pub fn clock_gettime(clock_id: clockid_t) !struct_timespec {
    var tp: struct_timespec = undefined;
    const rc = libc.clock_gettime(clock_id, &tp);
    if (rc == -1) return errno.fromInt(errno.fromLibC());
    std.debug.assert(rc == 0);
    return tp;
}
