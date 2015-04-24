.class public final enum Lcom/android/launcher2/MenuAppModel;
.super Ljava/lang/Enum;
.source "MenuAppModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/MenuAppModel$Normalizer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/launcher2/MenuAppModel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/launcher2/MenuAppModel;

.field private static final DEBUG:Z

.field public static final enum INSTANCE:Lcom/android/launcher2/MenuAppModel;

.field public static final KNOX_DEFAULT_APP:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final MENU_ALPHA_NORMALIZER:Lcom/android/launcher2/MenuAppModel$Normalizer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher2/MenuAppModel$Normalizer",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;"
        }
    .end annotation
.end field

.field public static final MENU_CUSTOM_NORMALIZER:Lcom/android/launcher2/MenuAppModel$Normalizer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher2/MenuAppModel$Normalizer",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;"
        }
    .end annotation
.end field

.field public static final MENU_INSTALL_COMPARATOR_ALPHABETICAL:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;"
        }
    .end annotation
.end field

.field public static final MENU_INSTALL_COMPARATOR_CUSTOM:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "MenuAppModel"

.field private static mCustomMenuSecretPageCnt:I

.field private static sCollator:Ljava/text/Collator;


# instance fields
.field private mAppDiabledItems:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher2/AppItem;",
            ">;"
        }
    .end annotation
.end field

.field private mAppItems:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher2/AppItem;",
            ">;"
        }
    .end annotation
.end field

.field private mApplication:Lcom/android/launcher2/LauncherApplication;

.field private mAvailableWidgets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AvailableWidget;",
            ">;"
        }
    .end annotation
.end field

.field private mCanUninstallApps:Z

.field private mFolderToDelete:Lcom/android/launcher2/AppFolderItem;

.field private mFoldersAdded:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AppFolderItem;",
            ">;"
        }
    .end annotation
.end field

.field private mFoldersRemoved:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AppFolderItem;",
            ">;"
        }
    .end annotation
.end field

.field private mFrontApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHasHiddenItems:Z

.field private mHasPreSecretWidget:Z

.field private mInEditMode:Z

.field private mIsFinishFrontAppsLoader:Z

.field private mIsSafeMode:Z

.field private mMaxItemsPerPage:I

.field private mNormalizer:Lcom/android/launcher2/MenuAppModel$Normalizer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher2/MenuAppModel$Normalizer",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSecretMoveItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSprintFeaturedFolderPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSprintFolderPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSuspendGets:Z

.field private mTopLevelItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 65
    new-instance v0, Lcom/android/launcher2/MenuAppModel;

    const-string v3, "INSTANCE"

    invoke-direct {v0, v3, v2}, Lcom/android/launcher2/MenuAppModel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    .line 64
    new-array v0, v1, [Lcom/android/launcher2/MenuAppModel;

    sget-object v3, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    aput-object v3, v0, v2

    sput-object v0, Lcom/android/launcher2/MenuAppModel;->$VALUES:[Lcom/android/launcher2/MenuAppModel;

    .line 90
    const-string v0, "ro.debuggable"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/launcher2/MenuAppModel;->DEBUG:Z

    .line 92
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/MenuAppModel;->sCollator:Ljava/text/Collator;

    .line 148
    sput v2, Lcom/android/launcher2/MenuAppModel;->mCustomMenuSecretPageCnt:I

    .line 157
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "com.sec.knox.shortcutsms"

    aput-object v3, v0, v2

    const-string v2, "com.sec.knox.containeragent2"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.sec.knox.switcher"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/MenuAppModel;->KNOX_DEFAULT_APP:Ljava/util/List;

    .line 1197
    new-instance v0, Lcom/android/launcher2/MenuAppModel$1;

    invoke-direct {v0}, Lcom/android/launcher2/MenuAppModel$1;-><init>()V

    sput-object v0, Lcom/android/launcher2/MenuAppModel;->MENU_CUSTOM_NORMALIZER:Lcom/android/launcher2/MenuAppModel$Normalizer;

    .line 1345
    new-instance v0, Lcom/android/launcher2/MenuAppModel$2;

    invoke-direct {v0}, Lcom/android/launcher2/MenuAppModel$2;-><init>()V

    sput-object v0, Lcom/android/launcher2/MenuAppModel;->MENU_ALPHA_NORMALIZER:Lcom/android/launcher2/MenuAppModel$Normalizer;

    .line 1393
    new-instance v0, Lcom/android/launcher2/MenuAppModel$3;

    invoke-direct {v0}, Lcom/android/launcher2/MenuAppModel$3;-><init>()V

    sput-object v0, Lcom/android/launcher2/MenuAppModel;->MENU_INSTALL_COMPARATOR_CUSTOM:Ljava/util/Comparator;

    .line 1428
    new-instance v0, Lcom/android/launcher2/MenuAppModel$4;

    invoke-direct {v0}, Lcom/android/launcher2/MenuAppModel$4;-><init>()V

    sput-object v0, Lcom/android/launcher2/MenuAppModel;->MENU_INSTALL_COMPARATOR_ALPHABETICAL:Ljava/util/Comparator;

    return-void

    :cond_0
    move v0, v2

    .line 90
    goto :goto_0
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 147
    iput-boolean v1, p0, Lcom/android/launcher2/MenuAppModel;->mIsSafeMode:Z

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/MenuAppModel;->mAvailableWidgets:Ljava/util/List;

    .line 152
    iput-boolean v1, p0, Lcom/android/launcher2/MenuAppModel;->mHasPreSecretWidget:Z

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/MenuAppModel;->mSprintFolderPackages:Ljava/util/ArrayList;

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/MenuAppModel;->mSprintFeaturedFolderPackages:Ljava/util/ArrayList;

    .line 637
    iput-boolean v1, p0, Lcom/android/launcher2/MenuAppModel;->mIsFinishFrontAppsLoader:Z

    return-void
.end method

.method static synthetic access$000(II)I
    .locals 1
    .param p0, "x0"    # I
    .param p1, "x1"    # I

    .prologue
    .line 64
    invoke-static {p0, p1}, Lcom/android/launcher2/MenuAppModel;->integerCompare(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(JJ)I
    .locals 2
    .param p0, "x0"    # J
    .param p2, "x1"    # J

    .prologue
    .line 64
    invoke-static {p0, p1, p2, p3}, Lcom/android/launcher2/MenuAppModel;->longCompare(JJ)I

    move-result v0

    return v0
.end method

.method static synthetic access$200()Ljava/text/Collator;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/android/launcher2/MenuAppModel;->sCollator:Ljava/text/Collator;

    return-object v0
.end method

.method private addItemtoFolder(Lcom/android/launcher2/AppItem;J)Z
    .locals 8
    .param p1, "item"    # Lcom/android/launcher2/AppItem;
    .param p2, "folderId"    # J

    .prologue
    const/4 v3, 0x1

    .line 1614
    iget-object v4, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AppFolderItem;

    .line 1616
    .local v0, "folderItem":Lcom/android/launcher2/AppFolderItem;
    if-eqz v0, :cond_1

    .line 1617
    invoke-virtual {v0, p1}, Lcom/android/launcher2/AppFolderItem;->addItem(Lcom/android/launcher2/BaseItem;)V

    .line 1618
    new-instance v2, Lcom/android/launcher2/LauncherSettings$AppOrderModify;

    invoke-direct {v2}, Lcom/android/launcher2/LauncherSettings$AppOrderModify;-><init>()V

    .line 1619
    .local v2, "update":Lcom/android/launcher2/LauncherSettings$AppOrderModify;
    const/4 v4, 0x4

    iput v4, v2, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->action:I

    .line 1620
    iput-wide p2, v2, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->folderId:J

    .line 1621
    iget-boolean v4, p1, Lcom/android/launcher2/AppItem;->mHidden:Z

    iput-boolean v4, v2, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->hidden:Z

    .line 1622
    iget-wide v4, p1, Lcom/android/launcher2/AppItem;->mId:J

    iput-wide v4, v2, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    .line 1623
    iget v4, p1, Lcom/android/launcher2/AppItem;->mScreen:I

    iput v4, v2, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->screen:I

    .line 1624
    iget-object v4, p1, Lcom/android/launcher2/AppItem;->mTitle:Ljava/lang/String;

    iput-object v4, v2, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->title:Ljava/lang/String;

    .line 1625
    iget-wide v4, p1, Lcom/android/launcher2/AppItem;->mId:J

    iput-wide v4, v2, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    .line 1626
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1627
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/LauncherSettings$AppOrderModify;>;"
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1628
    iget-object v4, p0, Lcom/android/launcher2/MenuAppModel;->mApplication:Lcom/android/launcher2/LauncherApplication;

    invoke-static {v4, v1}, Lcom/android/launcher2/LauncherModel;->updateAppItems(Landroid/content/Context;Ljava/util/List;)V

    .line 1629
    sget-boolean v4, Lcom/android/launcher2/MenuAppModel;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "MenuAppModel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addItemtoFolder :: ADDED:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/launcher2/AppItem;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1632
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/LauncherSettings$AppOrderModify;>;"
    .end local v2    # "update":Lcom/android/launcher2/LauncherSettings$AppOrderModify;
    :cond_0
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private checkEditMode(Z)V
    .locals 3
    .param p1, "requiredState"    # Z

    .prologue
    .line 302
    iget-boolean v0, p0, Lcom/android/launcher2/MenuAppModel;->mInEditMode:Z

    if-eq v0, p1, :cond_0

    .line 303
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Method requires mInEditMode to be "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 304
    :cond_0
    return-void
.end method

.method private findActivitiesForPackage(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 704
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 705
    .local v1, "mainIntent":Landroid/content/Intent;
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 706
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 707
    iget-object v2, p0, Lcom/android/launcher2/MenuAppModel;->mApplication:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v2}, Lcom/android/launcher2/LauncherApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 708
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v0, :cond_0

    .line 709
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 711
    :cond_0
    return-object v0
.end method

.method private static integerCompare(II)I
    .locals 1
    .param p0, "a"    # I
    .param p1, "b"    # I

    .prologue
    .line 1170
    const/4 v0, 0x0

    .line 1172
    .local v0, "ret":I
    if-le p0, p1, :cond_1

    .line 1173
    const/4 v0, 0x1

    .line 1177
    :cond_0
    :goto_0
    return v0

    .line 1174
    :cond_1
    if-ge p0, p1, :cond_0

    .line 1175
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private isKnoxDefaultShortcutApp(Lcom/android/launcher2/BaseItem;)Z
    .locals 3
    .param p1, "item"    # Lcom/android/launcher2/BaseItem;

    .prologue
    .line 1478
    sget-object v0, Lcom/android/launcher2/MenuAppModel;->KNOX_DEFAULT_APP:Ljava/util/List;

    invoke-virtual {p1}, Lcom/android/launcher2/BaseItem;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1479
    const-string v0, "MenuAppModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "item.getPackageName() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/launcher2/BaseItem;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1480
    const/4 v0, 0x1

    .line 1482
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSystemSignature(Lcom/android/launcher2/AppItem;)Z
    .locals 7
    .param p1, "item"    # Lcom/android/launcher2/AppItem;

    .prologue
    const/4 v3, 0x0

    .line 1533
    if-nez p1, :cond_1

    .line 1543
    :cond_0
    :goto_0
    return v3

    .line 1537
    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/android/launcher2/MenuAppModel;->mApplication:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v4}, Lcom/android/launcher2/LauncherApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/launcher2/AppItem;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x40

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 1539
    .local v1, "itmePkgInfo":Landroid/content/pm/PackageInfo;
    iget-object v4, p0, Lcom/android/launcher2/MenuAppModel;->mApplication:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v4}, Lcom/android/launcher2/LauncherApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "android"

    const/16 v6, 0x40

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 1540
    .local v2, "sys":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_0

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v4, :cond_0

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    iget-object v5, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    .line 1542
    .end local v1    # "itmePkgInfo":Landroid/content/pm/PackageInfo;
    .end local v2    # "sys":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 1543
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method private static longCompare(JJ)I
    .locals 2
    .param p0, "a"    # J
    .param p2, "b"    # J

    .prologue
    .line 1181
    const/4 v0, 0x0

    .line 1183
    .local v0, "ret":I
    cmp-long v1, p0, p2

    if-lez v1, :cond_1

    .line 1184
    const/4 v0, 0x1

    .line 1188
    :cond_0
    :goto_0
    return v0

    .line 1185
    :cond_1
    cmp-long v1, p0, p2

    if-gez v1, :cond_0

    .line 1186
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private setModelFlags()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 1101
    iput-boolean v2, p0, Lcom/android/launcher2/MenuAppModel;->mCanUninstallApps:Z

    .line 1102
    iput-boolean v2, p0, Lcom/android/launcher2/MenuAppModel;->mHasHiddenItems:Z

    .line 1103
    iget-object v2, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AppItem;

    .line 1104
    .local v1, "item":Lcom/android/launcher2/AppItem;
    iget-boolean v2, v1, Lcom/android/launcher2/AppItem;->mHidden:Z

    if-eqz v2, :cond_3

    .line 1105
    iput-boolean v4, p0, Lcom/android/launcher2/MenuAppModel;->mHasHiddenItems:Z

    .line 1116
    :cond_1
    :goto_0
    iget-boolean v2, p0, Lcom/android/launcher2/MenuAppModel;->mCanUninstallApps:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/launcher2/MenuAppModel;->mHasHiddenItems:Z

    if-eqz v2, :cond_0

    .line 1119
    .end local v1    # "item":Lcom/android/launcher2/AppItem;
    :cond_2
    return-void

    .line 1111
    .restart local v1    # "item":Lcom/android/launcher2/AppItem;
    :cond_3
    iget-boolean v2, v1, Lcom/android/launcher2/AppItem;->mSystemApp:Z

    if-nez v2, :cond_1

    iget-object v2, v1, Lcom/android/launcher2/AppItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v3, Lcom/android/launcher2/BaseItem$Type;->MENU_APP:Lcom/android/launcher2/BaseItem$Type;

    if-ne v2, v3, :cond_1

    iget-boolean v2, v1, Lcom/android/launcher2/AppItem;->mSecretItem:Z

    if-nez v2, :cond_1

    .line 1112
    iput-boolean v4, p0, Lcom/android/launcher2/MenuAppModel;->mCanUninstallApps:Z

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/launcher2/MenuAppModel;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 64
    const-class v0, Lcom/android/launcher2/MenuAppModel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/MenuAppModel;

    return-object v0
.end method

.method public static values()[Lcom/android/launcher2/MenuAppModel;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/android/launcher2/MenuAppModel;->$VALUES:[Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v0}, [Lcom/android/launcher2/MenuAppModel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/launcher2/MenuAppModel;

    return-object v0
.end method


# virtual methods
.method appsAddedOrRemoved(Ljava/util/List;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "added":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    .local p2, "removed":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    const/4 v6, 0x1

    .line 173
    iget-object v3, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    if-eqz v3, :cond_a

    .line 174
    const/4 v1, 0x0

    .line 175
    .local v1, "invalidate":Z
    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 176
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/AppItem;

    .line 177
    .local v2, "item":Lcom/android/launcher2/AppItem;
    iget-object v3, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    iget-wide v4, v2, Lcom/android/launcher2/AppItem;->mId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 178
    iget-object v3, v2, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    if-eqz v3, :cond_1

    .line 179
    iget-object v3, v2, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    invoke-virtual {v3, v6}, Lcom/android/launcher2/AppFolderItem;->setToRedrawIcons(Z)V

    .line 181
    :cond_1
    const/4 v1, 0x1

    .line 182
    invoke-virtual {v2}, Lcom/android/launcher2/AppItem;->destroy()V

    goto :goto_0

    .line 185
    .end local v2    # "item":Lcom/android/launcher2/AppItem;
    :cond_2
    invoke-direct {p0}, Lcom/android/launcher2/MenuAppModel;->setModelFlags()V

    .line 187
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_3
    if-eqz p1, :cond_9

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_9

    .line 188
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/AppItem;

    .line 189
    .restart local v2    # "item":Lcom/android/launcher2/AppItem;
    iget-object v3, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    iget-wide v4, v2, Lcom/android/launcher2/AppItem;->mId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    iget-boolean v3, v2, Lcom/android/launcher2/AppItem;->mHidden:Z

    if-eqz v3, :cond_5

    .line 191
    iput-boolean v6, p0, Lcom/android/launcher2/MenuAppModel;->mHasHiddenItems:Z

    goto :goto_1

    .line 199
    :cond_5
    iget-boolean v3, v2, Lcom/android/launcher2/AppItem;->mSystemApp:Z

    if-nez v3, :cond_6

    iget-object v3, v2, Lcom/android/launcher2/AppItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v4, Lcom/android/launcher2/BaseItem$Type;->MENU_APP:Lcom/android/launcher2/BaseItem$Type;

    if-ne v3, v4, :cond_6

    iget-boolean v3, v2, Lcom/android/launcher2/AppItem;->mSecretItem:Z

    if-nez v3, :cond_6

    .line 200
    iput-boolean v6, p0, Lcom/android/launcher2/MenuAppModel;->mCanUninstallApps:Z

    .line 202
    :cond_6
    iget-object v3, v2, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    if-nez v3, :cond_7

    .line 203
    const/4 v1, 0x1

    .line 206
    :cond_7
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Common_EnableSprintExtension"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 207
    invoke-virtual {p0, v2}, Lcom/android/launcher2/MenuAppModel;->checkAndAddAppItemToSprintFolder(Lcom/android/launcher2/AppItem;)Z

    .line 209
    :cond_8
    iget-boolean v3, p0, Lcom/android/launcher2/MenuAppModel;->mInEditMode:Z

    if-eqz v3, :cond_4

    .line 210
    invoke-virtual {v2}, Lcom/android/launcher2/AppItem;->editBegin()V

    goto :goto_1

    .line 214
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "item":Lcom/android/launcher2/AppItem;
    :cond_9
    if-eqz v1, :cond_a

    .line 215
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppModel;->invalidateTopLevelItems()V

    .line 217
    .end local v1    # "invalidate":Z
    :cond_a
    return-void
.end method

.method appsUpdated(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 220
    .local p1, "updated":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    iget-object v2, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    if-eqz v2, :cond_2

    .line 221
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 222
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AppItem;

    .line 223
    .local v1, "item":Lcom/android/launcher2/AppItem;
    iget-object v2, v1, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    if-eqz v2, :cond_0

    .line 224
    iget-object v2, v1, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/launcher2/AppFolderItem;->setToRedrawIcons(Z)V

    goto :goto_0

    .line 227
    .end local v1    # "item":Lcom/android/launcher2/AppItem;
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppModel;->invalidateTopLevelItems()V

    .line 230
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method public canDisableable(Lcom/android/launcher2/AppItem;)Z
    .locals 6
    .param p1, "item"    # Lcom/android/launcher2/AppItem;

    .prologue
    .line 1494
    const/4 v3, 0x1

    .line 1495
    .local v3, "enable":Z
    iget-object v4, p0, Lcom/android/launcher2/MenuAppModel;->mApplication:Lcom/android/launcher2/LauncherApplication;

    const-string v5, "enterprise_policy"

    invoke-virtual {v4, v5}, Lcom/android/launcher2/LauncherApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 1496
    .local v2, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    if-eqz v2, :cond_0

    .line 1497
    invoke-virtual {v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/launcher2/AppItem;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/enterprise/ApplicationPolicy;->getApplicationUninstallationEnabled(Ljava/lang/String;)Z

    move-result v3

    .line 1500
    :cond_0
    const/4 v0, 0x0

    .line 1501
    .local v0, "adminEnable":Z
    iget-object v4, p0, Lcom/android/launcher2/MenuAppModel;->mApplication:Lcom/android/launcher2/LauncherApplication;

    const-string v5, "device_policy"

    invoke-virtual {v4, v5}, Lcom/android/launcher2/LauncherApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 1502
    .local v1, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz v1, :cond_1

    .line 1503
    invoke-virtual {p1}, Lcom/android/launcher2/AppItem;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v0

    .line 1507
    :cond_1
    instance-of v4, p1, Lcom/android/launcher2/AppItem;

    if-eqz v4, :cond_2

    iget-boolean v4, p1, Lcom/android/launcher2/AppItem;->mSystemApp:Z

    if-eqz v4, :cond_2

    sget-object v4, Lcom/android/launcher2/Launcher;->mNonDisableItems:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/launcher2/AppItem;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    sget-boolean v4, Lcom/android/launcher2/Launcher;->isSystemAppDisable:Z

    if-eqz v4, :cond_2

    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuAppModel;->isSystemSignature(Lcom/android/launcher2/AppItem;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p1, Lcom/android/launcher2/AppItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v5, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-eq v4, v5, :cond_2

    if-eqz v3, :cond_2

    if-nez v0, :cond_2

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public canMoveToPrivate(Lcom/android/launcher2/AppItem;)Z
    .locals 2
    .param p1, "item"    # Lcom/android/launcher2/AppItem;

    .prologue
    .line 1555
    iget-boolean v0, p1, Lcom/android/launcher2/AppItem;->mSecretItem:Z

    if-nez v0, :cond_0

    iget-boolean v0, p1, Lcom/android/launcher2/AppItem;->mSystemApp:Z

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/android/launcher2/BaseItem;->isFolder(Lcom/android/launcher2/BaseItem;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/launcher2/Launcher;->mRemovableAppItems:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/launcher2/AppItem;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canMoveToSecretApps()Z
    .locals 4

    .prologue
    .line 251
    const/4 v2, 0x0

    .line 253
    .local v2, "movableItem":Z
    iget-object v3, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    if-eqz v3, :cond_1

    .line 254
    iget-object v3, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AppItem;

    .line 255
    .local v1, "item":Lcom/android/launcher2/AppItem;
    invoke-virtual {p0, v1}, Lcom/android/launcher2/MenuAppModel;->canMoveToPrivate(Lcom/android/launcher2/AppItem;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 256
    const/4 v2, 0x1

    .line 261
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "item":Lcom/android/launcher2/AppItem;
    :cond_1
    return v2
.end method

.method public canRemovable(Lcom/android/launcher2/AppItem;)Z
    .locals 1
    .param p1, "item"    # Lcom/android/launcher2/AppItem;

    .prologue
    .line 1523
    invoke-virtual {p0, p1}, Lcom/android/launcher2/MenuAppModel;->canUninstallable(Lcom/android/launcher2/AppItem;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/launcher2/MenuAppModel;->canDisableable(Lcom/android/launcher2/AppItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canUninstallApps()Z
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/MenuAppModel;->mSuspendGets:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/MenuAppModel;->mCanUninstallApps:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canUninstallable(Lcom/android/launcher2/AppItem;)Z
    .locals 2
    .param p1, "item"    # Lcom/android/launcher2/AppItem;

    .prologue
    .line 1473
    instance-of v0, p1, Lcom/android/launcher2/AppItem;

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/android/launcher2/AppItem;->mSystemApp:Z

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/android/launcher2/AppItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v1, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-eq v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuAppModel;->isKnoxDefaultShortcutApp(Lcom/android/launcher2/BaseItem;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public changeFolderColor(Lcom/android/launcher2/AppFolderItem;)V
    .locals 6
    .param p1, "folder"    # Lcom/android/launcher2/AppFolderItem;

    .prologue
    .line 286
    iget-wide v2, p1, Lcom/android/launcher2/AppFolderItem;->mId:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 287
    new-instance v1, Lcom/android/launcher2/LauncherSettings$AppOrderModify;

    invoke-direct {v1}, Lcom/android/launcher2/LauncherSettings$AppOrderModify;-><init>()V

    .line 288
    .local v1, "update":Lcom/android/launcher2/LauncherSettings$AppOrderModify;
    const/4 v2, 0x6

    iput v2, v1, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->action:I

    .line 289
    iget-wide v2, p1, Lcom/android/launcher2/AppFolderItem;->mId:J

    iput-wide v2, v1, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    .line 290
    iget v2, p1, Lcom/android/launcher2/AppFolderItem;->mColor:I

    iput v2, v1, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->color:I

    .line 291
    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 292
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/LauncherSettings$AppOrderModify;>;"
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    iget-object v2, p0, Lcom/android/launcher2/MenuAppModel;->mApplication:Lcom/android/launcher2/LauncherApplication;

    invoke-static {v2, v0}, Lcom/android/launcher2/LauncherModel;->updateAppItems(Landroid/content/Context;Ljava/util/List;)V

    .line 295
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/LauncherSettings$AppOrderModify;>;"
    .end local v1    # "update":Lcom/android/launcher2/LauncherSettings$AppOrderModify;
    :cond_0
    return-void
.end method

.method public changeFolderName(Lcom/android/launcher2/AppFolderItem;)V
    .locals 6
    .param p1, "folder"    # Lcom/android/launcher2/AppFolderItem;

    .prologue
    .line 274
    iget-wide v2, p1, Lcom/android/launcher2/AppFolderItem;->mId:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 275
    new-instance v1, Lcom/android/launcher2/LauncherSettings$AppOrderModify;

    invoke-direct {v1}, Lcom/android/launcher2/LauncherSettings$AppOrderModify;-><init>()V

    .line 276
    .local v1, "update":Lcom/android/launcher2/LauncherSettings$AppOrderModify;
    const/4 v2, 0x2

    iput v2, v1, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->action:I

    .line 277
    iget-wide v2, p1, Lcom/android/launcher2/AppFolderItem;->mId:J

    iput-wide v2, v1, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    .line 278
    iget-object v2, p1, Lcom/android/launcher2/AppFolderItem;->mTitle:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->title:Ljava/lang/String;

    .line 279
    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 280
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/LauncherSettings$AppOrderModify;>;"
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    iget-object v2, p0, Lcom/android/launcher2/MenuAppModel;->mApplication:Lcom/android/launcher2/LauncherApplication;

    invoke-static {v2, v0}, Lcom/android/launcher2/LauncherModel;->updateAppItems(Landroid/content/Context;Ljava/util/List;)V

    .line 283
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/LauncherSettings$AppOrderModify;>;"
    .end local v1    # "update":Lcom/android/launcher2/LauncherSettings$AppOrderModify;
    :cond_0
    return-void
.end method

.method checkAndAddAppItemToSprintFolder(Lcom/android/launcher2/AppItem;)Z
    .locals 8
    .param p1, "item"    # Lcom/android/launcher2/AppItem;

    .prologue
    const/4 v5, 0x0

    .line 1577
    iget-object v6, p0, Lcom/android/launcher2/MenuAppModel;->mSprintFolderPackages:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/android/launcher2/MenuAppModel;->mSprintFeaturedFolderPackages:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_1

    move v0, v5

    .line 1610
    :cond_0
    :goto_0
    return v0

    .line 1581
    :cond_1
    iget-object v6, p0, Lcom/android/launcher2/MenuAppModel;->mApplication:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v6}, Lcom/android/launcher2/LauncherApplication;->getLauncherProvider()Lcom/android/launcher2/LauncherProvider;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher2/LauncherProvider;->getDatabaseHelper()Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    move-result-object v1

    .line 1582
    .local v1, "dbHelper":Lcom/android/launcher2/LauncherProvider$DatabaseHelper;
    invoke-virtual {p1}, Lcom/android/launcher2/AppItem;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1583
    .local v3, "itemPkg":Ljava/lang/String;
    const/4 v0, 0x0

    .line 1584
    .local v0, "added":Z
    iget-object v6, p0, Lcom/android/launcher2/MenuAppModel;->mSprintFeaturedFolderPackages:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1585
    .local v4, "pkg":Ljava/lang/String;
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1586
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->getSprintFolderID(Z)J

    move-result-wide v6

    invoke-direct {p0, p1, v6, v7}, Lcom/android/launcher2/MenuAppModel;->addItemtoFolder(Lcom/android/launcher2/AppItem;J)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1587
    const/4 v0, 0x1

    goto :goto_1

    .line 1592
    .end local v4    # "pkg":Ljava/lang/String;
    :cond_3
    if-eqz v0, :cond_5

    .line 1594
    iget-object v5, p0, Lcom/android/launcher2/MenuAppModel;->mSprintFeaturedFolderPackages:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1607
    :cond_4
    :goto_2
    if-nez v0, :cond_0

    .line 1608
    sget-boolean v5, Lcom/android/launcher2/MenuAppModel;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "MenuAppModel"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkAndAddAppItemToSprintFolder :: unable to add item to folder : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1596
    :cond_5
    iget-object v6, p0, Lcom/android/launcher2/MenuAppModel;->mSprintFolderPackages:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1597
    .restart local v4    # "pkg":Ljava/lang/String;
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1598
    invoke-virtual {v1, v5}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->getSprintFolderID(Z)J

    move-result-wide v6

    invoke-direct {p0, p1, v6, v7}, Lcom/android/launcher2/MenuAppModel;->addItemtoFolder(Lcom/android/launcher2/AppItem;J)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1599
    const/4 v0, 0x1

    goto :goto_3

    .line 1603
    .end local v4    # "pkg":Ljava/lang/String;
    :cond_7
    if-eqz v0, :cond_4

    .line 1604
    iget-object v5, p0, Lcom/android/launcher2/MenuAppModel;->mSprintFolderPackages:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public editAddFolder()Lcom/android/launcher2/AppFolderItem;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 314
    invoke-direct {p0, v4}, Lcom/android/launcher2/MenuAppModel;->checkEditMode(Z)V

    .line 315
    new-instance v0, Lcom/android/launcher2/AppFolderItem;

    invoke-direct {v0}, Lcom/android/launcher2/AppFolderItem;-><init>()V

    .line 316
    .local v0, "newFolder":Lcom/android/launcher2/AppFolderItem;
    iget-object v1, p0, Lcom/android/launcher2/MenuAppModel;->mApplication:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v1}, Lcom/android/launcher2/LauncherApplication;->getLauncherProvider()Lcom/android/launcher2/LauncherProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/LauncherProvider;->generateNewMenuId()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/launcher2/AppFolderItem;->mId:J

    .line 318
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isMenuIconSizeChanged()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher2/MenuAppModel;->mApplication:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v1}, Lcom/android/launcher2/LauncherApplication;->getPkgResCacheForMenu()Lcom/android/launcher2/PkgResCache;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 319
    iget-object v1, p0, Lcom/android/launcher2/MenuAppModel;->mApplication:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v1}, Lcom/android/launcher2/LauncherApplication;->getPkgResCacheForMenu()Lcom/android/launcher2/PkgResCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/PkgResCache;->getFolderIcon()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/android/launcher2/AppFolderItem;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 324
    :goto_0
    iput-boolean v4, v0, Lcom/android/launcher2/AppFolderItem;->mDirty:Z

    .line 325
    invoke-virtual {v0}, Lcom/android/launcher2/AppFolderItem;->editBegin()V

    .line 326
    iget-object v1, p0, Lcom/android/launcher2/MenuAppModel;->mFoldersAdded:Ljava/util/List;

    if-nez v1, :cond_0

    .line 327
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/MenuAppModel;->mFoldersAdded:Ljava/util/List;

    .line 328
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/MenuAppModel;->mFoldersAdded:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 329
    iget-object v1, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 330
    iget-object v1, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    iget-wide v2, v0, Lcom/android/launcher2/AppFolderItem;->mId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppModel;->invalidateTopLevelItems()V

    .line 334
    return-object v0

    .line 322
    :cond_2
    iget-object v1, p0, Lcom/android/launcher2/MenuAppModel;->mApplication:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v1}, Lcom/android/launcher2/LauncherApplication;->getPkgResCache()Lcom/android/launcher2/PkgResCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/PkgResCache;->getFolderIcon()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/android/launcher2/AppFolderItem;->mIconBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public editBegin()V
    .locals 3

    .prologue
    .line 342
    iget-boolean v2, p0, Lcom/android/launcher2/MenuAppModel;->mInEditMode:Z

    if-nez v2, :cond_2

    .line 343
    iget-object v2, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    if-eqz v2, :cond_1

    .line 344
    iget-object v2, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AppItem;

    .line 345
    .local v1, "item":Lcom/android/launcher2/AppItem;
    invoke-virtual {v1}, Lcom/android/launcher2/AppItem;->editBegin()V

    goto :goto_0

    .line 347
    .end local v1    # "item":Lcom/android/launcher2/AppItem;
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/launcher2/MenuAppModel;->mFolderToDelete:Lcom/android/launcher2/AppFolderItem;

    .line 349
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/launcher2/MenuAppModel;->mInEditMode:Z

    .line 351
    :cond_2
    return-void
.end method

.method public editCommit()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 366
    iget-boolean v5, p0, Lcom/android/launcher2/MenuAppModel;->mInEditMode:Z

    if-eqz v5, :cond_c

    .line 367
    iget-object v5, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    if-eqz v5, :cond_b

    .line 371
    iput-boolean v8, p0, Lcom/android/launcher2/MenuAppModel;->mHasHiddenItems:Z

    .line 372
    iput-boolean v8, p0, Lcom/android/launcher2/MenuAppModel;->mCanUninstallApps:Z

    .line 373
    iget-object v5, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/AppItem;

    .line 374
    .local v2, "item":Lcom/android/launcher2/AppItem;
    invoke-virtual {v2}, Lcom/android/launcher2/AppItem;->editCommit()V

    .line 375
    iget-boolean v5, v2, Lcom/android/launcher2/AppItem;->mHidden:Z

    if-eqz v5, :cond_1

    .line 376
    iput-boolean v9, p0, Lcom/android/launcher2/MenuAppModel;->mHasHiddenItems:Z

    goto :goto_0

    .line 382
    :cond_1
    iget-boolean v5, v2, Lcom/android/launcher2/AppItem;->mSystemApp:Z

    if-nez v5, :cond_0

    iget-object v5, v2, Lcom/android/launcher2/AppItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v6, Lcom/android/launcher2/BaseItem$Type;->MENU_APP:Lcom/android/launcher2/BaseItem$Type;

    if-ne v5, v6, :cond_0

    iget-boolean v5, v2, Lcom/android/launcher2/AppItem;->mSecretItem:Z

    if-nez v5, :cond_0

    .line 383
    iput-boolean v9, p0, Lcom/android/launcher2/MenuAppModel;->mCanUninstallApps:Z

    goto :goto_0

    .line 387
    .end local v2    # "item":Lcom/android/launcher2/AppItem;
    :cond_2
    invoke-virtual {p0, v8}, Lcom/android/launcher2/MenuAppModel;->normalizeModel(Z)V

    .line 392
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 396
    .local v4, "updates":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/LauncherSettings$AppOrderModify;>;"
    iget-object v5, p0, Lcom/android/launcher2/MenuAppModel;->mFoldersAdded:Ljava/util/List;

    if-eqz v5, :cond_4

    .line 397
    iget-object v5, p0, Lcom/android/launcher2/MenuAppModel;->mFoldersAdded:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AppFolderItem;

    .line 398
    .local v0, "folder":Lcom/android/launcher2/AppFolderItem;
    new-instance v3, Lcom/android/launcher2/LauncherSettings$AppOrderModify;

    invoke-direct {v3}, Lcom/android/launcher2/LauncherSettings$AppOrderModify;-><init>()V

    .line 399
    .local v3, "update":Lcom/android/launcher2/LauncherSettings$AppOrderModify;
    iput v8, v3, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->action:I

    .line 400
    iget-wide v6, v0, Lcom/android/launcher2/AppFolderItem;->mId:J

    iput-wide v6, v3, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    .line 401
    iget v5, v0, Lcom/android/launcher2/AppFolderItem;->mScreen:I

    iput v5, v3, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->screen:I

    .line 402
    iget v5, v0, Lcom/android/launcher2/AppFolderItem;->mCell:I

    iput v5, v3, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->cell:I

    .line 403
    iget-object v5, v0, Lcom/android/launcher2/AppFolderItem;->mTitle:Ljava/lang/String;

    iput-object v5, v3, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->title:Ljava/lang/String;

    .line 404
    iget-boolean v5, v0, Lcom/android/launcher2/AppFolderItem;->mSecretItem:Z

    iput-boolean v5, v3, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->secret:Z

    .line 405
    iget v5, v0, Lcom/android/launcher2/AppFolderItem;->mColor:I

    iput v5, v3, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->color:I

    .line 406
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 407
    iput-boolean v8, v0, Lcom/android/launcher2/AppFolderItem;->mDirty:Z

    goto :goto_1

    .line 409
    .end local v0    # "folder":Lcom/android/launcher2/AppFolderItem;
    .end local v3    # "update":Lcom/android/launcher2/LauncherSettings$AppOrderModify;
    :cond_3
    iput-object v10, p0, Lcom/android/launcher2/MenuAppModel;->mFoldersAdded:Ljava/util/List;

    .line 412
    :cond_4
    iget-object v5, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/AppItem;

    .line 413
    .restart local v2    # "item":Lcom/android/launcher2/AppItem;
    iget-boolean v5, v2, Lcom/android/launcher2/AppItem;->mDirty:Z

    if-eqz v5, :cond_5

    .line 414
    new-instance v3, Lcom/android/launcher2/LauncherSettings$AppOrderModify;

    invoke-direct {v3}, Lcom/android/launcher2/LauncherSettings$AppOrderModify;-><init>()V

    .line 415
    .restart local v3    # "update":Lcom/android/launcher2/LauncherSettings$AppOrderModify;
    iget-object v5, v2, Lcom/android/launcher2/AppItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v6, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v5, v6, :cond_6

    .line 416
    iput v9, v3, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->action:I

    .line 423
    :goto_3
    iget-wide v6, v2, Lcom/android/launcher2/AppItem;->mId:J

    iput-wide v6, v3, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    .line 424
    iget v5, v2, Lcom/android/launcher2/AppItem;->mScreen:I

    iput v5, v3, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->screen:I

    .line 425
    iget v5, v2, Lcom/android/launcher2/AppItem;->mCell:I

    iput v5, v3, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->cell:I

    .line 426
    iget-object v5, v2, Lcom/android/launcher2/AppItem;->mTitle:Ljava/lang/String;

    iput-object v5, v3, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->title:Ljava/lang/String;

    .line 427
    iget-boolean v5, v2, Lcom/android/launcher2/AppItem;->mSecretItem:Z

    iput-boolean v5, v3, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->secret:Z

    .line 428
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 429
    iput-boolean v8, v2, Lcom/android/launcher2/AppItem;->mDirty:Z

    goto :goto_2

    .line 419
    :cond_6
    const/4 v5, 0x4

    iput v5, v3, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->action:I

    .line 420
    iget-object v5, v2, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    if-eqz v5, :cond_7

    iget-object v5, v2, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    iget-wide v6, v5, Lcom/android/launcher2/AppFolderItem;->mId:J

    :goto_4
    iput-wide v6, v3, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->folderId:J

    .line 421
    iget-boolean v5, v2, Lcom/android/launcher2/AppItem;->mHidden:Z

    iput-boolean v5, v3, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->hidden:Z

    goto :goto_3

    .line 420
    :cond_7
    const-wide/16 v6, -0x1

    goto :goto_4

    .line 434
    .end local v2    # "item":Lcom/android/launcher2/AppItem;
    .end local v3    # "update":Lcom/android/launcher2/LauncherSettings$AppOrderModify;
    :cond_8
    iget-object v5, p0, Lcom/android/launcher2/MenuAppModel;->mFoldersRemoved:Ljava/util/List;

    if-eqz v5, :cond_a

    .line 435
    iget-object v5, p0, Lcom/android/launcher2/MenuAppModel;->mFoldersRemoved:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AppFolderItem;

    .line 436
    .restart local v0    # "folder":Lcom/android/launcher2/AppFolderItem;
    invoke-virtual {v0}, Lcom/android/launcher2/AppFolderItem;->destroy()V

    .line 437
    new-instance v3, Lcom/android/launcher2/LauncherSettings$AppOrderModify;

    invoke-direct {v3}, Lcom/android/launcher2/LauncherSettings$AppOrderModify;-><init>()V

    .line 438
    .restart local v3    # "update":Lcom/android/launcher2/LauncherSettings$AppOrderModify;
    const/4 v5, 0x5

    iput v5, v3, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->action:I

    .line 439
    iget-wide v6, v0, Lcom/android/launcher2/AppFolderItem;->mId:J

    iput-wide v6, v3, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    .line 440
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 442
    .end local v0    # "folder":Lcom/android/launcher2/AppFolderItem;
    .end local v3    # "update":Lcom/android/launcher2/LauncherSettings$AppOrderModify;
    :cond_9
    iput-object v10, p0, Lcom/android/launcher2/MenuAppModel;->mFoldersRemoved:Ljava/util/List;

    .line 444
    :cond_a
    iput-object v10, p0, Lcom/android/launcher2/MenuAppModel;->mFolderToDelete:Lcom/android/launcher2/AppFolderItem;

    .line 445
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_b

    .line 446
    iget-object v5, p0, Lcom/android/launcher2/MenuAppModel;->mApplication:Lcom/android/launcher2/LauncherApplication;

    invoke-static {v5, v4}, Lcom/android/launcher2/LauncherModel;->updateAppItems(Landroid/content/Context;Ljava/util/List;)V

    .line 449
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v4    # "updates":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/LauncherSettings$AppOrderModify;>;"
    :cond_b
    iput-boolean v8, p0, Lcom/android/launcher2/MenuAppModel;->mInEditMode:Z

    .line 451
    :cond_c
    return-void
.end method

.method public editInsertItemOnNewScreen(Lcom/android/launcher2/AppItem;I)V
    .locals 3
    .param p1, "movedItem"    # Lcom/android/launcher2/AppItem;
    .param p2, "newScreenPos"    # I

    .prologue
    .line 458
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/launcher2/MenuAppModel;->checkEditMode(Z)V

    .line 459
    iget-object v2, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    if-eqz v2, :cond_2

    .line 460
    invoke-virtual {p1}, Lcom/android/launcher2/AppItem;->removeFromFolder()V

    .line 461
    iput p2, p1, Lcom/android/launcher2/AppItem;->mScreen:I

    .line 462
    const/4 v2, 0x0

    iput v2, p1, Lcom/android/launcher2/AppItem;->mCell:I

    .line 463
    iget-object v2, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AppItem;

    .line 464
    .local v1, "item":Lcom/android/launcher2/AppItem;
    if-eq v1, p1, :cond_0

    iget v2, v1, Lcom/android/launcher2/AppItem;->mScreen:I

    if-lt v2, p2, :cond_0

    .line 465
    iget v2, v1, Lcom/android/launcher2/AppItem;->mScreen:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/launcher2/AppItem;->mScreen:I

    goto :goto_0

    .line 467
    .end local v1    # "item":Lcom/android/launcher2/AppItem;
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppModel;->invalidateTopLevelItems()V

    .line 469
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method public editIsDirty(Z)Z
    .locals 4
    .param p1, "folderChangeOnly"    # Z

    .prologue
    const/4 v2, 0x1

    .line 477
    invoke-direct {p0, v2}, Lcom/android/launcher2/MenuAppModel;->checkEditMode(Z)V

    .line 478
    iget-object v3, p0, Lcom/android/launcher2/MenuAppModel;->mFoldersAdded:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher2/MenuAppModel;->mFoldersAdded:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/android/launcher2/MenuAppModel;->mFoldersRemoved:Ljava/util/List;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/launcher2/MenuAppModel;->mFoldersRemoved:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 480
    .local v2, "rc":Z
    :cond_1
    :goto_0
    if-nez v2, :cond_3

    iget-object v3, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    if-eqz v3, :cond_3

    .line 481
    iget-object v3, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AppItem;

    .line 482
    .local v1, "item":Lcom/android/launcher2/AppItem;
    invoke-virtual {v1, p1}, Lcom/android/launcher2/AppItem;->editIsDirty(Z)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 483
    const/4 v2, 0x1

    .line 488
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "item":Lcom/android/launcher2/AppItem;
    :cond_3
    return v2

    .line 478
    .end local v2    # "rc":Z
    :cond_4
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public editRemoveFolder()V
    .locals 4

    .prologue
    .line 506
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/launcher2/MenuAppModel;->checkEditMode(Z)V

    .line 507
    iget-object v0, p0, Lcom/android/launcher2/MenuAppModel;->mFolderToDelete:Lcom/android/launcher2/AppFolderItem;

    .line 508
    .local v0, "folder":Lcom/android/launcher2/AppFolderItem;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    iget-wide v2, v0, Lcom/android/launcher2/AppFolderItem;->mId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, v0, :cond_1

    .line 510
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "unknown folder or folder already removed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 515
    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/MenuAppModel;->mFoldersAdded:Ljava/util/List;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher2/MenuAppModel;->mFoldersAdded:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 516
    invoke-virtual {v0}, Lcom/android/launcher2/AppFolderItem;->destroy()V

    .line 523
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher2/MenuAppModel;->mFolderToDelete:Lcom/android/launcher2/AppFolderItem;

    .line 524
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppModel;->invalidateTopLevelItems()V

    .line 525
    return-void

    .line 518
    :cond_2
    iget-object v1, p0, Lcom/android/launcher2/MenuAppModel;->mFoldersRemoved:Ljava/util/List;

    if-nez v1, :cond_3

    .line 519
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/MenuAppModel;->mFoldersRemoved:Ljava/util/List;

    .line 520
    :cond_3
    iget-object v1, p0, Lcom/android/launcher2/MenuAppModel;->mFoldersRemoved:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 521
    invoke-virtual {v0}, Lcom/android/launcher2/AppFolderItem;->editDestroy()V

    goto :goto_0
.end method

.method public editRevert()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 531
    iget-boolean v3, p0, Lcom/android/launcher2/MenuAppModel;->mInEditMode:Z

    if-eqz v3, :cond_6

    .line 532
    iget-object v3, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    if-eqz v3, :cond_5

    .line 533
    iget-object v3, p0, Lcom/android/launcher2/MenuAppModel;->mFoldersAdded:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 534
    iget-object v3, p0, Lcom/android/launcher2/MenuAppModel;->mFoldersAdded:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AppFolderItem;

    .line 535
    .local v0, "folder":Lcom/android/launcher2/AppFolderItem;
    iget-object v3, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    iget-wide v4, v0, Lcom/android/launcher2/AppFolderItem;->mId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 536
    .end local v0    # "folder":Lcom/android/launcher2/AppFolderItem;
    :cond_0
    iput-object v6, p0, Lcom/android/launcher2/MenuAppModel;->mFoldersAdded:Ljava/util/List;

    .line 538
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    iget-object v3, p0, Lcom/android/launcher2/MenuAppModel;->mFoldersRemoved:Ljava/util/List;

    if-eqz v3, :cond_3

    .line 539
    iget-object v3, p0, Lcom/android/launcher2/MenuAppModel;->mFoldersRemoved:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AppFolderItem;

    .line 540
    .restart local v0    # "folder":Lcom/android/launcher2/AppFolderItem;
    iget-object v3, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    iget-wide v4, v0, Lcom/android/launcher2/AppFolderItem;->mId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 541
    .end local v0    # "folder":Lcom/android/launcher2/AppFolderItem;
    :cond_2
    iput-object v6, p0, Lcom/android/launcher2/MenuAppModel;->mFoldersRemoved:Ljava/util/List;

    .line 543
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_3
    iget-object v3, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/AppItem;

    .line 544
    .local v2, "item":Lcom/android/launcher2/AppItem;
    invoke-virtual {v2}, Lcom/android/launcher2/AppItem;->editRevert()V

    goto :goto_2

    .line 546
    .end local v2    # "item":Lcom/android/launcher2/AppItem;
    :cond_4
    iput-object v6, p0, Lcom/android/launcher2/MenuAppModel;->mFolderToDelete:Lcom/android/launcher2/AppFolderItem;

    .line 547
    invoke-virtual {p0, v7}, Lcom/android/launcher2/MenuAppModel;->normalizeModel(Z)V

    .line 549
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_5
    iput-boolean v7, p0, Lcom/android/launcher2/MenuAppModel;->mInEditMode:Z

    .line 551
    :cond_6
    return-void
.end method

.method public findDisabledItemById(Ljava/lang/Long;)Lcom/android/launcher2/AppItem;
    .locals 4
    .param p1, "id"    # Ljava/lang/Long;

    .prologue
    .line 569
    const/4 v0, 0x0

    .line 570
    .local v0, "item":Lcom/android/launcher2/AppItem;
    iget-object v1, p0, Lcom/android/launcher2/MenuAppModel;->mAppDiabledItems:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 571
    iget-object v1, p0, Lcom/android/launcher2/MenuAppModel;->mAppDiabledItems:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "item":Lcom/android/launcher2/AppItem;
    check-cast v0, Lcom/android/launcher2/AppItem;

    .line 573
    .restart local v0    # "item":Lcom/android/launcher2/AppItem;
    :cond_0
    return-object v0
.end method

.method public findItemById(J)Lcom/android/launcher2/AppItem;
    .locals 3
    .param p1, "id"    # J

    .prologue
    .line 561
    const/4 v0, 0x0

    .line 562
    .local v0, "item":Lcom/android/launcher2/AppItem;
    iget-object v1, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 563
    iget-object v1, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "item":Lcom/android/launcher2/AppItem;
    check-cast v0, Lcom/android/launcher2/AppItem;

    .line 565
    .restart local v0    # "item":Lcom/android/launcher2/AppItem;
    :cond_0
    return-object v0
.end method

.method public getAppItems()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher2/AppItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 922
    iget-object v0, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    return-object v0
.end method

.method public getAvailableWidgets()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AvailableWidget;",
            ">;"
        }
    .end annotation

    .prologue
    .line 954
    iget-object v0, p0, Lcom/android/launcher2/MenuAppModel;->mAvailableWidgets:Ljava/util/List;

    return-object v0
.end method

.method public getCurrentComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 583
    iget-object v0, p0, Lcom/android/launcher2/MenuAppModel;->mNormalizer:Lcom/android/launcher2/MenuAppModel$Normalizer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuAppModel;->mNormalizer:Lcom/android/launcher2/MenuAppModel$Normalizer;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/launcher2/MenuAppModel;->MENU_CUSTOM_NORMALIZER:Lcom/android/launcher2/MenuAppModel$Normalizer;

    goto :goto_0
.end method

.method public getCustomMenuSecretPageCnt()I
    .locals 1

    .prologue
    .line 946
    sget v0, Lcom/android/launcher2/MenuAppModel;->mCustomMenuSecretPageCnt:I

    return v0
.end method

.method public getDisabledAppItemsList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 725
    iget-object v0, p0, Lcom/android/launcher2/MenuAppModel;->mAppDiabledItems:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuAppModel;->mAppDiabledItems:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 726
    iget-object v0, p0, Lcom/android/launcher2/MenuAppModel;->mAppDiabledItems:Ljava/util/Map;

    sget-object v1, Lcom/android/launcher2/MenuAppModel;->MENU_ALPHA_NORMALIZER:Lcom/android/launcher2/MenuAppModel$Normalizer;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/launcher2/MenuAppModel;->normalizeAppMap(Ljava/util/Map;Lcom/android/launcher2/MenuAppModel$Normalizer;Z)Ljava/util/List;

    move-result-object v0

    .line 728
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppModel;->getDisabledAppList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getDisabledAppList()Ljava/util/List;
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 732
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuAppModel;->mAppDiabledItems:Ljava/util/Map;

    move-object/from16 v23, v0

    if-eqz v23, :cond_1

    .line 733
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuAppModel;->mAppDiabledItems:Ljava/util/Map;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/util/Map;->clear()V

    .line 739
    :goto_0
    const/4 v15, 0x0

    .line 742
    .local v15, "mIconBitmap":Landroid/graphics/Bitmap;
    const/4 v13, 0x0

    .line 743
    .local v13, "item":Lcom/android/launcher2/AppItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuAppModel;->mApplication:Lcom/android/launcher2/LauncherApplication;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/launcher2/LauncherApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v21

    .line 744
    .local v21, "pkgMgr":Landroid/content/pm/PackageManager;
    const/16 v23, 0x200

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v20

    .line 746
    .local v20, "packs":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    const-wide/16 v24, 0x1

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 748
    .local v11, "id":Ljava/lang/Long;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v23

    move/from16 v0, v23

    if-ge v9, v0, :cond_9

    .line 749
    move-object/from16 v0, v20

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/content/pm/ApplicationInfo;

    .line 750
    .local v19, "p":Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/launcher2/MenuAppModel;->findActivitiesForPackage(Ljava/lang/String;)Ljava/util/List;

    move-result-object v17

    .line 751
    .local v17, "matches":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v8, 0x0

    .line 754
    .local v8, "enabledSetting":I
    :try_start_0
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 764
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->isEmpty()Z

    move-result v23

    if-eqz v23, :cond_0

    move-object/from16 v0, v19

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    move/from16 v23, v0

    if-nez v23, :cond_0

    const/16 v23, 0x2

    move/from16 v0, v23

    if-eq v8, v0, :cond_0

    .line 767
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v23, v0

    const-string v24, "com.sec.android.emergencylauncher"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_0

    sget-object v23, Lcom/android/launcher2/MenuAppModel;->KNOX_DEFAULT_APP:Ljava/util/List;

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-interface/range {v23 .. v24}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_2

    .line 748
    :cond_0
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 736
    .end local v8    # "enabledSetting":I
    .end local v9    # "i":I
    .end local v11    # "id":Ljava/lang/Long;
    .end local v13    # "item":Lcom/android/launcher2/AppItem;
    .end local v15    # "mIconBitmap":Landroid/graphics/Bitmap;
    .end local v17    # "matches":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v19    # "p":Landroid/content/pm/ApplicationInfo;
    .end local v20    # "packs":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v21    # "pkgMgr":Landroid/content/pm/PackageManager;
    :cond_1
    new-instance v23, Ljava/util/HashMap;

    invoke-direct/range {v23 .. v23}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/MenuAppModel;->mAppDiabledItems:Ljava/util/Map;

    goto/16 :goto_0

    .line 756
    .restart local v8    # "enabledSetting":I
    .restart local v9    # "i":I
    .restart local v11    # "id":Ljava/lang/Long;
    .restart local v13    # "item":Lcom/android/launcher2/AppItem;
    .restart local v15    # "mIconBitmap":Landroid/graphics/Bitmap;
    .restart local v17    # "matches":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v19    # "p":Landroid/content/pm/ApplicationInfo;
    .restart local v20    # "packs":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v21    # "pkgMgr":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v7

    .line 757
    .local v7, "e":Ljava/lang/IllegalArgumentException;
    const-string v23, "MenuAppModel"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, ""

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 771
    .end local v7    # "e":Ljava/lang/IllegalArgumentException;
    :cond_2
    new-instance v23, Landroid/content/Intent;

    const-string v24, "android.intent.action.MAIN"

    invoke-direct/range {v23 .. v24}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v24, "android.intent.category.LAUNCHER"

    invoke-virtual/range {v23 .. v24}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v23

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v16

    .line 772
    .local v16, "mainIntent":Landroid/content/Intent;
    const/16 v23, 0x200

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 774
    .local v4, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/ResolveInfo;

    .line 775
    .local v12, "info":Landroid/content/pm/ResolveInfo;
    new-instance v6, Landroid/content/ComponentName;

    iget-object v0, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v23, v0

    iget-object v0, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-direct {v6, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    .local v6, "cn":Landroid/content/ComponentName;
    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v5

    .line 777
    .local v5, "ces":I
    const/16 v23, 0x1

    move/from16 v0, v23

    if-eq v5, v0, :cond_4

    if-nez v5, :cond_3

    iget-object v0, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroid/content/pm/ActivityInfo;->enabled:Z

    move/from16 v23, v0

    if-eqz v23, :cond_3

    .line 779
    :cond_4
    new-instance v13, Lcom/android/launcher2/AppItem;

    .end local v13    # "item":Lcom/android/launcher2/AppItem;
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-direct {v13, v6, v0}, Lcom/android/launcher2/AppItem;-><init>(Landroid/content/ComponentName;Z)V

    .line 781
    .restart local v13    # "item":Lcom/android/launcher2/AppItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuAppModel;->mApplication:Lcom/android/launcher2/LauncherApplication;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/launcher2/LauncherApplication;->getPkgResCache()Lcom/android/launcher2/PkgResCache;

    move-result-object v23

    if-eqz v23, :cond_5

    .line 783
    :try_start_1
    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v22

    .line 784
    .local v22, "res":Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuAppModel;->mApplication:Lcom/android/launcher2/LauncherApplication;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/launcher2/LauncherApplication;->getPkgResCache()Lcom/android/launcher2/PkgResCache;

    move-result-object v23

    invoke-virtual {v12}, Landroid/content/pm/ResolveInfo;->getIconResource()I

    move-result v24

    iget-object v0, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    move/from16 v2, v24

    move-object/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher2/PkgResCache;->loadBitmap(Landroid/content/res/Resources;ILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 785
    if-nez v15, :cond_5

    .line 786
    invoke-virtual/range {v21 .. v21}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuAppModel;->mApplication:Lcom/android/launcher2/LauncherApplication;

    move-object/from16 v24, v0

    invoke-static/range {v23 .. v24}, Lcom/android/launcher2/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v15

    .line 791
    .end local v22    # "res":Landroid/content/res/Resources;
    :cond_5
    :goto_4
    sget-boolean v23, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_THEME_ENABLE:Z

    if-eqz v23, :cond_7

    .line 792
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/android/launcher2/LauncherApplication;->getThemeLoader()Lcom/android/launcher2/ThemeLoader;

    move-result-object v14

    .line 793
    .local v14, "loader":Lcom/android/launcher2/ThemeLoader;
    invoke-virtual {v14}, Lcom/android/launcher2/ThemeLoader;->isUseDefaultTheme()Z

    move-result v23

    if-nez v23, :cond_7

    .line 794
    iget-object v0, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Lcom/android/launcher2/ThemeLoader;->loadAppIconBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v18

    .line 795
    .local v18, "newIcon":Landroid/graphics/Bitmap;
    if-nez v18, :cond_6

    .line 796
    invoke-virtual {v14, v15}, Lcom/android/launcher2/ThemeLoader;->load3rdAppIconBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v18

    .line 798
    :cond_6
    if-nez v18, :cond_8

    .line 801
    .end local v14    # "loader":Lcom/android/launcher2/ThemeLoader;
    .end local v18    # "newIcon":Landroid/graphics/Bitmap;
    :cond_7
    :goto_5
    iput-object v15, v13, Lcom/android/launcher2/AppItem;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 802
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    move-wide/from16 v0, v24

    iput-wide v0, v13, Lcom/android/launcher2/AppItem;->mId:J

    .line 803
    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    move-object/from16 v0, v23

    iput-object v0, v13, Lcom/android/launcher2/AppItem;->mTitle:Ljava/lang/String;

    .line 804
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuAppModel;->mAppDiabledItems:Ljava/util/Map;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-interface {v0, v11, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 805
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    const-wide/16 v26, 0x1

    add-long v24, v24, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    goto/16 :goto_3

    .restart local v14    # "loader":Lcom/android/launcher2/ThemeLoader;
    .restart local v18    # "newIcon":Landroid/graphics/Bitmap;
    :cond_8
    move-object/from16 v15, v18

    .line 798
    goto :goto_5

    .line 810
    .end local v4    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v5    # "ces":I
    .end local v6    # "cn":Landroid/content/ComponentName;
    .end local v8    # "enabledSetting":I
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v12    # "info":Landroid/content/pm/ResolveInfo;
    .end local v14    # "loader":Lcom/android/launcher2/ThemeLoader;
    .end local v16    # "mainIntent":Landroid/content/Intent;
    .end local v17    # "matches":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v18    # "newIcon":Landroid/graphics/Bitmap;
    .end local v19    # "p":Landroid/content/pm/ApplicationInfo;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuAppModel;->mAppDiabledItems:Ljava/util/Map;

    move-object/from16 v23, v0

    sget-object v24, Lcom/android/launcher2/MenuAppModel;->MENU_ALPHA_NORMALIZER:Lcom/android/launcher2/MenuAppModel$Normalizer;

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher2/MenuAppModel;->normalizeAppMap(Ljava/util/Map;Lcom/android/launcher2/MenuAppModel$Normalizer;Z)Ljava/util/List;

    move-result-object v23

    return-object v23

    .line 787
    .restart local v4    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v5    # "ces":I
    .restart local v6    # "cn":Landroid/content/ComponentName;
    .restart local v8    # "enabledSetting":I
    .restart local v10    # "i$":Ljava/util/Iterator;
    .restart local v12    # "info":Landroid/content/pm/ResolveInfo;
    .restart local v16    # "mainIntent":Landroid/content/Intent;
    .restart local v17    # "matches":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v19    # "p":Landroid/content/pm/ApplicationInfo;
    :catch_1
    move-exception v23

    goto :goto_4
.end method

.method public getFolderToDelete()Lcom/android/launcher2/AppFolderItem;
    .locals 1

    .prologue
    .line 594
    iget-object v0, p0, Lcom/android/launcher2/MenuAppModel;->mFolderToDelete:Lcom/android/launcher2/AppFolderItem;

    return-object v0
.end method

.method public getHiddenApps()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 606
    const/4 v0, 0x0

    .line 607
    .local v0, "hiddenItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    iget-boolean v3, p0, Lcom/android/launcher2/MenuAppModel;->mSuspendGets:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    if-eqz v3, :cond_2

    .line 608
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "hiddenItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 609
    .restart local v0    # "hiddenItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    iget-object v3, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/AppItem;

    .line 610
    .local v2, "item":Lcom/android/launcher2/AppItem;
    iget-boolean v3, v2, Lcom/android/launcher2/AppItem;->mHidden:Z

    if-eqz v3, :cond_0

    .line 611
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 613
    .end local v2    # "item":Lcom/android/launcher2/AppItem;
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 614
    sget-object v3, Lcom/android/launcher2/MenuAppModel;->MENU_ALPHA_NORMALIZER:Lcom/android/launcher2/MenuAppModel$Normalizer;

    invoke-interface {v3, v0, v4, v4}, Lcom/android/launcher2/MenuAppModel$Normalizer;->normalize(Ljava/util/List;IZ)V

    .line 616
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    sget-boolean v3, Lcom/android/launcher2/MenuAppModel;->DEBUG:Z

    if-eqz v3, :cond_3

    .line 617
    const-string v4, "MenuAppModel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getHiddenApps. count: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez v0, :cond_4

    const/4 v3, -0x1

    :goto_1
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    :cond_3
    return-object v0

    .line 617
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    goto :goto_1
.end method

.method public getNormalItems(Z)Ljava/util/List;
    .locals 7
    .param p1, "getAppListFlag"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 838
    const/4 v4, 0x0

    .line 839
    .local v4, "wholeList":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    iget-boolean v5, p0, Lcom/android/launcher2/MenuAppModel;->mSuspendGets:Z

    if-nez v5, :cond_1

    .line 840
    iget-object v5, p0, Lcom/android/launcher2/MenuAppModel;->mTopLevelItems:Ljava/util/List;

    if-nez v5, :cond_0

    .line 841
    iget-boolean v5, p0, Lcom/android/launcher2/MenuAppModel;->mInEditMode:Z

    invoke-virtual {p0, v5}, Lcom/android/launcher2/MenuAppModel;->normalizeModel(Z)V

    .line 842
    :cond_0
    iget-object v5, p0, Lcom/android/launcher2/MenuAppModel;->mTopLevelItems:Ljava/util/List;

    if-eqz v5, :cond_1

    .line 843
    iget-object v5, p0, Lcom/android/launcher2/MenuAppModel;->mTopLevelItems:Ljava/util/List;

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 846
    :cond_1
    const/4 v3, 0x0

    .line 847
    .local v3, "returnList":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    if-eqz v4, :cond_7

    .line 848
    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "returnList":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 851
    .restart local v3    # "returnList":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    if-eqz p1, :cond_3

    .line 852
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppModel;->getCustomMenuSecretPageCnt()I

    move-result v2

    .line 853
    .local v2, "menuSecretPageCnt":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_7

    .line 854
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AppItem;

    .line 855
    .local v0, "checkItem":Lcom/android/launcher2/AppItem;
    iget-boolean v5, v0, Lcom/android/launcher2/AppItem;->mSecretItem:Z

    if-nez v5, :cond_2

    .line 856
    iget v5, v0, Lcom/android/launcher2/AppItem;->mScreen:I

    sub-int/2addr v5, v2

    iput v5, v0, Lcom/android/launcher2/AppItem;->mScreen:I

    .line 857
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 853
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 861
    .end local v0    # "checkItem":Lcom/android/launcher2/AppItem;
    .end local v1    # "i":I
    .end local v2    # "menuSecretPageCnt":I
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppModel;->getCustomMenuSecretPageCnt()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_5

    .line 862
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_7

    .line 863
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AppItem;

    .line 864
    .restart local v0    # "checkItem":Lcom/android/launcher2/AppItem;
    iget-boolean v5, v0, Lcom/android/launcher2/AppItem;->mSecretItem:Z

    if-nez v5, :cond_4

    .line 865
    iget v5, v0, Lcom/android/launcher2/AppItem;->mScreen:I

    add-int/lit8 v5, v5, -0x1

    iput v5, v0, Lcom/android/launcher2/AppItem;->mScreen:I

    .line 866
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 862
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 870
    .end local v0    # "checkItem":Lcom/android/launcher2/AppItem;
    .end local v1    # "i":I
    :cond_5
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_7

    .line 871
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AppItem;

    .line 872
    .restart local v0    # "checkItem":Lcom/android/launcher2/AppItem;
    iget-boolean v5, v0, Lcom/android/launcher2/AppItem;->mSecretItem:Z

    if-nez v5, :cond_6

    .line 873
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 870
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 879
    .end local v0    # "checkItem":Lcom/android/launcher2/AppItem;
    .end local v1    # "i":I
    :cond_7
    return-object v3
.end method

.method public getSecretItems()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 814
    const/4 v3, 0x0

    .line 815
    .local v3, "wholeList":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    iget-boolean v4, p0, Lcom/android/launcher2/MenuAppModel;->mSuspendGets:Z

    if-nez v4, :cond_1

    .line 816
    iget-object v4, p0, Lcom/android/launcher2/MenuAppModel;->mTopLevelItems:Ljava/util/List;

    if-nez v4, :cond_0

    .line 817
    iget-boolean v4, p0, Lcom/android/launcher2/MenuAppModel;->mInEditMode:Z

    invoke-virtual {p0, v4}, Lcom/android/launcher2/MenuAppModel;->normalizeModel(Z)V

    .line 818
    :cond_0
    iget-object v4, p0, Lcom/android/launcher2/MenuAppModel;->mTopLevelItems:Ljava/util/List;

    if-eqz v4, :cond_1

    .line 819
    iget-object v4, p0, Lcom/android/launcher2/MenuAppModel;->mTopLevelItems:Ljava/util/List;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 822
    :cond_1
    const/4 v2, 0x0

    .line 823
    .local v2, "returnList":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    if-eqz v3, :cond_3

    .line 824
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "returnList":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 827
    .restart local v2    # "returnList":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 828
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AppItem;

    .line 829
    .local v0, "checkItem":Lcom/android/launcher2/AppItem;
    iget-boolean v4, v0, Lcom/android/launcher2/AppItem;->mSecretItem:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 830
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 827
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 834
    .end local v0    # "checkItem":Lcom/android/launcher2/AppItem;
    .end local v1    # "i":I
    :cond_3
    return-object v2
.end method

.method public getTopLevelItems()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 640
    const/4 v7, 0x0

    .line 641
    .local v7, "returnList":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    iget-boolean v8, p0, Lcom/android/launcher2/MenuAppModel;->mSuspendGets:Z

    if-nez v8, :cond_1

    .line 642
    iget-object v8, p0, Lcom/android/launcher2/MenuAppModel;->mTopLevelItems:Ljava/util/List;

    if-nez v8, :cond_0

    .line 643
    iget-boolean v8, p0, Lcom/android/launcher2/MenuAppModel;->mInEditMode:Z

    invoke-virtual {p0, v8}, Lcom/android/launcher2/MenuAppModel;->normalizeModel(Z)V

    .line 644
    :cond_0
    iget-object v8, p0, Lcom/android/launcher2/MenuAppModel;->mTopLevelItems:Ljava/util/List;

    if-eqz v8, :cond_1

    .line 645
    iget-object v8, p0, Lcom/android/launcher2/MenuAppModel;->mTopLevelItems:Ljava/util/List;

    invoke-static {v8}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    .line 649
    :cond_1
    if-eqz v7, :cond_9

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_9

    .line 651
    iget-object v8, p0, Lcom/android/launcher2/MenuAppModel;->mApplication:Lcom/android/launcher2/LauncherApplication;

    const-string v9, "com.sec.android.app.launcher.prefs"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/android/launcher2/LauncherApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 652
    .local v6, "prefs":Landroid/content/SharedPreferences;
    const-string v8, "MenuView.ViewType"

    sget-object v9, Lcom/android/launcher2/MenuView$ViewType;->CUSTOM_GRID:Lcom/android/launcher2/MenuView$ViewType;

    invoke-virtual {v9}, Lcom/android/launcher2/MenuView$ViewType;->name()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/launcher2/MenuView$ViewType;->valueOf(Ljava/lang/String;)Lcom/android/launcher2/MenuView$ViewType;

    move-result-object v4

    .line 654
    .local v4, "mViewType":Lcom/android/launcher2/MenuView$ViewType;
    sget-object v8, Lcom/android/launcher2/MenuView$ViewType;->ALPHABETIC_GRID:Lcom/android/launcher2/MenuView$ViewType;

    if-ne v4, v8, :cond_9

    .line 655
    iget-boolean v8, p0, Lcom/android/launcher2/MenuAppModel;->mIsFinishFrontAppsLoader:Z

    if-nez v8, :cond_2

    .line 656
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/launcher2/MenuAppModel;->mIsFinishFrontAppsLoader:Z

    .line 657
    iget-object v8, p0, Lcom/android/launcher2/MenuAppModel;->mApplication:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v8}, Lcom/android/launcher2/LauncherApplication;->getLauncherProvider()Lcom/android/launcher2/LauncherProvider;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher2/LauncherProvider;->loadFrontApps()Ljava/util/ArrayList;

    move-result-object v8

    iput-object v8, p0, Lcom/android/launcher2/MenuAppModel;->mFrontApps:Ljava/util/ArrayList;

    .line 660
    :cond_2
    iget-object v8, p0, Lcom/android/launcher2/MenuAppModel;->mFrontApps:Ljava/util/ArrayList;

    if-eqz v8, :cond_9

    iget-object v8, p0, Lcom/android/launcher2/MenuAppModel;->mFrontApps:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_9

    .line 661
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    invoke-direct {v5, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 662
    .local v5, "newList":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-ge v1, v8, :cond_5

    .line 663
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AppItem;

    .line 665
    .local v0, "chkItem":Lcom/android/launcher2/AppItem;
    iget-object v8, p0, Lcom/android/launcher2/MenuAppModel;->mFrontApps:Ljava/util/ArrayList;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/launcher2/MenuAppModel;->mFrontApps:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_3

    if-eqz v0, :cond_3

    iget-object v8, v0, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    if-eqz v8, :cond_3

    .line 666
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    iget-object v8, p0, Lcom/android/launcher2/MenuAppModel;->mFrontApps:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v3, v8, :cond_3

    .line 667
    iget-object v8, v0, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/android/launcher2/MenuAppModel;->mFrontApps:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 668
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 662
    .end local v3    # "j":I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 666
    .restart local v3    # "j":I
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 675
    .end local v0    # "chkItem":Lcom/android/launcher2/AppItem;
    .end local v3    # "j":I
    :cond_5
    const/4 v2, 0x0

    .line 676
    .local v2, "isExsit":Z
    const/4 v1, 0x0

    :goto_2
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-ge v1, v8, :cond_a

    .line 677
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AppItem;

    .line 678
    .restart local v0    # "chkItem":Lcom/android/launcher2/AppItem;
    const/4 v2, 0x0

    .line 680
    iget-object v8, p0, Lcom/android/launcher2/MenuAppModel;->mFrontApps:Ljava/util/ArrayList;

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/android/launcher2/MenuAppModel;->mFrontApps:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_6

    if-eqz v0, :cond_6

    iget-object v8, v0, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    if-eqz v8, :cond_6

    .line 681
    const/4 v3, 0x0

    .restart local v3    # "j":I
    :goto_3
    iget-object v8, p0, Lcom/android/launcher2/MenuAppModel;->mFrontApps:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v3, v8, :cond_6

    .line 682
    iget-object v8, v0, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/android/launcher2/MenuAppModel;->mFrontApps:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 683
    const/4 v2, 0x1

    .line 689
    .end local v3    # "j":I
    :cond_6
    if-nez v2, :cond_7

    .line 690
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 676
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 681
    .restart local v3    # "j":I
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .end local v0    # "chkItem":Lcom/android/launcher2/AppItem;
    .end local v1    # "i":I
    .end local v2    # "isExsit":Z
    .end local v3    # "j":I
    .end local v4    # "mViewType":Lcom/android/launcher2/MenuView$ViewType;
    .end local v5    # "newList":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    .end local v6    # "prefs":Landroid/content/SharedPreferences;
    :cond_9
    move-object v5, v7

    .line 698
    :cond_a
    return-object v5
.end method

.method public getUninstallableApps()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 892
    const/4 v3, 0x0

    .line 893
    .local v3, "uninstallApps":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    iget-boolean v5, p0, Lcom/android/launcher2/MenuAppModel;->mSuspendGets:Z

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    if-eqz v5, :cond_3

    .line 894
    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "uninstallApps":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 895
    .restart local v3    # "uninstallApps":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    iget-object v5, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AppItem;

    .line 896
    .local v1, "item":Lcom/android/launcher2/AppItem;
    iget-object v5, v1, Lcom/android/launcher2/AppItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v6, Lcom/android/launcher2/BaseItem$Type;->MENU_APP:Lcom/android/launcher2/BaseItem$Type;

    if-ne v5, v6, :cond_0

    iget-boolean v5, v1, Lcom/android/launcher2/AppItem;->mSystemApp:Z

    if-nez v5, :cond_0

    iget-boolean v5, v1, Lcom/android/launcher2/AppItem;->mHidden:Z

    if-nez v5, :cond_0

    .line 901
    iget-boolean v5, p0, Lcom/android/launcher2/MenuAppModel;->mIsSafeMode:Z

    if-eqz v5, :cond_1

    iget-boolean v5, v1, Lcom/android/launcher2/AppItem;->mUnavailable:Z

    if-nez v5, :cond_0

    :cond_1
    invoke-direct {p0, v1}, Lcom/android/launcher2/MenuAppModel;->isKnoxDefaultShortcutApp(Lcom/android/launcher2/BaseItem;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 902
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 905
    .end local v1    # "item":Lcom/android/launcher2/AppItem;
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 906
    iget-object v5, p0, Lcom/android/launcher2/MenuAppModel;->mApplication:Lcom/android/launcher2/LauncherApplication;

    const-string v6, "com.sec.android.app.launcher.prefs"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/android/launcher2/LauncherApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 907
    .local v2, "prefs":Landroid/content/SharedPreferences;
    const-string v5, "MenuView.ViewType"

    sget-object v6, Lcom/android/launcher2/MenuView$ViewType;->CUSTOM_GRID:Lcom/android/launcher2/MenuView$ViewType;

    invoke-virtual {v6}, Lcom/android/launcher2/MenuView$ViewType;->name()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/launcher2/MenuView$ViewType;->valueOf(Ljava/lang/String;)Lcom/android/launcher2/MenuView$ViewType;

    move-result-object v4

    .line 909
    .local v4, "viewType":Lcom/android/launcher2/MenuView$ViewType;
    sget-object v5, Lcom/android/launcher2/MenuView$ViewType;->ALPHABETIC_GRID:Lcom/android/launcher2/MenuView$ViewType;

    if-ne v4, v5, :cond_5

    .line 910
    sget-object v5, Lcom/android/launcher2/MenuAppModel;->MENU_INSTALL_COMPARATOR_ALPHABETICAL:Ljava/util/Comparator;

    invoke-static {v3, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 916
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "prefs":Landroid/content/SharedPreferences;
    .end local v4    # "viewType":Lcom/android/launcher2/MenuView$ViewType;
    :cond_3
    :goto_1
    sget-boolean v5, Lcom/android/launcher2/MenuAppModel;->DEBUG:Z

    if-eqz v5, :cond_4

    .line 917
    const-string v6, "MenuAppModel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getUninstallableApps. count: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-nez v3, :cond_6

    const/4 v5, -0x1

    :goto_2
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    :cond_4
    return-object v3

    .line 912
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v2    # "prefs":Landroid/content/SharedPreferences;
    .restart local v4    # "viewType":Lcom/android/launcher2/MenuView$ViewType;
    :cond_5
    sget-object v5, Lcom/android/launcher2/MenuAppModel;->MENU_INSTALL_COMPARATOR_CUSTOM:Ljava/util/Comparator;

    invoke-static {v3, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_1

    .line 917
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "prefs":Landroid/content/SharedPreferences;
    .end local v4    # "viewType":Lcom/android/launcher2/MenuView$ViewType;
    :cond_6
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    goto :goto_2
.end method

.method public hasHiddenApps()Z
    .locals 1

    .prologue
    .line 969
    iget-object v0, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/MenuAppModel;->mSuspendGets:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/MenuAppModel;->mHasHiddenItems:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSecretApps()Z
    .locals 3

    .prologue
    .line 929
    iget-object v2, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    if-eqz v2, :cond_1

    .line 930
    iget-object v2, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AppItem;

    .line 931
    .local v1, "item":Lcom/android/launcher2/AppItem;
    iget-boolean v2, v1, Lcom/android/launcher2/AppItem;->mSecretItem:Z

    if-eqz v2, :cond_0

    .line 932
    const/4 v2, 0x1

    .line 936
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "item":Lcom/android/launcher2/AppItem;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public hasSecretWidget()Z
    .locals 1

    .prologue
    .line 939
    iget-boolean v0, p0, Lcom/android/launcher2/MenuAppModel;->mHasPreSecretWidget:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppModel;->hasSecretApps()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 940
    :cond_0
    const/4 v0, 0x1

    .line 942
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public invalidateTopLevelItems()V
    .locals 1

    .prologue
    .line 977
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/MenuAppModel;->mTopLevelItems:Ljava/util/List;

    .line 978
    return-void
.end method

.method isDisableAppListEmpty()Z
    .locals 1

    .prologue
    .line 715
    iget-object v0, p0, Lcom/android/launcher2/MenuAppModel;->mAppDiabledItems:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 716
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppModel;->getDisabledAppList()Ljava/util/List;

    .line 718
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/MenuAppModel;->mAppDiabledItems:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 719
    const/4 v0, 0x1

    .line 721
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSecretItem(Lcom/android/launcher2/AppItem;)Z
    .locals 2
    .param p1, "item"    # Lcom/android/launcher2/AppItem;

    .prologue
    .line 926
    iget-object v0, p1, Lcom/android/launcher2/AppItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v1, Lcom/android/launcher2/BaseItem$Type;->MENU_APP:Lcom/android/launcher2/BaseItem$Type;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p1, Lcom/android/launcher2/AppItem;->mSecretItem:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadSprintFolderPackages()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 1559
    iget-object v3, p0, Lcom/android/launcher2/MenuAppModel;->mApplication:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v3}, Lcom/android/launcher2/LauncherApplication;->getLauncherProvider()Lcom/android/launcher2/LauncherProvider;

    move-result-object v0

    .line 1560
    .local v0, "provider":Lcom/android/launcher2/LauncherProvider;
    const-string v3, "content://com.sec.android.app.launcher.settings/sprintFolder"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .local v1, "uri":Landroid/net/Uri;
    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 1561
    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/LauncherProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1562
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 1563
    iget-object v2, p0, Lcom/android/launcher2/MenuAppModel;->mSprintFolderPackages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1564
    iget-object v2, p0, Lcom/android/launcher2/MenuAppModel;->mSprintFeaturedFolderPackages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1565
    const-string v2, "MenuAppModel"

    const-string v3, "loadSprintFolderPackages() : Clear packages list on memory"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1566
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1567
    const/4 v2, 0x3

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-nez v2, :cond_0

    .line 1568
    iget-object v2, p0, Lcom/android/launcher2/MenuAppModel;->mSprintFolderPackages:Ljava/util/ArrayList;

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1570
    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/MenuAppModel;->mSprintFeaturedFolderPackages:Ljava/util/ArrayList;

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1573
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1574
    return-void
.end method

.method normalizeAppMap(Ljava/util/Map;Lcom/android/launcher2/MenuAppModel$Normalizer;Z)Ljava/util/List;
    .locals 5
    .param p3, "keepEmptyPages"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher2/AppItem;",
            ">;",
            "Lcom/android/launcher2/MenuAppModel$Normalizer",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1000
    .local p1, "appItemMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/android/launcher2/AppItem;>;"
    .local p2, "normalizer":Lcom/android/launcher2/MenuAppModel$Normalizer;, "Lcom/android/launcher2/MenuAppModel$Normalizer<Lcom/android/launcher2/AppItem;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1001
    .local v2, "topItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AppItem;

    .line 1002
    .local v1, "item":Lcom/android/launcher2/AppItem;
    sget-boolean v3, Lcom/android/launcher2/Launcher;->sIsSecretModeOn:Z

    if-nez v3, :cond_1

    iget-boolean v3, v1, Lcom/android/launcher2/AppItem;->mSecretItem:Z

    if-nez v3, :cond_0

    .line 1007
    :cond_1
    iget-object v3, v1, Lcom/android/launcher2/AppItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v4, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v3, v4, :cond_2

    .line 1008
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1009
    check-cast v1, Lcom/android/launcher2/AppFolderItem;

    .end local v1    # "item":Lcom/android/launcher2/AppItem;
    invoke-virtual {v1, p2}, Lcom/android/launcher2/AppFolderItem;->normalize(Lcom/android/launcher2/MenuAppModel$Normalizer;)V

    goto :goto_0

    .line 1010
    .restart local v1    # "item":Lcom/android/launcher2/AppItem;
    :cond_2
    iget-object v3, v1, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    if-nez v3, :cond_0

    iget-boolean v3, v1, Lcom/android/launcher2/AppItem;->mHidden:Z

    if-nez v3, :cond_0

    .line 1017
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1020
    .end local v1    # "item":Lcom/android/launcher2/AppItem;
    :cond_3
    iget v3, p0, Lcom/android/launcher2/MenuAppModel;->mMaxItemsPerPage:I

    invoke-interface {p2, v2, v3, p3}, Lcom/android/launcher2/MenuAppModel$Normalizer;->normalize(Ljava/util/List;IZ)V

    .line 1021
    return-object v2
.end method

.method public normalizeModel(Z)V
    .locals 3
    .param p1, "keepEmptyPages"    # Z

    .prologue
    .line 1031
    iget-object v0, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuAppModel;->mNormalizer:Lcom/android/launcher2/MenuAppModel$Normalizer;

    if-eqz v0, :cond_0

    .line 1032
    iget-object v0, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    iget-object v1, p0, Lcom/android/launcher2/MenuAppModel;->mNormalizer:Lcom/android/launcher2/MenuAppModel$Normalizer;

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/launcher2/MenuAppModel;->normalizeAppMap(Ljava/util/Map;Lcom/android/launcher2/MenuAppModel$Normalizer;Z)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/MenuAppModel;->mTopLevelItems:Ljava/util/List;

    .line 1034
    :cond_0
    sget-boolean v0, Lcom/android/launcher2/MenuAppModel;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 1035
    const-string v1, "MenuAppModel"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "normalizeModel. Normalizer: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/launcher2/MenuAppModel;->mNormalizer:Lcom/android/launcher2/MenuAppModel$Normalizer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", count: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/launcher2/MenuAppModel;->mTopLevelItems:Ljava/util/List;

    if-nez v0, :cond_2

    const/4 v0, -0x1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    :cond_1
    return-void

    .line 1035
    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/MenuAppModel;->mTopLevelItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method onLocaleChanged()V
    .locals 1

    .prologue
    .line 1044
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/MenuAppModel;->mSuspendGets:Z

    .line 1045
    return-void
.end method

.method onModelRefreshed()V
    .locals 1

    .prologue
    .line 1053
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/MenuAppModel;->sCollator:Ljava/text/Collator;

    .line 1054
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/MenuAppModel;->mSuspendGets:Z

    .line 1055
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppModel;->invalidateTopLevelItems()V

    .line 1056
    return-void
.end method

.method public releaseShadows()V
    .locals 3

    .prologue
    .line 1062
    iget-object v2, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    if-eqz v2, :cond_0

    .line 1063
    iget-object v2, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AppItem;

    .line 1064
    .local v1, "item":Lcom/android/launcher2/AppItem;
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/launcher2/AppItem;->mIconShadowBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 1067
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "item":Lcom/android/launcher2/AppItem;
    :cond_0
    return-void
.end method

.method public setFolderToDelete(Lcom/android/launcher2/AppFolderItem;)V
    .locals 1
    .param p1, "folder"    # Lcom/android/launcher2/AppFolderItem;

    .prologue
    .line 1077
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/launcher2/MenuAppModel;->checkEditMode(Z)V

    .line 1078
    iput-object p1, p0, Lcom/android/launcher2/MenuAppModel;->mFolderToDelete:Lcom/android/launcher2/AppFolderItem;

    .line 1079
    return-void
.end method

.method public setHasPreSecretWidget(Z)V
    .locals 0
    .param p1, "hasPreSecretWidget"    # Z

    .prologue
    .line 958
    iput-boolean p1, p0, Lcom/android/launcher2/MenuAppModel;->mHasPreSecretWidget:Z

    .line 959
    return-void
.end method

.method public setLauncherApplication(Lcom/android/launcher2/LauncherApplication;)V
    .locals 3
    .param p1, "application"    # Lcom/android/launcher2/LauncherApplication;

    .prologue
    .line 1088
    iput-object p1, p0, Lcom/android/launcher2/MenuAppModel;->mApplication:Lcom/android/launcher2/LauncherApplication;

    .line 1090
    invoke-virtual {p1}, Lcom/android/launcher2/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1091
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f0c0027

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    const v2, 0x7f0c0028

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    mul-int/2addr v1, v2

    iput v1, p0, Lcom/android/launcher2/MenuAppModel;->mMaxItemsPerPage:I

    .line 1094
    iget-object v1, p0, Lcom/android/launcher2/MenuAppModel;->mApplication:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v1}, Lcom/android/launcher2/LauncherApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->isSafeMode()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/launcher2/MenuAppModel;->mIsSafeMode:Z

    .line 1095
    return-void
.end method

.method public setModelItems(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher2/AppItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "allApps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/android/launcher2/AppItem;>;"
    const/4 v2, 0x0

    .line 1133
    iput-object p1, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    .line 1134
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/MenuAppModel;->sCollator:Ljava/text/Collator;

    .line 1135
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppModel;->getDisabledAppList()Ljava/util/List;

    .line 1136
    iput-boolean v2, p0, Lcom/android/launcher2/MenuAppModel;->mSuspendGets:Z

    .line 1137
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppModel;->invalidateTopLevelItems()V

    .line 1141
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_EnableSprintExtension"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuAppModel;->mSprintFolderPackages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 1143
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppModel;->loadSprintFolderPackages()V

    .line 1144
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher2/MenuAppModel;->setModelFlags()V

    .line 1145
    iget-boolean v0, p0, Lcom/android/launcher2/MenuAppModel;->mInEditMode:Z

    if-eqz v0, :cond_1

    .line 1146
    iput-boolean v2, p0, Lcom/android/launcher2/MenuAppModel;->mInEditMode:Z

    .line 1147
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppModel;->editBegin()V

    .line 1149
    :cond_1
    return-void
.end method

.method public setNormalizer(Lcom/android/launcher2/MenuAppModel$Normalizer;I)V
    .locals 1
    .param p2, "maxItemsPerScreen"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher2/MenuAppModel$Normalizer",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 1161
    .local p1, "normalizer":Lcom/android/launcher2/MenuAppModel$Normalizer;, "Lcom/android/launcher2/MenuAppModel$Normalizer<Lcom/android/launcher2/AppItem;>;"
    iget-object v0, p0, Lcom/android/launcher2/MenuAppModel;->mNormalizer:Lcom/android/launcher2/MenuAppModel$Normalizer;

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/android/launcher2/MenuAppModel;->mMaxItemsPerPage:I

    if-eq p2, v0, :cond_1

    .line 1162
    :cond_0
    iput p2, p0, Lcom/android/launcher2/MenuAppModel;->mMaxItemsPerPage:I

    .line 1163
    iput-object p1, p0, Lcom/android/launcher2/MenuAppModel;->mNormalizer:Lcom/android/launcher2/MenuAppModel$Normalizer;

    .line 1164
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppModel;->invalidateTopLevelItems()V

    .line 1166
    :cond_1
    return-void
.end method

.method public updateCanUninstallApps()V
    .locals 0

    .prologue
    .line 950
    invoke-direct {p0}, Lcom/android/launcher2/MenuAppModel;->setModelFlags()V

    .line 951
    return-void
.end method
