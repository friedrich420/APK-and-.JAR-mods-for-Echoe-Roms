.class Lcom/android/server/connectivity/Vpn$Connection;
.super Ljava/lang/Object;
.source "Vpn.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Vpn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Connection"
.end annotation


# instance fields
.field private mService:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/android/server/connectivity/Vpn;


# direct methods
.method private constructor <init>(Lcom/android/server/connectivity/Vpn;)V
    .registers 2

    .prologue
    .line 960
    iput-object p1, p0, this$0:Lcom/android/server/connectivity/Vpn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/connectivity/Vpn;Lcom/android/server/connectivity/Vpn$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/connectivity/Vpn;
    .param p2, "x1"    # Lcom/android/server/connectivity/Vpn$1;

    .prologue
    .line 960
    invoke-direct {p0, p1}, <init>(Lcom/android/server/connectivity/Vpn;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/connectivity/Vpn$Connection;)Landroid/os/IBinder;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn$Connection;

    .prologue
    .line 960
    iget-object v0, p0, mService:Landroid/os/IBinder;

    return-object v0
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 965
    iput-object p2, p0, mService:Landroid/os/IBinder;

    .line 966
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 970
    const/4 v0, 0x0

    iput-object v0, p0, mService:Landroid/os/IBinder;

    .line 971
    return-void
.end method
