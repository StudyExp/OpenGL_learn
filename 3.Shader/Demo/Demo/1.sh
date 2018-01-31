// 顶点找色漆
#version 330 core
layout (location = 0) in vec3 aPos; // 位置变量的属性为止值为0

out vec4 vertexColor; // 为片段着色器指定一个颜色输出

void main() {

gl_Position = vec4(aPos, 1.0); // 注意我们如何把一个vec3作为vec4的构造器的参数
vertexColor = vec4(0.5, 0.0, 0.0, 1.0); // 把输出变量设置为暗红色
}




# 片段着色器

#version 330 core
out vec4 FragColor;

in vec4 vertexCOlor;

void main()
{
FragColor = vertexColor;
}








#uniform
uniform是一种从CPU到GPU中的着色器发送数据的方式，但uniform和顶点属性有些不同
首先uniform是全局的，全局意味着uniform变量必须在每个着实为期程序对象中都是独一无二的，二期为他是可以被着色器程序的任意着色器在人一阶段进行访问的。第二，无论你把uniform值设置成什么，uniform会一直保存他们的数据，知道他们被重置或更新

#verison 330 core
out vec4 FragColor;

uniform vec4 ourColor; // 在opengl程序中代码设置这个变量

void main()
{
    FragColor = ourColor;
}


{
float timeVlaue = glfwGetTime();
float greenValue = (sin(timeValue) / 2.0f) + 0.5
int vertexColorLocarion = glGetUniformLocation(shaderProgram. "ourColor");
glUseProgram(shaderProgram);
glUniform4f(vertexColorLocation, 0.0f, greenValue, 0.0f, 1.0f);

}


