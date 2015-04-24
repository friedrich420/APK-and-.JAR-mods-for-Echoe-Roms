.class public final Lcom/android/server/telecom/secutils/CallBadge;
.super Ljava/lang/Object;
.source "CallBadge.java"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 40
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "package"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "class"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "badgecount"

    aput-object v2, v0, v1

    return-void
.end method

.method private static log(Ljava/lang/String;Z)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 86
    const-string v0, "CallBadge"

    new-array v1, v3, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, p0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    return-void
.end method

.method public static updateBadge(Landroid/content/Context;I)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 52
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 54
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v2, "CscFeature_Contact_ReplacePackageAs"

    invoke-virtual {v0, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "com.android.contacts"

    .line 57
    :cond_0
    const-string v2, "com.android.dialer.DialtactsActivity"

    .line 66
    :try_start_0
    invoke-static {v1, v0, v2, p1}, Lcom/sec/android/touchwiz/app/BadgeNotification$Apps;->setBadgeCount(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)V

    .line 70
    const-string v3, "com.android.contacts"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 71
    const-string v0, "com.android.dialer"

    invoke-static {v1, v0, v2, p1}, Lcom/sec/android/touchwiz/app/BadgeNotification$Apps;->setBadgeCount(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)V

    .line 75
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "updateBadge(): count = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/telecom/secutils/CallBadge;->log(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :goto_0
    return-void

    .line 77
    :catch_0
    move-exception v0

    const-string v0, "updateBadge(): BadgeProvider wasn\'t installed"

    invoke-static {v0, v4}, Lcom/android/server/telecom/secutils/CallBadge;->log(Ljava/lang/String;Z)V

    goto :goto_0
.end method
