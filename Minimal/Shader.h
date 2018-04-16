#pragma once

#ifndef SHADER_H
#define SHADER_H

#define GLFW_INCLUDE_GLEXT
#ifdef __APPLE__
#define GLFW_INCLUDE_GLCOREARB
#else
#include <GL/glew.h>
#endif
#include <GLFW/glfw3.h>

GLuint LoadShaders(const char * vertex_file_path, const char * fragment_file_path);

#endif