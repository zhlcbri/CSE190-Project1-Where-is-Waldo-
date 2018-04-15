#pragma once
#ifndef _GAMEMANAGER_H_
#define _GAMEMANAGER_H_

#include <iostream>

#define GLFW_INCLUDE_GLEXT
#ifdef __APPLE__
#define GLFW_INCLUDE_GLCOREARB
#else
#include <GL/glew.h>
#endif
#include <GLFW/glfw3.h>
#include "shader.h"

class GameManager
{
public:

	static void initialize_objects();
	static void clean_up();
	static void display_callback();
};

#endif