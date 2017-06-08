###########################################################################
# Copyright 2017 IoT.bzh
#
# author: Stephane Desneux <sdx@iot.bzh>
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
###########################################################################

# Project Info
# ------------------
set(PROJECT_NAME helloworld-service)
set(PROJECT_VERSION "1.0")
set(PROJECT_PRETTY_NAME "Hello World")
set(PROJECT_DESCRIPTION "The name says it all!")
set(PROJECT_URL "https://github.com/iotbzh/helloworld-service")
set(PROJECT_ICON "icon.png")
set(PROJECT_AUTHOR "Stephane Desneux")
set(PROJECT_AUTHOR_MAIL "sdx@iot.bzh")
set(PROJECT_LICENCE "APL2.0")
set(PROJECT_LANGUAGES,"C")

# Where are stored default templates files from submodule or subtree app-templates in your project tree
# relative to the root project directory
set(PROJECT_APP_TEMPLATES_DIR "conf.d/default")

# Where are stored your external libraries for your project. This is 3rd party library that you don't maintain
# but used and must be built and linked.
# set(PROJECT_LIBDIR "libs")

# Where are stored data for your application. Pictures, static resources must be placed in that folder.
# set(PROJECT_RESOURCES "data")

# Compilation Mode (DEBUG, RELEASE)
# ----------------------------------
set(CMAKE_BUILD_TYPE "DEBUG")

# Kernel selection if needed. Impose a minimal version.
# NOTE FOR NOW IT CHECKS KERNEL HOST VERSION
# -----------------------------------------------
#set (kernel_minimal_version 4.8)

# Compiler selection if needed. Impose a minimal version.
# -----------------------------------------------
set (gcc_minimal_version 4.9)

# PKG_CONFIG required packages
# -----------------------------
set (PKG_REQUIRED_LIST
	json-c
	libsystemd
	afb-daemon
)

# Static constante definition
# -----------------------------
add_compile_options()

# LANG Specific compile flags set for all build types
set(CMAKE_C_FLAGS "")
set(CMAKE_CXX_FLAGS "")

# Print a helper message when every thing is finished
# ----------------------------------------------------
set(CLOSING_MESSAGE "Test with: afb-daemon --rootdir=\$\$(pwd)/package --ldpaths=\$\$(pwd)/package/lib --port=1234 --roothttp=\$\$(pwd)/package/htdocs --tracereq=common --token=\"1\" --verbose")
set(WIDGET_MESSAGE "Install widget file using in the target : afm-util install ${PROJECT_NAME}.wgt")

# (BUG!!!) as PKG_CONFIG_PATH does not work [should be an env variable]
# ---------------------------------------------------------------------
set(CMAKE_INSTALL_PREFIX $ENV{HOME}/opt)
set(CMAKE_PREFIX_PATH ${CMAKE_INSTALL_PREFIX}/lib64/pkgconfig ${CMAKE_INSTALL_PREFIX}/lib/pkgconfig)
set(LD_LIBRARY_PATH ${CMAKE_INSTALL_PREFIX}/lib64 ${CMAKE_INSTALL_PREFIX}/lib)

# Mandatory widget Mimetype specification
# --------------------------------------------------
# Choose between :
# - application/vnd.agl.service
# - application/vnd.agl.native
# - application/x-executable
# - text/html
#
set(WIDGET_TYPE application/vnd.agl.service)

# Mandatory Widget entry point file.
# ----------------------------------------------------
# This is the file that will be executed, loaded,...
# at launch time by the application framework
#
# !IMPORTANT! : Service Widget Mimetype has to specified
# the WIDGET_ENTRY_POINT "lib" which is the default directory
# that holds the bindings.
#
set(WIDGET_ENTRY_POINT lib)

# Optional dependencies order
# ---------------------------
#set(EXTRA_DEPENDENCIES_ORDER)

# Optional Extra global include path
# -----------------------------------
#set(EXTRA_INCLUDE_DIRS)

# Optional extra libraries
# -------------------------
#set(EXTRA_LINK_LIBRARIES)

# Optional force binding installation
# ------------------------------------
# set(BINDINGS_INSTALL_PREFIX PrefixPath )

# Optional force binding Linking flag
# ------------------------------------
# set(BINDINGS_LINK_FLAG LinkOptions )

# Optional force package prefix generation, like widget
# -----------------------------------------------------
# set(PACKAGE_PREFIX DestinationPath)

# Optional Application Framework security token
# and port use for remote debugging.
#------------------------------------------------------------
#set(AFB_TOKEN   ""      CACHE PATH "Default AFB_TOKEN")
#set(AFB_REMPORT "1234" CACHE PATH "Default AFB_TOKEN")
