KVERS = $(shell uname -r)

PWD := $(shell pwd)

# Kernel modules
#obj-m += sys_call_table.o
obj-m += hook.o

# Specify flags for the module compilation.
#EXTRA_CFLAGS=-g -O0

build: kernel_modules

kernel_modules:
	make -C /lib/modules/$(KVERS)/build M=$(PWD) modules

clean:
	make -C /lib/modules/$(KVERS)/build M=$(PWD) clean