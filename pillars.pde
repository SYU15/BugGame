int[] pillars = {120, 400, 600};
int treeX = pillars[0];
int treeY = 360;
int tree2X = pillars[1];
int tree2Y = 360;
int birdX = pillars[2];
int birdY = 360;

void drawPillars() {
image(tree, treeX, treeY);
image(tree2, tree2X, tree2Y);
image(bird, birdX, birdY);
}
