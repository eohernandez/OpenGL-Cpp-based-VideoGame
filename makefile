all: aventura

aventura: main.o MainMenu.o Game.o Credits.o Jet.o Bullet.o PhysicsBodyCube.o MatrizR.o Vector3d.o Camera.o 
	g++ main.o MainMenu.o Game.o Credits.o Jet.o Bullet.o PhysicsBodyCube.o MatrizR.o Vector3d.o Camera.o -o aventura -lGL -lGLU -lglut -lSDL2 -std=c++11 -fpermissive  

main.o: AventuraEnContraDeLasAdicciones/AventuraEnContraDeLasAdicciones/main.cpp
	g++ -c AventuraEnContraDeLasAdicciones/AventuraEnContraDeLasAdicciones/main.cpp
	AventuraEnContraDeLasAdicciones/AventuraEnContraDeLasAdicciones/glm/*.c -std=c++11

Jet.o: AventuraEnContraDeLasAdicciones/AventuraEnContraDeLasAdicciones/objects/Jet.cpp
	g++ -c AventuraEnContraDeLasAdicciones/AventuraEnContraDeLasAdicciones/objects/Jet.cpp -std=c++11

Bullet.o: AventuraEnContraDeLasAdicciones/AventuraEnContraDeLasAdicciones/objects/Bullet.cpp
	g++ -c AventuraEnContraDeLasAdicciones/AventuraEnContraDeLasAdicciones/objects/Bullet.cpp -std=c++11

PhysicsBodyCube.o: AventuraEnContraDeLasAdicciones/AventuraEnContraDeLasAdicciones/objects/physics/PhysicsBodyCube.cpp
	g++ -c AventuraEnContraDeLasAdicciones/AventuraEnContraDeLasAdicciones/objects/physics/PhysicsBodyCube.cpp -std=c++11

MatrizR.o: AventuraEnContraDeLasAdicciones/AventuraEnContraDeLasAdicciones/objects/physics/MatrizR.cpp
	g++ -c AventuraEnContraDeLasAdicciones/AventuraEnContraDeLasAdicciones/objects/physics/MatrizR.cpp -std=c++11

Vector3d.o: AventuraEnContraDeLasAdicciones/AventuraEnContraDeLasAdicciones/objects/physics/Vector3d.cpp
	g++ -c AventuraEnContraDeLasAdicciones/AventuraEnContraDeLasAdicciones/objects/physics/Vector3d.cpp -std=c++11

Camera.o: AventuraEnContraDeLasAdicciones/AventuraEnContraDeLasAdicciones/Camera.cpp
	g++ -c AventuraEnContraDeLasAdicciones/AventuraEnContraDeLasAdicciones/Camera.cpp -std=c++11

MainMenu.o: AventuraEnContraDeLasAdicciones/AventuraEnContraDeLasAdicciones/levels/MainMenu.cpp
	g++ -c AventuraEnContraDeLasAdicciones/AventuraEnContraDeLasAdicciones/levels/MainMenu.cpp -std=c++11

Game.o: AventuraEnContraDeLasAdicciones/AventuraEnContraDeLasAdicciones/levels/Game.cpp
	g++ -c AventuraEnContraDeLasAdicciones/AventuraEnContraDeLasAdicciones/levels/Game.cpp -std=c++11

Credits.o: AventuraEnContraDeLasAdicciones/AventuraEnContraDeLasAdicciones/levels/Credits.cpp
	g++ -c AventuraEnContraDeLasAdicciones/AventuraEnContraDeLasAdicciones/levels/Credits.cpp -std=c++11

clean:
	rm *o aventura