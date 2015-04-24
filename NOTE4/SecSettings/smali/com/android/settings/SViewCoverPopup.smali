.class public Lcom/android/settings/SViewCoverPopup;
.super Landroid/app/Activity;
.source "SViewCoverPopup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final DEFULT_WALLPAPER_BACKGROUND:I


# instance fields
.field private mBtnCancel:Landroid/widget/Button;

.field private mBtnSave:Landroid/widget/Button;

.field private mBtnUp:Landroid/widget/ImageView;

.field private mCheckDoNotShow:Landroid/widget/CheckBox;

.field private mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

.field private mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 52
    const/16 v0, 0x2e

    const/16 v1, 0x1a

    const/16 v2, 0xd

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/android/settings/SViewCoverPopup;->DEFULT_WALLPAPER_BACKGROUND:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public CoverOpen()V
    .locals 4

    .prologue
    .line 241
    invoke-virtual {p0}, Lcom/android/settings/SViewCoverPopup;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "device_provisioned"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    .line 242
    invoke-virtual {p0}, Lcom/android/settings/SViewCoverPopup;->finish()V

    .line 252
    :goto_0
    return-void

    .line 246
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 247
    .local v0, "mIntent":Landroid/content/Intent;
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.Settings$SelectInfoCoverSettingsActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 249
    const/high16 v1, 0x10800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 250
    invoke-virtual {p0, v0}, Lcom/android/settings/SViewCoverPopup;->startActivity(Landroid/content/Intent;)V

    .line 251
    invoke-virtual {p0}, Lcom/android/settings/SViewCoverPopup;->finish()V

    goto :goto_0
.end method

.method public getBackgroundColor()I
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 279
    const/4 v0, 0x0

    .line 280
    .local v0, "color":I
    invoke-virtual {p0}, Lcom/android/settings/SViewCoverPopup;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "sview_color_use_all"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 281
    .local v3, "mColorUseAll":I
    invoke-static {v6, v6, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    .line 283
    .local v1, "mBackgroundColor":I
    if-ne v3, v7, :cond_0

    .line 284
    invoke-virtual {p0}, Lcom/android/settings/SViewCoverPopup;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "sview_color_random"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 286
    .local v2, "mColorRandom":I
    packed-switch v2, :pswitch_data_0

    .line 296
    invoke-static {v6, v6, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    .line 301
    .end local v2    # "mColorRandom":I
    :cond_0
    :goto_0
    const/16 v4, 0xef

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v5

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v6

    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v7

    invoke-static {v4, v5, v6, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    .line 304
    return v0

    .line 288
    .restart local v2    # "mColorRandom":I
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/SViewCoverPopup;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "s_vew_cover_background_color"

    sget v6, Lcom/android/settings/SViewCoverPopup;->DEFULT_WALLPAPER_BACKGROUND:I

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 290
    goto :goto_0

    .line 292
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/SViewCoverPopup;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "sview_bg_display_random"

    sget v6, Lcom/android/settings/SViewCoverPopup;->DEFULT_WALLPAPER_BACKGROUND:I

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 294
    goto :goto_0

    .line 286
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 310
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 311
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 331
    :goto_0
    return-void

    .line 313
    :sswitch_0
    iget-object v1, p0, Lcom/android/settings/SViewCoverPopup;->mCheckDoNotShow:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 314
    const-string v1, "DoNotShow"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 315
    const-string v1, "SViewCoverPopup"

    const-string v2, "onClick : save button clicked"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    :cond_0
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/SViewCoverPopup;->setResult(ILandroid/content/Intent;)V

    .line 318
    invoke-virtual {p0}, Lcom/android/settings/SViewCoverPopup;->finish()V

    goto :goto_0

    .line 321
    :sswitch_1
    const-string v1, "DoNotShow"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 322
    invoke-virtual {p0, v2, v0}, Lcom/android/settings/SViewCoverPopup;->setResult(ILandroid/content/Intent;)V

    .line 323
    invoke-virtual {p0}, Lcom/android/settings/SViewCoverPopup;->finish()V

    goto :goto_0

    .line 326
    :sswitch_2
    const-string v1, "DoNotShow"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 327
    invoke-virtual {p0, v2, v0}, Lcom/android/settings/SViewCoverPopup;->setResult(ILandroid/content/Intent;)V

    .line 328
    invoke-virtual {p0}, Lcom/android/settings/SViewCoverPopup;->finish()V

    goto :goto_0

    .line 311
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f10009c -> :sswitch_1
        0x7f1004fa -> :sswitch_2
        0x7f1004fe -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 26
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 73
    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/SViewCoverPopup;->requestWindowFeature(I)Z

    .line 75
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 77
    const/high16 v14, 0x4080000

    .line 79
    .local v14, "mFlag":I
    const/high16 v18, 0x400000

    .line 80
    .local v18, "secure_flags":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SViewCoverPopup;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v23, "automatic_unlock"

    const/16 v24, 0x0

    invoke-static/range {v22 .. v24}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 81
    .local v8, "isAutoUnlock":I
    const-string v22, "keyguard"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/SViewCoverPopup;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/app/KeyguardManager;

    .line 82
    .local v16, "mKeyguardManager":Landroid/app/KeyguardManager;
    invoke-virtual/range {v16 .. v16}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v9

    .line 84
    .local v9, "isSecureLock":Z
    if-nez v9, :cond_0

    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v8, v0, :cond_0

    .line 85
    or-int v14, v14, v18

    .line 87
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SViewCoverPopup;->getWindow()Landroid/view/Window;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v22

    move-object/from16 v0, v22

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    move/from16 v23, v0

    or-int/lit8 v23, v23, 0x2

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 88
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SViewCoverPopup;->getWindow()Landroid/view/Window;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v22

    const-wide/16 v24, 0x1770

    move-wide/from16 v0, v24

    move-object/from16 v2, v22

    iput-wide v0, v2, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 89
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SViewCoverPopup;->getWindow()Landroid/view/Window;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v22

    const-wide/16 v24, 0x0

    move-wide/from16 v0, v24

    move-object/from16 v2, v22

    iput-wide v0, v2, Landroid/view/WindowManager$LayoutParams;->screenDimDuration:J

    .line 90
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SViewCoverPopup;->getWindow()Landroid/view/Window;

    move-result-object v22

    const/16 v23, -0x1

    const/16 v24, -0x1

    invoke-virtual/range {v22 .. v24}, Landroid/view/Window;->setLayout(II)V

    .line 92
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SViewCoverPopup;->getWindow()Landroid/view/Window;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Landroid/view/Window;->addFlags(I)V

    .line 93
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SViewCoverPopup;->getWindow()Landroid/view/Window;

    move-result-object v22

    const/16 v23, 0x2

    invoke-virtual/range {v22 .. v23}, Landroid/view/Window;->clearFlags(I)V

    .line 94
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SViewCoverPopup;->getWindow()Landroid/view/Window;

    move-result-object v22

    new-instance v23, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct/range {v23 .. v23}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    invoke-virtual/range {v22 .. v23}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 96
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SViewCoverPopup;->getWindow()Landroid/view/Window;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v10

    .line 97
    .local v10, "lp":Landroid/view/WindowManager$LayoutParams;
    const/16 v22, 0x0

    move/from16 v0, v22

    iput v0, v10, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 98
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SViewCoverPopup;->getWindow()Landroid/view/Window;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 99
    new-instance v22, Lcom/samsung/android/sdk/cover/ScoverManager;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/cover/ScoverManager;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SViewCoverPopup;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    .line 100
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SViewCoverPopup;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    move-object/from16 v22, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SViewCoverPopup;->getWindow()Landroid/view/Window;

    move-result-object v23

    const/16 v24, 0x1

    invoke-virtual/range {v22 .. v24}, Lcom/samsung/android/sdk/cover/ScoverManager;->setCoverModeToWindow(Landroid/view/Window;I)V

    .line 102
    const v22, 0x7f040223

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/SViewCoverPopup;->setContentView(I)V

    .line 104
    const v22, 0x7f1000d3

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/SViewCoverPopup;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/FrameLayout;

    .line 105
    .local v11, "mCoverShorcutBG":Landroid/widget/FrameLayout;
    const v22, 0x7f1000d4

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/SViewCoverPopup;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    .line 106
    .local v12, "mDIMBG":Landroid/widget/ImageView;
    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->isSViewCover2014Supported(Landroid/content/Context;)Z

    move-result v22

    if-eqz v22, :cond_4

    invoke-static {}, Lcom/android/settings/Utils;->isSViewWallpaperOldSupported()Z

    move-result v22

    if-nez v22, :cond_4

    .line 107
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SViewCoverPopup;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v23, "sview_color_wallpaper"

    const/16 v24, 0x0

    invoke-static/range {v22 .. v24}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 109
    .local v4, "CurrentCoverBackgroundDbId":I
    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v4, v0, :cond_3

    .line 110
    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->getSViewWallpaperDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 111
    const/16 v22, 0x4d

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-static/range {v22 .. v25}, Landroid/graphics/Color;->argb(IIII)I

    move-result v22

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 195
    .end local v4    # "CurrentCoverBackgroundDbId":I
    :cond_1
    :goto_0
    const v22, 0x7f1004fb

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/SViewCoverPopup;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    .line 196
    .local v21, "tvTitle":Landroid/widget/TextView;
    const v22, 0x7f1004fc

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/SViewCoverPopup;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    .line 198
    .local v20, "tvContents":Landroid/widget/TextView;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SViewCoverPopup;->getIntent()Landroid/content/Intent;

    move-result-object v7

    .line 199
    .local v7, "intent":Landroid/content/Intent;
    const-string v22, "enable"

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 200
    .local v6, "enable":Z
    const-string v22, "titleId"

    const v23, 0x7f0a15b1

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v19

    .line 202
    .local v19, "titleId":I
    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 203
    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v6, v0, :cond_8

    .line 204
    const v22, 0x7f0a0f8b

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 208
    :goto_1
    const v22, 0x7f1004fd

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/SViewCoverPopup;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/CheckBox;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SViewCoverPopup;->mCheckDoNotShow:Landroid/widget/CheckBox;

    .line 209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SViewCoverPopup;->mCheckDoNotShow:Landroid/widget/CheckBox;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 210
    const v22, 0x7f1004fe

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/SViewCoverPopup;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/Button;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SViewCoverPopup;->mBtnSave:Landroid/widget/Button;

    .line 211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SViewCoverPopup;->mBtnSave:Landroid/widget/Button;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    const v22, 0x7f10009c

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/SViewCoverPopup;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/Button;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SViewCoverPopup;->mBtnCancel:Landroid/widget/Button;

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SViewCoverPopup;->mBtnCancel:Landroid/widget/Button;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    const v22, 0x7f1004fa

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/SViewCoverPopup;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/ImageView;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SViewCoverPopup;->mBtnUp:Landroid/widget/ImageView;

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SViewCoverPopup;->mBtnUp:Landroid/widget/ImageView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    new-instance v17, Lcom/samsung/android/sdk/cover/Scover;

    invoke-direct/range {v17 .. v17}, Lcom/samsung/android/sdk/cover/Scover;-><init>()V

    .line 218
    .local v17, "mScover":Lcom/samsung/android/sdk/cover/Scover;
    const/4 v13, 0x1

    .line 220
    .local v13, "mDeviceSupportCoverSDK":Z
    :try_start_0
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/cover/Scover;->initialize(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/samsung/android/sdk/SsdkUnsupportedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 226
    :goto_2
    if-eqz v13, :cond_2

    .line 227
    new-instance v22, Lcom/samsung/android/sdk/cover/ScoverManager;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/cover/ScoverManager;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SViewCoverPopup;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    .line 228
    new-instance v22, Lcom/android/settings/SViewCoverPopup$1;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/SViewCoverPopup$1;-><init>(Lcom/android/settings/SViewCoverPopup;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SViewCoverPopup;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    .line 238
    :cond_2
    return-void

    .line 113
    .end local v6    # "enable":Z
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v13    # "mDeviceSupportCoverSDK":Z
    .end local v17    # "mScover":Lcom/samsung/android/sdk/cover/Scover;
    .end local v19    # "titleId":I
    .end local v20    # "tvContents":Landroid/widget/TextView;
    .end local v21    # "tvTitle":Landroid/widget/TextView;
    .restart local v4    # "CurrentCoverBackgroundDbId":I
    :cond_3
    packed-switch v4, :pswitch_data_0

    .line 136
    const v22, 0x7f02061c

    move/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 139
    :goto_3
    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-static/range {v22 .. v25}, Landroid/graphics/Color;->argb(IIII)I

    move-result v22

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    goto/16 :goto_0

    .line 115
    :pswitch_0
    const v22, 0x7f02061d

    move/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_3

    .line 118
    :pswitch_1
    const v22, 0x7f02061e

    move/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_3

    .line 121
    :pswitch_2
    const v22, 0x7f02061f

    move/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_3

    .line 124
    :pswitch_3
    const v22, 0x7f020620

    move/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_3

    .line 127
    :pswitch_4
    const v22, 0x7f020621

    move/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_3

    .line 130
    :pswitch_5
    const v22, 0x7f020622

    move/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_3

    .line 133
    :pswitch_6
    const v22, 0x7f020623

    move/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_3

    .line 141
    .end local v4    # "CurrentCoverBackgroundDbId":I
    :cond_4
    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->isSViewCover2014Supported(Landroid/content/Context;)Z

    move-result v22

    if-eqz v22, :cond_6

    invoke-static {}, Lcom/android/settings/Utils;->isSViewWallpaperOldSupported()Z

    move-result v22

    if-eqz v22, :cond_6

    .line 142
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SViewCoverPopup;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v23, "sview_color_wallpaper"

    const/16 v24, 0x0

    invoke-static/range {v22 .. v24}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 144
    .restart local v4    # "CurrentCoverBackgroundDbId":I
    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v4, v0, :cond_5

    .line 145
    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->getSViewWallpaperDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 146
    const/16 v22, 0x4d

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-static/range {v22 .. v25}, Landroid/graphics/Color;->argb(IIII)I

    move-result v22

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    goto/16 :goto_0

    .line 148
    :cond_5
    packed-switch v4, :pswitch_data_1

    .line 180
    const v22, 0x7f02061c

    move/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 183
    :goto_4
    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-static/range {v22 .. v25}, Landroid/graphics/Color;->argb(IIII)I

    move-result v22

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    goto/16 :goto_0

    .line 150
    :pswitch_7
    const v22, 0x7f02061c

    move/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_4

    .line 153
    :pswitch_8
    const v22, 0x7f02061d

    move/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_4

    .line 156
    :pswitch_9
    const v22, 0x7f02061e

    move/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_4

    .line 159
    :pswitch_a
    const v22, 0x7f02061f

    move/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_4

    .line 162
    :pswitch_b
    const v22, 0x7f020620

    move/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_4

    .line 165
    :pswitch_c
    const v22, 0x7f020621

    move/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_4

    .line 168
    :pswitch_d
    const v22, 0x7f020622

    move/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_4

    .line 171
    :pswitch_e
    const v22, 0x7f020623

    move/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_4

    .line 174
    :pswitch_f
    const v22, 0x7f020624

    move/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_4

    .line 177
    :pswitch_10
    const v22, 0x7f020625

    move/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_4

    .line 186
    .end local v4    # "CurrentCoverBackgroundDbId":I
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SViewCoverPopup;->getBackgroundColor()I

    move-result v22

    move/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 187
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SViewCoverPopup;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v23, "sview_color_wallpaper"

    const/16 v24, 0x0

    invoke-static/range {v22 .. v24}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v22

    if-eqz v22, :cond_7

    const/4 v15, 0x1

    .line 189
    .local v15, "mIsWallpaper":Z
    :goto_5
    if-eqz v15, :cond_1

    .line 190
    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->getSViewWallpaperDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 191
    const/16 v22, 0x4d

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-static/range {v22 .. v25}, Landroid/graphics/Color;->argb(IIII)I

    move-result v22

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    goto/16 :goto_0

    .line 187
    .end local v15    # "mIsWallpaper":Z
    :cond_7
    const/4 v15, 0x0

    goto :goto_5

    .line 206
    .restart local v6    # "enable":Z
    .restart local v7    # "intent":Landroid/content/Intent;
    .restart local v19    # "titleId":I
    .restart local v20    # "tvContents":Landroid/widget/TextView;
    .restart local v21    # "tvTitle":Landroid/widget/TextView;
    :cond_8
    const v22, 0x7f0a0f8c

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    .line 221
    .restart local v13    # "mDeviceSupportCoverSDK":Z
    .restart local v17    # "mScover":Lcom/samsung/android/sdk/cover/Scover;
    :catch_0
    move-exception v5

    .line 222
    .local v5, "e":Ljava/lang/IllegalArgumentException;
    const/4 v13, 0x0

    .line 225
    goto/16 :goto_2

    .line 223
    .end local v5    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v5

    .line 224
    .local v5, "e":Lcom/samsung/android/sdk/SsdkUnsupportedException;
    const/4 v13, 0x0

    goto/16 :goto_2

    .line 113
    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 148
    :pswitch_data_1
    .packed-switch 0xa
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 270
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 272
    iget-object v0, p0, Lcom/android/settings/SViewCoverPopup;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/android/settings/SViewCoverPopup;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    iget-object v1, p0, Lcom/android/settings/SViewCoverPopup;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/cover/ScoverManager;->unregisterListener(Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;)V

    .line 275
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SViewCoverPopup;->finish()V

    .line 276
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 256
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 257
    iget-object v1, p0, Lcom/android/settings/SViewCoverPopup;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    if-eqz v1, :cond_0

    .line 258
    iget-object v1, p0, Lcom/android/settings/SViewCoverPopup;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    iget-object v2, p0, Lcom/android/settings/SViewCoverPopup;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/cover/ScoverManager;->registerListener(Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;)V

    .line 260
    :cond_0
    iget-object v1, p0, Lcom/android/settings/SViewCoverPopup;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v0

    .line 261
    .local v0, "state":Lcom/samsung/android/sdk/cover/ScoverState;
    if-nez v0, :cond_2

    .line 266
    :cond_1
    :goto_0
    return-void

    .line 264
    :cond_2
    iget-object v1, p0, Lcom/android/settings/SViewCoverPopup;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/cover/ScoverState;->getSwitchState()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 265
    invoke-virtual {p0}, Lcom/android/settings/SViewCoverPopup;->CoverOpen()V

    goto :goto_0
.end method
