.class public Lcom/android/settings/GridSettings;
.super Landroid/preference/PreferenceActivity;
.source "GridSettings.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Lcom/android/settings/ButtonBarHandler;
.implements Lcom/android/settings/grid/GridSettingsFragment$OnSetListner;
.implements Lcom/android/settings/grid/GridViewAdapter$OnGridItemListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/GridSettings$GridViewQuickHeaderAdapter;,
        Lcom/android/settings/GridSettings$HeaderAdapter;,
        Lcom/android/settings/GridSettings$NoHomeDialogFragment;,
        Lcom/android/settings/GridSettings$SettingsTabListener;,
        Lcom/android/settings/GridSettings$ViewPagerAdapter;,
        Lcom/android/settings/GridSettings$ScaleListner;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field public static isListView:Z

.field private static mContext:Landroid/content/Context;

.field private static mDirectSettingEnabler:Z

.field private static mHeaderContext:Landroid/content/Context;

.field private static mIsFromSearch:Z

.field private static mSearchHeaderID:J

.field private static mSearchSettingValue:I

.field private static sIsEnableDockSettings:Z

.field private static sSalesCode:Ljava/lang/String;

.field private static sShowNoHomeNotice:Z


# instance fields
.field private SETTINGS_FOR_KIOSKCONTAINER:[I

.field private SETTINGS_FOR_KNOX:[I

.field private SETTINGS_FOR_RESTRICTED:[I

.field private headerViewCnt:I

.field private isExpanding:Z

.field private isGridView:Z

.field private isKioskContainer:Z

.field private listManager:Lcom/android/settings/HeaderListManager;

.field mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mAirPlaneObserver:Landroid/database/ContentObserver;

.field private mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryPresent:Z

.field private mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

.field private mDevelopmentPreferences:Landroid/content/SharedPreferences;

.field private mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private mDualFoldertype:Z

.field private mFifthPage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;"
        }
    .end annotation
.end field

.field private mFirstHeader:Landroid/preference/PreferenceActivity$Header;

.field private mFirstPage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;"
        }
    .end annotation
.end field

.field private mFourthPage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;"
        }
    .end annotation
.end field

.field private mFragmentClass:Ljava/lang/String;

.field mGridSettingsFragment:Lcom/android/settings/grid/GridSettingsFragment;

.field private mGridcontainer:Lcom/android/settings/grid/GridContainer;

.field protected mHeaderIndexMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mInLocalHeaderSwitch:Z

.field private mKnoxCustomSettingsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mLastHeader:Landroid/preference/PreferenceActivity$Header;

.field private mOpenSearchHierarchy:Z

.field private mPagerListView:[Landroid/widget/ListView;

.field private mParentHeader:Landroid/preference/PreferenceActivity$Header;

.field mPhoneTabStyle:Z

.field mQuickHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;"
        }
    .end annotation
.end field

.field mQuickSettingsCategoryView:Landroid/view/View;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSGD:Landroid/view/ScaleGestureDetector;

.field private mSearchDepthCounter:I

.field private mSearchFragmentBundle:Landroid/os/Bundle;

.field private mSecondPage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;"
        }
    .end annotation
.end field

.field private mSecondSearchFragmentBundle:Landroid/os/Bundle;

.field private mSixthPage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;"
        }
    .end annotation
.end field

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field mTabDev:Z

.field private mTetheredData:I

.field private mThirdPage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;"
        }
    .end annotation
.end field

.field private mTopLevelHeaderId:I

.field private pager:Landroid/support/v4/view/ViewPager;

.field private prevLength:I

.field private prevScreen:I

.field private tetherTitleRes:I

.field private viewTypeDialog:Landroid/app/Dialog;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 206
    const-class v0, Lcom/android/settings/GridSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/GridSettings;->LOG_TAG:Ljava/lang/String;

    .line 232
    sput-boolean v2, Lcom/android/settings/GridSettings;->sShowNoHomeNotice:Z

    .line 245
    sput-object v1, Lcom/android/settings/GridSettings;->mContext:Landroid/content/Context;

    .line 246
    sput-object v1, Lcom/android/settings/GridSettings;->mHeaderContext:Landroid/content/Context;

    .line 248
    const/4 v0, -0x1

    sput v0, Lcom/android/settings/GridSettings;->mSearchSettingValue:I

    .line 249
    sput-boolean v2, Lcom/android/settings/GridSettings;->mIsFromSearch:Z

    .line 251
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/android/settings/GridSettings;->mSearchHeaderID:J

    .line 255
    sput-boolean v2, Lcom/android/settings/GridSettings;->mDirectSettingEnabler:Z

    .line 257
    sput-boolean v2, Lcom/android/settings/GridSettings;->sIsEnableDockSettings:Z

    .line 516
    sput-boolean v2, Lcom/android/settings/GridSettings;->isListView:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 197
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 250
    iput-boolean v2, p0, Lcom/android/settings/GridSettings;->mOpenSearchHierarchy:Z

    .line 252
    iput-object v1, p0, Lcom/android/settings/GridSettings;->mSearchFragmentBundle:Landroid/os/Bundle;

    .line 253
    iput-object v1, p0, Lcom/android/settings/GridSettings;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    .line 254
    iput v2, p0, Lcom/android/settings/GridSettings;->mSearchDepthCounter:I

    .line 258
    iput-boolean v2, p0, Lcom/android/settings/GridSettings;->mDualFoldertype:Z

    .line 259
    iput-object v1, p0, Lcom/android/settings/GridSettings;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 262
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/GridSettings;->mKnoxCustomSettingsMap:Ljava/util/HashMap;

    .line 265
    iput-object v1, p0, Lcom/android/settings/GridSettings;->mGridcontainer:Lcom/android/settings/grid/GridContainer;

    .line 266
    iput v3, p0, Lcom/android/settings/GridSettings;->headerViewCnt:I

    .line 267
    iput-object v1, p0, Lcom/android/settings/GridSettings;->mQuickSettingsCategoryView:Landroid/view/View;

    .line 270
    const/16 v0, 0x4d

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/settings/GridSettings;->SETTINGS_FOR_RESTRICTED:[I

    .line 354
    const/16 v0, 0x2c

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/settings/GridSettings;->SETTINGS_FOR_KNOX:[I

    .line 402
    const/16 v0, 0x3b

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/android/settings/GridSettings;->SETTINGS_FOR_KIOSKCONTAINER:[I

    .line 483
    iput-boolean v2, p0, Lcom/android/settings/GridSettings;->isKioskContainer:Z

    .line 490
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/GridSettings;->mHeaderIndexMap:Ljava/util/HashMap;

    .line 496
    iput-boolean v4, p0, Lcom/android/settings/GridSettings;->mBatteryPresent:Z

    .line 497
    new-instance v0, Lcom/android/settings/GridSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/GridSettings$1;-><init>(Lcom/android/settings/GridSettings;)V

    iput-object v0, p0, Lcom/android/settings/GridSettings;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 514
    iput-boolean v4, p0, Lcom/android/settings/GridSettings;->isGridView:Z

    .line 517
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/GridSettings;->mQuickHeaders:Ljava/util/List;

    .line 520
    iput v3, p0, Lcom/android/settings/GridSettings;->prevScreen:I

    .line 521
    iput v2, p0, Lcom/android/settings/GridSettings;->prevLength:I

    .line 525
    iput v2, p0, Lcom/android/settings/GridSettings;->mTetheredData:I

    .line 528
    new-instance v0, Lcom/android/settings/GridSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/GridSettings$2;-><init>(Lcom/android/settings/GridSettings;)V

    iput-object v0, p0, Lcom/android/settings/GridSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 541
    new-instance v0, Lcom/android/settings/GridSettings$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/GridSettings$3;-><init>(Lcom/android/settings/GridSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/GridSettings;->mAirPlaneObserver:Landroid/database/ContentObserver;

    .line 552
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/GridSettings;->mFirstPage:Ljava/util/List;

    .line 553
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/GridSettings;->mSecondPage:Ljava/util/List;

    .line 554
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/GridSettings;->mThirdPage:Ljava/util/List;

    .line 555
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/GridSettings;->mFourthPage:Ljava/util/List;

    .line 556
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/GridSettings;->mFifthPage:Ljava/util/List;

    .line 557
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/GridSettings;->mSixthPage:Ljava/util/List;

    .line 559
    const/4 v0, 0x6

    new-array v0, v0, [Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/settings/GridSettings;->mPagerListView:[Landroid/widget/ListView;

    .line 602
    iput-boolean v2, p0, Lcom/android/settings/GridSettings;->isExpanding:Z

    .line 3809
    return-void

    .line 270
    nop

    :array_0
    .array-data 4
        0x7f1006a4
        0x7f1006a6
        0x7f1006a5
        0x7f1006a7
        0x7f1006ad
        0x7f1006a8
        0x7f1006ae
        0x7f1006b6
        0x7f1006f0
        0x7f1006f2
        0x7f1006f1
        0x7f1006f5
        0x7f1006c3
        0x7f1006d8
        0x7f1006c4
        0x7f100717
        0x7f1006c6
        0x7f100696
        0x7f100697
        0x7f1006c7
        0x7f1006cb
        0x7f1006af
        0x7f1006b0
        0x7f100708
        0x7f100709
        0x7f1006b5
        0x7f1006cc
        0x7f1006cd
        0x7f1006c8
        0x7f1006fe
        0x7f10068d
        0x7f10068e
        0x7f1006ce
        0x7f1006cf
        0x7f1006d2
        0x7f1006d0
        0x7f1006bb
        0x7f1006c9
        0x7f1006aa
        0x7f1006ba
        0x7f1006bd
        0x7f1006fa
        0x7f1006dd
        0x7f1006de
        0x7f1006df
        0x7f100694
        0x7f1006b8
        0x7f1006d4
        0x7f1006e3
        0x7f1006d5
        0x7f1006e6
        0x7f100695
        0x7f100714
        0x7f10070d
        0x7f100719
        0x7f10071b
        0x7f1006eb
        0x7f10071c
        0x7f100705
        0x7f100693
        0x7f10070b
        0x7f10069c
        0x7f10069d
        0x7f10069e
        0x7f10069f
        0x7f10069a
        0x7f10069b
        0x7f1006a1
        0x7f1006e4
        0x7f1006a0
        0x7f1006a2
        0x7f100706
        0x7f1006a3
        0x7f1006ee
        0x7f10071d
        0x7f100698
        0x7f10068b
    .end array-data

    .line 354
    :array_1
    .array-data 4
        0x7f1006a4
        0x7f1006a6
        0x7f1006b6
        0x7f1006f0
        0x7f1006f2
        0x7f1006f1
        0x7f1006f5
        0x7f1006fe
        0x7f1006c3
        0x7f1006d8
        0x7f1006c4
        0x7f10071a
        0x7f1006c6
        0x7f100696
        0x7f100697
        0x7f1006c7
        0x7f1006cb
        0x7f1006af
        0x7f1006cc
        0x7f1006cd
        0x7f10068d
        0x7f10068e
        0x7f1006ce
        0x7f1006cf
        0x7f1006d0
        0x7f1006aa
        0x7f1006df
        0x7f100695
        0x7f10070d
        0x7f100719
        0x7f10071b
        0x7f1006eb
        0x7f10071c
        0x7f1006ec
        0x7f100705
        0x7f100693
        0x7f10071e
        0x7f1006a3
        0x7f1006ee
        0x7f100720
        0x7f100725
        0x7f10071d
        0x7f100723
        0x7f100724
    .end array-data

    .line 402
    :array_2
    .array-data 4
        0x7f1006a4
        0x7f1006a6
        0x7f1006b6
        0x7f1006f0
        0x7f1006f2
        0x7f1006f5
        0x7f1006fe
        0x7f1006c3
        0x7f1006d8
        0x7f1006c4
        0x7f10071a
        0x7f1006c6
        0x7f1006c7
        0x7f1006cb
        0x7f1006af
        0x7f1006cc
        0x7f10068d
        0x7f10068e
        0x7f1006ce
        0x7f1006cf
        0x7f1006d0
        0x7f1006aa
        0x7f1006df
        0x7f100695
        0x7f10070d
        0x7f100719
        0x7f10071b
        0x7f1006eb
        0x7f10071c
        0x7f1006ec
        0x7f100705
        0x7f10071e
        0x7f1006ee
        0x7f100720
        0x7f100725
        0x7f10071d
        0x7f100723
        0x7f100724
        0x7f1006a8
        0x7f1006a5
        0x7f1006ad
        0x7f100733
        0x7f1006a7
        0x7f1006d2
        0x7f1006b6
        0x7f1006ea
        0x7f1006b8
        0x7f1006b9
        0x7f100734
        0x7f1006a9
        0x7f100730
        0x7f1006e3
        0x7f1006ee
        0x7f100722
        0x7f100708
        0x7f100709
        0x7f1006dd
        0x7f1006de
        0x7f10070b
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/settings/GridSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/GridSettings;

    .prologue
    .line 197
    iget-boolean v0, p0, Lcom/android/settings/GridSettings;->mBatteryPresent:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings/GridSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/GridSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 197
    iput-boolean p1, p0, Lcom/android/settings/GridSettings;->mBatteryPresent:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/GridSettings;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/GridSettings;

    .prologue
    .line 197
    invoke-direct {p0}, Lcom/android/settings/GridSettings;->makeFavoriteIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/GridSettings;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/GridSettings;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 197
    invoke-direct {p0, p1}, Lcom/android/settings/GridSettings;->switchToParent(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/settings/GridSettings;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/GridSettings;

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/settings/GridSettings;->viewTypeDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings/GridSettings;Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/GridSettings;
    .param p1, "x1"    # Landroid/widget/ListView;
    .param p2, "x2"    # Landroid/view/View;
    .param p3, "x3"    # I
    .param p4, "x4"    # J

    .prologue
    .line 197
    invoke-virtual/range {p0 .. p5}, Lcom/android/settings/GridSettings;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/settings/GridSettings;)Lcom/android/settings/HeaderListManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/GridSettings;

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/settings/GridSettings;->listManager:Lcom/android/settings/HeaderListManager;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/settings/GridSettings;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/GridSettings;

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/settings/GridSettings;->mFirstPage:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/settings/GridSettings;Ljava/util/List;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/GridSettings;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Z

    .prologue
    .line 197
    invoke-direct {p0, p1, p2}, Lcom/android/settings/GridSettings;->updateHeaderList(Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/settings/GridSettings;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/GridSettings;

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/settings/GridSettings;->mSecondPage:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/settings/GridSettings;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/GridSettings;

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/settings/GridSettings;->mThirdPage:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/settings/GridSettings;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/GridSettings;

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/settings/GridSettings;->mFourthPage:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/settings/GridSettings;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/GridSettings;

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/settings/GridSettings;->mFifthPage:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200()Landroid/content/Context;
    .locals 1

    .prologue
    .line 197
    sget-object v0, Lcom/android/settings/GridSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/settings/GridSettings;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/GridSettings;

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/settings/GridSettings;->mSixthPage:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/settings/GridSettings;)[Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/GridSettings;

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/settings/GridSettings;->mPagerListView:[Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/settings/GridSettings;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/GridSettings;

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/settings/GridSettings;->pager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/settings/GridSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/GridSettings;

    .prologue
    .line 197
    iget-boolean v0, p0, Lcom/android/settings/GridSettings;->mOpenSearchHierarchy:Z

    return v0
.end method

.method static synthetic access$2400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    sget-object v0, Lcom/android/settings/GridSettings;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2500()Landroid/content/Context;
    .locals 1

    .prologue
    .line 197
    sget-object v0, Lcom/android/settings/GridSettings;->mHeaderContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2502(Landroid/content/Context;)Landroid/content/Context;
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 197
    sput-object p0, Lcom/android/settings/GridSettings;->mHeaderContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$302(Lcom/android/settings/GridSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/GridSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 197
    iput-boolean p1, p0, Lcom/android/settings/GridSettings;->isExpanding:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/settings/GridSettings;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/GridSettings;

    .prologue
    .line 197
    iget v0, p0, Lcom/android/settings/GridSettings;->headerViewCnt:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/settings/GridSettings;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/GridSettings;
    .param p1, "x1"    # I

    .prologue
    .line 197
    iput p1, p0, Lcom/android/settings/GridSettings;->headerViewCnt:I

    return p1
.end method

.method static synthetic access$702(Lcom/android/settings/GridSettings;Landroid/preference/PreferenceActivity$Header;)Landroid/preference/PreferenceActivity$Header;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/GridSettings;
    .param p1, "x1"    # Landroid/preference/PreferenceActivity$Header;

    .prologue
    .line 197
    iput-object p1, p0, Lcom/android/settings/GridSettings;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    return-object p1
.end method

.method static synthetic access$802(Lcom/android/settings/GridSettings;Landroid/preference/PreferenceActivity$Header;)Landroid/preference/PreferenceActivity$Header;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/GridSettings;
    .param p1, "x1"    # Landroid/preference/PreferenceActivity$Header;

    .prologue
    .line 197
    iput-object p1, p0, Lcom/android/settings/GridSettings;->mLastHeader:Landroid/preference/PreferenceActivity$Header;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/settings/GridSettings;)Landroid/preference/PreferenceActivity$Header;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/GridSettings;

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/settings/GridSettings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    return-object v0
.end method

.method private addQuickSettingsView()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1499
    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 1501
    .local v1, "lv":Landroid/widget/ListView;
    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 1523
    :cond_0
    :goto_0
    return-void

    .line 1504
    :cond_1
    iget-object v3, p0, Lcom/android/settings/GridSettings;->mQuickHeaders:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1507
    sget-object v4, Lcom/android/settings/GridSettings;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/GridSettings;->mQuickHeaders:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceActivity$Header;

    invoke-static {v4, v3}, Lcom/android/settings/Utils;->getCategoryView(Landroid/content/Context;Landroid/preference/PreferenceActivity$Header;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/GridSettings;->mQuickSettingsCategoryView:Landroid/view/View;

    .line 1509
    iget-object v3, p0, Lcom/android/settings/GridSettings;->mQuickSettingsCategoryView:Landroid/view/View;

    const v4, 0x7f1001ae

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1510
    .local v0, "expandArrow":Landroid/widget/ImageView;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1511
    iget-object v3, p0, Lcom/android/settings/GridSettings;->mQuickSettingsCategoryView:Landroid/view/View;

    const v4, 0x7f1001ad

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1512
    .local v2, "title":Landroid/widget/TextView;
    const v3, 0x7f0a003d

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 1513
    iget-object v3, p0, Lcom/android/settings/GridSettings;->mQuickSettingsCategoryView:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 1514
    iget-object v3, p0, Lcom/android/settings/GridSettings;->mQuickSettingsCategoryView:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 1515
    iget-object v3, p0, Lcom/android/settings/GridSettings;->mQuickSettingsCategoryView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 1517
    new-instance v3, Lcom/android/settings/grid/GridContainer;

    sget-object v4, Lcom/android/settings/GridSettings;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/settings/grid/GridContainer;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/GridSettings;->mGridcontainer:Lcom/android/settings/grid/GridContainer;

    .line 1518
    iget-object v3, p0, Lcom/android/settings/GridSettings;->mGridcontainer:Lcom/android/settings/grid/GridContainer;

    if-eqz v3, :cond_0

    .line 1519
    iget-object v3, p0, Lcom/android/settings/GridSettings;->mGridcontainer:Lcom/android/settings/grid/GridContainer;

    invoke-virtual {v3, v5}, Lcom/android/settings/grid/GridContainer;->setHoverScrollMode(Z)V

    .line 1520
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 1521
    iget-object v3, p0, Lcom/android/settings/GridSettings;->mGridcontainer:Lcom/android/settings/grid/GridContainer;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public static callSearchMenu()V
    .locals 3

    .prologue
    .line 1164
    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1165
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/android/settings/GridSettings;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/settings/settingssearch/SettingsSearchActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1166
    .local v0, "intent":Landroid/content/Intent;
    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1167
    sget-object v1, Lcom/android/settings/GridSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1169
    :cond_0
    return-void
.end method

.method private getMetaData()V
    .locals 7

    .prologue
    .line 3220
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    const/16 v6, 0x80

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 3222
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_0

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-nez v4, :cond_1

    .line 3250
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    :cond_0
    :goto_0
    return-void

    .line 3223
    .restart local v0    # "ai":Landroid/content/pm/ActivityInfo;
    :cond_1
    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "com.android.settings.TOP_LEVEL_HEADER_ID"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/settings/GridSettings;->mTopLevelHeaderId:I

    .line 3224
    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "com.android.settings.FRAGMENT_CLASS"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/GridSettings;->mFragmentClass:Ljava/lang/String;

    .line 3226
    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->onIsMultiPane()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3227
    sget-object v4, Lcom/android/settings/GridSettings;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/android/emergencymode/EmergencyManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v1

    .line 3228
    .local v1, "em":Lcom/sec/android/emergencymode/EmergencyManager;
    invoke-virtual {v1}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3229
    iget v4, p0, Lcom/android/settings/GridSettings;->mTopLevelHeaderId:I

    const v5, 0x7f1006c6

    if-eq v4, v5, :cond_2

    .line 3231
    const v4, 0x7f1006a6

    iput v4, p0, Lcom/android/settings/GridSettings;->mTopLevelHeaderId:I

    .line 3232
    const-string v4, "com.android.settings.wifi.WifiSettings"

    iput-object v4, p0, Lcom/android/settings/GridSettings;->mFragmentClass:Ljava/lang/String;

    .line 3238
    .end local v1    # "em":Lcom/sec/android/emergencymode/EmergencyManager;
    :cond_2
    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "com.android.settings.PARENT_FRAGMENT_TITLE"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 3239
    .local v3, "parentHeaderTitleRes":I
    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "com.android.settings.PARENT_FRAGMENT_CLASS"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3240
    .local v2, "parentFragmentClass":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 3241
    new-instance v4, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v4}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    iput-object v4, p0, Lcom/android/settings/GridSettings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 3242
    iget-object v4, p0, Lcom/android/settings/GridSettings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iput-object v2, v4, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 3243
    if-eqz v3, :cond_0

    .line 3244
    iget-object v4, p0, Lcom/android/settings/GridSettings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3247
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v2    # "parentFragmentClass":Ljava/lang/String;
    .end local v3    # "parentHeaderTitleRes":I
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private getPersonalIntent(Landroid/content/ComponentName;)Landroid/content/Intent;
    .locals 3
    .param p1, "cn"    # Landroid/content/ComponentName;

    .prologue
    .line 3450
    new-instance v0, Landroid/content/Intent;

    const-string v1, "action.sec.knox.shortcut"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3451
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sec.knox.bridge"

    const-string v2, "com.sec.knox.bridge.handlers.NotificationHandler"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3453
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3454
    const-string v1, "actions"

    const-string v2, "settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3455
    const-string v1, "component"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3456
    return-object v0
.end method

.method private getVoiceControlIntent(Landroid/preference/PreferenceActivity$Header;)Z
    .locals 6
    .param p1, "mHeader"    # Landroid/preference/PreferenceActivity$Header;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3308
    iget-object v2, p1, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    .line 3309
    .local v2, "voice_control_intent":Landroid/content/Intent;
    if-eqz v2, :cond_0

    .line 3310
    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 3311
    .local v1, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 3312
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v5, v4, :cond_0

    .line 3316
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    :goto_0
    return v3

    :cond_0
    move v3, v4

    goto :goto_0
.end method

.method private highlightHeader(I)V
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 1729
    if-eqz p1, :cond_0

    .line 1730
    iget-object v1, p0, Lcom/android/settings/GridSettings;->mHeaderIndexMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1731
    .local v0, "index":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 1732
    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 1733
    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->isMultiPane()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1734
    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 1738
    .end local v0    # "index":Ljava/lang/Integer;
    :cond_0
    return-void
.end method

.method private insertAccountsHeaders(Ljava/util/List;I)I
    .locals 0
    .param p2, "headerIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 3177
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    return p2
.end method

.method private isContainerOnlyMode(Landroid/content/Context;)Z
    .locals 4
    .param p1, "mCtx"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 3531
    if-nez p1, :cond_1

    .line 3541
    :cond_0
    :goto_0
    return v1

    .line 3535
    :cond_1
    const-string v2, "isKioskModeEnabled"

    invoke-static {p1, v2}, Landroid/os/PersonaManager;->getKnoxInfoForApp(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 3537
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    const-string v2, "true"

    const-string v3, "isKioskModeEnabled"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3538
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isDocomoSettingsDisabled()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 3511
    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 3513
    .local v1, "packMgr":Landroid/content/pm/PackageManager;
    if-eqz v1, :cond_1

    .line 3514
    :try_start_0
    const-string v3, "com.nttdocomo.android.docomoset"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 3516
    const-string v3, "com.nttdocomo.android.docomoset"

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    const-string v3, "com.nttdocomo.android.docomoset"

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 3518
    :cond_0
    sget-object v3, Lcom/android/settings/GridSettings;->LOG_TAG:Ljava/lang/String;

    const-string v4, "docomoset is Disabled!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3525
    :goto_0
    return v2

    .line 3522
    :catch_0
    move-exception v0

    .line 3523
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v2, Lcom/android/settings/GridSettings;->LOG_TAG:Ljava/lang/String;

    const-string v3, "docomoset is not found"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3525
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isVoiceControlEnabled()Z
    .locals 2

    .prologue
    .line 3319
    new-instance v0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    invoke-direct {v0}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;-><init>()V

    .line 3320
    .local v0, "mBargeInRecognizer":Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->isEnableBargeIn:Z

    if-eqz v1, :cond_0

    .line 3321
    const/4 v1, 0x1

    .line 3323
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private makeFavoriteIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 1843
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/settings/favorite/FavoriteMenuList;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1846
    .local v1, "mAddIntent":Landroid/content/Intent;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1847
    .local v0, "headers":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    const v2, 0x7f070060

    invoke-virtual {p0, v2, v0}, Lcom/android/settings/GridSettings;->loadHeadersFromResource(ILjava/util/List;)V

    .line 1848
    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/android/settings/GridSettings;->updateHeaderList(Ljava/util/List;Z)V

    .line 1850
    const-string v2, "favoriteList"

    check-cast v0, Ljava/util/ArrayList;

    .end local v0    # "headers":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 1852
    return-object v1
.end method

.method private populateKnoxCustomSettingsMap()V
    .locals 3

    .prologue
    .line 3094
    iget-object v0, p0, Lcom/android/settings/GridSettings;->mKnoxCustomSettingsMap:Ljava/util/HashMap;

    const v1, 0x7f1006a6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3095
    iget-object v0, p0, Lcom/android/settings/GridSettings;->mKnoxCustomSettingsMap:Ljava/util/HashMap;

    const v1, 0x7f1006a8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3096
    iget-object v0, p0, Lcom/android/settings/GridSettings;->mKnoxCustomSettingsMap:Ljava/util/HashMap;

    const v1, 0x7f1006aa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3097
    iget-object v0, p0, Lcom/android/settings/GridSettings;->mKnoxCustomSettingsMap:Ljava/util/HashMap;

    const v1, 0x7f1006f1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3098
    iget-object v0, p0, Lcom/android/settings/GridSettings;->mKnoxCustomSettingsMap:Ljava/util/HashMap;

    const v1, 0x7f1006d5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3099
    iget-object v0, p0, Lcom/android/settings/GridSettings;->mKnoxCustomSettingsMap:Ljava/util/HashMap;

    const v1, 0x7f1006cd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x20

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3100
    iget-object v0, p0, Lcom/android/settings/GridSettings;->mKnoxCustomSettingsMap:Ljava/util/HashMap;

    const v1, 0x7f100691

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x40

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3101
    iget-object v0, p0, Lcom/android/settings/GridSettings;->mKnoxCustomSettingsMap:Ljava/util/HashMap;

    const v1, 0x7f1006c8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x80

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3102
    iget-object v0, p0, Lcom/android/settings/GridSettings;->mKnoxCustomSettingsMap:Ljava/util/HashMap;

    const v1, 0x7f1006d1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x100

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3103
    return-void
.end method

.method private startActivityWithCheck(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "mCtx"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 3438
    if-nez p1, :cond_1

    .line 3447
    :cond_0
    :goto_0
    return-void

    .line 3440
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/settings/GridSettings;->isContainerOnlyMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3441
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 3442
    .local v0, "cn":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    .line 3443
    invoke-direct {p0, v0}, Lcom/android/settings/GridSettings;->getPersonalIntent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 3445
    .end local v0    # "cn":Landroid/content/ComponentName;
    :cond_2
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private switchToHeaderLocal(Landroid/preference/PreferenceActivity$Header;)V
    .locals 1
    .param p1, "header"    # Landroid/preference/PreferenceActivity$Header;

    .prologue
    .line 1641
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/GridSettings;->mInLocalHeaderSwitch:Z

    .line 1642
    invoke-virtual {p0, p1}, Lcom/android/settings/GridSettings;->switchToHeader(Landroid/preference/PreferenceActivity$Header;)V

    .line 1643
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/GridSettings;->mInLocalHeaderSwitch:Z

    .line 1644
    return-void
.end method

.method private switchToParent(Ljava/lang/String;)V
    .locals 10
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 1689
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p0, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1691
    .local v0, "cn":Landroid/content/ComponentName;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 1692
    .local v6, "pm":Landroid/content/pm/PackageManager;
    const/16 v7, 0x80

    invoke-virtual {v6, v0, v7}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v5

    .line 1694
    .local v5, "parentInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v5, :cond_0

    iget-object v7, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v7, :cond_0

    .line 1695
    iget-object v7, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v8, "com.android.settings.FRAGMENT_CLASS"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1696
    .local v1, "fragmentClass":Ljava/lang/String;
    invoke-virtual {v5, v6}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1697
    .local v2, "fragmentTitle":Ljava/lang/CharSequence;
    new-instance v4, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v4}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    .line 1698
    .local v4, "parentHeader":Landroid/preference/PreferenceActivity$Header;
    iput-object v1, v4, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 1699
    iput-object v2, v4, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 1700
    iput-object v4, p0, Lcom/android/settings/GridSettings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 1702
    invoke-direct {p0, v4}, Lcom/android/settings/GridSettings;->switchToHeaderLocal(Landroid/preference/PreferenceActivity$Header;)V

    .line 1703
    iget v7, p0, Lcom/android/settings/GridSettings;->mTopLevelHeaderId:I

    invoke-direct {p0, v7}, Lcom/android/settings/GridSettings;->highlightHeader(I)V

    .line 1705
    new-instance v7, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v7}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    iput-object v7, p0, Lcom/android/settings/GridSettings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 1706
    iget-object v7, p0, Lcom/android/settings/GridSettings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v8, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v9, "com.android.settings.PARENT_FRAGMENT_CLASS"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 1708
    iget-object v7, p0, Lcom/android/settings/GridSettings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v8, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v9, "com.android.settings.PARENT_FRAGMENT_TITLE"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1713
    .end local v1    # "fragmentClass":Ljava/lang/String;
    .end local v2    # "fragmentTitle":Ljava/lang/CharSequence;
    .end local v4    # "parentHeader":Landroid/preference/PreferenceActivity$Header;
    .end local v5    # "parentInfo":Landroid/content/pm/ActivityInfo;
    .end local v6    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    return-void

    .line 1710
    :catch_0
    move-exception v3

    .line 1711
    .local v3, "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v7, Lcom/android/settings/GridSettings;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Could not find parent activity : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateHeaderList(Ljava/util/List;Z)V
    .locals 40
    .param p2, "forEditFavorite"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 2346
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/GridSettings;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    move-object/from16 v36, v0

    const-string v37, "show"

    sget-object v38, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v39, "eng"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    invoke-interface/range {v36 .. v38}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v31

    .line 2349
    .local v31, "showDev":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/GridSettings;->listManager:Lcom/android/settings/HeaderListManager;

    move-object/from16 v36, v0

    if-nez v36, :cond_8

    const/16 v27, 0x64

    .line 2350
    .local v27, "pos":I
    :goto_0
    const/4 v12, 0x0

    .line 2352
    .local v12, "i":I
    const-string v36, "user"

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/android/settings/GridSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Landroid/os/UserManager;

    .line 2353
    .local v33, "um":Landroid/os/UserManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/GridSettings;->mHeaderIndexMap:Ljava/util/HashMap;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Ljava/util/HashMap;->clear()V

    .line 2356
    const/16 v23, 0x0

    .line 2357
    .local v23, "knoxCustomSettingsState":I
    invoke-static {}, Landroid/app/enterprise/knoxcustom/KnoxCustomManager;->getInstance()Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    move-result-object v22

    .line 2358
    .local v22, "knoxCustomManager":Landroid/app/enterprise/knoxcustom/KnoxCustomManager;
    if-eqz v22, :cond_0

    .line 2359
    invoke-virtual/range {v22 .. v22}, Landroid/app/enterprise/knoxcustom/KnoxCustomManager;->getSettingsHiddenState()I

    move-result v23

    .line 2363
    :cond_0
    :goto_1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v36

    move/from16 v0, v36

    if-ge v12, v0, :cond_b9

    .line 2364
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/preference/PreferenceActivity$Header;

    .line 2366
    .local v10, "header":Landroid/preference/PreferenceActivity$Header;
    iget-wide v0, v10, Landroid/preference/PreferenceActivity$Header;->id:J

    move-wide/from16 v36, v0

    move-wide/from16 v0, v36

    long-to-int v13, v0

    .line 2368
    .local v13, "id":I
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v36

    const/16 v37, 0x64

    move/from16 v0, v36

    move/from16 v1, v37

    if-lt v0, v1, :cond_9

    const/16 v17, 0x1

    .line 2371
    .local v17, "isKnoxUser":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/GridSettings;->mKnoxCustomSettingsMap:Ljava/util/HashMap;

    move-object/from16 v36, v0

    if-nez v36, :cond_1

    .line 2373
    new-instance v36, Ljava/util/HashMap;

    invoke-direct/range {v36 .. v36}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/GridSettings;->mKnoxCustomSettingsMap:Ljava/util/HashMap;

    .line 2375
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/GridSettings;->mKnoxCustomSettingsMap:Ljava/util/HashMap;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Ljava/util/HashMap;->isEmpty()Z

    move-result v36

    if-eqz v36, :cond_2

    .line 2377
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/GridSettings;->populateKnoxCustomSettingsMap()V

    .line 2381
    :cond_2
    const/16 v28, 0x0

    .line 2382
    .local v28, "removed":Z
    if-eqz v23, :cond_3

    .line 2383
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/GridSettings;->mKnoxCustomSettingsMap:Ljava/util/HashMap;

    move-object/from16 v36, v0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 2384
    .local v7, "element":Ljava/lang/Integer;
    if-eqz v7, :cond_3

    .line 2385
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v34

    .line 2387
    .local v34, "val":I
    and-int v36, v34, v23

    if-eqz v36, :cond_3

    .line 2389
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2390
    const/16 v28, 0x1

    .line 2394
    .end local v7    # "element":Ljava/lang/Integer;
    .end local v34    # "val":I
    :cond_3
    if-nez v28, :cond_0

    .line 2396
    const v36, 0x7f1006c2

    move/from16 v0, v36

    if-eq v13, v0, :cond_4

    const v36, 0x7f1006ca

    move/from16 v0, v36

    if-ne v13, v0, :cond_a

    .line 2398
    :cond_4
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3004
    :cond_5
    :goto_3
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v36

    move/from16 v0, v36

    if-ge v12, v0, :cond_ab

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v36

    move-object/from16 v0, v36

    if-ne v0, v10, :cond_ab

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v36

    if-eqz v36, :cond_ab

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/GridSettings;->SETTINGS_FOR_RESTRICTED:[I

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    invoke-static {v0, v13}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v36

    if-nez v36, :cond_ab

    if-nez v17, :cond_ab

    .line 3007
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3077
    :cond_6
    :goto_4
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v36

    move/from16 v0, v36

    if-ge v12, v0, :cond_0

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v36

    move-object/from16 v0, v36

    if-ne v0, v10, :cond_0

    .line 3079
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/GridSettings;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    move-object/from16 v36, v0

    if-nez v36, :cond_7

    invoke-static {v10}, Lcom/android/settings/GridSettings$HeaderAdapter;->getHeaderType(Landroid/preference/PreferenceActivity$Header;)I

    move-result v36

    if-eqz v36, :cond_7

    .line 3081
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/settings/GridSettings;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    .line 3083
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/GridSettings;->mHeaderIndexMap:Ljava/util/HashMap;

    move-object/from16 v36, v0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    invoke-virtual/range {v36 .. v38}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3084
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    .line 2349
    .end local v10    # "header":Landroid/preference/PreferenceActivity$Header;
    .end local v12    # "i":I
    .end local v13    # "id":I
    .end local v17    # "isKnoxUser":Z
    .end local v22    # "knoxCustomManager":Landroid/app/enterprise/knoxcustom/KnoxCustomManager;
    .end local v23    # "knoxCustomSettingsState":I
    .end local v27    # "pos":I
    .end local v28    # "removed":Z
    .end local v33    # "um":Landroid/os/UserManager;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/GridSettings;->listManager:Lcom/android/settings/HeaderListManager;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Lcom/android/settings/HeaderListManager;->getPosition()I

    move-result v27

    goto/16 :goto_0

    .line 2368
    .restart local v10    # "header":Landroid/preference/PreferenceActivity$Header;
    .restart local v12    # "i":I
    .restart local v13    # "id":I
    .restart local v22    # "knoxCustomManager":Landroid/app/enterprise/knoxcustom/KnoxCustomManager;
    .restart local v23    # "knoxCustomSettingsState":I
    .restart local v27    # "pos":I
    .restart local v33    # "um":Landroid/os/UserManager;
    :cond_9
    const/16 v17, 0x0

    goto/16 :goto_2

    .line 2399
    .restart local v17    # "isKnoxUser":Z
    .restart local v28    # "removed":Z
    :cond_a
    const v36, 0x7f1006a6

    move/from16 v0, v36

    if-ne v13, v0, :cond_b

    .line 2401
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/GridSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v36

    const-string v37, "android.hardware.wifi"

    invoke-virtual/range {v36 .. v37}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v36

    if-nez v36, :cond_5

    .line 2402
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2405
    :cond_b
    const v36, 0x7f1006a5

    move/from16 v0, v36

    if-ne v13, v0, :cond_d

    .line 2406
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v36

    const-string v37, "CscFeature_Common_Sprint_Vowifi"

    invoke-virtual/range {v36 .. v37}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v36

    if-nez v36, :cond_c

    .line 2407
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2410
    :cond_c
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/GridSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v36

    const-string v37, "com.oem.smartwifisupport"

    invoke-virtual/range {v36 .. v37}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v4

    .line 2411
    .local v4, "appState":I
    const/16 v36, 0x2

    move/from16 v0, v36

    if-ne v4, v0, :cond_5

    .line 2412
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    .line 2414
    .end local v4    # "appState":I
    :catch_0
    move-exception v14

    .line 2415
    .local v14, "ie":Ljava/lang/IllegalArgumentException;
    sget-object v36, Lcom/android/settings/GridSettings;->LOG_TAG:Ljava/lang/String;

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "Check to see if target device support VOWIFI: + "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual {v14}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2416
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2420
    .end local v14    # "ie":Ljava/lang/IllegalArgumentException;
    :cond_d
    const v36, 0x7f1006a7

    move/from16 v0, v36

    if-ne v13, v0, :cond_11

    .line 2421
    const-string v36, "SPRINT"

    const-string v37, "ALL"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_e

    .line 2423
    const-string v36, "wifi"

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/android/settings/GridSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Landroid/net/wifi/WifiManager;

    .line 2424
    .local v35, "wm":Landroid/net/wifi/WifiManager;
    new-instance v24, Landroid/os/Message;

    invoke-direct/range {v24 .. v24}, Landroid/os/Message;-><init>()V

    .line 2425
    .local v24, "msg":Landroid/os/Message;
    const/16 v36, 0x15

    move/from16 v0, v36

    move-object/from16 v1, v24

    iput v0, v1, Landroid/os/Message;->what:I

    .line 2426
    move-object/from16 v0, v35

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v36

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/GridSettings;->mTetheredData:I

    .line 2428
    .end local v24    # "msg":Landroid/os/Message;
    .end local v35    # "wm":Landroid/net/wifi/WifiManager;
    :cond_e
    const-string v36, "SEC_FLOATING_FEATURE_SETTINGS_CONFIG_MENU_POSITION_HOTSPOT_AND_TETHERING"

    invoke-static/range {v36 .. v36}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v36

    if-nez v36, :cond_10

    const-string v36, "SPRINT"

    const-string v37, "ALL"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/GridSettings;->mTetheredData:I

    move/from16 v36, v0

    const/16 v37, 0x2

    move/from16 v0, v36

    move/from16 v1, v37

    if-eq v0, v1, :cond_f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/GridSettings;->mTetheredData:I

    move/from16 v36, v0

    const/16 v37, 0x3

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_10

    .line 2432
    :cond_f
    sget-object v36, Lcom/android/settings/GridSettings;->LOG_TAG:Ljava/lang/String;

    const-string v37, "show wifi_sprinthotspot_settings"

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2433
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/GridSettings;->updateHotspotSSID()V

    goto/16 :goto_3

    .line 2435
    :cond_10
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2437
    :cond_11
    const v36, 0x7f1006d7

    move/from16 v0, v36

    if-ne v13, v0, :cond_13

    .line 2438
    const-string v36, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_LED_INDICATOR"

    invoke-static/range {v36 .. v36}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_12

    const/16 v36, 0x0

    invoke-static/range {v36 .. v36}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v36

    if-nez v36, :cond_12

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v36

    if-eqz v36, :cond_5

    .line 2441
    :cond_12
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2442
    :cond_13
    const v36, 0x7f1006e4

    move/from16 v0, v36

    if-ne v13, v0, :cond_14

    .line 2444
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/GridSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v36

    const-string v37, "com.skyfire.browser.toolbar.att"

    const/16 v38, 0x0

    invoke-virtual/range {v36 .. v38}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v26

    .line 2447
    .local v26, "pkgInfo":Landroid/content/pm/PackageInfo;
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_3

    .line 2449
    .end local v26    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :catch_1
    move-exception v6

    .line 2450
    .local v6, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2452
    sget-object v36, Lcom/android/settings/GridSettings;->LOG_TAG:Ljava/lang/String;

    const-string v37, "Browser Bar is not found"

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 2454
    .end local v6    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_14
    const v36, 0x7f1006a9

    move/from16 v0, v36

    if-ne v13, v0, :cond_1a

    .line 2455
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v36

    if-eqz v36, :cond_19

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/GridSettings;->isKioskContainer:Z

    move/from16 v36, v0

    if-nez v36, :cond_19

    const/16 v18, 0x1

    .line 2456
    .local v18, "isSecondaryUser":Z
    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/GridSettings;->tetherTitleRes:I

    move/from16 v36, v0

    move/from16 v0, v36

    iput v0, v10, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    .line 2459
    const-string v36, "connectivity"

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/android/settings/GridSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/ConnectivityManager;

    .line 2461
    .local v5, "cm":Landroid/net/ConnectivityManager;
    const-string v36, "SEC_FLOATING_FEATURE_SETTINGS_CONFIG_MENU_POSITION_HOTSPOT_AND_TETHERING"

    invoke-static/range {v36 .. v36}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_15

    .line 2465
    :cond_15
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v36

    if-nez v36, :cond_16

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v36

    if-eqz v36, :cond_18

    :cond_16
    if-nez v18, :cond_18

    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v36

    if-eqz v36, :cond_18

    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v36

    if-nez v36, :cond_18

    const/16 v36, 0x0

    invoke-static/range {v36 .. v36}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v36

    if-eqz v36, :cond_17

    const-string v36, "ATT"

    const-string v37, "ro.csc.sales_code"

    invoke-static/range {v37 .. v37}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-nez v36, :cond_18

    :cond_17
    const-string v36, "AIO"

    sget-object v37, Lcom/android/settings/GridSettings;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_5

    .line 2467
    :cond_18
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2455
    .end local v5    # "cm":Landroid/net/ConnectivityManager;
    .end local v18    # "isSecondaryUser":Z
    :cond_19
    const/16 v18, 0x0

    goto :goto_5

    .line 2469
    :cond_1a
    const v36, 0x7f1006a8

    move/from16 v0, v36

    if-ne v13, v0, :cond_1b

    .line 2471
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/GridSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v36

    const-string v37, "android.hardware.bluetooth"

    invoke-virtual/range {v36 .. v37}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v36

    if-nez v36, :cond_5

    .line 2472
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2474
    :cond_1b
    const v36, 0x7f1006ae

    move/from16 v0, v36

    if-ne v13, v0, :cond_1e

    .line 2476
    const-string v36, "network_management"

    invoke-static/range {v36 .. v36}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v25

    .line 2478
    .local v25, "netManager":Landroid/os/INetworkManagementService;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v36

    if-eqz v36, :cond_1d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/GridSettings;->isKioskContainer:Z

    move/from16 v36, v0

    if-nez v36, :cond_1d

    const/16 v20, 0x1

    .line 2480
    .local v20, "isSubUser":Z
    :goto_6
    :try_start_2
    invoke-interface/range {v25 .. v25}, Landroid/os/INetworkManagementService;->isBandwidthControlEnabled()Z

    move-result v36

    if-eqz v36, :cond_1c

    if-eqz v20, :cond_5

    .line 2481
    :cond_1c
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_3

    .line 2483
    :catch_2
    move-exception v36

    goto/16 :goto_3

    .line 2478
    .end local v20    # "isSubUser":Z
    :cond_1d
    const/16 v20, 0x0

    goto :goto_6

    .line 2486
    .end local v25    # "netManager":Landroid/os/INetworkManagementService;
    :cond_1e
    const v36, 0x7f1006c7

    move/from16 v0, v36

    if-ne v13, v0, :cond_1f

    .line 2489
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/GridSettings;->mBatteryPresent:Z

    move/from16 v36, v0

    if-nez v36, :cond_5

    .line 2490
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2492
    :cond_1f
    const v36, 0x7f1006d5

    move/from16 v0, v36

    if-ne v13, v0, :cond_20

    .line 2493
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/GridSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v36

    const-string v37, "shopdemo"

    const/16 v38, 0x0

    invoke-static/range {v36 .. v38}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v30

    .line 2494
    .local v30, "shop":I
    const/16 v36, 0x1

    move/from16 v0, v30

    move/from16 v1, v36

    if-ne v0, v1, :cond_5

    .line 2495
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2496
    .end local v30    # "shop":I
    :cond_20
    const v36, 0x7f10068b

    move/from16 v0, v36

    if-ne v13, v0, :cond_21

    .line 2497
    move/from16 v32, v12

    .line 2505
    .local v32, "startIndex":I
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2507
    .end local v32    # "startIndex":I
    :cond_21
    const v36, 0x7f10068d

    move/from16 v0, v36

    if-ne v13, v0, :cond_22

    .line 2508
    add-int/lit8 v11, v12, 0x1

    .line 2509
    .local v11, "headerIndex":I
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v11}, Lcom/android/settings/GridSettings;->insertAccountsHeaders(Ljava/util/List;I)I

    move-result v12

    .line 2510
    goto/16 :goto_3

    .end local v11    # "headerIndex":I
    :cond_22
    const v36, 0x7f100695

    move/from16 v0, v36

    if-ne v13, v0, :cond_23

    .line 2511
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/settings/GridSettings;->updateHomeSettingHeaders(Landroid/preference/PreferenceActivity$Header;)Z

    move-result v36

    if-nez v36, :cond_5

    .line 2512
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2514
    :cond_23
    const v36, 0x7f1006c8

    move/from16 v0, v36

    if-ne v13, v0, :cond_27

    .line 2515
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v36

    if-eqz v36, :cond_24

    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v36

    if-eqz v36, :cond_25

    .line 2518
    :cond_24
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2519
    :cond_25
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGuestMode()Z

    move-result v36

    if-eqz v36, :cond_5

    .line 2520
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v36

    if-eqz v36, :cond_26

    .line 2521
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2523
    :cond_26
    const v36, 0x7f0a1c34

    move/from16 v0, v36

    iput v0, v10, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    goto/16 :goto_3

    .line 2526
    :cond_27
    const v36, 0x7f100690

    move/from16 v0, v36

    if-ne v13, v0, :cond_29

    .line 2527
    invoke-static {}, Lcom/android/settings/Utils;->DisableCloud()Z

    move-result v36

    if-eqz v36, :cond_28

    .line 2528
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2531
    :cond_28
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/GridSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v36

    const-string v37, "com.sec.android.cloudagent"

    const/16 v38, 0x5

    invoke-virtual/range {v36 .. v38}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_3

    .line 2532
    :catch_3
    move-exception v6

    .line 2533
    .restart local v6    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2536
    .end local v6    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_29
    const v36, 0x7f1006b6

    move/from16 v0, v36

    if-ne v13, v0, :cond_2a

    .line 2537
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v36

    if-eqz v36, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/GridSettings;->isKioskContainer:Z

    move/from16 v36, v0

    if-nez v36, :cond_5

    .line 2538
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2540
    :cond_2a
    const v36, 0x7f1006c9

    move/from16 v0, v36

    if-ne v13, v0, :cond_2d

    .line 2541
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/GridSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v36

    const-string v37, "android.hardware.nfc"

    invoke-virtual/range {v36 .. v37}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v36

    if-nez v36, :cond_2b

    .line 2542
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2545
    :cond_2b
    invoke-static/range {p0 .. p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v3

    .line 2546
    .local v3, "adapter":Landroid/nfc/NfcAdapter;
    invoke-virtual {v3}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v36

    if-eqz v36, :cond_2c

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/GridSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v36

    const-string v37, "android.hardware.nfc.hce"

    invoke-virtual/range {v36 .. v37}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v36

    if-nez v36, :cond_5

    .line 2548
    :cond_2c
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2551
    .end local v3    # "adapter":Landroid/nfc/NfcAdapter;
    :cond_2d
    const v36, 0x7f1006e0

    move/from16 v0, v36

    if-ne v13, v0, :cond_2e

    .line 2553
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2561
    :cond_2e
    const v36, 0x7f100700

    move/from16 v0, v36

    if-eq v13, v0, :cond_5

    .line 2567
    const v36, 0x7f1006d1

    move/from16 v0, v36

    if-ne v13, v0, :cond_2f

    .line 2568
    if-nez v31, :cond_5

    .line 2569
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2571
    :cond_2f
    const v36, 0x7f100703

    move/from16 v0, v36

    if-ne v13, v0, :cond_32

    .line 2572
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v36

    const-string v37, "CscFeature_Common_EnableSprintExtension"

    invoke-virtual/range {v36 .. v37}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v36

    if-nez v36, :cond_30

    .line 2573
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2574
    :cond_30
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v36

    const-string v37, "CscFeature_Setting_EnableMultipleSWUpdate"

    invoke-virtual/range {v36 .. v37}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_31

    .line 2576
    sget-object v36, Lcom/android/settings/GridSettings;->LOG_TAG:Ljava/lang/String;

    const-string v37, "Sprint Samsung FOTA devices"

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2577
    const-string v36, "com.android.settings.SoftwareUpdateSettings"

    move-object/from16 v0, v36

    iput-object v0, v10, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    goto/16 :goto_3

    .line 2579
    :cond_31
    sget-object v36, Lcom/android/settings/GridSettings;->LOG_TAG:Ljava/lang/String;

    const-string v37, "Sprint Samsung non-FOTA devices"

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2580
    new-instance v16, Landroid/content/Intent;

    invoke-direct/range {v16 .. v16}, Landroid/content/Intent;-><init>()V

    .line 2581
    .local v16, "intent":Landroid/content/Intent;
    const-string v36, "android.intent.action.OMADM.SPRINTUPDATE"

    move-object/from16 v0, v16

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2582
    const/high16 v36, 0x10200000

    move-object/from16 v0, v16

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2583
    move-object/from16 v0, v16

    iput-object v0, v10, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    goto/16 :goto_3

    .line 2585
    .end local v16    # "intent":Landroid/content/Intent;
    :cond_32
    const v36, 0x7f100704

    move/from16 v0, v36

    if-ne v13, v0, :cond_34

    .line 2586
    const-string v36, "ro.csc.sales_code"

    invoke-static/range {v36 .. v36}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 2588
    .local v29, "salesCode":Ljava/lang/String;
    const-string v36, "VZW"

    move-object/from16 v0, v36

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-nez v36, :cond_33

    .line 2589
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2591
    :cond_33
    sget-object v36, Lcom/android/settings/GridSettings;->LOG_TAG:Ljava/lang/String;

    const-string v37, "Verizon OMADM devices"

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2592
    new-instance v16, Landroid/content/Intent;

    invoke-direct/range {v16 .. v16}, Landroid/content/Intent;-><init>()V

    .line 2593
    .restart local v16    # "intent":Landroid/content/Intent;
    const-string v36, "android.intent.action.OMADM.UPDATE"

    move-object/from16 v0, v16

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2594
    const/high16 v36, 0x10200000

    move-object/from16 v0, v16

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2595
    move-object/from16 v0, v16

    iput-object v0, v10, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    goto/16 :goto_3

    .line 2598
    .end local v16    # "intent":Landroid/content/Intent;
    .end local v29    # "salesCode":Ljava/lang/String;
    :cond_34
    const v36, 0x7f100702

    move/from16 v0, v36

    if-ne v13, v0, :cond_35

    .line 2599
    const/16 v19, 0x1

    .line 2601
    .local v19, "isSprintDsa":Z
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/GridSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v36

    const-string v37, "com.sprint.dsa"

    const/16 v38, 0x0

    invoke-virtual/range {v36 .. v38}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_4

    .line 2607
    :goto_7
    if-nez v19, :cond_5

    .line 2608
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2602
    :catch_4
    move-exception v6

    .line 2603
    .restart local v6    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/16 v19, 0x0

    goto :goto_7

    .line 2610
    .end local v6    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v19    # "isSprintDsa":Z
    :cond_35
    const v36, 0x7f10068e

    move/from16 v0, v36

    if-ne v13, v0, :cond_36

    .line 2611
    const-string v36, "no_modify_accounts"

    move-object/from16 v0, v33

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_5

    if-nez v17, :cond_5

    .line 2612
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2614
    :cond_36
    const v36, 0x7f1006e6

    move/from16 v0, v36

    if-ne v13, v0, :cond_37

    .line 2615
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v36

    if-eqz v36, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/GridSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v36

    const-string v37, "com.sec.feature.floating_side_softkey"

    invoke-virtual/range {v36 .. v37}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v36

    if-nez v36, :cond_5

    .line 2619
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2621
    :cond_37
    const v36, 0x7f100718

    move/from16 v0, v36

    if-ne v13, v0, :cond_39

    .line 2622
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v36

    if-eqz v36, :cond_38

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/GridSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v36

    const-string v37, "com.sec.feature.floating_side_softkey"

    invoke-virtual/range {v36 .. v37}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_5

    .line 2625
    :cond_38
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2627
    :cond_39
    const v36, 0x7f1006be

    move/from16 v0, v36

    if-ne v13, v0, :cond_3b

    .line 2628
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/GridSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v36

    const-string v37, "com.samsung.feature.mirrorlink_fw"

    invoke-virtual/range {v36 .. v37}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v21

    .line 2630
    .local v21, "isSupportMirrorLink":Z
    :try_start_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/GridSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v36

    const-string v37, "com.samsung.android.app.mirrorlink"

    const/16 v38, 0x0

    invoke-virtual/range {v36 .. v38}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2634
    if-nez v21, :cond_5

    .line 2636
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2631
    :catch_5
    move-exception v6

    .line 2632
    .restart local v6    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/16 v21, 0x0

    .line 2634
    if-nez v21, :cond_5

    .line 2636
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2634
    .end local v6    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_0
    move-exception v36

    if-eqz v21, :cond_3a

    .line 2636
    :goto_8
    throw v36

    :cond_3a
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_8

    .line 2639
    .end local v21    # "isSupportMirrorLink":Z
    :cond_3b
    const v36, 0x7f100694

    move/from16 v0, v36

    if-ne v13, v0, :cond_3d

    .line 2640
    const-string v36, "DCM"

    const-string v37, "ro.csc.sales_code"

    invoke-static/range {v37 .. v37}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_3c

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/GridSettings;->isDocomoSettingsDisabled()Z

    move-result v36

    if-eqz v36, :cond_5

    .line 2641
    :cond_3c
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2643
    :cond_3d
    const v36, 0x7f100698

    move/from16 v0, v36

    if-ne v13, v0, :cond_3f

    .line 2644
    sget-object v36, Lcom/android/settings/GridSettings;->mContext:Landroid/content/Context;

    const-string v37, "com.samsung.android.coreapps"

    invoke-static/range {v36 .. v37}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_3e

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/GridSettings;->getBaseContext()Landroid/content/Context;

    move-result-object v36

    const/16 v37, 0x4

    invoke-static/range {v36 .. v37}, Lcom/samsung/android/coreapps/sdk/easysignup/EasySignUpManager;->getSupportedFeatures(Landroid/content/Context;I)I

    move-result v36

    if-gez v36, :cond_5

    .line 2645
    :cond_3e
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2647
    :cond_3f
    const v36, 0x7f1006d4

    move/from16 v0, v36

    if-ne v13, v0, :cond_40

    .line 2648
    const-string v36, "DCM"

    const-string v37, "ro.csc.sales_code"

    invoke-static/range {v37 .. v37}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-nez v36, :cond_5

    .line 2649
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2651
    :cond_40
    const v36, 0x7f100706

    move/from16 v0, v36

    if-ne v13, v0, :cond_41

    .line 2652
    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v36

    if-nez v36, :cond_5

    .line 2653
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2655
    :cond_41
    const v36, 0x7f10069f

    move/from16 v0, v36

    if-ne v13, v0, :cond_43

    .line 2656
    const-string v36, "KDI"

    const-string v37, "ro.csc.sales_code"

    invoke-static/range {v37 .. v37}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-nez v36, :cond_42

    const-string v36, "VZW"

    sget-object v37, Lcom/android/settings/GridSettings;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_5

    .line 2657
    :cond_42
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2659
    :cond_43
    const v36, 0x7f100710

    move/from16 v0, v36

    if-ne v13, v0, :cond_44

    .line 2660
    invoke-static {}, Lcom/android/settings/Utils;->isMultisimModel()Z

    move-result v36

    if-eqz v36, :cond_5

    .line 2661
    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 2663
    :cond_44
    const v36, 0x7f100711

    move/from16 v0, v36

    if-ne v13, v0, :cond_45

    .line 2664
    invoke-static {}, Lcom/android/settings/Utils;->isMultisimModel()Z

    move-result v36

    if-nez v36, :cond_5

    .line 2665
    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 2667
    :cond_45
    const v36, 0x7f1006f8

    move/from16 v0, v36

    if-ne v13, v0, :cond_46

    .line 2670
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2672
    :cond_46
    const v36, 0x7f100715

    move/from16 v0, v36

    if-ne v13, v0, :cond_48

    .line 2673
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v36

    const-string v37, "SEC_FLOATING_FEATURE_COMMON_CONFIG_CHANGEABLE_UI"

    const-string v38, "none"

    invoke-virtual/range {v36 .. v38}, Lcom/samsung/android/feature/FloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    const-string v37, "theme"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v36

    if-eqz v36, :cond_47

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/GridSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v36

    const-string v37, "easy_mode_switch"

    const/16 v38, 0x0

    invoke-static/range {v36 .. v38}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v36

    if-nez v36, :cond_5

    .line 2675
    :cond_47
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2677
    :cond_48
    const v36, 0x7f1006f9

    move/from16 v0, v36

    if-ne v13, v0, :cond_49

    .line 2678
    sget-object v36, Lcom/android/settings/GridSettings;->mContext:Landroid/content/Context;

    invoke-static/range {v36 .. v36}, Lcom/android/settings/Utils;->isSupportFestival(Landroid/content/Context;)Z

    move-result v36

    if-nez v36, :cond_5

    .line 2679
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2681
    :cond_49
    const v36, 0x7f1006df

    move/from16 v0, v36

    if-ne v13, v0, :cond_4a

    .line 2682
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v36

    const-string v37, "CscFeature_Setting_EnableMenuBlockCallMsg"

    invoke-virtual/range {v36 .. v37}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v36

    if-nez v36, :cond_5

    .line 2683
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2685
    :cond_4a
    const v36, 0x7f1006b0

    move/from16 v0, v36

    if-ne v13, v0, :cond_4b

    .line 2686
    const-string v36, "CTC"

    sget-object v37, Lcom/android/settings/GridSettings;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-nez v36, :cond_5

    .line 2687
    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 2689
    :cond_4b
    const v36, 0x7f100708

    move/from16 v0, v36

    if-ne v13, v0, :cond_4c

    .line 2691
    const-string v36, "CDMA"

    invoke-static/range {v36 .. v36}, Lcom/android/settings/Utils;->isDuosModel(Ljava/lang/String;)Z

    move-result v36

    if-nez v36, :cond_5

    .line 2692
    const-string v36, "KKK"

    const-string v37, "KKK CDMAGSM remove dualSlot_ctc_settings"

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2693
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2695
    :cond_4c
    const v36, 0x7f100709

    move/from16 v0, v36

    if-ne v13, v0, :cond_4f

    .line 2697
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v29

    .line 2698
    .restart local v29    # "salesCode":Ljava/lang/String;
    const-string v36, "GSM"

    invoke-static/range {v36 .. v36}, Lcom/android/settings/Utils;->isDuosModel(Ljava/lang/String;)Z

    move-result v36

    if-nez v36, :cond_4d

    .line 2699
    const-string v36, "KKK"

    const-string v37, "KKK GSMGSM remove dualSlot_cmcc_settings"

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2700
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2701
    :cond_4d
    const-string v36, "CHC"

    move-object/from16 v0, v36

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-nez v36, :cond_4e

    const-string v36, "CHU"

    move-object/from16 v0, v36

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-nez v36, :cond_4e

    const-string v36, "CHM"

    move-object/from16 v0, v36

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_5

    .line 2702
    :cond_4e
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2703
    sget-object v36, Lcom/android/settings/GridSettings;->LOG_TAG:Ljava/lang/String;

    const-string v37, "dualSlot_cmcc_settings: China won\'t use this item"

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 2705
    .end local v29    # "salesCode":Ljava/lang/String;
    :cond_4f
    const v36, 0x7f1006dd

    move/from16 v0, v36

    if-ne v13, v0, :cond_53

    .line 2706
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v36

    if-eqz v36, :cond_50

    .line 2707
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2708
    sget-object v36, Lcom/android/settings/GridSettings;->LOG_TAG:Ljava/lang/String;

    const-string v37, "simcard_management: China won\'t use this item"

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 2709
    :cond_50
    invoke-static {}, Lcom/android/settings/Utils;->isMultisimModel()Z

    move-result v36

    if-nez v36, :cond_51

    .line 2710
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2711
    :cond_51
    invoke-static {}, Lcom/android/settings/Utils;->isMultisimModel()Z

    move-result v36

    if-eqz v36, :cond_52

    const-string v36, ""

    invoke-static/range {v36 .. v36}, Lcom/android/settings/Utils;->isDuosModel(Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_52

    .line 2712
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2713
    :cond_52
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v36

    if-eqz v36, :cond_5

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v36

    if-eqz v36, :cond_5

    .line 2714
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2716
    :cond_53
    const v36, 0x7f1006de

    move/from16 v0, v36

    if-ne v13, v0, :cond_58

    .line 2717
    sget-object v36, Lcom/android/settings/GridSettings;->LOG_TAG:Ljava/lang/String;

    const-string v37, "simcard_management_chn:only China model except for CTC use this item"

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2718
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v36

    if-nez v36, :cond_54

    .line 2719
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2720
    :cond_54
    sget-object v36, Lcom/android/settings/GridSettings;->mContext:Landroid/content/Context;

    const-string v37, "com.sec.android.app.simcardmgr"

    invoke-static/range {v36 .. v37}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v36

    if-nez v36, :cond_55

    .line 2721
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2722
    :cond_55
    invoke-static {}, Lcom/android/settings/Utils;->isMultisimModel()Z

    move-result v36

    if-nez v36, :cond_56

    .line 2723
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2724
    :cond_56
    invoke-static {}, Lcom/android/settings/Utils;->isMultisimModel()Z

    move-result v36

    if-eqz v36, :cond_57

    const-string v36, "CDMA"

    invoke-static/range {v36 .. v36}, Lcom/android/settings/Utils;->isDuosModel(Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_57

    .line 2725
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2726
    :cond_57
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v36

    if-eqz v36, :cond_5

    .line 2727
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2729
    :cond_58
    const v36, 0x7f1006b5

    move/from16 v0, v36

    if-ne v13, v0, :cond_59

    .line 2730
    const-string v36, "CTC"

    sget-object v37, Lcom/android/settings/GridSettings;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-nez v36, :cond_5

    .line 2731
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2733
    :cond_59
    const v36, 0x7f100707

    move/from16 v0, v36

    if-ne v13, v0, :cond_5a

    .line 2735
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2737
    :cond_5a
    const v36, 0x7f1006b2

    move/from16 v0, v36

    if-ne v13, v0, :cond_5c

    .line 2739
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticLGTModel()Z

    move-result v36

    if-eqz v36, :cond_5b

    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v36

    if-eqz v36, :cond_5

    .line 2741
    :cond_5b
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2743
    :cond_5c
    const v36, 0x7f1006b3

    move/from16 v0, v36

    if-ne v13, v0, :cond_5e

    .line 2745
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticSKTModel()Z

    move-result v36

    if-eqz v36, :cond_5d

    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v36

    if-eqz v36, :cond_5

    .line 2746
    :cond_5d
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2748
    :cond_5e
    const v36, 0x7f1006b4

    move/from16 v0, v36

    if-ne v13, v0, :cond_60

    .line 2749
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticKTTModel()Z

    move-result v36

    if-eqz v36, :cond_5f

    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v36

    if-eqz v36, :cond_5

    .line 2750
    :cond_5f
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2752
    :cond_60
    const v36, 0x7f10071a

    move/from16 v0, v36

    if-ne v13, v0, :cond_61

    .line 2754
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2756
    :cond_61
    const v36, 0x7f1006f5

    move/from16 v0, v36

    if-ne v13, v0, :cond_62

    .line 2757
    const-string v36, "SEC_FLOATING_FEATURE_SETTINGS_MOTION_CONCEPT_2014"

    invoke-static/range {v36 .. v36}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v36

    if-nez v36, :cond_5

    .line 2758
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2760
    :cond_62
    const v36, 0x7f1006e9

    move/from16 v0, v36

    if-ne v13, v0, :cond_66

    .line 2761
    const-string v36, "SEC_FLOATING_FEATURE_SETTINGS_MOTION_CONCEPT_2014"

    invoke-static/range {v36 .. v36}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_63

    .line 2762
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2763
    :cond_63
    const-string v36, "SEC_FLOATING_FEATURE_SETTINGS_MOTION_CONCEPT_2013"

    invoke-static/range {v36 .. v36}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_64

    const-string v36, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_AIR_MOTION"

    invoke-static/range {v36 .. v36}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v36

    if-nez v36, :cond_65

    const-string v36, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION"

    invoke-static/range {v36 .. v36}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v36

    if-nez v36, :cond_65

    const-string v36, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_SURFACE"

    invoke-static/range {v36 .. v36}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v36

    if-nez v36, :cond_65

    .line 2767
    :cond_64
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2768
    :cond_65
    const-string v36, "SEC_FLOATING_FEATURE_SETTINGS_MOTION_CONCEPT_2013"

    invoke-static/range {v36 .. v36}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_5

    const-string v36, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_AIR_MOTION"

    invoke-static/range {v36 .. v36}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v36

    if-nez v36, :cond_5

    const-string v36, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION"

    invoke-static/range {v36 .. v36}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_5

    const-string v36, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_SURFACE"

    invoke-static/range {v36 .. v36}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v36

    if-nez v36, :cond_5

    .line 2772
    const-string v36, "com.android.settings.motion2013.MotionSettings"

    move-object/from16 v0, v36

    iput-object v0, v10, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    goto/16 :goto_3

    .line 2774
    :cond_66
    const v36, 0x7f1006ea

    move/from16 v0, v36

    if-ne v13, v0, :cond_68

    .line 2779
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2014Supported()Z

    move-result v36

    if-nez v36, :cond_67

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v36

    if-eqz v36, :cond_5

    .line 2780
    :cond_67
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2782
    :cond_68
    const v36, 0x7f1006ed

    move/from16 v0, v36

    if-ne v13, v0, :cond_6a

    .line 2783
    sget-object v36, Lcom/android/settings/GridSettings;->LOG_TAG:Ljava/lang/String;

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "getVoiceControlIntent value = "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/settings/GridSettings;->getVoiceControlIntent(Landroid/preference/PreferenceActivity$Header;)Z

    move-result v38

    invoke-static/range {v38 .. v38}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, " isVoiceControlEnabled value = "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/GridSettings;->isVoiceControlEnabled()Z

    move-result v38

    invoke-static/range {v38 .. v38}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, " hasNewVoiceControlConcept value = "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-static {}, Lcom/android/settings/Utils;->hasNewVoiceControlConcept()Z

    move-result v38

    invoke-static/range {v38 .. v38}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2784
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/settings/GridSettings;->getVoiceControlIntent(Landroid/preference/PreferenceActivity$Header;)Z

    move-result v36

    if-eqz v36, :cond_69

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/GridSettings;->isVoiceControlEnabled()Z

    move-result v36

    if-eqz v36, :cond_69

    invoke-static {}, Lcom/android/settings/Utils;->hasNewVoiceControlConcept()Z

    move-result v36

    if-nez v36, :cond_69

    sget-object v36, Lcom/android/settings/GridSettings;->mContext:Landroid/content/Context;

    invoke-static/range {v36 .. v36}, Lcom/android/settings/Utils;->isRestrictedProfile(Landroid/content/Context;)Z

    move-result v36

    if-nez v36, :cond_69

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v36

    if-eqz v36, :cond_5

    .line 2788
    :cond_69
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2790
    :cond_6a
    const v36, 0x7f1006a1

    move/from16 v0, v36

    if-ne v13, v0, :cond_6c

    .line 2791
    invoke-static {}, Lcom/android/settings/Utils;->isAllNAVendor()Z

    move-result v36

    if-nez v36, :cond_6b

    const-string v36, "XAR"

    sget-object v37, Lcom/android/settings/GridSettings;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-nez v36, :cond_6b

    const-string v36, "XAC"

    sget-object v37, Lcom/android/settings/GridSettings;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-nez v36, :cond_6b

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/GridSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v36

    const-string v37, "easy_mode_switch"

    const/16 v38, 0x0

    invoke-static/range {v36 .. v38}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v36

    if-nez v36, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/GridSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v36

    const-string v37, "easy_mode_splanner"

    const/16 v38, 0x0

    invoke-static/range {v36 .. v38}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v36

    if-nez v36, :cond_5

    .line 2793
    :cond_6b
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2795
    :cond_6c
    const v36, 0x7f1006a0

    move/from16 v0, v36

    if-ne v13, v0, :cond_6f

    .line 2796
    const-string v36, "VZW"

    sget-object v37, Lcom/android/settings/GridSettings;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-nez v36, :cond_6e

    invoke-static {}, Lcom/android/settings/Utils;->isAllNAVendor()Z

    move-result v36

    if-nez v36, :cond_6d

    const-string v36, "XAR"

    sget-object v37, Lcom/android/settings/GridSettings;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-nez v36, :cond_6d

    const-string v36, "XAC"

    sget-object v37, Lcom/android/settings/GridSettings;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_6e

    :cond_6d
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/GridSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v36

    const-string v37, "easy_mode_switch"

    const/16 v38, 0x0

    invoke-static/range {v36 .. v38}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v36

    if-nez v36, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/GridSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v36

    const-string v37, "easy_mode_splanner"

    const/16 v38, 0x0

    invoke-static/range {v36 .. v38}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v36

    if-nez v36, :cond_5

    .line 2798
    :cond_6e
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2800
    :cond_6f
    const v36, 0x7f10070d

    move/from16 v0, v36

    if-ne v13, v0, :cond_70

    .line 2801
    const-string v36, "VZW"

    sget-object v37, Lcom/android/settings/GridSettings;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_5

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v36

    if-eqz v36, :cond_5

    .line 2802
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2804
    :cond_70
    const v36, 0x7f100714

    move/from16 v0, v36

    if-ne v13, v0, :cond_71

    .line 2805
    const-string v36, "ATT"

    sget-object v37, Lcom/android/settings/GridSettings;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-nez v36, :cond_5

    .line 2806
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2808
    :cond_71
    const v36, 0x7f100705

    move/from16 v0, v36

    if-ne v13, v0, :cond_72

    .line 2809
    const-string v36, "VZW"

    sget-object v37, Lcom/android/settings/GridSettings;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_5

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v36

    if-eqz v36, :cond_5

    .line 2810
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2812
    :cond_72
    const v36, 0x7f1006ad

    move/from16 v0, v36

    if-ne v13, v0, :cond_75

    .line 2813
    const-string v36, "VZW"

    sget-object v37, Lcom/android/settings/GridSettings;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-nez v36, :cond_74

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v36

    if-eqz v36, :cond_73

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/GridSettings;->isKioskContainer:Z

    move/from16 v36, v0

    if-eqz v36, :cond_74

    :cond_73
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v36

    const-string v37, "CscFeature_RIL_DisableSmartBonding"

    invoke-virtual/range {v36 .. v37}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v36

    if-nez v36, :cond_74

    invoke-static {}, Lcom/android/settings/Utils;->isTFGDisableSmartBonding()Z

    move-result v36

    if-eqz v36, :cond_5

    .line 2817
    :cond_74
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2820
    :cond_75
    const v36, 0x7f10071c

    move/from16 v0, v36

    if-ne v13, v0, :cond_77

    .line 2821
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v36

    if-eqz v36, :cond_76

    const-string v36, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_FINGER_AIR_VIEW"

    invoke-static/range {v36 .. v36}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_76

    const-string v36, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_S_PEN_HOVERING_N_DETACHMENT"

    invoke-static/range {v36 .. v36}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_5

    .line 2822
    :cond_76
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2824
    :cond_77
    const v36, 0x7f1006eb

    move/from16 v0, v36

    if-ne v13, v0, :cond_79

    .line 2825
    const-string v36, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_FINGER_AIR_VIEW"

    invoke-static/range {v36 .. v36}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_78

    const-string v36, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_S_PEN_HOVERING_N_DETACHMENT"

    invoke-static/range {v36 .. v36}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v36

    if-nez v36, :cond_78

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v36

    if-eqz v36, :cond_5

    .line 2826
    :cond_78
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2828
    :cond_79
    const v36, 0x7f1006ec

    move/from16 v0, v36

    if-ne v13, v0, :cond_7b

    .line 2829
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v36

    if-eqz v36, :cond_7a

    const-string v36, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_FINGER_AIR_VIEW"

    invoke-static/range {v36 .. v36}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_7a

    const-string v36, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_S_PEN_HOVERING_N_DETACHMENT"

    invoke-static/range {v36 .. v36}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v36

    if-nez v36, :cond_5

    .line 2830
    :cond_7a
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2832
    :cond_7b
    const v36, 0x7f10070b

    move/from16 v0, v36

    if-ne v13, v0, :cond_7c

    .line 2833
    const-string v36, "VZW"

    sget-object v37, Lcom/android/settings/GridSettings;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_5

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v36

    if-eqz v36, :cond_5

    .line 2834
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2836
    :cond_7c
    const v36, 0x7f1006b8

    move/from16 v0, v36

    if-ne v13, v0, :cond_80

    .line 2837
    sget-object v36, Lcom/android/settings/GridSettings;->mContext:Landroid/content/Context;

    invoke-static/range {v36 .. v36}, Lcom/android/settings/Utils;->isGuestMode(Landroid/content/Context;)Z

    move-result v36

    if-nez v36, :cond_7e

    const-string v36, "VZW"

    sget-object v37, Lcom/android/settings/GridSettings;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_7d

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v36

    if-nez v36, :cond_7e

    :cond_7d
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/GridSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v36

    const-string v37, "android.hardware.nfc"

    invoke-virtual/range {v36 .. v37}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v36

    if-nez v36, :cond_7f

    .line 2841
    :cond_7e
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2842
    :cond_7f
    const-string v36, "ATT"

    sget-object v37, Lcom/android/settings/GridSettings;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_5

    .line 2843
    const v36, 0x7f020277

    move/from16 v0, v36

    iput v0, v10, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    goto/16 :goto_3

    .line 2845
    :cond_80
    const v36, 0x7f100722

    move/from16 v0, v36

    if-ne v13, v0, :cond_84

    .line 2846
    sget-object v36, Lcom/android/settings/GridSettings;->mContext:Landroid/content/Context;

    invoke-static/range {v36 .. v36}, Lcom/android/settings/Utils;->isGuestMode(Landroid/content/Context;)Z

    move-result v36

    if-nez v36, :cond_82

    const-string v36, "VZW"

    sget-object v37, Lcom/android/settings/GridSettings;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_81

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v36

    if-nez v36, :cond_82

    :cond_81
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/GridSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v36

    const-string v37, "android.hardware.nfc"

    invoke-virtual/range {v36 .. v37}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v36

    if-nez v36, :cond_83

    .line 2849
    :cond_82
    const v36, 0x7f0a0fe9

    move/from16 v0, v36

    iput v0, v10, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    .line 2851
    :cond_83
    invoke-static {}, Lcom/android/settings/Utils;->isGridListUIEnabeld()Z

    move-result v36

    if-eqz v36, :cond_5

    invoke-static {}, Lcom/android/settings/Utils;->isConceptForVZW()Z

    move-result v36

    if-eqz v36, :cond_5

    .line 2852
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2854
    :cond_84
    const v36, 0x7f100726

    move/from16 v0, v36

    if-ne v13, v0, :cond_85

    .line 2855
    invoke-static {}, Lcom/android/settings/Utils;->isGridListUIEnabeld()Z

    move-result v36

    if-eqz v36, :cond_5

    invoke-static {}, Lcom/android/settings/Utils;->isConceptForVZW()Z

    move-result v36

    if-eqz v36, :cond_5

    .line 2856
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2858
    :cond_85
    const v36, 0x7f100725

    move/from16 v0, v36

    if-ne v13, v0, :cond_86

    .line 2859
    invoke-static {}, Lcom/android/settings/Utils;->isGridListUIEnabeld()Z

    move-result v36

    if-eqz v36, :cond_5

    invoke-static {}, Lcom/android/settings/Utils;->isConceptForVZW()Z

    move-result v36

    if-eqz v36, :cond_5

    .line 2860
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2862
    :cond_86
    const v36, 0x7f1006ba

    move/from16 v0, v36

    if-ne v13, v0, :cond_87

    .line 2863
    const-string v36, "VZW"

    sget-object v37, Lcom/android/settings/GridSettings;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_5

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v36

    if-eqz v36, :cond_5

    .line 2864
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2866
    :cond_87
    const v36, 0x7f10070c

    move/from16 v0, v36

    if-ne v13, v0, :cond_88

    .line 2867
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v36

    if-nez v36, :cond_5

    .line 2868
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2870
    :cond_88
    const v36, 0x7f1006bd

    move/from16 v0, v36

    if-ne v13, v0, :cond_89

    .line 2871
    const-string v36, "VZW"

    sget-object v37, Lcom/android/settings/GridSettings;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_5

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v36

    if-eqz v36, :cond_5

    .line 2872
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2874
    :cond_89
    const v36, 0x7f1006f1

    move/from16 v0, v36

    if-ne v13, v0, :cond_8b

    .line 2875
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/GridSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v36

    const-string v37, "com.sec.feature.multiwindow"

    invoke-virtual/range {v36 .. v37}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    .line 2876
    .local v2, "UseMultiWindow":Z
    if-eqz v2, :cond_8a

    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v36

    if-nez v36, :cond_5

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v36

    if-nez v36, :cond_5

    .line 2877
    :cond_8a
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2879
    .end local v2    # "UseMultiWindow":Z
    :cond_8b
    const v36, 0x7f1006a2

    move/from16 v0, v36

    if-ne v13, v0, :cond_8e

    .line 2880
    const-string v9, "com.vlingo.midas.settings.SettingsScreen"

    .line 2881
    .local v9, "fragment":Ljava/lang/String;
    sget-object v36, Lcom/android/settings/GridSettings;->LOG_TAG:Ljava/lang/String;

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "fragment of svoice : "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2882
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/preference/PreferenceActivity$Header;

    move-object/from16 v0, v36

    iget-object v0, v0, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    move-object/from16 v36, v0

    if-eqz v36, :cond_8c

    .line 2883
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/preference/PreferenceActivity$Header;

    move-object/from16 v0, v36

    iget-object v0, v0, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    move-object/from16 v36, v0

    const-string v37, "com.vlingo.midas"

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    invoke-virtual {v0, v1, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2884
    :cond_8c
    const-string v36, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_SVOICE"

    invoke-static/range {v36 .. v36}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_8d

    const-string v36, "VZW"

    sget-object v37, Lcom/android/settings/GridSettings;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_5

    .line 2886
    :cond_8d
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2888
    .end local v9    # "fragment":Ljava/lang/String;
    :cond_8e
    const v36, 0x7f1006e7

    move/from16 v0, v36

    if-ne v13, v0, :cond_90

    .line 2889
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/GridSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v36

    const-string v37, "shopdemo"

    const/16 v38, 0x0

    invoke-static/range {v36 .. v38}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v30

    .line 2890
    .restart local v30    # "shop":I
    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->hasFingerprintFeature(Landroid/content/Context;)Z

    move-result v36

    if-eqz v36, :cond_8f

    const/16 v36, 0x1

    move/from16 v0, v30

    move/from16 v1, v36

    if-ne v0, v1, :cond_5

    .line 2891
    :cond_8f
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2899
    .end local v30    # "shop":I
    :cond_90
    const v36, 0x7f1006aa

    move/from16 v0, v36

    if-ne v13, v0, :cond_91

    .line 2900
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v36

    if-nez v36, :cond_5

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v36

    if-nez v36, :cond_5

    .line 2901
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2902
    :cond_91
    const v36, 0x7f1006cc

    move/from16 v0, v36

    if-ne v13, v0, :cond_92

    .line 2903
    sget-object v36, Lcom/android/settings/GridSettings;->mContext:Landroid/content/Context;

    invoke-static/range {v36 .. v36}, Lcom/android/settings/Utils;->isGuestMode(Landroid/content/Context;)Z

    move-result v36

    if-eqz v36, :cond_5

    .line 2904
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2905
    :cond_92
    const v36, 0x7f1006fa

    move/from16 v0, v36

    if-ne v13, v0, :cond_95

    .line 2906
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v36

    if-eqz v36, :cond_93

    sget-object v36, Lcom/android/settings/GridSettings;->mContext:Landroid/content/Context;

    invoke-static/range {v36 .. v36}, Lcom/android/settings/Utils;->isGuestMode(Landroid/content/Context;)Z

    move-result v36

    if-eqz v36, :cond_94

    .line 2907
    :cond_93
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2908
    :cond_94
    const-string v36, "DCM"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_5

    .line 2909
    const v36, 0x7f0a16d2

    move/from16 v0, v36

    iput v0, v10, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    goto/16 :goto_3

    .line 2911
    :cond_95
    const v36, 0x7f1006d9

    move/from16 v0, v36

    if-ne v13, v0, :cond_97

    .line 2912
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v36

    if-nez v36, :cond_96

    const-string v36, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_EASY_MODE"

    invoke-static/range {v36 .. v36}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_96

    sget-object v36, Lcom/android/settings/GridSettings;->mContext:Landroid/content/Context;

    invoke-static/range {v36 .. v36}, Lcom/android/settings/Utils;->hasDCMhome(Landroid/content/Context;)Z

    move-result v36

    if-nez v36, :cond_96

    const-string v36, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_EASY_MODE_30"

    invoke-static/range {v36 .. v36}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v36

    if-nez v36, :cond_96

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v36

    if-eqz v36, :cond_5

    .line 2917
    :cond_96
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2919
    :cond_97
    const v36, 0x7f1006f7

    move/from16 v0, v36

    if-ne v13, v0, :cond_98

    .line 2920
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/GridSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v36

    const-string v37, "shopdemo"

    const/16 v38, 0x0

    invoke-static/range {v36 .. v38}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v30

    .line 2921
    .restart local v30    # "shop":I
    const/16 v36, 0x1

    move/from16 v0, v30

    move/from16 v1, v36

    if-ne v0, v1, :cond_5

    .line 2922
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2923
    .end local v30    # "shop":I
    :cond_98
    const v36, 0x7f10069a

    move/from16 v0, v36

    if-ne v13, v0, :cond_9a

    .line 2924
    const-string v36, "DCM"

    const-string v37, "ro.csc.sales_code"

    invoke-static/range {v37 .. v37}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-nez v36, :cond_99

    const-string v36, "VZW"

    sget-object v37, Lcom/android/settings/GridSettings;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_5

    .line 2925
    :cond_99
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2927
    :cond_9a
    const v36, 0x7f1006da

    move/from16 v0, v36

    if-ne v13, v0, :cond_9b

    .line 2929
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2931
    :cond_9b
    const v36, 0x7f10069b

    move/from16 v0, v36

    if-ne v13, v0, :cond_9c

    .line 2932
    const-string v36, "DCM"

    const-string v37, "ro.csc.sales_code"

    invoke-static/range {v37 .. v37}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-nez v36, :cond_5

    .line 2933
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2935
    :cond_9c
    const v36, 0x7f100720

    move/from16 v0, v36

    if-ne v13, v0, :cond_9d

    .line 2937
    const-string v36, "com.android.settings.powersavingmode.PowerSavingModeSettings"

    move-object/from16 v0, v36

    iput-object v0, v10, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    goto/16 :goto_3

    .line 2942
    :cond_9d
    const v36, 0x7f1006a3

    move/from16 v0, v36

    if-ne v13, v0, :cond_9e

    .line 2943
    const-string v36, "VZW"

    sget-object v37, Lcom/android/settings/GridSettings;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-nez v36, :cond_5

    .line 2944
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2946
    :cond_9e
    const v36, 0x7f10071e

    move/from16 v0, v36

    if-ne v13, v0, :cond_9f

    .line 2947
    const-string v36, "VZW"

    sget-object v37, Lcom/android/settings/GridSettings;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-nez v36, :cond_5

    .line 2948
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2950
    :cond_9f
    const v36, 0x7f100693

    move/from16 v0, v36

    if-ne v13, v0, :cond_a0

    .line 2951
    const-string v36, "VZW"

    sget-object v37, Lcom/android/settings/GridSettings;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_5

    .line 2952
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2954
    :cond_a0
    const v36, 0x7f100696

    move/from16 v0, v36

    if-ne v13, v0, :cond_a1

    .line 2955
    const-string v36, "VZW"

    sget-object v37, Lcom/android/settings/GridSettings;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_5

    .line 2956
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2958
    :cond_a1
    const v36, 0x7f100697

    move/from16 v0, v36

    if-ne v13, v0, :cond_a2

    .line 2959
    const-string v36, "VZW"

    sget-object v37, Lcom/android/settings/GridSettings;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_5

    .line 2960
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2962
    :cond_a2
    const v36, 0x7f1006a0

    move/from16 v0, v36

    if-ne v13, v0, :cond_a3

    .line 2963
    const-string v36, "VZW"

    sget-object v37, Lcom/android/settings/GridSettings;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_5

    .line 2964
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2966
    :cond_a3
    const v36, 0x7f100699

    move/from16 v0, v36

    if-ne v13, v0, :cond_a4

    .line 2967
    const-string v36, "VZW"

    sget-object v37, Lcom/android/settings/GridSettings;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_5

    .line 2968
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2970
    :cond_a4
    const v36, 0x7f10069c

    move/from16 v0, v36

    if-ne v13, v0, :cond_a5

    .line 2971
    const-string v36, "VZW"

    sget-object v37, Lcom/android/settings/GridSettings;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_5

    .line 2972
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2974
    :cond_a5
    const v36, 0x7f10069d

    move/from16 v0, v36

    if-ne v13, v0, :cond_a6

    .line 2975
    const-string v36, "VZW"

    sget-object v37, Lcom/android/settings/GridSettings;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_5

    .line 2976
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2978
    :cond_a6
    const v36, 0x7f10069e

    move/from16 v0, v36

    if-ne v13, v0, :cond_a7

    .line 2979
    const-string v36, "VZW"

    sget-object v37, Lcom/android/settings/GridSettings;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_5

    .line 2980
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2982
    :cond_a7
    const v36, 0x7f1006e3

    move/from16 v0, v36

    if-ne v13, v0, :cond_a8

    .line 2983
    sget-boolean v36, Lcom/android/settings/GridSettings;->sIsEnableDockSettings:Z

    if-nez v36, :cond_5

    .line 2984
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2986
    :cond_a8
    const v36, 0x7f1006fe

    move/from16 v0, v36

    if-ne v13, v0, :cond_a9

    .line 2987
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/GridSettings;->isKioskContainer:Z

    move/from16 v36, v0

    if-eqz v36, :cond_5

    .line 2988
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2990
    :cond_a9
    const v36, 0x7f1006f0

    move/from16 v0, v36

    if-ne v13, v0, :cond_aa

    .line 2991
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/GridSettings;->isKioskContainer:Z

    move/from16 v36, v0

    if-eqz v36, :cond_5

    .line 2992
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2997
    :cond_aa
    const v36, 0x7f100716

    move/from16 v0, v36

    if-ne v13, v0, :cond_5

    .line 2998
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v36

    const-string v37, "CscFeature_Common_EnableAirMessage"

    invoke-virtual/range {v36 .. v37}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v36

    if-nez v36, :cond_5

    .line 2999
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 3008
    :cond_ab
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v36

    move/from16 v0, v36

    if-ge v12, v0, :cond_ac

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v36

    move-object/from16 v0, v36

    if-ne v0, v10, :cond_ac

    if-eqz v17, :cond_ac

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/GridSettings;->isKioskContainer:Z

    move/from16 v36, v0

    if-nez v36, :cond_ac

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/GridSettings;->SETTINGS_FOR_KNOX:[I

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    invoke-static {v0, v13}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v36

    if-nez v36, :cond_ac

    .line 3011
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_4

    .line 3012
    :cond_ac
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v36

    move/from16 v0, v36

    if-ge v12, v0, :cond_ad

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v36

    move-object/from16 v0, v36

    if-ne v0, v10, :cond_ad

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/GridSettings;->isKioskContainer:Z

    move/from16 v36, v0

    if-eqz v36, :cond_ad

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/GridSettings;->SETTINGS_FOR_KIOSKCONTAINER:[I

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    invoke-static {v0, v13}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v36

    if-nez v36, :cond_ad

    .line 3014
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_4

    .line 3015
    :cond_ad
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v36

    move/from16 v0, v36

    if-ge v12, v0, :cond_ae

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v36

    move-object/from16 v0, v36

    if-ne v0, v10, :cond_ae

    iget-object v0, v10, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    move-object/from16 v36, v0

    if-eqz v36, :cond_ae

    iget-object v0, v10, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v36

    if-nez v36, :cond_ae

    .line 3017
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_4

    .line 3018
    :cond_ae
    const v36, 0x7f1006ee

    move/from16 v0, v36

    if-ne v13, v0, :cond_af

    .line 3019
    const-string v36, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_S_PEN_HOVERING_N_DETACHMENT"

    invoke-static/range {v36 .. v36}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v36

    if-nez v36, :cond_6

    .line 3020
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_4

    .line 3024
    :cond_af
    const v36, 0x7f10071d

    move/from16 v0, v36

    if-ne v13, v0, :cond_b0

    .line 3025
    invoke-static {}, Lcom/android/settings/Utils;->isAutoAirViewSupported()Z

    move-result v36

    if-nez v36, :cond_6

    .line 3026
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_4

    .line 3028
    :cond_b0
    const v36, 0x7f100721

    move/from16 v0, v36

    if-ne v13, v0, :cond_b2

    .line 3030
    :try_start_6
    sget-object v36, Lcom/android/settings/GridSettings;->mContext:Landroid/content/Context;

    invoke-virtual/range {v36 .. v36}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v36

    const-string v37, "com.samsung.helphub"

    const/16 v38, 0x0

    invoke-virtual/range {v36 .. v38}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v15

    .line 3031
    .local v15, "info":Landroid/content/pm/PackageInfo;
    iget v0, v15, Landroid/content/pm/PackageInfo;->versionCode:I

    move/from16 v36, v0

    const/16 v37, 0x2

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_6

    .line 3032
    iget-object v0, v10, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    move-object/from16 v36, v0

    if-nez v36, :cond_b1

    .line 3033
    new-instance v36, Landroid/content/Intent;

    invoke-direct/range {v36 .. v36}, Landroid/content/Intent;-><init>()V

    move-object/from16 v0, v36

    iput-object v0, v10, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    .line 3035
    :cond_b1
    iget-object v0, v10, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    move-object/from16 v36, v0

    const-string v37, "com.samsung.helphub"

    const-string v38, "com.samsung.helphub.HelpHubActivity"

    invoke-virtual/range {v36 .. v38}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3036
    iget-object v0, v10, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    move-object/from16 v36, v0

    const v37, 0x10008000

    invoke-virtual/range {v36 .. v37}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
    :try_end_6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_6

    goto/16 :goto_4

    .line 3038
    .end local v15    # "info":Landroid/content/pm/PackageInfo;
    :catch_6
    move-exception v6

    .line 3039
    .restart local v6    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v36, Lcom/android/settings/GridSettings;->LOG_TAG:Ljava/lang/String;

    const-string v37, "NameNotFoundException - Help"

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 3041
    .end local v6    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_b2
    const v36, 0x7f1006f3

    move/from16 v0, v36

    if-ne v13, v0, :cond_b3

    .line 3043
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_4

    .line 3044
    :cond_b3
    const v36, 0x7f1006d6

    move/from16 v0, v36

    if-ne v13, v0, :cond_b5

    .line 3045
    const-string v36, "CTC"

    const-string v37, "ro.csc.sales_code"

    invoke-static/range {v37 .. v37}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_b4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/GridSettings;->mDualFoldertype:Z

    move/from16 v36, v0

    if-nez v36, :cond_6

    .line 3046
    :cond_b4
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_4

    .line 3048
    :cond_b5
    const v36, 0x7f10070a

    move/from16 v0, v36

    if-ne v13, v0, :cond_b7

    .line 3050
    const-string v36, "VZW"

    sget-object v37, Lcom/android/settings/GridSettings;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_b6

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v36

    const-string v37, "CscFeature_IMS_EnableVoLTE"

    invoke-virtual/range {v36 .. v37}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v36

    if-nez v36, :cond_6

    .line 3051
    :cond_b6
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_4

    .line 3053
    :cond_b7
    iget-wide v0, v10, Landroid/preference/PreferenceActivity$Header;->id:J

    move-wide/from16 v36, v0

    const-wide/32 v38, 0x7f1006a4

    cmp-long v36, v36, v38

    if-nez v36, :cond_b8

    .line 3056
    sget-object v36, Lcom/android/settings/GridSettings;->mHeaderContext:Landroid/content/Context;

    invoke-static/range {v36 .. v36}, Lcom/sec/android/emergencymode/EmergencyManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v8

    .line 3057
    .local v8, "em":Lcom/sec/android/emergencymode/EmergencyManager;
    invoke-virtual {v8}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode()Z

    move-result v36

    if-eqz v36, :cond_6

    .line 3058
    invoke-static {}, Lcom/android/settings/Utils;->isGridListUIEnabeld()Z

    move-result v36

    if-eqz v36, :cond_6

    .line 3059
    const v36, 0x7f0a0fee

    move/from16 v0, v36

    iput v0, v10, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    goto/16 :goto_4

    .line 3063
    .end local v8    # "em":Lcom/sec/android/emergencymode/EmergencyManager;
    :cond_b8
    iget-wide v0, v10, Landroid/preference/PreferenceActivity$Header;->id:J

    move-wide/from16 v36, v0

    const-wide/32 v38, 0x7f100743

    cmp-long v36, v36, v38

    if-nez v36, :cond_6

    .line 3066
    sget-object v36, Lcom/android/settings/GridSettings;->mHeaderContext:Landroid/content/Context;

    invoke-static/range {v36 .. v36}, Lcom/sec/android/emergencymode/EmergencyManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v8

    .line 3067
    .restart local v8    # "em":Lcom/sec/android/emergencymode/EmergencyManager;
    invoke-virtual {v8}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode()Z

    move-result v36

    if-eqz v36, :cond_6

    .line 3068
    invoke-static {}, Lcom/android/settings/Utils;->isGridListUIEnabeld()Z

    move-result v36

    if-eqz v36, :cond_6

    .line 3069
    const v36, 0x7f0a0659

    move/from16 v0, v36

    iput v0, v10, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    goto/16 :goto_4

    .line 3090
    .end local v8    # "em":Lcom/sec/android/emergencymode/EmergencyManager;
    .end local v10    # "header":Landroid/preference/PreferenceActivity$Header;
    .end local v13    # "id":I
    .end local v17    # "isKnoxUser":Z
    .end local v28    # "removed":Z
    :cond_b9
    return-void
.end method

.method private updateHomeSettingHeaders(Landroid/preference/PreferenceActivity$Header;)Z
    .locals 7
    .param p1, "header"    # Landroid/preference/PreferenceActivity$Header;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 3182
    const-string v5, "home_prefs"

    invoke-virtual {p0, v5, v4}, Lcom/android/settings/GridSettings;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 3183
    .local v2, "sp":Landroid/content/SharedPreferences;
    const-string v5, "do_show"

    invoke-interface {v2, v5, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3215
    :goto_0
    return v3

    .line 3188
    :cond_0
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3189
    .local v1, "homeApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    .line 3190
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x2

    if-ge v5, v6, :cond_2

    .line 3195
    sget-boolean v5, Lcom/android/settings/GridSettings;->sShowNoHomeNotice:Z

    if-eqz v5, :cond_1

    .line 3196
    const/4 v5, 0x0

    sput-boolean v5, Lcom/android/settings/GridSettings;->sShowNoHomeNotice:Z

    .line 3197
    invoke-static {p0}, Lcom/android/settings/GridSettings$NoHomeDialogFragment;->show(Landroid/app/Activity;)V

    :cond_1
    move v3, v4

    .line 3199
    goto :goto_0

    .line 3204
    :cond_2
    iget-object v4, p1, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    if-nez v4, :cond_3

    .line 3205
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    iput-object v4, p1, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    .line 3207
    :cond_3
    iget-object v4, p1, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    const-string v5, "show"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3214
    .end local v1    # "homeApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    :goto_1
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "do_show"

    invoke-interface {v4, v5, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 3209
    :catch_0
    move-exception v0

    .line 3211
    .local v0, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/android/settings/GridSettings;->LOG_TAG:Ljava/lang/String;

    const-string v5, "Problem looking up home activity!"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private updateQuickSettingsHeaders()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1473
    const v1, 0x7f070060

    iget-object v2, p0, Lcom/android/settings/GridSettings;->mQuickHeaders:Ljava/util/List;

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/GridSettings;->loadHeadersFromResource(ILjava/util/List;)V

    .line 1474
    iget-object v1, p0, Lcom/android/settings/GridSettings;->mQuickHeaders:Ljava/util/List;

    invoke-direct {p0, v1, v4}, Lcom/android/settings/GridSettings;->updateHeaderList(Ljava/util/List;Z)V

    .line 1476
    iget-object v1, p0, Lcom/android/settings/GridSettings;->listManager:Lcom/android/settings/HeaderListManager;

    iget-object v2, p0, Lcom/android/settings/GridSettings;->mQuickHeaders:Ljava/util/List;

    iget-object v3, p0, Lcom/android/settings/GridSettings;->mHeaderIndexMap:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/HeaderListManager;->loadFavoriteList(Ljava/util/List;Ljava/util/HashMap;)V

    .line 1477
    iget-object v1, p0, Lcom/android/settings/GridSettings;->listManager:Lcom/android/settings/HeaderListManager;

    invoke-virtual {v1, v4}, Lcom/android/settings/HeaderListManager;->setPosition(I)V

    .line 1478
    iget-object v1, p0, Lcom/android/settings/GridSettings;->listManager:Lcom/android/settings/HeaderListManager;

    iget-object v2, p0, Lcom/android/settings/GridSettings;->mQuickHeaders:Ljava/util/List;

    iget-object v3, p0, Lcom/android/settings/GridSettings;->mHeaderIndexMap:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/HeaderListManager;->getHeaderList(Ljava/util/List;Ljava/util/HashMap;)V

    .line 1480
    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 1481
    .local v0, "v":Landroid/widget/ListView;
    iget-object v1, p0, Lcom/android/settings/GridSettings;->mQuickHeaders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1483
    iget-object v1, p0, Lcom/android/settings/GridSettings;->mQuickSettingsCategoryView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/GridSettings;->mGridcontainer:Lcom/android/settings/grid/GridContainer;

    if-eqz v1, :cond_0

    .line 1484
    iget-object v1, p0, Lcom/android/settings/GridSettings;->mQuickSettingsCategoryView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    .line 1485
    iget-object v1, p0, Lcom/android/settings/GridSettings;->mGridcontainer:Lcom/android/settings/grid/GridContainer;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    .line 1486
    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    iput v1, p0, Lcom/android/settings/GridSettings;->headerViewCnt:I

    .line 1492
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings/GridSettings;->mGridcontainer:Lcom/android/settings/grid/GridContainer;

    if-eqz v1, :cond_1

    .line 1493
    iget-object v1, p0, Lcom/android/settings/GridSettings;->mGridcontainer:Lcom/android/settings/grid/GridContainer;

    new-instance v2, Lcom/android/settings/GridSettings$GridViewQuickHeaderAdapter;

    sget-object v3, Lcom/android/settings/GridSettings;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/settings/GridSettings;->mQuickHeaders:Ljava/util/List;

    invoke-direct {v2, v3, v4, p0}, Lcom/android/settings/GridSettings$GridViewQuickHeaderAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/android/settings/grid/GridViewAdapter$OnGridItemListener;)V

    invoke-virtual {v1, v2}, Lcom/android/settings/grid/GridContainer;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1496
    :cond_1
    return-void

    .line 1489
    :cond_2
    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 1490
    invoke-direct {p0}, Lcom/android/settings/GridSettings;->addQuickSettingsView()V

    goto :goto_0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 607
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 608
    .local v0, "action":I
    iget-object v2, p0, Lcom/android/settings/GridSettings;->mSGD:Landroid/view/ScaleGestureDetector;

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    .line 609
    iget-object v2, p0, Lcom/android/settings/GridSettings;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 610
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 617
    .local v1, "ret":Z
    :goto_0
    return v1

    .line 612
    .end local v1    # "ret":Z
    :cond_0
    if-nez v0, :cond_1

    .line 613
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/settings/GridSettings;->isExpanding:Z

    .line 615
    :cond_1
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .restart local v1    # "ret":Z
    goto :goto_0
.end method

.method public displayGrid(I)V
    .locals 4
    .param p1, "pos"    # I

    .prologue
    .line 2085
    iput p1, p0, Lcom/android/settings/GridSettings;->prevScreen:I

    .line 2086
    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 2087
    .local v0, "fragmentManager":Landroid/app/FragmentManager;
    iget-object v1, p0, Lcom/android/settings/GridSettings;->mGridSettingsFragment:Lcom/android/settings/grid/GridSettingsFragment;

    if-eqz v1, :cond_0

    .line 2088
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/GridSettings;->mGridSettingsFragment:Lcom/android/settings/grid/GridSettingsFragment;

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 2089
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/GridSettings;->mGridSettingsFragment:Lcom/android/settings/grid/GridSettingsFragment;

    .line 2091
    :cond_0
    new-instance v1, Lcom/android/settings/grid/GridSettingsFragment;

    invoke-direct {v1}, Lcom/android/settings/grid/GridSettingsFragment;-><init>()V

    iput-object v1, p0, Lcom/android/settings/GridSettings;->mGridSettingsFragment:Lcom/android/settings/grid/GridSettingsFragment;

    .line 2092
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x1020002

    iget-object v3, p0, Lcom/android/settings/GridSettings;->mGridSettingsFragment:Lcom/android/settings/grid/GridSettingsFragment;

    invoke-virtual {v1, v2, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 2093
    return-void
.end method

.method public getDBValue(I)I
    .locals 1
    .param p1, "select"    # I

    .prologue
    .line 1025
    const/4 v0, -0x1

    .line 1026
    .local v0, "viewType":I
    packed-switch p1, :pswitch_data_0

    .line 1036
    :goto_0
    return v0

    .line 1028
    :pswitch_0
    const/4 v0, 0x0

    .line 1029
    goto :goto_0

    .line 1031
    :pswitch_1
    const/4 v0, 0x2

    .line 1032
    goto :goto_0

    .line 1026
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getGridType()I
    .locals 1

    .prologue
    .line 3304
    const/4 v0, 0x0

    return v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 7

    .prologue
    .line 1742
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 1743
    .local v4, "superIntent":Landroid/content/Intent;
    invoke-virtual {p0, v4}, Lcom/android/settings/GridSettings;->getStartingFragmentClass(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    .line 1746
    .local v3, "startingFragment":Ljava/lang/String;
    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->onIsMultiPane()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1747
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1748
    .local v2, "modIntent":Landroid/content/Intent;
    const-string v5, ":android:show_fragment"

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1749
    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 1750
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 1751
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .end local v0    # "args":Landroid/os/Bundle;
    .local v1, "args":Landroid/os/Bundle;
    move-object v0, v1

    .line 1755
    .end local v1    # "args":Landroid/os/Bundle;
    .restart local v0    # "args":Landroid/os/Bundle;
    :goto_0
    const-string v5, "intent"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1756
    const-string v5, ":android:show_fragment_args"

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1759
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v2    # "modIntent":Landroid/content/Intent;
    :goto_1
    return-object v2

    .line 1753
    .restart local v0    # "args":Landroid/os/Bundle;
    .restart local v2    # "modIntent":Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    .end local v0    # "args":Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .restart local v0    # "args":Landroid/os/Bundle;
    goto :goto_0

    .end local v0    # "args":Landroid/os/Bundle;
    .end local v2    # "modIntent":Landroid/content/Intent;
    :cond_1
    move-object v2, v4

    .line 1759
    goto :goto_1
.end method

.method public getNextButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 3259
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method public getOptionDialogValue(I)I
    .locals 2
    .param p1, "dbValue"    # I

    .prologue
    .line 996
    const/4 v0, -0x1

    .line 997
    .local v0, "viewType":I
    invoke-static {}, Lcom/android/settings/Utils;->isGridListUIEnabeld()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 998
    packed-switch p1, :pswitch_data_0

    .line 1021
    :goto_0
    return v0

    .line 1001
    :pswitch_0
    const/4 v0, 0x0

    .line 1002
    goto :goto_0

    .line 1004
    :pswitch_1
    const/4 v0, 0x1

    .line 1005
    goto :goto_0

    .line 1010
    :cond_0
    packed-switch p1, :pswitch_data_1

    goto :goto_0

    .line 1012
    :pswitch_2
    const/4 v0, 0x0

    .line 1013
    goto :goto_0

    .line 1015
    :pswitch_3
    const/4 v0, 0x1

    .line 1016
    goto :goto_0

    .line 998
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 1010
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getRealValue(I)I
    .locals 2
    .param p1, "select"    # I

    .prologue
    .line 967
    const/4 v0, 0x0

    .line 969
    .local v0, "viewType":I
    invoke-static {}, Lcom/android/settings/Utils;->isGridListUIEnabeld()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 970
    packed-switch p1, :pswitch_data_0

    .line 992
    :goto_0
    return v0

    .line 972
    :pswitch_0
    const/4 v0, 0x0

    .line 973
    goto :goto_0

    .line 975
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 979
    :cond_0
    packed-switch p1, :pswitch_data_1

    goto :goto_0

    .line 981
    :pswitch_2
    const/4 v0, 0x1

    .line 982
    goto :goto_0

    .line 984
    :pswitch_3
    const/4 v0, 0x0

    .line 985
    goto :goto_0

    .line 987
    :pswitch_4
    const/4 v0, 0x2

    goto :goto_0

    .line 970
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 979
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getSelectValue(I)I
    .locals 1
    .param p1, "db"    # I

    .prologue
    .line 1040
    const/4 v0, -0x1

    .line 1041
    .local v0, "viewType":I
    packed-switch p1, :pswitch_data_0

    .line 1051
    :goto_0
    :pswitch_0
    return v0

    .line 1043
    :pswitch_1
    const/4 v0, 0x0

    .line 1044
    goto :goto_0

    .line 1046
    :pswitch_2
    const/4 v0, 0x1

    .line 1047
    goto :goto_0

    .line 1041
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected getStartingFragmentClass(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1767
    iget-object v1, p0, Lcom/android/settings/GridSettings;->mFragmentClass:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/android/settings/GridSettings;->mFragmentClass:Ljava/lang/String;

    .line 1779
    :cond_0
    :goto_0
    return-object v0

    .line 1769
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 1770
    .local v0, "intentClass":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    .line 1772
    :cond_2
    const-string v1, "com.android.settings.ManageApplications"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "com.android.settings.RunningServices"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "com.android.settings.applications.StorageUse"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1776
    :cond_3
    const-class v1, Lcom/android/settings/applications/ManageApplications;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public hasNextButton()Z
    .locals 1

    .prologue
    .line 3254
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->hasNextButton()Z

    move-result v0

    return v0
.end method

.method public isGiditemChecked(I)Z
    .locals 1
    .param p1, "idx"    # I

    .prologue
    .line 3298
    const/4 v0, 0x0

    return v0
.end method

.method public loadHeadersFromResource(ILjava/util/List;)V
    .locals 3
    .param p1, "oriList"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1858
    .local p2, "headers":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    move v1, p1

    .line 1861
    .local v1, "list":I
    sget-object v2, Lcom/android/settings/GridSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/emergencymode/EmergencyManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v0

    .line 1862
    .local v0, "em":Lcom/sec/android/emergencymode/EmergencyManager;
    invoke-virtual {v0}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1863
    const v1, 0x7f0700e4

    .line 1874
    :cond_0
    :goto_0
    invoke-super {p0, v1, p2}, Landroid/preference/PreferenceActivity;->loadHeadersFromResource(ILjava/util/List;)V

    .line 1875
    return-void

    .line 1865
    :cond_1
    invoke-static {}, Lcom/android/settings/Utils;->isGridListUIEnabeld()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1866
    const v1, 0x7f070061

    goto :goto_0
.end method

.method public loadHeadersFromResourceForTabView(ILjava/util/List;)V
    .locals 20
    .param p1, "resid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1878
    .local p2, "target":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    move/from16 v9, p1

    .line 1879
    .local v9, "list":I
    invoke-static {}, Lcom/android/settings/Utils;->isGridListUIEnabeld()Z

    move-result v16

    if-eqz v16, :cond_1

    .line 1880
    const-string v16, "jjh"

    const-string v17, "grid list is enabled"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1881
    const v9, 0x7f070061

    .line 1882
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-super {v0, v9, v1}, Landroid/preference/PreferenceActivity;->loadHeadersFromResource(ILjava/util/List;)V

    .line 2041
    :cond_0
    :goto_0
    return-void

    .line 1885
    :cond_1
    const/4 v12, 0x0

    .line 1887
    .local v12, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/GridSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v12

    .line 1888
    invoke-static {v12}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    .line 1892
    .local v2, "attrs":Landroid/util/AttributeSet;
    :cond_2
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v15

    .local v15, "type":I
    const/16 v16, 0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_3

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_2

    .line 1896
    :cond_3
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v10

    .line 1897
    .local v10, "nodeName":Ljava/lang/String;
    const-string v16, "preference-headers"

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_5

    .line 1898
    new-instance v16, Ljava/lang/RuntimeException;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "XML document must start with <preference-headers> tag; found"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " at "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v16
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2034
    .end local v2    # "attrs":Landroid/util/AttributeSet;
    .end local v10    # "nodeName":Ljava/lang/String;
    .end local v15    # "type":I
    :catch_0
    move-exception v4

    .line 2035
    .local v4, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1
    new-instance v16, Ljava/lang/RuntimeException;

    const-string v17, "Error parsing headers"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2039
    .end local v4    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v16

    if-eqz v12, :cond_4

    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_4
    throw v16

    .line 1903
    .restart local v2    # "attrs":Landroid/util/AttributeSet;
    .restart local v10    # "nodeName":Ljava/lang/String;
    .restart local v15    # "type":I
    :cond_5
    const/4 v3, 0x0

    .line 1905
    .local v3, "curBundle":Landroid/os/Bundle;
    :try_start_2
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v11

    .line 1906
    .local v11, "outerDepth":I
    const/4 v6, 0x0

    .line 1908
    .local v6, "including":Z
    :cond_6
    :goto_1
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_1f

    const/16 v16, 0x3

    move/from16 v0, v16

    if-ne v15, v0, :cond_7

    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v16

    move/from16 v0, v16

    if-le v0, v11, :cond_1f

    .line 1909
    :cond_7
    const/16 v16, 0x3

    move/from16 v0, v16

    if-eq v15, v0, :cond_6

    const/16 v16, 0x4

    move/from16 v0, v16

    if-eq v15, v0, :cond_6

    .line 1913
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v10

    .line 1914
    const-string v16, "header"

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1e

    .line 1915
    new-instance v5, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v5}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    .line 1917
    .local v5, "header":Landroid/preference/PreferenceActivity$Header;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/GridSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    sget-object v17, Lcom/android/internal/R$styleable;->PreferenceHeader:[I

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v13

    .line 1919
    .local v13, "sa":Landroid/content/res/TypedArray;
    const/16 v16, 0x1

    const/16 v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v13, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v16

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    iput-wide v0, v5, Landroid/preference/PreferenceActivity$Header;->id:J

    .line 1922
    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v13, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v16

    move/from16 v0, v16

    iput v0, v5, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    .line 1925
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/GridSettings;->listManager:Lcom/android/settings/HeaderListManager;

    move-object/from16 v16, v0

    if-eqz v16, :cond_13

    .line 1926
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/GridSettings;->listManager:Lcom/android/settings/HeaderListManager;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/settings/HeaderListManager;->getTabList()[I

    move-result-object v16

    iget-wide v0, v5, Landroid/preference/PreferenceActivity$Header;->id:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v17, v0

    invoke-static/range {v16 .. v17}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v16

    if-eqz v16, :cond_12

    .line 1927
    const/4 v6, 0x1

    .line 1938
    :cond_8
    :goto_2
    const/16 v16, 0x2

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v14

    .line 1940
    .local v14, "tv":Landroid/util/TypedValue;
    if-eqz v14, :cond_9

    iget v0, v14, Landroid/util/TypedValue;->type:I

    move/from16 v16, v0

    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_9

    .line 1941
    iget v0, v14, Landroid/util/TypedValue;->resourceId:I

    move/from16 v16, v0

    if-eqz v16, :cond_14

    .line 1942
    iget v0, v14, Landroid/util/TypedValue;->resourceId:I

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v5, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    .line 1947
    :cond_9
    :goto_3
    const/16 v16, 0x3

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v14

    .line 1949
    if-eqz v14, :cond_a

    iget v0, v14, Landroid/util/TypedValue;->type:I

    move/from16 v16, v0

    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_a

    .line 1950
    iget v0, v14, Landroid/util/TypedValue;->resourceId:I

    move/from16 v16, v0

    if-eqz v16, :cond_15

    .line 1951
    iget v0, v14, Landroid/util/TypedValue;->resourceId:I

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v5, Landroid/preference/PreferenceActivity$Header;->summaryRes:I

    .line 1956
    :cond_a
    :goto_4
    const/16 v16, 0x5

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v14

    .line 1958
    if-eqz v14, :cond_b

    iget v0, v14, Landroid/util/TypedValue;->type:I

    move/from16 v16, v0

    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_b

    .line 1959
    iget v0, v14, Landroid/util/TypedValue;->resourceId:I

    move/from16 v16, v0

    if-eqz v16, :cond_16

    .line 1960
    iget v0, v14, Landroid/util/TypedValue;->resourceId:I

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v5, Landroid/preference/PreferenceActivity$Header;->breadCrumbTitleRes:I

    .line 1965
    :cond_b
    :goto_5
    const/16 v16, 0x6

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v14

    .line 1967
    if-eqz v14, :cond_c

    iget v0, v14, Landroid/util/TypedValue;->type:I

    move/from16 v16, v0

    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_c

    .line 1968
    iget v0, v14, Landroid/util/TypedValue;->resourceId:I

    move/from16 v16, v0

    if-eqz v16, :cond_17

    .line 1969
    iget v0, v14, Landroid/util/TypedValue;->resourceId:I

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v5, Landroid/preference/PreferenceActivity$Header;->breadCrumbShortTitleRes:I

    .line 1974
    :cond_c
    :goto_6
    const/16 v16, 0x7

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v14

    .line 1976
    if-eqz v14, :cond_d

    iget v0, v14, Landroid/util/TypedValue;->type:I

    move/from16 v16, v0

    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_d

    .line 1977
    iget v0, v14, Landroid/util/TypedValue;->resourceId:I

    move/from16 v16, v0

    if-eqz v16, :cond_18

    .line 1978
    iget v0, v14, Landroid/util/TypedValue;->resourceId:I

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v5, Landroid/preference/PreferenceActivity$Header;->titleDescriptionRes:I

    .line 1983
    :cond_d
    :goto_7
    const/16 v16, 0x8

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v14

    .line 1985
    if-eqz v14, :cond_e

    iget v0, v14, Landroid/util/TypedValue;->type:I

    move/from16 v16, v0

    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_e

    .line 1986
    iget v0, v14, Landroid/util/TypedValue;->resourceId:I

    move/from16 v16, v0

    if-eqz v16, :cond_19

    .line 1987
    iget v0, v14, Landroid/util/TypedValue;->resourceId:I

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v5, Landroid/preference/PreferenceActivity$Header;->summaryDescriptionRes:I

    .line 1993
    :cond_e
    :goto_8
    const/16 v16, 0x4

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v5, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 1995
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    .line 1997
    if-nez v3, :cond_f

    .line 1998
    new-instance v3, Landroid/os/Bundle;

    .end local v3    # "curBundle":Landroid/os/Bundle;
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 2001
    .restart local v3    # "curBundle":Landroid/os/Bundle;
    :cond_f
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v7

    .line 2003
    .local v7, "innerDepth":I
    :cond_10
    :goto_9
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_1c

    const/16 v16, 0x3

    move/from16 v0, v16

    if-ne v15, v0, :cond_11

    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v16

    move/from16 v0, v16

    if-le v0, v7, :cond_1c

    .line 2004
    :cond_11
    const/16 v16, 0x3

    move/from16 v0, v16

    if-eq v15, v0, :cond_10

    const/16 v16, 0x4

    move/from16 v0, v16

    if-eq v15, v0, :cond_10

    .line 2008
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 2009
    .local v8, "innerNodeName":Ljava/lang/String;
    const-string v16, "extra"

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1a

    .line 2010
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/GridSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const-string v17, "extra"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->parseBundleExtra(Ljava/lang/String;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 2011
    invoke-static {v12}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_9

    .line 2036
    .end local v2    # "attrs":Landroid/util/AttributeSet;
    .end local v3    # "curBundle":Landroid/os/Bundle;
    .end local v5    # "header":Landroid/preference/PreferenceActivity$Header;
    .end local v6    # "including":Z
    .end local v7    # "innerDepth":I
    .end local v8    # "innerNodeName":Ljava/lang/String;
    .end local v10    # "nodeName":Ljava/lang/String;
    .end local v11    # "outerDepth":I
    .end local v13    # "sa":Landroid/content/res/TypedArray;
    .end local v14    # "tv":Landroid/util/TypedValue;
    .end local v15    # "type":I
    :catch_1
    move-exception v4

    .line 2037
    .local v4, "e":Ljava/io/IOException;
    :try_start_3
    new-instance v16, Ljava/lang/RuntimeException;

    const-string v17, "Error parsing headers"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v16
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1929
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v2    # "attrs":Landroid/util/AttributeSet;
    .restart local v3    # "curBundle":Landroid/os/Bundle;
    .restart local v5    # "header":Landroid/preference/PreferenceActivity$Header;
    .restart local v6    # "including":Z
    .restart local v10    # "nodeName":Ljava/lang/String;
    .restart local v11    # "outerDepth":I
    .restart local v13    # "sa":Landroid/content/res/TypedArray;
    .restart local v15    # "type":I
    :cond_12
    :try_start_4
    iget v0, v5, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    move/from16 v16, v0

    if-nez v16, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/GridSettings;->listManager:Lcom/android/settings/HeaderListManager;

    move-object/from16 v16, v0

    iget-wide v0, v5, Landroid/preference/PreferenceActivity$Header;->id:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lcom/android/settings/HeaderListManager;->isContain(I)Z

    move-result v16

    if-eqz v16, :cond_8

    .line 1930
    const/4 v6, 0x0

    .line 1931
    goto/16 :goto_1

    .line 1935
    :cond_13
    const/4 v6, 0x1

    goto/16 :goto_2

    .line 1944
    .restart local v14    # "tv":Landroid/util/TypedValue;
    :cond_14
    iget-object v0, v14, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v5, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    goto/16 :goto_3

    .line 1953
    :cond_15
    iget-object v0, v14, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v5, Landroid/preference/PreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    goto/16 :goto_4

    .line 1962
    :cond_16
    iget-object v0, v14, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v5, Landroid/preference/PreferenceActivity$Header;->breadCrumbTitle:Ljava/lang/CharSequence;

    goto/16 :goto_5

    .line 1971
    :cond_17
    iget-object v0, v14, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v5, Landroid/preference/PreferenceActivity$Header;->breadCrumbShortTitle:Ljava/lang/CharSequence;

    goto/16 :goto_6

    .line 1980
    :cond_18
    iget-object v0, v14, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v5, Landroid/preference/PreferenceActivity$Header;->titleDescription:Ljava/lang/CharSequence;

    goto/16 :goto_7

    .line 1989
    :cond_19
    iget-object v0, v14, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v5, Landroid/preference/PreferenceActivity$Header;->summaryDescription:Ljava/lang/CharSequence;

    goto/16 :goto_8

    .line 2013
    .restart local v7    # "innerDepth":I
    .restart local v8    # "innerNodeName":Ljava/lang/String;
    :cond_1a
    const-string v16, "intent"

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1b

    .line 2014
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/GridSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v0, v12, v2}, Landroid/content/Intent;->parseIntent(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/content/Intent;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v5, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    goto/16 :goto_9

    .line 2017
    :cond_1b
    invoke-static {v12}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_9

    .line 2021
    .end local v8    # "innerNodeName":Ljava/lang/String;
    :cond_1c
    invoke-virtual {v3}, Landroid/os/Bundle;->size()I

    move-result v16

    if-lez v16, :cond_1d

    .line 2022
    iput-object v3, v5, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    .line 2023
    const/4 v3, 0x0

    .line 2025
    :cond_1d
    if-eqz v6, :cond_6

    .line 2026
    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 2030
    .end local v5    # "header":Landroid/preference/PreferenceActivity$Header;
    .end local v7    # "innerDepth":I
    .end local v13    # "sa":Landroid/content/res/TypedArray;
    .end local v14    # "tv":Landroid/util/TypedValue;
    :cond_1e
    invoke-static {v12}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    .line 2039
    :cond_1f
    if-eqz v12, :cond_0

    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v3, 0x1610

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 1592
    packed-switch p1, :pswitch_data_0

    .line 1605
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1606
    const/16 v0, 0x160f

    if-ne p1, v0, :cond_1

    .line 1607
    if-ne p2, v3, :cond_1

    .line 1608
    const-string v0, "Settings"

    const-string v1, "Search direct back!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1609
    invoke-virtual {p0, v3}, Lcom/android/settings/GridSettings;->setResult(I)V

    .line 1610
    sput-boolean v2, Lcom/android/settings/GridSettings;->mIsFromSearch:Z

    .line 1611
    iput-boolean v2, p0, Lcom/android/settings/GridSettings;->mOpenSearchHierarchy:Z

    .line 1612
    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->finish()V

    .line 1617
    :cond_1
    return-void

    .line 1594
    :pswitch_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 1595
    iput v1, p0, Lcom/android/settings/GridSettings;->prevScreen:I

    .line 1596
    iget-object v0, p0, Lcom/android/settings/GridSettings;->listManager:Lcom/android/settings/HeaderListManager;

    if-eqz v0, :cond_0

    .line 1597
    iget-object v0, p0, Lcom/android/settings/GridSettings;->listManager:Lcom/android/settings/HeaderListManager;

    invoke-virtual {v0, v1}, Lcom/android/settings/HeaderListManager;->setPosition(I)V

    goto :goto_0

    .line 1592
    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 1622
    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1623
    sget-boolean v0, Lcom/android/settings/GridSettings;->mIsFromSearch:Z

    if-eqz v0, :cond_0

    .line 1624
    const/16 v0, 0x1610

    invoke-virtual {p0, v0}, Lcom/android/settings/GridSettings;->setResult(I)V

    .line 1628
    :cond_0
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onBackPressed()V

    .line 1629
    return-void
.end method

.method public onBuildHeaders(Ljava/util/List;)V
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2100
    .local p1, "headers":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    const/4 v13, 0x0

    .line 2101
    .local v13, "isChanged":Z
    const/4 v14, 0x0

    .line 2104
    .local v14, "isEmergencyMode":Z
    sget-object v20, Lcom/android/settings/GridSettings;->mContext:Landroid/content/Context;

    invoke-static/range {v20 .. v20}, Lcom/sec/android/emergencymode/EmergencyManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v9

    .line 2105
    .local v9, "em":Lcom/sec/android/emergencymode/EmergencyManager;
    invoke-virtual {v9}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode()Z

    move-result v20

    if-eqz v20, :cond_0

    .line 2106
    const/4 v14, 0x1

    .line 2110
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/GridSettings;->onIsHidingHeaders()Z

    move-result v20

    if-nez v20, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/GridSettings;->mPhoneTabStyle:Z

    move/from16 v20, v0

    if-nez v20, :cond_5

    .line 2113
    if-eqz v14, :cond_3

    .line 2114
    const v20, 0x7f0700e4

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/GridSettings;->loadHeadersFromResource(ILjava/util/List;)V

    .line 2116
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v11, v0, :cond_4

    .line 2117
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/preference/PreferenceActivity$Header;

    move-object/from16 v0, v20

    iget-wide v0, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    move-wide/from16 v20, v0

    const-wide/32 v22, 0x7f1006c6

    cmp-long v20, v20, v22

    if-eqz v20, :cond_1

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/preference/PreferenceActivity$Header;

    move-object/from16 v0, v20

    iget-wide v0, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    move-wide/from16 v20, v0

    const-wide/32 v22, 0x7f1006ce

    cmp-long v20, v20, v22

    if-nez v20, :cond_2

    .line 2119
    :cond_1
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2120
    add-int/lit8 v11, v11, -0x1

    .line 2116
    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 2126
    .end local v11    # "i":I
    :cond_3
    const v20, 0x7f070060

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/GridSettings;->loadHeadersFromResource(ILjava/util/List;)V

    .line 2134
    :cond_4
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/settings/GridSettings;->updateHeaderList(Ljava/util/List;Z)V

    .line 2138
    :cond_5
    sget-object v20, Lcom/android/settings/GridSettings;->LOG_TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "mPhoneTabStyle : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/GridSettings;->mPhoneTabStyle:Z

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2140
    invoke-static {}, Lcom/android/settings/Utils;->isGridListUIEnabeld()Z

    move-result v20

    if-eqz v20, :cond_17

    sget-boolean v20, Lcom/android/settings/GridSettings;->isListView:Z

    if-eqz v20, :cond_17

    .line 2141
    sget-object v20, Lcom/android/settings/GridSettings;->mContext:Landroid/content/Context;

    invoke-static/range {v20 .. v20}, Lcom/sec/android/emergencymode/EmergencyManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v9

    .line 2142
    invoke-virtual {v9}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode()Z

    move-result v20

    if-nez v20, :cond_6

    .line 2143
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/GridSettings;->listManager:Lcom/android/settings/HeaderListManager;

    move-object/from16 v20, v0

    if-eqz v20, :cond_6

    .line 2145
    sget-object v20, Lcom/android/settings/GridSettings;->LOG_TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "listManager.getPosition : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/GridSettings;->listManager:Lcom/android/settings/HeaderListManager;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/settings/HeaderListManager;->getPosition()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2146
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/GridSettings;->updateQuickSettingsHeaders()V

    .line 2147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/GridSettings;->listManager:Lcom/android/settings/HeaderListManager;

    move-object/from16 v20, v0

    const/16 v21, 0x63

    invoke-virtual/range {v20 .. v21}, Lcom/android/settings/HeaderListManager;->setPosition(I)V

    .line 2148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/GridSettings;->listManager:Lcom/android/settings/HeaderListManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/GridSettings;->mHeaderIndexMap:Ljava/util/HashMap;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/HeaderListManager;->getHeaderList(Ljava/util/List;Ljava/util/HashMap;)V

    .line 2166
    :cond_6
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/GridSettings;->mPhoneTabStyle:Z

    move/from16 v20, v0

    if-eqz v20, :cond_11

    .line 2167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/GridSettings;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    move-object/from16 v20, v0

    const-string v21, "show"

    sget-object v22, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v23, "eng"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    invoke-interface/range {v20 .. v22}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v16

    .line 2171
    .local v16, "mTabDevTemp":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/GridSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v8

    .line 2172
    .local v8, "bar":Landroid/app/ActionBar;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/GridSettings;->listManager:Lcom/android/settings/HeaderListManager;

    move-object/from16 v20, v0

    if-eqz v20, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/GridSettings;->listManager:Lcom/android/settings/HeaderListManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/settings/HeaderListManager;->getPosition()I

    move-result v20

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_7

    invoke-virtual {v8}, Landroid/app/ActionBar;->getNavigationItemCount()I

    move-result v20

    if-nez v20, :cond_8

    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/GridSettings;->mOpenSearchHierarchy:Z

    move/from16 v20, v0

    if-eqz v20, :cond_b

    .line 2175
    :cond_8
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2176
    .local v4, "QuickHeaders":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    const v20, 0x7f070060

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1, v4}, Lcom/android/settings/GridSettings;->loadHeadersFromResource(ILjava/util/List;)V

    .line 2177
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v4, v1}, Lcom/android/settings/GridSettings;->updateHeaderList(Ljava/util/List;Z)V

    .line 2178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/GridSettings;->listManager:Lcom/android/settings/HeaderListManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/GridSettings;->mHeaderIndexMap:Ljava/util/HashMap;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v4, v1}, Lcom/android/settings/HeaderListManager;->loadFavoriteList(Ljava/util/List;Ljava/util/HashMap;)V

    .line 2179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/GridSettings;->listManager:Lcom/android/settings/HeaderListManager;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/android/settings/HeaderListManager;->setPosition(I)V

    .line 2180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/GridSettings;->listManager:Lcom/android/settings/HeaderListManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/GridSettings;->mHeaderIndexMap:Ljava/util/HashMap;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v4, v1}, Lcom/android/settings/HeaderListManager;->getHeaderList(Ljava/util/List;Ljava/util/HashMap;)V

    .line 2181
    invoke-static {}, Lcom/android/settings/Utils;->isGridListUIEnabeld()Z

    move-result v20

    if-eqz v20, :cond_1a

    .line 2182
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v20

    if-nez v20, :cond_19

    invoke-virtual {v8}, Landroid/app/ActionBar;->getNavigationItemCount()I

    move-result v20

    const/16 v21, 0x6

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_19

    .line 2183
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/app/ActionBar;->removeTabAt(I)V

    .line 2200
    :cond_9
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/GridSettings;->pager:Landroid/support/v4/view/ViewPager;

    move-object/from16 v20, v0

    if-eqz v20, :cond_a

    .line 2201
    new-instance v5, Lcom/android/settings/GridSettings$ViewPagerAdapter;

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v5, v0, v1}, Lcom/android/settings/GridSettings$ViewPagerAdapter;-><init>(Lcom/android/settings/GridSettings;Landroid/content/Context;)V

    .line 2202
    .local v5, "adapter":Lcom/android/settings/GridSettings$ViewPagerAdapter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/GridSettings;->pager:Landroid/support/v4/view/ViewPager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 2203
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 2205
    .end local v5    # "adapter":Lcom/android/settings/GridSettings$ViewPagerAdapter;
    :cond_a
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/GridSettings;->mTabDev:Z

    .line 2208
    .end local v4    # "QuickHeaders":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/GridSettings;->pager:Landroid/support/v4/view/ViewPager;

    move-object/from16 v20, v0

    if-eqz v20, :cond_c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/GridSettings;->mTabDev:Z

    move/from16 v20, v0

    move/from16 v0, v16

    move/from16 v1, v20

    if-eq v0, v1, :cond_c

    .line 2209
    new-instance v5, Lcom/android/settings/GridSettings$ViewPagerAdapter;

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v5, v0, v1}, Lcom/android/settings/GridSettings$ViewPagerAdapter;-><init>(Lcom/android/settings/GridSettings;Landroid/content/Context;)V

    .line 2210
    .restart local v5    # "adapter":Lcom/android/settings/GridSettings$ViewPagerAdapter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/GridSettings;->pager:Landroid/support/v4/view/ViewPager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 2211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/GridSettings;->pager:Landroid/support/v4/view/ViewPager;

    move-object/from16 v20, v0

    invoke-virtual {v8}, Landroid/app/ActionBar;->getNavigationItemCount()I

    move-result v21

    add-int/lit8 v21, v21, -0x2

    invoke-virtual/range {v20 .. v21}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 2212
    invoke-virtual {v8}, Landroid/app/ActionBar;->getNavigationItemCount()I

    move-result v20

    add-int/lit8 v20, v20, -0x2

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 2213
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/GridSettings;->mTabDev:Z

    .line 2216
    .end local v5    # "adapter":Lcom/android/settings/GridSettings$ViewPagerAdapter;
    :cond_c
    invoke-static {}, Lcom/android/settings/Utils;->isGridSimple()Z

    move-result v20

    if-nez v20, :cond_d

    .line 2217
    const v20, 0x7f070060

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/GridSettings;->loadHeadersFromResource(ILjava/util/List;)V

    .line 2218
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/settings/GridSettings;->updateHeaderList(Ljava/util/List;Z)V

    .line 2221
    :cond_d
    new-instance v20, Lcom/android/settings/HeaderListManager;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/HeaderListManager;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/GridSettings;->listManager:Lcom/android/settings/HeaderListManager;

    .line 2224
    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v20

    if-eqz v20, :cond_f

    .line 2225
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/GridSettings;->mOpenSearchHierarchy:Z

    move/from16 v20, v0

    if-eqz v20, :cond_f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/GridSettings;->mPhoneTabStyle:Z

    move/from16 v20, v0

    if-eqz v20, :cond_f

    .line 2226
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/GridSettings;->getIntent()Landroid/content/Intent;

    move-result-object v20

    const-string v21, "extra_tab_id"

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v19

    .line 2227
    .local v19, "tap_index":I
    invoke-virtual {v8}, Landroid/app/ActionBar;->getNavigationItemCount()I

    move-result v20

    const/16 v21, 0x5

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_e

    .line 2228
    add-int/lit8 v19, v19, -0x1

    .line 2230
    :cond_e
    move/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 2235
    .end local v19    # "tap_index":I
    :cond_f
    invoke-virtual {v8}, Landroid/app/ActionBar;->getSelectedNavigationIndex()I

    move-result v17

    .line 2236
    .local v17, "mTabIndex":I
    invoke-virtual {v8}, Landroid/app/ActionBar;->getNavigationItemCount()I

    move-result v20

    const/16 v21, 0x5

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_10

    .line 2237
    add-int/lit8 v17, v17, 0x1

    .line 2239
    :cond_10
    packed-switch v17, :pswitch_data_0

    .line 2270
    const v20, 0x7f070060

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/GridSettings;->loadHeadersFromResource(ILjava/util/List;)V

    .line 2271
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/settings/GridSettings;->updateHeaderList(Ljava/util/List;Z)V

    .line 2273
    :goto_3
    invoke-static {}, Lcom/android/settings/Utils;->isGridSimple()Z

    move-result v20

    if-eqz v20, :cond_11

    if-lez v17, :cond_11

    .line 2274
    const v20, 0x7f070060

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/GridSettings;->loadHeadersFromResourceForTabView(ILjava/util/List;)V

    .line 2275
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/settings/GridSettings;->updateHeaderList(Ljava/util/List;Z)V

    .line 2276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/GridSettings;->listManager:Lcom/android/settings/HeaderListManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/GridSettings;->mHeaderIndexMap:Ljava/util/HashMap;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/HeaderListManager;->removeSubMenu(Ljava/util/List;Ljava/util/HashMap;)V

    .line 2277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/GridSettings;->listManager:Lcom/android/settings/HeaderListManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/settings/HeaderListManager;->removeEmptyCategory(Ljava/util/List;)V

    .line 2278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/GridSettings;->listManager:Lcom/android/settings/HeaderListManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/settings/HeaderListManager;->removeGridListCategory(Ljava/util/List;)V

    .line 2282
    .end local v8    # "bar":Landroid/app/ActionBar;
    .end local v16    # "mTabDevTemp":Z
    .end local v17    # "mTabIndex":I
    :cond_11
    if-nez p1, :cond_1d

    const/4 v6, 0x0

    .line 2283
    .local v6, "afterLength":I
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/GridSettings;->prevLength:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-eq v0, v6, :cond_1e

    const/4 v13, 0x1

    .line 2284
    :goto_5
    sget-object v20, Lcom/android/settings/GridSettings;->LOG_TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "prevLength : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/GridSettings;->prevLength:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2285
    sget-object v20, Lcom/android/settings/GridSettings;->LOG_TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "afterLength : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2286
    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/settings/GridSettings;->prevLength:I

    .line 2289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/GridSettings;->listManager:Lcom/android/settings/HeaderListManager;

    move-object/from16 v20, v0

    if-nez v20, :cond_1f

    const/16 v18, 0x64

    .line 2291
    .local v18, "pos":I
    :goto_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/GridSettings;->isGridView:Z

    move/from16 v20, v0

    if-eqz v20, :cond_13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/GridSettings;->prevScreen:I

    move/from16 v20, v0

    move/from16 v0, v20

    move/from16 v1, v18

    if-ne v0, v1, :cond_12

    if-eqz v13, :cond_13

    .line 2292
    :cond_12
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/GridSettings;->displayGrid(I)V

    .line 2296
    :cond_13
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/GridSettings;->mOpenSearchHierarchy:Z

    move/from16 v20, v0

    if-eqz v20, :cond_16

    if-eqz p1, :cond_16

    .line 2297
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_7
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v11, v0, :cond_15

    .line 2298
    sget-wide v20, Lcom/android/settings/GridSettings;->mSearchHeaderID:J

    const-wide/16 v22, -0x1

    cmp-long v20, v20, v22

    if-eqz v20, :cond_25

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/preference/PreferenceActivity$Header;

    move-object/from16 v0, v20

    iget-wide v0, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    move-wide/from16 v20, v0

    sget-wide v22, Lcom/android/settings/GridSettings;->mSearchHeaderID:J

    cmp-long v20, v20, v22

    if-nez v20, :cond_25

    .line 2299
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/preference/PreferenceActivity$Header;

    .line 2300
    .local v10, "header":Landroid/preference/PreferenceActivity$Header;
    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v20

    if-eqz v20, :cond_24

    .line 2301
    sget-wide v20, Lcom/android/settings/GridSettings;->mSearchHeaderID:J

    const-wide/32 v22, 0x7f100717

    cmp-long v20, v20, v22

    if-nez v20, :cond_21

    .line 2302
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 2303
    .local v7, "args":Landroid/os/Bundle;
    const-string v20, "extra_from_search"

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2305
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/GridSettings;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    move-object/from16 v20, v0

    if-eqz v20, :cond_20

    .line 2306
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/GridSettings;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 2312
    :cond_14
    :goto_8
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    .line 2313
    .local v12, "intent":Landroid/content/Intent;
    const-string v20, "android.app.cocktailbarservice.settings.SETTINGSMAIN"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2314
    const-string v20, "extra_search_bundle"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2315
    const-string v20, "extra_from_search"

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2316
    const-string v20, "extra_depth_counter_key"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/GridSettings;->mSearchDepthCounter:I

    move/from16 v21, v0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2317
    sget-object v20, Lcom/android/settings/GridSettings;->mContext:Landroid/content/Context;

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 2340
    .end local v7    # "args":Landroid/os/Bundle;
    .end local v10    # "header":Landroid/preference/PreferenceActivity$Header;
    .end local v12    # "intent":Landroid/content/Intent;
    :cond_15
    :goto_9
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/GridSettings;->mOpenSearchHierarchy:Z

    .line 2343
    .end local v11    # "i":I
    :cond_16
    return-void

    .line 2153
    .end local v6    # "afterLength":I
    .end local v18    # "pos":I
    :cond_17
    sget-object v20, Lcom/android/settings/GridSettings;->LOG_TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "mPhoneTabStyle : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/GridSettings;->mPhoneTabStyle:Z

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/GridSettings;->listManager:Lcom/android/settings/HeaderListManager;

    move-object/from16 v20, v0

    if-eqz v20, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/GridSettings;->mPhoneTabStyle:Z

    move/from16 v20, v0

    if-nez v20, :cond_6

    if-nez v14, :cond_6

    .line 2156
    sget-object v20, Lcom/android/settings/GridSettings;->LOG_TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "listManager.getPosition : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/GridSettings;->listManager:Lcom/android/settings/HeaderListManager;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/settings/HeaderListManager;->getPosition()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/GridSettings;->listManager:Lcom/android/settings/HeaderListManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/settings/HeaderListManager;->getPosition()I

    move-result v20

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_18

    .line 2158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/GridSettings;->listManager:Lcom/android/settings/HeaderListManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/GridSettings;->mHeaderIndexMap:Ljava/util/HashMap;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/HeaderListManager;->loadFavoriteList(Ljava/util/List;Ljava/util/HashMap;)V

    .line 2159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/GridSettings;->listManager:Lcom/android/settings/HeaderListManager;

    move-object/from16 v20, v0

    const/16 v21, 0x64

    invoke-virtual/range {v20 .. v21}, Lcom/android/settings/HeaderListManager;->setPosition(I)V

    .line 2160
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/GridSettings;->invalidateOptionsMenu()V

    .line 2162
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/GridSettings;->listManager:Lcom/android/settings/HeaderListManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/GridSettings;->mHeaderIndexMap:Ljava/util/HashMap;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/HeaderListManager;->getHeaderList(Ljava/util/List;Ljava/util/HashMap;)V

    goto/16 :goto_1

    .line 2184
    .restart local v4    # "QuickHeaders":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    .restart local v8    # "bar":Landroid/app/ActionBar;
    .restart local v16    # "mTabDevTemp":Z
    :cond_19
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_9

    invoke-virtual {v8}, Landroid/app/ActionBar;->getNavigationItemCount()I

    move-result v20

    const/16 v21, 0x5

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_9

    .line 2185
    invoke-virtual {v8}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v20

    new-instance v21, Lcom/android/settings/GridSettings$SettingsTabListener;

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/settings/GridSettings$SettingsTabListener;-><init>(Lcom/android/settings/GridSettings;Lcom/android/settings/GridSettings$1;)V

    invoke-virtual/range {v20 .. v21}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v20

    const v21, 0x7f0a1da5

    invoke-virtual/range {v20 .. v21}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    move-result-object v15

    .line 2188
    .local v15, "mQuickTab":Landroid/app/ActionBar$Tab;
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v8, v15, v0}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;I)V

    goto/16 :goto_2

    .line 2191
    .end local v15    # "mQuickTab":Landroid/app/ActionBar$Tab;
    :cond_1a
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_1b

    invoke-virtual {v8}, Landroid/app/ActionBar;->getNavigationItemCount()I

    move-result v20

    const/16 v21, 0x5

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1b

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v20

    if-eqz v20, :cond_1b

    .line 2192
    invoke-virtual {v8}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v20

    new-instance v21, Lcom/android/settings/GridSettings$SettingsTabListener;

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/settings/GridSettings$SettingsTabListener;-><init>(Lcom/android/settings/GridSettings;Lcom/android/settings/GridSettings$1;)V

    invoke-virtual/range {v20 .. v21}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v20

    const v21, 0x7f0a1da5

    invoke-virtual/range {v20 .. v21}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    move-result-object v15

    .line 2195
    .restart local v15    # "mQuickTab":Landroid/app/ActionBar$Tab;
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v8, v15, v0}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;I)V

    goto/16 :goto_2

    .line 2196
    .end local v15    # "mQuickTab":Landroid/app/ActionBar$Tab;
    :cond_1b
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-gt v0, v1, :cond_9

    invoke-virtual {v8}, Landroid/app/ActionBar;->getNavigationItemCount()I

    move-result v20

    const/16 v21, 0x6

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_9

    .line 2197
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/app/ActionBar;->removeTabAt(I)V

    goto/16 :goto_2

    .line 2241
    .end local v4    # "QuickHeaders":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    .restart local v17    # "mTabIndex":I
    :pswitch_0
    invoke-static {}, Lcom/android/settings/Utils;->isGridSimple()Z

    move-result v20

    if-eqz v20, :cond_1c

    .line 2242
    const v20, 0x7f070060

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/GridSettings;->loadHeadersFromResource(ILjava/util/List;)V

    .line 2243
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/settings/GridSettings;->updateHeaderList(Ljava/util/List;Z)V

    .line 2245
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/GridSettings;->listManager:Lcom/android/settings/HeaderListManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/GridSettings;->mHeaderIndexMap:Ljava/util/HashMap;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/HeaderListManager;->loadFavoriteList(Ljava/util/List;Ljava/util/HashMap;)V

    .line 2246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/GridSettings;->listManager:Lcom/android/settings/HeaderListManager;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/android/settings/HeaderListManager;->setPosition(I)V

    .line 2247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/GridSettings;->listManager:Lcom/android/settings/HeaderListManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/GridSettings;->mHeaderIndexMap:Ljava/util/HashMap;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/HeaderListManager;->getHeaderList(Ljava/util/List;Ljava/util/HashMap;)V

    goto/16 :goto_3

    .line 2250
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/GridSettings;->listManager:Lcom/android/settings/HeaderListManager;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Lcom/android/settings/HeaderListManager;->setPosition(I)V

    .line 2251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/GridSettings;->listManager:Lcom/android/settings/HeaderListManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/GridSettings;->mHeaderIndexMap:Ljava/util/HashMap;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/HeaderListManager;->getHeaderList(Ljava/util/List;Ljava/util/HashMap;)V

    goto/16 :goto_3

    .line 2254
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/GridSettings;->listManager:Lcom/android/settings/HeaderListManager;

    move-object/from16 v20, v0

    const/16 v21, 0x2

    invoke-virtual/range {v20 .. v21}, Lcom/android/settings/HeaderListManager;->setPosition(I)V

    .line 2255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/GridSettings;->listManager:Lcom/android/settings/HeaderListManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/GridSettings;->mHeaderIndexMap:Ljava/util/HashMap;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/HeaderListManager;->getHeaderList(Ljava/util/List;Ljava/util/HashMap;)V

    goto/16 :goto_3

    .line 2258
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/GridSettings;->listManager:Lcom/android/settings/HeaderListManager;

    move-object/from16 v20, v0

    const/16 v21, 0x3

    invoke-virtual/range {v20 .. v21}, Lcom/android/settings/HeaderListManager;->setPosition(I)V

    .line 2259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/GridSettings;->listManager:Lcom/android/settings/HeaderListManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/GridSettings;->mHeaderIndexMap:Ljava/util/HashMap;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/HeaderListManager;->getHeaderList(Ljava/util/List;Ljava/util/HashMap;)V

    goto/16 :goto_3

    .line 2262
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/GridSettings;->listManager:Lcom/android/settings/HeaderListManager;

    move-object/from16 v20, v0

    const/16 v21, 0x4

    invoke-virtual/range {v20 .. v21}, Lcom/android/settings/HeaderListManager;->setPosition(I)V

    .line 2263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/GridSettings;->listManager:Lcom/android/settings/HeaderListManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/GridSettings;->mHeaderIndexMap:Ljava/util/HashMap;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/HeaderListManager;->getHeaderList(Ljava/util/List;Ljava/util/HashMap;)V

    goto/16 :goto_3

    .line 2266
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/GridSettings;->listManager:Lcom/android/settings/HeaderListManager;

    move-object/from16 v20, v0

    const/16 v21, 0x5

    invoke-virtual/range {v20 .. v21}, Lcom/android/settings/HeaderListManager;->setPosition(I)V

    .line 2267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/GridSettings;->listManager:Lcom/android/settings/HeaderListManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/GridSettings;->mHeaderIndexMap:Ljava/util/HashMap;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/HeaderListManager;->getHeaderList(Ljava/util/List;Ljava/util/HashMap;)V

    goto/16 :goto_3

    .line 2282
    .end local v8    # "bar":Landroid/app/ActionBar;
    .end local v16    # "mTabDevTemp":Z
    .end local v17    # "mTabIndex":I
    :cond_1d
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v6

    goto/16 :goto_4

    .line 2283
    .restart local v6    # "afterLength":I
    :cond_1e
    const/4 v13, 0x0

    goto/16 :goto_5

    .line 2289
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/GridSettings;->listManager:Lcom/android/settings/HeaderListManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/settings/HeaderListManager;->getPosition()I

    move-result v18

    goto/16 :goto_6

    .line 2308
    .restart local v7    # "args":Landroid/os/Bundle;
    .restart local v10    # "header":Landroid/preference/PreferenceActivity$Header;
    .restart local v11    # "i":I
    .restart local v18    # "pos":I
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/GridSettings;->mSearchFragmentBundle:Landroid/os/Bundle;

    move-object/from16 v20, v0

    if-eqz v20, :cond_14

    .line 2309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/GridSettings;->mSearchFragmentBundle:Landroid/os/Bundle;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    goto/16 :goto_8

    .line 2319
    .end local v7    # "args":Landroid/os/Bundle;
    :cond_21
    iget-wide v0, v10, Landroid/preference/PreferenceActivity$Header;->id:J

    move-wide/from16 v20, v0

    const-wide/32 v22, 0x7f1006ab

    cmp-long v20, v20, v22

    if-eqz v20, :cond_22

    iget-wide v0, v10, Landroid/preference/PreferenceActivity$Header;->id:J

    move-wide/from16 v20, v0

    const-wide/32 v22, 0x7f10072c

    cmp-long v20, v20, v22

    if-eqz v20, :cond_22

    iget-wide v0, v10, Landroid/preference/PreferenceActivity$Header;->id:J

    move-wide/from16 v20, v0

    const-wide/32 v22, 0x7f1006ac

    cmp-long v20, v20, v22

    if-nez v20, :cond_23

    .line 2325
    :cond_22
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/GridSettings;->getListView()Landroid/widget/ListView;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 2326
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/GridSettings;->getListView()Landroid/widget/ListView;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Landroid/widget/ListView;->setSelection(I)V

    goto/16 :goto_9

    .line 2328
    :cond_23
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/GridSettings;->getIntent()Landroid/content/Intent;

    move-result-object v20

    const-string v21, "extra_from_search"

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2329
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/GridSettings;->getListView()Landroid/widget/ListView;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Landroid/widget/ListView;->setSelection(I)V

    .line 2330
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11}, Lcom/android/settings/GridSettings;->onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V

    goto/16 :goto_9

    .line 2334
    :cond_24
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/GridSettings;->getListView()Landroid/widget/ListView;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Landroid/widget/ListView;->setSelection(I)V

    .line 2335
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11}, Lcom/android/settings/GridSettings;->onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V

    goto/16 :goto_9

    .line 2297
    .end local v10    # "header":Landroid/preference/PreferenceActivity$Header;
    :cond_25
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_7

    .line 2239
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;
    .locals 5
    .param p1, "fragmentName"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "titleRes"    # I
    .param p4, "shortTitleRes"    # I

    .prologue
    const/4 v4, 0x1

    .line 1804
    invoke-super {p0, p1, p2, p3, p4}, Landroid/preference/PreferenceActivity;->onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;

    move-result-object v1

    .line 1809
    .local v1, "intent":Landroid/content/Intent;
    const-class v2, Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-class v2, Lcom/android/settings/DreamSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-class v2, Lcom/android/settings/location/LocationSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-class v2, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-class v2, Lcom/android/settings/print/PrintSettingsFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-class v2, Lcom/android/settings/print/PrintServiceSettingsFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1820
    :cond_0
    sget-object v2, Lcom/android/settings/GridSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/emergencymode/EmergencyManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v0

    .line 1821
    .local v0, "em":Lcom/sec/android/emergencymode/EmergencyManager;
    invoke-virtual {v0}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1822
    const-string v2, "settings:ui_options"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1830
    .end local v0    # "em":Lcom/sec/android/emergencymode/EmergencyManager;
    :cond_1
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1831
    const-class v2, Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1832
    sget-object v2, Lcom/android/settings/GridSettings;->LOG_TAG:Ljava/lang/String;

    const-string v3, "send split"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1833
    const-string v2, "settings:ui_options"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1837
    :cond_2
    const-class v2, Lcom/android/settings/SubSettings;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1838
    return-object v1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 1375
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1377
    iget-object v2, p0, Lcom/android/settings/GridSettings;->pager:Landroid/support/v4/view/ViewPager;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/settings/GridSettings;->mPhoneTabStyle:Z

    if-eqz v2, :cond_0

    .line 1378
    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    .line 1379
    .local v1, "bar":Landroid/app/ActionBar;
    new-instance v0, Lcom/android/settings/GridSettings$ViewPagerAdapter;

    invoke-direct {v0, p0, p0}, Lcom/android/settings/GridSettings$ViewPagerAdapter;-><init>(Lcom/android/settings/GridSettings;Landroid/content/Context;)V

    .line 1380
    .local v0, "adapter":Lcom/android/settings/GridSettings$ViewPagerAdapter;
    iget-object v2, p0, Lcom/android/settings/GridSettings;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 1381
    iget-object v2, p0, Lcom/android/settings/GridSettings;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/app/ActionBar;->getSelectedNavigationIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 1384
    .end local v0    # "adapter":Lcom/android/settings/GridSettings$ViewPagerAdapter;
    .end local v1    # "bar":Landroid/app/ActionBar;
    :cond_0
    iget-object v2, p0, Lcom/android/settings/GridSettings;->mGridcontainer:Lcom/android/settings/grid/GridContainer;

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isGridListUIEnabeld()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1385
    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 1386
    iget-object v2, p0, Lcom/android/settings/GridSettings;->mGridcontainer:Lcom/android/settings/grid/GridContainer;

    iget-object v3, p0, Lcom/android/settings/GridSettings;->mGridcontainer:Lcom/android/settings/grid/GridContainer;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/android/settings/grid/GridContainer;->setNumColumns(I)V

    .line 1390
    :goto_0
    iget-object v2, p0, Lcom/android/settings/GridSettings;->mGridcontainer:Lcom/android/settings/grid/GridContainer;

    invoke-virtual {v2}, Lcom/android/settings/grid/GridContainer;->invalidate()V

    .line 1393
    :cond_1
    return-void

    .line 1388
    :cond_2
    iget-object v2, p0, Lcom/android/settings/GridSettings;->mGridcontainer:Lcom/android/settings/grid/GridContainer;

    iget-object v3, p0, Lcom/android/settings/GridSettings;->mGridcontainer:Lcom/android/settings/grid/GridContainer;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/android/settings/grid/GridContainer;->setNumColumns(I)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 624
    invoke-direct {p0}, Lcom/android/settings/GridSettings;->populateKnoxCustomSettingsMap()V

    .line 627
    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "settings:ui_options"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 628
    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string v10, "settings:ui_options"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/view/Window;->setUiOptions(I)V

    .line 630
    :cond_0
    sget-object v8, Lcom/android/settings/GridSettings;->LOG_TAG:Ljava/lang/String;

    const-string v9, "onCreate"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    const/4 v6, 0x0

    .line 632
    .local v6, "position":I
    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "prevScreen"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 633
    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "prevScreen"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 636
    :cond_1
    sput-object p0, Lcom/android/settings/GridSettings;->mContext:Landroid/content/Context;

    .line 637
    sget-object v8, Lcom/android/settings/GridSettings;->mContext:Landroid/content/Context;

    invoke-direct {p0, v8}, Lcom/android/settings/GridSettings;->isContainerOnlyMode(Landroid/content/Context;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/settings/GridSettings;->isKioskContainer:Z

    .line 638
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lcom/android/settings/GridSettings;->sSalesCode:Ljava/lang/String;

    .line 639
    invoke-static {p0}, Lcom/android/settings/Utils;->isEnableDockSettings(Landroid/content/Context;)Z

    move-result v8

    sput-boolean v8, Lcom/android/settings/GridSettings;->sIsEnableDockSettings:Z

    .line 643
    sget-object v8, Lcom/android/settings/GridSettings;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/settings/Utils;->isDualFolderType(Landroid/content/Context;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/settings/GridSettings;->mDualFoldertype:Z

    .line 644
    sget-object v8, Lcom/android/settings/GridSettings;->mContext:Landroid/content/Context;

    const-string v9, "statusbar"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/StatusBarManager;

    iput-object v8, p0, Lcom/android/settings/GridSettings;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 645
    iget-boolean v8, p0, Lcom/android/settings/GridSettings;->mDualFoldertype:Z

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/settings/GridSettings;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-eqz v8, :cond_2

    .line 649
    :cond_2
    const-string v8, "development"

    const/4 v9, 0x0

    invoke-virtual {p0, v8, v9}, Lcom/android/settings/GridSettings;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/GridSettings;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    .line 651
    sget-object v8, Lcom/android/settings/GridSettings;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/settings/Utils;->getTetheringTitle(Landroid/content/Context;)I

    move-result v8

    iput v8, p0, Lcom/android/settings/GridSettings;->tetherTitleRes:I

    .line 655
    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "settings_listui"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 656
    const-string v8, "accessibility"

    invoke-virtual {p0, v8}, Lcom/android/settings/GridSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/accessibility/AccessibilityManager;

    iput-object v8, p0, Lcom/android/settings/GridSettings;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 658
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v8

    if-eqz v8, :cond_19

    .line 659
    const-string v8, "com.android.settings.GridSettings"

    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getComponentName()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_15

    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "settings_gridui"

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_15

    const/4 v8, 0x1

    :goto_0
    iput-boolean v8, p0, Lcom/android/settings/GridSettings;->isGridView:Z

    .line 662
    invoke-static {}, Lcom/android/settings/Utils;->isGridListUIEnabeld()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 663
    iget-boolean v8, p0, Lcom/android/settings/GridSettings;->isGridView:Z

    if-eqz v8, :cond_16

    .line 664
    const/4 v8, 0x1

    sput-boolean v8, Lcom/android/settings/GridSettings;->isListView:Z

    .line 665
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/settings/GridSettings;->isGridView:Z

    .line 666
    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "settings_gridui"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 673
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "settings_gridui"

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_18

    const/4 v8, 0x1

    :goto_2
    iput-boolean v8, p0, Lcom/android/settings/GridSettings;->mPhoneTabStyle:Z

    .line 681
    :goto_3
    sget-object v8, Lcom/android/settings/GridSettings;->LOG_TAG:Ljava/lang/String;

    const-string v9, "listManager is init!!"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    new-instance v8, Lcom/android/settings/HeaderListManager;

    invoke-direct {v8, p0}, Lcom/android/settings/HeaderListManager;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/android/settings/GridSettings;->listManager:Lcom/android/settings/HeaderListManager;

    .line 686
    sget-object v8, Lcom/android/settings/GridSettings;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/sec/android/emergencymode/EmergencyManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v2

    .line 687
    .local v2, "em":Lcom/sec/android/emergencymode/EmergencyManager;
    invoke-virtual {v2}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 688
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/settings/GridSettings;->mPhoneTabStyle:Z

    .line 689
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/settings/GridSettings;->isGridView:Z

    .line 694
    :cond_4
    iget-boolean v8, p0, Lcom/android/settings/GridSettings;->mPhoneTabStyle:Z

    if-eqz v8, :cond_5

    .line 695
    const v8, 0x7f0b0081

    invoke-virtual {p0, v8}, Lcom/android/settings/GridSettings;->setTheme(I)V

    .line 696
    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->preventTabsEmbeddedOnActionBar()V

    .line 699
    :cond_5
    invoke-direct {p0}, Lcom/android/settings/GridSettings;->getMetaData()V

    .line 700
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/settings/GridSettings;->mInLocalHeaderSwitch:Z

    .line 701
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 702
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/settings/GridSettings;->mInLocalHeaderSwitch:Z

    .line 705
    iget-boolean v8, p0, Lcom/android/settings/GridSettings;->isGridView:Z

    if-eqz v8, :cond_7

    .line 706
    invoke-static {}, Lcom/android/settings/Utils;->isGridListUIEnabeld()Z

    move-result v8

    if-nez v8, :cond_6

    .line 707
    new-instance v8, Landroid/view/ScaleGestureDetector;

    sget-object v9, Lcom/android/settings/GridSettings;->mContext:Landroid/content/Context;

    new-instance v10, Lcom/android/settings/GridSettings$ScaleListner;

    const/4 v11, 0x0

    invoke-direct {v10, p0, v11}, Lcom/android/settings/GridSettings$ScaleListner;-><init>(Lcom/android/settings/GridSettings;Lcom/android/settings/GridSettings$1;)V

    invoke-direct {v8, v9, v10}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v8, p0, Lcom/android/settings/GridSettings;->mSGD:Landroid/view/ScaleGestureDetector;

    .line 708
    :cond_6
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/android/settings/GridSettings;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 712
    :cond_7
    invoke-static {}, Lcom/android/settings/Utils;->isGridListUIEnabeld()Z

    move-result v8

    if-eqz v8, :cond_9

    sget-boolean v8, Lcom/android/settings/GridSettings;->isListView:Z

    if-eqz v8, :cond_9

    .line 713
    sget-object v8, Lcom/android/settings/GridSettings;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/sec/android/emergencymode/EmergencyManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v2

    .line 714
    invoke-virtual {v2}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode()Z

    move-result v8

    if-nez v8, :cond_8

    .line 715
    invoke-direct {p0}, Lcom/android/settings/GridSettings;->addQuickSettingsView()V

    .line 717
    :cond_8
    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getListView()Landroid/widget/ListView;

    move-result-object v5

    .line 718
    .local v5, "lv":Landroid/widget/ListView;
    invoke-virtual {v5}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v8

    iput v8, p0, Lcom/android/settings/GridSettings;->headerViewCnt:I

    .line 719
    new-instance v8, Lcom/android/settings/GridSettings$4;

    invoke-direct {v8, p0, v5}, Lcom/android/settings/GridSettings$4;-><init>(Lcom/android/settings/GridSettings;Landroid/widget/ListView;)V

    invoke-virtual {v5, v8}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 733
    .end local v5    # "lv":Landroid/widget/ListView;
    :cond_9
    iget-boolean v8, p0, Lcom/android/settings/GridSettings;->mPhoneTabStyle:Z

    if-eqz v8, :cond_b

    .line 734
    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    .line 736
    .local v1, "bar":Landroid/app/ActionBar;
    const/4 v8, 0x2

    invoke-virtual {v1, v8}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 737
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 738
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 739
    invoke-virtual {v1}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v8

    new-instance v9, Lcom/android/settings/GridSettings$SettingsTabListener;

    const/4 v10, 0x0

    invoke-direct {v9, p0, v10}, Lcom/android/settings/GridSettings$SettingsTabListener;-><init>(Lcom/android/settings/GridSettings;Lcom/android/settings/GridSettings$1;)V

    invoke-virtual {v8, v9}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v8

    const v9, 0x7f0a1da5

    invoke-virtual {v8, v9}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 744
    :cond_a
    invoke-virtual {v1}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v8

    new-instance v9, Lcom/android/settings/GridSettings$SettingsTabListener;

    const/4 v10, 0x0

    invoke-direct {v9, p0, v10}, Lcom/android/settings/GridSettings$SettingsTabListener;-><init>(Lcom/android/settings/GridSettings;Lcom/android/settings/GridSettings$1;)V

    invoke-virtual {v8, v9}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v8

    const v9, 0x7f0a0fee

    invoke-virtual {v8, v9}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 748
    invoke-virtual {v1}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v8

    new-instance v9, Lcom/android/settings/GridSettings$SettingsTabListener;

    const/4 v10, 0x0

    invoke-direct {v9, p0, v10}, Lcom/android/settings/GridSettings$SettingsTabListener;-><init>(Lcom/android/settings/GridSettings;Lcom/android/settings/GridSettings$1;)V

    invoke-virtual {v8, v9}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v8

    const v9, 0x7f0a1b97

    invoke-virtual {v8, v9}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 752
    invoke-virtual {v1}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v8

    new-instance v9, Lcom/android/settings/GridSettings$SettingsTabListener;

    const/4 v10, 0x0

    invoke-direct {v9, p0, v10}, Lcom/android/settings/GridSettings$SettingsTabListener;-><init>(Lcom/android/settings/GridSettings;Lcom/android/settings/GridSettings$1;)V

    invoke-virtual {v8, v9}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v8

    const v9, 0x7f0a1b98

    invoke-virtual {v8, v9}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 756
    invoke-virtual {v1}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v8

    new-instance v9, Lcom/android/settings/GridSettings$SettingsTabListener;

    const/4 v10, 0x0

    invoke-direct {v9, p0, v10}, Lcom/android/settings/GridSettings$SettingsTabListener;-><init>(Lcom/android/settings/GridSettings;Lcom/android/settings/GridSettings$1;)V

    invoke-virtual {v8, v9}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v8

    const v9, 0x7f0a1b99

    invoke-virtual {v8, v9}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 760
    invoke-virtual {v1}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v8

    new-instance v9, Lcom/android/settings/GridSettings$SettingsTabListener;

    const/4 v10, 0x0

    invoke-direct {v9, p0, v10}, Lcom/android/settings/GridSettings$SettingsTabListener;-><init>(Lcom/android/settings/GridSettings;Lcom/android/settings/GridSettings$1;)V

    invoke-virtual {v8, v9}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v8

    const v9, 0x7f0a15ab

    invoke-virtual {v8, v9}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 764
    invoke-static {}, Lcom/android/settings/Utils;->isGridListUIEnabeld()Z

    move-result v8

    if-eqz v8, :cond_b

    .line 765
    const/4 v8, 0x3

    invoke-virtual {v1, v8}, Landroid/app/ActionBar;->getTabAt(I)Landroid/app/ActionBar$Tab;

    move-result-object v8

    const v9, 0x7f0a1b9b

    invoke-virtual {v8, v9}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    .line 766
    const/4 v8, 0x4

    invoke-virtual {v1, v8}, Landroid/app/ActionBar;->getTabAt(I)Landroid/app/ActionBar$Tab;

    move-result-object v8

    const v9, 0x7f0a00c9

    invoke-virtual {v8, v9}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    .line 770
    .end local v1    # "bar":Landroid/app/ActionBar;
    :cond_b
    iget-boolean v8, p0, Lcom/android/settings/GridSettings;->mPhoneTabStyle:Z

    if-eqz v8, :cond_c

    .line 771
    const v8, 0x7f04022a

    invoke-virtual {p0, v8}, Lcom/android/settings/GridSettings;->setContentView(I)V

    .line 773
    const v8, 0x7f100066

    invoke-virtual {p0, v8}, Lcom/android/settings/GridSettings;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/support/v4/view/ViewPager;

    iput-object v8, p0, Lcom/android/settings/GridSettings;->pager:Landroid/support/v4/view/ViewPager;

    .line 774
    new-instance v0, Lcom/android/settings/GridSettings$ViewPagerAdapter;

    invoke-direct {v0, p0, p0}, Lcom/android/settings/GridSettings$ViewPagerAdapter;-><init>(Lcom/android/settings/GridSettings;Landroid/content/Context;)V

    .line 775
    .local v0, "adapter":Lcom/android/settings/GridSettings$ViewPagerAdapter;
    iget-object v8, p0, Lcom/android/settings/GridSettings;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v8, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 776
    iget-object v8, p0, Lcom/android/settings/GridSettings;->pager:Landroid/support/v4/view/ViewPager;

    new-instance v9, Lcom/android/settings/GridSettings$5;

    invoke-direct {v9, p0}, Lcom/android/settings/GridSettings$5;-><init>(Lcom/android/settings/GridSettings;)V

    invoke-virtual {v8, v9}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 799
    .end local v0    # "adapter":Lcom/android/settings/GridSettings$ViewPagerAdapter;
    :cond_c
    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->onIsHidingHeaders()Z

    move-result v8

    if-nez v8, :cond_d

    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->onIsMultiPane()Z

    move-result v8

    if-eqz v8, :cond_d

    .line 800
    iget v8, p0, Lcom/android/settings/GridSettings;->mTopLevelHeaderId:I

    invoke-direct {p0, v8}, Lcom/android/settings/GridSettings;->highlightHeader(I)V

    .line 803
    const v8, 0x7f0a01d6

    invoke-virtual {p0, v8}, Lcom/android/settings/GridSettings;->setTitle(I)V

    .line 807
    :cond_d
    if-eqz p1, :cond_e

    .line 808
    const-string v8, "com.android.settings.CURRENT_HEADER"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceActivity$Header;

    iput-object v8, p0, Lcom/android/settings/GridSettings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 809
    const-string v8, "com.android.settings.PARENT_HEADER"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceActivity$Header;

    iput-object v8, p0, Lcom/android/settings/GridSettings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 813
    :cond_e
    if-eqz p1, :cond_f

    iget-object v8, p0, Lcom/android/settings/GridSettings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v8, :cond_f

    .line 815
    iget-object v8, p0, Lcom/android/settings/GridSettings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v8, v8, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    const/4 v9, 0x0

    invoke-virtual {p0, v8, v9}, Lcom/android/settings/GridSettings;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 818
    :cond_f
    iget-object v8, p0, Lcom/android/settings/GridSettings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v8, :cond_10

    .line 819
    iget-object v8, p0, Lcom/android/settings/GridSettings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v8, v8, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    const/4 v9, 0x0

    new-instance v10, Lcom/android/settings/GridSettings$6;

    invoke-direct {v10, p0}, Lcom/android/settings/GridSettings$6;-><init>(Lcom/android/settings/GridSettings;)V

    invoke-virtual {p0, v8, v9, v10}, Lcom/android/settings/GridSettings;->setParentTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    .line 828
    :cond_10
    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->onIsMultiPane()Z

    move-result v8

    if-eqz v8, :cond_11

    .line 829
    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 830
    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 835
    :cond_11
    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v8

    if-eqz v8, :cond_14

    .line 836
    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 837
    .local v4, "intent":Landroid/content/Intent;
    const-string v8, "extra_from_search"

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    sput-boolean v8, Lcom/android/settings/GridSettings;->mIsFromSearch:Z

    .line 838
    sget-boolean v8, Lcom/android/settings/GridSettings;->mIsFromSearch:Z

    if-eqz v8, :cond_14

    .line 839
    sget-boolean v8, Lcom/android/settings/GridSettings;->mIsFromSearch:Z

    iput-boolean v8, p0, Lcom/android/settings/GridSettings;->mOpenSearchHierarchy:Z

    .line 840
    const-string v8, "extra_header_id"

    const-wide/16 v10, -0x1

    invoke-virtual {v4, v8, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    sput-wide v8, Lcom/android/settings/GridSettings;->mSearchHeaderID:J

    .line 841
    const-string v8, "extra_setting_value"

    const/4 v9, -0x1

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    sput v8, Lcom/android/settings/GridSettings;->mSearchSettingValue:I

    .line 842
    const-string v8, "extra_fragment_bundle_key"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/GridSettings;->mSearchFragmentBundle:Landroid/os/Bundle;

    .line 843
    const-string v8, "extra_second_fragment_bundle_key"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/GridSettings;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    .line 844
    iget-object v8, p0, Lcom/android/settings/GridSettings;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    if-eqz v8, :cond_12

    .line 845
    const-string v8, "SettingsSearch"

    iget-object v9, p0, Lcom/android/settings/GridSettings;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    const-string v10, "extra_parent_preference_key"

    const-string v11, "None"

    invoke-virtual {v9, v10, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    :cond_12
    const-string v8, "extra_depth_counter_key"

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lcom/android/settings/GridSettings;->mSearchDepthCounter:I

    .line 848
    iget v8, p0, Lcom/android/settings/GridSettings;->mSearchDepthCounter:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/android/settings/GridSettings;->mSearchDepthCounter:I

    .line 849
    sget v8, Lcom/android/settings/GridSettings;->mSearchSettingValue:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_1c

    const/4 v8, 0x1

    :goto_4
    sput-boolean v8, Lcom/android/settings/GridSettings;->mDirectSettingEnabler:Z

    .line 851
    sget-wide v8, Lcom/android/settings/GridSettings;->mSearchHeaderID:J

    const-wide/32 v10, 0x7f1006a2

    cmp-long v8, v8, v10

    if-nez v8, :cond_14

    .line 852
    const-string v3, "com.vlingo.midas.gui.ConversationActivity"

    .line 853
    .local v3, "fragment":Ljava/lang/String;
    sget-object v8, Lcom/android/settings/GridSettings;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/settings/Utils;->checkVlingoAccepted(Landroid/content/Context;)Z

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_13

    .line 854
    const-string v3, "com.vlingo.midas.settings.SettingsScreen"

    .line 856
    :cond_13
    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.intent.action.MAIN"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 857
    .local v7, "searchIntent":Landroid/content/Intent;
    const-string v8, "com.vlingo.midas"

    invoke-virtual {v7, v8, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 858
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/settings/GridSettings;->mOpenSearchHierarchy:Z

    .line 859
    invoke-virtual {p0, v7}, Lcom/android/settings/GridSettings;->startActivity(Landroid/content/Intent;)V

    .line 864
    .end local v3    # "fragment":Ljava/lang/String;
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v7    # "searchIntent":Landroid/content/Intent;
    :cond_14
    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getListView()Landroid/widget/ListView;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 865
    return-void

    .line 659
    .end local v2    # "em":Lcom/sec/android/emergencymode/EmergencyManager;
    :cond_15
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 668
    :cond_16
    const-string v8, "com.android.settings.GridSettings"

    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getComponentName()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_17

    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "settings_gridui"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-nez v8, :cond_17

    const/4 v8, 0x1

    :goto_5
    sput-boolean v8, Lcom/android/settings/GridSettings;->isListView:Z

    goto/16 :goto_1

    :cond_17
    const/4 v8, 0x0

    goto :goto_5

    .line 673
    :cond_18
    const/4 v8, 0x0

    goto/16 :goto_2

    .line 675
    :cond_19
    const-string v8, "com.android.settings.GridSettings"

    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getComponentName()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1a

    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "settings_gridui"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1a

    const/4 v8, 0x1

    :goto_6
    iput-boolean v8, p0, Lcom/android/settings/GridSettings;->isGridView:Z

    .line 678
    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "settings_gridui"

    const/4 v10, 0x2

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_1b

    const/4 v8, 0x1

    :goto_7
    iput-boolean v8, p0, Lcom/android/settings/GridSettings;->mPhoneTabStyle:Z

    goto/16 :goto_3

    .line 675
    :cond_1a
    const/4 v8, 0x0

    goto :goto_6

    .line 678
    :cond_1b
    const/4 v8, 0x0

    goto :goto_7

    .line 849
    .restart local v2    # "em":Lcom/sec/android/emergencymode/EmergencyManager;
    .restart local v4    # "intent":Landroid/content/Intent;
    :cond_1c
    const/4 v8, 0x0

    goto/16 :goto_4
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v4, 0x0

    .line 871
    sget-object v2, Lcom/android/settings/GridSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/emergencymode/EmergencyManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v0

    .line 872
    .local v0, "em":Lcom/sec/android/emergencymode/EmergencyManager;
    invoke-virtual {v0}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 873
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    .line 899
    :goto_0
    return v2

    .line 876
    :cond_0
    const-string v2, "com.android.settings.GridSettings"

    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 877
    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/settings/GridSettings;->mContext:Landroid/content/Context;

    const-string v3, "com.sec.providers.settingsearch"

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 878
    const/16 v2, 0xc8

    const v3, 0x7f0a06a9

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 879
    .local v1, "item":Landroid/view/MenuItem;
    const v2, 0x7f020013

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 880
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    .line 883
    .end local v1    # "item":Landroid/view/MenuItem;
    :cond_1
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 884
    invoke-static {}, Lcom/android/settings/Utils;->isGridListUIEnabeld()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/settings/Utils;->isConceptForVZW()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {}, Lcom/android/settings/Utils;->isConceptForSPR()Z

    move-result v2

    if-nez v2, :cond_3

    .line 885
    :cond_2
    const/16 v2, 0xc9

    const v3, 0x7f0a0038

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 887
    :cond_3
    const/16 v2, 0xca

    const v3, 0x7f0a003c

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 891
    :cond_4
    sget-object v2, Lcom/android/settings/GridSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isSupportOnlineHelpMenu(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v2

    if-nez v2, :cond_6

    :cond_5
    sget-object v2, Lcom/android/settings/GridSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isSupportOfflineHelpMenu(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 893
    :cond_6
    const/16 v2, 0xcc

    const v3, 0x7f0a1653

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f02020d

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 899
    :cond_7
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 1579
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 1585
    iget-object v0, p0, Lcom/android/settings/GridSettings;->viewTypeDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/GridSettings;->viewTypeDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1586
    iget-object v0, p0, Lcom/android/settings/GridSettings;->viewTypeDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1587
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/GridSettings;->viewTypeDialog:Landroid/app/Dialog;

    .line 1589
    :cond_0
    return-void
.end method

.method public onGetInitialHeader()Landroid/preference/PreferenceActivity$Header;
    .locals 3

    .prologue
    .line 1788
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings/GridSettings;->getStartingFragmentClass(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 1789
    .local v0, "fragmentClass":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1790
    new-instance v1, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v1}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    .line 1791
    .local v1, "header":Landroid/preference/PreferenceActivity$Header;
    iput-object v0, v1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 1792
    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v1, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 1793
    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, v1, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    .line 1794
    iput-object v1, p0, Lcom/android/settings/GridSettings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 1798
    .end local v1    # "header":Landroid/preference/PreferenceActivity$Header;
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/settings/GridSettings;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    goto :goto_0
.end method

.method public onGridItemSelected(Landroid/preference/PreferenceActivity$Header;I)V
    .locals 6
    .param p1, "header"    # Landroid/preference/PreferenceActivity$Header;
    .param p2, "position"    # I

    .prologue
    .line 3281
    const/4 v0, 0x0

    .line 3282
    .local v0, "isInScaleProgress":Z
    iget-object v1, p0, Lcom/android/settings/GridSettings;->mSGD:Landroid/view/ScaleGestureDetector;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/GridSettings;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v1}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v0

    .line 3283
    :cond_0
    sget-object v1, Lcom/android/settings/GridSettings;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSGD : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/GridSettings;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "   isExpanding : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/settings/GridSettings;->isExpanding:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  isInScaleProgress :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3284
    iget-boolean v1, p0, Lcom/android/settings/GridSettings;->isExpanding:Z

    if-nez v1, :cond_3

    .line 3285
    iget-wide v2, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v4, 0x7f10000b

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    .line 3286
    invoke-direct {p0}, Lcom/android/settings/GridSettings;->makeFavoriteIntent()Landroid/content/Intent;

    move-result-object v1

    const/16 v2, 0x2710

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/GridSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 3293
    :cond_1
    :goto_0
    return-void

    .line 3288
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/GridSettings;->onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V

    goto :goto_0

    .line 3291
    :cond_3
    iget-object v1, p0, Lcom/android/settings/GridSettings;->mGridSettingsFragment:Lcom/android/settings/grid/GridSettingsFragment;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/GridSettings;->mGridSettingsFragment:Lcom/android/settings/grid/GridSettingsFragment;

    invoke-virtual {v1}, Lcom/android/settings/grid/GridSettingsFragment;->clearFocus()V

    goto :goto_0
.end method

.method public onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V
    .locals 18
    .param p1, "header"    # Landroid/preference/PreferenceActivity$Header;
    .param p2, "position"    # I

    .prologue
    .line 3329
    const/4 v11, 0x0

    .line 3333
    .local v11, "revert":Z
    move-object/from16 v0, p1

    iget-wide v14, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v16, 0x7f1006d2

    cmp-long v14, v14, v16

    if-nez v14, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v14

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/settings/GridSettings;->isKioskContainer:Z

    if-eqz v14, :cond_0

    .line 3336
    new-instance v4, Landroid/content/ComponentName;

    const-string v14, "com.android.settings"

    const-string v15, "com.android.settings.Settings$DeviceInfoSettingsActivity"

    invoke-direct {v4, v14, v15}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3338
    .local v4, "cn":Landroid/content/ComponentName;
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/settings/GridSettings;->getPersonalIntent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v8

    .line 3340
    .local v8, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/settings/GridSettings;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 3435
    .end local v4    # "cn":Landroid/content/ComponentName;
    .end local v8    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 3347
    :cond_0
    sget-object v14, Lcom/android/settings/GridSettings;->mContext:Landroid/content/Context;

    invoke-static {v14}, Lcom/sec/android/emergencymode/EmergencyManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v5

    .line 3348
    .local v5, "em":Lcom/sec/android/emergencymode/EmergencyManager;
    invoke-virtual {v5}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode()Z

    move-result v14

    if-eqz v14, :cond_7

    .line 3349
    move-object/from16 v0, p1

    iget-wide v14, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v16, 0x7f100741

    cmp-long v14, v14, v16

    if-nez v14, :cond_7

    .line 3350
    sget-object v14, Lcom/android/settings/GridSettings;->mContext:Landroid/content/Context;

    invoke-static {v14}, Lcom/android/settings/Utils;->isAirplaneModeEnabled(Landroid/content/Context;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 3351
    sget-object v14, Lcom/android/settings/GridSettings;->mContext:Landroid/content/Context;

    const v15, 0x7f0a01da

    const/16 v16, 0x1

    invoke-static/range {v14 .. v16}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 3354
    :cond_1
    const-string v14, "gsm.sim.currentcardstatus"

    const/4 v15, 0x0

    const-string v16, "9"

    invoke-static/range {v14 .. v16}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3355
    .local v2, "cardStatus1":Ljava/lang/String;
    const-string v14, "gsm.sim.currentcardstatus"

    const/4 v15, 0x1

    const-string v16, "9"

    invoke-static/range {v14 .. v16}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3356
    .local v3, "cardStatus2":Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/Utils;->isMultisimModel()Z

    move-result v14

    if-eqz v14, :cond_7

    .line 3357
    sget-object v14, Lcom/android/settings/GridSettings;->LOG_TAG:Ljava/lang/String;

    const-string v15, "Multi_SIM Option alive !!"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3358
    sget-object v14, Lcom/android/settings/GridSettings;->mContext:Landroid/content/Context;

    invoke-static {v14}, Lcom/samsung/android/telephony/MultiSimManager;->getEnabledSimCount(Landroid/content/Context;)I

    move-result v14

    if-nez v14, :cond_2

    .line 3359
    new-instance v7, Landroid/app/AlertDialog$Builder;

    sget-object v14, Lcom/android/settings/GridSettings;->mContext:Landroid/content/Context;

    invoke-direct {v7, v14}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3360
    .local v7, "insertSimPopup":Landroid/app/AlertDialog$Builder;
    const v14, 0x7f0a0d9e

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/GridSettings;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/settings/Utils;->replaceSIMString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v14

    const v15, 0x7f0a0d9f

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/settings/GridSettings;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/android/settings/Utils;->replaceSIMString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v14

    const v15, 0x104000a

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3363
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 3366
    .end local v7    # "insertSimPopup":Landroid/app/AlertDialog$Builder;
    :cond_2
    sget-object v14, Lcom/android/settings/GridSettings;->LOG_TAG:Ljava/lang/String;

    const-string v15, "Multi_SIM getInsertedSimNum 2 !!"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3367
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 3368
    .local v6, "i":Landroid/content/Intent;
    const-string v14, "CDMA"

    invoke-static {v14}, Lcom/android/settings/Utils;->isDuosModel(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 3369
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 3370
    .local v12, "simState1":I
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 3373
    .local v13, "simState2":I
    const/4 v14, 0x3

    if-ne v12, v14, :cond_3

    const/4 v14, 0x3

    if-ne v13, v14, :cond_3

    .line 3374
    const-string v14, "com.android.phone"

    const-string v15, "com.android.phone.MobileNetworkSettingsTab"

    invoke-virtual {v6, v14, v15}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3392
    .end local v12    # "simState1":I
    .end local v13    # "simState2":I
    :goto_1
    sget-object v14, Lcom/android/settings/GridSettings;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v6}, Lcom/android/settings/GridSettings;->startActivityWithCheck(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 3375
    .restart local v12    # "simState1":I
    .restart local v13    # "simState2":I
    :cond_3
    const/4 v14, 0x3

    if-eq v12, v14, :cond_4

    const/4 v14, 0x3

    if-eq v13, v14, :cond_4

    .line 3376
    new-instance v7, Landroid/app/AlertDialog$Builder;

    sget-object v14, Lcom/android/settings/GridSettings;->mContext:Landroid/content/Context;

    invoke-direct {v7, v14}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3377
    .restart local v7    # "insertSimPopup":Landroid/app/AlertDialog$Builder;
    const v14, 0x7f0a0d9e

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/GridSettings;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/settings/Utils;->replaceSIMString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v14

    const v15, 0x7f0a0d9f

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/settings/GridSettings;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/android/settings/Utils;->replaceSIMString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v14

    const v15, 0x104000a

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3380
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 3383
    .end local v7    # "insertSimPopup":Landroid/app/AlertDialog$Builder;
    :cond_4
    const/4 v10, 0x0

    .line 3384
    .local v10, "mExtra":I
    const/4 v14, 0x3

    if-ne v13, v14, :cond_5

    .line 3385
    const/4 v10, 0x1

    .line 3386
    :cond_5
    const-string v14, "sim_id"

    invoke-virtual {v6, v14, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3387
    const-string v14, "com.android.phone"

    const-string v15, "com.android.phone.MobileNetworkSettings"

    invoke-virtual {v6, v14, v15}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 3390
    .end local v10    # "mExtra":I
    .end local v12    # "simState1":I
    .end local v13    # "simState2":I
    :cond_6
    const-string v14, "com.android.phone"

    const-string v15, "com.android.phone.MobileNetworkSettings"

    invoke-virtual {v6, v14, v15}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 3400
    .end local v2    # "cardStatus1":Ljava/lang/String;
    .end local v3    # "cardStatus2":Ljava/lang/String;
    .end local v6    # "i":Landroid/content/Intent;
    :cond_7
    move-object/from16 v0, p1

    iget-wide v14, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v16, 0x7f100716

    cmp-long v14, v14, v16

    if-nez v14, :cond_a

    .line 3401
    new-instance v8, Landroid/content/Intent;

    const-string v14, "android.intent.action.MAIN"

    invoke-direct {v8, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3402
    .restart local v8    # "intent":Landroid/content/Intent;
    new-instance v14, Landroid/content/ComponentName;

    const-string v15, "com.bst.airmessage"

    const-string v16, "com.bst.airmessage.settings.AirMessageSettings"

    invoke-direct/range {v14 .. v16}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v14}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3405
    const/4 v9, 0x1

    .line 3407
    .local v9, "isCoverAttached":Z
    sget-object v14, Lcom/android/settings/GridSettings;->mContext:Landroid/content/Context;

    invoke-static {v14}, Lcom/android/settings/Utils;->isCoverVerified(Landroid/content/Context;)Z

    move-result v14

    if-eqz v14, :cond_8

    sget-object v14, Lcom/android/settings/GridSettings;->mContext:Landroid/content/Context;

    invoke-static {v14}, Lcom/android/settings/Utils;->getTypeOfCover(Landroid/content/Context;)I

    move-result v14

    if-nez v14, :cond_9

    .line 3408
    :cond_8
    const/4 v9, 0x0

    .line 3411
    :cond_9
    const-string v14, "S View cover attached"

    invoke-virtual {v8, v14, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3413
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/settings/GridSettings;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 3418
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v9    # "isCoverAttached":Z
    :cond_a
    invoke-super/range {p0 .. p2}, Landroid/preference/PreferenceActivity;->onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V

    .line 3430
    if-eqz v11, :cond_b

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/GridSettings;->mLastHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v14, :cond_b

    .line 3431
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/GridSettings;->mLastHeader:Landroid/preference/PreferenceActivity$Header;

    iget-wide v14, v14, Landroid/preference/PreferenceActivity$Header;->id:J

    long-to-int v14, v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings/GridSettings;->highlightHeader(I)V

    goto/16 :goto_0

    .line 3433
    :cond_b
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/GridSettings;->mLastHeader:Landroid/preference/PreferenceActivity$Header;

    goto/16 :goto_0
.end method

.method public onIsMultiPane()Z
    .locals 1

    .prologue
    .line 1637
    const/4 v0, 0x0

    return v0
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 1
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 2047
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1155
    const/16 v0, 0x54

    if-ne p1, v0, :cond_2

    .line 1156
    sget-object v0, Lcom/android/settings/GridSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isSupportSfinder(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1157
    :cond_0
    invoke-static {}, Lcom/android/settings/GridSettings;->callSearchMenu()V

    .line 1158
    :cond_1
    const/4 v0, 0x1

    .line 1160
    :goto_0
    return v0

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 1717
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 1720
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 1721
    iget-object v0, p0, Lcom/android/settings/GridSettings;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->onIsHidingHeaders()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->onIsMultiPane()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1722
    iget-object v0, p0, Lcom/android/settings/GridSettings;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    invoke-direct {p0, v0}, Lcom/android/settings/GridSettings;->switchToHeaderLocal(Landroid/preference/PreferenceActivity$Header;)V

    .line 1724
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 1726
    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 924
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 963
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    return v2

    .line 926
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->showDialog()V

    goto :goto_0

    .line 930
    :pswitch_2
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 931
    sget-object v2, Lcom/android/settings/GridSettings;->mContext:Landroid/content/Context;

    const-string v3, "com.android.settings"

    const-string v4, "CQST"

    invoke-static {v2, v3, v4}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 933
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/GridSettings;->makeFavoriteIntent()Landroid/content/Intent;

    move-result-object v2

    const/16 v3, 0x2710

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/GridSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 941
    :pswitch_3
    invoke-static {}, Lcom/android/settings/GridSettings;->callSearchMenu()V

    goto :goto_0

    .line 945
    :pswitch_4
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 946
    sget-object v2, Lcom/android/settings/GridSettings;->mContext:Landroid/content/Context;

    const-string v3, "com.android.settings"

    const-string v4, "HQST"

    invoke-static {v2, v3, v4}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 949
    :cond_1
    :try_start_0
    sget-object v2, Lcom/android/settings/GridSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isSupportOfflineHelpMenu(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 950
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.helphub.HELP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 951
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "helphub:category"

    const-string v3, "settings"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 952
    invoke-virtual {p0, v1}, Lcom/android/settings/GridSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 959
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 960
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    sget-object v2, Lcom/android/settings/GridSettings;->LOG_TAG:Ljava/lang/String;

    const-string v3, "ActivityNotFoundException : com.samsung.helphub.HELP"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 955
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :cond_2
    :try_start_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.helphub.HELP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 956
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v2, "helphub:section"

    const-string v3, "edit_quick_settings"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 957
    invoke-virtual {p0, v1}, Lcom/android/settings/GridSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 924
    nop

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public onPause()V
    .locals 7

    .prologue
    .line 1527
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 1529
    iget-object v5, p0, Lcom/android/settings/GridSettings;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v5, :cond_0

    .line 1531
    :try_start_0
    iget-object v5, p0, Lcom/android/settings/GridSettings;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v5}, Lcom/android/settings/GridSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1537
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/android/settings/GridSettings;->pager:Landroid/support/v4/view/ViewPager;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/settings/GridSettings;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v5}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v5

    if-lez v5, :cond_3

    .line 1538
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v5, p0, Lcom/android/settings/GridSettings;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v5}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 1539
    iget-object v5, p0, Lcom/android/settings/GridSettings;->mPagerListView:[Landroid/widget/ListView;

    aget-object v5, v5, v2

    if-nez v5, :cond_2

    .line 1538
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1532
    .end local v2    # "i":I
    :catch_0
    move-exception v1

    .line 1533
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 1540
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v2    # "i":I
    :cond_2
    iget-object v5, p0, Lcom/android/settings/GridSettings;->mPagerListView:[Landroid/widget/ListView;

    aget-object v5, v5, v2

    invoke-virtual {v5}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    .line 1541
    .local v4, "mPagerlistAdapter":Landroid/widget/ListAdapter;
    instance-of v5, v4, Lcom/android/settings/GridSettings$HeaderAdapter;

    if-eqz v5, :cond_1

    .line 1542
    check-cast v4, Lcom/android/settings/GridSettings$HeaderAdapter;

    .end local v4    # "mPagerlistAdapter":Landroid/widget/ListAdapter;
    invoke-virtual {v4}, Lcom/android/settings/GridSettings$HeaderAdapter;->pause()V

    goto :goto_2

    .line 1546
    .end local v2    # "i":I
    :cond_3
    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1547
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1548
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v5, "ActivityName"

    const-string v6, "com.android.settings.GridSettings"

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1549
    const-string v5, "register"

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1550
    iget-object v5, p0, Lcom/android/settings/GridSettings;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v5, v0}, Landroid/view/accessibility/AccessibilityManager;->assistantMenuUpdate(Landroid/os/Bundle;)V

    .line 1553
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_4
    iget-object v5, p0, Lcom/android/settings/GridSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v5, :cond_5

    .line 1555
    :try_start_1
    iget-object v5, p0, Lcom/android/settings/GridSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v5}, Lcom/android/settings/GridSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1560
    :cond_5
    :goto_3
    iget-object v5, p0, Lcom/android/settings/GridSettings;->mAirPlaneObserver:Landroid/database/ContentObserver;

    if-eqz v5, :cond_6

    .line 1562
    :try_start_2
    sget-object v5, Lcom/android/settings/GridSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/GridSettings;->mAirPlaneObserver:Landroid/database/ContentObserver;

    invoke-virtual {v5, v6}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1567
    :cond_6
    :goto_4
    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    .line 1568
    .local v3, "listAdapter":Landroid/widget/ListAdapter;
    instance-of v5, v3, Lcom/android/settings/GridSettings$HeaderAdapter;

    if-eqz v5, :cond_7

    .line 1569
    check-cast v3, Lcom/android/settings/GridSettings$HeaderAdapter;

    .end local v3    # "listAdapter":Landroid/widget/ListAdapter;
    invoke-virtual {v3}, Lcom/android/settings/GridSettings$HeaderAdapter;->pause()V

    .line 1572
    :cond_7
    iget-object v5, p0, Lcom/android/settings/GridSettings;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    iget-object v6, p0, Lcom/android/settings/GridSettings;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v5, v6}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 1574
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/settings/GridSettings;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 1575
    return-void

    .line 1556
    :catch_1
    move-exception v1

    .line 1557
    .restart local v1    # "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_3

    .line 1563
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v1

    .line 1564
    .restart local v1    # "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_4
.end method

.method public onPreferenceStartFragment(Landroid/preference/PreferenceFragment;Landroid/preference/Preference;)Z
    .locals 7
    .param p1, "caller"    # Landroid/preference/PreferenceFragment;
    .param p2, "pref"    # Landroid/preference/Preference;

    .prologue
    .line 3462
    invoke-virtual {p2}, Landroid/preference/Preference;->getTitleRes()I

    move-result v3

    .line 3463
    .local v3, "titleRes":I
    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/android/settings/WallpaperTypeSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3464
    const v3, 0x7f0a06b9

    .line 3473
    :cond_0
    :goto_0
    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/GridSettings;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 3475
    const/4 v0, 0x1

    return v0

    .line 3465
    :cond_1
    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/android/settings/OwnerInfoSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eqz v0, :cond_0

    .line 3467
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->isLinkedUser()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3468
    const v3, 0x7f0a021c

    goto :goto_0

    .line 3470
    :cond_2
    const v3, 0x7f0a021a

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 906
    const/4 v0, 0x0

    .line 908
    .local v0, "pos":I
    const/16 v2, 0xcb

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 909
    .local v1, "selectItem":Landroid/view/MenuItem;
    if-nez v1, :cond_0

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    .line 916
    :goto_0
    return v2

    .line 911
    :cond_0
    iget-object v2, p0, Lcom/android/settings/GridSettings;->listManager:Lcom/android/settings/HeaderListManager;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/GridSettings;->listManager:Lcom/android/settings/HeaderListManager;

    invoke-virtual {v2}, Lcom/android/settings/HeaderListManager;->getFavoriteCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 912
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 916
    :goto_1
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    goto :goto_0

    .line 914
    :cond_1
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method public onResume()V
    .locals 12

    .prologue
    .line 1410
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 1411
    sget-object v8, Lcom/android/settings/GridSettings;->LOG_TAG:Ljava/lang/String;

    const-string v9, "onResume"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1413
    iget-object v8, p0, Lcom/android/settings/GridSettings;->pager:Landroid/support/v4/view/ViewPager;

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/settings/GridSettings;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v8}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v8

    if-lez v8, :cond_2

    .line 1414
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v8, p0, Lcom/android/settings/GridSettings;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v8}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v8

    if-ge v2, v8, :cond_2

    .line 1415
    iget-object v8, p0, Lcom/android/settings/GridSettings;->mPagerListView:[Landroid/widget/ListView;

    aget-object v8, v8, v2

    if-nez v8, :cond_1

    .line 1414
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1416
    :cond_1
    iget-object v8, p0, Lcom/android/settings/GridSettings;->mPagerListView:[Landroid/widget/ListView;

    aget-object v8, v8, v2

    invoke-virtual {v8}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    .line 1417
    .local v5, "mPagerlistAdapter":Landroid/widget/ListAdapter;
    instance-of v8, v5, Lcom/android/settings/GridSettings$HeaderAdapter;

    if-eqz v8, :cond_0

    .line 1418
    check-cast v5, Lcom/android/settings/GridSettings$HeaderAdapter;

    .end local v5    # "mPagerlistAdapter":Landroid/widget/ListAdapter;
    invoke-virtual {v5}, Lcom/android/settings/GridSettings$HeaderAdapter;->resume()V

    goto :goto_1

    .line 1423
    .end local v2    # "i":I
    :cond_2
    invoke-static {}, Landroid/app/enterprise/knoxcustom/KnoxCustomManager;->getInstance()Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    move-result-object v3

    .line 1424
    .local v3, "knoxCustomManager":Landroid/app/enterprise/knoxcustom/KnoxCustomManager;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/app/enterprise/knoxcustom/KnoxCustomManager;->getSealedState()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1425
    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->finish()V

    .line 1429
    :cond_3
    const-string v8, "SPRINT"

    const-string v9, "ALL"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1431
    const-string v8, "wifi"

    invoke-virtual {p0, v8}, Lcom/android/settings/GridSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiManager;

    .line 1432
    .local v7, "wm":Landroid/net/wifi/WifiManager;
    new-instance v6, Landroid/os/Message;

    invoke-direct {v6}, Landroid/os/Message;-><init>()V

    .line 1433
    .local v6, "msg":Landroid/os/Message;
    const/16 v8, 0x15

    iput v8, v6, Landroid/os/Message;->what:I

    .line 1434
    invoke-virtual {v7, v6}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v8

    iput v8, p0, Lcom/android/settings/GridSettings;->mTetheredData:I

    .line 1435
    sget-object v8, Lcom/android/settings/GridSettings;->LOG_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mTetheredData: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/settings/GridSettings;->mTetheredData:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1438
    .end local v6    # "msg":Landroid/os/Message;
    .end local v7    # "wm":Landroid/net/wifi/WifiManager;
    :cond_4
    new-instance v8, Lcom/android/settings/GridSettings$13;

    invoke-direct {v8, p0}, Lcom/android/settings/GridSettings$13;-><init>(Lcom/android/settings/GridSettings;)V

    iput-object v8, p0, Lcom/android/settings/GridSettings;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 1444
    iget-object v8, p0, Lcom/android/settings/GridSettings;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    iget-object v9, p0, Lcom/android/settings/GridSettings;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v8, v9}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 1447
    sget-object v8, Lcom/android/settings/GridSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "airplane_mode_on"

    invoke-static {v9}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/android/settings/GridSettings;->mAirPlaneObserver:Landroid/database/ContentObserver;

    invoke-virtual {v8, v9, v10, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1449
    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    .line 1450
    .local v4, "listAdapter":Landroid/widget/ListAdapter;
    instance-of v8, v4, Lcom/android/settings/GridSettings$HeaderAdapter;

    if-eqz v8, :cond_5

    .line 1451
    check-cast v4, Lcom/android/settings/GridSettings$HeaderAdapter;

    .end local v4    # "listAdapter":Landroid/widget/ListAdapter;
    invoke-virtual {v4}, Lcom/android/settings/GridSettings$HeaderAdapter;->resume()V

    .line 1453
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->invalidateHeaders()V

    .line 1455
    iget-object v8, p0, Lcom/android/settings/GridSettings;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v9, Landroid/content/IntentFilter;

    const-string v10, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v9, v10}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v8, v9}, Lcom/android/settings/GridSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1457
    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1458
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1459
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v8, "ActivityName"

    const-string v9, "com.android.settings.GridSettings"

    invoke-virtual {v0, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1460
    const-string v8, "IconName"

    const-string v9, "Search;Edit quick settings;"

    invoke-virtual {v0, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1461
    const-string v8, "register"

    const/4 v9, 0x1

    invoke-virtual {v0, v8, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1462
    iget-object v8, p0, Lcom/android/settings/GridSettings;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v8, v0}, Landroid/view/accessibility/AccessibilityManager;->assistantMenuUpdate(Landroid/os/Bundle;)V

    .line 1466
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_6
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 1467
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v8, "com.android.settings.Favorite"

    invoke-virtual {v1, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1468
    const-string v8, "com.android.settings.Search"

    invoke-virtual {v1, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1469
    iget-object v8, p0, Lcom/android/settings/GridSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v8, v1}, Lcom/android/settings/GridSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1470
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 1397
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1400
    iget-object v0, p0, Lcom/android/settings/GridSettings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v0, :cond_0

    .line 1401
    const-string v0, "com.android.settings.CURRENT_HEADER"

    iget-object v1, p0, Lcom/android/settings/GridSettings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1403
    :cond_0
    iget-object v0, p0, Lcom/android/settings/GridSettings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v0, :cond_1

    .line 1404
    const-string v0, "com.android.settings.PARENT_HEADER"

    iget-object v1, p0, Lcom/android/settings/GridSettings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1406
    :cond_1
    return-void
.end method

.method public setListAdapter(Landroid/widget/ListAdapter;)V
    .locals 3
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 3487
    if-nez p1, :cond_0

    .line 3488
    const/4 v1, 0x0

    invoke-super {p0, v1}, Landroid/preference/PreferenceActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 3495
    :goto_0
    return-void

    .line 3490
    :cond_0
    const-string v1, "device_policy"

    invoke-virtual {p0, v1}, Lcom/android/settings/GridSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 3493
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    new-instance v1, Lcom/android/settings/GridSettings$HeaderAdapter;

    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getHeaders()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/android/settings/GridSettings$HeaderAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Landroid/app/admin/DevicePolicyManager;)V

    invoke-super {p0, v1}, Landroid/preference/PreferenceActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method public shouldUpRecreateTask(Landroid/content/Intent;)Z
    .locals 2
    .param p1, "targetIntent"    # Landroid/content/Intent;

    .prologue
    .line 3481
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/GridSettings;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-super {p0, v0}, Landroid/preference/PreferenceActivity;->shouldUpRecreateTask(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public showDialog()V
    .locals 11

    .prologue
    const v10, 0x7f0a0037

    const v9, 0x7f0a0036

    const/4 v8, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 1055
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1056
    .local v0, "dialog":Landroid/app/AlertDialog$Builder;
    const v3, 0x7f0a0038

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1058
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1059
    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "settings_gridui"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 1064
    .local v2, "viewType":I
    :goto_0
    invoke-static {}, Lcom/android/settings/Utils;->isGridListUIEnabeld()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1065
    new-array v1, v7, [Ljava/lang/String;

    .line 1066
    .local v1, "mViewTypeItem":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v8

    .line 1067
    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v6

    .line 1069
    invoke-virtual {p0, v2}, Lcom/android/settings/GridSettings;->getOptionDialogValue(I)I

    move-result v3

    new-instance v4, Lcom/android/settings/GridSettings$7;

    invoke-direct {v4, p0, v2}, Lcom/android/settings/GridSettings$7;-><init>(Lcom/android/settings/GridSettings;I)V

    invoke-virtual {v0, v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1098
    .end local v1    # "mViewTypeItem":[Ljava/lang/String;
    :goto_1
    const-string v3, "VZW"

    sget-object v4, Lcom/android/settings/GridSettings;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1099
    new-array v1, v7, [Ljava/lang/String;

    .line 1100
    .restart local v1    # "mViewTypeItem":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0035

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v8

    .line 1101
    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v6

    .line 1102
    invoke-virtual {p0, v2}, Lcom/android/settings/GridSettings;->getRealValue(I)I

    move-result v3

    new-instance v4, Lcom/android/settings/GridSettings$9;

    invoke-direct {v4, p0, v2}, Lcom/android/settings/GridSettings$9;-><init>(Lcom/android/settings/GridSettings;I)V

    invoke-virtual {v0, v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1133
    .end local v1    # "mViewTypeItem":[Ljava/lang/String;
    :cond_0
    :goto_2
    const v3, 0x7f0a01ce

    new-instance v4, Lcom/android/settings/GridSettings$11;

    invoke-direct {v4, p0}, Lcom/android/settings/GridSettings$11;-><init>(Lcom/android/settings/GridSettings;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1141
    new-instance v3, Lcom/android/settings/GridSettings$12;

    invoke-direct {v3, p0}, Lcom/android/settings/GridSettings$12;-><init>(Lcom/android/settings/GridSettings;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 1149
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/GridSettings;->viewTypeDialog:Landroid/app/Dialog;

    .line 1150
    iget-object v3, p0, Lcom/android/settings/GridSettings;->viewTypeDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    .line 1151
    return-void

    .line 1062
    .end local v2    # "viewType":I
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "settings_gridui"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .restart local v2    # "viewType":I
    goto :goto_0

    .line 1085
    :cond_2
    const/high16 v3, 0x7f0c0000

    invoke-virtual {p0, v2}, Lcom/android/settings/GridSettings;->getRealValue(I)I

    move-result v4

    new-instance v5, Lcom/android/settings/GridSettings$8;

    invoke-direct {v5, p0, v2}, Lcom/android/settings/GridSettings$8;-><init>(Lcom/android/settings/GridSettings;I)V

    invoke-virtual {v0, v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 1114
    :cond_3
    const-string v3, "GRIDLIST_SIMPLE"

    const-string v4, "GRIDLIST"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "ATT"

    sget-object v4, Lcom/android/settings/GridSettings;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "TMB"

    sget-object v4, Lcom/android/settings/GridSettings;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1116
    :cond_4
    new-array v1, v7, [Ljava/lang/String;

    .line 1117
    .restart local v1    # "mViewTypeItem":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v8

    .line 1118
    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v6

    .line 1120
    invoke-virtual {p0, v2}, Lcom/android/settings/GridSettings;->getSelectValue(I)I

    move-result v3

    new-instance v4, Lcom/android/settings/GridSettings$10;

    invoke-direct {v4, p0, v2}, Lcom/android/settings/GridSettings$10;-><init>(Lcom/android/settings/GridSettings;I)V

    invoke-virtual {v0, v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_2
.end method

.method public startWithFragment(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;III)V
    .locals 8
    .param p1, "fragmentName"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "resultTo"    # Landroid/app/Fragment;
    .param p4, "resultRequestCode"    # I
    .param p5, "titleRes"    # I
    .param p6, "shortTitleRes"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 1340
    iget-boolean v0, p0, Lcom/android/settings/GridSettings;->mOpenSearchHierarchy:Z

    if-eqz v0, :cond_3

    .line 1341
    const-string v0, "SettingsSearch"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Settings , mSearchDepthCounter : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/GridSettings;->mSearchDepthCounter:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1342
    if-nez p2, :cond_0

    .line 1343
    new-instance p2, Landroid/os/Bundle;

    .end local p2    # "args":Landroid/os/Bundle;
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 1345
    .restart local p2    # "args":Landroid/os/Bundle;
    :cond_0
    const-string v0, "extra_from_search"

    invoke-virtual {p2, v0, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1347
    iget v0, p0, Lcom/android/settings/GridSettings;->mSearchDepthCounter:I

    if-le v0, v6, :cond_2

    .line 1348
    iget-object v0, p0, Lcom/android/settings/GridSettings;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    .line 1349
    iget-object v0, p0, Lcom/android/settings/GridSettings;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 1358
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p5

    invoke-static/range {v0 .. v5}, Lcom/android/settings/Utils;->onBuildStartFragmentIntent(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Z)Landroid/content/Intent;

    move-result-object v7

    .line 1360
    .local v7, "intent":Landroid/content/Intent;
    const-string v0, "extra_from_search"

    invoke-virtual {v7, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1361
    const-string v0, "extra_depth_counter_key"

    iget v1, p0, Lcom/android/settings/GridSettings;->mSearchDepthCounter:I

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1362
    const-string v0, "extra_second_fragment_bundle_key"

    iget-object v1, p0, Lcom/android/settings/GridSettings;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1363
    const/16 v0, 0x160f

    invoke-virtual {p0, v7, v0}, Lcom/android/settings/GridSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1364
    iput-boolean v5, p0, Lcom/android/settings/GridSettings;->mOpenSearchHierarchy:Z

    .line 1370
    .end local v7    # "intent":Landroid/content/Intent;
    :goto_1
    return-void

    .line 1352
    :cond_2
    iget-object v0, p0, Lcom/android/settings/GridSettings;->mSearchFragmentBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    .line 1353
    iget-object v0, p0, Lcom/android/settings/GridSettings;->mSearchFragmentBundle:Landroid/os/Bundle;

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    goto :goto_0

    .line 1367
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v6}, Lcom/android/settings/Utils;->startWithFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;IILjava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public switchToHeader(Landroid/preference/PreferenceActivity$Header;)V
    .locals 7
    .param p1, "header"    # Landroid/preference/PreferenceActivity$Header;

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x1

    .line 1648
    iget-boolean v2, p0, Lcom/android/settings/GridSettings;->mInLocalHeaderSwitch:Z

    if-nez v2, :cond_0

    .line 1649
    iput-object v3, p0, Lcom/android/settings/GridSettings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 1650
    iput-object v3, p0, Lcom/android/settings/GridSettings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 1653
    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1654
    iget-boolean v2, p0, Lcom/android/settings/GridSettings;->mOpenSearchHierarchy:Z

    if-eqz v2, :cond_2

    iget-wide v2, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    sget-wide v4, Lcom/android/settings/GridSettings;->mSearchHeaderID:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 1655
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1657
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "extra_from_search"

    invoke-virtual {v0, v2, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1659
    iget v2, p0, Lcom/android/settings/GridSettings;->mSearchDepthCounter:I

    if-le v2, v6, :cond_3

    .line 1660
    iget-object v2, p0, Lcom/android/settings/GridSettings;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    if-eqz v2, :cond_1

    .line 1661
    iget-object v2, p0, Lcom/android/settings/GridSettings;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 1669
    :cond_1
    :goto_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1670
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "extra_from_search"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1671
    const-string v2, "extra_depth_counter_key"

    iget v3, p0, Lcom/android/settings/GridSettings;->mSearchDepthCounter:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1672
    const-string v2, "extra_second_fragment_bundle_key"

    iget-object v3, p0, Lcom/android/settings/GridSettings;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1675
    iput-object v0, p1, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    .line 1676
    iput-object v1, p1, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    .line 1677
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/settings/GridSettings;->mOpenSearchHierarchy:Z

    .line 1681
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_2
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->switchToHeader(Landroid/preference/PreferenceActivity$Header;)V

    .line 1682
    return-void

    .line 1664
    .restart local v0    # "args":Landroid/os/Bundle;
    :cond_3
    iget-object v2, p0, Lcom/android/settings/GridSettings;->mSearchFragmentBundle:Landroid/os/Bundle;

    if-eqz v2, :cond_1

    .line 1665
    iget-object v2, p0, Lcom/android/settings/GridSettings;->mSearchFragmentBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public updateHotspotSSID()V
    .locals 4

    .prologue
    .line 3108
    const-string v2, "wifi"

    invoke-virtual {p0, v2}, Lcom/android/settings/GridSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 3109
    .local v1, "wm":Landroid/net/wifi/WifiManager;
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 3111
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    const-string v2, ""

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3112
    sget-object v2, Lcom/android/settings/GridSettings;->LOG_TAG:Ljava/lang/String;

    const-string v3, "updateHotspotSSID"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3113
    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "chameleon_ssid"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 3114
    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    .line 3116
    :cond_0
    return-void
.end method
