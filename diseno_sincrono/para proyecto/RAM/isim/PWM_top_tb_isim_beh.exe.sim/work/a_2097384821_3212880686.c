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
static const char *ng0 = "C:/Users/Docencia/Downloads/diseno_sincrono/diseno_sincrono/para proyecto/RAM/PWM_Unit.vhd";
extern char *IEEE_P_3620187407;

unsigned char ieee_p_3620187407_sub_2546418145_3965413181(char *, char *, char *, int );
char *ieee_p_3620187407_sub_436279890_3965413181(char *, char *, char *, char *, int );


static void work_a_2097384821_3212880686_p_0(char *t0)
{
    char t15[16];
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
    unsigned char t14;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    unsigned int t20;
    unsigned int t21;
    unsigned char t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;

LAB0:    xsi_set_current_line(49, ng0);
    t2 = (t0 + 1312U);
    t3 = xsi_signal_has_event(t2);
    if (t3 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 3400);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(50, ng0);
    t4 = (t0 + 1192U);
    t8 = *((char **)t4);
    t9 = *((unsigned char *)t8);
    t10 = (t9 == (unsigned char)3);
    if (t10 != 0)
        goto LAB8;

LAB10:
LAB9:    goto LAB3;

LAB5:    t4 = (t0 + 1352U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    t1 = t7;
    goto LAB7;

LAB8:    xsi_set_current_line(51, ng0);
    t4 = (t0 + 1032U);
    t11 = *((char **)t4);
    t4 = (t0 + 5728U);
    t12 = (t0 + 1672U);
    t13 = *((char **)t12);
    t12 = (t0 + 5744U);
    t14 = ieee_std_logic_unsigned_greater_stdv_stdv(IEEE_P_3620187407, t11, t4, t13, t12);
    if (t14 != 0)
        goto LAB11;

LAB13:    t2 = (t0 + 1672U);
    t4 = *((char **)t2);
    t2 = (t0 + 5744U);
    t1 = ieee_p_3620187407_sub_2546418145_3965413181(IEEE_P_3620187407, t4, t2, 255);
    if (t1 != 0)
        goto LAB16;

LAB17:    xsi_set_current_line(56, ng0);
    t2 = (t0 + 1672U);
    t4 = *((char **)t2);
    t2 = (t0 + 5744U);
    t5 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t15, t4, t2, 1);
    t8 = (t15 + 12U);
    t20 = *((unsigned int *)t8);
    t21 = (1U * t20);
    t1 = (8U != t21);
    if (t1 == 1)
        goto LAB18;

LAB19:    t11 = (t0 + 3496);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t16 = (t13 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t5, 8U);
    xsi_driver_first_trans_fast(t11);

LAB12:    goto LAB9;

LAB11:    xsi_set_current_line(52, ng0);
    t16 = (t0 + 1672U);
    t17 = *((char **)t16);
    t16 = (t0 + 5744U);
    t18 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t15, t17, t16, 1);
    t19 = (t15 + 12U);
    t20 = *((unsigned int *)t19);
    t21 = (1U * t20);
    t22 = (8U != t21);
    if (t22 == 1)
        goto LAB14;

LAB15:    t23 = (t0 + 3496);
    t24 = (t23 + 56U);
    t25 = *((char **)t24);
    t26 = (t25 + 56U);
    t27 = *((char **)t26);
    memcpy(t27, t18, 8U);
    xsi_driver_first_trans_fast(t23);
    goto LAB12;

LAB14:    xsi_size_not_matching(8U, t21, 0);
    goto LAB15;

LAB16:    xsi_set_current_line(54, ng0);
    t5 = xsi_get_transient_memory(8U);
    memset(t5, 0, 8U);
    t8 = t5;
    memset(t8, (unsigned char)2, 8U);
    t11 = (t0 + 3496);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t16 = (t13 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t5, 8U);
    xsi_driver_first_trans_fast(t11);
    goto LAB12;

LAB18:    xsi_size_not_matching(8U, t21, 0);
    goto LAB19;

}

static void work_a_2097384821_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    unsigned char t5;
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
    char *t16;

LAB0:    xsi_set_current_line(62, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 5728U);
    t3 = (t0 + 1672U);
    t4 = *((char **)t3);
    t3 = (t0 + 5744U);
    t5 = ieee_std_logic_unsigned_greater_stdv_stdv(IEEE_P_3620187407, t2, t1, t4, t3);
    if (t5 != 0)
        goto LAB3;

LAB4:
LAB5:    t11 = (t0 + 3560);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    *((unsigned char *)t15) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t11);

LAB2:    t16 = (t0 + 3416);
    *((int *)t16) = 1;

LAB1:    return;
LAB3:    t6 = (t0 + 3560);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t6);
    goto LAB2;

LAB6:    goto LAB2;

}


extern void work_a_2097384821_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2097384821_3212880686_p_0,(void *)work_a_2097384821_3212880686_p_1};
	xsi_register_didat("work_a_2097384821_3212880686", "isim/PWM_top_tb_isim_beh.exe.sim/work/a_2097384821_3212880686.didat");
	xsi_register_executes(pe);
}
