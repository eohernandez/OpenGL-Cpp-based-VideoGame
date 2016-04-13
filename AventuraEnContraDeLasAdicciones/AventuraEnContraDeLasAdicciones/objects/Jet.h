#pragma once
#ifdef __APPLE__
#include <GLUT/glut.h>
#else
#include <GL/glut.h>
#endif
#include <iostream>
#include <cmath>
#include <SDL2/SDL.h>
#include "physics/MatrizR.h"
#include "physics/PhysicsBodyCube.h"

using namespace std;

class Jet{
public:
	float x;
	float y;
	float z;
	Vector3d forward;
	Vector3d up;
	float size;
	float yaw;
	float pitch;
	float roll;
	float speed;
	int pitchMod;
	int rollMod;
	PhysicsBodyCube body;
	Jet();
	void moveJet();
	void paintJet();
	void jetBoost();
	void jetBrake();
	void calcDir();
};

void rotateUpZ(float angle, Vector3d forward, Vector3d &up);
void rotateAxisVec(float angle, Vector3d axis, Vector3d &vec);