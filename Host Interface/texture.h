//texture.h
#include "vector.h"
struct TexVert{
	int index,
	vec2 pos,
};

struct Texture{
	int index,
	ivec2 pixelDim,
	vec4* texData
};

int LoadTexVert(Texture* tex, float xPos, float yPos, TexVert* tVert);
int LoadTexture(int texIndex, int xDim, int yDim, vec4* texture, Texture* tex);