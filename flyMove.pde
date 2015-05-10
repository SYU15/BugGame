int flyX = 100;
int flyY = 60;
int flyMoveX = 3;
//half of width
final int flyRadiusX = 35;

void flyMove() {
flyX += flyMoveX;
if(flyX > width - flyRadiusX) {
flyMoveX = -flyMoveX;
}
if(flyX < flyRadiusX) {
flyMoveX = -flyMoveX;
}
}
