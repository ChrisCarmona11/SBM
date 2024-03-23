/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/Docencia/Downloads/diseno_sincrono/diseno_sincrono/para proyecto/RAM/PreScaler.vhd";



static void work_a_3678061848_3212880686_p_0(char *t0)
{
    unsigned char t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    int t8;
    char *t9;
    int t10;
    unsigned char t11;
    char *t12;
    int t13;
    int t14;
    char *t15;

LAB0:    xsi_set_current_line(47, ng0);
    t2 = (t0 + 992U);
    t3 = xsi_signal_has_event(t2);
    if (t3 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 2912);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(48, ng0);
    t8 = (128 - 1);
    t4 = (t0 + 1608U);
    t9 = *((char **)t4);
    t10 = *((int *)t9);
    t11 = (t8 > t10);
    if (t11 != 0)
        goto LAB8;

LAB10:    xsi_set_current_line(52, ng0);
    t2 = (t0 + 2992);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t9 = (t5 + 56U);
    t12 = *((char **)t9);
    *((unsigned char *)t12) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(53, ng0);
    t2 = (t0 + 1608U);
    t4 = *((char **)t2);
    t2 = (t4 + 0);
    *((int *)t2) = 0;

LAB9:    goto LAB3;

LAB5:    t4 = (t0 + 1032U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    t1 = t7;
    goto LAB7;

LAB8:    xsi_set_current_line(49, ng0);
    t4 = (t0 + 1608U);
    t12 = *((char **)t4);
    t13 = *((int *)t12);
    t14 = (t13 + 1);
    t4 = (t0 + 1608U);
    t15 = *((char **)t4);
    t4 = (t15 + 0);
    *((int *)t4) = t14;
    xsi_set_current_line(50, ng0);
    t2 = (t0 + 2992);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t9 = (t5 + 56U);
    t12 = *((char **)t9);
    *((unsigned char *)t12) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t2);
    goto LAB9;

}


extern void work_a_3678061848_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3678061848_3212880686_p_0};
	xsi_register_didat("work_a_3678061848_3212880686", "isim/PWM_top_tb_isim_beh.exe.sim/work/a_3678061848_3212880686.didat");
	xsi_register_executes(pe);
}
