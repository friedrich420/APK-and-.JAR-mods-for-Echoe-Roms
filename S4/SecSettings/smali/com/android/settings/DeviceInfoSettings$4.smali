.class Lcom/android/settings/DeviceInfoSettings$4;
.super Ljava/lang/Object;
.source "DeviceInfoSettings.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DeviceInfoSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DeviceInfoSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/DeviceInfoSettings;)V
    .locals 0

    .prologue
    .line 1479
    iput-object p1, p0, Lcom/android/settings/DeviceInfoSettings$4;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 1481
    invoke-static {p2}, Lcom/sec/android/service/sm/aidl/ISecurityManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/service/sm/aidl/ISecurityManager;

    move-result-object v0

    # setter for: Lcom/android/settings/DeviceInfoSettings;->mSecurityManager:Lcom/sec/android/service/sm/aidl/ISecurityManager;
    invoke-static {v0}, Lcom/android/settings/DeviceInfoSettings;->access$202(Lcom/sec/android/service/sm/aidl/ISecurityManager;)Lcom/sec/android/service/sm/aidl/ISecurityManager;

    .line 1482
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 1485
    const/4 v0, 0x0

    # setter for: Lcom/android/settings/DeviceInfoSettings;->mSecurityManager:Lcom/sec/android/service/sm/aidl/ISecurityManager;
    invoke-static {v0}, Lcom/android/settings/DeviceInfoSettings;->access$202(Lcom/sec/android/service/sm/aidl/ISecurityManager;)Lcom/sec/android/service/sm/aidl/ISecurityManager;

    .line 1486
    return-void
.end method
