#ifndef FABRIC_RENDER_CONTEXT_H
#define FABRIC_RENDER_CONTEXT_H

#include "esUtil.h"

typedef struct {
    GLuint programObject;
} UserData;

void DrawTriangle(ESContext *esContext);
int render_context_init(ESContext *esContext);
ESContext* render_context_alloc();
void render_context_create(ESContext *esContext, void (ESCALLBACK *drawFunc) (ESContext* ));

#endif //FABRIC_RENDER_CONTEXT_H
