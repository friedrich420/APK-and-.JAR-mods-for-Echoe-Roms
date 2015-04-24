.class public Landroid/support/v4/app/ActionBarDrawerToggle;
.super Ljava/lang/Object;
.source "ActionBarDrawerToggle.java"

# interfaces
.implements Landroid/support/v4/widget/DrawerLayout$DrawerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/ActionBarDrawerToggle$1;,
        Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;,
        Landroid/support/v4/app/ActionBarDrawerToggle$ActionBarDrawerToggleImplJellybeanMR2;,
        Landroid/support/v4/app/ActionBarDrawerToggle$ActionBarDrawerToggleImplHC;,
        Landroid/support/v4/app/ActionBarDrawerToggle$ActionBarDrawerToggleImplBase;,
        Landroid/support/v4/app/ActionBarDrawerToggle$ActionBarDrawerToggleImpl;,
        Landroid/support/v4/app/ActionBarDrawerToggle$Delegate;,
        Landroid/support/v4/app/ActionBarDrawerToggle$DelegateProvider;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final BACK_TO_DRAWER:I = 0x0

.field private static final DRAWER_TO_BACK:I = 0x1

.field private static final ID_HOME:I = 0x102002c

.field private static final IMPL:Landroid/support/v4/app/ActionBarDrawerToggle$ActionBarDrawerToggleImpl;

.field private static final TOGGLE_DRAWABLE_OFFSET:F = 0.33333334f


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mActivityImpl:Landroid/support/v4/app/ActionBarDrawerToggle$Delegate;

.field private final mCloseDrawerContentDescRes:I

.field private mDrawerImage:Landroid/graphics/drawable/Drawable;

.field private mDrawerImageList:[[I

.field private final mDrawerImageResource:I

.field private mDrawerIndicatorEnabled:Z

.field private final mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

.field private mDrawerState:I

.field private mHasCustomUpIndicator:Z

.field private mHomeAsUpIndicator:Landroid/graphics/drawable/Drawable;

.field private final mOpenDrawerContentDescRes:I

.field private mSetIndicatorInfo:Ljava/lang/Object;

.field private mSlider:Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 176
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 177
    .local v0, "version":I
    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 178
    new-instance v1, Landroid/support/v4/app/ActionBarDrawerToggle$ActionBarDrawerToggleImplJellybeanMR2;

    invoke-direct {v1, v2}, Landroid/support/v4/app/ActionBarDrawerToggle$ActionBarDrawerToggleImplJellybeanMR2;-><init>(Landroid/support/v4/app/ActionBarDrawerToggle$1;)V

    sput-object v1, Landroid/support/v4/app/ActionBarDrawerToggle;->IMPL:Landroid/support/v4/app/ActionBarDrawerToggle$ActionBarDrawerToggleImpl;

    .line 184
    :goto_0
    return-void

    .line 179
    :cond_0
    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 180
    new-instance v1, Landroid/support/v4/app/ActionBarDrawerToggle$ActionBarDrawerToggleImplHC;

    invoke-direct {v1, v2}, Landroid/support/v4/app/ActionBarDrawerToggle$ActionBarDrawerToggleImplHC;-><init>(Landroid/support/v4/app/ActionBarDrawerToggle$1;)V

    sput-object v1, Landroid/support/v4/app/ActionBarDrawerToggle;->IMPL:Landroid/support/v4/app/ActionBarDrawerToggle$ActionBarDrawerToggleImpl;

    goto :goto_0

    .line 182
    :cond_1
    new-instance v1, Landroid/support/v4/app/ActionBarDrawerToggle$ActionBarDrawerToggleImplBase;

    invoke-direct {v1, v2}, Landroid/support/v4/app/ActionBarDrawerToggle$ActionBarDrawerToggleImplBase;-><init>(Landroid/support/v4/app/ActionBarDrawerToggle$1;)V

    sput-object v1, Landroid/support/v4/app/ActionBarDrawerToggle;->IMPL:Landroid/support/v4/app/ActionBarDrawerToggle$ActionBarDrawerToggleImpl;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;III)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "drawerLayout"    # Landroid/support/v4/widget/DrawerLayout;
    .param p3, "drawerImageRes"    # I
    .param p4, "openDrawerContentDescRes"    # I
    .param p5, "closeDrawerContentDescRes"    # I

    .prologue
    .line 233
    invoke-static {p1}, Landroid/support/v4/app/ActionBarDrawerToggle;->assumeMaterial(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v3, 0x1

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/app/ActionBarDrawerToggle;-><init>(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;ZIII)V

    .line 235
    return-void

    .line 233
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;ZIII)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "drawerLayout"    # Landroid/support/v4/widget/DrawerLayout;
    .param p3, "animate"    # Z
    .param p4, "drawerImageRes"    # I
    .param p5, "openDrawerContentDescRes"    # I
    .param p6, "closeDrawerContentDescRes"    # I

    .prologue
    const/4 v2, 0x0

    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    .line 199
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mDrawerState:I

    .line 275
    iput-object p1, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mActivity:Landroid/app/Activity;

    .line 278
    instance-of v0, p1, Landroid/support/v4/app/ActionBarDrawerToggle$DelegateProvider;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 279
    check-cast v0, Landroid/support/v4/app/ActionBarDrawerToggle$DelegateProvider;

    invoke-interface {v0}, Landroid/support/v4/app/ActionBarDrawerToggle$DelegateProvider;->getDrawerToggleDelegate()Landroid/support/v4/app/ActionBarDrawerToggle$Delegate;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mActivityImpl:Landroid/support/v4/app/ActionBarDrawerToggle$Delegate;

    .line 284
    :goto_0
    iput-object p2, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    .line 285
    iput p4, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mDrawerImageResource:I

    .line 286
    iput p5, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mOpenDrawerContentDescRes:I

    .line 287
    iput p6, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mCloseDrawerContentDescRes:I

    .line 289
    invoke-virtual {p0}, Landroid/support/v4/app/ActionBarDrawerToggle;->getThemeUpIndicator()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mHomeAsUpIndicator:Landroid/graphics/drawable/Drawable;

    .line 290
    invoke-static {p1, p4}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mDrawerImage:Landroid/graphics/drawable/Drawable;

    .line 291
    new-instance v0, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;

    iget-object v1, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mDrawerImage:Landroid/graphics/drawable/Drawable;

    invoke-direct {v0, p0, v1, v2}, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;-><init>(Landroid/support/v4/app/ActionBarDrawerToggle;Landroid/graphics/drawable/Drawable;Landroid/support/v4/app/ActionBarDrawerToggle$1;)V

    iput-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mSlider:Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;

    .line 292
    iget-object v1, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mSlider:Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;

    if-eqz p3, :cond_1

    const v0, 0x3eaaaaab

    :goto_1
    invoke-virtual {v1, v0}, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->setOffset(F)V

    .line 293
    return-void

    .line 281
    :cond_0
    iput-object v2, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mActivityImpl:Landroid/support/v4/app/ActionBarDrawerToggle$Delegate;

    goto :goto_0

    .line 292
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;Z[[III)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "drawerLayout"    # Landroid/support/v4/widget/DrawerLayout;
    .param p3, "animate"    # Z
    .param p4, "drawerImageResIds"    # [[I
    .param p5, "openDrawerContentDescRes"    # I
    .param p6, "closeDrawerContentDescRes"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    .line 199
    iput v1, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mDrawerState:I

    .line 299
    iput-object p1, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mActivity:Landroid/app/Activity;

    .line 302
    instance-of v0, p1, Landroid/support/v4/app/ActionBarDrawerToggle$DelegateProvider;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 303
    check-cast v0, Landroid/support/v4/app/ActionBarDrawerToggle$DelegateProvider;

    invoke-interface {v0}, Landroid/support/v4/app/ActionBarDrawerToggle$DelegateProvider;->getDrawerToggleDelegate()Landroid/support/v4/app/ActionBarDrawerToggle$Delegate;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mActivityImpl:Landroid/support/v4/app/ActionBarDrawerToggle$Delegate;

    .line 308
    :goto_0
    iput-object p2, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    .line 309
    iput-object p4, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mDrawerImageList:[[I

    .line 310
    iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mDrawerImageList:[[I

    aget-object v0, v0, v1

    const/16 v1, 0x1e

    aget v0, v0, v1

    iput v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mDrawerImageResource:I

    .line 311
    iput p5, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mOpenDrawerContentDescRes:I

    .line 312
    iput p6, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mCloseDrawerContentDescRes:I

    .line 314
    invoke-virtual {p0}, Landroid/support/v4/app/ActionBarDrawerToggle;->getThemeUpIndicator()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mHomeAsUpIndicator:Landroid/graphics/drawable/Drawable;

    .line 315
    iget v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mDrawerImageResource:I

    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mDrawerImage:Landroid/graphics/drawable/Drawable;

    .line 316
    new-instance v0, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;

    iget-object v1, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mDrawerImage:Landroid/graphics/drawable/Drawable;

    invoke-direct {v0, p0, v1, v2}, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;-><init>(Landroid/support/v4/app/ActionBarDrawerToggle;Landroid/graphics/drawable/Drawable;Landroid/support/v4/app/ActionBarDrawerToggle$1;)V

    iput-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mSlider:Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;

    .line 317
    iget-object v1, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mSlider:Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;

    if-eqz p3, :cond_1

    const v0, 0x3eaaaaab

    :goto_1
    invoke-virtual {v1, v0}, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->setOffset(F)V

    .line 318
    return-void

    .line 305
    :cond_0
    iput-object v2, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mActivityImpl:Landroid/support/v4/app/ActionBarDrawerToggle$Delegate;

    goto :goto_0

    .line 317
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;[[III)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "drawerLayout"    # Landroid/support/v4/widget/DrawerLayout;
    .param p3, "drawerImageResIds"    # [[I
    .param p4, "openDrawerContentDescRes"    # I
    .param p5, "closeDrawerContentDescRes"    # I

    .prologue
    .line 241
    invoke-static {p1}, Landroid/support/v4/app/ActionBarDrawerToggle;->assumeMaterial(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v3, 0x1

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/app/ActionBarDrawerToggle;-><init>(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;Z[[III)V

    .line 243
    return-void

    .line 241
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method static synthetic access$400(Landroid/support/v4/app/ActionBarDrawerToggle;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Landroid/support/v4/app/ActionBarDrawerToggle;

    .prologue
    .line 65
    iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method private animateToNavibrationButton(IF)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "slideOffset"    # F

    .prologue
    .line 486
    const/4 v0, 0x0

    .line 487
    .local v0, "index":I
    const v1, 0x3f777777

    cmpl-float v1, p2, v1

    if-lez v1, :cond_2

    .line 488
    const/16 v0, 0x1d

    .line 546
    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mDrawerImageList:[[I

    aget-object v1, v1, p1

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 547
    iget-object v1, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mDrawerImageList:[[I

    aget-object v2, v2, p1

    aget v2, v2, v0

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez p1, :cond_1e

    iget v1, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mOpenDrawerContentDescRes:I

    :goto_1
    invoke-virtual {p0, v2, v1}, Landroid/support/v4/app/ActionBarDrawerToggle;->setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V

    .line 550
    :cond_1
    return-void

    .line 489
    :cond_2
    const v1, 0x3f6eeeef

    cmpl-float v1, p2, v1

    if-lez v1, :cond_3

    .line 490
    const/16 v0, 0x1c

    goto :goto_0

    .line 491
    :cond_3
    const v1, 0x3f666666    # 0.9f

    cmpl-float v1, p2, v1

    if-lez v1, :cond_4

    .line 492
    const/16 v0, 0x1b

    goto :goto_0

    .line 493
    :cond_4
    const v1, 0x3f5dddde

    cmpl-float v1, p2, v1

    if-lez v1, :cond_5

    .line 494
    const/16 v0, 0x1a

    goto :goto_0

    .line 495
    :cond_5
    const v1, 0x3f555555

    cmpl-float v1, p2, v1

    if-lez v1, :cond_6

    .line 496
    const/16 v0, 0x19

    goto :goto_0

    .line 497
    :cond_6
    const v1, 0x3f4ccccd    # 0.8f

    cmpl-float v1, p2, v1

    if-lez v1, :cond_7

    .line 498
    const/16 v0, 0x18

    goto :goto_0

    .line 499
    :cond_7
    const v1, 0x3f444444

    cmpl-float v1, p2, v1

    if-lez v1, :cond_8

    .line 500
    const/16 v0, 0x17

    goto :goto_0

    .line 501
    :cond_8
    const v1, 0x3f3bbbbc

    cmpl-float v1, p2, v1

    if-lez v1, :cond_9

    .line 502
    const/16 v0, 0x16

    goto :goto_0

    .line 503
    :cond_9
    const v1, 0x3f333333    # 0.7f

    cmpl-float v1, p2, v1

    if-lez v1, :cond_a

    .line 504
    const/16 v0, 0x15

    goto :goto_0

    .line 505
    :cond_a
    const v1, 0x3f2aaaab

    cmpl-float v1, p2, v1

    if-lez v1, :cond_b

    .line 506
    const/16 v0, 0x14

    goto :goto_0

    .line 507
    :cond_b
    const v1, 0x3f222222

    cmpl-float v1, p2, v1

    if-lez v1, :cond_c

    .line 508
    const/16 v0, 0x13

    goto :goto_0

    .line 509
    :cond_c
    const v1, 0x3f19999a    # 0.6f

    cmpl-float v1, p2, v1

    if-lez v1, :cond_d

    .line 510
    const/16 v0, 0x12

    goto/16 :goto_0

    .line 511
    :cond_d
    const v1, 0x3f111111

    cmpl-float v1, p2, v1

    if-lez v1, :cond_e

    .line 512
    const/16 v0, 0x11

    goto/16 :goto_0

    .line 513
    :cond_e
    const v1, 0x3f088889

    cmpl-float v1, p2, v1

    if-lez v1, :cond_f

    .line 514
    const/16 v0, 0x10

    goto/16 :goto_0

    .line 515
    :cond_f
    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v1, p2, v1

    if-lez v1, :cond_10

    .line 516
    const/16 v0, 0xf

    goto/16 :goto_0

    .line 517
    :cond_10
    const v1, 0x3eeeeeef

    cmpl-float v1, p2, v1

    if-lez v1, :cond_11

    .line 518
    const/16 v0, 0xe

    goto/16 :goto_0

    .line 519
    :cond_11
    const v1, 0x3eddddde

    cmpl-float v1, p2, v1

    if-lez v1, :cond_12

    .line 520
    const/16 v0, 0xd

    goto/16 :goto_0

    .line 521
    :cond_12
    const v1, 0x3ecccccd    # 0.4f

    cmpl-float v1, p2, v1

    if-lez v1, :cond_13

    .line 522
    const/16 v0, 0xc

    goto/16 :goto_0

    .line 523
    :cond_13
    const v1, 0x3ebbbbbc

    cmpl-float v1, p2, v1

    if-lez v1, :cond_14

    .line 524
    const/16 v0, 0xb

    goto/16 :goto_0

    .line 525
    :cond_14
    const v1, 0x3eaaaaab

    cmpl-float v1, p2, v1

    if-lez v1, :cond_15

    .line 526
    const/16 v0, 0xa

    goto/16 :goto_0

    .line 527
    :cond_15
    const v1, 0x3e99999a    # 0.3f

    cmpl-float v1, p2, v1

    if-lez v1, :cond_16

    .line 528
    const/16 v0, 0x9

    goto/16 :goto_0

    .line 529
    :cond_16
    const v1, 0x3e888889

    cmpl-float v1, p2, v1

    if-lez v1, :cond_17

    .line 530
    const/16 v0, 0x8

    goto/16 :goto_0

    .line 531
    :cond_17
    const v1, 0x3e6eeeef

    cmpl-float v1, p2, v1

    if-lez v1, :cond_18

    .line 532
    const/4 v0, 0x7

    goto/16 :goto_0

    .line 533
    :cond_18
    const v1, 0x3e4ccccd    # 0.2f

    cmpl-float v1, p2, v1

    if-lez v1, :cond_19

    .line 534
    const/4 v0, 0x6

    goto/16 :goto_0

    .line 535
    :cond_19
    const v1, 0x3e2aaaab

    cmpl-float v1, p2, v1

    if-lez v1, :cond_1a

    .line 536
    const/4 v0, 0x5

    goto/16 :goto_0

    .line 537
    :cond_1a
    const v1, 0x3e088889

    cmpl-float v1, p2, v1

    if-lez v1, :cond_1b

    .line 538
    const/4 v0, 0x4

    goto/16 :goto_0

    .line 539
    :cond_1b
    const v1, 0x3dcccccd    # 0.1f

    cmpl-float v1, p2, v1

    if-lez v1, :cond_1c

    .line 540
    const/4 v0, 0x3

    goto/16 :goto_0

    .line 541
    :cond_1c
    const v1, 0x3d888889

    cmpl-float v1, p2, v1

    if-lez v1, :cond_1d

    .line 542
    const/4 v0, 0x2

    goto/16 :goto_0

    .line 543
    :cond_1d
    const v1, 0x3d088889

    cmpl-float v1, p2, v1

    if-lez v1, :cond_0

    .line 544
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 547
    :cond_1e
    iget v1, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mCloseDrawerContentDescRes:I

    goto/16 :goto_1
.end method

.method private static assumeMaterial(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/16 v1, 0x15

    .line 247
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-lt v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method getThemeUpIndicator()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 606
    iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mActivityImpl:Landroid/support/v4/app/ActionBarDrawerToggle$Delegate;

    if-eqz v0, :cond_0

    .line 607
    iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mActivityImpl:Landroid/support/v4/app/ActionBarDrawerToggle$Delegate;

    invoke-interface {v0}, Landroid/support/v4/app/ActionBarDrawerToggle$Delegate;->getThemeUpIndicator()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 609
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/support/v4/app/ActionBarDrawerToggle;->IMPL:Landroid/support/v4/app/ActionBarDrawerToggle$ActionBarDrawerToggleImpl;

    iget-object v1, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mActivity:Landroid/app/Activity;

    invoke-interface {v0, v1}, Landroid/support/v4/app/ActionBarDrawerToggle$ActionBarDrawerToggleImpl;->getThemeUpIndicator(Landroid/app/Activity;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public isDrawerIndicatorEnabled()Z
    .locals 1

    .prologue
    .line 415
    iget-boolean v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 427
    iget-boolean v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mHasCustomUpIndicator:Z

    if-nez v0, :cond_0

    .line 428
    invoke-virtual {p0}, Landroid/support/v4/app/ActionBarDrawerToggle;->getThemeUpIndicator()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mHomeAsUpIndicator:Landroid/graphics/drawable/Drawable;

    .line 430
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mActivity:Landroid/app/Activity;

    iget v1, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mDrawerImageResource:I

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mDrawerImage:Landroid/graphics/drawable/Drawable;

    .line 431
    invoke-virtual {p0}, Landroid/support/v4/app/ActionBarDrawerToggle;->syncState()V

    .line 432
    return-void
.end method

.method public onDrawerClosed(Landroid/view/View;)V
    .locals 4
    .param p1, "drawerView"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 582
    iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mSlider:Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->setPosition(F)V

    .line 583
    iget-boolean v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    if-eqz v0, :cond_0

    .line 584
    iget v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mOpenDrawerContentDescRes:I

    invoke-virtual {p0, v0}, Landroid/support/v4/app/ActionBarDrawerToggle;->setActionBarDescription(I)V

    .line 586
    iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mDrawerImageList:[[I

    if-eqz v0, :cond_0

    .line 587
    iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mDrawerImageList:[[I

    aget-object v1, v1, v3

    const/16 v2, 0x1e

    aget v1, v1, v2

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mOpenDrawerContentDescRes:I

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/ActionBarDrawerToggle;->setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V

    .line 591
    :cond_0
    iput v3, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mDrawerState:I

    .line 592
    return-void
.end method

.method public onDrawerOpened(Landroid/view/View;)V
    .locals 4
    .param p1, "drawerView"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    .line 561
    iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mSlider:Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->setPosition(F)V

    .line 562
    iget-boolean v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    if-eqz v0, :cond_0

    .line 563
    iget v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mCloseDrawerContentDescRes:I

    invoke-virtual {p0, v0}, Landroid/support/v4/app/ActionBarDrawerToggle;->setActionBarDescription(I)V

    .line 565
    iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mDrawerImageList:[[I

    if-eqz v0, :cond_0

    .line 566
    iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mDrawerImageList:[[I

    aget-object v1, v1, v3

    const/16 v2, 0x1e

    aget v1, v1, v2

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mCloseDrawerContentDescRes:I

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/ActionBarDrawerToggle;->setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V

    .line 570
    :cond_0
    iput v3, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mDrawerState:I

    .line 571
    return-void
.end method

.method public onDrawerSlide(Landroid/view/View;F)V
    .locals 4
    .param p1, "drawerView"    # Landroid/view/View;
    .param p2, "slideOffset"    # F

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v2, 0x3f000000    # 0.5f

    .line 465
    iget-object v1, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mSlider:Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;

    invoke-virtual {v1}, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->getPosition()F

    move-result v0

    .line 466
    .local v0, "glyphOffset":F
    cmpl-float v1, p2, v2

    if-lez v1, :cond_1

    .line 467
    const/4 v1, 0x0

    sub-float v2, p2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    mul-float/2addr v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 472
    :goto_0
    iget-boolean v1, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mDrawerImageList:[[I

    if-eqz v1, :cond_0

    .line 473
    iget v1, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mDrawerState:I

    if-nez v1, :cond_2

    .line 474
    const/4 v1, 0x1

    invoke-direct {p0, v1, p2}, Landroid/support/v4/app/ActionBarDrawerToggle;->animateToNavibrationButton(IF)V

    .line 481
    :cond_0
    :goto_1
    iget-object v1, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mSlider:Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->setPosition(F)V

    .line 482
    return-void

    .line 469
    :cond_1
    mul-float v1, p2, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_0

    .line 477
    :cond_2
    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p2

    invoke-direct {p0, v1, v2}, Landroid/support/v4/app/ActionBarDrawerToggle;->animateToNavibrationButton(IF)V

    goto :goto_1
.end method

.method public onDrawerStateChanged(I)V
    .locals 0
    .param p1, "newState"    # I

    .prologue
    .line 603
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const v2, 0x800003

    .line 444
    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    if-eqz v0, :cond_1

    .line 445
    iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/DrawerLayout;->isDrawerVisible(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 446
    iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(I)V

    .line 450
    :goto_0
    const/4 v0, 0x1

    .line 452
    :goto_1
    return v0

    .line 448
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/DrawerLayout;->openDrawer(I)V

    goto :goto_0

    .line 452
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method setActionBarDescription(I)V
    .locals 3
    .param p1, "contentDescRes"    # I

    .prologue
    .line 622
    iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mActivityImpl:Landroid/support/v4/app/ActionBarDrawerToggle$Delegate;

    if-eqz v0, :cond_0

    .line 623
    iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mActivityImpl:Landroid/support/v4/app/ActionBarDrawerToggle$Delegate;

    invoke-interface {v0, p1}, Landroid/support/v4/app/ActionBarDrawerToggle$Delegate;->setActionBarDescription(I)V

    .line 628
    :goto_0
    return-void

    .line 626
    :cond_0
    sget-object v0, Landroid/support/v4/app/ActionBarDrawerToggle;->IMPL:Landroid/support/v4/app/ActionBarDrawerToggle$ActionBarDrawerToggleImpl;

    iget-object v1, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mSetIndicatorInfo:Ljava/lang/Object;

    iget-object v2, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mActivity:Landroid/app/Activity;

    invoke-interface {v0, v1, v2, p1}, Landroid/support/v4/app/ActionBarDrawerToggle$ActionBarDrawerToggleImpl;->setActionBarDescription(Ljava/lang/Object;Landroid/app/Activity;I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mSetIndicatorInfo:Ljava/lang/Object;

    goto :goto_0
.end method

.method setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V
    .locals 3
    .param p1, "upDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "contentDescRes"    # I

    .prologue
    .line 613
    iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mActivityImpl:Landroid/support/v4/app/ActionBarDrawerToggle$Delegate;

    if-eqz v0, :cond_0

    .line 614
    iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mActivityImpl:Landroid/support/v4/app/ActionBarDrawerToggle$Delegate;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/app/ActionBarDrawerToggle$Delegate;->setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V

    .line 619
    :goto_0
    return-void

    .line 617
    :cond_0
    sget-object v0, Landroid/support/v4/app/ActionBarDrawerToggle;->IMPL:Landroid/support/v4/app/ActionBarDrawerToggle$ActionBarDrawerToggleImpl;

    iget-object v1, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mSetIndicatorInfo:Ljava/lang/Object;

    iget-object v2, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mActivity:Landroid/app/Activity;

    invoke-interface {v0, v1, v2, p1, p2}, Landroid/support/v4/app/ActionBarDrawerToggle$ActionBarDrawerToggleImpl;->setActionBarUpIndicator(Ljava/lang/Object;Landroid/app/Activity;Landroid/graphics/drawable/Drawable;I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mSetIndicatorInfo:Ljava/lang/Object;

    goto :goto_0
.end method

.method public setDrawerIndicatorEnabled(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 399
    iget-boolean v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    if-eq p1, v0, :cond_0

    .line 400
    if-eqz p1, :cond_2

    .line 401
    iget-object v1, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mSlider:Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;

    iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    const v2, 0x800003

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mCloseDrawerContentDescRes:I

    :goto_0
    invoke-virtual {p0, v1, v0}, Landroid/support/v4/app/ActionBarDrawerToggle;->setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V

    .line 406
    :goto_1
    iput-boolean p1, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    .line 408
    :cond_0
    return-void

    .line 401
    :cond_1
    iget v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mOpenDrawerContentDescRes:I

    goto :goto_0

    .line 404
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mHomeAsUpIndicator:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/ActionBarDrawerToggle;->setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V

    goto :goto_1
.end method

.method public setHomeAsUpIndicator(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 380
    const/4 v0, 0x0

    .line 381
    .local v0, "indicator":Landroid/graphics/drawable/Drawable;
    if-eqz p1, :cond_0

    .line 382
    iget-object v1, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mActivity:Landroid/app/Activity;

    invoke-static {v1, p1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 385
    :cond_0
    invoke-virtual {p0, v0}, Landroid/support/v4/app/ActionBarDrawerToggle;->setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 386
    return-void
.end method

.method public setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "indicator"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v1, 0x0

    .line 355
    if-nez p1, :cond_1

    .line 356
    invoke-virtual {p0}, Landroid/support/v4/app/ActionBarDrawerToggle;->getThemeUpIndicator()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mHomeAsUpIndicator:Landroid/graphics/drawable/Drawable;

    .line 357
    iput-boolean v1, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mHasCustomUpIndicator:Z

    .line 363
    :goto_0
    iget-boolean v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    if-nez v0, :cond_0

    .line 364
    iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mHomeAsUpIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/ActionBarDrawerToggle;->setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V

    .line 366
    :cond_0
    return-void

    .line 359
    :cond_1
    iput-object p1, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mHomeAsUpIndicator:Landroid/graphics/drawable/Drawable;

    .line 360
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mHasCustomUpIndicator:Z

    goto :goto_0
.end method

.method public syncState()V
    .locals 3

    .prologue
    const v2, 0x800003

    .line 331
    iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 332
    iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mSlider:Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->setPosition(F)V

    .line 337
    :goto_0
    iget-boolean v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    if-eqz v0, :cond_0

    .line 338
    iget-object v1, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mSlider:Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;

    iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mCloseDrawerContentDescRes:I

    :goto_1
    invoke-virtual {p0, v1, v0}, Landroid/support/v4/app/ActionBarDrawerToggle;->setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V

    .line 341
    :cond_0
    return-void

    .line 334
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mSlider:Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->setPosition(F)V

    goto :goto_0

    .line 338
    :cond_2
    iget v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mOpenDrawerContentDescRes:I

    goto :goto_1
.end method
