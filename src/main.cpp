#include<iostream>
#include<raylib.h>
using namespace std;

int main(){
    const int screenWidth = 600;
    const int screenHeight = 600;
    InitWindow(screenWidth, screenHeight, "Raylib Test");
    while(!WindowShouldClose()){
        BeginDrawing();
        ClearBackground(Color{0, 200, 176, 255});
        DrawCircle(screenWidth / 2, screenHeight / 2, 200, BLACK);
        EndDrawing();
    }
	return 0;
}
