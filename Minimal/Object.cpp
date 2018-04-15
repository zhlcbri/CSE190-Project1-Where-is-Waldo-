#include "Object.h"
#include "Shader.h"
#include <iostream>
#include <fstream>
#include <string>
#include <math.h>
#include <oglplus/shapes/draw.hpp>

/*#define VERTEX_SHADER_PATH "cursorShader.vert"
#define FRAGMENT_SHADER_PATH "cursorShader.frag"*/

//GLint cursor_shader;

Object::Object(const string filepath/*const char *filepath*/)
{
	loadModel(filepath);
	//shaderProgram = LoadShaders(VERTEX_SHADER_PATH, FRAGMENT_SHADER_PATH);

	// Create array object and buffers. Remember to delete your buffers when the object is destroyed!
	glGenVertexArrays(1, &VAO);
	glGenBuffers(1, &VBO);
	glGenBuffers(1, &NBO); // for normal coloring
	glGenBuffers(1, &EBO);

	glBindVertexArray(VAO);
	
	// Bind vertices
	glBindBuffer(GL_ARRAY_BUFFER, VBO);
	glBufferData(GL_ARRAY_BUFFER, vertexBuff.size() * sizeof(float) * 3, vertexBuff.data(), GL_STATIC_DRAW);
	//glBufferData(GL_ARRAY_BUFFER, vertices.size() * sizeof(glm::vec3), vertices.data(), GL_STATIC_DRAW); // 3rd param changed

	//glEnableVertexAttribArray(0); // Enable the usage of layout location 0
	//glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 3 * sizeof(GLfloat), (GLvoid*)0); // 6 * sizeof(float)

	// Bind normals
	glBindBuffer(GL_ARRAY_BUFFER, NBO);
	glBufferData(GL_ARRAY_BUFFER, normalBuff.size() * sizeof(float) * 3, normalBuff.data(), GL_STATIC_DRAW);
	//glBufferData(GL_ARRAY_BUFFER, normals.size() * sizeof(glm::vec3), normals.data(), GL_STATIC_DRAW);

	//glEnableVertexAttribArray(1); // Enable the usage of layout location 1
	//glVertexAttribPointer(1, 3, GL_FLOAT, GL_FALSE, 3 * sizeof(GLfloat), (GLvoid*)0); // when layout=1

	// Bind indices
	glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, EBO);
	glBufferData(GL_ELEMENT_ARRAY_BUFFER, indexBuff.size() * sizeof(uint16_t), &(indexBuff[0]), GL_STATIC_DRAW);
	//glBufferData(GL_ELEMENT_ARRAY_BUFFER, indices.size() * sizeof(GLuint), &(indices[0]), GL_STATIC_DRAW); // 3rd param changed

	glBindBuffer(GL_ARRAY_BUFFER, 0);
	glBindVertexArray(0);
}

Object::~Object()
{
	// Delete previously generated buffers. Note that forgetting to do this can waste GPU memory in a
	// large project! This could crash the graphics driver due to memory leaks, or slow down application performance!
	glDeleteVertexArrays(1, &VAO);
	glDeleteBuffers(1, &VBO);
	glDeleteBuffers(1, &NBO);
	glDeleteBuffers(1, &EBO);
}

bool Object::loadModel(const string file)
{
	modelScene = importer.ReadFile(file, aiProcess_MakeLeftHanded | aiProcess_FlipWindingOrder | aiProcess_FlipUVs | aiProcess_PreTransformVertices |
		aiProcess_CalcTangentSpace |
		aiProcess_GenSmoothNormals |
		aiProcess_Triangulate |
		aiProcess_FixInfacingNormals |
		aiProcess_FindInvalidData |
		aiProcess_ValidateDataStructure | 0

	);

	if (!modelScene)
	{
		//MessageBoxA(NULL, importer.GetErrorString(), "Error: ", MB_ICONERROR);
		cout << "ERROR::ASSIMP::" << importer.GetErrorString() << endl;
		return false;
	}
	else
		processData();

	return true;
}

void Object::draw(GLuint shaderProgram) {
	// draw all meshes assigned to this node
	for (unsigned int n = 0; n < modelNode->mNumMeshes; ++n) {
		// bind material uniform
		//glBindBufferRange(GL_UNIFORM_BUFFER, materialUniLoc, myMeshes[nd->mMeshes[n]].uniformBlockIndex, 0, sizeof(struct MyMaterial));
		// bind texture
		//glBindTexture(GL_TEXTURE_2D, myMeshes[nd->mMeshes[n]].texIndex);
		// bind VAO
		//glBindVertexArray(myMeshes[nd->mMeshes[n]].vao);
		// draw
		glDrawElements(GL_TRIANGLES, modelMesh[modelNode->mMeshes[n]].mNumFaces * 3, GL_UNSIGNED_INT, 0);

	}

	// draw all children
	/*for (unsigned int n = 0; n < modelNode->mNumChildren; ++n) {
		modelNode->mChildren[n]
	}*/
}


bool Object::assimpGetMeshData(const aiMesh *mesh) {
	aiFace *face;

	for (unsigned int v = 0; v < mesh->mNumVertices; v++)
	{
		vertexBuff.push_back(mesh->mVertices[v].x);
		vertexBuff.push_back(mesh->mVertices[v].y);
		vertexBuff.push_back(mesh->mVertices[v].z);

		/*vertexBuff.push_back(mesh->mNormals[v].x);
		vertexBuff.push_back(mesh->mNormals[v].y);
		vertexBuff.push_back(mesh->mNormals[v].z);*/

		if (mesh->HasTextureCoords(0)) {
			vertexBuff.push_back(mesh->mTextureCoords[0][v].x);
			vertexBuff.push_back(mesh->mTextureCoords[0][v].y);
		}
		else
		{
			vertexBuff.push_back(0);
			vertexBuff.push_back(0);
		}
		/*
		vertexBuff.push_back(mesh->mTangents[v].x);
		vertexBuff.push_back(mesh->mTangents[v].y);
		vertexBuff.push_back(mesh->mTangents[v].z);*/

	}

	for (unsigned int n = 0; n < mesh->mNumVertices; n++) {
		normalBuff.push_back(mesh->mNormals[n].x);
		normalBuff.push_back(mesh->mNormals[n].y);
		normalBuff.push_back(mesh->mNormals[n].z);
	}

	for (unsigned int f = 0; f < mesh->mNumFaces; f++)
	{
		face = &mesh->mFaces[f];
		indexBuff.push_back(face->mIndices[0]);
		indexBuff.push_back(face->mIndices[1]);
		indexBuff.push_back(face->mIndices[2]);
	}

	return true;
}

bool Object::processData()
{
	bool repeat = true;

	nodeBuff.push_back(modelScene->mRootNode);

	/* if (modelScene->mNumMeshes > 0)
	{
	for (unsigned int m=0;m<modelScene->mNumMeshes;m++)
	this->assimpGetMeshData(modelScene->mMeshes[m]);
	}*/

	// I raise all nodes tree to the root level 
	while (repeat)
	{
		for (unsigned int a = 0; a<nodeBuff.size(); a++)
		{
			modelNode = nodeBuff.at(a);
			if (modelNode->mNumChildren > 0)
				for (unsigned int c = 0; c < modelNode->mNumChildren; c++)
				{
					nodeBuff.push_back(modelNode->mChildren[c]);

				}

			else repeat = false;
		}
	}

	// Get node information from the root level (all nodes)
	for (unsigned int a = 0; a < nodeBuff.size(); a++)
	{
		modelNode = nodeBuff.at(a);

		if (modelNode->mNumMeshes>0)
			for (unsigned int b = 0; b < modelNode->mNumMeshes; b++) {
				assimpGetMeshData(modelScene->mMeshes[b]);
				//std::cout << "::::::::PROCESSING =>" << modelScene->mMeshes[b]->mName;
			}
	}
	return true;
}

vector<float> *Object::getVertexData()
{
	return &vertexBuff;
}

vector<uint16_t> *Object::getIndexData()
{
	return &indexBuff;
}

