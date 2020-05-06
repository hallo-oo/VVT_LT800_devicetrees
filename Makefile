default:
	./version.sh
	cpp -Iinclude -E -P -x assembler-with-cpp ad9523.dtsi > ad9523.tmp.dtsi
	./dtc -I dts -O dtb -o devicetree.dtb lte800.dts
clean:
	rm -rf *.dtb
	rm -rf dt_ver.dtsi
	rm -rf ad9523.tmp.dtsi