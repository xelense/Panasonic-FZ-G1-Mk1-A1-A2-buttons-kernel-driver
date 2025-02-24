obj-m = panasonic-tbtn.o

KVERSION ?= $(shell uname -r)

all:
	make -C /lib/modules/$(KVERSION)/build M=$(PWD) modules
clean:
	make -C /lib/modules/$(KVERSION)/build M=$(PWD) clean
install:
	mkdir -p /lib/modules/$(KVERSION)/kernel/drivers/panasonic-tbtn/
	cp $(PWD)/panasonic-tbtn.ko /lib/modules/$(KVERSION)/kernel/drivers/panasonic-tbtn/
	echo "panasonic-tbtn" > /etc/modules-load.d/panasonic-tbtn.conf
