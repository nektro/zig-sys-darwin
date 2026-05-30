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
    pub extern fn fcntl(fd: c_int, cmd: c_int, ...) c_int;
    pub extern fn mkdirat(fd: c_int, path: [*:0]const u8, mode: mode_t) c_int;
    pub extern fn fstatat(fd: c_int, noalias path: [*:0]const u8, noalias buf: *struct_stat, flag: c_int) c_int;
    pub extern fn getdirentries(fd: c_int, buf: [*]u8, nbytes: c_int, basep: *c_long) c_int;
    pub extern fn unlinkat(fd: c_int, name: [*:0]const u8, flag: c_int) c_int;
    pub extern fn write(fd: c_int, buf: *const anyopaque, n: usize) isize;
    pub extern fn writev(fd: c_int, iovec: [*]const struct_iovec, count: c_int) isize;
    pub extern fn isatty(fd: c_int) c_int;
    pub extern fn lseek(fd: c_int, offset: off_t, whence: c_int) off_t;
    pub extern fn getcwd(buf: [*]u8, size: usize) ?[*:0]u8;
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
pub const struct_dirent = extern struct { ino: u64, seekoff: u64, reclen: u16, namlen: u16, type: DT, name: [PATH_MAX]u8 };

pub const PATH_MAX = 1024;
pub const NAME_MAX = 255;

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

pub const AT = struct {
    pub const FDCWD = -2;
    pub const EACCESS = 0x0010;
    pub const SYMLINK_NOFOLLOW = 0x0020;
    pub const SYMLINK_FOLLOW = 0x0040;
    pub const REMOVEDIR = 0x0080;
    pub const REALDEV = 0x0200;
    pub const FDONLY = 0x0400;
    pub const SYMLINK_NOFOLLOW_ANY = 0x0800;
    pub const RESOLVE_BENEATH = 0x2000;
    pub const NODELETEBUSY = 0x4000;
    pub const UNIQUE = 0x8000;
};

pub const F = struct {
    pub const DUPFD = 0;
    pub const GETFD = 1;
    pub const SETFD = 2;
    pub const GETFL = 3;
    pub const SETFL = 4;
    pub const GETOWN = 5;
    pub const SETOWN = 6;
    pub const GETLK = 7;
    pub const SETLK = 8;
    pub const SETLKW = 9;
    pub const SETLKWTIMEOUT = 10;
    pub const FLUSH_DATA = 40;
    pub const CHKCLEAN = 41;
    pub const PREALLOCATE = 42;
    pub const SETSIZE = 43;
    pub const RDADVISE = 44;
    pub const RDAHEAD = 45;
    pub const NOCACHE = 48;
    pub const LOG2PHYS = 49;
    pub const GETPATH = 50;
    pub const FULLFSYNC = 51;
    pub const PATHPKG_CHECK = 52;
    pub const FREEZE_FS = 53;
    pub const THAW_FS = 54;
    pub const GLOBAL_NOCACHE = 55;
    pub const ADDSIGS = 59;
    pub const ADDFILESIGS = 61;
    pub const NODIRECT = 62;
    pub const GETPROTECTIONCLASS = 63;
    pub const SETPROTECTIONCLASS = 64;
    pub const LOG2PHYS_EXT = 65;
    pub const GETLKPID = 66;
    pub const SETBACKINGSTORE = 70;
    pub const GETPATH_MTMINFO = 71;
    pub const GETCODEDIR = 72;
    pub const SETNOSIGPIPE = 73;
    pub const GETNOSIGPIPE = 74;
    pub const TRANSCODEKEY = 75;
    pub const SINGLE_WRITER = 76;
    pub const GETPROTECTIONLEVEL = 77;
    pub const FINDSIGS = 78;
    pub const ADDFILESIGS_FOR_DYLD_SIM = 83;
    pub const BARRIERFSYNC = 85;
    pub const OFD_SETLK = 90;
    pub const OFD_SETLKW = 91;
    pub const OFD_GETLK = 92;
    pub const OFD_SETLKWTIMEOUT = 93;
    pub const ADDFILESIGS_RETURN = 97;
    pub const CHECK_LV = 98;
    pub const PUNCHHOLE = 99;
    pub const TRIM_ACTIVE_FILE = 100;
    pub const SPECULATIVE_READ = 101;
    pub const GETPATH_NOFIRMLINK = 102;
    pub const ADDFILESIGS_INFO = 103;
    pub const ADDFILESUPPL = 104;
    pub const GETSIGSINFO = 105;
    pub const SETLEASE = 106;
    pub const GETLEASE = 107;
    pub const TRANSFEREXTENTS = 110;
    pub const ATTRIBUTION_TAG = 111;
    pub const NOCACHE_EXT = 112;
    pub const ADDSIGS_MAIN_BINARY = 113;
};

pub const DT = enum(u8) {
    UNKNOWN = 0,
    FIFO = 1,
    CHR = 2,
    DIR = 4,
    BLK = 6,
    REG = 8,
    LNK = 10,
    SOCK = 12,
    WHT = 14,
};

pub const S = struct {
    pub const IFMT = 0o170000;
    pub const IFIFO = 0o010000;
    pub const IFCHR = 0o020000;
    pub const IFDIR = 0o040000;
    pub const IFBLK = 0o060000;
    pub const IFREG = 0o100000;
    pub const IFLNK = 0o120000;
    pub const IFSOCK = 0o140000;
    pub const IFWHT = 0o160000;
    pub const IRWXU = 0o000700;
    pub const IRUSR = 0o000400;
    pub const IWUSR = 0o000200;
    pub const IXUSR = 0o000100;
    pub const IRWXG = 0o000070;
    pub const IRGRP = 0o000040;
    pub const IWGRP = 0o000020;
    pub const IXGRP = 0o000010;
    pub const IRWXO = 0o000007;
    pub const IROTH = 0o000004;
    pub const IWOTH = 0o000002;
    pub const IXOTH = 0o000001;
    pub const ISUID = 0o004000;
    pub const ISGID = 0o002000;
    pub const ISVTX = 0o001000;
    pub const ISTXT = ISVTX;
    pub const IREAD = IRUSR;
    pub const IWRITE = IWUSR;
    pub const IEXEC = IXUSR;
};

pub const SEEK = struct {
    pub const SET = 0;
    pub const CUR = 1;
    pub const END = 2;
    pub const HOLE = 3;
    pub const DATA = 4;
};

pub fn openat(fd: c_int, file: [*:0]const u8, oflag: c_int) errno.Error!c_int {
    const rc = libc.openat(fd, file, oflag);
    if (rc == -1) return errno.fromInt(errno.fromLibC());
    std.debug.assert(rc >= 0);
    return rc;
}
pub fn openat4(fd: c_int, file: [*:0]const u8, oflag: c_int, mode: mode_t) errno.Error!c_int {
    const rc = libc.openat(fd, file, oflag, mode);
    if (rc == -1) return errno.fromInt(errno.fromLibC());
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
pub fn mkdirat(fd: c_int, path: [*:0]const u8, mode: mode_t) errno.Error!void {
    const rc = libc.mkdirat(fd, path, mode);
    if (rc == -1) return errno.fromInt(errno.fromLibC());
    std.debug.assert(rc == 0);
}
pub fn fstatat(fd: c_int, path: [*:0]const u8, flag: c_int) errno.Error!struct_stat {
    var buf: struct_stat = undefined;
    const rc = libc.fstatat(fd, path, &buf, flag);
    if (rc == -1) return errno.fromInt(errno.fromLibC());
    std.debug.assert(rc == 0);
    return buf;
}
pub fn getdirentries(fd: c_int, buf: []u8, basep: *c_long) errno.Error!c_uint {
    const rc = libc.getdirentries(fd, buf.ptr, @intCast(buf.len), basep);
    if (rc == -1) return errno.fromInt(errno.fromLibC());
    std.debug.assert(rc >= 0);
    return @intCast(rc);
}
pub fn unlinkat(fd: c_int, name: [*:0]const u8, flag: c_int) !void {
    const rc = libc.unlinkat(fd, name, flag);
    if (rc == -1) return errno.fromInt(errno.fromLibC());
    std.debug.assert(rc == 0);
}
pub fn write(fd: c_int, buf: []const u8) !usize {
    const rc = libc.write(fd, buf.ptr, buf.len);
    if (rc == -1) return errno.fromInt(errno.fromLibC());
    std.debug.assert(rc >= 0);
    return @intCast(rc);
}
pub fn writev(fd: c_int, iovec: []const struct_iovec) !usize {
    const rc = libc.writev(fd, iovec.ptr, @intCast(iovec.len));
    if (rc == -1) return errno.fromInt(errno.fromLibC());
    std.debug.assert(rc >= 0);
    return @intCast(rc);
}
pub fn lseek(fd: c_int, offset: off_t, whence: c_int) !void {
    const rc = libc.lseek(fd, offset, whence);
    if (rc == -1) return errno.fromInt(errno.fromLibC());
    std.debug.assert(rc >= 0);
}
pub fn getcwd(buf: []u8) ![*:0]u8 {
    const rc = libc.getcwd(buf.ptr, buf.len);
    if (rc == null) return errno.fromInt(errno.fromLibC());
    return rc.?;
}
