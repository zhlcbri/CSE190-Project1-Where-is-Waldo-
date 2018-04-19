#version 330 core

in vec2 texCoords;
in vec3 fragPos;

out vec4 fragColor;

// values that stay constant for the whole mesh
uniform sampler2D texture_0;

void main()
{
    vec3 texColor = texture(texture_0, texCoords).rgb;

    fragColor = vec4(texColor, 1.0f);
}
