#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <stdint.h>

void mandelbrot(int xmax, int xmin, int ymax, int ymin, int maxiter, int xres, int yres, int dx, int dy){
  double x, y; /* Coordinates of the current point in the complex plane. */
  //double u, v; /* Coordinates of the iterated point. */
  int i,j; /* Pixel counters */
  int k; /* Iteration counter */

  for (j = 0; j < yres; j++) {
    y = ymax - j * dy;
    for(i = 0; i < xres; i++) {
      double u = 0.0;
      double v= 0.0;
      double u2 = u * u;
      double v2 = v*v;
      x = xmin + i * dx;
      /* iterate the point */
      for (k = 1; k < maxiter && (u2 + v2 < 4.0); k++) {
            v = 2 * u * v + y;
            u = u2 - v2 + x;
            u2 = u * u;
            v2 = v * v;
      };
      /* compute  pixel color and write it to file */
      if (k >= maxiter) {
        /* interior */
        const unsigned char black[] = {0, 0, 0, 0, 0, 0};
      }
      else {
        /* exterior */
        unsigned char color[6];
        color[0] = k >> 8;
        color[1] = k & 255;
        color[2] = k >> 8;
        color[3] = k & 255;
        color[4] = k >> 8;
        color[5] = k & 255;
      };
    }
  }
}

int main()
{

  /* The window in the plane. */
  const double xmin = 500;
  const double xmax = 10000;
  const double ymin = 200;
  const double ymax = 700;

  /* Maximum number of iterations, at most 65535. */
  const uint16_t maxiter = 400;

  /* Image size, width is given, height is computed. */
  const int xres = 350;
  const int yres = 656;

  double dx=(xmax-xmin)/xres;
  double dy=(ymax-ymin)/yres;

  mandelbrot(xmax, xmin, ymax, ymin, maxiter, xres, yres, dx, dy);

  return 0;
}
