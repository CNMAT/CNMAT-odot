#ifndef __REPORT_COMPILER_H__
#define __REPORT_COMPILER_H__

#ifdef __clang__

#define CNMAT_HAVE_COMPILER 1
#define CNMAT_COMPILER "clang (llvm)"
#define CNMAT_COMPILER_MAJOR __clang_major__
#define CNMAT_COMPILER_MINOR __clang_minor__
#define CNMAT_COMPILER_PATCHLEVEL __clang_patchlevel__

#elif defined __GNUC__

#define CNMAT_HAVE_COMPILER 1
#define CNMAT_COMPILER "gcc"
#define CNMAT_COMPILER_MAJOR __GNUC__
#define CNMAT_COMPILER_MINOR __GNUC_MINOR__
#define CNMAT_COMPILER_PATCHLEVEL __GNUC_PATCHLEVEL__

#else

#define CNMAT_COMPILER "unknown compiler"
#define CNMAT_COMPILER_MAJOR 
#define CNMAT_COMPILER_MINOR
#define CNMAT_COMPILER_PATCHLEVEL

#endif

void post_compiler(void)
{
#ifdef CNMAT_HAVE_COMPILER
	post("Compiled on %s at %s with %s version %d.%d.%d", __DATE__, __TIME__, CNMAT_COMPILER, CNMAT_COMPILER_MAJOR, CNMAT_COMPILER_MINOR, CNMAT_COMPILER_PATCHLEVEL);
#else
	post("Compiled by something other than clang or gcc");
#endif
}

#endif
