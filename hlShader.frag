#version 330 core

in vec3 Normal;
out vec4 color;

uniform int colorValue;

void main(void) {
  vec3 regColor = vec3(0.0, 0.2, 0.0);
  color = vec4(regColor, 0.2);
}
