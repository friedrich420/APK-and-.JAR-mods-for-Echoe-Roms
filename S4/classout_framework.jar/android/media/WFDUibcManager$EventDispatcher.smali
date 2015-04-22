.class Landroid/media/WFDUibcManager$EventDispatcher;
.super Landroid/media/WFDUibcManager$EventQueue;
.source "WFDUibcManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/WFDUibcManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EventDispatcher"
.end annotation


# instance fields
.field private final CAMERA_0:I

.field private final CAMERA_180:I

.field private final CAMERA_270:I

.field private final CAMERA_90:I

.field private Me_X:F

.field private Me_Y:F

.field private Mode:Landroid/media/WFDUibcManager$UIBC_Mode;

.field private Ratio_LCD:F

.field private Ratio_WFD:F

.field private aPointerProp:[Landroid/view/MotionEvent$PointerProperties;

.field private aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

.field private activityManager:Landroid/app/ActivityManager;

.field private bCap:Z

.field private bNum:Z

.field private bScroll:Z

.field private bSim:Z

.field private configuration:Landroid/content/res/Configuration;

.field private displayMetrics:Landroid/util/DisplayMetrics;

.field private ev:Landroid/view/InputEvent;

.field private first_KeyDown:Z

.field private foregroundCamera:Z

.field private kH:F

.field private kW:F

.field private kX:F

.field private kY:F

.field private ke:Landroid/view/KeyEvent;

.field private last_Ke:Landroid/view/KeyEvent;

.field private mFlag:I

.field private mKeyDownTime:J

.field private mKeyEvnt_Arr:[Landroid/media/WFDUibcManager$Keyevnt_arrC;

.field private mKeyUpTime:J

.field private mMetaFlag:I

.field private mRepeatCnt:I

.field private mTouchDownTime:J

.field private me:Landroid/view/MotionEvent;

.field public volatile running:Z

.field final synthetic this$0:Landroid/media/WFDUibcManager;

.field private wm:Landroid/view/WindowManager;


# direct methods
.method constructor <init>(Landroid/media/WFDUibcManager;)V
    .registers 8

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 218
    iput-object p1, p0, this$0:Landroid/media/WFDUibcManager;

    invoke-direct {p0, p1, v1}, Landroid/media/WFDUibcManager$EventQueue;-><init>(Landroid/media/WFDUibcManager;Landroid/media/WFDUibcManager$1;)V

    .line 219
    iput-boolean v3, p0, running:Z

    .line 221
    iput-object v1, p0, displayMetrics:Landroid/util/DisplayMetrics;

    .line 222
    iput-object v1, p0, wm:Landroid/view/WindowManager;

    .line 232
    iput-object v1, p0, me:Landroid/view/MotionEvent;

    .line 233
    iput-object v1, p0, ke:Landroid/view/KeyEvent;

    .line 235
    iput-boolean v2, p0, foregroundCamera:Z

    .line 236
    iput-boolean v3, p0, first_KeyDown:Z

    .line 237
    sget-object v0, Landroid/media/WFDUibcManager$UIBC_Mode;->NORMAL:Landroid/media/WFDUibcManager$UIBC_Mode;

    iput-object v0, p0, Mode:Landroid/media/WFDUibcManager$UIBC_Mode;

    .line 238
    iput-object v1, p0, ev:Landroid/view/InputEvent;

    .line 239
    iput-object v1, p0, aPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    .line 240
    iput-object v1, p0, aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 241
    iput-object v1, p0, mKeyEvnt_Arr:[Landroid/media/WFDUibcManager$Keyevnt_arrC;

    .line 242
    iput-object v1, p0, configuration:Landroid/content/res/Configuration;

    .line 244
    iput v2, p0, CAMERA_0:I

    .line 245
    iput v3, p0, CAMERA_90:I

    .line 246
    const/4 v0, 0x2

    iput v0, p0, CAMERA_180:I

    .line 247
    const/4 v0, 0x3

    iput v0, p0, CAMERA_270:I

    .line 250
    iput v2, p0, mMetaFlag:I

    .line 251
    iput-boolean v2, p0, bCap:Z

    .line 252
    iput-boolean v2, p0, bSim:Z

    .line 253
    iput-boolean v2, p0, bNum:Z

    .line 254
    iput-boolean v2, p0, bScroll:Z

    .line 255
    iput-wide v4, p0, mTouchDownTime:J

    .line 256
    iput-wide v4, p0, mKeyDownTime:J

    .line 257
    iput-wide v4, p0, mKeyUpTime:J

    .line 258
    const/4 v0, -0x1

    iput v0, p0, mRepeatCnt:I

    .line 259
    iput v2, p0, mFlag:I

    .line 260
    iput-object v1, p0, last_Ke:Landroid/view/KeyEvent;

    return-void
.end method

.method private handleCameraTouch(I)V
    .registers 16
    .param p1, "i"    # I

    .prologue
    const/16 v13, 0x2d

    const/4 v12, 0x0

    const/high16 v11, 0x40000000    # 2.0f

    const v9, 0x38d1b717    # 1.0E-4f

    const/4 v10, 0x1

    .line 276
    const/4 v0, -0x1

    .line 277
    .local v0, "mCameraOrientation":I
    iget-object v7, p0, wm:Landroid/view/WindowManager;

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Display;->getRotation()I

    move-result v6

    .line 281
    .local v6, "rotation":I
    iget-object v7, p0, this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mOrientation:I
    invoke-static {v7}, Landroid/media/WFDUibcManager;->access$000(Landroid/media/WFDUibcManager;)I

    move-result v7

    if-lez v7, :cond_24

    iget-object v7, p0, this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mOrientation:I
    invoke-static {v7}, Landroid/media/WFDUibcManager;->access$000(Landroid/media/WFDUibcManager;)I

    move-result v7

    if-lt v7, v13, :cond_2e

    :cond_24
    iget-object v7, p0, this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mOrientation:I
    invoke-static {v7}, Landroid/media/WFDUibcManager;->access$000(Landroid/media/WFDUibcManager;)I

    move-result v7

    const/16 v8, 0x13b

    if-le v7, v8, :cond_8f

    .line 283
    :cond_2e
    const/4 v0, 0x0

    .line 297
    :goto_2f
    add-int/2addr v0, v6

    .line 298
    rem-int/lit8 v0, v0, 0x4

    .line 299
    if-eqz v0, :cond_37

    const/4 v7, 0x2

    if-ne v0, v7, :cond_13a

    .line 301
    :cond_37
    iget v7, p0, Ratio_WFD:F

    iget v8, p0, Ratio_LCD:F

    cmpg-float v7, v7, v8

    if-gez v7, :cond_bd

    .line 303
    iget v7, p0, kW:F

    iget-object v8, p0, this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_Y:F
    invoke-static {v8}, Landroid/media/WFDUibcManager;->access$200(Landroid/media/WFDUibcManager;)F

    move-result v8

    mul-float/2addr v7, v8

    iget v8, p0, kH:F

    div-float v2, v7, v8

    .line 304
    .local v2, "newWidth":F
    iget-object v7, p0, this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_X:F
    invoke-static {v7}, Landroid/media/WFDUibcManager;->access$300(Landroid/media/WFDUibcManager;)F

    move-result v7

    sub-float/2addr v7, v2

    div-float v5, v7, v11

    .line 305
    .local v5, "pad":F
    iget-object v7, p0, this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_X:F
    invoke-static {v7}, Landroid/media/WFDUibcManager;->access$300(Landroid/media/WFDUibcManager;)F

    move-result v7

    mul-float/2addr v7, v9

    iget-object v8, p0, aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v8, v8, p1

    iget v8, v8, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float v3, v7, v8

    .line 308
    .local v3, "normX":F
    iget-object v7, p0, displayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v7, v7

    sub-float v8, v3, v5

    div-float/2addr v8, v2

    mul-float/2addr v7, v8

    iput v7, p0, Me_X:F

    .line 309
    iget v7, p0, kY:F

    iget-object v8, p0, aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v8, v8, p1

    iget v8, v8, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float/2addr v7, v8

    iput v7, p0, Me_Y:F

    .line 327
    .end local v2    # "newWidth":F
    .end local v3    # "normX":F
    .end local v5    # "pad":F
    :goto_7a
    if-nez v0, :cond_11a

    .line 328
    iget-object v7, p0, aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v7, v7, p1

    iget v8, p0, Me_X:F

    invoke-virtual {v7, v12, v8}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 329
    iget-object v7, p0, aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v7, v7, p1

    iget v8, p0, Me_Y:F

    invoke-virtual {v7, v10, v8}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 362
    :cond_8e
    :goto_8e
    return-void

    .line 285
    :cond_8f
    iget-object v7, p0, this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mOrientation:I
    invoke-static {v7}, Landroid/media/WFDUibcManager;->access$000(Landroid/media/WFDUibcManager;)I

    move-result v7

    if-lt v7, v13, :cond_a3

    iget-object v7, p0, this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mOrientation:I
    invoke-static {v7}, Landroid/media/WFDUibcManager;->access$000(Landroid/media/WFDUibcManager;)I

    move-result v7

    const/16 v8, 0x73

    if-ge v7, v8, :cond_a3

    .line 287
    const/4 v0, 0x1

    goto :goto_2f

    .line 289
    :cond_a3
    iget-object v7, p0, this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mOrientation:I
    invoke-static {v7}, Landroid/media/WFDUibcManager;->access$000(Landroid/media/WFDUibcManager;)I

    move-result v7

    const/16 v8, 0x73

    if-lt v7, v8, :cond_ba

    iget-object v7, p0, this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mOrientation:I
    invoke-static {v7}, Landroid/media/WFDUibcManager;->access$000(Landroid/media/WFDUibcManager;)I

    move-result v7

    const/16 v8, 0xe1

    if-ge v7, v8, :cond_ba

    .line 291
    const/4 v0, 0x2

    goto/16 :goto_2f

    .line 295
    :cond_ba
    const/4 v0, 0x3

    goto/16 :goto_2f

    .line 312
    :cond_bd
    iget v7, p0, Ratio_WFD:F

    iget v8, p0, Ratio_LCD:F

    cmpl-float v7, v7, v8

    if-lez v7, :cond_102

    .line 314
    iget v7, p0, kH:F

    iget-object v8, p0, this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_X:F
    invoke-static {v8}, Landroid/media/WFDUibcManager;->access$300(Landroid/media/WFDUibcManager;)F

    move-result v8

    mul-float/2addr v7, v8

    iget v8, p0, kW:F

    div-float v1, v7, v8

    .line 315
    .local v1, "newHeight":F
    iget-object v7, p0, this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_Y:F
    invoke-static {v7}, Landroid/media/WFDUibcManager;->access$200(Landroid/media/WFDUibcManager;)F

    move-result v7

    sub-float/2addr v7, v1

    div-float v5, v7, v11

    .line 316
    .restart local v5    # "pad":F
    iget-object v7, p0, this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_Y:F
    invoke-static {v7}, Landroid/media/WFDUibcManager;->access$200(Landroid/media/WFDUibcManager;)F

    move-result v7

    mul-float/2addr v7, v9

    iget-object v8, p0, aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v8, v8, p1

    iget v8, v8, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float v4, v7, v8

    .line 318
    .local v4, "normY":F
    iget v7, p0, kX:F

    iget-object v8, p0, aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v8, v8, p1

    iget v8, v8, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float/2addr v7, v8

    iput v7, p0, Me_X:F

    .line 319
    iget-object v7, p0, displayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v7, v7

    sub-float v8, v4, v5

    div-float/2addr v8, v1

    mul-float/2addr v7, v8

    iput v7, p0, Me_Y:F

    goto/16 :goto_7a

    .line 324
    .end local v1    # "newHeight":F
    .end local v4    # "normY":F
    .end local v5    # "pad":F
    :cond_102
    iget v7, p0, kX:F

    iget-object v8, p0, aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v8, v8, p1

    iget v8, v8, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float/2addr v7, v8

    iput v7, p0, Me_X:F

    .line 325
    iget v7, p0, kY:F

    iget-object v8, p0, aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v8, v8, p1

    iget v8, v8, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float/2addr v7, v8

    iput v7, p0, Me_Y:F

    goto/16 :goto_7a

    .line 333
    :cond_11a
    iget-object v7, p0, aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v7, v7, p1

    iget-object v8, p0, displayMetrics:Landroid/util/DisplayMetrics;

    iget v8, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v8, v8

    iget v9, p0, Me_X:F

    sub-float/2addr v8, v9

    invoke-virtual {v7, v12, v8}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 334
    iget-object v7, p0, aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v7, v7, p1

    iget-object v8, p0, displayMetrics:Landroid/util/DisplayMetrics;

    iget v8, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v8, v8

    iget v9, p0, Me_Y:F

    sub-float/2addr v8, v9

    invoke-virtual {v7, v10, v8}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    goto/16 :goto_8e

    .line 338
    :cond_13a
    if-eq v0, v10, :cond_13f

    const/4 v7, 0x3

    if-ne v0, v7, :cond_8e

    .line 341
    :cond_13f
    iget v7, p0, kH:F

    iget-object v8, p0, this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_Y:F
    invoke-static {v8}, Landroid/media/WFDUibcManager;->access$200(Landroid/media/WFDUibcManager;)F

    move-result v8

    mul-float/2addr v7, v8

    iget v8, p0, kW:F

    div-float v2, v7, v8

    .line 342
    .restart local v2    # "newWidth":F
    iget-object v7, p0, this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_X:F
    invoke-static {v7}, Landroid/media/WFDUibcManager;->access$300(Landroid/media/WFDUibcManager;)F

    move-result v7

    sub-float/2addr v7, v2

    div-float v5, v7, v11

    .line 343
    .restart local v5    # "pad":F
    iget-object v7, p0, this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_X:F
    invoke-static {v7}, Landroid/media/WFDUibcManager;->access$300(Landroid/media/WFDUibcManager;)F

    move-result v7

    mul-float/2addr v7, v9

    iget-object v8, p0, aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v8, v8, p1

    iget v8, v8, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float v3, v7, v8

    .line 346
    .restart local v3    # "normX":F
    if-ne v0, v10, :cond_196

    .line 347
    iget-object v7, p0, displayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v7, v7

    iget-object v8, p0, displayMetrics:Landroid/util/DisplayMetrics;

    iget v8, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v8, v8

    sub-float v9, v3, v5

    div-float/2addr v9, v2

    mul-float/2addr v8, v9

    sub-float/2addr v7, v8

    iput v7, p0, Me_Y:F

    .line 348
    iget v7, p0, kX:F

    iget-object v8, p0, aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v8, v8, p1

    iget v8, v8, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float/2addr v7, v8

    iput v7, p0, Me_X:F

    .line 356
    :goto_182
    iget-object v7, p0, aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v7, v7, p1

    iget v8, p0, Me_X:F

    invoke-virtual {v7, v12, v8}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 357
    iget-object v7, p0, aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v7, v7, p1

    iget v8, p0, Me_Y:F

    invoke-virtual {v7, v10, v8}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    goto/16 :goto_8e

    .line 352
    :cond_196
    iget-object v7, p0, displayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v7, v7

    sub-float v8, v3, v5

    div-float/2addr v8, v2

    mul-float/2addr v7, v8

    iput v7, p0, Me_Y:F

    .line 353
    iget-object v7, p0, displayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v7, v7

    iget v8, p0, kX:F

    iget-object v9, p0, aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v9, v9, p1

    iget v9, v9, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float/2addr v8, v9

    sub-float/2addr v7, v8

    iput v7, p0, Me_X:F

    goto :goto_182
.end method

.method private handleKeyEvent()V
    .registers 27

    .prologue
    .line 646
    move-object/from16 v0, p0

    iget-object v0, v0, ev:Landroid/view/InputEvent;

    move-object/from16 v16, v0

    check-cast v16, Landroid/view/KeyEvent;

    .line 647
    .local v16, "NewKE":Landroid/view/KeyEvent;
    const/16 v20, -0x1

    .local v20, "fndKyIndex":I
    const/16 v19, -0x1

    .line 648
    .local v19, "empKyIndex":I
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, mFlag:I

    .line 649
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, mKeyDownTime:J

    .line 650
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, mRepeatCnt:I

    .line 654
    const/4 v13, -0x1

    .line 655
    .local v13, "displayId":I
    if-gez v13, :cond_45

    .line 657
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v18

    .line 658
    .local v18, "dm":Landroid/hardware/display/DisplayManagerGlobal;
    invoke-virtual/range {v18 .. v18}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayIds()[I

    move-result-object v17

    .local v17, "arr$":[I
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v23, v0

    .local v23, "len$":I
    const/16 v21, 0x0

    .local v21, "i$":I
    :goto_2e
    move/from16 v0, v21

    move/from16 v1, v23

    if-ge v0, v1, :cond_45

    aget v22, v17, v21

    .line 659
    .local v22, "id":I
    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v2

    iget v2, v2, Landroid/view/DisplayInfo;->type:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_4f

    .line 660
    move/from16 v13, v22

    .line 665
    .end local v17    # "arr$":[I
    .end local v18    # "dm":Landroid/hardware/display/DisplayManagerGlobal;
    .end local v21    # "i$":I
    .end local v22    # "id":I
    .end local v23    # "len$":I
    :cond_45
    if-gez v13, :cond_52

    .line 666
    const-string v2, "WFDUibcManager"

    const-string v3, "displayId not found"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    :cond_4e
    :goto_4e
    return-void

    .line 658
    .restart local v17    # "arr$":[I
    .restart local v18    # "dm":Landroid/hardware/display/DisplayManagerGlobal;
    .restart local v21    # "i$":I
    .restart local v22    # "id":I
    .restart local v23    # "len$":I
    :cond_4f
    add-int/lit8 v21, v21, 0x1

    goto :goto_2e

    .line 674
    .end local v17    # "arr$":[I
    .end local v18    # "dm":Landroid/hardware/display/DisplayManagerGlobal;
    .end local v21    # "i$":I
    .end local v22    # "id":I
    .end local v23    # "len$":I
    :cond_52
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mCoupleShot:Z
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$500(Landroid/media/WFDUibcManager;)Z

    move-result v2

    if-eqz v2, :cond_63

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_4e

    .line 679
    :cond_63
    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_2e7

    .line 682
    const/16 v25, 0x0

    .local v25, "rCnt":I
    :goto_6b
    const/16 v2, 0xf

    move/from16 v0, v25

    if-ge v0, v2, :cond_95

    .line 684
    move-object/from16 v0, p0

    iget-object v2, v0, mKeyEvnt_Arr:[Landroid/media/WFDUibcManager$Keyevnt_arrC;

    aget-object v2, v2, v25

    # getter for: Landroid/media/WFDUibcManager$Keyevnt_arrC;->mKyCod:I
    invoke-static {v2}, Landroid/media/WFDUibcManager$Keyevnt_arrC;->access$600(Landroid/media/WFDUibcManager$Keyevnt_arrC;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_80

    .line 685
    move/from16 v19, v25

    .line 686
    :cond_80
    move-object/from16 v0, p0

    iget-object v2, v0, mKeyEvnt_Arr:[Landroid/media/WFDUibcManager$Keyevnt_arrC;

    aget-object v2, v2, v25

    # getter for: Landroid/media/WFDUibcManager$Keyevnt_arrC;->mKyCod:I
    invoke-static {v2}, Landroid/media/WFDUibcManager$Keyevnt_arrC;->access$600(Landroid/media/WFDUibcManager$Keyevnt_arrC;)I

    move-result v2

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    if-ne v2, v3, :cond_92

    .line 687
    move/from16 v20, v25

    .line 682
    :cond_92
    add-int/lit8 v25, v25, 0x1

    goto :goto_6b

    .line 691
    :cond_95
    if-gez v20, :cond_288

    .line 692
    if-ltz v19, :cond_c7

    .line 693
    move-object/from16 v0, p0

    iget-object v2, v0, mKeyEvnt_Arr:[Landroid/media/WFDUibcManager$Keyevnt_arrC;

    aget-object v2, v2, v19

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    # setter for: Landroid/media/WFDUibcManager$Keyevnt_arrC;->mKyCod:I
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager$Keyevnt_arrC;->access$602(Landroid/media/WFDUibcManager$Keyevnt_arrC;I)I

    .line 694
    move-object/from16 v0, p0

    iget-object v2, v0, mKeyEvnt_Arr:[Landroid/media/WFDUibcManager$Keyevnt_arrC;

    aget-object v2, v2, v19

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v4

    # setter for: Landroid/media/WFDUibcManager$Keyevnt_arrC;->mKyDwnTime:J
    invoke-static {v2, v4, v5}, Landroid/media/WFDUibcManager$Keyevnt_arrC;->access$702(Landroid/media/WFDUibcManager$Keyevnt_arrC;J)J

    .line 695
    move-object/from16 v0, p0

    iget-object v2, v0, mKeyEvnt_Arr:[Landroid/media/WFDUibcManager$Keyevnt_arrC;

    aget-object v2, v2, v19

    const/4 v3, 0x0

    # setter for: Landroid/media/WFDUibcManager$Keyevnt_arrC;->mKyFlag:I
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager$Keyevnt_arrC;->access$802(Landroid/media/WFDUibcManager$Keyevnt_arrC;I)I

    .line 696
    move-object/from16 v0, p0

    iget-object v2, v0, mKeyEvnt_Arr:[Landroid/media/WFDUibcManager$Keyevnt_arrC;

    aget-object v2, v2, v19

    const/4 v3, 0x0

    # setter for: Landroid/media/WFDUibcManager$Keyevnt_arrC;->mRepCnt:I
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager$Keyevnt_arrC;->access$902(Landroid/media/WFDUibcManager$Keyevnt_arrC;I)I

    .line 698
    :cond_c7
    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, mKeyDownTime:J

    .line 699
    move-object/from16 v0, p0

    iget v2, v0, mFlag:I

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getFlags()I

    move-result v3

    or-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, mFlag:I

    .line 700
    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, mRepeatCnt:I

    .line 712
    :goto_e4
    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x3b

    if-eq v2, v3, :cond_f4

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x3c

    if-ne v2, v3, :cond_122

    .line 713
    :cond_f4
    move-object/from16 v0, p0

    iget v2, v0, mMetaFlag:I

    or-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, mMetaFlag:I

    .line 714
    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x3b

    if-ne v2, v3, :cond_110

    .line 715
    move-object/from16 v0, p0

    iget v2, v0, mMetaFlag:I

    or-int/lit8 v2, v2, 0x40

    move-object/from16 v0, p0

    iput v2, v0, mMetaFlag:I

    .line 716
    :cond_110
    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x3c

    if-ne v2, v3, :cond_122

    .line 717
    move-object/from16 v0, p0

    iget v2, v0, mMetaFlag:I

    or-int/lit16 v2, v2, 0x80

    move-object/from16 v0, p0

    iput v2, v0, mMetaFlag:I

    .line 719
    :cond_122
    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x39

    if-eq v2, v3, :cond_132

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x3a

    if-ne v2, v3, :cond_160

    .line 720
    :cond_132
    move-object/from16 v0, p0

    iget v2, v0, mMetaFlag:I

    or-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, mMetaFlag:I

    .line 721
    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x39

    if-ne v2, v3, :cond_14e

    .line 722
    move-object/from16 v0, p0

    iget v2, v0, mMetaFlag:I

    or-int/lit8 v2, v2, 0x10

    move-object/from16 v0, p0

    iput v2, v0, mMetaFlag:I

    .line 723
    :cond_14e
    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x3a

    if-ne v2, v3, :cond_160

    .line 724
    move-object/from16 v0, p0

    iget v2, v0, mMetaFlag:I

    or-int/lit8 v2, v2, 0x20

    move-object/from16 v0, p0

    iput v2, v0, mMetaFlag:I

    .line 726
    :cond_160
    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x71

    if-eq v2, v3, :cond_170

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x72

    if-ne v2, v3, :cond_19e

    .line 727
    :cond_170
    move-object/from16 v0, p0

    iget v2, v0, mMetaFlag:I

    or-int/lit16 v2, v2, 0x1000

    move-object/from16 v0, p0

    iput v2, v0, mMetaFlag:I

    .line 728
    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x71

    if-ne v2, v3, :cond_18c

    .line 729
    move-object/from16 v0, p0

    iget v2, v0, mMetaFlag:I

    or-int/lit16 v2, v2, 0x2000

    move-object/from16 v0, p0

    iput v2, v0, mMetaFlag:I

    .line 730
    :cond_18c
    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x72

    if-ne v2, v3, :cond_19e

    .line 731
    move-object/from16 v0, p0

    iget v2, v0, mMetaFlag:I

    or-int/lit16 v2, v2, 0x4000

    move-object/from16 v0, p0

    iput v2, v0, mMetaFlag:I

    .line 733
    :cond_19e
    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x77

    if-ne v2, v3, :cond_1b0

    .line 734
    move-object/from16 v0, p0

    iget v2, v0, mMetaFlag:I

    or-int/lit8 v2, v2, 0x8

    move-object/from16 v0, p0

    iput v2, v0, mMetaFlag:I

    .line 798
    .end local v25    # "rCnt":I
    :cond_1b0
    :goto_1b0
    move-object/from16 v0, p0

    iget-wide v2, v0, mKeyDownTime:J

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    move-object/from16 v0, p0

    iget v8, v0, mRepeatCnt:I

    move-object/from16 v0, p0

    iget v9, v0, mMetaFlag:I

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v10

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v11

    move-object/from16 v0, p0

    iget v12, v0, mFlag:I

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getSource()I

    move-result v14

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object v15

    invoke-static/range {v2 .. v15}, Landroid/view/KeyEvent;->obtain(JJIIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, ke:Landroid/view/KeyEvent;

    .line 802
    move-object/from16 v0, p0

    iget-object v2, v0, ke:Landroid/view/KeyEvent;

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1f6

    .line 803
    move-object/from16 v0, p0

    iget-object v2, v0, ke:Landroid/view/KeyEvent;

    move-object/from16 v0, p0

    iput-object v2, v0, last_Ke:Landroid/view/KeyEvent;

    .line 805
    :cond_1f6
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, ke:Landroid/view/KeyEvent;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 809
    move-object/from16 v0, p0

    iget-object v2, v0, ke:Landroid/view/KeyEvent;

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_281

    .line 811
    move-object/from16 v0, p0

    iget-object v2, v0, ke:Landroid/view/KeyEvent;

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_223

    move-object/from16 v0, p0

    iget-object v2, v0, ke:Landroid/view/KeyEvent;

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_256

    .line 814
    :cond_223
    new-instance v24, Landroid/content/Intent;

    const-string v2, "com.sec.android.app.PRESENTATION_FOCUS_CHANGED"

    move-object/from16 v0, v24

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 815
    .local v24, "mintent":Landroid/content/Intent;
    const-string v2, "app_name"

    const-string v3, "finish"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 816
    move-object/from16 v0, p0

    iget-object v2, v0, ke:Landroid/view/KeyEvent;

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_465

    .line 818
    const-string/jumbo v2, "launch_home"

    const/4 v3, 0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 827
    :cond_249
    :goto_249
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$400(Landroid/media/WFDUibcManager;)Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 829
    .end local v24    # "mintent":Landroid/content/Intent;
    :cond_256
    if-ltz v20, :cond_281

    .line 831
    move-object/from16 v0, p0

    iget-object v2, v0, mKeyEvnt_Arr:[Landroid/media/WFDUibcManager$Keyevnt_arrC;

    aget-object v2, v2, v20

    const/4 v3, -0x1

    # setter for: Landroid/media/WFDUibcManager$Keyevnt_arrC;->mKyCod:I
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager$Keyevnt_arrC;->access$602(Landroid/media/WFDUibcManager$Keyevnt_arrC;I)I

    .line 832
    move-object/from16 v0, p0

    iget-object v2, v0, mKeyEvnt_Arr:[Landroid/media/WFDUibcManager$Keyevnt_arrC;

    aget-object v2, v2, v20

    const-wide/16 v4, -0x1

    # setter for: Landroid/media/WFDUibcManager$Keyevnt_arrC;->mKyDwnTime:J
    invoke-static {v2, v4, v5}, Landroid/media/WFDUibcManager$Keyevnt_arrC;->access$702(Landroid/media/WFDUibcManager$Keyevnt_arrC;J)J

    .line 833
    move-object/from16 v0, p0

    iget-object v2, v0, mKeyEvnt_Arr:[Landroid/media/WFDUibcManager$Keyevnt_arrC;

    aget-object v2, v2, v20

    const/4 v3, 0x0

    # setter for: Landroid/media/WFDUibcManager$Keyevnt_arrC;->mKyFlag:I
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager$Keyevnt_arrC;->access$802(Landroid/media/WFDUibcManager$Keyevnt_arrC;I)I

    .line 834
    move-object/from16 v0, p0

    iget-object v2, v0, mKeyEvnt_Arr:[Landroid/media/WFDUibcManager$Keyevnt_arrC;

    aget-object v2, v2, v20

    const/4 v3, 0x0

    # setter for: Landroid/media/WFDUibcManager$Keyevnt_arrC;->mRepCnt:I
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager$Keyevnt_arrC;->access$902(Landroid/media/WFDUibcManager$Keyevnt_arrC;I)I

    .line 837
    :cond_281
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, ke:Landroid/view/KeyEvent;

    goto/16 :goto_4e

    .line 703
    .restart local v25    # "rCnt":I
    :cond_288
    move-object/from16 v0, p0

    iget-object v2, v0, mKeyEvnt_Arr:[Landroid/media/WFDUibcManager$Keyevnt_arrC;

    aget-object v2, v2, v20

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getFlags()I

    move-result v3

    # |= operator for: Landroid/media/WFDUibcManager$Keyevnt_arrC;->mKyFlag:I
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager$Keyevnt_arrC;->access$876(Landroid/media/WFDUibcManager$Keyevnt_arrC;I)I

    .line 704
    move-object/from16 v0, p0

    iget-object v2, v0, mKeyEvnt_Arr:[Landroid/media/WFDUibcManager$Keyevnt_arrC;

    aget-object v2, v2, v20

    # operator++ for: Landroid/media/WFDUibcManager$Keyevnt_arrC;->mRepCnt:I
    invoke-static {v2}, Landroid/media/WFDUibcManager$Keyevnt_arrC;->access$908(Landroid/media/WFDUibcManager$Keyevnt_arrC;)I

    .line 705
    move-object/from16 v0, p0

    iget-object v2, v0, mKeyEvnt_Arr:[Landroid/media/WFDUibcManager$Keyevnt_arrC;

    aget-object v2, v2, v20

    # getter for: Landroid/media/WFDUibcManager$Keyevnt_arrC;->mRepCnt:I
    invoke-static {v2}, Landroid/media/WFDUibcManager$Keyevnt_arrC;->access$900(Landroid/media/WFDUibcManager$Keyevnt_arrC;)I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_2b6

    .line 706
    move-object/from16 v0, p0

    iget-object v2, v0, mKeyEvnt_Arr:[Landroid/media/WFDUibcManager$Keyevnt_arrC;

    aget-object v2, v2, v20

    const/16 v3, 0x80

    # |= operator for: Landroid/media/WFDUibcManager$Keyevnt_arrC;->mKyFlag:I
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager$Keyevnt_arrC;->access$876(Landroid/media/WFDUibcManager$Keyevnt_arrC;I)I

    .line 708
    :cond_2b6
    move-object/from16 v0, p0

    iget-object v2, v0, mKeyEvnt_Arr:[Landroid/media/WFDUibcManager$Keyevnt_arrC;

    aget-object v2, v2, v20

    # getter for: Landroid/media/WFDUibcManager$Keyevnt_arrC;->mKyDwnTime:J
    invoke-static {v2}, Landroid/media/WFDUibcManager$Keyevnt_arrC;->access$700(Landroid/media/WFDUibcManager$Keyevnt_arrC;)J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, mKeyDownTime:J

    .line 709
    move-object/from16 v0, p0

    iget v2, v0, mFlag:I

    move-object/from16 v0, p0

    iget-object v3, v0, mKeyEvnt_Arr:[Landroid/media/WFDUibcManager$Keyevnt_arrC;

    aget-object v3, v3, v20

    # getter for: Landroid/media/WFDUibcManager$Keyevnt_arrC;->mKyFlag:I
    invoke-static {v3}, Landroid/media/WFDUibcManager$Keyevnt_arrC;->access$800(Landroid/media/WFDUibcManager$Keyevnt_arrC;)I

    move-result v3

    or-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, mFlag:I

    .line 710
    move-object/from16 v0, p0

    iget-object v2, v0, mKeyEvnt_Arr:[Landroid/media/WFDUibcManager$Keyevnt_arrC;

    aget-object v2, v2, v20

    # getter for: Landroid/media/WFDUibcManager$Keyevnt_arrC;->mRepCnt:I
    invoke-static {v2}, Landroid/media/WFDUibcManager$Keyevnt_arrC;->access$900(Landroid/media/WFDUibcManager$Keyevnt_arrC;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, mRepeatCnt:I

    goto/16 :goto_e4

    .line 739
    .end local v25    # "rCnt":I
    :cond_2e7
    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1b0

    .line 741
    const/16 v25, 0x0

    .restart local v25    # "rCnt":I
    :goto_2f0
    const/16 v2, 0xf

    move/from16 v0, v25

    if-ge v0, v2, :cond_30b

    .line 743
    move-object/from16 v0, p0

    iget-object v2, v0, mKeyEvnt_Arr:[Landroid/media/WFDUibcManager$Keyevnt_arrC;

    aget-object v2, v2, v25

    # getter for: Landroid/media/WFDUibcManager$Keyevnt_arrC;->mKyCod:I
    invoke-static {v2}, Landroid/media/WFDUibcManager$Keyevnt_arrC;->access$600(Landroid/media/WFDUibcManager$Keyevnt_arrC;)I

    move-result v2

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    if-ne v2, v3, :cond_308

    .line 744
    move/from16 v20, v25

    .line 741
    :cond_308
    add-int/lit8 v25, v25, 0x1

    goto :goto_2f0

    .line 749
    :cond_30b
    if-ltz v20, :cond_429

    .line 750
    move-object/from16 v0, p0

    iget-object v2, v0, mKeyEvnt_Arr:[Landroid/media/WFDUibcManager$Keyevnt_arrC;

    aget-object v2, v2, v20

    # getter for: Landroid/media/WFDUibcManager$Keyevnt_arrC;->mKyDwnTime:J
    invoke-static {v2}, Landroid/media/WFDUibcManager$Keyevnt_arrC;->access$700(Landroid/media/WFDUibcManager$Keyevnt_arrC;)J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, mKeyDownTime:J

    .line 751
    move-object/from16 v0, p0

    iget v2, v0, mFlag:I

    move-object/from16 v0, p0

    iget-object v3, v0, mKeyEvnt_Arr:[Landroid/media/WFDUibcManager$Keyevnt_arrC;

    aget-object v3, v3, v20

    # getter for: Landroid/media/WFDUibcManager$Keyevnt_arrC;->mKyFlag:I
    invoke-static {v3}, Landroid/media/WFDUibcManager$Keyevnt_arrC;->access$800(Landroid/media/WFDUibcManager$Keyevnt_arrC;)I

    move-result v3

    or-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, mFlag:I

    .line 752
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, mRepeatCnt:I

    .line 759
    :goto_333
    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x3b

    if-eq v2, v3, :cond_343

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x3c

    if-ne v2, v3, :cond_371

    .line 760
    :cond_343
    move-object/from16 v0, p0

    iget v2, v0, mMetaFlag:I

    and-int/lit8 v2, v2, -0x2

    move-object/from16 v0, p0

    iput v2, v0, mMetaFlag:I

    .line 761
    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x3b

    if-ne v2, v3, :cond_35f

    .line 762
    move-object/from16 v0, p0

    iget v2, v0, mMetaFlag:I

    and-int/lit8 v2, v2, -0x41

    move-object/from16 v0, p0

    iput v2, v0, mMetaFlag:I

    .line 763
    :cond_35f
    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x3c

    if-ne v2, v3, :cond_371

    .line 764
    move-object/from16 v0, p0

    iget v2, v0, mMetaFlag:I

    and-int/lit16 v2, v2, -0x81

    move-object/from16 v0, p0

    iput v2, v0, mMetaFlag:I

    .line 766
    :cond_371
    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x39

    if-eq v2, v3, :cond_381

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x3a

    if-ne v2, v3, :cond_3af

    .line 767
    :cond_381
    move-object/from16 v0, p0

    iget v2, v0, mMetaFlag:I

    and-int/lit8 v2, v2, -0x3

    move-object/from16 v0, p0

    iput v2, v0, mMetaFlag:I

    .line 768
    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x39

    if-ne v2, v3, :cond_39d

    .line 769
    move-object/from16 v0, p0

    iget v2, v0, mMetaFlag:I

    and-int/lit8 v2, v2, -0x11

    move-object/from16 v0, p0

    iput v2, v0, mMetaFlag:I

    .line 770
    :cond_39d
    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x3a

    if-ne v2, v3, :cond_3af

    .line 771
    move-object/from16 v0, p0

    iget v2, v0, mMetaFlag:I

    and-int/lit8 v2, v2, -0x21

    move-object/from16 v0, p0

    iput v2, v0, mMetaFlag:I

    .line 773
    :cond_3af
    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x71

    if-eq v2, v3, :cond_3bf

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x72

    if-ne v2, v3, :cond_3ed

    .line 774
    :cond_3bf
    move-object/from16 v0, p0

    iget v2, v0, mMetaFlag:I

    and-int/lit16 v2, v2, -0x1001

    move-object/from16 v0, p0

    iput v2, v0, mMetaFlag:I

    .line 775
    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x71

    if-ne v2, v3, :cond_3db

    .line 776
    move-object/from16 v0, p0

    iget v2, v0, mMetaFlag:I

    and-int/lit16 v2, v2, -0x2001

    move-object/from16 v0, p0

    iput v2, v0, mMetaFlag:I

    .line 777
    :cond_3db
    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x72

    if-ne v2, v3, :cond_3ed

    .line 778
    move-object/from16 v0, p0

    iget v2, v0, mMetaFlag:I

    and-int/lit16 v2, v2, -0x4001

    move-object/from16 v0, p0

    iput v2, v0, mMetaFlag:I

    .line 780
    :cond_3ed
    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x77

    if-ne v2, v3, :cond_3ff

    .line 781
    move-object/from16 v0, p0

    iget v2, v0, mMetaFlag:I

    and-int/lit8 v2, v2, -0x9

    move-object/from16 v0, p0

    iput v2, v0, mMetaFlag:I

    .line 783
    :cond_3ff
    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x73

    if-ne v2, v3, :cond_1b0

    .line 784
    move-object/from16 v0, p0

    iget-boolean v2, v0, bCap:Z

    if-nez v2, :cond_448

    .line 785
    move-object/from16 v0, p0

    iget v2, v0, mMetaFlag:I

    or-int/lit16 v2, v2, 0x100

    move-object/from16 v0, p0

    iput v2, v0, mMetaFlag:I

    .line 786
    move-object/from16 v0, p0

    iget v2, v0, mMetaFlag:I

    const/high16 v3, 0x100000

    or-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, mMetaFlag:I

    .line 787
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, bCap:Z

    goto/16 :goto_1b0

    .line 755
    :cond_429
    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, mKeyDownTime:J

    .line 756
    move-object/from16 v0, p0

    iget v2, v0, mFlag:I

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getFlags()I

    move-result v3

    or-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, mFlag:I

    .line 757
    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, mRepeatCnt:I

    goto/16 :goto_333

    .line 789
    :cond_448
    move-object/from16 v0, p0

    iget v2, v0, mMetaFlag:I

    const v3, -0x100001

    and-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, mMetaFlag:I

    .line 790
    move-object/from16 v0, p0

    iget v2, v0, mMetaFlag:I

    and-int/lit16 v2, v2, -0x101

    move-object/from16 v0, p0

    iput v2, v0, mMetaFlag:I

    .line 791
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, bCap:Z

    goto/16 :goto_1b0

    .line 820
    .end local v25    # "rCnt":I
    .restart local v24    # "mintent":Landroid/content/Intent;
    :cond_465
    move-object/from16 v0, p0

    iget-object v2, v0, ke:Landroid/view/KeyEvent;

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_249

    .line 822
    const-string/jumbo v2, "launch_home"

    const/4 v3, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_249
.end method

.method private handleMotionEvent()V
    .registers 47

    .prologue
    .line 384
    move-object/from16 v0, p0

    iget-object v0, v0, ev:Landroid/view/InputEvent;

    move-object/from16 v36, v0

    check-cast v36, Landroid/view/MotionEvent;

    .line 386
    .local v36, "newEv":Landroid/view/MotionEvent;
    sget-object v2, Landroid/media/WFDUibcManager$UIBC_Mode;->NORMAL:Landroid/media/WFDUibcManager$UIBC_Mode;

    move-object/from16 v0, p0

    iput-object v2, v0, Mode:Landroid/media/WFDUibcManager$UIBC_Mode;

    .line 387
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, first_KeyDown:Z

    .line 391
    move-object/from16 v0, p0

    iget-object v2, v0, wm:Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, displayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v2, v3}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 394
    const/4 v12, -0x1

    .line 395
    .local v12, "displayId":I
    const-string v2, "WFDUibcManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "displayId before: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    if-gez v12, :cond_63

    .line 397
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v24

    .line 398
    .local v24, "dm":Landroid/hardware/display/DisplayManagerGlobal;
    invoke-virtual/range {v24 .. v24}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayIds()[I

    move-result-object v21

    .local v21, "arr$":[I
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v34, v0

    .local v34, "len$":I
    const/16 v27, 0x0

    .local v27, "i$":I
    :goto_4c
    move/from16 v0, v27

    move/from16 v1, v34

    if-ge v0, v1, :cond_63

    aget v28, v21, v27

    .line 399
    .local v28, "id":I
    move-object/from16 v0, v24

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v2

    iget v2, v2, Landroid/view/DisplayInfo;->type:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_6d

    .line 400
    move/from16 v12, v28

    .line 405
    .end local v21    # "arr$":[I
    .end local v24    # "dm":Landroid/hardware/display/DisplayManagerGlobal;
    .end local v27    # "i$":I
    .end local v28    # "id":I
    .end local v34    # "len$":I
    :cond_63
    if-gez v12, :cond_70

    .line 406
    const-string v2, "WFDUibcManager"

    const-string v3, "displayId not found"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    :goto_6c
    return-void

    .line 398
    .restart local v21    # "arr$":[I
    .restart local v24    # "dm":Landroid/hardware/display/DisplayManagerGlobal;
    .restart local v27    # "i$":I
    .restart local v28    # "id":I
    .restart local v34    # "len$":I
    :cond_6d
    add-int/lit8 v27, v27, 0x1

    goto :goto_4c

    .line 412
    .end local v21    # "arr$":[I
    .end local v24    # "dm":Landroid/hardware/display/DisplayManagerGlobal;
    .end local v27    # "i$":I
    .end local v28    # "id":I
    .end local v34    # "len$":I
    :cond_70
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$400(Landroid/media/WFDUibcManager;)Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Landroid/media/WFDUibcManager;->access$400(Landroid/media/WFDUibcManager;)Landroid/content/Context;

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    move-object/from16 v0, p0

    iput-object v2, v0, activityManager:Landroid/app/ActivityManager;

    .line 413
    move-object/from16 v0, p0

    iget-object v2, v0, activityManager:Landroid/app/ActivityManager;

    const/16 v3, 0x14

    invoke-virtual {v2, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v29

    .line 414
    .local v29, "info":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface/range {v29 .. v29}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_c2

    .line 415
    const/4 v2, 0x0

    move-object/from16 v0, v29

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 416
    .local v45, "runningTaskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    move-object/from16 v0, v45

    iget-object v2, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.sec.android.app.camera"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, foregroundCamera:Z

    .line 418
    move-object/from16 v0, p0

    iget-boolean v2, v0, foregroundCamera:Z

    if-eqz v2, :cond_c2

    sget-object v2, Landroid/media/WFDUibcManager$UIBC_Mode;->CAMERA:Landroid/media/WFDUibcManager$UIBC_Mode;

    move-object/from16 v0, p0

    iput-object v2, v0, Mode:Landroid/media/WFDUibcManager$UIBC_Mode;

    .line 422
    .end local v45    # "runningTaskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_c2
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$400(Landroid/media/WFDUibcManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "sidesync_source_connect"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_e2

    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mCoupleShot:Z
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$500(Landroid/media/WFDUibcManager;)Z

    move-result v2

    if-eqz v2, :cond_1d3

    .line 424
    :cond_e2
    sget-object v2, Landroid/media/WFDUibcManager$UIBC_Mode;->FORCE_VALUE:Landroid/media/WFDUibcManager$UIBC_Mode;

    move-object/from16 v0, p0

    iput-object v2, v0, Mode:Landroid/media/WFDUibcManager$UIBC_Mode;

    .line 458
    :cond_e8
    :goto_e8
    invoke-virtual/range {v36 .. v36}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_29b

    .line 459
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, mTouchDownTime:J

    .line 463
    move-object/from16 v0, p0

    iget-object v2, v0, aPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/view/MotionEvent$PointerProperties;->clear()V

    .line 464
    move-object/from16 v0, p0

    iget-object v2, v0, aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/view/MotionEvent$PointerCoords;->clear()V

    .line 465
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, aPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    move-object/from16 v0, v36

    invoke-virtual {v0, v2, v3}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    .line 466
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    move-object/from16 v0, v36

    invoke-virtual {v0, v2, v3}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 468
    move-object/from16 v0, p0

    iget-object v2, v0, aPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Landroid/view/MotionEvent$PointerProperties;->id:I

    .line 469
    move-object/from16 v0, p0

    iget-object v2, v0, aPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x3

    iput v3, v2, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    .line 471
    move-object/from16 v0, p0

    iget-object v2, v0, aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/16 v3, 0x9

    move-object/from16 v0, p0

    iget-object v4, v0, aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    iget v4, v4, Landroid/view/MotionEvent$PointerCoords;->y:F

    invoke-virtual {v2, v3, v4}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 472
    move-object/from16 v0, p0

    iget-object v2, v0, aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/16 v3, 0xa

    move-object/from16 v0, p0

    iget-object v4, v0, aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    iget v4, v4, Landroid/view/MotionEvent$PointerCoords;->x:F

    invoke-virtual {v2, v3, v4}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 473
    move-object/from16 v0, p0

    iget-object v2, v0, aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, displayMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    shr-int/lit8 v3, v3, 0x1

    int-to-float v3, v3

    iput v3, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 474
    move-object/from16 v0, p0

    iget-object v2, v0, aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, displayMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    shr-int/lit8 v3, v3, 0x1

    int-to-float v3, v3

    iput v3, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 476
    move-object/from16 v0, p0

    iget-wide v2, v0, mTouchDownTime:J

    const-wide/16 v4, 0xa

    sub-long/2addr v2, v4

    move-object/from16 v0, p0

    iget-wide v4, v0, mTouchDownTime:J

    const-wide/16 v6, 0xa

    sub-long/2addr v4, v6

    const/16 v6, 0x8

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v8, v0, aPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    move-object/from16 v0, p0

    iget-object v9, v0, aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/high16 v13, 0x3f800000    # 1.0f

    const/high16 v14, 0x3f800000    # 1.0f

    const/16 v15, 0xa

    const/16 v16, 0x0

    const/16 v17, 0x2002

    const/16 v18, 0x0

    invoke-static/range {v2 .. v18}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIIFFIIII)Landroid/view/MotionEvent;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, me:Landroid/view/MotionEvent;

    .line 477
    move-object/from16 v0, p0

    iget-object v2, v0, me:Landroid/view/MotionEvent;

    const/16 v3, 0x2002

    invoke-virtual {v2, v3}, Landroid/view/MotionEvent;->setSource(I)V

    .line 479
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, me:Landroid/view/MotionEvent;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 480
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, me:Landroid/view/MotionEvent;

    goto/16 :goto_6c

    .line 428
    :cond_1d3
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$400(Landroid/media/WFDUibcManager;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "display"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Landroid/hardware/display/DisplayManager;

    .line 429
    .local v35, "mDm":Landroid/hardware/display/DisplayManager;
    invoke-virtual/range {v35 .. v35}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v42

    .line 430
    .local v42, "presentationDisplays":[Landroid/view/Display;
    const-string v2, "WFDUibcManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received displays amount: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v42

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    const/16 v26, 0x0

    .local v26, "i":I
    :goto_204
    move-object/from16 v0, v42

    array-length v2, v0

    move/from16 v0, v26

    if-ge v0, v2, :cond_e8

    .line 433
    aget-object v23, v42, v26

    .line 434
    .local v23, "display":Landroid/view/Display;
    invoke-virtual/range {v23 .. v23}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    if-ne v12, v2, :cond_297

    .line 435
    const-string v2, "WFDUibcManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "presentation display found, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    const/16 v43, 0x0

    .line 438
    .local v43, "presentationId":Ljava/lang/String;
    :try_start_230
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "wlan.wfd.uibc."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v23 .. v23}, Landroid/view/Display;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "-1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_251
    .catch Ljava/lang/IllegalArgumentException; {:try_start_230 .. :try_end_251} :catch_26d

    move-result-object v43

    .line 445
    :goto_252
    const-string v2, "-1"

    move-object/from16 v0, v43

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e8

    .line 446
    move-object/from16 v0, p0

    iget-object v2, v0, displayMetrics:Landroid/util/DisplayMetrics;

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 449
    sget-object v2, Landroid/media/WFDUibcManager$UIBC_Mode;->PRESENTATION:Landroid/media/WFDUibcManager$UIBC_Mode;

    move-object/from16 v0, p0

    iput-object v2, v0, Mode:Landroid/media/WFDUibcManager$UIBC_Mode;

    goto/16 :goto_e8

    .line 440
    :catch_26d
    move-exception v25

    .line 441
    .local v25, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "WFDUibcManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Display name too long: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v23 .. v23}, Landroid/view/Display;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Use default UIBC."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    const-string v43, "-1"

    goto :goto_252

    .line 432
    .end local v25    # "e":Ljava/lang/IllegalArgumentException;
    .end local v43    # "presentationId":Ljava/lang/String;
    :cond_297
    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_204

    .line 484
    .end local v23    # "display":Landroid/view/Display;
    .end local v26    # "i":I
    .end local v35    # "mDm":Landroid/hardware/display/DisplayManager;
    .end local v42    # "presentationDisplays":[Landroid/view/Display;
    :cond_29b
    const v2, 0x38d1b717    # 1.0E-4f

    move-object/from16 v0, p0

    iget-object v3, v0, displayMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v3

    mul-float v32, v2, v3

    .line 485
    .local v32, "kX":F
    const v2, 0x38d1b717    # 1.0E-4f

    move-object/from16 v0, p0

    iget-object v3, v0, displayMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v3, v3

    mul-float v33, v2, v3

    .line 486
    .local v33, "kY":F
    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-object v3, v0, displayMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v3, v3

    mul-float v30, v2, v3

    .line 487
    .local v30, "kH":F
    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-object v3, v0, displayMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v3

    mul-float v31, v2, v3

    .line 488
    .local v31, "kW":F
    const/high16 v19, 0x3f800000    # 1.0f

    .line 489
    .local v19, "Me_X":F
    const/high16 v20, 0x3f800000    # 1.0f

    .line 490
    .local v20, "Me_Y":F
    move-object/from16 v0, p0

    iget-object v2, v0, displayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, displayMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Ratio_WFD:F

    .line 491
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_X:F
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$300(Landroid/media/WFDUibcManager;)F

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_Y:F
    invoke-static {v3}, Landroid/media/WFDUibcManager;->access$200(Landroid/media/WFDUibcManager;)F

    move-result v3

    div-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Ratio_LCD:F

    .line 495
    invoke-virtual/range {v36 .. v36}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v22

    .line 496
    .local v22, "count":I
    const/16 v26, 0x0

    .restart local v26    # "i":I
    :goto_2fb
    move/from16 v0, v26

    move/from16 v1, v22

    if-ge v0, v1, :cond_61e

    .line 497
    move-object/from16 v0, p0

    iget-object v2, v0, aPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    aget-object v2, v2, v26

    invoke-virtual {v2}, Landroid/view/MotionEvent$PointerProperties;->clear()V

    .line 498
    move-object/from16 v0, p0

    iget-object v2, v0, aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v2, v2, v26

    invoke-virtual {v2}, Landroid/view/MotionEvent$PointerCoords;->clear()V

    .line 499
    move-object/from16 v0, p0

    iget-object v2, v0, aPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    aget-object v2, v2, v26

    move-object/from16 v0, v36

    move/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    .line 500
    move-object/from16 v0, p0

    iget-object v2, v0, aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v2, v2, v26

    move-object/from16 v0, v36

    move/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 503
    sget-object v2, Landroid/media/WFDUibcManager$2;->$SwitchMap$android$media$WFDUibcManager$UIBC_Mode:[I

    move-object/from16 v0, p0

    iget-object v3, v0, Mode:Landroid/media/WFDUibcManager$UIBC_Mode;

    invoke-virtual {v3}, Landroid/media/WFDUibcManager$UIBC_Mode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_672

    .line 552
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$400(Landroid/media/WFDUibcManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, configuration:Landroid/content/res/Configuration;

    .line 553
    move-object/from16 v0, p0

    iget-object v2, v0, configuration:Landroid/content/res/Configuration;

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_56a

    .line 554
    move-object/from16 v0, p0

    iget v2, v0, Ratio_WFD:F

    move-object/from16 v0, p0

    iget v3, v0, Ratio_LCD:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_4d3

    .line 556
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_Y:F
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$200(Landroid/media/WFDUibcManager;)F

    move-result v2

    mul-float v2, v2, v31

    div-float v38, v2, v30

    .line 557
    .local v38, "newWidth":F
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_X:F
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$300(Landroid/media/WFDUibcManager;)F

    move-result v2

    sub-float v2, v2, v38

    const/high16 v3, 0x40000000    # 2.0f

    div-float v41, v2, v3

    .line 558
    .local v41, "pad":F
    const v2, 0x38d1b717    # 1.0E-4f

    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_X:F
    invoke-static {v3}, Landroid/media/WFDUibcManager;->access$300(Landroid/media/WFDUibcManager;)F

    move-result v3

    mul-float/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v3, v3, v26

    iget v3, v3, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float v39, v2, v3

    .line 562
    .local v39, "normX":F
    move-object/from16 v0, p0

    iget-object v2, v0, displayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    sub-float v3, v39, v41

    div-float v3, v3, v38

    mul-float v19, v2, v3

    .line 563
    move-object/from16 v0, p0

    iget-object v2, v0, aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v2, v2, v26

    iget v2, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float v20, v33, v2

    .line 565
    move-object/from16 v0, p0

    iget-object v2, v0, aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v2, v2, v26

    const/4 v3, 0x0

    move/from16 v0, v19

    invoke-virtual {v2, v3, v0}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 566
    move-object/from16 v0, p0

    iget-object v2, v0, aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v2, v2, v26

    const/4 v3, 0x1

    move/from16 v0, v20

    invoke-virtual {v2, v3, v0}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 496
    .end local v38    # "newWidth":F
    .end local v39    # "normX":F
    .end local v41    # "pad":F
    :cond_3c4
    :goto_3c4
    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_2fb

    .line 505
    :pswitch_3c8
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, handleCameraTouch(I)V

    goto :goto_3c4

    .line 511
    :pswitch_3d0
    move-object/from16 v0, p0

    iget-object v2, v0, aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v2, v2, v26

    iget v2, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float v19, v32, v2

    .line 512
    move-object/from16 v0, p0

    iget-object v2, v0, aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v2, v2, v26

    iget v2, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float v20, v33, v2

    .line 513
    move-object/from16 v0, p0

    iget-object v2, v0, aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v2, v2, v26

    const/4 v3, 0x0

    move/from16 v0, v19

    invoke-virtual {v2, v3, v0}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 514
    move-object/from16 v0, p0

    iget-object v2, v0, aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v2, v2, v26

    const/4 v3, 0x1

    move/from16 v0, v20

    invoke-virtual {v2, v3, v0}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    goto :goto_3c4

    .line 519
    :pswitch_3fd
    move-object/from16 v0, p0

    iget-object v2, v0, wm:Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v44

    .line 521
    .local v44, "rotation":I
    if-nez v44, :cond_441

    .line 522
    move-object/from16 v0, p0

    iget-object v2, v0, displayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v3, v3, v26

    iget v3, v3, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float v3, v3, v32

    sub-float v19, v2, v3

    .line 523
    move-object/from16 v0, p0

    iget-object v2, v0, aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v2, v2, v26

    iget v2, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float v20, v33, v2

    .line 536
    :goto_428
    move-object/from16 v0, p0

    iget-object v2, v0, aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v2, v2, v26

    const/4 v3, 0x0

    move/from16 v0, v19

    invoke-virtual {v2, v3, v0}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 537
    move-object/from16 v0, p0

    iget-object v2, v0, aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v2, v2, v26

    const/4 v3, 0x1

    move/from16 v0, v20

    invoke-virtual {v2, v3, v0}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    goto :goto_3c4

    .line 524
    :cond_441
    const/4 v2, 0x3

    move/from16 v0, v44

    if-ne v0, v2, :cond_46d

    .line 525
    move-object/from16 v0, p0

    iget-object v2, v0, displayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v3, v3, v26

    iget v3, v3, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float v3, v3, v32

    sub-float v19, v2, v3

    .line 526
    move-object/from16 v0, p0

    iget-object v2, v0, displayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v3, v3, v26

    iget v3, v3, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float v3, v3, v33

    sub-float v20, v2, v3

    goto :goto_428

    .line 528
    :cond_46d
    const/4 v2, 0x2

    move/from16 v0, v44

    if-ne v0, v2, :cond_490

    .line 529
    move-object/from16 v0, p0

    iget-object v2, v0, aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v2, v2, v26

    iget v2, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float v19, v32, v2

    .line 530
    move-object/from16 v0, p0

    iget-object v2, v0, displayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v3, v3, v26

    iget v3, v3, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float v3, v3, v33

    sub-float v20, v2, v3

    goto :goto_428

    .line 532
    :cond_490
    move-object/from16 v0, p0

    iget-object v2, v0, aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v2, v2, v26

    iget v2, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float v19, v32, v2

    .line 533
    move-object/from16 v0, p0

    iget-object v2, v0, aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v2, v2, v26

    iget v2, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float v20, v33, v2

    goto :goto_428

    .line 543
    .end local v44    # "rotation":I
    :pswitch_4a5
    move-object/from16 v0, p0

    iget-object v2, v0, aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v2, v2, v26

    iget v2, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float v19, v32, v2

    .line 544
    move-object/from16 v0, p0

    iget-object v2, v0, aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v2, v2, v26

    iget v2, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float v20, v33, v2

    .line 545
    move-object/from16 v0, p0

    iget-object v2, v0, aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v2, v2, v26

    const/4 v3, 0x0

    move/from16 v0, v19

    invoke-virtual {v2, v3, v0}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 546
    move-object/from16 v0, p0

    iget-object v2, v0, aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v2, v2, v26

    const/4 v3, 0x1

    move/from16 v0, v20

    invoke-virtual {v2, v3, v0}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    goto/16 :goto_3c4

    .line 569
    :cond_4d3
    move-object/from16 v0, p0

    iget v2, v0, Ratio_WFD:F

    move-object/from16 v0, p0

    iget v3, v0, Ratio_LCD:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_540

    .line 571
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_X:F
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$300(Landroid/media/WFDUibcManager;)F

    move-result v2

    mul-float v2, v2, v30

    div-float v37, v2, v31

    .line 572
    .local v37, "newHeight":F
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_Y:F
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$200(Landroid/media/WFDUibcManager;)F

    move-result v2

    sub-float v2, v2, v37

    const/high16 v3, 0x40000000    # 2.0f

    div-float v41, v2, v3

    .line 573
    .restart local v41    # "pad":F
    const v2, 0x38d1b717    # 1.0E-4f

    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_Y:F
    invoke-static {v3}, Landroid/media/WFDUibcManager;->access$200(Landroid/media/WFDUibcManager;)F

    move-result v3

    mul-float/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v3, v3, v26

    iget v3, v3, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float v40, v2, v3

    .line 576
    .local v40, "normY":F
    move-object/from16 v0, p0

    iget-object v2, v0, aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v2, v2, v26

    iget v2, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float v19, v32, v2

    .line 577
    move-object/from16 v0, p0

    iget-object v2, v0, displayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v2

    sub-float v3, v40, v41

    div-float v3, v3, v37

    mul-float v20, v2, v3

    .line 578
    move-object/from16 v0, p0

    iget-object v2, v0, aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v2, v2, v26

    const/4 v3, 0x0

    move/from16 v0, v19

    invoke-virtual {v2, v3, v0}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 579
    move-object/from16 v0, p0

    iget-object v2, v0, aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v2, v2, v26

    const/4 v3, 0x1

    move/from16 v0, v20

    invoke-virtual {v2, v3, v0}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    goto/16 :goto_3c4

    .line 584
    .end local v37    # "newHeight":F
    .end local v40    # "normY":F
    .end local v41    # "pad":F
    :cond_540
    move-object/from16 v0, p0

    iget-object v2, v0, aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v2, v2, v26

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v4, v4, v26

    iget v4, v4, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float v4, v4, v32

    invoke-virtual {v2, v3, v4}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 585
    move-object/from16 v0, p0

    iget-object v2, v0, aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v2, v2, v26

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v4, v4, v26

    iget v4, v4, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float v4, v4, v33

    invoke-virtual {v2, v3, v4}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    goto/16 :goto_3c4

    .line 589
    :cond_56a
    move-object/from16 v0, p0

    iget v2, v0, Ratio_WFD:F

    move-object/from16 v0, p0

    iget v3, v0, Ratio_LCD:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_5e8

    .line 591
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_Y:F
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$200(Landroid/media/WFDUibcManager;)F

    move-result v2

    mul-float v2, v2, v31

    div-float v38, v2, v30

    .line 592
    .restart local v38    # "newWidth":F
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_X:F
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$300(Landroid/media/WFDUibcManager;)F

    move-result v2

    sub-float v2, v2, v38

    const/high16 v3, 0x40000000    # 2.0f

    div-float v41, v2, v3

    .line 593
    .restart local v41    # "pad":F
    const v2, 0x38d1b717    # 1.0E-4f

    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_X:F
    invoke-static {v3}, Landroid/media/WFDUibcManager;->access$300(Landroid/media/WFDUibcManager;)F

    move-result v3

    mul-float/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v3, v3, v26

    iget v3, v3, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float v39, v2, v3

    .line 596
    .restart local v39    # "normX":F
    move-object/from16 v0, p0

    iget-object v2, v0, displayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    sub-float v3, v39, v41

    mul-float/2addr v2, v3

    div-float v19, v2, v38

    .line 597
    move-object/from16 v0, p0

    iget-object v2, v0, aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v2, v2, v26

    iget v2, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float v20, v33, v2

    .line 599
    move-object/from16 v0, p0

    iget-object v2, v0, aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v2, v2, v26

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, displayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v4, v4

    sub-float v5, v39, v41

    mul-float/2addr v4, v5

    div-float v4, v4, v38

    invoke-virtual {v2, v3, v4}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 600
    move-object/from16 v0, p0

    iget-object v2, v0, aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v2, v2, v26

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v4, v4, v26

    iget v4, v4, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float v4, v4, v33

    invoke-virtual {v2, v3, v4}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    goto/16 :goto_3c4

    .line 602
    .end local v38    # "newWidth":F
    .end local v39    # "normX":F
    .end local v41    # "pad":F
    :cond_5e8
    move-object/from16 v0, p0

    iget v2, v0, Ratio_WFD:F

    move-object/from16 v0, p0

    iget v3, v0, Ratio_LCD:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3c4

    .line 603
    move-object/from16 v0, p0

    iget-object v2, v0, aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v2, v2, v26

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v4, v4, v26

    iget v4, v4, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float v4, v4, v32

    invoke-virtual {v2, v3, v4}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 604
    move-object/from16 v0, p0

    iget-object v2, v0, aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v2, v2, v26

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v4, v4, v26

    iget v4, v4, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float v4, v4, v33

    invoke-virtual {v2, v3, v4}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    goto/16 :goto_3c4

    .line 613
    :cond_61e
    invoke-virtual/range {v36 .. v36}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_62c

    .line 615
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, mTouchDownTime:J

    .line 619
    :cond_62c
    move-object/from16 v0, p0

    iget-wide v2, v0, mTouchDownTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual/range {v36 .. v36}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    invoke-virtual/range {v36 .. v36}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v8, v0, aPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    move-object/from16 v0, p0

    iget-object v9, v0, aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/high16 v13, 0x3f800000    # 1.0f

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-virtual/range {v36 .. v36}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v15

    const/16 v16, 0x0

    invoke-virtual/range {v36 .. v36}, Landroid/view/MotionEvent;->getSource()I

    move-result v17

    const/16 v18, 0x0

    invoke-static/range {v2 .. v18}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIIFFIIII)Landroid/view/MotionEvent;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, me:Landroid/view/MotionEvent;

    .line 623
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, me:Landroid/view/MotionEvent;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 625
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, me:Landroid/view/MotionEvent;

    goto/16 :goto_6c

    .line 503
    nop

    :pswitch_data_672
    .packed-switch 0x1
        :pswitch_3c8
        :pswitch_3d0
        :pswitch_3fd
        :pswitch_4a5
    .end packed-switch
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0xf

    const/16 v3, 0xa

    .line 851
    new-array v1, v3, [Landroid/view/MotionEvent$PointerProperties;

    iput-object v1, p0, aPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    .line 852
    new-array v1, v3, [Landroid/view/MotionEvent$PointerCoords;

    iput-object v1, p0, aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 854
    new-array v1, v4, [Landroid/media/WFDUibcManager$Keyevnt_arrC;

    iput-object v1, p0, mKeyEvnt_Arr:[Landroid/media/WFDUibcManager$Keyevnt_arrC;

    .line 857
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_12
    if-ge v0, v3, :cond_29

    .line 858
    iget-object v1, p0, aPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    new-instance v2, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v2}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v2, v1, v0

    .line 859
    iget-object v1, p0, aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    new-instance v2, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v2}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v2, v1, v0

    .line 857
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 861
    :cond_29
    const/4 v0, 0x0

    :goto_2a
    if-ge v0, v4, :cond_3a

    .line 862
    iget-object v1, p0, mKeyEvnt_Arr:[Landroid/media/WFDUibcManager$Keyevnt_arrC;

    new-instance v2, Landroid/media/WFDUibcManager$Keyevnt_arrC;

    iget-object v3, p0, this$0:Landroid/media/WFDUibcManager;

    invoke-direct {v2, v3}, Landroid/media/WFDUibcManager$Keyevnt_arrC;-><init>(Landroid/media/WFDUibcManager;)V

    aput-object v2, v1, v0

    .line 861
    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    .line 864
    :cond_3a
    const/4 v0, 0x0

    :goto_3b
    if-ge v0, v4, :cond_5f

    .line 865
    iget-object v1, p0, mKeyEvnt_Arr:[Landroid/media/WFDUibcManager$Keyevnt_arrC;

    aget-object v1, v1, v0

    const/4 v2, -0x1

    # setter for: Landroid/media/WFDUibcManager$Keyevnt_arrC;->mKyCod:I
    invoke-static {v1, v2}, Landroid/media/WFDUibcManager$Keyevnt_arrC;->access$602(Landroid/media/WFDUibcManager$Keyevnt_arrC;I)I

    .line 866
    iget-object v1, p0, mKeyEvnt_Arr:[Landroid/media/WFDUibcManager$Keyevnt_arrC;

    aget-object v1, v1, v0

    const-wide/16 v2, -0x1

    # setter for: Landroid/media/WFDUibcManager$Keyevnt_arrC;->mKyDwnTime:J
    invoke-static {v1, v2, v3}, Landroid/media/WFDUibcManager$Keyevnt_arrC;->access$702(Landroid/media/WFDUibcManager$Keyevnt_arrC;J)J

    .line 867
    iget-object v1, p0, mKeyEvnt_Arr:[Landroid/media/WFDUibcManager$Keyevnt_arrC;

    aget-object v1, v1, v0

    # setter for: Landroid/media/WFDUibcManager$Keyevnt_arrC;->mRepCnt:I
    invoke-static {v1, v5}, Landroid/media/WFDUibcManager$Keyevnt_arrC;->access$902(Landroid/media/WFDUibcManager$Keyevnt_arrC;I)I

    .line 868
    iget-object v1, p0, mKeyEvnt_Arr:[Landroid/media/WFDUibcManager$Keyevnt_arrC;

    aget-object v1, v1, v0

    # setter for: Landroid/media/WFDUibcManager$Keyevnt_arrC;->mKyFlag:I
    invoke-static {v1, v5}, Landroid/media/WFDUibcManager$Keyevnt_arrC;->access$802(Landroid/media/WFDUibcManager$Keyevnt_arrC;I)I

    .line 864
    add-int/lit8 v0, v0, 0x1

    goto :goto_3b

    .line 870
    :cond_5f
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v1, p0, displayMetrics:Landroid/util/DisplayMetrics;

    .line 871
    iget-object v1, p0, this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/media/WFDUibcManager;->access$400(Landroid/media/WFDUibcManager;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, wm:Landroid/view/WindowManager;

    .line 873
    :cond_77
    :goto_77
    iget-boolean v1, p0, running:Z

    if-eqz v1, :cond_99

    .line 874
    invoke-virtual {p0}, getNextEvent()Landroid/view/InputEvent;

    move-result-object v1

    iput-object v1, p0, ev:Landroid/view/InputEvent;

    .line 875
    iget-object v1, p0, ev:Landroid/view/InputEvent;

    if-eqz v1, :cond_77

    .line 882
    iget-object v1, p0, ev:Landroid/view/InputEvent;

    instance-of v1, v1, Landroid/view/MotionEvent;

    if-eqz v1, :cond_8f

    .line 883
    invoke-direct {p0}, handleMotionEvent()V

    goto :goto_77

    .line 885
    :cond_8f
    iget-object v1, p0, ev:Landroid/view/InputEvent;

    instance-of v1, v1, Landroid/view/KeyEvent;

    if-eqz v1, :cond_77

    .line 886
    invoke-direct {p0}, handleKeyEvent()V

    goto :goto_77

    .line 889
    :cond_99
    return-void
.end method
