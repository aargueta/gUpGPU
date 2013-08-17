// triangle.h
#include "vertex.h"

struct Triangle{
	int triId,
	Vertex3d* v1, 
	Vertex3d* v2, 
	Vertex3d* v3
};

int LoadTriangle(Vertex3d* v1, Vertex3d* v1, Vertex3d* v1, Triangle* tri);
//int LoadTriangleStrip(int numVertices, Vertex3d* triArray, Triangle* triArray);