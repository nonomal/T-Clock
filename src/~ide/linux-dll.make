#------------------------------------------------------------------------------#
# This makefile was generated by 'cbp2make' tool rev.147                       #
#------------------------------------------------------------------------------#


WORKDIR = `pwd`

CC0 = $(CCACHE) i686-w64-mingw32-gcc
CXX0 = $(CCACHE) i686-w64-mingw32-g++
AR0 = i686-w64-mingw32-ar
LD0 = i686-w64-mingw32-g++
WINDRES0 = i686-w64-mingw32-windres

INC0 = 
CFLAGS0 = -D_UNICODE -DUNICODE -fno-ident -Wall -std=c99 -fvisibility=hidden -ffunction-sections -fno-asynchronous-unwind-tables -D_POSIX=1 -D_POSIX_C_SOURCE=200112L -D__STDC_FORMAT_MACROS -D__USE_MINGW_ANSI_STDIO=0 -D__MINGW_USE_VC2005_COMPAT -DWINVER=0x0501 -DPSAPI_VERSION=1 -DWIN2K_COMPAT
RESINC0 = 
LIBDIR0 = 
LIB0 = -ladvapi32 -lshell32 -luser32 -lole32 -lgdi32 -lpsapi
LDFLAGS0 = -municode -static -Wl,--gc-sections

CC1 = $(CCACHE) x86_64-w64-mingw32-gcc
CXX1 = $(CCACHE) x86_64-w64-mingw32-g++
AR1 = x86_64-w64-mingw32-ar
LD1 = x86_64-w64-mingw32-g++
WINDRES1 = x86_64-w64-mingw32-windres

INC1 = 
CFLAGS1 = -D_UNICODE -DUNICODE -fno-ident -Wall -std=c99 -fvisibility=hidden -ffunction-sections -fno-asynchronous-unwind-tables -D_POSIX=1 -D_POSIX_C_SOURCE=200112L -D__STDC_FORMAT_MACROS -D__USE_MINGW_ANSI_STDIO=0 -D__MINGW_USE_VC2005_COMPAT -DWINVER=0x0501 -DPSAPI_VERSION=1 -DWIN2K_COMPAT
RESINC1 = 
LIBDIR1 = 
LIB1 = -ladvapi32 -lshell32 -luser32 -lole32 -lgdi32 -lpsapi
LDFLAGS1 = -municode -static -Wl,--gc-sections

INC_RELEASE_32 = $(INC0)
CFLAGS_RELEASE_32 = $(CFLAGS0) -O3 -m32 -DNDEBUG
RESINC_RELEASE_32 = $(RESINC0)
RCFLAGS_RELEASE_32 = $(RCFLAGS0)
LIBDIR_RELEASE_32 = $(LIBDIR0)
LIB_RELEASE_32 = $(LIB0)
LDFLAGS_RELEASE_32 = $(LDFLAGS0) -s -m32
OBJDIR_RELEASE_32 = ../.obj/gcc
DEP_RELEASE_32 = 
OUT_RELEASE_32 = ../../Release/misc/T-Clock.dll

INC_RELEASE_64 = $(INC1)
CFLAGS_RELEASE_64 = $(CFLAGS1) -O3 -m64 -DNDEBUG
RESINC_RELEASE_64 = $(RESINC1)
RCFLAGS_RELEASE_64 = $(RCFLAGS1)
LIBDIR_RELEASE_64 = $(LIBDIR1)
LIB_RELEASE_64 = $(LIB1)
LDFLAGS_RELEASE_64 = $(LDFLAGS1) -s -m64
OBJDIR_RELEASE_64 = ../.obj64/gcc
DEP_RELEASE_64 = 
OUT_RELEASE_64 = ../../Release/misc/T-Clock64.dll

INC_DEBUG_32 = $(INC0)
CFLAGS_DEBUG_32 = $(CFLAGS0) -m32 -g -fno-omit-frame-pointer -D_DEBUG
RESINC_DEBUG_32 = $(RESINC0)
RCFLAGS_DEBUG_32 = $(RCFLAGS0)
LIBDIR_DEBUG_32 = $(LIBDIR0)
LIB_DEBUG_32 = $(LIB0)
LDFLAGS_DEBUG_32 = $(LDFLAGS0) -m32
OBJDIR_DEBUG_32 = ../.obj/gcc/dbg
DEP_DEBUG_32 = 
OUT_DEBUG_32 = ../../Debug/misc/T-Clock.dll

INC_DEBUG_64 = $(INC1)
CFLAGS_DEBUG_64 = $(CFLAGS1) -m64 -g -fno-omit-frame-pointer -D_DEBUG
RESINC_DEBUG_64 = $(RESINC1)
RCFLAGS_DEBUG_64 = $(RCFLAGS1)
LIBDIR_DEBUG_64 = $(LIBDIR1)
LIB_DEBUG_64 = $(LIB1)
LDFLAGS_DEBUG_64 = $(LDFLAGS1) -m64
OBJDIR_DEBUG_64 = ../.obj64/gcc/dbg
DEP_DEBUG_64 = 
OUT_DEBUG_64 = ../../Debug/misc/T-Clock64.dll

OBJ_RELEASE_32 = $(OBJDIR_RELEASE_32)/__/common/win2k_compat.o \
	$(OBJDIR_RELEASE_32)/__/common/utl.o \
	$(OBJDIR_RELEASE_32)/__/common/newapi.o \
	$(OBJDIR_RELEASE_32)/__/DLL/version.o \
	$(OBJDIR_RELEASE_32)/__/DLL/main.o \
	$(OBJDIR_RELEASE_32)/__/DLL/format.o \
	$(OBJDIR_RELEASE_32)/__/DLL/font.o \
	$(OBJDIR_RELEASE_32)/__/DLL/clock_utils.o \
	$(OBJDIR_RELEASE_32)/__/DLL/clock_color.o \
	$(OBJDIR_RELEASE_32)/__/DLL/clock_api.o \
	$(OBJDIR_RELEASE_32)/__/DLL/Tclock.o

OBJ_RELEASE_64 = $(OBJDIR_RELEASE_64)/__/common/win2k_compat.o \
	$(OBJDIR_RELEASE_64)/__/common/utl.o \
	$(OBJDIR_RELEASE_64)/__/common/newapi.o \
	$(OBJDIR_RELEASE_64)/__/DLL/version.o \
	$(OBJDIR_RELEASE_64)/__/DLL/main.o \
	$(OBJDIR_RELEASE_64)/__/DLL/format.o \
	$(OBJDIR_RELEASE_64)/__/DLL/font.o \
	$(OBJDIR_RELEASE_64)/__/DLL/clock_utils.o \
	$(OBJDIR_RELEASE_64)/__/DLL/clock_color.o \
	$(OBJDIR_RELEASE_64)/__/DLL/clock_api.o \
	$(OBJDIR_RELEASE_64)/__/DLL/Tclock.o

OBJ_DEBUG_32 = $(OBJDIR_DEBUG_32)/__/common/win2k_compat.o \
	$(OBJDIR_DEBUG_32)/__/common/utl.o \
	$(OBJDIR_DEBUG_32)/__/common/newapi.o \
	$(OBJDIR_DEBUG_32)/__/DLL/version.o \
	$(OBJDIR_DEBUG_32)/__/DLL/main.o \
	$(OBJDIR_DEBUG_32)/__/DLL/format.o \
	$(OBJDIR_DEBUG_32)/__/DLL/font.o \
	$(OBJDIR_DEBUG_32)/__/DLL/clock_utils.o \
	$(OBJDIR_DEBUG_32)/__/DLL/clock_color.o \
	$(OBJDIR_DEBUG_32)/__/DLL/clock_api.o \
	$(OBJDIR_DEBUG_32)/__/DLL/Tclock.o

OBJ_DEBUG_64 = $(OBJDIR_DEBUG_64)/__/common/win2k_compat.o \
	$(OBJDIR_DEBUG_64)/__/common/utl.o \
	$(OBJDIR_DEBUG_64)/__/common/newapi.o \
	$(OBJDIR_DEBUG_64)/__/DLL/version.o \
	$(OBJDIR_DEBUG_64)/__/DLL/main.o \
	$(OBJDIR_DEBUG_64)/__/DLL/format.o \
	$(OBJDIR_DEBUG_64)/__/DLL/font.o \
	$(OBJDIR_DEBUG_64)/__/DLL/clock_utils.o \
	$(OBJDIR_DEBUG_64)/__/DLL/clock_color.o \
	$(OBJDIR_DEBUG_64)/__/DLL/clock_api.o \
	$(OBJDIR_DEBUG_64)/__/DLL/Tclock.o

all: before_build build_release_32 build_release_64 build_debug_32 build_debug_64 after_build

clean: clean_release_32 clean_release_64 clean_debug_32 clean_debug_64

before_build: 
	../common/AutoVersion --git . ../common/version.h

after_build: 

before_release_32: 
	test -d ../../Release/misc || mkdir -p ../../Release/misc
	test -d $(OBJDIR_RELEASE_32)/__/common || mkdir -p $(OBJDIR_RELEASE_32)/__/common
	test -d $(OBJDIR_RELEASE_32)/__/DLL || mkdir -p $(OBJDIR_RELEASE_32)/__/DLL

after_release_32: 

build_release_32: before_release_32 out_release_32 after_release_32

release_32: before_build build_release_32 after_build

out_release_32: before_release_32 $(OBJ_RELEASE_32) $(DEP_RELEASE_32)
	$(LD0) -shared $(LIBDIR_RELEASE_32) $(OBJ_RELEASE_32)  -o $(OUT_RELEASE_32) $(LDFLAGS_RELEASE_32) $(LIB_RELEASE_32)

$(OBJDIR_RELEASE_32)/__/common/win2k_compat.o: ../common/win2k_compat.c
	$(CC0) $(CFLAGS_RELEASE_32) $(INC_RELEASE_32) -c ../common/win2k_compat.c -o $(OBJDIR_RELEASE_32)/__/common/win2k_compat.o

$(OBJDIR_RELEASE_32)/__/common/utl.o: ../common/utl.c
	$(CC0) $(CFLAGS_RELEASE_32) $(INC_RELEASE_32) -c ../common/utl.c -o $(OBJDIR_RELEASE_32)/__/common/utl.o

$(OBJDIR_RELEASE_32)/__/common/newapi.o: ../common/newapi.c
	$(CC0) $(CFLAGS_RELEASE_32) $(INC_RELEASE_32) -c ../common/newapi.c -o $(OBJDIR_RELEASE_32)/__/common/newapi.o

$(OBJDIR_RELEASE_32)/__/DLL/version.o: ../DLL/version.rc
	$(WINDRES0) -i ../DLL/version.rc -J rc -o $(OBJDIR_RELEASE_32)/__/DLL/version.o -O coff $(INC_RELEASE_32)

$(OBJDIR_RELEASE_32)/__/DLL/main.o: ../DLL/main.c
	$(CC0) $(CFLAGS_RELEASE_32) $(INC_RELEASE_32) -c ../DLL/main.c -o $(OBJDIR_RELEASE_32)/__/DLL/main.o

$(OBJDIR_RELEASE_32)/__/DLL/format.o: ../DLL/format.c
	$(CC0) $(CFLAGS_RELEASE_32) $(INC_RELEASE_32) -c ../DLL/format.c -o $(OBJDIR_RELEASE_32)/__/DLL/format.o

$(OBJDIR_RELEASE_32)/__/DLL/font.o: ../DLL/font.c
	$(CC0) $(CFLAGS_RELEASE_32) $(INC_RELEASE_32) -c ../DLL/font.c -o $(OBJDIR_RELEASE_32)/__/DLL/font.o

$(OBJDIR_RELEASE_32)/__/DLL/clock_utils.o: ../DLL/clock_utils.c
	$(CC0) $(CFLAGS_RELEASE_32) $(INC_RELEASE_32) -c ../DLL/clock_utils.c -o $(OBJDIR_RELEASE_32)/__/DLL/clock_utils.o

$(OBJDIR_RELEASE_32)/__/DLL/clock_color.o: ../DLL/clock_color.c
	$(CC0) $(CFLAGS_RELEASE_32) $(INC_RELEASE_32) -c ../DLL/clock_color.c -o $(OBJDIR_RELEASE_32)/__/DLL/clock_color.o

$(OBJDIR_RELEASE_32)/__/DLL/clock_api.o: ../DLL/clock_api.c
	$(CC0) $(CFLAGS_RELEASE_32) $(INC_RELEASE_32) -c ../DLL/clock_api.c -o $(OBJDIR_RELEASE_32)/__/DLL/clock_api.o

$(OBJDIR_RELEASE_32)/__/DLL/Tclock.o: ../DLL/Tclock.c
	$(CC0) $(CFLAGS_RELEASE_32) $(INC_RELEASE_32) -c ../DLL/Tclock.c -o $(OBJDIR_RELEASE_32)/__/DLL/Tclock.o

clean_release_32: 
	rm -f $(OBJ_RELEASE_32) $(OUT_RELEASE_32)
	rm -rf $(OBJDIR_RELEASE_32)/__/common
	rm -rf $(OBJDIR_RELEASE_32)/__/DLL

before_release_64: 
	test -d ../../Release/misc || mkdir -p ../../Release/misc
	test -d $(OBJDIR_RELEASE_64)/__/common || mkdir -p $(OBJDIR_RELEASE_64)/__/common
	test -d $(OBJDIR_RELEASE_64)/__/DLL || mkdir -p $(OBJDIR_RELEASE_64)/__/DLL

after_release_64: 

build_release_64: before_release_64 out_release_64 after_release_64

release_64: before_build build_release_64 after_build

out_release_64: before_release_64 $(OBJ_RELEASE_64) $(DEP_RELEASE_64)
	$(LD1) -shared $(LIBDIR_RELEASE_64) $(OBJ_RELEASE_64)  -o $(OUT_RELEASE_64) $(LDFLAGS_RELEASE_64) $(LIB_RELEASE_64)

$(OBJDIR_RELEASE_64)/__/common/win2k_compat.o: ../common/win2k_compat.c
	$(CC1) $(CFLAGS_RELEASE_64) $(INC_RELEASE_64) -c ../common/win2k_compat.c -o $(OBJDIR_RELEASE_64)/__/common/win2k_compat.o

$(OBJDIR_RELEASE_64)/__/common/utl.o: ../common/utl.c
	$(CC1) $(CFLAGS_RELEASE_64) $(INC_RELEASE_64) -c ../common/utl.c -o $(OBJDIR_RELEASE_64)/__/common/utl.o

$(OBJDIR_RELEASE_64)/__/common/newapi.o: ../common/newapi.c
	$(CC1) $(CFLAGS_RELEASE_64) $(INC_RELEASE_64) -c ../common/newapi.c -o $(OBJDIR_RELEASE_64)/__/common/newapi.o

$(OBJDIR_RELEASE_64)/__/DLL/version.o: ../DLL/version.rc
	$(WINDRES1) -i ../DLL/version.rc -J rc -o $(OBJDIR_RELEASE_64)/__/DLL/version.o -O coff $(INC_RELEASE_64)

$(OBJDIR_RELEASE_64)/__/DLL/main.o: ../DLL/main.c
	$(CC1) $(CFLAGS_RELEASE_64) $(INC_RELEASE_64) -c ../DLL/main.c -o $(OBJDIR_RELEASE_64)/__/DLL/main.o

$(OBJDIR_RELEASE_64)/__/DLL/format.o: ../DLL/format.c
	$(CC1) $(CFLAGS_RELEASE_64) $(INC_RELEASE_64) -c ../DLL/format.c -o $(OBJDIR_RELEASE_64)/__/DLL/format.o

$(OBJDIR_RELEASE_64)/__/DLL/font.o: ../DLL/font.c
	$(CC1) $(CFLAGS_RELEASE_64) $(INC_RELEASE_64) -c ../DLL/font.c -o $(OBJDIR_RELEASE_64)/__/DLL/font.o

$(OBJDIR_RELEASE_64)/__/DLL/clock_utils.o: ../DLL/clock_utils.c
	$(CC1) $(CFLAGS_RELEASE_64) $(INC_RELEASE_64) -c ../DLL/clock_utils.c -o $(OBJDIR_RELEASE_64)/__/DLL/clock_utils.o

$(OBJDIR_RELEASE_64)/__/DLL/clock_color.o: ../DLL/clock_color.c
	$(CC1) $(CFLAGS_RELEASE_64) $(INC_RELEASE_64) -c ../DLL/clock_color.c -o $(OBJDIR_RELEASE_64)/__/DLL/clock_color.o

$(OBJDIR_RELEASE_64)/__/DLL/clock_api.o: ../DLL/clock_api.c
	$(CC1) $(CFLAGS_RELEASE_64) $(INC_RELEASE_64) -c ../DLL/clock_api.c -o $(OBJDIR_RELEASE_64)/__/DLL/clock_api.o

$(OBJDIR_RELEASE_64)/__/DLL/Tclock.o: ../DLL/Tclock.c
	$(CC1) $(CFLAGS_RELEASE_64) $(INC_RELEASE_64) -c ../DLL/Tclock.c -o $(OBJDIR_RELEASE_64)/__/DLL/Tclock.o

clean_release_64: 
	rm -f $(OBJ_RELEASE_64) $(OUT_RELEASE_64)
	rm -rf $(OBJDIR_RELEASE_64)/__/common
	rm -rf $(OBJDIR_RELEASE_64)/__/DLL

before_debug_32: 
	test -d ../../Debug/misc || mkdir -p ../../Debug/misc
	test -d $(OBJDIR_DEBUG_32)/__/common || mkdir -p $(OBJDIR_DEBUG_32)/__/common
	test -d $(OBJDIR_DEBUG_32)/__/DLL || mkdir -p $(OBJDIR_DEBUG_32)/__/DLL

after_debug_32: 
	objcopy --only-keep-debug ../../Debug/misc/T-Clock.dll ../../Debug/misc/T-Clock.dbg
	objcopy --strip-debug --strip-unneeded --add-gnu-debuglink=../../Debug/misc/T-Clock.dbg ../../Debug/misc/T-Clock.dll

build_debug_32: before_debug_32 out_debug_32 after_debug_32

debug_32: before_build build_debug_32 after_build

out_debug_32: before_debug_32 $(OBJ_DEBUG_32) $(DEP_DEBUG_32)
	$(LD0) -shared $(LIBDIR_DEBUG_32) $(OBJ_DEBUG_32)  -o $(OUT_DEBUG_32) $(LDFLAGS_DEBUG_32) $(LIB_DEBUG_32)

$(OBJDIR_DEBUG_32)/__/common/win2k_compat.o: ../common/win2k_compat.c
	$(CC0) $(CFLAGS_DEBUG_32) $(INC_DEBUG_32) -c ../common/win2k_compat.c -o $(OBJDIR_DEBUG_32)/__/common/win2k_compat.o

$(OBJDIR_DEBUG_32)/__/common/utl.o: ../common/utl.c
	$(CC0) $(CFLAGS_DEBUG_32) $(INC_DEBUG_32) -c ../common/utl.c -o $(OBJDIR_DEBUG_32)/__/common/utl.o

$(OBJDIR_DEBUG_32)/__/common/newapi.o: ../common/newapi.c
	$(CC0) $(CFLAGS_DEBUG_32) $(INC_DEBUG_32) -c ../common/newapi.c -o $(OBJDIR_DEBUG_32)/__/common/newapi.o

$(OBJDIR_DEBUG_32)/__/DLL/version.o: ../DLL/version.rc
	$(WINDRES0) -i ../DLL/version.rc -J rc -o $(OBJDIR_DEBUG_32)/__/DLL/version.o -O coff $(INC_DEBUG_32)

$(OBJDIR_DEBUG_32)/__/DLL/main.o: ../DLL/main.c
	$(CC0) $(CFLAGS_DEBUG_32) $(INC_DEBUG_32) -c ../DLL/main.c -o $(OBJDIR_DEBUG_32)/__/DLL/main.o

$(OBJDIR_DEBUG_32)/__/DLL/format.o: ../DLL/format.c
	$(CC0) $(CFLAGS_DEBUG_32) $(INC_DEBUG_32) -c ../DLL/format.c -o $(OBJDIR_DEBUG_32)/__/DLL/format.o

$(OBJDIR_DEBUG_32)/__/DLL/font.o: ../DLL/font.c
	$(CC0) $(CFLAGS_DEBUG_32) $(INC_DEBUG_32) -c ../DLL/font.c -o $(OBJDIR_DEBUG_32)/__/DLL/font.o

$(OBJDIR_DEBUG_32)/__/DLL/clock_utils.o: ../DLL/clock_utils.c
	$(CC0) $(CFLAGS_DEBUG_32) $(INC_DEBUG_32) -c ../DLL/clock_utils.c -o $(OBJDIR_DEBUG_32)/__/DLL/clock_utils.o

$(OBJDIR_DEBUG_32)/__/DLL/clock_color.o: ../DLL/clock_color.c
	$(CC0) $(CFLAGS_DEBUG_32) $(INC_DEBUG_32) -c ../DLL/clock_color.c -o $(OBJDIR_DEBUG_32)/__/DLL/clock_color.o

$(OBJDIR_DEBUG_32)/__/DLL/clock_api.o: ../DLL/clock_api.c
	$(CC0) $(CFLAGS_DEBUG_32) $(INC_DEBUG_32) -c ../DLL/clock_api.c -o $(OBJDIR_DEBUG_32)/__/DLL/clock_api.o

$(OBJDIR_DEBUG_32)/__/DLL/Tclock.o: ../DLL/Tclock.c
	$(CC0) $(CFLAGS_DEBUG_32) $(INC_DEBUG_32) -c ../DLL/Tclock.c -o $(OBJDIR_DEBUG_32)/__/DLL/Tclock.o

clean_debug_32: 
	rm -f $(OBJ_DEBUG_32) $(OUT_DEBUG_32)
	rm -rf $(OBJDIR_DEBUG_32)/__/common
	rm -rf $(OBJDIR_DEBUG_32)/__/DLL

before_debug_64: 
	test -d ../../Debug/misc || mkdir -p ../../Debug/misc
	test -d $(OBJDIR_DEBUG_64)/__/common || mkdir -p $(OBJDIR_DEBUG_64)/__/common
	test -d $(OBJDIR_DEBUG_64)/__/DLL || mkdir -p $(OBJDIR_DEBUG_64)/__/DLL

after_debug_64: 
	objcopy --only-keep-debug ../../Debug/misc/T-Clock64.dll ../../Debug/misc/T-Clock64.dbg
	objcopy --strip-debug --strip-unneeded --add-gnu-debuglink=../../Debug/misc/T-Clock64.dbg ../../Debug/misc/T-Clock64.dll

build_debug_64: before_debug_64 out_debug_64 after_debug_64

debug_64: before_build build_debug_64 after_build

out_debug_64: before_debug_64 $(OBJ_DEBUG_64) $(DEP_DEBUG_64)
	$(LD1) -shared $(LIBDIR_DEBUG_64) $(OBJ_DEBUG_64)  -o $(OUT_DEBUG_64) $(LDFLAGS_DEBUG_64) $(LIB_DEBUG_64)

$(OBJDIR_DEBUG_64)/__/common/win2k_compat.o: ../common/win2k_compat.c
	$(CC1) $(CFLAGS_DEBUG_64) $(INC_DEBUG_64) -c ../common/win2k_compat.c -o $(OBJDIR_DEBUG_64)/__/common/win2k_compat.o

$(OBJDIR_DEBUG_64)/__/common/utl.o: ../common/utl.c
	$(CC1) $(CFLAGS_DEBUG_64) $(INC_DEBUG_64) -c ../common/utl.c -o $(OBJDIR_DEBUG_64)/__/common/utl.o

$(OBJDIR_DEBUG_64)/__/common/newapi.o: ../common/newapi.c
	$(CC1) $(CFLAGS_DEBUG_64) $(INC_DEBUG_64) -c ../common/newapi.c -o $(OBJDIR_DEBUG_64)/__/common/newapi.o

$(OBJDIR_DEBUG_64)/__/DLL/version.o: ../DLL/version.rc
	$(WINDRES1) -i ../DLL/version.rc -J rc -o $(OBJDIR_DEBUG_64)/__/DLL/version.o -O coff $(INC_DEBUG_64)

$(OBJDIR_DEBUG_64)/__/DLL/main.o: ../DLL/main.c
	$(CC1) $(CFLAGS_DEBUG_64) $(INC_DEBUG_64) -c ../DLL/main.c -o $(OBJDIR_DEBUG_64)/__/DLL/main.o

$(OBJDIR_DEBUG_64)/__/DLL/format.o: ../DLL/format.c
	$(CC1) $(CFLAGS_DEBUG_64) $(INC_DEBUG_64) -c ../DLL/format.c -o $(OBJDIR_DEBUG_64)/__/DLL/format.o

$(OBJDIR_DEBUG_64)/__/DLL/font.o: ../DLL/font.c
	$(CC1) $(CFLAGS_DEBUG_64) $(INC_DEBUG_64) -c ../DLL/font.c -o $(OBJDIR_DEBUG_64)/__/DLL/font.o

$(OBJDIR_DEBUG_64)/__/DLL/clock_utils.o: ../DLL/clock_utils.c
	$(CC1) $(CFLAGS_DEBUG_64) $(INC_DEBUG_64) -c ../DLL/clock_utils.c -o $(OBJDIR_DEBUG_64)/__/DLL/clock_utils.o

$(OBJDIR_DEBUG_64)/__/DLL/clock_color.o: ../DLL/clock_color.c
	$(CC1) $(CFLAGS_DEBUG_64) $(INC_DEBUG_64) -c ../DLL/clock_color.c -o $(OBJDIR_DEBUG_64)/__/DLL/clock_color.o

$(OBJDIR_DEBUG_64)/__/DLL/clock_api.o: ../DLL/clock_api.c
	$(CC1) $(CFLAGS_DEBUG_64) $(INC_DEBUG_64) -c ../DLL/clock_api.c -o $(OBJDIR_DEBUG_64)/__/DLL/clock_api.o

$(OBJDIR_DEBUG_64)/__/DLL/Tclock.o: ../DLL/Tclock.c
	$(CC1) $(CFLAGS_DEBUG_64) $(INC_DEBUG_64) -c ../DLL/Tclock.c -o $(OBJDIR_DEBUG_64)/__/DLL/Tclock.o

clean_debug_64: 
	rm -f $(OBJ_DEBUG_64) $(OUT_DEBUG_64)
	rm -rf $(OBJDIR_DEBUG_64)/__/common
	rm -rf $(OBJDIR_DEBUG_64)/__/DLL

virtual_debug: before_build build_debug_64 build_debug_32 after_build

.PHONY: before_build after_build before_release_32 after_release_32 clean_release_32 before_release_64 after_release_64 clean_release_64 before_debug_32 after_debug_32 clean_debug_32 before_debug_64 after_debug_64 clean_debug_64

