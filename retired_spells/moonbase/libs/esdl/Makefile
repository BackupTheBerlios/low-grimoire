#  Copyright (c) 2001 Dan Gudmundsson
#  See the file "license.terms" for information on usage and redistribution
#  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
# 
#     $Id: Makefile,v 1.1 2003/09/22 08:29:42 sorcerer_low Exp $
#

OGLDIR  = /usr/X11R6

# Uncomment these if your opengl header is located in another directory than
# the usual $(OGLDIR)/include/GL/gl.h
#GL_INCLUDE_DIR      = OpenGL
#USE_GL_INCLUDE_DIR  = -DFULL_PATH_TO_GL_INCLUDE_DIR

GL_LIBS		= -L$(OGLDIR)/lib -lGL -lGLU 
GL_INCS		= -I$(OGLDIR)/include/$(GL_INCLUDE_DIR)

SDL_LIBS	= $(shell sdl-config --libs)
LIBS		= $(GL_LIBS) $(SDL_LIBS) -lm 

SDLINCS		= $(shell sdl-config --cflags)

CFLAGS	= -g -O2 -funroll-loops -Wall -ffast-math -fpic -fomit-frame-pointer \
            $(USE_GL_INCLUDE_DIR) -DSHM -DPTHREADS $(GL_INCS) $(SDLINCS)

TARGETDIR = ../priv

## The driver part needs erlang includes
ERL_DIR := $(shell echo 'io:format("~s~n",[code:root_dir()]),halt().' | erl | sed 's,^[0-9]*> *,,g' | tail +2)
ERLINC = -I$(ERL_DIR)/usr/include

CC = gcc
GCC_O	= $(CC) -c $(CFLAGS) $(INCS) $<

# Files

Helpers		= esdl_wrapper esdl_gen esdl_spec esdl_conv esdl_util \
			esdl_video esdl_events esdl_audio \
			esdl_opengl esdl_glu 

HelpersObjects	= $(Helpers:%=%.o)

# Targets

target: $(TARGETDIR)/sdlwrapper $(TARGETDIR)/sdl_driver.so

clean:  
	rm -f $(HelpersObjects) 
	rm -f ../priv/*.so ../priv/sdlwrapper *.o
	rm -f *~ erl_crash.dump

%.o: %.c
	$(GCC_O)

$(TARGETDIR)/sdlwrapper: esdl_main.c esdl_stream.c $(HelpersObjects) 
	$(CC) $(CFLAGS) $(INCS) $<  esdl_stream.c $(HelpersObjects) $(LIBS) -o $@

$(TARGETDIR)/sdl_driver.so: esdl_driver.c $(HelpersObjects)
	$(CC) $(CFLAGS) -fpic -shared  $(INCS) $(ERLINC) $< $(HelpersObjects) $(LIBS) -o $@	
