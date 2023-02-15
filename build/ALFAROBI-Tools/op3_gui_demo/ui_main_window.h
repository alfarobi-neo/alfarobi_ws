/********************************************************************************
** Form generated from reading UI file 'main_window.ui'
**
** Created by: Qt User Interface Compiler version 4.8.7
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_MAIN_WINDOW_H
#define UI_MAIN_WINDOW_H

#include <QtCore/QLocale>
#include <QtCore/QVariant>
#include <QtGui/QAction>
#include <QtGui/QApplication>
#include <QtGui/QButtonGroup>
#include <QtGui/QCheckBox>
#include <QtGui/QComboBox>
#include <QtGui/QDoubleSpinBox>
#include <QtGui/QFormLayout>
#include <QtGui/QFrame>
#include <QtGui/QGridLayout>
#include <QtGui/QGroupBox>
#include <QtGui/QHBoxLayout>
#include <QtGui/QHeaderView>
#include <QtGui/QLabel>
#include <QtGui/QListView>
#include <QtGui/QMainWindow>
#include <QtGui/QMenu>
#include <QtGui/QMenuBar>
#include <QtGui/QPushButton>
#include <QtGui/QSlider>
#include <QtGui/QSpacerItem>
#include <QtGui/QSpinBox>
#include <QtGui/QStatusBar>
#include <QtGui/QTabWidget>
#include <QtGui/QVBoxLayout>
#include <QtGui/QWidget>

QT_BEGIN_NAMESPACE

class Ui_MainWindowDesign
{
public:
    QAction *action_Quit;
    QAction *action_Preferences;
    QAction *actionAbout;
    QAction *actionAbout_Qt;
    QWidget *centralwidget;
    QWidget *widget_control;
    QVBoxLayout *verticalLayout_3;
    QGroupBox *groupBox_log;
    QGridLayout *gridLayout_3;
    QListView *view_logging;
    QPushButton *button_clear_log;
    QSpacerItem *horizontalSpacer;
    QGroupBox *groupBox_lidar;
    QGridLayout *gridLayout_5;
    QWidget *widget_ft_base_module;
    QGridLayout *gridLayout_7;
    QPushButton *button_init_pose;
    QTabWidget *tabWidget_control;
    QWidget *tab_mode;
    QVBoxLayout *verticalLayout;
    QWidget *widget_mode_preset;
    QWidget *widget_mode;
    QSpacerItem *verticalSpacer_2;
    QWidget *tab_walking_module;
    QVBoxLayout *verticalLayout_5;
    QGroupBox *groupBox_init_pose;
    QHBoxLayout *horizontalLayout_3;
    QFrame *frame_2;
    QGridLayout *gridLayout_4;
    QDoubleSpinBox *dSpinBox_init_offset_x;
    QLabel *label_12;
    QDoubleSpinBox *dSpinBox_init_offset_z;
    QLabel *label_11;
    QLabel *label_13;
    QDoubleSpinBox *dSpinBox_init_offset_y;
    QFrame *frame;
    QGridLayout *gridLayout_8;
    QDoubleSpinBox *dSpinBox_init_offset_pitch;
    QDoubleSpinBox *dSpinBox_hip_pitch_offset;
    QLabel *label_10;
    QLabel *label_14;
    QDoubleSpinBox *dSpinBox_init_offset_yaw;
    QLabel *label_33;
    QLabel *label_15;
    QDoubleSpinBox *dSpinBox_init_offset_roll;
    QFrame *frame_3;
    QGridLayout *gridLayout_9;
    QLabel *label_16;
    QLabel *label_18;
    QLabel *label_19;
    QLabel *label_23;
    QCheckBox *checkBox_move_aim_on;
    QCheckBox *checkBox_move_aim_off;
    QDoubleSpinBox *dSpinBox_step_fb_ratio;
    QDoubleSpinBox *dSpinBox_dsp_ratio;
    QDoubleSpinBox *dSpinBox_period_time;
    QGroupBox *groupBox_balance_control;
    QGridLayout *gridLayout_12;
    QFrame *frame_5;
    QGridLayout *gridLayout_11;
    QLabel *label_24;
    QCheckBox *checkBox_balance_on;
    QLabel *label_26;
    QCheckBox *checkBox_balance_off;
    QLabel *label_25;
    QLabel *label_27;
    QLabel *label_28;
    QDoubleSpinBox *dSpinBox_hip_roll_gain;
    QDoubleSpinBox *dSpinBox_knee_gain;
    QDoubleSpinBox *dSpinBox_ankle_roll_gain;
    QDoubleSpinBox *dSpinBox_ankle_pitch_gain;
    QFrame *frame_6;
    QGridLayout *gridLayout_13;
    QLabel *label_31;
    QLabel *label_32;
    QLabel *label_29;
    QDoubleSpinBox *dSpinBox_z_swap_amplitude;
    QDoubleSpinBox *dSpinBox_arm_swing_gain;
    QLabel *label_30;
    QDoubleSpinBox *dSpinBox_y_swap_amplitude;
    QDoubleSpinBox *dSpinBox_pelvis_offset;
    QPushButton *button_init_gyro;
    QFrame *frame_4;
    QGridLayout *gridLayout_10;
    QLabel *label_17;
    QLabel *label_21;
    QLabel *label_20;
    QDoubleSpinBox *dSpinBox_x_move_amplitude;
    QLabel *label_22;
    QDoubleSpinBox *dSpinBox_y_move_amplitude;
    QDoubleSpinBox *dSpinBox_z_move_amplitude;
    QDoubleSpinBox *dSpinBox_a_move_amplitude;
    QGroupBox *groupBox_balance_control_2;
    QGridLayout *gridLayout_27;
    QFormLayout *formLayout_19;
    QLabel *label_168;
    QLabel *label_169;
    QDoubleSpinBox *dspin_r_x_offset;
    QLabel *label_170;
    QDoubleSpinBox *dspin_r_y_offset;
    QLabel *label_171;
    QDoubleSpinBox *dspin_r_z_offset;
    QLabel *label_172;
    QDoubleSpinBox *dspin_r_roll_offset;
    QLabel *label_173;
    QDoubleSpinBox *dspin_r_pitch_offset;
    QLabel *label_174;
    QDoubleSpinBox *dspin_r_yaw_offset;
    QFormLayout *formLayout_17;
    QLabel *label_154;
    QLabel *label_155;
    QDoubleSpinBox *dspin_KP_P;
    QLabel *label_156;
    QDoubleSpinBox *dspin_KD_P;
    QLabel *label_157;
    QDoubleSpinBox *dspin_KI_P;
    QLabel *label_158;
    QDoubleSpinBox *dspin_D_HIP_P;
    QLabel *label_159;
    QDoubleSpinBox *dspin_D_KNEE;
    QLabel *label_160;
    QDoubleSpinBox *dspin_D_ANKLE_P;
    QLabel *label_161;
    QDoubleSpinBox *dspin_shoulder_gain;
    QFormLayout *formLayout_18;
    QLabel *label_162;
    QLabel *label_163;
    QDoubleSpinBox *dspin_KP_R;
    QLabel *label_164;
    QDoubleSpinBox *dspin_KD_R;
    QLabel *label_165;
    QDoubleSpinBox *dspin_KI_R;
    QLabel *label_166;
    QDoubleSpinBox *dspin_D_HIP_R;
    QLabel *label_167;
    QDoubleSpinBox *dspin_D_ANKLE_R;
    QFormLayout *formLayout_20;
    QLabel *label_175;
    QLabel *label_176;
    QDoubleSpinBox *dspin_l_x_offset;
    QLabel *label_177;
    QDoubleSpinBox *dspin_l_y_offset;
    QLabel *label_178;
    QDoubleSpinBox *dspin_l_z_offset;
    QLabel *label_179;
    QDoubleSpinBox *dspin_l_roll_offset;
    QLabel *label_180;
    QDoubleSpinBox *dspin_l_pitch_offset;
    QLabel *label_181;
    QDoubleSpinBox *dspin_l_yaw_offset;
    QGroupBox *groupBox_walking_command;
    QHBoxLayout *horizontalLayout;
    QWidget *widget;
    QHBoxLayout *horizontalLayout_7;
    QPushButton *button_param_refresh;
    QPushButton *button_param_save;
    QPushButton *button_param_apply;
    QPushButton *button_walking_start;
    QPushButton *button_walking_stop;
    QWidget *tab_head_control_module;
    QVBoxLayout *verticalLayout_7;
    QGroupBox *groupBox_2;
    QGridLayout *gridLayout_6;
    QSlider *head_tilt_slider;
    QSpinBox *head_pan_spinbox;
    QLabel *label_5;
    QPushButton *head_center_button;
    QSpinBox *head_tilt_spinbox;
    QLabel *label_6;
    QLabel *label_3;
    QSlider *head_pan_slider;
    QLabel *label_4;
    QSpacerItem *verticalSpacer_4;
    QFrame *line_4;
    QLabel *label_7;
    QLabel *label_8;
    QWidget *tab_zmp;
    QGroupBox *groupBox_3;
    QWidget *formLayoutWidget_2;
    QFormLayout *formLayout_2;
    QLabel *label_35;
    QDoubleSpinBox *dspin_supp_front;
    QLabel *label_43;
    QDoubleSpinBox *dspin_supp_front2;
    QLabel *label_36;
    QDoubleSpinBox *dspin_supp_turn;
    QLabel *label_37;
    QDoubleSpinBox *dspin_supp_sidex;
    QLabel *label_38;
    QDoubleSpinBox *dspin_supp_sidey;
    QLabel *label_39;
    QDoubleSpinBox *dspin_supp_x;
    QLabel *label_40;
    QDoubleSpinBox *dspin_supp_y;
    QLabel *label_41;
    QDoubleSpinBox *dspin_supp_modinity;
    QWidget *formLayoutWidget_3;
    QFormLayout *formLayout_3;
    QLabel *label_42;
    QDoubleSpinBox *dspin_turn_comp_thrs;
    QLabel *label_44;
    QDoubleSpinBox *dspin_turn_comp;
    QLabel *label_45;
    QDoubleSpinBox *dspin_accel_comp;
    QLabel *label_46;
    QDoubleSpinBox *dspin_front_comp;
    QLabel *label_47;
    QDoubleSpinBox *dspin_hiproll_comp;
    QLabel *label_60;
    QLabel *label_61;
    QLabel *label_62;
    QDoubleSpinBox *dspin_armpitch;
    QDoubleSpinBox *dspin_armroll;
    QDoubleSpinBox *dspin_armelbow;
    QWidget *formLayoutWidget_4;
    QFormLayout *formLayout_4;
    QLabel *label_48;
    QLabel *label_49;
    QLabel *label_50;
    QLabel *label_51;
    QDoubleSpinBox *dspin_tstep;
    QDoubleSpinBox *dspin_velfast_forward;
    QDoubleSpinBox *dspin_velfast_turn;
    QDoubleSpinBox *dspin_ankle_supp_fact;
    QLabel *label_34;
    QLabel *label_59;
    QDoubleSpinBox *dspin_tzmp;
    QDoubleSpinBox *dspin_bodytilt;
    QWidget *formLayoutWidget_5;
    QFormLayout *formLayout_5;
    QLabel *label_52;
    QLabel *label_53;
    QLabel *label_54;
    QLabel *label_55;
    QLabel *label_56;
    QDoubleSpinBox *dspin_footy;
    QDoubleSpinBox *dspin_stan_offs;
    QDoubleSpinBox *dspin_boyd_height;
    QDoubleSpinBox *dspin_step_height;
    QDoubleSpinBox *dspin_belly_roll;
    QLabel *label_57;
    QDoubleSpinBox *dspin_belly_hip;
    QDoubleSpinBox *dspin_footx;
    QLabel *label_58;
    QGroupBox *commandBox;
    QWidget *layoutWidget;
    QFormLayout *formLayout_6;
    QVBoxLayout *verticalLayout_4;
    QPushButton *zmp_start_button;
    QPushButton *zmp_stop_button;
    QPushButton *zmp_reset_button;
    QFormLayout *formLayout;
    QLabel *label;
    QDoubleSpinBox *spinbox_vx;
    QLabel *label_2;
    QDoubleSpinBox *spinbox_vy;
    QLabel *label_9;
    QDoubleSpinBox *spinbox_vphi;
    QFormLayout *formLayout_8;
    QLabel *label_63;
    QDoubleSpinBox *spinbox_vx_2;
    QLabel *label_64;
    QDoubleSpinBox *spinbox_vy_2;
    QLabel *label_65;
    QDoubleSpinBox *spinbox_vphi_2;
    QVBoxLayout *verticalLayout_9;
    QPushButton *zmp_refresh_button;
    QPushButton *zmp_save_button;
    QPushButton *zmp_apply_button;
    QGroupBox *groupBox;
    QWidget *formLayoutWidget;
    QFormLayout *formLayout_7;
    QLabel *label_72;
    QDoubleSpinBox *dspin_Kp;
    QLabel *label_73;
    QDoubleSpinBox *dspin_Kd;
    QLabel *label_74;
    QDoubleSpinBox *dspin_TH1;
    QLabel *label_75;
    QDoubleSpinBox *dspin_TH2;
    QLabel *label_76;
    QDoubleSpinBox *dspin_Acc;
    QWidget *formLayoutWidget_6;
    QFormLayout *formLayout_11;
    QLabel *label_87;
    QDoubleSpinBox *dspin_KpP;
    QLabel *label_88;
    QDoubleSpinBox *dspin_KdP;
    QLabel *label_89;
    QDoubleSpinBox *dspin_KpR;
    QLabel *label_90;
    QDoubleSpinBox *dspin_KdR;
    QLabel *label_91;
    QDoubleSpinBox *dspin_Ki;
    QCheckBox *zmp_feedback;
    QWidget *tab_capture_step;
    QGroupBox *groupBox_walking_command1;
    QHBoxLayout *horizontalLayout1;
    QWidget *widget1;
    QGridLayout *gridLayout_2;
    QCheckBox *checkBox_halt_position;
    QPushButton *button_capture_step_refresh;
    QCheckBox *checkBox_leg_swing;
    QPushButton *button_capture_step_stop;
    QPushButton *button_capture_step_start;
    QPushButton *button_capture_step_save;
    QPushButton *button_capture_step_apply;
    QCheckBox *checkBox_leg_lifting;
    QCheckBox *checkBox_lateral_hip_swing;
    QDoubleSpinBox *d_spinBox_x_move;
    QCheckBox *checkBox_leaning;
    QLabel *label_361;
    QLabel *label_371;
    QDoubleSpinBox *d_spinBox_y_move;
    QDoubleSpinBox *d_spinBox_angle_move;
    QLabel *label_67;
    QLabel *label_warning;
    QGroupBox *goupBox_cpg_parameters;
    QTabWidget *tabWidget;
    QWidget *tab_halt;
    QWidget *horizontalLayoutWidget;
    QHBoxLayout *horizontalLayout_2;
    QFrame *frame_21;
    QGridLayout *gridLayout_41;
    QLabel *label_341;
    QLabel *label_131;
    QDoubleSpinBox *d_spinBox_c1;
    QLabel *label_121;
    QDoubleSpinBox *d_spinBox_c4;
    QLabel *label_111;
    QLabel *label1;
    QDoubleSpinBox *d_spinBox_c5;
    QDoubleSpinBox *d_spinBox_c2;
    QDoubleSpinBox *d_spinBox_c3;
    QFrame *formFrame_7;
    QFormLayout *formLayout_9;
    QLabel *label_251;
    QDoubleSpinBox *d_spinBox_c18;
    QLabel *label_241;
    QDoubleSpinBox *d_spinBox_c19;
    QLabel *label_271;
    QDoubleSpinBox *d_spinBox_c20;
    QWidget *tab_lifting;
    QFrame *frame1;
    QGridLayout *gridLayout_81;
    QDoubleSpinBox *d_spinBox_c6;
    QDoubleSpinBox *d_spinBox_c7;
    QLabel *label_101;
    QLabel *label_151;
    QLabel *label_141;
    QDoubleSpinBox *d_spinBox_c8;
    QLabel *label_331;
    QDoubleSpinBox *d_spinBox_c9;
    QWidget *tab_swing;
    QWidget *horizontalLayoutWidget_2;
    QHBoxLayout *horizontalLayout_4;
    QFrame *frame_31;
    QGridLayout *gridLayout_91;
    QLabel *label_1610;
    QLabel *label_182;
    QLabel *label_191;
    QDoubleSpinBox *d_spinBox_c10;
    QDoubleSpinBox *d_spinBox_t1;
    QDoubleSpinBox *d_spinBox_t0;
    QDoubleSpinBox *d_spinBox_c11;
    QLabel *label_210;
    QLabel *label_231;
    QDoubleSpinBox *d_spinBox_c12;
    QFrame *frame_41;
    QGridLayout *gridLayout_101;
    QLabel *label_1710;
    QLabel *label_211;
    QLabel *label_201;
    QDoubleSpinBox *d_spinBox_c13;
    QLabel *label_221;
    QDoubleSpinBox *d_spinBox_c14;
    QDoubleSpinBox *d_spinBox_c15;
    QDoubleSpinBox *d_spinBox_c16;
    QLabel *label_92;
    QDoubleSpinBox *d_spinBox_c17;
    QWidget *tab_interface;
    QWidget *horizontalLayoutWidget_3;
    QHBoxLayout *horizontalLayout_5;
    QFrame *frame_61;
    QGridLayout *gridLayout_131;
    QLabel *label_291;
    QDoubleSpinBox *d_spinBox_c24;
    QLabel *label_301;
    QDoubleSpinBox *d_spinBox_c23;
    QDoubleSpinBox *d_spinBox_c21;
    QLabel *label_281;
    QLabel *label_261;
    QDoubleSpinBox *d_spinBox_c22;
    QFrame *formFrame_8;
    QFormLayout *formLayout_10;
    QLabel *label_311;
    QDoubleSpinBox *d_spinBox_c25;
    QLabel *label_321;
    QDoubleSpinBox *d_spinBox_c26;
    QLabel *label_351;
    QDoubleSpinBox *d_spinBox_c27;
    QWidget *tab_quinticwalk;
    QGroupBox *group_parameterqw;
    QTabWidget *tabWidget_2;
    QWidget *tab_foot;
    QWidget *formLayoutWidget_9;
    QFormLayout *formLayout_14;
    QLabel *label_footDistance;
    QLabel *label_footRise;
    QLabel *label_footPutDownZOffset;
    QLabel *label_footPutDownPhase;
    QLabel *label_footApexPhase;
    QLabel *label_footOvershootRatio;
    QLabel *label_footOvershootPhase;
    QDoubleSpinBox *dspin_qw_foot_Distance;
    QDoubleSpinBox *dspin_qw_foot_Raise;
    QDoubleSpinBox *dspin_qw_foot_putdownOffset;
    QDoubleSpinBox *dspin_qw_foot_putdownPhase;
    QDoubleSpinBox *dspin_qw_foot_apexphase;
    QDoubleSpinBox *dspin_qw_foot_overshootRatio;
    QDoubleSpinBox *dspin_qw_foot_overshootPahse;
    QWidget *tab_trunk;
    QWidget *formLayoutWidget_8;
    QFormLayout *formLayout_13;
    QLabel *label_trunkHeight;
    QLabel *label_trunkPitch;
    QLabel *label_trunkPhase;
    QLabel *label_trunkXOffset;
    QLabel *label_trunkYOffset;
    QLabel *label_trunkSwing;
    QLabel *label_trunkPause;
    QDoubleSpinBox *dspin_qw_trunk_height;
    QDoubleSpinBox *dspin_qw_trunk_pitch;
    QDoubleSpinBox *dspin_qw_trunk_phase;
    QDoubleSpinBox *dspin_qw_trunk_xoffset;
    QDoubleSpinBox *dspin_qw_trunk_yoffset;
    QDoubleSpinBox *dspin_qw_trunk_swing;
    QDoubleSpinBox *dspin_qw_trunk_pause;
    QWidget *tab_trunk2;
    QWidget *formLayoutWidget_10;
    QFormLayout *formLayout_15;
    QLabel *label_trunkXOffsetPCoefForward;
    QDoubleSpinBox *dspin_qw_trunk_XOffsetforward;
    QLabel *label_trunkXOffsetPCoefTurn;
    QDoubleSpinBox *dspin_qw_trunk_XOffsetturn;
    QLabel *label_pitch_error_tol;
    QDoubleSpinBox *dspin_pitch_error_tol;
    QLabel *label_setpointPitch;
    QDoubleSpinBox *dspin_setpointPitch;
    QWidget *tab_fuzzy;
    QWidget *formLayoutWidget_12;
    QFormLayout *formLayout_21;
    QLabel *label_KD0;
    QDoubleSpinBox *dspin_KD_0;
    QLabel *label_KD1;
    QDoubleSpinBox *dspin_KD_1;
    QLabel *label_KD2;
    QDoubleSpinBox *dspin_KD_2;
    QLabel *label_KD3;
    QDoubleSpinBox *dspin_KD_3;
    QLabel *label_KD4;
    QDoubleSpinBox *dspin_KD_4;
    QWidget *formLayoutWidget_14;
    QFormLayout *formLayout_26;
    QLabel *label_KP0;
    QDoubleSpinBox *dspin_KP_0;
    QLabel *label_KP1;
    QDoubleSpinBox *dspin_KP_1;
    QLabel *label_KP2;
    QDoubleSpinBox *dspin_KP_2;
    QLabel *label_KP3;
    QDoubleSpinBox *dspin_KP_3;
    QLabel *label_KP4;
    QDoubleSpinBox *dspin_KP_4;
    QWidget *tab_fuzzy2;
    QWidget *formLayoutWidget_13;
    QFormLayout *formLayout_25;
    QLabel *label_Gyro0;
    QDoubleSpinBox *dspin_Gyro_0;
    QLabel *label_Gyro1;
    QDoubleSpinBox *dspin_Gyro_1;
    QLabel *label_Gyro2;
    QDoubleSpinBox *dspin_Gyro_2;
    QLabel *label_Gyro3;
    QDoubleSpinBox *dspin_Gyro_3;
    QLabel *label_Gyro4;
    QDoubleSpinBox *dspin_Gyro_4;
    QWidget *formLayoutWidget_11;
    QFormLayout *formLayout_16;
    QLabel *label_Angle0;
    QDoubleSpinBox *dspin_Angle_0;
    QLabel *label_Angle1;
    QDoubleSpinBox *dspin_Angle_1;
    QLabel *label_Angle2;
    QDoubleSpinBox *dspin_Angle_2;
    QLabel *label_Angle3;
    QDoubleSpinBox *dspin_Angle_3;
    QLabel *label_Angle4;
    QDoubleSpinBox *dspin_Angle_4;
    QWidget *formLayoutWidget_7;
    QFormLayout *formLayout_12;
    QLabel *label_freq;
    QDoubleSpinBox *dspin_qw_freq;
    QLabel *label_dspratio;
    QDoubleSpinBox *dspin_qw_dspratio;
    QComboBox *comboBox;
    QLabel *label_69;
    QCheckBox *checkBox_tuning;
    QWidget *widget_222;
    QGridLayout *gridLayout_31;
    QDoubleSpinBox *dspin_quintic_walk_XMove;
    QLabel *label_zmove;
    QLabel *label_68;
    QDoubleSpinBox *dspin_quintic_walk_YMove;
    QPushButton *button_quintic_walk_start;
    QLabel *label_ymove;
    QLabel *label_xmove;
    QLabel *label_66;
    QPushButton *button_quintic_walk_save;
    QPushButton *button_quintic_walk_apply;
    QDoubleSpinBox *dspin_quintic_walk_angle;
    QPushButton *button_quintic_walk_refresh;
    QPushButton *button_quintic_walk_stop;
    QGroupBox *groupBox_balance_control_21;
    QGridLayout *gridLayout_28;
    QFormLayout *formLayout_24;
    QLabel *label_202;
    QLabel *label_203;
    QDoubleSpinBox *dspin_KP_P_qw;
    QLabel *label_204;
    QDoubleSpinBox *dspin_KD_P_qw;
    QLabel *label_205;
    QDoubleSpinBox *dspin_KI_P_qw;
    QLabel *label_206;
    QDoubleSpinBox *dspin_D_HIP_P_qw;
    QLabel *label_207;
    QLabel *label_208;
    QDoubleSpinBox *dspin_D_ANKLE_P_qw;
    QLabel *label_209;
    QDoubleSpinBox *dspin_shoulder_gain_qw;
    QDoubleSpinBox *dspin_D_KNEE_qw;
    QWidget *kicking;
    QGroupBox *formGroupBox_33;
    QFormLayout *formLayout_44;
    QDoubleSpinBox *Time_Shift;
    QLabel *label_338;
    QLabel *label_339;
    QDoubleSpinBox *Time_Lift;
    QLabel *label_340;
    QDoubleSpinBox *Time_Retract;
    QLabel *label_3411;
    QDoubleSpinBox *Time_Kick;
    QLabel *label_342;
    QDoubleSpinBox *Time_CoolDown;
    QLabel *label_343;
    QDoubleSpinBox *Time_BringDown;
    QLabel *label_344;
    QPushButton *right_kick;
    QPushButton *left_kick;
    QPushButton *kick_save_button;
    QPushButton *kick_refresh_button;
    QPushButton *kick_apply_button;
    QGroupBox *formGroupBox_32;
    QFormLayout *formLayout_40;
    QDoubleSpinBox *Body_Height;
    QLabel *label_324;
    QDoubleSpinBox *Body_Tilt;
    QLabel *label_325;
    QDoubleSpinBox *Leg_Y;
    QLabel *label_326;
    QDoubleSpinBox *Leg_Z;
    QLabel *label_329;
    QDoubleSpinBox *X_Retract;
    QDoubleSpinBox *Z_Retract;
    QLabel *label_3311;
    QLabel *label_327;
    QDoubleSpinBox *Leg_X;
    QLabel *label_320;
    QPushButton *stop_kick;
    QWidget *formLayoutWidget_71;
    QFormLayout *formLayout_121;
    QLabel *label_921;
    QDoubleSpinBox *Gain_Angle_Pitch;
    QLabel *label_94;
    QLabel *label_93;
    QDoubleSpinBox *Gain_Velocity_Pitch;
    QDoubleSpinBox *Gain_Angle_Roll;
    QLabel *label_95;
    QDoubleSpinBox *Gain_Velocity_Roll;
    QLabel *label_96;
    QDoubleSpinBox *Gain_Integral;
    QGroupBox *formGroupBox_34;
    QFormLayout *formLayout_41;
    QLabel *label_3211;
    QDoubleSpinBox *Leg_R_X;
    QLabel *label_318;
    QDoubleSpinBox *R_Shift;
    QLabel *label_330;
    QDoubleSpinBox *R_Lift;
    QLabel *label_319;
    QDoubleSpinBox *R_CoolDown;
    QLabel *label_337;
    QDoubleSpinBox *R_Roll;
    QGroupBox *formGroupBox_35;
    QFormLayout *formLayout_42;
    QLabel *label_335;
    QLabel *label_332;
    QDoubleSpinBox *Leg_L_X;
    QLabel *label_322;
    QDoubleSpinBox *L_Shift;
    QDoubleSpinBox *L_Lift;
    QLabel *label_328;
    QDoubleSpinBox *L_CoolDown;
    QLabel *label_336;
    QDoubleSpinBox *L_Roll;
    QWidget *tab;
    QPushButton *fb_apply_button;
    QPushButton *Left_SSP;
    QPushButton *Right_SSP;
    QPushButton *fb_refresh_button;
    QPushButton *fb_save_button;
    QGroupBox *formGroupBox_36;
    QFormLayout *formLayout_43;
    QLabel *label_323;
    QDoubleSpinBox *FB_Body_Height;
    QLabel *label_333;
    QDoubleSpinBox *FB_Body_Tilt;
    QLabel *label_348;
    QDoubleSpinBox *FB_Leg_X;
    QLabel *label_334;
    QDoubleSpinBox *FB_Leg_Y;
    QLabel *label_345;
    QDoubleSpinBox *FB_Leg_Z;
    QPushButton *DSP;
    QGroupBox *formGroupBox_37;
    QFormLayout *formLayout_45;
    QLabel *label_346;
    QDoubleSpinBox *FB_Leg_R_Z;
    QLabel *label_347;
    QDoubleSpinBox *FB_R_Roll;
    QGroupBox *formGroupBox_38;
    QFormLayout *formLayout_46;
    QLabel *label_349;
    QDoubleSpinBox *FB_Leg_L_Z;
    QLabel *label_350;
    QDoubleSpinBox *FB_L_Roll;
    QGroupBox *formGroupBox_39;
    QFormLayout *formLayout_47;
    QLabel *label_3511;
    QDoubleSpinBox *FB_Setpoint_Pitch;
    QLabel *label_352;
    QDoubleSpinBox *FB_Setpoint_Roll;
    QGroupBox *formGroupBox_41;
    QFormLayout *formLayout_49;
    QLabel *label_355;
    QDoubleSpinBox *FB_Gain_Angle_Pitch;
    QLabel *label_356;
    QDoubleSpinBox *FB_Gain_Velocity_Pitch;
    QLabel *label_357;
    QDoubleSpinBox *FB_Gain_Integral_Pitch;
    QGroupBox *formGroupBox_42;
    QFormLayout *formLayout_50;
    QLabel *label_358;
    QDoubleSpinBox *FB_Gain_Angle_Roll;
    QLabel *label_359;
    QDoubleSpinBox *FB_Gain_Velocity_Roll;
    QLabel *label_360;
    QDoubleSpinBox *FB_Gain_Integral_Roll;
    QMenuBar *menubar;
    QMenu *menu_File;
    QStatusBar *statusbar;
    QButtonGroup *buttonGroup_move_aim_on;
    QButtonGroup *buttonGroup_balance;

    void setupUi(QMainWindow *MainWindowDesign)
    {
        if (MainWindowDesign->objectName().isEmpty())
            MainWindowDesign->setObjectName(QString::fromUtf8("MainWindowDesign"));
        MainWindowDesign->resize(767, 821);
        QSizePolicy sizePolicy(QSizePolicy::Preferred, QSizePolicy::Preferred);
        sizePolicy.setHorizontalStretch(0);
        sizePolicy.setVerticalStretch(0);
        sizePolicy.setHeightForWidth(MainWindowDesign->sizePolicy().hasHeightForWidth());
        MainWindowDesign->setSizePolicy(sizePolicy);
        QIcon icon;
        icon.addFile(QString::fromUtf8(":/images/icon.png"), QSize(), QIcon::Normal, QIcon::Off);
        MainWindowDesign->setWindowIcon(icon);
        MainWindowDesign->setLocale(QLocale(QLocale::English, QLocale::Australia));
        action_Quit = new QAction(MainWindowDesign);
        action_Quit->setObjectName(QString::fromUtf8("action_Quit"));
        action_Quit->setShortcutContext(Qt::ApplicationShortcut);
        action_Preferences = new QAction(MainWindowDesign);
        action_Preferences->setObjectName(QString::fromUtf8("action_Preferences"));
        actionAbout = new QAction(MainWindowDesign);
        actionAbout->setObjectName(QString::fromUtf8("actionAbout"));
        actionAbout_Qt = new QAction(MainWindowDesign);
        actionAbout_Qt->setObjectName(QString::fromUtf8("actionAbout_Qt"));
        centralwidget = new QWidget(MainWindowDesign);
        centralwidget->setObjectName(QString::fromUtf8("centralwidget"));
        widget_control = new QWidget(centralwidget);
        widget_control->setObjectName(QString::fromUtf8("widget_control"));
        widget_control->setGeometry(QRect(10, 720, 741, 131));
        verticalLayout_3 = new QVBoxLayout(widget_control);
        verticalLayout_3->setObjectName(QString::fromUtf8("verticalLayout_3"));
        groupBox_log = new QGroupBox(widget_control);
        groupBox_log->setObjectName(QString::fromUtf8("groupBox_log"));
        QSizePolicy sizePolicy1(QSizePolicy::Fixed, QSizePolicy::Fixed);
        sizePolicy1.setHorizontalStretch(0);
        sizePolicy1.setVerticalStretch(0);
        sizePolicy1.setHeightForWidth(groupBox_log->sizePolicy().hasHeightForWidth());
        groupBox_log->setSizePolicy(sizePolicy1);
        groupBox_log->setMaximumSize(QSize(864, 140));
        gridLayout_3 = new QGridLayout(groupBox_log);
        gridLayout_3->setObjectName(QString::fromUtf8("gridLayout_3"));
        view_logging = new QListView(groupBox_log);
        view_logging->setObjectName(QString::fromUtf8("view_logging"));
        QSizePolicy sizePolicy2(QSizePolicy::Expanding, QSizePolicy::Expanding);
        sizePolicy2.setHorizontalStretch(0);
        sizePolicy2.setVerticalStretch(0);
        sizePolicy2.setHeightForWidth(view_logging->sizePolicy().hasHeightForWidth());
        view_logging->setSizePolicy(sizePolicy2);

        gridLayout_3->addWidget(view_logging, 0, 0, 1, 1);

        button_clear_log = new QPushButton(groupBox_log);
        button_clear_log->setObjectName(QString::fromUtf8("button_clear_log"));
        QSizePolicy sizePolicy3(QSizePolicy::Minimum, QSizePolicy::Preferred);
        sizePolicy3.setHorizontalStretch(0);
        sizePolicy3.setVerticalStretch(0);
        sizePolicy3.setHeightForWidth(button_clear_log->sizePolicy().hasHeightForWidth());
        button_clear_log->setSizePolicy(sizePolicy3);
        button_clear_log->setMinimumSize(QSize(0, 0));

        gridLayout_3->addWidget(button_clear_log, 1, 0, 1, 1);


        verticalLayout_3->addWidget(groupBox_log);

        horizontalSpacer = new QSpacerItem(697, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        verticalLayout_3->addItem(horizontalSpacer);

        groupBox_lidar = new QGroupBox(centralwidget);
        groupBox_lidar->setObjectName(QString::fromUtf8("groupBox_lidar"));
        groupBox_lidar->setGeometry(QRect(10, 10, 743, 69));
        gridLayout_5 = new QGridLayout(groupBox_lidar);
        gridLayout_5->setObjectName(QString::fromUtf8("gridLayout_5"));
        widget_ft_base_module = new QWidget(groupBox_lidar);
        widget_ft_base_module->setObjectName(QString::fromUtf8("widget_ft_base_module"));
        widget_ft_base_module->setEnabled(false);
        gridLayout_7 = new QGridLayout(widget_ft_base_module);
        gridLayout_7->setObjectName(QString::fromUtf8("gridLayout_7"));
        gridLayout_7->setContentsMargins(0, 0, 0, 0);

        gridLayout_5->addWidget(widget_ft_base_module, 2, 1, 1, 3);

        button_init_pose = new QPushButton(groupBox_lidar);
        button_init_pose->setObjectName(QString::fromUtf8("button_init_pose"));

        gridLayout_5->addWidget(button_init_pose, 1, 1, 1, 3);

        tabWidget_control = new QTabWidget(centralwidget);
        tabWidget_control->setObjectName(QString::fromUtf8("tabWidget_control"));
        tabWidget_control->setEnabled(true);
        tabWidget_control->setGeometry(QRect(10, 90, 736, 631));
        tab_mode = new QWidget();
        tab_mode->setObjectName(QString::fromUtf8("tab_mode"));
        verticalLayout = new QVBoxLayout(tab_mode);
        verticalLayout->setObjectName(QString::fromUtf8("verticalLayout"));
        widget_mode_preset = new QWidget(tab_mode);
        widget_mode_preset->setObjectName(QString::fromUtf8("widget_mode_preset"));

        verticalLayout->addWidget(widget_mode_preset);

        widget_mode = new QWidget(tab_mode);
        widget_mode->setObjectName(QString::fromUtf8("widget_mode"));

        verticalLayout->addWidget(widget_mode);

        verticalSpacer_2 = new QSpacerItem(20, 40, QSizePolicy::Minimum, QSizePolicy::Expanding);

        verticalLayout->addItem(verticalSpacer_2);

        tabWidget_control->addTab(tab_mode, QString());
        tab_walking_module = new QWidget();
        tab_walking_module->setObjectName(QString::fromUtf8("tab_walking_module"));
        tab_walking_module->setEnabled(true);
        verticalLayout_5 = new QVBoxLayout(tab_walking_module);
        verticalLayout_5->setObjectName(QString::fromUtf8("verticalLayout_5"));
        groupBox_init_pose = new QGroupBox(tab_walking_module);
        groupBox_init_pose->setObjectName(QString::fromUtf8("groupBox_init_pose"));
        horizontalLayout_3 = new QHBoxLayout(groupBox_init_pose);
        horizontalLayout_3->setObjectName(QString::fromUtf8("horizontalLayout_3"));
        frame_2 = new QFrame(groupBox_init_pose);
        frame_2->setObjectName(QString::fromUtf8("frame_2"));
        frame_2->setFrameShape(QFrame::StyledPanel);
        frame_2->setFrameShadow(QFrame::Raised);
        gridLayout_4 = new QGridLayout(frame_2);
        gridLayout_4->setObjectName(QString::fromUtf8("gridLayout_4"));
        dSpinBox_init_offset_x = new QDoubleSpinBox(frame_2);
        dSpinBox_init_offset_x->setObjectName(QString::fromUtf8("dSpinBox_init_offset_x"));
        dSpinBox_init_offset_x->setDecimals(3);
        dSpinBox_init_offset_x->setMinimum(-1);
        dSpinBox_init_offset_x->setMaximum(1);
        dSpinBox_init_offset_x->setSingleStep(0.001);
        dSpinBox_init_offset_x->setValue(-0.01);

        gridLayout_4->addWidget(dSpinBox_init_offset_x, 0, 1, 1, 2);

        label_12 = new QLabel(frame_2);
        label_12->setObjectName(QString::fromUtf8("label_12"));

        gridLayout_4->addWidget(label_12, 1, 0, 1, 1);

        dSpinBox_init_offset_z = new QDoubleSpinBox(frame_2);
        dSpinBox_init_offset_z->setObjectName(QString::fromUtf8("dSpinBox_init_offset_z"));
        dSpinBox_init_offset_z->setDecimals(3);
        dSpinBox_init_offset_z->setMinimum(-1);
        dSpinBox_init_offset_z->setMaximum(1);
        dSpinBox_init_offset_z->setSingleStep(0.001);
        dSpinBox_init_offset_z->setValue(0.02);

        gridLayout_4->addWidget(dSpinBox_init_offset_z, 2, 1, 1, 2);

        label_11 = new QLabel(frame_2);
        label_11->setObjectName(QString::fromUtf8("label_11"));

        gridLayout_4->addWidget(label_11, 0, 0, 1, 1);

        label_13 = new QLabel(frame_2);
        label_13->setObjectName(QString::fromUtf8("label_13"));

        gridLayout_4->addWidget(label_13, 2, 0, 1, 1);

        dSpinBox_init_offset_y = new QDoubleSpinBox(frame_2);
        dSpinBox_init_offset_y->setObjectName(QString::fromUtf8("dSpinBox_init_offset_y"));
        dSpinBox_init_offset_y->setDecimals(3);
        dSpinBox_init_offset_y->setMinimum(-1);
        dSpinBox_init_offset_y->setMaximum(1);
        dSpinBox_init_offset_y->setSingleStep(0.001);
        dSpinBox_init_offset_y->setValue(0.005);

        gridLayout_4->addWidget(dSpinBox_init_offset_y, 1, 1, 1, 2);


        horizontalLayout_3->addWidget(frame_2);

        frame = new QFrame(groupBox_init_pose);
        frame->setObjectName(QString::fromUtf8("frame"));
        frame->setFrameShape(QFrame::StyledPanel);
        frame->setFrameShadow(QFrame::Raised);
        gridLayout_8 = new QGridLayout(frame);
        gridLayout_8->setObjectName(QString::fromUtf8("gridLayout_8"));
        dSpinBox_init_offset_pitch = new QDoubleSpinBox(frame);
        dSpinBox_init_offset_pitch->setObjectName(QString::fromUtf8("dSpinBox_init_offset_pitch"));
        dSpinBox_init_offset_pitch->setDecimals(1);
        dSpinBox_init_offset_pitch->setMinimum(-180);
        dSpinBox_init_offset_pitch->setMaximum(180);

        gridLayout_8->addWidget(dSpinBox_init_offset_pitch, 1, 1, 1, 2);

        dSpinBox_hip_pitch_offset = new QDoubleSpinBox(frame);
        dSpinBox_hip_pitch_offset->setObjectName(QString::fromUtf8("dSpinBox_hip_pitch_offset"));
        dSpinBox_hip_pitch_offset->setDecimals(1);
        dSpinBox_hip_pitch_offset->setMinimum(-180);
        dSpinBox_hip_pitch_offset->setMaximum(180);
        dSpinBox_hip_pitch_offset->setValue(13);

        gridLayout_8->addWidget(dSpinBox_hip_pitch_offset, 3, 1, 1, 2);

        label_10 = new QLabel(frame);
        label_10->setObjectName(QString::fromUtf8("label_10"));

        gridLayout_8->addWidget(label_10, 0, 0, 1, 1);

        label_14 = new QLabel(frame);
        label_14->setObjectName(QString::fromUtf8("label_14"));

        gridLayout_8->addWidget(label_14, 1, 0, 1, 1);

        dSpinBox_init_offset_yaw = new QDoubleSpinBox(frame);
        dSpinBox_init_offset_yaw->setObjectName(QString::fromUtf8("dSpinBox_init_offset_yaw"));
        dSpinBox_init_offset_yaw->setDecimals(1);
        dSpinBox_init_offset_yaw->setMinimum(-180);
        dSpinBox_init_offset_yaw->setMaximum(180);

        gridLayout_8->addWidget(dSpinBox_init_offset_yaw, 2, 1, 1, 2);

        label_33 = new QLabel(frame);
        label_33->setObjectName(QString::fromUtf8("label_33"));

        gridLayout_8->addWidget(label_33, 3, 0, 1, 1);

        label_15 = new QLabel(frame);
        label_15->setObjectName(QString::fromUtf8("label_15"));

        gridLayout_8->addWidget(label_15, 2, 0, 1, 1);

        dSpinBox_init_offset_roll = new QDoubleSpinBox(frame);
        dSpinBox_init_offset_roll->setObjectName(QString::fromUtf8("dSpinBox_init_offset_roll"));
        dSpinBox_init_offset_roll->setDecimals(1);
        dSpinBox_init_offset_roll->setMinimum(-180);
        dSpinBox_init_offset_roll->setMaximum(180);

        gridLayout_8->addWidget(dSpinBox_init_offset_roll, 0, 1, 1, 2);


        horizontalLayout_3->addWidget(frame);

        frame_3 = new QFrame(groupBox_init_pose);
        frame_3->setObjectName(QString::fromUtf8("frame_3"));
        frame_3->setFrameShape(QFrame::StyledPanel);
        frame_3->setFrameShadow(QFrame::Raised);
        gridLayout_9 = new QGridLayout(frame_3);
        gridLayout_9->setObjectName(QString::fromUtf8("gridLayout_9"));
        label_16 = new QLabel(frame_3);
        label_16->setObjectName(QString::fromUtf8("label_16"));

        gridLayout_9->addWidget(label_16, 0, 0, 1, 1);

        label_18 = new QLabel(frame_3);
        label_18->setObjectName(QString::fromUtf8("label_18"));

        gridLayout_9->addWidget(label_18, 1, 0, 1, 1);

        label_19 = new QLabel(frame_3);
        label_19->setObjectName(QString::fromUtf8("label_19"));

        gridLayout_9->addWidget(label_19, 2, 0, 1, 1);

        label_23 = new QLabel(frame_3);
        label_23->setObjectName(QString::fromUtf8("label_23"));

        gridLayout_9->addWidget(label_23, 3, 0, 1, 1);

        checkBox_move_aim_on = new QCheckBox(frame_3);
        buttonGroup_move_aim_on = new QButtonGroup(MainWindowDesign);
        buttonGroup_move_aim_on->setObjectName(QString::fromUtf8("buttonGroup_move_aim_on"));
        buttonGroup_move_aim_on->addButton(checkBox_move_aim_on);
        checkBox_move_aim_on->setObjectName(QString::fromUtf8("checkBox_move_aim_on"));

        gridLayout_9->addWidget(checkBox_move_aim_on, 3, 1, 1, 1);

        checkBox_move_aim_off = new QCheckBox(frame_3);
        buttonGroup_move_aim_on->addButton(checkBox_move_aim_off);
        checkBox_move_aim_off->setObjectName(QString::fromUtf8("checkBox_move_aim_off"));
        checkBox_move_aim_off->setChecked(true);

        gridLayout_9->addWidget(checkBox_move_aim_off, 3, 2, 1, 1);

        dSpinBox_step_fb_ratio = new QDoubleSpinBox(frame_3);
        dSpinBox_step_fb_ratio->setObjectName(QString::fromUtf8("dSpinBox_step_fb_ratio"));
        dSpinBox_step_fb_ratio->setMaximum(1);
        dSpinBox_step_fb_ratio->setSingleStep(0.1);
        dSpinBox_step_fb_ratio->setValue(0.28);

        gridLayout_9->addWidget(dSpinBox_step_fb_ratio, 2, 1, 1, 2);

        dSpinBox_dsp_ratio = new QDoubleSpinBox(frame_3);
        dSpinBox_dsp_ratio->setObjectName(QString::fromUtf8("dSpinBox_dsp_ratio"));
        dSpinBox_dsp_ratio->setMaximum(1);
        dSpinBox_dsp_ratio->setSingleStep(0.1);
        dSpinBox_dsp_ratio->setValue(0.1);

        gridLayout_9->addWidget(dSpinBox_dsp_ratio, 1, 1, 1, 2);

        dSpinBox_period_time = new QDoubleSpinBox(frame_3);
        dSpinBox_period_time->setObjectName(QString::fromUtf8("dSpinBox_period_time"));
        dSpinBox_period_time->setDecimals(0);
        dSpinBox_period_time->setMaximum(5000);
        dSpinBox_period_time->setSingleStep(10);
        dSpinBox_period_time->setValue(600);

        gridLayout_9->addWidget(dSpinBox_period_time, 0, 1, 1, 2);


        horizontalLayout_3->addWidget(frame_3);


        verticalLayout_5->addWidget(groupBox_init_pose);

        groupBox_balance_control = new QGroupBox(tab_walking_module);
        groupBox_balance_control->setObjectName(QString::fromUtf8("groupBox_balance_control"));
        gridLayout_12 = new QGridLayout(groupBox_balance_control);
        gridLayout_12->setObjectName(QString::fromUtf8("gridLayout_12"));
        frame_5 = new QFrame(groupBox_balance_control);
        frame_5->setObjectName(QString::fromUtf8("frame_5"));
        frame_5->setFrameShape(QFrame::StyledPanel);
        frame_5->setFrameShadow(QFrame::Raised);
        gridLayout_11 = new QGridLayout(frame_5);
        gridLayout_11->setObjectName(QString::fromUtf8("gridLayout_11"));
        label_24 = new QLabel(frame_5);
        label_24->setObjectName(QString::fromUtf8("label_24"));

        gridLayout_11->addWidget(label_24, 1, 0, 1, 1);

        checkBox_balance_on = new QCheckBox(frame_5);
        buttonGroup_balance = new QButtonGroup(MainWindowDesign);
        buttonGroup_balance->setObjectName(QString::fromUtf8("buttonGroup_balance"));
        buttonGroup_balance->addButton(checkBox_balance_on);
        checkBox_balance_on->setObjectName(QString::fromUtf8("checkBox_balance_on"));

        gridLayout_11->addWidget(checkBox_balance_on, 0, 1, 1, 1);

        label_26 = new QLabel(frame_5);
        label_26->setObjectName(QString::fromUtf8("label_26"));

        gridLayout_11->addWidget(label_26, 0, 0, 1, 1);

        checkBox_balance_off = new QCheckBox(frame_5);
        buttonGroup_balance->addButton(checkBox_balance_off);
        checkBox_balance_off->setObjectName(QString::fromUtf8("checkBox_balance_off"));
        checkBox_balance_off->setChecked(true);

        gridLayout_11->addWidget(checkBox_balance_off, 0, 2, 1, 1);

        label_25 = new QLabel(frame_5);
        label_25->setObjectName(QString::fromUtf8("label_25"));

        gridLayout_11->addWidget(label_25, 2, 0, 1, 1);

        label_27 = new QLabel(frame_5);
        label_27->setObjectName(QString::fromUtf8("label_27"));

        gridLayout_11->addWidget(label_27, 3, 0, 1, 1);

        label_28 = new QLabel(frame_5);
        label_28->setObjectName(QString::fromUtf8("label_28"));

        gridLayout_11->addWidget(label_28, 4, 0, 1, 1);

        dSpinBox_hip_roll_gain = new QDoubleSpinBox(frame_5);
        dSpinBox_hip_roll_gain->setObjectName(QString::fromUtf8("dSpinBox_hip_roll_gain"));
        dSpinBox_hip_roll_gain->setMaximum(1);
        dSpinBox_hip_roll_gain->setSingleStep(0.1);
        dSpinBox_hip_roll_gain->setValue(0.5);

        gridLayout_11->addWidget(dSpinBox_hip_roll_gain, 1, 1, 1, 2);

        dSpinBox_knee_gain = new QDoubleSpinBox(frame_5);
        dSpinBox_knee_gain->setObjectName(QString::fromUtf8("dSpinBox_knee_gain"));
        dSpinBox_knee_gain->setMaximum(1);
        dSpinBox_knee_gain->setSingleStep(0.1);
        dSpinBox_knee_gain->setValue(0.3);

        gridLayout_11->addWidget(dSpinBox_knee_gain, 2, 1, 1, 2);

        dSpinBox_ankle_roll_gain = new QDoubleSpinBox(frame_5);
        dSpinBox_ankle_roll_gain->setObjectName(QString::fromUtf8("dSpinBox_ankle_roll_gain"));
        dSpinBox_ankle_roll_gain->setMaximum(1);
        dSpinBox_ankle_roll_gain->setSingleStep(0.1);
        dSpinBox_ankle_roll_gain->setValue(1);

        gridLayout_11->addWidget(dSpinBox_ankle_roll_gain, 3, 1, 1, 2);

        dSpinBox_ankle_pitch_gain = new QDoubleSpinBox(frame_5);
        dSpinBox_ankle_pitch_gain->setObjectName(QString::fromUtf8("dSpinBox_ankle_pitch_gain"));
        dSpinBox_ankle_pitch_gain->setMaximum(1);
        dSpinBox_ankle_pitch_gain->setSingleStep(0.1);
        dSpinBox_ankle_pitch_gain->setValue(0.9);

        gridLayout_11->addWidget(dSpinBox_ankle_pitch_gain, 4, 1, 1, 2);


        gridLayout_12->addWidget(frame_5, 1, 0, 1, 1);

        frame_6 = new QFrame(groupBox_balance_control);
        frame_6->setObjectName(QString::fromUtf8("frame_6"));
        frame_6->setFrameShape(QFrame::StyledPanel);
        frame_6->setFrameShadow(QFrame::Raised);
        gridLayout_13 = new QGridLayout(frame_6);
        gridLayout_13->setObjectName(QString::fromUtf8("gridLayout_13"));
        label_31 = new QLabel(frame_6);
        label_31->setObjectName(QString::fromUtf8("label_31"));

        gridLayout_13->addWidget(label_31, 4, 0, 1, 1);

        label_32 = new QLabel(frame_6);
        label_32->setObjectName(QString::fromUtf8("label_32"));

        gridLayout_13->addWidget(label_32, 5, 0, 1, 1);

        label_29 = new QLabel(frame_6);
        label_29->setObjectName(QString::fromUtf8("label_29"));

        gridLayout_13->addWidget(label_29, 2, 0, 1, 1);

        dSpinBox_z_swap_amplitude = new QDoubleSpinBox(frame_6);
        dSpinBox_z_swap_amplitude->setObjectName(QString::fromUtf8("dSpinBox_z_swap_amplitude"));
        dSpinBox_z_swap_amplitude->setDecimals(3);
        dSpinBox_z_swap_amplitude->setMinimum(-1);
        dSpinBox_z_swap_amplitude->setMaximum(1);
        dSpinBox_z_swap_amplitude->setSingleStep(0.001);
        dSpinBox_z_swap_amplitude->setValue(0.005);

        gridLayout_13->addWidget(dSpinBox_z_swap_amplitude, 3, 1, 1, 1);

        dSpinBox_arm_swing_gain = new QDoubleSpinBox(frame_6);
        dSpinBox_arm_swing_gain->setObjectName(QString::fromUtf8("dSpinBox_arm_swing_gain"));
        dSpinBox_arm_swing_gain->setMaximum(2);
        dSpinBox_arm_swing_gain->setSingleStep(0.1);
        dSpinBox_arm_swing_gain->setValue(1.5);

        gridLayout_13->addWidget(dSpinBox_arm_swing_gain, 4, 1, 1, 1);

        label_30 = new QLabel(frame_6);
        label_30->setObjectName(QString::fromUtf8("label_30"));

        gridLayout_13->addWidget(label_30, 3, 0, 1, 1);

        dSpinBox_y_swap_amplitude = new QDoubleSpinBox(frame_6);
        dSpinBox_y_swap_amplitude->setObjectName(QString::fromUtf8("dSpinBox_y_swap_amplitude"));
        dSpinBox_y_swap_amplitude->setDecimals(3);
        dSpinBox_y_swap_amplitude->setMinimum(-1);
        dSpinBox_y_swap_amplitude->setMaximum(1);
        dSpinBox_y_swap_amplitude->setSingleStep(0.001);
        dSpinBox_y_swap_amplitude->setValue(0.02);

        gridLayout_13->addWidget(dSpinBox_y_swap_amplitude, 2, 1, 1, 1);

        dSpinBox_pelvis_offset = new QDoubleSpinBox(frame_6);
        dSpinBox_pelvis_offset->setObjectName(QString::fromUtf8("dSpinBox_pelvis_offset"));
        dSpinBox_pelvis_offset->setDecimals(1);
        dSpinBox_pelvis_offset->setMinimum(-180);
        dSpinBox_pelvis_offset->setMaximum(180);
        dSpinBox_pelvis_offset->setValue(3);

        gridLayout_13->addWidget(dSpinBox_pelvis_offset, 5, 1, 1, 1);

        button_init_gyro = new QPushButton(frame_6);
        button_init_gyro->setObjectName(QString::fromUtf8("button_init_gyro"));

        gridLayout_13->addWidget(button_init_gyro, 0, 0, 1, 1);


        gridLayout_12->addWidget(frame_6, 1, 1, 1, 1);

        frame_4 = new QFrame(groupBox_balance_control);
        frame_4->setObjectName(QString::fromUtf8("frame_4"));
        frame_4->setFrameShape(QFrame::StyledPanel);
        frame_4->setFrameShadow(QFrame::Raised);
        gridLayout_10 = new QGridLayout(frame_4);
        gridLayout_10->setObjectName(QString::fromUtf8("gridLayout_10"));
        label_17 = new QLabel(frame_4);
        label_17->setObjectName(QString::fromUtf8("label_17"));

        gridLayout_10->addWidget(label_17, 0, 0, 1, 1);

        label_21 = new QLabel(frame_4);
        label_21->setObjectName(QString::fromUtf8("label_21"));

        gridLayout_10->addWidget(label_21, 2, 0, 1, 1);

        label_20 = new QLabel(frame_4);
        label_20->setObjectName(QString::fromUtf8("label_20"));

        gridLayout_10->addWidget(label_20, 1, 0, 1, 1);

        dSpinBox_x_move_amplitude = new QDoubleSpinBox(frame_4);
        dSpinBox_x_move_amplitude->setObjectName(QString::fromUtf8("dSpinBox_x_move_amplitude"));
        dSpinBox_x_move_amplitude->setDecimals(3);
        dSpinBox_x_move_amplitude->setMinimum(-1);
        dSpinBox_x_move_amplitude->setMaximum(1);
        dSpinBox_x_move_amplitude->setSingleStep(0.001);

        gridLayout_10->addWidget(dSpinBox_x_move_amplitude, 0, 1, 1, 1);

        label_22 = new QLabel(frame_4);
        label_22->setObjectName(QString::fromUtf8("label_22"));

        gridLayout_10->addWidget(label_22, 3, 0, 1, 1);

        dSpinBox_y_move_amplitude = new QDoubleSpinBox(frame_4);
        dSpinBox_y_move_amplitude->setObjectName(QString::fromUtf8("dSpinBox_y_move_amplitude"));
        dSpinBox_y_move_amplitude->setDecimals(3);
        dSpinBox_y_move_amplitude->setMinimum(-1);
        dSpinBox_y_move_amplitude->setMaximum(1);
        dSpinBox_y_move_amplitude->setSingleStep(0.001);

        gridLayout_10->addWidget(dSpinBox_y_move_amplitude, 1, 1, 1, 1);

        dSpinBox_z_move_amplitude = new QDoubleSpinBox(frame_4);
        dSpinBox_z_move_amplitude->setObjectName(QString::fromUtf8("dSpinBox_z_move_amplitude"));
        dSpinBox_z_move_amplitude->setDecimals(3);
        dSpinBox_z_move_amplitude->setMinimum(-1);
        dSpinBox_z_move_amplitude->setMaximum(1);
        dSpinBox_z_move_amplitude->setSingleStep(0.001);
        dSpinBox_z_move_amplitude->setValue(0.04);

        gridLayout_10->addWidget(dSpinBox_z_move_amplitude, 2, 1, 1, 1);

        dSpinBox_a_move_amplitude = new QDoubleSpinBox(frame_4);
        dSpinBox_a_move_amplitude->setObjectName(QString::fromUtf8("dSpinBox_a_move_amplitude"));
        dSpinBox_a_move_amplitude->setDecimals(1);
        dSpinBox_a_move_amplitude->setMinimum(-180);
        dSpinBox_a_move_amplitude->setMaximum(180);

        gridLayout_10->addWidget(dSpinBox_a_move_amplitude, 3, 1, 1, 1);


        gridLayout_12->addWidget(frame_4, 1, 2, 1, 1);


        verticalLayout_5->addWidget(groupBox_balance_control);

        groupBox_balance_control_2 = new QGroupBox(tab_walking_module);
        groupBox_balance_control_2->setObjectName(QString::fromUtf8("groupBox_balance_control_2"));
        gridLayout_27 = new QGridLayout(groupBox_balance_control_2);
        gridLayout_27->setObjectName(QString::fromUtf8("gridLayout_27"));
        formLayout_19 = new QFormLayout();
        formLayout_19->setObjectName(QString::fromUtf8("formLayout_19"));
        formLayout_19->setHorizontalSpacing(4);
        formLayout_19->setVerticalSpacing(0);
        formLayout_19->setContentsMargins(10, -1, 10, -1);
        label_168 = new QLabel(groupBox_balance_control_2);
        label_168->setObjectName(QString::fromUtf8("label_168"));

        formLayout_19->setWidget(0, QFormLayout::LabelRole, label_168);

        label_169 = new QLabel(groupBox_balance_control_2);
        label_169->setObjectName(QString::fromUtf8("label_169"));

        formLayout_19->setWidget(1, QFormLayout::LabelRole, label_169);

        dspin_r_x_offset = new QDoubleSpinBox(groupBox_balance_control_2);
        dspin_r_x_offset->setObjectName(QString::fromUtf8("dspin_r_x_offset"));
        dspin_r_x_offset->setDecimals(3);
        dspin_r_x_offset->setMinimum(-10);
        dspin_r_x_offset->setMaximum(10);
        dspin_r_x_offset->setSingleStep(0.01);

        formLayout_19->setWidget(1, QFormLayout::FieldRole, dspin_r_x_offset);

        label_170 = new QLabel(groupBox_balance_control_2);
        label_170->setObjectName(QString::fromUtf8("label_170"));

        formLayout_19->setWidget(2, QFormLayout::LabelRole, label_170);

        dspin_r_y_offset = new QDoubleSpinBox(groupBox_balance_control_2);
        dspin_r_y_offset->setObjectName(QString::fromUtf8("dspin_r_y_offset"));
        dspin_r_y_offset->setDecimals(3);
        dspin_r_y_offset->setMinimum(-10);
        dspin_r_y_offset->setMaximum(10);
        dspin_r_y_offset->setSingleStep(0.01);

        formLayout_19->setWidget(2, QFormLayout::FieldRole, dspin_r_y_offset);

        label_171 = new QLabel(groupBox_balance_control_2);
        label_171->setObjectName(QString::fromUtf8("label_171"));

        formLayout_19->setWidget(3, QFormLayout::LabelRole, label_171);

        dspin_r_z_offset = new QDoubleSpinBox(groupBox_balance_control_2);
        dspin_r_z_offset->setObjectName(QString::fromUtf8("dspin_r_z_offset"));
        dspin_r_z_offset->setDecimals(3);
        dspin_r_z_offset->setMinimum(-10);
        dspin_r_z_offset->setMaximum(10);
        dspin_r_z_offset->setSingleStep(0.01);

        formLayout_19->setWidget(3, QFormLayout::FieldRole, dspin_r_z_offset);

        label_172 = new QLabel(groupBox_balance_control_2);
        label_172->setObjectName(QString::fromUtf8("label_172"));

        formLayout_19->setWidget(4, QFormLayout::LabelRole, label_172);

        dspin_r_roll_offset = new QDoubleSpinBox(groupBox_balance_control_2);
        dspin_r_roll_offset->setObjectName(QString::fromUtf8("dspin_r_roll_offset"));
        dspin_r_roll_offset->setDecimals(1);
        dspin_r_roll_offset->setMinimum(-90);
        dspin_r_roll_offset->setMaximum(90);
        dspin_r_roll_offset->setSingleStep(0.01);

        formLayout_19->setWidget(4, QFormLayout::FieldRole, dspin_r_roll_offset);

        label_173 = new QLabel(groupBox_balance_control_2);
        label_173->setObjectName(QString::fromUtf8("label_173"));

        formLayout_19->setWidget(5, QFormLayout::LabelRole, label_173);

        dspin_r_pitch_offset = new QDoubleSpinBox(groupBox_balance_control_2);
        dspin_r_pitch_offset->setObjectName(QString::fromUtf8("dspin_r_pitch_offset"));
        dspin_r_pitch_offset->setDecimals(1);
        dspin_r_pitch_offset->setMinimum(-90);
        dspin_r_pitch_offset->setMaximum(90);
        dspin_r_pitch_offset->setSingleStep(0.01);

        formLayout_19->setWidget(5, QFormLayout::FieldRole, dspin_r_pitch_offset);

        label_174 = new QLabel(groupBox_balance_control_2);
        label_174->setObjectName(QString::fromUtf8("label_174"));

        formLayout_19->setWidget(6, QFormLayout::LabelRole, label_174);

        dspin_r_yaw_offset = new QDoubleSpinBox(groupBox_balance_control_2);
        dspin_r_yaw_offset->setObjectName(QString::fromUtf8("dspin_r_yaw_offset"));
        dspin_r_yaw_offset->setDecimals(1);
        dspin_r_yaw_offset->setMinimum(-90);
        dspin_r_yaw_offset->setMaximum(90);
        dspin_r_yaw_offset->setSingleStep(0.01);

        formLayout_19->setWidget(6, QFormLayout::FieldRole, dspin_r_yaw_offset);


        gridLayout_27->addLayout(formLayout_19, 2, 2, 1, 1);

        formLayout_17 = new QFormLayout();
        formLayout_17->setObjectName(QString::fromUtf8("formLayout_17"));
        formLayout_17->setHorizontalSpacing(4);
        formLayout_17->setVerticalSpacing(0);
        formLayout_17->setContentsMargins(10, -1, 10, -1);
        label_154 = new QLabel(groupBox_balance_control_2);
        label_154->setObjectName(QString::fromUtf8("label_154"));

        formLayout_17->setWidget(0, QFormLayout::LabelRole, label_154);

        label_155 = new QLabel(groupBox_balance_control_2);
        label_155->setObjectName(QString::fromUtf8("label_155"));

        formLayout_17->setWidget(1, QFormLayout::LabelRole, label_155);

        dspin_KP_P = new QDoubleSpinBox(groupBox_balance_control_2);
        dspin_KP_P->setObjectName(QString::fromUtf8("dspin_KP_P"));
        dspin_KP_P->setDecimals(3);
        dspin_KP_P->setMinimum(-10);
        dspin_KP_P->setMaximum(10);
        dspin_KP_P->setSingleStep(0.01);

        formLayout_17->setWidget(1, QFormLayout::FieldRole, dspin_KP_P);

        label_156 = new QLabel(groupBox_balance_control_2);
        label_156->setObjectName(QString::fromUtf8("label_156"));

        formLayout_17->setWidget(2, QFormLayout::LabelRole, label_156);

        dspin_KD_P = new QDoubleSpinBox(groupBox_balance_control_2);
        dspin_KD_P->setObjectName(QString::fromUtf8("dspin_KD_P"));
        dspin_KD_P->setDecimals(3);
        dspin_KD_P->setMinimum(-10);
        dspin_KD_P->setMaximum(10);
        dspin_KD_P->setSingleStep(0.01);

        formLayout_17->setWidget(2, QFormLayout::FieldRole, dspin_KD_P);

        label_157 = new QLabel(groupBox_balance_control_2);
        label_157->setObjectName(QString::fromUtf8("label_157"));

        formLayout_17->setWidget(3, QFormLayout::LabelRole, label_157);

        dspin_KI_P = new QDoubleSpinBox(groupBox_balance_control_2);
        dspin_KI_P->setObjectName(QString::fromUtf8("dspin_KI_P"));
        dspin_KI_P->setDecimals(3);
        dspin_KI_P->setMinimum(-10);
        dspin_KI_P->setMaximum(10);
        dspin_KI_P->setSingleStep(0.01);

        formLayout_17->setWidget(3, QFormLayout::FieldRole, dspin_KI_P);

        label_158 = new QLabel(groupBox_balance_control_2);
        label_158->setObjectName(QString::fromUtf8("label_158"));

        formLayout_17->setWidget(4, QFormLayout::LabelRole, label_158);

        dspin_D_HIP_P = new QDoubleSpinBox(groupBox_balance_control_2);
        dspin_D_HIP_P->setObjectName(QString::fromUtf8("dspin_D_HIP_P"));
        dspin_D_HIP_P->setDecimals(3);
        dspin_D_HIP_P->setMinimum(-10);
        dspin_D_HIP_P->setMaximum(10);
        dspin_D_HIP_P->setSingleStep(0.01);

        formLayout_17->setWidget(4, QFormLayout::FieldRole, dspin_D_HIP_P);

        label_159 = new QLabel(groupBox_balance_control_2);
        label_159->setObjectName(QString::fromUtf8("label_159"));

        formLayout_17->setWidget(5, QFormLayout::LabelRole, label_159);

        dspin_D_KNEE = new QDoubleSpinBox(groupBox_balance_control_2);
        dspin_D_KNEE->setObjectName(QString::fromUtf8("dspin_D_KNEE"));
        dspin_D_KNEE->setDecimals(3);
        dspin_D_KNEE->setMinimum(-10);
        dspin_D_KNEE->setMaximum(10);
        dspin_D_KNEE->setSingleStep(0.01);

        formLayout_17->setWidget(5, QFormLayout::FieldRole, dspin_D_KNEE);

        label_160 = new QLabel(groupBox_balance_control_2);
        label_160->setObjectName(QString::fromUtf8("label_160"));

        formLayout_17->setWidget(6, QFormLayout::LabelRole, label_160);

        dspin_D_ANKLE_P = new QDoubleSpinBox(groupBox_balance_control_2);
        dspin_D_ANKLE_P->setObjectName(QString::fromUtf8("dspin_D_ANKLE_P"));
        dspin_D_ANKLE_P->setDecimals(3);
        dspin_D_ANKLE_P->setMinimum(-10);
        dspin_D_ANKLE_P->setMaximum(10);
        dspin_D_ANKLE_P->setSingleStep(0.01);

        formLayout_17->setWidget(6, QFormLayout::FieldRole, dspin_D_ANKLE_P);

        label_161 = new QLabel(groupBox_balance_control_2);
        label_161->setObjectName(QString::fromUtf8("label_161"));

        formLayout_17->setWidget(7, QFormLayout::LabelRole, label_161);

        dspin_shoulder_gain = new QDoubleSpinBox(groupBox_balance_control_2);
        dspin_shoulder_gain->setObjectName(QString::fromUtf8("dspin_shoulder_gain"));
        dspin_shoulder_gain->setDecimals(3);

        formLayout_17->setWidget(7, QFormLayout::FieldRole, dspin_shoulder_gain);


        gridLayout_27->addLayout(formLayout_17, 2, 0, 1, 1);

        formLayout_18 = new QFormLayout();
        formLayout_18->setObjectName(QString::fromUtf8("formLayout_18"));
        formLayout_18->setVerticalSpacing(2);
        formLayout_18->setContentsMargins(10, -1, 10, -1);
        label_162 = new QLabel(groupBox_balance_control_2);
        label_162->setObjectName(QString::fromUtf8("label_162"));

        formLayout_18->setWidget(1, QFormLayout::LabelRole, label_162);

        label_163 = new QLabel(groupBox_balance_control_2);
        label_163->setObjectName(QString::fromUtf8("label_163"));

        formLayout_18->setWidget(2, QFormLayout::LabelRole, label_163);

        dspin_KP_R = new QDoubleSpinBox(groupBox_balance_control_2);
        dspin_KP_R->setObjectName(QString::fromUtf8("dspin_KP_R"));
        dspin_KP_R->setDecimals(3);
        dspin_KP_R->setMinimum(-10);
        dspin_KP_R->setMaximum(10);
        dspin_KP_R->setSingleStep(0.01);

        formLayout_18->setWidget(2, QFormLayout::FieldRole, dspin_KP_R);

        label_164 = new QLabel(groupBox_balance_control_2);
        label_164->setObjectName(QString::fromUtf8("label_164"));

        formLayout_18->setWidget(3, QFormLayout::LabelRole, label_164);

        dspin_KD_R = new QDoubleSpinBox(groupBox_balance_control_2);
        dspin_KD_R->setObjectName(QString::fromUtf8("dspin_KD_R"));
        dspin_KD_R->setDecimals(3);
        dspin_KD_R->setMinimum(-10);
        dspin_KD_R->setMaximum(10);
        dspin_KD_R->setSingleStep(0.01);

        formLayout_18->setWidget(3, QFormLayout::FieldRole, dspin_KD_R);

        label_165 = new QLabel(groupBox_balance_control_2);
        label_165->setObjectName(QString::fromUtf8("label_165"));

        formLayout_18->setWidget(4, QFormLayout::LabelRole, label_165);

        dspin_KI_R = new QDoubleSpinBox(groupBox_balance_control_2);
        dspin_KI_R->setObjectName(QString::fromUtf8("dspin_KI_R"));
        dspin_KI_R->setDecimals(3);
        dspin_KI_R->setMinimum(-10);
        dspin_KI_R->setMaximum(10);
        dspin_KI_R->setSingleStep(0.01);

        formLayout_18->setWidget(4, QFormLayout::FieldRole, dspin_KI_R);

        label_166 = new QLabel(groupBox_balance_control_2);
        label_166->setObjectName(QString::fromUtf8("label_166"));

        formLayout_18->setWidget(5, QFormLayout::LabelRole, label_166);

        dspin_D_HIP_R = new QDoubleSpinBox(groupBox_balance_control_2);
        dspin_D_HIP_R->setObjectName(QString::fromUtf8("dspin_D_HIP_R"));
        dspin_D_HIP_R->setDecimals(3);
        dspin_D_HIP_R->setMinimum(-10);
        dspin_D_HIP_R->setMaximum(10);
        dspin_D_HIP_R->setSingleStep(0.01);

        formLayout_18->setWidget(5, QFormLayout::FieldRole, dspin_D_HIP_R);

        label_167 = new QLabel(groupBox_balance_control_2);
        label_167->setObjectName(QString::fromUtf8("label_167"));

        formLayout_18->setWidget(6, QFormLayout::LabelRole, label_167);

        dspin_D_ANKLE_R = new QDoubleSpinBox(groupBox_balance_control_2);
        dspin_D_ANKLE_R->setObjectName(QString::fromUtf8("dspin_D_ANKLE_R"));
        dspin_D_ANKLE_R->setDecimals(3);
        dspin_D_ANKLE_R->setMinimum(-10);
        dspin_D_ANKLE_R->setMaximum(10);
        dspin_D_ANKLE_R->setSingleStep(0.01);
        dspin_D_ANKLE_R->setValue(0);

        formLayout_18->setWidget(6, QFormLayout::FieldRole, dspin_D_ANKLE_R);


        gridLayout_27->addLayout(formLayout_18, 2, 1, 1, 1);

        formLayout_20 = new QFormLayout();
        formLayout_20->setObjectName(QString::fromUtf8("formLayout_20"));
        formLayout_20->setHorizontalSpacing(4);
        formLayout_20->setVerticalSpacing(0);
        formLayout_20->setContentsMargins(10, -1, 10, -1);
        label_175 = new QLabel(groupBox_balance_control_2);
        label_175->setObjectName(QString::fromUtf8("label_175"));

        formLayout_20->setWidget(0, QFormLayout::LabelRole, label_175);

        label_176 = new QLabel(groupBox_balance_control_2);
        label_176->setObjectName(QString::fromUtf8("label_176"));

        formLayout_20->setWidget(1, QFormLayout::LabelRole, label_176);

        dspin_l_x_offset = new QDoubleSpinBox(groupBox_balance_control_2);
        dspin_l_x_offset->setObjectName(QString::fromUtf8("dspin_l_x_offset"));
        dspin_l_x_offset->setDecimals(3);
        dspin_l_x_offset->setMinimum(-10);
        dspin_l_x_offset->setMaximum(10);
        dspin_l_x_offset->setSingleStep(0.01);

        formLayout_20->setWidget(1, QFormLayout::FieldRole, dspin_l_x_offset);

        label_177 = new QLabel(groupBox_balance_control_2);
        label_177->setObjectName(QString::fromUtf8("label_177"));

        formLayout_20->setWidget(2, QFormLayout::LabelRole, label_177);

        dspin_l_y_offset = new QDoubleSpinBox(groupBox_balance_control_2);
        dspin_l_y_offset->setObjectName(QString::fromUtf8("dspin_l_y_offset"));
        dspin_l_y_offset->setDecimals(3);
        dspin_l_y_offset->setMinimum(-10);
        dspin_l_y_offset->setMaximum(10);
        dspin_l_y_offset->setSingleStep(0.01);

        formLayout_20->setWidget(2, QFormLayout::FieldRole, dspin_l_y_offset);

        label_178 = new QLabel(groupBox_balance_control_2);
        label_178->setObjectName(QString::fromUtf8("label_178"));

        formLayout_20->setWidget(3, QFormLayout::LabelRole, label_178);

        dspin_l_z_offset = new QDoubleSpinBox(groupBox_balance_control_2);
        dspin_l_z_offset->setObjectName(QString::fromUtf8("dspin_l_z_offset"));
        dspin_l_z_offset->setDecimals(3);
        dspin_l_z_offset->setMinimum(-10);
        dspin_l_z_offset->setMaximum(10);
        dspin_l_z_offset->setSingleStep(0.01);

        formLayout_20->setWidget(3, QFormLayout::FieldRole, dspin_l_z_offset);

        label_179 = new QLabel(groupBox_balance_control_2);
        label_179->setObjectName(QString::fromUtf8("label_179"));

        formLayout_20->setWidget(4, QFormLayout::LabelRole, label_179);

        dspin_l_roll_offset = new QDoubleSpinBox(groupBox_balance_control_2);
        dspin_l_roll_offset->setObjectName(QString::fromUtf8("dspin_l_roll_offset"));
        dspin_l_roll_offset->setDecimals(1);
        dspin_l_roll_offset->setMinimum(-90);
        dspin_l_roll_offset->setMaximum(90);
        dspin_l_roll_offset->setSingleStep(0.01);

        formLayout_20->setWidget(4, QFormLayout::FieldRole, dspin_l_roll_offset);

        label_180 = new QLabel(groupBox_balance_control_2);
        label_180->setObjectName(QString::fromUtf8("label_180"));

        formLayout_20->setWidget(5, QFormLayout::LabelRole, label_180);

        dspin_l_pitch_offset = new QDoubleSpinBox(groupBox_balance_control_2);
        dspin_l_pitch_offset->setObjectName(QString::fromUtf8("dspin_l_pitch_offset"));
        dspin_l_pitch_offset->setDecimals(1);
        dspin_l_pitch_offset->setMinimum(-90);
        dspin_l_pitch_offset->setMaximum(90);
        dspin_l_pitch_offset->setSingleStep(0.01);

        formLayout_20->setWidget(5, QFormLayout::FieldRole, dspin_l_pitch_offset);

        label_181 = new QLabel(groupBox_balance_control_2);
        label_181->setObjectName(QString::fromUtf8("label_181"));

        formLayout_20->setWidget(6, QFormLayout::LabelRole, label_181);

        dspin_l_yaw_offset = new QDoubleSpinBox(groupBox_balance_control_2);
        dspin_l_yaw_offset->setObjectName(QString::fromUtf8("dspin_l_yaw_offset"));
        dspin_l_yaw_offset->setDecimals(1);
        dspin_l_yaw_offset->setMinimum(-90);
        dspin_l_yaw_offset->setMaximum(90);
        dspin_l_yaw_offset->setSingleStep(0.01);

        formLayout_20->setWidget(6, QFormLayout::FieldRole, dspin_l_yaw_offset);


        gridLayout_27->addLayout(formLayout_20, 2, 3, 1, 1);


        verticalLayout_5->addWidget(groupBox_balance_control_2);

        groupBox_walking_command = new QGroupBox(tab_walking_module);
        groupBox_walking_command->setObjectName(QString::fromUtf8("groupBox_walking_command"));
        horizontalLayout = new QHBoxLayout(groupBox_walking_command);
        horizontalLayout->setObjectName(QString::fromUtf8("horizontalLayout"));
        widget = new QWidget(groupBox_walking_command);
        widget->setObjectName(QString::fromUtf8("widget"));
        horizontalLayout_7 = new QHBoxLayout(widget);
        horizontalLayout_7->setObjectName(QString::fromUtf8("horizontalLayout_7"));
        button_param_refresh = new QPushButton(widget);
        button_param_refresh->setObjectName(QString::fromUtf8("button_param_refresh"));

        horizontalLayout_7->addWidget(button_param_refresh);

        button_param_save = new QPushButton(widget);
        button_param_save->setObjectName(QString::fromUtf8("button_param_save"));

        horizontalLayout_7->addWidget(button_param_save);

        button_param_apply = new QPushButton(widget);
        button_param_apply->setObjectName(QString::fromUtf8("button_param_apply"));

        horizontalLayout_7->addWidget(button_param_apply);


        horizontalLayout->addWidget(widget);

        button_walking_start = new QPushButton(groupBox_walking_command);
        button_walking_start->setObjectName(QString::fromUtf8("button_walking_start"));

        horizontalLayout->addWidget(button_walking_start);

        button_walking_stop = new QPushButton(groupBox_walking_command);
        button_walking_stop->setObjectName(QString::fromUtf8("button_walking_stop"));

        horizontalLayout->addWidget(button_walking_stop);


        verticalLayout_5->addWidget(groupBox_walking_command);

        tabWidget_control->addTab(tab_walking_module, QString());
        tab_head_control_module = new QWidget();
        tab_head_control_module->setObjectName(QString::fromUtf8("tab_head_control_module"));
        tab_head_control_module->setEnabled(true);
        verticalLayout_7 = new QVBoxLayout(tab_head_control_module);
        verticalLayout_7->setObjectName(QString::fromUtf8("verticalLayout_7"));
        groupBox_2 = new QGroupBox(tab_head_control_module);
        groupBox_2->setObjectName(QString::fromUtf8("groupBox_2"));
        gridLayout_6 = new QGridLayout(groupBox_2);
        gridLayout_6->setObjectName(QString::fromUtf8("gridLayout_6"));
        head_tilt_slider = new QSlider(groupBox_2);
        head_tilt_slider->setObjectName(QString::fromUtf8("head_tilt_slider"));
        head_tilt_slider->setMaximumSize(QSize(400, 16777215));
        head_tilt_slider->setMinimum(-90);
        head_tilt_slider->setMaximum(50);
        head_tilt_slider->setSingleStep(3);
        head_tilt_slider->setOrientation(Qt::Horizontal);

        gridLayout_6->addWidget(head_tilt_slider, 1, 3, 1, 1);

        head_pan_spinbox = new QSpinBox(groupBox_2);
        head_pan_spinbox->setObjectName(QString::fromUtf8("head_pan_spinbox"));
        head_pan_spinbox->setMinimum(-90);
        head_pan_spinbox->setMaximum(90);
        head_pan_spinbox->setSingleStep(3);

        gridLayout_6->addWidget(head_pan_spinbox, 0, 5, 1, 2);

        label_5 = new QLabel(groupBox_2);
        label_5->setObjectName(QString::fromUtf8("label_5"));
        label_5->setMaximumSize(QSize(20, 16777215));

        gridLayout_6->addWidget(label_5, 0, 2, 1, 1);

        head_center_button = new QPushButton(groupBox_2);
        head_center_button->setObjectName(QString::fromUtf8("head_center_button"));

        gridLayout_6->addWidget(head_center_button, 2, 5, 1, 2);

        head_tilt_spinbox = new QSpinBox(groupBox_2);
        head_tilt_spinbox->setObjectName(QString::fromUtf8("head_tilt_spinbox"));
        head_tilt_spinbox->setMinimum(-90);
        head_tilt_spinbox->setMaximum(90);
        head_tilt_spinbox->setSingleStep(3);

        gridLayout_6->addWidget(head_tilt_spinbox, 1, 5, 1, 2);

        label_6 = new QLabel(groupBox_2);
        label_6->setObjectName(QString::fromUtf8("label_6"));
        label_6->setMaximumSize(QSize(20, 16777215));

        gridLayout_6->addWidget(label_6, 0, 4, 1, 1);

        label_3 = new QLabel(groupBox_2);
        label_3->setObjectName(QString::fromUtf8("label_3"));

        gridLayout_6->addWidget(label_3, 0, 0, 1, 1);

        head_pan_slider = new QSlider(groupBox_2);
        head_pan_slider->setObjectName(QString::fromUtf8("head_pan_slider"));
        head_pan_slider->setMaximumSize(QSize(400, 16777215));
        head_pan_slider->setMinimum(-90);
        head_pan_slider->setMaximum(90);
        head_pan_slider->setSingleStep(3);
        head_pan_slider->setOrientation(Qt::Horizontal);

        gridLayout_6->addWidget(head_pan_slider, 0, 3, 1, 1);

        label_4 = new QLabel(groupBox_2);
        label_4->setObjectName(QString::fromUtf8("label_4"));

        gridLayout_6->addWidget(label_4, 1, 0, 1, 1);

        verticalSpacer_4 = new QSpacerItem(20, 40, QSizePolicy::Minimum, QSizePolicy::Expanding);

        gridLayout_6->addItem(verticalSpacer_4, 3, 0, 1, 1);

        line_4 = new QFrame(groupBox_2);
        line_4->setObjectName(QString::fromUtf8("line_4"));
        line_4->setFrameShape(QFrame::VLine);
        line_4->setFrameShadow(QFrame::Sunken);

        gridLayout_6->addWidget(line_4, 0, 1, 2, 1);

        label_7 = new QLabel(groupBox_2);
        label_7->setObjectName(QString::fromUtf8("label_7"));

        gridLayout_6->addWidget(label_7, 1, 2, 1, 1);

        label_8 = new QLabel(groupBox_2);
        label_8->setObjectName(QString::fromUtf8("label_8"));

        gridLayout_6->addWidget(label_8, 1, 4, 1, 1);


        verticalLayout_7->addWidget(groupBox_2);

        tabWidget_control->addTab(tab_head_control_module, QString());
        tab_zmp = new QWidget();
        tab_zmp->setObjectName(QString::fromUtf8("tab_zmp"));
        groupBox_3 = new QGroupBox(tab_zmp);
        groupBox_3->setObjectName(QString::fromUtf8("groupBox_3"));
        groupBox_3->setGeometry(QRect(10, 10, 441, 521));
        sizePolicy2.setHeightForWidth(groupBox_3->sizePolicy().hasHeightForWidth());
        groupBox_3->setSizePolicy(sizePolicy2);
        formLayoutWidget_2 = new QWidget(groupBox_3);
        formLayoutWidget_2->setObjectName(QString::fromUtf8("formLayoutWidget_2"));
        formLayoutWidget_2->setGeometry(QRect(10, 30, 231, 267));
        formLayout_2 = new QFormLayout(formLayoutWidget_2);
        formLayout_2->setObjectName(QString::fromUtf8("formLayout_2"));
        formLayout_2->setContentsMargins(10, 0, 10, 0);
        label_35 = new QLabel(formLayoutWidget_2);
        label_35->setObjectName(QString::fromUtf8("label_35"));

        formLayout_2->setWidget(0, QFormLayout::LabelRole, label_35);

        dspin_supp_front = new QDoubleSpinBox(formLayoutWidget_2);
        dspin_supp_front->setObjectName(QString::fromUtf8("dspin_supp_front"));
        dspin_supp_front->setDecimals(3);
        dspin_supp_front->setMinimum(-10);
        dspin_supp_front->setMaximum(10);
        dspin_supp_front->setSingleStep(0.01);

        formLayout_2->setWidget(0, QFormLayout::FieldRole, dspin_supp_front);

        label_43 = new QLabel(formLayoutWidget_2);
        label_43->setObjectName(QString::fromUtf8("label_43"));

        formLayout_2->setWidget(1, QFormLayout::LabelRole, label_43);

        dspin_supp_front2 = new QDoubleSpinBox(formLayoutWidget_2);
        dspin_supp_front2->setObjectName(QString::fromUtf8("dspin_supp_front2"));
        dspin_supp_front2->setDecimals(3);
        dspin_supp_front2->setMinimum(-10);
        dspin_supp_front2->setMaximum(10);
        dspin_supp_front2->setSingleStep(0.01);

        formLayout_2->setWidget(1, QFormLayout::FieldRole, dspin_supp_front2);

        label_36 = new QLabel(formLayoutWidget_2);
        label_36->setObjectName(QString::fromUtf8("label_36"));

        formLayout_2->setWidget(2, QFormLayout::LabelRole, label_36);

        dspin_supp_turn = new QDoubleSpinBox(formLayoutWidget_2);
        dspin_supp_turn->setObjectName(QString::fromUtf8("dspin_supp_turn"));
        dspin_supp_turn->setDecimals(3);
        dspin_supp_turn->setMinimum(-10);
        dspin_supp_turn->setMaximum(10);
        dspin_supp_turn->setSingleStep(0.01);
        dspin_supp_turn->setValue(0);

        formLayout_2->setWidget(2, QFormLayout::FieldRole, dspin_supp_turn);

        label_37 = new QLabel(formLayoutWidget_2);
        label_37->setObjectName(QString::fromUtf8("label_37"));

        formLayout_2->setWidget(3, QFormLayout::LabelRole, label_37);

        dspin_supp_sidex = new QDoubleSpinBox(formLayoutWidget_2);
        dspin_supp_sidex->setObjectName(QString::fromUtf8("dspin_supp_sidex"));
        dspin_supp_sidex->setDecimals(3);
        dspin_supp_sidex->setMinimum(-10);
        dspin_supp_sidex->setMaximum(10);
        dspin_supp_sidex->setSingleStep(0.01);

        formLayout_2->setWidget(3, QFormLayout::FieldRole, dspin_supp_sidex);

        label_38 = new QLabel(formLayoutWidget_2);
        label_38->setObjectName(QString::fromUtf8("label_38"));

        formLayout_2->setWidget(4, QFormLayout::LabelRole, label_38);

        dspin_supp_sidey = new QDoubleSpinBox(formLayoutWidget_2);
        dspin_supp_sidey->setObjectName(QString::fromUtf8("dspin_supp_sidey"));
        dspin_supp_sidey->setDecimals(3);
        dspin_supp_sidey->setMinimum(-10);
        dspin_supp_sidey->setMaximum(10);
        dspin_supp_sidey->setSingleStep(0.01);

        formLayout_2->setWidget(4, QFormLayout::FieldRole, dspin_supp_sidey);

        label_39 = new QLabel(formLayoutWidget_2);
        label_39->setObjectName(QString::fromUtf8("label_39"));

        formLayout_2->setWidget(5, QFormLayout::LabelRole, label_39);

        dspin_supp_x = new QDoubleSpinBox(formLayoutWidget_2);
        dspin_supp_x->setObjectName(QString::fromUtf8("dspin_supp_x"));
        dspin_supp_x->setDecimals(3);
        dspin_supp_x->setMinimum(-10);
        dspin_supp_x->setMaximum(10);
        dspin_supp_x->setSingleStep(0.01);

        formLayout_2->setWidget(5, QFormLayout::FieldRole, dspin_supp_x);

        label_40 = new QLabel(formLayoutWidget_2);
        label_40->setObjectName(QString::fromUtf8("label_40"));

        formLayout_2->setWidget(6, QFormLayout::LabelRole, label_40);

        dspin_supp_y = new QDoubleSpinBox(formLayoutWidget_2);
        dspin_supp_y->setObjectName(QString::fromUtf8("dspin_supp_y"));
        dspin_supp_y->setDecimals(3);
        dspin_supp_y->setMinimum(-10);
        dspin_supp_y->setMaximum(10);
        dspin_supp_y->setSingleStep(0.01);

        formLayout_2->setWidget(6, QFormLayout::FieldRole, dspin_supp_y);

        label_41 = new QLabel(formLayoutWidget_2);
        label_41->setObjectName(QString::fromUtf8("label_41"));

        formLayout_2->setWidget(7, QFormLayout::LabelRole, label_41);

        dspin_supp_modinity = new QDoubleSpinBox(formLayoutWidget_2);
        dspin_supp_modinity->setObjectName(QString::fromUtf8("dspin_supp_modinity"));
        dspin_supp_modinity->setDecimals(3);
        dspin_supp_modinity->setMinimum(-10);
        dspin_supp_modinity->setMaximum(10);
        dspin_supp_modinity->setSingleStep(0.01);
        dspin_supp_modinity->setValue(0);

        formLayout_2->setWidget(7, QFormLayout::FieldRole, dspin_supp_modinity);

        formLayoutWidget_3 = new QWidget(groupBox_3);
        formLayoutWidget_3->setObjectName(QString::fromUtf8("formLayoutWidget_3"));
        formLayoutWidget_3->setGeometry(QRect(210, 30, 240, 267));
        formLayout_3 = new QFormLayout(formLayoutWidget_3);
        formLayout_3->setObjectName(QString::fromUtf8("formLayout_3"));
        formLayout_3->setContentsMargins(10, 0, 10, 0);
        label_42 = new QLabel(formLayoutWidget_3);
        label_42->setObjectName(QString::fromUtf8("label_42"));

        formLayout_3->setWidget(0, QFormLayout::LabelRole, label_42);

        dspin_turn_comp_thrs = new QDoubleSpinBox(formLayoutWidget_3);
        dspin_turn_comp_thrs->setObjectName(QString::fromUtf8("dspin_turn_comp_thrs"));
        dspin_turn_comp_thrs->setDecimals(3);
        dspin_turn_comp_thrs->setMinimum(-10);
        dspin_turn_comp_thrs->setMaximum(10);
        dspin_turn_comp_thrs->setSingleStep(0.01);

        formLayout_3->setWidget(0, QFormLayout::FieldRole, dspin_turn_comp_thrs);

        label_44 = new QLabel(formLayoutWidget_3);
        label_44->setObjectName(QString::fromUtf8("label_44"));

        formLayout_3->setWidget(1, QFormLayout::LabelRole, label_44);

        dspin_turn_comp = new QDoubleSpinBox(formLayoutWidget_3);
        dspin_turn_comp->setObjectName(QString::fromUtf8("dspin_turn_comp"));
        dspin_turn_comp->setDecimals(3);
        dspin_turn_comp->setMinimum(-10);
        dspin_turn_comp->setMaximum(10);
        dspin_turn_comp->setSingleStep(0.01);

        formLayout_3->setWidget(1, QFormLayout::FieldRole, dspin_turn_comp);

        label_45 = new QLabel(formLayoutWidget_3);
        label_45->setObjectName(QString::fromUtf8("label_45"));

        formLayout_3->setWidget(2, QFormLayout::LabelRole, label_45);

        dspin_accel_comp = new QDoubleSpinBox(formLayoutWidget_3);
        dspin_accel_comp->setObjectName(QString::fromUtf8("dspin_accel_comp"));
        dspin_accel_comp->setDecimals(3);
        dspin_accel_comp->setMinimum(-10);
        dspin_accel_comp->setMaximum(10);
        dspin_accel_comp->setSingleStep(0.01);

        formLayout_3->setWidget(2, QFormLayout::FieldRole, dspin_accel_comp);

        label_46 = new QLabel(formLayoutWidget_3);
        label_46->setObjectName(QString::fromUtf8("label_46"));

        formLayout_3->setWidget(3, QFormLayout::LabelRole, label_46);

        dspin_front_comp = new QDoubleSpinBox(formLayoutWidget_3);
        dspin_front_comp->setObjectName(QString::fromUtf8("dspin_front_comp"));
        dspin_front_comp->setDecimals(3);
        dspin_front_comp->setMinimum(-10);
        dspin_front_comp->setMaximum(10);
        dspin_front_comp->setSingleStep(0.01);

        formLayout_3->setWidget(3, QFormLayout::FieldRole, dspin_front_comp);

        label_47 = new QLabel(formLayoutWidget_3);
        label_47->setObjectName(QString::fromUtf8("label_47"));

        formLayout_3->setWidget(4, QFormLayout::LabelRole, label_47);

        dspin_hiproll_comp = new QDoubleSpinBox(formLayoutWidget_3);
        dspin_hiproll_comp->setObjectName(QString::fromUtf8("dspin_hiproll_comp"));
        dspin_hiproll_comp->setDecimals(3);
        dspin_hiproll_comp->setMinimum(-10);
        dspin_hiproll_comp->setMaximum(10);
        dspin_hiproll_comp->setSingleStep(0.01);

        formLayout_3->setWidget(4, QFormLayout::FieldRole, dspin_hiproll_comp);

        label_60 = new QLabel(formLayoutWidget_3);
        label_60->setObjectName(QString::fromUtf8("label_60"));

        formLayout_3->setWidget(5, QFormLayout::LabelRole, label_60);

        label_61 = new QLabel(formLayoutWidget_3);
        label_61->setObjectName(QString::fromUtf8("label_61"));

        formLayout_3->setWidget(6, QFormLayout::LabelRole, label_61);

        label_62 = new QLabel(formLayoutWidget_3);
        label_62->setObjectName(QString::fromUtf8("label_62"));

        formLayout_3->setWidget(7, QFormLayout::LabelRole, label_62);

        dspin_armpitch = new QDoubleSpinBox(formLayoutWidget_3);
        dspin_armpitch->setObjectName(QString::fromUtf8("dspin_armpitch"));
        dspin_armpitch->setMinimum(-90);
        dspin_armpitch->setMaximum(90);
        dspin_armpitch->setSingleStep(0.01);

        formLayout_3->setWidget(5, QFormLayout::FieldRole, dspin_armpitch);

        dspin_armroll = new QDoubleSpinBox(formLayoutWidget_3);
        dspin_armroll->setObjectName(QString::fromUtf8("dspin_armroll"));
        dspin_armroll->setMinimum(-90);
        dspin_armroll->setMaximum(90);
        dspin_armroll->setSingleStep(0.01);

        formLayout_3->setWidget(6, QFormLayout::FieldRole, dspin_armroll);

        dspin_armelbow = new QDoubleSpinBox(formLayoutWidget_3);
        dspin_armelbow->setObjectName(QString::fromUtf8("dspin_armelbow"));
        dspin_armelbow->setMinimum(-90);
        dspin_armelbow->setMaximum(150);
        dspin_armelbow->setSingleStep(0.01);

        formLayout_3->setWidget(7, QFormLayout::FieldRole, dspin_armelbow);

        formLayoutWidget_4 = new QWidget(groupBox_3);
        formLayoutWidget_4->setObjectName(QString::fromUtf8("formLayoutWidget_4"));
        formLayoutWidget_4->setGeometry(QRect(210, 290, 242, 201));
        formLayout_4 = new QFormLayout(formLayoutWidget_4);
        formLayout_4->setObjectName(QString::fromUtf8("formLayout_4"));
        formLayout_4->setContentsMargins(10, 0, 10, 0);
        label_48 = new QLabel(formLayoutWidget_4);
        label_48->setObjectName(QString::fromUtf8("label_48"));

        formLayout_4->setWidget(1, QFormLayout::LabelRole, label_48);

        label_49 = new QLabel(formLayoutWidget_4);
        label_49->setObjectName(QString::fromUtf8("label_49"));

        formLayout_4->setWidget(3, QFormLayout::LabelRole, label_49);

        label_50 = new QLabel(formLayoutWidget_4);
        label_50->setObjectName(QString::fromUtf8("label_50"));

        formLayout_4->setWidget(4, QFormLayout::LabelRole, label_50);

        label_51 = new QLabel(formLayoutWidget_4);
        label_51->setObjectName(QString::fromUtf8("label_51"));

        formLayout_4->setWidget(5, QFormLayout::LabelRole, label_51);

        dspin_tstep = new QDoubleSpinBox(formLayoutWidget_4);
        dspin_tstep->setObjectName(QString::fromUtf8("dspin_tstep"));
        dspin_tstep->setDecimals(3);
        dspin_tstep->setMinimum(-10);
        dspin_tstep->setMaximum(10);
        dspin_tstep->setSingleStep(0.01);

        formLayout_4->setWidget(1, QFormLayout::FieldRole, dspin_tstep);

        dspin_velfast_forward = new QDoubleSpinBox(formLayoutWidget_4);
        dspin_velfast_forward->setObjectName(QString::fromUtf8("dspin_velfast_forward"));
        dspin_velfast_forward->setDecimals(3);
        dspin_velfast_forward->setMinimum(-10);
        dspin_velfast_forward->setMaximum(10);
        dspin_velfast_forward->setSingleStep(0.01);

        formLayout_4->setWidget(3, QFormLayout::FieldRole, dspin_velfast_forward);

        dspin_velfast_turn = new QDoubleSpinBox(formLayoutWidget_4);
        dspin_velfast_turn->setObjectName(QString::fromUtf8("dspin_velfast_turn"));
        dspin_velfast_turn->setDecimals(3);
        dspin_velfast_turn->setMinimum(-10);
        dspin_velfast_turn->setMaximum(10);
        dspin_velfast_turn->setSingleStep(0.01);

        formLayout_4->setWidget(4, QFormLayout::FieldRole, dspin_velfast_turn);

        dspin_ankle_supp_fact = new QDoubleSpinBox(formLayoutWidget_4);
        dspin_ankle_supp_fact->setObjectName(QString::fromUtf8("dspin_ankle_supp_fact"));
        dspin_ankle_supp_fact->setDecimals(3);
        dspin_ankle_supp_fact->setMinimum(-10);
        dspin_ankle_supp_fact->setMaximum(10);
        dspin_ankle_supp_fact->setSingleStep(0.01);

        formLayout_4->setWidget(5, QFormLayout::FieldRole, dspin_ankle_supp_fact);

        label_34 = new QLabel(formLayoutWidget_4);
        label_34->setObjectName(QString::fromUtf8("label_34"));

        formLayout_4->setWidget(2, QFormLayout::LabelRole, label_34);

        label_59 = new QLabel(formLayoutWidget_4);
        label_59->setObjectName(QString::fromUtf8("label_59"));

        formLayout_4->setWidget(0, QFormLayout::LabelRole, label_59);

        dspin_tzmp = new QDoubleSpinBox(formLayoutWidget_4);
        dspin_tzmp->setObjectName(QString::fromUtf8("dspin_tzmp"));
        dspin_tzmp->setDecimals(3);
        dspin_tzmp->setSingleStep(0.01);

        formLayout_4->setWidget(2, QFormLayout::FieldRole, dspin_tzmp);

        dspin_bodytilt = new QDoubleSpinBox(formLayoutWidget_4);
        dspin_bodytilt->setObjectName(QString::fromUtf8("dspin_bodytilt"));
        dspin_bodytilt->setMinimum(-30);
        dspin_bodytilt->setMaximum(60);
        dspin_bodytilt->setSingleStep(0.1);

        formLayout_4->setWidget(0, QFormLayout::FieldRole, dspin_bodytilt);

        formLayoutWidget_5 = new QWidget(groupBox_3);
        formLayoutWidget_5->setObjectName(QString::fromUtf8("formLayoutWidget_5"));
        formLayoutWidget_5->setGeometry(QRect(9, 290, 221, 233));
        formLayout_5 = new QFormLayout(formLayoutWidget_5);
        formLayout_5->setObjectName(QString::fromUtf8("formLayout_5"));
        formLayout_5->setContentsMargins(10, 0, 10, 0);
        label_52 = new QLabel(formLayoutWidget_5);
        label_52->setObjectName(QString::fromUtf8("label_52"));

        formLayout_5->setWidget(0, QFormLayout::LabelRole, label_52);

        label_53 = new QLabel(formLayoutWidget_5);
        label_53->setObjectName(QString::fromUtf8("label_53"));

        formLayout_5->setWidget(2, QFormLayout::LabelRole, label_53);

        label_54 = new QLabel(formLayoutWidget_5);
        label_54->setObjectName(QString::fromUtf8("label_54"));

        formLayout_5->setWidget(3, QFormLayout::LabelRole, label_54);

        label_55 = new QLabel(formLayoutWidget_5);
        label_55->setObjectName(QString::fromUtf8("label_55"));

        formLayout_5->setWidget(4, QFormLayout::LabelRole, label_55);

        label_56 = new QLabel(formLayoutWidget_5);
        label_56->setObjectName(QString::fromUtf8("label_56"));

        formLayout_5->setWidget(5, QFormLayout::LabelRole, label_56);

        dspin_footy = new QDoubleSpinBox(formLayoutWidget_5);
        dspin_footy->setObjectName(QString::fromUtf8("dspin_footy"));
        dspin_footy->setDecimals(4);
        dspin_footy->setMinimum(-10);
        dspin_footy->setMaximum(10);
        dspin_footy->setSingleStep(0.01);

        formLayout_5->setWidget(0, QFormLayout::FieldRole, dspin_footy);

        dspin_stan_offs = new QDoubleSpinBox(formLayoutWidget_5);
        dspin_stan_offs->setObjectName(QString::fromUtf8("dspin_stan_offs"));
        dspin_stan_offs->setDecimals(4);
        dspin_stan_offs->setMinimum(-10);
        dspin_stan_offs->setMaximum(10);
        dspin_stan_offs->setSingleStep(0.01);

        formLayout_5->setWidget(2, QFormLayout::FieldRole, dspin_stan_offs);

        dspin_boyd_height = new QDoubleSpinBox(formLayoutWidget_5);
        dspin_boyd_height->setObjectName(QString::fromUtf8("dspin_boyd_height"));
        dspin_boyd_height->setDecimals(4);
        dspin_boyd_height->setMinimum(-10);
        dspin_boyd_height->setMaximum(10);
        dspin_boyd_height->setSingleStep(0.01);

        formLayout_5->setWidget(3, QFormLayout::FieldRole, dspin_boyd_height);

        dspin_step_height = new QDoubleSpinBox(formLayoutWidget_5);
        dspin_step_height->setObjectName(QString::fromUtf8("dspin_step_height"));
        dspin_step_height->setDecimals(4);
        dspin_step_height->setMinimum(-10);
        dspin_step_height->setMaximum(10);
        dspin_step_height->setSingleStep(0.01);

        formLayout_5->setWidget(4, QFormLayout::FieldRole, dspin_step_height);

        dspin_belly_roll = new QDoubleSpinBox(formLayoutWidget_5);
        dspin_belly_roll->setObjectName(QString::fromUtf8("dspin_belly_roll"));
        dspin_belly_roll->setDecimals(4);
        dspin_belly_roll->setMinimum(-10);
        dspin_belly_roll->setMaximum(10);
        dspin_belly_roll->setSingleStep(0.01);

        formLayout_5->setWidget(5, QFormLayout::FieldRole, dspin_belly_roll);

        label_57 = new QLabel(formLayoutWidget_5);
        label_57->setObjectName(QString::fromUtf8("label_57"));

        formLayout_5->setWidget(6, QFormLayout::LabelRole, label_57);

        dspin_belly_hip = new QDoubleSpinBox(formLayoutWidget_5);
        dspin_belly_hip->setObjectName(QString::fromUtf8("dspin_belly_hip"));
        dspin_belly_hip->setDecimals(4);
        dspin_belly_hip->setMinimum(-10);
        dspin_belly_hip->setMaximum(10);
        dspin_belly_hip->setSingleStep(0.01);

        formLayout_5->setWidget(6, QFormLayout::FieldRole, dspin_belly_hip);

        dspin_footx = new QDoubleSpinBox(formLayoutWidget_5);
        dspin_footx->setObjectName(QString::fromUtf8("dspin_footx"));
        dspin_footx->setDecimals(4);
        dspin_footx->setMinimum(-10);
        dspin_footx->setMaximum(10);
        dspin_footx->setSingleStep(0.01);

        formLayout_5->setWidget(1, QFormLayout::FieldRole, dspin_footx);

        label_58 = new QLabel(formLayoutWidget_5);
        label_58->setObjectName(QString::fromUtf8("label_58"));

        formLayout_5->setWidget(1, QFormLayout::LabelRole, label_58);

        commandBox = new QGroupBox(tab_zmp);
        commandBox->setObjectName(QString::fromUtf8("commandBox"));
        commandBox->setGeometry(QRect(460, 20, 271, 211));
        QSizePolicy sizePolicy4(QSizePolicy::MinimumExpanding, QSizePolicy::MinimumExpanding);
        sizePolicy4.setHorizontalStretch(0);
        sizePolicy4.setVerticalStretch(0);
        sizePolicy4.setHeightForWidth(commandBox->sizePolicy().hasHeightForWidth());
        commandBox->setSizePolicy(sizePolicy4);
        layoutWidget = new QWidget(commandBox);
        layoutWidget->setObjectName(QString::fromUtf8("layoutWidget"));
        layoutWidget->setGeometry(QRect(0, 30, 308, 203));
        formLayout_6 = new QFormLayout(layoutWidget);
        formLayout_6->setObjectName(QString::fromUtf8("formLayout_6"));
        formLayout_6->setContentsMargins(0, 0, 0, 0);
        verticalLayout_4 = new QVBoxLayout();
        verticalLayout_4->setObjectName(QString::fromUtf8("verticalLayout_4"));
        verticalLayout_4->setContentsMargins(10, -1, 10, -1);
        zmp_start_button = new QPushButton(layoutWidget);
        zmp_start_button->setObjectName(QString::fromUtf8("zmp_start_button"));

        verticalLayout_4->addWidget(zmp_start_button);

        zmp_stop_button = new QPushButton(layoutWidget);
        zmp_stop_button->setObjectName(QString::fromUtf8("zmp_stop_button"));

        verticalLayout_4->addWidget(zmp_stop_button);

        zmp_reset_button = new QPushButton(layoutWidget);
        zmp_reset_button->setObjectName(QString::fromUtf8("zmp_reset_button"));

        verticalLayout_4->addWidget(zmp_reset_button);


        formLayout_6->setLayout(0, QFormLayout::LabelRole, verticalLayout_4);

        formLayout = new QFormLayout();
        formLayout->setObjectName(QString::fromUtf8("formLayout"));
        formLayout->setContentsMargins(10, -1, 10, -1);
        label = new QLabel(layoutWidget);
        label->setObjectName(QString::fromUtf8("label"));

        formLayout->setWidget(0, QFormLayout::LabelRole, label);

        spinbox_vx = new QDoubleSpinBox(layoutWidget);
        spinbox_vx->setObjectName(QString::fromUtf8("spinbox_vx"));
        spinbox_vx->setMinimum(-10);
        spinbox_vx->setMaximum(10);
        spinbox_vx->setSingleStep(0.01);

        formLayout->setWidget(0, QFormLayout::FieldRole, spinbox_vx);

        label_2 = new QLabel(layoutWidget);
        label_2->setObjectName(QString::fromUtf8("label_2"));
        sizePolicy2.setHeightForWidth(label_2->sizePolicy().hasHeightForWidth());
        label_2->setSizePolicy(sizePolicy2);

        formLayout->setWidget(1, QFormLayout::LabelRole, label_2);

        spinbox_vy = new QDoubleSpinBox(layoutWidget);
        spinbox_vy->setObjectName(QString::fromUtf8("spinbox_vy"));
        QSizePolicy sizePolicy5(QSizePolicy::MinimumExpanding, QSizePolicy::Fixed);
        sizePolicy5.setHorizontalStretch(0);
        sizePolicy5.setVerticalStretch(0);
        sizePolicy5.setHeightForWidth(spinbox_vy->sizePolicy().hasHeightForWidth());
        spinbox_vy->setSizePolicy(sizePolicy5);
        spinbox_vy->setMinimum(-10);
        spinbox_vy->setMaximum(10);
        spinbox_vy->setSingleStep(0.01);

        formLayout->setWidget(1, QFormLayout::FieldRole, spinbox_vy);

        label_9 = new QLabel(layoutWidget);
        label_9->setObjectName(QString::fromUtf8("label_9"));

        formLayout->setWidget(2, QFormLayout::LabelRole, label_9);

        spinbox_vphi = new QDoubleSpinBox(layoutWidget);
        spinbox_vphi->setObjectName(QString::fromUtf8("spinbox_vphi"));
        spinbox_vphi->setMinimum(-10);
        spinbox_vphi->setMaximum(10);
        spinbox_vphi->setSingleStep(0.01);

        formLayout->setWidget(2, QFormLayout::FieldRole, spinbox_vphi);


        formLayout_6->setLayout(0, QFormLayout::FieldRole, formLayout);

        formLayout_8 = new QFormLayout();
        formLayout_8->setObjectName(QString::fromUtf8("formLayout_8"));
        formLayout_8->setContentsMargins(10, -1, 10, -1);
        label_63 = new QLabel(layoutWidget);
        label_63->setObjectName(QString::fromUtf8("label_63"));

        formLayout_8->setWidget(0, QFormLayout::LabelRole, label_63);

        spinbox_vx_2 = new QDoubleSpinBox(layoutWidget);
        spinbox_vx_2->setObjectName(QString::fromUtf8("spinbox_vx_2"));
        spinbox_vx_2->setMinimum(-10);
        spinbox_vx_2->setMaximum(10);
        spinbox_vx_2->setSingleStep(0.01);

        formLayout_8->setWidget(0, QFormLayout::FieldRole, spinbox_vx_2);

        label_64 = new QLabel(layoutWidget);
        label_64->setObjectName(QString::fromUtf8("label_64"));
        sizePolicy2.setHeightForWidth(label_64->sizePolicy().hasHeightForWidth());
        label_64->setSizePolicy(sizePolicy2);

        formLayout_8->setWidget(1, QFormLayout::LabelRole, label_64);

        spinbox_vy_2 = new QDoubleSpinBox(layoutWidget);
        spinbox_vy_2->setObjectName(QString::fromUtf8("spinbox_vy_2"));
        sizePolicy5.setHeightForWidth(spinbox_vy_2->sizePolicy().hasHeightForWidth());
        spinbox_vy_2->setSizePolicy(sizePolicy5);
        spinbox_vy_2->setMinimum(-10);
        spinbox_vy_2->setMaximum(10);
        spinbox_vy_2->setSingleStep(0.01);

        formLayout_8->setWidget(1, QFormLayout::FieldRole, spinbox_vy_2);

        label_65 = new QLabel(layoutWidget);
        label_65->setObjectName(QString::fromUtf8("label_65"));

        formLayout_8->setWidget(2, QFormLayout::LabelRole, label_65);

        spinbox_vphi_2 = new QDoubleSpinBox(layoutWidget);
        spinbox_vphi_2->setObjectName(QString::fromUtf8("spinbox_vphi_2"));
        spinbox_vphi_2->setMinimum(-10);
        spinbox_vphi_2->setMaximum(10);
        spinbox_vphi_2->setSingleStep(0.01);

        formLayout_8->setWidget(2, QFormLayout::FieldRole, spinbox_vphi_2);


        formLayout_6->setLayout(1, QFormLayout::LabelRole, formLayout_8);

        verticalLayout_9 = new QVBoxLayout();
        verticalLayout_9->setObjectName(QString::fromUtf8("verticalLayout_9"));
        zmp_refresh_button = new QPushButton(layoutWidget);
        zmp_refresh_button->setObjectName(QString::fromUtf8("zmp_refresh_button"));

        verticalLayout_9->addWidget(zmp_refresh_button);

        zmp_save_button = new QPushButton(layoutWidget);
        zmp_save_button->setObjectName(QString::fromUtf8("zmp_save_button"));

        verticalLayout_9->addWidget(zmp_save_button);

        zmp_apply_button = new QPushButton(layoutWidget);
        zmp_apply_button->setObjectName(QString::fromUtf8("zmp_apply_button"));

        verticalLayout_9->addWidget(zmp_apply_button);


        formLayout_6->setLayout(1, QFormLayout::FieldRole, verticalLayout_9);

        groupBox = new QGroupBox(tab_zmp);
        groupBox->setObjectName(QString::fromUtf8("groupBox"));
        groupBox->setGeometry(QRect(460, 250, 261, 281));
        formLayoutWidget = new QWidget(groupBox);
        formLayoutWidget->setObjectName(QString::fromUtf8("formLayoutWidget"));
        formLayoutWidget->setGeometry(QRect(0, 20, 155, 231));
        formLayout_7 = new QFormLayout(formLayoutWidget);
        formLayout_7->setObjectName(QString::fromUtf8("formLayout_7"));
        formLayout_7->setFieldGrowthPolicy(QFormLayout::FieldsStayAtSizeHint);
        formLayout_7->setHorizontalSpacing(10);
        formLayout_7->setVerticalSpacing(10);
        formLayout_7->setContentsMargins(10, 10, 10, 10);
        label_72 = new QLabel(formLayoutWidget);
        label_72->setObjectName(QString::fromUtf8("label_72"));

        formLayout_7->setWidget(0, QFormLayout::LabelRole, label_72);

        dspin_Kp = new QDoubleSpinBox(formLayoutWidget);
        dspin_Kp->setObjectName(QString::fromUtf8("dspin_Kp"));
        dspin_Kp->setDecimals(3);
        dspin_Kp->setMinimum(-10);
        dspin_Kp->setMaximum(400);
        dspin_Kp->setSingleStep(0.01);

        formLayout_7->setWidget(0, QFormLayout::FieldRole, dspin_Kp);

        label_73 = new QLabel(formLayoutWidget);
        label_73->setObjectName(QString::fromUtf8("label_73"));

        formLayout_7->setWidget(1, QFormLayout::LabelRole, label_73);

        dspin_Kd = new QDoubleSpinBox(formLayoutWidget);
        dspin_Kd->setObjectName(QString::fromUtf8("dspin_Kd"));
        dspin_Kd->setDecimals(3);
        dspin_Kd->setMinimum(-10);
        dspin_Kd->setMaximum(400);
        dspin_Kd->setSingleStep(0.01);

        formLayout_7->setWidget(1, QFormLayout::FieldRole, dspin_Kd);

        label_74 = new QLabel(formLayoutWidget);
        label_74->setObjectName(QString::fromUtf8("label_74"));

        formLayout_7->setWidget(2, QFormLayout::LabelRole, label_74);

        dspin_TH1 = new QDoubleSpinBox(formLayoutWidget);
        dspin_TH1->setObjectName(QString::fromUtf8("dspin_TH1"));
        dspin_TH1->setDecimals(3);
        dspin_TH1->setMinimum(-10);
        dspin_TH1->setMaximum(10);
        dspin_TH1->setSingleStep(0.01);

        formLayout_7->setWidget(2, QFormLayout::FieldRole, dspin_TH1);

        label_75 = new QLabel(formLayoutWidget);
        label_75->setObjectName(QString::fromUtf8("label_75"));

        formLayout_7->setWidget(3, QFormLayout::LabelRole, label_75);

        dspin_TH2 = new QDoubleSpinBox(formLayoutWidget);
        dspin_TH2->setObjectName(QString::fromUtf8("dspin_TH2"));
        dspin_TH2->setDecimals(3);
        dspin_TH2->setMinimum(-10);
        dspin_TH2->setMaximum(10);
        dspin_TH2->setSingleStep(0.01);

        formLayout_7->setWidget(3, QFormLayout::FieldRole, dspin_TH2);

        label_76 = new QLabel(formLayoutWidget);
        label_76->setObjectName(QString::fromUtf8("label_76"));

        formLayout_7->setWidget(4, QFormLayout::LabelRole, label_76);

        dspin_Acc = new QDoubleSpinBox(formLayoutWidget);
        dspin_Acc->setObjectName(QString::fromUtf8("dspin_Acc"));
        dspin_Acc->setDecimals(3);
        dspin_Acc->setMinimum(-10);
        dspin_Acc->setMaximum(10);
        dspin_Acc->setSingleStep(0.01);

        formLayout_7->setWidget(4, QFormLayout::FieldRole, dspin_Acc);

        formLayoutWidget_6 = new QWidget(groupBox);
        formLayoutWidget_6->setObjectName(QString::fromUtf8("formLayoutWidget_6"));
        formLayoutWidget_6->setGeometry(QRect(130, 20, 155, 231));
        formLayout_11 = new QFormLayout(formLayoutWidget_6);
        formLayout_11->setObjectName(QString::fromUtf8("formLayout_11"));
        formLayout_11->setFieldGrowthPolicy(QFormLayout::FieldsStayAtSizeHint);
        formLayout_11->setHorizontalSpacing(10);
        formLayout_11->setVerticalSpacing(10);
        formLayout_11->setContentsMargins(10, 10, 10, 10);
        label_87 = new QLabel(formLayoutWidget_6);
        label_87->setObjectName(QString::fromUtf8("label_87"));

        formLayout_11->setWidget(0, QFormLayout::LabelRole, label_87);

        dspin_KpP = new QDoubleSpinBox(formLayoutWidget_6);
        dspin_KpP->setObjectName(QString::fromUtf8("dspin_KpP"));
        dspin_KpP->setDecimals(3);
        dspin_KpP->setMinimum(-10);
        dspin_KpP->setMaximum(400);
        dspin_KpP->setSingleStep(0.01);

        formLayout_11->setWidget(0, QFormLayout::FieldRole, dspin_KpP);

        label_88 = new QLabel(formLayoutWidget_6);
        label_88->setObjectName(QString::fromUtf8("label_88"));

        formLayout_11->setWidget(1, QFormLayout::LabelRole, label_88);

        dspin_KdP = new QDoubleSpinBox(formLayoutWidget_6);
        dspin_KdP->setObjectName(QString::fromUtf8("dspin_KdP"));
        dspin_KdP->setDecimals(3);
        dspin_KdP->setMinimum(-10);
        dspin_KdP->setMaximum(400);
        dspin_KdP->setSingleStep(0.01);

        formLayout_11->setWidget(1, QFormLayout::FieldRole, dspin_KdP);

        label_89 = new QLabel(formLayoutWidget_6);
        label_89->setObjectName(QString::fromUtf8("label_89"));

        formLayout_11->setWidget(2, QFormLayout::LabelRole, label_89);

        dspin_KpR = new QDoubleSpinBox(formLayoutWidget_6);
        dspin_KpR->setObjectName(QString::fromUtf8("dspin_KpR"));
        dspin_KpR->setDecimals(3);
        dspin_KpR->setMinimum(-10);
        dspin_KpR->setMaximum(10);
        dspin_KpR->setSingleStep(0.01);

        formLayout_11->setWidget(2, QFormLayout::FieldRole, dspin_KpR);

        label_90 = new QLabel(formLayoutWidget_6);
        label_90->setObjectName(QString::fromUtf8("label_90"));

        formLayout_11->setWidget(3, QFormLayout::LabelRole, label_90);

        dspin_KdR = new QDoubleSpinBox(formLayoutWidget_6);
        dspin_KdR->setObjectName(QString::fromUtf8("dspin_KdR"));
        dspin_KdR->setDecimals(3);
        dspin_KdR->setMinimum(-10);
        dspin_KdR->setMaximum(10);
        dspin_KdR->setSingleStep(0.01);

        formLayout_11->setWidget(3, QFormLayout::FieldRole, dspin_KdR);

        label_91 = new QLabel(formLayoutWidget_6);
        label_91->setObjectName(QString::fromUtf8("label_91"));

        formLayout_11->setWidget(4, QFormLayout::LabelRole, label_91);

        dspin_Ki = new QDoubleSpinBox(formLayoutWidget_6);
        dspin_Ki->setObjectName(QString::fromUtf8("dspin_Ki"));
        dspin_Ki->setDecimals(3);
        dspin_Ki->setMinimum(-10);
        dspin_Ki->setMaximum(10);
        dspin_Ki->setSingleStep(0.01);

        formLayout_11->setWidget(4, QFormLayout::FieldRole, dspin_Ki);

        zmp_feedback = new QCheckBox(groupBox);
        zmp_feedback->setObjectName(QString::fromUtf8("zmp_feedback"));
        zmp_feedback->setGeometry(QRect(10, 0, 83, 20));
        tabWidget_control->addTab(tab_zmp, QString());
        tab_capture_step = new QWidget();
        tab_capture_step->setObjectName(QString::fromUtf8("tab_capture_step"));
        groupBox_walking_command1 = new QGroupBox(tab_capture_step);
        groupBox_walking_command1->setObjectName(QString::fromUtf8("groupBox_walking_command1"));
        groupBox_walking_command1->setGeometry(QRect(10, 280, 711, 201));
        horizontalLayout1 = new QHBoxLayout(groupBox_walking_command1);
        horizontalLayout1->setObjectName(QString::fromUtf8("horizontalLayout1"));
        widget1 = new QWidget(groupBox_walking_command1);
        widget1->setObjectName(QString::fromUtf8("widget1"));
        gridLayout_2 = new QGridLayout(widget1);
        gridLayout_2->setObjectName(QString::fromUtf8("gridLayout_2"));
        checkBox_halt_position = new QCheckBox(widget1);
        checkBox_halt_position->setObjectName(QString::fromUtf8("checkBox_halt_position"));

        gridLayout_2->addWidget(checkBox_halt_position, 0, 1, 1, 1);

        button_capture_step_refresh = new QPushButton(widget1);
        button_capture_step_refresh->setObjectName(QString::fromUtf8("button_capture_step_refresh"));

        gridLayout_2->addWidget(button_capture_step_refresh, 0, 0, 1, 1);

        checkBox_leg_swing = new QCheckBox(widget1);
        checkBox_leg_swing->setObjectName(QString::fromUtf8("checkBox_leg_swing"));

        gridLayout_2->addWidget(checkBox_leg_swing, 2, 1, 1, 1);

        button_capture_step_stop = new QPushButton(widget1);
        button_capture_step_stop->setObjectName(QString::fromUtf8("button_capture_step_stop"));

        gridLayout_2->addWidget(button_capture_step_stop, 4, 0, 1, 1);

        button_capture_step_start = new QPushButton(widget1);
        button_capture_step_start->setObjectName(QString::fromUtf8("button_capture_step_start"));

        gridLayout_2->addWidget(button_capture_step_start, 3, 0, 1, 1);

        button_capture_step_save = new QPushButton(widget1);
        button_capture_step_save->setObjectName(QString::fromUtf8("button_capture_step_save"));

        gridLayout_2->addWidget(button_capture_step_save, 1, 0, 1, 1);

        button_capture_step_apply = new QPushButton(widget1);
        button_capture_step_apply->setObjectName(QString::fromUtf8("button_capture_step_apply"));

        gridLayout_2->addWidget(button_capture_step_apply, 2, 0, 1, 1);

        checkBox_leg_lifting = new QCheckBox(widget1);
        checkBox_leg_lifting->setObjectName(QString::fromUtf8("checkBox_leg_lifting"));

        gridLayout_2->addWidget(checkBox_leg_lifting, 1, 1, 1, 1);

        checkBox_lateral_hip_swing = new QCheckBox(widget1);
        checkBox_lateral_hip_swing->setObjectName(QString::fromUtf8("checkBox_lateral_hip_swing"));

        gridLayout_2->addWidget(checkBox_lateral_hip_swing, 3, 1, 1, 1);

        d_spinBox_x_move = new QDoubleSpinBox(widget1);
        d_spinBox_x_move->setObjectName(QString::fromUtf8("d_spinBox_x_move"));
        d_spinBox_x_move->setDecimals(3);
        d_spinBox_x_move->setMinimum(-10);
        d_spinBox_x_move->setMaximum(10);
        d_spinBox_x_move->setSingleStep(0.001);

        gridLayout_2->addWidget(d_spinBox_x_move, 0, 3, 1, 1);

        checkBox_leaning = new QCheckBox(widget1);
        checkBox_leaning->setObjectName(QString::fromUtf8("checkBox_leaning"));

        gridLayout_2->addWidget(checkBox_leaning, 4, 1, 1, 1);

        label_361 = new QLabel(widget1);
        label_361->setObjectName(QString::fromUtf8("label_361"));

        gridLayout_2->addWidget(label_361, 0, 2, 1, 1);

        label_371 = new QLabel(widget1);
        label_371->setObjectName(QString::fromUtf8("label_371"));

        gridLayout_2->addWidget(label_371, 1, 2, 1, 1);

        d_spinBox_y_move = new QDoubleSpinBox(widget1);
        d_spinBox_y_move->setObjectName(QString::fromUtf8("d_spinBox_y_move"));
        d_spinBox_y_move->setDecimals(3);
        d_spinBox_y_move->setMinimum(-10);
        d_spinBox_y_move->setMaximum(10);
        d_spinBox_y_move->setSingleStep(0.01);

        gridLayout_2->addWidget(d_spinBox_y_move, 1, 3, 1, 1);

        d_spinBox_angle_move = new QDoubleSpinBox(widget1);
        d_spinBox_angle_move->setObjectName(QString::fromUtf8("d_spinBox_angle_move"));
        d_spinBox_angle_move->setDecimals(3);
        d_spinBox_angle_move->setMinimum(-10);
        d_spinBox_angle_move->setMaximum(10);
        d_spinBox_angle_move->setSingleStep(0.01);

        gridLayout_2->addWidget(d_spinBox_angle_move, 2, 3, 1, 1);

        label_67 = new QLabel(widget1);
        label_67->setObjectName(QString::fromUtf8("label_67"));

        gridLayout_2->addWidget(label_67, 2, 2, 1, 1);

        label_warning = new QLabel(widget1);
        label_warning->setObjectName(QString::fromUtf8("label_warning"));

        gridLayout_2->addWidget(label_warning, 3, 3, 1, 1);


        horizontalLayout1->addWidget(widget1);

        goupBox_cpg_parameters = new QGroupBox(tab_capture_step);
        goupBox_cpg_parameters->setObjectName(QString::fromUtf8("goupBox_cpg_parameters"));
        goupBox_cpg_parameters->setGeometry(QRect(10, 20, 711, 251));
        QSizePolicy sizePolicy6(QSizePolicy::Minimum, QSizePolicy::Minimum);
        sizePolicy6.setHorizontalStretch(0);
        sizePolicy6.setVerticalStretch(0);
        sizePolicy6.setHeightForWidth(goupBox_cpg_parameters->sizePolicy().hasHeightForWidth());
        goupBox_cpg_parameters->setSizePolicy(sizePolicy6);
        tabWidget = new QTabWidget(goupBox_cpg_parameters);
        tabWidget->setObjectName(QString::fromUtf8("tabWidget"));
        tabWidget->setGeometry(QRect(12, 29, 691, 211));
        sizePolicy.setHeightForWidth(tabWidget->sizePolicy().hasHeightForWidth());
        tabWidget->setSizePolicy(sizePolicy);
        tab_halt = new QWidget();
        tab_halt->setObjectName(QString::fromUtf8("tab_halt"));
        horizontalLayoutWidget = new QWidget(tab_halt);
        horizontalLayoutWidget->setObjectName(QString::fromUtf8("horizontalLayoutWidget"));
        horizontalLayoutWidget->setGeometry(QRect(0, 0, 631, 189));
        horizontalLayout_2 = new QHBoxLayout(horizontalLayoutWidget);
        horizontalLayout_2->setObjectName(QString::fromUtf8("horizontalLayout_2"));
        horizontalLayout_2->setContentsMargins(0, 0, 0, 0);
        frame_21 = new QFrame(horizontalLayoutWidget);
        frame_21->setObjectName(QString::fromUtf8("frame_21"));
        frame_21->setFrameShape(QFrame::StyledPanel);
        frame_21->setFrameShadow(QFrame::Raised);
        gridLayout_41 = new QGridLayout(frame_21);
        gridLayout_41->setObjectName(QString::fromUtf8("gridLayout_41"));
        label_341 = new QLabel(frame_21);
        label_341->setObjectName(QString::fromUtf8("label_341"));

        gridLayout_41->addWidget(label_341, 3, 0, 1, 1);

        label_131 = new QLabel(frame_21);
        label_131->setObjectName(QString::fromUtf8("label_131"));

        gridLayout_41->addWidget(label_131, 2, 0, 1, 1);

        d_spinBox_c1 = new QDoubleSpinBox(frame_21);
        d_spinBox_c1->setObjectName(QString::fromUtf8("d_spinBox_c1"));
        d_spinBox_c1->setDecimals(3);
        d_spinBox_c1->setMinimum(-1);
        d_spinBox_c1->setMaximum(1);
        d_spinBox_c1->setSingleStep(0.001);
        d_spinBox_c1->setValue(-0.01);

        gridLayout_41->addWidget(d_spinBox_c1, 0, 1, 1, 2);

        label_121 = new QLabel(frame_21);
        label_121->setObjectName(QString::fromUtf8("label_121"));

        gridLayout_41->addWidget(label_121, 1, 0, 1, 1);

        d_spinBox_c4 = new QDoubleSpinBox(frame_21);
        d_spinBox_c4->setObjectName(QString::fromUtf8("d_spinBox_c4"));
        d_spinBox_c4->setDecimals(3);
        d_spinBox_c4->setMinimum(-180);
        d_spinBox_c4->setMaximum(180);
        d_spinBox_c4->setSingleStep(0.001);

        gridLayout_41->addWidget(d_spinBox_c4, 3, 1, 1, 2);

        label_111 = new QLabel(frame_21);
        label_111->setObjectName(QString::fromUtf8("label_111"));

        gridLayout_41->addWidget(label_111, 0, 0, 1, 1);

        label1 = new QLabel(frame_21);
        label1->setObjectName(QString::fromUtf8("label1"));

        gridLayout_41->addWidget(label1, 4, 0, 1, 1);

        d_spinBox_c5 = new QDoubleSpinBox(frame_21);
        d_spinBox_c5->setObjectName(QString::fromUtf8("d_spinBox_c5"));
        d_spinBox_c5->setDecimals(3);
        d_spinBox_c5->setMinimum(-180);
        d_spinBox_c5->setMaximum(180);
        d_spinBox_c5->setSingleStep(0.001);

        gridLayout_41->addWidget(d_spinBox_c5, 4, 1, 1, 2);

        d_spinBox_c2 = new QDoubleSpinBox(frame_21);
        d_spinBox_c2->setObjectName(QString::fromUtf8("d_spinBox_c2"));
        d_spinBox_c2->setDecimals(3);
        d_spinBox_c2->setMinimum(-180);
        d_spinBox_c2->setMaximum(180);
        d_spinBox_c2->setSingleStep(0.001);
        d_spinBox_c2->setValue(0.005);

        gridLayout_41->addWidget(d_spinBox_c2, 1, 1, 1, 2);

        d_spinBox_c3 = new QDoubleSpinBox(frame_21);
        d_spinBox_c3->setObjectName(QString::fromUtf8("d_spinBox_c3"));
        d_spinBox_c3->setDecimals(3);
        d_spinBox_c3->setMinimum(-180);
        d_spinBox_c3->setMaximum(180);
        d_spinBox_c3->setSingleStep(0.001);
        d_spinBox_c3->setValue(0.02);

        gridLayout_41->addWidget(d_spinBox_c3, 2, 1, 1, 2);


        horizontalLayout_2->addWidget(frame_21);

        formFrame_7 = new QFrame(horizontalLayoutWidget);
        formFrame_7->setObjectName(QString::fromUtf8("formFrame_7"));
        formLayout_9 = new QFormLayout(formFrame_7);
        formLayout_9->setObjectName(QString::fromUtf8("formLayout_9"));
        formLayout_9->setContentsMargins(9, 9, 9, 9);
        label_251 = new QLabel(formFrame_7);
        label_251->setObjectName(QString::fromUtf8("label_251"));

        formLayout_9->setWidget(0, QFormLayout::LabelRole, label_251);

        d_spinBox_c18 = new QDoubleSpinBox(formFrame_7);
        d_spinBox_c18->setObjectName(QString::fromUtf8("d_spinBox_c18"));
        d_spinBox_c18->setDecimals(3);
        d_spinBox_c18->setMinimum(-1);
        d_spinBox_c18->setMaximum(1);
        d_spinBox_c18->setSingleStep(0.001);
        d_spinBox_c18->setValue(0.5);

        formLayout_9->setWidget(0, QFormLayout::FieldRole, d_spinBox_c18);

        label_241 = new QLabel(formFrame_7);
        label_241->setObjectName(QString::fromUtf8("label_241"));

        formLayout_9->setWidget(1, QFormLayout::LabelRole, label_241);

        d_spinBox_c19 = new QDoubleSpinBox(formFrame_7);
        d_spinBox_c19->setObjectName(QString::fromUtf8("d_spinBox_c19"));
        d_spinBox_c19->setDecimals(3);
        d_spinBox_c19->setMinimum(-1);
        d_spinBox_c19->setMaximum(1);
        d_spinBox_c19->setSingleStep(0.001);
        d_spinBox_c19->setValue(0.3);

        formLayout_9->setWidget(1, QFormLayout::FieldRole, d_spinBox_c19);

        label_271 = new QLabel(formFrame_7);
        label_271->setObjectName(QString::fromUtf8("label_271"));

        formLayout_9->setWidget(2, QFormLayout::LabelRole, label_271);

        d_spinBox_c20 = new QDoubleSpinBox(formFrame_7);
        d_spinBox_c20->setObjectName(QString::fromUtf8("d_spinBox_c20"));
        d_spinBox_c20->setDecimals(3);
        d_spinBox_c20->setMinimum(-10);
        d_spinBox_c20->setMaximum(10);
        d_spinBox_c20->setSingleStep(0.001);
        d_spinBox_c20->setValue(0);

        formLayout_9->setWidget(2, QFormLayout::FieldRole, d_spinBox_c20);


        horizontalLayout_2->addWidget(formFrame_7);

        tabWidget->addTab(tab_halt, QString());
        tab_lifting = new QWidget();
        tab_lifting->setObjectName(QString::fromUtf8("tab_lifting"));
        frame1 = new QFrame(tab_lifting);
        frame1->setObjectName(QString::fromUtf8("frame1"));
        frame1->setGeometry(QRect(10, 0, 331, 141));
        frame1->setFrameShape(QFrame::StyledPanel);
        frame1->setFrameShadow(QFrame::Raised);
        gridLayout_81 = new QGridLayout(frame1);
        gridLayout_81->setObjectName(QString::fromUtf8("gridLayout_81"));
        d_spinBox_c6 = new QDoubleSpinBox(frame1);
        d_spinBox_c6->setObjectName(QString::fromUtf8("d_spinBox_c6"));
        d_spinBox_c6->setDecimals(3);
        d_spinBox_c6->setMinimum(-10);
        d_spinBox_c6->setMaximum(10);
        d_spinBox_c6->setSingleStep(0.001);

        gridLayout_81->addWidget(d_spinBox_c6, 0, 1, 1, 2);

        d_spinBox_c7 = new QDoubleSpinBox(frame1);
        d_spinBox_c7->setObjectName(QString::fromUtf8("d_spinBox_c7"));
        d_spinBox_c7->setDecimals(3);
        d_spinBox_c7->setMinimum(-10);
        d_spinBox_c7->setMaximum(10);
        d_spinBox_c7->setSingleStep(0.001);

        gridLayout_81->addWidget(d_spinBox_c7, 1, 1, 1, 2);

        label_101 = new QLabel(frame1);
        label_101->setObjectName(QString::fromUtf8("label_101"));

        gridLayout_81->addWidget(label_101, 0, 0, 1, 1);

        label_151 = new QLabel(frame1);
        label_151->setObjectName(QString::fromUtf8("label_151"));

        gridLayout_81->addWidget(label_151, 2, 0, 1, 1);

        label_141 = new QLabel(frame1);
        label_141->setObjectName(QString::fromUtf8("label_141"));

        gridLayout_81->addWidget(label_141, 1, 0, 1, 1);

        d_spinBox_c8 = new QDoubleSpinBox(frame1);
        d_spinBox_c8->setObjectName(QString::fromUtf8("d_spinBox_c8"));
        d_spinBox_c8->setDecimals(3);
        d_spinBox_c8->setMinimum(-10);
        d_spinBox_c8->setMaximum(10);
        d_spinBox_c8->setSingleStep(0.001);

        gridLayout_81->addWidget(d_spinBox_c8, 2, 1, 1, 2);

        label_331 = new QLabel(frame1);
        label_331->setObjectName(QString::fromUtf8("label_331"));

        gridLayout_81->addWidget(label_331, 3, 0, 1, 1);

        d_spinBox_c9 = new QDoubleSpinBox(frame1);
        d_spinBox_c9->setObjectName(QString::fromUtf8("d_spinBox_c9"));
        d_spinBox_c9->setDecimals(3);
        d_spinBox_c9->setMinimum(-10);
        d_spinBox_c9->setMaximum(10);
        d_spinBox_c9->setSingleStep(0.001);
        d_spinBox_c9->setValue(1);

        gridLayout_81->addWidget(d_spinBox_c9, 3, 1, 1, 2);

        tabWidget->addTab(tab_lifting, QString());
        tab_swing = new QWidget();
        tab_swing->setObjectName(QString::fromUtf8("tab_swing"));
        horizontalLayoutWidget_2 = new QWidget(tab_swing);
        horizontalLayoutWidget_2->setObjectName(QString::fromUtf8("horizontalLayoutWidget_2"));
        horizontalLayoutWidget_2->setGeometry(QRect(0, 0, 681, 189));
        horizontalLayout_4 = new QHBoxLayout(horizontalLayoutWidget_2);
        horizontalLayout_4->setObjectName(QString::fromUtf8("horizontalLayout_4"));
        horizontalLayout_4->setContentsMargins(0, 0, 0, 0);
        frame_31 = new QFrame(horizontalLayoutWidget_2);
        frame_31->setObjectName(QString::fromUtf8("frame_31"));
        frame_31->setFrameShape(QFrame::StyledPanel);
        frame_31->setFrameShadow(QFrame::Raised);
        gridLayout_91 = new QGridLayout(frame_31);
        gridLayout_91->setObjectName(QString::fromUtf8("gridLayout_91"));
        label_1610 = new QLabel(frame_31);
        label_1610->setObjectName(QString::fromUtf8("label_1610"));

        gridLayout_91->addWidget(label_1610, 0, 0, 1, 1);

        label_182 = new QLabel(frame_31);
        label_182->setObjectName(QString::fromUtf8("label_182"));

        gridLayout_91->addWidget(label_182, 1, 0, 1, 1);

        label_191 = new QLabel(frame_31);
        label_191->setObjectName(QString::fromUtf8("label_191"));

        gridLayout_91->addWidget(label_191, 2, 0, 1, 1);

        d_spinBox_c10 = new QDoubleSpinBox(frame_31);
        d_spinBox_c10->setObjectName(QString::fromUtf8("d_spinBox_c10"));
        d_spinBox_c10->setDecimals(3);
        d_spinBox_c10->setMinimum(-1);
        d_spinBox_c10->setMaximum(1);
        d_spinBox_c10->setSingleStep(0.001);
        d_spinBox_c10->setValue(0.28);

        gridLayout_91->addWidget(d_spinBox_c10, 2, 1, 1, 2);

        d_spinBox_t1 = new QDoubleSpinBox(frame_31);
        d_spinBox_t1->setObjectName(QString::fromUtf8("d_spinBox_t1"));
        d_spinBox_t1->setDecimals(4);
        d_spinBox_t1->setMinimum(-1);
        d_spinBox_t1->setMaximum(10);
        d_spinBox_t1->setSingleStep(0.001);
        d_spinBox_t1->setValue(0.1);

        gridLayout_91->addWidget(d_spinBox_t1, 1, 1, 1, 2);

        d_spinBox_t0 = new QDoubleSpinBox(frame_31);
        d_spinBox_t0->setObjectName(QString::fromUtf8("d_spinBox_t0"));
        d_spinBox_t0->setDecimals(3);
        d_spinBox_t0->setMinimum(-1);
        d_spinBox_t0->setMaximum(1);
        d_spinBox_t0->setSingleStep(0.001);
        d_spinBox_t0->setValue(1);

        gridLayout_91->addWidget(d_spinBox_t0, 0, 1, 1, 2);

        d_spinBox_c11 = new QDoubleSpinBox(frame_31);
        d_spinBox_c11->setObjectName(QString::fromUtf8("d_spinBox_c11"));
        d_spinBox_c11->setDecimals(3);
        d_spinBox_c11->setSingleStep(0.001);

        gridLayout_91->addWidget(d_spinBox_c11, 3, 1, 1, 2);

        label_210 = new QLabel(frame_31);
        label_210->setObjectName(QString::fromUtf8("label_210"));

        gridLayout_91->addWidget(label_210, 3, 0, 1, 1);

        label_231 = new QLabel(frame_31);
        label_231->setObjectName(QString::fromUtf8("label_231"));

        gridLayout_91->addWidget(label_231, 4, 0, 1, 1);

        d_spinBox_c12 = new QDoubleSpinBox(frame_31);
        d_spinBox_c12->setObjectName(QString::fromUtf8("d_spinBox_c12"));
        d_spinBox_c12->setDecimals(3);
        d_spinBox_c12->setMinimum(-1);
        d_spinBox_c12->setMaximum(1);
        d_spinBox_c12->setSingleStep(0.001);

        gridLayout_91->addWidget(d_spinBox_c12, 4, 1, 1, 2);


        horizontalLayout_4->addWidget(frame_31);

        frame_41 = new QFrame(horizontalLayoutWidget_2);
        frame_41->setObjectName(QString::fromUtf8("frame_41"));
        frame_41->setFrameShape(QFrame::StyledPanel);
        frame_41->setFrameShadow(QFrame::Raised);
        gridLayout_101 = new QGridLayout(frame_41);
        gridLayout_101->setObjectName(QString::fromUtf8("gridLayout_101"));
        label_1710 = new QLabel(frame_41);
        label_1710->setObjectName(QString::fromUtf8("label_1710"));

        gridLayout_101->addWidget(label_1710, 0, 0, 1, 1);

        label_211 = new QLabel(frame_41);
        label_211->setObjectName(QString::fromUtf8("label_211"));

        gridLayout_101->addWidget(label_211, 2, 0, 1, 1);

        label_201 = new QLabel(frame_41);
        label_201->setObjectName(QString::fromUtf8("label_201"));

        gridLayout_101->addWidget(label_201, 1, 0, 1, 1);

        d_spinBox_c13 = new QDoubleSpinBox(frame_41);
        d_spinBox_c13->setObjectName(QString::fromUtf8("d_spinBox_c13"));
        d_spinBox_c13->setDecimals(3);
        d_spinBox_c13->setMinimum(-1);
        d_spinBox_c13->setMaximum(1);
        d_spinBox_c13->setSingleStep(0.001);

        gridLayout_101->addWidget(d_spinBox_c13, 0, 1, 1, 1);

        label_221 = new QLabel(frame_41);
        label_221->setObjectName(QString::fromUtf8("label_221"));

        gridLayout_101->addWidget(label_221, 3, 0, 1, 1);

        d_spinBox_c14 = new QDoubleSpinBox(frame_41);
        d_spinBox_c14->setObjectName(QString::fromUtf8("d_spinBox_c14"));
        d_spinBox_c14->setDecimals(3);
        d_spinBox_c14->setMinimum(-1);
        d_spinBox_c14->setMaximum(1);
        d_spinBox_c14->setSingleStep(0.001);

        gridLayout_101->addWidget(d_spinBox_c14, 1, 1, 1, 1);

        d_spinBox_c15 = new QDoubleSpinBox(frame_41);
        d_spinBox_c15->setObjectName(QString::fromUtf8("d_spinBox_c15"));
        d_spinBox_c15->setDecimals(3);
        d_spinBox_c15->setMinimum(-1);
        d_spinBox_c15->setMaximum(1);
        d_spinBox_c15->setSingleStep(0.001);
        d_spinBox_c15->setValue(0.04);

        gridLayout_101->addWidget(d_spinBox_c15, 2, 1, 1, 1);

        d_spinBox_c16 = new QDoubleSpinBox(frame_41);
        d_spinBox_c16->setObjectName(QString::fromUtf8("d_spinBox_c16"));
        d_spinBox_c16->setDecimals(3);
        d_spinBox_c16->setMinimum(-1);
        d_spinBox_c16->setMaximum(1);
        d_spinBox_c16->setSingleStep(0.001);

        gridLayout_101->addWidget(d_spinBox_c16, 3, 1, 1, 1);

        label_92 = new QLabel(frame_41);
        label_92->setObjectName(QString::fromUtf8("label_92"));

        gridLayout_101->addWidget(label_92, 4, 0, 1, 1);

        d_spinBox_c17 = new QDoubleSpinBox(frame_41);
        d_spinBox_c17->setObjectName(QString::fromUtf8("d_spinBox_c17"));
        d_spinBox_c17->setDecimals(3);
        d_spinBox_c17->setMinimum(-1);
        d_spinBox_c17->setMaximum(1);
        d_spinBox_c17->setSingleStep(0.001);

        gridLayout_101->addWidget(d_spinBox_c17, 4, 1, 1, 1);


        horizontalLayout_4->addWidget(frame_41);

        tabWidget->addTab(tab_swing, QString());
        tab_interface = new QWidget();
        tab_interface->setObjectName(QString::fromUtf8("tab_interface"));
        horizontalLayoutWidget_3 = new QWidget(tab_interface);
        horizontalLayoutWidget_3->setObjectName(QString::fromUtf8("horizontalLayoutWidget_3"));
        horizontalLayoutWidget_3->setGeometry(QRect(10, 10, 671, 171));
        horizontalLayout_5 = new QHBoxLayout(horizontalLayoutWidget_3);
        horizontalLayout_5->setObjectName(QString::fromUtf8("horizontalLayout_5"));
        horizontalLayout_5->setContentsMargins(0, 0, 0, 0);
        frame_61 = new QFrame(horizontalLayoutWidget_3);
        frame_61->setObjectName(QString::fromUtf8("frame_61"));
        frame_61->setFrameShape(QFrame::StyledPanel);
        frame_61->setFrameShadow(QFrame::Raised);
        gridLayout_131 = new QGridLayout(frame_61);
        gridLayout_131->setObjectName(QString::fromUtf8("gridLayout_131"));
        label_291 = new QLabel(frame_61);
        label_291->setObjectName(QString::fromUtf8("label_291"));

        gridLayout_131->addWidget(label_291, 2, 0, 1, 1);

        d_spinBox_c24 = new QDoubleSpinBox(frame_61);
        d_spinBox_c24->setObjectName(QString::fromUtf8("d_spinBox_c24"));
        d_spinBox_c24->setDecimals(3);
        d_spinBox_c24->setMinimum(-1);
        d_spinBox_c24->setMaximum(1);
        d_spinBox_c24->setSingleStep(0.001);
        d_spinBox_c24->setValue(0.005);

        gridLayout_131->addWidget(d_spinBox_c24, 3, 1, 1, 1);

        label_301 = new QLabel(frame_61);
        label_301->setObjectName(QString::fromUtf8("label_301"));

        gridLayout_131->addWidget(label_301, 3, 0, 1, 1);

        d_spinBox_c23 = new QDoubleSpinBox(frame_61);
        d_spinBox_c23->setObjectName(QString::fromUtf8("d_spinBox_c23"));
        d_spinBox_c23->setDecimals(3);
        d_spinBox_c23->setMinimum(-1);
        d_spinBox_c23->setMaximum(1);
        d_spinBox_c23->setSingleStep(0.001);
        d_spinBox_c23->setValue(0.02);

        gridLayout_131->addWidget(d_spinBox_c23, 2, 1, 1, 1);

        d_spinBox_c21 = new QDoubleSpinBox(frame_61);
        d_spinBox_c21->setObjectName(QString::fromUtf8("d_spinBox_c21"));
        d_spinBox_c21->setDecimals(3);
        d_spinBox_c21->setMinimum(-1);
        d_spinBox_c21->setMaximum(10);
        d_spinBox_c21->setSingleStep(0.001);
        d_spinBox_c21->setValue(0.9);

        gridLayout_131->addWidget(d_spinBox_c21, 0, 1, 1, 1);

        label_281 = new QLabel(frame_61);
        label_281->setObjectName(QString::fromUtf8("label_281"));

        gridLayout_131->addWidget(label_281, 0, 0, 1, 1);

        label_261 = new QLabel(frame_61);
        label_261->setObjectName(QString::fromUtf8("label_261"));

        gridLayout_131->addWidget(label_261, 1, 0, 1, 1);

        d_spinBox_c22 = new QDoubleSpinBox(frame_61);
        d_spinBox_c22->setObjectName(QString::fromUtf8("d_spinBox_c22"));
        d_spinBox_c22->setDecimals(4);
        d_spinBox_c22->setMinimum(-1);
        d_spinBox_c22->setMaximum(1);
        d_spinBox_c22->setSingleStep(0.001);

        gridLayout_131->addWidget(d_spinBox_c22, 1, 1, 1, 1);


        horizontalLayout_5->addWidget(frame_61);

        formFrame_8 = new QFrame(horizontalLayoutWidget_3);
        formFrame_8->setObjectName(QString::fromUtf8("formFrame_8"));
        formLayout_10 = new QFormLayout(formFrame_8);
        formLayout_10->setObjectName(QString::fromUtf8("formLayout_10"));
        formLayout_10->setContentsMargins(9, 9, 9, 9);
        label_311 = new QLabel(formFrame_8);
        label_311->setObjectName(QString::fromUtf8("label_311"));

        formLayout_10->setWidget(0, QFormLayout::LabelRole, label_311);

        d_spinBox_c25 = new QDoubleSpinBox(formFrame_8);
        d_spinBox_c25->setObjectName(QString::fromUtf8("d_spinBox_c25"));
        d_spinBox_c25->setDecimals(3);
        d_spinBox_c25->setMinimum(-1);
        d_spinBox_c25->setMaximum(1);
        d_spinBox_c25->setSingleStep(0.001);
        d_spinBox_c25->setValue(1);

        formLayout_10->setWidget(0, QFormLayout::FieldRole, d_spinBox_c25);

        label_321 = new QLabel(formFrame_8);
        label_321->setObjectName(QString::fromUtf8("label_321"));

        formLayout_10->setWidget(1, QFormLayout::LabelRole, label_321);

        d_spinBox_c26 = new QDoubleSpinBox(formFrame_8);
        d_spinBox_c26->setObjectName(QString::fromUtf8("d_spinBox_c26"));
        d_spinBox_c26->setDecimals(3);
        d_spinBox_c26->setMinimum(-1);
        d_spinBox_c26->setMaximum(1);
        d_spinBox_c26->setSingleStep(0.001);
        d_spinBox_c26->setValue(1);

        formLayout_10->setWidget(1, QFormLayout::FieldRole, d_spinBox_c26);

        label_351 = new QLabel(formFrame_8);
        label_351->setObjectName(QString::fromUtf8("label_351"));

        formLayout_10->setWidget(2, QFormLayout::LabelRole, label_351);

        d_spinBox_c27 = new QDoubleSpinBox(formFrame_8);
        d_spinBox_c27->setObjectName(QString::fromUtf8("d_spinBox_c27"));
        d_spinBox_c27->setDecimals(3);
        d_spinBox_c27->setMinimum(-1);
        d_spinBox_c27->setMaximum(1);
        d_spinBox_c27->setSingleStep(0.001);

        formLayout_10->setWidget(2, QFormLayout::FieldRole, d_spinBox_c27);


        horizontalLayout_5->addWidget(formFrame_8);

        tabWidget->addTab(tab_interface, QString());
        tabWidget_control->addTab(tab_capture_step, QString());
        tab_quinticwalk = new QWidget();
        tab_quinticwalk->setObjectName(QString::fromUtf8("tab_quinticwalk"));
        group_parameterqw = new QGroupBox(tab_quinticwalk);
        group_parameterqw->setObjectName(QString::fromUtf8("group_parameterqw"));
        group_parameterqw->setGeometry(QRect(10, 10, 711, 331));
        tabWidget_2 = new QTabWidget(group_parameterqw);
        tabWidget_2->setObjectName(QString::fromUtf8("tabWidget_2"));
        tabWidget_2->setGeometry(QRect(350, 20, 361, 301));
        tab_foot = new QWidget();
        tab_foot->setObjectName(QString::fromUtf8("tab_foot"));
        formLayoutWidget_9 = new QWidget(tab_foot);
        formLayoutWidget_9->setObjectName(QString::fromUtf8("formLayoutWidget_9"));
        formLayoutWidget_9->setGeometry(QRect(10, 10, 281, 249));
        formLayout_14 = new QFormLayout(formLayoutWidget_9);
        formLayout_14->setObjectName(QString::fromUtf8("formLayout_14"));
        formLayout_14->setContentsMargins(9, 9, 9, 9);
        label_footDistance = new QLabel(formLayoutWidget_9);
        label_footDistance->setObjectName(QString::fromUtf8("label_footDistance"));

        formLayout_14->setWidget(0, QFormLayout::LabelRole, label_footDistance);

        label_footRise = new QLabel(formLayoutWidget_9);
        label_footRise->setObjectName(QString::fromUtf8("label_footRise"));

        formLayout_14->setWidget(1, QFormLayout::LabelRole, label_footRise);

        label_footPutDownZOffset = new QLabel(formLayoutWidget_9);
        label_footPutDownZOffset->setObjectName(QString::fromUtf8("label_footPutDownZOffset"));

        formLayout_14->setWidget(2, QFormLayout::LabelRole, label_footPutDownZOffset);

        label_footPutDownPhase = new QLabel(formLayoutWidget_9);
        label_footPutDownPhase->setObjectName(QString::fromUtf8("label_footPutDownPhase"));

        formLayout_14->setWidget(3, QFormLayout::LabelRole, label_footPutDownPhase);

        label_footApexPhase = new QLabel(formLayoutWidget_9);
        label_footApexPhase->setObjectName(QString::fromUtf8("label_footApexPhase"));

        formLayout_14->setWidget(4, QFormLayout::LabelRole, label_footApexPhase);

        label_footOvershootRatio = new QLabel(formLayoutWidget_9);
        label_footOvershootRatio->setObjectName(QString::fromUtf8("label_footOvershootRatio"));

        formLayout_14->setWidget(5, QFormLayout::LabelRole, label_footOvershootRatio);

        label_footOvershootPhase = new QLabel(formLayoutWidget_9);
        label_footOvershootPhase->setObjectName(QString::fromUtf8("label_footOvershootPhase"));

        formLayout_14->setWidget(6, QFormLayout::LabelRole, label_footOvershootPhase);

        dspin_qw_foot_Distance = new QDoubleSpinBox(formLayoutWidget_9);
        dspin_qw_foot_Distance->setObjectName(QString::fromUtf8("dspin_qw_foot_Distance"));
        dspin_qw_foot_Distance->setDecimals(3);
        dspin_qw_foot_Distance->setMaximum(3);
        dspin_qw_foot_Distance->setSingleStep(0.001);

        formLayout_14->setWidget(0, QFormLayout::FieldRole, dspin_qw_foot_Distance);

        dspin_qw_foot_Raise = new QDoubleSpinBox(formLayoutWidget_9);
        dspin_qw_foot_Raise->setObjectName(QString::fromUtf8("dspin_qw_foot_Raise"));
        dspin_qw_foot_Raise->setDecimals(3);
        dspin_qw_foot_Raise->setMaximum(3);
        dspin_qw_foot_Raise->setSingleStep(0.001);

        formLayout_14->setWidget(1, QFormLayout::FieldRole, dspin_qw_foot_Raise);

        dspin_qw_foot_putdownOffset = new QDoubleSpinBox(formLayoutWidget_9);
        dspin_qw_foot_putdownOffset->setObjectName(QString::fromUtf8("dspin_qw_foot_putdownOffset"));
        dspin_qw_foot_putdownOffset->setDecimals(3);
        dspin_qw_foot_putdownOffset->setMaximum(10);
        dspin_qw_foot_putdownOffset->setSingleStep(0.001);

        formLayout_14->setWidget(2, QFormLayout::FieldRole, dspin_qw_foot_putdownOffset);

        dspin_qw_foot_putdownPhase = new QDoubleSpinBox(formLayoutWidget_9);
        dspin_qw_foot_putdownPhase->setObjectName(QString::fromUtf8("dspin_qw_foot_putdownPhase"));
        dspin_qw_foot_putdownPhase->setDecimals(3);
        dspin_qw_foot_putdownPhase->setMaximum(1);
        dspin_qw_foot_putdownPhase->setSingleStep(0.001);

        formLayout_14->setWidget(3, QFormLayout::FieldRole, dspin_qw_foot_putdownPhase);

        dspin_qw_foot_apexphase = new QDoubleSpinBox(formLayoutWidget_9);
        dspin_qw_foot_apexphase->setObjectName(QString::fromUtf8("dspin_qw_foot_apexphase"));
        dspin_qw_foot_apexphase->setDecimals(3);
        dspin_qw_foot_apexphase->setMaximum(1);
        dspin_qw_foot_apexphase->setSingleStep(0.001);

        formLayout_14->setWidget(4, QFormLayout::FieldRole, dspin_qw_foot_apexphase);

        dspin_qw_foot_overshootRatio = new QDoubleSpinBox(formLayoutWidget_9);
        dspin_qw_foot_overshootRatio->setObjectName(QString::fromUtf8("dspin_qw_foot_overshootRatio"));
        dspin_qw_foot_overshootRatio->setDecimals(3);
        dspin_qw_foot_overshootRatio->setMaximum(10);

        formLayout_14->setWidget(5, QFormLayout::FieldRole, dspin_qw_foot_overshootRatio);

        dspin_qw_foot_overshootPahse = new QDoubleSpinBox(formLayoutWidget_9);
        dspin_qw_foot_overshootPahse->setObjectName(QString::fromUtf8("dspin_qw_foot_overshootPahse"));
        dspin_qw_foot_overshootPahse->setDecimals(3);
        dspin_qw_foot_overshootPahse->setMaximum(1);
        dspin_qw_foot_overshootPahse->setSingleStep(0.001);

        formLayout_14->setWidget(6, QFormLayout::FieldRole, dspin_qw_foot_overshootPahse);

        tabWidget_2->addTab(tab_foot, QString());
        tab_trunk = new QWidget();
        tab_trunk->setObjectName(QString::fromUtf8("tab_trunk"));
        formLayoutWidget_8 = new QWidget(tab_trunk);
        formLayoutWidget_8->setObjectName(QString::fromUtf8("formLayoutWidget_8"));
        formLayoutWidget_8->setGeometry(QRect(10, 10, 281, 249));
        formLayout_13 = new QFormLayout(formLayoutWidget_8);
        formLayout_13->setObjectName(QString::fromUtf8("formLayout_13"));
        formLayout_13->setContentsMargins(9, 9, 9, 9);
        label_trunkHeight = new QLabel(formLayoutWidget_8);
        label_trunkHeight->setObjectName(QString::fromUtf8("label_trunkHeight"));

        formLayout_13->setWidget(0, QFormLayout::LabelRole, label_trunkHeight);

        label_trunkPitch = new QLabel(formLayoutWidget_8);
        label_trunkPitch->setObjectName(QString::fromUtf8("label_trunkPitch"));

        formLayout_13->setWidget(1, QFormLayout::LabelRole, label_trunkPitch);

        label_trunkPhase = new QLabel(formLayoutWidget_8);
        label_trunkPhase->setObjectName(QString::fromUtf8("label_trunkPhase"));

        formLayout_13->setWidget(2, QFormLayout::LabelRole, label_trunkPhase);

        label_trunkXOffset = new QLabel(formLayoutWidget_8);
        label_trunkXOffset->setObjectName(QString::fromUtf8("label_trunkXOffset"));

        formLayout_13->setWidget(3, QFormLayout::LabelRole, label_trunkXOffset);

        label_trunkYOffset = new QLabel(formLayoutWidget_8);
        label_trunkYOffset->setObjectName(QString::fromUtf8("label_trunkYOffset"));

        formLayout_13->setWidget(4, QFormLayout::LabelRole, label_trunkYOffset);

        label_trunkSwing = new QLabel(formLayoutWidget_8);
        label_trunkSwing->setObjectName(QString::fromUtf8("label_trunkSwing"));

        formLayout_13->setWidget(5, QFormLayout::LabelRole, label_trunkSwing);

        label_trunkPause = new QLabel(formLayoutWidget_8);
        label_trunkPause->setObjectName(QString::fromUtf8("label_trunkPause"));

        formLayout_13->setWidget(6, QFormLayout::LabelRole, label_trunkPause);

        dspin_qw_trunk_height = new QDoubleSpinBox(formLayoutWidget_8);
        dspin_qw_trunk_height->setObjectName(QString::fromUtf8("dspin_qw_trunk_height"));
        dspin_qw_trunk_height->setDecimals(3);
        dspin_qw_trunk_height->setMaximum(1);
        dspin_qw_trunk_height->setSingleStep(0.001);

        formLayout_13->setWidget(0, QFormLayout::FieldRole, dspin_qw_trunk_height);

        dspin_qw_trunk_pitch = new QDoubleSpinBox(formLayoutWidget_8);
        dspin_qw_trunk_pitch->setObjectName(QString::fromUtf8("dspin_qw_trunk_pitch"));
        dspin_qw_trunk_pitch->setDecimals(3);
        dspin_qw_trunk_pitch->setMinimum(-60);
        dspin_qw_trunk_pitch->setMaximum(60);
        dspin_qw_trunk_pitch->setSingleStep(0.1);

        formLayout_13->setWidget(1, QFormLayout::FieldRole, dspin_qw_trunk_pitch);

        dspin_qw_trunk_phase = new QDoubleSpinBox(formLayoutWidget_8);
        dspin_qw_trunk_phase->setObjectName(QString::fromUtf8("dspin_qw_trunk_phase"));
        dspin_qw_trunk_phase->setDecimals(3);
        dspin_qw_trunk_phase->setMaximum(1);
        dspin_qw_trunk_phase->setSingleStep(0.001);

        formLayout_13->setWidget(2, QFormLayout::FieldRole, dspin_qw_trunk_phase);

        dspin_qw_trunk_xoffset = new QDoubleSpinBox(formLayoutWidget_8);
        dspin_qw_trunk_xoffset->setObjectName(QString::fromUtf8("dspin_qw_trunk_xoffset"));
        dspin_qw_trunk_xoffset->setDecimals(3);
        dspin_qw_trunk_xoffset->setMinimum(-1);
        dspin_qw_trunk_xoffset->setMaximum(1);
        dspin_qw_trunk_xoffset->setSingleStep(0.001);

        formLayout_13->setWidget(3, QFormLayout::FieldRole, dspin_qw_trunk_xoffset);

        dspin_qw_trunk_yoffset = new QDoubleSpinBox(formLayoutWidget_8);
        dspin_qw_trunk_yoffset->setObjectName(QString::fromUtf8("dspin_qw_trunk_yoffset"));
        dspin_qw_trunk_yoffset->setDecimals(3);
        dspin_qw_trunk_yoffset->setMinimum(-1);
        dspin_qw_trunk_yoffset->setMaximum(1);
        dspin_qw_trunk_yoffset->setSingleStep(0.001);

        formLayout_13->setWidget(4, QFormLayout::FieldRole, dspin_qw_trunk_yoffset);

        dspin_qw_trunk_swing = new QDoubleSpinBox(formLayoutWidget_8);
        dspin_qw_trunk_swing->setObjectName(QString::fromUtf8("dspin_qw_trunk_swing"));
        dspin_qw_trunk_swing->setDecimals(3);
        dspin_qw_trunk_swing->setMaximum(10);
        dspin_qw_trunk_swing->setSingleStep(0.001);

        formLayout_13->setWidget(5, QFormLayout::FieldRole, dspin_qw_trunk_swing);

        dspin_qw_trunk_pause = new QDoubleSpinBox(formLayoutWidget_8);
        dspin_qw_trunk_pause->setObjectName(QString::fromUtf8("dspin_qw_trunk_pause"));
        dspin_qw_trunk_pause->setDecimals(3);
        dspin_qw_trunk_pause->setMaximum(1);
        dspin_qw_trunk_pause->setSingleStep(0.001);

        formLayout_13->setWidget(6, QFormLayout::FieldRole, dspin_qw_trunk_pause);

        tabWidget_2->addTab(tab_trunk, QString());
        tab_trunk2 = new QWidget();
        tab_trunk2->setObjectName(QString::fromUtf8("tab_trunk2"));
        formLayoutWidget_10 = new QWidget(tab_trunk2);
        formLayoutWidget_10->setObjectName(QString::fromUtf8("formLayoutWidget_10"));
        formLayoutWidget_10->setGeometry(QRect(10, 10, 347, 221));
        formLayout_15 = new QFormLayout(formLayoutWidget_10);
        formLayout_15->setObjectName(QString::fromUtf8("formLayout_15"));
        formLayout_15->setContentsMargins(9, 9, 9, 9);
        label_trunkXOffsetPCoefForward = new QLabel(formLayoutWidget_10);
        label_trunkXOffsetPCoefForward->setObjectName(QString::fromUtf8("label_trunkXOffsetPCoefForward"));

        formLayout_15->setWidget(0, QFormLayout::LabelRole, label_trunkXOffsetPCoefForward);

        dspin_qw_trunk_XOffsetforward = new QDoubleSpinBox(formLayoutWidget_10);
        dspin_qw_trunk_XOffsetforward->setObjectName(QString::fromUtf8("dspin_qw_trunk_XOffsetforward"));
        dspin_qw_trunk_XOffsetforward->setDecimals(3);
        dspin_qw_trunk_XOffsetforward->setMinimum(-10);
        dspin_qw_trunk_XOffsetforward->setMaximum(10);
        dspin_qw_trunk_XOffsetforward->setSingleStep(0.001);

        formLayout_15->setWidget(0, QFormLayout::FieldRole, dspin_qw_trunk_XOffsetforward);

        label_trunkXOffsetPCoefTurn = new QLabel(formLayoutWidget_10);
        label_trunkXOffsetPCoefTurn->setObjectName(QString::fromUtf8("label_trunkXOffsetPCoefTurn"));

        formLayout_15->setWidget(1, QFormLayout::LabelRole, label_trunkXOffsetPCoefTurn);

        dspin_qw_trunk_XOffsetturn = new QDoubleSpinBox(formLayoutWidget_10);
        dspin_qw_trunk_XOffsetturn->setObjectName(QString::fromUtf8("dspin_qw_trunk_XOffsetturn"));
        dspin_qw_trunk_XOffsetturn->setDecimals(3);
        dspin_qw_trunk_XOffsetturn->setMinimum(-10);
        dspin_qw_trunk_XOffsetturn->setMaximum(10);
        dspin_qw_trunk_XOffsetturn->setSingleStep(0.001);

        formLayout_15->setWidget(1, QFormLayout::FieldRole, dspin_qw_trunk_XOffsetturn);

        label_pitch_error_tol = new QLabel(formLayoutWidget_10);
        label_pitch_error_tol->setObjectName(QString::fromUtf8("label_pitch_error_tol"));

        formLayout_15->setWidget(2, QFormLayout::LabelRole, label_pitch_error_tol);

        dspin_pitch_error_tol = new QDoubleSpinBox(formLayoutWidget_10);
        dspin_pitch_error_tol->setObjectName(QString::fromUtf8("dspin_pitch_error_tol"));
        dspin_pitch_error_tol->setDecimals(3);
        dspin_pitch_error_tol->setMinimum(-100);
        dspin_pitch_error_tol->setMaximum(100);
        dspin_pitch_error_tol->setSingleStep(0.001);

        formLayout_15->setWidget(2, QFormLayout::FieldRole, dspin_pitch_error_tol);

        label_setpointPitch = new QLabel(formLayoutWidget_10);
        label_setpointPitch->setObjectName(QString::fromUtf8("label_setpointPitch"));

        formLayout_15->setWidget(3, QFormLayout::LabelRole, label_setpointPitch);

        dspin_setpointPitch = new QDoubleSpinBox(formLayoutWidget_10);
        dspin_setpointPitch->setObjectName(QString::fromUtf8("dspin_setpointPitch"));
        dspin_setpointPitch->setDecimals(3);
        dspin_setpointPitch->setMinimum(-100);
        dspin_setpointPitch->setMaximum(100);
        dspin_setpointPitch->setSingleStep(0.001);

        formLayout_15->setWidget(3, QFormLayout::FieldRole, dspin_setpointPitch);

        tabWidget_2->addTab(tab_trunk2, QString());
        tab_fuzzy = new QWidget();
        tab_fuzzy->setObjectName(QString::fromUtf8("tab_fuzzy"));
        formLayoutWidget_12 = new QWidget(tab_fuzzy);
        formLayoutWidget_12->setObjectName(QString::fromUtf8("formLayoutWidget_12"));
        formLayoutWidget_12->setGeometry(QRect(180, 10, 151, 240));
        formLayout_21 = new QFormLayout(formLayoutWidget_12);
        formLayout_21->setObjectName(QString::fromUtf8("formLayout_21"));
        formLayout_21->setHorizontalSpacing(6);
        formLayout_21->setContentsMargins(9, 9, 9, 9);
        label_KD0 = new QLabel(formLayoutWidget_12);
        label_KD0->setObjectName(QString::fromUtf8("label_KD0"));

        formLayout_21->setWidget(0, QFormLayout::LabelRole, label_KD0);

        dspin_KD_0 = new QDoubleSpinBox(formLayoutWidget_12);
        dspin_KD_0->setObjectName(QString::fromUtf8("dspin_KD_0"));

        formLayout_21->setWidget(0, QFormLayout::FieldRole, dspin_KD_0);

        label_KD1 = new QLabel(formLayoutWidget_12);
        label_KD1->setObjectName(QString::fromUtf8("label_KD1"));

        formLayout_21->setWidget(1, QFormLayout::LabelRole, label_KD1);

        dspin_KD_1 = new QDoubleSpinBox(formLayoutWidget_12);
        dspin_KD_1->setObjectName(QString::fromUtf8("dspin_KD_1"));

        formLayout_21->setWidget(1, QFormLayout::FieldRole, dspin_KD_1);

        label_KD2 = new QLabel(formLayoutWidget_12);
        label_KD2->setObjectName(QString::fromUtf8("label_KD2"));

        formLayout_21->setWidget(2, QFormLayout::LabelRole, label_KD2);

        dspin_KD_2 = new QDoubleSpinBox(formLayoutWidget_12);
        dspin_KD_2->setObjectName(QString::fromUtf8("dspin_KD_2"));

        formLayout_21->setWidget(2, QFormLayout::FieldRole, dspin_KD_2);

        label_KD3 = new QLabel(formLayoutWidget_12);
        label_KD3->setObjectName(QString::fromUtf8("label_KD3"));

        formLayout_21->setWidget(3, QFormLayout::LabelRole, label_KD3);

        dspin_KD_3 = new QDoubleSpinBox(formLayoutWidget_12);
        dspin_KD_3->setObjectName(QString::fromUtf8("dspin_KD_3"));

        formLayout_21->setWidget(3, QFormLayout::FieldRole, dspin_KD_3);

        label_KD4 = new QLabel(formLayoutWidget_12);
        label_KD4->setObjectName(QString::fromUtf8("label_KD4"));

        formLayout_21->setWidget(4, QFormLayout::LabelRole, label_KD4);

        dspin_KD_4 = new QDoubleSpinBox(formLayoutWidget_12);
        dspin_KD_4->setObjectName(QString::fromUtf8("dspin_KD_4"));

        formLayout_21->setWidget(4, QFormLayout::FieldRole, dspin_KD_4);

        formLayoutWidget_14 = new QWidget(tab_fuzzy);
        formLayoutWidget_14->setObjectName(QString::fromUtf8("formLayoutWidget_14"));
        formLayoutWidget_14->setGeometry(QRect(10, 10, 151, 240));
        formLayout_26 = new QFormLayout(formLayoutWidget_14);
        formLayout_26->setObjectName(QString::fromUtf8("formLayout_26"));
        formLayout_26->setHorizontalSpacing(6);
        formLayout_26->setContentsMargins(9, 9, 9, 9);
        label_KP0 = new QLabel(formLayoutWidget_14);
        label_KP0->setObjectName(QString::fromUtf8("label_KP0"));

        formLayout_26->setWidget(0, QFormLayout::LabelRole, label_KP0);

        dspin_KP_0 = new QDoubleSpinBox(formLayoutWidget_14);
        dspin_KP_0->setObjectName(QString::fromUtf8("dspin_KP_0"));

        formLayout_26->setWidget(0, QFormLayout::FieldRole, dspin_KP_0);

        label_KP1 = new QLabel(formLayoutWidget_14);
        label_KP1->setObjectName(QString::fromUtf8("label_KP1"));

        formLayout_26->setWidget(1, QFormLayout::LabelRole, label_KP1);

        dspin_KP_1 = new QDoubleSpinBox(formLayoutWidget_14);
        dspin_KP_1->setObjectName(QString::fromUtf8("dspin_KP_1"));

        formLayout_26->setWidget(1, QFormLayout::FieldRole, dspin_KP_1);

        label_KP2 = new QLabel(formLayoutWidget_14);
        label_KP2->setObjectName(QString::fromUtf8("label_KP2"));

        formLayout_26->setWidget(2, QFormLayout::LabelRole, label_KP2);

        dspin_KP_2 = new QDoubleSpinBox(formLayoutWidget_14);
        dspin_KP_2->setObjectName(QString::fromUtf8("dspin_KP_2"));

        formLayout_26->setWidget(2, QFormLayout::FieldRole, dspin_KP_2);

        label_KP3 = new QLabel(formLayoutWidget_14);
        label_KP3->setObjectName(QString::fromUtf8("label_KP3"));

        formLayout_26->setWidget(3, QFormLayout::LabelRole, label_KP3);

        dspin_KP_3 = new QDoubleSpinBox(formLayoutWidget_14);
        dspin_KP_3->setObjectName(QString::fromUtf8("dspin_KP_3"));

        formLayout_26->setWidget(3, QFormLayout::FieldRole, dspin_KP_3);

        label_KP4 = new QLabel(formLayoutWidget_14);
        label_KP4->setObjectName(QString::fromUtf8("label_KP4"));

        formLayout_26->setWidget(4, QFormLayout::LabelRole, label_KP4);

        dspin_KP_4 = new QDoubleSpinBox(formLayoutWidget_14);
        dspin_KP_4->setObjectName(QString::fromUtf8("dspin_KP_4"));

        formLayout_26->setWidget(4, QFormLayout::FieldRole, dspin_KP_4);

        tabWidget_2->addTab(tab_fuzzy, QString());
        tab_fuzzy2 = new QWidget();
        tab_fuzzy2->setObjectName(QString::fromUtf8("tab_fuzzy2"));
        formLayoutWidget_13 = new QWidget(tab_fuzzy2);
        formLayoutWidget_13->setObjectName(QString::fromUtf8("formLayoutWidget_13"));
        formLayoutWidget_13->setGeometry(QRect(10, 10, 174, 240));
        formLayout_25 = new QFormLayout(formLayoutWidget_13);
        formLayout_25->setObjectName(QString::fromUtf8("formLayout_25"));
        formLayout_25->setHorizontalSpacing(6);
        formLayout_25->setContentsMargins(9, 9, 9, 9);
        label_Gyro0 = new QLabel(formLayoutWidget_13);
        label_Gyro0->setObjectName(QString::fromUtf8("label_Gyro0"));

        formLayout_25->setWidget(0, QFormLayout::LabelRole, label_Gyro0);

        dspin_Gyro_0 = new QDoubleSpinBox(formLayoutWidget_13);
        dspin_Gyro_0->setObjectName(QString::fromUtf8("dspin_Gyro_0"));

        formLayout_25->setWidget(0, QFormLayout::FieldRole, dspin_Gyro_0);

        label_Gyro1 = new QLabel(formLayoutWidget_13);
        label_Gyro1->setObjectName(QString::fromUtf8("label_Gyro1"));

        formLayout_25->setWidget(1, QFormLayout::LabelRole, label_Gyro1);

        dspin_Gyro_1 = new QDoubleSpinBox(formLayoutWidget_13);
        dspin_Gyro_1->setObjectName(QString::fromUtf8("dspin_Gyro_1"));

        formLayout_25->setWidget(1, QFormLayout::FieldRole, dspin_Gyro_1);

        label_Gyro2 = new QLabel(formLayoutWidget_13);
        label_Gyro2->setObjectName(QString::fromUtf8("label_Gyro2"));

        formLayout_25->setWidget(2, QFormLayout::LabelRole, label_Gyro2);

        dspin_Gyro_2 = new QDoubleSpinBox(formLayoutWidget_13);
        dspin_Gyro_2->setObjectName(QString::fromUtf8("dspin_Gyro_2"));

        formLayout_25->setWidget(2, QFormLayout::FieldRole, dspin_Gyro_2);

        label_Gyro3 = new QLabel(formLayoutWidget_13);
        label_Gyro3->setObjectName(QString::fromUtf8("label_Gyro3"));

        formLayout_25->setWidget(3, QFormLayout::LabelRole, label_Gyro3);

        dspin_Gyro_3 = new QDoubleSpinBox(formLayoutWidget_13);
        dspin_Gyro_3->setObjectName(QString::fromUtf8("dspin_Gyro_3"));

        formLayout_25->setWidget(3, QFormLayout::FieldRole, dspin_Gyro_3);

        label_Gyro4 = new QLabel(formLayoutWidget_13);
        label_Gyro4->setObjectName(QString::fromUtf8("label_Gyro4"));

        formLayout_25->setWidget(4, QFormLayout::LabelRole, label_Gyro4);

        dspin_Gyro_4 = new QDoubleSpinBox(formLayoutWidget_13);
        dspin_Gyro_4->setObjectName(QString::fromUtf8("dspin_Gyro_4"));

        formLayout_25->setWidget(4, QFormLayout::FieldRole, dspin_Gyro_4);

        formLayoutWidget_11 = new QWidget(tab_fuzzy2);
        formLayoutWidget_11->setObjectName(QString::fromUtf8("formLayoutWidget_11"));
        formLayoutWidget_11->setGeometry(QRect(180, 10, 181, 240));
        formLayout_16 = new QFormLayout(formLayoutWidget_11);
        formLayout_16->setObjectName(QString::fromUtf8("formLayout_16"));
        formLayout_16->setHorizontalSpacing(6);
        formLayout_16->setContentsMargins(9, 9, 9, 9);
        label_Angle0 = new QLabel(formLayoutWidget_11);
        label_Angle0->setObjectName(QString::fromUtf8("label_Angle0"));

        formLayout_16->setWidget(0, QFormLayout::LabelRole, label_Angle0);

        dspin_Angle_0 = new QDoubleSpinBox(formLayoutWidget_11);
        dspin_Angle_0->setObjectName(QString::fromUtf8("dspin_Angle_0"));

        formLayout_16->setWidget(0, QFormLayout::FieldRole, dspin_Angle_0);

        label_Angle1 = new QLabel(formLayoutWidget_11);
        label_Angle1->setObjectName(QString::fromUtf8("label_Angle1"));

        formLayout_16->setWidget(1, QFormLayout::LabelRole, label_Angle1);

        dspin_Angle_1 = new QDoubleSpinBox(formLayoutWidget_11);
        dspin_Angle_1->setObjectName(QString::fromUtf8("dspin_Angle_1"));

        formLayout_16->setWidget(1, QFormLayout::FieldRole, dspin_Angle_1);

        label_Angle2 = new QLabel(formLayoutWidget_11);
        label_Angle2->setObjectName(QString::fromUtf8("label_Angle2"));

        formLayout_16->setWidget(2, QFormLayout::LabelRole, label_Angle2);

        dspin_Angle_2 = new QDoubleSpinBox(formLayoutWidget_11);
        dspin_Angle_2->setObjectName(QString::fromUtf8("dspin_Angle_2"));

        formLayout_16->setWidget(2, QFormLayout::FieldRole, dspin_Angle_2);

        label_Angle3 = new QLabel(formLayoutWidget_11);
        label_Angle3->setObjectName(QString::fromUtf8("label_Angle3"));

        formLayout_16->setWidget(3, QFormLayout::LabelRole, label_Angle3);

        dspin_Angle_3 = new QDoubleSpinBox(formLayoutWidget_11);
        dspin_Angle_3->setObjectName(QString::fromUtf8("dspin_Angle_3"));

        formLayout_16->setWidget(3, QFormLayout::FieldRole, dspin_Angle_3);

        label_Angle4 = new QLabel(formLayoutWidget_11);
        label_Angle4->setObjectName(QString::fromUtf8("label_Angle4"));

        formLayout_16->setWidget(4, QFormLayout::LabelRole, label_Angle4);

        dspin_Angle_4 = new QDoubleSpinBox(formLayoutWidget_11);
        dspin_Angle_4->setObjectName(QString::fromUtf8("dspin_Angle_4"));

        formLayout_16->setWidget(4, QFormLayout::FieldRole, dspin_Angle_4);

        tabWidget_2->addTab(tab_fuzzy2, QString());
        formLayoutWidget_7 = new QWidget(group_parameterqw);
        formLayoutWidget_7->setObjectName(QString::fromUtf8("formLayoutWidget_7"));
        formLayoutWidget_7->setGeometry(QRect(20, 30, 231, 112));
        formLayout_12 = new QFormLayout(formLayoutWidget_7);
        formLayout_12->setObjectName(QString::fromUtf8("formLayout_12"));
        formLayout_12->setHorizontalSpacing(6);
        formLayout_12->setContentsMargins(9, 9, 9, 9);
        label_freq = new QLabel(formLayoutWidget_7);
        label_freq->setObjectName(QString::fromUtf8("label_freq"));

        formLayout_12->setWidget(0, QFormLayout::LabelRole, label_freq);

        dspin_qw_freq = new QDoubleSpinBox(formLayoutWidget_7);
        dspin_qw_freq->setObjectName(QString::fromUtf8("dspin_qw_freq"));
        dspin_qw_freq->setDecimals(3);
        dspin_qw_freq->setMaximum(3);
        dspin_qw_freq->setSingleStep(0.01);

        formLayout_12->setWidget(0, QFormLayout::FieldRole, dspin_qw_freq);

        label_dspratio = new QLabel(formLayoutWidget_7);
        label_dspratio->setObjectName(QString::fromUtf8("label_dspratio"));

        formLayout_12->setWidget(1, QFormLayout::LabelRole, label_dspratio);

        dspin_qw_dspratio = new QDoubleSpinBox(formLayoutWidget_7);
        dspin_qw_dspratio->setObjectName(QString::fromUtf8("dspin_qw_dspratio"));
        dspin_qw_dspratio->setDecimals(3);
        dspin_qw_dspratio->setMaximum(1);
        dspin_qw_dspratio->setSingleStep(0.001);

        formLayout_12->setWidget(1, QFormLayout::FieldRole, dspin_qw_dspratio);

        comboBox = new QComboBox(formLayoutWidget_7);
        comboBox->setObjectName(QString::fromUtf8("comboBox"));

        formLayout_12->setWidget(2, QFormLayout::FieldRole, comboBox);

        label_69 = new QLabel(formLayoutWidget_7);
        label_69->setObjectName(QString::fromUtf8("label_69"));

        formLayout_12->setWidget(2, QFormLayout::LabelRole, label_69);

        checkBox_tuning = new QCheckBox(group_parameterqw);
        checkBox_tuning->setObjectName(QString::fromUtf8("checkBox_tuning"));
        checkBox_tuning->setGeometry(QRect(20, 140, 231, 21));
        widget_222 = new QWidget(group_parameterqw);
        widget_222->setObjectName(QString::fromUtf8("widget_222"));
        widget_222->setGeometry(QRect(10, 160, 311, 160));
        gridLayout_31 = new QGridLayout(widget_222);
        gridLayout_31->setObjectName(QString::fromUtf8("gridLayout_31"));
        dspin_quintic_walk_XMove = new QDoubleSpinBox(widget_222);
        dspin_quintic_walk_XMove->setObjectName(QString::fromUtf8("dspin_quintic_walk_XMove"));
        dspin_quintic_walk_XMove->setDecimals(3);
        dspin_quintic_walk_XMove->setMinimum(-1);
        dspin_quintic_walk_XMove->setMaximum(1);
        dspin_quintic_walk_XMove->setSingleStep(0.001);

        gridLayout_31->addWidget(dspin_quintic_walk_XMove, 0, 2, 1, 1);

        label_zmove = new QLabel(widget_222);
        label_zmove->setObjectName(QString::fromUtf8("label_zmove"));

        gridLayout_31->addWidget(label_zmove, 2, 1, 1, 1);

        label_68 = new QLabel(widget_222);
        label_68->setObjectName(QString::fromUtf8("label_68"));

        gridLayout_31->addWidget(label_68, 4, 1, 1, 2);

        dspin_quintic_walk_YMove = new QDoubleSpinBox(widget_222);
        dspin_quintic_walk_YMove->setObjectName(QString::fromUtf8("dspin_quintic_walk_YMove"));
        dspin_quintic_walk_YMove->setDecimals(3);
        dspin_quintic_walk_YMove->setMinimum(-10);
        dspin_quintic_walk_YMove->setMaximum(10);
        dspin_quintic_walk_YMove->setSingleStep(0.001);

        gridLayout_31->addWidget(dspin_quintic_walk_YMove, 1, 2, 1, 1);

        button_quintic_walk_start = new QPushButton(widget_222);
        button_quintic_walk_start->setObjectName(QString::fromUtf8("button_quintic_walk_start"));

        gridLayout_31->addWidget(button_quintic_walk_start, 3, 0, 1, 1);

        label_ymove = new QLabel(widget_222);
        label_ymove->setObjectName(QString::fromUtf8("label_ymove"));

        gridLayout_31->addWidget(label_ymove, 1, 1, 1, 1);

        label_xmove = new QLabel(widget_222);
        label_xmove->setObjectName(QString::fromUtf8("label_xmove"));

        gridLayout_31->addWidget(label_xmove, 0, 1, 1, 1);

        label_66 = new QLabel(widget_222);
        label_66->setObjectName(QString::fromUtf8("label_66"));

        gridLayout_31->addWidget(label_66, 3, 1, 1, 2);

        button_quintic_walk_save = new QPushButton(widget_222);
        button_quintic_walk_save->setObjectName(QString::fromUtf8("button_quintic_walk_save"));

        gridLayout_31->addWidget(button_quintic_walk_save, 1, 0, 1, 1);

        button_quintic_walk_apply = new QPushButton(widget_222);
        button_quintic_walk_apply->setObjectName(QString::fromUtf8("button_quintic_walk_apply"));

        gridLayout_31->addWidget(button_quintic_walk_apply, 2, 0, 1, 1);

        dspin_quintic_walk_angle = new QDoubleSpinBox(widget_222);
        dspin_quintic_walk_angle->setObjectName(QString::fromUtf8("dspin_quintic_walk_angle"));
        dspin_quintic_walk_angle->setDecimals(3);
        dspin_quintic_walk_angle->setMinimum(-1);
        dspin_quintic_walk_angle->setMaximum(1);
        dspin_quintic_walk_angle->setSingleStep(0.001);

        gridLayout_31->addWidget(dspin_quintic_walk_angle, 2, 2, 1, 1);

        button_quintic_walk_refresh = new QPushButton(widget_222);
        button_quintic_walk_refresh->setObjectName(QString::fromUtf8("button_quintic_walk_refresh"));

        gridLayout_31->addWidget(button_quintic_walk_refresh, 0, 0, 1, 1);

        button_quintic_walk_stop = new QPushButton(widget_222);
        button_quintic_walk_stop->setObjectName(QString::fromUtf8("button_quintic_walk_stop"));

        gridLayout_31->addWidget(button_quintic_walk_stop, 4, 0, 1, 1);

        groupBox_balance_control_21 = new QGroupBox(tab_quinticwalk);
        groupBox_balance_control_21->setObjectName(QString::fromUtf8("groupBox_balance_control_21"));
        groupBox_balance_control_21->setGeometry(QRect(10, 350, 271, 211));
        gridLayout_28 = new QGridLayout(groupBox_balance_control_21);
        gridLayout_28->setObjectName(QString::fromUtf8("gridLayout_28"));
        formLayout_24 = new QFormLayout();
        formLayout_24->setObjectName(QString::fromUtf8("formLayout_24"));
        formLayout_24->setHorizontalSpacing(4);
        formLayout_24->setVerticalSpacing(0);
        formLayout_24->setContentsMargins(10, -1, 10, -1);
        label_202 = new QLabel(groupBox_balance_control_21);
        label_202->setObjectName(QString::fromUtf8("label_202"));

        formLayout_24->setWidget(0, QFormLayout::LabelRole, label_202);

        label_203 = new QLabel(groupBox_balance_control_21);
        label_203->setObjectName(QString::fromUtf8("label_203"));

        formLayout_24->setWidget(1, QFormLayout::LabelRole, label_203);

        dspin_KP_P_qw = new QDoubleSpinBox(groupBox_balance_control_21);
        dspin_KP_P_qw->setObjectName(QString::fromUtf8("dspin_KP_P_qw"));
        dspin_KP_P_qw->setDecimals(3);
        dspin_KP_P_qw->setMinimum(-10);
        dspin_KP_P_qw->setMaximum(10);
        dspin_KP_P_qw->setSingleStep(0.01);

        formLayout_24->setWidget(1, QFormLayout::FieldRole, dspin_KP_P_qw);

        label_204 = new QLabel(groupBox_balance_control_21);
        label_204->setObjectName(QString::fromUtf8("label_204"));

        formLayout_24->setWidget(2, QFormLayout::LabelRole, label_204);

        dspin_KD_P_qw = new QDoubleSpinBox(groupBox_balance_control_21);
        dspin_KD_P_qw->setObjectName(QString::fromUtf8("dspin_KD_P_qw"));
        dspin_KD_P_qw->setDecimals(3);
        dspin_KD_P_qw->setMinimum(-10);
        dspin_KD_P_qw->setMaximum(10);
        dspin_KD_P_qw->setSingleStep(0.01);

        formLayout_24->setWidget(2, QFormLayout::FieldRole, dspin_KD_P_qw);

        label_205 = new QLabel(groupBox_balance_control_21);
        label_205->setObjectName(QString::fromUtf8("label_205"));

        formLayout_24->setWidget(3, QFormLayout::LabelRole, label_205);

        dspin_KI_P_qw = new QDoubleSpinBox(groupBox_balance_control_21);
        dspin_KI_P_qw->setObjectName(QString::fromUtf8("dspin_KI_P_qw"));
        dspin_KI_P_qw->setDecimals(3);
        dspin_KI_P_qw->setMinimum(-10);
        dspin_KI_P_qw->setMaximum(10);
        dspin_KI_P_qw->setSingleStep(0.01);

        formLayout_24->setWidget(3, QFormLayout::FieldRole, dspin_KI_P_qw);

        label_206 = new QLabel(groupBox_balance_control_21);
        label_206->setObjectName(QString::fromUtf8("label_206"));

        formLayout_24->setWidget(4, QFormLayout::LabelRole, label_206);

        dspin_D_HIP_P_qw = new QDoubleSpinBox(groupBox_balance_control_21);
        dspin_D_HIP_P_qw->setObjectName(QString::fromUtf8("dspin_D_HIP_P_qw"));
        dspin_D_HIP_P_qw->setDecimals(3);
        dspin_D_HIP_P_qw->setMinimum(-10);
        dspin_D_HIP_P_qw->setMaximum(10);
        dspin_D_HIP_P_qw->setSingleStep(0.01);

        formLayout_24->setWidget(4, QFormLayout::FieldRole, dspin_D_HIP_P_qw);

        label_207 = new QLabel(groupBox_balance_control_21);
        label_207->setObjectName(QString::fromUtf8("label_207"));

        formLayout_24->setWidget(5, QFormLayout::LabelRole, label_207);

        label_208 = new QLabel(groupBox_balance_control_21);
        label_208->setObjectName(QString::fromUtf8("label_208"));

        formLayout_24->setWidget(6, QFormLayout::LabelRole, label_208);

        dspin_D_ANKLE_P_qw = new QDoubleSpinBox(groupBox_balance_control_21);
        dspin_D_ANKLE_P_qw->setObjectName(QString::fromUtf8("dspin_D_ANKLE_P_qw"));
        dspin_D_ANKLE_P_qw->setDecimals(3);
        dspin_D_ANKLE_P_qw->setMinimum(-10);
        dspin_D_ANKLE_P_qw->setMaximum(10);
        dspin_D_ANKLE_P_qw->setSingleStep(0.01);

        formLayout_24->setWidget(6, QFormLayout::FieldRole, dspin_D_ANKLE_P_qw);

        label_209 = new QLabel(groupBox_balance_control_21);
        label_209->setObjectName(QString::fromUtf8("label_209"));

        formLayout_24->setWidget(7, QFormLayout::LabelRole, label_209);

        dspin_shoulder_gain_qw = new QDoubleSpinBox(groupBox_balance_control_21);
        dspin_shoulder_gain_qw->setObjectName(QString::fromUtf8("dspin_shoulder_gain_qw"));
        dspin_shoulder_gain_qw->setDecimals(3);

        formLayout_24->setWidget(7, QFormLayout::FieldRole, dspin_shoulder_gain_qw);

        dspin_D_KNEE_qw = new QDoubleSpinBox(groupBox_balance_control_21);
        dspin_D_KNEE_qw->setObjectName(QString::fromUtf8("dspin_D_KNEE_qw"));
        dspin_D_KNEE_qw->setDecimals(3);
        dspin_D_KNEE_qw->setMinimum(-10);
        dspin_D_KNEE_qw->setMaximum(10);
        dspin_D_KNEE_qw->setSingleStep(0.01);

        formLayout_24->setWidget(5, QFormLayout::FieldRole, dspin_D_KNEE_qw);


        gridLayout_28->addLayout(formLayout_24, 1, 0, 2, 1);

        tabWidget_control->addTab(tab_quinticwalk, QString());
        kicking = new QWidget();
        kicking->setObjectName(QString::fromUtf8("kicking"));
        formGroupBox_33 = new QGroupBox(kicking);
        formGroupBox_33->setObjectName(QString::fromUtf8("formGroupBox_33"));
        formGroupBox_33->setGeometry(QRect(30, 270, 211, 261));
        formLayout_44 = new QFormLayout(formGroupBox_33);
        formLayout_44->setObjectName(QString::fromUtf8("formLayout_44"));
        formLayout_44->setContentsMargins(10, -1, 10, -1);
        Time_Shift = new QDoubleSpinBox(formGroupBox_33);
        Time_Shift->setObjectName(QString::fromUtf8("Time_Shift"));
        Time_Shift->setDecimals(3);
        Time_Shift->setMinimum(-10);
        Time_Shift->setMaximum(10);
        Time_Shift->setSingleStep(0.01);

        formLayout_44->setWidget(2, QFormLayout::FieldRole, Time_Shift);

        label_338 = new QLabel(formGroupBox_33);
        label_338->setObjectName(QString::fromUtf8("label_338"));

        formLayout_44->setWidget(2, QFormLayout::LabelRole, label_338);

        label_339 = new QLabel(formGroupBox_33);
        label_339->setObjectName(QString::fromUtf8("label_339"));

        formLayout_44->setWidget(3, QFormLayout::LabelRole, label_339);

        Time_Lift = new QDoubleSpinBox(formGroupBox_33);
        Time_Lift->setObjectName(QString::fromUtf8("Time_Lift"));
        Time_Lift->setDecimals(3);
        Time_Lift->setMinimum(-10);
        Time_Lift->setMaximum(10);
        Time_Lift->setSingleStep(0.01);

        formLayout_44->setWidget(3, QFormLayout::FieldRole, Time_Lift);

        label_340 = new QLabel(formGroupBox_33);
        label_340->setObjectName(QString::fromUtf8("label_340"));

        formLayout_44->setWidget(4, QFormLayout::LabelRole, label_340);

        Time_Retract = new QDoubleSpinBox(formGroupBox_33);
        Time_Retract->setObjectName(QString::fromUtf8("Time_Retract"));
        Time_Retract->setDecimals(3);
        Time_Retract->setMinimum(-10);
        Time_Retract->setMaximum(10);
        Time_Retract->setSingleStep(0.01);

        formLayout_44->setWidget(4, QFormLayout::FieldRole, Time_Retract);

        label_3411 = new QLabel(formGroupBox_33);
        label_3411->setObjectName(QString::fromUtf8("label_3411"));

        formLayout_44->setWidget(5, QFormLayout::LabelRole, label_3411);

        Time_Kick = new QDoubleSpinBox(formGroupBox_33);
        Time_Kick->setObjectName(QString::fromUtf8("Time_Kick"));
        Time_Kick->setDecimals(3);
        Time_Kick->setMinimum(-10);
        Time_Kick->setMaximum(10);
        Time_Kick->setSingleStep(0.01);

        formLayout_44->setWidget(5, QFormLayout::FieldRole, Time_Kick);

        label_342 = new QLabel(formGroupBox_33);
        label_342->setObjectName(QString::fromUtf8("label_342"));

        formLayout_44->setWidget(6, QFormLayout::LabelRole, label_342);

        Time_CoolDown = new QDoubleSpinBox(formGroupBox_33);
        Time_CoolDown->setObjectName(QString::fromUtf8("Time_CoolDown"));
        Time_CoolDown->setDecimals(3);
        Time_CoolDown->setMinimum(-10);
        Time_CoolDown->setMaximum(10);
        Time_CoolDown->setSingleStep(0.01);

        formLayout_44->setWidget(6, QFormLayout::FieldRole, Time_CoolDown);

        label_343 = new QLabel(formGroupBox_33);
        label_343->setObjectName(QString::fromUtf8("label_343"));

        formLayout_44->setWidget(7, QFormLayout::LabelRole, label_343);

        Time_BringDown = new QDoubleSpinBox(formGroupBox_33);
        Time_BringDown->setObjectName(QString::fromUtf8("Time_BringDown"));
        Time_BringDown->setDecimals(3);
        Time_BringDown->setMinimum(-10);
        Time_BringDown->setMaximum(10);
        Time_BringDown->setSingleStep(0.01);

        formLayout_44->setWidget(7, QFormLayout::FieldRole, Time_BringDown);

        label_344 = new QLabel(formGroupBox_33);
        label_344->setObjectName(QString::fromUtf8("label_344"));
        label_344->setAlignment(Qt::AlignCenter);

        formLayout_44->setWidget(0, QFormLayout::SpanningRole, label_344);

        right_kick = new QPushButton(kicking);
        right_kick->setObjectName(QString::fromUtf8("right_kick"));
        right_kick->setGeometry(QRect(490, 20, 211, 41));
        left_kick = new QPushButton(kicking);
        left_kick->setObjectName(QString::fromUtf8("left_kick"));
        left_kick->setGeometry(QRect(30, 20, 211, 41));
        kick_save_button = new QPushButton(kicking);
        kick_save_button->setObjectName(QString::fromUtf8("kick_save_button"));
        kick_save_button->setGeometry(QRect(280, 220, 171, 41));
        kick_refresh_button = new QPushButton(kicking);
        kick_refresh_button->setObjectName(QString::fromUtf8("kick_refresh_button"));
        kick_refresh_button->setGeometry(QRect(280, 90, 171, 41));
        kick_apply_button = new QPushButton(kicking);
        kick_apply_button->setObjectName(QString::fromUtf8("kick_apply_button"));
        kick_apply_button->setGeometry(QRect(280, 150, 171, 41));
        formGroupBox_32 = new QGroupBox(kicking);
        formGroupBox_32->setObjectName(QString::fromUtf8("formGroupBox_32"));
        formGroupBox_32->setGeometry(QRect(490, 270, 211, 261));
        formLayout_40 = new QFormLayout(formGroupBox_32);
        formLayout_40->setObjectName(QString::fromUtf8("formLayout_40"));
        formLayout_40->setContentsMargins(10, -1, 10, -1);
        Body_Height = new QDoubleSpinBox(formGroupBox_32);
        Body_Height->setObjectName(QString::fromUtf8("Body_Height"));
        Body_Height->setDecimals(3);
        Body_Height->setMinimum(-10);
        Body_Height->setMaximum(10);
        Body_Height->setSingleStep(0.01);

        formLayout_40->setWidget(0, QFormLayout::FieldRole, Body_Height);

        label_324 = new QLabel(formGroupBox_32);
        label_324->setObjectName(QString::fromUtf8("label_324"));

        formLayout_40->setWidget(1, QFormLayout::LabelRole, label_324);

        Body_Tilt = new QDoubleSpinBox(formGroupBox_32);
        Body_Tilt->setObjectName(QString::fromUtf8("Body_Tilt"));
        Body_Tilt->setDecimals(3);
        Body_Tilt->setMinimum(-45);
        Body_Tilt->setMaximum(45);
        Body_Tilt->setSingleStep(0.01);

        formLayout_40->setWidget(1, QFormLayout::FieldRole, Body_Tilt);

        label_325 = new QLabel(formGroupBox_32);
        label_325->setObjectName(QString::fromUtf8("label_325"));

        formLayout_40->setWidget(3, QFormLayout::LabelRole, label_325);

        Leg_Y = new QDoubleSpinBox(formGroupBox_32);
        Leg_Y->setObjectName(QString::fromUtf8("Leg_Y"));
        Leg_Y->setDecimals(3);
        Leg_Y->setMinimum(-10);
        Leg_Y->setMaximum(10);
        Leg_Y->setSingleStep(0.01);

        formLayout_40->setWidget(3, QFormLayout::FieldRole, Leg_Y);

        label_326 = new QLabel(formGroupBox_32);
        label_326->setObjectName(QString::fromUtf8("label_326"));

        formLayout_40->setWidget(4, QFormLayout::LabelRole, label_326);

        Leg_Z = new QDoubleSpinBox(formGroupBox_32);
        Leg_Z->setObjectName(QString::fromUtf8("Leg_Z"));
        Leg_Z->setDecimals(3);
        Leg_Z->setMinimum(-10);
        Leg_Z->setMaximum(10);
        Leg_Z->setSingleStep(0.01);

        formLayout_40->setWidget(4, QFormLayout::FieldRole, Leg_Z);

        label_329 = new QLabel(formGroupBox_32);
        label_329->setObjectName(QString::fromUtf8("label_329"));

        formLayout_40->setWidget(5, QFormLayout::LabelRole, label_329);

        X_Retract = new QDoubleSpinBox(formGroupBox_32);
        X_Retract->setObjectName(QString::fromUtf8("X_Retract"));
        X_Retract->setDecimals(3);
        X_Retract->setMinimum(-10);
        X_Retract->setMaximum(10);
        X_Retract->setSingleStep(0.01);

        formLayout_40->setWidget(5, QFormLayout::FieldRole, X_Retract);

        Z_Retract = new QDoubleSpinBox(formGroupBox_32);
        Z_Retract->setObjectName(QString::fromUtf8("Z_Retract"));
        Z_Retract->setDecimals(3);
        Z_Retract->setMinimum(-10);
        Z_Retract->setMaximum(10);
        Z_Retract->setSingleStep(0.01);

        formLayout_40->setWidget(6, QFormLayout::FieldRole, Z_Retract);

        label_3311 = new QLabel(formGroupBox_32);
        label_3311->setObjectName(QString::fromUtf8("label_3311"));

        formLayout_40->setWidget(6, QFormLayout::LabelRole, label_3311);

        label_327 = new QLabel(formGroupBox_32);
        label_327->setObjectName(QString::fromUtf8("label_327"));

        formLayout_40->setWidget(2, QFormLayout::LabelRole, label_327);

        Leg_X = new QDoubleSpinBox(formGroupBox_32);
        Leg_X->setObjectName(QString::fromUtf8("Leg_X"));
        Leg_X->setDecimals(3);
        Leg_X->setMinimum(-10);
        Leg_X->setMaximum(10);
        Leg_X->setSingleStep(0.01);

        formLayout_40->setWidget(2, QFormLayout::FieldRole, Leg_X);

        label_320 = new QLabel(formGroupBox_32);
        label_320->setObjectName(QString::fromUtf8("label_320"));

        formLayout_40->setWidget(0, QFormLayout::LabelRole, label_320);

        stop_kick = new QPushButton(kicking);
        stop_kick->setObjectName(QString::fromUtf8("stop_kick"));
        stop_kick->setGeometry(QRect(280, 20, 171, 41));
        formLayoutWidget_71 = new QWidget(kicking);
        formLayoutWidget_71->setObjectName(QString::fromUtf8("formLayoutWidget_71"));
        formLayoutWidget_71->setGeometry(QRect(280, 300, 201, 217));
        formLayout_121 = new QFormLayout(formLayoutWidget_71);
        formLayout_121->setObjectName(QString::fromUtf8("formLayout_121"));
        formLayout_121->setFieldGrowthPolicy(QFormLayout::FieldsStayAtSizeHint);
        formLayout_121->setHorizontalSpacing(10);
        formLayout_121->setVerticalSpacing(10);
        formLayout_121->setContentsMargins(10, 10, 10, 10);
        label_921 = new QLabel(formLayoutWidget_71);
        label_921->setObjectName(QString::fromUtf8("label_921"));

        formLayout_121->setWidget(0, QFormLayout::LabelRole, label_921);

        Gain_Angle_Pitch = new QDoubleSpinBox(formLayoutWidget_71);
        Gain_Angle_Pitch->setObjectName(QString::fromUtf8("Gain_Angle_Pitch"));
        Gain_Angle_Pitch->setDecimals(3);
        Gain_Angle_Pitch->setMinimum(-10);
        Gain_Angle_Pitch->setMaximum(400);
        Gain_Angle_Pitch->setSingleStep(0.01);

        formLayout_121->setWidget(0, QFormLayout::FieldRole, Gain_Angle_Pitch);

        label_94 = new QLabel(formLayoutWidget_71);
        label_94->setObjectName(QString::fromUtf8("label_94"));

        formLayout_121->setWidget(1, QFormLayout::LabelRole, label_94);

        label_93 = new QLabel(formLayoutWidget_71);
        label_93->setObjectName(QString::fromUtf8("label_93"));

        formLayout_121->setWidget(2, QFormLayout::LabelRole, label_93);

        Gain_Velocity_Pitch = new QDoubleSpinBox(formLayoutWidget_71);
        Gain_Velocity_Pitch->setObjectName(QString::fromUtf8("Gain_Velocity_Pitch"));
        Gain_Velocity_Pitch->setDecimals(3);
        Gain_Velocity_Pitch->setMinimum(-10);
        Gain_Velocity_Pitch->setMaximum(400);
        Gain_Velocity_Pitch->setSingleStep(0.01);

        formLayout_121->setWidget(2, QFormLayout::FieldRole, Gain_Velocity_Pitch);

        Gain_Angle_Roll = new QDoubleSpinBox(formLayoutWidget_71);
        Gain_Angle_Roll->setObjectName(QString::fromUtf8("Gain_Angle_Roll"));
        Gain_Angle_Roll->setDecimals(3);
        Gain_Angle_Roll->setMinimum(-10);
        Gain_Angle_Roll->setMaximum(10);
        Gain_Angle_Roll->setSingleStep(0.01);

        formLayout_121->setWidget(1, QFormLayout::FieldRole, Gain_Angle_Roll);

        label_95 = new QLabel(formLayoutWidget_71);
        label_95->setObjectName(QString::fromUtf8("label_95"));

        formLayout_121->setWidget(3, QFormLayout::LabelRole, label_95);

        Gain_Velocity_Roll = new QDoubleSpinBox(formLayoutWidget_71);
        Gain_Velocity_Roll->setObjectName(QString::fromUtf8("Gain_Velocity_Roll"));
        Gain_Velocity_Roll->setDecimals(3);
        Gain_Velocity_Roll->setMinimum(-10);
        Gain_Velocity_Roll->setMaximum(10);
        Gain_Velocity_Roll->setSingleStep(0.01);

        formLayout_121->setWidget(3, QFormLayout::FieldRole, Gain_Velocity_Roll);

        label_96 = new QLabel(formLayoutWidget_71);
        label_96->setObjectName(QString::fromUtf8("label_96"));

        formLayout_121->setWidget(4, QFormLayout::LabelRole, label_96);

        Gain_Integral = new QDoubleSpinBox(formLayoutWidget_71);
        Gain_Integral->setObjectName(QString::fromUtf8("Gain_Integral"));
        Gain_Integral->setDecimals(3);
        Gain_Integral->setMinimum(-10);
        Gain_Integral->setMaximum(10);
        Gain_Integral->setSingleStep(0.01);

        formLayout_121->setWidget(4, QFormLayout::FieldRole, Gain_Integral);

        formGroupBox_34 = new QGroupBox(kicking);
        formGroupBox_34->setObjectName(QString::fromUtf8("formGroupBox_34"));
        formGroupBox_34->setGeometry(QRect(490, 60, 211, 211));
        formLayout_41 = new QFormLayout(formGroupBox_34);
        formLayout_41->setObjectName(QString::fromUtf8("formLayout_41"));
        formLayout_41->setContentsMargins(10, -1, 10, -1);
        label_3211 = new QLabel(formGroupBox_34);
        label_3211->setObjectName(QString::fromUtf8("label_3211"));

        formLayout_41->setWidget(0, QFormLayout::LabelRole, label_3211);

        Leg_R_X = new QDoubleSpinBox(formGroupBox_34);
        Leg_R_X->setObjectName(QString::fromUtf8("Leg_R_X"));
        Leg_R_X->setDecimals(3);
        Leg_R_X->setMinimum(-10);
        Leg_R_X->setMaximum(10);
        Leg_R_X->setSingleStep(0.01);

        formLayout_41->setWidget(0, QFormLayout::FieldRole, Leg_R_X);

        label_318 = new QLabel(formGroupBox_34);
        label_318->setObjectName(QString::fromUtf8("label_318"));

        formLayout_41->setWidget(1, QFormLayout::LabelRole, label_318);

        R_Shift = new QDoubleSpinBox(formGroupBox_34);
        R_Shift->setObjectName(QString::fromUtf8("R_Shift"));
        R_Shift->setDecimals(3);
        R_Shift->setMinimum(-10);
        R_Shift->setMaximum(10);
        R_Shift->setSingleStep(0.01);

        formLayout_41->setWidget(1, QFormLayout::FieldRole, R_Shift);

        label_330 = new QLabel(formGroupBox_34);
        label_330->setObjectName(QString::fromUtf8("label_330"));

        formLayout_41->setWidget(2, QFormLayout::LabelRole, label_330);

        R_Lift = new QDoubleSpinBox(formGroupBox_34);
        R_Lift->setObjectName(QString::fromUtf8("R_Lift"));
        R_Lift->setDecimals(3);
        R_Lift->setMinimum(-10);
        R_Lift->setMaximum(10);
        R_Lift->setSingleStep(0.01);

        formLayout_41->setWidget(2, QFormLayout::FieldRole, R_Lift);

        label_319 = new QLabel(formGroupBox_34);
        label_319->setObjectName(QString::fromUtf8("label_319"));

        formLayout_41->setWidget(3, QFormLayout::LabelRole, label_319);

        R_CoolDown = new QDoubleSpinBox(formGroupBox_34);
        R_CoolDown->setObjectName(QString::fromUtf8("R_CoolDown"));
        R_CoolDown->setDecimals(3);
        R_CoolDown->setMinimum(-10);
        R_CoolDown->setMaximum(10);
        R_CoolDown->setSingleStep(0.01);

        formLayout_41->setWidget(3, QFormLayout::FieldRole, R_CoolDown);

        label_337 = new QLabel(formGroupBox_34);
        label_337->setObjectName(QString::fromUtf8("label_337"));

        formLayout_41->setWidget(4, QFormLayout::LabelRole, label_337);

        R_Roll = new QDoubleSpinBox(formGroupBox_34);
        R_Roll->setObjectName(QString::fromUtf8("R_Roll"));
        R_Roll->setDecimals(3);
        R_Roll->setMinimum(-60);
        R_Roll->setMaximum(60);
        R_Roll->setSingleStep(0.01);

        formLayout_41->setWidget(4, QFormLayout::FieldRole, R_Roll);

        formGroupBox_35 = new QGroupBox(kicking);
        formGroupBox_35->setObjectName(QString::fromUtf8("formGroupBox_35"));
        formGroupBox_35->setGeometry(QRect(30, 60, 211, 211));
        formLayout_42 = new QFormLayout(formGroupBox_35);
        formLayout_42->setObjectName(QString::fromUtf8("formLayout_42"));
        formLayout_42->setContentsMargins(10, -1, 10, -1);
        label_335 = new QLabel(formGroupBox_35);
        label_335->setObjectName(QString::fromUtf8("label_335"));

        formLayout_42->setWidget(3, QFormLayout::LabelRole, label_335);

        label_332 = new QLabel(formGroupBox_35);
        label_332->setObjectName(QString::fromUtf8("label_332"));

        formLayout_42->setWidget(0, QFormLayout::LabelRole, label_332);

        Leg_L_X = new QDoubleSpinBox(formGroupBox_35);
        Leg_L_X->setObjectName(QString::fromUtf8("Leg_L_X"));
        Leg_L_X->setDecimals(3);
        Leg_L_X->setMinimum(-10);
        Leg_L_X->setMaximum(10);
        Leg_L_X->setSingleStep(0.01);

        formLayout_42->setWidget(0, QFormLayout::FieldRole, Leg_L_X);

        label_322 = new QLabel(formGroupBox_35);
        label_322->setObjectName(QString::fromUtf8("label_322"));

        formLayout_42->setWidget(1, QFormLayout::LabelRole, label_322);

        L_Shift = new QDoubleSpinBox(formGroupBox_35);
        L_Shift->setObjectName(QString::fromUtf8("L_Shift"));
        L_Shift->setDecimals(3);
        L_Shift->setMinimum(-10);
        L_Shift->setMaximum(10);
        L_Shift->setSingleStep(0.01);

        formLayout_42->setWidget(1, QFormLayout::FieldRole, L_Shift);

        L_Lift = new QDoubleSpinBox(formGroupBox_35);
        L_Lift->setObjectName(QString::fromUtf8("L_Lift"));
        L_Lift->setDecimals(3);
        L_Lift->setMinimum(-10);
        L_Lift->setMaximum(10);
        L_Lift->setSingleStep(0.01);

        formLayout_42->setWidget(2, QFormLayout::FieldRole, L_Lift);

        label_328 = new QLabel(formGroupBox_35);
        label_328->setObjectName(QString::fromUtf8("label_328"));

        formLayout_42->setWidget(2, QFormLayout::LabelRole, label_328);

        L_CoolDown = new QDoubleSpinBox(formGroupBox_35);
        L_CoolDown->setObjectName(QString::fromUtf8("L_CoolDown"));
        L_CoolDown->setDecimals(3);
        L_CoolDown->setMinimum(-10);
        L_CoolDown->setMaximum(10);
        L_CoolDown->setSingleStep(0.01);

        formLayout_42->setWidget(3, QFormLayout::FieldRole, L_CoolDown);

        label_336 = new QLabel(formGroupBox_35);
        label_336->setObjectName(QString::fromUtf8("label_336"));

        formLayout_42->setWidget(4, QFormLayout::LabelRole, label_336);

        L_Roll = new QDoubleSpinBox(formGroupBox_35);
        L_Roll->setObjectName(QString::fromUtf8("L_Roll"));
        L_Roll->setDecimals(3);
        L_Roll->setMinimum(-60);
        L_Roll->setMaximum(60);
        L_Roll->setSingleStep(0.01);

        formLayout_42->setWidget(4, QFormLayout::FieldRole, L_Roll);

        tabWidget_control->addTab(kicking, QString());
        tab = new QWidget();
        tab->setObjectName(QString::fromUtf8("tab"));
        fb_apply_button = new QPushButton(tab);
        fb_apply_button->setObjectName(QString::fromUtf8("fb_apply_button"));
        fb_apply_button->setGeometry(QRect(280, 440, 171, 41));
        Left_SSP = new QPushButton(tab);
        Left_SSP->setObjectName(QString::fromUtf8("Left_SSP"));
        Left_SSP->setGeometry(QRect(30, 20, 211, 41));
        Right_SSP = new QPushButton(tab);
        Right_SSP->setObjectName(QString::fromUtf8("Right_SSP"));
        Right_SSP->setGeometry(QRect(490, 20, 211, 41));
        fb_refresh_button = new QPushButton(tab);
        fb_refresh_button->setObjectName(QString::fromUtf8("fb_refresh_button"));
        fb_refresh_button->setGeometry(QRect(50, 440, 171, 41));
        fb_save_button = new QPushButton(tab);
        fb_save_button->setObjectName(QString::fromUtf8("fb_save_button"));
        fb_save_button->setGeometry(QRect(510, 440, 171, 41));
        formGroupBox_36 = new QGroupBox(tab);
        formGroupBox_36->setObjectName(QString::fromUtf8("formGroupBox_36"));
        formGroupBox_36->setGeometry(QRect(260, 60, 211, 201));
        formLayout_43 = new QFormLayout(formGroupBox_36);
        formLayout_43->setObjectName(QString::fromUtf8("formLayout_43"));
        formLayout_43->setContentsMargins(10, -1, 10, -1);
        label_323 = new QLabel(formGroupBox_36);
        label_323->setObjectName(QString::fromUtf8("label_323"));

        formLayout_43->setWidget(0, QFormLayout::LabelRole, label_323);

        FB_Body_Height = new QDoubleSpinBox(formGroupBox_36);
        FB_Body_Height->setObjectName(QString::fromUtf8("FB_Body_Height"));
        FB_Body_Height->setDecimals(3);
        FB_Body_Height->setMinimum(-50);
        FB_Body_Height->setMaximum(50);
        FB_Body_Height->setSingleStep(0.01);

        formLayout_43->setWidget(0, QFormLayout::FieldRole, FB_Body_Height);

        label_333 = new QLabel(formGroupBox_36);
        label_333->setObjectName(QString::fromUtf8("label_333"));

        formLayout_43->setWidget(1, QFormLayout::LabelRole, label_333);

        FB_Body_Tilt = new QDoubleSpinBox(formGroupBox_36);
        FB_Body_Tilt->setObjectName(QString::fromUtf8("FB_Body_Tilt"));
        FB_Body_Tilt->setDecimals(3);
        FB_Body_Tilt->setMinimum(-45);
        FB_Body_Tilt->setMaximum(45);
        FB_Body_Tilt->setSingleStep(0.01);

        formLayout_43->setWidget(1, QFormLayout::FieldRole, FB_Body_Tilt);

        label_348 = new QLabel(formGroupBox_36);
        label_348->setObjectName(QString::fromUtf8("label_348"));

        formLayout_43->setWidget(2, QFormLayout::LabelRole, label_348);

        FB_Leg_X = new QDoubleSpinBox(formGroupBox_36);
        FB_Leg_X->setObjectName(QString::fromUtf8("FB_Leg_X"));
        FB_Leg_X->setDecimals(3);
        FB_Leg_X->setMinimum(-10);
        FB_Leg_X->setMaximum(10);
        FB_Leg_X->setSingleStep(0.01);

        formLayout_43->setWidget(2, QFormLayout::FieldRole, FB_Leg_X);

        label_334 = new QLabel(formGroupBox_36);
        label_334->setObjectName(QString::fromUtf8("label_334"));

        formLayout_43->setWidget(3, QFormLayout::LabelRole, label_334);

        FB_Leg_Y = new QDoubleSpinBox(formGroupBox_36);
        FB_Leg_Y->setObjectName(QString::fromUtf8("FB_Leg_Y"));
        FB_Leg_Y->setDecimals(3);
        FB_Leg_Y->setMinimum(-10);
        FB_Leg_Y->setMaximum(10);
        FB_Leg_Y->setSingleStep(0.01);

        formLayout_43->setWidget(3, QFormLayout::FieldRole, FB_Leg_Y);

        label_345 = new QLabel(formGroupBox_36);
        label_345->setObjectName(QString::fromUtf8("label_345"));

        formLayout_43->setWidget(4, QFormLayout::LabelRole, label_345);

        FB_Leg_Z = new QDoubleSpinBox(formGroupBox_36);
        FB_Leg_Z->setObjectName(QString::fromUtf8("FB_Leg_Z"));
        FB_Leg_Z->setDecimals(3);
        FB_Leg_Z->setMinimum(-10);
        FB_Leg_Z->setMaximum(10);
        FB_Leg_Z->setSingleStep(0.01);

        formLayout_43->setWidget(4, QFormLayout::FieldRole, FB_Leg_Z);

        DSP = new QPushButton(tab);
        DSP->setObjectName(QString::fromUtf8("DSP"));
        DSP->setGeometry(QRect(260, 20, 211, 41));
        formGroupBox_37 = new QGroupBox(tab);
        formGroupBox_37->setObjectName(QString::fromUtf8("formGroupBox_37"));
        formGroupBox_37->setGeometry(QRect(490, 60, 211, 111));
        formLayout_45 = new QFormLayout(formGroupBox_37);
        formLayout_45->setObjectName(QString::fromUtf8("formLayout_45"));
        formLayout_45->setContentsMargins(10, -1, 10, -1);
        label_346 = new QLabel(formGroupBox_37);
        label_346->setObjectName(QString::fromUtf8("label_346"));

        formLayout_45->setWidget(0, QFormLayout::LabelRole, label_346);

        FB_Leg_R_Z = new QDoubleSpinBox(formGroupBox_37);
        FB_Leg_R_Z->setObjectName(QString::fromUtf8("FB_Leg_R_Z"));
        FB_Leg_R_Z->setDecimals(3);
        FB_Leg_R_Z->setMinimum(-50);
        FB_Leg_R_Z->setMaximum(50);
        FB_Leg_R_Z->setSingleStep(0.01);

        formLayout_45->setWidget(0, QFormLayout::FieldRole, FB_Leg_R_Z);

        label_347 = new QLabel(formGroupBox_37);
        label_347->setObjectName(QString::fromUtf8("label_347"));

        formLayout_45->setWidget(1, QFormLayout::LabelRole, label_347);

        FB_R_Roll = new QDoubleSpinBox(formGroupBox_37);
        FB_R_Roll->setObjectName(QString::fromUtf8("FB_R_Roll"));
        FB_R_Roll->setDecimals(3);
        FB_R_Roll->setMinimum(-50);
        FB_R_Roll->setMaximum(50);
        FB_R_Roll->setSingleStep(0.01);

        formLayout_45->setWidget(1, QFormLayout::FieldRole, FB_R_Roll);

        formGroupBox_38 = new QGroupBox(tab);
        formGroupBox_38->setObjectName(QString::fromUtf8("formGroupBox_38"));
        formGroupBox_38->setGeometry(QRect(30, 60, 211, 111));
        formLayout_46 = new QFormLayout(formGroupBox_38);
        formLayout_46->setObjectName(QString::fromUtf8("formLayout_46"));
        formLayout_46->setContentsMargins(10, -1, 10, -1);
        label_349 = new QLabel(formGroupBox_38);
        label_349->setObjectName(QString::fromUtf8("label_349"));

        formLayout_46->setWidget(0, QFormLayout::LabelRole, label_349);

        FB_Leg_L_Z = new QDoubleSpinBox(formGroupBox_38);
        FB_Leg_L_Z->setObjectName(QString::fromUtf8("FB_Leg_L_Z"));
        FB_Leg_L_Z->setDecimals(3);
        FB_Leg_L_Z->setMinimum(-50);
        FB_Leg_L_Z->setMaximum(50);
        FB_Leg_L_Z->setSingleStep(0.01);

        formLayout_46->setWidget(0, QFormLayout::FieldRole, FB_Leg_L_Z);

        label_350 = new QLabel(formGroupBox_38);
        label_350->setObjectName(QString::fromUtf8("label_350"));

        formLayout_46->setWidget(1, QFormLayout::LabelRole, label_350);

        FB_L_Roll = new QDoubleSpinBox(formGroupBox_38);
        FB_L_Roll->setObjectName(QString::fromUtf8("FB_L_Roll"));
        FB_L_Roll->setDecimals(3);
        FB_L_Roll->setMinimum(-50);
        FB_L_Roll->setMaximum(50);
        FB_L_Roll->setSingleStep(0.01);

        formLayout_46->setWidget(1, QFormLayout::FieldRole, FB_L_Roll);

        formGroupBox_39 = new QGroupBox(tab);
        formGroupBox_39->setObjectName(QString::fromUtf8("formGroupBox_39"));
        formGroupBox_39->setGeometry(QRect(260, 260, 211, 111));
        formLayout_47 = new QFormLayout(formGroupBox_39);
        formLayout_47->setObjectName(QString::fromUtf8("formLayout_47"));
        formLayout_47->setContentsMargins(10, -1, 10, -1);
        label_3511 = new QLabel(formGroupBox_39);
        label_3511->setObjectName(QString::fromUtf8("label_3511"));

        formLayout_47->setWidget(0, QFormLayout::LabelRole, label_3511);

        FB_Setpoint_Pitch = new QDoubleSpinBox(formGroupBox_39);
        FB_Setpoint_Pitch->setObjectName(QString::fromUtf8("FB_Setpoint_Pitch"));
        FB_Setpoint_Pitch->setDecimals(3);
        FB_Setpoint_Pitch->setMinimum(-50);
        FB_Setpoint_Pitch->setMaximum(50);
        FB_Setpoint_Pitch->setSingleStep(0.001);

        formLayout_47->setWidget(0, QFormLayout::FieldRole, FB_Setpoint_Pitch);

        label_352 = new QLabel(formGroupBox_39);
        label_352->setObjectName(QString::fromUtf8("label_352"));

        formLayout_47->setWidget(1, QFormLayout::LabelRole, label_352);

        FB_Setpoint_Roll = new QDoubleSpinBox(formGroupBox_39);
        FB_Setpoint_Roll->setObjectName(QString::fromUtf8("FB_Setpoint_Roll"));
        FB_Setpoint_Roll->setDecimals(3);
        FB_Setpoint_Roll->setMinimum(-50);
        FB_Setpoint_Roll->setMaximum(50);
        FB_Setpoint_Roll->setSingleStep(0.001);

        formLayout_47->setWidget(1, QFormLayout::FieldRole, FB_Setpoint_Roll);

        formGroupBox_41 = new QGroupBox(tab);
        formGroupBox_41->setObjectName(QString::fromUtf8("formGroupBox_41"));
        formGroupBox_41->setGeometry(QRect(30, 260, 211, 151));
        formLayout_49 = new QFormLayout(formGroupBox_41);
        formLayout_49->setObjectName(QString::fromUtf8("formLayout_49"));
        formLayout_49->setContentsMargins(10, -1, 10, -1);
        label_355 = new QLabel(formGroupBox_41);
        label_355->setObjectName(QString::fromUtf8("label_355"));

        formLayout_49->setWidget(0, QFormLayout::LabelRole, label_355);

        FB_Gain_Angle_Pitch = new QDoubleSpinBox(formGroupBox_41);
        FB_Gain_Angle_Pitch->setObjectName(QString::fromUtf8("FB_Gain_Angle_Pitch"));
        FB_Gain_Angle_Pitch->setDecimals(3);
        FB_Gain_Angle_Pitch->setMinimum(-50);
        FB_Gain_Angle_Pitch->setMaximum(50);
        FB_Gain_Angle_Pitch->setSingleStep(0.001);

        formLayout_49->setWidget(0, QFormLayout::FieldRole, FB_Gain_Angle_Pitch);

        label_356 = new QLabel(formGroupBox_41);
        label_356->setObjectName(QString::fromUtf8("label_356"));

        formLayout_49->setWidget(1, QFormLayout::LabelRole, label_356);

        FB_Gain_Velocity_Pitch = new QDoubleSpinBox(formGroupBox_41);
        FB_Gain_Velocity_Pitch->setObjectName(QString::fromUtf8("FB_Gain_Velocity_Pitch"));
        FB_Gain_Velocity_Pitch->setDecimals(3);
        FB_Gain_Velocity_Pitch->setMinimum(-50);
        FB_Gain_Velocity_Pitch->setMaximum(50);
        FB_Gain_Velocity_Pitch->setSingleStep(0.001);

        formLayout_49->setWidget(1, QFormLayout::FieldRole, FB_Gain_Velocity_Pitch);

        label_357 = new QLabel(formGroupBox_41);
        label_357->setObjectName(QString::fromUtf8("label_357"));

        formLayout_49->setWidget(2, QFormLayout::LabelRole, label_357);

        FB_Gain_Integral_Pitch = new QDoubleSpinBox(formGroupBox_41);
        FB_Gain_Integral_Pitch->setObjectName(QString::fromUtf8("FB_Gain_Integral_Pitch"));
        FB_Gain_Integral_Pitch->setDecimals(3);
        FB_Gain_Integral_Pitch->setMinimum(-50);
        FB_Gain_Integral_Pitch->setMaximum(50);
        FB_Gain_Integral_Pitch->setSingleStep(0.001);

        formLayout_49->setWidget(2, QFormLayout::FieldRole, FB_Gain_Integral_Pitch);

        formGroupBox_42 = new QGroupBox(tab);
        formGroupBox_42->setObjectName(QString::fromUtf8("formGroupBox_42"));
        formGroupBox_42->setGeometry(QRect(490, 260, 211, 151));
        formLayout_50 = new QFormLayout(formGroupBox_42);
        formLayout_50->setObjectName(QString::fromUtf8("formLayout_50"));
        formLayout_50->setContentsMargins(10, -1, 10, -1);
        label_358 = new QLabel(formGroupBox_42);
        label_358->setObjectName(QString::fromUtf8("label_358"));

        formLayout_50->setWidget(0, QFormLayout::LabelRole, label_358);

        FB_Gain_Angle_Roll = new QDoubleSpinBox(formGroupBox_42);
        FB_Gain_Angle_Roll->setObjectName(QString::fromUtf8("FB_Gain_Angle_Roll"));
        FB_Gain_Angle_Roll->setDecimals(3);
        FB_Gain_Angle_Roll->setMinimum(-50);
        FB_Gain_Angle_Roll->setMaximum(50);
        FB_Gain_Angle_Roll->setSingleStep(0.001);

        formLayout_50->setWidget(0, QFormLayout::FieldRole, FB_Gain_Angle_Roll);

        label_359 = new QLabel(formGroupBox_42);
        label_359->setObjectName(QString::fromUtf8("label_359"));

        formLayout_50->setWidget(1, QFormLayout::LabelRole, label_359);

        FB_Gain_Velocity_Roll = new QDoubleSpinBox(formGroupBox_42);
        FB_Gain_Velocity_Roll->setObjectName(QString::fromUtf8("FB_Gain_Velocity_Roll"));
        FB_Gain_Velocity_Roll->setDecimals(3);
        FB_Gain_Velocity_Roll->setMinimum(-50);
        FB_Gain_Velocity_Roll->setMaximum(50);
        FB_Gain_Velocity_Roll->setSingleStep(0.001);

        formLayout_50->setWidget(1, QFormLayout::FieldRole, FB_Gain_Velocity_Roll);

        label_360 = new QLabel(formGroupBox_42);
        label_360->setObjectName(QString::fromUtf8("label_360"));

        formLayout_50->setWidget(2, QFormLayout::LabelRole, label_360);

        FB_Gain_Integral_Roll = new QDoubleSpinBox(formGroupBox_42);
        FB_Gain_Integral_Roll->setObjectName(QString::fromUtf8("FB_Gain_Integral_Roll"));
        FB_Gain_Integral_Roll->setDecimals(3);
        FB_Gain_Integral_Roll->setMinimum(-50);
        FB_Gain_Integral_Roll->setMaximum(50);
        FB_Gain_Integral_Roll->setSingleStep(0.001);

        formLayout_50->setWidget(2, QFormLayout::FieldRole, FB_Gain_Integral_Roll);

        tabWidget_control->addTab(tab, QString());
        MainWindowDesign->setCentralWidget(centralwidget);
        menubar = new QMenuBar(MainWindowDesign);
        menubar->setObjectName(QString::fromUtf8("menubar"));
        menubar->setGeometry(QRect(0, 0, 767, 23));
        menu_File = new QMenu(menubar);
        menu_File->setObjectName(QString::fromUtf8("menu_File"));
        MainWindowDesign->setMenuBar(menubar);
        statusbar = new QStatusBar(MainWindowDesign);
        statusbar->setObjectName(QString::fromUtf8("statusbar"));
        MainWindowDesign->setStatusBar(statusbar);
        QWidget::setTabOrder(button_init_pose, button_walking_start);
        QWidget::setTabOrder(button_walking_start, button_walking_stop);
        QWidget::setTabOrder(button_walking_stop, dSpinBox_init_offset_x);
        QWidget::setTabOrder(dSpinBox_init_offset_x, dSpinBox_init_offset_y);
        QWidget::setTabOrder(dSpinBox_init_offset_y, dSpinBox_init_offset_z);
        QWidget::setTabOrder(dSpinBox_init_offset_z, dSpinBox_init_offset_roll);
        QWidget::setTabOrder(dSpinBox_init_offset_roll, dSpinBox_init_offset_pitch);
        QWidget::setTabOrder(dSpinBox_init_offset_pitch, dSpinBox_init_offset_yaw);
        QWidget::setTabOrder(dSpinBox_init_offset_yaw, dSpinBox_hip_pitch_offset);
        QWidget::setTabOrder(dSpinBox_hip_pitch_offset, dSpinBox_period_time);
        QWidget::setTabOrder(dSpinBox_period_time, dSpinBox_dsp_ratio);
        QWidget::setTabOrder(dSpinBox_dsp_ratio, dSpinBox_step_fb_ratio);
        QWidget::setTabOrder(dSpinBox_step_fb_ratio, checkBox_move_aim_on);
        QWidget::setTabOrder(checkBox_move_aim_on, checkBox_move_aim_off);
        QWidget::setTabOrder(checkBox_move_aim_off, dSpinBox_x_move_amplitude);
        QWidget::setTabOrder(dSpinBox_x_move_amplitude, dSpinBox_y_move_amplitude);
        QWidget::setTabOrder(dSpinBox_y_move_amplitude, dSpinBox_z_move_amplitude);
        QWidget::setTabOrder(dSpinBox_z_move_amplitude, dSpinBox_a_move_amplitude);
        QWidget::setTabOrder(dSpinBox_a_move_amplitude, checkBox_balance_on);
        QWidget::setTabOrder(checkBox_balance_on, checkBox_balance_off);
        QWidget::setTabOrder(checkBox_balance_off, dSpinBox_hip_roll_gain);
        QWidget::setTabOrder(dSpinBox_hip_roll_gain, dSpinBox_knee_gain);
        QWidget::setTabOrder(dSpinBox_knee_gain, dSpinBox_ankle_roll_gain);
        QWidget::setTabOrder(dSpinBox_ankle_roll_gain, dSpinBox_ankle_pitch_gain);
        QWidget::setTabOrder(dSpinBox_ankle_pitch_gain, dSpinBox_y_swap_amplitude);
        QWidget::setTabOrder(dSpinBox_y_swap_amplitude, dSpinBox_z_swap_amplitude);
        QWidget::setTabOrder(dSpinBox_z_swap_amplitude, dSpinBox_arm_swing_gain);
        QWidget::setTabOrder(dSpinBox_arm_swing_gain, dSpinBox_pelvis_offset);
        QWidget::setTabOrder(dSpinBox_pelvis_offset, button_param_refresh);
        QWidget::setTabOrder(button_param_refresh, button_param_save);
        QWidget::setTabOrder(button_param_save, button_param_apply);
        QWidget::setTabOrder(button_param_apply, head_pan_slider);
        QWidget::setTabOrder(head_pan_slider, head_pan_spinbox);
        QWidget::setTabOrder(head_pan_spinbox, head_tilt_slider);
        QWidget::setTabOrder(head_tilt_slider, head_tilt_spinbox);
        QWidget::setTabOrder(head_tilt_spinbox, head_center_button);

        menubar->addAction(menu_File->menuAction());
        menu_File->addAction(action_Preferences);
        menu_File->addSeparator();
        menu_File->addAction(actionAbout);
        menu_File->addAction(actionAbout_Qt);
        menu_File->addSeparator();
        menu_File->addAction(action_Quit);

        retranslateUi(MainWindowDesign);
        QObject::connect(action_Quit, SIGNAL(triggered()), MainWindowDesign, SLOT(close()));
        QObject::connect(head_tilt_slider, SIGNAL(valueChanged(int)), head_tilt_spinbox, SLOT(setValue(int)));
        QObject::connect(head_pan_spinbox, SIGNAL(valueChanged(int)), head_pan_slider, SLOT(setValue(int)));
        QObject::connect(head_pan_slider, SIGNAL(valueChanged(int)), head_pan_spinbox, SLOT(setValue(int)));
        QObject::connect(head_tilt_spinbox, SIGNAL(valueChanged(int)), head_tilt_slider, SLOT(setValue(int)));

        tabWidget_control->setCurrentIndex(5);
        tabWidget->setCurrentIndex(0);
        tabWidget_2->setCurrentIndex(3);


        QMetaObject::connectSlotsByName(MainWindowDesign);
    } // setupUi

    void retranslateUi(QMainWindow *MainWindowDesign)
    {
        MainWindowDesign->setWindowTitle(QApplication::translate("MainWindowDesign", "OP3 ", 0, QApplication::UnicodeUTF8));
        action_Quit->setText(QApplication::translate("MainWindowDesign", "&Quit", 0, QApplication::UnicodeUTF8));
        action_Quit->setShortcut(QApplication::translate("MainWindowDesign", "Ctrl+Q", 0, QApplication::UnicodeUTF8));
        action_Preferences->setText(QApplication::translate("MainWindowDesign", "&Preferences", 0, QApplication::UnicodeUTF8));
        actionAbout->setText(QApplication::translate("MainWindowDesign", "&About", 0, QApplication::UnicodeUTF8));
        actionAbout_Qt->setText(QApplication::translate("MainWindowDesign", "About &Qt", 0, QApplication::UnicodeUTF8));
        groupBox_log->setTitle(QApplication::translate("MainWindowDesign", "Logging", 0, QApplication::UnicodeUTF8));
        button_clear_log->setText(QApplication::translate("MainWindowDesign", "Clear", 0, QApplication::UnicodeUTF8));
        groupBox_lidar->setTitle(QApplication::translate("MainWindowDesign", "Basic Control", 0, QApplication::UnicodeUTF8));
        button_init_pose->setText(QApplication::translate("MainWindowDesign", "Robot Init Pose", 0, QApplication::UnicodeUTF8));
        tabWidget_control->setTabText(tabWidget_control->indexOf(tab_mode), QApplication::translate("MainWindowDesign", "Mode Control", 0, QApplication::UnicodeUTF8));
        groupBox_init_pose->setTitle(QApplication::translate("MainWindowDesign", "Initial Pose", 0, QApplication::UnicodeUTF8));
        dSpinBox_init_offset_x->setSuffix(QApplication::translate("MainWindowDesign", " \357\275\215", 0, QApplication::UnicodeUTF8));
        label_12->setText(QApplication::translate("MainWindowDesign", "Y", 0, QApplication::UnicodeUTF8));
        dSpinBox_init_offset_z->setSuffix(QApplication::translate("MainWindowDesign", " \357\275\215", 0, QApplication::UnicodeUTF8));
        label_11->setText(QApplication::translate("MainWindowDesign", "X", 0, QApplication::UnicodeUTF8));
        label_13->setText(QApplication::translate("MainWindowDesign", "Z", 0, QApplication::UnicodeUTF8));
        dSpinBox_init_offset_y->setSuffix(QApplication::translate("MainWindowDesign", " \357\275\215", 0, QApplication::UnicodeUTF8));
        dSpinBox_init_offset_pitch->setSuffix(QApplication::translate("MainWindowDesign", "  \357\276\237", 0, QApplication::UnicodeUTF8));
        dSpinBox_hip_pitch_offset->setSuffix(QApplication::translate("MainWindowDesign", "  \357\276\237", 0, QApplication::UnicodeUTF8));
        label_10->setText(QApplication::translate("MainWindowDesign", "Roll", 0, QApplication::UnicodeUTF8));
        label_14->setText(QApplication::translate("MainWindowDesign", "Pitch", 0, QApplication::UnicodeUTF8));
        dSpinBox_init_offset_yaw->setSuffix(QApplication::translate("MainWindowDesign", "  \357\276\237", 0, QApplication::UnicodeUTF8));
        label_33->setText(QApplication::translate("MainWindowDesign", "Hip Pitch Offset", 0, QApplication::UnicodeUTF8));
        label_15->setText(QApplication::translate("MainWindowDesign", "Yaw", 0, QApplication::UnicodeUTF8));
        dSpinBox_init_offset_roll->setSuffix(QApplication::translate("MainWindowDesign", "  \357\276\237", 0, QApplication::UnicodeUTF8));
        label_16->setText(QApplication::translate("MainWindowDesign", "Period Time", 0, QApplication::UnicodeUTF8));
        label_18->setText(QApplication::translate("MainWindowDesign", "DSP Ratio", 0, QApplication::UnicodeUTF8));
        label_19->setText(QApplication::translate("MainWindowDesign", "Step FB Ratio", 0, QApplication::UnicodeUTF8));
        label_23->setText(QApplication::translate("MainWindowDesign", "Move Aim", 0, QApplication::UnicodeUTF8));
        checkBox_move_aim_on->setText(QApplication::translate("MainWindowDesign", "On", 0, QApplication::UnicodeUTF8));
        checkBox_move_aim_off->setText(QApplication::translate("MainWindowDesign", "Off", 0, QApplication::UnicodeUTF8));
        dSpinBox_period_time->setSuffix(QApplication::translate("MainWindowDesign", " \343\216\263", 0, QApplication::UnicodeUTF8));
        groupBox_balance_control->setTitle(QApplication::translate("MainWindowDesign", "Balance Control", 0, QApplication::UnicodeUTF8));
        label_24->setText(QApplication::translate("MainWindowDesign", "Hip Roll Gain", 0, QApplication::UnicodeUTF8));
        checkBox_balance_on->setText(QApplication::translate("MainWindowDesign", "On", 0, QApplication::UnicodeUTF8));
        label_26->setText(QApplication::translate("MainWindowDesign", "Balance", 0, QApplication::UnicodeUTF8));
        checkBox_balance_off->setText(QApplication::translate("MainWindowDesign", "Off", 0, QApplication::UnicodeUTF8));
        label_25->setText(QApplication::translate("MainWindowDesign", "Knee Gain", 0, QApplication::UnicodeUTF8));
        label_27->setText(QApplication::translate("MainWindowDesign", "Ankle Roll Gain", 0, QApplication::UnicodeUTF8));
        label_28->setText(QApplication::translate("MainWindowDesign", "Ankle Pitch Gain", 0, QApplication::UnicodeUTF8));
        label_31->setText(QApplication::translate("MainWindowDesign", "Arm Swing Gain", 0, QApplication::UnicodeUTF8));
        label_32->setText(QApplication::translate("MainWindowDesign", "Pelvis Offset", 0, QApplication::UnicodeUTF8));
        label_29->setText(QApplication::translate("MainWindowDesign", "Y Swap Amplitude", 0, QApplication::UnicodeUTF8));
        dSpinBox_z_swap_amplitude->setSuffix(QApplication::translate("MainWindowDesign", " \357\275\215", 0, QApplication::UnicodeUTF8));
        label_30->setText(QApplication::translate("MainWindowDesign", "Z Swap Amplitude", 0, QApplication::UnicodeUTF8));
        dSpinBox_y_swap_amplitude->setSuffix(QApplication::translate("MainWindowDesign", " \357\275\215", 0, QApplication::UnicodeUTF8));
        dSpinBox_pelvis_offset->setSuffix(QApplication::translate("MainWindowDesign", "  \357\276\237", 0, QApplication::UnicodeUTF8));
        button_init_gyro->setText(QApplication::translate("MainWindowDesign", "Init Gyro", 0, QApplication::UnicodeUTF8));
        label_17->setText(QApplication::translate("MainWindowDesign", "X Move Amplitude", 0, QApplication::UnicodeUTF8));
        label_21->setText(QApplication::translate("MainWindowDesign", "Z Move Amplitude", 0, QApplication::UnicodeUTF8));
        label_20->setText(QApplication::translate("MainWindowDesign", "Y Move Amplitude", 0, QApplication::UnicodeUTF8));
        dSpinBox_x_move_amplitude->setSuffix(QApplication::translate("MainWindowDesign", " \357\275\215", 0, QApplication::UnicodeUTF8));
        label_22->setText(QApplication::translate("MainWindowDesign", "Yaw Move Amplitude", 0, QApplication::UnicodeUTF8));
        dSpinBox_y_move_amplitude->setSuffix(QApplication::translate("MainWindowDesign", " \357\275\215", 0, QApplication::UnicodeUTF8));
        dSpinBox_z_move_amplitude->setSuffix(QApplication::translate("MainWindowDesign", " \357\275\215", 0, QApplication::UnicodeUTF8));
        dSpinBox_a_move_amplitude->setSuffix(QApplication::translate("MainWindowDesign", "  \357\276\237", 0, QApplication::UnicodeUTF8));
        groupBox_balance_control_2->setTitle(QApplication::translate("MainWindowDesign", "Offset", 0, QApplication::UnicodeUTF8));
        label_168->setText(QApplication::translate("MainWindowDesign", "Right", 0, QApplication::UnicodeUTF8));
        label_169->setText(QApplication::translate("MainWindowDesign", "X", 0, QApplication::UnicodeUTF8));
        label_170->setText(QApplication::translate("MainWindowDesign", "Y", 0, QApplication::UnicodeUTF8));
        label_171->setText(QApplication::translate("MainWindowDesign", "Z", 0, QApplication::UnicodeUTF8));
        label_172->setText(QApplication::translate("MainWindowDesign", "Roll", 0, QApplication::UnicodeUTF8));
        label_173->setText(QApplication::translate("MainWindowDesign", "Pitch", 0, QApplication::UnicodeUTF8));
        label_174->setText(QApplication::translate("MainWindowDesign", "Yaw", 0, QApplication::UnicodeUTF8));
        label_154->setText(QApplication::translate("MainWindowDesign", "Pitch", 0, QApplication::UnicodeUTF8));
        label_155->setText(QApplication::translate("MainWindowDesign", "Kp", 0, QApplication::UnicodeUTF8));
        label_156->setText(QApplication::translate("MainWindowDesign", "Kd", 0, QApplication::UnicodeUTF8));
        label_157->setText(QApplication::translate("MainWindowDesign", "Ki", 0, QApplication::UnicodeUTF8));
        label_158->setText(QApplication::translate("MainWindowDesign", "Hip", 0, QApplication::UnicodeUTF8));
        label_159->setText(QApplication::translate("MainWindowDesign", "Knee", 0, QApplication::UnicodeUTF8));
        label_160->setText(QApplication::translate("MainWindowDesign", "Ankle", 0, QApplication::UnicodeUTF8));
        label_161->setText(QApplication::translate("MainWindowDesign", "Shoulder", 0, QApplication::UnicodeUTF8));
        label_162->setText(QApplication::translate("MainWindowDesign", "Roll", 0, QApplication::UnicodeUTF8));
        label_163->setText(QApplication::translate("MainWindowDesign", "Kp", 0, QApplication::UnicodeUTF8));
        label_164->setText(QApplication::translate("MainWindowDesign", "Kd", 0, QApplication::UnicodeUTF8));
        label_165->setText(QApplication::translate("MainWindowDesign", "Ki", 0, QApplication::UnicodeUTF8));
        label_166->setText(QApplication::translate("MainWindowDesign", "Hip", 0, QApplication::UnicodeUTF8));
        label_167->setText(QApplication::translate("MainWindowDesign", "Ankle", 0, QApplication::UnicodeUTF8));
        label_175->setText(QApplication::translate("MainWindowDesign", "Left", 0, QApplication::UnicodeUTF8));
        label_176->setText(QApplication::translate("MainWindowDesign", "X", 0, QApplication::UnicodeUTF8));
        label_177->setText(QApplication::translate("MainWindowDesign", "Y", 0, QApplication::UnicodeUTF8));
        label_178->setText(QApplication::translate("MainWindowDesign", "Z", 0, QApplication::UnicodeUTF8));
        label_179->setText(QApplication::translate("MainWindowDesign", "Roll", 0, QApplication::UnicodeUTF8));
        label_180->setText(QApplication::translate("MainWindowDesign", "Pitch", 0, QApplication::UnicodeUTF8));
        label_181->setText(QApplication::translate("MainWindowDesign", "Yaw", 0, QApplication::UnicodeUTF8));
        groupBox_walking_command->setTitle(QApplication::translate("MainWindowDesign", "Walking Command", 0, QApplication::UnicodeUTF8));
        button_param_refresh->setText(QApplication::translate("MainWindowDesign", "Refresh", 0, QApplication::UnicodeUTF8));
        button_param_save->setText(QApplication::translate("MainWindowDesign", "Save", 0, QApplication::UnicodeUTF8));
        button_param_apply->setText(QApplication::translate("MainWindowDesign", "Apply", 0, QApplication::UnicodeUTF8));
        button_param_apply->setShortcut(QApplication::translate("MainWindowDesign", "\\", 0, QApplication::UnicodeUTF8));
        button_walking_start->setText(QApplication::translate("MainWindowDesign", "Start", 0, QApplication::UnicodeUTF8));
        button_walking_start->setShortcut(QApplication::translate("MainWindowDesign", "F12", 0, QApplication::UnicodeUTF8));
        button_walking_stop->setText(QApplication::translate("MainWindowDesign", "Stop", 0, QApplication::UnicodeUTF8));
        button_walking_stop->setShortcut(QApplication::translate("MainWindowDesign", "Esc", 0, QApplication::UnicodeUTF8));
        tabWidget_control->setTabText(tabWidget_control->indexOf(tab_walking_module), QApplication::translate("MainWindowDesign", "Walking", 0, QApplication::UnicodeUTF8));
        groupBox_2->setTitle(QApplication::translate("MainWindowDesign", "Head Joint", 0, QApplication::UnicodeUTF8));
        head_pan_spinbox->setSuffix(QApplication::translate("MainWindowDesign", " \313\232", 0, QApplication::UnicodeUTF8));
        label_5->setText(QApplication::translate("MainWindowDesign", "\342\227\200", 0, QApplication::UnicodeUTF8));
        head_center_button->setText(QApplication::translate("MainWindowDesign", "Center", 0, QApplication::UnicodeUTF8));
        head_tilt_spinbox->setSuffix(QApplication::translate("MainWindowDesign", " \313\232", 0, QApplication::UnicodeUTF8));
        label_6->setText(QApplication::translate("MainWindowDesign", " \342\226\266 ", 0, QApplication::UnicodeUTF8));
        label_3->setText(QApplication::translate("MainWindowDesign", "Head Pan", 0, QApplication::UnicodeUTF8));
        label_4->setText(QApplication::translate("MainWindowDesign", "Head Tilt", 0, QApplication::UnicodeUTF8));
        label_7->setText(QApplication::translate("MainWindowDesign", "\342\226\274", 0, QApplication::UnicodeUTF8));
        label_8->setText(QApplication::translate("MainWindowDesign", "\342\226\262", 0, QApplication::UnicodeUTF8));
        tabWidget_control->setTabText(tabWidget_control->indexOf(tab_head_control_module), QApplication::translate("MainWindowDesign", "Head Control", 0, QApplication::UnicodeUTF8));
        groupBox_3->setTitle(QApplication::translate("MainWindowDesign", "Configuration", 0, QApplication::UnicodeUTF8));
        label_35->setText(QApplication::translate("MainWindowDesign", "Supp Front", 0, QApplication::UnicodeUTF8));
        label_43->setText(QApplication::translate("MainWindowDesign", "Supp Front 2", 0, QApplication::UnicodeUTF8));
        label_36->setText(QApplication::translate("MainWindowDesign", "Supp Turn", 0, QApplication::UnicodeUTF8));
        label_37->setText(QApplication::translate("MainWindowDesign", "Supp Side X", 0, QApplication::UnicodeUTF8));
        label_38->setText(QApplication::translate("MainWindowDesign", "Supp Side Y", 0, QApplication::UnicodeUTF8));
        label_39->setText(QApplication::translate("MainWindowDesign", "Supp X", 0, QApplication::UnicodeUTF8));
        label_40->setText(QApplication::translate("MainWindowDesign", "Supp Y", 0, QApplication::UnicodeUTF8));
        label_41->setText(QApplication::translate("MainWindowDesign", "SuppMod Y Init", 0, QApplication::UnicodeUTF8));
        label_42->setText(QApplication::translate("MainWindowDesign", "TurnComp Thrs", 0, QApplication::UnicodeUTF8));
        label_44->setText(QApplication::translate("MainWindowDesign", "Turn Comp", 0, QApplication::UnicodeUTF8));
        label_45->setText(QApplication::translate("MainWindowDesign", "Accel Comp", 0, QApplication::UnicodeUTF8));
        label_46->setText(QApplication::translate("MainWindowDesign", "Front Comp", 0, QApplication::UnicodeUTF8));
        label_47->setText(QApplication::translate("MainWindowDesign", "Hip Roll Comp", 0, QApplication::UnicodeUTF8));
        label_60->setText(QApplication::translate("MainWindowDesign", "Arm Pitch", 0, QApplication::UnicodeUTF8));
        label_61->setText(QApplication::translate("MainWindowDesign", "Arm Roll", 0, QApplication::UnicodeUTF8));
        label_62->setText(QApplication::translate("MainWindowDesign", "Arm Elbow", 0, QApplication::UnicodeUTF8));
        dspin_armpitch->setSuffix(QApplication::translate("MainWindowDesign", " \357\276\237", 0, QApplication::UnicodeUTF8));
        dspin_armroll->setSuffix(QApplication::translate("MainWindowDesign", " \357\276\237", 0, QApplication::UnicodeUTF8));
        dspin_armelbow->setSuffix(QApplication::translate("MainWindowDesign", " \357\276\237", 0, QApplication::UnicodeUTF8));
        label_48->setText(QApplication::translate("MainWindowDesign", "tStep", 0, QApplication::UnicodeUTF8));
        label_49->setText(QApplication::translate("MainWindowDesign", "VelFast Forward", 0, QApplication::UnicodeUTF8));
        label_50->setText(QApplication::translate("MainWindowDesign", "VelFast Turn", 0, QApplication::UnicodeUTF8));
        label_51->setText(QApplication::translate("MainWindowDesign", "Ankle Supp Fact", 0, QApplication::UnicodeUTF8));
        label_34->setText(QApplication::translate("MainWindowDesign", "tZmp", 0, QApplication::UnicodeUTF8));
        label_59->setText(QApplication::translate("MainWindowDesign", "Body Tilt", 0, QApplication::UnicodeUTF8));
        dspin_bodytilt->setSuffix(QApplication::translate("MainWindowDesign", " \357\276\237", 0, QApplication::UnicodeUTF8));
        label_52->setText(QApplication::translate("MainWindowDesign", "Foot Y", 0, QApplication::UnicodeUTF8));
        label_53->setText(QApplication::translate("MainWindowDesign", "Stand Offset", 0, QApplication::UnicodeUTF8));
        label_54->setText(QApplication::translate("MainWindowDesign", "Body Height", 0, QApplication::UnicodeUTF8));
        label_55->setText(QApplication::translate("MainWindowDesign", "Step Height", 0, QApplication::UnicodeUTF8));
        label_56->setText(QApplication::translate("MainWindowDesign", "Belly Roll", 0, QApplication::UnicodeUTF8));
        label_57->setText(QApplication::translate("MainWindowDesign", "Belly Hip", 0, QApplication::UnicodeUTF8));
        label_58->setText(QApplication::translate("MainWindowDesign", "Foot X", 0, QApplication::UnicodeUTF8));
        commandBox->setTitle(QApplication::translate("MainWindowDesign", "Command Box", 0, QApplication::UnicodeUTF8));
        zmp_start_button->setText(QApplication::translate("MainWindowDesign", "Start", 0, QApplication::UnicodeUTF8));
        zmp_stop_button->setText(QApplication::translate("MainWindowDesign", "Stop", 0, QApplication::UnicodeUTF8));
        zmp_reset_button->setText(QApplication::translate("MainWindowDesign", "Reset", 0, QApplication::UnicodeUTF8));
        label->setText(QApplication::translate("MainWindowDesign", "Vx", 0, QApplication::UnicodeUTF8));
        label_2->setText(QApplication::translate("MainWindowDesign", "Vy", 0, QApplication::UnicodeUTF8));
        label_9->setText(QApplication::translate("MainWindowDesign", "Vphi", 0, QApplication::UnicodeUTF8));
        label_63->setText(QApplication::translate("MainWindowDesign", "mVx", 0, QApplication::UnicodeUTF8));
        label_64->setText(QApplication::translate("MainWindowDesign", "mVy", 0, QApplication::UnicodeUTF8));
        label_65->setText(QApplication::translate("MainWindowDesign", "mVphi", 0, QApplication::UnicodeUTF8));
        zmp_refresh_button->setText(QApplication::translate("MainWindowDesign", "Refresh", 0, QApplication::UnicodeUTF8));
        zmp_save_button->setText(QApplication::translate("MainWindowDesign", "Save", 0, QApplication::UnicodeUTF8));
        zmp_apply_button->setText(QApplication::translate("MainWindowDesign", "Apply", 0, QApplication::UnicodeUTF8));
        groupBox->setTitle(QString());
        label_72->setText(QApplication::translate("MainWindowDesign", "Kp", 0, QApplication::UnicodeUTF8));
        label_73->setText(QApplication::translate("MainWindowDesign", "Kd", 0, QApplication::UnicodeUTF8));
        label_74->setText(QApplication::translate("MainWindowDesign", "TH1", 0, QApplication::UnicodeUTF8));
        label_75->setText(QApplication::translate("MainWindowDesign", "TH2", 0, QApplication::UnicodeUTF8));
        label_76->setText(QApplication::translate("MainWindowDesign", "Acc", 0, QApplication::UnicodeUTF8));
        label_87->setText(QApplication::translate("MainWindowDesign", "KpP", 0, QApplication::UnicodeUTF8));
        label_88->setText(QApplication::translate("MainWindowDesign", "KdP", 0, QApplication::UnicodeUTF8));
        label_89->setText(QApplication::translate("MainWindowDesign", "KpR", 0, QApplication::UnicodeUTF8));
        label_90->setText(QApplication::translate("MainWindowDesign", "KdR", 0, QApplication::UnicodeUTF8));
        label_91->setText(QApplication::translate("MainWindowDesign", "Ki", 0, QApplication::UnicodeUTF8));
        zmp_feedback->setText(QApplication::translate("MainWindowDesign", "Feedback", 0, QApplication::UnicodeUTF8));
        tabWidget_control->setTabText(tabWidget_control->indexOf(tab_zmp), QApplication::translate("MainWindowDesign", "ZMP", 0, QApplication::UnicodeUTF8));
        groupBox_walking_command1->setTitle(QApplication::translate("MainWindowDesign", "Walking Command", 0, QApplication::UnicodeUTF8));
        checkBox_halt_position->setText(QApplication::translate("MainWindowDesign", "Halt Postition", 0, QApplication::UnicodeUTF8));
        button_capture_step_refresh->setText(QApplication::translate("MainWindowDesign", "Refresh", 0, QApplication::UnicodeUTF8));
        checkBox_leg_swing->setText(QApplication::translate("MainWindowDesign", "Leg Swing", 0, QApplication::UnicodeUTF8));
        button_capture_step_stop->setText(QApplication::translate("MainWindowDesign", "Stop", 0, QApplication::UnicodeUTF8));
        button_capture_step_stop->setShortcut(QApplication::translate("MainWindowDesign", "Esc", 0, QApplication::UnicodeUTF8));
        button_capture_step_start->setText(QApplication::translate("MainWindowDesign", "Start", 0, QApplication::UnicodeUTF8));
        button_capture_step_start->setShortcut(QApplication::translate("MainWindowDesign", "F12", 0, QApplication::UnicodeUTF8));
        button_capture_step_save->setText(QApplication::translate("MainWindowDesign", "Save", 0, QApplication::UnicodeUTF8));
        button_capture_step_apply->setText(QApplication::translate("MainWindowDesign", "Apply", 0, QApplication::UnicodeUTF8));
        button_capture_step_apply->setShortcut(QApplication::translate("MainWindowDesign", "\\", 0, QApplication::UnicodeUTF8));
        checkBox_leg_lifting->setText(QApplication::translate("MainWindowDesign", "Leg Lifting", 0, QApplication::UnicodeUTF8));
        checkBox_lateral_hip_swing->setText(QApplication::translate("MainWindowDesign", "Lateral Hip Swing", 0, QApplication::UnicodeUTF8));
        checkBox_leaning->setText(QApplication::translate("MainWindowDesign", "Leaning", 0, QApplication::UnicodeUTF8));
        label_361->setText(QApplication::translate("MainWindowDesign", "X Move", 0, QApplication::UnicodeUTF8));
        label_371->setText(QApplication::translate("MainWindowDesign", "Y Move", 0, QApplication::UnicodeUTF8));
        label_67->setText(QApplication::translate("MainWindowDesign", "Angle Move", 0, QApplication::UnicodeUTF8));
        label_warning->setText(QApplication::translate("MainWindowDesign", "Maximum Speed [-1,1].", 0, QApplication::UnicodeUTF8));
        goupBox_cpg_parameters->setTitle(QApplication::translate("MainWindowDesign", "CPG Parameters", 0, QApplication::UnicodeUTF8));
        label_341->setText(QApplication::translate("MainWindowDesign", "Halt Pos Foot Roll", 0, QApplication::UnicodeUTF8));
        label_131->setText(QApplication::translate("MainWindowDesign", "Halt Pos Leg Pitch", 0, QApplication::UnicodeUTF8));
        d_spinBox_c1->setSuffix(QString());
        label_121->setText(QApplication::translate("MainWindowDesign", "Halt Pos Leg Roll", 0, QApplication::UnicodeUTF8));
        label_111->setText(QApplication::translate("MainWindowDesign", "Halt Pos Leg Extension   ", 0, QApplication::UnicodeUTF8));
        label1->setText(QApplication::translate("MainWindowDesign", "Halt Pos Foot Pitch", 0, QApplication::UnicodeUTF8));
        d_spinBox_c2->setSuffix(QString());
        d_spinBox_c3->setSuffix(QString());
        label_251->setText(QApplication::translate("MainWindowDesign", "Backward Lean", 0, QApplication::UnicodeUTF8));
        label_241->setText(QApplication::translate("MainWindowDesign", "Forward Lean", 0, QApplication::UnicodeUTF8));
        label_271->setText(QApplication::translate("MainWindowDesign", "Forward Turning Lean     ", 0, QApplication::UnicodeUTF8));
        tabWidget->setTabText(tabWidget->indexOf(tab_halt), QApplication::translate("MainWindowDesign", "Halt Position Leaning", 0, QApplication::UnicodeUTF8));
        d_spinBox_c6->setSuffix(QString());
        d_spinBox_c7->setSuffix(QString());
        label_101->setText(QApplication::translate("MainWindowDesign", "Const Ground Push", 0, QApplication::UnicodeUTF8));
        label_151->setText(QApplication::translate("MainWindowDesign", "Constant Step Height", 0, QApplication::UnicodeUTF8));
        label_141->setText(QApplication::translate("MainWindowDesign", "Proportional Ground Push", 0, QApplication::UnicodeUTF8));
        d_spinBox_c8->setSuffix(QString());
        label_331->setText(QApplication::translate("MainWindowDesign", "Proportional Step Height", 0, QApplication::UnicodeUTF8));
        d_spinBox_c9->setSuffix(QString());
        tabWidget->setTabText(tabWidget->indexOf(tab_lifting), QApplication::translate("MainWindowDesign", "Leg Lifting", 0, QApplication::UnicodeUTF8));
        label_1610->setText(QApplication::translate("MainWindowDesign", "Swing Start Time", 0, QApplication::UnicodeUTF8));
        label_182->setText(QApplication::translate("MainWindowDesign", "Swing Stop Time", 0, QApplication::UnicodeUTF8));
        label_191->setText(QApplication::translate("MainWindowDesign", "Saggital Swing Amp Fwd", 0, QApplication::UnicodeUTF8));
        d_spinBox_t0->setSuffix(QString());
        label_210->setText(QApplication::translate("MainWindowDesign", "Saggital Swing Amp Bwd", 0, QApplication::UnicodeUTF8));
        label_231->setText(QApplication::translate("MainWindowDesign", "Lateral Swing Amplitude", 0, QApplication::UnicodeUTF8));
        label_1710->setText(QApplication::translate("MainWindowDesign", "Lateral Swing Amp Ofs", 0, QApplication::UnicodeUTF8));
        label_211->setText(QApplication::translate("MainWindowDesign", "Rotational Swing Amp", 0, QApplication::UnicodeUTF8));
        label_201->setText(QApplication::translate("MainWindowDesign", "Turning Lateral Swing Ofs", 0, QApplication::UnicodeUTF8));
        d_spinBox_c13->setSuffix(QString());
        label_221->setText(QApplication::translate("MainWindowDesign", "Rotational Swing Amp Ofs", 0, QApplication::UnicodeUTF8));
        d_spinBox_c14->setSuffix(QString());
        d_spinBox_c15->setSuffix(QString());
        d_spinBox_c16->setSuffix(QString());
        label_92->setText(QApplication::translate("MainWindowDesign", "Lateral Hip Swing Amp", 0, QApplication::UnicodeUTF8));
        tabWidget->setTabText(tabWidget->indexOf(tab_swing), QApplication::translate("MainWindowDesign", "Leg and Hip Swing", 0, QApplication::UnicodeUTF8));
        label_291->setText(QApplication::translate("MainWindowDesign", "Lateral Acceleration", 0, QApplication::UnicodeUTF8));
        d_spinBox_c24->setSuffix(QString());
        label_301->setText(QApplication::translate("MainWindowDesign", "Rotational Acceleration     ", 0, QApplication::UnicodeUTF8));
        d_spinBox_c23->setSuffix(QString());
        label_281->setText(QApplication::translate("MainWindowDesign", "Gain Velocity Limiting P", 0, QApplication::UnicodeUTF8));
        label_261->setText(QApplication::translate("MainWindowDesign", "Saggital Acceleration", 0, QApplication::UnicodeUTF8));
        label_311->setText(QApplication::translate("MainWindowDesign", "Const Step Frequency", 0, QApplication::UnicodeUTF8));
        label_321->setText(QApplication::translate("MainWindowDesign", "Saggital Prop Step Frq", 0, QApplication::UnicodeUTF8));
        d_spinBox_c26->setSuffix(QString());
        label_351->setText(QApplication::translate("MainWindowDesign", "Lateral Prop Step Frq", 0, QApplication::UnicodeUTF8));
        tabWidget->setTabText(tabWidget->indexOf(tab_interface), QApplication::translate("MainWindowDesign", "Control Interface", 0, QApplication::UnicodeUTF8));
        tabWidget_control->setTabText(tabWidget_control->indexOf(tab_capture_step), QApplication::translate("MainWindowDesign", "Capture Step", 0, QApplication::UnicodeUTF8));
        group_parameterqw->setTitle(QApplication::translate("MainWindowDesign", "Walking Parameter", 0, QApplication::UnicodeUTF8));
        label_footDistance->setText(QApplication::translate("MainWindowDesign", "Foot Distance", 0, QApplication::UnicodeUTF8));
        label_footRise->setText(QApplication::translate("MainWindowDesign", "Foot Raise", 0, QApplication::UnicodeUTF8));
        label_footPutDownZOffset->setText(QApplication::translate("MainWindowDesign", "Foot Putdown Z Offset", 0, QApplication::UnicodeUTF8));
        label_footPutDownPhase->setText(QApplication::translate("MainWindowDesign", "Foot Putdown Phase", 0, QApplication::UnicodeUTF8));
        label_footApexPhase->setText(QApplication::translate("MainWindowDesign", "Foot Apex Phase", 0, QApplication::UnicodeUTF8));
        label_footOvershootRatio->setText(QApplication::translate("MainWindowDesign", "Foot Overshoot Ratio", 0, QApplication::UnicodeUTF8));
        label_footOvershootPhase->setText(QApplication::translate("MainWindowDesign", "Foot Overshoot Phase", 0, QApplication::UnicodeUTF8));
        tabWidget_2->setTabText(tabWidget_2->indexOf(tab_foot), QApplication::translate("MainWindowDesign", "Foot", 0, QApplication::UnicodeUTF8));
        label_trunkHeight->setText(QApplication::translate("MainWindowDesign", "Trunk Height", 0, QApplication::UnicodeUTF8));
        label_trunkPitch->setText(QApplication::translate("MainWindowDesign", "Trunk Pitch", 0, QApplication::UnicodeUTF8));
        label_trunkPhase->setText(QApplication::translate("MainWindowDesign", "Trunk Phase", 0, QApplication::UnicodeUTF8));
        label_trunkXOffset->setText(QApplication::translate("MainWindowDesign", "Trunk X Offset", 0, QApplication::UnicodeUTF8));
        label_trunkYOffset->setText(QApplication::translate("MainWindowDesign", "Trunk Y Offset", 0, QApplication::UnicodeUTF8));
        label_trunkSwing->setText(QApplication::translate("MainWindowDesign", "Trunk Swing", 0, QApplication::UnicodeUTF8));
        label_trunkPause->setText(QApplication::translate("MainWindowDesign", "Trunk Pause", 0, QApplication::UnicodeUTF8));
        tabWidget_2->setTabText(tabWidget_2->indexOf(tab_trunk), QApplication::translate("MainWindowDesign", "Trunk", 0, QApplication::UnicodeUTF8));
        label_trunkXOffsetPCoefForward->setText(QApplication::translate("MainWindowDesign", "Trunk XOffset P Coef Forward", 0, QApplication::UnicodeUTF8));
        label_trunkXOffsetPCoefTurn->setText(QApplication::translate("MainWindowDesign", "Trunk XOffset P Coef Turn", 0, QApplication::UnicodeUTF8));
        label_pitch_error_tol->setText(QApplication::translate("MainWindowDesign", "PitchErrorTolerance", 0, QApplication::UnicodeUTF8));
        label_setpointPitch->setText(QApplication::translate("MainWindowDesign", "SetPointPitch", 0, QApplication::UnicodeUTF8));
        tabWidget_2->setTabText(tabWidget_2->indexOf(tab_trunk2), QApplication::translate("MainWindowDesign", "Trunk 2", 0, QApplication::UnicodeUTF8));
        label_KD0->setText(QApplication::translate("MainWindowDesign", "KD 0", 0, QApplication::UnicodeUTF8));
        label_KD1->setText(QApplication::translate("MainWindowDesign", "KD 1", 0, QApplication::UnicodeUTF8));
        label_KD2->setText(QApplication::translate("MainWindowDesign", "KD 2", 0, QApplication::UnicodeUTF8));
        label_KD3->setText(QApplication::translate("MainWindowDesign", "KD 3", 0, QApplication::UnicodeUTF8));
        label_KD4->setText(QApplication::translate("MainWindowDesign", "KD 4", 0, QApplication::UnicodeUTF8));
        label_KP0->setText(QApplication::translate("MainWindowDesign", "KP 0", 0, QApplication::UnicodeUTF8));
        label_KP1->setText(QApplication::translate("MainWindowDesign", "KP 1", 0, QApplication::UnicodeUTF8));
        label_KP2->setText(QApplication::translate("MainWindowDesign", "KP 2", 0, QApplication::UnicodeUTF8));
        label_KP3->setText(QApplication::translate("MainWindowDesign", "KP 3", 0, QApplication::UnicodeUTF8));
        label_KP4->setText(QApplication::translate("MainWindowDesign", "KP 4", 0, QApplication::UnicodeUTF8));
        tabWidget_2->setTabText(tabWidget_2->indexOf(tab_fuzzy), QApplication::translate("MainWindowDesign", "Fuzzy", 0, QApplication::UnicodeUTF8));
#ifndef QT_NO_ACCESSIBILITY
        tab_fuzzy2->setAccessibleName(QString());
#endif // QT_NO_ACCESSIBILITY
        label_Gyro0->setText(QApplication::translate("MainWindowDesign", "Gyro 0     ", 0, QApplication::UnicodeUTF8));
        label_Gyro1->setText(QApplication::translate("MainWindowDesign", "Gyro 1", 0, QApplication::UnicodeUTF8));
        label_Gyro2->setText(QApplication::translate("MainWindowDesign", "Gyro 2", 0, QApplication::UnicodeUTF8));
        label_Gyro3->setText(QApplication::translate("MainWindowDesign", "Gyro 3", 0, QApplication::UnicodeUTF8));
        label_Gyro4->setText(QApplication::translate("MainWindowDesign", "Gyro 4", 0, QApplication::UnicodeUTF8));
        label_Angle0->setText(QApplication::translate("MainWindowDesign", "Angle 0     ", 0, QApplication::UnicodeUTF8));
        label_Angle1->setText(QApplication::translate("MainWindowDesign", "Angle 1", 0, QApplication::UnicodeUTF8));
        label_Angle2->setText(QApplication::translate("MainWindowDesign", "Angle 2", 0, QApplication::UnicodeUTF8));
        label_Angle3->setText(QApplication::translate("MainWindowDesign", "Angle 3", 0, QApplication::UnicodeUTF8));
        label_Angle4->setText(QApplication::translate("MainWindowDesign", "Angle 4", 0, QApplication::UnicodeUTF8));
        tabWidget_2->setTabText(tabWidget_2->indexOf(tab_fuzzy2), QApplication::translate("MainWindowDesign", "Fuzzy 2", 0, QApplication::UnicodeUTF8));
        label_freq->setText(QApplication::translate("MainWindowDesign", "Freq ", 0, QApplication::UnicodeUTF8));
        label_dspratio->setText(QApplication::translate("MainWindowDesign", "DSP Ratio", 0, QApplication::UnicodeUTF8));
        comboBox->clear();
        comboBox->insertItems(0, QStringList()
         << QApplication::translate("MainWindowDesign", "Maju", 0, QApplication::UnicodeUTF8)
         << QApplication::translate("MainWindowDesign", "Kanan", 0, QApplication::UnicodeUTF8)
         << QApplication::translate("MainWindowDesign", "Kiri", 0, QApplication::UnicodeUTF8)
        );
        label_69->setText(QApplication::translate("MainWindowDesign", "Mode", 0, QApplication::UnicodeUTF8));
        checkBox_tuning->setText(QApplication::translate("MainWindowDesign", "Tuning", 0, QApplication::UnicodeUTF8));
        label_zmove->setText(QApplication::translate("MainWindowDesign", "Angle Move", 0, QApplication::UnicodeUTF8));
        label_68->setText(QApplication::translate("MainWindowDesign", "Max Value at 0.1", 0, QApplication::UnicodeUTF8));
        button_quintic_walk_start->setText(QApplication::translate("MainWindowDesign", "Start", 0, QApplication::UnicodeUTF8));
        button_quintic_walk_start->setShortcut(QApplication::translate("MainWindowDesign", "F12", 0, QApplication::UnicodeUTF8));
        label_ymove->setText(QApplication::translate("MainWindowDesign", "Y Move", 0, QApplication::UnicodeUTF8));
        label_xmove->setText(QApplication::translate("MainWindowDesign", "X Move", 0, QApplication::UnicodeUTF8));
        label_66->setText(QApplication::translate("MainWindowDesign", "Value from [-1, 1]", 0, QApplication::UnicodeUTF8));
        button_quintic_walk_save->setText(QApplication::translate("MainWindowDesign", "Save", 0, QApplication::UnicodeUTF8));
        button_quintic_walk_apply->setText(QApplication::translate("MainWindowDesign", "Apply", 0, QApplication::UnicodeUTF8));
        button_quintic_walk_apply->setShortcut(QApplication::translate("MainWindowDesign", "\\", 0, QApplication::UnicodeUTF8));
        button_quintic_walk_refresh->setText(QApplication::translate("MainWindowDesign", "Refresh", 0, QApplication::UnicodeUTF8));
        button_quintic_walk_stop->setText(QApplication::translate("MainWindowDesign", "Stop", 0, QApplication::UnicodeUTF8));
        button_quintic_walk_stop->setShortcut(QApplication::translate("MainWindowDesign", "Esc", 0, QApplication::UnicodeUTF8));
        groupBox_balance_control_21->setTitle(QApplication::translate("MainWindowDesign", "Feedback", 0, QApplication::UnicodeUTF8));
        label_202->setText(QApplication::translate("MainWindowDesign", "Pitch", 0, QApplication::UnicodeUTF8));
        label_203->setText(QApplication::translate("MainWindowDesign", "Kp", 0, QApplication::UnicodeUTF8));
        label_204->setText(QApplication::translate("MainWindowDesign", "Kd", 0, QApplication::UnicodeUTF8));
        label_205->setText(QApplication::translate("MainWindowDesign", "Ki", 0, QApplication::UnicodeUTF8));
        label_206->setText(QApplication::translate("MainWindowDesign", "Hip", 0, QApplication::UnicodeUTF8));
        label_207->setText(QApplication::translate("MainWindowDesign", "Knee", 0, QApplication::UnicodeUTF8));
        label_208->setText(QApplication::translate("MainWindowDesign", "Ankle", 0, QApplication::UnicodeUTF8));
        label_209->setText(QApplication::translate("MainWindowDesign", "Shoulder", 0, QApplication::UnicodeUTF8));
        tabWidget_control->setTabText(tabWidget_control->indexOf(tab_quinticwalk), QApplication::translate("MainWindowDesign", "Quintic Walk", 0, QApplication::UnicodeUTF8));
        label_338->setText(QApplication::translate("MainWindowDesign", "Shift", 0, QApplication::UnicodeUTF8));
        label_339->setText(QApplication::translate("MainWindowDesign", "Lift", 0, QApplication::UnicodeUTF8));
        label_340->setText(QApplication::translate("MainWindowDesign", "Retract", 0, QApplication::UnicodeUTF8));
        label_3411->setText(QApplication::translate("MainWindowDesign", "Kick", 0, QApplication::UnicodeUTF8));
        label_342->setText(QApplication::translate("MainWindowDesign", "CoolDown", 0, QApplication::UnicodeUTF8));
        label_343->setText(QApplication::translate("MainWindowDesign", "BringDown", 0, QApplication::UnicodeUTF8));
        label_344->setText(QApplication::translate("MainWindowDesign", "TIME", 0, QApplication::UnicodeUTF8));
        right_kick->setText(QApplication::translate("MainWindowDesign", "Right Kick", 0, QApplication::UnicodeUTF8));
        left_kick->setText(QApplication::translate("MainWindowDesign", "Left Kick", 0, QApplication::UnicodeUTF8));
        kick_save_button->setText(QApplication::translate("MainWindowDesign", "Save", 0, QApplication::UnicodeUTF8));
        kick_refresh_button->setText(QApplication::translate("MainWindowDesign", "Refresh", 0, QApplication::UnicodeUTF8));
        kick_apply_button->setText(QApplication::translate("MainWindowDesign", "Apply", 0, QApplication::UnicodeUTF8));
        label_324->setText(QApplication::translate("MainWindowDesign", "Body_Tilt", 0, QApplication::UnicodeUTF8));
        label_325->setText(QApplication::translate("MainWindowDesign", "Leg_Y", 0, QApplication::UnicodeUTF8));
        label_326->setText(QApplication::translate("MainWindowDesign", "Leg_Z", 0, QApplication::UnicodeUTF8));
        label_329->setText(QApplication::translate("MainWindowDesign", "X_Retract", 0, QApplication::UnicodeUTF8));
        label_3311->setText(QApplication::translate("MainWindowDesign", "Z_Retract", 0, QApplication::UnicodeUTF8));
        label_327->setText(QApplication::translate("MainWindowDesign", "Leg_X", 0, QApplication::UnicodeUTF8));
        label_320->setText(QApplication::translate("MainWindowDesign", "Body_Height", 0, QApplication::UnicodeUTF8));
        stop_kick->setText(QApplication::translate("MainWindowDesign", "Stop", 0, QApplication::UnicodeUTF8));
        label_921->setText(QApplication::translate("MainWindowDesign", "Angle P", 0, QApplication::UnicodeUTF8));
        label_94->setText(QApplication::translate("MainWindowDesign", "Angle R", 0, QApplication::UnicodeUTF8));
        label_93->setText(QApplication::translate("MainWindowDesign", "Velocity P", 0, QApplication::UnicodeUTF8));
        label_95->setText(QApplication::translate("MainWindowDesign", "Velocity R", 0, QApplication::UnicodeUTF8));
        label_96->setText(QApplication::translate("MainWindowDesign", "Integral", 0, QApplication::UnicodeUTF8));
        label_3211->setText(QApplication::translate("MainWindowDesign", "Leg_R_X", 0, QApplication::UnicodeUTF8));
        label_318->setText(QApplication::translate("MainWindowDesign", "R_Shift", 0, QApplication::UnicodeUTF8));
        label_330->setText(QApplication::translate("MainWindowDesign", "R_Lift", 0, QApplication::UnicodeUTF8));
        label_319->setText(QApplication::translate("MainWindowDesign", "R_CoolDown", 0, QApplication::UnicodeUTF8));
        label_337->setText(QApplication::translate("MainWindowDesign", "R_Roll", 0, QApplication::UnicodeUTF8));
        label_335->setText(QApplication::translate("MainWindowDesign", "L_CoolDown", 0, QApplication::UnicodeUTF8));
        label_332->setText(QApplication::translate("MainWindowDesign", "Leg_L_X", 0, QApplication::UnicodeUTF8));
        label_322->setText(QApplication::translate("MainWindowDesign", "L_Shift", 0, QApplication::UnicodeUTF8));
        label_328->setText(QApplication::translate("MainWindowDesign", "L_Lift", 0, QApplication::UnicodeUTF8));
        label_336->setText(QApplication::translate("MainWindowDesign", "L_Roll", 0, QApplication::UnicodeUTF8));
        tabWidget_control->setTabText(tabWidget_control->indexOf(kicking), QApplication::translate("MainWindowDesign", "Kick", 0, QApplication::UnicodeUTF8));
        fb_apply_button->setText(QApplication::translate("MainWindowDesign", "Apply", 0, QApplication::UnicodeUTF8));
        Left_SSP->setText(QApplication::translate("MainWindowDesign", "Left SSP", 0, QApplication::UnicodeUTF8));
        Right_SSP->setText(QApplication::translate("MainWindowDesign", "Right SSP", 0, QApplication::UnicodeUTF8));
        fb_refresh_button->setText(QApplication::translate("MainWindowDesign", "Refresh", 0, QApplication::UnicodeUTF8));
        fb_save_button->setText(QApplication::translate("MainWindowDesign", "Save", 0, QApplication::UnicodeUTF8));
        label_323->setText(QApplication::translate("MainWindowDesign", "Body_Height", 0, QApplication::UnicodeUTF8));
        label_333->setText(QApplication::translate("MainWindowDesign", "Body_Tilt", 0, QApplication::UnicodeUTF8));
        label_348->setText(QApplication::translate("MainWindowDesign", "Leg_X", 0, QApplication::UnicodeUTF8));
        label_334->setText(QApplication::translate("MainWindowDesign", "Leg_Y", 0, QApplication::UnicodeUTF8));
        label_345->setText(QApplication::translate("MainWindowDesign", "Leg_Z", 0, QApplication::UnicodeUTF8));
        DSP->setText(QApplication::translate("MainWindowDesign", "DSP", 0, QApplication::UnicodeUTF8));
        label_346->setText(QApplication::translate("MainWindowDesign", "R_Z", 0, QApplication::UnicodeUTF8));
        label_347->setText(QApplication::translate("MainWindowDesign", "R_Roll", 0, QApplication::UnicodeUTF8));
        label_349->setText(QApplication::translate("MainWindowDesign", "L_Z", 0, QApplication::UnicodeUTF8));
        label_350->setText(QApplication::translate("MainWindowDesign", "L_Roll", 0, QApplication::UnicodeUTF8));
        label_3511->setText(QApplication::translate("MainWindowDesign", "Setpoint Pitch", 0, QApplication::UnicodeUTF8));
        label_352->setText(QApplication::translate("MainWindowDesign", "Setpoint Roll", 0, QApplication::UnicodeUTF8));
        label_355->setText(QApplication::translate("MainWindowDesign", "KP Pitch", 0, QApplication::UnicodeUTF8));
        label_356->setText(QApplication::translate("MainWindowDesign", "KD Pitch", 0, QApplication::UnicodeUTF8));
        label_357->setText(QApplication::translate("MainWindowDesign", "KI Pitch", 0, QApplication::UnicodeUTF8));
        label_358->setText(QApplication::translate("MainWindowDesign", "KP Roll", 0, QApplication::UnicodeUTF8));
        label_359->setText(QApplication::translate("MainWindowDesign", "KD Roll", 0, QApplication::UnicodeUTF8));
        label_360->setText(QApplication::translate("MainWindowDesign", "KI Roll", 0, QApplication::UnicodeUTF8));
        tabWidget_control->setTabText(tabWidget_control->indexOf(tab), QApplication::translate("MainWindowDesign", "Feedback", 0, QApplication::UnicodeUTF8));
        menu_File->setTitle(QApplication::translate("MainWindowDesign", "&App", 0, QApplication::UnicodeUTF8));
    } // retranslateUi

};

namespace Ui {
    class MainWindowDesign: public Ui_MainWindowDesign {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_MAIN_WINDOW_H
