GENCCODE_ASSEMBLY_TYPE=-a gcc
SO=so
SOBJ=so
A=a
LIBPREFIX=lib
LIB_EXT_ORDER=.60.3
COMPILE=clang -Os -fno-short-wchar -fno-short-enums -ffunction-sections -fdata-sections -fvisibility=hidden         -DU_USING_ICU_NAMESPACE=0 -DU_HAVE_NL_LANGINFO_CODESET=0 -DU_TIMEZONE=0         -DU_DISABLE_RENAMING=1         -DUCONFIG_NO_COLLATION=0         -DUCONFIG_NO_FORMATTING=0         -DUCONFIG_NO_LEGACY_CONVERSION=1         -DUCONFIG_NO_REGULAR_EXPRESSIONS=0         -DUCONFIG_NO_TRANSLITERATION=0 -DU_STATIC_IMPLEMENTATION -fPIC -ffunction-sections -fdata-sections -D_REENTRANT  -DU_HAVE_ELF_H=1 -DU_HAVE_ATOMIC=1 -DU_HAVE_STRTOD_L=1 -DU_HAVE_XLOCALE_H=0  -DU_DISABLE_RENAMING=1 -DU_ATTRIBUTE_DEPRECATED= -O3 -Os -fno-short-wchar -fno-short-enums -ffunction-sections -fdata-sections -fvisibility=hidden         -DU_USING_ICU_NAMESPACE=0 -DU_HAVE_NL_LANGINFO_CODESET=0 -DU_TIMEZONE=0         -DU_DISABLE_RENAMING=1         -DUCONFIG_NO_COLLATION=0         -DUCONFIG_NO_FORMATTING=0         -DUCONFIG_NO_LEGACY_CONVERSION=1         -DUCONFIG_NO_REGULAR_EXPRESSIONS=0         -DUCONFIG_NO_TRANSLITERATION=0 -DU_STATIC_IMPLEMENTATION -fPIC  -Qunused-arguments -Wno-parentheses-equality -c
LIBFLAGS=-I/workspaces/requery-sqlite-android/icu58/icu4c/source/common -I../common -DPIC -fPIC
GENLIB=clang -O3 -Os -fno-short-wchar -fno-short-enums -ffunction-sections -fdata-sections -fvisibility=hidden         -DU_USING_ICU_NAMESPACE=0 -DU_HAVE_NL_LANGINFO_CODESET=0 -DU_TIMEZONE=0         -DU_DISABLE_RENAMING=1         -DUCONFIG_NO_COLLATION=0         -DUCONFIG_NO_FORMATTING=0         -DUCONFIG_NO_LEGACY_CONVERSION=1         -DUCONFIG_NO_REGULAR_EXPRESSIONS=0         -DUCONFIG_NO_TRANSLITERATION=0 -DU_STATIC_IMPLEMENTATION -fPIC  -Qunused-arguments -Wno-parentheses-equality -pthread -Wl,--gc-sections -Wl,--gc-sections  -shared -Wl,-Bsymbolic
LDICUDTFLAGS=-nodefaultlibs -nostdlib
LD_SONAME=-Wl,-soname -Wl,
RPATH_FLAGS=
BIR_LDFLAGS=-Wl,-Bsymbolic
AR=ar
ARFLAGS=r
RANLIB=ranlib
INSTALL_CMD=/usr/bin/install -c
