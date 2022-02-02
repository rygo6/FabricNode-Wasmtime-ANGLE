#ifndef FABRIC_RENDER_CONTEXT_H
#define FABRIC_RENDER_CONTEXT_H

#include "esUtil.h"

void DrawTriangle(ESContext *esContext);
ESContext* InitializeAndCreateWindow();
void RenderContextCreate(ESContext *esContext, void (ESCALLBACK *drawFunc) (ESContext* ));

#endif //FABRIC_RENDER_CONTEXT_H
