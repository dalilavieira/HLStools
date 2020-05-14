#include "HLS/hls.h"
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef int scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  union U2 {int dummy; } U2 ;
typedef  union U1 {int dummy; } U1 ;
typedef  int /*<<< orphan*/  int32_t ;
typedef  int /*<<< orphan*/  int16_t ;
struct TYPE_8__ {int /*<<< orphan*/ * member_9; int /*<<< orphan*/ * member_8; int /*<<< orphan*/ * member_7; int /*<<< orphan*/ * member_6; int /*<<< orphan*/ * member_5; int /*<<< orphan*/ * member_4; int /*<<< orphan*/ * member_3; int /*<<< orphan*/ * member_2; int /*<<< orphan*/ * member_1; int /*<<< orphan*/ * member_0; } ;
struct TYPE_7__ {int /*<<< orphan*/ * member_9; int /*<<< orphan*/ * member_8; int /*<<< orphan*/ * member_7; int /*<<< orphan*/ * member_6; int /*<<< orphan*/ * member_5; int /*<<< orphan*/ * member_4; int /*<<< orphan*/ * member_3; int /*<<< orphan*/ * member_2; int /*<<< orphan*/ * member_1; int /*<<< orphan*/ * member_0; } ;
struct TYPE_6__ {int /*<<< orphan*/ * member_9; int /*<<< orphan*/ * member_8; int /*<<< orphan*/ * member_7; int /*<<< orphan*/ * member_6; int /*<<< orphan*/ * member_5; int /*<<< orphan*/ * member_4; int /*<<< orphan*/ * member_3; int /*<<< orphan*/ * member_2; int /*<<< orphan*/ * member_1; int /*<<< orphan*/ * member_0; } ;
struct TYPE_5__ {TYPE_3__ member_2; TYPE_2__ member_1; TYPE_4__ member_0; } ;

/* Variables and functions */
 int /*<<< orphan*/ ** g_111 ; 
 int /*<<< orphan*/  g_1232 ; 
 union U2 g_223 ; 
 int /*<<< orphan*/  g_89 ; 
 int /*<<< orphan*/  g_92 ; 

__attribute__((used)) static union U2 * const  func_3(union U1  p_4, int16_t  p_5)
{ /* block id: 878 */
    int32_t *l_1968[4][3][10] = {{{&g_89,&g_111[3][5],&g_111[7][8],&g_111[3][5],&g_89,&g_92,(void*)0,(void*)0,&g_111[1][5],&g_111[1][3]},{&g_111[3][5],&g_89,&g_92,(void*)0,&g_111[1][3],&g_89,&g_111[0][6],(void*)0,&g_92,&g_111[1][3]},{&g_111[1][3],(void*)0,&g_111[7][7],&g_92,&g_89,&g_111[7][8],&g_89,&g_89,&g_111[7][8],&g_89}},{{(void*)0,(void*)0,(void*)0,(void*)0,&g_92,&g_111[0][6],&g_1232,&g_89,(void*)0,&g_111[3][5]},{&g_111[1][3],&g_111[1][3],&g_111[3][5],&g_1232,&g_89,(void*)0,(void*)0,&g_1232,(void*)0,&g_111[1][3]},{(void*)0,&g_92,&g_111[1][3],(void*)0,&g_111[7][8],&g_92,(void*)0,&g_92,&g_111[7][8],(void*)0}},{{&g_111[1][5],&g_89,&g_111[1][5],&g_92,&g_111[0][6],(void*)0,&g_111[1][3],&g_1232,&g_92,&g_111[1][3]},{&g_1232,&g_89,&g_111[0][6],(void*)0,(void*)0,&g_111[1][3],&g_92,&g_1232,&g_111[1][5],(void*)0},{(void*)0,&g_111[0][6],&g_111[1][5],&g_111[3][5],&g_92,&g_1232,&g_1232,&g_92,&g_111[3][5],&g_111[1][5]}},{{&g_92,&g_92,&g_111[1][3],(void*)0,(void*)0,&g_111[3][5],&g_111[1][3],&g_1232,&g_89,&g_1232},{&g_89,&g_111[7][7],&g_111[3][5],&g_111[0][6],&g_111[1][3],&g_111[1][3],&g_111[1][3],&g_89,(void*)0,(void*)0},{&g_111[6][8],&g_92,(void*)0,&g_89,&g_1232,&g_1232,&g_1232,&g_89,(void*)0,&g_92}}};
    int32_t **l_1969 = &l_1968[1][0][7];
    union U2 * const l_1970 = &g_223;
    int i, j, k;
    (*l_1969) = l_1968[3][2][3];
    return l_1970;
}/* Main routine for func_3 */
int main() {
  union U1 p_4;
  int16_t p_5;
  func_3(p_4, p_5);
  return 0;
}
