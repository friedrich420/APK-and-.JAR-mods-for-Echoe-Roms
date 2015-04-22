.class final Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;
.super Ljava/lang/Object;
.source "AppWidgetServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appwidget/AppWidgetServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BackupRestoreController"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "BackupRestoreController"

.field private static final WIDGET_STATE_VERSION:I = 0x2


# instance fields
.field private final mPrunedApps:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mUpdatesByHost:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mUpdatesByProvider:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;


# direct methods
.method private constructor <init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;)V
    .registers 3

    .prologue
    .line 3651
    iput-object p1, p0, this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3663
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, mPrunedApps:Ljava/util/HashSet;

    .line 3665
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, mUpdatesByProvider:Ljava/util/HashMap;

    .line 3667
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, mUpdatesByHost:Ljava/util/HashMap;

    .line 4234
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;Lcom/android/server/appwidget/AppWidgetServiceImpl$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/appwidget/AppWidgetServiceImpl;
    .param p2, "x1"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$1;

    .prologue
    .line 3651
    invoke-direct {p0, p1}, <init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;)V

    return-void
.end method

.method private alreadyStashed(Ljava/util/ArrayList;II)Z
    .registers 8
    .param p2, "oldId"    # I
    .param p3, "newId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;",
            ">;II)Z"
        }
    .end annotation

    .prologue
    .line 4105
    .local p1, "stash":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4106
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_1a

    .line 4107
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;

    .line 4108
    .local v2, "r":Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;
    iget v3, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;->oldId:I

    if-ne v3, p2, :cond_17

    iget v3, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;->newId:I

    if-ne v3, p3, :cond_17

    .line 4109
    const/4 v3, 0x1

    .line 4112
    .end local v2    # "r":Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;
    :goto_16
    return v3

    .line 4106
    .restart local v2    # "r":Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;
    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 4112
    .end local v2    # "r":Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;
    :cond_1a
    const/4 v3, 0x0

    goto :goto_16
.end method

.method private countPendingUpdates(Ljava/util/ArrayList;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 4221
    .local p1, "updates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;>;"
    const/4 v2, 0x0

    .line 4222
    .local v2, "pending":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4223
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    if-ge v1, v0, :cond_17

    .line 4224
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;

    .line 4225
    .local v3, "r":Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;
    iget-boolean v4, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;->notified:Z

    if-nez v4, :cond_14

    .line 4226
    add-int/lit8 v2, v2, 0x1

    .line 4223
    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 4229
    .end local v3    # "r":Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;
    :cond_17
    return v2
.end method

.method private findProviderLocked(Landroid/content/ComponentName;I)Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .registers 7
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    .prologue
    .line 4025
    iget-object v3, p0, this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    # getter for: Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$2700(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 4026
    .local v2, "providerCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b
    if-ge v0, v2, :cond_2d

    .line 4027
    iget-object v3, p0, this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    # getter for: Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$2700(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 4028
    .local v1, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    invoke-virtual {v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    move-result v3

    if-ne v3, p2, :cond_2a

    iget-object v3, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    iget-object v3, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 4033
    .end local v1    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    :goto_29
    return-object v1

    .line 4026
    .restart local v1    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    :cond_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 4033
    .end local v1    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    :cond_2d
    const/4 v1, 0x0

    goto :goto_29
.end method

.method private findRestoredWidgetLocked(ILcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .registers 11
    .param p1, "restoredId"    # I
    .param p2, "host"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .param p3, "p"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .prologue
    const/4 v3, 0x0

    .line 4038
    const-string v4, "BackupRestoreController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Find restored widget: id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " host="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " provider="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4042
    if-eqz p3, :cond_31

    if-nez p2, :cond_33

    :cond_31
    move-object v2, v3

    .line 4058
    :goto_32
    return-object v2

    .line 4046
    :cond_33
    iget-object v4, p0, this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    # getter for: Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$2600(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4047
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3e
    if-ge v1, v0, :cond_8e

    .line 4048
    iget-object v4, p0, this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    # getter for: Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$2600(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 4049
    .local v2, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    iget v4, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->restoredId:I

    if-ne v4, p1, :cond_8b

    iget-object v4, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    iget-object v4, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    iget-object v5, p2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    invoke-virtual {v4, v5}, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8b

    iget-object v4, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-object v4, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    iget-object v5, p3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    invoke-virtual {v4, v5}, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8b

    .line 4053
    const-string v3, "BackupRestoreController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "   Found at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_32

    .line 4047
    :cond_8b
    add-int/lit8 v1, v1, 0x1

    goto :goto_3e

    .end local v2    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    :cond_8e
    move-object v2, v3

    .line 4058
    goto :goto_32
.end method

.method private isProviderAndHostInUser(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;I)Z
    .registers 4
    .param p1, "widget"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .param p2, "userId"    # I

    .prologue
    .line 4186
    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    invoke-virtual {v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->getUserId()I

    move-result v0

    if-ne v0, p2, :cond_16

    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    if-eqz v0, :cond_14

    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    invoke-virtual {v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    move-result v0

    if-ne v0, p2, :cond_16

    :cond_14
    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private packageNeedsWidgetBackupLocked(Ljava/lang/String;I)Z
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const/4 v4, 0x1

    .line 4062
    iget-object v5, p0, this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    # getter for: Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$2600(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4063
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    if-ge v1, v0, :cond_37

    .line 4064
    iget-object v5, p0, this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    # getter for: Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$2600(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 4067
    .local v3, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    invoke-direct {p0, v3, p2}, isProviderAndHostInUser(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;I)Z

    move-result v5

    if-nez v5, :cond_23

    .line 4063
    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 4071
    :cond_23
    iget-object v5, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    invoke-virtual {v5, p1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->isInPackageForUser(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 4082
    .end local v3    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    :goto_2b
    return v4

    .line 4076
    .restart local v3    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    :cond_2c
    iget-object v2, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 4077
    .local v2, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    if-eqz v2, :cond_20

    invoke-virtual {v2, p1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->isInPackageForUser(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_20

    goto :goto_2b

    .line 4082
    .end local v2    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .end local v3    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    :cond_37
    const/4 v4, 0x0

    goto :goto_2b
.end method

.method private parseWidgetIdOptions(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/Bundle;
    .registers 12
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    const/4 v9, 0x0

    const/16 v8, 0x10

    .line 4191
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 4192
    .local v5, "options":Landroid/os/Bundle;
    const-string v6, "min_width"

    invoke-interface {p1, v9, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4193
    .local v4, "minWidthString":Ljava/lang/String;
    if-eqz v4, :cond_19

    .line 4194
    const-string v6, "appWidgetMinWidth"

    invoke-static {v4, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4197
    :cond_19
    const-string v6, "min_height"

    invoke-interface {p1, v9, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4198
    .local v3, "minHeightString":Ljava/lang/String;
    if-eqz v3, :cond_2a

    .line 4199
    const-string v6, "appWidgetMinHeight"

    invoke-static {v3, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4202
    :cond_2a
    const-string v6, "max_width"

    invoke-interface {p1, v9, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4203
    .local v2, "maxWidthString":Ljava/lang/String;
    if-eqz v2, :cond_3b

    .line 4204
    const-string v6, "appWidgetMaxWidth"

    invoke-static {v2, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4207
    :cond_3b
    const-string v6, "max_height"

    invoke-interface {p1, v9, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4208
    .local v1, "maxHeightString":Ljava/lang/String;
    if-eqz v1, :cond_4c

    .line 4209
    const-string v6, "appWidgetMaxHeight"

    invoke-static {v1, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4212
    :cond_4c
    const-string v6, "host_category"

    invoke-interface {p1, v9, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4213
    .local v0, "categoryString":Ljava/lang/String;
    if-eqz v0, :cond_5d

    .line 4214
    const-string v6, "appWidgetCategory"

    invoke-static {v0, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4217
    :cond_5d
    return-object v5
.end method

.method private pruneWidgetStateLocked(Ljava/lang/String;I)V
    .registers 10
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 4154
    iget-object v4, p0, mPrunedApps:Ljava/util/HashSet;

    invoke-virtual {v4, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_70

    .line 4156
    const-string v4, "BackupRestoreController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "pruning widget state for restoring package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4158
    iget-object v4, p0, this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    # getter for: Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$2600(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "i":I
    :goto_2d
    if-ltz v1, :cond_6a

    .line 4159
    iget-object v4, p0, this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    # getter for: Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$2600(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 4161
    .local v3, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    iget-object v0, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 4162
    .local v0, "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    iget-object v2, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 4164
    .local v2, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    # invokes: Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->hostsPackageForUser(Ljava/lang/String;I)Z
    invoke-static {v0, p1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->access$3000(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_4d

    if-eqz v2, :cond_67

    invoke-virtual {v2, p1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->isInPackageForUser(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_67

    .line 4169
    :cond_4d
    iget-object v4, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4170
    if-eqz v2, :cond_59

    .line 4171
    iget-object v4, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4172
    :cond_59
    iget-object v4, p0, this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    # invokes: Lcom/android/server/appwidget/AppWidgetServiceImpl;->unbindAppWidgetRemoteViewsServicesLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V
    invoke-static {v4, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$3700(Lcom/android/server/appwidget/AppWidgetServiceImpl;Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    .line 4173
    iget-object v4, p0, this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    # getter for: Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$2600(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4158
    :cond_67
    add-int/lit8 v1, v1, -0x1

    goto :goto_2d

    .line 4176
    .end local v0    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .end local v2    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .end local v3    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    :cond_6a
    iget-object v4, p0, mPrunedApps:Ljava/util/HashSet;

    invoke-virtual {v4, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4182
    .end local v1    # "i":I
    :goto_6f
    return-void

    .line 4179
    :cond_70
    const-string v4, "BackupRestoreController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "already pruned "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", continuing normally"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6f
.end method

.method private sendWidgetRestoreBroadcastLocked(Ljava/lang/String;Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;[I[ILandroid/os/UserHandle;)V
    .registers 10
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "provider"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .param p3, "host"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .param p4, "oldIds"    # [I
    .param p5, "newIds"    # [I
    .param p6, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    .line 4134
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4135
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "appWidgetOldIds"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 4136
    const-string v1, "appWidgetIds"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 4137
    if-eqz p2, :cond_1d

    .line 4138
    iget-object v1, p2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 4139
    iget-object v1, p0, this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    # invokes: Lcom/android/server/appwidget/AppWidgetServiceImpl;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    invoke-static {v1, v0, p6}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$3600(Lcom/android/server/appwidget/AppWidgetServiceImpl;Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 4141
    :cond_1d
    if-eqz p3, :cond_38

    .line 4142
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 4143
    iget-object v1, p3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    iget-object v1, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 4144
    const-string v1, "hostId"

    iget-object v2, p3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    iget v2, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->hostId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4145
    iget-object v1, p0, this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    # invokes: Lcom/android/server/appwidget/AppWidgetServiceImpl;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    invoke-static {v1, v0, p6}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$3600(Lcom/android/server/appwidget/AppWidgetServiceImpl;Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 4147
    :cond_38
    return-void
.end method

.method private stashHostRestoreUpdateLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;II)V
    .registers 8
    .param p1, "host"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .param p2, "oldId"    # I
    .param p3, "newId"    # I

    .prologue
    .line 4116
    iget-object v1, p0, mUpdatesByHost:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 4117
    .local v0, "r":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;>;"
    if-nez v0, :cond_1d

    .line 4118
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "r":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4119
    .restart local v0    # "r":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;>;"
    iget-object v1, p0, mUpdatesByHost:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4129
    :cond_14
    new-instance v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;

    invoke-direct {v1, p0, p2, p3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4130
    :goto_1c
    return-void

    .line 4121
    :cond_1d
    invoke-direct {p0, v0, p2, p3}, alreadyStashed(Ljava/util/ArrayList;II)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 4123
    const-string v1, "BackupRestoreController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ID remap "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " already stashed for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c
.end method

.method private stashProviderRestoreUpdateLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;II)V
    .registers 8
    .param p1, "provider"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .param p2, "oldId"    # I
    .param p3, "newId"    # I

    .prologue
    .line 4086
    iget-object v1, p0, mUpdatesByProvider:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 4087
    .local v0, "r":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;>;"
    if-nez v0, :cond_1d

    .line 4088
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "r":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4089
    .restart local v0    # "r":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;>;"
    iget-object v1, p0, mUpdatesByProvider:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4100
    :cond_14
    new-instance v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;

    invoke-direct {v1, p0, p2, p3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4101
    :goto_1c
    return-void

    .line 4092
    :cond_1d
    invoke-direct {p0, v0, p2, p3}, alreadyStashed(Ljava/util/ArrayList;II)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 4094
    const-string v1, "BackupRestoreController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ID remap "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " already stashed for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c
.end method


# virtual methods
.method public getWidgetParticipants(I)Ljava/util/List;
    .registers 10
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3672
    const-string v5, "BackupRestoreController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Getting widget participants for user: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3675
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 3676
    .local v2, "packages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v5, p0, this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    # getter for: Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$2100(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 3677
    :try_start_24
    iget-object v5, p0, this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    # getter for: Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$2600(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3678
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2f
    if-ge v1, v0, :cond_62

    .line 3679
    iget-object v5, p0, this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    # getter for: Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$2600(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 3682
    .local v4, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    invoke-direct {p0, v4, p1}, isProviderAndHostInUser(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;I)Z

    move-result v5

    if-nez v5, :cond_46

    .line 3678
    :cond_43
    :goto_43
    add-int/lit8 v1, v1, 0x1

    goto :goto_2f

    .line 3686
    :cond_46
    iget-object v5, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    iget-object v5, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    iget-object v5, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3687
    iget-object v3, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 3688
    .local v3, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    if-eqz v3, :cond_43

    .line 3689
    iget-object v5, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    iget-object v5, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_43

    .line 3692
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v3    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .end local v4    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    :catchall_5f
    move-exception v5

    monitor-exit v6
    :try_end_61
    .catchall {:try_start_24 .. :try_end_61} :catchall_5f

    throw v5

    .restart local v0    # "N":I
    .restart local v1    # "i":I
    :cond_62
    :try_start_62
    monitor-exit v6
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_5f

    .line 3693
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v5
.end method

.method public getWidgetState(Ljava/lang/String;I)[B
    .registers 16
    .param p1, "backedupPackage"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 3698
    const-string v9, "BackupRestoreController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Getting widget state for user: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3701
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 3702
    .local v7, "stream":Ljava/io/ByteArrayOutputStream;
    iget-object v9, p0, this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    # getter for: Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;
    invoke-static {v9}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$2100(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10

    .line 3705
    :try_start_24
    invoke-direct {p0, p1, p2}, packageNeedsWidgetBackupLocked(Ljava/lang/String;I)Z

    move-result v9

    if-nez v9, :cond_2d

    .line 3706
    const/4 v9, 0x0

    monitor-exit v10
    :try_end_2c
    .catchall {:try_start_24 .. :try_end_2c} :catchall_12a

    .line 3770
    :goto_2c
    return-object v9

    .line 3710
    :cond_2d
    :try_start_2d
    new-instance v5, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v5}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 3711
    .local v5, "out":Lorg/xmlpull/v1/XmlSerializer;
    const-string/jumbo v9, "utf-8"

    invoke-interface {v5, v7, v9}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 3712
    const/4 v9, 0x0

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-interface {v5, v9, v11}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 3713
    const/4 v9, 0x0

    const-string/jumbo v11, "ws"

    invoke-interface {v5, v9, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3714
    const/4 v9, 0x0

    const-string/jumbo v11, "version"

    const/4 v12, 0x2

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v5, v9, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3715
    const/4 v9, 0x0

    const-string/jumbo v11, "pkg"

    invoke-interface {v5, v9, v11, p1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3720
    const/4 v4, 0x0

    .line 3721
    .local v4, "index":I
    iget-object v9, p0, this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    # getter for: Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$2700(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3722
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_67
    if-ge v3, v0, :cond_93

    .line 3723
    iget-object v9, p0, this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    # getter for: Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$2700(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 3725
    .local v6, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    iget-object v9, v6, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_90

    invoke-virtual {v6, p1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->isInPackageForUser(Ljava/lang/String;I)Z

    move-result v9

    if-nez v9, :cond_89

    invoke-virtual {v6, p1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->hostedByPackageForUser(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_90

    .line 3728
    :cond_89
    iput v4, v6, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->tag:I

    .line 3729
    # invokes: Lcom/android/server/appwidget/AppWidgetServiceImpl;->serializeProvider(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V
    invoke-static {v5, v6}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$2800(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V

    .line 3730
    add-int/lit8 v4, v4, 0x1

    .line 3722
    :cond_90
    add-int/lit8 v3, v3, 0x1

    goto :goto_67

    .line 3734
    .end local v6    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    :cond_93
    iget-object v9, p0, this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    # getter for: Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$2900(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3735
    const/4 v4, 0x0

    .line 3736
    const/4 v3, 0x0

    :goto_9f
    if-ge v3, v0, :cond_cb

    .line 3737
    iget-object v9, p0, this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    # getter for: Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$2900(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 3739
    .local v2, "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    iget-object v9, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_c8

    invoke-virtual {v2, p1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->isInPackageForUser(Ljava/lang/String;I)Z

    move-result v9

    if-nez v9, :cond_c1

    # invokes: Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->hostsPackageForUser(Ljava/lang/String;I)Z
    invoke-static {v2, p1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->access$3000(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_c8

    .line 3742
    :cond_c1
    iput v4, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->tag:I

    .line 3743
    # invokes: Lcom/android/server/appwidget/AppWidgetServiceImpl;->serializeHost(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;)V
    invoke-static {v5, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$3100(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;)V

    .line 3744
    add-int/lit8 v4, v4, 0x1

    .line 3736
    :cond_c8
    add-int/lit8 v3, v3, 0x1

    goto :goto_9f

    .line 3750
    .end local v2    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    :cond_cb
    iget-object v9, p0, this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    # getter for: Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$2600(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3751
    const/4 v3, 0x0

    :goto_d6
    if-ge v3, v0, :cond_fc

    .line 3752
    iget-object v9, p0, this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    # getter for: Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$2600(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 3754
    .local v8, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    iget-object v6, v8, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 3755
    .restart local v6    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    iget-object v9, v8, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    invoke-virtual {v9, p1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->isInPackageForUser(Ljava/lang/String;I)Z

    move-result v9

    if-nez v9, :cond_f6

    if-eqz v6, :cond_f9

    invoke-virtual {v6, p1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->isInPackageForUser(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_f9

    .line 3758
    :cond_f6
    # invokes: Lcom/android/server/appwidget/AppWidgetServiceImpl;->serializeAppWidget(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V
    invoke-static {v5, v8}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$3200(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    .line 3751
    :cond_f9
    add-int/lit8 v3, v3, 0x1

    goto :goto_d6

    .line 3762
    .end local v6    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .end local v8    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    :cond_fc
    const/4 v9, 0x0

    const-string/jumbo v11, "ws"

    invoke-interface {v5, v9, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3763
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_106
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_106} :catch_10d
    .catchall {:try_start_2d .. :try_end_106} :catchall_12a

    .line 3768
    :try_start_106
    monitor-exit v10
    :try_end_107
    .catchall {:try_start_106 .. :try_end_107} :catchall_12a

    .line 3770
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    goto/16 :goto_2c

    .line 3764
    .end local v0    # "N":I
    .end local v3    # "i":I
    .end local v4    # "index":I
    .end local v5    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :catch_10d
    move-exception v1

    .line 3765
    .local v1, "e":Ljava/io/IOException;
    :try_start_10e
    const-string v9, "BackupRestoreController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unable to save widget state for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3766
    const/4 v9, 0x0

    monitor-exit v10

    goto/16 :goto_2c

    .line 3768
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_12a
    move-exception v9

    monitor-exit v10
    :try_end_12c
    .catchall {:try_start_10e .. :try_end_12c} :catchall_12a

    throw v9
.end method

.method public restoreFinished(I)V
    .registers 30
    .param p1, "userId"    # I

    .prologue
    .line 3948
    const-string v2, "BackupRestoreController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "restoreFinished for "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3951
    new-instance v8, Landroid/os/UserHandle;

    move/from16 v0, p1

    invoke-direct {v8, v0}, Landroid/os/UserHandle;-><init>(I)V

    .line 3952
    .local v8, "userHandle":Landroid/os/UserHandle;
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    # getter for: Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$2100(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/lang/Object;

    move-result-object v27

    monitor-enter v27

    .line 3954
    :try_start_2b
    move-object/from16 v0, p0

    iget-object v2, v0, mUpdatesByProvider:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v24

    .line 3956
    .local v24, "providerEntries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;>;>;>;"
    invoke-interface/range {v24 .. v24}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .local v21, "i$":Ljava/util/Iterator;
    :cond_37
    :goto_37
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f0

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/Map$Entry;

    .line 3958
    .local v18, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;>;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 3959
    .local v4, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/util/ArrayList;

    .line 3960
    .local v26, "updates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, countPendingUpdates(Ljava/util/ArrayList;)I

    move-result v23

    .line 3962
    .local v23, "pending":I
    const-string v2, "BackupRestoreController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Provider "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " pending: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3964
    if-lez v23, :cond_37

    .line 3965
    move/from16 v0, v23

    new-array v6, v0, [I

    .line 3966
    .local v6, "oldIds":[I
    move/from16 v0, v23

    new-array v7, v0, [I

    .line 3967
    .local v7, "newIds":[I
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 3968
    .local v16, "N":I
    const/16 v22, 0x0

    .line 3969
    .local v22, "nextPending":I
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_8d
    move/from16 v0, v20

    move/from16 v1, v16

    if-ge v0, v1, :cond_e3

    .line 3970
    move-object/from16 v0, v26

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;

    .line 3971
    .local v25, "r":Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;
    move-object/from16 v0, v25

    iget-boolean v2, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;->notified:Z

    if-nez v2, :cond_e0

    .line 3972
    const/4 v2, 0x1

    move-object/from16 v0, v25

    iput-boolean v2, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;->notified:Z

    .line 3973
    move-object/from16 v0, v25

    iget v2, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;->oldId:I

    aput v2, v6, v22

    .line 3974
    move-object/from16 v0, v25

    iget v2, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;->newId:I

    aput v2, v7, v22

    .line 3975
    add-int/lit8 v22, v22, 0x1

    .line 3977
    const-string v2, "BackupRestoreController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "   "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v25

    iget v5, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;->oldId:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " => "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v25

    iget v5, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;->newId:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3969
    :cond_e0
    add-int/lit8 v20, v20, 0x1

    goto :goto_8d

    .line 3981
    .end local v25    # "r":Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;
    :cond_e3
    const-string v3, "android.appwidget.action.APPWIDGET_RESTORED"

    const/4 v5, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, sendWidgetRestoreBroadcastLocked(Ljava/lang/String;Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;[I[ILandroid/os/UserHandle;)V

    goto/16 :goto_37

    .line 4021
    .end local v4    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .end local v6    # "oldIds":[I
    .end local v7    # "newIds":[I
    .end local v16    # "N":I
    .end local v18    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;>;>;"
    .end local v20    # "i":I
    .end local v21    # "i$":Ljava/util/Iterator;
    .end local v22    # "nextPending":I
    .end local v23    # "pending":I
    .end local v24    # "providerEntries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;>;>;>;"
    .end local v26    # "updates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;>;"
    :catchall_ed
    move-exception v2

    monitor-exit v27
    :try_end_ef
    .catchall {:try_start_2b .. :try_end_ef} :catchall_ed

    throw v2

    .line 3988
    .restart local v21    # "i$":Ljava/util/Iterator;
    .restart local v24    # "providerEntries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;>;>;>;"
    :cond_f0
    :try_start_f0
    move-object/from16 v0, p0

    iget-object v2, v0, mUpdatesByHost:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v19

    .line 3990
    .local v19, "hostEntries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;>;>;>;"
    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_fc
    :goto_fc
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1bc

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Map$Entry;

    .line 3991
    .local v17, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;>;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 3992
    .local v12, "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    iget-object v2, v12, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    iget v2, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->uid:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_fc

    .line 3993
    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/util/ArrayList;

    .line 3994
    .restart local v26    # "updates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, countPendingUpdates(Ljava/util/ArrayList;)I

    move-result v23

    .line 3996
    .restart local v23    # "pending":I
    const-string v2, "BackupRestoreController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Host "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " pending: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3998
    if-lez v23, :cond_fc

    .line 3999
    move/from16 v0, v23

    new-array v6, v0, [I

    .line 4000
    .restart local v6    # "oldIds":[I
    move/from16 v0, v23

    new-array v7, v0, [I

    .line 4001
    .restart local v7    # "newIds":[I
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 4002
    .restart local v16    # "N":I
    const/16 v22, 0x0

    .line 4003
    .restart local v22    # "nextPending":I
    const/16 v20, 0x0

    .restart local v20    # "i":I
    :goto_159
    move/from16 v0, v20

    move/from16 v1, v16

    if-ge v0, v1, :cond_1af

    .line 4004
    move-object/from16 v0, v26

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;

    .line 4005
    .restart local v25    # "r":Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;
    move-object/from16 v0, v25

    iget-boolean v2, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;->notified:Z

    if-nez v2, :cond_1ac

    .line 4006
    const/4 v2, 0x1

    move-object/from16 v0, v25

    iput-boolean v2, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;->notified:Z

    .line 4007
    move-object/from16 v0, v25

    iget v2, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;->oldId:I

    aput v2, v6, v22

    .line 4008
    move-object/from16 v0, v25

    iget v2, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;->newId:I

    aput v2, v7, v22

    .line 4009
    add-int/lit8 v22, v22, 0x1

    .line 4011
    const-string v2, "BackupRestoreController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "   "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v25

    iget v5, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;->oldId:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " => "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v25

    iget v5, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;->newId:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4003
    :cond_1ac
    add-int/lit8 v20, v20, 0x1

    goto :goto_159

    .line 4015
    .end local v25    # "r":Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;
    :cond_1af
    const-string v10, "android.appwidget.action.APPWIDGET_HOST_RESTORED"

    const/4 v11, 0x0

    move-object/from16 v9, p0

    move-object v13, v6

    move-object v14, v7

    move-object v15, v8

    invoke-direct/range {v9 .. v15}, sendWidgetRestoreBroadcastLocked(Ljava/lang/String;Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;[I[ILandroid/os/UserHandle;)V

    goto/16 :goto_fc

    .line 4021
    .end local v6    # "oldIds":[I
    .end local v7    # "newIds":[I
    .end local v12    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .end local v16    # "N":I
    .end local v17    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;>;>;"
    .end local v20    # "i":I
    .end local v22    # "nextPending":I
    .end local v23    # "pending":I
    .end local v26    # "updates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;>;"
    :cond_1bc
    monitor-exit v27
    :try_end_1bd
    .catchall {:try_start_f0 .. :try_end_1bd} :catchall_ed

    .line 4022
    return-void
.end method

.method public restoreStarting(I)V
    .registers 5
    .param p1, "userId"    # I

    .prologue
    .line 3775
    const-string v0, "BackupRestoreController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Restore starting for user: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3778
    iget-object v0, p0, this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    # getter for: Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$2100(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 3782
    :try_start_1f
    iget-object v0, p0, mPrunedApps:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 3783
    iget-object v0, p0, mUpdatesByProvider:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 3784
    iget-object v0, p0, mUpdatesByHost:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 3785
    monitor-exit v1

    .line 3786
    return-void

    .line 3785
    :catchall_30
    move-exception v0

    monitor-exit v1
    :try_end_32
    .catchall {:try_start_1f .. :try_end_32} :catchall_30

    throw v0
.end method

.method public restoreWidgetState(Ljava/lang/String;[BI)V
    .registers 34
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "restoredState"    # [B
    .param p3, "userId"    # I

    .prologue
    .line 3790
    const-string v26, "BackupRestoreController"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Restoring widget state for user:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " package: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3794
    new-instance v19, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 3797
    .local v19, "stream":Ljava/io/ByteArrayInputStream;
    :try_start_33
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 3800
    .local v18, "restoredProviders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;>;"
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 3802
    .local v16, "restoredHosts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;>;"
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v13

    .line 3803
    .local v13, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/16 v26, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-interface {v13, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 3805
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;
    invoke-static/range {v26 .. v26}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$2100(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/lang/Object;

    move-result-object v27

    monitor-enter v27
    :try_end_55
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_33 .. :try_end_55} :catch_22c
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_55} :catch_41c
    .catchall {:try_start_33 .. :try_end_55} :catchall_40d

    .line 3808
    :cond_55
    :try_start_55
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v21

    .line 3809
    .local v21, "type":I
    const/16 v26, 0x2

    move/from16 v0, v21

    move/from16 v1, v26

    if-ne v0, v1, :cond_185

    .line 3810
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v20

    .line 3811
    .local v20, "tag":Ljava/lang/String;
    const-string/jumbo v26, "ws"

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_e9

    .line 3812
    const/16 v26, 0x0

    const-string/jumbo v28, "version"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-interface {v13, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 3814
    .local v23, "version":Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    .line 3815
    .local v24, "versionNumber":I
    const/16 v26, 0x2

    move/from16 v0, v24

    move/from16 v1, v26

    if-le v0, v1, :cond_ba

    .line 3816
    const-string v26, "BackupRestoreController"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Unable to process state version "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3817
    monitor-exit v27
    :try_end_ac
    .catchall {:try_start_55 .. :try_end_ac} :catchall_229

    .line 3939
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, p3

    # invokes: Lcom/android/server/appwidget/AppWidgetServiceImpl;->saveGroupStateAsync(I)V
    invoke-static {v0, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$3500(Lcom/android/server/appwidget/AppWidgetServiceImpl;I)V

    .line 3941
    .end local v13    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v16    # "restoredHosts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;>;"
    .end local v18    # "restoredProviders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;>;"
    .end local v20    # "tag":Ljava/lang/String;
    .end local v21    # "type":I
    .end local v23    # "version":Ljava/lang/String;
    .end local v24    # "versionNumber":I
    :goto_b9
    return-void

    .line 3821
    .restart local v13    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v16    # "restoredHosts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;>;"
    .restart local v18    # "restoredProviders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;>;"
    .restart local v20    # "tag":Ljava/lang/String;
    .restart local v21    # "type":I
    .restart local v23    # "version":Ljava/lang/String;
    .restart local v24    # "versionNumber":I
    :cond_ba
    const/16 v26, 0x0

    :try_start_bc
    const-string/jumbo v28, "pkg"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-interface {v13, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 3822
    .local v14, "pkg":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_185

    .line 3823
    const-string v26, "BackupRestoreController"

    const-string v28, "Package mismatch in ws"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3824
    monitor-exit v27
    :try_end_db
    .catchall {:try_start_bc .. :try_end_db} :catchall_229

    .line 3939
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, p3

    # invokes: Lcom/android/server/appwidget/AppWidgetServiceImpl;->saveGroupStateAsync(I)V
    invoke-static {v0, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$3500(Lcom/android/server/appwidget/AppWidgetServiceImpl;I)V

    goto :goto_b9

    .line 3826
    .end local v14    # "pkg":Ljava/lang/String;
    .end local v23    # "version":Ljava/lang/String;
    .end local v24    # "versionNumber":I
    :cond_e9
    :try_start_e9
    const-string/jumbo v26, "p"

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_19d

    .line 3827
    const/16 v26, 0x0

    const-string/jumbo v28, "pkg"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-interface {v13, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 3828
    .restart local v14    # "pkg":Ljava/lang/String;
    const/16 v26, 0x0

    const-string v28, "cl"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-interface {v13, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3836
    .local v4, "cl":Ljava/lang/String;
    new-instance v5, Landroid/content/ComponentName;

    invoke-direct {v5, v14, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3838
    .local v5, "componentName":Landroid/content/ComponentName;
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v5, v1}, findProviderLocked(Landroid/content/ComponentName;I)Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    move-result-object v12

    .line 3839
    .local v12, "p":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    if-nez v12, :cond_160

    .line 3840
    new-instance v12, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .end local v12    # "p":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    const/16 v26, 0x0

    move-object/from16 v0, v26

    invoke-direct {v12, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl$1;)V

    .line 3841
    .restart local v12    # "p":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    new-instance v26, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    const/16 v28, -0x1

    const/16 v29, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v28

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v5, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;-><init>(ILandroid/content/ComponentName;Lcom/android/server/appwidget/AppWidgetServiceImpl$1;)V

    move-object/from16 v0, v26

    iput-object v0, v12, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    .line 3842
    new-instance v26, Landroid/appwidget/AppWidgetProviderInfo;

    invoke-direct/range {v26 .. v26}, Landroid/appwidget/AppWidgetProviderInfo;-><init>()V

    move-object/from16 v0, v26

    iput-object v0, v12, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    .line 3843
    iget-object v0, v12, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iput-object v5, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 3844
    const/16 v26, 0x1

    move/from16 v0, v26

    iput-boolean v0, v12, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->zombie:Z

    .line 3845
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;
    invoke-static/range {v26 .. v26}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$2700(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/util/ArrayList;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3848
    :cond_160
    const-string v26, "BackupRestoreController"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "   provider "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    iget-object v0, v12, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3850
    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3927
    .end local v4    # "cl":Ljava/lang/String;
    .end local v5    # "componentName":Landroid/content/ComponentName;
    .end local v12    # "p":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .end local v14    # "pkg":Ljava/lang/String;
    .end local v20    # "tag":Ljava/lang/String;
    :cond_185
    :goto_185
    const/16 v26, 0x1

    move/from16 v0, v21

    move/from16 v1, v26

    if-ne v0, v1, :cond_55

    .line 3935
    monitor-exit v27
    :try_end_18e
    .catchall {:try_start_e9 .. :try_end_18e} :catchall_229

    .line 3939
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, p3

    # invokes: Lcom/android/server/appwidget/AppWidgetServiceImpl;->saveGroupStateAsync(I)V
    invoke-static {v0, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$3500(Lcom/android/server/appwidget/AppWidgetServiceImpl;I)V

    goto/16 :goto_b9

    .line 3851
    .restart local v20    # "tag":Ljava/lang/String;
    :cond_19d
    :try_start_19d
    const-string v26, "h"

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_25a

    .line 3855
    const/16 v26, 0x0

    const-string/jumbo v28, "pkg"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-interface {v13, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 3857
    .restart local v14    # "pkg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, p3

    # invokes: Lcom/android/server/appwidget/AppWidgetServiceImpl;->getUidForPackage(Ljava/lang/String;I)I
    invoke-static {v0, v14, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$2000(Lcom/android/server/appwidget/AppWidgetServiceImpl;Ljava/lang/String;I)I

    move-result v22

    .line 3858
    .local v22, "uid":I
    const/16 v26, 0x0

    const-string v28, "id"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-interface {v13, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    const/16 v28, 0x10

    move-object/from16 v0, v26

    move/from16 v1, v28

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v9

    .line 3861
    .local v9, "hostId":I
    new-instance v11, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    move/from16 v0, v22

    invoke-direct {v11, v0, v9, v14}, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;-><init>(IILjava/lang/String;)V

    .line 3862
    .local v11, "id":Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    # invokes: Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupOrAddHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    invoke-static {v0, v11}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$3300(Lcom/android/server/appwidget/AppWidgetServiceImpl;Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    move-result-object v7

    .line 3863
    .local v7, "h":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3866
    const-string v26, "BackupRestoreController"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "   host["

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "]: {"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    iget-object v0, v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, "}"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_185

    .line 3935
    .end local v7    # "h":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .end local v9    # "hostId":I
    .end local v11    # "id":Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;
    .end local v14    # "pkg":Ljava/lang/String;
    .end local v20    # "tag":Ljava/lang/String;
    .end local v21    # "type":I
    .end local v22    # "uid":I
    :catchall_229
    move-exception v26

    monitor-exit v27
    :try_end_22b
    .catchall {:try_start_19d .. :try_end_22b} :catchall_229

    :try_start_22b
    throw v26
    :try_end_22c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_22b .. :try_end_22c} :catch_22c
    .catch Ljava/io/IOException; {:try_start_22b .. :try_end_22c} :catch_41c
    .catchall {:try_start_22b .. :try_end_22c} :catchall_40d

    .line 3936
    .end local v13    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v16    # "restoredHosts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;>;"
    .end local v18    # "restoredProviders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;>;"
    :catch_22c
    move-exception v26

    move-object/from16 v6, v26

    .line 3937
    .local v6, "e":Ljava/lang/Exception;
    :goto_22f
    :try_start_22f
    const-string v26, "BackupRestoreController"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Unable to restore widget state for "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24b
    .catchall {:try_start_22f .. :try_end_24b} :catchall_40d

    .line 3939
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, p3

    # invokes: Lcom/android/server/appwidget/AppWidgetServiceImpl;->saveGroupStateAsync(I)V
    invoke-static {v0, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$3500(Lcom/android/server/appwidget/AppWidgetServiceImpl;I)V

    goto/16 :goto_b9

    .line 3869
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v13    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v16    # "restoredHosts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;>;"
    .restart local v18    # "restoredProviders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;>;"
    .restart local v20    # "tag":Ljava/lang/String;
    .restart local v21    # "type":I
    :cond_25a
    :try_start_25a
    const-string v26, "g"

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_185

    .line 3870
    const/16 v26, 0x0

    const-string v28, "id"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-interface {v13, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    const/16 v28, 0x10

    move-object/from16 v0, v26

    move/from16 v1, v28

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v17

    .line 3872
    .local v17, "restoredId":I
    const/16 v26, 0x0

    const-string v28, "h"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-interface {v13, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    const/16 v28, 0x10

    move-object/from16 v0, v26

    move/from16 v1, v28

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v10

    .line 3874
    .local v10, "hostIndex":I
    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 3875
    .local v8, "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    const/4 v12, 0x0

    .line 3876
    .restart local v12    # "p":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    const/16 v26, 0x0

    const-string/jumbo v28, "p"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-interface {v13, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 3877
    .local v15, "prov":Ljava/lang/String;
    if-eqz v15, :cond_2bc

    .line 3880
    const/16 v26, 0x10

    move/from16 v0, v26

    invoke-static {v15, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v25

    .line 3881
    .local v25, "which":I
    move-object/from16 v0, v18

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    .end local v12    # "p":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    check-cast v12, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 3887
    .end local v25    # "which":I
    .restart local v12    # "p":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    :cond_2bc
    iget-object v0, v8, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->packageName:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, pruneWidgetStateLocked(Ljava/lang/String;I)V

    .line 3888
    if-eqz v12, :cond_2e8

    .line 3889
    iget-object v0, v12, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, pruneWidgetStateLocked(Ljava/lang/String;I)V

    .line 3894
    :cond_2e8
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1, v8, v12}, findRestoredWidgetLocked(ILcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    move-result-object v11

    .line 3895
    .local v11, "id":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    if-nez v11, :cond_37e

    .line 3896
    new-instance v11, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .end local v11    # "id":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    const/16 v26, 0x0

    move-object/from16 v0, v26

    invoke-direct {v11, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl$1;)V

    .line 3897
    .restart local v11    # "id":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, p3

    # invokes: Lcom/android/server/appwidget/AppWidgetServiceImpl;->incrementAndGetAppWidgetIdLocked(I)I
    invoke-static {v0, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$3400(Lcom/android/server/appwidget/AppWidgetServiceImpl;I)I

    move-result v26

    move/from16 v0, v26

    iput v0, v11, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    .line 3898
    move/from16 v0, v17

    iput v0, v11, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->restoredId:I

    .line 3899
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, parseWidgetIdOptions(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/Bundle;

    move-result-object v26

    move-object/from16 v0, v26

    iput-object v0, v11, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    .line 3900
    iput-object v8, v11, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 3901
    iget-object v0, v11, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3902
    iput-object v12, v11, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 3903
    iget-object v0, v11, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    move-object/from16 v26, v0

    if-eqz v26, :cond_343

    .line 3904
    iget-object v0, v11, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3907
    :cond_343
    const-string v26, "BackupRestoreController"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "New restored id "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " now "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3910
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;
    invoke-static/range {v26 .. v26}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$2600(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/util/ArrayList;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3912
    :cond_37e
    iget-object v0, v11, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    move-object/from16 v26, v0

    if-eqz v26, :cond_3ee

    .line 3913
    iget-object v0, v11, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    move-object/from16 v26, v0

    iget v0, v11, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v17

    move/from16 v3, v28

    invoke-direct {v0, v1, v2, v3}, stashProviderRestoreUpdateLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;II)V

    .line 3918
    :goto_39d
    iget-object v0, v11, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    move-object/from16 v26, v0

    iget v0, v11, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v17

    move/from16 v3, v28

    invoke-direct {v0, v1, v2, v3}, stashHostRestoreUpdateLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;II)V

    .line 3921
    const-string v26, "BackupRestoreController"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "   instance: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " -> "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    iget v0, v11, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " :: p="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    iget-object v0, v11, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_185

    .line 3916
    :cond_3ee
    const-string v26, "BackupRestoreController"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Missing provider for restored widget "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_40c
    .catchall {:try_start_25a .. :try_end_40c} :catchall_229

    goto :goto_39d

    .line 3939
    .end local v8    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .end local v10    # "hostIndex":I
    .end local v11    # "id":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .end local v12    # "p":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .end local v13    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v15    # "prov":Ljava/lang/String;
    .end local v16    # "restoredHosts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;>;"
    .end local v17    # "restoredId":I
    .end local v18    # "restoredProviders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;>;"
    .end local v20    # "tag":Ljava/lang/String;
    .end local v21    # "type":I
    :catchall_40d
    move-exception v26

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, p3

    # invokes: Lcom/android/server/appwidget/AppWidgetServiceImpl;->saveGroupStateAsync(I)V
    invoke-static {v0, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$3500(Lcom/android/server/appwidget/AppWidgetServiceImpl;I)V

    throw v26

    .line 3936
    :catch_41c
    move-exception v26

    move-object/from16 v6, v26

    goto/16 :goto_22f
.end method
