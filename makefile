all: spatial_firmware_update

spatial_firmware_update: spatialsdk/an_packet_protocol.c spatialsdk/an_packet_protocol.h spatialsdk/spatial_packets.c spatialsdk/spatial_packets.h rs232/rs232.c rs232/rs232.h spatial_firmware_update.c
	gcc -pedantic -Wall -o bin/spatial_firmware_update spatialsdk/an_packet_protocol.c spatialsdk/spatial_packets.c rs232/rs232.c spatial_firmware_update.c

clean:
	rm bin/*  
