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
static const char *ng0 = "/home/ise/ISE_projects/ISE_Projects/PWM_project/Top2_PWM.vhd";



static void work_a_3256933252_3212880686_p_0(char *t0)
{
    unsigned char t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    unsigned char t9;
    unsigned char t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;

LAB0:    xsi_set_current_line(103, ng0);
    t2 = (t0 + 3584U);
    t3 = xsi_signal_has_event(t2);
    if (t3 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 8840);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(104, ng0);
    t4 = (t0 + 4264U);
    t8 = *((char **)t4);
    t9 = *((unsigned char *)t8);
    t10 = (t9 == (unsigned char)3);
    if (t10 != 0)
        goto LAB8;

LAB10:
LAB9:    goto LAB3;

LAB5:    t4 = (t0 + 3624U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    t1 = t7;
    goto LAB7;

LAB8:    xsi_set_current_line(106, ng0);
    t4 = (t0 + 3144U);
    t11 = *((char **)t4);
    t4 = (t0 + 9048);
    t12 = (t4 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t11, 8U);
    xsi_driver_first_trans_fast(t4);
    goto LAB9;

}

static void work_a_3256933252_3212880686_p_1(char *t0)
{
    unsigned char t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    unsigned char t8;
    char *t9;
    unsigned char t10;
    unsigned char t11;
    char *t12;
    char *t13;
    int t14;
    int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned char t19;
    unsigned char t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;

LAB0:    xsi_set_current_line(119, ng0);
    t2 = (t0 + 3584U);
    t3 = xsi_signal_has_event(t2);
    if (t3 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 8856);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(120, ng0);
    t4 = (t0 + 4424U);
    t9 = *((char **)t4);
    t10 = *((unsigned char *)t9);
    t11 = (t10 == (unsigned char)3);
    if (t11 == 1)
        goto LAB11;

LAB12:    t8 = (unsigned char)0;

LAB13:    if (t8 != 0)
        goto LAB8;

LAB10:
LAB9:    goto LAB3;

LAB5:    t4 = (t0 + 3624U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    t1 = t7;
    goto LAB7;

LAB8:    xsi_set_current_line(122, ng0);
    t21 = (t0 + 3144U);
    t22 = *((char **)t21);
    t21 = (t0 + 9112);
    t23 = (t21 + 56U);
    t24 = *((char **)t23);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    memcpy(t26, t22, 8U);
    xsi_driver_first_trans_delta(t21, 0U, 8U, 0LL);
    goto LAB9;

LAB11:    t4 = (t0 + 3944U);
    t12 = *((char **)t4);
    t4 = (t0 + 4720U);
    t13 = *((char **)t4);
    t14 = *((int *)t13);
    t15 = (t14 - 7);
    t16 = (t15 * -1);
    t17 = (1U * t16);
    t18 = (0 + t17);
    t4 = (t12 + t18);
    t19 = *((unsigned char *)t4);
    t20 = (t19 == (unsigned char)3);
    t8 = t20;
    goto LAB13;

}

static void work_a_3256933252_3212880686_p_2(char *t0)
{
    unsigned char t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    unsigned char t8;
    char *t9;
    unsigned char t10;
    unsigned char t11;
    char *t12;
    char *t13;
    int t14;
    int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned char t19;
    unsigned char t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;

LAB0:    xsi_set_current_line(119, ng0);
    t2 = (t0 + 3584U);
    t3 = xsi_signal_has_event(t2);
    if (t3 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 8872);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(120, ng0);
    t4 = (t0 + 4424U);
    t9 = *((char **)t4);
    t10 = *((unsigned char *)t9);
    t11 = (t10 == (unsigned char)3);
    if (t11 == 1)
        goto LAB11;

LAB12:    t8 = (unsigned char)0;

LAB13:    if (t8 != 0)
        goto LAB8;

LAB10:
LAB9:    goto LAB3;

LAB5:    t4 = (t0 + 3624U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    t1 = t7;
    goto LAB7;

LAB8:    xsi_set_current_line(122, ng0);
    t21 = (t0 + 3144U);
    t22 = *((char **)t21);
    t21 = (t0 + 9176);
    t23 = (t21 + 56U);
    t24 = *((char **)t23);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    memcpy(t26, t22, 8U);
    xsi_driver_first_trans_delta(t21, 8U, 8U, 0LL);
    goto LAB9;

LAB11:    t4 = (t0 + 3944U);
    t12 = *((char **)t4);
    t4 = (t0 + 4840U);
    t13 = *((char **)t4);
    t14 = *((int *)t13);
    t15 = (t14 - 7);
    t16 = (t15 * -1);
    t17 = (1U * t16);
    t18 = (0 + t17);
    t4 = (t12 + t18);
    t19 = *((unsigned char *)t4);
    t20 = (t19 == (unsigned char)3);
    t8 = t20;
    goto LAB13;

}

static void work_a_3256933252_3212880686_p_3(char *t0)
{
    unsigned char t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    unsigned char t8;
    char *t9;
    unsigned char t10;
    unsigned char t11;
    char *t12;
    char *t13;
    int t14;
    int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned char t19;
    unsigned char t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;

LAB0:    xsi_set_current_line(119, ng0);
    t2 = (t0 + 3584U);
    t3 = xsi_signal_has_event(t2);
    if (t3 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 8888);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(120, ng0);
    t4 = (t0 + 4424U);
    t9 = *((char **)t4);
    t10 = *((unsigned char *)t9);
    t11 = (t10 == (unsigned char)3);
    if (t11 == 1)
        goto LAB11;

LAB12:    t8 = (unsigned char)0;

LAB13:    if (t8 != 0)
        goto LAB8;

LAB10:
LAB9:    goto LAB3;

LAB5:    t4 = (t0 + 3624U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    t1 = t7;
    goto LAB7;

LAB8:    xsi_set_current_line(122, ng0);
    t21 = (t0 + 3144U);
    t22 = *((char **)t21);
    t21 = (t0 + 9240);
    t23 = (t21 + 56U);
    t24 = *((char **)t23);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    memcpy(t26, t22, 8U);
    xsi_driver_first_trans_delta(t21, 16U, 8U, 0LL);
    goto LAB9;

LAB11:    t4 = (t0 + 3944U);
    t12 = *((char **)t4);
    t4 = (t0 + 4960U);
    t13 = *((char **)t4);
    t14 = *((int *)t13);
    t15 = (t14 - 7);
    t16 = (t15 * -1);
    t17 = (1U * t16);
    t18 = (0 + t17);
    t4 = (t12 + t18);
    t19 = *((unsigned char *)t4);
    t20 = (t19 == (unsigned char)3);
    t8 = t20;
    goto LAB13;

}

static void work_a_3256933252_3212880686_p_4(char *t0)
{
    unsigned char t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    unsigned char t8;
    char *t9;
    unsigned char t10;
    unsigned char t11;
    char *t12;
    char *t13;
    int t14;
    int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned char t19;
    unsigned char t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;

LAB0:    xsi_set_current_line(119, ng0);
    t2 = (t0 + 3584U);
    t3 = xsi_signal_has_event(t2);
    if (t3 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 8904);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(120, ng0);
    t4 = (t0 + 4424U);
    t9 = *((char **)t4);
    t10 = *((unsigned char *)t9);
    t11 = (t10 == (unsigned char)3);
    if (t11 == 1)
        goto LAB11;

LAB12:    t8 = (unsigned char)0;

LAB13:    if (t8 != 0)
        goto LAB8;

LAB10:
LAB9:    goto LAB3;

LAB5:    t4 = (t0 + 3624U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    t1 = t7;
    goto LAB7;

LAB8:    xsi_set_current_line(122, ng0);
    t21 = (t0 + 3144U);
    t22 = *((char **)t21);
    t21 = (t0 + 9304);
    t23 = (t21 + 56U);
    t24 = *((char **)t23);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    memcpy(t26, t22, 8U);
    xsi_driver_first_trans_delta(t21, 24U, 8U, 0LL);
    goto LAB9;

LAB11:    t4 = (t0 + 3944U);
    t12 = *((char **)t4);
    t4 = (t0 + 5080U);
    t13 = *((char **)t4);
    t14 = *((int *)t13);
    t15 = (t14 - 7);
    t16 = (t15 * -1);
    t17 = (1U * t16);
    t18 = (0 + t17);
    t4 = (t12 + t18);
    t19 = *((unsigned char *)t4);
    t20 = (t19 == (unsigned char)3);
    t8 = t20;
    goto LAB13;

}

static void work_a_3256933252_3212880686_p_5(char *t0)
{
    unsigned char t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    unsigned char t8;
    char *t9;
    unsigned char t10;
    unsigned char t11;
    char *t12;
    char *t13;
    int t14;
    int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned char t19;
    unsigned char t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;

LAB0:    xsi_set_current_line(119, ng0);
    t2 = (t0 + 3584U);
    t3 = xsi_signal_has_event(t2);
    if (t3 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 8920);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(120, ng0);
    t4 = (t0 + 4424U);
    t9 = *((char **)t4);
    t10 = *((unsigned char *)t9);
    t11 = (t10 == (unsigned char)3);
    if (t11 == 1)
        goto LAB11;

LAB12:    t8 = (unsigned char)0;

LAB13:    if (t8 != 0)
        goto LAB8;

LAB10:
LAB9:    goto LAB3;

LAB5:    t4 = (t0 + 3624U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    t1 = t7;
    goto LAB7;

LAB8:    xsi_set_current_line(122, ng0);
    t21 = (t0 + 3144U);
    t22 = *((char **)t21);
    t21 = (t0 + 9368);
    t23 = (t21 + 56U);
    t24 = *((char **)t23);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    memcpy(t26, t22, 8U);
    xsi_driver_first_trans_delta(t21, 32U, 8U, 0LL);
    goto LAB9;

LAB11:    t4 = (t0 + 3944U);
    t12 = *((char **)t4);
    t4 = (t0 + 5200U);
    t13 = *((char **)t4);
    t14 = *((int *)t13);
    t15 = (t14 - 7);
    t16 = (t15 * -1);
    t17 = (1U * t16);
    t18 = (0 + t17);
    t4 = (t12 + t18);
    t19 = *((unsigned char *)t4);
    t20 = (t19 == (unsigned char)3);
    t8 = t20;
    goto LAB13;

}

static void work_a_3256933252_3212880686_p_6(char *t0)
{
    unsigned char t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    unsigned char t8;
    char *t9;
    unsigned char t10;
    unsigned char t11;
    char *t12;
    char *t13;
    int t14;
    int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned char t19;
    unsigned char t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;

LAB0:    xsi_set_current_line(119, ng0);
    t2 = (t0 + 3584U);
    t3 = xsi_signal_has_event(t2);
    if (t3 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 8936);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(120, ng0);
    t4 = (t0 + 4424U);
    t9 = *((char **)t4);
    t10 = *((unsigned char *)t9);
    t11 = (t10 == (unsigned char)3);
    if (t11 == 1)
        goto LAB11;

LAB12:    t8 = (unsigned char)0;

LAB13:    if (t8 != 0)
        goto LAB8;

LAB10:
LAB9:    goto LAB3;

LAB5:    t4 = (t0 + 3624U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    t1 = t7;
    goto LAB7;

LAB8:    xsi_set_current_line(122, ng0);
    t21 = (t0 + 3144U);
    t22 = *((char **)t21);
    t21 = (t0 + 9432);
    t23 = (t21 + 56U);
    t24 = *((char **)t23);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    memcpy(t26, t22, 8U);
    xsi_driver_first_trans_delta(t21, 40U, 8U, 0LL);
    goto LAB9;

LAB11:    t4 = (t0 + 3944U);
    t12 = *((char **)t4);
    t4 = (t0 + 5320U);
    t13 = *((char **)t4);
    t14 = *((int *)t13);
    t15 = (t14 - 7);
    t16 = (t15 * -1);
    t17 = (1U * t16);
    t18 = (0 + t17);
    t4 = (t12 + t18);
    t19 = *((unsigned char *)t4);
    t20 = (t19 == (unsigned char)3);
    t8 = t20;
    goto LAB13;

}

static void work_a_3256933252_3212880686_p_7(char *t0)
{
    unsigned char t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    unsigned char t8;
    char *t9;
    unsigned char t10;
    unsigned char t11;
    char *t12;
    char *t13;
    int t14;
    int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned char t19;
    unsigned char t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;

LAB0:    xsi_set_current_line(119, ng0);
    t2 = (t0 + 3584U);
    t3 = xsi_signal_has_event(t2);
    if (t3 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 8952);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(120, ng0);
    t4 = (t0 + 4424U);
    t9 = *((char **)t4);
    t10 = *((unsigned char *)t9);
    t11 = (t10 == (unsigned char)3);
    if (t11 == 1)
        goto LAB11;

LAB12:    t8 = (unsigned char)0;

LAB13:    if (t8 != 0)
        goto LAB8;

LAB10:
LAB9:    goto LAB3;

LAB5:    t4 = (t0 + 3624U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    t1 = t7;
    goto LAB7;

LAB8:    xsi_set_current_line(122, ng0);
    t21 = (t0 + 3144U);
    t22 = *((char **)t21);
    t21 = (t0 + 9496);
    t23 = (t21 + 56U);
    t24 = *((char **)t23);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    memcpy(t26, t22, 8U);
    xsi_driver_first_trans_delta(t21, 48U, 8U, 0LL);
    goto LAB9;

LAB11:    t4 = (t0 + 3944U);
    t12 = *((char **)t4);
    t4 = (t0 + 5440U);
    t13 = *((char **)t4);
    t14 = *((int *)t13);
    t15 = (t14 - 7);
    t16 = (t15 * -1);
    t17 = (1U * t16);
    t18 = (0 + t17);
    t4 = (t12 + t18);
    t19 = *((unsigned char *)t4);
    t20 = (t19 == (unsigned char)3);
    t8 = t20;
    goto LAB13;

}

static void work_a_3256933252_3212880686_p_8(char *t0)
{
    unsigned char t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    unsigned char t8;
    char *t9;
    unsigned char t10;
    unsigned char t11;
    char *t12;
    char *t13;
    int t14;
    int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned char t19;
    unsigned char t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;

LAB0:    xsi_set_current_line(119, ng0);
    t2 = (t0 + 3584U);
    t3 = xsi_signal_has_event(t2);
    if (t3 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 8968);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(120, ng0);
    t4 = (t0 + 4424U);
    t9 = *((char **)t4);
    t10 = *((unsigned char *)t9);
    t11 = (t10 == (unsigned char)3);
    if (t11 == 1)
        goto LAB11;

LAB12:    t8 = (unsigned char)0;

LAB13:    if (t8 != 0)
        goto LAB8;

LAB10:
LAB9:    goto LAB3;

LAB5:    t4 = (t0 + 3624U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    t1 = t7;
    goto LAB7;

LAB8:    xsi_set_current_line(122, ng0);
    t21 = (t0 + 3144U);
    t22 = *((char **)t21);
    t21 = (t0 + 9560);
    t23 = (t21 + 56U);
    t24 = *((char **)t23);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    memcpy(t26, t22, 8U);
    xsi_driver_first_trans_delta(t21, 56U, 8U, 0LL);
    goto LAB9;

LAB11:    t4 = (t0 + 3944U);
    t12 = *((char **)t4);
    t4 = (t0 + 5560U);
    t13 = *((char **)t4);
    t14 = *((int *)t13);
    t15 = (t14 - 7);
    t16 = (t15 * -1);
    t17 = (1U * t16);
    t18 = (0 + t17);
    t4 = (t12 + t18);
    t19 = *((unsigned char *)t4);
    t20 = (t19 == (unsigned char)3);
    t8 = t20;
    goto LAB13;

}


extern void work_a_3256933252_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3256933252_3212880686_p_0,(void *)work_a_3256933252_3212880686_p_1,(void *)work_a_3256933252_3212880686_p_2,(void *)work_a_3256933252_3212880686_p_3,(void *)work_a_3256933252_3212880686_p_4,(void *)work_a_3256933252_3212880686_p_5,(void *)work_a_3256933252_3212880686_p_6,(void *)work_a_3256933252_3212880686_p_7,(void *)work_a_3256933252_3212880686_p_8};
	xsi_register_didat("work_a_3256933252_3212880686", "isim/Top2_PWM_isim_beh.exe.sim/work/a_3256933252_3212880686.didat");
	xsi_register_executes(pe);
}
