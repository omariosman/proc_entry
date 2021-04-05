obj-m += ex8.o

KDIR = /usr/src/linux-headers-4.19.0-13-amd64

all:
	$(MAKE) -C $(KDIR) SUBDIRS=$(PWD) modules

clean:
	rm -rf *.o *.ko *.mod.* *.symvers *.order
