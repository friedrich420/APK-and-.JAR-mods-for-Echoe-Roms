.class public Lcom/samsung/android/secretmode/SecretModeManager;
.super Ljava/lang/Object;
.source "SecretModeManager.java"


# static fields
.field public static final ACTION_CHANGE_PERSONAL_PAGE_MODE:Ljava/lang/String; = "com.samsung.android.intent.action.CHANGE_PERSONAL_PAGE_MODE"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_CHANGE_SECRET_MODE:Ljava/lang/String; = "com.samsung.android.intent.action.CHANGE_SECRET_MODE"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_PERSONAL_PAGE_OFF:Ljava/lang/String; = "com.samsung.android.intent.action.PERSONAL_PAGE_OFF"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_PERSONAL_PAGE_ON:Ljava/lang/String; = "com.samsung.android.intent.action.PERSONAL_PAGE_ON"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_PRIVATE_MODE_OFF:Ljava/lang/String; = "com.samsung.android.intent.action.PRIVATE_MODE_OFF"

.field public static final ACTION_PRIVATE_MODE_ON:Ljava/lang/String; = "com.samsung.android.intent.action.PRIVATE_MODE_ON"

.field public static final ACTION_SECRET_MODE_OFF:Ljava/lang/String; = "com.samsung.android.intent.action.SECRET_MODE_OFF"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_SECRET_MODE_ON:Ljava/lang/String; = "com.samsung.android.intent.action.SECRET_MODE_ON"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_SHOW_VISUAL_CUE:Ljava/lang/String; = "com.samsung.android.personalpage.action.SHOW_VISUAL_CUE"

.field private static final DEBUG:Z

.field public static final FAIL_PENDING_INTENT:Ljava/lang/String; = "FailPendingIntent"

.field public static final PENDING_INTENT_DATA:Ljava/lang/String; = "PendingIntentData"

.field private static final PERSONAL_PAGE_PATH:Ljava/lang/String; = "/storage/Private"

.field public static final PROPERTY_KEY_PERSONAL_PAGE_MODE:Ljava/lang/String; = "sys.samsung.personalpage.mode"

.field public static final PROPERTY_KEY_SECRET_MODE:Ljava/lang/String; = "sys.samsung.personalpage.mode"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final SECRETMODE_SERVICE:Landroid/content/ComponentName;

.field public static final SUCCESS_PENDING_INTENT:Ljava/lang/String; = "SuccessPendingIntent"

.field private static final TAG:Ljava/lang/String; = "SecretModeManager"


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 40
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-nez v0, :cond_15

    const/4 v0, 0x1

    :goto_7
    sput-boolean v0, DEBUG:Z

    .line 129
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.samsung.android.personalpage.service"

    const-string v2, "com.samsung.android.personalpage.service.PersonalPageService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, SECRETMODE_SERVICE:Landroid/content/ComponentName;

    return-void

    .line 40
    :cond_15
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPersonalPageRoot(Landroid/content/Context;)Ljava/lang/String;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 146
    const-string v0, "/storage/Private"

    return-object v0
.end method

.method public static getSecretDir(Landroid/content/Context;)Ljava/lang/String;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 136
    const-string v0, "/storage/Private"

    return-object v0
.end method

.method public static isPersonalPageMode()Z
    .registers 3

    .prologue
    .line 215
    const-string/jumbo v1, "sys.samsung.personalpage.mode"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 217
    .local v0, "result":Ljava/lang/String;
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static isPersonalPageMounted(Landroid/content/Context;)Z
    .registers 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 160
    const/4 v1, 0x0

    .line 162
    .local v1, "isMouted":Z
    if-nez p0, :cond_d

    .line 163
    const-string v5, "SecretModeManager"

    const-string/jumbo v6, "isPersonalPageMounted: context is null"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_c
    :goto_c
    return v4

    .line 167
    :cond_d
    const-string/jumbo v5, "storage"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageManager;

    .line 169
    .local v2, "mStorageMgr":Landroid/os/storage/StorageManager;
    sget-boolean v5, DEBUG:Z

    if-eqz v5, :cond_37

    .line 170
    const-string v5, "SecretModeManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isPersonalPageMounted: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :cond_37
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "sec_container_"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_c

    .line 177
    const-string v5, "0"

    const-string/jumbo v6, "sys.samsung.personalpage.mode"

    const-string v7, "0"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    .line 181
    if-eqz v2, :cond_67

    .line 183
    :try_start_57
    const-string v4, "/storage/Private"

    invoke-virtual {v2, v4}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 184
    .local v3, "status":Ljava/lang/String;
    const-string/jumbo v4, "mounted"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_63} :catch_82

    move-result v4

    if-eqz v4, :cond_67

    .line 185
    const/4 v1, 0x1

    .line 192
    .end local v3    # "status":Ljava/lang/String;
    :cond_67
    :goto_67
    const-string v4, "SecretModeManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isPersonalPageMounted result: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v1

    .line 193
    goto :goto_c

    .line 187
    :catch_82
    move-exception v0

    .line 188
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_67
.end method

.method public static isSecretDirMounted(Landroid/content/Context;)Z
    .registers 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 152
    invoke-static {p0}, isPersonalPageMounted(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static isSecretMode()Z
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 205
    invoke-static {}, isPersonalPageMode()Z

    move-result v0

    return v0
.end method

.method public static showVisualCue(Landroid/content/Context;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)Z
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "success"    # Landroid/app/PendingIntent;
    .param p2, "fail"    # Landroid/app/PendingIntent;

    .prologue
    .line 222
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.android.personalpage.action.SHOW_VISUAL_CUE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 223
    .local v1, "intent":Landroid/content/Intent;
    sget-object v2, SECRETMODE_SERVICE:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 224
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 225
    .local v0, "data":Landroid/os/Bundle;
    const-string v2, "SuccessPendingIntent"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 226
    const-string v2, "FailPendingIntent"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 227
    const-string v2, "PendingIntentData"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 228
    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 230
    const/4 v2, 0x1

    return v2
.end method
