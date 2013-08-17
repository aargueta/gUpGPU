// transform.h
#include "triangle.h"
#include "vertex.h"
#include "vector.h"

// transVec = vec3(transX, transY, transZ)
int TranslateTris(Triangle** triPtrArray, int numTris, vec3 transVec);

// rotateVec = vec3(rotX, rotY, rotZ)
int RotateTris(Triangle** triPtrArray, int numTris, vec3 rotateVec);

// scaleVec = vec3(scaleX, scaleY, scaleZ)
int ScaleTris(Triangle** triPtrArray, int numTris, vec3 scaleVec);

// skewVec = vec3(skewX, skewY, skewZ)
int SkewTris(Triangle** triPtrArray, int numTris, vec3 skewVec);