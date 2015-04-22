.class public Lcom/android/systemui/statusbar/policy/MinitBattery;
.super Landroid/widget/ImageView;
.source "MinitBattery.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/MinitBattery$ResourceManager;
    }
.end annotation


# instance fields
.field private mBatteryColor:I

.field private mBatteryIconsLoaction:Ljava/lang/String;

.field private mBatteryLowColor:I

.field private mBatteryMidColor:I

.field private mBatteryType:I

.field private mChargeAnim:I

.field private mDownloadBatteryIconsLoaction:Ljava/lang/String;

.field private mFile:Ljava/io/File;

.field private mIsColorable:Z

.field private mLastLevel:I

.field private mLevel:I

.field private mLowLevel:I

.field private mMidLevel:I

.field private mPaint:Landroid/graphics/Paint;

.field private mRM:Lcom/android/systemui/statusbar/policy/MinitBattery$ResourceManager;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mStatus:I

.field private mTextColor:I

.field private mTextSize:I

.field private mTypeface:Landroid/graphics/Typeface;

.field private mWorkingType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 74
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 41
    iput v1, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mLastLevel:I

    .line 44
    iput v1, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mTextColor:I

    .line 45
    const/16 v0, 0x1e

    iput v0, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mTextSize:I

    .line 46
    iput v1, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mBatteryColor:I

    .line 47
    const/16 v0, -0x3c00

    iput v0, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mBatteryMidColor:I

    .line 48
    const v0, -0x21d6fc

    iput v0, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mBatteryLowColor:I

    .line 49
    const/16 v0, 0x32

    iput v0, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mMidLevel:I

    const/16 v0, 0x14

    iput v0, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mLowLevel:I

    .line 51
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mIsColorable:Z

    .line 52
    new-instance v0, Lcom/android/systemui/statusbar/policy/MinitBattery$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/MinitBattery$1;-><init>(Lcom/android/systemui/statusbar/policy/MinitBattery;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 69
    iput v2, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mChargeAnim:I

    .line 70
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mBatteryType:I

    .line 71
    iput v2, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mWorkingType:I

    .line 75
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MinitBattery;->init(Landroid/content/Context;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 79
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    iput v1, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mLastLevel:I

    .line 44
    iput v1, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mTextColor:I

    .line 45
    const/16 v0, 0x1e

    iput v0, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mTextSize:I

    .line 46
    iput v1, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mBatteryColor:I

    .line 47
    const/16 v0, -0x3c00

    iput v0, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mBatteryMidColor:I

    .line 48
    const v0, -0x21d6fc

    iput v0, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mBatteryLowColor:I

    .line 49
    const/16 v0, 0x32

    iput v0, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mMidLevel:I

    const/16 v0, 0x14

    iput v0, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mLowLevel:I

    .line 51
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mIsColorable:Z

    .line 52
    new-instance v0, Lcom/android/systemui/statusbar/policy/MinitBattery$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/MinitBattery$1;-><init>(Lcom/android/systemui/statusbar/policy/MinitBattery;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 69
    iput v2, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mChargeAnim:I

    .line 70
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mBatteryType:I

    .line 71
    iput v2, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mWorkingType:I

    .line 80
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MinitBattery;->init(Landroid/content/Context;)V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 84
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    iput v1, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mLastLevel:I

    .line 44
    iput v1, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mTextColor:I

    .line 45
    const/16 v0, 0x1e

    iput v0, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mTextSize:I

    .line 46
    iput v1, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mBatteryColor:I

    .line 47
    const/16 v0, -0x3c00

    iput v0, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mBatteryMidColor:I

    .line 48
    const v0, -0x21d6fc

    iput v0, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mBatteryLowColor:I

    .line 49
    const/16 v0, 0x32

    iput v0, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mMidLevel:I

    const/16 v0, 0x14

    iput v0, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mLowLevel:I

    .line 51
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mIsColorable:Z

    .line 52
    new-instance v0, Lcom/android/systemui/statusbar/policy/MinitBattery$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/MinitBattery$1;-><init>(Lcom/android/systemui/statusbar/policy/MinitBattery;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 69
    iput v2, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mChargeAnim:I

    .line 70
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mBatteryType:I

    .line 71
    iput v2, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mWorkingType:I

    .line 85
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MinitBattery;->init(Landroid/content/Context;)V

    .line 86
    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/policy/MinitBattery;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/MinitBattery;
    .param p1, "x1"    # I

    .prologue
    .line 36
    iput p1, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mLevel:I

    return p1
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/policy/MinitBattery;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/MinitBattery;
    .param p1, "x1"    # I

    .prologue
    .line 36
    iput p1, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mStatus:I

    return p1
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/policy/MinitBattery;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/MinitBattery;
    .param p1, "x1"    # I

    .prologue
    .line 36
    iput p1, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mLastLevel:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/MinitBattery;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/MinitBattery;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MinitBattery;->getSettings()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/policy/MinitBattery;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/MinitBattery;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MinitBattery;->updateImageView()V

    return-void
.end method

.method private applyColorFilter()V
    .locals 2

    .prologue
    .line 156
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mIsColorable:Z

    if-eqz v0, :cond_3

    .line 157
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mLevel:I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mMidLevel:I

    if-lt v0, v1, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mLevel:I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mLowLevel:I

    if-lt v0, v1, :cond_1

    .line 158
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mBatteryColor:I

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/MinitBattery;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 159
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mLevel:I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mMidLevel:I

    if-ge v0, v1, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mLevel:I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mLowLevel:I

    if-le v0, v1, :cond_2

    .line 160
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mBatteryMidColor:I

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/MinitBattery;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 161
    :cond_2
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mLevel:I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mLowLevel:I

    if-ge v0, v1, :cond_0

    .line 162
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mBatteryLowColor:I

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/MinitBattery;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 165
    :cond_3
    const/4 v0, -0x1

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/MinitBattery;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0
.end method

.method private getChargingAnimation(I)Landroid/graphics/drawable/AnimationDrawable;
    .locals 9
    .param p1, "level"    # I

    .prologue
    const/16 v8, 0x1f4

    const/16 v7, 0xfa

    const/16 v6, 0x65

    const/16 v5, 0x14

    const/16 v4, 0x64

    .line 270
    new-instance v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    .line 272
    .local v0, "ad":Landroid/graphics/drawable/AnimationDrawable;
    iget v3, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mChargeAnim:I

    packed-switch v3, :pswitch_data_0

    .line 311
    :cond_0
    :goto_0
    return-object v0

    .line 274
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MinitBattery;->getChargingDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/16 v4, 0x5dc

    invoke-virtual {v0, v3, v4}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 275
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MinitBattery;->getNormalDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3, v8}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    goto :goto_0

    .line 278
    :pswitch_1
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    if-ge v1, v4, :cond_1

    .line 279
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/MinitBattery;->getChargingDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3, v5}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 278
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 281
    :cond_1
    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/policy/MinitBattery;->getChargingDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3, v8}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 282
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MinitBattery;->getNormalDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/16 v4, 0x9c4

    invoke-virtual {v0, v3, v4}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    goto :goto_0

    .line 285
    .end local v1    # "i":I
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MinitBattery;->getNormalDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/16 v4, 0x7d0

    invoke-virtual {v0, v3, v4}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 286
    move v1, p1

    .restart local v1    # "i":I
    :goto_2
    if-ge v1, v6, :cond_0

    .line 287
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/MinitBattery;->getChargingDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/16 v4, 0x50

    invoke-virtual {v0, v3, v4}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 286
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 291
    .end local v1    # "i":I
    :pswitch_3
    move v2, p1

    .line 292
    .local v2, "l":I
    if-nez v2, :cond_2

    .line 293
    const/4 v2, 0x1

    .line 295
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    if-ge v1, v2, :cond_3

    .line 296
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/MinitBattery;->getChargingDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3, v5}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 295
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 298
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MinitBattery;->getNormalDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/16 v4, 0x9c4

    invoke-virtual {v0, v3, v4}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    goto :goto_0

    .line 301
    .end local v1    # "i":I
    .end local v2    # "l":I
    :pswitch_4
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_4
    if-ge v1, v6, :cond_4

    .line 302
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/MinitBattery;->getChargingDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3, v5}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 301
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 304
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MinitBattery;->getNormalDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3, v7}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 305
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MinitBattery;->getChargingDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3, v4}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 306
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MinitBattery;->getNormalDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3, v7}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 307
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MinitBattery;->getChargingDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3, v4}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 308
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MinitBattery;->getNormalDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/16 v4, 0x7d0

    invoke-virtual {v0, v3, v4}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    goto/16 :goto_0

    .line 272
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private getChargingDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 8
    .param p1, "level"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 231
    const/4 v0, 0x0

    .line 233
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    iget v3, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mWorkingType:I

    packed-switch v3, :pswitch_data_0

    .line 266
    :goto_0
    return-object v0

    .line 235
    :pswitch_0
    invoke-direct {p0, p1, v6}, Lcom/android/systemui/statusbar/policy/MinitBattery;->getDefaultBattery(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 236
    goto :goto_0

    .line 239
    :pswitch_1
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mDownloadBatteryIconsLoaction:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "stat_sys_battery_charge_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 243
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 244
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 245
    invoke-direct {p0, v1, v7}, Lcom/android/systemui/statusbar/policy/MinitBattery;->setBatterySize(Ljava/io/File;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 247
    :cond_0
    invoke-direct {p0, p1, v6}, Lcom/android/systemui/statusbar/policy/MinitBattery;->getDefaultBattery(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 249
    goto :goto_0

    .line 252
    .end local v1    # "f":Ljava/io/File;
    :pswitch_2
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mBatteryIconsLoaction:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stat_sys_battery_charge_anim"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".png"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    .local v2, "fi":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 258
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 259
    invoke-direct {p0, v2, v7}, Lcom/android/systemui/statusbar/policy/MinitBattery;->setBatterySize(Ljava/io/File;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 261
    :cond_1
    invoke-direct {p0, p1, v6}, Lcom/android/systemui/statusbar/policy/MinitBattery;->getDefaultBattery(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 233
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getDefaultBattery(IZ)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "level"    # I
    .param p2, "charge"    # Z

    .prologue
    .line 171
    const/4 v0, 0x0

    .line 176
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz p2, :cond_0

    .line 177
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mRM:Lcom/android/systemui/statusbar/policy/MinitBattery$ResourceManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "battery_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mBatteryType:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_charge_anim"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/MinitBattery$ResourceManager;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 185
    :goto_0
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/statusbar/policy/MinitBattery;->setBatterySize(Ljava/io/File;Landroid/graphics/drawable/Drawable;)V

    .line 186
    return-object v0

    .line 180
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mRM:Lcom/android/systemui/statusbar/policy/MinitBattery$ResourceManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "battery_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mBatteryType:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/MinitBattery$ResourceManager;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method private getNormalDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 8
    .param p1, "level"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 193
    const/4 v0, 0x0

    .line 195
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    iget v3, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mWorkingType:I

    packed-switch v3, :pswitch_data_0

    .line 225
    :goto_0
    return-object v0

    .line 197
    :pswitch_0
    invoke-direct {p0, p1, v6}, Lcom/android/systemui/statusbar/policy/MinitBattery;->getDefaultBattery(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 198
    goto :goto_0

    .line 201
    :pswitch_1
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mDownloadBatteryIconsLoaction:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "stat_sys_battery_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 204
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 205
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 206
    invoke-direct {p0, v1, v7}, Lcom/android/systemui/statusbar/policy/MinitBattery;->setBatterySize(Ljava/io/File;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 208
    :cond_0
    invoke-direct {p0, p1, v6}, Lcom/android/systemui/statusbar/policy/MinitBattery;->getDefaultBattery(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 210
    goto :goto_0

    .line 213
    .end local v1    # "f":Ljava/io/File;
    :pswitch_2
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mBatteryIconsLoaction:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stat_sys_battery_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".png"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    .local v2, "fi":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 217
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 218
    invoke-direct {p0, v2, v7}, Lcom/android/systemui/statusbar/policy/MinitBattery;->setBatterySize(Ljava/io/File;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 220
    :cond_1
    invoke-direct {p0, p1, v6}, Lcom/android/systemui/statusbar/policy/MinitBattery;->getDefaultBattery(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 195
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getSaveLocation(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 119
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "save_loc"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, "t":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/3Minit Downloads/BatteryIcons/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 124
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/3Minit Downloads/BatteryIcons/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getSettings()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 129
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MinitBattery;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 130
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MinitBattery;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/MinitBattery;->getSaveLocation(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mDownloadBatteryIconsLoaction:Ljava/lang/String;

    .line 131
    const-string v1, "minit_anim_type"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mChargeAnim:I

    .line 132
    const-string v1, "minit_battery_type"

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mBatteryType:I

    .line 133
    const-string v1, "minit_working_type"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mWorkingType:I

    .line 134
    const-string v1, "minit_colorable"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mIsColorable:Z

    .line 135
    const-string v1, "minit_battery_color"

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mBatteryColor:I

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mBatteryColor:I

    .line 136
    const-string v1, "minit_battery_mid_color"

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mBatteryMidColor:I

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mBatteryMidColor:I

    .line 137
    const-string v1, "minit_battery_low_color"

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mBatteryLowColor:I

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mBatteryLowColor:I

    .line 138
    const-string v1, "minit_mid_level"

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mMidLevel:I

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mMidLevel:I

    .line 139
    const-string v1, "minit_low_level"

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mLowLevel:I

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mLowLevel:I

    .line 140
    const-string v1, "minit_battery_text_size"

    const/16 v4, 0x1e

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mTextSize:I

    .line 141
    const-string v1, "minit_battery_text_color"

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mTextColor:I

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mTextColor:I

    .line 144
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mTextColor:I

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 145
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mTextSize:I

    int-to-float v4, v4

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 147
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MinitBattery;->invalidate()V

    .line 149
    const-string v1, "minit_battery_visible"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 150
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/policy/MinitBattery;->setVisibility(I)V

    .line 153
    :goto_1
    return-void

    :cond_0
    move v1, v3

    .line 134
    goto :goto_0

    .line 152
    :cond_1
    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/policy/MinitBattery;->setVisibility(I)V

    goto :goto_1
.end method

.method private init(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 89
    iput v1, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mLevel:I

    .line 90
    iput v1, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mStatus:I

    .line 95
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "3MinitBatteryIcons"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mBatteryIconsLoaction:Ljava/lang/String;

    .line 97
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mBatteryIconsLoaction:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mFile:Ljava/io/File;

    .line 98
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 100
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MinitBattery;->getSaveLocation(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mDownloadBatteryIconsLoaction:Ljava/lang/String;

    .line 102
    new-instance v1, Lcom/android/systemui/statusbar/policy/MinitBattery$ResourceManager;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/policy/MinitBattery$ResourceManager;-><init>(Lcom/android/systemui/statusbar/policy/MinitBattery;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mRM:Lcom/android/systemui/statusbar/policy/MinitBattery$ResourceManager;

    .line 104
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mPaint:Landroid/graphics/Paint;

    .line 105
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mTextColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 106
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mTextSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 107
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 108
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 109
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 111
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MinitBattery;->getSettings()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :goto_0
    return-void

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private setBatterySize(Ljava/io/File;Landroid/graphics/drawable/Drawable;)V
    .locals 9
    .param p1, "file"    # Ljava/io/File;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 402
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 403
    .local v2, "options":Landroid/graphics/BitmapFactory$Options;
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v6, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 406
    const/4 v0, 0x0

    .line 408
    .local v0, "b":Landroid/graphics/Bitmap;
    if-eqz p1, :cond_0

    .line 409
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 413
    :cond_0
    if-eqz p2, :cond_1

    .line 414
    check-cast p2, Landroid/graphics/drawable/BitmapDrawable;

    .end local p2    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 417
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 418
    .local v5, "width":I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 420
    .local v1, "height":I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MinitBattery;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "minit_battery_size"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 422
    .local v3, "size":I
    const/4 v4, 0x0

    .line 424
    .local v4, "t":I
    if-gez v3, :cond_2

    .line 425
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 426
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MinitBattery;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    sub-int v7, v1, v4

    iput v7, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 427
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MinitBattery;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    sub-int v7, v5, v4

    iput v7, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 437
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MinitBattery;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/policy/MinitBattery;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 438
    return-void

    .line 428
    :cond_2
    if-lez v3, :cond_3

    .line 429
    move v4, v3

    .line 430
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MinitBattery;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    add-int v7, v1, v4

    iput v7, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 431
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MinitBattery;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    add-int v7, v5, v4

    iput v7, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    .line 433
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MinitBattery;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iput v1, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 434
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MinitBattery;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iput v5, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0
.end method

.method private updateImageView()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 346
    iget v1, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mStatus:I

    packed-switch v1, :pswitch_data_0

    .line 361
    :pswitch_0
    iget v1, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mLevel:I

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/MinitBattery;->getNormalDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/MinitBattery;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 362
    iput v2, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mLastLevel:I

    .line 366
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MinitBattery;->applyColorFilter()V

    .line 368
    return-void

    .line 349
    :pswitch_1
    iget v1, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mLevel:I

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/MinitBattery;->getChargingAnimation(I)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    .line 350
    .local v0, "ad":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/MinitBattery;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 351
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 352
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 353
    iget v1, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mLevel:I

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mLastLevel:I

    goto :goto_0

    .line 357
    .end local v0    # "ad":Landroid/graphics/drawable/AnimationDrawable;
    :pswitch_2
    const/16 v1, 0x64

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/MinitBattery;->getNormalDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/MinitBattery;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 358
    iput v2, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mLastLevel:I

    goto :goto_0

    .line 346
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 316
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    .line 317
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 318
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 319
    const-string v1, "com.three.minit.BATTERY_TYPE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 320
    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 321
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MinitBattery;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 322
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 326
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 327
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MinitBattery;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 328
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 333
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 335
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MinitBattery;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 337
    .local v0, "vlp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    div-int/lit8 v1, v3, 0x2

    .line 338
    .local v1, "xPos":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->descent()F

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->ascent()F

    move-result v5

    add-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    float-to-int v2, v3

    .line 340
    .local v2, "yPos":I
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mIsColorable:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mPaint:Landroid/graphics/Paint;

    if-eqz v3, :cond_0

    .line 341
    iget v3, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mLevel:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    int-to-float v4, v1

    int-to-float v5, v2

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 343
    :cond_0
    return-void
.end method
