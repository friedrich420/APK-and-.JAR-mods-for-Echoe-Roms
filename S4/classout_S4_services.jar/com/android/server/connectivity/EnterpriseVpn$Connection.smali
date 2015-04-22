.class Lcom/android/server/connectivity/EnterpriseVpn$Connection;
.super Ljava/lang/Object;
.source "EnterpriseVpn.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/EnterpriseVpn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Connection"
.end annotation


# instance fields
.field private mService:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/android/server/connectivity/EnterpriseVpn;


# direct methods
.method private constructor <init>(Lcom/android/server/connectivity/EnterpriseVpn;)V
    .registers 2

    .prologue
    .line 655
    iput-object p1, p0, this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/connectivity/EnterpriseVpn;Lcom/android/server/connectivity/EnterpriseVpn$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/connectivity/EnterpriseVpn;
    .param p2, "x1"    # Lcom/android/server/connectivity/EnterpriseVpn$1;

    .prologue
    .line 655
    invoke-direct {p0, p1}, <init>(Lcom/android/server/connectivity/EnterpriseVpn;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 660
    # getter for: Lcom/android/server/connectivity/EnterpriseVpn;->DBG:Z
    invoke-static {}, Lcom/android/server/connectivity/EnterpriseVpn;->access$1200()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "EnterpriseVpn"

    const-string v1, "onServiceConnected()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    :cond_d
    iput-object p2, p0, mService:Landroid/os/IBinder;

    .line 662
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 666
    # getter for: Lcom/android/server/connectivity/EnterpriseVpn;->DBG:Z
    invoke-static {}, Lcom/android/server/connectivity/EnterpriseVpn;->access$1200()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "EnterpriseVpn"

    const-string v1, "onServiceDisconnected()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    :cond_d
    const/4 v0, 0x0

    iput-object v0, p0, mService:Landroid/os/IBinder;

    .line 668
    return-void
.end method
