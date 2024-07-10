sahne_lakritz:
	python3 targets/machdyne_lakritz.py --uart-baudrate 115200 \
		--with-video-framebuffer --l2-size=0 --cpu-variant=lite --build
	cd boot && make TARGET=machdyne_lakritz

sahne_lakritz_prog:
	sudo openFPGALoader -c dirtyJtag build/machdyne_lakritz/gateware/machdyne_lakritz.bit
	litex_term /dev/ttyACM1 --speed 115200 --kernel boot/boot.bin --serial-boot
