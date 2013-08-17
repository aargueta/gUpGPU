// render.h
#include "vector.h"

// frustrum = vec4(viewHeight/2, viewWidth/2, viewDistClose, viewDistFar)
int SetCamera(vec3 pos, vec3 pointAt, vec4 frustrum);

int RenderScene();

int FlushScene();