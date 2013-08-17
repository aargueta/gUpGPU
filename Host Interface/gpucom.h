// gpucom.h

#ifndef GPUCOM_H
#define GPUCOM_H 


 
#define HEADER_ACK	0
#define SUB_ACK		1
#define FINAL_ACK	2
#define SYS_ERR		3
#define SYNC_ERR	4

struct GpuPacketHeader
{
	int sendId,
	int type,
	int numSubPackets
};

struct GpuSubPacket
{
	int payload0,
	int payload1,
	int payload2,
	int payload3,
};

int SendPacket(int type, int numBytes, struct GpuPacketHeader header, char* payload);

#endif // GPUCOM_H