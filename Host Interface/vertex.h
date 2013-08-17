//vertex.h
#include "vector.h"
#include "texture.h"
struct Vertex3d{
	vec4 pos, 
	vec4 ambColor,
	vec4 diffColor,
	vec4 specColor,
	vec4 emissColor,
	TexVert tex
};