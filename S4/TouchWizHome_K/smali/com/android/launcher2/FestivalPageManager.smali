.class public Lcom/android/launcher2/FestivalPageManager;
.super Ljava/lang/Object;
.source "FestivalPageManager.java"


# static fields
.field private static final ACTION_FESTIVAL_CARDWIDGET_ADDED:Ljava/lang/String; = "com.android.launcher.action.FESTIVAL_CARDWIDGET_ADDED"

.field private static final ACTION_FESTIVAL_GREETINGWIDGET_ADDED:Ljava/lang/String; = "com.android.launcher.action.FESTIVAL_GREETINGWIDGET_ADDED"

.field private static final ACTION_FESTIVAL_MEMORYWIDGET_ADDED:Ljava/lang/String; = "com.android.launcher.action.FESTIVAL_MEMORYWIDGET_ADDED"

.field public static final BIRTHDAY_FESTIVAL:I = 0x3e7

.field public static final CHILDREN_DAY_FESTIVAL:I = 0x6

.field public static final CHINESE_VALENTINE_DAY_FESTIVAL:I = 0xf

.field public static final CHRISTMAS_FESTIVAL:I = 0xb

.field public static final CHRISTMAS_XML_FESTIVAL:I = 0x12

.field public static final CONGRATULATION_FESTIVAL:I = 0x3e6

.field public static final DEBUG:Z = false

.field private static final DEBUGGABLE:Z

.field public static final DOUBLE_NINTH_DAY_FESTIVAL:I = 0x11

.field public static final DRAGON_BOAT_FESTIVAL:I = 0xe

.field public static final LANTERN_FESTIVAL:I = 0xd

.field public static final MAY_DAY_FESTIVAL:I = 0x4

.field public static final MID_AUTUMN_FESTIVAL:I = 0x10

.field public static final NATIONAL_DAY_FESTIVAL:I = 0xa

.field private static final NETWORK_STATE_MOBILE:I = 0x1

.field private static final NETWORK_STATE_NONE:I = 0x0

.field private static final NETWORK_STATE_WIFI:I = 0x2

.field public static final NEW_YEAR_DAY_FESTIVAL:I = 0x1

.field public static final NEW_YEAR_DAY_XML_FESTIVAL:I = 0x13

.field static final PREFERENCES_FESTIVAL_INTENT_STRING:Ljava/lang/String; = "festivalstring"

.field public static final SPRING_FESTIVAL:I = 0xc

.field private static final STR_TITLEIMAGE_PATH:Ljava/lang/String; = "/system/festival/drawable/"

.field public static final TAG:Ljava/lang/String; = "FestivalPageManager"

.field public static final TEACHER_DAY_FESTIVAL:I = 0x9

.field public static final THANK_YOU_DAY_FESTIVAL:I = 0x3

.field public static final TOMB_SWEEPING_DAY_FESTIVAL:I = 0x82

.field public static final VALENTINE_DAY_FESTIVAL:I = 0x2

.field public static final festivalDayTextArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final festivalIndexArray:[I

.field public static final festivalNameArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final festivalTitleColor2Array:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final festivalTitleColorArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final festivalTitleImageArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mLauncher:Lcom/android/launcher2/Launcher;


# instance fields
.field adb:Landroid/app/AlertDialog$Builder;

.field callBrowserIntent:Landroid/content/Intent;

.field public dontShowAgain:Landroid/widget/CheckBox;

.field private mCompleteShowHidedPage:Z

.field private mHidedPage:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/launcher2/CellLayout;",
            ">;"
        }
    .end annotation
.end field

.field private mHomeView:Lcom/android/launcher2/HomeView;

.field private mPageSwitchByFestivalMode:Z

.field private mWorkspace:Lcom/android/launcher2/Workspace;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    invoke-static {}, Lcom/android/launcher2/Utilities;->DEBUGGABLE()Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher2/FestivalPageManager;->DEBUGGABLE:Z

    .line 112
    new-instance v0, Lcom/android/launcher2/FestivalPageManager$1;

    invoke-direct {v0}, Lcom/android/launcher2/FestivalPageManager$1;-><init>()V

    sput-object v0, Lcom/android/launcher2/FestivalPageManager;->festivalNameArray:Landroid/util/SparseArray;

    .line 134
    new-instance v0, Lcom/android/launcher2/FestivalPageManager$2;

    invoke-direct {v0}, Lcom/android/launcher2/FestivalPageManager$2;-><init>()V

    sput-object v0, Lcom/android/launcher2/FestivalPageManager;->festivalTitleImageArray:Landroid/util/SparseArray;

    .line 156
    new-instance v0, Lcom/android/launcher2/FestivalPageManager$3;

    invoke-direct {v0}, Lcom/android/launcher2/FestivalPageManager$3;-><init>()V

    sput-object v0, Lcom/android/launcher2/FestivalPageManager;->festivalDayTextArray:Landroid/util/SparseArray;

    .line 178
    new-instance v0, Lcom/android/launcher2/FestivalPageManager$4;

    invoke-direct {v0}, Lcom/android/launcher2/FestivalPageManager$4;-><init>()V

    sput-object v0, Lcom/android/launcher2/FestivalPageManager;->festivalTitleColorArray:Landroid/util/SparseArray;

    .line 200
    new-instance v0, Lcom/android/launcher2/FestivalPageManager$5;

    invoke-direct {v0}, Lcom/android/launcher2/FestivalPageManager$5;-><init>()V

    sput-object v0, Lcom/android/launcher2/FestivalPageManager;->festivalTitleColor2Array:Landroid/util/SparseArray;

    .line 222
    const/16 v0, 0x11

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/launcher2/FestivalPageManager;->festivalIndexArray:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x6
        0x9
        0xa
        0x11
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x82
        0x3e6
        0x3e7
    .end array-data
.end method

.method public constructor <init>(Lcom/android/launcher2/Launcher;)V
    .locals 1
    .param p1, "launcher"    # Lcom/android/launcher2/Launcher;

    .prologue
    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/FestivalPageManager;->mPageSwitchByFestivalMode:Z

    .line 243
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/FestivalPageManager;->mHidedPage:Ljava/util/HashMap;

    .line 246
    sput-object p1, Lcom/android/launcher2/FestivalPageManager;->mLauncher:Lcom/android/launcher2/Launcher;

    .line 247
    return-void
.end method

.method static synthetic access$000()Lcom/android/launcher2/Launcher;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/android/launcher2/FestivalPageManager;->mLauncher:Lcom/android/launcher2/Launcher;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher2/FestivalPageManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/FestivalPageManager;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/launcher2/FestivalPageManager;->checkNetwork()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/launcher2/FestivalPageManager;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher2/FestivalPageManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/FestivalPageManager;->show_checkbox_dialog(II)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/launcher2/FestivalPageManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher2/FestivalPageManager;
    .param p1, "x1"    # I

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/android/launcher2/FestivalPageManager;->showRetry(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/launcher2/FestivalPageManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher2/FestivalPageManager;
    .param p1, "x1"    # I

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/android/launcher2/FestivalPageManager;->launchLearnAboutFestivalDayURL(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/launcher2/FestivalPageManager;)Lcom/android/launcher2/Workspace;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/FestivalPageManager;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/launcher2/FestivalPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/launcher2/FestivalPageManager;)Lcom/android/launcher2/HomeView;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/FestivalPageManager;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/launcher2/FestivalPageManager;->mHomeView:Lcom/android/launcher2/HomeView;

    return-object v0
.end method

.method private checkNetwork()I
    .locals 7

    .prologue
    .line 812
    sget-object v4, Lcom/android/launcher2/FestivalPageManager;->mLauncher:Lcom/android/launcher2/Launcher;

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Lcom/android/launcher2/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 813
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 814
    .local v1, "info":Landroid/net/NetworkInfo;
    const/4 v2, 0x0

    .line 816
    .local v2, "netStatus":I
    if-eqz v1, :cond_0

    .line 817
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v3

    .line 818
    .local v3, "typeName":Ljava/lang/String;
    const-string v4, "WIFI"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 819
    const/4 v2, 0x2

    .line 824
    .end local v3    # "typeName":Ljava/lang/String;
    :cond_0
    :goto_0
    const-string v4, "FestivalPageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkNetwork netStatus="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    return v2

    .line 821
    .restart local v3    # "typeName":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static checkPrevFestivalStatus(Ljava/lang/String;)Z
    .locals 7
    .param p0, "currentFestivalString"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 599
    invoke-static {}, Lcom/android/launcher2/FestivalPageManager;->getFestivalString()Ljava/lang/String;

    move-result-object v2

    .line 600
    .local v2, "prevFestivalString":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    move v3, v4

    .line 628
    :cond_1
    :goto_0
    return v3

    .line 603
    :cond_2
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 607
    invoke-static {}, Lcom/android/launcher2/FestivalPageManager;->getFestivalDateEffect()Ljava/lang/String;

    move-result-object v1

    .line 608
    .local v1, "festivalDateEffect":Ljava/lang/String;
    if-nez v1, :cond_3

    move v3, v4

    .line 609
    goto :goto_0

    .line 622
    :cond_3
    sget-object v5, Lcom/android/launcher2/FestivalPageManager;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher2/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "current_festival_effect_package"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 623
    .local v0, "currentEffect":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 626
    const-string v3, "FestivalPageManager"

    const-string v5, "checkPrevFestivalStatus : current status is same as previous."

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 628
    goto :goto_0
.end method

.method private static getFestivalDateEffect()Ljava/lang/String;
    .locals 4

    .prologue
    .line 593
    sget-object v1, Lcom/android/launcher2/FestivalPageManager;->mLauncher:Lcom/android/launcher2/Launcher;

    const-string v2, "com.sec.android.app.launcher.prefs"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher2/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 594
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "festivalDateEffect"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getFestivalDayText(I)Ljava/lang/String;
    .locals 6
    .param p1, "festivalKey"    # I

    .prologue
    .line 487
    const/4 v0, 0x0

    .line 489
    .local v0, "festivalDayText":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget-object v3, Lcom/android/launcher2/FestivalPageManager;->festivalDayTextArray:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 490
    sget-object v3, Lcom/android/launcher2/FestivalPageManager;->festivalIndexArray:[I

    aget v3, v3, v2

    if-ne p1, v3, :cond_1

    .line 491
    sget-object v3, Lcom/android/launcher2/FestivalPageManager;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget-object v3, Lcom/android/launcher2/FestivalPageManager;->festivalDayTextArray:Landroid/util/SparseArray;

    sget-object v5, Lcom/android/launcher2/FestivalPageManager;->festivalIndexArray:[I

    aget v5, v5, v2

    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 492
    sget-boolean v3, Lcom/android/launcher2/FestivalPageManager;->DEBUGGABLE:Z

    if-eqz v3, :cond_0

    const-string v3, "FestivalPageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getFestivalDayString festivalKey =  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " festivalIndexArray[ "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ]  = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object v1, v0

    .line 496
    .end local v0    # "festivalDayText":Ljava/lang/String;
    .local v1, "festivalDayText":Ljava/lang/String;
    :goto_1
    return-object v1

    .line 489
    .end local v1    # "festivalDayText":Ljava/lang/String;
    .restart local v0    # "festivalDayText":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move-object v1, v0

    .line 496
    .end local v0    # "festivalDayText":Ljava/lang/String;
    .restart local v1    # "festivalDayText":Ljava/lang/String;
    goto :goto_1
.end method

.method public static getFestivalString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 581
    sget-object v1, Lcom/android/launcher2/FestivalPageManager;->mLauncher:Lcom/android/launcher2/Launcher;

    const-string v2, "com.sec.android.app.launcher.prefs"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher2/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 582
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "festivalstring"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getFestivalTitleColor(I)I
    .locals 8
    .param p1, "festivalKey"    # I

    .prologue
    .line 500
    const/4 v2, -0x1

    .line 503
    .local v2, "festivalTitleColor":I
    const-string v1, "com.bst.festivalrespreload2"

    .line 504
    .local v1, "defaultPackage":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/launcher2/FestivalPageManager;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v6}, Lcom/android/launcher2/HomeView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "current_festival_effect_package"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 505
    .local v0, "currentPackage":Ljava/lang/String;
    const/4 v5, 0x0

    .line 506
    .local v5, "isdefaultEffect":Z
    invoke-direct {p0, v0}, Lcom/android/launcher2/FestivalPageManager;->setFestivalDateEffect(Ljava/lang/String;)V

    .line 507
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 508
    const/4 v5, 0x1

    .line 510
    :cond_0
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    sget-object v6, Lcom/android/launcher2/FestivalPageManager;->festivalTitleColorArray:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v4, v6, :cond_3

    .line 511
    sget-object v6, Lcom/android/launcher2/FestivalPageManager;->festivalIndexArray:[I

    aget v6, v6, v4

    if-ne p1, v6, :cond_2

    .line 512
    if-eqz v5, :cond_1

    .line 513
    sget-object v6, Lcom/android/launcher2/FestivalPageManager;->festivalTitleColorArray:Landroid/util/SparseArray;

    sget-object v7, Lcom/android/launcher2/FestivalPageManager;->festivalIndexArray:[I

    aget v7, v7, v4

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_1
    move v3, v2

    .line 520
    .end local v2    # "festivalTitleColor":I
    .local v3, "festivalTitleColor":I
    :goto_2
    return v3

    .line 515
    .end local v3    # "festivalTitleColor":I
    .restart local v2    # "festivalTitleColor":I
    :cond_1
    sget-object v6, Lcom/android/launcher2/FestivalPageManager;->festivalTitleColor2Array:Landroid/util/SparseArray;

    sget-object v7, Lcom/android/launcher2/FestivalPageManager;->festivalIndexArray:[I

    aget v7, v7, v4

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_1

    .line 510
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    move v3, v2

    .line 520
    .end local v2    # "festivalTitleColor":I
    .restart local v3    # "festivalTitleColor":I
    goto :goto_2
.end method

.method private getFestivalTitleImage(I)Ljava/lang/String;
    .locals 4
    .param p1, "festivalKey"    # I

    .prologue
    .line 475
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Lcom/android/launcher2/FestivalPageManager;->festivalTitleImageArray:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 476
    sget-object v2, Lcom/android/launcher2/FestivalPageManager;->festivalIndexArray:[I

    aget v2, v2, v1

    if-ne p1, v2, :cond_0

    .line 477
    const/4 v0, 0x0

    .line 478
    .local v0, "festivalImageName":Ljava/lang/String;
    sget-object v2, Lcom/android/launcher2/FestivalPageManager;->festivalTitleImageArray:Landroid/util/SparseArray;

    sget-object v3, Lcom/android/launcher2/FestivalPageManager;->festivalIndexArray:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "festivalImageName":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 479
    .restart local v0    # "festivalImageName":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/system/festival/drawable/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 483
    .end local v0    # "festivalImageName":Ljava/lang/String;
    :goto_1
    return-object v2

    .line 475
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 483
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static getFestivalType(Ljava/lang/String;)I
    .locals 6
    .param p0, "festivalName"    # Ljava/lang/String;

    .prologue
    .line 460
    const/4 v0, -0x1

    .line 462
    .local v0, "festivalkey":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget-object v3, Lcom/android/launcher2/FestivalPageManager;->festivalNameArray:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 464
    sget-object v3, Lcom/android/launcher2/FestivalPageManager;->festivalIndexArray:[I

    aget v0, v3, v2

    .line 466
    sget-object v3, Lcom/android/launcher2/FestivalPageManager;->festivalNameArray:Landroid/util/SparseArray;

    sget-object v4, Lcom/android/launcher2/FestivalPageManager;->festivalIndexArray:[I

    aget v4, v4, v2

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 467
    sget-boolean v3, Lcom/android/launcher2/FestivalPageManager;->DEBUGGABLE:Z

    if-eqz v3, :cond_0

    const-string v3, "FestivalPageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getFestivalType of festivalName : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " festivalIndexArray[ "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ]  = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/launcher2/FestivalPageManager;->festivalIndexArray:[I

    aget v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move v1, v0

    .line 471
    .end local v0    # "festivalkey":I
    .local v1, "festivalkey":I
    :goto_1
    return v1

    .line 462
    .end local v1    # "festivalkey":I
    .restart local v0    # "festivalkey":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move v1, v0

    .line 471
    .end local v0    # "festivalkey":I
    .restart local v1    # "festivalkey":I
    goto :goto_1
.end method

.method private isApplicationInstalled(Ljava/lang/String;)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 730
    const/4 v1, 0x0

    .line 733
    .local v1, "installed":Z
    :try_start_0
    sget-object v3, Lcom/android/launcher2/FestivalPageManager;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 734
    .local v2, "pi":Landroid/content/pm/PackageInfo;
    if-eqz v2, :cond_0

    .line 735
    const/4 v1, 0x1

    .line 742
    .end local v2    # "pi":Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    return v1

    .line 737
    :catch_0
    move-exception v0

    .line 738
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "FestivalPageManager"

    const-string v4, "festival widget is not installed"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private launchLearnAboutFestivalDayURL(I)V
    .locals 6
    .param p1, "festivalKey"    # I

    .prologue
    .line 746
    const/4 v0, 0x0

    .line 748
    .local v0, "fesitvalDayURL":Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    .line 795
    :goto_0
    if-nez v0, :cond_1

    .line 808
    :cond_0
    :goto_1
    return-void

    .line 750
    :sswitch_0
    const-string v0, "http://wapbaike.baidu.com/view/3116.htm"

    .line 751
    goto :goto_0

    .line 753
    :sswitch_1
    const-string v0, "http://wapbaike.baidu.com/view/3108.htm"

    .line 754
    goto :goto_0

    .line 756
    :sswitch_2
    const-string v0, "http://wapbaike.baidu.com/subview/1949/13291116.htm"

    .line 757
    goto :goto_0

    .line 759
    :sswitch_3
    const-string v0, "http://wapbaike.baidu.com/subview/2533/7683709.htm"

    .line 760
    goto :goto_0

    .line 762
    :sswitch_4
    const-string v0, "http://wapbaike.baidu.com/view/3148.htm"

    .line 763
    goto :goto_0

    .line 765
    :sswitch_5
    const-string v0, "http://wapbaike.baidu.com/view/44253.htm"

    .line 766
    goto :goto_0

    .line 768
    :sswitch_6
    const-string v0, "http://wapbaike.baidu.com/subview/2567/5060532.htm"

    .line 769
    goto :goto_0

    .line 771
    :sswitch_7
    const-string v0, "http://wapbaike.baidu.com/view/16194.htm"

    .line 772
    goto :goto_0

    .line 774
    :sswitch_8
    const-string v0, "http://wapbaike.baidu.com/view/25833.htm"

    .line 775
    goto :goto_0

    .line 777
    :sswitch_9
    const-string v0, "http://wapbaike.baidu.com/view/2568.htm"

    .line 778
    goto :goto_0

    .line 780
    :sswitch_a
    const-string v0, "http://wapbaike.baidu.com/view/14446.htm"

    .line 781
    goto :goto_0

    .line 783
    :sswitch_b
    const-string v0, "http://wapbaike.baidu.com/view/2572.htm"

    .line 784
    goto :goto_0

    .line 786
    :sswitch_c
    const-string v0, "http://wapbaike.baidu.com/view/2547.htm"

    .line 787
    goto :goto_0

    .line 789
    :sswitch_d
    const-string v0, "http://wapbaike.baidu.com/view/8489.htm"

    .line 790
    goto :goto_0

    .line 798
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 799
    .local v1, "intent":Landroid/content/Intent;
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 800
    .local v2, "uri":Landroid/net/Uri;
    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 801
    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 802
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 803
    const-string v3, "com.sec.android.app.sbrowser"

    const-string v4, "com.sec.android.app.sbrowser.SBrowserMainActivity"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 804
    iget-object v3, p0, Lcom/android/launcher2/FestivalPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 806
    sget-boolean v3, Lcom/android/launcher2/FestivalPageManager;->DEBUGGABLE:Z

    if-eqz v3, :cond_0

    const-string v3, "FestivalPageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getLearnAboutFestivalDayURL  [ "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ]  = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 748
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_3
        0x4 -> :sswitch_5
        0x6 -> :sswitch_7
        0x9 -> :sswitch_8
        0xa -> :sswitch_a
        0xb -> :sswitch_c
        0xc -> :sswitch_1
        0xd -> :sswitch_2
        0xe -> :sswitch_6
        0xf -> :sswitch_d
        0x10 -> :sswitch_9
        0x11 -> :sswitch_b
        0x82 -> :sswitch_4
    .end sparse-switch
.end method

.method private setFestivalDateEffect(Ljava/lang/String;)V
    .locals 5
    .param p1, "festivalDateEffect"    # Ljava/lang/String;

    .prologue
    .line 586
    sget-object v2, Lcom/android/launcher2/FestivalPageManager;->mLauncher:Lcom/android/launcher2/Launcher;

    const-string v3, "com.sec.android.app.launcher.prefs"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher2/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 587
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 588
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "festivalDateEffect"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 589
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 590
    return-void
.end method

.method public static setFestivalString(Lcom/android/launcher2/LauncherApplication;Ljava/lang/String;)V
    .locals 4
    .param p0, "mApp"    # Lcom/android/launcher2/LauncherApplication;
    .param p1, "festivalString"    # Ljava/lang/String;

    .prologue
    .line 574
    const-string v2, "com.sec.android.app.launcher.prefs"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/launcher2/LauncherApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 575
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 576
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "festivalstring"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 577
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 578
    return-void
.end method

.method private showRetry(I)V
    .locals 6
    .param p1, "festivalKey"    # I

    .prologue
    .line 829
    sget-object v3, Lcom/android/launcher2/FestivalPageManager;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f10012d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 830
    .local v2, "msgTitle":Ljava/lang/String;
    sget-object v3, Lcom/android/launcher2/FestivalPageManager;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f10012e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 831
    .local v1, "msgText":Ljava/lang/String;
    sget-object v3, Lcom/android/launcher2/FestivalPageManager;->mLauncher:Lcom/android/launcher2/Launcher;

    const v4, 0x7f110001

    invoke-virtual {v3, v4}, Lcom/android/launcher2/Launcher;->setTheme(I)V

    .line 832
    new-instance v3, Landroid/app/AlertDialog$Builder;

    sget-object v4, Lcom/android/launcher2/FestivalPageManager;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f10012c

    new-instance v5, Lcom/android/launcher2/FestivalPageManager$12;

    invoke-direct {v5, p0, p1}, Lcom/android/launcher2/FestivalPageManager$12;-><init>(Lcom/android/launcher2/FestivalPageManager;I)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f100130

    new-instance v5, Lcom/android/launcher2/FestivalPageManager$11;

    invoke-direct {v5, p0}, Lcom/android/launcher2/FestivalPageManager$11;-><init>(Lcom/android/launcher2/FestivalPageManager;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/launcher2/FestivalPageManager$10;

    invoke-direct {v4, p0}, Lcom/android/launcher2/FestivalPageManager$10;-><init>(Lcom/android/launcher2/FestivalPageManager;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 867
    .local v0, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 868
    return-void
.end method

.method private show_checkbox_dialog(II)V
    .locals 11
    .param p1, "in_pos"    # I
    .param p2, "festivalKey"    # I

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 871
    move v5, p1

    .line 873
    .local v5, "pos":I
    const/4 v4, 0x0

    .line 874
    .local v4, "msgTitle":Ljava/lang/String;
    const/4 v3, 0x0

    .line 876
    .local v3, "msgText":Ljava/lang/String;
    sget-object v7, Lcom/android/launcher2/FestivalPageManager;->mLauncher:Lcom/android/launcher2/Launcher;

    const-string v8, "com.sec.android.app.launcher.prefs"

    invoke-virtual {v7, v8, v10}, Lcom/android/launcher2/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 877
    .local v6, "prefs":Landroid/content/SharedPreferences;
    const-string v7, "data_charging_checkbox"

    invoke-interface {v6, v7, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 879
    .local v1, "cb_info":Z
    if-ne v1, v9, :cond_0

    .line 880
    invoke-direct {p0, p2}, Lcom/android/launcher2/FestivalPageManager;->launchLearnAboutFestivalDayURL(I)V

    .line 922
    :goto_0
    return-void

    .line 882
    :cond_0
    if-ne v5, v9, :cond_2

    .line 883
    sget-object v7, Lcom/android/launcher2/FestivalPageManager;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v7}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f100127

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 884
    sget-object v7, Lcom/android/launcher2/FestivalPageManager;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v7}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f100128

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 889
    :cond_1
    :goto_1
    sget-object v7, Lcom/android/launcher2/FestivalPageManager;->mLauncher:Lcom/android/launcher2/Launcher;

    const v8, 0x7f110001

    invoke-virtual {v7, v8}, Lcom/android/launcher2/Launcher;->setTheme(I)V

    .line 890
    new-instance v7, Landroid/app/AlertDialog$Builder;

    sget-object v8, Lcom/android/launcher2/FestivalPageManager;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-direct {v7, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/launcher2/FestivalPageManager;->adb:Landroid/app/AlertDialog$Builder;

    .line 891
    iget-object v7, p0, Lcom/android/launcher2/FestivalPageManager;->adb:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v7, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 892
    iget-object v7, p0, Lcom/android/launcher2/FestivalPageManager;->adb:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v7, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 893
    sget-object v7, Lcom/android/launcher2/FestivalPageManager;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 894
    .local v0, "adbInflater":Landroid/view/LayoutInflater;
    const v7, 0x7f03000a

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 895
    .local v2, "eulaLayout":Landroid/view/View;
    const v7, 0x7f0f0033

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/CheckBox;

    iput-object v7, p0, Lcom/android/launcher2/FestivalPageManager;->dontShowAgain:Landroid/widget/CheckBox;

    .line 896
    iget-object v7, p0, Lcom/android/launcher2/FestivalPageManager;->dontShowAgain:Landroid/widget/CheckBox;

    invoke-virtual {v7, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 897
    iget-object v7, p0, Lcom/android/launcher2/FestivalPageManager;->adb:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v7, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 898
    iget-object v7, p0, Lcom/android/launcher2/FestivalPageManager;->adb:Landroid/app/AlertDialog$Builder;

    sget-object v8, Lcom/android/launcher2/FestivalPageManager;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v8}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f100130

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/android/launcher2/FestivalPageManager$13;

    invoke-direct {v9, p0}, Lcom/android/launcher2/FestivalPageManager$13;-><init>(Lcom/android/launcher2/FestivalPageManager;)V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 904
    iget-object v7, p0, Lcom/android/launcher2/FestivalPageManager;->adb:Landroid/app/AlertDialog$Builder;

    sget-object v8, Lcom/android/launcher2/FestivalPageManager;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v8}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f10012f

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/android/launcher2/FestivalPageManager$14;

    invoke-direct {v9, p0, p2}, Lcom/android/launcher2/FestivalPageManager$14;-><init>(Lcom/android/launcher2/FestivalPageManager;I)V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 916
    iget-object v7, p0, Lcom/android/launcher2/FestivalPageManager;->adb:Landroid/app/AlertDialog$Builder;

    new-instance v8, Lcom/android/launcher2/FestivalPageManager$15;

    invoke-direct {v8, p0}, Lcom/android/launcher2/FestivalPageManager$15;-><init>(Lcom/android/launcher2/FestivalPageManager;)V

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 920
    iget-object v7, p0, Lcom/android/launcher2/FestivalPageManager;->adb:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 885
    .end local v0    # "adbInflater":Landroid/view/LayoutInflater;
    .end local v2    # "eulaLayout":Landroid/view/View;
    :cond_2
    const/4 v7, 0x2

    if-ne v5, v7, :cond_1

    .line 886
    sget-object v7, Lcom/android/launcher2/FestivalPageManager;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v7}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f100129

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 887
    sget-object v7, Lcom/android/launcher2/FestivalPageManager;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v7}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f10012a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1
.end method

.method private updateFestivalTitle(Lcom/android/launcher2/CellLayout;I)V
    .locals 13
    .param p1, "cellContext"    # Lcom/android/launcher2/CellLayout;
    .param p2, "festivalKey"    # I

    .prologue
    .line 526
    const v9, 0x7f0f00e6

    invoke-virtual {p1, v9}, Lcom/android/launcher2/CellLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    .line 527
    .local v7, "fp_title_area":Landroid/widget/RelativeLayout;
    invoke-direct {p0, p2}, Lcom/android/launcher2/FestivalPageManager;->getFestivalTitleColor(I)I

    move-result v2

    .line 529
    .local v2, "festivalTitleColor":I
    if-gez v2, :cond_4

    .line 530
    const v9, 0x7f0a002a

    invoke-virtual {v7, v9}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 535
    :goto_0
    const v9, 0x7f0f00e9

    invoke-virtual {p1, v9}, Lcom/android/launcher2/CellLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 536
    .local v5, "festival_day_title":Landroid/widget/ImageView;
    invoke-direct {p0, p2}, Lcom/android/launcher2/FestivalPageManager;->getFestivalTitleImage(I)Ljava/lang/String;

    move-result-object v3

    .line 537
    .local v3, "festivalTitleImagePath":Ljava/lang/String;
    sget-boolean v9, Lcom/android/launcher2/FestivalPageManager;->DEBUGGABLE:Z

    if-eqz v9, :cond_0

    const-string v9, "FestivalPageManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "updateFestivalTitle festivalTitleImagePath : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    :cond_0
    if-eqz v3, :cond_1

    .line 540
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 541
    .local v0, "bm":Landroid/graphics/Bitmap;
    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 545
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    :cond_1
    const/4 v1, 0x0

    .line 546
    .local v1, "festivalDayText":Ljava/lang/String;
    const v9, 0x7f0f00eb

    invoke-virtual {p1, v9}, Lcom/android/launcher2/CellLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 547
    .local v6, "festival_learn_festivalname_title":Landroid/widget/TextView;
    invoke-direct {p0, p2}, Lcom/android/launcher2/FestivalPageManager;->getFestivalDayText(I)Ljava/lang/String;

    move-result-object v1

    .line 548
    if-eqz v6, :cond_2

    .line 549
    sget-object v9, Lcom/android/launcher2/FestivalPageManager;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v9}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f100115

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v1, v11, v12

    invoke-virtual {v9, v10, v11}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 550
    .local v8, "learnAboutText":Ljava/lang/String;
    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 552
    const/16 v9, 0x3e7

    if-ne p2, v9, :cond_2

    .line 553
    const/16 v9, 0x8

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 556
    .end local v8    # "learnAboutText":Ljava/lang/String;
    :cond_2
    const v9, 0x7f0f00ea

    invoke-virtual {p1, v9}, Lcom/android/launcher2/CellLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 557
    .local v4, "festival_date_title":Landroid/widget/TextView;
    if-eqz v4, :cond_3

    .line 558
    const/16 v9, 0x8

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 571
    :cond_3
    return-void

    .line 532
    .end local v1    # "festivalDayText":Ljava/lang/String;
    .end local v3    # "festivalTitleImagePath":Ljava/lang/String;
    .end local v4    # "festival_date_title":Landroid/widget/TextView;
    .end local v5    # "festival_day_title":Landroid/widget/ImageView;
    .end local v6    # "festival_learn_festivalname_title":Landroid/widget/TextView;
    :cond_4
    invoke-direct {p0, p2}, Lcom/android/launcher2/FestivalPageManager;->getFestivalTitleColor(I)I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto :goto_0
.end method


# virtual methods
.method public ShowEqualPageWithItem(Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/Workspace$State;)V
    .locals 6
    .param p1, "item"    # Lcom/android/launcher2/BaseItem;
    .param p2, "state"    # Lcom/android/launcher2/Workspace$State;

    .prologue
    const/4 v5, 0x2

    .line 263
    if-nez p1, :cond_1

    .line 301
    :cond_0
    :goto_0
    return-void

    .line 266
    :cond_1
    sget-boolean v3, Lcom/android/launcher2/Launcher;->sIsFestivalModeOn:Z

    if-eqz v3, :cond_0

    .line 267
    const/4 v0, 0x0

    .line 269
    .local v0, "c":Lcom/android/launcher2/CellLayout;
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/launcher2/FestivalPageManager;->setCompleteShowHidedPage(Z)V

    .line 271
    iget-object v3, p0, Lcom/android/launcher2/FestivalPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v2

    .line 272
    .local v2, "previousPageIndex":I
    iget-object v3, p0, Lcom/android/launcher2/FestivalPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3, v2}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "c":Lcom/android/launcher2/CellLayout;
    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 273
    .restart local v0    # "c":Lcom/android/launcher2/CellLayout;
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getPageType()I

    move-result v3

    if-ne v3, v5, :cond_2

    .line 274
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getHomeScreenIndex()I

    move-result v2

    .line 278
    :cond_2
    iget-object v3, p0, Lcom/android/launcher2/FestivalPageManager;->mHidedPage:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 279
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Lcom/android/launcher2/FestivalPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 280
    iget-object v3, p0, Lcom/android/launcher2/FestivalPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "c":Lcom/android/launcher2/CellLayout;
    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 281
    .restart local v0    # "c":Lcom/android/launcher2/CellLayout;
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getPageType()I

    move-result v3

    if-ne v3, v5, :cond_3

    .line 282
    iget-object v3, p0, Lcom/android/launcher2/FestivalPageManager;->mHidedPage:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 286
    :cond_4
    const/4 v1, 0x0

    :goto_2
    iget-object v3, p0, Lcom/android/launcher2/FestivalPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_6

    .line 287
    iget-object v3, p0, Lcom/android/launcher2/FestivalPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "c":Lcom/android/launcher2/CellLayout;
    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 289
    .restart local v0    # "c":Lcom/android/launcher2/CellLayout;
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getPageType()I

    move-result v3

    if-ne v3, v5, :cond_5

    .line 290
    iget-object v3, p0, Lcom/android/launcher2/FestivalPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3, v1}, Lcom/android/launcher2/Workspace;->removeViewAt(I)V

    .line 291
    add-int/lit8 v1, v1, -0x1

    .line 292
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/launcher2/FestivalPageManager;->mPageSwitchByFestivalMode:Z

    .line 286
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 299
    :cond_6
    iget-object v3, p0, Lcom/android/launcher2/FestivalPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3, v2}, Lcom/android/launcher2/Workspace;->setCurrentPage(I)V

    goto :goto_0
.end method

.method public ShowHidedPage()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 304
    iget-object v7, p0, Lcom/android/launcher2/FestivalPageManager;->mHidedPage:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    if-lez v7, :cond_7

    .line 305
    const-string v7, "FestivalPageManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ShowFestivalHidedPage - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/launcher2/FestivalPageManager;->mHidedPage:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " pages will be added"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getScreenCount()I

    move-result v3

    .line 308
    .local v3, "normalPageCount":I
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getMaxScreenCount()I

    move-result v7

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getFestivalScreenCount()I

    move-result v8

    add-int v6, v7, v8

    .line 310
    .local v6, "totalPageCount":I
    sget-boolean v7, Lcom/android/launcher2/Launcher;->sIsSecretModeOn:Z

    if-eqz v7, :cond_0

    .line 311
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getSecretScreenCount()I

    move-result v5

    .line 312
    .local v5, "secretPageCount":I
    add-int/2addr v3, v5

    .line 313
    add-int/2addr v6, v5

    .line 316
    .end local v5    # "secretPageCount":I
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v6, :cond_4

    .line 317
    iget-object v7, p0, Lcom/android/launcher2/FestivalPageManager;->mHidedPage:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 316
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 320
    :cond_1
    if-lt v3, v1, :cond_2

    .line 321
    sub-int v2, v3, v1

    .line 322
    .local v2, "increaseIndex":I
    iget-object v8, p0, Lcom/android/launcher2/FestivalPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget-object v7, p0, Lcom/android/launcher2/FestivalPageManager;->mHidedPage:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    add-int v9, v1, v2

    invoke-virtual {v8, v7, v9}, Lcom/android/launcher2/Workspace;->addView(Landroid/view/View;I)V

    .line 328
    .end local v2    # "increaseIndex":I
    :goto_2
    iput-boolean v10, p0, Lcom/android/launcher2/FestivalPageManager;->mPageSwitchByFestivalMode:Z

    goto :goto_1

    .line 323
    :cond_2
    if-ge v3, v1, :cond_3

    .line 324
    sub-int v4, v1, v3

    .line 325
    .local v4, "reduceIndex":I
    iget-object v8, p0, Lcom/android/launcher2/FestivalPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget-object v7, p0, Lcom/android/launcher2/FestivalPageManager;->mHidedPage:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    sub-int v9, v1, v4

    invoke-virtual {v8, v7, v9}, Lcom/android/launcher2/Workspace;->addView(Landroid/view/View;I)V

    goto :goto_2

    .line 327
    .end local v4    # "reduceIndex":I
    :cond_3
    iget-object v8, p0, Lcom/android/launcher2/FestivalPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget-object v7, p0, Lcom/android/launcher2/FestivalPageManager;->mHidedPage:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    invoke-virtual {v8, v7, v1}, Lcom/android/launcher2/Workspace;->addView(Landroid/view/View;I)V

    goto :goto_2

    .line 331
    :cond_4
    const/4 v1, 0x0

    :goto_3
    iget-object v7, p0, Lcom/android/launcher2/FestivalPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v7}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v7

    if-ge v1, v7, :cond_6

    .line 332
    iget-object v7, p0, Lcom/android/launcher2/FestivalPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v7, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 333
    .local v0, "cl":Lcom/android/launcher2/CellLayout;
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->destroyDummyPanel()V

    .line 331
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 336
    .end local v0    # "cl":Lcom/android/launcher2/CellLayout;
    :cond_6
    iget-object v7, p0, Lcom/android/launcher2/FestivalPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/launcher2/Workspace;->setAllEmptyMessageVisibility(Z)V

    .line 337
    iget-object v7, p0, Lcom/android/launcher2/FestivalPageManager;->mHidedPage:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V

    .line 338
    invoke-virtual {p0, v10}, Lcom/android/launcher2/FestivalPageManager;->setCompleteShowHidedPage(Z)V

    .line 342
    iget-object v7, p0, Lcom/android/launcher2/FestivalPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v7}, Lcom/android/launcher2/Workspace;->getCreatedPageForDrag()Lcom/android/launcher2/CellLayout;

    move-result-object v7

    if-eqz v7, :cond_7

    .line 343
    iget-object v7, p0, Lcom/android/launcher2/FestivalPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v7}, Lcom/android/launcher2/Workspace;->removeCreatedPageForDrag()V

    .line 348
    .end local v1    # "i":I
    .end local v3    # "normalPageCount":I
    .end local v6    # "totalPageCount":I
    :cond_7
    return-void
.end method

.method public bindFestivalWidget(Lcom/android/launcher2/AppWidgetBinder;IILjava/lang/String;)V
    .locals 3
    .param p1, "appWidgetBinder"    # Lcom/android/launcher2/AppWidgetBinder;
    .param p2, "pageIndex"    # I
    .param p3, "widgetType"    # I
    .param p4, "festivalName"    # Ljava/lang/String;

    .prologue
    .line 639
    const/4 v0, 0x0

    .line 640
    .local v0, "widgetCN":Landroid/content/ComponentName;
    packed-switch p3, :pswitch_data_0

    .line 710
    :cond_0
    :goto_0
    return-void

    .line 642
    :pswitch_0
    const-string v1, "com.sec.android.widget.greetingcardwidget"

    invoke-direct {p0, v1}, Lcom/android/launcher2/FestivalPageManager;->isApplicationInstalled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 643
    new-instance v0, Landroid/content/ComponentName;

    .end local v0    # "widgetCN":Landroid/content/ComponentName;
    const-string v1, "com.sec.android.widget.greetingcardwidget"

    const-string v2, "com.sec.android.widget.greetingcardwidget.CardTempleteProvider"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    .restart local v0    # "widgetCN":Landroid/content/ComponentName;
    :goto_1
    new-instance v1, Lcom/android/launcher2/FestivalPageManager$9;

    invoke-direct {v1, p0, p2, p3, p4}, Lcom/android/launcher2/FestivalPageManager$9;-><init>(Lcom/android/launcher2/FestivalPageManager;IILjava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Lcom/android/launcher2/AppWidgetBinder;->allocateBindNew(Landroid/content/ComponentName;Lcom/android/launcher2/AppWidgetBinder$Callback;)V

    goto :goto_0

    .line 648
    :pswitch_1
    const-string v1, "com.sec.android.widget.festivalmemorywidget"

    invoke-direct {p0, v1}, Lcom/android/launcher2/FestivalPageManager;->isApplicationInstalled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 649
    new-instance v0, Landroid/content/ComponentName;

    .end local v0    # "widgetCN":Landroid/content/ComponentName;
    const-string v1, "com.sec.android.widget.festivalmemorywidget"

    const-string v2, "com.sec.android.widget.festivalmemorywidget.FestivalMemoryProvider"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v0    # "widgetCN":Landroid/content/ComponentName;
    goto :goto_1

    .line 654
    :pswitch_2
    const-string v1, "com.sec.android.widget.festivalsawidget"

    invoke-direct {p0, v1}, Lcom/android/launcher2/FestivalPageManager;->isApplicationInstalled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 655
    new-instance v0, Landroid/content/ComponentName;

    .end local v0    # "widgetCN":Landroid/content/ComponentName;
    const-string v1, "com.sec.android.widget.festivalsawidget"

    const-string v2, "com.sec.android.widget.festivalsawidget.FestivalSAProvider"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v0    # "widgetCN":Landroid/content/ComponentName;
    goto :goto_1

    .line 640
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public drawFestivalPageTitle(Lcom/android/launcher2/CellLayout;I)Z
    .locals 6
    .param p1, "cellContext"    # Lcom/android/launcher2/CellLayout;
    .param p2, "festivalKey"    # I

    .prologue
    .line 389
    iget-object v3, p0, Lcom/android/launcher2/FestivalPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-nez v3, :cond_1

    .line 390
    sget-boolean v3, Lcom/android/launcher2/FestivalPageManager;->DEBUGGABLE:Z

    if-eqz v3, :cond_0

    const-string v3, "FestivalPageManager"

    const-string v4, "bindFestivalPage : Workspace is NULL!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    :cond_0
    const/4 v3, 0x0

    .line 456
    :goto_0
    return v3

    .line 394
    :cond_1
    sget-boolean v3, Lcom/android/launcher2/FestivalPageManager;->DEBUGGABLE:Z

    if-eqz v3, :cond_2

    const-string v3, "FestivalPageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "drawFestivalPageTitle : festivalKey"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/FestivalPageManager;->updateFestivalTitle(Lcom/android/launcher2/CellLayout;I)V

    .line 399
    const v3, 0x7f0f00e6

    invoke-virtual {p1, v3}, Lcom/android/launcher2/CellLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 400
    .local v1, "fp_title_area":Landroid/widget/RelativeLayout;
    new-instance v3, Lcom/android/launcher2/FestivalPageManager$6;

    invoke-direct {v3, p0}, Lcom/android/launcher2/FestivalPageManager$6;-><init>(Lcom/android/launcher2/FestivalPageManager;)V

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 407
    const v3, 0x7f0f00e8

    invoke-virtual {p1, v3}, Lcom/android/launcher2/CellLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 408
    .local v2, "setting_icon":Landroid/widget/ImageView;
    new-instance v3, Lcom/android/launcher2/FestivalPageManager$7;

    invoke-direct {v3, p0}, Lcom/android/launcher2/FestivalPageManager$7;-><init>(Lcom/android/launcher2/FestivalPageManager;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 422
    const v3, 0x7f0f00eb

    invoke-virtual {p1, v3}, Lcom/android/launcher2/CellLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 423
    .local v0, "festival_learn_festivalname_title":Landroid/widget/TextView;
    new-instance v3, Lcom/android/launcher2/FestivalPageManager$8;

    invoke-direct {v3, p0, p2}, Lcom/android/launcher2/FestivalPageManager$8;-><init>(Lcom/android/launcher2/FestivalPageManager;I)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 456
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public getCompleteShowHidedPage()Z
    .locals 1

    .prologue
    .line 355
    iget-boolean v0, p0, Lcom/android/launcher2/FestivalPageManager;->mCompleteShowHidedPage:Z

    return v0
.end method

.method public getFestivalPageCount()I
    .locals 5

    .prologue
    .line 378
    const/4 v2, 0x0

    .line 379
    .local v2, "returnCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/launcher2/FestivalPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 380
    iget-object v3, p0, Lcom/android/launcher2/FestivalPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 381
    .local v0, "c":Lcom/android/launcher2/CellLayout;
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getPageType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 382
    add-int/lit8 v2, v2, 0x1

    .line 379
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 384
    .end local v0    # "c":Lcom/android/launcher2/CellLayout;
    :cond_1
    return v2
.end method

.method public getPageSwitchByFestivalMode()Z
    .locals 1

    .prologue
    .line 254
    iget-boolean v0, p0, Lcom/android/launcher2/FestivalPageManager;->mPageSwitchByFestivalMode:Z

    return v0
.end method

.method public initFestivalPage(Lcom/android/launcher2/HomeView;)V
    .locals 1
    .param p1, "homeView"    # Lcom/android/launcher2/HomeView;

    .prologue
    .line 258
    iput-object p1, p0, Lcom/android/launcher2/FestivalPageManager;->mHomeView:Lcom/android/launcher2/HomeView;

    .line 259
    iget-object v0, p0, Lcom/android/launcher2/FestivalPageManager;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/FestivalPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    .line 260
    return-void
.end method

.method public printWorkspaceInfo()V
    .locals 6

    .prologue
    .line 359
    const-string v1, "|"

    .line 360
    .local v1, "finfo":Ljava/lang/String;
    const/4 v0, 0x0

    .line 362
    .local v0, "c":Lcom/android/launcher2/CellLayout;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/launcher2/FestivalPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 363
    iget-object v3, p0, Lcom/android/launcher2/FestivalPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3, v2}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "c":Lcom/android/launcher2/CellLayout;
    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 364
    .restart local v0    # "c":Lcom/android/launcher2/CellLayout;
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getPageType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 365
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "F|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 362
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 366
    :cond_0
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getPageType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 367
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "S|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 369
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "N|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 372
    :cond_2
    const-string v3, "FestivalPageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Festival WorkspaceInfo - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    const-string v3, "FestivalPageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HidedPage size - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher2/FestivalPageManager;->mHidedPage:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    return-void
.end method

.method public sendFestivalWidgetType(IILjava/lang/String;)V
    .locals 4
    .param p1, "widgetType"    # I
    .param p2, "appWidgetId"    # I
    .param p3, "festivalName"    # Ljava/lang/String;

    .prologue
    .line 713
    const/4 v0, 0x0

    .line 714
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 715
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-string v1, "com.android.launcher.action.FESTIVAL_GREETINGWIDGET_ADDED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 721
    .restart local v0    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    const-string v1, "widgetId"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 722
    const-string v1, "festivalType"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 723
    sget-object v1, Lcom/android/launcher2/FestivalPageManager;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1, v0}, Lcom/android/launcher2/Launcher;->sendBroadcast(Landroid/content/Intent;)V

    .line 725
    sget-boolean v1, Lcom/android/launcher2/FestivalPageManager;->DEBUGGABLE:Z

    if-eqz v1, :cond_1

    const-string v1, "FestivalPageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendFestivalWidgetType  [ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ]  = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    :cond_1
    return-void

    .line 716
    :cond_2
    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    .line 717
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-string v1, "com.android.launcher.action.FESTIVAL_MEMORYWIDGET_ADDED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v0    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 718
    :cond_3
    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    .line 719
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-string v1, "com.android.launcher.action.FESTIVAL_CARDWIDGET_ADDED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v0    # "intent":Landroid/content/Intent;
    goto :goto_0
.end method

.method public setCompleteShowHidedPage(Z)V
    .locals 0
    .param p1, "isComplete"    # Z

    .prologue
    .line 351
    iput-boolean p1, p0, Lcom/android/launcher2/FestivalPageManager;->mCompleteShowHidedPage:Z

    .line 352
    return-void
.end method

.method public setPageSwitchByFestivalMode(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 250
    iput-boolean p1, p0, Lcom/android/launcher2/FestivalPageManager;->mPageSwitchByFestivalMode:Z

    .line 251
    return-void
.end method
