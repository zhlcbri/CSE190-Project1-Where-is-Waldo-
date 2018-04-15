#include "GameManager.h"
#include "Object.h"

#define VERTEX_SHADER_PATH "cursorShader.vert"
#define FRAGMENT_SHADER_PATH "cursorShader.frag"

//Object * sphere;
GLint cursor_shader;

void GameManager::initialize_objects() {
	//sphere = new Object("sphere.obj");
}

void GameManager::clean_up() {
	//delete(sphere);
}

void GameManager::display_callback() {

}