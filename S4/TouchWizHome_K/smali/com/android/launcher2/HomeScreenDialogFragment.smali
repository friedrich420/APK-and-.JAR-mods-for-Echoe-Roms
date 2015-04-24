.class public Lcom/android/launcher2/HomeScreenDialogFragment;
.super Landroid/app/DialogFragment;
.source "HomeScreenDialogFragment.java"


# static fields
.field static final BOTH_WALLPAPER:I = 0x2

.field static final DOWNLOAD_WALLPAPER:I = -0x1

.field static final HOME_SCREEN_WALLPAPER:I = 0x0

.field static final LOCK_SCREEN_WALLPAPER:I = 0x1

.field private static final SVIEW_WALLPAPER_BY_SECPICKER:Z = false

.field static final S_VIEW_COVER:I = 0x3

.field private static final TAG:Ljava/lang/String; = "HomeScreenDialogFragment"

.field static homescreenSelected:Z = false

.field public static isHomeScreenDialogVisible:Z = false

.field private static final sFragmentTag:Ljava/lang/String; = "Homescreen"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 61
    sput-boolean v0, Lcom/android/launcher2/HomeScreenDialogFragment;->homescreenSelected:Z

    .line 62
    sput-boolean v0, Lcom/android/launcher2/HomeScreenDialogFragment;->isHomeScreenDialogVisible:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static createAndShow(Landroid/app/FragmentManager;)V
    .locals 2
    .param p0, "manager"    # Landroid/app/FragmentManager;

    .prologue
    .line 73
    invoke-static {p0}, Lcom/android/launcher2/HomeScreenDialogFragment;->isActive(Landroid/app/FragmentManager;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    new-instance v0, Lcom/android/launcher2/HomeScreenDialogFragment;

    invoke-direct {v0}, Lcom/android/launcher2/HomeScreenDialogFragment;-><init>()V

    .line 76
    .local v0, "f":Lcom/android/launcher2/HomeScreenDialogFragment;
    if-eqz p0, :cond_0

    .line 77
    const-string v1, "Homescreen"

    invoke-virtual {v0, p0, v1}, Lcom/android/launcher2/HomeScreenDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static dismiss(Landroid/app/FragmentManager;)V
    .locals 2
    .param p0, "manager"    # Landroid/app/FragmentManager;

    .prologue
    .line 88
    const-string v1, "Homescreen"

    invoke-virtual {p0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/app/DialogFragment;

    .line 89
    .local v0, "dialog":Landroid/app/DialogFragment;
    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 92
    :cond_0
    return-void
.end method

.method public static getTypeOfCover()I
    .locals 10

    .prologue
    .line 333
    const-string v2, "/sys/devices/w1_bus_master1/w1_master_check_id"

    .line 334
    .local v2, "filename":Ljava/lang/String;
    const/4 v6, 0x1

    .line 335
    .local v6, "type":I
    new-instance v7, Ljava/io/File;

    const-string v8, "/sys/devices/w1_bus_master1/w1_master_check_id"

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 336
    const/4 v4, 0x0

    .line 338
    .local v4, "reader":Ljava/io/FileReader;
    :try_start_0
    new-instance v5, Ljava/io/FileReader;

    const-string v7, "/sys/devices/w1_bus_master1/w1_master_check_id"

    invoke-direct {v5, v7}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 339
    .end local v4    # "reader":Ljava/io/FileReader;
    .local v5, "reader":Ljava/io/FileReader;
    const/16 v7, 0xf

    :try_start_1
    new-array v0, v7, [C

    .line 340
    .local v0, "buf":[C
    invoke-virtual {v5, v0}, Ljava/io/FileReader;->read([C)I

    move-result v3

    .line 341
    .local v3, "n":I
    if-lez v3, :cond_0

    .line 342
    new-instance v7, Ljava/lang/String;

    const/4 v8, 0x0

    add-int/lit8 v9, v3, -0x1

    invoke-direct {v7, v0, v8, v9}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v6

    .line 349
    :cond_0
    if-eqz v5, :cond_1

    .line 351
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 357
    .end local v0    # "buf":[C
    .end local v3    # "n":I
    .end local v5    # "reader":Ljava/io/FileReader;
    :cond_1
    :goto_0
    return v6

    .line 344
    .restart local v4    # "reader":Ljava/io/FileReader;
    :catch_0
    move-exception v1

    .line 345
    .local v1, "ex":Ljava/io/IOException;
    :goto_1
    const/4 v6, 0x1

    .line 349
    if-eqz v4, :cond_1

    .line 351
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 352
    :catch_1
    move-exception v7

    goto :goto_0

    .line 346
    .end local v1    # "ex":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 347
    .local v1, "ex":Ljava/lang/NumberFormatException;
    :goto_2
    const/4 v6, 0x1

    .line 349
    if-eqz v4, :cond_1

    .line 351
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_0

    .line 352
    :catch_3
    move-exception v7

    goto :goto_0

    .line 349
    .end local v1    # "ex":Ljava/lang/NumberFormatException;
    :catchall_0
    move-exception v7

    :goto_3
    if-eqz v4, :cond_2

    .line 351
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 353
    :cond_2
    :goto_4
    throw v7

    .line 352
    .end local v4    # "reader":Ljava/io/FileReader;
    .restart local v0    # "buf":[C
    .restart local v3    # "n":I
    .restart local v5    # "reader":Ljava/io/FileReader;
    :catch_4
    move-exception v7

    goto :goto_0

    .end local v0    # "buf":[C
    .end local v3    # "n":I
    .end local v5    # "reader":Ljava/io/FileReader;
    .restart local v4    # "reader":Ljava/io/FileReader;
    :catch_5
    move-exception v8

    goto :goto_4

    .line 349
    .end local v4    # "reader":Ljava/io/FileReader;
    .restart local v5    # "reader":Ljava/io/FileReader;
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5    # "reader":Ljava/io/FileReader;
    .restart local v4    # "reader":Ljava/io/FileReader;
    goto :goto_3

    .line 346
    .end local v4    # "reader":Ljava/io/FileReader;
    .restart local v5    # "reader":Ljava/io/FileReader;
    :catch_6
    move-exception v1

    move-object v4, v5

    .end local v5    # "reader":Ljava/io/FileReader;
    .restart local v4    # "reader":Ljava/io/FileReader;
    goto :goto_2

    .line 344
    .end local v4    # "reader":Ljava/io/FileReader;
    .restart local v5    # "reader":Ljava/io/FileReader;
    :catch_7
    move-exception v1

    move-object v4, v5

    .end local v5    # "reader":Ljava/io/FileReader;
    .restart local v4    # "reader":Ljava/io/FileReader;
    goto :goto_1
.end method

.method static isActive(Landroid/app/FragmentManager;)Z
    .locals 2
    .param p0, "manager"    # Landroid/app/FragmentManager;

    .prologue
    const/4 v0, 0x0

    .line 81
    if-eqz p0, :cond_0

    .line 82
    const-string v1, "Homescreen"

    invoke-virtual {p0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 84
    :cond_0
    return v0
.end method

.method private isCoverVerified()Z
    .locals 11

    .prologue
    const/4 v7, 0x0

    .line 305
    const-string v2, "/sys/devices/w1_bus_master1/w1_master_verify_mac"

    .line 306
    .local v2, "filename":Ljava/lang/String;
    const/4 v6, 0x0

    .line 307
    .local v6, "verity":Z
    new-instance v8, Ljava/io/File;

    const-string v9, "/sys/devices/w1_bus_master1/w1_master_verify_mac"

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 308
    const/4 v4, 0x0

    .line 310
    .local v4, "reader":Ljava/io/FileReader;
    :try_start_0
    new-instance v5, Ljava/io/FileReader;

    const-string v8, "/sys/devices/w1_bus_master1/w1_master_verify_mac"

    invoke-direct {v5, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 311
    .end local v4    # "reader":Ljava/io/FileReader;
    .local v5, "reader":Ljava/io/FileReader;
    const/16 v8, 0xf

    :try_start_1
    new-array v0, v8, [C

    .line 312
    .local v0, "buf":[C
    invoke-virtual {v5, v0}, Ljava/io/FileReader;->read([C)I

    move-result v3

    .line 313
    .local v3, "n":I
    if-lez v3, :cond_0

    .line 314
    new-instance v8, Ljava/lang/String;

    const/4 v9, 0x0

    add-int/lit8 v10, v3, -0x1

    invoke-direct {v8, v0, v9, v10}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v8

    if-nez v8, :cond_2

    const/4 v6, 0x1

    .line 321
    :cond_0
    :goto_0
    if-eqz v5, :cond_1

    .line 323
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 329
    .end local v0    # "buf":[C
    .end local v3    # "n":I
    .end local v5    # "reader":Ljava/io/FileReader;
    :cond_1
    :goto_1
    return v6

    .restart local v0    # "buf":[C
    .restart local v3    # "n":I
    .restart local v5    # "reader":Ljava/io/FileReader;
    :cond_2
    move v6, v7

    .line 314
    goto :goto_0

    .line 316
    .end local v0    # "buf":[C
    .end local v3    # "n":I
    .end local v5    # "reader":Ljava/io/FileReader;
    .restart local v4    # "reader":Ljava/io/FileReader;
    :catch_0
    move-exception v1

    .line 317
    .local v1, "ex":Ljava/io/IOException;
    :goto_2
    const/4 v6, 0x0

    .line 321
    if-eqz v4, :cond_1

    .line 323
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 324
    :catch_1
    move-exception v7

    goto :goto_1

    .line 318
    .end local v1    # "ex":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 319
    .local v1, "ex":Ljava/lang/NumberFormatException;
    :goto_3
    const/4 v6, 0x0

    .line 321
    if-eqz v4, :cond_1

    .line 323
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1

    .line 324
    :catch_3
    move-exception v7

    goto :goto_1

    .line 321
    .end local v1    # "ex":Ljava/lang/NumberFormatException;
    :catchall_0
    move-exception v7

    :goto_4
    if-eqz v4, :cond_3

    .line 323
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 325
    :cond_3
    :goto_5
    throw v7

    .line 324
    .end local v4    # "reader":Ljava/io/FileReader;
    .restart local v0    # "buf":[C
    .restart local v3    # "n":I
    .restart local v5    # "reader":Ljava/io/FileReader;
    :catch_4
    move-exception v7

    goto :goto_1

    .end local v0    # "buf":[C
    .end local v3    # "n":I
    .end local v5    # "reader":Ljava/io/FileReader;
    .restart local v4    # "reader":Ljava/io/FileReader;
    :catch_5
    move-exception v8

    goto :goto_5

    .line 321
    .end local v4    # "reader":Ljava/io/FileReader;
    .restart local v5    # "reader":Ljava/io/FileReader;
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5    # "reader":Ljava/io/FileReader;
    .restart local v4    # "reader":Ljava/io/FileReader;
    goto :goto_4

    .line 318
    .end local v4    # "reader":Ljava/io/FileReader;
    .restart local v5    # "reader":Ljava/io/FileReader;
    :catch_6
    move-exception v1

    move-object v4, v5

    .end local v5    # "reader":Ljava/io/FileReader;
    .restart local v4    # "reader":Ljava/io/FileReader;
    goto :goto_3

    .line 316
    .end local v4    # "reader":Ljava/io/FileReader;
    .restart local v5    # "reader":Ljava/io/FileReader;
    :catch_7
    move-exception v1

    move-object v4, v5

    .end local v5    # "reader":Ljava/io/FileReader;
    .restart local v4    # "reader":Ljava/io/FileReader;
    goto :goto_2
.end method

.method public static readSalesCode()Ljava/lang/String;
    .locals 2

    .prologue
    .line 274
    const-string v0, ""

    .line 276
    .local v0, "sales_code":Ljava/lang/String;
    :try_start_0
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 277
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 278
    const-string v1, "ril.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 283
    :cond_0
    :goto_0
    return-object v0

    .line 280
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 96
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 97
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 21
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 101
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeScreenDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    .line 103
    .local v7, "c":Landroid/content/Context;
    const/16 v19, 0x0

    sput-boolean v19, Lcom/android/launcher2/HomeScreenDialogFragment;->homescreenSelected:Z

    .line 106
    const v19, 0x7f030020

    const/16 v20, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v7, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    .line 107
    .local v12, "layout":Landroid/view/View;
    const v19, 0x7f0f001e

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageView;

    .line 108
    .local v18, "up_pointer":Landroid/widget/ImageView;
    invoke-virtual/range {v18 .. v18}, Landroid/widget/ImageView;->bringToFront()V

    .line 112
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 113
    .local v6, "builder":Landroid/app/AlertDialog$Builder;
    const v19, 0x7f10000f

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 114
    invoke-virtual {v6, v12}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 115
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    .line 117
    .local v8, "dialog":Landroid/app/Dialog;
    sget-boolean v19, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v19, :cond_0

    .line 118
    const-string v19, "change_wallpaper"

    sget-object v20, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 119
    const/4 v15, 0x0

    .line 120
    .local v15, "mGuider":Lcom/android/launcher2/guide/GuiderLifecycleListener;
    new-instance v15, Lcom/android/launcher2/guide/AddWidgetsGuider;

    .end local v15    # "mGuider":Lcom/android/launcher2/guide/GuiderLifecycleListener;
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeScreenDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v15, v0}, Lcom/android/launcher2/guide/AddWidgetsGuider;-><init>(Landroid/app/Activity;)V

    .line 121
    .restart local v15    # "mGuider":Lcom/android/launcher2/guide/GuiderLifecycleListener;
    check-cast v15, Lcom/android/launcher2/guide/AddWidgetsGuider;

    .end local v15    # "mGuider":Lcom/android/launcher2/guide/GuiderLifecycleListener;
    invoke-virtual {v15}, Lcom/android/launcher2/guide/AddWidgetsGuider;->dismissHelpDialog()V

    .line 122
    const/16 v19, 0x3

    sput v19, Lcom/android/launcher2/Launcher;->changeWallpaperStatus:I

    .line 123
    const v19, 0x7f0f0052

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/RelativeLayout;

    .line 124
    .local v10, "guide_hand":Landroid/widget/RelativeLayout;
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 125
    const v19, 0x7f0f001c

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageView;

    .line 126
    .local v14, "mGoalAnimationView":Landroid/widget/ImageView;
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeScreenDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 127
    .local v3, "act":Landroid/app/Activity;
    new-instance v5, Lcom/android/launcher2/guide/HelpAnimatedDialog;

    invoke-direct {v5, v3, v14}, Lcom/android/launcher2/guide/HelpAnimatedDialog;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 128
    .local v5, "animdialog":Lcom/android/launcher2/guide/HelpAnimatedDialog;
    const v19, 0x7f0f001d

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/RelativeLayout;

    .line 129
    .local v17, "textBox":Landroid/widget/RelativeLayout;
    invoke-virtual {v5}, Lcom/android/launcher2/guide/HelpAnimatedDialog;->start()V

    .line 130
    const v19, 0x3f19999a    # 0.6f

    const v20, 0x3dcccccd    # 0.1f

    move/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, v17

    invoke-virtual {v5, v0, v1, v2}, Lcom/android/launcher2/guide/HelpAnimatedDialog;->startZoom(FFLandroid/view/View;)V

    .line 135
    .end local v3    # "act":Landroid/app/Activity;
    .end local v5    # "animdialog":Lcom/android/launcher2/guide/HelpAnimatedDialog;
    .end local v10    # "guide_hand":Landroid/widget/RelativeLayout;
    .end local v14    # "mGoalAnimationView":Landroid/widget/ImageView;
    .end local v17    # "textBox":Landroid/widget/RelativeLayout;
    :cond_0
    sget-boolean v19, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-nez v19, :cond_1

    .line 136
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 138
    :cond_1
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 140
    .local v11, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v9, ""

    .line 141
    .local v9, "download_contents":Ljava/lang/String;
    const-string v19, ""

    const-string v20, "Wallpaper"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 142
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeScreenDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f100011

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    const v19, 0x7f0f0054

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    sget-boolean v19, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v19, :cond_7

    const/16 v19, 0x0

    :goto_0
    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 145
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeScreenDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f100018

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    invoke-static {}, Lcom/android/launcher2/HomeScreenDialogFragment;->readSalesCode()Ljava/lang/String;

    move-result-object v16

    .line 148
    .local v16, "salesCode":Ljava/lang/String;
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getSmallestWidth()I

    move-result v19

    const/16 v20, 0x320

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_3

    const-string v19, "XAR"

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_3

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isOwner()Z

    move-result v19

    if-eqz v19, :cond_4

    .line 149
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeScreenDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f100012

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeScreenDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f100013

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeScreenDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f100014

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/HomeScreenDialogFragment;->isCoverVerified()Z

    move-result v19

    if-eqz v19, :cond_5

    invoke-static {}, Lcom/android/launcher2/HomeScreenDialogFragment;->getTypeOfCover()I

    move-result v19

    if-nez v19, :cond_6

    .line 162
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeScreenDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f100014

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 165
    :cond_6
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenSmall()Z

    move-result v19

    if-eqz v19, :cond_8

    .line 166
    new-instance v4, Landroid/widget/ArrayAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeScreenDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v19

    const v20, 0x1090003

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v4, v0, v1, v11}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 170
    .local v4, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :goto_1
    const v19, 0x7f0f001a

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ListView;

    .line 171
    .local v13, "lvh":Landroid/widget/ListView;
    invoke-virtual {v13, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 172
    new-instance v19, Lcom/android/launcher2/HomeScreenDialogFragment$1;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/launcher2/HomeScreenDialogFragment$1;-><init>(Lcom/android/launcher2/HomeScreenDialogFragment;)V

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 183
    new-instance v19, Lcom/android/launcher2/HomeScreenDialogFragment$2;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v7}, Lcom/android/launcher2/HomeScreenDialogFragment$2;-><init>(Lcom/android/launcher2/HomeScreenDialogFragment;Landroid/content/Context;)V

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 268
    const/16 v19, 0x1

    sput-boolean v19, Lcom/android/launcher2/HomeScreenDialogFragment;->isHomeScreenDialogVisible:Z

    .line 269
    return-object v8

    .line 143
    .end local v4    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v13    # "lvh":Landroid/widget/ListView;
    .end local v16    # "salesCode":Ljava/lang/String;
    :cond_7
    const/16 v19, 0x8

    goto/16 :goto_0

    .line 168
    .restart local v16    # "salesCode":Ljava/lang/String;
    :cond_8
    new-instance v4, Landroid/widget/ArrayAdapter;

    const v19, 0x7f030001

    move/from16 v0, v19

    invoke-direct {v4, v7, v0, v11}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .restart local v4    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    goto :goto_1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 288
    sget-boolean v1, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/android/launcher2/HomeScreenDialogFragment;->homescreenSelected:Z

    if-nez v1, :cond_0

    .line 289
    invoke-virtual {p0}, Lcom/android/launcher2/HomeScreenDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    if-eqz v1, :cond_0

    .line 290
    invoke-virtual {p0}, Lcom/android/launcher2/HomeScreenDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->onBackPressed()V

    .line 292
    :cond_0
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/launcher2/HomeScreenDialogFragment;->isHomeScreenDialogVisible:Z

    .line 294
    invoke-virtual {p0}, Lcom/android/launcher2/HomeScreenDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    .line 296
    .local v0, "launcher":Lcom/android/launcher2/Launcher;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 297
    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->isPaused()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 298
    invoke-virtual {p0}, Lcom/android/launcher2/HomeScreenDialogFragment;->dismissAllowingStateLoss()V

    .line 302
    :cond_1
    :goto_0
    return-void

    .line 300
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/HomeScreenDialogFragment;->dismiss()V

    goto :goto_0
.end method
