.class public abstract Lcom/android/server/notification/ManagedServices;
.super Ljava/lang/Object;
.source "ManagedServices.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/ManagedServices$Config;,
        Lcom/android/server/notification/ManagedServices$UserProfiles;,
        Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;,
        Lcom/android/server/notification/ManagedServices$SettingsObserver;
    }
.end annotation


# static fields
.field private static final ENABLED_SERVICES_SEPARATOR:Ljava/lang/String; = ":"


# instance fields
.field protected final DEBUG:Z

.field protected final TAG:Ljava/lang/String;

.field private final mConfig:Lcom/android/server/notification/ManagedServices$Config;

.field protected final mContext:Landroid/content/Context;

.field private mEnabledServicesForCurrentProfiles:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private mEnabledServicesPackageNames:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLastSeenProfileIds:[I

.field protected final mMutex:Ljava/lang/Object;

.field protected final mServices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mServicesBinding:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSettingsObserver:Lcom/android/server/notification/ManagedServices$SettingsObserver;

.field private final mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/Object;Lcom/android/server/notification/ManagedServices$UserProfiles;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "mutex"    # Ljava/lang/Object;
    .param p4, "userProfiles"    # Lcom/android/server/notification/ManagedServices$UserProfiles;

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, TAG:Ljava/lang/String;

    .line 68
    iget-object v0, p0, TAG:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, DEBUG:Z

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mServices:Ljava/util/ArrayList;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mServicesBinding:Ljava/util/ArrayList;

    .line 85
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, mEnabledServicesForCurrentProfiles:Landroid/util/ArraySet;

    .line 88
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, mEnabledServicesPackageNames:Landroid/util/ArraySet;

    .line 96
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 97
    iput-object p3, p0, mMutex:Ljava/lang/Object;

    .line 98
    iput-object p4, p0, mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    .line 99
    invoke-virtual {p0}, getConfig()Lcom/android/server/notification/ManagedServices$Config;

    move-result-object v0

    iput-object v0, p0, mConfig:Lcom/android/server/notification/ManagedServices$Config;

    .line 100
    new-instance v0, Lcom/android/server/notification/ManagedServices$SettingsObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, v1}, Lcom/android/server/notification/ManagedServices$SettingsObserver;-><init>(Lcom/android/server/notification/ManagedServices;Landroid/os/Handler;Lcom/android/server/notification/ManagedServices$1;)V

    iput-object v0, p0, mSettingsObserver:Lcom/android/server/notification/ManagedServices$SettingsObserver;

    .line 101
    return-void
.end method

.method static synthetic access$200(Lcom/android/server/notification/ManagedServices;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/ManagedServices;

    .prologue
    .line 66
    iget-object v0, p0, mServicesBinding:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/notification/ManagedServices;Landroid/os/IInterface;Landroid/content/ComponentName;IZLandroid/content/ServiceConnection;I)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .registers 8
    .param p0, "x0"    # Lcom/android/server/notification/ManagedServices;
    .param p1, "x1"    # Landroid/os/IInterface;
    .param p2, "x2"    # Landroid/content/ComponentName;
    .param p3, "x3"    # I
    .param p4, "x4"    # Z
    .param p5, "x5"    # Landroid/content/ServiceConnection;
    .param p6, "x6"    # I

    .prologue
    .line 66
    invoke-direct/range {p0 .. p6}, newServiceInfo(Landroid/os/IInterface;Landroid/content/ComponentName;IZLandroid/content/ServiceConnection;I)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/notification/ManagedServices;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/ManagedServices;

    .prologue
    .line 66
    invoke-direct {p0}, getCaption()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/notification/ManagedServices;)Lcom/android/server/notification/ManagedServices$Config;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/ManagedServices;

    .prologue
    .line 66
    iget-object v0, p0, mConfig:Lcom/android/server/notification/ManagedServices$Config;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/notification/ManagedServices;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/notification/ManagedServices;

    .prologue
    .line 66
    invoke-direct {p0}, rebindServices()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/notification/ManagedServices;)Lcom/android/server/notification/ManagedServices$UserProfiles;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/ManagedServices;

    .prologue
    .line 66
    iget-object v0, p0, mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/notification/ManagedServices;Landroid/os/IInterface;I)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .registers 4
    .param p0, "x0"    # Lcom/android/server/notification/ManagedServices;
    .param p1, "x1"    # Landroid/os/IInterface;
    .param p2, "x2"    # I

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, removeServiceImpl(Landroid/os/IInterface;I)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/notification/ManagedServices;)Landroid/util/ArraySet;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/ManagedServices;

    .prologue
    .line 66
    iget-object v0, p0, mEnabledServicesForCurrentProfiles:Landroid/util/ArraySet;

    return-object v0
.end method

.method private checkNotNull(Landroid/os/IInterface;)V
    .registers 5
    .param p1, "service"    # Landroid/os/IInterface;

    .prologue
    .line 489
    if-nez p1, :cond_1f

    .line 490
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, getCaption()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must not be null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 492
    :cond_1f
    return-void
.end method

.method private disableNonexistentServices()V
    .registers 5

    .prologue
    .line 206
    iget-object v3, p0, mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    invoke-virtual {v3}, Lcom/android/server/notification/ManagedServices$UserProfiles;->getCurrentProfileIds()[I

    move-result-object v2

    .line 207
    .local v2, "userIds":[I
    array-length v0, v2

    .line 208
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    if-ge v1, v0, :cond_12

    .line 209
    aget v3, v2, v1

    invoke-direct {p0, v3}, disableNonexistentServices(I)V

    .line 208
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 211
    :cond_12
    return-void
.end method

.method private disableNonexistentServices(I)V
    .registers 18
    .param p1, "userId"    # I

    .prologue
    .line 214
    move-object/from16 v0, p0

    iget-object v13, v0, mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, mConfig:Lcom/android/server/notification/ManagedServices$Config;

    iget-object v14, v14, Lcom/android/server/notification/ManagedServices$Config;->secureSettingName:Ljava/lang/String;

    move/from16 v0, p1

    invoke-static {v13, v14, v0}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 218
    .local v4, "flatIn":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_162

    .line 219
    move-object/from16 v0, p0

    iget-boolean v13, v0, DEBUG:Z

    if-eqz v13, :cond_3a

    move-object/from16 v0, p0

    iget-object v13, v0, TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "flat before: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :cond_3a
    move-object/from16 v0, p0

    iget-object v13, v0, mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 221
    .local v10, "pm":Landroid/content/pm/PackageManager;
    new-instance v13, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v14, v0, mConfig:Lcom/android/server/notification/ManagedServices$Config;

    iget-object v14, v14, Lcom/android/server/notification/ManagedServices$Config;->serviceInterface:Ljava/lang/String;

    invoke-direct {v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v14, 0x84

    move/from16 v0, p1

    invoke-virtual {v10, v13, v14, v0}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v9

    .line 225
    .local v9, "installedServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move-object/from16 v0, p0

    iget-boolean v13, v0, DEBUG:Z

    if-eqz v13, :cond_7f

    move-object/from16 v0, p0

    iget-object v13, v0, TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v15, v0, mConfig:Lcom/android/server/notification/ManagedServices$Config;

    iget-object v15, v15, Lcom/android/server/notification/ManagedServices$Config;->serviceInterface:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " services: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :cond_7f
    new-instance v8, Landroid/util/ArraySet;

    invoke-direct {v8}, Landroid/util/ArraySet;-><init>()V

    .line 227
    .local v8, "installed":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "count":I
    :goto_89
    if-ge v6, v1, :cond_f7

    .line 228
    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/ResolveInfo;

    .line 229
    .local v12, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v7, v12, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 231
    .local v7, "info":Landroid/content/pm/ServiceInfo;
    move-object/from16 v0, p0

    iget-object v13, v0, mConfig:Lcom/android/server/notification/ManagedServices$Config;

    iget-object v13, v13, Lcom/android/server/notification/ManagedServices$Config;->bindPermission:Ljava/lang/String;

    iget-object v14, v7, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_ea

    .line 232
    move-object/from16 v0, p0

    iget-object v13, v0, TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Skipping "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-direct/range {p0 .. p0}, getCaption()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " service "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v7, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ": it does not require the permission "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, mConfig:Lcom/android/server/notification/ManagedServices$Config;

    iget-object v15, v15, Lcom/android/server/notification/ManagedServices$Config;->bindPermission:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :goto_e7
    add-int/lit8 v6, v6, 0x1

    goto :goto_89

    .line 238
    :cond_ea
    new-instance v13, Landroid/content/ComponentName;

    iget-object v14, v7, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v15, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v13, v14, v15}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_e7

    .line 241
    .end local v7    # "info":Landroid/content/pm/ServiceInfo;
    .end local v12    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_f7
    const-string v5, ""

    .line 242
    .local v5, "flatOut":Ljava/lang/String;
    invoke-interface {v8}, Ljava/util/Set;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_129

    .line 243
    const-string v13, ":"

    invoke-virtual {v4, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 244
    .local v2, "enabled":[Ljava/lang/String;
    new-instance v11, Ljava/util/ArrayList;

    array-length v13, v2

    invoke-direct {v11, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 245
    .local v11, "remaining":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v6, 0x0

    :goto_10c
    array-length v13, v2

    if-ge v6, v13, :cond_123

    .line 246
    aget-object v13, v2, v6

    invoke-static {v13}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    .line 247
    .local v3, "enabledComponent":Landroid/content/ComponentName;
    invoke-interface {v8, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_120

    .line 248
    aget-object v13, v2, v6

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    :cond_120
    add-int/lit8 v6, v6, 0x1

    goto :goto_10c

    .line 251
    .end local v3    # "enabledComponent":Landroid/content/ComponentName;
    :cond_123
    const-string v13, ":"

    invoke-static {v13, v11}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    .line 253
    .end local v2    # "enabled":[Ljava/lang/String;
    .end local v11    # "remaining":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_129
    move-object/from16 v0, p0

    iget-boolean v13, v0, DEBUG:Z

    if-eqz v13, :cond_149

    move-object/from16 v0, p0

    iget-object v13, v0, TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "flat after: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :cond_149
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_162

    .line 255
    move-object/from16 v0, p0

    iget-object v13, v0, mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, mConfig:Lcom/android/server/notification/ManagedServices$Config;

    iget-object v14, v14, Lcom/android/server/notification/ManagedServices$Config;->secureSettingName:Ljava/lang/String;

    move/from16 v0, p1

    invoke-static {v13, v14, v5, v0}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 260
    .end local v1    # "count":I
    .end local v5    # "flatOut":Ljava/lang/String;
    .end local v6    # "i":I
    .end local v8    # "installed":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    .end local v9    # "installedServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v10    # "pm":Landroid/content/pm/PackageManager;
    :cond_162
    return-void
.end method

.method private getCaption()Ljava/lang/String;
    .registers 2

    .prologue
    .line 106
    iget-object v0, p0, mConfig:Lcom/android/server/notification/ManagedServices$Config;

    iget-object v0, v0, Lcom/android/server/notification/ManagedServices$Config;->caption:Ljava/lang/String;

    return-object v0
.end method

.method private newServiceInfo(Landroid/os/IInterface;Landroid/content/ComponentName;IZLandroid/content/ServiceConnection;I)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .registers 15
    .param p1, "service"    # Landroid/os/IInterface;
    .param p2, "component"    # Landroid/content/ComponentName;
    .param p3, "userid"    # I
    .param p4, "isSystem"    # Z
    .param p5, "connection"    # Landroid/content/ServiceConnection;
    .param p6, "targetSdkVersion"    # I

    .prologue
    .line 118
    new-instance v0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;-><init>(Lcom/android/server/notification/ManagedServices;Landroid/os/IInterface;Landroid/content/ComponentName;IZLandroid/content/ServiceConnection;I)V

    return-object v0
.end method

.method private rebindServices()V
    .registers 25

    .prologue
    .line 267
    move-object/from16 v0, p0

    iget-boolean v0, v0, DEBUG:Z

    move/from16 v20, v0

    if-eqz v20, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, TAG:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string/jumbo v21, "rebindServices"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/notification/ManagedServices$UserProfiles;->getCurrentProfileIds()[I

    move-result-object v19

    .line 269
    .local v19, "userIds":[I
    move-object/from16 v0, v19

    array-length v11, v0

    .line 271
    .local v11, "nUserIds":I
    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    .line 273
    .local v6, "flat":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_27
    if-ge v7, v11, :cond_51

    .line 274
    aget v20, v19, v7

    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, mConfig:Lcom/android/server/notification/ManagedServices$Config;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/notification/ManagedServices$Config;->secureSettingName:Ljava/lang/String;

    move-object/from16 v22, v0

    aget v23, v19, v7

    invoke-static/range {v21 .. v23}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v21

    move/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 273
    add-int/lit8 v7, v7, 0x1

    goto :goto_27

    .line 280
    :cond_51
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 281
    .local v18, "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;>;"
    new-instance v16, Landroid/util/SparseArray;

    invoke-direct/range {v16 .. v16}, Landroid/util/SparseArray;-><init>()V

    .line 284
    .local v16, "toAdd":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/ArrayList<Landroid/content/ComponentName;>;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, mMutex:Ljava/lang/Object;

    move-object/from16 v21, v0

    monitor-enter v21

    .line 286
    :try_start_62
    move-object/from16 v0, p0

    iget-object v0, v0, mServices:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_6c
    :goto_6c
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_87

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 287
    .local v15, "service":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    iget-boolean v0, v15, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->isSystem:Z

    move/from16 v20, v0

    if-nez v20, :cond_6c

    .line 288
    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6c

    .line 317
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v15    # "service":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    :catchall_84
    move-exception v20

    monitor-exit v21
    :try_end_86
    .catchall {:try_start_62 .. :try_end_86} :catchall_84

    throw v20

    .line 292
    .restart local v8    # "i$":Ljava/util/Iterator;
    :cond_87
    :try_start_87
    new-instance v12, Landroid/util/ArraySet;

    invoke-direct {v12}, Landroid/util/ArraySet;-><init>()V

    .line 293
    .local v12, "newEnabled":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    new-instance v13, Landroid/util/ArraySet;

    invoke-direct {v13}, Landroid/util/ArraySet;-><init>()V

    .line 295
    .local v13, "newPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v7, 0x0

    :goto_92
    if-ge v7, v11, :cond_dd

    .line 296
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 297
    .local v3, "add":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    aget v20, v19, v7

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 300
    aget v20, v19, v7

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 301
    .local v17, "toDecode":Ljava/lang/String;
    if-eqz v17, :cond_da

    .line 302
    const-string v20, ":"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 303
    .local v5, "components":[Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_b9
    array-length v0, v5

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v10, v0, :cond_da

    .line 304
    aget-object v20, v5, v10

    invoke-static/range {v20 .. v20}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    .line 306
    .local v4, "component":Landroid/content/ComponentName;
    if-eqz v4, :cond_d7

    .line 307
    invoke-virtual {v12, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 308
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 309
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 303
    :cond_d7
    add-int/lit8 v10, v10, 0x1

    goto :goto_b9

    .line 295
    .end local v4    # "component":Landroid/content/ComponentName;
    .end local v5    # "components":[Ljava/lang/String;
    .end local v10    # "j":I
    :cond_da
    add-int/lit8 v7, v7, 0x1

    goto :goto_92

    .line 315
    .end local v3    # "add":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    .end local v17    # "toDecode":Ljava/lang/String;
    :cond_dd
    move-object/from16 v0, p0

    iput-object v12, v0, mEnabledServicesForCurrentProfiles:Landroid/util/ArraySet;

    .line 316
    move-object/from16 v0, p0

    iput-object v13, v0, mEnabledServicesPackageNames:Landroid/util/ArraySet;

    .line 317
    monitor-exit v21
    :try_end_e6
    .catchall {:try_start_87 .. :try_end_e6} :catchall_84

    .line 319
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_ea
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_13e

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 320
    .local v9, "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    iget-object v4, v9, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    .line 321
    .restart local v4    # "component":Landroid/content/ComponentName;
    iget v14, v9, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    .line 322
    .local v14, "oldUser":I
    move-object/from16 v0, p0

    iget-object v0, v0, TAG:Ljava/lang/String;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "disabling "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-direct/range {p0 .. p0}, getCaption()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " for user "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ": "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    iget v0, v9, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v4, v1}, unregisterService(Landroid/content/ComponentName;I)V

    goto :goto_ea

    .line 327
    .end local v4    # "component":Landroid/content/ComponentName;
    .end local v9    # "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .end local v14    # "oldUser":I
    :cond_13e
    const/4 v7, 0x0

    :goto_13f
    if-ge v7, v11, :cond_1a1

    .line 328
    aget v20, v19, v7

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 329
    .restart local v3    # "add":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 330
    .local v2, "N":I
    const/4 v10, 0x0

    .restart local v10    # "j":I
    :goto_152
    if-ge v10, v2, :cond_19e

    .line 331
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 332
    .restart local v4    # "component":Landroid/content/ComponentName;
    move-object/from16 v0, p0

    iget-object v0, v0, TAG:Ljava/lang/String;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "enabling "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-direct/range {p0 .. p0}, getCaption()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " for user "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    aget v22, v19, v7

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ": "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    aget v20, v19, v7

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v4, v1}, registerService(Landroid/content/ComponentName;I)V

    .line 330
    add-int/lit8 v10, v10, 0x1

    goto :goto_152

    .line 327
    .end local v4    # "component":Landroid/content/ComponentName;
    :cond_19e
    add-int/lit8 v7, v7, 0x1

    goto :goto_13f

    .line 338
    .end local v2    # "N":I
    .end local v3    # "add":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    .end local v10    # "j":I
    :cond_1a1
    move-object/from16 v0, p0

    iget-object v0, v0, mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/notification/ManagedServices$UserProfiles;->getCurrentProfileIds()[I

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, mLastSeenProfileIds:[I

    .line 339
    return-void
.end method

.method private registerService(Landroid/content/ComponentName;I)V
    .registers 18
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "userid"    # I

    .prologue
    .line 345
    iget-boolean v10, p0, DEBUG:Z

    if-eqz v10, :cond_2b

    iget-object v10, p0, TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "registerService: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " u="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    :cond_2b
    iget-object v11, p0, mMutex:Ljava/lang/Object;

    monitor-enter v11

    .line 348
    :try_start_2e
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, "/"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 349
    .local v8, "servicesBindingTag":Ljava/lang/String;
    iget-object v10, p0, mServicesBinding:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_55

    .line 351
    monitor-exit v11

    .line 433
    :goto_54
    return-void

    .line 353
    :cond_55
    iget-object v10, p0, mServicesBinding:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 355
    iget-object v10, p0, mServices:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 356
    .local v1, "N":I
    add-int/lit8 v4, v1, -0x1

    .local v4, "i":I
    :goto_62
    if-ltz v4, :cond_b9

    .line 357
    iget-object v10, p0, mServices:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 358
    .local v5, "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    iget-object v10, v5, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b6

    iget v10, v5, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    move/from16 v0, p2

    if-ne v10, v0, :cond_b6

    .line 361
    iget-boolean v10, p0, DEBUG:Z

    if-eqz v10, :cond_a8

    iget-object v10, p0, TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "    disconnecting old "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-direct {p0}, getCaption()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ": "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v5, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    :cond_a8
    invoke-direct {p0, v4}, removeServiceLocked(I)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 364
    iget-object v10, v5, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->connection:Landroid/content/ServiceConnection;

    if-eqz v10, :cond_b6

    .line 365
    iget-object v10, p0, mContext:Landroid/content/Context;

    iget-object v12, v5, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->connection:Landroid/content/ServiceConnection;

    invoke-virtual {v10, v12}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 356
    :cond_b6
    add-int/lit8 v4, v4, -0x1

    goto :goto_62

    .line 370
    .end local v5    # "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    :cond_b9
    new-instance v6, Landroid/content/Intent;

    iget-object v10, p0, mConfig:Lcom/android/server/notification/ManagedServices$Config;

    iget-object v10, v10, Lcom/android/server/notification/ManagedServices$Config;->serviceInterface:Ljava/lang/String;

    invoke-direct {v6, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 371
    .local v6, "intent":Landroid/content/Intent;
    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 373
    const-string v10, "android.intent.extra.client_label"

    iget-object v12, p0, mConfig:Lcom/android/server/notification/ManagedServices$Config;

    iget v12, v12, Lcom/android/server/notification/ManagedServices$Config;->clientLabel:I

    invoke-virtual {v6, v10, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 375
    iget-object v10, p0, mContext:Landroid/content/Context;

    const/4 v12, 0x0

    new-instance v13, Landroid/content/Intent;

    iget-object v14, p0, mConfig:Lcom/android/server/notification/ManagedServices$Config;

    iget-object v14, v14, Lcom/android/server/notification/ManagedServices$Config;->settingsAction:Ljava/lang/String;

    invoke-direct {v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v14, 0x0

    invoke-static {v10, v12, v13, v14}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 377
    .local v7, "pendingIntent":Landroid/app/PendingIntent;
    const-string v10, "android.intent.extra.client_intent"

    invoke-virtual {v6, v10, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_e6
    .catchall {:try_start_2e .. :try_end_e6} :catchall_15b

    .line 379
    const/4 v2, 0x0

    .line 381
    .local v2, "appInfo":Landroid/content/pm/ApplicationInfo;
    :try_start_e7
    iget-object v10, p0, mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v10, v12, v13}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_f5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_e7 .. :try_end_f5} :catch_18d
    .catchall {:try_start_e7 .. :try_end_f5} :catchall_15b

    move-result-object v2

    .line 386
    :goto_f6
    if-eqz v2, :cond_15e

    :try_start_f8
    iget v9, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_fa
    .catchall {:try_start_f8 .. :try_end_fa} :catchall_15b

    .line 390
    .local v9, "targetSdkVersion":I
    :goto_fa
    :try_start_fa
    iget-boolean v10, p0, DEBUG:Z

    if-eqz v10, :cond_116

    iget-object v10, p0, TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "binding: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    :cond_116
    iget-object v10, p0, mContext:Landroid/content/Context;

    new-instance v12, Lcom/android/server/notification/ManagedServices$1;

    move/from16 v0, p2

    invoke-direct {v12, p0, v8, v0, v9}, Lcom/android/server/notification/ManagedServices$1;-><init>(Lcom/android/server/notification/ManagedServices;Ljava/lang/String;II)V

    const/4 v13, 0x1

    new-instance v14, Landroid/os/UserHandle;

    move/from16 v0, p2

    invoke-direct {v14, v0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v10, v6, v12, v13, v14}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v10

    if-nez v10, :cond_18a

    .line 424
    iget-object v10, p0, mServicesBinding:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 425
    iget-object v10, p0, TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unable to bind "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-direct {p0}, getCaption()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " service: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_158
    .catch Ljava/lang/SecurityException; {:try_start_fa .. :try_end_158} :catch_160
    .catchall {:try_start_fa .. :try_end_158} :catchall_15b

    .line 426
    :try_start_158
    monitor-exit v11

    goto/16 :goto_54

    .line 432
    .end local v1    # "N":I
    .end local v2    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "i":I
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v7    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v8    # "servicesBindingTag":Ljava/lang/String;
    .end local v9    # "targetSdkVersion":I
    :catchall_15b
    move-exception v10

    monitor-exit v11
    :try_end_15d
    .catchall {:try_start_158 .. :try_end_15d} :catchall_15b

    throw v10

    .line 386
    .restart local v1    # "N":I
    .restart local v2    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v4    # "i":I
    .restart local v6    # "intent":Landroid/content/Intent;
    .restart local v7    # "pendingIntent":Landroid/app/PendingIntent;
    .restart local v8    # "servicesBindingTag":Ljava/lang/String;
    :cond_15e
    const/4 v9, 0x1

    goto :goto_fa

    .line 428
    .restart local v9    # "targetSdkVersion":I
    :catch_160
    move-exception v3

    .line 429
    .local v3, "ex":Ljava/lang/SecurityException;
    :try_start_161
    iget-object v10, p0, TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unable to bind "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-direct {p0}, getCaption()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " service: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 430
    monitor-exit v11

    goto/16 :goto_54

    .line 432
    .end local v3    # "ex":Ljava/lang/SecurityException;
    :cond_18a
    monitor-exit v11
    :try_end_18b
    .catchall {:try_start_161 .. :try_end_18b} :catchall_15b

    goto/16 :goto_54

    .line 383
    .end local v9    # "targetSdkVersion":I
    :catch_18d
    move-exception v10

    goto/16 :goto_f6
.end method

.method private registerServiceImpl(Landroid/os/IInterface;Landroid/content/ComponentName;I)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .registers 14
    .param p1, "service"    # Landroid/os/IInterface;
    .param p2, "component"    # Landroid/content/ComponentName;
    .param p3, "userid"    # I

    .prologue
    const/4 v8, 0x0

    .line 496
    iget-object v9, p0, mMutex:Ljava/lang/Object;

    monitor-enter v9

    .line 498
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v6, 0x15

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    :try_start_c
    invoke-direct/range {v0 .. v6}, newServiceInfo(Landroid/os/IInterface;Landroid/content/ComponentName;IZLandroid/content/ServiceConnection;I)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object v7

    .line 500
    .local v7, "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v7, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 501
    iget-object v0, p0, mServices:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_1d} :catch_1f
    .catchall {:try_start_c .. :try_end_1d} :catchall_23

    .line 502
    :try_start_1d
    monitor-exit v9

    .line 507
    .end local v7    # "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    :goto_1e
    return-object v7

    .line 503
    :catch_1f
    move-exception v0

    .line 506
    monitor-exit v9

    move-object v7, v8

    .line 507
    goto :goto_1e

    .line 506
    :catchall_23
    move-exception v0

    monitor-exit v9
    :try_end_25
    .catchall {:try_start_1d .. :try_end_25} :catchall_23

    throw v0
.end method

.method private removeServiceImpl(Landroid/os/IInterface;I)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .registers 11
    .param p1, "service"    # Landroid/os/IInterface;
    .param p2, "userid"    # I

    .prologue
    .line 466
    iget-boolean v4, p0, DEBUG:Z

    if-eqz v4, :cond_27

    iget-object v4, p0, TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "removeServiceImpl service="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " u="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    :cond_27
    const/4 v3, 0x0

    .line 468
    .local v3, "serviceInfo":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    iget-object v5, p0, mMutex:Ljava/lang/Object;

    monitor-enter v5

    .line 469
    :try_start_2b
    iget-object v4, p0, mServices:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 470
    .local v0, "N":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_33
    if-ltz v1, :cond_72

    .line 471
    iget-object v4, p0, mServices:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 472
    .local v2, "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    iget-object v4, v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    invoke-interface {v4}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    if-ne v4, v6, :cond_6f

    iget v4, v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    if-ne v4, p2, :cond_6f

    .line 474
    iget-boolean v4, p0, DEBUG:Z

    if-eqz v4, :cond_6b

    iget-object v4, p0, TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Removing active service "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    :cond_6b
    invoke-direct {p0, v1}, removeServiceLocked(I)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object v3

    .line 470
    :cond_6f
    add-int/lit8 v1, v1, -0x1

    goto :goto_33

    .line 478
    .end local v2    # "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    :cond_72
    monitor-exit v5

    .line 479
    return-object v3

    .line 478
    .end local v0    # "N":I
    .end local v1    # "i":I
    :catchall_74
    move-exception v4

    monitor-exit v5
    :try_end_76
    .catchall {:try_start_2b .. :try_end_76} :catchall_74

    throw v4
.end method

.method private removeServiceLocked(I)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .registers 4
    .param p1, "i"    # I

    .prologue
    .line 483
    iget-object v1, p0, mServices:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 484
    .local v0, "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    invoke-virtual {p0, v0}, onServiceRemovedLocked(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    .line 485
    return-object v0
.end method

.method private unregisterService(Landroid/content/ComponentName;I)V
    .registers 11
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "userid"    # I

    .prologue
    .line 439
    iget-object v5, p0, mMutex:Ljava/lang/Object;

    monitor-enter v5

    .line 440
    :try_start_3
    iget-object v4, p0, mServices:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 441
    .local v0, "N":I
    add-int/lit8 v2, v0, -0x1

    .local v2, "i":I
    :goto_b
    if-ltz v2, :cond_61

    .line 442
    iget-object v4, p0, mServices:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 443
    .local v3, "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    iget-object v4, v3, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {p1, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2f

    iget v4, v3, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    if-ne v4, p2, :cond_2f

    .line 445
    invoke-direct {p0, v2}, removeServiceLocked(I)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 446
    iget-object v4, v3, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->connection:Landroid/content/ServiceConnection;
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_5e

    if-eqz v4, :cond_2f

    .line 448
    :try_start_28
    iget-object v4, p0, mContext:Landroid/content/Context;

    iget-object v6, v3, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->connection:Landroid/content/ServiceConnection;

    invoke-virtual {v4, v6}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_2f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_28 .. :try_end_2f} :catch_32
    .catchall {:try_start_28 .. :try_end_2f} :catchall_5e

    .line 441
    :cond_2f
    :goto_2f
    add-int/lit8 v2, v2, -0x1

    goto :goto_b

    .line 449
    :catch_32
    move-exception v1

    .line 452
    .local v1, "ex":Ljava/lang/IllegalArgumentException;
    :try_start_33
    iget-object v4, p0, TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, getCaption()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " could not be unbound: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f

    .line 457
    .end local v0    # "N":I
    .end local v1    # "ex":Ljava/lang/IllegalArgumentException;
    .end local v2    # "i":I
    .end local v3    # "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    :catchall_5e
    move-exception v4

    monitor-exit v5
    :try_end_60
    .catchall {:try_start_33 .. :try_end_60} :catchall_5e

    throw v4

    .restart local v0    # "N":I
    .restart local v2    # "i":I
    :cond_61
    :try_start_61
    monitor-exit v5
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_5e

    .line 458
    return-void
.end method

.method private unregisterServiceImpl(Landroid/os/IInterface;I)V
    .registers 6
    .param p1, "service"    # Landroid/os/IInterface;
    .param p2, "userid"    # I

    .prologue
    .line 514
    invoke-direct {p0, p1, p2}, removeServiceImpl(Landroid/os/IInterface;I)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object v0

    .line 515
    .local v0, "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    if-eqz v0, :cond_11

    iget-object v1, v0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->connection:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_11

    .line 516
    iget-object v1, p0, mContext:Landroid/content/Context;

    iget-object v2, v0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->connection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 518
    :cond_11
    return-void
.end method


# virtual methods
.method protected abstract asInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
.end method

.method public checkServiceTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .registers 9
    .param p1, "service"    # Landroid/os/IInterface;

    .prologue
    .line 176
    invoke-direct {p0, p1}, checkNotNull(Landroid/os/IInterface;)V

    .line 177
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 178
    .local v3, "token":Landroid/os/IBinder;
    iget-object v4, p0, mServices:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 179
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    if-ge v1, v0, :cond_24

    .line 180
    iget-object v4, p0, mServices:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 181
    .local v2, "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    iget-object v4, v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    invoke-interface {v4}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    if-ne v4, v3, :cond_21

    return-object v2

    .line 179
    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 183
    .end local v2    # "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    :cond_24
    new-instance v4, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Disallowed call from unknown "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0}, getCaption()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public dump(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .registers 8
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    .prologue
    .line 127
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    All "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, getCaption()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "s ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, mEnabledServicesForCurrentProfiles:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") enabled for current profiles:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 129
    iget-object v3, p0, mEnabledServicesForCurrentProfiles:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_37
    :goto_37
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_62

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 130
    .local v0, "cmpt":Landroid/content/ComponentName;
    if-eqz p2, :cond_4b

    invoke-virtual {p2, v0}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Landroid/content/ComponentName;)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 131
    :cond_4b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "      "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_37

    .line 134
    .end local v0    # "cmpt":Landroid/content/ComponentName;
    :cond_62
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    Live "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, getCaption()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "s ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, mServices:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "):"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 135
    iget-object v3, p0, mServices:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_99
    :goto_99
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_ed

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 136
    .local v2, "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    if-eqz p2, :cond_af

    iget-object v3, v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {p2, v3}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Landroid/content/ComponentName;)Z

    move-result v3

    if-eqz v3, :cond_99

    .line 137
    :cond_af
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "      "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v3, v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->isSystem:Z

    if-eqz v3, :cond_ea

    const-string v3, " SYSTEM"

    :goto_de
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_99

    :cond_ea
    const-string v3, ""

    goto :goto_de

    .line 141
    .end local v2    # "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    :cond_ed
    return-void
.end method

.method protected abstract getConfig()Lcom/android/server/notification/ManagedServices$Config;
.end method

.method public onBootPhaseAppsCanStart()V
    .registers 2

    .prologue
    .line 123
    iget-object v0, p0, mSettingsObserver:Lcom/android/server/notification/ManagedServices$SettingsObserver;

    # invokes: Lcom/android/server/notification/ManagedServices$SettingsObserver;->observe()V
    invoke-static {v0}, Lcom/android/server/notification/ManagedServices$SettingsObserver;->access$100(Lcom/android/server/notification/ManagedServices$SettingsObserver;)V

    .line 124
    return-void
.end method

.method public onPackagesChanged(Z[Ljava/lang/String;)V
    .registers 11
    .param p1, "queryReplace"    # Z
    .param p2, "pkgList"    # [Ljava/lang/String;

    .prologue
    .line 144
    iget-boolean v5, p0, DEBUG:Z

    if-eqz v5, :cond_35

    iget-object v6, p0, TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onPackagesChanged queryReplace="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " pkgList="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-nez p2, :cond_4e

    const/4 v5, 0x0

    :goto_1e
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " mEnabledServicesPackageNames="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, mEnabledServicesPackageNames:Landroid/util/ArraySet;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_35
    const/4 v0, 0x0

    .line 148
    .local v0, "anyServicesInvolved":Z
    if-eqz p2, :cond_53

    array-length v5, p2

    if-lez v5, :cond_53

    .line 149
    move-object v1, p2

    .local v1, "arr$":[Ljava/lang/String;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_3e
    if-ge v2, v3, :cond_53

    aget-object v4, v1, v2

    .line 150
    .local v4, "pkgName":Ljava/lang/String;
    iget-object v5, p0, mEnabledServicesPackageNames:Landroid/util/ArraySet;

    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4b

    .line 151
    const/4 v0, 0x1

    .line 149
    :cond_4b
    add-int/lit8 v2, v2, 0x1

    goto :goto_3e

    .line 144
    .end local v0    # "anyServicesInvolved":Z
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "pkgName":Ljava/lang/String;
    :cond_4e
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    goto :goto_1e

    .line 156
    .restart local v0    # "anyServicesInvolved":Z
    :cond_53
    if-eqz v0, :cond_5d

    .line 158
    if-nez p1, :cond_5a

    .line 159
    invoke-direct {p0}, disableNonexistentServices()V

    .line 162
    :cond_5a
    invoke-direct {p0}, rebindServices()V

    .line 164
    :cond_5d
    return-void
.end method

.method protected abstract onServiceAdded(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
.end method

.method protected onServiceRemovedLocked(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
    .registers 2
    .param p1, "removed"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .prologue
    .line 113
    return-void
.end method

.method public onUserSwitched()V
    .registers 3

    .prologue
    .line 167
    iget-boolean v0, p0, DEBUG:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, TAG:Ljava/lang/String;

    const-string v1, "onUserSwitched"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_b
    iget-object v0, p0, mLastSeenProfileIds:[I

    iget-object v1, p0, mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    invoke-virtual {v1}, Lcom/android/server/notification/ManagedServices$UserProfiles;->getCurrentProfileIds()[I

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 169
    iget-boolean v0, p0, DEBUG:Z

    if-eqz v0, :cond_24

    iget-object v0, p0, TAG:Ljava/lang/String;

    const-string v1, "Current profile IDs didn\'t change, skipping rebindServices()."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :cond_24
    :goto_24
    return-void

    .line 172
    :cond_25
    invoke-direct {p0}, rebindServices()V

    goto :goto_24
.end method

.method public registerService(Landroid/os/IInterface;Landroid/content/ComponentName;I)V
    .registers 5
    .param p1, "service"    # Landroid/os/IInterface;
    .param p2, "component"    # Landroid/content/ComponentName;
    .param p3, "userid"    # I

    .prologue
    .line 195
    invoke-direct {p0, p1}, checkNotNull(Landroid/os/IInterface;)V

    .line 196
    invoke-direct {p0, p1, p2, p3}, registerServiceImpl(Landroid/os/IInterface;Landroid/content/ComponentName;I)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object v0

    .line 197
    .local v0, "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    if-eqz v0, :cond_c

    .line 198
    invoke-virtual {p0, v0}, onServiceAdded(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    .line 200
    :cond_c
    return-void
.end method

.method public unregisterService(Landroid/os/IInterface;I)V
    .registers 3
    .param p1, "service"    # Landroid/os/IInterface;
    .param p2, "userid"    # I

    .prologue
    .line 188
    invoke-direct {p0, p1}, checkNotNull(Landroid/os/IInterface;)V

    .line 191
    invoke-direct {p0, p1, p2}, unregisterServiceImpl(Landroid/os/IInterface;I)V

    .line 192
    return-void
.end method
