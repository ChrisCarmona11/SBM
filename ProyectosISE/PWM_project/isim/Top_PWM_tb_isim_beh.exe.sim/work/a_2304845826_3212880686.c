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

/* This file is designed for use with ISim build 0xfbc00daa */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "/home/ise/ISE_projects/ISE_Projects/PWM_project/Pre_Scaler_Unit.vhd";
extern char *IEEE_P_3620187407;

char *ieee_p_3620187407_sub_16272557775307340295_3965413181(char *, char *, char *, char *, unsigned char );
unsigned char ieee_p_3620187407_sub_4039350453545990278_3965413181(char *, int , char *, char *);
unsigned char ieee_p_3620187407_sub_970019341842465249_3965413181(char *, char *, char *, int );


static void work_a_2304845826_3212880686_p_0(char *t0)
{
    char t11[16];
    unsigned char t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    int t8;
    char *t9;
    unsigned char t10;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    unsigned char t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;

LAB0:    xsi_set_current_line(54, ng0);
    t2 = (t0 + 992U);
    t3 = xsi_signal_has_event(t2);
    if (t3 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 3192);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(55, ng0);
    t8 = (128 - 1);
    t4 = (t0 + 1352U);
    t9 = *((char **)t4);
    t4 = (t0 + 5216U);
    t10 = ieee_p_3620187407_sub_4039350453545990278_3965413181(IEEE_P_3620187407, t8, t9, t4);
    if (t10 != 0)
        goto LAB8;

LAB10:    xsi_set_current_line(61, ng0);
    t2 = xsi_get_transient_memory(18U);
    memset(t2, 0, 18U);
    t4 = t2;
    memset(t4, (unsigned char)2, 18U);
    t5 = (t0 + 3288);
    t9 = (t5 + 56U);
    t12 = *((char **)t9);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t2, 18U);
    xsi_driver_first_trans_fast(t5);

LAB9:    goto LAB3;

LAB5:    t4 = (t0 + 1032U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    t1 = t7;
    goto LAB7;

LAB8:    xsi_set_current_line(57, ng0);
    t12 = (t0 + 1352U);
    t13 = *((char **)t12);
    t12 = (t0 + 5216U);
    t14 = ieee_p_3620187407_sub_16272557775307340295_3965413181(IEEE_P_3620187407, t11, t13, t12, (unsigned char)3);
    t15 = (t11 + 12U);
    t16 = *((unsigned int *)t15);
    t17 = (1U * t16);
    t18 = (18U != t17);
    if (t18 == 1)
        goto LAB11;

LAB12:    t19 = (t0 + 3288);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    memcpy(t23, t14, 18U);
    xsi_driver_first_trans_fast(t19);
    goto LAB9;

LAB11:    xsi_size_not_matching(18U, t17, 0);
    goto LAB12;

}

static void work_a_2304845826_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;

LAB0:    xsi_set_current_line(69, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t1 = (t0 + 5216U);
    t3 = (128 - 1);
    t4 = ieee_p_3620187407_sub_970019341842465249_3965413181(IEEE_P_3620187407, t2, t1, t3);
    if (t4 != 0)
        goto LAB3;

LAB4:
LAB5:    t10 = (t0 + 3352);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    *((unsigned char *)t14) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t10);

LAB2:    t15 = (t0 + 3208);
    *((int *)t15) = 1;

LAB1:    return;
LAB3:    t5 = (t0 + 3352);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t5);
    goto LAB2;

LAB6:    goto LAB2;

}


extern void work_a_2304845826_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2304845826_3212880686_p_0,(void *)work_a_2304845826_3212880686_p_1};
	xsi_register_didat("work_a_2304845826_3212880686", "isim/Top_PWM_tb_isim_beh.exe.sim/work/a_2304845826_3212880686.didat");
	xsi_register_executes(pe);
}
