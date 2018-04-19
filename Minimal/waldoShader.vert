#version 330 core

layout (location = 0) in vec3 position;
layout (location = 1) in vec3 normal;

layout (location = 2) in vec3 tangent;
layout (location = 3) in vec3 bitangent;

out vec3 Normal;
out vec2 texCoords;

uniform mat4 projection;
uniform mat4 model;
uniform mat4 view;

void main()
{
    // OpenGL maintains the D matrix so you only need to multiply by P, V (aka C inverse), and M
    gl_Position = projection * view * model * vec4(position.x, position.y, position.z, 1.0);
      
    texCoords = vec2(position.x, position.z);
	Normal = mat3(transpose(inverse(model))) * normal;
}
