#pragma once
#ifndef OBJECT_H
#define OBJECT_H

#define GLFW_INCLUDE_GLEXT //
#ifdef __APPLE__
#define GLFW_INCLUDE_GLCOREARB
#else
#include <GL/glew.h>
#endif

#include <GLFW/glfw3.h>
#include <glm/mat4x4.hpp>
#include <glm/gtc/matrix_transform.hpp>
#include <vector>

// Use of degrees is deprecated. Use radians instead.
#ifndef GLM_FORCE_RADIANS
#define GLM_FORCE_RADIANS
#endif
#include <glm/mat4x4.hpp>
#include <glm/gtc/matrix_transform.hpp>

#include <assimp/Importer.hpp>
#include <assimp/scene.h>
#include <assimp/postprocess.h>

using namespace std;
using namespace glm;

class Object
{
private:
	//vector<GLuint> indices;
	bool assimpGetMeshData(const aiMesh *mesh);

	Assimp::Importer importer;
	const aiScene *modelScene;
	const aiNode *modelNode;
	const aiMesh *modelMesh;
	const aiFace *modelFace;

	vector<float> vertexBuff;
	vector<uint16_t> indexBuff;
	vector<float> normalBuff;

	vector<const aiNode*> nodeBuff;
	unsigned int numNodeBuff;

public:
	//Object(const char* filepath);
	Object(const string filepath);
	Object();
	~Object();

	// These variables are needed for the shader program
	GLuint VAO, VBO, NBO, EBO;

	vector<vec3> vertices; // VBO
	vector<vec3> normals; // NBO
	vector<vec3> indices; // EBO

	bool loadModel(string file);
	bool processData();
	vector<float> *getVertexData();
	vector<uint16_t> *getIndexData();

	//void render(const aiScene *sc, const aiNode* nd);

	void draw(GLuint shaderProgram);
	//void update();

};

#endif